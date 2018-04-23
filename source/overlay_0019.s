
.include "source/macros_asm.s"
.include "source/arm9_ram_2.s"


@ 0x253c00 in arm9.bin


.section .iwram19, "ax"


.thumb
.globl Function_19_21d0d80
Function_19_21d0d80: @ 21d0d80 :thumb
	push    {r3-r5,lr}
	mov     r2, #0x1
	mov     r5, r0
	mov     r0, #0x3
	mov     r1, #0x9
	lsl     r2, r2, #14
	bl      Function_2017fc8
	mov     r2, #0xf
	mov     r0, #0x3
	mov     r1, #0xa
	lsl     r2, r2, #14
	bl      Function_2017fc8
	mov     r1, #0x87
	mov     r0, r5
	lsl     r1, r1, #2
	mov     r2, #0x9
	bl      MallocSomeDataAndStorePtrInOverlayData1c
	mov     r4, r0
	beq     branch_21d0de4
	mov     r0, r5
	bl      LoadPtrToOverWorldDataIn18
	mov     r1, r0
	mov     r0, r4
	bl      Function_21d4be0
	mov     r0, #0x45
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, r4
	mov     r2, r4
	bl      Function_21d61b0
	mov     r0, #0x1b
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	mov     r0, r4
	bl      Function_21d0ecc
	mov     r1, #0x6a
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r1, [pc, #0x8] @ 0x21d0de8, (=0x21d0f21)
	mov     r0, r4
	bl      Function_21d0eb0
branch_21d0de4: @ 21d0de4 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d0de8

.word 0x21d0f21 @ 0x21d0de8



.thumb
.globl Function_19_21d0dec
Function_19_21d0dec: @ 21d0dec :thumb
	push    {r4,lr}
	bl      LoadOverlayData1c
	mov     r1, #0x6b
	mov     r4, r0
	lsl     r1, r1, #2
	ldr     r2, [r4, r1]
	cmp     r2, #0x0
	beq     branch_21d0e08
	add     r1, #0x8
	add     r1, r4, r1
	blx     r2
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d0e08

.thumb
branch_21d0e08: @ 21d0e08 :thumb
	.hword  0x1f08 @ sub r0, r1, #0x4
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21d0e4a
	ldr     r0, [pc, #0x40] @ 0x21d0e54, (=RAM_21bf67c)
	ldr     r2, [r0, #0x48]
	mov     r0, #0x2
	lsl     r0, r0, #10
	tst     r0, r2
	beq     branch_21d0e3e
	sub     r1, #0x98
	ldr     r0, [r4, r1]
	bl      Function_21d6628
	cmp     r0, #0x1
	bne     branch_21d0e3e
	mov     r0, r4
	bl      Function_21d5dd8
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x2b
	bl      Function_21d6594
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d0e3e

.thumb
branch_21d0e3e: @ 21d0e3e :thumb
	mov     r1, #0x6a
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	mov     r0, r4
	blx     r1
	pop     {r4,pc}

branch_21d0e4a: @ 21d0e4a :thumb
	bl      ErrorHandling
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d0e52

.align 2
.word RAM_21bf67c @ 0x21d0e54



.thumb
.globl Function_19_21d0e58
Function_19_21d0e58: @ 21d0e58 :thumb
	push    {r4,lr}
	bl      LoadOverlayData1c
	mov     r1, #0x49
	mov     r4, r0
	lsl     r1, r1, #2
	ldr     r0, [r4, r1]
	add     r1, #0x95
	bl      IsFirstPkmnInPartyWantedSpecies
	cmp     r0, #0x0
	bne     branch_21d0e7e
	mov     r0, #0x47
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      LoadVariableAreaAdress_16
	bl      Function_202cca8
branch_21d0e7e: @ 21d0e7e :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d64a0
	mov     r0, r4
	bl      Function_21d4d58
	mov     r0, #0x9
	bl      Function_201807c
	mov     r0, #0xa
	bl      Function_201807c
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d0e9e


.align 2, 0
.thumb
Function_21d0ea0: @ 21d0ea0 :thumb
	mov     r2, #0x6a
	lsl     r2, r2, #2
	str     r1, [r0, r2]
	mov     r1, #0x0
	add     r2, #0x8
	str     r1, [r0, r2]
	bx      lr
@ 0x21d0eae


.align 2, 0


.thumb
Function_21d0eb0: @ 21d0eb0 :thumb
	mov     r2, #0x6b
	lsl     r2, r2, #2
	str     r1, [r0, r2]
	mov     r1, #0x0
	add     r2, #0x8
	str     r1, [r0, r2]
	bx      lr
@ 0x21d0ebe


.align 2, 0


.thumb
Function_21d0ec0: @ 21d0ec0 :thumb
	mov     r1, #0x6b
	mov     r2, #0x0
	lsl     r1, r1, #2
	str     r2, [r0, r1]
	bx      lr
@ 0x21d0eca


.align 2, 0


.thumb
Function_21d0ecc: @ 21d0ecc :thumb
	push    {r3,lr}
	bl      Function_21d5e10
	cmp     r0, #0x4
	bhi     branch_21d0eec
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d0ee2

Jumppoints_21d0ee2:
.hword branch_21d0eec - Jumppoints_21d0ee2 - 2
.hword branch_21d0ef0 - Jumppoints_21d0ee2 - 2
.hword branch_21d0ef4 - Jumppoints_21d0ee2 - 2
.hword branch_21d0efc - Jumppoints_21d0ee2 - 2
.hword branch_21d0ef8 - Jumppoints_21d0ee2 - 2
.thumb
branch_21d0eec: @ 21d0eec :thumb
	ldr     r0, [pc, #0x10] @ 0x21d0f00, (=0x21d0ff1)
	pop     {r3,pc}
@ 0x21d0ef0

.thumb
branch_21d0ef0: @ 21d0ef0 :thumb
	ldr     r0, [pc, #0x10] @ 0x21d0f04, (=0x21d1271)
	pop     {r3,pc}
@ 0x21d0ef4

.thumb
branch_21d0ef4: @ 21d0ef4 :thumb
	ldr     r0, [pc, #0x10] @ 0x21d0f08, (=0x21d15c1)
	pop     {r3,pc}
@ 0x21d0ef8

.thumb
branch_21d0ef8: @ 21d0ef8 :thumb
	ldr     r0, [pc, #0x10] @ 0x21d0f0c, (=0x21d17ad)
	pop     {r3,pc}
@ 0x21d0efc

.thumb
branch_21d0efc: @ 21d0efc :thumb
	ldr     r0, [pc, #0x10] @ 0x21d0f10, (=0x21d19b9)
	pop     {r3,pc}
@ 0x21d0f00

.word 0x21d0ff1 @ 0x21d0f00
.word 0x21d1271 @ 0x21d0f04
.word 0x21d15c1 @ 0x21d0f08
.word 0x21d17ad @ 0x21d0f0c
.word 0x21d19b9 @ 0x21d0f10
.thumb
Function_21d0f14: @ 21d0f14 :thumb
	mov     r1, #0x46
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	mov     r2, #0x1
	str     r2, [r0, #0x8]
	bx      lr
@ 0x21d0f20

.thumb
Function_21d0f20: @ 21d0f20 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_21d0f36
	cmp     r0, #0x1
	beq     branch_21d0f4a
	cmp     r0, #0x2
	beq     branch_21d0f6e
	pop     {r3-r5,pc}
@ 0x21d0f36

.thumb
branch_21d0f36: @ 21d0f36 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_21d6594
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x21d0f4a

.thumb
branch_21d0f4a: @ 21d0f4a :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d0f84
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      Function_21d6594
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x21d0f6e

.thumb
branch_21d0f6e: @ 21d0f6e :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d0f84
	mov     r0, r5
	bl      Function_21d0ec0
.thumb
branch_21d0f84: @ 21d0f84 :thumb
	pop     {r3-r5,pc}
@ 0x21d0f86


.align 2, 0


.thumb
Function_21d0f88: @ 21d0f88 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_21d0f9e
	cmp     r0, #0x1
	beq     branch_21d0fb2
	cmp     r0, #0x2
	beq     branch_21d0fd6
	pop     {r3-r5,pc}
@ 0x21d0f9e

.thumb
branch_21d0f9e: @ 21d0f9e :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_21d6594
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x21d0fb2

.thumb
branch_21d0fb2: @ 21d0fb2 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d0fec
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x2
	bl      Function_21d6594
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x21d0fd6

.thumb
branch_21d0fd6: @ 21d0fd6 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x2
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d0fec
	mov     r0, r5
	bl      Function_21d0ec0
.thumb
branch_21d0fec: @ 21d0fec :thumb
	pop     {r3-r5,pc}
@ 0x21d0fee


.align 2, 0


.thumb
Function_21d0ff0: @ 21d0ff0 :thumb
	push    {r4,lr}
	mov     r1, #0x1b
	mov     r4, r0
	lsl     r1, r1, #4
	ldr     r2, [r4, r1]
	cmp     r2, #0x0
	beq     branch_21d100c
	cmp     r2, #0x1
	bne     branch_21d1004
	b       branch_21d11de
@ 0x21d1004

.thumb
branch_21d1004: @ 21d1004 :thumb
	cmp     r2, #0x2
	bne     branch_21d100a
	b       branch_21d11fc
@ 0x21d100a

.thumb
branch_21d100a: @ 21d100a :thumb
	b       branch_21d1210
@ 0x21d100c

.thumb
branch_21d100c: @ 21d100c :thumb
	ldr     r1, [pc, #0x204] @ 0x21d1214, (=RAM_21bf67c)
	ldr     r2, [r1, #0x48]
	mov     r1, #0x1
	tst     r1, r2
	beq     branch_21d103c
	bl      Function_21d5e4c
	cmp     r0, #0x0
	beq     branch_21d103c
	mov     r0, r4
	bl      Function_21d5e08
	cmp     r0, #0x3
	beq     branch_21d1032
	ldr     r1, [pc, #0x1ec] @ 0x21d1218, (=0x21d20a5)
	mov     r0, r4
	bl      Function_21d0eb0
	b       branch_21d1210
@ 0x21d1032

.thumb
branch_21d1032: @ 21d1032 :thumb
	ldr     r1, [pc, #0x1e8] @ 0x21d121c, (=0x21d2309)
	mov     r0, r4
	bl      Function_21d0eb0
	b       branch_21d1210
@ 0x21d103c

.thumb
branch_21d103c: @ 21d103c :thumb
	ldr     r0, [pc, #0x1d4] @ 0x21d1214, (=RAM_21bf67c)
	mov     r2, #0x2
	ldr     r1, [r0, #0x48]
	tst     r1, r2
	beq     branch_21d1050
	ldr     r1, [pc, #0x1d8] @ 0x21d1220, (=0x21d1f5d)
	mov     r0, r4
	bl      Function_21d0eb0
	b       branch_21d1210
@ 0x21d1050

.thumb
branch_21d1050: @ 21d1050 :thumb
	ldr     r0, [r0, #0x44]
	lsl     r1, r2, #8
	tst     r1, r0
	beq     branch_21d1068
	mov     r0, r4
	bl      Function_21d5ce8
	ldr     r1, [pc, #0x1c4] @ 0x21d1224, (=0x21d45a9)
	mov     r0, r4
	bl      Function_21d0eb0
	b       branch_21d1210
@ 0x21d1068

.thumb
branch_21d1068: @ 21d1068 :thumb
	add     r2, #0xfe
	mov     r1, r0
	tst     r1, r2
	beq     branch_21d1080
	mov     r0, r4
	bl      Function_21d5cbc
	ldr     r1, [pc, #0x1ac] @ 0x21d1224, (=0x21d45a9)
	mov     r0, r4
	bl      Function_21d0eb0
	b       branch_21d1210
@ 0x21d1080

.thumb
branch_21d1080: @ 21d1080 :thumb
	mov     r1, r4
	bl      Function_21d4f74
	cmp     r0, #0x0
	beq     branch_21d10b8
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x5
	bl      Function_21d6594
	mov     r0, r4
	bl      Function_21d5e38
	cmp     r0, #0x1
	bne     branch_21d10ac
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x6
	bl      Function_21d6594
.thumb
branch_21d10ac: @ 21d10ac :thumb
	mov     r0, #0x1b
	lsl     r0, r0, #4
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	b       branch_21d1210
@ 0x21d10b8

.thumb
branch_21d10b8: @ 21d10b8 :thumb
	mov     r0, r4
	bl      Function_21d538c
	cmp     r0, #0x0
	beq     branch_21d10da
	mov     r0, r4
	bl      Function_21d5e08
	cmp     r0, #0x4
	beq     branch_21d1102
	mov     r0, #0x61
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21d10dc
	cmp     r0, #0x1
	beq     branch_21d10e6
.thumb
branch_21d10da: @ 21d10da :thumb
	b       branch_21d11ce
@ 0x21d10dc

.thumb
branch_21d10dc: @ 21d10dc :thumb
	ldr     r1, [pc, #0x148] @ 0x21d1228, (=0x21d4641)
	mov     r0, r4
	bl      Function_21d0eb0
	b       branch_21d11ce
@ 0x21d10e6

.thumb
branch_21d10e6: @ 21d10e6 :thumb
	mov     r0, r4
	bl      Function_21d5e08
	cmp     r0, #0x3
	beq     branch_21d10fa
	ldr     r1, [pc, #0x138] @ 0x21d122c, (=0x21d4939)
	mov     r0, r4
	bl      Function_21d0eb0
	b       branch_21d11ce
@ 0x21d10fa

.thumb
branch_21d10fa: @ 21d10fa :thumb
	ldr     r0, [pc, #0x134] @ 0x21d1230, (=0x5f3)
	bl      Function_2005748
	b       branch_21d11ce
@ 0x21d1102

.thumb
branch_21d1102: @ 21d1102 :thumb
	mov     r0, #0x61
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21d1116
	cmp     r0, #0x1
	beq     branch_21d1164
	cmp     r0, #0x2
	beq     branch_21d11b2
	b       branch_21d11ce
@ 0x21d1116

.thumb
branch_21d1116: @ 21d1116 :thumb
	mov     r0, r4
	bl      Function_21d5f9c
	cmp     r0, #0x0
	bne     branch_21d115c
	mov     r0, r4
	bl      Function_21d5e34
	cmp     r0, #0x1
	bne     branch_21d115c
	ldr     r0, [pc, #0x108] @ 0x21d1234, (=0x5dd)
	bl      Function_2005748
	mov     r0, r4
	bl      Function_21d5b70
	ldr     r1, [r4, #0x8]
	mov     r0, r4
	mov     r2, r4
	bl      Function_21d5888
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x31
	bl      Function_21d6594
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x6
	bl      Function_21d6594
	mov     r0, #0x1
	b       branch_21d11d0
@ 0x21d115c

.thumb
branch_21d115c: @ 21d115c :thumb
	ldr     r0, [pc, #0xd0] @ 0x21d1230, (=0x5f3)
	bl      Function_2005748
	b       branch_21d11ce
@ 0x21d1164

.thumb
branch_21d1164: @ 21d1164 :thumb
	mov     r0, r4
	bl      Function_21d5f9c
	cmp     r0, #0x1
	bne     branch_21d11aa
	mov     r0, r4
	bl      Function_21d5e34
	cmp     r0, #0x1
	bne     branch_21d11aa
	ldr     r0, [pc, #0xb8] @ 0x21d1234, (=0x5dd)
	bl      Function_2005748
	mov     r0, r4
	bl      Function_21d5b70
	ldr     r1, [r4, #0x8]
	mov     r0, r4
	mov     r2, r4
	bl      Function_21d5888
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x31
	bl      Function_21d6594
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x6
	bl      Function_21d6594
	mov     r0, #0x1
	b       branch_21d11d0
@ 0x21d11aa

.thumb
branch_21d11aa: @ 21d11aa :thumb
	ldr     r0, [pc, #0x84] @ 0x21d1230, (=0x5f3)
	bl      Function_2005748
	b       branch_21d11ce
@ 0x21d11b2

.thumb
branch_21d11b2: @ 21d11b2 :thumb
	ldr     r0, [pc, #0x80] @ 0x21d1234, (=0x5dd)
	bl      Function_2005748
	mov     r0, r4
	bl      Function_21d5b80
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x32
	bl      Function_21d6594
	mov     r0, #0x1
	b       branch_21d11d0
@ 0x21d11ce

.thumb
branch_21d11ce: @ 21d11ce :thumb
	mov     r0, #0x0
.thumb
branch_21d11d0: @ 21d11d0 :thumb
	cmp     r0, #0x0
	beq     branch_21d1210
	mov     r0, #0x1b
	mov     r1, #0x2
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	b       branch_21d1210
@ 0x21d11de

.thumb
branch_21d11de: @ 21d11de :thumb
	sub     r1, #0x9c
	ldr     r0, [r4, r1]
	mov     r1, #0x5
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d1210
	mov     r0, r4
	bl      Function_21d0ecc
	mov     r1, r0
	mov     r0, r4
	bl      Function_21d0ea0
	b       branch_21d1210
@ 0x21d11fc

.thumb
branch_21d11fc: @ 21d11fc :thumb
	sub     r1, #0x9c
	ldr     r0, [r4, r1]
	bl      Function_21d6628
	cmp     r0, #0x0
	beq     branch_21d1210
	mov     r0, #0x1b
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r4, r0]
.thumb
branch_21d1210: @ 21d1210 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d1214

.word RAM_21bf67c @ 0x21d1214
.word 0x21d20a5 @ 0x21d1218
.word 0x21d2309 @ 0x21d121c
.word 0x21d1f5d @ 0x21d1220
.word 0x21d45a9 @ 0x21d1224
.word 0x21d4641 @ 0x21d1228
.word 0x21d4939 @ 0x21d122c
.word 0x5f3 @ 0x21d1230
.word 0x5dd @ 0x21d1234
.thumb
Function_21d1238: @ 21d1238 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_21d5e74
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_207d2d0
	cmp     r0, #0x0
	beq     branch_21d1256
	mov     r0, #0x1e
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d1256

.thumb
branch_21d1256: @ 21d1256 :thumb
	mov     r0, r5
	mov     r1, #0xa2
	mov     r2, #0x0
	bl      Function_21d5fd0
	cmp     r0, #0x0
	beq     branch_21d126c
	mov     r0, #0x1d
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d126c

.thumb
branch_21d126c: @ 21d126c :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d1270

.thumb
Function_21d1270: @ 21d1270 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r1, #0x1b
	mov     r4, r0
	lsl     r1, r1, #4
	ldr     r2, [r4, r1]
	cmp     r2, #0x6
	bhi     branch_21d12c0
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x21d128c

Jumppoints_21d128c:
.hword branch_21d129a - Jumppoints_21d128c - 2
.hword branch_21d1474 - Jumppoints_21d128c - 2
.hword branch_21d148e - Jumppoints_21d128c - 2
.hword branch_21d14f8 - Jumppoints_21d128c - 2
.hword branch_21d1538 - Jumppoints_21d128c - 2
.hword branch_21d1556 - Jumppoints_21d128c - 2
.hword branch_21d15a4 - Jumppoints_21d128c - 2
.thumb
branch_21d129a: @ 21d129a :thumb
	ldr     r1, [pc, #0x2e8] @ 0x21d1584, (=RAM_21bf67c)
	mov     r2, #0x1
	ldr     r1, [r1, #0x48]
	tst     r2, r1
	beq     branch_21d12e0
	bl      Function_21d5e2c
	cmp     r0, #0x6
	bne     branch_21d12b6
	mov     r0, #0x1b
	mov     r1, #0x2
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	b       branch_21d15b8
@ 0x21d12b6

.thumb
branch_21d12b6: @ 21d12b6 :thumb
	mov     r0, r4
	bl      Function_21d5e4c
	cmp     r0, #0x0
	bne     branch_21d12c2
.thumb
branch_21d12c0: @ 21d12c0 :thumb
	b       branch_21d15b8
@ 0x21d12c2

.thumb
branch_21d12c2: @ 21d12c2 :thumb
	mov     r0, r4
	bl      Function_21d5e08
	cmp     r0, #0x3
	beq     branch_21d12d6
	ldr     r1, [pc, #0x2b8] @ 0x21d1588, (=0x21d20a5)
	mov     r0, r4
	bl      Function_21d0eb0
	b       branch_21d15b8
@ 0x21d12d6

.thumb
branch_21d12d6: @ 21d12d6 :thumb
	ldr     r1, [pc, #0x2b4] @ 0x21d158c, (=0x21d2309)
	mov     r0, r4
	bl      Function_21d0eb0
	b       branch_21d15b8
@ 0x21d12e0

.thumb
branch_21d12e0: @ 21d12e0 :thumb
	mov     r2, #0x2
	tst     r2, r1
	bne     branch_21d130a
	mov     r2, #0x10
	tst     r1, r2
	beq     branch_21d12f6
	bl      Function_21d5e2c
	mov     r1, #0x1
	tst     r0, r1
	bne     branch_21d130a
.thumb
branch_21d12f6: @ 21d12f6 :thumb
	ldr     r0, [pc, #0x28c] @ 0x21d1584, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x10
	tst     r0, r1
	beq     branch_21d1314
	mov     r0, r4
	bl      Function_21d5e2c
	cmp     r0, #0x6
	bne     branch_21d1314
.thumb
branch_21d130a: @ 21d130a :thumb
	mov     r0, #0x1b
	mov     r1, #0x2
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	b       branch_21d15b8
@ 0x21d1314

.thumb
branch_21d1314: @ 21d1314 :thumb
	ldr     r0, [pc, #0x26c] @ 0x21d1584, (=RAM_21bf67c)
	mov     r1, r4
	ldr     r0, [r0, #0x44]
	bl      Function_21d4f74
	cmp     r0, #0x0
	beq     branch_21d134e
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x5
	bl      Function_21d6594
	mov     r0, r4
	bl      Function_21d5e38
	cmp     r0, #0x1
	bne     branch_21d1344
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x6
	bl      Function_21d6594
.thumb
branch_21d1344: @ 21d1344 :thumb
	mov     r0, #0x1b
	mov     r1, #0x1
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	b       branch_21d15b8
@ 0x21d134e

.thumb
branch_21d134e: @ 21d134e :thumb
	mov     r0, r4
	bl      Function_21d538c
	cmp     r0, #0x0
	beq     branch_21d1370
	mov     r0, r4
	bl      Function_21d5e08
	cmp     r0, #0x4
	beq     branch_21d1398
	mov     r0, #0x61
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21d1372
	cmp     r0, #0x1
	beq     branch_21d137c
.thumb
branch_21d1370: @ 21d1370 :thumb
	b       branch_21d1464
@ 0x21d1372

.thumb
branch_21d1372: @ 21d1372 :thumb
	ldr     r1, [pc, #0x21c] @ 0x21d1590, (=0x21d4641)
	mov     r0, r4
	bl      Function_21d0eb0
	b       branch_21d1464
@ 0x21d137c

.thumb
branch_21d137c: @ 21d137c :thumb
	mov     r0, r4
	bl      Function_21d5e08
	cmp     r0, #0x3
	beq     branch_21d1390
	ldr     r1, [pc, #0x20c] @ 0x21d1594, (=0x21d4939)
	mov     r0, r4
	bl      Function_21d0eb0
	b       branch_21d1464
@ 0x21d1390

.thumb
branch_21d1390: @ 21d1390 :thumb
	ldr     r0, [pc, #0x204] @ 0x21d1598, (=0x5f3)
	bl      Function_2005748
	b       branch_21d1464
@ 0x21d1398

.thumb
branch_21d1398: @ 21d1398 :thumb
	mov     r0, #0x61
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21d13ac
	cmp     r0, #0x1
	beq     branch_21d13fa
	cmp     r0, #0x2
	beq     branch_21d1448
	b       branch_21d1464
@ 0x21d13ac

.thumb
branch_21d13ac: @ 21d13ac :thumb
	mov     r0, r4
	bl      Function_21d5f9c
	cmp     r0, #0x0
	bne     branch_21d13f2
	mov     r0, r4
	bl      Function_21d5e34
	cmp     r0, #0x1
	bne     branch_21d13f2
	ldr     r0, [pc, #0x1d8] @ 0x21d159c, (=0x5dd)
	bl      Function_2005748
	mov     r0, r4
	bl      Function_21d5b70
	ldr     r1, [r4, #0x8]
	mov     r0, r4
	mov     r2, r4
	bl      Function_21d5888
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x31
	bl      Function_21d6594
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x6
	bl      Function_21d6594
	mov     r0, #0x1
	b       branch_21d1466
@ 0x21d13f2

.thumb
branch_21d13f2: @ 21d13f2 :thumb
	ldr     r0, [pc, #0x1a4] @ 0x21d1598, (=0x5f3)
	bl      Function_2005748
	b       branch_21d1464
@ 0x21d13fa

.thumb
branch_21d13fa: @ 21d13fa :thumb
	mov     r0, r4
	bl      Function_21d5f9c
	cmp     r0, #0x1
	bne     branch_21d1440
	mov     r0, r4
	bl      Function_21d5e34
	cmp     r0, #0x1
	bne     branch_21d1440
	ldr     r0, [pc, #0x18c] @ 0x21d159c, (=0x5dd)
	bl      Function_2005748
	mov     r0, r4
	bl      Function_21d5b70
	ldr     r1, [r4, #0x8]
	mov     r0, r4
	mov     r2, r4
	bl      Function_21d5888
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x31
	bl      Function_21d6594
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x6
	bl      Function_21d6594
	mov     r0, #0x1
	b       branch_21d1466
@ 0x21d1440

.thumb
branch_21d1440: @ 21d1440 :thumb
	ldr     r0, [pc, #0x154] @ 0x21d1598, (=0x5f3)
	bl      Function_2005748
	b       branch_21d1464
@ 0x21d1448

.thumb
branch_21d1448: @ 21d1448 :thumb
	ldr     r0, [pc, #0x150] @ 0x21d159c, (=0x5dd)
	bl      Function_2005748
	mov     r0, r4
	bl      Function_21d5b80
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x32
	bl      Function_21d6594
	mov     r0, #0x1
	b       branch_21d1466
@ 0x21d1464

.thumb
branch_21d1464: @ 21d1464 :thumb
	mov     r0, #0x0
.thumb
branch_21d1466: @ 21d1466 :thumb
	cmp     r0, #0x0
	beq     branch_21d1482
	mov     r0, #0x1b
	mov     r1, #0x6
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	b       branch_21d15b8
@ 0x21d1474

.thumb
branch_21d1474: @ 21d1474 :thumb
	sub     r1, #0x9c
	ldr     r0, [r4, r1]
	mov     r1, #0x5
	bl      Function_21d6600
	cmp     r0, #0x0
	bne     branch_21d1484
.thumb
branch_21d1482: @ 21d1482 :thumb
	b       branch_21d15b8
@ 0x21d1484

.thumb
branch_21d1484: @ 21d1484 :thumb
	mov     r0, #0x1b
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	b       branch_21d15b8
@ 0x21d148e

.thumb
branch_21d148e: @ 21d148e :thumb
	bl      Function_21d5e08
	cmp     r0, #0x0
	bne     branch_21d14a8
	ldr     r1, [pc, #0x108] @ 0x21d15a0, (=0x21d1f5d)
	mov     r0, r4
	bl      Function_21d0eb0
	mov     r0, #0x1b
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	b       branch_21d15b8
@ 0x21d14a8

.thumb
branch_21d14a8: @ 21d14a8 :thumb
	mov     r0, r4
	bl      Function_21d5e38
	cmp     r0, #0x1
	beq     branch_21d14e2
	mov     r0, r4
	add     r1, sp, #0x0
	bl      Function_21d1238
	cmp     r0, #0x0
	beq     branch_21d14e2
	ldr     r0, [pc, #0xd8] @ 0x21d1598, (=0x5f3)
	bl      Function_2005748
	ldr     r1, [sp, #0x0]
	mov     r0, r4
	bl      Function_21d5408
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x18
	bl      Function_21d6594
	mov     r0, #0x1b
	mov     r1, #0x5
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	b       branch_21d15b8
@ 0x21d14e2

.thumb
branch_21d14e2: @ 21d14e2 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x24
	bl      Function_21d6594
	mov     r0, #0x1b
	mov     r1, #0x3
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	b       branch_21d15b8
@ 0x21d14f8

.thumb
branch_21d14f8: @ 21d14f8 :thumb
	sub     r1, #0x9c
	ldr     r0, [r4, r1]
	mov     r1, #0x24
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d15b8
	mov     r0, r4
	bl      Function_21d52d0
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x5
	bl      Function_21d6594
	mov     r0, r4
	bl      Function_21d5e38
	cmp     r0, #0x1
	bne     branch_21d152e
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x6
	bl      Function_21d6594
.thumb
branch_21d152e: @ 21d152e :thumb
	mov     r0, #0x1b
	mov     r1, #0x4
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	b       branch_21d15b8
@ 0x21d1538

.thumb
branch_21d1538: @ 21d1538 :thumb
	sub     r1, #0x9c
	ldr     r0, [r4, r1]
	mov     r1, #0x5
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d15b8
	mov     r0, r4
	bl      Function_21d0ecc
	mov     r1, r0
	mov     r0, r4
	bl      Function_21d0ea0
	b       branch_21d15b8
@ 0x21d1556

.thumb
branch_21d1556: @ 21d1556 :thumb
	sub     r1, #0x9c
	ldr     r0, [r4, r1]
	mov     r1, #0x18
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d15b8
	ldr     r0, [pc, #0x1c] @ 0x21d1584, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_21d15b8
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1a
	bl      Function_21d6594
	mov     r0, #0x1b
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	b       branch_21d15b8
@ 0x21d1584

.word RAM_21bf67c @ 0x21d1584
.word 0x21d20a5 @ 0x21d1588
.word 0x21d2309 @ 0x21d158c
.word 0x21d4641 @ 0x21d1590
.word 0x21d4939 @ 0x21d1594
.word 0x5f3 @ 0x21d1598
.word 0x5dd @ 0x21d159c
.word 0x21d1f5d @ 0x21d15a0
.thumb
branch_21d15a4: @ 21d15a4 :thumb
	sub     r1, #0x9c
	ldr     r0, [r4, r1]
	bl      Function_21d6628
	cmp     r0, #0x0
	beq     branch_21d15b8
	mov     r0, #0x1b
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r4, r0]
.thumb
branch_21d15b8: @ 21d15b8 :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d15be


.align 2, 0


.thumb
Function_21d15c0: @ 21d15c0 :thumb
	push    {r3-r5,lr}
	mov     r3, #0x1b
	mov     r4, r0
	lsl     r3, r3, #4
	ldr     r1, [r4, r3]
	cmp     r1, #0x0
	beq     branch_21d15d6
	cmp     r1, #0x1
	bne     branch_21d15d4
	b       branch_21d176c
@ 0x21d15d4

.thumb
branch_21d15d4: @ 21d15d4 :thumb
	b       branch_21d1788
@ 0x21d15d6

.thumb
branch_21d15d6: @ 21d15d6 :thumb
	ldr     r5, [pc, #0x1b4] @ 0x21d178c, (=RAM_21bf67c)
	mov     r2, r3
	ldr     r1, [r5, #0x44]
	add     r2, #0x70
	tst     r2, r1
	beq     branch_21d15f0
	bl      Function_21d5ce8
	ldr     r1, [pc, #0x1a8] @ 0x21d1790, (=0x21d45a9)
	mov     r0, r4
	bl      Function_21d0eb0
	b       branch_21d1788
@ 0x21d15f0

.thumb
branch_21d15f0: @ 21d15f0 :thumb
	sub     r3, #0xa0
	mov     r2, r1
	tst     r2, r3
	beq     branch_21d1606
	bl      Function_21d5cbc
	ldr     r1, [pc, #0x190] @ 0x21d1790, (=0x21d45a9)
	mov     r0, r4
	bl      Function_21d0eb0
	b       branch_21d1788
@ 0x21d1606

.thumb
branch_21d1606: @ 21d1606 :thumb
	ldr     r3, [r5, #0x48]
	mov     r2, #0x1
	tst     r2, r3
	beq     branch_21d1616
	ldr     r1, [pc, #0x184] @ 0x21d1794, (=0x21d2695)
	bl      Function_21d0eb0
	b       branch_21d1788
@ 0x21d1616

.thumb
branch_21d1616: @ 21d1616 :thumb
	mov     r2, #0x2
	tst     r2, r3
	beq     branch_21d1624
	ldr     r1, [pc, #0x178] @ 0x21d1798, (=0x21d1f5d)
	bl      Function_21d0eb0
	b       branch_21d1788
@ 0x21d1624

.thumb
branch_21d1624: @ 21d1624 :thumb
	mov     r0, r1
	mov     r1, r4
	bl      Function_21d4f74
	cmp     r0, #0x0
	beq     branch_21d165c
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x5
	bl      Function_21d6594
	mov     r0, r4
	bl      Function_21d5e38
	cmp     r0, #0x1
	bne     branch_21d1652
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x6
	bl      Function_21d6594
.thumb
branch_21d1652: @ 21d1652 :thumb
	mov     r0, #0x1b
	mov     r1, #0x1
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	b       branch_21d1788
@ 0x21d165c

.thumb
branch_21d165c: @ 21d165c :thumb
	mov     r0, r4
	bl      Function_21d538c
	cmp     r0, #0x0
	beq     branch_21d167e
	mov     r0, r4
	bl      Function_21d5e08
	cmp     r0, #0x4
	beq     branch_21d16a6
	mov     r0, #0x61
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21d1680
	cmp     r0, #0x1
	beq     branch_21d168a
.thumb
branch_21d167e: @ 21d167e :thumb
	b       branch_21d1788
@ 0x21d1680

.thumb
branch_21d1680: @ 21d1680 :thumb
	ldr     r1, [pc, #0x118] @ 0x21d179c, (=0x21d4641)
	mov     r0, r4
	bl      Function_21d0eb0
	b       branch_21d1788
@ 0x21d168a

.thumb
branch_21d168a: @ 21d168a :thumb
	mov     r0, r4
	bl      Function_21d5e08
	cmp     r0, #0x3
	beq     branch_21d169e
	ldr     r1, [pc, #0x108] @ 0x21d17a0, (=0x21d4939)
	mov     r0, r4
	bl      Function_21d0eb0
	b       branch_21d1788
@ 0x21d169e

.thumb
branch_21d169e: @ 21d169e :thumb
	ldr     r0, [pc, #0x104] @ 0x21d17a4, (=0x5f3)
	bl      Function_2005748
	b       branch_21d1788
@ 0x21d16a6

.thumb
branch_21d16a6: @ 21d16a6 :thumb
	mov     r0, #0x61
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21d16ba
	cmp     r0, #0x1
	beq     branch_21d1706
	cmp     r0, #0x2
	beq     branch_21d1752
	b       branch_21d1788
@ 0x21d16ba

.thumb
branch_21d16ba: @ 21d16ba :thumb
	mov     r0, r4
	bl      Function_21d5f9c
	cmp     r0, #0x0
	bne     branch_21d16fe
	mov     r0, r4
	bl      Function_21d5e34
	cmp     r0, #0x1
	bne     branch_21d16fe
	ldr     r0, [pc, #0xd8] @ 0x21d17a8, (=0x5dd)
	bl      Function_2005748
	mov     r0, r4
	bl      Function_21d5b70
	ldr     r1, [r4, #0x8]
	mov     r0, r4
	mov     r2, r4
	bl      Function_21d5888
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x31
	bl      Function_21d6594
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x6
	bl      Function_21d6594
	b       branch_21d1788
@ 0x21d16fe

.thumb
branch_21d16fe: @ 21d16fe :thumb
	ldr     r0, [pc, #0xa4] @ 0x21d17a4, (=0x5f3)
	bl      Function_2005748
	b       branch_21d1788
@ 0x21d1706

.thumb
branch_21d1706: @ 21d1706 :thumb
	mov     r0, r4
	bl      Function_21d5f9c
	cmp     r0, #0x1
	bne     branch_21d174a
	mov     r0, r4
	bl      Function_21d5e34
	cmp     r0, #0x1
	bne     branch_21d174a
	ldr     r0, [pc, #0x8c] @ 0x21d17a8, (=0x5dd)
	bl      Function_2005748
	mov     r0, r4
	bl      Function_21d5b70
	ldr     r1, [r4, #0x8]
	mov     r0, r4
	mov     r2, r4
	bl      Function_21d5888
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x31
	bl      Function_21d6594
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x6
	bl      Function_21d6594
	b       branch_21d1788
@ 0x21d174a

.thumb
branch_21d174a: @ 21d174a :thumb
	ldr     r0, [pc, #0x58] @ 0x21d17a4, (=0x5f3)
	bl      Function_2005748
	b       branch_21d1788
@ 0x21d1752

.thumb
branch_21d1752: @ 21d1752 :thumb
	ldr     r0, [pc, #0x54] @ 0x21d17a8, (=0x5dd)
	bl      Function_2005748
	mov     r0, r4
	bl      Function_21d5b80
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x32
	bl      Function_21d6594
	b       branch_21d1788
@ 0x21d176c

.thumb
branch_21d176c: @ 21d176c :thumb
	sub     r3, #0x9c
	ldr     r0, [r4, r3]
	mov     r1, #0x5
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d1788
	mov     r0, r4
	bl      Function_21d0ecc
	mov     r1, r0
	mov     r0, r4
	bl      Function_21d0ea0
.thumb
branch_21d1788: @ 21d1788 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d178c

.word RAM_21bf67c @ 0x21d178c
.word 0x21d45a9 @ 0x21d1790
.word 0x21d2695 @ 0x21d1794
.word 0x21d1f5d @ 0x21d1798
.word 0x21d4641 @ 0x21d179c
.word 0x21d4939 @ 0x21d17a0
.word 0x5f3 @ 0x21d17a4
.word 0x5dd @ 0x21d17a8
.thumb
Function_21d17ac: @ 21d17ac :thumb
	push    {r3-r5,lr}
	mov     r1, #0x1b
	mov     r4, r0
	lsl     r1, r1, #4
	ldr     r2, [r4, r1]
	cmp     r2, #0x0
	beq     branch_21d17c8
	cmp     r2, #0x1
	bne     branch_21d17c0
	b       branch_21d195e
@ 0x21d17c0

.thumb
branch_21d17c0: @ 21d17c0 :thumb
	cmp     r2, #0x2
	bne     branch_21d17c6
	b       branch_21d1976
@ 0x21d17c6

.thumb
branch_21d17c6: @ 21d17c6 :thumb
	b       branch_21d1992
@ 0x21d17c8

.thumb
branch_21d17c8: @ 21d17c8 :thumb
	ldr     r3, [pc, #0x1cc] @ 0x21d1998, (=RAM_21bf67c)
	mov     r1, #0x1
	ldr     r5, [r3, #0x48]
	tst     r1, r5
	beq     branch_21d17da
	ldr     r1, [pc, #0x1c8] @ 0x21d199c, (=0x21d1ded)
	bl      Function_21d0eb0
	b       branch_21d1992
@ 0x21d17da

.thumb
branch_21d17da: @ 21d17da :thumb
	mov     r2, #0x2
	mov     r1, r5
	tst     r1, r2
	beq     branch_21d17ea
	ldr     r1, [pc, #0x1bc] @ 0x21d19a0, (=0x21d1f5d)
	bl      Function_21d0eb0
	b       branch_21d1992
@ 0x21d17ea

.thumb
branch_21d17ea: @ 21d17ea :thumb
	ldr     r3, [r3, #0x44]
	lsl     r1, r2, #8
	tst     r1, r3
	beq     branch_21d1800
	bl      Function_21d5ce8
	ldr     r1, [pc, #0x1ac] @ 0x21d19a4, (=0x21d45a9)
	mov     r0, r4
	bl      Function_21d0eb0
	b       branch_21d1992
@ 0x21d1800

.thumb
branch_21d1800: @ 21d1800 :thumb
	add     r2, #0xfe
	mov     r1, r3
	tst     r1, r2
	beq     branch_21d1816
	bl      Function_21d5cbc
	ldr     r1, [pc, #0x194] @ 0x21d19a4, (=0x21d45a9)
	mov     r0, r4
	bl      Function_21d0eb0
	b       branch_21d1992
@ 0x21d1816

.thumb
branch_21d1816: @ 21d1816 :thumb
	mov     r0, r3
	mov     r1, r4
	bl      Function_21d4f74
	cmp     r0, #0x0
	beq     branch_21d184e
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x5
	bl      Function_21d6594
	mov     r0, r4
	bl      Function_21d5e38
	cmp     r0, #0x1
	bne     branch_21d1844
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x6
	bl      Function_21d6594
.thumb
branch_21d1844: @ 21d1844 :thumb
	mov     r0, #0x1b
	mov     r1, #0x2
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	b       branch_21d1992
@ 0x21d184e

.thumb
branch_21d184e: @ 21d184e :thumb
	mov     r0, r4
	bl      Function_21d538c
	cmp     r0, #0x0
	beq     branch_21d1870
	mov     r0, r4
	bl      Function_21d5e08
	cmp     r0, #0x4
	beq     branch_21d1898
	mov     r0, #0x61
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21d1872
	cmp     r0, #0x1
	beq     branch_21d187c
.thumb
branch_21d1870: @ 21d1870 :thumb
	b       branch_21d1992
@ 0x21d1872

.thumb
branch_21d1872: @ 21d1872 :thumb
	ldr     r1, [pc, #0x134] @ 0x21d19a8, (=0x21d4641)
	mov     r0, r4
	bl      Function_21d0eb0
	b       branch_21d1992
@ 0x21d187c

.thumb
branch_21d187c: @ 21d187c :thumb
	mov     r0, r4
	bl      Function_21d5e08
	cmp     r0, #0x3
	beq     branch_21d1890
	ldr     r1, [pc, #0x124] @ 0x21d19ac, (=0x21d4939)
	mov     r0, r4
	bl      Function_21d0eb0
	b       branch_21d1992
@ 0x21d1890

.thumb
branch_21d1890: @ 21d1890 :thumb
	ldr     r0, [pc, #0x11c] @ 0x21d19b0, (=0x5f3)
	bl      Function_2005748
	b       branch_21d1992
@ 0x21d1898

.thumb
branch_21d1898: @ 21d1898 :thumb
	mov     r0, #0x61
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21d18ac
	cmp     r0, #0x1
	beq     branch_21d18f8
	cmp     r0, #0x2
	beq     branch_21d1944
	b       branch_21d1992
@ 0x21d18ac

.thumb
branch_21d18ac: @ 21d18ac :thumb
	mov     r0, r4
	bl      Function_21d5f9c
	cmp     r0, #0x0
	bne     branch_21d18f0
	mov     r0, r4
	bl      Function_21d5e34
	cmp     r0, #0x1
	bne     branch_21d18f0
	ldr     r0, [pc, #0xf0] @ 0x21d19b4, (=0x5dd)
	bl      Function_2005748
	mov     r0, r4
	bl      Function_21d5b70
	ldr     r1, [r4, #0x8]
	mov     r0, r4
	mov     r2, r4
	bl      Function_21d5888
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x31
	bl      Function_21d6594
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x6
	bl      Function_21d6594
	b       branch_21d1992
@ 0x21d18f0

.thumb
branch_21d18f0: @ 21d18f0 :thumb
	ldr     r0, [pc, #0xbc] @ 0x21d19b0, (=0x5f3)
	bl      Function_2005748
	b       branch_21d1992
@ 0x21d18f8

.thumb
branch_21d18f8: @ 21d18f8 :thumb
	mov     r0, r4
	bl      Function_21d5f9c
	cmp     r0, #0x1
	bne     branch_21d193c
	mov     r0, r4
	bl      Function_21d5e34
	cmp     r0, #0x1
	bne     branch_21d193c
	ldr     r0, [pc, #0xa4] @ 0x21d19b4, (=0x5dd)
	bl      Function_2005748
	mov     r0, r4
	bl      Function_21d5b70
	ldr     r1, [r4, #0x8]
	mov     r0, r4
	mov     r2, r4
	bl      Function_21d5888
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x31
	bl      Function_21d6594
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x6
	bl      Function_21d6594
	b       branch_21d1992
@ 0x21d193c

.thumb
branch_21d193c: @ 21d193c :thumb
	ldr     r0, [pc, #0x70] @ 0x21d19b0, (=0x5f3)
	bl      Function_2005748
	b       branch_21d1992
@ 0x21d1944

.thumb
branch_21d1944: @ 21d1944 :thumb
	ldr     r0, [pc, #0x6c] @ 0x21d19b4, (=0x5dd)
	bl      Function_2005748
	mov     r0, r4
	bl      Function_21d5b80
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x32
	bl      Function_21d6594
	b       branch_21d1992
@ 0x21d195e

.thumb
branch_21d195e: @ 21d195e :thumb
	sub     r1, #0x9c
	ldr     r0, [r4, r1]
	mov     r1, #0x4
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d1992
	mov     r0, #0x1b
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	b       branch_21d1992
@ 0x21d1976

.thumb
branch_21d1976: @ 21d1976 :thumb
	sub     r1, #0x9c
	ldr     r0, [r4, r1]
	mov     r1, #0x5
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d1992
	mov     r0, r4
	bl      Function_21d0ecc
	mov     r1, r0
	mov     r0, r4
	bl      Function_21d0ea0
.thumb
branch_21d1992: @ 21d1992 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d1996


.align 2


.word RAM_21bf67c @ 0x21d1998
.word 0x21d1ded @ 0x21d199c
.word 0x21d1f5d @ 0x21d19a0
.word 0x21d45a9 @ 0x21d19a4
.word 0x21d4641 @ 0x21d19a8
.word 0x21d4939 @ 0x21d19ac
.word 0x5f3 @ 0x21d19b0
.word 0x5dd @ 0x21d19b4
.thumb
Function_21d19b8: @ 21d19b8 :thumb
	push    {r3-r5,lr}
	mov     r1, #0x1b
	mov     r4, r0
	lsl     r1, r1, #4
	ldr     r2, [r4, r1]
	cmp     r2, #0x5
	bhi     branch_21d1ac0
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x21d19d2

Jumppoints_21d19d2:
.hword branch_21d19de - Jumppoints_21d19d2 - 2
.hword branch_21d1bae - Jumppoints_21d19d2 - 2
.hword branch_21d1bd2 - Jumppoints_21d19d2 - 2
.hword branch_21d1c12 - Jumppoints_21d19d2 - 2
.hword branch_21d1c2a - Jumppoints_21d19d2 - 2
.hword branch_21d1c48 - Jumppoints_21d19d2 - 2
.thumb
branch_21d19de: @ 21d19de :thumb
	ldr     r3, [pc, #0x288] @ 0x21d1c68, (=RAM_21bf67c)
	mov     r1, #0x1
	ldr     r5, [r3, #0x48]
	tst     r1, r5
	beq     branch_21d1a2a
	bl      Function_21d5e08
	cmp     r0, #0x1
	beq     branch_21d1a06
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x22
	bl      Function_21d6594
	mov     r0, #0x1b
	mov     r1, #0x1
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	b       branch_21d1c64
@ 0x21d1a06

.thumb
branch_21d1a06: @ 21d1a06 :thumb
	ldr     r0, [pc, #0x264] @ 0x21d1c6c, (=0x5f3)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, #0x12
	bl      Function_21d5408
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x18
	bl      Function_21d6594
	mov     r0, #0x1b
	mov     r1, #0x5
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	b       branch_21d1c64
@ 0x21d1a2a

.thumb
branch_21d1a2a: @ 21d1a2a :thumb
	mov     r2, #0x2
	mov     r1, r5
	tst     r1, r2
	beq     branch_21d1a3a
	ldr     r1, [pc, #0x23c] @ 0x21d1c70, (=0x21d1f5d)
	bl      Function_21d0eb0
	b       branch_21d1c64
@ 0x21d1a3a

.thumb
branch_21d1a3a: @ 21d1a3a :thumb
	ldr     r3, [r3, #0x44]
	lsl     r1, r2, #8
	tst     r1, r3
	beq     branch_21d1a50
	bl      Function_21d5ce8
	ldr     r1, [pc, #0x22c] @ 0x21d1c74, (=0x21d45a9)
	mov     r0, r4
	bl      Function_21d0eb0
	b       branch_21d1c64
@ 0x21d1a50

.thumb
branch_21d1a50: @ 21d1a50 :thumb
	add     r2, #0xfe
	mov     r1, r3
	tst     r1, r2
	beq     branch_21d1a66
	bl      Function_21d5cbc
	ldr     r1, [pc, #0x214] @ 0x21d1c74, (=0x21d45a9)
	mov     r0, r4
	bl      Function_21d0eb0
	b       branch_21d1c64
@ 0x21d1a66

.thumb
branch_21d1a66: @ 21d1a66 :thumb
	mov     r0, r3
	mov     r1, r4
	bl      Function_21d4f74
	cmp     r0, #0x0
	beq     branch_21d1a9e
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x5
	bl      Function_21d6594
	mov     r0, r4
	bl      Function_21d5e38
	cmp     r0, #0x1
	bne     branch_21d1a94
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x6
	bl      Function_21d6594
.thumb
branch_21d1a94: @ 21d1a94 :thumb
	mov     r0, #0x1b
	mov     r1, #0x4
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	b       branch_21d1c64
@ 0x21d1a9e

.thumb
branch_21d1a9e: @ 21d1a9e :thumb
	mov     r0, r4
	bl      Function_21d538c
	cmp     r0, #0x0
	beq     branch_21d1ac0
	mov     r0, r4
	bl      Function_21d5e08
	cmp     r0, #0x4
	beq     branch_21d1ae8
	mov     r0, #0x61
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21d1ac2
	cmp     r0, #0x1
	beq     branch_21d1acc
.thumb
branch_21d1ac0: @ 21d1ac0 :thumb
	b       branch_21d1c64
@ 0x21d1ac2

.thumb
branch_21d1ac2: @ 21d1ac2 :thumb
	ldr     r1, [pc, #0x1b4] @ 0x21d1c78, (=0x21d4641)
	mov     r0, r4
	bl      Function_21d0eb0
	b       branch_21d1c64
@ 0x21d1acc

.thumb
branch_21d1acc: @ 21d1acc :thumb
	mov     r0, r4
	bl      Function_21d5e08
	cmp     r0, #0x3
	beq     branch_21d1ae0
	ldr     r1, [pc, #0x1a4] @ 0x21d1c7c, (=0x21d4939)
	mov     r0, r4
	bl      Function_21d0eb0
	b       branch_21d1c64
@ 0x21d1ae0

.thumb
branch_21d1ae0: @ 21d1ae0 :thumb
	ldr     r0, [pc, #0x188] @ 0x21d1c6c, (=0x5f3)
	bl      Function_2005748
	b       branch_21d1c64
@ 0x21d1ae8

.thumb
branch_21d1ae8: @ 21d1ae8 :thumb
	mov     r0, #0x61
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21d1afc
	cmp     r0, #0x1
	beq     branch_21d1b48
	cmp     r0, #0x2
	beq     branch_21d1b94
	b       branch_21d1c64
@ 0x21d1afc

.thumb
branch_21d1afc: @ 21d1afc :thumb
	mov     r0, r4
	bl      Function_21d5f9c
	cmp     r0, #0x0
	bne     branch_21d1b40
	mov     r0, r4
	bl      Function_21d5e34
	cmp     r0, #0x1
	bne     branch_21d1b40
	ldr     r0, [pc, #0x16c] @ 0x21d1c80, (=0x5dd)
	bl      Function_2005748
	mov     r0, r4
	bl      Function_21d5b70
	ldr     r1, [r4, #0x8]
	mov     r0, r4
	mov     r2, r4
	bl      Function_21d5888
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x31
	bl      Function_21d6594
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x6
	bl      Function_21d6594
	b       branch_21d1c64
@ 0x21d1b40

.thumb
branch_21d1b40: @ 21d1b40 :thumb
	ldr     r0, [pc, #0x128] @ 0x21d1c6c, (=0x5f3)
	bl      Function_2005748
	b       branch_21d1c64
@ 0x21d1b48

.thumb
branch_21d1b48: @ 21d1b48 :thumb
	mov     r0, r4
	bl      Function_21d5f9c
	cmp     r0, #0x1
	bne     branch_21d1b8c
	mov     r0, r4
	bl      Function_21d5e34
	cmp     r0, #0x1
	bne     branch_21d1b8c
	ldr     r0, [pc, #0x120] @ 0x21d1c80, (=0x5dd)
	bl      Function_2005748
	mov     r0, r4
	bl      Function_21d5b70
	ldr     r1, [r4, #0x8]
	mov     r0, r4
	mov     r2, r4
	bl      Function_21d5888
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x31
	bl      Function_21d6594
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x6
	bl      Function_21d6594
	b       branch_21d1c64
@ 0x21d1b8c

.thumb
branch_21d1b8c: @ 21d1b8c :thumb
	ldr     r0, [pc, #0xdc] @ 0x21d1c6c, (=0x5f3)
	bl      Function_2005748
	b       branch_21d1c64
@ 0x21d1b94

.thumb
branch_21d1b94: @ 21d1b94 :thumb
	ldr     r0, [pc, #0xe8] @ 0x21d1c80, (=0x5dd)
	bl      Function_2005748
	mov     r0, r4
	bl      Function_21d5b80
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x32
	bl      Function_21d6594
	b       branch_21d1c64
@ 0x21d1bae

.thumb
branch_21d1bae: @ 21d1bae :thumb
	sub     r1, #0x9c
	ldr     r0, [r4, r1]
	mov     r1, #0x22
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d1c64
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x23
	bl      Function_21d6594
	mov     r0, #0x1b
	mov     r1, #0x2
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	b       branch_21d1c64
@ 0x21d1bd2

.thumb
branch_21d1bd2: @ 21d1bd2 :thumb
	sub     r1, #0x9c
	ldr     r0, [r4, r1]
	mov     r1, #0x23
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d1c64
	mov     r0, r4
	bl      Function_21d5290
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x5
	bl      Function_21d6594
	mov     r0, r4
	bl      Function_21d5e38
	cmp     r0, #0x1
	bne     branch_21d1c08
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x6
	bl      Function_21d6594
.thumb
branch_21d1c08: @ 21d1c08 :thumb
	mov     r0, #0x1b
	mov     r1, #0x4
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	b       branch_21d1c64
@ 0x21d1c12

.thumb
branch_21d1c12: @ 21d1c12 :thumb
	sub     r1, #0x9c
	ldr     r0, [r4, r1]
	mov     r1, #0x4
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d1c64
	mov     r0, #0x1b
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	b       branch_21d1c64
@ 0x21d1c2a

.thumb
branch_21d1c2a: @ 21d1c2a :thumb
	sub     r1, #0x9c
	ldr     r0, [r4, r1]
	mov     r1, #0x5
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d1c64
	mov     r0, r4
	bl      Function_21d0ecc
	mov     r1, r0
	mov     r0, r4
	bl      Function_21d0ea0
	b       branch_21d1c64
@ 0x21d1c48

.thumb
branch_21d1c48: @ 21d1c48 :thumb
	ldr     r0, [pc, #0x1c] @ 0x21d1c68, (=RAM_21bf67c)
	ldr     r2, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r2
	beq     branch_21d1c64
	sub     r1, #0x9c
	ldr     r0, [r4, r1]
	mov     r1, #0x1a
	bl      Function_21d6594
	mov     r0, #0x1b
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r4, r0]
.thumb
branch_21d1c64: @ 21d1c64 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d1c68

.word RAM_21bf67c @ 0x21d1c68
.word 0x5f3 @ 0x21d1c6c
.word 0x21d1f5d @ 0x21d1c70
.word 0x21d45a9 @ 0x21d1c74
.word 0x21d4641 @ 0x21d1c78
.word 0x21d4939 @ 0x21d1c7c
.word 0x5dd @ 0x21d1c80
.thumb
Function_21d1c84: @ 21d1c84 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d5e38
	cmp     r0, #0x2
	bne     branch_21d1cc8
	mov     r0, #0x4b
	ldr     r1, [r4, #0x14]
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	ldrb    r0, [r4, #0x1f]
	cmp     r0, #0x0
	beq     branch_21d1ca2
	mov     r0, #0x0
	b       branch_21d1ca4
@ 0x21d1ca2

.thumb
branch_21d1ca2: @ 21d1ca2 :thumb
	mov     r0, #0x2
.thumb
branch_21d1ca4: @ 21d1ca4 :thumb
	ldr     r1, [pc, #0xf8] @ 0x21d1da0, (=0x13d)
	mov     r2, #0x1
	strb    r0, [r4, r1]
	add     r0, r1, #0x2
	strb    r2, [r4, r0]
	mov     r2, #0x0
	add     r0, r1, #0x3
	strb    r2, [r4, r0]
	add     r0, r1, #0x1
	strb    r2, [r4, r0]
	add     r0, r1, #0x7
	strh    r2, [r4, r0]
	mov     r0, r1
	add     r0, #0x67
	ldr     r0, [r4, r0]
	sub     r1, #0xd
	str     r0, [r4, r1]
	b       branch_21d1d4a
@ 0x21d1cc8

.thumb
branch_21d1cc8: @ 21d1cc8 :thumb
	mov     r0, r4
	bl      Function_21d5e10
	cmp     r0, #0x0
	bne     branch_21d1d16
	mov     r0, #0x12
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_207999c
	mov     r1, r0
	mov     r0, #0x12
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r2, #0x0
	bl      Function_2079c9c
	mov     r1, #0x4b
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, r1
	mov     r2, #0x2
	add     r0, #0x11
	strb    r2, [r4, r0]
	mov     r0, #0x1e
	add     r1, #0x13
	strb    r0, [r4, r1]
	mov     r0, r4
	bl      Function_21d5e24
	mov     r1, #0x5
	lsl     r1, r1, #6
	strb    r0, [r4, r1]
	mov     r2, #0x0
	.hword  0x1e88 @ sub r0, r1, #0x2
	strb    r2, [r4, r0]
	add     r0, r1, #0x4
	strh    r2, [r4, r0]
	b       branch_21d1d4a
@ 0x21d1d16

.thumb
branch_21d1d16: @ 21d1d16 :thumb
	mov     r1, #0x49
	lsl     r1, r1, #2
	mov     r0, r1
	ldr     r2, [r4, r1]
	add     r0, #0x8
	str     r2, [r4, r0]
	mov     r0, r1
	mov     r2, #0x1
	add     r0, #0x19
	strb    r2, [r4, r0]
	ldr     r0, [r4, r1]
	bl      GetNrOfPkmnInParty
	ldr     r1, [pc, #0x70] @ 0x21d1da4, (=0x13f)
	strb    r0, [r4, r1]
	mov     r0, r4
	bl      Function_21d5e2c
	mov     r1, #0x5
	lsl     r1, r1, #6
	strb    r0, [r4, r1]
	mov     r2, #0x0
	.hword  0x1e88 @ sub r0, r1, #0x2
	strb    r2, [r4, r0]
	add     r0, r1, #0x4
	strh    r2, [r4, r0]
.thumb
branch_21d1d4a: @ 21d1d4a :thumb
	mov     r0, #0x55
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	sub     r0, #0x38
	ldr     r0, [r4, r0]
	bl      Function_207a274
	mov     r1, #0x52
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	sub     r1, #0x2c
	ldr     r0, [r4, r1]
	bl      Function_208c324
	mov     r1, #0x56
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	sub     r1, #0x3c
	ldr     r0, [r4, r1]
	bl      LoadVariableAreaAdress_18
	mov     r1, #0x53
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	sub     r1, #0x20
	add     r0, r4, r1
	ldr     r1, [pc, #0x24] @ 0x21d1da8, (=0x21dfe38)
	bl      Function_208d720
	mov     r0, #0x47
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      LoadTrainerDataAdress
	mov     r1, r0
	mov     r0, #0x4b
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_208e9c0
	pop     {r4,pc}
@ 0x21d1d9e


.align 2


.word 0x13d @ 0x21d1da0
.word 0x13f @ 0x21d1da4
.word 0x21dfe38 @ 0x21d1da8
.thumb
Function_21d1dac: @ 21d1dac :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x1b
	lsl     r0, r0, #4
	ldr     r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_21d1dc0
	cmp     r1, #0x1
	beq     branch_21d1dd6
	b       branch_21d1de6
@ 0x21d1dc0

.thumb
branch_21d1dc0: @ 21d1dc0 :thumb
	sub     r0, #0x9c
	ldr     r0, [r4, r0]
	mov     r1, #0x33
	bl      Function_21d6594
	mov     r0, #0x1b
	lsl     r0, r0, #4
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	b       branch_21d1de6
@ 0x21d1dd6

.thumb
branch_21d1dd6: @ 21d1dd6 :thumb
	sub     r0, #0x9c
	ldr     r0, [r4, r0]
	bl      Function_21d6628
	cmp     r0, #0x0
	beq     branch_21d1de6
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d1de6

.thumb
branch_21d1de6: @ 21d1de6 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d1dea


.align 2, 0


.thumb
Function_21d1dec: @ 21d1dec :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r1, [r5, #0x0]
	mov     r4, r0
	cmp     r1, #0x6
	bls     branch_21d1dfa
	b       branch_21d1f46
@ 0x21d1dfa

.thumb
branch_21d1dfa: @ 21d1dfa :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d1e06

Jumppoints_21d1e06:
.hword branch_21d1e14 - Jumppoints_21d1e06 - 2
.hword branch_21d1e6c - Jumppoints_21d1e06 - 2
.hword branch_21d1ea4 - Jumppoints_21d1e06 - 2
.hword branch_21d1f46 - Jumppoints_21d1e06 - 2
.hword branch_21d1f00 - Jumppoints_21d1e06 - 2
.hword branch_21d1f14 - Jumppoints_21d1e06 - 2
.hword branch_21d1f30 - Jumppoints_21d1e06 - 2
.thumb
branch_21d1e14: @ 21d1e14 :thumb
	bl      Function_21d5e08
	cmp     r0, #0x3
	bne     branch_21d1e30
	mov     r0, r4
	bl      Function_21d5f7c
	cmp     r0, #0x0
	beq     branch_21d1e30
	ldr     r1, [pc, #0x120] @ 0x21d1f48, (=0x21d4185)
	mov     r0, r4
	bl      Function_21d0eb0
	pop     {r3-r5,pc}
@ 0x21d1e30

.thumb
branch_21d1e30: @ 21d1e30 :thumb
	mov     r0, r4
	bl      Function_21d5e38
	cmp     r0, #0x1
	beq     branch_21d1e5a
	ldr     r0, [pc, #0x110] @ 0x21d1f4c, (=0x5f3)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, #0x11
	bl      Function_21d5408
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x18
	bl      Function_21d6594
	mov     r0, #0x4
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d1e5a

.thumb
branch_21d1e5a: @ 21d1e5a :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x22
	bl      Function_21d6594
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d1e6c

.thumb
branch_21d1e6c: @ 21d1e6c :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x22
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d1f46
	ldr     r0, [pc, #0xd0] @ 0x21d1f50, (=0x5dd)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, #0xb
	bl      Function_21d5408
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21df964
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x19
	bl      Function_21d6594
	mov     r0, #0x2
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d1ea4

.thumb
branch_21d1ea4: @ 21d1ea4 :thumb
	bl      Function_21dfd2c
	cmp     r0, #0x36
	bgt     branch_21d1ec4
	bge     branch_21d1ef0
	mov     r2, #0x0
	mvn     r2, r2
	cmp     r0, r2
	bgt     branch_21d1f46
	.hword  0x1e51 @ sub r1, r2, #0x1
	cmp     r0, r1
	blt     branch_21d1f46
	beq     branch_21d1eca
	cmp     r0, r2
	beq     branch_21d1ed8
	pop     {r3-r5,pc}
@ 0x21d1ec4

.thumb
branch_21d1ec4: @ 21d1ec4 :thumb
	cmp     r0, #0x37
	beq     branch_21d1ed8
	pop     {r3-r5,pc}
@ 0x21d1eca

.thumb
branch_21d1eca: @ 21d1eca :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1c
	bl      Function_21d6594
	pop     {r3-r5,pc}
@ 0x21d1ed8

.thumb
branch_21d1ed8: @ 21d1ed8 :thumb
	ldr     r0, [pc, #0x74] @ 0x21d1f50, (=0x5dd)
	bl      Function_2005748
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1a
	bl      Function_21d6594
	mov     r0, #0x6
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d1ef0

.thumb
branch_21d1ef0: @ 21d1ef0 :thumb
	ldr     r1, [pc, #0x60] @ 0x21d1f54, (=0x21d1dad)
	mov     r0, r4
	bl      Function_21d0ea0
	mov     r0, r4
	bl      Function_21d0ec0
	pop     {r3-r5,pc}
@ 0x21d1f00

.thumb
branch_21d1f00: @ 21d1f00 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x19
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d1f46
	mov     r0, #0x5
	str     r0, [r5, #0x0]
.thumb
branch_21d1f14: @ 21d1f14 :thumb
	ldr     r0, [pc, #0x40] @ 0x21d1f58, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_21d1f46
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1a
	bl      Function_21d6594
	mov     r0, #0x6
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d1f30

.thumb
branch_21d1f30: @ 21d1f30 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1a
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d1f46
	mov     r0, r4
	bl      Function_21d0ec0
.thumb
branch_21d1f46: @ 21d1f46 :thumb
	pop     {r3-r5,pc}
@ 0x21d1f48

.word 0x21d4185 @ 0x21d1f48
.word 0x5f3 @ 0x21d1f4c
.word 0x5dd @ 0x21d1f50
.word 0x21d1dad @ 0x21d1f54
.word RAM_21bf67c @ 0x21d1f58
.thumb
Function_21d1f5c: @ 21d1f5c :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r1, [r5, #0x0]
	mov     r4, r0
	cmp     r1, #0x5
	bls     branch_21d1f6a
	b       branch_21d208c
@ 0x21d1f6a

.thumb
branch_21d1f6a: @ 21d1f6a :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d1f76

Jumppoints_21d1f76:
.hword branch_21d1f82 - Jumppoints_21d1f76 - 2
.hword branch_21d208c - Jumppoints_21d1f76 - 2
.hword branch_21d2046 - Jumppoints_21d1f76 - 2
.hword branch_21d205a - Jumppoints_21d1f76 - 2
.hword branch_21d2076 - Jumppoints_21d1f76 - 2
.hword branch_21d1ff0 - Jumppoints_21d1f76 - 2
.thumb
branch_21d1f82: @ 21d1f82 :thumb
	bl      Function_21d5e38
	cmp     r0, #0x1
	beq     branch_21d1faa
	ldr     r0, [pc, #0x104] @ 0x21d2090, (=0x5f3)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, #0x11
	bl      Function_21d5408
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x18
	bl      Function_21d6594
	mov     r0, #0x2
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d1faa

.thumb
branch_21d1faa: @ 21d1faa :thumb
	mov     r0, r4
	bl      Function_21d5e08
	cmp     r0, #0x3
	bne     branch_21d1fc8
	mov     r0, r4
	bl      Function_21d5f7c
	cmp     r0, #0x0
	beq     branch_21d1fc8
	ldr     r1, [pc, #0xd4] @ 0x21d2094, (=0x21d4185)
	mov     r0, r4
	bl      Function_21d0eb0
	pop     {r3-r5,pc}
@ 0x21d1fc8

.thumb
branch_21d1fc8: @ 21d1fc8 :thumb
	ldr     r0, [pc, #0xcc] @ 0x21d2098, (=0x5dd)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, #0xc
	bl      Function_21d5408
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21df964
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x19
	bl      Function_21d6594
	mov     r0, #0x5
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d1ff0

.thumb
branch_21d1ff0: @ 21d1ff0 :thumb
	bl      Function_21dfd2c
	cmp     r0, #0x36
	bgt     branch_21d2010
	bge     branch_21d2034
	mov     r2, #0x0
	mvn     r2, r2
	cmp     r0, r2
	bgt     branch_21d208c
	.hword  0x1e51 @ sub r1, r2, #0x1
	cmp     r0, r1
	blt     branch_21d208c
	beq     branch_21d2016
	cmp     r0, r2
	beq     branch_21d2024
	pop     {r3-r5,pc}
@ 0x21d2010

.thumb
branch_21d2010: @ 21d2010 :thumb
	cmp     r0, #0x37
	beq     branch_21d2024
	pop     {r3-r5,pc}
@ 0x21d2016

.thumb
branch_21d2016: @ 21d2016 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1c
	bl      Function_21d6594
	pop     {r3-r5,pc}
@ 0x21d2024

.thumb
branch_21d2024: @ 21d2024 :thumb
	ldr     r1, [pc, #0x74] @ 0x21d209c, (=0x21d1dad)
	mov     r0, r4
	bl      Function_21d0ea0
	mov     r0, r4
	bl      Function_21d0ec0
	pop     {r3-r5,pc}
@ 0x21d2034

.thumb
branch_21d2034: @ 21d2034 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1a
	bl      Function_21d6594
	mov     r0, #0x4
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d2046

.thumb
branch_21d2046: @ 21d2046 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x19
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d208c
	mov     r0, #0x3
	str     r0, [r5, #0x0]
.thumb
branch_21d205a: @ 21d205a :thumb
	ldr     r0, [pc, #0x44] @ 0x21d20a0, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_21d208c
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1a
	bl      Function_21d6594
	mov     r0, #0x4
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d2076

.thumb
branch_21d2076: @ 21d2076 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1a
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d208c
	mov     r0, r4
	bl      Function_21d0ec0
.thumb
branch_21d208c: @ 21d208c :thumb
	pop     {r3-r5,pc}
@ 0x21d208e


.align 2


.word 0x5f3 @ 0x21d2090
.word 0x21d4185 @ 0x21d2094
.word 0x5dd @ 0x21d2098
.word 0x21d1dad @ 0x21d209c
.word RAM_21bf67c @ 0x21d20a0
.thumb
Function_21d20a4: @ 21d20a4 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r1, [r5, #0x0]
	mov     r4, r0
	cmp     r1, #0x5
	bhi     branch_21d2196
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d20bc

Jumppoints_21d20bc:
.hword branch_21d20c8 - Jumppoints_21d20bc - 2
.hword branch_21d211c - Jumppoints_21d20bc - 2
.hword branch_21d2130 - Jumppoints_21d20bc - 2
.hword branch_21d218a - Jumppoints_21d20bc - 2
.hword branch_21d22a8 - Jumppoints_21d20bc - 2
.hword branch_21d22c0 - Jumppoints_21d20bc - 2
.thumb
branch_21d20c8: @ 21d20c8 :thumb
	bl      Function_21d5e9c
	mov     r2, r0
	mov     r0, #0x67
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_200b5cc
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d5408
	mov     r0, r4
	bl      Function_21df990
	mov     r0, r4
	bl      Function_21d5ee0
	cmp     r0, #0x0
	beq     branch_21d2104
	mov     r0, r4
	bl      Function_21dfdec
	mov     r1, #0x6e
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d2104

.thumb
branch_21d2104: @ 21d2104 :thumb
	ldr     r0, [pc, #0x1d0] @ 0x21d22d8, (=0x5dd)
	bl      Function_2005748
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x19
	bl      Function_21d6594
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d211c

.thumb
branch_21d211c: @ 21d211c :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x19
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d2196
	mov     r0, #0x2
	str     r0, [r5, #0x0]
.thumb
branch_21d2130: @ 21d2130 :thumb
	mov     r0, r4
	bl      Function_21dfd2c
	mov     r1, #0x6e
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x0
	ldr     r2, [r4, r1]
	mvn     r0, r0
	cmp     r2, r0
	bgt     branch_21d215a
	.hword  0x1e83 @ sub r3, r0, #0x2
	cmp     r2, r3
	blt     branch_21d2184
	beq     branch_21d2196
	.hword  0x1e43 @ sub r3, r0, #0x1
	cmp     r2, r3
	beq     branch_21d2160
	cmp     r2, r0
	beq     branch_21d216c
	b       branch_21d2184
@ 0x21d215a

.thumb
branch_21d215a: @ 21d215a :thumb
	cmp     r2, #0x2b
	beq     branch_21d216c
	b       branch_21d2184
@ 0x21d2160

.thumb
branch_21d2160: @ 21d2160 :thumb
	sub     r1, #0xa4
	ldr     r0, [r4, r1]
	mov     r1, #0x1c
	bl      Function_21d6594
	pop     {r3-r5,pc}
@ 0x21d216c

.thumb
branch_21d216c: @ 21d216c :thumb
	ldr     r0, [pc, #0x168] @ 0x21d22d8, (=0x5dd)
	bl      Function_2005748
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1a
	bl      Function_21d6594
	mov     r0, #0x4
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d2184

.thumb
branch_21d2184: @ 21d2184 :thumb
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d218a

.thumb
branch_21d218a: @ 21d218a :thumb
	mov     r1, #0x6e
	lsl     r1, r1, #2
	ldr     r2, [r4, r1]
	sub     r2, #0x22
	cmp     r2, #0x13
	bls     branch_21d2198
.thumb
branch_21d2196: @ 21d2196 :thumb
	b       branch_21d22d4
@ 0x21d2198

.thumb
branch_21d2198: @ 21d2198 :thumb
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x21d21a4

Jumppoints_21d21a4:
.hword branch_21d21cc - Jumppoints_21d21a4 - 2
.hword branch_21d21fe - Jumppoints_21d21a4 - 2
.hword branch_21d2212 - Jumppoints_21d21a4 - 2
.hword branch_21d2246 - Jumppoints_21d21a4 - 2
.hword branch_21d2226 - Jumppoints_21d21a4 - 2
.hword branch_21d222e - Jumppoints_21d21a4 - 2
.hword branch_21d224e - Jumppoints_21d21a4 - 2
.hword branch_21d2236 - Jumppoints_21d21a4 - 2
.hword branch_21d223e - Jumppoints_21d21a4 - 2
.hword branch_21d22d4 - Jumppoints_21d21a4 - 2
.hword branch_21d22d4 - Jumppoints_21d21a4 - 2
.hword branch_21d22d4 - Jumppoints_21d21a4 - 2
.hword branch_21d22d4 - Jumppoints_21d21a4 - 2
.hword branch_21d22d4 - Jumppoints_21d21a4 - 2
.hword branch_21d22d4 - Jumppoints_21d21a4 - 2
.hword branch_21d22d4 - Jumppoints_21d21a4 - 2
.hword branch_21d22d4 - Jumppoints_21d21a4 - 2
.hword branch_21d22d4 - Jumppoints_21d21a4 - 2
.hword branch_21d226a - Jumppoints_21d21a4 - 2
.hword branch_21d226a - Jumppoints_21d21a4 - 2
.thumb
branch_21d21cc: @ 21d21cc :thumb
	bl      Function_21d5e10
	cmp     r0, #0x0
	bne     branch_21d21e8
	mov     r0, r4
	bl      Function_21d5ee0
	cmp     r0, #0x1
	bne     branch_21d21e8
	ldr     r1, [pc, #0xfc] @ 0x21d22dc, (=0x21d2b55)
	mov     r0, r4
	bl      Function_21d0eb0
	pop     {r3-r5,pc}
@ 0x21d21e8

.thumb
branch_21d21e8: @ 21d21e8 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1a
	bl      Function_21d6594
	ldr     r1, [pc, #0xe8] @ 0x21d22e0, (=0x21d2e1d)
	mov     r0, r4
	bl      Function_21d0eb0
	pop     {r3-r5,pc}
@ 0x21d21fe

.thumb
branch_21d21fe: @ 21d21fe :thumb
	sub     r1, #0xa4
	ldr     r0, [r4, r1]
	mov     r1, #0x1a
	bl      Function_21d6594
	ldr     r1, [pc, #0xd8] @ 0x21d22e4, (=0x21d2f15)
	mov     r0, r4
	bl      Function_21d0eb0
	pop     {r3-r5,pc}
@ 0x21d2212

.thumb
branch_21d2212: @ 21d2212 :thumb
	sub     r1, #0xa4
	ldr     r0, [r4, r1]
	mov     r1, #0x1a
	bl      Function_21d6594
	ldr     r1, [pc, #0xc8] @ 0x21d22e8, (=0x21d3011)
	mov     r0, r4
	bl      Function_21d0eb0
	pop     {r3-r5,pc}
@ 0x21d2226

.thumb
branch_21d2226: @ 21d2226 :thumb
	ldr     r1, [pc, #0xc4] @ 0x21d22ec, (=0x21d30d1)
	bl      Function_21d0eb0
	pop     {r3-r5,pc}
@ 0x21d222e

.thumb
branch_21d222e: @ 21d222e :thumb
	ldr     r1, [pc, #0xc0] @ 0x21d22f0, (=0x21d3295)
	bl      Function_21d0eb0
	pop     {r3-r5,pc}
@ 0x21d2236

.thumb
branch_21d2236: @ 21d2236 :thumb
	ldr     r1, [pc, #0xbc] @ 0x21d22f4, (=0x21d2a5d)
	bl      Function_21d0eb0
	pop     {r3-r5,pc}
@ 0x21d223e

.thumb
branch_21d223e: @ 21d223e :thumb
	ldr     r1, [pc, #0xb8] @ 0x21d22f8, (=0x21d35f9)
	bl      Function_21d0eb0
	pop     {r3-r5,pc}
@ 0x21d2246

.thumb
branch_21d2246: @ 21d2246 :thumb
	ldr     r1, [pc, #0xb4] @ 0x21d22fc, (=0x21d3c29)
	bl      Function_21d0eb0
	pop     {r3-r5,pc}
@ 0x21d224e

.thumb
branch_21d224e: @ 21d224e :thumb
	bl      Function_21d5e74
	cmp     r0, #0x0
	bne     branch_21d2260
	ldr     r1, [pc, #0xa8] @ 0x21d2300, (=0x21d3d45)
	mov     r0, r4
	bl      Function_21d0eb0
	pop     {r3-r5,pc}
@ 0x21d2260

.thumb
branch_21d2260: @ 21d2260 :thumb
	ldr     r1, [pc, #0xa0] @ 0x21d2304, (=0x21d3fb1)
	mov     r0, r4
	bl      Function_21d0eb0
	pop     {r3-r5,pc}
@ 0x21d226a

.thumb
branch_21d226a: @ 21d226a :thumb
	bl      Function_21d5b70
	ldr     r1, [r4, #0x8]
	mov     r0, r4
	mov     r2, r4
	bl      Function_21d5888
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1a
	bl      Function_21d6594
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x30
	bl      Function_21d6594
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x6
	bl      Function_21d6594
	ldr     r0, [pc, #0x38] @ 0x21d22d8, (=0x5dd)
	bl      Function_2005748
	mov     r0, #0x5
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d22a8

.thumb
branch_21d22a8: @ 21d22a8 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1a
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d22d4
	mov     r0, r4
	bl      Function_21d0ec0
	pop     {r3-r5,pc}
@ 0x21d22c0

.thumb
branch_21d22c0: @ 21d22c0 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d6628
	cmp     r0, #0x0
	beq     branch_21d22d4
	mov     r0, r4
	bl      Function_21d0ec0
.thumb
branch_21d22d4: @ 21d22d4 :thumb
	pop     {r3-r5,pc}
@ 0x21d22d6


.align 2


.word 0x5dd @ 0x21d22d8
.word 0x21d2b55 @ 0x21d22dc
.word 0x21d2e1d @ 0x21d22e0
.word 0x21d2f15 @ 0x21d22e4
.word 0x21d3011 @ 0x21d22e8
.word 0x21d30d1 @ 0x21d22ec
.word 0x21d3295 @ 0x21d22f0
.word 0x21d2a5d @ 0x21d22f4
.word 0x21d35f9 @ 0x21d22f8
.word 0x21d3c29 @ 0x21d22fc
.word 0x21d3d45 @ 0x21d2300
.word 0x21d3fb1 @ 0x21d2304
.thumb
Function_21d2308: @ 21d2308 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r1, [r5, #0x0]
	mov     r4, r0
	cmp     r1, #0x7
	bls     branch_21d2316
	b       branch_21d2672
@ 0x21d2316

.thumb
branch_21d2316: @ 21d2316 :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d2322

Jumppoints_21d2322:
.hword branch_21d2332 - Jumppoints_21d2322 - 2
.hword branch_21d23dc - Jumppoints_21d2322 - 2
.hword branch_21d23f0 - Jumppoints_21d2322 - 2
.hword branch_21d2450 - Jumppoints_21d2322 - 2
.hword branch_21d25fe - Jumppoints_21d2322 - 2
.hword branch_21d2616 - Jumppoints_21d2322 - 2
.hword branch_21d2642 - Jumppoints_21d2322 - 2
.hword branch_21d2658 - Jumppoints_21d2322 - 2
.thumb
branch_21d2332: @ 21d2332 :thumb
	bl      Function_21d5f7c
	mov     r2, r0
	beq     branch_21d2350
	mov     r0, #0x67
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_200b70c
	mov     r0, r4
	mov     r1, #0x19
	bl      Function_21d5408
	b       branch_21d2378
@ 0x21d2350

.thumb
branch_21d2350: @ 21d2350 :thumb
	mov     r0, r4
	bl      Function_21d5e74
	mov     r2, r0
	beq     branch_21d2370
	mov     r0, #0x67
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_200b70c
	mov     r0, r4
	mov     r1, #0x19
	bl      Function_21d5408
	b       branch_21d2378
@ 0x21d2370

.thumb
branch_21d2370: @ 21d2370 :thumb
	mov     r0, r4
	mov     r1, #0x1c
	bl      Function_21d5408
.thumb
branch_21d2378: @ 21d2378 :thumb
	mov     r0, r4
	bl      Function_21dfad0
	mov     r0, r4
	bl      Function_21d5fc8
	cmp     r0, #0x0
	beq     branch_21d23a8
	ldr     r0, [pc, #0x2e8] @ 0x21d2674, (=0x5f3)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, #0x22
	bl      Function_21d5408
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x18
	bl      Function_21d6594
	mov     r0, #0x7
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d23a8

.thumb
branch_21d23a8: @ 21d23a8 :thumb
	mov     r0, r4
	bl      Function_21d5ee0
	cmp     r0, #0x0
	beq     branch_21d23c4
	mov     r0, r4
	bl      Function_21dfdec
	mov     r1, #0x6e
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d23c4

.thumb
branch_21d23c4: @ 21d23c4 :thumb
	ldr     r0, [pc, #0x2b0] @ 0x21d2678, (=0x5dd)
	bl      Function_2005748
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x19
	bl      Function_21d6594
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d23dc

.thumb
branch_21d23dc: @ 21d23dc :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x19
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d245c
	mov     r0, #0x2
	str     r0, [r5, #0x0]
.thumb
branch_21d23f0: @ 21d23f0 :thumb
	mov     r0, r4
	bl      Function_21dfd2c
	mov     r1, #0x6e
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x0
	ldr     r2, [r4, r1]
	mvn     r0, r0
	cmp     r2, r0
	bgt     branch_21d241a
	.hword  0x1e83 @ sub r3, r0, #0x2
	cmp     r2, r3
	blt     branch_21d2444
	beq     branch_21d245c
	.hword  0x1e43 @ sub r3, r0, #0x1
	cmp     r2, r3
	beq     branch_21d2420
	cmp     r2, r0
	beq     branch_21d242c
	b       branch_21d2444
@ 0x21d241a

.thumb
branch_21d241a: @ 21d241a :thumb
	cmp     r2, #0x33
	beq     branch_21d242c
	b       branch_21d2444
@ 0x21d2420

.thumb
branch_21d2420: @ 21d2420 :thumb
	sub     r1, #0xa4
	ldr     r0, [r4, r1]
	mov     r1, #0x1c
	bl      Function_21d6594
	pop     {r3-r5,pc}
@ 0x21d242c

.thumb
branch_21d242c: @ 21d242c :thumb
	ldr     r0, [pc, #0x248] @ 0x21d2678, (=0x5dd)
	bl      Function_2005748
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1a
	bl      Function_21d6594
	mov     r0, #0x4
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d2444

.thumb
branch_21d2444: @ 21d2444 :thumb
	ldr     r0, [pc, #0x230] @ 0x21d2678, (=0x5dd)
	bl      Function_2005748
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d2450

.thumb
branch_21d2450: @ 21d2450 :thumb
	mov     r1, #0x6e
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	sub     r1, #0x2e
	cmp     r1, #0x4
	bls     branch_21d245e
.thumb
branch_21d245c: @ 21d245c :thumb
	b       branch_21d2672
@ 0x21d245e

.thumb
branch_21d245e: @ 21d245e :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d246a

Jumppoints_21d246a:
.hword branch_21d2474 - Jumppoints_21d246a - 2
.hword branch_21d24f2 - Jumppoints_21d246a - 2
.hword branch_21d2554 - Jumppoints_21d246a - 2
.hword branch_21d255c - Jumppoints_21d246a - 2
.hword branch_21d25f6 - Jumppoints_21d246a - 2
.thumb
branch_21d2474: @ 21d2474 :thumb
	bl      Function_21d5f7c
	cmp     r0, #0x70
	bne     branch_21d24b2
	ldr     r0, [r4, #0x4c]
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetBoxPkmnData
	ldr     r1, [pc, #0x1f4] @ 0x21d267c, (=0x1e7)
	cmp     r0, r1
	beq     branch_21d24b2
	sub     r1, #0x4b
	ldr     r0, [r4, r1]
	mov     r1, #0x0
	mov     r2, #0x70
	bl      Function_200b70c
	mov     r0, r4
	mov     r1, #0x2d
	bl      Function_21d5408
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x18
	bl      Function_21d6594
	mov     r0, #0x7
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d24b2

.thumb
branch_21d24b2: @ 21d24b2 :thumb
	mov     r0, r4
	bl      Function_21d5f7c
	cmp     r0, #0x0
	beq     branch_21d24e8
	mov     r0, r4
	mov     r1, r4
	bl      Function_21d5d60
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1a
	bl      Function_21d6594
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x14
	bl      Function_21d6594
	ldr     r0, [pc, #0x198] @ 0x21d2678, (=0x5dd)
	bl      Function_2005748
	mov     r0, #0x5
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d24e8

.thumb
branch_21d24e8: @ 21d24e8 :thumb
	ldr     r1, [pc, #0x194] @ 0x21d2680, (=0x21d3d45)
	mov     r0, r4
	bl      Function_21d0eb0
	pop     {r3-r5,pc}
@ 0x21d24f2

.thumb
branch_21d24f2: @ 21d24f2 :thumb
	bl      Function_21d5e74
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_207d2d0
	cmp     r0, #0x0
	beq     branch_21d2522
	ldr     r0, [pc, #0x170] @ 0x21d2674, (=0x5f3)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, #0x18
	bl      Function_21d5408
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x18
	bl      Function_21d6594
	mov     r0, #0x7
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d2522

.thumb
branch_21d2522: @ 21d2522 :thumb
	mov     r0, r4
	mov     r1, r4
	bl      Function_21d5d28
	mov     r0, r4
	bl      Function_21d0f14
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1a
	bl      Function_21d6594
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x13
	bl      Function_21d6594
	ldr     r0, [pc, #0x12c] @ 0x21d2678, (=0x5dd)
	bl      Function_2005748
	mov     r0, #0x5
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d2554

.thumb
branch_21d2554: @ 21d2554 :thumb
	ldr     r1, [pc, #0x12c] @ 0x21d2684, (=0x21d4391)
	bl      Function_21d0eb0
	pop     {r3-r5,pc}
@ 0x21d255c

.thumb
branch_21d255c: @ 21d255c :thumb
	bl      Function_21d5e74
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_207d2d0
	cmp     r0, #0x0
	beq     branch_21d258c
	ldr     r0, [pc, #0x104] @ 0x21d2674, (=0x5f3)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, #0x18
	bl      Function_21d5408
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x18
	bl      Function_21d6594
	mov     r0, #0x7
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d258c

.thumb
branch_21d258c: @ 21d258c :thumb
	ldr     r0, [pc, #0xf8] @ 0x21d2688, (=0x112)
	ldrh    r0, [r4, r0]
	cmp     r0, #0x70
	bne     branch_21d25ca
	ldr     r0, [r4, #0x4c]
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetBoxPkmnData
	ldr     r1, [pc, #0xdc] @ 0x21d267c, (=0x1e7)
	cmp     r0, r1
	beq     branch_21d25ca
	sub     r1, #0x4b
	ldr     r0, [r4, r1]
	mov     r1, #0x0
	mov     r2, #0x70
	bl      Function_200b70c
	mov     r0, r4
	mov     r1, #0x2d
	bl      Function_21d5408
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x18
	bl      Function_21d6594
	mov     r0, #0x7
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d25ca

.thumb
branch_21d25ca: @ 21d25ca :thumb
	mov     r0, r4
	mov     r1, r4
	bl      Function_21d5d78
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1a
	bl      Function_21d6594
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x15
	bl      Function_21d6594
	ldr     r0, [pc, #0x8c] @ 0x21d2678, (=0x5dd)
	bl      Function_2005748
	mov     r0, #0x5
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d25f6

.thumb
branch_21d25f6: @ 21d25f6 :thumb
	ldr     r1, [pc, #0x94] @ 0x21d268c, (=0x21d4185)
	bl      Function_21d0eb0
	pop     {r3-r5,pc}
@ 0x21d25fe

.thumb
branch_21d25fe: @ 21d25fe :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1a
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d2672
	mov     r0, r4
	bl      Function_21d0ec0
	pop     {r3-r5,pc}
@ 0x21d2616

.thumb
branch_21d2616: @ 21d2616 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d6628
	cmp     r0, #0x0
	beq     branch_21d2672
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x6
	bl      Function_21d6594
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x16
	bl      Function_21d6594
	mov     r0, #0x6
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d2642

.thumb
branch_21d2642: @ 21d2642 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d6628
	cmp     r0, #0x0
	beq     branch_21d2672
	mov     r0, r4
	bl      Function_21d0ec0
	pop     {r3-r5,pc}
@ 0x21d2658

.thumb
branch_21d2658: @ 21d2658 :thumb
	ldr     r0, [pc, #0x34] @ 0x21d2690, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_21d2672
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1a
	bl      Function_21d6594
	mov     r0, #0x6
	str     r0, [r5, #0x0]
.thumb
branch_21d2672: @ 21d2672 :thumb
	pop     {r3-r5,pc}
@ 0x21d2674

.word 0x5f3 @ 0x21d2674
.word 0x5dd @ 0x21d2678
.word 0x1e7 @ 0x21d267c
.word 0x21d3d45 @ 0x21d2680
.word 0x21d4391 @ 0x21d2684
.word 0x112 @ 0x21d2688
.word 0x21d4185 @ 0x21d268c
.word RAM_21bf67c @ 0x21d2690
.thumb
Function_21d2694: @ 21d2694 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r1, [r5, #0x0]
	mov     r4, r0
	cmp     r1, #0x7
	bls     branch_21d26a2
	b       branch_21d27d4
@ 0x21d26a2

.thumb
branch_21d26a2: @ 21d26a2 :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d26ae

Jumppoints_21d26ae:
.hword branch_21d26be - Jumppoints_21d26ae - 2
.hword branch_21d2702 - Jumppoints_21d26ae - 2
.hword branch_21d2716 - Jumppoints_21d26ae - 2
.hword branch_21d2766 - Jumppoints_21d26ae - 2
.hword branch_21d27a6 - Jumppoints_21d26ae - 2
.hword branch_21d27d4 - Jumppoints_21d26ae - 2
.hword branch_21d27d4 - Jumppoints_21d26ae - 2
.hword branch_21d27be - Jumppoints_21d26ae - 2
.thumb
branch_21d26be: @ 21d26be :thumb
	mov     r1, #0x7
	bl      Function_21d5408
	mov     r0, r4
	bl      Function_21dfb50
	mov     r0, r4
	bl      Function_21d5ee0
	cmp     r0, #0x0
	ldr     r0, [pc, #0x104] @ 0x21d27d8, (=0x5dd)
	beq     branch_21d26ec
	bl      Function_2005748
	mov     r0, r4
	bl      Function_21dfdec
	mov     r1, #0x6e
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d26ec

.thumb
branch_21d26ec: @ 21d26ec :thumb
	bl      Function_2005748
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x19
	bl      Function_21d6594
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d2702

.thumb
branch_21d2702: @ 21d2702 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x19
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d27d4
	mov     r0, #0x2
	str     r0, [r5, #0x0]
.thumb
branch_21d2716: @ 21d2716 :thumb
	mov     r0, r4
	bl      Function_21dfd2c
	mov     r1, #0x6e
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	.hword  0x1cc0 @ add r0, r0, #0x3
	cmp     r0, #0x6
	bhi     branch_21d2760
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d2736

Jumppoints_21d2736:
.hword branch_21d27d4 - Jumppoints_21d2736 - 2
.hword branch_21d2744 - Jumppoints_21d2736 - 2
.hword branch_21d2750 - Jumppoints_21d2736 - 2
.hword branch_21d2760 - Jumppoints_21d2736 - 2
.hword branch_21d2760 - Jumppoints_21d2736 - 2
.hword branch_21d2760 - Jumppoints_21d2736 - 2
.hword branch_21d2750 - Jumppoints_21d2736 - 2
.thumb
branch_21d2744: @ 21d2744 :thumb
	sub     r1, #0xa4
	ldr     r0, [r4, r1]
	mov     r1, #0x1c
	bl      Function_21d6594
	pop     {r3-r5,pc}
@ 0x21d2750

.thumb
branch_21d2750: @ 21d2750 :thumb
	sub     r1, #0xa4
	ldr     r0, [r4, r1]
	mov     r1, #0x1a
	bl      Function_21d6594
	mov     r0, #0x4
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d2760

.thumb
branch_21d2760: @ 21d2760 :thumb
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d2766

.thumb
branch_21d2766: @ 21d2766 :thumb
	mov     r1, #0x6e
	lsl     r1, r1, #2
	ldr     r2, [r4, r1]
	cmp     r2, #0x0
	beq     branch_21d277a
	cmp     r2, #0x1
	beq     branch_21d278e
	cmp     r2, #0x2
	beq     branch_21d279e
	pop     {r3-r5,pc}
@ 0x21d277a

.thumb
branch_21d277a: @ 21d277a :thumb
	sub     r1, #0xa4
	ldr     r0, [r4, r1]
	mov     r1, #0x1a
	bl      Function_21d6594
	ldr     r1, [pc, #0x54] @ 0x21d27dc, (=0x21d27e9)
	mov     r0, r4
	bl      Function_21d0eb0
	pop     {r3-r5,pc}
@ 0x21d278e

.thumb
branch_21d278e: @ 21d278e :thumb
	sub     r1, #0xa4
	ldr     r0, [r4, r1]
	mov     r1, #0x1b
	bl      Function_21d6594
	mov     r0, #0x7
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d279e

.thumb
branch_21d279e: @ 21d279e :thumb
	ldr     r1, [pc, #0x40] @ 0x21d27e0, (=0x21d3b35)
	bl      Function_21d0eb0
	pop     {r3-r5,pc}
@ 0x21d27a6

.thumb
branch_21d27a6: @ 21d27a6 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1a
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d27d4
	mov     r0, r4
	bl      Function_21d0ec0
	pop     {r3-r5,pc}
@ 0x21d27be

.thumb
branch_21d27be: @ 21d27be :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d6628
	cmp     r0, #0x0
	beq     branch_21d27d4
	ldr     r1, [pc, #0x14] @ 0x21d27e4, (=0x21d2891)
	mov     r0, r4
	bl      Function_21d0eb0
.thumb
branch_21d27d4: @ 21d27d4 :thumb
	pop     {r3-r5,pc}
@ 0x21d27d6


.align 2


.word 0x5dd @ 0x21d27d8
.word 0x21d27e9 @ 0x21d27dc
.word 0x21d3b35 @ 0x21d27e0
.word 0x21d2891 @ 0x21d27e4
.thumb
Function_21d27e8: @ 21d27e8 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	ldr     r1, [r4, #0x0]
	mov     r5, r0
	cmp     r1, #0x0
	beq     branch_21d27fe
	cmp     r1, #0x1
	beq     branch_21d2812
	cmp     r1, #0x2
	beq     branch_21d2876
	pop     {r4-r6,pc}
@ 0x21d27fe

.thumb
branch_21d27fe: @ 21d27fe :thumb
	bl      Function_21d5e68
	mov     r1, r0
	mov     r0, r5
	mov     r2, #0x8
	bl      Function_21d443c
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r4-r6,pc}
@ 0x21d2812

.thumb
branch_21d2812: @ 21d2812 :thumb
	bl      Function_21d4468
	cmp     r0, #0x0
	beq     branch_21d288a
	ldr     r0, [pc, #0x70] @ 0x21d288c, (=0x1c1)
	ldsb    r6, [r5, r0]
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r6, r0
	beq     branch_21d2830
	mov     r0, r5
	bl      Function_21d5e68
	cmp     r6, r0
	bne     branch_21d2836
.thumb
branch_21d2830: @ 21d2830 :thumb
	mov     r0, #0x2
	str     r0, [r4, #0x0]
	b       branch_21d285c
@ 0x21d2836

.thumb
branch_21d2836: @ 21d2836 :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_21d5d08
	mov     r1, #0x12
	lsl     r1, r1, #4
	ldr     r0, [r5, r1]
	add     r1, #0xa1
	ldsb    r1, [r5, r1]
	bl      Function_2079a94
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x4
	bl      Function_21d6594
	mov     r0, #0x2
	str     r0, [r4, #0x0]
.thumb
branch_21d285c: @ 21d285c :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1a
	bl      Function_21d6594
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x20
	bl      Function_21d6594
	pop     {r4-r6,pc}
@ 0x21d2876

.thumb
branch_21d2876: @ 21d2876 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_21d6628
	cmp     r0, #0x0
	beq     branch_21d288a
	mov     r0, r5
	bl      Function_21d0ec0
.thumb
branch_21d288a: @ 21d288a :thumb
	pop     {r4-r6,pc}
@ 0x21d288c

.word 0x1c1 @ 0x21d288c
.thumb
Function_21d2890: @ 21d2890 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x8
	bhi     branch_21d28fc
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d28a8

Jumppoints_21d28a8:
.hword branch_21d28ba - Jumppoints_21d28a8 - 2
.hword branch_21d28c6 - Jumppoints_21d28a8 - 2
.hword branch_21d28ec - Jumppoints_21d28a8 - 2
.hword branch_21d2902 - Jumppoints_21d28a8 - 2
.hword branch_21d2986 - Jumppoints_21d28a8 - 2
.hword branch_21d299a - Jumppoints_21d28a8 - 2
.hword branch_21d2a20 - Jumppoints_21d28a8 - 2
.hword branch_21d2a32 - Jumppoints_21d28a8 - 2
.hword branch_21d2a46 - Jumppoints_21d28a8 - 2
.thumb
branch_21d28ba: @ 21d28ba :thumb
	mov     r0, #0x6e
	mov     r1, #0x4
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r0, #0x1
	str     r0, [r5, #0x0]
.thumb
branch_21d28c6: @ 21d28c6 :thumb
	mov     r0, r4
	mov     r1, #0x9
	bl      Function_21d5408
	mov     r1, #0x6e
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	mov     r0, r4
	bl      Function_21dfb94
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x19
	bl      Function_21d6594
	mov     r0, #0x2
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d28ec

.thumb
branch_21d28ec: @ 21d28ec :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x19
	bl      Function_21d6600
	cmp     r0, #0x0
	bne     branch_21d28fe
.thumb
branch_21d28fc: @ 21d28fc :thumb
	b       branch_21d2a5a
@ 0x21d28fe

.thumb
branch_21d28fe: @ 21d28fe :thumb
	mov     r0, #0x3
	str     r0, [r5, #0x0]
.thumb
branch_21d2902: @ 21d2902 :thumb
	mov     r0, r4
	bl      Function_21dfd2c
	.hword  0x1cc0 @ add r0, r0, #0x3
	cmp     r0, #0xc
	bhi     branch_21d2942
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d291a

Jumppoints_21d291a:
.hword branch_21d2a5a - Jumppoints_21d291a - 2
.hword branch_21d2934 - Jumppoints_21d291a - 2
.hword branch_21d2942 - Jumppoints_21d291a - 2
.hword branch_21d2942 - Jumppoints_21d291a - 2
.hword branch_21d2942 - Jumppoints_21d291a - 2
.hword branch_21d2942 - Jumppoints_21d291a - 2
.hword branch_21d2942 - Jumppoints_21d291a - 2
.hword branch_21d2954 - Jumppoints_21d291a - 2
.hword branch_21d2954 - Jumppoints_21d291a - 2
.hword branch_21d2954 - Jumppoints_21d291a - 2
.hword branch_21d2954 - Jumppoints_21d291a - 2
.hword branch_21d2954 - Jumppoints_21d291a - 2
.hword branch_21d2954 - Jumppoints_21d291a - 2
.thumb
branch_21d2934: @ 21d2934 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1c
	bl      Function_21d6594
	pop     {r3-r5,pc}
@ 0x21d2942

.thumb
branch_21d2942: @ 21d2942 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1a
	bl      Function_21d6594
	mov     r0, #0x8
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d2954

.thumb
branch_21d2954: @ 21d2954 :thumb
	mov     r0, r4
	bl      Function_21dfddc
	mov     r1, #0x6e
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, r4
	mov     r1, #0xa
	bl      Function_21d5408
	mov     r1, #0x6e
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	mov     r0, r4
	bl      Function_21dfc04
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x19
	bl      Function_21d6594
	mov     r0, #0x4
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d2986

.thumb
branch_21d2986: @ 21d2986 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x19
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d2a5a
	mov     r0, #0x5
	str     r0, [r5, #0x0]
.thumb
branch_21d299a: @ 21d299a :thumb
	mov     r0, r4
	bl      Function_21dfd2c
	.hword  0x1cc0 @ add r0, r0, #0x3
	cmp     r0, #0x6
	bhi     branch_21d29d4
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d29b2

Jumppoints_21d29b2:
.hword branch_21d2a5a - Jumppoints_21d29b2 - 2
.hword branch_21d29c0 - Jumppoints_21d29b2 - 2
.hword branch_21d29ce - Jumppoints_21d29b2 - 2
.hword branch_21d29d4 - Jumppoints_21d29b2 - 2
.hword branch_21d29d4 - Jumppoints_21d29b2 - 2
.hword branch_21d29d4 - Jumppoints_21d29b2 - 2
.hword branch_21d29ce - Jumppoints_21d29b2 - 2
.thumb
branch_21d29c0: @ 21d29c0 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1c
	bl      Function_21d6594
	pop     {r3-r5,pc}
@ 0x21d29ce

.thumb
branch_21d29ce: @ 21d29ce :thumb
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d29d4

.thumb
branch_21d29d4: @ 21d29d4 :thumb
	mov     r0, r4
	bl      Function_21dfddc
	mov     r1, #0x6e
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r2, [r4, r1]
	cmp     r2, #0xa
	blt     branch_21d2a16
	cmp     r2, #0x21
	bgt     branch_21d2a16
	sub     r1, #0x98
	ldr     r0, [r4, r1]
	mov     r1, #0x0
	mvn     r1, r1
	sub     r2, #0xa
	bl      Function_2079ac4
	mov     r1, #0x12
	lsl     r1, r1, #4
	ldr     r1, [r4, r1]
	mov     r0, r4
	bl      Function_21d4f5c
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1a
	bl      Function_21d6594
	mov     r0, #0x6
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d2a16

.thumb
branch_21d2a16: @ 21d2a16 :thumb
	bl      ErrorHandling
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d2a20

.thumb
branch_21d2a20: @ 21d2a20 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x21
	bl      Function_21d6594
	mov     r0, #0x8
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d2a32

.thumb
branch_21d2a32: @ 21d2a32 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d6628
	cmp     r0, #0x0
	beq     branch_21d2a5a
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d2a46

.thumb
branch_21d2a46: @ 21d2a46 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d6628
	cmp     r0, #0x0
	beq     branch_21d2a5a
	mov     r0, r4
	bl      Function_21d0ec0
.thumb
branch_21d2a5a: @ 21d2a5a :thumb
	pop     {r3-r5,pc}
@ 0x21d2a5c

.thumb
Function_21d2a5c: @ 21d2a5c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r1, [r4, #0x0]
	mov     r5, r0
	cmp     r1, #0x0
	beq     branch_21d2a72
	cmp     r1, #0x1
	beq     branch_21d2a90
	cmp     r1, #0x2
	beq     branch_21d2b3e
	pop     {r3-r5,pc}
@ 0x21d2a72

.thumb
branch_21d2a72: @ 21d2a72 :thumb
	bl      Function_21dfc80
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_21d5408
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x19
	bl      Function_21d6594
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x21d2a90

.thumb
branch_21d2a90: @ 21d2a90 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_21d6628
	cmp     r0, #0x0
	beq     branch_21d2b52
	mov     r0, r5
	bl      Function_21dfd2c
	mov     r2, #0x2
	mov     r1, r0
	mvn     r2, r2
	cmp     r1, r2
	bhi     branch_21d2ac0
	bcs     branch_21d2b52
	cmp     r1, #0x2d
	bhi     branch_21d2b20
	cmp     r1, #0x2c
	bcc     branch_21d2b20
	beq     branch_21d2af0
	cmp     r1, #0x2d
	beq     branch_21d2ade
	b       branch_21d2b20
@ 0x21d2ac0

.thumb
branch_21d2ac0: @ 21d2ac0 :thumb
	add     r0, r2, #0x1
	cmp     r1, r0
	bcc     branch_21d2b20
	beq     branch_21d2ad0
	add     r0, r2, #0x2
	cmp     r1, r0
	beq     branch_21d2ade
	b       branch_21d2b20
@ 0x21d2ad0

.thumb
branch_21d2ad0: @ 21d2ad0 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1c
	bl      Function_21d6594
	pop     {r3-r5,pc}
@ 0x21d2ade

.thumb
branch_21d2ade: @ 21d2ade :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1a
	bl      Function_21d6594
	mov     r0, #0x2
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x21d2af0

.thumb
branch_21d2af0: @ 21d2af0 :thumb
	mov     r0, r5
	bl      Function_21d5bac
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1a
	bl      Function_21d6594
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x7
	bl      Function_21d6594
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x27
	bl      Function_21d6594
	mov     r0, #0x2
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x21d2b20

.thumb
branch_21d2b20: @ 21d2b20 :thumb
	cmp     r1, #0x38
	bcc     branch_21d2b52
	cmp     r1, #0x3d
	bhi     branch_21d2b52
	mov     r0, r5
	sub     r1, #0x38
	bl      Function_21dfce4
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1d
	bl      Function_21d6594
	pop     {r3-r5,pc}
@ 0x21d2b3e

.thumb
branch_21d2b3e: @ 21d2b3e :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_21d6628
	cmp     r0, #0x0
	beq     branch_21d2b52
	mov     r0, r5
	bl      Function_21d0ec0
.thumb
branch_21d2b52: @ 21d2b52 :thumb
	pop     {r3-r5,pc}
@ 0x21d2b54

.thumb
Function_21d2b54: @ 21d2b54 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r1, [r5, #0x0]
	mov     r4, r0
	cmp     r1, #0x5
	bls     branch_21d2b62
	b       branch_21d2db6
@ 0x21d2b62

.thumb
branch_21d2b62: @ 21d2b62 :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d2b6e

Jumppoints_21d2b6e:
.hword branch_21d2b7a - Jumppoints_21d2b6e - 2
.hword branch_21d2baa - Jumppoints_21d2b6e - 2
.hword branch_21d2c4c - Jumppoints_21d2b6e - 2
.hword branch_21d2d8e - Jumppoints_21d2b6e - 2
.hword branch_21d2da2 - Jumppoints_21d2b6e - 2
.hword branch_21d2d5a - Jumppoints_21d2b6e - 2
.thumb
branch_21d2b7a: @ 21d2b7a :thumb
	ldr     r1, [pc, #0x23c] @ 0x21d2db8, (=RAM_21bf67c)
	ldr     r2, [r1, #0x44]
	mov     r1, #0x1
	tst     r1, r2
	beq     branch_21d2ba2
	mov     r1, r4
	bl      Function_21d5594
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x2c
	bl      Function_21d6594
	ldr     r0, [pc, #0x224] @ 0x21d2dbc, (=0x5dc)
	bl      Function_2005748
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d2ba2

.thumb
branch_21d2ba2: @ 21d2ba2 :thumb
	ldr     r1, [pc, #0x21c] @ 0x21d2dc0, (=0x21d2e1d)
	bl      Function_21d0eb0
	pop     {r3-r5,pc}
@ 0x21d2baa

.thumb
branch_21d2baa: @ 21d2baa :thumb
	ldr     r1, [pc, #0x20c] @ 0x21d2db8, (=RAM_21bf67c)
	ldr     r2, [r1, #0x44]
	mov     r1, #0x1
	tst     r1, r2
	beq     branch_21d2c0e
	mov     r0, r2
	mov     r1, r4
	bl      Function_21d5150
	cmp     r0, #0x1
	beq     branch_21d2bdc
	cmp     r0, #0x2
	bne     branch_21d2cae
	ldr     r1, [pc, #0x1f0] @ 0x21d2db8, (=RAM_21bf67c)
	mov     r0, #0xf0
	ldr     r2, [r1, #0x44]
	ldr     r1, [r1, #0x48]
	and     r2, r0
	and     r0, r1
	cmp     r2, r0
	bne     branch_21d2cae
	ldr     r0, [pc, #0x1ec] @ 0x21d2dc4, (=0x5f3)
	bl      Function_2005748
	pop     {r3-r5,pc}
@ 0x21d2bdc

.thumb
branch_21d2bdc: @ 21d2bdc :thumb
	mov     r0, r4
	mov     r1, r4
	bl      Function_21d55b0
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x2e
	bl      Function_21d6594
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x5
	bl      Function_21d6594
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x6
	bl      Function_21d6594
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d2c0e

.thumb
branch_21d2c0e: @ 21d2c0e :thumb
	bl      Function_21d5f20
	cmp     r0, #0x0
	beq     branch_21d2c2c
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x2d
	bl      Function_21d6594
	ldr     r1, [pc, #0x19c] @ 0x21d2dc0, (=0x21d2e1d)
	mov     r0, r4
	bl      Function_21d0eb0
	pop     {r3-r5,pc}
@ 0x21d2c2c

.thumb
branch_21d2c2c: @ 21d2c2c :thumb
	mov     r0, r4
	mov     r1, r4
	bl      Function_21d54a4
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x2f
	bl      Function_21d6594
	ldr     r0, [pc, #0x184] @ 0x21d2dc8, (=0x5eb)
	bl      Function_2005748
	mov     r0, #0x2
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d2c4c

.thumb
branch_21d2c4c: @ 21d2c4c :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d6628
	cmp     r0, #0x0
	beq     branch_21d2cae
	ldr     r0, [pc, #0x15c] @ 0x21d2db8, (=RAM_21bf67c)
	mov     r1, r4
	ldr     r0, [r0, #0x44]
	bl      Function_21d5150
	cmp     r0, #0x4
	bhi     branch_21d2cae
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d2c74

Jumppoints_21d2c74:
.hword branch_21d2d10 - Jumppoints_21d2c74 - 2
.hword branch_21d2c96 - Jumppoints_21d2c74 - 2
.hword branch_21d2c7e - Jumppoints_21d2c74 - 2
.hword branch_21d2cbc - Jumppoints_21d2c74 - 2
.hword branch_21d2ce6 - Jumppoints_21d2c74 - 2
.thumb
branch_21d2c7e: @ 21d2c7e :thumb
	ldr     r1, [pc, #0x138] @ 0x21d2db8, (=RAM_21bf67c)
	mov     r0, #0xf0
	ldr     r2, [r1, #0x44]
	ldr     r1, [r1, #0x48]
	and     r2, r0
	and     r0, r1
	cmp     r2, r0
	bne     branch_21d2cae
	ldr     r0, [pc, #0x134] @ 0x21d2dc4, (=0x5f3)
	bl      Function_2005748
	pop     {r3-r5,pc}
@ 0x21d2c96

.thumb
branch_21d2c96: @ 21d2c96 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x5
	bl      Function_21d6594
	mov     r0, r4
	bl      Function_21d5e38
	mov     r1, #0x6
	tst     r0, r1
	beq     branch_21d2cb0
.thumb
branch_21d2cae: @ 21d2cae :thumb
	b       branch_21d2db6
@ 0x21d2cb0

.thumb
branch_21d2cb0: @ 21d2cb0 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d6594
	pop     {r3-r5,pc}
@ 0x21d2cbc

.thumb
branch_21d2cbc: @ 21d2cbc :thumb
	mov     r0, r4
	bl      Function_21d5ce8
	mov     r0, r4
	bl      Function_21d5e68
	mov     r1, r0
	mov     r0, #0x12
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_2079a94
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x4
	bl      Function_21d6594
	mov     r0, #0x5
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d2ce6

.thumb
branch_21d2ce6: @ 21d2ce6 :thumb
	mov     r0, r4
	bl      Function_21d5cbc
	mov     r0, r4
	bl      Function_21d5e68
	mov     r1, r0
	mov     r0, #0x12
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_2079a94
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x4
	bl      Function_21d6594
	mov     r0, #0x5
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d2d10

.thumb
branch_21d2d10: @ 21d2d10 :thumb
	ldr     r0, [pc, #0xa4] @ 0x21d2db8, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_21d2d4c
	mov     r0, r4
	bl      Function_21d2dd0
	cmp     r0, #0x0
	beq     branch_21d2d44
	mov     r0, r4
	mov     r1, r4
	bl      Function_21d56ac
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0xa
	bl      Function_21d6594
	ldr     r0, [pc, #0x90] @ 0x21d2dcc, (=0x5ea)
	bl      Function_2005748
	mov     r0, #0x4
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d2d44

.thumb
branch_21d2d44: @ 21d2d44 :thumb
	ldr     r0, [pc, #0x7c] @ 0x21d2dc4, (=0x5f3)
	bl      Function_2005748
	pop     {r3-r5,pc}
@ 0x21d2d4c

.thumb
branch_21d2d4c: @ 21d2d4c :thumb
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_21d2db6
	ldr     r0, [pc, #0x70] @ 0x21d2dc4, (=0x5f3)
	bl      Function_2005748
	pop     {r3-r5,pc}
@ 0x21d2d5a

.thumb
branch_21d2d5a: @ 21d2d5a :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x4
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d2db6
	mov     r0, r4
	bl      Function_21d5e38
	mov     r1, #0x6
	tst     r0, r1
	bne     branch_21d2d88
	mov     r0, r4
	bl      Function_21d52f4
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x6
	bl      Function_21d6594
.thumb
branch_21d2d88: @ 21d2d88 :thumb
	mov     r0, #0x2
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d2d8e

.thumb
branch_21d2d8e: @ 21d2d8e :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d6628
	cmp     r0, #0x0
	beq     branch_21d2db6
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d2da2

.thumb
branch_21d2da2: @ 21d2da2 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d6628
	cmp     r0, #0x0
	beq     branch_21d2db6
	mov     r0, r4
	bl      Function_21d0ec0
.thumb
branch_21d2db6: @ 21d2db6 :thumb
	pop     {r3-r5,pc}
@ 0x21d2db8

.word RAM_21bf67c @ 0x21d2db8
.word 0x5dc @ 0x21d2dbc
.word 0x21d2e1d @ 0x21d2dc0
.word 0x5f3 @ 0x21d2dc4
.word 0x5eb @ 0x21d2dc8
.word 0x5ea @ 0x21d2dcc
.thumb
Function_21d2dd0: @ 21d2dd0 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	add     r5, #0x14
	str     r0, [sp, #0x0]
	bl      Function_21d5f3c
	mov     r7, r0
	ldrb    r0, [r5, #0x8]
	mov     r4, #0x0
	ldrb    r6, [r5, #0x9]
	cmp     r0, #0x0
	ble     branch_21d2e16
.thumb
branch_21d2de8: @ 21d2de8 :thumb
	add     r3, r5, r4
	mov     r2, #0xc
	ldsb    r2, [r3, r2]
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	sub     r2, r2, r6
	ldr     r0, [r0, #0x0]
	mvn     r1, r1
	add     r2, r7, r2
	bl      Function_2079c9c
	mov     r1, #0xac
	mov     r2, #0x0
	bl      GetBoxPkmnData
	cmp     r0, #0x0
	beq     branch_21d2e0e
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21d2e0e

.thumb
branch_21d2e0e: @ 21d2e0e :thumb
	ldrb    r0, [r5, #0x8]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r0
	blt     branch_21d2de8
.thumb
branch_21d2e16: @ 21d2e16 :thumb
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d2e1a


.align 2, 0


.thumb
Function_21d2e1c: @ 21d2e1c :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r1, [r5, #0x0]
	mov     r4, r0
	cmp     r1, #0x3
	bhi     branch_21d2f04
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d2e34

Jumppoints_21d2e34:
.hword branch_21d2e3c - Jumppoints_21d2e34 - 2
.hword branch_21d2eae - Jumppoints_21d2e34 - 2
.hword branch_21d2ed4 - Jumppoints_21d2e34 - 2
.hword branch_21d2ef0 - Jumppoints_21d2e34 - 2
.thumb
branch_21d2e3c: @ 21d2e3c :thumb
	bl      Function_21d5e10
	cmp     r0, #0x1
	bne     branch_21d2e8e
	mov     r0, r4
	bl      Function_21d34e4
	cmp     r0, #0x0
	bne     branch_21d2e6e
	ldr     r0, [pc, #0xb8] @ 0x21d2f08, (=0x5eb)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, r4
	bl      Function_21d5420
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x9
	bl      Function_21d6594
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d2e6e

.thumb
branch_21d2e6e: @ 21d2e6e :thumb
	ldr     r0, [pc, #0x9c] @ 0x21d2f0c, (=0x5f3)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, #0x6
	bl      Function_21d5408
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x18
	bl      Function_21d6594
	mov     r0, #0x2
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d2e8e

.thumb
branch_21d2e8e: @ 21d2e8e :thumb
	ldr     r0, [pc, #0x78] @ 0x21d2f08, (=0x5eb)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, r4
	bl      Function_21d5420
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x9
	bl      Function_21d6594
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d2eae

.thumb
branch_21d2eae: @ 21d2eae :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d6628
	cmp     r0, #0x0
	beq     branch_21d2f04
	mov     r0, r4
	bl      Function_21d52f4
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x25
	bl      Function_21d6594
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d2ed4

.thumb
branch_21d2ed4: @ 21d2ed4 :thumb
	ldr     r0, [pc, #0x38] @ 0x21d2f10, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_21d2f04
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1a
	bl      Function_21d6594
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d2ef0

.thumb
branch_21d2ef0: @ 21d2ef0 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d6628
	cmp     r0, #0x0
	beq     branch_21d2f04
	mov     r0, r4
	bl      Function_21d0ec0
.thumb
branch_21d2f04: @ 21d2f04 :thumb
	pop     {r3-r5,pc}
@ 0x21d2f06


.align 2


.word 0x5eb @ 0x21d2f08
.word 0x5f3 @ 0x21d2f0c
.word RAM_21bf67c @ 0x21d2f10
.thumb
Function_21d2f14: @ 21d2f14 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	ldr     r1, [r4, #0x0]
	mov     r5, r0
	cmp     r1, #0x0
	beq     branch_21d2f2a
	cmp     r1, #0x1
	beq     branch_21d2f76
	cmp     r1, #0x2
	beq     branch_21d2fa8
	pop     {r4-r6,pc}
@ 0x21d2f2a

.thumb
branch_21d2f2a: @ 21d2f2a :thumb
	mov     r1, r5
	bl      Function_21d55c4
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0xa
	bl      Function_21d6594
	ldr     r0, [pc, #0x84] @ 0x21d2fc4, (=0x5ea)
	bl      Function_2005748
	mov     r0, r5
	bl      Function_21d5e10
	cmp     r0, #0x1
	bne     branch_21d2f70
	mov     r0, r5
	bl      Function_21d5e2c
	mov     r6, r0
	mov     r0, #0x49
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      GetNrOfPkmnInParty
	.hword  0x1e40 @ sub r0, r0, #0x1
	cmp     r6, r0
	beq     branch_21d2f70
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, r5
	bl      Function_21d52f4
	pop     {r4-r6,pc}
@ 0x21d2f70

.thumb
branch_21d2f70: @ 21d2f70 :thumb
	mov     r0, #0x2
	str     r0, [r4, #0x0]
	pop     {r4-r6,pc}
@ 0x21d2f76

.thumb
branch_21d2f76: @ 21d2f76 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_21d6628
	cmp     r0, #0x0
	beq     branch_21d2fc2
	mov     r0, r5
	bl      Function_21d52f4
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x26
	bl      Function_21d6594
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x6
	bl      Function_21d6594
	mov     r0, #0x2
	str     r0, [r4, #0x0]
	pop     {r4-r6,pc}
@ 0x21d2fa8

.thumb
branch_21d2fa8: @ 21d2fa8 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_21d6628
	cmp     r0, #0x0
	beq     branch_21d2fc2
	mov     r0, r5
	bl      Function_21d0f14
	mov     r0, r5
	bl      Function_21d0ec0
.thumb
branch_21d2fc2: @ 21d2fc2 :thumb
	pop     {r4-r6,pc}
@ 0x21d2fc4

.word 0x5ea @ 0x21d2fc4
.thumb
Function_21d2fc8: @ 21d2fc8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_21d34e4
	cmp     r0, #0x0
	beq     branch_21d300c
	mov     r0, r5
	mov     r1, #0xad
	mov     r2, #0x0
	bl      Function_21d5fd0
	cmp     r0, #0x0
	beq     branch_21d2fec
	mov     r0, #0x6
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d2fec

.thumb
branch_21d2fec: @ 21d2fec :thumb
	mov     r0, r5
	bl      Function_21d5e3c
	cmp     r0, #0x0
	beq     branch_21d300c
	mov     r0, r5
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      Function_21d5fd0
	cmp     r0, #0x0
	bne     branch_21d300c
	mov     r0, #0x6
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d300c

.thumb
branch_21d300c: @ 21d300c :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d3010

.thumb
Function_21d3010: @ 21d3010 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r1, [r4, #0x0]
	mov     r5, r0
	cmp     r1, #0x0
	beq     branch_21d3026
	cmp     r1, #0x1
	beq     branch_21d307c
	cmp     r1, #0x2
	beq     branch_21d30a8
	pop     {r3-r5,pc}
@ 0x21d3026

.thumb
branch_21d3026: @ 21d3026 :thumb
	add     r1, sp, #0x0
	bl      Function_21d2fc8
	cmp     r0, #0x0
	beq     branch_21d3050
	ldr     r0, [pc, #0x90] @ 0x21d30c4, (=0x5f3)
	bl      Function_2005748
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	bl      Function_21d5408
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x18
	bl      Function_21d6594
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x21d3050

.thumb
branch_21d3050: @ 21d3050 :thumb
	mov     r0, r5
	mov     r1, r5
	bl      Function_21d5734
	ldr     r0, [pc, #0x6c] @ 0x21d30c8, (=0x5dc)
	bl      Function_2005748
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0xb
	bl      Function_21d6594
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x6
	bl      Function_21d6594
	mov     r0, #0x2
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x21d307c

.thumb
branch_21d307c: @ 21d307c :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x18
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d30c2
	ldr     r0, [pc, #0x3c] @ 0x21d30cc, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_21d30c2
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1a
	bl      Function_21d6594
	mov     r0, #0x2
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x21d30a8

.thumb
branch_21d30a8: @ 21d30a8 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_21d6628
	cmp     r0, #0x0
	beq     branch_21d30c2
	mov     r0, r5
	bl      Function_21d0f14
	mov     r0, r5
	bl      Function_21d0ec0
.thumb
branch_21d30c2: @ 21d30c2 :thumb
	pop     {r3-r5,pc}
@ 0x21d30c4

.word 0x5f3 @ 0x21d30c4
.word 0x5dc @ 0x21d30c8
.word RAM_21bf67c @ 0x21d30cc
.thumb
Function_21d30d0: @ 21d30d0 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x8
	bls     branch_21d30de
	b       branch_21d3288
@ 0x21d30de

.thumb
branch_21d30de: @ 21d30de :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d30ea

Jumppoints_21d30ea:
.hword branch_21d30fc - Jumppoints_21d30ea - 2
.hword branch_21d3178 - Jumppoints_21d30ea - 2
.hword branch_21d319a - Jumppoints_21d30ea - 2
.hword branch_21d31c2 - Jumppoints_21d30ea - 2
.hword branch_21d31f2 - Jumppoints_21d30ea - 2
.hword branch_21d3214 - Jumppoints_21d30ea - 2
.hword branch_21d3288 - Jumppoints_21d30ea - 2
.hword branch_21d3248 - Jumppoints_21d30ea - 2
.hword branch_21d3274 - Jumppoints_21d30ea - 2
.thumb
branch_21d30fc: @ 21d30fc :thumb
	mov     r0, #0x49
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      GetNrOfPkmnInParty
	cmp     r0, #0x6
	beq     branch_21d3152
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1a
	bl      Function_21d6594
	mov     r0, r4
	bl      Function_21d5e38
	cmp     r0, #0x2
	bne     branch_21d3132
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x23
	bl      Function_21d6594
	mov     r0, #0x2
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d3132

.thumb
branch_21d3132: @ 21d3132 :thumb
	ldr     r0, [pc, #0x158] @ 0x21d328c, (=0x5eb)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, r4
	bl      Function_21d5420
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x9
	bl      Function_21d6594
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d3152

.thumb
branch_21d3152: @ 21d3152 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1b
	bl      Function_21d6594
	mov     r0, r4
	mov     r1, #0x5
	bl      Function_21d5408
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x18
	bl      Function_21d6594
	mov     r0, #0x7
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d3178

.thumb
branch_21d3178: @ 21d3178 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x9
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d3288
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x23
	bl      Function_21d6594
	mov     r0, #0x2
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d319a

.thumb
branch_21d319a: @ 21d319a :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x23
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d3288
	mov     r0, r4
	bl      Function_21d5290
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x5
	bl      Function_21d6594
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d31c2

.thumb
branch_21d31c2: @ 21d31c2 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x5
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d3288
	mov     r0, r4
	mov     r1, r4
	bl      Function_21d55c4
	mov     r0, r4
	bl      Function_21d0f14
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0xa
	bl      Function_21d6594
	mov     r0, #0x4
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d31f2

.thumb
branch_21d31f2: @ 21d31f2 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0xa
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d3288
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x24
	bl      Function_21d6594
	mov     r0, #0x5
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d3214

.thumb
branch_21d3214: @ 21d3214 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x24
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d3288
	mov     r0, r4
	bl      Function_21d52d0
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x5
	bl      Function_21d6594
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x6
	bl      Function_21d6594
	mov     r0, #0x8
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d3248

.thumb
branch_21d3248: @ 21d3248 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x18
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d3288
	ldr     r0, [pc, #0x34] @ 0x21d3290, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_21d3288
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1a
	bl      Function_21d6594
	mov     r0, #0x8
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d3274

.thumb
branch_21d3274: @ 21d3274 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d6628
	cmp     r0, #0x0
	beq     branch_21d3288
	mov     r0, r4
	bl      Function_21d0ec0
.thumb
branch_21d3288: @ 21d3288 :thumb
	pop     {r3-r5,pc}
@ 0x21d328a


.align 2


.word 0x5eb @ 0x21d328c
.word RAM_21bf67c @ 0x21d3290
.thumb
Function_21d3294: @ 21d3294 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r1, [r5, #0x0]
	mov     r4, r0
	cmp     r1, #0x6
	bhi     branch_21d3358
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d32ac

Jumppoints_21d32ac:
.hword branch_21d32ba - Jumppoints_21d32ac - 2
.hword branch_21d3350 - Jumppoints_21d32ac - 2
.hword branch_21d3412 - Jumppoints_21d32ac - 2
.hword branch_21d3438 - Jumppoints_21d32ac - 2
.hword branch_21d3464 - Jumppoints_21d32ac - 2
.hword branch_21d3492 - Jumppoints_21d32ac - 2
.hword branch_21d34c0 - Jumppoints_21d32ac - 2
.thumb
branch_21d32ba: @ 21d32ba :thumb
	bl      Function_21d5e38
	cmp     r0, #0x1
	bne     branch_21d32f8
	mov     r0, r4
	bl      Function_21d34e4
	cmp     r0, #0x1
	bne     branch_21d32f8
	ldr     r0, [pc, #0x208] @ 0x21d34d8, (=0x5f3)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, #0x6
	bl      Function_21d5408
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1b
	bl      Function_21d6594
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x18
	bl      Function_21d6594
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d32f8

.thumb
branch_21d32f8: @ 21d32f8 :thumb
	mov     r0, r4
	add     r1, sp, #0x0
	bl      Function_21d1238
	cmp     r0, #0x0
	beq     branch_21d3330
	ldr     r0, [pc, #0x1d0] @ 0x21d34d8, (=0x5f3)
	bl      Function_2005748
	ldr     r1, [sp, #0x0]
	mov     r0, r4
	bl      Function_21d5408
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1b
	bl      Function_21d6594
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x18
	bl      Function_21d6594
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d3330

.thumb
branch_21d3330: @ 21d3330 :thumb
	mov     r1, #0x11
	lsl     r1, r1, #4
	ldrh    r1, [r4, r1]
	mov     r0, r4
	mov     r2, #0x13
	bl      Function_21d443c
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1a
	bl      Function_21d6594
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d3350

.thumb
branch_21d3350: @ 21d3350 :thumb
	bl      Function_21d4468
	cmp     r0, #0x0
	bne     branch_21d335a
.thumb
branch_21d3358: @ 21d3358 :thumb
	b       branch_21d34d4
@ 0x21d335a

.thumb
branch_21d335a: @ 21d335a :thumb
	ldr     r0, [pc, #0x180] @ 0x21d34dc, (=0x1c1)
	mov     r1, #0x0
	ldsb    r2, [r4, r0]
	mvn     r1, r1
	cmp     r2, r1
	bne     branch_21d3382
	sub     r0, #0xad
	ldr     r0, [r4, r0]
	mov     r1, #0x1a
	bl      Function_21d6594
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x20
	bl      Function_21d6594
	mov     r0, #0x6
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d3382

.thumb
branch_21d3382: @ 21d3382 :thumb
	sub     r0, #0xb1
	strh    r2, [r4, r0]
	mov     r0, r4
	bl      Function_21d5e38
	cmp     r0, #0x2
	ldr     r1, [pc, #0x14c] @ 0x21d34dc, (=0x1c1)
	bne     branch_21d33c2
	ldsb    r1, [r4, r1]
	mov     r0, r4
	bl      Function_21d57d8
	cmp     r0, #0x0
	beq     branch_21d33f2
	mov     r0, r4
	bl      Function_21d0f14
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1a
	bl      Function_21d6594
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x20
	bl      Function_21d6594
	mov     r0, #0x4
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d33c2

.thumb
branch_21d33c2: @ 21d33c2 :thumb
	ldsb    r1, [r4, r1]
	mov     r0, r4
	bl      Function_21d5800
	cmp     r0, #0x0
	beq     branch_21d33f2
	mov     r0, r4
	bl      Function_21d0f14
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1a
	bl      Function_21d6594
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x20
	bl      Function_21d6594
	mov     r0, #0x5
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d33f2

.thumb
branch_21d33f2: @ 21d33f2 :thumb
	ldr     r0, [pc, #0xe4] @ 0x21d34d8, (=0x5f3)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, #0xd
	bl      Function_21d5408
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x18
	bl      Function_21d6594
	mov     r0, #0x2
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d3412

.thumb
branch_21d3412: @ 21d3412 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x18
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d34d4
	ldr     r0, [pc, #0xbc] @ 0x21d34e0, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_21d34d4
	mov     r0, r4
	bl      Function_21d4458
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d3438

.thumb
branch_21d3438: @ 21d3438 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x18
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d34d4
	ldr     r0, [pc, #0x94] @ 0x21d34e0, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_21d34d4
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1a
	bl      Function_21d6594
	mov     r0, #0x6
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d3464

.thumb
branch_21d3464: @ 21d3464 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x20
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d34d4
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0xc
	bl      Function_21d6594
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x6
	bl      Function_21d6594
	mov     r0, #0x6
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d3492

.thumb
branch_21d3492: @ 21d3492 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x20
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d34d4
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0xd
	bl      Function_21d6594
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x6
	bl      Function_21d6594
	mov     r0, #0x6
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d34c0

.thumb
branch_21d34c0: @ 21d34c0 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d6628
	cmp     r0, #0x0
	beq     branch_21d34d4
	mov     r0, r4
	bl      Function_21d0ec0
.thumb
branch_21d34d4: @ 21d34d4 :thumb
	pop     {r3-r5,pc}
@ 0x21d34d6


.align 2


.word 0x5f3 @ 0x21d34d8
.word 0x1c1 @ 0x21d34dc
.word RAM_21bf67c @ 0x21d34e0
.thumb
Function_21d34e4: @ 21d34e4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r1, #0x49
	lsl     r1, r1, #2
	str     r0, [sp, #0x0]
	ldr     r0, [r0, r1]
	bl      GetNrOfPkmnInParty
	mov     r6, #0x0
	mov     r5, r6
	str     r0, [sp, #0x4]
	cmp     r0, #0x0
	ble     branch_21d354c
branch_21d34fe: @ 21d34fe :thumb
	mov     r0, #0x49
	ldr     r1, [sp, #0x0]
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	mov     r1, r6
	bl      GetAdrOfPkmnInParty
	mov     r4, r0
	bl      InitEncryptPkmnData
	mov     r7, r0
	mov     r0, r4
	mov     r1, #0xad
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_21d3532
	mov     r0, r4
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_21d3532
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_21d3532: @ 21d3532 :thumb
	mov     r0, r4
	mov     r1, r7
	bl      InitEncryptPkmnData_Part1And2
	cmp     r5, #0x2
	blt     branch_21d3544
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21d3544

.thumb
branch_21d3544: @ 21d3544 :thumb
	ldr     r0, [sp, #0x4]
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r0
	blt     branch_21d34fe
.thumb
branch_21d354c: @ 21d354c :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, #0xad
	mov     r2, #0x0
	bl      Function_21d6014
	cmp     r0, #0x0
	beq     branch_21d3560
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21d3560

.thumb
branch_21d3560: @ 21d3560 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      Function_21d6014
	cmp     r0, #0x0
	beq     branch_21d3574
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d3574

.thumb
branch_21d3574: @ 21d3574 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d357a


.align 2, 0


.thumb
Function_21d357c: @ 21d357c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r1, #0xad
	mov     r2, #0x0
	mov     r5, r0
	bl      Function_21d5fd0
	cmp     r0, #0x0
	beq     branch_21d3596
	mov     r0, #0x1f
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d3596

.thumb
branch_21d3596: @ 21d3596 :thumb
	mov     r0, r5
	bl      Function_21d5e74
	mov     r0, r5
	bl      Function_21d5e74
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_207d2d0
	cmp     r0, #0x0
	beq     branch_21d35b6
	mov     r0, #0x1e
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d35b6

.thumb
branch_21d35b6: @ 21d35b6 :thumb
	mov     r0, r5
	mov     r1, #0xa2
	mov     r2, #0x0
	bl      Function_21d5fd0
	cmp     r0, #0x0
	beq     branch_21d35cc
	mov     r0, #0x1d
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d35cc

.thumb
branch_21d35cc: @ 21d35cc :thumb
	mov     r0, r5
	bl      Function_21d5e38
	cmp     r0, #0x1
	bne     branch_21d35f2
	mov     r0, r5
	bl      Function_21d5e10
	cmp     r0, #0x1
	bne     branch_21d35f2
	mov     r0, r5
	bl      Function_21d34e4
	cmp     r0, #0x0
	beq     branch_21d35f2
	mov     r0, #0x6
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d35f2

.thumb
branch_21d35f2: @ 21d35f2 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d35f6


.align 2, 0


.thumb
Function_21d35f8: @ 21d35f8 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r1, [r5, #0x0]
	mov     r4, r0
	cmp     r1, #0x9
	bhi     branch_21d36a4
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d3610

Jumppoints_21d3610:
.hword branch_21d3624 - Jumppoints_21d3610 - 2
.hword branch_21d367c - Jumppoints_21d3610 - 2
.hword branch_21d36e6 - Jumppoints_21d3610 - 2
.hword branch_21d376a - Jumppoints_21d3610 - 2
.hword branch_21d37f6 - Jumppoints_21d3610 - 2
.hword branch_21d37c2 - Jumppoints_21d3610 - 2
.hword branch_21d3828 - Jumppoints_21d3610 - 2
.hword branch_21d3852 - Jumppoints_21d3610 - 2
.hword branch_21d3896 - Jumppoints_21d3610 - 2
.hword branch_21d38c2 - Jumppoints_21d3610 - 2
.thumb
branch_21d3624: @ 21d3624 :thumb
	add     r1, sp, #0x0
	bl      Function_21d357c
	cmp     r0, #0x0
	beq     branch_21d3650
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_21d5408
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21df964
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x19
	bl      Function_21d6594
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d3650

.thumb
branch_21d3650: @ 21d3650 :thumb
	ldr     r0, [pc, #0x284] @ 0x21d38d8, (=0x5f3)
	bl      Function_2005748
	ldr     r1, [sp, #0x0]
	mov     r0, r4
	bl      Function_21d5408
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1b
	bl      Function_21d6594
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x18
	bl      Function_21d6594
	mov     r0, #0x8
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d367c

.thumb
branch_21d367c: @ 21d367c :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d6628
	cmp     r0, #0x0
	beq     branch_21d36a4
	mov     r0, r4
	bl      Function_21dfd2c
	cmp     r0, #0x36
	bgt     branch_21d36ae
	bge     branch_21d36d4
	mov     r2, #0x0
	mvn     r2, r2
	cmp     r0, r2
	bgt     branch_21d36a4
	.hword  0x1e51 @ sub r1, r2, #0x1
	cmp     r0, r1
	bge     branch_21d36a6
.thumb
branch_21d36a4: @ 21d36a4 :thumb
	b       branch_21d38d6
@ 0x21d36a6

.thumb
branch_21d36a6: @ 21d36a6 :thumb
	beq     branch_21d36b4
	cmp     r0, r2
	beq     branch_21d36c2
	pop     {r3-r5,pc}
@ 0x21d36ae

.thumb
branch_21d36ae: @ 21d36ae :thumb
	cmp     r0, #0x37
	beq     branch_21d36c2
	pop     {r3-r5,pc}
@ 0x21d36b4

.thumb
branch_21d36b4: @ 21d36b4 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1c
	bl      Function_21d6594
	pop     {r3-r5,pc}
@ 0x21d36c2

.thumb
branch_21d36c2: @ 21d36c2 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1a
	bl      Function_21d6594
	mov     r0, #0x9
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d36d4

.thumb
branch_21d36d4: @ 21d36d4 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1a
	bl      Function_21d6594
	mov     r0, #0x2
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d36e6

.thumb
branch_21d36e6: @ 21d36e6 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1a
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d37d0
	mov     r0, r4
	bl      Function_21d5e9c
	mov     r2, r0
	mov     r0, #0x67
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_200b5cc
	mov     r0, r4
	bl      Function_21d38e0
	mov     r0, r4
	bl      Function_21d5e38
	cmp     r0, #0x2
	bne     branch_21d3730
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0xe
	bl      Function_21d6594
	mov     r0, #0x6e
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	b       branch_21d3764
@ 0x21d3730

.thumb
branch_21d3730: @ 21d3730 :thumb
	mov     r0, r4
	bl      Function_21d5e10
	cmp     r0, #0x0
	bne     branch_21d3750
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0xf
	bl      Function_21d6594
	mov     r0, #0x6e
	mov     r1, #0x1
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	b       branch_21d3764
@ 0x21d3750

.thumb
branch_21d3750: @ 21d3750 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x10
	bl      Function_21d6594
	mov     r0, #0x6e
	mov     r1, #0x2
	lsl     r0, r0, #2
	str     r1, [r4, r0]
.thumb
branch_21d3764: @ 21d3764 :thumb
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d376a

.thumb
branch_21d376a: @ 21d376a :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d6628
	cmp     r0, #0x0
	beq     branch_21d37d0
	mov     r0, r4
	bl      Function_21d3b20
	cmp     r0, #0x0
	beq     branch_21d37a8
	mov     r0, r4
	bl      Function_21d5e38
	cmp     r0, #0x2
	bne     branch_21d3794
	mov     r0, r4
	bl      Function_21d5834
	b       branch_21d379a
@ 0x21d3794

.thumb
branch_21d3794: @ 21d3794 :thumb
	mov     r0, r4
	bl      Function_21d584c
.thumb
branch_21d379a: @ 21d379a :thumb
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_21d5408
	mov     r0, #0x5
	str     r0, [r5, #0x0]
	b       branch_21d37b4
@ 0x21d37a8

.thumb
branch_21d37a8: @ 21d37a8 :thumb
	mov     r0, r4
	mov     r1, #0x20
	bl      Function_21d5408
	mov     r0, #0x4
	str     r0, [r5, #0x0]
.thumb
branch_21d37b4: @ 21d37b4 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x18
	bl      Function_21d6594
	pop     {r3-r5,pc}
@ 0x21d37c2

.thumb
branch_21d37c2: @ 21d37c2 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d6628
	cmp     r0, #0x0
	bne     branch_21d37d2
.thumb
branch_21d37d0: @ 21d37d0 :thumb
	b       branch_21d38d6
@ 0x21d37d2

.thumb
branch_21d37d2: @ 21d37d2 :thumb
	ldr     r0, [pc, #0x108] @ 0x21d38dc, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_21d38d6
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_21d5408
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x18
	bl      Function_21d6594
	mov     r0, #0x6
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d37f6

.thumb
branch_21d37f6: @ 21d37f6 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d6628
	cmp     r0, #0x0
	beq     branch_21d38d6
	ldr     r0, [pc, #0xd4] @ 0x21d38dc, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_21d38d6
	mov     r0, r4
	mov     r1, #0x21
	bl      Function_21d5408
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x18
	bl      Function_21d6594
	mov     r0, #0x6
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d3828

.thumb
branch_21d3828: @ 21d3828 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d6628
	cmp     r0, #0x0
	beq     branch_21d38d6
	ldr     r0, [pc, #0xa4] @ 0x21d38dc, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_21d38d6
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1a
	bl      Function_21d6594
	mov     r0, #0x7
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d3852

.thumb
branch_21d3852: @ 21d3852 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d6628
	cmp     r0, #0x0
	beq     branch_21d38d6
	mov     r0, r4
	bl      Function_21d3b20
	cmp     r0, #0x0
	beq     branch_21d3884
	mov     r0, #0x6e
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	cmp     r1, #0x2
	bne     branch_21d387e
	sub     r0, #0xa4
	ldr     r0, [r4, r0]
	mov     r1, #0x25
	bl      Function_21d6594
.thumb
branch_21d387e: @ 21d387e :thumb
	mov     r0, r4
	bl      Function_21d0f14
.thumb
branch_21d3884: @ 21d3884 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x6
	bl      Function_21d6594
	mov     r0, #0x9
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d3896

.thumb
branch_21d3896: @ 21d3896 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x18
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d38d6
	ldr     r0, [pc, #0x34] @ 0x21d38dc, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_21d38d6
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1a
	bl      Function_21d6594
	mov     r0, #0x9
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d38c2

.thumb
branch_21d38c2: @ 21d38c2 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d6628
	cmp     r0, #0x0
	beq     branch_21d38d6
	mov     r0, r4
	bl      Function_21d0ec0
.thumb
branch_21d38d6: @ 21d38d6 :thumb
	pop     {r3-r5,pc}
@ 0x21d38d8

.word 0x5f3 @ 0x21d38d8
.word RAM_21bf67c @ 0x21d38dc



.thumb
Function_21d38e0: @ 21d38e0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r1, #0x57
	lsl     r1, r1, #2
	str     r0, [sp, #0x0]
	add     r7, r0, r1
	ldr     r0, [r0, #0x4c]
	mov     r4, #0x0
	ldr     r5, [pc, #0x7c] @ 0x21d3970, (=Unknown_21dfdf0)
	str     r0, [r7, #0x10]
	str     r4, [sp, #0x4]
branch_21d38f6: @ 21d38f6 :thumb
	ldrh    r1, [r5, #0x0]
	ldr     r0, [r7, #0x10]
	add     r6, r7, r4
	bl      Function_21d3ac8
	strb    r0, [r6, #0x4]
	ldrb    r0, [r6, #0x4]
	cmp     r0, #0x0
	beq     branch_21d390e
	ldr     r0, [sp, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x4]
.thumb
branch_21d390e: @ 21d390e :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r4, #0x3
	bcc     branch_21d38f6
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	bne     branch_21d3926
	mov     r0, #0x1
	strb    r0, [r7, #0x0]
	add     sp, #0x8
	strb    r0, [r7, #0x1]
	pop     {r3-r7,pc}
@ 0x21d3926

.thumb
branch_21d3926: @ 21d3926 :thumb
	mov     r0, #0x0
	strb    r0, [r7, #0x0]
	strb    r0, [r7, #0x1]
	strb    r0, [r7, #0x2]
	strb    r0, [r7, #0x3]
	mov     r1, #0x12
	ldr     r0, [sp, #0x0]
	lsl     r1, r1, #4
	ldr     r0, [r0, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r0, [r7, #0x14]
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, r1]
	str     r0, [r7, #0x18]
	ldr     r0, [sp, #0x0]
	bl      Function_21d5e38
	cmp     r0, #0x1
	beq     branch_21d3950
	mov     r0, #0x1
	b       branch_21d3952
@ 0x21d3950

.thumb
branch_21d3950: @ 21d3950 :thumb
	mov     r0, #0x0
.thumb
branch_21d3952: @ 21d3952 :thumb
	mov     r1, #0x0
	str     r0, [r7, #0x1c]
	mov     r0, r7
	mov     r2, r1
.thumb
branch_21d395a: @ 21d395a :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r2, [r0, #0x8]
	.hword  0x1c80 @ add r0, r0, #0x2
	cmp     r1, #0x3
	bcc     branch_21d395a
	ldr     r0, [pc, #0xc] @ 0x21d3974, (=0x21d3979)
	mov     r1, r7
	bl      AddTaskToTaskList1
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d3970

.word Unknown_21dfdf0 @ 0x21d3970
.word 0x21d3979 @ 0x21d3974



.thumb
Function_21d3978: @ 21d3978 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	str     r0, [sp, #0x0]
	ldrb    r0, [r1, #0x2]
	str     r1, [sp, #0x4]
	cmp     r0, #0x12
	bcs     branch_21d3a0e
	mov     r0, r1
	ldrb    r0, [r0, #0x3]
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x14]
	add     r0, #0xf
	str     r0, [sp, #0x14]
	cmp     r0, #0x1e
	ble     branch_21d399a
	mov     r0, #0x1e
	str     r0, [sp, #0x14]
.thumb
branch_21d399a: @ 21d399a :thumb
	ldr     r1, [sp, #0xc]
	ldr     r0, [sp, #0x14]
	cmp     r1, r0
	bge     branch_21d39ec
.thumb
branch_21d39a2: @ 21d39a2 :thumb
	ldr     r1, [sp, #0x4]
	ldr     r0, [sp, #0x4]
	ldrb    r1, [r1, #0x2]
	ldr     r0, [r0, #0x14]
	ldr     r2, [sp, #0xc]
	bl      Function_2079c9c
	mov     r1, #0xac
	mov     r2, #0x0
	mov     r7, r0
	bl      GetBoxPkmnData
	cmp     r0, #0x0
	beq     branch_21d39e0
	ldr     r4, [pc, #0x104] @ 0x21d3ac4, (=Unknown_21dfdf0)
	ldr     r5, [sp, #0x4]
	mov     r6, #0x0
branch_21d39c4: @ 21d39c4 :thumb
	ldrh    r1, [r4, #0x0]
	mov     r0, r7
	bl      Function_21d3ac8
	cmp     r0, #0x0
	beq     branch_21d39d6
	ldrh    r0, [r5, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x8]
.thumb
branch_21d39d6: @ 21d39d6 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r6, #0x3
	bcc     branch_21d39c4
.thumb
branch_21d39e0: @ 21d39e0 :thumb
	ldr     r0, [sp, #0xc]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x14]
	str     r1, [sp, #0xc]
	cmp     r1, r0
	blt     branch_21d39a2
.thumb
branch_21d39ec: @ 21d39ec :thumb
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x1e
	bne     branch_21d3a04
	ldr     r0, [sp, #0x4]
	mov     r1, #0x0
	strb    r1, [r0, #0x3]
	ldrb    r0, [r0, #0x2]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x4]
	add     sp, #0x18
	strb    r1, [r0, #0x2]
	pop     {r3-r7,pc}
@ 0x21d3a04

.thumb
branch_21d3a04: @ 21d3a04 :thumb
	mov     r1, r0
	ldr     r0, [sp, #0x4]
	add     sp, #0x18
	strb    r1, [r0, #0x3]
	pop     {r3-r7,pc}
@ 0x21d3a0e

.thumb
branch_21d3a0e: @ 21d3a0e :thumb
	mov     r0, r1
	ldr     r0, [r0, #0x18]
	bl      GetNrOfPkmnInParty
	str     r0, [sp, #0x10]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x0
	ble     branch_21d3a5c
branch_21d3a22: @ 21d3a22 :thumb
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x8]
	ldr     r0, [r0, #0x18]
	bl      GetAdrOfPkmnInParty
	ldr     r4, [pc, #0x94] @ 0x21d3ac4, (=Unknown_21dfdf0)
	ldr     r5, [sp, #0x4]
	mov     r7, r0
	mov     r6, #0x0
branch_21d3a34: @ 21d3a34 :thumb
	ldrh    r1, [r4, #0x0]
	mov     r0, r7
	bl      Function_21d3ac8
	cmp     r0, #0x0
	beq     branch_21d3a46
	ldrh    r0, [r5, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x8]
.thumb
branch_21d3a46: @ 21d3a46 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r6, #0x3
	bcc     branch_21d3a34
	ldr     r0, [sp, #0x8]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x10]
	str     r1, [sp, #0x8]
	cmp     r1, r0
	blt     branch_21d3a22
branch_21d3a5c: @ 21d3a5c :thumb
	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, #0x1c]
	cmp     r0, #0x0
	beq     branch_21d3a88
	ldr     r4, [pc, #0x5c] @ 0x21d3ac4, (=Unknown_21dfdf0)
	ldr     r5, [sp, #0x4]
	mov     r6, #0x0
branch_21d3a6a: @ 21d3a6a :thumb
	ldr     r0, [sp, #0x4]
	ldrh    r1, [r4, #0x0]
	ldr     r0, [r0, #0x10]
	bl      Function_21d3ac8
	cmp     r0, #0x0
	beq     branch_21d3a7e
	ldrh    r0, [r5, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x8]
.thumb
branch_21d3a7e: @ 21d3a7e :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r6, #0x3
	bcc     branch_21d3a6a
.thumb
branch_21d3a88: @ 21d3a88 :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, #0x1
	strb    r1, [r0, #0x1]
	mov     r2, #0x0
	mov     r1, r0
.thumb
branch_21d3a92: @ 21d3a92 :thumb
	ldrh    r0, [r1, #0x8]
	cmp     r0, #0x1
	bne     branch_21d3aaa
	ldr     r0, [sp, #0x4]
	add     r0, r0, r2
	ldrb    r0, [r0, #0x4]
	cmp     r0, #0x1
	bne     branch_21d3aaa
	ldr     r0, [sp, #0x4]
	mov     r1, #0x0
	strb    r1, [r0, #0x1]
	b       branch_21d3ab2
@ 0x21d3aaa

.thumb
branch_21d3aaa: @ 21d3aaa :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c89 @ add r1, r1, #0x2
	cmp     r2, #0x3
	bcc     branch_21d3a92
.thumb
branch_21d3ab2: @ 21d3ab2 :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, #0x1
	strb    r1, [r0, #0x0]
	ldr     r0, [sp, #0x0]
	bl      Call_RemoveTaskFromTaskList
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21d3ac2

.align 2
.word Unknown_21dfdf0 @ 0x21d3ac4



.thumb
Function_21d3ac8: @ 21d3ac8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r1
	mov     r1, #0x0
	mov     r5, r0
	str     r1, [sp, #0x4]
	bl      InitEncryptPkmnData_Part1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0xad
	mov     r2, #0x0
	bl      GetBoxPkmnData
	cmp     r0, #0x0
	bne     branch_21d3b08
	mov     r4, #0x0
	mov     r7, r4
branch_21d3aec: @ 21d3aec :thumb
	mov     r1, r4
	mov     r0, r5
	add     r1, #0x36
	mov     r2, r7
	bl      GetBoxPkmnData
	cmp     r6, r0
	bne     branch_21d3b02
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	b       branch_21d3b08
@ 0x21d3b02

.thumb
branch_21d3b02: @ 21d3b02 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x4
	blt     branch_21d3aec
branch_21d3b08: @ 21d3b08 :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	bl      InitEncryptPkmnData_Part1Again
	ldr     r0, [sp, #0x4]
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d3b16


.align 2, 0
.thumb
Function_21d3b18: @ 21d3b18 :thumb
	mov     r1, #0x57
	lsl     r1, r1, #2
	ldrb    r0, [r0, r1]
	bx      lr
@ 0x21d3b20

.thumb
Function_21d3b20: @ 21d3b20 :thumb
	mov     r1, #0x57
	lsl     r1, r1, #2
	add     r1, r0, r1
	ldrb    r0, [r1, #0x0]
	cmp     r0, #0x0
	beq     branch_21d3b30
	ldrb    r0, [r1, #0x1]
	bx      lr
@ 0x21d3b30

.thumb
branch_21d3b30: @ 21d3b30 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21d3b34

.thumb
Function_21d3b34: @ 21d3b34 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_21d3b4a
	cmp     r0, #0x1
	beq     branch_21d3b5e
	cmp     r0, #0x2
	beq     branch_21d3bb6
	pop     {r3-r5,pc}
@ 0x21d3b4a

.thumb
branch_21d3b4a: @ 21d3b4a :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x3
	bl      Function_21d6594
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d3b5e

.thumb
branch_21d3b5e: @ 21d3b5e :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x3
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d3c1c
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d64a0
	mov     r0, #0xa
	bl      Function_201807c
	mov     r0, #0x12
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_207999c
	mov     r2, #0x12
	lsl     r2, r2, #4
	mov     r1, r0
	ldr     r0, [r4, r2]
	add     r2, #0x8
	ldr     r2, [r4, r2]
	ldr     r2, [r2, #0x18]
	bl      Function_2079af4
	mov     r1, #0x4a
	lsl     r1, r1, #2
	ldr     r0, [pc, #0x80] @ 0x21d3c20, (=JumpTable_20f2dac)
	ldr     r1, [r4, r1]
	mov     r2, #0x9
	bl      AllocAndInitOverlayData
	mov     r1, #0x21
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}

branch_21d3bb6: @ 21d3bb6 :thumb
	mov     r0, #0x21
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      CallOverlayDataJumpTable
	cmp     r0, #0x0
	beq     branch_21d3c1c
	mov     r0, #0x12
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_207999c
	mov     r5, r0
	mov     r0, #0x21
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Call_free2
	mov     r2, #0xf
	mov     r0, #0x3
	mov     r1, #0xa
	lsl     r2, r2, #14
	bl      Function_2017fc8
	mov     r2, #0x12
	lsl     r2, r2, #4
	ldr     r0, [r4, r2]
	add     r2, #0x8
	ldr     r2, [r4, r2]
	mov     r1, r5
	ldr     r2, [r2, #0x18]
	bl      Function_2079b24
	mov     r0, #0x12
	lsl     r0, r0, #4
	mov     r1, r4
	ldr     r0, [r4, r0]
	add     r1, #0x40
	bl      Function_21d4f40
	mov     r0, #0x45
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, r4
	mov     r2, r4
	bl      Function_21d61b0
	ldr     r1, [pc, #0xc] @ 0x21d3c24, (=0x21d0f89)
	mov     r0, r4
	bl      Function_21d0eb0
.thumb
branch_21d3c1c: @ 21d3c1c :thumb
	pop     {r3-r5,pc}
@ 0x21d3c1e


.align 2


.word JumpTable_20f2dac @ 0x21d3c20
.word Function_21d0f88+1 @ =0x21d0f89, 0x21d3c24
.thumb
Function_21d3c28: @ 21d3c28 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_21d3c3e
	cmp     r0, #0x1
	beq     branch_21d3c52
	cmp     r0, #0x2
	beq     branch_21d3c94
	pop     {r3-r5,pc}
@ 0x21d3c3e

.thumb
branch_21d3c3e: @ 21d3c3e :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x3
	bl      Function_21d6594
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x21d3c52

.thumb
branch_21d3c52: @ 21d3c52 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x3
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d3cf0
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_21d64a0
	mov     r0, #0xa
	bl      Function_201807c
	mov     r0, r5
	bl      Function_21d1c84
	mov     r1, #0x4b
	lsl     r1, r1, #2
	ldr     r0, [pc, #0x74] @ 0x21d3cf4, (=Unknown_20f410c)
	add     r1, r5, r1
	mov     r2, #0x9
	bl      AllocAndInitOverlayData
	mov     r1, #0x21
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x21d3c94

.thumb
branch_21d3c94: @ 21d3c94 :thumb
	mov     r0, #0x21
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	bl      CallOverlayDataJumpTable
	cmp     r0, #0x0
	beq     branch_21d3cf0
	mov     r0, #0x12
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	bl      Function_207999c
	mov     r0, #0x21
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	bl      Call_free2
	mov     r2, #0xf
	mov     r0, #0x3
	mov     r1, #0xa
	lsl     r2, r2, #14
	bl      Function_2017fc8
	mov     r0, r5
	bl      Function_21d5e38
	cmp     r0, #0x1
	bne     branch_21d3cd4
	mov     r0, r5
	mov     r1, r5
	bl      Function_21d3cfc
.thumb
branch_21d3cd4: @ 21d3cd4 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, r5
	mov     r2, r5
	bl      Function_21d61b0
	ldr     r1, [pc, #0x14] @ 0x21d3cf8, (=0x21d0f89)
	mov     r0, r5
	bl      Function_21d0eb0
	mov     r0, r5
	bl      Function_21d0f14
branch_21d3cf0: @ 21d3cf0 :thumb
	pop     {r3-r5,pc}
@ 0x21d3cf2

.align 2
.word Unknown_20f410c @ 0x21d3cf4
.word Function_21d0f88+1 @ =0x21d0f89, 0x21d3cf8



.thumb
Function_21d3cfc: @ 21d3cfc :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	add     r4, #0x8
	ldrb    r0, [r4, #0x4]
	mov     r5, r1
	cmp     r0, #0x0
	beq     branch_21d3d10
	cmp     r0, #0x1
	beq     branch_21d3d32
	pop     {r3-r5,pc}
@ 0x21d3d10

.thumb
branch_21d3d10: @ 21d3d10 :thumb
	mov     r0, #0x5
	lsl     r0, r0, #6
	ldrb    r0, [r5, r0]
	mov     r1, #0x6
	strb    r0, [r4, #0x7]
	mov     r0, #0x7
	ldsb    r0, [r4, r0]
	blx     _s32_div_f
	strb    r1, [r4, #0x5]
	mov     r0, #0x7
	ldsb    r0, [r4, r0]
	mov     r1, #0x6
	blx     _s32_div_f
	strb    r0, [r4, #0x6]
	b       branch_21d3d3a
@ 0x21d3d32

.thumb
branch_21d3d32: @ 21d3d32 :thumb
	mov     r0, #0x5
	lsl     r0, r0, #6
	ldrb    r0, [r5, r0]
	strb    r0, [r4, #0x8]
.thumb
branch_21d3d3a: @ 21d3d3a :thumb
	mov     r0, r5
	bl      Function_21d52f4
	pop     {r3-r5,pc}
@ 0x21d3d42


.align 2, 0


.thumb
Function_21d3d44: @ 21d3d44 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x6
	bhi     branch_21d3df6
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d3d5c

Jumppoints_21d3d5c:
.hword branch_21d3d6a - Jumppoints_21d3d5c - 2
.hword branch_21d3d7e - Jumppoints_21d3d5c - 2
.hword branch_21d3de8 - Jumppoints_21d3d5c - 2
.hword branch_21d3e9a - Jumppoints_21d3d5c - 2
.hword branch_21d3ebe - Jumppoints_21d3d5c - 2
.hword branch_21d3f48 - Jumppoints_21d3d5c - 2
.hword branch_21d3f7c - Jumppoints_21d3d5c - 2
.thumb
branch_21d3d6a: @ 21d3d6a :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x3
	bl      Function_21d6594
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	pop     {r4-r6,pc}
@ 0x21d3d7e

.thumb
branch_21d3d7e: @ 21d3d7e :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x3
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d3df6
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d64a0
	mov     r0, #0xa
	bl      Function_201807c
	mov     r0, #0x47
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      LoadVariableAreaAdressItemList
	ldr     r1, [pc, #0x1e8] @ 0x21d3f94, (=0x21dfe30)
	mov     r2, #0x9
	bl      Function_207d824
	mov     r1, #0x85
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	sub     r1, #0xf8
	ldr     r1, [r4, r1]
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_207cb2c
	ldr     r0, [pc, #0x1d0] @ 0x21d3f98, (=0x54)
	mov     r1, #0x2
	bl      LoadOverlay
	mov     r1, #0x85
	lsl     r1, r1, #2
	ldr     r0, [pc, #0x1c8] @ 0x21d3f9c, (=0x2241130)
	ldr     r1, [r4, r1]
	mov     r2, #0x9
	bl      AllocAndInitOverlayData
	mov     r1, #0x21
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	pop     {r4-r6,pc}
@ 0x21d3de8

.thumb
branch_21d3de8: @ 21d3de8 :thumb
	mov     r0, #0x21
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      CallOverlayDataJumpTable
	cmp     r0, #0x0
	bne     branch_21d3df8
.thumb
branch_21d3df6: @ 21d3df6 :thumb
	b       branch_21d3f90
@ 0x21d3df8

.thumb
branch_21d3df8: @ 21d3df8 :thumb
	mov     r0, #0x85
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_207cb94
	ldr     r1, [pc, #0x19c] @ 0x21d3fa0, (=0x21e05e0)
	str     r0, [r1, #0x8]
	mov     r0, #0x21
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Call_free2
	mov     r0, #0x85
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      free
	ldr     r0, [pc, #0x17c] @ 0x21d3f98, (=0x54)
	bl      UnloadOverlay
	ldr     r0, [pc, #0x17c] @ 0x21d3fa0, (=0x21e05e0)
	ldr     r0, [r0, #0x8]
	cmp     r0, #0x70
	bne     branch_21d3e38
	ldr     r0, [r4, #0x4c]
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetBoxPkmnData
	ldr     r1, [pc, #0x170] @ 0x21d3fa4, (=0x1e7)
	cmp     r0, r1
	bne     branch_21d3e6c
.thumb
branch_21d3e38: @ 21d3e38 :thumb
	ldr     r0, [pc, #0x164] @ 0x21d3fa0, (=0x21e05e0)
	ldr     r6, [r0, #0x8]
	cmp     r6, #0x0
	beq     branch_21d3e6c
	mov     r0, #0x47
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      LoadVariableAreaAdressItemList
	lsl     r1, r6, #16
	lsr     r1, r1, #16
	mov     r2, #0x1
	mov     r3, #0x9
	bl      GiveItem
	ldr     r1, [pc, #0x148] @ 0x21d3fa0, (=0x21e05e0)
	mov     r0, r4
	ldr     r1, [r1, #0x8]
	mov     r2, r4
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	bl      Function_21d5be8
	mov     r0, r4
	bl      Function_21d0f14
.thumb
branch_21d3e6c: @ 21d3e6c :thumb
	mov     r2, #0xf
	mov     r0, #0x3
	mov     r1, #0xa
	lsl     r2, r2, #14
	bl      Function_2017fc8
	mov     r0, #0x45
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, r4
	mov     r2, r4
	bl      Function_21d61b0
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_21d6594
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	pop     {r4-r6,pc}
@ 0x21d3e9a

.thumb
branch_21d3e9a: @ 21d3e9a :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d3f90
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x2
	bl      Function_21d6594
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	pop     {r4-r6,pc}
@ 0x21d3ebe

.thumb
branch_21d3ebe: @ 21d3ebe :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x2
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d3f90
	ldr     r0, [pc, #0xd0] @ 0x21d3fa0, (=0x21e05e0)
	ldr     r0, [r0, #0x8]
	cmp     r0, #0x0
	bne     branch_21d3ede
	mov     r0, r4
	bl      Function_21d0ec0
	pop     {r4-r6,pc}
@ 0x21d3ede

.thumb
branch_21d3ede: @ 21d3ede :thumb
	cmp     r0, #0x70
	bne     branch_21d3f1c
	ldr     r0, [r4, #0x4c]
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetBoxPkmnData
	ldr     r1, [pc, #0xb4] @ 0x21d3fa4, (=0x1e7)
	cmp     r0, r1
	beq     branch_21d3f1c
	ldr     r2, [pc, #0xac] @ 0x21d3fa0, (=0x21e05e0)
	sub     r1, #0x4b
	ldr     r0, [r4, r1]
	ldr     r2, [r2, #0x8]
	mov     r1, #0x0
	bl      Function_200b70c
	mov     r0, r4
	mov     r1, #0x2d
	bl      Function_21d5408
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x18
	bl      Function_21d6594
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	pop     {r4-r6,pc}
@ 0x21d3f1c

.thumb
branch_21d3f1c: @ 21d3f1c :thumb
	mov     r0, #0x67
	ldr     r2, [pc, #0x80] @ 0x21d3fa0, (=0x21e05e0)
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	ldr     r2, [r2, #0x8]
	mov     r1, #0x0
	bl      Function_200b70c
	mov     r0, r4
	mov     r1, #0x10
	bl      Function_21d5408
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x18
	bl      Function_21d6594
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	pop     {r4-r6,pc}
@ 0x21d3f48

.thumb
branch_21d3f48: @ 21d3f48 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x18
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d3f90
	ldr     r0, [pc, #0x4c] @ 0x21d3fa8, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_21d3f90
	ldr     r0, [pc, #0x48] @ 0x21d3fac, (=0x5dd)
	bl      Function_2005748
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1a
	bl      Function_21d6594
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	pop     {r4-r6,pc}
@ 0x21d3f7c

.thumb
branch_21d3f7c: @ 21d3f7c :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d6628
	cmp     r0, #0x0
	beq     branch_21d3f90
	mov     r0, r4
	bl      Function_21d0ec0
.thumb
branch_21d3f90: @ 21d3f90 :thumb
	pop     {r4-r6,pc}
@ 0x21d3f92


.align 2


.word 0x21dfe30 @ 0x21d3f94
.word 0x54 @ 0x21d3f98
.word 0x2241130 @ 0x21d3f9c
.word 0x21e05e0 @ 0x21d3fa0
.word 0x1e7 @ 0x21d3fa4
.word RAM_21bf67c @ 0x21d3fa8
.word 0x5dd @ 0x21d3fac
.thumb
Function_21d3fb0: @ 21d3fb0 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r1, [r5, #0x0]
	mov     r4, r0
	cmp     r1, #0x5
	bhi     branch_21d4062
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d3fc8

Jumppoints_21d3fc8:
.hword branch_21d3fd4 - Jumppoints_21d3fc8 - 2
.hword branch_21d403a - Jumppoints_21d3fc8 - 2
.hword branch_21d40a4 - Jumppoints_21d3fc8 - 2
.hword branch_21d4104 - Jumppoints_21d3fc8 - 2
.hword branch_21d412c - Jumppoints_21d3fc8 - 2
.hword branch_21d415e - Jumppoints_21d3fc8 - 2
.thumb
branch_21d3fd4: @ 21d3fd4 :thumb
	bl      Function_21d5e74
	ldr     r1, [pc, #0x198] @ 0x21d4174, (=0x21e05e0)
	str     r0, [r1, #0x4]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_207d2d0
	cmp     r0, #0x0
	beq     branch_21d4008
	ldr     r0, [pc, #0x18c] @ 0x21d4178, (=0x5f3)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, #0x18
	bl      Function_21d5408
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x18
	bl      Function_21d6594
	mov     r0, #0x4
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d4008

.thumb
branch_21d4008: @ 21d4008 :thumb
	mov     r0, #0x67
	ldr     r2, [pc, #0x168] @ 0x21d4174, (=0x21e05e0)
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	ldr     r2, [r2, #0x4]
	mov     r1, #0x0
	bl      Function_200b70c
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21df964
	mov     r0, r4
	mov     r1, #0x17
	bl      Function_21d5408
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x19
	bl      Function_21d6594
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d403a

.thumb
branch_21d403a: @ 21d403a :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d6628
	cmp     r0, #0x0
	beq     branch_21d4062
	mov     r0, r4
	bl      Function_21dfd2c
	cmp     r0, #0x36
	bgt     branch_21d406c
	bge     branch_21d4092
	mov     r2, #0x0
	mvn     r2, r2
	cmp     r0, r2
	bgt     branch_21d4062
	.hword  0x1e51 @ sub r1, r2, #0x1
	cmp     r0, r1
	bge     branch_21d4064
.thumb
branch_21d4062: @ 21d4062 :thumb
	b       branch_21d4172
@ 0x21d4064

.thumb
branch_21d4064: @ 21d4064 :thumb
	beq     branch_21d4072
	cmp     r0, r2
	beq     branch_21d4080
	pop     {r3-r5,pc}
@ 0x21d406c

.thumb
branch_21d406c: @ 21d406c :thumb
	cmp     r0, #0x37
	beq     branch_21d4080
	pop     {r3-r5,pc}
@ 0x21d4072

.thumb
branch_21d4072: @ 21d4072 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1c
	bl      Function_21d6594
	pop     {r3-r5,pc}
@ 0x21d4080

.thumb
branch_21d4080: @ 21d4080 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1a
	bl      Function_21d6594
	mov     r0, #0x5
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d4092

.thumb
branch_21d4092: @ 21d4092 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1b
	bl      Function_21d6594
	mov     r0, #0x2
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d40a4

.thumb
branch_21d40a4: @ 21d40a4 :thumb
	mov     r0, #0x47
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      LoadVariableAreaAdressItemList
	ldr     r1, [pc, #0xc4] @ 0x21d4174, (=0x21e05e0)
	mov     r2, #0x1
	ldr     r1, [r1, #0x4]
	mov     r3, #0x9
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	bl      TakeItem
	cmp     r0, #0x0
	beq     branch_21d40ea
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, r4
	bl      Function_21d5be8
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x16
	bl      Function_21d6594
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x6
	bl      Function_21d6594
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d40ea

.thumb
branch_21d40ea: @ 21d40ea :thumb
	mov     r0, r4
	mov     r1, #0xe
	bl      Function_21d5408
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x18
	bl      Function_21d6594
	mov     r0, #0x4
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d4104

.thumb
branch_21d4104: @ 21d4104 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d6628
	cmp     r0, #0x0
	beq     branch_21d4172
	mov     r0, r4
	mov     r1, #0xf
	bl      Function_21d5408
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x18
	bl      Function_21d6594
	mov     r0, #0x4
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d412c

.thumb
branch_21d412c: @ 21d412c :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x18
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d4172
	ldr     r0, [pc, #0x3c] @ 0x21d417c, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_21d4172
	ldr     r0, [pc, #0x38] @ 0x21d4180, (=0x5dd)
	bl      Function_2005748
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1a
	bl      Function_21d6594
	mov     r0, #0x5
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d415e

.thumb
branch_21d415e: @ 21d415e :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d6628
	cmp     r0, #0x0
	beq     branch_21d4172
	mov     r0, r4
	bl      Function_21d0ec0
.thumb
branch_21d4172: @ 21d4172 :thumb
	pop     {r3-r5,pc}
@ 0x21d4174

.word 0x21e05e0 @ 0x21d4174
.word 0x5f3 @ 0x21d4178
.word RAM_21bf67c @ 0x21d417c
.word 0x5dd @ 0x21d4180
.thumb
Function_21d4184: @ 21d4184 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r1, [r5, #0x0]
	mov     r4, r0
	cmp     r1, #0x6
	bhi     branch_21d4238
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d419c

Jumppoints_21d419c:
.hword branch_21d41aa - Jumppoints_21d419c - 2
.hword branch_21d4210 - Jumppoints_21d419c - 2
.hword branch_21d427a - Jumppoints_21d419c - 2
.hword branch_21d42e2 - Jumppoints_21d419c - 2
.hword branch_21d4310 - Jumppoints_21d419c - 2
.hword branch_21d4338 - Jumppoints_21d419c - 2
.hword branch_21d436a - Jumppoints_21d419c - 2
.thumb
branch_21d41aa: @ 21d41aa :thumb
	bl      Function_21d5f88
	ldr     r1, [pc, #0x1d0] @ 0x21d4380, (=0x21e05e0)
	str     r0, [r1, #0x0]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_207d2d0
	cmp     r0, #0x0
	beq     branch_21d41de
	ldr     r0, [pc, #0x1c4] @ 0x21d4384, (=0x5f3)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, #0x18
	bl      Function_21d5408
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x18
	bl      Function_21d6594
	mov     r0, #0x5
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d41de

.thumb
branch_21d41de: @ 21d41de :thumb
	mov     r0, #0x67
	ldr     r2, [pc, #0x19c] @ 0x21d4380, (=0x21e05e0)
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	ldr     r2, [r2, #0x0]
	mov     r1, #0x0
	bl      Function_200b70c
	mov     r0, r4
	mov     r1, #0x1a
	bl      Function_21d5408
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21df964
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x19
	bl      Function_21d6594
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d4210

.thumb
branch_21d4210: @ 21d4210 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d6628
	cmp     r0, #0x0
	beq     branch_21d4238
	mov     r0, r4
	bl      Function_21dfd2c
	cmp     r0, #0x36
	bgt     branch_21d4242
	bge     branch_21d4268
	mov     r2, #0x0
	mvn     r2, r2
	cmp     r0, r2
	bgt     branch_21d4238
	.hword  0x1e51 @ sub r1, r2, #0x1
	cmp     r0, r1
	bge     branch_21d423a
.thumb
branch_21d4238: @ 21d4238 :thumb
	b       branch_21d437e
@ 0x21d423a

.thumb
branch_21d423a: @ 21d423a :thumb
	beq     branch_21d4248
	cmp     r0, r2
	beq     branch_21d4256
	pop     {r3-r5,pc}
@ 0x21d4242

.thumb
branch_21d4242: @ 21d4242 :thumb
	cmp     r0, #0x37
	beq     branch_21d4256
	pop     {r3-r5,pc}
@ 0x21d4248

.thumb
branch_21d4248: @ 21d4248 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1c
	bl      Function_21d6594
	pop     {r3-r5,pc}
@ 0x21d4256

.thumb
branch_21d4256: @ 21d4256 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1a
	bl      Function_21d6594
	mov     r0, #0x6
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d4268

.thumb
branch_21d4268: @ 21d4268 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1a
	bl      Function_21d6594
	mov     r0, #0x2
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d427a

.thumb
branch_21d427a: @ 21d427a :thumb
	mov     r0, #0x47
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      LoadVariableAreaAdressItemList
	ldr     r1, [pc, #0xf8] @ 0x21d4380, (=0x21e05e0)
	mov     r2, #0x1
	ldr     r1, [r1, #0x0]
	mov     r3, #0x9
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	bl      TakeItem
	cmp     r0, #0x0
	beq     branch_21d42c8
	mov     r0, r4
	bl      Function_21d5f7c
	cmp     r0, #0x0
	beq     branch_21d42ac
	mov     r0, r4
	bl      Function_21d5d54
	mov     r0, #0x4
	b       branch_21d42b8
@ 0x21d42ac

.thumb
branch_21d42ac: @ 21d42ac :thumb
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, r4
	bl      Function_21d5be8
	mov     r0, #0x3
.thumb
branch_21d42b8: @ 21d42b8 :thumb
	str     r0, [r5, #0x0]
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x17
	bl      Function_21d6594
	pop     {r3-r5,pc}
@ 0x21d42c8

.thumb
branch_21d42c8: @ 21d42c8 :thumb
	mov     r0, r4
	mov     r1, #0xe
	bl      Function_21d5408
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x18
	bl      Function_21d6594
	mov     r0, #0x5
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d42e2

.thumb
branch_21d42e2: @ 21d42e2 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x17
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d437e
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x16
	bl      Function_21d6594
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x6
	bl      Function_21d6594
	mov     r0, #0x4
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d4310

.thumb
branch_21d4310: @ 21d4310 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d6628
	cmp     r0, #0x0
	beq     branch_21d437e
	mov     r0, r4
	mov     r1, #0x1b
	bl      Function_21d5408
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x18
	bl      Function_21d6594
	mov     r0, #0x5
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d4338

.thumb
branch_21d4338: @ 21d4338 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x18
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d437e
	ldr     r0, [pc, #0x3c] @ 0x21d4388, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_21d437e
	ldr     r0, [pc, #0x38] @ 0x21d438c, (=0x5dd)
	bl      Function_2005748
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1a
	bl      Function_21d6594
	mov     r0, #0x6
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d436a

.thumb
branch_21d436a: @ 21d436a :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d6628
	cmp     r0, #0x0
	beq     branch_21d437e
	mov     r0, r4
	bl      Function_21d0ec0
.thumb
branch_21d437e: @ 21d437e :thumb
	pop     {r3-r5,pc}
@ 0x21d4380

.word 0x21e05e0 @ 0x21d4380
.word 0x5f3 @ 0x21d4384
.word RAM_21bf67c @ 0x21d4388
.word 0x5dd @ 0x21d438c
.thumb
Function_21d4390: @ 21d4390 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x4
	bhi     branch_21d4434
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d43a8

Jumppoints_21d43a8:
.hword branch_21d43b2 - Jumppoints_21d43a8 - 2
.hword branch_21d43c6 - Jumppoints_21d43a8 - 2
.hword branch_21d43ea - Jumppoints_21d43a8 - 2
.hword branch_21d4402 - Jumppoints_21d43a8 - 2
.hword branch_21d441e - Jumppoints_21d43a8 - 2
.thumb
branch_21d43b2: @ 21d43b2 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1a
	bl      Function_21d6594
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x21d43c6

.thumb
branch_21d43c6: @ 21d43c6 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1a
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d4434
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x11
	bl      Function_21d6594
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x21d43ea

.thumb
branch_21d43ea: @ 21d43ea :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x11
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d4434
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x21d4402

.thumb
branch_21d4402: @ 21d4402 :thumb
	ldr     r0, [pc, #0x34] @ 0x21d4438, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0xf3
	tst     r1, r0
	beq     branch_21d4434
	add     r0, #0x21
	ldr     r0, [r5, r0]
	mov     r1, #0x12
	bl      Function_21d6594
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x21d441e

.thumb
branch_21d441e: @ 21d441e :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x12
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d4434
	mov     r0, r5
	bl      Function_21d0ec0
.thumb
branch_21d4434: @ 21d4434 :thumb
	pop     {r3-r5,pc}
@ 0x21d4436


.align 2


.word RAM_21bf67c @ 0x21d4438
.thumb
Function_21d443c: @ 21d443c :thumb
	push    {r4,r5}
	mov     r3, #0x6f
	lsl     r3, r3, #2
	mov     r5, #0x0
	str     r5, [r0, r3]
	add     r4, r3, #0x5
	strb    r1, [r0, r4]
	add     r1, r3, #0x6
	strh    r2, [r0, r1]
	add     r1, r3, #0x4
	strb    r5, [r0, r1]
	pop     {r4,r5}
	bx      lr
@ 0x21d4456


.align 2, 0


.thumb
Function_21d4458: @ 21d4458 :thumb
	mov     r1, #0x6f
	mov     r2, #0x0
	lsl     r1, r1, #2
	str     r2, [r0, r1]
	mov     r2, #0x1
	.hword  0x1d09 @ add r1, r1, #0x4
	strb    r2, [r0, r1]
	bx      lr
@ 0x21d4468

.thumb
Function_21d4468: @ 21d4468 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x6f
	lsl     r0, r0, #2
	add     r4, r5, r0
	ldr     r1, [r4, #0x0]
	cmp     r1, #0x3
	bls     branch_21d447a
	b       branch_21d459c
@ 0x21d447a

.thumb
branch_21d447a: @ 21d447a :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d4486

Jumppoints_21d4486:
.hword branch_21d448e - Jumppoints_21d4486 - 2
.hword branch_21d44c4 - Jumppoints_21d4486 - 2
.hword branch_21d44ec - Jumppoints_21d4486 - 2
.hword branch_21d44fe - Jumppoints_21d4486 - 2
.thumb
branch_21d448e: @ 21d448e :thumb
	ldrb    r0, [r4, #0x4]
	cmp     r0, #0x1
	bne     branch_21d449a
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d459c
@ 0x21d449a

.thumb
branch_21d449a: @ 21d449a :thumb
	mov     r0, #0x5
	ldsb    r1, [r4, r0]
	.hword  0x1f80 @ sub r0, r0, #0x6
	cmp     r1, r0
	bne     branch_21d44a8
	mov     r0, #0x0
	strb    r0, [r4, #0x5]
.thumb
branch_21d44a8: @ 21d44a8 :thumb
	mov     r1, #0x5
	ldsb    r1, [r4, r1]
	mov     r0, r5
	bl      Function_21d5d20
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1e
	bl      Function_21d6594
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d459c
@ 0x21d44c4

.thumb
branch_21d44c4: @ 21d44c4 :thumb
	sub     r0, #0xa8
	ldr     r0, [r5, r0]
	mov     r1, #0x1e
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d459c
	ldrh    r1, [r4, #0x6]
	mov     r0, r5
	bl      Function_21d5408
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x18
	bl      Function_21d6594
	mov     r0, #0x2
	str     r0, [r4, #0x0]
	b       branch_21d459c
@ 0x21d44ec

.thumb
branch_21d44ec: @ 21d44ec :thumb
	sub     r0, #0xa8
	ldr     r0, [r5, r0]
	mov     r1, #0x18
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d459c
	mov     r0, #0x3
	str     r0, [r4, #0x0]
.thumb
branch_21d44fe: @ 21d44fe :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1f
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d459c
	ldr     r0, [pc, #0x90] @ 0x21d45a0, (=RAM_21bf67c)
	mov     r1, #0x22
	ldr     r0, [r0, #0x48]
	lsl     r1, r1, #4
	mov     r2, r0
	tst     r2, r1
	beq     branch_21d4546
	mov     r0, #0x5
	ldsb    r1, [r4, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strb    r1, [r4, #0x5]
	ldsb    r0, [r4, r0]
	cmp     r0, #0x0
	bge     branch_21d452e
	mov     r0, #0x11
	strb    r0, [r4, #0x5]
.thumb
branch_21d452e: @ 21d452e :thumb
	mov     r1, #0x5
	ldsb    r1, [r4, r1]
	mov     r0, r5
	bl      Function_21d5d20
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1f
	bl      Function_21d6594
	b       branch_21d459c
@ 0x21d4546

.thumb
branch_21d4546: @ 21d4546 :thumb
	lsr     r1, r1, #1
	tst     r1, r0
	beq     branch_21d4576
	mov     r0, #0x5
	ldsb    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, #0x5]
	ldsb    r0, [r4, r0]
	cmp     r0, #0x12
	blt     branch_21d455e
	mov     r0, #0x0
	strb    r0, [r4, #0x5]
.thumb
branch_21d455e: @ 21d455e :thumb
	mov     r1, #0x5
	ldsb    r1, [r4, r1]
	mov     r0, r5
	bl      Function_21d5d20
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1f
	bl      Function_21d6594
	b       branch_21d459c
@ 0x21d4576

.thumb
branch_21d4576: @ 21d4576 :thumb
	mov     r1, #0x1
	tst     r1, r0
	beq     branch_21d4586
	ldr     r0, [pc, #0x24] @ 0x21d45a4, (=0x5dd)
	bl      Function_2005748
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d4586

.thumb
branch_21d4586: @ 21d4586 :thumb
	mov     r1, #0x2
	tst     r0, r1
	beq     branch_21d459c
	ldr     r0, [pc, #0x14] @ 0x21d45a4, (=0x5dd)
	bl      Function_2005748
	mov     r0, #0x0
	mvn     r0, r0
	strb    r0, [r4, #0x5]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d459c

.thumb
branch_21d459c: @ 21d459c :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d45a0

.word RAM_21bf67c @ 0x21d45a0
.word 0x5dd @ 0x21d45a4
.thumb
Function_21d45a8: @ 21d45a8 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r1, [r4, #0x0]
	mov     r5, r0
	cmp     r1, #0x0
	beq     branch_21d45be
	cmp     r1, #0x1
	beq     branch_21d45e8
	cmp     r1, #0x2
	beq     branch_21d4628
	pop     {r3-r5,pc}
@ 0x21d45be

.thumb
branch_21d45be: @ 21d45be :thumb
	bl      Function_21d5e68
	mov     r1, r0
	mov     r0, #0x12
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	bl      Function_2079a94
	mov     r0, r5
	bl      Function_21d52f4
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x4
	bl      Function_21d6594
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x21d45e8

.thumb
branch_21d45e8: @ 21d45e8 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x4
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d463e
	mov     r0, r5
	bl      Function_21d5e10
	cmp     r0, #0x0
	bne     branch_21d4620
	mov     r0, r5
	bl      Function_21d5e38
	cmp     r0, #0x1
	bne     branch_21d4620
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x6
	bl      Function_21d6594
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x21d4620

.thumb
branch_21d4620: @ 21d4620 :thumb
	mov     r0, r5
	bl      Function_21d0ec0
	pop     {r3-r5,pc}
@ 0x21d4628

.thumb
branch_21d4628: @ 21d4628 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x6
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d463e
	mov     r0, r5
	bl      Function_21d0ec0
.thumb
branch_21d463e: @ 21d463e :thumb
	pop     {r3-r5,pc}
@ 0x21d4640

.thumb
Function_21d4640: @ 21d4640 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r4, r0
	ldr     r0, [r6, #0x0]
	cmp     r0, #0x5
	bhi     branch_21d46c2
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d4658

Jumppoints_21d4658:
.hword branch_21d4664 - Jumppoints_21d4658 - 2
.hword branch_21d46b2 - Jumppoints_21d4658 - 2
.hword branch_21d4862 - Jumppoints_21d4658 - 2
.hword branch_21d48b8 - Jumppoints_21d4658 - 2
.hword branch_21d48f4 - Jumppoints_21d4658 - 2
.hword branch_21d490a - Jumppoints_21d4658 - 2
.thumb
branch_21d4664: @ 21d4664 :thumb
	ldr     r0, [pc, #0x2b8] @ 0x21d4920, (=0x5e4)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d5d94
	mov     r0, r4
	bl      Function_21d5e68
	mov     r1, r0
	mov     r0, r4
	bl      Function_21d5d9c
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x28
	bl      Function_21d6594
	mov     r0, #0x58
	str     r0, [sp, #0x0]
	mov     r0, #0x72
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, #0x0
	mov     r2, #0xc0
	mov     r3, #0x38
	bl      Function_21d603c
	mov     r0, #0x81
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r1, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r4, r0]
	str     r1, [r6, #0x0]
	pop     {r3-r7,pc}
@ 0x21d46b2

.thumb
branch_21d46b2: @ 21d46b2 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x28
	bl      Function_21d6600
	cmp     r0, #0x0
	bne     branch_21d46c4
.thumb
branch_21d46c2: @ 21d46c2 :thumb
	b       branch_21d491e
@ 0x21d46c4

.thumb
branch_21d46c4: @ 21d46c4 :thumb
	mov     r0, r4
	bl      Function_21d538c
	cmp     r0, #0x0
	beq     branch_21d46f4
	mov     r0, #0x61
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x1
	bne     branch_21d46f4
	mov     r0, r4
	bl      Function_21d5e08
	cmp     r0, #0x3
	beq     branch_21d46ec
	ldr     r1, [pc, #0x240] @ 0x21d4924, (=0x21d4939)
	mov     r0, r4
	bl      Function_21d0eb0
	pop     {r3-r7,pc}
@ 0x21d46ec

.thumb
branch_21d46ec: @ 21d46ec :thumb
	ldr     r0, [pc, #0x238] @ 0x21d4928, (=0x5f3)
	bl      Function_2005748
	pop     {r3-r7,pc}
@ 0x21d46f4

.thumb
branch_21d46f4: @ 21d46f4 :thumb
	ldr     r0, [pc, #0x234] @ 0x21d492c, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0xf3
	tst     r0, r1
	beq     branch_21d472c
	ldr     r0, [pc, #0x230] @ 0x21d4930, (=0x5dd)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d5d94
	mov     r0, r4
	bl      Function_21d5e68
	mov     r1, r0
	mov     r0, r4
	bl      Function_21d5d9c
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x28
	bl      Function_21d6594
	mov     r0, #0x5
	str     r0, [r6, #0x0]
	pop     {r3-r7,pc}
@ 0x21d472c

.thumb
branch_21d472c: @ 21d472c :thumb
	mov     r1, #0x81
	lsl     r1, r1, #2
	ldr     r0, [r4, r1]
	cmp     r0, #0x0
	beq     branch_21d47a4
	add     r0, r1, #0x4
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21d47a4
	.hword  0x1f08 @ sub r0, r1, #0x4
	ldr     r0, [r4, r0]
	add     r2, r0, #0x1
	.hword  0x1f08 @ sub r0, r1, #0x4
	str     r2, [r4, r0]
	ldr     r0, [r4, r0]
	cmp     r0, #0x14
	bls     branch_21d47a4
	mov     r0, r4
	bl      Function_21d5eb8
	mov     r5, r0
	mov     r0, r4
	mov     r1, r5
	bl      Function_21d5d08
	mov     r0, #0x12
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, r5
	bl      Function_2079a94
	mov     r0, r4
	bl      Function_21d52f4
	mov     r0, r4
	bl      Function_21d5e38
	cmp     r0, #0x1
	bne     branch_21d4786
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x8
	bl      Function_21d6594
.thumb
branch_21d4786: @ 21d4786 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x4
	bl      Function_21d6594
	mov     r0, #0x81
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	.hword  0x1f00 @ sub r0, r0, #0x4
	str     r1, [r4, r0]
	mov     r0, #0x3
	str     r0, [r6, #0x0]
	pop     {r3-r7,pc}
@ 0x21d47a4

.thumb
branch_21d47a4: @ 21d47a4 :thumb
	mov     r0, #0x72
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_21d60a8
	cmp     r0, #0x1
	beq     branch_21d47bc
	cmp     r0, #0x2
	beq     branch_21d47dc
	cmp     r0, #0x3
	beq     branch_21d4836
	pop     {r3-r7,pc}
@ 0x21d47bc

.thumb
branch_21d47bc: @ 21d47bc :thumb
	mov     r0, r4
	bl      Function_21d5eb8
	mov     r1, #0x7f
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, r1
	mov     r2, #0x0
	add     r0, #0x8
	str     r2, [r4, r0]
	mov     r0, r1
	add     r0, #0x10
	str     r2, [r4, r0]
	add     r1, #0xc
	str     r2, [r4, r1]
	pop     {r3-r7,pc}
@ 0x21d47dc

.thumb
branch_21d47dc: @ 21d47dc :thumb
	mov     r0, #0x72
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_21d614c
	mov     r5, r0
	mov     r0, #0x83
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r5, r0
	bne     branch_21d47f4
	b       branch_21d491e
@ 0x21d47f4

.thumb
branch_21d47f4: @ 21d47f4 :thumb
	sub     r7, r5, r0
	mov     r0, r4
	bl      Function_21d5eb8
	add     r1, r7, r0
	bpl     branch_21d4804
	add     r1, #0x12
	b       branch_21d480a
@ 0x21d4804

.thumb
branch_21d4804: @ 21d4804 :thumb
	cmp     r1, #0x12
	blt     branch_21d480a
	sub     r1, #0x12
.thumb
branch_21d480a: @ 21d480a :thumb
	mov     r0, #0x83
	lsl     r0, r0, #2
	str     r5, [r4, r0]
	mov     r0, r4
	bl      Function_21d5d9c
	mov     r0, r4
	mov     r1, r7
	bl      Function_21d5dac
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x29
	bl      Function_21d6594
	ldr     r0, [pc, #0x108] @ 0x21d4934, (=0x5dc)
	bl      Function_2005748
	mov     r0, #0x2
	str     r0, [r6, #0x0]
	pop     {r3-r7,pc}
@ 0x21d4836

.thumb
branch_21d4836: @ 21d4836 :thumb
	mov     r0, r4
	bl      Function_21d5e68
	mov     r5, r0
	mov     r0, r4
	bl      Function_21d5eb8
	cmp     r5, r0
	beq     branch_21d484c
	mov     r1, #0x1
	b       branch_21d484e
@ 0x21d484c

.thumb
branch_21d484c: @ 21d484c :thumb
	mov     r1, #0x0
.thumb
branch_21d484e: @ 21d484e :thumb
	mov     r0, #0x81
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	.hword  0x1f01 @ sub r1, r0, #0x4
	mov     r2, #0x0
	str     r2, [r4, r1]
	mov     r1, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r4, r0]
	pop     {r3-r7,pc}
@ 0x21d4862

.thumb
branch_21d4862: @ 21d4862 :thumb
	mov     r0, #0x82
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	cmp     r1, #0x0
	bne     branch_21d48a2
	sub     r0, #0x40
	add     r0, r4, r0
	bl      Function_21d60a8
	cmp     r0, #0x3
	bne     branch_21d48a2
	mov     r0, r4
	bl      Function_21d5e68
	mov     r5, r0
	mov     r0, r4
	bl      Function_21d5eb8
	cmp     r5, r0
	beq     branch_21d488e
	mov     r1, #0x1
	b       branch_21d4890
@ 0x21d488e

.thumb
branch_21d488e: @ 21d488e :thumb
	mov     r1, #0x0
.thumb
branch_21d4890: @ 21d4890 :thumb
	mov     r0, #0x81
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	.hword  0x1f01 @ sub r1, r0, #0x4
	mov     r2, #0x0
	str     r2, [r4, r1]
	mov     r1, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r4, r0]
.thumb
branch_21d48a2: @ 21d48a2 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x29
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d491e
	mov     r0, #0x1
	str     r0, [r6, #0x0]
	pop     {r3-r7,pc}
@ 0x21d48b8

.thumb
branch_21d48b8: @ 21d48b8 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x4
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d491e
	mov     r0, r4
	bl      Function_21d5e38
	cmp     r0, #0x1
	bne     branch_21d48ee
	mov     r0, r4
	bl      Function_21d5e34
	cmp     r0, #0x0
	beq     branch_21d48ee
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x6
	bl      Function_21d6594
	mov     r0, #0x4
	str     r0, [r6, #0x0]
	pop     {r3-r7,pc}
@ 0x21d48ee

.thumb
branch_21d48ee: @ 21d48ee :thumb
	mov     r0, #0x1
	str     r0, [r6, #0x0]
	pop     {r3-r7,pc}
@ 0x21d48f4

.thumb
branch_21d48f4: @ 21d48f4 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x6
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d491e
	mov     r0, #0x1
	str     r0, [r6, #0x0]
	pop     {r3-r7,pc}
@ 0x21d490a

.thumb
branch_21d490a: @ 21d490a :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d6628
	cmp     r0, #0x0
	beq     branch_21d491e
	mov     r0, r4
	bl      Function_21d0ec0
.thumb
branch_21d491e: @ 21d491e :thumb
	pop     {r3-r7,pc}
@ 0x21d4920

.word 0x5e4 @ 0x21d4920
.word 0x21d4939 @ 0x21d4924
.word 0x5f3 @ 0x21d4928
.word RAM_21bf67c @ 0x21d492c
.word 0x5dd @ 0x21d4930
.word 0x5dc @ 0x21d4934
.thumb
Function_21d4938: @ 21d4938 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r1
	mov     r4, r0
	ldr     r0, [r6, #0x0]
	cmp     r0, #0x3
	bhi     branch_21d49bc
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d4952

Jumppoints_21d4952:
.hword branch_21d495a - Jumppoints_21d4952 - 2
.hword branch_21d49ac - Jumppoints_21d4952 - 2
.hword branch_21d4b04 - Jumppoints_21d4952 - 2
.hword branch_21d4b5c - Jumppoints_21d4952 - 2
.thumb
branch_21d495a: @ 21d495a :thumb
	ldr     r0, [pc, #0x218] @ 0x21d4b74, (=0x5e4)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_21d5d94
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d5da4
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d5d9c
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x28
	bl      Function_21d6594
	mov     r0, #0x58
	str     r0, [sp, #0x0]
	mov     r0, #0x72
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, #0xff
	mov     r2, #0xc0
	mov     r3, #0x38
	bl      Function_21d603c
	mov     r0, #0x81
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r1, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r4, r0]
	add     sp, #0x8
	str     r1, [r6, #0x0]
	pop     {r3-r7,pc}
@ 0x21d49ac

.thumb
branch_21d49ac: @ 21d49ac :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x28
	bl      Function_21d6600
	cmp     r0, #0x0
	bne     branch_21d49be
.thumb
branch_21d49bc: @ 21d49bc :thumb
	b       branch_21d4b70
@ 0x21d49be

.thumb
branch_21d49be: @ 21d49be :thumb
	mov     r0, r4
	bl      Function_21d538c
	cmp     r0, #0x0
	beq     branch_21d49de
	mov     r0, #0x61
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_21d49de
	ldr     r1, [pc, #0x1a4] @ 0x21d4b78, (=0x21d4641)
	mov     r0, r4
	bl      Function_21d0eb0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d49de

.thumb
branch_21d49de: @ 21d49de :thumb
	ldr     r0, [pc, #0x19c] @ 0x21d4b7c, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0xf3
	tst     r0, r1
	beq     branch_21d4a06
	ldr     r0, [pc, #0x194] @ 0x21d4b80, (=0x5dd)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d5d94
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x28
	bl      Function_21d6594
	mov     r0, #0x3
	str     r0, [r6, #0x0]
.thumb
branch_21d4a06: @ 21d4a06 :thumb
	mov     r0, r4
	bl      Function_21d4b88
	cmp     r0, #0x0
	beq     branch_21d4a32
	ldr     r0, [pc, #0x16c] @ 0x21d4b80, (=0x5dd)
	bl      Function_2005748
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x2a
	bl      Function_21d6594
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x27
	bl      Function_21d6594
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d4a32

.thumb
branch_21d4a32: @ 21d4a32 :thumb
	mov     r0, #0x72
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_21d60a8
	cmp     r0, #0x1
	beq     branch_21d4a4c
	cmp     r0, #0x2
	beq     branch_21d4a6e
	cmp     r0, #0x3
	beq     branch_21d4ad6
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d4a4c

.thumb
branch_21d4a4c: @ 21d4a4c :thumb
	mov     r0, r4
	bl      Function_21d5eb8
	mov     r1, #0x7f
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, r1
	mov     r2, #0x0
	add     r0, #0x8
	str     r2, [r4, r0]
	mov     r0, r1
	add     r0, #0x10
	str     r2, [r4, r0]
	add     r1, #0xc
	add     sp, #0x8
	str     r2, [r4, r1]
	pop     {r3-r7,pc}
@ 0x21d4a6e

.thumb
branch_21d4a6e: @ 21d4a6e :thumb
	mov     r0, #0x72
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_21d614c
	mov     r7, r0
	mov     r0, #0x83
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r7, r0
	beq     branch_21d4b70
	sub     r0, r7, r0
	str     r0, [sp, #0x4]
	mov     r0, r4
	bl      Function_21d5eb8
	ldr     r1, [sp, #0x4]
	add     r5, r1, r0
	bpl     branch_21d4a98
	add     r5, #0x8
	b       branch_21d4a9e
@ 0x21d4a98

.thumb
branch_21d4a98: @ 21d4a98 :thumb
	cmp     r5, #0x8
	blt     branch_21d4a9e
	sub     r5, #0x8
.thumb
branch_21d4a9e: @ 21d4a9e :thumb
	mov     r0, #0x83
	lsl     r0, r0, #2
	str     r7, [r4, r0]
	mov     r0, r4
	mov     r1, r5
	bl      Function_21d5d9c
	mov     r0, r4
	mov     r1, r5
	bl      Function_21d5da4
	ldr     r1, [sp, #0x4]
	mov     r0, r4
	bl      Function_21d5dac
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x29
	bl      Function_21d6594
	ldr     r0, [pc, #0xb8] @ 0x21d4b84, (=0x5dc)
	bl      Function_2005748
	mov     r0, #0x2
	add     sp, #0x8
	str     r0, [r6, #0x0]
	pop     {r3-r7,pc}
@ 0x21d4ad6

.thumb
branch_21d4ad6: @ 21d4ad6 :thumb
	mov     r0, r4
	bl      Function_21d5e68
	mov     r5, r0
	mov     r0, r4
	bl      Function_21d5eb8
	cmp     r5, r0
	beq     branch_21d4aec
	mov     r1, #0x1
	b       branch_21d4aee
@ 0x21d4aec

.thumb
branch_21d4aec: @ 21d4aec :thumb
	mov     r1, #0x0
.thumb
branch_21d4aee: @ 21d4aee :thumb
	mov     r0, #0x81
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	.hword  0x1f01 @ sub r1, r0, #0x4
	mov     r2, #0x0
	str     r2, [r4, r1]
	mov     r1, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	add     sp, #0x8
	str     r1, [r4, r0]
	pop     {r3-r7,pc}
@ 0x21d4b04

.thumb
branch_21d4b04: @ 21d4b04 :thumb
	mov     r0, #0x82
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	cmp     r1, #0x0
	bne     branch_21d4b44
	sub     r0, #0x40
	add     r0, r4, r0
	bl      Function_21d60a8
	cmp     r0, #0x3
	bne     branch_21d4b44
	mov     r0, r4
	bl      Function_21d5e68
	mov     r5, r0
	mov     r0, r4
	bl      Function_21d5eb8
	cmp     r5, r0
	beq     branch_21d4b30
	mov     r1, #0x1
	b       branch_21d4b32
@ 0x21d4b30

.thumb
branch_21d4b30: @ 21d4b30 :thumb
	mov     r1, #0x0
.thumb
branch_21d4b32: @ 21d4b32 :thumb
	mov     r0, #0x81
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	.hword  0x1f01 @ sub r1, r0, #0x4
	mov     r2, #0x0
	str     r2, [r4, r1]
	mov     r1, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r4, r0]
.thumb
branch_21d4b44: @ 21d4b44 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x29
	bl      Function_21d6600
	cmp     r0, #0x0
	beq     branch_21d4b70
	mov     r0, #0x1
	add     sp, #0x8
	str     r0, [r6, #0x0]
	pop     {r3-r7,pc}
@ 0x21d4b5c

.thumb
branch_21d4b5c: @ 21d4b5c :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d6628
	cmp     r0, #0x0
	beq     branch_21d4b70
	mov     r0, r4
	bl      Function_21d0ec0
.thumb
branch_21d4b70: @ 21d4b70 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d4b74

.word 0x5e4 @ 0x21d4b74
.word 0x21d4641 @ 0x21d4b78
.word RAM_21bf67c @ 0x21d4b7c
.word 0x5dd @ 0x21d4b80
.word 0x5dc @ 0x21d4b84
.thumb
Function_21d4b88: @ 21d4b88 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x62
	mov     r1, #0x8
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	sub     r0, #0x8
	ldr     r0, [r4, r0]
	bl      Function_202404c
	mov     r0, #0x62
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x8
	beq     branch_21d4baa
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d4baa

.thumb
branch_21d4baa: @ 21d4baa :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d4bae


.align 2, 0


.thumb
Function_21d4bb0: @ 21d4bb0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x62
	mov     r4, r2
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x8
	bne     branch_21d4bde
	cmp     r1, #0x0
	bne     branch_21d4bde
	mov     r0, r4
	bl      Function_21d5ec0
	add     r1, r0, r5
	cmp     r1, #0x8
	bcc     branch_21d4bd2
	sub     r1, #0x8
.thumb
branch_21d4bd2: @ 21d4bd2 :thumb
	mov     r0, r4
	bl      Function_21d5db4
	mov     r0, #0x62
	lsl     r0, r0, #2
	str     r5, [r4, r0]
.thumb
branch_21d4bde: @ 21d4bde :thumb
	pop     {r3-r5,pc}
@ 0x21d4be0

.thumb
Function_21d4be0: @ 21d4be0 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	bl      LoadVariableAreaAdress_25
	mov     r1, #0x12
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	ldr     r2, [r4, #0x0]
	sub     r0, r1, #0x4
	str     r2, [r5, r0]

	ldr     r0, [r4, #0x0]
	bl      LoadPokePartyAdress
	mov     r1, #0x49
	lsl     r1, r1, #2
	str     r0, [r5, r1]

	ldr     r0, [r4, #0x0]
	bl      LoadPlayerDataAdress
	mov     r1, #0x69
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	sub     r1, #0x8c
	str     r4, [r5, r1]

	mov     r0, #0x0
	mov     r1, #PlMsg_Narc
	mov     r2, #0x13
	mov     r3, #0x9
	str     r0, [r4, #0x8]
	bl      LoadFromNARC_9
	mov     r2, #0x63
	lsl     r2, r2, #2
	str     r0, [r5, r2]

	mov     r0, #0x1
	mov     r1, #PlMsg_Narc
	add     r2, #0x10
	mov     r3, #0x9
	bl      LoadFromNARC_9
	mov     r1, #0x19
	lsl     r1, r1, #4
	str     r0, [r5, r1]

	mov     r0, #0x0
	mov     r1, #PlMsg_Narc
	mov     r2, #0xca
	mov     r3, #0x9
	bl      LoadFromNARC_9
	mov     r2, #0x65
	lsl     r2, r2, #2
	str     r0, [r5, r2]

	mov     r0, #0x0
	mov     r1, #PlMsg_Narc
	add     r2, #0xce
	mov     r3, #0x9
	bl      LoadFromNARC_9
	mov     r1, #0x66
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x9
	bl      Function_200b358
	mov     r1, #0x67
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	bl      GetPkmnDataSize
	mov     r1, r0
	mov     r0, #0x9
	bl      malloc
	mov     r1, #0x1a
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	.hword  0x1f08 @ sub r0, r1, #0x4
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	bne     branch_21d4c88
	bl      ErrorHandling
.thumb
branch_21d4c88: @ 21d4c88 :thumb
	mov     r0, #0x69
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x9
	mov     r2, #0x0
	mov     r3, #0x8
	bl      Function_208712c
	mov     r1, #0x4a
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x4
	beq     branch_21d4cba
	mov     r0, #0x9
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x94] @ 0x21d4d44, (=0x21dfdf6)
	ldr     r2, [pc, #0x98] @ 0x21d4d48, (=0x21d53b9)
	mov     r1, #0x3
	mov     r3, r5
	bl      Function_2023fcc
	b       branch_21d4cca
@ 0x21d4cba

.thumb
branch_21d4cba: @ 21d4cba :thumb
	mov     r0, #0x9
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x8c] @ 0x21d4d4c, (=0x21dfe02)
	ldr     r2, [pc, #0x84] @ 0x21d4d48, (=0x21d53b9)
	mov     r1, #0x4
	mov     r3, r5
	bl      Function_2023fcc
.thumb
branch_21d4cca: @ 21d4cca :thumb
	mov     r1, #0x5f
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x9
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x78] @ 0x21d4d50, (=0x21dfe12)
	ldr     r2, [pc, #0x7c] @ 0x21d4d54, (=0x21d4bb1)
	mov     r1, #0x7
	mov     r3, r5
	bl      Function_2023fcc
	mov     r1, #0x6
	lsl     r1, r1, #6
	str     r0, [r5, r1]
	mov     r0, r1
	sub     r0, #0x60
	ldr     r0, [r5, r0]
	mov     r2, #0x0
	str     r0, [r5, #0x0]
	mov     r0, r1
	sub     r0, #0x5c
	ldr     r0, [r5, r0]
	str     r0, [r5, #0x4]
	mov     r0, r1
	sub     r0, #0x70
	strh    r2, [r5, r0]
	sub     r1, #0x6e
	strh    r2, [r5, r1]
	mov     r0, r5
	ldr     r1, [r4, #0x4]
	add     r0, #0x48
	bl      Function_21d4de4
	mov     r0, r5
	add     r0, #0x4c
	bl      Function_21d4e88
	mov     r0, #0x12
	lsl     r0, r0, #4
	mov     r1, r5
	ldr     r0, [r5, r0]
	add     r1, #0x40
	bl      Function_21d4e5c
	mov     r0, r5
	add     r0, #0xa4
	bl      Function_21d4ee4
	mov     r0, r5
	bl      Function_21d4df0
	mov     r0, r5
	add     r0, #0x14
	bl      Function_21d4e30
	add     r5, #0x9c
	mov     r0, r5
	bl      Function_21d4f34
	pop     {r3-r5,pc}
@ 0x21d4d42


.align 2


.word 0x21dfdf6 @ 0x21d4d44
.word 0x21d53b9 @ 0x21d4d48
.word 0x21dfe02 @ 0x21d4d4c
.word 0x21dfe12 @ 0x21d4d50
.word 0x21d4bb1 @ 0x21d4d54
.thumb
Function_21d4d58: @ 21d4d58 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	bl      Function_2024034
	mov     r0, #0x5f
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2024034
	mov     r0, #0x1a
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21d4d7e
	bl      free
.thumb
branch_21d4d7e: @ 21d4d7e :thumb
	mov     r0, #0x67
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_200b3f0
	mov     r0, #0x63
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_200b190
	mov     r0, #0x19
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_200b190
	mov     r0, #0x65
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_200b190
	mov     r0, #0x66
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_200b190
	mov     r0, #0x4a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_208716c
	mov     r0, r4
	add     r0, #0x4c
	bl      Function_21d4ec0
	mov     r0, r4
	add     r0, #0x14
	bl      Function_21d4e50
	mov     r0, r4
	add     r0, #0x40
	bl      Function_21d4e7c
	mov     r0, r4
	add     r0, #0xa4
	bl      Function_21d4f18
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x21d4de2


.align 2, 0


.thumb
Function_21d4de4: @ 21d4de4 :thumb
	strb    r1, [r0, #0x0]
	mov     r1, #0x0
	strb    r1, [r0, #0x1]
	strh    r1, [r0, #0x2]
	bx      lr
@ 0x21d4dee


.align 2, 0


.thumb
Function_21d4df0: @ 21d4df0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r1, #0x0
	mov     r4, r5
	mov     r2, r1
	add     r4, #0x8
	bl      Function_21d5410
	mov     r2, #0x0
	mov     r0, r5
	strb    r2, [r4, #0x8]
	mov     r1, #0x1
	strb    r1, [r4, #0x9]
	add     r0, #0x48
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_21d4e18
	cmp     r0, #0x4
	beq     branch_21d4e1c
	b       branch_21d4e22
@ 0x21d4e18

.thumb
branch_21d4e18: @ 21d4e18 :thumb
	strb    r1, [r4, #0x4]
	b       branch_21d4e24
@ 0x21d4e1c

.thumb
branch_21d4e1c: @ 21d4e1c :thumb
	mov     r0, #0x2
	strb    r0, [r4, #0x4]
	b       branch_21d4e24
@ 0x21d4e22

.thumb
branch_21d4e22: @ 21d4e22 :thumb
	strb    r2, [r4, #0x4]
.thumb
branch_21d4e24: @ 21d4e24 :thumb
	mov     r0, #0x1
	strb    r0, [r4, #0xb]
	mov     r0, r5
	bl      Function_21d52f4
	pop     {r3-r5,pc}
@ 0x21d4e30

.thumb
Function_21d4e30: @ 21d4e30 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2076af4
	mov     r2, r0
	mov     r1, #0x1e
	mov     r0, #0x9
	mul     r1, r2
	bl      malloc
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	strb    r0, [r4, #0x8]
	strb    r0, [r4, #0xb]
	pop     {r4,pc}
@ 0x21d4e4e


.align 2, 0


.thumb
Function_21d4e50: @ 21d4e50 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d4e58, (=free+1)
	ldr     r0, [r0, #0x0]
	bx      r3
@ 0x21d4e56

.align 2
.word free+1 @ 0x21d4e58



.thumb
Function_21d4e5c: @ 21d4e5c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	bl      Function_207999c
	strb    r0, [r4, #0x0]
	mov     r0, #0x14
	mov     r1, #0x9
	bl      Function_2023790
	str     r0, [r4, #0x4]
	mov     r0, r5
	mov     r1, r4
	bl      Function_21d4f40
	pop     {r3-r5,pc}
@ 0x21d4e7c

.thumb
Function_21d4e7c: @ 21d4e7c :thumb
	ldr     r3, [pc, #0x4] @ 0x21d4e84, (=Function_20237bc_FreeMsg+1)
	ldr     r0, [r0, #0x4]
	bx      r3
@ 0x21d4e82

.align 2
.word Function_20237bc_FreeMsg+1 @ 0x21d4e84



.thumb
Function_21d4e88: @ 21d4e88 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xc
	mov     r1, #0x9
	bl      Function_2023790
	str     r0, [r4, #0x14]
	mov     r0, #0xc
	mov     r1, #0x9
	bl      Function_2023790
	str     r0, [r4, #0x18]
	mov     r0, #0x12
	mov     r1, #0x9
	bl      Function_2023790
	str     r0, [r4, #0x1c]
	mov     r0, #0xc
	mov     r1, #0x9
	bl      Function_2023790
	str     r0, [r4, #0x20]
	mov     r0, #0x10
	mov     r1, #0x9
	bl      Function_2023790
	str     r0, [r4, #0x24]
	pop     {r4,pc}
@ 0x21d4ec0

.thumb
Function_21d4ec0: @ 21d4ec0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x14]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [r4, #0x18]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [r4, #0x1c]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [r4, #0x20]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [r4, #0x24]
	bl      Function_20237bc_FreeMsg
	pop     {r4,pc}
@ 0x21d4ee4

.thumb
Function_21d4ee4: @ 21d4ee4 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r4, #0x0
	strb    r4, [r6, #0x0]
	strb    r4, [r6, #0x1]
	str     r4, [r6, #0x4]
	mov     r5, r6
	mov     r7, r4
.thumb
branch_21d4ef4: @ 21d4ef4 :thumb
	add     r0, r6, r4
	strb    r7, [r0, #0x2]
	mov     r0, #0xc
	mov     r1, #0x9
	bl      Function_2023790
	str     r0, [r5, #0x30]
	mov     r0, #0xc
	mov     r1, #0x9
	bl      Function_2023790
	str     r0, [r5, #0x34]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x30
	cmp     r4, #0x2
	blt     branch_21d4ef4
	pop     {r3-r7,pc}
@ 0x21d4f16


.align 2, 0


.thumb
Function_21d4f18: @ 21d4f18 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_21d4f1e: @ 21d4f1e :thumb
	ldr     r0, [r5, #0x30]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [r5, #0x34]
	bl      Function_20237bc_FreeMsg
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x30
	cmp     r4, #0x2
	blt     branch_21d4f1e
	pop     {r3-r5,pc}
@ 0x21d4f34

.thumb
Function_21d4f34: @ 21d4f34 :thumb
	mov     r1, #0x0
	strb    r1, [r0, #0x0]
	strb    r1, [r0, #0x2]
	strb    r1, [r0, #0x1]
	strh    r1, [r0, #0x4]
	bx      lr
@ 0x21d4f40

.thumb
Function_21d4f40: @ 21d4f40 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldrb    r1, [r4, #0x0]
	mov     r5, r0
	bl      Function_2079aa8
	strb    r0, [r4, #0x1]
	ldrb    r1, [r4, #0x0]
	ldr     r2, [r4, #0x4]
	mov     r0, r5
	bl      Function_2079af4
	pop     {r3-r5,pc}
@ 0x21d4f5a


.align 2, 0


.thumb
Function_21d4f5c: @ 21d4f5c :thumb
	push    {r4,lr}
	mov     r2, r0
	mov     r4, r2
	add     r2, #0x40
	mov     r0, r1
	ldrb    r1, [r2, #0x0]
	add     r4, #0x40
	bl      Function_2079aa8
	strb    r0, [r4, #0x1]
	pop     {r4,pc}
@ 0x21d4f72


.align 2, 0


.thumb
Function_21d4f74: @ 21d4f74 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, #0x20
	mov     r2, r0
	mov     r4, #0x0
	tst     r2, r1
	beq     branch_21d4f90
	mov     r0, r5
	sub     r1, #0x21
	mov     r2, r4
	bl      Function_21d4fdc
	mov     r4, r0
	b       branch_21d4fcc
@ 0x21d4f90

.thumb
branch_21d4f90: @ 21d4f90 :thumb
	mov     r1, #0x10
	tst     r1, r0
	beq     branch_21d4fa4
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, r4
	bl      Function_21d4fdc
	mov     r4, r0
	b       branch_21d4fcc
@ 0x21d4fa4

.thumb
branch_21d4fa4: @ 21d4fa4 :thumb
	mov     r2, #0x40
	mov     r1, r0
	tst     r1, r2
	beq     branch_21d4fba
	mov     r0, r5
	mov     r1, r4
	sub     r2, #0x41
	bl      Function_21d4fdc
	mov     r4, r0
	b       branch_21d4fcc
@ 0x21d4fba

.thumb
branch_21d4fba: @ 21d4fba :thumb
	mov     r1, #0x80
	tst     r0, r1
	beq     branch_21d4fcc
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x1
	bl      Function_21d4fdc
	mov     r4, r0
.thumb
branch_21d4fcc: @ 21d4fcc :thumb
	cmp     r4, #0x1
	bne     branch_21d4fd6
	mov     r0, r5
	bl      Function_21d52f4
.thumb
branch_21d4fd6: @ 21d4fd6 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d4fda


.align 2, 0


.thumb
Function_21d4fdc: @ 21d4fdc :thumb
	push    {r4,lr}
	mov     r3, r0
	add     r3, #0x8
	ldrb    r4, [r3, #0x4]
	cmp     r4, #0x4
	bhi     branch_21d502a
	add     r4, r4, r4
	add     r4, pc
	ldrh    r4, [r4, #0x6]
	lsl     r4, r4, #16
	asr     r4, r4, #16
	add     pc, r4
@ 0x21d4ff4

Jumppoints_21d4ff4:
.hword branch_21d4ffe - Jumppoints_21d4ff4 - 2
.hword branch_21d50e0 - Jumppoints_21d4ff4 - 2
.hword branch_21d505e - Jumppoints_21d4ff4 - 2
.hword branch_21d50b4 - Jumppoints_21d4ff4 - 2
.hword branch_21d5088 - Jumppoints_21d4ff4 - 2
.thumb
branch_21d4ffe: @ 21d4ffe :thumb
	cmp     r1, #0x0
	beq     branch_21d5026
	mov     r2, #0x5
	ldsb    r4, [r3, r2]
	add     r1, r4, r1
	strb    r1, [r3, #0x5]
	ldsb    r1, [r3, r2]
	cmp     r1, #0x0
	bge     branch_21d5014
	mov     r1, r2
	b       branch_21d501a
@ 0x21d5014

.thumb
branch_21d5014: @ 21d5014 :thumb
	cmp     r1, #0x6
	blt     branch_21d501a
	mov     r1, #0x0
.thumb
branch_21d501a: @ 21d501a :thumb
	mov     r2, #0x6
	ldsb    r2, [r3, r2]
	bl      Function_21d5410
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d5026

.thumb
branch_21d5026: @ 21d5026 :thumb
	cmp     r2, #0x0
	bne     branch_21d502c
.thumb
branch_21d502a: @ 21d502a :thumb
	b       branch_21d514a
@ 0x21d502c

.thumb
branch_21d502c: @ 21d502c :thumb
	mov     r1, #0x6
	ldsb    r1, [r3, r1]
	add     r2, r1, r2
	bpl     branch_21d503c
	mov     r1, #0x2
	mov     r2, #0x0
	strb    r1, [r3, #0x4]
	b       branch_21d5052
@ 0x21d503c

.thumb
branch_21d503c: @ 21d503c :thumb
	cmp     r2, #0x4
	ble     branch_21d5052
	mov     r1, #0x5
	ldsb    r1, [r3, r1]
	mov     r2, #0x4
	cmp     r1, #0x5
	bne     branch_21d504e
	mov     r1, r2
	b       branch_21d5050
@ 0x21d504e

.thumb
branch_21d504e: @ 21d504e :thumb
	mov     r1, #0x3
.thumb
branch_21d5050: @ 21d5050 :thumb
	strb    r1, [r3, #0x4]
.thumb
branch_21d5052: @ 21d5052 :thumb
	mov     r1, #0x5
	ldsb    r1, [r3, r1]
	bl      Function_21d5410
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d505e

.thumb
branch_21d505e: @ 21d505e :thumb
	cmp     r2, #0x0
	ble     branch_21d5072
	mov     r2, #0x0
	strb    r2, [r3, #0x4]
	mov     r1, #0x5
	ldsb    r1, [r3, r1]
	bl      Function_21d5410
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d5072

.thumb
branch_21d5072: @ 21d5072 :thumb
	bge     branch_21d514a
	mov     r0, #0x5
	ldsb    r0, [r3, r0]
	cmp     r0, #0x5
	bne     branch_21d5080
	mov     r0, #0x4
	b       branch_21d5082
@ 0x21d5080

.thumb
branch_21d5080: @ 21d5080 :thumb
	mov     r0, #0x3
.thumb
branch_21d5082: @ 21d5082 :thumb
	strb    r0, [r3, #0x4]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d5088

.thumb
branch_21d5088: @ 21d5088 :thumb
	cmp     r2, #0x0
	bge     branch_21d509e
	mov     r1, #0x0
	strb    r1, [r3, #0x4]
	mov     r1, #0x5
	ldsb    r1, [r3, r1]
	mov     r2, #0x4
	bl      Function_21d5410
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d509e

.thumb
branch_21d509e: @ 21d509e :thumb
	ble     branch_21d50a8
	mov     r0, #0x2
	strb    r0, [r3, #0x4]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d50a8

.thumb
branch_21d50a8: @ 21d50a8 :thumb
	cmp     r1, #0x0
	beq     branch_21d514a
	mov     r0, #0x3
	strb    r0, [r3, #0x4]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d50b4

.thumb
branch_21d50b4: @ 21d50b4 :thumb
	cmp     r2, #0x0
	bge     branch_21d50ca
	mov     r1, #0x0
	strb    r1, [r3, #0x4]
	mov     r1, #0x5
	ldsb    r1, [r3, r1]
	mov     r2, #0x4
	bl      Function_21d5410
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d50ca

.thumb
branch_21d50ca: @ 21d50ca :thumb
	ble     branch_21d50d4
	mov     r0, #0x2
	strb    r0, [r3, #0x4]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d50d4

.thumb
branch_21d50d4: @ 21d50d4 :thumb
	cmp     r1, #0x0
	beq     branch_21d514a
	mov     r0, #0x4
	strb    r0, [r3, #0x4]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d50e0

.thumb
branch_21d50e0: @ 21d50e0 :thumb
	mov     r4, #0x8
	ldsb    r0, [r3, r4]
	cmp     r2, #0x0
	bge     branch_21d5102
	cmp     r0, #0x6
	bne     branch_21d50f2
	mov     r1, #0x5
	strb    r1, [r3, #0x8]
	b       branch_21d513e
@ 0x21d50f2

.thumb
branch_21d50f2: @ 21d50f2 :thumb
	.hword  0x1e81 @ sub r1, r0, #0x2
	strb    r1, [r3, #0x8]
	ldsb    r1, [r3, r4]
	cmp     r1, #0x0
	bge     branch_21d513e
	mov     r1, #0x6
	strb    r1, [r3, #0x8]
	b       branch_21d513e
@ 0x21d5102

.thumb
branch_21d5102: @ 21d5102 :thumb
	ble     branch_21d511e
	cmp     r0, #0x6
	bne     branch_21d510e
	mov     r1, #0x0
	strb    r1, [r3, #0x8]
	b       branch_21d513e
@ 0x21d510e

.thumb
branch_21d510e: @ 21d510e :thumb
	add     r1, r0, #0x2
	strb    r1, [r3, #0x8]
	ldsb    r1, [r3, r4]
	cmp     r1, #0x6
	blt     branch_21d513e
	mov     r1, #0x6
	strb    r1, [r3, #0x8]
	b       branch_21d513e
@ 0x21d511e

.thumb
branch_21d511e: @ 21d511e :thumb
	cmp     r1, #0x0
	bge     branch_21d512e
	mov     r1, #0x1
	tst     r1, r0
	beq     branch_21d513e
	.hword  0x1e41 @ sub r1, r0, #0x1
	strb    r1, [r3, #0x8]
	b       branch_21d513e
@ 0x21d512e

.thumb
branch_21d512e: @ 21d512e :thumb
	ble     branch_21d513e
	cmp     r0, #0x6
	beq     branch_21d513e
	mov     r1, #0x1
	tst     r1, r0
	bne     branch_21d513e
	add     r1, r0, #0x1
	strb    r1, [r3, #0x8]
.thumb
branch_21d513e: @ 21d513e :thumb
	mov     r1, #0x8
	ldsb    r1, [r3, r1]
	cmp     r0, r1
	beq     branch_21d514a
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d514a

.thumb
branch_21d514a: @ 21d514a :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d514e


.align 2, 0


.thumb
Function_21d5150: @ 21d5150 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, #0x20
	mov     r2, r0
	mov     r4, #0x0
	tst     r2, r1
	beq     branch_21d516c
	mov     r0, r5
	sub     r1, #0x21
	mov     r2, r4
	bl      Function_21d51cc
	mov     r4, r0
	b       branch_21d51be
@ 0x21d516c

.thumb
branch_21d516c: @ 21d516c :thumb
	mov     r1, #0x10
	tst     r1, r0
	beq     branch_21d5180
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, r4
	bl      Function_21d51cc
	mov     r4, r0
	b       branch_21d51be
@ 0x21d5180

.thumb
branch_21d5180: @ 21d5180 :thumb
	mov     r2, #0x40
	mov     r1, r0
	tst     r1, r2
	beq     branch_21d5196
	mov     r0, r5
	mov     r1, r4
	sub     r2, #0x41
	bl      Function_21d51cc
	mov     r4, r0
	b       branch_21d51be
@ 0x21d5196

.thumb
branch_21d5196: @ 21d5196 :thumb
	mov     r2, #0x80
	mov     r1, r0
	tst     r1, r2
	beq     branch_21d51ac
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x1
	bl      Function_21d51cc
	mov     r4, r0
	b       branch_21d51be
@ 0x21d51ac

.thumb
branch_21d51ac: @ 21d51ac :thumb
	lsl     r1, r2, #2
	tst     r1, r0
	beq     branch_21d51b6
	mov     r4, #0x3
	b       branch_21d51be
@ 0x21d51b6

.thumb
branch_21d51b6: @ 21d51b6 :thumb
	add     r2, #0x80
	tst     r0, r2
	beq     branch_21d51be
	mov     r4, #0x4
.thumb
branch_21d51be: @ 21d51be :thumb
	cmp     r4, #0x1
	bne     branch_21d51c8
	mov     r0, r5
	bl      Function_21d52f4
.thumb
branch_21d51c8: @ 21d51c8 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d51cc

.thumb
Function_21d51cc: @ 21d51cc :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r4, r7
	add     r4, #0x8
	ldrb    r3, [r4, #0x4]
	mov     r6, r7
	add     r6, #0x14
	cmp     r3, #0x0
	bne     branch_21d5286
	cmp     r1, #0x0
	beq     branch_21d5234
	mov     r2, #0x5
	ldsb    r2, [r4, r2]
	add     r5, r2, r1
	bl      Function_21d5e38
	mov     r1, #0xc
	tst     r0, r1
	beq     branch_21d5218
	ldrb    r0, [r6, #0x4]
	ldrb    r3, [r6, #0x6]
	mov     r2, r5
	mov     r1, r5
	cmp     r3, r0
	bls     branch_21d5204
	sub     r0, r3, r0
	sub     r1, r5, r0
	b       branch_21d5208
@ 0x21d5204

.thumb
branch_21d5204: @ 21d5204 :thumb
	sub     r0, r0, r3
	add     r2, r5, r0
.thumb
branch_21d5208: @ 21d5208 :thumb
	cmp     r1, #0x0
	bge     branch_21d5210
	mov     r0, #0x3
	pop     {r3-r7,pc}
@ 0x21d5210

.thumb
branch_21d5210: @ 21d5210 :thumb
	cmp     r2, #0x6
	blt     branch_21d5224
	mov     r0, #0x4
	pop     {r3-r7,pc}
@ 0x21d5218

.thumb
branch_21d5218: @ 21d5218 :thumb
	cmp     r5, #0x0
	blt     branch_21d5220
	cmp     r5, #0x6
	blt     branch_21d5224
.thumb
branch_21d5220: @ 21d5220 :thumb
	mov     r0, #0x2
	pop     {r3-r7,pc}
@ 0x21d5224

.thumb
branch_21d5224: @ 21d5224 :thumb
	mov     r2, #0x6
	ldsb    r2, [r4, r2]
	mov     r0, r7
	mov     r1, r5
	bl      Function_21d5410
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d5234

.thumb
branch_21d5234: @ 21d5234 :thumb
	cmp     r2, #0x0
	beq     branch_21d5286
	mov     r1, #0x6
	ldsb    r1, [r4, r1]
	add     r5, r1, r2
	bl      Function_21d5e38
	mov     r1, #0xc
	tst     r0, r1
	beq     branch_21d526a
	ldrb    r0, [r6, #0x5]
	ldrb    r3, [r6, #0x7]
	mov     r2, r5
	mov     r1, r5
	cmp     r3, r0
	bls     branch_21d525a
	sub     r0, r3, r0
	sub     r1, r5, r0
	b       branch_21d525e
@ 0x21d525a

.thumb
branch_21d525a: @ 21d525a :thumb
	sub     r0, r0, r3
	add     r2, r5, r0
.thumb
branch_21d525e: @ 21d525e :thumb
	cmp     r1, #0x0
	blt     branch_21d5266
	cmp     r2, #0x5
	blt     branch_21d5276
.thumb
branch_21d5266: @ 21d5266 :thumb
	mov     r0, #0x2
	pop     {r3-r7,pc}
@ 0x21d526a

.thumb
branch_21d526a: @ 21d526a :thumb
	cmp     r5, #0x0
	blt     branch_21d5272
	cmp     r5, #0x5
	blt     branch_21d5276
.thumb
branch_21d5272: @ 21d5272 :thumb
	mov     r0, #0x2
	pop     {r3-r7,pc}
@ 0x21d5276

.thumb
branch_21d5276: @ 21d5276 :thumb
	mov     r1, #0x5
	ldsb    r1, [r4, r1]
	mov     r0, r7
	mov     r2, r5
	bl      Function_21d5410
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d5286

.thumb
branch_21d5286: @ 21d5286 :thumb
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21d528e


.align 2, 0


.thumb
Function_21d5290: @ 21d5290 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r5
	add     r4, #0x8
	bl      Function_21d5e38
	cmp     r0, #0x2
	bne     branch_21d52ba
	mov     r0, #0x49
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      GetNrOfPkmnInParty
	strb    r0, [r4, #0x8]
	mov     r0, #0x8
	ldsb    r0, [r4, r0]
	cmp     r0, #0x6
	blt     branch_21d52be
	mov     r0, #0x5
	strb    r0, [r4, #0x8]
	b       branch_21d52be
@ 0x21d52ba

.thumb
branch_21d52ba: @ 21d52ba :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x8]
.thumb
branch_21d52be: @ 21d52be :thumb
	ldrb    r0, [r4, #0x4]
	strb    r0, [r4, #0x9]
	mov     r0, #0x1
	strb    r0, [r4, #0x4]
	mov     r0, r5
	bl      Function_21d52f4
	pop     {r3-r5,pc}
@ 0x21d52ce


.align 2, 0


.thumb
Function_21d52d0: @ 21d52d0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r3, r4
	add     r3, #0x8
	mov     r1, #0x0
	strb    r1, [r3, #0x4]
	mov     r2, #0x9
	ldsb    r2, [r3, r2]
	cmp     r2, #0x0
	beq     branch_21d52ea
	mov     r2, r1
	bl      Function_21d5410
.thumb
branch_21d52ea: @ 21d52ea :thumb
	mov     r0, r4
	bl      Function_21d52f4
	pop     {r4,pc}
@ 0x21d52f2


.align 2, 0


.thumb
Function_21d52f4: @ 21d52f4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r5
	add     r4, #0x8
	mov     r1, #0x0
	strb    r1, [r4, #0xa]
	ldrb    r0, [r4, #0x4]
	cmp     r0, #0x4
	bhi     branch_21d5354
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d5312

Jumppoints_21d5312:
.hword branch_21d531c - Jumppoints_21d5312 - 2
.hword branch_21d532c - Jumppoints_21d5312 - 2
.hword branch_21d5354 - Jumppoints_21d5312 - 2
.hword branch_21d5354 - Jumppoints_21d5312 - 2
.hword branch_21d5354 - Jumppoints_21d5312 - 2
.thumb
branch_21d531c: @ 21d531c :thumb
	mov     r2, #0x7
	ldsb    r2, [r4, r2]
	ldr     r0, [r5, #0x0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	bl      Function_2079c9c
	str     r0, [r4, #0x0]
	b       branch_21d5358
@ 0x21d532c

.thumb
branch_21d532c: @ 21d532c :thumb
	mov     r0, #0x8
	ldsb    r6, [r4, r0]
	mov     r0, #0x49
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      GetNrOfPkmnInParty
	cmp     r6, r0
	bge     branch_21d534e
	mov     r0, #0x49
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r6
	bl      GetAdrOfPkmnInParty
	str     r0, [r4, #0x0]
	b       branch_21d5358
@ 0x21d534e

.thumb
branch_21d534e: @ 21d534e :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	b       branch_21d5358
@ 0x21d5354

.thumb
branch_21d5354: @ 21d5354 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x0]
.thumb
branch_21d5358: @ 21d5358 :thumb
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_21d5388
	mov     r1, #0xac
	mov     r2, #0x0
	bl      GetBoxPkmnData
	cmp     r0, #0x0
	beq     branch_21d5388
	mov     r0, #0x1
	strb    r0, [r4, #0xa]
	mov     r0, r5
	bl      Function_21d5e38
	mov     r1, #0x6
	tst     r0, r1
	bne     branch_21d5388
	ldr     r1, [r4, #0x0]
	mov     r0, r5
	mov     r2, r5
	bl      Function_21d5888
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x21d5388

.thumb
branch_21d5388: @ 21d5388 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x21d538c

.thumb
Function_21d538c: @ 21d538c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x61
	ldr     r1, [pc, #0x20] @ 0x21d53b4, (=0xffff)
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	sub     r0, #0x8
	ldr     r0, [r4, r0]
	bl      Function_202404c
	mov     r0, #0x61
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	ldr     r0, [pc, #0xc] @ 0x21d53b4, (=0xffff)
	cmp     r1, r0
	beq     branch_21d53b0
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d53b0

.thumb
branch_21d53b0: @ 21d53b0 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d53b4

.word 0xffff @ 0x21d53b4
.thumb
Function_21d53b8: @ 21d53b8 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r6, r0
	mov     r4, r2
	cmp     r5, #0x0
	bne     branch_21d53d2
	mov     r0, #0x61
	lsl     r0, r0, #2
	ldr     r2, [r4, r0]
	ldr     r1, [pc, #0x38] @ 0x21d5404, (=0xffff)
	cmp     r2, r1
	bne     branch_21d53d2
	str     r6, [r4, r0]
.thumb
branch_21d53d2: @ 21d53d2 :thumb
	mov     r0, r4
	bl      Function_21d5e08
	cmp     r0, #0x4
	bne     branch_21d5400
	cmp     r6, #0x2
	bne     branch_21d5400
	cmp     r5, #0x0
	beq     branch_21d53ee
	cmp     r5, #0x1
	beq     branch_21d53f8
	cmp     r5, #0x3
	beq     branch_21d53f8
	pop     {r4-r6,pc}
@ 0x21d53ee

.thumb
branch_21d53ee: @ 21d53ee :thumb
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d5ba0
	pop     {r4-r6,pc}
@ 0x21d53f8

.thumb
branch_21d53f8: @ 21d53f8 :thumb
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d5ba0
.thumb
branch_21d5400: @ 21d5400 :thumb
	pop     {r4-r6,pc}
@ 0x21d5402


.align 2


.word 0xffff @ 0x21d5404
.thumb
Function_21d5408: @ 21d5408 :thumb
	mov     r2, #0x43
	lsl     r2, r2, #2
	str     r1, [r0, r2]
	bx      lr
@ 0x21d5410

.thumb
Function_21d5410: @ 21d5410 :thumb
	add     r0, #0x8
	mov     r3, #0x6
	strb    r1, [r0, #0x5]
	mul     r3, r2
	strb    r2, [r0, #0x6]
	add     r1, r1, r3
	strb    r1, [r0, #0x7]
	bx      lr
@ 0x21d5420

.thumb
Function_21d5420: @ 21d5420 :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	mov     r6, r0
	mov     r4, r7
	mov     r5, r7
	mov     r0, r7
	add     r4, #0x14
	add     r5, #0x8
	bl      Function_21d5e10
	cmp     r0, #0x0
	bne     branch_21d545c
	bl      Function_2076af4
	mov     r2, r0
	ldr     r0, [r5, #0x0]
	ldr     r1, [r4, #0x0]
	blx     MI_CpuCopy32
	mov     r0, #0x12
	mov     r2, #0x7
	lsl     r0, r0, #4
	mov     r1, #0x0
	ldsb    r2, [r5, r2]
	ldr     r0, [r6, r0]
	mvn     r1, r1
	bl      Function_2079968
	mov     r0, #0x0
	b       branch_21d547a
@ 0x21d545c

.thumb
branch_21d545c: @ 21d545c :thumb
	bl      Get_PkmnData_Size
	mov     r2, r0
	ldr     r0, [r5, #0x0]
	ldr     r1, [r4, #0x0]
	blx     MI_CpuCopy32
	mov     r0, #0x49
	mov     r1, #0x8
	lsl     r0, r0, #2
	ldsb    r1, [r5, r1]
	ldr     r0, [r6, r0]
	bl      Function_207a080
	mov     r0, #0x1
.thumb
branch_21d547a: @ 21d547a :thumb
	strb    r0, [r4, #0xb]
	ldr     r1, [r4, #0x0]
	mov     r0, r7
	bl      Function_21d5ba8
	mov     r0, #0x5
	ldsb    r0, [r5, r0]
	strb    r0, [r4, #0x6]
	ldrb    r0, [r4, #0x6]
	strb    r0, [r4, #0x4]
	mov     r0, #0x6
	ldsb    r0, [r5, r0]
	strb    r0, [r4, #0x7]
	ldrb    r0, [r4, #0x7]
	strb    r0, [r4, #0x5]
	mov     r0, #0x2
	strb    r0, [r7, #0x13]
	mov     r0, #0x0
	strb    r0, [r7, #0x12]
	pop     {r3-r7,pc}
@ 0x21d54a2


.align 2, 0


.thumb
Function_21d54a4: @ 21d54a4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x34
	mov     r6, r1
	mov     r7, r0
	add     r6, #0x14
	mov     r0, #0x1
	strb    r0, [r6, #0xa]
	mov     r0, r1
	str     r1, [sp, #0x4]
	bl      Function_21d5e24
	str     r0, [sp, #0x14]
	bl      Function_2076af4
	str     r0, [sp, #0x10]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x4]
	add     r1, sp, #0x30
	ldr     r5, [r0, #0x14]
	add     r0, sp, #0x24
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	add     r2, sp, #0x2c
	add     r3, sp, #0x28
	bl      Function_21d5ee8
	ldr     r0, [sp, #0x28]
	ldr     r1, [sp, #0x24]
	str     r0, [sp, #0x18]
	cmp     r0, r1
	bhi     branch_21d556a
	mov     r1, #0x6
	mul     r1, r0
	str     r1, [sp, #0x8]
.thumb
branch_21d54ea: @ 21d54ea :thumb
	ldr     r1, [sp, #0x30]
	ldr     r0, [sp, #0x8]
	str     r1, [sp, #0x1c]
	add     r4, r1, r0
	ldr     r1, [sp, #0x2c]
	ldr     r0, [sp, #0x1c]
	cmp     r0, r1
	bhi     branch_21d5558
.thumb
branch_21d54fa: @ 21d54fa :thumb
	mov     r0, #0x12
	lsl     r0, r0, #4
	mov     r1, #0x0
	ldr     r0, [r7, r0]
	mvn     r1, r1
	mov     r2, r4
	bl      Function_2079c9c
	mov     r1, #0xac
	mov     r2, #0x0
	str     r0, [sp, #0x20]
	bl      GetBoxPkmnData
	cmp     r0, #0x0
	beq     branch_21d554a
	ldr     r0, [sp, #0x20]
	ldr     r2, [sp, #0x10]
	mov     r1, r5
	blx     MI_CpuCopy32
	mov     r0, #0x12
	lsl     r0, r0, #4
	mov     r1, #0x0
	ldr     r0, [r7, r0]
	mvn     r1, r1
	mov     r2, r4
	bl      Function_2079968
	ldr     r0, [sp, #0x10]
	add     r5, r5, r0
	ldr     r0, [sp, #0xc]
	add     r1, r6, r0
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x14]
	strb    r4, [r1, #0xc]
	cmp     r4, r0
	bne     branch_21d554a
	mov     r0, #0x0
	strb    r0, [r6, #0xa]
.thumb
branch_21d554a: @ 21d554a :thumb
	ldr     r0, [sp, #0x1c]
	ldr     r1, [sp, #0x2c]
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1c64 @ add r4, r4, #0x1
	str     r0, [sp, #0x1c]
	cmp     r0, r1
	bls     branch_21d54fa
.thumb
branch_21d5558: @ 21d5558 :thumb
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x24]
	.hword  0x1d80 @ add r0, r0, #0x6
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x18]
	cmp     r0, r1
	bls     branch_21d54ea
.thumb
branch_21d556a: @ 21d556a :thumb
	ldr     r0, [sp, #0xc]
	strb    r0, [r6, #0x8]
	ldr     r1, [sp, #0x28]
	mov     r0, #0x6
	ldr     r2, [sp, #0x30]
	mul     r0, r1
	add     r0, r2, r0
	strb    r0, [r6, #0x9]
	ldr     r0, [sp, #0x4]
	ldrb    r0, [r0, #0x12]
	cmp     r0, #0x0
	beq     branch_21d5586
	mov     r1, #0x4
	b       branch_21d5588
@ 0x21d5586

.thumb
branch_21d5586: @ 21d5586 :thumb
	mov     r1, #0x8
.thumb
branch_21d5588: @ 21d5588 :thumb
	ldr     r0, [sp, #0x4]
	strb    r1, [r0, #0x13]
	mov     r1, #0x0
	strb    r1, [r0, #0x12]
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x21d5594

.thumb
Function_21d5594: @ 21d5594 :thumb
	mov     r2, r1
	add     r1, #0x8
	mov     r0, #0x5
	ldsb    r0, [r1, r0]
	add     r2, #0x14
	strb    r0, [r2, #0x6]
	ldrb    r0, [r2, #0x6]
	strb    r0, [r2, #0x4]
	mov     r0, #0x6
	ldsb    r0, [r1, r0]
	strb    r0, [r2, #0x7]
	ldrb    r0, [r2, #0x7]
	strb    r0, [r2, #0x5]
	bx      lr
@ 0x21d55b0

.thumb
Function_21d55b0: @ 21d55b0 :thumb
	mov     r2, r1
	add     r1, #0x8
	mov     r0, #0x5
	ldsb    r0, [r1, r0]
	add     r2, #0x14
	strb    r0, [r2, #0x6]
	mov     r0, #0x6
	ldsb    r0, [r1, r0]
	strb    r0, [r2, #0x7]
	bx      lr
@ 0x21d55c4

.thumb
Function_21d55c4: @ 21d55c4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r4, r1
	mov     r6, r1
	mov     r0, r1
	str     r1, [sp, #0x0]
	add     r4, #0x14
	add     r6, #0x8
	mov     r7, #0x0
	bl      Function_21d5e10
	cmp     r0, #0x0
	bne     branch_21d562a
	ldr     r0, [r4, #0x0]
	mov     r1, #0x70
	mov     r2, r7
	bl      GetBoxPkmnData
	str     r0, [sp, #0x4]
	mov     r0, #0x12
	mov     r2, #0x7
	lsl     r0, r0, #4
	ldsb    r2, [r6, r2]
	ldr     r0, [r5, r0]
	ldr     r3, [r4, #0x0]
	.hword  0x1e79 @ sub r1, r7, #0x1
	bl      Function_2079914
	mov     r0, #0x12
	mov     r2, #0x7
	lsl     r0, r0, #4
	ldsb    r2, [r6, r2]
	ldr     r0, [r5, r0]
	.hword  0x1e79 @ sub r1, r7, #0x1
	bl      Function_2079c9c
	mov     r1, #0x5
	mov     r2, r7
	mov     r4, r0
	bl      GetBoxPkmnData
	mov     r1, #0x7b
	lsl     r1, r1, #2
	cmp     r0, r1
	bne     branch_21d5672
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x1
	bne     branch_21d5672
	mov     r7, #0x1
	b       branch_21d5672
@ 0x21d562a

.thumb
branch_21d562a: @ 21d562a :thumb
	ldrb    r0, [r4, #0xb]
	cmp     r0, #0x0
	beq     branch_21d563e
	mov     r0, #0x49
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r4, #0x0]
	bl      CopyPkmnDataToParty
	b       branch_21d5658

branch_21d563e: @ 21d563e :thumb
	mov     r1, #0x1a
	lsl     r1, r1, #4
	ldr     r0, [r4, #0x0]
	ldr     r1, [r5, r1]
	bl      Function_20774c8
	mov     r1, #0x49
	lsl     r1, r1, #2
	ldr     r0, [r5, r1]
	add     r1, #0x7c
	ldr     r1, [r5, r1]
	bl      CopyPkmnDataToParty
branch_21d5658: @ 21d5658 :thumb
	mov     r0, #0x49
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      GetNrOfPkmnInParty
	mov     r1, r0
	mov     r0, #0x49
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	bl      GetAdrOfPkmnInParty
	mov     r4, r0
.thumb
branch_21d5672: @ 21d5672 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_21d5ba8
	mov     r0, r5
	bl      Function_21d52f4
	cmp     r0, #0x0
	bne     branch_21d569e
	cmp     r7, #0x1
	bne     branch_21d569e
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	mov     r2, r5
	bl      Function_21d58ac
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x6
	bl      Function_21d6594
.thumb
branch_21d569e: @ 21d569e :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, #0x1
	strb    r1, [r0, #0x13]
	strb    r1, [r0, #0x12]
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d56aa


.align 2, 0


.thumb
Function_21d56ac: @ 21d56ac :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r6, r1
	mov     r7, r0
	add     r6, #0x14
	mov     r0, r1
	str     r1, [sp, #0x0]
	bl      Function_21d5f3c
	str     r0, [sp, #0x8]
	ldrb    r0, [r6, #0x9]
	str     r0, [sp, #0xc]
	bl      Function_2076af4
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	mov     r5, #0x0
	ldr     r4, [r0, #0x14]
	ldrb    r0, [r6, #0x8]
	cmp     r0, #0x0
	ble     branch_21d5700
.thumb
branch_21d56d6: @ 21d56d6 :thumb
	add     r3, r6, r5
	mov     r2, #0xc
	ldsb    r3, [r3, r2]
	ldr     r2, [sp, #0xc]
	mov     r0, #0x12
	lsl     r0, r0, #4
	sub     r3, r3, r2
	ldr     r2, [sp, #0x8]
	mov     r1, #0x0
	add     r2, r2, r3
	ldr     r0, [r7, r0]
	mvn     r1, r1
	mov     r3, r4
	bl      Function_2079914
	ldr     r0, [sp, #0x4]
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r4, r4, r0
	ldrb    r0, [r6, #0x8]
	cmp     r5, r0
	blt     branch_21d56d6
.thumb
branch_21d5700: @ 21d5700 :thumb
	ldr     r0, [sp, #0x0]
	bl      Function_21d5e24
	mov     r2, r0
	mov     r0, #0x12
	lsl     r0, r0, #4
	mov     r1, #0x0
	ldr     r0, [r7, r0]
	mvn     r1, r1
	bl      Function_2079c9c
	mov     r1, r0
	ldr     r0, [sp, #0x0]
	bl      Function_21d5ba8
	mov     r0, r7
	bl      Function_21d52f4
	mov     r0, #0x0
	strb    r0, [r6, #0x8]
	ldr     r0, [sp, #0x0]
	mov     r1, #0x1
	strb    r1, [r0, #0x13]
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d5732


.align 2, 0


.thumb
Function_21d5734: @ 21d5734 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r1
	str     r1, [sp, #0x0]
	mov     r5, r0
	add     r4, #0x14
	bl      Get_PkmnData_Size
	mov     r6, r0
	ldr     r0, [sp, #0x0]
	mov     r2, r6
	ldr     r7, [r0, #0x14]
	str     r0, [sp, #0x4]
	add     r0, #0x8
	str     r0, [sp, #0x4]
	mov     r0, r7
	add     r1, r7, r6
	blx     MI_CpuCopy32
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x0]
	ldr     r0, [r0, #0x8]
	ldr     r1, [r1, #0x14]
	mov     r2, r6
	blx     MI_CpuCopy32
	ldr     r0, [sp, #0x0]
	bl      Function_21d5e10
	cmp     r0, #0x0
	bne     branch_21d578e
	ldr     r2, [sp, #0x4]
	mov     r0, #0x12
	mov     r3, #0x7
	lsl     r0, r0, #4
	ldsb    r2, [r2, r3]
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	mvn     r1, r1
	add     r3, r7, r6
	bl      Function_2079914
	mov     r0, #0x0
	strb    r0, [r4, #0xb]
	b       branch_21d57c8
@ 0x21d578e

.thumb
branch_21d578e: @ 21d578e :thumb
	ldrb    r0, [r4, #0xb]
	cmp     r0, #0x0
	bne     branch_21d57a2
	mov     r1, #0x1a
	lsl     r1, r1, #4
	ldr     r1, [r5, r1]
	add     r0, r7, r6
	bl      Function_20774c8
	b       branch_21d57b0
@ 0x21d57a2

.thumb
branch_21d57a2: @ 21d57a2 :thumb
	mov     r1, #0x1a
	lsl     r1, r1, #4
	ldr     r1, [r5, r1]
	add     r0, r7, r6
	mov     r2, r6
	blx     MI_CpuCopy32
.thumb
branch_21d57b0: @ 21d57b0 :thumb
	mov     r3, #0x49
	lsl     r3, r3, #2
	ldr     r0, [r5, r3]
	ldr     r1, [sp, #0x4]
	mov     r2, #0x8
	ldsb    r1, [r1, r2]
	add     r3, #0x7c
	ldr     r2, [r5, r3]
	bl      Function_207a128
	mov     r0, #0x1
	strb    r0, [r4, #0xb]
.thumb
branch_21d57c8: @ 21d57c8 :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [r4, #0x0]
	mov     r2, r5
	bl      Function_21d5888
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d57d6


.align 2, 0


.thumb
Function_21d57d8: @ 21d57d8 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x12
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	ldr     r2, [r4, #0x14]
	bl      Function_20798a0
	cmp     r0, #0x0
	beq     branch_21d57fa
	mov     r0, #0x1
	strb    r0, [r4, #0x13]
	mov     r0, r4
	bl      Function_21d52f4
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d57fa

.thumb
branch_21d57fa: @ 21d57fa :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d57fe


.align 2, 0


.thumb
Function_21d5800: @ 21d5800 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x12
	lsl     r0, r0, #4
	mov     r4, r5
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x8]
	add     r4, #0x8
	bl      Function_20798a0
	cmp     r0, #0x0
	beq     branch_21d5830
	mov     r0, #0x49
	mov     r1, #0x8
	lsl     r0, r0, #2
	ldsb    r1, [r4, r1]
	ldr     r0, [r5, r0]
	bl      Function_207a080
	mov     r0, r5
	bl      Function_21d52f4
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d5830

.thumb
branch_21d5830: @ 21d5830 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d5834


.thumb
Function_21d5834: @ 21d5834 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x14]
	bl      ClearPkmnDataStructure1
	mov     r0, #0x1
	strb    r0, [r4, #0x13]
	mov     r0, r4
	bl      Function_21d52f4
	pop     {r4,pc}
@ 0x21d584a


.align 2, 0
.thumb
Function_21d584c: @ 21d584c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r5
	add     r4, #0x8
	bl      Function_21d5e10
	cmp     r0, #0x0
	bne     branch_21d5870
	mov     r0, #0x12
	mov     r2, #0x7
	lsl     r0, r0, #4
	mov     r1, #0x0
	ldsb    r2, [r4, r2]
	ldr     r0, [r5, r0]
	mvn     r1, r1
	bl      Function_2079968
	b       branch_21d587e
@ 0x21d5870

.thumb
branch_21d5870: @ 21d5870 :thumb
	mov     r0, #0x49
	mov     r1, #0x8
	lsl     r0, r0, #2
	ldsb    r1, [r4, r1]
	ldr     r0, [r5, r0]
	bl      Function_207a080
.thumb
branch_21d587e: @ 21d587e :thumb
	mov     r0, r5
	bl      Function_21d52f4
	pop     {r3-r5,pc}
@ 0x21d5886


.align 2, 0


.thumb
Function_21d5888: @ 21d5888 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	bl      Function_21d58ac
	mov     r0, r5
	bl      Function_21d5e08
	cmp     r0, #0x4
	bne     branch_21d58a8
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_21d59f4
.thumb
branch_21d58a8: @ 21d58a8 :thumb
	pop     {r4-r6,pc}
@ 0x21d58aa


.align 2, 0


.thumb
Function_21d58ac: @ 21d58ac :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r5, r1
	mov     r4, r7
	mov     r0, r5
	mov     r6, r2
	add     r4, #0x4c
	bl      InitEncryptPkmnData_Part1
	str     r0, [sp, #0x0]
	str     r5, [r7, #0x4c]
	mov     r0, r5
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetBoxPkmnData
	strh    r0, [r4, #0x4]
	mov     r0, r5
	mov     r1, #0x6
	mov     r2, #0x0
	bl      GetBoxPkmnData
	strh    r0, [r4, #0x6]
	mov     r0, #0x47
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	bl      Function_207a274
	ldrh    r1, [r4, #0x4]
	bl      Function_207a294
	strh    r0, [r4, #0x8]
	mov     r0, r5
	mov     r1, #0xad
	mov     r2, #0x0
	bl      GetBoxPkmnData
	strb    r0, [r4, #0xf]
	ldrh    r0, [r4, #0x4]
	mov     r1, #0x9
	bl      Load_PlPersonal1
	mov     r7, r0
	mov     r0, r5
	mov     r1, #0x8
	mov     r2, #0x0
	bl      GetBoxPkmnData
	mov     r2, r0
	ldrh    r1, [r4, #0x4]
	mov     r0, r7
	bl      Function_2075b9c
	strb    r0, [r4, #0xa]
	mov     r0, r5
	mov     r1, #0xb
	mov     r2, #0x0
	bl      GetBoxPkmnData
	strb    r0, [r4, #0xb]
	mov     r0, r5
	mov     r1, #0xb1
	mov     r2, #0x0
	bl      GetBoxPkmnData
	strb    r0, [r4, #0xc]
	mov     r0, r5
	mov     r1, #0xb2
	mov     r2, #0x0
	bl      GetBoxPkmnData
	strb    r0, [r4, #0xd]
	ldrb    r0, [r4, #0xf]
	cmp     r0, #0x0
	bne     branch_21d5968
	mov     r0, r5
	mov     r1, #0xb0
	mov     r2, #0x0
	bl      GetBoxPkmnData
	cmp     r0, #0x0
	beq     branch_21d5968
	mov     r1, #0x0
	mov     r0, r5
	mov     r2, r1
	bl      GetBoxPkmnData
	mov     r2, r0
	ldrh    r1, [r4, #0x4]
	mov     r0, r7
	bl      Function_2075dd0
	strb    r0, [r4, #0xe]
	b       branch_21d596c
@ 0x21d5968

.thumb
branch_21d5968: @ 21d5968 :thumb
	mov     r0, #0xff
	strb    r0, [r4, #0xe]
.thumb
branch_21d596c: @ 21d596c :thumb
	ldr     r2, [r4, #0x14]
	mov     r0, r5
	mov     r1, #0x77
	bl      GetBoxPkmnData
	ldrb    r0, [r4, #0xf]
	cmp     r0, #0x0
	bne     branch_21d598c
	mov     r0, #0x19
	lsl     r0, r0, #4
	ldrh    r1, [r4, #0x4]
	ldr     r0, [r6, r0]
	ldr     r2, [r4, #0x18]
	bl      Function_200b1b8_CallMsgDecrypt
	b       branch_21d599a
@ 0x21d598c

.thumb
branch_21d598c: @ 21d598c :thumb
	ldr     r0, [r4, #0x18]
	ldr     r1, [r4, #0x14]
	bl      Function_2023810
	ldr     r0, [r4, #0x14]
	bl      Function_20237e8
.thumb
branch_21d599a: @ 21d599a :thumb
	ldrh    r1, [r4, #0x6]
	cmp     r1, #0x0
	beq     branch_21d59aa
	ldr     r0, [r4, #0x1c]
	mov     r2, #0x9
	bl      Function_207cfa0
	b       branch_21d59b8
@ 0x21d59aa

.thumb
branch_21d59aa: @ 21d59aa :thumb
	mov     r0, #0x63
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	ldr     r2, [r4, #0x1c]
	mov     r1, #0x14
	bl      Function_200b1b8_CallMsgDecrypt
.thumb
branch_21d59b8: @ 21d59b8 :thumb
	mov     r0, r5
	bl      Function_2075bd4
	mov     r1, r0
	mov     r0, #0x65
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	ldr     r2, [r4, #0x20]
	bl      Function_200b1b8_CallMsgDecrypt
	mov     r0, r5
	mov     r1, #0xa
	mov     r2, #0x0
	bl      GetBoxPkmnData
	mov     r1, r0
	mov     r0, #0x66
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	ldr     r2, [r4, #0x24]
	bl      Function_200b1b8_CallMsgDecrypt
	mov     r0, r7
	bl      free_PkmnData
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	bl      InitEncryptPkmnData_Part1Again
	pop     {r3-r7,pc}
@ 0x21d59f4


.thumb
Function_21d59f4: @ 21d59f4 :thumb
	push    {r3-r7,lr}
	str     r0, [sp, #0x0]
	mov     r7, r1
	ldr     r1, [sp, #0x0]
	mov     r6, r0
	add     r1, #0xa4
	mov     r5, r2
	ldrb    r2, [r1, #0x0]
	mov     r1, #0x30
	add     r6, #0x4c
	add     r0, #0xac
	mul     r1, r2
	add     r4, r0, r1
	str     r7, [r0, r1]
	ldrh    r0, [r6, #0x4]
	strh    r0, [r4, #0x4]
	ldrb    r0, [r6, #0xf]
	strb    r0, [r4, #0x6]
	ldrb    r0, [r6, #0xa]
	strh    r0, [r4, #0x8]
	ldrb    r0, [r4, #0x6]
	cmp     r0, #0x0
	ldr     r0, [r4, #0x28]
	beq     branch_21d5a2c
	ldr     r1, [r6, #0x18]
	bl      Function_2023810
	b       branch_21d5a32
@ 0x21d5a2c

.thumb
branch_21d5a2c: @ 21d5a2c :thumb
	ldr     r1, [r6, #0x14]
	bl      Function_2023810
.thumb
branch_21d5a32: @ 21d5a32 :thumb
	ldr     r0, [r4, #0x2c]
	ldr     r1, [r6, #0x20]
	bl      Function_2023810
	mov     r1, #0x1a
	lsl     r1, r1, #4
	ldr     r1, [r5, r1]
	mov     r0, r7
	bl      Function_20774c8
	mov     r0, #0x1a
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	bl      InitEncryptPkmnData
	mov     r6, r0
	mov     r0, #0x1a
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0xa4
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r4, #0xa]
	mov     r0, #0x1a
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0xa5
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r4, #0xc]
	mov     r0, #0x1a
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0xa6
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r4, #0xe]
	mov     r0, #0x1a
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0xa8
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r4, #0x10]
	mov     r0, #0x1a
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0xa9
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r4, #0x12]
	mov     r0, #0x1a
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0xa7
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r4, #0x14]
	mov     r0, #0x1a
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x13
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r4, #0x16]
	mov     r0, #0x1a
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x14
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r4, #0x18]
	mov     r0, #0x1a
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x15
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r4, #0x1a]
	mov     r0, #0x1a
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x16
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r4, #0x1c]
	mov     r0, #0x1a
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x17
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r4, #0x1e]
	mov     r0, #0x1a
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x36
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r4, #0x20]
	mov     r0, #0x1a
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x37
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r4, #0x22]
	mov     r0, #0x1a
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x38
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r4, #0x24]
	mov     r0, #0x1a
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x39
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r4, #0x26]
	mov     r0, #0x1a
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x70
	mov     r2, #0x0
	bl      GetPkmnData
	strb    r0, [r4, #0x7]
	mov     r0, #0x1a
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, r6
	bl      InitEncryptPkmnData_Part1And2
	ldr     r0, [sp, #0x0]
	mov     r2, #0x1
	add     r0, #0xa4
	ldrb    r1, [r0, #0x0]
	ldr     r0, [sp, #0x0]
	add     r0, r0, r1
	add     r0, #0xa6
	strb    r2, [r0, #0x0]
	pop     {r3-r7,pc}
@ 0x21d5b70

.thumb
Function_21d5b70: @ 21d5b70 :thumb
	mov     r1, r0
	add     r1, #0xa4
	ldrb    r2, [r1, #0x0]
	mov     r1, #0x1
	add     r0, #0xa4
	eor     r1, r2
	strb    r1, [r0, #0x0]
	bx      lr
@ 0x21d5b80

.thumb
Function_21d5b80: @ 21d5b80 :thumb
	mov     r1, r0
	add     r1, #0xa5
	ldrb    r1, [r1, #0x0]
	add     r2, r1, #0x1
	mov     r1, r0
	add     r1, #0xa5
	strb    r2, [r1, #0x0]
	mov     r1, r0
	add     r1, #0xa5
	ldrb    r1, [r1, #0x0]
	cmp     r1, #0x3
	bcc     branch_21d5b9e
	mov     r1, #0x0
	add     r0, #0xa5
	strb    r1, [r0, #0x0]
.thumb
branch_21d5b9e: @ 21d5b9e :thumb
	bx      lr
@ 0x21d5ba0

.thumb
Function_21d5ba0: @ 21d5ba0 :thumb
	add     r0, #0xa8
	str     r1, [r0, #0x0]
	bx      lr
@ 0x21d5ba6


.align 2, 0


.thumb
Function_21d5ba8: @ 21d5ba8 :thumb
	str     r1, [r0, #0x4c]
	bx      lr
@ 0x21d5bac

.thumb
Function_21d5bac: @ 21d5bac :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	add     r0, #0x96
	ldrb    r1, [r0, #0x0]
	mov     r2, r4
	add     r0, sp, #0x0
	add     r2, #0x4c
	strb    r1, [r0, #0x0]
	strb    r1, [r2, #0xb]
	ldr     r0, [r4, #0x4c]
	mov     r1, #0xb
	add     r2, sp, #0x0
	bl      SetBoxPkmnData
	mov     r0, r4
	bl      Function_21d5e10
	cmp     r0, #0x0
	bne     branch_21d5be2
	mov     r0, r4
	bl      Function_21d5e38
	cmp     r0, #0x1
	bne     branch_21d5be2
	bl      Function_2024804
.thumb
branch_21d5be2: @ 21d5be2 :thumb
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d5be6


.align 2, 0


.thumb
Function_21d5be8: @ 21d5be8 :thumb
	push    {r0-r3}
.thumb
Function_21d5bea: @ 21d5bea :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r6, r0
	add     r0, sp, #0x18
	mov     r4, r6
	ldrh    r1, [r0, #0x4]
	add     r4, #0x4c
	mov     r5, r2
	strh    r1, [r4, #0x6]
	cmp     r1, #0x0
	beq     branch_21d5c0a
	ldr     r0, [r4, #0x1c]
	mov     r2, #0x9
	bl      Function_207cfa0
	b       branch_21d5c18
@ 0x21d5c0a

.thumb
branch_21d5c0a: @ 21d5c0a :thumb
	mov     r0, #0x63
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [r4, #0x1c]
	mov     r1, #0x14
	bl      Function_200b1b8_CallMsgDecrypt
.thumb
branch_21d5c18: @ 21d5c18 :thumb
	mov     r0, r6
	bl      Function_21d5e10
	cmp     r0, #0x0
	bne     branch_21d5c48
	mov     r0, r6
	bl      Function_21d5e38
	cmp     r0, #0x1
	bne     branch_21d5c48
	mov     r0, r6
	bl      Function_21d5e24
	mov     r2, r0
	add     r0, sp, #0x1c
	str     r0, [sp, #0x0]
	mov     r0, #0x12
	lsl     r0, r0, #4
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	mvn     r1, r1
	mov     r3, #0x6
	bl      Function_2079c50
branch_21d5c48: @ 21d5c48 :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, #0x6
	add     r2, sp, #0x1c
	bl      SetBoxPkmnData
	ldr     r0, [r4, #0x0]
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetBoxPkmnData
	ldr     r1, [pc, #0x58] @ 0x21d5cb8, (=0x1ed)
	cmp     r0, r1
	bne     branch_21d5c8a
	ldr     r0, [r4, #0x0]
	bl      Function_2077930
	ldr     r0, [r4, #0x0]
	mov     r1, #0xb1
	mov     r2, #0x0
	bl      GetBoxPkmnData
	strb    r0, [r4, #0xc]
	ldr     r0, [r4, #0x0]
	mov     r1, #0xb2
	mov     r2, #0x0
	bl      GetBoxPkmnData
	add     sp, #0x4
	strb    r0, [r4, #0xd]
	pop     {r3-r6}
	pop     {r3}
	add     sp, #0x10
	bx      r3
@ 0x21d5c8a

.thumb
branch_21d5c8a: @ 21d5c8a :thumb
	.hword  0x1f89 @ sub r1, r1, #0x6
	cmp     r0, r1
	bne     branch_21d5cae
	ldr     r0, [r4, #0x0]
	bl      Function_2077a1c
	ldr     r0, [r4, #0x0]
	mov     r1, #0xa
	mov     r2, #0x0
	bl      GetBoxPkmnData
	mov     r1, r0
	mov     r0, #0x66
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [r4, #0x24]
	bl      Function_200b1b8_CallMsgDecrypt
.thumb
branch_21d5cae: @ 21d5cae :thumb
	add     sp, #0x4
	pop     {r3-r6}
	pop     {r3}
	add     sp, #0x10
	bx      r3
@ 0x21d5cb8

.word 0x1ed @ 0x21d5cb8
.thumb
Function_21d5cbc: @ 21d5cbc :thumb
	mov     r2, r0
	add     r2, #0x40
	ldrb    r2, [r2, #0x0]
	mov     r1, r0
	add     r1, #0x40
	add     r3, r2, #0x1
	mov     r2, r0
	add     r2, #0x40
	strb    r3, [r2, #0x0]
	mov     r2, r0
	add     r2, #0x40
	ldrb    r2, [r2, #0x0]
	cmp     r2, #0x12
	bcc     branch_21d5cdc
	mov     r2, #0x0
	strb    r2, [r1, #0x0]
.thumb
branch_21d5cdc: @ 21d5cdc :thumb
	ldr     r3, [pc, #0x4] @ 0x21d5ce4, (=0x21d4f41)
	ldr     r0, [r0, #0x0]
	bx      r3
@ 0x21d5ce2


.align 2


.word Function_21d4f40+1 @ =0x21d4f41, 0x21d5ce4
.thumb
Function_21d5ce8: @ 21d5ce8 :thumb
	mov     r2, r0
	add     r2, #0x40
	ldrb    r2, [r2, #0x0]
	mov     r1, r0
	add     r1, #0x40
	cmp     r2, #0x0
	beq     branch_21d5cfa
	.hword  0x1e52 @ sub r2, r2, #0x1
	b       branch_21d5cfc
@ 0x21d5cfa

.thumb
branch_21d5cfa: @ 21d5cfa :thumb
	mov     r2, #0x11
.thumb
branch_21d5cfc: @ 21d5cfc :thumb
	ldr     r3, [pc, #0x4] @ 0x21d5d04, (=0x21d4f41)
	strb    r2, [r1, #0x0]
	ldr     r0, [r0, #0x0]
	bx      r3
@ 0x21d5d04

.word Function_21d4f40+1 @ =0x21d4f41, 0x21d5d04
.thumb
Function_21d5d08: @ 21d5d08 :thumb
	mov     r3, r0
	mov     r2, r0
	add     r2, #0x40
	strb    r1, [r2, #0x0]
	add     r3, #0x40
	mov     r1, r3
	ldr     r3, [pc, #0x4] @ 0x21d5d1c, (=0x21d4f41)
	ldr     r0, [r0, #0x0]
	bx      r3
@ 0x21d5d1a


.align 2


.word Function_21d4f40+1 @ =0x21d4f41, 0x21d5d1c
.thumb
Function_21d5d20: @ 21d5d20 :thumb
	add     r0, #0x98
	str     r1, [r0, #0x0]
	bx      lr
@ 0x21d5d26


.align 2, 0


.thumb
Function_21d5d28: @ 21d5d28 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r2, r5
	add     r2, #0x4c
	mov     r4, r1
	ldrh    r1, [r2, #0x6]
	ldr     r0, [pc, #0x18] @ 0x21d5d50, (=0x112)
	strh    r1, [r5, r0]
	add     r0, #0x7a
	ldr     r0, [r4, r0]
	ldr     r2, [r2, #0x1c]
	mov     r1, #0x14
	bl      Function_200b1b8_CallMsgDecrypt
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, r4
	bl      Function_21d5be8
	pop     {r3-r5,pc}
@ 0x21d5d50

.word 0x112 @ 0x21d5d50
.thumb
Function_21d5d54: @ 21d5d54 :thumb
	ldr     r1, [pc, #0x4] @ 0x21d5d5c, (=0x112)
	mov     r2, #0x0
	strh    r2, [r0, r1]
	bx      lr
@ 0x21d5d5c

.word 0x112 @ 0x21d5d5c
.thumb
Function_21d5d60: @ 21d5d60 :thumb
	push    {r4,lr}
	ldr     r3, [pc, #0x10] @ 0x21d5d74, (=0x112)
	mov     r2, r1
	ldrh    r1, [r0, r3]
	mov     r4, #0x0
	strh    r4, [r0, r3]
	bl      Function_21d5be8
	pop     {r4,pc}
@ 0x21d5d72


.align 2


.word 0x112 @ 0x21d5d74
.thumb
Function_21d5d78: @ 21d5d78 :thumb
	push    {r4,lr}
	mov     r3, r0
	add     r3, #0x52
	ldr     r4, [pc, #0x10] @ 0x21d5d90, (=0x112)
	mov     r2, r1
	ldrh    r1, [r0, r4]
	ldrh    r3, [r3, #0x0]
	strh    r3, [r0, r4]
	bl      Function_21d5be8
	pop     {r4,pc}
@ 0x21d5d8e


.align 2


.word 0x112 @ 0x21d5d90
.thumb
Function_21d5d94: @ 21d5d94 :thumb
	add     r0, #0x9c
	strb    r1, [r0, #0x0]
	bx      lr
@ 0x21d5d9a


.align 2, 0


.thumb
Function_21d5d9c: @ 21d5d9c :thumb
	add     r0, #0x9e
	strb    r1, [r0, #0x0]
	bx      lr
@ 0x21d5da2


.align 2, 0


.thumb
Function_21d5da4: @ 21d5da4 :thumb
	add     r0, #0x9d
	strb    r1, [r0, #0x0]
	bx      lr
@ 0x21d5daa


.align 2, 0


.thumb
Function_21d5dac: @ 21d5dac :thumb
	add     r0, #0xa0
	strh    r1, [r0, #0x0]
	bx      lr
@ 0x21d5db2


.align 2, 0


.thumb
Function_21d5db4: @ 21d5db4 :thumb
	cmp     r1, #0x0
	bne     branch_21d5dc0
	mov     r1, #0x0
	add     r0, #0x4a
	strh    r1, [r0, #0x0]
	bx      lr
@ 0x21d5dc0

.thumb
branch_21d5dc0: @ 21d5dc0 :thumb
	mov     r2, r0
	add     r2, #0x4a
	ldrh    r3, [r2, #0x0]
	mov     r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	lsl     r2, r1
	mov     r1, r3
	eor     r1, r2
	add     r0, #0x4a
	strh    r1, [r0, #0x0]
	bx      lr
@ 0x21d5dd6


.align 2, 0


.thumb
Function_21d5dd8: @ 21d5dd8 :thumb
	mov     r1, r0
	add     r1, #0x49
	ldrb    r2, [r1, #0x0]
	mov     r1, #0x1
	add     r0, #0x49
	eor     r1, r2
	strb    r1, [r0, #0x0]
	bx      lr
@ 0x21d5de8

.thumb
Function_21d5de8: @ 21d5de8 :thumb
	mov     r1, #0x63
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	bx      lr
@ 0x21d5df0

.thumb
Function_21d5df0: @ 21d5df0 :thumb
	mov     r1, #0x67
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	bx      lr
@ 0x21d5df8

.thumb
Function_21d5df8: @ 21d5df8 :thumb
	mov     r1, #0x69
	lsl     r1, r1, #2
	ldr     r3, [pc, #0x4] @ 0x21d5e04, (=Function_2027b50+1)
	ldr     r0, [r0, r1]
	bx      r3
@ 0x21d5e02

.align 2
.word Function_2027b50+1 @ 0x21d5e04



.thumb
Function_21d5e08: @ 21d5e08 :thumb
	add     r0, #0x48
	ldrb    r0, [r0, #0x0]
	bx      lr
@ 0x21d5e0e


.align 2, 0
.thumb
Function_21d5e10: @ 21d5e10 :thumb
	ldrb    r0, [r0, #0xc]
	bx      lr
@ 0x21d5e14

.thumb
Function_21d5e14: @ 21d5e14 :thumb
	mov     r1, #0xd
	ldsb    r0, [r0, r1]
	bx      lr
@ 0x21d5e1a


.align 2, 0


.thumb
Function_21d5e1c: @ 21d5e1c :thumb
	mov     r1, #0xe
	ldsb    r0, [r0, r1]
	bx      lr
@ 0x21d5e22


.align 2, 0


.thumb
Function_21d5e24: @ 21d5e24 :thumb
	mov     r1, #0xf
	ldsb    r0, [r0, r1]
	bx      lr
@ 0x21d5e2a


.align 2, 0


.thumb
Function_21d5e2c: @ 21d5e2c :thumb
	mov     r1, #0x10
	ldsb    r0, [r0, r1]
	bx      lr
@ 0x21d5e32


.align 2, 0


.thumb
Function_21d5e34: @ 21d5e34 :thumb
	ldrb    r0, [r0, #0x12]
	bx      lr
@ 0x21d5e38

.thumb
Function_21d5e38: @ 21d5e38 :thumb
	ldrb    r0, [r0, #0x13]
	bx      lr
@ 0x21d5e3c

.thumb
Function_21d5e3c: @ 21d5e3c :thumb
	ldrb    r1, [r0, #0x13]
	cmp     r1, #0x0
	beq     branch_21d5e46
	ldrb    r0, [r0, #0x1f]
	bx      lr
@ 0x21d5e46

.thumb
branch_21d5e46: @ 21d5e46 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21d5e4a


.align 2, 0


.thumb
Function_21d5e4c: @ 21d5e4c :thumb
	ldrb    r1, [r0, #0x13]
	cmp     r1, #0x2
	beq     branch_21d5e56
	cmp     r1, #0x4
	bne     branch_21d5e5a
.thumb
branch_21d5e56: @ 21d5e56 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x21d5e5a

.thumb
branch_21d5e5a: @ 21d5e5a :thumb
	ldrb    r0, [r0, #0x12]
	cmp     r0, #0x0
	beq     branch_21d5e64
	mov     r0, #0x1
	bx      lr
@ 0x21d5e64

.thumb
branch_21d5e64: @ 21d5e64 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21d5e68

.thumb
Function_21d5e68: @ 21d5e68 :thumb
	add     r0, #0x40
	ldrb    r0, [r0, #0x0]
	bx      lr
@ 0x21d5e6e


.align 2, 0


.thumb
Function_21d5e70: @ 21d5e70 :thumb
	add     r0, #0x4c
	bx      lr
@ 0x21d5e74

.thumb
Function_21d5e74: @ 21d5e74 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d5e4c
	cmp     r0, #0x0
	beq     branch_21d5e86
	add     r4, #0x52
	ldrh    r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x21d5e86

.thumb
branch_21d5e86: @ 21d5e86 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d5e8a


.align 2, 0


.thumb
Function_21d5e8c: @ 21d5e8c :thumb
	add     r0, #0x40
	bx      lr
@ 0x21d5e90

.thumb
Function_21d5e90: @ 21d5e90 :thumb
	ldr     r0, [r0, #0x0]
	bx      lr
@ 0x21d5e94

.thumb
Function_21d5e94: @ 21d5e94 :thumb
	mov     r1, #0x43
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	bx      lr
@ 0x21d5e9c

.thumb
Function_21d5e9c: @ 21d5e9c :thumb
	ldr     r0, [r0, #0x4c]
	bx      lr
@ 0x21d5ea0

.thumb
Function_21d5ea0: @ 21d5ea0 :thumb
	add     r0, #0x57
	ldrb    r0, [r0, #0x0]
	bx      lr
@ 0x21d5ea6


.align 2, 0


.thumb
Function_21d5ea8: @ 21d5ea8 :thumb
	add     r0, #0x98
	ldr     r0, [r0, #0x0]
	bx      lr
@ 0x21d5eae


.align 2, 0


.thumb
Function_21d5eb0: @ 21d5eb0 :thumb
	mov     r1, #0xa0
	ldsh    r0, [r0, r1]
	bx      lr
@ 0x21d5eb6


.align 2, 0


.thumb
Function_21d5eb8: @ 21d5eb8 :thumb
	add     r0, #0x9e
	ldrb    r0, [r0, #0x0]
	bx      lr
@ 0x21d5ebe


.align 2, 0


.thumb
Function_21d5ec0: @ 21d5ec0 :thumb
	add     r0, #0x9d
	ldrb    r0, [r0, #0x0]
	bx      lr
@ 0x21d5ec6


.align 2, 0


.thumb
Function_21d5ec8: @ 21d5ec8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d5e08
	cmp     r0, #0x3
	beq     branch_21d5eda
	add     r4, #0x4a
	ldrh    r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x21d5eda

.thumb
branch_21d5eda: @ 21d5eda :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d5ede


.align 2, 0


.thumb
Function_21d5ee0: @ 21d5ee0 :thumb
	add     r0, #0x49
	ldrb    r0, [r0, #0x0]
	bx      lr
@ 0x21d5ee6


.align 2, 0


.thumb
Function_21d5ee8: @ 21d5ee8 :thumb
	push    {r3-r6}
	add     r0, #0x14
	ldrb    r6, [r0, #0x6]
	ldrb    r5, [r0, #0x4]
	ldr     r4, [sp, #0x10]
	cmp     r5, r6
	bhi     branch_21d5efc
	str     r5, [r1, #0x0]
	ldrb    r1, [r0, #0x6]
	b       branch_21d5f00
@ 0x21d5efc

.thumb
branch_21d5efc: @ 21d5efc :thumb
	str     r6, [r1, #0x0]
	ldrb    r1, [r0, #0x4]
.thumb
branch_21d5f00: @ 21d5f00 :thumb
	str     r1, [r2, #0x0]
	ldrb    r2, [r0, #0x7]
	ldrb    r1, [r0, #0x5]
	cmp     r1, r2
	bhi     branch_21d5f14
	str     r1, [r3, #0x0]
	ldrb    r0, [r0, #0x7]
	str     r0, [r4, #0x0]
	pop     {r3-r6}
	bx      lr
@ 0x21d5f14

.thumb
branch_21d5f14: @ 21d5f14 :thumb
	str     r2, [r3, #0x0]
	ldrb    r0, [r0, #0x5]
	str     r0, [r4, #0x0]
	pop     {r3-r6}
	bx      lr
@ 0x21d5f1e


.align 2, 0


.thumb
Function_21d5f20: @ 21d5f20 :thumb
	add     r0, #0x14
	ldrb    r2, [r0, #0x4]
	ldrb    r1, [r0, #0x6]
	cmp     r2, r1
	bne     branch_21d5f36
	ldrb    r1, [r0, #0x5]
	ldrb    r0, [r0, #0x7]
	cmp     r1, r0
	bne     branch_21d5f36
	mov     r0, #0x1
	bx      lr
@ 0x21d5f36

.thumb
branch_21d5f36: @ 21d5f36 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21d5f3a


.align 2, 0


.thumb
Function_21d5f3c: @ 21d5f3c :thumb
	push    {r3,r4}
	mov     r1, r0
	add     r1, #0x14
	mov     r2, #0xd
	mov     r3, #0xe
	ldsb    r2, [r0, r2]
	ldsb    r0, [r0, r3]
	ldrb    r4, [r1, #0x4]
	ldrb    r3, [r1, #0x6]
	cmp     r3, r4
	bls     branch_21d5f56
	sub     r3, r3, r4
	sub     r2, r2, r3
.thumb
branch_21d5f56: @ 21d5f56 :thumb
	ldrb    r3, [r1, #0x5]
	ldrb    r1, [r1, #0x7]
	cmp     r1, r3
	bls     branch_21d5f62
	sub     r1, r1, r3
	sub     r0, r0, r1
.thumb
branch_21d5f62: @ 21d5f62 :thumb
	mov     r1, #0x6
	mul     r1, r0
	add     r0, r2, r1
	pop     {r3,r4}
	bx      lr
@ 0x21d5f6c

.thumb
Function_21d5f6c: @ 21d5f6c :thumb
	add     r0, #0x14
	add     r2, r0, r1
	mov     r1, #0xc
	ldsb    r1, [r2, r1]
	ldrb    r0, [r0, #0x9]
	sub     r0, r1, r0
	bx      lr
@ 0x21d5f7a


.align 2, 0


.thumb
Function_21d5f7c: @ 21d5f7c :thumb
	ldr     r1, [pc, #0x4] @ 0x21d5f84, (=0x112)
	ldrh    r0, [r0, r1]
	bx      lr
@ 0x21d5f82


.align 2


.word 0x112 @ 0x21d5f84
.thumb
Function_21d5f88: @ 21d5f88 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d5f7c
	cmp     r0, #0x0
	bne     branch_21d5f9a
	mov     r0, r4
	bl      Function_21d5e74
.thumb
branch_21d5f9a: @ 21d5f9a :thumb
	pop     {r4,pc}
@ 0x21d5f9c

.thumb
Function_21d5f9c: @ 21d5f9c :thumb
	add     r0, #0xa4
	ldrb    r0, [r0, #0x0]
	bx      lr
@ 0x21d5fa2


.align 2, 0


.thumb
Function_21d5fa4: @ 21d5fa4 :thumb
	add     r0, #0xa5
	ldrb    r0, [r0, #0x0]
	bx      lr
@ 0x21d5faa


.align 2, 0


.thumb
Function_21d5fac: @ 21d5fac :thumb
	mov     r2, #0x30
	add     r0, #0xac
	mul     r2, r1
	add     r0, r0, r2
	bx      lr
@ 0x21d5fb6


.align 2, 0


.thumb
Function_21d5fb8: @ 21d5fb8 :thumb
	add     r0, r0, r1
	add     r0, #0xa6
	ldrb    r0, [r0, #0x0]
	bx      lr
@ 0x21d5fc0

.thumb
Function_21d5fc0: @ 21d5fc0 :thumb
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	bx      lr
@ 0x21d5fc6


.align 2, 0


.thumb
Function_21d5fc8: @ 21d5fc8 :thumb
	add     r0, #0x5b
	ldrb    r0, [r0, #0x0]
	bx      lr
@ 0x21d5fce


.align 2, 0


.thumb
Function_21d5fd0: @ 21d5fd0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	bl      Function_21d5e38
	cmp     r0, #0x1
	bne     branch_21d5ff6
	mov     r0, r5
	bl      Function_21d5e10
	cmp     r0, #0x0
	bne     branch_21d6008
	ldr     r0, [r5, #0x4c]
	mov     r1, r4
	mov     r2, r6
	bl      GetBoxPkmnData
	pop     {r4-r6,pc}
@ 0x21d5ff6

.thumb
branch_21d5ff6: @ 21d5ff6 :thumb
	ldrb    r0, [r5, #0x1f]
	cmp     r0, #0x0
	bne     branch_21d6008
	ldr     r0, [r5, #0x4c]
	mov     r1, r4
	mov     r2, r6
	bl      GetBoxPkmnData
	pop     {r4-r6,pc}
@ 0x21d6008

.thumb
branch_21d6008: @ 21d6008 :thumb
	ldr     r0, [r5, #0x4c]
	mov     r1, r4
	mov     r2, r6
	bl      GetPkmnData
	pop     {r4-r6,pc}
@ 0x21d6014

.thumb
Function_21d6014: @ 21d6014 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	bl      Function_21d5e10
	cmp     r0, #0x0
	bne     branch_21d6030
	ldr     r0, [r5, #0x4c]
	mov     r1, r4
	mov     r2, r6
	bl      GetBoxPkmnData
	pop     {r4-r6,pc}
@ 0x21d6030

.thumb
branch_21d6030: @ 21d6030 :thumb
	ldr     r0, [r5, #0x8]
	mov     r1, r4
	mov     r2, r6
	bl      GetPkmnData
	pop     {r4-r6,pc}
@ 0x21d603c

.thumb
Function_21d603c: @ 21d603c :thumb
	push    {r3-r6}
	ldr     r4, [pc, #0x64] @ 0x21d60a4, (=0x21d6105)
	mov     r6, r0
	str     r4, [r0, #0x30]
	mov     r4, #0x0
	str     r4, [r0, #0x1c]
	str     r1, [r0, #0xc]
	str     r2, [r0, #0x10]
	str     r1, [r0, #0x14]
	str     r2, [r0, #0x18]
	str     r1, [r0, #0x4]
	mov     r4, r0
	str     r2, [r0, #0x8]
	lsl     r2, r2, #24
	mov     r5, #0xfe
	add     r4, #0x28
	strb    r5, [r4, #0x0]
	lsl     r4, r1, #24
	lsr     r4, r4, #24
	add     r6, #0x29
	strb    r4, [r6, #0x0]
	mov     r6, r0
	lsr     r2, r2, #24
	add     r6, #0x2a
	strb    r2, [r6, #0x0]
	mov     r6, r0
	add     r6, #0x2b
	strb    r3, [r6, #0x0]
	mov     r3, r0
	add     r3, #0x2c
	strb    r5, [r3, #0x0]
	mov     r3, r0
	add     r3, #0x2d
	strb    r4, [r3, #0x0]
	mov     r3, r0
	add     r3, #0x2e
	strb    r2, [r3, #0x0]
	mov     r2, r0
	add     r2, #0x2f
	ldr     r3, [sp, #0x10]
	cmp     r1, #0x80
	strb    r3, [r2, #0x0]
	bge     branch_21d609a
	mov     r1, #0x1
	str     r1, [r0, #0x24]
	pop     {r3-r6}
	bx      lr
@ 0x21d609a

.thumb
branch_21d609a: @ 21d609a :thumb
	sub     r5, #0xff
	str     r5, [r0, #0x24]
	pop     {r3-r6}
	bx      lr
@ 0x21d60a2


.align 2


.word 0x21d6105 @ 0x21d60a4
.thumb
Function_21d60a8: @ 21d60a8 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	add     r0, #0x2c
	bl      Function_2022734
	cmp     r0, #0x1
	bne     branch_21d60e8
	mov     r0, r5
	add     r0, #0x28
	bl      Function_2022734
	cmp     r0, #0x0
	bne     branch_21d60e8
	ldr     r0, [r5, #0x1c]
	mov     r4, #0x1
	cmp     r0, #0x0
	bne     branch_21d60d0
	mov     r6, r4
	b       branch_21d60d2
@ 0x21d60d0

.thumb
branch_21d60d0: @ 21d60d0 :thumb
	mov     r6, #0x0
.thumb
branch_21d60d2: @ 21d60d2 :thumb
	add     r0, sp, #0x4
	add     r1, sp, #0x0
	bl      Function_20227a4
	cmp     r0, #0x0
	beq     branch_21d60ec
	ldr     r0, [sp, #0x4]
	str     r0, [r5, #0x14]
	ldr     r0, [sp, #0x0]
	str     r0, [r5, #0x18]
	b       branch_21d60ec
@ 0x21d60e8

.thumb
branch_21d60e8: @ 21d60e8 :thumb
	mov     r4, #0x0
	mov     r6, r4
.thumb
branch_21d60ec: @ 21d60ec :thumb
	str     r4, [r5, #0x1c]
	ldr     r3, [r5, #0x30]
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	blx     r3
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x21d60fc

.thumb
Function_21d60fc: @ 21d60fc :thumb
	mov     r2, #0x0
	str     r2, [r0, #0x0]
	str     r1, [r0, #0x30]
	bx      lr
@ 0x21d6104

.thumb
Function_21d6104: @ 21d6104 :thumb
	push    {r4,lr}
	mov     r4, r0
	cmp     r1, #0x0
	beq     branch_21d612c
	cmp     r2, #0x0
	beq     branch_21d612c
	ldr     r1, [r4, #0x14]
	str     r1, [r4, #0x4]
	ldr     r2, [r4, #0x18]
	str     r2, [r4, #0x8]
	ldr     r1, [r4, #0x4]
	bl      Function_21d6164
	strh    r0, [r4, #0x20]
	ldr     r1, [pc, #0xc] @ 0x21d6130, (=0x21d6135)
	mov     r0, r4
	bl      Function_21d60fc
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d612c

.thumb
branch_21d612c: @ 21d612c :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d6130

.word 0x21d6135 @ 0x21d6130
.thumb
Function_21d6134: @ 21d6134 :thumb
	push    {r3,lr}
	cmp     r1, #0x0
	bne     branch_21d6144
	ldr     r1, [pc, #0xc] @ 0x21d6148, (=0x21d6105)
	bl      Function_21d60fc
	mov     r0, #0x3
	pop     {r3,pc}
@ 0x21d6144

.thumb
branch_21d6144: @ 21d6144 :thumb
	mov     r0, #0x2
	pop     {r3,pc}
@ 0x21d6148

.word Function_21d6104+1 @ =0x21d6105, 0x21d6148
.thumb
Function_21d614c: @ 21d614c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x14]
	ldr     r2, [r4, #0x18]
	bl      Function_21d6164
	mov     r2, r0
	ldrh    r1, [r4, #0x20]
	mov     r0, r4
	bl      Function_21d617c
	pop     {r4,pc}
@ 0x21d6164

.thumb
Function_21d6164: @ 21d6164 :thumb
	mov     r3, r0
	ldr     r0, [r3, #0x10]
	sub     r0, r2, r0
	ldr     r2, [r3, #0xc]
	ldr     r3, [pc, #0x8] @ 0x21d6178, (=FX_Atan2Idx)
	sub     r1, r1, r2
	lsl     r0, r0, #12
	lsl     r1, r1, #12
	bx      r3
@ 0x21d6176


.align 2


.word FX_Atan2Idx @ 0x21d6178
.thumb
Function_21d617c: @ 21d617c :thumb
	push    {r4,r5}
	sub     r2, r2, r1
	bpl     branch_21d618a
	mov     r4, #0x0
	mvn     r4, r4
	mul     r2, r4
	b       branch_21d618c
@ 0x21d618a

.thumb
branch_21d618a: @ 21d618a :thumb
	mov     r4, #0x1
.thumb
branch_21d618c: @ 21d618c :thumb
	ldr     r5, [pc, #0x1c] @ 0x21d61ac, (=0x21dfe44)
	mov     r3, #0x0
.thumb
branch_21d6190: @ 21d6190 :thumb
	ldrh    r1, [r5, #0x0]
	cmp     r2, r1
	blt     branch_21d619e
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r3, #0x2
	bcc     branch_21d6190
.thumb
branch_21d619e: @ 21d619e :thumb
	ldr     r1, [r0, #0x24]
	mov     r0, r3
	mul     r0, r4
	mul     r0, r1
	pop     {r4,r5}
	bx      lr
@ 0x21d61aa


.align 2


.word 0x21dfe44 @ 0x21d61ac
.thumb
Function_21d61b0: @ 21d61b0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r5, r1
	str     r0, [sp, #0x14]
	ldr     r1, [pc, #0x274] @ 0x21d6430, (=0xb3b4)
	mov     r0, #0xa
	mov     r7, r2
	bl      malloc
	mov     r4, r0
	beq     branch_21d61de
	mov     r0, #0x16
	lsl     r0, r0, #4
	str     r5, [r4, r0]
	mov     r0, #0xa
	bl      Function_2018340
	mov     r1, #0x57
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	cmp     r0, #0x0
	bne     branch_21d61e0

branch_21d61de: @ 21d61de :thumb
	b       branch_21d642a

branch_21d61e0: @ 21d61e0 :thumb
	mov     r0, #Box_Narc
	mov     r1, #0xa
	mov     r5, #0x1
	bl      LoadFromNARC_8
	mov     r6, r0
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      Function_20177a4
	bl      Function_201ff00
	bl      Function_201ff68
	mov     r1, #0x1
	lsl     r1, r1, #26
	ldr     r0, [r1, #0x0]
	ldr     r3, [pc, #0x22c] @ 0x21d6434, (=0xffffe0ff)
	and     r0, r3
	str     r0, [r1, #0x0]
	ldr     r0, [pc, #0x228] @ 0x21d6438, (=0x4001000)
	ldr     r2, [r0, #0x0]
	and     r2, r3
	str     r2, [r0, #0x0]
	ldr     r3, [r1, #0x0]
	ldr     r2, [pc, #0x224] @ 0x21d643c, (=0xffcfffef)
	and     r3, r2
	ldr     r2, [pc, #0x224] @ 0x21d6440, (=0x100010)
	orr     r2, r3
	str     r2, [r1, #0x0]
	ldr     r2, [r0, #0x0]
	ldr     r1, [pc, #0x218] @ 0x21d643c, (=0xffcfffef)
	and     r2, r1
	mov     r1, #0x10
	orr     r1, r2
	str     r1, [r0, #0x0]
	blx     Function_20a7944
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r2, #0x80
	str     r2, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r3, #0x20
	str     r3, [sp, #0xc]
	mov     r1, #0xa
	str     r1, [sp, #0x10]
	mov     r1, r2
	mov     r2, r0
	bl      Function_200a784
	mov     r1, r4
	mov     r0, #0x80
	add     r1, #0x1c
	mov     r2, #0xa
	bl      Function_20095c4
	str     r0, [r4, #0x18]
	mov     r0, r4
	mov     r2, #0x6
	add     r0, #0x1c
	mov     r1, #0x0
	lsl     r2, r2, #18
	bl      Function_200964c
	mov     r0, #0x51
	lsl     r0, r0, #2
	add     r0, r4, r0
	blx     Function_20a81d0
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	mov     r0, #0x51
	lsl     r0, r0, #2
	add     r0, r4, r0
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r1, #0x1a
	mov     r2, r5
	mov     r3, #0x0
	bl      Function_200716c
	mov     r0, #0x0
	mov     r1, #0xa
	bl      Function_2002bec
	mov     r0, #0xa
	bl      AllocInitNARCPokeGra
	mov     r1, #0x56
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r1, #0x0
	mov     r2, r4
	mov     r0, r1
.thumb
branch_21d62a2: @ 21d62a2 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r0, [r2, #0x8]
	.hword  0x1d12 @ add r2, r2, #0x4
	cmp     r1, #0x4
	bcc     branch_21d62a2
	bl      Function_21d7970
	ldr     r0, [sp, #0x14]
	mov     r2, #0x59
	str     r4, [r0, #0x0]
	lsl     r2, r2, #2
	str     r6, [sp, #0x0]
	add     r0, r4, r2
	.hword  0x1f12 @ sub r2, r2, #0x4
	ldr     r2, [r4, r2]
	ldr     r3, [r4, #0x18]
	mov     r1, r4
	bl      Function_21da270
	and     r5, r0
	ldr     r0, [r4, #0x18]
	mov     r3, #0x16
	str     r0, [sp, #0x0]
	lsl     r3, r3, #4
	mov     r0, #0x43
	ldr     r2, [r4, r3]
	.hword  0x1f1b @ sub r3, r3, #0x4
	lsl     r0, r0, #4
	ldr     r3, [r4, r3]
	add     r0, r4, r0
	mov     r1, r4
	bl      Function_21d79f8
	mov     r2, #0x16
	and     r5, r0
	str     r6, [sp, #0x0]
	ldr     r0, [pc, #0x158] @ 0x21d6444, (=0x5dc0)
	lsl     r2, r2, #4
	ldr     r2, [r4, r2]
	ldr     r3, [r4, #0x18]
	add     r0, r4, r0
	mov     r1, r4
	bl      Function_21d8b54
	mov     r2, #0x16
	and     r5, r0
	str     r6, [sp, #0x0]
	ldr     r0, [pc, #0x144] @ 0x21d6448, (=0x6558)
	lsl     r2, r2, #4
	ldr     r2, [r4, r2]
	ldr     r3, [r4, #0x18]
	add     r0, r4, r0
	mov     r1, r4
	bl      Function_21da814
	and     r5, r0
	mov     r0, r7
	bl      Function_21d5de8
	ldr     r1, [r4, #0x18]
	mov     r3, #0x16
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x128] @ 0x21d644c, (=0x65a0)
	str     r6, [sp, #0x8]
	lsl     r3, r3, #4
	ldr     r2, [r4, r3]
	.hword  0x1f1b @ sub r3, r3, #0x4
	ldr     r3, [r4, r3]
	add     r0, r4, r0
	mov     r1, r4
	bl      Function_21da92c
	and     r5, r0
	mov     r0, r7
	bl      Function_21d5de8
	str     r0, [sp, #0x18]
	mov     r0, r7
	bl      Function_21d5df0
	str     r0, [sp, #0x1c]
	mov     r0, r7
	bl      Function_21d5df8
	ldr     r1, [r4, #0x18]
	mov     r3, #0x16
	str     r1, [sp, #0x0]
	ldr     r1, [sp, #0x18]
	lsl     r3, r3, #4
	str     r1, [sp, #0x4]
	ldr     r1, [sp, #0x1c]
	str     r1, [sp, #0x8]
	str     r0, [sp, #0xc]
	str     r6, [sp, #0x10]
	ldr     r0, [pc, #0xec] @ 0x21d6450, (=0x65f4)
	ldr     r2, [r4, r3]
	.hword  0x1f1b @ sub r3, r3, #0x4
	ldr     r3, [r4, r3]
	add     r0, r4, r0
	mov     r1, r4
	bl      Function_21db2fc
	and     r5, r0
	ldr     r0, [r4, #0x18]
	mov     r3, #0x16
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xd8] @ 0x21d6454, (=0x662c)
	str     r6, [sp, #0x4]
	lsl     r3, r3, #4
	ldr     r2, [r4, r3]
	.hword  0x1f1b @ sub r3, r3, #0x4
	ldr     r3, [r4, r3]
	add     r0, r4, r0
	mov     r1, r4
	bl      Function_21db8e4
	and     r5, r0
	ldr     r0, [r4, #0x18]
	mov     r3, #0x16
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xc0] @ 0x21d6458, (=0xb22c)
	str     r6, [sp, #0x4]
	lsl     r3, r3, #4
	ldr     r2, [r4, r3]
	.hword  0x1f1b @ sub r3, r3, #0x4
	ldr     r3, [r4, r3]
	add     r0, r4, r0
	mov     r1, r4
	bl      Function_21dc5f0
	and     r5, r0
	ldr     r0, [r4, #0x18]
	mov     r3, #0x16
	str     r0, [sp, #0x0]
	lsl     r3, r3, #4
	ldr     r0, [pc, #0xa8] @ 0x21d645c, (=0xb3a4)
	ldr     r2, [r4, r3]
	.hword  0x1f1b @ sub r3, r3, #0x4
	ldr     r3, [r4, r3]
	add     r0, r4, r0
	mov     r1, r4
	bl      Function_21dcf88
	and     r5, r0
	ldr     r0, [r4, #0x18]
	mov     r3, #0x16
	str     r0, [sp, #0x0]
	lsl     r3, r3, #4
	ldr     r0, [pc, #0x90] @ 0x21d6460, (=0xb3a8)
	ldr     r2, [r4, r3]
	.hword  0x1f1b @ sub r3, r3, #0x4
	ldr     r3, [r4, r3]
	add     r0, r4, r0
	mov     r1, r4
	bl      Function_21de3e8
	and     r5, r0
	mov     r0, r7
	bl      Function_21d5de8
	ldr     r1, [r4, #0x18]
	mov     r3, #0x16
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x74] @ 0x21d6464, (=0xb3ac)
	str     r6, [sp, #0x8]
	lsl     r3, r3, #4
	ldr     r2, [r4, r3]
	.hword  0x1f1b @ sub r3, r3, #0x4
	ldr     r3, [r4, r3]
	add     r0, r4, r0
	mov     r1, r4
	bl      Function_21dec04
	and     r5, r0
	ldr     r0, [pc, #0x64] @ 0x21d6468, (=0xb3b0)
	mov     r1, r4
	str     r7, [r4, r0]
	ldr     r0, [pc, #0x60] @ 0x21d646c, (=0x21d6475)
	mov     r2, #0x2
	bl      AddTaskToTaskList1
	str     r0, [r4, #0x0]
	ldr     r0, [pc, #0x5c] @ 0x21d6470, (=0x21d6665)
	mov     r1, r4
	mov     r2, #0x1
	bl      Function_21d77c8
	str     r0, [r4, #0x4]
	mov     r0, r6
	bl      Call_FS_CloseFile
	add     sp, #0x20
	mov     r0, r5
	pop     {r3-r7,pc}
@ 0x21d642a

.thumb
branch_21d642a: @ 21d642a :thumb
	mov     r0, #0x0
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x21d6430

.word 0xb3b4 @ 0x21d6430
.word 0xffffe0ff @ 0x21d6434
.word 0x4001000 @ 0x21d6438
.word 0xffcfffef @ 0x21d643c
.word 0x100010 @ 0x21d6440
.word 0x5dc0 @ 0x21d6444
.word 0x6558 @ 0x21d6448
.word 0x65a0 @ 0x21d644c
.word 0x65f4 @ 0x21d6450
.word 0x662c @ 0x21d6454
.word 0xb22c @ 0x21d6458
.word 0xb3a4 @ 0x21d645c
.word 0xb3a8 @ 0x21d6460
.word 0xb3ac @ 0x21d6464
.word 0xb3b0 @ 0x21d6468
.word 0x21d6475 @ 0x21d646c
.word 0x21d6665 @ 0x21d6470



.thumb
Function_21d6474: @ 21d6474 :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_21d797c
	blx     G3X_Reset
	blx     G3X_ResetMtxStack
	blx     Function_20a73c0
	mov     r0, #0x56
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      DrawNARCPokeGra
	ldr     r0, [pc, #0x8] @ 0x21d649c, (=GFX_FLUSH)
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	pop     {r4,pc}
@ 0x21d649a

.align 2
.word GFX_FLUSH @ 0x21d649c



.thumb
Function_21d64a0: @ 21d64a0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	ldr     r0, [r4, #0x0]
	bl      Call_RemoveTaskFromTaskList
	ldr     r0, [r4, #0x4]
	bl      Call_RemoveTaskFromTaskList
	ldr     r0, [pc, #0xb4] @ 0x21d6570, (=0xb3ac)
	ldr     r0, [r4, r0]
	bl      Function_21decac
	ldr     r0, [pc, #0xb0] @ 0x21d6574, (=0xb3a8)
	ldr     r0, [r4, r0]
	bl      Function_21de440
	ldr     r0, [pc, #0xac] @ 0x21d6578, (=0xb3a4)
	ldr     r0, [r4, r0]
	bl      Function_21dd078
	ldr     r0, [pc, #0xa8] @ 0x21d657c, (=0xb22c)
	add     r0, r4, r0
	bl      Function_21dc680
	ldr     r0, [pc, #0xa4] @ 0x21d6580, (=0x662c)
	add     r0, r4, r0
	bl      Function_21dbad0
	ldr     r0, [pc, #0xa0] @ 0x21d6584, (=0x65f4)
	add     r0, r4, r0
	bl      Function_21db370
	ldr     r0, [pc, #0x9c] @ 0x21d6588, (=0x65a0)
	add     r0, r4, r0
	bl      Function_21da9e0
	ldr     r0, [pc, #0x98] @ 0x21d658c, (=0x6558)
	add     r0, r4, r0
	bl      Function_21da8d8
	ldr     r0, [pc, #0x94] @ 0x21d6590, (=0x5dc0)
	add     r0, r4, r0
	bl      Function_21d8e84
	mov     r0, #0x43
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_21d7a74
	mov     r0, #0x59
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_21da384
	ldr     r0, [r4, #0x18]
	bl      Function_2021964
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x3
	bl      Function_2019044
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x2
	bl      Function_2019044
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_2019044
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x4
	bl      Function_2019044
	mov     r0, #0x56
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2007b6c
	mov     r0, #0x0
	bl      Function_2002c28
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      free
	mov     r0, r4
	bl      free
	bl      Function_200a878
	pop     {r4,pc}
@ 0x21d6570

.word 0xb3ac @ 0x21d6570
.word 0xb3a8 @ 0x21d6574
.word 0xb3a4 @ 0x21d6578
.word 0xb22c @ 0x21d657c
.word 0x662c @ 0x21d6580
.word 0x65f4 @ 0x21d6584
.word 0x65a0 @ 0x21d6588
.word 0x6558 @ 0x21d658c
.word 0x5dc0 @ 0x21d6590
.thumb
Function_21d6594: @ 21d6594 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r5, r0
	cmp     r6, #0x34
	bcs     branch_21d65f0
	mov     r4, #0x0
	mov     r1, r5
.thumb
branch_21d65a2: @ 21d65a2 :thumb
	ldr     r0, [r1, #0x8]
	cmp     r0, #0x0
	bne     branch_21d65e6
	ldr     r0, [pc, #0x4c] @ 0x21d65f8, (=0x21dff9c)
	lsl     r7, r6, #3
	ldr     r0, [r0, r7]
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x0]
	mov     r0, #0xa
	add     r1, #0x14
	bl      malloc
	mov     r1, r0
	beq     branch_21d65e0
	str     r6, [r1, #0x0]
	strh    r4, [r1, #0x4]
	mov     r0, #0x0
	strh    r0, [r1, #0x6]
	ldr     r0, [sp, #0x0]
	str     r5, [r1, #0xc]
	add     r0, r1, r0
	str     r0, [r1, #0x10]
	ldr     r0, [pc, #0x2c] @ 0x21d65fc, (=0x21dff98)
	mov     r2, #0x1
	ldr     r0, [r0, r7]
	bl      AddTaskToTaskList1
	lsl     r1, r4, #2
	add     r1, r5, r1
	str     r0, [r1, #0x8]
	pop     {r3-r7,pc}
@ 0x21d65e0

.thumb
branch_21d65e0: @ 21d65e0 :thumb
	bl      ErrorHandling
	pop     {r3-r7,pc}
@ 0x21d65e6

.thumb
branch_21d65e6: @ 21d65e6 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d09 @ add r1, r1, #0x4
	cmp     r4, #0x4
	bcc     branch_21d65a2
	pop     {r3-r7,pc}
@ 0x21d65f0

.thumb
branch_21d65f0: @ 21d65f0 :thumb
	bl      ErrorHandling
	pop     {r3-r7,pc}
@ 0x21d65f6


.align 2


.word 0x21dff9c @ 0x21d65f8
.word 0x21dff98 @ 0x21d65fc
.thumb
Function_21d6600: @ 21d6600 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r4, #0x0
.thumb
branch_21d6608: @ 21d6608 :thumb
	ldr     r0, [r5, #0x8]
	cmp     r0, #0x0
	beq     branch_21d661c
	bl      Function_201ced0
	ldr     r0, [r0, #0x0]
	cmp     r0, r6
	bne     branch_21d661c
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x21d661c

.thumb
branch_21d661c: @ 21d661c :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_21d6608
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x21d6628

.thumb
Function_21d6628: @ 21d6628 :thumb
	mov     r2, #0x0
.thumb
branch_21d662a: @ 21d662a :thumb
	ldr     r1, [r0, #0x8]
	cmp     r1, #0x0
	beq     branch_21d6634
	mov     r0, #0x0
	bx      lr
@ 0x21d6634

.thumb
branch_21d6634: @ 21d6634 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	cmp     r2, #0x4
	blt     branch_21d662a
	mov     r0, #0x1
	bx      lr
@ 0x21d6640

.thumb
Function_21d6640: @ 21d6640 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldrh    r0, [r5, #0x4]
	ldr     r4, [r5, #0xc]
	lsl     r0, r0, #2
	add     r0, r4, r0
	ldr     r0, [r0, #0x8]
	bl      Call_RemoveTaskFromTaskList
	ldrh    r0, [r5, #0x4]
	mov     r1, #0x0
	lsl     r0, r0, #2
	add     r0, r4, r0
	str     r1, [r0, #0x8]
	mov     r0, r5
	bl      free
	pop     {r3-r5,pc}
@ 0x21d6664

.thumb
Function_21d6664: @ 21d6664 :thumb
	push    {r4,lr}
	ldr     r0, [pc, #0x20] @ 0x21d6688, (=0x65a0)
	mov     r4, r1
	add     r0, r4, r0
	bl      Function_21daa80
	ldr     r0, [r4, #0x18]
	bl      Function_20219f8
	bl      Function_200a858
	ldr     r3, [pc, #0x10] @ 0x21d668c, (=0x27e0000)
	ldr     r1, [pc, #0x10] @ 0x21d6690, (=0x3ff8)
	mov     r0, #0x1
	ldr     r2, [r3, r1]
	orr     r0, r2
	str     r0, [r3, r1]
	pop     {r4,pc}
@ 0x21d6688

.word 0x65a0 @ 0x21d6688
.word 0x27e0000 @ 0x21d668c
.word 0x3ff8 @ 0x21d6690
.thumb
Function_21d6694: @ 21d6694 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r0, #0x16
	ldr     r4, [r5, #0xc]
	lsl     r0, r0, #4
	ldr     r6, [r4, r0]
	ldrh    r0, [r5, #0x6]
	cmp     r0, #0x0
	beq     branch_21d66ac
	cmp     r0, #0x1
	beq     branch_21d66fa
	pop     {r3-r7,pc}

branch_21d66ac: @ 21d66ac :thumb
	mov     r0, #Box_Narc
	mov     r1, #0xa
	bl      LoadFromNARC_8
	mov     r7, r0
	mov     r0, r4
	mov     r1, r6
	bl      Function_21d74b4
	mov     r0, r4
	mov     r1, r6
	mov     r2, r7
	bl      Function_21d75cc
	mov     r0, r4
	mov     r1, r6
	mov     r2, r7
	bl      Function_21d7774
	mov     r0, r7
	bl      Call_FS_CloseFile
	mov     r0, r6
	bl      Function_21d5e08
	cmp     r0, #0x4
	beq     branch_21d66f2
	ldr     r0, [pc, #0x34] @ 0x21d6718, (=0x65a0)
	add     r0, r4, r0
	bl      Function_21daa90
	ldrh    r0, [r5, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x6]
	pop     {r3-r7,pc}
@ 0x21d66f2

.thumb
branch_21d66f2: @ 21d66f2 :thumb
	mov     r0, r5
	bl      Function_21d6640
	pop     {r3-r7,pc}
@ 0x21d66fa

.thumb
branch_21d66fa: @ 21d66fa :thumb
	ldr     r0, [pc, #0x1c] @ 0x21d6718, (=0x65a0)
	add     r0, r4, r0
	bl      Function_21daac4
	cmp     r0, #0x0
	beq     branch_21d6714
	ldr     r0, [pc, #0x10] @ 0x21d6718, (=0x65a0)
	add     r0, r4, r0
	bl      Function_21daf98
	mov     r0, r5
	bl      Function_21d6640
.thumb
branch_21d6714: @ 21d6714 :thumb
	pop     {r3-r7,pc}
@ 0x21d6716


.align 2


.word 0x65a0 @ 0x21d6718
.thumb
Function_21d671c: @ 21d671c :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r1
	ldrh    r0, [r4, #0x6]
	cmp     r0, #0x0
	beq     branch_21d6730
	cmp     r0, #0x1
	beq     branch_21d6766
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x21d6730

.thumb
branch_21d6730: @ 21d6730 :thumb
	ldr     r0, [pc, #0x44] @ 0x21d6778, (=0x60d)
	bl      Function_2005748
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x40] @ 0x21d677c, (=REG_BLDCNT)
	mov     r1, #0x0
	mov     r2, #0x3f
	mov     r3, #0x6
	blx     G2x_SetBlendAlpha_
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0xa
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	mov     r3, r0
	bl      Function_200f174
	ldrh    r0, [r4, #0x6]
	add     sp, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x6]
	pop     {r3,r4,pc}
@ 0x21d6766

.thumb
branch_21d6766: @ 21d6766 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_21d6774
	mov     r0, r4
	bl      Function_21d6640
.thumb
branch_21d6774: @ 21d6774 :thumb
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x21d6778

.word 0x60d @ 0x21d6778
.word REG_BLDCNT @ 0x21d677c
.thumb
Function_21d6780: @ 21d6780 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r1
	ldrh    r0, [r4, #0x6]
	cmp     r0, #0x0
	beq     branch_21d6794
	cmp     r0, #0x1
	beq     branch_21d67c4
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x21d6794

.thumb
branch_21d6794: @ 21d6794 :thumb
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x3c] @ 0x21d67d8, (=REG_BLDCNT)
	mov     r1, #0x0
	mov     r2, #0x3f
	mov     r3, #0x6
	blx     G2x_SetBlendAlpha_
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0xa
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	mov     r3, r0
	bl      Function_200f174
	ldrh    r0, [r4, #0x6]
	add     sp, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x6]
	pop     {r3,r4,pc}
@ 0x21d67c4

.thumb
branch_21d67c4: @ 21d67c4 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_21d67d2
	mov     r0, r4
	bl      Function_21d6640
.thumb
branch_21d67d2: @ 21d67d2 :thumb
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x21d67d6


.align 2


.word REG_BLDCNT @ 0x21d67d8
.thumb
Function_21d67dc: @ 21d67dc :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r1
	ldrh    r0, [r4, #0x6]
	cmp     r0, #0x0
	beq     branch_21d67f0
	cmp     r0, #0x1
	beq     branch_21d6812
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x21d67f0

.thumb
branch_21d67f0: @ 21d67f0 :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0xa
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      Function_200f174
	ldrh    r0, [r4, #0x6]
	add     sp, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x6]
	pop     {r3,r4,pc}
@ 0x21d6812

.thumb
branch_21d6812: @ 21d6812 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_21d6820
	mov     r0, r4
	bl      Function_21d6640
.thumb
branch_21d6820: @ 21d6820 :thumb
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x21d6824

.thumb
Function_21d6824: @ 21d6824 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r0, #0x16
	ldr     r5, [r4, #0xc]
	lsl     r0, r0, #4
	ldr     r6, [r5, r0]
	ldrh    r0, [r4, #0x6]
	cmp     r0, #0x4
	bhi     branch_21d68da
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d6842

Jumppoints_21d6842:
.hword branch_21d684c - Jumppoints_21d6842 - 2
.hword branch_21d685a - Jumppoints_21d6842 - 2
.hword branch_21d686c - Jumppoints_21d6842 - 2
.hword branch_21d68ac - Jumppoints_21d6842 - 2
.hword branch_21d68c8 - Jumppoints_21d6842 - 2
.thumb
branch_21d684c: @ 21d684c :thumb
	ldr     r0, [pc, #0x8c] @ 0x21d68dc, (=0xb3a8)
	ldr     r0, [r5, r0]
	bl      Function_21de9b8
	ldrh    r0, [r4, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x6]
.thumb
branch_21d685a: @ 21d685a :thumb
	ldr     r0, [pc, #0x80] @ 0x21d68dc, (=0xb3a8)
	ldr     r0, [r5, r0]
	bl      Function_21de9e4
	cmp     r0, #0x0
	beq     branch_21d68da
	ldrh    r0, [r4, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x6]
.thumb
branch_21d686c: @ 21d686c :thumb
	mov     r0, #0x43
	mov     r1, r6
	lsl     r0, r0, #4
	add     r1, #0x40
	ldrb    r0, [r5, r0]
	ldrb    r1, [r1, #0x0]
	bl      Function_21d77a4
	mov     r7, r0
	mov     r0, #0x43
	lsl     r0, r0, #4
	mov     r1, r6
	add     r0, r5, r0
	add     r1, #0x40
	mov     r2, r7
	mov     r3, #0x1
	bl      Function_21d7b4c
	mov     r0, #0x43
	lsl     r0, r0, #4
	add     r6, #0x40
	add     r0, r5, r0
	mov     r1, r6
	mov     r2, r7
	bl      Function_21d7d70
	ldr     r0, [pc, #0x3c] @ 0x21d68e0, (=0x5dc)
	bl      Function_2005748
	ldrh    r0, [r4, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x6]
.thumb
branch_21d68ac: @ 21d68ac :thumb
	mov     r0, #0x43
	lsl     r0, r0, #4
	add     r0, r5, r0
	bl      Function_21d7e1c
	cmp     r0, #0x0
	beq     branch_21d68da
	ldr     r0, [pc, #0x20] @ 0x21d68dc, (=0xb3a8)
	ldr     r0, [r5, r0]
	bl      Function_21de7a0
	ldrh    r0, [r4, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x6]
.thumb
branch_21d68c8: @ 21d68c8 :thumb
	ldr     r0, [pc, #0x10] @ 0x21d68dc, (=0xb3a8)
	ldr     r0, [r5, r0]
	bl      Function_21de800
	cmp     r0, #0x0
	beq     branch_21d68da
	mov     r0, r4
	bl      Function_21d6640
.thumb
branch_21d68da: @ 21d68da :thumb
	pop     {r3-r7,pc}
@ 0x21d68dc

.word 0xb3a8 @ 0x21d68dc
.word 0x5dc @ 0x21d68e0
.thumb
Function_21d68e4: @ 21d68e4 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldrh    r0, [r5, #0x6]
	ldr     r4, [r5, #0xc]
	cmp     r0, #0x0
	beq     branch_21d68f6
	cmp     r0, #0x1
	beq     branch_21d6914
	pop     {r3-r5,pc}
@ 0x21d68f6

.thumb
branch_21d68f6: @ 21d68f6 :thumb
	ldr     r0, [pc, #0x3c] @ 0x21d6934, (=0x5dc)
	bl      Function_2005748
	ldr     r0, [pc, #0x38] @ 0x21d6938, (=0x5dc0)
	add     r0, r4, r0
	bl      Function_21d8f60
	ldr     r0, [pc, #0x34] @ 0x21d693c, (=0xb3a8)
	ldr     r0, [r4, r0]
	bl      Function_21de7a0
	ldrh    r0, [r5, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x6]
	pop     {r3-r5,pc}
@ 0x21d6914

.thumb
branch_21d6914: @ 21d6914 :thumb
	ldr     r0, [pc, #0x20] @ 0x21d6938, (=0x5dc0)
	add     r0, r4, r0
	bl      Function_21d9074
	cmp     r0, #0x0
	beq     branch_21d6932
	ldr     r0, [pc, #0x18] @ 0x21d693c, (=0xb3a8)
	ldr     r0, [r4, r0]
	bl      Function_21de800
	cmp     r0, #0x0
	beq     branch_21d6932
	mov     r0, r5
	bl      Function_21d6640
.thumb
branch_21d6932: @ 21d6932 :thumb
	pop     {r3-r5,pc}
@ 0x21d6934

.word 0x5dc @ 0x21d6934
.word 0x5dc0 @ 0x21d6938
.word 0xb3a8 @ 0x21d693c
.thumb
Function_21d6940: @ 21d6940 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, #0x16
	ldr     r4, [r5, #0xc]
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_21d5e08
	cmp     r0, #0x4
	ldrh    r0, [r5, #0x6]
	beq     branch_21d6984
	cmp     r0, #0x0
	beq     branch_21d6960
	cmp     r0, #0x1
	beq     branch_21d6970
	pop     {r3-r5,pc}
@ 0x21d6960

.thumb
branch_21d6960: @ 21d6960 :thumb
	ldr     r0, [pc, #0x50] @ 0x21d69b4, (=0x65a0)
	add     r0, r4, r0
	bl      Function_21daff8
	ldrh    r0, [r5, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x6]
	pop     {r3-r5,pc}
@ 0x21d6970

.thumb
branch_21d6970: @ 21d6970 :thumb
	ldr     r0, [pc, #0x40] @ 0x21d69b4, (=0x65a0)
	add     r0, r4, r0
	bl      Function_21db220
	cmp     r0, #0x0
	beq     branch_21d69b0
	mov     r0, r5
	bl      Function_21d6640
	pop     {r3-r5,pc}
@ 0x21d6984

.thumb
branch_21d6984: @ 21d6984 :thumb
	cmp     r0, #0x0
	beq     branch_21d698e
	cmp     r0, #0x1
	beq     branch_21d699e
	pop     {r3-r5,pc}
@ 0x21d698e

.thumb
branch_21d698e: @ 21d698e :thumb
	ldr     r0, [pc, #0x28] @ 0x21d69b8, (=0xb3ac)
	ldr     r0, [r4, r0]
	bl      Function_21dee34
	ldrh    r0, [r5, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x6]
	pop     {r3-r5,pc}
@ 0x21d699e

.thumb
branch_21d699e: @ 21d699e :thumb
	ldr     r0, [pc, #0x18] @ 0x21d69b8, (=0xb3ac)
	ldr     r0, [r4, r0]
	bl      Function_21dee84
	cmp     r0, #0x0
	beq     branch_21d69b0
	mov     r0, r5
	bl      Function_21d6640
.thumb
branch_21d69b0: @ 21d69b0 :thumb
	pop     {r3-r5,pc}
@ 0x21d69b2


.align 2


.word 0x65a0 @ 0x21d69b4
.word 0xb3ac @ 0x21d69b8
.thumb
Function_21d69bc: @ 21d69bc :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r0, #0x16
	ldr     r4, [r5, #0xc]
	lsl     r0, r0, #4
	ldr     r6, [r4, r0]
	mov     r0, r6
	bl      Function_21d5e38
	cmp     r0, #0x2
	bne     branch_21d69dc
	ldr     r0, [pc, #0x3c] @ 0x21d6a10, (=0x5dc0)
	add     r0, r4, r0
	bl      Function_21d9a64
	b       branch_21d6a00
@ 0x21d69dc

.thumb
branch_21d69dc: @ 21d69dc :thumb
	mov     r0, r6
	bl      Function_21d5e10
	cmp     r0, #0x0
	beq     branch_21d69ec
	cmp     r0, #0x1
	beq     branch_21d69f8
	b       branch_21d6a00
@ 0x21d69ec

.thumb
branch_21d69ec: @ 21d69ec :thumb
	mov     r0, #0x43
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_21d8a24
	b       branch_21d6a00
@ 0x21d69f8

.thumb
branch_21d69f8: @ 21d69f8 :thumb
	ldr     r0, [pc, #0x18] @ 0x21d6a14, (=0xb22c)
	add     r0, r4, r0
	bl      Function_21dcc14
.thumb
branch_21d6a00: @ 21d6a00 :thumb
	ldr     r0, [pc, #0x14] @ 0x21d6a18, (=0x65a0)
	add     r0, r4, r0
	bl      Function_21db224
	mov     r0, r5
	bl      Function_21d6640
	pop     {r4-r6,pc}
@ 0x21d6a10

.word 0x5dc0 @ 0x21d6a10
.word 0xb22c @ 0x21d6a14
.word 0x65a0 @ 0x21d6a18
.thumb
Function_21d6a1c: @ 21d6a1c :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r1, [r4, #0xc]
	ldr     r0, [pc, #0x10] @ 0x21d6a34, (=0x65a0)
	add     r0, r1, r0
	bl      Function_21db078
	mov     r0, r4
	bl      Function_21d6640
	pop     {r4,pc}
@ 0x21d6a32


.align 2


.word 0x65a0 @ 0x21d6a34
.thumb
Function_21d6a38: @ 21d6a38 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldrh    r0, [r4, #0x6]
	ldr     r1, [r4, #0xc]
	cmp     r0, #0x0
	beq     branch_21d6a4a
	cmp     r0, #0x1
	beq     branch_21d6a5a
	pop     {r4,pc}
@ 0x21d6a4a

.thumb
branch_21d6a4a: @ 21d6a4a :thumb
	ldr     r0, [pc, #0x24] @ 0x21d6a70, (=0x5dc0)
	add     r0, r1, r0
	bl      Function_21d9230
	ldrh    r0, [r4, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x6]
	pop     {r4,pc}
@ 0x21d6a5a

.thumb
branch_21d6a5a: @ 21d6a5a :thumb
	ldr     r0, [pc, #0x14] @ 0x21d6a70, (=0x5dc0)
	add     r0, r1, r0
	bl      Function_21d9278
	cmp     r0, #0x0
	beq     branch_21d6a6c
	mov     r0, r4
	bl      Function_21d6640
.thumb
branch_21d6a6c: @ 21d6a6c :thumb
	pop     {r4,pc}
@ 0x21d6a6e


.align 2


.word 0x5dc0 @ 0x21d6a70
.thumb
Function_21d6a74: @ 21d6a74 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldrh    r0, [r4, #0x6]
	ldr     r1, [r4, #0xc]
	cmp     r0, #0x0
	beq     branch_21d6a86
	cmp     r0, #0x1
	beq     branch_21d6a96
	pop     {r4,pc}
@ 0x21d6a86

.thumb
branch_21d6a86: @ 21d6a86 :thumb
	ldr     r0, [pc, #0x24] @ 0x21d6aac, (=0x5dc0)
	add     r0, r1, r0
	bl      Function_21d9368
	ldrh    r0, [r4, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x6]
	pop     {r4,pc}
@ 0x21d6a96

.thumb
branch_21d6a96: @ 21d6a96 :thumb
	ldr     r0, [pc, #0x14] @ 0x21d6aac, (=0x5dc0)
	add     r0, r1, r0
	bl      Function_21d939c
	cmp     r0, #0x0
	beq     branch_21d6aa8
	mov     r0, r4
	bl      Function_21d6640
.thumb
branch_21d6aa8: @ 21d6aa8 :thumb
	pop     {r4,pc}
@ 0x21d6aaa


.align 2


.word 0x5dc0 @ 0x21d6aac
.thumb
Function_21d6ab0: @ 21d6ab0 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldrh    r0, [r4, #0x6]
	ldr     r1, [r4, #0xc]
	cmp     r0, #0x0
	beq     branch_21d6ac2
	cmp     r0, #0x1
	beq     branch_21d6ad2
	pop     {r4,pc}
@ 0x21d6ac2

.thumb
branch_21d6ac2: @ 21d6ac2 :thumb
	ldr     r0, [pc, #0x24] @ 0x21d6ae8, (=0x5dc0)
	add     r0, r1, r0
	bl      Function_21d94b4
	ldrh    r0, [r4, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x6]
	pop     {r4,pc}
@ 0x21d6ad2

.thumb
branch_21d6ad2: @ 21d6ad2 :thumb
	ldr     r0, [pc, #0x14] @ 0x21d6ae8, (=0x5dc0)
	add     r0, r1, r0
	bl      Function_21d9530
	cmp     r0, #0x0
	beq     branch_21d6ae4
	mov     r0, r4
	bl      Function_21d6640
.thumb
branch_21d6ae4: @ 21d6ae4 :thumb
	pop     {r4,pc}
@ 0x21d6ae6


.align 2


.word 0x5dc0 @ 0x21d6ae8
.thumb
Function_21d6aec: @ 21d6aec :thumb
	push    {r4,lr}
	mov     r4, r1
	ldrh    r0, [r4, #0x6]
	ldr     r1, [r4, #0xc]
	cmp     r0, #0x0
	beq     branch_21d6afe
	cmp     r0, #0x1
	beq     branch_21d6b0e
	pop     {r4,pc}
@ 0x21d6afe

.thumb
branch_21d6afe: @ 21d6afe :thumb
	ldr     r0, [pc, #0x18] @ 0x21d6b18, (=0x5dc0)
	add     r0, r1, r0
	bl      Function_21d9900
	ldrh    r0, [r4, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x6]
	pop     {r4,pc}
@ 0x21d6b0e

.thumb
branch_21d6b0e: @ 21d6b0e :thumb
	mov     r0, r4
	bl      Function_21d6640
	pop     {r4,pc}
@ 0x21d6b16


.align 2


.word 0x5dc0 @ 0x21d6b18
.thumb
Function_21d6b1c: @ 21d6b1c :thumb
	push    {r4,lr}
	mov     r4, r1
	ldrh    r0, [r4, #0x6]
	ldr     r1, [r4, #0xc]
	cmp     r0, #0x0
	beq     branch_21d6b32
	cmp     r0, #0x1
	beq     branch_21d6b42
	cmp     r0, #0x2
	beq     branch_21d6b52
	pop     {r4,pc}
@ 0x21d6b32

.thumb
branch_21d6b32: @ 21d6b32 :thumb
	ldr     r0, [pc, #0x34] @ 0x21d6b68, (=0xb22c)
	add     r0, r1, r0
	bl      Function_21dcac0
	ldrh    r0, [r4, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x6]
	pop     {r4,pc}
@ 0x21d6b42

.thumb
branch_21d6b42: @ 21d6b42 :thumb
	ldr     r0, [pc, #0x24] @ 0x21d6b68, (=0xb22c)
	add     r0, r1, r0
	bl      Function_21dc834
	ldrh    r0, [r4, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x6]
	pop     {r4,pc}
@ 0x21d6b52

.thumb
branch_21d6b52: @ 21d6b52 :thumb
	ldr     r0, [pc, #0x14] @ 0x21d6b68, (=0xb22c)
	add     r0, r1, r0
	bl      Function_21dc95c
	cmp     r0, #0x0
	beq     branch_21d6b64
	mov     r0, r4
	bl      Function_21d6640
.thumb
branch_21d6b64: @ 21d6b64 :thumb
	pop     {r4,pc}
@ 0x21d6b66


.align 2


.word 0xb22c @ 0x21d6b68
.thumb
Function_21d6b6c: @ 21d6b6c :thumb
	push    {r4,lr}
	mov     r4, r1
	ldrh    r0, [r4, #0x6]
	ldr     r1, [r4, #0xc]
	cmp     r0, #0x0
	beq     branch_21d6b7e
	cmp     r0, #0x1
	beq     branch_21d6b8e
	pop     {r4,pc}
@ 0x21d6b7e

.thumb
branch_21d6b7e: @ 21d6b7e :thumb
	ldr     r0, [pc, #0x24] @ 0x21d6ba4, (=0x5dc0)
	add     r0, r1, r0
	bl      Function_21d9938
	ldrh    r0, [r4, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x6]
	pop     {r4,pc}
@ 0x21d6b8e

.thumb
branch_21d6b8e: @ 21d6b8e :thumb
	ldr     r0, [pc, #0x14] @ 0x21d6ba4, (=0x5dc0)
	add     r0, r1, r0
	bl      Function_21d995c
	cmp     r0, #0x0
	beq     branch_21d6ba0
	mov     r0, r4
	bl      Function_21d6640
.thumb
branch_21d6ba0: @ 21d6ba0 :thumb
	pop     {r4,pc}
@ 0x21d6ba2


.align 2


.word 0x5dc0 @ 0x21d6ba4
.thumb
Function_21d6ba8: @ 21d6ba8 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldrh    r1, [r5, #0x6]
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r4, [r5, #0xc]
	cmp     r1, #0x0
	ldr     r0, [r4, r0]
	beq     branch_21d6bc0
	cmp     r1, #0x1
	beq     branch_21d6bd8
	pop     {r3-r5,pc}
@ 0x21d6bc0

.thumb
branch_21d6bc0: @ 21d6bc0 :thumb
	bl      Function_21d5e24
	mov     r1, r0
	mov     r0, #0x43
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_21d8860
	ldrh    r0, [r5, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x6]
	pop     {r3-r5,pc}
@ 0x21d6bd8

.thumb
branch_21d6bd8: @ 21d6bd8 :thumb
	mov     r0, #0x43
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_21d8898
	cmp     r0, #0x0
	beq     branch_21d6bec
	mov     r0, r5
	bl      Function_21d6640
.thumb
branch_21d6bec: @ 21d6bec :thumb
	pop     {r3-r5,pc}
@ 0x21d6bee


.align 2, 0


.thumb
Function_21d6bf0: @ 21d6bf0 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldrh    r1, [r5, #0x6]
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r4, [r5, #0xc]
	cmp     r1, #0x0
	ldr     r0, [r4, r0]
	beq     branch_21d6c08
	cmp     r1, #0x1
	beq     branch_21d6c1e
	pop     {r3-r5,pc}
@ 0x21d6c08

.thumb
branch_21d6c08: @ 21d6c08 :thumb
	bl      Function_21d5e2c
	mov     r1, r0
	ldr     r0, [pc, #0x24] @ 0x21d6c34, (=0xb22c)
	add     r0, r4, r0
	bl      Function_21dcafc
	ldrh    r0, [r5, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x6]
	pop     {r3-r5,pc}
@ 0x21d6c1e

.thumb
branch_21d6c1e: @ 21d6c1e :thumb
	ldr     r0, [pc, #0x14] @ 0x21d6c34, (=0xb22c)
	add     r0, r4, r0
	bl      Function_21dcb20
	cmp     r0, #0x0
	beq     branch_21d6c30
	mov     r0, r5
	bl      Function_21d6640
.thumb
branch_21d6c30: @ 21d6c30 :thumb
	pop     {r3-r5,pc}
@ 0x21d6c32


.align 2


.word 0xb22c @ 0x21d6c34
.thumb
Function_21d6c38: @ 21d6c38 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldrh    r0, [r4, #0x6]
	ldr     r1, [r4, #0xc]
	cmp     r0, #0x0
	beq     branch_21d6c4a
	cmp     r0, #0x1
	beq     branch_21d6c5a
	pop     {r4,pc}
@ 0x21d6c4a

.thumb
branch_21d6c4a: @ 21d6c4a :thumb
	ldr     r0, [pc, #0x24] @ 0x21d6c70, (=0x662c)
	add     r0, r1, r0
	bl      Function_21dc29c
	ldrh    r0, [r4, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x6]
	pop     {r4,pc}
@ 0x21d6c5a

.thumb
branch_21d6c5a: @ 21d6c5a :thumb
	ldr     r0, [pc, #0x14] @ 0x21d6c70, (=0x662c)
	add     r0, r1, r0
	bl      Function_21dc364
	cmp     r0, #0x0
	beq     branch_21d6c6c
	mov     r0, r4
	bl      Function_21d6640
.thumb
branch_21d6c6c: @ 21d6c6c :thumb
	pop     {r4,pc}
@ 0x21d6c6e


.align 2


.word 0x662c @ 0x21d6c70
.thumb
Function_21d6c74: @ 21d6c74 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldrh    r0, [r4, #0x6]
	ldr     r1, [r4, #0xc]
	cmp     r0, #0x0
	beq     branch_21d6c86
	cmp     r0, #0x1
	beq     branch_21d6c96
	pop     {r4,pc}
@ 0x21d6c86

.thumb
branch_21d6c86: @ 21d6c86 :thumb
	ldr     r0, [pc, #0x24] @ 0x21d6cac, (=0x662c)
	add     r0, r1, r0
	bl      Function_21dc3f4
	ldrh    r0, [r4, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x6]
	pop     {r4,pc}
@ 0x21d6c96

.thumb
branch_21d6c96: @ 21d6c96 :thumb
	ldr     r0, [pc, #0x14] @ 0x21d6cac, (=0x662c)
	add     r0, r1, r0
	bl      Function_21dc43c
	cmp     r0, #0x0
	beq     branch_21d6ca8
	mov     r0, r4
	bl      Function_21d6640
.thumb
branch_21d6ca8: @ 21d6ca8 :thumb
	pop     {r4,pc}
@ 0x21d6caa


.align 2


.word 0x662c @ 0x21d6cac
.thumb
Function_21d6cb0: @ 21d6cb0 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldrh    r0, [r5, #0x6]
	ldr     r4, [r5, #0xc]
	cmp     r0, #0x0
	beq     branch_21d6cc2
	cmp     r0, #0x1
	beq     branch_21d6cd2
	pop     {r3-r5,pc}
@ 0x21d6cc2

.thumb
branch_21d6cc2: @ 21d6cc2 :thumb
	ldr     r0, [pc, #0x2c] @ 0x21d6cf0, (=0x5dc0)
	add     r0, r4, r0
	bl      Function_21d9b34
	ldrh    r0, [r5, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x6]
	pop     {r3-r5,pc}
@ 0x21d6cd2

.thumb
branch_21d6cd2: @ 21d6cd2 :thumb
	ldr     r0, [pc, #0x1c] @ 0x21d6cf0, (=0x5dc0)
	add     r0, r4, r0
	bl      Function_21d9b64
	cmp     r0, #0x0
	beq     branch_21d6cec
	ldr     r0, [pc, #0x14] @ 0x21d6cf4, (=0x65a0)
	add     r0, r4, r0
	bl      Function_21db2b0
	mov     r0, r5
	bl      Function_21d6640
.thumb
branch_21d6cec: @ 21d6cec :thumb
	pop     {r3-r5,pc}
@ 0x21d6cee


.align 2


.word 0x5dc0 @ 0x21d6cf0
.word 0x65a0 @ 0x21d6cf4
.thumb
Function_21d6cf8: @ 21d6cf8 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldrh    r0, [r5, #0x6]
	ldr     r4, [r5, #0xc]
	cmp     r0, #0x0
	beq     branch_21d6d0a
	cmp     r0, #0x1
	beq     branch_21d6d1a
	pop     {r3-r5,pc}
@ 0x21d6d0a

.thumb
branch_21d6d0a: @ 21d6d0a :thumb
	ldr     r0, [pc, #0x2c] @ 0x21d6d38, (=0x5dc0)
	add     r0, r4, r0
	bl      Function_21d9bd4
	ldrh    r0, [r5, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x6]
	pop     {r3-r5,pc}
@ 0x21d6d1a

.thumb
branch_21d6d1a: @ 21d6d1a :thumb
	ldr     r0, [pc, #0x1c] @ 0x21d6d38, (=0x5dc0)
	add     r0, r4, r0
	bl      Function_21d9c04
	cmp     r0, #0x0
	beq     branch_21d6d34
	ldr     r0, [pc, #0x14] @ 0x21d6d3c, (=0x65a0)
	add     r0, r4, r0
	bl      Function_21db2b0
	mov     r0, r5
	bl      Function_21d6640
.thumb
branch_21d6d34: @ 21d6d34 :thumb
	pop     {r3-r5,pc}
@ 0x21d6d36


.align 2


.word 0x5dc0 @ 0x21d6d38
.word 0x65a0 @ 0x21d6d3c
.thumb
Function_21d6d40: @ 21d6d40 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldrh    r0, [r5, #0x6]
	ldr     r4, [r5, #0xc]
	cmp     r0, #0x0
	beq     branch_21d6d52
	cmp     r0, #0x1
	beq     branch_21d6d62
	pop     {r3-r5,pc}
@ 0x21d6d52

.thumb
branch_21d6d52: @ 21d6d52 :thumb
	ldr     r0, [pc, #0x2c] @ 0x21d6d80, (=0x5dc0)
	add     r0, r4, r0
	bl      Function_21d9c74
	ldrh    r0, [r5, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x6]
	pop     {r3-r5,pc}
@ 0x21d6d62

.thumb
branch_21d6d62: @ 21d6d62 :thumb
	ldr     r0, [pc, #0x1c] @ 0x21d6d80, (=0x5dc0)
	add     r0, r4, r0
	bl      Function_21d9ca0
	cmp     r0, #0x0
	beq     branch_21d6d7c
	ldr     r0, [pc, #0x14] @ 0x21d6d84, (=0x65a0)
	add     r0, r4, r0
	bl      Function_21db2b0
	mov     r0, r5
	bl      Function_21d6640
.thumb
branch_21d6d7c: @ 21d6d7c :thumb
	pop     {r3-r5,pc}
@ 0x21d6d7e


.align 2


.word 0x5dc0 @ 0x21d6d80
.word 0x65a0 @ 0x21d6d84
.thumb
Function_21d6d88: @ 21d6d88 :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	mov     r0, #0x16
	ldr     r4, [r7, #0xc]
	lsl     r0, r0, #4
	ldr     r5, [r4, r0]
	mov     r0, r5
	bl      Function_21d5e74
	mov     r6, r0
	mov     r0, r5
	bl      Function_21d5e38
	cmp     r0, #0x2
	bne     branch_21d6db2
	ldr     r0, [pc, #0x48] @ 0x21d6df0, (=0x5dc0)
	mov     r1, r6
	add     r0, r4, r0
	bl      Function_21d9ab0
	b       branch_21d6de8
@ 0x21d6db2

.thumb
branch_21d6db2: @ 21d6db2 :thumb
	mov     r0, r5
	bl      Function_21d5e10
	cmp     r0, #0x0
	beq     branch_21d6dd4
	cmp     r0, #0x1
	bne     branch_21d6de8
	mov     r0, r5
	bl      Function_21d5e2c
	mov     r1, r0
	ldr     r0, [pc, #0x28] @ 0x21d6df4, (=0xb22c)
	mov     r2, r6
	add     r0, r4, r0
	bl      Function_21dcbdc
	b       branch_21d6de8
@ 0x21d6dd4

.thumb
branch_21d6dd4: @ 21d6dd4 :thumb
	mov     r0, r5
	bl      Function_21d5e24
	mov     r1, r0
	mov     r0, #0x43
	lsl     r0, r0, #4
	add     r0, r4, r0
	mov     r2, r6
	bl      Function_21d8988
.thumb
branch_21d6de8: @ 21d6de8 :thumb
	mov     r0, r7
	bl      Function_21d6640
	pop     {r3-r7,pc}
@ 0x21d6df0

.word 0x5dc0 @ 0x21d6df0
.word 0xb22c @ 0x21d6df4
.thumb
Function_21d6df8: @ 21d6df8 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldrh    r0, [r5, #0x6]
	ldr     r4, [r5, #0xc]
	cmp     r0, #0x0
	beq     branch_21d6e0a
	cmp     r0, #0x1
	beq     branch_21d6e22
	pop     {r3-r5,pc}
@ 0x21d6e0a

.thumb
branch_21d6e0a: @ 21d6e0a :thumb
	ldr     r0, [pc, #0x34] @ 0x21d6e40, (=0x5dc0)
	add     r0, r4, r0
	bl      Function_21d9d10
	ldr     r0, [pc, #0x30] @ 0x21d6e44, (=0xb3a8)
	ldr     r0, [r4, r0]
	bl      Function_21deb18
	ldrh    r0, [r5, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x6]
	pop     {r3-r5,pc}
@ 0x21d6e22

.thumb
branch_21d6e22: @ 21d6e22 :thumb
	ldr     r0, [pc, #0x20] @ 0x21d6e44, (=0xb3a8)
	ldr     r0, [r4, r0]
	bl      Function_21deb60
	cmp     r0, #0x0
	beq     branch_21d6e3c
	ldr     r0, [pc, #0x10] @ 0x21d6e40, (=0x5dc0)
	add     r0, r4, r0
	bl      Function_21d9d28
	mov     r0, r5
	bl      Function_21d6640
.thumb
branch_21d6e3c: @ 21d6e3c :thumb
	pop     {r3-r5,pc}
@ 0x21d6e3e


.align 2


.word 0x5dc0 @ 0x21d6e40
.word 0xb3a8 @ 0x21d6e44
.thumb
Function_21d6e48: @ 21d6e48 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, #0x16
	ldr     r4, [r5, #0xc]
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_21d5e94
	mov     r1, r0
	ldr     r0, [pc, #0x10] @ 0x21d6e6c, (=0x65f4)
	add     r0, r4, r0
	bl      Function_21db448
	mov     r0, r5
	bl      Function_21d6640
	pop     {r3-r5,pc}
@ 0x21d6e6a


.align 2


.word 0x65f4 @ 0x21d6e6c
.thumb
Function_21d6e70: @ 21d6e70 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r0, #0x16
	ldr     r4, [r6, #0xc]
	lsl     r0, r0, #4
	ldr     r5, [r4, r0]
	mov     r0, r5
	bl      Function_21d5e94
	mov     r1, r0
	ldr     r0, [pc, #0x18] @ 0x21d6ea0, (=0x65f4)
	add     r0, r4, r0
	bl      Function_21db448
	ldr     r0, [pc, #0x10] @ 0x21d6ea0, (=0x65f4)
	add     r5, #0x74
	add     r0, r4, r0
	mov     r1, r5
	bl      Function_21db57c
	mov     r0, r6
	bl      Function_21d6640
	pop     {r4-r6,pc}
@ 0x21d6ea0

.word 0x65f4 @ 0x21d6ea0
.thumb
Function_21d6ea4: @ 21d6ea4 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r1, [r4, #0xc]
	ldr     r0, [pc, #0x10] @ 0x21d6ebc, (=0x65f4)
	add     r0, r1, r0
	bl      Function_21db6f0
	mov     r0, r4
	bl      Function_21d6640
	pop     {r4,pc}
@ 0x21d6eba


.align 2


.word 0x65f4 @ 0x21d6ebc
.thumb
Function_21d6ec0: @ 21d6ec0 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r1, [r4, #0xc]
	ldr     r0, [pc, #0x10] @ 0x21d6ed8, (=0x65f4)
	add     r0, r1, r0
	bl      Function_21db724
	mov     r0, r4
	bl      Function_21d6640
	pop     {r4,pc}
@ 0x21d6ed6


.align 2


.word 0x65f4 @ 0x21d6ed8
.thumb
Function_21d6edc: @ 21d6edc :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r0, #0x16
	ldr     r4, [r6, #0xc]
	lsl     r0, r0, #4
	ldr     r5, [r4, r0]
	ldr     r0, [pc, #0x18] @ 0x21d6f04, (=0x5dc)
	bl      Function_2005748
	ldr     r0, [pc, #0x18] @ 0x21d6f08, (=0x65f4)
	add     r5, #0x74
	add     r0, r4, r0
	mov     r1, r5
	bl      Function_21db748
	mov     r0, r6
	bl      Function_21d6640
	pop     {r4-r6,pc}
@ 0x21d6f02


.align 2


.word 0x5dc @ 0x21d6f04
.word 0x65f4 @ 0x21d6f08
.thumb
Function_21d6f0c: @ 21d6f0c :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r0, #0x16
	ldr     r4, [r6, #0xc]
	lsl     r0, r0, #4
	ldr     r5, [r4, r0]
	ldr     r0, [pc, #0x18] @ 0x21d6f34, (=0x5dd)
	bl      Function_2005748
	ldr     r0, [pc, #0x18] @ 0x21d6f38, (=0x65f4)
	add     r5, #0x74
	add     r0, r4, r0
	mov     r1, r5
	bl      Function_21db790
	mov     r0, r6
	bl      Function_21d6640
	pop     {r4-r6,pc}
@ 0x21d6f32


.align 2


.word 0x5dd @ 0x21d6f34
.word 0x65f4 @ 0x21d6f38
.thumb
Function_21d6f3c: @ 21d6f3c :thumb
	push    {r4,lr}
	mov     r4, r1
	ldrh    r0, [r4, #0x6]
	ldr     r1, [r4, #0xc]
	cmp     r0, #0x0
	beq     branch_21d6f4e
	cmp     r0, #0x1
	beq     branch_21d6f5e
	pop     {r4,pc}
@ 0x21d6f4e

.thumb
branch_21d6f4e: @ 21d6f4e :thumb
	ldr     r0, [pc, #0x24] @ 0x21d6f74, (=0x662c)
	add     r0, r1, r0
	bl      Function_21dbb48
	ldrh    r0, [r4, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x6]
	pop     {r4,pc}
@ 0x21d6f5e

.thumb
branch_21d6f5e: @ 21d6f5e :thumb
	ldr     r0, [pc, #0x14] @ 0x21d6f74, (=0x662c)
	add     r0, r1, r0
	bl      Function_21dbb68
	cmp     r0, #0x0
	beq     branch_21d6f70
	mov     r0, r4
	bl      Function_21d6640
.thumb
branch_21d6f70: @ 21d6f70 :thumb
	pop     {r4,pc}
@ 0x21d6f72


.align 2


.word 0x662c @ 0x21d6f74
.thumb
Function_21d6f78: @ 21d6f78 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldrh    r0, [r5, #0x6]
	ldr     r4, [r5, #0xc]
	cmp     r0, #0x0
	beq     branch_21d6f8a
	cmp     r0, #0x1
	beq     branch_21d6fa0
	pop     {r3-r5,pc}
@ 0x21d6f8a

.thumb
branch_21d6f8a: @ 21d6f8a :thumb
	ldr     r0, [pc, #0x1c] @ 0x21d6fa8, (=0x5dd)
	bl      Function_2005748
	ldr     r0, [pc, #0x18] @ 0x21d6fac, (=0x662c)
	add     r0, r4, r0
	bl      Function_21dbb70
	ldrh    r0, [r5, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x6]
	pop     {r3-r5,pc}
@ 0x21d6fa0

.thumb
branch_21d6fa0: @ 21d6fa0 :thumb
	mov     r0, r5
	bl      Function_21d6640
	pop     {r3-r5,pc}
@ 0x21d6fa8

.word 0x5dd @ 0x21d6fa8
.word 0x662c @ 0x21d6fac
.thumb
Function_21d6fb0: @ 21d6fb0 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldrh    r0, [r4, #0x6]
	ldr     r1, [r4, #0xc]
	cmp     r0, #0x0
	beq     branch_21d6fc2
	cmp     r0, #0x1
	beq     branch_21d6fd2
	pop     {r4,pc}
@ 0x21d6fc2

.thumb
branch_21d6fc2: @ 21d6fc2 :thumb
	ldr     r0, [pc, #0x24] @ 0x21d6fe8, (=0x662c)
	add     r0, r1, r0
	bl      Function_21dbb94
	ldrh    r0, [r4, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x6]
	pop     {r4,pc}
@ 0x21d6fd2

.thumb
branch_21d6fd2: @ 21d6fd2 :thumb
	ldr     r0, [pc, #0x14] @ 0x21d6fe8, (=0x662c)
	add     r0, r1, r0
	bl      Function_21dbba0
	cmp     r0, #0x0
	beq     branch_21d6fe4
	mov     r0, r4
	bl      Function_21d6640
.thumb
branch_21d6fe4: @ 21d6fe4 :thumb
	pop     {r4,pc}
@ 0x21d6fe6


.align 2


.word 0x662c @ 0x21d6fe8
.thumb
Function_21d6fec: @ 21d6fec :thumb
	push    {r4,lr}
	mov     r4, r1
	ldrh    r0, [r4, #0x6]
	ldr     r1, [r4, #0xc]
	cmp     r0, #0x0
	beq     branch_21d6ffe
	cmp     r0, #0x1
	beq     branch_21d7010
	pop     {r4,pc}
@ 0x21d6ffe

.thumb
branch_21d6ffe: @ 21d6ffe :thumb
	mov     r0, #0x43
	lsl     r0, r0, #4
	add     r0, r1, r0
	bl      Function_21d8350
	ldrh    r0, [r4, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x6]
	pop     {r4,pc}
@ 0x21d7010

.thumb
branch_21d7010: @ 21d7010 :thumb
	mov     r0, #0x43
	lsl     r0, r0, #4
	add     r0, r1, r0
	bl      Function_21d8370
	cmp     r0, #0x0
	beq     branch_21d7024
	mov     r0, r4
	bl      Function_21d6640
.thumb
branch_21d7024: @ 21d7024 :thumb
	pop     {r4,pc}
@ 0x21d7026


.align 2, 0


.thumb
Function_21d7028: @ 21d7028 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r0, #0x16
	ldr     r5, [r4, #0xc]
	lsl     r0, r0, #4
	ldr     r6, [r5, r0]
	ldrh    r0, [r4, #0x6]
	cmp     r0, #0x3
	bhi     branch_21d70da
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d7046

Jumppoints_21d7046:
.hword branch_21d704e - Jumppoints_21d7046 - 2
.hword branch_21d7064 - Jumppoints_21d7046 - 2
.hword branch_21d70a2 - Jumppoints_21d7046 - 2
.hword branch_21d70c8 - Jumppoints_21d7046 - 2
.thumb
branch_21d704e: @ 21d704e :thumb
	ldr     r0, [pc, #0x8c] @ 0x21d70dc, (=0x5dd)
	bl      Function_2005748
	ldr     r0, [pc, #0x88] @ 0x21d70e0, (=0x5dc0)
	add     r0, r5, r0
	bl      Function_21d9690
	ldrh    r0, [r4, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x6]
	pop     {r4-r6,pc}
@ 0x21d7064

.thumb
branch_21d7064: @ 21d7064 :thumb
	ldr     r0, [pc, #0x78] @ 0x21d70e0, (=0x5dc0)
	add     r0, r5, r0
	bl      Function_21d9704
	cmp     r0, #0x0
	beq     branch_21d70da
	mov     r0, r6
	bl      Function_21d5e10
	cmp     r0, #0x3
	beq     branch_21d7080
	cmp     r0, #0x4
	beq     branch_21d708c
	b       branch_21d7096
@ 0x21d7080

.thumb
branch_21d7080: @ 21d7080 :thumb
	ldr     r0, [pc, #0x60] @ 0x21d70e4, (=0x6558)
	mov     r1, #0x1
	add     r0, r5, r0
	bl      Function_21da8fc
	b       branch_21d7096
@ 0x21d708c

.thumb
branch_21d708c: @ 21d708c :thumb
	ldr     r0, [pc, #0x54] @ 0x21d70e4, (=0x6558)
	mov     r1, #0x2
	add     r0, r5, r0
	bl      Function_21da8fc
.thumb
branch_21d7096: @ 21d7096 :thumb
	mov     r0, #0x0
	strh    r0, [r4, #0x8]
	ldrh    r0, [r4, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x6]
	pop     {r4-r6,pc}
@ 0x21d70a2

.thumb
branch_21d70a2: @ 21d70a2 :thumb
	ldrh    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x8]
	ldrh    r0, [r4, #0x8]
	cmp     r0, #0x6
	bcc     branch_21d70da
	ldr     r0, [pc, #0x30] @ 0x21d70e0, (=0x5dc0)
	add     r0, r5, r0
	bl      Function_21d97fc
	ldr     r0, [pc, #0x2c] @ 0x21d70e4, (=0x6558)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      Function_21da8fc
	ldrh    r0, [r4, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x6]
	pop     {r4-r6,pc}
@ 0x21d70c8

.thumb
branch_21d70c8: @ 21d70c8 :thumb
	ldr     r0, [pc, #0x14] @ 0x21d70e0, (=0x5dc0)
	add     r0, r5, r0
	bl      Function_21d9858
	cmp     r0, #0x0
	beq     branch_21d70da
	mov     r0, r4
	bl      Function_21d6640
.thumb
branch_21d70da: @ 21d70da :thumb
	pop     {r4-r6,pc}
@ 0x21d70dc

.word 0x5dd @ 0x21d70dc
.word 0x5dc0 @ 0x21d70e0
.word 0x6558 @ 0x21d70e4
.thumb
Function_21d70e8: @ 21d70e8 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldrh    r0, [r5, #0x6]
	ldr     r4, [r5, #0xc]
	cmp     r0, #0x0
	beq     branch_21d70fa
	cmp     r0, #0x1
	beq     branch_21d7118
	pop     {r3-r5,pc}
@ 0x21d70fa

.thumb
branch_21d70fa: @ 21d70fa :thumb
	ldr     r0, [pc, #0x30] @ 0x21d712c, (=0x633)
	bl      Function_2005748
	ldr     r0, [pc, #0x2c] @ 0x21d7130, (=0x5dc0)
	add     r0, r4, r0
	bl      Function_21d99f4
	ldr     r0, [pc, #0x28] @ 0x21d7134, (=0xb22c)
	add     r0, r4, r0
	bl      Function_21dc6c8
	ldrh    r0, [r5, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x6]
	pop     {r3-r5,pc}
@ 0x21d7118

.thumb
branch_21d7118: @ 21d7118 :thumb
	ldr     r0, [pc, #0x18] @ 0x21d7134, (=0xb22c)
	add     r0, r4, r0
	bl      Function_21dc6f8
	cmp     r0, #0x0
	beq     branch_21d712a
	mov     r0, r5
	bl      Function_21d6640
.thumb
branch_21d712a: @ 21d712a :thumb
	pop     {r3-r5,pc}
@ 0x21d712c

.word 0x633 @ 0x21d712c
.word 0x5dc0 @ 0x21d7130
.word 0xb22c @ 0x21d7134
.thumb
Function_21d7138: @ 21d7138 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldrh    r0, [r4, #0x6]
	ldr     r5, [r4, #0xc]
	cmp     r0, #0x3
	bhi     branch_21d71a8
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d7150

Jumppoints_21d7150:
.hword branch_21d7158 - Jumppoints_21d7150 - 2
.hword branch_21d7166 - Jumppoints_21d7150 - 2
.hword branch_21d7178 - Jumppoints_21d7150 - 2
.hword branch_21d718e - Jumppoints_21d7150 - 2
.thumb
branch_21d7158: @ 21d7158 :thumb
	ldr     r0, [pc, #0x50] @ 0x21d71ac, (=0xb3a8)
	ldr     r0, [r5, r0]
	bl      Function_21de9b8
	ldrh    r0, [r4, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x6]
.thumb
branch_21d7166: @ 21d7166 :thumb
	ldr     r0, [pc, #0x44] @ 0x21d71ac, (=0xb3a8)
	ldr     r0, [r5, r0]
	bl      Function_21de9e4
	cmp     r0, #0x0
	beq     branch_21d71a8
	ldrh    r0, [r4, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x6]
.thumb
branch_21d7178: @ 21d7178 :thumb
	ldr     r0, [pc, #0x34] @ 0x21d71b0, (=0x634)
	bl      Function_2005748
	ldr     r0, [pc, #0x34] @ 0x21d71b4, (=0xb22c)
	add     r0, r5, r0
	bl      Function_21dc768
	ldrh    r0, [r4, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x6]
	pop     {r3-r5,pc}
@ 0x21d718e

.thumb
branch_21d718e: @ 21d718e :thumb
	ldr     r0, [pc, #0x24] @ 0x21d71b4, (=0xb22c)
	add     r0, r5, r0
	bl      Function_21dc788
	cmp     r0, #0x0
	beq     branch_21d71a8
	ldr     r0, [pc, #0x1c] @ 0x21d71b8, (=0x5dc0)
	add     r0, r5, r0
	bl      Function_21d9a2c
	mov     r0, r4
	bl      Function_21d6640
.thumb
branch_21d71a8: @ 21d71a8 :thumb
	pop     {r3-r5,pc}
@ 0x21d71aa


.align 2


.word 0xb3a8 @ 0x21d71ac
.word 0x634 @ 0x21d71b0
.word 0xb22c @ 0x21d71b4
.word 0x5dc0 @ 0x21d71b8
.thumb
Function_21d71bc: @ 21d71bc :thumb
	push    {r4,lr}
	mov     r4, r1
	ldrh    r0, [r4, #0x6]
	ldr     r1, [r4, #0xc]
	cmp     r0, #0x0
	beq     branch_21d71ce
	cmp     r0, #0x1
	beq     branch_21d71de
	pop     {r4,pc}
@ 0x21d71ce

.thumb
branch_21d71ce: @ 21d71ce :thumb
	ldr     r0, [pc, #0x24] @ 0x21d71f4, (=0xb22c)
	add     r0, r1, r0
	bl      Function_21dc834
	ldrh    r0, [r4, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x6]
	pop     {r4,pc}
@ 0x21d71de

.thumb
branch_21d71de: @ 21d71de :thumb
	ldr     r0, [pc, #0x14] @ 0x21d71f4, (=0xb22c)
	add     r0, r1, r0
	bl      Function_21dc95c
	cmp     r0, #0x0
	beq     branch_21d71f0
	mov     r0, r4
	bl      Function_21d6640
.thumb
branch_21d71f0: @ 21d71f0 :thumb
	pop     {r4,pc}
@ 0x21d71f2


.align 2


.word 0xb22c @ 0x21d71f4
.thumb
Function_21d71f8: @ 21d71f8 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldrh    r1, [r5, #0x6]
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r4, [r5, #0xc]
	cmp     r1, #0x0
	ldr     r0, [r4, r0]
	beq     branch_21d7210
	cmp     r1, #0x1
	beq     branch_21d7230
	pop     {r3-r5,pc}
@ 0x21d7210

.thumb
branch_21d7210: @ 21d7210 :thumb
	bl      Function_21d5e10
	cmp     r0, #0x1
	bne     branch_21d7228
	ldr     r0, [pc, #0x28] @ 0x21d7244, (=0xb22c)
	add     r0, r4, r0
	bl      Function_21dc96c
	ldrh    r0, [r5, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x6]
	pop     {r3-r5,pc}
@ 0x21d7228

.thumb
branch_21d7228: @ 21d7228 :thumb
	mov     r0, r5
	bl      Function_21d6640
	pop     {r3-r5,pc}
@ 0x21d7230

.thumb
branch_21d7230: @ 21d7230 :thumb
	ldr     r0, [pc, #0x10] @ 0x21d7244, (=0xb22c)
	add     r0, r4, r0
	bl      Function_21dca08
	cmp     r0, #0x0
	beq     branch_21d7242
	mov     r0, r5
	bl      Function_21d6640
.thumb
branch_21d7242: @ 21d7242 :thumb
	pop     {r3-r5,pc}
@ 0x21d7244

.word 0xb22c @ 0x21d7244
.thumb
Function_21d7248: @ 21d7248 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, #0x43
	ldr     r4, [r5, #0xc]
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_21d8938
	ldr     r0, [pc, #0x14] @ 0x21d7270, (=0xb22c)
	add     r0, r4, r0
	bl      Function_21dcba0
	ldr     r0, [pc, #0x10] @ 0x21d7274, (=0x5dc0)
	add     r0, r4, r0
	bl      Function_21d9a8c
	mov     r0, r5
	bl      Function_21d6640
	pop     {r3-r5,pc}
@ 0x21d7270

.word 0xb22c @ 0x21d7270
.word 0x5dc0 @ 0x21d7274
.thumb
Function_21d7278: @ 21d7278 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r0, #0x16
	ldr     r4, [r5, #0xc]
	lsl     r0, r0, #4
	ldr     r6, [r4, r0]
	ldrh    r0, [r5, #0x6]
	cmp     r0, #0x0
	beq     branch_21d7294
	cmp     r0, #0x1
	beq     branch_21d72a4
	cmp     r0, #0x2
	beq     branch_21d72d0
	pop     {r4-r6,pc}
@ 0x21d7294

.thumb
branch_21d7294: @ 21d7294 :thumb
	ldr     r0, [pc, #0x4c] @ 0x21d72e4, (=0xb3a4)
	ldr     r0, [r4, r0]
	bl      Function_21dd378
	ldrh    r0, [r5, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x6]
	pop     {r4-r6,pc}
@ 0x21d72a4

.thumb
branch_21d72a4: @ 21d72a4 :thumb
	ldr     r0, [pc, #0x3c] @ 0x21d72e4, (=0xb3a4)
	ldr     r0, [r4, r0]
	bl      Function_21dd45c
	cmp     r0, #0x0
	beq     branch_21d72e2
	add     r6, #0x9c
	ldrb    r0, [r6, #0x0]
	cmp     r0, #0x0
	bne     branch_21d72c0
	mov     r0, r5
	bl      Function_21d6640
	pop     {r4-r6,pc}
@ 0x21d72c0

.thumb
branch_21d72c0: @ 21d72c0 :thumb
	ldr     r0, [pc, #0x20] @ 0x21d72e4, (=0xb3a4)
	ldr     r0, [r4, r0]
	bl      Function_21dd714
	ldrh    r0, [r5, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x6]
	pop     {r4-r6,pc}
@ 0x21d72d0

.thumb
branch_21d72d0: @ 21d72d0 :thumb
	ldr     r0, [pc, #0x10] @ 0x21d72e4, (=0xb3a4)
	ldr     r0, [r4, r0]
	bl      Function_21dd740
	cmp     r0, #0x0
	beq     branch_21d72e2
	mov     r0, r5
	bl      Function_21d6640
.thumb
branch_21d72e2: @ 21d72e2 :thumb
	pop     {r4-r6,pc}
@ 0x21d72e4

.word 0xb3a4 @ 0x21d72e4
.thumb
Function_21d72e8: @ 21d72e8 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldrh    r0, [r4, #0x6]
	ldr     r1, [r4, #0xc]
	cmp     r0, #0x0
	beq     branch_21d72fa
	cmp     r0, #0x1
	beq     branch_21d730a
	pop     {r4,pc}
@ 0x21d72fa

.thumb
branch_21d72fa: @ 21d72fa :thumb
	ldr     r0, [pc, #0x24] @ 0x21d7320, (=0xb3a4)
	ldr     r0, [r1, r0]
	bl      Function_21dd768
	ldrh    r0, [r4, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x6]
	pop     {r4,pc}
@ 0x21d730a

.thumb
branch_21d730a: @ 21d730a :thumb
	ldr     r0, [pc, #0x14] @ 0x21d7320, (=0xb3a4)
	ldr     r0, [r1, r0]
	bl      Function_21dd820
	cmp     r0, #0x0
	beq     branch_21d731c
	mov     r0, r4
	bl      Function_21d6640
.thumb
branch_21d731c: @ 21d731c :thumb
	pop     {r4,pc}
@ 0x21d731e


.align 2


.word 0xb3a4 @ 0x21d7320
.thumb
Function_21d7324: @ 21d7324 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r1, [r4, #0xc]
	ldr     r0, [pc, #0x10] @ 0x21d733c, (=0xb3a4)
	ldr     r0, [r1, r0]
	bl      Function_21de2f4
	mov     r0, r4
	bl      Function_21d6640
	pop     {r4,pc}
@ 0x21d733a


.align 2


.word 0xb3a4 @ 0x21d733c
.thumb
Function_21d7340: @ 21d7340 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r1, [r4, #0xc]
	ldr     r0, [pc, #0x10] @ 0x21d7358, (=0x5dc0)
	add     r0, r1, r0
	bl      Function_21d9aec
	mov     r0, r4
	bl      Function_21d6640
	pop     {r4,pc}
@ 0x21d7356


.align 2


.word 0x5dc0 @ 0x21d7358
.thumb
Function_21d735c: @ 21d735c :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r4, [r5, #0xc]
	ldr     r0, [pc, #0x18] @ 0x21d737c, (=0x5dc0)
	add     r0, r4, r0
	bl      Function_21d9b10
	mov     r0, #0x43
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_21d8a6c
	mov     r0, r5
	bl      Function_21d6640
	pop     {r3-r5,pc}
@ 0x21d737c

.word 0x5dc0 @ 0x21d737c
.thumb
Function_21d7380: @ 21d7380 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, #0x43
	ldr     r1, [r4, #0xc]
	lsl     r0, r0, #4
	add     r0, r1, r0
	bl      Function_21d8b14
	mov     r0, r4
	bl      Function_21d6640
	pop     {r4,pc}
@ 0x21d7398

.thumb
Function_21d7398: @ 21d7398 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, #0x43
	ldr     r1, [r4, #0xc]
	lsl     r0, r0, #4
	add     r0, r1, r0
	bl      Function_21d8a6c
	mov     r0, r4
	bl      Function_21d6640
	pop     {r4,pc}
@ 0x21d73b0

.thumb
Function_21d73b0: @ 21d73b0 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldrh    r0, [r4, #0x6]
	ldr     r1, [r4, #0xc]
	cmp     r0, #0x0
	beq     branch_21d73c2
	cmp     r0, #0x1
	beq     branch_21d73d2
	pop     {r4,pc}
@ 0x21d73c2

.thumb
branch_21d73c2: @ 21d73c2 :thumb
	ldr     r0, [pc, #0x24] @ 0x21d73e8, (=0x5dc0)
	add     r0, r1, r0
	bl      Function_21d9230
	ldrh    r0, [r4, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x6]
	pop     {r4,pc}
@ 0x21d73d2

.thumb
branch_21d73d2: @ 21d73d2 :thumb
	ldr     r0, [pc, #0x14] @ 0x21d73e8, (=0x5dc0)
	add     r0, r1, r0
	bl      Function_21d9278
	cmp     r0, #0x0
	beq     branch_21d73e4
	mov     r0, r4
	bl      Function_21d6640
.thumb
branch_21d73e4: @ 21d73e4 :thumb
	pop     {r4,pc}
@ 0x21d73e6


.align 2


.word 0x5dc0 @ 0x21d73e8
.thumb
Function_21d73ec: @ 21d73ec :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r1, [r4, #0xc]
	ldr     r0, [pc, #0x10] @ 0x21d7404, (=0xb3ac)
	ldr     r0, [r1, r0]
	mov     r1, #0x0
	bl      Function_21deddc
	mov     r0, r4
	bl      Function_21d6640
	pop     {r4,pc}
@ 0x21d7404

.word 0xb3ac @ 0x21d7404
.thumb
Function_21d7408: @ 21d7408 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r1, [r4, #0xc]
	ldr     r0, [pc, #0x10] @ 0x21d7420, (=0xb3ac)
	ldr     r0, [r1, r0]
	mov     r1, #0x1
	bl      Function_21deddc
	mov     r0, r4
	bl      Function_21d6640
	pop     {r4,pc}
@ 0x21d7420

.word 0xb3ac @ 0x21d7420
.thumb
Function_21d7424: @ 21d7424 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldrh    r0, [r4, #0x6]
	ldr     r1, [r4, #0xc]
	cmp     r0, #0x0
	beq     branch_21d7436
	cmp     r0, #0x1
	beq     branch_21d7446
	pop     {r4,pc}
@ 0x21d7436

.thumb
branch_21d7436: @ 21d7436 :thumb
	ldr     r0, [pc, #0x24] @ 0x21d745c, (=0xb3ac)
	ldr     r0, [r1, r0]
	bl      Function_21dee88
	ldrh    r0, [r4, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x6]
	pop     {r4,pc}
@ 0x21d7446

.thumb
branch_21d7446: @ 21d7446 :thumb
	ldr     r0, [pc, #0x14] @ 0x21d745c, (=0xb3ac)
	ldr     r0, [r1, r0]
	bl      Function_21deea8
	cmp     r0, #0x0
	beq     branch_21d7458
	mov     r0, r4
	bl      Function_21d6640
.thumb
branch_21d7458: @ 21d7458 :thumb
	pop     {r4,pc}
@ 0x21d745a


.align 2


.word 0xb3ac @ 0x21d745c
.thumb
Function_21d7460: @ 21d7460 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r1
	ldrh    r0, [r4, #0x6]
	cmp     r0, #0x0
	beq     branch_21d7474
	cmp     r0, #0x1
	beq     branch_21d749c
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x21d7474

.thumb
branch_21d7474: @ 21d7474 :thumb
	ldr     r0, [pc, #0x38] @ 0x21d74b0, (=0x60e)
	bl      Function_2005748
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0xa
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      Function_200f174
	ldrh    r0, [r4, #0x6]
	add     sp, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x6]
	pop     {r3,r4,pc}
@ 0x21d749c

.thumb
branch_21d749c: @ 21d749c :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_21d74aa
	mov     r0, r4
	bl      Function_21d6640
.thumb
branch_21d74aa: @ 21d74aa :thumb
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x21d74ae


.align 2


.word 0x60e @ 0x21d74b0
.thumb
Function_21d74b4: @ 21d74b4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0xe0] @ 0x21d759c, (=0x21dff70)
	mov     r4, r1
	bl      GX_SetBanks
	ldr     r2, [pc, #0xdc] @ 0x21d75a0, (=0x4000304)
	ldrh    r1, [r2, #0x0]
	lsr     r0, r2, #11
	orr     r0, r1
	strh    r0, [r2, #0x0]
	mov     r0, #0x1
	mov     r1, #0x0
	mov     r2, r0
	blx     GX_SetGraphicsMode
	ldr     r0, [pc, #0xcc] @ 0x21d75a4, (=0x21dfe48)
	bl      SetGraphicsModes
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [pc, #0xc4] @ 0x21d75a8, (=0x21dff1c)
	mov     r1, #0x1
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [pc, #0xb8] @ 0x21d75ac, (=0x21dff00)
	mov     r1, #0x2
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [pc, #0xac] @ 0x21d75b0, (=0x21dfec8)
	mov     r1, #0x3
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, r4
	bl      Function_21d5e08
	cmp     r0, #0x4
	beq     branch_21d7556
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [pc, #0x98] @ 0x21d75b4, (=0x21dfee4)
	mov     r1, #0x4
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [pc, #0x8c] @ 0x21d75b8, (=0x21dfeac)
	mov     r1, #0x5
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [pc, #0x80] @ 0x21d75bc, (=0x21dfe90)
	mov     r1, #0x6
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [pc, #0x74] @ 0x21d75c0, (=0x21dfe74)
	mov     r1, #0x7
	mov     r3, #0x0
	bl      Function_20183c4
	b       branch_21d7596
@ 0x21d7556

.thumb
branch_21d7556: @ 21d7556 :thumb
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [pc, #0x54] @ 0x21d75b4, (=0x21dfee4)
	mov     r1, #0x4
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [pc, #0x54] @ 0x21d75c4, (=0x21dff54)
	mov     r1, #0x5
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [pc, #0x48] @ 0x21d75c8, (=0x21dfe58)
	mov     r1, #0x6
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [pc, #0x30] @ 0x21d75c0, (=0x21dfe74)
	mov     r1, #0x7
	mov     r3, #0x0
	bl      Function_20183c4
.thumb
branch_21d7596: @ 21d7596 :thumb
	bl      Function_21d76fc
	pop     {r3-r5,pc}
@ 0x21d759c

.word 0x21dff70 @ 0x21d759c
.word 0x4000304 @ 0x21d75a0
.word 0x21dfe48 @ 0x21d75a4
.word 0x21dff1c @ 0x21d75a8
.word 0x21dff00 @ 0x21d75ac
.word 0x21dfec8 @ 0x21d75b0
.word 0x21dfee4 @ 0x21d75b4
.word 0x21dfeac @ 0x21d75b8
.word 0x21dfe90 @ 0x21d75bc
.word 0x21dfe74 @ 0x21d75c0
.word 0x21dff54 @ 0x21d75c4
.word 0x21dfe58 @ 0x21d75c8
.thumb
Function_21d75cc: @ 21d75cc :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r3, #0x1
	mov     r4, r2
	mov     r2, #0x57
	mov     r6, r1
	str     r3, [sp, #0x8]
	mov     r0, #0xa
	str     r0, [sp, #0xc]
	lsl     r2, r2, #2
	ldr     r2, [r5, r2]
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_20070e8
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x11
	str     r0, [sp, #0xc]
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	mov     r3, r2
	bl      Function_2019cb8
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      Function_2019448
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r1, #0x1
	mov     r2, #0x57
	str     r1, [sp, #0x8]
	mov     r0, #0xa
	str     r0, [sp, #0xc]
	lsl     r2, r2, #2
	ldr     r2, [r5, r2]
	mov     r0, r4
	mov     r3, #0x2
	bl      Function_20070e8
	mov     r0, #0xe0
	str     r0, [sp, #0x0]
	mov     r0, #0xa
	mov     r2, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x5
	mov     r3, r2
	bl      Function_2007130
	mov     r0, r6
	bl      Function_21d5e08
	cmp     r0, #0x4
	beq     branch_21d7670
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0xa
	mov     r2, #0x57
	str     r0, [sp, #0xc]
	lsl     r2, r2, #2
	ldr     r2, [r5, r2]
	mov     r0, r4
	mov     r3, #0x2
	bl      Function_200710c
.thumb
branch_21d7670: @ 21d7670 :thumb
	mov     r0, #0x43
	lsl     r0, r0, #4
	add     r0, r5, r0
	bl      Function_21d7a9c
	mov     r0, #0x43
	lsl     r0, r0, #4
	mov     r1, r6
	add     r0, r5, r0
	add     r1, #0x40
	mov     r2, #0x0
	mov     r3, #0x1
	bl      Function_21d7b4c
	ldr     r0, [pc, #0x54] @ 0x21d76e4, (=0x65a0)
	add     r0, r5, r0
	bl      Function_21daadc
	ldr     r0, [pc, #0x50] @ 0x21d76e8, (=0x65f4)
	add     r0, r5, r0
	bl      Function_21db3c4
	ldr     r0, [pc, #0x4c] @ 0x21d76ec, (=0x662c)
	add     r0, r5, r0
	bl      Function_21dba9c
	ldr     r0, [pc, #0x48] @ 0x21d76f0, (=0xb3a4)
	mov     r1, r4
	ldr     r0, [r5, r0]
	bl      Function_21dd114
	ldr     r0, [pc, #0x44] @ 0x21d76f4, (=0xb3ac)
	mov     r1, r4
	ldr     r0, [r5, r0]
	bl      Function_21dece8
	mov     r0, r6
	bl      Function_21d5e10
	cmp     r0, #0x1
	bne     branch_21d76ca
	ldr     r0, [pc, #0x34] @ 0x21d76f8, (=0xb22c)
	add     r0, r5, r0
	bl      Function_21dc6a0
branch_21d76ca: @ 21d76ca :thumb
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff74
	blx     GX_DispOn
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d76e2

.align 2
.word 0x65a0 @ 0x21d76e4
.word 0x65f4 @ 0x21d76e8
.word 0x662c @ 0x21d76ec
.word 0xb3a4 @ 0x21d76f0
.word 0xb3ac @ 0x21d76f4
.word 0xb22c @ 0x21d76f8



.thumb
Function_21d76fc: @ 21d76fc :thumb
	push    {r3,lr}
	blx     Function_20b28cc
	blx     G3X_InitMtxStack
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff0c
	ldr     r0, [pc, #0x50] @ 0x21d7760, (=0x4000008)
	mov     r1, #0x3
	ldrh    r2, [r0, #0x0]
	bic     r2, r1
	mov     r1, #0x1
	orr     r1, r2
	strh    r1, [r0, #0x0]
	add     r0, #0x58
	ldrh    r1, [r0, #0x0]
	ldr     r2, [pc, #0x40] @ 0x21d7764, (=0xffffcffd)
	and     r1, r2
	strh    r1, [r0, #0x0]
	ldrh    r3, [r0, #0x0]
	add     r1, r2, #0x2
	and     r3, r1
	mov     r1, #0x10
	orr     r1, r3
	strh    r1, [r0, #0x0]
	ldrh    r3, [r0, #0x0]
	ldr     r1, [pc, #0x30] @ 0x21d7768, (=0xcffb)
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
	ldr     r1, [pc, #0x14] @ 0x21d776c, (=GFX_FLUSH)
	mov     r0, #0x2
	str     r0, [r1, #0x0]
	ldr     r0, [pc, #0x14] @ 0x21d7770, (=0xbfff0000)
	str     r0, [r1, #0x40]
	pop     {r3,pc}
@ 0x21d7760

.word 0x4000008 @ 0x21d7760
.word 0xffffcffd @ 0x21d7764
.word 0xcffb @ 0x21d7768
.word GFX_FLUSH @ 0x21d776c
.word 0xbfff0000 @ 0x21d7770
.thumb
Function_21d7774: @ 21d7774 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x1c] @ 0x21d7798, (=0x5dc0)
	mov     r4, r2
	add     r0, r5, r0
	mov     r1, r4
	bl      Function_21d8c1c
	ldr     r0, [pc, #0x14] @ 0x21d779c, (=0x6558)
	mov     r1, r4
	add     r0, r5, r0
	bl      Function_21da864
	ldr     r0, [pc, #0x10] @ 0x21d77a0, (=0xb3a8)
	ldr     r0, [r5, r0]
	bl      Function_21de584
	pop     {r3-r5,pc}
@ 0x21d7798

.word 0x5dc0 @ 0x21d7798
.word 0x6558 @ 0x21d779c
.word 0xb3a8 @ 0x21d77a0
.thumb
Function_21d77a4: @ 21d77a4 :thumb
	cmp     r1, r0
	bls     branch_21d77b2
	mov     r2, #0x12
	sub     r3, r1, r0
	sub     r1, r2, r1
	add     r0, r0, r1
	b       branch_21d77ba
@ 0x21d77b2

.thumb
branch_21d77b2: @ 21d77b2 :thumb
	mov     r2, #0x12
	sub     r2, r2, r0
	add     r3, r1, r2
	sub     r0, r0, r1
.thumb
branch_21d77ba: @ 21d77ba :thumb
	cmp     r3, r0
	blt     branch_21d77c4
	mov     r0, #0x0
	mvn     r0, r0
	bx      lr
@ 0x21d77c4

.thumb
branch_21d77c4: @ 21d77c4 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x21d77c8


.thumb
Function_21d77c8: @ 21d77c8 :thumb
	ldr     r3, [pc, #0x0] @ 0x21d77cc, (=AddTaskToTaskList2+1)
	bx      r3
@ 0x21d77cc

.word AddTaskToTaskList2+1 @ 0x21d77cc



.thumb
Function_21d77d0: @ 21d77d0 :thumb
	mov     r1, #0x51
	lsl     r1, r1, #2
	add     r0, r0, r1
	bx      lr
@ 0x21d77d8


.thumb
Function_21d77d8: @ 21d77d8 :thumb
	mov     r1, #0x59
	lsl     r1, r1, #2
	add     r0, r0, r1
	bx      lr
@ 0x21d77e0

.thumb
Function_21d77e0: @ 21d77e0 :thumb
	mov     r1, #0x43
	lsl     r1, r1, #4
	add     r0, r0, r1
	bx      lr
@ 0x21d77e8

.thumb
Function_21d77e8: @ 21d77e8 :thumb
	ldr     r1, [pc, #0x4] @ 0x21d77f0, (=0xb22c)
	add     r0, r0, r1
	bx      lr
@ 0x21d77ee


.align 2


.word 0xb22c @ 0x21d77f0
.thumb
Function_21d77f4: @ 21d77f4 :thumb
	ldr     r1, [pc, #0x4] @ 0x21d77fc, (=0x5dc0)
	add     r0, r0, r1
	bx      lr
@ 0x21d77fa


.align 2


.word 0x5dc0 @ 0x21d77fc
.thumb
Function_21d7800: @ 21d7800 :thumb
	ldr     r1, [pc, #0x4] @ 0x21d7808, (=0xb3a8)
	ldr     r0, [r0, r1]
	bx      lr
@ 0x21d7806


.align 2


.word 0xb3a8 @ 0x21d7808
.thumb
Function_21d780c: @ 21d780c :thumb
	ldr     r1, [pc, #0x4] @ 0x21d7814, (=0x662c)
	add     r0, r0, r1
	bx      lr
@ 0x21d7812


.align 2


.word 0x662c @ 0x21d7814
.thumb
Function_21d7818: @ 21d7818 :thumb
	mov     r1, #0x56
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	bx      lr
@ 0x21d7820

.thumb
Function_21d7820: @ 21d7820 :thumb
	push    {r3,lr}
	mov     r1, #0x16
	lsl     r1, r1, #4
	ldr     r0, [r0, r1]
	bl      Function_21d5e08
	cmp     r0, #0x4
	beq     branch_21d7834
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d7834

.thumb
branch_21d7834: @ 21d7834 :thumb
	mov     r0, #0x2b
	mvn     r0, r0
	pop     {r3,pc}
@ 0x21d783a


.align 2, 0


.thumb
Function_21d783c: @ 21d783c :thumb
	str     r1, [r0, #0x0]
	str     r2, [r0, #0x8]
	ldr     r1, [sp, #0x0]
	str     r3, [r0, #0xc]
	str     r1, [r0, #0x10]
	mov     r1, r0
	ldr     r2, [sp, #0x4]
	add     r1, #0x20
	strb    r2, [r1, #0x0]
	mov     r1, #0x0
	str     r1, [r0, #0x4]
	str     r1, [r0, #0x14]
	str     r1, [r0, #0x18]
	str     r1, [r0, #0x1c]
	bx      lr
@ 0x21d785a


.align 2, 0


.thumb
Function_21d785c: @ 21d785c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x20
	str     r0, [sp, #0x0]
	lsl     r0, r2, #12
	str     r0, [sp, #0x8]
	lsl     r0, r3, #12
	str     r0, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x30]
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x34]
	str     r0, [sp, #0x18]
	mov     r0, #0xa
	str     r0, [sp, #0x1c]
	blx     OS_DisableInterrupts
	mov     r4, r0
	add     r0, sp, #0x0
	bl      Function_2021b90
	mov     r5, r0
	mov     r0, r4
	blx     OS_RestoreInterrupts
	cmp     r5, #0x0
	beq     branch_21d78a6
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2021cc8
	mov     r1, #0x1
	mov     r0, r5
	lsl     r1, r1, #12
	bl      Function_2021ce4
.thumb
branch_21d78a6: @ 21d78a6 :thumb
	mov     r0, r5
	add     sp, #0x20
	pop     {r3-r5,pc}
@ 0x21d78ac

.thumb
Function_21d78ac: @ 21d78ac :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	blx     OS_DisableInterrupts
	mov     r6, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_2021f58
	mov     r0, r6
	blx     OS_RestoreInterrupts
	pop     {r4-r6,pc}
@ 0x21d78c8

.thumb
Function_21d78c8: @ 21d78c8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r1
	lsl     r1, r3, #27
	lsr     r1, r1, #19
	mov     r12, r1
	asr     r1, r3, #5
	lsl     r1, r1, #27
	lsr     r1, r1, #19
	mov     lr, r1
	asr     r1, r3, #10
	lsl     r1, r1, #27
	lsr     r1, r1, #19
	str     r1, [sp, #0x4]
	mov     r7, r0
	str     r2, [sp, #0x0]
	mov     r1, r2
	.hword  0x1e52 @ sub r2, r2, #0x1
	ldr     r0, [sp, #0x20]
	str     r2, [sp, #0x0]
	cmp     r1, #0x0
	beq     branch_21d795e
.thumb
branch_21d78f4: @ 21d78f4 :thumb
	ldrh    r1, [r7, #0x0]
	.hword  0x1cbf @ add r7, r7, #0x2
	lsl     r2, r1, #27
	lsr     r4, r2, #19
	asr     r2, r1, #5
	asr     r1, r1, #10
	lsl     r2, r2, #27
	lsl     r1, r1, #27
	lsr     r3, r2, #19
	lsr     r2, r1, #19
	mov     r1, r12
	sub     r5, r1, r4
	asr     r1, r5, #3
	lsr     r1, r1, #28
	add     r1, r5, r1
	asr     r1, r1, #4
	mul     r1, r0
	add     r5, r4, r1
	mov     r1, lr
	sub     r1, r1, r3
	asr     r4, r1, #3
	lsr     r4, r4, #28
	add     r4, r1, r4
	asr     r1, r4, #4
	mul     r1, r0
	add     r3, r3, r1
	ldr     r1, [sp, #0x4]
	sub     r1, r1, r2
	asr     r4, r1, #3
	lsr     r4, r4, #28
	add     r4, r1, r4
	asr     r1, r4, #4
	mul     r1, r0
	add     r4, r2, r1
	asr     r2, r5, #8
	mov     r1, #0x1f
	and     r1, r2
	asr     r2, r3, #8
	asr     r3, r4, #8
	lsl     r3, r3, #27
	lsl     r2, r2, #27
	lsr     r3, r3, #17
	lsr     r2, r2, #22
	orr     r2, r3
	orr     r1, r2
	strh    r1, [r6, #0x0]
	ldr     r1, [sp, #0x0]
	.hword  0x1cb6 @ add r6, r6, #0x2
	mov     r2, r1
	.hword  0x1e52 @ sub r2, r2, #0x1
	str     r2, [sp, #0x0]
	cmp     r1, #0x0
	bne     branch_21d78f4
.thumb
branch_21d795e: @ 21d795e :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d7962


.align 2, 0


.thumb
Function_21d7964: @ 21d7964 :thumb
	ldr     r1, [pc, #0x4] @ 0x21d796c, (=0xb3b0)
	ldr     r0, [r0, r1]
	bx      lr
@ 0x21d796a


.align 2


.word 0xb3b0 @ 0x21d796c
.thumb
Function_21d7970: @ 21d7970 :thumb
	ldr     r0, [pc, #0x4] @ 0x21d7978, (=0x21e05ec)
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	bx      lr
@ 0x21d7978

.word 0x21e05ec @ 0x21d7978
.thumb
Function_21d797c: @ 21d797c :thumb
	push    {r4-r6,lr}
	ldr     r6, [pc, #0x30] @ 0x21d79b0, (=0x21e05ec)
	ldr     r0, [r6, #0x0]
	cmp     r0, #0x0
	beq     branch_21d79ae
	mov     r4, #0x0
	cmp     r0, #0x0
	bls     branch_21d79a8
	ldr     r5, [pc, #0x24] @ 0x21d79b4, (=0x21e05f0)
.thumb
branch_21d798e: @ 21d798e :thumb
	ldr     r0, [r5, #0x8]
	bl      free
	ldr     r1, [r5, #0x0]
	cmp     r1, #0x0
	beq     branch_21d799e
	ldr     r0, [r5, #0x4]
	blx     r1
.thumb
branch_21d799e: @ 21d799e :thumb
	ldr     r0, [r6, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0xc
	cmp     r4, r0
	bcc     branch_21d798e
.thumb
branch_21d79a8: @ 21d79a8 :thumb
	ldr     r0, [pc, #0x4] @ 0x21d79b0, (=0x21e05ec)
	mov     r1, #0x0
	str     r1, [r0, #0x0]
.thumb
branch_21d79ae: @ 21d79ae :thumb
	pop     {r4-r6,pc}
@ 0x21d79b0

.word 0x21e05ec @ 0x21d79b0
.word 0x21e05f0 @ 0x21d79b4
.thumb
Function_21d79b8: @ 21d79b8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x28] @ 0x21d79e8, (=0x21e05ec)
	mov     r4, r1
	ldr     r0, [r0, #0x0]
	mov     r6, r2
	cmp     r0, #0x20
	bcc     branch_21d79cc
	bl      ErrorHandling
.thumb
branch_21d79cc: @ 21d79cc :thumb
	ldr     r2, [pc, #0x18] @ 0x21d79e8, (=0x21e05ec)
	mov     r1, #0xc
	ldr     r0, [r2, #0x0]
	ldr     r3, [pc, #0x18] @ 0x21d79ec, (=0x21e05f8)
	mul     r1, r0
	str     r5, [r3, r1]
	ldr     r3, [pc, #0x14] @ 0x21d79f0, (=0x21e05f0)
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r4, [r3, r1]
	ldr     r3, [pc, #0x14] @ 0x21d79f4, (=0x21e05f4)
	str     r0, [r2, #0x0]
	str     r6, [r3, r1]
	pop     {r4-r6,pc}
@ 0x21d79e6


.align 2


.word 0x21e05ec @ 0x21d79e8
.word 0x21e05f8 @ 0x21d79ec
.word 0x21e05f0 @ 0x21d79f0
.word 0x21e05f4 @ 0x21d79f4
.thumb
Function_21d79f8: @ 21d79f8 :thumb
	push    {r3-r7,lr}
	mov     r6, r2
	mov     r5, r0
	mov     r0, r6
	add     r0, #0x40
	ldrb    r0, [r0, #0x0]
	mov     r4, r1
	mov     r7, r3
	strb    r0, [r5, #0x0]
	mov     r0, #0xb
	strb    r0, [r5, #0x1]
	mov     r0, #0x0
	strb    r0, [r5, #0x2]
	mov     r0, r4
	bl      Function_21d7820
	ldr     r1, [pc, #0x4c] @ 0x21d7a68, (=0x585c)
	str     r0, [r5, r1]
	ldr     r2, [r5, r1]
	mov     r0, r1
	add     r2, #0x48
	sub     r0, #0x8
	str     r2, [r5, r0]
	mov     r0, #0x11
	ldr     r2, [r5, r1]
	lsl     r0, r0, #4
	add     r2, r2, r0
	.hword  0x1f08 @ sub r0, r1, #0x4
	str     r2, [r5, r0]
	mov     r0, r4
	bl      Function_21d77d8
	ldr     r1, [pc, #0x30] @ 0x21d7a6c, (=0x5980)
	mov     r2, #0x1e
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	mov     r1, r5
	add     r1, #0xa8
	bl      Function_21da3cc
	ldr     r0, [pc, #0x20] @ 0x21d7a6c, (=0x5980)
	mov     r1, #0x1b
	lsl     r1, r1, #6
	ldr     r0, [r5, r0]
	add     r1, r5, r1
	mov     r2, #0x1e
	bl      Function_21da3cc
	ldr     r1, [pc, #0x14] @ 0x21d7a70, (=0x5984)
	str     r7, [r5, r1]
	add     r0, r1, #0x4
	str     r6, [r5, r0]
	add     r1, #0x8
	str     r4, [r5, r1]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d7a68

.word 0x585c @ 0x21d7a68
.word 0x5980 @ 0x21d7a6c
.word 0x5984 @ 0x21d7a70
.thumb
Function_21d7a74: @ 21d7a74 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x1c] @ 0x21d7a98, (=0x5980)
	mov     r1, r4
	ldr     r0, [r4, r0]
	add     r1, #0xa8
	mov     r2, #0x1e
	bl      Function_21da3f0
	ldr     r0, [pc, #0x10] @ 0x21d7a98, (=0x5980)
	mov     r1, #0x1b
	lsl     r1, r1, #6
	ldr     r0, [r4, r0]
	add     r1, r4, r1
	mov     r2, #0x1e
	bl      Function_21da3f0
	pop     {r4,pc}
@ 0x21d7a98

.word 0x5980 @ 0x21d7a98
.thumb
Function_21d7a9c: @ 21d7a9c :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r4, r0
	ldr     r0, [pc, #0x44] @ 0x21d7ae8, (=0x5984)
	mov     r1, #0x3
	ldr     r0, [r4, r0]
	bl      Function_20192ec
	ldr     r1, [pc, #0x3c] @ 0x21d7aec, (=0x585c)
	str     r0, [r4, #0xc]
	ldr     r1, [r4, r1]
	mov     r2, #0x0
	sub     r1, r0, r1
	mov     r3, r1
	ldr     r0, [pc, #0x34] @ 0x21d7af0, (=0x1ff)
	mov     r1, #0x3
	and     r3, r0
	ldr     r0, [pc, #0x28] @ 0x21d7ae8, (=0x5984)
	str     r3, [r4, #0xc]
	ldr     r0, [r4, r0]
	bl      Function_2019184
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x40
	str     r0, [sp, #0x4]
	mov     r0, #0x20
	str     r0, [sp, #0x8]
	mov     r0, #0x9
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0xc] @ 0x21d7ae8, (=0x5984)
	mov     r1, #0x3
	ldr     r0, [r4, r0]
	mov     r2, #0x18
	bl      Function_2019cb8
	add     sp, #0x10
	pop     {r4,pc}
@ 0x21d7ae8

.word 0x5984 @ 0x21d7ae8
.word 0x585c @ 0x21d7aec
.word 0x1ff @ 0x21d7af0
.thumb
Function_21d7af4: @ 21d7af4 :thumb
	push    {r4-r7}
	ldr     r5, [sp, #0x10]
	cmp     r1, #0x0
	beq     branch_21d7b2a
	ldrb    r6, [r0, #0x2]
	mov     r4, #0x1
	mov     r7, r6
	mov     r6, #0x69
	eor     r7, r4
	lsl     r6, r6, #2
	mul     r6, r7
	str     r6, [r2, #0x0]
	mov     r2, #0x17
	mul     r2, r1
	ldrb    r6, [r0, #0x1]
	mov     r1, #0x3f
	add     r2, r6, r2
	and     r1, r2
	str     r1, [r3, #0x0]
	ldrb    r0, [r0, #0x2]
	eor     r0, r4
	lsl     r1, r0, #1
	ldr     r0, [pc, #0x24] @ 0x21d7b48, (=0x21e0138)
	ldrh    r0, [r0, r1]
	str     r0, [r5, #0x0]
	pop     {r4-r7}
	bx      lr
@ 0x21d7b2a

.thumb
branch_21d7b2a: @ 21d7b2a :thumb
	ldrb    r4, [r0, #0x2]
	mov     r1, #0x69
	lsl     r1, r1, #2
	mul     r1, r4
	str     r1, [r2, #0x0]
	ldrb    r1, [r0, #0x1]
	str     r1, [r3, #0x0]
	ldrb    r0, [r0, #0x2]
	lsl     r1, r0, #1
	ldr     r0, [pc, #0x8] @ 0x21d7b48, (=0x21e0138)
	ldrh    r0, [r0, r1]
	str     r0, [r5, #0x0]
	pop     {r4-r7}
	bx      lr
@ 0x21d7b46


.align 2


.word 0x21e0138 @ 0x21d7b48
.thumb
Function_21d7b4c: @ 21d7b4c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r4, r1
	mov     r6, r2
	add     r1, sp, #0x8
	mov     r7, r3
	str     r1, [sp, #0x0]
	mov     r1, r6
	add     r2, sp, #0x10
	add     r3, sp, #0xc
	mov     r5, r0
	bl      Function_21d7af4
	ldr     r2, [sp, #0x8]
	mov     r0, r5
	mov     r1, r4
	mov     r3, r7
	bl      Function_21d7bc0
	ldr     r2, [sp, #0x10]
	mov     r0, r5
	mov     r1, r4
	bl      Function_21d7c58
	ldr     r0, [sp, #0x8]
	mov     r1, r4
	str     r0, [sp, #0x0]
	ldr     r2, [sp, #0xc]
	ldr     r3, [sp, #0x10]
	mov     r0, r5
	bl      Function_21d7d00
	cmp     r7, #0x0
	beq     branch_21d7bb4
	cmp     r6, #0x0
	bne     branch_21d7bb4
	ldrb    r3, [r5, #0x2]
	mov     r0, #0xb8
	mul     r0, r6
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x18] @ 0x21d7bb8, (=0x618)
	mov     r1, r5
	add     r1, #0xa8
	mul     r0, r3
	add     r0, r1, r0
	str     r0, [sp, #0x4]
	ldr     r1, [pc, #0x10] @ 0x21d7bbc, (=0x5980)
	ldrb    r2, [r4, #0x0]
	ldr     r1, [r5, r1]
	mov     r0, r5
	bl      Function_21d85c4
.thumb
branch_21d7bb4: @ 21d7bb4 :thumb
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d7bb8

.word 0x618 @ 0x21d7bb8
.word 0x5980 @ 0x21d7bbc
.thumb
Function_21d7bc0: @ 21d7bc0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r2
	ldrb    r2, [r1, #0x1]
	mov     r7, r0
	mov     r5, r3
	lsl     r1, r2, #1
	add     r2, r2, r1
	ldr     r1, [pc, #0x78] @ 0x21d7c4c, (=0x21e017a)
	mov     r0, #0x12
	ldrb    r1, [r1, r2]
	add     r2, sp, #0x8
	mov     r3, #0xa
	bl      Function_2006f88
	str     r0, [sp, #0x4]
	cmp     r0, #0x0
	beq     branch_21d7c48
	cmp     r5, #0x0
	beq     branch_21d7bfe
	ldr     r0, [sp, #0x8]
	mov     r1, #0x20
	ldr     r0, [r0, #0xc]
	blx     DC_FlushRange
	ldr     r0, [sp, #0x8]
	lsl     r1, r4, #5
	ldr     r0, [r0, #0xc]
	mov     r2, #0x20
	blx     GX_LoadBGPltt
.thumb
branch_21d7bfe: @ 21d7bfe :thumb
	ldr     r0, [pc, #0x50] @ 0x21d7c50, (=0x5860)
	mov     r6, #0x0
	mov     r4, r6
	add     r5, r7, r0
.thumb
branch_21d7c06: @ 21d7c06 :thumb
	str     r4, [sp, #0x0]
	ldr     r0, [sp, #0x8]
	ldr     r3, [pc, #0x48] @ 0x21d7c54, (=0x7fff)
	ldr     r0, [r0, #0xc]
	mov     r1, r5
	mov     r2, #0x10
	bl      Function_21d78c8
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	add     r5, #0x20
	cmp     r6, #0x8
	blt     branch_21d7c06
	mov     r2, #0x10
	str     r2, [sp, #0x0]
	ldr     r1, [pc, #0x28] @ 0x21d7c50, (=0x5860)
	ldr     r0, [sp, #0x8]
	add     r3, r7, r1
	lsl     r1, r6, #5
	add     r1, r3, r1
	ldr     r0, [r0, #0xc]
	ldr     r3, [pc, #0x20] @ 0x21d7c54, (=0x7fff)
	bl      Function_21d78c8
	ldr     r0, [pc, #0x18] @ 0x21d7c50, (=0x5860)
	mov     r1, #0x12
	add     r0, r7, r0
	lsl     r1, r1, #4
	blx     DC_FlushRange
	ldr     r0, [sp, #0x4]
	bl      free
.thumb
branch_21d7c48: @ 21d7c48 :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21d7c4c

.word 0x21e017a @ 0x21d7c4c
.word 0x5860 @ 0x21d7c50
.word 0x7fff @ 0x21d7c54
.thumb
Function_21d7c58: @ 21d7c58 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r7, r2
	mov     r2, #0x1
	mov     r5, r1
	str     r2, [sp, #0x0]
	ldrb    r3, [r5, #0x1]
	mov     r6, r0
	mov     r0, #0x12
	lsl     r1, r3, #1
	add     r3, r3, r1
	ldr     r1, [pc, #0x84] @ 0x21d7cf4, (=0x21e0179)
	ldrb    r1, [r1, r3]
	mov     r3, #0xa
	bl      Function_2006fe8_LoadFromNARC_UncompressLZ8
	str     r0, [sp, #0x10]
	cmp     r0, #0x0
	beq     branch_21d7cf0
	add     r1, sp, #0x14
	blx     Function_20a7164
	cmp     r0, #0x0
	beq     branch_21d7cea
	mov     r0, #0xa
	mov     r1, #0x1
	bl      Function_201a778
	mov     r4, r0
	beq     branch_21d7cd8
	ldr     r0, [pc, #0x60] @ 0x21d7cf8, (=0x5984)
	ldr     r0, [r6, r0]
	str     r0, [r4, #0x0]
	mov     r0, #0x15
	strb    r0, [r4, #0x7]
	mov     r0, #0x4
	strb    r0, [r4, #0x8]
	ldr     r0, [sp, #0x14]
	ldr     r0, [r0, #0x14]
	str     r0, [r4, #0xc]
	mov     r0, #0x0
	ldr     r1, [r5, #0x4]
	mov     r2, r0
	bl      Function_2002d7c
	mov     r3, r0
	mov     r0, #0xd
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x3c] @ 0x21d7cfc, (=0x20100)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r2, [r5, #0x4]
	lsr     r5, r3, #1
	mov     r3, #0x54
	mov     r0, r4
	sub     r3, r3, r5
	bl      Function_201d78c
	mov     r0, r4
	bl      free
.thumb
branch_21d7cd8: @ 21d7cd8 :thumb
	ldr     r3, [sp, #0x14]
	ldr     r0, [pc, #0x1c] @ 0x21d7cf8, (=0x5984)
	str     r7, [sp, #0x0]
	ldr     r2, [r3, #0x14]
	ldr     r0, [r6, r0]
	ldr     r3, [r3, #0x10]
	mov     r1, #0x3
	bl      Function_201958c
.thumb
branch_21d7cea: @ 21d7cea :thumb
	ldr     r0, [sp, #0x10]
	bl      free
.thumb
branch_21d7cf0: @ 21d7cf0 :thumb
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21d7cf4

.word 0x21e0179 @ 0x21d7cf4
.word 0x5984 @ 0x21d7cf8
.word 0x20100 @ 0x21d7cfc
.thumb
Function_21d7d00: @ 21d7d00 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r2
	mov     r2, #0x1
	str     r2, [sp, #0x0]
	mov     r6, r3
	ldrb    r3, [r1, #0x1]
	mov     r5, r0
	mov     r0, #0x12
	lsl     r1, r3, #1
	add     r3, r3, r1
	ldr     r1, [pc, #0x50] @ 0x21d7d68, (=0x21e0178)
	ldrb    r1, [r1, r3]
	mov     r3, #0xa
	bl      Function_2006fe8_LoadFromNARC_UncompressLZ8
	str     r0, [sp, #0x4]
	cmp     r0, #0x0
	beq     branch_21d7d64
	add     r1, sp, #0x8
	blx     Function_20a7248
	ldr     r0, [pc, #0x3c] @ 0x21d7d6c, (=0x5984)
	mov     r1, #0x3
	ldr     r0, [r5, r0]
	bl      Function_2019fe4
	mov     r7, r0
	beq     branch_21d7d4a
	ldr     r1, [sp, #0x20]
	mov     r2, r4
	str     r1, [sp, #0x0]
	ldr     r1, [sp, #0x8]
	mov     r3, r6
	add     r1, #0xc
	bl      Function_21d8764
.thumb
branch_21d7d4a: @ 21d7d4a :thumb
	ldr     r0, [sp, #0x4]
	bl      free
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x14] @ 0x21d7d6c, (=0x5984)
	mov     r3, #0x1
	ldr     r0, [r5, r0]
	mov     r1, #0x3
	mov     r2, r7
	lsl     r3, r3, #12
	bl      Function_2019460
.thumb
branch_21d7d64: @ 21d7d64 :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21d7d68

.word 0x21e0178 @ 0x21d7d68
.word 0x5984 @ 0x21d7d6c
.thumb
Function_21d7d70: @ 21d7d70 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x94] @ 0x21d7e0c, (=0x5984)
	mov     r4, r1
	ldr     r0, [r5, r0]
	mov     r1, #0x3
	mov     r6, r2
	bl      Function_20192ec
	lsl     r0, r0, #23
	lsr     r1, r0, #11
	mov     r0, #0xb8
	mov     r7, r6
	mul     r7, r0
	lsl     r0, r7, #12
	str     r1, [r5, #0x8]
	add     r1, r1, r0
	str     r1, [r5, #0x14]
	ldr     r0, [r5, #0x8]
	sub     r0, r1, r0
	mov     r1, #0x1e
	blx     _s32_div_f
	str     r0, [r5, #0x10]
	ldr     r0, [r5, #0x14]
	asr     r1, r0, #12
	ldr     r0, [pc, #0x68] @ 0x21d7e10, (=0x1ff)
	and     r0, r1
	str     r0, [r5, #0x14]
	mov     r0, #0x1e
	str     r0, [r5, #0x4]
	ldrb    r0, [r5, #0x2]
	strb    r0, [r5, #0x3]
	mov     r0, #0x17
	ldrb    r1, [r5, #0x1]
	mul     r0, r6
	add     r0, r1, r0
	strb    r0, [r5, #0x1]
	ldrb    r1, [r5, #0x1]
	mov     r0, #0x3f
	and     r0, r1
	strb    r0, [r5, #0x1]
	ldrb    r1, [r5, #0x2]
	mov     r0, #0x1
	eor     r0, r1
	strb    r0, [r5, #0x2]
	ldrb    r1, [r4, #0x0]
	mov     r0, r5
	bl      Function_21d813c
	ldr     r1, [r5, #0x10]
	mov     r0, r5
	mov     r2, r7
	bl      Function_21d7f14
	ldrb    r0, [r4, #0x0]
	mov     r1, #0x1
	mov     r2, #0x0
	str     r0, [r5, #0x30]
	ldrb    r0, [r5, #0x2]
	str     r0, [r5, #0x34]
	mov     r0, r5
	add     r0, #0x98
	str     r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x9c
	str     r2, [r0, #0x0]
	ldr     r0, [pc, #0x1c] @ 0x21d7e14, (=0x21d7e25)
	mov     r1, r5
	bl      AddTaskToTaskList1
	ldr     r0, [pc, #0x18] @ 0x21d7e18, (=0x21d7e6d)
	mov     r1, r5
	mov     r2, #0x1
	bl      Function_21d77c8
	pop     {r3-r7,pc}
@ 0x21d7e0a


.align 2


.word 0x5984 @ 0x21d7e0c
.word 0x1ff @ 0x21d7e10
.word 0x21d7e25 @ 0x21d7e14
.word 0x21d7e6d @ 0x21d7e18
.thumb
Function_21d7e1c: @ 21d7e1c :thumb
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	bx      lr
@ 0x21d7e22


.align 2, 0


.thumb
Function_21d7e24: @ 21d7e24 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_21d7e4a
	mov     r0, r4
	add     r0, #0x98
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x2
	bne     branch_21d7e64
	ldr     r1, [r4, #0x10]
	mov     r0, r4
	bl      Function_21d7f9c
	mov     r0, #0x0
	add     r4, #0x98
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x21d7e4a

.thumb
branch_21d7e4a: @ 21d7e4a :thumb
	ldr     r0, [r4, #0x14]
	str     r0, [r4, #0xc]
	ldr     r0, [pc, #0x18] @ 0x21d7e68, (=0x5988)
	ldr     r0, [r4, r0]
	bl      Function_21d5e68
	strb    r0, [r4, #0x0]
	mov     r0, r5
	bl      Call_RemoveTaskFromTaskList
	mov     r0, #0x1
	add     r4, #0x9c
	str     r0, [r4, #0x0]
.thumb
branch_21d7e64: @ 21d7e64 :thumb
	pop     {r3-r5,pc}
@ 0x21d7e66


.align 2


.word 0x5988 @ 0x21d7e68
.thumb
Function_21d7e6c: @ 21d7e6c :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	ldrb    r3, [r5, #0x3]
	mov     r6, r0
	mov     r0, #0x1
	mov     r4, r3
	eor     r4, r0
	ldr     r0, [r5, #0x4]
	cmp     r0, #0x0
	beq     branch_21d7ee4
	mov     r0, r5
	add     r0, #0x98
	ldr     r2, [r0, #0x0]
	cmp     r2, #0x2
	bcs     branch_21d7f06
	ldr     r6, [pc, #0x7c] @ 0x21d7f08, (=0x618)
	add     r1, #0xa8
	mul     r6, r3
	mov     r0, r5
	add     r1, r1, r6
	bl      Function_21d865c
	ldr     r1, [pc, #0x6c] @ 0x21d7f08, (=0x618)
	mov     r2, r5
	add     r2, #0xa8
	mul     r1, r4
	add     r1, r2, r1
	mov     r2, r5
	add     r2, #0x98
	ldr     r2, [r2, #0x0]
	mov     r0, r5
	bl      Function_21d86b4
	mov     r0, r5
	add     r0, #0x98
	ldr     r0, [r0, #0x0]
	mov     r2, #0x0
	add     r1, r0, #0x1
	mov     r0, r5
	add     r0, #0x98
	str     r1, [r0, #0x0]
	ldr     r0, [r5, #0x8]
	asr     r1, r0, #12
	ldr     r0, [pc, #0x48] @ 0x21d7f0c, (=0x1ff)
	and     r0, r1
	str     r0, [r5, #0xc]
	ldr     r1, [r5, #0x8]
	ldr     r0, [r5, #0x10]
	add     r0, r1, r0
	str     r0, [r5, #0x8]
	ldr     r0, [pc, #0x3c] @ 0x21d7f10, (=0x5984)
	ldr     r3, [r5, #0xc]
	ldr     r0, [r5, r0]
	mov     r1, #0x3
	bl      Function_2019184
	ldr     r0, [r5, #0x4]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r5, #0x4]
	pop     {r4-r6,pc}
@ 0x21d7ee4

.thumb
branch_21d7ee4: @ 21d7ee4 :thumb
	ldr     r0, [pc, #0x28] @ 0x21d7f10, (=0x5984)
	ldr     r3, [r5, #0x14]
	ldr     r0, [r5, r0]
	mov     r1, #0x3
	mov     r2, #0x0
	bl      Function_2019184
	ldr     r1, [pc, #0x14] @ 0x21d7f08, (=0x618)
	mov     r0, r5
	add     r5, #0xa8
	mul     r1, r4
	add     r1, r5, r1
	bl      Function_21d870c
	mov     r0, r6
	bl      Call_RemoveTaskFromTaskList
.thumb
branch_21d7f06: @ 21d7f06 :thumb
	pop     {r4-r6,pc}
@ 0x21d7f08

.word 0x618 @ 0x21d7f08
.word 0x1ff @ 0x21d7f0c
.word 0x5984 @ 0x21d7f10
.thumb
Function_21d7f14: @ 21d7f14 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r7, #0x0
	str     r0, [sp, #0x8]
	add     r0, #0xa8
	str     r1, [sp, #0x0]
	str     r2, [sp, #0x4]
	mov     r6, r7
	mov     r4, r5
	str     r0, [sp, #0x8]
.thumb
branch_21d7f2a: @ 21d7f2a :thumb
	ldr     r0, [pc, #0x60] @ 0x21d7f8c, (=0x585c)
	ldr     r0, [r5, r0]
	add     r0, #0x70
	add     r0, r0, r6
	lsl     r1, r0, #12
	ldr     r0, [sp, #0x0]
	str     r1, [r4, #0x68]
	sub     r1, r1, r0
	mov     r0, r4
	add     r0, #0x80
	str     r1, [r0, #0x0]
	ldr     r0, [pc, #0x48] @ 0x21d7f8c, (=0x585c)
	ldr     r0, [r5, r0]
	add     r0, #0x70
	add     r1, r0, r6
	ldr     r0, [sp, #0x4]
	add     r0, r0, r1
	lsl     r1, r0, #12
	ldr     r0, [sp, #0x0]
	str     r1, [r4, #0x38]
	sub     r0, r1, r0
	str     r0, [r4, #0x50]
	asr     r2, r0, #12
	ldr     r0, [pc, #0x34] @ 0x21d7f90, (=0x5854)
	ldr     r0, [r5, r0]
	cmp     r2, r0
	ble     branch_21d7f7e
	ldr     r0, [pc, #0x30] @ 0x21d7f94, (=0x5858)
	ldr     r0, [r5, r0]
	cmp     r2, r0
	bge     branch_21d7f7e
	ldrb    r3, [r5, #0x3]
	mov     r1, #0x1
	mov     r0, r5
	eor     r1, r3
	ldr     r3, [pc, #0x24] @ 0x21d7f98, (=0x618)
	mul     r3, r1
	ldr     r1, [sp, #0x8]
	add     r1, r1, r3
	mov     r3, r7
	bl      Function_21d803c
.thumb
branch_21d7f7e: @ 21d7f7e :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r6, #0x18
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r7, #0x6
	blt     branch_21d7f2a
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21d7f8c

.word 0x585c @ 0x21d7f8c
.word 0x5854 @ 0x21d7f90
.word 0x5858 @ 0x21d7f94
.word 0x618 @ 0x21d7f98
.thumb
Function_21d7f9c: @ 21d7f9c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r6, r1
	ldrb    r1, [r5, #0x3]
	str     r0, [sp, #0x0]
	add     r0, #0xa8
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x80] @ 0x21d8030, (=0x618)
	mov     r2, r1
	mul     r2, r0
	str     r2, [sp, #0x4]
	mov     r2, #0x1
	eor     r1, r2
	mul     r0, r1
	mov     r7, #0x0
	mov     r4, r5
	str     r0, [sp, #0x8]
.thumb
branch_21d7fc0: @ 21d7fc0 :thumb
	mov     r0, r4
	add     r0, #0x80
	ldr     r1, [pc, #0x6c] @ 0x21d8034, (=0x5854)
	ldr     r0, [r0, #0x0]
	ldr     r1, [r5, r1]
	asr     r0, r0, #12
	cmp     r0, r1
	ble     branch_21d7fd8
	ldr     r1, [pc, #0x64] @ 0x21d8038, (=0x5858)
	ldr     r1, [r5, r1]
	cmp     r0, r1
	blt     branch_21d7fe6
.thumb
branch_21d7fd8: @ 21d7fd8 :thumb
	ldr     r2, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	mov     r0, r5
	add     r1, r2, r1
	mov     r2, r7
	bl      Function_21d8114
.thumb
branch_21d7fe6: @ 21d7fe6 :thumb
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	sub     r0, r0, r6
	str     r0, [r4, #0x68]
	sub     r1, r0, r6
	mov     r0, r4
	add     r0, #0x80
	str     r1, [r0, #0x0]
	ldr     r0, [r4, #0x50]
	sub     r0, r0, r6
	str     r0, [r4, #0x38]
	sub     r0, r0, r6
	str     r0, [r4, #0x50]
	asr     r2, r0, #12
	ldr     r0, [pc, #0x2c] @ 0x21d8034, (=0x5854)
	ldr     r0, [r5, r0]
	cmp     r2, r0
	ble     branch_21d8022
	ldr     r0, [pc, #0x28] @ 0x21d8038, (=0x5858)
	ldr     r0, [r5, r0]
	cmp     r2, r0
	bge     branch_21d8022
	ldr     r3, [sp, #0x0]
	ldr     r1, [sp, #0x8]
	mov     r0, r5
	add     r1, r3, r1
	mov     r3, r7
	bl      Function_21d803c
.thumb
branch_21d8022: @ 21d8022 :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r7, #0x6
	blt     branch_21d7fc0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21d802e


.align 2


.word 0x618 @ 0x21d8030
.word 0x5854 @ 0x21d8034
.word 0x5858 @ 0x21d8038
.thumb
Function_21d803c: @ 21d803c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x38
	mov     r5, r1
	ldr     r1, [pc, #0xbc] @ 0x21d8100, (=0x5988)
	str     r0, [sp, #0x1c]
	ldr     r0, [r0, r1]
	str     r2, [sp, #0x20]
	mov     r4, r3
	bl      Function_21d5e90
	str     r0, [sp, #0x30]
	ldr     r0, [sp, #0x1c]
	mov     r7, #0x28
	ldr     r1, [r0, #0x34]
	mov     r0, #0x1e
	mov     r2, r1
	lsl     r0, r0, #4
	mul     r2, r0
	add     r2, #0x58
	lsl     r0, r4, #4
	add     r0, r2, r0
	str     r0, [sp, #0x28]
	mov     r0, #0x34
	mul     r0, r4
	add     r5, r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x2c]
	ldr     r1, [pc, #0x90] @ 0x21d8104, (=0xcd8)
	ldr     r0, [sp, #0x1c]
	add     r1, r0, r1
	lsl     r0, r7, #4
	mul     r0, r4
	add     r0, r1, r0
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x1c]
	lsl     r1, r4, #1
	add     r6, r0, r1
.thumb
branch_21d8086: @ 21d8086 :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	bne     branch_21d80d6
	ldr     r1, [sp, #0x1c]
	ldr     r0, [sp, #0x30]
	ldr     r1, [r1, #0x30]
	mov     r2, r4
	bl      Function_2079c9c
	mov     r1, #0xac
	mov     r2, #0x0
	str     r0, [sp, #0x34]
	bl      GetBoxPkmnData
	cmp     r0, #0x0
	beq     branch_21d80d6
	mov     r0, r4
	bl      Function_21d85b4
	ldr     r1, [sp, #0x24]
	ldr     r2, [pc, #0x58] @ 0x21d8108, (=0x5814)
	str     r1, [sp, #0x0]
	ldr     r1, [sp, #0x20]
	ldr     r3, [pc, #0x54] @ 0x21d810c, (=0x57d8)
	str     r1, [sp, #0x4]
	str     r7, [sp, #0x8]
	mov     r1, #0x2
	str     r1, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x28]
	ldr     r1, [sp, #0x1c]
	str     r0, [sp, #0x14]
	str     r5, [sp, #0x18]
	ldr     r0, [pc, #0x44] @ 0x21d8110, (=0x5980)
	ldrh    r2, [r6, r2]
	ldr     r0, [r1, r0]
	ldrh    r3, [r6, r3]
	ldr     r1, [sp, #0x34]
	bl      Function_21da548
.thumb
branch_21d80d6: @ 21d80d6 :thumb
	ldr     r0, [sp, #0x28]
	ldr     r1, [sp, #0x24]
	add     r0, #0x60
	str     r0, [sp, #0x28]
	mov     r0, #0x4e
	lsl     r0, r0, #2
	add     r5, r5, r0
	mov     r0, #0xf
	lsl     r0, r0, #8
	add     r0, r1, r0
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x2c]
	add     r6, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1da4 @ add r4, r4, #0x6
	add     r7, #0x18
	str     r0, [sp, #0x2c]
	cmp     r0, #0x5
	blt     branch_21d8086
	add     sp, #0x38
	pop     {r3-r7,pc}
@ 0x21d8100

.word 0x5988 @ 0x21d8100
.word 0xcd8 @ 0x21d8104
.word 0x5814 @ 0x21d8108
.word 0x57d8 @ 0x21d810c
.word 0x5980 @ 0x21d8110
.thumb
Function_21d8114: @ 21d8114 :thumb
	push    {r3-r7,lr}
	mov     r0, #0x34
	mov     r4, #0x0
	mov     r7, #0x4e
	mov     r5, r1
	mul     r0, r2
	add     r5, r5, r0
	mov     r6, r4
	lsl     r7, r7, #2
.thumb
branch_21d8126: @ 21d8126 :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_21d8132
	bl      Function_2021bd4
	str     r6, [r5, #0x0]
.thumb
branch_21d8132: @ 21d8132 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, r5, r7
	cmp     r4, #0x5
	blt     branch_21d8126
	pop     {r3-r7,pc}
@ 0x21d813c

.thumb
Function_21d813c: @ 21d813c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	str     r1, [sp, #0x4]
	ldr     r1, [pc, #0x60] @ 0x21d81a4, (=0x5988)
	str     r0, [sp, #0x0]
	ldr     r0, [r0, r1]
	bl      Function_21d5e90
	ldr     r4, [sp, #0x0]
	str     r0, [sp, #0x8]
	ldr     r1, [pc, #0x54] @ 0x21d81a8, (=0xcd8)
	mov     r0, r4
	mov     r6, #0x0
	add     r5, r0, r1
.thumb
branch_21d8158: @ 21d8158 :thumb
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x4]
	mov     r2, r6
	bl      Function_2079c9c
	mov     r1, #0x5
	mov     r2, #0x0
	mov     r7, r0
	bl      GetBoxPkmnData
	cmp     r0, #0x0
	beq     branch_21d8192
	ldr     r1, [pc, #0x38] @ 0x21d81ac, (=0x5814)
	strh    r0, [r4, r1]
	mov     r0, r7
	bl      Function_2079d40_GetPokeIconGraphicNr
	ldr     r1, [pc, #0x34] @ 0x21d81b0, (=0x57d8)
	mov     r3, #0xa
	strh    r0, [r4, r1]
	ldr     r2, [pc, #0x2c] @ 0x21d81b0, (=0x57d8)
	ldr     r1, [sp, #0x0]
	ldr     r0, [pc, #0x2c] @ 0x21d81b4, (=0x5980)
	ldrh    r2, [r4, r2]
	ldr     r0, [r1, r0]
	mov     r1, r5
	lsl     r3, r3, #6
	bl      Function_21da744
.thumb
branch_21d8192: @ 21d8192 :thumb
	mov     r0, #0xa
	lsl     r0, r0, #6
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	add     r5, r5, r0
	cmp     r6, #0x1e
	bcc     branch_21d8158
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21d81a4

.word 0x5988 @ 0x21d81a4
.word 0xcd8 @ 0x21d81a8
.word 0x5814 @ 0x21d81ac
.word 0x57d8 @ 0x21d81b0
.word 0x5980 @ 0x21d81b4
.thumb
Function_21d81b8: @ 21d81b8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r1, #0x0
	add     r0, #0xa3
	strb    r1, [r0, #0x0]
	mov     r0, #0xa
	mov     r1, #0x10
	mov     r7, r2
	str     r3, [sp, #0x0]
	bl      malloc
	mov     r4, r0
	beq     branch_21d820a
	str     r5, [r4, #0x0]
	strh    r6, [r4, #0x4]
	ldr     r0, [sp, #0x0]
	strh    r7, [r4, #0x6]
	str     r0, [r4, #0xc]
	mov     r0, #0x2
	strh    r0, [r4, #0xa]
	cmp     r7, r6
	ble     branch_21d81ea
	mov     r0, #0x1
	b       branch_21d81ec
@ 0x21d81ea

.thumb
branch_21d81ea: @ 21d81ea :thumb
	.hword  0x1ec0 @ sub r0, r0, #0x3
.thumb
branch_21d81ec: @ 21d81ec :thumb
	strh    r0, [r4, #0x8]
	ldr     r0, [pc, #0x1c] @ 0x21d820c, (=0x21d8211)
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_21d77c8
	cmp     r0, #0x0
	beq     branch_21d8204
	mov     r0, #0x1
	add     r5, #0xa3
	strb    r0, [r5, #0x0]
	pop     {r3-r7,pc}
@ 0x21d8204

.thumb
branch_21d8204: @ 21d8204 :thumb
	mov     r0, r4
	bl      free
.thumb
branch_21d820a: @ 21d820a :thumb
	pop     {r3-r7,pc}
@ 0x21d820c

.word 0x21d8211 @ 0x21d820c
.thumb
Function_21d8210: @ 21d8210 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r0, #0xa
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21d8224
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, #0xa]
	pop     {r3-r5,pc}
@ 0x21d8224

.thumb
branch_21d8224: @ 21d8224 :thumb
	mov     r2, #0x4
	mov     r1, #0x6
	ldsh    r0, [r4, r2]
	ldsh    r1, [r4, r1]
	cmp     r0, r1
	beq     branch_21d8252
	mov     r1, #0x8
	ldsh    r1, [r4, r1]
	add     r0, r0, r1
	strh    r0, [r4, #0x4]
	ldr     r1, [r4, #0x0]
	ldr     r0, [pc, #0x28] @ 0x21d8264, (=0x5860)
	add     r1, r1, r0
	ldsh    r0, [r4, r2]
	mov     r2, #0x20
	lsl     r0, r0, #5
	add     r0, r1, r0
	ldr     r1, [r4, #0xc]
	blx     GX_LoadBGPltt
	mov     r0, #0x2
	strh    r0, [r4, #0xa]
	pop     {r3-r5,pc}

branch_21d8252: @ 21d8252 :thumb
	ldr     r1, [pc, #0x14] @ 0x21d8268, (=0x21d826d)
	ldr     r2, [r4, #0x0]
	mov     r0, r4
	bl      Function_21d79b8
	mov     r0, r5
	bl      Call_RemoveTaskFromTaskList
	pop     {r3-r5,pc}
@ 0x21d8264

.word 0x5860 @ 0x21d8264
.word Function_21d826c+1 @ =0x21d826d, 0x21d8268
.thumb
Function_21d826c: @ 21d826c :thumb
	mov     r1, #0x0
	add     r0, #0xa3
	strb    r1, [r0, #0x0]
	bx      lr
@ 0x21d8274

.thumb
Function_21d8274: @ 21d8274 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r3, [pc, #0x84] @ 0x21d8300, (=0x21e0770)
	mov     r4, r1
	ldr     r1, [r3, #0xc]
	cmp     r1, #0x0
	beq     branch_21d828e
	cmp     r1, #0x1
	beq     branch_21d82c4
	cmp     r1, #0x2
	beq     branch_21d82f0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d828e

.thumb
branch_21d828e: @ 21d828e :thumb
	ldr     r0, [pc, #0x74] @ 0x21d8304, (=0x21e0774)
	ldr     r2, [pc, #0x74] @ 0x21d8308, (=0x21e0778)
	str     r0, [sp, #0x0]
	ldr     r3, [pc, #0x74] @ 0x21d830c, (=0x21e0770)
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d7af4
	ldr     r0, [pc, #0x70] @ 0x21d8310, (=0x5988)
	ldr     r0, [r4, r0]
	bl      Function_21d5e8c
	ldr     r2, [pc, #0x58] @ 0x21d8300, (=0x21e0770)
	mov     r1, r0
	ldr     r0, [pc, #0x68] @ 0x21d8314, (=0x21e05c0)
	ldr     r2, [r2, #0x4]
	str     r1, [r0, #0x0]
	mov     r0, r4
	mov     r3, #0x0
	bl      Function_21d7bc0
	ldr     r0, [pc, #0x44] @ 0x21d8300, (=0x21e0770)
	add     sp, #0x4
	ldr     r1, [r0, #0xc]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0xc]
	pop     {r3,r4,pc}
@ 0x21d82c4

.thumb
branch_21d82c4: @ 21d82c4 :thumb
	ldr     r0, [r3, #0x4]
	ldr     r1, [pc, #0x4c] @ 0x21d8314, (=0x21e05c0)
	str     r0, [sp, #0x0]
	ldr     r2, [r3, #0x0]
	ldr     r1, [r1, #0x0]
	ldr     r3, [r3, #0x8]
	mov     r0, r4
	bl      Function_21d7d00
	ldr     r1, [pc, #0x3c] @ 0x21d8314, (=0x21e05c0)
	ldr     r2, [pc, #0x24] @ 0x21d8300, (=0x21e0770)
	ldr     r1, [r1, #0x0]
	ldr     r2, [r2, #0x8]
	mov     r0, r4
	bl      Function_21d7c58
	ldr     r0, [pc, #0x18] @ 0x21d8300, (=0x21e0770)
	add     sp, #0x4
	ldr     r1, [r0, #0xc]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0xc]
	pop     {r3,r4,pc}
@ 0x21d82f0

.thumb
branch_21d82f0: @ 21d82f0 :thumb
	mov     r1, #0x0
	add     r4, #0xa3
	strb    r1, [r4, #0x0]
	str     r1, [r3, #0xc]
	bl      Call_RemoveTaskFromTaskList
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d8300

.word 0x21e0770 @ 0x21d8300
.word 0x21e0774 @ 0x21d8304
.word 0x21e0778 @ 0x21d8308
.word 0x21e0770 @ 0x21d830c
.word 0x5988 @ 0x21d8310
.word 0x21e05c0 @ 0x21d8314
.thumb
Function_21d8318: @ 21d8318 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x28] @ 0x21d8348, (=0x21d8275)
	mov     r1, r4
	mov     r2, #0x0
	bl      AddTaskToTaskList3
	cmp     r0, #0x0
	beq     branch_21d832e
	mov     r1, #0x1
	b       branch_21d8330
@ 0x21d832e

.thumb
branch_21d832e: @ 21d832e :thumb
	mov     r1, #0x0
.thumb
branch_21d8330: @ 21d8330 :thumb
	mov     r0, r4
	add     r0, #0xa3
	add     r4, #0xa3
	strb    r1, [r0, #0x0]
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_21d8344
	ldr     r0, [pc, #0xc] @ 0x21d834c, (=0x21e0770)
	mov     r1, #0x0
	str     r1, [r0, #0xc]
.thumb
branch_21d8344: @ 21d8344 :thumb
	pop     {r4,pc}
@ 0x21d8346


.align 2


.word 0x21d8275 @ 0x21d8348
.word 0x21e0770 @ 0x21d834c
.thumb
Function_21d8350: @ 21d8350 :thumb
	push    {r4,lr}
	mov     r2, r0
	mov     r1, #0x0
	add     r2, #0xa2
	strb    r1, [r2, #0x0]
	ldrb    r3, [r0, #0x2]
	mov     r2, #0x8
	lsl     r4, r3, #1
	ldr     r3, [pc, #0x8] @ 0x21d836c, (=0x21e0138)
	ldrh    r3, [r3, r4]
	lsl     r3, r3, #5
	bl      Function_21d81b8
	pop     {r4,pc}
@ 0x21d836c

.word 0x21e0138 @ 0x21d836c
.thumb
Function_21d8370: @ 21d8370 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r1, r4
	add     r1, #0xa2
	ldrb    r1, [r1, #0x0]
	cmp     r1, #0x4
	bhi     branch_21d83fe
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d838a

Jumppoints_21d838a:
.hword branch_21d8394 - Jumppoints_21d838a - 2
.hword branch_21d83aa - Jumppoints_21d838a - 2
.hword branch_21d83bc - Jumppoints_21d838a - 2
.hword branch_21d83d2 - Jumppoints_21d838a - 2
.hword branch_21d83f2 - Jumppoints_21d838a - 2
.thumb
branch_21d8394: @ 21d8394 :thumb
	add     r0, #0xa3
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_21d83fe
	mov     r0, r4
	add     r0, #0xa2
	ldrb    r0, [r0, #0x0]
	add     r4, #0xa2
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_21d83fe
@ 0x21d83aa

.thumb
branch_21d83aa: @ 21d83aa :thumb
	bl      Function_21d8318
	mov     r0, r4
	add     r0, #0xa2
	ldrb    r0, [r0, #0x0]
	add     r4, #0xa2
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_21d83fe
@ 0x21d83bc

.thumb
branch_21d83bc: @ 21d83bc :thumb
	add     r0, #0xa3
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_21d83fe
	mov     r0, r4
	add     r0, #0xa2
	ldrb    r0, [r0, #0x0]
	add     r4, #0xa2
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_21d83fe
@ 0x21d83d2

.thumb
branch_21d83d2: @ 21d83d2 :thumb
	ldrb    r3, [r4, #0x2]
	mov     r1, #0x8
	mov     r2, #0x0
	lsl     r5, r3, #1
	ldr     r3, [pc, #0x28] @ 0x21d8404, (=0x21e0138)
	ldrh    r3, [r3, r5]
	lsl     r3, r3, #5
	bl      Function_21d81b8
	mov     r0, r4
	add     r0, #0xa2
	ldrb    r0, [r0, #0x0]
	add     r4, #0xa2
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_21d83fe
@ 0x21d83f2

.thumb
branch_21d83f2: @ 21d83f2 :thumb
	add     r4, #0xa3
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_21d83fe
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d83fe

.thumb
branch_21d83fe: @ 21d83fe :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d8402


.align 2


.word 0x21e0138 @ 0x21d8404
.thumb
Function_21d8408: @ 21d8408 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r7, r2
	mov     r4, r1
	mov     r0, #0x34
	mul     r4, r0
	mov     r0, r5
	ldrb    r2, [r5, #0x2]
	ldr     r1, [pc, #0x38] @ 0x21d8454, (=0x618)
	add     r0, #0xa8
	mul     r1, r2
	add     r0, r0, r1
	mov     r6, r3
	add     r0, r0, r4
	mov     r1, r6
	mov     r2, #0x1
	bl      Function_21da418
	ldr     r0, [pc, #0x28] @ 0x21d8458, (=0x5980)
	mov     r1, r6
	ldr     r0, [r5, r0]
	mov     r2, r7
	bl      Function_21da754
	ldr     r0, [pc, #0x1c] @ 0x21d8458, (=0x5980)
	mov     r3, r5
	ldrb    r2, [r5, #0x2]
	ldr     r1, [pc, #0x14] @ 0x21d8454, (=0x618)
	add     r3, #0xa8
	mul     r1, r2
	add     r1, r3, r1
	ldr     r0, [r5, r0]
	add     r1, r1, r4
	mov     r2, #0x1
	bl      Function_21da3cc
	pop     {r3-r7,pc}
@ 0x21d8452


.align 2


.word 0x618 @ 0x21d8454
.word 0x5980 @ 0x21d8458
.thumb
Function_21d845c: @ 21d845c :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldrb    r0, [r6, #0x2]
	mov     r7, r1
	mov     r3, r6
	str     r0, [sp, #0x0]
	ldr     r1, [pc, #0x54] @ 0x21d84c0, (=0x618)
	ldr     r0, [sp, #0x0]
	add     r3, #0xa8
	mul     r1, r0
	mov     r0, #0x34
	mov     r4, r7
	mul     r4, r0
	add     r5, r3, r1
	mov     r0, r2
	add     r1, r5, r4
	mov     r2, #0x1
	bl      Function_21da418
	ldr     r0, [pc, #0x40] @ 0x21d84c4, (=0x5980)
	add     r1, r5, r4
	ldr     r0, [r6, r0]
	mov     r2, #0x0
	bl      Function_21da7f4
	mov     r2, #0x1e
	ldr     r0, [pc, #0x30] @ 0x21d84c4, (=0x5980)
	ldr     r3, [sp, #0x0]
	lsl     r2, r2, #4
	mul     r2, r3
	ldr     r0, [r6, r0]
	add     r2, #0x58
	lsl     r3, r7, #4
	add     r1, r5, r4
	add     r2, r2, r3
	bl      Function_21da754
	mov     r0, r7
	bl      Function_21d85b4
	mov     r1, r0
	ldr     r0, [r5, r4]
	bl      Function_21d78ac
	mov     r0, r6
	mov     r1, r7
	bl      Function_21d89f4
	pop     {r3-r7,pc}
@ 0x21d84be


.align 2


.word 0x618 @ 0x21d84c0
.word 0x5980 @ 0x21d84c4
.thumb
Function_21d84c8: @ 21d84c8 :thumb
	ldrb    r2, [r0, #0x2]
	mov     r3, r0
	ldr     r0, [pc, #0xc] @ 0x21d84dc, (=0x618)
	add     r3, #0xa8
	mul     r0, r2
	add     r2, r3, r0
	mov     r0, #0x34
	mul     r0, r1
	add     r0, r2, r0
	bx      lr
@ 0x21d84dc

.word 0x618 @ 0x21d84dc
.thumb
Function_21d84e0: @ 21d84e0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	mov     r5, r0
	ldr     r0, [pc, #0xbc] @ 0x21d85a4, (=0x5988)
	ldr     r0, [r5, r0]
	ldr     r0, [r0, #0x0]
	bl      Function_207999c
	mov     r4, #0x0
	str     r0, [sp, #0x1c]
	mov     r0, r5
	str     r0, [sp, #0x28]
	add     r0, #0xa8
	mov     r7, r4
	str     r4, [sp, #0x2c]
	str     r0, [sp, #0x28]
.thumb
branch_21d8500: @ 21d8500 :thumb
	ldr     r0, [pc, #0xa0] @ 0x21d85a4, (=0x5988)
	ldr     r1, [sp, #0x1c]
	ldr     r0, [r5, r0]
	mov     r2, r4
	ldr     r0, [r0, #0x0]
	bl      Function_2079c9c
	mov     r1, #0xac
	mov     r2, #0x0
	str     r0, [sp, #0x20]
	bl      GetBoxPkmnData
	cmp     r0, #0x0
	beq     branch_21d8592
	ldrb    r1, [r5, #0x2]
	ldr     r0, [pc, #0x88] @ 0x21d85a8, (=0x618)
	mul     r0, r1
	str     r0, [sp, #0x18]
	add     r0, r5, r0
	add     r0, r7, r0
	str     r1, [sp, #0x14]
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_21d8592
	mov     r0, r4
	bl      Function_21d85b4
	str     r0, [sp, #0x24]
	mov     r0, r4
	mov     r1, #0x6
	blx     _s32_div_f
	str     r1, [sp, #0x10]
	mov     r0, r4
	mov     r1, #0x6
	blx     _s32_div_f
	mov     r12, r0
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x24]
	ldr     r3, [sp, #0x10]
	str     r0, [sp, #0x4]
	ldr     r1, [sp, #0x14]
	mov     r0, #0x1e
	mov     r2, r1
	lsl     r0, r0, #4
	mul     r2, r0
	ldr     r0, [sp, #0x2c]
	add     r2, #0x58
	add     r0, r2, r0
	str     r0, [sp, #0x8]
	ldr     r1, [sp, #0x28]
	ldr     r0, [sp, #0x18]
	ldr     r2, [pc, #0x3c] @ 0x21d85ac, (=0x585c)
	add     r0, r1, r0
	add     r0, r0, r7
	str     r0, [sp, #0xc]
	ldr     r6, [r5, r2]
	mov     r2, #0x18
	ldr     r0, [pc, #0x34] @ 0x21d85b0, (=0x5980)
	mul     r2, r3
	add     r6, #0x70
	add     r2, r6, r2
	mov     r6, r12
	mov     r3, #0x18
	mul     r3, r6
	ldr     r0, [r5, r0]
	ldr     r1, [sp, #0x20]
	add     r3, #0x28
	bl      Function_21da428
.thumb
branch_21d8592: @ 21d8592 :thumb
	ldr     r0, [sp, #0x2c]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r0, #0x10
	add     r7, #0x34
	str     r0, [sp, #0x2c]
	cmp     r4, #0x1e
	blt     branch_21d8500
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x21d85a4

.word 0x5988 @ 0x21d85a4
.word 0x618 @ 0x21d85a8
.word 0x585c @ 0x21d85ac
.word 0x5980 @ 0x21d85b0
.thumb
Function_21d85b4: @ 21d85b4 :thumb
	lsl     r1, r0, #1
	ldr     r0, [pc, #0x8] @ 0x21d85c0, (=0x21e013c)
	ldrh    r0, [r0, r1]
	add     r0, #0xb
	bx      lr
@ 0x21d85be


.align 2


.word 0x21e013c @ 0x21d85c0
.thumb
Function_21d85c4: @ 21d85c4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	str     r0, [sp, #0x10]
	mov     r0, #0x1e
	lsl     r0, r0, #4
	mov     r6, r3
	mul     r6, r0
	mov     r0, #0x28
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x48]
	mov     r4, #0x0
	ldr     r7, [sp, #0x4c]
	str     r1, [sp, #0x14]
	str     r2, [sp, #0x18]
	add     r6, #0x58
	str     r4, [sp, #0x24]
	str     r0, [sp, #0x20]
.thumb
branch_21d85e6: @ 21d85e6 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x28]
	mov     r5, r0
.thumb
branch_21d85ec: @ 21d85ec :thumb
	ldr     r0, [sp, #0x14]
	ldr     r1, [sp, #0x18]
	ldr     r0, [r0, #0x40]
	mov     r2, r4
	ldr     r0, [r0, #0x0]
	bl      Function_2079c9c
	mov     r1, #0x5
	mov     r2, #0x0
	str     r0, [sp, #0x2c]
	bl      GetBoxPkmnData
	cmp     r0, #0x0
	beq     branch_21d8630
	mov     r0, r4
	bl      Function_21d85b4
	mov     r1, #0x2
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r6, [sp, #0x8]
	ldr     r3, [sp, #0x10]
	ldr     r2, [pc, #0x3c] @ 0x21d8658, (=0x585c)
	str     r7, [sp, #0xc]
	ldr     r2, [r3, r2]
	ldr     r0, [sp, #0x14]
	add     r2, #0x70
	add     r3, r2, r5
	ldr     r2, [sp, #0x20]
	ldr     r1, [sp, #0x2c]
	add     r2, r2, r3
	ldr     r3, [sp, #0x1c]
	bl      Function_21da428
.thumb
branch_21d8630: @ 21d8630 :thumb
	ldr     r0, [sp, #0x28]
	add     r7, #0x34
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r6, #0x10
	add     r5, #0x18
	str     r0, [sp, #0x28]
	cmp     r0, #0x6
	bcc     branch_21d85ec
	ldr     r0, [sp, #0x1c]
	add     r0, #0x18
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x24]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x24]
	cmp     r0, #0x5
	bcc     branch_21d85e6
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x21d8656


.align 2


.word 0x585c @ 0x21d8658
.thumb
Function_21d865c: @ 21d865c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0x18
	mul     r0, r2
	mov     r5, r1
	str     r0, [sp, #0x8]
.thumb
branch_21d866e: @ 21d866e :thumb
	ldr     r1, [sp, #0x0]
	ldr     r0, [sp, #0x8]
	mov     r7, #0x0
	add     r4, r1, r0
.thumb
branch_21d8676: @ 21d8676 :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_21d869a
	bl      Function_2021d28
	mov     r6, r0
	add     r3, sp, #0xc
	ldmia   r6!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r1, r2
	str     r0, [r3, #0x0]
	ldr     r0, [r4, #0x68]
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x0]
	bl      Function_2021c50
.thumb
branch_21d869a: @ 21d869a :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r5, #0x34
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r7, #0x6
	blt     branch_21d8676
	ldr     r0, [sp, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x4]
	cmp     r0, #0x5
	blt     branch_21d866e
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21d86b2


.align 2, 0


.thumb
Function_21d86b4: @ 21d86b4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0x18
	mul     r0, r2
	mov     r5, r1
	str     r0, [sp, #0x8]
.thumb
branch_21d86c6: @ 21d86c6 :thumb
	ldr     r1, [sp, #0x0]
	ldr     r0, [sp, #0x8]
	mov     r7, #0x0
	add     r4, r1, r0
.thumb
branch_21d86ce: @ 21d86ce :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_21d86f2
	bl      Function_2021d28
	mov     r6, r0
	add     r3, sp, #0xc
	ldmia   r6!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r1, r2
	str     r0, [r3, #0x0]
	ldr     r0, [r4, #0x38]
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x0]
	bl      Function_2021c50
.thumb
branch_21d86f2: @ 21d86f2 :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r5, #0x34
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r7, #0x6
	blt     branch_21d86ce
	ldr     r0, [sp, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x4]
	cmp     r0, #0x5
	blt     branch_21d86c6
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21d870a


.align 2, 0


.thumb
Function_21d870c: @ 21d870c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r7, r0
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x10]
	mov     r0, #0x28
	mov     r5, r1
	str     r0, [sp, #0x0]
.thumb
branch_21d871e: @ 21d871e :thumb
	ldr     r0, [sp, #0x0]
	mov     r6, #0x0
	lsl     r0, r0, #12
	str     r0, [sp, #0xc]
	mov     r4, r6
.thumb
branch_21d8728: @ 21d8728 :thumb
	ldr     r0, [pc, #0x34] @ 0x21d8760, (=0x585c)
	ldr     r0, [r7, r0]
	add     r0, #0x70
	add     r0, r0, r4
	lsl     r0, r0, #12
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_21d8740
	add     r1, sp, #0x8
	bl      Function_2021c50
.thumb
branch_21d8740: @ 21d8740 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x34
	add     r4, #0x18
	cmp     r6, #0x6
	blt     branch_21d8728
	ldr     r0, [sp, #0x0]
	add     r0, #0x18
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x4]
	cmp     r0, #0x5
	blt     branch_21d871e
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d875e


.align 2


.word 0x585c @ 0x21d8760
.thumb
Function_21d8764: @ 21d8764 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	str     r0, [sp, #0x0]
	mov     r0, r2
	mov     r7, r3
	str     r1, [sp, #0x4]
	str     r2, [sp, #0x8]
	cmp     r0, #0x20
	bcc     branch_21d8780
	mov     r1, #0x2
	ldr     r0, [sp, #0x0]
	lsl     r1, r1, #10
	add     r0, r0, r1
	str     r0, [sp, #0x0]
.thumb
branch_21d8780: @ 21d8780 :thumb
	mov     r0, #0x0
	mov     r12, r0
	ldr     r0, [sp, #0x28]
	lsl     r0, r0, #12
	str     r0, [sp, #0xc]
	orr     r0, r7
	mov     lr, r0
.thumb
branch_21d878e: @ 21d878e :thumb
	ldr     r0, [sp, #0x8]
	mov     r2, #0x0
	lsl     r0, r0, #27
	lsr     r1, r0, #26
	ldr     r0, [sp, #0x0]
	mov     r4, r2
	add     r3, r0, r1
	mov     r0, r12
	lsl     r1, r0, #1
	ldr     r0, [sp, #0x4]
	add     r6, r0, r1
.thumb
branch_21d87a4: @ 21d87a4 :thumb
	lsl     r0, r4, #1
	ldrh    r1, [r6, r0]
	mov     r0, #0x3
	lsl     r0, r0, #10
	mov     r5, r1
	and     r5, r0
	ldr     r0, [pc, #0xa8] @ 0x21d885c, (=0x3ff)
	.hword  0x1c52 @ add r2, r2, #0x1
	and     r0, r1
	add     r0, r0, r7
	mov     r1, r5
	orr     r1, r0
	ldr     r0, [sp, #0xc]
	add     r4, #0x15
	orr     r0, r1
	strh    r0, [r3, #0x0]
	add     r3, #0x40
	cmp     r2, #0x14
	bcc     branch_21d87a4
	mov     r1, lr
	lsl     r1, r1, #16
	mov     r0, #0x0
	lsr     r1, r1, #16
.thumb
branch_21d87d2: @ 21d87d2 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r1, [r3, #0x0]
	add     r3, #0x40
	cmp     r0, #0x4
	bcc     branch_21d87d2
	ldr     r0, [sp, #0x8]
	add     r1, r0, #0x1
	mov     r0, #0x3f
	and     r0, r1
	str     r0, [sp, #0x8]
	bne     branch_21d87f2
	mov     r1, #0x2
	ldr     r0, [sp, #0x0]
	lsl     r1, r1, #10
	sub     r0, r0, r1
	str     r0, [sp, #0x0]
.thumb
branch_21d87f2: @ 21d87f2 :thumb
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x20
	bne     branch_21d8802
	mov     r1, #0x2
	ldr     r0, [sp, #0x0]
	lsl     r1, r1, #10
	add     r0, r0, r1
	str     r0, [sp, #0x0]
.thumb
branch_21d8802: @ 21d8802 :thumb
	mov     r0, r12
	.hword  0x1c40 @ add r0, r0, #0x1
	mov     r12, r0
	cmp     r0, #0x15
	bcc     branch_21d878e
	mov     r1, lr
	mov     r3, #0x2
	mov     r0, #0x0
	lsl     r1, r1, #16
	lsl     r3, r3, #10
	lsr     r5, r1, #16
	mov     r7, r0
	mov     r4, #0x3f
	mov     r2, r3
.thumb
branch_21d881e: @ 21d881e :thumb
	ldr     r1, [sp, #0x8]
	lsl     r1, r1, #27
	lsr     r6, r1, #26
	ldr     r1, [sp, #0x0]
	add     r1, r1, r6
	mov     r6, r7
.thumb
branch_21d882a: @ 21d882a :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	strh    r5, [r1, #0x0]
	add     r1, #0x40
	cmp     r6, #0x18
	bcc     branch_21d882a
	ldr     r1, [sp, #0x8]
	.hword  0x1c49 @ add r1, r1, #0x1
	and     r1, r4
	str     r1, [sp, #0x8]
	bne     branch_21d8844
	ldr     r1, [sp, #0x0]
	sub     r1, r1, r3
	str     r1, [sp, #0x0]
.thumb
branch_21d8844: @ 21d8844 :thumb
	ldr     r1, [sp, #0x8]
	cmp     r1, #0x20
	bne     branch_21d8850
	ldr     r1, [sp, #0x0]
	add     r1, r1, r2
	str     r1, [sp, #0x0]
.thumb
branch_21d8850: @ 21d8850 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r0, #0x2
	bcc     branch_21d881e
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d885a


.align 2


.word 0x3ff @ 0x21d885c
.thumb
Function_21d8860: @ 21d8860 :thumb
	push    {r4,lr}
	mov     r2, r0
	add     r0, #0xa0
	strh    r1, [r0, #0x0]
	mov     r0, r2
	mov     r3, #0x0
	add     r0, #0xa4
	strb    r3, [r0, #0x0]
	ldr     r0, [pc, #0x1c] @ 0x21d8890, (=0x5980)
	mov     r4, r2
	ldrb    r3, [r2, #0x2]
	ldr     r0, [r2, r0]
	ldr     r2, [pc, #0x18] @ 0x21d8894, (=0x618)
	add     r4, #0xa8
	mul     r2, r3
	add     r3, r4, r2
	mov     r2, #0x34
	mul     r2, r1
	add     r1, r3, r2
	mov     r2, #0x1
	bl      Function_21da7b8
	pop     {r4,pc}
@ 0x21d888e


.align 2


.word 0x5980 @ 0x21d8890
.word 0x618 @ 0x21d8894
.thumb
Function_21d8898: @ 21d8898 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldrb    r1, [r5, #0x2]
	ldr     r0, [pc, #0x8c] @ 0x21d892c, (=0x618)
	mov     r2, r5
	add     r2, #0xa8
	mul     r0, r1
	add     r4, r2, r0
	mov     r0, r5
	add     r0, #0xa0
	ldrh    r1, [r0, #0x0]
	mov     r0, #0x34
	mov     r6, r1
	mul     r6, r0
	mov     r0, r5
	add     r0, #0xa4
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_21d88c4
	cmp     r0, #0x1
	beq     branch_21d8916
	b       branch_21d8928
@ 0x21d88c4

.thumb
branch_21d88c4: @ 21d88c4 :thumb
	ldr     r0, [pc, #0x68] @ 0x21d8930, (=0x5980)
	add     r1, r4, r6
	ldr     r0, [r5, r0]
	bl      Function_21da7e0
	cmp     r0, #0x0
	beq     branch_21d8928
	ldr     r0, [pc, #0x60] @ 0x21d8934, (=0x598c)
	ldr     r0, [r5, r0]
	bl      Function_21d7964
	mov     r7, r0
	bl      Function_21d3b18
	cmp     r0, #0x0
	beq     branch_21d8928
	mov     r0, r7
	bl      Function_21d3b20
	cmp     r0, #0x0
	ldr     r0, [pc, #0x40] @ 0x21d8930, (=0x5980)
	beq     branch_21d88fe
	ldr     r0, [r5, r0]
	add     r1, r4, r6
	mov     r2, #0x1
	bl      Function_21da3f0
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d88fe

.thumb
branch_21d88fe: @ 21d88fe :thumb
	ldr     r0, [r5, r0]
	add     r1, r4, r6
	mov     r2, #0x2
	bl      Function_21da7b8
	mov     r0, r5
	add     r0, #0xa4
	ldrb    r0, [r0, #0x0]
	add     r5, #0xa4
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x0]
	b       branch_21d8928
@ 0x21d8916

.thumb
branch_21d8916: @ 21d8916 :thumb
	ldr     r0, [pc, #0x18] @ 0x21d8930, (=0x5980)
	add     r1, r4, r6
	ldr     r0, [r5, r0]
	bl      Function_21da7e0
	cmp     r0, #0x0
	beq     branch_21d8928
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d8928

.thumb
branch_21d8928: @ 21d8928 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21d892c

.word 0x618 @ 0x21d892c
.word 0x5980 @ 0x21d8930
.word 0x598c @ 0x21d8934
.thumb
Function_21d8938: @ 21d8938 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x3c] @ 0x21d897c, (=0x5988)
	ldr     r0, [r5, r0]
	bl      Function_21d5ec8
	mov     r6, #0x0
	mov     r7, r5
	str     r0, [sp, #0x0]
	mov     r4, r6
	add     r7, #0xa8
.thumb
branch_21d894e: @ 21d894e :thumb
	ldrb    r2, [r5, #0x2]
	ldr     r0, [pc, #0x2c] @ 0x21d8980, (=0x618)
	mov     r1, r2
	mul     r1, r0
	add     r0, r5, r1
	add     r0, r4, r0
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_21d8970
	ldr     r0, [pc, #0x20] @ 0x21d8984, (=0x5980)
	add     r1, r7, r1
	ldr     r0, [r5, r0]
	ldr     r2, [sp, #0x0]
	add     r1, r1, r4
	bl      Function_21da63c
.thumb
branch_21d8970: @ 21d8970 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x34
	cmp     r6, #0x1e
	blt     branch_21d894e
	pop     {r3-r7,pc}
@ 0x21d897a


.align 2


.word 0x5988 @ 0x21d897c
.word 0x618 @ 0x21d8980
.word 0x5980 @ 0x21d8984
.thumb
Function_21d8988: @ 21d8988 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r0, #0x34
	mul     r4, r0
	mov     r3, r5
	ldrb    r1, [r5, #0x2]
	ldr     r0, [pc, #0x50] @ 0x21d89e8, (=0x618)
	add     r3, #0xa8
	mul     r0, r1
	add     r1, r3, r0
	ldr     r0, [r1, r4]
	cmp     r0, #0x0
	beq     branch_21d89e6
	ldr     r0, [pc, #0x44] @ 0x21d89ec, (=0x5980)
	add     r1, r1, r4
	ldr     r0, [r5, r0]
	bl      Function_21da690
	ldr     r0, [pc, #0x40] @ 0x21d89f0, (=0x5988)
	ldr     r0, [r5, r0]
	bl      Function_21d5ec8
	mov     r2, r0
	ldr     r0, [pc, #0x30] @ 0x21d89ec, (=0x5980)
	mov     r1, r5
	ldrb    r6, [r5, #0x2]
	ldr     r3, [pc, #0x28] @ 0x21d89e8, (=0x618)
	add     r1, #0xa8
	mul     r3, r6
	add     r1, r1, r3
	ldr     r0, [r5, r0]
	add     r1, r1, r4
	bl      Function_21da63c
	ldr     r0, [pc, #0x1c] @ 0x21d89ec, (=0x5980)
	mov     r3, r5
	ldrb    r2, [r5, #0x2]
	ldr     r1, [pc, #0x10] @ 0x21d89e8, (=0x618)
	add     r3, #0xa8
	mul     r1, r2
	add     r1, r3, r1
	ldr     r0, [r5, r0]
	add     r1, r1, r4
	mov     r2, #0x1
	bl      Function_21da694
.thumb
branch_21d89e6: @ 21d89e6 :thumb
	pop     {r4-r6,pc}
@ 0x21d89e8

.word 0x618 @ 0x21d89e8
.word 0x5980 @ 0x21d89ec
.word 0x5988 @ 0x21d89f0
.thumb
Function_21d89f4: @ 21d89f4 :thumb
	push    {r4,lr}
	ldrb    r3, [r0, #0x2]
	ldr     r2, [pc, #0x20] @ 0x21d8a1c, (=0x618)
	mov     r4, r0
	add     r4, #0xa8
	mul     r2, r3
	add     r3, r4, r2
	mov     r2, #0x34
	mul     r2, r1
	ldr     r1, [r3, r2]
	cmp     r1, #0x0
	beq     branch_21d8a18
	ldr     r1, [pc, #0x10] @ 0x21d8a20, (=0x5980)
	ldr     r0, [r0, r1]
	add     r1, r3, r2
	mov     r2, #0x1
	bl      Function_21da694
.thumb
branch_21d8a18: @ 21d8a18 :thumb
	pop     {r4,pc}
@ 0x21d8a1a


.align 2


.word 0x618 @ 0x21d8a1c
.word 0x5980 @ 0x21d8a20
.thumb
Function_21d8a24: @ 21d8a24 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x34] @ 0x21d8a60, (=0x5988)
	ldr     r0, [r5, r0]
	bl      Function_21d5e24
	mov     r4, r0
	ldr     r0, [pc, #0x2c] @ 0x21d8a60, (=0x5988)
	ldr     r0, [r5, r0]
	bl      Function_21d5ea0
	mov     r2, r0
	mov     r3, r5
	ldrb    r1, [r5, #0x2]
	ldr     r0, [pc, #0x20] @ 0x21d8a64, (=0x618)
	add     r3, #0xa8
	mul     r0, r1
	add     r3, r3, r0
	mov     r0, #0x34
	mov     r1, r4
	mul     r1, r0
	ldr     r0, [r3, r1]
	cmp     r0, #0x0
	beq     branch_21d8a5e
	ldr     r0, [pc, #0x10] @ 0x21d8a68, (=0x5980)
	add     r1, r3, r1
	ldr     r0, [r5, r0]
	bl      Function_21da68c
.thumb
branch_21d8a5e: @ 21d8a5e :thumb
	pop     {r3-r5,pc}
@ 0x21d8a60

.word 0x5988 @ 0x21d8a60
.word 0x618 @ 0x21d8a64
.word 0x5980 @ 0x21d8a68
.thumb
Function_21d8a6c: @ 21d8a6c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r4, r0
	add     r0, sp, #0xc
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x90] @ 0x21d8b08, (=0x5988)
	add     r1, sp, #0x18
	ldr     r0, [r4, r0]
	add     r2, sp, #0x14
	add     r3, sp, #0x10
	bl      Function_21d5ee8
	mov     r5, #0x0
	str     r5, [sp, #0x4]
.thumb
branch_21d8a88: @ 21d8a88 :thumb
	mov     r0, r4
	str     r0, [sp, #0x8]
	add     r0, #0xa8
	mov     r7, #0x0
	str     r0, [sp, #0x8]
.thumb
branch_21d8a92: @ 21d8a92 :thumb
	ldrb    r2, [r4, #0x2]
	ldr     r0, [pc, #0x74] @ 0x21d8b0c, (=0x618)
	mov     r1, r2
	mul     r1, r0
	add     r0, r4, r1
	add     r0, r5, r0
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_21d8af0
	ldr     r6, [sp, #0x18]
	ldr     r2, [sp, #0x14]
	sub     r3, r7, r6
	sub     r2, r2, r6
	ldr     r0, [sp, #0x10]
	cmp     r3, r2
	bhi     branch_21d8ab8
	mov     r6, #0x1
	b       branch_21d8aba
@ 0x21d8ab8

.thumb
branch_21d8ab8: @ 21d8ab8 :thumb
	mov     r6, #0x0
.thumb
branch_21d8aba: @ 21d8aba :thumb
	ldr     r2, [sp, #0x4]
	sub     r3, r2, r0
	ldr     r2, [sp, #0xc]
	sub     r0, r2, r0
	cmp     r3, r0
	bhi     branch_21d8aca
	mov     r0, #0x1
	b       branch_21d8acc
@ 0x21d8aca

.thumb
branch_21d8aca: @ 21d8aca :thumb
	mov     r0, #0x0
.thumb
branch_21d8acc: @ 21d8acc :thumb
	tst     r0, r6
	ldr     r0, [pc, #0x40] @ 0x21d8b10, (=0x5980)
	beq     branch_21d8ae2
	ldr     r2, [sp, #0x8]
	ldr     r0, [r4, r0]
	add     r1, r2, r1
	add     r1, r1, r5
	mov     r2, #0x1
	bl      Function_21da7f4
	b       branch_21d8af0
@ 0x21d8ae2

.thumb
branch_21d8ae2: @ 21d8ae2 :thumb
	ldr     r2, [sp, #0x8]
	ldr     r0, [r4, r0]
	add     r1, r2, r1
	add     r1, r1, r5
	mov     r2, #0x0
	bl      Function_21da7f4
.thumb
branch_21d8af0: @ 21d8af0 :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r5, #0x34
	cmp     r7, #0x6
	bcc     branch_21d8a92
	ldr     r0, [sp, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x4]
	cmp     r0, #0x5
	bcc     branch_21d8a88
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x21d8b06


.align 2


.word 0x5988 @ 0x21d8b08
.word 0x618 @ 0x21d8b0c
.word 0x5980 @ 0x21d8b10
.thumb
Function_21d8b14: @ 21d8b14 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, #0x0
	mov     r7, r5
	mov     r4, r6
	add     r7, #0xa8
.thumb
branch_21d8b20: @ 21d8b20 :thumb
	ldrb    r2, [r5, #0x2]
	ldr     r0, [pc, #0x28] @ 0x21d8b4c, (=0x618)
	mov     r1, r2
	mul     r1, r0
	add     r0, r5, r1
	add     r0, r4, r0
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_21d8b42
	ldr     r0, [pc, #0x18] @ 0x21d8b50, (=0x5980)
	add     r1, r7, r1
	ldr     r0, [r5, r0]
	add     r1, r1, r4
	mov     r2, #0x0
	bl      Function_21da7f4
.thumb
branch_21d8b42: @ 21d8b42 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x34
	cmp     r6, #0x1e
	blt     branch_21d8b20
	pop     {r3-r7,pc}
@ 0x21d8b4c

.word 0x618 @ 0x21d8b4c
.word 0x5980 @ 0x21d8b50
.thumb
Function_21d8b54: @ 21d8b54 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	ldr     r0, [pc, #0xa4] @ 0x21d8c00, (=0x794)
	mov     r6, r1
	str     r6, [r5, r0]
	mov     r4, r2
	.hword  0x1f00 @ sub r0, r0, #0x4
	str     r4, [r5, r0]
	mov     r0, r6
	str     r3, [r5, #0x0]
	bl      Function_21d77e0
	ldr     r1, [pc, #0x94] @ 0x21d8c04, (=0x758)
	str     r0, [r5, r1]
	mov     r0, r6
	bl      Function_21d77e8
	ldr     r1, [pc, #0x8c] @ 0x21d8c08, (=0x75c)
	str     r0, [r5, r1]
	mov     r0, r6
	bl      Function_21d77d8
	str     r0, [r5, #0x48]
	mov     r0, r4
	bl      Function_21d5e10
	ldr     r1, [pc, #0x80] @ 0x21d8c0c, (=0x785)
	strb    r0, [r5, r1]
	mov     r0, r4
	bl      Function_21d5e14
	ldr     r1, [pc, #0x78] @ 0x21d8c10, (=0x789)
	strb    r0, [r5, r1]
	mov     r0, r4
	bl      Function_21d5e1c
	ldr     r1, [pc, #0x74] @ 0x21d8c14, (=0x78a)
	strb    r0, [r5, r1]
	mov     r0, r4
	bl      Function_21d5e2c
	ldr     r1, [pc, #0x6c] @ 0x21d8c18, (=0x78b)
	mov     r3, r5
	strb    r0, [r5, r1]
	mov     r2, #0x0
	str     r2, [r5, #0x4]
	str     r2, [r5, #0x8]
	str     r2, [r5, #0xc]
	mov     r0, r1
	str     r2, [r5, #0x10]
	sub     r0, #0x37
	str     r2, [r5, r0]
	add     r0, r1, #0x3
	mov     r2, #0x1
	strb    r2, [r5, r0]
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x18]
	mov     r1, #0xd
	add     r3, #0x1c
	bl      Function_2007204
	str     r0, [r5, #0x14]
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	mov     r3, r5
	ldr     r0, [sp, #0x18]
	mov     r1, #0xe
	mov     r2, #0x1
	add     r3, #0x20
	bl      Function_2007220
	str     r0, [r5, #0x18]
	ldr     r0, [r5, #0x14]
	cmp     r0, #0x0
	beq     branch_21d8bf4
	ldr     r0, [r5, #0x18]
	cmp     r0, #0x0
	bne     branch_21d8bfa
.thumb
branch_21d8bf4: @ 21d8bf4 :thumb
	add     sp, #0x4
	mov     r0, #0x0
	pop     {r3-r6,pc}
@ 0x21d8bfa

.thumb
branch_21d8bfa: @ 21d8bfa :thumb
	mov     r0, #0x1
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x21d8c00

.word 0x794 @ 0x21d8c00
.word 0x758 @ 0x21d8c04
.word 0x75c @ 0x21d8c08
.word 0x785 @ 0x21d8c0c
.word 0x789 @ 0x21d8c10
.word 0x78a @ 0x21d8c14
.word 0x78b @ 0x21d8c18
.thumb
Function_21d8c1c: @ 21d8c1c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x38
	mov     r4, r0
	add     r0, #0x24
	mov     r5, r1
	blx     Function_20a818c
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r2, #0x1
	str     r2, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, #0xa
	str     r0, [sp, #0xc]
	mov     r0, r4
	add     r0, #0x24
	str     r0, [sp, #0x10]
	mov     r0, r5
	mov     r1, #0xc
	bl      Function_200718c
	ldr     r0, [pc, #0x1a4] @ 0x21d8dec, (=0x785)
	ldrb    r0, [r4, r0]
	cmp     r0, #0x1
	bne     branch_21d8c52
	mov     r5, #0x1
	b       branch_21d8c54
@ 0x21d8c52

.thumb
branch_21d8c52: @ 21d8c52 :thumb
	mov     r5, #0x2
.thumb
branch_21d8c54: @ 21d8c54 :thumb
	ldr     r0, [pc, #0x198] @ 0x21d8df0, (=0x794)
	ldr     r0, [r4, r0]
	bl      Function_21d77d0
	mov     r2, r0
	ldr     r0, [r4, #0x20]
	mov     r1, r4
	str     r0, [sp, #0x0]
	str     r5, [sp, #0x4]
	ldr     r3, [r4, #0x1c]
	add     r0, sp, #0x14
	add     r1, #0x24
	bl      Function_21d783c
	ldr     r2, [pc, #0x180] @ 0x21d8df4, (=0x764)
	mov     r3, r4
	add     r1, r2, #0x4
	add     r0, r4, r2
	add     r2, #0x21
	add     r1, r4, r1
	add     r2, r4, r2
	bl      Function_21d9d48
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r3, [pc, #0x168] @ 0x21d8df4, (=0x764)
	ldr     r0, [r4, #0x0]
	ldr     r2, [r4, r3]
	.hword  0x1d1b @ add r3, r3, #0x4
	ldr     r3, [r4, r3]
	add     r1, sp, #0x14
	bl      Function_21d785c
	str     r0, [r4, #0x4]
	mov     r0, #0x2a
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r3, [pc, #0x150] @ 0x21d8df4, (=0x764)
	ldr     r0, [r4, #0x0]
	ldr     r2, [r4, r3]
	.hword  0x1d1b @ add r3, r3, #0x4
	ldr     r3, [r4, r3]
	add     r1, sp, #0x14
	add     r3, #0x18
	bl      Function_21d785c
	str     r0, [r4, #0x8]
	mov     r0, #0x79
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_21d5e10
	mov     r0, #0x79
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_21d5e08
	mov     r6, r0
	cmp     r6, #0x4
	beq     branch_21d8cd6
	mov     r2, #0x6c
	mov     r5, #0xec
	b       branch_21d8cda
@ 0x21d8cd6

.thumb
branch_21d8cd6: @ 21d8cd6 :thumb
	mov     r2, #0x40
	mov     r5, #0xc0
.thumb
branch_21d8cda: @ 21d8cda :thumb
	mov     r1, #0x2
	add     r0, sp, #0x34
	strb    r1, [r0, #0x0]
	mov     r0, #0x2b
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	add     r1, sp, #0x14
	mov     r3, #0x14
	bl      Function_21d785c
	str     r0, [r4, #0xc]
	mov     r0, #0x2b
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	add     r1, sp, #0x14
	mov     r2, r5
	mov     r3, #0x14
	bl      Function_21d785c
	str     r0, [r4, #0x10]
	ldr     r0, [r4, #0x8]
	mov     r1, #0x5
	bl      Function_2021d6c
	ldr     r0, [r4, #0x8]
	mov     r1, #0x2
	bl      Function_2021e80
	mov     r0, #0x79
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_21d5e10
	mov     r5, r0
	cmp     r5, #0x2
	ldr     r0, [r4, #0xc]
	beq     branch_21d8d3c
	mov     r1, #0x6
	bl      Function_2021d6c
	ldr     r0, [r4, #0x10]
	mov     r1, #0x7
	bl      Function_2021d6c
	b       branch_21d8d4a
@ 0x21d8d3c

.thumb
branch_21d8d3c: @ 21d8d3c :thumb
	mov     r1, #0x8
	bl      Function_2021d6c
	ldr     r0, [r4, #0x10]
	mov     r1, #0x9
	bl      Function_2021d6c
.thumb
branch_21d8d4a: @ 21d8d4a :thumb
	cmp     r5, #0x0
	beq     branch_21d8d56
	ldr     r0, [r4, #0x8]
	mov     r1, #0x0
	bl      Function_2021cac
.thumb
branch_21d8d56: @ 21d8d56 :thumb
	cmp     r6, #0x3
	beq     branch_21d8d9a
	mov     r0, #0x79
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_21d5e38
	cmp     r0, #0x1
	ldr     r0, [r4, #0x4]
	bne     branch_21d8d80
	mov     r1, #0x0
	bl      Function_2021d6c
	mov     r1, r4
	ldr     r0, [r4, #0x48]
	add     r1, #0x4c
	mov     r2, #0x1e
	bl      Function_21da3cc
	mov     r1, #0x0
	b       branch_21d8d8e
@ 0x21d8d80

.thumb
branch_21d8d80: @ 21d8d80 :thumb
	mov     r1, #0x2
	bl      Function_2021d6c
	mov     r0, r4
	bl      Function_21d8e00
	mov     r1, #0x1
.thumb
branch_21d8d8e: @ 21d8d8e :thumb
	ldr     r0, [pc, #0x68] @ 0x21d8df8, (=0x78c)
	strb    r1, [r4, r0]
	ldr     r0, [pc, #0x68] @ 0x21d8dfc, (=0x78d)
	mov     r1, #0x0
	strb    r1, [r4, r0]
	b       branch_21d8dd2
@ 0x21d8d9a

.thumb
branch_21d8d9a: @ 21d8d9a :thumb
	mov     r0, #0x79
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_21d5f7c
	cmp     r0, #0x0
	ldr     r0, [r4, #0x4]
	bne     branch_21d8db4
	mov     r1, #0x0
	bl      Function_2021d6c
	mov     r1, #0x0
	b       branch_21d8dbc
@ 0x21d8db4

.thumb
branch_21d8db4: @ 21d8db4 :thumb
	mov     r1, #0x2
	bl      Function_2021d6c
	mov     r1, #0x1
.thumb
branch_21d8dbc: @ 21d8dbc :thumb
	ldr     r0, [pc, #0x3c] @ 0x21d8dfc, (=0x78d)
	mov     r2, #0x1e
	strb    r1, [r4, r0]
	mov     r1, r4
	ldr     r0, [r4, #0x48]
	add     r1, #0x4c
	bl      Function_21da3cc
	ldr     r0, [pc, #0x28] @ 0x21d8df8, (=0x78c)
	mov     r1, #0x0
	strb    r1, [r4, r0]
.thumb
branch_21d8dd2: @ 21d8dd2 :thumb
	ldr     r0, [pc, #0x1c] @ 0x21d8df0, (=0x794)
	ldr     r0, [r4, r0]
	bl      Function_21d7800
	mov     r1, #0x76
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	mov     r0, r4
	bl      Function_21d9aec
	add     sp, #0x38
	pop     {r4-r6,pc}
@ 0x21d8dea


.align 2


.word 0x785 @ 0x21d8dec
.word 0x794 @ 0x21d8df0
.word 0x764 @ 0x21d8df4
.word 0x78c @ 0x21d8df8
.word 0x78d @ 0x21d8dfc
.thumb
Function_21d8e00: @ 21d8e00 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x1c
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	bl      Function_2021d28
	mov     r3, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x10
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	mov     r1, r5
	str     r0, [r2, #0x0]
	ldr     r0, [r5, #0x48]
	add     r1, #0x4c
	mov     r2, #0x1
	bl      Function_21da3cc
	mov     r0, #0x79
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	bl      Function_21d5e9c
	mov     r4, r0
	ldr     r0, [r5, #0x4]
	bl      Function_2021e88
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x34] @ 0x21d8e74, (=0x4d8)
	mov     r1, r4
	str     r0, [sp, #0x8]
	mov     r0, r5
	add     r0, #0x4c
	str     r0, [sp, #0xc]
	ldr     r3, [sp, #0x14]
	ldr     r2, [sp, #0x10]
	asr     r3, r3, #12
	ldr     r0, [r5, #0x48]
	asr     r2, r2, #12
	.hword  0x1d1b @ add r3, r3, #0x4
	bl      Function_21da428
	ldr     r1, [pc, #0x1c] @ 0x21d8e78, (=0x664)
	mov     r0, #0x0
	str     r0, [r5, r1]
	add     r0, r1, #0x4
	ldr     r2, [pc, #0x18] @ 0x21d8e7c, (=0xffffc000)
	add     r1, #0xf0
	str     r2, [r5, r0]
	mov     r2, #0x1
	ldr     r0, [pc, #0x14] @ 0x21d8e80, (=0x78c)
	str     r2, [r5, r1]
	strb    r2, [r5, r0]
	add     sp, #0x1c
	pop     {r4,r5,pc}
@ 0x21d8e72


.align 2


.word 0x4d8 @ 0x21d8e74
.word 0x664 @ 0x21d8e78
.word 0xffffc000 @ 0x21d8e7c
.word 0x78c @ 0x21d8e80
.thumb
Function_21d8e84: @ 21d8e84 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x0
	beq     branch_21d8e96
	bl      free
	mov     r0, #0x0
	str     r0, [r4, #0x14]
.thumb
branch_21d8e96: @ 21d8e96 :thumb
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x0
	beq     branch_21d8ea4
	bl      free
	mov     r0, #0x0
	str     r0, [r4, #0x18]
.thumb
branch_21d8ea4: @ 21d8ea4 :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_21d8eb2
	bl      Function_2021bd4
	mov     r0, #0x0
	str     r0, [r4, #0x4]
.thumb
branch_21d8eb2: @ 21d8eb2 :thumb
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x0
	beq     branch_21d8ec0
	bl      Function_2021bd4
	mov     r0, #0x0
	str     r0, [r4, #0x8]
.thumb
branch_21d8ec0: @ 21d8ec0 :thumb
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x0
	beq     branch_21d8ece
	bl      Function_2021bd4
	mov     r0, #0x0
	str     r0, [r4, #0xc]
.thumb
branch_21d8ece: @ 21d8ece :thumb
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x0
	beq     branch_21d8edc
	bl      Function_2021bd4
	mov     r0, #0x0
	str     r0, [r4, #0x10]
.thumb
branch_21d8edc: @ 21d8edc :thumb
	pop     {r4,pc}
@ 0x21d8ede


.align 2, 0


.thumb
Function_21d8ee0: @ 21d8ee0 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r0, #0x0
	mov     r5, r1
	str     r0, [r2, #0x0]
	str     r0, [r5, #0x0]
	ldr     r0, [pc, #0x68] @ 0x21d8f58, (=0x785)
	ldrb    r1, [r4, r0]
	cmp     r1, #0x4
	bhi     branch_21d8f54
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d8f00

Jumppoints_21d8f00:
.hword branch_21d8f0a - Jumppoints_21d8f00 - 2
.hword branch_21d8f54 - Jumppoints_21d8f00 - 2
.hword branch_21d8f34 - Jumppoints_21d8f00 - 2
.hword branch_21d8f48 - Jumppoints_21d8f00 - 2
.hword branch_21d8f48 - Jumppoints_21d8f00 - 2
.thumb
branch_21d8f0a: @ 21d8f0a :thumb
	add     r1, r0, #0x1
	ldrb    r1, [r4, r1]
	cmp     r1, #0x0
	bne     branch_21d8f54
	add     r0, #0xb
	ldr     r0, [r4, r0]
	bl      Function_21d5e14
	ldr     r1, [pc, #0x40] @ 0x21d8f5c, (=0x789)
	ldsb    r1, [r4, r1]
	cmp     r1, #0x0
	bne     branch_21d8f26
	cmp     r0, #0x5
	beq     branch_21d8f2e
.thumb
branch_21d8f26: @ 21d8f26 :thumb
	cmp     r1, #0x5
	bne     branch_21d8f54
	cmp     r0, #0x0
	bne     branch_21d8f54
.thumb
branch_21d8f2e: @ 21d8f2e :thumb
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d8f34

.thumb
branch_21d8f34: @ 21d8f34 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	ldrb    r0, [r4, r0]
	add     r0, #0xfd
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	cmp     r0, #0x1
	bhi     branch_21d8f54
	mov     r0, #0x1
	str     r0, [r2, #0x0]
	pop     {r3-r5,pc}
@ 0x21d8f48

.thumb
branch_21d8f48: @ 21d8f48 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	ldrb    r0, [r4, r0]
	cmp     r0, #0x2
	bne     branch_21d8f54
	mov     r0, #0x1
	str     r0, [r2, #0x0]
.thumb
branch_21d8f54: @ 21d8f54 :thumb
	pop     {r3-r5,pc}
@ 0x21d8f56


.align 2


.word 0x785 @ 0x21d8f58
.word 0x789 @ 0x21d8f5c
.thumb
Function_21d8f60: @ 21d8f60 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	ldr     r2, [pc, #0xf4] @ 0x21d905c, (=0x76c)
	mov     r5, r0
	add     r1, r2, #0x4
	add     r0, r5, r2
	add     r2, #0x1a
	add     r1, r5, r1
	add     r2, r5, r2
	mov     r3, r5
	bl      Function_21d9d48
	mov     r0, r5
	add     r1, sp, #0x4
	add     r2, sp, #0x0
	bl      Function_21d8ee0
	ldr     r0, [pc, #0xdc] @ 0x21d9060, (=0x786)
	ldrb    r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_21d8f92
	ldr     r0, [r5, #0x8]
	mov     r1, #0x0
	bl      Function_2021cac
.thumb
branch_21d8f92: @ 21d8f92 :thumb
	ldr     r6, [pc, #0xd0] @ 0x21d9064, (=0x764)
	ldr     r0, [r5, r6]
	mov     r2, r6
	lsl     r1, r0, #12
	mov     r0, r6
	add     r0, #0x10
	str     r1, [r5, r0]
	add     r0, r6, #0x4
	ldr     r0, [r5, r0]
	add     r2, #0xc
	lsl     r1, r0, #12
	mov     r0, r6
	add     r0, #0x14
	str     r1, [r5, r0]
	mov     r0, r6
	add     r0, #0x8
	ldr     r1, [r5, r0]
	ldr     r3, [r5, r2]
	ldr     r7, [sp, #0x4]
	lsl     r0, r1, #12
	lsl     r2, r3, #12
	cmp     r7, #0x0
	bne     branch_21d8fc8
	add     r6, #0x10
	ldr     r1, [r5, r6]
	sub     r0, r0, r1
	b       branch_21d8ff0
@ 0x21d8fc8

.thumb
branch_21d8fc8: @ 21d8fc8 :thumb
	mov     r4, r6
	add     r4, #0x10
	ldr     r4, [r5, r4]
	cmp     r0, r4
	ble     branch_21d8fe2
	mov     r0, #0x11
	lsl     r0, r0, #4
	sub     r1, r0, r1
	ldr     r0, [r5, r6]
	sub     r0, #0x46
	add     r0, r1, r0
	neg     r0, r0
	b       branch_21d8fee
@ 0x21d8fe2

.thumb
branch_21d8fe2: @ 21d8fe2 :thumb
	mov     r0, #0x11
	ldr     r4, [r5, r6]
	lsl     r0, r0, #4
	sub     r0, r0, r4
	sub     r1, #0x46
	add     r0, r0, r1
.thumb
branch_21d8fee: @ 21d8fee :thumb
	lsl     r0, r0, #12
.thumb
branch_21d8ff0: @ 21d8ff0 :thumb
	ldr     r1, [sp, #0x0]
	cmp     r1, #0x0
	bne     branch_21d8ffe
	ldr     r3, [pc, #0x70] @ 0x21d9068, (=0x778)
	ldr     r3, [r5, r3]
	sub     r4, r2, r3
	b       branch_21d9024
@ 0x21d8ffe

.thumb
branch_21d8ffe: @ 21d8ffe :thumb
	ldr     r4, [pc, #0x68] @ 0x21d9068, (=0x778)
	ldr     r6, [r5, r4]
	cmp     r2, r6
	ble     branch_21d9016
	mov     r2, #0xd0
	sub     r4, #0x10
	sub     r3, r2, r3
	ldr     r2, [r5, r4]
	add     r2, #0x18
	add     r2, r3, r2
	neg     r4, r2
	b       branch_21d9022
@ 0x21d9016

.thumb
branch_21d9016: @ 21d9016 :thumb
	sub     r4, #0x10
	ldr     r4, [r5, r4]
	mov     r2, #0xd0
	sub     r2, r2, r4
	add     r3, #0x18
	add     r4, r2, r3
.thumb
branch_21d9022: @ 21d9022 :thumb
	lsl     r4, r4, #12
.thumb
branch_21d9024: @ 21d9024 :thumb
	cmp     r7, #0x0
	bne     branch_21d902c
	cmp     r1, #0x0
	beq     branch_21d9030
.thumb
branch_21d902c: @ 21d902c :thumb
	mov     r6, #0xc
	b       branch_21d9032
@ 0x21d9030

.thumb
branch_21d9030: @ 21d9030 :thumb
	mov     r6, #0x6
.thumb
branch_21d9032: @ 21d9032 :thumb
	mov     r1, r6
	blx     _s32_div_f
	ldr     r1, [pc, #0x30] @ 0x21d906c, (=0x77c)
	str     r0, [r5, r1]
	mov     r0, r4
	mov     r1, r6
	blx     _s32_div_f
	mov     r1, #0x1e
	lsl     r1, r1, #6
	str     r0, [r5, r1]
	add     r0, r1, #0x7
	strb    r6, [r5, r0]
	ldr     r0, [pc, #0x20] @ 0x21d9070, (=0x21d9089)
	mov     r1, r5
	mov     r2, #0x0
	bl      Function_21d77c8
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d905c

.word 0x76c @ 0x21d905c
.word 0x786 @ 0x21d9060
.word 0x764 @ 0x21d9064
.word 0x778 @ 0x21d9068
.word 0x77c @ 0x21d906c
.word 0x21d9089 @ 0x21d9070
.thumb
Function_21d9074: @ 21d9074 :thumb
	ldr     r1, [pc, #0xc] @ 0x21d9084, (=0x787)
	ldrb    r0, [r0, r1]
	cmp     r0, #0x0
	bne     branch_21d9080
	mov     r0, #0x1
	bx      lr
@ 0x21d9080

.thumb
branch_21d9080: @ 21d9080 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21d9084

.word 0x787 @ 0x21d9084
.thumb
Function_21d9088: @ 21d9088 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r4, r1
	mov     r1, #0x0
	ldr     r0, [pc, #0x170] @ 0x21d9204, (=0x787)
	str     r1, [sp, #0x8]
	ldrb    r2, [r4, r0]
	cmp     r2, #0x0
	beq     branch_21d9162
	mov     r1, r0
	sub     r1, #0x13
	ldr     r2, [r4, r1]
	mov     r1, r0
	sub     r1, #0xb
	ldr     r1, [r4, r1]
	add     r2, r2, r1
	mov     r1, r0
	sub     r1, #0x13
	str     r2, [r4, r1]
	mov     r1, r0
	sub     r1, #0xb
	ldr     r1, [r4, r1]
	cmp     r1, #0x0
	ble     branch_21d90d0
	mov     r1, r0
	sub     r1, #0x13
	ldr     r2, [r4, r1]
	mov     r1, #0x11
	lsl     r1, r1, #16
	cmp     r2, r1
	ble     branch_21d90d0
	ldr     r1, [pc, #0x13c] @ 0x21d9208, (=0x156000)
	sub     r0, #0x13
	sub     r1, r1, r2
	str     r1, [r4, r0]
.thumb
branch_21d90d0: @ 21d90d0 :thumb
	ldr     r1, [pc, #0x138] @ 0x21d920c, (=0x77c)
	ldr     r0, [r4, r1]
	cmp     r0, #0x0
	bge     branch_21d90f2
	mov     r0, r1
	sub     r0, #0x8
	ldr     r2, [r4, r0]
	mov     r0, #0x46
	lsl     r0, r0, #12
	cmp     r2, r0
	bge     branch_21d90f2
	sub     r2, r0, r2
	mov     r0, #0x11
	lsl     r0, r0, #16
	sub     r0, r0, r2
	sub     r1, #0x8
	str     r0, [r4, r1]
.thumb
branch_21d90f2: @ 21d90f2 :thumb
	ldr     r1, [pc, #0x11c] @ 0x21d9210, (=0x778)
	mov     r0, r1
	add     r0, #0x8
	ldr     r2, [r4, r1]
	ldr     r0, [r4, r0]
	add     r0, r2, r0
	str     r0, [r4, r1]
	mov     r0, r1
	add     r0, #0x8
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	ble     branch_21d911c
	mov     r0, #0xd
	ldr     r2, [r4, r1]
	lsl     r0, r0, #16
	cmp     r2, r0
	ble     branch_21d911c
	mov     r0, #0x2e
	lsl     r0, r0, #14
	sub     r0, r0, r2
	str     r0, [r4, r1]
.thumb
branch_21d911c: @ 21d911c :thumb
	mov     r1, #0x1e
	lsl     r1, r1, #6
	ldr     r0, [r4, r1]
	cmp     r0, #0x0
	bge     branch_21d913e
	mov     r0, r1
	sub     r0, #0x8
	ldr     r2, [r4, r0]
	ldr     r0, [pc, #0xe4] @ 0x21d9214, (=0xfffe8000)
	cmp     r2, r0
	bge     branch_21d913e
	sub     r2, r0, r2
	mov     r0, #0xd
	lsl     r0, r0, #16
	sub     r0, r0, r2
	sub     r1, #0x8
	str     r0, [r4, r1]
.thumb
branch_21d913e: @ 21d913e :thumb
	ldr     r0, [pc, #0xd8] @ 0x21d9218, (=0x774)
	ldr     r1, [r4, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [sp, #0x0]
	ldr     r0, [r4, r0]
	add     r1, sp, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r4
	bl      Function_21d9e04
	ldr     r0, [pc, #0xac] @ 0x21d9204, (=0x787)
	add     sp, #0xc
	ldrb    r1, [r4, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strb    r1, [r4, r0]
	pop     {r4,r5,pc}
@ 0x21d9162

.thumb
branch_21d9162: @ 21d9162 :thumb
	mov     r2, r0
	sub     r2, #0x1b
	ldr     r2, [r4, r2]
	sub     r0, #0x17
	lsl     r2, r2, #12
	str     r2, [sp, #0x0]
	ldr     r0, [r4, r0]
	lsl     r0, r0, #12
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r0, r4
	add     r1, sp, #0x0
	bl      Function_21d9e04
	ldr     r0, [pc, #0x9c] @ 0x21d921c, (=0x76c)
	mov     r1, r0
	ldr     r2, [r4, r0]
	sub     r1, #0x8
	str     r2, [r4, r1]
	add     r1, r0, #0x4
	ldr     r2, [r4, r1]
	.hword  0x1f01 @ sub r1, r0, #0x4
	str     r2, [r4, r1]
	mov     r1, r0
	add     r1, #0x1a
	ldrb    r2, [r4, r1]
	mov     r1, r0
	add     r1, #0x19
	strb    r2, [r4, r1]
	add     r0, #0x24
	ldr     r0, [r4, r0]
	bl      Function_21d5e14
	ldr     r1, [pc, #0x78] @ 0x21d9220, (=0x789)
	strb    r0, [r4, r1]
	add     r0, r1, #0x7
	ldr     r0, [r4, r0]
	bl      Function_21d5e1c
	ldr     r1, [pc, #0x70] @ 0x21d9224, (=0x78a)
	strb    r0, [r4, r1]
	add     r0, r1, #0x6
	ldr     r0, [r4, r0]
	bl      Function_21d5e2c
	ldr     r1, [pc, #0x68] @ 0x21d9228, (=0x78b)
	strb    r0, [r4, r1]
	.hword  0x1f48 @ sub r0, r1, #0x5
	ldrb    r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_21d91d0
	ldr     r0, [r4, #0x8]
	mov     r1, #0x1
	bl      Function_2021cac
.thumb
branch_21d91d0: @ 21d91d0 :thumb
	ldr     r0, [pc, #0x58] @ 0x21d922c, (=0x786)
	ldrb    r0, [r4, r0]
	cmp     r0, #0x2
	ldr     r0, [r4, #0xc]
	beq     branch_21d91ea
	mov     r1, #0x6
	bl      Function_2021d6c
	ldr     r0, [r4, #0x10]
	mov     r1, #0x7
	bl      Function_2021d6c
	b       branch_21d91f8
@ 0x21d91ea

.thumb
branch_21d91ea: @ 21d91ea :thumb
	mov     r1, #0x8
	bl      Function_2021d6c
	ldr     r0, [r4, #0x10]
	mov     r1, #0x9
	bl      Function_2021d6c
.thumb
branch_21d91f8: @ 21d91f8 :thumb
	mov     r0, r5
	bl      Call_RemoveTaskFromTaskList
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d9202


.align 2


.word 0x787 @ 0x21d9204
.word 0x156000 @ 0x21d9208
.word 0x77c @ 0x21d920c
.word 0x778 @ 0x21d9210
.word 0xfffe8000 @ 0x21d9214
.word 0x774 @ 0x21d9218
.word 0x76c @ 0x21d921c
.word 0x789 @ 0x21d9220
.word 0x78a @ 0x21d9224
.word 0x78b @ 0x21d9228
.word 0x786 @ 0x21d922c
.thumb
Function_21d9230: @ 21d9230 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      Function_2021d6c
	mov     r1, #0x2
	mov     r0, #0x1e
	lsl     r1, r1, #12
	lsl     r0, r0, #6
	str     r1, [r4, r0]
	mov     r1, r0
	sub     r1, #0x18
	ldr     r2, [r4, r1]
	mov     r1, r0
	add     r2, #0xc
	sub     r1, #0x10
	str     r2, [r4, r1]
	add     r1, r0, #0x7
	mov     r2, #0x6
	strb    r2, [r4, r1]
	mov     r1, #0x0
	.hword  0x1d00 @ add r0, r0, #0x4
	strb    r1, [r4, r0]
	mov     r0, r4
	bl      Function_21d9eb0
	ldr     r0, [pc, #0xc] @ 0x21d9274, (=0x21d928d)
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_21d77c8
	pop     {r4,pc}
@ 0x21d9272


.align 2


.word 0x21d928d @ 0x21d9274
.thumb
Function_21d9278: @ 21d9278 :thumb
	ldr     r1, [pc, #0xc] @ 0x21d9288, (=0x784)
	ldrb    r0, [r0, r1]
	cmp     r0, #0xff
	bne     branch_21d9284
	mov     r0, #0x1
	bx      lr
@ 0x21d9284

.thumb
branch_21d9284: @ 21d9284 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21d9288

.word 0x784 @ 0x21d9288
.thumb
Function_21d928c: @ 21d928c :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x4]
	bl      Function_2021d28
	mov     r6, r0
	add     r3, sp, #0x0
	ldmia   r6!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	ldr     r1, [pc, #0xb8] @ 0x21d9360, (=0x784)
	str     r0, [r3, #0x0]
	ldrb    r0, [r4, r1]
	cmp     r0, #0x0
	beq     branch_21d92b8
	cmp     r0, #0x1
	beq     branch_21d9314
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x21d92b8

.thumb
branch_21d92b8: @ 21d92b8 :thumb
	mov     r0, r1
	mov     r3, #0x0
	add     r0, #0xa
	strb    r3, [r4, r0]
	add     r0, r1, #0x3
	ldrb    r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21d92e6
	.hword  0x1f08 @ sub r0, r1, #0x4
	ldr     r3, [sp, #0x4]
	ldr     r0, [r4, r0]
	mov     r1, r2
	add     r0, r3, r0
	str     r0, [sp, #0x4]
	mov     r0, r4
	bl      Function_21d9e04
	ldr     r0, [pc, #0x88] @ 0x21d9364, (=0x787)
	add     sp, #0xc
	ldrb    r1, [r4, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strb    r1, [r4, r0]
	pop     {r3-r6,pc}
@ 0x21d92e6

.thumb
branch_21d92e6: @ 21d92e6 :thumb
	sub     r1, #0x14
	ldr     r0, [r4, r1]
	mov     r1, r2
	lsl     r0, r0, #12
	str     r0, [sp, #0x4]
	mov     r0, r4
	bl      Function_21d9e04
	ldr     r0, [r4, #0x4]
	mov     r1, #0x2
	bl      Function_2021d6c
	mov     r0, r4
	bl      Function_21da038
	ldr     r0, [pc, #0x5c] @ 0x21d9364, (=0x787)
	mov     r1, #0x6
	strb    r1, [r4, r0]
	.hword  0x1ec1 @ sub r1, r0, #0x3
	ldrb    r1, [r4, r1]
	.hword  0x1ec0 @ sub r0, r0, #0x3
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
.thumb
branch_21d9314: @ 21d9314 :thumb
	ldr     r0, [pc, #0x4c] @ 0x21d9364, (=0x787)
	ldrb    r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_21d933a
	.hword  0x1fc0 @ sub r0, r0, #0x7
	ldr     r1, [sp, #0x4]
	ldr     r0, [r4, r0]
	sub     r0, r1, r0
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r1, sp, #0x0
	bl      Function_21d9e04
	ldr     r0, [pc, #0x34] @ 0x21d9364, (=0x787)
	add     sp, #0xc
	ldrb    r1, [r4, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strb    r1, [r4, r0]
	pop     {r3-r6,pc}
@ 0x21d933a

.thumb
branch_21d933a: @ 21d933a :thumb
	sub     r0, #0x1f
	ldr     r0, [r4, r0]
	add     r1, sp, #0x0
	lsl     r0, r0, #12
	str     r0, [sp, #0x4]
	mov     r0, r4
	bl      Function_21d9e04
	ldr     r0, [pc, #0x14] @ 0x21d9360, (=0x784)
	mov     r1, #0xff
	strb    r1, [r4, r0]
	mov     r1, #0x1
	add     r0, #0xa
	strb    r1, [r4, r0]
	mov     r0, r5
	bl      Call_RemoveTaskFromTaskList
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x21d9360

.word 0x784 @ 0x21d9360
.word 0x787 @ 0x21d9364
.thumb
Function_21d9368: @ 21d9368 :thumb
	mov     r1, r0
	mov     r2, #0x2
	mov     r0, #0x1e
	lsl     r2, r2, #12
	lsl     r0, r0, #6
	str     r2, [r1, r0]
	mov     r2, r0
	sub     r2, #0x18
	ldr     r3, [r1, r2]
	mov     r2, r0
	add     r3, #0xc
	sub     r2, #0x10
	str     r3, [r1, r2]
	add     r2, r0, #0x7
	mov     r3, #0x6
	strb    r3, [r1, r2]
	ldr     r3, [pc, #0x8] @ 0x21d9394, (=0x21d77c9)
	mov     r2, #0x0
	.hword  0x1d00 @ add r0, r0, #0x4
	strb    r2, [r1, r0]
	ldr     r0, [pc, #0x4] @ 0x21d9398, (=0x21d93d1)
	bx      r3
@ 0x21d9394

.word Function_21d77c8+1 @ =0x21d77c9, 0x21d9394
.word 0x21d93d1 @ 0x21d9398
.thumb
Function_21d939c: @ 21d939c :thumb
	push    {r4,lr}
	ldr     r1, [pc, #0x28] @ 0x21d93c8, (=0x784)
	mov     r4, r0
	ldrb    r1, [r4, r1]
	cmp     r1, #0xff
	bne     branch_21d93c4
	bl      Function_21da06c
	ldr     r2, [pc, #0x1c] @ 0x21d93cc, (=0x754)
	mov     r1, r4
	ldr     r0, [r4, #0x48]
	ldr     r2, [r4, r2]
	add     r1, #0x4c
	bl      Function_21da3cc
	ldr     r0, [pc, #0x10] @ 0x21d93cc, (=0x754)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d93c4

.thumb
branch_21d93c4: @ 21d93c4 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d93c8

.word 0x784 @ 0x21d93c8
.word 0x754 @ 0x21d93cc
.thumb
Function_21d93d0: @ 21d93d0 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x4]
	bl      Function_2021d28
	mov     r6, r0
	add     r3, sp, #0x0
	ldmia   r6!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	ldr     r1, [pc, #0xc0] @ 0x21d94ac, (=0x784)
	str     r0, [r3, #0x0]
	ldrb    r0, [r4, r1]
	cmp     r0, #0x0
	beq     branch_21d93fc
	cmp     r0, #0x1
	beq     branch_21d9458
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x21d93fc

.thumb
branch_21d93fc: @ 21d93fc :thumb
	mov     r0, r1
	mov     r3, #0x0
	add     r0, #0xa
	strb    r3, [r4, r0]
	add     r0, r1, #0x3
	ldrb    r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21d942a
	.hword  0x1f08 @ sub r0, r1, #0x4
	ldr     r3, [sp, #0x4]
	ldr     r0, [r4, r0]
	mov     r1, r2
	add     r0, r3, r0
	str     r0, [sp, #0x4]
	mov     r0, r4
	bl      Function_21d9e04
	ldr     r0, [pc, #0x90] @ 0x21d94b0, (=0x787)
	add     sp, #0xc
	ldrb    r1, [r4, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strb    r1, [r4, r0]
	pop     {r3-r6,pc}
@ 0x21d942a

.thumb
branch_21d942a: @ 21d942a :thumb
	sub     r1, #0x14
	ldr     r0, [r4, r1]
	mov     r1, r2
	lsl     r0, r0, #12
	str     r0, [sp, #0x4]
	mov     r0, r4
	bl      Function_21d9e04
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      Function_2021d6c
	mov     r0, r4
	bl      Function_21da1f8
	ldr     r0, [pc, #0x64] @ 0x21d94b0, (=0x787)
	mov     r1, #0x6
	strb    r1, [r4, r0]
	.hword  0x1ec1 @ sub r1, r0, #0x3
	ldrb    r1, [r4, r1]
	.hword  0x1ec0 @ sub r0, r0, #0x3
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
.thumb
branch_21d9458: @ 21d9458 :thumb
	ldr     r0, [pc, #0x54] @ 0x21d94b0, (=0x787)
	ldrb    r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_21d947e
	.hword  0x1fc0 @ sub r0, r0, #0x7
	ldr     r1, [sp, #0x4]
	ldr     r0, [r4, r0]
	sub     r0, r1, r0
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r1, sp, #0x0
	bl      Function_21d9e04
	ldr     r0, [pc, #0x3c] @ 0x21d94b0, (=0x787)
	add     sp, #0xc
	ldrb    r1, [r4, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strb    r1, [r4, r0]
	pop     {r3-r6,pc}
@ 0x21d947e

.thumb
branch_21d947e: @ 21d947e :thumb
	sub     r0, #0x1f
	ldr     r0, [r4, r0]
	add     r1, sp, #0x0
	lsl     r0, r0, #12
	str     r0, [sp, #0x4]
	mov     r0, r4
	bl      Function_21d9e04
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	bl      Function_2021d6c
	ldr     r0, [pc, #0x14] @ 0x21d94ac, (=0x784)
	mov     r1, #0xff
	strb    r1, [r4, r0]
	mov     r1, #0x1
	add     r0, #0xa
	strb    r1, [r4, r0]
	mov     r0, r5
	bl      Call_RemoveTaskFromTaskList
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x21d94ac

.word 0x784 @ 0x21d94ac
.word 0x787 @ 0x21d94b0
.thumb
Function_21d94b4: @ 21d94b4 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x1c
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	mov     r1, #0x1
	bl      Function_2021d6c
	ldr     r0, [pc, #0x64] @ 0x21d9528, (=0x788)
	mov     r1, #0x0
	strb    r1, [r5, r0]
	mov     r0, r5
	bl      Function_21da224
	mov     r4, r0
	bl      Function_2021d28
	mov     r3, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x10
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	mov     r0, r4
	bl      Function_2021f74
	str     r0, [sp, #0x0]
	ldr     r1, [r5, #0x4c]
	ldr     r2, [sp, #0x14]
	mov     r0, r5
	mov     r3, #0x1
	bl      Function_21d9554
	ldr     r0, [r5, #0x4c]
	bl      Function_2021d28
	mov     r3, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x4
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	ldr     r0, [r5, #0x4c]
	bl      Function_2021f74
	str     r0, [sp, #0x0]
	mov     r3, #0x0
	ldr     r2, [sp, #0x8]
	mov     r0, r5
	mov     r1, r4
	mvn     r3, r3
	bl      Function_21d9554
	ldr     r0, [pc, #0xc] @ 0x21d952c, (=0x784)
	mov     r1, #0x0
	strb    r1, [r5, r0]
	add     sp, #0x1c
	pop     {r4,r5,pc}
@ 0x21d9526


.align 2


.word 0x788 @ 0x21d9528
.word 0x784 @ 0x21d952c
.thumb
Function_21d9530: @ 21d9530 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d95e0
	cmp     r0, #0x0
	beq     branch_21d954e
	ldr     r0, [r4, #0x4]
	mov     r1, #0x2
	bl      Function_2021d6c
	mov     r0, r4
	bl      Function_21da110
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d954e

.thumb
branch_21d954e: @ 21d954e :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d9552


.align 2, 0


.thumb
Function_21d9554: @ 21d9554 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0xa
	mov     r1, #0x2c
	mov     r7, r2
	str     r3, [sp, #0x0]
	bl      malloc
	mov     r4, r0
	beq     branch_21d95d4
	mov     r0, r6
	bl      Function_2021d28
	mov     r3, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x4
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	mov     r1, #0xc
	str     r0, [r2, #0x0]
	str     r6, [r4, #0x0]
	strh    r1, [r4, #0x4]
	mov     r0, #0x6
	strh    r0, [r4, #0x6]
	ldr     r0, [sp, #0x28]
	str     r0, [r4, #0x8]
	ldr     r0, [sp, #0x8]
	str     r0, [r4, #0xc]
	ldr     r0, [sp, #0x4]
	str     r0, [r4, #0x14]
	str     r7, [r4, #0x10]
	mov     r0, #0x0
	str     r0, [r4, #0x18]
	ldr     r0, [sp, #0x0]
	mov     r2, r0
	mul     r2, r1
	str     r2, [r4, #0x24]
	ldr     r2, [r4, #0x10]
	ldr     r0, [r4, #0xc]
	sub     r0, r2, r0
	blx     _s32_div_f
	str     r0, [r4, #0x1c]
	mov     r0, #0xf
	lsl     r0, r0, #12
	str     r0, [r4, #0x20]
	ldr     r0, [pc, #0x20] @ 0x21d95d8, (=0x21d9601)
	mov     r1, r4
	mov     r2, #0x0
	str     r5, [r4, #0x28]
	bl      Function_21d77c8
	cmp     r0, #0x0
	beq     branch_21d95ce
	ldr     r0, [pc, #0x14] @ 0x21d95dc, (=0x788)
	mov     r1, #0x1
	add     sp, #0x10
	strb    r1, [r5, r0]
	pop     {r3-r7,pc}
@ 0x21d95ce

.thumb
branch_21d95ce: @ 21d95ce :thumb
	mov     r0, r4
	bl      free
.thumb
branch_21d95d4: @ 21d95d4 :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d95d8

.word 0x21d9601 @ 0x21d95d8
.word 0x788 @ 0x21d95dc
.thumb
Function_21d95e0: @ 21d95e0 :thumb
	ldr     r1, [pc, #0xc] @ 0x21d95f0, (=0x788)
	ldrb    r0, [r0, r1]
	cmp     r0, #0x0
	bne     branch_21d95ec
	mov     r0, #0x1
	bx      lr
@ 0x21d95ec

.thumb
branch_21d95ec: @ 21d95ec :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21d95f0

.word 0x788 @ 0x21d95f0
.thumb
Function_21d95f4: @ 21d95f4 :thumb
	ldr     r1, [pc, #0x4] @ 0x21d95fc, (=0x788)
	mov     r2, #0x0
	strb    r2, [r0, r1]
	bx      lr
@ 0x21d95fc

.word 0x788 @ 0x21d95fc
.thumb
Function_21d9600: @ 21d9600 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2021d28
	mov     r6, r0
	add     r3, sp, #0x0
	ldmia   r6!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	str     r0, [r3, #0x0]
	ldrh    r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_21d9668
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, #0x4]
	ldrh    r1, [r4, #0x4]
	ldrh    r0, [r4, #0x6]
	cmp     r1, r0
	bne     branch_21d9636
	ldr     r0, [r4, #0x0]
	ldr     r1, [r4, #0x8]
	bl      Function_21d78ac
.thumb
branch_21d9636: @ 21d9636 :thumb
	ldr     r1, [r4, #0xc]
	ldr     r0, [r4, #0x1c]
	add     r0, r1, r0
	str     r0, [r4, #0xc]
	str     r0, [sp, #0x4]
	ldr     r1, [r4, #0x18]
	ldr     r0, [r4, #0x20]
	add     r0, r1, r0
	str     r0, [r4, #0x18]
	lsl     r0, r0, #4
	lsr     r0, r0, #16
	bl      Function_201d15c
	ldr     r1, [r4, #0x24]
	mov     r2, r1
	mul     r2, r0
	ldr     r0, [r4, #0x14]
	add     r1, sp, #0x0
	add     r0, r0, r2
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	bl      Function_2021c50
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x21d9668

.thumb
branch_21d9668: @ 21d9668 :thumb
	ldr     r0, [r4, #0x14]
	mov     r1, r2
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x10]
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	bl      Function_2021c50
	ldr     r1, [pc, #0x10] @ 0x21d968c, (=0x21d95f5)
	ldr     r2, [r4, #0x28]
	mov     r0, r4
	bl      Function_21d79b8
	mov     r0, r5
	bl      Call_RemoveTaskFromTaskList
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x21d968c

.word Function_21d95f4+1 @ =0x21d95f5, 0x21d968c
.thumb
Function_21d9690: @ 21d9690 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldr     r0, [pc, #0x5c] @ 0x21d96f4, (=0x78c)
	ldrb    r1, [r4, r0]
	cmp     r1, #0x0
	bne     branch_21d96ae
	.hword  0x1c40 @ add r0, r0, #0x1
	ldrb    r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_21d96ae
	ldr     r0, [r4, #0x4]
	mov     r1, #0x3
	bl      Function_2021d6c
.thumb
branch_21d96ae: @ 21d96ae :thumb
	ldr     r0, [r4, #0x4]
	bl      Function_2021d28
	mov     r5, r0
	add     r3, sp, #0x0
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	str     r0, [r3, #0x0]
	mov     r0, #0x2
	ldr     r1, [sp, #0x4]
	lsl     r0, r0, #12
	sub     r0, r1, r0
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, r2
	bl      Function_21d9e04
	ldr     r0, [pc, #0x20] @ 0x21d96f8, (=0x784)
	mov     r2, #0x0
	strb    r2, [r4, r0]
	.hword  0x1cc0 @ add r0, r0, #0x3
	strb    r2, [r4, r0]
	ldr     r0, [pc, #0x1c] @ 0x21d96fc, (=0x21d9719)
	mov     r1, r4
	bl      Function_21d77c8
	cmp     r0, #0x0
	beq     branch_21d96f0
	ldr     r0, [pc, #0x14] @ 0x21d9700, (=0x788)
	mov     r1, #0x1
	strb    r1, [r4, r0]
.thumb
branch_21d96f0: @ 21d96f0 :thumb
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d96f4

.word 0x78c @ 0x21d96f4
.word 0x784 @ 0x21d96f8
.word 0x21d9719 @ 0x21d96fc
.word 0x788 @ 0x21d9700
.thumb
Function_21d9704: @ 21d9704 :thumb
	ldr     r1, [pc, #0xc] @ 0x21d9714, (=0x788)
	ldrb    r0, [r0, r1]
	cmp     r0, #0x0
	bne     branch_21d9710
	mov     r0, #0x1
	bx      lr
@ 0x21d9710

.thumb
branch_21d9710: @ 21d9710 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21d9714

.word 0x788 @ 0x21d9714
.thumb
Function_21d9718: @ 21d9718 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x18
	mov     r4, r1
	ldr     r1, [pc, #0xd0] @ 0x21d97f0, (=0x784)
	mov     r5, r0
	ldrb    r0, [r4, r1]
	cmp     r0, #0x0
	beq     branch_21d9730
	cmp     r0, #0x1
	beq     branch_21d9796
	add     sp, #0x18
	pop     {r4-r6,pc}
@ 0x21d9730

.thumb
branch_21d9730: @ 21d9730 :thumb
	add     r0, r1, #0x3
	ldrb    r0, [r4, r0]
	add     r2, r0, #0x1
	add     r0, r1, #0x3
	strb    r2, [r4, r0]
	ldrb    r0, [r4, r0]
	cmp     r0, #0x4
	bcc     branch_21d97ec
	ldr     r0, [r4, #0x4]
	bl      Function_2021d28
	mov     r3, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0xc
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	ldr     r0, [sp, #0x10]
	mov     r2, #0x3
	asr     r0, r0, #12
	add     r1, r0, #0x6
	mov     r0, #0x77
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	mov     r1, r0
	lsl     r2, r2, #12
	add     r1, #0x10
	str     r2, [r4, r1]
	mov     r1, r0
	mov     r2, #0x2
	add     r1, #0x17
	strb    r2, [r4, r1]
	mov     r1, r0
	add     r1, #0x1c
	ldrb    r1, [r4, r1]
	cmp     r1, #0x0
	bne     branch_21d978a
	add     r0, #0x1d
	ldrb    r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_21d978a
	ldr     r0, [r4, #0x4]
	mov     r1, #0x4
	bl      Function_2021d6c
.thumb
branch_21d978a: @ 21d978a :thumb
	ldr     r0, [pc, #0x64] @ 0x21d97f0, (=0x784)
	add     sp, #0x18
	ldrb    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	pop     {r4-r6,pc}
@ 0x21d9796

.thumb
branch_21d9796: @ 21d9796 :thumb
	ldr     r0, [r4, #0x4]
	bl      Function_2021d28
	mov     r6, r0
	add     r3, sp, #0x0
	ldmia   r6!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	str     r0, [r3, #0x0]
	ldr     r0, [pc, #0x48] @ 0x21d97f4, (=0x787)
	ldrb    r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_21d97d0
	.hword  0x1fc0 @ sub r0, r0, #0x7
	ldr     r1, [sp, #0x4]
	ldr     r0, [r4, r0]
	add     r0, r1, r0
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, r2
	bl      Function_21d9e04
	ldr     r0, [pc, #0x2c] @ 0x21d97f4, (=0x787)
	add     sp, #0x18
	ldrb    r1, [r4, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strb    r1, [r4, r0]
	pop     {r4-r6,pc}
@ 0x21d97d0

.thumb
branch_21d97d0: @ 21d97d0 :thumb
	sub     r0, #0x17
	ldr     r0, [r4, r0]
	mov     r1, r2
	lsl     r0, r0, #12
	str     r0, [sp, #0x4]
	mov     r0, r4
	bl      Function_21d9e04
	ldr     r0, [pc, #0x14] @ 0x21d97f8, (=0x788)
	mov     r1, #0x0
	strb    r1, [r4, r0]
	mov     r0, r5
	bl      Call_RemoveTaskFromTaskList
.thumb
branch_21d97ec: @ 21d97ec :thumb
	add     sp, #0x18
	pop     {r4-r6,pc}
@ 0x21d97f0

.word 0x784 @ 0x21d97f0
.word 0x787 @ 0x21d97f4
.word 0x788 @ 0x21d97f8
.thumb
Function_21d97fc: @ 21d97fc :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	bl      Function_2021d28
	mov     r3, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x0
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	mov     r1, #0x77
	str     r0, [r2, #0x0]
	ldr     r0, [sp, #0x4]
	lsl     r1, r1, #4
	asr     r0, r0, #12
	.hword  0x1f00 @ sub r0, r0, #0x4
	str     r0, [r4, r1]
	mov     r0, r1
	ldr     r2, [pc, #0x28] @ 0x21d984c, (=0xfffff000)
	add     r0, #0x10
	str     r2, [r4, r0]
	mov     r0, r1
	mov     r2, #0x4
	add     r0, #0x17
	strb    r2, [r4, r0]
	mov     r2, #0x0
	add     r1, #0x14
	strb    r2, [r4, r1]
	ldr     r0, [pc, #0x18] @ 0x21d9850, (=0x21d9895)
	mov     r1, r4
	bl      Function_21d77c8
	cmp     r0, #0x0
	beq     branch_21d9848
	ldr     r0, [pc, #0x10] @ 0x21d9854, (=0x788)
	mov     r1, #0x1
	strb    r1, [r4, r0]
.thumb
branch_21d9848: @ 21d9848 :thumb
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x21d984c

.word 0xfffff000 @ 0x21d984c
.word 0x21d9895 @ 0x21d9850
.word 0x788 @ 0x21d9854
.thumb
Function_21d9858: @ 21d9858 :thumb
	push    {r4,lr}
	ldr     r1, [pc, #0x34] @ 0x21d9890, (=0x788)
	mov     r4, r0
	ldrb    r0, [r4, r1]
	cmp     r0, #0x0
	bne     branch_21d988a
	add     r0, r1, #0x4
	ldrb    r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_21d9886
	add     r0, r1, #0x5
	ldrb    r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_21d9886
	ldr     r0, [r4, #0x4]
	bl      Function_2021e24
	cmp     r0, #0x0
	beq     branch_21d9886
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	bl      Function_2021d6c
.thumb
branch_21d9886: @ 21d9886 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d988a

.thumb
branch_21d988a: @ 21d988a :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d988e


.align 2


.word 0x788 @ 0x21d9890
.thumb
Function_21d9894: @ 21d9894 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x4]
	bl      Function_2021d28
	mov     r6, r0
	add     r3, sp, #0x0
	ldmia   r6!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	str     r0, [r3, #0x0]
	ldr     r0, [pc, #0x44] @ 0x21d98f8, (=0x787)
	ldrb    r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_21d98d6
	.hword  0x1fc0 @ sub r0, r0, #0x7
	ldr     r1, [sp, #0x4]
	ldr     r0, [r4, r0]
	add     r0, r1, r0
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, r2
	bl      Function_21d9e04
	ldr     r0, [pc, #0x2c] @ 0x21d98f8, (=0x787)
	add     sp, #0xc
	ldrb    r1, [r4, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strb    r1, [r4, r0]
	pop     {r3-r6,pc}
@ 0x21d98d6

.thumb
branch_21d98d6: @ 21d98d6 :thumb
	sub     r0, #0x17
	ldr     r0, [r4, r0]
	mov     r1, r2
	lsl     r0, r0, #12
	str     r0, [sp, #0x4]
	mov     r0, r4
	bl      Function_21d9e04
	ldr     r0, [pc, #0x14] @ 0x21d98fc, (=0x788)
	mov     r1, #0x0
	strb    r1, [r4, r0]
	mov     r0, r5
	bl      Call_RemoveTaskFromTaskList
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x21d98f6


.align 2


.word 0x787 @ 0x21d98f8
.word 0x788 @ 0x21d98fc
.thumb
Function_21d9900: @ 21d9900 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x79
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_21d5e68
	mov     r1, #0x79
	lsl     r1, r1, #4
	mov     r2, #0x11
	ldr     r3, [r4, r1]
	lsl     r2, r2, #4
	ldrh    r2, [r3, r2]
	cmp     r2, r0
	bne     branch_21d9926
	sub     r1, #0x38
	ldr     r0, [r4, r1]
	bl      Function_21d84e0
.thumb
branch_21d9926: @ 21d9926 :thumb
	mov     r0, r4
	bl      Function_21da204
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	bl      Function_2021d6c
	pop     {r4,pc}
@ 0x21d9936


.align 2, 0


.thumb
Function_21d9938: @ 21d9938 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      Function_2021d6c
	mov     r1, r4
	ldr     r0, [r4, #0x48]
	add     r1, #0x4c
	mov     r2, #0x1
	bl      Function_21da7b8
	ldr     r0, [pc, #0x4] @ 0x21d9958, (=0x784)
	mov     r1, #0x0
	strb    r1, [r4, r0]
	pop     {r4,pc}
@ 0x21d9958

.word 0x784 @ 0x21d9958
.thumb
Function_21d995c: @ 21d995c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x88] @ 0x21d99ec, (=0x794)
	ldr     r0, [r5, r0]
	bl      Function_21d7964
	ldr     r1, [pc, #0x84] @ 0x21d99f0, (=0x784)
	mov     r4, r0
	ldrb    r1, [r5, r1]
	cmp     r1, #0x0
	beq     branch_21d997c
	cmp     r1, #0x1
	beq     branch_21d9994
	cmp     r1, #0x2
	beq     branch_21d99ce
	b       branch_21d99e8
@ 0x21d997c

.thumb
branch_21d997c: @ 21d997c :thumb
	mov     r1, r5
	ldr     r0, [r5, #0x48]
	add     r1, #0x4c
	bl      Function_21da7e0
	cmp     r0, #0x0
	beq     branch_21d99e8
	ldr     r0, [pc, #0x64] @ 0x21d99f0, (=0x784)
	ldrb    r1, [r5, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r5, r0]
	b       branch_21d99e8
@ 0x21d9994

.thumb
branch_21d9994: @ 21d9994 :thumb
	bl      Function_21d3b18
	cmp     r0, #0x0
	beq     branch_21d99e8
	mov     r0, r4
	bl      Function_21d3b20
	cmp     r0, #0x0
	beq     branch_21d99b8
	ldr     r0, [r5, #0x4]
	mov     r1, #0x0
	bl      Function_2021d6c
	mov     r0, r5
	bl      Function_21da204
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d99b8

.thumb
branch_21d99b8: @ 21d99b8 :thumb
	mov     r1, r5
	ldr     r0, [r5, #0x48]
	add     r1, #0x4c
	mov     r2, #0x2
	bl      Function_21da7b8
	ldr     r0, [pc, #0x28] @ 0x21d99f0, (=0x784)
	ldrb    r1, [r5, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r5, r0]
	b       branch_21d99e8
@ 0x21d99ce

.thumb
branch_21d99ce: @ 21d99ce :thumb
	mov     r1, r5
	ldr     r0, [r5, #0x48]
	add     r1, #0x4c
	bl      Function_21da7e0
	cmp     r0, #0x0
	beq     branch_21d99e8
	ldr     r0, [r5, #0x4]
	mov     r1, #0x2
	bl      Function_2021d6c
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d99e8

.thumb
branch_21d99e8: @ 21d99e8 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d99ec

.word 0x794 @ 0x21d99ec
.word 0x784 @ 0x21d99f0
.thumb
Function_21d99f4: @ 21d99f4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      Function_2021e80
	ldr     r0, [pc, #0x20] @ 0x21d9a24, (=0x78c)
	ldrb    r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21d9a10
	ldr     r0, [r4, #0x4c]
	mov     r1, #0x1
	bl      Function_2021e80
.thumb
branch_21d9a10: @ 21d9a10 :thumb
	ldr     r0, [pc, #0x14] @ 0x21d9a28, (=0x78d)
	ldrb    r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_21d9a22
	sub     r0, #0x2d
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_21debdc
.thumb
branch_21d9a22: @ 21d9a22 :thumb
	pop     {r4,pc}
@ 0x21d9a24

.word 0x78c @ 0x21d9a24
.word 0x78d @ 0x21d9a28
.thumb
Function_21d9a2c: @ 21d9a2c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	mov     r1, #0x2
	bl      Function_2021e80
	ldr     r0, [pc, #0x20] @ 0x21d9a5c, (=0x78c)
	ldrb    r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21d9a48
	ldr     r0, [r4, #0x4c]
	mov     r1, #0x2
	bl      Function_2021e80
.thumb
branch_21d9a48: @ 21d9a48 :thumb
	ldr     r0, [pc, #0x14] @ 0x21d9a60, (=0x78d)
	ldrb    r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_21d9a5a
	sub     r0, #0x2d
	ldr     r0, [r4, r0]
	mov     r1, #0x2
	bl      Function_21debdc
.thumb
branch_21d9a5a: @ 21d9a5a :thumb
	pop     {r4,pc}
@ 0x21d9a5c

.word 0x78c @ 0x21d9a5c
.word 0x78d @ 0x21d9a60
.thumb
Function_21d9a64: @ 21d9a64 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x1c] @ 0x21d9a88, (=0x78c)
	ldrb    r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_21d9a84
	.hword  0x1d00 @ add r0, r0, #0x4
	ldr     r0, [r4, r0]
	bl      Function_21d5ea0
	mov     r2, r0
	ldr     r0, [r4, #0x48]
	add     r4, #0x4c
	mov     r1, r4
	bl      Function_21da68c
.thumb
branch_21d9a84: @ 21d9a84 :thumb
	pop     {r4,pc}
@ 0x21d9a86


.align 2


.word 0x78c @ 0x21d9a88
.thumb
Function_21d9a8c: @ 21d9a8c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x79
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_21d5ec8
	mov     r2, r0
	ldr     r0, [r4, #0x4c]
	cmp     r0, #0x0
	beq     branch_21d9aac
	ldr     r0, [r4, #0x48]
	add     r4, #0x4c
	mov     r1, r4
	bl      Function_21da63c
.thumb
branch_21d9aac: @ 21d9aac :thumb
	pop     {r4,pc}
@ 0x21d9aae


.align 2, 0


.thumb
Function_21d9ab0: @ 21d9ab0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4c]
	mov     r2, r1
	cmp     r0, #0x0
	beq     branch_21d9ae8
	mov     r1, r4
	ldr     r0, [r4, #0x48]
	add     r1, #0x4c
	bl      Function_21da690
	mov     r0, #0x79
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_21d5ec8
	mov     r2, r0
	mov     r1, r4
	ldr     r0, [r4, #0x48]
	add     r1, #0x4c
	bl      Function_21da63c
	ldr     r0, [r4, #0x48]
	add     r4, #0x4c
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_21da694
.thumb
branch_21d9ae8: @ 21d9ae8 :thumb
	pop     {r4,pc}
@ 0x21d9aea


.align 2, 0


.thumb
Function_21d9aec: @ 21d9aec :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x79
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_21d5ee0
	cmp     r0, #0x0
	ldr     r0, [r4, #0x4]
	beq     branch_21d9b08
	mov     r1, #0x1
	bl      Function_2021e90
	pop     {r4,pc}
@ 0x21d9b08

.thumb
branch_21d9b08: @ 21d9b08 :thumb
	mov     r1, #0x0
	bl      Function_2021e90
	pop     {r4,pc}
@ 0x21d9b10


.thumb
Function_21d9b10: @ 21d9b10 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d9b18, (=Function_2021d6c+1)
	ldr     r0, [r0, #0x4]
	mov     r1, #0x1
	bx      r3
@ 0x21d9b18

.word Function_2021d6c+1 @ 0x21d9b18



.thumb
Function_21d9b1c: @ 21d9b1c :thumb
	push    {r4,lr}
	ldr     r0, [r0, #0x4]
	mov     r4, r1
	bl      Function_2021d28
	mov     r2, r0
	ldmia   r2!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldr     r0, [r2, #0x0]
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x21d9b32


.align 2, 0


.thumb
Function_21d9b34: @ 21d9b34 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x1c] @ 0x21d9b58, (=0x784)
	mov     r2, #0x0
	strb    r2, [r4, r0]
	ldr     r0, [pc, #0x1c] @ 0x21d9b5c, (=0x21d9b79)
	mov     r1, r4
	bl      AddTaskToTaskList1
	cmp     r0, #0x0
	beq     branch_21d9b54
	ldr     r0, [pc, #0x14] @ 0x21d9b60, (=0x78d)
	mov     r1, #0x1
	strb    r1, [r4, r0]
	.hword  0x1f40 @ sub r0, r0, #0x5
	strb    r1, [r4, r0]
.thumb
branch_21d9b54: @ 21d9b54 :thumb
	pop     {r4,pc}
@ 0x21d9b56


.align 2


.word 0x784 @ 0x21d9b58
.word 0x21d9b79 @ 0x21d9b5c
.word 0x78d @ 0x21d9b60
.thumb
Function_21d9b64: @ 21d9b64 :thumb
	ldr     r1, [pc, #0xc] @ 0x21d9b74, (=0x788)
	ldrb    r0, [r0, r1]
	cmp     r0, #0x0
	bne     branch_21d9b70
	mov     r0, #0x1
	bx      lr
@ 0x21d9b70

.thumb
branch_21d9b70: @ 21d9b70 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21d9b74

.word 0x788 @ 0x21d9b74
.thumb
Function_21d9b78: @ 21d9b78 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x4c] @ 0x21d9bcc, (=0x784)
	mov     r4, r1
	ldrb    r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_21d9b8c
	cmp     r1, #0x1
	beq     branch_21d9ba8
	pop     {r3-r5,pc}
@ 0x21d9b8c

.thumb
branch_21d9b8c: @ 21d9b8c :thumb
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      Function_2021d6c
	mov     r0, #0x76
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_21de954
	ldr     r0, [pc, #0x2c] @ 0x21d9bcc, (=0x784)
	ldrb    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	pop     {r3-r5,pc}
@ 0x21d9ba8

.thumb
branch_21d9ba8: @ 21d9ba8 :thumb
	sub     r0, #0x24
	ldr     r0, [r4, r0]
	bl      Function_21de9a8
	cmp     r0, #0x0
	beq     branch_21d9bc8
	ldr     r0, [r4, #0x4]
	mov     r1, #0x2
	bl      Function_2021d6c
	ldr     r0, [pc, #0x10] @ 0x21d9bd0, (=0x788)
	mov     r1, #0x0
	strb    r1, [r4, r0]
	mov     r0, r5
	bl      Call_RemoveTaskFromTaskList
.thumb
branch_21d9bc8: @ 21d9bc8 :thumb
	pop     {r3-r5,pc}
@ 0x21d9bca


.align 2


.word 0x784 @ 0x21d9bcc
.word 0x788 @ 0x21d9bd0
.thumb
Function_21d9bd4: @ 21d9bd4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x1c] @ 0x21d9bf8, (=0x784)
	mov     r2, #0x0
	strb    r2, [r4, r0]
	ldr     r0, [pc, #0x1c] @ 0x21d9bfc, (=0x21d9c19)
	mov     r1, r4
	bl      AddTaskToTaskList1
	cmp     r0, #0x0
	beq     branch_21d9bf6
	ldr     r0, [pc, #0x14] @ 0x21d9c00, (=0x78d)
	mov     r1, #0x0
	strb    r1, [r4, r0]
	mov     r1, #0x1
	.hword  0x1f40 @ sub r0, r0, #0x5
	strb    r1, [r4, r0]
.thumb
branch_21d9bf6: @ 21d9bf6 :thumb
	pop     {r4,pc}
@ 0x21d9bf8

.word 0x784 @ 0x21d9bf8
.word 0x21d9c19 @ 0x21d9bfc
.word 0x78d @ 0x21d9c00
.thumb
Function_21d9c04: @ 21d9c04 :thumb
	ldr     r1, [pc, #0xc] @ 0x21d9c14, (=0x788)
	ldrb    r0, [r0, r1]
	cmp     r0, #0x0
	bne     branch_21d9c10
	mov     r0, #0x1
	bx      lr
@ 0x21d9c10

.thumb
branch_21d9c10: @ 21d9c10 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21d9c14

.word 0x788 @ 0x21d9c14
.thumb
Function_21d9c18: @ 21d9c18 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x4c] @ 0x21d9c6c, (=0x784)
	mov     r4, r1
	ldrb    r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_21d9c2c
	cmp     r1, #0x1
	beq     branch_21d9c48
	pop     {r3-r5,pc}
@ 0x21d9c2c

.thumb
branch_21d9c2c: @ 21d9c2c :thumb
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      Function_2021d6c
	mov     r0, #0x76
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_21dea18
	ldr     r0, [pc, #0x2c] @ 0x21d9c6c, (=0x784)
	ldrb    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	pop     {r3-r5,pc}
@ 0x21d9c48

.thumb
branch_21d9c48: @ 21d9c48 :thumb
	sub     r0, #0x24
	ldr     r0, [r4, r0]
	bl      Function_21dea64
	cmp     r0, #0x0
	beq     branch_21d9c68
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	bl      Function_2021d6c
	ldr     r0, [pc, #0x10] @ 0x21d9c70, (=0x788)
	mov     r1, #0x0
	strb    r1, [r4, r0]
	mov     r0, r5
	bl      Call_RemoveTaskFromTaskList
.thumb
branch_21d9c68: @ 21d9c68 :thumb
	pop     {r3-r5,pc}
@ 0x21d9c6a


.align 2


.word 0x784 @ 0x21d9c6c
.word 0x788 @ 0x21d9c70
.thumb
Function_21d9c74: @ 21d9c74 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x18] @ 0x21d9c94, (=0x784)
	mov     r2, #0x0
	strb    r2, [r4, r0]
	ldr     r0, [pc, #0x18] @ 0x21d9c98, (=0x21d9cb5)
	mov     r1, r4
	bl      AddTaskToTaskList1
	cmp     r0, #0x0
	beq     branch_21d9c90
	ldr     r0, [pc, #0x10] @ 0x21d9c9c, (=0x788)
	mov     r1, #0x1
	strb    r1, [r4, r0]
.thumb
branch_21d9c90: @ 21d9c90 :thumb
	pop     {r4,pc}
@ 0x21d9c92


.align 2


.word 0x784 @ 0x21d9c94
.word 0x21d9cb5 @ 0x21d9c98
.word 0x788 @ 0x21d9c9c
.thumb
Function_21d9ca0: @ 21d9ca0 :thumb
	ldr     r1, [pc, #0xc] @ 0x21d9cb0, (=0x788)
	ldrb    r0, [r0, r1]
	cmp     r0, #0x0
	bne     branch_21d9cac
	mov     r0, #0x1
	bx      lr
@ 0x21d9cac

.thumb
branch_21d9cac: @ 21d9cac :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21d9cb0

.word 0x788 @ 0x21d9cb0
.thumb
Function_21d9cb4: @ 21d9cb4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x4c] @ 0x21d9d08, (=0x784)
	mov     r4, r1
	ldrb    r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_21d9cc8
	cmp     r1, #0x1
	beq     branch_21d9ce4
	pop     {r3-r5,pc}
@ 0x21d9cc8

.thumb
branch_21d9cc8: @ 21d9cc8 :thumb
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      Function_2021d6c
	mov     r0, #0x76
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_21dea74
	ldr     r0, [pc, #0x2c] @ 0x21d9d08, (=0x784)
	ldrb    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	pop     {r3-r5,pc}
@ 0x21d9ce4

.thumb
branch_21d9ce4: @ 21d9ce4 :thumb
	sub     r0, #0x24
	ldr     r0, [r4, r0]
	bl      Function_21deb08
	cmp     r0, #0x0
	beq     branch_21d9d04
	ldr     r0, [r4, #0x4]
	mov     r1, #0x2
	bl      Function_2021d6c
	ldr     r0, [pc, #0x10] @ 0x21d9d0c, (=0x788)
	mov     r1, #0x0
	strb    r1, [r4, r0]
	mov     r0, r5
	bl      Call_RemoveTaskFromTaskList
.thumb
branch_21d9d04: @ 21d9d04 :thumb
	pop     {r3-r5,pc}
@ 0x21d9d06


.align 2


.word 0x784 @ 0x21d9d08
.word 0x788 @ 0x21d9d0c
.thumb
Function_21d9d10: @ 21d9d10 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x10] @ 0x21d9d24, (=0x78d)
	ldrb    r1, [r0, r1]
	cmp     r1, #0x0
	beq     branch_21d9d22
	ldr     r0, [r0, #0x4]
	mov     r1, #0x1
	bl      Function_2021d6c
.thumb
branch_21d9d22: @ 21d9d22 :thumb
	pop     {r3,pc}
@ 0x21d9d24

.word 0x78d @ 0x21d9d24
.thumb
Function_21d9d28: @ 21d9d28 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x14] @ 0x21d9d44, (=0x78d)
	ldrb    r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21d9d42
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	bl      Function_2021d6c
	ldr     r0, [pc, #0x4] @ 0x21d9d44, (=0x78d)
	mov     r1, #0x0
	strb    r1, [r4, r0]
.thumb
branch_21d9d42: @ 21d9d42 :thumb
	pop     {r4,pc}
@ 0x21d9d44

.word 0x78d @ 0x21d9d44
.thumb
Function_21d9d48: @ 21d9d48 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r0, #0x79
	mov     r5, r3
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r7, r2
	mov     r4, r1
	str     r0, [sp, #0x0]
	bl      Function_21d5e10
	strb    r0, [r7, #0x0]
	ldrb    r0, [r7, #0x0]
	cmp     r0, #0x4
	bhi     branch_21d9dfc
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d9d72

Jumppoints_21d9d72:
.hword branch_21d9d7c - Jumppoints_21d9d72 - 2
.hword branch_21d9da6 - Jumppoints_21d9d72 - 2
.hword branch_21d9dc8 - Jumppoints_21d9d72 - 2
.hword branch_21d9dda - Jumppoints_21d9d72 - 2
.hword branch_21d9dec - Jumppoints_21d9d72 - 2
.thumb
branch_21d9d7c: @ 21d9d7c :thumb
	ldr     r0, [pc, #0x80] @ 0x21d9e00, (=0x794)
	ldr     r0, [r5, r0]
	bl      Function_21d7820
	mov     r5, r0
	ldr     r0, [sp, #0x0]
	bl      Function_21d5e14
	mov     r1, #0x18
	add     r5, #0x70
	mul     r1, r0
	add     r0, r5, r1
	str     r0, [r6, #0x0]
	ldr     r0, [sp, #0x0]
	bl      Function_21d5e1c
	mov     r1, #0x18
	mul     r1, r0
	add     r1, #0x18
	str     r1, [r4, #0x0]
	pop     {r3-r7,pc}
@ 0x21d9da6

.thumb
branch_21d9da6: @ 21d9da6 :thumb
	ldr     r0, [sp, #0x0]
	bl      Function_21d5e2c
	mov     r7, r0
	ldr     r0, [pc, #0x50] @ 0x21d9e00, (=0x794)
	ldr     r0, [r5, r0]
	bl      Function_21d77e8
	mov     r1, r7
	mov     r2, r6
	mov     r3, r4
	bl      Function_21dcd30
	ldr     r0, [r4, #0x0]
	sub     r0, #0x10
	str     r0, [r4, #0x0]
	pop     {r3-r7,pc}
@ 0x21d9dc8

.thumb
branch_21d9dc8: @ 21d9dc8 :thumb
	ldr     r0, [pc, #0x34] @ 0x21d9e00, (=0x794)
	ldr     r0, [r5, r0]
	bl      Function_21d7820
	add     r0, #0xa8
	str     r0, [r6, #0x0]
	mov     r0, #0x8
	str     r0, [r4, #0x0]
	pop     {r3-r7,pc}
@ 0x21d9dda

.thumb
branch_21d9dda: @ 21d9dda :thumb
	ldr     r0, [pc, #0x24] @ 0x21d9e00, (=0x794)
	ldr     r0, [r5, r0]
	bl      Function_21d7820
	add     r0, #0x9f
	str     r0, [r6, #0x0]
	mov     r0, #0xa0
	str     r0, [r4, #0x0]
	pop     {r3-r7,pc}
@ 0x21d9dec

.thumb
branch_21d9dec: @ 21d9dec :thumb
	ldr     r0, [pc, #0x10] @ 0x21d9e00, (=0x794)
	ldr     r0, [r5, r0]
	bl      Function_21d7820
	add     r0, #0xeb
	str     r0, [r6, #0x0]
	mov     r0, #0xa0
	str     r0, [r4, #0x0]
.thumb
branch_21d9dfc: @ 21d9dfc :thumb
	pop     {r3-r7,pc}
@ 0x21d9dfe


.align 2


.word 0x794 @ 0x21d9e00
.thumb
Function_21d9e04: @ 21d9e04 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r7, r0
	ldr     r0, [r7, #0x4]
	mov     r6, r1
	bl      Function_2021c50
	ldr     r1, [pc, #0x84] @ 0x21d9e98, (=0x78c)
	ldrb    r0, [r7, r1]
	cmp     r0, #0x0
	beq     branch_21d9e5c
	mov     r0, #0x0
	sub     r1, #0x38
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x18]
	ldr     r0, [r7, r1]
	cmp     r0, #0x0
	bls     branch_21d9e5c
	mov     r4, r7
	mov     r5, r7
.thumb
branch_21d9e2c: @ 21d9e2c :thumb
	ldr     r0, [pc, #0x6c] @ 0x21d9e9c, (=0x664)
	ldr     r1, [r6, #0x0]
	ldr     r0, [r4, r0]
	add     r0, r1, r0
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x68] @ 0x21d9ea0, (=0x668)
	ldr     r1, [r6, #0x4]
	ldr     r0, [r4, r0]
	sub     r0, r1, r0
	str     r0, [sp, #0x14]
	ldr     r0, [r5, #0x4c]
	add     r1, sp, #0x10
	bl      Function_2021c50
	ldr     r0, [sp, #0x0]
	add     r4, #0x8
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x50] @ 0x21d9ea4, (=0x754)
	add     r5, #0x34
	ldr     r1, [r7, r0]
	ldr     r0, [sp, #0x0]
	cmp     r0, r1
	bcc     branch_21d9e2c
.thumb
branch_21d9e5c: @ 21d9e5c :thumb
	ldr     r0, [pc, #0x48] @ 0x21d9ea8, (=0x78d)
	ldrb    r1, [r7, r0]
	cmp     r1, #0x0
	beq     branch_21d9e6e
	sub     r0, #0x2d
	ldr     r0, [r7, r0]
	mov     r1, r6
	bl      Function_21deb9c
.thumb
branch_21d9e6e: @ 21d9e6e :thumb
	ldr     r0, [pc, #0x3c] @ 0x21d9eac, (=0x78e)
	ldrb    r0, [r7, r0]
	cmp     r0, #0x0
	beq     branch_21d9e94
	ldmia   r6!, {r0,r1}
	add     r3, sp, #0x4
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	str     r0, [r3, #0x0]
	mov     r0, #0x6
	ldr     r1, [sp, #0x8]
	lsl     r0, r0, #14
	add     r0, r1, r0
	str     r0, [sp, #0x8]
	ldr     r0, [r7, #0x8]
	mov     r1, r2
	bl      Function_2021c50
.thumb
branch_21d9e94: @ 21d9e94 :thumb
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x21d9e98

.word 0x78c @ 0x21d9e98
.word 0x664 @ 0x21d9e9c
.word 0x668 @ 0x21d9ea0
.word 0x754 @ 0x21d9ea4
.word 0x78d @ 0x21d9ea8
.word 0x78e @ 0x21d9eac
.thumb
Function_21d9eb0: @ 21d9eb0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x34
	mov     r1, #0x79
	lsl     r1, r1, #4
	str     r0, [sp, #0x4]
	ldr     r0, [r0, r1]
	bl      Function_21d5e10
	cmp     r0, #0x0
	beq     branch_21d9ec6
	b       branch_21d9fe8
@ 0x21d9ec6

.thumb
branch_21d9ec6: @ 21d9ec6 :thumb
	mov     r1, #0x79
	ldr     r0, [sp, #0x4]
	lsl     r1, r1, #4
	ldr     r0, [r0, r1]
	bl      Function_21d5f20
	cmp     r0, #0x0
	beq     branch_21d9f0e
	mov     r1, #0x79
	ldr     r0, [sp, #0x4]
	lsl     r1, r1, #4
	ldr     r0, [r0, r1]
	bl      Function_21d5e24
	mov     r1, r0
	ldr     r3, [sp, #0x4]
	ldr     r2, [pc, #0x138] @ 0x21da020, (=0x758)
	ldr     r0, [sp, #0x4]
	add     r3, #0x4c
	ldr     r0, [r0, r2]
	ldr     r2, [pc, #0x134] @ 0x21da024, (=0x4d8)
	bl      Function_21d8408
	ldr     r0, [sp, #0x4]
	ldr     r2, [pc, #0x130] @ 0x21da028, (=0x754)
	mov     r1, #0x1
	str     r1, [r0, r2]
	mov     r1, r2
	mov     r3, #0x0
	sub     r1, #0xf0
	str     r3, [r0, r1]
	ldr     r1, [pc, #0x124] @ 0x21da02c, (=0xffffc000)
	sub     r2, #0xec
	str     r1, [r0, r2]
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x21d9f0e

.thumb
branch_21d9f0e: @ 21d9f0e :thumb
	add     r0, sp, #0x24
	str     r0, [sp, #0x0]
	mov     r1, #0x79
	ldr     r0, [sp, #0x4]
	lsl     r1, r1, #4
	ldr     r0, [r0, r1]
	add     r1, sp, #0x30
	add     r2, sp, #0x2c
	add     r3, sp, #0x28
	bl      Function_21d5ee8
	mov     r1, #0x79
	ldr     r0, [sp, #0x4]
	lsl     r1, r1, #4
	ldr     r0, [r0, r1]
	bl      Function_21d5e14
	str     r0, [sp, #0x18]
	mov     r1, #0x79
	ldr     r0, [sp, #0x4]
	lsl     r1, r1, #4
	ldr     r0, [r0, r1]
	bl      Function_21d5e1c
	str     r0, [sp, #0x14]
	mov     r0, #0x0
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x28]
	ldr     r1, [sp, #0x24]
	str     r0, [sp, #0x1c]
	cmp     r0, r1
	bhi     branch_21d9fdc
	ldr     r0, [sp, #0x4]
	ldr     r6, [sp, #0x4]
	str     r0, [sp, #0x10]
	add     r0, #0x4c
	str     r0, [sp, #0x10]
	mov     r7, #0x5f
	ldr     r0, [sp, #0x1c]
	mov     r1, #0x6
	mul     r1, r0
	lsl     r7, r7, #4
	str     r1, [sp, #0xc]
	mov     r5, r6
.thumb
branch_21d9f66: @ 21d9f66 :thumb
	ldr     r4, [sp, #0x30]
	ldr     r0, [sp, #0x2c]
	cmp     r4, r0
	bhi     branch_21d9fca
	ldr     r1, [sp, #0x1c]
	ldr     r0, [sp, #0x14]
	sub     r1, r1, r0
	mov     r0, #0x18
	mov     r2, r1
	mul     r2, r0
	sub     r0, #0x1c
	sub     r0, r0, r2
	lsl     r0, r0, #12
	str     r0, [sp, #0x8]
.thumb
branch_21d9f82: @ 21d9f82 :thumb
	ldr     r1, [sp, #0x4]
	ldr     r0, [pc, #0x98] @ 0x21da020, (=0x758)
	ldr     r3, [sp, #0x10]
	ldr     r0, [r1, r0]
	ldr     r1, [sp, #0xc]
	mov     r2, r7
	add     r1, r4, r1
	bl      Function_21d8408
	ldr     r0, [r6, #0x4c]
	cmp     r0, #0x0
	beq     branch_21d9fc2
	ldr     r0, [sp, #0x18]
	add     r7, #0x10
	sub     r1, r4, r0
	mov     r0, #0x6
	mov     r2, r1
	lsl     r0, r0, #14
	mul     r2, r0
	ldr     r0, [pc, #0x84] @ 0x21da030, (=0x664)
	ldr     r1, [sp, #0x8]
	str     r2, [r5, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r5, r0]
	ldr     r0, [sp, #0x10]
	add     r6, #0x34
	add     r0, #0x34
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x20]
	add     r5, #0x8
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x20]
.thumb
branch_21d9fc2: @ 21d9fc2 :thumb
	ldr     r0, [sp, #0x2c]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r0
	bls     branch_21d9f82
.thumb
branch_21d9fca: @ 21d9fca :thumb
	ldr     r0, [sp, #0xc]
	ldr     r1, [sp, #0x24]
	.hword  0x1d80 @ add r0, r0, #0x6
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x1c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x1c]
	cmp     r0, r1
	bls     branch_21d9f66
.thumb
branch_21d9fdc: @ 21d9fdc :thumb
	ldr     r2, [pc, #0x48] @ 0x21da028, (=0x754)
	ldr     r1, [sp, #0x20]
	ldr     r0, [sp, #0x4]
	add     sp, #0x34
	str     r1, [r0, r2]
	pop     {r4-r7,pc}
@ 0x21d9fe8

.thumb
branch_21d9fe8: @ 21d9fe8 :thumb
	mov     r1, #0x79
	ldr     r0, [sp, #0x4]
	lsl     r1, r1, #4
	ldr     r0, [r0, r1]
	bl      Function_21d5e2c
	mov     r1, r0
	ldr     r3, [sp, #0x4]
	ldr     r2, [pc, #0x38] @ 0x21da034, (=0x75c)
	ldr     r0, [sp, #0x4]
	add     r3, #0x4c
	ldr     r0, [r0, r2]
	ldr     r2, [pc, #0x20] @ 0x21da024, (=0x4d8)
	bl      Function_21dcc44
	ldr     r2, [pc, #0x20] @ 0x21da028, (=0x754)
	ldr     r0, [sp, #0x4]
	mov     r1, #0x1
	str     r1, [r0, r2]
	mov     r1, r2
	mov     r3, #0x0
	sub     r1, #0xf0
	str     r3, [r0, r1]
	ldr     r1, [pc, #0x14] @ 0x21da02c, (=0xffffc000)
	sub     r2, #0xec
	str     r1, [r0, r2]
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x21da020

.word 0x758 @ 0x21da020
.word 0x4d8 @ 0x21da024
.word 0x754 @ 0x21da028
.word 0xffffc000 @ 0x21da02c
.word 0x664 @ 0x21da030
.word 0x75c @ 0x21da034
.thumb
Function_21da038: @ 21da038 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r0, [pc, #0x24] @ 0x21da064, (=0x754)
	mov     r4, #0x0
	ldr     r0, [r6, r0]
	cmp     r0, #0x0
	bls     branch_21da05c
	ldr     r7, [pc, #0x1c] @ 0x21da064, (=0x754)
	mov     r5, r6
.thumb
branch_21da04a: @ 21da04a :thumb
	ldr     r0, [r5, #0x4c]
	mov     r1, #0x2
	bl      Function_21d78ac
	ldr     r0, [r6, r7]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x34
	cmp     r4, r0
	bcc     branch_21da04a
.thumb
branch_21da05c: @ 21da05c :thumb
	ldr     r0, [pc, #0x8] @ 0x21da068, (=0x78c)
	mov     r1, #0x1
	strb    r1, [r6, r0]
	pop     {r3-r7,pc}
@ 0x21da064

.word 0x754 @ 0x21da064
.word 0x78c @ 0x21da068
.thumb
Function_21da06c: @ 21da06c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r0, #0x79
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	bl      Function_21d5e10
	cmp     r0, #0x0
	bne     branch_21da0e8
	mov     r0, #0x79
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	bl      Function_21d5f20
	cmp     r0, #0x0
	beq     branch_21da0a6
	mov     r0, #0x79
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	bl      Function_21d5e24
	mov     r1, r0
	ldr     r0, [pc, #0x68] @ 0x21da104, (=0x758)
	ldr     r0, [r5, r0]
	add     r5, #0x4c
	mov     r2, r5
	bl      Function_21d845c
	pop     {r3-r7,pc}
@ 0x21da0a6

.thumb
branch_21da0a6: @ 21da0a6 :thumb
	mov     r0, #0x79
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	bl      Function_21d5f3c
	mov     r7, r0
	ldr     r0, [pc, #0x54] @ 0x21da108, (=0x754)
	mov     r4, #0x0
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	bls     branch_21da100
	mov     r6, r5
	add     r6, #0x4c
.thumb
branch_21da0c0: @ 21da0c0 :thumb
	mov     r0, #0x79
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, r4
	bl      Function_21d5f6c
	mov     r1, r0
	ldr     r0, [pc, #0x34] @ 0x21da104, (=0x758)
	add     r1, r7, r1
	ldr     r0, [r5, r0]
	mov     r2, r6
	bl      Function_21d845c
	ldr     r0, [pc, #0x2c] @ 0x21da108, (=0x754)
	.hword  0x1c64 @ add r4, r4, #0x1
	ldr     r0, [r5, r0]
	add     r6, #0x34
	cmp     r4, r0
	bcc     branch_21da0c0
	pop     {r3-r7,pc}
@ 0x21da0e8

.thumb
branch_21da0e8: @ 21da0e8 :thumb
	mov     r0, #0x79
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	bl      Function_21d5e2c
	mov     r1, r0
	ldr     r0, [pc, #0x14] @ 0x21da10c, (=0x75c)
	ldr     r0, [r5, r0]
	add     r5, #0x4c
	mov     r2, r5
	bl      Function_21dcc80
.thumb
branch_21da100: @ 21da100 :thumb
	pop     {r3-r7,pc}
@ 0x21da102


.align 2


.word 0x758 @ 0x21da104
.word 0x754 @ 0x21da108
.word 0x75c @ 0x21da10c
.thumb
Function_21da110: @ 21da110 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, #0x79
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	bl      Function_21d5e10
	cmp     r0, #0x0
	bne     branch_21da186
	mov     r0, #0x79
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	bl      Function_21d5e24
	mov     r4, r0
	ldr     r0, [pc, #0xbc] @ 0x21da1ec, (=0x758)
	mov     r1, r4
	ldr     r0, [r5, r0]
	bl      Function_21d84c8
	mov     r6, r0
	mov     r1, r5
	mov     r2, #0x5f
	ldr     r0, [r5, #0x48]
	add     r1, #0x4c
	lsl     r2, r2, #4
	bl      Function_21da754
	mov     r2, #0x6
	ldr     r0, [r5, #0x48]
	mov     r1, r6
	lsl     r2, r2, #8
	bl      Function_21da754
	blx     Function_20c3e14
	ldr     r0, [pc, #0x90] @ 0x21da1ec, (=0x758)
	mov     r3, r5
	ldr     r0, [r5, r0]
	ldr     r2, [pc, #0x90] @ 0x21da1f0, (=0x4d8)
	mov     r1, r4
	add     r3, #0x80
	bl      Function_21d8408
	ldr     r0, [pc, #0x80] @ 0x21da1ec, (=0x758)
	mov     r2, r5
	ldr     r0, [r5, r0]
	mov     r1, r4
	add     r2, #0x4c
	bl      Function_21d845c
	mov     r0, r5
	add     r5, #0x4c
	add     r0, #0x80
	mov     r1, r5
	mov     r2, #0x1
	bl      Function_21da418
	pop     {r4-r6,pc}
@ 0x21da186

.thumb
branch_21da186: @ 21da186 :thumb
	mov     r0, #0x79
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	bl      Function_21d5e2c
	mov     r4, r0
	ldr     r0, [pc, #0x60] @ 0x21da1f4, (=0x75c)
	mov     r1, r4
	ldr     r0, [r5, r0]
	bl      Function_21dcd18
	mov     r6, r0
	mov     r1, r5
	mov     r2, #0x5f
	ldr     r0, [r5, #0x48]
	add     r1, #0x4c
	lsl     r2, r2, #4
	bl      Function_21da754
	mov     r2, #0x6
	ldr     r0, [r5, #0x48]
	mov     r1, r6
	lsl     r2, r2, #8
	bl      Function_21da754
	blx     Function_20c3e14
	ldr     r0, [pc, #0x34] @ 0x21da1f4, (=0x75c)
	mov     r3, r5
	ldr     r0, [r5, r0]
	ldr     r2, [pc, #0x2c] @ 0x21da1f0, (=0x4d8)
	mov     r1, r4
	add     r3, #0x80
	bl      Function_21dcc44
	ldr     r0, [pc, #0x24] @ 0x21da1f4, (=0x75c)
	mov     r2, r5
	ldr     r0, [r5, r0]
	mov     r1, r4
	add     r2, #0x4c
	bl      Function_21dccd4
	mov     r0, r5
	add     r5, #0x4c
	add     r0, #0x80
	mov     r1, r5
	mov     r2, #0x1
	bl      Function_21da418
	pop     {r4-r6,pc}
@ 0x21da1ea


.align 2


.word 0x758 @ 0x21da1ec
.word 0x4d8 @ 0x21da1f0
.word 0x75c @ 0x21da1f4
.thumb
Function_21da1f8: @ 21da1f8 :thumb
	ldr     r1, [pc, #0x4] @ 0x21da200, (=0x78c)
	mov     r2, #0x0
	strb    r2, [r0, r1]
	bx      lr
@ 0x21da200

.word 0x78c @ 0x21da200
.thumb
Function_21da204: @ 21da204 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, r4
	ldr     r0, [r4, #0x48]
	add     r1, #0x4c
	mov     r2, #0x1
	bl      Function_21da3f0
	ldr     r0, [pc, #0x8] @ 0x21da220, (=0x78c)
	mov     r1, #0x0
	strb    r1, [r4, r0]
	sub     r0, #0x38
	str     r1, [r4, r0]
	pop     {r4,pc}
@ 0x21da220

.word 0x78c @ 0x21da220
.thumb
Function_21da224: @ 21da224 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x79
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_21d5e10
	cmp     r0, #0x0
	bne     branch_21da24e
	mov     r0, #0x79
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_21d5e24
	mov     r1, r0
	ldr     r0, [pc, #0x24] @ 0x21da268, (=0x758)
	ldr     r0, [r4, r0]
	bl      Function_21d84c8
	ldr     r0, [r0, #0x0]
	pop     {r4,pc}
@ 0x21da24e

.thumb
branch_21da24e: @ 21da24e :thumb
	mov     r0, #0x79
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_21d5e2c
	mov     r1, r0
	ldr     r0, [pc, #0x10] @ 0x21da26c, (=0x75c)
	ldr     r0, [r4, r0]
	bl      Function_21dcd18
	ldr     r0, [r0, #0x0]
	pop     {r4,pc}
@ 0x21da266


.align 2


.word 0x758 @ 0x21da268
.word 0x75c @ 0x21da26c
.thumb
Function_21da270: @ 21da270 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	mov     r5, r0
	mov     r6, r1

	mov     r0, #PlPokeIcon_Narc
	mov     r1, #0xa
	str     r2, [sp, #0x8]
	str     r3, [sp, #0xc]
	ldr     r4, [sp, #0x48]
	bl      LoadFromNARC_8
	str     r0, [r5, #0x48]
	add     r0, sp, #0x1c
	blx     Function_20a81d0
	bl      Function_2079fd0
	mov     r1, r0
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	add     r0, sp, #0x1c
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x48]
	mov     r2, #0x1
	mov     r3, #0x40
	bl      Function_200716c
	bl      Function_2079fd0
	mov     r1, r0
	ldr     r0, [r5, #0x48]
	add     r2, sp, #0x18
	mov     r3, #0xa
	bl      Function_20071ec
	str     r0, [sp, #0x10]
	cmp     r0, #0x0
	beq     branch_21da308
	add     r0, sp, #0x1c
	blx     Function_20a81d0
	ldr     r0, [sp, #0x10]
	add     r1, sp, #0x14
	blx     Function_20a71ec
	ldr     r2, [sp, #0x18]
	mov     r7, r0
	ldr     r0, [r2, #0xc]
	mov     r1, #0x8
	str     r1, [sp, #0x0]
	ldr     r2, [r2, #0x8]
	ldr     r3, [pc, #0xa8] @ 0x21da380, (=0x57f)
	mov     r1, r0
	lsr     r2, r2, #1
	bl      Function_21d78c8
	cmp     r7, #0x0
	beq     branch_21da2f6
	add     r0, sp, #0x1c
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x18]
	ldr     r1, [sp, #0x14]
	mov     r2, #0xc0
	mov     r3, #0x1
	blx     Function_20a8948
	b       branch_21da302
@ 0x21da2f6

.thumb
branch_21da2f6: @ 21da2f6 :thumb
	ldr     r0, [sp, #0x18]
	mov     r1, #0xc0
	mov     r2, #0x1
	add     r3, sp, #0x1c
	blx     Function_20a8850
.thumb
branch_21da302: @ 21da302 :thumb
	ldr     r0, [sp, #0x10]
	bl      free
.thumb
branch_21da308: @ 21da308 :thumb
	mov     r0, #0xa
	mov     r3, r5
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x15
	mov     r2, #0x1
	add     r3, #0x10
	bl      Function_2007204
	str     r0, [r5, #0x8]
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x16
	mov     r2, #0x1
	add     r3, r5, #0x4
	bl      Function_2007220
	str     r0, [r5, #0x0]
	mov     r0, #0xa
	mov     r3, r5
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x17
	mov     r2, #0x1
	add     r3, #0x1c
	bl      Function_2007204
	str     r0, [r5, #0x14]
	mov     r0, #0xa
	mov     r3, r5
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x18
	mov     r2, #0x1
	add     r3, #0x20
	bl      Function_2007220
	str     r0, [r5, #0x18]
	ldr     r0, [r5, #0x8]
	cmp     r0, #0x0
	beq     branch_21da368
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_21da368
	ldr     r0, [r5, #0x48]
	cmp     r0, #0x0
	bne     branch_21da36e
.thumb
branch_21da368: @ 21da368 :thumb
	add     sp, #0x30
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21da36e

.thumb
branch_21da36e: @ 21da36e :thumb
	ldr     r0, [sp, #0xc]
	str     r0, [r5, #0x24]
	ldr     r0, [sp, #0x8]
	str     r0, [r5, #0x40]
	str     r6, [r5, #0x44]
	mov     r0, #0x1
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x21da37e


.align 2


.word 0x57f @ 0x21da380
.thumb
Function_21da384: @ 21da384 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x0
	beq     branch_21da396
	bl      free
	mov     r0, #0x0
	str     r0, [r4, #0x8]
.thumb
branch_21da396: @ 21da396 :thumb
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_21da3a4
	bl      free
	mov     r0, #0x0
	str     r0, [r4, #0x0]
.thumb
branch_21da3a4: @ 21da3a4 :thumb
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x0
	beq     branch_21da3b2
	bl      free
	mov     r0, #0x0
	str     r0, [r4, #0x14]
.thumb
branch_21da3b2: @ 21da3b2 :thumb
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x0
	beq     branch_21da3c0
	bl      free
	mov     r0, #0x0
	str     r0, [r4, #0x18]
.thumb
branch_21da3c0: @ 21da3c0 :thumb
	ldr     r0, [r4, #0x48]
	cmp     r0, #0x0
	beq     branch_21da3ca
	bl      Call_FS_CloseFile
.thumb
branch_21da3ca: @ 21da3ca :thumb
	pop     {r4,pc}
@ 0x21da3cc

.thumb
Function_21da3cc: @ 21da3cc :thumb
	push    {r4-r6,lr}
	mov     r4, r2
	mov     r0, r4
	mov     r5, r1
	.hword  0x1e64 @ sub r4, r4, #0x1
	cmp     r0, #0x0
	beq     branch_21da3ee
	mov     r6, #0x0
.thumb
branch_21da3dc: @ 21da3dc :thumb
	add     r0, r5, #0x4
	str     r6, [r5, #0x0]
	blx     Function_20a818c
	mov     r0, r4
	add     r5, #0x34
	.hword  0x1e64 @ sub r4, r4, #0x1
	cmp     r0, #0x0
	bne     branch_21da3dc
.thumb
branch_21da3ee: @ 21da3ee :thumb
	pop     {r4-r6,pc}
@ 0x21da3f0

.thumb
Function_21da3f0: @ 21da3f0 :thumb
	push    {r4-r6,lr}
	mov     r4, r2
	mov     r0, r4
	mov     r5, r1
	.hword  0x1e64 @ sub r4, r4, #0x1
	cmp     r0, #0x0
	beq     branch_21da416
	mov     r6, #0x0
.thumb
branch_21da400: @ 21da400 :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_21da40c
	bl      Function_2021bd4
	str     r6, [r5, #0x0]
.thumb
branch_21da40c: @ 21da40c :thumb
	mov     r0, r4
	add     r5, #0x34
	.hword  0x1e64 @ sub r4, r4, #0x1
	cmp     r0, #0x0
	bne     branch_21da400
.thumb
branch_21da416: @ 21da416 :thumb
	pop     {r4-r6,pc}
@ 0x21da418

.thumb
Function_21da418: @ 21da418 :thumb
	mov     r3, #0x34
	mul     r3, r2
	mov     r2, r3
	ldr     r3, [pc, #0x4] @ 0x21da424, (=MI_CpuCopy32)
	bx      r3
@ 0x21da422


.align 2


.word MI_CpuCopy32 @ 0x21da424
.thumb
Function_21da428: @ 21da428 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x44
	mov     r6, r1
	mov     r5, r0
	mov     r0, r6
	str     r2, [sp, #0x8]
	str     r3, [sp, #0xc]
	ldr     r4, [sp, #0x64]
	bl      InitEncryptPkmnData_Part1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x44]
	bl      Function_21d77d0
	mov     r2, r0
	ldr     r0, [r5, #0x4]
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x58]
	str     r0, [sp, #0x4]
	ldr     r3, [r5, #0x10]
	add     r0, sp, #0x20
	bl      Function_21d783c
	mov     r0, r6
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetBoxPkmnData
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x18]
	mov     r0, r6
	mov     r1, #0x4c
	mov     r2, #0x0
	bl      GetBoxPkmnData
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x14]
	mov     r0, r6
	mov     r1, #0x70
	mov     r2, #0x0
	bl      GetBoxPkmnData
	lsl     r0, r0, #24
	lsr     r7, r0, #24
	mov     r0, r6
	bl      Function_2079d40_GetPokeIconGraphicNr
	str     r0, [r4, #0x28]
	ldr     r0, [sp, #0x18]
	ldr     r2, [sp, #0x14]
	mov     r1, r7
	bl      GetPokeIconPaletteNr
	strh    r0, [r4, #0x2c]
	mov     r0, r6
	mov     r1, #0x6
	mov     r2, #0x0
	bl      GetBoxPkmnData
	strh    r0, [r4, #0x30]
	mov     r0, r6
	mov     r1, #0xb
	mov     r2, #0x0
	bl      GetBoxPkmnData
	strh    r0, [r4, #0x2e]
	add     r0, r4, #0x4
	blx     Function_20a818c
	mov     r0, r5
	add     r0, #0x4c
	str     r0, [sp, #0x0]
	mov     r3, #0xa
	ldr     r0, [r5, #0x48]
	ldr     r1, [r4, #0x28]
	mov     r2, #0x0
	lsl     r3, r3, #6
	bl      Function_2006dc8
	mov     r0, r5
	add     r0, #0x4c
	add     r1, sp, #0x1c
	blx     Function_20a7118
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x60] @ 0x21da544, (=0x300010)
	add     r3, r4, #0x4
	and     r1, r0
	ldr     r0, [sp, #0x1c]
	str     r1, [r0, #0x8]
	lsr     r1, r2, #17
	ldr     r0, [sp, #0x1c]
	mov     r2, #0x1
	str     r1, [r0, #0x10]
	ldr     r1, [sp, #0x60]
	ldr     r0, [sp, #0x1c]
	lsl     r1, r1, #5
	blx     Function_20a8224_LoadTexOBJ
	add     r0, r4, #0x4
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x5c]
	ldr     r2, [sp, #0x8]
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x24]
	ldr     r3, [sp, #0xc]
	add     r1, sp, #0x20
	bl      Function_21d785c
	str     r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_21da51e
	bl      ErrorHandling
.thumb
branch_21da51e: @ 21da51e :thumb
	ldrh    r1, [r4, #0x2c]
	ldr     r0, [r4, #0x0]
	.hword  0x1c89 @ add r1, r1, #0x2
	bl      Function_2021e90
	ldr     r0, [r5, #0x40]
	bl      Function_21d5ec8
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_21da63c
	ldr     r1, [sp, #0x10]
	mov     r0, r6
	bl      InitEncryptPkmnData_Part1Again
	add     sp, #0x44
	pop     {r4-r7,pc}
@ 0x21da544

.word 0x300010 @ 0x21da544



.thumb
Function_21da548: @ 21da548 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x40
	mov     r6, r1
	mov     r5, r0
	mov     r0, r6
	str     r2, [sp, #0x8]
	mov     r7, r3
	ldr     r4, [sp, #0x70]
	bl      InitEncryptPkmnData_Part1
	str     r0, [sp, #0x14]
	mov     r0, r6
	mov     r1, #0x4c
	mov     r2, #0x0
	bl      GetBoxPkmnData
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x10]
	mov     r0, r6
	mov     r1, #0x70
	mov     r2, #0x0
	bl      GetBoxPkmnData
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x44]
	bl      Function_21d77d0
	mov     r2, r0
	ldr     r0, [r5, #0x4]
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x64]
	str     r0, [sp, #0x4]
	ldr     r3, [r5, #0x10]
	add     r0, sp, #0x1c
	bl      Function_21d783c
	str     r7, [r4, #0x28]
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x10]
	bl      GetPokeIconPaletteNr
	strh    r0, [r4, #0x2c]
	mov     r0, r6
	mov     r1, #0x6
	mov     r2, #0x0
	bl      GetBoxPkmnData
	strh    r0, [r4, #0x30]
	mov     r0, r6
	mov     r1, #0xb
	mov     r2, #0x0
	bl      GetBoxPkmnData
	strh    r0, [r4, #0x2e]
	add     r0, r4, #0x4
	blx     Function_20a818c
	ldr     r0, [sp, #0x58]
	add     r1, sp, #0x18
	blx     Function_20a7118
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x64] @ 0x21da638, (=0x300010)
	add     r3, r4, #0x4
	and     r1, r0
	ldr     r0, [sp, #0x18]
	str     r1, [r0, #0x8]
	lsr     r1, r2, #17
	ldr     r0, [sp, #0x18]
	mov     r2, #0x1
	str     r1, [r0, #0x10]
	ldr     r1, [sp, #0x6c]
	ldr     r0, [sp, #0x18]
	lsl     r1, r1, #5
	blx     Function_20a8224_LoadTexOBJ
	add     r0, r4, #0x4
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x68]
	ldr     r2, [sp, #0x5c]
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x24]
	ldr     r3, [sp, #0x60]
	add     r1, sp, #0x1c
	bl      Function_21d785c
	str     r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_21da610
	bl      ErrorHandling
.thumb
branch_21da610: @ 21da610 :thumb
	ldrh    r1, [r4, #0x2c]
	ldr     r0, [r4, #0x0]
	.hword  0x1c89 @ add r1, r1, #0x2
	bl      Function_2021e90
	ldr     r0, [r5, #0x40]
	bl      Function_21d5ec8
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_21da63c
	ldr     r1, [sp, #0x14]
	mov     r0, r6
	bl      InitEncryptPkmnData_Part1Again
	add     sp, #0x40
	pop     {r3-r7,pc}
@ 0x21da636

.align 2
.word 0x300010 @ 0x21da638



.thumb
Function_21da63c: @ 21da63c :thumb
	push    {r4-r6,lr}
	cmp     r2, #0x0
	beq     branch_21da682
	mov     r3, #0x1
	mov     r0, r2
	tst     r0, r3
	beq     branch_21da65a
	ldrh    r0, [r1, #0x30]
	cmp     r0, #0x0
	bne     branch_21da65a
	ldr     r0, [r1, #0x0]
	mov     r1, r3
	bl      Function_2021fe0
	pop     {r4-r6,pc}
@ 0x21da65a

.thumb
branch_21da65a: @ 21da65a :thumb
	mov     r3, #0x0
	mov     r4, #0x1
	mov     r0, #0x2
.thumb
branch_21da660: @ 21da660 :thumb
	mov     r5, r0
	lsl     r5, r3
	tst     r5, r2
	beq     branch_21da67c
	mov     r5, r4
	ldrh    r6, [r1, #0x2e]
	lsl     r5, r3
	tst     r5, r6
	bne     branch_21da67c
	ldr     r0, [r1, #0x0]
	mov     r1, r4
	bl      Function_2021fe0
	pop     {r4-r6,pc}
@ 0x21da67c

.thumb
branch_21da67c: @ 21da67c :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	cmp     r3, #0x6
	blt     branch_21da660
.thumb
branch_21da682: @ 21da682 :thumb
	ldr     r0, [r1, #0x0]
	mov     r1, #0x0
	bl      Function_2021fe0
	pop     {r4-r6,pc}
@ 0x21da68c

.thumb
Function_21da68c: @ 21da68c :thumb
	strh    r2, [r1, #0x2e]
	bx      lr
@ 0x21da690

.thumb
Function_21da690: @ 21da690 :thumb
	strh    r2, [r1, #0x30]
	bx      lr
@ 0x21da694

.thumb
Function_21da694: @ 21da694 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r5, r0
	ldrh    r0, [r4, #0x30]
	mov     r6, r2
	cmp     r0, #0x70
	bne     branch_21da6c2
	mov     r1, #0x0
	ldr     r0, [pc, #0x98] @ 0x21da740, (=0x1e7)
	mov     r2, r1
	bl      Function_2079d8c
	ldr     r1, [r4, #0x28]
	cmp     r1, r0
	bne     branch_21da6c2
	ldr     r0, [pc, #0x88] @ 0x21da740, (=0x1e7)
	mov     r1, #0x0
	mov     r2, #0x1
	bl      Function_2079d8c
	str     r0, [r4, #0x28]
	b       branch_21da70a
@ 0x21da6c2

.thumb
branch_21da6c2: @ 21da6c2 :thumb
	ldrh    r0, [r4, #0x30]
	cmp     r0, #0x70
	beq     branch_21da6e6
	ldr     r0, [pc, #0x74] @ 0x21da740, (=0x1e7)
	mov     r1, #0x0
	mov     r2, #0x1
	bl      Function_2079d8c
	ldr     r1, [r4, #0x28]
	cmp     r1, r0
	bne     branch_21da6e6
	mov     r1, #0x0
	ldr     r0, [pc, #0x64] @ 0x21da740, (=0x1e7)
	mov     r2, r1
	bl      Function_2079d8c
	str     r0, [r4, #0x28]
	b       branch_21da70a
@ 0x21da6e6

.thumb
branch_21da6e6: @ 21da6e6 :thumb
	cmp     r6, #0x1
	bne     branch_21da73c
	mov     r0, #0x7b
	lsl     r0, r0, #2
	mov     r1, #0x0
	mov     r2, #0x1
	bl      Function_2079d8c
	ldr     r1, [r4, #0x28]
	cmp     r1, r0
	bne     branch_21da73c
	mov     r0, #0x7b
	mov     r1, #0x0
	lsl     r0, r0, #2
	mov     r2, r1
	bl      Function_2079d8c
	str     r0, [r4, #0x28]
.thumb
branch_21da70a: @ 21da70a :thumb
	mov     r0, r5
	ldr     r6, [r4, #0x8]
	add     r0, #0x4c
	str     r0, [sp, #0x0]
	mov     r3, #0xa
	mov     r7, #0x19
	ldr     r0, [r5, #0x48]
	ldr     r1, [r4, #0x28]
	mov     r2, #0x0
	lsl     r3, r3, #6
	lsl     r7, r7, #22
	bl      Function_2006dc8
	add     r5, #0x4c
	mov     r0, r5
	add     r1, sp, #0x4
	blx     Function_20a7118
	ldr     r0, [sp, #0x4]
	mov     r2, #0x2
	ldr     r0, [r0, #0x14]
	add     r1, r6, r7
	lsl     r2, r2, #8
	blx     MI_CpuCopy32
.thumb
branch_21da73c: @ 21da73c :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21da740

.word 0x1e7 @ 0x21da740
.thumb
Function_21da744: @ 21da744 :thumb
	push    {r3,lr}
	str     r1, [sp, #0x0]
	ldr     r0, [r0, #0x48]
	mov     r1, r2
	mov     r2, #0x0
	bl      Function_2006dc8
	pop     {r3,pc}
@ 0x21da754

.thumb
Function_21da754: @ 21da754 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	mov     r6, r2
	cmp     r0, #0x0
	beq     branch_21da7b0
	add     r0, r4, #0x4
	blx     Function_20a818c
	mov     r0, r5
	add     r0, #0x4c
	str     r0, [sp, #0x0]
	mov     r3, #0xa
	ldr     r0, [r5, #0x48]
	ldr     r1, [r4, #0x28]
	mov     r2, #0x0
	lsl     r3, r3, #6
	bl      Function_2006dc8
	add     r5, #0x4c
	mov     r0, r5
	add     r1, sp, #0x4
	blx     Function_20a7118
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x24] @ 0x21da7b4, (=0x300010)
	add     r3, r4, #0x4
	and     r1, r0
	ldr     r0, [sp, #0x4]
	str     r1, [r0, #0x8]
	lsr     r1, r2, #17
	ldr     r0, [sp, #0x4]
	mov     r2, #0x1
	str     r1, [r0, #0x10]
	ldr     r0, [sp, #0x4]
	lsl     r1, r6, #5
	blx     Function_20a8224_LoadTexOBJ
	ldr     r0, [r4, #0x0]
	add     r1, r4, #0x4
	bl      Function_2021f7c
.thumb
branch_21da7b0: @ 21da7b0 :thumb
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x21da7b4

.word 0x300010 @ 0x21da7b4
.thumb
Function_21da7b8: @ 21da7b8 :thumb
	push    {r3-r5,lr}
	mov     r4, r2
	mov     r5, r1
	.hword  0x1e60 @ sub r0, r4, #0x1
	cmp     r0, #0x1
	ldr     r0, [r5, #0x0]
	bhi     branch_21da7ce
	mov     r1, #0x1
	bl      Function_2021cf8
	b       branch_21da7d4
@ 0x21da7ce

.thumb
branch_21da7ce: @ 21da7ce :thumb
	mov     r1, #0x0
	bl      Function_2021cf8
.thumb
branch_21da7d4: @ 21da7d4 :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	bl      Function_2021d6c
	pop     {r3-r5,pc}
@ 0x21da7de


.align 2, 0


.thumb
Function_21da7e0: @ 21da7e0 :thumb
	push    {r3,lr}
	ldr     r0, [r1, #0x0]
	bl      Function_2021fd0
	cmp     r0, #0x0
	bne     branch_21da7f0
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21da7f0

.thumb
branch_21da7f0: @ 21da7f0 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21da7f4

.thumb
Function_21da7f4: @ 21da7f4 :thumb
	cmp     r2, #0x0
	beq     branch_21da7fc
	mov     r2, #0x6
	b       branch_21da7fe
@ 0x21da7fc

.thumb
branch_21da7fc: @ 21da7fc :thumb
	mov     r2, #0x2
.thumb
branch_21da7fe: @ 21da7fe :thumb
	ldr     r0, [r1, #0x0]
	ldrh    r1, [r1, #0x2c]
	ldr     r3, [pc, #0x4] @ 0x21da808, (=Function_2021e90+1)
	add     r1, r1, r2
	bx      r3
@ 0x21da808

.word Function_2021e90+1 @ 0x21da808



.thumb
Function_21da80c: @ 21da80c :thumb
	ldr     r0, [r0, #0x10]
	bx      lr
@ 0x21da810


.thumb
Function_21da810: @ 21da810 :thumb
	ldr     r0, [r0, #0x4]
	bx      lr
@ 0x21da814

.thumb
Function_21da814: @ 21da814 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	str     r1, [r4, #0x44]
	str     r3, [r4, #0x3c]
	str     r2, [r4, #0x40]
	str     r3, [r4, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	mov     r1, #0xa
	mov     r3, r4
	ldr     r0, [sp, #0x10]
	str     r1, [sp, #0x0]
	mov     r2, #0x1
	add     r3, #0x10
	bl      Function_2007204
	str     r0, [r4, #0x8]
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	mov     r3, r4
	ldr     r0, [sp, #0x10]
	mov     r1, #0xb
	mov     r2, #0x1
	add     r3, #0x14
	bl      Function_2007220
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x0
	beq     branch_21da858
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x0
	bne     branch_21da85e
.thumb
branch_21da858: @ 21da858 :thumb
	add     sp, #0x4
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x21da85e

.thumb
branch_21da85e: @ 21da85e :thumb
	mov     r0, #0x1
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21da864

.thumb
Function_21da864: @ 21da864 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x38
	mov     r5, r0
	add     r0, #0x18
	mov     r4, r1
	blx     Function_20a818c
	mov     r3, #0x0
	mov     r0, #0x9d
	str     r3, [sp, #0x0]
	mov     r2, #0x1
	str     r2, [sp, #0x4]
	lsl     r0, r0, #8
	str     r0, [sp, #0x8]
	mov     r0, #0xa
	str     r0, [sp, #0xc]
	mov     r0, r5
	add     r0, #0x18
	str     r0, [sp, #0x10]
	mov     r0, r4
	mov     r1, #0x9
	bl      Function_200718c
	ldr     r0, [r5, #0x44]
	bl      Function_21d77d0
	mov     r2, r0
	ldr     r0, [r5, #0x14]
	mov     r1, r5
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r3, [r5, #0x10]
	add     r0, sp, #0x14
	add     r1, #0x18
	bl      Function_21d783c
	ldr     r0, [r5, #0x44]
	bl      Function_21d7820
	mov     r2, r0
	mov     r0, #0x2c
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x0]
	add     r1, sp, #0x14
	add     r2, #0xb7
	mov     r3, #0xb0
	bl      Function_21d785c
	mov     r1, #0x1
	str     r0, [r5, #0x4]
	bl      Function_2021e90
	add     sp, #0x38
	pop     {r3-r5,pc}
@ 0x21da8d6


.align 2, 0


.thumb
Function_21da8d8: @ 21da8d8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x0
	beq     branch_21da8ea
	bl      free
	mov     r0, #0x0
	str     r0, [r4, #0x8]
.thumb
branch_21da8ea: @ 21da8ea :thumb
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x0
	beq     branch_21da8f8
	bl      free
	mov     r0, #0x0
	str     r0, [r4, #0xc]
.thumb
branch_21da8f8: @ 21da8f8 :thumb
	pop     {r4,pc}
@ 0x21da8fa


.align 2, 0


.thumb
Function_21da8fc: @ 21da8fc :thumb
	push    {r3,lr}
	cmp     r1, #0x0
	beq     branch_21da90c
	cmp     r1, #0x1
	beq     branch_21da916
	cmp     r1, #0x2
	beq     branch_21da920
	pop     {r3,pc}
@ 0x21da90c

.thumb
branch_21da90c: @ 21da90c :thumb
	ldr     r0, [r0, #0x4]
	mov     r1, #0x0
	bl      Function_2021d6c
	pop     {r3,pc}
@ 0x21da916

.thumb
branch_21da916: @ 21da916 :thumb
	ldr     r0, [r0, #0x4]
	mov     r1, #0x1
	bl      Function_2021d6c
	pop     {r3,pc}
@ 0x21da920

.thumb
branch_21da920: @ 21da920 :thumb
	ldr     r0, [r0, #0x4]
	mov     r1, #0x2
	bl      Function_2021d6c
	pop     {r3,pc}
@ 0x21da92a


.align 2, 0


.thumb
Function_21da92c: @ 21da92c :thumb
	push    {r3-r7,lr}
	mov     r6, r2
	mov     r5, r0
	mov     r0, r6
	mov     r4, r1
	mov     r7, r3
	bl      Function_21d5e08
	cmp     r0, #0x4
	bne     branch_21da948
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21da948

.thumb
branch_21da948: @ 21da948 :thumb
	str     r4, [r5, #0x14]
	str     r7, [r5, #0x8]
	ldr     r0, [sp, #0x18]
	str     r6, [r5, #0x10]
	str     r0, [r5, #0xc]
	mov     r0, #0x0
	str     r0, [r5, #0x4]
	str     r0, [r5, #0x4c]
	str     r0, [r5, #0x24]
	mov     r0, r4
	bl      Function_21d7818
	str     r0, [r5, #0x20]
	mov     r0, #0x9
	mov     r1, #0x6
	mov     r2, #0xf
	mov     r3, #0xa
	bl      Function_200c440
	str     r0, [r5, #0x18]
	mov     r0, #0x1
	mov     r1, #0x2
	mov     r2, #0xf
	mov     r3, #0xa
	bl      Function_200c440
	str     r0, [r5, #0x1c]
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	mov     r3, r5
	ldr     r0, [sp, #0x20]
	mov     r1, #0x10
	mov     r2, #0x1
	add     r3, #0x2c
	bl      Function_2007204
	str     r0, [r5, #0x28]
	mov     r0, #0x0
	str     r0, [r5, #0x30]
	ldr     r0, [sp, #0x1c]
	mov     r1, #0x15
	bl      Function_200b1ec_CallMsgDecrypt
	str     r0, [r5, #0x44]
	ldr     r0, [sp, #0x1c]
	mov     r1, #0x16
	bl      Function_200b1ec_CallMsgDecrypt
	str     r0, [r5, #0x48]
	bl      Function_207c944
	mov     r4, r0
	bl      Function_207c924
	mov     r1, r0
	mov     r0, #0xa
	mov     r3, r5
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r2, #0x1
	add     r3, #0x38
	bl      Function_2006fa0
	mov     r1, #0x0
	str     r0, [r5, #0x34]
	mov     r2, r5
	mov     r0, r1
.thumb
branch_21da9ce: @ 21da9ce :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r0, [r2, #0x3c]
	.hword  0x1d12 @ add r2, r2, #0x4
	cmp     r1, #0x2
	blt     branch_21da9ce
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	pop     {r3-r7,pc}
@ 0x21da9de


.align 2, 0


.thumb
Function_21da9e0: @ 21da9e0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_21daa7e
	ldr     r0, [r5, #0x4]
	cmp     r0, #0x0
	beq     branch_21daa0e
	mov     r6, #0x0
	mov     r4, r6
.thumb
branch_21da9f4: @ 21da9f4 :thumb
	ldr     r0, [r5, #0x4]
	add     r0, r0, r4
	bl      Function_201a8fc
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x10
	cmp     r6, #0x4
	blt     branch_21da9f4
	ldr     r0, [r5, #0x4]
	bl      free
	mov     r0, #0x0
	str     r0, [r5, #0x4]
.thumb
branch_21daa0e: @ 21daa0e :thumb
	ldr     r0, [r5, #0x18]
	cmp     r0, #0x0
	beq     branch_21daa18
	bl      Function_200c560
.thumb
branch_21daa18: @ 21daa18 :thumb
	ldr     r0, [r5, #0x1c]
	cmp     r0, #0x0
	beq     branch_21daa22
	bl      Function_200c560
.thumb
branch_21daa22: @ 21daa22 :thumb
	ldr     r0, [r5, #0x44]
	cmp     r0, #0x0
	beq     branch_21daa2c
	bl      Function_20237bc_FreeMsg
.thumb
branch_21daa2c: @ 21daa2c :thumb
	ldr     r0, [r5, #0x48]
	cmp     r0, #0x0
	beq     branch_21daa36
	bl      Function_20237bc_FreeMsg
.thumb
branch_21daa36: @ 21daa36 :thumb
	ldr     r0, [r5, #0x24]
	cmp     r0, #0x0
	beq     branch_21daa44
	bl      Function_2007dc8
	mov     r0, #0x0
	str     r0, [r5, #0x24]
.thumb
branch_21daa44: @ 21daa44 :thumb
	ldr     r0, [r5, #0x28]
	cmp     r0, #0x0
	beq     branch_21daa4e
	bl      free
.thumb
branch_21daa4e: @ 21daa4e :thumb
	ldr     r0, [r5, #0x30]
	cmp     r0, #0x0
	beq     branch_21daa58
	bl      Function_2021bd4
.thumb
branch_21daa58: @ 21daa58 :thumb
	ldr     r0, [r5, #0x34]
	cmp     r0, #0x0
	beq     branch_21daa62
	bl      free
.thumb
branch_21daa62: @ 21daa62 :thumb
	mov     r6, #0x0
	mov     r4, r5
.thumb
branch_21daa66: @ 21daa66 :thumb
	ldr     r0, [r4, #0x3c]
	cmp     r0, #0x0
	beq     branch_21daa70
	bl      Function_2021bd4
.thumb
branch_21daa70: @ 21daa70 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x2
	blt     branch_21daa66
	mov     r0, r5
	bl      Function_21dac90
.thumb
branch_21daa7e: @ 21daa7e :thumb
	pop     {r4-r6,pc}
@ 0x21daa80

.thumb
Function_21daa80: @ 21daa80 :thumb
	push    {r3,lr}
	ldr     r1, [r0, #0x0]
	cmp     r1, #0x0
	beq     branch_21daa8e
	ldr     r0, [r0, #0x20]
	bl      Function_2008a94
.thumb
branch_21daa8e: @ 21daa8e :thumb
	pop     {r3,pc}
@ 0x21daa90

.thumb
Function_21daa90: @ 21daa90 :thumb
	push    {r4,lr}
	add     sp, #-0x20
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r4, r0
	str     r2, [sp, #0x4]
	add     r0, sp, #0x10
	mov     r1, #0x1
	mov     r3, r2
	str     r2, [sp, #0x8]
	bl      GetArchiveFileIDsForPkmnPlatGraphics
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldr     r0, [r4, #0x20]
	add     r1, sp, #0x10
	mov     r2, #0x2c
	mov     r3, #0x54
	bl      Function_2007c34
	str     r0, [r4, #0x24]
	add     sp, #0x20
	pop     {r4,pc}
@ 0x21daac4

.thumb
Function_21daac4: @ 21daac4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x24]
	cmp     r0, #0x0
	beq     branch_21daad8
	bl      Function_2007dc8
	mov     r0, #0x0
	str     r0, [r4, #0x24]
	pop     {r4,pc}
@ 0x21daad8

.thumb
branch_21daad8: @ 21daad8 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21daadc

.thumb
Function_21daadc: @ 21daadc :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_21dab3c
	mov     r0, #0xa
	mov     r1, #0x4
	bl      Function_201a778
	str     r0, [r5, #0x4]
	cmp     r0, #0x0
	beq     branch_21dab30
	mov     r7, #0x0
	ldr     r6, [pc, #0x48] @ 0x21dab40, (=0x21e01d8)
	mov     r4, r7
.thumb
branch_21daafa: @ 21daafa :thumb
	ldr     r1, [r5, #0x4]
	ldr     r0, [r5, #0x8]
	add     r1, r1, r4
	mov     r2, r6
	bl      Function_201a8d4
	cmp     r7, #0x3
	ldr     r0, [r5, #0x4]
	beq     branch_21dab14
	add     r0, r0, r4
	bl      Function_201a9f4
	b       branch_21dab1e
@ 0x21dab14

.thumb
branch_21dab14: @ 21dab14 :thumb
	add     r0, r0, r4
	mov     r1, #0xc
	mov     r2, #0x2
	bl      Function_201aa10
.thumb
branch_21dab1e: @ 21dab1e :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r6, #0x8
	add     r4, #0x10
	cmp     r7, #0x4
	blt     branch_21daafa
	ldr     r0, [r5, #0x8]
	mov     r1, #0x2
	bl      Function_2019448
.thumb
branch_21dab30: @ 21dab30 :thumb
	mov     r0, r5
	bl      Function_21dab44
	mov     r0, r5
	bl      Function_21dac4c
.thumb
branch_21dab3c: @ 21dab3c :thumb
	pop     {r3-r7,pc}
@ 0x21dab3e


.align 2


.word 0x21e01d8 @ 0x21dab40
.thumb
Function_21dab44: @ 21dab44 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x68
	mov     r5, r0
	bl      Function_207c944
	str     r0, [sp, #0x1c]
	mov     r0, #0x2
	bl      Function_207c908
	str     r0, [sp, #0x18]
	bl      Function_207c920
	mov     r1, r0
	mov     r0, #0x60
	str     r0, [sp, #0x0]
	mov     r3, #0xa
	str     r3, [sp, #0x4]
	ldr     r0, [sp, #0x1c]
	mov     r2, #0x1
	lsl     r3, r3, #5
	bl      Call_LoadFromNARC_RLCN
	mov     r0, #0x0
	mov     r6, #0x5e
	str     r0, [sp, #0x14]
	lsl     r6, r6, #4
	mov     r7, #0x18
	mov     r4, r5
branch_21dab7c: @ 21dab7c :thumb
	add     r0, sp, #0x44
	blx     Function_20a818c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	lsl     r0, r6, #5
	str     r0, [sp, #0x8]
	mov     r0, #0xa
	str     r0, [sp, #0xc]
	add     r0, sp, #0x44
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x1c]
	ldr     r1, [sp, #0x18]
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_2006f28
	ldr     r0, [r5, #0x14]
	bl      Function_21d77d0
	mov     r2, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	ldr     r3, [r5, #0x38]
	add     r0, sp, #0x20
	add     r1, sp, #0x44
	bl      Function_21d783c
	mov     r0, #0x2e
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0xc]
	add     r1, sp, #0x20
	mov     r2, r7
	mov     r3, #0xb0
	bl      Function_21d785c
	str     r0, [r4, #0x3c]
	cmp     r0, #0x0
	bne     branch_21dabda
	bl      ErrorHandling
.thumb
branch_21dabda: @ 21dabda :thumb
	ldr     r0, [r4, #0x3c]
	mov     r1, #0x0
	bl      Function_2021cac
	ldr     r0, [sp, #0x14]
	add     r6, #0x8
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r7, #0x24
	.hword  0x1d24 @ add r4, r4, #0x4
	str     r0, [sp, #0x14]
	cmp     r0, #0x2
	bcc     branch_21dab7c
	add     r0, sp, #0x44
	blx     Function_20a818c
	mov     r3, #0x0
	mov     r0, #0xb9
	str     r3, [sp, #0x0]
	mov     r2, #0x1
	str     r2, [sp, #0x4]
	lsl     r0, r0, #8
	str     r0, [sp, #0x8]
	mov     r0, #0xa
	str     r0, [sp, #0xc]
	add     r0, sp, #0x44
	str     r0, [sp, #0x10]
	mov     r0, #0x12
	mov     r1, #0xf
	bl      Function_2006f00
	ldr     r0, [r5, #0x14]
	bl      Function_21d77d0
	mov     r2, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	ldr     r3, [r5, #0x2c]
	add     r0, sp, #0x20
	add     r1, sp, #0x44
	bl      Function_21d783c
	mov     r0, #0x2f
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0xc]
	add     r1, sp, #0x20
	mov     r2, #0x38
	mov     r3, #0xb0
	bl      Function_21d785c
	str     r0, [r5, #0x30]
	add     sp, #0x68
	pop     {r3-r7,pc}
@ 0x21dac4a


.align 2, 0


.thumb
Function_21dac4c: @ 21dac4c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x4c]
	cmp     r0, #0x0
	bne     branch_21dac8a
	mov     r0, #0xa
	mov     r1, #0xc
	bl      malloc
	mov     r4, r0
	beq     branch_21dac86
	ldr     r0, [r5, #0x10]
	bl      Function_21d5e70
	ldrb    r0, [r0, #0xf]
	cmp     r0, #0x0
	beq     branch_21dac72
	mov     r0, #0x4
	b       branch_21dac74
@ 0x21dac72

.thumb
branch_21dac72: @ 21dac72 :thumb
	mov     r0, #0x0
.thumb
branch_21dac74: @ 21dac74 :thumb
	strh    r0, [r4, #0x0]
	ldr     r0, [pc, #0x14] @ 0x21dac8c, (=0x21dacf9)
	str     r5, [r4, #0x8]
	mov     r1, r4
	mov     r2, #0x1
	bl      AddTaskToTaskList1
	str     r0, [r5, #0x4c]
	pop     {r3-r5,pc}
@ 0x21dac86

.thumb
branch_21dac86: @ 21dac86 :thumb
	bl      ErrorHandling
.thumb
branch_21dac8a: @ 21dac8a :thumb
	pop     {r3-r5,pc}
@ 0x21dac8c

.word 0x21dacf9 @ 0x21dac8c
.thumb
Function_21dac90: @ 21dac90 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4c]
	cmp     r0, #0x0
	beq     branch_21dacac
	bl      Function_201ced0
	bl      free
	ldr     r0, [r4, #0x4c]
	bl      Call_RemoveTaskFromTaskList
	mov     r0, #0x0
	str     r0, [r4, #0x4c]
.thumb
branch_21dacac: @ 21dacac :thumb
	pop     {r4,pc}
@ 0x21dacae


.align 2, 0


.thumb
Function_21dacb0: @ 21dacb0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x4c]
	bl      Function_201ced0
	mov     r4, r0
	beq     branch_21dacd8
	ldr     r0, [r5, #0x10]
	bl      Function_21d5e70
	ldrb    r0, [r0, #0xf]
	cmp     r0, #0x0
	beq     branch_21dacce
	mov     r0, #0x4
	b       branch_21dacd0
@ 0x21dacce

.thumb
branch_21dacce: @ 21dacce :thumb
	mov     r0, #0x0
.thumb
branch_21dacd0: @ 21dacd0 :thumb
	strh    r0, [r4, #0x0]
	mov     r0, r5
	bl      Function_21dae10
.thumb
branch_21dacd8: @ 21dacd8 :thumb
	pop     {r3-r5,pc}
@ 0x21dacda


.align 2, 0


.thumb
Function_21dacdc: @ 21dacdc :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4c]
	bl      Function_201ced0
	cmp     r0, #0x0
	beq     branch_21dacf4
	mov     r1, #0x4
	strh    r1, [r0, #0x0]
	mov     r0, r4
	bl      Function_21dae10
.thumb
branch_21dacf4: @ 21dacf4 :thumb
	pop     {r4,pc}
@ 0x21dacf6


.align 2, 0


.thumb
Function_21dacf8: @ 21dacf8 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldrh    r0, [r4, #0x0]
	ldr     r5, [r4, #0x8]
	cmp     r0, #0x4
	bhi     branch_21dadc8
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21dad10

Jumppoints_21dad10:
.hword branch_21dad1a - Jumppoints_21dad10 - 2
.hword branch_21dad2c - Jumppoints_21dad10 - 2
.hword branch_21dad4c - Jumppoints_21dad10 - 2
.hword branch_21dad76 - Jumppoints_21dad10 - 2
.hword branch_21dadc8 - Jumppoints_21dad10 - 2
.thumb
branch_21dad1a: @ 21dad1a :thumb
	ldr     r0, [r5, #0x10]
	bl      Function_21d5e4c
	cmp     r0, #0x0
	beq     branch_21dadc8
	mov     r0, #0x0
	strh    r0, [r4, #0x2]
	mov     r0, #0x1
	strh    r0, [r4, #0x0]
.thumb
branch_21dad2c: @ 21dad2c :thumb
	ldr     r0, [r5, #0x4]
	ldrh    r2, [r4, #0x2]
	add     r0, #0x30
	mov     r1, r5
	mov     r3, #0x0
	bl      Function_21dae60
	ldr     r0, [r5, #0x4]
	add     r0, #0x30
	bl      Function_201accc
	mov     r0, #0x0
	strh    r0, [r4, #0x4]
	mov     r0, #0x2
	strh    r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x21dad4c

.thumb
branch_21dad4c: @ 21dad4c :thumb
	ldr     r0, [r5, #0x10]
	bl      Function_21d5e70
	ldrb    r0, [r0, #0xf]
	cmp     r0, #0x0
	bne     branch_21dadc8
	ldrh    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x4]
	ldrh    r0, [r4, #0x4]
	cmp     r0, #0x50
	bls     branch_21dadc8
	mov     r0, r4
	bl      Function_21dae2c
	mov     r0, #0x0
	strh    r0, [r4, #0x4]
	strh    r0, [r4, #0x6]
	mov     r0, #0x3
	strh    r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x21dad76

.thumb
branch_21dad76: @ 21dad76 :thumb
	ldrh    r0, [r4, #0x6]
	mov     r1, #0x1
	lsl     r1, r1, #14
	.hword  0x1d00 @ add r0, r0, #0x4
	strh    r0, [r4, #0x6]
	mov     r0, r5
	bl      Function_21dadcc
	ldr     r0, [r5, #0x4]
	mov     r1, #0x0
	add     r0, #0x30
	mov     r2, #0x4
	mov     r3, r1
	bl      Function_201c04c
	ldr     r0, [r5, #0x4]
	add     r0, #0x30
	bl      Function_201accc
	ldrh    r0, [r4, #0x6]
	cmp     r0, #0x10
	bcc     branch_21dadc8
	ldrh    r0, [r4, #0x2]
	cmp     r0, #0x1
	bne     branch_21dadae
	mov     r0, r5
	bl      Function_21dae10
.thumb
branch_21dadae: @ 21dadae :thumb
	ldrh    r0, [r4, #0x2]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x2]
	ldrh    r0, [r4, #0x2]
	cmp     r0, #0x4
	bcc     branch_21dadbe
	mov     r0, #0x0
	strh    r0, [r4, #0x2]
.thumb
branch_21dadbe: @ 21dadbe :thumb
	mov     r0, #0x0
	strh    r0, [r4, #0x6]
	strh    r0, [r4, #0x4]
	mov     r0, #0x2
	strh    r0, [r4, #0x0]
.thumb
branch_21dadc8: @ 21dadc8 :thumb
	pop     {r3-r5,pc}
@ 0x21dadca


.align 2, 0


.thumb
Function_21dadcc: @ 21dadcc :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r7, r1
	mov     r4, #0x0
.thumb
branch_21dadd6: @ 21dadd6 :thumb
	ldr     r0, [r5, #0x3c]
	bl      Function_2021d28
	mov     r6, r0
	add     r3, sp, #0x0
	ldmia   r6!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r1, r2
	str     r0, [r3, #0x0]
	ldr     r0, [sp, #0x4]
	sub     r0, r0, r7
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x3c]
	bl      Function_2021c50
	cmp     r4, #0x0
	bne     branch_21dae02
	ldr     r0, [r5, #0x3c]
	bl      Function_2021d34
.thumb
branch_21dae02: @ 21dae02 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x2
	blt     branch_21dadd6
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21dae0e


.align 2, 0


.thumb
Function_21dae10: @ 21dae10 :thumb
	push    {r4-r6,lr}
	mov     r4, #0x0
	mov     r5, r0
	mov     r6, r4
.thumb
branch_21dae18: @ 21dae18 :thumb
	ldr     r0, [r5, #0x3c]
	mov     r1, r6
	bl      Function_2021cac
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x2
	blt     branch_21dae18
	pop     {r4-r6,pc}
@ 0x21dae2a


.align 2, 0


.thumb
Function_21dae2c: @ 21dae2c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x8]
	mov     r1, #0x0
	ldr     r4, [r0, #0x4]
	add     r4, #0x30
	mov     r0, r4
	bl      Function_201ada4_ClearTextBox
	ldrh    r2, [r5, #0x2]
	ldr     r1, [r5, #0x8]
	mov     r0, r4
	mov     r3, #0x0
	bl      Function_21dae60
	ldrh    r0, [r5, #0x2]
	add     r2, r0, #0x1
	cmp     r2, #0x4
	bcc     branch_21dae54
	mov     r2, #0x0
.thumb
branch_21dae54: @ 21dae54 :thumb
	ldr     r1, [r5, #0x8]
	mov     r0, r4
	mov     r3, #0x1
	bl      Function_21dae60
	pop     {r3-r5,pc}
@ 0x21dae60

.thumb
Function_21dae60: @ 21dae60 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x1c
	mov     r4, r1
	lsl     r5, r3, #4
	cmp     r2, #0x3
	bls     branch_21dae6e
	b       branch_21daf8e
@ 0x21dae6e

.thumb
branch_21dae6e: @ 21dae6e :thumb
	add     r1, r2, r2
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21dae7a

Jumppoints_21dae7a:
.hword branch_21dae82 - Jumppoints_21dae7a - 2
.hword branch_21dae94 - Jumppoints_21dae7a - 2
.hword branch_21dae88 - Jumppoints_21dae7a - 2
.hword branch_21dae8e - Jumppoints_21dae7a - 2
.thumb
branch_21dae82: @ 21dae82 :thumb
	ldr     r1, [r4, #0x10]
	ldr     r2, [r1, #0x68]
	b       branch_21daf7a
@ 0x21dae88

.thumb
branch_21dae88: @ 21dae88 :thumb
	ldr     r1, [r4, #0x10]
	ldr     r2, [r1, #0x6c]
	b       branch_21daf7a
@ 0x21dae8e

.thumb
branch_21dae8e: @ 21dae8e :thumb
	ldr     r1, [r4, #0x10]
	ldr     r2, [r1, #0x70]
	b       branch_21daf7a
@ 0x21dae94

.thumb
branch_21dae94: @ 21dae94 :thumb
	bl      Function_207c944
	ldr     r0, [r4, #0x10]
	add     r0, #0x58
	ldrb    r0, [r0, #0x0]
	bl      Function_207c908
	bl      Function_207c944
	mov     r6, r0
	ldr     r0, [r4, #0x10]
	add     r0, #0x58
	ldrb    r0, [r0, #0x0]
	bl      Function_207c908
	mov     r2, #0x0
	mov     r1, r0
	mov     r3, #0x2f
	str     r2, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0xa
	str     r0, [sp, #0x8]
	mov     r0, r6
	lsl     r3, r3, #10
	bl      Function_2006ec0
	ldr     r0, [r4, #0x3c]
	bl      Function_2021d28
	mov     r6, r0
	add     r3, sp, #0x10
	ldmia   r6!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	add     r5, #0xb0
	str     r0, [r3, #0x0]
	lsl     r0, r5, #12
	str     r0, [sp, #0x14]
	ldr     r0, [r4, #0x3c]
	mov     r1, r2
	bl      Function_2021c50
	ldr     r0, [r4, #0x10]
	add     r0, #0x58
	ldrb    r0, [r0, #0x0]
	bl      Function_207c92c
	mov     r1, r0
	ldr     r0, [r4, #0x3c]
	add     r1, #0xa
	bl      Function_2021e90
	ldr     r0, [r4, #0x3c]
	mov     r1, #0x1
	bl      Function_2021cac
	ldr     r1, [r4, #0x10]
	mov     r0, r1
	add     r0, #0x59
	add     r1, #0x58
	ldrb    r5, [r0, #0x0]
	ldrb    r0, [r1, #0x0]
	cmp     r0, r5
	beq     branch_21daf6e
	bl      Function_207c944
	mov     r6, r0
	mov     r0, r5
	bl      Function_207c908
	mov     r2, #0x0
	mov     r1, r0
	mov     r3, #0xbd
	str     r2, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0xa
	str     r0, [sp, #0x8]
	mov     r0, r6
	lsl     r3, r3, #8
	bl      Function_2006ec0
	mov     r0, #0x9
	ldr     r1, [sp, #0x10]
	lsl     r0, r0, #14
	add     r0, r1, r0
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x40]
	add     r1, sp, #0x10
	bl      Function_2021c50
	ldr     r0, [r4, #0x10]
	add     r0, #0x59
	ldrb    r0, [r0, #0x0]
	bl      Function_207c92c
	mov     r1, r0
	ldr     r0, [r4, #0x40]
	add     r1, #0xa
	bl      Function_2021e90
	ldr     r0, [r4, #0x40]
	mov     r1, #0x1
	bl      Function_2021cac
	add     sp, #0x1c
	pop     {r3-r6,pc}
@ 0x21daf6e

.thumb
branch_21daf6e: @ 21daf6e :thumb
	ldr     r0, [r4, #0x40]
	mov     r1, #0x0
	bl      Function_2021cac
	add     sp, #0x1c
	pop     {r3-r6,pc}
@ 0x21daf7a

.thumb
branch_21daf7a: @ 21daf7a :thumb
	str     r5, [sp, #0x0]
	mov     r1, #0xff
	str     r1, [sp, #0x4]
	ldr     r1, [pc, #0x10] @ 0x21daf94, (=0x90600)
	str     r1, [sp, #0x8]
	mov     r1, #0x0
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      Function_201d78c
.thumb
branch_21daf8e: @ 21daf8e :thumb
	add     sp, #0x1c
	pop     {r3-r6,pc}
@ 0x21daf92


.align 2


.word 0x90600 @ 0x21daf94
.thumb
Function_21daf98: @ 21daf98 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_21daff6
	ldr     r0, [r4, #0x4]
	mov     r1, #0xf
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [r4, #0x4]
	mov     r1, #0xf
	add     r0, #0x10
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [r4, #0x4]
	mov     r1, #0xf
	add     r0, #0x20
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	add     r0, #0x30
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [r4, #0x10]
	bl      Function_21d5e4c
	cmp     r0, #0x0
	beq     branch_21dafd8
	mov     r0, r4
	bl      Function_21db0e4
.thumb
branch_21dafd8: @ 21dafd8 :thumb
	ldr     r0, [r4, #0x4]
	bl      Function_201accc
	ldr     r0, [r4, #0x4]
	add     r0, #0x10
	bl      Function_201accc
	ldr     r0, [r4, #0x4]
	add     r0, #0x20
	bl      Function_201accc
	ldr     r0, [r4, #0x4]
	add     r0, #0x30
	bl      Function_201accc
.thumb
branch_21daff6: @ 21daff6 :thumb
	pop     {r4,pc}
@ 0x21daff8

.thumb
Function_21daff8: @ 21daff8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_21db074
	ldr     r0, [r4, #0x4]
	mov     r1, #0xf
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [r4, #0x4]
	mov     r1, #0xf
	add     r0, #0x10
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [r4, #0x4]
	mov     r1, #0xf
	add     r0, #0x20
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	add     r0, #0x30
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [r4, #0x24]
	cmp     r0, #0x0
	beq     branch_21db036
	bl      Function_2007dc8
	mov     r0, #0x0
	str     r0, [r4, #0x24]
.thumb
branch_21db036: @ 21db036 :thumb
	ldr     r0, [r4, #0x10]
	bl      Function_21d5e4c
	cmp     r0, #0x0
	beq     branch_21db048
	mov     r0, r4
	bl      Function_21db0e4
	b       branch_21db050
@ 0x21db048

.thumb
branch_21db048: @ 21db048 :thumb
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21db24c
.thumb
branch_21db050: @ 21db050 :thumb
	ldr     r0, [r4, #0x4]
	bl      Function_201accc
	ldr     r0, [r4, #0x4]
	add     r0, #0x10
	bl      Function_201accc
	ldr     r0, [r4, #0x4]
	add     r0, #0x20
	bl      Function_201accc
	ldr     r0, [r4, #0x4]
	add     r0, #0x30
	bl      Function_201accc
	mov     r0, r4
	bl      Function_21dacb0
.thumb
branch_21db074: @ 21db074 :thumb
	pop     {r4,pc}
@ 0x21db076


.align 2, 0


.thumb
Function_21db078: @ 21db078 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_21db0e2
	ldr     r0, [r4, #0x4]
	mov     r1, #0xf
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [r4, #0x4]
	mov     r1, #0xf
	add     r0, #0x10
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [r4, #0x4]
	mov     r1, #0xf
	add     r0, #0x20
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	add     r0, #0x30
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [r4, #0x24]
	cmp     r0, #0x0
	beq     branch_21db0b6
	bl      Function_2007dc8
	mov     r0, #0x0
	str     r0, [r4, #0x24]
.thumb
branch_21db0b6: @ 21db0b6 :thumb
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21db24c
	ldr     r0, [r4, #0x4]
	bl      Function_201accc
	ldr     r0, [r4, #0x4]
	add     r0, #0x10
	bl      Function_201accc
	ldr     r0, [r4, #0x4]
	add     r0, #0x20
	bl      Function_201accc
	ldr     r0, [r4, #0x4]
	add     r0, #0x30
	bl      Function_201accc
	mov     r0, r4
	bl      Function_21dacdc
.thumb
branch_21db0e2: @ 21db0e2 :thumb
	pop     {r4,pc}
@ 0x21db0e4

.thumb
Function_21db0e4: @ 21db0e4 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x20
	mov     r5, r0
	ldr     r0, [r5, #0x10]
	bl      Function_21d5e70
	mov     r1, #0x0
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x110] @ 0x21db20c, (=0x9060f)
	mov     r3, #0x2
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [r5, #0x4]
	ldr     r2, [r4, #0x18]
	bl      Function_201d78c
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xfc] @ 0x21db210, (=0x1020f)
	mov     r3, #0x2
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [r5, #0x4]
	ldr     r2, [r4, #0x14]
	add     r0, #0x20
	bl      Function_201d78c
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xe0] @ 0x21db210, (=0x1020f)
	mov     r3, #0x2
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [r5, #0x4]
	ldr     r2, [r4, #0x14]
	add     r0, #0x20
	bl      Function_201d78c
	ldrb    r0, [r4, #0xe]
	cmp     r0, #0x0
	beq     branch_21db14a
	cmp     r0, #0x1
	beq     branch_21db166
	b       branch_21db180
@ 0x21db14a

.thumb
branch_21db14a: @ 21db14a :thumb
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xc0] @ 0x21db214, (=0x7080f)
	mov     r3, #0x46
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [r5, #0x4]
	ldr     r2, [r5, #0x44]
	add     r0, #0x20
	bl      Function_201d78c
	b       branch_21db180
@ 0x21db166

.thumb
branch_21db166: @ 21db166 :thumb
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xa8] @ 0x21db218, (=0x3040f)
	mov     r3, #0x46
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [r5, #0x4]
	ldr     r2, [r5, #0x48]
	add     r0, #0x20
	bl      Function_201d78c
.thumb
branch_21db180: @ 21db180 :thumb
	ldrb    r0, [r4, #0xf]
	cmp     r0, #0x0
	bne     branch_21db1da
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x8c] @ 0x21db21c, (=0x90600)
	mov     r3, r1
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [r5, #0x4]
	ldr     r2, [r4, #0x1c]
	add     r0, #0x30
	bl      Function_201d78c
	ldrh    r2, [r4, #0x8]
	cmp     r2, #0x0
	beq     branch_21db1be
	mov     r1, #0x2
	str     r1, [sp, #0x0]
	ldr     r0, [r5, #0x4]
	mov     r3, #0x3
	add     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x18]
	bl      Function_200c648
.thumb
branch_21db1be: @ 21db1be :thumb
	mov     r1, #0x1
	str     r1, [sp, #0x0]
	ldr     r0, [r5, #0x4]
	mov     r3, #0x3
	add     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x10
	str     r0, [sp, #0xc]
	ldrb    r2, [r4, #0xa]
	ldr     r0, [r5, #0x1c]
	bl      Function_200c648
.thumb
branch_21db1da: @ 21db1da :thumb
	ldr     r1, [r4, #0x0]
	add     r0, sp, #0x10
	mov     r2, #0x2
	mov     r3, #0x0
	bl      LoadPkmnDataForGraphic
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x20]
	add     r1, sp, #0x10
	mov     r2, #0x2c
	mov     r3, #0x54
	bl      Function_2007c34
	str     r0, [r5, #0x24]
	ldrb    r1, [r4, #0xb]
	mov     r0, r5
	bl      Function_21db24c
	add     sp, #0x20
	pop     {r3-r5,pc}
@ 0x21db20a


.align 2


.word 0x9060f @ 0x21db20c
.word 0x1020f @ 0x21db210
.word 0x7080f @ 0x21db214
.word 0x3040f @ 0x21db218
.word 0x90600 @ 0x21db21c
.thumb
Function_21db220: @ 21db220 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x21db224

.thumb
Function_21db224: @ 21db224 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_21db248
	ldr     r0, [r4, #0x10]
	bl      Function_21d5e4c
	cmp     r0, #0x0
	beq     branch_21db248
	ldr     r0, [r4, #0x10]
	bl      Function_21d5e70
	mov     r1, r0
	ldrb    r1, [r1, #0xb]
	mov     r0, r4
	bl      Function_21db24c
.thumb
branch_21db248: @ 21db248 :thumb
	pop     {r4,pc}
@ 0x21db24a


.align 2, 0


.thumb
Function_21db24c: @ 21db24c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	str     r0, [sp, #0x4]
	mov     r4, r1
	ldr     r0, [r0, #0x8]
	mov     r1, #0x2
	bl      Function_2019fe4
	mov     r12, r0
	mov     r2, r0
	mov     r0, #0x1
	ldr     r6, [pc, #0x48] @ 0x21db2ac, (=0x4c8)
	mov     r1, #0x0
	lsl     r7, r0, #13
.thumb
branch_21db268: @ 21db268 :thumb
	mov     r3, r0
	lsl     r3, r1
	tst     r3, r4
	beq     branch_21db27a
	mov     r3, r1
	add     r3, #0x98
	orr     r3, r7
	strh    r3, [r2, r6]
	b       branch_21db288
@ 0x21db27a

.thumb
branch_21db27a: @ 21db27a :thumb
	mov     r5, r1
	mov     r3, #0x2
	add     r5, #0x84
	lsl     r3, r3, #12
	orr     r5, r3
	ldr     r3, [pc, #0x24] @ 0x21db2ac, (=0x4c8)
	strh    r5, [r2, r3]
.thumb
branch_21db288: @ 21db288 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r1, #0x6
	blt     branch_21db268
	mov     r2, #0x99
	lsl     r2, r2, #2
	ldr     r0, [sp, #0x4]
	str     r2, [sp, #0x0]
	lsl     r3, r2, #1
	mov     r2, r12
	add     r2, r2, r3
	ldr     r0, [r0, #0x8]
	mov     r1, #0x2
	mov     r3, #0xc
	bl      Function_2019460
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21db2ac

.word 0x4c8 @ 0x21db2ac
.thumb
Function_21db2b0: @ 21db2b0 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_21db2f4
	ldr     r0, [r5, #0x10]
	bl      Function_21d5e70
	mov     r4, r0
	ldr     r0, [r5, #0x4]
	mov     r1, #0x0
	add     r0, #0x30
	bl      Function_201ada4_ClearTextBox
	ldrb    r0, [r4, #0xf]
	cmp     r0, #0x0
	bne     branch_21db2ee
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x21db2f8, (=0x90600)
	mov     r3, r1
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [r5, #0x4]
	ldr     r2, [r4, #0x1c]
	add     r0, #0x30
	bl      Function_201d78c
.thumb
branch_21db2ee: @ 21db2ee :thumb
	mov     r0, r5
	bl      Function_21dacb0
.thumb
branch_21db2f4: @ 21db2f4 :thumb
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x21db2f8

.word 0x90600 @ 0x21db2f8
.thumb
Function_21db2fc: @ 21db2fc :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	str     r1, [r4, #0xc]
	str     r3, [r4, #0x0]
	str     r2, [r4, #0x8]
	ldr     r0, [sp, #0x18]
	mov     r1, #PlMsg_Narc
	str     r0, [r4, #0x2c]
	ldr     r0, [sp, #0x1c]
	mov     r2, #0x12
	str     r0, [r4, #0x20]
	ldr     r0, [sp, #0x14]
	mov     r3, #0xa
	str     r0, [r4, #0x10]
	mov     r0, #0x0
	bl      LoadFromNARC_9
	str     r0, [r4, #0x14]
	mov     r0, #0x40
	mov     r1, #0xa
	bl      Function_2023790
	str     r0, [r4, #0x30]
	mov     r0, #0x40
	mov     r1, #0xa
	bl      Function_2023790
	str     r0, [r4, #0x34]
	mov     r0, #0x0
	strh    r0, [r4, #0x1c]
	strh    r0, [r4, #0x1e]
	str     r0, [r4, #0x18]
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	mov     r3, r4
	ldr     r0, [sp, #0x20]
	mov     r1, #0x19
	mov     r2, #0x1
	add     r3, #0x28
	bl      Function_20071b4
	str     r0, [r4, #0x24]
	cmp     r0, #0x0
	beq     branch_21db362
	ldr     r0, [r4, #0x30]
	cmp     r0, #0x0
	beq     branch_21db362
	ldr     r0, [r4, #0x34]
	cmp     r0, #0x0
	bne     branch_21db368
.thumb
branch_21db362: @ 21db362 :thumb
	add     sp, #0x4
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x21db368

.thumb
branch_21db368: @ 21db368 :thumb
	mov     r0, #0x1
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21db36e


.align 2, 0


.thumb
Function_21db370: @ 21db370 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x18]
	cmp     r0, #0x0
	beq     branch_21db3c0
	mov     r6, #0x0
	mov     r4, r6
.thumb
branch_21db37e: @ 21db37e :thumb
	ldr     r0, [r5, #0x18]
	add     r0, r0, r4
	bl      Function_201a8fc
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x10
	cmp     r6, #0x2
	blt     branch_21db37e
	ldr     r0, [r5, #0x24]
	cmp     r0, #0x0
	beq     branch_21db398
	bl      free
.thumb
branch_21db398: @ 21db398 :thumb
	ldr     r0, [r5, #0x14]
	cmp     r0, #0x0
	beq     branch_21db3a2
	bl      Function_200b190
.thumb
branch_21db3a2: @ 21db3a2 :thumb
	ldr     r0, [r5, #0x30]
	cmp     r0, #0x0
	beq     branch_21db3ac
	bl      Function_20237bc_FreeMsg
.thumb
branch_21db3ac: @ 21db3ac :thumb
	ldr     r0, [r5, #0x34]
	cmp     r0, #0x0
	beq     branch_21db3b6
	bl      Function_20237bc_FreeMsg
.thumb
branch_21db3b6: @ 21db3b6 :thumb
	ldr     r0, [r5, #0x18]
	bl      free
	mov     r0, #0x0
	str     r0, [r5, #0x18]
.thumb
branch_21db3c0: @ 21db3c0 :thumb
	pop     {r4-r6,pc}
@ 0x21db3c2


.align 2, 0


.thumb
Function_21db3c4: @ 21db3c4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r6, r0
	mov     r0, #0xa
	mov     r1, #0x2
	bl      Function_201a778
	str     r0, [r6, #0x18]
	cmp     r0, #0x0
	beq     branch_21db3f4
	mov     r7, #0x0
	ldr     r4, [pc, #0x64] @ 0x21db440, (=0x21e01f8)
	mov     r5, r7
.thumb
branch_21db3de: @ 21db3de :thumb
	ldr     r1, [r6, #0x18]
	ldr     r0, [r6, #0x0]
	add     r1, r1, r5
	mov     r2, r4
	bl      Function_201a8d4
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r4, #0x8
	add     r5, #0x10
	cmp     r7, #0x2
	blt     branch_21db3de
.thumb
branch_21db3f4: @ 21db3f4 :thumb
	mov     r0, #0x2
	lsl     r0, r0, #8
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	str     r1, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r0, #0xa
	str     r0, [sp, #0xc]
	ldr     r2, [r6, #0x0]
	mov     r0, #0x26
	mov     r3, #0x1
	bl      LoadFromNARC_RGCN
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]

	mov     r0, #PlWinframe_Narc
	mov     r1, #0x18
	mov     r2, #0x0
	mov     r3, #0xe0
	bl      Call_LoadFromNARC_RLCN
	ldr     r0, [r6, #0x20]
	ldr     r2, [pc, #0x1c] @ 0x21db444, (=0x209)
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	ldr     r0, [r6, #0x0]
	mov     r1, #0x1
	mov     r3, #0x8
	bl      Function_200dd0c
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21db43e


.align 2


.word 0x21e01f8 @ 0x21db440
.word 0x209 @ 0x21db444
.thumb
Function_21db448: @ 21db448 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [r5, #0x18]
	mov     r4, r1
	bl      Function_201a9f4
	ldr     r3, [r5, #0x18]
	ldrb    r0, [r3, #0x7]
	str     r0, [sp, #0x0]
	ldrb    r0, [r3, #0x8]
	str     r0, [sp, #0x4]
	ldrb    r1, [r3, #0x4]
	ldrb    r2, [r3, #0x5]
	ldrb    r3, [r3, #0x6]
	ldr     r0, [r5, #0x0]
	bl      Function_21db4b4
	ldr     r0, [r5, #0x18]
	mov     r1, #0xf
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [r5, #0x10]
	ldr     r2, [r5, #0x30]
	mov     r1, r4
	bl      Function_200b1b8_CallMsgDecrypt
	ldr     r0, [r5, #0x2c]
	ldr     r1, [r5, #0x34]
	ldr     r2, [r5, #0x30]
	bl      Function_200c388
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	str     r3, [sp, #0x8]
	ldr     r0, [r5, #0x18]
	ldr     r2, [r5, #0x34]
	mov     r1, #0x1
	bl      Function_201d738_CallInitTextInterpreter
	ldr     r0, [r5, #0x18]
	bl      Function_201accc
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	bl      Function_2019448
	mov     r0, #0x1
	strh    r0, [r5, #0x1c]
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21db4b2


.align 2, 0


.thumb
Function_21db4b4: @ 21db4b4 :thumb
	push    {r3-r7,lr}
	lsl     r1, r1, #24
	mov     r7, r3
	lsr     r1, r1, #24
	mov     r6, r2
	ldr     r4, [sp, #0x18]
	ldr     r5, [sp, #0x1c]
	bl      Function_2019fe4
	.hword  0x1e79 @ sub r1, r7, #0x1
	.hword  0x1eb2 @ sub r2, r6, #0x2
	lsl     r1, r1, #5
	add     r1, r2, r1
	lsl     r3, r1, #1
	ldr     r2, [pc, #0x84] @ 0x21db558, (=0x8209)
	add     r1, r0, r3
	strh    r2, [r0, r3]
	add     r0, r2, #0x1
	mov     r2, #0x0
	strh    r0, [r1, #0x2]
	cmp     r4, #0x0
	bls     branch_21db4ee
	ldr     r0, [pc, #0x78] @ 0x21db55c, (=0x820b)
	mov     r3, r1
.thumb
branch_21db4e4: @ 21db4e4 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	strh    r0, [r3, #0x4]
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r2, r4
	bcc     branch_21db4e4
.thumb
branch_21db4ee: @ 21db4ee :thumb
	lsl     r0, r4, #1
	add     r2, r1, r0
	ldr     r3, [pc, #0x6c] @ 0x21db560, (=0x820c)
	mov     r12, r0
	strh    r3, [r2, #0x4]
	add     r0, r3, #0x1
	strh    r0, [r2, #0x6]
	add     r0, r3, #0x2
	strh    r0, [r2, #0x8]
	add     r1, #0x40
	mov     r3, #0x0
	cmp     r5, #0x0
	bls     branch_21db52a
	mov     r0, r12
	add     r2, r0, r1
	ldr     r0, [pc, #0x54] @ 0x21db564, (=0x820f)
	add     r7, r0, #0x1
.thumb
branch_21db510: @ 21db510 :thumb
	strh    r0, [r1, #0x0]
	strh    r7, [r1, #0x2]
	ldr     r6, [pc, #0x50] @ 0x21db568, (=0x8212)
	.hword  0x1c5b @ add r3, r3, #0x1
	strh    r6, [r2, #0x4]
	.hword  0x1c76 @ add r6, r6, #0x1
	strh    r6, [r2, #0x6]
	ldr     r6, [pc, #0x4c] @ 0x21db56c, (=0x8214)
	add     r1, #0x40
	strh    r6, [r2, #0x8]
	add     r2, #0x40
	cmp     r3, r5
	bcc     branch_21db510
.thumb
branch_21db52a: @ 21db52a :thumb
	ldr     r0, [pc, #0x44] @ 0x21db570, (=0x8215)
	mov     r3, #0x0
	strh    r0, [r1, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r1, #0x2]
	cmp     r4, #0x0
	bls     branch_21db546
	ldr     r0, [pc, #0x38] @ 0x21db574, (=0x8217)
	mov     r2, r1
.thumb
branch_21db53c: @ 21db53c :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	strh    r0, [r2, #0x4]
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r3, r4
	bcc     branch_21db53c
.thumb
branch_21db546: @ 21db546 :thumb
	mov     r0, r12
	ldr     r2, [pc, #0x2c] @ 0x21db578, (=0x8218)
	add     r1, r1, r0
	strh    r2, [r1, #0x4]
	add     r0, r2, #0x1
	strh    r0, [r1, #0x6]
	add     r0, r2, #0x2
	strh    r0, [r1, #0x8]
	pop     {r3-r7,pc}
@ 0x21db558

.word 0x8209 @ 0x21db558
.word 0x820b @ 0x21db55c
.word 0x820c @ 0x21db560
.word 0x820f @ 0x21db564
.word 0x8212 @ 0x21db568
.word 0x8214 @ 0x21db56c
.word 0x8215 @ 0x21db570
.word 0x8217 @ 0x21db574
.word 0x8218 @ 0x21db578
.thumb
Function_21db57c: @ 21db57c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	ldrh    r0, [r5, #0x1e]
	str     r1, [sp, #0x10]
	cmp     r0, #0x0
	beq     branch_21db594
	ldr     r1, [r5, #0x18]
	ldr     r0, [r5, #0x0]
	add     r1, #0x10
	bl      Function_21db84c
.thumb
branch_21db594: @ 21db594 :thumb
	ldr     r0, [r5, #0x18]
	mov     r1, #0xf
	str     r0, [sp, #0x14]
	add     r0, #0x10
	str     r0, [sp, #0x14]
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [sp, #0x10]
	mov     r6, #0x0
	add     r0, #0x21
	ldrb    r1, [r0, #0x0]
	mov     r0, #0x8
	sub     r0, r0, r1
	lsl     r7, r0, #4
	cmp     r1, #0x0
	bls     branch_21db608
	ldr     r4, [sp, #0x10]
.thumb
branch_21db5b6: @ 21db5b6 :thumb
	ldr     r3, [r4, #0x0]
	cmp     r3, #0x38
	blt     branch_21db5d2
	cmp     r3, #0x3d
	bgt     branch_21db5d2
	ldr     r2, [sp, #0x10]
	ldr     r1, [sp, #0x14]
	add     r2, #0x22
	ldrb    r2, [r2, #0x0]
	mov     r0, r5
	sub     r3, #0x38
	bl      Function_21db638
	b       branch_21db5f8
@ 0x21db5d2

.thumb
branch_21db5d2: @ 21db5d2 :thumb
	add     r3, #0x18
	ldr     r0, [r5, #0x14]
	ldr     r2, [r5, #0x30]
	mov     r1, r3
	bl      Function_200b1b8_CallMsgDecrypt
	str     r7, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x4c] @ 0x21db634, (=0xb0c0f)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x14]
	ldr     r2, [r5, #0x30]
	mov     r3, #0xa
	bl      Function_201d78c
.thumb
branch_21db5f8: @ 21db5f8 :thumb
	ldr     r0, [sp, #0x10]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r0, #0x21
	ldrb    r0, [r0, #0x0]
	add     r7, #0x10
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, r0
	bcc     branch_21db5b6
.thumb
branch_21db608: @ 21db608 :thumb
	ldr     r1, [sp, #0x10]
	mov     r0, r5
	bl      Function_21db748
	ldr     r1, [sp, #0x10]
	mov     r0, r5
	add     r1, #0x21
	str     r1, [sp, #0x10]
	ldrb    r1, [r1, #0x0]
	bl      Function_21db684
	ldr     r0, [sp, #0x14]
	bl      Function_201accc
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	bl      Function_2019448
	mov     r0, #0x1
	strh    r0, [r5, #0x1e]
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21db634

.word 0xb0c0f @ 0x21db634
.thumb
Function_21db638: @ 21db638 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x1c
	mov     r5, r0
	mov     r0, #0x1
	lsl     r0, r3
	tst     r0, r2
	beq     branch_21db64a
	mov     r4, #0x0
	b       branch_21db64c
@ 0x21db64a

.thumb
branch_21db64a: @ 21db64a :thumb
	mov     r4, #0x8
.thumb
branch_21db64c: @ 21db64c :thumb
	mov     r0, #0x30
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r0, #0x2c
	str     r0, [sp, #0x8]
	lsl     r0, r3, #4
	.hword  0x1d00 @ add r0, r0, #0x4
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0xc]
	mov     r0, #0x8
	str     r0, [sp, #0x10]
	lsl     r2, r3, #19
	str     r0, [sp, #0x14]
	mov     r0, #0xff
	str     r0, [sp, #0x18]
	mov     r0, r1
	ldr     r1, [r5, #0x28]
	lsl     r3, r4, #16
	ldr     r1, [r1, #0x14]
	lsr     r2, r2, #16
	lsr     r3, r3, #16
	bl      Function_201ae08
	add     sp, #0x1c
	pop     {r4,r5,pc}
@ 0x21db682


.align 2, 0


.thumb
Function_21db684: @ 21db684 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	str     r0, [sp, #0x8]
	mov     r5, r1
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      Function_2019fe4
	mov     r2, #0x8
	sub     r2, r2, r5
	mov     r12, r2
	add     r0, #0xe6
	lsl     r2, r2, #7
	add     r2, r0, r2
	ldr     r1, [pc, #0x48] @ 0x21db6ec, (=0x251)
	mov     r3, #0x18
	mov     r0, r12
	mul     r3, r0
	add     r4, r1, r3
	mov     r6, #0x0
	lsl     r7, r5, #1
	beq     branch_21db6d0
	mov     r0, #0x1
	lsl     r0, r0, #14
.thumb
branch_21db6b4: @ 21db6b4 :thumb
	mov     r3, #0x0
	mov     r5, r2
.thumb
branch_21db6b8: @ 21db6b8 :thumb
	mov     r1, r4
	orr     r1, r0
	strh    r1, [r5, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r3, #0xc
	bcc     branch_21db6b8
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r2, #0x40
	cmp     r6, r7
	bcc     branch_21db6b4
.thumb
branch_21db6d0: @ 21db6d0 :thumb
	mov     r0, #0xc
	str     r0, [sp, #0x0]
	mov     r3, r12
	lsl     r3, r3, #1
	ldr     r0, [sp, #0x8]
	str     r7, [sp, #0x4]
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	mov     r2, #0x13
	.hword  0x1cdb @ add r3, r3, #0x3
	bl      Function_21db7bc
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21db6ec

.word 0x251 @ 0x21db6ec
.thumb
Function_21db6f0: @ 21db6f0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrh    r0, [r4, #0x1c]
	cmp     r0, #0x0
	beq     branch_21db706
	ldr     r0, [r4, #0x0]
	ldr     r1, [r4, #0x18]
	bl      Function_21db898
	mov     r0, #0x0
	strh    r0, [r4, #0x1c]
.thumb
branch_21db706: @ 21db706 :thumb
	ldrh    r0, [r4, #0x1e]
	cmp     r0, #0x0
	beq     branch_21db71a
	ldr     r1, [r4, #0x18]
	ldr     r0, [r4, #0x0]
	add     r1, #0x10
	bl      Function_21db84c
	mov     r0, #0x0
	strh    r0, [r4, #0x1e]
.thumb
branch_21db71a: @ 21db71a :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      Function_2019448
	pop     {r4,pc}
@ 0x21db724

.thumb
Function_21db724: @ 21db724 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrh    r0, [r4, #0x1e]
	cmp     r0, #0x0
	beq     branch_21db73c
	ldr     r1, [r4, #0x18]
	ldr     r0, [r4, #0x0]
	add     r1, #0x10
	bl      Function_21db84c
	mov     r0, #0x0
	strh    r0, [r4, #0x1e]
.thumb
branch_21db73c: @ 21db73c :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      Function_2019448
	pop     {r4,pc}
@ 0x21db746


.align 2, 0


.thumb
Function_21db748: @ 21db748 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r6, r1
	ldr     r4, [r0, #0x18]
	mov     r0, r6
	add     r0, #0x21
	ldrb    r1, [r0, #0x0]
	mov     r0, #0x8
	add     r4, #0x10
	sub     r0, r0, r1
	lsl     r5, r0, #4
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	lsl     r0, r1, #20
	lsr     r0, r0, #16
	lsl     r3, r5, #16
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0xf
	mov     r2, #0x0
	lsr     r3, r3, #16
	bl      Function_201ae78
	add     r6, #0x20
	ldrb    r2, [r6, #0x0]
	mov     r0, r4
	mov     r1, #0x0
	lsl     r2, r2, #4
	add     r2, r5, r2
	bl      Function_2002180
	mov     r0, r4
	bl      Function_201accc
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x21db790

.thumb
Function_21db790: @ 21db790 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r4, [r6, #0x18]
	mov     r7, r1
	add     r4, #0x10
	mov     r5, #0x0
.thumb
branch_21db79c: @ 21db79c :thumb
	mov     r2, r7
	add     r2, #0x22
	ldrb    r2, [r2, #0x0]
	mov     r0, r6
	mov     r1, r4
	mov     r3, r5
	bl      Function_21db638
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x6
	blt     branch_21db79c
	mov     r0, r4
	bl      Function_201accc
	pop     {r3-r7,pc}
@ 0x21db7ba


.align 2, 0


.thumb
Function_21db7bc: @ 21db7bc :thumb
	push    {r3-r7,lr}
	lsl     r1, r1, #24
	mov     r7, r3
	lsr     r1, r1, #24
	mov     r6, r2
	ldr     r5, [sp, #0x18]
	ldr     r4, [sp, #0x1c]
	bl      Function_2019fe4
	.hword  0x1e79 @ sub r1, r7, #0x1
	.hword  0x1e72 @ sub r2, r6, #0x1
	lsl     r1, r1, #5
	add     r1, r2, r1
	mov     r2, #0x72
	lsl     r3, r1, #1
	lsl     r2, r2, #8
	strh    r2, [r0, r3]
	add     r1, r0, r3
	mov     r2, #0x0
	cmp     r5, #0x0
	bls     branch_21db7f4
	ldr     r0, [pc, #0x50] @ 0x21db838, (=0x7201)
	mov     r3, r1
.thumb
branch_21db7ea: @ 21db7ea :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	strh    r0, [r3, #0x2]
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r2, r5
	bcc     branch_21db7ea
.thumb
branch_21db7f4: @ 21db7f4 :thumb
	lsl     r0, r5, #1
	add     r2, r1, r0
	ldr     r3, [pc, #0x40] @ 0x21db83c, (=0x7202)
	add     r1, #0x40
	mov     r7, #0x0
	strh    r3, [r2, #0x2]
	cmp     r4, #0x0
	bls     branch_21db818
	ldr     r2, [pc, #0x38] @ 0x21db840, (=0x7205)
	add     r6, r0, r1
	.hword  0x1c5b @ add r3, r3, #0x1
.thumb
branch_21db80a: @ 21db80a :thumb
	strh    r3, [r1, #0x0]
	strh    r2, [r6, #0x2]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r6, #0x40
	add     r1, #0x40
	cmp     r7, r4
	bcc     branch_21db80a
.thumb
branch_21db818: @ 21db818 :thumb
	ldr     r2, [pc, #0x28] @ 0x21db844, (=0x7206)
	mov     r4, #0x0
	strh    r2, [r1, #0x0]
	cmp     r5, #0x0
	bls     branch_21db830
	mov     r3, r1
	.hword  0x1c52 @ add r2, r2, #0x1
.thumb
branch_21db826: @ 21db826 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	strh    r2, [r3, #0x2]
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r4, r5
	bcc     branch_21db826
.thumb
branch_21db830: @ 21db830 :thumb
	ldr     r2, [pc, #0x14] @ 0x21db848, (=0x7208)
	add     r0, r1, r0
	strh    r2, [r0, #0x2]
	pop     {r3-r7,pc}
@ 0x21db838

.word 0x7201 @ 0x21db838
.word 0x7202 @ 0x21db83c
.word 0x7205 @ 0x21db840
.word 0x7206 @ 0x21db844
.word 0x7208 @ 0x21db848
.thumb
Function_21db84c: @ 21db84c :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	ldrb    r1, [r4, #0x4]
	bl      Function_2019fe4
	ldrb    r1, [r4, #0x5]
	mov     r5, #0x0
	.hword  0x1e4a @ sub r2, r1, #0x1
	ldrb    r1, [r4, #0x6]
	.hword  0x1e49 @ sub r1, r1, #0x1
	lsl     r1, r1, #5
	add     r1, r2, r1
	lsl     r1, r1, #1
	add     r2, r0, r1
	ldrb    r0, [r4, #0x8]
	.hword  0x1c80 @ add r0, r0, #0x2
	beq     branch_21db896
	mov     r0, r5
	mov     r1, r5
.thumb
branch_21db872: @ 21db872 :thumb
	ldrb    r6, [r4, #0x7]
	mov     r3, r1
	.hword  0x1cb6 @ add r6, r6, #0x2
	beq     branch_21db88a
	mov     r6, r2
.thumb
branch_21db87c: @ 21db87c :thumb
	strh    r0, [r6, #0x0]
	ldrb    r7, [r4, #0x7]
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1cb6 @ add r6, r6, #0x2
	.hword  0x1cbf @ add r7, r7, #0x2
	cmp     r3, r7
	bcc     branch_21db87c
.thumb
branch_21db88a: @ 21db88a :thumb
	ldrb    r3, [r4, #0x8]
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r2, #0x40
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r5, r3
	bcc     branch_21db872
.thumb
branch_21db896: @ 21db896 :thumb
	pop     {r3-r7,pc}
@ 0x21db898

.thumb
Function_21db898: @ 21db898 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	ldrb    r1, [r4, #0x4]
	bl      Function_2019fe4
	ldrb    r1, [r4, #0x5]
	mov     r5, #0x0
	.hword  0x1e8a @ sub r2, r1, #0x2
	ldrb    r1, [r4, #0x6]
	.hword  0x1e49 @ sub r1, r1, #0x1
	lsl     r1, r1, #5
	add     r1, r2, r1
	lsl     r1, r1, #1
	add     r2, r0, r1
	ldrb    r0, [r4, #0x8]
	.hword  0x1c80 @ add r0, r0, #0x2
	beq     branch_21db8e2
	mov     r0, r5
	mov     r1, r5
.thumb
branch_21db8be: @ 21db8be :thumb
	ldrb    r6, [r4, #0x7]
	mov     r3, r1
	.hword  0x1d76 @ add r6, r6, #0x5
	beq     branch_21db8d6
	mov     r6, r2
.thumb
branch_21db8c8: @ 21db8c8 :thumb
	strh    r0, [r6, #0x0]
	ldrb    r7, [r4, #0x7]
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1cb6 @ add r6, r6, #0x2
	.hword  0x1d7f @ add r7, r7, #0x5
	cmp     r3, r7
	bcc     branch_21db8c8
.thumb
branch_21db8d6: @ 21db8d6 :thumb
	ldrb    r3, [r4, #0x8]
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r2, #0x40
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r5, r3
	bcc     branch_21db8be
.thumb
branch_21db8e2: @ 21db8e2 :thumb
	pop     {r3-r7,pc}
@ 0x21db8e4

.thumb
Function_21db8e4: @ 21db8e4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	str     r1, [r5, #0x0]
	ldr     r0, [sp, #0x34]
	str     r3, [r5, #0x4]
	str     r0, [sp, #0x34]
	str     r2, [r5, #0xc]
	ldr     r0, [sp, #0x30]
	mov     r4, #0x1
	str     r0, [r5, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r2, r3
	str     r4, [sp, #0x8]
	mov     r0, #0xa
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x34]
	mov     r1, #0x4
	mov     r3, r4
	bl      Function_20070e8
	ldr     r0, [sp, #0x34]
	mov     r1, #0x1b
	add     r2, sp, #0x14
	mov     r3, #0xa
	bl      Function_20071ec
	mov     r4, r0
	ldr     r0, [sp, #0x14]
	mov     r1, r5
	ldr     r0, [r0, #0xc]
	add     r1, #0xe4
	mov     r2, #0x40
	blx     MIi_CpuCopy16
	mov     r0, r4
	bl      free
	ldr     r0, [sp, #0x34]
	mov     r1, #0x14
	add     r2, sp, #0x14
	mov     r3, #0xa
	bl      Function_20071ec
	mov     r4, r0
	ldr     r0, [sp, #0x14]
	mov     r1, #0x49
	lsl     r1, r1, #2
	ldr     r0, [r0, #0xc]
	add     r1, r5, r1
	mov     r2, #0x20
	blx     MIi_CpuCopy16
	mov     r0, r4
	bl      free
	mov     r0, r5
	mov     r1, #0x2a
	mov     r4, #0x1
	str     r0, [sp, #0x10]
	add     r0, #0xe4
	lsl     r1, r1, #4
	lsl     r4, r4, #16
	mov     r7, #0x7
	str     r0, [sp, #0x10]
	add     r6, r0, r1
.thumb
branch_21db96c: @ 21db96c :thumb
	asr     r0, r4, #12
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x10]
	ldr     r3, [pc, #0x114] @ 0x21dba88, (=0x7fff)
	mov     r1, r6
	mov     r2, #0x30
	bl      Function_21d78c8
	ldr     r0, [pc, #0x10c] @ 0x21dba8c, (=0x2492)
	.hword  0x1e7f @ sub r7, r7, #0x1
	sub     r4, r4, r0
	sub     r6, #0x60
	cmp     r7, #0x1
	bge     branch_21db96c
	mov     r0, r5
	mov     r1, #0x3
	add     r0, #0xe4
	lsl     r1, r1, #8
	blx     DC_FlushRange
	mov     r0, #0xe1
	lsl     r0, r0, #2
	mov     r1, #0x1a
	add     r0, r5, r0
	lsl     r1, r1, #4
	mov     r2, #0x60
	blx     GX_LoadOBJPltt
	mov     r0, r5
	mov     r1, #0x1a
	add     r0, #0xe4
	lsl     r1, r1, #4
	mov     r2, #0x60
	blx     GXS_LoadOBJPltt
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	mov     r3, r5
	ldr     r0, [sp, #0x34]
	mov     r1, #0x11
	mov     r2, #0x1
	add     r3, #0x18
	bl      Function_20071b4
	str     r0, [r5, #0x14]
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	mov     r3, r5
	ldr     r0, [sp, #0x34]
	mov     r1, #0x12
	mov     r2, #0x1
	add     r3, #0x20
	bl      Function_2007204
	str     r0, [r5, #0x1c]
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	mov     r3, r5
	ldr     r0, [sp, #0x34]
	mov     r1, #0x2
	mov     r2, #0x1
	add     r3, #0x38
	bl      Function_20071d0
	str     r0, [r5, #0x34]
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	mov     r3, r5
	ldr     r0, [sp, #0x34]
	mov     r1, #0x3
	mov     r2, #0x1
	add     r3, #0x30
	bl      Function_20071d0
	str     r0, [r5, #0x2c]
	mov     r0, #0x2
	mov     r1, #0xd
	mov     r2, #0x4
	mov     r3, #0xa
	bl      Function_200c440
	str     r0, [r5, #0x44]
	mov     r0, #0x7d
	lsl     r0, r0, #2
	mov     r1, #0xa
	bl      Function_2023790
	ldr     r1, [pc, #0x74] @ 0x21dba90, (=0x4bfc)
	ldr     r2, [pc, #0x74] @ 0x21dba94, (=0x187)
	str     r0, [r5, r1]
	mov     r0, #0x0
	str     r0, [r5, #0x10]
	ldr     r0, [r5, #0x18]
	mov     r1, #0x20
	ldr     r0, [r0, #0x14]
	mov     r3, #0xa
	str     r0, [r5, #0x3c]
	mov     r0, r5
	add     r0, #0x40
	strh    r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x42
	strh    r1, [r0, #0x0]
	mov     r0, #0x1
	mov     r1, #PlMsg_Narc
	bl      LoadFromNARC_9
	ldr     r1, [pc, #0x54] @ 0x21dba98, (=0x4bf8)
	mov     r2, r5
	str     r0, [r5, r1]
	mov     r1, #0x0
	mov     r0, r1
branch_21dba4c: @ 21dba4c :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r0, [r2, #0x48]
	.hword  0x1d12 @ add r2, r2, #0x4
	cmp     r1, #0x12
	blt     branch_21dba4c
	ldr     r0, [r5, #0x14]
	cmp     r0, #0x0
	beq     branch_21dba7c
	ldr     r0, [r5, #0x1c]
	cmp     r0, #0x0
	beq     branch_21dba7c
	ldr     r0, [r5, #0x2c]
	cmp     r0, #0x0
	beq     branch_21dba7c
	ldr     r0, [r5, #0x34]
	cmp     r0, #0x0
	beq     branch_21dba7c
	ldr     r0, [r5, #0x44]
	cmp     r0, #0x0
	beq     branch_21dba7c
	ldr     r0, [pc, #0x18] @ 0x21dba90, (=0x4bfc)
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	bne     branch_21dba82
.thumb
branch_21dba7c: @ 21dba7c :thumb
	add     sp, #0x18
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21dba82

.thumb
branch_21dba82: @ 21dba82 :thumb
	mov     r0, #0x1
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21dba88

.word 0x7fff @ 0x21dba88
.word 0x2492 @ 0x21dba8c
.word 0x4bfc @ 0x21dba90
.word 0x187 @ 0x21dba94
.word 0x4bf8 @ 0x21dba98
.thumb
Function_21dba9c: @ 21dba9c :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r0, #0xa
	mov     r1, #0x3
	bl      Function_201a778
	str     r0, [r7, #0x10]
	cmp     r0, #0x0
	beq     branch_21dbaca
	mov     r6, #0x0
	ldr     r4, [pc, #0x18] @ 0x21dbacc, (=0x21e0210)
	mov     r5, r6
.thumb
branch_21dbab4: @ 21dbab4 :thumb
	ldr     r1, [r7, #0x10]
	ldr     r0, [r7, #0x4]
	add     r1, r1, r5
	mov     r2, r4
	bl      Function_201a8d4
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x8
	add     r5, #0x10
	cmp     r6, #0x3
	bcc     branch_21dbab4
.thumb
branch_21dbaca: @ 21dbaca :thumb
	pop     {r3-r7,pc}
@ 0x21dbacc

.word 0x21e0210 @ 0x21dbacc
.thumb
Function_21dbad0: @ 21dbad0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x68] @ 0x21dbb40, (=0x4bf8)
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_21dbae0
	bl      Function_200b190
.thumb
branch_21dbae0: @ 21dbae0 :thumb
	ldr     r0, [r5, #0x14]
	cmp     r0, #0x0
	beq     branch_21dbaea
	bl      free
.thumb
branch_21dbaea: @ 21dbaea :thumb
	ldr     r0, [r5, #0x1c]
	cmp     r0, #0x0
	beq     branch_21dbaf4
	bl      free
.thumb
branch_21dbaf4: @ 21dbaf4 :thumb
	ldr     r0, [r5, #0x2c]
	cmp     r0, #0x0
	beq     branch_21dbafe
	bl      free
.thumb
branch_21dbafe: @ 21dbafe :thumb
	ldr     r0, [r5, #0x34]
	cmp     r0, #0x0
	beq     branch_21dbb08
	bl      free
.thumb
branch_21dbb08: @ 21dbb08 :thumb
	ldr     r0, [r5, #0x44]
	cmp     r0, #0x0
	beq     branch_21dbb12
	bl      Function_200c560
.thumb
branch_21dbb12: @ 21dbb12 :thumb
	ldr     r0, [pc, #0x30] @ 0x21dbb44, (=0x4bfc)
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_21dbb1e
	bl      Function_20237bc_FreeMsg
.thumb
branch_21dbb1e: @ 21dbb1e :thumb
	ldr     r0, [r5, #0x10]
	cmp     r0, #0x0
	beq     branch_21dbb3e
	mov     r6, #0x0
	mov     r4, r6
.thumb
branch_21dbb28: @ 21dbb28 :thumb
	ldr     r0, [r5, #0x10]
	add     r0, r0, r4
	bl      Function_201a8fc
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x10
	cmp     r6, #0x3
	blt     branch_21dbb28
	ldr     r0, [r5, #0x10]
	bl      free
.thumb
branch_21dbb3e: @ 21dbb3e :thumb
	pop     {r4-r6,pc}
@ 0x21dbb40

.word 0x4bf8 @ 0x21dbb40
.word 0x4bfc @ 0x21dbb44
.thumb
Function_21dbb48: @ 21dbb48 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0xc]
	bl      Function_21d5ea8
	mov     r1, r4
	add     r1, #0xe0
	str     r0, [r1, #0x0]
	mov     r0, r4
	bl      Function_21dbdf4
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21dc034
	pop     {r4,pc}
@ 0x21dbb68

.thumb
Function_21dbb68: @ 21dbb68 :thumb
	ldr     r3, [pc, #0x0] @ 0x21dbb6c, (=0x21dc091)
	bx      r3
@ 0x21dbb6c

.word Function_21dc090+1 @ =0x21dc091, 0x21dbb6c
.thumb
Function_21dbb70: @ 21dbb70 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0xc]
	bl      Function_21d5ea8
	mov     r1, r4
	add     r1, #0xe0
	str     r0, [r1, #0x0]
	mov     r0, r4
	bl      Function_21dbf18
	mov     r0, r4
	bl      Function_21dbf4c
	mov     r0, r4
	bl      Function_21dbfc4
	pop     {r4,pc}
@ 0x21dbb94

.thumb
Function_21dbb94: @ 21dbb94 :thumb
	ldr     r3, [pc, #0x4] @ 0x21dbb9c, (=0x21dc035)
	mov     r1, #0x1
	bx      r3
@ 0x21dbb9a


.align 2


.word Function_21dc034+1 @ =0x21dc035, 0x21dbb9c
.thumb
Function_21dbba0: @ 21dbba0 :thumb
	ldr     r3, [pc, #0x0] @ 0x21dbba4, (=0x21dc091)
	bx      r3
@ 0x21dbba4

.word Function_21dc090+1 @ =0x21dc091, 0x21dbba4
.thumb
Function_21dbba8: @ 21dbba8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x34
	str     r0, [sp, #0x8]
	ldr     r0, [r0, #0xc]
	str     r1, [sp, #0xc]
	str     r2, [sp, #0x10]
	str     r3, [sp, #0x14]
	bl      Function_21d5e90
	ldr     r1, [sp, #0xc]
	str     r0, [sp, #0x28]
	bl      Function_2079aa8
	cmp     r0, #0x18
	blt     branch_21dbbc8
	sub     r0, #0x8
.thumb
branch_21dbbc8: @ 21dbbc8 :thumb
	add     r0, #0xd0
	mov     r1, #0xc
	lsl     r0, r0, #24
	str     r1, [sp, #0x0]
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x8]
	mov     r1, #0x9
	add     r0, #0x3c
	mov     r2, #0xa
	mov     r3, #0xe
	bl      Function_201a6d0
	mov     r4, #0x0
	mov     r0, #0xb
	str     r4, [sp, #0x20]
	str     r0, [sp, #0x18]
.thumb
branch_21dbbea: @ 21dbbea :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x8]
	mov     r6, #0xa
	str     r0, [sp, #0x2c]
	add     r0, #0x3c
	str     r0, [sp, #0x2c]
	ldr     r0, [sp, #0x18]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x30]
branch_21dbc00: @ 21dbc00 :thumb
	ldr     r0, [sp, #0x28]
	ldr     r1, [sp, #0xc]
	mov     r2, r4
	bl      Function_2079c9c
	.hword  0x1c64 @ add r4, r4, #0x1
	mov     r5, r0
	bl      InitEncryptPkmnData_Part1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x1c]
	mov     r0, r5
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetBoxPkmnData
	mov     r7, r0
	beq     branch_21dbc7e
	mov     r0, r5
	mov     r1, #0x4c
	mov     r2, #0x0
	bl      GetBoxPkmnData
	cmp     r0, #0x0
	bne     branch_21dbc50
	mov     r0, r5
	mov     r1, #0x70
	mov     r2, #0x0
	bl      GetBoxPkmnData
	lsl     r0, r0, #16
	lsr     r1, r0, #16
	mov     r0, r7
	mov     r2, #0x1b
	bl      GetPkmnBaseData2
	lsl     r0, r0, #24
	lsr     r1, r0, #24
	b       branch_21dbc60

branch_21dbc50: @ 21dbc50 :thumb
	ldr     r0, [pc, #0xd8] @ 0x21dbd2c, (=0x1ea)
	cmp     r7, r0
	beq     branch_21dbc5a
	mov     r0, #0x8
	b       branch_21dbc5c
@ 0x21dbc5a

.thumb
branch_21dbc5a: @ 21dbc5a :thumb
	mov     r0, #0x1
.thumb
branch_21dbc5c: @ 21dbc5c :thumb
	lsl     r0, r0, #24
	lsr     r1, r0, #24
.thumb
branch_21dbc60: @ 21dbc60 :thumb
	ldr     r0, [pc, #0xcc] @ 0x21dbd30, (=0x21e0228)
	ldr     r2, [sp, #0x30]
	ldrb    r0, [r0, r1]
	mov     r3, #0x2
	add     r0, #0xe0
	lsl     r0, r0, #24
	lsr     r1, r0, #24
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	lsl     r1, r6, #16
	ldr     r0, [sp, #0x2c]
	lsr     r1, r1, #16
	bl      Function_201a6d0
.thumb
branch_21dbc7e: @ 21dbc7e :thumb
	ldr     r1, [sp, #0x1c]
	mov     r0, r5
	bl      InitEncryptPkmnData_Part1Again
	ldr     r0, [sp, #0x24]
	.hword  0x1cb6 @ add r6, r6, #0x2
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x24]
	cmp     r0, #0x6
	bcc     branch_21dbc00
	ldr     r0, [sp, #0x18]
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x20]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x20]
	cmp     r0, #0x5
	bcc     branch_21dbbea
	ldr     r0, [sp, #0x48]
	cmp     r0, #0x0
	beq     branch_21dbce8
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x1
	beq     branch_21dbcb4
	cmp     r0, #0x2
	beq     branch_21dbcc6
	b       branch_21dbcd4
@ 0x21dbcb4

.thumb
branch_21dbcb4: @ 21dbcb4 :thumb
	mov     r0, #0x1
	lsl     r0, r0, #26
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x78] @ 0x21dbd34, (=0x300010)
	and     r1, r0
	ldr     r0, [sp, #0x8]
	ldr     r0, [r0, #0x18]
	str     r1, [r0, #0x8]
	b       branch_21dbcd4
@ 0x21dbcc6

.thumb
branch_21dbcc6: @ 21dbcc6 :thumb
	ldr     r0, [pc, #0x70] @ 0x21dbd38, (=0x4001000)
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x68] @ 0x21dbd34, (=0x300010)
	and     r1, r0
	ldr     r0, [sp, #0x8]
	ldr     r0, [r0, #0x18]
	str     r1, [r0, #0x8]
.thumb
branch_21dbcd4: @ 21dbcd4 :thumb
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x10]
	ldr     r0, [r0, #0x18]
	ldr     r2, [sp, #0x14]
	ldr     r3, [sp, #0x48]
	lsl     r1, r1, #5
	blx     Function_20a8224_LoadTexOBJ
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x21dbce8

.thumb
branch_21dbce8: @ 21dbce8 :thumb
	ldr     r0, [sp, #0x8]
	ldr     r1, [r0, #0x18]
	ldr     r0, [r1, #0x14]
	ldr     r1, [r1, #0x10]
	blx     DC_FlushRange
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x1
	beq     branch_21dbd02
	cmp     r0, #0x2
	beq     branch_21dbd16
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x21dbd02

.thumb
branch_21dbd02: @ 21dbd02 :thumb
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x10]
	ldr     r2, [r0, #0x18]
	lsl     r1, r1, #5
	ldr     r0, [r2, #0x14]
	ldr     r2, [r2, #0x10]
	blx     GX_LoadOBJ
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x21dbd16

.thumb
branch_21dbd16: @ 21dbd16 :thumb
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x10]
	ldr     r2, [r0, #0x18]
	lsl     r1, r1, #5
	ldr     r0, [r2, #0x14]
	ldr     r2, [r2, #0x10]
	blx     GXS_LoadOBJ
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x21dbd2a


.align 2


.word 0x1ea @ 0x21dbd2c
.word 0x21e0228 @ 0x21dbd30
.word 0x300010 @ 0x21dbd34
.word 0x4001000 @ 0x21dbd38
.thumb
Function_21dbd3c: @ 21dbd3c :thumb
	ldr     r0, [r0, #0x20]
	bx      lr
@ 0x21dbd40

.thumb
Function_21dbd40: @ 21dbd40 :thumb
	add     r0, #0xe0
	ldr     r0, [r0, #0x0]
	.hword  0x1ec0 @ sub r0, r0, #0x3
	bpl     branch_21dbd4a
	add     r0, #0x12
.thumb
branch_21dbd4a: @ 21dbd4a :thumb
	bx      lr
@ 0x21dbd4c

.thumb
Function_21dbd4c: @ 21dbd4c :thumb
	push    {r3,r4}
	mov     r4, #0x0
	ldr     r1, [pc, #0x10] @ 0x21dbd64, (=0x4be4)
	mov     r3, r4
.thumb
branch_21dbd54: @ 21dbd54 :thumb
	add     r2, r0, r4
	.hword  0x1c64 @ add r4, r4, #0x1
	strb    r3, [r2, r1]
	cmp     r4, #0x12
	blt     branch_21dbd54
	pop     {r3,r4}
	bx      lr
@ 0x21dbd62


.align 2


.word 0x4be4 @ 0x21dbd64
.thumb
Function_21dbd68: @ 21dbd68 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x18]
	mov     r2, #0xf9
	mov     r4, r1
	lsl     r2, r2, #2
	add     r3, r5, r2
	lsl     r1, r4, #10
	ldr     r0, [r0, #0x14]
	add     r1, r3, r1
	add     r2, #0x1c
	blx     MI_CpuCopy32
	mov     r1, #0xf9
	lsl     r1, r1, #2
	add     r0, r5, r1
	add     r1, #0x1c
	blx     DC_FlushRange
	ldr     r0, [pc, #0x8] @ 0x21dbd98, (=0x4be4)
	mov     r2, #0x1
	add     r1, r5, r4
	strb    r2, [r1, r0]
	pop     {r3-r5,pc}
@ 0x21dbd98

.word 0x4be4 @ 0x21dbd98
.thumb
Function_21dbd9c: @ 21dbd9c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x28
	mov     r5, r0
	mov     r0, #0x63
	lsl     r1, r1, #5
	lsl     r0, r0, #4
	add     r6, r1, r0
	mov     r4, r2
	ldr     r0, [pc, #0x40] @ 0x21dbdf0, (=0x4be4)
	add     r1, r5, r4
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_21dbdcc
	mov     r2, #0xf9
	lsl     r2, r2, #2
	add     r1, r5, r2
	lsl     r0, r4, #10
	add     r0, r1, r0
	lsl     r1, r6, #5
	add     r2, #0x1c
	blx     GX_LoadOBJ
	add     sp, #0x28
	pop     {r4-r6,pc}

branch_21dbdcc: @ 21dbdcc :thumb
	add     r0, sp, #0x4
	blx     Function_20a818c
	add     r0, sp, #0x4
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	mov     r3, #0x1
	bl      Function_21dbba8
	mov     r0, r5
	mov     r1, r4
	bl      Function_21dbd68
	add     sp, #0x28
	pop     {r4-r6,pc}
@ 0x21dbdee


.align 2


.word 0x4be4 @ 0x21dbdf0
.thumb
Function_21dbdf4: @ 21dbdf4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x64
	mov     r6, r0
	bl      Function_21dbd4c
	ldr     r0, [r6, #0x0]
	bl      Function_21d77d8
	mov     r4, r0
	ldr     r0, [r6, #0x0]
	bl      Function_21d77d0
	mov     r2, r0
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r3, [r6, #0x20]
	add     r0, sp, #0x40
	bl      Function_21d783c
	mov     r0, r6
	bl      Function_21dbd40
	mov     r7, r0
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	mov     r0, #0x63
	lsl     r0, r0, #4
	str     r0, [sp, #0x8]
	mov     r4, r6
	mov     r5, #0x20
.thumb
branch_21dbe34: @ 21dbe34 :thumb
	add     r0, sp, #0x1c
	blx     Function_20a818c
	add     r0, sp, #0x1c
	str     r0, [sp, #0x0]
	ldr     r2, [sp, #0x8]
	mov     r0, r6
	mov     r1, r7
	mov     r3, #0x1
	bl      Function_21dbba8
	add     r0, sp, #0x1c
	str     r0, [sp, #0x40]
	mov     r0, #0xb
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	mov     r2, #0x2
	str     r0, [sp, #0x4]
	lsl     r2, r2, #8
	ldr     r0, [r6, #0x8]
	add     r1, sp, #0x40
	lsr     r3, r2, #1
	bl      Function_21d785c
	str     r0, [r4, #0x48]
	cmp     r0, #0x0
	bne     branch_21dbe6e
	bl      ErrorHandling
.thumb
branch_21dbe6e: @ 21dbe6e :thumb
	ldr     r0, [r4, #0x48]
	mov     r1, #0x0
	bl      Function_2021cac
	cmp     r5, #0x0
	ble     branch_21dbe8c
	lsl     r0, r5, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_21dbe9a

branch_21dbe8c: @ 21dbe8c :thumb
	lsl     r0, r5, #12
	blx     _fflt
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
branch_21dbe9a: @ 21dbe9a :thumb
	blx     _ffix
	str     r0, [sp, #0x10]
	mov     r0, #0x16
	lsl     r0, r0, #14
	str     r0, [sp, #0x14]
	mov     r0, #0x0
	str     r0, [sp, #0x18]
	ldr     r0, [r4, #0x48]
	add     r1, sp, #0x10
	bl      Function_2021c50
	mov     r0, r6
	mov     r1, r7
	bl      Function_21dbd68
	.hword  0x1c7f @ add r7, r7, #0x1
	cmp     r7, #0x12
	blt     branch_21dbec2
	mov     r7, #0x0
.thumb
branch_21dbec2: @ 21dbec2 :thumb
	ldr     r0, [sp, #0x8]
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r0, #0x20
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0xc]
	add     r5, #0x20
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0xc]
	cmp     r0, #0x7
	blt     branch_21dbe34
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_21dbeda: @ 21dbeda :thumb
	ldr     r0, [r6, #0xc]
	bl      Function_21d5e90
	mov     r1, r4
	bl      Function_2079b54
	mov     r1, r5
	add     r1, #0x94
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	str     r0, [r1, #0x0]
	cmp     r4, #0x12
	blt     branch_21dbeda
	add     sp, #0x64
	pop     {r4-r7,pc}
@ 0x21dbef8

.thumb
Function_21dbef8: @ 21dbef8 :thumb
	push    {r4-r6,lr}
	mov     r4, #0x0
	mov     r5, r0
	mov     r6, r4
.thumb
branch_21dbf00: @ 21dbf00 :thumb
	ldr     r0, [r5, #0x48]
	cmp     r0, #0x0
	beq     branch_21dbf0c
	bl      Function_2021bd4
	str     r6, [r5, #0x48]
.thumb
branch_21dbf0c: @ 21dbf0c :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x7
	blt     branch_21dbf00
	pop     {r4-r6,pc}
@ 0x21dbf16


.align 2, 0


.thumb
Function_21dbf18: @ 21dbf18 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	bl      Function_21dbd40
	mov     r4, r0
	mov     r6, #0x0
	mov     r5, r7
.thumb
branch_21dbf26: @ 21dbf26 :thumb
	mov     r0, r7
	mov     r1, r6
	mov     r2, r4
	bl      Function_21dbd9c
	ldr     r0, [r5, #0x48]
	mov     r1, #0x1
	bl      Function_2021cac
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x12
	blt     branch_21dbf40
	mov     r4, #0x0
.thumb
branch_21dbf40: @ 21dbf40 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x7
	blt     branch_21dbf26
	pop     {r3-r7,pc}
@ 0x21dbf4a


.align 2, 0


.thumb
Function_21dbf4c: @ 21dbf4c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r0, [r5, #0xc]
	bl      Function_21d5e90
	mov     r1, r5
	ldr     r2, [pc, #0x4c] @ 0x21dbfa8, (=0x4bfc)
	add     r1, #0xe0
	ldr     r1, [r1, #0x0]
	ldr     r2, [r5, r2]
	ldr     r4, [r5, #0x10]
	bl      Function_2079af4
	ldr     r1, [pc, #0x3c] @ 0x21dbfa8, (=0x4bfc)
	mov     r0, #0x0
	ldr     r1, [r5, r1]
	mov     r2, r0
	bl      Function_2002d7c
	mov     r6, r0
	mov     r0, r4
	mov     r1, #0x7
	bl      Function_201ada4_ClearTextBox
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x24] @ 0x21dbfac, (=0x20807)
	ldr     r2, [pc, #0x1c] @ 0x21dbfa8, (=0x4bfc)
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r2, [r5, r2]
	lsr     r5, r6, #1
	mov     r3, #0x30
	mov     r0, r4
	sub     r3, r3, r5
	bl      Function_201d78c
	mov     r0, r4
	bl      Function_201accc
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21dbfa6


.align 2


.word 0x4bfc @ 0x21dbfa8
.word 0x20807 @ 0x21dbfac
.thumb
Function_21dbfb0: @ 21dbfb0 :thumb
	push    {r4,lr}
	ldr     r4, [r0, #0x10]
	mov     r1, #0x7
	mov     r0, r4
	bl      Function_201ada4_ClearTextBox
	mov     r0, r4
	bl      Function_201accc
	pop     {r4,pc}
@ 0x21dbfc4

.thumb
Function_21dbfc4: @ 21dbfc4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r7, r0
	ldr     r0, [r7, #0x10]
	mov     r1, #0x4
	str     r0, [sp, #0xc]
	add     r0, #0x10
	str     r0, [sp, #0xc]
	bl      Function_201ada4_ClearTextBox
	mov     r0, r7
	bl      Function_21dbd40
	mov     r6, #0x0
	mov     r4, r0
	mov     r5, r6
.thumb
branch_21dbfe4: @ 21dbfe4 :thumb
	ldr     r0, [sp, #0xc]
	lsl     r1, r4, #2
	str     r0, [sp, #0x0]
	add     r1, r7, r1
	str     r5, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	add     r1, #0x94
	mov     r2, #0x2
	ldr     r0, [r7, #0x44]
	ldr     r1, [r1, #0x0]
	mov     r3, r2
	bl      Function_200c5bc
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x12
	blt     branch_21dc008
	mov     r4, #0x0
.thumb
branch_21dc008: @ 21dc008 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x20
	cmp     r6, #0x7
	blt     branch_21dbfe4
	ldr     r0, [sp, #0xc]
	bl      Function_201accc
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21dc01a


.align 2, 0


.thumb
Function_21dc01c: @ 21dc01c :thumb
	push    {r4,lr}
	ldr     r4, [r0, #0x10]
	mov     r1, #0x4
	add     r4, #0x10
	mov     r0, r4
	bl      Function_201ada4_ClearTextBox
	mov     r0, r4
	bl      Function_201accc
	pop     {r4,pc}
@ 0x21dc032


.align 2, 0


.thumb
Function_21dc034: @ 21dc034 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0xa
	mov     r1, #0xc
	bl      malloc
	mov     r4, r0
	beq     branch_21dc06e
	ldr     r0, [pc, #0x28] @ 0x21dc070, (=0x21e0208)
	lsl     r1, r6, #2
	ldr     r0, [r0, r1]
	str     r5, [r4, #0x0]
	mov     r2, #0x0
	strb    r2, [r4, #0x4]
	mov     r1, r4
	strb    r2, [r4, #0x5]
	bl      AddTaskToTaskList1
	mov     r1, r5
	add     r1, #0xdc
	add     r5, #0xdc
	str     r0, [r1, #0x0]
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	bne     branch_21dc06e
	mov     r0, r4
	bl      free
.thumb
branch_21dc06e: @ 21dc06e :thumb
	pop     {r4-r6,pc}
@ 0x21dc070

.word 0x21e0208 @ 0x21dc070
.thumb
Function_21dc074: @ 21dc074 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r1, #0x0]
	mov     r2, #0x0
	add     r0, #0xdc
	str     r2, [r0, #0x0]
	mov     r0, r1
	bl      free
	mov     r0, r4
	bl      Call_RemoveTaskFromTaskList
	pop     {r4,pc}
@ 0x21dc08e


.align 2, 0


.thumb
Function_21dc090: @ 21dc090 :thumb
	add     r0, #0xdc
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_21dc09c
	mov     r0, #0x1
	bx      lr
@ 0x21dc09c

.thumb
branch_21dc09c: @ 21dc09c :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21dc0a0

.thumb
Function_21dc0a0: @ 21dc0a0 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x1c
	mov     r4, r1
	ldrb    r2, [r4, #0x4]
	ldr     r5, [r4, #0x0]
	cmp     r2, #0x3
	bls     branch_21dc0b0
	b       branch_21dc1c6
@ 0x21dc0b0

.thumb
branch_21dc0b0: @ 21dc0b0 :thumb
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x21dc0bc

Jumppoints_21dc0bc:
.hword branch_21dc0c4 - Jumppoints_21dc0bc - 2
.hword branch_21dc14a - Jumppoints_21dc0bc - 2
.hword branch_21dc170 - Jumppoints_21dc0bc - 2
.hword branch_21dc1c2 - Jumppoints_21dc0bc - 2
.thumb
branch_21dc0c4: @ 21dc0c4 :thumb
	ldrb    r0, [r4, #0x5]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x5]
	ldrb    r0, [r4, #0x5]
	lsl     r1, r0, #1
	cmp     r1, #0xa
	bge     branch_21dc11a
	mov     r1, #0xa
	sub     r1, r1, r0
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	str     r1, [sp, #0x0]
	mov     r1, #0x20
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r2, [r5, #0x30]
	ldr     r0, [r5, #0x4]
	mov     r1, #0x1
	add     r2, #0xc
	mov     r3, #0x0
	bl      Function_20198c0
	ldrb    r6, [r4, #0x5]
	mov     r0, #0x20
	mov     r3, #0xa
	str     r0, [sp, #0x0]
	str     r6, [sp, #0x4]
	ldr     r1, [r5, #0x30]
	mov     r2, #0x0
	add     r1, #0xc
	str     r1, [sp, #0x8]
	sub     r1, r3, r6
	lsl     r1, r1, #24
	str     r2, [sp, #0xc]
	lsr     r1, r1, #24
	str     r1, [sp, #0x10]
	str     r0, [sp, #0x14]
	str     r3, [sp, #0x18]
	ldr     r0, [r5, #0x4]
	mov     r1, #0x1
	bl      Function_20198e8
	b       branch_21dc13a
@ 0x21dc11a

.thumb
branch_21dc11a: @ 21dc11a :thumb
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0xa
	str     r0, [sp, #0x8]
	ldr     r2, [r5, #0x30]
	ldr     r0, [r5, #0x4]
	mov     r1, #0x1
	add     r2, #0xc
	mov     r3, #0x0
	bl      Function_20198c0
	ldrb    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
.thumb
branch_21dc13a: @ 21dc13a :thumb
	ldr     r0, [r5, #0x4]
	mov     r1, #0x1
	bl      Function_2019448
	mov     r0, #0x7
	add     sp, #0x1c
	strb    r0, [r4, #0x5]
	pop     {r3-r6,pc}
@ 0x21dc14a

.thumb
branch_21dc14a: @ 21dc14a :thumb
	ldrb    r0, [r4, #0x5]
	mov     r3, r5
	mov     r2, #0x60
	mov     r1, r0
	add     r3, #0xe4
	mul     r1, r2
	add     r0, r3, r1
	mov     r1, #0x1a
	lsl     r1, r1, #4
	blx     GX_LoadOBJPltt
	mov     r0, r5
	bl      Function_21dbf18
	ldrb    r0, [r4, #0x4]
	add     sp, #0x1c
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
	pop     {r3-r6,pc}
@ 0x21dc170

.thumb
branch_21dc170: @ 21dc170 :thumb
	ldrb    r0, [r4, #0x5]
	cmp     r0, #0x0
	beq     branch_21dc17a
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0x5]
.thumb
branch_21dc17a: @ 21dc17a :thumb
	ldrb    r0, [r4, #0x5]
	mov     r3, r5
	mov     r2, #0x60
	mov     r1, r0
	add     r3, #0xe4
	mul     r1, r2
	add     r0, r3, r1
	mov     r1, #0x1a
	lsl     r1, r1, #4
	blx     GX_LoadOBJPltt
	ldrb    r0, [r4, #0x5]
	cmp     r0, #0x0
	bne     branch_21dc1c6
	ldr     r0, [r5, #0x10]
	bl      Function_201a9f4
	ldr     r0, [r5, #0x10]
	add     r0, #0x10
	bl      Function_201a9f4
	mov     r0, r5
	bl      Function_21dbf4c
	mov     r0, r5
	bl      Function_21dbfc4
	ldr     r0, [r5, #0x4]
	mov     r1, #0x1
	bl      Function_2019448
	ldrb    r0, [r4, #0x4]
	add     sp, #0x1c
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
	pop     {r3-r6,pc}
@ 0x21dc1c2

.thumb
branch_21dc1c2: @ 21dc1c2 :thumb
	bl      Function_21dc074
.thumb
branch_21dc1c6: @ 21dc1c6 :thumb
	add     sp, #0x1c
	pop     {r3-r6,pc}
@ 0x21dc1ca


.align 2, 0


.thumb
Function_21dc1cc: @ 21dc1cc :thumb
	push    {r4,r5,lr}
	add     sp, #-0x1c
	mov     r5, r1
	ldrb    r2, [r5, #0x4]
	ldr     r4, [r5, #0x0]
	cmp     r2, #0x0
	beq     branch_21dc1e6
	cmp     r2, #0x1
	beq     branch_21dc202
	cmp     r2, #0x2
	beq     branch_21dc294
	add     sp, #0x1c
	pop     {r4,r5,pc}
@ 0x21dc1e6

.thumb
branch_21dc1e6: @ 21dc1e6 :thumb
	mov     r0, r4
	bl      Function_21dbef8
	mov     r0, r4
	bl      Function_21dbfb0
	mov     r0, r4
	bl      Function_21dc01c
	ldrb    r0, [r5, #0x4]
	add     sp, #0x1c
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x4]
	pop     {r4,r5,pc}
@ 0x21dc202

.thumb
branch_21dc202: @ 21dc202 :thumb
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0xa
	str     r0, [sp, #0x8]
	mov     r0, #0x11
	str     r0, [sp, #0xc]
	mov     r2, #0x0
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	mov     r3, r2
	bl      Function_2019cb8
	ldrb    r0, [r5, #0x5]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x5]
	ldrb    r0, [r5, #0x5]
	lsl     r1, r0, #1
	cmp     r1, #0xa
	bge     branch_21dc282
	add     r1, r0, #0x5
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	str     r1, [sp, #0x0]
	mov     r1, #0x20
	str     r1, [sp, #0x4]
	mov     r1, #0x5
	sub     r0, r1, r0
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	ldr     r2, [r4, #0x30]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	add     r2, #0xc
	mov     r3, #0x0
	bl      Function_20198c0
	ldrb    r1, [r5, #0x5]
	mov     r2, #0x5
	mov     r0, #0x20
	sub     r2, r2, r1
	lsl     r2, r2, #24
	mov     r3, #0xa
	sub     r1, r3, r1
	lsl     r1, r1, #24
	str     r0, [sp, #0x0]
	lsr     r2, r2, #24
	str     r2, [sp, #0x4]
	ldr     r2, [r4, #0x30]
	lsr     r1, r1, #24
	add     r2, #0xc
	str     r2, [sp, #0x8]
	mov     r2, #0x0
	str     r2, [sp, #0xc]
	str     r1, [sp, #0x10]
	str     r0, [sp, #0x14]
	str     r3, [sp, #0x18]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      Function_20198e8
	b       branch_21dc288
@ 0x21dc282

.thumb
branch_21dc282: @ 21dc282 :thumb
	ldrb    r0, [r5, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x4]
.thumb
branch_21dc288: @ 21dc288 :thumb
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      Function_2019448
	add     sp, #0x1c
	pop     {r4,r5,pc}
@ 0x21dc294

.thumb
branch_21dc294: @ 21dc294 :thumb
	bl      Function_21dc074
	add     sp, #0x1c
	pop     {r4,r5,pc}
@ 0x21dc29c

.thumb
Function_21dc29c: @ 21dc29c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0xa
	mov     r1, #0x18
	bl      malloc
	mov     r4, r0
	beq     branch_21dc350
	ldr     r0, [r5, #0xc]
	bl      Function_21d5f88
	mov     r6, r0
	ldr     r0, [r5, #0x4]
	mov     r1, #0x1
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2019184
	mov     r0, #0x18
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x7
	str     r0, [sp, #0x8]
	ldr     r2, [r5, #0x38]
	ldr     r0, [r5, #0x4]
	mov     r1, #0x1
	add     r2, #0xc
	mov     r3, #0x0
	bl      Function_20198c0
	ldr     r0, [r5, #0x10]
	mov     r1, #0x4
	add     r0, #0x20
	bl      Function_201ada4_ClearTextBox
	ldr     r2, [pc, #0x6c] @ 0x21dc354, (=0x4bf8)
	mov     r1, r6
	ldr     r0, [r5, r2]
	.hword  0x1d12 @ add r2, r2, #0x4
	ldr     r2, [r5, r2]
	bl      Function_200b1b8_CallMsgDecrypt
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x58] @ 0x21dc358, (=0x20104)
	ldr     r2, [pc, #0x5c] @ 0x21dc35c, (=0x4bfc)
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [r5, #0x10]
	ldr     r2, [r5, r2]
	add     r0, #0x20
	mov     r3, r1
	bl      Function_201d78c
	ldr     r0, [r5, #0x10]
	add     r0, #0x20
	bl      Function_201a954
	mov     r0, r5
	mov     r1, r6
	bl      Function_21dc4f8
	mov     r1, #0x0
	strh    r1, [r4, #0x16]
	str     r5, [r4, #0x0]
	ldr     r0, [r5, #0x4]
	str     r0, [r4, #0x4]
	str     r1, [r4, #0x8]
	mov     r1, #0xe
	lsl     r1, r1, #14
	str     r1, [r4, #0xc]
	ldr     r0, [r4, #0x8]
	sub     r0, r1, r0
	mov     r1, #0x6
	blx     _s32_div_f
	str     r0, [r4, #0x10]
	mov     r0, #0x6
	strh    r0, [r4, #0x14]
	ldr     r0, [pc, #0x1c] @ 0x21dc360, (=0x21dc37d)
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_21d77c8
	add     r5, #0xdc
	str     r0, [r5, #0x0]
.thumb
branch_21dc350: @ 21dc350 :thumb
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21dc354

.word 0x4bf8 @ 0x21dc354
.word 0x20104 @ 0x21dc358
.word 0x4bfc @ 0x21dc35c
.word 0x21dc37d @ 0x21dc360
.thumb
Function_21dc364: @ 21dc364 :thumb
	add     r0, #0xdc
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_21dc370
	mov     r0, #0x1
	bx      lr
@ 0x21dc370

.thumb
branch_21dc370: @ 21dc370 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21dc374

.thumb
Function_21dc374: @ 21dc374 :thumb
	mov     r1, #0x0
	add     r0, #0xdc
	str     r1, [r0, #0x0]
	bx      lr
@ 0x21dc37c

.thumb
Function_21dc37c: @ 21dc37c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldrh    r0, [r4, #0x16]
	cmp     r0, #0x0
	beq     branch_21dc38e
	cmp     r0, #0x1
	beq     branch_21dc394
	pop     {r3-r5,pc}
@ 0x21dc38e

.thumb
branch_21dc38e: @ 21dc38e :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x16]
	pop     {r3-r5,pc}
@ 0x21dc394

.thumb
branch_21dc394: @ 21dc394 :thumb
	ldrh    r0, [r4, #0x14]
	cmp     r0, #0x0
	beq     branch_21dc3c2
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, #0x14]
	ldr     r1, [r4, #0x8]
	ldr     r0, [r4, #0x10]
	mov     r2, #0x3
	add     r3, r1, r0
	str     r3, [r4, #0x8]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	asr     r3, r3, #12
	bl      Function_2019184
	mov     r1, #0xe
	ldr     r2, [r4, #0x8]
	lsl     r1, r1, #16
	ldr     r0, [r4, #0x0]
	sub     r1, r1, r2
	bl      Function_21dc5b8
	pop     {r3-r5,pc}
@ 0x21dc3c2

.thumb
branch_21dc3c2: @ 21dc3c2 :thumb
	ldr     r3, [r4, #0xc]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	mov     r2, #0x3
	asr     r3, r3, #12
	bl      Function_2019184
	mov     r1, #0xe
	ldr     r2, [r4, #0xc]
	lsl     r1, r1, #16
	ldr     r0, [r4, #0x0]
	sub     r1, r1, r2
	bl      Function_21dc5b8
	ldr     r1, [pc, #0x10] @ 0x21dc3f0, (=0x21dc375)
	ldr     r2, [r4, #0x0]
	mov     r0, r4
	bl      Function_21d79b8
	mov     r0, r5
	bl      Call_RemoveTaskFromTaskList
	pop     {r3-r5,pc}
@ 0x21dc3f0

.word Function_21dc374+1 @ =0x21dc375, 0x21dc3f0
.thumb
Function_21dc3f4: @ 21dc3f4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0xa
	mov     r1, #0x18
	bl      malloc
	mov     r4, r0
	beq     branch_21dc434
	mov     r1, #0x0
	strh    r1, [r4, #0x16]
	str     r5, [r4, #0x0]
	ldr     r0, [r5, #0x4]
	str     r0, [r4, #0x4]
	mov     r0, #0xe
	lsl     r0, r0, #14
	str     r0, [r4, #0x8]
	str     r1, [r4, #0xc]
	ldr     r0, [r4, #0x8]
	sub     r0, r1, r0
	mov     r1, #0x6
	blx     _s32_div_f
	str     r0, [r4, #0x10]
	mov     r0, #0x6
	strh    r0, [r4, #0x14]
	ldr     r0, [pc, #0x10] @ 0x21dc438, (=0x21dc46d)
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_21d77c8
	add     r5, #0xdc
	str     r0, [r5, #0x0]
.thumb
branch_21dc434: @ 21dc434 :thumb
	pop     {r3-r5,pc}
@ 0x21dc436


.align 2


.word 0x21dc46d @ 0x21dc438
.thumb
Function_21dc43c: @ 21dc43c :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0xdc
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_21dc45e
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2019184
	mov     r0, r4
	bl      Function_21dc5e0
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21dc45e

.thumb
branch_21dc45e: @ 21dc45e :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21dc462


.align 2, 0


.thumb
Function_21dc464: @ 21dc464 :thumb
	mov     r1, #0x0
	add     r0, #0xdc
	str     r1, [r0, #0x0]
	bx      lr
@ 0x21dc46c

.thumb
Function_21dc46c: @ 21dc46c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r4, r1
	mov     r5, r0
	ldrh    r0, [r4, #0x14]
	cmp     r0, #0x0
	beq     branch_21dc4a4
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, #0x14]
	ldr     r1, [r4, #0x8]
	ldr     r0, [r4, #0x10]
	mov     r2, #0x3
	add     r3, r1, r0
	str     r3, [r4, #0x8]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	asr     r3, r3, #12
	bl      Function_2019184
	mov     r1, #0xe
	ldr     r2, [r4, #0x8]
	lsl     r1, r1, #16
	ldr     r0, [r4, #0x0]
	sub     r1, r1, r2
	bl      Function_21dc5b8
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x21dc4a4

.thumb
branch_21dc4a4: @ 21dc4a4 :thumb
	ldr     r3, [r4, #0xc]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	mov     r2, #0x3
	asr     r3, r3, #12
	bl      Function_2019184
	mov     r1, #0xe
	ldr     r2, [r4, #0xc]
	lsl     r1, r1, #16
	ldr     r0, [r4, #0x0]
	sub     r1, r1, r2
	bl      Function_21dc5b8
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x11
	str     r0, [sp, #0xc]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	mov     r3, r2
	bl      Function_2019cb8
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      Function_2019448
	ldr     r1, [pc, #0x10] @ 0x21dc4f4, (=0x21dc465)
	ldr     r2, [r4, #0x0]
	mov     r0, r4
	bl      Function_21d79b8
	mov     r0, r5
	bl      Call_RemoveTaskFromTaskList
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x21dc4f4

.word Function_21dc464+1 @ =0x21dc465, 0x21dc4f4
.thumb
Function_21dc4f8: @ 21dc4f8 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x54
	mov     r5, r0
	mov     r4, r1
	beq     branch_21dc5ae
	ldr     r0, [r5, #0x0]
	bl      Function_21d77d8
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	bl      Function_21d77d0
	mov     r2, r0
	ldr     r0, [r6, #0x20]
	add     r1, sp, #0xc
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r3, [r6, #0x1c]
	add     r0, sp, #0x30
	bl      Function_21d783c
	add     r0, sp, #0xc
	blx     Function_20a818c
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	mov     r1, #0x1
	bl      Function_207ce78
	mov     r1, r0
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	mov     r2, #0x0
	add     r3, sp, #0x8
	bl      Function_2006f50
	mov     r6, r0
	mov     r0, #0x1
	lsl     r0, r0, #26
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x64] @ 0x21dc5b4, (=0x300010)
	mov     r2, #0x1
	and     r1, r0
	ldr     r0, [sp, #0x8]
	add     r3, sp, #0xc
	str     r1, [r0, #0x8]
	mov     r1, #0xbe
	ldr     r0, [sp, #0x8]
	lsl     r1, r1, #8
	blx     Function_20a8224_LoadTexOBJ
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	mov     r1, #0x2
	bl      Function_207ce78
	mov     r1, r0
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	mov     r0, #ItemIcon_Narc
	mov     r2, #0x1
	mov     r3, #0xc0
	bl      Call_LoadFromNARC_RLCN
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x8]
	add     r1, sp, #0x30
	mov     r2, #0x12
	mov     r3, #0xe0
	bl      Function_21d785c
	mov     r1, r5
	add     r1, #0x90
	add     r5, #0x90
	str     r0, [r1, #0x0]
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_21dc5a8
	mov     r1, #0x6
	bl      Function_2021e90
.thumb
branch_21dc5a8: @ 21dc5a8 :thumb
	mov     r0, r6
	bl      free
.thumb
branch_21dc5ae: @ 21dc5ae :thumb
	add     sp, #0x54
	pop     {r3-r6,pc}
@ 0x21dc5b2


.align 2


.word 0x300010 @ 0x21dc5b4
.thumb
Function_21dc5b8: @ 21dc5b8 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r2, r0
	add     r2, #0x90
	ldr     r2, [r2, #0x0]
	cmp     r2, #0x0
	beq     branch_21dc5dc
	mov     r2, #0x12
	lsl     r2, r2, #12
	str     r1, [sp, #0x4]
	mov     r1, #0x0
	str     r1, [sp, #0x8]
	str     r2, [sp, #0x0]
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	add     r1, sp, #0x0
	bl      Function_2021c50
.thumb
branch_21dc5dc: @ 21dc5dc :thumb
	add     sp, #0xc
	pop     {pc}
@ 0x21dc5e0

.thumb
Function_21dc5e0: @ 21dc5e0 :thumb
	push    {r3,lr}
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_21dc5ee
	bl      Function_2021bd4
.thumb
branch_21dc5ee: @ 21dc5ee :thumb
	pop     {r3,pc}
@ 0x21dc5f0

.thumb
Function_21dc5f0: @ 21dc5f0 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	str     r4, [r5, #0x0]
	ldr     r0, [sp, #0x18]
	str     r6, [r5, #0xc]
	str     r0, [r5, #0x8]
	str     r3, [r5, #0x4]
	mov     r0, r4
	bl      Function_21d77d8
	str     r0, [r5, #0x38]
	mov     r0, r4
	bl      Function_21d77e0
	str     r0, [r5, #0x10]
	mov     r0, r6
	bl      Function_21d5e08
	cmp     r0, #0x4
	beq     branch_21dc626
	mov     r0, #0xe
	str     r0, [r5, #0x30]
	mov     r0, #0x0
	b       branch_21dc62c
@ 0x21dc626

.thumb
branch_21dc626: @ 21dc626 :thumb
	mov     r0, #0x9
	str     r0, [r5, #0x30]
	sub     r0, #0x31
.thumb
branch_21dc62c: @ 21dc62c :thumb
	str     r0, [r5, #0x34]
	mov     r0, r5
	mov     r1, #0x0
	add     r0, #0x2b
	strb    r1, [r0, #0x0]
	str     r1, [r5, #0x2c]
	mov     r1, r5
	ldr     r0, [r5, #0x38]
	add     r1, #0x3c
	mov     r2, #0x6
	bl      Function_21da3cc
	mov     r1, #0x9
	mov     r0, #0xa
	lsl     r1, r1, #6
	bl      malloc
	str     r0, [r5, #0x1c]
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	mov     r3, r5
	ldr     r0, [sp, #0x1c]
	mov     r1, #0x6
	mov     r2, #0x1
	add     r3, #0x18
	bl      Function_20071d0
	str     r0, [r5, #0x14]
	cmp     r0, #0x0
	beq     branch_21dc66e
	ldr     r1, [r5, #0x1c]
	cmp     r1, #0x0
	bne     branch_21dc674
.thumb
branch_21dc66e: @ 21dc66e :thumb
	add     sp, #0x4
	mov     r0, #0x0
	pop     {r3-r6,pc}
@ 0x21dc674

.thumb
branch_21dc674: @ 21dc674 :thumb
	mov     r0, r5
	bl      Function_21dcdb4
	mov     r0, #0x1
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x21dc680

.thumb
Function_21dc680: @ 21dc680 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x0
	beq     branch_21dc68e
	bl      free
.thumb
branch_21dc68e: @ 21dc68e :thumb
	ldr     r0, [r4, #0x1c]
	cmp     r0, #0x0
	beq     branch_21dc698
	bl      free
.thumb
branch_21dc698: @ 21dc698 :thumb
	mov     r0, r4
	bl      Function_21dcf50
	pop     {r4,pc}
@ 0x21dc6a0

.thumb
Function_21dc6a0: @ 21dc6a0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, r4
	mov     r2, #0x0
	add     r1, #0x2b
	strb    r2, [r1, #0x0]
	mov     r1, r4
	add     r1, #0x2b
	ldrb    r1, [r1, #0x0]
	bl      Function_21dcd64
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21dceb8
	ldr     r0, [r4, #0x4]
	mov     r1, #0x2
	bl      Function_2019448
	pop     {r4,pc}
@ 0x21dc6c8

.thumb
Function_21dc6c8: @ 21dc6c8 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x0
	bl      Function_21dceb8
	mov     r0, r4
	mov     r1, #0x1a
	add     r0, #0x2b
	strb    r1, [r0, #0x0]
	ldr     r0, [pc, #0x18] @ 0x21dc6f4, (=0x21dc709)
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_21d77c8
	cmp     r0, #0x0
	beq     branch_21dc6ec
	mov     r0, #0x1
	b       branch_21dc6ee
@ 0x21dc6ec

.thumb
branch_21dc6ec: @ 21dc6ec :thumb
	mov     r0, #0x0
.thumb
branch_21dc6ee: @ 21dc6ee :thumb
	str     r0, [r4, #0x2c]
	pop     {r4,pc}
@ 0x21dc6f2


.align 2


.word 0x21dc709 @ 0x21dc6f4
.thumb
Function_21dc6f8: @ 21dc6f8 :thumb
	ldr     r0, [r0, #0x2c]
	cmp     r0, #0x0
	bne     branch_21dc702
	mov     r0, #0x1
	bx      lr
@ 0x21dc702

.thumb
branch_21dc702: @ 21dc702 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21dc706


.align 2, 0


.thumb
Function_21dc708: @ 21dc708 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	add     r0, #0x2b
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x2
	bls     branch_21dc724
	mov     r0, r5
	add     r0, #0x2b
	ldrb    r0, [r0, #0x0]
	ldr     r4, [pc, #0x44] @ 0x21dc764, (=0xffff0000)
	.hword  0x1e81 @ sub r1, r0, #0x2
	b       branch_21dc72a
@ 0x21dc724

.thumb
branch_21dc724: @ 21dc724 :thumb
	lsl     r0, r0, #15
	neg     r4, r0
	mov     r1, #0x0
.thumb
branch_21dc72a: @ 21dc72a :thumb
	mov     r0, r5
	add     r0, #0x2b
	strb    r1, [r0, #0x0]
	mov     r1, r5
	add     r1, #0x2b
	ldrb    r1, [r1, #0x0]
	mov     r0, r5
	bl      Function_21dcd64
	ldr     r0, [r5, #0x4]
	mov     r1, #0x2
	bl      Function_2019448
	mov     r0, r5
	mov     r1, r4
	bl      Function_21dce50
	mov     r0, r5
	add     r0, #0x2b
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_21dc760
	mov     r0, #0x0
	str     r0, [r5, #0x2c]
	mov     r0, r6
	bl      Call_RemoveTaskFromTaskList
.thumb
branch_21dc760: @ 21dc760 :thumb
	pop     {r4-r6,pc}
@ 0x21dc762


.align 2


.word 0xffff0000 @ 0x21dc764
.thumb
Function_21dc768: @ 21dc768 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x14] @ 0x21dc784, (=0x21dc79d)
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_21d77c8
	cmp     r0, #0x0
	beq     branch_21dc77e
	mov     r0, #0x1
	b       branch_21dc780
@ 0x21dc77e

.thumb
branch_21dc77e: @ 21dc77e :thumb
	mov     r0, #0x0
.thumb
branch_21dc780: @ 21dc780 :thumb
	str     r0, [r4, #0x2c]
	pop     {r4,pc}
@ 0x21dc784

.word 0x21dc79d @ 0x21dc784
.thumb
Function_21dc788: @ 21dc788 :thumb
	push    {r3,lr}
	ldr     r1, [r0, #0x2c]
	cmp     r1, #0x0
	bne     branch_21dc798
	bl      Function_21dcf50
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21dc798

.thumb
branch_21dc798: @ 21dc798 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21dc79c

.thumb
Function_21dc79c: @ 21dc79c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	add     r0, #0x2b
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x18
	bcs     branch_21dc7bc
	mov     r0, r5
	add     r0, #0x2b
	ldrb    r0, [r0, #0x0]
	mov     r4, #0x1
	lsl     r4, r4, #16
	add     r1, r0, #0x2
	b       branch_21dc7c2
@ 0x21dc7bc

.thumb
branch_21dc7bc: @ 21dc7bc :thumb
	mov     r1, #0x1a
	sub     r0, r1, r0
	lsl     r4, r0, #15
.thumb
branch_21dc7c2: @ 21dc7c2 :thumb
	mov     r0, r5
	add     r0, #0x2b
	strb    r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x2b
	ldrb    r1, [r0, #0x0]
	cmp     r1, #0x2
	bls     branch_21dc7fe
	asr     r0, r4, #12
	lsr     r0, r0, #3
	.hword  0x1e89 @ sub r1, r1, #0x2
	sub     r1, r1, r0
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	str     r1, [sp, #0x0]
	mov     r1, #0xf
	lsl     r0, r0, #24
	str     r1, [sp, #0x4]
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	mov     r0, #0x11
	str     r0, [sp, #0xc]
	ldr     r3, [r5, #0x30]
	ldr     r0, [r5, #0x4]
	lsl     r3, r3, #24
	mov     r1, #0x2
	mov     r2, #0x0
	lsr     r3, r3, #24
	bl      Function_2019cb8
.thumb
branch_21dc7fe: @ 21dc7fe :thumb
	mov     r1, r5
	add     r1, #0x2b
	ldrb    r1, [r1, #0x0]
	mov     r0, r5
	bl      Function_21dcd64
	ldr     r0, [r5, #0x4]
	mov     r1, #0x2
	bl      Function_2019448
	mov     r0, r5
	mov     r1, r4
	bl      Function_21dce50
	mov     r0, r5
	add     r0, #0x2b
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1a
	bne     branch_21dc82e
	mov     r0, #0x0
	str     r0, [r5, #0x2c]
	mov     r0, r6
	bl      Call_RemoveTaskFromTaskList
.thumb
branch_21dc82e: @ 21dc82e :thumb
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21dc832


.align 2, 0


.thumb
Function_21dc834: @ 21dc834 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r6, r0
	ldr     r0, [r6, #0xc]
	ldr     r0, [r0, #0x4]
	bl      GetNrOfPkmnInParty
	mov     r1, r6
	add     r1, #0x28
	ldrb    r4, [r1, #0x0]
	cmp     r4, r0
	bge     branch_21dc8d8
	sub     r0, r0, r4
	str     r0, [sp, #0x8]
	cmp     r4, #0x5
	bge     branch_21dc8b0
	mov     r0, #0x34
	mov     r1, r4
	mul     r1, r0
	mov     r0, r6
	str     r0, [sp, #0xc]
	add     r0, #0x3c
	str     r0, [sp, #0xc]
	add     r5, r0, r1
	add     r7, r6, r1
	ldr     r0, [pc, #0x78] @ 0x21dc8e0, (=0x418)
	lsl     r1, r4, #5
	add     r0, r1, r0
	str     r0, [sp, #0x4]
.thumb
branch_21dc86e: @ 21dc86e :thumb
	add     r1, r4, #0x1
	mov     r0, #0x34
	mul     r0, r1
	ldr     r1, [sp, #0xc]
	str     r0, [sp, #0x0]
	add     r0, r1, r0
	mov     r1, r5
	mov     r2, #0x1
	bl      Function_21da418
	ldr     r2, [sp, #0xc]
	ldr     r1, [sp, #0x0]
	ldr     r0, [r6, #0x38]
	add     r1, r2, r1
	mov     r2, #0x1
	bl      Function_21da3cc
	ldr     r0, [r7, #0x3c]
	cmp     r0, #0x0
	beq     branch_21dc8a0
	ldr     r0, [r6, #0x38]
	ldr     r2, [sp, #0x4]
	mov     r1, r5
	bl      Function_21da754
.thumb
branch_21dc8a0: @ 21dc8a0 :thumb
	ldr     r0, [sp, #0x4]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r0, #0x20
	add     r5, #0x34
	add     r7, #0x34
	str     r0, [sp, #0x4]
	cmp     r4, #0x5
	blt     branch_21dc86e
.thumb
branch_21dc8b0: @ 21dc8b0 :thumb
	mov     r1, r6
	ldr     r0, [sp, #0x8]
	add     r1, #0x29
	strb    r0, [r1, #0x0]
	mov     r0, r6
	mov     r2, #0x0
	add     r0, #0x2a
	strb    r2, [r0, #0x0]
	ldr     r0, [pc, #0x20] @ 0x21dc8e4, (=0x21dc8e9)
	mov     r1, r6
	bl      Function_21d77c8
	cmp     r0, #0x0
	beq     branch_21dc8d0
	mov     r0, #0x1
	b       branch_21dc8d2
@ 0x21dc8d0

.thumb
branch_21dc8d0: @ 21dc8d0 :thumb
	mov     r0, #0x0
.thumb
branch_21dc8d2: @ 21dc8d2 :thumb
	add     sp, #0x10
	str     r0, [r6, #0x2c]
	pop     {r3-r7,pc}
@ 0x21dc8d8

.thumb
branch_21dc8d8: @ 21dc8d8 :thumb
	mov     r0, #0x0
	str     r0, [r6, #0x2c]
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21dc8e0

.word 0x418 @ 0x21dc8e0
.word 0x21dc8e9 @ 0x21dc8e4
.thumb
Function_21dc8e8: @ 21dc8e8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	str     r1, [sp, #0x4]
	ldr     r2, [sp, #0x4]
	str     r0, [sp, #0x0]
	add     r1, #0x28
	ldr     r0, [sp, #0x4]
	add     r2, #0x2a
	add     r0, #0x29
	ldrb    r7, [r0, #0x0]
	ldr     r0, [sp, #0x4]
	ldrb    r1, [r1, #0x0]
	ldrb    r3, [r2, #0x0]
	ldr     r0, [r0, #0x1c]
	lsl     r2, r1, #3
	add     r3, r3, r2
	mov     r2, #0xc
	mul     r2, r3
	add     r4, r0, r2
	mov     r6, #0x0
	cmp     r7, #0x0
	ble     branch_21dc934
	mov     r0, #0x34
	mov     r2, r1
	mul     r2, r0
	ldr     r0, [sp, #0x4]
	add     r5, r0, r2
.thumb
branch_21dc91e: @ 21dc91e :thumb
	ldr     r0, [r5, #0x3c]
	cmp     r0, #0x0
	beq     branch_21dc92a
	mov     r1, r4
	bl      Function_2021c50
.thumb
branch_21dc92a: @ 21dc92a :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x34
	add     r4, #0x60
	cmp     r6, r7
	blt     branch_21dc91e
.thumb
branch_21dc934: @ 21dc934 :thumb
	ldr     r0, [sp, #0x4]
	add     r0, #0x2a
	ldrb    r0, [r0, #0x0]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x4]
	add     r0, #0x2a
	strb    r1, [r0, #0x0]
	ldr     r0, [sp, #0x4]
	add     r0, #0x2a
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x8
	bcc     branch_21dc958
	ldr     r0, [sp, #0x4]
	mov     r1, #0x0
	str     r1, [r0, #0x2c]
	ldr     r0, [sp, #0x0]
	bl      Call_RemoveTaskFromTaskList
.thumb
branch_21dc958: @ 21dc958 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21dc95c

.thumb
Function_21dc95c: @ 21dc95c :thumb
	ldr     r0, [r0, #0x2c]
	cmp     r0, #0x0
	bne     branch_21dc966
	mov     r0, #0x1
	bx      lr
@ 0x21dc966

.thumb
branch_21dc966: @ 21dc966 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21dc96a


.align 2, 0


.thumb
Function_21dc96c: @ 21dc96c :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [r5, #0xc]
	ldr     r0, [r0, #0x4]
	bl      GetNrOfPkmnInParty
	.hword  0x1e44 @ sub r4, r0, #0x1
	mov     r0, r5
	add     r0, #0x28
	ldrb    r0, [r0, #0x0]
	cmp     r0, r4
	bls     branch_21dc9f2
	mov     r0, #0x34
	mul     r0, r4
	add     r0, r5, r0
	ldr     r0, [r0, #0x3c]
	bl      Function_2021d28
	mov     r3, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x0
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	ldr     r1, [pc, #0x5c] @ 0x21dc9fc, (=0x21e0234)
	str     r0, [r2, #0x0]
	lsl     r0, r4, #2
	ldrh    r1, [r1, r0]
	ldr     r2, [r5, #0x34]
	add     r1, r2, r1
	lsl     r2, r1, #12
	ldr     r1, [sp, #0x0]
	sub     r2, r2, r1
	asr     r1, r2, #2
	lsr     r1, r1, #29
	add     r1, r2, r1
	asr     r1, r1, #3
	str     r1, [r5, #0x20]
	ldr     r1, [pc, #0x44] @ 0x21dca00, (=0x21e0236)
	mov     r2, #0x0
	ldrh    r0, [r1, r0]
	lsl     r1, r0, #12
	ldr     r0, [sp, #0x4]
	sub     r1, r1, r0
	asr     r0, r1, #2
	lsr     r0, r0, #29
	add     r0, r1, r0
	asr     r0, r0, #3
	str     r0, [r5, #0x24]
	mov     r0, r5
	add     r0, #0x2a
	strb    r2, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x28
	strb    r4, [r0, #0x0]
	ldr     r0, [pc, #0x28] @ 0x21dca04, (=0x21dca19)
	mov     r1, r5
	bl      Function_21d77c8
	cmp     r0, #0x0
	beq     branch_21dc9ea
	mov     r0, #0x1
	b       branch_21dc9ec
@ 0x21dc9ea

.thumb
branch_21dc9ea: @ 21dc9ea :thumb
	mov     r0, #0x0
.thumb
branch_21dc9ec: @ 21dc9ec :thumb
	add     sp, #0xc
	str     r0, [r5, #0x2c]
	pop     {r4,r5,pc}
@ 0x21dc9f2

.thumb
branch_21dc9f2: @ 21dc9f2 :thumb
	mov     r0, #0x0
	str     r0, [r5, #0x2c]
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21dc9fa


.align 2


.word 0x21e0234 @ 0x21dc9fc
.word 0x21e0236 @ 0x21dca00
.word 0x21dca19 @ 0x21dca04
.thumb
Function_21dca08: @ 21dca08 :thumb
	ldr     r0, [r0, #0x2c]
	cmp     r0, #0x0
	bne     branch_21dca12
	mov     r0, #0x1
	bx      lr
@ 0x21dca12

.thumb
branch_21dca12: @ 21dca12 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21dca16


.align 2, 0


.thumb
Function_21dca18: @ 21dca18 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	add     r0, #0x28
	ldrb    r1, [r0, #0x0]
	mov     r0, #0x34
	mul     r0, r1
	add     r0, r5, r0
	ldr     r0, [r0, #0x3c]
	bl      Function_2021d28
	mov     r3, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x0
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	mov     r0, r5
	add     r0, #0x2a
	ldrb    r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r5
	add     r0, #0x2a
	strb    r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x2a
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x8
	bcc     branch_21dca7e
	mov     r1, r5
	add     r1, #0x28
	ldrb    r1, [r1, #0x0]
	ldr     r0, [r5, #0x34]
	mov     r4, #0x1
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x54] @ 0x21dcab8, (=0x21e0234)
	ldrh    r1, [r1, r2]
	add     r0, r0, r1
	lsl     r0, r0, #12
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r0, #0x28
	ldrb    r0, [r0, #0x0]
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x44] @ 0x21dcabc, (=0x21e0236)
	ldrh    r0, [r0, r1]
	lsl     r0, r0, #12
	str     r0, [sp, #0x4]
	b       branch_21dca90
@ 0x21dca7e

.thumb
branch_21dca7e: @ 21dca7e :thumb
	ldr     r1, [sp, #0x0]
	ldr     r0, [r5, #0x20]
	mov     r4, #0x0
	add     r0, r1, r0
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	ldr     r0, [r5, #0x24]
	add     r0, r1, r0
	str     r0, [sp, #0x4]
.thumb
branch_21dca90: @ 21dca90 :thumb
	mov     r0, r5
	add     r0, #0x28
	ldrb    r1, [r0, #0x0]
	mov     r0, #0x34
	mul     r0, r1
	add     r0, r5, r0
	ldr     r0, [r0, #0x3c]
	add     r1, sp, #0x0
	bl      Function_2021c50
	cmp     r4, #0x0
	beq     branch_21dcab2
	mov     r0, #0x0
	str     r0, [r5, #0x2c]
	mov     r0, r6
	bl      Call_RemoveTaskFromTaskList
.thumb
branch_21dcab2: @ 21dcab2 :thumb
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x21dcab6


.align 2


.word 0x21e0234 @ 0x21dcab8
.word 0x21e0236 @ 0x21dcabc
.thumb
Function_21dcac0: @ 21dcac0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0xc]
	bl      Function_21d5e68
	mov     r1, #0x11
	ldr     r2, [r5, #0xc]
	lsl     r1, r1, #4
	ldrh    r1, [r2, r1]
	cmp     r1, r0
	bne     branch_21dcadc
	ldr     r0, [r5, #0x10]
	bl      Function_21d84e0
.thumb
branch_21dcadc: @ 21dcadc :thumb
	ldr     r0, [r5, #0xc]
	bl      Function_21d5e2c
	mov     r4, r0
	mov     r2, r5
	mov     r1, #0x34
	ldr     r0, [r5, #0x38]
	add     r2, #0x3c
	mul     r1, r4
	add     r1, r2, r1
	mov     r2, #0x1
	bl      Function_21da3f0
	add     r5, #0x28
	strb    r4, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21dcafc

.thumb
Function_21dcafc: @ 21dcafc :thumb
	mov     r2, r0
	mov     r0, #0x5d
	mov     r3, #0x0
	lsl     r0, r0, #2
	strb    r3, [r2, r0]
	mov     r0, r2
	add     r0, #0x28
	mov     r3, #0x34
	strb    r1, [r0, #0x0]
	ldr     r0, [r2, #0x38]
	add     r2, #0x3c
	mul     r3, r1
	add     r1, r2, r3
	ldr     r3, [pc, #0x4] @ 0x21dcb1c, (=0x21da7b9)
	mov     r2, #0x1
	bx      r3
@ 0x21dcb1c

.word Function_21da7b8+1 @ =0x21da7b9, 0x21dcb1c
.thumb
Function_21dcb20: @ 21dcb20 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	add     r0, #0x28
	ldrb    r1, [r0, #0x0]
	mov     r4, r5
	mov     r0, #0x34
	mov     r6, r1
	mul     r6, r0
	mov     r0, #0x5d
	lsl     r0, r0, #2
	ldrb    r0, [r5, r0]
	add     r4, #0x3c
	cmp     r0, #0x0
	beq     branch_21dcb42
	cmp     r0, #0x1
	beq     branch_21dcb8a
	b       branch_21dcb9a
@ 0x21dcb42

.thumb
branch_21dcb42: @ 21dcb42 :thumb
	ldr     r0, [r5, #0x38]
	add     r1, r4, r6
	bl      Function_21da7e0
	cmp     r0, #0x0
	beq     branch_21dcb9a
	ldr     r0, [r5, #0x0]
	bl      Function_21d7964
	mov     r7, r0
	bl      Function_21d3b18
	cmp     r0, #0x0
	beq     branch_21dcb9a
	mov     r0, r7
	bl      Function_21d3b20
	cmp     r0, #0x0
	ldr     r0, [r5, #0x38]
	beq     branch_21dcb76
	add     r1, r4, r6
	mov     r2, #0x1
	bl      Function_21da3f0
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21dcb76

.thumb
branch_21dcb76: @ 21dcb76 :thumb
	add     r1, r4, r6
	mov     r2, #0x2
	bl      Function_21da7b8
	mov     r0, #0x5d
	lsl     r0, r0, #2
	ldrb    r1, [r5, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r5, r0]
	b       branch_21dcb9a
@ 0x21dcb8a

.thumb
branch_21dcb8a: @ 21dcb8a :thumb
	ldr     r0, [r5, #0x38]
	add     r1, r4, r6
	bl      Function_21da7e0
	cmp     r0, #0x0
	beq     branch_21dcb9a
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21dcb9a

.thumb
branch_21dcb9a: @ 21dcb9a :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21dcb9e


.align 2, 0


.thumb
Function_21dcba0: @ 21dcba0 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	ldr     r0, [r7, #0xc]
	bl      Function_21d5e10
	cmp     r0, #0x1
	bne     branch_21dcbd8
	ldr     r0, [r7, #0xc]
	bl      Function_21d5ec8
	mov     r5, r7
	str     r0, [sp, #0x0]
	mov     r6, #0x0
	mov     r4, r7
	add     r5, #0x3c
.thumb
branch_21dcbbe: @ 21dcbbe :thumb
	ldr     r0, [r4, #0x3c]
	cmp     r0, #0x0
	beq     branch_21dcbce
	ldr     r0, [r7, #0x38]
	ldr     r2, [sp, #0x0]
	mov     r1, r5
	bl      Function_21da63c
.thumb
branch_21dcbce: @ 21dcbce :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x34
	add     r5, #0x34
	cmp     r6, #0x6
	blt     branch_21dcbbe
.thumb
branch_21dcbd8: @ 21dcbd8 :thumb
	pop     {r3-r7,pc}
@ 0x21dcbda


.align 2, 0


.thumb
Function_21dcbdc: @ 21dcbdc :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r5
	mov     r0, #0x34
	mov     r4, r1
	mul     r4, r0
	add     r6, #0x3c
	ldr     r0, [r6, r4]
	cmp     r0, #0x0
	beq     branch_21dcc12
	ldr     r0, [r5, #0x38]
	add     r1, r6, r4
	bl      Function_21da690
	ldr     r0, [r5, #0xc]
	bl      Function_21d5ec8
	mov     r2, r0
	ldr     r0, [r5, #0x38]
	add     r1, r6, r4
	bl      Function_21da63c
	ldr     r0, [r5, #0x38]
	add     r1, r6, r4
	mov     r2, #0x0
	bl      Function_21da694
.thumb
branch_21dcc12: @ 21dcc12 :thumb
	pop     {r4-r6,pc}
@ 0x21dcc14

.thumb
Function_21dcc14: @ 21dcc14 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0xc]
	bl      Function_21d5e2c
	mov     r4, r0
	ldr     r0, [r5, #0xc]
	bl      Function_21d5ea0
	mov     r2, r0
	mov     r1, r5
	mov     r0, #0x34
	mov     r3, r4
	add     r1, #0x3c
	mul     r3, r0
	ldr     r0, [r1, r3]
	cmp     r0, #0x0
	beq     branch_21dcc40
	ldr     r0, [r5, #0x38]
	add     r1, r1, r3
	bl      Function_21da68c
.thumb
branch_21dcc40: @ 21dcc40 :thumb
	pop     {r3-r5,pc}
@ 0x21dcc42


.align 2, 0


.thumb
Function_21dcc44: @ 21dcc44 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, #0x34
	mov     r6, r4
	mul     r6, r0
	mov     r0, r5
	mov     r7, r3
	add     r0, #0x3c
	str     r2, [sp, #0x0]
	add     r0, r0, r6
	mov     r1, r7
	mov     r2, #0x1
	bl      Function_21da418
	ldr     r0, [r5, #0x38]
	ldr     r2, [sp, #0x0]
	mov     r1, r7
	bl      Function_21da754
	mov     r1, r5
	add     r1, #0x3c
	ldr     r0, [r5, #0x38]
	add     r1, r1, r6
	mov     r2, #0x1
	bl      Function_21da3cc
	add     r5, #0x28
	strb    r4, [r5, #0x0]
	pop     {r3-r7,pc}
@ 0x21dcc80

.thumb
Function_21dcc80: @ 21dcc80 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r0, [r5, #0xc]
	str     r1, [sp, #0x0]
	ldr     r0, [r0, #0x4]
	str     r2, [sp, #0x4]
	bl      GetNrOfPkmnInParty
	.hword  0x1e47 @ sub r7, r0, #0x1
	mov     r4, r5
	mov     r0, #0x34
	mov     r6, r7
	mul     r6, r0
	add     r4, #0x3c
	ldr     r0, [sp, #0x4]
	add     r1, r4, r6
	mov     r2, #0x1
	bl      Function_21da418
	ldr     r2, [pc, #0x24] @ 0x21dccd0, (=0x418)
	lsl     r3, r7, #5
	ldr     r0, [r5, #0x38]
	add     r1, r4, r6
	add     r2, r3, r2
	bl      Function_21da754
	ldr     r0, [r4, r6]
	mov     r1, #0x1
	bl      Function_2021e80
	ldr     r0, [r4, r6]
	add     r1, r7, #0x4
	bl      Function_21d78ac
	ldr     r0, [sp, #0x0]
	add     r5, #0x28
	strb    r0, [r5, #0x0]
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21dccd0

.word 0x418 @ 0x21dccd0
.thumb
Function_21dccd4: @ 21dccd4 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r7, r1
	mov     r5, r6
	mov     r0, #0x34
	mov     r4, r7
	mul     r4, r0
	add     r5, #0x3c
	mov     r0, r2
	add     r1, r5, r4
	mov     r2, #0x1
	bl      Function_21da418
	ldr     r2, [pc, #0x24] @ 0x21dcd14, (=0x418)
	lsl     r3, r7, #5
	ldr     r0, [r6, #0x38]
	add     r1, r5, r4
	add     r2, r3, r2
	bl      Function_21da754
	ldr     r0, [r5, r4]
	mov     r1, #0x1
	bl      Function_2021e80
	ldr     r0, [r5, r4]
	add     r1, r7, #0x4
	bl      Function_21d78ac
	add     r6, #0x28
	strb    r7, [r6, #0x0]
	pop     {r3-r7,pc}
@ 0x21dcd12


.align 2


.word 0x418 @ 0x21dcd14
.thumb
Function_21dcd18: @ 21dcd18 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0x6
	bcc     branch_21dcd26
	bl      ErrorHandling
.thumb
branch_21dcd26: @ 21dcd26 :thumb
	mov     r0, #0x34
	add     r5, #0x3c
	mul     r0, r4
	add     r0, r5, r0
	pop     {r3-r5,pc}
@ 0x21dcd30

.thumb
Function_21dcd30: @ 21dcd30 :thumb
	push    {r3,r4}
	cmp     r1, #0x6
	bne     branch_21dcd44
	ldr     r0, [r0, #0x34]
	add     r0, #0xc0
	str     r0, [r2, #0x0]
	mov     r0, #0xb8
	str     r0, [r3, #0x0]
	pop     {r3,r4}
	bx      lr
@ 0x21dcd44

.thumb
branch_21dcd44: @ 21dcd44 :thumb
	ldr     r4, [r0, #0x34]
	ldr     r0, [pc, #0x14] @ 0x21dcd5c, (=0x21e0234)
	lsl     r1, r1, #2
	ldrh    r0, [r0, r1]
	add     r0, r4, r0
	str     r0, [r2, #0x0]
	ldr     r0, [pc, #0xc] @ 0x21dcd60, (=0x21e0236)
	ldrh    r0, [r0, r1]
	str     r0, [r3, #0x0]
	pop     {r3,r4}
	bx      lr
@ 0x21dcd5a


.align 2


.word 0x21e0234 @ 0x21dcd5c
.word 0x21e0236 @ 0x21dcd60
.thumb
Function_21dcd64: @ 21dcd64 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r3, r0
	cmp     r1, #0x2
	bhi     branch_21dcd7e
	mov     r0, #0x2
	sub     r1, r0, r1
	mov     r2, r1
	mov     r0, #0x1e
	mul     r2, r0
	mov     r1, #0x18
	mov     r0, #0x0
	b       branch_21dcd8c
@ 0x21dcd7e

.thumb
branch_21dcd7e: @ 21dcd7e :thumb
	cmp     r1, #0x1a
	bcs     branch_21dcdb0
	mov     r0, #0x1a
	sub     r1, r0, r1
	mov     r0, #0x18
	mov     r2, #0x0
	sub     r0, r0, r1
.thumb
branch_21dcd8c: @ 21dcd8c :thumb
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0xf
	str     r0, [sp, #0x4]
	lsl     r0, r1, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	ldr     r4, [r3, #0x18]
	ldr     r0, [r3, #0x4]
	ldr     r3, [r3, #0x30]
	add     r4, #0xc
	lsl     r3, r3, #24
	mov     r1, #0x2
	add     r2, r4, r2
	lsr     r3, r3, #24
	bl      Function_20198c0
.thumb
branch_21dcdb0: @ 21dcdb0 :thumb
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x21dcdb4

.thumb
Function_21dcdb4: @ 21dcdb4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r0, #0x0
	ldr     r1, [pc, #0x8c] @ 0x21dce4c, (=0x21e0234)
	mov     r12, r0
.thumb
branch_21dcdc2: @ 21dcdc2 :thumb
	ldrh    r3, [r1, #0x0]
	ldrh    r2, [r1, #0x4]
	mov     r0, #0x0
	ldrh    r4, [r1, #0x2]
	sub     r2, r3, r2
	lsl     r3, r2, #12
	asr     r2, r3, #2
	lsr     r2, r2, #29
	add     r2, r3, r2
	ldrh    r3, [r1, #0x6]
	asr     r2, r2, #3
	mov     lr, r2
	sub     r3, r4, r3
	lsl     r4, r3, #12
	asr     r3, r4, #2
	lsr     r3, r3, #29
	add     r3, r4, r3
	ldr     r2, [sp, #0x4]
	mov     r6, r0
	asr     r7, r3, #3
	mov     r5, r0
.thumb
branch_21dcdec: @ 21dcdec :thumb
	ldr     r3, [sp, #0x0]
	add     r5, r5, r7
	ldr     r4, [r3, #0x34]
	ldrh    r3, [r1, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r3, r4, r3
	lsl     r4, r3, #12
	mov     r3, lr
	add     r6, r6, r3
	add     r3, r4, r6
	str     r3, [r2, #0x0]
	ldrh    r3, [r1, #0x6]
	lsl     r3, r3, #12
	add     r3, r3, r5
	str     r3, [r2, #0x4]
	mov     r3, #0x0
	str     r3, [r2, #0x8]
	add     r2, #0xc
	cmp     r0, #0x7
	bcc     branch_21dcdec
	ldr     r3, [sp, #0x0]
	mov     r2, #0xc
	ldr     r4, [r3, #0x34]
	ldrh    r3, [r1, #0x0]
	mul     r2, r0
	ldr     r0, [sp, #0x4]
	add     r3, r4, r3
	lsl     r4, r3, #12
	ldr     r3, [sp, #0x4]
	add     r0, r0, r2
	str     r4, [r3, r2]
	ldrh    r2, [r1, #0x2]
	.hword  0x1d09 @ add r1, r1, #0x4
	lsl     r2, r2, #12
	str     r2, [r0, #0x4]
	mov     r2, #0x0
	str     r2, [r0, #0x8]
	mov     r0, r3
	add     r0, #0x60
	str     r0, [sp, #0x4]
	mov     r0, r12
	.hword  0x1c40 @ add r0, r0, #0x1
	mov     r12, r0
	cmp     r0, #0x5
	bcc     branch_21dcdc2
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21dce4a


.align 2


.word 0x21e0234 @ 0x21dce4c
.thumb
Function_21dce50: @ 21dce50 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r4, r1
	mov     r7, #0x0
.thumb
branch_21dce5a: @ 21dce5a :thumb
	ldr     r0, [r5, #0x3c]
	cmp     r0, #0x0
	beq     branch_21dceb2
	bl      Function_2021d28
	mov     r6, r0
	add     r3, sp, #0x0
	ldmia   r6!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r1, r2
	str     r0, [r3, #0x0]
	ldr     r0, [sp, #0x4]
	add     r0, r0, r4
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x3c]
	bl      Function_2021c50
	cmp     r4, #0x0
	bge     branch_21dce98
	mov     r0, #0xd
	ldr     r1, [sp, #0x4]
	lsl     r0, r0, #16
	cmp     r1, r0
	bge     branch_21dceaa
	ldr     r0, [r5, #0x3c]
	mov     r1, #0x1
	bl      Function_2021cac
	b       branch_21dceaa
@ 0x21dce98

.thumb
branch_21dce98: @ 21dce98 :thumb
	mov     r0, #0xd
	ldr     r1, [sp, #0x4]
	lsl     r0, r0, #16
	cmp     r1, r0
	blt     branch_21dceaa
	ldr     r0, [r5, #0x3c]
	mov     r1, #0x0
	bl      Function_2021cac
.thumb
branch_21dceaa: @ 21dceaa :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r5, #0x34
	cmp     r7, #0x6
	blt     branch_21dce5a
.thumb
branch_21dceb2: @ 21dceb2 :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21dceb6


.align 2, 0


.thumb
Function_21dceb8: @ 21dceb8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	str     r0, [sp, #0x24]
	str     r1, [sp, #0x10]
	cmp     r1, #0x0
	beq     branch_21dceca
	mov     r0, #0x0
	str     r0, [sp, #0x14]
	b       branch_21dcece
@ 0x21dceca

.thumb
branch_21dceca: @ 21dceca :thumb
	mov     r0, #0xd0
	str     r0, [sp, #0x14]
.thumb
branch_21dcece: @ 21dcece :thumb
	ldr     r0, [sp, #0x24]
	ldr     r0, [r0, #0xc]
	ldr     r0, [r0, #0x4]
	bl      GetNrOfPkmnInParty
	mov     r4, #0x0
	str     r0, [sp, #0x20]
	cmp     r0, #0x0
	ble     branch_21dcf44
	ldr     r0, [sp, #0x24]
	ldr     r7, [pc, #0x64] @ 0x21dcf48, (=0x418)
	str     r0, [sp, #0x1c]
	add     r0, #0x3c
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x24]
	ldr     r5, [pc, #0x5c] @ 0x21dcf4c, (=0x21e0234)
	str     r0, [sp, #0x18]
.thumb
branch_21dcef0: @ 21dcef0 :thumb
	ldr     r0, [sp, #0x24]
	mov     r1, r4
	ldr     r0, [r0, #0xc]
	ldr     r0, [r0, #0x4]
	bl      GetAdrOfPkmnInParty
	mov     r1, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	add     r0, r4, #0x4
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x1c]
	str     r7, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldr     r2, [sp, #0x24]
	ldr     r0, [sp, #0x24]
	ldr     r3, [r2, #0x34]
	ldrh    r2, [r5, #0x0]
	ldrh    r6, [r5, #0x2]
	ldr     r0, [r0, #0x38]
	add     r2, r3, r2
	ldr     r3, [sp, #0x14]
	add     r3, r3, r6
	bl      Function_21da428
	ldr     r0, [sp, #0x18]
	ldr     r1, [sp, #0x10]
	ldr     r0, [r0, #0x3c]
	bl      Function_2021cac
	ldr     r0, [sp, #0x1c]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r0, #0x34
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x18]
	add     r7, #0x20
	add     r0, #0x34
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x20]
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, r0
	blt     branch_21dcef0
.thumb
branch_21dcf44: @ 21dcf44 :thumb
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x21dcf48

.word 0x418 @ 0x21dcf48
.word 0x21e0234 @ 0x21dcf4c
.thumb
Function_21dcf50: @ 21dcf50 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	ldr     r0, [r7, #0xc]
	ldr     r0, [r0, #0x4]
	bl      GetNrOfPkmnInParty
	mov     r6, #0x0
	str     r0, [sp, #0x0]
	cmp     r0, #0x0
	ble     branch_21dcf86
	mov     r5, r7
	mov     r4, r7
	add     r5, #0x3c
.thumb
branch_21dcf6a: @ 21dcf6a :thumb
	ldr     r0, [r4, #0x3c]
	cmp     r0, #0x0
	beq     branch_21dcf7a
	ldr     r0, [r7, #0x38]
	mov     r1, r5
	mov     r2, #0x1
	bl      Function_21da3f0
.thumb
branch_21dcf7a: @ 21dcf7a :thumb
	ldr     r0, [sp, #0x0]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x34
	add     r5, #0x34
	cmp     r6, r0
	blt     branch_21dcf6a
.thumb
branch_21dcf86: @ 21dcf86 :thumb
	pop     {r3-r7,pc}
@ 0x21dcf88

.thumb
Function_21dcf88: @ 21dcf88 :thumb
	push    {r3-r7,lr}
	mov     r5, r2
	mov     r6, r0
	mov     r0, r5
	mov     r7, r1
	str     r3, [sp, #0x0]
	bl      Function_21d5e08
	cmp     r0, #0x4
	bne     branch_21dcfa4
	mov     r0, #0x0
	str     r0, [r6, #0x0]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21dcfa4

.thumb
branch_21dcfa4: @ 21dcfa4 :thumb
	mov     r0, #0xa
	mov     r1, #0xf4
	bl      malloc
	mov     r4, r0
	beq     branch_21dd020
	ldr     r0, [sp, #0x0]
	mov     r1, #0xa
	str     r0, [r4, #0x8]
	str     r7, [r4, #0x0]
	ldr     r0, [sp, #0x18]
	str     r5, [r4, #0x4]
	str     r0, [r4, #0xc]
	mov     r0, #0x0
	str     r0, [r4, #0x14]
	mov     r0, #0x20
	bl      Function_2023790
	mov     r1, r4
	add     r1, #0x84
	str     r0, [r1, #0x0]
	add     r5, #0x9c
	ldrb    r0, [r5, #0x0]
	mov     r1, #0x0
	mov     r2, r1
	str     r0, [r4, #0x10]
	mov     r0, r4
	add     r0, #0x98
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xa0
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xa8
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xb0
	str     r1, [r0, #0x0]
	str     r1, [r4, #0x2c]
	str     r1, [r4, #0x30]
	mov     r0, r4
.thumb
branch_21dcff6: @ 21dcff6 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r2, [r0, #0x34]
	.hword  0x1d00 @ add r0, r0, #0x4
	cmp     r1, #0x8
	blt     branch_21dcff6
	mov     r0, r4
	mov     r1, #0x0
.thumb
branch_21dd004: @ 21dd004 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	str     r1, [r0, #0x54]
	.hword  0x1d00 @ add r0, r0, #0x4
	cmp     r2, #0xa
	blt     branch_21dd004
	mov     r0, r4
	add     r0, #0x80
	str     r1, [r0, #0x0]
	mov     r0, r4
	bl      Function_21dd024
	str     r4, [r6, #0x0]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21dd020

.thumb
branch_21dd020: @ 21dd020 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21dd024

.thumb
Function_21dd024: @ 21dd024 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, #0x0
	add     r0, #0xd4
	strb    r6, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0x10
	add     r0, #0xe4
	strb    r1, [r0, #0x0]
	mov     r4, #0x1
	mov     r7, r1
.thumb
branch_21dd03a: @ 21dd03a :thumb
	mov     r0, #0x5a
	lsl     r0, r0, #8
	add     r6, r6, r0
	lsl     r0, r6, #4
	lsr     r0, r0, #16
	bl      Function_201d15c
	lsl     r0, r0, #4
	asr     r1, r0, #12
	add     r0, r5, r4
	add     r0, #0xd4
	strb    r1, [r0, #0x0]
	add     r0, r5, r4
	add     r0, #0xd4
	ldrb    r0, [r0, #0x0]
	sub     r1, r7, r0
	add     r0, r5, r4
	add     r0, #0xe4
	.hword  0x1c64 @ add r4, r4, #0x1
	strb    r1, [r0, #0x0]
	cmp     r4, #0xf
	blt     branch_21dd03a
	add     r0, r5, r4
	mov     r1, #0x10
	add     r0, #0xd4
	strb    r1, [r0, #0x0]
	add     r0, r5, r4
	mov     r1, #0x0
	add     r0, #0xe4
	strb    r1, [r0, #0x0]
	pop     {r3-r7,pc}
@ 0x21dd078

.thumb
Function_21dd078: @ 21dd078 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	beq     branch_21dd110
	add     r0, #0x88
	bl      Function_201a8fc
	mov     r0, r6
	add     r0, #0x98
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_21dd092
	bl      free
.thumb
branch_21dd092: @ 21dd092 :thumb
	mov     r0, r6
	add     r0, #0xa0
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_21dd0a0
	bl      free
.thumb
branch_21dd0a0: @ 21dd0a0 :thumb
	mov     r0, r6
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_21dd0ae
	bl      free
.thumb
branch_21dd0ae: @ 21dd0ae :thumb
	mov     r0, r6
	add     r0, #0xb0
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_21dd0bc
	bl      free
.thumb
branch_21dd0bc: @ 21dd0bc :thumb
	ldr     r0, [r6, #0x2c]
	cmp     r0, #0x0
	beq     branch_21dd0c6
	bl      Function_2021bd4
.thumb
branch_21dd0c6: @ 21dd0c6 :thumb
	ldr     r0, [r6, #0x30]
	cmp     r0, #0x0
	beq     branch_21dd0d0
	bl      Function_2021bd4
.thumb
branch_21dd0d0: @ 21dd0d0 :thumb
	mov     r0, r6
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_21dd0de
	bl      Function_20237bc_FreeMsg
.thumb
branch_21dd0de: @ 21dd0de :thumb
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_21dd0e2: @ 21dd0e2 :thumb
	ldr     r0, [r5, #0x34]
	cmp     r0, #0x0
	beq     branch_21dd0ec
	bl      Function_2021bd4
.thumb
branch_21dd0ec: @ 21dd0ec :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x8
	blt     branch_21dd0e2
	mov     r5, #0x0
	mov     r4, r6
.thumb
branch_21dd0f8: @ 21dd0f8 :thumb
	ldr     r0, [r4, #0x54]
	cmp     r0, #0x0
	beq     branch_21dd102
	bl      Function_2021bd4
.thumb
branch_21dd102: @ 21dd102 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, #0xa
	blt     branch_21dd0f8
	mov     r0, r6
	bl      free
.thumb
branch_21dd110: @ 21dd110 :thumb
	pop     {r4-r6,pc}
@ 0x21dd112


.align 2, 0


.thumb
Function_21dd114: @ 21dd114 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r4, r1
	cmp     r5, #0x0
	beq     branch_21dd21a
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0xa
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x8]
	mov     r0, r4
	mov     r1, #0x7f
	mov     r3, #0x7
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0xa
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x8]
	mov     r0, r4
	mov     r1, #0x7c
	mov     r3, #0x7
	bl      Function_200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0xa
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x8]
	mov     r0, r4
	mov     r1, #0x7d
	mov     r3, #0x6
	bl      Function_200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0xa
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x8]
	mov     r0, r4
	mov     r1, #0x7e
	mov     r3, #0x5
	bl      Function_200710c
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	ldr     r0, [r5, #0x8]
	mov     r1, #0x4
	mov     r3, #0x1
	bl      Function_20196c0
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x11
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x8]
	mov     r1, #0x4
	mov     r3, r2
	bl      Function_2019cb8
	ldr     r0, [r5, #0x8]
	mov     r1, #0x4
	bl      Function_2019448
	ldr     r3, [r5, #0x10]
	ldr     r0, [r5, #0x8]
	lsl     r6, r3, #2
	ldr     r3, [pc, #0x60] @ 0x21dd220, (=0x21e0258)
	mov     r1, #0x5
	ldr     r3, [r3, r6]
	mov     r2, #0x0
	bl      Function_2019184
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x18
	str     r0, [sp, #0x8]
	mov     r0, #0x2
	str     r0, [sp, #0xc]
	str     r3, [sp, #0x10]
	mov     r1, r5
	ldr     r0, [r5, #0x8]
	add     r1, #0x88
	mov     r2, #0x4
	bl      Function_201a7e8
	mov     r0, r5
	add     r0, #0x88
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	mov     r0, r5
	add     r0, #0x88
	bl      Function_201a954
	mov     r0, r5
	bl      Function_21de324
	mov     r0, #0x60
	str     r0, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x80
	mov     r2, #0x4
	mov     r3, #0x0
	bl      Function_2007130
	mov     r0, r5
	mov     r1, r4
	bl      Function_21dd224
.thumb
branch_21dd21a: @ 21dd21a :thumb
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x21dd21e


.align 2


.word 0x21e0258 @ 0x21dd220
.thumb
Function_21dd224: @ 21dd224 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x5c
	mov     r5, r0
	mov     r4, r1
	bl      Function_21dd2bc
	add     r0, sp, #0x14
	blx     Function_20a818c
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, #0xa
	str     r0, [sp, #0xc]
	add     r0, sp, #0x14
	str     r0, [sp, #0x10]
	mov     r0, r4
	mov     r1, #0x8a
	mov     r2, #0x1
	bl      Function_200718c
	mov     r0, r5
	add     r0, #0xa4
	ldr     r0, [r0, #0x0]
	mov     r3, r5
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	add     r3, #0x9c
	mov     r2, r5
	ldr     r3, [r3, #0x0]
	add     r0, sp, #0x38
	add     r1, sp, #0x14
	add     r2, #0x18
	bl      Function_21d783c
	mov     r0, #0x31
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r3, #0x8e
	ldr     r0, [r5, #0xc]
	add     r1, sp, #0x38
	mov     r2, #0x0
	lsl     r3, r3, #2
	bl      Function_21d785c
	str     r0, [r5, #0x2c]
	mov     r0, #0x31
	mov     r3, #0x8e
	str     r0, [sp, #0x0]
	mov     r2, #0x2
	str     r2, [sp, #0x4]
	ldr     r0, [r5, #0xc]
	add     r1, sp, #0x38
	add     r2, #0xfe
	lsl     r3, r3, #2
	bl      Function_21d785c
	str     r0, [r5, #0x30]
	mov     r1, #0x1
	bl      Function_2021d0c
	ldr     r0, [r5, #0x4]
	bl      Function_21d5e08
	cmp     r0, #0x3
	bne     branch_21dd2b8
	ldr     r0, [r5, #0x30]
	mov     r1, #0x1
	bl      Function_2021d6c
.thumb
branch_21dd2b8: @ 21dd2b8 :thumb
	add     sp, #0x5c
	pop     {r4,r5,pc}
@ 0x21dd2bc

.thumb
Function_21dd2bc: @ 21dd2bc :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r4, r1
	mov     r0, #0xa
	mov     r3, r5
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x8b
	mov     r2, #0x1
	add     r3, #0x9c
	bl      Function_2007204
	mov     r1, r5
	add     r1, #0x98
	str     r0, [r1, #0x0]
	mov     r0, #0xa
	mov     r3, r5
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x8c
	mov     r2, #0x1
	add     r3, #0xa4
	bl      Function_2007220
	mov     r1, r5
	add     r1, #0xa0
	str     r0, [r1, #0x0]
	mov     r0, #0xa
	mov     r3, r5
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x8e
	mov     r2, #0x1
	add     r3, #0xac
	bl      Function_2007204
	mov     r1, r5
	add     r1, #0xa8
	str     r0, [r1, #0x0]
	mov     r0, #0xa
	mov     r3, r5
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x8f
	mov     r2, #0x1
	add     r3, #0xb4
	bl      Function_2007220
	mov     r1, r5
	add     r1, #0xb0
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r0, #0x18
	blx     Function_20a81d0
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	add     r5, #0x18
	mov     r0, r4
	mov     r1, #0x90
	mov     r2, #0x2
	mov     r3, #0x0
	str     r5, [sp, #0x4]
	bl      Function_200716c
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x21dd344

.thumb
Function_21dd344: @ 21dd344 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r1
	mov     r1, r2
	mov     r2, #0x0
	bl      Function_21d77c8
	str     r0, [r4, #0x14]
	pop     {r4,pc}
@ 0x21dd356


.align 2, 0


.thumb
Function_21dd358: @ 21dd358 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x14]
	bl      Call_RemoveTaskFromTaskList
	mov     r0, #0x0
	str     r0, [r4, #0x14]
	pop     {r4,pc}
@ 0x21dd368

.thumb
Function_21dd368: @ 21dd368 :thumb
	ldr     r0, [r0, #0x14]
	cmp     r0, #0x0
	bne     branch_21dd372
	mov     r0, #0x1
	bx      lr
@ 0x21dd372

.thumb
branch_21dd372: @ 21dd372 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21dd376


.align 2, 0


.thumb
Function_21dd378: @ 21dd378 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	beq     branch_21dd44a
	ldr     r1, [r5, #0x4]
	add     r1, #0x9c
	ldrb    r6, [r1, #0x0]
	ldr     r1, [r5, #0x10]
	cmp     r1, r6
	beq     branch_21dd44a
	mov     r1, r5
	mov     r4, r5
	add     r1, #0xb8
	str     r5, [r1, #0x0]
	add     r4, #0xb8
	mov     r1, #0x0
	str     r1, [r4, #0x8]
	str     r1, [r4, #0x4]
	cmp     r6, #0x0
	beq     branch_21dd3a8
	cmp     r6, #0x1
	beq     branch_21dd3c0
	cmp     r6, #0x2
	beq     branch_21dd3e2
	b       branch_21dd40a
@ 0x21dd3a8

.thumb
branch_21dd3a8: @ 21dd3a8 :thumb
	mov     r1, #0x8
	strh    r1, [r4, #0xc]
	ldr     r7, [pc, #0x9c] @ 0x21dd44c, (=0x21dd671)
	bl      Function_21dd998
	mov     r0, r5
	bl      Function_21dda7c
	mov     r0, r5
	bl      Function_21de324
	b       branch_21dd412
@ 0x21dd3c0

.thumb
branch_21dd3c0: @ 21dd3c0 :thumb
	mov     r0, #0x8
	strh    r0, [r4, #0xc]
	ldr     r0, [r5, #0x10]
	cmp     r0, #0x0
	bne     branch_21dd3ce
	ldr     r7, [pc, #0x84] @ 0x21dd450, (=0x21dd46d)
	b       branch_21dd3d6
@ 0x21dd3ce

.thumb
branch_21dd3ce: @ 21dd3ce :thumb
	ldrh    r0, [r4, #0xc]
	ldr     r7, [pc, #0x80] @ 0x21dd454, (=0x21dd545)
	add     r0, #0x8
	strh    r0, [r4, #0xc]
.thumb
branch_21dd3d6: @ 21dd3d6 :thumb
	mov     r0, r5
	bl      Function_21dda7c
	ldr     r0, [r5, #0x2c]
	str     r0, [r4, #0x8]
	b       branch_21dd412
@ 0x21dd3e2

.thumb
branch_21dd3e2: @ 21dd3e2 :thumb
	mov     r0, #0x8
	strh    r0, [r4, #0xc]
	ldr     r0, [r5, #0x10]
	cmp     r0, #0x0
	bne     branch_21dd3f0
	ldr     r7, [pc, #0x60] @ 0x21dd450, (=0x21dd46d)
	b       branch_21dd3f8
@ 0x21dd3f0

.thumb
branch_21dd3f0: @ 21dd3f0 :thumb
	ldrh    r0, [r4, #0xc]
	ldr     r7, [pc, #0x60] @ 0x21dd454, (=0x21dd545)
	add     r0, #0x8
	strh    r0, [r4, #0xc]
.thumb
branch_21dd3f8: @ 21dd3f8 :thumb
	ldr     r0, [r5, #0x30]
	str     r0, [r4, #0x8]
	mov     r0, r5
	bl      Function_21dd998
	mov     r0, r5
	bl      Function_21de324
	b       branch_21dd412
@ 0x21dd40a

.thumb
branch_21dd40a: @ 21dd40a :thumb
	mov     r0, r4
	bl      free
	pop     {r3-r7,pc}
@ 0x21dd412

.thumb
branch_21dd412: @ 21dd412 :thumb
	str     r6, [r5, #0x10]
	ldr     r0, [r5, #0x8]
	mov     r1, #0x5
	bl      Function_20192ec
	lsl     r0, r0, #12
	ldr     r1, [pc, #0x38] @ 0x21dd458, (=0x21e0258)
	lsl     r2, r6, #2
	str     r0, [r4, #0x10]
	ldr     r6, [r1, r2]
	ldrh    r1, [r4, #0xc]
	sub     r0, r6, r0
	blx     _s32_div_f
	str     r0, [r4, #0x14]
	asr     r0, r6, #12
	str     r0, [r4, #0x18]
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x0
	beq     branch_21dd440
	mov     r1, #0x1
	bl      Function_2021d6c
.thumb
branch_21dd440: @ 21dd440 :thumb
	mov     r0, r5
	mov     r1, r7
	mov     r2, r4
	bl      Function_21dd344
.thumb
branch_21dd44a: @ 21dd44a :thumb
	pop     {r3-r7,pc}
@ 0x21dd44c

.word 0x21dd671 @ 0x21dd44c
.word 0x21dd46d @ 0x21dd450
.word 0x21dd545 @ 0x21dd454
.word 0x21e0258 @ 0x21dd458
.thumb
Function_21dd45c: @ 21dd45c :thumb
	push    {r3,lr}
	cmp     r0, #0x0
	beq     branch_21dd468
	bl      Function_21dd368
	pop     {r3,pc}
@ 0x21dd468

.thumb
branch_21dd468: @ 21dd468 :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21dd46c

.thumb
Function_21dd46c: @ 21dd46c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r0, [r4, #0x4]
	ldr     r5, [r4, #0x0]
	cmp     r0, #0x3
	bhi     branch_21dd534
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21dd484

Jumppoints_21dd484:
.hword branch_21dd48c - Jumppoints_21dd484 - 2
.hword branch_21dd49e - Jumppoints_21dd484 - 2
.hword branch_21dd4e4 - Jumppoints_21dd484 - 2
.hword branch_21dd502 - Jumppoints_21dd484 - 2
.thumb
branch_21dd48c: @ 21dd48c :thumb
	ldr     r0, [r4, #0x8]
	bl      Function_2021fd0
	cmp     r0, #0x0
	bne     branch_21dd534
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r3-r5,pc}
@ 0x21dd49e

.thumb
branch_21dd49e: @ 21dd49e :thumb
	ldrh    r0, [r4, #0xc]
	cmp     r0, #0x0
	beq     branch_21dd4c0
	ldr     r1, [r4, #0x10]
	ldr     r0, [r4, #0x14]
	mov     r2, #0x0
	add     r3, r1, r0
	str     r3, [r4, #0x10]
	ldr     r0, [r5, #0x8]
	mov     r1, #0x5
	asr     r3, r3, #12
	bl      Function_2019184
	ldrh    r0, [r4, #0xc]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, #0xc]
	pop     {r3-r5,pc}
@ 0x21dd4c0

.thumb
branch_21dd4c0: @ 21dd4c0 :thumb
	ldr     r0, [r5, #0x8]
	ldr     r3, [r4, #0x18]
	mov     r1, #0x5
	mov     r2, #0x0
	bl      Function_2019184
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x64] @ 0x21dd538, (=REG_BLDCNT_SUB)
	mov     r1, #0x4
	mov     r2, #0x8
	mov     r3, #0x0
	blx     G2x_SetBlendAlpha_
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r3-r5,pc}
@ 0x21dd4e4

.thumb
branch_21dd4e4: @ 21dd4e4 :thumb
	ldr     r3, [r5, #0x10]
	ldr     r0, [r5, #0x8]
	lsl     r5, r3, #2
	ldr     r3, [pc, #0x50] @ 0x21dd53c, (=0x21e024c)
	mov     r1, #0x6
	ldr     r3, [r3, r5]
	mov     r2, #0x0
	bl      Function_2019184
	mov     r0, #0x0
	strh    r0, [r4, #0xe]
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r3-r5,pc}
@ 0x21dd502

.thumb
branch_21dd502: @ 21dd502 :thumb
	mov     r1, #0xe
	ldsh    r3, [r4, r1]
	add     r0, r5, r3
	add     r0, #0xd4
	ldrb    r2, [r0, #0x0]
	add     r0, r5, r3
	add     r0, #0xe4
	ldrb    r0, [r0, #0x0]
	lsl     r0, r0, #8
	orr     r2, r0
	ldr     r0, [pc, #0x28] @ 0x21dd540, (=0x4001052)
	strh    r2, [r0, #0x0]
	ldsh    r0, [r4, r1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0xe]
	ldsh    r0, [r4, r1]
	cmp     r0, #0x10
	blt     branch_21dd534
	ldr     r0, [r4, #0x8]
	mov     r1, #0x0
	bl      Function_2021d6c
	mov     r0, r5
	bl      Function_21dd358
.thumb
branch_21dd534: @ 21dd534 :thumb
	pop     {r3-r5,pc}
@ 0x21dd536


.align 2


.word REG_BLDCNT_SUB @ 0x21dd538
.word 0x21e024c @ 0x21dd53c
.word 0x4001052 @ 0x21dd540
.thumb
Function_21dd544: @ 21dd544 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r0, [r4, #0x4]
	ldr     r5, [r4, #0x0]
	cmp     r0, #0x4
	bls     branch_21dd552
	b       branch_21dd662
@ 0x21dd552

.thumb
branch_21dd552: @ 21dd552 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21dd55e

Jumppoints_21dd55e:
.hword branch_21dd568 - Jumppoints_21dd55e - 2
.hword branch_21dd58e - Jumppoints_21dd55e - 2
.hword branch_21dd5cc - Jumppoints_21dd55e - 2
.hword branch_21dd612 - Jumppoints_21dd55e - 2
.hword branch_21dd630 - Jumppoints_21dd55e - 2
.thumb
branch_21dd568: @ 21dd568 :thumb
	ldr     r0, [r4, #0x8]
	bl      Function_2021fd0
	cmp     r0, #0x0
	bne     branch_21dd662
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xec] @ 0x21dd664, (=REG_BLDCNT_SUB)
	mov     r1, #0x4
	mov     r2, #0x8
	mov     r3, #0x10
	blx     G2x_SetBlendAlpha_
	mov     r0, #0xf
	strh    r0, [r4, #0xe]
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r3-r5,pc}
@ 0x21dd58e

.thumb
branch_21dd58e: @ 21dd58e :thumb
	mov     r1, #0xe
	ldsh    r0, [r4, r1]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, #0xe]
	ldsh    r3, [r4, r1]
	add     r0, r5, r3
	add     r0, #0xd4
	ldrb    r2, [r0, #0x0]
	add     r0, r5, r3
	add     r0, #0xe4
	ldrb    r0, [r0, #0x0]
	lsl     r0, r0, #8
	orr     r2, r0
	ldr     r0, [pc, #0xbc] @ 0x21dd668, (=0x4001052)
	strh    r2, [r0, #0x0]
	ldsh    r0, [r4, r1]
	cmp     r0, #0x0
	bne     branch_21dd662
	ldr     r3, [r5, #0x10]
	ldr     r0, [r5, #0x8]
	lsl     r5, r3, #2
	ldr     r3, [pc, #0xb0] @ 0x21dd66c, (=0x21e024c)
	mov     r1, #0x6
	ldr     r3, [r3, r5]
	mov     r2, #0x0
	bl      Function_2019184
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r3-r5,pc}
@ 0x21dd5cc

.thumb
branch_21dd5cc: @ 21dd5cc :thumb
	ldrh    r0, [r4, #0xc]
	cmp     r0, #0x0
	beq     branch_21dd5ee
	ldr     r1, [r4, #0x10]
	ldr     r0, [r4, #0x14]
	mov     r2, #0x0
	add     r3, r1, r0
	str     r3, [r4, #0x10]
	ldr     r0, [r5, #0x8]
	mov     r1, #0x5
	asr     r3, r3, #12
	bl      Function_2019184
	ldrh    r0, [r4, #0xc]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, #0xc]
	pop     {r3-r5,pc}
@ 0x21dd5ee

.thumb
branch_21dd5ee: @ 21dd5ee :thumb
	ldr     r0, [r5, #0x8]
	ldr     r3, [r4, #0x18]
	mov     r1, #0x5
	mov     r2, #0x0
	bl      Function_2019184
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x64] @ 0x21dd664, (=REG_BLDCNT_SUB)
	mov     r1, #0x4
	mov     r2, #0x8
	mov     r3, #0x0
	blx     G2x_SetBlendAlpha_
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r3-r5,pc}
@ 0x21dd612

.thumb
branch_21dd612: @ 21dd612 :thumb
	ldr     r3, [r5, #0x10]
	ldr     r0, [r5, #0x8]
	lsl     r5, r3, #2
	ldr     r3, [pc, #0x50] @ 0x21dd66c, (=0x21e024c)
	mov     r1, #0x6
	ldr     r3, [r3, r5]
	mov     r2, #0x0
	bl      Function_2019184
	mov     r0, #0x0
	strh    r0, [r4, #0xe]
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r3-r5,pc}
@ 0x21dd630

.thumb
branch_21dd630: @ 21dd630 :thumb
	mov     r1, #0xe
	ldsh    r3, [r4, r1]
	add     r0, r5, r3
	add     r0, #0xd4
	ldrb    r2, [r0, #0x0]
	add     r0, r5, r3
	add     r0, #0xe4
	ldrb    r0, [r0, #0x0]
	lsl     r0, r0, #8
	orr     r2, r0
	ldr     r0, [pc, #0x20] @ 0x21dd668, (=0x4001052)
	strh    r2, [r0, #0x0]
	ldsh    r0, [r4, r1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0xe]
	ldsh    r0, [r4, r1]
	cmp     r0, #0x10
	blt     branch_21dd662
	ldr     r0, [r4, #0x8]
	mov     r1, #0x0
	bl      Function_2021d6c
	mov     r0, r5
	bl      Function_21dd358
.thumb
branch_21dd662: @ 21dd662 :thumb
	pop     {r3-r5,pc}
@ 0x21dd664

.word REG_BLDCNT_SUB @ 0x21dd664
.word 0x4001052 @ 0x21dd668
.word 0x21e024c @ 0x21dd66c
.thumb
Function_21dd670: @ 21dd670 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r1, [r4, #0x4]
	ldr     r0, [r4, #0x0]
	cmp     r1, #0x3
	bhi     branch_21dd70c
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21dd688

Jumppoints_21dd688:
.hword branch_21dd690 - Jumppoints_21dd688 - 2
.hword branch_21dd69a - Jumppoints_21dd688 - 2
.hword branch_21dd6d2 - Jumppoints_21dd688 - 2
.hword branch_21dd708 - Jumppoints_21dd688 - 2
.thumb
branch_21dd690: @ 21dd690 :thumb
	mov     r1, #0xf
	strh    r1, [r4, #0xe]
	ldr     r1, [r4, #0x4]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, #0x4]
.thumb
branch_21dd69a: @ 21dd69a :thumb
	mov     r2, #0xe
	ldsh    r1, [r4, r2]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strh    r1, [r4, #0xe]
	ldsh    r5, [r4, r2]
	add     r1, r0, r5
	add     r1, #0xd4
	ldrb    r3, [r1, #0x0]
	add     r1, r0, r5
	add     r1, #0xe4
	ldrb    r1, [r1, #0x0]
	lsl     r1, r1, #8
	orr     r3, r1
	ldr     r1, [pc, #0x58] @ 0x21dd710, (=0x4001052)
	strh    r3, [r1, #0x0]
	ldsh    r1, [r4, r2]
	cmp     r1, #0x0
	bne     branch_21dd70c
	mov     r2, #0x0
	ldr     r0, [r0, #0x8]
	mov     r1, #0x6
	mov     r3, r2
	bl      Function_2019184
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r3-r5,pc}
@ 0x21dd6d2

.thumb
branch_21dd6d2: @ 21dd6d2 :thumb
	ldrh    r1, [r4, #0xc]
	cmp     r1, #0x0
	beq     branch_21dd6f4
	ldr     r2, [r4, #0x10]
	ldr     r1, [r4, #0x14]
	add     r3, r2, r1
	str     r3, [r4, #0x10]
	ldr     r0, [r0, #0x8]
	mov     r1, #0x5
	mov     r2, #0x0
	asr     r3, r3, #12
	bl      Function_2019184
	ldrh    r0, [r4, #0xc]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, #0xc]
	pop     {r3-r5,pc}
@ 0x21dd6f4

.thumb
branch_21dd6f4: @ 21dd6f4 :thumb
	ldr     r0, [r0, #0x8]
	ldr     r3, [r4, #0x18]
	mov     r1, #0x5
	mov     r2, #0x0
	bl      Function_2019184
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r3-r5,pc}
@ 0x21dd708

.thumb
branch_21dd708: @ 21dd708 :thumb
	bl      Function_21dd358
.thumb
branch_21dd70c: @ 21dd70c :thumb
	pop     {r3-r5,pc}
@ 0x21dd70e


.align 2


.word 0x4001052 @ 0x21dd710
.thumb
Function_21dd714: @ 21dd714 :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_21dd73c
	ldr     r1, [r4, #0x10]
	cmp     r1, #0x1
	beq     branch_21dd726
	cmp     r1, #0x2
	beq     branch_21dd732
	pop     {r4,pc}
@ 0x21dd726

.thumb
branch_21dd726: @ 21dd726 :thumb
	bl      Function_21dd854
	mov     r0, r4
	bl      Function_21ddd80
	pop     {r4,pc}
@ 0x21dd732

.thumb
branch_21dd732: @ 21dd732 :thumb
	bl      Function_21dd9dc
	mov     r0, r4
	bl      Function_21de0a0
.thumb
branch_21dd73c: @ 21dd73c :thumb
	pop     {r4,pc}
@ 0x21dd73e


.align 2, 0


.thumb
Function_21dd740: @ 21dd740 :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_21dd762
	bl      Function_21dd368
	cmp     r0, #0x0
	beq     branch_21dd75e
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x1
	bne     branch_21dd75a
	mov     r0, r4
	bl      Function_21de350
.thumb
branch_21dd75a: @ 21dd75a :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21dd75e

.thumb
branch_21dd75e: @ 21dd75e :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21dd762

.thumb
branch_21dd762: @ 21dd762 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21dd766


.align 2, 0


.thumb
Function_21dd768: @ 21dd768 :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_21dd790
	ldr     r1, [r4, #0x10]
	cmp     r1, #0x1
	beq     branch_21dd77a
	cmp     r1, #0x2
	beq     branch_21dd78c
	pop     {r4,pc}
@ 0x21dd77a

.thumb
branch_21dd77a: @ 21dd77a :thumb
	bl      Function_21de324
	mov     r0, r4
	bl      Function_21dd8f8
	mov     r0, r4
	bl      Function_21ddfa8
	pop     {r4,pc}
@ 0x21dd78c

.thumb
branch_21dd78c: @ 21dd78c :thumb
	bl      Function_21de2a4
.thumb
branch_21dd790: @ 21dd790 :thumb
	pop     {r4,pc}
@ 0x21dd792


.align 2, 0


.thumb
Function_21dd794: @ 21dd794 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	bl      Function_21d5eb0
	cmp     r0, #0x0
	ble     branch_21dd7c4
	mov     r2, r4
	add     r2, #0x80
	ldr     r2, [r2, #0x0]
	mov     r1, r4
	sub     r2, r2, r0
	mov     r0, r4
	add     r0, #0x80
	add     r4, #0x80
	str     r2, [r0, #0x0]
	ldr     r0, [r4, #0x0]
	add     r1, #0x80
	cmp     r0, #0x0
	bge     branch_21dd7e4
	ldr     r0, [r1, #0x0]
	add     r0, #0xa
	str     r0, [r1, #0x0]
	pop     {r4,pc}
@ 0x21dd7c4

.thumb
branch_21dd7c4: @ 21dd7c4 :thumb
	mov     r2, r4
	add     r2, #0x80
	ldr     r2, [r2, #0x0]
	mov     r1, r4
	sub     r2, r2, r0
	mov     r0, r4
	add     r0, #0x80
	add     r4, #0x80
	str     r2, [r0, #0x0]
	ldr     r0, [r4, #0x0]
	add     r1, #0x80
	cmp     r0, #0xa
	blt     branch_21dd7e4
	ldr     r0, [r1, #0x0]
	sub     r0, #0xa
	str     r0, [r1, #0x0]
.thumb
branch_21dd7e4: @ 21dd7e4 :thumb
	pop     {r4,pc}
@ 0x21dd7e6


.align 2, 0


.thumb
Function_21dd7e8: @ 21dd7e8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	bl      Function_21d5eb0
	mov     r2, r4
	add     r2, #0x80
	ldr     r2, [r2, #0x0]
	mov     r1, r4
	add     r2, r2, r0
	mov     r0, r4
	add     r0, #0x80
	add     r4, #0x80
	str     r2, [r0, #0x0]
	ldr     r0, [r4, #0x0]
	add     r1, #0x80
	cmp     r0, #0x0
	bge     branch_21dd814
	ldr     r0, [r1, #0x0]
	add     r0, #0x8
	str     r0, [r1, #0x0]
	pop     {r4,pc}
@ 0x21dd814

.thumb
branch_21dd814: @ 21dd814 :thumb
	cmp     r0, #0x8
	blt     branch_21dd81e
	ldr     r0, [r1, #0x0]
	sub     r0, #0x8
	str     r0, [r1, #0x0]
.thumb
branch_21dd81e: @ 21dd81e :thumb
	pop     {r4,pc}
@ 0x21dd820

.thumb
Function_21dd820: @ 21dd820 :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_21dd850
	bl      Function_21dd368
	cmp     r0, #0x0
	beq     branch_21dd84c
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x1
	bne     branch_21dd842
	mov     r0, r4
	bl      Function_21de350
	mov     r0, r4
	bl      Function_21dd794
	b       branch_21dd848
@ 0x21dd842

.thumb
branch_21dd842: @ 21dd842 :thumb
	mov     r0, r4
	bl      Function_21dd7e8
.thumb
branch_21dd848: @ 21dd848 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21dd84c

.thumb
branch_21dd84c: @ 21dd84c :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21dd850

.thumb
branch_21dd850: @ 21dd850 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21dd854

.thumb
Function_21dd854: @ 21dd854 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x5c
	str     r0, [sp, #0x8]
	ldr     r0, [r0, #0x0]
	bl      Function_21d780c
	mov     r7, r0
	ldr     r0, [sp, #0x8]
	ldr     r0, [r0, #0x4]
	bl      Function_21d5eb8
	add     r4, r0, #0x3
	cmp     r4, #0x12
	blt     branch_21dd872
	sub     r4, #0x12
.thumb
branch_21dd872: @ 21dd872 :thumb
	ldr     r5, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	mov     r0, r5
	str     r0, [sp, #0x10]
	add     r0, #0x18
	mov     r6, #0xc0
	str     r0, [sp, #0x10]
.thumb
branch_21dd882: @ 21dd882 :thumb
	add     r0, sp, #0x14
	blx     Function_20a818c
	add     r0, sp, #0x14
	str     r0, [sp, #0x0]
	mov     r0, r7
	mov     r1, r4
	mov     r2, r6
	mov     r3, #0x2
	bl      Function_21dbba8
	mov     r0, r7
	bl      Function_21dbd3c
	mov     r3, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r2, [sp, #0x10]
	add     r0, sp, #0x38
	add     r1, sp, #0x14
	bl      Function_21d783c
	mov     r0, #0x30
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x8]
	mov     r3, #0x17
	ldr     r0, [r0, #0xc]
	add     r1, sp, #0x38
	mov     r2, #0x10
	lsl     r3, r3, #4
	bl      Function_21d785c
	str     r0, [r5, #0x54]
	cmp     r0, #0x0
	bne     branch_21dd8d4
	bl      ErrorHandling
.thumb
branch_21dd8d4: @ 21dd8d4 :thumb
	.hword  0x1e64 @ sub r4, r4, #0x1
	bpl     branch_21dd8da
	mov     r4, #0x11
.thumb
branch_21dd8da: @ 21dd8da :thumb
	ldr     r0, [sp, #0xc]
	add     r6, #0x20
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	str     r0, [sp, #0xc]
	cmp     r0, #0xa
	blt     branch_21dd882
	ldr     r0, [sp, #0x8]
	mov     r1, #0x0
	add     r0, #0x80
	str     r0, [sp, #0x8]
	str     r1, [r0, #0x0]
	add     sp, #0x5c
	pop     {r4-r7,pc}
@ 0x21dd8f6


.align 2, 0


.thumb
Function_21dd8f8: @ 21dd8f8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	str     r0, [sp, #0x4]
	ldr     r0, [r0, #0x0]
	bl      Function_21d780c
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, #0x4]
	bl      Function_21d5eb8
	ldr     r1, [sp, #0x4]
	ldr     r2, [r1, #0x4]
	mov     r1, #0xa0
	ldsh    r7, [r2, r1]
	cmp     r7, #0x0
	ble     branch_21dd934
	sub     r0, r0, r7
	add     r5, r0, #0x4
	cmp     r5, #0x12
	blt     branch_21dd924
	sub     r5, #0x12
.thumb
branch_21dd924: @ 21dd924 :thumb
	ldr     r0, [sp, #0x4]
	mov     r6, #0x1
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	.hword  0x1e44 @ sub r4, r0, #0x1
	bpl     branch_21dd950
	add     r4, #0xa
	b       branch_21dd950
@ 0x21dd934

.thumb
branch_21dd934: @ 21dd934 :thumb
	sub     r0, r0, r7
	.hword  0x1ec5 @ sub r5, r0, #0x3
	bpl     branch_21dd93c
	add     r5, #0x12
.thumb
branch_21dd93c: @ 21dd93c :thumb
	ldr     r0, [sp, #0x4]
	mov     r6, #0x0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mvn     r6, r6
	add     r4, r0, #0x6
	cmp     r4, #0xa
	blt     branch_21dd94e
	sub     r4, #0xa
.thumb
branch_21dd94e: @ 21dd94e :thumb
	neg     r7, r7
.thumb
branch_21dd950: @ 21dd950 :thumb
	ldr     r0, [sp, #0x4]
	str     r7, [r0, #0x7c]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	cmp     r7, #0x0
	ble     branch_21dd994
.thumb
branch_21dd95c: @ 21dd95c :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	lsl     r2, r4, #5
	ldr     r0, [sp, #0xc]
	mov     r1, r5
	add     r2, #0xc0
	mov     r3, #0x2
	bl      Function_21dbba8
	add     r5, r5, r6
	bpl     branch_21dd976
	mov     r5, #0x11
	b       branch_21dd97c
@ 0x21dd976

.thumb
branch_21dd976: @ 21dd976 :thumb
	cmp     r5, #0x12
	blt     branch_21dd97c
	mov     r5, #0x0
.thumb
branch_21dd97c: @ 21dd97c :thumb
	sub     r4, r4, r6
	bpl     branch_21dd984
	mov     r4, #0x9
	b       branch_21dd98a
@ 0x21dd984

.thumb
branch_21dd984: @ 21dd984 :thumb
	cmp     r4, #0xa
	blt     branch_21dd98a
	mov     r4, #0x0
.thumb
branch_21dd98a: @ 21dd98a :thumb
	ldr     r0, [sp, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x8]
	cmp     r0, r7
	blt     branch_21dd95c
.thumb
branch_21dd994: @ 21dd994 :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21dd998

.thumb
Function_21dd998: @ 21dd998 :thumb
	push    {r4-r6,lr}
	mov     r4, #0x0
	mov     r5, r0
	mov     r6, r4
.thumb
branch_21dd9a0: @ 21dd9a0 :thumb
	ldr     r0, [r5, #0x54]
	cmp     r0, #0x0
	beq     branch_21dd9ac
	bl      Function_2021bd4
	str     r6, [r5, #0x54]
.thumb
branch_21dd9ac: @ 21dd9ac :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0xa
	blt     branch_21dd9a0
	pop     {r4-r6,pc}
@ 0x21dd9b6


.align 2, 0


.thumb
Function_21dd9b8: @ 21dd9b8 :thumb
	cmp     r0, #0x0
	bne     branch_21dd9c8
	cmp     r1, #0x0
	bne     branch_21dd9c4
	mov     r0, #0x1
	bx      lr
@ 0x21dd9c4

.thumb
branch_21dd9c4: @ 21dd9c4 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21dd9c8

.thumb
branch_21dd9c8: @ 21dd9c8 :thumb
	mov     r3, #0x1
	.hword  0x1e42 @ sub r2, r0, #0x1
	lsl     r3, r2
	tst     r1, r3
	beq     branch_21dd9d8
	lsl     r0, r0, #1
	.hword  0x1c40 @ add r0, r0, #0x1
	bx      lr
@ 0x21dd9d8

.thumb
branch_21dd9d8: @ 21dd9d8 :thumb
	lsl     r0, r0, #1
	bx      lr
@ 0x21dd9dc

.thumb
Function_21dd9dc: @ 21dd9dc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x60
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	bl      Function_21d5ec8
	str     r0, [sp, #0x14]
	add     r0, sp, #0x18
	blx     Function_20a818c
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x6
	lsl     r0, r0, #10
	str     r0, [sp, #0x8]
	mov     r0, #0xa
	str     r0, [sp, #0xc]
	add     r0, sp, #0x18
	str     r0, [sp, #0x10]
	mov     r0, #0x12
	mov     r1, #0x8d
	mov     r2, #0x1
	bl      Function_2006f00
	mov     r7, r5
	mov     r6, #0x0
	mov     r4, r5
	add     r7, #0x18
.thumb
branch_21dda18: @ 21dda18 :thumb
	mov     r0, r5
	add     r0, #0xb4
	ldr     r0, [r0, #0x0]
	mov     r3, r5
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	add     r3, #0xac
	ldr     r3, [r3, #0x0]
	add     r0, sp, #0x3c
	add     r1, sp, #0x18
	mov     r2, r7
	bl      Function_21d783c
	mov     r0, #0x30
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	mov     r2, #0xf0
	str     r0, [sp, #0x4]
	mov     r3, r2
	ldr     r0, [r5, #0xc]
	add     r1, sp, #0x3c
	add     r3, #0x80
	bl      Function_21d785c
	str     r0, [r4, #0x34]
	cmp     r0, #0x0
	bne     branch_21dda54
	bl      ErrorHandling
.thumb
branch_21dda54: @ 21dda54 :thumb
	ldr     r1, [sp, #0x14]
	mov     r0, r6
	bl      Function_21dd9b8
	mov     r1, r0
	ldr     r0, [r4, #0x34]
	bl      Function_2021d6c
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x8
	blt     branch_21dda18
	ldr     r0, [r5, #0x4]
	bl      Function_21d5ec0
	add     r5, #0x80
	str     r0, [r5, #0x0]
	add     sp, #0x60
	pop     {r3-r7,pc}
@ 0x21dda7a


.align 2, 0


.thumb
Function_21dda7c: @ 21dda7c :thumb
	push    {r4-r6,lr}
	mov     r4, #0x0
	mov     r5, r0
	mov     r6, r4
.thumb
branch_21dda84: @ 21dda84 :thumb
	ldr     r0, [r5, #0x34]
	cmp     r0, #0x0
	beq     branch_21dda90
	bl      Function_2021bd4
	str     r6, [r5, #0x34]
.thumb
branch_21dda90: @ 21dda90 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x8
	blt     branch_21dda84
	pop     {r4-r6,pc}
@ 0x21dda9a


.align 2, 0


.thumb
Function_21dda9c: @ 21dda9c :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r5, r0
	ldrh    r0, [r4, #0x16]
	cmp     r0, #0x0
	beq     branch_21ddab2
	.hword  0x1e40 @ sub r0, r0, #0x1
	add     sp, #0xc
	strh    r0, [r4, #0x16]
	pop     {r4,r5,pc}
@ 0x21ddab2

.thumb
branch_21ddab2: @ 21ddab2 :thumb
	ldrh    r0, [r4, #0x14]
	cmp     r0, #0x0
	beq     branch_21ddae8
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, #0x14]
	ldr     r1, [r4, #0x8]
	ldr     r0, [r4, #0x10]
	add     r0, r1, r0
	str     r0, [r4, #0x8]
	asr     r0, r0, #12
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x4c] @ 0x21ddb18, (=0x21e028c)
	ldsh    r0, [r0, r1]
	lsl     r0, r0, #12
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x48] @ 0x21ddb1c, (=0x21e028e)
	ldsh    r0, [r0, r1]
	add     r1, sp, #0x0
	lsl     r0, r0, #12
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x4]
	bl      Function_2021c50
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21ddae8

.thumb
branch_21ddae8: @ 21ddae8 :thumb
	ldr     r0, [r4, #0xc]
	asr     r0, r0, #12
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x28] @ 0x21ddb18, (=0x21e028c)
	ldsh    r0, [r0, r1]
	lsl     r0, r0, #12
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x24] @ 0x21ddb1c, (=0x21e028e)
	ldsh    r0, [r0, r1]
	add     r1, sp, #0x0
	lsl     r0, r0, #12
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x4]
	bl      Function_2021c50
	mov     r0, r5
	mov     r1, r4
	bl      Function_21ddbd0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21ddb16


.align 2


.word 0x21e028c @ 0x21ddb18
.word 0x21e028e @ 0x21ddb1c
.thumb
Function_21ddb20: @ 21ddb20 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r5, r0
	ldrh    r0, [r4, #0x16]
	cmp     r0, #0x0
	beq     branch_21ddb36
	.hword  0x1e40 @ sub r0, r0, #0x1
	add     sp, #0xc
	strh    r0, [r4, #0x16]
	pop     {r4,r5,pc}
@ 0x21ddb36

.thumb
branch_21ddb36: @ 21ddb36 :thumb
	ldrh    r0, [r4, #0x14]
	cmp     r0, #0x0
	beq     branch_21ddb72
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, #0x14]
	ldr     r1, [r4, #0x8]
	ldr     r0, [r4, #0x10]
	add     r0, r1, r0
	str     r0, [r4, #0x8]
	asr     r0, r0, #12
	ldr     r1, [pc, #0x7c] @ 0x21ddbc8, (=0x21e028c)
	lsl     r0, r0, #2
	ldsh    r2, [r1, r0]
	mov     r1, #0x1
	lsl     r1, r1, #8
	sub     r1, r1, r2
	lsl     r1, r1, #12
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x70] @ 0x21ddbcc, (=0x21e028e)
	ldsh    r0, [r1, r0]
	add     r1, sp, #0x0
	lsl     r0, r0, #12
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x4]
	bl      Function_2021c50
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21ddb72

.thumb
branch_21ddb72: @ 21ddb72 :thumb
	ldr     r0, [r4, #0xc]
	ldr     r1, [pc, #0x50] @ 0x21ddbc8, (=0x21e028c)
	asr     r0, r0, #12
	lsl     r0, r0, #2
	ldsh    r2, [r1, r0]
	mov     r1, #0x1
	lsl     r1, r1, #8
	sub     r1, r1, r2
	lsl     r1, r1, #12
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x44] @ 0x21ddbcc, (=0x21e028e)
	ldsh    r0, [r1, r0]
	add     r1, sp, #0x0
	lsl     r0, r0, #12
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x4]
	bl      Function_2021c50
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x0
	beq     branch_21ddbbc
	ldrh    r0, [r4, #0x28]
	add     sp, #0xc
	strh    r0, [r4, #0x14]
	ldr     r0, [r4, #0x1c]
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x24]
	str     r0, [r4, #0x10]
	ldr     r0, [r4, #0x20]
	str     r0, [r4, #0xc]
	ldrh    r0, [r4, #0x2a]
	strh    r0, [r4, #0x16]
	mov     r0, #0x0
	str     r0, [r4, #0x18]
	pop     {r4,r5,pc}
@ 0x21ddbbc

.thumb
branch_21ddbbc: @ 21ddbbc :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_21ddbd0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21ddbc8

.word 0x21e028c @ 0x21ddbc8
.word 0x21e028e @ 0x21ddbcc
.thumb
Function_21ddbd0: @ 21ddbd0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r4, [r1, #0x0]
	ldr     r0, [pc, #0x1c] @ 0x21ddbf4, (=0x1cb)
	ldrb    r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_21ddbe2
	bl      ErrorHandling
.thumb
branch_21ddbe2: @ 21ddbe2 :thumb
	ldr     r0, [pc, #0x10] @ 0x21ddbf4, (=0x1cb)
	ldrb    r1, [r4, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strb    r1, [r4, r0]
	mov     r0, r5
	bl      Call_RemoveTaskFromTaskList
	pop     {r3-r5,pc}
@ 0x21ddbf2


.align 2


.word 0x1cb @ 0x21ddbf4
.thumb
Function_21ddbf8: @ 21ddbf8 :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	mov     r6, r0
	mov     r5, r2
	str     r3, [sp, #0x0]
	ldr     r4, [sp, #0x20]
	cmp     r7, #0x0
	bne     branch_21ddc0c
	bl      ErrorHandling
.thumb
branch_21ddc0c: @ 21ddc0c :thumb
	cmp     r4, #0x0
	beq     branch_21ddc12
	.hword  0x1e64 @ sub r4, r4, #0x1
.thumb
branch_21ddc12: @ 21ddc12 :thumb
	str     r6, [r5, #0x0]
	ldr     r0, [sp, #0x1c]
	str     r7, [r5, #0x4]
	strh    r0, [r5, #0x14]
	ldr     r0, [sp, #0x24]
	strh    r4, [r5, #0x16]
	cmp     r0, #0x0
	beq     branch_21ddc26
	ldr     r4, [pc, #0x40] @ 0x21ddc64, (=0x21ddb21)
	b       branch_21ddc28
@ 0x21ddc26

.thumb
branch_21ddc26: @ 21ddc26 :thumb
	ldr     r4, [pc, #0x40] @ 0x21ddc68, (=0x21dda9d)
.thumb
branch_21ddc28: @ 21ddc28 :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [pc, #0x40] @ 0x21ddc6c, (=0x21e0264)
	lsl     r0, r0, #1
	ldrh    r0, [r1, r0]
	lsl     r0, r0, #12
	str     r0, [r5, #0x8]
	ldr     r0, [sp, #0x18]
	lsl     r0, r0, #1
	ldrh    r0, [r1, r0]
	lsl     r1, r0, #12
	str     r1, [r5, #0xc]
	ldr     r0, [r5, #0x8]
	sub     r0, r1, r0
	ldr     r1, [sp, #0x1c]
	blx     _s32_div_f
	str     r0, [r5, #0x10]
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, r5
	str     r2, [r5, #0x18]
	bl      Function_21d77c8
	cmp     r0, #0x0
	beq     branch_21ddc62
	ldr     r0, [pc, #0x14] @ 0x21ddc70, (=0x1cb)
	ldrb    r1, [r6, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r6, r0]
.thumb
branch_21ddc62: @ 21ddc62 :thumb
	pop     {r3-r7,pc}
@ 0x21ddc64

.word Function_21ddb20+1 @ =0x21ddb21, 0x21ddc64
.word Function_21dda9c+1 @ =0x21dda9d, 0x21ddc68
.word 0x21e0264 @ 0x21ddc6c
.word 0x1cb @ 0x21ddc70
.thumb
Function_21ddc74: @ 21ddc74 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, #0x1
	str     r0, [r4, #0x18]
	strh    r2, [r4, #0x2a]
	cmp     r2, #0x0
	beq     branch_21ddc88
	ldrh    r0, [r4, #0x2a]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, #0x2a]
.thumb
branch_21ddc88: @ 21ddc88 :thumb
	ldr     r0, [sp, #0x8]
	sub     r2, r0, r3
	bpl     branch_21ddc94
	mov     r0, #0x0
	mvn     r0, r0
	mul     r2, r0
.thumb
branch_21ddc94: @ 21ddc94 :thumb
	mov     r1, r2
	mov     r0, #0x6
	mul     r1, r0
	ldr     r2, [pc, #0x20] @ 0x21ddcbc, (=0x21e0264)
	lsl     r0, r3, #1
	ldrh    r0, [r2, r0]
	strh    r1, [r4, #0x28]
	lsl     r0, r0, #12
	str     r0, [r4, #0x1c]
	ldr     r0, [sp, #0x8]
	lsl     r0, r0, #1
	ldrh    r0, [r2, r0]
	lsl     r2, r0, #12
	str     r2, [r4, #0x20]
	ldr     r0, [r4, #0x1c]
	sub     r0, r2, r0
	blx     _s32_div_f
	str     r0, [r4, #0x24]
	pop     {r4,pc}
@ 0x21ddcbc

.word 0x21e0264 @ 0x21ddcbc
.thumb
Function_21ddcc0: @ 21ddcc0 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r0, #0x73
	mov     r4, r1
	lsl     r0, r0, #2
	ldrb    r3, [r4, r0]
	ldr     r2, [r4, #0x0]
	cmp     r3, #0x0
	beq     branch_21ddcde
	cmp     r3, #0x1
	beq     branch_21ddd40
	cmp     r3, #0x2
	beq     branch_21ddd58
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21ddcde

.thumb
branch_21ddcde: @ 21ddcde :thumb
	.hword  0x1e81 @ sub r1, r0, #0x2
	ldrb    r1, [r4, r1]
	mov     r6, #0x2c
	add     r3, r1, #0x1
	.hword  0x1e81 @ sub r1, r0, #0x2
	strb    r3, [r4, r1]
	.hword  0x1e80 @ sub r0, r0, #0x2
	ldrb    r3, [r4, r0]
	mov     r1, #0x6
	mov     r0, #0x7
	sub     r5, r1, r3
	sub     r0, r0, r3
	str     r0, [sp, #0x0]
	add     r0, r5, #0x1
	mul     r1, r0
	str     r1, [sp, #0x4]
	mov     r3, #0x0
	str     r3, [sp, #0x8]
	lsl     r1, r5, #2
	add     r1, r2, r1
	str     r3, [sp, #0xc]
	mov     r2, r4
	ldr     r1, [r1, #0x54]
	add     r2, #0x8
	mul     r6, r5
	mov     r0, r4
	add     r2, r2, r6
	bl      Function_21ddbf8
	ldr     r0, [pc, #0x54] @ 0x21ddd70, (=0x1cd)
	mov     r1, #0x4
	strb    r1, [r4, r0]
	.hword  0x1ec1 @ sub r1, r0, #0x3
	ldrb    r1, [r4, r1]
	cmp     r1, #0x6
	bcc     branch_21ddd30
	mov     r1, #0x2
	.hword  0x1e40 @ sub r0, r0, #0x1
	add     sp, #0x10
	strb    r1, [r4, r0]
	pop     {r4-r6,pc}
@ 0x21ddd30

.thumb
branch_21ddd30: @ 21ddd30 :thumb
	ldrb    r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_21ddd6c
	mov     r1, #0x1
	.hword  0x1e40 @ sub r0, r0, #0x1
	add     sp, #0x10
	strb    r1, [r4, r0]
	pop     {r4-r6,pc}
@ 0x21ddd40

.thumb
branch_21ddd40: @ 21ddd40 :thumb
	add     r1, r0, #0x1
	ldrb    r1, [r4, r1]
	.hword  0x1e8a @ sub r2, r1, #0x2
	add     r1, r0, #0x1
	strb    r2, [r4, r1]
	ldrb    r1, [r4, r1]
	cmp     r1, #0x0
	bne     branch_21ddd6c
	mov     r1, #0x0
	add     sp, #0x10
	strb    r1, [r4, r0]
	pop     {r4-r6,pc}
@ 0x21ddd58

.thumb
branch_21ddd58: @ 21ddd58 :thumb
	.hword  0x1e41 @ sub r1, r0, #0x1
	ldrb    r1, [r4, r1]
	cmp     r1, #0x0
	bne     branch_21ddd6c
	add     r1, r3, #0x1
	strb    r1, [r4, r0]
	ldr     r1, [pc, #0xc] @ 0x21ddd74, (=0x21ddd79)
	mov     r0, r4
	bl      Function_21d79b8
.thumb
branch_21ddd6c: @ 21ddd6c :thumb
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21ddd70

.word 0x1cd @ 0x21ddd70
.word Function_21ddd78+1 @ =0x21ddd79, 0x21ddd74
.thumb
Function_21ddd78: @ 21ddd78 :thumb
	ldr     r3, [pc, #0x0] @ 0x21ddd7c, (=0x21dd359)
	bx      r3
@ 0x21ddd7c

.word 0x21dd359 @ 0x21ddd7c
.thumb
Function_21ddd80: @ 21ddd80 :thumb
	push    {r3-r5,lr}
	mov     r1, #0x1d
	mov     r4, r0
	mov     r0, #0xa
	lsl     r1, r1, #4
	bl      malloc
	mov     r5, r0
	beq     branch_21dddc8
	mov     r1, #0x73
	mov     r0, #0x0
	lsl     r1, r1, #2
	str     r4, [r5, #0x0]
	strb    r0, [r5, r1]
	.hword  0x1e8a @ sub r2, r1, #0x2
	strb    r0, [r5, r2]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strb    r0, [r5, r1]
	mov     r1, #0x7
	mov     r3, r0
	lsl     r1, r1, #6
.thumb
branch_21dddaa: @ 21dddaa :thumb
	add     r2, r5, r0
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r3, [r2, r1]
	cmp     r0, #0x8
	blt     branch_21dddaa
	ldr     r1, [pc, #0x14] @ 0x21dddcc, (=0x21ddcc1)
	mov     r0, r4
	mov     r2, r5
	bl      Function_21dd344
	cmp     r0, #0x0
	bne     branch_21dddc8
	mov     r0, r5
	bl      free
.thumb
branch_21dddc8: @ 21dddc8 :thumb
	pop     {r3-r5,pc}
@ 0x21dddca


.align 2


.word 0x21ddcc1 @ 0x21dddcc
.thumb
Function_21dddd0: @ 21dddd0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x44
	mov     r2, #0x73
	lsl     r2, r2, #2
	mov     r0, r1
	ldrb    r3, [r0, r2]
	str     r1, [sp, #0x10]
	ldr     r7, [r1, #0x0]
	cmp     r3, #0x0
	beq     branch_21dddee
	cmp     r3, #0x1
	bne     branch_21dddea
	b       branch_21ddf86
@ 0x21dddea

.thumb
branch_21dddea: @ 21dddea :thumb
	add     sp, #0x44
	pop     {r4-r7,pc}
@ 0x21dddee

.thumb
branch_21dddee: @ 21dddee :thumb
	ldr     r1, [r7, #0x4]
	mov     r0, #0xa0
	ldsh    r0, [r1, r0]
	cmp     r0, #0x0
	ble     branch_21dde12
	mov     r0, r7
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	add     r4, r0, #0x5
	cmp     r4, #0xa
	blt     branch_21dde06
	sub     r4, #0xa
.thumb
branch_21dde06: @ 21dde06 :thumb
	mov     r5, #0x0
	mov     r0, #0x7
	mvn     r5, r5
	mov     r6, #0x6
	str     r0, [sp, #0x24]
	b       branch_21dde20
@ 0x21dde12

.thumb
branch_21dde12: @ 21dde12 :thumb
	mov     r0, r7
	add     r0, #0x80
	ldr     r4, [r0, #0x0]
	mov     r5, #0x1
	mov     r0, #0x0
	mov     r6, r5
	str     r0, [sp, #0x24]
.thumb
branch_21dde20: @ 21dde20 :thumb
	ldr     r1, [r7, #0x7c]
	mov     r0, #0x0
	str     r0, [sp, #0x34]
	cmp     r1, #0x0
	ble     branch_21dde82
	str     r0, [sp, #0x28]
	ldr     r0, [sp, #0x10]
	str     r0, [sp, #0x38]
	add     r0, #0x8
	str     r0, [sp, #0x38]
.thumb
branch_21dde34: @ 21dde34 :thumb
	ldr     r0, [sp, #0x24]
	mov     r3, r4
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x28]
	.hword  0x1d80 @ add r0, r0, #0x6
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	mov     r1, r0
	ldr     r2, [r1, #0x4]
	lsl     r1, r4, #2
	ldr     r1, [r2, r1]
	mov     r2, #0x2c
	mul     r3, r2
	ldr     r2, [sp, #0x38]
	add     r2, r2, r3
	mov     r3, r6
	bl      Function_21ddbf8
	add     r4, r4, r5
	add     r6, r6, r5
	cmp     r4, #0xa
	blt     branch_21dde6a
	mov     r4, #0x0
	b       branch_21dde70
@ 0x21dde6a

.thumb
branch_21dde6a: @ 21dde6a :thumb
	cmp     r4, #0x0
	bge     branch_21dde70
	mov     r4, #0x9
.thumb
branch_21dde70: @ 21dde70 :thumb
	ldr     r0, [sp, #0x28]
	ldr     r1, [r7, #0x7c]
	.hword  0x1d80 @ add r0, r0, #0x6
	str     r0, [sp, #0x28]
	ldr     r0, [sp, #0x34]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x34]
	cmp     r0, r1
	blt     branch_21dde34
.thumb
branch_21dde82: @ 21dde82 :thumb
	mov     r0, #0x6
	sub     r0, r0, r1
	str     r0, [sp, #0x30]
	mov     r0, #0x0
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x30]
	cmp     r0, #0x0
	ble     branch_21ddee8
	ldr     r0, [sp, #0x10]
	str     r0, [sp, #0x3c]
	add     r0, #0x8
	str     r0, [sp, #0x3c]
.thumb
branch_21dde9a: @ 21dde9a :thumb
	ldr     r0, [r7, #0x7c]
	mov     r1, r5
	mul     r1, r0
	sub     r1, r6, r1
	str     r1, [sp, #0x0]
	mov     r1, #0x6
	mul     r1, r0
	str     r1, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	mov     r3, r4
	mov     r1, r0
	ldr     r2, [r1, #0x4]
	lsl     r1, r4, #2
	ldr     r1, [r2, r1]
	mov     r2, #0x2c
	mul     r3, r2
	ldr     r2, [sp, #0x3c]
	add     r2, r2, r3
	mov     r3, r6
	bl      Function_21ddbf8
	add     r4, r4, r5
	add     r6, r6, r5
	cmp     r4, #0xa
	blt     branch_21dded6
	mov     r4, #0x0
	b       branch_21ddedc
@ 0x21dded6

.thumb
branch_21dded6: @ 21dded6 :thumb
	cmp     r4, #0x0
	bge     branch_21ddedc
	mov     r4, #0x9
.thumb
branch_21ddedc: @ 21ddedc :thumb
	ldr     r0, [sp, #0x14]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x30]
	str     r1, [sp, #0x14]
	cmp     r1, r0
	blt     branch_21dde9a
.thumb
branch_21ddee8: @ 21ddee8 :thumb
	ldr     r1, [r7, #0x4]
	mov     r0, #0xa0
	ldsh    r0, [r1, r0]
	cmp     r0, #0x0
	ble     branch_21ddefe
	mov     r0, #0x0
	str     r0, [sp, #0x1c]
	ldr     r0, [r7, #0x7c]
	str     r0, [sp, #0x20]
	str     r0, [sp, #0x18]
	b       branch_21ddf0c
@ 0x21ddefe

.thumb
branch_21ddefe: @ 21ddefe :thumb
	mov     r0, #0x7
	str     r0, [sp, #0x1c]
	ldr     r0, [r7, #0x7c]
	ldr     r1, [sp, #0x1c]
	str     r0, [sp, #0x20]
	sub     r0, r1, r0
	str     r0, [sp, #0x18]
.thumb
branch_21ddf0c: @ 21ddf0c :thumb
	ldr     r0, [sp, #0x20]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_21ddf74
	ldr     r0, [sp, #0x10]
	str     r6, [sp, #0x2c]
	str     r0, [sp, #0x40]
	add     r0, #0x8
	str     r0, [sp, #0x40]
.thumb
branch_21ddf1e: @ 21ddf1e :thumb
	ldr     r0, [sp, #0x18]
	mov     r3, r4
	str     r0, [sp, #0x0]
	ldr     r0, [r7, #0x7c]
	sub     r1, r0, r6
	mov     r0, #0x6
	mul     r0, r1
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x2c]
	.hword  0x1d80 @ add r0, r0, #0x6
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	mov     r1, r0
	ldr     r2, [r1, #0x4]
	lsl     r1, r4, #2
	ldr     r1, [r2, r1]
	mov     r2, #0x2c
	mul     r3, r2
	ldr     r2, [sp, #0x40]
	add     r2, r2, r3
	ldr     r3, [sp, #0x1c]
	bl      Function_21ddbf8
	ldr     r0, [sp, #0x18]
	add     r4, r4, r5
	add     r0, r0, r5
	str     r0, [sp, #0x18]
	cmp     r4, #0xa
	blt     branch_21ddf60
	sub     r4, #0xa
	b       branch_21ddf66
@ 0x21ddf60

.thumb
branch_21ddf60: @ 21ddf60 :thumb
	cmp     r4, #0x0
	bge     branch_21ddf66
	add     r4, #0xa
.thumb
branch_21ddf66: @ 21ddf66 :thumb
	ldr     r0, [sp, #0x2c]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d80 @ add r0, r0, #0x6
	str     r0, [sp, #0x2c]
	ldr     r0, [sp, #0x20]
	cmp     r6, r0
	blt     branch_21ddf1e
.thumb
branch_21ddf74: @ 21ddf74 :thumb
	mov     r1, #0x73
	ldr     r0, [sp, #0x10]
	lsl     r1, r1, #2
	ldrb    r0, [r0, r1]
	add     r2, r0, #0x1
	ldr     r0, [sp, #0x10]
	add     sp, #0x44
	strb    r2, [r0, r1]
	pop     {r4-r7,pc}
@ 0x21ddf86

.thumb
branch_21ddf86: @ 21ddf86 :thumb
	ldr     r0, [sp, #0x10]
	.hword  0x1e51 @ sub r1, r2, #0x1
	ldrb    r0, [r0, r1]
	cmp     r0, #0x0
	bne     branch_21ddf9e
	ldr     r0, [sp, #0x10]
	add     r1, r3, #0x1
	strb    r1, [r0, r2]
	ldr     r1, [pc, #0xc] @ 0x21ddfa4, (=0x21ddd79)
	mov     r2, r7
	bl      Function_21d79b8
.thumb
branch_21ddf9e: @ 21ddf9e :thumb
	add     sp, #0x44
	pop     {r4-r7,pc}
@ 0x21ddfa2


.align 2


.word Function_21ddd78+1 @ =0x21ddd79, 0x21ddfa4
.thumb
Function_21ddfa8: @ 21ddfa8 :thumb
	push    {r3-r5,lr}
	mov     r1, #0x1d
	mov     r4, r0
	mov     r0, #0xa
	lsl     r1, r1, #4
	bl      malloc
	mov     r5, r0
	beq     branch_21ddff6
	mov     r0, r4
	mov     r1, #0x73
	lsl     r1, r1, #2
	str     r4, [r5, #0x0]
	add     r0, #0x54
	str     r0, [r5, #0x4]
	mov     r0, #0x0
	strb    r0, [r5, r1]
	.hword  0x1e8a @ sub r2, r1, #0x2
	strb    r0, [r5, r2]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strb    r0, [r5, r1]
	mov     r1, #0x7
	mov     r3, r0
	lsl     r1, r1, #6
.thumb
branch_21ddfd8: @ 21ddfd8 :thumb
	add     r2, r5, r0
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r3, [r2, r1]
	cmp     r0, #0xa
	blt     branch_21ddfd8
	ldr     r1, [pc, #0x14] @ 0x21ddff8, (=0x21dddd1)
	mov     r0, r4
	mov     r2, r5
	bl      Function_21dd344
	cmp     r0, #0x0
	bne     branch_21ddff6
	mov     r0, r5
	bl      free
.thumb
branch_21ddff6: @ 21ddff6 :thumb
	pop     {r3-r5,pc}
@ 0x21ddff8

.word 0x21dddd1 @ 0x21ddff8
.thumb
Function_21ddffc: @ 21ddffc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	ldr     r0, [r1, #0x0]
	mov     r2, #0x73
	str     r0, [sp, #0x18]
	lsl     r2, r2, #2
	mov     r0, r1
	ldrb    r3, [r0, r2]
	str     r1, [sp, #0x10]
	cmp     r3, #0x0
	beq     branch_21de01a
	cmp     r3, #0x1
	beq     branch_21de07e
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x21de01a

.thumb
branch_21de01a: @ 21de01a :thumb
	ldr     r0, [sp, #0x18]
	mov     r5, #0x0
	add     r0, #0x80
	ldr     r4, [r0, #0x0]
	mov     r0, r1
	str     r0, [sp, #0x1c]
	add     r0, #0x8
	mov     r7, #0x6
	str     r5, [sp, #0x14]
	mov     r6, #0x24
	str     r0, [sp, #0x1c]
.thumb
branch_21de030: @ 21de030 :thumb
	str     r7, [sp, #0x0]
	str     r6, [sp, #0x4]
	ldr     r1, [sp, #0x18]
	lsl     r2, r4, #2
	add     r1, r1, r2
	str     r5, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	mov     r2, #0x2c
	mov     r3, r4
	mul     r3, r2
	ldr     r2, [sp, #0x1c]
	ldr     r0, [sp, #0x10]
	add     r2, r2, r3
	ldr     r1, [r1, #0x34]
	mov     r3, #0x0
	bl      Function_21ddbf8
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1fb6 @ sub r6, r6, #0x6
	.hword  0x1e7f @ sub r7, r7, #0x1
	cmp     r4, #0x8
	blt     branch_21de060
	mov     r4, #0x0
.thumb
branch_21de060: @ 21de060 :thumb
	ldr     r0, [sp, #0x14]
	.hword  0x1dad @ add r5, r5, #0x6
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x14]
	cmp     r0, #0x6
	blt     branch_21de030
	mov     r1, #0x73
	ldr     r0, [sp, #0x10]
	lsl     r1, r1, #2
	ldrb    r0, [r0, r1]
	add     r2, r0, #0x1
	ldr     r0, [sp, #0x10]
	add     sp, #0x20
	strb    r2, [r0, r1]
	pop     {r3-r7,pc}
@ 0x21de07e

.thumb
branch_21de07e: @ 21de07e :thumb
	ldr     r0, [sp, #0x10]
	.hword  0x1e51 @ sub r1, r2, #0x1
	ldrb    r0, [r0, r1]
	cmp     r0, #0x0
	bne     branch_21de096
	ldr     r0, [sp, #0x10]
	add     r1, r3, #0x1
	strb    r1, [r0, r2]
	ldr     r1, [pc, #0xc] @ 0x21de09c, (=0x21ddd79)
	ldr     r2, [sp, #0x18]
	bl      Function_21d79b8
.thumb
branch_21de096: @ 21de096 :thumb
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x21de09a


.align 2


.word Function_21ddd78+1 @ =0x21ddd79, 0x21de09c
.thumb
Function_21de0a0: @ 21de0a0 :thumb
	push    {r3-r5,lr}
	mov     r1, #0x1d
	mov     r4, r0
	mov     r0, #0xa
	lsl     r1, r1, #4
	bl      malloc
	mov     r5, r0
	beq     branch_21de0e8
	mov     r1, #0x73
	mov     r0, #0x0
	lsl     r1, r1, #2
	str     r4, [r5, #0x0]
	strb    r0, [r5, r1]
	.hword  0x1e8a @ sub r2, r1, #0x2
	strb    r0, [r5, r2]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strb    r0, [r5, r1]
	mov     r1, #0x7
	mov     r3, r0
	lsl     r1, r1, #6
.thumb
branch_21de0ca: @ 21de0ca :thumb
	add     r2, r5, r0
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r3, [r2, r1]
	cmp     r0, #0x8
	blt     branch_21de0ca
	ldr     r1, [pc, #0x14] @ 0x21de0ec, (=0x21ddffd)
	mov     r0, r4
	mov     r2, r5
	bl      Function_21dd344
	cmp     r0, #0x0
	bne     branch_21de0e8
	mov     r0, r5
	bl      free
.thumb
branch_21de0e8: @ 21de0e8 :thumb
	pop     {r3-r5,pc}
@ 0x21de0ea


.align 2


.word 0x21ddffd @ 0x21de0ec
.thumb
Function_21de0f0: @ 21de0f0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x44
	ldr     r0, [r1, #0x0]
	mov     r2, #0x73
	str     r0, [sp, #0x34]
	lsl     r2, r2, #2
	mov     r0, r1
	ldrb    r3, [r0, r2]
	str     r1, [sp, #0x10]
	cmp     r3, #0x0
	beq     branch_21de110
	cmp     r3, #0x1
	bne     branch_21de10c
	b       branch_21de282
@ 0x21de10c

.thumb
branch_21de10c: @ 21de10c :thumb
	add     sp, #0x44
	pop     {r4-r7,pc}
@ 0x21de110

.thumb
branch_21de110: @ 21de110 :thumb
	ldr     r0, [sp, #0x34]
	ldr     r0, [r0, #0x4]
	bl      Function_21d5eb0
	str     r0, [sp, #0x30]
	ldr     r0, [sp, #0x34]
	add     r0, #0x80
	ldr     r4, [r0, #0x0]
	ldr     r0, [sp, #0x30]
	cmp     r0, #0x0
	bge     branch_21de140
	.hword  0x1d64 @ add r4, r4, #0x5
	cmp     r4, #0x8
	blt     branch_21de12e
	sub     r4, #0x8
.thumb
branch_21de12e: @ 21de12e :thumb
	ldr     r0, [sp, #0x30]
	mov     r5, #0x0
	neg     r0, r0
	str     r0, [sp, #0x28]
	mov     r0, #0x0
	mvn     r5, r5
	mov     r6, #0x1
	str     r0, [sp, #0x18]
	b       branch_21de14a
@ 0x21de140

.thumb
branch_21de140: @ 21de140 :thumb
	str     r0, [sp, #0x28]
	mov     r0, #0x7
	mov     r5, #0x1
	mov     r6, #0x6
	str     r0, [sp, #0x18]
.thumb
branch_21de14a: @ 21de14a :thumb
	ldr     r0, [sp, #0x28]
	mov     r7, #0x0
	.hword  0x1d80 @ add r0, r0, #0x6
	str     r0, [sp, #0x2c]
	ldr     r0, [sp, #0x28]
	cmp     r0, #0x0
	ble     branch_21de1ac
	ldr     r0, [sp, #0x10]
	str     r7, [sp, #0x1c]
	str     r0, [sp, #0x38]
	add     r0, #0x8
	str     r0, [sp, #0x38]
.thumb
branch_21de162: @ 21de162 :thumb
	ldr     r0, [sp, #0x18]
	ldr     r1, [sp, #0x34]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x1c]
	lsl     r2, r4, #2
	.hword  0x1d80 @ add r0, r0, #0x6
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	add     r1, r1, r2
	str     r0, [sp, #0xc]
	mov     r2, #0x2c
	mov     r3, r4
	mul     r3, r2
	ldr     r2, [sp, #0x38]
	ldr     r0, [sp, #0x10]
	add     r2, r2, r3
	ldr     r1, [r1, #0x34]
	mov     r3, r6
	bl      Function_21ddbf8
	sub     r6, r6, r5
	add     r4, r4, r5
	bpl     branch_21de198
	add     r4, #0x8
	b       branch_21de19e
@ 0x21de198

.thumb
branch_21de198: @ 21de198 :thumb
	cmp     r4, #0x8
	blt     branch_21de19e
	sub     r4, #0x8
.thumb
branch_21de19e: @ 21de19e :thumb
	ldr     r0, [sp, #0x1c]
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d80 @ add r0, r0, #0x6
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x28]
	cmp     r7, r0
	blt     branch_21de162
.thumb
branch_21de1ac: @ 21de1ac :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x24]
	cmp     r7, #0x8
	bge     branch_21de218
	ldr     r0, [sp, #0x28]
	mov     r1, #0x6
	mul     r1, r0
	ldr     r0, [sp, #0x10]
	str     r1, [sp, #0x20]
	str     r0, [sp, #0x3c]
	add     r0, #0x8
	str     r0, [sp, #0x3c]
.thumb
branch_21de1c4: @ 21de1c4 :thumb
	ldr     r0, [sp, #0x18]
	ldr     r1, [sp, #0x34]
	sub     r0, r0, r5
	str     r0, [sp, #0x18]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x20]
	lsl     r2, r4, #2
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x24]
	add     r1, r1, r2
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	mov     r2, #0x2c
	mov     r3, r4
	mul     r3, r2
	ldr     r2, [sp, #0x3c]
	ldr     r0, [sp, #0x10]
	add     r2, r2, r3
	ldr     r1, [r1, #0x34]
	mov     r3, r6
	bl      Function_21ddbf8
	cmp     r6, #0x0
	beq     branch_21de1fe
	cmp     r6, #0x7
	beq     branch_21de1fe
	sub     r6, r6, r5
	b       branch_21de204
@ 0x21de1fe

.thumb
branch_21de1fe: @ 21de1fe :thumb
	ldr     r0, [sp, #0x24]
	.hword  0x1d80 @ add r0, r0, #0x6
	str     r0, [sp, #0x24]
.thumb
branch_21de204: @ 21de204 :thumb
	add     r4, r4, r5
	bpl     branch_21de20c
	add     r4, #0x8
	b       branch_21de212
@ 0x21de20c

.thumb
branch_21de20c: @ 21de20c :thumb
	cmp     r4, #0x8
	blt     branch_21de212
	sub     r4, #0x8
.thumb
branch_21de212: @ 21de212 :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	cmp     r7, #0x8
	blt     branch_21de1c4
.thumb
branch_21de218: @ 21de218 :thumb
	ldr     r0, [sp, #0x30]
	cmp     r0, #0x0
	bge     branch_21de22c
	mov     r0, #0x7
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x28]
	.hword  0x1e81 @ sub r1, r0, #0x2
	ldr     r0, [sp, #0x14]
	sub     r6, r0, r1
	b       branch_21de234
@ 0x21de22c

.thumb
branch_21de22c: @ 21de22c :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x28]
	.hword  0x1e86 @ sub r6, r0, #0x2
.thumb
branch_21de234: @ 21de234 :thumb
	ldr     r0, [sp, #0x2c]
	cmp     r7, r0
	bge     branch_21de270
	ldr     r0, [sp, #0x10]
	str     r0, [sp, #0x40]
	add     r0, #0x8
	str     r0, [sp, #0x40]
.thumb
branch_21de242: @ 21de242 :thumb
	mov     r1, #0x2c
	mov     r2, r4
	mul     r2, r1
	ldr     r1, [sp, #0x40]
	ldr     r0, [sp, #0x10]
	add     r1, r1, r2
	ldr     r3, [sp, #0x14]
	mov     r2, #0x6
	str     r6, [sp, #0x0]
	bl      Function_21ddc74
	sub     r6, r6, r5
	add     r4, r4, r5
	bpl     branch_21de262
	add     r4, #0x8
	b       branch_21de268
@ 0x21de262

.thumb
branch_21de262: @ 21de262 :thumb
	cmp     r4, #0x8
	blt     branch_21de268
	sub     r4, #0x8
.thumb
branch_21de268: @ 21de268 :thumb
	ldr     r0, [sp, #0x2c]
	.hword  0x1c7f @ add r7, r7, #0x1
	cmp     r7, r0
	blt     branch_21de242
.thumb
branch_21de270: @ 21de270 :thumb
	mov     r1, #0x73
	ldr     r0, [sp, #0x10]
	lsl     r1, r1, #2
	ldrb    r0, [r0, r1]
	add     r2, r0, #0x1
	ldr     r0, [sp, #0x10]
	add     sp, #0x44
	strb    r2, [r0, r1]
	pop     {r4-r7,pc}
@ 0x21de282

.thumb
branch_21de282: @ 21de282 :thumb
	ldr     r0, [sp, #0x10]
	.hword  0x1e51 @ sub r1, r2, #0x1
	ldrb    r0, [r0, r1]
	cmp     r0, #0x0
	bne     branch_21de29a
	ldr     r0, [sp, #0x10]
	add     r1, r3, #0x1
	strb    r1, [r0, r2]
	ldr     r1, [pc, #0xc] @ 0x21de2a0, (=0x21ddd79)
	ldr     r2, [sp, #0x34]
	bl      Function_21d79b8
.thumb
branch_21de29a: @ 21de29a :thumb
	add     sp, #0x44
	pop     {r4-r7,pc}
@ 0x21de29e


.align 2


.word Function_21ddd78+1 @ =0x21ddd79, 0x21de2a0
.thumb
Function_21de2a4: @ 21de2a4 :thumb
	push    {r3-r5,lr}
	mov     r1, #0x1d
	mov     r4, r0
	mov     r0, #0xa
	lsl     r1, r1, #4
	bl      malloc
	mov     r5, r0
	beq     branch_21de2ec
	mov     r1, #0x73
	mov     r0, #0x0
	lsl     r1, r1, #2
	str     r4, [r5, #0x0]
	strb    r0, [r5, r1]
	.hword  0x1e8a @ sub r2, r1, #0x2
	strb    r0, [r5, r2]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strb    r0, [r5, r1]
	mov     r1, #0x7
	mov     r3, r0
	lsl     r1, r1, #6
.thumb
branch_21de2ce: @ 21de2ce :thumb
	add     r2, r5, r0
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r3, [r2, r1]
	cmp     r0, #0x8
	blt     branch_21de2ce
	ldr     r1, [pc, #0x14] @ 0x21de2f0, (=0x21de0f1)
	mov     r0, r4
	mov     r2, r5
	bl      Function_21dd344
	cmp     r0, #0x0
	bne     branch_21de2ec
	mov     r0, r5
	bl      free
.thumb
branch_21de2ec: @ 21de2ec :thumb
	pop     {r3-r5,pc}
@ 0x21de2ee


.align 2


.word 0x21de0f1 @ 0x21de2f0
.thumb
Function_21de2f4: @ 21de2f4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	beq     branch_21de322
	ldr     r0, [r5, #0x34]
	cmp     r0, #0x0
	beq     branch_21de322
	ldr     r0, [r5, #0x4]
	bl      Function_21d5ec8
	mov     r6, r0
	mov     r4, #0x0
.thumb
branch_21de30a: @ 21de30a :thumb
	mov     r0, r4
	mov     r1, r6
	bl      Function_21dd9b8
	mov     r1, r0
	ldr     r0, [r5, #0x34]
	bl      Function_2021d6c
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x8
	blt     branch_21de30a
.thumb
branch_21de322: @ 21de322 :thumb
	pop     {r4-r6,pc}
@ 0x21de324


.thumb
Function_21de324: @ 21de324 :thumb
	ldr     r3, [pc, #0x4] @ 0x21de32c, (=Function_2019120+1)
	mov     r0, #0x4
	mov     r1, #0x0
	bx      r3
@ 0x21de32c

.word Function_2019120+1 @ 0x21de32c



.thumb
Function_21de330: @ 21de330 :thumb
	push    {r3,lr}
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x14] @ 0x21de34c, (=REG_BLDCNT_SUB)
	mov     r1, #0x1
	mov     r2, #0x3f
	mov     r3, #0xe
	blx     G2x_SetBlendAlpha_
	mov     r0, #0x4
	mov     r1, #0x1
	bl      Function_2019120
	pop     {r3,pc}
@ 0x21de34c

.word REG_BLDCNT_SUB @ 0x21de34c
.thumb
Function_21de350: @ 21de350 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r6, r0
	ldr     r0, [r6, #0x4]
	bl      Function_21d5eb8
	add     r4, r0, #0x3
	cmp     r4, #0x12
	blt     branch_21de364
	sub     r4, #0x12
.thumb
branch_21de364: @ 21de364 :thumb
	mov     r0, #0x0
	mov     r7, r6
	ldr     r5, [pc, #0x74] @ 0x21de3e0, (=0x21e0274)
	str     r0, [sp, #0x10]
	add     r7, #0x88
.thumb
branch_21de36e: @ 21de36e :thumb
	ldr     r0, [r6, #0x4]
	mov     r2, r6
	add     r2, #0x84
	ldr     r0, [r0, #0x0]
	ldr     r2, [r2, #0x0]
	mov     r1, r4
	bl      Function_2079af4
	mov     r0, #0x68
	str     r0, [sp, #0x0]
	mov     r0, #0x11
	str     r0, [sp, #0x4]
	ldrh    r2, [r5, #0x0]
	ldrh    r3, [r5, #0x2]
	mov     r0, r7
	mov     r1, #0x0
	bl      Function_201ae78
	mov     r0, #0x2
	ldsh    r0, [r5, r0]
	mov     r1, #0x0
	mov     r2, r6
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x40] @ 0x21de3e4, (=0x10200)
	mov     r3, r1
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldsh    r3, [r5, r3]
	add     r2, #0x84
	ldr     r2, [r2, #0x0]
	mov     r0, r7
	.hword  0x1d1b @ add r3, r3, #0x4
	bl      Function_201d78c
	.hword  0x1e64 @ sub r4, r4, #0x1
	bpl     branch_21de3c0
	mov     r4, #0x11
.thumb
branch_21de3c0: @ 21de3c0 :thumb
	ldr     r0, [sp, #0x10]
	.hword  0x1d2d @ add r5, r5, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x10]
	cmp     r0, #0x6
	bcc     branch_21de36e
	mov     r0, r6
	add     r0, #0x88
	bl      Function_201accc
	mov     r0, r6
	bl      Function_21de330
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21de3de


.align 2


.word 0x21e0274 @ 0x21de3e0
.word 0x10200 @ 0x21de3e4
.thumb
Function_21de3e8: @ 21de3e8 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r5, r1
	mov     r0, #0xa
	mov     r1, #0x3c
	mov     r6, r2
	str     r3, [sp, #0x0]
	bl      malloc
	mov     r4, r0
	beq     branch_21de43c
	str     r5, [r4, #0x4]
	ldr     r0, [sp, #0x0]
	str     r6, [r4, #0x8]
	str     r0, [r4, #0xc]
	ldr     r0, [sp, #0x18]
	str     r0, [r4, #0x10]
	mov     r0, r5
	bl      Function_21d77d8
	str     r0, [r4, #0x14]
	mov     r0, r5
	bl      Function_21d77f4
	str     r0, [r4, #0x18]
	mov     r0, #0x0
	str     r0, [r4, #0x34]
	mov     r0, r6
	bl      Function_21d5e08
	cmp     r0, #0x3
	bne     branch_21de42c
	mov     r0, #0x1
	b       branch_21de42e
@ 0x21de42c

.thumb
branch_21de42c: @ 21de42c :thumb
	mov     r0, #0x0
.thumb
branch_21de42e: @ 21de42e :thumb
	str     r0, [r4, #0x0]
	mov     r0, r4
	bl      Function_21de450
	str     r4, [r7, #0x0]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21de43c

.thumb
branch_21de43c: @ 21de43c :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21de440

.thumb
Function_21de440: @ 21de440 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21de51c
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x21de450

.thumb
Function_21de450: @ 21de450 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x58
	mov     r6, r0
	ldr     r0, [r6, #0x0]
	cmp     r0, #0x0
	beq     branch_21de500
	ldr     r4, [r6, #0x14]
	ldr     r0, [r6, #0x4]
	bl      Function_21d77d0
	mov     r2, r0
	ldr     r0, [r4, #0x20]
	add     r1, sp, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r3, [r4, #0x1c]
	add     r0, sp, #0x34
	bl      Function_21d783c
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_207ce78
	mov     r1, r0
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	mov     r2, #0x0
	add     r3, sp, #0xc
	bl      Function_2006f50
	str     r0, [sp, #0x8]
	cmp     r0, #0x0
	beq     branch_21de510
	mov     r0, #0x1
	lsl     r0, r0, #26
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x74] @ 0x21de514, (=0x300010)
	ldr     r4, [pc, #0x78] @ 0x21de518, (=0x21e04cc)
	and     r1, r0
	ldr     r0, [sp, #0xc]
	mov     r7, #0x0
	str     r1, [r0, #0x8]
	mov     r5, r6
.thumb
branch_21de4aa: @ 21de4aa :thumb
	add     r0, sp, #0x10
	blx     Function_20a818c
	ldr     r0, [sp, #0xc]
	ldr     r1, [r4, #0x0]
	mov     r2, #0x1
	add     r3, sp, #0x10
	blx     Function_20a8224_LoadTexOBJ
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r2, #0x0
	ldr     r0, [r6, #0x10]
	add     r1, sp, #0x34
	mov     r3, r2
	bl      Function_21d785c
	str     r0, [r5, #0x1c]
	ldr     r1, [r4, #0x4]
	bl      Function_2021e90
	ldr     r0, [r5, #0x1c]
	mov     r1, #0x0
	bl      Function_2021cac
	ldr     r0, [r5, #0x1c]
	mov     r1, #0x1
	bl      Function_2021cf8
	mov     r0, #0x0
	str     r0, [r5, #0x28]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r4, #0x8
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r7, #0x3
	blt     branch_21de4aa
	ldr     r0, [sp, #0x8]
	bl      free
	add     sp, #0x58
	pop     {r3-r7,pc}
@ 0x21de500

.thumb
branch_21de500: @ 21de500 :thumb
	mov     r1, #0x0
	mov     r0, r1
.thumb
branch_21de504: @ 21de504 :thumb
	str     r0, [r6, #0x1c]
	str     r0, [r6, #0x28]
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r1, #0x3
	blt     branch_21de504
.thumb
branch_21de510: @ 21de510 :thumb
	add     sp, #0x58
	pop     {r3-r7,pc}
@ 0x21de514

.word 0x300010 @ 0x21de514
.word 0x21e04cc @ 0x21de518
.thumb
Function_21de51c: @ 21de51c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_21de522: @ 21de522 :thumb
	ldr     r0, [r5, #0x1c]
	cmp     r0, #0x0
	beq     branch_21de52c
	bl      Function_2021bd4
.thumb
branch_21de52c: @ 21de52c :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x3
	blt     branch_21de522
	pop     {r3-r5,pc}
@ 0x21de536


.align 2, 0


.thumb
Function_21de538: @ 21de538 :thumb
	push    {r3,r4}
	mov     r3, #0x0
	mov     r4, r0
.thumb
branch_21de53e: @ 21de53e :thumb
	ldr     r2, [r4, #0x28]
	cmp     r2, #0x0
	bne     branch_21de550
	lsl     r2, r3, #2
	add     r0, r0, r2
	str     r1, [r0, #0x28]
	mov     r0, r3
	pop     {r3,r4}
	bx      lr
@ 0x21de550

.thumb
branch_21de550: @ 21de550 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r3, #0x3
	blt     branch_21de53e
	mov     r0, #0x0
	mvn     r0, r0
	pop     {r3,r4}
	bx      lr
@ 0x21de560

.thumb
Function_21de560: @ 21de560 :thumb
	mov     r3, #0x0
.thumb
branch_21de562: @ 21de562 :thumb
	ldr     r2, [r0, #0x28]
	cmp     r1, r2
	bne     branch_21de56c
	mov     r0, r3
	bx      lr
@ 0x21de56c

.thumb
branch_21de56c: @ 21de56c :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	cmp     r3, #0x3
	blt     branch_21de562
	mov     r0, #0x0
	mvn     r0, r0
	bx      lr
@ 0x21de57a


.align 2, 0


.thumb
Function_21de57c: @ 21de57c :thumb
	lsl     r1, r1, #2
	add     r0, r0, r1
	str     r2, [r0, #0x28]
	bx      lr
@ 0x21de584

.thumb
Function_21de584: @ 21de584 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x0]
	cmp     r1, #0x0
	beq     branch_21de598
	bl      Function_21de59c
	mov     r0, r4
	bl      Function_21de5d4
.thumb
branch_21de598: @ 21de598 :thumb
	pop     {r4,pc}
@ 0x21de59a


.align 2, 0


.thumb
Function_21de59c: @ 21de59c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x8]
	bl      Function_21d5e74
	mov     r4, r0
	beq     branch_21de5d2
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_21de538
	mov     r6, r0
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	bl      Function_21de718
	add     r5, #0x1c
	lsl     r4, r6, #2
	ldr     r0, [r5, r4]
	mov     r1, #0x6
	bl      Function_2021d6c
	ldr     r0, [r5, r4]
	mov     r1, #0x1
	bl      Function_2021cac
.thumb
branch_21de5d2: @ 21de5d2 :thumb
	pop     {r4-r6,pc}
@ 0x21de5d4

.thumb
Function_21de5d4: @ 21de5d4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0
	ldr     r0, [r5, #0x8]
	bl      Function_21d5f7c
	mov     r7, r0
	beq     branch_21de688
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_21de538
	mov     r6, r0
	ldr     r0, [r5, #0x18]
	add     r1, sp, #0x10
	bl      Function_21d9b1c
	mov     r0, #0x2
	ldr     r1, [sp, #0x14]
	lsl     r0, r0, #14
	add     r0, r1, r0
	str     r0, [sp, #0x14]
	ldr     r0, [r5, #0x8]
	bl      Function_21d5e10
	cmp     r0, #0x1
	bne     branch_21de610
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	b       branch_21de614
@ 0x21de610

.thumb
branch_21de610: @ 21de610 :thumb
	mov     r0, #0x2
	str     r0, [sp, #0xc]
.thumb
branch_21de614: @ 21de614 :thumb
	lsl     r0, r7, #16
	lsr     r0, r0, #16
	mov     r1, #0x1
	lsl     r4, r6, #3
	bl      Function_207ce78
	mov     r2, #0x0
	ldr     r3, [pc, #0x68] @ 0x21de68c, (=0x21e04cc)
	str     r2, [sp, #0x0]
	mov     r1, r0
	str     r2, [sp, #0x4]
	mov     r0, #0xa
	str     r0, [sp, #0x8]
	ldr     r3, [r3, r4]
	mov     r0, #0x10
	bl      Function_2006ec0
	lsl     r0, r7, #16
	lsr     r0, r0, #16
	mov     r1, #0x2
	bl      Function_207ce78
	ldr     r3, [pc, #0x4c] @ 0x21de690, (=0x21e04d0)
	mov     r1, r0
	mov     r0, #0x20
	ldr     r3, [r3, r4]
	str     r0, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	mov     r0, #ItemIcon_Narc
	mov     r2, #0x1
	lsl     r3, r3, #5
	bl      Call_LoadFromNARC_RLCN
	ldr     r1, [sp, #0xc]
	add     r5, #0x1c
	lsl     r4, r6, #2
	lsl     r1, r1, #24
	ldr     r0, [r5, r4]
	lsr     r1, r1, #24
	bl      Function_2021e80
	ldr     r0, [r5, r4]
	mov     r1, #0x2
	bl      Function_21d78ac
	ldr     r0, [r5, r4]
	add     r1, sp, #0x10
	bl      Function_2021c50
	ldr     r0, [r5, r4]
	mov     r1, #0x0
	bl      Function_2021d6c
	ldr     r0, [r5, r4]
	mov     r1, #0x1
	bl      Function_2021cac
.thumb
branch_21de688: @ 21de688 :thumb
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x21de68c

.word 0x21e04cc @ 0x21de68c
.word 0x21e04d0 @ 0x21de690
.thumb
Function_21de694: @ 21de694 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r4, r1
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	ldr     r0, [r5, #0x8]
	mov     r6, r2
	bl      Function_21d5e10
	cmp     r0, #0x1
	ldr     r0, [r5, #0x4]
	bne     branch_21de6de
	bl      Function_21d77e8
	mov     r7, r0
	ldr     r0, [r5, #0x8]
	bl      Function_21d5e2c
	mov     r1, r0
	mov     r0, r7
	add     r2, sp, #0x4
	add     r3, sp, #0x0
	bl      Function_21dcd30
	ldr     r0, [sp, #0x4]
	add     r0, #0xa
	lsl     r0, r0, #12
	str     r0, [r4, #0x0]
	ldr     r0, [sp, #0x0]
	add     sp, #0x8
	add     r0, #0x8
	lsl     r0, r0, #12
	str     r0, [r4, #0x4]
	mov     r0, #0x1
	str     r0, [r6, #0x0]
	pop     {r3-r7,pc}
@ 0x21de6de

.thumb
branch_21de6de: @ 21de6de :thumb
	bl      Function_21d7820
	mov     r7, r0
	ldr     r0, [r5, #0x8]
	bl      Function_21d5e14
	mov     r1, #0x18
	add     r7, #0x70
	mul     r1, r0
	add     r0, r7, r1
	add     r0, #0xa
	str     r0, [r4, #0x0]
	ldr     r0, [r5, #0x8]
	bl      Function_21d5e1c
	mov     r1, #0x18
	mul     r1, r0
	add     r1, #0x30
	str     r1, [r4, #0x4]
	ldr     r0, [r4, #0x0]
	lsl     r0, r0, #12
	str     r0, [r4, #0x0]
	ldr     r0, [r4, #0x4]
	lsl     r0, r0, #12
	str     r0, [r4, #0x4]
	mov     r0, #0x2
	str     r0, [r6, #0x0]
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21de718

.thumb
Function_21de718: @ 21de718 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r4, r1
	mov     r5, r0
	mov     r7, r2
	cmp     r4, #0x0
	blt     branch_21de792
	add     r1, sp, #0x10
	add     r2, sp, #0xc
	bl      Function_21de694
	lsl     r0, r7, #16
	lsr     r0, r0, #16
	mov     r1, #0x1
	lsl     r6, r4, #3
	bl      Function_207ce78
	mov     r2, #0x0
	ldr     r3, [pc, #0x58] @ 0x21de798, (=0x21e04cc)
	str     r2, [sp, #0x0]
	mov     r1, r0
	str     r2, [sp, #0x4]
	mov     r0, #0xa
	str     r0, [sp, #0x8]
	ldr     r3, [r3, r6]
	mov     r0, #0x10
	bl      Function_2006ec0
	lsl     r0, r7, #16
	lsr     r0, r0, #16
	mov     r1, #0x2
	bl      Function_207ce78
	ldr     r3, [pc, #0x40] @ 0x21de79c, (=0x21e04d0)
	mov     r1, r0
	mov     r0, #0x20
	ldr     r3, [r3, r6]
	str     r0, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	mov     r0, #ItemIcon_Narc
	mov     r2, #0x1
	lsl     r3, r3, #5
	bl      Call_LoadFromNARC_RLCN
	ldr     r1, [sp, #0xc]
	add     r5, #0x1c
	lsl     r4, r4, #2
	lsl     r1, r1, #24
	ldr     r0, [r5, r4]
	lsr     r1, r1, #24
	bl      Function_2021e80
	ldr     r0, [r5, r4]
	mov     r1, #0x3
	bl      Function_21d78ac
	ldr     r0, [r5, r4]
	add     r1, sp, #0x10
	bl      Function_2021c50
.thumb
branch_21de792: @ 21de792 :thumb
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x21de796


.align 2


.word 0x21e04cc @ 0x21de798
.word 0x21e04d0 @ 0x21de79c
.thumb
Function_21de7a0: @ 21de7a0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r1, [r5, #0x0]
	cmp     r1, #0x0
	beq     branch_21de7fe
	mov     r1, #0x1
	bl      Function_21de560
	mov     r4, r0
	bmi     branch_21de7ca
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x2
	bl      Function_21de57c
	lsl     r0, r4, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x1c]
	mov     r1, #0x2
	bl      Function_2021d6c
.thumb
branch_21de7ca: @ 21de7ca :thumb
	ldr     r0, [r5, #0x8]
	bl      Function_21d5e74
	mov     r6, r0
	beq     branch_21de7fe
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_21de538
	mov     r4, r0
	bmi     branch_21de7fe
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_21de718
	add     r5, #0x1c
	lsl     r4, r4, #2
	ldr     r0, [r5, r4]
	mov     r1, #0x1
	bl      Function_2021d6c
	ldr     r0, [r5, r4]
	mov     r1, #0x1
	bl      Function_2021cac
.thumb
branch_21de7fe: @ 21de7fe :thumb
	pop     {r4-r6,pc}
@ 0x21de800

.thumb
Function_21de800: @ 21de800 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r1, [r5, #0x0]
	cmp     r1, #0x0
	bne     branch_21de80e
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21de80e

.thumb
branch_21de80e: @ 21de80e :thumb
	mov     r1, #0x1
	bl      Function_21de560
	cmp     r0, #0x0
	blt     branch_21de82a
	lsl     r0, r0, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x1c]
	bl      Function_2021fd0
	cmp     r0, #0x0
	beq     branch_21de82a
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21de82a

.thumb
branch_21de82a: @ 21de82a :thumb
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_21de560
	mov     r4, r0
	bmi     branch_21de852
	lsl     r0, r4, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x1c]
	bl      Function_2021fd0
	cmp     r0, #0x0
	beq     branch_21de848
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21de848

.thumb
branch_21de848: @ 21de848 :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_21de57c
.thumb
branch_21de852: @ 21de852 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21de856


.align 2, 0


.thumb
Function_21de858: @ 21de858 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r7, r1
	mov     r0, #0xa
	mov     r1, #0x34
	mov     r6, r2
	str     r3, [sp, #0x0]
	bl      malloc
	mov     r4, r0
	beq     branch_21de8da
	lsl     r0, r7, #2
	str     r5, [r4, #0x0]
	add     r0, r5, r0
	ldr     r0, [r0, #0x1c]
	str     r0, [r4, #0x4]
	bl      Function_2021d28
	mov     r3, r0
	mov     r2, r4
	ldmia   r3!, {r0,r1}
	add     r2, #0x8
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	mov     r2, r4
	ldmia   r6!, {r0,r1}
	add     r2, #0x14
	stmia   r2!, {r0,r1}
	ldr     r0, [r6, #0x0]
	ldr     r6, [sp, #0x18]
	str     r0, [r2, #0x0]
	ldr     r1, [r4, #0x14]
	ldr     r0, [r4, #0x8]
	sub     r0, r1, r0
	mov     r1, r6
	blx     _s32_div_f
	str     r0, [r4, #0x20]
	ldr     r1, [r4, #0x18]
	ldr     r0, [r4, #0xc]
	sub     r0, r1, r0
	mov     r1, r6
	blx     _s32_div_f
	str     r0, [r4, #0x24]
	ldr     r0, [sp, #0x18]
	mov     r2, #0x0
	str     r0, [r4, #0x2c]
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	str     r0, [r4, #0x28]
	ldr     r0, [pc, #0x18] @ 0x21de8dc, (=0x21de8e1)
	str     r2, [r4, #0x30]
	bl      Function_21d77c8
	cmp     r0, #0x0
	beq     branch_21de8d4
	ldr     r0, [r5, #0x34]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x34]
	pop     {r3-r7,pc}
@ 0x21de8d4

.thumb
branch_21de8d4: @ 21de8d4 :thumb
	mov     r0, r4
	bl      free
.thumb
branch_21de8da: @ 21de8da :thumb
	pop     {r3-r7,pc}
@ 0x21de8dc

.word 0x21de8e1 @ 0x21de8dc
.thumb
Function_21de8e0: @ 21de8e0 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x30]
	cmp     r0, #0x0
	beq     branch_21de8f2
	cmp     r0, #0x1
	beq     branch_21de928
	pop     {r3-r5,pc}
@ 0x21de8f2

.thumb
branch_21de8f2: @ 21de8f2 :thumb
	ldr     r0, [r4, #0x2c]
	cmp     r0, #0x0
	beq     branch_21de918
	ldr     r2, [r4, #0x8]
	ldr     r0, [r4, #0x20]
	add     r1, #0x8
	add     r0, r2, r0
	str     r0, [r4, #0x8]
	ldr     r2, [r4, #0xc]
	ldr     r0, [r4, #0x24]
	add     r0, r2, r0
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0x4]
	bl      Function_2021c50
	ldr     r0, [r4, #0x2c]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x2c]
	pop     {r3-r5,pc}
@ 0x21de918

.thumb
branch_21de918: @ 21de918 :thumb
	ldr     r0, [r4, #0x4]
	add     r1, #0x14
	bl      Function_2021c50
	ldr     r0, [r4, #0x30]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x30]
	pop     {r3-r5,pc}
@ 0x21de928

.thumb
branch_21de928: @ 21de928 :thumb
	ldr     r0, [r4, #0x4]
	bl      Function_2021fd0
	cmp     r0, #0x0
	bne     branch_21de952
	ldr     r0, [r4, #0x4]
	ldr     r1, [r4, #0x28]
	bl      Function_21d78ac
	ldr     r1, [r4, #0x0]
	ldr     r0, [r1, #0x34]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r1, #0x34]
	mov     r0, r5
	bl      Call_RemoveTaskFromTaskList
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	bl      Function_21d79b8
.thumb
branch_21de952: @ 21de952 :thumb
	pop     {r3-r5,pc}
@ 0x21de954

.thumb
Function_21de954: @ 21de954 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r1, [r5, #0x0]
	cmp     r1, #0x0
	beq     branch_21de9a2
	mov     r1, #0x1
	bl      Function_21de560
	mov     r4, r0
	bmi     branch_21de9a2
	ldr     r0, [r5, #0x18]
	add     r1, sp, #0x4
	bl      Function_21d9b1c
	mov     r0, #0x2
	ldr     r1, [sp, #0x8]
	lsl     r0, r0, #14
	add     r0, r1, r0
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x3
	bl      Function_21de57c
	lsl     r0, r4, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x1c]
	mov     r1, #0x3
	bl      Function_2021d6c
	mov     r0, #0xc
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, r4
	add     r2, sp, #0x4
	mov     r3, #0x2
	bl      Function_21de858
.thumb
branch_21de9a2: @ 21de9a2 :thumb
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x21de9a6


.align 2, 0


.thumb
Function_21de9a8: @ 21de9a8 :thumb
	ldr     r0, [r0, #0x34]
	cmp     r0, #0x0
	bne     branch_21de9b2
	mov     r0, #0x1
	bx      lr
@ 0x21de9b2

.thumb
branch_21de9b2: @ 21de9b2 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21de9b6


.align 2, 0


.thumb
Function_21de9b8: @ 21de9b8 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x0]
	cmp     r1, #0x0
	beq     branch_21de9e2
	mov     r1, #0x1
	bl      Function_21de560
	mov     r5, r0
	bmi     branch_21de9e2
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x2
	bl      Function_21de57c
	lsl     r0, r5, #2
	add     r0, r4, r0
	ldr     r0, [r0, #0x1c]
	mov     r1, #0x2
	bl      Function_2021d6c
.thumb
branch_21de9e2: @ 21de9e2 :thumb
	pop     {r3-r5,pc}
@ 0x21de9e4

.thumb
Function_21de9e4: @ 21de9e4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r1, [r5, #0x0]
	cmp     r1, #0x0
	beq     branch_21dea14
	mov     r1, #0x2
	bl      Function_21de560
	mov     r4, r0
	bmi     branch_21dea14
	lsl     r0, r4, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x1c]
	bl      Function_2021fd0
	cmp     r0, #0x0
	beq     branch_21dea0a
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21dea0a

.thumb
branch_21dea0a: @ 21dea0a :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_21de57c
.thumb
branch_21dea14: @ 21dea14 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21dea18

.thumb
Function_21dea18: @ 21dea18 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r1, [r5, #0x0]
	cmp     r1, #0x0
	beq     branch_21dea5e
	mov     r1, #0x3
	bl      Function_21de560
	mov     r4, r0
	bmi     branch_21dea5e
	mov     r0, r5
	add     r1, sp, #0x8
	add     r2, sp, #0x4
	bl      Function_21de694
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x1
	bl      Function_21de57c
	lsl     r0, r4, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x1c]
	mov     r1, #0x4
	bl      Function_2021d6c
	mov     r0, #0xc
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, r4
	add     r2, sp, #0x8
	mov     r3, #0x3
	bl      Function_21de858
.thumb
branch_21dea5e: @ 21dea5e :thumb
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x21dea62


.align 2, 0


.thumb
Function_21dea64: @ 21dea64 :thumb
	ldr     r0, [r0, #0x34]
	cmp     r0, #0x0
	bne     branch_21dea6e
	mov     r0, #0x1
	bx      lr
@ 0x21dea6e

.thumb
branch_21dea6e: @ 21dea6e :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21dea72


.align 2, 0


.thumb
Function_21dea74: @ 21dea74 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r1, [r5, #0x0]
	cmp     r1, #0x0
	beq     branch_21deb02
	mov     r1, #0x3
	bl      Function_21de560
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_21de560
	mov     r6, r0
	cmp     r4, #0x0
	blt     branch_21deb02
	cmp     r6, #0x0
	blt     branch_21deb02
	mov     r0, r5
	add     r1, sp, #0x8
	add     r2, sp, #0x4
	bl      Function_21de694
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x1
	bl      Function_21de57c
	lsl     r0, r4, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x1c]
	mov     r1, #0x4
	bl      Function_2021d6c
	mov     r0, #0xc
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, r4
	add     r2, sp, #0x8
	mov     r3, #0x3
	bl      Function_21de858
	ldr     r0, [r5, #0x18]
	add     r1, sp, #0x8
	bl      Function_21d9b1c
	mov     r0, #0x2
	ldr     r1, [sp, #0xc]
	lsl     r0, r0, #14
	add     r0, r1, r0
	str     r0, [sp, #0xc]
	mov     r0, r5
	mov     r1, r6
	mov     r2, #0x3
	bl      Function_21de57c
	lsl     r0, r6, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x1c]
	mov     r1, #0x3
	bl      Function_2021d6c
	mov     r0, #0xc
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, r6
	add     r2, sp, #0x8
	mov     r3, #0x2
	bl      Function_21de858
.thumb
branch_21deb02: @ 21deb02 :thumb
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x21deb06


.align 2, 0


.thumb
Function_21deb08: @ 21deb08 :thumb
	ldr     r0, [r0, #0x34]
	cmp     r0, #0x0
	bne     branch_21deb12
	mov     r0, #0x1
	bx      lr
@ 0x21deb12

.thumb
branch_21deb12: @ 21deb12 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21deb16


.align 2, 0


.thumb
Function_21deb18: @ 21deb18 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x0]
	cmp     r1, #0x0
	beq     branch_21deb5e
	mov     r1, #0x3
	bl      Function_21de560
	mov     r5, r0
	bmi     branch_21deb3c
	lsl     r0, r5, #2
	add     r0, r4, r0
	ldr     r0, [r0, #0x1c]
	mov     r1, #0x5
	bl      Function_2021d6c
	str     r5, [r4, #0x38]
	pop     {r3-r5,pc}
@ 0x21deb3c

.thumb
branch_21deb3c: @ 21deb3c :thumb
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21de560
	mov     r5, r0
	bmi     branch_21deb58
	lsl     r0, r5, #2
	add     r0, r4, r0
	ldr     r0, [r0, #0x1c]
	mov     r1, #0x2
	bl      Function_2021d6c
	str     r5, [r4, #0x38]
	pop     {r3-r5,pc}
@ 0x21deb58

.thumb
branch_21deb58: @ 21deb58 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	str     r0, [r4, #0x38]
.thumb
branch_21deb5e: @ 21deb5e :thumb
	pop     {r3-r5,pc}
@ 0x21deb60

.thumb
Function_21deb60: @ 21deb60 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_21deb96
	mov     r0, #0x0
	ldr     r1, [r4, #0x38]
	mvn     r0, r0
	cmp     r1, r0
	beq     branch_21deb96
	lsl     r0, r1, #2
	add     r0, r4, r0
	ldr     r0, [r0, #0x1c]
	bl      Function_2021fd0
	cmp     r0, #0x0
	beq     branch_21deb86
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21deb86

.thumb
branch_21deb86: @ 21deb86 :thumb
	ldr     r1, [r4, #0x38]
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_21de57c
	mov     r0, #0x0
	mvn     r0, r0
	str     r0, [r4, #0x38]
.thumb
branch_21deb96: @ 21deb96 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21deb9a


.align 2, 0


.thumb
Function_21deb9c: @ 21deb9c :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r4, r1
	ldr     r1, [r5, #0x0]
	cmp     r1, #0x0
	beq     branch_21debd6
	mov     r1, #0x3
	bl      Function_21de560
	mov     r6, r0
	bmi     branch_21debd6
	ldmia   r4!, {r0,r1}
	add     r3, sp, #0x0
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r4, #0x0]
	str     r0, [r3, #0x0]
	mov     r0, #0x2
	ldr     r1, [sp, #0x4]
	lsl     r0, r0, #14
	add     r0, r1, r0
	str     r0, [sp, #0x4]
	lsl     r0, r6, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x1c]
	mov     r1, r2
	bl      Function_2021c50
.thumb
branch_21debd6: @ 21debd6 :thumb
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x21debda


.align 2, 0


.thumb
Function_21debdc: @ 21debdc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	ldr     r1, [r5, #0x0]
	cmp     r1, #0x0
	beq     branch_21dec00
	mov     r1, #0x3
	bl      Function_21de560
	cmp     r0, #0x0
	blt     branch_21dec00
	lsl     r0, r0, #2
	add     r0, r5, r0
	lsl     r1, r4, #24
	ldr     r0, [r0, #0x1c]
	lsr     r1, r1, #24
	bl      Function_2021e80
.thumb
branch_21dec00: @ 21dec00 :thumb
	pop     {r3-r5,pc}
@ 0x21dec02


.align 2, 0


.thumb
Function_21dec04: @ 21dec04 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r7, r2
	mov     r5, r0
	mov     r0, r7
	mov     r6, r1
	str     r3, [sp, #0x4]
	bl      Function_21d5e08
	cmp     r0, #0x4
	beq     branch_21dec24
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21dec24

.thumb
branch_21dec24: @ 21dec24 :thumb
	mov     r1, #0xe1
	mov     r0, #0xa
	lsl     r1, r1, #2
	bl      malloc
	mov     r4, r0
	beq     branch_21deca4
	str     r6, [r4, #0x4]
	ldr     r0, [sp, #0x4]
	str     r7, [r4, #0x8]
	str     r0, [r4, #0xc]
	ldr     r0, [sp, #0x20]
	str     r0, [r4, #0x10]
	mov     r0, r6
	bl      Function_21d77d8
	str     r0, [r4, #0x14]
	mov     r0, #0xa
	mov     r3, #0xda
	str     r0, [sp, #0x0]
	lsl     r3, r3, #2
	ldr     r0, [sp, #0x28]
	mov     r1, #0x7
	mov     r2, #0x1
	add     r3, r4, r3
	bl      Function_20071d0
	mov     r3, #0x37
	lsl     r3, r3, #4
	str     r0, [r4, r3]
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	.hword  0x1f1b @ sub r3, r3, #0x4
	ldr     r0, [sp, #0x28]
	mov     r1, #0x8
	mov     r2, #0x1
	add     r3, r4, r3
	bl      Function_20071d0
	mov     r2, #0xdd
	lsl     r2, r2, #2
	str     r0, [r4, r2]
	ldr     r0, [sp, #0x24]
	mov     r1, #PlMsg_Narc
	str     r0, [r4, #0x6c]
	mov     r0, #0x1
	sub     r2, #0xed
	mov     r3, #0xa
	bl      LoadFromNARC_9
	str     r0, [r4, #0x70]
	mov     r0, #0x20
	mov     r1, #0xa
	bl      Function_2023790
	str     r0, [r4, #0x74]
	mov     r0, #0xe
	mov     r1, #0x0
	lsl     r0, r0, #6
	str     r1, [r4, r0]
	add     sp, #0x8
	str     r4, [r5, #0x0]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21deca4

.thumb
branch_21deca4: @ 21deca4 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21decaa


.align 2, 0


.thumb
Function_21decac: @ 21decac :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_21dece4
	mov     r0, #0x37
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      free
	mov     r0, #0xdd
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      free
	ldr     r0, [r4, #0x70]
	bl      Function_200b190
	mov     r0, r4
	bl      Function_21df7d0
	mov     r0, r4
	bl      Function_21df03c
	ldr     r0, [r4, #0x74]
	bl      Function_20237bc_FreeMsg
	mov     r0, r4
	bl      free
.thumb
branch_21dece4: @ 21dece4 :thumb
	pop     {r4,pc}
@ 0x21dece6


.align 2, 0


.thumb
Function_21dece8: @ 21dece8 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r4, r1
	cmp     r5, #0x0
	beq     branch_21dedd6
	bl      Function_21deefc
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0xa
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0xc]
	mov     r0, r4
	mov     r1, #0x84
	mov     r3, #0x5
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0xa
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0xc]
	mov     r0, r4
	mov     r1, #0x81
	mov     r3, #0x5
	bl      Function_200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0xa
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0xc]
	mov     r0, r4
	mov     r1, #0x82
	mov     r3, #0x6
	bl      Function_200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0xa
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0xc]
	mov     r0, r4
	mov     r1, #0x83
	mov     r3, #0x7
	bl      Function_200710c
	mov     r0, #0x80
	str     r0, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x85
	mov     r2, #0x4
	mov     r3, #0x0
	bl      Function_2007130
	bl      Function_2079fd0
	mov     r3, #0x80
	mov     r1, r0
	str     r3, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	mov     r0, #PlPokeIcon_Narc
	mov     r2, #0x5
	bl      Call_LoadFromNARC_RLCN
	mov     r0, #0x4
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0xa
	bl      Function_2019690
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x11
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0xc]
	mov     r1, #0x4
	mov     r3, r2
	bl      Function_2019cb8
	mov     r0, r5
	bl      Function_21def64
	mov     r0, r5
	bl      Function_21defc8
	ldr     r0, [r5, #0x8]
	bl      Function_21d5fa4
	mov     r1, #0xde
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r0, [r5, #0xc]
	mov     r1, #0x4
	bl      Function_2019448
	mov     r0, r5
	mov     r1, r4
	bl      Function_21df5d0
.thumb
branch_21dedd6: @ 21dedd6 :thumb
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x21dedda


.align 2, 0


.thumb
Function_21deddc: @ 21deddc :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	cmp     r5, #0x0
	beq     branch_21dee30
	ldr     r0, [r5, #0x8]
	bl      Function_21d5f9c
	mov     r4, r0
	cmp     r6, #0x0
	beq     branch_21dee10
	mov     r0, #0x1
	eor     r0, r4
	lsl     r0, r0, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x28]
	mov     r1, #0x2
	bl      Function_2021d6c
	lsl     r0, r4, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x28]
	mov     r1, #0x0
	bl      Function_2021d6c
	b       branch_21dee2a
@ 0x21dee10

.thumb
branch_21dee10: @ 21dee10 :thumb
	mov     r1, #0x1
	eor     r0, r1
	lsl     r0, r0, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x28]
	bl      Function_2021d6c
	lsl     r0, r4, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x28]
	mov     r1, #0x0
	bl      Function_2021d6c
.thumb
branch_21dee2a: @ 21dee2a :thumb
	mov     r0, r5
	bl      Function_21deefc
.thumb
branch_21dee30: @ 21dee30 :thumb
	pop     {r4-r6,pc}
@ 0x21dee32


.align 2, 0


.thumb
Function_21dee34: @ 21dee34 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_21df834
	cmp     r5, #0x0
	beq     branch_21dee80
	ldr     r0, [r5, #0x8]
	bl      Function_21d5f9c
	mov     r4, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_21df8c8
	ldr     r0, [r5, #0x8]
	bl      Function_21d5fa4
	cmp     r0, #0x0
	beq     branch_21dee64
	cmp     r0, #0x1
	beq     branch_21dee6e
	cmp     r0, #0x2
	beq     branch_21dee78
	pop     {r3-r5,pc}
@ 0x21dee64

.thumb
branch_21dee64: @ 21dee64 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_21df3ac
	pop     {r3-r5,pc}
@ 0x21dee6e

.thumb
branch_21dee6e: @ 21dee6e :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_21df178
	pop     {r3-r5,pc}
@ 0x21dee78

.thumb
branch_21dee78: @ 21dee78 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_21df4d0
.thumb
branch_21dee80: @ 21dee80 :thumb
	pop     {r3-r5,pc}
@ 0x21dee82


.align 2, 0


.thumb
Function_21dee84: @ 21dee84 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x21dee88

.thumb
Function_21dee88: @ 21dee88 :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_21deea6
	mov     r1, #0xdf
	mov     r2, #0x0
	lsl     r1, r1, #2
	str     r2, [r4, r1]
	.hword  0x1f09 @ sub r1, r1, #0x4
	ldr     r1, [r4, r1]
	bl      Function_21df0cc
	ldr     r0, [r4, #0xc]
	mov     r1, #0x4
	bl      Function_2019448
.thumb
branch_21deea6: @ 21deea6 :thumb
	pop     {r4,pc}
@ 0x21deea8

.thumb
Function_21deea8: @ 21deea8 :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_21deef8
	mov     r1, #0xdf
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	cmp     r1, #0x0
	beq     branch_21deec2
	cmp     r1, #0x1
	beq     branch_21deed2
	cmp     r1, #0x2
	beq     branch_21deef0
	b       branch_21deef4
@ 0x21deec2

.thumb
branch_21deec2: @ 21deec2 :thumb
	bl      Function_21def64
	mov     r0, #0xdf
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	b       branch_21deef4
@ 0x21deed2

.thumb
branch_21deed2: @ 21deed2 :thumb
	bl      Function_21df2e0
	mov     r0, r4
	bl      Function_21df064
	ldr     r0, [r4, #0xc]
	mov     r1, #0x4
	bl      Function_2019448
	mov     r0, #0xdf
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	b       branch_21deef4
@ 0x21deef0

.thumb
branch_21deef0: @ 21deef0 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21deef4

.thumb
branch_21deef4: @ 21deef4 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21deef8

.thumb
branch_21deef8: @ 21deef8 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21deefc

.thumb
Function_21deefc: @ 21deefc :thumb
	push    {r4,r5,lr}
	add     sp, #-0x1c
	mov     r5, r0
	ldr     r0, [r5, #0x8]
	bl      Function_21d5f9c
	cmp     r0, #0x0
	bne     branch_21def10
	mov     r0, #0xda
	b       branch_21def12
@ 0x21def10

.thumb
branch_21def10: @ 21def10 :thumb
	mov     r0, #0xdb
.thumb
branch_21def12: @ 21def12 :thumb
	lsl     r0, r0, #2
	ldr     r4, [r5, r0]
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x20
	mov     r0, r4
	mov     r2, #0x0
	str     r1, [sp, #0x4]
	add     r0, #0xc
	str     r0, [sp, #0x8]
	str     r2, [sp, #0xc]
	str     r2, [sp, #0x10]
	str     r1, [sp, #0x14]
	str     r1, [sp, #0x18]
	ldr     r0, [r5, #0xc]
	mov     r1, #0x2
	mov     r3, r2
	bl      Function_20198e8
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	add     r4, #0xc
	str     r4, [sp, #0x8]
	mov     r2, #0x1a
	str     r2, [sp, #0xc]
	mov     r3, #0x0
	str     r3, [sp, #0x10]
	str     r0, [sp, #0x14]
	str     r0, [sp, #0x18]
	ldr     r0, [r5, #0xc]
	mov     r1, #0x2
	bl      Function_20198e8
	ldr     r0, [r5, #0xc]
	mov     r1, #0x2
	bl      Function_2019448
	add     sp, #0x1c
	pop     {r4,r5,pc}
@ 0x21def64

.thumb
Function_21def64: @ 21def64 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x8]
	bl      Function_21d5fa4
	cmp     r0, #0x0
	beq     branch_21def7a
	cmp     r0, #0x1
	beq     branch_21def94
	cmp     r0, #0x2
	beq     branch_21defae
	pop     {r3,pc}
@ 0x21def7a

.thumb
branch_21def7a: @ 21def7a :thumb
	mov     r0, #0x5
	mov     r1, #0x1
	bl      Function_2019120
	mov     r0, #0x6
	mov     r1, #0x0
	bl      Function_2019120
	mov     r0, #0x7
	mov     r1, #0x0
	bl      Function_2019120
	pop     {r3,pc}
@ 0x21def94

.thumb
branch_21def94: @ 21def94 :thumb
	mov     r0, #0x6
	mov     r1, #0x1
	bl      Function_2019120
	mov     r0, #0x5
	mov     r1, #0x0
	bl      Function_2019120
	mov     r0, #0x7
	mov     r1, #0x0
	bl      Function_2019120
	pop     {r3,pc}
@ 0x21defae

.thumb
branch_21defae: @ 21defae :thumb
	mov     r0, #0x7
	mov     r1, #0x1
	bl      Function_2019120
	mov     r0, #0x5
	mov     r1, #0x0
	bl      Function_2019120
	mov     r0, #0x6
	mov     r1, #0x0
	bl      Function_2019120
	pop     {r3,pc}
@ 0x21defc8

.thumb
Function_21defc8: @ 21defc8 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r1, #0x0
	mov     r2, r7
	mov     r5, r1
.thumb
branch_21defd2: @ 21defd2 :thumb
	mov     r0, r2
	add     r0, #0x84
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r2, #0x10
	str     r5, [r0, #0x0]
	cmp     r1, #0x7
	blt     branch_21defd2
	mov     r4, r7
	ldr     r6, [pc, #0x54] @ 0x21df038, (=0x21e0524)
	add     r4, #0x78
.thumb
branch_21defe6: @ 21defe6 :thumb
	ldr     r0, [r7, #0xc]
	mov     r1, r4
	mov     r2, r6
	bl      Function_201a8d4
	mov     r0, r4
	bl      Function_201a9f4
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r6, #0x8
	add     r4, #0x10
	cmp     r5, #0x3
	bcc     branch_21defe6
	mov     r0, r7
	bl      Function_21df2e0
	mov     r0, r7
	add     r0, #0x78
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	mov     r0, r7
	add     r0, #0x88
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	mov     r4, r7
	mov     r5, #0x0
	add     r4, #0x78
.thumb
branch_21df020: @ 21df020 :thumb
	mov     r0, r4
	bl      Function_201accc
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r4, #0x10
	cmp     r5, #0x3
	bcc     branch_21df020
	mov     r0, r7
	bl      Function_21df064
	pop     {r3-r7,pc}
@ 0x21df036


.align 2


.word 0x21e0524 @ 0x21df038
.thumb
Function_21df03c: @ 21df03c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r5
	mov     r6, #0x0
	add     r4, #0x78
.thumb
branch_21df046: @ 21df046 :thumb
	mov     r0, r5
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_21df056
	mov     r0, r4
	bl      Function_201a8fc
.thumb
branch_21df056: @ 21df056 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x10
	add     r4, #0x10
	cmp     r6, #0x7
	blt     branch_21df046
	pop     {r4-r6,pc}
@ 0x21df062


.align 2, 0


.thumb
Function_21df064: @ 21df064 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x8]
	bl      Function_21d5fa4
	mov     r4, r0
	ldr     r0, [r5, #0x8]
	bl      Function_21d5fa4
	cmp     r0, #0x0
	beq     branch_21df084
	cmp     r0, #0x1
	beq     branch_21df09c
	cmp     r0, #0x2
	beq     branch_21df0ae
	b       branch_21df0c4
@ 0x21df084

.thumb
branch_21df084: @ 21df084 :thumb
	mov     r0, r5
	bl      Function_21df108
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_21df3ac
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_21df3ac
	b       branch_21df0c4
@ 0x21df09c

.thumb
branch_21df09c: @ 21df09c :thumb
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_21df178
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_21df178
	b       branch_21df0c4
@ 0x21df0ae

.thumb
branch_21df0ae: @ 21df0ae :thumb
	mov     r0, r5
	bl      Function_21df270
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_21df4d0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_21df4d0
.thumb
branch_21df0c4: @ 21df0c4 :thumb
	mov     r0, #0xde
	lsl     r0, r0, #2
	str     r4, [r5, r0]
	pop     {r3-r5,pc}
@ 0x21df0cc

.thumb
Function_21df0cc: @ 21df0cc :thumb
	push    {r4,lr}
	mov     r4, r0
	cmp     r1, #0x0
	beq     branch_21df0de
	cmp     r1, #0x1
	beq     branch_21df0ea
	cmp     r1, #0x2
	beq     branch_21df0fa
	pop     {r4,pc}
@ 0x21df0de

.thumb
branch_21df0de: @ 21df0de :thumb
	bl      Function_21df140
	mov     r0, r4
	bl      Function_21df394
	pop     {r4,pc}
@ 0x21df0ea

.thumb
branch_21df0ea: @ 21df0ea :thumb
	mov     r1, #0x0
	bl      Function_21df250
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21df250
	pop     {r4,pc}
@ 0x21df0fa

.thumb
branch_21df0fa: @ 21df0fa :thumb
	bl      Function_21df2a8
	mov     r0, r4
	bl      Function_21df394
	pop     {r4,pc}
@ 0x21df106


.align 2, 0


.thumb
Function_21df108: @ 21df108 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r7, [pc, #0x2c] @ 0x21df13c, (=0x21e0514)
	str     r0, [sp, #0x0]
	mov     r6, #0x0
	add     r5, #0x78
.thumb
branch_21df114: @ 21df114 :thumb
	add     r0, r6, #0x3
	lsl     r4, r0, #4
	ldr     r0, [sp, #0x0]
	add     r1, r5, r4
	ldr     r0, [r0, #0xc]
	mov     r2, r7
	bl      Function_201a8d4
	add     r0, r5, r4
	bl      Function_201a9f4
	add     r0, r5, r4
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r7, #0x8
	cmp     r6, #0x2
	bcc     branch_21df114
	pop     {r3-r7,pc}
@ 0x21df13c

.word 0x21e0514 @ 0x21df13c
.thumb
Function_21df140: @ 21df140 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	add     r0, #0x78
	mov     r5, r0
	mov     r6, #0x3
	add     r4, #0x30
	add     r5, #0x30
	mov     r7, #0x0
.thumb
branch_21df150: @ 21df150 :thumb
	mov     r0, r4
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_21df16c
	mov     r0, r5
	bl      Function_201aa3c
	mov     r0, r5
	bl      Function_201a8fc
	mov     r0, r4
	add     r0, #0x84
	str     r7, [r0, #0x0]
.thumb
branch_21df16c: @ 21df16c :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x10
	add     r5, #0x10
	cmp     r6, #0x4
	ble     branch_21df150
	pop     {r3-r7,pc}
@ 0x21df178

.thumb
Function_21df178: @ 21df178 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r7, r0
	ldr     r0, [r7, #0x8]
	str     r1, [sp, #0x0]
	bl      Function_21d5fac
	mov     r4, r0
	ldr     r0, [r7, #0x8]
	bl      Function_21d5e34
	mov     r6, r0
	ldr     r0, [r7, #0x8]
	bl      Function_21d5f9c
	ldr     r1, [sp, #0x0]
	cmp     r1, r0
	bne     branch_21df1a0
	mov     r5, #0x1
	b       branch_21df1a2
@ 0x21df1a0

.thumb
branch_21df1a0: @ 21df1a0 :thumb
	mov     r5, #0x0
.thumb
branch_21df1a2: @ 21df1a2 :thumb
	ldr     r0, [r7, #0x8]
	ldr     r1, [sp, #0x0]
	bl      Function_21d5fb8
	cmp     r6, #0x1
	bne     branch_21df1b2
	cmp     r5, #0x1
	beq     branch_21df1ba
.thumb
branch_21df1b2: @ 21df1b2 :thumb
	cmp     r5, #0x0
	bne     branch_21df23e
	cmp     r0, #0x1
	bne     branch_21df23e
.thumb
branch_21df1ba: @ 21df1ba :thumb
	ldrb    r0, [r4, #0x6]
	cmp     r0, #0x0
	bne     branch_21df23e
	ldr     r1, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x10]
	mov     r0, #0x14
	mov     r2, r1
	mul     r2, r0
	add     r5, r7, r2
	mov     r2, #0x1
	eor     r1, r2
	mul     r0, r1
	ldr     r6, [pc, #0x74] @ 0x21df24c, (=0x21e053c)
	add     r4, #0x16
	add     r7, r7, r0
.thumb
branch_21df1dc: @ 21df1dc :thumb
	ldr     r3, [r6, #0x0]
	ldr     r0, [r6, #0x8]
	ldrh    r2, [r4, #0x0]
	sub     r1, r0, r3
	asr     r0, r1, #7
	lsr     r0, r0, #24
	add     r0, r1, r0
	asr     r0, r0, #8
	mul     r0, r2
	add     r0, r3, r0
	str     r0, [sp, #0x8]
	ldr     r3, [r6, #0x4]
	ldr     r0, [r6, #0xc]
	ldrh    r2, [r4, #0x0]
	sub     r1, r0, r3
	asr     r0, r1, #7
	lsr     r0, r0, #24
	add     r0, r1, r0
	asr     r0, r0, #8
	mul     r0, r2
	add     r0, r3, r0
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x34]
	add     r1, sp, #0x8
	bl      Function_2021c50
	ldr     r0, [r5, #0x34]
	mov     r1, #0x0
	bl      Function_21d78ac
	ldr     r0, [r7, #0x34]
	mov     r1, #0x1
	bl      Function_21d78ac
	ldr     r0, [r5, #0x34]
	mov     r1, #0x1
	bl      Function_2021cac
	ldr     r0, [sp, #0x4]
	.hword  0x1ca4 @ add r4, r4, #0x2
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r6, #0x10
	.hword  0x1d2d @ add r5, r5, #0x4
	.hword  0x1d3f @ add r7, r7, #0x4
	str     r0, [sp, #0x4]
	cmp     r0, #0x5
	blt     branch_21df1dc
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21df23e

.thumb
branch_21df23e: @ 21df23e :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, r7
	bl      Function_21df250
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21df24a


.align 2


.word 0x21e053c @ 0x21df24c
.thumb
Function_21df250: @ 21df250 :thumb
	push    {r4-r6,lr}
	mov     r2, #0x14
	mov     r4, #0x0
	mul     r2, r1
	add     r5, r0, r2
	mov     r6, r4
.thumb
branch_21df25c: @ 21df25c :thumb
	ldr     r0, [r5, #0x34]
	mov     r1, r6
	bl      Function_2021cac
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x5
	blt     branch_21df25c
	pop     {r4-r6,pc}
@ 0x21df26e


.align 2, 0


.thumb
Function_21df270: @ 21df270 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r7, [pc, #0x2c] @ 0x21df2a4, (=0x21e0504)
	str     r0, [sp, #0x0]
	mov     r6, #0x0
	add     r5, #0x78
.thumb
branch_21df27c: @ 21df27c :thumb
	add     r0, r6, #0x5
	lsl     r4, r0, #4
	ldr     r0, [sp, #0x0]
	add     r1, r5, r4
	ldr     r0, [r0, #0xc]
	mov     r2, r7
	bl      Function_201a8d4
	add     r0, r5, r4
	bl      Function_201a9f4
	add     r0, r5, r4
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r7, #0x8
	cmp     r6, #0x2
	bcc     branch_21df27c
	pop     {r3-r7,pc}
@ 0x21df2a4

.word 0x21e0504 @ 0x21df2a4
.thumb
Function_21df2a8: @ 21df2a8 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	add     r0, #0x78
	mov     r5, r0
	mov     r6, #0x5
	add     r4, #0x50
	add     r5, #0x50
	mov     r7, #0x0
.thumb
branch_21df2b8: @ 21df2b8 :thumb
	mov     r0, r4
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_21df2d4
	mov     r0, r5
	bl      Function_201aa3c
	mov     r0, r5
	bl      Function_201a8fc
	mov     r0, r4
	add     r0, #0x84
	str     r7, [r0, #0x0]
.thumb
branch_21df2d4: @ 21df2d4 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x10
	add     r5, #0x10
	cmp     r6, #0x6
	ble     branch_21df2b8
	pop     {r3-r7,pc}
@ 0x21df2e0

.thumb
Function_21df2e0: @ 21df2e0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r7, r5
	add     r7, #0x98
	mov     r0, r7
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [r5, #0x8]
	bl      Function_21d5fa4
	cmp     r0, #0x0
	beq     branch_21df302
	cmp     r0, #0x2
	beq     branch_21df34e
	b       branch_21df380
@ 0x21df302

.thumb
branch_21df302: @ 21df302 :thumb
	mov     r0, #0x0
	ldr     r6, [pc, #0x84] @ 0x21df38c, (=0x21e04f4)
	str     r0, [sp, #0x10]
	mov     r4, r0
.thumb
branch_21df30a: @ 21df30a :thumb
	ldrh    r1, [r6, #0x0]
	ldr     r0, [r5, #0x6c]
	ldr     r2, [r5, #0x74]
	bl      Function_200b1b8_CallMsgDecrypt
	mov     r0, #0x0
	ldr     r1, [r5, #0x74]
	mov     r2, r0
	bl      Function_2002d7c
	ldrb    r1, [r7, #0x7]
	lsl     r1, r1, #3
	sub     r0, r1, r0
	lsr     r3, r0, #1
	str     r4, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x60] @ 0x21df390, (=0xf0e00)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x74]
	mov     r0, r7
	bl      Function_201d78c
	ldr     r0, [sp, #0x10]
	.hword  0x1cb6 @ add r6, r6, #0x2
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r4, #0x10
	str     r0, [sp, #0x10]
	cmp     r0, #0x8
	bcc     branch_21df30a
	b       branch_21df380
@ 0x21df34e

.thumb
branch_21df34e: @ 21df34e :thumb
	ldr     r0, [r5, #0x6c]
	ldr     r2, [r5, #0x74]
	mov     r1, #0x2b
	bl      Function_200b1b8_CallMsgDecrypt
	mov     r0, #0x0
	ldr     r1, [r5, #0x74]
	mov     r2, r0
	bl      Function_2002d7c
	ldrb    r1, [r7, #0x7]
	lsl     r1, r1, #3
	sub     r0, r1, r0
	mov     r1, #0x0
	lsr     r3, r0, #1
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1c] @ 0x21df390, (=0xf0e00)
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r2, [r5, #0x74]
	mov     r0, r7
	bl      Function_201d78c
.thumb
branch_21df380: @ 21df380 :thumb
	mov     r0, r7
	bl      Function_201accc
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21df38a


.align 2


.word 0x21e04f4 @ 0x21df38c
.word 0xf0e00 @ 0x21df390
.thumb
Function_21df394: @ 21df394 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r4, #0x98
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	mov     r0, r4
	bl      Function_201accc
	pop     {r4,pc}
@ 0x21df3aa


.align 2, 0


.thumb
Function_21df3ac: @ 21df3ac :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0
	mov     r0, r1
	mov     r2, r5
	.hword  0x1cc0 @ add r0, r0, #0x3
	add     r2, #0x78
	lsl     r0, r0, #4
	add     r4, r2, r0
	ldr     r0, [r5, #0x8]
	str     r1, [sp, #0x10]
	bl      Function_21d5fac
	mov     r6, r0
	ldr     r0, [r5, #0x8]
	bl      Function_21d5e34
	str     r0, [sp, #0x18]
	ldr     r0, [r5, #0x8]
	bl      Function_21d5f9c
	ldr     r1, [sp, #0x10]
	cmp     r1, r0
	bne     branch_21df3e0
	mov     r7, #0x1
	b       branch_21df3e2
@ 0x21df3e0

.thumb
branch_21df3e0: @ 21df3e0 :thumb
	mov     r7, #0x0
.thumb
branch_21df3e2: @ 21df3e2 :thumb
	ldr     r0, [r5, #0x8]
	ldr     r1, [sp, #0x10]
	bl      Function_21d5fb8
	str     r0, [sp, #0x14]
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [sp, #0x18]
	cmp     r0, #0x1
	bne     branch_21df3fe
	cmp     r7, #0x1
	beq     branch_21df408
.thumb
branch_21df3fe: @ 21df3fe :thumb
	cmp     r7, #0x0
	bne     branch_21df4c2
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x1
	bne     branch_21df4c2
.thumb
branch_21df408: @ 21df408 :thumb
	ldrb    r0, [r6, #0x6]
	cmp     r0, #0x0
	bne     branch_21df482
	mov     r0, #0x0
	ldr     r1, [r6, #0x2c]
	mov     r2, r0
	bl      Function_2002d7c
	ldrb    r1, [r4, #0x7]
	lsl     r1, r1, #3
	sub     r0, r1, r0
	mov     r1, #0x0
	lsr     r3, r0, #1
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xa0] @ 0x21df4cc, (=0xf0e00)
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r2, [r6, #0x2c]
	mov     r0, r4
	bl      Function_201d78c
	mov     r7, #0x0
	add     r6, #0x8
.thumb
branch_21df43a: @ 21df43a :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldrh    r1, [r6, #0x0]
	ldr     r0, [r5, #0x74]
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_20238a0
	mov     r0, #0x0
	ldr     r1, [r5, #0x74]
	mov     r2, r0
	bl      Function_2002d7c
	ldrb    r1, [r4, #0x7]
	lsl     r1, r1, #3
	sub     r0, r1, r0
	lsr     r3, r0, #1
	add     r0, r7, #0x1
	lsl     r0, r0, #4
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x64] @ 0x21df4cc, (=0xf0e00)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x74]
	mov     r0, r4
	bl      Function_201d78c
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1cb6 @ add r6, r6, #0x2
	cmp     r7, #0x7
	blt     branch_21df43a
	b       branch_21df4c2
@ 0x21df482

.thumb
branch_21df482: @ 21df482 :thumb
	ldr     r0, [r5, #0x6c]
	ldr     r2, [r5, #0x74]
	mov     r1, #0x2c
	bl      Function_200b1b8_CallMsgDecrypt
	mov     r7, #0x0
	mov     r6, r7
.thumb
branch_21df490: @ 21df490 :thumb
	mov     r0, #0x0
	ldr     r1, [r5, #0x74]
	mov     r2, r0
	bl      Function_2002d7c
	ldrb    r1, [r4, #0x7]
	lsl     r1, r1, #3
	sub     r0, r1, r0
	lsr     r3, r0, #1
	str     r6, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x20] @ 0x21df4cc, (=0xf0e00)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x74]
	mov     r0, r4
	bl      Function_201d78c
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r6, #0x10
	cmp     r7, #0x8
	blt     branch_21df490
.thumb
branch_21df4c2: @ 21df4c2 :thumb
	mov     r0, r4
	bl      Function_201accc
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x21df4cc

.word 0xf0e00 @ 0x21df4cc
.thumb
Function_21df4d0: @ 21df4d0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r5, r0
	mov     r0, r1
	mov     r2, r5
	.hword  0x1d40 @ add r0, r0, #0x5
	add     r2, #0x78
	lsl     r0, r0, #4
	add     r4, r2, r0
	ldr     r0, [r5, #0x8]
	str     r1, [sp, #0x10]
	bl      Function_21d5fac
	mov     r6, r0
	ldr     r0, [r5, #0x8]
	bl      Function_21d5e34
	str     r0, [sp, #0x1c]
	ldr     r0, [r5, #0x8]
	bl      Function_21d5f9c
	ldr     r1, [sp, #0x10]
	cmp     r1, r0
	bne     branch_21df504
	mov     r7, #0x1
	b       branch_21df506
@ 0x21df504

.thumb
branch_21df504: @ 21df504 :thumb
	mov     r7, #0x0
.thumb
branch_21df506: @ 21df506 :thumb
	ldr     r0, [r5, #0x8]
	ldr     r1, [sp, #0x10]
	bl      Function_21d5fb8
	str     r0, [sp, #0x18]
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [sp, #0x1c]
	cmp     r0, #0x1
	bne     branch_21df522
	cmp     r7, #0x1
	beq     branch_21df52c
.thumb
branch_21df522: @ 21df522 :thumb
	cmp     r7, #0x0
	bne     branch_21df5c0
	ldr     r0, [sp, #0x18]
	cmp     r0, #0x1
	bne     branch_21df5c0
.thumb
branch_21df52c: @ 21df52c :thumb
	ldrb    r0, [r6, #0x6]
	cmp     r0, #0x0
	bne     branch_21df580
	mov     r0, #0x0
	str     r0, [sp, #0x14]
	mov     r7, #0x4
.thumb
branch_21df538: @ 21df538 :thumb
	ldrh    r1, [r6, #0x20]
	cmp     r1, #0x0
	beq     branch_21df570
	ldr     r0, [r5, #0x70]
	ldr     r2, [r5, #0x74]
	bl      Function_200b1b8_CallMsgDecrypt
	mov     r0, #0x0
	ldr     r1, [r5, #0x74]
	mov     r2, r0
	bl      Function_2002d7c
	ldrb    r1, [r4, #0x7]
	lsl     r1, r1, #3
	sub     r0, r1, r0
	lsr     r3, r0, #1
	str     r7, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x6c] @ 0x21df5cc, (=0xf0e00)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x74]
	mov     r0, r4
	bl      Function_201d78c
.thumb
branch_21df570: @ 21df570 :thumb
	ldr     r0, [sp, #0x14]
	.hword  0x1cb6 @ add r6, r6, #0x2
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r7, #0x18
	str     r0, [sp, #0x14]
	cmp     r0, #0x4
	blt     branch_21df538
	b       branch_21df5c0
@ 0x21df580

.thumb
branch_21df580: @ 21df580 :thumb
	ldr     r0, [r5, #0x6c]
	ldr     r2, [r5, #0x74]
	mov     r1, #0x2c
	bl      Function_200b1b8_CallMsgDecrypt
	mov     r7, #0x0
	mov     r6, #0x4
.thumb
branch_21df58e: @ 21df58e :thumb
	mov     r0, #0x0
	ldr     r1, [r5, #0x74]
	mov     r2, r0
	bl      Function_2002d7c
	ldrb    r1, [r4, #0x7]
	lsl     r1, r1, #3
	sub     r0, r1, r0
	lsr     r3, r0, #1
	str     r6, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x24] @ 0x21df5cc, (=0xf0e00)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x74]
	mov     r0, r4
	bl      Function_201d78c
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r6, #0x18
	cmp     r7, #0x4
	blt     branch_21df58e
.thumb
branch_21df5c0: @ 21df5c0 :thumb
	mov     r0, r4
	bl      Function_201accc
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x21df5ca


.align 2


.word 0xf0e00 @ 0x21df5cc
.thumb
Function_21df5d0: @ 21df5d0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x6c
	mov     r7, r0
	mov     r4, r1
	mov     r0, #0xa
	mov     r3, r7
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x87
	mov     r2, #0x1
	add     r3, #0x60
	bl      Function_2007204
	str     r0, [r7, #0x5c]
	mov     r0, #0xa
	mov     r3, r7
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x88
	mov     r2, #0x1
	add     r3, #0x68
	bl      Function_2007220
	str     r0, [r7, #0x64]
	mov     r0, #0x60
	str     r0, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x89
	mov     r2, #0x5
	mov     r3, #0x0
	bl      Function_2007130
	add     r0, sp, #0x48
	blx     Function_20a818c
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, #0xa
	str     r0, [sp, #0xc]
	add     r0, sp, #0x48
	str     r0, [sp, #0x10]
	mov     r0, r4
	mov     r1, #0x86
	mov     r2, #0x1
	bl      Function_200718c
	str     r0, [sp, #0x20]
	ldr     r0, [r7, #0x4]
	bl      Function_21d77d0
	mov     r2, r0
	ldr     r0, [r7, #0x68]
	add     r1, sp, #0x48
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r3, [r7, #0x60]
	add     r0, sp, #0x24
	bl      Function_21d783c
	ldr     r0, [pc, #0xd4] @ 0x21df728, (=0x21e04e4)
	mov     r4, #0x0
	str     r0, [sp, #0x1c]
	str     r7, [sp, #0x18]
	str     r7, [sp, #0x14]
.thumb
branch_21df65c: @ 21df65c :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r2, [sp, #0x1c]
	mov     r3, #0x0
	ldsh    r2, [r2, r3]
	ldr     r3, [sp, #0x1c]
	mov     r5, #0x2
	ldsh    r3, [r3, r5]
	ldr     r0, [r7, #0x10]
	add     r1, sp, #0x24
	bl      Function_21d785c
	ldr     r1, [sp, #0x18]
	str     r0, [r1, #0x28]
	mov     r1, r4
	bl      Function_2021e90
	ldr     r0, [sp, #0x18]
	mov     r1, #0x0
	ldr     r0, [r0, #0x28]
	bl      Function_2021d6c
	ldr     r5, [sp, #0x14]
	mov     r6, #0x0
.thumb
branch_21df690: @ 21df690 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r2, #0x0
	ldr     r0, [r7, #0x10]
	add     r1, sp, #0x24
	mov     r3, r2
	bl      Function_21d785c
	str     r0, [r5, #0x34]
	add     r1, r4, #0x5
	bl      Function_2021d6c
	ldr     r0, [r5, #0x34]
	mov     r1, r4
	bl      Function_2021e90
	ldr     r0, [r5, #0x34]
	mov     r1, #0x0
	bl      Function_2021cac
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x5
	bcc     branch_21df690
	ldr     r0, [sp, #0x1c]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x14]
	add     r0, #0x14
	str     r0, [sp, #0x14]
	cmp     r4, #0x2
	bcc     branch_21df65c
	ldr     r0, [r7, #0x2c]
	mov     r1, #0x1
	bl      Function_2021d0c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r3, #0x23
	ldr     r0, [r7, #0x10]
	add     r1, sp, #0x24
	mov     r2, #0x80
	lsl     r3, r3, #4
	bl      Function_21d785c
	str     r0, [r7, #0x30]
	mov     r1, #0x3
	bl      Function_2021d6c
	ldr     r0, [r7, #0x30]
	mov     r1, #0x2
	bl      Function_2021e90
	ldr     r0, [pc, #0x20] @ 0x21df72c, (=0x21df931)
	mov     r1, r7
	mov     r2, #0x1
	bl      AddTaskToTaskList1
	mov     r1, #0xe
	lsl     r1, r1, #6
	str     r0, [r7, r1]
	ldr     r1, [sp, #0x20]
	mov     r0, r7
	bl      Function_21df730
	add     sp, #0x6c
	pop     {r4-r7,pc}
@ 0x21df726


.align 2


.word 0x21e04e4 @ 0x21df728
.word 0x21df931 @ 0x21df72c
.thumb
Function_21df730: @ 21df730 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x58
	str     r0, [sp, #0x8]
	ldr     r0, [r0, #0x4]
	str     r1, [sp, #0xc]
	bl      Function_21d77d0
	mov     r5, r0
	ldr     r0, [sp, #0x8]
	ldr     r0, [r0, #0x14]
	bl      Function_21da80c
	mov     r4, r0
	ldr     r0, [sp, #0x8]
	ldr     r0, [r0, #0x14]
	bl      Function_21da810
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	add     r0, sp, #0x10
	add     r1, sp, #0x34
	mov     r2, r5
	mov     r3, r4
	bl      Function_21d783c
	mov     r7, #0x0
	ldr     r4, [sp, #0x8]
	ldr     r5, [pc, #0x58] @ 0x21df7c4, (=0x21e04ec)
	mov     r6, r7
.thumb
branch_21df76c: @ 21df76c :thumb
	ldr     r0, [sp, #0xc]
	add     r0, r0, r6
	str     r0, [r4, #0x18]
	add     r0, sp, #0x34
	blx     Function_20a818c
	ldr     r2, [r4, #0x18]
	add     r0, sp, #0x34
	mov     r1, #0x2
	blx     Function_20a81a8
	ldr     r0, [pc, #0x44] @ 0x21df7c8, (=0x4001000)
	mov     r2, #0x0
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x40] @ 0x21df7cc, (=0x300010)
	mov     r3, #0x2
	and     r0, r1
	str     r0, [sp, #0x54]
	mov     r0, #0x1
	sub     r0, r0, r7
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x8]
	ldsh    r2, [r5, r2]
	ldsh    r3, [r5, r3]
	ldr     r0, [r0, #0x10]
	add     r1, sp, #0x10
	bl      Function_21d785c
	mov     r1, #0x0
	str     r0, [r4, #0x20]
	bl      Function_2021cac
	mov     r0, #0x2
	lsl     r0, r0, #8
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r6, r6, r0
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r7, #0x2
	blt     branch_21df76c
	add     sp, #0x58
	pop     {r3-r7,pc}
@ 0x21df7c4

.word 0x21e04ec @ 0x21df7c4
.word 0x4001000 @ 0x21df7c8
.word 0x300010 @ 0x21df7cc
.thumb
Function_21df7d0: @ 21df7d0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r1, #0xe
	lsl     r1, r1, #6
	str     r0, [sp, #0x0]
	ldr     r0, [r0, r1]
	cmp     r0, #0x0
	beq     branch_21df7e4
	bl      Call_RemoveTaskFromTaskList
.thumb
branch_21df7e4: @ 21df7e4 :thumb
	ldr     r6, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r7, r6
.thumb
branch_21df7ec: @ 21df7ec :thumb
	ldr     r0, [r6, #0x20]
	bl      Function_2021bd4
	ldr     r0, [r6, #0x28]
	bl      Function_2021bd4
	mov     r4, #0x0
	mov     r5, r7
.thumb
branch_21df7fc: @ 21df7fc :thumb
	ldr     r0, [r5, #0x34]
	bl      Function_2021bd4
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x5
	blt     branch_21df7fc
	ldr     r0, [sp, #0x4]
	.hword  0x1d36 @ add r6, r6, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r7, #0x14
	str     r0, [sp, #0x4]
	cmp     r0, #0x2
	blt     branch_21df7ec
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x30]
	bl      Function_2021bd4
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x5c]
	bl      free
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x64]
	bl      free
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21df834

.thumb
Function_21df834: @ 21df834 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r0, [r5, #0x8]
	bl      Function_21d5f9c
	mov     r4, r0
	ldr     r0, [r5, #0x8]
	mov     r1, r4
	bl      Function_21d5fac
	lsl     r7, r4, #2
	mov     r6, r0
	add     r0, r5, r7
	ldr     r4, [r0, #0x20]
	ldr     r0, [r6, #0x0]
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x8]
	bl      Function_21d5e34
	cmp     r0, #0x0
	beq     branch_21df8bc
	ldrh    r0, [r6, #0x4]
	ldrb    r1, [r6, #0x7]
	ldrb    r2, [r6, #0x6]
	bl      GetPokeIconPaletteNr
	mov     r6, r0
	ldr     r0, [sp, #0x0]
	bl      Function_2079d40_GetPokeIconGraphicNr
	mov     r2, r0
	mov     r1, r5
	mov     r3, #0xa
	ldr     r0, [r5, #0x14]
	add     r1, #0xe8
	lsl     r3, r3, #6
	bl      Function_21da744
	mov     r0, r5
	add     r0, #0xe8
	add     r1, sp, #0x4
	blx     Function_20a7118
	ldr     r0, [sp, #0x4]
	mov     r1, #0x2
	ldr     r0, [r0, #0x14]
	lsl     r1, r1, #8
	blx     DC_FlushRange
	ldr     r0, [sp, #0x4]
	add     r1, r5, r7
	mov     r2, #0x2
	ldr     r0, [r0, #0x14]
	ldr     r1, [r1, #0x18]
	lsl     r2, r2, #8
	blx     GXS_LoadOBJ
	mov     r0, r4
	add     r1, r6, #0x4
	bl      Function_2021e90
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2021cac
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21df8bc

.thumb
branch_21df8bc: @ 21df8bc :thumb
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2021cac
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21df8c8

.thumb
Function_21df8c8: @ 21df8c8 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r0, [r5, #0x8]
	bl      Function_21d5f9c
	mov     r6, r0
	mov     r1, r5
	add     r1, #0x78
	lsl     r0, r6, #4
	add     r4, r1, r0
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [r5, #0x8]
	bl      Function_21d5e34
	cmp     r0, #0x0
	beq     branch_21df922
	ldr     r0, [r5, #0x8]
	mov     r1, r6
	bl      Function_21d5fac
	mov     r5, r0
	mov     r0, #0x0
	ldr     r1, [r5, #0x28]
	mov     r2, r0
	bl      Function_2002d7c
	ldrb    r1, [r4, #0x7]
	lsl     r1, r1, #3
	sub     r0, r1, r0
	mov     r1, #0x0
	lsr     r3, r0, #1
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x14] @ 0x21df92c, (=0xf0e00)
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r2, [r5, #0x28]
	mov     r0, r4
	bl      Function_201d78c
.thumb
branch_21df922: @ 21df922 :thumb
	mov     r0, r4
	bl      Function_201accc
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21df92c

.word 0xf0e00 @ 0x21df92c
.thumb
Function_21df930: @ 21df930 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r0, [r5, #0x8]
	bl      Function_21d5fc0
	mov     r4, r0
	ldr     r0, [r5, #0x30]
	bl      Function_2021e24
	cmp     r0, #0x3
	bne     branch_21df954
	cmp     r4, #0x0
	beq     branch_21df960
	ldr     r0, [r5, #0x30]
	mov     r1, #0x4
	bl      Function_2021d6c
	pop     {r3-r5,pc}
@ 0x21df954

.thumb
branch_21df954: @ 21df954 :thumb
	cmp     r4, #0x0
	bne     branch_21df960
	ldr     r0, [r5, #0x30]
	mov     r1, #0x3
	bl      Function_2021d6c
.thumb
branch_21df960: @ 21df960 :thumb
	pop     {r3-r5,pc}
@ 0x21df962


.align 2, 0


.thumb
Function_21df964: @ 21df964 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	add     r4, #0x74
	mov     r0, r4
	mov     r5, r1
	bl      Function_21dfcf8
	mov     r0, r4
	mov     r1, #0x36
	bl      Function_21dfd08
	mov     r0, r4
	mov     r1, #0x37
	bl      Function_21dfd08
	mov     r0, r4
	add     r0, #0x20
	strb    r5, [r0, #0x0]
	mov     r0, #0x0
	add     r4, #0x23
	strb    r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x21df990

.thumb
Function_21df990: @ 21df990 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r5
	add     r4, #0x74
	mov     r0, r4
	bl      Function_21dfcf8
	mov     r0, r4
	mov     r1, #0x1
	add     r0, #0x23
	strb    r1, [r0, #0x0]
	mov     r0, r5
	bl      Function_21d5e08
	cmp     r0, #0x4
	bhi     branch_21df9c6
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21df9bc

Jumppoints_21df9bc:
.hword branch_21dfa3c - Jumppoints_21df9bc - 2
.hword branch_21dfa66 - Jumppoints_21df9bc - 2
.hword branch_21df9c6 - Jumppoints_21df9bc - 2
.hword branch_21df9c6 - Jumppoints_21df9bc - 2
.hword branch_21dfa90 - Jumppoints_21df9bc - 2
.thumb
branch_21df9c6: @ 21df9c6 :thumb
	mov     r0, r5
	bl      Function_21d5e38
	cmp     r0, #0x2
	bne     branch_21df9e8
	mov     r0, r5
	bl      Function_21d5e34
	cmp     r0, #0x0
	beq     branch_21df9de
	mov     r1, #0x24
	b       branch_21df9e0
@ 0x21df9de

.thumb
branch_21df9de: @ 21df9de :thumb
	mov     r1, #0x23
.thumb
branch_21df9e0: @ 21df9e0 :thumb
	mov     r0, r4
	bl      Function_21dfd08
	b       branch_21df9f0
@ 0x21df9e8

.thumb
branch_21df9e8: @ 21df9e8 :thumb
	mov     r0, r4
	mov     r1, #0x22
	bl      Function_21dfd08
.thumb
branch_21df9f0: @ 21df9f0 :thumb
	mov     r0, r4
	mov     r1, #0x25
	bl      Function_21dfd08
	mov     r0, r5
	bl      Function_21d5e70
	ldrb    r0, [r0, #0xf]
	cmp     r0, #0x0
	bne     branch_21dfa0c
	mov     r0, r4
	mov     r1, #0x28
	bl      Function_21dfd08
.thumb
branch_21dfa0c: @ 21dfa0c :thumb
	mov     r0, r5
	bl      Function_21d5e10
	cmp     r0, #0x0
	bne     branch_21dfa1a
	mov     r1, #0x26
	b       branch_21dfa1c
@ 0x21dfa1a

.thumb
branch_21dfa1a: @ 21dfa1a :thumb
	mov     r1, #0x27
.thumb
branch_21dfa1c: @ 21dfa1c :thumb
	mov     r0, r4
	bl      Function_21dfd08
	mov     r0, r4
	mov     r1, #0x29
	bl      Function_21dfd08
	mov     r0, r4
	mov     r1, #0x2a
	bl      Function_21dfd08
	mov     r0, r4
	mov     r1, #0x2b
	bl      Function_21dfd08
	pop     {r3-r5,pc}
@ 0x21dfa3c

.thumb
branch_21dfa3c: @ 21dfa3c :thumb
	mov     r0, r4
	mov     r1, #0x27
	bl      Function_21dfd08
	mov     r0, r4
	mov     r1, #0x25
	bl      Function_21dfd08
	mov     r0, r4
	mov     r1, #0x29
	bl      Function_21dfd08
	mov     r0, r4
	mov     r1, #0x2a
	bl      Function_21dfd08
	mov     r0, r4
	mov     r1, #0x2b
	bl      Function_21dfd08
	pop     {r3-r5,pc}
@ 0x21dfa66

.thumb
branch_21dfa66: @ 21dfa66 :thumb
	mov     r0, r4
	mov     r1, #0x26
	bl      Function_21dfd08
	mov     r0, r4
	mov     r1, #0x25
	bl      Function_21dfd08
	mov     r0, r4
	mov     r1, #0x29
	bl      Function_21dfd08
	mov     r0, r4
	mov     r1, #0x2a
	bl      Function_21dfd08
	mov     r0, r4
	mov     r1, #0x2b
	bl      Function_21dfd08
	pop     {r3-r5,pc}
@ 0x21dfa90

.thumb
branch_21dfa90: @ 21dfa90 :thumb
	mov     r0, r5
	bl      Function_21d5f9c
	cmp     r0, #0x0
	bne     branch_21dfa9e
	mov     r1, #0x34
	b       branch_21dfaa0
@ 0x21dfa9e

.thumb
branch_21dfa9e: @ 21dfa9e :thumb
	mov     r1, #0x35
.thumb
branch_21dfaa0: @ 21dfaa0 :thumb
	mov     r0, r4
	bl      Function_21dfd08
	mov     r0, r5
	bl      Function_21d5e10
	cmp     r0, #0x0
	bne     branch_21dfab4
	mov     r1, #0x26
	b       branch_21dfab6
@ 0x21dfab4

.thumb
branch_21dfab4: @ 21dfab4 :thumb
	mov     r1, #0x27
.thumb
branch_21dfab6: @ 21dfab6 :thumb
	mov     r0, r4
	bl      Function_21dfd08
	mov     r0, r4
	mov     r1, #0x29
	bl      Function_21dfd08
	mov     r0, r4
	mov     r1, #0x2b
	bl      Function_21dfd08
	pop     {r3-r5,pc}
@ 0x21dface


.align 2, 0


.thumb
Function_21dfad0: @ 21dfad0 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	mov     r5, r4
	add     r5, #0x74
	bl      Function_21d5f7c
	mov     r6, r0
	mov     r0, r4
	bl      Function_21d5e74
	mov     r4, r0
	mov     r0, r5
	bl      Function_21dfcf8
	mov     r0, r5
	mov     r1, #0x1
	add     r0, #0x23
	strb    r1, [r0, #0x0]
	cmp     r6, #0x0
	beq     branch_21dfb20
	cmp     r4, #0x0
	beq     branch_21dfb06
	mov     r0, r5
	mov     r1, #0x31
	bl      Function_21dfd08
	b       branch_21dfb0e
@ 0x21dfb06

.thumb
branch_21dfb06: @ 21dfb06 :thumb
	mov     r0, r5
	mov     r1, #0x2e
	bl      Function_21dfd08
.thumb
branch_21dfb0e: @ 21dfb0e :thumb
	mov     r0, r5
	mov     r1, #0x32
	bl      Function_21dfd08
	mov     r0, r5
	mov     r1, #0x30
	bl      Function_21dfd08
	b       branch_21dfb46
@ 0x21dfb20

.thumb
branch_21dfb20: @ 21dfb20 :thumb
	cmp     r4, #0x0
	beq     branch_21dfb3e
	mov     r0, r5
	mov     r1, #0x2f
	bl      Function_21dfd08
	mov     r0, r5
	mov     r1, #0x32
	bl      Function_21dfd08
	mov     r0, r5
	mov     r1, #0x30
	bl      Function_21dfd08
	b       branch_21dfb46
@ 0x21dfb3e

.thumb
branch_21dfb3e: @ 21dfb3e :thumb
	mov     r0, r5
	mov     r1, #0x2e
	bl      Function_21dfd08
.thumb
branch_21dfb46: @ 21dfb46 :thumb
	mov     r0, r5
	mov     r1, #0x33
	bl      Function_21dfd08
	pop     {r4-r6,pc}
@ 0x21dfb50

.thumb
Function_21dfb50: @ 21dfb50 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r5
	add     r4, #0x74
	bl      Function_21d5e90
	mov     r0, r4
	bl      Function_21dfcf8
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21dfd08
	mov     r0, r5
	bl      Function_21d5e08
	cmp     r0, #0x4
	beq     branch_21dfb84
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21dfd08
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_21dfd08
.thumb
branch_21dfb84: @ 21dfb84 :thumb
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_21dfd08
	mov     r0, #0x2
	add     r4, #0x23
	strb    r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x21dfb94

.thumb
Function_21dfb94: @ 21dfb94 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	add     r4, #0x74
	mov     r5, r1
	bl      Function_21d5e90
	mov     r6, r0
	mov     r0, r4
	bl      Function_21dfcf8
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_21dfd08
	mov     r0, r4
	mov     r1, #0x5
	bl      Function_21dfd08
	mov     r0, r4
	mov     r1, #0x6
	bl      Function_21dfd08
	mov     r0, r4
	mov     r1, #0x7
	bl      Function_21dfd08
	mov     r0, r6
	bl      Function_2079d20
	mov     r6, r0
	beq     branch_21dfbda
	mov     r0, r4
	mov     r1, #0x8
	bl      Function_21dfd08
.thumb
branch_21dfbda: @ 21dfbda :thumb
	cmp     r6, #0x4
	bls     branch_21dfbe6
	mov     r0, r4
	mov     r1, #0x9
	bl      Function_21dfd08
.thumb
branch_21dfbe6: @ 21dfbe6 :thumb
	mov     r0, r4
	mov     r1, #0x3
	add     r0, #0x23
	strb    r1, [r0, #0x0]
	cmp     r5, #0x4
	blt     branch_21dfbfe
	cmp     r5, #0x9
	bgt     branch_21dfbfe
	.hword  0x1f28 @ sub r0, r5, #0x4
	add     r4, #0x20
	strb    r0, [r4, #0x0]
	pop     {r4-r6,pc}
@ 0x21dfbfe

.thumb
branch_21dfbfe: @ 21dfbfe :thumb
	bl      ErrorHandling
	pop     {r4-r6,pc}
@ 0x21dfc04

.thumb
Function_21dfc04: @ 21dfc04 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	add     r6, #0x74
	mov     r5, r1
	bl      Function_21d5e90
	str     r0, [sp, #0x0]
	mov     r0, r6
	bl      Function_21dfcf8
	cmp     r5, #0x4
	blt     branch_21dfc3c
	cmp     r5, #0x7
	bgt     branch_21dfc3c
	.hword  0x1f28 @ sub r0, r5, #0x4
	ldr     r1, [pc, #0x58] @ 0x21dfc7c, (=0x21e058c)
	lsl     r0, r0, #3
	mov     r5, #0x0
	add     r4, r1, r0
.thumb
branch_21dfc2a: @ 21dfc2a :thumb
	ldrh    r1, [r4, #0x0]
	mov     r0, r6
	bl      Function_21dfd08
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r5, #0x4
	blt     branch_21dfc2a
	b       branch_21dfc72
@ 0x21dfc3c

.thumb
branch_21dfc3c: @ 21dfc3c :thumb
	mov     r4, #0x0
	mov     r7, r4
	cmp     r5, #0x9
	bne     branch_21dfc46
	mov     r4, #0x4
.thumb
branch_21dfc46: @ 21dfc46 :thumb
	mov     r5, #0x0
.thumb
branch_21dfc48: @ 21dfc48 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, r5
	bl      Function_2079cfc
	cmp     r0, #0x0
	beq     branch_21dfc6c
	cmp     r4, #0x0
	beq     branch_21dfc5c
	.hword  0x1e64 @ sub r4, r4, #0x1
	b       branch_21dfc6c
@ 0x21dfc5c

.thumb
branch_21dfc5c: @ 21dfc5c :thumb
	mov     r1, r5
	mov     r0, r6
	add     r1, #0x1a
	bl      Function_21dfd08
	.hword  0x1c7f @ add r7, r7, #0x1
	cmp     r7, #0x4
	bge     branch_21dfc72
.thumb
branch_21dfc6c: @ 21dfc6c :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x8
	blt     branch_21dfc48
.thumb
branch_21dfc72: @ 21dfc72 :thumb
	mov     r0, #0x3
	add     r6, #0x23
	strb    r0, [r6, #0x0]
	pop     {r3-r7,pc}
@ 0x21dfc7a


.align 2


.word 0x21e058c @ 0x21dfc7c
.thumb
Function_21dfc80: @ 21dfc80 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r5
	add     r4, #0x74
	mov     r0, r4
	bl      Function_21dfcf8
	mov     r0, r4
	mov     r1, #0x4
	add     r0, #0x23
	strb    r1, [r0, #0x0]
	add     r5, #0x57
	mov     r0, r4
	ldrb    r1, [r5, #0x0]
	add     r0, #0x22
	strb    r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, #0x38
	bl      Function_21dfd08
	mov     r0, r4
	mov     r1, #0x39
	bl      Function_21dfd08
	mov     r0, r4
	mov     r1, #0x3a
	bl      Function_21dfd08
	mov     r0, r4
	mov     r1, #0x3b
	bl      Function_21dfd08
	mov     r0, r4
	mov     r1, #0x3c
	bl      Function_21dfd08
	mov     r0, r4
	mov     r1, #0x3d
	bl      Function_21dfd08
	mov     r0, r4
	mov     r1, #0x2c
	bl      Function_21dfd08
	mov     r0, r4
	mov     r1, #0x2d
	bl      Function_21dfd08
	pop     {r3-r5,pc}
@ 0x21dfce2


.align 2, 0


.thumb
Function_21dfce4: @ 21dfce4 :thumb
	mov     r2, r0
	add     r2, #0x96
	ldrb    r3, [r2, #0x0]
	mov     r2, #0x1
	lsl     r2, r1
	mov     r1, r3
	eor     r1, r2
	add     r0, #0x96
	strb    r1, [r0, #0x0]
	bx      lr
@ 0x21dfcf8

.thumb
Function_21dfcf8: @ 21dfcf8 :thumb
	mov     r1, r0
	mov     r2, #0x0
	add     r1, #0x21
	strb    r2, [r1, #0x0]
	add     r0, #0x20
	strb    r2, [r0, #0x0]
	bx      lr
@ 0x21dfd06


.align 2, 0


.thumb
Function_21dfd08: @ 21dfd08 :thumb
	push    {r3,r4}
	mov     r2, r0
	add     r2, #0x21
	ldrb    r4, [r2, #0x0]
	cmp     r4, #0x8
	bcs     branch_21dfd26
	mov     r2, r0
	add     r2, #0x21
	ldrb    r2, [r2, #0x0]
	add     r3, r2, #0x1
	mov     r2, r0
	add     r2, #0x21
	strb    r3, [r2, #0x0]
	lsl     r2, r4, #2
	str     r1, [r0, r2]
.thumb
branch_21dfd26: @ 21dfd26 :thumb
	pop     {r3,r4}
	bx      lr
@ 0x21dfd2a


.align 2, 0


.thumb
Function_21dfd2c: @ 21dfd2c :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r0, [pc, #0xa0] @ 0x21dfdd4, (=RAM_21bf67c)
	add     r4, #0x74
	ldr     r1, [r0, #0x48]
	mov     r0, #0x40
	mov     r2, r1
	tst     r2, r0
	beq     branch_21dfd6c
	mov     r2, r4
	add     r2, #0x20
	ldrb    r2, [r2, #0x0]
	cmp     r2, #0x0
	beq     branch_21dfd58
	mov     r1, r4
	add     r1, #0x20
	ldrb    r1, [r1, #0x0]
	add     r4, #0x20
	sub     r0, #0x42
	.hword  0x1e49 @ sub r1, r1, #0x1
	strb    r1, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x21dfd58

.thumb
branch_21dfd58: @ 21dfd58 :thumb
	mov     r2, r4
	add     r2, #0x21
	ldrb    r2, [r2, #0x0]
	cmp     r2, #0x3
	bcc     branch_21dfd6c
	.hword  0x1e51 @ sub r1, r2, #0x1
	add     r4, #0x20
	strb    r1, [r4, #0x0]
	sub     r0, #0x42
	pop     {r3-r5,pc}
@ 0x21dfd6c

.thumb
branch_21dfd6c: @ 21dfd6c :thumb
	mov     r0, #0x80
	mov     r2, r1
	tst     r2, r0
	beq     branch_21dfda4
	mov     r2, r4
	add     r2, #0x21
	ldrb    r5, [r2, #0x0]
	mov     r2, r4
	add     r2, #0x20
	ldrb    r3, [r2, #0x0]
	.hword  0x1e6a @ sub r2, r5, #0x1
	cmp     r3, r2
	bge     branch_21dfd96
	mov     r1, r4
	add     r1, #0x20
	ldrb    r1, [r1, #0x0]
	add     r4, #0x20
	sub     r0, #0x82
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x21dfd96

.thumb
branch_21dfd96: @ 21dfd96 :thumb
	cmp     r5, #0x3
	bcc     branch_21dfda4
	mov     r0, #0x0
	add     r4, #0x20
	strb    r0, [r4, #0x0]
	.hword  0x1e80 @ sub r0, r0, #0x2
	pop     {r3-r5,pc}
@ 0x21dfda4

.thumb
branch_21dfda4: @ 21dfda4 :thumb
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_21dfdb6
	ldr     r0, [pc, #0x2c] @ 0x21dfdd8, (=0x5dd)
	bl      Function_2005748
	mov     r0, #0x0
	mvn     r0, r0
	pop     {r3-r5,pc}
@ 0x21dfdb6

.thumb
branch_21dfdb6: @ 21dfdb6 :thumb
	mov     r0, #0x1
	tst     r1, r0
	beq     branch_21dfdce
	ldr     r0, [pc, #0x18] @ 0x21dfdd8, (=0x5dd)
	bl      Function_2005748
	mov     r0, r4
	add     r0, #0x20
	ldrb    r0, [r0, #0x0]
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	pop     {r3-r5,pc}
@ 0x21dfdce

.thumb
branch_21dfdce: @ 21dfdce :thumb
	.hword  0x1f00 @ sub r0, r0, #0x4
	pop     {r3-r5,pc}
@ 0x21dfdd2


.align 2


.word RAM_21bf67c @ 0x21dfdd4
.word 0x5dd @ 0x21dfdd8
.thumb
Function_21dfddc: @ 21dfddc :thumb
	add     r0, #0x74
	mov     r1, r0
	add     r1, #0x20
	ldrb    r1, [r1, #0x0]
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	bx      lr
@ 0x21dfdea


.align 2, 0
.thumb
Function_21dfdec: @ 21dfdec :thumb
	ldr     r0, [r0, #0x74]
	bx      lr



Unknown_21dfdf0: @ 0x21dfdf0
.incbin "./baserom/overlay/overlay_0019.bin", 0xf070, 0x21e05e0 - 0x21dfdf0


@end 0x21e05e0




