

.section .iwram22, "ax"


.thumb
Function_2254de0: @ 2254de0 :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	mov     r5, r0
	mov     r0, r7
	mov     r1, #0x8
	bl      malloc
	lsl     r6, r5, #3
	mov     r4, r0
	mov     r0, r7
	mov     r1, r6
	bl      malloc
	mov     r1, #0x0
	mov     r2, r6
	str     r0, [r4, #0x0]
	blx     Call_FillMemWithValue
	str     r5, [r4, #0x4]
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x2254e0a


.align 2, 0
.thumb
Function_2254e0c: @ 2254e0c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      free
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x2254e1e


.align 2, 0


.thumb
Function_2254e20: @ 2254e20 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	bl      Function_2254fe0
	mov     r4, r0
	bne     branch_2254e32
	bl      ErrorHandling
.thumb
branch_2254e32: @ 2254e32 :thumb
	ldr     r0, [r5, #0x18]
	str     r0, [r4, #0x0]
	mov     r0, r5
	bl      Function_225500c
	str     r0, [r4, #0x4]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2254e42


.align 2, 0


.thumb
Function_2254e44: @ 2254e44 :thumb
	push    {r3,lr}
	add     r1, sp, #0x0
	bl      Function_2255040
	add     r0, sp, #0x0
	bl      Function_2022734
	pop     {r3,pc}
@ 0x2254e54

.thumb
Function_2254e54: @ 2254e54 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r6, r1
	str     r2, [sp, #0x0]
	mov     r7, r3
	bl      Function_2254e44
	cmp     r0, #0x0
	bne     branch_2254e6e
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x2254e6e

.thumb
branch_2254e6e: @ 2254e6e :thumb
	mov     r0, r4
	add     r1, sp, #0x8
	add     r2, sp, #0x4
	bl      Function_2254f00
	ldr     r0, [pc, #0x5c] @ 0x2254ed8, (=0x21bf6bc)
	ldr     r1, [sp, #0x8]
	ldrh    r2, [r0, #0x1c]
	sub     r1, r2, r1
	str     r1, [r6, #0x0]
	ldrh    r1, [r0, #0x1e]
	ldr     r0, [sp, #0x4]
	sub     r1, r1, r0
	ldr     r0, [sp, #0x0]
	.hword  0x1f0c @ sub r4, r1, #0x4
	str     r1, [r0, #0x0]
	add     r0, r1, #0x4
	cmp     r4, r0
	bge     branch_2254ed2
.thumb
branch_2254e94: @ 2254e94 :thumb
	cmp     r4, #0x0
	blt     branch_2254ec6
	ldr     r0, [r6, #0x0]
	.hword  0x1f05 @ sub r5, r0, #0x4
	.hword  0x1d00 @ add r0, r0, #0x4
	cmp     r5, r0
	bge     branch_2254ec6
.thumb
branch_2254ea2: @ 2254ea2 :thumb
	cmp     r5, #0x0
	blt     branch_2254ebc
	mov     r0, r7
	mov     r1, r5
	mov     r2, r4
	mov     r3, #0x0
	bl      Function_2255420
	cmp     r0, #0x0
	bne     branch_2254ebc
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x2254ebc

.thumb
branch_2254ebc: @ 2254ebc :thumb
	ldr     r0, [r6, #0x0]
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	cmp     r5, r0
	blt     branch_2254ea2
.thumb
branch_2254ec6: @ 2254ec6 :thumb
	ldr     r0, [sp, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	ldr     r0, [r0, #0x0]
	.hword  0x1d00 @ add r0, r0, #0x4
	cmp     r4, r0
	blt     branch_2254e94
.thumb
branch_2254ed2: @ 2254ed2 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2254ed8

.word 0x21bf6bc @ 0x2254ed8
.thumb
Function_2254edc: @ 2254edc :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r2
	add     r1, sp, #0x0
	bl      Function_2255040
	add     r0, sp, #0x0
	mov     r1, r5
	mov     r2, r4
	bl      Function_2022830
	pop     {r3-r5,pc}
@ 0x2254ef4

.thumb
Function_2254ef4: @ 2254ef4 :thumb
	ldr     r3, [pc, #0x4] @ 0x2254efc, (=Function_2015254+1)
	ldr     r0, [r0, #0x4]
	bx      r3
@ 0x2254efa


.align 2


.word Function_2015254+1 @ 0x2254efc
.thumb
Function_2254f00: @ 2254f00 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	ldr     r0, [r0, #0x4]
	mov     r5, r1
	mov     r4, r2
	bl      Function_201525c
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
	str     r0, [r5, #0x0]
	mov     r0, #0x6
	ldsh    r0, [r1, r0]
	str     r0, [r4, #0x0]
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2254f2e


.align 2, 0


.thumb
Function_2254f30: @ 2254f30 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	ldr     r0, [r0, #0x4]
	mov     r5, r1
	mov     r4, r2
	bl      Function_2015280
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
	str     r0, [r5, #0x0]
	mov     r0, #0x6
	ldsh    r0, [r1, r0]
	str     r0, [r4, #0x0]
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2254f5e


.align 2, 0


.thumb
Function_2254f60: @ 2254f60 :thumb
	ldr     r3, [pc, #0x4] @ 0x2254f68, (=Function_2015240+1)
	ldr     r0, [r0, #0x4]
	bx      r3
@ 0x2254f66

.align 2
.word Function_2015240+1 @ 0x2254f68



.thumb
Function_2254f6c: @ 2254f6c :thumb
	ldr     r3, [pc, #0x4] @ 0x2254f74, (=Function_201528c+1)
	ldr     r0, [r0, #0x4]
	bx      r3
@ 0x2254f72

.align 2
.word Function_201528c+1 @ 0x2254f74



.thumb
Function_2254f78: @ 2254f78 :thumb
	ldr     r3, [pc, #0x4] @ 0x2254f80, (=Function_2015290+1)
	ldr     r0, [r0, #0x4]
	bx      r3
@ 0x2254f7e

.align 2
.word Function_2015290+1 @ 0x2254f80



.thumb
Function_2254f84: @ 2254f84 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r1
	mov     r4, r2
	add     r1, sp, #0x4
	add     r2, sp, #0x0
	bl      Function_2254f30
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x10
	beq     branch_2254fa4
	cmp     r0, #0x20
	beq     branch_2254faa
	cmp     r0, #0x40
	beq     branch_2254fb0
	b       branch_2254fb4
@ 0x2254fa4

.thumb
branch_2254fa4: @ 2254fa4 :thumb
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	b       branch_2254fb4
@ 0x2254faa

.thumb
branch_2254faa: @ 2254faa :thumb
	mov     r0, #0xa
	str     r0, [r5, #0x0]
	b       branch_2254fb4
@ 0x2254fb0

.thumb
branch_2254fb0: @ 2254fb0 :thumb
	mov     r0, #0x14
	str     r0, [r5, #0x0]
.thumb
branch_2254fb4: @ 2254fb4 :thumb
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x10
	beq     branch_2254fc6
	cmp     r0, #0x20
	beq     branch_2254fce
	cmp     r0, #0x40
	beq     branch_2254fd6
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2254fc6

.thumb
branch_2254fc6: @ 2254fc6 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x2254fce

.thumb
branch_2254fce: @ 2254fce :thumb
	mov     r0, #0xa
	add     sp, #0x8
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x2254fd6

.thumb
branch_2254fd6: @ 2254fd6 :thumb
	mov     r0, #0x14
	str     r0, [r4, #0x0]
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2254fde


.align 2, 0


.thumb
Function_2254fe0: @ 2254fe0 :thumb
	push    {r3,r4}
	ldr     r4, [r0, #0x4]
	mov     r1, #0x0
	cmp     r4, #0x0
	ble     branch_2255004
	ldr     r3, [r0, #0x0]
	mov     r2, r3
.thumb
branch_2254fee: @ 2254fee :thumb
	ldr     r0, [r2, #0x4]
	cmp     r0, #0x0
	bne     branch_2254ffc
	lsl     r0, r1, #3
	add     r0, r3, r0
	pop     {r3,r4}
	bx      lr
@ 0x2254ffc

.thumb
branch_2254ffc: @ 2254ffc :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r2, #0x8
	cmp     r1, r4
	blt     branch_2254fee
.thumb
branch_2255004: @ 2255004 :thumb
	mov     r0, #0x0
	pop     {r3,r4}
	bx      lr
@ 0x225500a


.align 2, 0


.thumb
Function_225500c: @ 225500c :thumb
	push    {r3,lr}
	add     sp, #-0x20
	ldr     r1, [r0, #0x4]
	mov     r3, #0x0
	str     r1, [sp, #0x0]
	ldr     r1, [r0, #0x8]
	str     r1, [sp, #0x4]
	ldr     r1, [r0, #0xc]
	str     r1, [sp, #0x8]
	ldr     r2, [r0, #0x10]
	add     r1, sp, #0x0
	strh    r2, [r1, #0xc]
	ldr     r2, [r0, #0x14]
	strh    r2, [r1, #0xe]
	strh    r3, [r1, #0x10]
	mov     r2, #0x1f
	str     r2, [sp, #0x14]
	str     r3, [sp, #0x18]
	ldr     r0, [r0, #0x1c]
	strh    r0, [r1, #0x1c]
	add     r0, sp, #0x0
	bl      Function_2015214
	add     sp, #0x20
	pop     {r3,pc}
@ 0x225503e


.align 2, 0


.thumb
Function_2255040: @ 2255040 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	mov     r4, r1
	bl      Function_201525c
	add     r1, sp, #0x0
	strh    r0, [r1, #0x4]
	lsr     r0, r0, #16
	strh    r0, [r1, #0x6]
	ldrh    r0, [r1, #0x4]
	strh    r0, [r1, #0xc]
	ldrh    r0, [r1, #0x6]
	strh    r0, [r1, #0xe]
	ldr     r0, [r5, #0x4]
	bl      Function_2015280
	add     r1, sp, #0x0
	strh    r0, [r1, #0x0]
	lsr     r0, r0, #16
	strh    r0, [r1, #0x2]
	ldrh    r0, [r1, #0x0]
	strh    r0, [r1, #0x8]
	ldrh    r0, [r1, #0x2]
	strh    r0, [r1, #0xa]
	mov     r0, #0xe
	ldsh    r2, [r1, r0]
	mov     r0, #0xa
	strb    r2, [r4, #0x0]
	ldsh    r0, [r1, r0]
	add     r0, r2, r0
	strb    r0, [r4, #0x1]
	mov     r0, #0xc
	ldsh    r2, [r1, r0]
	mov     r0, #0x8
	strb    r2, [r4, #0x2]
	ldsh    r0, [r1, r0]
	add     r0, r2, r0
	strb    r0, [r4, #0x3]
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2255094

.thumb
Function_2255094: @ 2255094 :thumb
	push    {r3,lr}
	bl      Function_2255634
	bl      Function_2255654
	bl      Function_22556dc
	ldr     r0, [pc, #0xc] @ 0x22550b0, (=0x21bf6dc)
	mov     r1, #0x1
	strb    r1, [r0, #0x5]
	bl      Function_201ffe8
	pop     {r3,pc}
@ 0x22550ae


.align 2


.word 0x21bf6dc @ 0x22550b0
.thumb
Function_22550b4: @ 22550b4 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x18] @ 0x22550d0, (=0x21bf6dc)
	mov     r1, #0x0
	strb    r1, [r0, #0x5]
	bl      Function_201ffe8
	bl      Function_2255738
	bl      Function_225572c
	blx     Function_20bed0c
	pop     {r3,pc}
@ 0x22550ce


.align 2


.word 0x21bf6dc @ 0x22550d0
.thumb
Function_22550d4: @ 22550d4 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	ldr     r3, [pc, #0x54] @ 0x2255130, (=0x225bd98)
	add     r2, sp, #0x0
	mov     r4, r0
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	mov     r0, #0x19
	mov     r1, #0xe
	bl      LoadFromNARC_8
	mov     r1, #0x6
	lsl     r1, r1, #6
	str     r0, [r4, r1]
	mov     r0, r4
	add     r1, sp, #0x0
	bl      Function_2255748
	mov     r2, #0xa
	mov     r0, r4
	mov     r1, #0xe
	lsl     r2, r2, #10
	mov     r3, #0x20
	bl      Function_2255c24
	mov     r0, r4
	bl      Function_22559b4
	mov     r0, r4
	mov     r1, #0xd
	bl      Function_2255bf4
	mov     r0, r4
	bl      Function_22559f8
	mov     r0, #0xe
	bl      Function_2018340
	str     r0, [r4, #0x40]
	mov     r0, r4
	bl      Function_2255860
	add     sp, #0x10
	pop     {r4,pc}
@ 0x2255130

.word 0x225bd98 @ 0x2255130
.thumb
Function_2255134: @ 2255134 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2255c14
	mov     r0, r4
	bl      Function_2255784
	mov     r0, r4
	bl      Function_2255984
	ldr     r0, [r4, #0x40]
	bl      free
	mov     r0, r4
	bl      Function_2255c90
	mov     r0, r4
	bl      Function_2255a98
	mov     r0, r4
	bl      Function_22559e0
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	bl      Call_FS_CloseFile
	ldr     r0, [r4, #0x4]
	bl      free
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	ldr     r0, [r4, #0x10]
	bl      free
	mov     r0, #0x0
	str     r0, [r4, #0x10]
	pop     {r4,pc}
@ 0x2255180

.thumb
Function_2255180: @ 2255180 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Call_G3X_Reset
	blx     Function_20a73c0
	ldr     r0, [r4, #0x1c]
	cmp     r0, #0x0
	beq     branch_2255198
	mov     r0, r4
	bl      Function_2255794
.thumb
branch_2255198: @ 2255198 :thumb
	ldr     r0, [r4, #0x2c]
	cmp     r0, #0x0
	beq     branch_22551a4
	ldr     r0, [r4, #0x20]
	bl      Function_2007768
.thumb
branch_22551a4: @ 22551a4 :thumb
	mov     r0, #0x0
	mov     r1, r0
	bl      Function_20241bc
	mov     r0, r4
	bl      Function_2255ac0
	pop     {r4,pc}
@ 0x22551b4

.thumb
Function_22551b4: @ 22551b4 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r1, [r4, #0x0]
	ldr     r2, [r4, #0x4]
	mov     r5, r0
	bl      Function_22557a0
	ldr     r1, [r4, #0x8]
	ldr     r2, [r4, #0xc]
	mov     r0, r5
	bl      Function_2255800
	pop     {r3-r5,pc}
@ 0x22551ce


.align 2, 0


.thumb
Function_22551d0: @ 22551d0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_201517c
	ldr     r0, [r4, #0x0]
	bl      Function_20151ec
	pop     {r4,pc}
@ 0x22551e2


.align 2, 0


.thumb
Function_22551e4: @ 22551e4 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x70
	mov     r5, r0
	mov     r0, #0x0
	str     r1, [sp, #0x0]
	mvn     r0, r0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	mov     r4, r2
	ldr     r2, [r5, #0x48]
	mov     r6, r3
	str     r2, [sp, #0x14]
	ldr     r2, [r5, #0x4c]
	mov     r3, r1
	str     r2, [sp, #0x18]
	ldr     r2, [r5, #0x50]
	str     r2, [sp, #0x1c]
	ldr     r2, [r5, #0x54]
	str     r2, [sp, #0x20]
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
	add     r0, sp, #0x4c
	mov     r2, r1
	bl      Function_20093b4
	ldr     r0, [r5, #0x44]
	str     r0, [sp, #0x2c]
	add     r0, sp, #0x4c
	str     r0, [sp, #0x30]
	lsl     r0, r4, #12
	str     r0, [sp, #0x34]
	lsl     r0, r6, #12
	str     r0, [sp, #0x38]
	mov     r0, #0x0
	str     r0, [sp, #0x3c]
	ldr     r0, [sp, #0x80]
	str     r0, [sp, #0x40]
	ldr     r0, [sp, #0x84]
	str     r0, [sp, #0x44]
	mov     r0, #0xe
	str     r0, [sp, #0x48]
	add     r0, sp, #0x2c
	bl      Function_2021b90
	add     sp, #0x70
	pop     {r4-r6,pc}
@ 0x2255246


.align 2, 0


.thumb
Function_2255248: @ 2255248 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	ldr     r4, [sp, #0x1c]
	str     r4, [sp, #0x0]
	ldr     r4, [sp, #0x18]
	str     r4, [sp, #0x4]
	mov     r4, #0xe
	str     r4, [sp, #0x8]
	ldr     r0, [r0, #0x48]
	bl      Function_2009a4c
	bl      Function_200a3dc
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2255266


.align 2, 0


.thumb
Function_2255268: @ 2255268 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	ldr     r4, [sp, #0x20]
	str     r4, [sp, #0x0]
	ldr     r4, [sp, #0x18]
	str     r4, [sp, #0x4]
	ldr     r4, [sp, #0x1c]
	str     r4, [sp, #0x8]
	mov     r4, #0xe
	str     r4, [sp, #0xc]
	ldr     r0, [r0, #0x4c]
	bl      Function_2009b04
	bl      Function_200a640
	add     sp, #0x10
	pop     {r4,pc}
@ 0x225528a


.align 2, 0


.thumb
Function_225528c: @ 225528c :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	ldr     r4, [sp, #0x18]
	str     r4, [sp, #0x0]
	mov     r4, #0x2
	str     r4, [sp, #0x4]
	mov     r4, #0xe
	str     r4, [sp, #0x8]
	ldr     r0, [r0, #0x50]
	bl      Function_2009bc4
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x22552a6


.align 2, 0


.thumb
Function_22552a8: @ 22552a8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	ldr     r4, [sp, #0x18]
	str     r4, [sp, #0x0]
	mov     r4, #0x3
	str     r4, [sp, #0x4]
	mov     r4, #0xe
	str     r4, [sp, #0x8]
	ldr     r0, [r0, #0x54]
	bl      Function_2009bc4
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x22552c2


.align 2, 0


.thumb
Function_22552c4: @ 22552c4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x48]
	bl      Function_2009dc8
	mov     r1, r0
	ldr     r0, [r4, #0x48]
	bl      Function_2009d68
	pop     {r4,pc}
@ 0x22552d8

.thumb
Function_22552d8: @ 22552d8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4c]
	bl      Function_2009dc8
	mov     r1, r0
	ldr     r0, [r4, #0x4c]
	bl      Function_2009d68
	pop     {r4,pc}
@ 0x22552ec

.thumb
Function_22552ec: @ 22552ec :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x50]
	bl      Function_2009dc8
	mov     r1, r0
	ldr     r0, [r4, #0x50]
	bl      Function_2009d68
	pop     {r4,pc}
@ 0x2255300

.thumb
Function_2255300: @ 2255300 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x54]
	bl      Function_2009dc8
	mov     r1, r0
	ldr     r0, [r4, #0x54]
	bl      Function_2009d68
	pop     {r4,pc}
@ 0x2255314

.thumb
Function_2255314: @ 2255314 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x76
	mov     r2, #0x13
	mov     r3, #0xe
	bl      Function_2255cb8
	mov     r0, r5
	mov     r1, r4
	bl      Function_2255acc
	mov     r0, r5
	mov     r1, r4
	bl      Function_2255b50
	pop     {r3-r5,pc}
@ 0x2255338

.thumb
Function_2255338: @ 2255338 :thumb
	ldr     r3, [pc, #0x0] @ 0x225533c, (=0x2255d0d)
	bx      r3
@ 0x225533c

.word Function_2255d0c+1 @ =0x2255d0d, 0x225533c
.thumb
Function_2255340: @ 2255340 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x34]
	mov     r6, r1
	mov     r5, r2
	bl      Function_2022a1c
	ldr     r1, [r4, #0x38]
	lsl     r5, r5, #2
	mov     r0, r6
	add     r1, r1, r5
	blx     Function_20a7118
	ldr     r0, [r4, #0x38]
	ldr     r0, [r0, r5]
	pop     {r4-r6,pc}
@ 0x2255360

.thumb
Function_2255360: @ 2255360 :thumb
	push    {r3,r4}
	mov     r0, #0x1
	lsl     r0, r0, #26
	ldr     r2, [r0, #0x0]
	ldr     r1, [pc, #0x20] @ 0x225538c, (=0xffff1fff)
	mov     r3, r0
	and     r1, r2
	str     r1, [r0, #0x0]
	add     r3, #0x8
	ldrh    r4, [r3, #0x0]
	mov     r2, #0x3
	mov     r1, #0x1
	bic     r4, r2
	orr     r1, r4
	add     r0, #0xa
	strh    r1, [r3, #0x0]
	ldrh    r1, [r0, #0x0]
	bic     r1, r2
	strh    r1, [r0, #0x0]
	pop     {r3,r4}
	bx      lr
@ 0x225538a


.align 2


.word 0xffff1fff @ 0x225538c
.thumb
Function_2255390: @ 2255390 :thumb
	push    {r3,r4}
	mov     r0, #0x1
	lsl     r0, r0, #26
	ldr     r2, [r0, #0x0]
	ldr     r1, [pc, #0x50] @ 0x22553ec, (=0xffff1fff)
	mov     r3, r0
	and     r2, r1
	lsr     r1, r0, #13
	orr     r1, r2
	str     r1, [r0, #0x0]
	add     r3, #0x48
	ldrh    r4, [r3, #0x0]
	mov     r2, #0x3f
	mov     r1, #0x1f
	bic     r4, r2
	orr     r1, r4
	strh    r1, [r3, #0x0]
	mov     r3, r0
	add     r3, #0x4a
	ldrh    r4, [r3, #0x0]
	mov     r1, #0x12
	bic     r4, r2
	orr     r1, r4
	strh    r1, [r3, #0x0]
	mov     r1, r0
	ldr     r2, [pc, #0x2c] @ 0x22553f0, (=0xaf6)
	add     r1, #0x40
	strh    r2, [r1, #0x0]
	mov     r1, r0
	ldr     r2, [pc, #0x28] @ 0x22553f4, (=0x128f)
	add     r1, #0x44
	strh    r2, [r1, #0x0]
	mov     r2, r0
	add     r2, #0x8
	ldrh    r3, [r2, #0x0]
	mov     r1, #0x3
	add     r0, #0xa
	bic     r3, r1
	strh    r3, [r2, #0x0]
	ldrh    r2, [r0, #0x0]
	bic     r2, r1
	mov     r1, #0x1
	orr     r1, r2
	strh    r1, [r0, #0x0]
	pop     {r3,r4}
	bx      lr
@ 0x22553ec

.word 0xffff1fff @ 0x22553ec
.word 0xaf6 @ 0x22553f0
.word 0x128f @ 0x22553f4
.thumb
Function_22553f8: @ 22553f8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x40]
	bl      Function_201c2b8
	ldr     r0, [r4, #0x20]
	bl      Function_2008a94
	bl      Function_200a858
	pop     {r4,pc}
@ 0x225540e


.align 2, 0


.thumb
Function_2255410: @ 2255410 :thumb
	push    {r3,lr}
	mov     r3, r1
	mov     r1, #0x76
	mov     r2, #0x13
	bl      Function_2255cb8
	pop     {r3,pc}
@ 0x225541e


.align 2, 0


.thumb
Function_2255420: @ 2255420 :thumb
	push    {r4,r5}
	ldrh    r5, [r0, #0x2]
	ldrh    r4, [r0, #0x0]
	lsl     r5, r5, #3
	cmp     r1, #0x0
	blt     branch_225543a
	cmp     r2, #0x0
	blt     branch_225543a
	cmp     r1, r5
	bge     branch_225543a
	lsl     r4, r4, #3
	cmp     r2, r4
	blt     branch_2255440
.thumb
branch_225543a: @ 225543a :thumb
	mov     r0, #0x2
	pop     {r4,r5}
	bx      lr
@ 0x2255440

.thumb
branch_2255440: @ 2255440 :thumb
	mov     r4, r2
	mul     r4, r5
	add     r4, r1, r4
	lsr     r5, r4, #31
	lsl     r2, r4, #29
	sub     r2, r2, r5
	mov     r1, #0x1d
	ror     r2, r1
	add     r1, r5, r2
	lsl     r2, r1, #2
	mov     r1, r3
	ldr     r3, [r0, #0x14]
	asr     r0, r4, #2
	lsr     r0, r0, #29
	add     r0, r4, r0
	asr     r0, r0, #3
	lsl     r0, r0, #2
	ldr     r3, [r3, r0]
	mov     r0, #0xf
	lsl     r0, r2
	lsl     r1, r2
	and     r0, r3
	cmp     r1, r0
	bne     branch_2255476
	mov     r0, #0x1
	pop     {r4,r5}
	bx      lr
@ 0x2255476

.thumb
branch_2255476: @ 2255476 :thumb
	mov     r0, #0x0
	pop     {r4,r5}
	bx      lr
@ 0x225547c

.thumb
Function_225547c: @ 225547c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r2
	bl      Function_2255748
	mov     r2, #0xa
	mov     r0, r5
	mov     r1, r4
	lsl     r2, r2, #10
	mov     r3, #0x20
	bl      Function_2255c24
	ldr     r0, [r5, #0x20]
	mov     r1, #0x1
	bl      Function_2008b2c
	mov     r0, r5
	mov     r1, r4
	bl      Function_2255bf4
	pop     {r3-r5,pc}
@ 0x22554a6


.align 2, 0


.thumb
Function_22554a8: @ 22554a8 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x1c
	ldr     r3, [pc, #0x44] @ 0x22554f4, (=0x225bdfc)
	mov     r5, r0
	str     r1, [r5, #0x40]
	mov     r4, r2
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x0
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	mov     r1, #0x2
	str     r0, [r2, #0x0]
	ldr     r0, [r5, #0x40]
	bl      Function_2019044
	ldr     r0, [r5, #0x40]
	mov     r1, #0x2
	add     r2, sp, #0x0
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x2
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, r4
	bl      Function_2019690
	ldr     r0, [r5, #0x40]
	mov     r1, #0x2
	bl      Function_2019ebc
	add     sp, #0x1c
	pop     {r4,r5,pc}
@ 0x22554f2


.align 2


.word 0x225bdfc @ 0x22554f4
.thumb
Function_22554f8: @ 22554f8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2255c14
	mov     r0, r4
	bl      Function_2255784
	mov     r0, r4
	bl      Function_2255c90
	ldr     r0, [r4, #0x4]
	bl      free
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	ldr     r0, [r4, #0x10]
	bl      free
	mov     r0, #0x0
	str     r0, [r4, #0x10]
	pop     {r4,pc}
@ 0x2255522


.align 2, 0


.thumb
Function_2255524: @ 2255524 :thumb
	ldr     r3, [pc, #0x4] @ 0x225552c, (=Function_2019044+1)
	ldr     r0, [r0, #0x40]
	mov     r1, #0x2
	bx      r3
@ 0x225552c

.word Function_2019044+1 @ 0x225552c



.thumb
Function_2255530: @ 2255530 :thumb
	ldr     r3, [pc, #0x4] @ 0x2255538, (=Function_2008a94+1)
	ldr     r0, [r0, #0x20]
	bx      r3
@ 0x2255536

.align 2
.word Function_2008a94+1 @ 0x2255538



.thumb
Function_225553c: @ 225553c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r1
	ldr     r0, [pc, #0x7c] @ 0x22555c0, (=0x4000454)
	str     r3, [sp, #0x0]
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	sub     r0, #0x10
	mov     r6, r2
	ldr     r7, [sp, #0x18]
	str     r1, [r0, #0x0]
	blx     Function_20a73c0
	ldr     r1, [pc, #0x6c] @ 0x22555c4, (=0x4000470)
	lsl     r0, r4, #12
	str     r0, [r1, #0x0]
	lsl     r0, r6, #12
	str     r0, [r1, #0x0]
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	ldr     r0, [sp, #0x0]
	ldr     r1, [pc, #0x60] @ 0x22555c8, (=0x20f983c)
	asr     r0, r0, #4
	lsl     r2, r0, #1
	lsl     r0, r2, #1
	.hword  0x1c52 @ add r2, r2, #0x1
	lsl     r2, r2, #1
	ldsh    r0, [r1, r0]
	ldsh    r1, [r1, r2]
	blx     G3_RotZ
	ldr     r2, [r7, #0x8]
	ldr     r1, [r7, #0x4]
	ldr     r3, [r7, #0x0]
	ldr     r0, [pc, #0x48] @ 0x22555cc, (=0x400046c)
	str     r3, [r0, #0x0]
	str     r1, [r0, #0x0]
	neg     r1, r4
	str     r2, [r0, #0x0]
	lsl     r1, r1, #12
	str     r1, [r0, #0x4]
	neg     r1, r6
	lsl     r1, r1, #12
	str     r1, [r0, #0x4]
	mov     r1, #0x0
	str     r1, [r0, #0x4]
	sub     r0, #0x28
	str     r1, [r0, #0x0]
	ldr     r0, [r5, #0x1c]
	cmp     r0, #0x0
	beq     branch_22555a8
	mov     r0, r5
	bl      Function_2255794
.thumb
branch_22555a8: @ 22555a8 :thumb
	ldr     r0, [r5, #0x2c]
	cmp     r0, #0x0
	beq     branch_22555b4
	ldr     r0, [r5, #0x20]
	bl      Function_2007768
.thumb
branch_22555b4: @ 22555b4 :thumb
	ldr     r0, [pc, #0x18] @ 0x22555d0, (=0x4000448)
	mov     r1, #0x1
	str     r1, [r0, #0x0]
	str     r1, [r0, #0x0]
	pop     {r3-r7,pc}
@ 0x22555be

.align 2
.word 0x4000454 @ 0x22555c0
.word 0x4000470 @ 0x22555c4
.word 0x20f983c @ 0x22555c8
.word 0x400046c @ 0x22555cc
.word 0x4000448 @ 0x22555d0



.thumb
Function_22555d4: @ 22555d4 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x19
	mov     r1, #0xe
	bl      LoadFromNARC_8
	mov     r1, #0x6
	lsl     r1, r1, #6
	str     r0, [r4, r1]
	mov     r0, r4
	bl      Function_22559f8
	mov     r0, #0xe
	bl      Function_2018340
	str     r0, [r4, #0x40]
	mov     r0, r4
	bl      Function_2255860
	pop     {r4,pc}
@ 0x22555fc

.thumb
Function_22555fc: @ 22555fc :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2255984
	ldr     r0, [r4, #0x40]
	bl      free
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	bl      Call_FS_CloseFile
	mov     r0, r4
	bl      Function_2255a98
	pop     {r4,pc}
@ 0x225561c

.thumb
Function_225561c: @ 225561c :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x40]
	bl      Function_201c2b8
	bl      Function_200a858
	pop     {r3,pc}
@ 0x225562a


.align 2, 0


.thumb
Function_225562c: @ 225562c :thumb
	ldr     r3, [pc, #0x0] @ 0x2255630, (=0x2255ac1)
	bx      r3
@ 0x2255630

.word Function_2255ac0+1 @ =0x2255ac1, 0x2255630
.thumb
Function_2255634: @ 2255634 :thumb
	push    {r4,lr}
	add     sp, #-0x28
	ldr     r4, [pc, #0x14] @ 0x2255650, (=0x225be50)
	add     r3, sp, #0x0
	mov     r2, #0x5
.thumb
branch_225563e: @ 225563e :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_225563e
	add     r0, sp, #0x0
	bl      Function_201fe94
	add     sp, #0x28
	pop     {r4,pc}
@ 0x2255650

.word 0x225be50 @ 0x2255650



.thumb
Function_2255654: @ 2255654 :thumb
	push    {r3,lr}
	blx     Function_20b28cc
	blx     G3X_InitMtxStack
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff0c
	ldr     r0, [pc, #0x60] @ 0x22556c8, (=0x4000008)
	mov     r1, #0x3
	ldrh    r2, [r0, #0x0]
	bic     r2, r1
	mov     r1, #0x1
	orr     r1, r2
	strh    r1, [r0, #0x0]
	add     r0, #0x58
	ldrh    r1, [r0, #0x0]
	ldr     r2, [pc, #0x50] @ 0x22556cc, (=0xffffcffd)
	and     r1, r2
	strh    r1, [r0, #0x0]
	ldrh    r3, [r0, #0x0]
	add     r1, r2, #0x2
	and     r3, r1
	mov     r1, #0x10
	orr     r1, r3
	strh    r1, [r0, #0x0]
	ldrh    r3, [r0, #0x0]
	ldr     r1, [pc, #0x40] @ 0x22556d0, (=0xcffb)
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
	blx     G3X_SetClearColor
	ldr     r2, [pc, #0x24] @ 0x22556d4, (=0x4000540)
	mov     r0, #0x2
	ldr     r1, [pc, #0x24] @ 0x22556d8, (=0xbfff0000)
	str     r0, [r2, #0x0]
	str     r1, [r2, #0x40]
	mov     r1, #0x1
	blx     Function_20a5a94
	mov     r0, #0x1
	lsl     r0, r0, #14
	mov     r1, #0x1
	blx     Function_20a5d88
	pop     {r3,pc}
@ 0x22556c8

.word 0x4000008 @ 0x22556c8
.word 0xffffcffd @ 0x22556cc
.word 0xcffb @ 0x22556d0
.word 0x4000540 @ 0x22556d4
.word 0xbfff0000 @ 0x22556d8



.thumb
Function_22556dc: @ 22556dc :thumb
	push    {r4,lr}
	add     sp, #-0x10
	ldr     r4, [pc, #0x40] @ 0x2255724, (=Unknown_225bd78)
	add     r3, sp, #0x0
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      Function_2018368
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x2c] @ 0x2255728, (=0xffcfffef)
	and     r1, r0
	mov     r0, #0x10
	orr     r0, r1
	str     r0, [r2, #0x0]
	blx     Function_20a7944
	bl      Function_201ff00
	bl      Function_201ff68
	mov     r0, #0x1f
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x13
	mov     r1, #0x1
	bl      Function_201ff74
	add     sp, #0x10
	pop     {r4,pc}
@ 0x2255724

.word Unknown_225bd78 @ 0x2255724
.word 0xffcfffef @ 0x2255728



.thumb
Function_225572c: @ 225572c :thumb
	push    {r3,lr}
	blx     Function_20a5b1c
	blx     Function_20a5f50
	pop     {r3,pc}
@ 0x2255738


.thumb
Function_2255738: @ 2255738 :thumb
	push    {r3,lr}
	bl      Function_201ff00
	bl      Function_201ff68
	blx     Function_20a7944
	pop     {r3,pc}
@ 0x2255748

.thumb
Function_2255748: @ 2255748 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	bl      Function_2015064
	str     r0, [r5, #0x0]
	mov     r1, #0x76
	ldr     r0, [r4, #0xc]
	lsl     r1, r1, #2
	bl      malloc
	str     r0, [r5, #0x4]
	mov     r0, #0x76
	str     r0, [r5, #0x8]
	mov     r0, #0x0
	str     r0, [r5, #0xc]
	ldr     r0, [r4, #0xc]
	mov     r1, #0x4c
	bl      malloc
	str     r0, [r5, #0x10]
	mov     r0, #0x13
	str     r0, [r5, #0x14]
	mov     r0, #0x0
	str     r0, [r5, #0x18]
	mov     r0, #0x1
	str     r0, [r5, #0x1c]
	pop     {r3-r5,pc}
@ 0x2255782


.align 2, 0


.thumb
Function_2255784: @ 2255784 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_20150a8
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x2255794

.thumb
Function_2255794: @ 2255794 :thumb
	ldr     r3, [pc, #0x4] @ 0x225579c, (=Function_20150ec+1)
	ldr     r0, [r0, #0x0]
	bx      r3
@ 0x225579a

.align 2
.word Function_20150ec+1 @ 0x225579c



.thumb
Function_22557a0: @ 22557a0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r2
	mov     r4, r1
	str     r2, [sp, #0x0]
	cmp     r0, #0x0
	ble     branch_22557fc
	mov     r7, r5
	mov     r6, r4
	add     r7, #0xc
.thumb
branch_22557ba: @ 22557ba :thumb
	ldr     r1, [r5, #0xc]
	ldr     r0, [r5, #0x8]
	cmp     r1, r0
	blt     branch_22557c6
	bl      ErrorHandling
.thumb
branch_22557c6: @ 22557c6 :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_22557dc
	mov     r0, r6
	bl      Function_2015128
	ldr     r2, [r5, #0xc]
	ldr     r1, [r5, #0x4]
	lsl     r2, r2, #2
	str     r0, [r1, r2]
	b       branch_22557e6
@ 0x22557dc

.thumb
branch_22557dc: @ 22557dc :thumb
	ldr     r1, [r5, #0xc]
	ldr     r0, [r5, #0x4]
	lsl     r2, r1, #2
	mov     r1, #0x0
	str     r1, [r0, r2]
.thumb
branch_22557e6: @ 22557e6 :thumb
	ldr     r0, [r7, #0x0]
	add     r4, #0x8
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r7, #0x0]
	ldr     r0, [sp, #0x4]
	add     r6, #0x8
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	cmp     r1, r0
	blt     branch_22557ba
.thumb
branch_22557fc: @ 22557fc :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2255800

.thumb
Function_2255800: @ 2255800 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r2
	mov     r4, r1
	str     r2, [sp, #0x0]
	cmp     r0, #0x0
	ble     branch_225585c
	mov     r7, r5
	mov     r6, r4
	add     r7, #0x18
.thumb
branch_225581a: @ 225581a :thumb
	ldr     r1, [r5, #0x18]
	ldr     r0, [r5, #0x14]
	cmp     r1, r0
	blt     branch_2255826
	bl      ErrorHandling
.thumb
branch_2255826: @ 2255826 :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_225583c
	mov     r0, r6
	bl      Function_20151a4
	ldr     r2, [r5, #0x18]
	ldr     r1, [r5, #0x10]
	lsl     r2, r2, #2
	str     r0, [r1, r2]
	b       branch_2255846
@ 0x225583c

.thumb
branch_225583c: @ 225583c :thumb
	ldr     r1, [r5, #0x18]
	ldr     r0, [r5, #0x10]
	lsl     r2, r1, #2
	mov     r1, #0x0
	str     r1, [r0, r2]
.thumb
branch_2255846: @ 2255846 :thumb
	ldr     r0, [r7, #0x0]
	add     r4, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r7, #0x0]
	ldr     r0, [sp, #0x4]
	add     r6, #0xc
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	cmp     r1, r0
	blt     branch_225581a
.thumb
branch_225585c: @ 225585c :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2255860

.thumb
Function_2255860: @ 2255860 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x8c
	ldr     r5, [pc, #0x108] @ 0x2255970, (=0x225bdc4)
	mov     r4, r0
	ldmia   r5!, {r0,r1}
	add     r3, sp, #0x70
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	str     r0, [r3, #0x0]
	ldr     r0, [r4, #0x40]
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x1
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0xe
	bl      Function_2019690
	ldr     r0, [r4, #0x40]
	mov     r1, #0x1
	bl      Function_2019ebc
	ldr     r5, [pc, #0xd8] @ 0x2255974, (=0x225bde0)
	add     r3, sp, #0x54
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x2
	str     r0, [r3, #0x0]
	ldr     r0, [r4, #0x40]
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x2
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0xe
	bl      Function_2019690
	ldr     r0, [r4, #0x40]
	mov     r1, #0x2
	bl      Function_2019ebc
	ldr     r5, [pc, #0xa8] @ 0x2255978, (=0x225be18)
	add     r3, sp, #0x38
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x3
	str     r0, [r3, #0x0]
	ldr     r0, [r4, #0x40]
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x3
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0xe
	bl      Function_2019690
	ldr     r0, [r4, #0x40]
	mov     r1, #0x3
	bl      Function_2019ebc
	ldr     r5, [pc, #0x78] @ 0x225597c, (=0x225bda8)
	add     r3, sp, #0x1c
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
	ldr     r0, [r4, #0x40]
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x4
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0xe
	bl      Function_2019690
	ldr     r0, [r4, #0x40]
	mov     r1, #0x4
	bl      Function_2019ebc
	ldr     r5, [pc, #0x48] @ 0x2255980, (=0x225be34)
	add     r3, sp, #0x0
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
	ldr     r0, [r4, #0x40]
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x5
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0xe
	bl      Function_2019690
	ldr     r0, [r4, #0x40]
	mov     r1, #0x5
	bl      Function_2019ebc
	add     sp, #0x8c
	pop     {r4,r5,pc}
@ 0x225596e


.align 2


.word 0x225bdc4 @ 0x2255970
.word 0x225bde0 @ 0x2255974
.word 0x225be18 @ 0x2255978
.word 0x225bda8 @ 0x225597c
.word 0x225be34 @ 0x2255980
.thumb
Function_2255984: @ 2255984 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x40]
	mov     r1, #0x1
	bl      Function_2019044
	ldr     r0, [r4, #0x40]
	mov     r1, #0x2
	bl      Function_2019044
	ldr     r0, [r4, #0x40]
	mov     r1, #0x3
	bl      Function_2019044
	ldr     r0, [r4, #0x40]
	mov     r1, #0x4
	bl      Function_2019044
	ldr     r0, [r4, #0x40]
	mov     r1, #0x5
	bl      Function_2019044
	pop     {r4,pc}
@ 0x22559b2


.align 2, 0


.thumb
Function_22559b4: @ 22559b4 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x77
	mov     r1, #0xe
	bl      Function_202298c
	mov     r1, #0x77
	str     r0, [r4, #0x34]
	mov     r0, #0xe
	lsl     r1, r1, #2
	bl      malloc
	mov     r2, #0x77
	mov     r1, #0x0
	lsl     r2, r2, #2
	str     r0, [r4, #0x38]
	blx     Call_FillMemWithValue
	mov     r0, #0x77
	str     r0, [r4, #0x3c]
	pop     {r4,pc}
@ 0x22559de


.align 2, 0


.thumb
Function_22559e0: @ 22559e0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x38]
	bl      free
	ldr     r0, [r4, #0x34]
	bl      Function_20229d8
	mov     r0, #0x0
	str     r0, [r4, #0x3c]
	pop     {r4,pc}
@ 0x22559f6


.align 2, 0


.thumb
Function_22559f8: @ 22559f8 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x24
	ldr     r5, [pc, #0x94] @ 0x2255a94, (=0x225bd88)
	add     r3, sp, #0x14
	mov     r4, r0
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r1, #0x10
	mov     r0, r2
	mov     r2, r1
	bl      Function_201e88c
	mov     r0, #0x5
	mov     r1, #0xe
	bl      Function_201f834
	bl      Function_201e994
	bl      Function_201f8e4
	blx     Function_20a7944
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x7c
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r3, #0x1f
	str     r3, [sp, #0xc]
	mov     r2, #0xe
	str     r2, [sp, #0x10]
	mov     r2, r0
	bl      Function_200a784
	mov     r1, r4
	mov     r0, #0x30
	add     r1, #0x58
	mov     r2, #0xe
	bl      Function_20095c4
	str     r0, [r4, #0x44]
	mov     r0, r4
	mov     r2, #0x2
	add     r0, #0x58
	mov     r1, #0x0
	lsl     r2, r2, #20
	bl      Function_200964c
	mov     r0, #0x8
	mov     r1, #0x0
	mov     r2, #0xe
	bl      Function_2009714
	str     r0, [r4, #0x48]
	mov     r0, #0x5
	mov     r1, #0x1
	mov     r2, #0xe
	bl      Function_2009714
	str     r0, [r4, #0x4c]
	mov     r0, #0x30
	mov     r1, #0x2
	mov     r2, #0xe
	bl      Function_2009714
	str     r0, [r4, #0x50]
	mov     r0, #0x30
	mov     r1, #0x3
	mov     r2, #0xe
	bl      Function_2009714
	str     r0, [r4, #0x54]
	add     sp, #0x24
	pop     {r4,r5,pc}
@ 0x2255a92


.align 2


.word 0x225bd88 @ 0x2255a94
.thumb
Function_2255a98: @ 2255a98 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x44]
	bl      Function_2021964
	mov     r4, #0x0
.thumb
branch_2255aa4: @ 2255aa4 :thumb
	ldr     r0, [r5, #0x48]
	bl      Function_2009754
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_2255aa4
	bl      Function_201e958
	bl      Function_201f8b4
	bl      Function_200a878
	pop     {r3-r5,pc}
@ 0x2255ac0

.thumb
Function_2255ac0: @ 2255ac0 :thumb
	ldr     r3, [pc, #0x4] @ 0x2255ac8, (=Function_20219f8+1)
	ldr     r0, [r0, #0x44]
	bx      r3
@ 0x2255ac6

.align 2
.word Function_20219f8+1 @ 0x2255ac8



.thumb
Function_2255acc: @ 2255acc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, #0x0
	mov     r6, r0
	mov     r7, r1
	mov     r5, r4
.thumb
branch_2255ad8: @ 2255ad8 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r6, r0]
	add     r1, r4, #0x1
	mov     r2, #0x0
	mov     r3, #0xe
	bl      Function_200723c
	str     r0, [sp, #0x4]
	cmp     r0, #0x0
	bne     branch_2255af6
	bl      ErrorHandling
.thumb
branch_2255af6: @ 2255af6 :thumb
	ldr     r1, [sp, #0x4]
	mov     r0, r6
	mov     r2, r4
	bl      Function_2255340
	ldr     r1, [r7, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r1, r1, r5
	str     r0, [r1, #0x4]
	ldr     r1, [r6, #0x0]
	ldr     r0, [r7, #0x0]
	str     r1, [r0, r5]
	add     r5, #0x8
	cmp     r4, #0x64
	blt     branch_2255ad8
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	lsl     r0, r0, #6
	mov     r1, #0x0
	ldr     r0, [r6, r0]
	mov     r2, r1
	mov     r3, #0xe
	bl      Function_200723c
	mov     r4, r0
	ldr     r0, [r7, #0x14]
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_2022a1c
	ldr     r1, [r7, #0x8]
	mov     r0, r4
	.hword  0x1d09 @ add r1, r1, #0x4
	blx     Function_20a71b0
	ldr     r1, [r6, #0x0]
	ldr     r0, [r7, #0x8]
	str     r1, [r0, #0x0]
	ldr     r0, [r7, #0x8]
	mov     r1, #0x3
	str     r1, [r0, #0x8]
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2255b4e


.align 2, 0


.thumb
Function_2255b50: @ 2255b50 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x87
	mov     r4, r1
	mov     r6, #0x0
	str     r0, [sp, #0x8]
.thumb
branch_2255b5e: @ 2255b5e :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	lsl     r0, r0, #6
	mov     r1, r6
	ldr     r0, [r5, r0]
	add     r1, #0xce
	mov     r2, #0x0
	mov     r3, #0xe
	bl      Function_200723c
	mov     r2, r6
	mov     r1, r0
	add     r2, #0x64
	mov     r0, r5
	lsl     r7, r2, #3
	bl      Function_2255340
	ldr     r1, [r4, #0x0]
	mov     r2, #0x0
	add     r1, r1, r7
	str     r0, [r1, #0x4]
	ldr     r1, [r5, #0x0]
	ldr     r0, [r4, #0x0]
	mov     r3, #0xe
	str     r1, [r0, r7]
	add     r0, r6, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	ldr     r1, [sp, #0x8]
	bl      Function_200723c
	str     r0, [sp, #0xc]
	ldr     r0, [r4, #0x14]
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x4]
	bl      Function_2022a1c
	ldr     r1, [sp, #0x4]
	mov     r0, #0xc
	mov     r7, r1
	mul     r7, r0
	ldr     r1, [r4, #0x8]
	ldr     r0, [sp, #0xc]
	add     r1, r1, r7
	.hword  0x1d09 @ add r1, r1, #0x4
	blx     Function_20a71b0
	ldr     r0, [r4, #0x8]
	add     r0, r0, r7
	ldr     r0, [r0, #0x4]
	cmp     r0, #0x0
	bne     branch_2255bd4
	bl      ErrorHandling
.thumb
branch_2255bd4: @ 2255bd4 :thumb
	ldr     r1, [r5, #0x0]
	ldr     r0, [r4, #0x8]
	.hword  0x1c76 @ add r6, r6, #0x1
	str     r1, [r0, r7]
	ldr     r0, [r4, #0x8]
	add     r1, r0, r7
	mov     r0, #0x1
	str     r0, [r1, #0x8]
	ldr     r0, [sp, #0x8]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x8]
	cmp     r6, #0x12
	blt     branch_2255b5e
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2255bf2


.align 2, 0


.thumb
Function_2255bf4: @ 2255bf4 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	mov     r2, #0x0
	mov     r0, #0x6
	mov     r3, r1
	str     r2, [sp, #0x0]
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	mov     r1, #0xeb
	bl      Function_200723c
	str     r0, [r4, #0x30]
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2255c12


.align 2, 0


.thumb
Function_2255c14: @ 2255c14 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x30]
	bl      free
	mov     r0, #0x0
	str     r0, [r4, #0x30]
	pop     {r4,pc}
@ 0x2255c24

.thumb
Function_2255c24: @ 2255c24 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, r1
	mov     r4, r2
	mov     r6, r3
	bl      Function_200762c
	str     r0, [r5, #0x20]
	ldr     r3, [pc, #0x48] @ 0x2255c80, (=0x2100dec)
	mov     r1, #0x0
	ldr     r3, [r3, #0x0]
	mov     r0, r4
	mov     r2, r1
	blx     r3
	str     r0, [r5, #0x24]
	ldr     r3, [pc, #0x40] @ 0x2255c84, (=0x2100df4)
	mov     r0, r6
	ldr     r3, [r3, #0x0]
	mov     r1, #0x0
	mov     r2, #0x1
	blx     r3
	str     r0, [r5, #0x28]
	ldr     r3, [r5, #0x24]
	ldr     r2, [pc, #0x34] @ 0x2255c88, (=0x7fff0000)
	lsl     r1, r3, #16
	and     r2, r3
	lsr     r2, r2, #16
	ldr     r0, [r5, #0x20]
	lsr     r1, r1, #13
	lsl     r2, r2, #4
	bl      Function_2008a78
	ldr     r3, [r5, #0x28]
	ldr     r2, [pc, #0x24] @ 0x2255c8c, (=0xffff0000)
	lsl     r1, r3, #16
	and     r2, r3
	lsr     r2, r2, #16
	ldr     r0, [r5, #0x20]
	lsr     r1, r1, #13
	lsl     r2, r2, #3
	bl      Function_2008a84
	mov     r0, #0x1
	str     r0, [r5, #0x2c]
	pop     {r4-r6,pc}
@ 0x2255c7e


.align 2


.word 0x2100dec @ 0x2255c80
.word 0x2100df4 @ 0x2255c84
.word 0x7fff0000 @ 0x2255c88
.word 0xffff0000 @ 0x2255c8c
.thumb
Function_2255c90: @ 2255c90 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x20]
	bl      Function_2007b6c
	ldr     r1, [pc, #0x14] @ 0x2255cb0, (=0x2100df0)
	ldr     r0, [r4, #0x24]
	ldr     r1, [r1, #0x0]
	blx     r1
	ldr     r1, [pc, #0x10] @ 0x2255cb4, (=0x2100df8)
	ldr     r0, [r4, #0x28]
	ldr     r1, [r1, #0x0]
	blx     r1
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	pop     {r4,pc}
@ 0x2255cb0

.word 0x2100df0 @ 0x2255cb0
.word 0x2100df8 @ 0x2255cb4
.thumb
Function_2255cb8: @ 2255cb8 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	lsl     r0, r4, #3
	str     r0, [sp, #0x0]
	mov     r7, r3
	ldr     r1, [sp, #0x0]
	mov     r0, r7
	mov     r6, r2
	bl      malloc
	ldr     r2, [sp, #0x0]
	mov     r1, #0x0
	str     r0, [r5, #0x0]
	blx     Call_FillMemWithValue
	mov     r0, r4
	mov     r1, r7
	bl      Function_202298c
	str     r0, [r5, #0x10]
	str     r4, [r5, #0x4]
	mov     r0, #0xc
	mov     r4, r6
	mul     r4, r0
	mov     r0, r7
	mov     r1, r4
	bl      malloc
	mov     r1, #0x0
	mov     r2, r4
	str     r0, [r5, #0x8]
	blx     Call_FillMemWithValue
	mov     r0, r6
	mov     r1, r7
	bl      Function_202298c
	str     r0, [r5, #0x14]
	str     r6, [r5, #0xc]
	pop     {r3-r7,pc}
@ 0x2255d0a


.align 2, 0


.thumb
Function_2255d0c: @ 2255d0c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x0
	beq     branch_2255d1e
	bl      Function_20229d8
	mov     r0, #0x0
	str     r0, [r4, #0x10]
.thumb
branch_2255d1e: @ 2255d1e :thumb
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x0
	beq     branch_2255d2c
	bl      Function_20229d8
	mov     r0, #0x0
	str     r0, [r4, #0x14]
.thumb
branch_2255d2c: @ 2255d2c :thumb
	ldr     r0, [r4, #0x0]
	bl      free
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	ldr     r0, [r4, #0x8]
	bl      free
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	pop     {r4,pc}
@ 0x2255d42


.align 2, 0


.thumb
Function_2255d44: @ 2255d44 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r2, #0x2
	mov     r4, r0
	mov     r0, #0x3
	mov     r1, #0xd
	lsl     r2, r2, #16
	bl      Function_2017fc8
	mov     r2, #0x1
	mov     r0, #0x3
	mov     r1, #0xe
	lsl     r2, r2, #18
	bl      Function_2017fc8
	ldr     r1, [pc, #0xdc] @ 0x2255e40, (=0x6e4)
	mov     r0, r4
	mov     r2, #0xd
	bl      MallocSomeDataAndStorePtrInOverlayData1c
	ldr     r2, [pc, #0xd0] @ 0x2255e40, (=0x6e4)
	mov     r1, #0x0
	mov     r5, r0
	blx     Call_FillMemWithValue
	ldr     r0, [pc, #0xcc] @ 0x2255e44, (=0x2256941)
	mov     r1, r5
	bl      SetMainLoopFunctionCall
	bl      Function_20177a4
	mov     r0, r4
	bl      LoadPtrToOverWorldDataIn18
	mov     r4, r0
	ldr     r1, [r4, #0xc]
	ldr     r0, [pc, #0xb8] @ 0x2255e48, (=0x6d4)
	str     r1, [r5, r0]
	bl      Function_201e3d8
	mov     r0, #0x4
	bl      Function_201e450
	mov     r1, #0x61
	lsl     r1, r1, #2
	ldr     r0, [r4, #0x8]
	add     r1, r5, r1
	bl      Function_225894c
	mov     r0, r5
	bl      Function_22566c0
	mov     r1, #0xd7
	lsl     r1, r1, #2
	add     r0, r5, r1
	sub     r1, #0x8d
	mov     r2, #0xd
	bl      Function_2259484
	mov     r0, #0xaf
	lsl     r0, r0, #2
	mov     r1, #0xd
	bl      Function_2254de0
	mov     r1, #0xd9
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r1, [r4, #0x0]
	mov     r0, r5
	mov     r2, #0xa
	mov     r3, #0x0
	bl      Function_2256708
	mov     r0, r5
	bl      Function_22567fc
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2256948
	mov     r0, r5
	bl      Function_225699c
	ldr     r1, [r4, #0xc]
	mov     r0, r5
	bl      Function_2256bac
	mov     r0, #0x56
	lsl     r0, r0, #4
	add     r1, r5, r0
	mov     r2, #0xfd
	str     r1, [sp, #0x0]
	mov     r1, #0x1
	sub     r0, #0xc8
	lsl     r2, r2, #2
	str     r1, [sp, #0x4]
	add     r1, r5, r2
	sub     r2, #0x8c
	add     r0, r5, r0
	add     r2, r5, r2
	mov     r3, r5
	bl      Function_22589e0
	mov     r0, #0xd
	bl      Function_2015920
	mov     r1, #0x6b
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r0, #0xd
	mov     r1, #0x1
	bl      Function_201a778
	ldr     r2, [pc, #0x24] @ 0x2255e4c, (=0x6b4)
	mov     r1, #0x0
	str     r0, [r5, r2]
	sub     r2, #0xc
	str     r1, [r5, r2]
	mov     r0, #0x35
	mov     r2, r1
	bl      Function_2004550
	mov     r0, #0x1
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2255e3e


.align 2


.word 0x6e4 @ 0x2255e40
.word Function_2256940+1 @ =0x2256941, 0x2255e44
.word 0x6d4 @ 0x2255e48
.word 0x6b4 @ 0x2255e4c
.thumb
Function_2255e50: @ 2255e50 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r7, r0
	mov     r5, r1
	bl      LoadOverlayData1c
	mov     r4, r0
	mov     r0, r7
	mov     r6, #0x0
	bl      LoadPtrToOverWorldDataIn18
	ldr     r1, [r5, #0x0]
	cmp     r1, #0xc
	bhi     branch_2255f1e
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2255e78

Jumppoints_2255e78:
.hword branch_2255e92 - Jumppoints_2255e78 - 2
.hword branch_2255e92 - Jumppoints_2255e78 - 2
.hword branch_2255eae - Jumppoints_2255e78 - 2
.hword branch_2255ebe - Jumppoints_2255e78 - 2
.hword branch_2255eec - Jumppoints_2255e78 - 2
.hword branch_2255f0e - Jumppoints_2255e78 - 2
.hword branch_2255f3e - Jumppoints_2255e78 - 2
.hword branch_2255f74 - Jumppoints_2255e78 - 2
.hword branch_2255f9a - Jumppoints_2255e78 - 2
.hword branch_2255fda - Jumppoints_2255e78 - 2
.hword branch_2256012 - Jumppoints_2255e78 - 2
.hword branch_2256030 - Jumppoints_2255e78 - 2
.hword branch_225604e - Jumppoints_2255e78 - 2
.thumb
branch_2255e92: @ 2255e92 :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r1, #0xd
	str     r1, [sp, #0x8]
	mov     r1, #0x5
	mov     r2, r1
	mov     r3, r6
	bl      Function_200f174
	mov     r0, #0x2
	str     r0, [r5, #0x0]
	b       branch_225606a
@ 0x2255eae

.thumb
branch_2255eae: @ 2255eae :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_2255f1e
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_225606a
@ 0x2255ebe

.thumb
branch_2255ebe: @ 2255ebe :thumb
	ldr     r0, [r0, #0x1c]
	cmp     r0, #0x1
	bne     branch_2255ee6
	mov     r0, #0x1
	bl      Function_2002b20
	mov     r0, #0x56
	lsl     r0, r0, #4
	ldr     r2, [pc, #0x1a8] @ 0x2256078, (=0x181)
	add     r0, r4, r0
	mov     r1, #0x1a
	mov     r3, #0x2f
	bl      Function_225a660
	ldr     r1, [pc, #0x1a0] @ 0x225607c, (=0x6d8)
	str     r0, [r4, r1]
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_225606a
@ 0x2255ee6

.thumb
branch_2255ee6: @ 2255ee6 :thumb
	mov     r0, #0x6
	str     r0, [r5, #0x0]
	b       branch_225606a
@ 0x2255eec

.thumb
branch_2255eec: @ 2255eec :thumb
	ldr     r0, [pc, #0x18c] @ 0x225607c, (=0x6d8)
	ldr     r0, [r4, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_2255f1e
	mov     r0, #0x56
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_225a6a0
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_225606a
@ 0x2255f0e

.thumb
branch_2255f0e: @ 2255f0e :thumb
	ldr     r0, [pc, #0x170] @ 0x2256080, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	and     r1, r0
	ldr     r0, [pc, #0x16c] @ 0x2256084, (=0x21bf6bc)
	ldrh    r0, [r0, #0x20]
	orr     r0, r1
	bne     branch_2255f20
.thumb
branch_2255f1e: @ 2255f1e :thumb
	b       branch_225606a
@ 0x2255f20

.thumb
branch_2255f20: @ 2255f20 :thumb
	mov     r0, #0x56
	lsl     r0, r0, #4
	ldr     r2, [pc, #0x150] @ 0x2256078, (=0x181)
	add     r0, r4, r0
	mov     r1, #0x1a
	mov     r3, #0x30
	bl      Function_225a628
	mov     r0, r6
	bl      Function_2002b20
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_225606a
@ 0x2255f3e

.thumb
branch_2255f3e: @ 2255f3e :thumb
	ldr     r1, [pc, #0x148] @ 0x2256088, (=0x6a8)
	ldr     r0, [r4, r1]
	cmp     r0, #0x3
	bne     branch_2255f54
	.hword  0x1d09 @ add r1, r1, #0x4
	mov     r0, r4
	add     r1, r4, r1
	bl      Function_2256c48
	mov     r0, #0x7
	str     r0, [r5, #0x0]
.thumb
branch_2255f54: @ 2255f54 :thumb
	ldr     r0, [pc, #0x134] @ 0x225608c, (=0x498)
	add     r0, r4, r0
	bl      Function_225890c
	mov     r0, r4
	bl      Function_2257564
	mov     r0, #0x56
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_225a610
	mov     r0, r4
	bl      Function_2256ac4
	b       branch_225606a
@ 0x2255f74

.thumb
branch_2255f74: @ 2255f74 :thumb
	ldr     r0, [pc, #0x118] @ 0x2256090, (=0x6ac)
	ldr     r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_225606a
	mov     r1, r6
	str     r1, [r4, r0]
	mov     r1, #0x8
	str     r1, [r5, #0x0]
	mov     r1, #0x4
	.hword  0x1f00 @ sub r0, r0, #0x4
	str     r1, [r4, r0]
	ldr     r1, [pc, #0x108] @ 0x2256094, (=0x47c)
	mov     r2, #0xe
	add     r0, r4, r1
	sub     r1, #0x88
	add     r1, r4, r1
	bl      Function_225af44
	b       branch_225606a
@ 0x2255f9a

.thumb
branch_2255f9a: @ 2255f9a :thumb
	ldr     r1, [pc, #0xec] @ 0x2256088, (=0x6a8)
	ldr     r0, [r4, r1]
	cmp     r0, #0x9
	bne     branch_2255fb2
	.hword  0x1d09 @ add r1, r1, #0x4
	mov     r0, r4
	add     r1, r4, r1
	bl      Function_2256db8
	mov     r0, #0xa
	str     r0, [r5, #0x0]
	b       branch_225606a
@ 0x2255fb2

.thumb
branch_2255fb2: @ 2255fb2 :thumb
	cmp     r0, #0x8
	bne     branch_2255fc6
	mov     r0, #0x9
	str     r0, [r5, #0x0]
	mov     r0, #0x5
	str     r0, [r4, r1]
	mov     r0, r4
	bl      Function_22575b4
	b       branch_225606a
@ 0x2255fc6

.thumb
branch_2255fc6: @ 2255fc6 :thumb
	mov     r0, r4
	bl      Function_2257278
	ldr     r1, [pc, #0xb8] @ 0x2256088, (=0x6a8)
	str     r0, [r4, r1]
	ldr     r0, [pc, #0xc0] @ 0x2256094, (=0x47c)
	add     r0, r4, r0
	bl      Function_225af68
	b       branch_225606a
@ 0x2255fda

.thumb
branch_2255fda: @ 2255fda :thumb
	ldr     r0, [pc, #0xac] @ 0x2256088, (=0x6a8)
	ldr     r1, [r4, r0]
	cmp     r1, #0x6
	bne     branch_2255fee
	mov     r1, #0x1
	add     r0, #0x10
	str     r1, [r4, r0]
	mov     r0, #0xb
	str     r0, [r5, #0x0]
	b       branch_225606a
@ 0x2255fee

.thumb
branch_2255fee: @ 2255fee :thumb
	cmp     r1, #0x7
	bne     branch_2255ffe
	mov     r1, r6
	add     r0, #0x10
	str     r1, [r4, r0]
	mov     r0, #0xb
	str     r0, [r5, #0x0]
	b       branch_225606a
@ 0x2255ffe

.thumb
branch_2255ffe: @ 2255ffe :thumb
	mov     r0, r4
	bl      Function_2257624
	ldr     r1, [pc, #0x80] @ 0x2256088, (=0x6a8)
	str     r0, [r4, r1]
	ldr     r0, [pc, #0x88] @ 0x2256094, (=0x47c)
	add     r0, r4, r0
	bl      Function_225af68
	b       branch_225606a
@ 0x2256012

.thumb
branch_2256012: @ 2256012 :thumb
	ldr     r0, [pc, #0x7c] @ 0x2256090, (=0x6ac)
	ldr     r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_225606a
	mov     r2, r6
	str     r2, [r4, r0]
	mov     r1, #0x6
	str     r1, [r5, #0x0]
	.hword  0x1f00 @ sub r0, r0, #0x4
	str     r2, [r4, r0]
	ldr     r0, [pc, #0x6c] @ 0x2256094, (=0x47c)
	add     r0, r4, r0
	bl      Function_225af74
	b       branch_225606a
@ 0x2256030

.thumb
branch_2256030: @ 2256030 :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r1, #0xd
	str     r1, [sp, #0x8]
	mov     r1, r6
	mov     r2, r1
	mov     r3, r1
	bl      Function_200f174
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_225606a
@ 0x225604e

.thumb
branch_225604e: @ 225604e :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_225606a
	mov     r0, r6
	str     r0, [r5, #0x0]
	ldr     r0, [pc, #0x2c] @ 0x2256088, (=0x6a8)
	mov     r1, #0xa
	str     r1, [r4, r0]
	ldr     r0, [pc, #0x30] @ 0x2256094, (=0x47c)
	mov     r6, #0x1
	add     r0, r4, r0
	bl      Function_225af74
.thumb
branch_225606a: @ 225606a :thumb
	mov     r0, r4
	bl      Function_22566ec
	mov     r0, r6
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2256076


.align 2


.word 0x181 @ 0x2256078
.word 0x6d8 @ 0x225607c
.word 0x21bf67c @ 0x2256080
.word 0x21bf6bc @ 0x2256084
.word 0x6a8 @ 0x2256088
.word 0x498 @ 0x225608c
.word 0x6ac @ 0x2256090
.word 0x47c @ 0x2256094
.thumb
Function_2256098: @ 2256098 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	bl      LoadOverlayData1c
	mov     r4, r0
	mov     r0, r6
	bl      LoadPtrToOverWorldDataIn18
	mov     r5, r0
	ldr     r0, [pc, #0xbc] @ 0x2256168, (=0x6b8)
	ldr     r0, [r4, r0]
	cmp     r0, #0x1
	bne     branch_22560c8
	ldr     r0, [r5, #0x10]
	mov     r1, #0x7
	bl      Function_202cfec
	mov     r1, #0xfd
	lsl     r1, r1, #2
	ldr     r0, [r5, #0x4]
	ldr     r2, [r5, #0x14]
	add     r1, r4, r1
	bl      Function_2256f38
.thumb
branch_22560c8: @ 22560c8 :thumb
	ldr     r1, [r5, #0x18]
	cmp     r1, #0x0
	beq     branch_22560e0
	ldr     r0, [pc, #0x98] @ 0x2256168, (=0x6b8)
	ldr     r0, [r4, r0]
	cmp     r0, #0x1
	bne     branch_22560dc
	mov     r0, #0x1
	str     r0, [r1, #0x0]
	b       branch_22560e0
@ 0x22560dc

.thumb
branch_22560dc: @ 22560dc :thumb
	mov     r0, #0x0
	str     r0, [r1, #0x0]
.thumb
branch_22560e0: @ 22560e0 :thumb
	mov     r0, #0x6b
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_2015938
	ldr     r0, [pc, #0x80] @ 0x225616c, (=0x6b4)
	mov     r1, #0x1
	ldr     r0, [r4, r0]
	bl      Function_201a928
	mov     r0, r4
	bl      Function_2256c38
	ldr     r0, [pc, #0x74] @ 0x2256170, (=0x498)
	add     r0, r4, r0
	bl      Function_2258a34
	mov     r0, r4
	bl      Function_2256ab4
	mov     r0, r4
	bl      Function_225698c
	mov     r0, r4
	bl      Function_22567d8
	mov     r0, r4
	bl      Function_22568b8
	mov     r0, #0xd9
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2254e0c
	mov     r0, #0xd9
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	sub     r0, #0x8
	add     r0, r4, r0
	bl      Function_22594ac
	mov     r0, r4
	bl      Function_22566f4
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      Function_20177a4
	bl      Function_201e530
	cmp     r0, #0x1
	beq     branch_2256152
	bl      ErrorHandling
.thumb
branch_2256152: @ 2256152 :thumb
	mov     r0, r6
	bl      FreeSomeDataAndStore0InOverlayData1c
	mov     r0, #0xd
	bl      Function_201807c
	mov     r0, #0xe
	bl      Function_201807c
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2256168

.word 0x6b8 @ 0x2256168
.word 0x6b4 @ 0x225616c
.word 0x498 @ 0x2256170
.thumb
Function_2256174: @ 2256174 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r2, #0x2
	mov     r5, r0
	mov     r0, #0x3
	mov     r1, #0xd
	lsl     r2, r2, #16
	bl      Function_2017fc8
	mov     r2, #0x1
	mov     r0, #0x3
	mov     r1, #0xe
	lsl     r2, r2, #18
	bl      Function_2017fc8
	ldr     r1, [pc, #0x144] @ 0x22562d8, (=0x6e4)
	mov     r0, r5
	mov     r2, #0xd
	bl      MallocSomeDataAndStorePtrInOverlayData1c
	ldr     r2, [pc, #0x138] @ 0x22562d8, (=0x6e4)
	mov     r1, #0x0
	mov     r4, r0
	blx     Call_FillMemWithValue
	ldr     r0, [pc, #0x134] @ 0x22562dc, (=0x2256941)
	mov     r1, r4
	bl      SetMainLoopFunctionCall
	bl      Function_20177a4
	mov     r0, r5
	bl      LoadPtrToOverWorldDataIn18
	mov     r5, r0
	mov     r1, #0x1b
	ldr     r0, [r5, #0xc]
	lsl     r1, r1, #6
	str     r0, [r4, r1]
	ldr     r2, [r5, #0x10]
	add     r0, r1, #0x4
	str     r2, [r4, r0]
	mov     r0, r1
	ldr     r2, [r5, #0x14]
	add     r0, #0x8
	str     r2, [r4, r0]
	mov     r0, r1
	ldr     r2, [r5, #0x8]
	add     r0, #0xc
	str     r2, [r4, r0]
	ldr     r0, [r5, #0x1c]
	add     r1, #0x10
	str     r0, [r4, r1]
	bl      Function_201e3d8
	mov     r0, #0x4
	bl      Function_201e450
	mov     r1, #0x61
	lsl     r1, r1, #2
	ldr     r0, [r5, #0x18]
	add     r1, r4, r1
	bl      Function_225894c
	mov     r0, r4
	bl      Function_22566c0
	ldr     r0, [r4, #0x44]
	mov     r1, #0x0
	bl      Function_20219a4
	bl      Function_2039734
	mov     r0, #0x1
	mov     r1, #0x10
	bl      Function_200966c
	mov     r0, #0x1
	bl      Function_2009704
	mov     r1, #0xd7
	lsl     r1, r1, #2
	add     r0, r4, r1
	sub     r1, #0x8d
	mov     r2, #0xd
	bl      Function_2259484
	mov     r0, #0xaf
	lsl     r0, r0, #2
	mov     r1, #0xd
	bl      Function_2254de0
	mov     r1, #0xd9
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r1, [r5, #0x20]
	ldr     r0, [pc, #0xa8] @ 0x22562e0, (=0x6d4)
	str     r1, [r4, r0]
	.hword  0x1f01 @ sub r1, r0, #0x4
	ldr     r1, [r4, r1]
	ldrb    r1, [r1, #0x16]
	cmp     r1, #0x0
	bne     branch_225624e
	ldr     r0, [r5, #0xc]
	bl      Function_2257580
	ldr     r1, [pc, #0x98] @ 0x22562e4, (=0x6bc)
	str     r0, [r4, r1]
	b       branch_2256254
@ 0x225624e

.thumb
branch_225624e: @ 225624e :thumb
	mov     r1, #0x14
	sub     r0, #0x18
	str     r1, [r4, r0]
.thumb
branch_2256254: @ 2256254 :thumb
	ldr     r2, [pc, #0x8c] @ 0x22562e4, (=0x6bc)
	ldr     r1, [r5, #0x0]
	ldr     r2, [r4, r2]
	mov     r0, r4
	bl      Function_2256790
	mov     r0, r4
	bl      Function_22567fc
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2256948
	mov     r0, r4
	bl      Function_2256a28
	ldr     r0, [r5, #0x20]
	ldr     r1, [pc, #0x6c] @ 0x22562e4, (=0x6bc)
	str     r0, [sp, #0x0]
	ldr     r1, [r4, r1]
	ldr     r2, [r5, #0x8]
	ldr     r3, [r5, #0x1c]
	mov     r0, r4
	bl      Function_2256bf4
	mov     r0, #0x56
	lsl     r0, r0, #4
	add     r1, r4, r0
	mov     r2, #0xfd
	str     r1, [sp, #0x0]
	mov     r1, #0x0
	sub     r0, #0xc8
	lsl     r2, r2, #2
	str     r1, [sp, #0x4]
	add     r1, r4, r2
	sub     r2, #0x8c
	add     r0, r4, r0
	add     r2, r4, r2
	mov     r3, r4
	bl      Function_22589e0
	mov     r0, #0xd
	bl      Function_2015920
	mov     r1, #0x6b
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	mov     r0, #0xd
	mov     r1, #0x1
	bl      Function_201a778
	ldr     r1, [pc, #0x2c] @ 0x22562e8, (=0x6b4)
	mov     r2, #0x0
	str     r0, [r4, r1]
	mov     r0, r1
	sub     r0, #0xc
	add     r1, #0x1c
	str     r2, [r4, r0]
	ldr     r0, [r4, r1]
	ldrb    r0, [r0, #0x16]
	bl      Function_20959f4
	mov     r0, #0x1
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x22562d6


.align 2


.word 0x6e4 @ 0x22562d8
.word Function_2256940+1 @ =0x2256941, 0x22562dc
.word 0x6d4 @ 0x22562e0
.word 0x6bc @ 0x22562e4
.word 0x6b4 @ 0x22562e8
.thumb
Function_22562ec: @ 22562ec :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r4, r1
	bl      LoadOverlayData1c
	ldr     r1, [r4, #0x0]
	mov     r5, r0
	mov     r6, #0x0
	cmp     r1, #0x14
	bhi     branch_225634e
	add     r2, r1, r1
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x225630c

Jumppoints_225630c:
.hword branch_2256336 - Jumppoints_225630c - 2
.hword branch_2256346 - Jumppoints_225630c - 2
.hword branch_2256358 - Jumppoints_225630c - 2
.hword branch_225638e - Jumppoints_225630c - 2
.hword branch_22563ac - Jumppoints_225630c - 2
.hword branch_22563c2 - Jumppoints_225630c - 2
.hword branch_22563e0 - Jumppoints_225630c - 2
.hword branch_2256402 - Jumppoints_225630c - 2
.hword branch_2256420 - Jumppoints_225630c - 2
.hword branch_225643a - Jumppoints_225630c - 2
.hword branch_225645e - Jumppoints_225630c - 2
.hword branch_2256470 - Jumppoints_225630c - 2
.hword branch_225648e - Jumppoints_225630c - 2
.hword branch_22564aa - Jumppoints_225630c - 2
.hword branch_2256518 - Jumppoints_225630c - 2
.hword branch_225654a - Jumppoints_225630c - 2
.hword branch_22565c8 - Jumppoints_225630c - 2
.hword branch_22565c8 - Jumppoints_225630c - 2
.hword branch_22565c8 - Jumppoints_225630c - 2
.hword branch_2256568 - Jumppoints_225630c - 2
.hword branch_2256598 - Jumppoints_225630c - 2
.thumb
branch_2256336: @ 2256336 :thumb
	mov     r0, #0x2a
	mov     r1, #0x1e
	bl      Function_200564c
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_22565c8
@ 0x2256346

.thumb
branch_2256346: @ 2256346 :thumb
	bl      Function_2005684
	cmp     r0, #0x0
	beq     branch_2256350
.thumb
branch_225634e: @ 225634e :thumb
	b       branch_22565c8
@ 0x2256350

.thumb
branch_2256350: @ 2256350 :thumb
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_22565c8
@ 0x2256358

.thumb
branch_2256358: @ 2256358 :thumb
	bl      Function_2257104
	ldr     r2, [pc, #0x274] @ 0x22565d4, (=0x6bc)
	mov     r0, r5
	ldr     r2, [r5, r2]
	mov     r1, r6
	bl      Function_2257524
	ldr     r0, [pc, #0x26c] @ 0x22565d8, (=0x6c4)
	ldr     r0, [r5, r0]
	cmp     r0, #0x3
	beq     branch_225637a
	mov     r0, r5
	mov     r1, #0x1a
	bl      Function_225751c
	b       branch_2256382
@ 0x225637a

.thumb
branch_225637a: @ 225637a :thumb
	mov     r0, r5
	mov     r1, #0x1c
	bl      Function_225751c
.thumb
branch_2256382: @ 2256382 :thumb
	ldr     r1, [pc, #0x258] @ 0x22565dc, (=0x6d8)
	str     r0, [r5, r1]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_22565c8
@ 0x225638e

.thumb
branch_225638e: @ 225638e :thumb
	ldr     r0, [pc, #0x24c] @ 0x22565dc, (=0x6d8)
	ldr     r0, [r5, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_2256496
	mov     r0, r5
	bl      Function_2257540
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_22565c8
@ 0x22563ac

.thumb
branch_22563ac: @ 22563ac :thumb
	ldr     r1, [pc, #0x230] @ 0x22565e0, (=0x6cc)
	ldr     r1, [r5, r1]
	add     r1, #0x1d
	bl      Function_225751c
	ldr     r1, [pc, #0x224] @ 0x22565dc, (=0x6d8)
	str     r0, [r5, r1]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_22565c8
@ 0x22563c2

.thumb
branch_22563c2: @ 22563c2 :thumb
	ldr     r0, [pc, #0x218] @ 0x22565dc, (=0x6d8)
	ldr     r0, [r5, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_2256496
	mov     r0, r5
	bl      Function_2257540
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_22565c8
@ 0x22563e0

.thumb
branch_22563e0: @ 22563e0 :thumb
	ldr     r1, [pc, #0x1f4] @ 0x22565d8, (=0x6c4)
	ldr     r1, [r5, r1]
	cmp     r1, #0x3
	beq     branch_22563f0
	mov     r1, #0x2a
	bl      Function_225751c
	b       branch_22563f6
@ 0x22563f0

.thumb
branch_22563f0: @ 22563f0 :thumb
	mov     r1, #0x29
	bl      Function_225751c
.thumb
branch_22563f6: @ 22563f6 :thumb
	ldr     r1, [pc, #0x1e4] @ 0x22565dc, (=0x6d8)
	str     r0, [r5, r1]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_22565c8
@ 0x2256402

.thumb
branch_2256402: @ 2256402 :thumb
	ldr     r0, [pc, #0x1d8] @ 0x22565dc, (=0x6d8)
	ldr     r0, [r5, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_2256496
	mov     r0, r5
	bl      Function_2257540
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_22565c8
@ 0x2256420

.thumb
branch_2256420: @ 2256420 :thumb
	mov     r0, #0x6d
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	ldrb    r0, [r0, #0x16]
	cmp     r0, #0x0
	beq     branch_2256432
	mov     r0, #0x2
	bl      Function_20364f0
.thumb
branch_2256432: @ 2256432 :thumb
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_22565c8
@ 0x225643a

.thumb
branch_225643a: @ 225643a :thumb
	mov     r0, #0x6d
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	ldrb    r0, [r0, #0x16]
	cmp     r0, #0x0
	beq     branch_2256458
	mov     r0, #0x2
	bl      Function_2036540
	cmp     r0, #0x0
	beq     branch_2256496
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_22565c8
@ 0x2256458

.thumb
branch_2256458: @ 2256458 :thumb
	add     r0, r1, #0x1
	str     r0, [r4, #0x0]
	b       branch_22565c8
@ 0x225645e

.thumb
branch_225645e: @ 225645e :thumb
	bl      Function_225718c
	ldr     r0, [pc, #0x180] @ 0x22565e4, (=0x643)
	bl      Function_2005748
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_22565c8
@ 0x2256470

.thumb
branch_2256470: @ 2256470 :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r1, #0xd
	str     r1, [sp, #0x8]
	mov     r1, #0x11
	mov     r2, #0x13
	mov     r3, r6
	bl      Function_200f174
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_22565c8
@ 0x225648e

.thumb
branch_225648e: @ 225648e :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	bne     branch_2256498
.thumb
branch_2256496: @ 2256496 :thumb
	b       branch_22565c8
@ 0x2256498

.thumb
branch_2256498: @ 2256498 :thumb
	ldr     r1, [pc, #0x14c] @ 0x22565e8, (=0x491)
	mov     r0, #0x7
	mov     r2, r6
	bl      Function_2004550
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_22565c8
@ 0x22564aa

.thumb
branch_22564aa: @ 22564aa :thumb
	ldr     r0, [pc, #0x140] @ 0x22565ec, (=0x6a8)
	ldr     r1, [r5, r0]
	cmp     r1, #0x3
	bne     branch_22564de
	add     r0, #0x28
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      Function_2095ca8
	mov     r0, #0x6d
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	ldrb    r0, [r0, #0x16]
	cmp     r0, #0x0
	beq     branch_22564d8
	mov     r0, #0x56
	lsl     r0, r0, #4
	ldr     r2, [pc, #0x120] @ 0x22565f0, (=0x181)
	add     r0, r5, r0
	mov     r1, #0x1a
	mov     r3, #0x2e
	bl      Function_225a628
.thumb
branch_22564d8: @ 22564d8 :thumb
	mov     r0, #0xe
	str     r0, [r4, #0x0]
	b       branch_22565c8
@ 0x22564de

.thumb
branch_22564de: @ 22564de :thumb
	mov     r0, #0x56
	lsl     r0, r0, #4
	add     r0, r5, r0
	bl      Function_225a6c4
	cmp     r0, #0x0
	bne     branch_22564f8
	mov     r0, #0xf
	str     r0, [r4, #0x0]
	mov     r0, #0x1a
	lsl     r0, r0, #6
	bl      Function_2005748
.thumb
branch_22564f8: @ 22564f8 :thumb
	ldr     r0, [pc, #0xf8] @ 0x22565f4, (=0x498)
	add     r0, r5, r0
	bl      Function_225890c
	mov     r0, r5
	bl      Function_2257564
	mov     r0, #0x56
	lsl     r0, r0, #4
	add     r0, r5, r0
	bl      Function_225a610
	mov     r0, r5
	bl      Function_2256ac4
	b       branch_22565c8
@ 0x2256518

.thumb
branch_2256518: @ 2256518 :thumb
	mov     r0, #0x56
	lsl     r0, r0, #4
	add     r0, r5, r0
	bl      Function_225a6c4
	cmp     r0, #0x0
	bne     branch_2256532
	mov     r0, #0xf
	str     r0, [r4, #0x0]
	mov     r0, #0x1a
	lsl     r0, r0, #6
	bl      Function_2005748
.thumb
branch_2256532: @ 2256532 :thumb
	mov     r0, r5
	bl      Function_2257564
	mov     r0, #0x56
	lsl     r0, r0, #4
	add     r0, r5, r0
	bl      Function_225a610
	mov     r0, r5
	bl      Function_22577a0
	b       branch_22565c8
@ 0x225654a

.thumb
branch_225654a: @ 225654a :thumb
	mov     r0, #0x56
	lsl     r0, r0, #4
	add     r0, r5, r0
	bl      Function_225a610
	mov     r0, #0x56
	lsl     r0, r0, #4
	add     r0, r5, r0
	bl      Function_225a6d4
	cmp     r0, #0x0
	beq     branch_22565c8
	mov     r0, #0x13
	str     r0, [r4, #0x0]
	b       branch_22565c8
@ 0x2256568

.thumb
branch_2256568: @ 2256568 :thumb
	mov     r0, #0x1a
	lsl     r0, r0, #6
	bl      Function_20057d4
	cmp     r0, #0x1
	beq     branch_22565c8
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r1, #0xd
	str     r1, [sp, #0x8]
	mov     r1, #0x1a
	mov     r2, r1
	mov     r3, r6
	bl      Function_200f174
	ldr     r0, [pc, #0x6c] @ 0x22565f8, (=0x684)
	bl      Function_2005748
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_22565c8
@ 0x2256598

.thumb
branch_2256598: @ 2256598 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_22565c8
	mov     r0, r6
	str     r0, [r4, #0x0]
	mov     r2, #0x1
	ldr     r0, [pc, #0x44] @ 0x22565ec, (=0x6a8)
	mov     r1, #0xa
	str     r1, [r5, r0]
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x48] @ 0x22565fc, (=0xffff1fff)
	mov     r6, #0x1
	and     r0, r1
	str     r0, [r2, #0x0]
	mov     r0, #0xfd
	lsl     r0, r0, #2
	mov     r1, r6
	add     r0, r5, r0
	sub     r1, #0x41
	mov     r2, #0x28
	bl      Function_2257ab0
.thumb
branch_22565c8: @ 22565c8 :thumb
	mov     r0, r5
	bl      Function_22566ec
	mov     r0, r6
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x22565d4

.word 0x6bc @ 0x22565d4
.word 0x6c4 @ 0x22565d8
.word 0x6d8 @ 0x22565dc
.word 0x6cc @ 0x22565e0
.word 0x643 @ 0x22565e4
.word 0x491 @ 0x22565e8
.word 0x6a8 @ 0x22565ec
.word 0x181 @ 0x22565f0
.word 0x498 @ 0x22565f4
.word 0x684 @ 0x22565f8
.word 0xffff1fff @ 0x22565fc
.thumb
Function_2256600: @ 2256600 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      LoadOverlayData1c
	mov     r4, r0
	mov     r0, r5
	bl      LoadPtrToOverWorldDataIn18
	mov     r2, #0x1b
	mov     r3, r0
	mov     r1, #0xfd
	lsl     r2, r2, #6
	ldr     r0, [r3, #0x4]
	lsl     r1, r1, #2
	ldr     r2, [r4, r2]
	ldr     r3, [r3, #0x24]
	add     r1, r4, r1
	bl      Function_2256fd8
	mov     r0, #0x6b
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_2015938
	ldr     r0, [pc, #0x84] @ 0x22566b8, (=0x6b4)
	mov     r1, #0x1
	ldr     r0, [r4, r0]
	bl      Function_201a928
	mov     r0, r4
	bl      Function_2256c38
	ldr     r0, [pc, #0x78] @ 0x22566bc, (=0x498)
	add     r0, r4, r0
	bl      Function_2258a34
	mov     r0, r4
	bl      Function_2256ab4
	mov     r0, r4
	bl      Function_225698c
	mov     r0, r4
	bl      Function_22567d8
	mov     r0, r4
	bl      Function_22568b8
	mov     r0, #0xd9
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2254e0c
	mov     r0, #0xd9
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	sub     r0, #0x8
	add     r0, r4, r0
	bl      Function_22594ac
	mov     r0, r4
	bl      Function_22566f4
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      Function_20177a4
	bl      Function_201e530
	cmp     r0, #0x1
	beq     branch_2256698
	bl      ErrorHandling
branch_2256698: @ 2256698 :thumb

	mov     r0, r5
	bl      FreeSomeDataAndStore0InOverlayData1c
	mov     r0, #0xd
	bl      Function_201807c
	mov     r0, #0xe
	bl      Function_201807c
	bl      Function_2095a24
	bl      Function_2039794
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x22566b6

.align 2
.word 0x6b4 @ 0x22566b8
.word 0x498 @ 0x22566bc



.thumb
Function_22566c0: @ 22566c0 :thumb
	push    {r4,lr}
	add     sp, #-0x18
	mov     r4, r0
	bl      Function_2255094
	mov     r0, r4
	bl      Function_22550d4
	mov     r0, r4
	add     r1, sp, #0x0
	bl      Function_2255314
	mov     r0, r4
	add     r1, sp, #0x0
	bl      Function_22551b4
	add     r0, sp, #0x0
	bl      Function_2255338
	add     sp, #0x18
	pop     {r4,pc}
@ 0x22566ea


.align 2, 0


.thumb
Function_22566ec: @ 22566ec :thumb
	ldr     r3, [pc, #0x0] @ 0x22566f0, (=0x2255181)
	bx      r3
@ 0x22566f0

.word 0x2255181 @ 0x22566f0
.thumb
Function_22566f4: @ 22566f4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_22551d0
	mov     r0, r4
	bl      Function_2255134
	bl      Function_22550b4
	pop     {r4,pc}
@ 0x2256708

.thumb
Function_2256708: @ 2256708 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x34
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x4]
	mov     r1, #0xd9
	str     r0, [sp, #0x14]
	ldr     r0, [r5, #0x10]
	lsl     r1, r1, #2
	str     r0, [sp, #0x18]
	ldr     r0, [r5, #0x30]
	mov     r6, r3
	str     r0, [sp, #0x1c]
	ldr     r0, [r5, #0x20]
	str     r0, [sp, #0x20]
	ldr     r0, [r5, #0x40]
	str     r2, [sp, #0x30]
	str     r0, [sp, #0x24]
	ldr     r0, [r5, r1]
	str     r0, [sp, #0x28]
	mov     r0, r1
	sub     r0, #0x8
	add     r0, r5, r0
	add     r1, #0x90
	str     r0, [sp, #0x2c]
	add     r0, r5, r1
	add     r1, sp, #0x10
	bl      Function_22578f4
	cmp     r6, #0x0
	add     r2, sp, #0x0
	bne     branch_225675c
	mov     r0, #0xfd
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, r4
	mov     r3, #0xe
	bl      Function_2257998
	b       branch_225676a
@ 0x225675c

.thumb
branch_225675c: @ 225675c :thumb
	mov     r0, #0xfd
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, r4
	mov     r3, #0xe
	bl      Function_22579b4
.thumb
branch_225676a: @ 225676a :thumb
	mov     r0, r5
	add     r1, sp, #0x0
	bl      Function_2259098
	mov     r0, #0xfd
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_2257b10
	mov     r0, #0xfd
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x0
	mov     r2, #0xe
	bl      Function_2257c88
	add     sp, #0x34
	pop     {r3-r6,pc}
@ 0x225678e


.align 2, 0


.thumb
Function_2256790: @ 2256790 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r3, #0x1
	mov     r4, r0
	bl      Function_2256708
	ldr     r0, [pc, #0x34] @ 0x22567d4, (=0x46c)
	add     r1, sp, #0x8
	add     r0, r4, r0
	add     r2, sp, #0x4
	bl      Function_2259270
	ldr     r0, [pc, #0x28] @ 0x22567d4, (=0x46c)
	add     r1, sp, #0x0
	add     r0, r4, r0
	bl      Function_2259358
	ldr     r3, [sp, #0x4]
	ldr     r0, [pc, #0x1c] @ 0x22567d4, (=0x46c)
	lsr     r2, r3, #31
	add     r2, r3, r2
	asr     r3, r2, #1
	add     r2, sp, #0x0
	ldrb    r2, [r2, #0x3]
	add     r0, r4, r0
	mov     r1, #0xc0
	sub     r3, r3, r2
	mov     r2, #0x8d
	sub     r2, r2, r3
	bl      Function_22591ec
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x22567d2


.align 2


.word 0x46c @ 0x22567d4
.thumb
Function_22567d8: @ 22567d8 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xfd
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_2257cd4
	mov     r0, #0xfd
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_2257a98
	mov     r0, #0xfd
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_2257948
	pop     {r4,pc}
@ 0x22567fc

.thumb
Function_22567fc: @ 22567fc :thumb
	push    {r4-r7,lr}
	add     sp, #-0x2c
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x4]
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x10]
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x30]
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x40]
	str     r0, [sp, #0x10]
	mov     r0, #0x61
	lsl     r0, r0, #2
	add     r0, r5, r0
	str     r0, [sp, #0x28]
	mov     r0, #0xd9
	lsl     r0, r0, #2
	ldr     r1, [r5, r0]
	str     r1, [sp, #0x14]
	mov     r1, r0
	sub     r1, #0x8
	add     r1, r5, r1
	str     r1, [sp, #0x18]
	mov     r1, #0xe
	str     r1, [sp, #0x1c]
	mov     r1, #0x2
	str     r1, [sp, #0x20]
	mov     r1, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [sp, #0x24]
	add     r0, r5, r0
	add     r1, sp, #0x0
	bl      Function_2257f50
	mov     r0, #0xda
	lsl     r0, r0, #2
	mov     r1, #0x0
	add     r0, r5, r0
	mov     r2, r1
	bl      Function_22582c0
	mov     r6, #0x0
.thumb
branch_2256854: @ 2256854 :thumb
	mov     r0, #0x61
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, r6
	bl      Function_225899c
	mov     r7, r0
	mov     r4, #0x0
	cmp     r7, #0x0
	ble     branch_225687c
.thumb
branch_2256868: @ 2256868 :thumb
	mov     r0, #0xda
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x0
	mov     r2, r6
	bl      Function_22580a4
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r7
	blt     branch_2256868
.thumb
branch_225687c: @ 225687c :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, #0x64
	blt     branch_2256854
	mov     r7, #0xda
	mov     r6, #0x61
	mov     r4, #0x0
	lsl     r7, r7, #2
	lsl     r6, r6, #2
.thumb
branch_225688c: @ 225688c :thumb
	add     r0, r5, r6
	mov     r1, r4
	bl      Function_22589b0
	mov     r2, r0
	cmp     r2, #0x12
	bge     branch_22568a2
	add     r0, r5, r7
	mov     r1, #0x1
	bl      Function_22580a4
.thumb
branch_22568a2: @ 22568a2 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x12
	blt     branch_225688c
	mov     r0, #0xda
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_22581ec
	add     sp, #0x2c
	pop     {r4-r7,pc}
@ 0x22568b6


.align 2, 0


.thumb
Function_22568b8: @ 22568b8 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xda
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_2258408
	mov     r0, #0xda
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_22581c0
	mov     r0, #0xda
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_2257f88
	pop     {r4,pc}
@ 0x22568dc

.thumb
Function_22568dc: @ 22568dc :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r0, [pc, #0x58] @ 0x225693c, (=0x4000008)
	mov     r2, #0x3
	ldrh    r3, [r0, #0x0]
	mov     r1, #0x1
	bic     r3, r2
	orr     r1, r3
	strh    r1, [r0, #0x0]
	ldrh    r1, [r0, #0x2]
	bic     r1, r2
	strh    r1, [r0, #0x2]
	ldrh    r3, [r0, #0x4]
	mov     r1, #0x2
	bic     r3, r2
	orr     r1, r3
	strh    r1, [r0, #0x4]
	ldrh    r3, [r0, #0x6]
	mov     r1, #0x3
	bic     r3, r2
	mov     r2, r3
	orr     r2, r1
	strh    r2, [r0, #0x6]
	mov     r3, r1
	ldr     r0, [r4, #0x40]
	mov     r2, r1
	sub     r3, #0x13
	bl      Function_2019184
	mov     r0, #0xda
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, #0x0
	bl      Function_2258354
	mov     r1, #0x0
	mov     r0, #0xda
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r2, #0x2
	mov     r3, r1
	str     r1, [sp, #0x0]
	bl      Function_22583a0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x225693a


.align 2


.word 0x4000008 @ 0x225693c
.thumb
Function_2256940: @ 2256940 :thumb
	ldr     r3, [pc, #0x0] @ 0x2256944, (=0x22553f9)
	bx      r3
@ 0x2256944

.word 0x22553f9 @ 0x2256944
.thumb
Function_2256948: @ 2256948 :thumb
	push    {r3,lr}
	add     sp, #-0x30
	ldr     r2, [r0, #0x40]
	str     r2, [sp, #0x0]
	mov     r2, #0x19
	str     r2, [sp, #0x4]
	lsl     r2, r1, #1
	mov     r1, r2
	add     r1, #0x79
	str     r1, [sp, #0x8]
	mov     r1, #0x85
	str     r1, [sp, #0xc]
	mov     r1, #0x1
	add     r2, #0x7a
	str     r2, [sp, #0x10]
	mov     r2, #0x0
	str     r1, [sp, #0x1c]
	str     r1, [sp, #0x20]
	mov     r1, #0x2
	str     r1, [sp, #0x24]
	mov     r1, #0xe
	str     r1, [sp, #0x2c]
	ldr     r1, [pc, #0x10] @ 0x2256988, (=0x4b4)
	str     r2, [sp, #0x14]
	add     r0, r0, r1
	add     r1, sp, #0x0
	str     r2, [sp, #0x18]
	str     r2, [sp, #0x28]
	bl      Function_22597bc
	add     sp, #0x30
	pop     {r3,pc}
@ 0x2256988

.word 0x4b4 @ 0x2256988
.thumb
Function_225698c: @ 225698c :thumb
	ldr     r1, [pc, #0x4] @ 0x2256994, (=0x4b4)
	ldr     r3, [pc, #0x8] @ 0x2256998, (=0x2259805)
	add     r0, r0, r1
	bx      r3
@ 0x2256994

.word 0x4b4 @ 0x2256994
.word 0x2259805 @ 0x2256998
.thumb
Function_225699c: @ 225699c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	mov     r0, #0x4e
	lsl     r0, r0, #4
	add     r0, r4, r0
	mov     r1, r4
	bl      Function_2259dbc
	mov     r0, #0x4e
	lsl     r0, r0, #4
	mov     r1, #0x0
	ldr     r2, [pc, #0x5c] @ 0x2256a14, (=0x2256b05)
	add     r0, r4, r0
	mov     r3, r4
	str     r1, [sp, #0x0]
	bl      Function_2259ff4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x4e
	lsl     r0, r0, #4
	ldr     r2, [pc, #0x4c] @ 0x2256a18, (=0x2256b25)
	add     r0, r4, r0
	mov     r1, #0x1
	mov     r3, r4
	bl      Function_2259ff4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x4e
	lsl     r0, r0, #4
	ldr     r2, [pc, #0x3c] @ 0x2256a1c, (=0x2256b45)
	add     r0, r4, r0
	mov     r1, #0x2
	mov     r3, r4
	bl      Function_2259ff4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x4e
	lsl     r0, r0, #4
	ldr     r2, [pc, #0x2c] @ 0x2256a20, (=0x2256b79)
	add     r0, r4, r0
	mov     r1, #0x3
	mov     r3, r4
	bl      Function_2259ff4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x4e
	lsl     r0, r0, #4
	ldr     r2, [pc, #0x1c] @ 0x2256a24, (=0x2256ae5)
	add     r0, r4, r0
	mov     r1, #0x4
	mov     r3, r4
	bl      Function_2259ff4
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2256a14

.word 0x2256b05 @ 0x2256a14
.word 0x2256b25 @ 0x2256a18
.word 0x2256b45 @ 0x2256a1c
.word 0x2256b79 @ 0x2256a20
.word 0x2256ae5 @ 0x2256a24
.thumb
Function_2256a28: @ 2256a28 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	mov     r0, #0x4e
	lsl     r0, r0, #4
	add     r0, r4, r0
	mov     r1, r4
	bl      Function_2259dbc
	mov     r0, #0x4e
	lsl     r0, r0, #4
	mov     r1, #0x0
	ldr     r2, [pc, #0x5c] @ 0x2256aa0, (=0x2256b05)
	add     r0, r4, r0
	mov     r3, r4
	str     r1, [sp, #0x0]
	bl      Function_2259ff4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x4e
	lsl     r0, r0, #4
	ldr     r2, [pc, #0x4c] @ 0x2256aa4, (=0x2256b25)
	add     r0, r4, r0
	mov     r1, #0x1
	mov     r3, r4
	bl      Function_2259ff4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x4e
	lsl     r0, r0, #4
	ldr     r2, [pc, #0x3c] @ 0x2256aa8, (=0x2256b45)
	add     r0, r4, r0
	mov     r1, #0x2
	mov     r3, r4
	bl      Function_2259ff4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x4e
	lsl     r0, r0, #4
	ldr     r2, [pc, #0x2c] @ 0x2256aac, (=0x2256b79)
	add     r0, r4, r0
	mov     r1, #0x3
	mov     r3, r4
	bl      Function_2259ff4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x4e
	lsl     r0, r0, #4
	ldr     r2, [pc, #0x1c] @ 0x2256ab0, (=0x2256ae5)
	add     r0, r4, r0
	mov     r1, #0x4
	mov     r3, r4
	bl      Function_2259ff4
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2256aa0

.word 0x2256b05 @ 0x2256aa0
.word 0x2256b25 @ 0x2256aa4
.word 0x2256b45 @ 0x2256aa8
.word 0x2256b79 @ 0x2256aac
.word 0x2256ae5 @ 0x2256ab0
.thumb
Function_2256ab4: @ 2256ab4 :thumb
	mov     r1, r0
	mov     r0, #0x4e
	lsl     r0, r0, #4
	ldr     r3, [pc, #0x4] @ 0x2256ac0, (=0x2259f25)
	add     r0, r1, r0
	bx      r3
@ 0x2256ac0

.word 0x2259f25 @ 0x2256ac0
.thumb
Function_2256ac4: @ 2256ac4 :thumb
	mov     r1, #0x4e
	lsl     r1, r1, #4
	ldr     r3, [pc, #0x4] @ 0x2256ad0, (=0x2259f89)
	add     r0, r0, r1
	bx      r3
@ 0x2256ace


.align 2


.word 0x2259f89 @ 0x2256ad0
.thumb
Function_2256ad4: @ 2256ad4 :thumb
	mov     r1, #0x4e
	lsl     r1, r1, #4
	ldr     r3, [pc, #0x4] @ 0x2256ae0, (=0x2259fa1)
	add     r0, r0, r1
	bx      r3
@ 0x2256ade


.align 2


.word 0x2259fa1 @ 0x2256ae0
.thumb
Function_2256ae4: @ 2256ae4 :thumb
	push    {r4,lr}
	mov     r0, #0xda
	mov     r4, r1
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_2258460
	cmp     r0, #0x0
	beq     branch_2256afc
	ldr     r0, [pc, #0x8] @ 0x2256b00, (=0x6a8)
	mov     r1, #0x3
	str     r1, [r4, r0]
.thumb
branch_2256afc: @ 2256afc :thumb
	pop     {r4,pc}
@ 0x2256afe


.align 2


.word 0x6a8 @ 0x2256b00
.thumb
Function_2256b04: @ 2256b04 :thumb
	push    {r4,lr}
	mov     r0, #0xda
	mov     r4, r1
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_2258414
	mov     r1, r0
	mov     r0, #0xda
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r2, #0x0
	bl      Function_2258258
	pop     {r4,pc}
@ 0x2256b22


.align 2, 0


.thumb
Function_2256b24: @ 2256b24 :thumb
	push    {r4,lr}
	mov     r0, #0xda
	mov     r4, r1
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_2258414
	mov     r1, r0
	mov     r0, #0xda
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r2, #0x1
	bl      Function_2258258
	pop     {r4,pc}
@ 0x2256b42


.align 2, 0


.thumb
Function_2256b44: @ 2256b44 :thumb
	push    {r4,lr}
	ldr     r0, [pc, #0x2c] @ 0x2256b74, (=0x6a8)
	mov     r4, r1
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_2256b70
	mov     r0, #0xda
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, #0x0
	bl      Function_2258424
	mov     r2, r0
	mov     r0, #0xda
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, #0x0
	bl      Function_22582c0
	ldr     r0, [pc, #0x8] @ 0x2256b74, (=0x6a8)
	mov     r1, #0x0
	str     r1, [r4, r0]
.thumb
branch_2256b70: @ 2256b70 :thumb
	pop     {r4,pc}
@ 0x2256b72


.align 2


.word 0x6a8 @ 0x2256b74
.thumb
Function_2256b78: @ 2256b78 :thumb
	push    {r4,lr}
	ldr     r0, [pc, #0x2c] @ 0x2256ba8, (=0x6a8)
	mov     r4, r1
	ldr     r0, [r4, r0]
	cmp     r0, #0x1
	beq     branch_2256ba4
	mov     r0, #0xda
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, #0x1
	bl      Function_2258424
	mov     r2, r0
	mov     r0, #0xda
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, #0x1
	bl      Function_22582c0
	ldr     r0, [pc, #0x8] @ 0x2256ba8, (=0x6a8)
	mov     r1, #0x1
	str     r1, [r4, r0]
.thumb
branch_2256ba4: @ 2256ba4 :thumb
	pop     {r4,pc}
@ 0x2256ba6


.align 2


.word 0x6a8 @ 0x2256ba8
.thumb
Function_2256bac: @ 2256bac :thumb
	push    {r3-r5,lr}
	add     sp, #-0x28
	mov     r4, r0
	add     r2, sp, #0x0
	mov     r0, #0x0
	mov     r3, r1
	mov     r5, r2
	mov     r1, r0
	stmia   r5!, {r0,r1}
	stmia   r5!, {r0,r1}
	stmia   r5!, {r0,r1}
	stmia   r5!, {r0,r1}
	stmia   r5!, {r0,r1}
	ldr     r0, [r4, #0x40]
	mov     r1, r2
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x44]
	mov     r2, #0xf
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r0, #0x48
	str     r0, [sp, #0x8]
	mov     r0, #0xa
	str     r0, [sp, #0x10]
	mov     r0, #0x6
	str     r3, [sp, #0xc]
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	str     r0, [sp, #0x24]
	mov     r0, #0x56
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_225a428
	add     sp, #0x28
	pop     {r3-r5,pc}
@ 0x2256bf4

.thumb
Function_2256bf4: @ 2256bf4 :thumb
	push    {r4,lr}
	add     sp, #-0x28
	ldr     r4, [r0, #0x40]
	str     r4, [sp, #0x0]
	ldr     r4, [r0, #0x44]
	str     r4, [sp, #0x4]
	mov     r4, r0
	str     r1, [sp, #0x10]
	add     r1, r2, #0x7
	add     r4, #0x48
	str     r1, [sp, #0x18]
	mov     r1, #0x3c
	str     r4, [sp, #0x8]
	ldr     r4, [pc, #0x24] @ 0x2256c34, (=0x181)
	str     r1, [sp, #0x1c]
	ldr     r1, [sp, #0x30]
	str     r4, [sp, #0x14]
	str     r1, [sp, #0xc]
	str     r3, [sp, #0x20]
	.hword  0x1e61 @ sub r1, r4, #0x1
	ldr     r1, [r0, r1]
	mov     r2, #0x3f
	str     r1, [sp, #0x24]
	mov     r1, #0x56
	lsl     r1, r1, #4
	add     r0, r0, r1
	add     r1, sp, #0x0
	bl      Function_225a428
	add     sp, #0x28
	pop     {r4,pc}
@ 0x2256c32


.align 2


.word 0x181 @ 0x2256c34
.thumb
Function_2256c38: @ 2256c38 :thumb
	mov     r1, #0x56
	lsl     r1, r1, #4
	ldr     r3, [pc, #0x4] @ 0x2256c44, (=0x225a561)
	add     r0, r0, r1
	bx      r3
@ 0x2256c42


.align 2


.word 0x225a561 @ 0x2256c44
.thumb
Function_2256c48: @ 2256c48 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	ldr     r0, [pc, #0x1c] @ 0x2256c6c, (=0x2256c71)
	mov     r1, #0x10
	mov     r2, #0xa
	mov     r3, #0xd
	bl      Function_200679c
	bl      Function_201ced0
	str     r5, [r0, #0x0]
	str     r4, [r0, #0x4]
	mov     r1, #0x0
	str     r1, [r0, #0x8]
	str     r1, [r0, #0xc]
	pop     {r3-r5,pc}
@ 0x2256c6a


.align 2


.word 0x2256c71 @ 0x2256c6c
.thumb
Function_2256c70: @ 2256c70 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r1
	ldr     r1, [r4, #0xc]
	cmp     r1, #0x9
	bls     branch_2256c7e
	b       branch_2256db2
@ 0x2256c7e

.thumb
branch_2256c7e: @ 2256c7e :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2256c8a

Jumppoints_2256c8a:
.hword branch_2256c9e - Jumppoints_2256c8a - 2
.hword branch_2256cc0 - Jumppoints_2256c8a - 2
.hword branch_2256cda - Jumppoints_2256c8a - 2
.hword branch_2256cf6 - Jumppoints_2256c8a - 2
.hword branch_2256d0a - Jumppoints_2256c8a - 2
.hword branch_2256d32 - Jumppoints_2256c8a - 2
.hword branch_2256d52 - Jumppoints_2256c8a - 2
.hword branch_2256d78 - Jumppoints_2256c8a - 2
.hword branch_2256d94 - Jumppoints_2256c8a - 2
.hword branch_2256da8 - Jumppoints_2256c8a - 2
.thumb
branch_2256c9e: @ 2256c9e :thumb
	mov     r0, #0xda
	ldr     r1, [r4, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	mov     r1, #0x3
	mov     r2, #0x0
	bl      Function_2258218
	cmp     r0, #0x0
	bne     branch_2256cb6
	bl      ErrorHandling
.thumb
branch_2256cb6: @ 2256cb6 :thumb
	ldr     r0, [r4, #0xc]
	add     sp, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	pop     {r3,r4,pc}
@ 0x2256cc0

.thumb
branch_2256cc0: @ 2256cc0 :thumb
	mov     r0, #0xda
	ldr     r1, [r4, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	bl      Function_2258460
	cmp     r0, #0x0
	beq     branch_2256db2
	ldr     r0, [r4, #0xc]
	add     sp, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	pop     {r3,r4,pc}
@ 0x2256cda

.thumb
branch_2256cda: @ 2256cda :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x8
	mov     r1, r0
	sub     r1, #0x18
	mov     r2, #0x0
	mov     r3, #0xa
	bl      Function_200aae0
	ldr     r0, [r4, #0xc]
	add     sp, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	pop     {r3,r4,pc}
@ 0x2256cf6

.thumb
branch_2256cf6: @ 2256cf6 :thumb
	mov     r0, #0x1
	bl      Function_200ac1c
	cmp     r0, #0x0
	beq     branch_2256db2
	ldr     r0, [r4, #0xc]
	add     sp, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	pop     {r3,r4,pc}
@ 0x2256d0a

.thumb
branch_2256d0a: @ 2256d0a :thumb
	mov     r0, #0x4e
	ldr     r1, [r4, #0x0]
	lsl     r0, r0, #4
	add     r0, r1, r0
	mov     r1, #0x0
	mov     r2, #0x8
	bl      Function_2259fc4
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	cmp     r0, #0x8
	blt     branch_2256db2
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0xc]
	add     sp, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	pop     {r3,r4,pc}
@ 0x2256d32

.thumb
branch_2256d32: @ 2256d32 :thumb
	mov     r1, #0x7
	mov     r0, r4
	mvn     r1, r1
	mov     r2, #0x5
	mov     r3, #0x8
	bl      Function_2257098
	cmp     r0, #0x0
	beq     branch_2256db2
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0xc]
	add     sp, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	pop     {r3,r4,pc}
@ 0x2256d52

.thumb
branch_2256d52: @ 2256d52 :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      Function_2256948
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	ldr     r0, [r0, #0x40]
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_201c63c
	ldr     r0, [r4, #0x0]
	bl      Function_22571d4
	ldr     r0, [r4, #0xc]
	add     sp, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	pop     {r3,r4,pc}
@ 0x2256d78

.thumb
branch_2256d78: @ 2256d78 :thumb
	mov     r1, #0x0
	mov     r0, #0x1
	mov     r2, r1
	str     r0, [sp, #0x0]
	mov     r0, #0x8
	sub     r2, #0x10
	mov     r3, #0xa
	bl      Function_200aae0
	ldr     r0, [r4, #0xc]
	add     sp, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	pop     {r3,r4,pc}
@ 0x2256d94

.thumb
branch_2256d94: @ 2256d94 :thumb
	mov     r0, #0x1
	bl      Function_200ac1c
	cmp     r0, #0x0
	beq     branch_2256db2
	ldr     r0, [r4, #0xc]
	add     sp, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	pop     {r3,r4,pc}
@ 0x2256da8

.thumb
branch_2256da8: @ 2256da8 :thumb
	ldr     r1, [r4, #0x4]
	mov     r2, #0x1
	str     r2, [r1, #0x0]
	bl      Function_20067d0
.thumb
branch_2256db2: @ 2256db2 :thumb
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2256db6


.align 2, 0


.thumb
Function_2256db8: @ 2256db8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	ldr     r0, [pc, #0x1c] @ 0x2256ddc, (=0x2256de1)
	mov     r1, #0x10
	mov     r2, #0xa
	mov     r3, #0xd
	bl      Function_200679c
	bl      Function_201ced0
	str     r5, [r0, #0x0]
	str     r4, [r0, #0x4]
	mov     r1, #0x0
	str     r1, [r0, #0x8]
	str     r1, [r0, #0xc]
	pop     {r3-r5,pc}
@ 0x2256dda


.align 2


.word 0x2256de1 @ 0x2256ddc
.thumb
Function_2256de0: @ 2256de0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r1
	ldr     r1, [r4, #0xc]
	cmp     r1, #0x9
	bls     branch_2256dee
	b       branch_2256f32
@ 0x2256dee

.thumb
branch_2256dee: @ 2256dee :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2256dfa

Jumppoints_2256dfa:
.hword branch_2256e0e - Jumppoints_2256dfa - 2
.hword branch_2256e2a - Jumppoints_2256dfa - 2
.hword branch_2256e3e - Jumppoints_2256dfa - 2
.hword branch_2256e72 - Jumppoints_2256dfa - 2
.hword branch_2256e92 - Jumppoints_2256dfa - 2
.hword branch_2256ebc - Jumppoints_2256dfa - 2
.hword branch_2256ed8 - Jumppoints_2256dfa - 2
.hword branch_2256eec - Jumppoints_2256dfa - 2
.hword branch_2256f0e - Jumppoints_2256dfa - 2
.hword branch_2256f28 - Jumppoints_2256dfa - 2
.thumb
branch_2256e0e: @ 2256e0e :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x8
	mov     r1, r0
	sub     r1, #0x18
	mov     r2, #0x0
	mov     r3, #0xa
	bl      Function_200aae0
	ldr     r0, [r4, #0xc]
	add     sp, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	pop     {r3,r4,pc}
@ 0x2256e2a

.thumb
branch_2256e2a: @ 2256e2a :thumb
	mov     r0, #0x1
	bl      Function_200ac1c
	cmp     r0, #0x0
	beq     branch_2256f32
	ldr     r0, [r4, #0xc]
	add     sp, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	pop     {r3,r4,pc}
@ 0x2256e3e

.thumb
branch_2256e3e: @ 2256e3e :thumb
	ldr     r0, [r4, #0x0]
	bl      Function_2257258
	ldr     r0, [r4, #0x0]
	bl      Function_22568dc
	ldr     r0, [r4, #0x0]
	bl      Function_2256ad4
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	bl      Function_2256948
	ldr     r0, [r4, #0x0]
	mov     r2, #0x3
	mov     r3, r2
	ldr     r0, [r0, #0x40]
	mov     r1, #0x1
	sub     r3, #0x2b
	bl      Function_201c63c
	ldr     r0, [r4, #0xc]
	add     sp, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	pop     {r3,r4,pc}
@ 0x2256e72

.thumb
branch_2256e72: @ 2256e72 :thumb
	mov     r1, #0x8
	mov     r2, r1
	mov     r0, r4
	sub     r2, #0xd
	mov     r3, r1
	bl      Function_2257098
	cmp     r0, #0x0
	beq     branch_2256f32
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0xc]
	add     sp, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	pop     {r3,r4,pc}
@ 0x2256e92

.thumb
branch_2256e92: @ 2256e92 :thumb
	mov     r0, #0x4e
	ldr     r1, [r4, #0x0]
	lsl     r0, r0, #4
	add     r0, r1, r0
	mov     r1, #0x0
	mov     r2, r1
	sub     r2, #0x8
	bl      Function_2259fc4
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	cmp     r0, #0x8
	blt     branch_2256f32
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0xc]
	add     sp, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	pop     {r3,r4,pc}
@ 0x2256ebc

.thumb
branch_2256ebc: @ 2256ebc :thumb
	mov     r1, #0x0
	mov     r0, #0x1
	mov     r2, r1
	str     r0, [sp, #0x0]
	mov     r0, #0x8
	sub     r2, #0x10
	mov     r3, #0xa
	bl      Function_200aae0
	ldr     r0, [r4, #0xc]
	add     sp, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	pop     {r3,r4,pc}
@ 0x2256ed8

.thumb
branch_2256ed8: @ 2256ed8 :thumb
	mov     r0, #0x1
	bl      Function_200ac1c
	cmp     r0, #0x0
	beq     branch_2256f32
	ldr     r0, [r4, #0xc]
	add     sp, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	pop     {r3,r4,pc}
@ 0x2256eec

.thumb
branch_2256eec: @ 2256eec :thumb
	mov     r0, #0xda
	ldr     r1, [r4, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	mov     r1, #0x0
	mov     r2, r1
	bl      Function_2258218
	cmp     r0, #0x0
	bne     branch_2256f04
	bl      ErrorHandling
.thumb
branch_2256f04: @ 2256f04 :thumb
	ldr     r0, [r4, #0xc]
	add     sp, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	pop     {r3,r4,pc}
@ 0x2256f0e

.thumb
branch_2256f0e: @ 2256f0e :thumb
	mov     r0, #0xda
	ldr     r1, [r4, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	bl      Function_2258460
	cmp     r0, #0x0
	beq     branch_2256f32
	ldr     r0, [r4, #0xc]
	add     sp, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	pop     {r3,r4,pc}
@ 0x2256f28

.thumb
branch_2256f28: @ 2256f28 :thumb
	ldr     r1, [r4, #0x4]
	mov     r2, #0x1
	str     r2, [r1, #0x0]
	bl      Function_20067d0
.thumb
branch_2256f32: @ 2256f32 :thumb
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2256f36


.align 2, 0


.thumb
Function_2256f38: @ 2256f38 :thumb
	push    {r3-r7,lr}
	str     r1, [sp, #0x0]
	mov     r6, r0
	mov     r4, r2
	bl      Function_2029f84
	ldr     r1, [sp, #0x0]
	ldr     r2, [sp, #0x0]
	add     r1, #0x84
	ldr     r1, [r1, #0x0]
	mov     r0, r6
	add     r2, #0x78
	bl      Function_2029fac
	cmp     r4, #0x0
	beq     branch_2256f78
	mov     r0, r4
	mov     r1, #0xd
	bl      Function_2025f04
	mov     r5, r0
	mov     r0, r4
	bl      GetGender
	mov     r2, r0
	mov     r0, r6
	mov     r1, r5
	bl      Function_202a0ec
	mov     r0, r5
	bl      Function_20237bc
.thumb
branch_2256f78: @ 2256f78 :thumb
	ldr     r0, [sp, #0x0]
	mov     r5, #0x0
	mov     r7, r0
	ldr     r4, [r0, #0x1c]
	add     r7, #0x14
	cmp     r4, r7
	beq     branch_2256f9e
.thumb
branch_2256f86: @ 2256f86 :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	bne     branch_2256f98
	ldr     r1, [r4, #0x0]
	mov     r0, r6
	mov     r2, r5
	bl      Function_2029fd0
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_2256f98: @ 2256f98 :thumb
	ldr     r4, [r4, #0x8]
	cmp     r4, r7
	bne     branch_2256f86
.thumb
branch_2256f9e: @ 2256f9e :thumb
	ldr     r0, [sp, #0x0]
	ldr     r4, [r0, #0xc]
	add     r7, r0, #0x4
	cmp     r4, r7
	beq     branch_2256fc0
.thumb
branch_2256fa8: @ 2256fa8 :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	bne     branch_2256fba
	ldr     r1, [r4, #0x0]
	mov     r0, r6
	mov     r2, r5
	bl      Function_2029fd0
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_2256fba: @ 2256fba :thumb
	ldr     r4, [r4, #0x8]
	cmp     r4, r7
	bne     branch_2256fa8
.thumb
branch_2256fc0: @ 2256fc0 :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, r6
	ldr     r1, [r1, #0x74]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_202a084
	mov     r0, r6
	bl      Function_2029f5c
	pop     {r3-r7,pc}
@ 0x2256fd6


.align 2, 0


.thumb
Function_2256fd8: @ 2256fd8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r7, r0
	str     r1, [sp, #0x0]
	mov     r0, #0xd
	mov     r1, #0xac
	str     r2, [sp, #0x4]
	mov     r4, r3
	bl      malloc
	mov     r6, r0
	bl      Function_225764c
	ldr     r1, [sp, #0x0]
	ldr     r2, [sp, #0x0]
	add     r1, #0x84
	ldr     r1, [r1, #0x0]
	mov     r0, r7
	add     r2, #0x78
	bl      Function_202a284
	cmp     r4, #0x0
	beq     branch_2257026
	mov     r0, r4
	mov     r1, #0xd
	bl      Function_2025f04
	mov     r5, r0
	mov     r0, r4
	bl      GetGender
	mov     r2, r0
	mov     r0, r7
	mov     r1, r5
	bl      Function_202a4b4
	mov     r0, r5
	bl      Function_20237bc
.thumb
branch_2257026: @ 2257026 :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, r6
	add     r1, #0x14
	mov     r2, #0x1
	bl      Function_2257778
	ldr     r1, [sp, #0x0]
	mov     r0, r6
	.hword  0x1d09 @ add r1, r1, #0x4
	mov     r2, #0x0
	bl      Function_2257778
	mov     r0, r6
	bl      Function_225768c
	mov     r4, #0x0
	mov     r5, r4
.thumb
branch_2257048: @ 2257048 :thumb
	mov     r0, r6
	mov     r1, r5
	bl      Function_22576fc
	cmp     r0, #0x1
	bne     branch_225706a
	mov     r0, r6
	mov     r1, r5
	bl      Function_22576e8
	mov     r1, r0
	ldr     r1, [r1, #0x0]
	mov     r0, r7
	mov     r2, r4
	bl      Function_202a2a8
	.hword  0x1c64 @ add r4, r4, #0x1
.thumb
branch_225706a: @ 225706a :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x15
	blt     branch_2257048
	ldr     r1, [sp, #0x0]
	mov     r0, r7
	ldr     r1, [r1, #0x74]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_202a35c
	ldr     r1, [sp, #0x4]
	mov     r0, r7
	bl      Function_202a378
	mov     r0, r7
	bl      Function_202a240
	mov     r0, r6
	bl      free
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2257096


.align 2, 0


.thumb
Function_2257098: @ 2257098 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x8]
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3
	cmp     r0, #0x8
	bge     branch_22570b4
	mov     r0, #0xfd
	ldr     r3, [r5, #0x0]
	lsl     r0, r0, #2
	add     r0, r3, r0
	bl      Function_2257ab0
.thumb
branch_22570b4: @ 22570b4 :thumb
	ldr     r0, [r5, #0x8]
	cmp     r0, #0x1
	blt     branch_22570f2
	ldr     r0, [r5, #0x0]
	mov     r1, #0x2
	ldr     r0, [r0, #0x40]
	mov     r2, r1
	mov     r3, r4
	bl      Function_201c63c
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	ldr     r0, [r0, #0x40]
	mov     r2, #0x2
	mov     r3, r4
	bl      Function_201c63c
	ldr     r0, [r5, #0x0]
	mov     r1, #0x2
	ldr     r0, [r0, #0x40]
	mov     r2, #0x5
	mov     r3, r6
	bl      Function_201c63c
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	ldr     r0, [r0, #0x40]
	mov     r2, #0x5
	mov     r3, r6
	bl      Function_201c63c
.thumb
branch_22570f2: @ 22570f2 :thumb
	ldr     r0, [r5, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x8]
	cmp     r0, r7
	ble     branch_2257100
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2257100

.thumb
branch_2257100: @ 2257100 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2257104

.thumb
Function_2257104: @ 2257104 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x40]
	mov     r1, #0x3
	bl      Function_2019ebc
	mov     r2, #0x0
	ldr     r0, [r4, #0x40]
	mov     r1, #0x3
	mov     r3, r2
	bl      Function_2019184
	mov     r1, #0x3
	ldr     r0, [r4, #0x40]
	mov     r2, r1
	mov     r3, #0x0
	bl      Function_2019184
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_22574f4
	ldr     r1, [pc, #0x54] @ 0x2257188, (=0x4000008)
	mov     r3, #0x3
	ldrh    r2, [r1, #0x0]
	mov     r0, #0x2
	bic     r2, r3
	orr     r0, r2
	strh    r0, [r1, #0x0]
	ldrh    r2, [r1, #0x2]
	mov     r0, #0x1
	bic     r2, r3
	orr     r2, r0
	strh    r2, [r1, #0x2]
	ldrh    r4, [r1, #0x4]
	mov     r2, #0x3
	bic     r4, r3
	orr     r2, r4
	strh    r2, [r1, #0x4]
	ldrh    r2, [r1, #0x6]
	bic     r2, r3
	strh    r2, [r1, #0x6]
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x2
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x4
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x8
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x0
	bl      Function_200f338
	pop     {r4,pc}
@ 0x2257186


.align 2


.word 0x4000008 @ 0x2257188
.thumb
Function_225718c: @ 225718c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2257548
	ldr     r0, [r4, #0x40]
	mov     r1, #0x3
	bl      Function_2019ebc
	mov     r0, r4
	bl      Function_22568dc
	mov     r0, #0x0
	mov     r1, r0
	bl      SetBrightnessWithValue
	ldr     r0, [r4, #0x44]
	mov     r1, #0x1
	bl      Function_20219a4
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff0c
	mov     r0, #0x2
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x4
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	pop     {r4,pc}
@ 0x22571d4

.thumb
Function_22571d4: @ 22571d4 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	mov     r4, r0
	ldr     r0, [r4, #0x40]
	mov     r1, #0x3
	bl      Function_2019ebc
	mov     r2, #0x0
	ldr     r0, [r4, #0x40]
	mov     r1, #0x3
	mov     r3, r2
	bl      Function_2019184
	mov     r1, #0x3
	ldr     r0, [r4, #0x40]
	mov     r2, r1
	mov     r3, #0x0
	bl      Function_2019184
	ldr     r0, [r4, #0x40]
	mov     r1, #0x19
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x5
	str     r0, [sp, #0xc]
	add     r0, sp, #0x0
	strb    r1, [r0, #0x10]
	mov     r1, #0x4
	strb    r1, [r0, #0x11]
	mov     r0, #0x6b
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	add     r1, sp, #0x0
	bl      Function_2015958
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_22574cc
	ldr     r0, [pc, #0x28] @ 0x2257254, (=0x4000008)
	mov     r2, #0x3
	ldrh    r3, [r0, #0x0]
	mov     r1, #0x2
	bic     r3, r2
	orr     r1, r3
	strh    r1, [r0, #0x0]
	ldrh    r3, [r0, #0x2]
	mov     r1, #0x1
	bic     r3, r2
	orr     r1, r3
	strh    r1, [r0, #0x2]
	ldrh    r3, [r0, #0x4]
	mov     r1, #0x3
	bic     r3, r2
	orr     r1, r3
	strh    r1, [r0, #0x4]
	ldrh    r1, [r0, #0x6]
	bic     r1, r2
	strh    r1, [r0, #0x6]
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x2257254

.word 0x4000008 @ 0x2257254
.thumb
Function_2257258: @ 2257258 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x6b
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_2015a54
	mov     r0, r4
	bl      Function_22574ec
	ldr     r0, [r4, #0x40]
	mov     r1, #0x3
	bl      Function_2019ebc
	pop     {r4,pc}
@ 0x2257276


.align 2, 0


.thumb
Function_2257278: @ 2257278 :thumb
	push    {r3,lr}
	mov     r1, #0x6b
	lsl     r1, r1, #4
	ldr     r0, [r0, r1]
	bl      Function_20159fc
	cmp     r0, #0x0
	beq     branch_2257292
	cmp     r0, #0x1
	beq     branch_2257296
	cmp     r0, #0x2
	beq     branch_225729a
	pop     {r3,pc}
@ 0x2257292

.thumb
branch_2257292: @ 2257292 :thumb
	mov     r0, #0x4
	pop     {r3,pc}
@ 0x2257296

.thumb
branch_2257296: @ 2257296 :thumb
	mov     r0, #0x8
	pop     {r3,pc}
@ 0x225729a

.thumb
branch_225729a: @ 225729a :thumb
	mov     r0, #0x9
	pop     {r3,pc}
@ 0x225729e


.align 2, 0


.thumb
Function_22572a0: @ 22572a0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	ldr     r0, [pc, #0xb0] @ 0x2257358, (=0x6d4)
	str     r1, [sp, #0x14]
	ldr     r0, [r5, r0]
	mov     r7, r2
	mov     r4, r3
	bl      Function_2027b50
	mov     r6, r0
	mov     r0, #0x0
	mov     r1, #0xe0
	mov     r2, #0xe
	bl      Function_2002e98
	str     r4, [sp, #0x0]
	add     r0, sp, #0x20
	ldrb    r1, [r0, #0x10]
	mov     r2, #0x3
	mov     r3, r7
	str     r1, [sp, #0x4]
	ldrb    r0, [r0, #0x14]
	ldr     r1, [pc, #0x8c] @ 0x225735c, (=0x6b4)
	str     r0, [sp, #0x8]
	mov     r0, #0x7
	str     r0, [sp, #0xc]
	mov     r0, #0x92
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x40]
	ldr     r1, [r5, r1]
	bl      Function_201a7e8
	ldr     r0, [pc, #0x78] @ 0x225735c, (=0x6b4)
	mov     r1, #0xf
	ldr     r0, [r5, r0]
	bl      Function_201ada4
	lsl     r0, r6, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0xe
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x40]
	mov     r1, #0x3
	mov     r2, #0x74
	mov     r3, #0x8
	bl      Function_200dd0c
	ldr     r0, [pc, #0x58] @ 0x225735c, (=0x6b4)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	mov     r2, #0x74
	mov     r3, #0x8
	bl      Function_200e060
	ldr     r2, [pc, #0x4c] @ 0x2257360, (=0x181)
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, #0xd
	bl      Function_200b144
	ldr     r1, [sp, #0x14]
	mov     r6, r0
	bl      Function_200b1ec
	mov     r4, r0
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	ldr     r0, [pc, #0x38] @ 0x2257364, (=0x1020f)
	str     r3, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x28] @ 0x225735c, (=0x6b4)
	str     r3, [sp, #0xc]
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	mov     r2, r4
	bl      Function_201d78c
	mov     r0, r4
	bl      Function_20237bc
	mov     r0, r6
	bl      Function_200b190
	ldr     r0, [pc, #0x10] @ 0x225735c, (=0x6b4)
	ldr     r0, [r5, r0]
	bl      Function_201a954
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2257356


.align 2


.word 0x6d4 @ 0x2257358
.word 0x6b4 @ 0x225735c
.word 0x181 @ 0x2257360
.word 0x1020f @ 0x2257364
.thumb
Function_2257368: @ 2257368 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r0, [pc, #0x70] @ 0x22573e0, (=0x6b4)
	mov     r4, r1
	ldr     r0, [r5, r0]
	mov     r1, #0xf
	bl      Function_201ada4
	ldr     r2, [pc, #0x68] @ 0x22573e4, (=0x181)
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, #0xd
	bl      Function_200b144
	mov     r1, r4
	mov     r7, r0
	bl      Function_200b1ec
	mov     r6, r0
	mov     r0, #0x1
	lsl     r0, r0, #8
	mov     r1, #0xd
	bl      Function_2023790
	mov     r4, r0
	mov     r0, #0x6e
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, r4
	mov     r2, r6
	bl      Function_200c388
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	ldr     r0, [pc, #0x38] @ 0x22573e8, (=0x1020f)
	str     r3, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x28] @ 0x22573e0, (=0x6b4)
	str     r3, [sp, #0xc]
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	mov     r2, r4
	bl      Function_201d78c
	mov     r0, r4
	bl      Function_20237bc
	mov     r0, r6
	bl      Function_20237bc
	mov     r0, r7
	bl      Function_200b190
	ldr     r0, [pc, #0x8] @ 0x22573e0, (=0x6b4)
	ldr     r0, [r5, r0]
	bl      Function_201a954
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x22573e0

.word 0x6b4 @ 0x22573e0
.word 0x181 @ 0x22573e4
.word 0x1020f @ 0x22573e8
.thumb
Function_22573ec: @ 22573ec :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r0, [pc, #0x94] @ 0x2257488, (=0x6dc)
	mov     r4, r1
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_2257400
	bl      ErrorHandling
.thumb
branch_2257400: @ 2257400 :thumb
	ldr     r0, [pc, #0x88] @ 0x225748c, (=0x6b4)
	mov     r1, #0xf
	ldr     r0, [r5, r0]
	bl      Function_201ada4
	ldr     r2, [pc, #0x84] @ 0x2257490, (=0x181)
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, #0xd
	bl      Function_200b144
	mov     r1, r4
	mov     r7, r0
	bl      Function_200b1ec
	mov     r4, r0
	mov     r0, #0x1
	lsl     r0, r0, #8
	mov     r1, #0xd
	bl      Function_2023790
	ldr     r1, [pc, #0x5c] @ 0x2257488, (=0x6dc)
	mov     r2, r4
	str     r0, [r5, r1]
	add     r0, r1, #0x4
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	bl      Function_200c388
	mov     r0, #0x6d
	lsl     r0, r0, #4
	ldr     r1, [r5, r0]
	ldrb    r1, [r1, #0x16]
	cmp     r1, #0x0
	bne     branch_2257450
	.hword  0x1d00 @ add r0, r0, #0x4
	ldr     r0, [r5, r0]
	bl      Function_2027ac0
	b       branch_2257452
@ 0x2257450

.thumb
branch_2257450: @ 2257450 :thumb
	mov     r0, #0x1
.thumb
branch_2257452: @ 2257452 :thumb
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x38] @ 0x2257494, (=0x1020f)
	ldr     r2, [pc, #0x30] @ 0x225748c, (=0x6b4)
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	ldr     r0, [r5, r2]
	add     r2, #0x28
	ldr     r2, [r5, r2]
	mov     r1, #0x1
	bl      Function_201d78c
	mov     r6, r0
	mov     r0, r4
	bl      Function_20237bc
	mov     r0, r7
	bl      Function_200b190
	ldr     r0, [pc, #0x10] @ 0x225748c, (=0x6b4)
	ldr     r0, [r5, r0]
	bl      Function_201a954
	mov     r0, r6
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2257488

.word 0x6dc @ 0x2257488
.word 0x6b4 @ 0x225748c
.word 0x181 @ 0x2257490
.word 0x1020f @ 0x2257494
.thumb
Function_2257498: @ 2257498 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0xc] @ 0x22574ac, (=0x6dc)
	ldr     r0, [r4, r0]
	bl      Function_20237bc
	ldr     r0, [pc, #0x4] @ 0x22574ac, (=0x6dc)
	mov     r1, #0x0
	str     r1, [r4, r0]
	pop     {r4,pc}
@ 0x22574ac

.word 0x6dc @ 0x22574ac
.thumb
Function_22574b0: @ 22574b0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x10] @ 0x22574c8, (=0x6b4)
	ldr     r0, [r4, r0]
	bl      Function_201acf4
	ldr     r0, [pc, #0x8] @ 0x22574c8, (=0x6b4)
	ldr     r0, [r4, r0]
	bl      Function_201a8fc
	pop     {r4,pc}
@ 0x22574c6


.align 2


.word 0x6b4 @ 0x22574c8
.thumb
Function_22574cc: @ 22574cc :thumb
	push    {r3,lr}
	add     sp, #-0x8
	mov     r2, #0x1b
	str     r2, [sp, #0x0]
	mov     r2, #0x2
	mov     r3, #0x1
	str     r2, [sp, #0x4]
	bl      Function_22572a0
	add     sp, #0x8
	pop     {r3,pc}
@ 0x22574e2


.align 2, 0


.thumb
Function_22574e4: @ 22574e4 :thumb
	ldr     r3, [pc, #0x0] @ 0x22574e8, (=0x2257369)
	bx      r3
@ 0x22574e8

.word 0x2257369 @ 0x22574e8
.thumb
Function_22574ec: @ 22574ec :thumb
	ldr     r3, [pc, #0x0] @ 0x22574f0, (=0x22574b1)
	bx      r3
@ 0x22574f0

.word Function_22574b0+1 @ =0x22574b1, 0x22574f0
.thumb
Function_22574f4: @ 22574f4 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r2, #0x1b
	str     r2, [sp, #0x0]
	mov     r2, #0x4
	str     r2, [sp, #0x4]
	mov     r2, #0x2
	mov     r3, #0x13
	mov     r4, r0
	bl      Function_22572a0
	mov     r0, #0xd
	bl      Function_200b358
	mov     r1, #0x6e
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	add     sp, #0x8
	pop     {r4,pc}
@ 0x225751a


.align 2, 0


.thumb
Function_225751c: @ 225751c :thumb
	ldr     r3, [pc, #0x0] @ 0x2257520, (=0x22573ed)
	bx      r3
@ 0x2257520

.word 0x22573ed @ 0x2257520
.thumb
Function_2257524: @ 2257524 :thumb
	push    {r3,lr}
	add     sp, #-0x8
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r3, #0x1
	str     r3, [sp, #0x4]
	mov     r3, #0x6e
	lsl     r3, r3, #4
	ldr     r0, [r0, r3]
	mov     r3, #0x2
	bl      Function_200b60c
	add     sp, #0x8
	pop     {r3,pc}
@ 0x2257540

.thumb
Function_2257540: @ 2257540 :thumb
	ldr     r3, [pc, #0x0] @ 0x2257544, (=0x2257499)
	bx      r3
@ 0x2257544

.word 0x2257499 @ 0x2257544
.thumb
Function_2257548: @ 2257548 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_22574b0
	mov     r0, #0x6e
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_200b3f0
	mov     r0, #0x6e
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	pop     {r4,pc}
@ 0x2257564

.thumb
Function_2257564: @ 2257564 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xfd
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_2257d00
	mov     r1, r0
	mov     r0, #0x56
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_225a6b8
	pop     {r4,pc}
@ 0x2257580

.thumb
Function_2257580: @ 2257580 :thumb
	push    {r4,lr}
	cmp     r0, #0x3
	bhi     branch_22575aa
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2257592

Jumppoints_2257592:
.hword branch_225759a - Jumppoints_2257592 - 2
.hword branch_225759e - Jumppoints_2257592 - 2
.hword branch_22575a2 - Jumppoints_2257592 - 2
.hword branch_22575a6 - Jumppoints_2257592 - 2
.thumb
branch_225759a: @ 225759a :thumb
	mov     r4, #0x5
	b       branch_22575ae
@ 0x225759e

.thumb
branch_225759e: @ 225759e :thumb
	mov     r4, #0xa
	b       branch_22575ae
@ 0x22575a2

.thumb
branch_22575a2: @ 22575a2 :thumb
	mov     r4, #0xf
	b       branch_22575ae
@ 0x22575a6

.thumb
branch_22575a6: @ 22575a6 :thumb
	mov     r4, #0x14
	b       branch_22575ae
@ 0x22575aa

.thumb
branch_22575aa: @ 22575aa :thumb
	bl      ErrorHandling
.thumb
branch_22575ae: @ 22575ae :thumb
	mov     r0, r4
	pop     {r4,pc}
@ 0x22575b2


.align 2, 0


.thumb
Function_22575b4: @ 22575b4 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	mov     r4, r0
	ldr     r0, [r4, #0x40]
	mov     r1, #0x19
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x5
	str     r0, [sp, #0xc]
	add     r0, sp, #0x0
	strb    r1, [r0, #0x10]
	mov     r1, #0x4
	strb    r1, [r0, #0x11]
	mov     r0, #0x6b
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_2015a54
	mov     r0, #0x6b
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	add     r1, sp, #0x0
	bl      Function_2015958
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_22574e4
	ldr     r0, [pc, #0x2c] @ 0x2257620, (=0x4000008)
	mov     r2, #0x3
	ldrh    r3, [r0, #0x0]
	mov     r1, #0x2
	bic     r3, r2
	orr     r1, r3
	strh    r1, [r0, #0x0]
	ldrh    r3, [r0, #0x2]
	mov     r1, #0x1
	bic     r3, r2
	orr     r1, r3
	strh    r1, [r0, #0x2]
	ldrh    r3, [r0, #0x4]
	mov     r1, #0x3
	bic     r3, r2
	orr     r1, r3
	strh    r1, [r0, #0x4]
	ldrh    r1, [r0, #0x6]
	bic     r1, r2
	strh    r1, [r0, #0x6]
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x225761e


.align 2


.word 0x4000008 @ 0x2257620
.thumb
Function_2257624: @ 2257624 :thumb
	push    {r3,lr}
	mov     r1, #0x6b
	lsl     r1, r1, #4
	ldr     r0, [r0, r1]
	bl      Function_20159fc
	cmp     r0, #0x0
	beq     branch_225763e
	cmp     r0, #0x1
	beq     branch_2257642
	cmp     r0, #0x2
	beq     branch_2257646
	pop     {r3,pc}
@ 0x225763e

.thumb
branch_225763e: @ 225763e :thumb
	mov     r0, #0x5
	pop     {r3,pc}
@ 0x2257642

.thumb
branch_2257642: @ 2257642 :thumb
	mov     r0, #0x6
	pop     {r3,pc}
@ 0x2257646

.thumb
branch_2257646: @ 2257646 :thumb
	mov     r0, #0x7
	pop     {r3,pc}
@ 0x225764a


.align 2, 0


.thumb
Function_225764c: @ 225764c :thumb
	ldr     r3, [pc, #0x4] @ 0x2257654, (=Call_FillMemWithValue)
	mov     r1, #0x0
	mov     r2, #0xac
	bx      r3
@ 0x2257654

.word Call_FillMemWithValue @ 0x2257654
.thumb
Function_2257658: @ 2257658 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r6, r2
	cmp     r4, #0x0
	bne     branch_2257668
	bl      ErrorHandling
.thumb
branch_2257668: @ 2257668 :thumb
	mov     r0, r5
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	lsl     r0, r0, #3
	str     r4, [r5, r0]
	mov     r0, r5
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	lsl     r0, r0, #3
	add     r0, r5, r0
	str     r6, [r0, #0x4]
	mov     r0, r5
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	add     r5, #0xa8
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	pop     {r4-r6,pc}
@ 0x225768c

.thumb
Function_225768c: @ 225768c :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	add     r0, #0xa8
	ldr     r2, [r0, #0x0]
	mov     r1, #0x0
	cmp     r2, #0x0
	ble     branch_22576e4
.thumb
branch_225769a: @ 225769a :thumb
	lsl     r0, r1, #3
	add     r7, r6, r0
	ldr     r0, [r7, #0x4]
	cmp     r0, #0x1
	bne     branch_22576d8
	mov     r4, #0x0
	cmp     r2, #0x0
	ble     branch_22576d0
	mov     r5, r6
.thumb
branch_22576ac: @ 22576ac :thumb
	ldr     r0, [r5, #0x4]
	cmp     r0, #0x0
	bne     branch_22576c2
	mov     r0, r7
	mov     r1, r5
	bl      Function_225771c
	cmp     r0, #0x1
	bne     branch_22576c2
	mov     r0, #0x1
	str     r0, [r5, #0x4]
.thumb
branch_22576c2: @ 22576c2 :thumb
	mov     r0, r6
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x8
	cmp     r4, r0
	blt     branch_22576ac
.thumb
branch_22576d0: @ 22576d0 :thumb
	mov     r0, #0x2
	str     r0, [r7, #0x4]
	mov     r1, #0x0
	b       branch_22576da
@ 0x22576d8

.thumb
branch_22576d8: @ 22576d8 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
.thumb
branch_22576da: @ 22576da :thumb
	mov     r0, r6
	add     r0, #0xa8
	ldr     r2, [r0, #0x0]
	cmp     r1, r2
	blt     branch_225769a
.thumb
branch_22576e4: @ 22576e4 :thumb
	pop     {r3-r7,pc}
@ 0x22576e6


.align 2, 0


.thumb
Function_22576e8: @ 22576e8 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r0
	cmp     r5, #0x15
	bcc     branch_22576f6
	bl      ErrorHandling
.thumb
branch_22576f6: @ 22576f6 :thumb
	lsl     r0, r5, #3
	ldr     r0, [r4, r0]
	pop     {r3-r5,pc}
@ 0x22576fc

.thumb
Function_22576fc: @ 22576fc :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r0
	cmp     r5, #0x15
	bcc     branch_225770a
	bl      ErrorHandling
.thumb
branch_225770a: @ 225770a :thumb
	lsl     r0, r5, #3
	add     r0, r4, r0
	ldr     r0, [r0, #0x4]
	cmp     r0, #0x0
	beq     branch_2257718
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2257718

.thumb
branch_2257718: @ 2257718 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x225771c

.thumb
Function_225771c: @ 225771c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x2c
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	mov     r5, r1
	add     r1, sp, #0x28
	add     r2, sp, #0x24
	bl      Function_2259780
	add     r0, sp, #0x20
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	add     r1, sp, #0x14
	add     r2, sp, #0x18
	add     r3, sp, #0x1c
	bl      Function_2259724
	mov     r4, #0x0
	add     r6, sp, #0x10
	add     r7, sp, #0xc
.thumb
branch_2257744: @ 2257744 :thumb
	str     r4, [sp, #0x0]
	str     r6, [sp, #0x4]
	str     r7, [sp, #0x8]
	ldr     r0, [sp, #0x14]
	ldr     r1, [sp, #0x18]
	ldr     r2, [sp, #0x1c]
	ldr     r3, [sp, #0x20]
	bl      Function_22577ec
	ldr     r0, [r5, #0x0]
	ldr     r1, [sp, #0x10]
	ldr     r2, [sp, #0xc]
	bl      Function_2259578
	cmp     r0, #0x1
	bne     branch_225776a
	add     sp, #0x2c
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x225776a

.thumb
branch_225776a: @ 225776a :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x10
	blt     branch_2257744
	mov     r0, #0x0
	add     sp, #0x2c
	pop     {r4-r7,pc}
@ 0x2257776


.align 2, 0


.thumb
Function_2257778: @ 2257778 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	ldr     r4, [r5, #0x8]
	mov     r6, r0
	mov     r7, r2
	cmp     r4, r5
	beq     branch_225779c
.thumb
branch_2257786: @ 2257786 :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	bne     branch_2257796
	mov     r0, r6
	mov     r1, r4
	mov     r2, r7
	bl      Function_2257658
.thumb
branch_2257796: @ 2257796 :thumb
	ldr     r4, [r4, #0x8]
	cmp     r4, r5
	bne     branch_2257786
.thumb
branch_225779c: @ 225779c :thumb
	pop     {r3-r7,pc}
@ 0x225779e


.align 2, 0


.thumb
Function_22577a0: @ 22577a0 :thumb
	push    {r3-r5,lr}
	mov     r2, #0x6d
	lsl     r2, r2, #4
	ldr     r2, [r0, r2]
	mov     r1, #0x0
	ldrb    r3, [r2, #0x16]
	cmp     r3, #0x0
	bne     branch_22577bc
	mov     r2, #0x56
	lsl     r2, r2, #4
	add     r0, r0, r2
	bl      Function_225a6cc
	pop     {r3-r5,pc}
@ 0x22577bc

.thumb
branch_22577bc: @ 22577bc :thumb
	ldrb    r4, [r2, #0x14]
	ldrb    r3, [r2, #0x15]
	cmp     r4, r3
	bne     branch_22577ea
	mov     r4, r1
	mov     r5, r2
.thumb
branch_22577c8: @ 22577c8 :thumb
	ldrb    r3, [r5, #0x10]
	cmp     r3, #0x1
	bne     branch_22577d0
	.hword  0x1c49 @ add r1, r1, #0x1
.thumb
branch_22577d0: @ 22577d0 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r4, #0x4
	blt     branch_22577c8
	ldrb    r2, [r2, #0x17]
	cmp     r2, r1
	bgt     branch_22577ea
	mov     r1, #0x56
	lsl     r1, r1, #4
	add     r0, r0, r1
	mov     r1, #0x0
	bl      Function_225a6cc
.thumb
branch_22577ea: @ 22577ea :thumb
	pop     {r3-r5,pc}
@ 0x22577ec

.thumb
Function_22577ec: @ 22577ec :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r6, r0
	str     r1, [sp, #0x0]
	mov     r7, r2
	mov     r0, r3
	sub     r0, r0, r7
	mov     r1, #0x3
	str     r3, [sp, #0x4]
	ldr     r4, [sp, #0x2c]
	ldr     r5, [sp, #0x30]
	blx     _u32_div_f
	add     r1, r7, r0
	lsl     r0, r0, #1
	add     r0, r7, r0
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x0]
	str     r1, [sp, #0xc]
	sub     r0, r0, r6
	mov     r1, #0x3
	blx     _u32_div_f
	add     r2, r6, r0
	lsl     r0, r0, #1
	ldr     r1, [sp, #0x28]
	add     r0, r6, r0
	cmp     r1, #0xf
	bhi     branch_22578ee
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2257832

Jumppoints_2257832:
.hword branch_2257852 - Jumppoints_2257832 - 2
.hword branch_225785a - Jumppoints_2257832 - 2
.hword branch_2257862 - Jumppoints_2257832 - 2
.hword branch_225786a - Jumppoints_2257832 - 2
.hword branch_2257874 - Jumppoints_2257832 - 2
.hword branch_225787e - Jumppoints_2257832 - 2
.hword branch_2257888 - Jumppoints_2257832 - 2
.hword branch_2257892 - Jumppoints_2257832 - 2
.hword branch_225789e - Jumppoints_2257832 - 2
.hword branch_22578a8 - Jumppoints_2257832 - 2
.hword branch_22578b2 - Jumppoints_2257832 - 2
.hword branch_22578bc - Jumppoints_2257832 - 2
.hword branch_22578c8 - Jumppoints_2257832 - 2
.hword branch_22578d2 - Jumppoints_2257832 - 2
.hword branch_22578dc - Jumppoints_2257832 - 2
.hword branch_22578e6 - Jumppoints_2257832 - 2
.thumb
branch_2257852: @ 2257852 :thumb
	str     r7, [r4, #0x0]
	add     sp, #0x10
	str     r6, [r5, #0x0]
	pop     {r3-r7,pc}
@ 0x225785a

.thumb
branch_225785a: @ 225785a :thumb
	str     r7, [r4, #0x0]
	add     sp, #0x10
	str     r2, [r5, #0x0]
	pop     {r3-r7,pc}
@ 0x2257862

.thumb
branch_2257862: @ 2257862 :thumb
	str     r7, [r4, #0x0]
	add     sp, #0x10
	str     r0, [r5, #0x0]
	pop     {r3-r7,pc}
@ 0x225786a

.thumb
branch_225786a: @ 225786a :thumb
	ldr     r0, [sp, #0x0]
	str     r7, [r4, #0x0]
	add     sp, #0x10
	str     r0, [r5, #0x0]
	pop     {r3-r7,pc}
@ 0x2257874

.thumb
branch_2257874: @ 2257874 :thumb
	ldr     r0, [sp, #0xc]
	add     sp, #0x10
	str     r0, [r4, #0x0]
	str     r6, [r5, #0x0]
	pop     {r3-r7,pc}
@ 0x225787e

.thumb
branch_225787e: @ 225787e :thumb
	ldr     r0, [sp, #0xc]
	add     sp, #0x10
	str     r0, [r4, #0x0]
	str     r2, [r5, #0x0]
	pop     {r3-r7,pc}
@ 0x2257888

.thumb
branch_2257888: @ 2257888 :thumb
	ldr     r1, [sp, #0xc]
	add     sp, #0x10
	str     r1, [r4, #0x0]
	str     r0, [r5, #0x0]
	pop     {r3-r7,pc}
@ 0x2257892

.thumb
branch_2257892: @ 2257892 :thumb
	ldr     r0, [sp, #0xc]
	str     r0, [r4, #0x0]
	ldr     r0, [sp, #0x0]
	add     sp, #0x10
	str     r0, [r5, #0x0]
	pop     {r3-r7,pc}
@ 0x225789e

.thumb
branch_225789e: @ 225789e :thumb
	ldr     r0, [sp, #0x8]
	add     sp, #0x10
	str     r0, [r4, #0x0]
	str     r6, [r5, #0x0]
	pop     {r3-r7,pc}
@ 0x22578a8

.thumb
branch_22578a8: @ 22578a8 :thumb
	ldr     r0, [sp, #0x8]
	add     sp, #0x10
	str     r0, [r4, #0x0]
	str     r2, [r5, #0x0]
	pop     {r3-r7,pc}
@ 0x22578b2

.thumb
branch_22578b2: @ 22578b2 :thumb
	ldr     r1, [sp, #0x8]
	add     sp, #0x10
	str     r1, [r4, #0x0]
	str     r0, [r5, #0x0]
	pop     {r3-r7,pc}
@ 0x22578bc

.thumb
branch_22578bc: @ 22578bc :thumb
	ldr     r0, [sp, #0x8]
	str     r0, [r4, #0x0]
	ldr     r0, [sp, #0x0]
	add     sp, #0x10
	str     r0, [r5, #0x0]
	pop     {r3-r7,pc}
@ 0x22578c8

.thumb
branch_22578c8: @ 22578c8 :thumb
	ldr     r0, [sp, #0x4]
	add     sp, #0x10
	str     r0, [r4, #0x0]
	str     r6, [r5, #0x0]
	pop     {r3-r7,pc}
@ 0x22578d2

.thumb
branch_22578d2: @ 22578d2 :thumb
	ldr     r0, [sp, #0x4]
	add     sp, #0x10
	str     r0, [r4, #0x0]
	str     r2, [r5, #0x0]
	pop     {r3-r7,pc}
@ 0x22578dc

.thumb
branch_22578dc: @ 22578dc :thumb
	ldr     r1, [sp, #0x4]
	add     sp, #0x10
	str     r1, [r4, #0x0]
	str     r0, [r5, #0x0]
	pop     {r3-r7,pc}
@ 0x22578e6

.thumb
branch_22578e6: @ 22578e6 :thumb
	ldr     r0, [sp, #0x4]
	str     r0, [r4, #0x0]
	ldr     r0, [sp, #0x0]
	str     r0, [r5, #0x0]
.thumb
branch_22578ee: @ 22578ee :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x22578f2


.align 2, 0


.thumb
Function_22578f4: @ 22578f4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r1, #0x0]
	mov     r2, #0x0
	str     r0, [r4, #0x2c]
	ldr     r0, [r1, #0x4]
	str     r0, [r4, #0x30]
	ldr     r0, [r1, #0x8]
	str     r0, [r4, #0x34]
	ldr     r0, [r1, #0xc]
	str     r0, [r4, #0x38]
	ldr     r0, [r1, #0x10]
	str     r0, [r4, #0x3c]
	ldr     r0, [r1, #0x14]
	str     r0, [r4, #0x40]
	ldr     r0, [r1, #0x18]
	str     r0, [r4, #0x44]
	str     r2, [r4, #0x74]
	ldr     r0, [r1, #0x1c]
	str     r0, [r4, #0x0]
	add     r0, r4, #0x4
	str     r0, [r4, #0xc]
	str     r0, [r4, #0x10]
	mov     r0, r4
	add     r0, #0x14
	str     r0, [r4, #0x1c]
	str     r0, [r4, #0x20]
	str     r2, [r4, #0x24]
	ldr     r0, [r1, #0x20]
	mov     r1, r4
	str     r0, [r4, #0x28]
	ldr     r0, [r4, #0x0]
	add     r1, #0x78
	mov     r2, #0x3
	bl      Function_22594c0
	add     r4, #0x14
	mov     r1, r4
	bl      Function_2259520
	pop     {r4,pc}
@ 0x2257946


.align 2, 0


.thumb
Function_2257948: @ 2257948 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_22579f0
	mov     r0, r4
	bl      Function_2257a98
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x88
	blx     Call_FillMemWithValue
	pop     {r4,pc}
@ 0x2257962


.align 2, 0


.thumb
Function_2257964: @ 2257964 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	ldr     r0, [sp, #0x20]
	mov     r6, r1
	str     r0, [sp, #0x0]
	mov     r5, r2
	mov     r0, r4
	mov     r7, r3
	ldr     r1, [r4, #0x3c]
	add     r0, #0x78
	mov     r2, r6
	mov     r3, r5
	bl      Function_22590c0
	mov     r0, r4
	ldr     r1, [sp, #0x1c]
	add     r0, #0x78
	bl      Function_22591d0
	add     r4, #0x78
	ldr     r2, [sp, #0x18]
	mov     r0, r4
	mov     r1, r7
	bl      Function_22591ec
	pop     {r3-r7,pc}
@ 0x2257998

.thumb
Function_2257998: @ 2257998 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r6, r0
	str     r3, [sp, #0x0]
	mov     r5, r1
	mov     r4, r2
	ldr     r1, [r6, #0x3c]
	add     r0, #0x78
	mov     r2, r5
	mov     r3, r4
	bl      Function_22590c0
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x22579b4

.thumb
Function_22579b4: @ 22579b4 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r6, r0
	str     r3, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r5, r1
	mov     r4, r2
	mov     r0, r6
	ldr     r1, [r6, #0x3c]
	add     r0, #0x78
	mov     r2, r5
	mov     r3, r4
	bl      Function_22590d4
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x22579d6


.align 2, 0


.thumb
Function_22579d8: @ 22579d8 :thumb
	ldr     r3, [pc, #0x8] @ 0x22579e4, (=0x2259521)
	mov     r2, r0
	mov     r0, r1
	ldr     r1, [r2, #0x20]
	bx      r3
@ 0x22579e2


.align 2


.word Function_2259520+1 @ =0x2259521, 0x22579e4
.thumb
Function_22579e8: @ 22579e8 :thumb
	ldr     r3, [pc, #0x0] @ 0x22579ec, (=0x2259531)
	bx      r3
@ 0x22579ec

.word Function_2259530+1 @ =0x2259531, 0x22579ec
.thumb
Function_22579f0: @ 22579f0 :thumb
	ldr     r3, [pc, #0x4] @ 0x22579f8, (=0x22591b9)
	add     r0, #0x78
	bx      r3
@ 0x22579f6


.align 2


.word 0x22591b9 @ 0x22579f8
.thumb
Function_22579fc: @ 22579fc :thumb
	push    {r3-r5,lr}
	add     sp, #-0x20
	mov     r4, r0
	ldr     r5, [r4, #0x24]
	ldr     r0, [r4, #0x28]
	cmp     r5, r0
	bge     branch_2257a56
	ldr     r0, [r4, #0x44]
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x2c]
	str     r0, [sp, #0x4]
	ldr     r5, [r4, #0x30]
	lsl     r0, r1, #2
	ldr     r0, [r5, r0]
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x34]
	ldr     r0, [r0, #0x0]
	str     r2, [sp, #0x10]
	str     r3, [sp, #0x14]
	str     r1, [sp, #0x18]
	str     r0, [sp, #0xc]
	ldr     r0, [r4, #0x38]
	ldrb    r0, [r0, r1]
	str     r0, [sp, #0x1c]
	add     r0, sp, #0x0
	bl      Function_2254e20
	ldr     r1, [sp, #0x30]
	mov     r5, r0
	bl      Function_2254f6c
	ldr     r0, [r4, #0x0]
	mov     r1, r5
	mov     r2, #0x0
	bl      Function_22594c0
	add     r1, r4, #0x4
	bl      Function_2259520
	ldr     r0, [r4, #0x24]
	add     sp, #0x20
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x24]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2257a56

.thumb
branch_2257a56: @ 2257a56 :thumb
	mov     r0, #0x0
	add     sp, #0x20
	pop     {r3-r5,pc}
@ 0x2257a5c

.thumb
Function_2257a5c: @ 2257a5c :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r3, r2
	ldr     r5, [r4, #0x24]
	ldr     r2, [r4, #0x28]
	cmp     r5, r2
	bge     branch_2257a7a
	mov     r2, #0x1
	bl      Function_2257dec
	ldr     r0, [r4, #0x24]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x24]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2257a7a

.thumb
branch_2257a7a: @ 2257a7a :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2257a7e


.align 2, 0


.thumb
Function_2257a80: @ 2257a80 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r1
	bl      Function_2259530
	ldr     r0, [r4, #0x24]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x24]
	bpl     branch_2257a96
	bl      ErrorHandling
.thumb
branch_2257a96: @ 2257a96 :thumb
	pop     {r4,pc}
@ 0x2257a98

.thumb
Function_2257a98: @ 2257a98 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, r4, #0x4
	bl      Function_2259540
	mov     r0, r4
	add     r0, #0x14
	bl      Function_2259540
	mov     r0, #0x0
	str     r0, [r4, #0x24]
	pop     {r4,pc}
@ 0x2257ab0

.thumb
Function_2257ab0: @ 2257ab0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, r5, #0x4
	mov     r4, r1
	mov     r6, r2
	bl      Function_22596ec
	add     r5, #0x14
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_22596ec
	pop     {r4-r6,pc}
@ 0x2257acc

.thumb
Function_2257acc: @ 2257acc :thumb
	ldr     r3, [pc, #0x4] @ 0x2257ad4, (=0x22596ed)
	add     r0, #0x14
	bx      r3
@ 0x2257ad2


.align 2


.word Function_22596ec+1 @ =0x22596ed, 0x2257ad4
.thumb
Function_2257ad8: @ 2257ad8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	neg     r4, r2
	neg     r7, r1
	add     r0, r5, #0x4
	mov     r1, r7
	mov     r2, r4
	mov     r6, r3
	bl      Function_22596ec
	ldr     r2, [sp, #0x18]
	add     r0, r5, #0x4
	mov     r1, r6
	bl      Function_22596ec
	mov     r0, r5
	add     r0, #0x14
	mov     r1, r7
	mov     r2, r4
	bl      Function_22596ec
	add     r5, #0x14
	ldr     r2, [sp, #0x18]
	mov     r0, r5
	mov     r1, r6
	bl      Function_22596ec
	pop     {r3-r7,pc}
@ 0x2257b10

.thumb
Function_2257b10: @ 2257b10 :thumb
	ldr     r3, [pc, #0x4] @ 0x2257b18, (=0x2257b1d)
	mov     r1, #0x0
	mvn     r1, r1
	bx      r3
@ 0x2257b18

.word 0x2257b1d @ 0x2257b18
.thumb
Function_2257b1c: @ 2257b1c :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r6, r7
	ldr     r4, [r7, #0x1c]
	add     r6, #0x14
	mov     r5, r1
	cmp     r4, r6
	beq     branch_2257b4a
.thumb
branch_2257b2c: @ 2257b2c :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	ldr     r0, [r4, #0x0]
	bne     branch_2257b3c
	mov     r1, r5
	bl      Function_2254f6c
	b       branch_2257b42
@ 0x2257b3c

.thumb
branch_2257b3c: @ 2257b3c :thumb
	mov     r1, r5
	bl      Function_22591d0
.thumb
branch_2257b42: @ 2257b42 :thumb
	ldr     r4, [r4, #0x8]
	.hword  0x1e6d @ sub r5, r5, #0x1
	cmp     r4, r6
	bne     branch_2257b2c
.thumb
branch_2257b4a: @ 2257b4a :thumb
	ldr     r4, [r7, #0xc]
	add     r6, r7, #0x4
	sub     r5, #0x8
	cmp     r4, r6
	beq     branch_2257b72
.thumb
branch_2257b54: @ 2257b54 :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	ldr     r0, [r4, #0x0]
	bne     branch_2257b64
	mov     r1, r5
	bl      Function_2254f6c
	b       branch_2257b6a
@ 0x2257b64

.thumb
branch_2257b64: @ 2257b64 :thumb
	mov     r1, r5
	bl      Function_22591d0
.thumb
branch_2257b6a: @ 2257b6a :thumb
	ldr     r4, [r4, #0x8]
	.hword  0x1e6d @ sub r5, r5, #0x1
	cmp     r4, r6
	bne     branch_2257b54
.thumb
branch_2257b72: @ 2257b72 :thumb
	pop     {r3-r7,pc}
@ 0x2257b74

.thumb
Function_2257b74: @ 2257b74 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r6, r7
	ldr     r4, [r7, #0x1c]
	add     r6, #0x14
	mov     r5, r1
	cmp     r4, r6
	beq     branch_2257bb0
.thumb
branch_2257b84: @ 2257b84 :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	ldr     r0, [r4, #0x0]
	bne     branch_2257b9c
	bl      Function_2254f78
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	add     r1, r1, r5
	bl      Function_2254f6c
	b       branch_2257baa
@ 0x2257b9c

.thumb
branch_2257b9c: @ 2257b9c :thumb
	bl      Function_22591e0
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	add     r1, r1, r5
	bl      Function_22591d0
.thumb
branch_2257baa: @ 2257baa :thumb
	ldr     r4, [r4, #0x8]
	cmp     r4, r6
	bne     branch_2257b84
.thumb
branch_2257bb0: @ 2257bb0 :thumb
	ldr     r4, [r7, #0xc]
	add     r6, r7, #0x4
	cmp     r4, r6
	beq     branch_2257be4
.thumb
branch_2257bb8: @ 2257bb8 :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	ldr     r0, [r4, #0x0]
	bne     branch_2257bd0
	bl      Function_2254f78
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	add     r1, r1, r5
	bl      Function_2254f6c
	b       branch_2257bde
@ 0x2257bd0

.thumb
branch_2257bd0: @ 2257bd0 :thumb
	bl      Function_22591e0
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	add     r1, r1, r5
	bl      Function_22591d0
.thumb
branch_2257bde: @ 2257bde :thumb
	ldr     r4, [r4, #0x8]
	cmp     r4, r6
	bne     branch_2257bb8
.thumb
branch_2257be4: @ 2257be4 :thumb
	pop     {r3-r7,pc}
@ 0x2257be6


.align 2, 0


.thumb
Function_2257be8: @ 2257be8 :thumb
	push    {r3,lr}
	mov     r1, #0x12
	add     r0, sp, #0x0
	strb    r1, [r0, #0x0]
	mov     r1, #0x8f
	strb    r1, [r0, #0x1]
	mov     r1, #0x8a
	strb    r1, [r0, #0x2]
	mov     r1, #0xf6
	strb    r1, [r0, #0x3]
	add     r0, sp, #0x0
	bl      Function_2022734
	pop     {r3,pc}
@ 0x2257c04

.thumb
Function_2257c04: @ 2257c04 :thumb
	push    {r3,lr}
	mov     r3, #0x12
	add     r0, sp, #0x0
	strb    r3, [r0, #0x0]
	mov     r3, #0x8f
	strb    r3, [r0, #0x1]
	mov     r3, #0x8a
	strb    r3, [r0, #0x2]
	mov     r3, #0xf6
	strb    r3, [r0, #0x3]
	add     r0, sp, #0x0
	bl      Function_2022830
	pop     {r3,pc}
@ 0x2257c20

.thumb
Function_2257c20: @ 2257c20 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	ldr     r5, [r0, #0x1c]
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	add     r0, #0x14
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3
	str     r0, [sp, #0x4]
	cmp     r5, r0
	beq     branch_2257c56
.thumb
branch_2257c38: @ 2257c38 :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	mov     r3, r7
	bl      Function_22595ac
	cmp     r0, #0x1
	bne     branch_2257c4e
	add     sp, #0xc
	mov     r0, r5
	pop     {r4-r7,pc}
@ 0x2257c4e

.thumb
branch_2257c4e: @ 2257c4e :thumb
	ldr     r5, [r5, #0x8]
	ldr     r0, [sp, #0x4]
	cmp     r5, r0
	bne     branch_2257c38
.thumb
branch_2257c56: @ 2257c56 :thumb
	ldr     r0, [sp, #0x0]
	ldr     r5, [r0, #0xc]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x8]
	cmp     r5, r0
	beq     branch_2257c80
.thumb
branch_2257c62: @ 2257c62 :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	mov     r3, r7
	bl      Function_22595ac
	cmp     r0, #0x1
	bne     branch_2257c78
	add     sp, #0xc
	mov     r0, r5
	pop     {r4-r7,pc}
@ 0x2257c78

.thumb
branch_2257c78: @ 2257c78 :thumb
	ldr     r5, [r5, #0x8]
	ldr     r0, [sp, #0x8]
	cmp     r5, r0
	bne     branch_2257c62
.thumb
branch_2257c80: @ 2257c80 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2257c86


.align 2, 0


.thumb
Function_2257c88: @ 2257c88 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x30
	mov     r5, r0
	ldr     r0, [r5, #0x40]
	mov     r4, r1
	str     r0, [sp, #0x0]
	mov     r0, #0x19
	lsl     r1, r4, #2
	str     r0, [sp, #0x4]
	mov     r0, r1
	add     r0, #0x86
	str     r0, [sp, #0x8]
	mov     r0, r1
	add     r0, #0x87
	str     r0, [sp, #0xc]
	mov     r0, #0x88
	str     r0, [sp, #0x14]
	mov     r0, #0x10
	str     r0, [sp, #0x18]
	mov     r0, #0x2
	str     r0, [sp, #0x1c]
	mov     r0, #0x1
	str     r0, [sp, #0x20]
	mov     r0, #0xd
	str     r0, [sp, #0x24]
	mov     r0, #0x0
	add     r1, #0x88
	str     r0, [sp, #0x28]
	mov     r0, r5
	str     r1, [sp, #0x10]
	add     r0, #0x48
	add     r1, sp, #0x0
	str     r2, [sp, #0x2c]
	bl      Function_22597bc
	str     r4, [r5, #0x74]
	add     sp, #0x30
	pop     {r3-r5,pc}
@ 0x2257cd4

.thumb
Function_2257cd4: @ 2257cd4 :thumb
	ldr     r3, [pc, #0x4] @ 0x2257cdc, (=0x2259805)
	add     r0, #0x48
	bx      r3
@ 0x2257cda


.align 2


.word 0x2259805 @ 0x2257cdc
.thumb
Function_2257ce0: @ 2257ce0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x78]
	mov     r4, r1
	mov     r1, #0x0
	mov     r6, r2
	bl      Function_20080c0
	str     r0, [r4, #0x0]
	ldr     r0, [r5, #0x78]
	mov     r1, #0x1
	bl      Function_20080c0
	str     r0, [r6, #0x0]
	pop     {r4-r6,pc}
@ 0x2257cfe


.align 2, 0


.thumb
Function_2257d00: @ 2257d00 :thumb
	ldr     r0, [r0, #0x24]
	bx      lr
@ 0x2257d04

.thumb
Function_2257d04: @ 2257d04 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r7, r0
	ldr     r6, [r7, #0x1c]
	mov     r4, #0x0
	add     r7, #0x14
	str     r1, [sp, #0x0]
	str     r2, [sp, #0x4]
	mov     r5, r4
	cmp     r6, r7
	beq     branch_2257d62
.thumb
branch_2257d1a: @ 2257d1a :thumb
	mov     r0, r6
	add     r1, sp, #0xc
	add     r2, sp, #0x8
	bl      Function_2257ec8
	cmp     r4, #0x0
	bge     branch_2257d2c
	neg     r1, r4
	b       branch_2257d2e
@ 0x2257d2c

.thumb
branch_2257d2c: @ 2257d2c :thumb
	mov     r1, r4
.thumb
branch_2257d2e: @ 2257d2e :thumb
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x0
	bge     branch_2257d38
	neg     r2, r0
	b       branch_2257d3a
@ 0x2257d38

.thumb
branch_2257d38: @ 2257d38 :thumb
	mov     r2, r0
.thumb
branch_2257d3a: @ 2257d3a :thumb
	cmp     r2, r1
	ble     branch_2257d40
	mov     r4, r0
.thumb
branch_2257d40: @ 2257d40 :thumb
	cmp     r5, #0x0
	bge     branch_2257d48
	neg     r1, r5
	b       branch_2257d4a
@ 0x2257d48

.thumb
branch_2257d48: @ 2257d48 :thumb
	mov     r1, r5
.thumb
branch_2257d4a: @ 2257d4a :thumb
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x0
	bge     branch_2257d54
	neg     r2, r0
	b       branch_2257d56
@ 0x2257d54

.thumb
branch_2257d54: @ 2257d54 :thumb
	mov     r2, r0
.thumb
branch_2257d56: @ 2257d56 :thumb
	cmp     r2, r1
	ble     branch_2257d5c
	mov     r5, r0
.thumb
branch_2257d5c: @ 2257d5c :thumb
	ldr     r6, [r6, #0x8]
	cmp     r6, r7
	bne     branch_2257d1a
.thumb
branch_2257d62: @ 2257d62 :thumb
	ldr     r0, [sp, #0x0]
	str     r4, [r0, #0x0]
	ldr     r0, [sp, #0x4]
	str     r5, [r0, #0x0]
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2257d6e


.align 2, 0


.thumb
Function_2257d70: @ 2257d70 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r7, r0
	ldr     r4, [r0, #0x1c]
	add     r7, #0x14
	str     r0, [sp, #0x0]
	mov     r6, r1
	cmp     r4, r7
	beq     branch_2257dce
	asr     r0, r6, #10
	mov     r1, #0x1f
	and     r0, r1
	str     r0, [sp, #0xc]
	asr     r0, r6, #5
	and     r0, r1
	str     r0, [sp, #0x8]
	mov     r0, r6
	and     r0, r1
	str     r0, [sp, #0x4]
.thumb
branch_2257d96: @ 2257d96 :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	bne     branch_2257da8
	ldr     r0, [r4, #0x0]
	mov     r1, r6
	ldr     r0, [r0, #0x4]
	bl      Function_201529c
	b       branch_2257dc8
@ 0x2257da8

.thumb
branch_2257da8: @ 2257da8 :thumb
	ldr     r5, [r4, #0x0]
	ldr     r2, [sp, #0xc]
	ldr     r0, [r5, #0x0]
	mov     r1, #0x18
	bl      Function_2007dec
	ldr     r0, [r5, #0x0]
	ldr     r2, [sp, #0x8]
	mov     r1, #0x19
	bl      Function_2007dec
	ldr     r0, [r5, #0x0]
	ldr     r2, [sp, #0x4]
	mov     r1, #0x1a
	bl      Function_2007dec
.thumb
branch_2257dc8: @ 2257dc8 :thumb
	ldr     r4, [r4, #0x8]
	cmp     r4, r7
	bne     branch_2257d96
.thumb
branch_2257dce: @ 2257dce :thumb
	ldr     r0, [sp, #0x0]
	ldr     r4, [r0, #0xc]
	add     r5, r0, #0x4
	cmp     r4, r5
	beq     branch_2257de8
.thumb
branch_2257dd8: @ 2257dd8 :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, r6
	ldr     r0, [r0, #0x4]
	bl      Function_201529c
	ldr     r4, [r4, #0x8]
	cmp     r4, r5
	bne     branch_2257dd8
.thumb
branch_2257de8: @ 2257de8 :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2257dec

.thumb
Function_2257dec: @ 2257dec :thumb
	push    {r3-r7,lr}
	add     sp, #-0x58
	str     r0, [sp, #0xc]
	str     r2, [sp, #0x14]
	str     r1, [sp, #0x10]
	mov     r0, r1
	add     r1, sp, #0x54
	add     r2, sp, #0x50
	mov     r4, r3
	bl      Function_2259648
	ldr     r0, [sp, #0x10]
	add     r1, sp, #0x4c
	add     r2, sp, #0x48
	bl      Function_2259698
	add     r0, sp, #0x30
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x10]
	add     r1, sp, #0x44
	add     r2, sp, #0x34
	add     r3, sp, #0x40
	bl      Function_22596b0
	mov     r0, #0x76
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r5, #0x0
	str     r0, [sp, #0x20]
	ldr     r6, [sp, #0x54]
	ldr     r0, [sp, #0x4c]
	ldr     r7, [sp, #0x44]
	add     r1, r6, r0
	ldr     r0, [sp, #0x34]
	mov     r4, r5
	sub     r0, r1, r0
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x50]
	ldr     r1, [sp, #0x48]
	str     r0, [sp, #0x24]
	add     r1, r0, r1
	ldr     r0, [sp, #0x30]
	sub     r0, r1, r0
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x40]
	str     r0, [sp, #0x28]
	ldr     r0, [sp, #0xc]
	str     r0, [sp, #0x2c]
	add     r0, #0x78
	str     r0, [sp, #0x2c]
.thumb
branch_2257e50: @ 2257e50 :thumb
	str     r4, [sp, #0x0]
	add     r0, sp, #0x3c
	str     r0, [sp, #0x4]
	add     r0, sp, #0x38
	str     r0, [sp, #0x8]
	ldr     r1, [sp, #0x24]
	ldr     r0, [sp, #0x28]
	ldr     r3, [sp, #0x1c]
	add     r0, r1, r0
	ldr     r1, [sp, #0x18]
	add     r2, r6, r7
	bl      Function_22577ec
	ldr     r0, [sp, #0x2c]
	ldr     r1, [sp, #0x3c]
	ldr     r2, [sp, #0x38]
	ldr     r3, [sp, #0x20]
	bl      Function_22592f0
	.hword  0x1c64 @ add r4, r4, #0x1
	orr     r5, r0
	cmp     r4, #0x10
	blt     branch_2257e50
	cmp     r5, #0x0
	beq     branch_2257ea6
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x0
	beq     branch_2257e98
	ldr     r1, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	add     r1, #0x14
	str     r1, [sp, #0xc]
	bl      Function_2259520
	add     sp, #0x58
	pop     {r3-r7,pc}
@ 0x2257e98

.thumb
branch_2257e98: @ 2257e98 :thumb
	ldr     r1, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	ldr     r1, [r1, #0x20]
	bl      Function_2259520
	add     sp, #0x58
	pop     {r3-r7,pc}
@ 0x2257ea6

.thumb
branch_2257ea6: @ 2257ea6 :thumb
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x0
	beq     branch_2257eba
	ldr     r1, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	.hword  0x1d09 @ add r1, r1, #0x4
	bl      Function_2259520
	add     sp, #0x58
	pop     {r3-r7,pc}
@ 0x2257eba

.thumb
branch_2257eba: @ 2257eba :thumb
	ldr     r1, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	ldr     r1, [r1, #0x10]
	bl      Function_2259520
	add     sp, #0x58
	pop     {r3-r7,pc}
@ 0x2257ec8

.thumb
Function_2257ec8: @ 2257ec8 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x24
	mov     r5, r1
	mov     r4, r2
	mov     r6, r0
	add     r1, sp, #0x20
	add     r2, sp, #0x1c
	bl      Function_2259698
	mov     r0, r6
	add     r1, sp, #0x18
	add     r2, sp, #0x14
	bl      Function_2259648
	add     r0, sp, #0x4
	str     r0, [sp, #0x0]
	mov     r0, r6
	add     r1, sp, #0x10
	add     r2, sp, #0x8
	add     r3, sp, #0xc
	bl      Function_22596b0
	ldr     r0, [sp, #0x18]
	ldr     r1, [sp, #0x10]
	ldr     r3, [sp, #0xc]
	add     r2, r0, r1
	mov     r1, #0x8a
	sub     r2, r1, r2
	ldr     r1, [sp, #0x20]
	add     r1, r0, r1
	ldr     r0, [sp, #0x8]
	sub     r1, r1, r0
	ldr     r0, [sp, #0x14]
	sub     r1, #0xf6
	add     r6, r0, r3
	mov     r3, #0x12
	sub     r3, r3, r6
	ldr     r6, [sp, #0x1c]
	add     r6, r0, r6
	ldr     r0, [sp, #0x4]
	sub     r6, r6, r0
	sub     r6, #0x8f
	cmp     r2, #0x0
	ble     branch_2257f24
	str     r2, [r5, #0x0]
	b       branch_2257f32
@ 0x2257f24

.thumb
branch_2257f24: @ 2257f24 :thumb
	cmp     r1, #0x0
	ble     branch_2257f2e
	neg     r0, r1
	str     r0, [r5, #0x0]
	b       branch_2257f32
@ 0x2257f2e

.thumb
branch_2257f2e: @ 2257f2e :thumb
	mov     r0, #0x0
	str     r0, [r5, #0x0]
.thumb
branch_2257f32: @ 2257f32 :thumb
	cmp     r3, #0x0
	ble     branch_2257f3c
	add     sp, #0x24
	str     r3, [r4, #0x0]
	pop     {r3-r6,pc}
@ 0x2257f3c

.thumb
branch_2257f3c: @ 2257f3c :thumb
	cmp     r6, #0x0
	ble     branch_2257f48
	neg     r0, r6
	add     sp, #0x24
	str     r0, [r4, #0x0]
	pop     {r3-r6,pc}
@ 0x2257f48

.thumb
branch_2257f48: @ 2257f48 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	add     sp, #0x24
	pop     {r3-r6,pc}
@ 0x2257f50

.thumb
Function_2257f50: @ 2257f50 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r1, [r4, #0x0]
	mov     r5, r0
	str     r1, [r5, #0x44]
	ldr     r1, [r4, #0x4]
	str     r1, [r5, #0x48]
	ldr     r1, [r4, #0x8]
	str     r1, [r5, #0x4c]
	ldr     r1, [r4, #0xc]
	str     r1, [r5, #0x50]
	ldr     r1, [r4, #0x10]
	str     r1, [r5, #0x54]
	ldr     r1, [r4, #0x14]
	str     r1, [r5, #0x58]
	ldr     r1, [r4, #0x18]
	str     r1, [r5, #0x8]
	ldr     r1, [r4, #0x28]
	str     r1, [r5, #0x4]
	mov     r1, #0x0
	bl      Function_2258354
	mov     r0, r5
	mov     r1, r4
	bl      Function_2258470
	pop     {r3-r5,pc}
@ 0x2257f86


.align 2, 0


.thumb
Function_2257f88: @ 2257f88 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	bl      Function_22581c0
	mov     r5, r6
	mov     r4, #0x0
	add     r5, #0xc
.thumb
branch_2257f96: @ 2257f96 :thumb
	mov     r0, r5
	bl      Function_2258534
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0xc
	cmp     r4, #0x4
	blt     branch_2257f96
	mov     r0, r6
	mov     r1, #0x0
	mov     r2, #0x8c
	blx     Call_FillMemWithValue
	pop     {r4-r6,pc}
@ 0x2257fb0

.thumb
Function_2257fb0: @ 2257fb0 :thumb
	push    {r3,lr}
	cmp     r0, #0x0
	beq     branch_2257fc0
	cmp     r0, #0x1
	beq     branch_2258030
	cmp     r0, #0x2
	beq     branch_225803e
	pop     {r3,pc}
@ 0x2257fc0

.thumb
branch_2257fc0: @ 2257fc0 :thumb
	cmp     r1, #0x5
	bgt     branch_2257fc8
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2257fc8

.thumb
branch_2257fc8: @ 2257fc8 :thumb
	cmp     r1, #0xb
	bgt     branch_2257fd0
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2257fd0

.thumb
branch_2257fd0: @ 2257fd0 :thumb
	cmp     r1, #0x11
	bgt     branch_2257fd8
	mov     r0, #0x2
	pop     {r3,pc}
@ 0x2257fd8

.thumb
branch_2257fd8: @ 2257fd8 :thumb
	cmp     r1, #0x15
	bgt     branch_2257fe0
	mov     r0, #0x3
	pop     {r3,pc}
@ 0x2257fe0

.thumb
branch_2257fe0: @ 2257fe0 :thumb
	cmp     r1, #0x1c
	bgt     branch_2257fe8
	mov     r0, #0x4
	pop     {r3,pc}
@ 0x2257fe8

.thumb
branch_2257fe8: @ 2257fe8 :thumb
	cmp     r1, #0x21
	bgt     branch_2257ff0
	mov     r0, #0x5
	pop     {r3,pc}
@ 0x2257ff0

.thumb
branch_2257ff0: @ 2257ff0 :thumb
	cmp     r1, #0x26
	bgt     branch_2257ff8
	mov     r0, #0x6
	pop     {r3,pc}
@ 0x2257ff8

.thumb
branch_2257ff8: @ 2257ff8 :thumb
	cmp     r1, #0x2a
	bgt     branch_2258000
	mov     r0, #0x7
	pop     {r3,pc}
@ 0x2258000

.thumb
branch_2258000: @ 2258000 :thumb
	cmp     r1, #0x31
	bgt     branch_2258008
	mov     r0, #0x8
	pop     {r3,pc}
@ 0x2258008

.thumb
branch_2258008: @ 2258008 :thumb
	cmp     r1, #0x37
	bgt     branch_2258010
	mov     r0, #0x9
	pop     {r3,pc}
@ 0x2258010

.thumb
branch_2258010: @ 2258010 :thumb
	cmp     r1, #0x3c
	bgt     branch_2258018
	mov     r0, #0xa
	pop     {r3,pc}
@ 0x2258018

.thumb
branch_2258018: @ 2258018 :thumb
	cmp     r1, #0x47
	bgt     branch_2258020
	mov     r0, #0xb
	pop     {r3,pc}
@ 0x2258020

.thumb
branch_2258020: @ 2258020 :thumb
	cmp     r1, #0x5b
	bgt     branch_2258028
	mov     r0, #0xc
	pop     {r3,pc}
@ 0x2258028

.thumb
branch_2258028: @ 2258028 :thumb
	cmp     r1, #0x63
	bgt     branch_225804a
	mov     r0, #0xd
	pop     {r3,pc}
@ 0x2258030

.thumb
branch_2258030: @ 2258030 :thumb
	mov     r0, r2
	bl      Function_22589bc
	mov     r1, #0x9
	blx     _s32_div_f
	pop     {r3,pc}
@ 0x225803e

.thumb
branch_225803e: @ 225803e :thumb
	mov     r0, r2
	bl      Function_22589bc
	mov     r1, #0x9
	blx     _s32_div_f
.thumb
branch_225804a: @ 225804a :thumb
	pop     {r3,pc}
@ 0x225804c

.thumb
Function_225804c: @ 225804c :thumb
	push    {r3-r5,lr}
	mov     r5, r2
	mov     r4, r3
	cmp     r0, #0x0
	beq     branch_2258060
	cmp     r0, #0x1
	beq     branch_2258092
	cmp     r0, #0x2
	beq     branch_2258092
	pop     {r3-r5,pc}
@ 0x2258060

.thumb
branch_2258060: @ 2258060 :thumb
	mov     r0, #0xa
	str     r0, [r5, #0x0]
	mov     r0, #0x12
	str     r0, [r4, #0x0]
	bl      Function_201d35c
	ldr     r2, [sp, #0x10]
	mov     r1, #0x6c
	sub     r1, r1, r2
	blx     _u32_div_f
	ldr     r0, [r5, #0x0]
	add     r0, r0, r1
	str     r0, [r5, #0x0]
	bl      Function_201d35c
	ldr     r2, [sp, #0x14]
	mov     r1, #0x7d
	sub     r1, r1, r2
	blx     _u32_div_f
	ldr     r0, [r4, #0x0]
	add     r0, r0, r1
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x2258092

.thumb
branch_2258092: @ 2258092 :thumb
	ldr     r0, [sp, #0x18]
	bl      Function_22589bc
	mov     r1, r5
	mov     r2, r4
	bl      Function_2258610
	pop     {r3-r5,pc}
@ 0x22580a2


.align 2, 0


.thumb
Function_22580a4: @ 22580a4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x48
	mov     r5, r0
	ldr     r0, [r5, #0x58]
	mov     r4, r2
	str     r4, [sp, #0x40]
	str     r0, [sp, #0x28]
	ldr     r0, [r5, #0x44]
	mov     r6, r1
	mov     r1, #0x0
	str     r0, [sp, #0x2c]
	str     r1, [sp, #0x38]
	str     r1, [sp, #0x3c]
	cmp     r6, #0x0
	beq     branch_22580cc
	cmp     r6, #0x1
	beq     branch_22580d8
	cmp     r6, #0x2
	beq     branch_22580e6
	b       branch_22580f4
@ 0x22580cc

.thumb
branch_22580cc: @ 22580cc :thumb
	ldr     r0, [r5, #0x50]
	str     r4, [sp, #0xc]
	ldrb    r0, [r0, r4]
	mov     r7, r1
	str     r0, [sp, #0x44]
	b       branch_22580f8
@ 0x22580d8

.thumb
branch_22580d8: @ 22580d8 :thumb
	mov     r0, r4
	str     r0, [sp, #0xc]
	add     r0, #0x64
	str     r0, [sp, #0xc]
	add     r7, r4, #0x1
	str     r1, [sp, #0x44]
	b       branch_22580f8
@ 0x22580e6

.thumb
branch_22580e6: @ 22580e6 :thumb
	mov     r0, r4
	str     r0, [sp, #0xc]
	add     r0, #0x64
	str     r0, [sp, #0xc]
	add     r7, r4, #0x1
	str     r1, [sp, #0x44]
	b       branch_22580f8
@ 0x22580f4

.thumb
branch_22580f4: @ 22580f4 :thumb
	bl      ErrorHandling
.thumb
branch_22580f8: @ 22580f8 :thumb
	ldr     r0, [sp, #0xc]
	ldr     r1, [r5, #0x48]
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	lsl     r1, r7, #2
	str     r0, [sp, #0x30]
	ldr     r2, [r5, #0x4c]
	cmp     r0, #0x0
	ldr     r1, [r2, r1]
	str     r1, [sp, #0x34]
	bne     branch_2258112
	bl      ErrorHandling
.thumb
branch_2258112: @ 2258112 :thumb
	ldr     r0, [sp, #0x34]
	cmp     r0, #0x0
	bne     branch_225811c
	bl      ErrorHandling
.thumb
branch_225811c: @ 225811c :thumb
	ldr     r2, [r5, #0x4]
	mov     r0, r6
	mov     r1, r4
	bl      Function_2257fb0
	mov     r7, r0
	add     r0, sp, #0x28
	bl      Function_2254e20
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x8]
	ldr     r1, [sp, #0x10]
	mov     r2, r6
	bl      Function_22594c0
	mov     r1, #0xc
	mul     r1, r6
	add     r1, r5, r1
	ldr     r2, [r1, #0xc]
	lsl     r1, r7, #4
	add     r1, r2, r1
	ldr     r1, [r1, #0xc]
	str     r0, [sp, #0x14]
	bl      Function_2259520
	ldr     r0, [sp, #0x14]
	add     r1, sp, #0x1c
	add     r2, sp, #0x18
	bl      Function_2259698
	ldr     r0, [sp, #0x1c]
	mov     r1, r4
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x18]
	add     r2, sp, #0x24
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x4]
	add     r3, sp, #0x20
	str     r0, [sp, #0x8]
	mov     r0, r6
	bl      Function_225804c
	ldr     r0, [sp, #0x14]
	ldr     r1, [sp, #0x24]
	ldr     r2, [sp, #0x20]
	bl      Function_22595f8
	ldr     r1, [sp, #0x10]
	mov     r0, r5
	mov     r2, r6
	mov     r3, r7
	bl      Function_22585e8
	add     sp, #0x48
	pop     {r3-r7,pc}
@ 0x225818a


.align 2, 0


.thumb
Function_225818c: @ 225818c :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r1, #0xc
	mov     r5, r0
	mul     r1, r4
	mov     r7, r3
	add     r1, r5, r1
	mov     r6, r2
	ldr     r2, [r1, #0xc]
	lsl     r1, r6, #4
	mov     r0, r7
	add     r1, r2, r1
	bl      Function_2259520
	ldr     r1, [r7, #0x0]
	mov     r0, r5
	mov     r2, r4
	mov     r3, r6
	bl      Function_22585e8
	pop     {r3-r7,pc}
@ 0x22581b6


.align 2, 0


.thumb
Function_22581b8: @ 22581b8 :thumb
	ldr     r3, [pc, #0x0] @ 0x22581bc, (=0x2259531)
	bx      r3
@ 0x22581bc

.word Function_2259530+1 @ =0x2259531, 0x22581bc
.thumb
Function_22581c0: @ 22581c0 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r7, #0x0
.thumb
branch_22581c6: @ 22581c6 :thumb
	ldr     r0, [r5, #0x10]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_22581e2
	mov     r4, r6
.thumb
branch_22581d0: @ 22581d0 :thumb
	ldr     r0, [r5, #0xc]
	add     r0, r0, r4
	bl      Function_2259540
	ldr     r0, [r5, #0x10]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x10
	cmp     r6, r0
	blt     branch_22581d0
.thumb
branch_22581e2: @ 22581e2 :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r5, #0xc
	cmp     r7, #0x3
	blt     branch_22581c6
	pop     {r3-r7,pc}
@ 0x22581ec

.thumb
Function_22581ec: @ 22581ec :thumb
	push    {r4-r6,lr}
	mov     r5, #0x0
	mvn     r5, r5
	bl      Function_225855c
	mov     r6, r0
	ldr     r4, [r6, #0x8]
	cmp     r4, r6
	beq     branch_2258214
.thumb
branch_22581fe: @ 22581fe :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x2
	bhi     branch_225820c
	ldr     r0, [r4, #0x0]
	mov     r1, r5
	bl      Function_2254f6c
.thumb
branch_225820c: @ 225820c :thumb
	ldr     r4, [r4, #0x8]
	.hword  0x1e6d @ sub r5, r5, #0x1
	cmp     r4, r6
	bne     branch_22581fe
.thumb
branch_2258214: @ 2258214 :thumb
	pop     {r4-r6,pc}
@ 0x2258216


.align 2, 0


.thumb
Function_2258218: @ 2258218 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	mov     r6, r1
	ldr     r1, [r5, #0x3c]
	mov     r4, r2
	cmp     r1, #0x0
	bne     branch_2258250
	ldr     r1, [r5, #0x0]
	mov     r2, #0xc
	mul     r2, r1
	str     r4, [sp, #0x0]
	add     r2, r5, r2
	ldr     r2, [r2, #0x14]
	mov     r3, r6
	bl      Function_225864c
	mov     r0, #0xc
	mul     r0, r6
	str     r6, [r5, #0x0]
	add     r0, r5, r0
	str     r4, [r0, #0x14]
	mov     r0, r5
	bl      Function_22581ec
	add     sp, #0x4
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x2258250

.thumb
branch_2258250: @ 2258250 :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x2258256


.align 2, 0


.thumb
Function_2258258: @ 2258258 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x0]
	str     r2, [sp, #0x8]
	bl      Function_2258424
	mov     r7, r0
	ldr     r0, [sp, #0x4]
	mov     r1, #0xc
	mul     r1, r0
	ldr     r0, [sp, #0x0]
	mov     r4, #0x1
	add     r6, r0, r1
	ldr     r0, [r6, #0x10]
	cmp     r0, #0x1
	ble     branch_22582ba
.thumb
branch_225827a: @ 225827a :thumb
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x0
	bne     branch_225828c
	ldr     r1, [r6, #0x10]
	add     r0, r4, r7
	blx     _s32_div_f
	mov     r5, r1
	b       branch_2258294
@ 0x225828c

.thumb
branch_225828c: @ 225828c :thumb
	sub     r5, r7, r4
	bpl     branch_2258294
	ldr     r0, [r6, #0x10]
	add     r5, r5, r0
.thumb
branch_2258294: @ 2258294 :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	mov     r2, r5
	bl      Function_2258584
	ldr     r1, [r0, #0x8]
	cmp     r1, r0
	beq     branch_22582b2
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	mov     r2, r5
	bl      Function_2258218
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x22582b2

.thumb
branch_22582b2: @ 22582b2 :thumb
	ldr     r0, [r6, #0x10]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r0
	blt     branch_225827a
.thumb
branch_22582ba: @ 22582ba :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x22582c0

.thumb
Function_22582c0: @ 22582c0 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r1, #0x0
	mov     r5, r0
	mov     r6, r2
	bl      Function_22584e0
	mov     r0, #0xc
	mul     r0, r4
	str     r4, [r5, #0x0]
	add     r0, r5, r0
	str     r6, [r0, #0x14]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_22584e0
	mov     r0, r5
	bl      Function_22581ec
	pop     {r4-r6,pc}
@ 0x22582e8

.thumb
Function_22582e8: @ 22582e8 :thumb
	push    {r3,lr}
	mov     r1, #0x12
	add     r0, sp, #0x0
	strb    r1, [r0, #0x0]
	mov     r1, #0x8f
	strb    r1, [r0, #0x1]
	mov     r1, #0xa
	strb    r1, [r0, #0x2]
	mov     r1, #0x76
	strb    r1, [r0, #0x3]
	add     r0, sp, #0x0
	bl      Function_2022734
	pop     {r3,pc}
@ 0x2258304

.thumb
Function_2258304: @ 2258304 :thumb
	push    {r3,lr}
	mov     r3, #0x12
	add     r0, sp, #0x0
	strb    r3, [r0, #0x0]
	mov     r3, #0x8f
	strb    r3, [r0, #0x1]
	mov     r3, #0xa
	strb    r3, [r0, #0x2]
	mov     r3, #0x76
	strb    r3, [r0, #0x3]
	add     r0, sp, #0x0
	bl      Function_2022830
	pop     {r3,pc}
@ 0x2258320

.thumb
Function_2258320: @ 2258320 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r7, r2
	str     r3, [sp, #0x0]
	bl      Function_225855c
	mov     r5, r0
	ldr     r4, [r5, #0x8]
	cmp     r4, r5
	beq     branch_225834e
.thumb
branch_2258334: @ 2258334 :thumb
	ldr     r3, [sp, #0x0]
	mov     r0, r4
	mov     r1, r6
	mov     r2, r7
	bl      Function_22595ac
	cmp     r0, #0x1
	bne     branch_2258348
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x2258348

.thumb
branch_2258348: @ 2258348 :thumb
	ldr     r4, [r4, #0x8]
	cmp     r4, r5
	bne     branch_2258334
.thumb
branch_225834e: @ 225834e :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2258352


.align 2, 0


.thumb
Function_2258354: @ 2258354 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x30
	mov     r5, r0
	ldr     r0, [r5, #0x54]
	mov     r4, r1
	str     r0, [sp, #0x0]
	mov     r0, #0x19
	lsl     r1, r4, #1
	str     r0, [sp, #0x4]
	mov     r0, r1
	add     r0, #0x81
	str     r0, [sp, #0x8]
	mov     r0, #0x85
	str     r0, [sp, #0xc]
	mov     r0, #0x8
	str     r0, [sp, #0x14]
	mov     r0, #0x81
	str     r0, [sp, #0x18]
	mov     r0, #0x3
	str     r0, [sp, #0x1c]
	mov     r0, #0x1
	str     r0, [sp, #0x20]
	mov     r0, #0x2
	str     r0, [sp, #0x24]
	mov     r0, #0x0
	str     r0, [sp, #0x28]
	mov     r0, #0xe
	add     r1, #0x82
	str     r0, [sp, #0x2c]
	mov     r0, r5
	str     r1, [sp, #0x10]
	add     r0, #0x5c
	add     r1, sp, #0x0
	bl      Function_22597bc
	str     r4, [r5, #0x40]
	add     sp, #0x30
	pop     {r3-r5,pc}
@ 0x22583a0

.thumb
Function_22583a0: @ 22583a0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x38
	mov     r5, r0
	ldr     r0, [r5, #0x54]
	mov     r4, r1
	str     r0, [sp, #0x8]
	mov     r0, #0x19
	lsl     r1, r4, #1
	str     r0, [sp, #0xc]
	mov     r0, r1
	add     r0, #0x81
	str     r0, [sp, #0x10]
	mov     r0, #0x85
	str     r0, [sp, #0x14]
	mov     r0, #0x8
	add     r1, #0x82
	str     r0, [sp, #0x1c]
	mov     r0, #0x81
	str     r1, [sp, #0x18]
	str     r0, [sp, #0x20]
	mov     r0, #0x3
	mov     r1, #0x2
	str     r0, [sp, #0x24]
	mov     r0, #0x1
	str     r1, [sp, #0x2c]
	mov     r7, #0x0
	mov     r1, #0xe
	str     r0, [sp, #0x28]
	str     r7, [sp, #0x30]
	str     r1, [sp, #0x34]
	tst     r0, r2
	beq     branch_22583e2
	mov     r7, #0x70
.thumb
branch_22583e2: @ 22583e2 :thumb
	mov     r0, #0x2
	tst     r0, r2
	beq     branch_22583ec
	mov     r6, #0x81
	b       branch_22583ee
@ 0x22583ec

.thumb
branch_22583ec: @ 22583ec :thumb
	mov     r6, #0x0
.thumb
branch_22583ee: @ 22583ee :thumb
	ldr     r0, [sp, #0x50]
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r0, #0x5c
	add     r1, sp, #0x8
	mov     r2, r7
	mov     r3, r6
	bl      Function_22598f4
	str     r4, [r5, #0x40]
	add     sp, #0x38
	pop     {r3-r7,pc}
@ 0x2258408

.thumb
Function_2258408: @ 2258408 :thumb
	ldr     r3, [pc, #0x4] @ 0x2258410, (=0x2259805)
	add     r0, #0x5c
	bx      r3
@ 0x225840e


.align 2


.word 0x2259805 @ 0x2258410
.thumb
Function_2258414: @ 2258414 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_225841e
	bl      ErrorHandling
.thumb
branch_225841e: @ 225841e :thumb
	ldr     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x2258422


.align 2, 0


.thumb
Function_2258424: @ 2258424 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r4, r1
	cmp     r5, #0x0
	bne     branch_2258434
	bl      ErrorHandling
.thumb
branch_2258434: @ 2258434 :thumb
	mov     r0, #0xc
	mul     r0, r4
	add     r3, r5, r0
	add     r3, #0xc
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x0
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	ldr     r0, [sp, #0x8]
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x225844c

.thumb
Function_225844c: @ 225844c :thumb
	push    {r4,lr}
	mov     r4, r3
	bl      Function_2258584
	ldr     r2, [sp, #0x8]
	mov     r1, r4
	bl      Function_22596ec
	pop     {r4,pc}
@ 0x225845e


.align 2, 0


.thumb
Function_2258460: @ 2258460 :thumb
	ldr     r0, [r0, #0x3c]
	cmp     r0, #0x0
	bne     branch_225846a
	mov     r0, #0x1
	bx      lr
@ 0x225846a

.thumb
branch_225846a: @ 225846a :thumb
	mov     r0, #0x0
	bx      lr
@ 0x225846e


.align 2, 0


.thumb
Function_2258470: @ 2258470 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r1, [r4, #0x1c]
	mov     r5, r0
	add     r0, #0xc
	bl      Function_22584f0
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	ldr     r0, [r5, #0xc]
	mov     r1, #0x1
	bl      Function_22584ac
	mov     r0, r5
	ldr     r1, [r4, #0x20]
	add     r0, #0x18
	bl      Function_22584f0
	mov     r0, r5
	ldr     r1, [r4, #0x24]
	add     r0, #0x24
	bl      Function_22584f0
	add     r5, #0x30
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_22584f0
	pop     {r3-r5,pc}
@ 0x22584aa


.align 2, 0


.thumb
Function_22584ac: @ 22584ac :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r4, [r5, #0x8]
	mov     r6, r1
	cmp     r4, r5
	beq     branch_22584cc
.thumb
branch_22584b8: @ 22584b8 :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x2
	bhi     branch_22584c6
	ldr     r0, [r4, #0x0]
	mov     r1, r6
	bl      Function_2254f60
.thumb
branch_22584c6: @ 22584c6 :thumb
	ldr     r4, [r4, #0x8]
	cmp     r4, r5
	bne     branch_22584b8
.thumb
branch_22584cc: @ 22584cc :thumb
	pop     {r4-r6,pc}
@ 0x22584ce


.align 2, 0


.thumb
Function_22584d0: @ 22584d0 :thumb
	push    {r4,lr}
	mov     r4, r3
	bl      Function_2258584
	mov     r1, r4
	bl      Function_22584ac
	pop     {r4,pc}
@ 0x22584e0

.thumb
Function_22584e0: @ 22584e0 :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_225855c
	mov     r1, r4
	bl      Function_22584ac
	pop     {r4,pc}
@ 0x22584f0

.thumb
Function_22584f0: @ 22584f0 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, #0xe
	lsl     r1, r4, #4
	bl      malloc
	str     r0, [r5, #0x0]
	str     r4, [r5, #0x4]
	mov     r6, #0x0
	str     r6, [r5, #0x8]
	ldr     r0, [r5, #0x4]
	cmp     r0, #0x0
	ble     branch_2258530
	mov     r4, r6
	mov     r7, r6
.thumb
branch_2258510: @ 2258510 :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, r7
	add     r0, r0, r4
	str     r0, [r0, #0x8]
	ldr     r0, [r5, #0x0]
	add     r0, r0, r4
	str     r0, [r0, #0xc]
	ldr     r0, [r5, #0x0]
	add     r0, r0, r4
	bl      Function_22584ac
	ldr     r0, [r5, #0x4]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x10
	cmp     r6, r0
	blt     branch_2258510
.thumb
branch_2258530: @ 2258530 :thumb
	pop     {r3-r7,pc}
@ 0x2258532


.align 2, 0


.thumb
Function_2258534: @ 2258534 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      free
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	strb    r0, [r4, #0x0]
	strb    r0, [r4, #0x1]
	strb    r0, [r4, #0x2]
	strb    r0, [r4, #0x3]
	strb    r0, [r4, #0x4]
	strb    r0, [r4, #0x5]
	strb    r0, [r4, #0x6]
	strb    r0, [r4, #0x7]
	strb    r0, [r4, #0x8]
	strb    r0, [r4, #0x9]
	strb    r0, [r4, #0xa]
	strb    r0, [r4, #0xb]
	pop     {r4,pc}
@ 0x225855c

.thumb
Function_225855c: @ 225855c :thumb
	push    {r3}
	add     sp, #-0xc
	ldr     r2, [r0, #0x0]
	mov     r1, #0xc
	mul     r1, r2
	add     r3, r0, r1
	add     r3, #0xc
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x0
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x0]
	lsl     r0, r0, #4
	add     r0, r1, r0
	add     sp, #0xc
	pop     {r3}
	bx      lr
@ 0x2258582


.align 2, 0


.thumb
Function_2258584: @ 2258584 :thumb
	push    {r4}
	add     sp, #-0xc
	mov     r3, #0xc
	mul     r3, r1
	add     r4, r0, r3
	add     r4, #0xc
	ldmia   r4!, {r0,r1}
	add     r3, sp, #0x0
	stmia   r3!, {r0,r1}
	ldr     r0, [r4, #0x0]
	str     r0, [r3, #0x0]
	ldr     r1, [sp, #0x0]
	lsl     r0, r2, #4
	add     r0, r1, r0
	add     sp, #0xc
	pop     {r4}
	bx      lr
@ 0x22585a6


.align 2, 0


.thumb
Function_22585a8: @ 22585a8 :thumb
	push    {r4,lr}
	mov     r4, #0x0
	bl      Function_2258584
	ldr     r1, [r0, #0x8]
	cmp     r1, r0
	beq     branch_22585be
.thumb
branch_22585b6: @ 22585b6 :thumb
	ldr     r1, [r1, #0x8]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r1, r0
	bne     branch_22585b6
.thumb
branch_22585be: @ 22585be :thumb
	mov     r0, r4
	pop     {r4,pc}
@ 0x22585c2


.align 2, 0


.thumb
Function_22585c4: @ 22585c4 :thumb
	push    {r3-r5,lr}
	mov     r5, r3
	mov     r4, #0x0
	bl      Function_2258584
	ldr     r1, [r0, #0x8]
	cmp     r1, r0
	beq     branch_22585e4
.thumb
branch_22585d4: @ 22585d4 :thumb
	cmp     r4, r5
	bne     branch_22585dc
	mov     r0, r1
	pop     {r3-r5,pc}
@ 0x22585dc

.thumb
branch_22585dc: @ 22585dc :thumb
	ldr     r1, [r1, #0x8]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r1, r0
	bne     branch_22585d4
.thumb
branch_22585e4: @ 22585e4 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22585e8

.thumb
Function_22585e8: @ 22585e8 :thumb
	push    {r4,lr}
	ldr     r4, [r0, #0x0]
	cmp     r4, r2
	bne     branch_22585fc
	mov     r4, #0xc
	mul     r4, r2
	add     r0, r0, r4
	ldr     r0, [r0, #0x14]
	cmp     r3, r0
	beq     branch_2258606
.thumb
branch_22585fc: @ 22585fc :thumb
	mov     r0, r1
	mov     r1, #0x0
	bl      Function_2254f60
	pop     {r4,pc}
@ 0x2258606

.thumb
branch_2258606: @ 2258606 :thumb
	mov     r0, r1
	mov     r1, #0x1
	bl      Function_2254f60
	pop     {r4,pc}
@ 0x2258610

.thumb
Function_2258610: @ 2258610 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r1, #0x9
	mov     r4, r2
	blx     _s32_div_f
	mov     r7, r1
	mov     r0, r7
	mov     r1, #0x3
	blx     _s32_div_f
	mov     r6, r0
	mov     r0, r7
	mov     r1, #0x3
	blx     _s32_div_f
	add     r0, r6, #0x1
	lsl     r2, r0, #3
	lsl     r0, r6, #5
	add     r0, r2, r0
	add     r0, #0x10
	str     r0, [r4, #0x0]
	add     r0, r1, #0x1
	lsl     r2, r0, #3
	mov     r0, #0x18
	mul     r0, r1
	add     r0, r2, r0
	add     r0, #0x8
	str     r0, [r5, #0x0]
	pop     {r3-r7,pc}
@ 0x225864c

.thumb
Function_225864c: @ 225864c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r7, r2
	str     r3, [sp, #0x0]
	ldr     r0, [pc, #0x68] @ 0x22586c0, (=0x22586c5)
	mov     r1, #0x30
	mov     r2, #0x0
	mov     r3, #0xd
	bl      Function_200679c
	bl      Function_201ced0
	mov     r4, r0
	str     r5, [r4, #0x0]
	str     r6, [r4, #0x4]
	ldr     r0, [sp, #0x0]
	str     r7, [r4, #0x8]
	str     r0, [r4, #0xc]
	ldr     r0, [sp, #0x18]
	mov     r1, r6
	str     r0, [r4, #0x10]
	mov     r0, #0x0
	str     r0, [r4, #0x1c]
	mov     r0, r5
	mov     r2, r7
	bl      Function_22585a8
	str     r0, [r4, #0x20]
	ldr     r1, [sp, #0x0]
	ldr     r2, [sp, #0x18]
	mov     r0, r5
	bl      Function_22585a8
	str     r0, [r4, #0x24]
	ldr     r1, [r4, #0x20]
	add     r2, r1, r0
	mov     r1, #0xc
	mov     r0, #0xd
	mul     r1, r2
	str     r2, [r4, #0x2c]
	bl      malloc
	str     r0, [r4, #0x28]
	cmp     r0, #0x0
	bne     branch_22586ac
	bl      ErrorHandling
.thumb
branch_22586ac: @ 22586ac :thumb
	ldr     r3, [r4, #0x2c]
	mov     r2, #0xc
	ldr     r0, [r4, #0x28]
	mov     r1, #0x0
	mul     r2, r3
	blx     Call_FillMemWithValue
	mov     r0, #0x1
	str     r0, [r5, #0x3c]
	pop     {r3-r7,pc}
@ 0x22586c0

.word 0x22586c5 @ 0x22586c0
.thumb
Function_22586c4: @ 22586c4 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x1c]
	cmp     r0, #0x4
	bls     branch_22586d4
	b       branch_225881c
@ 0x22586d4

.thumb
branch_22586d4: @ 22586d4 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22586e0

Jumppoints_22586e0:
.hword branch_22586ea - Jumppoints_22586e0 - 2
.hword branch_225873e - Jumppoints_22586e0 - 2
.hword branch_225878a - Jumppoints_22586e0 - 2
.hword branch_22587d0 - Jumppoints_22586e0 - 2
.hword branch_22587e8 - Jumppoints_22586e0 - 2
.thumb
branch_22586ea: @ 22586ea :thumb
	mov     r0, #0x83
	mvn     r0, r0
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	ldr     r1, [r4, #0xc]
	ldr     r2, [r4, #0x10]
	mov     r3, #0x0
	bl      Function_225844c
	ldr     r0, [r4, #0x0]
	ldr     r1, [r4, #0xc]
	ldr     r2, [r4, #0x10]
	mov     r3, #0x1
	bl      Function_22584d0
	mov     r0, #0x0
	str     r0, [r4, #0x14]
	mov     r1, r4
	ldr     r0, [r4, #0x0]
	add     r1, #0x14
	str     r1, [sp, #0x0]
	ldr     r1, [r0, #0x40]
	.hword  0x1c49 @ add r1, r1, #0x1
	lsr     r3, r1, #31
	lsl     r2, r1, #31
	sub     r2, r2, r3
	mov     r1, #0x1f
	ror     r2, r1
	add     r1, r3, r2
	mov     r2, #0x2
	mov     r3, #0x5
	bl      Function_22583a0
	ldr     r0, [r4, #0x20]
	mov     r1, #0x1
	bl      Function_22588d8
	str     r0, [r4, #0x18]
	ldr     r0, [r4, #0x1c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x1c]
	b       branch_2258820
@ 0x225873e

.thumb
branch_225873e: @ 225873e :thumb
	ldr     r0, [r4, #0x18]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_2258772
	mov     r5, r4
	add     r5, #0x20
.thumb
branch_225874a: @ 225874a :thumb
	ldr     r0, [r4, #0x20]
	.hword  0x1e40 @ sub r0, r0, #0x1
	bmi     branch_225876a
	ldr     r0, [r5, #0x0]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r5, #0x0]
	ldr     r0, [r4, #0x0]
	ldr     r1, [r4, #0x4]
	ldr     r2, [r4, #0x8]
	ldr     r3, [r4, #0x20]
	bl      Function_22585c4
	ldr     r1, [r4, #0x28]
	ldr     r2, [r4, #0x2c]
	bl      Function_225882c
.thumb
branch_225876a: @ 225876a :thumb
	ldr     r0, [r4, #0x18]
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r0
	blt     branch_225874a
.thumb
branch_2258772: @ 2258772 :thumb
	ldr     r0, [r4, #0x20]
	cmp     r0, #0x0
	bne     branch_2258820
	ldr     r0, [r4, #0x24]
	mov     r1, #0x2
	bl      Function_22588d8
	str     r0, [r4, #0x18]
	ldr     r0, [r4, #0x1c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x1c]
	b       branch_2258820
@ 0x225878a

.thumb
branch_225878a: @ 225878a :thumb
	ldr     r0, [r4, #0x18]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_22587be
	mov     r5, r4
	add     r5, #0x24
.thumb
branch_2258796: @ 2258796 :thumb
	ldr     r0, [r4, #0x24]
	.hword  0x1e40 @ sub r0, r0, #0x1
	bmi     branch_22587b6
	ldr     r0, [r5, #0x0]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r5, #0x0]
	ldr     r0, [r4, #0x0]
	ldr     r1, [r4, #0xc]
	ldr     r2, [r4, #0x10]
	ldr     r3, [r4, #0x24]
	bl      Function_22585c4
	ldr     r1, [r4, #0x28]
	ldr     r2, [r4, #0x2c]
	bl      Function_225882c
.thumb
branch_22587b6: @ 22587b6 :thumb
	ldr     r0, [r4, #0x18]
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r0
	blt     branch_2258796
.thumb
branch_22587be: @ 22587be :thumb
	ldr     r0, [r4, #0x24]
	cmp     r0, #0x0
	bne     branch_2258820
	ldr     r0, [r4, #0x1c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x1c]
	mov     r0, #0x0
	str     r0, [r4, #0x18]
	b       branch_2258820
@ 0x22587d0

.thumb
branch_22587d0: @ 22587d0 :thumb
	ldr     r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
	cmp     r0, #0x3
	ble     branch_2258820
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x0
	beq     branch_2258820
	ldr     r0, [r4, #0x1c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x1c]
	b       branch_2258820
@ 0x22587e8

.thumb
branch_22587e8: @ 22587e8 :thumb
	ldr     r0, [r4, #0x0]
	ldr     r1, [r4, #0x4]
	ldr     r2, [r4, #0x8]
	mov     r3, #0x0
	bl      Function_22584d0
	mov     r0, #0x83
	mvn     r0, r0
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	ldr     r1, [r4, #0x4]
	ldr     r2, [r4, #0x8]
	mov     r3, #0x0
	bl      Function_225844c
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	str     r1, [r0, #0x3c]
	ldr     r0, [r4, #0x28]
	bl      free
	mov     r0, r5
	bl      Function_20067d0
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x225881c

.thumb
branch_225881c: @ 225881c :thumb
	bl      ErrorHandling
.thumb
branch_2258820: @ 2258820 :thumb
	ldr     r0, [r4, #0x28]
	ldr     r1, [r4, #0x2c]
	bl      Function_225886c
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x225882c

.thumb
Function_225882c: @ 225882c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r1
	mov     r1, r2
	bl      Function_2258844
	str     r4, [r0, #0x0]
	mov     r1, #0x3
	str     r1, [r0, #0x4]
	mov     r1, #0x2c
	str     r1, [r0, #0x8]
	pop     {r4,pc}
@ 0x2258844

.thumb
Function_2258844: @ 2258844 :thumb
	push    {r3,r4}
	mov     r3, #0x0
	cmp     r1, #0x0
	ble     branch_2258866
	mov     r4, r0
.thumb
branch_225884e: @ 225884e :thumb
	ldr     r2, [r4, #0x0]
	cmp     r2, #0x0
	bne     branch_225885e
	mov     r1, #0xc
	mul     r1, r3
	add     r0, r0, r1
	pop     {r3,r4}
	bx      lr
@ 0x225885e

.thumb
branch_225885e: @ 225885e :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	add     r4, #0xc
	cmp     r3, r1
	blt     branch_225884e
.thumb
branch_2258866: @ 2258866 :thumb
	mov     r0, #0x0
	pop     {r3,r4}
	bx      lr
@ 0x225886c

.thumb
Function_225886c: @ 225886c :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r5, r0
	mov     r4, #0x0
	cmp     r6, #0x0
	ble     branch_225888c
.thumb
branch_2258878: @ 2258878 :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_2258884
	mov     r0, r5
	bl      Function_2258890
.thumb
branch_2258884: @ 2258884 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0xc
	cmp     r4, r6
	blt     branch_2258878
.thumb
branch_225888c: @ 225888c :thumb
	pop     {r4-r6,pc}
@ 0x225888e


.align 2, 0


.thumb
Function_2258890: @ 2258890 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	add     r1, sp, #0x4
	add     r2, sp, #0x0
	bl      Function_2259648
	ldr     r1, [sp, #0x0]
	ldr     r0, [r4, #0x8]
	add     r2, r1, r0
	str     r2, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	ldr     r1, [sp, #0x4]
	bl      Function_22595f8
	ldr     r0, [r4, #0x4]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x4]
	cmp     r0, #0x0
	bgt     branch_22588d4
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	strb    r0, [r4, #0x1]
	strb    r0, [r4, #0x2]
	strb    r0, [r4, #0x3]
	strb    r0, [r4, #0x4]
	strb    r0, [r4, #0x5]
	strb    r0, [r4, #0x6]
	strb    r0, [r4, #0x7]
	strb    r0, [r4, #0x8]
	strb    r0, [r4, #0x9]
	strb    r0, [r4, #0xa]
	strb    r0, [r4, #0xb]
.thumb
branch_22588d4: @ 22588d4 :thumb
	add     sp, #0x8
	pop     {r4,pc}
@ 0x22588d8

.thumb
Function_22588d8: @ 22588d8 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	blx     _s32_div_f
	sub     r0, r4, r1
	add     r0, r5, r0
	mov     r1, r4
	blx     _s32_div_f
	pop     {r3-r5,pc}
@ 0x22588ee


.align 2, 0


.thumb
Function_22588f0: @ 22588f0 :thumb
	mov     r3, r0
	mov     r2, #0x1c
	mov     r1, #0x0
.thumb
branch_22588f6: @ 22588f6 :thumb
	strb    r1, [r3, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_22588f6
	ldr     r1, [pc, #0x8] @ 0x2258908, (=0x2258949)
	str     r1, [r0, #0x4]
	str     r1, [r0, #0x8]
	str     r1, [r0, #0xc]
	bx      lr
@ 0x2258908

.word Function_2258948+1 @ =0x2258949, 0x2258908
.thumb
Function_225890c: @ 225890c :thumb
	push    {r4,lr}
	ldr     r1, [pc, #0x34] @ 0x2258944, (=0x21bf6bc)
	mov     r4, r0
	ldrh    r2, [r1, #0x20]
	cmp     r2, #0x0
	beq     branch_225891e
	ldr     r1, [r4, #0x4]
	blx     r1
	b       branch_2258934
@ 0x225891e

.thumb
branch_225891e: @ 225891e :thumb
	ldrh    r1, [r1, #0x22]
	cmp     r1, #0x0
	beq     branch_225892a
	ldr     r1, [r4, #0xc]
	blx     r1
	b       branch_2258934
@ 0x225892a

.thumb
branch_225892a: @ 225892a :thumb
	ldrb    r1, [r4, #0x18]
	cmp     r1, #0x0
	beq     branch_2258934
	ldr     r1, [r4, #0x8]
	blx     r1
.thumb
branch_2258934: @ 2258934 :thumb
	ldr     r0, [pc, #0xc] @ 0x2258944, (=0x21bf6bc)
	ldrh    r1, [r0, #0x1c]
	strh    r1, [r4, #0x14]
	ldrh    r1, [r0, #0x1e]
	strh    r1, [r4, #0x16]
	ldrh    r0, [r0, #0x22]
	strb    r0, [r4, #0x18]
	pop     {r4,pc}
@ 0x2258944

.word 0x21bf6bc @ 0x2258944
.thumb
Function_2258948: @ 2258948 :thumb
	bx      lr
@ 0x225894a


.align 2, 0


.thumb
Function_225894c: @ 225894c :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	mov     r6, r0
	mov     r4, #0x0
	mov     r5, r7
.thumb
branch_2258956: @ 2258956 :thumb
	mov     r0, r6
	mov     r1, r4
	bl      Function_2029d94
	.hword  0x1c64 @ add r4, r4, #0x1
	stmia   r5!, {r0}
	cmp     r4, #0x64
	blt     branch_2258956
	mov     r0, #0x19
	mov     r3, #0x0
	mov     r2, r7
	mov     r1, #0x12
	lsl     r0, r0, #4
.thumb
branch_2258970: @ 2258970 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	str     r1, [r2, r0]
	.hword  0x1d12 @ add r2, r2, #0x4
	cmp     r3, #0x12
	blt     branch_2258970
	mov     r5, #0x19
	mov     r4, #0x0
	lsl     r5, r5, #4
.thumb
branch_2258980: @ 2258980 :thumb
	mov     r0, r6
	mov     r1, r4
	bl      Function_2029dd4
	cmp     r0, #0x12
	beq     branch_2258992
	lsl     r0, r0, #2
	add     r0, r7, r0
	str     r4, [r0, r5]
.thumb
branch_2258992: @ 2258992 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x12
	blt     branch_2258980
	pop     {r3-r7,pc}
@ 0x225899a


.align 2, 0


.thumb
Function_225899c: @ 225899c :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r0
	cmp     r5, #0x64
	bcc     branch_22589aa
	bl      ErrorHandling
.thumb
branch_22589aa: @ 22589aa :thumb
	lsl     r0, r5, #2
	ldr     r0, [r4, r0]
	pop     {r3-r5,pc}
@ 0x22589b0

.thumb
Function_22589b0: @ 22589b0 :thumb
	lsl     r1, r1, #2
	add     r1, r0, r1
	mov     r0, #0x19
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	bx      lr
@ 0x22589bc

.thumb
Function_22589bc: @ 22589bc :thumb
	push    {r3,r4}
	mov     r2, #0x19
	mov     r4, #0x0
	lsl     r2, r2, #4
.thumb
branch_22589c4: @ 22589c4 :thumb
	ldr     r3, [r0, r2]
	cmp     r1, r3
	bne     branch_22589d0
	mov     r0, r4
	pop     {r3,r4}
	bx      lr
@ 0x22589d0

.thumb
branch_22589d0: @ 22589d0 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	cmp     r4, #0x12
	blt     branch_22589c4
	mov     r0, r4
	pop     {r3,r4}
	bx      lr
@ 0x22589de


.align 2, 0


.thumb
Function_22589e0: @ 22589e0 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3
	bl      Function_22588f0
	mov     r0, #0xd
	mov     r1, #0x34
	bl      malloc
	str     r0, [r5, #0x0]
	mov     r1, #0x0
	mov     r2, #0x34
	blx     Call_FillMemWithValue
	ldr     r1, [r5, #0x0]
	ldr     r0, [sp, #0x18]
	str     r4, [r1, #0x4]
	str     r6, [r1, #0x8]
	str     r7, [r1, #0x0]
	str     r0, [r1, #0xc]
	ldr     r0, [sp, #0x1c]
	str     r0, [r1, #0x2c]
	ldr     r0, [pc, #0x10] @ 0x2258a24, (=0x2258a49)
	str     r0, [r5, #0x4]
	ldr     r0, [pc, #0x10] @ 0x2258a28, (=0x2258bb9)
	str     r0, [r5, #0x8]
	ldr     r0, [pc, #0x10] @ 0x2258a2c, (=0x2258d4d)
	str     r0, [r5, #0xc]
	ldr     r0, [pc, #0x10] @ 0x2258a30, (=0x2258a35)
	str     r0, [r5, #0x10]
	pop     {r3-r7,pc}
@ 0x2258a22


.align 2


.word 0x2258a49 @ 0x2258a24
.word 0x2258bb9 @ 0x2258a28
.word 0x2258d4d @ 0x2258a2c
.word 0x2258a35 @ 0x2258a30
.thumb
Function_2258a34: @ 2258a34 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      free
	mov     r0, r4
	bl      Function_22588f0
	pop     {r4,pc}
@ 0x2258a46


.align 2, 0


.thumb
Function_2258a48: @ 2258a48 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r4, [r5, #0x0]
	ldr     r0, [r4, #0x4]
	bl      Function_2257be8
	cmp     r0, #0x0
	beq     branch_2258aca
	ldr     r3, [r4, #0x0]
	ldr     r0, [r4, #0x4]
	ldr     r3, [r3, #0x38]
	add     r1, sp, #0xc
	add     r2, sp, #0x8
	bl      Function_2257c20
	mov     r6, r0
	beq     branch_2258a7a
	ldr     r0, [r6, #0x4]
	cmp     r0, #0x3
	bne     branch_2258a7a
	ldr     r0, [r4, #0x2c]
	cmp     r0, #0x0
	bne     branch_2258a7a
	mov     r6, #0x0
.thumb
branch_2258a7a: @ 2258a7a :thumb
	cmp     r6, #0x0
	beq     branch_2258b06
	ldr     r0, [r6, #0x4]
	cmp     r0, #0x0
	bne     branch_2258a90
	ldr     r0, [r4, #0x4]
	mov     r1, r6
	bl      Function_2257a80
	mov     r7, #0x0
	b       branch_2258aac
@ 0x2258a90

.thumb
branch_2258a90: @ 2258a90 :thumb
	mov     r0, r6
	bl      Function_22579e8
	ldr     r0, [r6, #0x0]
	bl      Function_22591e0
	mov     r1, r4
	mov     r2, r4
	mov     r7, r0
	mov     r0, r6
	add     r1, #0x24
	add     r2, #0x28
	bl      Function_2259648
.thumb
branch_2258aac: @ 2258aac :thumb
	ldr     r0, [r4, #0x4]
	bl      Function_2257b10
	ldr     r0, [sp, #0x8]
	mov     r1, r6
	str     r0, [sp, #0x0]
	str     r7, [sp, #0x4]
	ldr     r3, [sp, #0xc]
	mov     r0, r4
	mov     r2, #0x1
	bl      Function_2258e88
	bl      Function_2255390
	b       branch_2258b06
@ 0x2258aca

.thumb
branch_2258aca: @ 2258aca :thumb
	ldr     r0, [r4, #0x8]
	bl      Function_22582e8
	cmp     r0, #0x0
	beq     branch_2258b06
	ldr     r3, [r4, #0x0]
	ldr     r0, [r4, #0x8]
	ldr     r3, [r3, #0x38]
	add     r1, sp, #0xc
	add     r2, sp, #0x8
	bl      Function_2258320
	mov     r6, r0
	beq     branch_2258b06
	bl      Function_22581b8
	ldr     r0, [r4, #0x8]
	bl      Function_22581ec
	ldr     r0, [sp, #0x8]
	mov     r2, #0x0
	str     r0, [sp, #0x0]
	str     r2, [sp, #0x4]
	ldr     r3, [sp, #0xc]
	mov     r0, r4
	mov     r1, r6
	bl      Function_2258e88
	bl      Function_2255390
.thumb
branch_2258b06: @ 2258b06 :thumb
	ldr     r1, [r4, #0x10]
	cmp     r1, #0x0
	beq     branch_2258b50
	ldr     r1, [r1, #0x4]
	ldr     r0, [pc, #0x44] @ 0x2258b54, (=0x5eb)
	cmp     r1, #0x0
	beq     branch_2258b1e
	cmp     r1, #0x1
	beq     branch_2258b28
	cmp     r1, #0x3
	beq     branch_2258b3a
	b       branch_2258b42
@ 0x2258b1e

.thumb
branch_2258b1e: @ 2258b1e :thumb
	ldr     r1, [pc, #0x38] @ 0x2258b58, (=0x2258bb9)
	str     r1, [r5, #0x8]
	ldr     r1, [pc, #0x38] @ 0x2258b5c, (=0x2258d4d)
	str     r1, [r5, #0xc]
	b       branch_2258b42
@ 0x2258b28

.thumb
branch_2258b28: @ 2258b28 :thumb
	ldr     r0, [pc, #0x34] @ 0x2258b60, (=0x2258b79)
	str     r0, [r5, #0x8]
	ldr     r0, [pc, #0x34] @ 0x2258b64, (=0x2258b75)
	str     r0, [r5, #0xc]
	mov     r0, r5
	bl      Function_2258e5c
	ldr     r0, [pc, #0x30] @ 0x2258b68, (=0x67e)
	b       branch_2258b42
@ 0x2258b3a

.thumb
branch_2258b3a: @ 2258b3a :thumb
	ldr     r1, [pc, #0x30] @ 0x2258b6c, (=0x2258d7d)
	str     r1, [r5, #0x8]
	ldr     r1, [pc, #0x30] @ 0x2258b70, (=0x2258dad)
	str     r1, [r5, #0xc]
.thumb
branch_2258b42: @ 2258b42 :thumb
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_2005748
	mov     r0, r4
	bl      Function_2259040
.thumb
branch_2258b50: @ 2258b50 :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2258b54

.word 0x5eb @ 0x2258b54
.word 0x2258bb9 @ 0x2258b58
.word 0x2258d4d @ 0x2258b5c
.word 0x2258b79 @ 0x2258b60
.word Function_2258b74+1 @ =0x2258b75, 0x2258b64
.word 0x67e @ 0x2258b68
.word 0x2258d7d @ 0x2258b6c
.word 0x2258dad @ 0x2258b70
.thumb
Function_2258b74: @ 2258b74 :thumb
	bx      lr
@ 0x2258b76


.align 2, 0


.thumb
Function_2258b78: @ 2258b78 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	ldr     r4, [r0, #0x0]
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x0
	beq     branch_2258bb2
	ldr     r0, [r0, #0x4]
	cmp     r0, #0x1
	beq     branch_2258b8e
	bl      ErrorHandling
.thumb
branch_2258b8e: @ 2258b8e :thumb
	ldr     r0, [r4, #0x10]
	mov     r2, #0x1c
	ldr     r0, [r0, #0x4]
	mov     r3, #0x1e
	str     r0, [sp, #0x0]
	mov     r0, r4
	add     r0, #0x21
	ldrb    r0, [r0, #0x0]
	mov     r1, #0x4
	str     r0, [sp, #0x4]
	ldsh    r2, [r4, r2]
	ldsh    r3, [r4, r3]
	mov     r0, r4
	bl      Function_2258f4c
	mov     r0, r4
	bl      Function_2258ee4
.thumb
branch_2258bb2: @ 2258bb2 :thumb
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2258bb6


.align 2, 0


.thumb
Function_2258bb8: @ 2258bb8 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x28
	mov     r6, r0
	ldr     r4, [r6, #0x0]
	ldr     r1, [r4, #0x10]
	cmp     r1, #0x0
	bne     branch_2258bc8
	b       branch_2258d36
@ 0x2258bc8

.thumb
branch_2258bc8: @ 2258bc8 :thumb
	add     r1, sp, #0x18
	str     r1, [sp, #0x0]
	add     r1, sp, #0x24
	add     r2, sp, #0x20
	add     r3, sp, #0x1c
	bl      Function_2258f38
	ldr     r0, [r4, #0x4]
	ldr     r1, [sp, #0x1c]
	ldr     r2, [sp, #0x24]
	bl      Function_2257c04
	mov     r5, r0
	ldr     r0, [r4, #0x4]
	ldr     r1, [sp, #0x18]
	ldr     r2, [sp, #0x24]
	bl      Function_2257c04
	add     r5, r5, r0
	ldr     r0, [r4, #0x4]
	ldr     r1, [sp, #0x1c]
	ldr     r2, [sp, #0x20]
	bl      Function_2257c04
	add     r5, r5, r0
	ldr     r0, [r4, #0x4]
	ldr     r1, [sp, #0x18]
	ldr     r2, [sp, #0x20]
	bl      Function_2257c04
	add     r0, r5, r0
	cmp     r0, #0x4
	blt     branch_2258c6a
	ldr     r2, [r4, #0x0]
	ldr     r0, [r4, #0x4]
	ldr     r1, [r4, #0x10]
	ldr     r2, [r2, #0x38]
	bl      Function_2257a5c
	cmp     r0, #0x0
	bne     branch_2258c54
	mov     r0, #0x1c
	ldsh    r0, [r4, r0]
	str     r0, [sp, #0xc]
	mov     r0, #0x1e
	ldsh    r0, [r4, r0]
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x114] @ 0x2258d3c, (=0x683)
	bl      Function_2005748
	ldr     r0, [r4, #0xc]
	ldr     r2, [pc, #0x110] @ 0x2258d40, (=0x181)
	mov     r1, #0x1a
	mov     r3, #0x3
	bl      Function_225a628
	ldr     r0, [r4, #0x10]
	mov     r1, #0x4
	ldr     r0, [r0, #0x4]
	str     r0, [sp, #0x0]
	mov     r0, r4
	add     r0, #0x21
	ldrb    r0, [r0, #0x0]
	str     r0, [sp, #0x4]
	ldr     r2, [sp, #0xc]
	ldr     r3, [sp, #0x8]
	mov     r0, r4
	bl      Function_2258f4c
	b       branch_2258d30
@ 0x2258c54

.thumb
branch_2258c54: @ 2258c54 :thumb
	ldr     r0, [r4, #0x4]
	bl      Function_2257b10
	bl      Function_2255360
	mov     r0, #0x0
	str     r0, [r4, #0x30]
	ldr     r0, [pc, #0xe0] @ 0x2258d44, (=0x5ea)
	bl      Function_2005748
	b       branch_2258d30
@ 0x2258c6a

.thumb
branch_2258c6a: @ 2258c6a :thumb
	ldr     r0, [r4, #0x10]
	add     r1, sp, #0x24
	ldr     r5, [r0, #0x0]
	add     r0, sp, #0x18
	str     r0, [sp, #0x0]
	mov     r0, r6
	add     r2, sp, #0x20
	add     r3, sp, #0x1c
	bl      Function_2258ef8
	ldr     r0, [r4, #0x8]
	ldr     r1, [sp, #0x1c]
	ldr     r2, [sp, #0x24]
	bl      Function_2258304
	mov     r6, r0
	ldr     r0, [r4, #0x8]
	ldr     r1, [sp, #0x18]
	ldr     r2, [sp, #0x20]
	bl      Function_2258304
	add     r0, r6, r0
	cmp     r0, #0x2
	bge     branch_2258ce8
	mov     r0, r4
	add     r0, #0x20
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_2258cd4
	ldr     r0, [r4, #0x10]
	add     r1, sp, #0x14
	add     r2, sp, #0x10
	bl      Function_2259698
	bl      Function_201d35c
	ldr     r2, [sp, #0x14]
	mov     r1, #0x6c
	sub     r1, r1, r2
	blx     _u32_div_f
	add     r1, #0xa
	str     r1, [sp, #0xc]
	bl      Function_201d35c
	ldr     r2, [sp, #0x10]
	mov     r1, #0x7d
	sub     r1, r1, r2
	blx     _u32_div_f
	add     r1, #0x12
	str     r1, [sp, #0x8]
	b       branch_2258ce0
@ 0x2258cd4

.thumb
branch_2258cd4: @ 2258cd4 :thumb
	mov     r0, #0x1c
	ldsh    r0, [r4, r0]
	str     r0, [sp, #0xc]
	mov     r0, #0x1e
	ldsh    r0, [r4, r0]
	str     r0, [sp, #0x8]
.thumb
branch_2258ce0: @ 2258ce0 :thumb
	ldr     r0, [pc, #0x58] @ 0x2258d3c, (=0x683)
	bl      Function_2005748
	b       branch_2258cf8
@ 0x2258ce8

.thumb
branch_2258ce8: @ 2258ce8 :thumb
	ldr     r0, [r4, #0x10]
	add     r1, sp, #0xc
	add     r2, sp, #0x8
	bl      Function_2259648
	ldr     r0, [pc, #0x54] @ 0x2258d48, (=0x5eb)
	bl      Function_2005748
.thumb
branch_2258cf8: @ 2258cf8 :thumb
	mov     r0, r4
	add     r0, #0x20
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_2258d16
	ldr     r0, [r4, #0x10]
	ldr     r2, [r4, #0x8]
	ldr     r0, [r0, #0x4]
	ldr     r1, [r5, #0x0]
	ldr     r2, [r2, #0x4]
	bl      Function_2257fb0
	mov     r1, r4
	add     r1, #0x21
	strb    r0, [r1, #0x0]
.thumb
branch_2258d16: @ 2258d16 :thumb
	ldr     r0, [r4, #0x10]
	mov     r1, #0x4
	ldr     r0, [r0, #0x4]
	str     r0, [sp, #0x0]
	mov     r0, r4
	add     r0, #0x21
	ldrb    r0, [r0, #0x0]
	str     r0, [sp, #0x4]
	ldr     r2, [sp, #0xc]
	ldr     r3, [sp, #0x8]
	mov     r0, r4
	bl      Function_2258f4c
.thumb
branch_2258d30: @ 2258d30 :thumb
	mov     r0, r4
	bl      Function_2258ee4
.thumb
branch_2258d36: @ 2258d36 :thumb
	add     sp, #0x28
	pop     {r4-r6,pc}
@ 0x2258d3a


.align 2


.word 0x683 @ 0x2258d3c
.word 0x181 @ 0x2258d40
.word 0x5ea @ 0x2258d44
.word 0x5eb @ 0x2258d48
.thumb
Function_2258d4c: @ 2258d4c :thumb
	push    {r4,lr}
	ldr     r2, [r0, #0x0]
	ldr     r0, [r2, #0x10]
	cmp     r0, #0x0
	beq     branch_2258d70
	ldr     r3, [pc, #0x1c] @ 0x2258d74, (=0x21bf6bc)
	ldr     r1, [pc, #0x1c] @ 0x2258d78, (=0xffff)
	ldrh    r4, [r3, #0x1c]
	cmp     r4, r1
	beq     branch_2258d70
	beq     branch_2258d70
	ldrh    r3, [r3, #0x1e]
	ldr     r1, [r2, #0x14]
	ldr     r2, [r2, #0x18]
	sub     r1, r4, r1
	sub     r2, r3, r2
	bl      Function_22595f8
.thumb
branch_2258d70: @ 2258d70 :thumb
	pop     {r4,pc}
@ 0x2258d72


.align 2


.word 0x21bf6bc @ 0x2258d74
.word 0xffff @ 0x2258d78
.thumb
Function_2258d7c: @ 2258d7c :thumb
	push    {r4,lr}
	ldr     r4, [r0, #0x0]
	ldr     r1, [r4, #0x10]
	cmp     r1, #0x0
	beq     branch_2258da6
	ldr     r0, [r4, #0x4]
	bl      Function_22579d8
	ldr     r0, [r4, #0x4]
	bl      Function_2257b10
	bl      Function_2255360
	mov     r0, #0x0
	str     r0, [r4, #0x30]
	ldr     r0, [pc, #0xc] @ 0x2258da8, (=0x5eb)
	bl      Function_2005748
	mov     r0, r4
	bl      Function_2258ee4
.thumb
branch_2258da6: @ 2258da6 :thumb
	pop     {r4,pc}
@ 0x2258da8

.word 0x5eb @ 0x2258da8
.thumb
Function_2258dac: @ 2258dac :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	ldr     r4, [r0, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x0
	beq     branch_2258e50
	ldr     r1, [pc, #0x98] @ 0x2258e54, (=0x21bf6bc)
	ldrh    r2, [r1, #0x1c]
	ldr     r1, [pc, #0x98] @ 0x2258e58, (=0xffff)
	cmp     r2, r1
	beq     branch_2258e50
	beq     branch_2258e50
	add     r1, sp, #0x8
	str     r1, [sp, #0x0]
	add     r1, sp, #0x14
	add     r2, sp, #0xc
	add     r3, sp, #0x10
	bl      Function_22596b0
	ldr     r0, [r4, #0x10]
	add     r1, sp, #0x1c
	add     r2, sp, #0x18
	bl      Function_2259698
	ldr     r0, [pc, #0x74] @ 0x2258e54, (=0x21bf6bc)
	ldr     r1, [r4, #0x14]
	ldrh    r2, [r0, #0x1c]
	ldr     r3, [sp, #0x18]
	sub     r5, r2, r1
	ldrh    r1, [r0, #0x1e]
	ldr     r0, [r4, #0x18]
	ldr     r2, [sp, #0x1c]
	sub     r6, r1, r0
	ldr     r0, [sp, #0xc]
	ldr     r1, [sp, #0x10]
	sub     r0, r2, r0
	ldr     r2, [sp, #0x8]
	add     r7, r6, r1
	sub     r2, r3, r2
	ldr     r3, [sp, #0x14]
	str     r2, [sp, #0x18]
	add     r2, r5, r3
	str     r0, [sp, #0x1c]
	cmp     r2, #0x8a
	bgt     branch_2258e0e
	mov     r0, #0x8a
	sub     r5, r0, r3
	b       branch_2258e18
@ 0x2258e0e

.thumb
branch_2258e0e: @ 2258e0e :thumb
	add     r2, r5, r0
	cmp     r2, #0xf6
	blt     branch_2258e18
	mov     r2, #0xf6
	sub     r5, r2, r0
.thumb
branch_2258e18: @ 2258e18 :thumb
	cmp     r7, #0x12
	bgt     branch_2258e22
	mov     r0, #0x12
	sub     r6, r0, r1
	b       branch_2258e2e
@ 0x2258e22

.thumb
branch_2258e22: @ 2258e22 :thumb
	ldr     r1, [sp, #0x18]
	add     r0, r6, r1
	cmp     r0, #0x8f
	blt     branch_2258e2e
	mov     r0, #0x8f
	sub     r6, r0, r1
.thumb
branch_2258e2e: @ 2258e2e :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	mov     r2, r6
	bl      Function_2259074
	ldr     r0, [r4, #0x4]
	add     r1, sp, #0x14
	add     r2, sp, #0x10
	bl      Function_2257d04
	ldr     r1, [sp, #0x14]
	ldr     r2, [sp, #0x10]
	ldr     r0, [sp, #0x4]
	add     r1, r5, r1
	add     r2, r6, r2
	bl      Function_2259074
.thumb
branch_2258e50: @ 2258e50 :thumb
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x2258e54

.word 0x21bf6bc @ 0x2258e54
.word 0xffff @ 0x2258e58
.thumb
Function_2258e5c: @ 2258e5c :thumb
	push    {r3-r5,lr}
	ldr     r4, [r0, #0x0]
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x0
	beq     branch_2258e84
	ldr     r0, [r0, #0x4]
	cmp     r0, #0x1
	beq     branch_2258e70
	bl      ErrorHandling
.thumb
branch_2258e70: @ 2258e70 :thumb
	ldr     r0, [r4, #0x10]
	ldr     r5, [r0, #0x0]
	ldr     r0, [r4, #0x4]
	bl      Function_2257cd4
	ldr     r0, [r4, #0x4]
	ldr     r1, [r5, #0x0]
	mov     r2, #0xe
	bl      Function_2257c88
.thumb
branch_2258e84: @ 2258e84 :thumb
	pop     {r3-r5,pc}
@ 0x2258e86


.align 2, 0


.thumb
Function_2258e88: @ 2258e88 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r5, r0
	mov     r6, r2
	mov     r0, r4
	add     r1, sp, #0x4
	add     r2, sp, #0x0
	mov     r7, r3
	bl      Function_2259648
	str     r4, [r5, #0x10]
	ldr     r0, [sp, #0x4]
	strh    r0, [r5, #0x1c]
	ldr     r0, [sp, #0x0]
	strh    r0, [r5, #0x1e]
	mov     r0, r5
	add     r0, #0x20
	strb    r6, [r0, #0x0]
	ldr     r0, [sp, #0x20]
	str     r7, [r5, #0x14]
	str     r0, [r5, #0x18]
	cmp     r6, #0x0
	bne     branch_2258eca
	ldr     r1, [r5, #0x10]
	ldr     r0, [r5, #0x8]
	ldr     r1, [r1, #0x4]
	bl      Function_2258424
	mov     r1, r5
	add     r1, #0x21
	strb    r0, [r1, #0x0]
	b       branch_2258ed2
@ 0x2258eca

.thumb
branch_2258eca: @ 2258eca :thumb
	mov     r0, r5
	mov     r1, #0x0
	add     r0, #0x21
	strb    r1, [r0, #0x0]
.thumb
branch_2258ed2: @ 2258ed2 :thumb
	mov     r0, #0x1
	str     r0, [r5, #0x30]
	ldr     r1, [sp, #0x24]
	mov     r0, r4
	bl      Function_2259560
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2258ee2


.align 2, 0


.thumb
Function_2258ee4: @ 2258ee4 :thumb
	mov     r2, #0x0
	str     r2, [r0, #0x10]
	strh    r2, [r0, #0x1c]
	mov     r1, r0
	strh    r2, [r0, #0x1e]
	add     r1, #0x20
	strb    r2, [r1, #0x0]
	add     r0, #0x21
	strb    r2, [r0, #0x0]
	bx      lr
@ 0x2258ef8

.thumb
Function_2258ef8: @ 2258ef8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	ldr     r4, [r0, #0x0]
	mov     r5, r1
	ldr     r0, [r4, #0x10]
	mov     r6, r2
	add     r1, sp, #0xc
	add     r2, sp, #0x8
	mov     r7, r3
	bl      Function_2259698
	ldr     r0, [r4, #0x10]
	add     r1, sp, #0x4
	add     r2, sp, #0x0
	bl      Function_2259648
	ldr     r0, [sp, #0x0]
	str     r0, [r5, #0x0]
	ldr     r1, [sp, #0x0]
	ldr     r0, [sp, #0x8]
	add     r0, r1, r0
	str     r0, [r6, #0x0]
	ldr     r0, [sp, #0x4]
	str     r0, [r7, #0x0]
	ldr     r1, [sp, #0x4]
	ldr     r0, [sp, #0xc]
	add     r1, r1, r0
	ldr     r0, [sp, #0x28]
	str     r1, [r0, #0x0]
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2258f36


.align 2, 0


.thumb
Function_2258f38: @ 2258f38 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r4, [sp, #0x10]
	str     r4, [sp, #0x0]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x10]
	bl      Function_2259724
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2258f4c

.thumb
Function_2258f4c: @ 2258f4c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r6, r1
	mov     r7, r2
	str     r3, [sp, #0x0]
	ldr     r0, [pc, #0x60] @ 0x2258fbc, (=0x2258fc1)
	mov     r1, #0x2c
	mov     r2, #0x0
	mov     r3, #0xd
	bl      Function_200679c
	bl      Function_201ced0
	mov     r4, r0
	ldr     r0, [r5, #0x8]
	add     r1, sp, #0x8
	str     r0, [r4, #0x0]
	ldr     r0, [r5, #0x10]
	add     r2, sp, #0x4
	str     r0, [r4, #0x4]
	str     r6, [r4, #0x20]
	ldr     r0, [sp, #0x0]
	str     r7, [r4, #0x10]
	str     r0, [r4, #0x14]
	ldr     r0, [sp, #0x20]
	str     r0, [r4, #0x18]
	ldr     r0, [sp, #0x24]
	str     r0, [r4, #0x1c]
	ldr     r0, [r5, #0x8]
	add     r0, #0x3c
	str     r0, [r4, #0x24]
	mov     r0, r5
	add     r0, #0x30
	str     r0, [r4, #0x28]
	ldr     r0, [r5, #0x10]
	bl      Function_2259648
	ldr     r1, [r4, #0x10]
	ldr     r0, [sp, #0x8]
	sub     r0, r1, r0
	mov     r1, r6
	blx     _s32_div_f
	str     r0, [r4, #0x8]
	ldr     r1, [r4, #0x14]
	ldr     r0, [sp, #0x4]
	sub     r0, r1, r0
	mov     r1, r6
	blx     _s32_div_f
	str     r0, [r4, #0xc]
	mov     r0, #0x0
	str     r0, [r5, #0x30]
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2258fbc

.word 0x2258fc1 @ 0x2258fbc
.thumb
Function_2258fc0: @ 2258fc0 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x24]
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x1
	beq     branch_225903a
	ldr     r0, [r4, #0x4]
	add     r1, sp, #0x4
	add     r2, sp, #0x0
	bl      Function_2259648
	ldr     r1, [sp, #0x4]
	ldr     r0, [r4, #0x8]
	add     r0, r1, r0
	str     r0, [sp, #0x4]
	ldr     r1, [sp, #0x0]
	ldr     r0, [r4, #0xc]
	add     r0, r1, r0
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x20]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x20]
	bmi     branch_2258ffe
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x0
	bne     branch_2259030
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x0
	bne     branch_2259030
.thumb
branch_2258ffe: @ 2258ffe :thumb
	ldr     r0, [r4, #0x4]
	ldr     r1, [r4, #0x10]
	ldr     r2, [r4, #0x14]
	bl      Function_22595f8
	ldr     r0, [r4, #0x0]
	ldr     r1, [r4, #0x18]
	ldr     r2, [r4, #0x1c]
	ldr     r3, [r4, #0x4]
	bl      Function_225818c
	ldr     r0, [r4, #0x0]
	bl      Function_22581ec
	ldr     r0, [r4, #0x28]
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2259026
	bl      Function_2255360
.thumb
branch_2259026: @ 2259026 :thumb
	mov     r0, r5
	bl      Function_20067d0
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2259030

.thumb
branch_2259030: @ 2259030 :thumb
	ldr     r0, [r4, #0x4]
	ldr     r1, [sp, #0x4]
	ldr     r2, [sp, #0x0]
	bl      Function_22595f8
.thumb
branch_225903a: @ 225903a :thumb
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x225903e


.align 2, 0


.thumb
Function_2259040: @ 2259040 :thumb
	push    {r3,lr}
	ldr     r3, [r0, #0x10]
	ldr     r1, [r3, #0x4]
	cmp     r1, #0x0
	bne     branch_225905a
	ldr     r3, [r3, #0x0]
	ldr     r0, [r0, #0xc]
	ldr     r2, [pc, #0x20] @ 0x2259070, (=0x182)
	ldr     r3, [r3, #0x0]
	mov     r1, #0x1a
	bl      Function_225a628
	pop     {r3,pc}
@ 0x225905a

.thumb
branch_225905a: @ 225905a :thumb
	cmp     r1, #0x1
	bne     branch_225906e
	ldr     r3, [r3, #0x0]
	mov     r2, #0x61
	ldr     r0, [r0, #0xc]
	ldr     r3, [r3, #0x0]
	mov     r1, #0x1a
	lsl     r2, r2, #2
	bl      Function_225a628
.thumb
branch_225906e: @ 225906e :thumb
	pop     {r3,pc}
@ 0x2259070

.word 0x182 @ 0x2259070
.thumb
Function_2259074: @ 2259074 :thumb
	push    {r4-r6,lr}
	ldr     r4, [r0, #0x0]
	mov     r5, r1
	ldr     r0, [r4, #0x10]
	mov     r6, r2
	bl      Function_22595f8
	ldr     r1, [r4, #0x24]
	ldr     r2, [r4, #0x28]
	ldr     r0, [r4, #0x4]
	sub     r1, r5, r1
	sub     r2, r6, r2
	bl      Function_2257acc
	str     r5, [r4, #0x24]
	str     r6, [r4, #0x28]
	pop     {r4-r6,pc}
@ 0x2259096


.align 2, 0


.thumb
Function_2259098: @ 2259098 :thumb
	push    {r3-r5,lr}
	mov     r2, #0x0
	mov     r4, r1
	str     r2, [sp, #0x0]
	mov     r5, r0
	ldrh    r0, [r4, #0x0]
	ldrh    r1, [r4, #0x2]
	mov     r3, #0xe
	bl      Function_2006fe8
	mov     r1, r0
	mov     r0, r5
	mov     r2, #0x76
	bl      Function_2255340
	ldrh    r1, [r4, #0x0]
	ldr     r0, [r0, #0x14]
	bl      Function_20093a0
	pop     {r3-r5,pc}
@ 0x22590c0

.thumb
Function_22590c0: @ 22590c0 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	ldr     r4, [sp, #0x10]
	str     r4, [sp, #0x0]
	mov     r4, #0x0
	str     r4, [sp, #0x4]
	bl      Function_22590d4
	add     sp, #0x8
	pop     {r4,pc}
@ 0x22590d4

.thumb
Function_22590d4: @ 22590d4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r6, r2
	mov     r5, r0
	mov     r7, r1
	mov     r4, r3
	mov     r0, r6
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r0, r4
	mov     r1, r6
	mov     r2, #0x2
	bl      Function_2075f00
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	mov     r0, r7
	mov     r1, r4
	mov     r2, #0xc0
	mov     r3, #0x38
	bl      Function_2007c34
	str     r0, [r5, #0x0]
	mov     r0, r5
	add     r1, sp, #0x1c
	add     r2, sp, #0x18
	bl      Function_2259270
	ldr     r1, [sp, #0x1c]
	mov     r2, #0x38
	lsr     r0, r1, #31
	add     r0, r1, r0
	asr     r0, r0, #1
	ldr     r1, [sp, #0x18]
	str     r0, [sp, #0x1c]
	lsr     r0, r1, #31
	add     r0, r1, r0
	asr     r0, r0, #1
	str     r0, [sp, #0x18]
	sub     r0, r2, r0
	strb    r0, [r5, #0x4]
	ldr     r0, [sp, #0x18]
	mov     r1, #0xc0
	add     r0, #0x38
	strb    r0, [r5, #0x5]
	ldr     r0, [sp, #0x1c]
	sub     r0, r1, r0
	strb    r0, [r5, #0x6]
	ldr     r0, [sp, #0x1c]
	add     r0, #0xc0
	strb    r0, [r5, #0x7]
	ldr     r0, [sp, #0x18]
	str     r0, [sp, #0x0]
	ldr     r3, [sp, #0x1c]
	add     r0, r5, #0x4
	bl      Function_2259448
	mov     r0, r6
	mov     r1, #0x2
	bl      Function_20765b8
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r7, r0
	ldrh    r0, [r4, #0x0]
	ldrh    r1, [r4, #0x2]
	ldr     r3, [sp, #0x38]
	bl      Function_2006fe8
	add     r1, sp, #0x14
	str     r0, [sp, #0x10]
	blx     Function_20a7118
	ldr     r0, [sp, #0x14]
	ldrh    r1, [r4, #0x0]
	ldr     r0, [r0, #0x14]
	bl      Function_20093a0
	ldr     r0, [sp, #0x3c]
	cmp     r0, #0x0
	bne     branch_2259196
	ldr     r2, [sp, #0x14]
	mov     r3, r5
	ldrh    r1, [r2, #0x2]
	ldr     r0, [r2, #0x14]
	ldrh    r2, [r2, #0x0]
	lsl     r1, r1, #3
	add     r3, #0x8
	lsl     r2, r2, #3
	bl      Function_22593b8
	b       branch_22591ac
@ 0x2259196

.thumb
branch_2259196: @ 2259196 :thumb
	ldr     r1, [sp, #0x14]
	ldr     r0, [r1, #0x14]
	ldrh    r1, [r1, #0x2]
	lsl     r1, r1, #3
	bl      Function_225936c
	strb    r0, [r5, #0x8]
	ldrb    r0, [r5, #0x8]
	strb    r0, [r5, #0x9]
	strb    r7, [r5, #0xb]
	strb    r7, [r5, #0xa]
.thumb
branch_22591ac: @ 22591ac :thumb
	ldr     r0, [sp, #0x10]
	bl      free
	str     r6, [r5, #0xc]
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x22591b8

.thumb
Function_22591b8: @ 22591b8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2007dc8
	mov     r1, #0x10
	mov     r0, #0x0
.thumb
branch_22591c6: @ 22591c6 :thumb
	strb    r0, [r4, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_22591c6
	pop     {r4,pc}
@ 0x22591d0

.thumb
Function_22591d0: @ 22591d0 :thumb
	ldr     r3, [pc, #0x8] @ 0x22591dc, (=Function_2007dec+1)
	mov     r2, r1
	ldr     r0, [r0, #0x0]
	mov     r1, #0x2
	bx      r3
@ 0x22591da

.align 2
.word Function_2007dec+1 @ 0x22591dc



.thumb
Function_22591e0: @ 22591e0 :thumb
	ldr     r3, [pc, #0x4] @ 0x22591e8, (=Function_20080c0+1)
	ldr     r0, [r0, #0x0]
	mov     r1, #0x2
	bx      r3
@ 0x22591e8

.word Function_20080c0+1 @ 0x22591e8



.thumb
Function_22591ec: @ 22591ec :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r6, r2
	mov     r5, r0
	add     r1, sp, #0x8
	add     r2, sp, #0x4
	bl      Function_2259270
	ldr     r0, [r5, #0x0]
	mov     r1, #0x0
	mov     r2, r4
	bl      Function_2007dec
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	mov     r2, r6
	bl      Function_2007dec
	ldr     r1, [sp, #0x4]
	lsr     r0, r1, #31
	add     r0, r1, r0
	asr     r2, r0, #1
	ldr     r1, [sp, #0x8]
	str     r2, [sp, #0x4]
	lsr     r0, r1, #31
	add     r0, r1, r0
	asr     r0, r0, #1
	str     r0, [sp, #0x8]
	str     r2, [sp, #0x0]
	ldr     r3, [sp, #0x8]
	add     r0, r5, #0x4
	mov     r1, r4
	mov     r2, r6
	bl      Function_2259448
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x2259238

.thumb
Function_2259238: @ 2259238 :thumb
	ldr     r3, [pc, #0x4] @ 0x2259240, (=Function_2022734+1)
	.hword  0x1d00 @ add r0, r0, #0x4
	bx      r3
@ 0x225923e

.align 2
.word Function_2022734+1 @ 0x2259240



.thumb
Function_2259244: @ 2259244 :thumb
	ldr     r3, [pc, #0x4] @ 0x225924c, (=Function_2022830+1)
	.hword  0x1d00 @ add r0, r0, #0x4
	bx      r3
@ 0x225924a

.align 2
.word Function_2022830+1 @ 0x225924c



.thumb
Function_2259250: @ 2259250 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	mov     r1, #0x0
	mov     r6, r2
	bl      Function_20080c0
	str     r0, [r4, #0x0]
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	bl      Function_20080c0
	str     r0, [r6, #0x0]
	pop     {r4-r6,pc}
@ 0x225926e


.align 2, 0


.thumb
Function_2259270: @ 2259270 :thumb
	mov     r0, #0x50
	str     r0, [r1, #0x0]
	str     r0, [r2, #0x0]
	bx      lr
@ 0x2259278

.thumb
Function_2259278: @ 2259278 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3
	bl      Function_2259238
	cmp     r0, #0x0
	bne     branch_2259292
	add     sp, #0x10
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2259292

.thumb
branch_2259292: @ 2259292 :thumb
	mov     r0, r5
	add     r1, sp, #0x4
	add     r2, sp, #0x0
	bl      Function_2259250
	mov     r0, r5
	add     r1, sp, #0xc
	add     r2, sp, #0x8
	bl      Function_2259270
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x4]
	lsr     r0, r1, #31
	add     r0, r1, r0
	asr     r0, r0, #1
	sub     r1, r2, r0
	ldr     r3, [sp, #0x8]
	ldr     r0, [sp, #0x0]
	lsr     r2, r3, #31
	add     r2, r3, r2
	asr     r2, r2, #1
	sub     r0, r0, r2
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x28] @ 0x22592ec, (=0x21bf6bc)
	str     r1, [sp, #0x4]
	ldrh    r2, [r0, #0x1c]
	mov     r3, #0x0
	sub     r1, r2, r1
	str     r1, [r4, #0x0]
	ldrh    r1, [r0, #0x1e]
	ldr     r0, [sp, #0x0]
	sub     r2, r1, r0
	str     r2, [r6, #0x0]
	ldr     r1, [r4, #0x0]
	mov     r0, r7
	bl      Function_2255420
	cmp     r0, #0x0
	bne     branch_22592e6
	add     sp, #0x10
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x22592e6

.thumb
branch_22592e6: @ 22592e6 :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x22592ec

.word 0x21bf6bc @ 0x22592ec
.thumb
Function_22592f0: @ 22592f0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3
	bl      Function_2259244
	cmp     r0, #0x0
	bne     branch_225930a
	add     sp, #0x10
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x225930a

.thumb
branch_225930a: @ 225930a :thumb
	mov     r0, r5
	add     r1, sp, #0x4
	add     r2, sp, #0x0
	bl      Function_2259250
	mov     r0, r5
	add     r1, sp, #0xc
	add     r2, sp, #0x8
	bl      Function_2259270
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x4]
	lsr     r0, r1, #31
	add     r0, r1, r0
	asr     r0, r0, #1
	sub     r1, r2, r0
	ldr     r3, [sp, #0x8]
	str     r1, [sp, #0x4]
	lsr     r2, r3, #31
	add     r2, r3, r2
	ldr     r0, [sp, #0x0]
	asr     r2, r2, #1
	sub     r0, r0, r2
	str     r0, [sp, #0x0]
	sub     r2, r6, r0
	sub     r1, r4, r1
	mov     r0, r7
	mov     r3, #0x0
	bl      Function_2255420
	cmp     r0, #0x0
	bne     branch_2259350
	add     sp, #0x10
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2259350

.thumb
branch_2259350: @ 2259350 :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2259356


.align 2, 0


.thumb
Function_2259358: @ 2259358 :thumb
	ldrb    r2, [r0, #0x8]
	strb    r2, [r1, #0x0]
	ldrb    r2, [r0, #0x9]
	strb    r2, [r1, #0x1]
	ldrb    r2, [r0, #0xa]
	strb    r2, [r1, #0x2]
	ldrb    r0, [r0, #0xb]
	strb    r0, [r1, #0x3]
	bx      lr
@ 0x225936a


.align 2, 0


.thumb
Function_225936c: @ 225936c :thumb
	push    {r4-r7}
	mov     r12, r0
	mov     r7, r1
	mov     r2, #0x0
.thumb
branch_2259374: @ 2259374 :thumb
	mov     r3, #0x0
	mov     r4, r3
.thumb
branch_2259378: @ 2259378 :thumb
	add     r1, r2, r4
	lsr     r0, r1, #31
	lsl     r6, r1, #31
	sub     r6, r6, r0
	mov     r5, #0x1f
	ror     r6, r5
	add     r5, r0, r6
	lsl     r6, r5, #2
	mov     r5, #0xf
	add     r0, r1, r0
	lsl     r5, r6
	asr     r1, r0, #1
	mov     r0, r12
	lsl     r5, r5, #24
	ldsb    r0, [r0, r1]
	lsr     r5, r5, #24
	tst     r0, r5
	beq     branch_22593a2
	mov     r0, r2
	pop     {r4-r7}
	bx      lr
@ 0x22593a2

.thumb
branch_22593a2: @ 22593a2 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	add     r4, r4, r7
	cmp     r3, #0x50
	blt     branch_2259378
	.hword  0x1c52 @ add r2, r2, #0x1
	cmp     r2, #0x50
	blt     branch_2259374
	mov     r0, #0x50
	pop     {r4-r7}
	bx      lr
@ 0x22593b6


.align 2, 0


.thumb
Function_22593b8: @ 22593b8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r1, r3
	mov     r0, #0x28
	strb    r0, [r1, #0x0]
	strb    r0, [r1, #0x1]
	strb    r0, [r1, #0x2]
	strb    r0, [r1, #0x3]
	mov     r6, #0x0
.thumb
branch_22593ce: @ 22593ce :thumb
	mov     r2, #0x50
	sub     r2, r2, r6
	str     r2, [sp, #0x8]
	lsl     r2, r6, #24
	lsr     r2, r2, #24
	mov     lr, r2
	ldr     r2, [sp, #0x8]
	mov     r0, #0x0
	lsl     r2, r2, #24
	lsr     r2, r2, #24
	mov     r5, r0
	mov     r12, r2
.thumb
branch_22593e6: @ 22593e6 :thumb
	add     r7, r6, r5
	lsr     r3, r7, #31
	lsl     r4, r7, #31
	sub     r4, r4, r3
	mov     r2, #0x1f
	ror     r4, r2
	add     r2, r3, r4
	lsl     r4, r2, #2
	mov     r2, #0xf
	lsl     r2, r4
	lsl     r2, r2, #24
	lsr     r4, r2, #24
	add     r3, r7, r3
	ldr     r2, [sp, #0x0]
	asr     r3, r3, #1
	ldsb    r2, [r2, r3]
	tst     r2, r4
	beq     branch_2259434
	ldrb    r2, [r1, #0x0]
	cmp     r2, r6
	ble     branch_2259414
	mov     r2, lr
	strb    r2, [r1, #0x0]
.thumb
branch_2259414: @ 2259414 :thumb
	ldrb    r3, [r1, #0x1]
	ldr     r2, [sp, #0x8]
	cmp     r3, r2
	ble     branch_2259420
	mov     r2, r12
	strb    r2, [r1, #0x1]
.thumb
branch_2259420: @ 2259420 :thumb
	ldrb    r2, [r1, #0x2]
	cmp     r2, r0
	ble     branch_2259428
	strb    r0, [r1, #0x2]
.thumb
branch_2259428: @ 2259428 :thumb
	mov     r2, #0x50
	sub     r3, r2, r0
	ldrb    r2, [r1, #0x3]
	cmp     r2, r3
	ble     branch_2259434
	strb    r3, [r1, #0x3]
.thumb
branch_2259434: @ 2259434 :thumb
	ldr     r2, [sp, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r5, r5, r2
	cmp     r0, #0x50
	blt     branch_22593e6
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, #0x50
	blt     branch_22593ce
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2259448

.thumb
Function_2259448: @ 2259448 :thumb
	push    {r3,r4}
	ldr     r4, [sp, #0x8]
	sub     r4, r2, r4
	bmi     branch_2259452
	b       branch_2259454
@ 0x2259452

.thumb
branch_2259452: @ 2259452 :thumb
	mov     r4, #0x0
.thumb
branch_2259454: @ 2259454 :thumb
	strb    r4, [r0, #0x0]
	ldr     r4, [sp, #0x8]
	add     r2, r2, r4
	cmp     r2, #0xbf
	bgt     branch_2259460
	b       branch_2259462
@ 0x2259460

.thumb
branch_2259460: @ 2259460 :thumb
	mov     r2, #0xbf
.thumb
branch_2259462: @ 2259462 :thumb
	strb    r2, [r0, #0x1]
	sub     r2, r1, r3
	bmi     branch_225946a
	b       branch_225946c
@ 0x225946a

.thumb
branch_225946a: @ 225946a :thumb
	mov     r2, #0x0
.thumb
branch_225946c: @ 225946c :thumb
	add     r1, r1, r3
	strb    r2, [r0, #0x2]
	cmp     r1, #0xff
	bgt     branch_225947a
	strb    r1, [r0, #0x3]
	pop     {r3,r4}
	bx      lr
@ 0x225947a

.thumb
branch_225947a: @ 225947a :thumb
	mov     r1, #0xff
	strb    r1, [r0, #0x3]
	pop     {r3,r4}
	bx      lr
@ 0x2259482


.align 2, 0


.thumb
Function_2259484: @ 2259484 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	lsl     r4, r6, #4
	mov     r5, r0
	mov     r0, r2
	mov     r1, r4
	bl      malloc
	str     r0, [r5, #0x0]
	cmp     r0, #0x0
	bne     branch_225949e
	bl      ErrorHandling
.thumb
branch_225949e: @ 225949e :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, #0x0
	mov     r2, r4
	blx     Call_FillMemWithValue
	str     r6, [r5, #0x4]
	pop     {r4-r6,pc}
@ 0x22594ac

.thumb
Function_22594ac: @ 22594ac :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      free
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	str     r0, [r4, #0x4]
	pop     {r4,pc}
@ 0x22594be


.align 2, 0


.thumb
Function_22594c0: @ 22594c0 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r6, r1
	mov     r7, r2
	cmp     r0, #0x0
	bne     branch_22594d2
	bl      ErrorHandling
.thumb
branch_22594d2: @ 22594d2 :thumb
	ldr     r0, [r5, #0x4]
	cmp     r0, #0x0
	bne     branch_22594dc
	bl      ErrorHandling
.thumb
branch_22594dc: @ 22594dc :thumb
	ldr     r2, [r5, #0x4]
	mov     r4, #0x0
	cmp     r2, #0x0
	ble     branch_22594f4
	ldr     r1, [r5, #0x0]
.thumb
branch_22594e6: @ 22594e6 :thumb
	ldr     r0, [r1, #0x0]
	cmp     r0, #0x0
	beq     branch_22594f4
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r1, #0x10
	cmp     r4, r2
	blt     branch_22594e6
.thumb
branch_22594f4: @ 22594f4 :thumb
	cmp     r2, r4
	bgt     branch_22594fc
	bl      ErrorHandling
.thumb
branch_22594fc: @ 22594fc :thumb
	ldr     r0, [r5, #0x0]
	lsl     r1, r4, #4
	str     r6, [r0, r1]
	ldr     r0, [r5, #0x0]
	add     r0, r0, r1
	str     r7, [r0, #0x4]
	ldr     r0, [r5, #0x0]
	add     r0, r0, r1
	pop     {r3-r7,pc}
@ 0x225950e


.align 2, 0


.thumb
Function_2259510: @ 2259510 :thumb
	mov     r2, #0x10
	mov     r1, #0x0
.thumb
branch_2259514: @ 2259514 :thumb
	strb    r1, [r0, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_2259514
	bx      lr
@ 0x225951e


.align 2, 0


.thumb
Function_2259520: @ 2259520 :thumb
	ldr     r2, [r1, #0x8]
	str     r2, [r0, #0x8]
	ldr     r2, [r1, #0x8]
	str     r0, [r2, #0xc]
	str     r1, [r0, #0xc]
	str     r0, [r1, #0x8]
	bx      lr
@ 0x225952e


.align 2, 0


.thumb
Function_2259530: @ 2259530 :thumb
	ldr     r2, [r0, #0x8]
	ldr     r1, [r0, #0xc]
	str     r2, [r1, #0x8]
	ldr     r1, [r0, #0xc]
	ldr     r0, [r0, #0x8]
	str     r1, [r0, #0xc]
	bx      lr
@ 0x225953e


.align 2, 0


.thumb
Function_2259540: @ 2259540 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	ldr     r4, [r6, #0x8]
	cmp     r4, r6
	beq     branch_225955e
.thumb
branch_225954a: @ 225954a :thumb
	mov     r0, r4
	ldr     r5, [r4, #0x8]
	bl      Function_2259530
	mov     r0, r4
	bl      Function_2259510
	mov     r4, r5
	cmp     r5, r6
	bne     branch_225954a
.thumb
branch_225955e: @ 225955e :thumb
	pop     {r4-r6,pc}
@ 0x2259560

.thumb
Function_2259560: @ 2259560 :thumb
	push    {r3,lr}
	ldr     r2, [r0, #0x4]
	ldr     r0, [r0, #0x0]
	cmp     r2, #0x3
	bge     branch_2259570
	bl      Function_2254f6c
	pop     {r3,pc}
@ 0x2259570

.thumb
branch_2259570: @ 2259570 :thumb
	bl      Function_22591d0
	pop     {r3,pc}
@ 0x2259576


.align 2, 0


.thumb
Function_2259578: @ 2259578 :thumb
	push    {r3,lr}
	ldr     r3, [r0, #0x4]
	ldr     r0, [r0, #0x0]
	cmp     r3, #0x3
	bge     branch_2259596
	mov     r3, #0x0
	mvn     r3, r3
	cmp     r1, r3
	bne     branch_2259590
	bl      Function_2254e44
	pop     {r3,pc}
@ 0x2259590

.thumb
branch_2259590: @ 2259590 :thumb
	bl      Function_2254edc
	pop     {r3,pc}
@ 0x2259596

.thumb
branch_2259596: @ 2259596 :thumb
	mov     r3, #0x0
	mvn     r3, r3
	cmp     r1, r3
	bne     branch_22595a4
	bl      Function_2259238
	pop     {r3,pc}
@ 0x22595a4

.thumb
branch_22595a4: @ 22595a4 :thumb
	bl      Function_2259244
	pop     {r3,pc}
@ 0x22595aa


.align 2, 0


.thumb
Function_22595ac: @ 22595ac :thumb
	push    {r4,lr}
	ldr     r4, [r0, #0x4]
	cmp     r4, #0x0
	bne     branch_22595c2
	ldr     r0, [r0, #0x0]
	ldr     r4, [r0, #0x0]
	lsl     r4, r4, #2
	ldr     r3, [r3, r4]
	bl      Function_2254e54
	pop     {r4,pc}
@ 0x22595c2

.thumb
branch_22595c2: @ 22595c2 :thumb
	cmp     r4, #0x1
	bne     branch_22595d6
	ldr     r0, [r0, #0x0]
	ldr     r4, [r0, #0x0]
	add     r4, #0x64
	lsl     r4, r4, #2
	ldr     r3, [r3, r4]
	bl      Function_2254e54
	pop     {r4,pc}
@ 0x22595d6

.thumb
branch_22595d6: @ 22595d6 :thumb
	cmp     r4, #0x2
	ldr     r0, [r0, #0x0]
	bne     branch_22595ea
	ldr     r4, [r0, #0x0]
	add     r4, #0x64
	lsl     r4, r4, #2
	ldr     r3, [r3, r4]
	bl      Function_2254e54
	pop     {r4,pc}
@ 0x22595ea

.thumb
branch_22595ea: @ 22595ea :thumb
	mov     r4, #0x76
	lsl     r4, r4, #2
	ldr     r3, [r3, r4]
	bl      Function_2259278
	pop     {r4,pc}
@ 0x22595f6


.align 2, 0


.thumb
Function_22595f8: @ 22595f8 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r1
	ldr     r1, [r0, #0x4]
	mov     r4, r2
	cmp     r1, #0x3
	bge     branch_2259618
	lsl     r1, r5, #16
	lsl     r2, r4, #16
	ldr     r0, [r0, #0x0]
	asr     r1, r1, #16
	asr     r2, r2, #16
	bl      Function_2254ef4
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2259618

.thumb
branch_2259618: @ 2259618 :thumb
	ldr     r6, [r0, #0x0]
	add     r1, sp, #0x4
	mov     r0, r6
	add     r2, sp, #0x0
	bl      Function_2259270
	ldr     r1, [sp, #0x4]
	ldr     r2, [sp, #0x0]
	lsr     r0, r1, #31
	add     r0, r1, r0
	asr     r1, r0, #1
	lsr     r0, r2, #31
	add     r0, r2, r0
	asr     r2, r0, #1
	str     r1, [sp, #0x4]
	str     r2, [sp, #0x0]
	mov     r0, r6
	add     r1, r5, r1
	add     r2, r4, r2
	bl      Function_22591ec
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2259646


.align 2, 0


.thumb
Function_2259648: @ 2259648 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	ldr     r3, [r0, #0x4]
	mov     r5, r1
	mov     r4, r2
	cmp     r3, #0x3
	bge     branch_2259660
	ldr     r0, [r0, #0x0]
	bl      Function_2254f00
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2259660

.thumb
branch_2259660: @ 2259660 :thumb
	ldr     r6, [r0, #0x0]
	mov     r0, r6
	bl      Function_2259250
	mov     r0, r6
	add     r1, sp, #0x4
	add     r2, sp, #0x0
	bl      Function_2259270
	ldr     r1, [sp, #0x4]
	lsr     r0, r1, #31
	add     r0, r1, r0
	asr     r2, r0, #1
	ldr     r1, [sp, #0x0]
	str     r2, [sp, #0x4]
	lsr     r0, r1, #31
	add     r0, r1, r0
	asr     r0, r0, #1
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x0]
	sub     r0, r0, r2
	str     r0, [r5, #0x0]
	ldr     r1, [r4, #0x0]
	ldr     r0, [sp, #0x0]
	sub     r0, r1, r0
	str     r0, [r4, #0x0]
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2259698

.thumb
Function_2259698: @ 2259698 :thumb
	push    {r3,lr}
	ldr     r3, [r0, #0x4]
	ldr     r0, [r0, #0x0]
	cmp     r3, #0x3
	bge     branch_22596a8
	bl      Function_2254f30
	pop     {r3,pc}
@ 0x22596a8

.thumb
branch_22596a8: @ 22596a8 :thumb
	bl      Function_2259270
	pop     {r3,pc}
@ 0x22596ae


.align 2, 0


.thumb
Function_22596b0: @ 22596b0 :thumb
	push    {r3-r7,lr}
	mov     r7, r2
	ldr     r2, [r0, #0x4]
	mov     r6, r1
	mov     r5, r3
	ldr     r4, [sp, #0x18]
	cmp     r2, #0x3
	ldr     r0, [r0, #0x0]
	bge     branch_22596d2
	mov     r2, r5
	bl      Function_2254f84
	ldr     r0, [r6, #0x0]
	str     r0, [r7, #0x0]
	ldr     r0, [r5, #0x0]
	str     r0, [r4, #0x0]
	pop     {r3-r7,pc}
@ 0x22596d2

.thumb
branch_22596d2: @ 22596d2 :thumb
	add     r1, sp, #0x0
	bl      Function_2259358
	add     r0, sp, #0x0
	ldrb    r1, [r0, #0x0]
	str     r1, [r6, #0x0]
	ldrb    r1, [r0, #0x1]
	str     r1, [r7, #0x0]
	ldrb    r1, [r0, #0x2]
	str     r1, [r5, #0x0]
	ldrb    r0, [r0, #0x3]
	str     r0, [r4, #0x0]
	pop     {r3-r7,pc}
@ 0x22596ec

.thumb
Function_22596ec: @ 22596ec :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r4, [r5, #0x8]
	mov     r6, r1
	mov     r7, r2
	cmp     r4, r5
	beq     branch_225971e
.thumb
branch_22596fc: @ 22596fc :thumb
	mov     r0, r4
	add     r1, sp, #0x4
	add     r2, sp, #0x0
	bl      Function_2259648
	ldr     r0, [sp, #0x4]
	add     r1, r0, r6
	ldr     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	add     r2, r0, r7
	str     r2, [sp, #0x0]
	mov     r0, r4
	bl      Function_22595f8
	ldr     r4, [r4, #0x8]
	cmp     r4, r5
	bne     branch_22596fc
.thumb
branch_225971e: @ 225971e :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2259722


.align 2, 0


.thumb
Function_2259724: @ 2259724 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r4, r1
	mov     r6, r2
	mov     r5, r0
	add     r1, sp, #0x20
	add     r2, sp, #0x1c
	mov     r7, r3
	bl      Function_2259698
	mov     r0, r5
	add     r1, sp, #0x18
	add     r2, sp, #0x14
	bl      Function_2259648
	add     r0, sp, #0x4
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r1, sp, #0x10
	add     r2, sp, #0x8
	add     r3, sp, #0xc
	bl      Function_22596b0
	ldr     r1, [sp, #0x14]
	ldr     r0, [sp, #0xc]
	add     r0, r1, r0
	str     r0, [r4, #0x0]
	ldr     r1, [sp, #0x14]
	ldr     r0, [sp, #0x1c]
	add     r1, r1, r0
	ldr     r0, [sp, #0x4]
	sub     r0, r1, r0
	str     r0, [r6, #0x0]
	ldr     r1, [sp, #0x18]
	ldr     r0, [sp, #0x10]
	add     r0, r1, r0
	str     r0, [r7, #0x0]
	ldr     r1, [sp, #0x18]
	ldr     r0, [sp, #0x20]
	add     r1, r1, r0
	ldr     r0, [sp, #0x8]
	sub     r1, r1, r0
	ldr     r0, [sp, #0x38]
	str     r1, [r0, #0x0]
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x2259780

.thumb
Function_2259780: @ 2259780 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r1
	mov     r4, r2
	mov     r6, r0
	add     r1, sp, #0xc
	add     r2, sp, #0x8
	bl      Function_2259698
	mov     r0, r6
	add     r1, sp, #0x4
	add     r2, sp, #0x0
	bl      Function_2259648
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x4]
	lsr     r0, r1, #31
	add     r0, r1, r0
	asr     r0, r0, #1
	add     r0, r2, r0
	str     r0, [r5, #0x0]
	ldr     r1, [sp, #0x8]
	ldr     r2, [sp, #0x0]
	lsr     r0, r1, #31
	add     r0, r1, r0
	asr     r0, r0, #1
	add     r0, r2, r0
	str     r0, [r4, #0x0]
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x22597bc

.thumb
Function_22597bc: @ 22597bc :thumb
	mov     r2, r0
	ldr     r0, [r1, #0x0]
	str     r0, [r2, #0x0]
	ldr     r3, [r1, #0x14]
	asr     r0, r3, #2
	lsr     r0, r0, #29
	add     r0, r3, r0
	asr     r0, r0, #3
	str     r0, [r2, #0xc]
	ldr     r3, [r1, #0x18]
	asr     r0, r3, #2
	lsr     r0, r0, #29
	add     r0, r3, r0
	asr     r0, r0, #3
	str     r0, [r2, #0x10]
	ldr     r0, [r1, #0x1c]
	ldr     r3, [pc, #0x20] @ 0x2259800, (=0x22599a1)
	str     r0, [r2, #0x1c]
	ldr     r0, [r1, #0x24]
	str     r0, [r2, #0x20]
	ldr     r0, [r1, #0x20]
	str     r0, [r2, #0x24]
	ldr     r0, [r1, #0x28]
	str     r0, [r2, #0x28]
	ldr     r0, [r1, #0x4]
	str     r0, [r2, #0x4]
	ldr     r0, [r1, #0x10]
	str     r0, [r2, #0x8]
	mov     r0, r1
	mov     r1, r2
	add     r1, #0x14
	add     r2, #0x18
	bx      r3
@ 0x22597fe


.align 2


.word 0x22599a1 @ 0x2259800
.thumb
Function_2259804: @ 2259804 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x1c]
	ldr     r0, [r4, #0x0]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_2019ebc
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x2c
	blx     Call_FillMemWithValue
	pop     {r4,pc}
@ 0x2259820

.thumb
Function_2259820: @ 2259820 :thumb
	ldr     r2, [r1, #0x0]
	str     r2, [r0, #0x0]
	ldr     r2, [r1, #0x4]
	str     r2, [r0, #0x4]
	ldr     r2, [r1, #0x8]
	str     r2, [r0, #0x8]
	mov     r2, #0x0
	str     r2, [r0, #0xc]
	str     r2, [r0, #0x10]
	ldr     r1, [r1, #0xc]
	str     r1, [r0, #0x14]
	bx      lr
@ 0x2259838

.thumb
Function_2259838: @ 2259838 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	mov     r5, r0
	ldr     r0, [r5, #0xc]
	add     r1, r0, r1
	str     r1, [r5, #0xc]
	ldr     r0, [r5, #0x8]
	cmp     r1, r0
	ble     branch_225989c
	mov     r2, #0x0
	str     r2, [r5, #0xc]
	ldr     r0, [r5, #0x10]
	cmp     r0, #0x0
	bne     branch_225985c
	ldr     r1, [r5, #0x4]
	mov     r0, #0x1
	str     r0, [r5, #0x10]
	b       branch_2259862
@ 0x225985c

.thumb
branch_225985c: @ 225985c :thumb
	ldr     r0, [r5, #0x0]
	ldr     r1, [r0, #0x8]
	str     r2, [r5, #0x10]
.thumb
branch_2259862: @ 2259862 :thumb
	ldr     r0, [r5, #0x14]
	mov     r2, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x0]
	add     r3, sp, #0x14
	ldr     r0, [r0, #0x4]
	bl      Function_2006f6c
	ldr     r3, [r5, #0x0]
	mov     r4, r0
	ldr     r0, [r3, #0x18]
	str     r0, [sp, #0x0]
	ldr     r0, [r3, #0xc]
	str     r0, [sp, #0x4]
	ldr     r0, [r3, #0x10]
	str     r0, [sp, #0x8]
	ldr     r0, [r3, #0x28]
	str     r0, [sp, #0xc]
	ldr     r0, [r3, #0x20]
	str     r0, [sp, #0x10]
	ldr     r0, [r3, #0x0]
	ldr     r1, [r3, #0x1c]
	ldr     r2, [sp, #0x14]
	ldr     r3, [r3, #0x14]
	bl      Function_2259abc
	mov     r0, r4
	bl      free
.thumb
branch_225989c: @ 225989c :thumb
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x22598a0

.thumb
Function_22598a0: @ 22598a0 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	mov     r5, r0
	ldr     r1, [r5, #0x0]
	ldr     r0, [r5, #0x14]
	mov     r2, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [r1, #0x4]
	ldr     r1, [r1, #0x8]
	add     r3, sp, #0x14
	bl      Function_2006f6c
	ldr     r3, [r5, #0x0]
	mov     r4, r0
	ldr     r0, [r3, #0x18]
	str     r0, [sp, #0x0]
	ldr     r0, [r3, #0xc]
	str     r0, [sp, #0x4]
	ldr     r0, [r3, #0x10]
	str     r0, [sp, #0x8]
	ldr     r0, [r3, #0x28]
	str     r0, [sp, #0xc]
	ldr     r0, [r3, #0x20]
	str     r0, [sp, #0x10]
	ldr     r0, [r3, #0x0]
	ldr     r1, [r3, #0x1c]
	ldr     r2, [sp, #0x14]
	ldr     r3, [r3, #0x14]
	bl      Function_2259abc
	mov     r0, r4
	bl      free
	mov     r1, #0x18
	mov     r0, #0x0
.thumb
branch_22598e6: @ 22598e6 :thumb
	strb    r0, [r5, #0x0]
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_22598e6
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x22598f2


.align 2, 0


.thumb
Function_22598f4: @ 22598f4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r0
	mov     r5, r1
	str     r2, [sp, #0x0]
	str     r3, [sp, #0x4]
	ldr     r0, [pc, #0x78] @ 0x225997c, (=0x2259a4d)
	mov     r1, #0x4c
	mov     r2, #0x0
	mov     r3, #0xd
	bl      Function_200679c
	bl      Function_201ced0
	mov     r4, r0
	str     r6, [r4, #0x0]
	mov     r7, r5
	add     r3, r4, #0x4
	mov     r2, #0x6
.thumb
branch_225991a: @ 225991a :thumb
	ldmia   r7!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_225991a
	ldr     r0, [sp, #0x24]
	ldr     r1, [sp, #0x20]
	str     r0, [r4, #0x34]
	ldr     r0, [sp, #0x0]
	str     r1, [r4, #0x38]
	blx     _s32_div_f
	str     r0, [r4, #0x3c]
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x20]
	blx     _s32_div_f
	str     r0, [r4, #0x40]
	ldr     r0, [r6, #0x0]
	ldr     r1, [r6, #0x1c]
	bl      Function_20192ec
	str     r0, [r4, #0x44]
	ldr     r0, [r6, #0x0]
	ldr     r1, [r6, #0x1c]
	bl      Function_20192f8
	str     r0, [r4, #0x48]
	mov     r0, #0x80
	str     r0, [r5, #0x28]
	mov     r0, #0x5
	str     r0, [r5, #0x24]
	ldr     r1, [r5, #0x14]
	ldr     r0, [sp, #0x0]
	sub     r0, r1, r0
	str     r0, [r5, #0x14]
	ldr     r1, [r5, #0x18]
	ldr     r0, [sp, #0x4]
	sub     r0, r1, r0
	str     r0, [r5, #0x18]
	mov     r0, #0xe
	mov     r1, #0x0
	str     r0, [r5, #0x2c]
	mov     r0, r5
	mov     r2, r1
	bl      Function_22599a0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x225997a


.align 2


.word 0x2259a4d @ 0x225997c
.thumb
Function_2259980: @ 2259980 :thumb
	push    {r3,r4}
	ldr     r2, [r0, #0x8]
	add     r0, #0xc
	lsr     r4, r2, #1
	mov     r3, #0x0
	cmp     r4, #0x0
	ble     branch_225999c
.thumb
branch_225998e: @ 225998e :thumb
	ldrh    r2, [r0, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	add     r2, r2, r1
	strh    r2, [r0, #0x0]
	.hword  0x1c80 @ add r0, r0, #0x2
	cmp     r3, r4
	blt     branch_225998e
.thumb
branch_225999c: @ 225999c :thumb
	pop     {r3,r4}
	bx      lr
@ 0x22599a0

.thumb
Function_22599a0: @ 22599a0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	mov     r5, r0
	mov     r4, r1
	ldr     r1, [r5, #0x14]
	mov     r6, r2
	asr     r0, r1, #2
	lsr     r0, r0, #29
	add     r0, r1, r0
	asr     r0, r0, #3
	ldr     r1, [r5, #0x18]
	str     r0, [sp, #0x18]
	asr     r0, r1, #2
	lsr     r0, r0, #29
	add     r0, r1, r0
	asr     r0, r0, #3
	str     r0, [sp, #0x14]
	ldr     r0, [r5, #0x28]
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x2c]
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x4]
	ldr     r1, [r5, #0x8]
	ldr     r2, [r5, #0x0]
	ldr     r3, [r5, #0x1c]
	bl      Function_2259b3c
	ldr     r0, [r5, #0x1c]
	cmp     r0, #0x4
	bge     branch_22599e0
	mov     r2, #0x0
	b       branch_22599e2
@ 0x22599e0

.thumb
branch_22599e0: @ 22599e0 :thumb
	mov     r2, #0x4
.thumb
branch_22599e2: @ 22599e2 :thumb
	ldr     r0, [r5, #0x20]
	lsl     r0, r0, #5
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x2c]
	str     r0, [sp, #0x4]
	ldr     r3, [r5, #0x24]
	ldr     r0, [r5, #0x4]
	ldr     r1, [r5, #0xc]
	lsl     r3, r3, #5
	bl      Function_2259b8c
	ldr     r0, [r5, #0x2c]
	mov     r2, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x4]
	ldr     r1, [r5, #0x10]
	add     r3, sp, #0x24
	bl      Function_2006f6c
	ldr     r2, [sp, #0x24]
	str     r0, [sp, #0x20]
	ldrh    r0, [r2, #0x0]
	lsr     r7, r0, #3
	ldrh    r0, [r2, #0x2]
	mov     r3, r7
	lsr     r0, r0, #3
	str     r0, [sp, #0x1c]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x18]
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x14]
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x28]
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x24]
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x0]
	ldr     r1, [r5, #0x1c]
	bl      Function_2259abc
	ldr     r0, [sp, #0x20]
	bl      free
	cmp     r4, #0x0
	beq     branch_2259a3e
	str     r7, [r4, #0x0]
.thumb
branch_2259a3e: @ 2259a3e :thumb
	cmp     r6, #0x0
	beq     branch_2259a46
	ldr     r0, [sp, #0x1c]
	str     r0, [r6, #0x0]
.thumb
branch_2259a46: @ 2259a46 :thumb
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x2259a4a


.align 2, 0


.thumb
Function_2259a4c: @ 2259a4c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x38]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x38]
	ldr     r1, [r4, #0x0]
	bmi     branch_2259a80
	ldr     r0, [r1, #0x0]
	ldr     r1, [r1, #0x1c]
	ldr     r3, [r4, #0x3c]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	mov     r2, #0x2
	bl      Function_201c63c
	ldr     r1, [r4, #0x0]
	ldr     r3, [r4, #0x40]
	ldr     r0, [r1, #0x0]
	ldr     r1, [r1, #0x1c]
	mov     r2, #0x5
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_201c63c
	pop     {r3-r5,pc}
@ 0x2259a80

.thumb
branch_2259a80: @ 2259a80 :thumb
	ldr     r0, [r1, #0x0]
	ldr     r1, [r1, #0x1c]
	ldr     r3, [r4, #0x44]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	mov     r2, #0x0
	bl      Function_201c63c
	ldr     r1, [r4, #0x0]
	ldr     r3, [r4, #0x48]
	ldr     r0, [r1, #0x0]
	ldr     r1, [r1, #0x1c]
	mov     r2, #0x3
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_201c63c
	ldr     r0, [r4, #0x0]
	add     r1, r4, #0x4
	bl      Function_22597bc
	ldr     r1, [r4, #0x34]
	cmp     r1, #0x0
	beq     branch_2259ab4
	mov     r0, #0x1
	str     r0, [r1, #0x0]
.thumb
branch_2259ab4: @ 2259ab4 :thumb
	mov     r0, r5
	bl      Function_20067d0
	pop     {r3-r5,pc}
@ 0x2259abc

.thumb
Function_2259abc: @ 2259abc :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r1
	mov     r4, r2
	mov     r7, r0
	ldr     r1, [sp, #0x3c]
	mov     r0, r4
	mov     r6, r3
	bl      Function_2259980
	ldr     r1, [sp, #0x30]
	lsl     r0, r6, #24
	lsr     r0, r0, #24
	lsl     r1, r1, #24
	lsr     r2, r1, #24
	str     r0, [sp, #0x0]
	ldr     r3, [sp, #0x38]
	str     r2, [sp, #0x4]
	add     r4, #0xc
	lsl     r3, r3, #24
	str     r4, [sp, #0x8]
	mov     r1, #0x0
	str     r1, [sp, #0xc]
	str     r1, [sp, #0x10]
	str     r0, [sp, #0x14]
	str     r2, [sp, #0x18]
	ldr     r2, [sp, #0x34]
	lsl     r1, r5, #24
	lsl     r2, r2, #24
	mov     r0, r7
	lsr     r1, r1, #24
	lsr     r2, r2, #24
	lsr     r3, r3, #24
	bl      Function_20198e8
	lsl     r0, r6, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x30]
	ldr     r2, [sp, #0x34]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x40]
	ldr     r3, [sp, #0x38]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	lsl     r1, r5, #24
	lsl     r2, r2, #24
	lsl     r3, r3, #24
	str     r0, [sp, #0x8]
	mov     r0, r7
	lsr     r1, r1, #24
	lsr     r2, r2, #24
	lsr     r3, r3, #24
	bl      Function_2019e2c
	lsl     r1, r5, #24
	mov     r0, r7
	lsr     r1, r1, #24
	bl      Function_201c3c0
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x2259b3c

.thumb
Function_2259b3c: @ 2259b3c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r7, r0
	str     r1, [sp, #0x4]
	ldr     r0, [sp, #0x24]
	mov     r1, #0x14
	mov     r5, r2
	mov     r6, r3
	bl      malloc
	mov     r4, r0
	mov     r2, r4
	mov     r1, #0x14
	mov     r0, #0x0
.thumb
branch_2259b58: @ 2259b58 :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_2259b58
	ldr     r0, [sp, #0x24]
	ldr     r1, [sp, #0x4]
	str     r0, [sp, #0x0]
	mov     r0, r7
	mov     r2, #0x0
	add     r3, r4, #0x4
	bl      Function_2006f50
	str     r0, [r4, #0x8]
	str     r5, [r4, #0x0]
	ldr     r0, [sp, #0x20]
	str     r6, [r4, #0xc]
	str     r0, [r4, #0x10]
	ldr     r0, [pc, #0xc] @ 0x2259b88, (=0x2259bd5)
	mov     r1, r4
	mov     r2, #0x80
	bl      AddTaskToTaskList3
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2259b88

.word 0x2259bd5 @ 0x2259b88
.thumb
Function_2259b8c: @ 2259b8c :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	str     r1, [sp, #0x0]
	ldr     r0, [sp, #0x1c]
	mov     r1, #0x14
	mov     r5, r2
	mov     r6, r3
	bl      malloc
	mov     r4, r0
	mov     r2, r4
	mov     r1, #0x14
	mov     r0, #0x0
.thumb
branch_2259ba6: @ 2259ba6 :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_2259ba6
	ldr     r1, [sp, #0x0]
	ldr     r3, [sp, #0x1c]
	mov     r0, r7
	mov     r2, r4
	bl      Function_2006f88
	str     r0, [r4, #0x4]
	str     r5, [r4, #0x8]
	ldr     r0, [sp, #0x18]
	str     r6, [r4, #0xc]
	str     r0, [r4, #0x10]
	ldr     r0, [pc, #0x8] @ 0x2259bd0, (=0x2259c11)
	mov     r1, r4
	mov     r2, #0x80
	bl      AddTaskToTaskList3
	pop     {r3-r7,pc}
@ 0x2259bd0

.word 0x2259c11 @ 0x2259bd0
.thumb
Function_2259bd4: @ 2259bd4 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r1, [r4, #0x4]
	mov     r5, r0
	ldr     r0, [r1, #0x14]
	ldr     r1, [r1, #0x10]
	blx     DC_FlushRange
	ldr     r3, [r4, #0x4]
	ldr     r0, [r4, #0x10]
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0xc]
	ldr     r2, [r3, #0x14]
	lsl     r1, r1, #24
	ldr     r0, [r4, #0x0]
	ldr     r3, [r3, #0x10]
	lsr     r1, r1, #24
	bl      Function_201958c
	mov     r0, r5
	bl      Call_RemoveTaskFromTaskList
	ldr     r0, [r4, #0x8]
	bl      free
	mov     r0, r4
	bl      free
	pop     {r3-r5,pc}
@ 0x2259c0e


.align 2, 0


.thumb
Function_2259c10: @ 2259c10 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	ldr     r1, [r4, #0x10]
	ldr     r0, [r0, #0xc]
	blx     DC_FlushRange
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x0
	bne     branch_2259c34
	ldr     r0, [r4, #0x0]
	ldr     r1, [r4, #0xc]
	ldr     r0, [r0, #0xc]
	ldr     r2, [r4, #0x10]
	blx     GX_LoadBGPltt
	b       branch_2259c44
@ 0x2259c34

.thumb
branch_2259c34: @ 2259c34 :thumb
	cmp     r0, #0x4
	bne     branch_2259c44
	ldr     r0, [r4, #0x0]
	ldr     r1, [r4, #0xc]
	ldr     r0, [r0, #0xc]
	ldr     r2, [r4, #0x10]
	blx     GXS_LoadBGPltt
.thumb
branch_2259c44: @ 2259c44 :thumb
	mov     r0, r5
	bl      Call_RemoveTaskFromTaskList
	ldr     r0, [r4, #0x4]
	bl      free
	mov     r0, r4
	bl      free
	pop     {r3-r5,pc}
@ 0x2259c58

.thumb
Function_2259c58: @ 2259c58 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	cmp     r5, #0x0
	bne     branch_2259c66
	bl      ErrorHandling
.thumb
branch_2259c66: @ 2259c66 :thumb
	cmp     r4, #0x0
	bne     branch_2259c6e
	bl      ErrorHandling
.thumb
branch_2259c6e: @ 2259c6e :thumb
	ldr     r0, [r4, #0x0]
	bl      Function_2021aa0
	str     r0, [r5, #0x0]
	cmp     r0, #0x0
	bne     branch_2259c7e
	bl      ErrorHandling
.thumb
branch_2259c7e: @ 2259c7e :thumb
	ldr     r0, [r4, #0xc]
	str     r0, [r5, #0x4]
	ldr     r0, [r4, #0x8]
	str     r0, [r5, #0x8]
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_2259c90
	str     r0, [r5, #0xc]
	pop     {r3-r5,pc}
@ 0x2259c90

.thumb
branch_2259c90: @ 2259c90 :thumb
	ldr     r0, [pc, #0x4] @ 0x2259c98, (=0x2259d95)
	str     r0, [r5, #0xc]
	pop     {r3-r5,pc}
@ 0x2259c96


.align 2


.word Function_2259d94+1 @ =0x2259d95, 0x2259c98
.thumb
Function_2259c9c: @ 2259c9c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x30
	mov     r4, r1
	mov     r5, r0
	bl      Function_2259c58
	ldr     r0, [r4, #0x14]
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x10]
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x18]
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x0]
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x24]
	str     r0, [sp, #0x14]
	ldr     r0, [r4, #0x1c]
	str     r0, [sp, #0x18]
	ldr     r0, [r4, #0x20]
	str     r0, [sp, #0x1c]
	mov     r0, #0x0
	str     r0, [sp, #0x20]
	str     r0, [sp, #0x24]
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x28]
	str     r0, [sp, #0x28]
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x2c]
	str     r0, [sp, #0x2c]
	add     r0, sp, #0x0
	bl      Function_20127e8
	str     r0, [r5, #0x10]
	add     sp, #0x30
	pop     {r3-r5,pc}
@ 0x2259ce8

.thumb
Function_2259ce8: @ 2259ce8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2021bd4
	mov     r1, #0x10
	mov     r0, #0x0
.thumb
branch_2259cf6: @ 2259cf6 :thumb
	strb    r0, [r4, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_2259cf6
	pop     {r4,pc}
@ 0x2259d00

.thumb
Function_2259d00: @ 2259d00 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2259ce8
	ldr     r0, [r4, #0x10]
	bl      Function_2012870
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x20
	blx     Call_FillMemWithValue
	pop     {r4,pc}
@ 0x2259d1a


.align 2, 0


.thumb
Function_2259d1c: @ 2259d1c :thumb
	push    {r3,lr}
	ldr     r2, [r0, #0x4]
	cmp     r1, r2
	bne     branch_2259d2a
	ldr     r1, [r0, #0x8]
	ldr     r2, [r0, #0xc]
	blx     r2
.thumb
branch_2259d2a: @ 2259d2a :thumb
	pop     {r3,pc}
@ 0x2259d2c

.thumb
Function_2259d2c: @ 2259d2c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r7, r1
	mov     r6, r2
	mov     r4, #0x2
	add     r5, #0x20
.thumb
branch_2259d38: @ 2259d38 :thumb
	cmp     r4, r7
	beq     branch_2259d44
	mov     r0, r5
	bl      Function_2259da4
	b       branch_2259d68
@ 0x2259d44

.thumb
branch_2259d44: @ 2259d44 :thumb
	cmp     r6, #0x0
	bne     branch_2259d56
	mov     r0, r5
	bl      Function_2259db0
	ldr     r0, [pc, #0x24] @ 0x2259d74, (=0x67d)
	bl      Function_2005748
	b       branch_2259d68
@ 0x2259d56

.thumb
branch_2259d56: @ 2259d56 :thumb
	cmp     r6, #0x2
	bne     branch_2259d62
	mov     r0, r5
	bl      Function_2259d98
	b       branch_2259d68
@ 0x2259d62

.thumb
branch_2259d62: @ 2259d62 :thumb
	mov     r0, r5
	bl      Function_2259db0
.thumb
branch_2259d68: @ 2259d68 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x3
	ble     branch_2259d38
	pop     {r3-r7,pc}
@ 0x2259d72


.align 2


.word 0x67d @ 0x2259d74
.thumb
Function_2259d78: @ 2259d78 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3
	cmp     r5, #0x0
	bne     branch_2259d8a
	bl      ErrorHandling
.thumb
branch_2259d8a: @ 2259d8a :thumb
	str     r7, [r5, #0x4]
	str     r6, [r5, #0x8]
	str     r4, [r5, #0xc]
	pop     {r3-r7,pc}
@ 0x2259d92


.align 2, 0


.thumb
Function_2259d94: @ 2259d94 :thumb
	bx      lr
@ 0x2259d96


.align 2, 0


.thumb
Function_2259d98: @ 2259d98 :thumb
	ldr     r3, [pc, #0x4] @ 0x2259da0, (=Function_2021e50+1)
	ldr     r0, [r0, #0x0]
	mov     r1, #0x2
	bx      r3
@ 0x2259da0

.word Function_2021e50+1 @ 0x2259da0
.thumb
Function_2259da4: @ 2259da4 :thumb
	ldr     r3, [pc, #0x4] @ 0x2259dac, (=Function_2021e50+1)
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bx      r3
@ 0x2259dac

.word Function_2021e50+1 @ 0x2259dac



.thumb
Function_2259db0: @ 2259db0 :thumb
	ldr     r3, [pc, #0x4] @ 0x2259db8, (=Function_2021e50+1)
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bx      r3
@ 0x2259db8

.word Function_2021e50+1 @ 0x2259db8



.thumb
Function_2259dbc: @ 2259dbc :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r4, r1
	mov     r0, #0x1
	mov     r1, #0xd
	bl      Function_2012744
	str     r0, [r5, #0x64]
	mov     r0, r4
	bl      Function_225a218
	mov     r0, #0x90
	str     r0, [sp, #0x0]
	mov     r0, #0x28
	str     r0, [sp, #0x4]
	mov     r0, #0x20
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, r4
	mov     r3, #0x30
	bl      Function_225a0e4
	mov     r0, #0x28
	str     r0, [sp, #0x0]
	mov     r0, #0x18
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r0, #0x6c
	mov     r1, #0x0
	mov     r2, #0x30
	mov     r3, #0x98
	bl      Function_225a200
	mov     r0, #0x90
	str     r0, [sp, #0x0]
	mov     r0, #0x28
	str     r0, [sp, #0x4]
	mov     r0, #0x20
	str     r0, [sp, #0x8]
	mov     r0, r5
	add     r0, #0x10
	mov     r1, #0x1
	mov     r2, r4
	mov     r3, #0x8
	bl      Function_225a0e4
	mov     r0, #0x28
	str     r0, [sp, #0x0]
	mov     r0, #0x18
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r0, #0x6c
	mov     r1, #0x1
	mov     r2, #0x8
	mov     r3, #0x98
	bl      Function_225a200
	mov     r0, #0x90
	str     r0, [sp, #0x0]
	mov     r0, #0x28
	str     r0, [sp, #0x4]
	mov     r0, #0x2a
	str     r0, [sp, #0x8]
	mov     r0, r5
	add     r0, #0x20
	mov     r1, #0x2
	mov     r2, r4
	mov     r3, #0x60
	bl      Function_225a0e4
	mov     r0, #0x28
	str     r0, [sp, #0x0]
	mov     r0, #0x22
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r0, #0x6c
	mov     r1, #0x2
	mov     r2, #0x60
	mov     r3, #0x9c
	bl      Function_225a200
	mov     r0, #0x90
	str     r0, [sp, #0x0]
	mov     r0, #0x28
	str     r0, [sp, #0x4]
	mov     r0, #0x2a
	str     r0, [sp, #0x8]
	mov     r0, r5
	add     r0, #0x30
	mov     r1, #0x3
	mov     r2, r4
	mov     r3, #0x88
	bl      Function_225a0e4
	mov     r0, #0x28
	str     r0, [sp, #0x0]
	mov     r0, #0x22
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r0, #0x6c
	mov     r1, #0x3
	mov     r2, #0x88
	mov     r3, #0x9c
	bl      Function_225a200
	mov     r0, #0x2
	mov     r1, #0xe
	bl      Function_2002bb8
	mov     r0, #0x9
	str     r0, [sp, #0x0]
	mov     r0, #0x5
	str     r0, [sp, #0x4]
	ldr     r2, [pc, #0x78] @ 0x2259f1c, (=0x181)
	mov     r0, r4
	mov     r1, #0x1a
	mov     r3, #0x0
	bl      Function_225a348
	mov     r6, r0
	str     r6, [sp, #0x0]
	mov     r0, #0xb8
	str     r0, [sp, #0x4]
	mov     r0, #0x90
	str     r0, [sp, #0x8]
	mov     r0, #0x48
	str     r0, [sp, #0xc]
	mov     r0, #0x2a
	str     r0, [sp, #0x10]
	mov     r0, r5
	ldr     r3, [r5, #0x64]
	add     r0, #0x40
	mov     r1, #0x4
	mov     r2, r4
	bl      Function_225a154
	mov     r0, #0x48
	str     r0, [sp, #0x0]
	mov     r0, #0x22
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r0, #0x6c
	mov     r1, #0x4
	mov     r2, #0xb8
	mov     r3, #0x9c
	bl      Function_225a200
	mov     r0, r6
	bl      Function_225a3d0
	mov     r0, #0x2
	bl      Function_2002c60
	mov     r0, #0x1
	str     r0, [r5, #0x60]
	mov     r0, r4
	bl      Function_225a2a8
	mov     r0, r5
	add     r0, #0x20
	bl      Function_2259d98
	mov     r0, #0xd
	str     r0, [sp, #0x0]
	mov     r0, r5
	ldr     r2, [pc, #0x14] @ 0x2259f20, (=0x225a02d)
	add     r0, #0x6c
	mov     r1, #0x5
	mov     r3, r5
	bl      Function_2023fcc
	str     r0, [r5, #0x68]
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x2259f1c

.word 0x181 @ 0x2259f1c
.word 0x225a02d @ 0x2259f20
.thumb
Function_2259f24: @ 2259f24 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r4, #0x0
.thumb
branch_2259f2c: @ 2259f2c :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_22552ec
	mov     r0, r5
	mov     r1, r4
	bl      Function_2255300
	mov     r0, r4
	bl      Function_201eb50
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x5
	blt     branch_2259f2c
	mov     r0, #0x0
	bl      Function_201f9f0
	mov     r0, #0x1
	bl      Function_201f9f0
	mov     r5, #0x0
	mov     r4, r6
.thumb
branch_2259f58: @ 2259f58 :thumb
	mov     r0, r4
	bl      Function_2259ce8
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r4, #0x10
	cmp     r5, #0x4
	blt     branch_2259f58
	mov     r0, r6
	add     r0, #0x54
	bl      Function_201ee28
	mov     r0, r6
	add     r0, #0x40
	bl      Function_2259d00
	ldr     r0, [r6, #0x64]
	bl      Function_20127bc
	ldr     r0, [r6, #0x68]
	bl      Function_2024034
	mov     r0, #0x0
	str     r0, [r6, #0x68]
	pop     {r4-r6,pc}
@ 0x2259f88

.thumb
Function_2259f88: @ 2259f88 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x68]
	cmp     r0, #0x0
	bne     branch_2259f96
	bl      ErrorHandling
.thumb
branch_2259f96: @ 2259f96 :thumb
	ldr     r0, [r4, #0x68]
	bl      Function_202404c
	pop     {r4,pc}
@ 0x2259f9e


.align 2, 0


.thumb
Function_2259fa0: @ 2259fa0 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x40
	mov     r1, #0x3
	bl      Function_225a2d0
	mov     r0, r4
	add     r0, #0x40
	mov     r1, #0x3
	bl      Function_225a2f4
	mov     r0, r4
	mov     r1, #0x2
	mov     r2, #0x3
	bl      Function_2259d2c
	pop     {r4,pc}
@ 0x2259fc2


.align 2, 0


.thumb
Function_2259fc4: @ 2259fc4 :thumb
	push    {r3-r7,lr}
	str     r0, [sp, #0x0]
	mov     r6, r1
	mov     r7, r2
	mov     r4, #0x0
	mov     r5, r0
.thumb
branch_2259fd0: @ 2259fd0 :thumb
	mov     r0, r5
	mov     r1, r6
	mov     r2, r7
	bl      Function_225a3dc
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x4
	blt     branch_2259fd0
	ldr     r0, [sp, #0x0]
	mov     r1, r6
	add     r0, #0x40
	mov     r2, r7
	str     r0, [sp, #0x0]
	bl      Function_225a418
	pop     {r3-r7,pc}
@ 0x2259ff2


.align 2, 0


.thumb
Function_2259ff4: @ 2259ff4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3
	cmp     r5, #0x0
	bne     branch_225a006
	bl      ErrorHandling
.thumb
branch_225a006: @ 225a006 :thumb
	cmp     r4, #0x4
	bge     branch_225a01a
	lsl     r0, r4, #4
	ldr     r3, [sp, #0x18]
	add     r0, r5, r0
	mov     r1, r6
	mov     r2, r7
	bl      Function_2259d78
	pop     {r3-r7,pc}
@ 0x225a01a

.thumb
branch_225a01a: @ 225a01a :thumb
	add     r5, #0x40
	ldr     r3, [sp, #0x18]
	mov     r0, r5
	mov     r1, r6
	mov     r2, r7
	bl      Function_2259d78
	pop     {r3-r7,pc}
@ 0x225a02a


.align 2, 0


.thumb
Function_225a02c: @ 225a02c :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r4, r2
	cmp     r6, #0x4
	bhi     branch_225a0d4
	add     r0, r6, r6
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x225a044

Jumppoints_225a044:
.hword branch_225a04e - Jumppoints_225a044 - 2
.hword branch_225a06a - Jumppoints_225a044 - 2
.hword branch_225a08c - Jumppoints_225a044 - 2
.hword branch_225a08c - Jumppoints_225a044 - 2
.hword branch_225a0a2 - Jumppoints_225a044 - 2
.thumb
branch_225a04e: @ 225a04e :thumb
	mov     r0, r4
	bl      Function_225a2d0
	ldr     r1, [pc, #0x84] @ 0x225a0dc, (=0x681)
	mov     r0, r4
	mov     r2, #0x0
	mov     r3, r5
	bl      Function_225a338
	mov     r0, r4
	mov     r1, r5
	bl      Function_2259d1c
	pop     {r4-r6,pc}
@ 0x225a06a

.thumb
branch_225a06a: @ 225a06a :thumb
	mov     r0, r4
	add     r0, #0x10
	bl      Function_225a2d0
	mov     r0, r4
	ldr     r1, [pc, #0x64] @ 0x225a0dc, (=0x681)
	add     r0, #0x10
	mov     r2, #0x0
	mov     r3, r5
	bl      Function_225a338
	add     r4, #0x10
	mov     r0, r4
	mov     r1, r5
	bl      Function_2259d1c
	pop     {r4-r6,pc}
@ 0x225a08c

.thumb
branch_225a08c: @ 225a08c :thumb
	mov     r0, r4
	mov     r1, r6
	mov     r2, r5
	bl      Function_2259d2c
	lsl     r0, r6, #4
	add     r0, r4, r0
	mov     r1, r5
	bl      Function_2259d1c
	pop     {r4-r6,pc}
@ 0x225a0a2

.thumb
branch_225a0a2: @ 225a0a2 :thumb
	ldr     r0, [r4, #0x60]
	cmp     r0, #0x1
	bne     branch_225a0d8
	mov     r0, r4
	add     r0, #0x40
	bl      Function_225a2d0
	mov     r0, r4
	add     r0, #0x40
	mov     r1, r5
	bl      Function_225a2f4
	mov     r0, r4
	ldr     r1, [pc, #0x20] @ 0x225a0e0, (=0x5e2)
	add     r0, #0x40
	mov     r2, #0x0
	mov     r3, r5
	bl      Function_225a338
	add     r4, #0x40
	mov     r0, r4
	mov     r1, r5
	bl      Function_2259d1c
	pop     {r4-r6,pc}
@ 0x225a0d4

.thumb
branch_225a0d4: @ 225a0d4 :thumb
	bl      ErrorHandling
.thumb
branch_225a0d8: @ 225a0d8 :thumb
	pop     {r4-r6,pc}
@ 0x225a0da


.align 2


.word 0x681 @ 0x225a0dc
.word 0x5e2 @ 0x225a0e0
.thumb
Function_225a0e4: @ 225a0e4 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x90
	mov     r6, r0
	mov     r0, #0x0
	str     r1, [sp, #0x0]
	mvn     r0, r0
	str     r0, [sp, #0x4]
	mov     r5, r2
	str     r0, [sp, #0x8]
	mov     r2, #0x0
	str     r2, [sp, #0xc]
	str     r2, [sp, #0x10]
	ldr     r0, [r5, #0x48]
	mov     r4, r3
	str     r0, [sp, #0x14]
	ldr     r0, [r5, #0x4c]
	mov     r3, r1
	str     r0, [sp, #0x18]
	ldr     r0, [r5, #0x50]
	str     r0, [sp, #0x1c]
	ldr     r0, [r5, #0x54]
	str     r0, [sp, #0x20]
	str     r2, [sp, #0x24]
	str     r2, [sp, #0x28]
	add     r0, sp, #0x5c
	bl      Function_20093b4
	ldr     r0, [r5, #0x44]
	mov     r2, #0x0
	mov     r1, #0x1
	str     r0, [sp, #0x2c]
	add     r0, sp, #0x5c
	str     r0, [sp, #0x30]
	lsl     r0, r4, #12
	str     r0, [sp, #0x34]
	ldr     r0, [sp, #0xa0]
	str     r1, [sp, #0x54]
	lsl     r0, r0, #12
	str     r0, [sp, #0x38]
	mov     r0, #0x2
	str     r0, [sp, #0x50]
	mov     r0, #0xe
	str     r0, [sp, #0x58]
	add     r0, sp, #0x2c
	str     r0, [sp, #0x80]
	str     r1, [sp, #0x8c]
	mov     r0, r6
	add     r1, sp, #0x80
	str     r2, [sp, #0x3c]
	str     r2, [sp, #0x84]
	str     r2, [sp, #0x88]
	bl      Function_2259c58
	add     sp, #0x90
	pop     {r4-r6,pc}
@ 0x225a152


.align 2, 0


.thumb
Function_225a154: @ 225a154 :thumb
	push    {r4-r6,lr}
	add     sp, #-0xa8
	mov     r5, r0
	mov     r0, #0x0
	str     r1, [sp, #0x0]
	mvn     r0, r0
	str     r0, [sp, #0x4]
	mov     r4, r2
	str     r0, [sp, #0x8]
	mov     r2, #0x0
	str     r2, [sp, #0xc]
	str     r2, [sp, #0x10]
	ldr     r0, [r4, #0x48]
	mov     r6, r3
	str     r0, [sp, #0x14]
	ldr     r0, [r4, #0x4c]
	mov     r3, r1
	str     r0, [sp, #0x18]
	ldr     r0, [r4, #0x50]
	str     r0, [sp, #0x1c]
	ldr     r0, [r4, #0x54]
	str     r0, [sp, #0x20]
	str     r2, [sp, #0x24]
	str     r2, [sp, #0x28]
	add     r0, sp, #0x5c
	bl      Function_20093b4
	ldr     r0, [r4, #0x44]
	mov     r2, #0xe
	str     r0, [sp, #0x2c]
	add     r0, sp, #0x5c
	str     r0, [sp, #0x30]
	ldr     r0, [sp, #0xbc]
	str     r2, [sp, #0x58]
	lsl     r0, r0, #12
	str     r0, [sp, #0x34]
	ldr     r0, [sp, #0xc0]
	add     r2, sp, #0x2c
	lsl     r0, r0, #12
	mov     r1, #0x2
	str     r2, [sp, #0x80]
	ldr     r2, [sp, #0xb8]
	str     r0, [sp, #0x38]
	mov     r0, #0x0
	str     r1, [sp, #0x50]
	mov     r1, #0x1
	str     r0, [sp, #0x3c]
	str     r1, [sp, #0x54]
	str     r0, [sp, #0x84]
	str     r0, [sp, #0x88]
	str     r0, [sp, #0x9c]
	mov     r0, #0x13
	str     r1, [sp, #0x8c]
	str     r6, [sp, #0x94]
	str     r2, [sp, #0x90]
	str     r0, [sp, #0xa0]
	ldr     r0, [r4, #0x4c]
	bl      Function_2009dc8
	mov     r1, #0x0
	bl      Function_200a72c
	str     r0, [sp, #0x98]
	ldr     r0, [sp, #0xb8]
	mov     r1, #0x1
	mov     r2, #0xd
	bl      Function_2012898
	mov     r1, #0x1
	mov     r3, r5
	mov     r2, r1
	add     r3, #0x14
	bl      Function_201ed94
	cmp     r0, #0x0
	bne     branch_225a1f0
	bl      ErrorHandling
.thumb
branch_225a1f0: @ 225a1f0 :thumb
	ldr     r0, [r5, #0x18]
	add     r1, sp, #0x80
	str     r0, [sp, #0xa4]
	mov     r0, r5
	bl      Function_2259c9c
	add     sp, #0xa8
	pop     {r4-r6,pc}
@ 0x225a200

.thumb
Function_225a200: @ 225a200 :thumb
	lsl     r1, r1, #2
	strb    r3, [r0, r1]
	add     r1, r0, r1
	ldr     r0, [sp, #0x4]
	strb    r2, [r1, #0x2]
	add     r0, r3, r0
	strb    r0, [r1, #0x1]
	ldr     r0, [sp, #0x0]
	add     r0, r2, r0
	strb    r0, [r1, #0x3]
	bx      lr
@ 0x225a216


.align 2, 0


.thumb
Function_225a218: @ 225a218 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x6b
	mov     r4, #0x0
	str     r0, [sp, #0xc]
	mov     r7, #0x6a
	mov     r6, #0x69
.thumb
branch_225a228: @ 225a228 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r1, #0x6
	str     r4, [sp, #0x4]
	lsl     r1, r1, #6
	ldr     r1, [r5, r1]
	ldr     r2, [sp, #0xc]
	mov     r0, r5
	mov     r3, #0x0
	bl      Function_2255248
	mov     r1, #0x6
	str     r4, [sp, #0x0]
	lsl     r1, r1, #6
	ldr     r1, [r5, r1]
	mov     r0, r5
	mov     r2, r7
	mov     r3, #0x0
	bl      Function_225528c
	mov     r1, #0x6
	str     r4, [sp, #0x0]
	lsl     r1, r1, #6
	ldr     r1, [r5, r1]
	mov     r0, r5
	mov     r2, r6
	mov     r3, #0x0
	bl      Function_22552a8
	ldr     r0, [sp, #0xc]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cc0 @ add r0, r0, #0x3
	str     r0, [sp, #0xc]
	.hword  0x1cff @ add r7, r7, #0x3
	.hword  0x1cf6 @ add r6, r6, #0x3
	cmp     r4, #0x5
	blt     branch_225a228
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r1, #0x3
	str     r1, [sp, #0x4]
	mov     r3, #0x0
	str     r3, [sp, #0x8]
	lsl     r1, r1, #7
	ldr     r1, [r5, r1]
	mov     r0, r5
	mov     r2, #0x68
	bl      Function_2255268
	mov     r1, #0x1
	str     r1, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r1, #0x6
	lsl     r1, r1, #6
	ldr     r1, [r5, r1]
	mov     r0, r5
	mov     r2, #0x78
	mov     r3, #0x0
	bl      Function_2255268
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x225a2a8

.thumb
Function_225a2a8: @ 225a2a8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_225a2ae: @ 225a2ae :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_22552c4
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x5
	blt     branch_225a2ae
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_22552d8
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_22552d8
	pop     {r3-r5,pc}
@ 0x225a2ce


.align 2, 0


.thumb
Function_225a2d0: @ 225a2d0 :thumb
	push    {r3,lr}
	cmp     r1, #0x0
	bne     branch_225a2dc
	bl      Function_2259db0
	pop     {r3,pc}
@ 0x225a2dc

.thumb
branch_225a2dc: @ 225a2dc :thumb
	cmp     r1, #0x2
	bne     branch_225a2e6
	bl      Function_2259d98
	pop     {r3,pc}
@ 0x225a2e6

.thumb
branch_225a2e6: @ 225a2e6 :thumb
	cmp     r1, #0x1
	beq     branch_225a2ee
	cmp     r1, #0x3
	bne     branch_225a2f2
.thumb
branch_225a2ee: @ 225a2ee :thumb
	bl      Function_2259da4
.thumb
branch_225a2f2: @ 225a2f2 :thumb
	pop     {r3,pc}
@ 0x225a2f4

.thumb
Function_225a2f4: @ 225a2f4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bne     branch_225a310
	ldr     r0, [r5, #0x10]
	mov     r1, #0x0
	mov     r2, #0xf
	bl      Function_20128c4
	ldr     r0, [r5, #0x10]
	mov     r1, #0x4
	bl      Function_2012a60
	pop     {r3-r5,pc}
@ 0x225a310

.thumb
branch_225a310: @ 225a310 :thumb
	cmp     r4, #0x1
	bne     branch_225a31e
	ldr     r0, [r5, #0x10]
	mov     r1, #0x0
	mov     r2, #0x13
	bl      Function_20128c4
.thumb
branch_225a31e: @ 225a31e :thumb
	cmp     r4, #0x3
	bne     branch_225a334
	ldr     r0, [r5, #0x10]
	mov     r1, #0x0
	mov     r2, #0x13
	bl      Function_20128c4
	ldr     r0, [r5, #0x10]
	mov     r1, #0x3
	bl      Function_2012a60
.thumb
branch_225a334: @ 225a334 :thumb
	pop     {r3-r5,pc}
@ 0x225a336


.align 2, 0


.thumb
Function_225a338: @ 225a338 :thumb
	push    {r3,lr}
	cmp     r3, r2
	bne     branch_225a346
	lsl     r0, r1, #16
	lsr     r0, r0, #16
	bl      Function_2005748
.thumb
branch_225a346: @ 225a346 :thumb
	pop     {r3,pc}
@ 0x225a348

.thumb
Function_225a348: @ 225a348 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r6, r0
	mov     r4, r3
	mov     r0, #0x0
	mov     r3, #0xd
	bl      Function_200b144
	mov     r7, r0
	bne     branch_225a360
	bl      ErrorHandling
.thumb
branch_225a360: @ 225a360 :thumb
	mov     r0, r7
	mov     r1, r4
	bl      Function_200b1ec
	mov     r5, r0
	mov     r0, #0xe
	mov     r1, #0x1
	bl      Function_201a778
	mov     r4, r0
	bl      Function_201a7a0
	mov     r0, #0x0
	ldr     r2, [sp, #0x28]
	ldr     r3, [sp, #0x2c]
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	lsl     r2, r2, #24
	lsl     r3, r3, #24
	ldr     r0, [r6, #0x40]
	mov     r1, r4
	lsr     r2, r2, #24
	lsr     r3, r3, #24
	bl      Function_201a870
	ldr     r3, [sp, #0x28]
	mov     r0, #0x2
	mov     r1, r5
	mov     r2, #0x0
	lsl     r3, r3, #3
	bl      Function_2002eec
	mov     r1, #0x0
	mov     r3, r0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x20] @ 0x225a3cc, (=0x10203)
	mov     r2, r5
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_201d78c
	mov     r0, r5
	bl      Function_20237bc
	mov     r0, r7
	bl      Function_200b190
	mov     r0, r4
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x225a3cc

.word 0x10203 @ 0x225a3cc
.thumb
Function_225a3d0: @ 225a3d0 :thumb
	ldr     r3, [pc, #0x4] @ 0x225a3d8, (=Function_201a928+1)
	mov     r1, #0x1
	bx      r3
@ 0x225a3d6


.align 2


.word Function_201a928+1 @ 0x225a3d8
.thumb
Function_225a3dc: @ 225a3dc :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	mov     r6, r2
	bl      Function_2021d28
	mov     r3, r0
	add     r2, sp, #0x0
	ldmia   r3!, {r0,r1}
	mov     r7, r2
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	ldr     r1, [sp, #0x0]
	lsl     r0, r4, #12
	add     r0, r1, r0
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	lsl     r0, r6, #12
	add     r0, r1, r0
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x0]
	mov     r1, r7
	bl      Function_2021c50
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x225a416


.align 2, 0


.thumb
Function_225a418: @ 225a418 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_225a3dc
	ldr     r0, [r4, #0x10]
	bl      Function_2012938
	pop     {r4,pc}
@ 0x225a428

.thumb
Function_225a428: @ 225a428 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r4, r1
	mov     r6, r2
	mov     r1, #0x1
	mov     r5, r0
	tst     r1, r6
	beq     branch_225a442
	mov     r2, #0x52
	mov     r1, #0x0
	lsl     r2, r2, #2
	blx     Call_FillMemWithValue
.thumb
branch_225a442: @ 225a442 :thumb
	mov     r0, #0x2
	tst     r0, r6
	beq     branch_225a450
	ldr     r1, [r4, #0x0]
	mov     r0, r5
	bl      Function_225a6e0
.thumb
branch_225a450: @ 225a450 :thumb
	mov     r0, #0x4
	mov     r1, r6
	tst     r1, r0
	beq     branch_225a474
	mov     r1, #0x1b
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1f
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	mov     r0, r5
	ldr     r1, [r4, #0x0]
	add     r0, #0x2c
	mov     r2, #0x2
	mov     r3, #0x13
	bl      Function_225a748
.thumb
branch_225a474: @ 225a474 :thumb
	mov     r0, #0x8
	tst     r0, r6
	beq     branch_225a48c
	ldr     r0, [r4, #0x24]
	str     r0, [sp, #0x0]
	mov     r0, r5
	ldr     r1, [r4, #0x4]
	ldr     r2, [r4, #0x8]
	ldr     r3, [r4, #0x10]
	add     r0, #0x38
	bl      Function_225a914
.thumb
branch_225a48c: @ 225a48c :thumb
	mov     r0, #0x10
	tst     r0, r6
	beq     branch_225a4ac
	ldr     r0, [r4, #0x0]
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x20]
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x24]
	str     r0, [sp, #0x8]
	mov     r0, r5
	ldr     r1, [r4, #0x4]
	ldr     r2, [r4, #0x8]
	ldr     r3, [r4, #0x1c]
	add     r0, #0xa0
	bl      Function_225ab54
.thumb
branch_225a4ac: @ 225a4ac :thumb
	mov     r0, #0x20
	tst     r0, r6
	beq     branch_225a522
	mov     r0, #0x1b
	str     r0, [sp, #0x0]
	mov     r2, #0x2
	str     r2, [sp, #0x4]
	mov     r0, #0x8b
	str     r0, [sp, #0x8]
	mov     r3, #0x1
	str     r3, [sp, #0xc]
	add     r0, #0xa9
	ldr     r1, [r4, #0x0]
	add     r0, r5, r0
	bl      Function_225a748
	mov     r0, #0x4d
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0xf
	bl      Function_201ada4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x7c] @ 0x225a55c, (=0x1020f)
	mov     r1, #0x1a
	str     r0, [sp, #0x8]
	mov     r0, #0xff
	str     r0, [sp, #0xc]
	add     r0, #0x35
	ldr     r0, [r5, r0]
	ldr     r2, [r4, #0x14]
	mov     r3, #0x6
	bl      Function_225a860
	mov     r0, #0x48
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x5c] @ 0x225a55c, (=0x1020f)
	mov     r1, #0x1a
	str     r0, [sp, #0x8]
	mov     r0, #0xff
	str     r0, [sp, #0xc]
	add     r0, #0x35
	ldr     r0, [r5, r0]
	ldr     r2, [r4, #0x14]
	ldr     r3, [r4, #0x18]
	bl      Function_225a860
	mov     r0, #0x4d
	lsl     r0, r0, #2
	mov     r2, #0x1
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	mov     r3, r2
	bl      Function_200e060
.thumb
branch_225a522: @ 225a522 :thumb
	ldr     r0, [r4, #0x4]
	str     r0, [r5, #0x30]
	ldr     r0, [r4, #0x8]
	str     r0, [r5, #0x34]
	ldr     r0, [r4, #0x0]
	ldr     r1, [r4, #0xc]
	bl      Function_225a718
	ldr     r0, [r4, #0xc]
	bl      Function_2027b50
	mov     r1, #0x4f
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r0, [r4, #0xc]
	bl      Function_2027ac0
	mov     r1, #0x5
	lsl     r1, r1, #6
	str     r0, [r5, r1]
	mov     r0, r1
	sub     r0, #0x8
	ldr     r0, [r5, r0]
	sub     r1, #0x8
	orr     r0, r6
	str     r0, [r5, r1]
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x225a55a


.align 2


.word 0x1020f @ 0x225a55c
.thumb
Function_225a560: @ 225a560 :thumb
	push    {r4,lr}
	mov     r1, #0x4e
	mov     r4, r0
	lsl     r1, r1, #2
	ldr     r2, [r4, r1]
	mov     r1, #0x2
	tst     r1, r2
	beq     branch_225a580
	bl      Function_225a7b8
	mov     r1, #0x4e
	lsl     r1, r1, #2
	ldr     r2, [r4, r1]
	mov     r0, #0x2
	bic     r2, r0
	str     r2, [r4, r1]
.thumb
branch_225a580: @ 225a580 :thumb
	mov     r0, #0x4e
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	mov     r0, #0x4
	tst     r0, r1
	beq     branch_225a59e
	ldr     r0, [r4, #0x2c]
	bl      Function_225a7c0
	mov     r1, #0x4e
	lsl     r1, r1, #2
	ldr     r2, [r4, r1]
	mov     r0, #0x4
	bic     r2, r0
	str     r2, [r4, r1]
.thumb
branch_225a59e: @ 225a59e :thumb
	mov     r0, #0x4e
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	mov     r0, #0x8
	tst     r0, r1
	beq     branch_225a5c0
	mov     r0, r4
	ldr     r1, [r4, #0x34]
	add     r0, #0x38
	bl      Function_225aa10
	mov     r1, #0x4e
	lsl     r1, r1, #2
	ldr     r2, [r4, r1]
	mov     r0, #0x8
	bic     r2, r0
	str     r2, [r4, r1]
.thumb
branch_225a5c0: @ 225a5c0 :thumb
	mov     r0, #0x4e
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	mov     r0, #0x10
	tst     r0, r1
	beq     branch_225a5e2
	mov     r0, r4
	ldr     r1, [r4, #0x34]
	add     r0, #0xa0
	bl      Function_225ac58
	mov     r1, #0x4e
	lsl     r1, r1, #2
	ldr     r2, [r4, r1]
	mov     r0, #0x10
	bic     r2, r0
	str     r2, [r4, r1]
.thumb
branch_225a5e2: @ 225a5e2 :thumb
	mov     r0, #0x4e
	lsl     r0, r0, #2
	ldr     r2, [r4, r0]
	mov     r1, #0x20
	tst     r1, r2
	beq     branch_225a602
	.hword  0x1f00 @ sub r0, r0, #0x4
	ldr     r0, [r4, r0]
	bl      Function_225a7c0
	mov     r1, #0x4e
	lsl     r1, r1, #2
	ldr     r2, [r4, r1]
	mov     r0, #0x20
	bic     r2, r0
	str     r2, [r4, r1]
.thumb
branch_225a602: @ 225a602 :thumb
	mov     r2, #0x52
	mov     r0, r4
	mov     r1, #0x0
	lsl     r2, r2, #2
	blx     Call_FillMemWithValue
	pop     {r4,pc}
@ 0x225a610

.thumb
Function_225a610: @ 225a610 :thumb
	push    {r3,lr}
	mov     r1, #0x4e
	lsl     r1, r1, #2
	ldr     r2, [r0, r1]
	mov     r1, #0x10
	tst     r1, r2
	beq     branch_225a624
	add     r0, #0xa0
	bl      Function_225ac8c
.thumb
branch_225a624: @ 225a624 :thumb
	pop     {r3,pc}
@ 0x225a626


.align 2, 0


.thumb
Function_225a628: @ 225a628 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r0, #0x4e
	lsl     r0, r0, #2
	mov     r4, r1
	ldr     r1, [r5, r0]
	mov     r0, #0x4
	mov     r6, r2
	mov     r7, r3
	tst     r0, r1
	bne     branch_225a644
	bl      ErrorHandling
.thumb
branch_225a644: @ 225a644 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0xff
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x2c]
	mov     r1, r4
	mov     r2, r6
	mov     r3, r7
	bl      Function_225a7cc
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x225a65e


.align 2, 0


.thumb
Function_225a660: @ 225a660 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x4e
	lsl     r0, r0, #2
	mov     r4, r1
	ldr     r1, [r5, r0]
	mov     r0, #0x4
	mov     r6, r2
	mov     r7, r3
	tst     r0, r1
	bne     branch_225a67c
	bl      ErrorHandling
.thumb
branch_225a67c: @ 225a67c :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x5
	lsl     r0, r0, #6
	ldr     r1, [r5, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [sp, #0x8]
	add     r0, r5, r0
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x2c]
	mov     r1, r4
	mov     r2, r6
	mov     r3, r7
	bl      Function_225a814
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x225a6a0

.thumb
Function_225a6a0: @ 225a6a0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x51
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_20237bc
	mov     r0, #0x51
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	pop     {r4,pc}
@ 0x225a6b8

.thumb
Function_225a6b8: @ 225a6b8 :thumb
	ldr     r3, [pc, #0x4] @ 0x225a6c0, (=0x225a9c9)
	add     r0, #0x38
	bx      r3
@ 0x225a6be


.align 2


.word 0x225a9c9 @ 0x225a6c0
.thumb
Function_225a6c4: @ 225a6c4 :thumb
	add     r0, #0xbc
	ldr     r0, [r0, #0x0]
	bx      lr
@ 0x225a6ca


.align 2, 0


.thumb
Function_225a6cc: @ 225a6cc :thumb
	add     r0, #0xc0
	str     r1, [r0, #0x0]
	bx      lr
@ 0x225a6d2


.align 2, 0


.thumb
Function_225a6d4: @ 225a6d4 :thumb
	ldr     r3, [pc, #0x4] @ 0x225a6dc, (=0x225af35)
	add     r0, #0xd0
	bx      r3
@ 0x225a6da


.align 2


.word Function_225af34+1 @ =0x225af35, 0x225a6dc
.thumb
Function_225a6e0: @ 225a6e0 :thumb
	push    {r3,lr}
	add     sp, #-0x30
	str     r1, [sp, #0x0]
	mov     r1, #0x19
	str     r1, [sp, #0x4]
	mov     r1, #0xe0
	str     r1, [sp, #0x8]
	mov     r1, #0xe1
	str     r1, [sp, #0xc]
	mov     r2, #0x0
	mov     r1, #0xe2
	str     r1, [sp, #0x10]
	mov     r1, #0x4
	str     r1, [sp, #0x1c]
	mov     r1, #0x1
	str     r1, [sp, #0x20]
	mov     r1, #0xe
	str     r1, [sp, #0x2c]
	add     r1, sp, #0x0
	str     r2, [sp, #0x14]
	str     r2, [sp, #0x18]
	str     r2, [sp, #0x24]
	str     r2, [sp, #0x28]
	bl      Function_22597bc
	add     sp, #0x30
	pop     {r3,pc}
@ 0x225a716


.align 2, 0


.thumb
Function_225a718: @ 225a718 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	mov     r0, r1
	bl      Function_2027b50
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0xe
	mov     r2, #0x1
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x5
	mov     r3, r2
	bl      Function_200dd0c
	mov     r0, #0x4
	mov     r1, #0x40
	mov     r2, #0xe
	bl      Function_2002e98
	add     sp, #0x8
	pop     {r4,pc}
@ 0x225a748

.thumb
Function_225a748: @ 225a748 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r7, r1
	mov     r6, r3
	mov     r0, #0xe
	mov     r1, #0x1
	mov     r4, r2
	bl      Function_201a778
	str     r0, [r5, #0x0]
	bl      Function_201a7a0
	lsl     r0, r6, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x28]
	lsl     r3, r4, #24
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x2c]
	mov     r2, #0x5
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	mov     r0, #0x2
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x30]
	lsr     r3, r3, #24
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	ldr     r1, [r5, #0x0]
	mov     r0, r7
	bl      Function_201a7e8
	ldr     r0, [r5, #0x0]
	mov     r1, #0xf
	bl      Function_201ada4
	ldr     r0, [sp, #0x34]
	cmp     r0, #0x0
	beq     branch_225a7ac
	mov     r2, #0x1
	ldr     r0, [r5, #0x0]
	mov     r1, #0x0
	mov     r3, r2
	bl      Function_200e060
.thumb
branch_225a7ac: @ 225a7ac :thumb
	ldr     r0, [r5, #0x0]
	bl      Function_201a954
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x225a7b6


.align 2, 0


.thumb
Function_225a7b8: @ 225a7b8 :thumb
	ldr     r3, [pc, #0x0] @ 0x225a7bc, (=0x2259805)
	bx      r3
@ 0x225a7bc

.word Function_2259804+1 @ =0x2259805, 0x225a7bc
.thumb
Function_225a7c0: @ 225a7c0 :thumb
	ldr     r3, [pc, #0x4] @ 0x225a7c8, (=Function_201a928+1)
	mov     r1, #0x1
	bx      r3
@ 0x225a7c6

.align 2
.word Function_201a928+1 @ 0x225a7c8



.thumb
Function_225a7cc: @ 225a7cc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r4, r1
	mov     r1, #0xf
	mov     r5, r0
	mov     r6, r2
	mov     r7, r3
	bl      Function_201ada4
	ldr     r0, [sp, #0x28]
	mov     r1, r4
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x2c]
	mov     r2, r6
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x24] @ 0x225a810, (=0x1020f)
	mov     r3, r7
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x30]
	str     r0, [sp, #0xc]
	mov     r0, r5
	bl      Function_225a860
	mov     r2, #0x1
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x0
	mov     r3, r2
	bl      Function_200e060
	mov     r0, r4
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x225a80e


.align 2


.word 0x1020f @ 0x225a810
.thumb
Function_225a814: @ 225a814 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r4, r1
	mov     r1, #0xf
	mov     r5, r0
	mov     r6, r2
	mov     r7, r3
	bl      Function_201ada4
	ldr     r0, [sp, #0x28]
	mov     r1, r4
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x2c]
	mov     r2, r6
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x28] @ 0x225a85c, (=0x1020f)
	mov     r3, r7
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x30]
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x34]
	str     r0, [sp, #0x10]
	mov     r0, r5
	bl      Function_225a8b4
	mov     r2, #0x1
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x0
	mov     r3, r2
	bl      Function_200e060
	mov     r0, r4
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x225a85a


.align 2


.word 0x1020f @ 0x225a85c
.thumb
Function_225a860: @ 225a860 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r6, r0
	mov     r4, r3
	mov     r0, #0x0
	mov     r3, #0xd
	bl      Function_200b144
	mov     r5, r0
	bne     branch_225a878
	bl      ErrorHandling
.thumb
branch_225a878: @ 225a878 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_200b1ec
	mov     r4, r0
	ldr     r0, [sp, #0x24]
	ldr     r3, [sp, #0x20]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x2c]
	mov     r1, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x28]
	mov     r2, r4
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	mov     r0, r6
	bl      Function_201d78c
	mov     r6, r0
	mov     r0, r4
	bl      Function_20237bc
	mov     r0, r5
	bl      Function_200b190
	mov     r0, r6
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x225a8b2


.align 2, 0


.thumb
Function_225a8b4: @ 225a8b4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	ldr     r4, [sp, #0x38]
	mov     r7, r0
	ldr     r0, [r4, #0x0]
	mov     r5, r1
	mov     r6, r2
	str     r3, [sp, #0x10]
	cmp     r0, #0x0
	beq     branch_225a8cc
	bl      ErrorHandling
.thumb
branch_225a8cc: @ 225a8cc :thumb
	mov     r0, #0x0
	mov     r1, r5
	mov     r2, r6
	mov     r3, #0xd
	bl      Function_200b144
	mov     r5, r0
	bne     branch_225a8e0
	bl      ErrorHandling
.thumb
branch_225a8e0: @ 225a8e0 :thumb
	ldr     r1, [sp, #0x10]
	mov     r0, r5
	bl      Function_200b1ec
	str     r0, [r4, #0x0]
	ldr     r0, [sp, #0x2c]
	ldr     r3, [sp, #0x28]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x34]
	mov     r1, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x30]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x0]
	mov     r0, r7
	bl      Function_201d78c
	mov     r4, r0
	mov     r0, r5
	bl      Function_200b190
	mov     r0, r4
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x225a914

.thumb
Function_225a914: @ 225a914 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x6c
	mov     r5, r1
	mov     r1, #0x67
	str     r1, [sp, #0x0]
	mov     r1, #0xe1
	str     r1, [sp, #0x4]
	mov     r1, #0x66
	str     r1, [sp, #0x8]
	mov     r1, #0x65
	str     r1, [sp, #0xc]
	mov     r1, #0x2
	str     r1, [sp, #0x10]
	mov     r1, #0x7d
	mov     r4, r2
	str     r3, [sp, #0x1c]
	lsl     r1, r1, #4
	str     r1, [sp, #0x14]
	ldr     r3, [sp, #0x80]
	str     r0, [sp, #0x18]
	mov     r1, r4
	mov     r2, #0xe
	bl      Function_225aa34
	ldr     r0, [sp, #0x18]
	mov     r1, r4
	add     r2, sp, #0x48
	mov     r3, #0x0
	bl      Function_225aaf4
	add     r0, sp, #0x48
	str     r0, [sp, #0x2c]
	mov     r0, #0x2
	str     r0, [sp, #0x40]
	mov     r0, #0x0
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x3c]
	mov     r0, #0xe
	str     r0, [sp, #0x44]
	mov     r0, #0x68
	ldr     r7, [sp, #0x24]
	str     r5, [sp, #0x28]
	str     r0, [sp, #0x20]
.thumb
branch_225a96a: @ 225a96a :thumb
	ldr     r0, [sp, #0x20]
	mov     r6, #0x0
	str     r0, [sp, #0x34]
	lsl     r1, r0, #12
	mov     r0, #0x2
	lsl     r0, r0, #20
	str     r1, [sp, #0x34]
	add     r0, r1, r0
	str     r0, [sp, #0x34]
	ldr     r0, [sp, #0x18]
	lsl     r1, r7, #2
	mov     r4, #0x26
	add     r5, r0, r1
.thumb
branch_225a984: @ 225a984 :thumb
	str     r4, [sp, #0x30]
	lsl     r0, r4, #12
	str     r0, [sp, #0x30]
	add     r0, sp, #0x28
	bl      Function_2021b90
	mov     r1, #0x1
	str     r0, [r5, #0x10]
	bl      Function_2021d6c
	ldr     r0, [sp, #0x1c]
	add     r1, r6, r7
	cmp     r1, r0
	blt     branch_225a9a8
	ldr     r0, [r5, #0x10]
	mov     r1, #0x0
	bl      Function_2021cac
.thumb
branch_225a9a8: @ 225a9a8 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x12
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0xa
	blt     branch_225a984
	ldr     r0, [sp, #0x20]
	add     r7, #0xa
	add     r0, #0x12
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x24]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x24]
	cmp     r0, #0x2
	blt     branch_225a96a
	add     sp, #0x6c
	pop     {r4-r7,pc}
@ 0x225a9c8

.thumb
Function_225a9c8: @ 225a9c8 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	ldr     r6, [r7, #0x60]
	mov     r5, r1
	cmp     r6, r5
	bge     branch_225a9ee
	cmp     r6, r5
	bge     branch_225aa0c
	lsl     r0, r6, #2
	add     r4, r7, r0
.thumb
branch_225a9dc: @ 225a9dc :thumb
	ldr     r0, [r4, #0x10]
	mov     r1, #0x0
	bl      Function_2021d6c
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, r5
	blt     branch_225a9dc
	b       branch_225aa0c
@ 0x225a9ee

.thumb
branch_225a9ee: @ 225a9ee :thumb
	cmp     r6, r5
	ble     branch_225aa0c
	.hword  0x1e76 @ sub r6, r6, #0x1
	cmp     r6, r5
	blt     branch_225aa0c
	lsl     r0, r6, #2
	add     r4, r7, r0
.thumb
branch_225a9fc: @ 225a9fc :thumb
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	bl      Function_2021d6c
	.hword  0x1e76 @ sub r6, r6, #0x1
	.hword  0x1f24 @ sub r4, r4, #0x4
	cmp     r6, r5
	bge     branch_225a9fc
.thumb
branch_225aa0c: @ 225aa0c :thumb
	str     r5, [r7, #0x60]
	pop     {r3-r7,pc}
@ 0x225aa10

.thumb
Function_225aa10: @ 225aa10 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r7, r1
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_225aa1a: @ 225aa1a :thumb
	ldr     r0, [r5, #0x10]
	bl      Function_2021bd4
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x14
	blt     branch_225aa1a
	mov     r0, r6
	mov     r1, r7
	bl      Function_225aac0
	pop     {r3-r7,pc}
@ 0x225aa32


.align 2, 0


.thumb
Function_225aa34: @ 225aa34 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r6, r2
	ldr     r7, [sp, #0x3c]
	ldr     r2, [sp, #0x28]
	mov     r5, r0
	add     r0, r7, r2
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r4, r1
	str     r6, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	str     r3, [sp, #0x10]
	mov     r1, r3
	mov     r3, #0x0
	bl      Function_2009a4c
	str     r0, [r5, #0x0]
	bl      Function_200a3dc
	ldr     r0, [r5, #0x0]
	bl      Function_2009d4c
	ldr     r2, [sp, #0x2c]
	ldr     r1, [sp, #0x10]
	add     r0, r7, r2
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x38]
	mov     r3, #0x0
	str     r0, [sp, #0x8]
	str     r6, [sp, #0xc]
	ldr     r0, [r4, #0x4]
	bl      Function_2009b04
	str     r0, [r5, #0x4]
	bl      Function_200a640
	ldr     r0, [r5, #0x4]
	bl      Function_2009d4c
	ldr     r2, [sp, #0x30]
	ldr     r1, [sp, #0x10]
	add     r0, r7, r2
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	str     r6, [sp, #0x8]
	ldr     r0, [r4, #0x8]
	mov     r3, #0x0
	bl      Function_2009bc4
	ldr     r2, [sp, #0x34]
	str     r0, [r5, #0x8]
	add     r0, r7, r2
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	str     r6, [sp, #0x8]
	ldr     r0, [r4, #0xc]
	ldr     r1, [sp, #0x10]
	mov     r3, #0x0
	bl      Function_2009bc4
	str     r0, [r5, #0xc]
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x225aabe


.align 2, 0


.thumb
Function_225aac0: @ 225aac0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	bl      Function_200a4e4
	ldr     r0, [r5, #0x4]
	bl      Function_200a6dc
	ldr     r0, [r4, #0x0]
	ldr     r1, [r5, #0x0]
	bl      Function_2009d68
	ldr     r0, [r4, #0x4]
	ldr     r1, [r5, #0x4]
	bl      Function_2009d68
	ldr     r0, [r4, #0x8]
	ldr     r1, [r5, #0x8]
	bl      Function_2009d68
	ldr     r0, [r4, #0xc]
	ldr     r1, [r5, #0xc]
	bl      Function_2009d68
	pop     {r3-r5,pc}
@ 0x225aaf4

.thumb
Function_225aaf4: @ 225aaf4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x38
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	mov     r7, r2
	mov     r6, r3
	bl      Function_2009e08
	str     r0, [sp, #0x2c]
	ldr     r0, [r5, #0x4]
	bl      Function_2009e08
	str     r0, [sp, #0x30]
	ldr     r0, [r5, #0x8]
	bl      Function_2009e08
	str     r0, [sp, #0x34]
	ldr     r0, [r5, #0xc]
	bl      Function_2009e08
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	mvn     r0, r0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	str     r6, [sp, #0x10]
	ldr     r1, [r4, #0x0]
	ldr     r2, [sp, #0x30]
	str     r1, [sp, #0x14]
	ldr     r1, [r4, #0x4]
	ldr     r3, [sp, #0x34]
	str     r1, [sp, #0x18]
	ldr     r1, [r4, #0x8]
	str     r1, [sp, #0x1c]
	ldr     r1, [r4, #0xc]
	str     r1, [sp, #0x20]
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
	ldr     r1, [sp, #0x2c]
	mov     r0, r7
	bl      Function_20093b4
	add     sp, #0x38
	pop     {r3-r7,pc}
@ 0x225ab52


.align 2, 0


.thumb
Function_225ab54: @ 225ab54 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x60
	mov     r4, r1
	mov     r1, #0xe5
	str     r1, [sp, #0x0]
	mov     r1, #0xe6
	str     r1, [sp, #0x4]
	mov     r1, #0xe4
	str     r1, [sp, #0x8]
	mov     r1, #0xe3
	str     r1, [sp, #0xc]
	mov     r1, #0x2
	str     r1, [sp, #0x10]
	ldr     r1, [pc, #0xe0] @ 0x225ac50, (=0xbb8)
	mov     r5, r2
	str     r3, [sp, #0x18]
	str     r1, [sp, #0x14]
	ldr     r3, [sp, #0x80]
	mov     r7, r0
	mov     r1, r5
	mov     r2, #0xe
	bl      Function_225aa34
	mov     r0, r7
	mov     r1, r5
	add     r2, sp, #0x3c
	mov     r3, #0x0
	bl      Function_225aaf4
	add     r0, sp, #0x3c
	str     r0, [sp, #0x20]
	mov     r2, #0x2
	mov     r0, #0xe
	mov     r1, #0x3a
	str     r0, [sp, #0x38]
	lsl     r1, r1, #12
	lsl     r0, r2, #20
	mov     r6, #0x0
	str     r4, [sp, #0x1c]
	str     r1, [sp, #0x28]
	add     r0, r1, r0
	str     r2, [sp, #0x34]
	str     r6, [sp, #0x30]
	str     r0, [sp, #0x28]
	mov     r4, #0x67
	mov     r5, r7
.thumb
branch_225abb0: @ 225abb0 :thumb
	str     r4, [sp, #0x24]
	lsl     r0, r4, #12
	str     r0, [sp, #0x24]
	add     r0, sp, #0x1c
	bl      Function_2021b90
	str     r0, [r5, #0x10]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x18
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x2
	blt     branch_225abb0
	ldr     r0, [sp, #0x18]
	mov     r1, #0x1e
	str     r0, [r7, #0x1c]
	mul     r1, r0
	str     r1, [r7, #0x20]
	ldr     r1, [sp, #0x7c]
	str     r1, [r7, #0x2c]
	str     r0, [r1, #0x0]
	ldr     r1, [r7, #0x2c]
	str     r0, [r1, #0x8]
	mov     r0, r7
	mov     r1, #0x0
	add     r0, #0x90
	str     r1, [r0, #0x0]
	mov     r0, r7
	bl      Function_225ace4
	mov     r0, #0xe
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x4]
	mov     r0, #0xc1
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	mov     r0, r7
	ldr     r1, [sp, #0x78]
	add     r0, #0x18
	mov     r2, #0xa
	mov     r3, #0x8
	bl      Function_225a748
	ldr     r0, [r7, #0x18]
	mov     r1, #0x0
	bl      Function_201ada4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r3, #0x4
	ldr     r0, [pc, #0x3c] @ 0x225ac54, (=0x10200)
	str     r3, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r2, #0xff
	str     r2, [sp, #0xc]
	ldr     r0, [r7, #0x18]
	mov     r1, #0x1a
	add     r2, #0x82
	bl      Function_225a860
	mov     r0, #0x48
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x20] @ 0x225ac54, (=0x10200)
	mov     r2, #0xff
	str     r0, [sp, #0x8]
	str     r2, [sp, #0xc]
	ldr     r0, [r7, #0x18]
	mov     r1, #0x1a
	add     r2, #0x82
	mov     r3, #0x5
	bl      Function_225a860
	ldr     r0, [r7, #0x18]
	bl      Function_201a954
	add     sp, #0x60
	pop     {r3-r7,pc}
@ 0x225ac50

.word 0xbb8 @ 0x225ac50
.word 0x10200 @ 0x225ac54
.thumb
Function_225ac58: @ 225ac58 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x24]
	mov     r4, r1
	cmp     r0, #0x0
	beq     branch_225ac68
	bl      Call_RemoveTaskFromTaskList
.thumb
branch_225ac68: @ 225ac68 :thumb
	ldr     r0, [r5, #0x28]
	cmp     r0, #0x0
	beq     branch_225ac72
	bl      Call_RemoveTaskFromTaskList
.thumb
branch_225ac72: @ 225ac72 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_225aac0
	ldr     r0, [r5, #0x18]
	bl      Function_225a7c0
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, #0x94
	blx     Call_FillMemWithValue
	pop     {r3-r5,pc}
@ 0x225ac8c

.thumb
Function_225ac8c: @ 225ac8c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_225ad5c
	ldr     r0, [r4, #0x20]
	mov     r1, #0x1e
	blx     _s32_div_f
	mov     r1, r0
	ldr     r0, [r4, #0x2c]
	bl      Function_2095c60
	mov     r0, r4
	bl      Function_225acbc
	mov     r0, r4
	bl      Function_225ace4
	add     r4, #0x30
	mov     r0, r4
	bl      Function_225ae9c
	pop     {r4,pc}
@ 0x225acba


.align 2, 0


.thumb
Function_225acbc: @ 225acbc :thumb
	push    {r3,lr}
	ldr     r1, [r0, #0x2c]
	ldr     r2, [r1, #0x0]
	ldr     r1, [r0, #0x1c]
	cmp     r1, r2
	beq     branch_225acdc
	str     r2, [r0, #0x1c]
	cmp     r2, #0xa
	bgt     branch_225acdc
	mov     r1, r0
	add     r1, #0x30
	bl      Function_225adc0
	ldr     r0, [pc, #0x8] @ 0x225ace0, (=0x683)
	bl      Function_2005748
.thumb
branch_225acdc: @ 225acdc :thumb
	pop     {r3,pc}
@ 0x225acde


.align 2


.word 0x683 @ 0x225ace0
.thumb
Function_225ace4: @ 225ace4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r0
	ldr     r0, [r6, #0x1c]
	mov     r1, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0xa
	mov     r4, r1
	mul     r4, r0
	mov     r7, #0x0
	mov     r5, r6
.thumb
branch_225acfa: @ 225acfa :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	blx     _s32_div_f
	str     r0, [sp, #0x4]
	cmp     r0, #0xa
	ble     branch_225ad0c
	bl      ErrorHandling
.thumb
branch_225ad0c: @ 225ad0c :thumb
	ldr     r0, [r5, #0x10]
	ldr     r1, [sp, #0x4]
	bl      Function_2021d6c
	ldr     r0, [sp, #0x4]
	mov     r1, r0
	ldr     r0, [sp, #0x0]
	mul     r1, r4
	sub     r0, r0, r1
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0xa
	blx     _s32_div_f
	mov     r4, r0
	mov     r0, r6
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_225ad4e
	ldr     r0, [r6, #0x1c]
	cmp     r0, #0xa
	bgt     branch_225ad4e
	ldr     r0, [r5, #0x10]
	mov     r1, #0x1
	bl      Function_2021ec4
	cmp     r7, #0x1
	bne     branch_225ad4e
	mov     r1, r6
	add     r1, #0x90
	mov     r0, #0x1
	str     r0, [r1, #0x0]
.thumb
branch_225ad4e: @ 225ad4e :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r7, #0x2
	blt     branch_225acfa
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x225ad5a


.align 2, 0


.thumb
Function_225ad5c: @ 225ad5c :thumb
	ldr     r1, [r0, #0x20]
	.hword  0x1e49 @ sub r1, r1, #0x1
	bmi     branch_225ad64
	str     r1, [r0, #0x20]
.thumb
branch_225ad64: @ 225ad64 :thumb
	bx      lr
@ 0x225ad66


.align 2, 0


.thumb
Function_225ad68: @ 225ad68 :thumb
	str     r1, [r0, #0x0]
	str     r1, [r0, #0x4]
	sub     r1, r2, r1
	str     r1, [r0, #0x8]
	str     r3, [r0, #0x10]
	mov     r1, #0x0
	str     r1, [r0, #0xc]
	bx      lr
@ 0x225ad78

.thumb
Function_225ad78: @ 225ad78 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r2, [r4, #0xc]
	ldr     r0, [r4, #0x8]
	lsl     r2, r2, #12
	asr     r1, r0, #31
	asr     r3, r2, #31
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r0, r0, r2
	adc     r1, r3
	lsl     r1, r1, #20
	lsr     r0, r0, #12
	orr     r0, r1
	ldr     r1, [r4, #0x10]
	lsl     r1, r1, #12
	blx     FX_Div
	ldr     r1, [r4, #0x4]
	add     r0, r0, r1
	str     r0, [r4, #0x0]
	ldr     r0, [r4, #0xc]
	ldr     r1, [r4, #0x10]
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r0, r1
	bgt     branch_225adb8
	str     r0, [r4, #0xc]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x225adb8

.thumb
branch_225adb8: @ 225adb8 :thumb
	str     r1, [r4, #0xc]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x225adbe


.align 2, 0


.thumb
Function_225adc0: @ 225adc0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r1, #0x3a
	mov     r0, #0x2
	lsl     r1, r1, #12
	lsl     r0, r0, #20
	ldr     r4, [sp, #0x4]
	str     r1, [sp, #0x10]
	add     r0, r1, r0
	str     r0, [sp, #0x10]
	mov     r0, r4
	ldr     r6, [sp, #0x0]
	mov     r7, #0x0
	mov     r5, #0x67
	str     r0, [sp, #0x8]
.thumb
branch_225ade2: @ 225ade2 :thumb
	ldr     r0, [r6, #0x10]
	mov     r1, #0x2
	str     r0, [r4, #0x4]
	bl      Function_2021cf8
	ldr     r2, [sp, #0x8]
	str     r5, [sp, #0xc]
	lsl     r0, r5, #12
	add     r2, #0xc
	add     r3, sp, #0xc
	str     r0, [sp, #0xc]
	ldmia   r3!, {r0,r1}
	str     r2, [sp, #0x8]
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	.hword  0x1c7f @ add r7, r7, #0x1
	str     r0, [r2, #0x0]
	.hword  0x1d36 @ add r6, r6, #0x4
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r5, #0x18
	cmp     r7, #0x2
	blt     branch_225ade2
	ldr     r0, [sp, #0x0]
	ldr     r1, [r0, #0x1c]
	mov     r0, #0xa
	sub     r0, r0, r1
	cmp     r0, #0x0
	ble     branch_225ae3c
	lsl     r0, r0, #12
	ldr     r2, [pc, #0x78] @ 0x225ae98, (=0x266)
	asr     r1, r0, #31
	mov     r3, #0x0
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r4, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r1, r4, #12
	orr     r1, r0
	lsl     r0, r2, #1
	add     r4, r1, r0
	b       branch_225ae40
@ 0x225ae3c

.thumb
branch_225ae3c: @ 225ae3c :thumb
	mov     r4, #0x1
	lsl     r4, r4, #12
.thumb
branch_225ae40: @ 225ae40 :thumb
	ldr     r0, [sp, #0x4]
	mov     r2, #0x1
	add     r0, #0x24
	mov     r1, r4
	lsl     r2, r2, #12
	mov     r3, #0x10
	bl      Function_225ad68
	mov     r2, #0x6
	asr     r1, r4, #31
	mov     r0, r4
	lsl     r2, r2, #14
	mov     r3, #0x0
	blx     _ll_mul
	mov     r3, #0x2
	mov     r2, #0x0
	lsl     r3, r3, #10
	add     r3, r0, r3
	adc     r1, r2
	lsl     r0, r1, #20
	lsr     r1, r3, #12
	orr     r1, r0
	mov     r0, #0x6
	lsl     r0, r0, #14
	sub     r4, r1, r0
	ldr     r0, [sp, #0x4]
	mov     r1, r4
	add     r0, #0x38
	mov     r3, #0x10
	bl      Function_225ad68
	ldr     r0, [sp, #0x4]
	mov     r1, r4
	add     r0, #0x4c
	mov     r2, #0x0
	mov     r3, #0x10
	bl      Function_225ad68
	ldr     r0, [sp, #0x4]
	mov     r1, #0x1
	str     r1, [r0, #0x0]
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x225ae98

.word 0x266 @ 0x225ae98
.thumb
Function_225ae9c: @ 225ae9c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x18
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_225af2e
	mov     r0, r5
	add     r0, #0x24
	bl      Function_225ad78
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x38
	bl      Function_225ad78
	mov     r0, r5
	add     r0, #0x4c
	bl      Function_225ad78
	ldr     r0, [r5, #0x24]
	add     r1, sp, #0xc
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x24]
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x24]
	str     r0, [sp, #0x14]
	ldr     r0, [r5, #0x4]
	bl      Function_2021c70
	ldr     r0, [r5, #0x8]
	add     r1, sp, #0xc
	bl      Function_2021c70
	mov     r6, r5
	add     r6, #0xc
	add     r3, sp, #0x0
	ldmia   r6!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	str     r0, [r3, #0x0]
	ldr     r1, [sp, #0x0]
	ldr     r0, [r5, #0x38]
	sub     r0, r1, r0
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	ldr     r0, [r5, #0x4c]
	sub     r0, r1, r0
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x4]
	mov     r1, r2
	bl      Function_2021c50
	mov     r6, r5
	add     r6, #0x18
	add     r3, sp, #0x0
	ldmia   r6!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	str     r0, [r3, #0x0]
	ldr     r1, [sp, #0x4]
	ldr     r0, [r5, #0x4c]
	sub     r0, r1, r0
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x8]
	mov     r1, r2
	bl      Function_2021c50
	cmp     r4, #0x0
	beq     branch_225af2e
	mov     r0, #0x0
	str     r0, [r5, #0x0]
.thumb
branch_225af2e: @ 225af2e :thumb
	add     sp, #0x18
	pop     {r4-r6,pc}
@ 0x225af32


.align 2, 0


.thumb
Function_225af34: @ 225af34 :thumb
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x1
	beq     branch_225af3e
	mov     r0, #0x1
	bx      lr
@ 0x225af3e

.thumb
branch_225af3e: @ 225af3e :thumb
	mov     r0, #0x0
	bx      lr
@ 0x225af42


.align 2, 0


.thumb
Function_225af44: @ 225af44 :thumb
	push    {r3,lr}
	add     sp, #-0x10
	mov     r3, r1
	stmia   r0!, {r1}
	add     r3, #0x48
	str     r3, [sp, #0x0]
	ldr     r1, [r1, #0x74]
	lsl     r1, r1, #2
	add     r1, #0x89
	str     r1, [sp, #0x4]
	mov     r1, #0x10
	str     r1, [sp, #0x8]
	add     r1, sp, #0x0
	str     r2, [sp, #0xc]
	bl      Function_2259820
	add     sp, #0x10
	pop     {r3,pc}
@ 0x225af68

.thumb
Function_225af68: @ 225af68 :thumb
	ldr     r3, [pc, #0x4] @ 0x225af70, (=0x2259839)
	.hword  0x1d00 @ add r0, r0, #0x4
	mov     r1, #0x1
	bx      r3
@ 0x225af70

.word 0x2259839 @ 0x225af70
.thumb
Function_225af74: @ 225af74 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, r4, #0x4
	bl      Function_22598a0
	mov     r1, #0x1c
	mov     r0, #0x0
.thumb
branch_225af82: @ 225af82 :thumb
	strb    r0, [r4, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_225af82
	pop     {r4,pc}
@ 0x225af8c

.thumb
Function_225af8c: @ 225af8c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x6c
	mov     r2, r0
	mov     r4, r1
	add     r0, sp, #0x0
	mov     r1, r2
	bl      Function_225b4e4
	add     r0, sp, #0x0
	mov     r1, r4
	bl      Function_225b4f8
	add     r0, sp, #0x0
	bl      Function_225b1bc
	add     sp, #0x6c
	pop     {r3,r4,pc}
@ 0x225afae


.align 2, 0


.thumb
Function_225afb0: @ 225afb0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x6c
	mov     r2, r0
	mov     r4, r1
	add     r0, sp, #0x0
	mov     r1, r2
	bl      Function_225b4e4
	add     r0, sp, #0x0
	mov     r1, r4
	bl      Function_225b540
	add     r0, sp, #0x0
	bl      Function_225b1bc
	add     sp, #0x6c
	pop     {r3,r4,pc}
@ 0x225afd2


.align 2, 0


.thumb
Function_225afd4: @ 225afd4 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x6c
	mov     r2, r0
	mov     r4, r1
	add     r0, sp, #0x0
	mov     r1, r2
	bl      Function_225b4e4
	add     r0, sp, #0x0
	mov     r1, r4
	bl      Function_225b540
	add     r0, sp, #0x0
	bl      Function_225b258
	add     sp, #0x6c
	pop     {r3,r4,pc}
@ 0x225aff6


.align 2, 0


.thumb
Function_225aff8: @ 225aff8 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x26
	lsl     r0, r0, #4
	ldr     r1, [r4, r0]
	cmp     r1, #0x1
	bne     branch_225b00e
	sub     r0, #0x48
	add     r0, r4, r0
	bl      Function_225af68
.thumb
branch_225b00e: @ 225b00e :thumb
	mov     r0, #0x99
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x1
	bne     branch_225b01e
	mov     r0, r4
	bl      Function_225b328
.thumb
branch_225b01e: @ 225b01e :thumb
	pop     {r4,pc}
@ 0x225b020

.thumb
Function_225b020: @ 225b020 :thumb
	push    {r4,lr}
	mov     r1, #0x26
	mov     r4, r0
	lsl     r1, r1, #4
	ldr     r1, [r4, r1]
	cmp     r1, #0x0
	beq     branch_225b032
	bl      Function_225b480
.thumb
branch_225b032: @ 225b032 :thumb
	mov     r0, r4
	bl      Function_225b464
	mov     r0, #0x63
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2254e0c
	mov     r0, #0x63
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	sub     r0, #0x8
	add     r0, r4, r0
	bl      Function_22594ac
	mov     r0, r4
	bl      Function_225b35c
	mov     r0, #0x8d
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      free
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x225b06a


.align 2, 0


.thumb
Function_225b06c: @ 225b06c :thumb
	ldr     r3, [pc, #0x0] @ 0x225b070, (=0x2255531)
	bx      r3
@ 0x225b070

.word Function_2255530+1 @ =0x2255531, 0x225b070
.thumb
Function_225b074: @ 225b074 :thumb
	mov     r2, #0x99
	lsl     r2, r2, #2
	str     r1, [r0, r2]
	bx      lr
@ 0x225b07c

.thumb
Function_225b07c: @ 225b07c :thumb
	str     r1, [r0, #0x1c]
	bx      lr
@ 0x225b080

.thumb
Function_225b080: @ 225b080 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r6, r2
	mov     r2, #0x19
	mov     r4, r1
	lsl     r2, r2, #4
	mov     r5, r0
	mov     r1, r2
	add     r0, r5, r2
	str     r6, [sp, #0x0]
	add     r1, #0xac
	add     r2, #0xb0
	ldr     r1, [r5, r1]
	ldr     r2, [r5, r2]
	mov     r3, r4
	bl      Function_2257ad8
	mov     r0, #0x26
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_225b0c8
	mov     r3, #0x88
	ldr     r0, [r5, #0x40]
	mov     r1, #0x2
	mov     r2, #0x0
	sub     r3, r3, r4
	bl      Function_2019184
	mov     r3, #0x10
	ldr     r0, [r5, #0x40]
	mov     r1, #0x2
	mov     r2, #0x3
	sub     r3, r3, r6
	bl      Function_2019184
.thumb
branch_225b0c8: @ 225b0c8 :thumb
	mov     r0, #0x8f
	lsl     r0, r0, #2
	str     r4, [r5, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r6, [r5, r0]
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x225b0d6


.align 2, 0


.thumb
Function_225b0d8: @ 225b0d8 :thumb
	mov     r3, #0x91
	lsl     r3, r3, #2
	str     r1, [r0, r3]
	add     r1, r3, #0x4
	str     r2, [r0, r1]
	bx      lr
@ 0x225b0e4

.thumb
Function_225b0e4: @ 225b0e4 :thumb
	mov     r2, #0x93
	lsl     r2, r2, #2
	strh    r1, [r0, r2]
	bx      lr
@ 0x225b0ec

.thumb
Function_225b0ec: @ 225b0ec :thumb
	push    {r3,r4}
	mov     r4, #0x25
	lsl     r4, r4, #4
	str     r1, [r0, r4]
	add     r1, r4, #0x4
	str     r2, [r0, r1]
	add     r4, #0x8
	str     r3, [r0, r4]
	pop     {r3,r4}
	bx      lr
@ 0x225b100

.thumb
Function_225b100: @ 225b100 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r0, #0x82
	lsl     r0, r0, #2
	mov     r4, r1
	mov     r6, r2
	add     r0, r5, r0
	add     r1, sp, #0x8
	add     r2, sp, #0x4
	bl      Function_2259270
	mov     r0, #0x19
	lsl     r0, r0, #4
	add     r0, r5, r0
	add     r1, sp, #0x10
	add     r2, sp, #0xc
	bl      Function_2257ce0
	mov     r0, #0x8f
	lsl     r0, r0, #2
	ldr     r1, [sp, #0x10]
	ldr     r2, [r5, r0]
	sub     r1, r4, r1
	.hword  0x1d00 @ add r0, r0, #0x4
	add     r7, r2, r1
	ldr     r1, [r5, r0]
	ldr     r0, [sp, #0xc]
	sub     r0, r6, r0
	add     r0, r1, r0
	str     r0, [sp, #0x0]
	ldr     r2, [sp, #0x0]
	mov     r0, r5
	mov     r1, r7
	bl      Function_225b080
	ldr     r2, [sp, #0x0]
	mov     r0, r5
	sub     r1, r4, r7
	sub     r2, r6, r2
	bl      Function_225b0d8
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x225b158

.thumb
Function_225b158: @ 225b158 :thumb
	push    {r4-r6,lr}
	mov     r4, r2
	mov     r2, #0x95
	mov     r5, r0
	mov     r0, #0x28
	lsl     r2, r2, #2
	sub     r0, r0, r3
	ldr     r2, [r5, r2]
	lsl     r0, r0, #12
	mov     r6, r1
	asr     r1, r0, #31
	asr     r3, r2, #31
	blx     _ll_mul
	mov     r2, r0
	mov     r0, r5
	mov     r5, #0x2
	mov     r3, r1
	mov     r1, r6
	mov     r6, #0x0
	lsl     r5, r5, #10
	add     r5, r2, r5
	adc     r3, r6
	lsl     r2, r3, #20
	lsr     r3, r5, #12
	orr     r3, r2
	asr     r2, r3, #12
	sub     r2, r4, r2
	bl      Function_225b100
	pop     {r4-r6,pc}
@ 0x225b196


.align 2, 0


.thumb
Function_225b198: @ 225b198 :thumb
	mov     r2, #0x97
	lsl     r2, r2, #2
	strh    r1, [r0, r2]
	sub     r2, #0xcc
	ldr     r3, [pc, #0x4] @ 0x225b1a8, (=0x2257d71)
	add     r0, r0, r2
	bx      r3
@ 0x225b1a6


.align 2


.word 0x2257d71 @ 0x225b1a8
.thumb
Function_225b1ac: @ 225b1ac :thumb
	mov     r2, #0x19
	lsl     r2, r2, #4
	ldr     r3, [pc, #0x4] @ 0x225b1b8, (=0x2257b75)
	add     r0, r0, r2
	bx      r3
@ 0x225b1b6


.align 2


.word 0x2257b75 @ 0x225b1b8
.thumb
Function_225b1bc: @ 225b1bc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r1, #0x9a
	ldr     r0, [r5, #0x68]
	lsl     r1, r1, #2
	bl      malloc
	mov     r2, #0x9a
	mov     r1, #0x0
	lsl     r2, r2, #2
	mov     r4, r0
	blx     Call_FillMemWithValue
	mov     r0, #0x8e
	ldr     r1, [r5, #0x68]
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	ldr     r0, [r5, #0x68]
	bl      AllocPkmnData
	mov     r1, #0x8d
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [r5, #0x0]
	ldr     r1, [r4, r1]
	bl      Function_202a61c
	mov     r0, r4
	mov     r1, r5
	bl      Function_225b2d4
	ldr     r1, [r5, #0x58]
	ldr     r2, [r5, #0x68]
	mov     r0, r4
	bl      Function_22554a8
	mov     r0, #0x61
	lsl     r0, r0, #2
	ldr     r2, [r5, #0x68]
	add     r0, r4, r0
	mov     r1, #0x15
	bl      Function_2259484
	ldr     r1, [r5, #0x68]
	mov     r0, #0x14
	bl      Function_2254de0
	mov     r1, #0x63
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, r4
	mov     r1, r5
	bl      Function_225b388
	mov     r0, r4
	mov     r1, r5
	bl      Function_225b450
	mov     r1, #0x86
	lsl     r1, r1, #2
	add     r0, r4, r1
	sub     r1, #0x88
	ldr     r2, [r5, #0x68]
	add     r1, r4, r1
	bl      Function_225af44
	mov     r0, #0x26
	mov     r1, #0x1
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r4, r0]
	mov     r0, r4
	mov     r1, r5
	bl      Function_225b490
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x225b258

.thumb
Function_225b258: @ 225b258 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r1, #0x9a
	ldr     r0, [r5, #0x68]
	lsl     r1, r1, #2
	bl      malloc
	mov     r2, #0x9a
	mov     r1, #0x0
	lsl     r2, r2, #2
	mov     r4, r0
	blx     Call_FillMemWithValue
	mov     r0, #0x8e
	ldr     r1, [r5, #0x68]
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	ldr     r0, [r5, #0x68]
	bl      AllocPkmnData
	mov     r1, #0x8d
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [r5, #0x0]
	ldr     r1, [r4, r1]
	bl      Function_202a61c
	mov     r0, r4
	mov     r1, r5
	bl      Function_225b2d4
	mov     r0, #0x61
	lsl     r0, r0, #2
	ldr     r2, [r5, #0x68]
	add     r0, r4, r0
	mov     r1, #0x15
	bl      Function_2259484
	ldr     r1, [r5, #0x68]
	mov     r0, #0x14
	bl      Function_2254de0
	mov     r1, #0x63
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, r4
	mov     r1, r5
	bl      Function_225b388
	mov     r0, #0x26
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	mov     r1, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r4, r0]
	mov     r0, r4
	mov     r1, r5
	bl      Function_225b490
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x225b2d4

.thumb
Function_225b2d4: @ 225b2d4 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x28
	mov     r4, r1
	ldr     r1, [r4, #0x68]
	mov     r5, r0
	mov     r0, #0x19
	bl      LoadFromNARC_8
	mov     r1, #0x6
	lsl     r1, r1, #6
	str     r0, [r5, r1]
	ldr     r0, [pc, #0x38] @ 0x225b324, (=0x2ce)
	add     r1, sp, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x76
	str     r0, [sp, #0x4]
	mov     r0, #0x13
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x68]
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x68]
	mov     r0, r5
	bl      Function_225547c
	ldr     r3, [r4, #0x68]
	mov     r0, r5
	add     r1, sp, #0x10
	mov     r2, r4
	bl      Function_225b588
	mov     r0, r5
	add     r1, sp, #0x10
	bl      Function_22551b4
	add     r0, sp, #0x10
	bl      Function_2255338
	add     sp, #0x28
	pop     {r3-r5,pc}
@ 0x225b322


.align 2


.word 0x2ce @ 0x225b324
.thumb
Function_225b328: @ 225b328 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r3, #0x25
	lsl     r3, r3, #4
	add     r1, r0, r3
	str     r1, [sp, #0x0]
	mov     r1, r3
	sub     r1, #0x14
	ldr     r2, [r0, r1]
	mov     r1, r3
	sub     r1, #0xc
	ldr     r1, [r0, r1]
	add     r1, r2, r1
	mov     r2, r3
	sub     r2, #0x10
	ldr     r4, [r0, r2]
	mov     r2, r3
	sub     r2, #0x8
	.hword  0x1f1b @ sub r3, r3, #0x4
	ldr     r2, [r0, r2]
	ldrh    r3, [r0, r3]
	add     r2, r4, r2
	bl      Function_225553c
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x225b35c

.thumb
Function_225b35c: @ 225b35c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_22551d0
	mov     r0, r4
	bl      Function_22554f8
	mov     r0, #0x26
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_225b37a
	mov     r0, r4
	bl      Function_2255524
.thumb
branch_225b37a: @ 225b37a :thumb
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	bl      Call_FS_CloseFile
	pop     {r4,pc}
@ 0x225b386


.align 2, 0


.thumb
Function_225b388: @ 225b388 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x4c
	mov     r5, r0
	add     r2, sp, #0x28
	mov     r0, #0x0
	mov     r7, r1
	mov     r3, r2
	mov     r1, r0
	stmia   r3!, {r0,r1}
	stmia   r3!, {r0,r1}
	stmia   r3!, {r0,r1}
	stmia   r3!, {r0,r1}
	str     r0, [r3, #0x0]
	ldr     r0, [r5, #0x0]
	str     r0, [sp, #0x28]
	ldr     r0, [r5, #0x4]
	str     r0, [sp, #0x2c]
	ldr     r0, [r5, #0x10]
	str     r0, [sp, #0x30]
	ldr     r0, [r5, #0x30]
	str     r0, [sp, #0x34]
	ldr     r0, [r5, #0x20]
	str     r0, [sp, #0x38]
	ldr     r0, [r5, #0x40]
	str     r0, [sp, #0x3c]
	mov     r0, #0x63
	lsl     r0, r0, #2
	ldr     r1, [r5, r0]
	str     r1, [sp, #0x40]
	mov     r1, r0
	sub     r1, #0x8
	add     r1, r5, r1
	str     r1, [sp, #0x44]
	mov     r1, #0x15
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [sp, #0x48]
	add     r0, r5, r0
	mov     r1, r2
	bl      Function_22578f4
	ldr     r0, [r7, #0x0]
	bl      Function_202a60c
	mov     r6, r0
	ldr     r0, [r7, #0x0]
	bl      Function_202a614
	mov     r4, r0
	ldr     r0, [r7, #0x0]
	bl      Function_202a604
	str     r4, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [r7, #0x68]
	mov     r1, #0x19
	lsl     r1, r1, #4
	str     r0, [sp, #0x8]
	add     r0, r5, r1
	add     r1, #0xa4
	ldr     r1, [r5, r1]
	add     r2, sp, #0x18
	mov     r3, r6
	bl      Function_2257964
	ldr     r0, [r7, #0x54]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_225b44c
	mov     r4, r7
.thumb
branch_225b412: @ 225b412 :thumb
	ldr     r0, [r4, #0x4]
	bl      Function_202a624
	str     r0, [sp, #0xc]
	ldr     r0, [r4, #0x4]
	bl      Function_202a628
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x4]
	bl      Function_202a62c
	str     r0, [sp, #0x14]
	ldr     r0, [r4, #0x4]
	bl      Function_202a630
	str     r0, [sp, #0x0]
	mov     r0, #0x19
	lsl     r0, r0, #4
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x10]
	ldr     r3, [sp, #0x14]
	add     r0, r5, r0
	bl      Function_22579fc
	ldr     r0, [r7, #0x54]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, r0
	blt     branch_225b412
.thumb
branch_225b44c: @ 225b44c :thumb
	add     sp, #0x4c
	pop     {r4-r7,pc}
@ 0x225b450

.thumb
Function_225b450: @ 225b450 :thumb
	mov     r2, r1
	mov     r1, #0x19
	lsl     r1, r1, #4
	add     r0, r0, r1
	ldr     r1, [r2, #0x5c]
	ldr     r3, [pc, #0x4] @ 0x225b460, (=0x2257c89)
	ldr     r2, [r2, #0x68]
	bx      r3
@ 0x225b460

.word Function_2257c88+1 @ =0x2257c89, 0x225b460
.thumb
Function_225b464: @ 225b464 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x19
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_2257a98
	mov     r0, #0x19
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_2257948
	pop     {r4,pc}
@ 0x225b47e


.align 2, 0


.thumb
Function_225b480: @ 225b480 :thumb
	mov     r1, #0x19
	lsl     r1, r1, #4
	ldr     r3, [pc, #0x4] @ 0x225b48c, (=0x2257cd5)
	add     r0, r0, r1
	bx      r3
@ 0x225b48a


.align 2


.word Function_2257cd4+1 @ =0x2257cd5, 0x225b48c
.thumb
Function_225b490: @ 225b490 :thumb
	push    {r3-r5,lr}
	mov     r3, r1
	mov     r1, #0x8f
	mov     r4, r0
	mov     r2, #0x48
	lsl     r1, r1, #2
	str     r2, [r4, r1]
	mov     r5, #0x38
	add     r2, r1, #0x4
	str     r5, [r4, r2]
	mov     r2, r1
	add     r2, #0x8
	str     r5, [r4, r2]
	mov     r2, r1
	mov     r5, #0x40
	add     r2, #0xc
	str     r5, [r4, r2]
	lsl     r2, r5, #6
	mov     r5, r1
	add     r5, #0x14
	str     r2, [r4, r5]
	mov     r5, r1
	add     r5, #0x18
	str     r2, [r4, r5]
	mov     r5, r1
	add     r5, #0x1c
	str     r2, [r4, r5]
	mov     r2, #0x0
	add     r1, #0x10
	strh    r2, [r4, r1]
	ldr     r1, [r3, #0x60]
	ldr     r2, [r3, #0x64]
	bl      Function_225b080
	mov     r0, #0x97
	ldr     r1, [pc, #0x8] @ 0x225b4e0, (=0x7fff)
	lsl     r0, r0, #2
	strh    r1, [r4, r0]
	pop     {r3-r5,pc}
@ 0x225b4de


.align 2


.word 0x7fff @ 0x225b4e0
.thumb
Function_225b4e4: @ 225b4e4 :thumb
	ldr     r2, [r1, #0x0]
	str     r2, [r0, #0x58]
	ldr     r2, [r1, #0x4]
	str     r2, [r0, #0x60]
	ldr     r2, [r1, #0x8]
	str     r2, [r0, #0x64]
	ldr     r1, [r1, #0xc]
	str     r1, [r0, #0x68]
	bx      lr
@ 0x225b4f6


.align 2, 0


.thumb
Function_225b4f8: @ 225b4f8 :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	mov     r5, r0
	mov     r0, r7
	bl      Function_202a138
	mov     r6, r5
	str     r0, [r5, #0x0]
	mov     r4, #0x0
	str     r4, [r5, #0x54]
	add     r6, #0x54
.thumb
branch_225b50e: @ 225b50e :thumb
	mov     r0, r7
	mov     r1, r4
	bl      Function_202a110
	cmp     r0, #0x0
	beq     branch_225b530
	mov     r0, r7
	mov     r1, r4
	bl      Function_202a150
	ldr     r1, [r5, #0x54]
	lsl     r1, r1, #2
	add     r1, r5, r1
	str     r0, [r1, #0x4]
	ldr     r0, [r6, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r6, #0x0]
.thumb
branch_225b530: @ 225b530 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0xa
	blt     branch_225b50e
	mov     r0, r7
	bl      Function_202a1dc
	str     r0, [r5, #0x5c]
	pop     {r3-r7,pc}
@ 0x225b540

.thumb
Function_225b540: @ 225b540 :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	mov     r5, r0
	mov     r0, r7
	bl      Function_202a4d8
	mov     r6, r5
	str     r0, [r5, #0x0]
	mov     r4, #0x0
	str     r4, [r5, #0x54]
	add     r6, #0x54
.thumb
branch_225b556: @ 225b556 :thumb
	mov     r0, r7
	mov     r1, r4
	bl      Function_202a488
	cmp     r0, #0x0
	beq     branch_225b578
	mov     r0, r7
	mov     r1, r4
	bl      Function_202a4f0
	ldr     r1, [r5, #0x54]
	lsl     r1, r1, #2
	add     r1, r5, r1
	str     r0, [r1, #0x4]
	ldr     r0, [r6, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r6, #0x0]
.thumb
branch_225b578: @ 225b578 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x14
	blt     branch_225b556
	mov     r0, r7
	bl      Function_202a5b8
	str     r0, [r5, #0x5c]
	pop     {r3-r7,pc}
@ 0x225b588

.thumb
Function_225b588: @ 225b588 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r7, r3
	mov     r5, r0
	mov     r6, r2
	mov     r0, r4
	mov     r1, r7
	bl      Function_2255410
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	mov     r3, r7
	bl      Function_225b5a8
	pop     {r3-r7,pc}
@ 0x225b5a8

.thumb
Function_225b5a8: @ 225b5a8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	mov     r0, r2
	ldr     r0, [r0, #0x54]
	mov     r4, r1
	str     r2, [sp, #0x8]
	str     r3, [sp, #0xc]
	cmp     r0, #0x0
	ble     branch_225b620
	mov     r6, r2
.thumb
branch_225b5c2: @ 225b5c2 :thumb
	ldr     r0, [r6, #0x4]
	bl      Function_202a624
	mov     r5, r0
	ldr     r0, [r4, #0x10]
	mov     r1, r5
	bl      Function_20229f8
	cmp     r0, #0x1
	bne     branch_225b60e
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	ldr     r1, [sp, #0x4]
	lsl     r0, r0, #6
	ldr     r0, [r1, r0]
	ldr     r3, [sp, #0xc]
	add     r1, r5, #0x1
	mov     r2, #0x0
	bl      Function_200723c
	mov     r7, r0
	ldr     r0, [r4, #0x10]
	mov     r1, r7
	mov     r2, r5
	bl      Function_2022a1c
	ldr     r1, [r4, #0x0]
	lsl     r5, r5, #3
	add     r1, r1, r5
	mov     r0, r7
	.hword  0x1d09 @ add r1, r1, #0x4
	blx     Function_20a7118
	ldr     r0, [sp, #0x4]
	ldr     r1, [r0, #0x0]
	ldr     r0, [r4, #0x0]
	str     r1, [r0, r5]
.thumb
branch_225b60e: @ 225b60e :thumb
	ldr     r0, [sp, #0x10]
	.hword  0x1d36 @ add r6, r6, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x8]
	ldr     r1, [r0, #0x54]
	ldr     r0, [sp, #0x10]
	cmp     r0, r1
	blt     branch_225b5c2
.thumb
branch_225b620: @ 225b620 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r1, #0x6
	ldr     r0, [sp, #0x4]
	lsl     r1, r1, #6
	ldr     r0, [r0, r1]
	mov     r1, #0x0
	ldr     r3, [sp, #0xc]
	mov     r2, r1
	bl      Function_200723c
	mov     r5, r0
	ldr     r0, [r4, #0x14]
	mov     r1, r5
	mov     r2, #0x0
	bl      Function_2022a1c
	ldr     r1, [r4, #0x8]
	mov     r0, r5
	.hword  0x1d09 @ add r1, r1, #0x4
	blx     Function_20a71b0
	ldr     r0, [sp, #0x4]
	ldr     r1, [r0, #0x0]
	ldr     r0, [r4, #0x8]
	str     r1, [r0, #0x0]
	ldr     r0, [r4, #0x8]
	mov     r1, #0x3
	str     r1, [r0, #0x8]
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x225b65e


.align 2, 0


.thumb
Function_225b660: @ 225b660 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r2, #0x2
	mov     r5, r0
	mov     r0, #0x3
	mov     r1, #0xd
	lsl     r2, r2, #16
	bl      Function_2017fc8
	mov     r2, #0x1
	mov     r0, #0x3
	mov     r1, #0xe
	lsl     r2, r2, #18
	bl      Function_2017fc8
	mov     r1, #0x1a
	mov     r0, r5
	lsl     r1, r1, #4
	mov     r2, #0xd
	bl      MallocSomeDataAndStorePtrInOverlayData1c
	mov     r2, #0x1a
	mov     r1, #0x0
	lsl     r2, r2, #4
	mov     r4, r0
	blx     Call_FillMemWithValue
	ldr     r0, [pc, #0x98] @ 0x225b730, (=0x225b849)
	mov     r1, r4
	bl      SetMainLoopFunctionCall
	bl      Function_20177a4
	mov     r0, r5
	bl      LoadPtrToOverWorldDataIn18
	mov     r5, r0
	ldr     r0, [r5, #0x8]
	cmp     r0, #0x0
	ldr     r0, [r5, #0x0]
	bne     branch_225b6bc
	ldr     r1, [r5, #0x4]
	bl      Function_2029ca8
	str     r0, [r4, #0x0]
	b       branch_225b6c4
@ 0x225b6bc

.thumb
branch_225b6bc: @ 225b6bc :thumb
	ldr     r1, [r5, #0x4]
	bl      Function_2029cd0
	str     r0, [r4, #0x4]
.thumb
branch_225b6c4: @ 225b6c4 :thumb
	ldr     r0, [r5, #0x4]
	str     r0, [r4, #0x8]
	ldr     r0, [r5, #0x8]
	str     r0, [r4, #0xc]
	bl      Function_2255094
	ldr     r0, [pc, #0x60] @ 0x225b734, (=0x21bf6dc)
	mov     r1, #0x0
	strb    r1, [r0, #0x5]
	bl      Function_201ffe8
	mov     r0, r4
	add     r0, #0x14
	mov     r1, #0xe
	bl      Function_22555d4
	ldr     r0, [r4, #0x54]
	str     r0, [sp, #0x0]
	mov     r0, #0x48
	str     r0, [sp, #0x4]
	mov     r0, #0x10
	str     r0, [sp, #0x8]
	mov     r0, #0xe
	str     r0, [sp, #0xc]
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x0
	add     r0, sp, #0x0
	bne     branch_225b704
	ldr     r1, [r4, #0x0]
	bl      Function_225af8c
	b       branch_225b70a
@ 0x225b704

.thumb
branch_225b704: @ 225b704 :thumb
	ldr     r1, [r4, #0x4]
	bl      Function_225afb0
.thumb
branch_225b70a: @ 225b70a :thumb
	str     r0, [r4, #0x10]
	mov     r0, r4
	bl      Function_225b85c
	mov     r0, r4
	bl      Function_225b910
	mov     r0, r4
	bl      Function_225b964
	mov     r0, r4
	bl      Function_225ba40
	mov     r0, r4
	bl      Function_225bad0
	mov     r0, #0x1
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x225b730

.word 0x225b849 @ 0x225b730
.word 0x21bf6dc @ 0x225b734
.thumb
Function_225b738: @ 225b738 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r1
	bl      LoadOverlayData1c
	mov     r5, r0
	bl      Call_G3X_Reset
	blx     Function_20a73c0
	ldr     r0, [r5, #0x10]
	bl      Function_225aff8
	mov     r0, #0x0
	mov     r1, r0
	bl      Function_20241bc
	add     r5, #0x14
	mov     r0, r5
	bl      Function_225562c
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x5
	bhi     branch_225b7f2
	add     r1, r0, r0
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x225b774

Jumppoints_225b774:
.hword branch_225b780 - Jumppoints_225b774 - 2
.hword branch_225b786 - Jumppoints_225b774 - 2
.hword branch_225b7a4 - Jumppoints_225b774 - 2
.hword branch_225b7b4 - Jumppoints_225b774 - 2
.hword branch_225b7c4 - Jumppoints_225b774 - 2
.hword branch_225b7e4 - Jumppoints_225b774 - 2
.thumb
branch_225b780: @ 225b780 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_225b7f2
@ 0x225b786

.thumb
branch_225b786: @ 225b786 :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r2, #0x1
	str     r2, [sp, #0x4]
	mov     r0, #0xd
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, #0x5
	mov     r3, r0
	bl      Function_200f174
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_225b7f2
@ 0x225b7a4

.thumb
branch_225b7a4: @ 225b7a4 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_225b7f2
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_225b7f2
@ 0x225b7b4

.thumb
branch_225b7b4: @ 225b7b4 :thumb
	ldr     r1, [pc, #0x40] @ 0x225b7f8, (=0x21bf67c)
	ldr     r2, [r1, #0x48]
	mov     r1, #0x3
	tst     r1, r2
	beq     branch_225b7f2
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_225b7f2
@ 0x225b7c4

.thumb
branch_225b7c4: @ 225b7c4 :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0xd
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, #0x2
	mov     r2, r0
	mov     r3, r0
	bl      Function_200f174
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_225b7f2
@ 0x225b7e4

.thumb
branch_225b7e4: @ 225b7e4 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_225b7f2
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4,r5,pc}
@ 0x225b7f2

.thumb
branch_225b7f2: @ 225b7f2 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x225b7f8

.word 0x21bf67c @ 0x225b7f8
.thumb
Function_225b7fc: @ 225b7fc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      LoadOverlayData1c
	mov     r4, r0
	ldr     r0, [r4, #0x10]
	bl      Function_225b020
	mov     r0, r4
	bl      Function_225ba00
	mov     r0, r4
	bl      Function_225baa8
	add     r4, #0x14
	mov     r0, r4
	bl      Function_22555fc
	bl      Function_22550b4
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      Function_20177a4
	mov     r0, r5
	bl      FreeSomeDataAndStore0InOverlayData1c
	mov     r0, #0xd
	bl      Function_201807c
	mov     r0, #0xe
	bl      Function_201807c
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x225b846


.align 2, 0


.thumb
Function_225b848: @ 225b848 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x10]
	bl      Function_225b06c
	add     r4, #0x14
	mov     r0, r4
	bl      Function_225561c
	pop     {r4,pc}
@ 0x225b85c

.thumb
Function_225b85c: @ 225b85c :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r0, #0x40
	str     r0, [sp, #0x0]
	mov     r0, #0xe
	str     r0, [sp, #0x4]
	mov     r0, #0x65
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x7e
	mov     r2, #0x0
	mov     r3, #0x60
	bl      Function_2007130
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0xe
	str     r0, [sp, #0xc]
	mov     r0, #0x65
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x54]
	mov     r1, #0x7d
	mov     r3, #0x1
	bl      Function_20070e8
	ldr     r0, [r5, #0xc]
	cmp     r0, #0x0
	bne     branch_225b8a2
	mov     r1, #0x80
	mov     r4, #0x4
	b       branch_225b8a6
@ 0x225b8a2

.thumb
branch_225b8a2: @ 225b8a2 :thumb
	mov     r1, #0x7f
	mov     r4, #0x3
.thumb
branch_225b8a6: @ 225b8a6 :thumb
	mov     r0, #0xe
	str     r0, [sp, #0x0]
	mov     r0, #0x65
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r2, #0x0
	add     r3, sp, #0x10
	bl      Function_20071d0
	ldr     r2, [sp, #0x10]
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r6, r0
	ldrh    r0, [r2, #0x0]
	mov     r1, #0x1
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	ldrh    r0, [r2, #0x2]
	add     r2, #0xc
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x54]
	bl      Function_20198c0
	ldr     r1, [sp, #0x10]
	mov     r2, #0x0
	ldrh    r0, [r1, #0x0]
	mov     r3, r2
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldrh    r0, [r1, #0x2]
	mov     r1, #0x1
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x54]
	bl      Function_2019e2c
	mov     r0, r6
	bl      free
	ldr     r0, [r5, #0x54]
	mov     r1, #0x1
	bl      Function_201c3c0
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x225b910

.thumb
Function_225b910: @ 225b910 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r4, r0
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0xe
	str     r0, [sp, #0x4]
	mov     r0, #0xc
	mov     r1, r0
	mov     r2, #0x4
	mov     r3, #0x0
	bl      Function_2006e84
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0xe
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x54]
	mov     r0, #0xc
	mov     r1, #0xb
	mov     r3, #0x4
	bl      Function_2006e60
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0xe
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x54]
	mov     r0, #0xc
	mov     r1, #0xa
	mov     r3, #0x4
	bl      Function_2006e3c
	add     sp, #0x10
	pop     {r4,pc}
@ 0x225b962


.align 2, 0


.thumb
Function_225b964: @ 225b964 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0xfa
	lsl     r0, r0, #2
	mov     r1, #0x65
	str     r0, [sp, #0x4]
	lsl     r1, r1, #2
	mov     r0, r4
	ldr     r1, [r4, r1]
	add     r0, #0x14
	mov     r2, #0xe9
	mov     r3, #0x0
	bl      Function_2255248
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	str     r0, [sp, #0x4]
	mov     r0, #0xfa
	lsl     r0, r0, #2
	mov     r1, #0x65
	str     r0, [sp, #0x8]
	lsl     r1, r1, #2
	mov     r0, r4
	ldr     r1, [r4, r1]
	add     r0, #0x14
	mov     r2, #0xea
	mov     r3, #0x0
	bl      Function_2255268
	mov     r0, #0xfa
	lsl     r0, r0, #2
	mov     r1, #0x65
	str     r0, [sp, #0x0]
	lsl     r1, r1, #2
	mov     r0, r4
	ldr     r1, [r4, r1]
	add     r0, #0x14
	mov     r2, #0xe8
	mov     r3, #0x0
	bl      Function_225528c
	mov     r0, #0xfa
	lsl     r0, r0, #2
	mov     r1, #0x65
	str     r0, [sp, #0x0]
	lsl     r1, r1, #2
	mov     r0, r4
	ldr     r1, [r4, r1]
	add     r0, #0x14
	mov     r2, #0xe7
	mov     r3, #0x0
	bl      Function_22552a8
	mov     r0, #0x64
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0xfa
	add     r0, #0x14
	lsl     r1, r1, #2
	mov     r2, #0x0
	mov     r3, #0x90
	bl      Function_22551e4
	mov     r1, #0x66
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	mov     r1, #0x1
	bl      Function_2021e80
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x225ba00

.thumb
Function_225ba00: @ 225ba00 :thumb
	push    {r4,lr}
	mov     r1, #0xfa
	mov     r4, r0
	add     r0, #0x14
	lsl     r1, r1, #2
	bl      Function_22552c4
	mov     r0, r4
	mov     r1, #0xfa
	add     r0, #0x14
	lsl     r1, r1, #2
	bl      Function_22552d8
	mov     r0, r4
	mov     r1, #0xfa
	add     r0, #0x14
	lsl     r1, r1, #2
	bl      Function_22552ec
	mov     r0, r4
	mov     r1, #0xfa
	add     r0, #0x14
	lsl     r1, r1, #2
	bl      Function_2255300
	mov     r0, #0x66
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2021bd4
	pop     {r4,pc}
@ 0x225ba3e


.align 2, 0


.thumb
Function_225ba40: @ 225ba40 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	mov     r4, r0
	mov     r0, #0xe
	mov     r1, #0x1
	bl      Function_201a778
	mov     r1, #0x67
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x12
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x6
	str     r0, [sp, #0x8]
	mov     r0, #0x5
	str     r0, [sp, #0xc]
	mov     r0, #0x1
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x54]
	ldr     r1, [r4, r1]
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_201a7e8
	mov     r0, #0x0
	mov     r1, #0xa0
	mov     r2, #0xe
	bl      Function_2002e7c
	mov     r0, #0x3
	mov     r1, #0x0
	bl      Function_2019060
	mov     r0, #0x0
	mov     r1, #0x2
	bl      Function_2019060
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_2019060
	mov     r1, #0x3
	ldr     r0, [r4, #0x54]
	mov     r2, r1
	mov     r3, #0x0
	bl      Function_2019184
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x225baa6


.align 2, 0


.thumb
Function_225baa8: @ 225baa8 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x67
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_201acf4
	mov     r0, #0x67
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_201a8fc
	mov     r0, #0x67
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_201a928
	pop     {r4,pc}
@ 0x225bace


.align 2, 0


.thumb
Function_225bad0: @ 225bad0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x67
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_201ada4
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x0
	bne     branch_225baee
	mov     r0, r4
	bl      Function_225bb00
	b       branch_225baf4
@ 0x225baee

.thumb
branch_225baee: @ 225baee :thumb
	mov     r0, r4
	bl      Function_225bc18
.thumb
branch_225baf4: @ 225baf4 :thumb
	mov     r0, #0x67
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_201a954
	pop     {r4,pc}
@ 0x225bb00

.thumb
Function_225bb00: @ 225bb00 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	ldr     r2, [pc, #0x108] @ 0x225bc10, (=0x181)
	mov     r5, r0
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, #0xd
	bl      Function_200b144
	str     r0, [sp, #0x10]
	cmp     r0, #0x0
	bne     branch_225bb1c
	bl      ErrorHandling
.thumb
branch_225bb1c: @ 225bb1c :thumb
	mov     r0, #0xd
	bl      Function_200b358
	mov     r6, r0
	mov     r0, #0x66
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x5
	bl      Function_2021d6c
	mov     r0, #0x3
	lsl     r0, r0, #16
	str     r0, [sp, #0x14]
	mov     r0, #0x9
	lsl     r0, r0, #16
	str     r0, [sp, #0x18]
	mov     r0, #0x0
	str     r0, [sp, #0x1c]
	mov     r0, #0x66
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	add     r1, sp, #0x14
	bl      Function_2021c50
	mov     r0, #0xc
	mov     r1, #0xd
	bl      Function_2023790
	mov     r7, r0
	ldr     r0, [r5, #0x0]
	mov     r1, r7
	bl      Function_202a1a0
	mov     r0, #0x0
	mov     r1, r7
	mov     r2, r0
	bl      Function_2002d7c
	mov     r4, r0
	mov     r0, #0x7
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	lsr     r3, r4, #31
	add     r3, r4, r3
	asr     r4, r3, #1
	mov     r3, #0x80
	ldr     r0, [pc, #0x98] @ 0x225bc14, (=0x10200)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x67
	str     r1, [sp, #0xc]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r2, r7
	sub     r3, r3, r4
	bl      Function_201d78c
	mov     r0, r7
	bl      Function_20237bc
	ldr     r0, [r5, #0x0]
	bl      Function_202a1f4
	mov     r2, r0
	mov     r0, r6
	mov     r1, #0x0
	bl      Function_200be48
	mov     r0, #0xc8
	mov     r1, #0xd
	bl      Function_2023790
	mov     r4, r0
	ldr     r0, [sp, #0x10]
	mov     r1, #0x2d
	bl      Function_200b1ec
	mov     r7, r0
	mov     r0, r6
	mov     r1, r4
	mov     r2, r7
	bl      Function_200c388
	mov     r0, #0x0
	mov     r1, r4
	mov     r2, r0
	bl      Function_2002d7c
	mov     r3, r0
	mov     r0, #0x1b
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [pc, #0x3c] @ 0x225bc14, (=0x10200)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x67
	str     r1, [sp, #0xc]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	lsr     r5, r3, #31
	add     r5, r3, r5
	asr     r5, r5, #1
	mov     r3, #0x80
	mov     r2, r4
	sub     r3, r3, r5
	bl      Function_201d78c
	mov     r0, r4
	bl      Function_20237bc
	mov     r0, r7
	bl      Function_20237bc
	ldr     r0, [sp, #0x10]
	bl      Function_200b190
	mov     r0, r6
	bl      Function_200b3f0
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x225bc0e


.align 2


.word 0x181 @ 0x225bc10
.word 0x10200 @ 0x225bc14
.thumb
Function_225bc18: @ 225bc18 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r0, #0x66
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r5, #0x8]
	bl      Function_2021d6c
	ldr     r0, [r5, #0x4]
	bl      Function_202a5d0
	mov     r6, r0
	mov     r0, #0xd
	bl      Function_200b358
	mov     r7, r0
	mov     r0, #0xc8
	mov     r1, #0xd
	bl      Function_2023790
	mov     r4, r0
	ldr     r0, [r5, #0x8]
	bl      Function_20958b8
	mov     r2, r0
	mov     r0, r7
	mov     r1, #0x0
	bl      Function_200bbdc
	mov     r0, r6
	bl      Function_2095888
	mov     r2, r0
	mov     r0, r7
	mov     r1, #0x1
	bl      Function_200bba8
	ldr     r0, [r5, #0x4]
	bl      Function_202a544
	mov     r6, r0
	ldr     r0, [r5, #0x4]
	mov     r1, r4
	bl      Function_202a524
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, r7
	mov     r1, #0x3
	mov     r2, r4
	mov     r3, r6
	bl      Function_200b48c
	mov     r0, #0xd
	bl      AllocPkmnData
	mov     r6, r0
	ldr     r0, [r5, #0x4]
	mov     r1, r6
	bl      Function_202a560
	mov     r0, r6
	bl      Function_2076b10_Dummy
	mov     r2, r0
	mov     r0, r7
	mov     r1, #0x4
	bl      Function_200b5cc
	mov     r0, r6
	bl      free
	ldr     r2, [pc, #0xc0] @ 0x225bd70, (=0x181)
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, #0xd
	bl      Function_200b144
	str     r0, [sp, #0x10]
	cmp     r0, #0x0
	bne     branch_225bcc4
	bl      ErrorHandling
.thumb
branch_225bcc4: @ 225bcc4 :thumb
	ldr     r0, [sp, #0x10]
	mov     r1, #0x2b
	bl      Function_200b1ec
	mov     r6, r0
	mov     r0, r7
	mov     r1, r4
	mov     r2, r6
	bl      Function_200c388
	mov     r0, r6
	bl      Function_20237bc
	mov     r0, #0x0
	mov     r1, r4
	mov     r2, r0
	bl      Function_2002d7c
	mov     r3, r0
	mov     r0, #0x7
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	lsr     r6, r3, #31
	add     r6, r3, r6
	ldr     r0, [pc, #0x7c] @ 0x225bd74, (=0x10200)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x67
	str     r1, [sp, #0xc]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	asr     r6, r6, #1
	mov     r3, #0x80
	mov     r2, r4
	sub     r3, r3, r6
	bl      Function_201d78c
	ldr     r0, [sp, #0x10]
	mov     r1, #0x2c
	bl      Function_200b1ec
	mov     r6, r0
	mov     r0, r7
	mov     r1, r4
	mov     r2, r6
	bl      Function_200c388
	mov     r0, r6
	bl      Function_20237bc
	mov     r0, #0x0
	mov     r1, r4
	mov     r2, r0
	bl      Function_2002d7c
	mov     r3, r0
	mov     r0, #0x1b
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [pc, #0x38] @ 0x225bd74, (=0x10200)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x67
	str     r1, [sp, #0xc]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	lsr     r5, r3, #31
	add     r5, r3, r5
	asr     r5, r5, #1
	mov     r3, #0x80
	mov     r2, r4
	sub     r3, r3, r5
	bl      Function_201d78c
	mov     r0, r4
	bl      Function_20237bc
	ldr     r0, [sp, #0x10]
	bl      Function_200b190
	mov     r0, r7
	bl      Function_200b3f0
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x225bd6e

.align 2
.word 0x181 @ 0x225bd70
.word 0x10200 @ 0x225bd74



Unknown_225bd78: @ 0x225bd78
.incbin "./baserom/overlay/overlay_0022.bin", 0x6f98, 0x225be80 - 0x225bd78



