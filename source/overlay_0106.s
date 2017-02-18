
.include "source/macros_asm.s"
.include "source/arm9_ram_2.s"


.section .iwram106, "ax"


.thumb
Function_2241ae0: @ 2241ae0 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	mov     r6, r1
	ldr     r0, [pc, #0xb0] @ 0x2241b98, (=0x68)
	mov     r1, #0x2
	bl      LoadOverlay
	bl      Function_22424c8
	mov     r2, #0x2
	mov     r0, #0x3
	mov     r1, #0x62
	lsl     r2, r2, #16
	bl      Function_2017fc8
	mov     r1, #0xa7
	mov     r0, r4
	lsl     r1, r1, #2
	mov     r2, #0x62
	bl      MallocSomeDataAndStorePtrInOverlayData1c
	mov     r2, #0xa7
	mov     r1, #0x0
	lsl     r2, r2, #2
	mov     r5, r0
	blx     Call_FillMemWithValue
	mov     r0, #0x62
	bl      Function_2018340
	str     r0, [r5, #0x48]
	mov     r0, r4
	str     r4, [r5, #0x0]
	bl      LoadPtrToOverWorldDataIn18
	mov     r4, r0
	mov     r0, r5
	ldr     r1, [r4, #0x0]
	add     r0, #0xb8
	str     r1, [r0, #0x0]
	ldrb    r0, [r4, #0x4]
	add     r1, r4, #0x6
	strb    r0, [r5, #0x9]
	mov     r0, #0x8a
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, r5
	add     r0, #0xb8
	ldr     r0, [r0, #0x0]
	bl      LoadPlayerDataAdress
	mov     r1, r5
	add     r1, #0xb4
	str     r0, [r1, #0x0]
	mov     r1, #0x8b
	ldr     r0, [r4, #0xc]
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r2, [r4, #0x8]
	add     r0, r1, #0x4
	str     r2, [r5, r0]
	mov     r0, r1
	ldr     r2, [r4, #0x14]
	add     r0, #0x8
	str     r2, [r5, r0]
	ldrh    r0, [r4, #0x18]
	add     r1, #0x68
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x1c]
	ldrb    r0, [r4, #0x5]
	strb    r0, [r5, #0xd]
	mov     r0, #0xff
	strb    r0, [r5, r1]
	strb    r0, [r5, #0x18]
	mov     r0, #0x75
	strb    r0, [r5, #0x1f]
	mov     r0, r5
	bl      Function_2242500
	ldrb    r0, [r5, #0x9]
	bl      0x223b5b0
	cmp     r0, #0x1
	bne     branch_2241b8e
	mov     r0, r5
	bl      Function_209ba80
.thumb
branch_2241b8e: @ 2241b8e :thumb
	mov     r0, #0x0
	str     r0, [r6, #0x0]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2241b96


.align 2


.word 0x68 @ 0x2241b98
.thumb
Function_2241b9c: @ 2241b9c :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	bl      LoadOverlayData1c
	mov     r4, r0
	ldrb    r1, [r4, #0x18]
	cmp     r1, #0xff
	beq     branch_2241bc6
	ldr     r1, [r5, #0x0]
	cmp     r1, #0x2
	bne     branch_2241bc6
	ldrh    r1, [r4, #0x10]
	cmp     r1, #0x0
	bne     branch_2241bc6
	bl      Function_2243200
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x3
	bl      Function_2242d5c
.thumb
branch_2241bc6: @ 2241bc6 :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x6
	bls     branch_2241bce
	b       branch_2241ce4
@ 0x2241bce

.thumb
branch_2241bce: @ 2241bce :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2241bda

Jumppoints_2241bda:
.hword branch_2241c02 - Jumppoints_2241bda - 2
.hword branch_2241be8 - Jumppoints_2241bda - 2
.hword branch_2241c18 - Jumppoints_2241bda - 2
.hword branch_2241c6a - Jumppoints_2241bda - 2
.hword branch_2241cac - Jumppoints_2241bda - 2
.hword branch_2241cc2 - Jumppoints_2241bda - 2
.hword branch_2241cd0 - Jumppoints_2241bda - 2
.thumb
branch_2241be8: @ 2241be8 :thumb
	mov     r0, r4
	bl      Function_2241e14
	cmp     r0, #0x1
	bne     branch_2241bfe
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x0
	bl      Function_2242d5c
	b       branch_2241c02
@ 0x2241bfe

.thumb
branch_2241bfe: @ 2241bfe :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2241c02

.thumb
branch_2241c02: @ 2241c02 :thumb
	mov     r0, r4
	bl      Function_2241d28
	cmp     r0, #0x1
	bne     branch_2241ce4
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x2
	bl      Function_2242d5c
	b       branch_2241ce4
@ 0x2241c18

.thumb
branch_2241c18: @ 2241c18 :thumb
	mov     r0, r4
	bl      Function_2241e5c
	cmp     r0, #0x1
	bne     branch_2241ce4
	ldrb    r0, [r4, #0x17]
	cmp     r0, #0x1
	bne     branch_2241c34
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x3
	bl      Function_2242d5c
	b       branch_2241ce4
@ 0x2241c34

.thumb
branch_2241c34: @ 2241c34 :thumb
	ldrb    r0, [r4, #0xb]
	cmp     r0, #0x1
	bne     branch_2241c48
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x1
	bl      Function_2242d5c
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2241c48

.thumb
branch_2241c48: @ 2241c48 :thumb
	ldrb    r0, [r4, #0x9]
	bl      0x223b5b0
	cmp     r0, #0x1
	bne     branch_2241c5e
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x4
	bl      Function_2242d5c
	b       branch_2241ce4
@ 0x2241c5e

.thumb
branch_2241c5e: @ 2241c5e :thumb
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x5
	bl      Function_2242d5c
	b       branch_2241ce4
@ 0x2241c6a

.thumb
branch_2241c6a: @ 2241c6a :thumb
	mov     r0, r4
	bl      Function_2242108
	cmp     r0, #0x1
	bne     branch_2241ce4
	ldrb    r0, [r4, #0x19]
	cmp     r0, #0x1
	bne     branch_2241c8a
	mov     r0, #0x0
	strb    r0, [r4, #0x19]
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x2
	bl      Function_2242d5c
	b       branch_2241ce4
@ 0x2241c8a

.thumb
branch_2241c8a: @ 2241c8a :thumb
	ldrb    r0, [r4, #0x9]
	bl      0x223b5b0
	cmp     r0, #0x1
	bne     branch_2241ca0
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x4
	bl      Function_2242d5c
	b       branch_2241ce4
@ 0x2241ca0

.thumb
branch_2241ca0: @ 2241ca0 :thumb
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x5
	bl      Function_2242d5c
	b       branch_2241ce4
@ 0x2241cac

.thumb
branch_2241cac: @ 2241cac :thumb
	mov     r0, r4
	bl      Function_224230c
	cmp     r0, #0x1
	bne     branch_2241ce4
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x5
	bl      Function_2242d5c
	b       branch_2241ce4
@ 0x2241cc2

.thumb
branch_2241cc2: @ 2241cc2 :thumb
	mov     r0, r4
	bl      Function_2242344
	cmp     r0, #0x1
	bne     branch_2241ce4
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2241cd0

.thumb
branch_2241cd0: @ 2241cd0 :thumb
	mov     r0, r4
	bl      Function_22423ac
	cmp     r0, #0x1
	bne     branch_2241ce4
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x4
	bl      Function_2242d5c
.thumb
branch_2241ce4: @ 2241ce4 :thumb
	add     r4, #0xc0
	ldr     r0, [r4, #0x0]
	bl      Function_20219f8
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2241cf0

.thumb
Function_2241cf0: @ 2241cf0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      LoadOverlayData1c
	mov     r1, #0x8a
	lsl     r1, r1, #2
	ldrb    r2, [r0, #0xd]
	ldr     r1, [r0, r1]
	strh    r2, [r1, #0x0]
	bl      Function_22423e8
	mov     r0, r4
	bl      FreeSomeDataAndStore0InOverlayData1c
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	mov     r0, #0x62
	bl      Function_201807c
	ldr     r0, [pc, #0x8] @ 0x2241d24, (=0x68)
	bl      UnloadOverlay
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2241d24

.word 0x68 @ 0x2241d24
.thumb
Function_2241d28: @ 2241d28 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldrb    r1, [r4, #0x8]
	cmp     r1, #0x3
	bhi     branch_2241dce
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2241d40

Jumppoints_2241d40:
.hword branch_2241d48 - Jumppoints_2241d40 - 2
.hword branch_2241d6a - Jumppoints_2241d40 - 2
.hword branch_2241d9c - Jumppoints_2241d40 - 2
.hword branch_2241dc0 - Jumppoints_2241d40 - 2
.thumb
branch_2241d48: @ 2241d48 :thumb
	ldrh    r0, [r4, #0x12]
	cmp     r0, #0x0
	bne     branch_2241d62
	ldrb    r0, [r4, #0x9]
	bl      0x223b5b0
	cmp     r0, #0x1
	bne     branch_2241d62
	bl      Function_20365f4
	mov     r0, #0x70
	bl      Function_20364f0
.thumb
branch_2241d62: @ 2241d62 :thumb
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2241dce
@ 0x2241d6a

.thumb
branch_2241d6a: @ 2241d6a :thumb
	ldrh    r0, [r4, #0x12]
	cmp     r0, #0x0
	bne     branch_2241d94
	ldrb    r0, [r4, #0x9]
	bl      0x223b5b0
	cmp     r0, #0x1
	bne     branch_2241d94
	mov     r0, #0x70
	bl      Function_2036540
	cmp     r0, #0x1
	bne     branch_2241dce
	bl      Function_20365f4
	mov     r0, #0x1
	strh    r0, [r4, #0x12]
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2241dce
@ 0x2241d94

.thumb
branch_2241d94: @ 2241d94 :thumb
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2241dce
@ 0x2241d9c

.thumb
branch_2241d9c: @ 2241d9c :thumb
	bl      Function_2241dd4
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x62
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, #0x1
	mov     r2, r1
	mov     r3, r0
	bl      Function_200f174
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2241dce
@ 0x2241dc0

.thumb
branch_2241dc0: @ 2241dc0 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x1
	bne     branch_2241dce
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r3,r4,pc}
@ 0x2241dce

.thumb
branch_2241dce: @ 2241dce :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2241dd4

.thumb
Function_2241dd4: @ 2241dd4 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r4, r0
	str     r1, [sp, #0x4]
	mov     r1, r4
	add     r1, #0x7c
	mov     r2, #0x1
	mov     r3, #0x2
	bl      Function_2242b38
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x7c
	bl      Function_2242c2c
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r2, #0x0
	mov     r0, r4
	add     r4, #0x6c
	str     r2, [sp, #0x8]
	mov     r1, r4
	mov     r3, r2
	str     r2, [sp, #0xc]
	bl      Function_2242ac4
	add     sp, #0x10
	pop     {r4,pc}
@ 0x2241e14

.thumb
Function_2241e14: @ 2241e14 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x8]
	cmp     r0, #0x0
	bne     branch_2241e58
	ldr     r0, [r4, #0x4]
	bl      CallOverlayDataJumpTable
	cmp     r0, #0x1
	bne     branch_2241e58
	mov     r0, r4
	add     r0, #0xbc
	ldr     r0, [r0, #0x0]
	ldrb    r1, [r0, #0x14]
	mov     r0, #0x89
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r0, r4
	add     r0, #0xbc
	ldr     r0, [r0, #0x0]
	bl      free
	ldr     r0, [r4, #0x4]
	bl      free
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	mov     r0, r4
	bl      Function_224248c
	mov     r0, #0x0
	strh    r0, [r4, #0x10]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2241e58

.thumb
branch_2241e58: @ 2241e58 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2241e5c

.thumb
Function_2241e5c: @ 2241e5c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	mov     r4, r0
	ldrb    r1, [r4, #0x8]
	cmp     r1, #0x6
	bhi     branch_2241e9e
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2241e74

Jumppoints_2241e74:
.hword branch_2241e82 - Jumppoints_2241e74 - 2
.hword branch_2241e8c - Jumppoints_2241e74 - 2
.hword branch_2241f52 - Jumppoints_2241e74 - 2
.hword branch_2241fa0 - Jumppoints_2241e74 - 2
.hword branch_2242018 - Jumppoints_2241e74 - 2
.hword branch_2242066 - Jumppoints_2241e74 - 2
.hword branch_22420be - Jumppoints_2241e74 - 2
.thumb
branch_2241e82: @ 2241e82 :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0xb]
	mov     r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_22420ea
@ 0x2241e8c

.thumb
branch_2241e8c: @ 2241e8c :thumb
	ldr     r1, [pc, #0x260] @ 0x22420f0, (=0x21bf67c)
	ldr     r1, [r1, #0x48]
	bl      Function_2242d64
	ldr     r0, [pc, #0x258] @ 0x22420f0, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	tst     r0, r1
	bne     branch_2241ea0
.thumb
branch_2241e9e: @ 2241e9e :thumb
	b       branch_22420ea
@ 0x2241ea0

.thumb
branch_2241ea0: @ 2241ea0 :thumb
	ldrb    r0, [r4, #0xd]
	bl      0x223b5a4
	cmp     r0, #0xfe
	bne     branch_2241ed2
	ldr     r0, [pc, #0x248] @ 0x22420f4, (=0x5dd)
	bl      Function_2005748
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x62
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      Function_200f174
	mov     r0, #0x1
	strh    r0, [r4, #0x10]
	mov     r0, #0x6
	strb    r0, [r4, #0x8]
	b       branch_22420ea
@ 0x2241ed2

.thumb
branch_2241ed2: @ 2241ed2 :thumb
	mov     r0, r4
	bl      Function_22430b0
	cmp     r0, #0x1
	ldrb    r0, [r4, #0xd]
	bne     branch_2241ef2
	bl      0x223b5a4
	cmp     r0, #0x9
	beq     branch_2241f26
	ldr     r0, [pc, #0x210] @ 0x22420f8, (=0x5f3)
	bl      Function_2005748
	add     sp, #0x18
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2241ef2

.thumb
branch_2241ef2: @ 2241ef2 :thumb
	bl      Function_2243090
	mov     r1, #0x23
	lsl     r1, r1, #4
	ldr     r1, [r4, r1]
	bl      Function_20301e0
	cmp     r0, #0xa
	bcc     branch_2241f10
	ldr     r0, [pc, #0x1f0] @ 0x22420f8, (=0x5f3)
	bl      Function_2005748
	add     sp, #0x18
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2241f10

.thumb
branch_2241f10: @ 2241f10 :thumb
	ldrb    r0, [r4, #0xd]
	bl      0x223b5a4
	cmp     r0, #0x9
	bne     branch_2241f26
	ldr     r0, [pc, #0x1dc] @ 0x22420f8, (=0x5f3)
	bl      Function_2005748
	add     sp, #0x18
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2241f26

.thumb
branch_2241f26: @ 2241f26 :thumb
	ldr     r0, [pc, #0x1cc] @ 0x22420f4, (=0x5dd)
	bl      Function_2005748
	ldrb    r0, [r4, #0x9]
	bl      0x223b5b0
	cmp     r0, #0x0
	bne     branch_2241f48
	ldrb    r1, [r4, #0xd]
	ldr     r0, [r4, #0x48]
	mov     r2, #0x1
	bl      Function_2242fac
	ldr     r0, [r4, #0x48]
	mov     r1, #0x3
	bl      Function_201c3c0
.thumb
branch_2241f48: @ 2241f48 :thumb
	mov     r0, #0x8
	strh    r0, [r4, #0x14]
	mov     r0, #0x2
	strb    r0, [r4, #0x8]
	b       branch_22420ea
@ 0x2241f52

.thumb
branch_2241f52: @ 2241f52 :thumb
	ldrh    r0, [r4, #0x14]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, #0x14]
	ldrh    r0, [r4, #0x14]
	cmp     r0, #0x0
	bne     branch_2241fbe
	ldrb    r0, [r4, #0x9]
	bl      0x223b5b0
	cmp     r0, #0x0
	bne     branch_2241f74
	mov     r0, r4
	bl      Function_2243224
	mov     r0, #0x3
	strb    r0, [r4, #0x8]
	b       branch_22420ea
@ 0x2241f74

.thumb
branch_2241f74: @ 2241f74 :thumb
	mov     r0, r4
	add     r0, #0xb4
	ldr     r0, [r0, #0x0]
	bl      Function_2027b50
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x4c
	bl      Function_2243758
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x1
	bl      Function_2242978
	strb    r0, [r4, #0xa]
	ldrb    r0, [r4, #0xd]
	add     sp, #0x18
	strb    r0, [r4, #0x1a]
	mov     r0, #0x1
	strb    r0, [r4, #0x17]
	pop     {r3-r5,pc}
@ 0x2241fa0

.thumb
branch_2241fa0: @ 2241fa0 :thumb
	add     r0, #0x98
	ldr     r0, [r0, #0x0]
	bl      Function_2001be0
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	bhi     branch_2241fc0
	bcs     branch_2242006
	cmp     r0, #0x1
	bhi     branch_2241fbe
	cmp     r0, #0x0
	beq     branch_2241fc6
	cmp     r0, #0x1
	beq     branch_2242006
.thumb
branch_2241fbe: @ 2241fbe :thumb
	b       branch_22420ea
@ 0x2241fc0

.thumb
branch_2241fc0: @ 2241fc0 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r0, r1
	b       branch_22420ea
@ 0x2241fc6

.thumb
branch_2241fc6: @ 2241fc6 :thumb
	mov     r0, r4
	bl      Function_2243200
	mov     r0, r4
	bl      Function_2243098
	cmp     r0, #0x1
	bne     branch_2241fea
	mov     r0, r4
	bl      Function_22430b0
	cmp     r0, #0x0
	bne     branch_2241fea
	ldrb    r0, [r4, #0xd]
	strb    r0, [r4, #0x1f]
	mov     r0, #0x4
	strb    r0, [r4, #0x8]
	b       branch_22420ea
@ 0x2241fea

.thumb
branch_2241fea: @ 2241fea :thumb
	ldr     r0, [pc, #0x110] @ 0x22420fc, (=0x5dc)
	mov     r1, #0x0
	bl      Function_20057a4
	ldr     r0, [pc, #0x10c] @ 0x2242100, (=0x624)
	bl      Function_2005748
	ldrb    r0, [r4, #0x1f]
	cmp     r0, #0x75
	beq     branch_2242000
	strb    r0, [r4, #0xd]
.thumb
branch_2242000: @ 2242000 :thumb
	add     sp, #0x18
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2242006

.thumb
branch_2242006: @ 2242006 :thumb
	mov     r0, r4
	bl      Function_2243200
	mov     r0, r4
	bl      Function_22432ac
	mov     r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_22420ea
@ 0x2242018

.thumb
branch_2242018: @ 2242018 :thumb
	add     r0, #0xb4
	ldr     r0, [r0, #0x0]
	bl      Function_2027b50
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x4c
	bl      Function_2243758
	mov     r0, r4
	add     r0, #0xb8
	ldr     r0, [r0, #0x0]
	bl      LoadPlayerDataAdress
	bl      Function_2027ac0
	mov     r3, #0x1
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r1, r4
	str     r3, [sp, #0x8]
	mov     r0, #0x2
	str     r0, [sp, #0xc]
	mov     r0, #0xf
	str     r0, [sp, #0x10]
	str     r3, [sp, #0x14]
	mov     r0, r4
	add     r1, #0x4c
	mov     r2, #0x20
	bl      Function_2242918
	strb    r0, [r4, #0xa]
	mov     r0, r4
	add     r0, #0x4c
	bl      Function_201a954
	mov     r0, #0x5
	strb    r0, [r4, #0x8]
	b       branch_22420ea
@ 0x2242066

.thumb
branch_2242066: @ 2242066 :thumb
	ldrb    r0, [r4, #0xa]
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_22420ea
	mov     r0, #0x1
	strb    r0, [r4, #0x1e]
	mov     r0, r4
	bl      Function_22432d4
	mov     r0, #0x87
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_22436b0
	ldr     r0, [r4, #0x48]
	mov     r1, #0x13
	mov     r2, #0x0
	bl      Function_2242fac
	ldr     r1, [r4, #0x48]
	mov     r0, r4
	bl      Function_2242f4c
	mov     r0, #0x13
	strb    r0, [r4, #0xd]
	mov     r0, r4
	bl      Function_2242f24
	mov     r5, r0
	mov     r0, r4
	bl      Function_2242f3c
	mov     r2, r0
	mov     r0, #0x87
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, r5
	bl      Function_2243670
	mov     r0, #0x0
	strb    r0, [r4, #0x8]
	b       branch_22420ea
@ 0x22420be

.thumb
branch_22420be: @ 22420be :thumb
	bl      Function_200f2ac
	cmp     r0, #0x1
	bne     branch_22420ea
	mov     r0, r4
	bl      Function_2242ca4
	mov     r0, r4
	bl      Function_22423e8
	mov     r1, r4
	add     r1, #0xbc
	ldr     r0, [pc, #0x2c] @ 0x2242104, (=Unknown_20f410c)
	ldr     r1, [r1, #0x0]
	mov     r2, #0x62
	bl      AllocAndInitOverlayData
	str     r0, [r4, #0x4]
	mov     r0, #0x1
	add     sp, #0x18
	strb    r0, [r4, #0xb]
	pop     {r3-r5,pc}
@ 0x22420ea

.thumb
branch_22420ea: @ 22420ea :thumb
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x22420f0

.word 0x21bf67c @ 0x22420f0
.word 0x5dd @ 0x22420f4
.word 0x5f3 @ 0x22420f8
.word 0x5dc @ 0x22420fc
.word 0x624 @ 0x2242100
.word Unknown_20f410c @ 0x2242104
.thumb
Function_2242108: @ 2242108 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x8]
	cmp     r1, #0x9
	bhi     branch_2242166
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x224211e

Jumppoints_224211e:
.hword branch_2242132 - Jumppoints_224211e - 2
.hword branch_2242154 - Jumppoints_224211e - 2
.hword branch_2242234 - Jumppoints_224211e - 2
.hword branch_224219a - Jumppoints_224211e - 2
.hword branch_22421ee - Jumppoints_224211e - 2
.hword branch_2242252 - Jumppoints_224211e - 2
.hword branch_224229e - Jumppoints_224211e - 2
.hword branch_22422ae - Jumppoints_224211e - 2
.hword branch_22422d0 - Jumppoints_224211e - 2
.hword branch_22422e0 - Jumppoints_224211e - 2
.thumb
branch_2242132: @ 2242132 :thumb
	ldrb    r0, [r4, #0x1a]
	bl      Function_2243090
	mov     r2, r0
	mov     r0, r4
	mov     r1, #0x5
	bl      Function_22430b4
	cmp     r0, #0x1
	bne     branch_2242166
	mov     r0, #0x0
	strb    r0, [r4, #0x1b]
	strb    r0, [r4, #0x1a]
	strb    r0, [r4, #0x17]
	mov     r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_22422fc
@ 0x2242154

.thumb
branch_2242154: @ 2242154 :thumb
	ldrb    r0, [r4, #0x1b]
	cmp     r0, #0x0
	beq     branch_2242160
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0x1b]
	b       branch_22422fc
@ 0x2242160

.thumb
branch_2242160: @ 2242160 :thumb
	ldrb    r0, [r4, #0x16]
	cmp     r0, #0x2
	bcs     branch_2242168
.thumb
branch_2242166: @ 2242166 :thumb
	b       branch_22422fc
@ 0x2242168

.thumb
branch_2242168: @ 2242168 :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x16]
	ldrb    r0, [r4, #0x18]
	cmp     r0, #0x14
	bcs     branch_2242186
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_2242180
	mov     r0, #0x2
	strb    r0, [r4, #0x8]
	b       branch_22422fc
@ 0x2242180

.thumb
branch_2242180: @ 2242180 :thumb
	mov     r0, #0x3
	strb    r0, [r4, #0x8]
	b       branch_22422fc
@ 0x2242186

.thumb
branch_2242186: @ 2242186 :thumb
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_2242194
	mov     r0, #0x3
	strb    r0, [r4, #0x8]
	b       branch_22422fc
@ 0x2242194

.thumb
branch_2242194: @ 2242194 :thumb
	mov     r0, #0x2
	strb    r0, [r4, #0x8]
	b       branch_22422fc
@ 0x224219a

.thumb
branch_224219a: @ 224219a :thumb
	mov     r0, #0x22
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2243664
	mov     r0, r4
	add     r0, #0xb4
	ldr     r0, [r0, #0x0]
	bl      Function_2027b50
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x4c
	bl      Function_2243758
	ldr     r0, [r4, #0x24]
	mov     r1, #0x0
	bl      0x222e5d0
	mov     r0, r4
	mov     r1, #0xb
	mov     r2, #0x1
	bl      Function_2242978
	strb    r0, [r4, #0xa]
	mov     r0, #0xa
	mov     r1, #0xa5
	strb    r0, [r4, #0x1b]
	lsl     r1, r1, #2
	ldrb    r1, [r4, r1]
	ldr     r0, [r4, #0x48]
	mov     r2, #0x2
	bl      Function_2242fac
	ldr     r0, [r4, #0x48]
	mov     r1, #0x3
	bl      Function_201c3c0
	mov     r0, #0x4
	strb    r0, [r4, #0x8]
	b       branch_22422fc
@ 0x22421ee

.thumb
branch_22421ee: @ 22421ee :thumb
	ldr     r1, [pc, #0x110] @ 0x2242300, (=0x295)
	ldrb    r2, [r4, r1]
	cmp     r2, #0x0
	beq     branch_2242270
	cmp     r2, #0x1
	bne     branch_2242204
	.hword  0x1e48 @ sub r0, r1, #0x1
	ldrb    r0, [r4, r0]
	strb    r0, [r4, #0xd]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2242204

.thumb
branch_2242204: @ 2242204 :thumb
	bl      Function_22432d4
	mov     r1, #0xa5
	lsl     r1, r1, #2
	ldrb    r1, [r4, r1]
	ldr     r0, [r4, #0x48]
	mov     r2, #0x0
	bl      Function_2242fac
	ldr     r0, [r4, #0x48]
	mov     r1, #0x3
	bl      Function_201c3c0
	mov     r0, #0xa5
	mov     r2, #0xff
	lsl     r0, r0, #2
	strb    r2, [r4, r0]
	mov     r1, #0x0
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r1, [r4, r0]
	strb    r2, [r4, #0x18]
	mov     r0, #0x1
	strb    r0, [r4, #0x19]
	pop     {r4,pc}
@ 0x2242234

.thumb
branch_2242234: @ 2242234 :thumb
	ldrb    r1, [r4, #0xd]
	ldr     r0, [r4, #0x48]
	mov     r2, #0x1
	bl      Function_2242fac
	ldr     r0, [r4, #0x48]
	mov     r1, #0x3
	bl      Function_201c3c0
	mov     r0, r4
	bl      Function_2243224
	mov     r0, #0x5
	strb    r0, [r4, #0x8]
	b       branch_22422fc
@ 0x2242252

.thumb
branch_2242252: @ 2242252 :thumb
	add     r0, #0x98
	ldr     r0, [r0, #0x0]
	bl      Function_2001be0
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	bhi     branch_2242272
	bcs     branch_2242292
	cmp     r0, #0x1
	bhi     branch_22422fc
	cmp     r0, #0x0
	beq     branch_2242278
	cmp     r0, #0x1
	beq     branch_2242292
.thumb
branch_2242270: @ 2242270 :thumb
	b       branch_22422fc
@ 0x2242272

.thumb
branch_2242272: @ 2242272 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r0, r1
	b       branch_22422fc
@ 0x2242278

.thumb
branch_2242278: @ 2242278 :thumb
	ldr     r0, [pc, #0x88] @ 0x2242304, (=0x5dc)
	mov     r1, #0x0
	bl      Function_20057a4
	ldr     r0, [pc, #0x84] @ 0x2242308, (=0x624)
	bl      Function_2005748
	mov     r0, r4
	bl      Function_2243200
	mov     r0, #0x6
	strb    r0, [r4, #0x8]
	b       branch_22422fc
@ 0x2242292

.thumb
branch_2242292: @ 2242292 :thumb
	mov     r0, r4
	bl      Function_2243200
	mov     r0, #0x7
	strb    r0, [r4, #0x8]
	b       branch_22422fc
@ 0x224229e

.thumb
branch_224229e: @ 224229e :thumb
	mov     r1, #0x6
	mov     r2, #0x1
	bl      Function_22430b4
	cmp     r0, #0x1
	bne     branch_22422fc
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x22422ae

.thumb
branch_22422ae: @ 22422ae :thumb
	mov     r1, #0x6
	mov     r2, #0x2
	bl      Function_22430b4
	cmp     r0, #0x1
	bne     branch_22422fc
	mov     r0, r4
	bl      Function_22432ac
	mov     r0, #0xa5
	mov     r1, #0xff
	lsl     r0, r0, #2
	strb    r1, [r4, r0]
	strb    r1, [r4, #0x18]
	mov     r0, #0x1
	strb    r0, [r4, #0x19]
	pop     {r4,pc}
@ 0x22422d0

.thumb
branch_22422d0: @ 22422d0 :thumb
	bl      Function_20365f4
	mov     r0, #0x68
	bl      Function_20364f0
	mov     r0, #0x9
	strb    r0, [r4, #0x8]
	b       branch_22422fc
@ 0x22422e0

.thumb
branch_22422e0: @ 22422e0 :thumb
	mov     r0, #0x68
	bl      Function_2036540
	cmp     r0, #0x1
	bne     branch_22422fc
	bl      Function_20365f4
	mov     r0, #0x62
	bl      Function_20363e8
	mov     r0, #0xff
	strb    r0, [r4, #0x18]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x22422fc

.thumb
branch_22422fc: @ 22422fc :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2242300

.word 0x295 @ 0x2242300
.word 0x5dc @ 0x2242304
.word 0x624 @ 0x2242308
.thumb
Function_224230c: @ 224230c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x8]
	cmp     r0, #0x0
	beq     branch_224231c
	cmp     r0, #0x1
	beq     branch_224232e
	b       branch_2242340
@ 0x224231c

.thumb
branch_224231c: @ 224231c :thumb
	bl      Function_20365f4
	mov     r0, #0x68
	bl      Function_20364f0
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_2242340
@ 0x224232e

.thumb
branch_224232e: @ 224232e :thumb
	mov     r0, #0x68
	bl      Function_2036540
	cmp     r0, #0x1
	bne     branch_2242340
	bl      Function_20365f4
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2242340

.thumb
branch_2242340: @ 2242340 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2242344

.thumb
Function_2242344: @ 2242344 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldrb    r1, [r4, #0x8]
	cmp     r1, #0x0
	beq     branch_224235a
	cmp     r1, #0x1
	beq     branch_2242366
	cmp     r1, #0x2
	beq     branch_2242396
	b       branch_22423a4
@ 0x224235a

.thumb
branch_224235a: @ 224235a :thumb
	mov     r0, #0xa
	strb    r0, [r4, #0x1b]
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_22423a4
@ 0x2242366

.thumb
branch_2242366: @ 2242366 :thumb
	ldrb    r1, [r4, #0x1b]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strb    r1, [r4, #0x1b]
	ldrb    r1, [r4, #0x1b]
	cmp     r1, #0x0
	bne     branch_22423a4
	bl      Function_22432d4
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x62
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      Function_200f174
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_22423a4
@ 0x2242396

.thumb
branch_2242396: @ 2242396 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x1
	bne     branch_22423a4
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r3,r4,pc}
@ 0x22423a4

.thumb
branch_22423a4: @ 22423a4 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x22423aa


.align 2, 0


.thumb
Function_22423ac: @ 22423ac :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x8]
	cmp     r1, #0x0
	beq     branch_22423bc
	cmp     r1, #0x1
	beq     branch_22423de
	b       branch_22423e2
@ 0x22423bc

.thumb
branch_22423bc: @ 22423bc :thumb
	bl      Function_2243200
	mov     r0, #0x22
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_2243664
	mov     r0, r4
	add     r0, #0x4c
	mov     r1, #0x0
	bl      Function_200e084
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_22423e2
@ 0x22423de

.thumb
branch_22423de: @ 22423de :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x22423e2

.thumb
branch_22423e2: @ 22423e2 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22423e6


.align 2, 0


.thumb
Function_22423e8: @ 22423e8 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r0, #0x87
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	cmp     r0, #0x0
	beq     branch_22423fa
	bl      Function_2243650
.thumb
branch_22423fa: @ 22423fa :thumb
	mov     r0, #0x22
	lsl     r0, r0, #4
	ldr     r0, [r6, r0]
	cmp     r0, #0x0
	beq     branch_2242408
	bl      Function_2243650
.thumb
branch_2242408: @ 2242408 :thumb
	bl      Function_2039794
	mov     r0, r6
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	mov     r1, #0x2
	bl      Function_2002fa0
	mov     r0, r6
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_2002fa0
	mov     r0, r6
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	bl      Call_free1
	mov     r0, r6
	mov     r1, #0x0
	add     r0, #0xac
	str     r1, [r0, #0x0]
	mov     r0, r6
	add     r0, #0xc0
	bl      Function_2243570
	ldr     r0, [r6, #0x20]
	bl      Function_200b190
	ldr     r0, [r6, #0x24]
	bl      Function_200b3f0
	ldr     r0, [r6, #0x28]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [r6, #0x2c]
	bl      Function_20237bc_FreeMsg
	mov     r0, r6
	add     r0, #0xb0
	ldr     r0, [r0, #0x0]
	bl      Function_200c560
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_2242464: @ 2242464 :thumb
	ldr     r0, [r5, #0x30]
	bl      Function_20237bc_FreeMsg
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x2
	blt     branch_2242464
	mov     r0, r6
	add     r0, #0x4c
	bl      Function_2243710
	ldr     r0, [r6, #0x48]
	bl      Function_22426a4
	mov     r0, #0x8e
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	bl      Call_FS_CloseFile
	pop     {r4-r6,pc}
@ 0x224248c

.thumb
Function_224248c: @ 224248c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_22424c8
	mov     r0, #0x62
	bl      Function_2018340
	str     r0, [r4, #0x48]
	mov     r0, r4
	bl      Function_2242500
	ldrb    r0, [r4, #0xd]
	bl      0x223b5a4
	cmp     r0, #0xfe
	bne     branch_22424c6
	mov     r0, #0x87
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x2
	bl      Function_22436b0
	mov     r0, #0x87
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x80
	mov     r2, #0xa8
	bl      Function_2243670
.thumb
branch_22424c6: @ 22424c6 :thumb
	pop     {r4,pc}
@ 0x22424c8

.thumb
Function_22424c8: @ 22424c8 :thumb
	push    {r3,lr}
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	mov     r0, #0x0
	mov     r1, r0
	bl      Function_20177bc
	bl      Function_201ff00
	bl      Function_201ff68
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0xc] @ 0x22424f8, (=0xffffe0ff)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r2, [pc, #0xc] @ 0x22424fc, (=0x4001000)
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	pop     {r3,pc}
@ 0x22424f8

.word 0xffffe0ff @ 0x22424f8
.word 0x4001000 @ 0x22424fc



.thumb
Function_2242500: @ 2242500 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0

	mov     r0, #FrontierBg_Narc
	mov     r1, #0x62
	bl      LoadFromNARC_8
	mov     r1, #0x8e
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, r5
	bl      Function_224262c
	mov     r0, r5
	bl      Function_2242688
	ldr     r2, [pc, #0x100] @ 0x2242624, (=0x225)
	mov     r0, #0x1
	mov     r1, #0x1a
	mov     r3, #0x62
	bl      LoadFromNARC_9
	str     r0, [r5, #0x20]
	mov     r0, #0x62
	bl      Function_200b358
	str     r0, [r5, #0x24]
	mov     r0, #0x96
	lsl     r0, r0, #2
	mov     r1, #0x62
	bl      Function_2023790
	str     r0, [r5, #0x28]
	mov     r0, #0x96
	lsl     r0, r0, #2
	mov     r1, #0x62
	bl      Function_2023790
	str     r0, [r5, #0x2c]
	mov     r6, #0x0
	mov     r4, r5
	mov     r7, #0x20
.thumb
branch_2242554: @ 2242554 :thumb
	mov     r0, r7
	mov     r1, #0x62
	bl      Function_2023790
	str     r0, [r4, #0x30]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x2
	blt     branch_2242554
	mov     r1, #0x1a
	mov     r0, #0x0
	lsl     r1, r1, #4
	mov     r2, #0x62
	bl      LoadFromNARC_PlFont1
	mov     r1, #0x6
	mov     r0, #0x0
	lsl     r1, r1, #6
	mov     r2, #0x62
	bl      LoadFromNARC_PlFont2
	mov     r0, #0xf
	mov     r1, #0xe
	mov     r2, #0x0
	mov     r3, #0x62
	bl      Function_200c440
	mov     r1, r5
	add     r1, #0xb0
	str     r0, [r1, #0x0]
	mov     r1, r5
	ldr     r0, [r5, #0x48]
	add     r1, #0x4c
	bl      Function_22436e0
	ldr     r1, [r5, #0x48]
	mov     r0, r5
	bl      Function_2242f4c
	bl      Function_201ffd0
	mov     r0, r5
	bl      Function_2242f24
	mov     r4, r0
	mov     r0, r5
	bl      Function_2242f3c
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x0
	add     r0, #0xc0
	mov     r2, #0x1
	mov     r3, r4
	str     r1, [sp, #0x4]
	bl      Function_22435fc
	mov     r1, #0x87
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r3, #0xa0
	mov     r1, #0x1
	str     r3, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r0, #0xc0
	mov     r2, r1
	bl      Function_22435fc
	mov     r1, #0x22
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	add     r1, #0xc
	ldr     r0, [r5, r1]
	mov     r1, #0x0
	bl      GetAdrOfPkmnInParty
	mov     r1, r0
	mov     r0, #0x22
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	bl      Function_22436cc
	bl      Function_2035e38
	cmp     r0, #0x0
	beq     branch_2242616
	mov     r0, #0x1
	mov     r1, #0x10
	bl      Function_200966c
	mov     r0, #0x1
	bl      Function_2009704
	bl      Function_2039734
.thumb
branch_2242616: @ 2242616 :thumb
	ldr     r0, [pc, #0x10] @ 0x2242628, (=0x22426e1)
	mov     r1, r5
	bl      SetMainLoopFunctionCall
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2242622


.align 2


.word 0x225 @ 0x2242624
.word 0x22426e1 @ 0x2242628
.thumb
Function_224262c: @ 224262c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_224271c
	ldr     r0, [r4, #0x48]
	bl      Function_224273c
	mov     r0, #0x62
	bl      MallocFill120
	mov     r1, r4
	add     r1, #0xac
	str     r0, [r1, #0x0]
	mov     r0, r4
	add     r0, #0xac
	mov     r1, #0x2
	ldr     r0, [r0, #0x0]
	lsl     r2, r1, #8
	mov     r3, #0x62
	bl      Function_2002f70
	mov     r0, r4
	add     r0, #0xac
	mov     r2, #0x2
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	lsl     r2, r2, #8
	mov     r3, #0x62
	bl      Function_2002f70
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_224283c
	bl      Function_2242884
	mov     r0, #0x4
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_22428b8
	pop     {r4,pc}
@ 0x2242686


.align 2, 0


.thumb
Function_2242688: @ 2242688 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x8b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      GetAdrOfPkmnInParty
	add     r4, #0xc0
	mov     r1, r0
	mov     r0, r4
	bl      Function_2243310
	pop     {r4,pc}
@ 0x22426a4

.thumb
Function_22426a4: @ 22426a4 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x1f
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x1f
	mov     r1, #0x0
	bl      Function_201ff74
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_2019044
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x22426e0

.thumb
Function_22426e0: @ 22426e0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	bne     branch_2242712
	mov     r0, r4
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_22426f8
	bl      Function_2003694
.thumb
branch_22426f8: @ 22426f8 :thumb
	ldr     r0, [r4, #0x48]
	bl      Function_201c2b8
	bl      Function_201dcac
	bl      Function_200a858
	ldr     r3, [pc, #0xc] @ 0x2242714, (=0x27e0000)
	ldr     r1, [pc, #0xc] @ 0x2242718, (=0x3ff8)
	mov     r0, #0x1
	ldr     r2, [r3, r1]
	orr     r0, r2
	str     r0, [r3, r1]
.thumb
branch_2242712: @ 2242712 :thumb
	pop     {r4,pc}
@ 0x2242714

.word 0x27e0000 @ 0x2242714
.word 0x3ff8 @ 0x2242718
.thumb
Function_224271c: @ 224271c :thumb
	push    {r4,lr}
	add     sp, #-0x28
	ldr     r4, [pc, #0x14] @ 0x2242738, (=0x2243824)
	add     r3, sp, #0x0
	mov     r2, #0x5
.thumb
branch_2242726: @ 2242726 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_2242726
	add     r0, sp, #0x0
	bl      GX_SetBanks
	add     sp, #0x28
	pop     {r4,pc}
@ 0x2242738

.word 0x2243824 @ 0x2242738
.thumb
Function_224273c: @ 224273c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x80
	ldr     r5, [pc, #0xe0] @ 0x2242824, (=0x22437a4)
	add     r3, sp, #0x70
	mov     r4, r0
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      SetGraphicsModes
	ldr     r5, [pc, #0xd0] @ 0x2242828, (=0x22437d0)
	add     r3, sp, #0x54
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x0
	str     r0, [r3, #0x0]
	mov     r0, r4
	mov     r3, r1
	bl      Function_20183c4
	mov     r0, #0x0
	mov     r1, #0x20
	mov     r2, r0
	mov     r3, #0x62
	bl      Function_2019690
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2019ebc
	ldr     r5, [pc, #0xa0] @ 0x224282c, (=0x22437ec)
	add     r3, sp, #0x38
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	str     r0, [r3, #0x0]
	mov     r0, r4
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x1
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x62
	bl      Function_2019690
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2019ebc
	ldr     r5, [pc, #0x70] @ 0x2242830, (=0x2243808)
	add     r3, sp, #0x1c
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
	mov     r0, r4
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_2019ebc
	ldr     r5, [pc, #0x4c] @ 0x2242834, (=0x22437b4)
	add     r3, sp, #0x0
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	str     r0, [r3, #0x0]
	mov     r0, r4
	mov     r1, #0x4
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_2019ebc
	ldr     r1, [pc, #0x28] @ 0x2242838, (=0x4000008)
	mov     r0, #0x3
	ldrh    r2, [r1, #0x0]
	bic     r2, r0
	mov     r0, #0x1
	strh    r2, [r1, #0x0]
	mov     r1, r0
	bl      Function_201ff0c
	add     sp, #0x80
	pop     {r3-r5,pc}
@ 0x2242824

.word 0x22437a4 @ 0x2242824
.word 0x22437d0 @ 0x2242828
.word 0x22437ec @ 0x224282c
.word 0x2243808 @ 0x2242830
.word 0x22437b4 @ 0x2242834
.word 0x4000008 @ 0x2242838
.thumb
Function_224283c: @ 224283c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r4, r1
	mov     r0, #0x62
	str     r0, [sp, #0xc]
	mov     r0, #0x8e
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x48]
	mov     r1, #0x17
	mov     r3, r4
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x62
	str     r0, [sp, #0xc]
	mov     r0, #0x8e
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x48]
	mov     r1, #0x18
	mov     r3, r4
	bl      Function_200710c
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2242884

.thumb
Function_2242884: @ 2242884 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r0, #0x96
	mov     r1, #0x86
	add     r2, sp, #0x0
	mov     r3, #0x62
	bl      Function_2006f88
	mov     r4, r0
	ldr     r0, [sp, #0x0]
	mov     r1, #0xc0
	ldr     r0, [r0, #0xc]
	blx     DC_FlushRange
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [r0, #0xc]
	mov     r2, #0xc0
	blx     GX_LoadBGPltt
	mov     r0, r4
	bl      free
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x22428b6


.align 2, 0


.thumb
Function_22428b8: @ 22428b8 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r4, r1
	mov     r0, #0x62
	str     r0, [sp, #0xc]
	mov     r0, #0x8e
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x48]
	mov     r1, #0x7d
	mov     r3, r4
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x62
	str     r0, [sp, #0xc]
	mov     r0, #0x8e
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x48]
	mov     r1, #0x7e
	mov     r3, r4
	bl      Function_200710c
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x62
	str     r0, [sp, #0x4]
	mov     r0, #0x8e
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0xab
	mov     r2, #0x4
	mov     r3, #0x0
	bl      Function_2007130
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2242918

.thumb
Function_2242918: @ 2242918 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r4, r1
	add     r1, sp, #0x38
	ldrb    r1, [r1, #0x0]
	mov     r5, r0
	mov     r0, r4
	mov     r6, r2
	mov     r7, r3
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [r5, #0x20]
	ldr     r2, [r5, #0x2c]
	mov     r1, r6
	bl      Function_200b1b8_CallMsgDecrypt
	ldr     r0, [r5, #0x24]
	ldr     r1, [r5, #0x28]
	ldr     r2, [r5, #0x2c]
	bl      Function_200c388
	ldr     r0, [sp, #0x28]
	add     r2, sp, #0x18
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x2c]
	mov     r3, r7
	str     r0, [sp, #0x4]
	add     r0, sp, #0x38
	ldrb    r1, [r0, #0x0]
	ldrb    r0, [r2, #0x18]
	ldrb    r2, [r2, #0x1c]
	lsl     r0, r0, #24
	lsl     r2, r2, #24
	lsr     r0, r0, #8
	lsr     r2, r2, #16
	orr     r0, r2
	orr     r0, r1
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	add     r1, sp, #0x3c
	ldrb    r1, [r1, #0x0]
	ldr     r2, [r5, #0x28]
	mov     r0, r4
	bl      Function_201d78c
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2242978

.thumb
Function_2242978: @ 2242978 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	mov     r3, #0x1
	mov     r4, r1
	str     r3, [sp, #0x0]
	mov     r1, #0x0
	str     r1, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r1, #0x2
	str     r1, [sp, #0xc]
	mov     r1, #0xf
	str     r1, [sp, #0x10]
	mov     r5, r0
	mov     r1, r5
	str     r2, [sp, #0x14]
	add     r1, #0x4c
	mov     r2, r4
	bl      Function_2242918
	add     r5, #0x4c
	mov     r4, r0
	mov     r0, r5
	bl      Function_201a954
	mov     r0, r4
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x22429ae


.align 2, 0


.thumb
Function_22429b0: @ 22429b0 :thumb
	push    {r3-r6}
	mov     r5, #0x0
	mov     r6, r0
	mov     r3, r5
.thumb
branch_22429b8: @ 22429b8 :thumb
	mov     r4, r6
	add     r4, #0x9c
	str     r3, [r4, #0x0]
	mov     r4, r6
	add     r4, #0xa0
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r6, #0x8
	str     r3, [r4, #0x0]
	cmp     r5, #0x2
	blt     branch_22429b8
	mov     r5, r0
	mov     r4, r0
	add     r5, #0x9c
	add     r4, #0x8c
	str     r5, [r4, #0x0]
	mov     r4, r0
	add     r4, #0x90
	str     r1, [r4, #0x0]
	mov     r1, r0
	add     r1, #0x94
	strb    r3, [r1, #0x0]
	mov     r1, r0
	mov     r3, #0x1
	add     r1, #0x95
	strb    r3, [r1, #0x0]
	mov     r1, r0
	add     r1, #0x96
	strb    r2, [r1, #0x0]
	mov     r1, r0
	add     r1, #0x97
	ldrb    r2, [r1, #0x0]
	mov     r1, #0xf
	bic     r2, r1
	mov     r1, r0
	add     r1, #0x97
	strb    r2, [r1, #0x0]
	mov     r1, r0
	add     r1, #0x97
	ldrb    r2, [r1, #0x0]
	mov     r1, #0x30
	bic     r2, r1
	mov     r1, r0
	add     r1, #0x97
	strb    r2, [r1, #0x0]
	mov     r1, r0
	add     r1, #0x97
	ldrb    r2, [r1, #0x0]
	mov     r1, #0xc0
	add     r0, #0x97
	bic     r2, r1
	mov     r1, #0x40
	orr     r1, r2
	strb    r1, [r0, #0x0]
	pop     {r3-r6}
	bx      lr
@ 0x2242a26


.align 2, 0


.thumb
Function_2242a28: @ 2242a28 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r7, r1
	mov     r4, r5
	str     r2, [sp, #0x0]
	add     r4, #0x30
	lsl     r6, r7, #2
	ldr     r0, [r5, #0x20]
	ldr     r2, [r4, r6]
	mov     r1, r3
	bl      Function_200b1b8_CallMsgDecrypt
	lsl     r2, r7, #3
	add     r0, r5, r2
	ldr     r1, [r4, r6]
	add     r0, #0x9c
	str     r1, [r0, #0x0]
	add     r1, r5, r2
	ldr     r0, [sp, #0x0]
	add     r1, #0xa0
	str     r0, [r1, #0x0]
	pop     {r3-r7,pc}
@ 0x2242a54

.thumb
Function_2242a54: @ 2242a54 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	mov     r0, #0x1
	strb    r0, [r4, #0xf]
	mov     r1, r4
	ldr     r0, [r4, #0x48]
	add     r1, #0x5c
	bl      Function_224372c
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x5c
	mov     r2, #0x2
	bl      Function_22429b0
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	mov     r3, #0x1b
	bl      Function_2242a28
	mov     r1, #0x1
	mov     r0, r4
	mov     r2, r1
	mov     r3, #0x1c
	bl      Function_2242a28
	mov     r0, #0x62
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, #0x0
	add     r0, #0x8c
	mov     r1, #0x8
	mov     r3, r2
	bl      Function_2001b7c
	add     r4, #0x98
	str     r0, [r4, #0x0]
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2242aaa


.align 2, 0


.thumb
Function_2242aac: @ 2242aac :thumb
	push    {r3,lr}
	add     sp, #-0x8
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r3, #0x1
	str     r3, [sp, #0x4]
	ldr     r0, [r0, #0x24]
	mov     r3, #0x2
	bl      Function_200b60c
	add     sp, #0x8
	pop     {r3,pc}
@ 0x2242ac4

.thumb
Function_2242ac4: @ 2242ac4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	mov     r5, r1
	mov     r1, #0x8b
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	mov     r1, #0x0
	mov     r7, r2
	mov     r4, r3
	bl      GetAdrOfPkmnInParty
	mov     r1, #0xb3
	add     r2, sp, #0x10
	bl      GetPkmnData
	add     r1, sp, #0x30
	ldrb    r1, [r1, #0x18]
	mov     r0, r5
	bl      Function_201ada4_ClearTextBox
	mov     r0, #0xb
	mov     r1, #0x62
	bl      Function_2023790
	add     r1, sp, #0x10
	mov     r6, r0
	bl      Function_2023d28
	str     r4, [sp, #0x0]
	mov     r4, #0x0
	str     r4, [sp, #0x4]
	add     r2, sp, #0x30
	ldrb    r0, [r2, #0x10]
	ldrb    r3, [r2, #0x14]
	ldrb    r1, [r2, #0x18]
	lsl     r0, r0, #24
	lsl     r3, r3, #24
	lsr     r0, r0, #8
	lsr     r3, r3, #16
	orr     r0, r3
	orr     r0, r1
	str     r0, [sp, #0x8]
	str     r4, [sp, #0xc]
	ldrb    r1, [r2, #0x1c]
	mov     r0, r5
	mov     r2, r6
	mov     r3, r7
	bl      Function_201d78c
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	mov     r0, r5
	bl      Function_201a954
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x2242b36


.align 2, 0


.thumb
Function_2242b38: @ 2242b38 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x2c
	str     r1, [sp, #0x10]
	mov     r0, r1
	add     r1, sp, #0x30
	ldrb    r1, [r1, #0x10]
	mov     r4, r2
	mov     r6, r3
	bl      Function_201ada4_ClearTextBox
	mov     r2, #0x27
	mov     r0, #0x1
	mov     r1, #0x1a
	lsl     r2, r2, #4
	mov     r3, #0x62
	bl      LoadFromNARC_9
	str     r0, [sp, #0x24]
	mov     r0, #0xb
	mov     r1, #0x62
	bl      Function_2023790
	mov     r5, r0
	mov     r0, #0x0
	lsl     r2, r4, #24
	lsr     r3, r2, #8
	lsl     r2, r6, #24
	lsr     r2, r2, #16
	str     r0, [sp, #0x28]
	str     r0, [sp, #0x20]
	mov     r0, #0x10
	add     r1, sp, #0x30
	str     r0, [sp, #0x14]
	ldrb    r0, [r1, #0x10]
	orr     r2, r3
	orr     r0, r2
	str     r0, [sp, #0x1c]
	ldrb    r0, [r1, #0x14]
	str     r0, [sp, #0x18]
.thumb
branch_2242b86: @ 2242b86 :thumb
	mov     r4, #0x0
	mov     r6, #0x1
.thumb
branch_2242b8a: @ 2242b8a :thumb
	ldr     r0, [sp, #0x20]
	add     r7, r4, r0
	lsl     r0, r7, #24
	lsr     r0, r0, #24
	bl      0x223b5a4
	cmp     r0, #0xfe
	beq     branch_2242bce
	mov     r0, r5
	bl      Function_20237e8
	lsl     r0, r7, #24
	lsr     r0, r0, #24
	bl      0x223b5a4
	mov     r1, r0
	ldr     r0, [sp, #0x24]
	mov     r2, r5
	bl      Function_200b1b8_CallMsgDecrypt
	ldr     r0, [sp, #0x14]
	ldr     r1, [sp, #0x18]
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x1c]
	mov     r2, r5
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	mov     r3, r6
	bl      Function_201d78c
.thumb
branch_2242bce: @ 2242bce :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r6, #0x40
	cmp     r4, #0x4
	blt     branch_2242b8a
	ldr     r0, [sp, #0x20]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x14]
	add     r0, #0x24
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x28]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x28]
	cmp     r0, #0x5
	blt     branch_2242b86
	mov     r0, r5
	bl      Function_20237bc_FreeMsg
	ldr     r0, [sp, #0x24]
	bl      Function_200b190
	ldr     r0, [sp, #0x10]
	bl      Function_201a954
	add     sp, #0x2c
	pop     {r4-r7,pc}
@ 0x2242c02


.align 2, 0


.thumb
Function_2242c04: @ 2242c04 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r1
	str     r4, [sp, #0x0]
	str     r3, [sp, #0x4]
	ldr     r1, [sp, #0x18]
	add     r0, #0xb0
	str     r1, [sp, #0x8]
	mov     r1, r2
	ldr     r0, [r0, #0x0]
	mov     r2, #0x2
	mov     r3, #0x0
	bl      Function_200c5bc
	mov     r0, r4
	bl      Function_201a9a4
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2242c2a


.align 2, 0


.thumb
Function_2242c2c: @ 2242c2c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r6, r0
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	str     r0, [sp, #0xc]
	mov     r0, #0x4
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
.thumb
branch_2242c3e: @ 2242c3e :thumb
	mov     r4, #0x0
	mov     r5, #0x12
.thumb
branch_2242c42: @ 2242c42 :thumb
	ldr     r0, [sp, #0xc]
	add     r7, r4, r0
	lsl     r0, r7, #24
	lsr     r0, r0, #24
	bl      0x223b5a4
	cmp     r0, #0xfe
	beq     branch_2242c82
	cmp     r0, #0x9
	beq     branch_2242c82
	lsl     r0, r7, #24
	lsr     r0, r0, #24
	bl      Function_2243090
	mov     r1, #0x23
	lsl     r1, r1, #4
	ldr     r1, [r6, r1]
	bl      Function_20301e0
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r0, r0, #24
	lsr     r2, r0, #24
	cmp     r2, #0xa
	bls     branch_2242c74
	mov     r2, #0xa
.thumb
branch_2242c74: @ 2242c74 :thumb
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x4]
	str     r0, [sp, #0x0]
	mov     r0, r6
	mov     r3, r5
	bl      Function_2242c04
.thumb
branch_2242c82: @ 2242c82 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x40
	cmp     r4, #0x4
	blt     branch_2242c42
	ldr     r0, [sp, #0xc]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x8]
	add     r0, #0x24
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x10]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x10]
	cmp     r0, #0x5
	blt     branch_2242c3e
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2242ca4

.thumb
Function_2242ca4: @ 2242ca4 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x62
	mov     r1, #0x30
	bl      malloc
	mov     r1, r4
	add     r1, #0xbc
	str     r0, [r1, #0x0]
	mov     r0, r4
	add     r0, #0xbc
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	mov     r2, #0x30
	blx     Call_FillMemWithValue
	mov     r0, #0x8b
	mov     r1, r4
	lsl     r0, r0, #2
	add     r1, #0xbc
	ldr     r2, [r4, r0]
	ldr     r1, [r1, #0x0]
	str     r2, [r1, #0x0]
	mov     r2, r4
	add     r2, #0xbc
	ldr     r2, [r2, #0x0]
	mov     r1, #0x1
	strb    r1, [r2, #0x11]
	mov     r2, r4
	add     r2, #0xb4
	ldr     r3, [r2, #0x0]
	mov     r2, r4
	add     r2, #0xbc
	ldr     r2, [r2, #0x0]
	str     r3, [r2, #0x4]
	mov     r2, r4
	add     r2, #0xbc
	ldr     r2, [r2, #0x0]
	strb    r1, [r2, #0x12]
	ldr     r0, [r4, r0]
	bl      GetNrOfPkmnInParty
	mov     r1, r4
	add     r1, #0xbc
	ldr     r1, [r1, #0x0]
	strb    r0, [r1, #0x13]
	mov     r0, r4
	add     r0, #0xbc
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	strb    r1, [r0, #0x14]
	mov     r0, r4
	add     r0, #0xbc
	ldr     r0, [r0, #0x0]
	strh    r1, [r0, #0x18]
	mov     r0, r4
	add     r0, #0xb8
	ldr     r0, [r0, #0x0]
	bl      Function_207a274
	mov     r1, r4
	add     r1, #0xbc
	ldr     r1, [r1, #0x0]
	str     r0, [r1, #0x1c]
	mov     r0, r4
	add     r0, #0xb8
	ldr     r0, [r0, #0x0]
	bl      Function_208c324
	mov     r1, r4
	add     r1, #0xbc
	ldr     r1, [r1, #0x0]
	str     r0, [r1, #0x2c]
	mov     r0, r4
	add     r0, #0xbc
	ldr     r0, [r0, #0x0]
	ldr     r1, [pc, #0x18] @ 0x2242d58, (=Unknown_2243798)
	bl      Function_208d720
	mov     r0, r4
	add     r0, #0xb8
	ldr     r0, [r0, #0x0]
	bl      LoadTrainerDataAdress
	add     r4, #0xbc
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_208e9c0
	pop     {r4,pc}
@ 0x2242d58

.word Unknown_2243798 @ 0x2242d58



.thumb
Function_2242d5c: @ 2242d5c :thumb
	mov     r3, #0x0
	strb    r3, [r0, #0x8]
	str     r2, [r1, #0x0]
	bx      lr
@ 0x2242d64


.thumb
Function_2242d64: @ 2242d64 :thumb
	push    {r3-r5,lr}
	ldr     r1, [pc, #0x1b4] @ 0x2242f1c, (=0x21bf67c)
	mov     r4, r0
	ldr     r2, [r1, #0x48]
	mov     r1, #0x20
	mov     r0, #0x0
	tst     r1, r2
	beq     branch_2242dae
	ldrb    r0, [r4, #0xd]
	bl      0x223b5a4
	cmp     r0, #0xfe
	beq     branch_2242d82
	ldrb    r0, [r4, #0xd]
	strb    r0, [r4, #0xc]
.thumb
branch_2242d82: @ 2242d82 :thumb
	ldrb    r0, [r4, #0xd]
	mov     r1, #0x1e
	lsr     r3, r0, #31
	lsl     r2, r0, #30
	sub     r2, r2, r3
	ror     r2, r1
	add     r1, r3, r2
	bne     branch_2242d98
	.hword  0x1cc0 @ add r0, r0, #0x3
	strb    r0, [r4, #0xd]
	b       branch_2242dac
@ 0x2242d98

.thumb
branch_2242d98: @ 2242d98 :thumb
	bl      0x223b5a4
	cmp     r0, #0xfe
	bne     branch_2242da6
	mov     r0, #0x10
	strb    r0, [r4, #0xd]
	b       branch_2242dac
@ 0x2242da6

.thumb
branch_2242da6: @ 2242da6 :thumb
	ldrb    r0, [r4, #0xd]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0xd]
.thumb
branch_2242dac: @ 2242dac :thumb
	mov     r0, #0x1
.thumb
branch_2242dae: @ 2242dae :thumb
	ldr     r1, [pc, #0x16c] @ 0x2242f1c, (=0x21bf67c)
	ldr     r2, [r1, #0x48]
	mov     r1, #0x10
	tst     r1, r2
	beq     branch_2242df4
	ldrb    r0, [r4, #0xd]
	bl      0x223b5a4
	cmp     r0, #0xfe
	beq     branch_2242dc6
	ldrb    r0, [r4, #0xd]
	strb    r0, [r4, #0xc]
.thumb
branch_2242dc6: @ 2242dc6 :thumb
	ldrb    r0, [r4, #0xd]
	mov     r1, #0x1e
	lsr     r3, r0, #31
	lsl     r2, r0, #30
	sub     r2, r2, r3
	ror     r2, r1
	add     r1, r3, r2
	cmp     r1, #0x3
	bne     branch_2242dde
	.hword  0x1ec0 @ sub r0, r0, #0x3
	strb    r0, [r4, #0xd]
	b       branch_2242df2
@ 0x2242dde

.thumb
branch_2242dde: @ 2242dde :thumb
	bl      0x223b5a4
	cmp     r0, #0xfe
	bne     branch_2242dec
	mov     r0, #0x13
	strb    r0, [r4, #0xd]
	b       branch_2242df2
@ 0x2242dec

.thumb
branch_2242dec: @ 2242dec :thumb
	ldrb    r0, [r4, #0xd]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0xd]
.thumb
branch_2242df2: @ 2242df2 :thumb
	mov     r0, #0x1
.thumb
branch_2242df4: @ 2242df4 :thumb
	ldr     r1, [pc, #0x124] @ 0x2242f1c, (=0x21bf67c)
	ldr     r2, [r1, #0x48]
	mov     r1, #0x40
	tst     r1, r2
	beq     branch_2242e5a
	ldrb    r0, [r4, #0xd]
	bl      0x223b5a4
	cmp     r0, #0xfe
	beq     branch_2242e0c
	ldrb    r0, [r4, #0xd]
	strb    r0, [r4, #0xc]
.thumb
branch_2242e0c: @ 2242e0c :thumb
	ldrb    r0, [r4, #0xd]
	cmp     r0, #0x4
	bcs     branch_2242e18
	add     r0, #0x10
	strb    r0, [r4, #0xd]
	b       branch_2242e58
@ 0x2242e18

.thumb
branch_2242e18: @ 2242e18 :thumb
	bl      0x223b5a4
	cmp     r0, #0xfe
	bne     branch_2242e52
	ldrb    r0, [r4, #0xc]
	cmp     r0, #0x10
	bne     branch_2242e2c
	mov     r0, #0xd
	strb    r0, [r4, #0xd]
	b       branch_2242e58
@ 0x2242e2c

.thumb
branch_2242e2c: @ 2242e2c :thumb
	cmp     r0, #0x13
	bne     branch_2242e36
	mov     r0, #0xe
	strb    r0, [r4, #0xd]
	b       branch_2242e58
@ 0x2242e36

.thumb
branch_2242e36: @ 2242e36 :thumb
	cmp     r0, #0xd
	beq     branch_2242e3e
	cmp     r0, #0x1
	bne     branch_2242e44
.thumb
branch_2242e3e: @ 2242e3e :thumb
	mov     r0, #0xd
	strb    r0, [r4, #0xd]
	b       branch_2242e58
@ 0x2242e44

.thumb
branch_2242e44: @ 2242e44 :thumb
	cmp     r0, #0xe
	beq     branch_2242e4c
	cmp     r0, #0x2
	bne     branch_2242e58
.thumb
branch_2242e4c: @ 2242e4c :thumb
	mov     r0, #0xe
	strb    r0, [r4, #0xd]
	b       branch_2242e58
@ 0x2242e52

.thumb
branch_2242e52: @ 2242e52 :thumb
	ldrb    r0, [r4, #0xd]
	.hword  0x1f00 @ sub r0, r0, #0x4
	strb    r0, [r4, #0xd]
.thumb
branch_2242e58: @ 2242e58 :thumb
	mov     r0, #0x1
.thumb
branch_2242e5a: @ 2242e5a :thumb
	ldr     r1, [pc, #0xc0] @ 0x2242f1c, (=0x21bf67c)
	ldr     r2, [r1, #0x48]
	mov     r1, #0x80
	tst     r1, r2
	beq     branch_2242ec0
	ldrb    r0, [r4, #0xd]
	bl      0x223b5a4
	cmp     r0, #0xfe
	beq     branch_2242e72
	ldrb    r0, [r4, #0xd]
	strb    r0, [r4, #0xc]
.thumb
branch_2242e72: @ 2242e72 :thumb
	ldrb    r0, [r4, #0xd]
	cmp     r0, #0x10
	bcc     branch_2242e7e
	sub     r0, #0x10
	strb    r0, [r4, #0xd]
	b       branch_2242ebe
@ 0x2242e7e

.thumb
branch_2242e7e: @ 2242e7e :thumb
	bl      0x223b5a4
	cmp     r0, #0xfe
	bne     branch_2242eb8
	ldrb    r0, [r4, #0xc]
	cmp     r0, #0x10
	bne     branch_2242e92
	mov     r0, #0x1
	strb    r0, [r4, #0xd]
	b       branch_2242ebe
@ 0x2242e92

.thumb
branch_2242e92: @ 2242e92 :thumb
	cmp     r0, #0x13
	bne     branch_2242e9c
	mov     r0, #0x2
	strb    r0, [r4, #0xd]
	b       branch_2242ebe
@ 0x2242e9c

.thumb
branch_2242e9c: @ 2242e9c :thumb
	cmp     r0, #0xd
	beq     branch_2242ea4
	cmp     r0, #0x1
	bne     branch_2242eaa
.thumb
branch_2242ea4: @ 2242ea4 :thumb
	mov     r0, #0x1
	strb    r0, [r4, #0xd]
	b       branch_2242ebe
@ 0x2242eaa

.thumb
branch_2242eaa: @ 2242eaa :thumb
	cmp     r0, #0xe
	beq     branch_2242eb2
	cmp     r0, #0x2
	bne     branch_2242ebe
.thumb
branch_2242eb2: @ 2242eb2 :thumb
	mov     r0, #0x2
	strb    r0, [r4, #0xd]
	b       branch_2242ebe
@ 0x2242eb8

.thumb
branch_2242eb8: @ 2242eb8 :thumb
	ldrb    r0, [r4, #0xd]
	.hword  0x1d00 @ add r0, r0, #0x4
	strb    r0, [r4, #0xd]
.thumb
branch_2242ebe: @ 2242ebe :thumb
	mov     r0, #0x1
.thumb
branch_2242ec0: @ 2242ec0 :thumb
	cmp     r0, #0x1
	bne     branch_2242ee6
	ldr     r0, [pc, #0x58] @ 0x2242f20, (=0x5dc)
	bl      Function_2005748
	mov     r0, r4
	bl      Function_2242f24
	mov     r5, r0
	mov     r0, r4
	bl      Function_2242f3c
	mov     r2, r0
	mov     r0, #0x87
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, r5
	bl      Function_2243670
.thumb
branch_2242ee6: @ 2242ee6 :thumb
	ldrb    r0, [r4, #0xd]
	bl      0x223b5a4
	cmp     r0, #0xfe
	bne     branch_2242f0c
	mov     r0, #0x87
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x2
	bl      Function_22436b0
	mov     r0, #0x87
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x80
	mov     r2, #0xa8
	bl      Function_2243670
	pop     {r3-r5,pc}
@ 0x2242f0c

.thumb
branch_2242f0c: @ 2242f0c :thumb
	mov     r0, #0x87
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_22436b0
	pop     {r3-r5,pc}
@ 0x2242f1a


.align 2


.word 0x21bf67c @ 0x2242f1c
.word 0x5dc @ 0x2242f20
.thumb
Function_2242f24: @ 2242f24 :thumb
	ldrb    r0, [r0, #0xd]
	lsr     r2, r0, #31
	lsl     r1, r0, #30
	sub     r1, r1, r2
	mov     r0, #0x1e
	ror     r1, r0
	add     r0, r2, r1
	lsl     r0, r0, #6
	add     r0, #0x20
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bx      lr
@ 0x2242f3c

.thumb
Function_2242f3c: @ 2242f3c :thumb
	ldrb    r0, [r0, #0xd]
	lsr     r1, r0, #2
	mov     r0, #0x24
	mul     r0, r1
	add     r0, #0x10
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bx      lr
@ 0x2242f4c

.thumb
Function_2242f4c: @ 2242f4c :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r5, r1
	bl      Function_22430b0
	cmp     r0, #0x1
	bne     branch_2242f72
	mov     r4, #0x0
	mov     r6, #0x3
.thumb
branch_2242f5e: @ 2242f5e :thumb
	lsl     r1, r4, #24
	mov     r0, r5
	lsr     r1, r1, #24
	mov     r2, r6
	bl      Function_2242fac
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x11
	blt     branch_2242f5e
	b       branch_2242fa2
@ 0x2242f72

.thumb
branch_2242f72: @ 2242f72 :thumb
	mov     r7, #0x23
	mov     r4, #0x0
	lsl     r7, r7, #4
.thumb
branch_2242f78: @ 2242f78 :thumb
	lsl     r0, r4, #24
	ldr     r1, [r6, r7]
	lsr     r0, r0, #24
	bl      Function_20301e0
	cmp     r0, #0xa
	bcc     branch_2242f92
	lsl     r1, r4, #24
	mov     r0, r5
	lsr     r1, r1, #24
	mov     r2, #0x3
	bl      Function_2242fac
.thumb
branch_2242f92: @ 2242f92 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x11
	blt     branch_2242f78
	mov     r0, r5
	mov     r1, #0x13
	mov     r2, #0x3
	bl      Function_2242fac
.thumb
branch_2242fa2: @ 2242fa2 :thumb
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_201c3c0
	pop     {r3-r7,pc}
@ 0x2242fac

.thumb
Function_2242fac: @ 2242fac :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r7, r0
	mov     r4, r1
	mov     r5, r2
	bne     branch_2242fbc
	mov     r1, #0x0
	b       branch_2242fce
@ 0x2242fbc

.thumb
branch_2242fbc: @ 2242fbc :thumb
	cmp     r5, #0x1
	bne     branch_2242fc4
	mov     r1, #0x5
	b       branch_2242fce
@ 0x2242fc4

.thumb
branch_2242fc4: @ 2242fc4 :thumb
	cmp     r5, #0x2
	bne     branch_2242fcc
	mov     r1, #0x4
	b       branch_2242fce
@ 0x2242fcc

.thumb
branch_2242fcc: @ 2242fcc :thumb
	mov     r1, #0x3
.thumb
branch_2242fce: @ 2242fce :thumb
	lsr     r3, r4, #31
	lsl     r2, r4, #30
	sub     r2, r2, r3
	mov     r0, #0x1e
	ror     r2, r0
	add     r0, r3, r2
	lsl     r0, r0, #3
	str     r0, [sp, #0xc]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	lsl     r2, r4, #29
	mov     r12, r0
	sub     r2, r2, r3
	mov     r0, #0x1d
	ror     r2, r0
	add     r6, r3, r2
	cmp     r6, #0x4
	bge     branch_2242ff6
	mov     r2, #0x5
	b       branch_2242ff8
@ 0x2242ff6

.thumb
branch_2242ff6: @ 2242ff6 :thumb
	mov     r2, #0x4
.thumb
branch_2242ff8: @ 2242ff8 :thumb
	cmp     r4, #0x4
	bcs     branch_2243000
	mov     r3, #0x0
	b       branch_224301a
@ 0x2243000

.thumb
branch_2243000: @ 2243000 :thumb
	cmp     r4, #0x8
	bcs     branch_2243008
	mov     r3, #0x5
	b       branch_224301a
@ 0x2243008

.thumb
branch_2243008: @ 2243008 :thumb
	cmp     r4, #0xc
	bcs     branch_2243010
	mov     r3, #0x9
	b       branch_224301a
@ 0x2243010

.thumb
branch_2243010: @ 2243010 :thumb
	cmp     r4, #0x10
	bcs     branch_2243018
	mov     r3, #0xe
	b       branch_224301a
@ 0x2243018

.thumb
branch_2243018: @ 2243018 :thumb
	mov     r3, #0x12
.thumb
branch_224301a: @ 224301a :thumb
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	str     r2, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r0, r7
	mov     r1, #0x3
	mov     r2, r12
	bl      Function_2019e2c
	cmp     r5, #0x0
	bne     branch_224308c
	ldr     r0, [sp, #0xc]
	lsl     r0, r0, #24
	lsr     r2, r0, #24
	cmp     r6, #0x4
	bge     branch_224303e
	mov     r1, #0x2
	b       branch_2243040
@ 0x224303e

.thumb
branch_224303e: @ 224303e :thumb
	mov     r1, #0x3
.thumb
branch_2243040: @ 2243040 :thumb
	cmp     r4, #0x4
	bcs     branch_2243048
	mov     r3, #0x2
	b       branch_2243062
@ 0x2243048

.thumb
branch_2243048: @ 2243048 :thumb
	cmp     r4, #0x8
	bcs     branch_2243050
	mov     r3, #0x6
	b       branch_2243062
@ 0x2243050

.thumb
branch_2243050: @ 2243050 :thumb
	cmp     r4, #0xc
	bcs     branch_2243058
	mov     r3, #0xb
	b       branch_2243062
@ 0x2243058

.thumb
branch_2243058: @ 2243058 :thumb
	cmp     r4, #0x10
	bcs     branch_2243060
	mov     r3, #0xf
	b       branch_2243062
@ 0x2243060

.thumb
branch_2243060: @ 2243060 :thumb
	mov     r3, #0x14
.thumb
branch_2243062: @ 2243062 :thumb
	cmp     r4, #0x9
	bcs     branch_224307a
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, r7
	mov     r1, #0x3
	bl      Function_2019e2c
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x224307a

.thumb
branch_224307a: @ 224307a :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, r7
	mov     r1, #0x3
	bl      Function_2019e2c
.thumb
branch_224308c: @ 224308c :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2243090

.thumb
Function_2243090: @ 2243090 :thumb
	cmp     r0, #0x11
	bcc     branch_2243096
	mov     r0, #0x11
.thumb
branch_2243096: @ 2243096 :thumb
	bx      lr
@ 0x2243098

.thumb
Function_2243098: @ 2243098 :thumb
	ldrb    r1, [r0, #0x9]
	cmp     r1, #0x0
	bne     branch_22430ac
	ldrh    r0, [r0, #0x1c]
	cmp     r0, #0x32
	beq     branch_22430a8
	cmp     r0, #0xaa
	bne     branch_22430ac
.thumb
branch_22430a8: @ 22430a8 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x22430ac

.thumb
branch_22430ac: @ 22430ac :thumb
	mov     r0, #0x0
	bx      lr
@ 0x22430b0

.thumb
Function_22430b0: @ 22430b0 :thumb
	ldrb    r0, [r0, #0x1e]
	bx      lr
@ 0x22430b4

.thumb
Function_22430b4: @ 22430b4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldrb    r0, [r5, #0x9]
	mov     r4, r1
	mov     r7, r2
	bl      0x223b5b0
	cmp     r0, #0x0
	bne     branch_22430ca
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22430ca

.thumb
branch_22430ca: @ 22430ca :thumb
	cmp     r4, #0x4
	beq     branch_22430d8
	cmp     r4, #0x5
	beq     branch_22430e4
	cmp     r4, #0x6
	beq     branch_22430f2
	b       branch_22430fe
@ 0x22430d8

.thumb
branch_22430d8: @ 22430d8 :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r6, #0x27
	bl      Function_2243118
	b       branch_22430fe
@ 0x22430e4

.thumb
branch_22430e4: @ 22430e4 :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, r7
	mov     r6, #0x28
	bl      Function_224313c
	b       branch_22430fe
@ 0x22430f2

.thumb
branch_22430f2: @ 22430f2 :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, r7
	mov     r6, #0x29
	bl      Function_22431d4
.thumb
branch_22430fe: @ 22430fe :thumb
	mov     r1, #0x8f
	lsl     r1, r1, #2
	mov     r0, r6
	add     r1, r5, r1
	mov     r2, #0x2c
	bl      Function_20359dc
	cmp     r0, #0x1
	bne     branch_2243114
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2243114

.thumb
branch_2243114: @ 2243114 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2243118

.thumb
Function_2243118: @ 2243118 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0xb8
	ldr     r0, [r0, #0x0]
	mov     r4, r1
	bl      LoadTrainerDataAdress
	mov     r0, #0x8f
	lsl     r0, r0, #2
	strh    r4, [r5, r0]
	pop     {r3-r5,pc}
@ 0x224312e


.align 2, 0
.thumb
.globl Function_106_2243130
Function_106_2243130: @ 2243130 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_203608c
	cmp     r4, r0
	pop     {r4,pc}
@ 0x224313c


.thumb
Function_224313c: @ 224313c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x8f
	lsl     r0, r0, #2
	strh    r1, [r5, r0]
	mov     r4, r2
	.hword  0x1c80 @ add r0, r0, #0x2
	strh    r4, [r5, r0]
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_224315c
	ldrb    r0, [r5, #0x18]
	cmp     r0, #0xff
	bne     branch_224315c
	strb    r4, [r5, #0x18]
.thumb
branch_224315c: @ 224315c :thumb
	ldrb    r1, [r5, #0x18]
	mov     r0, #0x9
	lsl     r0, r0, #6
	strh    r1, [r5, r0]
	sub     r0, #0x14
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      GetAdrOfPkmnInParty
	mov     r1, #0xa1
	mov     r2, #0x0
	bl      GetPkmnData
	ldr     r1, [pc, #0x4] @ 0x224317c, (=0x242)
	strh    r0, [r5, r1]
	pop     {r3-r5,pc}
@ 0x224317c

.word 0x242 @ 0x224317c



.thumb
.globl Function_106_2243180
Function_106_2243180: @ 2243180 :thumb
	push    {r4-r6,lr}
	mov     r4, r3
	mov     r6, r0
	ldrb    r0, [r4, #0x16]
	mov     r5, r2
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x16]
	bl      Function_203608c
	cmp     r6, r0
	beq     branch_22431d0
	ldrh    r1, [r5, #0x2]
	mov     r0, #0xa5
	lsl     r0, r0, #2
	strb    r1, [r4, r0]
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_22431c2
	ldrb    r0, [r4, #0x18]
	cmp     r0, #0xff
	beq     branch_22431b6
	mov     r0, #0xa5
	mov     r1, #0x0
	lsl     r0, r0, #2
	strb    r1, [r4, r0]
	b       branch_22431c6
@ 0x22431b6

.thumb
branch_22431b6: @ 22431b6 :thumb
	mov     r0, #0xa5
	lsl     r0, r0, #2
	ldrb    r0, [r4, r0]
	add     r0, #0x14
	strb    r0, [r4, #0x18]
	b       branch_22431c6
@ 0x22431c2

.thumb
branch_22431c2: @ 22431c2 :thumb
	ldrh    r0, [r5, #0x4]
	strb    r0, [r4, #0x18]
.thumb
branch_22431c6: @ 22431c6 :thumb
	mov     r0, #0x8d
	lsl     r0, r0, #2
	ldrh    r1, [r5, #0x6]
	ldr     r0, [r4, r0]
	strh    r1, [r0, #0x0]
.thumb
branch_22431d0: @ 22431d0 :thumb
	pop     {r4-r6,pc}
@ 0x22431d2


.align 2, 0


.thumb
Function_22431d4: @ 22431d4 :thumb
	mov     r3, #0x8f
	lsl     r3, r3, #2
	strh    r1, [r0, r3]
	add     r1, r3, #0x2
	strh    r2, [r0, r1]
	bx      lr
@ 0x22431e0


.thumb
.globl Function_106_22431e0
Function_106_22431e0: @ 22431e0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r2
	mov     r6, r3
	bl      Function_203608c
	cmp     r5, r0
	beq     branch_22431fa
	ldrh    r1, [r4, #0x2]
	cmp     r1, #0x0
	beq     branch_22431fa
	ldr     r0, [pc, #0x4] @ 0x22431fc, (=0x295)
	strb    r1, [r6, r0]
.thumb
branch_22431fa: @ 22431fa :thumb
	pop     {r4-r6,pc}
@ 0x22431fc

.word 0x295 @ 0x22431fc
.thumb
Function_2243200: @ 2243200 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0xf]
	cmp     r0, #0x1
	bne     branch_2243222
	mov     r1, #0x0
	mov     r0, r4
	strb    r1, [r4, #0xf]
	add     r0, #0x98
	ldr     r0, [r0, #0x0]
	bl      Function_2001bc4
	add     r4, #0x90
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	bl      Function_200dc9c
.thumb
branch_2243222: @ 2243222 :thumb
	pop     {r4,pc}
@ 0x2243224

.thumb
Function_2243224: @ 2243224 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x22
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2243664
	mov     r0, r4
	add     r0, #0xb4
	ldr     r0, [r0, #0x0]
	bl      Function_2027b50
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x4c
	bl      Function_2243758
	ldrb    r0, [r4, #0xd]
	bl      0x223b5a4
	mov     r2, r0
	ldr     r0, [r4, #0x24]
	mov     r1, #0x0
	bl      Function_200b7ec
	ldrb    r0, [r4, #0xd]
	bl      Function_2243090
	mov     r1, #0x23
	lsl     r1, r1, #4
	ldr     r1, [r4, r1]
	bl      Function_20301e0
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r0, r0, #24
	lsr     r2, r0, #24
	cmp     r2, #0xa
	bls     branch_2243274
	mov     r2, #0xa
.thumb
branch_2243274: @ 2243274 :thumb
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2242aac
	mov     r0, r4
	bl      Function_22430b0
	cmp     r0, #0x1
	bne     branch_224328a
	mov     r1, #0x1f
	b       branch_224328c
@ 0x224328a

.thumb
branch_224328a: @ 224328a :thumb
	mov     r1, #0x18
.thumb
branch_224328c: @ 224328c :thumb
	mov     r0, r4
	mov     r2, #0x1
	bl      Function_2242978
	strb    r0, [r4, #0xa]
	mov     r0, #0x87
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_22436b0
	mov     r0, r4
	bl      Function_2242a54
	pop     {r4,pc}
@ 0x22432aa


.align 2, 0


.thumb
Function_22432ac: @ 22432ac :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_22432d4
	ldrb    r1, [r4, #0xd]
	ldr     r0, [r4, #0x48]
	mov     r2, #0x0
	bl      Function_2242fac
	ldr     r0, [r4, #0x48]
	mov     r1, #0x3
	bl      Function_201c3c0
	mov     r0, #0x87
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_22436b0
	pop     {r4,pc}
@ 0x22432d4

.thumb
Function_22432d4: @ 22432d4 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r4, r0
	mov     r0, #0x22
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_2243664
	mov     r0, r4
	add     r0, #0x4c
	mov     r1, #0x0
	bl      Function_200e084
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r2, #0x0
	mov     r0, r4
	add     r4, #0x6c
	str     r2, [sp, #0x8]
	mov     r1, r4
	mov     r3, r2
	str     r2, [sp, #0xc]
	bl      Function_2242ac4
	add     sp, #0x10
	pop     {r4,pc}
@ 0x224330e


.align 2, 0


.thumb
Function_2243310: @ 2243310 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0
	str     r1, [sp, #0x14]
	bl      Function_22435c8
	blx     Function_20a7944
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x80
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r3, #0x20
	str     r3, [sp, #0xc]
	mov     r2, #0x62
	str     r2, [sp, #0x10]
	mov     r2, r0
	bl      Function_200a784
	mov     r0, #0x2
	add     r1, r5, #0x4
	mov     r2, #0x62
	bl      Function_20095c4
	ldr     r4, [pc, #0x174] @ 0x22434b8, (=0x224384c)
	str     r0, [r5, #0x0]
	mov     r7, #0x0
	mov     r6, r5
.thumb
branch_224334a: @ 224334a :thumb
	ldrb    r0, [r4, #0x0]
	mov     r1, r7
	mov     r2, #0x62
	bl      Function_2009714
	mov     r1, #0x4b
	lsl     r1, r1, #2
	str     r0, [r6, r1]
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r7, #0x4
	blt     branch_224334a
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r3, #0x1
	str     r3, [sp, #0x4]
	mov     r0, #0x62
	str     r0, [sp, #0x8]
	add     r0, #0xca
	ldr     r0, [r5, r0]
	mov     r1, #0x97
	mov     r2, #0xc
	bl      Function_200985c
	mov     r1, #0x4f
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x62
	str     r0, [sp, #0xc]
	add     r0, #0xce
	ldr     r0, [r5, r0]
	mov     r1, #0x97
	mov     r2, #0x26
	bl      Function_20098b8
	mov     r1, #0x5
	lsl     r1, r1, #6
	str     r0, [r5, r1]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x62
	str     r0, [sp, #0x8]
	add     r0, #0xd2
	ldr     r0, [r5, r0]
	mov     r1, #0x97
	mov     r2, #0xe
	mov     r3, #0x1
	bl      Function_2009918
	mov     r1, #0x51
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x62
	str     r0, [sp, #0x8]
	add     r0, #0xd6
	ldr     r0, [r5, r0]
	mov     r1, #0x97
	mov     r2, #0xd
	mov     r3, #0x1
	bl      Function_2009918
	mov     r1, #0x52
	lsl     r1, r1, #2
	str     r0, [r5, r1]

	mov     r0, #PlPokeIcon_Narc
	mov     r1, #0x62
	bl      LoadFromNARC_8
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x14]
	bl      Function_2079d80
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x62
	str     r0, [sp, #0x8]
	add     r0, #0xca
	ldr     r0, [r5, r0]
	ldr     r1, [sp, #0x18]
	mov     r3, #0x0
	bl      Function_2009a4c
	mov     r1, #0x53
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	bl      Function_2079fd0
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x3
	str     r0, [sp, #0x8]
	mov     r0, #0x62
	str     r0, [sp, #0xc]
	add     r0, #0xce
	ldr     r0, [r5, r0]
	mov     r1, #0x13
	mov     r3, #0x0
	bl      Function_20098b8
	mov     r1, #0x15
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	bl      Function_2079fd8
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x62
	str     r0, [sp, #0x8]
	add     r0, #0xd2
	ldr     r0, [r5, r0]
	ldr     r1, [sp, #0x18]
	mov     r3, #0x0
	bl      Function_2009bc4
	mov     r1, #0x55
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	bl      Function_2079fe4
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x62
	str     r0, [sp, #0x8]
	add     r0, #0xd6
	ldr     r0, [r5, r0]
	ldr     r1, [sp, #0x18]
	mov     r3, #0x0
	bl      Function_2009bc4
	mov     r1, #0x56
	lsl     r1, r1, #2
	mov     r7, r1
	mov     r6, r1
	str     r0, [r5, r1]
	mov     r4, #0x0
	sub     r7, #0x1c
	sub     r6, #0x18
.thumb
branch_2243488: @ 2243488 :thumb
	ldr     r0, [r5, r7]
	bl      Function_200a328
	ldr     r0, [r5, r6]
	bl      Function_200a5c8
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x2
	blt     branch_2243488
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff74
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	ldr     r0, [sp, #0x18]
	bl      Call_FS_CloseFile
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x22434b6


.align 2


.word 0x224384c @ 0x22434b8
.thumb
Function_22434bc: @ 22434bc :thumb
	push    {r4-r6,lr}
	add     sp, #-0x80
	mov     r5, r0
	mov     r0, #0x0
	str     r1, [sp, #0x0]
	mvn     r0, r0
	str     r0, [sp, #0x4]
	mov     r4, r3
	str     r0, [sp, #0x8]
	mov     r3, #0x0
	str     r3, [sp, #0xc]
	mov     r0, #0x1
	str     r0, [sp, #0x10]
	mov     r0, #0x4b
	lsl     r0, r0, #2
	mov     r6, r2
	ldr     r2, [r5, r0]
	str     r2, [sp, #0x14]
	add     r2, r0, #0x4
	ldr     r2, [r5, r2]
	str     r2, [sp, #0x18]
	mov     r2, r0
	add     r2, #0x8
	ldr     r2, [r5, r2]
	add     r0, #0xc
	str     r2, [sp, #0x1c]
	ldr     r0, [r5, r0]
	mov     r2, r1
	str     r0, [sp, #0x20]
	str     r3, [sp, #0x24]
	str     r3, [sp, #0x28]
	add     r0, sp, #0x5c
	mov     r3, r1
	bl      Function_20093b4
	ldr     r0, [r5, #0x0]
	mov     r1, #0x0
	str     r0, [sp, #0x2c]
	add     r0, sp, #0x5c
	str     r0, [sp, #0x30]
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r1, [sp, #0x34]
	str     r1, [sp, #0x38]
	str     r1, [sp, #0x3c]
	str     r0, [sp, #0x40]
	str     r0, [sp, #0x44]
	str     r0, [sp, #0x48]
	add     r0, sp, #0x2c
	strh    r1, [r0, #0x20]
	str     r4, [sp, #0x50]
	add     r0, sp, #0x80
	ldrb    r0, [r0, #0x10]
	cmp     r0, #0x0
	bne     branch_2243530
	mov     r0, #0x1
	str     r0, [sp, #0x54]
	b       branch_2243534
@ 0x2243530

.thumb
branch_2243530: @ 2243530 :thumb
	mov     r0, #0x2
	str     r0, [sp, #0x54]
.thumb
branch_2243534: @ 2243534 :thumb
	mov     r0, #0x62
	str     r0, [sp, #0x58]
	add     r0, sp, #0x80
	ldrb    r0, [r0, #0x10]
	cmp     r0, #0x1
	bne     branch_224354a
	mov     r0, #0x3
	ldr     r1, [sp, #0x38]
	lsl     r0, r0, #18
	add     r0, r1, r0
	str     r0, [sp, #0x38]
.thumb
branch_224354a: @ 224354a :thumb
	add     r0, sp, #0x2c
	bl      Function_2021aa0
	mov     r1, #0x1
	mov     r4, r0
	bl      Function_2021cc8
	mov     r1, #0x1
	mov     r0, r4
	lsl     r1, r1, #12
	bl      Function_2021ce4
	mov     r0, r4
	mov     r1, r6
	bl      Function_2021d6c
	mov     r0, r4
	add     sp, #0x80
	pop     {r4-r6,pc}
@ 0x2243570

.thumb
Function_2243570: @ 2243570 :thumb
	push    {r3-r7,lr}
	mov     r7, #0x5
	mov     r5, r0
	mov     r4, #0x0
	lsl     r7, r7, #6
.thumb
branch_224357a: @ 224357a :thumb
	lsl     r0, r4, #4
	add     r6, r5, r0
	mov     r0, #0x4f
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	bl      Function_200a4e4
	ldr     r0, [r6, r7]
	bl      Function_200a6dc
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0x2
	bcc     branch_224357a
	mov     r6, #0x4b
	mov     r4, #0x0
	lsl     r6, r6, #2
.thumb
branch_224359e: @ 224359e :thumb
	lsl     r0, r4, #2
	add     r0, r5, r0
	ldr     r0, [r0, r6]
	bl      Function_2009754
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0x4
	bcc     branch_224359e
	ldr     r0, [r5, #0x0]
	bl      Function_2021964
	bl      Function_200a878
	bl      Function_201e958
	bl      Function_201f8b4
	pop     {r3-r7,pc}
@ 0x22435c6


.align 2, 0


.thumb
Function_22435c8: @ 22435c8 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	ldr     r4, [pc, #0x28] @ 0x22435f8, (=0x2243850)
	add     r3, sp, #0x0
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r1, #0x10
	mov     r0, r2
	mov     r2, r1
	bl      Function_201e88c
	mov     r0, #0x4
	mov     r1, #0x62
	bl      Function_201f834
	bl      Function_201e994
	bl      Function_201f8e4
	add     sp, #0x10
	pop     {r4,pc}
@ 0x22435f8

.word 0x2243850 @ 0x22435f8
.thumb
Function_22435fc: @ 22435fc :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r6, r0
	mov     r7, r1
	mov     r0, #0x62
	mov     r1, #0x14
	str     r2, [sp, #0x4]
	mov     r5, r3
	bl      malloc
	mov     r4, r0
	mov     r2, r4
	mov     r1, #0x14
	mov     r0, #0x0
.thumb
branch_2243618: @ 2243618 :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_2243618
	ldr     r0, [sp, #0x2c]
	mov     r3, #0x0
	str     r0, [r4, #0xc]
	ldr     r2, [sp, #0x4]
	str     r3, [sp, #0x0]
	mov     r0, r6
	mov     r1, r7
	bl      Function_22434bc
	str     r0, [r4, #0x10]
	lsl     r0, r5, #12
	str     r0, [sp, #0x8]
	add     r0, sp, #0x18
	ldrh    r0, [r0, #0x10]
	add     r1, sp, #0x8
	lsl     r0, r0, #12
	str     r0, [sp, #0xc]
	ldr     r0, [r4, #0x10]
	bl      Function_2021c50
	mov     r0, r4
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x224364e


.align 2, 0


.thumb
Function_2243650: @ 2243650 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x10]
	bl      Function_2021bd4
	mov     r0, r4
	bl      free
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2243664

.thumb
Function_2243664: @ 2243664 :thumb
	ldr     r3, [pc, #0x4] @ 0x224366c, (=Function_2021cac+1)
	ldr     r0, [r0, #0x10]
	bx      r3
@ 0x224366a


.align 2


.word Function_2021cac+1 @ 0x224366c
.thumb
Function_2243670: @ 2243670 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r4, r1
	ldr     r1, [r5, #0xc]
	mov     r6, r2
	cmp     r1, #0x0
	beq     branch_2243688
	ldrb    r1, [r1, #0x0]
	ldr     r0, [r5, #0x10]
	bl      Function_2021dcc
.thumb
branch_2243688: @ 2243688 :thumb
	ldr     r0, [r5, #0x10]
	bl      Function_2021d28
	mov     r3, r0
	add     r2, sp, #0x0
	ldmia   r3!, {r0,r1}
	mov     r7, r2
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	mov     r1, r7
	str     r0, [r2, #0x0]
	lsl     r0, r4, #12
	str     r0, [sp, #0x0]
	lsl     r0, r6, #12
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x10]
	bl      Function_2021c50
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x22436b0

.thumb
Function_22436b0: @ 22436b0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r1, #0x1
	ldr     r0, [r5, #0x10]
	lsl     r1, r1, #12
	bl      Function_2021ce4
	ldr     r0, [r5, #0x10]
	mov     r1, r4
	bl      Function_2021dcc
	pop     {r3-r5,pc}
@ 0x22436ca


.align 2, 0


.thumb
Function_22436cc: @ 22436cc :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r1
	bl      Function_2079fc4
	mov     r1, r0
	ldr     r0, [r4, #0x10]
	bl      Function_2021f24
	pop     {r4,pc}
@ 0x22436e0

.thumb
Function_22436e0: @ 22436e0 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r5, r1
	mov     r4, #0x0
.thumb
branch_22436e8: @ 22436e8 :thumb
	ldr     r2, [pc, #0x20] @ 0x224370c, (=0x2243860)
	lsl     r6, r4, #4
	lsl     r3, r4, #3
	mov     r0, r7
	add     r1, r5, r6
	add     r2, r2, r3
	bl      Function_201a8d4
	add     r0, r5, r6
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0x4
	bcc     branch_22436e8
	pop     {r3-r7,pc}
@ 0x224370c

.word 0x2243860 @ 0x224370c
.thumb
Function_2243710: @ 2243710 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_2243716: @ 2243716 :thumb
	lsl     r0, r4, #4
	add     r0, r5, r0
	bl      Function_201a8fc
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0x4
	bcc     branch_2243716
	pop     {r3-r5,pc}
@ 0x224372a


.align 2, 0


.thumb
Function_224372c: @ 224372c :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r2, #0x62
	str     r2, [sp, #0x4]
	ldr     r2, [pc, #0x18] @ 0x2243754, (=0x3f7)
	mov     r3, #0xb
	bl      Function_200daa4
	ldr     r2, [pc, #0x10] @ 0x2243754, (=0x3f7)
	mov     r0, r4
	mov     r1, #0x1
	mov     r3, #0xb
	bl      Function_200dc48
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2243752


.align 2


.word 0x3f7 @ 0x2243754
.thumb
Function_2243758: @ 2243758 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r1
	mov     r4, r0
	bl      Function_201c290
	mov     r1, r0
	lsl     r0, r5, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x62
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	ldr     r2, [pc, #0x20] @ 0x2243794, (=0x3d9)
	mov     r3, #0xa
	bl      Function_200dd0c
	mov     r0, r4
	mov     r1, #0xf
	bl      Function_201ada4_ClearTextBox
	ldr     r2, [pc, #0x10] @ 0x2243794, (=0x3d9)
	mov     r0, r4
	mov     r1, #0x0
	mov     r3, #0xa
	bl      Function_200e060
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2243792

.align 2
.word 0x3d9 @ 0x2243794



Unknown_2243798: @ 0x2243798
.incbin "./baserom/overlay/overlay_0106.bin", 0x1cb8, 0x22438a0 - 0x2243798


@end 0x22438a0



