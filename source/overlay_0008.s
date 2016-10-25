

@ 0x190000 in arm9.bin

.section .iwram8, "ax"



.thumb
Function_2249960: @ 2249960 :thumb
	asr     r1, r0
	mov     r0, #0x1
	and     r0, r1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bx      lr
@ 0x224996c

.thumb
Function_224996c: @ 224996c :thumb
	mov     r2, #0x1
	ldr     r3, [r1, #0x0]
	lsl     r2, r0
	mov     r0, r3
	eor     r0, r2
	str     r0, [r1, #0x0]
	bx      lr
@ 0x224997a


.align 2, 0
.thumb
Function_224997c: @ 224997c :thumb
	push    {r4,r5,lr}
	add     sp, #-0x2c
	ldr     r3, [pc, #0xac] @ 0x2249a30, (=#0x224c758)
	mov     r4, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x10
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	ldr     r0, [r4, #0x3c]
	bl      GetSpritePositionX
	mov     r5, r0
	ldr     r0, [r4, #0x3c]
	bl      GetSpritePositionY
	mov     r1, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	add     r0, sp, #0x1c
	mov     r2, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r3, r2
	bl      Function_20550f4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	add     r0, sp, #0xc
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r1, sp, #0x10
	mov     r2, #0x3
	add     r3, sp, #0x1c
	bl      Function_2055208
	cmp     r0, #0x0
	beq     branch_2249a2c
	mov     r0, r4
	bl      Function_203d174
	bl      Function_2027860
	mov     r1, #0x1
	bl      Function_2027f6c
	mov     r5, r0
	mov     r0, #0xb
	mov     r1, #0x4
	bl      Function_2018184
	mov     r2, r0
	mov     r0, #0x0
	str     r0, [r2, #0x0]
	ldr     r0, [sp, #0xc]
	cmp     r0, #0xef
	bne     branch_2249a00
	ldr     r0, [r4, #0x10]
	ldr     r1, [pc, #0x40] @ 0x2249a34, (=#0x2249cd9)
	bl      Function_2050944
	mov     r0, #0x2
	add     sp, #0x2c
	strb    r0, [r5, #0x0]
	pop     {r4,r5,pc}
@ 0x2249a00

.thumb
branch_2249a00: @ 2249a00 :thumb
	cmp     r0, #0xf0
	bne     branch_2249a14
	ldr     r0, [r4, #0x10]
	ldr     r1, [pc, #0x30] @ 0x2249a38, (=#0x2249b75)
	bl      Function_2050944
	mov     r0, #0x1
	add     sp, #0x2c
	strb    r0, [r5, #0x0]
	pop     {r4,r5,pc}
@ 0x2249a14

.thumb
branch_2249a14: @ 2249a14 :thumb
	cmp     r0, #0xf1
	bne     branch_2249a28
	ldr     r0, [r4, #0x10]
	ldr     r1, [pc, #0x20] @ 0x2249a3c, (=#0x2249a95)
	bl      Function_2050944
	mov     r0, #0x0
	add     sp, #0x2c
	strb    r0, [r5, #0x0]
	pop     {r4,r5,pc}
@ 0x2249a28

.thumb
branch_2249a28: @ 2249a28 :thumb
	bl      ErrorHandling
.thumb
branch_2249a2c: @ 2249a2c :thumb
	add     sp, #0x2c
	pop     {r4,r5,pc}
@ 0x2249a30

.word 0x224c758 @ 0x2249a30
.word 0x2249cd9 @ 0x2249a34
.word 0x2249b75 @ 0x2249a38
.word 0x2249a95 @ 0x2249a3c
.thumb
Function_2249a40: @ 2249a40 :thumb
	push    {r4-r6,lr}
	mov     r5, r3
	ldr     r4, [sp, #0x10]
	bl      Function_2054f94
	mov     r6, r0
	bl      Function_205dbfc
	cmp     r0, #0x0
	beq     branch_2249a5e
	cmp     r5, #0x0
	beq     branch_2249a8e
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r4-r6,pc}
@ 0x2249a5e

.thumb
branch_2249a5e: @ 2249a5e :thumb
	mov     r0, r6
	bl      Function_205dc08
	cmp     r0, #0x0
	beq     branch_2249a76
	mov     r0, #0x2
	lsl     r0, r0, #16
	cmp     r5, r0
	beq     branch_2249a8e
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r4-r6,pc}
@ 0x2249a76

.thumb
branch_2249a76: @ 2249a76 :thumb
	mov     r0, r6
	bl      Function_205dc14
	cmp     r0, #0x0
	beq     branch_2249a8e
	mov     r0, #0x1
	lsl     r0, r0, #18
	cmp     r5, r0
	beq     branch_2249a8e
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r4-r6,pc}
@ 0x2249a8e

.thumb
branch_2249a8e: @ 2249a8e :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	pop     {r4-r6,pc}
@ 0x2249a94

.thumb
Function_2249a94: @ 2249a94 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	bl      Function_2050a60
	mov     r4, r0
	mov     r0, r5
	bl      Function_2050a64
	mov     r5, r0
	ldr     r1, [r5, #0x0]
	cmp     r1, #0x3
	bhi     branch_2249b6a
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2249aba

Jumppoints_2249aba:
.hword branch_2249ac2 - Jumppoints_2249aba - 2
.hword branch_2249ad2 - Jumppoints_2249aba - 2
.hword branch_2249b44 - Jumppoints_2249aba - 2
.hword branch_2249b60 - Jumppoints_2249aba - 2
.thumb
branch_2249ac2: @ 2249ac2 :thumb
	ldr     r1, [r4, #0x50]
	mov     r0, #0x0
	bl      Function_2249f14
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_2249b6a
@ 0x2249ad2

.thumb
branch_2249ad2: @ 2249ad2 :thumb
	ldr     r1, [r4, #0x50]
	mov     r0, #0x1
	bl      0x21d3da0
	mov     r6, r0
	ldr     r1, [r4, #0x50]
	mov     r0, #0x2
	bl      0x21d3da0
	mov     r7, r0
	ldr     r1, [r4, #0x50]
	mov     r0, #0x3
	bl      0x21d3da0
	str     r0, [sp, #0x0]
	mov     r0, r6
	bl      0x21d3f70
	cmp     r0, #0x0
	beq     branch_2249b6a
	mov     r0, r7
	bl      0x21d3f70
	cmp     r0, #0x0
	beq     branch_2249b6a
	ldr     r0, [sp, #0x0]
	bl      0x21d3f70
	cmp     r0, #0x0
	beq     branch_2249b6a
	add     r4, #0xa4
	ldr     r0, [r4, #0x0]
	mov     r1, #0xf2
	bl      0x21e18cc
	mov     r4, r0
	add     r0, sp, #0x4
	mov     r1, r4
	bl      0x21e1894
	mov     r0, #0x1
	ldr     r1, [sp, #0x8]
	lsl     r0, r0, #12
	sub     r0, r1, r0
	str     r0, [sp, #0x8]
	cmp     r0, #0x0
	bgt     branch_2249b3a
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
.thumb
branch_2249b3a: @ 2249b3a :thumb
	mov     r0, r4
	add     r1, sp, #0x4
	bl      0x21e18a4
	b       branch_2249b6a
@ 0x2249b44

.thumb
branch_2249b44: @ 2249b44 :thumb
	add     r4, #0xa0
	mov     r0, #0x0
	ldr     r2, [r4, #0x0]
	mov     r1, r0
	bl      0x21ef388
	ldr     r0, [pc, #0x1c] @ 0x2249b70, (=#0x65a)
	mov     r1, #0x0
	bl      Function_20057a4
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_2249b6a
@ 0x2249b60

.thumb
branch_2249b60: @ 2249b60 :thumb
	bl      Function_20181c4
	add     sp, #0x10
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2249b6a

.thumb
branch_2249b6a: @ 2249b6a :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2249b70

.word 0x65a @ 0x2249b70
.thumb
Function_2249b74: @ 2249b74 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	mov     r5, r0
	bl      Function_2050a60
	mov     r4, r0
	mov     r0, r5
	bl      Function_2050a64
	mov     r5, r0
	ldr     r1, [r5, #0x0]
	cmp     r1, #0x5
	bls     branch_2249b90
	b       branch_2249ccc
@ 0x2249b90

.thumb
branch_2249b90: @ 2249b90 :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2249b9c

Jumppoints_2249b9c:
.hword branch_2249ba8 - Jumppoints_2249b9c - 2
.hword branch_2249bb8 - Jumppoints_2249b9c - 2
.hword branch_2249c38 - Jumppoints_2249b9c - 2
.hword branch_2249c6e - Jumppoints_2249b9c - 2
.hword branch_2249ca4 - Jumppoints_2249b9c - 2
.hword branch_2249cc2 - Jumppoints_2249b9c - 2
.thumb
branch_2249ba8: @ 2249ba8 :thumb
	ldr     r1, [r4, #0x50]
	mov     r0, #0x1
	bl      Function_2249f14
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_2249ccc
@ 0x2249bb8

.thumb
branch_2249bb8: @ 2249bb8 :thumb
	ldr     r1, [r4, #0x50]
	mov     r0, #0x1
	bl      0x21d3da0
	mov     r6, r0
	ldr     r1, [r4, #0x50]
	mov     r0, #0x2
	bl      0x21d3da0
	mov     r7, r0
	ldr     r1, [r4, #0x50]
	mov     r0, #0x3
	bl      0x21d3da0
	str     r0, [sp, #0x0]
	mov     r0, r6
	bl      0x21d3f70
	cmp     r0, #0x0
	beq     branch_2249ccc
	mov     r0, r7
	bl      0x21d3f70
	cmp     r0, #0x0
	beq     branch_2249ccc
	ldr     r0, [sp, #0x0]
	bl      0x21d3f70
	cmp     r0, #0x0
	beq     branch_2249ccc
	add     r4, #0xa4
	ldr     r0, [r4, #0x0]
	mov     r1, #0xf2
	bl      0x21e18cc
	mov     r1, r0
	add     r0, sp, #0x1c
	bl      0x21e1894
	ldr     r1, [sp, #0x20]
	cmp     r1, #0x0
	bne     branch_2249c12
	mov     r0, #0x2
	str     r0, [r5, #0x0]
	b       branch_2249ccc
@ 0x2249c12

.thumb
branch_2249c12: @ 2249c12 :thumb
	mov     r0, #0x2
	lsl     r0, r0, #16
	cmp     r1, r0
	bne     branch_2249c26
	mov     r0, r5
	bl      Function_20181c4
	add     sp, #0x28
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2249c26

.thumb
branch_2249c26: @ 2249c26 :thumb
	lsl     r0, r0, #1
	cmp     r1, r0
	bne     branch_2249c32
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	b       branch_2249ccc
@ 0x2249c32

.thumb
branch_2249c32: @ 2249c32 :thumb
	bl      ErrorHandling
	b       branch_2249ccc
@ 0x2249c38

.thumb
branch_2249c38: @ 2249c38 :thumb
	add     r4, #0xa4
	ldr     r0, [r4, #0x0]
	mov     r1, #0xf2
	bl      0x21e18cc
	mov     r4, r0
	add     r0, sp, #0x10
	mov     r1, r4
	bl      0x21e1894
	mov     r0, #0x1
	ldr     r1, [sp, #0x14]
	lsl     r0, r0, #12
	add     r2, r1, r0
	lsl     r1, r0, #5
	str     r2, [sp, #0x14]
	cmp     r2, r1
	blt     branch_2249c64
	lsl     r0, r0, #5
	str     r0, [sp, #0x14]
	mov     r0, #0x4
	str     r0, [r5, #0x0]
.thumb
branch_2249c64: @ 2249c64 :thumb
	mov     r0, r4
	add     r1, sp, #0x10
	bl      0x21e18a4
	b       branch_2249ccc
@ 0x2249c6e

.thumb
branch_2249c6e: @ 2249c6e :thumb
	add     r4, #0xa4
	ldr     r0, [r4, #0x0]
	mov     r1, #0xf2
	bl      0x21e18cc
	mov     r4, r0
	add     r0, sp, #0x4
	mov     r1, r4
	bl      0x21e1894
	mov     r0, #0x1
	ldr     r1, [sp, #0x8]
	lsl     r0, r0, #12
	sub     r2, r1, r0
	lsl     r1, r0, #5
	str     r2, [sp, #0x8]
	cmp     r2, r1
	bgt     branch_2249c9a
	lsl     r0, r0, #5
	str     r0, [sp, #0x8]
	mov     r0, #0x4
	str     r0, [r5, #0x0]
.thumb
branch_2249c9a: @ 2249c9a :thumb
	mov     r0, r4
	add     r1, sp, #0x4
	bl      0x21e18a4
	b       branch_2249ccc
@ 0x2249ca4

.thumb
branch_2249ca4: @ 2249ca4 :thumb
	add     r4, #0xa0
	mov     r1, #0x2
	ldr     r2, [r4, #0x0]
	mov     r0, #0x0
	lsl     r1, r1, #16
	bl      0x21ef388
	ldr     r0, [pc, #0x20] @ 0x2249cd4, (=#0x65a)
	mov     r1, #0x0
	bl      Function_20057a4
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_2249ccc
@ 0x2249cc2

.thumb
branch_2249cc2: @ 2249cc2 :thumb
	bl      Function_20181c4
	add     sp, #0x28
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2249ccc

.thumb
branch_2249ccc: @ 2249ccc :thumb
	mov     r0, #0x0
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x2249cd2


.align 2


.word 0x65a @ 0x2249cd4
.thumb
Function_2249cd8: @ 2249cd8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	bl      Function_2050a60
	mov     r4, r0
	mov     r0, r5
	bl      Function_2050a64
	mov     r5, r0
	ldr     r1, [r5, #0x0]
	cmp     r1, #0x3
	bhi     branch_2249db2
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2249cfe

Jumppoints_2249cfe:
.hword branch_2249d06 - Jumppoints_2249cfe - 2
.hword branch_2249d16 - Jumppoints_2249cfe - 2
.hword branch_2249d8a - Jumppoints_2249cfe - 2
.hword branch_2249da8 - Jumppoints_2249cfe - 2
.thumb
branch_2249d06: @ 2249d06 :thumb
	ldr     r1, [r4, #0x50]
	mov     r0, #0x2
	bl      Function_2249f14
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_2249db2
@ 0x2249d16

.thumb
branch_2249d16: @ 2249d16 :thumb
	ldr     r1, [r4, #0x50]
	mov     r0, #0x1
	bl      0x21d3da0
	mov     r6, r0
	ldr     r1, [r4, #0x50]
	mov     r0, #0x2
	bl      0x21d3da0
	mov     r7, r0
	ldr     r1, [r4, #0x50]
	mov     r0, #0x3
	bl      0x21d3da0
	str     r0, [sp, #0x0]
	mov     r0, r6
	bl      0x21d3f70
	cmp     r0, #0x0
	beq     branch_2249db2
	mov     r0, r7
	bl      0x21d3f70
	cmp     r0, #0x0
	beq     branch_2249db2
	ldr     r0, [sp, #0x0]
	bl      0x21d3f70
	cmp     r0, #0x0
	beq     branch_2249db2
	add     r4, #0xa4
	ldr     r0, [r4, #0x0]
	mov     r1, #0xf2
	bl      0x21e18cc
	mov     r4, r0
	add     r0, sp, #0x4
	mov     r1, r4
	bl      0x21e1894
	mov     r0, #0x1
	ldr     r1, [sp, #0x8]
	lsl     r0, r0, #12
	add     r2, r1, r0
	lsl     r1, r0, #6
	str     r2, [sp, #0x8]
	cmp     r2, r1
	blt     branch_2249d80
	lsl     r0, r0, #6
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
.thumb
branch_2249d80: @ 2249d80 :thumb
	mov     r0, r4
	add     r1, sp, #0x4
	bl      0x21e18a4
	b       branch_2249db2
@ 0x2249d8a

.thumb
branch_2249d8a: @ 2249d8a :thumb
	add     r4, #0xa0
	mov     r1, #0x1
	ldr     r2, [r4, #0x0]
	mov     r0, #0x0
	lsl     r1, r1, #18
	bl      0x21ef388
	ldr     r0, [pc, #0x1c] @ 0x2249db8, (=#0x65a)
	mov     r1, #0x0
	bl      Function_20057a4
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_2249db2
@ 0x2249da8

.thumb
branch_2249da8: @ 2249da8 :thumb
	bl      Function_20181c4
	add     sp, #0x10
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2249db2

.thumb
branch_2249db2: @ 2249db2 :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2249db8

.word 0x65a @ 0x2249db8
.thumb
Function_2249dbc: @ 2249dbc :thumb
	push    {r4-r7,lr}
	add     sp, #-0x2c
	mov     r4, r0
	bl      Function_203d174
	bl      Function_2027860
	mov     r1, #0x1
	bl      Function_2027f6c
	add     r2, sp, #0x20
	ldr     r6, [pc, #0x13c] @ 0x2249f10, (=#0x224c728)
	mov     r5, r0
	ldmia   r6!, {r0,r1}
	mov     r3, r2
	stmia   r2!, {r0,r1}
	ldr     r0, [r6, #0x0]
	str     r0, [r2, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x50]
	mov     r2, #0xf2
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r0, #0xa4
	ldr     r0, [r0, #0x0]
	ldr     r1, [r4, #0x30]
	bl      0x21e19cc
	mov     r0, #0x26
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	mov     r1, r4
	str     r0, [sp, #0x4]
	add     r1, #0xa0
	ldr     r1, [r1, #0x0]
	mov     r2, #0x2
	str     r1, [sp, #0x8]
	mov     r1, #0x1
	mov     r3, #0x19
	bl      0x21ef2cc
	ldrb    r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_2249e20
	cmp     r0, #0x1
	beq     branch_2249e2a
	cmp     r0, #0x2
	beq     branch_2249e36
	b       branch_2249e42
@ 0x2249e20

.thumb
branch_2249e20: @ 2249e20 :thumb
	mov     r5, #0x0
	mov     r6, #0x1
	mov     r7, r6
	str     r5, [sp, #0xc]
	b       branch_2249e4e
@ 0x2249e2a

.thumb
branch_2249e2a: @ 2249e2a :thumb
	mov     r5, #0x2
	mov     r6, #0x1
	lsl     r5, r5, #16
	mov     r7, #0x0
	str     r6, [sp, #0xc]
	b       branch_2249e4e
@ 0x2249e36

.thumb
branch_2249e36: @ 2249e36 :thumb
	mov     r5, #0x1
	mov     r7, #0x1
	lsl     r5, r5, #18
	mov     r6, #0x0
	str     r7, [sp, #0xc]
	b       branch_2249e4e
@ 0x2249e42

.thumb
branch_2249e42: @ 2249e42 :thumb
	bl      ErrorHandling
	mov     r5, #0x0
	mov     r6, #0x1
	mov     r7, r6
	str     r5, [sp, #0xc]
.thumb
branch_2249e4e: @ 2249e4e :thumb
	mov     r0, r4
	add     r0, #0xa4
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf2
	bl      0x21e18cc
	str     r0, [sp, #0x10]
	ldr     r1, [sp, #0x10]
	add     r0, sp, #0x14
	bl      0x21e1894
	ldr     r0, [sp, #0x10]
	add     r1, sp, #0x14
	str     r5, [sp, #0x18]
	bl      0x21e18a4
	mov     r2, r4
	add     r2, #0xa0
	ldr     r2, [r2, #0x0]
	mov     r0, #0x0
	mov     r1, r5
	bl      0x21ef388
	ldr     r2, [r4, #0x50]
	mov     r0, #0xef
	mov     r1, #0x0
	bl      0x21d3de4
	mov     r5, r0
	mov     r1, #0x1
	bl      0x21d3f0c
	mov     r0, r5
	mov     r1, r6
	bl      0x21d3f04
	mov     r0, r5
	mov     r1, #0x1
	bl      0x21d3f08
	mov     r0, r5
	mov     r1, #0x1
	bl      0x21d3e40
	mov     r0, r5
	bl      0x21d3e9c
	ldr     r2, [r4, #0x50]
	mov     r0, #0xf0
	mov     r1, #0x0
	bl      0x21d3de4
	mov     r5, r0
	mov     r1, #0x2
	bl      0x21d3f0c
	mov     r0, r5
	mov     r1, r7
	bl      0x21d3f04
	mov     r0, r5
	mov     r1, #0x1
	bl      0x21d3f08
	mov     r0, r5
	mov     r1, #0x1
	bl      0x21d3e40
	mov     r0, r5
	bl      0x21d3e9c
	ldr     r2, [r4, #0x50]
	mov     r0, #0xf1
	mov     r1, #0x0
	bl      0x21d3de4
	mov     r1, #0x3
	mov     r4, r0
	bl      0x21d3f0c
	ldr     r1, [sp, #0xc]
	mov     r0, r4
	bl      0x21d3f04
	mov     r0, r4
	mov     r1, #0x1
	bl      0x21d3f08
	mov     r0, r4
	mov     r1, #0x1
	bl      0x21d3e40
	mov     r0, r4
	bl      0x21d3e9c
	add     sp, #0x2c
	pop     {r4-r7,pc}
@ 0x2249f10

.word 0x224c728 @ 0x2249f10
.thumb
Function_2249f14: @ 2249f14 :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	cmp     r0, #0x2
	bne     branch_2249f24
	mov     r6, #0x1
	mov     r4, #0x2
	mov     r5, #0x3
	b       branch_2249f40
@ 0x2249f24

.thumb
branch_2249f24: @ 2249f24 :thumb
	cmp     r0, #0x1
	bne     branch_2249f30
	mov     r6, #0x2
	mov     r4, #0x1
	mov     r5, #0x3
	b       branch_2249f40
@ 0x2249f30

.thumb
branch_2249f30: @ 2249f30 :thumb
	cmp     r0, #0x0
	bne     branch_2249f3c
	mov     r6, #0x3
	mov     r4, #0x1
	mov     r5, #0x2
	b       branch_2249f40
@ 0x2249f3c

.thumb
branch_2249f3c: @ 2249f3c :thumb
	bl      ErrorHandling
.thumb
branch_2249f40: @ 2249f40 :thumb
	mov     r0, r6
	mov     r1, r7
	bl      0x21d3da0
	mov     r6, r0
	mov     r1, #0x0
	bl      0x21d3f04
	mov     r0, r6
	bl      0x21d3e7c
	mov     r0, r6
	mov     r1, #0x0
	bl      0x21d3e40
	mov     r0, r6
	bl      0x21d3e44
	mov     r0, r4
	mov     r1, r7
	bl      0x21d3da0
	mov     r4, r0
	mov     r1, #0x1
	bl      0x21d3f04
	mov     r0, r4
	bl      0x21d3e7c
	mov     r0, r4
	mov     r1, #0x0
	bl      0x21d3e40
	mov     r0, r4
	bl      0x21d3e44
	mov     r0, r5
	mov     r1, r7
	bl      0x21d3da0
	mov     r4, r0
	mov     r1, #0x1
	bl      0x21d3f04
	mov     r0, r4
	bl      0x21d3e7c
	mov     r0, r4
	mov     r1, #0x0
	bl      0x21d3e40
	mov     r0, r4
	bl      0x21d3e44
	ldr     r0, [pc, #0x4] @ 0x2249fb4, (=#0x65a)
	bl      Function_2005748
	pop     {r3-r7,pc}
@ 0x2249fb4

.word 0x65a @ 0x2249fb4
.thumb
Function_2249fb8: @ 2249fb8 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r0, #0xb
	mov     r1, #0x4
	bl      Function_2018184
	mov     r6, r0
	mov     r0, #0x0
	str     r0, [r6, #0x0]
	mov     r0, r5
	bl      Function_203d174
	bl      Function_2027860
	mov     r1, #0x2
	bl      Function_2027f6c
	mov     r4, r0
	ldr     r0, [r5, #0x3c]
	add     r1, sp, #0x0
	bl      Function_205eaec
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	ldr     r0, [r5, #0x10]
	bne     branch_2249ffe
	ldr     r1, [pc, #0x20] @ 0x224a010, (=#0x224a019)
	mov     r2, r6
	bl      Function_2050944
	mov     r0, #0x1
	add     sp, #0xc
	strb    r0, [r4, #0x0]
	pop     {r3-r6,pc}
@ 0x2249ffe

.thumb
branch_2249ffe: @ 2249ffe :thumb
	ldr     r1, [pc, #0x14] @ 0x224a014, (=#0x224a0e9)
	mov     r2, r6
	bl      Function_2050944
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x224a00e


.align 2


.word 0x224a019 @ 0x224a010
.word 0x224a0e9 @ 0x224a014
.thumb
Function_224a018: @ 224a018 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r4, r0
	bl      Function_2050a60
	mov     r5, r0
	mov     r0, r4
	bl      Function_2050a64
	mov     r4, r0
	ldr     r1, [r4, #0x0]
	cmp     r1, #0x3
	bhi     branch_224a0d6
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x224a03e

Jumppoints_224a03e:
.hword branch_224a046 - Jumppoints_224a03e - 2
.hword branch_224a05c - Jumppoints_224a03e - 2
.hword branch_224a0a6 - Jumppoints_224a03e - 2
.hword branch_224a0cc - Jumppoints_224a03e - 2
.thumb
branch_224a046: @ 224a046 :thumb
	ldr     r0, [r5, #0x3c]
	mov     r1, #0x0
	bl      Function_205ed2c
	ldr     r0, [pc, #0x8c] @ 0x224a0dc, (=#0x611)
	bl      Function_2005748
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_224a0d6
@ 0x224a05c

.thumb
branch_224a05c: @ 224a05c :thumb
	mov     r0, r5
	add     r0, #0xa4
	ldr     r0, [r0, #0x0]
	ldr     r1, [pc, #0x7c] @ 0x224a0e0, (=#0x102)
	bl      0x21e18cc
	mov     r6, r0
	add     r0, sp, #0x0
	mov     r1, r6
	bl      0x21e1894
	mov     r0, #0x1
	ldr     r1, [sp, #0x4]
	lsl     r0, r0, #12
	add     r1, r1, r0
	mov     r0, #0xa
	lsl     r0, r0, #16
	str     r1, [sp, #0x4]
	cmp     r1, r0
	blt     branch_224a094
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x54] @ 0x224a0dc, (=#0x611)
	mov     r1, #0x0
	bl      Function_20057a4
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_224a094: @ 224a094 :thumb
	ldr     r0, [r5, #0x3c]
	ldr     r1, [sp, #0x4]
	bl      Function_205ed0c
	mov     r0, r6
	add     r1, sp, #0x0
	bl      0x21e18a4
	b       branch_224a0d6
@ 0x224a0a6

.thumb
branch_224a0a6: @ 224a0a6 :thumb
	mov     r2, r5
	add     r2, #0xa0
	mov     r1, #0xa
	ldr     r2, [r2, #0x0]
	mov     r0, #0x0
	lsl     r1, r1, #16
	bl      0x21ef388
	ldr     r0, [r5, #0x3c]
	mov     r1, #0x1
	bl      Function_205ed48
	ldr     r0, [pc, #0x24] @ 0x224a0e4, (=#0x61a)
	bl      Function_2005748
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_224a0d6
@ 0x224a0cc

.thumb
branch_224a0cc: @ 224a0cc :thumb
	bl      Function_20181c4
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x224a0d6

.thumb
branch_224a0d6: @ 224a0d6 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x224a0dc

.word 0x611 @ 0x224a0dc
.word 0x102 @ 0x224a0e0
.word 0x61a @ 0x224a0e4
.thumb
Function_224a0e8: @ 224a0e8 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r4, r0
	bl      Function_2050a60
	mov     r5, r0
	mov     r0, r4
	bl      Function_2050a64
	mov     r4, r0
	ldr     r1, [r4, #0x0]
	cmp     r1, #0x3
	bhi     branch_224a1a0
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x224a10e

Jumppoints_224a10e:
.hword branch_224a116 - Jumppoints_224a10e - 2
.hword branch_224a12c - Jumppoints_224a10e - 2
.hword branch_224a172 - Jumppoints_224a10e - 2
.hword branch_224a196 - Jumppoints_224a10e - 2
.thumb
branch_224a116: @ 224a116 :thumb
	ldr     r0, [r5, #0x3c]
	mov     r1, #0x0
	bl      Function_205ed2c
	ldr     r0, [pc, #0x88] @ 0x224a1a8, (=#0x611)
	bl      Function_2005748
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_224a1a0
@ 0x224a12c

.thumb
branch_224a12c: @ 224a12c :thumb
	mov     r0, r5
	add     r0, #0xa4
	ldr     r0, [r0, #0x0]
	ldr     r1, [pc, #0x78] @ 0x224a1ac, (=#0x102)
	bl      0x21e18cc
	mov     r6, r0
	add     r0, sp, #0x0
	mov     r1, r6
	bl      0x21e1894
	mov     r0, #0x1
	ldr     r1, [sp, #0x4]
	lsl     r0, r0, #12
	sub     r0, r1, r0
	str     r0, [sp, #0x4]
	cmp     r0, #0x0
	bgt     branch_224a160
	mov     r1, #0x0
	ldr     r0, [pc, #0x54] @ 0x224a1a8, (=#0x611)
	str     r1, [sp, #0x4]
	bl      Function_20057a4
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_224a160: @ 224a160 :thumb
	ldr     r0, [r5, #0x3c]
	ldr     r1, [sp, #0x4]
	bl      Function_205ed0c
	mov     r0, r6
	add     r1, sp, #0x0
	bl      0x21e18a4
	b       branch_224a1a0
@ 0x224a172

.thumb
branch_224a172: @ 224a172 :thumb
	mov     r2, r5
	add     r2, #0xa0
	mov     r0, #0x0
	ldr     r2, [r2, #0x0]
	mov     r1, r0
	bl      0x21ef388
	ldr     r0, [r5, #0x3c]
	mov     r1, #0x1
	bl      Function_205ed48
	ldr     r0, [pc, #0x24] @ 0x224a1b0, (=#0x61a)
	bl      Function_2005748
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_224a1a0
@ 0x224a196

.thumb
branch_224a196: @ 224a196 :thumb
	bl      Function_20181c4
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x224a1a0

.thumb
branch_224a1a0: @ 224a1a0 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x224a1a6


.align 2


.word 0x611 @ 0x224a1a8
.word 0x102 @ 0x224a1ac
.word 0x61a @ 0x224a1b0
.thumb
Function_224a1b4: @ 224a1b4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r7, r1
	mov     r6, r2
	mov     r4, #0x0
.thumb
branch_224a1be: @ 224a1be :thumb
	add     r1, r5, r4
	ldrb    r0, [r1, #0x10]
	cmp     r6, r0
	bne     branch_224a1da
	ldr     r0, [r5, #0x0]
	add     r1, #0x28
	add     r0, #0xa4
	ldrb    r1, [r1, #0x0]
	ldr     r0, [r0, #0x0]
	bl      0x21e18c4
	mov     r1, r7
	bl      0x21e18b4
.thumb
branch_224a1da: @ 224a1da :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x18
	blt     branch_224a1be
	pop     {r3-r7,pc}
@ 0x224a1e2


.align 2, 0


.thumb
Function_224a1e4: @ 224a1e4 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	add     r1, sp, #0x0
	ldr     r0, [r0, #0x3c]
	bl      Function_205eaec
	ldr     r1, [sp, #0x4]
	asr     r0, r1, #15
	lsr     r0, r0, #16
	add     r0, r1, r0
	asr     r0, r0, #16
	lsl     r0, r0, #24
	ldr     r1, [sp, #0x0]
	lsr     r2, r0, #24
	asr     r0, r1, #15
	lsr     r0, r0, #16
	add     r0, r1, r0
	asr     r0, r0, #16
	lsl     r0, r0, #24
	ldr     r1, [sp, #0x8]
	lsr     r3, r0, #24
	asr     r0, r1, #15
	lsr     r0, r0, #16
	add     r0, r1, r0
	asr     r0, r0, #16
	lsl     r0, r0, #24
	lsr     r5, r0, #24
	mov     r0, #0x0
.thumb
branch_224a220: @ 224a220 :thumb
	lsl     r1, r0, #1
	add     r1, r0, r1
	add     r6, r4, r1
	add     r6, #0x41
	ldrb    r6, [r6, #0x0]
	cmp     r2, r6
	bne     branch_224a242
	add     r6, r4, r1
	add     r6, #0x40
	ldrb    r6, [r6, #0x0]
	cmp     r3, r6
	bne     branch_224a242
	add     r1, r4, r1
	add     r1, #0x42
	ldrb    r1, [r1, #0x0]
	cmp     r5, r1
	beq     branch_224a24e
.thumb
branch_224a242: @ 224a242 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	cmp     r0, #0x18
	bcc     branch_224a220
	mov     r0, #0x18
.thumb
branch_224a24e: @ 224a24e :thumb
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x224a252


.align 2, 0


.thumb
Function_224a254: @ 224a254 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	bl      Function_203d174
	bl      Function_2027860
	mov     r1, #0x3
	bl      Function_2027f6c
	str     r0, [sp, #0x4]
	mov     r0, #0xb
	mov     r1, #0x4
	bl      Function_2018184
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r0, #0xe8
	strb    r4, [r0, #0x0]
	lsl     r0, r4, #2
	ldr     r1, [sp, #0x4]
	add     r0, r5, r0
	add     r0, #0x88
	ldr     r7, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	mov     r0, r4
	bl      Function_2249960
	mov     r6, r0
	ldr     r1, [sp, #0x4]
	mov     r0, r4
	bl      Function_224996c
	ldr     r0, [pc, #0x168] @ 0x224a408, (=#0x127)
	cmp     r7, r0
	bne     branch_224a308
	cmp     r6, #0x0
	beq     branch_224a2c2
	mov     r0, r5
	mov     r1, #0x5
	add     r0, #0xf0
	str     r1, [r0, #0x0]
	ldr     r2, [pc, #0x158] @ 0x224a40c, (=#0x224cb6c)
	lsl     r1, r4, #4
	ldrb    r0, [r2, r1]
	add     r3, r2, r1
	lsl     r6, r0, #16
	mov     r0, #0x2
	lsl     r0, r0, #14
	add     r6, r6, r0
	b       branch_224a2d8
@ 0x224a2c2

.thumb
branch_224a2c2: @ 224a2c2 :thumb
	mov     r0, r5
	ldr     r2, [pc, #0x148] @ 0x224a410, (=#0x224cb6f)
	lsl     r1, r4, #4
	mov     r6, #0x4
	add     r0, #0xf0
	str     r6, [r0, #0x0]
	ldrb    r0, [r2, r1]
	lsl     r6, r6, #13
	add     r3, r2, r1
	lsl     r0, r0, #16
	add     r6, r0, r6
.thumb
branch_224a2d8: @ 224a2d8 :thumb
	mov     r0, r5
	add     r0, #0xec
	str     r6, [r0, #0x0]
	lsl     r0, r4, #1
	add     r0, r4, r0
	ldrb    r2, [r2, r1]
	add     r1, r5, r0
	add     r1, #0x40
	strb    r2, [r1, #0x0]
	add     r1, r5, r0
	add     r0, r5, r0
	ldrb    r2, [r3, #0x1]
	add     r1, #0x41
	add     r0, #0x42
	strb    r2, [r1, #0x0]
	ldrb    r1, [r3, #0x2]
	ldr     r2, [sp, #0x0]
	strb    r1, [r0, #0x0]
	ldr     r0, [r5, #0x0]
	ldr     r1, [pc, #0x114] @ 0x224a414, (=#0x224a621)
	bl      Function_2050904
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x224a308

.thumb
branch_224a308: @ 224a308 :thumb
	.hword  0x1e40 @ sub r0, r0, #0x1
	cmp     r7, r0
	bne     branch_224a37e
	cmp     r6, #0x0
	beq     branch_224a334
	mov     r1, r5
	mov     r0, #0x2
	add     r1, #0xf0
	str     r0, [r1, #0x0]
	ldr     r1, [pc, #0xfc] @ 0x224a418, (=#0x224cb6e)
	lsl     r2, r4, #4
	ldrb    r1, [r1, r2]
	lsl     r0, r0, #14
	ldr     r3, [pc, #0xe8] @ 0x224a40c, (=#0x224cb6c)
	lsl     r1, r1, #16
	add     r1, r1, r0
	mov     r0, r5
	add     r0, #0xec
	str     r1, [r0, #0x0]
	lsl     r0, r4, #1
	add     r1, r4, r0
	b       branch_224a356
@ 0x224a334

.thumb
branch_224a334: @ 224a334 :thumb
	mov     r0, r5
	mov     r1, #0x3
	add     r0, #0xf0
	str     r1, [r0, #0x0]
	ldr     r0, [pc, #0xdc] @ 0x224a41c, (=#0x224cb71)
	lsl     r2, r4, #4
	ldrb    r0, [r0, r2]
	ldr     r3, [pc, #0xcc] @ 0x224a410, (=#0x224cb6f)
	lsl     r1, r0, #16
	mov     r0, #0x2
	lsl     r0, r0, #14
	add     r1, r1, r0
	mov     r0, r5
	add     r0, #0xec
	str     r1, [r0, #0x0]
	lsl     r0, r4, #1
	add     r1, r4, r0
.thumb
branch_224a356: @ 224a356 :thumb
	add     r0, r3, r2
	ldrb    r3, [r3, r2]
	add     r2, r5, r1
	add     r2, #0x40
	strb    r3, [r2, #0x0]
	add     r2, r5, r1
	ldrb    r3, [r0, #0x1]
	add     r2, #0x41
	strb    r3, [r2, #0x0]
	ldrb    r2, [r0, #0x2]
	add     r0, r5, r1
	add     r0, #0x42
	strb    r2, [r0, #0x0]
	ldr     r0, [r5, #0x0]
	ldr     r1, [pc, #0xac] @ 0x224a420, (=#0x224a771)
	ldr     r2, [sp, #0x0]
	bl      Function_2050904
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x224a37e

.thumb
branch_224a37e: @ 224a37e :thumb
	cmp     r6, #0x0
	beq     branch_224a3c2
	mov     r0, r5
	mov     r1, #0x1
	add     r0, #0xf0
	str     r1, [r0, #0x0]
	ldr     r0, [pc, #0x98] @ 0x224a424, (=#0x224cb6d)
	lsl     r2, r4, #4
	ldrb    r0, [r0, r2]
	ldr     r3, [pc, #0x78] @ 0x224a40c, (=#0x224cb6c)
	lsl     r1, r0, #16
	mov     r0, r5
	add     r0, #0xec
	str     r1, [r0, #0x0]
	lsl     r0, r4, #1
	add     r1, r4, r0
	ldrb    r6, [r3, r2]
	add     r0, r3, r2
	add     r3, r5, r1
	add     r3, #0x40
	strb    r6, [r3, #0x0]
	add     r3, r5, r1
	ldrb    r6, [r0, #0x1]
	add     r3, #0x41
	strb    r6, [r3, #0x0]
	ldrb    r3, [r0, #0x2]
	add     r0, r5, r1
	add     r0, #0x42
	strb    r3, [r0, #0x0]
	ldr     r0, [pc, #0x6c] @ 0x224a428, (=#0x224cb72)
	ldrb    r1, [r0, r2]
	add     r0, r5, r4
	strb    r1, [r0, #0x10]
	b       branch_224a3f8
@ 0x224a3c2

.thumb
branch_224a3c2: @ 224a3c2 :thumb
	mov     r0, r5
	mov     r1, #0x0
	add     r0, #0xf0
	str     r1, [r0, #0x0]
	ldr     r0, [pc, #0x60] @ 0x224a42c, (=#0x224cb70)
	lsl     r2, r4, #4
	ldrb    r0, [r0, r2]
	ldr     r3, [pc, #0x3c] @ 0x224a410, (=#0x224cb6f)
	lsl     r1, r0, #16
	mov     r0, r5
	add     r0, #0xec
	str     r1, [r0, #0x0]
	lsl     r0, r4, #1
	add     r1, r4, r0
	add     r0, r3, r2
	ldrb    r3, [r3, r2]
	add     r2, r5, r1
	add     r2, #0x40
	strb    r3, [r2, #0x0]
	add     r2, r5, r1
	ldrb    r3, [r0, #0x1]
	add     r2, #0x41
	strb    r3, [r2, #0x0]
	ldrb    r2, [r0, #0x2]
	add     r0, r5, r1
	add     r0, #0x42
	strb    r2, [r0, #0x0]
.thumb
branch_224a3f8: @ 224a3f8 :thumb
	ldr     r0, [r5, #0x0]
	ldr     r1, [pc, #0x34] @ 0x224a430, (=#0x224a4fd)
	ldr     r2, [sp, #0x0]
	bl      Function_2050904
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x224a406


.align 2


.word 0x127 @ 0x224a408
.word 0x224cb6c @ 0x224a40c
.word 0x224cb6f @ 0x224a410
.word 0x224a621 @ 0x224a414
.word 0x224cb6e @ 0x224a418
.word 0x224cb71 @ 0x224a41c
.word 0x224a771 @ 0x224a420
.word 0x224cb6d @ 0x224a424
.word 0x224cb72 @ 0x224a428
.word 0x224cb70 @ 0x224a42c
.word 0x224a4fd @ 0x224a430
.thumb
Function_224a434: @ 224a434 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	ldr     r1, [r5, #0x4]
	add     r0, #0xa4
	lsl     r1, r1, #24
	ldr     r0, [r0, #0x0]
	lsr     r1, r1, #24
	bl      0x21e18c4
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x0]
	ldr     r1, [r5, #0x8]
	add     r0, #0xa4
	lsl     r1, r1, #24
	ldr     r0, [r0, #0x0]
	lsr     r1, r1, #24
	bl      0x21e18c4
	mov     r7, r0
	ldr     r0, [r5, #0x0]
	ldr     r1, [r5, #0xc]
	add     r0, #0xa4
	lsl     r1, r1, #24
	ldr     r0, [r0, #0x0]
	lsr     r1, r1, #24
	bl      0x21e18c4
	mov     r6, r0
	mov     r0, #0x1
	lsl     r0, r0, #16
	cmp     r4, r0
	blt     branch_224a48c
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	bl      0x21e18b4
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, #0x1
	bl      Function_224a1b4
	b       branch_224a49e
@ 0x224a48c

.thumb
branch_224a48c: @ 224a48c :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, #0x1
	bl      0x21e18b4
	mov     r1, #0x1
	mov     r0, r5
	mov     r2, r1
	bl      Function_224a1b4
.thumb
branch_224a49e: @ 224a49e :thumb
	mov     r0, #0xb
	lsl     r0, r0, #16
	cmp     r4, r0
	blt     branch_224a4ba
	mov     r0, r7
	mov     r1, #0x0
	bl      0x21e18b4
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, #0x2
	bl      Function_224a1b4
	b       branch_224a4cc
@ 0x224a4ba

.thumb
branch_224a4ba: @ 224a4ba :thumb
	mov     r0, r7
	mov     r1, #0x1
	bl      0x21e18b4
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0x2
	bl      Function_224a1b4
.thumb
branch_224a4cc: @ 224a4cc :thumb
	mov     r0, #0x15
	lsl     r0, r0, #16
	cmp     r4, r0
	blt     branch_224a4e8
	mov     r0, r6
	mov     r1, #0x0
	bl      0x21e18b4
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, #0x3
	bl      Function_224a1b4
	pop     {r3-r7,pc}
@ 0x224a4e8

.thumb
branch_224a4e8: @ 224a4e8 :thumb
	mov     r0, r6
	mov     r1, #0x1
	bl      0x21e18b4
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0x3
	bl      Function_224a1b4
	pop     {r3-r7,pc}
@ 0x224a4fc

.thumb
Function_224a4fc: @ 224a4fc :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r0
	bl      Function_2050a60
	mov     r6, r0
	mov     r0, r4
	bl      Function_2050a64
	ldr     r1, [r6, #0x4]
	mov     r4, r0
	ldr     r5, [r1, #0x24]
	ldr     r1, [r4, #0x0]
	cmp     r1, #0x3
	bhi     branch_224a60c
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x224a526

Jumppoints_224a526:
.hword branch_224a52e - Jumppoints_224a526 - 2
.hword branch_224a544 - Jumppoints_224a526 - 2
.hword branch_224a5ec - Jumppoints_224a526 - 2
.hword branch_224a602 - Jumppoints_224a526 - 2
.thumb
branch_224a52e: @ 224a52e :thumb
	ldr     r0, [r6, #0x3c]
	mov     r1, #0x0
	bl      Function_205ed2c
	ldr     r0, [pc, #0xdc] @ 0x224a614, (=#0x611)
	bl      Function_2005748
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_224a60c
@ 0x224a544

.thumb
branch_224a544: @ 224a544 :thumb
	mov     r1, r5
	add     r1, #0xe8
	ldrb    r1, [r1, #0x0]
	mov     r0, r6
	add     r0, #0xa4
	add     r1, r5, r1
	add     r1, #0x28
	ldrb    r1, [r1, #0x0]
	ldr     r0, [r0, #0x0]
	bl      0x21e18c4
	mov     r7, r0
	add     r0, sp, #0x0
	mov     r1, r7
	bl      0x21e1894
	mov     r0, r5
	add     r0, #0xf0
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_224a5a4
	mov     r0, #0x2
	ldr     r1, [sp, #0x4]
	lsl     r0, r0, #14
	add     r1, r1, r0
	mov     r0, r5
	str     r1, [sp, #0x4]
	add     r0, #0xec
	ldr     r0, [r0, #0x0]
	cmp     r1, r0
	blt     branch_224a5d2
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r0, #0xe8
	ldrb    r0, [r0, #0x0]
	ldr     r1, [pc, #0x8c] @ 0x224a618, (=#0x224cb73)
	lsl     r2, r0, #4
	ldrb    r1, [r1, r2]
	add     r0, r5, r0
	strb    r1, [r0, #0x10]
	ldr     r0, [pc, #0x7c] @ 0x224a614, (=#0x611)
	mov     r1, #0x0
	bl      Function_20057a4
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_224a5d2
@ 0x224a5a4

.thumb
branch_224a5a4: @ 224a5a4 :thumb
	cmp     r0, #0x1
	bne     branch_224a5ce
	mov     r0, #0x2
	ldr     r1, [sp, #0x4]
	lsl     r0, r0, #14
	sub     r1, r1, r0
	mov     r0, r5
	str     r1, [sp, #0x4]
	add     r0, #0xec
	ldr     r0, [r0, #0x0]
	cmp     r1, r0
	bgt     branch_224a5d2
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x54] @ 0x224a614, (=#0x611)
	mov     r1, #0x0
	bl      Function_20057a4
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_224a5d2
@ 0x224a5ce

.thumb
branch_224a5ce: @ 224a5ce :thumb
	bl      ErrorHandling
.thumb
branch_224a5d2: @ 224a5d2 :thumb
	ldr     r0, [r6, #0x3c]
	ldr     r1, [sp, #0x4]
	bl      Function_205ed0c
	mov     r0, r7
	add     r1, sp, #0x0
	bl      0x21e18a4
	ldr     r1, [sp, #0x4]
	mov     r0, r5
	bl      Function_224a434
	b       branch_224a60c
@ 0x224a5ec

.thumb
branch_224a5ec: @ 224a5ec :thumb
	ldr     r0, [r6, #0x3c]
	mov     r1, #0x1
	bl      Function_205ed48
	ldr     r0, [pc, #0x24] @ 0x224a61c, (=#0x61a)
	bl      Function_2005748
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_224a60c
@ 0x224a602

.thumb
branch_224a602: @ 224a602 :thumb
	bl      Function_20181c4
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x224a60c

.thumb
branch_224a60c: @ 224a60c :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x224a612


.align 2


.word 0x611 @ 0x224a614
.word 0x224cb73 @ 0x224a618
.word 0x61a @ 0x224a61c
.thumb
Function_224a620: @ 224a620 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r4, r0
	bl      Function_2050a60
	mov     r7, r0
	mov     r0, r4
	bl      Function_2050a64
	mov     r4, r0
	ldr     r0, [r7, #0x4]
	ldr     r5, [r0, #0x24]
	ldr     r0, [r7, #0x3c]
	bl      Function_205eb3c
	ldr     r1, [r4, #0x0]
	mov     r6, r0
	cmp     r1, #0x4
	bls     branch_224a648
	b       branch_224a760
@ 0x224a648

.thumb
branch_224a648: @ 224a648 :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x224a654

Jumppoints_224a654:
.hword branch_224a65e - Jumppoints_224a654 - 2
.hword branch_224a67c - Jumppoints_224a654 - 2
.hword branch_224a720 - Jumppoints_224a654 - 2
.hword branch_224a736 - Jumppoints_224a654 - 2
.hword branch_224a754 - Jumppoints_224a654 - 2
.thumb
branch_224a65e: @ 224a65e :thumb
	bl      Function_20655f4
	cmp     r0, #0x1
	bne     branch_224a760
	mov     r0, r6
	mov     r1, #0x49
	bl      Function_2065638
	ldr     r0, [pc, #0xf8] @ 0x224a768, (=#0x611)
	bl      Function_2005748
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_224a760
@ 0x224a67c

.thumb
branch_224a67c: @ 224a67c :thumb
	mov     r1, r5
	add     r1, #0xe8
	ldrb    r1, [r1, #0x0]
	mov     r0, r7
	add     r0, #0xa4
	add     r1, r5, r1
	add     r1, #0x28
	ldrb    r1, [r1, #0x0]
	ldr     r0, [r0, #0x0]
	bl      0x21e18c4
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x0]
	add     r0, sp, #0x10
	bl      0x21e1894
	ldr     r0, [r7, #0x3c]
	add     r1, sp, #0x4
	bl      Function_205eaec
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	str     r0, [sp, #0x10]
	add     r1, #0xf0
	ldr     r1, [r1, #0x0]
	cmp     r1, #0x4
	bne     branch_224a6e0
	add     r5, #0xec
	ldr     r1, [r5, #0x0]
	cmp     r0, r1
	blt     branch_224a6cc
	ldr     r0, [pc, #0xac] @ 0x224a768, (=#0x611)
	str     r1, [sp, #0x10]
	mov     r1, #0x0
	bl      Function_20057a4
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_224a716
@ 0x224a6cc

.thumb
branch_224a6cc: @ 224a6cc :thumb
	mov     r0, r6
	bl      Function_20655f4
	cmp     r0, #0x1
	bne     branch_224a716
	mov     r0, r6
	mov     r1, #0x17
	bl      Function_2065638
	b       branch_224a716
@ 0x224a6e0

.thumb
branch_224a6e0: @ 224a6e0 :thumb
	cmp     r1, #0x5
	bne     branch_224a712
	add     r5, #0xec
	ldr     r1, [r5, #0x0]
	cmp     r0, r1
	bgt     branch_224a6fe
	ldr     r0, [pc, #0x78] @ 0x224a768, (=#0x611)
	str     r1, [sp, #0x10]
	mov     r1, #0x0
	bl      Function_20057a4
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_224a716
@ 0x224a6fe

.thumb
branch_224a6fe: @ 224a6fe :thumb
	mov     r0, r6
	bl      Function_20655f4
	cmp     r0, #0x1
	bne     branch_224a716
	mov     r0, r6
	mov     r1, #0x16
	bl      Function_2065638
	b       branch_224a716
@ 0x224a712

.thumb
branch_224a712: @ 224a712 :thumb
	bl      ErrorHandling
.thumb
branch_224a716: @ 224a716 :thumb
	ldr     r0, [sp, #0x0]
	add     r1, sp, #0x10
	bl      0x21e18a4
	b       branch_224a760
@ 0x224a720

.thumb
branch_224a720: @ 224a720 :thumb
	bl      Function_20655f4
	cmp     r0, #0x1
	bne     branch_224a736
	mov     r0, r6
	mov     r1, #0x4a
	bl      Function_2065638
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_224a736: @ 224a736 :thumb
	mov     r0, r6
	bl      Function_2065684
	cmp     r0, #0x1
	bne     branch_224a760
	mov     r0, r6
	bl      Function_20656ac
	ldr     r0, [pc, #0x24] @ 0x224a76c, (=#0x61a)
	bl      Function_2005748
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_224a760
@ 0x224a754

.thumb
branch_224a754: @ 224a754 :thumb
	mov     r0, r4
	bl      Function_20181c4
	add     sp, #0x1c
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x224a760

.thumb
branch_224a760: @ 224a760 :thumb
	mov     r0, #0x0
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x224a766


.align 2


.word 0x611 @ 0x224a768
.word 0x61a @ 0x224a76c
.thumb
Function_224a770: @ 224a770 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r4, r0
	bl      Function_2050a60
	mov     r6, r0
	mov     r0, r4
	bl      Function_2050a64
	mov     r4, r0
	ldr     r0, [r6, #0x4]
	ldr     r5, [r0, #0x24]
	ldr     r0, [r6, #0x3c]
	bl      Function_205eb3c
	ldr     r1, [r4, #0x0]
	mov     r7, r0
	cmp     r1, #0x4
	bhi     branch_224a7b4
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x224a7a2

Jumppoints_224a7a2:
.hword branch_224a7ac - Jumppoints_224a7a2 - 2
.hword branch_224a7cc - Jumppoints_224a7a2 - 2
.hword branch_224a870 - Jumppoints_224a7a2 - 2
.hword branch_224a888 - Jumppoints_224a7a2 - 2
.hword branch_224a8ac - Jumppoints_224a7a2 - 2
.thumb
branch_224a7ac: @ 224a7ac :thumb
	bl      Function_20655f4
	cmp     r0, #0x1
	beq     branch_224a7b6
.thumb
branch_224a7b4: @ 224a7b4 :thumb
	b       branch_224a8b8
@ 0x224a7b6

.thumb
branch_224a7b6: @ 224a7b6 :thumb
	mov     r0, r7
	mov     r1, #0x49
	bl      Function_2065638
	ldr     r0, [pc, #0x100] @ 0x224a8c0, (=#0x611)
	bl      Function_2005748
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_224a8b8
@ 0x224a7cc

.thumb
branch_224a7cc: @ 224a7cc :thumb
	mov     r1, r5
	add     r1, #0xe8
	ldrb    r1, [r1, #0x0]
	mov     r0, r6
	add     r0, #0xa4
	add     r1, r5, r1
	add     r1, #0x28
	ldrb    r1, [r1, #0x0]
	ldr     r0, [r0, #0x0]
	bl      0x21e18c4
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x0]
	add     r0, sp, #0x10
	bl      0x21e1894
	ldr     r0, [r6, #0x3c]
	add     r1, sp, #0x4
	bl      Function_205eaec
	ldr     r0, [sp, #0xc]
	mov     r1, r5
	str     r0, [sp, #0x18]
	add     r1, #0xf0
	ldr     r1, [r1, #0x0]
	cmp     r1, #0x3
	bne     branch_224a830
	add     r5, #0xec
	ldr     r1, [r5, #0x0]
	cmp     r0, r1
	blt     branch_224a81c
	ldr     r0, [pc, #0xb4] @ 0x224a8c0, (=#0x611)
	str     r1, [sp, #0x18]
	mov     r1, #0x0
	bl      Function_20057a4
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_224a866
@ 0x224a81c

.thumb
branch_224a81c: @ 224a81c :thumb
	mov     r0, r7
	bl      Function_20655f4
	cmp     r0, #0x1
	bne     branch_224a866
	mov     r0, r7
	mov     r1, #0x15
	bl      Function_2065638
	b       branch_224a866
@ 0x224a830

.thumb
branch_224a830: @ 224a830 :thumb
	cmp     r1, #0x2
	bne     branch_224a862
	add     r5, #0xec
	ldr     r1, [r5, #0x0]
	cmp     r0, r1
	bgt     branch_224a84e
	ldr     r0, [pc, #0x80] @ 0x224a8c0, (=#0x611)
	str     r1, [sp, #0x18]
	mov     r1, #0x0
	bl      Function_20057a4
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_224a866
@ 0x224a84e

.thumb
branch_224a84e: @ 224a84e :thumb
	mov     r0, r7
	bl      Function_20655f4
	cmp     r0, #0x1
	bne     branch_224a866
	mov     r0, r7
	mov     r1, #0x14
	bl      Function_2065638
	b       branch_224a866
@ 0x224a862

.thumb
branch_224a862: @ 224a862 :thumb
	bl      ErrorHandling
.thumb
branch_224a866: @ 224a866 :thumb
	ldr     r0, [sp, #0x0]
	add     r1, sp, #0x10
	bl      0x21e18a4
	b       branch_224a8b8
@ 0x224a870

.thumb
branch_224a870: @ 224a870 :thumb
	bl      Function_20655f4
	cmp     r0, #0x1
	bne     branch_224a8b8
	mov     r0, r7
	mov     r1, #0x4a
	bl      Function_2065638
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_224a8b8
@ 0x224a888

.thumb
branch_224a888: @ 224a888 :thumb
	ldr     r0, [r6, #0x3c]
	bl      Function_205eb3c
	mov     r5, r0
	bl      Function_2065684
	cmp     r0, #0x1
	bne     branch_224a8b8
	mov     r0, r5
	bl      Function_20656ac
	ldr     r0, [pc, #0x24] @ 0x224a8c4, (=#0x61a)
	bl      Function_2005748
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_224a8b8
@ 0x224a8ac

.thumb
branch_224a8ac: @ 224a8ac :thumb
	mov     r0, r4
	bl      Function_20181c4
	add     sp, #0x1c
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x224a8b8

.thumb
branch_224a8b8: @ 224a8b8 :thumb
	mov     r0, #0x0
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x224a8be


.align 2


.word 0x611 @ 0x224a8c0
.word 0x61a @ 0x224a8c4
.thumb
Function_224a8c8: @ 224a8c8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x5c
	mov     r6, r0
	bl      Function_203d174
	bl      Function_2027860
	mov     r1, #0x3
	bl      Function_2027f6c
	str     r0, [sp, #0x10]
	mov     r0, #0x4
	mov     r1, #0xf4
	bl      Function_2018144
	ldr     r1, [r6, #0x4]
	add     r2, sp, #0x50
	str     r0, [r1, #0x24]
	ldr     r0, [r6, #0x4]
	ldr     r4, [pc, #0x1a0] @ 0x224aa90, (=#0x224c710)
	ldr     r0, [r0, #0x24]
	mov     r3, r2
	str     r0, [sp, #0x14]
	str     r6, [r0, #0x0]
	ldmia   r4!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r4, #0x0]
	str     r0, [r2, #0x0]
	mov     r0, #0xa
	lsl     r0, r0, #16
	str     r0, [sp, #0x54]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [r6, #0x50]
	mov     r2, #0x4b
	str     r0, [sp, #0x4]
	mov     r0, r6
	add     r0, #0xa4
	ldr     r0, [r0, #0x0]
	ldr     r1, [r6, #0x30]
	lsl     r2, r2, #2
	bl      0x21e19cc
	ldr     r1, [sp, #0x14]
	ldr     r2, [pc, #0x170] @ 0x224aa94, (=#0x12d)
	str     r0, [r1, #0x4]
	mov     r0, #0x5
	lsl     r0, r0, #18
	str     r0, [sp, #0x54]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [r6, #0x50]
	add     r3, sp, #0x50
	str     r0, [sp, #0x4]
	mov     r0, r6
	add     r0, #0xa4
	ldr     r0, [r0, #0x0]
	ldr     r1, [r6, #0x30]
	bl      0x21e19cc
	ldr     r1, [sp, #0x14]
	ldr     r2, [pc, #0x154] @ 0x224aa98, (=#0x12e)
	str     r0, [r1, #0x8]
	mov     r0, #0x1e
	lsl     r0, r0, #16
	str     r0, [sp, #0x54]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [r6, #0x50]
	add     r3, sp, #0x50
	str     r0, [sp, #0x4]
	mov     r0, r6
	add     r0, #0xa4
	ldr     r0, [r0, #0x0]
	ldr     r1, [r6, #0x30]
	bl      0x21e19cc
	ldr     r1, [sp, #0x14]
	ldr     r4, [pc, #0x134] @ 0x224aa9c, (=#0x224cb68)
	str     r0, [r1, #0xc]
	mov     r0, r1
	mov     r7, #0x0
	mov     r5, r1
	str     r0, [sp, #0xc]
.thumb
branch_224a970: @ 224a970 :thumb
	ldr     r1, [sp, #0x10]
	lsl     r0, r7, #24
	ldr     r1, [r1, #0x0]
	lsr     r0, r0, #24
	bl      Function_2249960
	cmp     r0, #0x0
	beq     branch_224a9b4
	ldrb    r0, [r4, #0x7]
	ldrb    r1, [r4, #0x7]
	lsl     r0, r0, #16
	str     r0, [sp, #0x44]
	ldrb    r0, [r4, #0x8]
	lsl     r0, r0, #16
	str     r0, [sp, #0x48]
	ldrb    r0, [r4, #0x9]
	lsl     r0, r0, #16
	str     r0, [sp, #0x4c]
	mov     r0, r5
	add     r0, #0x40
	strb    r1, [r0, #0x0]
	mov     r0, r5
	ldrb    r1, [r4, #0x8]
	add     r0, #0x41
	strb    r1, [r0, #0x0]
	mov     r0, r5
	ldrb    r1, [r4, #0x9]
	add     r0, #0x42
	strb    r1, [r0, #0x0]
	ldr     r0, [sp, #0x14]
	ldrb    r1, [r4, #0xb]
	add     r0, r0, r7
	str     r0, [sp, #0x8]
	b       branch_224a9e6
@ 0x224a9b4

.thumb
branch_224a9b4: @ 224a9b4 :thumb
	ldrb    r0, [r4, #0x4]
	ldrb    r1, [r4, #0x4]
	lsl     r0, r0, #16
	str     r0, [sp, #0x44]
	ldrb    r0, [r4, #0x5]
	lsl     r0, r0, #16
	str     r0, [sp, #0x48]
	ldrb    r0, [r4, #0x6]
	lsl     r0, r0, #16
	str     r0, [sp, #0x4c]
	mov     r0, r5
	add     r0, #0x40
	strb    r1, [r0, #0x0]
	mov     r0, r5
	ldrb    r1, [r4, #0x5]
	add     r0, #0x41
	strb    r1, [r0, #0x0]
	mov     r0, r5
	ldrb    r1, [r4, #0x6]
	add     r0, #0x42
	strb    r1, [r0, #0x0]
	ldr     r0, [sp, #0x14]
	ldrb    r1, [r4, #0xa]
	add     r0, r0, r7
	str     r0, [sp, #0x8]
.thumb
branch_224a9e6: @ 224a9e6 :thumb
	strb    r1, [r0, #0x10]
	mov     r0, #0x2
	ldr     r1, [sp, #0x44]
	lsl     r0, r0, #14
	add     r0, r1, r0
	str     r0, [sp, #0x44]
	mov     r0, #0x2
	ldr     r1, [sp, #0x4c]
	lsl     r0, r0, #14
	add     r0, r1, r0
	str     r0, [sp, #0x4c]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [r6, #0x50]
	add     r3, sp, #0x44
	str     r0, [sp, #0x4]
	mov     r0, r6
	add     r0, #0xa4
	ldr     r0, [r0, #0x0]
	ldr     r1, [r6, #0x30]
	ldr     r2, [r4, #0x0]
	bl      0x21e19cc
	ldr     r1, [sp, #0x8]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r1, #0x28
	strb    r0, [r1, #0x0]
	ldr     r0, [sp, #0xc]
	str     r1, [sp, #0x8]
	ldr     r1, [r4, #0x0]
	add     r0, #0x88
	str     r1, [r0, #0x0]
	ldr     r0, [sp, #0xc]
	add     r4, #0x10
	.hword  0x1d00 @ add r0, r0, #0x4
	.hword  0x1ced @ add r5, r5, #0x3
	str     r0, [sp, #0xc]
	cmp     r7, #0x18
	blt     branch_224a970
	ldr     r0, [r6, #0x3c]
	add     r1, sp, #0x38
	bl      Function_205eaec
	ldr     r0, [sp, #0x14]
	ldr     r1, [sp, #0x3c]
	bl      Function_224a434
	mov     r0, #0x19
	ldr     r1, [pc, #0x58] @ 0x224aaa0, (=#0x6a4000)
	ldr     r2, [r6, #0x24]
	lsl     r0, r0, #14
	bl      Function_20206bc
	mov     r1, #0x6
	str     r1, [sp, #0x0]
	ldr     r0, [pc, #0x4c] @ 0x224aaa4, (=#0x76a0)
	.hword  0x1fc9 @ sub r1, r1, #0x7
	str     r0, [sp, #0x4]
	ldr     r0, [r6, #0x48]
	mov     r2, #0x1
	mov     r3, #0x0
	bl      0x21d57fc
	mov     r1, #0x0
	mov     r2, #0x0
	ldr     r0, [r6, #0x48]
	mvn     r1, r1
	mov     r3, r2
	bl      0x21d5834
	mov     r0, #0x0
	mov     r1, r0
	add     r2, sp, #0x18
.thumb
branch_224aa78: @ 224aa78 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r1, [r2, #0x0]
	.hword  0x1c89 @ add r1, r1, #0x2
	.hword  0x1c52 @ add r2, r2, #0x1
	cmp     r0, #0x20
	blt     branch_224aa78
	ldr     r0, [r6, #0x48]
	add     r1, sp, #0x18
	bl      0x21d585c
	add     sp, #0x5c
	pop     {r4-r7,pc}
@ 0x224aa90

.word 0x224c710 @ 0x224aa90
.word 0x12d @ 0x224aa94
.word 0x12e @ 0x224aa98
.word 0x224cb68 @ 0x224aa9c
.word 0x6a4000 @ 0x224aaa0
.word 0x76a0 @ 0x224aaa4
.thumb
Function_224aaa8: @ 224aaa8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_203d174
	bl      Function_2027860
	bl      Function_2027f80
	cmp     r0, #0x3
	beq     branch_224aac0
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x224aac0

.thumb
branch_224aac0: @ 224aac0 :thumb
	ldr     r0, [r4, #0x4]
	ldr     r4, [r0, #0x24]
	cmp     r4, #0x0
	bne     branch_224aacc
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x224aacc

.thumb
branch_224aacc: @ 224aacc :thumb
	mov     r0, r4
	bl      Function_224a1e4
	mov     r1, r0
	cmp     r1, #0x18
	beq     branch_224aae2
	mov     r0, r4
	bl      Function_224a254
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x224aae2

.thumb
branch_224aae2: @ 224aae2 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x224aae6


.align 2, 0


.thumb
Function_224aae8: @ 224aae8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	ldr     r0, [r0, #0x24]
	bl      Function_20181c4
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	str     r1, [r0, #0x24]
	pop     {r4,pc}
@ 0x224aafc

.thumb
Function_224aafc: @ 224aafc :thumb
	push    {r4-r6,lr}
	asr     r0, r3, #15
	lsr     r0, r0, #16
	add     r0, r3, r0
	mov     r4, r1
	asr     r0, r0, #16
	mov     r1, #0xa
	mov     r6, r2
	blx     _s32_div_f
	lsl     r0, r0, #24
	lsr     r5, r0, #24
	cmp     r5, #0x3
	bls     branch_224ab1c
	bl      ErrorHandling
branch_224ab1c: @ 224ab1c :thumb
	ldr     r1, [pc, #0x1c] @ 0x224ab3c, (=#0x224d035)
	lsl     r0, r5, #10
	add     r5, r1, r0
	lsl     r0, r6, #5
	add     r4, r4, r0
	mov     r0, #0x1
	lsl     r0, r0, #10
	cmp     r4, r0
	blt     branch_224ab32
	bl      ErrorHandling
.thumb
branch_224ab32: @ 224ab32 :thumb
	ldrb    r1, [r5, r4]
	ldr     r0, [sp, #0x10]
	str     r1, [r0, #0x0]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x224ab3c

.word 0x224d035 @ 0x224ab3c
.thumb
Function_224ab40: @ 224ab40 :thumb
	push    {r3,lr}
	cmp     r0, #0x0
	beq     branch_224ab50
	cmp     r0, #0x1
	beq     branch_224ab54
	cmp     r0, #0x2
	beq     branch_224ab58
	b       branch_224ab5c
@ 0x224ab50

.thumb
branch_224ab50: @ 224ab50 :thumb
	mov     r0, #0x3
	pop     {r3,pc}
@ 0x224ab54

.thumb
branch_224ab54: @ 224ab54 :thumb
	mov     r0, #0x6
	pop     {r3,pc}
@ 0x224ab58

.thumb
branch_224ab58: @ 224ab58 :thumb
	mov     r0, #0xd
	pop     {r3,pc}
@ 0x224ab5c

.thumb
branch_224ab5c: @ 224ab5c :thumb
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x224ab64

.thumb
Function_224ab64: @ 224ab64 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldrb    r0, [r5, #0x7]
	mov     r6, r1
	mov     r7, #0x0
	lsl     r0, r0, #28
	lsr     r0, r0, #31
	beq     branch_224ab7a
	cmp     r0, #0x1
	beq     branch_224ab7e
	b       branch_224ab82
@ 0x224ab7a

.thumb
branch_224ab7a: @ 224ab7a :thumb
	add     r7, r2, #0x4
	b       branch_224ab86
@ 0x224ab7e

.thumb
branch_224ab7e: @ 224ab7e :thumb
	mov     r7, r2
	b       branch_224ab86
@ 0x224ab82

.thumb
branch_224ab82: @ 224ab82 :thumb
	bl      ErrorHandling
.thumb
branch_224ab86: @ 224ab86 :thumb
	ldrb    r0, [r5, #0x7]
	mov     r4, #0x0
	lsl     r0, r0, #30
	lsr     r0, r0, #30
	cmp     r0, #0x3
	bls     branch_224ab96
	bl      ErrorHandling
.thumb
branch_224ab96: @ 224ab96 :thumb
	ldrb    r0, [r5, #0x7]
	lsl     r0, r0, #30
	lsr     r0, r0, #30
	lsl     r0, r0, #14
	add     r0, r4, r0
	lsl     r0, r0, #16
	asr     r4, r0, #16
	cmp     r6, #0x3
	bls     branch_224abac
	bl      ErrorHandling
.thumb
branch_224abac: @ 224abac :thumb
	lsl     r0, r6, #30
	asr     r1, r0, #16
	ldrb    r0, [r5, #0x7]
	lsl     r0, r0, #29
	lsr     r0, r0, #31
	bne     branch_224abc0
	add     r0, r4, r1
	lsl     r0, r0, #16
	asr     r4, r0, #16
	b       branch_224abd0
@ 0x224abc0

.thumb
branch_224abc0: @ 224abc0 :thumb
	cmp     r0, #0x1
	bne     branch_224abcc
	sub     r0, r4, r1
	lsl     r0, r0, #16
	asr     r4, r0, #16
	b       branch_224abd0
@ 0x224abcc

.thumb
branch_224abcc: @ 224abcc :thumb
	bl      ErrorHandling
.thumb
branch_224abd0: @ 224abd0 :thumb
	str     r4, [r7, #0x0]
	pop     {r3-r7,pc}
@ 0x224abd4

.thumb
Function_224abd4: @ 224abd4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x2c
	mov     r5, r0
	bl      Function_203d174
	bl      Function_2027860
	mov     r1, #0x5
	bl      Function_2027f6c
	str     r0, [sp, #0xc]
	mov     r0, #0x4
	mov     r1, #0x1c
	bl      Function_2018144
	ldr     r1, [r5, #0x4]
	str     r0, [r1, #0x24]
	ldr     r0, [r5, #0x4]
	ldr     r0, [r0, #0x24]
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0xc]
	ldr     r1, [r0, #0x4]
	ldr     r0, [sp, #0x10]
	strb    r1, [r0, #0x11]
	ldr     r0, [sp, #0xc]
	ldr     r1, [r0, #0x0]
	ldr     r0, [sp, #0x10]
	strb    r1, [r0, #0x13]
	ldr     r0, [sp, #0xc]
	ldr     r0, [r0, #0x4]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_224ab40
	mov     r6, #0x0
	str     r0, [sp, #0x8]
	cmp     r0, #0x0
	ble     branch_224aca2
	mov     r7, r6
.thumb
branch_224ac22: @ 224ac22 :thumb
	ldr     r0, [sp, #0xc]
	ldr     r0, [r0, #0x4]
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x7c] @ 0x224aca8, (=#0x224c740)
	ldr     r0, [r0, r1]
	add     r4, r0, r7
	ldrb    r0, [r4, #0x4]
	lsl     r2, r0, #16
	str     r2, [sp, #0x20]
	ldrb    r0, [r4, #0x5]
	lsl     r1, r0, #16
	str     r1, [sp, #0x24]
	ldrb    r0, [r4, #0x6]
	lsl     r3, r0, #16
	mov     r0, #0x2
	lsl     r0, r0, #14
	add     r0, r2, r0
	str     r0, [sp, #0x20]
	mov     r0, #0x2
	lsl     r0, r0, #14
	str     r3, [sp, #0x28]
	add     r0, r3, r0
	str     r0, [sp, #0x28]
	ldrb    r0, [r4, #0x7]
	lsl     r0, r0, #28
	lsr     r0, r0, #31
	cmp     r0, #0x1
	bne     branch_224ac62
	mov     r0, #0x2
	lsl     r0, r0, #14
	add     r0, r1, r0
	str     r0, [sp, #0x24]
.thumb
branch_224ac62: @ 224ac62 :thumb
	mov     r0, #0x0
	ldr     r1, [sp, #0xc]
	str     r0, [sp, #0x14]
	str     r0, [sp, #0x18]
	str     r0, [sp, #0x1c]
	ldr     r1, [r1, #0x0]
	mov     r0, r4
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	add     r2, sp, #0x14
	bl      Function_224ab64
	add     r0, sp, #0x14
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x50]
	add     r3, sp, #0x20
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r0, #0xa4
	ldr     r0, [r0, #0x0]
	ldr     r1, [r5, #0x30]
	ldr     r2, [r4, #0x0]
	bl      0x21e19cc
	ldr     r1, [sp, #0x10]
	add     r7, #0x8
	add     r1, r1, r6
	strb    r0, [r1, #0x4]
	ldr     r0, [sp, #0x8]
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r0
	blt     branch_224ac22
.thumb
branch_224aca2: @ 224aca2 :thumb
	add     sp, #0x2c
	pop     {r4-r7,pc}
@ 0x224aca6


.align 2


.word 0x224c740 @ 0x224aca8
.thumb
Function_224acac: @ 224acac :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	ldr     r0, [r0, #0x24]
	bl      Function_20181c4
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	str     r1, [r0, #0x24]
	pop     {r4,pc}
@ 0x224acc0

.thumb
Function_224acc0: @ 224acc0 :thumb
	push    {r4-r7}
	ldr     r0, [r0, #0x4]
	mov     r3, r1
	mov     r1, r2
	ldr     r2, [r0, #0x24]
	mov     r4, #0x14
	ldrb    r0, [r2, #0x11]
	ldrb    r2, [r2, #0x13]
	mov     r5, r0
	mul     r5, r4
	ldr     r4, [pc, #0x50] @ 0x224ad28, (=#0x224e740)
	lsl     r2, r2, #2
	ldr     r6, [r4, r5]
	ldr     r4, [pc, #0x50] @ 0x224ad2c, (=#0x224e744)
	add     r4, r4, r5
	ldr     r2, [r2, r4]
	mov     r5, #0x0
	mov     r12, r2
	lsl     r2, r0, #2
	ldr     r0, [pc, #0x48] @ 0x224ad30, (=#0x224c74c)
	cmp     r6, #0x0
	ldr     r7, [r0, r2]
	ble     branch_224ad22
.thumb
branch_224acee: @ 224acee :thumb
	mov     r0, r12
	ldrb    r0, [r0, r5]
	lsl     r0, r0, #2
	ldrb    r2, [r7, r0]
	add     r4, r7, r0
	cmp     r2, r3
	bgt     branch_224ad1c
	ldrb    r0, [r4, #0x2]
	add     r0, r2, r0
	cmp     r3, r0
	bge     branch_224ad1c
	ldrb    r0, [r4, #0x1]
	cmp     r0, r1
	bgt     branch_224ad1c
	ldrb    r2, [r4, #0x3]
	add     r0, r0, r2
	cmp     r1, r0
	bge     branch_224ad1c
	ldr     r1, [sp, #0x10]
	mov     r0, #0x1
	str     r0, [r1, #0x0]
	pop     {r4-r7}
	bx      lr
@ 0x224ad1c

.thumb
branch_224ad1c: @ 224ad1c :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r6
	blt     branch_224acee
.thumb
branch_224ad22: @ 224ad22 :thumb
	mov     r0, #0x0
	pop     {r4-r7}
	bx      lr
@ 0x224ad28

.word 0x224e740 @ 0x224ad28
.word 0x224e744 @ 0x224ad2c
.word 0x224c74c @ 0x224ad30
.thumb
Function_224ad34: @ 224ad34 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r5, r1
	bl      Function_203d174
	bl      Function_2027860
	mov     r1, #0x5
	bl      Function_2027f6c
	mov     r6, r0
	ldr     r0, [r7, #0x4]
	mov     r1, #0x4
	ldr     r4, [r0, #0x24]
	mov     r0, #0xb
	bl      Function_2018184
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	strh    r5, [r4, #0x14]
	strh    r1, [r4, #0x16]
	str     r0, [sp, #0x0]
	ldr     r0, [r6, #0x4]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_224ab40
	strb    r0, [r4, #0x12]
	ldr     r0, [r6, #0x0]
	lsl     r0, r0, #24
	asr     r0, r0, #24
	cmp     r5, #0x0
	bne     branch_224ad90
	mov     r1, #0x1
	lsl     r1, r1, #14
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r1, [r4, #0x18]
	lsr     r2, r0, #31
	lsl     r1, r0, #30
	sub     r1, r1, r2
	mov     r0, #0x1e
	ror     r1, r0
	add     r0, r2, r1
	lsl     r0, r0, #24
	asr     r0, r0, #24
	b       branch_224adca
@ 0x224ad90

.thumb
branch_224ad90: @ 224ad90 :thumb
	cmp     r5, #0x1
	bne     branch_224ada6
	mov     r1, #0x1
	.hword  0x1e40 @ sub r0, r0, #0x1
	lsl     r1, r1, #14
	lsl     r0, r0, #24
	strh    r1, [r4, #0x18]
	asr     r0, r0, #24
	bpl     branch_224adca
	mov     r0, #0x3
	b       branch_224adca
@ 0x224ada6

.thumb
branch_224ada6: @ 224ada6 :thumb
	cmp     r5, #0x2
	bne     branch_224adc4
	mov     r1, #0x2
	lsl     r1, r1, #14
	.hword  0x1c80 @ add r0, r0, #0x2
	strh    r1, [r4, #0x18]
	lsr     r2, r0, #31
	lsl     r1, r0, #30
	sub     r1, r1, r2
	mov     r0, #0x1e
	ror     r1, r0
	add     r0, r2, r1
	lsl     r0, r0, #24
	asr     r0, r0, #24
	b       branch_224adca
@ 0x224adc4

.thumb
branch_224adc4: @ 224adc4 :thumb
	bl      ErrorHandling
	pop     {r3-r7,pc}
@ 0x224adca

.thumb
branch_224adca: @ 224adca :thumb
	str     r0, [r6, #0x0]
	strb    r0, [r4, #0x13]
	ldr     r0, [pc, #0x10] @ 0x224ade0, (=#0x63f)
	bl      Function_2005748
	ldr     r0, [r7, #0x10]
	ldr     r1, [pc, #0xc] @ 0x224ade4, (=#0x224ade9)
	ldr     r2, [sp, #0x0]
	bl      Function_2050944
	pop     {r3-r7,pc}
@ 0x224ade0

.word 0x63f @ 0x224ade0
.word 0x224ade9 @ 0x224ade4
.thumb
Function_224ade8: @ 224ade8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r4, r0
	bl      Function_2050a60
	str     r0, [sp, #0x8]
	mov     r0, r4
	bl      Function_2050a64
	ldr     r1, [sp, #0x8]
	str     r0, [sp, #0x4]
	ldr     r1, [r1, #0x4]
	ldr     r4, [r1, #0x24]
	mov     r1, r0
	ldr     r1, [r1, #0x0]
	cmp     r1, #0x0
	beq     branch_224ae10
	cmp     r1, #0x1
	beq     branch_224aec8
	b       branch_224aed2
@ 0x224ae10

.thumb
branch_224ae10: @ 224ae10 :thumb
	ldrh    r2, [r4, #0x18]
	mov     r0, #0x1
	ldrh    r1, [r4, #0x16]
	lsl     r0, r0, #10
	str     r0, [sp, #0x0]
	add     r0, r1, r0
	cmp     r0, r2
	ble     branch_224ae28
	sub     r0, r0, r2
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x0]
.thumb
branch_224ae28: @ 224ae28 :thumb
	ldrh    r1, [r4, #0x16]
	ldr     r0, [sp, #0x0]
	add     r0, r1, r0
	strh    r0, [r4, #0x16]
	ldrh    r0, [r4, #0x14]
	cmp     r0, #0x1
	bne     branch_224ae40
	ldr     r0, [sp, #0x0]
	neg     r0, r0
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x0]
.thumb
branch_224ae40: @ 224ae40 :thumb
	ldrb    r0, [r4, #0x12]
	mov     r5, #0x0
	cmp     r0, #0x0
	bls     branch_224aeb4
	ldr     r0, [sp, #0x0]
	neg     r0, r0
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0xc]
.thumb
branch_224ae52: @ 224ae52 :thumb
	ldr     r0, [sp, #0x8]
	add     r1, r4, r5
	add     r0, #0xa4
	ldrb    r1, [r1, #0x4]
	ldr     r0, [r0, #0x0]
	bl      0x21e18c4
	bl      0x21e1890
	ldrb    r1, [r4, #0x11]
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x6c] @ 0x224aed8, (=#0x224c740)
	ldr     r2, [r1, r2]
	lsl     r1, r5, #3
	add     r1, r2, r1
	ldrb    r2, [r1, #0x7]
	lsl     r2, r2, #29
	lsr     r2, r2, #31
	cmp     r2, #0x1
	bne     branch_224ae7e
	ldr     r7, [sp, #0xc]
	b       branch_224ae80
@ 0x224ae7e

.thumb
branch_224ae7e: @ 224ae7e :thumb
	ldr     r7, [sp, #0x0]
.thumb
branch_224ae80: @ 224ae80 :thumb
	ldrb    r1, [r1, #0x7]
	lsl     r1, r1, #28
	lsr     r1, r1, #31
	beq     branch_224ae8e
	cmp     r1, #0x1
	beq     branch_224ae92
	b       branch_224ae96
@ 0x224ae8e

.thumb
branch_224ae8e: @ 224ae8e :thumb
	add     r6, r0, #0x4
	b       branch_224ae9a
@ 0x224ae92

.thumb
branch_224ae92: @ 224ae92 :thumb
	mov     r6, r0
	b       branch_224ae9a
@ 0x224ae96

.thumb
branch_224ae96: @ 224ae96 :thumb
	bl      ErrorHandling
.thumb
branch_224ae9a: @ 224ae9a :thumb
	ldr     r0, [r6, #0x0]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	add     r0, r0, r7
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [r6, #0x0]
	add     r0, r5, #0x1
	lsl     r0, r0, #24
	lsr     r5, r0, #24
	ldrb    r0, [r4, #0x12]
	cmp     r5, r0
	bcc     branch_224ae52
.thumb
branch_224aeb4: @ 224aeb4 :thumb
	ldrh    r1, [r4, #0x16]
	ldrh    r0, [r4, #0x18]
	cmp     r1, r0
	bcc     branch_224aed2
	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x4]
	str     r1, [r0, #0x0]
	b       branch_224aed2
@ 0x224aec8

.thumb
branch_224aec8: @ 224aec8 :thumb
	bl      Function_20181c4
	add     sp, #0x10
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x224aed2

.thumb
branch_224aed2: @ 224aed2 :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x224aed8

.word 0x224c740 @ 0x224aed8
.thumb
Function_224aedc: @ 224aedc :thumb
	push    {r4,lr}
	ldr     r0, [r0, #0xc]
	mov     r4, r1
	bl      LoadFlagAdress
	mov     r1, r4
	bl      Function_206b46c
	pop     {r4,pc}
@ 0x224aeee


.align 2, 0


.thumb
Function_224aef0: @ 224aef0 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	bl      Function_206b47c
	pop     {r3,pc}
@ 0x224aefe


.align 2, 0


.thumb
Function_224af00: @ 224af00 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	add     r3, r0, r1
	mov     r0, #0xf
	lsl     r0, r0, #14
	str     r3, [r4, #0x4]
	cmp     r3, r0
	blt     branch_224af2a
	mov     r1, #0x1
	lsl     r1, r1, #12
	mov     r2, r0
.thumb
branch_224af18: @ 224af18 :thumb
	ldr     r3, [r4, #0x4]
	sub     r3, r3, r0
	str     r3, [r4, #0x4]
	ldr     r3, [r4, #0x0]
	add     r3, r3, r1
	str     r3, [r4, #0x0]
	ldr     r3, [r4, #0x4]
	cmp     r3, r2
	bge     branch_224af18
.thumb
branch_224af2a: @ 224af2a :thumb
	cmp     r3, #0x0
	bge     branch_224af48
	mov     r0, #0xf
	mov     r1, #0x1
	lsl     r0, r0, #14
	lsl     r1, r1, #12
.thumb
branch_224af36: @ 224af36 :thumb
	ldr     r2, [r4, #0x4]
	add     r2, r2, r0
	str     r2, [r4, #0x4]
	ldr     r2, [r4, #0x0]
	add     r2, r2, r1
	str     r2, [r4, #0x0]
	ldr     r2, [r4, #0x4]
	cmp     r2, #0x0
	blt     branch_224af36
.thumb
branch_224af48: @ 224af48 :thumb
	mov     r1, #0x3
	ldr     r0, [r4, #0x0]
	lsl     r1, r1, #14
	blx     _s32_div_f
	str     r1, [r4, #0x0]
	pop     {r4,pc}
@ 0x224af56


.align 2, 0


.thumb
Function_224af58: @ 224af58 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x14]
	bl      0x21e1890
	ldr     r1, [r4, #0x0]
	str     r1, [r0, #0x0]
	mov     r1, #0x1
	ldr     r2, [r4, #0x4]
	lsl     r1, r1, #16
	sub     r1, r1, r2
	lsr     r3, r1, #31
	lsl     r2, r1, #16
	sub     r2, r2, r3
	mov     r1, #0x10
	ror     r2, r1
	add     r1, r3, r2
	str     r1, [r0, #0x4]
	ldr     r1, [r4, #0x8]
	str     r1, [r0, #0x8]
	pop     {r4,pc}
@ 0x224af82


.align 2, 0


.thumb
Function_224af84: @ 224af84 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	ldr     r1, [r6, #0x4]
	mov     r5, r6
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r4, r0, #12
	mov     r0, r4
	mov     r1, #0xf
	add     r5, #0x24
	blx     _s32_div_f
	cmp     r1, #0x0
	bne     branch_224afb2
	mov     r0, r4
	mov     r1, #0x5
	blx     _s32_div_f
	lsl     r1, r0, #1
	ldr     r0, [pc, #0x68] @ 0x224b018, (=#0x224c7b8)
	ldrh    r0, [r0, r1]
	b       branch_224afb6
@ 0x224afb2

.thumb
branch_224afb2: @ 224afb2 :thumb
	ldr     r0, [pc, #0x68] @ 0x224b01c, (=#0x445)
	mul     r0, r4
.thumb
branch_224afb6: @ 224afb6 :thumb
	str     r0, [r5, #0x4]
	mov     r0, #0x1
	ldr     r1, [r5, #0x4]
	lsl     r0, r0, #14
	sub     r0, r1, r0
	lsr     r2, r0, #31
	lsl     r1, r0, #16
	sub     r1, r1, r2
	mov     r0, #0x10
	ror     r1, r0
	add     r0, r2, r1
	str     r0, [r5, #0x4]
	mov     r0, r5
	bl      Function_224af58
	ldr     r2, [r6, #0x0]
	mov     r0, r6
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	asr     r1, r1, #12
	lsl     r2, r1, #1
	ldr     r1, [pc, #0x34] @ 0x224b018, (=#0x224c7b8)
	add     r0, #0xc
	ldrh    r1, [r1, r2]
	str     r1, [r0, #0x4]
	ldr     r1, [r6, #0x8]
	cmp     r1, #0x1
	bne     branch_224affa
	mov     r1, #0x5b
	ldr     r2, [r0, #0x4]
	mul     r1, r4
	add     r1, r2, r1
	str     r1, [r0, #0x4]
.thumb
branch_224affa: @ 224affa :thumb
	mov     r1, #0x2
	ldr     r2, [r0, #0x4]
	lsl     r1, r1, #14
	add     r1, r2, r1
	lsr     r3, r1, #31
	lsl     r2, r1, #16
	sub     r2, r2, r3
	mov     r1, #0x10
	ror     r2, r1
	add     r1, r3, r2
	str     r1, [r0, #0x4]
	bl      Function_224af58
	pop     {r4-r6,pc}
@ 0x224b016


.align 2


.word 0x224c7b8 @ 0x224b018
.word 0x445 @ 0x224b01c
.thumb
Function_224b020: @ 224b020 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x2c
	mov     r6, r0
	bl      Function_203d174
	bl      Function_2027860
	mov     r1, #0x8
	bl      Function_2027f6c
	str     r0, [sp, #0x10]
	mov     r0, #0x4
	mov     r1, #0x40
	bl      Function_2018144
	str     r0, [sp, #0xc]
	mov     r1, #0x0
	mov     r2, #0x40
	blx     Function_20d5124
	ldr     r0, [sp, #0xc]
	ldr     r1, [r6, #0x4]
	mov     r4, r0
	str     r0, [r1, #0x24]
	str     r6, [r0, #0x3c]
	ldr     r0, [pc, #0x98] @ 0x224b0ec, (=#0x224c7a0)
	mov     r7, #0x0
	str     r0, [sp, #0x8]
	add     r0, sp, #0x20
	str     r7, [r0, #0x0]
	str     r7, [r0, #0x4]
	ldr     r5, [pc, #0x90] @ 0x224b0f0, (=#0x224c700)
	add     r4, #0xc
	str     r7, [r0, #0x8]
.thumb
branch_224b064: @ 224b064 :thumb
	ldr     r0, [r5, #0x0]
	ldr     r3, [sp, #0x8]
	str     r0, [r4, #0xc]
	add     r0, sp, #0x20
	str     r0, [sp, #0x0]
	ldr     r0, [r6, #0x50]
	str     r0, [sp, #0x4]
	mov     r0, r6
	add     r0, #0xa4
	ldr     r0, [r0, #0x0]
	ldr     r1, [r6, #0x30]
	ldr     r2, [r5, #0x0]
	bl      0x21e19cc
	strh    r0, [r4, #0x10]
	mov     r0, r6
	add     r0, #0xa4
	ldr     r0, [r0, #0x0]
	ldr     r1, [r5, #0x0]
	bl      0x21e18cc
	str     r0, [r4, #0x14]
	ldr     r0, [sp, #0x8]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r0, #0xc
	add     r4, #0x18
	.hword  0x1d2d @ add r5, r5, #0x4
	str     r0, [sp, #0x8]
	cmp     r7, #0x2
	blt     branch_224b064
	ldr     r3, [pc, #0x50] @ 0x224b0f4, (=#0x224c71c)
	add     r2, sp, #0x14
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	mov     r0, r6
	bl      Function_224aef0
	ldr     r1, [sp, #0x10]
	ldr     r2, [pc, #0x40] @ 0x224b0f8, (=#0x224c774)
	str     r0, [r1, #0x0]
	lsl     r1, r0, #2
	add     r0, r2, r1
	ldsh    r1, [r2, r1]
	lsl     r2, r1, #12
	ldr     r1, [sp, #0xc]
	str     r2, [r1, #0x0]
	mov     r1, #0x2
	ldsh    r0, [r0, r1]
	lsl     r1, r0, #12
	ldr     r0, [sp, #0xc]
	str     r1, [r0, #0x4]
	bl      Function_224af84
	ldr     r0, [sp, #0x10]
	ldr     r1, [r0, #0x0]
	cmp     r1, #0x3
	bcs     branch_224b0e6
	lsl     r2, r1, #2
	add     r1, sp, #0x14
	ldr     r1, [r1, r2]
	mov     r0, r6
	bl      0x21f4098
.thumb
branch_224b0e6: @ 224b0e6 :thumb
	add     sp, #0x2c
	pop     {r4-r7,pc}
@ 0x224b0ea


.align 2


.word 0x224c7a0 @ 0x224b0ec
.word 0x224c700 @ 0x224b0f0
.word 0x224c71c @ 0x224b0f4
.word 0x224c774 @ 0x224b0f8
.thumb
Function_224b0fc: @ 224b0fc :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	ldr     r0, [r0, #0x24]
	bl      Function_20181c4
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	str     r1, [r0, #0x24]
	pop     {r4,pc}
@ 0x224b110

.thumb
Function_224b110: @ 224b110 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r4, r2
	ldr     r6, [sp, #0x18]
	bl      Function_203d174
	bl      Function_2027860
	mov     r1, #0x8
	bl      Function_2027f6c
	ldr     r1, [r0, #0x0]
	mov     r0, #0x0
	str     r0, [r6, #0x0]
	cmp     r4, #0x7
	blt     branch_224b156
	cmp     r4, #0x13
	bgt     branch_224b156
	cmp     r5, #0x5
	blt     branch_224b156
	cmp     r5, #0x11
	bgt     branch_224b156
	.hword  0x1fe2 @ sub r2, r4, #0x7
	mov     r3, r2
	mov     r0, #0xd
	mul     r3, r0
	.hword  0x1f6f @ sub r7, r5, #0x5
	mov     r0, #0xa9
	mov     r2, r1
	mul     r2, r0
	ldr     r0, [pc, #0x34] @ 0x224b184, (=#0x224cce8)
	add     r3, r3, r7
	add     r0, r0, r2
	ldrb    r0, [r3, r0]
	str     r0, [r6, #0x0]
.thumb
branch_224b156: @ 224b156 :thumb
	cmp     r0, #0x0
	bne     branch_224b180
	cmp     r4, #0x13
	blt     branch_224b180
	bgt     branch_224b180
	cmp     r5, #0x1
	blt     branch_224b180
	cmp     r5, #0x15
	bgt     branch_224b180
	sub     r4, #0x13
	mov     r0, #0x15
	mov     r3, r4
	mov     r2, r1
	mul     r3, r0
	mul     r2, r0
	ldr     r0, [pc, #0x10] @ 0x224b188, (=#0x224ca5c)
	.hword  0x1e6d @ sub r5, r5, #0x1
	add     r1, r3, r5
	add     r0, r0, r2
	ldrb    r0, [r1, r0]
	str     r0, [r6, #0x0]
.thumb
branch_224b180: @ 224b180 :thumb
	pop     {r3-r7,pc}
@ 0x224b182


.align 2


.word 0x224cce8 @ 0x224b184
.word 0x224ca5c @ 0x224b188
.thumb
Function_224b18c: @ 224b18c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r0, [r5, #0x3c]
	mov     r4, r1
	mov     r7, r2
	str     r3, [sp, #0xc]
	bl      GetSpritePositionX
	mov     r6, r0
	ldr     r0, [r5, #0x3c]
	bl      GetSpritePositionY
	mov     r2, r0
	str     r6, [r4, #0x10]
	str     r2, [r4, #0x14]
	ldr     r0, [sp, #0xc]
	str     r7, [r4, #0x8]
	str     r0, [r4, #0xc]
	ldr     r1, [r4, #0x8]
	ldr     r0, [r4, #0x10]
	sub     r0, r1, r0
	bpl     branch_224b1be
	mov     r0, #0x2
	b       branch_224b1c0
@ 0x224b1be

.thumb
branch_224b1be: @ 224b1be :thumb
	mov     r0, #0x3
.thumb
branch_224b1c0: @ 224b1c0 :thumb
	str     r0, [r4, #0x18]
	ldr     r1, [r4, #0xc]
	ldr     r0, [r4, #0x14]
	sub     r0, r1, r0
	bpl     branch_224b1ce
	mov     r0, #0x0
	b       branch_224b1d0
@ 0x224b1ce

.thumb
branch_224b1ce: @ 224b1ce :thumb
	mov     r0, #0x1
.thumb
branch_224b1d0: @ 224b1d0 :thumb
	str     r0, [r4, #0x1c]
	ldr     r1, [r4, #0x8]
	ldr     r0, [r4, #0x10]
	sub     r3, r1, r0
	bpl     branch_224b1dc
	neg     r3, r3
.thumb
branch_224b1dc: @ 224b1dc :thumb
	ldr     r1, [r4, #0xc]
	ldr     r0, [r4, #0x14]
	sub     r0, r1, r0
	bpl     branch_224b1e6
	neg     r0, r0
.thumb
branch_224b1e6: @ 224b1e6 :thumb
	cmp     r3, r0
	bge     branch_224b1ee
	mov     r0, #0x1
	str     r0, [r4, #0x4]
.thumb
branch_224b1ee: @ 224b1ee :thumb
	mov     r0, #0x2
	lsl     r0, r0, #12
	str     r0, [sp, #0x0]
	mov     r3, #0x0
	str     r3, [sp, #0x4]
	ldr     r0, [r5, #0x1c]
	mov     r1, r6
	ldr     r0, [r0, #0x0]
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x38]
	bl      Function_20619dc
	str     r0, [r4, #0x20]
	bl      Function_20642f8
	ldr     r0, [r4, #0x20]
	mov     r1, #0x1
	bl      Function_2062d64
	ldr     r0, [r4, #0x20]
	mov     r1, #0x0
	bl      Function_2062d80
	ldr     r0, [r4, #0x20]
	mov     r1, #0x1
	bl      Function_2062e28
	ldr     r0, [r4, #0x20]
	bl      Function_2063070
	ldr     r1, [r5, #0x28]
	mov     r4, r0
	bl      0x21e931c
	ldr     r1, [r5, #0x24]
	mov     r0, r4
	bl      Function_2020690
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x224b23e


.align 2, 0


.thumb
Function_224b240: @ 224b240 :thumb
	ldr     r3, [r0, #0x8]
	str     r3, [r0, #0x10]
	ldr     r3, [r0, #0xc]
	str     r3, [r0, #0x14]
	str     r1, [r0, #0x8]
	str     r2, [r0, #0xc]
	ldr     r2, [r0, #0x8]
	ldr     r1, [r0, #0x10]
	sub     r1, r2, r1
	bpl     branch_224b258
	mov     r1, #0x2
	b       branch_224b25a
@ 0x224b258

.thumb
branch_224b258: @ 224b258 :thumb
	mov     r1, #0x3
.thumb
branch_224b25a: @ 224b25a :thumb
	str     r1, [r0, #0x18]
	ldr     r2, [r0, #0xc]
	ldr     r1, [r0, #0x14]
	sub     r1, r2, r1
	bpl     branch_224b268
	mov     r1, #0x0
	b       branch_224b26a
@ 0x224b268

.thumb
branch_224b268: @ 224b268 :thumb
	mov     r1, #0x1
.thumb
branch_224b26a: @ 224b26a :thumb
	str     r1, [r0, #0x1c]
	ldr     r2, [r0, #0x8]
	ldr     r1, [r0, #0x10]
	sub     r3, r2, r1
	bpl     branch_224b276
	neg     r3, r3
.thumb
branch_224b276: @ 224b276 :thumb
	ldr     r2, [r0, #0xc]
	ldr     r1, [r0, #0x14]
	sub     r1, r2, r1
	bpl     branch_224b280
	neg     r1, r1
.thumb
branch_224b280: @ 224b280 :thumb
	cmp     r3, r1
	bge     branch_224b288
	mov     r1, #0x1
	str     r1, [r0, #0x4]
.thumb
branch_224b288: @ 224b288 :thumb
	bx      lr
@ 0x224b28a


.align 2, 0


.thumb
Function_224b28c: @ 224b28c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x4]
	mov     r0, #0x1
	eor     r0, r1
	str     r0, [r4, #0x4]
	ldr     r0, [r4, #0x10]
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x14]
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0x18]
	bl      GetOppositeFaceDirection
	str     r0, [r4, #0x18]
	ldr     r0, [r4, #0x1c]
	bl      GetOppositeFaceDirection
	str     r0, [r4, #0x1c]
	pop     {r4,pc}
@ 0x224b2b2


.align 2, 0


.thumb
Function_224b2b4: @ 224b2b4 :thumb
	str     r1, [r0, #0x4]
	str     r2, [r0, #0x8]
	ldr     r1, [sp, #0x0]
	str     r3, [r0, #0xc]
	str     r1, [r0, #0x18]
	ldr     r1, [sp, #0x4]
	str     r1, [r0, #0x1c]
	bx      lr
@ 0x224b2c4

.thumb
Function_224b2c4: @ 224b2c4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x3c]
	mov     r4, r1
	bl      Function_205eafc
	ldr     r1, [r5, #0x28]
	mov     r6, r0
	bl      0x21e931c
	ldr     r1, [r5, #0x24]
	mov     r0, r6
	bl      Function_2020690
	ldr     r0, [r4, #0x20]
	bl      Function_2061af4
	pop     {r4-r6,pc}
@ 0x224b2e8

.thumb
Function_224b2e8: @ 224b2e8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r7, [r5, #0x20]
	mov     r0, r7
	bl      Function_20655f4
	cmp     r0, #0x1
	bne     branch_224b36c
	mov     r0, r7
	mov     r6, #0x9a
	bl      LoadSpritePositionX
	mov     r4, r0
	mov     r0, r7
	bl      LoadSpritePositionY
	ldr     r1, [r5, #0x8]
	cmp     r4, r1
	bne     branch_224b318
	ldr     r2, [r5, #0xc]
	cmp     r0, r2
	bne     branch_224b318
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x224b318

.thumb
branch_224b318: @ 224b318 :thumb
	ldr     r2, [r5, #0x4]
	cmp     r2, #0x0
	beq     branch_224b340
	cmp     r4, r1
	beq     branch_224b32e
	ldr     r0, [r5, #0x18]
	mov     r1, #0xc
	bl      Function_2065838
	mov     r6, r0
	b       branch_224b360
@ 0x224b32e

.thumb
branch_224b32e: @ 224b32e :thumb
	ldr     r1, [r5, #0xc]
	cmp     r0, r1
	beq     branch_224b360
	ldr     r0, [r5, #0x1c]
	mov     r1, #0xc
	bl      Function_2065838
	mov     r6, r0
	b       branch_224b360
@ 0x224b340

.thumb
branch_224b340: @ 224b340 :thumb
	ldr     r2, [r5, #0xc]
	cmp     r0, r2
	beq     branch_224b352
	ldr     r0, [r5, #0x1c]
	mov     r1, #0xc
	bl      Function_2065838
	mov     r6, r0
	b       branch_224b360
@ 0x224b352

.thumb
branch_224b352: @ 224b352 :thumb
	cmp     r4, r1
	beq     branch_224b360
	ldr     r0, [r5, #0x18]
	mov     r1, #0xc
	bl      Function_2065838
	mov     r6, r0
.thumb
branch_224b360: @ 224b360 :thumb
	cmp     r6, #0x9a
	beq     branch_224b36c
	mov     r0, r7
	mov     r1, r6
	bl      Function_2065638
.thumb
branch_224b36c: @ 224b36c :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224b370

.thumb
Function_224b370: @ 224b370 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x0]
	mov     r7, r1
	mov     r4, r2
	ldr     r6, [r5, #0x4]
	cmp     r0, r7
	bne     branch_224b388
	cmp     r6, r4
	beq     branch_224b3c0
.thumb
branch_224b388: @ 224b388 :thumb
	mov     r1, #0x2
	mov     r0, r5
	lsl     r1, r1, #12
	bl      Function_224af00
	ldr     r0, [r5, #0x0]
	ldr     r1, [r5, #0x4]
	cmp     r0, r7
	bne     branch_224b3bc
	cmp     r6, r1
	ble     branch_224b3b2
	mov     r2, #0xf
	lsl     r2, r2, #14
	add     r3, r1, r2
	add     r2, r4, r2
	cmp     r6, r2
	bge     branch_224b3bc
	cmp     r3, r2
	ble     branch_224b3bc
	mov     r1, r4
	b       branch_224b3bc
@ 0x224b3b2

.thumb
branch_224b3b2: @ 224b3b2 :thumb
	cmp     r6, r4
	bge     branch_224b3bc
	cmp     r1, r4
	ble     branch_224b3bc
	mov     r1, r4
.thumb
branch_224b3bc: @ 224b3bc :thumb
	str     r0, [r5, #0x0]
	str     r1, [r5, #0x4]
.thumb
branch_224b3c0: @ 224b3c0 :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, r7
	bne     branch_224b3cc
	ldr     r0, [r5, #0x4]
	cmp     r0, r4
	beq     branch_224b3d0
.thumb
branch_224b3cc: @ 224b3cc :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
.thumb
branch_224b3d0: @ 224b3d0 :thumb
	ldr     r0, [sp, #0x0]
	pop     {r3-r7,pc}
@ 0x224b3d4

.thumb
Function_224b3d4: @ 224b3d4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r0
	bl      Function_2050a60
	mov     r6, r0
	mov     r0, r4
	bl      Function_2050a64
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r7, [r4, #0x14]
	ldr     r5, [r4, #0x18]
	cmp     r0, #0xc
	bhi     branch_224b438
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x224b3fe

Jumppoints_224b3fe:
.hword branch_224b418 - Jumppoints_224b3fe - 2
.hword branch_224b42c - Jumppoints_224b3fe - 2
.hword branch_224b442 - Jumppoints_224b3fe - 2
.hword branch_224b45c - Jumppoints_224b3fe - 2
.hword branch_224b4d4 - Jumppoints_224b3fe - 2
.hword branch_224b514 - Jumppoints_224b3fe - 2
.hword branch_224b528 - Jumppoints_224b3fe - 2
.hword branch_224b53e - Jumppoints_224b3fe - 2
.hword branch_224b570 - Jumppoints_224b3fe - 2
.hword branch_224b584 - Jumppoints_224b3fe - 2
.hword branch_224b5ba - Jumppoints_224b3fe - 2
.hword branch_224b614 - Jumppoints_224b3fe - 2
.hword branch_224b628 - Jumppoints_224b3fe - 2
.thumb
branch_224b418: @ 224b418 :thumb
	mov     r1, r4
	mov     r0, r6
	add     r1, #0x1c
	mov     r2, #0xb
	mov     r3, #0xd
	bl      Function_224b18c
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_224b42c: @ 224b42c :thumb
	mov     r0, r4
	add     r0, #0x1c
	bl      Function_224b2e8
	cmp     r0, #0x1
	beq     branch_224b43a
.thumb
branch_224b438: @ 224b438 :thumb
	b       branch_224b662
@ 0x224b43a

.thumb
branch_224b43a: @ 224b43a :thumb
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_224b662
@ 0x224b442

.thumb
branch_224b442: @ 224b442 :thumb
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	cmp     r0, #0x8
	blt     branch_224b54a
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	ldr     r0, [pc, #0x214] @ 0x224b668, (=#0x54b)
	bl      Function_2005748
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_224b45c: @ 224b45c :thumb
	ldr     r0, [r7, #0x0]
	cmp     r0, #0x4
	bne     branch_224b478
	ldr     r1, [r5, #0x0]
	ldr     r0, [r4, #0x8]
	cmp     r1, r0
	bne     branch_224b478
	ldr     r1, [r5, #0x4]
	ldr     r0, [r4, #0xc]
	cmp     r1, r0
	ble     branch_224b478
	mov     r0, #0xb
	lsl     r0, r0, #12
	str     r0, [r5, #0x0]
.thumb
branch_224b478: @ 224b478 :thumb
	ldr     r1, [r4, #0x8]
	ldr     r2, [r4, #0xc]
	mov     r0, r5
	bl      Function_224b370
	mov     r6, r0
	ldr     r0, [r7, #0x0]
	cmp     r0, #0x4
	bne     branch_224b494
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x1dc] @ 0x224b66c, (=#0x224c774)
	ldsh    r0, [r0, r1]
	lsl     r0, r0, #12
	str     r0, [r5, #0x0]
.thumb
branch_224b494: @ 224b494 :thumb
	ldr     r1, [r5, #0x0]
	ldr     r0, [r4, #0x8]
	cmp     r1, r0
	bne     branch_224b4b0
	ldr     r1, [r5, #0x4]
	ldr     r0, [r4, #0xc]
	cmp     r1, r0
	ble     branch_224b4aa
	ldr     r0, [r7, #0x0]
	cmp     r0, #0x4
	bne     branch_224b4b4
.thumb
branch_224b4aa: @ 224b4aa :thumb
	mov     r0, #0x0
	str     r0, [r5, #0x8]
	b       branch_224b4b4
@ 0x224b4b0

.thumb
branch_224b4b0: @ 224b4b0 :thumb
	mov     r0, #0x1
	str     r0, [r5, #0x8]
.thumb
branch_224b4b4: @ 224b4b4 :thumb
	mov     r0, r5
	bl      Function_224af84
	cmp     r6, #0x1
	bne     branch_224b54a
	ldr     r0, [pc, #0x1a8] @ 0x224b668, (=#0x54b)
	mov     r1, #0x0
	bl      Function_20057a4
	ldr     r0, [pc, #0x1a8] @ 0x224b670, (=#0x5e3)
	bl      Function_2005748
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_224b662
@ 0x224b4d4

.thumb
branch_224b4d4: @ 224b4d4 :thumb
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	cmp     r0, #0x8
	blt     branch_224b54a
	mov     r1, #0x0
	str     r1, [r4, #0x4]
	ldr     r0, [r7, #0x0]
	.hword  0x1e80 @ sub r0, r0, #0x2
	cmp     r0, #0x1
	bhi     branch_224b504
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r0, #0x1c
	mov     r2, #0xb
	mov     r3, #0x13
	bl      Function_224b2b4
	mov     r0, #0x7
	str     r0, [r4, #0x0]
	b       branch_224b662
@ 0x224b504

.thumb
branch_224b504: @ 224b504 :thumb
	mov     r0, r4
	add     r0, #0x1c
	bl      Function_224b28c
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_224b662
@ 0x224b514

.thumb
branch_224b514: @ 224b514 :thumb
	mov     r0, r4
	add     r0, #0x1c
	bl      Function_224b2e8
	cmp     r0, #0x1
	bne     branch_224b54a
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_224b662
@ 0x224b528

.thumb
branch_224b528: @ 224b528 :thumb
	mov     r1, r4
	mov     r0, r6
	add     r1, #0x1c
	bl      Function_224b2c4
	mov     r0, r4
	bl      Function_20181c4
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x224b53e

.thumb
branch_224b53e: @ 224b53e :thumb
	mov     r0, r4
	add     r0, #0x1c
	bl      Function_224b2e8
	cmp     r0, #0x1
	beq     branch_224b54c
.thumb
branch_224b54a: @ 224b54a :thumb
	b       branch_224b662
@ 0x224b54c

.thumb
branch_224b54c: @ 224b54c :thumb
	ldr     r0, [r7, #0x0]
	mov     r2, #0x14
	mov     r1, #0x3
	cmp     r0, #0x3
	bne     branch_224b55a
	mov     r2, #0x2
	mov     r1, r2
.thumb
branch_224b55a: @ 224b55a :thumb
	str     r1, [sp, #0x0]
	mov     r1, #0x1
	mov     r0, r4
	str     r1, [sp, #0x4]
	add     r0, #0x1c
	mov     r3, #0x13
	bl      Function_224b2b4
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_224b570: @ 224b570 :thumb
	mov     r0, r4
	add     r0, #0x1c
	bl      Function_224b2e8
	cmp     r0, #0x1
	bne     branch_224b662
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_224b662
@ 0x224b584

.thumb
branch_224b584: @ 224b584 :thumb
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	cmp     r0, #0x4
	blt     branch_224b662
	mov     r1, #0x0
	str     r1, [r4, #0x4]
	ldr     r0, [r7, #0x0]
	cmp     r0, #0x2
	bne     branch_224b5a2
	mov     r0, r6
	mov     r1, #0x1
	bl      0x21f416c
	b       branch_224b5ac
@ 0x224b5a2

.thumb
branch_224b5a2: @ 224b5a2 :thumb
	cmp     r0, #0x3
	bne     branch_224b5ac
	mov     r0, r6
	bl      0x21f416c
.thumb
branch_224b5ac: @ 224b5ac :thumb
	ldr     r0, [pc, #0xc4] @ 0x224b674, (=#0x639)
	bl      Function_2005748
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_224b662
@ 0x224b5ba

.thumb
branch_224b5ba: @ 224b5ba :thumb
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	cmp     r0, #0x3c
	blt     branch_224b662
	mov     r1, #0x0
	str     r1, [r4, #0x4]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	ldr     r0, [pc, #0xa4] @ 0x224b674, (=#0x639)
	bl      Function_20057a4
	ldr     r0, [r4, #0x48]
	ldr     r2, [r4, #0x4c]
	mov     r1, #0xc
	bl      Function_200b1b8
	ldr     r0, [r6, #0x8]
	ldr     r1, [r4, #0x44]
	mov     r2, #0x3
	bl      Function_205d8f4
	ldr     r0, [r4, #0x44]
	mov     r1, #0x0
	bl      Function_200e084
	ldr     r0, [r6, #0xc]
	bl      Function_2025e44
	mov     r1, r0
	ldr     r0, [r4, #0x44]
	bl      Function_205d944
	ldr     r0, [r6, #0xc]
	bl      Function_2025e44
	mov     r2, r0
	ldr     r0, [r4, #0x44]
	ldr     r1, [r4, #0x4c]
	mov     r3, #0x1
	bl      Function_205d994
	str     r0, [r4, #0x40]
	b       branch_224b662
@ 0x224b614

.thumb
branch_224b614: @ 224b614 :thumb
	ldr     r0, [r4, #0x40]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_205da04
	cmp     r0, #0x1
	bne     branch_224b662
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_224b628: @ 224b628 :thumb
	ldr     r0, [pc, #0x4c] @ 0x224b678, (=#0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_224b662
	ldr     r0, [r6, #0x3c]
	bl      GetSpritePositionX
	mov     r5, r0
	ldr     r0, [r6, #0x3c]
	bl      GetSpritePositionY
	mov     r2, r0
	mov     r0, r4
	add     r0, #0x1c
	mov     r1, r5
	bl      Function_224b240
	ldr     r0, [r4, #0x44]
	mov     r1, #0x0
	bl      Function_200e084
	ldr     r0, [r4, #0x44]
	bl      Function_201a8fc
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	mov     r0, #0x5
	str     r0, [r4, #0x0]
.thumb
branch_224b662: @ 224b662 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x224b668

.word 0x54b @ 0x224b668
.word 0x224c774 @ 0x224b66c
.word 0x5e3 @ 0x224b670
.word 0x639 @ 0x224b674
.word 0x21bf67c @ 0x224b678
.thumb
Function_224b67c: @ 224b67c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	str     r1, [sp, #0x0]
	str     r2, [sp, #0x4]
	str     r3, [sp, #0x8]
	bl      Function_203d174
	bl      Function_2027860
	mov     r1, #0x8
	bl      Function_2027f6c
	mov     r6, r0
	ldr     r0, [r6, #0x0]
	cmp     r0, #0x4
	bcc     branch_224b6a4
	add     sp, #0x14
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x224b6a4

.thumb
branch_224b6a4: @ 224b6a4 :thumb
	add     r1, r0, #0x1
	str     r1, [r6, #0x0]
	lsl     r1, r1, #16
	mov     r0, r5
	lsr     r1, r1, #16
	bl      Function_224aedc
	ldr     r0, [r5, #0x4]
	ldr     r1, [pc, #0x54] @ 0x224b70c, (=#0x224c774)
	ldr     r0, [r0, #0x24]
	str     r0, [sp, #0xc]
	ldr     r0, [r6, #0x0]
	lsl     r0, r0, #2
	add     r7, r1, r0
	str     r0, [sp, #0x10]
	mov     r0, #0xb
	mov     r1, #0x50
	bl      Function_2018144
	mov     r1, #0x0
	mov     r2, #0x50
	mov     r4, r0
	blx     Function_20d5124
	ldr     r0, [sp, #0x0]
	ldr     r1, [pc, #0x34] @ 0x224b70c, (=#0x224c774)
	str     r0, [r4, #0x44]
	ldr     r0, [sp, #0x4]
	mov     r2, r4
	str     r0, [r4, #0x48]
	ldr     r0, [sp, #0x8]
	str     r0, [r4, #0x4c]
	ldr     r0, [sp, #0x10]
	ldsh    r0, [r1, r0]
	ldr     r1, [pc, #0x24] @ 0x224b710, (=#0x224b3d5)
	lsl     r0, r0, #12
	str     r0, [r4, #0x8]
	mov     r0, #0x2
	ldsh    r0, [r7, r0]
	lsl     r0, r0, #12
	str     r0, [r4, #0xc]
	str     r5, [r4, #0x10]
	ldr     r0, [sp, #0xc]
	str     r6, [r4, #0x14]
	str     r0, [r4, #0x18]
	ldr     r0, [r5, #0x10]
	bl      Function_2050944
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x224b70a


.align 2


.word 0x224c774 @ 0x224b70c
.word Function_224b3d4+1 @ =0x224b3d5, 0x224b710
.thumb
Function_224b714: @ 224b714 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r6, r2
	mov     r4, r3
	bl      Function_203d174
	bl      Function_2027860
	mov     r1, #0x8
	bl      Function_2027f6c
	ldr     r0, [r0, #0x0]
	ldr     r2, [pc, #0x30] @ 0x224b760, (=#0x224c7f0)
	lsl     r1, r0, #3
	add     r0, r2, r1
	ldsh    r1, [r2, r1]
	cmp     r1, r5
	bne     branch_224b75a
	mov     r1, #0x2
	ldsh    r1, [r0, r1]
	cmp     r1, r6
	bne     branch_224b75a
	ldr     r0, [r0, #0x4]
	cmp     r0, #0x0
	bne     branch_224b74e
	cmp     r4, #0x2
	beq     branch_224b756
	cmp     r4, #0x3
	beq     branch_224b756
.thumb
branch_224b74e: @ 224b74e :thumb
	cmp     r0, #0x1
	bne     branch_224b75a
	cmp     r4, #0x1
	bhi     branch_224b75a
.thumb
branch_224b756: @ 224b756 :thumb
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x224b75a

.thumb
branch_224b75a: @ 224b75a :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x224b75e


.align 2


.word 0x224c7f0 @ 0x224b760
.thumb
Function_224b764: @ 224b764 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      Function_203d174
	bl      Function_2027860
	mov     r1, #0x4
	bl      Function_2027f6c
	mov     r1, #0x79
	mov     r6, r0
	mov     r0, #0x4
	lsl     r1, r1, #2
	bl      Function_2018144
	mov     r2, #0x79
	mov     r1, #0x0
	lsl     r2, r2, #2
	mov     r4, r0
	blx     Function_20d5124
	ldr     r0, [r5, #0x4]
	mov     r1, #0x1f
	str     r4, [r0, #0x24]
	str     r5, [r4, #0x0]
	ldr     r0, [r5, #0x40]
	bl      0x21df4a8
	ldr     r0, [r5, #0x40]
	mov     r1, #0xb
	mov     r2, #0x9
	bl      0x21f42d8
	ldr     r0, [r6, #0x0]
	cmp     r0, #0x1
	bne     branch_224b7b4
	mov     r0, r4
	bl      Function_224b958
	b       branch_224b7ba
@ 0x224b7b4

.thumb
branch_224b7b4: @ 224b7b4 :thumb
	mov     r0, r4
	bl      Function_224b8d0
.thumb
branch_224b7ba: @ 224b7ba :thumb
	mov     r0, #0x1
	str     r0, [r6, #0x0]
	pop     {r4-r6,pc}
@ 0x224b7c0

.thumb
Function_224b7c0: @ 224b7c0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	ldr     r0, [r0, #0x24]
	bl      Function_20181c4
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	str     r1, [r0, #0x24]
	pop     {r4,pc}
@ 0x224b7d4

.thumb
Function_224b7d4: @ 224b7d4 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x224b7d8

.thumb
Function_224b7d8: @ 224b7d8 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r3
	mov     r3, #0x2
	lsl     r3, r3, #12
	str     r3, [sp, #0x0]
	mov     r3, #0x0
	str     r3, [sp, #0x4]
	ldr     r5, [r0, #0x1c]
	ldr     r5, [r5, #0x0]
	str     r5, [sp, #0x8]
	ldr     r0, [r0, #0x38]
	bl      Function_20619dc
	mov     r5, r0
	mov     r1, #0xfd
	bl      Function_206290c
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_20629b4
	mov     r0, r5
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x224b80c

.thumb
Function_224b80c: @ 224b80c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	str     r4, [r5, #0x8]
	mov     r0, r4
	mov     r6, r2
	bl      LoadSpritePositionX
	str     r0, [r5, #0x0]
	mov     r0, r4
	bl      LoadSpritePositionY
	str     r0, [r5, #0x4]
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_20629d8
	cmp     r0, #0x0
	bne     branch_224b842
	ldr     r1, [r5, #0x0]
	ldr     r2, [r5, #0x4]
	mov     r0, r6
	mov     r3, #0x0
	bl      0x21f4474
	str     r0, [r5, #0xc]
	pop     {r4-r6,pc}
@ 0x224b842

.thumb
branch_224b842: @ 224b842 :thumb
	ldr     r1, [r5, #0x0]
	ldr     r2, [r5, #0x4]
	mov     r0, r6
	mov     r3, #0x0
	bl      0x21f4668
	str     r0, [r5, #0xc]
	pop     {r4-r6,pc}
@ 0x224b852


.align 2, 0


.thumb
Function_224b854: @ 224b854 :thumb
	push    {r3,r4}
	mov     r3, #0x43
	lsl     r3, r3, #2
	mov     r4, #0x0
	add     r0, r0, r3
.thumb
branch_224b85e: @ 224b85e :thumb
	ldr     r3, [r0, #0x8]
	cmp     r3, r1
	bne     branch_224b86a
	ldr     r3, [r0, #0xc]
	cmp     r3, r2
	beq     branch_224b874
.thumb
branch_224b86a: @ 224b86a :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r0, #0x18
	cmp     r4, #0x9
	blt     branch_224b85e
	mov     r0, #0x0
.thumb
branch_224b874: @ 224b874 :thumb
	pop     {r3,r4}
	bx      lr
@ 0x224b878

.thumb
Function_224b878: @ 224b878 :thumb
	push    {r3,r4}
	mov     r4, #0x0
	.hword  0x1d00 @ add r0, r0, #0x4
.thumb
branch_224b87e: @ 224b87e :thumb
	ldr     r3, [r0, #0x0]
	cmp     r3, #0x0
	beq     branch_224b890
	ldr     r3, [r0, #0x8]
	cmp     r3, r1
	bne     branch_224b890
	ldr     r3, [r0, #0xc]
	cmp     r3, r2
	beq     branch_224b89a
.thumb
branch_224b890: @ 224b890 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r0, #0x18
	cmp     r4, #0xb
	blt     branch_224b87e
	mov     r0, #0x0
.thumb
branch_224b89a: @ 224b89a :thumb
	pop     {r3,r4}
	bx      lr
@ 0x224b89e


.align 2, 0


.thumb
Function_224b8a0: @ 224b8a0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_224b8aa
	bl      ErrorHandling
.thumb
branch_224b8aa: @ 224b8aa :thumb
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x0
	bne     branch_224b8b4
	bl      ErrorHandling
.thumb
branch_224b8b4: @ 224b8b4 :thumb
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x0
	bne     branch_224b8be
	bl      ErrorHandling
.thumb
branch_224b8be: @ 224b8be :thumb
	ldr     r0, [r4, #0x14]
	bl      Function_207136c
	ldr     r0, [r4, #0x10]
	bl      Function_2061af4
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x224b8d0

.thumb
Function_224b8d0: @ 224b8d0 :thumb
	push    {r3-r7,lr}
	mov     r2, #0x43
	lsl     r2, r2, #2
	add     r5, r0, r2
	add     r6, r0, #0x4
	ldr     r4, [r0, #0x0]
	mov     r0, r6
	mov     r1, #0x0
	.hword  0x1f12 @ sub r2, r2, #0x4
	blx     Function_20d5124
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, #0xd8
	blx     Function_20d5124
	mov     r0, #0x0
	ldr     r7, [pc, #0x5c] @ 0x224b950, (=#0x224c99c)
	str     r0, [sp, #0x0]
.thumb
branch_224b8f6: @ 224b8f6 :thumb
	ldr     r2, [r7, #0x4]
	ldr     r1, [r7, #0x0]
	mov     r0, r4
	.hword  0x1e92 @ sub r2, r2, #0x2
	mov     r3, #0x0
	bl      Function_224b7d8
	mov     r1, r0
	mov     r0, r6
	add     r0, #0x8
	mov     r2, r4
	bl      Function_224b80c
	mov     r0, #0x1
	str     r0, [r6, #0x0]
	ldr     r0, [sp, #0x0]
	add     r7, #0x8
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r6, #0x18
	str     r0, [sp, #0x0]
	cmp     r0, #0xb
	blt     branch_224b8f6
	ldr     r6, [pc, #0x30] @ 0x224b954, (=#0x224c90c)
	mov     r7, #0x0
.thumb
branch_224b926: @ 224b926 :thumb
	ldr     r2, [r6, #0x4]
	ldr     r1, [r6, #0x0]
	mov     r0, r4
	.hword  0x1e92 @ sub r2, r2, #0x2
	mov     r3, #0x1
	bl      Function_224b7d8
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x8
	mov     r2, r4
	bl      Function_224b80c
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r6, #0x8
	add     r5, #0x18
	cmp     r7, #0x9
	blt     branch_224b926
	pop     {r3-r7,pc}
@ 0x224b950

.word 0x224c99c @ 0x224b950
.word 0x224c90c @ 0x224b954
.thumb
Function_224b958: @ 224b958 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r7, #0x0
	str     r7, [sp, #0x8]
	ldr     r6, [r0, #0x0]
	add     r4, r0, #0x4
	ldr     r1, [r6, #0x38]
	add     r2, sp, #0x8
	str     r1, [sp, #0x0]
	mov     r1, #0x43
	lsl     r1, r1, #2
	add     r5, r0, r1
	ldr     r0, [sp, #0x0]
	add     r1, sp, #0x4
	mov     r3, #0x1
	bl      Function_20625b0
	cmp     r0, #0x1
	bne     branch_224b9d4
.thumb
branch_224b97e: @ 224b97e :thumb
	ldr     r0, [sp, #0x4]
	bl      Function_2062910
	cmp     r0, #0xfd
	bne     branch_224b9c4
	ldr     r0, [sp, #0x4]
	mov     r1, #0x0
	bl      Function_20629d8
	cmp     r0, #0x0
	bne     branch_224b9a8
	mov     r0, r4
	ldr     r1, [sp, #0x4]
	add     r0, #0x8
	mov     r2, r6
	bl      Function_224b80c
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	add     r4, #0x18
	b       branch_224b9ba
@ 0x224b9a8

.thumb
branch_224b9a8: @ 224b9a8 :thumb
	mov     r0, r5
	ldr     r1, [sp, #0x4]
	add     r0, #0x8
	mov     r2, r6
	bl      Function_224b80c
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	add     r5, #0x18
.thumb
branch_224b9ba: @ 224b9ba :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	cmp     r7, #0x14
	ble     branch_224b9c4
	bl      ErrorHandling
.thumb
branch_224b9c4: @ 224b9c4 :thumb
	ldr     r0, [sp, #0x0]
	add     r1, sp, #0x4
	add     r2, sp, #0x8
	mov     r3, #0x1
	bl      Function_20625b0
	cmp     r0, #0x1
	beq     branch_224b97e
.thumb
branch_224b9d4: @ 224b9d4 :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x224b9d8

.thumb
Function_224b9d8: @ 224b9d8 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r5, r1
	cmp     r4, #0x0
	bge     branch_224b9e6
	bl      ErrorHandling
.thumb
branch_224b9e6: @ 224b9e6 :thumb
	cmp     r4, #0x20
	blt     branch_224b9ee
	bl      ErrorHandling
.thumb
branch_224b9ee: @ 224b9ee :thumb
	cmp     r5, #0x0
	bge     branch_224b9f6
	bl      ErrorHandling
.thumb
branch_224b9f6: @ 224b9f6 :thumb
	cmp     r5, #0x20
	blt     branch_224b9fe
	bl      ErrorHandling
.thumb
branch_224b9fe: @ 224b9fe :thumb
	lsl     r0, r5, #5
	add     r1, r4, r0
	ldr     r0, [pc, #0x4] @ 0x224ba08, (=#0x224e33c)
	ldrb    r0, [r0, r1]
	pop     {r3-r5,pc}
@ 0x224ba08

.word 0x224e33c @ 0x224ba08
.thumb
Function_224ba0c: @ 224ba0c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r1
	mov     r7, r2
	str     r0, [sp, #0x0]
	mov     r0, r6
	mov     r1, r7
	mov     r5, r3
	mov     r4, #0x0
	bl      Function_224b9d8
	cmp     r0, #0x5
	bhi     branch_224ba62
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x224ba32

Jumppoints_224ba32:
.hword branch_224ba62 - Jumppoints_224ba32 - 2
.hword branch_224ba62 - Jumppoints_224ba32 - 2
.hword branch_224ba44 - Jumppoints_224ba32 - 2
.hword branch_224ba4e - Jumppoints_224ba32 - 2
.hword branch_224ba3e - Jumppoints_224ba32 - 2
.hword branch_224ba5a - Jumppoints_224ba32 - 2
.thumb
branch_224ba3e: @ 224ba3e :thumb
	mov     r0, #0x4
	orr     r4, r0
	b       branch_224ba62
@ 0x224ba44

.thumb
branch_224ba44: @ 224ba44 :thumb
	cmp     r5, #0x1
	bhi     branch_224ba62
	mov     r0, #0x1
	orr     r4, r0
	b       branch_224ba62
@ 0x224ba4e

.thumb
branch_224ba4e: @ 224ba4e :thumb
	.hword  0x1ea8 @ sub r0, r5, #0x2
	cmp     r0, #0x1
	bhi     branch_224ba62
	mov     r0, #0x1
	orr     r4, r0
	b       branch_224ba62
@ 0x224ba5a

.thumb
branch_224ba5a: @ 224ba5a :thumb
	cmp     r5, #0x2
	bne     branch_224ba62
	mov     r0, #0x1
	orr     r4, r0
.thumb
branch_224ba62: @ 224ba62 :thumb
	mov     r0, r5
	bl      Function_206419c
	str     r0, [sp, #0x4]
	mov     r0, r5
	bl      Function_20641a8
	mov     r5, r0
	ldr     r0, [sp, #0x4]
	add     r1, r7, r5
	add     r0, r6, r0
	bl      Function_224b9d8
	cmp     r0, #0x1
	bne     branch_224ba84
	mov     r0, #0x1
	orr     r4, r0
.thumb
branch_224ba84: @ 224ba84 :thumb
	ldr     r1, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	add     r1, r6, r1
	add     r2, r7, r5
	bl      Function_224b878
	cmp     r0, #0x0
	beq     branch_224ba98
	mov     r0, #0x2
	orr     r4, r0
.thumb
branch_224ba98: @ 224ba98 :thumb
	mov     r0, r4
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x224ba9e


.align 2, 0


.thumb
Function_224baa0: @ 224baa0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	ldr     r5, [sp, #0x20]
	mov     r6, #0x0
	str     r0, [sp, #0x0]
	mov     r7, r1
	str     r2, [sp, #0x4]
	mov     r4, r3
	str     r5, [sp, #0x20]
	str     r6, [r5, #0x0]
	bl      Function_224ba0c
	cmp     r0, #0x0
	beq     branch_224bac0
	cmp     r0, #0x4
	bne     branch_224baee
.thumb
branch_224bac0: @ 224bac0 :thumb
	mov     r0, r4
	bl      Function_206419c
	add     r7, r7, r0
	mov     r0, r4
	bl      Function_20641a8
	ldr     r1, [sp, #0x4]
	mov     r3, r4
	add     r0, r1, r0
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x20]
	ldr     r2, [sp, #0x4]
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x20]
	str     r1, [r0, #0x0]
	ldr     r0, [sp, #0x0]
	mov     r1, r7
	bl      Function_224ba0c
	cmp     r0, #0x0
	beq     branch_224bac0
.thumb
branch_224baee: @ 224baee :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x224baf2


.align 2, 0


.thumb
Function_224baf4: @ 224baf4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_2050a60
	mov     r4, r0
	mov     r0, r5
	bl      Function_2050a64
	mov     r5, r0
	ldr     r0, [r4, #0x3c]
	bl      Function_205eb3c
	ldr     r1, [r5, #0x0]
	mov     r4, r0
	cmp     r1, #0x0
	beq     branch_224bb1a
	cmp     r1, #0x1
	beq     branch_224bb4c
	b       branch_224bb70
@ 0x224bb1a

.thumb
branch_224bb1a: @ 224bb1a :thumb
	bl      Function_20655f4
	cmp     r0, #0x1
	bne     branch_224bb70
	ldr     r0, [r5, #0x8]
	mov     r1, #0x28
	bl      Function_2065838
	mov     r1, r0
	mov     r0, r4
	bl      Function_2065638
	ldr     r0, [r5, #0x34]
	ldr     r1, [r5, #0x8]
	ldr     r0, [r0, #0x14]
	mov     r2, #0x0
	bl      0x21f4698
	ldr     r0, [pc, #0x34] @ 0x224bb74, (=#0x557)
	bl      Function_2005748
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_224bb70
@ 0x224bb4c

.thumb
branch_224bb4c: @ 224bb4c :thumb
	bl      Function_2065684
	cmp     r0, #0x1
	bne     branch_224bb70
	ldr     r0, [r5, #0x34]
	ldr     r0, [r0, #0x14]
	bl      0x21f4720
	cmp     r0, #0x1
	bne     branch_224bb70
	mov     r0, r4
	bl      Function_20656ac
	mov     r0, r5
	bl      Function_20181c4
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x224bb70

.thumb
branch_224bb70: @ 224bb70 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224bb74

.word 0x557 @ 0x224bb74
.thumb
Function_224bb78: @ 224bb78 :thumb
	push    {r3-r5,lr}
	bl      Function_2050a64
	ldr     r4, [pc, #0x1c] @ 0x224bb9c, (=#0x224c818)
	mov     r5, r0
.thumb
branch_224bb82: @ 224bb82 :thumb
	ldr     r1, [r5, #0x0]
	mov     r0, r5
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	blx     r1
	cmp     r0, #0x1
	beq     branch_224bb82
	cmp     r0, #0x2
	bne     branch_224bb98
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x224bb98

.thumb
branch_224bb98: @ 224bb98 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224bb9c

.word 0x224c818 @ 0x224bb9c
.thumb
Function_224bba0: @ 224bba0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r1, [r5, #0x34]
	add     r0, #0x1c
	mov     r4, r1
	str     r0, [sp, #0x0]
	add     r4, #0x8
	ldr     r0, [r5, #0x3c]
	ldr     r1, [r1, #0x8]
	ldr     r2, [r4, #0x4]
	ldr     r3, [r5, #0x8]
	bl      Function_224baa0
	mov     r1, r5
	ldr     r0, [r4, #0xc]
	add     r1, #0x20
	bl      Function_20715e4
	mov     r0, #0x44
	str     r0, [r5, #0x2c]
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224bbd0

.thumb
Function_224bbd0: @ 224bbd0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x3c]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      Function_205eb3c
	mov     r4, r0
	bl      Function_20655f4
	cmp     r0, #0x0
	bne     branch_224bbec
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224bbec

.thumb
branch_224bbec: @ 224bbec :thumb
	ldr     r0, [r5, #0x8]
	mov     r1, #0x1c
	bl      Function_2065838
	mov     r1, r0
	mov     r0, r4
	bl      Function_2065638
	ldr     r4, [r5, #0x34]
	ldr     r1, [r5, #0x8]
	ldr     r0, [r4, #0x14]
	mov     r2, #0x1
	bl      0x21f4698
	mov     r1, r4
	ldr     r2, [r5, #0x8]
	mov     r0, r5
	add     r1, #0x8
	bl      Function_224c0c8
	cmp     r0, #0x1
	bne     branch_224bc34
	mov     r0, #0x1
	str     r0, [r5, #0x18]
	ldr     r0, [r5, #0x3c]
	add     r4, #0x8
	ldr     r0, [r0, #0x0]
	ldr     r3, [r5, #0x8]
	mov     r1, r5
	mov     r2, r4
	bl      Function_224bfcc
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_224c0fc
.thumb
branch_224bc34: @ 224bc34 :thumb
	ldr     r0, [pc, #0xc] @ 0x224bc44, (=#0x557)
	bl      Function_2005748
	mov     r0, #0x2
	str     r0, [r5, #0x0]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x224bc42


.align 2


.word 0x557 @ 0x224bc44
.thumb
Function_224bc48: @ 224bc48 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, r4
	ldr     r0, [r4, #0x8]
	ldr     r2, [r4, #0x2c]
	add     r1, #0x20
	bl      Function_2064418
	ldr     r0, [r4, #0x34]
	mov     r1, r4
	ldr     r0, [r0, #0x14]
	add     r1, #0x20
	bl      Function_20715d4
	ldr     r1, [r4, #0x2c]
	add     r1, #0x44
	str     r1, [r4, #0x2c]
	ldr     r0, [r4, #0x30]
	add     r0, r0, r1
	str     r0, [r4, #0x30]
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	cmp     r0, #0x1e
	blt     branch_224bca0
	ldr     r1, [r4, #0x1c]
	mov     r0, #0xd
	lsl     r2, r1, #4
	lsr     r1, r2, #31
	add     r1, r2, r1
	lsl     r0, r0, #12
	asr     r1, r1, #1
	blx     _s32_div_f
	mov     r1, r0
	ldr     r0, [r4, #0x34]
	ldr     r0, [r0, #0x14]
	bl      0x21f4714
	mov     r0, #0x3
	str     r0, [r4, #0x0]
	ldr     r0, [pc, #0x8] @ 0x224bca4, (=#0x54c)
	bl      Function_2005748
.thumb
branch_224bca0: @ 224bca0 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x224bca4

.word 0x54c @ 0x224bca4
.thumb
Function_224bca8: @ 224bca8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r1, r5
	ldr     r4, [r5, #0x34]
	ldr     r0, [r5, #0x8]
	ldr     r2, [r5, #0x2c]
	add     r1, #0x20
	bl      Function_2064418
	mov     r1, r5
	ldr     r0, [r4, #0x14]
	add     r1, #0x20
	bl      Function_20715d4
	ldr     r1, [r5, #0x30]
	ldr     r0, [r5, #0x2c]
	add     r0, r1, r0
	str     r0, [r5, #0x30]
	ldr     r0, [r5, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x4]
	cmp     r0, #0x24
	bge     branch_224bce6
	mov     r0, #0x1
	ldr     r1, [r5, #0x2c]
	lsl     r0, r0, #12
	cmp     r1, r0
	bge     branch_224bcf4
	add     r0, r1, r1
	str     r0, [r5, #0x2c]
	b       branch_224bcf4
@ 0x224bce6

.thumb
branch_224bce6: @ 224bce6 :thumb
	bne     branch_224bcf4
	mov     r0, #0x2
	ldr     r1, [r5, #0x2c]
	lsl     r0, r0, #12
	cmp     r1, r0
	bgt     branch_224bcf4
	str     r0, [r5, #0x2c]
.thumb
branch_224bcf4: @ 224bcf4 :thumb
	ldr     r1, [r5, #0x2c]
	mov     r0, r5
	bl      Function_224c170
	ldr     r0, [r5, #0x30]
	asr     r1, r0, #4
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r1, r0, #12
	ldr     r0, [r5, #0x14]
	cmp     r1, r0
	ble     branch_224bdbe
	str     r1, [r5, #0x14]
	ldr     r0, [r5, #0x8]
	bl      Function_206419c
	ldr     r1, [r4, #0x8]
	add     r0, r1, r0
	str     r0, [r4, #0x8]
	ldr     r0, [r5, #0x8]
	bl      Function_20641a8
	ldr     r1, [r4, #0xc]
	add     r2, r1, r0
	str     r2, [r4, #0xc]
	ldr     r0, [r5, #0x3c]
	ldr     r1, [r4, #0x8]
	ldr     r3, [r5, #0x8]
	bl      Function_224ba0c
	mov     r6, r0
	beq     branch_224bdbe
	mov     r2, r5
	ldr     r0, [r4, #0x8]
	ldr     r1, [r4, #0xc]
	add     r2, #0x20
	bl      Function_2064450
	ldr     r0, [r4, #0x10]
	ldr     r1, [r4, #0x8]
	bl      SaveSpritePositionX
	ldr     r0, [r4, #0x10]
	ldr     r1, [r4, #0xc]
	bl      SaveSpritePositionY
	ldr     r0, [r4, #0x10]
	bl      Function_2064208
	mov     r1, #0x1
	ldr     r0, [r4, #0x14]
	lsl     r1, r1, #12
	bl      0x21f4714
	ldr     r0, [pc, #0x60] @ 0x224bdc4, (=#0x54c)
	mov     r1, #0x0
	bl      Function_20057a4
	ldr     r0, [pc, #0x5c] @ 0x224bdc8, (=#0x557)
	bl      Function_2005748
	ldr     r0, [pc, #0x58] @ 0x224bdcc, (=#0x54d)
	bl      Function_2005748
	mov     r0, #0x2
	tst     r0, r6
	bne     branch_224bd8e
	ldr     r0, [r5, #0x18]
	cmp     r0, #0x1
	bne     branch_224bd88
	mov     r0, #0x6
	str     r0, [r5, #0x0]
	b       branch_224bdbe
@ 0x224bd88

.thumb
branch_224bd88: @ 224bd88 :thumb
	mov     r0, #0x8
	str     r0, [r5, #0x0]
	b       branch_224bdbe
@ 0x224bd8e

.thumb
branch_224bd8e: @ 224bd8e :thumb
	ldr     r0, [r5, #0x8]
	bl      Function_206419c
	mov     r6, r0
	ldr     r0, [r5, #0x8]
	bl      Function_20641a8
	ldr     r1, [r4, #0x8]
	mov     r2, r0
	ldr     r3, [r4, #0xc]
	ldr     r0, [r5, #0x3c]
	add     r1, r1, r6
	add     r2, r3, r2
	bl      Function_224b878
	str     r0, [r5, #0x38]
	cmp     r0, #0x0
	bne     branch_224bdb6
	bl      ErrorHandling
.thumb
branch_224bdb6: @ 224bdb6 :thumb
	mov     r0, #0x0
	str     r0, [r5, #0x4]
	mov     r0, #0x4
	str     r0, [r5, #0x0]
.thumb
branch_224bdbe: @ 224bdbe :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x224bdc2


.align 2


.word 0x54c @ 0x224bdc4
.word 0x557 @ 0x224bdc8
.word 0x54d @ 0x224bdcc
.thumb
Function_224bdd0: @ 224bdd0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x2c]
	bl      Function_224c170
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	cmp     r0, #0x4
	blt     branch_224bdfa
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	mov     r0, #0x5
	str     r0, [r4, #0x0]
	ldr     r0, [r4, #0x38]
	ldr     r0, [r0, #0x14]
	bl      0x21f44a4
	ldr     r0, [pc, #0x8] @ 0x224be00, (=#0x62a)
	bl      Function_2005748
.thumb
branch_224bdfa: @ 224bdfa :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x224bdfe


.align 2


.word 0x62a @ 0x224be00
.thumb
Function_224be04: @ 224be04 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x2c]
	bl      Function_224c170
	ldr     r0, [r4, #0x38]
	ldr     r0, [r0, #0x14]
	bl      0x21f453c
	cmp     r0, #0x0
	beq     branch_224be34
	ldr     r0, [r4, #0x38]
	bl      Function_224b8a0
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x1
	bne     branch_224be30
	mov     r0, #0x6
	str     r0, [r4, #0x0]
	b       branch_224be34
@ 0x224be30

.thumb
branch_224be30: @ 224be30 :thumb
	mov     r0, #0x8
	str     r0, [r4, #0x0]
.thumb
branch_224be34: @ 224be34 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x224be38

.thumb
Function_224be38: @ 224be38 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x2c]
	bl      Function_224c170
	mov     r0, r4
	bl      Function_224c0c4
	cmp     r0, #0x1
	bne     branch_224be64
	ldr     r0, [r4, #0x34]
	ldr     r0, [r0, #0x14]
	bl      0x21f4720
	cmp     r0, #0x1
	bne     branch_224be64
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_224c0fc
	mov     r0, #0x7
	str     r0, [r4, #0x0]
.thumb
branch_224be64: @ 224be64 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x224be68

.thumb
Function_224be68: @ 224be68 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x10
	bl      Function_224c11c
	mov     r0, r4
	bl      Function_224c0c4
	cmp     r0, #0x1
	bne     branch_224be86
	mov     r0, r4
	bl      Function_224c098
	mov     r0, #0x9
	str     r0, [r4, #0x0]
.thumb
branch_224be86: @ 224be86 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x224be8a


.align 2, 0


.thumb
Function_224be8c: @ 224be8c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x34]
	ldr     r0, [r0, #0x14]
	bl      0x21f4720
	cmp     r0, #0x1
	bne     branch_224bea0
	mov     r0, #0x9
	str     r0, [r4, #0x0]
.thumb
branch_224bea0: @ 224bea0 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x224bea4

.thumb
Function_224bea4: @ 224bea4 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x3c]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      Function_205eb3c
	mov     r5, r0
	bl      Function_2065684
	cmp     r0, #0x1
	bne     branch_224bec6
	mov     r0, r5
	bl      Function_20656ac
	mov     r0, #0xa
	str     r0, [r4, #0x0]
.thumb
branch_224bec6: @ 224bec6 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224beca


.align 2, 0


.thumb
Function_224becc: @ 224becc :thumb
	push    {r3,lr}
	bl      Function_20181c4
	mov     r0, #0x2
	pop     {r3,pc}
@ 0x224bed6


.align 2, 0


.thumb
Function_224bed8: @ 224bed8 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r0, #0xb
	mov     r1, #0x78
	mov     r7, r2
	bl      Function_2018184
	mov     r4, r0
	bne     branch_224bef0
	bl      ErrorHandling
.thumb
branch_224bef0: @ 224bef0 :thumb
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x78
	blx     Function_20d5124
	str     r7, [r4, #0x8]
	ldr     r0, [r5, #0x8]
	str     r0, [r4, #0xc]
	ldr     r0, [r5, #0xc]
	str     r0, [r4, #0x10]
	str     r5, [r4, #0x34]
	str     r6, [r4, #0x3c]
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x224bf0c

.thumb
Function_224bf0c: @ 224bf0c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r1
	mov     r1, r2
	mov     r2, r3
	bl      Function_224bed8
	mov     r2, r0
	ldr     r1, [pc, #0x8] @ 0x224bf28, (=#0x224baf5)
	mov     r0, r4
	bl      Function_2050904
	pop     {r4,pc}
@ 0x224bf26


.align 2


.word Function_224baf4+1 @ =0x224baf5, 0x224bf28
.thumb
Function_224bf2c: @ 224bf2c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r1
	mov     r1, r2
	mov     r2, r3
	bl      Function_224bed8
	mov     r2, r0
	ldr     r1, [pc, #0x8] @ 0x224bf48, (=#0x224bb79)
	mov     r0, r4
	bl      Function_2050904
	pop     {r4,pc}
@ 0x224bf46


.align 2


.word Function_224bb78+1 @ =0x224bb79, 0x224bf48
.thumb
Function_224bf4c: @ 224bf4c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	bl      Function_203d174
	bl      Function_2027860
	bl      Function_2027f80
	cmp     r0, #0x4
	beq     branch_224bf68
	add     sp, #0x10
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224bf68

.thumb
branch_224bf68: @ 224bf68 :thumb
	ldr     r0, [r5, #0x3c]
	bl      GetSpriteFaceDirection
	mov     r6, r0
	ldr     r0, [r5, #0x4]
	mov     r1, r6
	ldr     r4, [r0, #0x24]
	ldr     r0, [r5, #0x3c]
	add     r2, sp, #0xc
	add     r3, sp, #0x8
	bl      Function_206157c
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x8]
	mov     r0, r4
	bl      Function_224b854
	mov     r7, r0
	bne     branch_224bf94
	add     sp, #0x10
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224bf94

.thumb
branch_224bf94: @ 224bf94 :thumb
	add     r0, sp, #0x4
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x8]
	mov     r0, r4
	mov     r3, r6
	bl      Function_224baa0
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	bne     branch_224bfb8
	mov     r0, r5
	mov     r1, r4
	mov     r2, r7
	mov     r3, r6
	bl      Function_224bf0c
	b       branch_224bfc4
@ 0x224bfb8

.thumb
branch_224bfb8: @ 224bfb8 :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, r7
	mov     r3, r6
	bl      Function_224bf2c
.thumb
branch_224bfc4: @ 224bfc4 :thumb
	mov     r0, #0x1
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x224bfca


.align 2, 0


.thumb
Function_224bfcc: @ 224bfcc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r4, r1
	add     r4, #0x40
	mov     r5, r0
	str     r1, [sp, #0xc]
	str     r2, [sp, #0x10]
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x38
	mov     r7, r3
	blx     Function_20d5124
	ldr     r0, [sp, #0x10]
	str     r5, [r4, #0x34]
	ldr     r6, [r0, #0x0]
	ldr     r0, [r0, #0x4]
	mov     r1, r6
	str     r6, [r4, #0x8]
	str     r0, [sp, #0x14]
	str     r0, [r4, #0xc]
	mov     r0, r4
	str     r7, [r4, #0x20]
	add     r0, #0x24
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0xc]
	ldr     r2, [sp, #0x14]
	ldr     r0, [r0, #0x3c]
	mov     r3, r7
	bl      Function_224baa0
	ldr     r0, [r4, #0x24]
	cmp     r0, #0x0
	bne     branch_224c014
	bl      ErrorHandling
.thumb
branch_224c014: @ 224c014 :thumb
	mov     r0, r7
	bl      Function_206419c
	ldr     r1, [r4, #0x24]
	mul     r0, r1
	add     r0, r6, r0
	str     r0, [r4, #0x18]
	mov     r0, r7
	bl      Function_20641a8
	ldr     r1, [r4, #0x24]
	mov     r2, r1
	mul     r2, r0
	ldr     r0, [sp, #0x14]
	add     r0, r0, r2
	str     r0, [r4, #0x1c]
	ldr     r0, [r5, #0x3c]
	bl      GetSpritePositionX
	mov     r6, r0
	ldr     r0, [r5, #0x3c]
	bl      GetSpritePositionY
	mov     r2, r0
	str     r6, [r4, #0x10]
	mov     r0, #0x2
	str     r2, [r4, #0x14]
	lsl     r0, r0, #12
	str     r0, [sp, #0x0]
	mov     r3, #0x0
	str     r3, [sp, #0x4]
	ldr     r0, [r5, #0x1c]
	mov     r1, r6
	ldr     r0, [r0, #0x0]
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x38]
	bl      Function_20619dc
	str     r0, [r4, #0x30]
	bl      Function_20642f8
	ldr     r0, [r4, #0x30]
	mov     r1, #0x1
	bl      Function_2062d64
	ldr     r0, [r4, #0x30]
	mov     r1, #0x0
	bl      Function_2062d80
	ldr     r0, [r4, #0x30]
	mov     r1, #0x1
	bl      Function_2062e28
	ldr     r0, [r4, #0x30]
	bl      Function_2063070
	ldr     r1, [r5, #0x28]
	mov     r4, r0
	bl      0x21e931c
	ldr     r1, [r5, #0x24]
	mov     r0, r4
	bl      Function_2020690
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x224c098

.thumb
Function_224c098: @ 224c098 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r5, #0x40
	ldr     r0, [r5, #0x34]
	ldr     r0, [r0, #0x3c]
	bl      Function_205eafc
	ldr     r1, [r5, #0x34]
	mov     r4, r0
	ldr     r1, [r1, #0x28]
	bl      0x21e931c
	ldr     r1, [r5, #0x34]
	mov     r0, r4
	ldr     r1, [r1, #0x24]
	bl      Function_2020690
	ldr     r0, [r5, #0x30]
	bl      Function_2061af4
	pop     {r3-r5,pc}
@ 0x224c0c2


.align 2, 0


.thumb
Function_224c0c4: @ 224c0c4 :thumb
	ldr     r0, [r0, #0x6c]
	bx      lr
@ 0x224c0c8

.thumb
Function_224c0c8: @ 224c0c8 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r3, r1
	add     r1, sp, #0x4
	str     r1, [sp, #0x0]
	mov     r4, r2
	ldr     r0, [r0, #0x3c]
	ldr     r1, [r3, #0x0]
	ldr     r2, [r3, #0x4]
	mov     r3, r4
	bl      Function_224baa0
	ldr     r0, [pc, #0x14] @ 0x224c0f8, (=#0x224c764)
	lsl     r1, r4, #2
	ldr     r2, [sp, #0x4]
	ldr     r0, [r0, r1]
	cmp     r2, r0
	ble     branch_224c0f2
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x224c0f2

.thumb
branch_224c0f2: @ 224c0f2 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r4,pc}
@ 0x224c0f8

.word 0x224c764 @ 0x224c0f8
.thumb
Function_224c0fc: @ 224c0fc :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r4, #0x40
	mov     r3, #0x0
	mov     r2, #0x1
	str     r3, [r4, #0x28]
	str     r2, [r0, #0x40]
	str     r3, [r4, #0x2c]
	cmp     r1, #0x1
	bne     branch_224c118
	ldr     r0, [r4, #0x20]
	bl      GetOppositeFaceDirection
	str     r0, [r4, #0x20]
.thumb
branch_224c118: @ 224c118 :thumb
	pop     {r4,pc}
@ 0x224c11a


.align 2, 0


.thumb
Function_224c11c: @ 224c11c :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r0, [r0, #0x40]
	mov     r5, r1
	add     r4, #0x40
	cmp     r0, #0x0
	beq     branch_224c16e
	cmp     r0, #0x1
	beq     branch_224c134
	cmp     r0, #0x2
	beq     branch_224c166
	pop     {r3-r5,pc}
@ 0x224c134

.thumb
branch_224c134: @ 224c134 :thumb
	ldr     r0, [r4, #0x30]
	bl      Function_20655f4
	cmp     r0, #0x1
	bne     branch_224c16e
	ldr     r1, [r4, #0x28]
	ldr     r0, [r4, #0x24]
	cmp     r1, r0
	blt     branch_224c14e
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x224c14e

.thumb
branch_224c14e: @ 224c14e :thumb
	ldr     r0, [r4, #0x20]
	mov     r1, r5
	bl      Function_2065838
	mov     r1, r0
	ldr     r0, [r4, #0x30]
	bl      Function_2065638
	ldr     r0, [r4, #0x28]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x28]
	pop     {r3-r5,pc}
@ 0x224c166

.thumb
branch_224c166: @ 224c166 :thumb
	mov     r0, #0x1
	str     r0, [r4, #0x2c]
	mov     r0, #0x0
	str     r0, [r4, #0x0]
.thumb
branch_224c16e: @ 224c16e :thumb
	pop     {r3-r5,pc}
@ 0x224c170

.thumb
Function_224c170: @ 224c170 :thumb
	push    {r3,lr}
	ldr     r2, [r0, #0x18]
	cmp     r2, #0x1
	bne     branch_224c194
	asr     r2, r1, #11
	lsr     r2, r2, #20
	add     r2, r1, r2
	asr     r2, r2, #12
	beq     branch_224c194
	mov     r1, #0x8
	cmp     r2, #0x2
	bgt     branch_224c18c
	mov     r1, #0xc
	b       branch_224c190
@ 0x224c18c

.thumb
branch_224c18c: @ 224c18c :thumb
	ble     branch_224c190
	mov     r1, #0x10
.thumb
branch_224c190: @ 224c190 :thumb
	bl      Function_224c11c
.thumb
branch_224c194: @ 224c194 :thumb
	pop     {r3,pc}
@ 0x224c196


.align 2, 0


.thumb
Function_224c198: @ 224c198 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r6, r0
	bl      Function_203d174
	bl      Function_2027860
	mov     r1, #0x2
	bl      Function_2027f6c
	mov     r1, #0x7e
	mov     r4, r0
	mov     r0, #0x4
	lsl     r1, r1, #2
	bl      Function_2018144
	mov     r2, #0x7e
	str     r0, [sp, #0x8]
	mov     r1, #0x0
	lsl     r2, r2, #2
	blx     Function_20d5124
	ldr     r0, [sp, #0x8]
	str     r6, [r0, #0x0]
	ldr     r1, [r6, #0x4]
	str     r0, [r1, #0x24]
	bl      Function_224c3b4
	ldr     r0, [r6, #0x40]
	mov     r1, #0x20
	bl      0x21df4a8
	ldr     r0, [r6, #0x38]
	mov     r1, #0x0
	bl      Function_2062ccc
	ldr     r0, [r6, #0x3c]
	mov     r5, #0xd2
	bl      Function_205eb3c
	mov     r7, r0
	ldr     r0, [r6, #0x3c]
	bl      Function_205eb98
	cmp     r0, #0x1
	bne     branch_224c1f6
	mov     r5, #0xd3
.thumb
branch_224c1f6: @ 224c1f6 :thumb
	mov     r0, r7
	mov     r1, r5
	bl      Function_2061ad4
	mov     r0, r6
	mov     r1, #0x1
	bl      0x21f5aa4
	ldr     r0, [sp, #0x8]
	bl      Function_224c444
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [r6, #0x1c]
	ldr     r5, [pc, #0x164] @ 0x224c378, (=#0x224c8d4)
	ldr     r1, [r0, #0x0]
.thumb
branch_224c216: @ 224c216 :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, r1
	beq     branch_224c228
	ldr     r0, [sp, #0x4]
	add     r5, #0x1c
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x4]
	cmp     r0, #0x2
	blt     branch_224c216
.thumb
branch_224c228: @ 224c228 :thumb
	mov     r0, #0x0
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_224c302
	mov     r0, #0x1
	strh    r0, [r4, #0x0]
	mov     r0, #0x8
	strh    r0, [r4, #0x2]
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x2
	beq     branch_224c302
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x138] @ 0x224c37c, (=#0x224c6f8)
	ldr     r0, [r0, r1]
	str     r0, [sp, #0x0]
	bl      Function_201d35c
	ldr     r1, [r5, #0x8]
	blx     _u32_div_f
	ldr     r0, [r5, #0x4]
	add     r7, r4, #0x4
	add     r0, r1, r0
	strh    r0, [r4, #0x2]
	add     r0, r4, #0x6
	str     r0, [sp, #0xc]
branch_224c25c: @ 224c25c :thumb
	bl      Function_201d35c
	ldr     r1, [r5, #0x14]
	blx     _u32_div_f
	strh    r1, [r4, #0x4]
	bl      Function_201d35c
	ldr     r1, [r5, #0x18]
	blx     _u32_div_f
	strh    r1, [r4, #0x6]
	mov     r0, #0x4
	ldsh    r2, [r4, r0]
	mov     r0, #0x6
	ldsh    r0, [r4, r0]
	ldr     r1, [r5, #0x14]
	mul     r1, r0
	ldr     r0, [sp, #0x0]
	add     r0, r0, r2
	ldrb    r0, [r1, r0]
	cmp     r0, #0x1
	beq     branch_224c25c
	mov     r0, #0x0
	ldsh    r1, [r7, r0]
	ldr     r0, [r5, #0xc]
	mov     r2, #0x6
	add     r0, r1, r0
	strh    r0, [r7, #0x0]
	ldr     r1, [sp, #0xc]
	mov     r0, #0x0
	ldsh    r1, [r1, r0]
	ldr     r0, [r5, #0x10]
	mov     r3, #0x0
	add     r1, r1, r0
	ldr     r0, [sp, #0xc]
	strh    r1, [r0, #0x0]
	mov     r1, #0x4
	ldsh    r1, [r4, r1]
	ldsh    r2, [r4, r2]
	ldr     r0, [r6, #0x38]
	bl      Function_206326c
	cmp     r0, #0x0
	bne     branch_224c25c
	mov     r0, #0x2
	ldsh    r2, [r4, r0]
	ldr     r1, [r5, #0x4]
	ldr     r0, [r5, #0x8]
	add     r0, r1, r0
	cmp     r2, r0
	blt     branch_224c2c8
	bl      ErrorHandling
.thumb
branch_224c2c8: @ 224c2c8 :thumb
	mov     r0, #0x4
	ldsh    r2, [r4, r0]
	ldr     r1, [r5, #0xc]
	ldr     r0, [r5, #0x14]
	add     r0, r1, r0
	cmp     r2, r0
	blt     branch_224c2da
	bl      ErrorHandling
.thumb
branch_224c2da: @ 224c2da :thumb
	mov     r0, #0x6
	ldsh    r2, [r4, r0]
	ldr     r1, [r5, #0x10]
	ldr     r0, [r5, #0x18]
	add     r0, r1, r0
	cmp     r2, r0
	blt     branch_224c2ec
	bl      ErrorHandling
.thumb
branch_224c2ec: @ 224c2ec :thumb
	mov     r1, #0x4
	mov     r2, #0x6
	ldsh    r1, [r4, r1]
	ldsh    r2, [r4, r2]
	mov     r0, r6
	bl      Function_2054f68
	cmp     r0, #0x0
	beq     branch_224c302
	bl      ErrorHandling
.thumb
branch_224c302: @ 224c302 :thumb
	mov     r0, #0x2
	ldsh    r0, [r4, r0]
	cmp     r0, #0x8
	beq     branch_224c362
	ldr     r0, [sp, #0x4]
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x70] @ 0x224c380, (=#0x224c708)
	ldr     r5, [r0, r1]
	ldr     r1, [r5, #0x0]
	cmp     r1, #0x8
	beq     branch_224c350
.thumb
branch_224c318: @ 224c318 :thumb
	mov     r0, #0x2
	ldsh    r0, [r4, r0]
	cmp     r1, r0
	beq     branch_224c348
	mov     r1, #0x4
	mov     r2, #0x6
	ldsh    r1, [r5, r1]
	ldsh    r2, [r5, r2]
	mov     r0, r6
	bl      Function_203a468
	mov     r7, r0
	lsl     r1, r7, #16
	mov     r0, r6
	lsr     r1, r1, #16
	mov     r2, #0x58
	bl      Function_203a574
	lsl     r1, r7, #16
	mov     r0, r6
	lsr     r1, r1, #16
	mov     r2, #0x1
	bl      Function_203a584
.thumb
branch_224c348: @ 224c348 :thumb
	add     r5, #0x8
	ldr     r1, [r5, #0x0]
	cmp     r1, #0x8
	bne     branch_224c318
.thumb
branch_224c350: @ 224c350 :thumb
	mov     r1, #0x4
	mov     r2, #0x6
	mov     r3, #0x2
	ldsh    r1, [r4, r1]
	ldsh    r2, [r4, r2]
	ldsh    r3, [r4, r3]
	ldr     r0, [r6, #0x40]
	bl      0x21f4cec
.thumb
branch_224c362: @ 224c362 :thumb
	ldr     r0, [pc, #0x20] @ 0x224c384, (=#0x224c3b1)
	ldr     r1, [sp, #0x8]
	mov     r2, #0x0
	bl      Function_200d9e8
	mov     r2, #0x7d
	ldr     r1, [sp, #0x8]
	lsl     r2, r2, #2
	str     r0, [r1, r2]
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x224c378

.word 0x224c8d4 @ 0x224c378
.word 0x224c6f8 @ 0x224c37c
.word 0x224c708 @ 0x224c380
.word Function_224c3b0+1 @ =0x224c3b1, 0x224c384
.thumb
Function_224c388: @ 224c388 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	ldr     r4, [r0, #0x24]
	mov     r0, #0x7d
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_200da58
	mov     r0, r4
	bl      Function_224c4f8
	mov     r0, r4
	bl      Function_20181c4
	ldr     r0, [r5, #0x4]
	mov     r1, #0x0
	str     r1, [r0, #0x24]
	pop     {r3-r5,pc}
@ 0x224c3ae


.align 2, 0


.thumb
Function_224c3b0: @ 224c3b0 :thumb
	bx      lr
@ 0x224c3b2


.align 2, 0


.thumb
Function_224c3b4: @ 224c3b4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r0, #0x71
	lsl     r0, r0, #2
	add     r4, r5, r0
	ldr     r0, [r5, #0x0]
	mov     r6, #0x6d
	ldr     r7, [r0, #0x48]
	mov     r0, #0xa
	str     r7, [r4, #0x0]
	str     r0, [r4, #0x4]
	mov     r0, #0x1
	strb    r0, [r4, #0x8]
	strb    r0, [r4, #0x9]
	strb    r0, [r4, #0xa]
	strb    r0, [r4, #0xb]
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadTrainerDataAdress
	mov     r1, #0x4
	bl      CheckBadge
	cmp     r0, #0x1
	bne     branch_224c3ec
	mov     r6, #0x5b
	b       branch_224c3f8

branch_224c3ec: @ 224c3ec :thumb
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x1c]
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x5a
	bne     branch_224c3f8
	mov     r6, #0x77
.thumb
branch_224c3f8: @ 224c3f8 :thumb
	mov     r0, r4
	add     r0, #0xc
	mov     r1, r6
	mov     r2, #0x20
	blx     Function_20d5124
	ldr     r0, [r4, #0x4]
	mov     r3, #0x0
	str     r0, [sp, #0x0]
	str     r3, [sp, #0x4]
	mov     r0, r7
	.hword  0x1e59 @ sub r1, r3, #0x1
	mov     r2, #0x1
	bl      0x21d57fc
	ldrb    r2, [r4, #0xa]
	ldrb    r5, [r4, #0x9]
	mov     r1, #0x0
	lsl     r3, r2, #10
	ldrb    r2, [r4, #0x8]
	lsl     r5, r5, #5
	mov     r0, r7
	orr     r2, r5
	orr     r2, r3
	lsl     r2, r2, #16
	ldrb    r3, [r4, #0xb]
	mvn     r1, r1
	lsr     r2, r2, #16
	bl      0x21d5834
	add     r4, #0xc
	mov     r0, r7
	mov     r1, r4
	bl      0x21d585c
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x224c442


.align 2, 0


.thumb
Function_224c444: @ 224c444 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r6, r0
	ldr     r0, [r6, #0x0]
	mov     r7, #0x0
	ldr     r0, [r0, #0x38]
	add     r5, r6, #0x4
	str     r0, [sp, #0x0]
	str     r7, [sp, #0xc]
	bl      Function_2062858
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	add     r1, sp, #0x8
	add     r2, sp, #0xc
	mov     r3, #0x1
	bl      Function_20625b0
	cmp     r0, #0x0
	beq     branch_224c4ee
.thumb
branch_224c46c: @ 224c46c :thumb
	ldr     r0, [sp, #0x8]
	bl      Function_2062910
	mov     r4, r0
	ldr     r0, [sp, #0x8]
	mov     r1, #0x0
	bl      Function_20629d8
	str     r0, [r5, #0x8]
	cmp     r4, #0xff
	beq     branch_224c492
	ldr     r0, [sp, #0x8]
	bl      Function_2062950
	cmp     r0, #0x1
	bne     branch_224c4de
	ldr     r0, [r5, #0x8]
	cmp     r0, #0x0
	beq     branch_224c4de
.thumb
branch_224c492: @ 224c492 :thumb
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	ldr     r0, [sp, #0x8]
	bl      LoadSpriteFaceDirection
	str     r0, [r5, #0x4]
	ldr     r0, [sp, #0x8]
	cmp     r4, #0xff
	str     r0, [r5, #0x14]
	str     r6, [r5, #0x18]
	bne     branch_224c4ac
	mov     r0, #0x2
	str     r0, [r5, #0x8]
.thumb
branch_224c4ac: @ 224c4ac :thumb
	ldr     r0, [r6, #0x0]
	ldr     r1, [sp, #0x8]
	ldr     r0, [r0, #0x40]
	ldr     r2, [r5, #0x8]
	mov     r3, #0x3
	bl      0x21f4840
	ldr     r2, [sp, #0x4]
	str     r0, [r5, #0x10]
	ldr     r0, [pc, #0x34] @ 0x224c4f4, (=#0x224c519)
	mov     r1, r5
	.hword  0x1c92 @ add r2, r2, #0x2
	bl      Function_200d9e8
	str     r0, [r5, #0xc]
	cmp     r0, #0x0
	bne     branch_224c4d2
	bl      ErrorHandling
.thumb
branch_224c4d2: @ 224c4d2 :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	cmp     r7, #0x10
	blt     branch_224c4dc
	bl      ErrorHandling
.thumb
branch_224c4dc: @ 224c4dc :thumb
	add     r5, #0x1c
.thumb
branch_224c4de: @ 224c4de :thumb
	ldr     r0, [sp, #0x0]
	add     r1, sp, #0x8
	add     r2, sp, #0xc
	mov     r3, #0x1
	bl      Function_20625b0
	cmp     r0, #0x0
	bne     branch_224c46c
.thumb
branch_224c4ee: @ 224c4ee :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x224c4f2


.align 2


.word Function_224c518+1 @ =0x224c519, 0x224c4f4
.thumb
Function_224c4f8: @ 224c4f8 :thumb
	push    {r4-r6,lr}
	mov     r4, #0x0
	add     r5, r0, #0x4
	mov     r6, r4
.thumb
branch_224c500: @ 224c500 :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_224c50e
	ldr     r0, [r5, #0xc]
	bl      Function_200da58
	str     r6, [r5, #0x0]
.thumb
branch_224c50e: @ 224c50e :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x1c
	cmp     r4, #0x10
	blt     branch_224c500
	pop     {r4-r6,pc}
@ 0x224c518

.thumb
Function_224c518: @ 224c518 :thumb
	bx      lr
@ 0x224c51a


.align 2, 0


.thumb
Function_224c51c: @ 224c51c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r5, r0
	bl      Function_203d174
	bl      Function_2027860
	bl      Function_2027f80
	cmp     r0, #0x2
	beq     branch_224c538
	add     sp, #0x20
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224c538

.thumb
branch_224c538: @ 224c538 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x1c]
	str     r0, [sp, #0x18]
	ldr     r0, [r5, #0x3c]
	ldr     r4, [r5, #0x38]
	str     r0, [sp, #0x10]
	bl      Function_205eb3c
	mov     r6, r0
	bl      LoadSpriteFaceDirection
	bl      GetOppositeFaceDirection
	mov     r7, r0
	mov     r0, r4
	add     r1, sp, #0x18
	add     r2, sp, #0x1c
	mov     r3, #0x1
	bl      Function_20625b0
	cmp     r0, #0x0
	beq     branch_224c5d0
.thumb
branch_224c564: @ 224c564 :thumb
	ldr     r1, [sp, #0x18]
	cmp     r1, r6
	beq     branch_224c5c0
	mov     r0, r5
	bl      Function_2067f88
	cmp     r0, #0x1
	bne     branch_224c5c0
	ldr     r0, [sp, #0x18]
	ldr     r1, [sp, #0x10]
	mov     r2, r7
	mov     r3, #0x2
	bl      Function_2067d58
	mov     r1, #0x0
	mvn     r1, r1
	str     r0, [sp, #0x14]
	cmp     r0, r1
	beq     branch_224c5c0
	ldr     r0, [sp, #0x18]
	bl      Function_2062960
	mov     r4, r0
	ldr     r1, [pc, #0x44] @ 0x224c5d8, (=#0xf58)
	ldr     r2, [sp, #0x18]
	mov     r0, r5
	bl      Function_203e880
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	bl      Function_203f254
	str     r4, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldr     r1, [sp, #0x18]
	ldr     r2, [sp, #0x14]
	mov     r0, r5
	mov     r3, r7
	bl      Function_203e8b0
	add     sp, #0x20
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x224c5c0

.thumb
branch_224c5c0: @ 224c5c0 :thumb
	mov     r0, r4
	add     r1, sp, #0x18
	add     r2, sp, #0x1c
	mov     r3, #0x1
	bl      Function_20625b0
	cmp     r0, #0x0
	bne     branch_224c564
.thumb
branch_224c5d0: @ 224c5d0 :thumb
	mov     r0, #0x0
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x224c5d6


.align 2


.word 0xf58 @ 0x224c5d8
.thumb
Function_224c5dc: @ 224c5dc :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_203d174
	bl      Function_2027860
	bl      Function_2027f80
	cmp     r0, #0x2
	beq     branch_224c5f4
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x224c5f4

.thumb
branch_224c5f4: @ 224c5f4 :thumb
	mov     r0, r4
	bl      LoadSpritePositionX
	mov     r1, r0
	mov     r0, r4
	bl      Function_2062ff4
	mov     r0, r4
	bl      LoadSpritePositionY
	mov     r1, r0
	mov     r0, r4
	bl      Function_2063004
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_20629fc
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2062a04
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_20633a8
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x224c62c

.thumb
Function_224c62c: @ 224c62c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r1
	ldr     r1, [r3, #0x0]
	mov     r6, r2
	str     r0, [sp, #0x0]
	str     r3, [sp, #0x4]
	cmp     r1, #0x0
	beq     branch_224c644
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224c644

.thumb
branch_224c644: @ 224c644 :thumb
	bl      Function_203d174
	bl      Function_2027860
	mov     r4, r0
	bl      Function_2027f80
	cmp     r0, #0x2
	beq     branch_224c65c
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224c65c

.thumb
branch_224c65c: @ 224c65c :thumb
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2027f6c
	mov     r7, r0
	mov     r0, #0x2
	ldsh    r0, [r7, r0]
	cmp     r0, #0x8
	bne     branch_224c674
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224c674

.thumb
branch_224c674: @ 224c674 :thumb
	ldr     r0, [sp, #0x0]
	ldr     r2, [pc, #0x58] @ 0x224c6d0, (=#0x224c8d4)
	ldr     r0, [r0, #0x1c]
	mov     r4, #0x0
	ldr     r1, [r0, #0x0]
.thumb
branch_224c67e: @ 224c67e :thumb
	ldr     r0, [r2, #0x0]
	cmp     r0, r1
	beq     branch_224c68c
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r2, #0x1c
	cmp     r4, #0x2
	blt     branch_224c67e
.thumb
branch_224c68c: @ 224c68c :thumb
	cmp     r4, #0x2
	bne     branch_224c694
	bl      ErrorHandling
.thumb
branch_224c694: @ 224c694 :thumb
	ldr     r0, [pc, #0x3c] @ 0x224c6d4, (=#0x224c708)
	lsl     r1, r4, #2
	ldr     r0, [r0, r1]
	ldr     r1, [r0, #0x0]
	cmp     r1, #0x8
	beq     branch_224c6c6
	mov     r4, #0x6
	mov     r3, #0x4
.thumb
branch_224c6a4: @ 224c6a4 :thumb
	ldsh    r2, [r0, r3]
	cmp     r2, r5
	bne     branch_224c6be
	ldsh    r2, [r0, r4]
	cmp     r2, r6
	bne     branch_224c6be
	mov     r2, #0x2
	ldsh    r2, [r7, r2]
	cmp     r1, r2
	bne     branch_224c6be
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224c6be

.thumb
branch_224c6be: @ 224c6be :thumb
	add     r0, #0x8
	ldr     r1, [r0, #0x0]
	cmp     r1, #0x8
	bne     branch_224c6a4
.thumb
branch_224c6c6: @ 224c6c6 :thumb
	ldr     r1, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [r1, #0x0]
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x224c6d0

.word 0x224c8d4 @ 0x224c6d0
.word 0x224c708 @ 0x224c6d4
@ 0x224c6d8


.incbin "./baserom/overlay/overlay_0008.bin", 0x2d78, 0x224e780 - 0x224c6d8


@end 0x224e780


