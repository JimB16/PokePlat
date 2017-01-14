

.section .iwram60, "ax"


.thumb
Function_221f800: @ 221f800 :thumb
	lsl     r1, r0, #16
	orr     r1, r0
	ldr     r0, [pc, #0x4] @ 0x221f80c, (=0x2229e20)
	str     r1, [r0, #0x0]
	bx      lr
@ 0x221f80a

.align 2
.word 0x2229e20 @ 0x221f80c



.thumb
Function_221f810: @ 221f810 :thumb
	ldr     r1, [pc, #0x18] @ 0x221f82c, (=0x2229e20)
	mov     r0, #0x45
	ldr     r2, [r1, #0x0]
	mov     r3, r2
	mul     r3, r0
	ldr     r0, [pc, #0x14] @ 0x221f830, (=0x1111)
	add     r2, r3, r0
	ldr     r0, [pc, #0x14] @ 0x221f834, (=0x7fffffff)
	and     r0, r2
	str     r0, [r1, #0x0]
	asr     r0, r0, #16
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bx      lr
@ 0x221f82c

.word 0x2229e20 @ 0x221f82c
.word 0x1111 @ 0x221f830
.word 0x7fffffff @ 0x221f834



.thumb
Function_221f838: @ 221f838 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r4, r0
	mov     r0, #0x0
	mov     r5, r2
	str     r0, [sp, #0x14]
	mov     r0, r5
	str     r0, [sp, #0x10]
	add     r0, #0x8
	mov     r7, r1
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x10]
	bl      Function_221f944
	ldr     r1, [sp, #0x30]
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r1, r0
	bge     branch_221f862
	add     sp, #0x18
	mov     r0, #0x2
	pop     {r3-r7,pc}
@ 0x221f862

.thumb
branch_221f862: @ 221f862 :thumb
	ldr     r1, [sp, #0x10]
	mov     r0, #0xa
	blx     0x21d7780
	mov     r6, r0
	bne     branch_221f874
	add     sp, #0x18
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x221f874

.thumb
branch_221f874: @ 221f874 :thumb
	lsr     r0, r4, #24
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	lsl     r0, r0, #24
	lsr     r1, r0, #24
	ldr     r0, [sp, #0x14]
	add     r0, r0, r1
	lsr     r1, r4, #16
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	str     r1, [sp, #0x8]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	add     r0, r0, r1
	lsr     r1, r4, #8
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	str     r1, [sp, #0xc]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	add     r0, r0, r1
	lsl     r1, r4, #24
	lsr     r4, r1, #24
	lsl     r1, r4, #24
	lsr     r1, r1, #24
	add     r0, r0, r1
	str     r0, [sp, #0x14]
	mov     r0, #0x0
	cmp     r5, #0x0
	ble     branch_221f8c0
.thumb
branch_221f8b2: @ 221f8b2 :thumb
	ldrb    r2, [r7, r0]
	ldr     r1, [sp, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r1, r1, r2
	str     r1, [sp, #0x14]
	cmp     r0, r5
	blt     branch_221f8b2
.thumb
branch_221f8c0: @ 221f8c0 :thumb
	ldr     r0, [sp, #0x14]
	bl      Function_221f800
	bl      Function_221f810
	eor     r0, r4
	strb    r0, [r6, #0x4]
	bl      Function_221f810
	ldr     r1, [sp, #0xc]
	eor     r0, r1
	strb    r0, [r6, #0x5]
	bl      Function_221f810
	ldr     r1, [sp, #0x8]
	eor     r0, r1
	strb    r0, [r6, #0x6]
	bl      Function_221f810
	ldr     r1, [sp, #0x4]
	mov     r4, #0x0
	eor     r0, r1
	strb    r0, [r6, #0x7]
	cmp     r5, #0x0
	ble     branch_221f904
.thumb
branch_221f8f2: @ 221f8f2 :thumb
	bl      Function_221f810
	ldrb    r1, [r7, r4]
	eor     r1, r0
	add     r0, r6, r4
	.hword  0x1c64 @ add r4, r4, #0x1
	strb    r1, [r0, #0x8]
	cmp     r4, r5
	blt     branch_221f8f2
.thumb
branch_221f904: @ 221f904 :thumb
	ldr     r1, [pc, #0x38] @ 0x221f940, (=0x4a3b2c1d)
	ldr     r0, [sp, #0x14]
	add     r5, #0x8
	eor     r1, r0
	lsr     r0, r1, #24
	strb    r0, [r6, #0x0]
	lsr     r0, r1, #16
	strb    r0, [r6, #0x1]
	lsr     r0, r1, #8
	strb    r0, [r6, #0x2]
	strb    r1, [r6, #0x3]
	ldr     r1, [sp, #0x0]
	mov     r0, r6
	mov     r2, r5
	mov     r3, #0x2
	blx     0x21eb0f0
	ldr     r0, [sp, #0x10]
	bl      Function_221f944
	ldr     r1, [sp, #0x0]
	mov     r2, #0x0
	strb    r2, [r1, r0]
	mov     r0, #0xa
	mov     r1, r6
	blx     0x21d77c4
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x221f940

.word 0x4a3b2c1d @ 0x221f940
.thumb
Function_221f944: @ 221f944 :thumb
	push    {r3-r5,lr}
	mov     r1, #0x3
	mov     r5, r0
	blx     _u32_div_f
	cmp     r1, #0x0
	beq     branch_221f956
	mov     r4, #0x1
	b       branch_221f958
@ 0x221f956

.thumb
branch_221f956: @ 221f956 :thumb
	mov     r4, #0x0
.thumb
branch_221f958: @ 221f958 :thumb
	mov     r0, r5
	mov     r1, #0x3
	blx     _u32_div_f
	add     r0, r0, r4
	lsl     r0, r0, #2
	pop     {r3-r5,pc}
@ 0x221f966


.align 2, 0


.thumb
Function_221f968: @ 221f968 :thumb
	add     r0, #0x8
	cmp     r0, #0x7
	bhi     branch_221f9c2
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x221f97a

Jumppoints_221f97a:
.hword branch_221f98a - Jumppoints_221f97a - 2
.hword branch_221f9c2 - Jumppoints_221f97a - 2
.hword branch_221f992 - Jumppoints_221f97a - 2
.hword branch_221f99a - Jumppoints_221f97a - 2
.hword branch_221f9a2 - Jumppoints_221f97a - 2
.hword branch_221f9aa - Jumppoints_221f97a - 2
.hword branch_221f9b2 - Jumppoints_221f97a - 2
.hword branch_221f9ba - Jumppoints_221f97a - 2
.thumb
branch_221f98a: @ 221f98a :thumb
	ldr     r0, [pc, #0x40] @ 0x221f9cc, (=0x2228e40)
	mov     r1, #0x0
	str     r1, [r0, #0x8]
	bx      lr
@ 0x221f992

.thumb
branch_221f992: @ 221f992 :thumb
	ldr     r0, [pc, #0x38] @ 0x221f9cc, (=0x2228e40)
	mov     r1, #0x1
	str     r1, [r0, #0x8]
	bx      lr
@ 0x221f99a

.thumb
branch_221f99a: @ 221f99a :thumb
	ldr     r0, [pc, #0x30] @ 0x221f9cc, (=0x2228e40)
	mov     r1, #0x2
	str     r1, [r0, #0x8]
	bx      lr
@ 0x221f9a2

.thumb
branch_221f9a2: @ 221f9a2 :thumb
	ldr     r0, [pc, #0x28] @ 0x221f9cc, (=0x2228e40)
	mov     r1, #0x3
	str     r1, [r0, #0x8]
	bx      lr
@ 0x221f9aa

.thumb
branch_221f9aa: @ 221f9aa :thumb
	ldr     r0, [pc, #0x20] @ 0x221f9cc, (=0x2228e40)
	mov     r1, #0x4
	str     r1, [r0, #0x8]
	bx      lr
@ 0x221f9b2

.thumb
branch_221f9b2: @ 221f9b2 :thumb
	ldr     r0, [pc, #0x18] @ 0x221f9cc, (=0x2228e40)
	mov     r1, #0x5
	str     r1, [r0, #0x8]
	bx      lr
@ 0x221f9ba

.thumb
branch_221f9ba: @ 221f9ba :thumb
	ldr     r0, [pc, #0x10] @ 0x221f9cc, (=0x2228e40)
	mov     r1, #0x6
	str     r1, [r0, #0x8]
	bx      lr
@ 0x221f9c2

.thumb
branch_221f9c2: @ 221f9c2 :thumb
	ldr     r0, [pc, #0x8] @ 0x221f9cc, (=0x2228e40)
	mov     r1, #0x0
	str     r1, [r0, #0x8]
	bx      lr
@ 0x221f9ca


.align 2


.word 0x2228e40 @ 0x221f9cc
.thumb
Function_221f9d0: @ 221f9d0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x4c
	mov     r4, r1
	mov     r3, #0x0
	ldr     r1, [pc, #0x27c] @ 0x221fc58, (=0x2228e40)
	mvn     r3, r3
	str     r3, [r1, #0x4]
	ldr     r3, [r1, #0x0]
	mov     r6, r0
	cmp     r3, #0x1
	bne     branch_221f9e8
	b       branch_221fc52
@ 0x221f9e8

.thumb
branch_221f9e8: @ 221f9e8 :thumb
	cmp     r2, #0x0
	beq     branch_221f9ee
	b       branch_221fba2
@ 0x221f9ee

.thumb
branch_221f9ee: @ 221f9ee :thumb
	cmp     r3, #0x4
	beq     branch_221f9fa
	cmp     r3, #0x6
	beq     branch_221fac6
	add     sp, #0x4c
	pop     {r4-r7,pc}
@ 0x221f9fa

.thumb
branch_221f9fa: @ 221f9fa :thumb
	cmp     r4, #0x20
	bne     branch_221fabe
	ldr     r5, [r1, #0x28]
	ldr     r3, [pc, #0x258] @ 0x221fc5c, (=0x2228c4c)
	add     r5, #0x14
	add     r2, sp, #0x4
	mov     r1, #0x11
.thumb
branch_221fa08: @ 221fa08 :thumb
	ldrb    r0, [r3, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_221fa08
	add     r3, sp, #0x14
	ldr     r2, [pc, #0x248] @ 0x221fc60, (=0x2228e74)
	add     r3, #0x1
	mov     r1, #0x15
.thumb
branch_221fa1c: @ 221fa1c :thumb
	ldrb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	strb    r0, [r3, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_221fa1c
	add     r0, sp, #0x14
	add     r0, #0x1
	mov     r1, r6
	mov     r2, r4
	blx     Function_20d8cc4
	add     r0, sp, #0x14
	add     r0, #0x1
	blx     Function_20d8b60
	add     r1, sp, #0x14
	mov     r2, r0
	mov     r0, r5
	add     r1, #0x1
	blx     Function_20d3068
	ldr     r0, [pc, #0x20c] @ 0x221fc58, (=0x2228e40)
	ldr     r1, [pc, #0x218] @ 0x221fc64, (=0x2228e8c)
	ldr     r0, [r0, #0x24]
	blx     Function_20d8c94
	mov     r2, #0x0
	ldr     r4, [pc, #0x200] @ 0x221fc58, (=0x2228e40)
	mov     r3, r2
	add     r1, sp, #0x4
	mov     r7, #0xf
.thumb
branch_221fa5c: @ 221fa5c :thumb
	ldrb    r0, [r5, r2]
	asr     r0, r0, #4
	ldsb    r6, [r1, r0]
	ldr     r0, [r4, #0x28]
	strb    r6, [r0, r3]
	ldrb    r0, [r5, r2]
	ldr     r6, [r4, #0x28]
	.hword  0x1c52 @ add r2, r2, #0x1
	and     r0, r7
	ldsb    r0, [r1, r0]
	add     r6, r6, r3
	.hword  0x1c9b @ add r3, r3, #0x2
	strb    r0, [r6, #0x1]
	cmp     r2, #0x14
	blt     branch_221fa5c
	ldr     r0, [pc, #0x1dc] @ 0x221fc58, (=0x2228e40)
	mov     r2, #0x0
	ldr     r1, [r0, #0x28]
	add     r1, #0x28
	strb    r2, [r1, #0x0]
	ldr     r0, [r0, #0x24]
	ldr     r1, [pc, #0x1e0] @ 0x221fc68, (=0x2228e94)
	blx     Function_20d8c94
	ldr     r3, [pc, #0x1c8] @ 0x221fc58, (=0x2228e40)
	ldr     r0, [r3, #0x30]
	str     r0, [sp, #0x0]
	ldr     r0, [r3, #0x10]
	ldr     r1, [r3, #0x14]
	ldr     r2, [r3, #0x18]
	ldr     r3, [r3, #0x2c]
	bl      Function_221f838
	cmp     r0, #0x0
	beq     branch_221fab4
	cmp     r0, #0x1
	beq     branch_221faaa
	cmp     r0, #0x2
	bne     branch_221fab4
.thumb
branch_221faaa: @ 221faaa :thumb
	ldr     r0, [pc, #0x1ac] @ 0x221fc58, (=0x2228e40)
	mov     r1, #0x1
	str     r1, [r0, #0x0]
	add     sp, #0x4c
	pop     {r4-r7,pc}
@ 0x221fab4

.thumb
branch_221fab4: @ 221fab4 :thumb
	ldr     r0, [pc, #0x1a0] @ 0x221fc58, (=0x2228e40)
	mov     r1, #0x5
	str     r1, [r0, #0x0]
	add     sp, #0x4c
	pop     {r4-r7,pc}
@ 0x221fabe

.thumb
branch_221fabe: @ 221fabe :thumb
	mov     r0, #0x1
	str     r0, [r1, #0x0]
	add     sp, #0x4c
	pop     {r4-r7,pc}
@ 0x221fac6

.thumb
branch_221fac6: @ 221fac6 :thumb
	cmp     r4, #0x16
	bne     branch_221fb70
	ldr     r1, [pc, #0x1a0] @ 0x221fc6c, (=0x2228e9c)
	mov     r2, #0x16
	blx     Function_20d8e28
	cmp     r0, #0x0
	bne     branch_221fae4
	ldr     r0, [pc, #0x180] @ 0x221fc58, (=0x2228e40)
	mov     r1, #0x1
	str     r1, [r0, #0x0]
	mov     r1, #0x1a
	str     r1, [r0, #0x8]
	add     sp, #0x4c
	pop     {r4-r7,pc}
@ 0x221fae4

.thumb
branch_221fae4: @ 221fae4 :thumb
	ldr     r1, [pc, #0x188] @ 0x221fc70, (=0x2228eb4)
	mov     r0, r6
	mov     r2, #0x16
	blx     Function_20d8e28
	cmp     r0, #0x0
	bne     branch_221fb00
	ldr     r0, [pc, #0x164] @ 0x221fc58, (=0x2228e40)
	mov     r1, #0x1
	str     r1, [r0, #0x0]
	mov     r1, #0x1b
	str     r1, [r0, #0x8]
	add     sp, #0x4c
	pop     {r4-r7,pc}
@ 0x221fb00

.thumb
branch_221fb00: @ 221fb00 :thumb
	ldr     r1, [pc, #0x170] @ 0x221fc74, (=0x2228ecc)
	mov     r0, r6
	mov     r2, #0x16
	blx     Function_20d8e28
	cmp     r0, #0x0
	bne     branch_221fb1c
	ldr     r0, [pc, #0x148] @ 0x221fc58, (=0x2228e40)
	mov     r1, #0x1
	str     r1, [r0, #0x0]
	mov     r1, #0x1c
	str     r1, [r0, #0x8]
	add     sp, #0x4c
	pop     {r4-r7,pc}
@ 0x221fb1c

.thumb
branch_221fb1c: @ 221fb1c :thumb
	ldr     r1, [pc, #0x158] @ 0x221fc78, (=0x2228ee4)
	mov     r0, r6
	mov     r2, #0x16
	blx     Function_20d8e28
	cmp     r0, #0x0
	bne     branch_221fb38
	ldr     r0, [pc, #0x12c] @ 0x221fc58, (=0x2228e40)
	mov     r1, #0x1
	str     r1, [r0, #0x0]
	mov     r1, #0x1d
	str     r1, [r0, #0x8]
	add     sp, #0x4c
	pop     {r4-r7,pc}
@ 0x221fb38

.thumb
branch_221fb38: @ 221fb38 :thumb
	ldr     r1, [pc, #0x140] @ 0x221fc7c, (=0x2228efc)
	mov     r0, r6
	mov     r2, #0x16
	blx     Function_20d8e28
	cmp     r0, #0x0
	bne     branch_221fb54
	ldr     r0, [pc, #0x110] @ 0x221fc58, (=0x2228e40)
	mov     r1, #0x1
	str     r1, [r0, #0x0]
	mov     r1, #0x1e
	str     r1, [r0, #0x8]
	add     sp, #0x4c
	pop     {r4-r7,pc}
@ 0x221fb54

.thumb
branch_221fb54: @ 221fb54 :thumb
	ldr     r1, [pc, #0x128] @ 0x221fc80, (=0x2228f14)
	mov     r0, r6
	mov     r2, #0x16
	blx     Function_20d8e28
	cmp     r0, #0x0
	bne     branch_221fb70
	ldr     r0, [pc, #0xf4] @ 0x221fc58, (=0x2228e40)
	mov     r1, #0x1
	str     r1, [r0, #0x0]
	mov     r1, #0x1f
	str     r1, [r0, #0x8]
	add     sp, #0x4c
	pop     {r4-r7,pc}
@ 0x221fb70

.thumb
branch_221fb70: @ 221fb70 :thumb
	ldr     r0, [pc, #0xe4] @ 0x221fc58, (=0x2228e40)
	ldr     r2, [r0, #0x20]
	cmp     r4, r2
	ldr     r0, [r0, #0x1c]
	bgt     branch_221fb8a
	mov     r1, r6
	mov     r2, r4
	blx     CopyDataInByteSteps
	ldr     r0, [pc, #0xd4] @ 0x221fc58, (=0x2228e40)
	mov     r1, #0x7
	str     r1, [r0, #0x0]
	b       branch_221fb9a
@ 0x221fb8a

.thumb
branch_221fb8a: @ 221fb8a :thumb
	mov     r1, r6
	blx     CopyDataInByteSteps
	ldr     r0, [pc, #0xc4] @ 0x221fc58, (=0x2228e40)
	mov     r1, #0x1
	str     r1, [r0, #0x0]
	mov     r1, #0x20
	str     r1, [r0, #0x8]
.thumb
branch_221fb9a: @ 221fb9a :thumb
	ldr     r0, [pc, #0xbc] @ 0x221fc58, (=0x2228e40)
	add     sp, #0x4c
	str     r4, [r0, #0xc]
	pop     {r4-r7,pc}
@ 0x221fba2

.thumb
branch_221fba2: @ 221fba2 :thumb
	mov     r0, #0x1
	str     r0, [r1, #0x0]
	cmp     r2, #0x13
	bhi     branch_221fc52
	add     r0, r2, r2
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x221fbb6

Jumppoints_221fbb6:
.hword branch_221fc52 - Jumppoints_221fbb6 - 2
.hword branch_221fbde - Jumppoints_221fbb6 - 2
.hword branch_221fbe6 - Jumppoints_221fbb6 - 2
.hword branch_221fbee - Jumppoints_221fbb6 - 2
.hword branch_221fbf6 - Jumppoints_221fbb6 - 2
.hword branch_221fbfe - Jumppoints_221fbb6 - 2
.hword branch_221fc06 - Jumppoints_221fbb6 - 2
.hword branch_221fc0e - Jumppoints_221fbb6 - 2
.hword branch_221fc16 - Jumppoints_221fbb6 - 2
.hword branch_221fc1e - Jumppoints_221fbb6 - 2
.hword branch_221fc26 - Jumppoints_221fbb6 - 2
.hword branch_221fc2e - Jumppoints_221fbb6 - 2
.hword branch_221fc36 - Jumppoints_221fbb6 - 2
.hword branch_221fc52 - Jumppoints_221fbb6 - 2
.hword branch_221fc52 - Jumppoints_221fbb6 - 2
.hword branch_221fc3e - Jumppoints_221fbb6 - 2
.hword branch_221fc46 - Jumppoints_221fbb6 - 2
.hword branch_221fc52 - Jumppoints_221fbb6 - 2
.hword branch_221fc52 - Jumppoints_221fbb6 - 2
.hword branch_221fc4e - Jumppoints_221fbb6 - 2
.thumb
branch_221fbde: @ 221fbde :thumb
	mov     r0, #0x8
	str     r0, [r1, #0x8]
	add     sp, #0x4c
	pop     {r4-r7,pc}
@ 0x221fbe6

.thumb
branch_221fbe6: @ 221fbe6 :thumb
	mov     r0, #0x9
	str     r0, [r1, #0x8]
	add     sp, #0x4c
	pop     {r4-r7,pc}
@ 0x221fbee

.thumb
branch_221fbee: @ 221fbee :thumb
	mov     r0, #0xa
	str     r0, [r1, #0x8]
	add     sp, #0x4c
	pop     {r4-r7,pc}
@ 0x221fbf6

.thumb
branch_221fbf6: @ 221fbf6 :thumb
	mov     r0, #0xb
	str     r0, [r1, #0x8]
	add     sp, #0x4c
	pop     {r4-r7,pc}
@ 0x221fbfe

.thumb
branch_221fbfe: @ 221fbfe :thumb
	mov     r0, #0xc
	str     r0, [r1, #0x8]
	add     sp, #0x4c
	pop     {r4-r7,pc}
@ 0x221fc06

.thumb
branch_221fc06: @ 221fc06 :thumb
	mov     r0, #0xd
	str     r0, [r1, #0x8]
	add     sp, #0x4c
	pop     {r4-r7,pc}
@ 0x221fc0e

.thumb
branch_221fc0e: @ 221fc0e :thumb
	mov     r0, #0xe
	str     r0, [r1, #0x8]
	add     sp, #0x4c
	pop     {r4-r7,pc}
@ 0x221fc16

.thumb
branch_221fc16: @ 221fc16 :thumb
	mov     r0, #0xf
	str     r0, [r1, #0x8]
	add     sp, #0x4c
	pop     {r4-r7,pc}
@ 0x221fc1e

.thumb
branch_221fc1e: @ 221fc1e :thumb
	mov     r0, #0x10
	str     r0, [r1, #0x8]
	add     sp, #0x4c
	pop     {r4-r7,pc}
@ 0x221fc26

.thumb
branch_221fc26: @ 221fc26 :thumb
	mov     r0, #0x11
	str     r0, [r1, #0x8]
	add     sp, #0x4c
	pop     {r4-r7,pc}
@ 0x221fc2e

.thumb
branch_221fc2e: @ 221fc2e :thumb
	mov     r0, #0x12
	str     r0, [r1, #0x8]
	add     sp, #0x4c
	pop     {r4-r7,pc}
@ 0x221fc36

.thumb
branch_221fc36: @ 221fc36 :thumb
	mov     r0, #0x13
	str     r0, [r1, #0x8]
	add     sp, #0x4c
	pop     {r4-r7,pc}
@ 0x221fc3e

.thumb
branch_221fc3e: @ 221fc3e :thumb
	mov     r0, #0x16
	str     r0, [r1, #0x8]
	add     sp, #0x4c
	pop     {r4-r7,pc}
@ 0x221fc46

.thumb
branch_221fc46: @ 221fc46 :thumb
	mov     r0, #0x17
	str     r0, [r1, #0x8]
	add     sp, #0x4c
	pop     {r4-r7,pc}
@ 0x221fc4e

.thumb
branch_221fc4e: @ 221fc4e :thumb
	mov     r0, #0x19
	str     r0, [r1, #0x8]
.thumb
branch_221fc52: @ 221fc52 :thumb
	add     sp, #0x4c
	pop     {r4-r7,pc}
@ 0x221fc56


.align 2


.word 0x2228e40 @ 0x221fc58
.word 0x2228c4c @ 0x221fc5c
.word 0x2228e74 @ 0x221fc60
.word 0x2228e8c @ 0x221fc64
.word 0x2228e94 @ 0x221fc68
.word 0x2228e9c @ 0x221fc6c
.word 0x2228eb4 @ 0x221fc70
.word 0x2228ecc @ 0x221fc74
.word 0x2228ee4 @ 0x221fc78
.word 0x2228efc @ 0x221fc7c
.word 0x2228f14 @ 0x221fc80
.thumb
Function_221fc84: @ 221fc84 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x1c] @ 0x221fca4, (=0x2228e40)
	mov     r1, #0x2
	str     r1, [r0, #0x0]
	.hword  0x1ec9 @ sub r1, r1, #0x3
	str     r1, [r0, #0x4]
	mov     r0, #0x0
	blx     0x21e558c
	cmp     r0, #0x0
	bne     branch_221fca0
	ldr     r0, [pc, #0x8] @ 0x221fca4, (=0x2228e40)
	mov     r1, #0x1
	str     r1, [r0, #0x0]
.thumb
branch_221fca0: @ 221fca0 :thumb
	pop     {r3,pc}
@ 0x221fca2


.align 2


.word 0x2228e40 @ 0x221fca4
.thumb
Function_221fca8: @ 221fca8 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	ldr     r1, [pc, #0x88] @ 0x221fd38, (=0x2228e40)
	mov     r4, r3
	ldr     r3, [r1, #0x0]
	mov     r7, r0
	cmp     r3, #0x2
	beq     branch_221fcbc
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x221fcbc

.thumb
branch_221fcbc: @ 221fcbc :thumb
	str     r5, [r1, #0x10]
	str     r2, [r1, #0x14]
	str     r4, [r1, #0x18]
	ldr     r2, [sp, #0x18]
	add     r4, #0x8
	str     r2, [r1, #0x1c]
	ldr     r2, [sp, #0x1c]
	str     r2, [r1, #0x20]
	blx     Function_20d8b60
	mov     r6, r0
	mov     r0, r4
	bl      Function_221f944
	mov     r1, r0
	add     r6, #0x45
	mov     r0, #0xa
	add     r1, r6, r1
	blx     0x21d7780
	ldr     r1, [pc, #0x50] @ 0x221fd38, (=0x2228e40)
	cmp     r0, #0x0
	str     r0, [r1, #0x24]
	bne     branch_221fcf0
	mov     r0, #0x2
	pop     {r3-r7,pc}
@ 0x221fcf0

.thumb
branch_221fcf0: @ 221fcf0 :thumb
	ldr     r1, [pc, #0x48] @ 0x221fd3c, (=0x2228f2c)
	mov     r2, r7
	mov     r3, r5
	blx     Function_20d7510
	ldr     r0, [pc, #0x3c] @ 0x221fd38, (=0x2228e40)
	ldr     r6, [r0, #0x24]
	mov     r0, r6
	blx     Function_20d8b60
	mov     r5, r0
	ldr     r0, [pc, #0x38] @ 0x221fd40, (=0x2228e8c)
	blx     Function_20d8b60
	add     r1, r6, r5
	add     r1, r1, r0
	ldr     r0, [pc, #0x24] @ 0x221fd38, (=0x2228e40)
	str     r1, [r0, #0x28]
	ldr     r0, [pc, #0x2c] @ 0x221fd44, (=0x2228e94)
	blx     Function_20d8b60
	ldr     r1, [pc, #0x1c] @ 0x221fd38, (=0x2228e40)
	ldr     r2, [r1, #0x28]
	add     r2, #0x28
	add     r0, r2, r0
	str     r0, [r1, #0x2c]
	mov     r0, r4
	bl      Function_221f944
	add     r1, r0, #0x1
	ldr     r0, [pc, #0x8] @ 0x221fd38, (=0x2228e40)
	str     r1, [r0, #0x30]
	mov     r1, #0x3
	str     r1, [r0, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x221fd38

.word 0x2228e40 @ 0x221fd38
.word 0x2228f2c @ 0x221fd3c
.word 0x2228e8c @ 0x221fd40
.word 0x2228e94 @ 0x221fd44
.thumb
Function_221fd48: @ 221fd48 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x94] @ 0x221fde0, (=0x2228e40)
	ldr     r0, [r1, #0x0]
	cmp     r0, #0x7
	bhi     branch_221fdd8
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x221fd5e

Jumppoints_221fd5e:
.hword branch_221fdd8 - Jumppoints_221fd5e - 2
.hword branch_221fdd8 - Jumppoints_221fd5e - 2
.hword branch_221fdd8 - Jumppoints_221fd5e - 2
.hword branch_221fd6e - Jumppoints_221fd5e - 2
.hword branch_221fd94 - Jumppoints_221fd5e - 2
.hword branch_221fda4 - Jumppoints_221fd5e - 2
.hword branch_221fdca - Jumppoints_221fd5e - 2
.hword branch_221fdd8 - Jumppoints_221fd5e - 2
.thumb
branch_221fd6e: @ 221fd6e :thumb
	ldr     r0, [r1, #0x24]
	ldr     r1, [pc, #0x70] @ 0x221fde4, (=0x221f9d1)
	ldr     r2, [pc, #0x74] @ 0x221fde8, (=0x2228e40)
	blx     0x21e56f4
	ldr     r1, [pc, #0x64] @ 0x221fde0, (=0x2228e40)
	str     r0, [r1, #0x4]
	bl      Function_221f968
	ldr     r0, [pc, #0x5c] @ 0x221fde0, (=0x2228e40)
	ldr     r1, [r0, #0x4]
	cmp     r1, #0x0
	blt     branch_221fd8e
	mov     r1, #0x4
	str     r1, [r0, #0x0]
	b       branch_221fdd8
@ 0x221fd8e

.thumb
branch_221fd8e: @ 221fd8e :thumb
	mov     r1, #0x1
	str     r1, [r0, #0x0]
	b       branch_221fdd8
@ 0x221fd94

.thumb
branch_221fd94: @ 221fd94 :thumb
	blx     0x21e55f0
	cmp     r0, #0x0
	bne     branch_221fdd8
	ldr     r0, [pc, #0x40] @ 0x221fde0, (=0x2228e40)
	mov     r1, #0x1
	str     r1, [r0, #0x0]
	b       branch_221fdd8
@ 0x221fda4

.thumb
branch_221fda4: @ 221fda4 :thumb
	ldr     r0, [r1, #0x24]
	ldr     r1, [pc, #0x3c] @ 0x221fde4, (=0x221f9d1)
	ldr     r2, [pc, #0x3c] @ 0x221fde8, (=0x2228e40)
	blx     0x21e56f4
	ldr     r1, [pc, #0x30] @ 0x221fde0, (=0x2228e40)
	str     r0, [r1, #0x4]
	bl      Function_221f968
	ldr     r0, [pc, #0x28] @ 0x221fde0, (=0x2228e40)
	ldr     r1, [r0, #0x4]
	cmp     r1, #0x0
	blt     branch_221fdc4
	mov     r1, #0x6
	str     r1, [r0, #0x0]
	b       branch_221fdd8
@ 0x221fdc4

.thumb
branch_221fdc4: @ 221fdc4 :thumb
	mov     r1, #0x1
	str     r1, [r0, #0x0]
	b       branch_221fdd8
@ 0x221fdca

.thumb
branch_221fdca: @ 221fdca :thumb
	blx     0x21e55f0
	cmp     r0, #0x0
	bne     branch_221fdd8
	ldr     r0, [pc, #0xc] @ 0x221fde0, (=0x2228e40)
	mov     r1, #0x1
	str     r1, [r0, #0x0]
.thumb
branch_221fdd8: @ 221fdd8 :thumb
	ldr     r0, [pc, #0x4] @ 0x221fde0, (=0x2228e40)
	ldr     r0, [r0, #0x0]
	pop     {r3,pc}
@ 0x221fdde


.align 2


.word 0x2228e40 @ 0x221fde0
.word 0x221f9d1 @ 0x221fde4
.word 0x2228e40 @ 0x221fde8
.thumb
Function_221fdec: @ 221fdec :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x20] @ 0x221fe10, (=0x2228e40)
	ldr     r1, [r0, #0x24]
	cmp     r1, #0x0
	beq     branch_221fe04
	mov     r0, #0xa
	mov     r2, #0x0
	blx     0x21d77c4
	ldr     r0, [pc, #0x10] @ 0x221fe10, (=0x2228e40)
	mov     r1, #0x0
	str     r1, [r0, #0x24]
.thumb
branch_221fe04: @ 221fe04 :thumb
	blx     0x21e55b0
	ldr     r0, [pc, #0x4] @ 0x221fe10, (=0x2228e40)
	mov     r1, #0x1
	str     r1, [r0, #0x0]
	pop     {r3,pc}
@ 0x221fe10

.word 0x2228e40 @ 0x221fe10
.thumb
Function_221fe14: @ 221fe14 :thumb
	ldr     r0, [pc, #0x4] @ 0x221fe1c, (=0x2228e40)
	ldr     r0, [r0, #0x8]
	bx      lr
@ 0x221fe1a


.align 2


.word 0x2228e40 @ 0x221fe1c
.thumb
Function_221fe20: @ 221fe20 :thumb
	ldr     r0, [pc, #0x4] @ 0x221fe28, (=0x2228e40)
	ldr     r0, [r0, #0xc]
	bx      lr
@ 0x221fe26


.align 2


.word 0x2228e40 @ 0x221fe28
.arm
Function_221fe2c: @ 221fe2c :arm
	stmfd   sp!, {r3-r5,lr}
	movs    r5, r0
	mov     r4, r1
	bne     branch_221fe50
	ldr     r0, [pc, #0x64] @ [0x221fea8] (=0x2228fd4)
	ldr     r1, [pc, #0x64] @ [0x221feac] (=0x2228fdc)
	ldr     r2, [pc, #0x64] @ [0x221feb0] (=0x2228f68)
	mov     r3, #0x20
	bl      Function_20d407c
.arm
branch_221fe50: @ 221fe50 :arm
	cmp     r4, #0x0
	bgt     branch_221fe6c
	ldr     r0, [pc, #0x54] @ [0x221feb4] (=0x2228fec)
	ldr     r1, [pc, #0x48] @ [0x221feac] (=0x2228fdc)
	ldr     r2, [pc, #0x48] @ [0x221feb0] (=0x2228f68)
	mov     r3, #0x21
	bl      Function_20d407c
.arm
branch_221fe6c: @ 221fe6c :arm
	cmp     r5, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r5,pc}
	cmp     r4, #0x0
	movle   r0, #0x0
	ldmlefd sp!, {r3-r5,pc}
	ldmib   r5, {r0,r1}
	add     r4, r1, r4
	mov     r1, r4
	bl      0x21d7894
	cmp     r0, #0x0
	moveq   r0, #0x0
	stmneib r5, {r0,r4}
	movne   r0, #0x1
	ldmfd   sp!, {r3-r5,pc}
@ 0x221fea8

.word 0x2228fd4 @ 0x221fea8
.word 0x2228fdc @ 0x221feac
.word 0x2228f68 @ 0x221feb0
.word 0x2228fec @ 0x221feb4
.arm
Function_221feb8: @ 221feb8 :arm
	stmfd   sp!, {r3-r7,lr}
	movs    r7, r0
	mov     r6, r1
	mov     r5, r2
	mov     r4, r3
	bne     branch_221fee4
	ldr     r0, [pc, #0xe4] @ [0x221ffbc] (=0x2229000)
	ldr     r1, [pc, #0xe4] @ [0x221ffc0] (=0x2228fdc)
	ldr     r2, [pc, #0xe4] @ [0x221ffc4] (=0x2228f48)
	mov     r3, #0x43
	bl      Function_20d407c
.arm
branch_221fee4: @ 221fee4 :arm
	cmp     r6, #0x0
	bne     branch_221ff00
	ldr     r0, [pc, #0xd4] @ [0x221ffc8] (=0x2228fd4)
	ldr     r1, [pc, #0xc8] @ [0x221ffc0] (=0x2228fdc)
	ldr     r2, [pc, #0xc8] @ [0x221ffc4] (=0x2228f48)
	mov     r3, #0x44
	bl      Function_20d407c
.arm
branch_221ff00: @ 221ff00 :arm
	cmp     r5, #0x0
	bgt     branch_221ff1c
	ldr     r0, [pc, #0xbc] @ [0x221ffcc] (=0x222900c)
	ldr     r1, [pc, #0xac] @ [0x221ffc0] (=0x2228fdc)
	ldr     r2, [pc, #0xac] @ [0x221ffc4] (=0x2228f48)
	mov     r3, #0x45
	bl      Function_20d407c
.arm
branch_221ff1c: @ 221ff1c :arm
	cmp     r4, #0x0
	bgt     branch_221ff38
	ldr     r0, [pc, #0xa4] @ [0x221ffd0] (=0x2228fec)
	ldr     r1, [pc, #0x90] @ [0x221ffc0] (=0x2228fdc)
	ldr     r2, [pc, #0x90] @ [0x221ffc4] (=0x2228f48)
	mov     r3, #0x46
	bl      Function_20d407c
.arm
branch_221ff38: @ 221ff38 :arm
	cmp     r7, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r7,pc}
	cmp     r6, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r7,pc}
	cmp     r5, #0x0
	movle   r0, #0x0
	ldmlefd sp!, {r3-r7,pc}
	cmp     r4, #0x0
	movle   r0, #0x0
	ldmlefd sp!, {r3-r7,pc}
	str     r7, [r6]
	mov     r2, #0x0
	str     r2, [r6, #0x4]
	str     r2, [r6, #0x8]
	str     r2, [r6, #0xc]
	str     r2, [r6, #0x10]
	str     r4, [r6, #0x14]
	str     r2, [r6, #0x18]
	str     r2, [r6, #0x1c]
	mov     r0, r6
	mov     r1, r5
	str     r2, [r6, #0x20]
	bl      Function_221fe2c
	cmp     r0, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r7,pc}
	ldr     r0, [r6, #0x4]
	mov     r1, #0x0
	strb    r1, [r0]
	mov     r0, #0x1
	ldmfd   sp!, {r3-r7,pc}
@ 0x221ffbc

.word 0x2229000 @ 0x221ffbc
.word 0x2228fdc @ 0x221ffc0
.word 0x2228f48 @ 0x221ffc4
.word 0x2228fd4 @ 0x221ffc8
.word 0x222900c @ 0x221ffcc
.word 0x2228fec @ 0x221ffd0
.arm
Function_221ffd4: @ 221ffd4 :arm
	stmfd   sp!, {r3-r7,lr}
	movs    r7, r0
	mov     r6, r1
	mov     r5, r2
	mov     r4, r3
	bne     branch_2220000
	ldr     r0, [pc, #0xc4] @ [0x22200b8] (=0x2229000)
	ldr     r1, [pc, #0xc4] @ [0x22200bc] (=0x2228fdc)
	ldr     r2, [pc, #0xc4] @ [0x22200c0] (=0x2228f78)
	mov     r3, #0x74
	bl      Function_20d407c
.arm
branch_2220000: @ 2220000 :arm
	cmp     r6, #0x0
	bne     branch_222001c
	ldr     r0, [pc, #0xb4] @ [0x22200c4] (=0x2228fd4)
	ldr     r1, [pc, #0xa8] @ [0x22200bc] (=0x2228fdc)
	ldr     r2, [pc, #0xa8] @ [0x22200c0] (=0x2228f78)
	mov     r3, #0x75
	bl      Function_20d407c
.arm
branch_222001c: @ 222001c :arm
	cmp     r5, #0x0
	bne     branch_2220038
	ldr     r0, [pc, #0x9c] @ [0x22200c8] (=0x222901c)
	ldr     r1, [pc, #0x8c] @ [0x22200bc] (=0x2228fdc)
	ldr     r2, [pc, #0x8c] @ [0x22200c0] (=0x2228f78)
	mov     r3, #0x76
	bl      Function_20d407c
.arm
branch_2220038: @ 2220038 :arm
	cmp     r4, #0x0
	bgt     branch_2220054
	ldr     r0, [pc, #0x84] @ [0x22200cc] (=0x2229028)
	ldr     r1, [pc, #0x70] @ [0x22200bc] (=0x2228fdc)
	ldr     r2, [pc, #0x70] @ [0x22200c0] (=0x2228f78)
	mov     r3, #0x77
	bl      Function_20d407c
.arm
branch_2220054: @ 2220054 :arm
	cmp     r7, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r7,pc}
	cmp     r6, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r7,pc}
	cmp     r5, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r7,pc}
	cmp     r4, #0x0
	movle   r0, #0x0
	ldmlefd sp!, {r3-r7,pc}
	str     r7, [r6]
	str     r5, [r6, #0x4]
	str     r4, [r6, #0x8]
	mov     r2, #0x0
	str     r2, [r6, #0xc]
	str     r2, [r6, #0x14]
	mov     r0, #0x1
	str     r0, [r6, #0x18]
	str     r0, [r6, #0x1c]
	str     r2, [r6, #0x20]
	ldr     r1, [r6, #0x4]
	strb    r2, [r1]
	ldmfd   sp!, {r3-r7,pc}
@ 0x22200b8

.word 0x2229000 @ 0x22200b8
.word 0x2228fdc @ 0x22200bc
.word 0x2228f78 @ 0x22200c0
.word 0x2228fd4 @ 0x22200c4
.word 0x222901c @ 0x22200c8
.word 0x2229028 @ 0x22200cc
.arm
Function_22200d0: @ 22200d0 :arm
	stmfd   sp!, {r4,lr}
	movs    r4, r0
	bne     branch_22200f0
	ldr     r0, [pc, #0x40] @ [0x2220124] (=0x2228fd4)
	ldr     r1, [pc, #0x40] @ [0x2220128] (=0x2228fdc)
	ldr     r2, [pc, #0x40] @ [0x222012c] (=0x2228f38)
	mov     r3, #0x9b
	bl      Function_20d407c
.arm
branch_22200f0: @ 22200f0 :arm
	cmp     r4, #0x0
	ldrne   r0, [r4, #0x4]
	cmpne   r0, #0x0
	ldmeqfd sp!, {r4,pc}
	ldr     r1, [r4, #0x1c]
	cmp     r1, #0x0
	bne     branch_2220110
	bl      0x21d78b0
.arm
branch_2220110: @ 2220110 :arm
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x24
	bl      Call_FillMemWithValue
	ldmfd   sp!, {r4,pc}
@ 0x2220124

.word 0x2228fd4 @ 0x2220124
.word 0x2228fdc @ 0x2220128
.word 0x2228f38 @ 0x222012c
.arm
Function_2220130: @ 2220130 :arm
	stmfd   sp!, {r0-r3}
.arm
Function_2220134: @ 2220134 :arm
	stmfd   sp!, {r4-r9,lr}
	sub     sp, sp, #0xc
	movs    r9, r0
	mov     r8, r1
	ldr     r6, [r9]
	bne     branch_2220160
	ldr     r0, [pc, #0x280] @ [0x22203d4] (=0x2228fd4)
	ldr     r1, [pc, #0x280] @ [0x22203d8] (=0x2228fdc)
	ldr     r2, [pc, #0x280] @ [0x22203dc] (=0x2228fa4)
	mov     r3, #0xb7
	bl      Function_20d407c
.arm
branch_2220160: @ 2220160 :arm
	cmp     r8, #0x0
	bne     branch_222017c
	ldr     r0, [pc, #0x270] @ [0x22203e0] (=0x2229034)
	ldr     r1, [pc, #0x264] @ [0x22203d8] (=0x2228fdc)
	ldr     r2, [pc, #0x264] @ [0x22203dc] (=0x2228fa4)
	mov     r3, #0xb8
	bl      Function_20d407c
.arm
branch_222017c: @ 222017c :arm
	ldr     r0, [sp, #0x30]
	cmp     r0, #0x0
	bge     branch_222019c
	ldr     r0, [pc, #0x254] @ [0x22203e4] (=0x222903c)
	ldr     r1, [pc, #0x244] @ [0x22203d8] (=0x2228fdc)
	ldr     r2, [pc, #0x244] @ [0x22203dc] (=0x2228fa4)
	mov     r3, #0xb9
	bl      Function_20d407c
.arm
branch_222019c: @ 222019c :arm
	cmp     r9, #0x0
	addeq   sp, sp, #0xc
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r9,lr}
	addeq   sp, sp, #0x10
	bxeq    lr
	cmp     r8, #0x0
	addeq   sp, sp, #0xc
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r9,lr}
	addeq   sp, sp, #0x10
	bxeq    lr
	ldr     r0, [sp, #0x30]
	cmp     r0, #0x0
	addlt   sp, sp, #0xc
	movlt   r0, #0x0
	ldmltfd sp!, {r4-r9,lr}
	addlt   sp, sp, #0x10
	bxlt    lr
	bne     branch_22201f8
	mov     r0, r8
	bl      Function_20d8b60
	str     r0, [sp, #0x30]
.arm
branch_22201f8: @ 22201f8 :arm
	ldr     r0, [r9, #0x20]
	cmp     r0, #0x1
	bne     branch_2220300
	ldr     r0, [r6, #0x168]
	cmp     r0, #0x0
	bne     branch_2220224
	ldr     r0, [pc, #0x1d0] @ [0x22203e8] (=0x222904c)
	ldr     r1, [pc, #0x1bc] @ [0x22203d8] (=0x2228fdc)
	ldr     r2, [pc, #0x1bc] @ [0x22203dc] (=0x2228fa4)
	mov     r3, #0xce
	bl      Function_20d407c
.arm
branch_2220224: @ 2220224 :arm
	add     r5, sp, #0x8
	add     r4, sp, #0x30
.arm
branch_222022c: @ 222022c :arm
	ldr     r2, [r9, #0x8]
	ldr     r1, [r9, #0xc]
	mov     r0, r6
	sub     r1, r2, r1
	str     r1, [sp, #0x8]
	ldr     r3, [r9, #0x4]
	ldr     r1, [r9, #0xc]
	mov     r2, r8
	add     r1, r3, r1
	stmea   sp, {r1,r5}
	ldr     r7, [r6, #0x17c]
	mov     r3, r4
	add     r1, r6, #89, 30 @ #0x164
	blx     r7
	mov     r7, r0
	cmp     r7, #0x2
	bne     branch_22202e4
	ldr     r0, [r9, #0x18]
	cmp     r0, #0x0
	beq     branch_22202a8
	ldr     r0, [r9]
	mov     r1, #0x1
	str     r1, [r0, #0xfc]
	ldr     r0, [r9]
	mov     r1, #0x2
	str     r1, [r0, #0x38]
	add     sp, sp, #0xc
	mov     r0, #0x0
	ldmfd   sp!, {r4-r9,lr}
	add     sp, sp, #0x10
	bx      lr
@ 0x22202a8

.arm
branch_22202a8: @ 22202a8 :arm
	ldr     r1, [r9, #0x14]
	mov     r0, r9
	bl      Function_221fe2c
	cmp     r0, #0x0
	beq     branch_22202f4
	ldr     r0, [r9]
	mov     r2, #0x1
	str     r2, [r0, #0xfc]
	ldr     r1, [r9]
	add     sp, sp, #0xc
	str     r2, [r1, #0x38]
	mov     r0, #0x0
	ldmfd   sp!, {r4-r9,lr}
	add     sp, sp, #0x10
	bx      lr
@ 0x22202e4

.arm
branch_22202e4: @ 22202e4 :arm
	ldr     r1, [r9, #0xc]
	ldr     r0, [sp, #0x8]
	add     r0, r1, r0
	str     r0, [r9, #0xc]
.arm
branch_22202f4: @ 22202f4 :arm
	cmp     r7, #0x2
	beq     branch_222022c
	b       branch_22203c0
@ 0x2220300

.arm
branch_2220300: @ 2220300 :arm
	ldr     r2, [r9, #0xc]
	ldr     r1, [sp, #0x30]
	ldr     r0, [r9, #0x8]
	add     r4, r2, r1
	cmp     r4, r0
	blt     branch_2220398
.arm
branch_2220318: @ 2220318 :arm
	ldr     r0, [r9, #0x18]
	cmp     r0, #0x0
	beq     branch_2220350
	ldr     r0, [r9]
	mov     r1, #0x1
	str     r1, [r0, #0xfc]
	ldr     r0, [r9]
	mov     r1, #0x2
	str     r1, [r0, #0x38]
	add     sp, sp, #0xc
	mov     r0, #0x0
	ldmfd   sp!, {r4-r9,lr}
	add     sp, sp, #0x10
	bx      lr
@ 0x2220350

.arm
branch_2220350: @ 2220350 :arm
	ldr     r1, [r9, #0x14]
	mov     r0, r9
	bl      Function_221fe2c
	cmp     r0, #0x0
	bne     branch_222038c
	ldr     r0, [r9]
	mov     r2, #0x1
	str     r2, [r0, #0xfc]
	ldr     r1, [r9]
	add     sp, sp, #0xc
	str     r2, [r1, #0x38]
	mov     r0, #0x0
	ldmfd   sp!, {r4-r9,lr}
	add     sp, sp, #0x10
	bx      lr
@ 0x222038c

.arm
branch_222038c: @ 222038c :arm
	ldr     r0, [r9, #0x8]
	cmp     r4, r0
	bge     branch_2220318
.arm
branch_2220398: @ 2220398 :arm
	ldr     r3, [r9, #0x4]
	ldr     r0, [r9, #0xc]
	ldr     r2, [sp, #0x30]
	mov     r1, r8
	add     r0, r3, r0
	bl      CopyDataInByteSteps
	str     r4, [r9, #0xc]
	ldr     r0, [r9, #0x4]
	mov     r1, #0x0
	strb    r1, [r0, r4]
.arm
branch_22203c0: @ 22203c0 :arm
	mov     r0, #0x1
	add     sp, sp, #0xc
	ldmfd   sp!, {r4-r9,lr}
	add     sp, sp, #0x10
	bx      lr
@ 0x22203d4

.word 0x2228fd4 @ 0x22203d4
.word 0x2228fdc @ 0x22203d8
.word 0x2228fa4 @ 0x22203dc
.word 0x2229034 @ 0x22203e0
.word 0x222903c @ 0x22203e4
.word 0x222904c @ 0x22203e8
.arm
Function_22203ec: @ 22203ec :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r4, r2
	mov     r2, #0x0
	mov     r5, r0
	bl      Function_2220130
	cmp     r0, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r5,pc}
	ldr     r1, [pc, #0x50] @ [0x2220464] (=0x2229088)
	mov     r0, r5
	mov     r2, #0x2
	bl      Function_2220130
	cmp     r0, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r5,pc}
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_2220130
	cmp     r0, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r5,pc}
	ldr     r1, [pc, #0x1c] @ [0x2220468] (=0x222908c)
	mov     r0, r5
	mov     r2, #0x2
	bl      Function_2220130
	cmp     r0, #0x0
	movne   r0, #0x1
	moveq   r0, #0x0
	ldmfd   sp!, {r3-r5,pc}
@ 0x2220464

.word 0x2229088 @ 0x2220464
.word 0x222908c @ 0x2220468
.arm
Function_222046c: @ 222046c :arm
	stmfd   sp!, {r3,r4,lr}
	sub     sp, sp, #0x4
	movs    r4, r0
	strb    r1, [sp]
	bne     branch_2220494
	ldr     r0, [pc, #0x34] @ [0x22204bc] (=0x2228fd4)
	ldr     r1, [pc, #0x34] @ [0x22204c0] (=0x2228fdc)
	ldr     r2, [pc, #0x34] @ [0x22204c4] (=0x2228f8c)
	ldr     r3, [pc, #0x34] @ [0x22204c8] (=0x131)
	bl      Function_20d407c
.arm
branch_2220494: @ 2220494 :arm
	cmp     r4, #0x0
	addeq   sp, sp, #0x4
	moveq   r0, #0x0
	ldmeqfd sp!, {r3,r4,pc}
	add     r1, sp, #0x0
	mov     r0, r4
	mov     r2, #0x1
	bl      Function_2220130
	add     sp, sp, #0x4
	ldmfd   sp!, {r3,r4,pc}
@ 0x22204bc

.word 0x2228fd4 @ 0x22204bc
.word 0x2228fdc @ 0x22204c0
.word 0x2228f8c @ 0x22204c4
.word 0x131 @ 0x22204c8
.arm
Function_22204cc: @ 22204cc :arm
	stmfd   sp!, {r4,lr}
	sub     sp, sp, #0x10
	mov     r2, r1
	mov     r4, r0
	ldr     r1, [pc, #0x1c] @ [0x2220500] (=0x2229090)
	add     r0, sp, #0x0
	bl      Function_20d7510
	add     r1, sp, #0x0
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_2220130
	add     sp, sp, #0x10
	ldmfd   sp!, {r4,pc}
@ 0x2220500

.word 0x2229090 @ 0x2220500
.arm
Function_2220504: @ 2220504 :arm
	stmfd   sp!, {r4,lr}
	movs    r4, r0
	bne     branch_2220524
	ldr     r0, [pc, #0x24] @ [0x222053c] (=0x2228fd4)
	ldr     r1, [pc, #0x24] @ [0x2220540] (=0x2228fdc)
	ldr     r2, [pc, #0x24] @ [0x2220544] (=0x2228f58)
	mov     r3, #91, 30 @ #0x16c
	bl      Function_20d407c
.arm
branch_2220524: @ 2220524 :arm
	mov     r1, #0x0
	str     r1, [r4, #0xc]
	str     r1, [r4, #0x10]
	ldr     r0, [r4, #0x4]
	strb    r1, [r0]
	ldmfd   sp!, {r4,pc}
@ 0x222053c

.word 0x2228fd4 @ 0x222053c
.word 0x2228fdc @ 0x2220540
.word 0x2228f58 @ 0x2220544
.arm
Function_2220548: @ 2220548 :arm
	stmfd   sp!, {r4-r8,lr}
	sub     sp, sp, #0x8
	mov     r7, r0
	mov     r6, #0x0
	add     r5, sp, #0x4
	add     r4, sp, #0x0
	mvn     r8, #0x0
.arm
branch_2220564: @ 2220564 :arm
	ldr     r0, [r7, #0x48]
	mov     r1, r6
	mov     r2, r5
	mov     r3, r4
	bl      0x21eaa74
	cmp     r0, r8
	beq     branch_222058c
	ldr     r0, [sp]
	cmp     r0, #0x0
	beq     branch_22205b4
.arm
branch_222058c: @ 222058c :arm
	mov     r0, #0x1
	str     r0, [r7, #0xfc]
	mov     r0, #0x5
	str     r0, [r7, #0x38]
	ldr     r0, [r7, #0x48]
	bl      0x21eaf38
	str     r0, [r7, #0x4c]
	add     sp, sp, #0x8
	mov     r0, #0x0
	ldmfd   sp!, {r4-r8,pc}
@ 0x22205b4

.arm
branch_22205b4: @ 22205b4 :arm
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	addeq   sp, sp, #0x8
	moveq   r0, #0x1
	ldmeqfd sp!, {r4-r8,pc}
	ldr     r3, [r7, #0x60]
	ldr     r1, [r7, #0x54]
	ldr     r2, [r7, #0x5c]
	mov     r0, r7
	add     r1, r1, r3
	sub     r2, r2, r3
	bl      Function_2220b90
	cmp     r0, r8
	addeq   sp, sp, #0x8
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r8,pc}
	ldr     r1, [r7, #0x60]
	add     r1, r1, r0
	str     r1, [r7, #0x60]
	ldr     r0, [r7, #0x5c]
	cmp     r1, r0
	blt     branch_2220564
	mov     r0, #0x1
	add     sp, sp, #0x8
	ldmfd   sp!, {r4-r8,pc}
@ 0x2220618

.arm
Function_2220618: @ 2220618 :arm
	stmfd   sp!, {r3-r7,lr}
	movs    r7, r0
	mov     r6, r1
	mov     r5, r2
	bne     branch_2220640
	ldr     r0, [pc, #0x8c] @ [0x22206c0] (=0x2229094)
	ldr     r1, [pc, #0x8c] @ [0x22206c4] (=0x2228fdc)
	ldr     r2, [pc, #0x8c] @ [0x22206c8] (=0x2228fbc)
	ldr     r3, [pc, #0x8c] @ [0x22206cc] (=0x1b7)
	bl      Function_20d407c
.arm
branch_2220640: @ 2220640 :arm
	cmp     r5, #0x0
	bne     branch_222065c
	ldr     r0, [pc, #0x80] @ [0x22206d0] (=0x22290a8)
	ldr     r1, [pc, #0x70] @ [0x22206c4] (=0x2228fdc)
	ldr     r2, [pc, #0x70] @ [0x22206c8] (=0x2228fbc)
	mov     r3, #110, 30 @ #0x1b8
	bl      Function_20d407c
.arm
branch_222065c: @ 222065c :arm
	ldr     r4, [r5]
	cmp     r4, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r7,pc}
	ldr     r3, [r7, #0x10]
	ldr     r0, [r7, #0xc]
	sub     r0, r0, r3
	cmp     r0, #0x0
	movle   r0, #0x0
	ldmlefd sp!, {r3-r7,pc}
	ldr     r1, [r7, #0x4]
	cmp     r4, r0
	movge   r4, r0
	mov     r0, r6
	mov     r2, r4
	add     r1, r1, r3
	bl      CopyDataInByteSteps
	mov     r0, #0x0
	strb    r0, [r6, r4]
	str     r4, [r5]
	ldr     r1, [r7, #0x10]
	mov     r0, #0x1
	add     r1, r1, r4
	str     r1, [r7, #0x10]
	ldmfd   sp!, {r3-r7,pc}
@ 0x22206c0

.word 0x2229094 @ 0x22206c0
.word 0x2228fdc @ 0x22206c4
.word 0x2228fbc @ 0x22206c8
.word 0x1b7 @ 0x22206cc
.word 0x22290a8 @ 0x22206d0
.arm
Function_22206d4: @ 22206d4 :arm
	stmfd   sp!, {r3-r5,lr}
	movs    r5, r0
	bne     branch_22206f4
	ldr     r0, [pc, #0x60] @ [0x2220748] (=0x22290fc)
	ldr     r1, [pc, #0x60] @ [0x222074c] (=0x2229108)
	ldr     r2, [pc, #0x60] @ [0x2220750] (=0x22290e0)
	mov     r3, #0x1b
	bl      Function_20d407c
.arm
branch_22206f4: @ 22206f4 :arm
	ldr     r12, [r5, #0x40]
	cmp     r12, #0x0
	ldmeqfd sp!, {r3-r5,pc}
	ldr     r0, [r5, #0xc]
	cmp     r0, #0x0
	movne   r4, #0x0
	movne   r3, r4
	ldreq   r4, [r5, #0xc0]
	ldreq   r3, [r5, #0x100]
	ldr     r0, [r5, #0x44]
	mov     r2, r4
	str     r0, [sp]
	ldr     r0, [r5, #0x4]
	ldr     r1, [r5, #0x38]
	blx     r12
	cmp     r4, #0x0
	ldmeqfd sp!, {r3-r5,pc}
	cmp     r0, #0x0
	moveq   r0, #0x1
	streq   r0, [r5, #0xd8]
	ldmfd   sp!, {r3-r5,pc}
@ 0x2220748

.word 0x22290fc @ 0x2220748
.word 0x2229108 @ 0x222074c
.word 0x22290e0 @ 0x2220750
.arm
Function_2220754: @ 2220754 :arm
	stmfd   sp!, {r3-r6,lr}
	sub     sp, sp, #0xc
	movs    r6, r0
	mov     r5, r1
	mov     r4, r2
	bne     branch_2220780
	ldr     r0, [pc, #0x50] @ [0x22207c4] (=0x22290fc)
	ldr     r1, [pc, #0x50] @ [0x22207c8] (=0x2229108)
	ldr     r2, [pc, #0x50] @ [0x22207cc] (=0x22290c8)
	mov     r3, #0x45
	bl      Function_20d407c
.arm
branch_2220780: @ 2220780 :arm
	ldr     r12, [r6, #0x3c]
	cmp     r12, #0x0
	addeq   sp, sp, #0xc
	ldmeqfd sp!, {r3-r6,pc}
	ldr     r0, [r6, #0x100]
	mov     r2, r5
	str     r0, [sp]
	ldr     r0, [r6, #0x104]
	mov     r3, r4
	str     r0, [sp, #0x4]
	ldr     r0, [r6, #0x44]
	str     r0, [sp, #0x8]
	ldr     r0, [r6, #0x4]
	ldr     r1, [r6, #0x10]
	blx     r12
	add     sp, sp, #0xc
	ldmfd   sp!, {r3-r6,pc}
@ 0x22207c4

.word 0x22290fc @ 0x22207c4
.word 0x2229108 @ 0x22207c8
.word 0x22290c8 @ 0x22207cc
.arm
Function_22207d0: @ 22207d0 :arm
	stmfd   sp!, {r4,lr}
	sub     sp, sp, #0x8
	movs    r4, r0
	bne     branch_22207f4
	ldr     r0, [pc, #0x50] @ [0x2220838] (=0x22290fc)
	ldr     r1, [pc, #0x50] @ [0x222083c] (=0x2229108)
	ldr     r2, [pc, #0x50] @ [0x2220840] (=0x22290b4)
	mov     r3, #0x5e
	bl      Function_20d407c
.arm
branch_22207f4: @ 22207f4 :arm
	ldr     r0, [r4, #0x150]
	cmp     r0, #0x0
	addeq   sp, sp, #0x8
	ldmeqfd sp!, {r4,pc}
	ldr     r0, [r4, #0x140]
	bl      0x21e9bbc
	str     r0, [sp]
	ldr     r0, [r4, #0x44]
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x4]
	ldr     r1, [r4, #0x148]
	ldr     r2, [r4, #0x14c]
	ldr     r3, [r4, #0x144]
	ldr     r12, [r4, #0x150]
	blx     r12
	add     sp, sp, #0x8
	ldmfd   sp!, {r4,pc}
@ 0x2220838

.word 0x22290fc @ 0x2220838
.word 0x2229108 @ 0x222083c
.word 0x22290b4 @ 0x2220840
.arm
Function_2220844: @ 2220844 :arm
	bx      lr
@ 0x2220848

.arm
Function_2220848: @ 2220848 :arm
	bx      lr
@ 0x222084c

.arm
Function_222084c: @ 222084c :arm
	bx      lr
@ 0x2220850

.arm
Function_2220850: @ 2220850 :arm
	bx      lr
@ 0x2220854

.arm
Function_2220854: @ 2220854 :arm
	stmfd   sp!, {r3-r7,lr}
	sub     sp, sp, #0x10
	mov     r1, #0x0
	mov     r7, r0
	str     r1, [sp, #0xc]
	str     r1, [sp, #0x8]
	add     r5, sp, #0x8
	add     r4, sp, #0xc
.arm
branch_2220874: @ 2220874 :arm
	ldr     r12, [r7, #0xa8]
	ldr     r0, [r7, #0xa4]
	ldr     r2, [r7, #0x9c]
	sub     r0, r0, r12
	str     r0, [sp, #0xc]
	ldr     r3, [r7, #0x80]
	ldr     r0, [r7, #0x7c]
	ldr     r1, [r7, #0x78]
	sub     r0, r0, r3
	str     r0, [sp, #0x8]
	add     r0, r1, r3
	stmea   sp, {r0,r5}
	ldr     r6, [r7, #0x180]
	mov     r0, r7
	mov     r3, r4
	add     r1, r7, #89, 30 @ #0x164
	add     r2, r2, r12
	blx     r6
	mov     r6, r0
	cmp     r6, #0x2
	bne     branch_22208e4
	ldr     r1, [r7, #0x88]
	add     r0, r7, #0x74
	bl      Function_221fe2c
	cmp     r0, #0x0
	addeq   sp, sp, #0x10
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r7,pc}
.arm
branch_22208e4: @ 22208e4 :arm
	cmp     r6, #0x2
	ldreq   r0, [sp, #0x8]
	cmpeq   r0, #0x0
	beq     branch_2220874
	ldr     r1, [r7, #0xa8]
	ldr     r0, [sp, #0xc]
	add     r0, r1, r0
	str     r0, [r7, #0xa8]
	ldr     r1, [r7, #0x80]
	ldr     r0, [sp, #0x8]
	add     r0, r1, r0
	str     r0, [r7, #0x80]
	ldr     r1, [r7, #0xa8]
	cmp     r1, #0xff
	ble     branch_2220954
	ldr     r0, [r7, #0xa4]
	subs    r4, r0, r1
	bne     branch_2220938
	add     r0, r7, #0x98
	bl      Function_2220504
	b       branch_2220954
@ 0x2220938

.arm
branch_2220938: @ 2220938 :arm
	ldr     r0, [r7, #0x9c]
	mov     r2, r4
	add     r1, r0, r1
	bl      Function_20d50d8
	mov     r0, #0x0
	str     r0, [r7, #0xa8]
	str     r4, [r7, #0xa4]
.arm
branch_2220954: @ 2220954 :arm
	cmp     r6, #0x3
	addne   sp, sp, #0x10
	mov     r0, #0x1
	ldmnefd sp!, {r3-r7,pc}
	str     r0, [r7, #0xfc]
	mov     r0, #0x11
	str     r0, [r7, #0x38]
	mov     r0, #0x0
	add     sp, sp, #0x10
	ldmfd   sp!, {r3-r7,pc}
@ 0x222097c

.arm
Function_222097c: @ 222097c :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r7, r0
	mov     r5, r2
	ldr     r2, [r5]
	ldr     r0, [r7, #0x134]
	mov     r6, r1
	cmp     r0, #0x0
	sub     r4, r2, #0x1
	beq     branch_22209d0
	bl      0x21ea840
	ldr     r1, [pc, #0x1e0] @ [0x2220b8c] (=0x222911c)
	ldr     r3, [r7, #0x138]
	ldr     r2, [r1]
	add     r2, r3, r2
	cmp     r0, r2
	movcc   r0, #0x1
	ldmccfd sp!, {r3-r7,pc}
	str     r0, [r7, #0x138]
	ldr     r0, [r1, #0x4]
	cmp     r4, r0
	movge   r4, r0
.arm
branch_22209d0: @ 22209d0 :arm
	ldr     r1, [r7, #0x84]
	ldr     r0, [r7, #0x80]
	cmp     r1, r0
	bge     branch_2220a18
	mov     r1, r6
	mov     r2, r5
	add     r0, r7, #0x74
	bl      Function_2220618
	ldr     r1, [r7, #0x84]
	ldr     r0, [r7, #0x80]
	cmp     r1, r0
	bne     branch_2220a10
	ldr     r0, [r7, #0xf8]
	str     r0, [r7, #0x80]
	ldr     r0, [r7, #0xf8]
	str     r0, [r7, #0x84]
.arm
branch_2220a10: @ 2220a10 :arm
	mov     r0, #0x0
	ldmfd   sp!, {r3-r7,pc}
@ 0x2220a18

.arm
branch_2220a18: @ 2220a18 :arm
	ldr     r0, [r7, #0x48]
	mov     r1, r6
	mov     r2, r4
	mov     r3, #0x0
	bl      0x21eae04
	mov     r2, r0
	mvn     r0, #0x0
	str     r2, [sp]
	cmp     r2, r0
	bne     branch_2220a88
	ldr     r0, [r7, #0x48]
	bl      0x21eaf38
	mvn     r2, #0x5
	cmp     r0, r2
	subne   r1, r2, #0x14
	cmpne   r0, r1
	subne   r1, r2, #0x46
	cmpne   r0, r1
	moveq   r0, #0x1
	ldmeqfd sp!, {r3-r7,pc}
	mov     r2, #0x1
	str     r2, [r7, #0xfc]
	mov     r1, #0x5
	str     r1, [r7, #0x38]
	str     r0, [r7, #0x4c]
	str     r2, [r7, #0x130]
	mov     r0, #0x3
	ldmfd   sp!, {r3-r7,pc}
@ 0x2220a88

.arm
branch_2220a88: @ 2220a88 :arm
	cmp     r2, #0x0
	bne     branch_2220aa0
	mov     r0, #0x1
	str     r0, [r7, #0x130]
	mov     r0, #0x2
	ldmfd   sp!, {r3-r7,pc}
@ 0x2220aa0

.arm
branch_2220aa0: @ 2220aa0 :arm
	ldr     r0, [r7, #0x168]
	cmp     r0, #0x0
	beq     branch_2220b6c
	mov     r1, r6
	add     r0, r7, #0x98
	bl      Function_2220130
	cmp     r0, #0x0
	moveq   r0, #0x3
	ldmeqfd sp!, {r3-r7,pc}
	mov     r0, r7
	bl      Function_2220854
	cmp     r0, #0x0
	bne     branch_2220aec
	mov     r0, #0x1
	str     r0, [r7, #0xfc]
	mov     r0, #0x11
	str     r0, [r7, #0x38]
	mov     r0, #0x3
	ldmfd   sp!, {r3-r7,pc}
@ 0x2220aec

.arm
branch_2220aec: @ 2220aec :arm
	ldr     r1, [r7, #0x80]
	ldr     r0, [r7, #0x84]
	sub     r0, r1, r0
	cmp     r0, #0x0
	bgt     branch_2220b14
	mov     r0, #0x0
	strb    r0, [r6]
	str     r0, [r5]
	mov     r0, #0x1
	ldmfd   sp!, {r3-r7,pc}
@ 0x2220b14

.arm
branch_2220b14: @ 2220b14 :arm
	ldr     r0, [r5]
	add     r2, sp, #0x0
	sub     r3, r0, #0x1
	mov     r1, r6
	add     r0, r7, #0x74
	str     r3, [sp]
	bl      Function_2220618
	cmp     r0, #0x0
	moveq   r0, #0x3
	ldmeqfd sp!, {r3-r7,pc}
	ldr     r1, [r7, #0x84]
	ldr     r0, [r7, #0x80]
	cmp     r1, r0
	bne     branch_2220b5c
	ldr     r0, [r7, #0xf8]
	str     r0, [r7, #0x80]
	ldr     r0, [r7, #0xf8]
	str     r0, [r7, #0x84]
.arm
branch_2220b5c: @ 2220b5c :arm
	ldr     r2, [sp]
	cmp     r2, #0x0
	movle   r0, #0x1
	ldmlefd sp!, {r3-r7,pc}
.arm
branch_2220b6c: @ 2220b6c :arm
	mov     r0, #0x0
	strb    r0, [r6, r2]
	ldr     r1, [sp]
	str     r1, [r5]
	ldr     r1, [sp]
	cmp     r1, #0x0
	movle   r0, #0x1
	ldmfd   sp!, {r3-r7,pc}
@ 0x2220b8c

.word 0x222911c @ 0x2220b8c
.arm
Function_2220b90: @ 2220b90 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x48]
	mov     r3, #0x0
	bl      0x21eae48
	mvn     r1, #0x0
	cmp     r0, r1
	bne     branch_2220bf4
	ldr     r0, [r4, #0x48]
	bl      0x21eaf38
	mvn     r2, #0x5
	cmp     r0, r2
	subne   r1, r2, #0x14
	cmpne   r0, r1
	subne   r1, r2, #0x46
	cmpne   r0, r1
	moveq   r0, #0x0
	ldmeqfd sp!, {r4,pc}
	mov     r1, #0x1
	str     r1, [r4, #0xfc]
	mov     r1, #0x5
	str     r1, [r4, #0x38]
	str     r0, [r4, #0x4c]
	sub     r0, r1, #0x6
	ldmfd   sp!, {r4,pc}
@ 0x2220bf4

.arm
branch_2220bf4: @ 2220bf4 :arm
	ldr     r1, [r4, #0x10]
	cmp     r1, #0x4
	ldreq   r1, [r4, #0x148]
	addeq   r1, r1, r0
	streq   r1, [r4, #0x148]
	ldmfd   sp!, {r4,pc}
@ 0x2220c0c

.arm
Function_2220c0c: @ 2220c0c :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0
	ldr     r3, [r6, #0x5c]
	mov     r5, r1
	mov     r4, r2
	cmp     r3, #0x0
	mov     r3, #0x0
	bne     branch_2220c50
	bl      Function_2220b90
	mov     r3, r0
	mvn     r0, #0x0
	cmp     r3, r0
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r6,pc}
	cmp     r3, r4
	moveq   r0, #0x1
	ldmeqfd sp!, {r4-r6,pc}
.arm
branch_2220c50: @ 2220c50 :arm
	add     r0, r6, #0x50
	add     r1, r5, r3
	sub     r2, r4, r3
	bl      Function_2220130
	cmp     r0, #0x0
	moveq   r0, #0x0
	movne   r0, #0x2
	ldmfd   sp!, {r4-r6,pc}
@ 0x2220c70

.arm
Function_2220c70: @ 2220c70 :arm
	stmfd   sp!, {r3-r9,lr}
	ldr     r1, [pc, #0x100] @ [0x2220d7c] (=0x2229e2c)
	mov     r0, #0x0
	ldr     r3, [r1, #0xc]
	cmp     r3, #0x0
	ble     branch_2220ca8
	ldr     r2, [r1, #0x4]
.arm
branch_2220c8c: @ 2220c8c :arm
	ldr     r1, [r2, r0, lsl #0x2]
	ldr     r1, [r1]
	cmp     r1, #0x0
	ldmeqfd sp!, {r3-r9,pc}
	add     r0, r0, #0x1
	cmp     r0, r3
	blt     branch_2220c8c
.arm
branch_2220ca8: @ 2220ca8 :arm
	ldr     r0, [pc, #0xcc] @ [0x2220d7c] (=0x2229e2c)
	ldr     r0, [r0]
	cmp     r0, r3
	beq     branch_2220ccc
	ldr     r0, [pc, #0xc0] @ [0x2220d80] (=0x2229178)
	ldr     r1, [pc, #0xc0] @ [0x2220d84] (=0x22291a0)
	ldr     r2, [pc, #0xc0] @ [0x2220d88] (=0x2229124)
	mov     r3, #0x33
	bl      Function_20d407c
.arm
branch_2220ccc: @ 2220ccc :arm
	ldr     r0, [pc, #0xa8] @ [0x2220d7c] (=0x2229e2c)
	ldr     r6, [r0, #0xc]
	ldr     r0, [r0, #0x4]
	add     r5, r6, #0x4
	mov     r1, r5, lsl #2
	bl      0x21d7894
	cmp     r0, #0x0
	mvneq   r0, #0x0
	ldmeqfd sp!, {r3-r9,pc}
	ldr     r8, [pc, #0x84] @ [0x2220d7c] (=0x2229e2c)
	mov     r7, r6
	str     r0, [r8, #0x4]
	cmp     r6, r5
	bge     branch_2220d6c
	mov     r9, #0x0
	mov     r4, #97, 30 @ #0x184
.arm
branch_2220d0c: @ 2220d0c :arm
	mov     r0, r4
	bl      0x21d7880
	ldr     r1, [r8, #0x4]
	str     r0, [r1, r7, lsl #0x2]
	ldr     r0, [r8, #0x4]
	ldr     r0, [r0, r7, lsl #0x2]
	cmp     r0, #0x0
	bne     branch_2220d5c
	sub     r7, r7, #0x1
	cmp     r7, r6
	blt     branch_2220d54
	ldr     r4, [pc, #0x3c] @ [0x2220d7c] (=0x2229e2c)
.arm
branch_2220d3c: @ 2220d3c :arm
	ldr     r0, [r4, #0x4]
	ldr     r0, [r0, r7, lsl #0x2]
	bl      0x21d78b0
	sub     r7, r7, #0x1
	cmp     r7, r6
	bge     branch_2220d3c
.arm
branch_2220d54: @ 2220d54 :arm
	mvn     r0, #0x0
	ldmfd   sp!, {r3-r9,pc}
@ 0x2220d5c

.arm
branch_2220d5c: @ 2220d5c :arm
	add     r7, r7, #0x1
	str     r9, [r0]
	cmp     r7, r5
	blt     branch_2220d0c
.arm
branch_2220d6c: @ 2220d6c :arm
	ldr     r1, [pc, #0x8] @ [0x2220d7c] (=0x2229e2c)
	mov     r0, r6
	str     r5, [r1, #0xc]
	ldmfd   sp!, {r3-r9,pc}
@ 0x2220d7c

.word 0x2229e2c @ 0x2220d7c
.word 0x2229178 @ 0x2220d80
.word 0x22291a0 @ 0x2220d84
.word 0x2229124 @ 0x2220d88
.arm
Function_2220d8c: @ 2220d8c :arm
	stmfd   sp!, {r3-r5,lr}
	bl      Function_222084c
	bl      Function_2220c70
	mov     r5, r0
	mvn     r0, #0x0
	cmp     r5, r0
	bne     branch_2220db4
	bl      Function_2220850
	mov     r0, #0x0
	ldmfd   sp!, {r3-r5,pc}
@ 0x2220db4

.arm
branch_2220db4: @ 2220db4 :arm
	ldr     r0, [pc, #0x164] @ [0x2220f20] (=0x2229e2c)
	mov     r1, #0x0
	ldr     r0, [r0, #0x4]
	mov     r2, #97, 30 @ #0x184
	ldr     r4, [r0, r5, lsl #0x2]
	mov     r0, r4
	bl      Call_FillMemWithValue
	mov     r0, #0x1
	str     r0, [r4]
	ldr     r0, [pc, #0x140] @ [0x2220f20] (=0x2229e2c)
	str     r5, [r4, #0x4]
	ldr     r2, [r0, #0x8]
	mov     r12, #0x0
	add     r1, r2, #0x1
	str     r1, [r0, #0x8]
	str     r2, [r4, #0x8]
	str     r12, [r4, #0xc]
	str     r12, [r4, #0x10]
	str     r12, [r4, #0x14]
	str     r12, [r4, #0x18]
	str     r12, [r4, #0x1c]
	strh    r12, [r4, #0x20]
	str     r12, [r4, #0x24]
	str     r12, [r4, #0x28]
	str     r12, [r4, #0x2c]
	str     r12, [r4, #0x30]
	str     r12, [r4, #0x34]
	str     r12, [r4, #0x38]
	str     r12, [r4, #0x3c]
	str     r12, [r4, #0x40]
	str     r12, [r4, #0x44]
	sub     r0, r12, #0x1
	str     r0, [r4, #0x48]
	str     r12, [r4, #0x4c]
	str     r12, [r4, #0xe0]
	str     r12, [r4, #0xe4]
	str     r12, [r4, #0xe8]
	str     r12, [r4, #0xec]
	str     r12, [r4, #0xf0]
	str     r12, [r4, #0xf4]
	str     r12, [r4, #0xf8]
	str     r12, [r4, #0xfc]
	str     r12, [r4, #0x100]
	str     r0, [r4, #0x104]
	str     r12, [r4, #0x108]
	str     r12, [r4, #0x10c]
	str     r12, [r4, #0x110]
	str     r12, [r4, #0x12c]
	str     r12, [r4, #0x134]
	str     r12, [r4, #0x138]
	str     r12, [r4, #0x13c]
	mov     r0, #125, 30 @ #0x1f4
	str     r0, [r4, #0x158]
	add     r0, r4, #1, 24 @ #0x100
	mov     r1, #0x50
	strh    r1, [r0, #0x60]
	str     r12, [r4, #0x15c]
	mov     r0, r4
	add     r1, r4, #0x50
	mov     r2, #2, 22 @ #0x800
	mov     r3, #1, 20 @ #0x1000
	str     r12, [r4, #0x164]
	bl      Function_221feb8
	cmp     r0, #0x0
	beq     branch_2220ecc
	mov     r2, #2, 22 @ #0x800
	mov     r0, r4
	mov     r3, r2
	add     r1, r4, #0x74
	bl      Function_221feb8
.arm
branch_2220ecc: @ 2220ecc :arm
	cmp     r0, #0x0
	beq     branch_2220ee8
	mov     r0, r4
	add     r1, r4, #0x98
	mov     r2, #2, 22 @ #0x800
	mov     r3, #1, 22 @ #0x400
	bl      Function_221feb8
.arm
branch_2220ee8: @ 2220ee8 :arm
	cmp     r0, #0x0
	bne     branch_2220f04
	mov     r0, r4
	bl      Function_2220f24
	bl      Function_2220850
	mov     r0, #0x0
	ldmfd   sp!, {r3-r5,pc}
@ 0x2220f04

.arm
branch_2220f04: @ 2220f04 :arm
	ldr     r0, [pc, #0x14] @ [0x2220f20] (=0x2229e2c)
	ldr     r1, [r0]
	add     r1, r1, #0x1
	str     r1, [r0]
	bl      Function_2220850
	mov     r0, r4
	ldmfd   sp!, {r3-r5,pc}
@ 0x2220f20

.word 0x2229e2c @ 0x2220f20
.arm
Function_2220f24: @ 2220f24 :arm
	stmfd   sp!, {r4,lr}
	movs    r4, r0
	bne     branch_2220f44
	ldr     r0, [pc, #0x1b4] @ [0x22210ec] (=0x22291b4)
	ldr     r1, [pc, #0x1b4] @ [0x22210f0] (=0x22291a0)
	ldr     r2, [pc, #0x1b4] @ [0x22210f4] (=0x2229134)
	mov     r3, #0xb3
	bl      Function_20d407c
.arm
branch_2220f44: @ 2220f44 :arm
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	bge     branch_2220f64
	ldr     r0, [pc, #0x1a0] @ [0x22210f8] (=0x22291c0)
	ldr     r1, [pc, #0x194] @ [0x22210f0] (=0x22291a0)
	ldr     r2, [pc, #0x194] @ [0x22210f4] (=0x2229134)
	mov     r3, #0xb4
	bl      Function_20d407c
.arm
branch_2220f64: @ 2220f64 :arm
	ldr     r0, [pc, #0x190] @ [0x22210fc] (=0x2229e2c)
	ldr     r1, [r4, #0x4]
	ldr     r0, [r0, #0xc]
	cmp     r1, r0
	blt     branch_2220f8c
	ldr     r0, [pc, #0x180] @ [0x2221100] (=0x22291dc)
	ldr     r1, [pc, #0x16c] @ [0x22210f0] (=0x22291a0)
	ldr     r2, [pc, #0x16c] @ [0x22210f4] (=0x2229134)
	mov     r3, #0xb5
	bl      Function_20d407c
.arm
branch_2220f8c: @ 2220f8c :arm
	ldr     r0, [r4]
	cmp     r0, #0x0
	bne     branch_2220fac
	ldr     r0, [pc, #0x164] @ [0x2221104] (=0x2229204)
	ldr     r1, [pc, #0x14c] @ [0x22210f0] (=0x22291a0)
	ldr     r2, [pc, #0x14c] @ [0x22210f4] (=0x2229134)
	mov     r3, #0xb6
	bl      Function_20d407c
.arm
branch_2220fac: @ 2220fac :arm
	cmp     r4, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r4,pc}
	ldr     r0, [r4]
	cmp     r0, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r4,pc}
	ldr     r1, [r4, #0x4]
	cmp     r1, #0x0
	movlt   r0, #0x0
	ldmltfd sp!, {r4,pc}
	ldr     r0, [pc, #0x11c] @ [0x22210fc] (=0x2229e2c)
	ldr     r0, [r0, #0xc]
	cmp     r1, r0
	movge   r0, #0x0
	ldmgefd sp!, {r4,pc}
	bl      Function_222084c
	ldr     r0, [r4, #0x14]
	bl      0x21d78b0
	ldr     r0, [r4, #0x18]
	bl      0x21d78b0
	ldr     r0, [r4, #0x24]
	bl      0x21d78b0
	ldr     r0, [r4, #0x28]
	bl      0x21d78b0
	ldr     r0, [r4, #0x108]
	bl      0x21d78b0
	ldr     r0, [r4, #0x15c]
	bl      0x21d78b0
	ldr     r0, [r4, #0x48]
	mvn     r1, #0x0
	cmp     r0, r1
	beq     branch_2221040
	mov     r1, #0x2
	bl      0x21ead04
	ldr     r0, [r4, #0x48]
	bl      0x21eacf0
.arm
branch_2221040: @ 2221040 :arm
	add     r0, r4, #0x50
	bl      Function_22200d0
	add     r0, r4, #0x74
	bl      Function_22200d0
	add     r0, r4, #0x98
	bl      Function_22200d0
	add     r0, r4, #0xbc
	bl      Function_22200d0
	ldr     r0, [r4, #0x140]
	cmp     r0, #0x0
	beq     branch_2221074
	mov     r0, r4
	bl      Function_2221edc
.arm
branch_2221074: @ 2221074 :arm
	ldr     r0, [r4, #0x13c]
	cmp     r0, #0x0
	beq     branch_222109c
	bl      Function_2221900
	cmp     r0, #0x0
	beq     branch_222109c
	ldr     r0, [r4, #0x13c]
	bl      Function_2221908
	mov     r0, #0x0
	str     r0, [r4, #0x13c]
.arm
branch_222109c: @ 222109c :arm
	ldr     r0, [r4, #0x16c]
	cmp     r0, #0x0
	beq     branch_22210c8
	ldr     r2, [r4, #0x178]
	cmp     r2, #0x0
	beq     branch_22210c0
	mov     r0, r4
	add     r1, r4, #89, 30 @ #0x164
	blx     r2
.arm
branch_22210c0: @ 22210c0 :arm
	mov     r0, #0x0
	str     r0, [r4, #0x16c]
.arm
branch_22210c8: @ 22210c8 :arm
	mov     r1, #0x0
	ldr     r0, [pc, #0x28] @ [0x22210fc] (=0x2229e2c)
	str     r1, [r4]
	ldr     r1, [r0]
	sub     r1, r1, #0x1
	str     r1, [r0]
	bl      Function_2220850
	mov     r0, #0x1
	ldmfd   sp!, {r4,pc}
@ 0x22210ec

.word 0x22291b4 @ 0x22210ec
.word 0x22291a0 @ 0x22210f0
.word 0x2229134 @ 0x22210f4
.word 0x22291c0 @ 0x22210f8
.word 0x2229e2c @ 0x22210fc
.word 0x22291dc @ 0x2221100
.word 0x2229204 @ 0x2221104
.arm
Function_2221108: @ 2221108 :arm
	stmfd   sp!, {r4,lr}
	movs    r4, r0
	bpl     branch_2221128
	ldr     r0, [pc, #0x78] @ [0x2221194] (=0x2229218)
	ldr     r1, [pc, #0x78] @ [0x2221198] (=0x22291a0)
	ldr     r2, [pc, #0x78] @ [0x222119c] (=0x2229160)
	ldr     r3, [pc, #0x78] @ [0x22211a0] (=0x101)
	bl      Function_20d407c
.arm
branch_2221128: @ 2221128 :arm
	ldr     r0, [pc, #0x74] @ [0x22211a4] (=0x2229e2c)
	ldr     r0, [r0, #0xc]
	cmp     r4, r0
	blt     branch_222114c
	ldr     r0, [pc, #0x68] @ [0x22211a8] (=0x2229228)
	ldr     r1, [pc, #0x54] @ [0x2221198] (=0x22291a0)
	ldr     r2, [pc, #0x54] @ [0x222119c] (=0x2229160)
	ldr     r3, [pc, #0x60] @ [0x22211ac] (=0x102)
	bl      Function_20d407c
.arm
branch_222114c: @ 222114c :arm
	bl      Function_222084c
	cmp     r4, #0x0
	blt     branch_2221168
	ldr     r0, [pc, #0x44] @ [0x22211a4] (=0x2229e2c)
	ldr     r1, [r0, #0xc]
	cmp     r4, r1
	blt     branch_2221174
.arm
branch_2221168: @ 2221168 :arm
	bl      Function_2220850
	mov     r0, #0x0
	ldmfd   sp!, {r4,pc}
@ 0x2221174

.arm
branch_2221174: @ 2221174 :arm
	ldr     r0, [r0, #0x4]
	ldr     r4, [r0, r4, lsl #0x2]
	ldr     r0, [r4]
	cmp     r0, #0x0
	moveq   r4, #0x0
	bl      Function_2220850
	mov     r0, r4
	ldmfd   sp!, {r4,pc}
@ 0x2221194

.word 0x2229218 @ 0x2221194
.word 0x22291a0 @ 0x2221198
.word 0x2229160 @ 0x222119c
.word 0x101 @ 0x22211a0
.word 0x2229e2c @ 0x22211a4
.word 0x2229228 @ 0x22211a8
.word 0x102 @ 0x22211ac
.arm
Function_22211b0: @ 22211b0 :arm
	stmfd   sp!, {r4-r6,lr}
	ldr     r1, [pc, #0x54] @ [0x2221210] (=0x2229e2c)
	mov     r4, r0
	ldr     r0, [r1]
	cmp     r0, #0x0
	ldmlefd sp!, {r4-r6,pc}
	bl      Function_222084c
	ldr     r5, [pc, #0x3c] @ [0x2221210] (=0x2229e2c)
	mov     r6, #0x0
	ldr     r0, [r5, #0xc]
	cmp     r0, #0x0
	ble     branch_2221208
.arm
branch_22211e0: @ 22211e0 :arm
	ldr     r0, [r5, #0x4]
	ldr     r0, [r0, r6, lsl #0x2]
	ldr     r1, [r0]
	cmp     r1, #0x0
	beq     branch_22211f8
	blx     r4
.arm
branch_22211f8: @ 22211f8 :arm
	ldr     r0, [r5, #0xc]
	add     r6, r6, #0x1
	cmp     r6, r0
	blt     branch_22211e0
.arm
branch_2221208: @ 2221208 :arm
	bl      Function_2220850
	ldmfd   sp!, {r4-r6,pc}
@ 0x2221210

.word 0x2229e2c @ 0x2221210
.arm
Function_2221214: @ 2221214 :arm
	stmfd   sp!, {r4,lr}
	movs    r4, r0
	bne     branch_2221234
	ldr     r0, [pc, #0xd8] @ [0x2221300] (=0x22291b4)
	ldr     r1, [pc, #0xd8] @ [0x2221304] (=0x22291a0)
	ldr     r2, [pc, #0xd8] @ [0x2221308] (=0x2229148)
	ldr     r3, [pc, #0xd8] @ [0x222130c] (=0x132)
	bl      Function_20d407c
.arm
branch_2221234: @ 2221234 :arm
	ldr     r0, [r4, #0x108]
	cmp     r0, #0x0
	bne     branch_2221254
	ldr     r0, [pc, #0xc8] @ [0x2221310] (=0x2229244)
	ldr     r1, [pc, #0xb8] @ [0x2221304] (=0x22291a0)
	ldr     r2, [pc, #0xb8] @ [0x2221308] (=0x2229148)
	ldr     r3, [pc, #0xc0] @ [0x2221314] (=0x133)
	bl      Function_20d407c
.arm
branch_2221254: @ 2221254 :arm
	mov     r0, #0x0
	str     r0, [r4, #0x10]
	ldr     r0, [r4, #0x14]
	bl      0x21d78b0
	ldr     r1, [r4, #0x108]
	mov     r0, #0x0
	str     r1, [r4, #0x14]
	str     r0, [r4, #0x108]
	ldr     r0, [r4, #0x18]
	bl      0x21d78b0
	mov     r0, #0x0
	str     r0, [r4, #0x18]
	str     r0, [r4, #0x1c]
	strh    r0, [r4, #0x20]
	ldr     r0, [r4, #0x24]
	bl      0x21d78b0
	mov     r0, #0x0
	str     r0, [r4, #0x24]
	ldr     r0, [r4, #0x48]
	mov     r1, #0x2
	bl      0x21ead04
	ldr     r0, [r4, #0x48]
	bl      0x21eacf0
	mvn     r1, #0x0
	add     r0, r4, #0x50
	str     r1, [r4, #0x48]
	bl      Function_2220504
	add     r0, r4, #0x74
	bl      Function_2220504
	add     r0, r4, #0x98
	bl      Function_2220504
	mov     r0, #0x0
	str     r0, [r4, #0xe4]
	str     r0, [r4, #0xe8]
	str     r0, [r4, #0xec]
	str     r0, [r4, #0xf0]
	str     r0, [r4, #0xf4]
	str     r0, [r4, #0xf8]
	str     r0, [r4, #0x130]
	ldr     r0, [r4, #0x10c]
	add     r0, r0, #0x1
	str     r0, [r4, #0x10c]
	ldmfd   sp!, {r4,pc}
@ 0x2221300

.word 0x22291b4 @ 0x2221300
.word 0x22291a0 @ 0x2221304
.word 0x2229148 @ 0x2221308
.word 0x132 @ 0x222130c
.word 0x2229244 @ 0x2221310
.word 0x133 @ 0x2221314
.arm
Function_2221318: @ 2221318 :arm
	stmfd   sp!, {r3-r5,lr}
	ldr     r0, [pc, #0x64] @ [0x2221388] (=0x2229e2c)
	ldr     r0, [r0, #0x4]
	cmp     r0, #0x0
	ldmeqfd sp!, {r3-r5,pc}
	ldr     r0, [pc, #0x58] @ [0x222138c] (=0x2220f24)
	bl      Function_22211b0
	ldr     r4, [pc, #0x4c] @ [0x2221388] (=0x2229e2c)
	mov     r5, #0x0
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x0
	ble     branch_2221364
.arm
branch_2221348: @ 2221348 :arm
	ldr     r0, [r4, #0x4]
	ldr     r0, [r0, r5, lsl #0x2]
	bl      0x21d78b0
	ldr     r0, [r4, #0xc]
	add     r5, r5, #0x1
	cmp     r5, r0
	blt     branch_2221348
.arm
branch_2221364: @ 2221364 :arm
	ldr     r0, [pc, #0x1c] @ [0x2221388] (=0x2229e2c)
	ldr     r0, [r0, #0x4]
	bl      0x21d78b0
	ldr     r0, [pc, #0x10] @ [0x2221388] (=0x2229e2c)
	mov     r1, #0x0
	str     r1, [r0, #0x4]
	str     r1, [r0, #0xc]
	str     r1, [r0]
	ldmfd   sp!, {r3-r5,pc}
@ 0x2221388

.word 0x2229e2c @ 0x2221388
.word Function_2220f24 @ =0x2220f24, 0x222138c
.arm
Function_2221390: @ 2221390 :arm
	stmfd   sp!, {r3,lr}
	ldr     lr, [r0, #0xec]
	ldr     r3, [pc, #0xa8] @ [0x2221448] (=0x51eb851f)
	mov     r1, lr, lsr #31
	smull   r2, r12, r3, lr
	add     r12, r1, r12, asr #5
	cmp     r12, #0x5
	addls   pc, pc, r12, lsl #2
	ldmfd   sp!, {r3,pc}
@ 0x22213b4

.arm
Function_22213b4: @ 22213b4 :arm
	ldmfd   sp!, {r3,pc}
@ 0x22213b8

.arm
Function_22213b8: @ 22213b8 :arm
	b       branch_22213cc
@ 0x22213bc

.arm
Function_22213bc: @ 22213bc :arm
	b       branch_22213cc
@ 0x22213c0

.arm
Function_22213c0: @ 22213c0 :arm
	b       branch_22213cc
@ 0x22213c4

.arm
Function_22213c4: @ 22213c4 :arm
	b       branch_22213d0
@ 0x22213c8

.arm
Function_22213c8: @ 22213c8 :arm
	b       branch_222143c
@ 0x22213cc

.arm
branch_22213cc: @ 22213cc :arm
	ldmfd   sp!, {r3,pc}
@ 0x22213d0

.arm
branch_22213d0: @ 22213d0 :arm
	sub     r1, lr, #0x91
	sub     r1, r1, #1, 24 @ #0x100
	cmp     r1, #0x9
	addls   pc, pc, r1, lsl #2
	b       branch_2221430
@ 0x22213e4

.arm
Function_22213e4: @ 22213e4 :arm
	b       branch_222140c
@ 0x22213e8

.arm
Function_22213e8: @ 22213e8 :arm
	b       branch_2221430
@ 0x22213ec

.arm
Function_22213ec: @ 22213ec :arm
	b       branch_2221418
@ 0x22213f0

.arm
Function_22213f0: @ 22213f0 :arm
	b       branch_2221424
@ 0x22213f4

.arm
Function_22213f4: @ 22213f4 :arm
	b       branch_2221430
@ 0x22213f8

.arm
Function_22213f8: @ 22213f8 :arm
	b       branch_2221430
@ 0x22213fc

.arm
Function_22213fc: @ 22213fc :arm
	b       branch_2221430
@ 0x2221400

.arm
Function_2221400: @ 2221400 :arm
	b       branch_2221430
@ 0x2221404

.arm
Function_2221404: @ 2221404 :arm
	b       branch_2221430
@ 0x2221408

.arm
Function_2221408: @ 2221408 :arm
	b       branch_2221424
@ 0x222140c

.arm
branch_222140c: @ 222140c :arm
	mov     r1, #0x9
	str     r1, [r0, #0x38]
	ldmfd   sp!, {r3,pc}
@ 0x2221418

.arm
branch_2221418: @ 2221418 :arm
	mov     r1, #0xa
	str     r1, [r0, #0x38]
	ldmfd   sp!, {r3,pc}
@ 0x2221424

.arm
branch_2221424: @ 2221424 :arm
	mov     r1, #0xb
	str     r1, [r0, #0x38]
	ldmfd   sp!, {r3,pc}
@ 0x2221430

.arm
branch_2221430: @ 2221430 :arm
	mov     r1, #0x8
	str     r1, [r0, #0x38]
	ldmfd   sp!, {r3,pc}
@ 0x222143c

.arm
branch_222143c: @ 222143c :arm
	mov     r1, #0xc
	str     r1, [r0, #0x38]
	ldmfd   sp!, {r3,pc}
@ 0x2221448

.word 0x51eb851f @ 0x2221448
.arm
Function_222144c: @ 222144c :arm
	stmfd   sp!, {r3-r5,lr}
	movs    r4, r0
	bne     branch_222146c
	ldr     r0, [pc, #0x144] @ [0x22215a4] (=0x2229280)
	ldr     r1, [pc, #0x144] @ [0x22215a8] (=0x222928c)
	ldr     r2, [pc, #0x144] @ [0x22215ac] (=0x2229268)
	mov     r3, #0x5b
	bl      Function_20d407c
.arm
branch_222146c: @ 222146c :arm
	ldr     r0, [r4, #0x4]
	bl      Function_2221108
	cmp     r0, r4
	beq     branch_2221490
	ldr     r0, [pc, #0x12c] @ [0x22215b0] (=0x2229298)
	ldr     r1, [pc, #0x120] @ [0x22215a8] (=0x222928c)
	ldr     r2, [pc, #0x120] @ [0x22215ac] (=0x2229268)
	mov     r3, #0x5c
	bl      Function_20d407c
.arm
branch_2221490: @ 2221490 :arm
	ldr     r0, [r4, #0x12c]
	cmp     r0, #0x0
	movne   r0, #0x0
	ldmnefd sp!, {r3-r5,pc}
	mov     r0, #0x1
	str     r0, [r4, #0x12c]
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x0
	bne     branch_22214bc
	mov     r0, r4
	bl      Function_22229b0
.arm
branch_22214bc: @ 22214bc :arm
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x1
	bne     branch_22214d0
	mov     r0, r4
	bl      Function_2222a74
.arm
branch_22214d0: @ 22214d0 :arm
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x2
	bne     branch_22214e4
	mov     r0, r4
	bl      Function_2222cc4
.arm
branch_22214e4: @ 22214e4 :arm
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x3
	bne     branch_22214f8
	mov     r0, r4
	bl      Function_2222e24
.arm
branch_22214f8: @ 22214f8 :arm
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x4
	bne     branch_222150c
	mov     r0, r4
	bl      Function_2223098
.arm
branch_222150c: @ 222150c :arm
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x5
	bne     branch_2221520
	mov     r0, r4
	bl      Function_2223130
.arm
branch_2221520: @ 2221520 :arm
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x6
	bne     branch_2221534
	mov     r0, r4
	bl      Function_22232fc
.arm
branch_2221534: @ 2221534 :arm
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x7
	bne     branch_2221548
	mov     r0, r4
	bl      Function_2223838
.arm
branch_2221548: @ 2221548 :arm
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x8
	bne     branch_222155c
	mov     r0, r4
	bl      Function_2223ca8
.arm
branch_222155c: @ 222155c :arm
	ldr     r0, [r4, #0x108]
	cmp     r0, #0x0
	beq     branch_2221570
	mov     r0, r4
	bl      Function_2221214
.arm
branch_2221570: @ 2221570 :arm
	ldr     r5, [r4, #0xfc]
	cmp     r5, #0x0
	moveq   r0, #0x0
	streq   r0, [r4, #0x12c]
	beq     branch_222159c
	mov     r0, r4
	bl      Function_2221390
	mov     r0, r4
	bl      Function_22206d4
	mov     r0, r4
	bl      Function_2220f24
.arm
branch_222159c: @ 222159c :arm
	mov     r0, r5
	ldmfd   sp!, {r3-r5,pc}
@ 0x22215a4

.word 0x2229280 @ 0x22215a4
.word 0x222928c @ 0x22215a8
.word 0x2229268 @ 0x22215ac
.word 0x2229298 @ 0x22215b0
.arm
Function_22215b4: @ 22215b4 :arm
	stmfd   sp!, {r3,lr}
	bl      Function_222084c
	ldr     r0, [pc, #0x38] @ [0x22215fc] (=0x2229e3c)
	ldr     r1, [r0]
	add     r1, r1, #0x1
	str     r1, [r0]
	cmp     r1, #0x1
	bne     branch_22215f4
	bl      Function_2220844
	ldr     r0, [pc, #0x20] @ [0x2221600] (=0x222911c)
	mov     r2, #0xfa
	ldr     r1, [pc, #0x1c] @ [0x2221604] (=0x2229120)
	mov     r3, #0x7d
	str     r2, [r0]
	str     r3, [r1]
	ldmfd   sp!, {r3,pc}
@ 0x22215f4

.arm
branch_22215f4: @ 22215f4 :arm
	bl      Function_2220850
	ldmfd   sp!, {r3,pc}
@ 0x22215fc

.word 0x2229e3c @ 0x22215fc
.word 0x222911c @ 0x2221600
.word 0x2229120 @ 0x2221604
.arm
Function_2221608: @ 2221608 :arm
	stmfd   sp!, {r3,lr}
	bl      Function_222084c
	ldr     r0, [pc, #0x44] @ [0x222165c] (=0x2229e3c)
	ldr     r1, [r0]
	subs    r1, r1, #0x1
	str     r1, [r0]
	bne     branch_2221654
	bl      Function_2221318
	ldr     r0, [pc, #0x30] @ [0x2221660] (=0x2229e28)
	ldr     r0, [r0]
	cmp     r0, #0x0
	beq     branch_2221648
	bl      0x21d78b0
	ldr     r0, [pc, #0x1c] @ [0x2221660] (=0x2229e28)
	mov     r1, #0x0
	str     r1, [r0]
.arm
branch_2221648: @ 2221648 :arm
	bl      Function_2220850
	bl      Function_2220848
	ldmfd   sp!, {r3,pc}
@ 0x2221654

.arm
branch_2221654: @ 2221654 :arm
	bl      Function_2220850
	ldmfd   sp!, {r3,pc}
@ 0x222165c

.word 0x2229e3c @ 0x222165c
.word 0x2229e28 @ 0x2221660
.arm
Function_2221664: @ 2221664 :arm
	stmfd   sp!, {r3,lr}
	sub     sp, sp, #0x18
	mov     r12, #0x0
	str     r12, [sp]
	str     r12, [sp, #0x4]
	str     r1, [sp, #0x8]
	str     r12, [sp, #0xc]
	str     r2, [sp, #0x10]
	str     r3, [sp, #0x14]
	mov     r1, r12
	mov     r2, r12
	mov     r3, r12
	bl      Function_22216a0
	add     sp, sp, #0x18
	ldmfd   sp!, {r3,pc}
@ 0x22216a0

.arm
Function_22216a0: @ 22216a0 :arm
	stmfd   sp!, {r4-r8,lr}
	movs    r8, r0
	ldrnesb r0, [r8]
	mov     r7, r1
	mov     r6, r2
	mov     r5, r3
	cmpne   r0, #0x0
	bne     branch_22216d4
	ldr     r0, [pc, #0x204] @ [0x22218cc] (=0x22292d4)
	ldr     r1, [pc, #0x204] @ [0x22218d0] (=0x222928c)
	ldr     r2, [pc, #0x204] @ [0x22218d4] (=0x222925c)
	mov     r3, #74, 30 @ #0x128
	bl      Function_20d407c
.arm
branch_22216d4: @ 22216d4 :arm
	cmp     r5, #0x0
	bge     branch_22216f0
	ldr     r0, [pc, #0x1f4] @ [0x22218d8] (=0x22292e4)
	ldr     r1, [pc, #0x1e8] @ [0x22218d0] (=0x222928c)
	ldr     r2, [pc, #0x1e8] @ [0x22218d4] (=0x222925c)
	ldr     r3, [pc, #0x1ec] @ [0x22218dc] (=0x129)
	bl      Function_20d407c
.arm
branch_22216f0: @ 22216f0 :arm
	cmp     r6, #0x0
	beq     branch_2221714
	cmp     r5, #0x0
	bne     branch_2221714
	ldr     r0, [pc, #0x1d8] @ [0x22218e0] (=0x22292f4)
	ldr     r1, [pc, #0x1c4] @ [0x22218d0] (=0x222928c)
	ldr     r2, [pc, #0x1c4] @ [0x22218d4] (=0x222925c)
	ldr     r3, [pc, #0x1d0] @ [0x22218e4] (=0x12a)
	bl      Function_20d407c
.arm
branch_2221714: @ 2221714 :arm
	cmp     r8, #0x0
	ldrnesb r0, [r8]
	cmpne   r0, #0x0
	mvneq   r0, #0x0
	ldmeqfd sp!, {r4-r8,pc}
	cmp     r5, #0x0
	mvnlt   r0, #0x0
	ldmltfd sp!, {r4-r8,pc}
	cmp     r6, #0x0
	beq     branch_2221748
	cmp     r5, #0x0
	mvneq   r0, #0x0
	ldmeqfd sp!, {r4-r8,pc}
.arm
branch_2221748: @ 2221748 :arm
	ldr     r0, [pc, #0x198] @ [0x22218e8] (=0x2229e3c)
	ldr     r0, [r0]
	cmp     r0, #0x0
	bne     branch_222175c
	bl      Function_22215b4
.arm
branch_222175c: @ 222175c :arm
	bl      Function_2220d8c
	movs    r4, r0
	mvneq   r0, #0x0
	ldmeqfd sp!, {r4-r8,pc}
	mov     r1, #0x0
	mov     r0, r8
	str     r1, [r4, #0xc]
	bl      0x21ea8ac
	str     r0, [r4, #0x14]
	cmp     r0, #0x0
	bne     branch_2221798
	mov     r0, r4
	bl      Function_2220f24
	mvn     r0, #0x0
	ldmfd   sp!, {r4-r8,pc}
@ 0x2221798

.arm
branch_2221798: @ 2221798 :arm
	cmp     r7, #0x0
	ldrnesb r0, [r7]
	cmpne   r0, #0x0
	beq     branch_22217cc
	mov     r0, r7
	bl      0x21ea8ac
	str     r0, [r4, #0x28]
	cmp     r0, #0x0
	bne     branch_22217cc
	mov     r0, r4
	bl      Function_2220f24
	mvn     r0, #0x0
	ldmfd   sp!, {r4-r8,pc}
@ 0x22217cc

.arm
branch_22217cc: @ 22217cc :arm
	ldr     r1, [sp, #0x18]
	ldr     r0, [sp, #0x20]
	str     r1, [r4, #0x13c]
	str     r0, [r4, #0x30]
	ldr     r1, [sp, #0x24]
	ldr     r0, [sp, #0x28]
	str     r1, [r4, #0x3c]
	str     r0, [r4, #0x40]
	ldr     r1, [sp, #0x2c]
	ldr     r0, [sp, #0x1c]
	str     r1, [r4, #0x44]
	str     r0, [r4, #0x134]
	cmp     r6, #0x0
	movne   r0, #0x1
	moveq   r0, #0x0
	str     r0, [r4, #0xe0]
	cmp     r0, #0x0
	beq     branch_222182c
	mov     r0, r4
	mov     r2, r6
	mov     r3, r5
	add     r1, r4, #0xbc
	bl      Function_221ffd4
	b       branch_2221840
@ 0x222182c

.arm
branch_222182c: @ 222182c :arm
	mov     r2, #2, 22 @ #0x800
	mov     r0, r4
	mov     r3, r2
	add     r1, r4, #0xbc
	bl      Function_221feb8
.arm
branch_2221840: @ 2221840 :arm
	cmp     r0, #0x0
	bne     branch_2221858
	mov     r0, r4
	bl      Function_2220f24
	mvn     r0, #0x0
	ldmfd   sp!, {r4-r8,pc}
@ 0x2221858

.arm
branch_2221858: @ 2221858 :arm
	ldr     r0, [sp, #0x18]
	cmp     r0, #0x0
	beq     branch_2221884
	mov     r0, r4
	bl      Function_2221d4c
	cmp     r0, #0x0
	bne     branch_2221884
	mov     r0, r4
	bl      Function_2220f24
	mvn     r0, #0x0
	ldmfd   sp!, {r4-r8,pc}
@ 0x2221884

.arm
branch_2221884: @ 2221884 :arm
	ldr     r0, [sp, #0x20]
	cmp     r0, #0x0
	beq     branch_22218c4
	mov     r0, r4
	bl      Function_222144c
	cmp     r0, #0x0
	bne     branch_22218bc
	mov     r5, #0xa
.arm
branch_22218a4: @ 22218a4 :arm
	mov     r0, r5
	bl      0x21ea898
	mov     r0, r4
	bl      Function_222144c
	cmp     r0, #0x0
	beq     branch_22218a4
.arm
branch_22218bc: @ 22218bc :arm
	mov     r0, #0x0
	ldmfd   sp!, {r4-r8,pc}
@ 0x22218c4

.arm
branch_22218c4: @ 22218c4 :arm
	ldr     r0, [r4, #0x4]
	ldmfd   sp!, {r4-r8,pc}
@ 0x22218cc

.word 0x22292d4 @ 0x22218cc
.word 0x222928c @ 0x22218d0
.word 0x222925c @ 0x22218d4
.word 0x22292e4 @ 0x22218d8
.word 0x129 @ 0x22218dc
.word 0x22292f4 @ 0x22218e0
.word 0x12a @ 0x22218e4
.word 0x2229e3c @ 0x22218e8
.arm
Function_22218ec: @ 22218ec :arm
	ldr     r12, [pc, #0x4] @ [0x22218f8] (=0x22211b0)
	ldr     r0, [pc, #0x4] @ [0x22218fc] (=0x222144c)
	bx      r12
@ 0x22218f8

.word 0x22211b0 @ 0x22218f8
.word 0x222144c @ 0x22218fc
.arm
Function_2221900: @ 2221900 :arm
	ldr     r0, [r0, #0x10]
	bx      lr
@ 0x2221908

.arm
Function_2221908: @ 2221908 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	ldr     r0, [r4]
	bl      0x21e9b50
	mov     r0, r4
	bl      0x21d78b0
	ldmfd   sp!, {r4,pc}
@ 0x2221924

.arm
Function_2221924: @ 2221924 :arm
	stmfd   sp!, {r4,lr}
	ldr     r4, [r0, #0x13c]
	cmp     r4, #0x0
	bne     branch_2221948
	ldr     r0, [pc, #0x2c] @ [0x2221968] (=0x2229494)
	ldr     r1, [pc, #0x2c] @ [0x222196c] (=0x2229444)
	ldr     r2, [pc, #0x2c] @ [0x2221970] (=0x2229374)
	ldr     r3, [pc, #0x2c] @ [0x2221974] (=0x192)
	bl      Function_20d407c
.arm
branch_2221948: @ 2221948 :arm
	cmp     r4, #0x0
	ldreq   r0, [pc, #0x24] @ [0x2221978] (=0x222949c)
	ldmeqfd sp!, {r4,pc}
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x0
	ldrne   r0, [pc, #0x18] @ [0x222197c] (=0x22294a0)
	ldreq   r0, [pc, #0x18] @ [0x2221980] (=0x22294e4)
	ldmfd   sp!, {r4,pc}
@ 0x2221968

.word 0x2229494 @ 0x2221968
.word 0x2229444 @ 0x222196c
.word 0x2229374 @ 0x2221970
.word 0x192 @ 0x2221974
.word 0x222949c @ 0x2221978
.word 0x22294a0 @ 0x222197c
.word 0x22294e4 @ 0x2221980
.arm
Function_2221984: @ 2221984 :arm
	stmfd   sp!, {r3-r11,lr}
	ldr     r6, [r0, #0x13c]
	mov     r10, #0x0
	ldr     r0, [r6]
	bl      0x21e9bbc
	movs    r9, r0
	moveq   r0, r10
	ldmeqfd sp!, {r3-r11,pc}
	cmp     r9, #0x0
	mov     r8, r10
	ble     branch_2221a18
	ldr     r5, [pc, #0x6c] @ [0x2221a24] (=0x2229508)
	ldr     r4, [pc, #0x6c] @ [0x2221a28] (=0x2229444)
	ldr     r11, [pc, #0x6c] @ [0x2221a2c] (=0x22293e0)
.arm
branch_22219bc: @ 22219bc :arm
	ldr     r0, [r6]
	mov     r1, r8
	bl      0x21e9bc4
	mov     r7, r0
	ldr     r0, [r7]
	cmp     r0, #0x0
	beq     branch_22219ec
	mov     r0, r5
	mov     r1, r4
	mov     r2, r11
	mov     r3, #27, 28 @ #0x1b0
	bl      Function_20d407c
.arm
branch_22219ec: @ 22219ec :arm
	ldr     r0, [r7, #0x4]
	bl      Function_20d8b60
	add     r8, r8, #0x1
	ldr     r1, [r7, #0xc]
	add     r2, r10, r0
	ldr     r0, [r7, #0x14]
	add     r1, r2, r1
	add     r0, r1, r0, lsl #1
	cmp     r8, r9
	add     r10, r0, #0x1
	blt     branch_22219bc
.arm
branch_2221a18: @ 2221a18 :arm
	sub     r0, r9, #0x1
	add     r0, r10, r0
	ldmfd   sp!, {r3-r11,pc}
@ 0x2221a24

.word 0x2229508 @ 0x2221a24
.word 0x2229444 @ 0x2221a28
.word 0x22293e0 @ 0x2221a2c
.arm
Function_2221a30: @ 2221a30 :arm
	stmfd   sp!, {r3-r11,lr}
	ldr     r1, [pc, #0x178] @ [0x2221bb4] (=0x2229e40)
	mov     r4, r0
	ldr     r0, [r1, #0x8]
	ldr     r7, [r4, #0x13c]
	cmp     r0, #0x0
	mov     r10, #0x0
	bne     branch_2221a78
	ldr     r0, [pc, #0x160] @ [0x2221bb8] (=0x2229520)
	bl      Function_20d8b60
	ldr     r1, [pc, #0x154] @ [0x2221bb4] (=0x2229e40)
	add     r2, r0, #0x2f
	str     r0, [r1, #0x8]
	str     r2, [r1, #0x4]
	add     r2, r0, #0x4c
	str     r2, [r1, #0xc]
	add     r0, r0, #0x4
	str     r0, [r1]
.arm
branch_2221a78: @ 2221a78 :arm
	ldr     r0, [r7]
	bl      0x21e9bbc
	mov     r9, r0
	cmp     r9, #0x0
	mov     r8, #0x0
	ble     branch_2221ba4
	ldr     r11, [pc, #0x124] @ [0x2221bbc] (=0x2229548)
	ldr     r5, [pc, #0x118] @ [0x2221bb4] (=0x2229e40)
.arm
branch_2221a98: @ 2221a98 :arm
	ldr     r0, [r7]
	mov     r1, r8
	bl      0x21e9bc4
	mov     r6, r0
	ldr     r0, [r6]
	cmp     r0, #0x0
	bne     branch_2221ad4
	ldr     r1, [r5, #0x4]
	ldr     r0, [r6, #0x4]
	add     r10, r10, r1
	bl      Function_20d8b60
	ldr     r1, [r6, #0xc]
	add     r0, r10, r0
	add     r10, r0, r1
	b       branch_2221b98
@ 0x2221ad4

.arm
branch_2221ad4: @ 2221ad4 :arm
	cmp     r0, #0x1
	bne     branch_2221b3c
	ldr     r1, [r5, #0xc]
	ldr     r0, [r6, #0x4]
	add     r10, r10, r1
	bl      Function_20d8b60
	add     r10, r10, r0
	ldr     r0, [r6, #0xc]
	bl      Function_20d8b60
	add     r10, r10, r0
	ldr     r0, [r6, #0x10]
	bl      Function_20d8b60
	add     r10, r10, r0
	ldr     r0, [r4, #0x140]
	mov     r1, r8
	bl      0x21e9bc4
	movs    r6, r0
	bne     branch_2221b30
	ldr     r1, [pc, #0x9c] @ [0x2221bc0] (=0x2229444)
	ldr     r2, [pc, #0x9c] @ [0x2221bc4] (=0x2229420)
	mov     r0, r11
	mov     r3, #123, 30 @ #0x1ec
	bl      Function_20d407c
.arm
branch_2221b30: @ 2221b30 :arm
	ldr     r0, [r6, #0xc]
	add     r10, r10, r0
	b       branch_2221b98
@ 0x2221b3c

.arm
branch_2221b3c: @ 2221b3c :arm
	cmp     r0, #0x2
	bne     branch_2221b7c
	ldr     r1, [r5, #0xc]
	ldr     r0, [r6, #0x4]
	add     r10, r10, r1
	bl      Function_20d8b60
	add     r10, r10, r0
	ldr     r0, [r6, #0x10]
	bl      Function_20d8b60
	add     r10, r10, r0
	ldr     r0, [r6, #0x14]
	bl      Function_20d8b60
	add     r1, r10, r0
	ldr     r0, [r6, #0xc]
	add     r10, r1, r0
	b       branch_2221b98
@ 0x2221b7c

.arm
branch_2221b7c: @ 2221b7c :arm
	ldr     r0, [pc, #0x44] @ [0x2221bc8] (=0x2229440)
	ldr     r1, [pc, #0x38] @ [0x2221bc0] (=0x2229444)
	ldr     r2, [pc, #0x38] @ [0x2221bc4] (=0x2229420)
	ldr     r3, [pc, #0x3c] @ [0x2221bcc] (=0x1f9)
	bl      Function_20d407c
	mov     r0, #0x0
	ldmfd   sp!, {r3-r11,pc}
@ 0x2221b98

.arm
branch_2221b98: @ 2221b98 :arm
	add     r8, r8, #0x1
	cmp     r8, r9
	blt     branch_2221a98
.arm
branch_2221ba4: @ 2221ba4 :arm
	ldr     r0, [pc, #0x8] @ [0x2221bb4] (=0x2229e40)
	ldr     r0, [r0]
	add     r0, r10, r0
	ldmfd   sp!, {r3-r11,pc}
@ 0x2221bb4

.word 0x2229e40 @ 0x2221bb4
.word 0x2229520 @ 0x2221bb8
.word 0x2229548 @ 0x2221bbc
.word 0x2229444 @ 0x2221bc0
.word 0x2229420 @ 0x2221bc4
.word 0x2229440 @ 0x2221bc8
.word 0x1f9 @ 0x2221bcc
.arm
Function_2221bd0: @ 2221bd0 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	ldr     r4, [r5, #0x13c]
	cmp     r4, #0x0
	bne     branch_2221bf8
	ldr     r0, [pc, #0x38] @ [0x2221c24] (=0x2229494)
	ldr     r1, [pc, #0x38] @ [0x2221c28] (=0x2229444)
	ldr     r2, [pc, #0x38] @ [0x2221c2c] (=0x222938c)
	mov     r3, #131, 30 @ #0x20c
	bl      Function_20d407c
.arm
branch_2221bf8: @ 2221bf8 :arm
	cmp     r4, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r5,pc}
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x0
	mov     r0, r5
	beq     branch_2221c1c
	bl      Function_2221a30
	ldmfd   sp!, {r3-r5,pc}
@ 0x2221c1c

.arm
branch_2221c1c: @ 2221c1c :arm
	bl      Function_2221984
	ldmfd   sp!, {r3-r5,pc}
@ 0x2221c24

.word 0x2229494 @ 0x2221c24
.word 0x2229444 @ 0x2221c28
.word 0x222938c @ 0x2221c2c
.arm
Function_2221c30: @ 2221c30 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	ldr     r1, [r4]
	mvn     r0, #0x0
	ldr     r1, [r1]
	str     r0, [r4, #0x4]
	cmp     r1, #0x0
	beq     branch_2221ccc
	cmp     r1, #0x1
	bne     branch_2221ca8
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r4,pc}
	mov     r1, #0x0
	mov     r2, #0x2
	bl      Function_20d4de4
	cmp     r0, #0x0
	movne   r0, #0x0
	ldmnefd sp!, {r4,pc}
	ldr     r0, [r4, #0x8]
	bl      Function_20d4ae0
	mvn     r1, #0x0
	str     r0, [r4, #0xc]
	cmp     r0, r1
	moveq   r0, #0x0
	ldmeqfd sp!, {r4,pc}
	ldr     r0, [r4, #0x8]
	bl      Function_20d4f10
	b       branch_2221ccc
@ 0x2221ca8

.arm
branch_2221ca8: @ 2221ca8 :arm
	cmp     r1, #0x2
	beq     branch_2221ccc
	ldr     r0, [pc, #0x1c] @ [0x2221cd4] (=0x2229440)
	ldr     r1, [pc, #0x1c] @ [0x2221cd8] (=0x2229444)
	ldr     r2, [pc, #0x1c] @ [0x2221cdc] (=0x2229334)
	mov     r3, #145, 30 @ #0x244
	bl      Function_20d407c
	mov     r0, #0x0
	ldmfd   sp!, {r4,pc}
@ 0x2221ccc

.arm
branch_2221ccc: @ 2221ccc :arm
	mov     r0, #0x1
	ldmfd   sp!, {r4,pc}
@ 0x2221cd4

.word 0x2229440 @ 0x2221cd4
.word 0x2229444 @ 0x2221cd8
.word 0x2229334 @ 0x2221cdc
.arm
Function_2221ce0: @ 2221ce0 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	ldr     r0, [r4]
	ldr     r0, [r0]
	cmp     r0, #0x0
	ldmeqfd sp!, {r4,pc}
	cmp     r0, #0x1
	bne     branch_2221d1c
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x0
	beq     branch_2221d10
	bl      Function_20d4908
.arm
branch_2221d10: @ 2221d10 :arm
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	ldmfd   sp!, {r4,pc}
@ 0x2221d1c

.arm
branch_2221d1c: @ 2221d1c :arm
	cmp     r0, #0x2
	ldmeqfd sp!, {r4,pc}
	ldr     r0, [pc, #0x10] @ [0x2221d3c] (=0x2229440)
	ldr     r1, [pc, #0x10] @ [0x2221d40] (=0x2229444)
	ldr     r2, [pc, #0x10] @ [0x2221d44] (=0x2229348)
	ldr     r3, [pc, #0x10] @ [0x2221d48] (=0x269)
	bl      Function_20d407c
	ldmfd   sp!, {r4,pc}
@ 0x2221d3c

.word 0x2229440 @ 0x2221d3c
.word 0x2229444 @ 0x2221d40
.word 0x2229348 @ 0x2221d44
.word 0x269 @ 0x2221d48
.arm
Function_2221d4c: @ 2221d4c :arm
	stmfd   sp!, {r4-r8,lr}
	sub     sp, sp, #0x10
	mov     r4, r0
	ldr     r0, [r4, #0x13c]
	cmp     r0, #0x0
	bne     branch_2221d78
	ldr     r0, [pc, #0x15c] @ [0x2221ec8] (=0x2229550)
	ldr     r1, [pc, #0x15c] @ [0x2221ecc] (=0x2229444)
	ldr     r2, [pc, #0x15c] @ [0x2221ed0] (=0x222930c)
	mov     r3, #158, 30 @ #0x278
	bl      Function_20d407c
.arm
branch_2221d78: @ 2221d78 :arm
	ldr     r0, [r4, #0x13c]
	cmp     r0, #0x0
	addeq   sp, sp, #0x10
	mov     r0, #0x0
	ldmeqfd sp!, {r4-r8,pc}
	str     r0, [r4, #0x144]
	str     r0, [r4, #0x148]
	str     r0, [r4, #0x14c]
	ldr     r0, [r4, #0x13c]
	ldr     r0, [r0, #0x4]
	str     r0, [r4, #0x150]
	ldr     r0, [r4, #0x13c]
	ldr     r0, [r0, #0x8]
	str     r0, [r4, #0x154]
	ldr     r0, [r4, #0x13c]
	ldr     r0, [r0]
	bl      0x21e9bbc
	mov     r8, r0
	mov     r1, r8
	mov     r0, #0x10
	mov     r2, #0x0
	bl      0x21e9a8c
	cmp     r0, #0x0
	str     r0, [r4, #0x140]
	addeq   sp, sp, #0x10
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r8,pc}
	cmp     r8, #0x0
	mov     r7, #0x0
	ble     branch_2221e7c
	add     r6, sp, #0x0
	mov     r5, r7
.arm
branch_2221df8: @ 2221df8 :arm
	ldr     r0, [r4, #0x13c]
	mov     r1, r7
	ldr     r0, [r0]
	bl      0x21e9bc4
	str     r5, [r6]
	str     r0, [sp]
	mov     r0, r6
	str     r5, [r6, #0x4]
	str     r5, [r6, #0x8]
	str     r5, [r6, #0xc]
	bl      Function_2221c30
	cmp     r0, #0x0
	bne     branch_2221e64
	subs    r7, r7, #0x1
	bmi     branch_2221e4c
.arm
branch_2221e34: @ 2221e34 :arm
	ldr     r0, [r4, #0x140]
	mov     r1, r7
	bl      0x21e9bc4
	bl      Function_2221ce0
	subs    r7, r7, #0x1
	bpl     branch_2221e34
.arm
branch_2221e4c: @ 2221e4c :arm
	ldr     r0, [r4, #0x140]
	bl      0x21e9b50
	mov     r0, #0x0
	add     sp, sp, #0x10
	str     r0, [r4, #0x140]
	ldmfd   sp!, {r4-r8,pc}
@ 0x2221e64

.arm
branch_2221e64: @ 2221e64 :arm
	ldr     r0, [r4, #0x140]
	mov     r1, r6
	bl      0x21e9c2c
	add     r7, r7, #0x1
	cmp     r7, r8
	blt     branch_2221df8
.arm
branch_2221e7c: @ 2221e7c :arm
	ldr     r0, [r4, #0x13c]
	ldr     r0, [r0]
	bl      0x21e9bbc
	mov     r5, r0
	ldr     r0, [r4, #0x140]
	bl      0x21e9bbc
	cmp     r5, r0
	beq     branch_2221eb0
	ldr     r0, [pc, #0x30] @ [0x2221ed4] (=0x2229564)
	ldr     r1, [pc, #0x24] @ [0x2221ecc] (=0x2229444)
	ldr     r2, [pc, #0x24] @ [0x2221ed0] (=0x222930c)
	ldr     r3, [pc, #0x28] @ [0x2221ed8] (=0x2b1)
	bl      Function_20d407c
.arm
branch_2221eb0: @ 2221eb0 :arm
	mov     r0, r4
	bl      Function_2221bd0
	str     r0, [r4, #0x14c]
	mov     r0, #0x1
	add     sp, sp, #0x10
	ldmfd   sp!, {r4-r8,pc}
@ 0x2221ec8

.word 0x2229550 @ 0x2221ec8
.word 0x2229444 @ 0x2221ecc
.word 0x222930c @ 0x2221ed0
.word 0x2229564 @ 0x2221ed4
.word 0x2b1 @ 0x2221ed8
.arm
Function_2221edc: @ 2221edc :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0
	ldr     r0, [r6, #0x140]
	cmp     r0, #0x0
	beq     branch_2221f30
	bl      0x21e9bbc
	mov     r5, r0
	cmp     r5, #0x0
	mov     r4, #0x0
	ble     branch_2221f20
.arm
branch_2221f04: @ 2221f04 :arm
	ldr     r0, [r6, #0x140]
	mov     r1, r4
	bl      0x21e9bc4
	bl      Function_2221ce0
	add     r4, r4, #0x1
	cmp     r4, r5
	blt     branch_2221f04
.arm
branch_2221f20: @ 2221f20 :arm
	ldr     r0, [r6, #0x140]
	bl      0x21e9b50
	mov     r0, #0x0
	str     r0, [r6, #0x140]
.arm
branch_2221f30: @ 2221f30 :arm
	ldr     r0, [r6, #0x13c]
	cmp     r0, #0x0
	ldrne   r1, [r0, #0x10]
	cmpne   r1, #0x0
	ldmeqfd sp!, {r4-r6,pc}
	bl      Function_2221908
	mov     r0, #0x0
	str     r0, [r6, #0x13c]
	ldmfd   sp!, {r4-r6,pc}
@ 0x2221f54

.arm
Function_2221f54: @ 2221f54 :arm
	stmfd   sp!, {r3-r11,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	mov     r10, r1
	cmp     r0, #0x0
	bge     branch_2221f80
	ldr     r0, [pc, #0x198] @ [0x222210c] (=0x22295b8)
	ldr     r1, [pc, #0x198] @ [0x2222110] (=0x2229444)
	ldr     r2, [pc, #0x198] @ [0x2222114] (=0x22293a4)
	ldr     r3, [pc, #0x198] @ [0x2222118] (=0x2e7)
	bl      Function_20d407c
.arm
branch_2221f80: @ 2221f80 :arm
	ldr     r0, [r4]
	ldr     r1, [r0, #0xc]
	cmp     r1, #0x0
	moveq   r0, #0x1
	ldmeqfd sp!, {r3-r11,pc}
	ldr     r0, [r4, #0x4]
	cmp     r0, r1
	blt     branch_2221fb4
	ldr     r0, [pc, #0x174] @ [0x222211c] (=0x22295c8)
	ldr     r1, [pc, #0x164] @ [0x2222110] (=0x2229444)
	ldr     r2, [pc, #0x164] @ [0x2222114] (=0x22293a4)
	ldr     r3, [pc, #0x16c] @ [0x2222120] (=0x2ee)
	bl      Function_20d407c
.arm
branch_2221fb4: @ 2221fb4 :arm
	ldr     r0, [r10, #0x13c]
	ldr     r0, [r0, #0xc]
	cmp     r0, #0x0
	bne     branch_22220c0
	ldr     r1, [r4]
	ldr     r0, [r1, #0x10]
	cmp     r0, #0x0
	beq     branch_22220c0
	ldr     r0, [pc, #0x148] @ [0x2222124] (=0x2228c60)
	ldr     r8, [r1, #0x8]
	ldrb    r2, [r0]
	ldrb    r1, [r0, #0x1]
	add     r5, sp, #0x0
	strb    r2, [sp]
	strb    r1, [sp, #0x1]
	ldrb    r1, [r0, #0x2]
	ldrb    r0, [r0, #0x3]
	mov     r6, #0x0
	strb    r1, [sp, #0x2]
	strb    r0, [sp, #0x3]
	ldrsb   r7, [r8]
	cmp     r7, #0x0
	beq     branch_22220b8
	ldr     r4, [pc, #0x110] @ [0x2222128] (=0x2229604)
	ldr     r11, [pc, #0x110] @ [0x222212c] (=0x2229450)
.arm
branch_2222018: @ 2222018 :arm
	mov     r0, r11
	mov     r1, r7
	bl      Function_20d8e5c
	cmp     r0, #0x0
	beq     branch_222203c
	mov     r1, r7
	add     r0, r10, #0x50
	bl      Function_222046c
	b       branch_22220a8
@ 0x222203c

.arm
branch_222203c: @ 222203c :arm
	cmp     r7, #0x20
	bne     branch_2222054
	mov     r1, #0x2b
	add     r0, r10, #0x50
	bl      Function_222046c
	b       branch_22220a8
@ 0x2222054

.arm
branch_2222054: @ 2222054 :arm
	mov     r0, r7, asr #3
	add     r0, r7, r0, lsr #28
	mov     r9, r0, asr #4
	cmp     r9, #0x10
	blt     branch_222207c
	ldr     r0, [pc, #0xc0] @ [0x2222130] (=0x22295f4)
	ldr     r1, [pc, #0x9c] @ [0x2222110] (=0x2229444)
	ldr     r2, [pc, #0x9c] @ [0x2222114] (=0x22293a4)
	ldr     r3, [pc, #0xb8] @ [0x2222134] (=0x30d)
	bl      Function_20d407c
.arm
branch_222207c: @ 222207c :arm
	ldrsb   r2, [r4, r9]
	mov     r1, r7, lsr #31
	rsb     r0, r1, r7, lsl #28
	add     r0, r1, r0, ror #28
	strb    r2, [sp, #0x1]
	ldrsb   r2, [r4, r0]
	mov     r1, r5
	add     r0, r10, #0x50
	strb    r2, [sp, #0x2]
	mov     r2, #0x3
	bl      Function_2220130
.arm
branch_22220a8: @ 22220a8 :arm
	add     r6, r6, #0x1
	ldrsb   r7, [r8, r6]
	cmp     r7, #0x0
	bne     branch_2222018
.arm
branch_22220b8: @ 22220b8 :arm
	mov     r0, #0x1
	ldmfd   sp!, {r3-r11,pc}
@ 0x22220c0

.arm
branch_22220c0: @ 22220c0 :arm
	ldr     r1, [r4]
	ldr     r0, [r4, #0x4]
	ldr     r2, [r1, #0xc]
	ldr     r1, [r1, #0x8]
	sub     r5, r2, r0
	mov     r0, r10
	mov     r2, r5
	bl      Function_2220b90
	mvn     r1, #0x0
	cmp     r0, r1
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r11,pc}
	ldr     r1, [r4, #0x4]
	cmp     r0, r5
	add     r0, r1, r0
	str     r0, [r4, #0x4]
	moveq   r0, #0x1
	movne   r0, #0x2
	ldmfd   sp!, {r3-r11,pc}
@ 0x222210c

.word 0x22295b8 @ 0x222210c
.word 0x2229444 @ 0x2222110
.word 0x22293a4 @ 0x2222114
.word 0x2e7 @ 0x2222118
.word 0x22295c8 @ 0x222211c
.word 0x2ee @ 0x2222120
.word 0x2228c60 @ 0x2222124
.word 0x2229604 @ 0x2222128
.word 0x2229450 @ 0x222212c
.word 0x22295f4 @ 0x2222130
.word 0x30d @ 0x2222134
.arm
Function_2222138: @ 2222138 :arm
	stmfd   sp!, {r4-r8,lr}
	sub     sp, sp, #1, 20 @ #0x1000
	mov     r8, r0
	ldr     r0, [r8, #0x4]
	mov     r7, r1
	cmp     r0, #0x0
	bge     branch_2222168
	ldr     r0, [pc, #0x11c] @ [0x2222278] (=0x22295b8)
	ldr     r1, [pc, #0x11c] @ [0x222227c] (=0x2229444)
	ldr     r2, [pc, #0x11c] @ [0x2222280] (=0x22293c0)
	ldr     r3, [pc, #0x11c] @ [0x2222284] (=0x336)
	bl      Function_20d407c
.arm
branch_2222168: @ 2222168 :arm
	ldr     r1, [r8, #0x4]
	ldr     r0, [r8, #0xc]
	cmp     r1, r0
	blt     branch_222218c
	ldr     r0, [pc, #0x108] @ [0x2222288] (=0x2229618)
	ldr     r1, [pc, #0xf8] @ [0x222227c] (=0x2229444)
	ldr     r2, [pc, #0xf8] @ [0x2222280] (=0x22293c0)
	ldr     r3, [pc, #0x100] @ [0x222228c] (=0x337)
	bl      Function_20d407c
.arm
branch_222218c: @ 222218c :arm
	ldr     r0, [r8, #0x8]
	bl      Function_20d4ae0
	ldr     r1, [r8, #0x4]
	cmp     r1, r0
	beq     branch_22221b4
	ldr     r0, [pc, #0xe8] @ [0x2222290] (=0x2229640)
	ldr     r1, [pc, #0xd0] @ [0x222227c] (=0x2229444)
	ldr     r2, [pc, #0xd0] @ [0x2222280] (=0x22293c0)
	mov     r3, #206, 30 @ #0x338
	bl      Function_20d407c
.arm
branch_22221b4: @ 22221b4 :arm
	add     r6, sp, #0x0
	mov     r5, #0x1
	mov     r4, #1, 20 @ #0x1000
.arm
branch_22221c0: @ 22221c0 :arm
	ldr     r3, [r8, #0x8]
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	bl      Function_20d4204
	mov     r2, r0
	cmp     r2, #0x0
	bgt     branch_22221fc
	mov     r0, #0x1
	str     r0, [r7, #0xfc]
	mov     r0, #0xe
	str     r0, [r7, #0x38]
	add     sp, sp, #1, 20 @ #0x1000
	mov     r0, #0x0
	ldmfd   sp!, {r4-r8,pc}
@ 0x22221fc

.arm
branch_22221fc: @ 22221fc :arm
	ldr     r0, [r8, #0x4]
	add     r1, r0, r2
	str     r1, [r8, #0x4]
	ldr     r0, [r8, #0xc]
	cmp     r1, r0
	ble     branch_2222230
	mov     r0, #0x1
	str     r0, [r7, #0xfc]
	mov     r0, #0xe
	str     r0, [r7, #0x38]
	add     sp, sp, #1, 20 @ #0x1000
	mov     r0, #0x0
	ldmfd   sp!, {r4-r8,pc}
@ 0x2222230

.arm
branch_2222230: @ 2222230 :arm
	mov     r0, r7
	mov     r1, r6
	bl      Function_2220c0c
	cmp     r0, #0x0
	addeq   sp, sp, #1, 20 @ #0x1000
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r8,pc}
	ldr     r2, [r8, #0x4]
	ldr     r1, [r8, #0xc]
	cmp     r2, r1
	addeq   sp, sp, #1, 20 @ #0x1000
	moveq   r0, #0x1
	ldmeqfd sp!, {r4-r8,pc}
	cmp     r0, #0x1
	beq     branch_22221c0
	mov     r0, #0x2
	add     sp, sp, #1, 20 @ #0x1000
	ldmfd   sp!, {r4-r8,pc}
@ 0x2222278

.word 0x22295b8 @ 0x2222278
.word 0x2229444 @ 0x222227c
.word 0x22293c0 @ 0x2222280
.word 0x336 @ 0x2222284
.word 0x2229618 @ 0x2222288
.word 0x337 @ 0x222228c
.word 0x2229640 @ 0x2222290
.arm
Function_2222294: @ 2222294 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r6, r0
	ldr     r0, [r6, #0x4]
	mov     r5, r1
	cmp     r0, #0x0
	bge     branch_22222c0
	ldr     r0, [pc, #0xa8] @ [0x222235c] (=0x22295b8)
	ldr     r1, [pc, #0xa8] @ [0x2222360] (=0x2229444)
	ldr     r2, [pc, #0xa8] @ [0x2222364] (=0x2229400)
	ldr     r3, [pc, #0xa8] @ [0x2222368] (=0x36e)
	bl      Function_20d407c
.arm
branch_22222c0: @ 22222c0 :arm
	ldr     r0, [r6]
	ldr     r1, [r0, #0xc]
	cmp     r1, #0x0
	moveq   r0, #0x1
	ldmeqfd sp!, {r3-r7,pc}
	ldr     r0, [r6, #0x4]
	cmp     r0, r1
	blt     branch_22222f4
	ldr     r0, [pc, #0x84] @ [0x222236c] (=0x2229678)
	ldr     r1, [pc, #0x74] @ [0x2222360] (=0x2229444)
	ldr     r2, [pc, #0x74] @ [0x2222364] (=0x2229400)
	ldr     r3, [pc, #0x7c] @ [0x2222370] (=0x375)
	bl      Function_20d407c
.arm
branch_22222f4: @ 22222f4 :arm
	mov     r4, #2, 18 @ #0x8000
	mvn     r7, #0x0
.arm
branch_22222fc: @ 22222fc :arm
	ldmia   r6, {r1,r3}
	ldr     r0, [r1, #0xc]
	ldr     r1, [r1, #0x8]
	sub     r2, r0, r3
	cmp     r2, #2, 18 @ #0x8000
	movge   r2, r4
	mov     r0, r5
	add     r1, r1, r3
	bl      Function_2220b90
	cmp     r0, r7
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r7,pc}
	ldr     r1, [r6, #0x4]
	add     r2, r1, r0
	str     r2, [r6, #0x4]
	ldr     r1, [r6]
	ldr     r1, [r1, #0xc]
	cmp     r1, r2
	moveq   r0, #0x1
	ldmeqfd sp!, {r3-r7,pc}
	cmp     r0, #0x0
	bne     branch_22222fc
	mov     r0, #0x2
	ldmfd   sp!, {r3-r7,pc}
@ 0x222235c

.word 0x22295b8 @ 0x222235c
.word 0x2229444 @ 0x2222360
.word 0x2229400 @ 0x2222364
.word 0x36e @ 0x2222368
.word 0x2229678 @ 0x222236c
.word 0x375 @ 0x2222370
.arm
Function_2222374: @ 2222374 :arm
	stmfd   sp!, {r4-r6,lr}
	sub     sp, sp, #0x8
	sub     sp, sp, #2, 22 @ #0x800
	mov     r6, r0
	ldr     r0, [r6, #0x4]
	mvn     r3, #0x0
	mov     r5, r1
	mov     r4, r2
	cmp     r0, r3
	bne     branch_22224cc
	mov     r0, #0x0
	str     r0, [r6, #0x4]
	ldr     r0, [r5, #0x13c]
	ldr     r0, [r0, #0xc]
	cmp     r0, #0x0
	bne     branch_2222404
	ldr     r0, [r6]
	ldr     r0, [r0]
	cmp     r0, #0x0
	beq     branch_22223d8
	ldr     r0, [pc, #0x17c] @ [0x2222548] (=0x22296a8)
	ldr     r1, [pc, #0x17c] @ [0x222254c] (=0x2229444)
	ldr     r2, [pc, #0x17c] @ [0x2222550] (=0x222935c)
	rsb     r3, r3, #234, 30 @ #0x3a8
	bl      Function_20d407c
.arm
branch_22223d8: @ 22223d8 :arm
	ldr     r1, [r6]
	cmp     r4, #0x0
	add     r0, sp, #0x8
	ldr     r2, [r1, #0x4]
	beq     branch_22223f8
	ldr     r1, [pc, #0x160] @ [0x2222554] (=0x22296c8)
	bl      Function_20d7510
	b       branch_222248c
@ 0x22223f8

.arm
branch_22223f8: @ 22223f8 :arm
	ldr     r1, [pc, #0x158] @ [0x2222558] (=0x22296cc)
	bl      Function_20d7510
	b       branch_222248c
@ 0x2222404

.arm
branch_2222404: @ 2222404 :arm
	ldr     r3, [r6]
	ldr     r1, [r3]
	cmp     r1, #0x0
	bne     branch_2222434
	cmp     r4, #0x0
	ldrne   r2, [pc, #0x13c] @ [0x222255c] (=0x22296d4)
	ldr     r3, [r3, #0x4]
	ldreq   r2, [pc, #0x138] @ [0x2222560] (=0x22296fc)
	ldr     r1, [pc, #0x138] @ [0x2222564] (=0x2229728)
	add     r0, sp, #0x8
	bl      Function_20d7510
	b       branch_222248c
@ 0x2222434

.arm
branch_2222434: @ 2222434 :arm
	sub     r0, r1, #0x1
	cmp     r0, #0x1
	bhi     branch_2222478
	cmp     r1, #0x1
	ldreq   r0, [r3, #0xc]
	ldreq   r1, [r3, #0x10]
	ldrne   r0, [r3, #0x10]
	ldrne   r1, [r3, #0x14]
	cmp     r4, #0x0
	stmea   sp, {r0,r1}
	ldrne   r2, [pc, #0xf8] @ [0x222255c] (=0x22296d4)
	ldr     r3, [r3, #0x4]
	ldreq   r2, [pc, #0xf4] @ [0x2222560] (=0x22296fc)
	ldr     r1, [pc, #0xf8] @ [0x2222568] (=0x2229758)
	add     r0, sp, #0x8
	bl      Function_20d7510
	b       branch_222248c
@ 0x2222478

.arm
branch_2222478: @ 2222478 :arm
	ldr     r0, [pc, #0xec] @ [0x222256c] (=0x2229440)
	ldr     r1, [pc, #0xc8] @ [0x222254c] (=0x2229444)
	ldr     r2, [pc, #0xc8] @ [0x2222550] (=0x222935c)
	mov     r3, #247, 30 @ #0x3dc
	bl      Function_20d407c
.arm
branch_222248c: @ 222248c :arm
	add     r0, sp, #0x8
	bl      Function_20d8b60
	mov     r2, r0
	add     r1, sp, #0x8
	mov     r0, r5
	bl      Function_2220c0c
	cmp     r0, #0x0
	addeq   sp, sp, #0x8
	addeq   sp, sp, #2, 22 @ #0x800
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r6,pc}
	cmp     r0, #0x2
	addeq   sp, sp, #0x8
	addeq   sp, sp, #2, 22 @ #0x800
	moveq   r0, #0x2
	ldmeqfd sp!, {r4-r6,pc}
.arm
branch_22224cc: @ 22224cc :arm
	ldr     r0, [r6]
	ldr     r0, [r0]
	cmp     r0, #0x0
	bne     branch_22224f4
	mov     r0, r6
	mov     r1, r5
	bl      Function_2221f54
	add     sp, sp, #0x8
	add     sp, sp, #2, 22 @ #0x800
	ldmfd   sp!, {r4-r6,pc}
@ 0x22224f4

.arm
branch_22224f4: @ 22224f4 :arm
	cmp     r0, #0x1
	bne     branch_2222514
	mov     r0, r6
	mov     r1, r5
	bl      Function_2222138
	add     sp, sp, #0x8
	add     sp, sp, #2, 22 @ #0x800
	ldmfd   sp!, {r4-r6,pc}
@ 0x2222514

.arm
branch_2222514: @ 2222514 :arm
	cmp     r0, #0x2
	beq     branch_2222530
	ldr     r0, [pc, #0x4c] @ [0x2222570] (=0x22297ac)
	ldr     r1, [pc, #0x24] @ [0x222254c] (=0x2229444)
	ldr     r2, [pc, #0x24] @ [0x2222550] (=0x222935c)
	ldr     r3, [pc, #0x44] @ [0x2222574] (=0x3f5)
	bl      Function_20d407c
.arm
branch_2222530: @ 2222530 :arm
	mov     r0, r6
	mov     r1, r5
	bl      Function_2222294
	add     sp, sp, #0x8
	add     sp, sp, #2, 22 @ #0x800
	ldmfd   sp!, {r4-r6,pc}
@ 0x2222548

.word 0x22296a8 @ 0x2222548
.word 0x2229444 @ 0x222254c
.word 0x222935c @ 0x2222550
.word 0x22296c8 @ 0x2222554
.word 0x22296cc @ 0x2222558
.word 0x22296d4 @ 0x222255c
.word 0x22296fc @ 0x2222560
.word 0x2229728 @ 0x2222564
.word 0x2229758 @ 0x2222568
.word 0x2229440 @ 0x222256c
.word 0x22297ac @ 0x2222570
.word 0x3f5 @ 0x2222574
.arm
Function_2222578: @ 2222578 :arm
	stmfd   sp!, {r3-r11,lr}
	movs    r10, r0
	bne     branch_2222598
	ldr     r0, [pc, #0x220] @ [0x22227ac] (=0x22297d0)
	ldr     r1, [pc, #0x220] @ [0x22227b0] (=0x2229444)
	ldr     r2, [pc, #0x220] @ [0x22227b4] (=0x2229320)
	ldr     r3, [pc, #0x220] @ [0x22227b8] (=0x404)
	bl      Function_20d407c
.arm
branch_2222598: @ 2222598 :arm
	ldr     r0, [r10, #0x13c]
	cmp     r0, #0x0
	bne     branch_22225b8
	ldr     r0, [pc, #0x210] @ [0x22227bc] (=0x2229550)
	ldr     r1, [pc, #0x200] @ [0x22227b0] (=0x2229444)
	ldr     r2, [pc, #0x200] @ [0x22227b4] (=0x2229320)
	ldr     r3, [pc, #0x208] @ [0x22227c0] (=0x405)
	bl      Function_20d407c
.arm
branch_22225b8: @ 22225b8 :arm
	ldr     r0, [r10, #0x140]
	cmp     r0, #0x0
	bne     branch_22225d8
	ldr     r0, [pc, #0x1f8] @ [0x22227c4] (=0x22297dc)
	ldr     r1, [pc, #0x1e0] @ [0x22227b0] (=0x2229444)
	ldr     r2, [pc, #0x1e0] @ [0x22227b4] (=0x2229320)
	ldr     r3, [pc, #0x1f0] @ [0x22227c8] (=0x406)
	bl      Function_20d407c
.arm
branch_22225d8: @ 22225d8 :arm
	ldr     r0, [r10, #0x13c]
	ldr     r0, [r0]
	bl      0x21e9bbc
	mov     r4, r0
	ldr     r0, [r10, #0x140]
	bl      0x21e9bbc
	cmp     r4, r0
	beq     branch_222260c
	ldr     r0, [pc, #0x1cc] @ [0x22227cc] (=0x2229564)
	ldr     r1, [pc, #0x1ac] @ [0x22227b0] (=0x2229444)
	ldr     r2, [pc, #0x1ac] @ [0x22227b4] (=0x2229320)
	ldr     r3, [pc, #0x1c4] @ [0x22227d0] (=0x407)
	bl      Function_20d407c
.arm
branch_222260c: @ 222260c :arm
	ldr     r0, [r10, #0x144]
	cmp     r0, #0x0
	bge     branch_222262c
	ldr     r0, [pc, #0x1b4] @ [0x22227d4] (=0x22297fc)
	ldr     r1, [pc, #0x18c] @ [0x22227b0] (=0x2229444)
	ldr     r2, [pc, #0x18c] @ [0x22227b4] (=0x2229320)
	ldr     r3, [pc, #0x1ac] @ [0x22227d8] (=0x408)
	bl      Function_20d407c
.arm
branch_222262c: @ 222262c :arm
	ldr     r0, [r10, #0x140]
	bl      0x21e9bbc
	ldr     r1, [r10, #0x144]
	cmp     r1, r0
	ble     branch_2222654
	ldr     r0, [pc, #0x194] @ [0x22227dc] (=0x2229820)
	ldr     r1, [pc, #0x164] @ [0x22227b0] (=0x2229444)
	ldr     r2, [pc, #0x164] @ [0x22227b4] (=0x2229320)
	ldr     r3, [pc, #0x18c] @ [0x22227e0] (=0x409)
	bl      Function_20d407c
.arm
branch_2222654: @ 2222654 :arm
	ldr     r0, [r10, #0x140]
	bl      0x21e9bbc
	ldr     r1, [r10, #0x5c]
	mov     r9, r0
	cmp     r1, #0x0
	beq     branch_22226ac
	mov     r0, r10
	bl      Function_2220548
	cmp     r0, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r11,pc}
	ldr     r1, [r10, #0x60]
	ldr     r0, [r10, #0x5c]
	cmp     r1, r0
	movlt   r0, #0x2
	ldmltfd sp!, {r3-r11,pc}
	add     r0, r10, #0x50
	bl      Function_2220504
	ldr     r0, [r10, #0x144]
	cmp     r0, r9
	moveq   r0, #0x1
	ldmeqfd sp!, {r3-r11,pc}
.arm
branch_22226ac: @ 22226ac :arm
	ldr     r1, [r10, #0x144]
	cmp     r1, r9
	bge     branch_2222764
	ldr     r7, [pc, #0x124] @ [0x22227e4] (=0x2229870)
	ldr     r6, [pc, #0xec] @ [0x22227b0] (=0x2229444)
	ldr     r5, [pc, #0xec] @ [0x22227b4] (=0x2229320)
	ldr     r4, [pc, #0x11c] @ [0x22227e8] (=0x42f)
	mov     r11, #0x1
.arm
branch_22226cc: @ 22226cc :arm
	ldr     r0, [r10, #0x140]
	bl      0x21e9bc4
	movs    r8, r0
	bne     branch_22226f0
	mov     r0, r7
	mov     r1, r6
	mov     r2, r5
	mov     r3, r4
	bl      Function_20d407c
.arm
branch_22226f0: @ 22226f0 :arm
	ldr     r0, [r10, #0x144]
	mov     r1, r10
	cmp     r0, #0x0
	moveq   r2, r11
	movne   r2, #0x0
	mov     r0, r8
	bl      Function_2222374
	cmp     r0, #0x0
	bne     branch_2222744
	ldr     r0, [r10, #0xfc]
	cmp     r0, #0x0
	ldrne   r0, [r10, #0x38]
	cmpne   r0, #0x0
	bne     branch_222273c
	ldr     r0, [pc, #0xbc] @ [0x22227ec] (=0x222987c)
	ldr     r1, [pc, #0x7c] @ [0x22227b0] (=0x2229444)
	ldr     r2, [pc, #0x7c] @ [0x22227b4] (=0x2229320)
	ldr     r3, [pc, #0xb4] @ [0x22227f0] (=0x43b)
	bl      Function_20d407c
.arm
branch_222273c: @ 222273c :arm
	mov     r0, #0x0
	ldmfd   sp!, {r3-r11,pc}
@ 0x2222744

.arm
branch_2222744: @ 2222744 :arm
	cmp     r0, #0x2
	moveq   r0, #0x2
	ldmeqfd sp!, {r3-r11,pc}
	ldr     r0, [r10, #0x144]
	add     r1, r0, #0x1
	str     r1, [r10, #0x144]
	cmp     r1, r9
	blt     branch_22226cc
.arm
branch_2222764: @ 2222764 :arm
	ldr     r0, [r10, #0x13c]
	ldr     r0, [r0, #0xc]
	cmp     r0, #0x0
	beq     branch_2222798
	ldr     r0, [pc, #0x78] @ [0x22227f4] (=0x22298a8)
	bl      Function_20d8b60
	mov     r2, r0
	ldr     r1, [pc, #0x6c] @ [0x22227f4] (=0x22298a8)
	mov     r0, r10
	bl      Function_2220c0c
	cmp     r0, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r11,pc}
.arm
branch_2222798: @ 2222798 :arm
	ldr     r0, [r10, #0x5c]
	cmp     r0, #0x0
	movne   r0, #0x2
	moveq   r0, #0x1
	ldmfd   sp!, {r3-r11,pc}
@ 0x22227ac

.word 0x22297d0 @ 0x22227ac
.word 0x2229444 @ 0x22227b0
.word 0x2229320 @ 0x22227b4
.word 0x404 @ 0x22227b8
.word 0x2229550 @ 0x22227bc
.word 0x405 @ 0x22227c0
.word 0x22297dc @ 0x22227c4
.word 0x406 @ 0x22227c8
.word 0x2229564 @ 0x22227cc
.word 0x407 @ 0x22227d0
.word 0x22297fc @ 0x22227d4
.word 0x408 @ 0x22227d8
.word 0x2229820 @ 0x22227dc
.word 0x409 @ 0x22227e0
.word 0x2229870 @ 0x22227e4
.word 0x42f @ 0x22227e8
.word 0x222987c @ 0x22227ec
.word 0x43b @ 0x22227f0
.word 0x22298a8 @ 0x22227f4
.arm
Function_22227f8: @ 22227f8 :arm
	stmfd   sp!, {r4-r8,lr}
	movs    r5, r0
	bne     branch_2222818
	ldr     r0, [pc, #0x180] @ [0x222298c] (=0x2229968)
	ldr     r1, [pc, #0x180] @ [0x2222990] (=0x2229974)
	ldr     r2, [pc, #0x180] @ [0x2222994] (=0x22298d4)
	mov     r3, #0x25
	bl      Function_20d407c
.arm
branch_2222818: @ 2222818 :arm
	cmp     r5, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r8,pc}
	ldr     r0, [r5, #0x14]
	cmp     r0, #0x0
	bne     branch_2222844
	ldr     r0, [pc, #0x160] @ [0x2222998] (=0x2229984)
	ldr     r1, [pc, #0x154] @ [0x2222990] (=0x2229974)
	ldr     r2, [pc, #0x154] @ [0x2222994] (=0x22298d4)
	mov     r3, #0x2b
	bl      Function_20d407c
.arm
branch_2222844: @ 2222844 :arm
	ldr     r4, [r5, #0x14]
	cmp     r4, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r8,pc}
	ldr     r1, [pc, #0x140] @ [0x222299c] (=0x2229994)
	mov     r0, r4
	mov     r2, #0x7
	bl      Function_20d8e28
	cmp     r0, #0x0
	addeq   r4, r4, #0x7
	moveq   r8, #0x0
	beq     branch_222289c
	ldr     r1, [pc, #0x124] @ [0x22229a0] (=0x222999c)
	mov     r0, r4
	mov     r2, #0x8
	bl      Function_20d8e28
	cmp     r0, #0x0
	addeq   r4, r4, #0x8
	moveq   r8, #0x1
	beq     branch_222289c
	mov     r0, #0x0
	ldmfd   sp!, {r4-r8,pc}
@ 0x222289c

.arm
branch_222289c: @ 222289c :arm
	ldr     r1, [pc, #0x100] @ [0x22229a4] (=0x22299a8)
	mov     r0, r4
	bl      Function_20d8e98
	mov     r6, r0
	ldrsb   r7, [r4, r6]
	mov     r1, #0x0
	mov     r0, r4
	strb    r1, [r4, r6]
	bl      0x21ea8ac
	str     r0, [r5, #0x18]
	cmp     r0, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r8,pc}
	strb    r7, [r4, r6]
	ldrsb   r0, [r4, r6]!
	cmp     r0, #0x3a
	bne     branch_2222918
	add     r4, r4, #0x1
	mov     r0, r4
	bl      Function_20dae0c
	strh    r0, [r5, #0x20]
	ldrh    r0, [r5, #0x20]
	cmp     r0, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r8,pc}
.arm
branch_2222900: @ 2222900 :arm
	ldrsb   r0, [r4, #0x1]!
	cmp     r0, #0x0
	beq     branch_222292c
	cmp     r0, #0x2f
	bne     branch_2222900
	b       branch_222292c
@ 0x2222918

.arm
branch_2222918: @ 2222918 :arm
	cmp     r8, #0x0
	ldrne   r0, [pc, #0x84] @ [0x22229a8] (=0x1bb)
	strneh  r0, [r5, #0x20]
	moveq   r0, #0x50
	streqh  r0, [r5, #0x20]
.arm
branch_222292c: @ 222292c :arm
	ldrsb   r0, [r4]
	cmp     r0, #0x0
	ldreq   r4, [pc, #0x70] @ [0x22229ac] (=0x22299ac)
	mov     r0, r4
	bl      0x21ea8ac
	mov     r1, #0x20
	mov     r7, r0
	str     r0, [r5, #0x24]
	bl      Function_20d8e5c
	cmp     r0, #0x0
	beq     branch_222297c
	mov     r6, #0x2b
	mov     r4, #0x20
.arm
branch_2222960: @ 2222960 :arm
	strb    r6, [r0]
	ldr     r7, [r5, #0x24]
	mov     r1, r4
	mov     r0, r7
	bl      Function_20d8e5c
	cmp     r0, #0x0
	bne     branch_2222960
.arm
branch_222297c: @ 222297c :arm
	cmp     r7, #0x0
	moveq   r0, #0x0
	movne   r0, #0x1
	ldmfd   sp!, {r4-r8,pc}
@ 0x222298c

.word 0x2229968 @ 0x222298c
.word 0x2229974 @ 0x2222990
.word 0x22298d4 @ 0x2222994
.word 0x2229984 @ 0x2222998
.word 0x2229994 @ 0x222299c
.word 0x222999c @ 0x22229a0
.word 0x22299a8 @ 0x22229a4
.word 0x1bb @ 0x22229a8
.word 0x22299ac @ 0x22229ac
.arm
Function_22229b0: @ 22229b0 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r1, #0x0
	mov     r4, r0
	mov     r2, r1
	bl      Function_2220754
	bl      0x21ea8a4
	mov     r0, r4
	bl      Function_22227f8
	cmp     r0, #0x0
	bne     branch_22229ec
	mov     r0, #0x1
	str     r0, [r4, #0xfc]
	mov     r0, #0x3
	str     r0, [r4, #0x38]
	ldmfd   sp!, {r3-r5,pc}
@ 0x22229ec

.arm
branch_22229ec: @ 22229ec :arm
	ldr     r5, [r4, #0x15c]
	cmp     r5, #0x0
	bne     branch_2222a08
	ldr     r0, [pc, #0x70] @ [0x2222a70] (=0x2229e28)
	ldr     r5, [r0]
	cmp     r5, #0x0
	ldreq   r5, [r4, #0x18]
.arm
branch_2222a08: @ 2222a08 :arm
	mov     r0, r5
	bl      0x21eaf1c
	mvn     r1, #0x0
	str     r0, [r4, #0x1c]
	cmp     r0, r1
	bne     branch_2222a54
	mov     r0, r5
	bl      0x220854c
	cmp     r0, #0x0
	bne     branch_2222a44
	mov     r0, #0x1
	str     r0, [r4, #0xfc]
	mov     r0, #0x4
	str     r0, [r4, #0x38]
	ldmfd   sp!, {r3-r5,pc}
@ 0x2222a44

.arm
branch_2222a44: @ 2222a44 :arm
	ldr     r0, [r0, #0xc]
	ldr     r0, [r0]
	ldr     r0, [r0]
	str     r0, [r4, #0x1c]
.arm
branch_2222a54: @ 2222a54 :arm
	mov     r1, #0x0
	mov     r3, #0x1
	mov     r0, r4
	mov     r2, r1
	str     r3, [r4, #0x10]
	bl      Function_2220754
	ldmfd   sp!, {r3-r5,pc}
@ 0x2222a70

.word 0x2229e28 @ 0x2222a70
.arm
Function_2222a74: @ 2222a74 :arm
	stmfd   sp!, {r4,lr}
	sub     sp, sp, #0x10
	mov     r4, r0
	ldr     r1, [r4, #0x48]
	mvn     r0, #0x0
	cmp     r1, r0
	bne     branch_2222c20
	mov     r0, #0x2
	mov     r1, #0x1
	mov     r2, #0x0
	bl      0x21eacdc
	mvn     r1, #0x0
	str     r0, [r4, #0x48]
	cmp     r0, r1
	bne     branch_2222ad4
	mov     r0, #0x1
	str     r0, [r4, #0xfc]
	mov     r0, #0x5
	str     r0, [r4, #0x38]
	ldr     r0, [r4, #0x48]
	bl      0x21eaf38
	add     sp, sp, #0x10
	str     r0, [r4, #0x4c]
	ldmfd   sp!, {r4,pc}
@ 0x2222ad4

.arm
branch_2222ad4: @ 2222ad4 :arm
	mov     r1, #0x0
	bl      0x21ea924
	cmp     r0, #0x0
	bne     branch_2222b08
	mov     r0, #0x1
	str     r0, [r4, #0xfc]
	mov     r0, #0x5
	str     r0, [r4, #0x38]
	ldr     r0, [r4, #0x48]
	bl      0x21eaf38
	add     sp, sp, #0x10
	str     r0, [r4, #0x4c]
	ldmfd   sp!, {r4,pc}
@ 0x2222b08

.arm
branch_2222b08: @ 2222b08 :arm
	ldr     r0, [r4, #0x134]
	cmp     r0, #0x0
	beq     branch_2222b24
	ldr     r1, [pc, #0x19c] @ [0x2222cb8] (=0x2229120)
	ldr     r0, [r4, #0x48]
	ldr     r1, [r1]
	bl      0x21ea964
.arm
branch_2222b24: @ 2222b24 :arm
	add     r2, sp, #0x8
	mov     r1, #0x0
	str     r1, [r2]
	mov     r0, #0x2
	str     r1, [r2, #0x4]
	strb    r0, [sp, #0x9]
	ldr     r0, [r4, #0x15c]
	cmp     r0, #0x0
	beq     branch_2222b6c
	add     r0, r4, #1, 24 @ #0x100
	ldrh    r0, [r0, #0x60]
	mov     r1, r0, asr #8
	mov     r0, r0, lsl #8
	and     r1, r1, #0xff
	and     r0, r0, #255, 24 @ #0xff00
	orr     r0, r1, r0
	strh    r0, [sp, #0xa]
	b       branch_2222bbc
@ 0x2222b6c

.arm
branch_2222b6c: @ 2222b6c :arm
	ldr     r0, [pc, #0x148] @ [0x2222cbc] (=0x2229e28)
	ldr     r0, [r0]
	cmp     r0, #0x0
	beq     branch_2222ba0
	ldr     r0, [pc, #0x13c] @ [0x2222cc0] (=0x2229e24)
	ldrh    r0, [r0]
	mov     r1, r0, asr #8
	mov     r0, r0, lsl #8
	and     r1, r1, #0xff
	and     r0, r0, #255, 24 @ #0xff00
	orr     r0, r1, r0
	strh    r0, [sp, #0xa]
	b       branch_2222bbc
@ 0x2222ba0

.arm
branch_2222ba0: @ 2222ba0 :arm
	ldrh    r0, [r4, #0x20]
	mov     r1, r0, asr #8
	mov     r0, r0, lsl #8
	and     r1, r1, #0xff
	and     r0, r0, #255, 24 @ #0xff00
	orr     r0, r1, r0
	strh    r0, [sp, #0xa]
.arm
branch_2222bbc: @ 2222bbc :arm
	ldr     r0, [r4, #0x1c]
	add     r1, sp, #0x8
	str     r0, [sp, #0xc]
	ldr     r0, [r4, #0x48]
	mov     r2, #0x8
	bl      0x21ead78
	mvn     r1, #0x0
	cmp     r0, r1
	bne     branch_2222c20
	ldr     r0, [r4, #0x48]
	bl      0x21eaf38
	mvn     r2, #0x5
	cmp     r0, r2
	subne   r1, r2, #0x14
	cmpne   r0, r1
	subne   r1, r2, #0x46
	cmpne   r0, r1
	beq     branch_2222c20
	mov     r1, #0x1
	str     r1, [r4, #0xfc]
	mov     r1, #0x6
	str     r1, [r4, #0x38]
	add     sp, sp, #0x10
	str     r0, [r4, #0x4c]
	ldmfd   sp!, {r4,pc}
@ 0x2222c20

.arm
branch_2222c20: @ 2222c20 :arm
	ldr     r0, [r4, #0x48]
	add     r2, sp, #0x4
	add     r3, sp, #0x0
	mov     r1, #0x0
	bl      0x21eaa74
	cmp     r0, #0x0
	movgt   r1, #0x1
	movle   r1, #0x0
	mvn     r0, #0x0
	cmp     r1, r0
	beq     branch_2222c58
	ldr     r0, [sp]
	cmp     r0, #0x0
	beq     branch_2222c88
.arm
branch_2222c58: @ 2222c58 :arm
	mov     r0, #0x1
	str     r0, [r4, #0xfc]
	mov     r0, #0x6
	cmp     r1, #0x0
	addne   sp, sp, #0x10
	str     r0, [r4, #0x38]
	ldmnefd sp!, {r4,pc}
	ldr     r0, [r4, #0x48]
	bl      0x21eaf38
	add     sp, sp, #0x10
	str     r0, [r4, #0x4c]
	ldmfd   sp!, {r4,pc}
@ 0x2222c88

.arm
branch_2222c88: @ 2222c88 :arm
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	addeq   sp, sp, #0x10
	ldmeqfd sp!, {r4,pc}
	mov     r1, #0x0
	mov     r3, #0x2
	mov     r0, r4
	mov     r2, r1
	str     r3, [r4, #0x10]
	bl      Function_2220754
	add     sp, sp, #0x10
	ldmfd   sp!, {r4,pc}
@ 0x2222cb8

.word 0x2229120 @ 0x2222cb8
.word 0x2229e28 @ 0x2222cbc
.word 0x2229e24 @ 0x2222cc0
.arm
Function_2222cc4: @ 2222cc4 :arm
	stmfd   sp!, {r3,r4,lr}
	sub     sp, sp, #0x4
	sub     sp, sp, #1, 22 @ #0x400
	mov     r4, r0
	ldr     r1, [r4, #0x168]
	cmp     r1, #0x0
	bne     branch_2222d38
	ldr     r0, [r4, #0x14]
	ldr     r1, [pc, #0x124] @ [0x2222e10] (=0x222999c)
	mov     r2, #0x8
	bl      Function_20d8e28
	cmp     r0, #0x0
	bne     branch_2222d14
	mov     r0, #0x1
	add     sp, sp, #0x4
	str     r0, [r4, #0xfc]
	mov     r0, #0x11
	add     sp, sp, #1, 22 @ #0x400
	str     r0, [r4, #0x38]
	ldmfd   sp!, {r3,r4,pc}
@ 0x2222d14

.arm
branch_2222d14: @ 2222d14 :arm
	mov     r1, #0x0
	mov     r3, #0x3
	mov     r0, r4
	mov     r2, r1
	str     r3, [r4, #0x10]
	bl      Function_2220754
	add     sp, sp, #0x4
	add     sp, sp, #1, 22 @ #0x400
	ldmfd   sp!, {r3,r4,pc}
@ 0x2222d38

.arm
branch_2222d38: @ 2222d38 :arm
	ldr     r1, [r4, #0x170]
	cmp     r1, #0x0
	beq     branch_2222d64
	mov     r1, #0x0
	mov     r3, #0x3
	mov     r2, r1
	str     r3, [r4, #0x10]
	bl      Function_2220754
	add     sp, sp, #0x4
	add     sp, sp, #1, 22 @ #0x400
	ldmfd   sp!, {r3,r4,pc}
@ 0x2222d64

.arm
branch_2222d64: @ 2222d64 :arm
	ldr     r1, [r4, #0x16c]
	cmp     r1, #0x0
	bne     branch_2222da4
	ldr     r2, [r4, #0x174]
	add     r1, r4, #89, 30 @ #0x164
	blx     r2
	cmp     r0, #0x3
	bne     branch_2222da4
	ldr     r0, [pc, #0x88] @ [0x2222e14] (=0x22299b0)
	ldr     r1, [pc, #0x88] @ [0x2222e18] (=0x2229974)
	ldr     r2, [pc, #0x88] @ [0x2222e1c] (=0x2229914)
	ldr     r3, [pc, #0x88] @ [0x2222e20] (=0x146)
	bl      Function_20d407c
	add     sp, sp, #0x4
	add     sp, sp, #1, 22 @ #0x400
	ldmfd   sp!, {r3,r4,pc}
@ 0x2222da4

.arm
branch_2222da4: @ 2222da4 :arm
	ldr     r1, [r4, #0x60]
	ldr     r0, [r4, #0x5c]
	cmp     r1, r0
	bge     branch_2222dec
	mov     r0, r4
	bl      Function_2220548
	cmp     r0, #0x0
	addeq   sp, sp, #0x4
	addeq   sp, sp, #1, 22 @ #0x400
	ldmeqfd sp!, {r3,r4,pc}
	ldr     r1, [r4, #0x60]
	ldr     r0, [r4, #0x5c]
	cmp     r1, r0
	addlt   sp, sp, #0x4
	addlt   sp, sp, #1, 22 @ #0x400
	ldmltfd sp!, {r3,r4,pc}
	add     r0, r4, #0x50
	bl      Function_2220504
.arm
branch_2222dec: @ 2222dec :arm
	mov     r3, #1, 22 @ #0x400
	add     r1, sp, #0x4
	add     r2, sp, #0x0
	mov     r0, r4
	str     r3, [sp]
	bl      Function_222097c
	add     sp, sp, #0x4
	add     sp, sp, #1, 22 @ #0x400
	ldmfd   sp!, {r3,r4,pc}
@ 0x2222e10

.word 0x222999c @ 0x2222e10
.word 0x22299b0 @ 0x2222e14
.word 0x2229974 @ 0x2222e18
.word 0x2229914 @ 0x2222e1c
.word 0x146 @ 0x2222e20
.arm
Function_2222e24: @ 2222e24 :arm
	stmfd   sp!, {r3-r5,lr}
	sub     sp, sp, #0x10
	mov     r5, r0
	ldr     r0, [r5, #0x5c]
	cmp     r0, #0x0
	bne     branch_2222ffc
	ldr     r0, [r5, #0x13c]
	add     r4, r5, #0x50
	cmp     r0, #0x0
	ldrne   r1, [pc, #0x208] @ [0x2223058] (=0x22299b4)
	bne     branch_2222e60
	ldr     r0, [r5, #0xc]
	cmp     r0, #0x3
	ldreq   r1, [pc, #0x1fc] @ [0x222305c] (=0x22299bc)
	ldrne   r1, [pc, #0x1fc] @ [0x2223060] (=0x22299c4)
.arm
branch_2222e60: @ 2222e60 :arm
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_2220130
	ldr     r0, [r5, #0x15c]
	mov     r2, #0x0
	cmp     r0, #0x0
	ldreq   r0, [pc, #0x1e4] @ [0x2223064] (=0x2229e28)
	ldreq   r0, [r0]
	cmpeq   r0, #0x0
	beq     branch_2222e98
	ldr     r1, [r5, #0x14]
	mov     r0, r4
	bl      Function_2220130
	b       branch_2222ea4
@ 0x2222e98

.arm
branch_2222e98: @ 2222e98 :arm
	ldr     r1, [r5, #0x24]
	mov     r0, r4
	bl      Function_2220130
.arm
branch_2222ea4: @ 2222ea4 :arm
	ldr     r1, [pc, #0x1bc] @ [0x2223068] (=0x22299cc)
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_2220130
	ldrh    r0, [r5, #0x20]
	cmp     r0, #0x50
	bne     branch_2222ed4
	ldr     r2, [r5, #0x18]
	ldr     r1, [pc, #0x1a0] @ [0x222306c] (=0x22299d8)
	mov     r0, r4
	bl      Function_22203ec
	b       branch_2222f1c
@ 0x2222ed4

.arm
branch_2222ed4: @ 2222ed4 :arm
	ldr     r1, [pc, #0x194] @ [0x2223070] (=0x22299e0)
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_2220130
	ldr     r1, [r5, #0x18]
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_2220130
	mov     r0, r4
	mov     r1, #0x3a
	bl      Function_222046c
	ldrh    r1, [r5, #0x20]
	mov     r0, r4
	bl      Function_22204cc
	mov     r0, r4
	ldr     r1, [pc, #0x15c] @ [0x2223074] (=0x22299e8)
	mov     r2, #0x2
	bl      Function_2220130
.arm
branch_2222f1c: @ 2222f1c :arm
	ldr     r0, [r5, #0x28]
	cmp     r0, #0x0
	beq     branch_2222f38
	ldr     r1, [pc, #0x148] @ [0x2223078] (=0x22299ec)
	bl      Function_20d90b0
	cmp     r0, #0x0
	bne     branch_2222f48
.arm
branch_2222f38: @ 2222f38 :arm
	ldr     r1, [pc, #0x138] @ [0x2223078] (=0x22299ec)
	ldr     r2, [pc, #0x138] @ [0x222307c] (=0x22299f8)
	mov     r0, r4
	bl      Function_22203ec
.arm
branch_2222f48: @ 2222f48 :arm
	ldr     r0, [r5, #0x34]
	cmp     r0, #0x0
	beq     branch_2222f68
	ldr     r1, [pc, #0x124] @ [0x2223080] (=0x2229a08)
	ldr     r2, [pc, #0x124] @ [0x2223084] (=0x2229a14)
	mov     r0, r4
	bl      Function_22203ec
	b       branch_2222f78
@ 0x2222f68

.arm
branch_2222f68: @ 2222f68 :arm
	ldr     r1, [pc, #0x110] @ [0x2223080] (=0x2229a08)
	ldr     r2, [pc, #0x114] @ [0x2223088] (=0x2229a20)
	mov     r0, r4
	bl      Function_22203ec
.arm
branch_2222f78: @ 2222f78 :arm
	ldr     r0, [r5, #0x13c]
	cmp     r0, #0x0
	beq     branch_2222fbc
	ldr     r2, [r5, #0x14c]
	ldr     r1, [pc, #0xfc] @ [0x222308c] (=0x2229a28)
	add     r0, sp, #0x0
	bl      Function_20d7510
	ldr     r1, [pc, #0xf4] @ [0x2223090] (=0x2229a2c)
	add     r2, sp, #0x0
	mov     r0, r4
	bl      Function_22203ec
	mov     r0, r5
	bl      Function_2221924
	mov     r2, r0
	ldr     r1, [pc, #0xdc] @ [0x2223094] (=0x2229a3c)
	mov     r0, r4
	bl      Function_22203ec
.arm
branch_2222fbc: @ 2222fbc :arm
	ldr     r1, [r5, #0x28]
	cmp     r1, #0x0
	beq     branch_2222fd4
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_2220130
.arm
branch_2222fd4: @ 2222fd4 :arm
	ldr     r1, [pc, #0x98] @ [0x2223074] (=0x22299e8)
	mov     r0, r4
	mov     r2, #0x2
	bl      Function_2220130
	add     r0, r5, #0x50
	cmp     r4, r0
	beq     branch_2222ffc
	ldr     r1, [r4, #0x4]
	ldr     r2, [r4, #0xc]
	bl      Function_2220130
.arm
branch_2222ffc: @ 2222ffc :arm
	mov     r0, r5
	bl      Function_2220548
	cmp     r0, #0x0
	addeq   sp, sp, #0x10
	ldmeqfd sp!, {r3-r5,pc}
	ldr     r1, [r5, #0x60]
	ldr     r0, [r5, #0x5c]
	cmp     r1, r0
	addlt   sp, sp, #0x10
	ldmltfd sp!, {r3-r5,pc}
	add     r0, r5, #0x50
	bl      Function_2220504
	ldr     r0, [r5, #0x13c]
	mov     r1, #0x0
	cmp     r0, #0x0
	movne   r0, #0x4
	moveq   r0, #0x5
	str     r0, [r5, #0x10]
	mov     r0, r5
	mov     r2, r1
	bl      Function_2220754
	add     sp, sp, #0x10
	ldmfd   sp!, {r3-r5,pc}
@ 0x2223058

.word 0x22299b4 @ 0x2223058
.word 0x22299bc @ 0x222305c
.word 0x22299c4 @ 0x2223060
.word 0x2229e28 @ 0x2223064
.word 0x22299cc @ 0x2223068
.word 0x22299d8 @ 0x222306c
.word 0x22299e0 @ 0x2223070
.word 0x22299e8 @ 0x2223074
.word 0x22299ec @ 0x2223078
.word 0x22299f8 @ 0x222307c
.word 0x2229a08 @ 0x2223080
.word 0x2229a14 @ 0x2223084
.word 0x2229a20 @ 0x2223088
.word 0x2229a28 @ 0x222308c
.word 0x2229a2c @ 0x2223090
.word 0x2229a3c @ 0x2223094
.arm
Function_2223098: @ 2223098 :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0
	ldr     r5, [r6, #0x148]
	bl      Function_2222578
	movs    r4, r0
	bne     branch_22230e4
	ldr     r0, [r6, #0xfc]
	cmp     r0, #0x0
	ldrne   r0, [r6, #0x38]
	cmpne   r0, #0x0
	bne     branch_22230d8
	ldr     r0, [pc, #0x58] @ [0x2223124] (=0x2229a4c)
	ldr     r1, [pc, #0x58] @ [0x2223128] (=0x2229974)
	ldr     r2, [pc, #0x58] @ [0x222312c] (=0x22298e0)
	mov     r3, #2, 24 @ #0x200
	bl      Function_20d407c
.arm
branch_22230d8: @ 22230d8 :arm
	mov     r0, r6
	bl      Function_2221edc
	ldmfd   sp!, {r4-r6,pc}
@ 0x22230e4

.arm
branch_22230e4: @ 22230e4 :arm
	ldr     r0, [r6, #0x148]
	cmp     r5, r0
	beq     branch_22230f8
	mov     r0, r6
	bl      Function_22207d0
.arm
branch_22230f8: @ 22230f8 :arm
	cmp     r4, #0x1
	ldmnefd sp!, {r4-r6,pc}
	mov     r0, r6
	bl      Function_2221edc
	mov     r1, #0x0
	mov     r3, #0x5
	mov     r0, r6
	mov     r2, r1
	str     r3, [r6, #0x10]
	bl      Function_2220754
	ldmfd   sp!, {r4-r6,pc}
@ 0x2223124

.word 0x2229a4c @ 0x2223124
.word 0x2229974 @ 0x2223128
.word 0x22298e0 @ 0x222312c
.arm
Function_2223130: @ 2223130 :arm
	stmfd   sp!, {r3,r4,lr}
	sub     sp, sp, #0x4
	mov     r4, r0
	mov     r2, #0x0
	ldr     r0, [r4, #0x48]
	add     r1, sp, #0x0
	mov     r3, r2
	bl      0x21eaa74
	mvn     r1, #0x0
	cmp     r0, r1
	bne     branch_2223180
	mov     r0, #0x1
	str     r0, [r4, #0xfc]
	mov     r0, #0x5
	str     r0, [r4, #0x38]
	ldr     r0, [r4, #0x48]
	bl      0x21eaf38
	add     sp, sp, #0x4
	str     r0, [r4, #0x4c]
	ldmfd   sp!, {r3,r4,pc}
@ 0x2223180

.arm
branch_2223180: @ 2223180 :arm
	ldr     r0, [sp]
	cmp     r0, #0x0
	addeq   sp, sp, #0x4
	ldmeqfd sp!, {r3,r4,pc}
	mov     r1, #0x0
	mov     r3, #0x6
	mov     r0, r4
	mov     r2, r1
	str     r3, [r4, #0x10]
	bl      Function_2220754
	add     sp, sp, #0x4
	ldmfd   sp!, {r3,r4,pc}
@ 0x22231b0

.arm
Function_22231b0: @ 22231b0 :arm
	stmfd   sp!, {r4-r6,lr}
	sub     sp, sp, #0x18
	movs    r4, r0
	bne     branch_22231d4
	ldr     r0, [pc, #0x114] @ [0x22232dc] (=0x2229968)
	ldr     r1, [pc, #0x114] @ [0x22232e0] (=0x2229974)
	ldr     r2, [pc, #0x114] @ [0x22232e4] (=0x22298f0)
	ldr     r3, [pc, #0x114] @ [0x22232e8] (=0x24e)
	bl      Function_20d407c
.arm
branch_22231d4: @ 22231d4 :arm
	ldr     r0, [r4, #0x80]
	cmp     r0, #0x0
	bgt     branch_22231f4
	ldr     r0, [pc, #0x104] @ [0x22232ec] (=0x2229a78)
	ldr     r1, [pc, #0xf4] @ [0x22232e0] (=0x2229974)
	ldr     r2, [pc, #0xf4] @ [0x22232e4] (=0x22298f0)
	ldr     r3, [pc, #0xfc] @ [0x22232f0] (=0x24f)
	bl      Function_20d407c
.arm
branch_22231f4: @ 22231f4 :arm
	add     r1, sp, #0xc
	str     r1, [sp]
	add     r0, sp, #0x8
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x78]
	ldr     r1, [pc, #0xe4] @ [0x22232f4] (=0x2229a98)
	add     r2, sp, #0x14
	add     r3, sp, #0x10
	bl      Function_20d8a08
	mov     r12, #0x0
	ldr     r5, [sp, #0x8]
	mov     lr, #0x1
	ldr     r2, [pc, #0xcc] @ [0x22232f8] (=0x20fe864)
	mov     r3, r12
	b       branch_2223238
@ 0x2223230

.arm
branch_2223230: @ 2223230 :arm
	add     r5, r5, #0x1
	str     r5, [sp, #0x8]
.arm
branch_2223238: @ 2223238 :arm
	ldr     r1, [r4, #0x78]
	ldrsb   r1, [r1, r5]
	cmp     r1, #0x0
	beq     branch_2223274
	mov     r6, lr
	blt     branch_2223258
	cmp     r1, #0x80
	movlt   r6, r12
.arm
branch_2223258: @ 2223258 :arm
	cmp     r6, #0x0
	movne   r1, r3
	moveq   r1, r1, lsl #1
	ldreqh  r1, [r2, r1]
	andeq   r1, r1, #1, 24 @ #0x100
	cmp     r1, #0x0
	bne     branch_2223230
.arm
branch_2223274: @ 2223274 :arm
	cmp     r0, #0x3
	bne     branch_2223298
	ldr     r1, [sp, #0x14]
	cmp     r1, #0x1
	ldrge   r0, [sp, #0xc]
	cmpge   r0, #0x64
	blt     branch_2223298
	cmp     r0, #150, 30 @ #0x258
	blt     branch_22232b4
.arm
branch_2223298: @ 2223298 :arm
	mov     r0, #0x1
	str     r0, [r4, #0xfc]
	mov     r0, #0x7
	str     r0, [r4, #0x38]
	add     sp, sp, #0x18
	mov     r0, #0x0
	ldmfd   sp!, {r4-r6,pc}
@ 0x22232b4

.arm
branch_22232b4: @ 22232b4 :arm
	str     r1, [r4, #0xe4]
	ldr     r1, [sp, #0x10]
	mov     r0, #0x1
	str     r1, [r4, #0xe8]
	ldr     r1, [sp, #0xc]
	str     r1, [r4, #0xec]
	ldr     r1, [sp, #0x8]
	str     r1, [r4, #0xf0]
	add     sp, sp, #0x18
	ldmfd   sp!, {r4-r6,pc}
@ 0x22232dc

.word 0x2229968 @ 0x22232dc
.word 0x2229974 @ 0x22232e0
.word 0x22298f0 @ 0x22232e4
.word 0x24e @ 0x22232e8
.word 0x2229a78 @ 0x22232ec
.word 0x24f @ 0x22232f0
.word 0x2229a98 @ 0x22232f4
.word 0x20fe864 @ 0x22232f8
.arm
Function_22232fc: @ 22232fc :arm
	stmfd   sp!, {r4,r5,lr}
	sub     sp, sp, #0x4
	sub     sp, sp, #1, 22 @ #0x400
	mov     r3, #1, 22 @ #0x400
	add     r1, sp, #0x4
	add     r2, sp, #0x0
	mov     r4, r0
	str     r3, [sp]
	bl      Function_222097c
	mov     r5, r0
	cmp     r5, #0x3
	addeq   sp, sp, #0x4
	addeq   sp, sp, #1, 22 @ #0x400
	ldmeqfd sp!, {r4,r5,pc}
	cmp     r5, #0x1
	ldreq   r1, [r4, #0x84]
	ldreq   r0, [r4, #0x80]
	cmpeq   r1, r0
	addeq   sp, sp, #0x4
	addeq   sp, sp, #1, 22 @ #0x400
	ldmeqfd sp!, {r4,r5,pc}
	cmp     r5, #0x0
	bne     branch_2223378
	ldr     r2, [sp]
	add     r1, sp, #0x4
	add     r0, r4, #0x74
	bl      Function_2220130
	cmp     r0, #0x0
	addeq   sp, sp, #0x4
	addeq   sp, sp, #1, 22 @ #0x400
	ldmeqfd sp!, {r4,r5,pc}
.arm
branch_2223378: @ 2223378 :arm
	ldr     r0, [r4, #0x78]
	ldr     r1, [pc, #0x9c] @ [0x2223420] (=0x22299e8)
	bl      Function_20d90b0
	cmp     r0, #0x0
	beq     branch_22233e8
	mov     r1, #0x0
	strb    r1, [r0]
	ldr     r1, [r4, #0x78]
	sub     r5, r0, r1
	add     r1, r5, #0x1
	mov     r0, r4
	str     r1, [r4, #0xf8]
	bl      Function_22231b0
	cmp     r0, #0x0
	addeq   sp, sp, #0x4
	addeq   sp, sp, #1, 22 @ #0x400
	ldmeqfd sp!, {r4,r5,pc}
	add     r3, r5, #0x2
	mov     r1, #0x0
	str     r3, [r4, #0x84]
	mov     r3, #0x7
	mov     r0, r4
	mov     r2, r1
	str     r3, [r4, #0x10]
	bl      Function_2220754
	add     sp, sp, #0x4
	add     sp, sp, #1, 22 @ #0x400
	ldmfd   sp!, {r4,r5,pc}
@ 0x22233e8

.arm
branch_22233e8: @ 22233e8 :arm
	cmp     r5, #0x2
	addne   sp, sp, #0x4
	addne   sp, sp, #1, 22 @ #0x400
	ldmnefd sp!, {r4,r5,pc}
	mov     r0, #0x1
	str     r0, [r4, #0xfc]
	mov     r0, #0x7
	str     r0, [r4, #0x38]
	ldr     r0, [r4, #0x48]
	bl      0x21eaf38
	str     r0, [r4, #0x4c]
	add     sp, sp, #0x4
	add     sp, sp, #1, 22 @ #0x400
	ldmfd   sp!, {r4,r5,pc}
@ 0x2223420

.word 0x22299e8 @ 0x2223420
.arm
Function_2223424: @ 2223424 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x100]
	mov     r12, #0x0
	add     r3, r0, r2
	str     r3, [r4, #0x100]
	ldr     r0, [r4, #0x104]
	mov     lr, r12
	cmp     r3, r0
	beq     branch_2223458
	ldr     r0, [r4, #0x130]
	cmp     r0, #0x0
	beq     branch_2223460
.arm
branch_2223458: @ 2223458 :arm
	mov     r0, #0x1
	str     r0, [r4, #0xfc]
.arm
branch_2223460: @ 2223460 :arm
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x0
	bne     branch_222348c
	add     r0, r4, #0xbc
	bl      Function_2220130
	cmp     r0, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r4,pc}
	ldr     r12, [r4, #0xc0]
	ldr     lr, [r4, #0xc8]
	b       branch_22234cc
@ 0x222348c

.arm
branch_222348c: @ 222348c :arm
	cmp     r0, #0x1
	bne     branch_22234c0
	cmp     r2, #0x0
	beq     branch_22234b4
	mov     r0, #0x1
	str     r0, [r4, #0xfc]
	mov     r0, #0xd
	str     r0, [r4, #0x38]
	mov     r0, #0x0
	ldmfd   sp!, {r4,pc}
@ 0x22234b4

.arm
branch_22234b4: @ 22234b4 :arm
	mov     r12, r1
	mov     lr, r2
	b       branch_22234cc
@ 0x22234c0

.arm
branch_22234c0: @ 22234c0 :arm
	cmp     r0, #0x2
	moveq   r12, r1
	moveq   lr, r2
.arm
branch_22234cc: @ 22234cc :arm
	mov     r0, r4
	mov     r1, r12
	mov     r2, lr
	bl      Function_2220754
	mov     r0, #0x1
	ldmfd   sp!, {r4,pc}
@ 0x22234e4

.arm
Function_22234e4: @ 22234e4 :arm
	stmfd   sp!, {r3,r4,lr}
	sub     sp, sp, #0x4
	mov     r4, r0
	ldr     r0, [r4, #0x120]
	cmp     r0, #0x0
	bne     branch_2223510
	ldr     r0, [pc, #0x30] @ [0x2223534] (=0x2229aa8)
	ldr     r1, [pc, #0x30] @ [0x2223538] (=0x2229974)
	ldr     r2, [pc, #0x30] @ [0x222353c] (=0x2229900)
	ldr     r3, [pc, #0x30] @ [0x2223540] (=0x321)
	bl      Function_20d407c
.arm
branch_2223510: @ 2223510 :arm
	ldr     r1, [pc, #0x2c] @ [0x2223544] (=0x2229aac)
	add     r2, sp, #0x0
	add     r0, r4, #69, 30 @ #0x114
	bl      Function_20d8a08
	cmp     r0, #0x1
	mvnne   r0, #0x0
	ldreq   r0, [sp]
	add     sp, sp, #0x4
	ldmfd   sp!, {r3,r4,pc}
@ 0x2223534

.word 0x2229aa8 @ 0x2223534
.word 0x2229974 @ 0x2223538
.word 0x2229900 @ 0x222353c
.word 0x321 @ 0x2223540
.word 0x2229aac @ 0x2223544
.arm
Function_2223548: @ 2223548 :arm
	stmfd   sp!, {r3-r7,lr}
	movs    r4, r0
	mov     r7, r1
	mov     r6, r2
	bne     branch_2223570
	ldr     r0, [pc, #0x94] @ [0x22235f8] (=0x2229968)
	ldr     r1, [pc, #0x94] @ [0x22235fc] (=0x2229974)
	ldr     r2, [pc, #0x94] @ [0x2223600] (=0x2229948)
	ldr     r3, [pc, #0x94] @ [0x2223604] (=0x333)
	bl      Function_20d407c
.arm
branch_2223570: @ 2223570 :arm
	cmp     r7, #0x0
	bne     branch_222358c
	ldr     r0, [pc, #0x88] @ [0x2223608] (=0x2229ab0)
	ldr     r1, [pc, #0x78] @ [0x22235fc] (=0x2229974)
	ldr     r2, [pc, #0x78] @ [0x2223600] (=0x2229948)
	mov     r3, #205, 30 @ #0x334
	bl      Function_20d407c
.arm
branch_222358c: @ 222358c :arm
	cmp     r6, #0x0
	bge     branch_22235a8
	ldr     r0, [pc, #0x70] @ [0x222360c] (=0x2229ab8)
	ldr     r1, [pc, #0x5c] @ [0x22235fc] (=0x2229974)
	ldr     r2, [pc, #0x5c] @ [0x2223600] (=0x2229948)
	ldr     r3, [pc, #0x68] @ [0x2223610] (=0x335)
	bl      Function_20d407c
.arm
branch_22235a8: @ 22235a8 :arm
	cmp     r6, #0x0
	ldmeqfd sp!, {r3-r7,pc}
	ldr     r3, [r4, #0x120]
	cmp     r3, #0xa
	ldmgefd sp!, {r3-r7,pc}
	rsb     r5, r3, #0xa
	cmp     r5, r6
	movge   r5, r6
	add     r0, r4, #69, 30 @ #0x114
	mov     r1, r7
	mov     r2, r5
	add     r0, r0, r3
	bl      CopyDataInByteSteps
	ldr     r0, [r4, #0x120]
	mov     r1, #0x0
	add     r0, r0, r5
	str     r0, [r4, #0x120]
	add     r0, r4, r0
	strb    r1, [r0, #0x114]
	ldmfd   sp!, {r3-r7,pc}
@ 0x22235f8

.word 0x2229968 @ 0x22235f8
.word 0x2229974 @ 0x22235fc
.word 0x2229948 @ 0x2223600
.word 0x333 @ 0x2223604
.word 0x2229ab0 @ 0x2223608
.word 0x2229ab8 @ 0x222360c
.word 0x335 @ 0x2223610
.arm
Function_2223614: @ 2223614 :arm
	stmfd   sp!, {r3-r11,lr}
	movs    r6, r0
	mov     r5, r1
	mov     r4, r2
	bne     branch_222363c
	ldr     r0, [pc, #0x1e0] @ [0x2223810] (=0x2229968)
	ldr     r1, [pc, #0x1e0] @ [0x2223814] (=0x2229974)
	ldr     r2, [pc, #0x1e0] @ [0x2223818] (=0x222992c)
	ldr     r3, [pc, #0x1e0] @ [0x222381c] (=0x35d)
	bl      Function_20d407c
.arm
branch_222363c: @ 222363c :arm
	cmp     r5, #0x0
	bne     branch_2223658
	ldr     r0, [pc, #0x1d4] @ [0x2223820] (=0x2229ab0)
	ldr     r1, [pc, #0x1c4] @ [0x2223814] (=0x2229974)
	ldr     r2, [pc, #0x1c4] @ [0x2223818] (=0x222992c)
	ldr     r3, [pc, #0x1cc] @ [0x2223824] (=0x35e)
	bl      Function_20d407c
.arm
branch_2223658: @ 2223658 :arm
	cmp     r4, #0x0
	bgt     branch_2223674
	ldr     r0, [pc, #0x1c0] @ [0x2223828] (=0x2229ac4)
	ldr     r1, [pc, #0x1a8] @ [0x2223814] (=0x2229974)
	ldr     r2, [pc, #0x1a8] @ [0x2223818] (=0x222992c)
	ldr     r3, [pc, #0x1b8] @ [0x222382c] (=0x35f)
	bl      Function_20d407c
.arm
branch_2223674: @ 2223674 :arm
	ldr     r0, [r6, #0x110]
	cmp     r0, #0x0
	beq     branch_22237fc
	cmp     r4, #0x0
	ble     branch_22237f4
	mov     r8, #0x0
	mov     r11, #0x1
	mov     r9, #0x3
	mvn     r7, #0x0
.arm
branch_2223698: @ 2223698 :arm
	ldr     r0, [r6, #0x128]
	cmp     r0, #0x0
	bne     branch_222372c
	mov     r0, r5
	mov     r1, #0xa
	bl      Function_20d8e5c
	movs    r10, r0
	beq     branch_2223714
	mov     r0, r6
	mov     r1, r5
	sub     r2, r10, r5
	bl      Function_2223548
	add     r1, r10, #0x1
	sub     r2, r1, r5
	mov     r0, r6
	sub     r4, r4, r2
	mov     r5, r1
	bl      Function_22234e4
	str     r0, [r6, #0x124]
	cmp     r0, r7
	bne     branch_2223704
	mov     r0, #0x1
	str     r0, [r6, #0xfc]
	mov     r0, #0x7
	str     r0, [r6, #0x38]
	mov     r0, #0x0
	ldmfd   sp!, {r3-r11,pc}
@ 0x2223704

.arm
branch_2223704: @ 2223704 :arm
	cmp     r0, #0x0
	streq   r9, [r6, #0x128]
	strne   r11, [r6, #0x128]
	b       branch_22237ec
@ 0x2223714

.arm
branch_2223714: @ 2223714 :arm
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	bl      Function_2223548
	mov     r0, #0x1
	ldmfd   sp!, {r3-r11,pc}
@ 0x222372c

.arm
branch_222372c: @ 222372c :arm
	cmp     r0, #0x1
	bne     branch_222377c
	ldr     r10, [r6, #0x124]
	mov     r0, r6
	cmp     r10, r4
	movge   r10, r4
	mov     r1, r5
	mov     r2, r10
	bl      Function_2223424
	cmp     r0, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r11,pc}
	ldr     r0, [r6, #0x124]
	add     r5, r5, r10
	subs    r0, r0, r10
	str     r0, [r6, #0x124]
	moveq   r0, #0x2
	sub     r4, r4, r10
	streq   r0, [r6, #0x128]
	b       branch_22237ec
@ 0x222377c

.arm
branch_222377c: @ 222377c :arm
	cmp     r0, #0x2
	bne     branch_22237c0
	mov     r0, r5
	mov     r1, #0xa
	bl      Function_20d8e5c
	cmp     r0, #0x0
	moveq   r0, #0x1
	ldmeqfd sp!, {r3-r11,pc}
	strb    r8, [r6, #0x114]
	str     r8, [r6, #0x120]
	add     r0, r0, #0x1
	sub     r1, r0, r5
	str     r8, [r6, #0x124]
	mov     r5, r0
	str     r8, [r6, #0x128]
	sub     r4, r4, r1
	b       branch_22237ec
@ 0x22237c0

.arm
branch_22237c0: @ 22237c0 :arm
	cmp     r0, #0x3
	moveq   r0, #0x1
	streq   r0, [r6, #0xfc]
	ldmeqfd sp!, {r3-r11,pc}
	ldr     r0, [pc, #0x58] @ [0x2223830] (=0x22299b0)
	ldr     r1, [pc, #0x38] @ [0x2223814] (=0x2229974)
	ldr     r2, [pc, #0x38] @ [0x2223818] (=0x222992c)
	ldr     r3, [pc, #0x50] @ [0x2223834] (=0x3e3)
	bl      Function_20d407c
	mov     r0, #0x0
	ldmfd   sp!, {r3-r11,pc}
@ 0x22237ec

.arm
branch_22237ec: @ 22237ec :arm
	cmp     r4, #0x0
	bgt     branch_2223698
.arm
branch_22237f4: @ 22237f4 :arm
	mov     r0, #0x1
	ldmfd   sp!, {r3-r11,pc}
@ 0x22237fc

.arm
branch_22237fc: @ 22237fc :arm
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	bl      Function_2223424
	ldmfd   sp!, {r3-r11,pc}
@ 0x2223810

.word 0x2229968 @ 0x2223810
.word 0x2229974 @ 0x2223814
.word 0x222992c @ 0x2223818
.word 0x35d @ 0x222381c
.word 0x2229ab0 @ 0x2223820
.word 0x35e @ 0x2223824
.word 0x2229ac4 @ 0x2223828
.word 0x35f @ 0x222382c
.word 0x22299b0 @ 0x2223830
.word 0x3e3 @ 0x2223834
.arm
Function_2223838: @ 2223838 :arm
	stmfd   sp!, {r3-r11,lr}
	sub     sp, sp, #0x18
	mov     r10, r0
	mov     r0, #1, 20 @ #0x1000
	bl      0x21d7880
	str     r0, [sp, #0x4]
	cmp     r0, #0x0
	bne     branch_222386c
	mov     r0, #0x1
	str     r0, [r10, #0xfc]
	add     sp, sp, #0x18
	str     r0, [r10, #0x38]
	ldmfd   sp!, {r3-r11,pc}
@ 0x222386c

.arm
branch_222386c: @ 222386c :arm
	ldr     r1, [sp, #0x4]
	mov     r3, #1, 20 @ #0x1000
	add     r2, sp, #0x8
	mov     r0, r10
	str     r3, [sp, #0x8]
	bl      Function_222097c
	mov     r6, r0
	cmp     r6, #0x3
	beq     branch_2223c74
	cmp     r6, #0x1
	ldreq   r1, [r10, #0x84]
	ldreq   r0, [r10, #0x80]
	cmpeq   r1, r0
	beq     branch_2223c74
	cmp     r6, #0x0
	bne     branch_22238c4
	ldr     r2, [sp, #0x8]
	ldr     r1, [sp, #0x4]
	add     r0, r10, #0x74
	bl      Function_2220130
	cmp     r0, #0x0
	beq     branch_2223c74
.arm
branch_22238c4: @ 22238c4 :arm
	ldr     r5, [r10, #0x84]
	ldr     r4, [r10, #0x78]
	ldr     r1, [pc, #0x3b0] @ [0x2223c84] (=0x2229acc)
	add     r0, r4, r5
	str     r5, [r10, #0xf4]
	bl      Function_20d90b0
	cmp     r0, #0x0
	bne     branch_22238f0
	ldr     r1, [pc, #0x39c] @ [0x2223c88] (=0x2229ad4)
	add     r0, r4, r5
	bl      Function_20d90b0
.arm
branch_22238f0: @ 22238f0 :arm
	cmp     r0, #0x0
	beq     branch_2223c50
	mov     r1, #0x0
	strb    r1, [r0, #0x2]
	ldr     r2, [r10, #0x78]
	add     r7, r0, #0x2
	ldr     r1, [r10, #0x80]
	sub     r3, r7, r2
	str     r3, [r10, #0x80]
	add     r6, r0, #0x4
	ldr     r3, [r10, #0x78]
	sub     r2, r6, r2
	sub     r0, r7, r3
	str     r0, [r10, #0xf8]
	str     r0, [r10, #0x84]
	ldr     r3, [r10, #0xec]
	ldr     r7, [pc, #0x354] @ [0x2223c8c] (=0x51eb851f)
	mov     r0, r3, lsr #31
	smull   r3, r8, r7, r3
	add     r8, r0, r8, asr #5
	cmp     r8, #0x1
	sub     r7, r1, r2
	bne     branch_2223998
	cmp     r7, #0x0
	beq     branch_2223974
	ldr     r0, [r10, #0x78]
	mov     r1, r6
	add     r2, r7, #0x1
	bl      Function_20d50d8
	str     r7, [r10, #0x80]
	mov     r0, #0x0
	str     r0, [r10, #0x84]
	b       branch_222397c
@ 0x2223974

.arm
branch_2223974: @ 2223974 :arm
	add     r0, r10, #0x74
	bl      Function_2220504
.arm
branch_222397c: @ 222397c :arm
	mov     r1, #0x0
	mov     r3, #0x6
	mov     r0, r10
	mov     r2, r1
	str     r3, [r10, #0x10]
	bl      Function_2220754
	b       branch_2223c74
@ 0x2223998

.arm
branch_2223998: @ 2223998 :arm
	cmp     r8, #0x3
	bne     branch_2223ae8
	ldr     r0, [r10, #0x10c]
	cmp     r0, #0xa
	ble     branch_22239c0
	mov     r0, #0x1
	str     r0, [r10, #0xfc]
	mov     r0, #0xb
	str     r0, [r10, #0x38]
	b       branch_2223c74
@ 0x22239c0

.arm
branch_22239c0: @ 22239c0 :arm
	ldr     r1, [pc, #0x2c8] @ [0x2223c90] (=0x2229ad8)
	add     r0, r4, r5
	bl      Function_20d90b0
	cmp     r0, #0x0
	beq     branch_2223ae8
	add     r4, r0, #0x9
	ldr     r1, [pc, #0x2b4] @ [0x2223c94] (=0x20fe864)
	mov     r2, #0x0
	b       branch_22239e8
@ 0x22239e4

.arm
branch_22239e4: @ 22239e4 :arm
	add     r4, r4, #0x1
.arm
branch_22239e8: @ 22239e8 :arm
	ldrsb   r0, [r4]
	cmp     r0, #0x0
	blt     branch_22239fc
	cmp     r0, #0x80
	blt     branch_2223a04
.arm
branch_22239fc: @ 22239fc :arm
	mov     r0, r2
	b       branch_2223a10
@ 0x2223a04

.arm
branch_2223a04: @ 2223a04 :arm
	mov     r0, r0, lsl #1
	ldrh    r0, [r1, r0]
	and     r0, r0, #1, 24 @ #0x100
.arm
branch_2223a10: @ 2223a10 :arm
	cmp     r0, #0x0
	bne     branch_22239e4
	mov     r3, r4
	ldr     r1, [pc, #0x270] @ [0x2223c94] (=0x20fe864)
	mov     r2, #0x0
	b       branch_2223a2c
@ 0x2223a28

.arm
branch_2223a28: @ 2223a28 :arm
	add     r3, r3, #0x1
.arm
branch_2223a2c: @ 2223a2c :arm
	ldrsb   r0, [r3]
	cmp     r0, #0x0
	beq     branch_2223a60
	blt     branch_2223a44
	cmp     r0, #0x80
	blt     branch_2223a4c
.arm
branch_2223a44: @ 2223a44 :arm
	mov     r0, r2
	b       branch_2223a58
@ 0x2223a4c

.arm
branch_2223a4c: @ 2223a4c :arm
	mov     r0, r0, lsl #1
	ldrh    r0, [r1, r0]
	and     r0, r0, #1, 24 @ #0x100
.arm
branch_2223a58: @ 2223a58 :arm
	cmp     r0, #0x0
	beq     branch_2223a28
.arm
branch_2223a60: @ 2223a60 :arm
	mov     r0, #0x0
	strb    r0, [r3]
	ldrsb   r0, [r4]
	cmp     r0, #0x2f
	bne     branch_2223ac4
	ldr     r0, [r10, #0x18]
	bl      Function_20d8b60
	mov     r5, r0
	mov     r0, r4
	bl      Function_20d8b60
	add     r1, r5, #0xe
	add     r0, r1, r0
	bl      0x21d7880
	str     r0, [r10, #0x108]
	cmp     r0, #0x0
	moveq   r0, #0x1
	streq   r0, [r10, #0xfc]
	streq   r0, [r10, #0x38]
	str     r4, [sp]
	ldrh    r3, [r10, #0x20]
	ldr     r0, [r10, #0x108]
	ldr     r2, [r10, #0x18]
	ldr     r1, [pc, #0x1d8] @ [0x2223c98] (=0x2229ae4)
	bl      Function_20d7510
	b       branch_2223c74
@ 0x2223ac4

.arm
branch_2223ac4: @ 2223ac4 :arm
	mov     r0, r4
	bl      0x21ea8ac
	str     r0, [r10, #0x108]
	cmp     r0, #0x0
	bne     branch_2223c74
	mov     r0, #0x1
	str     r0, [r10, #0xfc]
	str     r0, [r10, #0x38]
	b       branch_2223c74
@ 0x2223ae8

.arm
branch_2223ae8: @ 2223ae8 :arm
	ldr     r1, [pc, #0x1ac] @ [0x2223c9c] (=0x2229af4)
	add     r0, r4, r5
	bl      Function_20d90b0
	movs    r11, r0
	beq     branch_2223bc0
	ldr     r8, [pc, #0x19c] @ [0x2223ca0] (=0x2228c6c)
	add     r1, sp, #0xc
	mov     r3, #0x5
.arm
branch_2223b08: @ 2223b08 :arm
	ldrb    r2, [r8]
	ldrb    r0, [r8, #0x1]
	add     r8, r8, #0x2
	strb    r2, [r1]
	strb    r0, [r1, #0x1]
	add     r1, r1, #0x2
	subs    r3, r3, #0x1
	bne     branch_2223b08
	ldrb    r2, [r8]
	add     r8, r11, #0x10
	add     r0, sp, #0xc
	mov     r9, r8
	strb    r2, [r1]
	bl      Function_20d8b60
	b       branch_2223b48
@ 0x2223b44

.arm
branch_2223b44: @ 2223b44 :arm
	add     r9, r9, #0x1
.arm
branch_2223b48: @ 2223b48 :arm
	cmp     r9, #0x0
	ldrnesb r1, [r9]
	cmpne   r1, #0x0
	cmpne   r1, #0xa
	cmpne   r1, #0xd
	cmpne   r1, #0x20
	bne     branch_2223b44
	sub     r2, r9, r8
	cmp     r2, r0
	ble     branch_2223b84
	mov     r0, #0x1
	str     r0, [r10, #0xfc]
	mov     r0, #0x10
	str     r0, [r10, #0x38]
	b       branch_2223c74
@ 0x2223b84

.arm
branch_2223b84: @ 2223b84 :arm
	cmp     r0, r2
	bne     branch_2223bb4
	add     r1, sp, #0xc
	mov     r0, r8
	bl      Function_20d8e28
	cmp     r0, #0x0
	blt     branch_2223bb4
	mov     r0, #0x1
	str     r0, [r10, #0xfc]
	mov     r0, #0x10
	str     r0, [r10, #0x38]
	b       branch_2223c74
@ 0x2223bb4

.arm
branch_2223bb4: @ 2223bb4 :arm
	mov     r0, r8
	bl      Function_20dae0c
	str     r0, [r10, #0x104]
.arm
branch_2223bc0: @ 2223bc0 :arm
	ldr     r1, [pc, #0xdc] @ [0x2223ca4] (=0x2229b04)
	add     r0, r4, r5
	bl      Function_20d90b0
	cmp     r0, #0x0
	movne   r0, #0x1
	moveq   r0, #0x0
	str     r0, [r10, #0x110]
	cmp     r0, #0x0
	beq     branch_2223bf8
	mov     r0, #0x0
	strb    r0, [r10, #0x114]
	str     r0, [r10, #0x120]
	str     r0, [r10, #0x124]
	str     r0, [r10, #0x128]
.arm
branch_2223bf8: @ 2223bf8 :arm
	ldr     r0, [r10, #0xc]
	sub     r0, r0, #0x3
	cmp     r0, #0x1
	movls   r0, #0x1
	strls   r0, [r10, #0xfc]
	bls     branch_2223c74
	mov     r0, #0x8
	str     r0, [r10, #0x10]
	cmp     r11, #0x0
	beq     branch_2223c34
	ldr     r0, [r10, #0x104]
	cmp     r0, #0x0
	moveq   r0, #0x1
	streq   r0, [r10, #0xfc]
	beq     branch_2223c74
.arm
branch_2223c34: @ 2223c34 :arm
	cmp     r7, #0x0
	ble     branch_2223c74
	mov     r0, r10
	mov     r1, r6
	mov     r2, r7
	bl      Function_2223614
	b       branch_2223c74
@ 0x2223c50

.arm
branch_2223c50: @ 2223c50 :arm
	cmp     r6, #0x2
	bne     branch_2223c74
	mov     r0, #0x1
	str     r0, [r10, #0xfc]
	mov     r0, #0x7
	str     r0, [r10, #0x38]
	ldr     r0, [r10, #0x48]
	bl      0x21eaf38
	str     r0, [r10, #0x4c]
.arm
branch_2223c74: @ 2223c74 :arm
	ldr     r0, [sp, #0x4]
	bl      0x21d78b0
	add     sp, sp, #0x18
	ldmfd   sp!, {r3-r11,pc}
@ 0x2223c84

.word 0x2229acc @ 0x2223c84
.word 0x2229ad4 @ 0x2223c88
.word 0x51eb851f @ 0x2223c8c
.word 0x2229ad8 @ 0x2223c90
.word 0x20fe864 @ 0x2223c94
.word 0x2229ae4 @ 0x2223c98
.word 0x2229af4 @ 0x2223c9c
.word 0x2228c6c @ 0x2223ca0
.word 0x2229b04 @ 0x2223ca4
.arm
Function_2223ca8: @ 2223ca8 :arm
	stmfd   sp!, {r3-r9,lr}
	mov     r9, r0
	bl      0x21ea840
	mov     r7, r0
	mov     r0, #2, 20 @ #0x2000
	mov     r8, #0x0
	bl      0x21d7880
	movs    r6, r0
	bne     branch_2223cdc
	mov     r0, #0x1
	str     r0, [r9, #0xfc]
	str     r0, [r9, #0x38]
	ldmfd   sp!, {r3-r9,pc}
@ 0x2223cdc

.arm
branch_2223cdc: @ 2223cdc :arm
	mov     r5, #2, 20 @ #0x2000
	add     r4, sp, #0x0
	b       branch_2223d58
@ 0x2223ce8

.arm
branch_2223ce8: @ 2223ce8 :arm
	mov     r0, r9
	mov     r1, r6
	mov     r2, r4
	str     r5, [sp]
	bl      Function_222097c
	cmp     r0, #0x3
	cmpne   r0, #0x1
	beq     branch_2223d70
	cmp     r0, #0x2
	bne     branch_2223d38
	mov     r0, #0x1
	str     r0, [r9, #0xfc]
	ldr     r1, [r9, #0x104]
	cmp     r1, #0x0
	ble     branch_2223d70
	ldr     r0, [r9, #0x100]
	cmp     r0, r1
	movlt   r0, #0xf
	strlt   r0, [r9, #0x38]
	b       branch_2223d70
@ 0x2223d38

.arm
branch_2223d38: @ 2223d38 :arm
	ldr     r2, [sp]
	mov     r0, r9
	mov     r1, r6
	bl      Function_2223614
	cmp     r0, #0x0
	beq     branch_2223d70
	bl      0x21ea840
	sub     r8, r0, r7
.arm
branch_2223d58: @ 2223d58 :arm
	ldr     r0, [r9, #0xfc]
	cmp     r0, #0x0
	bne     branch_2223d70
	ldr     r0, [r9, #0x158]
	cmp     r8, r0
	bcc     branch_2223ce8
.arm
branch_2223d70: @ 2223d70 :arm
	mov     r0, r6
	bl      0x21d78b0
	ldmfd   sp!, {r3-r9,pc}
@ 0x2223d7c

.arm
Function_2223d7c: @ 2223d7c :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r7, #0x0
	ldr     r6, [pc, #0x2c] @ [0x2223db8] (=0x2229e78)
	ldr     r4, [pc, #0x2c] @ [0x2223dbc] (=0x2229e70)
	mov     r5, r7
.arm
branch_2223d90: @ 2223d90 :arm
	ldr     r0, [r6, r7, lsl #0x2]
	cmp     r0, #0x0
	beq     branch_2223da8
	ldr     r1, [r4]
	blx     r1
	str     r5, [r6, r7, lsl #0x2]
.arm
branch_2223da8: @ 2223da8 :arm
	add     r7, r7, #0x1
	cmp     r7, #0x3
	blt     branch_2223d90
	ldmfd   sp!, {r3-r7,pc}
@ 0x2223db8

.word 0x2229e78 @ 0x2223db8
.word 0x2229e70 @ 0x2223dbc
.arm
Function_2223dc0: @ 2223dc0 :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r1
	ldrsb   r1, [r6]
	mov     r4, r0
	cmp     r1, #0x0
	beq     branch_2223e7c
	mov     r0, r6
	bl      Function_2225670
	cmp     r0, #0xa
	ble     branch_2223dfc
	ldr     r0, [pc, #0x94] @ [0x2223e84] (=0x2229e6c)
	mov     r1, #0x7
	str     r1, [r0]
	mov     r0, #0x0
	ldmfd   sp!, {r4-r6,pc}
@ 0x2223dfc

.arm
branch_2223dfc: @ 2223dfc :arm
	mov     r0, r6
	bl      Function_2225670
	mov     r5, r0
	cmp     r5, #0xa
	ble     branch_2223e24
	ldr     r0, [pc, #0x6c] @ [0x2223e84] (=0x2229e6c)
	mov     r1, #0x7
	str     r1, [r0]
	mov     r0, #0x0
	ldmfd   sp!, {r4-r6,pc}
@ 0x2223e24

.arm
branch_2223e24: @ 2223e24 :arm
	bl      Function_2223fac
	ldr     r1, [pc, #0x58] @ [0x2223e88] (=0x2229e5c)
	add     r0, r0, #0x1
	ldr     r2, [r1]
	mov     r1, #0x4
	blx     r2
	ldr     r1, [pc, #0x48] @ [0x2223e8c] (=0x2229e78)
	cmp     r0, #0x0
	str     r0, [r1, r4, lsl #0x2]
	bne     branch_2223e60
	ldr     r0, [pc, #0x30] @ [0x2223e84] (=0x2229e6c)
	mov     r1, #0x1
	str     r1, [r0]
	mov     r0, #0x0
	ldmfd   sp!, {r4-r6,pc}
@ 0x2223e60

.arm
branch_2223e60: @ 2223e60 :arm
	mov     r1, r6
	mov     r2, r5
	bl      Function_2223fc8
	ldr     r1, [pc, #0x18] @ [0x2223e8c] (=0x2229e78)
	mov     r2, #0x0
	ldr     r1, [r1, r4, lsl #0x2]
	strb    r2, [r1, r0]
.arm
branch_2223e7c: @ 2223e7c :arm
	mov     r0, #0x1
	ldmfd   sp!, {r4-r6,pc}
@ 0x2223e84

.word 0x2229e6c @ 0x2223e84
.word 0x2229e5c @ 0x2223e88
.word 0x2229e78 @ 0x2223e8c
.arm
Function_2223e90: @ 2223e90 :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r4, r2
	bl      Function_2225534
	bl      Function_2223d7c
	mov     r1, r6
	mov     r0, #0x0
	bl      Function_2223dc0
	cmp     r0, #0x0
	beq     branch_2223ef0
	mov     r1, r5
	mov     r0, #0x1
	bl      Function_2223dc0
	cmp     r0, #0x0
	beq     branch_2223ef0
	mov     r1, r4
	mov     r0, #0x2
	bl      Function_2223dc0
	cmp     r0, #0x0
	beq     branch_2223ef0
	bl      Function_2225548
	mov     r0, #0x1
	ldmfd   sp!, {r4-r6,pc}
@ 0x2223ef0

.arm
branch_2223ef0: @ 2223ef0 :arm
	bl      Function_2223d7c
	bl      Function_2225548
	mov     r0, #0x0
	ldmfd   sp!, {r4-r6,pc}
@ 0x2223f00

.arm
Function_2223f00: @ 2223f00 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, #0x0
	mov     lr, r4
	cmp     r2, #0x0
	ble     branch_2223f40
	mov     r3, r4
.arm
branch_2223f18: @ 2223f18 :arm
	ldrsb   r12, [r1]
	cmp     r12, #0x0
	streqb  r3, [r0], #0x1
	beq     branch_2223f34
	add     r4, r4, #0x1
	add     r1, r1, #0x1
	strb    r12, [r0], #0x1
.arm
branch_2223f34: @ 2223f34 :arm
	add     lr, lr, #0x1
	cmp     lr, r2
	blt     branch_2223f18
.arm
branch_2223f40: @ 2223f40 :arm
	mov     r0, r4
	ldmfd   sp!, {r4,pc}
@ 0x2223f48

.arm
Function_2223f48: @ 2223f48 :arm
	cmp     r0, #0x41
	bcc     branch_2223f5c
	cmp     r0, #0x5a
	subls   r0, r0, #0x41
	bxls    lr
.arm
branch_2223f5c: @ 2223f5c :arm
	cmp     r0, #0x61
	bcc     branch_2223f70
	cmp     r0, #0x7a
	subls   r0, r0, #0x47
	bxls    lr
.arm
branch_2223f70: @ 2223f70 :arm
	cmp     r0, #0x30
	bcc     branch_2223f84
	cmp     r0, #0x39
	addls   r0, r0, #0x4
	bxls    lr
.arm
branch_2223f84: @ 2223f84 :arm
	cmp     r0, #0x2e
	moveq   r0, #0x3e
	bxeq    lr
	cmp     r0, #0x2d
	moveq   r0, #0x3f
	mvnne   r0, #0x0
	bx      lr
@ 0x2223fa0

.arm
Function_2223fa0: @ 2223fa0 :arm
	mov     r0, r0, asr #2
	add     r0, r0, r0, lsl #1
	bx      lr
@ 0x2223fac

.arm
Function_2223fac: @ 2223fac :arm
	ldr     r1, [pc, #0x10] @ [0x2223fc4] (=0x55555556)
	add     r2, r0, #0x2
	smull   r0, r3, r1, r2
	add     r3, r3, r2, lsr #31
	mov     r0, r3, lsl #2
	bx      lr
@ 0x2223fc4

.word 0x55555556 @ 0x2223fc4
.arm
Function_2223fc8: @ 2223fc8 :arm
	stmfd   sp!, {r3-r11,lr}
	mov     r7, r2
	mov     r8, r1
	mov     r9, r0
	cmp     r7, #0x3
	movgt   r2, #0x3
	add     r0, sp, #0x0
	mov     r1, r8
	mov     r6, #0x0
	bl      Function_2223f00
	cmp     r0, #0x0
	ble     branch_22240ac
	mov     r5, #0x0
	ldr     r10, [pc, #0xb8] @ [0x22240bc] (=0x2228c78)
	mov     r4, r5
	mov     r11, #0x2a
.arm
branch_2224008: @ 2224008 :arm
	cmp     r7, #0x3
	strltb  r5, [sp, #0x2]
	cmp     r7, #0x2
	strltb  r4, [sp, #0x1]
	ldrb    r1, [sp, #0x2]
	ldrb    r2, [sp]
	ldrb    r3, [sp, #0x1]
	mov     lr, r1, asr #6
	mov     r12, r2, asr #2
	orr     lr, lr, r3, lsl #2
	mov     r3, r3, asr #4
	and     r12, r12, #0xff
	orr     r2, r3, r2, lsl #4
	ldrsb   r12, [r10, r12]
	and     r2, r2, #0x3f
	ldrsb   r2, [r10, r2]
	strb    r12, [r9]
	and     r12, lr, #0x3f
	cmp     r0, #0x1
	strb    r2, [r9, #0x1]
	ldrgtsb r2, [r10, r12]
	and     r1, r1, #0x3f
	add     r8, r8, r0
	movle   r2, r11
	cmp     r0, #0x2
	ldrgtsb r1, [r10, r1]
	strb    r2, [r9, #0x2]
	add     r6, r6, #0x4
	movle   r1, #0x2a
	strb    r1, [r9, #0x3]
	add     r9, r9, #0x4
	subs    r7, r7, r0
	beq     branch_22240ac
	cmp     r7, #0x3
	movgt   r2, #0x3
	movle   r2, r7
	add     r0, sp, #0x0
	mov     r1, r8
	bl      Function_2223f00
	cmp     r0, #0x0
	bgt     branch_2224008
.arm
branch_22240ac: @ 22240ac :arm
	mov     r1, #0x0
	mov     r0, r6
	strb    r1, [r9]
	ldmfd   sp!, {r3-r11,pc}
@ 0x22240bc

.word 0x2228c78 @ 0x22240bc
.arm
Function_22240c0: @ 22240c0 :arm
	stmfd   sp!, {r3-r9,lr}
	sub     sp, sp, #0x8
	mov     r9, r0
	mov     r7, r2
	add     r0, sp, #0x3
	mov     r2, #0x4
	mov     r6, #0x0
	mov     r8, r1
	bl      Function_2223f00
	mov     r5, r0
	mov     r4, r6
	b       branch_22241cc
@ 0x22240f0

.arm
branch_22240f0: @ 22240f0 :arm
	ldrb    r0, [sp, #0x3]
	mov     r1, #0x0
	strb    r1, [sp]
	strb    r1, [sp, #0x1]
	strb    r1, [sp, #0x2]
	bl      Function_2223f48
	movs    r4, r0
	bmi     branch_2224178
	ldrb    r0, [sp, #0x4]
	mov     r1, r4, lsl #2
	strb    r1, [sp]
	bl      Function_2223f48
	movs    r4, r0
	bmi     branch_2224178
	ldrsb   r2, [sp]
	ldrb    r0, [sp, #0x5]
	mov     r1, r4, lsl #4
	orr     r2, r2, r4, asr #4
	strb    r2, [sp]
	strb    r1, [sp, #0x1]
	bl      Function_2223f48
	movs    r4, r0
	bmi     branch_2224178
	ldrsb   r2, [sp, #0x1]
	ldrb    r0, [sp, #0x6]
	mov     r1, r4, lsl #6
	orr     r2, r2, r4, asr #2
	strb    r1, [sp, #0x2]
	strb    r2, [sp, #0x1]
	bl      Function_2223f48
	movs    r4, r0
	ldrplsb r0, [sp, #0x2]
	orrpl   r0, r0, r4
	strplb  r0, [sp, #0x2]
.arm
branch_2224178: @ 2224178 :arm
	sub     r1, r5, #0x1
	cmp     r1, #0x0
	mov     r2, #0x0
	ble     branch_22241a0
	add     r3, sp, #0x0
.arm
branch_222418c: @ 222418c :arm
	ldrsb   r0, [r3], #0x1
	add     r2, r2, #0x1
	cmp     r2, r1
	strb    r0, [r9], #0x1
	blt     branch_222418c
.arm
branch_22241a0: @ 22241a0 :arm
	sub     r0, r5, #0x1
	sub     r7, r7, #0x4
	cmp     r7, #0x0
	add     r8, r8, r5
	add     r6, r6, r0
	ble     branch_22241dc
	add     r0, sp, #0x3
	mov     r1, r8
	mov     r2, #0x4
	bl      Function_2223f00
	mov     r5, r0
.arm
branch_22241cc: @ 22241cc :arm
	cmp     r5, #0x0
	ble     branch_22241dc
	cmp     r4, #0x0
	bge     branch_22240f0
.arm
branch_22241dc: @ 22241dc :arm
	mov     r0, r6
	add     sp, sp, #0x8
	ldmfd   sp!, {r3-r9,pc}
@ 0x22241e8

.arm
Function_22241e8: @ 22241e8 :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0
	bl      Function_2225670
	ldr     r1, [pc, #0x34] @ [0x2224230] (=0x2229e50)
	mov     r4, r0
	ldr     r2, [r1, #0xc]
	add     r0, r4, #0x1
	mov     r1, #0x4
	blx     r2
	movs    r5, r0
	beq     branch_2224228
	mov     r1, r6
	mov     r2, r4
	bl      Function_222569c
	mov     r0, #0x0
	strb    r0, [r5, r4]
.arm
branch_2224228: @ 2224228 :arm
	mov     r0, r5
	ldmfd   sp!, {r4-r6,pc}
@ 0x2224230

.word 0x2229e50 @ 0x2224230
.arm
Function_2224234: @ 2224234 :arm
	stmfd   sp!, {r3-r7,lr}
	ldr     r12, [pc, #0x184] @ [0x22243c4] (=0x2229e50)
	mov     r5, r0
	mov     r4, r1
	str     r5, [r12, #0xc]
	mov     r1, #0x0
	ldr     r0, [sp, #0x20]
	str     r4, [r12, #0x20]
	str     r0, [r12, #0x18]
	str     r1, [r12, #0x1c]
	str     r1, [r12, #0x28]
	str     r1, [r12, #0x2c]
	str     r1, [r12, #0x30]
	str     r1, [r12, #0x4]
	sub     r0, r1, #0x1
	str     r0, [r12, #0x24]
	str     r1, [r12, #0x8]
	ldr     r0, [pc, #0x148] @ [0x22243c8] (=0x2229e90)
	mov     r7, r2
	mov     r6, r3
	str     r1, [r12, #0x10]
	bl      Function_2225610
	ldr     r0, [pc, #0x138] @ [0x22243cc] (=0x2229ed8)
	bl      Function_2224610
	mov     r0, r7
	bl      Function_22241e8
	ldr     r1, [pc, #0x120] @ [0x22243c4] (=0x2229e50)
	cmp     r0, #0x0
	str     r0, [r1, #0x10]
	beq     branch_2224380
	mov     r0, r6
	bl      Function_22241e8
	ldr     r1, [pc, #0x108] @ [0x22243c4] (=0x2229e50)
	cmp     r0, #0x0
	str     r0, [r1, #0x8]
	beq     branch_2224380
	ldr     r1, [sp, #0x18]
	ldr     r0, [pc, #0x100] @ [0x22243d0] (=0x2229e84)
	mov     r2, #0x4
	bl      Function_2223fc8
	ldr     r1, [pc, #0xf4] @ [0x22243d0] (=0x2229e84)
	mov     r2, #0x0
	strb    r2, [r1, r0]
	ldr     r1, [sp, #0x1c]
	ldr     r0, [pc, #0xe8] @ [0x22243d4] (=0x2229ebc)
	mov     r2, #0x10
	bl      Function_2223fc8
	ldr     r1, [pc, #0xdc] @ [0x22243d4] (=0x2229ebc)
	mov     r2, #0x0
	strb    r2, [r1, r0]
	bl      Function_222555c
	cmp     r0, #0x0
	beq     branch_222434c
	bl      Function_2225518
	cmp     r0, #0x0
	beq     branch_222434c
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0xa
	bl      Function_22257fc
	cmp     r0, #0x0
	beq     branch_2224348
	ldr     r0, [pc, #0xa4] @ [0x22243d8] (=0x2229ea4)
	bl      Function_2224484
	ldr     r1, [pc, #0x88] @ [0x22243c4] (=0x2229e50)
	str     r0, [r1, #0x4]
	mov     r0, #0x1
	str     r0, [r1, #0x14]
	ldmfd   sp!, {r3-r7,pc}
@ 0x2224348

.arm
branch_2224348: @ 2224348 :arm
	bl      Function_2225530
.arm
branch_222434c: @ 222434c :arm
	ldr     r1, [pc, #0x70] @ [0x22243c4] (=0x2229e50)
	ldr     r0, [r1, #0x8]
	ldr     r1, [r1, #0x20]
	blx     r1
	ldr     r1, [pc, #0x60] @ [0x22243c4] (=0x2229e50)
	ldr     r0, [r1, #0x10]
	ldr     r1, [r1, #0x20]
	blx     r1
	ldr     r0, [pc, #0x50] @ [0x22243c4] (=0x2229e50)
	mov     r1, #0x8
	str     r1, [r0, #0x1c]
	mov     r0, #0x0
	ldmfd   sp!, {r3-r7,pc}
@ 0x2224380

.arm
branch_2224380: @ 2224380 :arm
	ldr     r1, [pc, #0x3c] @ [0x22243c4] (=0x2229e50)
	ldr     r0, [r1, #0x8]
	cmp     r0, #0x0
	beq     branch_2224398
	ldr     r1, [r1, #0x20]
	blx     r1
.arm
branch_2224398: @ 2224398 :arm
	ldr     r1, [pc, #0x24] @ [0x22243c4] (=0x2229e50)
	ldr     r0, [r1, #0x10]
	cmp     r0, #0x0
	beq     branch_22243b0
	ldr     r1, [r1, #0x20]
	blx     r1
.arm
branch_22243b0: @ 22243b0 :arm
	ldr     r0, [pc, #0xc] @ [0x22243c4] (=0x2229e50)
	mov     r1, #0x1
	str     r1, [r0, #0x1c]
	mov     r0, #0x0
	ldmfd   sp!, {r3-r7,pc}
@ 0x22243c4

.word 0x2229e50 @ 0x22243c4
.word 0x2229e90 @ 0x22243c8
.word 0x2229ed8 @ 0x22243cc
.word 0x2229e84 @ 0x22243d0
.word 0x2229ebc @ 0x22243d4
.word 0x2229ea4 @ 0x22243d8
.arm
Function_22243dc: @ 22243dc :arm
	stmfd   sp!, {r3,lr}
	bl      Function_2223d7c
	bl      Function_2225530
	bl      Function_2225584
	ldr     r1, [pc, #0x28] @ [0x222441c] (=0x2229e50)
	ldr     r0, [r1, #0x8]
	ldr     r1, [r1, #0x20]
	blx     r1
	ldr     r1, [pc, #0x18] @ [0x222441c] (=0x2229e50)
	ldr     r0, [r1, #0x10]
	ldr     r1, [r1, #0x20]
	blx     r1
	ldr     r0, [pc, #0x8] @ [0x222441c] (=0x2229e50)
	ldr     r0, [r0]
	blx     r0
	ldmfd   sp!, {r3,pc}
@ 0x222441c

.word 0x2229e50 @ 0x222441c
.arm
Function_2224420: @ 2224420 :arm
	ldr     r1, [pc, #0x14] @ [0x222443c] (=0x2229e50)
	mov     r2, #0x0
	str     r2, [r1, #0x14]
	str     r0, [r1]
	ldr     r12, [pc, #0x8] @ [0x2224440] (=0x22258c4)
	ldr     r0, [pc, #0x8] @ [0x2224444] (=0x22243dc)
	bx      r12
@ 0x222443c

.word 0x2229e50 @ 0x222443c
.word 0x22258c4 @ 0x2224440
.word 0x22243dc @ 0x2224444
.arm
Function_2224448: @ 2224448 :arm
	stmfd   sp!, {r4,lr}
	bl      Function_2225588
	cmp     r0, #0x0
	bne     branch_2224474
	bl      Function_2225534
	ldr     r0, [pc, #0x1c] @ [0x2224480] (=0x2229e74)
	ldr     r4, [r0]
	bl      Function_2225548
	mov     r0, r4
	bl      Function_2226a9c
	ldmfd   sp!, {r4,pc}
@ 0x2224474

.arm
branch_2224474: @ 2224474 :arm
	bl      Function_22255d0
	mov     r0, #0x0
	ldmfd   sp!, {r4,pc}
@ 0x2224480

.word 0x2229e74 @ 0x2224480
.arm
Function_2224484: @ 2224484 :arm
	stmfd   sp!, {r4,lr}
	sub     sp, sp, #0x10
	ldr     r12, [pc, #0xe0] @ [0x2224574] (=0x2228cbc)
	add     r3, sp, #0x0
	mov     r4, r0
	mov     r2, #0x6
.arm
branch_222449c: @ 222449c :arm
	ldrb    r1, [r12]
	ldrb    r0, [r12, #0x1]
	add     r12, r12, #0x2
	strb    r1, [r3]
	strb    r0, [r3, #0x1]
	add     r3, r3, #0x2
	subs    r2, r2, #0x1
	bne     branch_222449c
	ldrb    r1, [r12]
	ldr     r0, [pc, #0xb0] @ [0x2224578] (=0x2229efc)
	strb    r1, [r3]
	bl      0x21d7eb8
	cmp     r0, #0x0
	beq     branch_2224568
	ldr     r0, [pc, #0xa0] @ [0x222457c] (=0x2229efc)
	ldr     r1, [r0]
	cmp     r1, #0x0
	blt     branch_22244f4
	cmp     r1, #0xa
	addlt   r0, r1, #0x30
	strltb  r0, [sp, #0x1]
	blt     branch_222450c
.arm
branch_22244f4: @ 22244f4 :arm
	cmp     r1, #0xa
	blt     branch_222450c
	cmp     r1, #0x64
	bge     branch_222450c
	add     r0, sp, #0x0
	bl      Function_22256c0
.arm
branch_222450c: @ 222450c :arm
	ldr     r0, [pc, #0x68] @ [0x222457c] (=0x2229efc)
	ldr     r0, [r0]
	cmp     r0, #0x4
	cmpne   r0, #0x8
	bne     branch_222454c
	ldr     r0, [pc, #0x54] @ [0x222457c] (=0x2229efc)
	ldr     r0, [r0, #0x4]
	cmp     r0, #0x0
	blt     branch_222453c
	cmp     r0, #0xa
	addlt   r0, r0, #0x30
	strltb  r0, [sp, #0x3]
.arm
branch_222453c: @ 222453c :arm
	ldr     r1, [pc, #0x3c] @ [0x2224580] (=0x2229f04)
	add     r0, sp, #0x4
	mov     r2, #0x9
	bl      Function_222569c
.arm
branch_222454c: @ 222454c :arm
	add     r1, sp, #0x0
	mov     r0, r4
	mov     r2, #0xd
	bl      Function_2223fc8
	add     sp, sp, #0x10
	mov     r0, #0x1
	ldmfd   sp!, {r4,pc}
@ 0x2224568

.arm
branch_2224568: @ 2224568 :arm
	mov     r0, #0x0
	add     sp, sp, #0x10
	ldmfd   sp!, {r4,pc}
@ 0x2224574

.word 0x2228cbc @ 0x2224574
.word 0x2229efc @ 0x2224578
.word 0x2229efc @ 0x222457c
.word 0x2229f04 @ 0x2224580
.arm
Function_2224584: @ 2224584 :arm
	stmfd   sp!, {r4,r5,lr}
	sub     sp, sp, #0x24
	mov     r5, r0
	mov     r4, r1
	add     r0, sp, #0x10
	mov     r1, #0x14
	bl      Function_2225688
	add     r0, sp, #0x10
	bl      Function_20a283c
	ldr     r1, [sp, #0x10]
	ldr     r2, [sp, #0x14]
	mov     r0, #0x0
	cmp     r2, r0
	cmpeq   r1, r0
	addeq   sp, sp, #0x24
	ldmeqfd sp!, {r4,r5,pc}
	add     r0, sp, #0x0
	mov     r3, #0xd
	bl      Function_22256cc
	cmp     r0, #0x0
	addlt   sp, sp, #0x24
	movlt   r0, #0x0
	ldmltfd sp!, {r4,r5,pc}
	add     r1, sp, #0x0
	mov     r0, r4
	mov     r2, #0xd
	bl      Function_2223fc8
	ldr     r1, [pc, #0x14] @ [0x222460c] (=0x27ffe0c)
	mov     r0, r5
	mov     r2, #0x4
	bl      Function_2223fc8
	mov     r0, #0x1
	add     sp, sp, #0x24
	ldmfd   sp!, {r4,r5,pc}
@ 0x222460c

.word 0x27ffe0c @ 0x222460c



.arm
Function_2224610: @ 2224610 :arm
	stmfd   sp!, {r3,lr}
	ldr     r2, [pc, #0x10] @ [0x222462c] (=0x2229c08)
	mov     r3, #0x2
	mov     r1, #0x21
	str     r3, [sp]
	bl      OS_SNPrintf
	ldmfd   sp!, {r3,pc}
@ 0x222462c

.word 0x2229c08 @ 0x222462c



.arm
Function_2224630: @ 2224630 :arm
	stmfd   sp!, {r3-r11,lr}
	sub     sp, sp, #0x18
	mov     r9, r2
	mov     r10, r1
	ldr     r1, [r9, #0x8]
	cmp     r0, #0x0
	str     r1, [sp, #0x8]
	ldr     r1, [r9, #0xc]
	ldr     r5, [r9, #0x4]
	str     r1, [sp, #0x4]
	mvn     r1, #0x0
	str     r1, [sp]
	beq     branch_2224678
	cmp     r0, #0x6
	beq     branch_2224854
	cmp     r0, #0x8
	beq     branch_222484c
	b       branch_222485c
@ 0x2224678

.arm
branch_2224678: @ 2224678 :arm
	ldr     r1, [pc, #0x2c8] @ [0x2224948] (=0x2229c24)
	add     r2, sp, #0x14
	mov     r0, r10
	bl      Function_2226d88
	cmp     r0, #0x3
	movne   r4, #0x3
	bne     branch_2224860
	ldr     r0, [sp, #0x14]
	mov     r1, #0x3
	bl      Function_22256b4
	ldr     r1, [pc, #0x2a4] @ [0x222494c] (=0x12e)
	cmp     r0, r1
	bne     branch_22247c4
	add     r1, sp, #0x10
	mov     r0, r10
	mov     r8, #0x0
	bl      Function_2226e8c
	movs    r6, r0
	movmi   r4, #0x3
	bmi     branch_2224860
	cmp     r6, #0x0
	mov     r7, r8
	ble     branch_22247b0
	ldr     r4, [pc, #0x274] @ [0x2224950] (=0x2229c34)
	mov     r11, #0x8
.arm
branch_22246dc: @ 22246dc :arm
	ldr     r3, [sp, #0x10]
	mov     r1, r7
	add     r2, r3, r7
	b       branch_22246f4
@ 0x22246ec

.arm
branch_22246ec: @ 22246ec :arm
	add     r2, r2, #0x1
	add     r7, r7, #0x1
.arm
branch_22246f4: @ 22246f4 :arm
	ldrsb   r0, [r2]
	cmp     r0, #0x3d
	beq     branch_2224708
	cmp     r7, r6
	blt     branch_22246ec
.arm
branch_2224708: @ 2224708 :arm
	sub     r0, r7, r1
	cmp     r0, #0x8
	add     r7, r7, #0x1
	bne     branch_2224734
	add     r0, r3, r1
	mov     r1, r4
	mov     r2, r11
	bl      Function_222567c
	cmp     r0, #0x0
	moveq   r8, #0x1
	movne   r8, #0x0
.arm
branch_2224734: @ 2224734 :arm
	ldr     r1, [sp, #0x10]
	mov     r3, r7
	add     r2, r1, r7
	b       branch_222474c
@ 0x2224744

.arm
branch_2224744: @ 2224744 :arm
	add     r2, r2, #0x1
	add     r7, r7, #0x1
.arm
branch_222474c: @ 222474c :arm
	ldrsb   r0, [r2]
	cmp     r0, #0x26
	cmpne   r0, #0xd
	cmpne   r0, #0x0
	beq     branch_2224768
	cmp     r7, r6
	blt     branch_2224744
.arm
branch_2224768: @ 2224768 :arm
	cmp     r8, #0x0
	sub     r2, r7, r3
	add     r7, r7, #0x1
	beq     branch_22247a8
	cmp     r2, #0x4
	bne     branch_22247b0
	add     r0, sp, #0xc
	add     r1, r1, r3
	bl      Function_22240c0
	mov     r1, r0
	add     r0, sp, #0xc
	mov     r2, #0x0
	strb    r2, [r0, r1]
	bl      Function_22256b4
	str     r0, [sp]
	b       branch_22247b0
@ 0x22247a8

.arm
branch_22247a8: @ 22247a8 :arm
	cmp     r7, r6
	blt     branch_22246dc
.arm
branch_22247b0: @ 22247b0 :arm
	ldr     r0, [sp]
	cmp     r0, #0x0
	movlt   r4, #0x3
	movge   r4, #0x5
	b       branch_2224860
@ 0x22247c4

.arm
branch_22247c4: @ 22247c4 :arm
	cmp     r0, #0x0
	ble     branch_22247d4
	cmp     r0, #0xc8
	beq     branch_22247dc
.arm
branch_22247d4: @ 22247d4 :arm
	mov     r4, #0x3
	b       branch_2224860
@ 0x22247dc

.arm
branch_22247dc: @ 22247dc :arm
	cmp     r5, #0x1
	beq     branch_22247f8
	cmp     r5, #0x2
	beq     branch_2224814
	cmp     r5, #0x3
	beq     branch_2224830
	b       branch_2224860
@ 0x22247f8

.arm
branch_22247f8: @ 22247f8 :arm
	mov     r0, r10
	mov     r1, r9
	bl      Function_2225214
	cmp     r0, #0x0
	movne   r4, #0x0
	moveq   r4, #0x3
	b       branch_2224860
@ 0x2224814

.arm
branch_2224814: @ 2224814 :arm
	mov     r0, r10
	mov     r1, r9
	bl      Function_2225294
	cmp     r0, #0x0
	movne   r4, #0x0
	moveq   r4, #0x3
	b       branch_2224860
@ 0x2224830

.arm
branch_2224830: @ 2224830 :arm
	mov     r0, r10
	mov     r1, r9
	bl      Function_2225268
	cmp     r0, #0x0
	movne   r4, #0x0
	moveq   r4, #0x3
	b       branch_2224860
@ 0x222484c

.arm
branch_222484c: @ 222484c :arm
	mov     r4, #0x6
	b       branch_2224860
@ 0x2224854

.arm
branch_2224854: @ 2224854 :arm
	mov     r4, #0x4
	b       branch_2224860
@ 0x222485c

.arm
branch_222485c: @ 222485c :arm
	mov     r4, #0x3
.arm
branch_2224860: @ 2224860 :arm
	cmp     r5, #0x1
	beq     branch_22248d0
	cmp     r5, #0x2
	beq     branch_222487c
	cmp     r5, #0x3
	beq     branch_22248c0
	b       branch_22248d0
@ 0x222487c

.arm
branch_222487c: @ 222487c :arm
	ldr     r0, [r9, #0x20]
	cmp     r0, #0x0
	beq     branch_2224894
	ldr     r1, [pc, #0xc4] @ [0x2224954] (=0x2229e70)
	ldr     r1, [r1]
	blx     r1
.arm
branch_2224894: @ 2224894 :arm
	ldr     r0, [r9, #0x1c]
	cmp     r0, #0x0
	beq     branch_22248ac
	ldr     r1, [pc, #0xac] @ [0x2224954] (=0x2229e70)
	ldr     r1, [r1]
	blx     r1
.arm
branch_22248ac: @ 22248ac :arm
	ldr     r1, [pc, #0xa0] @ [0x2224954] (=0x2229e70)
	ldr     r0, [r9, #0x18]
	ldr     r1, [r1]
	blx     r1
	b       branch_22248d0
@ 0x22248c0

.arm
branch_22248c0: @ 22248c0 :arm
	ldr     r1, [pc, #0x8c] @ [0x2224954] (=0x2229e70)
	ldr     r0, [r9, #0x10]
	ldr     r1, [r1]
	blx     r1
.arm
branch_22248d0: @ 22248d0 :arm
	bl      Function_2225534
	ldr     r0, [pc, #0x7c] @ [0x2224958] (=0x2229e74)
	mvn     r1, #0x0
	str     r1, [r0]
	bl      Function_2225548
	mov     r0, r10
	bl      Function_2226c04
	ldr     r1, [pc, #0x60] @ [0x2224954] (=0x2229e70)
	mov     r0, r9
	ldr     r1, [r1]
	blx     r1
	bl      Function_22255d0
	cmp     r4, #0x0
	ldrne   r0, [pc, #0x50] @ [0x222495c] (=0x2229e6c)
	strne   r4, [r0]
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x0
	beq     branch_222492c
	ldr     r2, [sp]
	ldr     r3, [sp, #0x8]
	mov     r0, r5
	mov     r1, r4
	blx     r3
.arm
branch_222492c: @ 222492c :arm
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	addeq   sp, sp, #0x18
	ldmeqfd sp!, {r3-r11,pc}
	bl      Function_22255fc
	add     sp, sp, #0x18
	ldmfd   sp!, {r3-r11,pc}
@ 0x2224948

.word 0x2229c24 @ 0x2224948
.word 0x12e @ 0x222494c
.word 0x2229c34 @ 0x2224950
.word 0x2229e70 @ 0x2224954
.word 0x2229e74 @ 0x2224958
.word 0x2229e6c @ 0x222495c
.arm
Function_2224960: @ 2224960 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	mov     r0, r1
	bl      Function_222691c
	bl      Function_22255d0
	ldr     r1, [pc, #0xc] @ [0x2224988] (=0x2229e70)
	mov     r0, r4
	ldr     r1, [r1]
	blx     r1
	ldmfd   sp!, {r4,pc}
@ 0x2224988

.word 0x2229e70 @ 0x2224988
.arm
Function_222498c: @ 222498c :arm
	stmfd   sp!, {r4-r8,lr}
	sub     sp, sp, #0x8
	mov     r8, r0
	mov     r7, r1
	ldr     r0, [pc, #0x2a0] @ [0x2224c44] (=0x2229f38)
	ldr     r1, [pc, #0x2a0] @ [0x2224c48] (=0x2229f44)
	mov     r6, r2
	mov     r5, r3
	bl      Function_2224584
	cmp     r0, #0x0
	bne     branch_22249d0
	ldr     r0, [pc, #0x28c] @ [0x2224c4c] (=0x2229e6c)
	mov     r1, #0x8
	str     r1, [r0]
	add     sp, sp, #0x8
	mov     r0, #0x0
	ldmfd   sp!, {r4-r8,pc}
@ 0x22249d0

.arm
branch_22249d0: @ 22249d0 :arm
	ldr     r1, [pc, #0x278] @ [0x2224c50] (=0x2229e5c)
	mov     r0, #0x24
	ldr     r2, [r1]
	mov     r1, #0x4
	blx     r2
	movs    r4, r0
	bne     branch_2224a04
	ldr     r0, [pc, #0x258] @ [0x2224c4c] (=0x2229e6c)
	mov     r1, #0x1
	str     r1, [r0]
	add     sp, sp, #0x8
	mov     r0, #0x0
	ldmfd   sp!, {r4-r8,pc}
@ 0x2224a04

.arm
branch_2224a04: @ 2224a04 :arm
	ldr     r0, [pc, #0x248] @ [0x2224c54] (=0x2229e68)
	mov     r1, #0x0
	ldr     r0, [r0]
	str     r0, [r4, #0x8]
	str     r1, [r4, #0xc]
	bl      Function_2225588
	cmp     r0, #0x0
	bne     branch_2224a4c
	ldr     r1, [pc, #0x22c] @ [0x2224c58] (=0x2229e70)
	mov     r0, r4
	ldr     r1, [r1]
	blx     r1
	ldr     r0, [pc, #0x210] @ [0x2224c4c] (=0x2229e6c)
	mov     r1, #0x2
	str     r1, [r0]
	add     sp, sp, #0x8
	mov     r0, #0x0
	ldmfd   sp!, {r4-r8,pc}
@ 0x2224a4c

.arm
branch_2224a4c: @ 2224a4c :arm
	ldr     r1, [pc, #0x208] @ [0x2224c5c] (=0x2224630)
	ldr     r0, [pc, #0x208] @ [0x2224c60] (=0x2229e60)
	stmea   sp, {r1,r4}
	ldr     r0, [r0]
	ldr     r3, [sp, #0x20]
	mov     r2, r5
	mov     r1, #0x1
	bl      Function_22263b8
	movs    r5, r0
	bne     branch_2224aa0
	bl      Function_22255d0
	ldr     r1, [pc, #0x1d8] @ [0x2224c58] (=0x2229e70)
	mov     r0, r4
	ldr     r1, [r1]
	blx     r1
	ldr     r0, [pc, #0x1bc] @ [0x2224c4c] (=0x2229e6c)
	mov     r1, #0x3
	str     r1, [r0]
	add     sp, sp, #0x8
	mov     r0, #0x0
	ldmfd   sp!, {r4-r8,pc}
@ 0x2224aa0

.arm
branch_2224aa0: @ 2224aa0 :arm
	ldr     r1, [pc, #0x1bc] @ [0x2224c64] (=0x2229c20)
	str     r4, [r8]
	mov     r2, #0x1
	str     r5, [r7]
	bl      Function_2225c10
	cmp     r0, #0x0
	beq     branch_2224c20
	ldr     r1, [pc, #0x1a4] @ [0x2224c68] (=0x2229c40)
	ldr     r2, [pc, #0x1a4] @ [0x2224c6c] (=0x2229ed8)
	mov     r0, r5
	bl      Function_2225b78
	cmp     r0, #0x0
	beq     branch_2224c20
	ldr     r1, [pc, #0x194] @ [0x2224c70] (=0x2229c4c)
	ldr     r2, [pc, #0x194] @ [0x2224c74] (=0x2229e84)
	mov     r0, r5
	bl      Function_2225b9c
	cmp     r0, #0x0
	beq     branch_2224c20
	ldr     r1, [pc, #0x184] @ [0x2224c78] (=0x2229c54)
	ldr     r2, [pc, #0x14c] @ [0x2224c44] (=0x2229f38)
	mov     r0, r5
	bl      Function_2225b9c
	cmp     r0, #0x0
	beq     branch_2224c20
	ldr     r1, [pc, #0x170] @ [0x2224c7c] (=0x2229c60)
	ldr     r2, [pc, #0x170] @ [0x2224c80] (=0x2229ebc)
	mov     r0, r5
	bl      Function_2225b9c
	cmp     r0, #0x0
	beq     branch_2224c20
	ldr     r0, [pc, #0x160] @ [0x2224c84] (=0x2229e58)
	ldr     r1, [pc, #0x160] @ [0x2224c88] (=0x2229c68)
	ldr     r2, [r0]
	mov     r0, r5
	bl      Function_2225b9c
	cmp     r0, #0x0
	beq     branch_2224c20
	ldr     r1, [pc, #0x14c] @ [0x2224c8c] (=0x2229c70)
	ldr     r2, [pc, #0x104] @ [0x2224c48] (=0x2229f44)
	mov     r0, r5
	bl      Function_2225b9c
	cmp     r0, #0x0
	beq     branch_2224c20
	ldr     r1, [pc, #0x138] @ [0x2224c90] (=0x2229c78)
	ldr     r2, [pc, #0x138] @ [0x2224c94] (=0x2229e90)
	mov     r0, r5
	bl      Function_2225b9c
	cmp     r0, #0x0
	beq     branch_2224c20
	ldr     r1, [pc, #0x128] @ [0x2224c98] (=0x2229c80)
	mov     r0, r5
	mov     r2, r6
	bl      Function_2225b9c
	cmp     r0, #0x0
	beq     branch_2224c20
	ldr     r0, [pc, #0x114] @ [0x2224c9c] (=0x2229e78)
	ldr     r2, [r0]
	cmp     r2, #0x0
	beq     branch_2224ba4
	ldr     r1, [pc, #0x108] @ [0x2224ca0] (=0x2229c88)
	mov     r0, r5
	bl      Function_2225b9c
	cmp     r0, #0x0
	beq     branch_2224c20
.arm
branch_2224ba4: @ 2224ba4 :arm
	ldr     r0, [pc, #0xf0] @ [0x2224c9c] (=0x2229e78)
	ldr     r2, [r0, #0x4]
	cmp     r2, #0x0
	beq     branch_2224bc8
	ldr     r1, [pc, #0xe8] @ [0x2224ca4] (=0x2229c90)
	mov     r0, r5
	bl      Function_2225b9c
	cmp     r0, #0x0
	beq     branch_2224c20
.arm
branch_2224bc8: @ 2224bc8 :arm
	ldr     r0, [pc, #0xcc] @ [0x2224c9c] (=0x2229e78)
	ldr     r2, [r0, #0x8]
	cmp     r2, #0x0
	beq     branch_2224bec
	ldr     r1, [pc, #0xc8] @ [0x2224ca8] (=0x2229c98)
	mov     r0, r5
	bl      Function_2225b9c
	cmp     r0, #0x0
	beq     branch_2224c20
.arm
branch_2224bec: @ 2224bec :arm
	ldr     r0, [pc, #0xb8] @ [0x2224cac] (=0x2229e54)
	ldr     r0, [r0]
	cmp     r0, #0x0
	beq     branch_2224c14
	ldr     r1, [pc, #0xac] @ [0x2224cb0] (=0x2229ca0)
	ldr     r2, [pc, #0xac] @ [0x2224cb4] (=0x2229ea4)
	mov     r0, r5
	bl      Function_2225b9c
	cmp     r0, #0x0
	beq     branch_2224c20
.arm
branch_2224c14: @ 2224c14 :arm
	add     sp, sp, #0x8
	mov     r0, #0x1
	ldmfd   sp!, {r4-r8,pc}
@ 0x2224c20

.arm
branch_2224c20: @ 2224c20 :arm
	mov     r0, r4
	mov     r1, r5
	bl      Function_2224960
	ldr     r0, [pc, #0x18] @ [0x2224c4c] (=0x2229e6c)
	mov     r1, #0x1
	str     r1, [r0]
	mov     r0, #0x0
	add     sp, sp, #0x8
	ldmfd   sp!, {r4-r8,pc}
@ 0x2224c44

.word 0x2229f38 @ 0x2224c44
.word 0x2229f44 @ 0x2224c48
.word 0x2229e6c @ 0x2224c4c
.word 0x2229e5c @ 0x2224c50
.word 0x2229e68 @ 0x2224c54
.word 0x2229e70 @ 0x2224c58
.word Function_2224630 @ =0x2224630, 0x2224c5c
.word 0x2229e60 @ 0x2224c60
.word 0x2229c20 @ 0x2224c64
.word 0x2229c40 @ 0x2224c68
.word 0x2229ed8 @ 0x2224c6c
.word 0x2229c4c @ 0x2224c70
.word 0x2229e84 @ 0x2224c74
.word 0x2229c54 @ 0x2224c78
.word 0x2229c60 @ 0x2224c7c
.word 0x2229ebc @ 0x2224c80
.word 0x2229e58 @ 0x2224c84
.word 0x2229c68 @ 0x2224c88
.word 0x2229c70 @ 0x2224c8c
.word 0x2229c78 @ 0x2224c90
.word 0x2229e90 @ 0x2224c94
.word 0x2229c80 @ 0x2224c98
.word 0x2229e78 @ 0x2224c9c
.word 0x2229c88 @ 0x2224ca0
.word 0x2229c90 @ 0x2224ca4
.word 0x2229c98 @ 0x2224ca8
.word 0x2229e54 @ 0x2224cac
.word 0x2229ca0 @ 0x2224cb0
.word 0x2229ea4 @ 0x2224cb4
.arm
Function_2224cb8: @ 2224cb8 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	bl      Function_2225534
	mov     r0, r4
	bl      Function_2226a10
	ldr     r1, [pc, #0x38] @ [0x2224d10] (=0x2229e74)
	str     r0, [r5]
	str     r0, [r1]
	bl      Function_2225548
	ldr     r0, [r5]
	cmp     r0, #0x0
	movge   r0, #0x1
	ldmgefd sp!, {r3-r5,pc}
	mov     r0, r5
	mov     r1, r4
	bl      Function_2224960
	ldr     r0, [pc, #0x10] @ [0x2224d14] (=0x2229e6c)
	mov     r1, #0x3
	str     r1, [r0]
	mov     r0, #0x0
	ldmfd   sp!, {r3-r5,pc}
@ 0x2224d10

.word 0x2229e74 @ 0x2224d10
.word 0x2229e6c @ 0x2224d14
.arm
Function_2224d18: @ 2224d18 :arm
	stmfd   sp!, {r3,r4,lr}
	sub     sp, sp, #0xc
	ldr     r2, [pc, #0x5c] @ [0x2224d84] (=0x2228cd8)
	mov     r4, r0
	mov     r12, #0x80
	ldr     r3, [pc, #0x54] @ [0x2224d88] (=0x2229f5c)
	add     r0, sp, #0x8
	add     r1, sp, #0x4
	str     r12, [sp]
	bl      Function_222498c
	cmp     r0, #0x0
	addeq   sp, sp, #0xc
	moveq   r0, #0x0
	ldmeqfd sp!, {r3,r4,pc}
	ldr     r0, [sp, #0x8]
	mov     r1, #0x1
	str     r1, [r0, #0x4]
	ldr     r0, [sp, #0x8]
	str     r4, [r0, #0x10]
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x4]
	bl      Function_2224cb8
	cmp     r0, #0x0
	movne   r0, #0x1
	moveq   r0, #0x0
	add     sp, sp, #0xc
	ldmfd   sp!, {r3,r4,pc}
@ 0x2224d84

.word 0x2228cd8 @ 0x2224d84
.word 0x2229f5c @ 0x2224d88
.arm
Function_2224d8c: @ 2224d8c :arm
	stmfd   sp!, {r4-r10,lr}
	sub     sp, sp, #0x18
	mov     r4, r2
	mov     r6, r1
	ldr     r1, [pc, #0x290] @ [0x2225034] (=0x2229e5c)
	mov     r7, r4, lsl #8
	cmp     r7, #0x80
	ldr     r2, [r1]
	movlt   r7, #0x80
	mov     r5, r0
	mov     r0, r7
	mov     r1, #0x4
	blx     r2
	movs    r8, r0
	bne     branch_2224de0
	ldr     r0, [pc, #0x268] @ [0x2225038] (=0x2229e6c)
	mov     r1, #0x1
	str     r1, [r0]
	add     sp, sp, #0x18
	mov     r0, #0x0
	ldmfd   sp!, {r4-r10,pc}
@ 0x2224de0

.arm
branch_2224de0: @ 2224de0 :arm
	add     r0, sp, #0xc
	mov     r1, r6
	bl      Function_22256c0
	mov     r6, r0
	bl      Function_2223fac
	ldr     r1, [pc, #0x238] @ [0x2225034] (=0x2229e5c)
	add     r0, r0, #0x1
	ldr     r2, [r1]
	mov     r1, #0x4
	blx     r2
	movs    r9, r0
	bne     branch_2224e38
	ldr     r1, [pc, #0x224] @ [0x222503c] (=0x2229e70)
	mov     r0, r8
	ldr     r1, [r1]
	blx     r1
	ldr     r0, [pc, #0x210] @ [0x2225038] (=0x2229e6c)
	mov     r1, #0x1
	str     r1, [r0]
	add     sp, sp, #0x18
	mov     r0, #0x0
	ldmfd   sp!, {r4-r10,pc}
@ 0x2224e38

.arm
branch_2224e38: @ 2224e38 :arm
	add     r1, sp, #0xc
	mov     r2, r6
	bl      Function_2223fc8
	mov     r1, #0x0
	strb    r1, [r9, r0]
	add     r0, sp, #0xc
	mov     r1, r4
	bl      Function_22256c0
	mov     r6, r0
	bl      Function_2223fac
	ldr     r1, [pc, #0x1cc] @ [0x2225034] (=0x2229e5c)
	add     r0, r0, #0x1
	ldr     r2, [r1]
	mov     r1, #0x4
	blx     r2
	movs    r10, r0
	bne     branch_2224eb4
	ldr     r1, [pc, #0x1b8] @ [0x222503c] (=0x2229e70)
	mov     r0, r9
	ldr     r1, [r1]
	blx     r1
	ldr     r1, [pc, #0x1a8] @ [0x222503c] (=0x2229e70)
	mov     r0, r8
	ldr     r1, [r1]
	blx     r1
	ldr     r0, [pc, #0x194] @ [0x2225038] (=0x2229e6c)
	mov     r1, #0x1
	str     r1, [r0]
	add     sp, sp, #0x18
	mov     r0, #0x0
	ldmfd   sp!, {r4-r10,pc}
@ 0x2224eb4

.arm
branch_2224eb4: @ 2224eb4 :arm
	add     r1, sp, #0xc
	mov     r2, r6
	bl      Function_2223fc8
	mov     r1, #0x0
	strb    r1, [r10, r0]
	ldr     r2, [pc, #0x170] @ [0x2225040] (=0x2228ccc)
	add     r0, sp, #0x8
	add     r1, sp, #0x4
	mov     r3, r8
	str     r7, [sp]
	bl      Function_222498c
	cmp     r0, #0x0
	bne     branch_2224f24
	ldr     r1, [pc, #0x14c] @ [0x222503c] (=0x2229e70)
	mov     r0, r10
	ldr     r1, [r1]
	blx     r1
	ldr     r1, [pc, #0x13c] @ [0x222503c] (=0x2229e70)
	mov     r0, r9
	ldr     r1, [r1]
	blx     r1
	ldr     r1, [pc, #0x12c] @ [0x222503c] (=0x2229e70)
	mov     r0, r8
	ldr     r1, [r1]
	blx     r1
	add     sp, sp, #0x18
	mov     r0, #0x0
	ldmfd   sp!, {r4-r10,pc}
@ 0x2224f24

.arm
branch_2224f24: @ 2224f24 :arm
	ldr     r0, [sp, #0x4]
	ldr     r1, [pc, #0x114] @ [0x2225044] (=0x2229ca8)
	mov     r2, r9
	bl      Function_2225b9c
	cmp     r0, #0x0
	beq     branch_2224fe0
	ldr     r0, [sp, #0x4]
	ldr     r1, [pc, #0x100] @ [0x2225048] (=0x2229cb0)
	mov     r2, r10
	bl      Function_2225b9c
	cmp     r0, #0x0
	beq     branch_2224fe0
	ldr     r0, [sp, #0x8]
	mov     r1, #0x2
	str     r1, [r0, #0x4]
	ldr     r0, [sp, #0x8]
	str     r5, [r0, #0x10]
	ldr     r0, [sp, #0x8]
	str     r9, [r0, #0x1c]
	ldr     r0, [sp, #0x8]
	str     r10, [r0, #0x20]
	ldr     r0, [sp, #0x8]
	str     r4, [r0, #0x14]
	ldr     r0, [sp, #0x8]
	str     r8, [r0, #0x18]
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x4]
	bl      Function_2224cb8
	cmp     r0, #0x0
	addne   sp, sp, #0x18
	movne   r0, #0x1
	ldmnefd sp!, {r4-r10,pc}
	ldr     r1, [pc, #0x90] @ [0x222503c] (=0x2229e70)
	mov     r0, r10
	ldr     r1, [r1]
	blx     r1
	ldr     r1, [pc, #0x80] @ [0x222503c] (=0x2229e70)
	mov     r0, r9
	ldr     r1, [r1]
	blx     r1
	ldr     r1, [pc, #0x70] @ [0x222503c] (=0x2229e70)
	mov     r0, r8
	ldr     r1, [r1]
	blx     r1
	add     sp, sp, #0x18
	mov     r0, #0x0
	ldmfd   sp!, {r4-r10,pc}
@ 0x2224fe0

.arm
branch_2224fe0: @ 2224fe0 :arm
	ldr     r1, [pc, #0x54] @ [0x222503c] (=0x2229e70)
	mov     r0, r10
	ldr     r1, [r1]
	blx     r1
	ldr     r1, [pc, #0x44] @ [0x222503c] (=0x2229e70)
	mov     r0, r9
	ldr     r1, [r1]
	blx     r1
	ldr     r1, [pc, #0x34] @ [0x222503c] (=0x2229e70)
	mov     r0, r8
	ldr     r1, [r1]
	blx     r1
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x4]
	bl      Function_2224960
	ldr     r0, [pc, #0x14] @ [0x2225038] (=0x2229e6c)
	mov     r1, #0x1
	str     r1, [r0]
	mov     r0, #0x0
	add     sp, sp, #0x18
	ldmfd   sp!, {r4-r10,pc}
@ 0x2225034

.word 0x2229e5c @ 0x2225034
.word 0x2229e6c @ 0x2225038
.word 0x2229e70 @ 0x222503c
.word 0x2228ccc @ 0x2225040
.word 0x2229ca8 @ 0x2225044
.word 0x2229cb0 @ 0x2225048
.arm
Function_222504c: @ 222504c :arm
	stmfd   sp!, {r3-r8,lr}
	sub     sp, sp, #0xc
	mov     r8, r0
	ldr     r3, [r8, #0xac]
	mov     r7, r1
	cmp     r2, r3
	bcs     branch_2225080
	ldr     r0, [pc, #0x184] @ [0x22251f4] (=0x2229e6c)
	mov     r1, #0x7
	str     r1, [r0]
	add     sp, sp, #0xc
	mov     r0, #0x0
	ldmfd   sp!, {r3-r8,pc}
@ 0x2225080

.arm
branch_2225080: @ 2225080 :arm
	bl      Function_2225670
	mov     r4, r0
	cmp     r4, #0x20
	ble     branch_22250a8
	ldr     r0, [pc, #0x15c] @ [0x22251f4] (=0x2229e6c)
	mov     r1, #0x7
	str     r1, [r0]
	add     sp, sp, #0xc
	mov     r0, #0x0
	ldmfd   sp!, {r3-r8,pc}
@ 0x22250a8

.arm
branch_22250a8: @ 22250a8 :arm
	cmp     r4, #0x0
	movle   r6, #0x0
	ble     branch_22250bc
	bl      Function_2223fac
	mov     r6, r0
.arm
branch_22250bc: @ 22250bc :arm
	ldr     r1, [pc, #0x134] @ [0x22251f8] (=0x2229e5c)
	add     r0, r6, #0x1
	ldr     r2, [r1]
	mov     r1, #0x4
	blx     r2
	movs    r5, r0
	bne     branch_22250f0
	ldr     r0, [pc, #0x114] @ [0x22251f4] (=0x2229e6c)
	mov     r1, #0x1
	str     r1, [r0]
	add     sp, sp, #0xc
	mov     r0, #0x0
	ldmfd   sp!, {r3-r8,pc}
@ 0x22250f0

.arm
branch_22250f0: @ 22250f0 :arm
	ldr     r12, [r8, #0xac]
	ldr     r2, [pc, #0x100] @ [0x22251fc] (=0x2228ce4)
	add     r0, sp, #0x8
	add     r1, sp, #0x4
	mov     r3, r7
	str     r12, [sp]
	bl      Function_222498c
	cmp     r0, #0x0
	bne     branch_2225130
	ldr     r1, [pc, #0xe4] @ [0x2225200] (=0x2229e70)
	mov     r0, r5
	ldr     r1, [r1]
	blx     r1
	add     sp, sp, #0xc
	mov     r0, #0x0
	ldmfd   sp!, {r3-r8,pc}
@ 0x2225130

.arm
branch_2225130: @ 2225130 :arm
	cmp     r6, #0x0
	ble     branch_2225168
	mov     r0, r5
	mov     r1, r8
	mov     r2, r4
	bl      Function_2223fc8
	mov     r1, #0x0
	strb    r1, [r5, r0]
	ldr     r0, [sp, #0x4]
	ldr     r1, [pc, #0xa8] @ [0x2225204] (=0x2229cb4)
	mov     r2, r5
	bl      Function_2225b9c
	cmp     r0, #0x0
	beq     branch_22251c0
.arm
branch_2225168: @ 2225168 :arm
	ldr     r0, [sp, #0x8]
	mov     r1, #0x3
	str     r1, [r0, #0x4]
	ldr     r0, [sp, #0x8]
	str     r5, [r0, #0x10]
	ldr     r1, [r8, #0xac]
	ldr     r0, [sp, #0x8]
	str     r1, [r0, #0x14]
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x4]
	bl      Function_2224cb8
	cmp     r0, #0x0
	addne   sp, sp, #0xc
	movne   r0, #0x1
	ldmnefd sp!, {r3-r8,pc}
	ldr     r1, [pc, #0x54] @ [0x2225200] (=0x2229e70)
	mov     r0, r5
	ldr     r1, [r1]
	blx     r1
	add     sp, sp, #0xc
	mov     r0, #0x0
	ldmfd   sp!, {r3-r8,pc}
@ 0x22251c0

.arm
branch_22251c0: @ 22251c0 :arm
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x4]
	bl      Function_2224960
	ldr     r1, [pc, #0x2c] @ [0x2225200] (=0x2229e70)
	mov     r0, r5
	ldr     r1, [r1]
	blx     r1
	ldr     r0, [pc, #0x10] @ [0x22251f4] (=0x2229e6c)
	mov     r1, #0x1
	str     r1, [r0]
	mov     r0, #0x0
	add     sp, sp, #0xc
	ldmfd   sp!, {r3-r8,pc}
@ 0x22251f4

.word 0x2229e6c @ 0x22251f4
.word 0x2229e5c @ 0x22251f8
.word 0x2228ce4 @ 0x22251fc
.word 0x2229e70 @ 0x2225200
.word 0x2229cb4 @ 0x2225204
.arm
Function_2225208: @ 2225208 :arm
	ldr     r12, [pc, #0x0] @ [0x2225210] (=0x2227184)
	bx      r12
@ 0x2225210

.word 0x2227184 @ 0x2225210
.arm
Function_2225214: @ 2225214 :arm
	stmfd   sp!, {r3,r4,lr}
	sub     sp, sp, #0x4
	mov     r4, r1
	add     r1, sp, #0x0
	bl      Function_2226e8c
	movs    r1, r0
	bmi     branch_222525c
	ldr     r0, [sp]
	bl      Function_22256b4
	ldr     r1, [r4, #0x10]
	add     sp, sp, #0x4
	str     r0, [r1]
	ldr     r0, [r4, #0x10]
	ldr     r0, [r0]
	cmp     r0, #0x0
	movge   r0, #0x1
	movlt   r0, #0x0
	ldmfd   sp!, {r3,r4,pc}
@ 0x222525c

.arm
branch_222525c: @ 222525c :arm
	mov     r0, #0x0
	add     sp, sp, #0x4
	ldmfd   sp!, {r3,r4,pc}
@ 0x2225268

.arm
Function_2225268: @ 2225268 :arm
	stmfd   sp!, {r3,r4,lr}
	sub     sp, sp, #0x4
	mov     r4, r1
	add     r1, sp, #0x0
	bl      Function_2226e8c
	ldr     r1, [r4, #0x14]
	cmp     r0, r1
	moveq   r0, #0x1
	movne   r0, #0x0
	add     sp, sp, #0x4
	ldmfd   sp!, {r3,r4,pc}
@ 0x2225294

.arm
Function_2225294: @ 2225294 :arm
	stmfd   sp!, {r3-r11,lr}
	sub     sp, sp, #0x18
	ldr     r2, [r1, #0x14]
	str     r1, [sp]
	mov     r1, #0xb0
	mul     r1, r2, r1
	mov     r4, r0
	ldr     r0, [sp]
	mov     r2, #0x0
	ldr     r0, [r0, #0x10]
	str     r2, [sp, #0x4]
	bl      Function_2225688
	ldr     r1, [pc, #0x248] @ [0x2225514] (=0x2229cc0)
	add     r2, sp, #0x10
	mov     r0, r4
	bl      Function_2226d88
	cmp     r0, #0x0
	ble     branch_22252fc
	ldr     r1, [sp, #0x10]
	ldrsb   r0, [r1]
	cmp     r0, #0x30
	ldreqsb r0, [r1, #0x1]
	cmpeq   r0, #0x0
	addeq   sp, sp, #0x18
	moveq   r0, #0x1
	ldmeqfd sp!, {r3-r11,pc}
.arm
branch_22252fc: @ 22252fc :arm
	add     r1, sp, #0x14
	mov     r0, r4
	bl      Function_2226e8c
	mov     r4, r0
	cmp     r4, #0x0
	ble     branch_2225508
	ldr     r0, [sp]
	mov     r5, #0x0
	ldr     r0, [r0, #0x14]
	str     r5, [sp, #0xc]
	cmp     r0, #0x0
	ble     branch_2225508
	str     r5, [sp, #0x8]
.arm
branch_2225330: @ 2225330 :arm
	cmp     r5, r4
	movge   r0, #0x1
	strge   r0, [sp, #0x4]
	bge     branch_2225508
	ldr     r0, [sp]
	mov     r6, #0x0
	ldr     r1, [r0, #0x10]
	ldr     r0, [sp, #0x8]
	mov     r7, r5
	mov     r2, r6
	str     r6, [sp, #0x4]
	cmp     r5, r4
	add     r8, r1, r0
	bge     branch_22254e0
	mov     r10, r6
	mov     r11, #0x1
.arm
branch_2225370: @ 2225370 :arm
	ldr     r3, [sp, #0x14]
	ldrsb   r0, [r3, r5]
	cmp     r0, #0xd
	moveq   r2, r11
	beq     branch_22254d4
	cmp     r2, #0x0
	beq     branch_22253dc
	cmp     r0, #0xa
	bne     branch_22254d0
	cmp     r6, #0x5
	bne     branch_22253c0
	sub     r0, r5, #0x1
	sub     r1, r0, r7
	cmp     r1, #0x8
	bgt     branch_2225508
	add     r0, r3, r7
	bl      Function_22256b4
	cmp     r0, #0x0
	blt     branch_2225508
	str     r0, [r8, #0xac]
.arm
branch_22253c0: @ 22253c0 :arm
	cmp     r6, #0x5
	movge   r0, #0x1
	strge   r0, [sp, #0x4]
	movlt   r0, #0x0
	add     r5, r5, #0x1
	strlt   r0, [sp, #0x4]
	b       branch_22254e0
@ 0x22253dc

.arm
branch_22253dc: @ 22253dc :arm
	cmp     r0, #0x9
	bne     branch_22254d0
	cmp     r6, #0x5
	addls   pc, pc, r6, lsl #2
	b       branch_22254c8
@ 0x22253f0

.arm
Function_22253f0: @ 22253f0 :arm
	b       branch_2225408
@ 0x22253f4

.arm
Function_22253f4: @ 22253f4 :arm
	b       branch_2225424
@ 0x22253f8

.arm
Function_22253f8: @ 22253f8 :arm
	b       branch_2225454
@ 0x22253fc

.arm
Function_22253fc: @ 22253fc :arm
	b       branch_2225470
@ 0x2225400

.arm
Function_2225400: @ 2225400 :arm
	b       branch_222548c
@ 0x2225404

.arm
Function_2225404: @ 2225404 :arm
	b       branch_22254a8
@ 0x2225408

.arm
branch_2225408: @ 2225408 :arm
	sub     r2, r5, r7
	cmp     r2, #0x20
	bhi     branch_2225508
	add     r1, r3, r7
	mov     r0, r8
	bl      Function_222569c
	b       branch_22254c8
@ 0x2225424

.arm
branch_2225424: @ 2225424 :arm
	sub     r9, r5, r7
	mov     r0, r9
	bl      Function_2223fa0
	cmp     r0, #0x66
	bhi     branch_2225508
	ldr     r0, [sp, #0x14]
	mov     r2, r9
	add     r1, r0, r7
	add     r0, r8, #0x22
	bl      Function_22240c0
	strh    r10, [r8, #0x86]
	b       branch_22254c8
@ 0x2225454

.arm
branch_2225454: @ 2225454 :arm
	sub     r2, r5, r7
	cmp     r2, #0xa
	bhi     branch_2225508
	add     r1, r3, r7
	add     r0, r8, #0x88
	bl      Function_222569c
	b       branch_22254c8
@ 0x2225470

.arm
branch_2225470: @ 2225470 :arm
	sub     r2, r5, r7
	cmp     r2, #0xa
	bhi     branch_2225508
	add     r1, r3, r7
	add     r0, r8, #0x93
	bl      Function_222569c
	b       branch_22254c8
@ 0x222548c

.arm
branch_222548c: @ 222548c :arm
	sub     r2, r5, r7
	cmp     r2, #0xa
	bhi     branch_2225508
	add     r1, r3, r7
	add     r0, r8, #0x9e
	bl      Function_222569c
	b       branch_22254c8
@ 0x22254a8

.arm
branch_22254a8: @ 22254a8 :arm
	sub     r1, r5, r7
	cmp     r1, #0x8
	bgt     branch_2225508
	add     r0, r3, r7
	bl      Function_22256b4
	cmp     r0, #0x0
	blt     branch_2225508
	str     r0, [r8, #0xac]
.arm
branch_22254c8: @ 22254c8 :arm
	add     r6, r6, #0x1
	add     r7, r5, #0x1
.arm
branch_22254d0: @ 22254d0 :arm
	mov     r2, #0x0
.arm
branch_22254d4: @ 22254d4 :arm
	add     r5, r5, #0x1
	cmp     r5, r4
	blt     branch_2225370
.arm
branch_22254e0: @ 22254e0 :arm
	ldr     r0, [sp]
	ldr     r1, [r0, #0x14]
	ldr     r0, [sp, #0xc]
	add     r0, r0, #0x1
	str     r0, [sp, #0xc]
	cmp     r0, r1
	ldr     r0, [sp, #0x8]
	add     r0, r0, #0xb0
	str     r0, [sp, #0x8]
	blt     branch_2225330
.arm
branch_2225508: @ 2225508 :arm
	ldr     r0, [sp, #0x4]
	add     sp, sp, #0x18
	ldmfd   sp!, {r3-r11,pc}
@ 0x2225514

.word 0x2229cc0 @ 0x2225514



.arm
Function_2225518: @ 2225518 :arm
	stmfd   sp!, {r3,lr}
	ldr     r0, [pc, #0x8] @ [0x222552c] (=0x2229ff8)
	bl      OS_InitMutex
	mov     r0, #0x1
	ldmfd   sp!, {r3,pc}
@ 0x222552c

.word 0x2229ff8 @ 0x222552c



.arm
Function_2225530: @ 2225530 :arm
	bx      lr
@ 0x2225534

.arm
Function_2225534: @ 2225534 :arm
	ldr     r12, [pc, #0x4] @ [0x2225540] (=OS_LockMutex)
	ldr     r0, [pc, #0x4] @ [0x2225544] (=0x2229ff8)
	bx      r12
@ 0x2225540

.word OS_LockMutex @ 0x2225540
.word 0x2229ff8 @ 0x2225544



.arm
Function_2225548: @ 2225548 :arm
	ldr     r12, [pc, #0x4] @ [0x2225554] (=OS_UnlockMutex)
	ldr     r0, [pc, #0x4] @ [0x2225558] (=0x2229ff8)
	bx      r12
@ 0x2225554

.word OS_UnlockMutex @ 0x2225554
.word 0x2229ff8 @ 0x2225558



.arm
Function_222555c: @ 222555c :arm
	stmfd   sp!, {r3,lr}
	ldr     r0, [pc, #0x14] @ [0x222557c] (=0x2229fe0)
	bl      OS_InitMutex
	ldr     r0, [pc, #0x10] @ [0x2225580] (=0x2229fdc)
	mov     r1, #0x0
	str     r1, [r0]
	mov     r0, #0x1
	ldmfd   sp!, {r3,pc}
@ 0x222557c

.word 0x2229fe0 @ 0x222557c
.word 0x2229fdc @ 0x2225580
.arm
Function_2225584: @ 2225584 :arm
	bx      lr
@ 0x2225588

.arm
Function_2225588: @ 2225588 :arm
	stmfd   sp!, {r4,lr}
	ldr     r0, [pc, #0x34] @ [0x22255c8] (=0x2229fe0)
	bl      OS_LockMutex
	ldr     r0, [pc, #0x30] @ [0x22255cc] (=0x2229fdc)
	ldr     r0, [r0]
	cmp     r0, #0x0
	moveq   r4, #0x1
	movne   r4, #0x0
	cmp     r4, #0x0
	ldrne   r0, [pc, #0x18] @ [0x22255cc] (=0x2229fdc)
	movne   r1, #0x1
	strne   r1, [r0]
	ldr     r0, [pc, #0x8] @ [0x22255c8] (=0x2229fe0)
	bl      OS_UnlockMutex
	mov     r0, r4
	ldmfd   sp!, {r4,pc}
@ 0x22255c8

.word 0x2229fe0 @ 0x22255c8
.word 0x2229fdc @ 0x22255cc



.arm
Function_22255d0: @ 22255d0 :arm
	stmfd   sp!, {r3,lr}
	ldr     r0, [pc, #0x18] @ [0x22255f4] (=0x2229fe0)
	bl      OS_LockMutex
	ldr     r1, [pc, #0x14] @ [0x22255f8] (=0x2229fdc)
	mov     r2, #0x0
	ldr     r0, [pc, #0x8] @ [0x22255f4] (=0x2229fe0)
	str     r2, [r1]
	bl      OS_UnlockMutex
	ldmfd   sp!, {r3,pc}
@ 0x22255f4

.word 0x2229fe0 @ 0x22255f4
.word 0x2229fdc @ 0x22255f8
.arm
Function_22255fc: @ 22255fc :arm
	ldr     r12, [pc, #0x8] @ [0x222560c] (=0x20c2770)
	mov     r1, #0x0
	mov     r2, r1
	bx      r12
@ 0x222560c

.word 0x20c2770 @ 0x222560c



.arm
Function_2225610: @ 2225610 :arm
	stmfd   sp!, {r4-r9,lr}
	sub     sp, sp, #0x14
	mov     r9, r0
	add     r0, sp, #0x0
	bl      OS_GetMacAddress
	mov     r6, #0x0
	add     r7, sp, #0x0
	mov     r8, r6
	add     r5, sp, #0x6
	mov     r4, #0x2
branch_2225638: @ 2225638 :arm
	ldrb    r1, [r7], #0x1
	mov     r2, r4
	add     r0, r5, r8
	bl      Function_22257a4
	add     r6, r6, #0x1
	cmp     r6, #0x6
	add     r8, r8, #0x2
	blt     branch_2225638
	add     r1, sp, #0x6
	mov     r0, r9
	mov     r2, #0xc
	bl      Function_2223fc8
	add     sp, sp, #0x14
	ldmfd   sp!, {r4-r9,pc}
@ 0x2225670

.arm
Function_2225670: @ 2225670 :arm
	ldr     r12, [pc, #0x0] @ [0x2225678] (=0x20d33b4)
	bx      r12
@ 0x2225678

.word 0x20d33b4 @ 0x2225678
.arm
Function_222567c: @ 222567c :arm
	ldr     r12, [pc, #0x0] @ [0x2225684] (=0x20d3408)
	bx      r12
@ 0x2225684

.word 0x20d3408 @ 0x2225684
.arm
Function_2225688: @ 2225688 :arm
	ldr     r12, [pc, #0x8] @ [0x2225698] (=MI_CpuFill8)
	mov     r2, r1
	mov     r1, #0x0
	bx      r12
@ 0x2225698

.word MI_CpuFill8 @ 0x2225698
.arm
Function_222569c: @ 222569c :arm
	ldr     r12, [pc, #0xc] @ [0x22256b0] (=MI_CpuCopy8)
	mov     r3, r0
	mov     r0, r1
	mov     r1, r3
	bx      r12
@ 0x22256b0

.word MI_CpuCopy8 @ 0x22256b0
.arm
Function_22256b4: @ 22256b4 :arm
	ldr     r12, [pc, #0x0] @ [0x22256bc] (=0x2228980)
	bx      r12
@ 0x22256bc

.word 0x2228980 @ 0x22256bc
.arm
Function_22256c0: @ 22256c0 :arm
	ldr     r12, [pc, #0x0] @ [0x22256c8] (=0x2228a18)
	bx      r12
@ 0x22256c8

.word 0x2228a18 @ 0x22256c8
.arm
Function_22256cc: @ 22256cc :arm
	stmfd   sp!, {r3-r11,lr}
	mov     r8, r2
	ldr     r4, [pc, #0xbc] @ [0x2225798] (=0x1634578)
	ldr     r2, [pc, #0xbc] @ [0x222579c] (=0x5d8a0000)
	mov     r9, r1
	cmp     r8, r4
	mov     r10, r0
	mov     r11, r3
	mov     r5, #0x0
	cmpeq   r9, r2
	subcs   r0, r5, #0x1
	ldmcsfd sp!, {r3-r11,pc}
	mov     r4, r5
	mov     r0, r5
.arm
branch_2225704: @ 2225704 :arm
	ldr     r1, [pc, #0x94] @ [0x22257a0] (=0x2228cf4)
	add     r1, r1, r4, lsl #3
	ldr     r6, [r1, #0x4]
	ldr     r1, [pc, #0x88] @ [0x22257a0] (=0x2228cf4)
	cmp     r8, r6
	ldr     r7, [r1, r4, lsl #0x3]
	cmpeq   r9, r7
	bcc     branch_222575c
	mov     r0, r9
	mov     r1, r8
	mov     r2, r7
	mov     r3, r6
	bl      _ll_udiv
	umull   r3, r2, r0, r7
	mla     r2, r0, r6, r2
	add     r0, r0, #0x30
	strb    r0, [r10, r5]
	subs    r9, r9, r3
	sbc     r8, r8, r2
	mov     r0, #0x1
	add     r5, r5, #0x1
	b       branch_222577c
@ 0x222575c

.arm
branch_222575c: @ 222575c :arm
	cmp     r0, #0x0
	bne     branch_2225770
	rsb     r1, r4, #0x11
	cmp     r1, r11
	bgt     branch_222577c
.arm
branch_2225770: @ 2225770 :arm
	mov     r1, #0x30
	strb    r1, [r10, r5]
	add     r5, r5, #0x1
.arm
branch_222577c: @ 222577c :arm
	add     r4, r4, #0x1
	cmp     r4, #0x10
	blt     branch_2225704
	adds    r0, r9, #0x30
	strb    r0, [r10, r5]
	add     r0, r5, #0x1
	ldmfd   sp!, {r3-r11,pc}
@ 0x2225798

.word 0x1634578 @ 0x2225798
.word 0x5d8a0000 @ 0x222579c
.word 0x2228cf4 @ 0x22257a0
.arm
Function_22257a4: @ 22257a4 :arm
	stmfd   sp!, {r3,lr}
	mov     lr, #0x0
	cmp     r2, #0x8
	subgt   r0, lr, #0x1
	ldmgtfd sp!, {r3,pc}
	cmp     r2, #0x1
	mov     r12, #0x1
	blt     branch_22257f4
.arm
branch_22257c4: @ 22257c4 :arm
	sub     r3, r2, r12
	mov     r3, r3, lsl #2
	mov     r3, r1, lsr r3
	and     r3, r3, #0xf
	cmp     r3, #0xa
	addcc   r3, r3, #0x30
	addcs   r3, r3, #0x57
	add     r12, r12, #0x1
	strb    r3, [r0, lr]
	add     lr, lr, #0x1
	cmp     r12, r2
	ble     branch_22257c4
.arm
branch_22257f4: @ 22257f4 :arm
	mov     r0, lr
	ldmfd   sp!, {r3,pc}
@ 0x22257fc

.arm
Function_22257fc: @ 22257fc :arm
	stmfd   sp!, {r4,lr}
	ldr     r3, [pc, #0xb8] @ [0x22258c0] (=0x222a010)
	mov     r12, #0x0
	str     r0, [r3, #0x8]
	str     r1, [r3, #0xc]
	str     r12, [r3, #0x4]
	str     r12, [r3, #0x1c]
	str     r12, [r3, #0x20]
	str     r12, [r3, #0x10]
	mov     r4, r2
	str     r12, [r3, #0x14]
	bl      Function_2225e1c
	cmp     r0, #0x0
	bne     branch_2225848
	ldr     r0, [pc, #0x84] @ [0x22258c0] (=0x222a010)
	mov     r1, #0x9
	str     r1, [r0, #0x4]
	mov     r0, #0x0
	ldmfd   sp!, {r4,pc}
@ 0x2225848

.arm
branch_2225848: @ 2225848 :arm
	ldr     r1, [pc, #0x70] @ [0x22258c0] (=0x222a010)
	mov     r0, #2, 20 @ #0x2000
	ldr     r2, [r1, #0x8]
	mov     r1, #0x8
	blx     r2
	movs    r1, r0
	ldr     r0, [pc, #0x58] @ [0x22258c0] (=0x222a010)
	str     r1, [r0, #0x18]
	bne     branch_2225880
	mov     r1, #0x1
	str     r1, [r0, #0x4]
	bl      Function_2225e34
	mov     r0, #0x0
	ldmfd   sp!, {r4,pc}
@ 0x2225880

.arm
branch_2225880: @ 2225880 :arm
	mov     r0, r4
	bl      Function_2225e60
	cmp     r0, #0x0
	ldrne   r1, [pc, #0x2c] @ [0x22258c0] (=0x222a010)
	movne   r0, #0x1
	strne   r0, [r1]
	ldmnefd sp!, {r4,pc}
	ldr     r1, [pc, #0x1c] @ [0x22258c0] (=0x222a010)
	mov     r0, #0x9
	str     r0, [r1, #0x4]
	ldr     r0, [r1, #0x18]
	ldr     r1, [r1, #0xc]
	blx     r1
	bl      Function_2225e34
	mov     r0, #0x0
	ldmfd   sp!, {r4,pc}
@ 0x22258c0

.word 0x222a010 @ 0x22258c0
.arm
Function_22258c4: @ 22258c4 :arm
	stmfd   sp!, {r3,lr}
	sub     sp, sp, #0x8
	mov     r2, r0
	mov     r12, #2, 22 @ #0x800
	ldr     r0, [pc, #0x24] @ [0x2225900] (=0x222a034)
	ldr     r1, [pc, #0x24] @ [0x2225904] (=0x222590c)
	ldr     r3, [pc, #0x24] @ [0x2225908] (=0x222a8f4)
	str     r12, [sp]
	mov     r12, #0x10
	str     r12, [sp, #0x4]
	bl      OS_CreateThread
	ldr     r0, [pc, #0x8] @ [0x2225900] (=0x222a034)
	bl      OS_WakeupThreadDirect
	add     sp, sp, #0x8
	ldmfd   sp!, {r3,pc}
@ 0x2225900

.word 0x222a034 @ 0x2225900
.word 0x222590c @ 0x2225904
.word 0x222a8f4 @ 0x2225908
.arm
Function_222590c: @ 222590c :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	bl      Function_2226b18
	bl      Function_2225ed8
	ldr     r1, [pc, #0x20] @ [0x2225944] (=0x222a010)
	ldr     r0, [r1, #0x18]
	ldr     r1, [r1, #0xc]
	blx     r1
	bl      Function_2225e34
	ldr     r0, [pc, #0xc] @ [0x2225944] (=0x222a010)
	mov     r1, #0x0
	str     r1, [r0]
	blx     r4
	ldmfd   sp!, {r4,pc}
@ 0x2225944

.word 0x222a010 @ 0x2225944
.arm
Function_2225948: @ 2225948 :arm
	stmfd   sp!, {r4-r10,lr}
	mov     r9, r0
	ldr     r10, [r9]
	mov     r8, r1
	mov     r7, r2
	mov     r6, r3
	cmp     r10, #0x0
	mov     r4, #0x0
	beq     branch_22259c4
	ldr     r1, [r10, #0x8]
	mov     r0, r8
	mov     r5, r10
	bl      Function_2228ad4
	cmp     r0, #0x0
	beq     branch_22259c0
	ldr     r5, [r10, #0x4]
	ldr     r0, [r9]
	cmp     r5, r0
	beq     branch_22259c4
.arm
branch_2225994: @ 2225994 :arm
	ldr     r1, [r5, #0x8]
	mov     r0, r8
	bl      Function_2228ad4
	cmp     r0, #0x0
	moveq   r4, #0x1
	beq     branch_22259c4
	ldr     r5, [r5, #0x4]
	ldr     r0, [r9]
	cmp     r5, r0
	bne     branch_2225994
	b       branch_22259c4
@ 0x22259c0

.arm
branch_22259c0: @ 22259c0 :arm
	mov     r4, #0x1
.arm
branch_22259c4: @ 22259c4 :arm
	cmp     r4, #0x0
	strne   r7, [r5, #0xc]
	bne     branch_2225a50
	ldr     r1, [pc, #0x80] @ [0x2225a58] (=0x222a018)
	mov     r0, r6
	ldr     r2, [r1]
	mov     r1, #0x4
	blx     r2
	cmp     r0, #0x0
	bne     branch_2225a00
	ldr     r0, [pc, #0x68] @ [0x2225a5c] (=0x222a014)
	mov     r1, #0x1
	str     r1, [r0]
	mov     r0, #0x0
	ldmfd   sp!, {r4-r10,pc}
@ 0x2225a00

.arm
branch_2225a00: @ 2225a00 :arm
	str     r8, [r0, #0x8]
	str     r7, [r0, #0xc]
	mov     r1, #0x0
	str     r1, [r0, #0x10]
	str     r1, [r0, #0x14]
	ldr     r1, [r9]
	cmp     r1, #0x0
	streq   r0, [r0, #0x4]
	streq   r0, [r0]
	streq   r0, [r9]
	beq     branch_2225a50
	ldr     r1, [r1]
	str     r1, [r0]
	ldr     r1, [r9]
	str     r1, [r0, #0x4]
	ldr     r1, [r9]
	ldr     r1, [r1]
	str     r0, [r1, #0x4]
	ldr     r1, [r9]
	str     r0, [r1]
.arm
branch_2225a50: @ 2225a50 :arm
	mov     r0, #0x1
	ldmfd   sp!, {r4-r10,pc}
@ 0x2225a58

.word 0x222a018 @ 0x2225a58
.word 0x222a014 @ 0x2225a5c
.arm
Function_2225a60: @ 2225a60 :arm
	ldr     r3, [r0]
	cmp     r3, #0x0
	beq     branch_2225a9c
	ldr     r2, [r3]
	cmp     r3, r2
	moveq   r1, #0x0
	streq   r1, [r0]
	beq     branch_2225a9c
	ldr     r1, [r3, #0x4]
	str     r1, [r2, #0x4]
	ldr     r2, [r3]
	ldr     r1, [r3, #0x4]
	str     r2, [r1]
	ldr     r1, [r3, #0x4]
	str     r1, [r0]
.arm
branch_2225a9c: @ 2225a9c :arm
	mov     r0, r3
	bx      lr
@ 0x2225aa4

.arm
Function_2225aa4: @ 2225aa4 :arm
	add     r0, r0, #0x1
	and     r0, r0, #0xff
	cmp     r0, #0x7b
	moveq   r0, #0x30
	beq     branch_2225acc
	cmp     r0, #0x5b
	moveq   r0, #0x61
	beq     branch_2225acc
	cmp     r0, #0x3a
	moveq   r0, #0x41
.arm
branch_2225acc: @ 2225acc :arm
	mov     r0, r0, lsl #24
	mov     r0, r0, asr #24
	bx      lr
@ 0x2225ad8

.arm
Function_2225ad8: @ 2225ad8 :arm
	stmfd   sp!, {r3-r11,lr}
	mov     r10, r0
	mov     r9, r1
	mov     r8, r2
	mov     r0, r9
	mov     r1, r8
	add     r2, r10, #0x46
	mov     r3, #0x12
	bl      Function_2228bc8
	cmp     r0, #0x0
	movlt   r0, #0x1
	ldmltfd sp!, {r3-r11,pc}
	ldr     r6, [pc, #0x64] @ [0x2225b74] (=0x2228d87)
	mov     r11, #0x13
	mov     r4, #0x12
.arm
branch_2225b14: @ 2225b14 :arm
	add     r7, r10, r11
	ldrsb   r5, [r7, #0x44]
.arm
branch_2225b1c: @ 2225b1c :arm
	and     r0, r5, #0xff
	bl      Function_2225aa4
	mov     r5, r0
	strb    r5, [r7, #0x44]
	ldrsb   r0, [r6]
	cmp     r5, r0
	beq     branch_2225b5c
	mov     r0, r9
	mov     r1, r8
	mov     r3, r4
	add     r2, r10, #0x46
	bl      Function_2228bc8
	cmp     r0, #0x0
	bge     branch_2225b1c
	mov     r0, #0x1
	ldmfd   sp!, {r3-r11,pc}
@ 0x2225b5c

.arm
branch_2225b5c: @ 2225b5c :arm
	sub     r11, r11, #0x1
	cmp     r11, #0x2
	sub     r6, r6, #0x1
	bge     branch_2225b14
	mov     r0, #0x0
	ldmfd   sp!, {r3-r11,pc}
@ 0x2225b74

.word 0x2228d87 @ 0x2225b74
.arm
Function_2225b78: @ 2225b78 :arm
	stmfd   sp!, {r3,lr}
	ldr     r3, [r0]
	cmp     r3, #0x0
	movne   r0, #0x0
	ldmnefd sp!, {r3,pc}
	add     r0, r0, #0x34
	mov     r3, #0x18
	bl      Function_2225948
	ldmfd   sp!, {r3,pc}
@ 0x2225b9c

.arm
Function_2225b9c: @ 2225b9c :arm
	stmfd   sp!, {r4-r8,lr}
	mov     r8, r0
	ldr     r0, [r8]
	mov     r7, r1
	mov     r6, r2
	mov     r5, #0x0
	cmp     r0, #0x0
	movne   r0, r5
	ldmnefd sp!, {r4-r8,pc}
	mov     r0, r6
	bl      Function_222714c
	mov     r4, r0
	mov     r0, r8
	mov     r1, r6
	mov     r2, r4
	bl      Function_2225ad8
	cmp     r0, #0x0
	beq     branch_2225c08
	mov     r1, r7
	mov     r2, r6
	add     r0, r8, #0x38
	mov     r3, #0x18
	bl      Function_2225948
	movs    r5, r0
	ldrne   r0, [r8, #0x38]
	ldrne   r0, [r0]
	strne   r4, [r0, #0x10]
.arm
branch_2225c08: @ 2225c08 :arm
	mov     r0, r5
	ldmfd   sp!, {r4-r8,pc}
@ 0x2225c10

.arm
Function_2225c10: @ 2225c10 :arm
	ldr     r3, [r0]
	cmp     r3, #0x0
	movne   r0, #0x0
	streq   r1, [r0, #0x1c]
	streq   r2, [r0, #0x18]
	moveq   r0, #0x1
	bx      lr
@ 0x2225c2c

.arm
Function_2225c2c: @ 2225c2c :arm
	stmfd   sp!, {r3-r5,lr}
	ldr     r1, [pc, #0x9c] @ [0x2225cd4] (=0x222a018)
	mov     r4, r0
	ldr     r2, [r1]
	mov     r0, #0x14
	mov     r1, #0x4
	mvn     r5, #0x0
	blx     r2
	cmp     r0, #0x0
	beq     branch_2225ccc
	ldr     r1, [pc, #0x7c] @ [0x2225cd8] (=0x222a030)
	ldr     r2, [r1]
	cmp     r2, #0x0
	streq   r0, [r0]
	streq   r0, [r0, #0x4]
	streq   r0, [r1]
	beq     branch_2225c94
	ldr     r2, [r2]
	str     r2, [r0]
	ldr     r2, [r1]
	str     r2, [r0, #0x4]
	ldr     r2, [r1]
	ldr     r2, [r2]
	str     r0, [r2, #0x4]
	ldr     r1, [r1]
	str     r0, [r1]
.arm
branch_2225c94: @ 2225c94 :arm
	ldr     r1, [pc, #0x40] @ [0x2225cdc] (=0x222a02c)
	mvn     r2, #0x0
	ldr     r12, [r1]
	ldr     r3, [r1]
	add     r3, r3, #0x1
	str     r3, [r1]
	str     r12, [r0, #0x8]
	str     r4, [r0, #0xc]
	str     r2, [r0, #0x10]
	ldr     r2, [r1]
	ldr     r5, [r0, #0x8]
	cmp     r2, #0x0
	movlt   r0, #0x0
	strlt   r0, [r1]
.arm
branch_2225ccc: @ 2225ccc :arm
	mov     r0, r5
	ldmfd   sp!, {r3-r5,pc}
@ 0x2225cd4

.word 0x222a018 @ 0x2225cd4
.word 0x222a030 @ 0x2225cd8
.word 0x222a02c @ 0x2225cdc
.arm
Function_2225ce0: @ 2225ce0 :arm
	ldr     r1, [pc, #0x4c] @ [0x2225d34] (=0x222a030)
	mov     r2, #0x0
	ldr     r3, [r1]
	cmp     r3, #0x0
	beq     branch_2225d2c
	ldr     r1, [r3, #0x8]
	cmp     r1, r0
	moveq   r2, r3
	beq     branch_2225d2c
	ldr     r12, [r3, #0x4]
	cmp     r12, r3
	beq     branch_2225d2c
.arm
branch_2225d10: @ 2225d10 :arm
	ldr     r1, [r12, #0x8]
	cmp     r1, r0
	moveq   r2, r12
	beq     branch_2225d2c
	ldr     r12, [r12, #0x4]
	cmp     r12, r3
	bne     branch_2225d10
.arm
branch_2225d2c: @ 2225d2c :arm
	mov     r0, r2
	bx      lr
@ 0x2225d34

.word 0x222a030 @ 0x2225d34
.arm
Function_2225d38: @ 2225d38 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r5, #0x0
	bl      Function_2225ce0
	movs    r4, r0
	beq     branch_2225dc8
	ldr     r0, [pc, #0x7c] @ [0x2225dd0] (=0x222a030)
	ldr     r2, [r0]
	ldr     r1, [r2]
	cmp     r2, r1
	beq     branch_2225d88
	ldmia   r4, {r1,r2}
	str     r2, [r1, #0x4]
	ldr     r2, [r4]
	ldr     r1, [r4, #0x4]
	str     r2, [r1]
	ldr     r1, [r0]
	cmp     r1, r4
	ldreq   r1, [r4, #0x4]
	streq   r1, [r0]
	b       branch_2225d90
@ 0x2225d88

.arm
branch_2225d88: @ 2225d88 :arm
	mov     r1, r5
	str     r1, [r0]
.arm
branch_2225d90: @ 2225d90 :arm
	ldr     r0, [r4, #0xc]
	ldr     r5, [r0, #0x3c]
	ldr     r6, [r0, #0x30]
	ldr     r7, [r0, #0x2c]
	bl      Function_2226998
	ldr     r1, [pc, #0x28] @ [0x2225dd4] (=0x222a01c)
	mov     r0, r4
	ldr     r1, [r1]
	blx     r1
	mov     r1, r6
	mov     r2, r7
	mov     r0, #0x8
	blx     r5
	mov     r5, #0x1
.arm
branch_2225dc8: @ 2225dc8 :arm
	mov     r0, r5
	ldmfd   sp!, {r3-r7,pc}
@ 0x2225dd0

.word 0x222a030 @ 0x2225dd0
.word 0x222a01c @ 0x2225dd4
.arm
Function_2225dd8: @ 2225dd8 :arm
	stmfd   sp!, {r4,lr}
	ldr     r4, [pc, #0x20] @ [0x2225e04] (=0x222a030)
	ldr     r0, [r4]
	cmp     r0, #0x0
	ldmeqfd sp!, {r4,pc}
.arm
branch_2225dec: @ 2225dec :arm
	ldr     r0, [r0, #0x8]
	bl      Function_2225d38
	ldr     r0, [r4]
	cmp     r0, #0x0
	bne     branch_2225dec
	ldmfd   sp!, {r4,pc}
@ 0x2225e04

.word 0x222a030 @ 0x2225e04
.arm
Function_2225e08: @ 2225e08 :arm
	ldr     r12, [pc, #0x4] @ [0x2225e14] (=0x2225a60)
	ldr     r0, [pc, #0x4] @ [0x2225e18] (=0x222a030)
	bx      r12
@ 0x2225e14

.word Function_2225a60 @ =0x2225a60, 0x2225e14
.word 0x222a030 @ 0x2225e18
.arm
Function_2225e1c: @ 2225e1c :arm
	stmfd   sp!, {r3,lr}
	ldr     r0, [pc, #0x8] @ [0x2225e30] (=0x222a8f8)
	bl      OS_InitMutex
	mov     r0, #0x1
	ldmfd   sp!, {r3,pc}
@ 0x2225e30

.word 0x222a8f8 @ 0x2225e30
.arm
Function_2225e34: @ 2225e34 :arm
	bx      lr
@ 0x2225e38

.arm
Function_2225e38: @ 2225e38 :arm
	ldr     r12, [pc, #0x4] @ [0x2225e44] (=OS_LockMutex)
	ldr     r0, [pc, #0x4] @ [0x2225e48] (=0x222a8f8)
	bx      r12
@ 0x2225e44

.word OS_LockMutex @ 0x2225e44
.word 0x222a8f8 @ 0x2225e48
.arm
Function_2225e4c: @ 2225e4c :arm
	ldr     r12, [pc, #0x4] @ [0x2225e58] (=OS_UnlockMutex)
	ldr     r0, [pc, #0x4] @ [0x2225e5c] (=0x222a8f8)
	bx      r12
@ 0x2225e58

.word OS_UnlockMutex @ 0x2225e58
.word 0x222a8f8 @ 0x2225e5c



.arm
Function_2225e60: @ 2225e60 :arm
	stmfd   sp!, {r3-r5,lr}
	sub     sp, sp, #0x8
	mov     r5, r0
	mov     r4, r1
	bl      Function_20c1f24
	cmp     r0, #0x0
	addeq   sp, sp, #0x8
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r5,pc}

	ldr     r0, [pc, #0x3c] @ [0x2225ec8] (=0x222a910)
	ldr     r1, [pc, #0x3c] @ [0x2225ecc] (=0x222a8f4)
	mov     r2, #0x1
	bl      OS_InitMessageQueue
	mov     r0, #2, 20 @ #0x2000
	str     r0, [sp]
	ldr     r0, [pc, #0x2c] @ [0x2225ed0] (=0x222a930)
	ldr     r1, [pc, #0x2c] @ [0x2225ed4] (=0x22274a0)
	add     r3, r4, #2, 20 @ #0x2000
	mov     r2, #0x0
	str     r5, [sp, #0x4]
	bl      OS_CreateThread
	ldr     r0, [pc, #0x14] @ [0x2225ed0] (=0x222a930)
	bl      OS_WakeupThreadDirect
	mov     r0, #0x1
	add     sp, sp, #0x8
	ldmfd   sp!, {r3-r5,pc}
@ 0x2225ec8

.word 0x222a910 @ 0x2225ec8
.word 0x222a8f4 @ 0x2225ecc
.word 0x222a930 @ 0x2225ed0
.word 0x22274a0 @ 0x2225ed4



.arm
Function_2225ed8: @ 2225ed8 :arm
	stmfd   sp!, {r3,lr}
	ldr     r0, [pc, #0x14] @ [0x2225ef8] (=0x222a024)
	mov     r1, #0x1
	str     r1, [r0]
	bl      Function_2225f1c
	ldr     r0, [pc, #0x8] @ [0x2225efc] (=0x222a930)
	bl      Function_20c21d4
	ldmfd   sp!, {r3,pc}
@ 0x2225ef8

.word 0x222a024 @ 0x2225ef8
.word 0x222a930 @ 0x2225efc



.arm
Function_2225f00: @ 2225f00 :arm
	stmfd   sp!, {r3,lr}
	ldr     r0, [pc, #0xc] @ [0x2225f18] (=0x222a910)
	add     r1, sp, #0x0
	mov     r2, #0x1
	bl      OS_ReceiveMessage
	ldmfd   sp!, {r3,pc}
@ 0x2225f18

.word 0x222a910 @ 0x2225f18
.arm
Function_2225f1c: @ 2225f1c :arm
	ldr     r12, [pc, #0xc] @ [0x2225f30] (=0x20c2770)
	mov     r1, #0x0
	ldr     r0, [pc, #0x8] @ [0x2225f34] (=0x222a910)
	mov     r2, r1
	bx      r12
@ 0x2225f30

.word 0x20c2770 @ 0x2225f30
.word 0x222a910 @ 0x2225f34
.arm
Function_2225f38: @ 2225f38 :arm
	stmfd   sp!, {r3,lr}
	cmp     r1, #1, 22 @ #0x400
	bge     branch_2225f54
	mov     r0, #0x0
	str     r0, [r2]
	str     r1, [r3]
	ldmfd   sp!, {r3,pc}
@ 0x2225f54

.arm
branch_2225f54: @ 2225f54 :arm
	sub     r12, r1, #1, 22 @ #0x400
	movs    r12, r12, asr #9
	sub     lr, r12, #0x1
	ldr     r12, [r0, #0x1c]
	beq     branch_2225f78
.arm
branch_2225f68: @ 2225f68 :arm
	cmp     lr, #0x0
	sub     lr, lr, #0x1
	ldr     r12, [r12]
	bne     branch_2225f68
.arm
branch_2225f78: @ 2225f78 :arm
	ldr     r0, [pc, #0x10] @ [0x2225f90] (=0x1ff)
	sub     r1, r1, #1, 22 @ #0x400
	str     r12, [r2]
	and     r0, r1, r0
	str     r0, [r3]
	ldmfd   sp!, {r3,pc}
@ 0x2225f90

.word 0x1ff @ 0x2225f90
.arm
Function_2225f94: @ 2225f94 :arm
	ldr     r3, [r1]
	cmp     r3, #0x0
	bne     branch_2225fd4
	ldr     r3, [r2]
	cmp     r3, #1, 22 @ #0x400
	bge     branch_2225fc0
	add     r1, r3, #0x1
	str     r1, [r2]
	add     r0, r0, r3
	ldrsb   r0, [r0, #0x20]
	bx      lr
@ 0x2225fc0

.arm
branch_2225fc0: @ 2225fc0 :arm
	mov     r3, #0x0
	str     r3, [r2]
	ldr     r0, [r0, #0x1c]
	str     r0, [r1]
	b       branch_2225ff4
@ 0x2225fd4

.arm
branch_2225fd4: @ 2225fd4 :arm
	ldr     r0, [r2]
	cmp     r0, #2, 24 @ #0x200
	bne     branch_2225ff4
	mov     r0, #0x0
	str     r0, [r2]
	ldr     r0, [r1]
	ldr     r0, [r0]
	str     r0, [r1]
.arm
branch_2225ff4: @ 2225ff4 :arm
	ldr     r3, [r2]
	add     r0, r3, #0x1
	str     r0, [r2]
	ldr     r0, [r1]
	add     r0, r0, r3
	ldrsb   r0, [r0, #0x4]
	bx      lr
@ 0x2226010

.arm
Function_2226010: @ 2226010 :arm
	stmfd   sp!, {r3-r11,lr}
	sub     sp, sp, #0x8
	mov     r6, #0x0
	movs    r7, r3
	mov     r10, r0
	subne   r0, r6, #0x1
	mov     r9, r1
	mov     r8, r2
	strne   r0, [r7]
	cmp     r9, r8
	bge     branch_22260d4
	add     r2, sp, #0x4
	add     r3, sp, #0x0
	mov     r0, r10
	mov     r1, r9
	bl      Function_2225f38
	cmp     r9, r8
	bge     branch_22260d4
	mov     r11, #0x1
	add     r5, sp, #0x4
	add     r4, sp, #0x0
.arm
branch_2226064: @ 2226064 :arm
	mov     r0, r10
	mov     r1, r5
	mov     r2, r4
	bl      Function_2225f94
	cmp     r0, #0x3a
	bne     branch_2226090
	cmp     r7, #0x0
	beq     branch_2226090
	ldr     r1, [r7]
	cmp     r1, #0x0
	strlt   r9, [r7]
.arm
branch_2226090: @ 2226090 :arm
	cmp     r6, #0x0
	bne     branch_22260a4
	cmp     r0, #0xd
	moveq   r6, r11
	b       branch_22260c8
@ 0x22260a4

.arm
branch_22260a4: @ 22260a4 :arm
	cmp     r0, #0xa
	bne     branch_22260c4
	sub     r0, r8, #0x1
	cmp     r9, r0
	moveq   r0, #0x0
	add     sp, sp, #0x8
	addne   r0, r9, #0x1
	ldmfd   sp!, {r3-r11,pc}
@ 0x22260c4

.arm
branch_22260c4: @ 22260c4 :arm
	mov     r6, #0x0
.arm
branch_22260c8: @ 22260c8 :arm
	add     r9, r9, #0x1
	cmp     r9, r8
	blt     branch_2226064
.arm
branch_22260d4: @ 22260d4 :arm
	mvn     r0, #0x0
	add     sp, sp, #0x8
	ldmfd   sp!, {r3-r11,pc}
@ 0x22260e0

.arm
Function_22260e0: @ 22260e0 :arm
	stmfd   sp!, {r4-r8,lr}
	sub     sp, sp, #0x8
	mov     r7, r1
	mov     r6, r2
	mov     r8, r0
	cmp     r7, r6
	bge     branch_2226144
	add     r2, sp, #0x4
	add     r3, sp, #0x0
	bl      Function_2225f38
	cmp     r7, r6
	bge     branch_2226144
	add     r5, sp, #0x4
	add     r4, sp, #0x0
.arm
branch_2226118: @ 2226118 :arm
	mov     r0, r8
	mov     r1, r5
	mov     r2, r4
	bl      Function_2225f94
	cmp     r0, #0x20
	addne   sp, sp, #0x8
	movne   r0, r7
	ldmnefd sp!, {r4-r8,pc}
	add     r7, r7, #0x1
	cmp     r7, r6
	blt     branch_2226118
.arm
branch_2226144: @ 2226144 :arm
	mvn     r0, #0x0
	add     sp, sp, #0x8
	ldmfd   sp!, {r4-r8,pc}
@ 0x2226150

.arm
Function_2226150: @ 2226150 :arm
	stmfd   sp!, {r3-r11,lr}
	sub     sp, sp, #0x8
	mov     r9, r1
	mov     r4, r2
	mov     r10, r0
	mov     r8, r3
	cmp     r9, r4
	ldr     r7, [sp, #0x30]
	bge     branch_2226214
	add     r2, sp, #0x4
	add     r3, sp, #0x0
	bl      Function_2225f38
	add     r1, sp, #0x4
	add     r2, sp, #0x0
	mov     r0, r10
	bl      Function_2225f94
	sub     r6, r4, #0x1
	add     r5, sp, #0x4
	add     r4, sp, #0x0
	mov     r11, #0x0
	b       branch_22261d8
@ 0x22261a4

.arm
branch_22261a4: @ 22261a4 :arm
	cmp     r2, #0x0
	cmpne   r2, #0x20
	cmpne   r2, r7
	cmpne   r9, r6
	addeq   sp, sp, #0x8
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r11,pc}
	mov     r0, r10
	mov     r1, r5
	mov     r2, r4
	bl      Function_2225f94
	add     r9, r9, #0x1
	add     r8, r8, #0x1
.arm
branch_22261d8: @ 22261d8 :arm
	ldrsb   r2, [r8]
	mov     r1, r11
	cmp     r2, #0x41
	blt     branch_22261f0
	cmp     r2, #0x5a
	movle   r1, #0x1
.arm
branch_22261f0: @ 22261f0 :arm
	cmp     r1, #0x0
	addne   r1, r2, #0x20
	moveq   r1, r2
	cmp     r0, #0x41
	blt     branch_222620c
	cmp     r0, #0x5a
	addle   r0, r0, #0x20
.arm
branch_222620c: @ 222620c :arm
	cmp     r0, r1
	beq     branch_22261a4
.arm
branch_2226214: @ 2226214 :arm
	mvn     r0, #0x0
	add     sp, sp, #0x8
	ldmfd   sp!, {r3-r11,pc}
@ 0x2226220

.arm
Function_2226220: @ 2226220 :arm
	stmfd   sp!, {r3-r9,lr}
	mov     r4, r0
	mov     r7, r2
	mov     r6, r3
	ldr     r0, [r4]
	add     r2, r7, r6
	mov     r8, r1
	cmp     r2, r0
	bgt     branch_2226300
	cmp     r6, #0x0
	beq     branch_22262f8
	cmp     r7, #1, 22 @ #0x400
	bge     branch_2226280
	rsb     r5, r7, #1, 22 @ #0x400
	cmp     r6, r5
	movle   r5, r6
	add     r1, r4, #0x20
	mov     r0, r8
	mov     r2, r5
	add     r1, r1, r7
	bl      Function_222716c
	add     r7, r7, r5
	sub     r6, r6, r5
	add     r8, r8, r5
.arm
branch_2226280: @ 2226280 :arm
	cmp     r6, #0x0
	beq     branch_22262f8
	sub     r2, r7, #1, 22 @ #0x400
	ldr     r0, [pc, #0x74] @ [0x2226308] (=0x1ff)
	movs    r1, r2, asr #9
	and     r7, r2, r0
	sub     r0, r1, #0x1
	ldr     r4, [r4, #0x1c]
	beq     branch_22262b4
.arm
branch_22262a4: @ 22262a4 :arm
	cmp     r0, #0x0
	sub     r0, r0, #0x1
	ldr     r4, [r4]
	bne     branch_22262a4
.arm
branch_22262b4: @ 22262b4 :arm
	cmp     r6, #0x0
	beq     branch_22262f8
	ldr     r9, [pc, #0x44] @ [0x2226308] (=0x1ff)
.arm
branch_22262c0: @ 22262c0 :arm
	rsb     r5, r7, #2, 24 @ #0x200
	cmp     r6, r5
	movle   r5, r6
	add     r1, r4, #0x4
	mov     r0, r8
	mov     r2, r5
	add     r1, r1, r7
	bl      Function_222716c
	add     r0, r7, r5
	and     r7, r0, r9
	subs    r6, r6, r5
	add     r8, r8, r5
	ldr     r4, [r4]
	bne     branch_22262c0
.arm
branch_22262f8: @ 22262f8 :arm
	mov     r0, #0x1
	ldmfd   sp!, {r3-r9,pc}
@ 0x2226300

.arm
branch_2226300: @ 2226300 :arm
	mov     r0, #0x0
	ldmfd   sp!, {r3-r9,pc}
@ 0x2226308

.word 0x1ff @ 0x2226308
.arm
Function_222630c: @ 222630c :arm
	ldr     r0, [r0, #0xc]
	cmp     r0, r1
	movls   r0, #0x1
	movhi   r0, #0x0
	bx      lr
@ 0x2226320

.arm
Function_2226320: @ 2226320 :arm
	stmfd   sp!, {r3,lr}
	ldr     r12, [r0, #0x30]
	mov     lr, r2
	str     r3, [sp]
	ldr     r2, [r12, #0x18]
	ldr     r3, [r12, #0xc]
	add     r2, r2, lr
	sub     r3, r3, lr
	bl      Function_2227024
	ldmfd   sp!, {r3,pc}
@ 0x2226348

.arm
Function_2226348: @ 2226348 :arm
	stmfd   sp!, {r3-r8,lr}
	sub     sp, sp, #0x4
	mov     r8, r0
	ldr     r4, [r8, #0x30]
	mov     r6, r2
	mov     r7, r1
	mov     r0, r4
	mov     r1, r6
	mov     r5, r3
	bl      Function_222630c
	cmp     r0, #0x0
	addne   sp, sp, #0x4
	ldrne   r0, [pc, #0x34] @ [0x22263b4] (=0xfffffc15)
	ldmnefd sp!, {r3-r8,pc}
	ldr     r0, [r4, #0xc]
	ldr     r1, [sp, #0x20]
	sub     r3, r0, r6
	str     r1, [sp]
	ldr     r2, [r4, #0x18]
	cmp     r5, r3
	movle   r3, r5
	mov     r0, r8
	mov     r1, r7
	add     r2, r2, r6
	bl      Function_2227024
	add     sp, sp, #0x4
	ldmfd   sp!, {r3-r8,pc}
@ 0x22263b4

.word 0xfffffc15 @ 0x22263b4
.arm
Function_22263b8: @ 22263b8 :arm
	stmfd   sp!, {r3-r11,lr}
	mov     r11, r0
	movs    r0, r1
	cmpne   r0, #0x1
	str     r1, [sp]
	mov     r5, r2
	mov     r4, r3
	mov     r7, #0x0
	cmpne   r0, #0x2
	beq     branch_22263f0
	ldr     r0, [pc, #0x518] @ [0x2226900] (=0x222a014)
	mov     r1, #0xb
	str     r1, [r0]
	b       branch_222687c
@ 0x22263f0

.arm
branch_22263f0: @ 22263f0 :arm
	cmp     r4, #0x0
	bne     branch_2226408
	ldr     r0, [pc, #0x500] @ [0x2226900] (=0x222a014)
	mov     r1, #0xb
	str     r1, [r0]
	b       branch_222687c
@ 0x2226408

.arm
branch_2226408: @ 2226408 :arm
	ldr     r1, [pc, #0x4f4] @ [0x2226904] (=0x222a018)
	mov     r0, #0x58
	ldr     r2, [r1]
	mov     r1, #0x4
	blx     r2
	movs    r7, r0
	bne     branch_2226434
	ldr     r0, [pc, #0x4d4] @ [0x2226900] (=0x222a014)
	mov     r1, #0x1
	str     r1, [r0]
	b       branch_222687c
@ 0x2226434

.arm
branch_2226434: @ 2226434 :arm
	mov     r1, #0x58
	bl      Function_2227158
	ldr     r1, [pc, #0x4c0] @ [0x2226904] (=0x222a018)
	mov     r0, #66, 28 @ #0x420
	ldr     r2, [r1]
	mov     r1, #0x4
	blx     r2
	str     r0, [r7, #0x30]
	cmp     r0, #0x0
	bne     branch_222646c
	ldr     r0, [pc, #0x49c] @ [0x2226900] (=0x222a014)
	mov     r1, #0x1
	str     r1, [r0]
	b       branch_222687c
@ 0x222646c

.arm
branch_222646c: @ 222646c :arm
	mov     r1, #66, 28 @ #0x420
	bl      Function_2227158
	ldr     r1, [r7, #0x30]
	mov     r0, r11
	str     r5, [r1, #0x18]
	ldr     r1, [r7, #0x30]
	str     r4, [r1, #0xc]
	bl      Function_222714c
	mov     r4, r0
	cmp     r4, #0x7
	bgt     branch_22264a8
	ldr     r0, [pc, #0x460] @ [0x2226900] (=0x222a014)
	mov     r1, #0x4
	str     r1, [r0]
	b       branch_222687c
@ 0x22264a8

.arm
branch_22264a8: @ 22264a8 :arm
	mov     r8, #0x7
	mov     r3, #0x50
	ldr     r1, [pc, #0x450] @ [0x2226908] (=0x2229cd0)
	mov     r0, r11
	mov     r2, r8
	str     r3, [r7, #0x28]
	bl      Function_22270e4
	cmp     r0, #0x0
	beq     branch_2226508
	ldr     r1, [pc, #0x438] @ [0x222690c] (=0x2229cd8)
	mov     r0, r11
	mov     r2, #0x8
	bl      Function_22270e4
	cmp     r0, #0x0
	beq     branch_22264f4
	ldr     r0, [pc, #0x414] @ [0x2226900] (=0x222a014)
	mov     r1, #0x4
	str     r1, [r0]
	b       branch_222687c
@ 0x22264f4

.arm
branch_22264f4: @ 22264f4 :arm
	mov     r0, #0x1
	str     r0, [r7, #0x8]
	rsb     r0, r0, #111, 30 @ #0x1bc
	str     r0, [r7, #0x28]
	mov     r8, #0x8
.arm
branch_2226508: @ 2226508 :arm
	sub     r4, r4, r8
	cmp     r4, #0x0
	add     r6, r11, r8
	bgt     branch_2226528
	ldr     r0, [pc, #0x3e0] @ [0x2226900] (=0x222a014)
	mov     r1, #0x4
	str     r1, [r0]
	b       branch_222687c
@ 0x2226528

.arm
branch_2226528: @ 2226528 :arm
	mov     r5, #0x0
	mov     r9, r5
	mov     r10, r5
	b       branch_222659c
@ 0x2226538

.arm
branch_2226538: @ 2226538 :arm
	cmp     r10, #0x2
	subeq   r10, r10, #0x1
	beq     branch_2226598
	cmp     r10, #0x1
	bne     branch_222658c
	sub     r0, r5, #0x1
	mov     r1, #0x2
	add     r0, r6, r0
	bl      Function_2228898
	mov     r0, r0, lsl #24
	movs    r0, r0, asr #24
	sub     r10, r10, #0x1
	bpl     branch_222657c
	ldr     r0, [pc, #0x38c] @ [0x2226900] (=0x222a014)
	mov     r1, #0x4
	str     r1, [r0]
	b       branch_222687c
@ 0x222657c

.arm
branch_222657c: @ 222657c :arm
	cmp     r0, #0x2f
	bne     branch_2226598
	sub     r9, r9, #0x1
	b       branch_22265b0
@ 0x222658c

.arm
branch_222658c: @ 222658c :arm
	cmp     r0, #0x25
	moveq   r10, #0x2
	addeq   r9, r9, #0x1
.arm
branch_2226598: @ 2226598 :arm
	add     r5, r5, #0x1
.arm
branch_222659c: @ 222659c :arm
	cmp     r5, r4
	bge     branch_22265b0
	ldrsb   r0, [r6, r5]
	cmp     r0, #0x2f
	bne     branch_2226538
.arm
branch_22265b0: @ 22265b0 :arm
	cmp     r10, #0x0
	beq     branch_22265c8
	ldr     r0, [pc, #0x340] @ [0x2226900] (=0x222a014)
	mov     r1, #0x4
	str     r1, [r0]
	b       branch_222687c
@ 0x22265c8

.arm
branch_22265c8: @ 22265c8 :arm
	ldr     r0, [pc, #0x334] @ [0x2226904] (=0x222a018)
	add     r1, r8, r4
	sub     r1, r1, r9, lsl #1
	ldr     r2, [r0]
	add     r0, r1, #0x1
	mov     r1, #0x4
	blx     r2
	str     r0, [r7, #0x24]
	cmp     r0, #0x0
	bne     branch_2226600
	ldr     r0, [pc, #0x308] @ [0x2226900] (=0x222a014)
	mov     r1, #0x1
	str     r1, [r0]
	b       branch_222687c
@ 0x2226600

.arm
branch_2226600: @ 2226600 :arm
	mov     r1, r11
	mov     r2, r8
	bl      Function_222716c
	mov     r9, #0x0
	mov     r5, r9
	mov     r10, r9
	mov     r11, r9
	cmp     r4, #0x0
	ble     branch_22266a4
.arm
branch_2226624: @ 2226624 :arm
	cmp     r10, #0x2
	subeq   r10, r10, #0x1
	beq     branch_2226698
	cmp     r10, #0x1
	bne     branch_2226670
	sub     r0, r9, #0x1
	add     r0, r6, r0
	mov     r1, #0x2
	bl      Function_2228898
	mov     r0, r0, lsl #24
	mov     r1, r0, asr #24
	ldr     r0, [r7, #0x24]
	cmp     r1, #0x2f
	add     r0, r8, r0
	add     r0, r5, r0
	sub     r10, r10, #0x1
	strb    r1, [r0, #-0x1]
	moveq   r11, #0x1
	b       branch_2226698
@ 0x2226670

.arm
branch_2226670: @ 2226670 :arm
	ldrsb   r1, [r6, r9]
	cmp     r1, #0x2f
	moveq   r11, #0x1
	cmp     r11, #0x0
	cmpeq   r1, #0x25
	ldrne   r0, [r7, #0x24]
	moveq   r10, #0x2
	addne   r0, r8, r0
	strneb  r1, [r5, r0]
	add     r5, r5, #0x1
.arm
branch_2226698: @ 2226698 :arm
	add     r9, r9, #0x1
	cmp     r9, r4
	blt     branch_2226624
.arm
branch_22266a4: @ 22266a4 :arm
	ldr     r1, [r7, #0x24]
	add     r0, r8, r5
	mov     r2, #0x0
	strb    r2, [r1, r0]
	ldr     r0, [r7, #0x24]
	cmp     r5, #0x0
	add     r1, r0, r8
	ble     branch_22266e8
.arm
branch_22266c4: @ 22266c4 :arm
	ldrsb   r0, [r1, r2]
	cmp     r0, #0x2f
	cmpne   r0, #0x3a
	addeq   r0, r2, r8
	streq   r0, [r7, #0xc]
	beq     branch_22266e8
	add     r2, r2, #0x1
	cmp     r2, r5
	blt     branch_22266c4
.arm
branch_22266e8: @ 22266e8 :arm
	cmp     r2, r5
	bne     branch_2226700
	add     r0, r2, r8
	str     r0, [r7, #0xc]
	str     r0, [r7, #0x10]
	b       branch_22267a4
@ 0x2226700

.arm
branch_2226700: @ 2226700 :arm
	ldrsb   r0, [r1, r2]
	cmp     r0, #0x2f
	ldreq   r0, [r7, #0xc]
	streq   r0, [r7, #0x10]
	beq     branch_22267a4
	cmp     r0, #0x3a
	bne     branch_22267a4
	cmp     r2, r5
	bge     branch_2226744
.arm
branch_2226724: @ 2226724 :arm
	ldrsb   r0, [r1, r2]
	cmp     r0, #0x2f
	addeq   r0, r2, r8
	streq   r0, [r7, #0x10]
	beq     branch_2226744
	add     r2, r2, #0x1
	cmp     r2, r5
	blt     branch_2226724
.arm
branch_2226744: @ 2226744 :arm
	cmp     r2, r5
	addeq   r0, r2, r8
	streq   r0, [r7, #0x10]
	beq     branch_22267a4
	ldr     r1, [r7, #0xc]
	ldr     r0, [r7, #0x24]
	add     r2, r1, #0x1
	ldr     r1, [r7, #0x10]
	add     r0, r0, r2
	sub     r1, r1, r2
	bl      Function_2228b58
	cmp     r0, #0x0
	ldrlt   r0, [r7, #0x28]
	blt     branch_2226798
	ldr     r1, [pc, #0x18c] @ [0x2226910] (=0xffff)
	cmp     r0, r1
	ble     branch_2226798
	ldr     r0, [pc, #0x170] @ [0x2226900] (=0x222a014)
	mov     r1, #0x4
	str     r1, [r0]
	b       branch_222687c
@ 0x2226798

.arm
branch_2226798: @ 2226798 :arm
	mov     r0, r0, lsl #16
	mov     r0, r0, lsr #16
	str     r0, [r7, #0x28]
.arm
branch_22267a4: @ 22267a4 :arm
	ldr     r0, [r7, #0x8]
	cmp     r0, #0x0
	beq     branch_222684c
	ldr     r0, [pc, #0x14c] @ [0x2226904] (=0x222a018)
	ldr     r3, [r7, #0xc]
	ldr     r2, [r0]
	mov     r0, #131, 28 @ #0x830
	mov     r1, #0x4
	sub     r4, r3, r8
	blx     r2
	str     r0, [r7, #0x20]
	cmp     r0, #0x0
	bne     branch_22267e8
	ldr     r0, [pc, #0x120] @ [0x2226900] (=0x222a014)
	mov     r1, #0x1
	str     r1, [r0]
	b       branch_222687c
@ 0x22267e8

.arm
branch_22267e8: @ 22267e8 :arm
	mov     r1, #131, 28 @ #0x830
	bl      Function_2227158
	ldr     r1, [pc, #0x10c] @ [0x2226904] (=0x222a018)
	add     r0, r4, #0x1
	ldr     r2, [r1]
	mov     r1, #0x4
	blx     r2
	ldr     r1, [r7, #0x20]
	str     r0, [r1, #0x800]
	ldr     r0, [r7, #0x20]
	ldr     r0, [r0, #0x800]
	cmp     r0, #0x0
	bne     branch_222682c
	ldr     r0, [pc, #0xdc] @ [0x2226900] (=0x222a014)
	mov     r1, #0x1
	str     r1, [r0]
	b       branch_222687c
@ 0x222682c

.arm
branch_222682c: @ 222682c :arm
	ldr     r1, [r7, #0x24]
	mov     r2, r4
	add     r1, r1, r8
	bl      Function_222716c
	ldr     r0, [r7, #0x20]
	mov     r1, #0x0
	ldr     r0, [r0, #0x800]
	strb    r1, [r0, r4]
.arm
branch_222684c: @ 222684c :arm
	ldr     r1, [pc, #0xc0] @ [0x2226914] (=0x2228d74)
	add     r0, r7, #0x44
	mov     r2, #0x14
	bl      Function_222716c
	ldr     r0, [sp, #0x2c]
	ldr     r1, [sp, #0x28]
	str     r0, [r7, #0x2c]
	ldr     r0, [sp]
	str     r0, [r7, #0x40]
	mov     r0, r7
	str     r1, [r7, #0x3c]
	ldmfd   sp!, {r3-r11,pc}
@ 0x222687c

.arm
branch_222687c: @ 222687c :arm
	cmp     r7, #0x0
	beq     branch_22268f8
	ldr     r0, [r7, #0x20]
	cmp     r0, #0x0
	beq     branch_22268b8
	ldr     r0, [r0, #0x800]
	cmp     r0, #0x0
	beq     branch_22268a8
	ldr     r1, [pc, #0x74] @ [0x2226918] (=0x222a01c)
	ldr     r1, [r1]
	blx     r1
.arm
branch_22268a8: @ 22268a8 :arm
	ldr     r1, [pc, #0x68] @ [0x2226918] (=0x222a01c)
	ldr     r0, [r7, #0x20]
	ldr     r1, [r1]
	blx     r1
.arm
branch_22268b8: @ 22268b8 :arm
	ldr     r0, [r7, #0x24]
	cmp     r0, #0x0
	beq     branch_22268d0
	ldr     r1, [pc, #0x4c] @ [0x2226918] (=0x222a01c)
	ldr     r1, [r1]
	blx     r1
.arm
branch_22268d0: @ 22268d0 :arm
	ldr     r0, [r7, #0x30]
	cmp     r0, #0x0
	beq     branch_22268e8
	ldr     r1, [pc, #0x34] @ [0x2226918] (=0x222a01c)
	ldr     r1, [r1]
	blx     r1
.arm
branch_22268e8: @ 22268e8 :arm
	ldr     r1, [pc, #0x28] @ [0x2226918] (=0x222a01c)
	mov     r0, r7
	ldr     r1, [r1]
	blx     r1
.arm
branch_22268f8: @ 22268f8 :arm
	mov     r0, #0x0
	ldmfd   sp!, {r3-r11,pc}
@ 0x2226900

.word 0x222a014 @ 0x2226900
.word 0x222a018 @ 0x2226904
.word 0x2229cd0 @ 0x2226908
.word 0x2229cd8 @ 0x222690c
.word 0xffff @ 0x2226910
.word 0x2228d74 @ 0x2226914
.word 0x222a01c @ 0x2226918
.arm
Function_222691c: @ 222691c :arm
	stmfd   sp!, {r4,lr}
	ldr     r1, [pc, #0x18] @ [0x2226940] (=0x222a01c)
	mov     r4, r0
	ldr     r0, [r4, #0x30]
	ldr     r1, [r1]
	blx     r1
	mov     r0, r4
	bl      Function_2226998
	ldmfd   sp!, {r4,pc}
@ 0x2226940

.word 0x222a01c @ 0x2226940
.arm
Function_2226944: @ 2226944 :arm
	stmfd   sp!, {r3-r7,lr}
	movs    r7, r0
	ldmeqfd sp!, {r3-r7,pc}
	ldr     r4, [pc, #0x3c] @ [0x2226994] (=0x222a01c)
	mov     r5, #0x0
.arm
branch_2226958: @ 2226958 :arm
	ldr     r0, [r7]
	cmp     r7, r0
	beq     branch_2226978
	ldr     r6, [r0]
	ldr     r1, [r4]
	blx     r1
	str     r6, [r7]
	b       branch_2226988
@ 0x2226978

.arm
branch_2226978: @ 2226978 :arm
	ldr     r1, [r4]
	mov     r0, r7
	blx     r1
	mov     r7, r5
.arm
branch_2226988: @ 2226988 :arm
	cmp     r7, #0x0
	bne     branch_2226958
	ldmfd   sp!, {r3-r7,pc}
@ 0x2226994

.word 0x222a01c @ 0x2226994
.arm
Function_2226998: @ 2226998 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x34]
	bl      Function_2226944
	ldr     r0, [r4, #0x38]
	bl      Function_2226944
	ldr     r0, [r4, #0x20]
	cmp     r0, #0x0
	beq     branch_22269e4
	ldr     r0, [r0, #0x800]
	cmp     r0, #0x0
	beq     branch_22269d4
	ldr     r1, [pc, #0x3c] @ [0x2226a0c] (=0x222a01c)
	ldr     r1, [r1]
	blx     r1
.arm
branch_22269d4: @ 22269d4 :arm
	ldr     r1, [pc, #0x30] @ [0x2226a0c] (=0x222a01c)
	ldr     r0, [r4, #0x20]
	ldr     r1, [r1]
	blx     r1
.arm
branch_22269e4: @ 22269e4 :arm
	ldr     r1, [pc, #0x20] @ [0x2226a0c] (=0x222a01c)
	ldr     r0, [r4, #0x24]
	ldr     r1, [r1]
	blx     r1
	ldr     r1, [pc, #0x10] @ [0x2226a0c] (=0x222a01c)
	mov     r0, r4
	ldr     r1, [r1]
	blx     r1
	mov     r0, #0x1
	ldmfd   sp!, {r4,pc}
@ 0x2226a0c

.word 0x222a01c @ 0x2226a0c
.arm
Function_2226a10: @ 2226a10 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5]
	cmp     r0, #0x0
	beq     branch_2226a38
	ldr     r0, [pc, #0x6c] @ [0x2226a98] (=0x222a014)
	mov     r1, #0xb
	str     r1, [r0]
	sub     r0, r1, #0xc
	ldmfd   sp!, {r3-r5,pc}
@ 0x2226a38

.arm
branch_2226a38: @ 2226a38 :arm
	ldr     r0, [r5, #0x40]
	cmp     r0, #0x1
	ldreq   r0, [r5, #0x38]
	cmpeq   r0, #0x0
	bne     branch_2226a60
	ldr     r0, [pc, #0x44] @ [0x2226a98] (=0x222a014)
	mov     r1, #0xb
	str     r1, [r0]
	sub     r0, r1, #0xc
	ldmfd   sp!, {r3-r5,pc}
@ 0x2226a60

.arm
branch_2226a60: @ 2226a60 :arm
	bl      Function_2225e38
	mov     r0, r5
	bl      Function_2225c2c
	movs    r4, r0
	ldrmi   r0, [pc, #0x20] @ [0x2226a98] (=0x222a014)
	movmi   r1, #0x1
	strmi   r1, [r0]
	bmi     branch_2226a8c
	mov     r0, #0x1
	str     r0, [r5]
	bl      Function_2225f1c
.arm
branch_2226a8c: @ 2226a8c :arm
	bl      Function_2225e4c
	mov     r0, r4
	ldmfd   sp!, {r3-r5,pc}
@ 0x2226a98

.word 0x222a014 @ 0x2226a98
.arm
Function_2226a9c: @ 2226a9c :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r4, r0
	mov     r5, #0x0
	bl      Function_2225e38
	ldr     r0, [pc, #0x60] @ [0x2226b14] (=0x222a020)
	ldr     r2, [r0]
	cmp     r2, #0x0
	beq     branch_2226af4
	ldr     r1, [r2, #0x8]
	cmp     r1, r4
	ldreq   r1, [r2, #0xc]
	ldreq   r1, [r1, #0x4]
	cmpeq   r1, #0x0
	bne     branch_2226af4
	ldr     r1, [r2, #0xc]
	mov     r2, #0x1
	str     r2, [r1, #0x4]
	ldr     r1, [r0]
	ldr     r0, [r1, #0xc]
	ldr     r1, [r1, #0x10]
	bl      Function_22270bc
	mov     r5, #0x1
.arm
branch_2226af4: @ 2226af4 :arm
	cmp     r5, #0x0
	bne     branch_2226b08
	mov     r0, r4
	bl      Function_2225d38
	mov     r5, r0
.arm
branch_2226b08: @ 2226b08 :arm
	bl      Function_2225e4c
	mov     r0, r5
	ldmfd   sp!, {r3-r5,pc}
@ 0x2226b14

.word 0x222a020 @ 0x2226b14
.arm
Function_2226b18: @ 2226b18 :arm
	stmfd   sp!, {r3,lr}
	bl      Function_2225e38
	ldr     r0, [pc, #0x40] @ [0x2226b68] (=0x222a020)
	ldr     r2, [r0]
	cmp     r2, #0x0
	beq     branch_2226b5c
	ldr     r1, [r2, #0xc]
	ldr     r1, [r1, #0x4]
	cmp     r1, #0x0
	bne     branch_2226b5c
	ldr     r1, [r2, #0xc]
	mov     r2, #0x1
	str     r2, [r1, #0x4]
	ldr     r1, [r0]
	ldr     r0, [r1, #0xc]
	ldr     r1, [r1, #0x10]
	bl      Function_22270bc
.arm
branch_2226b5c: @ 2226b5c :arm
	bl      Function_2225dd8
	bl      Function_2225e4c
	ldmfd   sp!, {r3,pc}
@ 0x2226b68

.word 0x222a020 @ 0x2226b68
.arm
Function_2226b6c: @ 2226b6c :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r5, r0
	ldr     r2, [r5, #0x24]
	ldr     r1, [r5, #0xc]
	mov     r0, #0x0
	ldrsb   r4, [r2, r1]
	strb    r0, [r2, r1]
	ldr     r0, [r5, #0x8]
	ldr     r6, [r5, #0x24]
	cmp     r0, #0x0
	movne   r7, #0x8
	moveq   r7, #0x7
	add     r1, sp, #0x0
	add     r0, r6, r7
	bl      0x2208a24
	cmp     r0, #0x0
	ldrne   r0, [sp]
	bne     branch_2226bf4
	add     r0, r6, r7
	bl      0x2207f58
	cmp     r0, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r7,pc}
	mov     r2, r0, lsr #24
	mov     r1, r0, lsr #8
	mov     r3, r0, lsl #8
	mov     r12, r0, lsl #24
	and     r2, r2, #0xff
	and     r0, r1, #255, 24 @ #0xff00
	and     r1, r3, #255, 16 @ #0xff0000
	orr     r0, r2, r0
	and     r2, r12, #255, 8 @ #0xff000000
	orr     r0, r1, r0
	orr     r0, r2, r0
.arm
branch_2226bf4: @ 2226bf4 :arm
	ldr     r2, [r5, #0x24]
	ldr     r1, [r5, #0xc]
	strb    r4, [r2, r1]
	ldmfd   sp!, {r3-r7,pc}
@ 0x2226c04

.arm
Function_2226c04: @ 2226c04 :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x1c]
	cmp     r0, #0x0
	beq     branch_2226c34
	ldr     r5, [pc, #0x58] @ [0x2226c78] (=0x222a01c)
.arm
branch_2226c1c: @ 2226c1c :arm
	ldr     r6, [r0]
	ldr     r1, [r5]
	blx     r1
	movs    r0, r6
	str     r6, [r4, #0x1c]
	bne     branch_2226c1c
.arm
branch_2226c34: @ 2226c34 :arm
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x0
	beq     branch_2226c4c
	ldr     r1, [pc, #0x30] @ [0x2226c78] (=0x222a01c)
	ldr     r1, [r1]
	blx     r1
.arm
branch_2226c4c: @ 2226c4c :arm
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x0
	beq     branch_2226c64
	ldr     r1, [pc, #0x18] @ [0x2226c78] (=0x222a01c)
	ldr     r1, [r1]
	blx     r1
.arm
branch_2226c64: @ 2226c64 :arm
	ldr     r1, [pc, #0xc] @ [0x2226c78] (=0x222a01c)
	mov     r0, r4
	ldr     r1, [r1]
	blx     r1
	ldmfd   sp!, {r4-r6,pc}
@ 0x2226c78

.word 0x222a01c @ 0x2226c78
.arm
Function_2226c7c: @ 2226c7c :arm
	stmfd   sp!, {r4-r10,lr}
	sub     sp, sp, #0x8
	mov     r5, r0
	mov     r4, r2
	mov     r10, r1
	ldr     r2, [r5]
	add     r3, sp, #0x4
	mov     r1, #0xc
	bl      Function_2226010
	mov     r8, r0
	cmp     r8, #0x0
	ble     branch_2226d7c
	mov     r6, #0x0
	add     r7, sp, #0x4
.arm
branch_2226cb4: @ 2226cb4 :arm
	ldr     r2, [r5]
	mov     r0, r5
	mov     r1, r8
	mov     r3, r7
	bl      Function_2226010
	ldr     r2, [sp, #0x4]
	mov     r9, r0
	cmp     r2, #0x0
	ble     branch_2226d70
	mov     r0, r5
	mov     r1, r8
	mov     r3, r10
	str     r6, [sp]
	bl      Function_2226150
	cmp     r0, #0x0
	bne     branch_2226d70
	ldr     r1, [sp, #0x4]
	ldr     r0, [r5]
	add     r1, r1, #0x1
	cmp     r1, r0
	bge     branch_2226d64
	ldr     r2, [r5]
	mov     r0, r5
	mov     r3, #0x0
	bl      Function_2226010
	cmp     r0, #0x0
	ldrle   r6, [r5]
	ble     branch_2226d38
	cmp     r0, #0x2
	addlt   sp, sp, #0x8
	mvnlt   r0, #0x0
	ldmltfd sp!, {r4-r10,pc}
	sub     r6, r0, #0x2
.arm
branch_2226d38: @ 2226d38 :arm
	ldr     r1, [sp, #0x4]
	mov     r0, r5
	mov     r2, r6
	add     r1, r1, #0x1
	bl      Function_22260e0
	cmp     r0, #0x0
	movlt   r0, r6
	str     r0, [r4]
	add     sp, sp, #0x8
	sub     r0, r6, r0
	ldmfd   sp!, {r4-r10,pc}
@ 0x2226d64

.arm
branch_2226d64: @ 2226d64 :arm
	add     sp, sp, #0x8
	mov     r0, #0x0
	ldmfd   sp!, {r4-r10,pc}
@ 0x2226d70

.arm
branch_2226d70: @ 2226d70 :arm
	mov     r8, r9
	cmp     r9, #0x0
	bgt     branch_2226cb4
.arm
branch_2226d7c: @ 2226d7c :arm
	mvn     r0, #0x0
	add     sp, sp, #0x8
	ldmfd   sp!, {r4-r10,pc}
@ 0x2226d88

.arm
Function_2226d88: @ 2226d88 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r7, r0
	ldr     r0, [r7, #0x8]
	mov     r6, r1
	cmp     r0, #0x0
	mov     r5, r2
	mvneq   r0, #0x0
	ldmeqfd sp!, {r3-r7,pc}
	ldr     r0, [r7, #0x14]
	cmp     r0, #0x0
	beq     branch_2226dc8
	ldr     r1, [pc, #0xc4] @ [0x2226e80] (=0x222a01c)
	ldr     r1, [r1]
	blx     r1
	mov     r0, #0x0
	str     r0, [r7, #0x14]
.arm
branch_2226dc8: @ 2226dc8 :arm
	add     r2, sp, #0x0
	mov     r0, r7
	mov     r1, r6
	bl      Function_2226c7c
	movs    r4, r0
	bmi     branch_2226e24
	ldr     r1, [pc, #0x9c] @ [0x2226e84] (=0x222a018)
	add     r0, r4, #0x1
	ldr     r2, [r1]
	mov     r1, #0x4
	blx     r2
	str     r0, [r7, #0x14]
	mov     r1, #0x0
	strb    r1, [r0, r4]
	ldr     r1, [r7, #0x14]
	ldr     r2, [sp]
	mov     r0, r7
	mov     r3, r4
	bl      Function_2226220
	ldr     r1, [r7, #0x14]
	mov     r0, r4
	str     r1, [r5]
	ldmfd   sp!, {r3-r7,pc}
@ 0x2226e24

.arm
branch_2226e24: @ 2226e24 :arm
	ldr     r0, [pc, #0x5c] @ [0x2226e88] (=0x2229ce4)
	mov     r1, r6
	bl      Function_22270d8
	cmp     r0, #0x0
	mvnne   r0, #0x0
	ldmnefd sp!, {r3-r7,pc}
	ldr     r1, [pc, #0x40] @ [0x2226e84] (=0x222a018)
	mov     r0, #0x4
	ldr     r2, [r1]
	mov     r1, r0
	blx     r2
	str     r0, [r7, #0x14]
	mov     r1, #0x0
	strb    r1, [r0, #0x3]
	ldr     r1, [r7, #0x14]
	mov     r0, r7
	mov     r2, #0x9
	mov     r3, #0x3
	bl      Function_2226220
	ldr     r1, [r7, #0x14]
	mov     r0, #0x3
	str     r1, [r5]
	ldmfd   sp!, {r3-r7,pc}
@ 0x2226e80

.word 0x222a01c @ 0x2226e80
.word 0x222a018 @ 0x2226e84
.word 0x2229ce4 @ 0x2226e88
.arm
Function_2226e8c: @ 2226e8c :arm
	ldr     r2, [r0, #0x8]
	cmp     r2, #0x0
	ldrne   r2, [r0, #0x4]
	cmpne   r2, #0x0
	mvneq   r0, #0x0
	ldrne   r2, [r0, #0x18]
	strne   r2, [r1]
	ldrne   r0, [r0, #0x4]
	bx      lr
@ 0x2226eb0

.arm
Function_2226eb0: @ 2226eb0 :arm
	tst     r0, #2, 18 @ #0x8000
	bicne   r0, r0, #2, 18 @ #0x8000
	bx      lr
@ 0x2226ebc


.arm
Function_2226ebc: @ 2226ebc :arm
	stmfd   sp!, {r3,lr}
	ldr     r0, [pc, #0x10] @ [0x2226ed8] (=0x222a9f0)
	bl      OS_GetLowEntropyData
	ldr     r0, [pc, #0x8] @ [0x2226ed8] (=0x222a9f0)
	mov     r1, #0x20
	bl      0x220fe28
	ldmfd   sp!, {r3,pc}
@ 0x2226ed8

.word 0x222a9f0 @ 0x2226ed8



.arm
Function_2226edc: @ 2226edc :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x2
	mov     r1, #0x1
	mov     r2, #0x0
	bl      0x2208324
	movs    r4, r0
	bmi     branch_2226f50
	ldr     r0, [r5, #0x8]
	cmp     r0, #0x0
	beq     branch_2226f50
	bl      Function_2226ebc
	ldr     r1, [r5, #0x1c]
	ldr     r0, [r5, #0x20]
	ldr     r2, [pc, #0x3c] @ [0x2226f58] (=0x2226eb0)
	str     r1, [r0, #0x814]
	ldr     r3, [r5, #0x18]
	ldr     r1, [r5, #0x20]
	mov     r0, r4
	str     r3, [r1, #0x818]
	ldr     r1, [r5, #0x20]
	str     r2, [r1, #0x810]
	ldr     r1, [r5, #0x20]
	bl      0x2208bcc
	cmp     r0, #0x0
	bge     branch_2226f50
	mov     r0, r4
	bl      0x2208540
	mvn     r4, #0x0
.arm
branch_2226f50: @ 2226f50 :arm
	mov     r0, r4
	ldmfd   sp!, {r3-r5,pc}
@ 0x2226f58

.word Function_2226eb0 @ =0x2226eb0, 0x2226f58
.arm
Function_2226f5c: @ 2226f5c :arm
	ldr     r12, [pc, #0x4] @ [0x2226f68] (=0x2208540)
	mov     r0, r1
	bx      r12
@ 0x2226f68

.word 0x2208540 @ 0x2226f68
.arm
Function_2226f6c: @ 2226f6c :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r1
	mov     r0, r6
	bl      0x2208540
	mvn     r4, #0x19
	cmp     r0, r4
	ldmnefd sp!, {r4-r6,pc}
	mov     r5, #125, 30 @ #0x1f4
.arm
branch_2226f8c: @ 2226f8c :arm
	mov     r0, r5
	bl      OS_Sleep
	mov     r0, r6
	bl      0x2208540
	cmp     r0, r4
	beq     branch_2226f8c
	ldmfd   sp!, {r4-r6,pc}
@ 0x2226fa8

.arm
Function_2226fa8: @ 2226fa8 :arm
	stmfd   sp!, {r3-r5,lr}
	sub     sp, sp, #0x8
	mov     r3, r3, lsl #16
	mov     r3, r3, lsr #16
	mov     r12, r3, asr #8
	mov     r4, r0
	mov     r5, #0x8
	mov     lr, #0x2
	mov     r3, r3, lsl #8
	mov     r0, r1
	and     r12, r12, #0xff
	and     r1, r3, #255, 24 @ #0xff00
	orr     r3, r12, r1
	add     r1, sp, #0x0
	strb    r5, [sp]
	strb    lr, [sp, #0x1]
	strh    r3, [sp, #0x2]
	str     r2, [sp, #0x4]
	bl      0x220837c
	cmp     r0, #0x0
	bge     branch_2227014
	ldr     r0, [r4, #0x4]
	add     sp, sp, #0x8
	cmp     r0, #0x0
	ldrne   r0, [pc, #0x10] @ [0x2227020] (=0xfffffc16)
	mvneq   r0, #250, 30 @ #0x3e8
	ldmfd   sp!, {r3-r5,pc}
@ 0x2227014

.arm
branch_2227014: @ 2227014 :arm
	mov     r0, #0x0
	add     sp, sp, #0x8
	ldmfd   sp!, {r3-r5,pc}
@ 0x2227020

.word 0xfffffc16 @ 0x2227020
.arm
Function_2227024: @ 2227024 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	mov     r0, r1
	mov     r1, r2
	mov     r2, r3
	ldr     r3, [sp, #0x8]
	bl      0x22083d8
	cmp     r0, #0x0
	ldmgefd sp!, {r4,pc}
	ldr     r1, [r4, #0x4]
	cmp     r1, #0x0
	ldrne   r0, [pc, #0x14] @ [0x222706c] (=0xfffffc16)
	ldmnefd sp!, {r4,pc}
	mvn     r1, #0x37
	cmp     r0, r1
	moveq   r0, #0x0
	mvnne   r0, #250, 30 @ #0x3e8
	ldmfd   sp!, {r4,pc}
@ 0x222706c

.word 0xfffffc16 @ 0x222706c
.arm
Function_2227070: @ 2227070 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	mov     r0, r1
	mov     r1, r2
	mov     r2, r3
	ldr     r3, [sp, #0x8]
	bl      0x220848c
	cmp     r0, #0x0
	ldmgefd sp!, {r4,pc}
	ldr     r1, [r4, #0x4]
	cmp     r1, #0x0
	ldrne   r0, [pc, #0x14] @ [0x22270b8] (=0xfffffc16)
	ldmnefd sp!, {r4,pc}
	mvn     r1, #0x37
	cmp     r0, r1
	moveq   r0, #0x0
	mvnne   r0, #250, 30 @ #0x3e8
	ldmfd   sp!, {r4,pc}
@ 0x22270b8

.word 0xfffffc16 @ 0x22270b8
.arm
Function_22270bc: @ 22270bc :arm
	stmfd   sp!, {r3,lr}
	cmp     r1, #0x0
	ldmltfd sp!, {r3,pc}
	mov     r0, r1
	mov     r1, #0x2
	bl      0x2208534
	ldmfd   sp!, {r3,pc}
@ 0x22270d8

.arm
Function_22270d8: @ 22270d8 :arm
	ldr     r12, [pc, #0x0] @ [0x22270e0] (=0x20d33dc)
	bx      r12
@ 0x22270e0

.word 0x20d33dc @ 0x22270e0
.arm
Function_22270e4: @ 22270e4 :arm
	cmp     r2, #0x0
	ble     branch_2227144
.arm
branch_22270ec: @ 22270ec :arm
	ldrsb   r12, [r0], #0x1
	ldrsb   r3, [r1], #0x1
	cmp     r12, #0x0
	cmpne   r3, #0x0
	bne     branch_2227110
	cmp     r12, #0x0
	cmpeq   r3, #0x0
	moveq   r2, #0x0
	b       branch_2227144
@ 0x2227110

.arm
branch_2227110: @ 2227110 :arm
	cmp     r3, #0x41
	blt     branch_2227120
	cmp     r3, #0x5a
	addle   r3, r3, #0x20
.arm
branch_2227120: @ 2227120 :arm
	cmp     r12, #0x41
	blt     branch_2227130
	cmp     r12, #0x5a
	addle   r12, r12, #0x20
.arm
branch_2227130: @ 2227130 :arm
	cmp     r12, r3
	bne     branch_2227144
	sub     r2, r2, #0x1
	cmp     r2, #0x0
	bgt     branch_22270ec
.arm
branch_2227144: @ 2227144 :arm
	mov     r0, r2
	bx      lr
@ 0x222714c

.arm
Function_222714c: @ 222714c :arm
	ldr     r12, [pc, #0x0] @ [0x2227154] (=0x20d33b4)
	bx      r12
@ 0x2227154

.word 0x20d33b4 @ 0x2227154
.arm
Function_2227158: @ 2227158 :arm
	ldr     r12, [pc, #0x8] @ [0x2227168] (=MI_CpuFill8)
	mov     r2, r1
	mov     r1, #0x0
	bx      r12
@ 0x2227168

.word MI_CpuFill8 @ 0x2227168
.arm
Function_222716c: @ 222716c :arm
	ldr     r12, [pc, #0xc] @ [0x2227180] (=MI_CpuCopy8)
	mov     r3, r0
	mov     r0, r1
	mov     r1, r3
	bx      r12
@ 0x2227180

.word MI_CpuCopy8 @ 0x2227180
.arm
Function_2227184: @ 2227184 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x0
	mov     r4, r1
	str     r0, [r5]
	str     r0, [r4]
	bl      Function_2225e38
	ldr     r1, [pc, #0x74] @ [0x222721c] (=0x222a020)
	ldr     r2, [r1]
	cmp     r2, #0x0
	beq     branch_22271fc
	ldr     r0, [r2, #0xc]
	ldr     r0, [r0, #0x14]
	cmp     r0, #0x0
	beq     branch_22271f4
	ldr     r2, [r2, #0xc]
	mvn     r0, #0x0
	ldr     r2, [r2, #0x30]
	ldr     r2, [r2, #0x4]
	str     r2, [r5]
	ldr     r2, [r1]
	ldr     r1, [r2, #0xc]
	ldr     r1, [r1, #0x14]
	cmp     r1, r0
	moveq   r0, #0x0
	ldrne   r0, [r2, #0xc]
	ldrne   r0, [r0, #0x14]
	str     r0, [r4]
.arm
branch_22271f4: @ 22271f4 :arm
	mov     r4, #0x1
	b       branch_2227210
@ 0x22271fc

.arm
branch_22271fc: @ 22271fc :arm
	ldr     r0, [pc, #0x1c] @ [0x2227220] (=0x222a030)
	ldr     r0, [r0]
	cmp     r0, #0x0
	movne   r4, #0x1
	moveq   r4, #0x0
.arm
branch_2227210: @ 2227210 :arm
	bl      Function_2225e4c
	mov     r0, r4
	ldmfd   sp!, {r3-r5,pc}
@ 0x222721c

.word 0x222a020 @ 0x222721c
.word 0x222a030 @ 0x2227220
.arm
Function_2227224: @ 2227224 :arm
	stmfd   sp!, {r3-r11,lr}
	ldr     r5, [sp, #0x28]
	mov     r10, r0
	mov     r9, r1
	mov     r8, r2
	mov     r7, r3
	cmp     r5, #0x0
	ble     branch_22272cc
	ldr     r4, [pc, #0x88] @ [0x22272d4] (=0x222aa58)
	mov     r11, #0x0
.arm
branch_222724c: @ 222724c :arm
	ldr     r0, [r10, #0x4]
	cmp     r0, #0x0
	mvnne   r0, #0x0
	ldmnefd sp!, {r3-r11,pc}
	ldr     r0, [r8]
	mov     r1, r7
	rsb     r6, r0, #1, 22 @ #0x400
	cmp     r5, r6
	movle   r6, r5
	mov     r2, r6
	add     r0, r4, r0
	bl      Function_222716c
	ldr     r0, [r8]
	add     r7, r7, r6
	add     r0, r0, r6
	str     r0, [r8]
	cmp     r0, #1, 22 @ #0x400
	sub     r5, r5, r6
	bne     branch_22272c4
	mov     r0, r10
	mov     r1, r9
	mov     r2, r4
	mov     r3, #1, 22 @ #0x400
	str     r11, [sp]
	bl      Function_2227070
	cmp     r0, #0x0
	ldmlefd sp!, {r3-r11,pc}
	ldr     r1, [r8]
	sub     r0, r1, r0
	str     r0, [r8]
.arm
branch_22272c4: @ 22272c4 :arm
	cmp     r5, #0x0
	bgt     branch_222724c
.arm
branch_22272cc: @ 22272cc :arm
	ldr     r0, [sp, #0x28]
	ldmfd   sp!, {r3-r11,pc}
@ 0x22272d4

.word 0x222aa58 @ 0x22272d4
.arm
Function_22272d8: @ 22272d8 :arm
	stmfd   sp!, {r4-r10,lr}
	sub     sp, sp, #0x8
	mov     r8, #0x0
	mov     r10, r0
	mov     r9, r1
	mov     r7, r8
	strb    r8, [sp, #0x4]
	strb    r8, [sp, #0x5]
	mov     r6, r8
	mov     r5, #0x1
	add     r4, sp, #0x4
	b       branch_2227334
@ 0x2227308

.arm
branch_2227308: @ 2227308 :arm
	mov     r0, r10
	mov     r1, r9
	mov     r3, r5
	add     r2, r4, r2
	str     r6, [sp]
	bl      Function_2227024
	cmp     r0, #0x0
	addle   sp, sp, #0x8
	ldmlefd sp!, {r4-r10,pc}
	add     r8, r8, r0
	add     r7, r7, #0x1
.arm
branch_2227334: @ 2227334 :arm
	and     r2, r7, #0x1
	ldrsb   r0, [r4, r2]
	cmp     r0, #0xd
	bne     branch_2227308
	sub     r0, r7, #0x1
	and     r0, r0, #0x1
	ldrsb   r0, [r4, r0]
	cmp     r0, #0xa
	bne     branch_2227308
	mov     r0, r8
	add     sp, sp, #0x8
	ldmfd   sp!, {r4-r10,pc}
@ 0x2227364

.arm
Function_2227364: @ 2227364 :arm
	stmfd   sp!, {r4,lr}
	movs    r4, r0
	ldmeqfd sp!, {r4,pc}
	ldr     r0, [r4, #0x800]
	cmp     r0, #0x0
	beq     branch_2227388
	ldr     r1, [pc, #0x18] @ [0x222739c] (=0x222a01c)
	ldr     r1, [r1]
	blx     r1
.arm
branch_2227388: @ 2227388 :arm
	ldr     r1, [pc, #0xc] @ [0x222739c] (=0x222a01c)
	mov     r0, r4
	ldr     r1, [r1]
	blx     r1
	ldmfd   sp!, {r4,pc}
@ 0x222739c

.word 0x222a01c @ 0x222739c
.arm
Function_22273a0: @ 22273a0 :arm
	stmfd   sp!, {r4-r6,lr}
	ldr     r2, [pc, #0x88] @ [0x2227434] (=0x222aa10)
	mov     r6, r0
	ldmia   r2, {r0,r2}
	add     r0, r0, #0x1
	and     r4, r0, #0x7
	mov     r5, r1
	cmp     r4, r2
	bne     branch_22273fc
	ldr     r1, [pc, #0x6c] @ [0x2227438] (=0x222aa18)
	mov     r0, #0x0
	ldr     r1, [r1, r2, lsl #0x3]
	bl      Function_2226f6c
	ldr     r0, [pc, #0x58] @ [0x2227434] (=0x222aa10)
	ldr     r1, [pc, #0x5c] @ [0x222743c] (=0x222aa1c)
	ldr     r0, [r0, #0x4]
	ldr     r0, [r1, r0, lsl #0x3]
	bl      Function_2227364
	ldr     r0, [pc, #0x44] @ [0x2227434] (=0x222aa10)
	ldr     r1, [r0, #0x4]
	add     r1, r1, #0x1
	and     r1, r1, #0x7
	str     r1, [r0, #0x4]
.arm
branch_22273fc: @ 22273fc :arm
	ldr     r0, [r5]
	cmp     r0, #0x0
	ldmeqfd sp!, {r4-r6,pc}
	ldr     r0, [pc, #0x24] @ [0x2227434] (=0x222aa10)
	ldr     r1, [pc, #0x24] @ [0x2227438] (=0x222aa18)
	ldr     r12, [r0]
	ldr     r2, [pc, #0x20] @ [0x222743c] (=0x222aa1c)
	str     r6, [r1, r12, lsl #0x3]
	ldr     r3, [r5]
	mov     r1, #0x0
	str     r3, [r2, r12, lsl #0x3]
	str     r1, [r5]
	str     r4, [r0]
	ldmfd   sp!, {r4-r6,pc}
@ 0x2227434

.word 0x222aa10 @ 0x2227434
.word 0x222aa18 @ 0x2227438
.word 0x222aa1c @ 0x222743c
.arm
Function_2227440: @ 2227440 :arm
	stmfd   sp!, {r4-r6,lr}
	ldr     r6, [pc, #0x4c] @ [0x2227498] (=0x222aa10)
	ldmia   r6, {r0,r1}
	cmp     r0, r1
	ldmeqfd sp!, {r4-r6,pc}
	ldr     r4, [pc, #0x40] @ [0x222749c] (=0x222aa18)
	mov     r5, #0x0
.arm
branch_222745c: @ 222745c :arm
	ldr     r1, [r4, r1, lsl #0x3]
	mov     r0, r5
	bl      Function_2226f6c
	ldr     r0, [r6, #0x4]
	add     r0, r4, r0, lsl #3
	ldr     r0, [r0, #0x4]
	bl      Function_2227364
	ldr     r0, [r6, #0x4]
	add     r0, r0, #0x1
	and     r1, r0, #0x7
	str     r1, [r6, #0x4]
	ldr     r0, [r6]
	cmp     r0, r1
	bne     branch_222745c
	ldmfd   sp!, {r4-r6,pc}
@ 0x2227498

.word 0x222aa10 @ 0x2227498
.word 0x222aa18 @ 0x222749c
.arm
Function_22274a0: @ 22274a0 :arm
	stmfd   sp!, {r4-r11,lr}
	sub     sp, sp, #0x4c
	ldr     r2, [pc, #0xf10] @ [0x22283c0] (=0x222aa10)
	mov     r0, #0x0
	str     r0, [sp, #0x3c]
	str     r0, [r2]
	ldr     r1, [pc, #0xf04] @ [0x22283c4] (=0x222a024)
	mvn     r6, #0x0
	str     r0, [r2, #0x4]
	ldr     r1, [r1]
	str     r0, [sp, #0x10]
	str     r6, [sp, #0x18]
	str     r6, [sp, #0x14]
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	cmp     r1, #0x0
	bne     branch_2228770
.arm
branch_22274e4: @ 22274e4 :arm
	bl      Function_2225e38
	bl      Function_2225e08
	cmp     r0, #0x0
	mvneq   r4, #0x0
	beq     branch_2227508
	ldr     r4, [r0, #0x8]
	ldr     r8, [r0, #0xc]
	ldr     r1, [pc, #0xec0] @ [0x22283c8] (=0x222a020)
	str     r0, [r1]
.arm
branch_2227508: @ 2227508 :arm
	bl      Function_2225e4c
	cmp     r4, #0x0
	bge     branch_222751c
	bl      Function_2225f00
	b       branch_2228760
@ 0x222751c

.arm
branch_222751c: @ 222751c :arm
	ldr     r0, [r8, #0x4]
	ldr     r9, [r8, #0x30]
	cmp     r0, #0x0
	bne     branch_2228690
	mov     r0, r8
	bl      Function_2226b6c
	str     r0, [sp, #0x1c]
	cmp     r0, #0x0
	moveq   r0, #0x4
	streq   r0, [sp, #0x4]
	beq     branch_2228690
	mov     r1, r0
	ldr     r0, [sp, #0x18]
	mov     r2, #0x0
	cmp     r1, r0
	ldreq   r1, [r8, #0x28]
	ldreq   r0, [sp, #0x14]
	add     r5, sp, #0x38
	cmpeq   r1, r0
	ldreq   r1, [r8, #0x8]
	ldreq   r0, [sp, #0xc]
	add     r4, sp, #0x40
	cmpeq   r1, r0
	ldr     r0, [r8, #0x28]
	moveq   r2, #0x1
	str     r0, [sp, #0x14]
	ldr     r0, [r8, #0x8]
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x1c]
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x8]
	and     r0, r0, r2
	str     r0, [sp, #0x8]
	mvn     r0, #0x0
	str     r0, [sp, #0x20]
.arm
branch_22275a8: @ 22275a8 :arm
	mov     r0, #0x0
	cmp     r6, #0x0
	str     r0, [sp, #0x4]
	blt     branch_22275f8
	mov     r0, #0x9
	strh    r0, [sp, #0x2c]
	ldr     r2, [pc, #0xe04] @ [0x22283cc] (=0xcc8d)
	add     r0, sp, #0x28
	mov     r1, #0x1
	mov     r3, #0x0
	str     r6, [sp, #0x28]
	bl      0x2208b18
	cmp     r0, #0x0
	movle   r0, #0x0
	strle   r0, [sp, #0x8]
	ble     branch_22275f8
	ldrsh   r0, [sp, #0x2e]
	tst     r0, #0xe0
	movne   r0, #0x0
	strne   r0, [sp, #0x8]
.arm
branch_22275f8: @ 22275f8 :arm
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x0
	bne     branch_22276c0
	cmp     r6, #0x0
	blt     branch_2227640
	mov     r0, r8
	mov     r1, r6
	bl      Function_2226f5c
	cmp     r0, #0x0
	movlt   r0, #0xa
	strlt   r0, [sp, #0x4]
	mov     r0, r6
	add     r1, sp, #0x3c
	bl      Function_22273a0
	ldr     r0, [sp, #0x4]
	ldr     r6, [sp, #0x20]
	cmp     r0, #0x0
	bne     branch_2228690
.arm
branch_2227640: @ 2227640 :arm
	mov     r0, r8
	bl      Function_2226edc
	movs    r6, r0
	movmi   r0, #0x3
	strmi   r0, [sp, #0x4]
	bmi     branch_2228690
	ldr     r0, [r8, #0x8]
	cmp     r0, #0x0
	beq     branch_2227674
	ldr     r0, [r8, #0x20]
	str     r0, [sp, #0x3c]
	mov     r0, #0x0
	str     r0, [r8, #0x20]
.arm
branch_2227674: @ 2227674 :arm
	bl      Function_2225e38
	ldr     r0, [pc, #0xd48] @ [0x22283c8] (=0x222a020)
	ldr     r0, [r0]
	str     r6, [r0, #0x10]
	bl      Function_2225e4c
	ldr     r0, [r8, #0x4]
	cmp     r0, #0x0
	bne     branch_2228690
	ldr     r2, [sp, #0x1c]
	ldr     r3, [r8, #0x28]
	mov     r0, r8
	mov     r1, r6
	bl      Function_2226fa8
	cmp     r0, #0x0
	movge   r0, #0x1
	strge   r0, [sp, #0x8]
	movlt   r0, #0x0
	strlt   r0, [sp, #0x8]
	b       branch_22276f4
@ 0x22276c0

.arm
branch_22276c0: @ 22276c0 :arm
	ldr     r0, [r8, #0x8]
	cmp     r0, #0x0
	beq     branch_22276dc
	ldr     r0, [r8, #0x20]
	bl      Function_2227364
	mov     r0, #0x0
	str     r0, [r8, #0x20]
.arm
branch_22276dc: @ 22276dc :arm
	bl      Function_2226ebc
	bl      Function_2225e38
	ldr     r0, [pc, #0xcdc] @ [0x22283c8] (=0x222a020)
	ldr     r0, [r0]
	str     r6, [r0, #0x10]
	bl      Function_2225e4c
.arm
branch_22276f4: @ 22276f4 :arm
	ldr     r0, [r8, #0x4]
	cmp     r0, #0x0
	bne     branch_2228690
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x0
	moveq   r0, #0x5
	streq   r0, [sp, #0x4]
	beq     branch_2228690
	mov     r0, #0x0
	str     r0, [sp, #0x38]
	str     r0, [sp, #0x8]
	ldr     r0, [r8, #0x24]
	bl      Function_222714c
	mov     r7, r0
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	ldr     r0, [r8, #0x40]
	cmp     r0, #0x0
	beq     branch_2227754
	cmp     r0, #0x1
	beq     branch_2227780
	cmp     r0, #0x2
	beq     branch_22277ac
	b       branch_22277d4
@ 0x2227754

.arm
branch_2227754: @ 2227754 :arm
	mov     r0, #0x4
	str     r0, [sp]
	ldr     r3, [pc, #0xc6c] @ [0x22283d0] (=0x2229cf4)
	mov     r0, r8
	mov     r1, r6
	mov     r2, r5
	bl      Function_2227224
	cmp     r0, #0x0
	blt     branch_2228690
	beq     branch_22275a8
	b       branch_22277d4
@ 0x2227780

.arm
branch_2227780: @ 2227780 :arm
	mov     r0, #0x5
	str     r0, [sp]
	ldr     r3, [pc, #0xc44] @ [0x22283d4] (=0x2229cfc)
	mov     r0, r8
	mov     r1, r6
	mov     r2, r5
	bl      Function_2227224
	cmp     r0, #0x0
	blt     branch_2228690
	beq     branch_22275a8
	b       branch_22277d4
@ 0x22277ac

.arm
branch_22277ac: @ 22277ac :arm
	mov     r0, #0x5
	str     r0, [sp]
	ldr     r3, [pc, #0xc1c] @ [0x22283d8] (=0x2229d04)
	mov     r0, r8
	mov     r1, r6
	mov     r2, r5
	bl      Function_2227224
	cmp     r0, #0x0
	blt     branch_2228690
	beq     branch_22275a8
.arm
branch_22277d4: @ 22277d4 :arm
	ldr     r10, [r8, #0x10]
	cmp     r7, r10
	ble     branch_2227814
	subs    r0, r7, r10
	beq     branch_222783c
	str     r0, [sp]
	mov     r0, r8
	mov     r1, r6
	mov     r2, r5
	ldr     r3, [r8, #0x24]
	add     r3, r3, r10
	bl      Function_2227224
	cmp     r0, #0x0
	blt     branch_2228690
	beq     branch_22275a8
	b       branch_222783c
@ 0x2227814

.arm
branch_2227814: @ 2227814 :arm
	mov     r0, #0x1
	str     r0, [sp]
	ldr     r3, [pc, #0xbb8] @ [0x22283dc] (=0x2229d0c)
	mov     r0, r8
	mov     r1, r6
	mov     r2, r5
	bl      Function_2227224
	cmp     r0, #0x0
	blt     branch_2228690
	beq     branch_22275a8
.arm
branch_222783c: @ 222783c :arm
	mov     r0, #0xb
	str     r0, [sp]
	ldr     r3, [pc, #0xb94] @ [0x22283e0] (=0x2229d10)
	mov     r0, r8
	mov     r1, r6
	mov     r2, r5
	bl      Function_2227224
	cmp     r0, #0x0
	blt     branch_2228690
	beq     branch_22275a8
	ldr     r0, [r8, #0x8]
	ldr     r3, [pc, #0xb74] @ [0x22283e4] (=0x2229d1c)
	cmp     r0, #0x0
	movne   r0, #0x8
	moveq   r0, #0x7
	str     r0, [sp, #0x34]
	mov     r0, #0x6
	str     r0, [sp]
	mov     r0, r8
	mov     r1, r6
	mov     r2, r5
	bl      Function_2227224
	cmp     r0, #0x0
	blt     branch_2228690
	beq     branch_22275a8
	ldr     r7, [sp, #0x34]
	ldr     r0, [r8, #0xc]
	subs    r0, r0, r7
	beq     branch_22278d8
	str     r0, [sp]
	mov     r0, r8
	mov     r1, r6
	mov     r2, r5
	ldr     r3, [r8, #0x24]
	add     r3, r3, r7
	bl      Function_2227224
	cmp     r0, #0x0
	blt     branch_2228690
	beq     branch_22275a8
.arm
branch_22278d8: @ 22278d8 :arm
	mov     r0, #0x2
	str     r0, [sp]
	ldr     r3, [pc, #0xb00] @ [0x22283e8] (=0x2229d24)
	mov     r0, r8
	mov     r1, r6
	mov     r2, r5
	bl      Function_2227224
	cmp     r0, #0x0
	blt     branch_2228690
	beq     branch_22275a8
	add     r0, r8, #0x34
	bl      Function_2225a60
	movs    r7, r0
	beq     branch_22279e8
.arm
branch_2227910: @ 2227910 :arm
	ldr     r0, [r7, #0x8]
	bl      Function_222714c
	cmp     r0, #0x0
	beq     branch_2227944
	str     r0, [sp]
	mov     r0, r8
	mov     r1, r6
	mov     r2, r5
	ldr     r3, [r7, #0x8]
	bl      Function_2227224
	cmp     r0, #0x0
	blt     branch_2228690
	beq     branch_22275a8
.arm
branch_2227944: @ 2227944 :arm
	mov     r0, #0x2
	str     r0, [sp]
	ldr     r3, [pc, #0xa98] @ [0x22283ec] (=0x2229d28)
	mov     r0, r8
	mov     r1, r6
	mov     r2, r5
	bl      Function_2227224
	cmp     r0, #0x0
	blt     branch_2228690
	beq     branch_22275a8
	ldr     r0, [r7, #0xc]
	bl      Function_222714c
	cmp     r0, #0x0
	beq     branch_22279a0
	str     r0, [sp]
	mov     r0, r8
	mov     r1, r6
	mov     r2, r5
	ldr     r3, [r7, #0xc]
	bl      Function_2227224
	cmp     r0, #0x0
	blt     branch_2228690
	beq     branch_22275a8
.arm
branch_22279a0: @ 22279a0 :arm
	mov     r0, #0x2
	str     r0, [sp]
	ldr     r3, [pc, #0xa38] @ [0x22283e8] (=0x2229d24)
	mov     r0, r8
	mov     r1, r6
	mov     r2, r5
	bl      Function_2227224
	cmp     r0, #0x0
	blt     branch_2228690
	beq     branch_22275a8
	ldr     r1, [pc, #0xa20] @ [0x22283f0] (=0x222a01c)
	mov     r0, r7
	ldr     r1, [r1]
	blx     r1
	add     r0, r8, #0x34
	bl      Function_2225a60
	movs    r7, r0
	bne     branch_2227910
.arm
branch_22279e8: @ 22279e8 :arm
	ldr     r0, [r8, #0x40]
	cmp     r0, #0x1
	bne     branch_2227c08
	ldr     r10, [r8, #0x38]
	mov     r7, #0x0
	mov     r0, r7
	str     r0, [sp, #0x10]
	cmp     r10, #0x0
	mov     r1, r10
	beq     branch_2227a38
.arm
branch_2227a10: @ 2227a10 :arm
	ldr     r0, [r1, #0x14]
	cmp     r0, #0x0
	movne   r0, #0x1
	strne   r0, [sp, #0x10]
	bne     branch_2227a38
	ldr     r0, [r10]
	cmp     r1, r0
	ldrne   r1, [r1, #0x4]
	cmpne   r1, #0x0
	bne     branch_2227a10
.arm
branch_2227a38: @ 2227a38 :arm
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x0
	beq     branch_2227b14
	cmp     r10, #0x0
	beq     branch_2227a94
.arm
branch_2227a4c: @ 2227a4c :arm
	ldr     r0, [r10, #0x8]
	add     r7, r7, #0x16
	bl      Function_222714c
	add     r0, r0, #0x29
	add     r7, r7, r0
	ldr     r0, [r10, #0x14]
	ldr     r1, [r10, #0x10]
	cmp     r0, #0x0
	ldr     r0, [r8, #0x38]
	addne   r7, r7, #0x4b
	ldr     r0, [r0]
	add     r2, r7, #0x2
	cmp     r10, r0
	ldrne   r10, [r10, #0x4]
	add     r1, r2, r1
	add     r7, r1, #0x2
	cmpne   r10, #0x0
	bne     branch_2227a4c
.arm
branch_2227a94: @ 2227a94 :arm
	mov     r0, #0x2c
	str     r0, [sp]
	ldr     r3, [pc, #0x950] @ [0x22283f4] (=0x2229d2c)
	mov     r0, r8
	mov     r1, r6
	mov     r2, r5
	add     r7, r7, #0x18
	bl      Function_2227224
	cmp     r0, #0x0
	blt     branch_2228690
	beq     branch_22275a8
	mov     r0, #0x12
	str     r0, [sp]
	mov     r0, r8
	mov     r1, r6
	mov     r2, r5
	add     r3, r8, #0x46
	bl      Function_2227224
	cmp     r0, #0x0
	blt     branch_2228690
	beq     branch_22275a8
	mov     r0, #0x2
	str     r0, [sp]
	ldr     r3, [pc, #0x8f0] @ [0x22283e8] (=0x2229d24)
	mov     r0, r8
	mov     r1, r6
	mov     r2, r5
	bl      Function_2227224
	cmp     r0, #0x0
	blt     branch_2228690
	beq     branch_22275a8
	b       branch_2227b7c
@ 0x2227b14

.arm
branch_2227b14: @ 2227b14 :arm
	cmp     r10, #0x0
	beq     branch_2227b54
.arm
branch_2227b1c: @ 2227b1c :arm
	ldr     r0, [r10, #0x8]
	bl      Function_22287a0
	add     r0, r7, r0
	add     r7, r0, #0x1
	ldr     r0, [r10, #0xc]
	bl      Function_22287a0
	add     r7, r7, r0
	ldr     r0, [r8, #0x38]
	ldr     r0, [r0]
	cmp     r10, r0
	ldrne   r10, [r10, #0x4]
	addne   r7, r7, #0x1
	cmpne   r10, #0x0
	bne     branch_2227b1c
.arm
branch_2227b54: @ 2227b54 :arm
	mov     r0, #0x31
	str     r0, [sp]
	ldr     r3, [pc, #0x894] @ [0x22283f8] (=0x2229d5c)
	mov     r0, r8
	mov     r1, r6
	mov     r2, r5
	bl      Function_2227224
	cmp     r0, #0x0
	blt     branch_2228690
	beq     branch_22275a8
.arm
branch_2227b7c: @ 2227b7c :arm
	mov     r0, #0x10
	str     r0, [sp]
	ldr     r3, [pc, #0x870] @ [0x22283fc] (=0x2229d90)
	mov     r0, r8
	mov     r1, r6
	mov     r2, r5
	bl      Function_2227224
	cmp     r0, #0x0
	blt     branch_2228690
	beq     branch_22275a8
	mov     r1, r7
	mov     r0, r4
	bl      Function_2228a18
	str     r0, [sp, #0x34]
	cmp     r0, #0x0
	beq     branch_2227be0
	str     r0, [sp]
	mov     r0, r8
	mov     r1, r6
	mov     r2, r5
	mov     r3, r4
	bl      Function_2227224
	cmp     r0, #0x0
	blt     branch_2228690
	beq     branch_22275a8
.arm
branch_2227be0: @ 2227be0 :arm
	mov     r0, #0x2
	str     r0, [sp]
	ldr     r3, [pc, #0x7f8] @ [0x22283e8] (=0x2229d24)
	mov     r0, r8
	mov     r1, r6
	mov     r2, r5
	bl      Function_2227224
	cmp     r0, #0x0
	blt     branch_2228690
	beq     branch_22275a8
.arm
branch_2227c08: @ 2227c08 :arm
	mov     r0, #0x2
	str     r0, [sp]
	ldr     r3, [pc, #0x7d0] @ [0x22283e8] (=0x2229d24)
	mov     r0, r8
	mov     r1, r6
	mov     r2, r5
	bl      Function_2227224
	cmp     r0, #0x0
	blt     branch_2228690
	beq     branch_22275a8
	ldr     r0, [r8, #0x40]
	cmp     r0, #0x1
	bne     branch_2227f88
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x0
	beq     branch_2227e48
	ldr     r7, [r8, #0x38]
	cmp     r7, #0x0
	beq     branch_2227df4
.arm
branch_2227c54: @ 2227c54 :arm
	mov     r0, #0x14
	str     r0, [sp]
	mov     r0, r8
	mov     r1, r6
	mov     r2, r5
	add     r3, r8, #0x44
	bl      Function_2227224
	cmp     r0, #0x0
	blt     branch_2228690
	beq     branch_22275a8
	mov     r0, #0x2
	str     r0, [sp]
	ldr     r3, [pc, #0x75c] @ [0x22283e8] (=0x2229d24)
	mov     r0, r8
	mov     r1, r6
	mov     r2, r5
	bl      Function_2227224
	cmp     r0, #0x0
	blt     branch_2228690
	beq     branch_22275a8
	mov     r0, #0x26
	str     r0, [sp]
	ldr     r3, [pc, #0x74c] @ [0x2228400] (=0x2228d8c)
	mov     r0, r8
	mov     r1, r6
	mov     r2, r5
	bl      Function_2227224
	cmp     r0, #0x0
	blt     branch_2228690
	beq     branch_22275a8
	ldr     r0, [r7, #0x8]
	bl      Function_222714c
	cmp     r0, #0x0
	beq     branch_2227d00
	str     r0, [sp]
	mov     r0, r8
	mov     r1, r6
	mov     r2, r5
	ldr     r3, [r7, #0x8]
	bl      Function_2227224
	cmp     r0, #0x0
	blt     branch_2228690
	beq     branch_22275a8
.arm
branch_2227d00: @ 2227d00 :arm
	mov     r0, #0x3
	str     r0, [sp]
	ldr     r3, [pc, #0x6f4] @ [0x2228404] (=0x2229da4)
	mov     r0, r8
	mov     r1, r6
	mov     r2, r5
	bl      Function_2227224
	cmp     r0, #0x0
	blt     branch_2228690
	beq     branch_22275a8
	ldr     r0, [r7, #0x14]
	cmp     r0, #0x0
	beq     branch_2227d5c
	mov     r0, #0x4b
	str     r0, [sp]
	ldr     r3, [pc, #0x6c4] @ [0x2228408] (=0x2228db4)
	mov     r0, r8
	mov     r1, r6
	mov     r2, r5
	bl      Function_2227224
	cmp     r0, #0x0
	blt     branch_2228690
	beq     branch_22275a8
.arm
branch_2227d5c: @ 2227d5c :arm
	mov     r0, #0x2
	str     r0, [sp]
	ldr     r3, [pc, #0x67c] @ [0x22283e8] (=0x2229d24)
	mov     r0, r8
	mov     r1, r6
	mov     r2, r5
	bl      Function_2227224
	cmp     r0, #0x0
	blt     branch_2228690
	beq     branch_22275a8
	ldr     r0, [r7, #0x10]
	cmp     r0, #0x0
	beq     branch_2227db4
	str     r0, [sp]
	mov     r0, r8
	mov     r1, r6
	mov     r2, r5
	ldr     r3, [r7, #0xc]
	bl      Function_2227224
	cmp     r0, #0x0
	blt     branch_2228690
	beq     branch_22275a8
.arm
branch_2227db4: @ 2227db4 :arm
	mov     r0, #0x2
	str     r0, [sp]
	ldr     r3, [pc, #0x624] @ [0x22283e8] (=0x2229d24)
	mov     r0, r8
	mov     r1, r6
	mov     r2, r5
	bl      Function_2227224
	cmp     r0, #0x0
	blt     branch_2228690
	beq     branch_22275a8
	ldr     r0, [r8, #0x38]
	ldr     r0, [r0]
	cmp     r7, r0
	ldrne   r7, [r7, #0x4]
	cmpne   r7, #0x0
	bne     branch_2227c54
.arm
branch_2227df4: @ 2227df4 :arm
	mov     r0, #0x14
	str     r0, [sp]
	mov     r0, r8
	mov     r1, r6
	mov     r2, r5
	add     r3, r8, #0x44
	bl      Function_2227224
	cmp     r0, #0x0
	blt     branch_2228690
	beq     branch_22275a8
	mov     r0, #0x4
	str     r0, [sp]
	ldr     r3, [pc, #0x5e0] @ [0x222840c] (=0x2229da8)
	mov     r0, r8
	mov     r1, r6
	mov     r2, r5
	bl      Function_2227224
	cmp     r0, #0x0
	blt     branch_2228690
	beq     branch_22275a8
	b       branch_2227f88
@ 0x2227e48

.arm
branch_2227e48: @ 2227e48 :arm
	ldr     r10, [r8, #0x38]
	cmp     r10, #0x0
	beq     branch_2227f88
.arm
branch_2227e54: @ 2227e54 :arm
	ldr     r1, [r10, #0x8]
	mov     r7, #0x0
	ldrsb   r0, [r1]
	cmp     r0, #0x0
	beq     branch_2227eb8
.arm
branch_2227e68: @ 2227e68 :arm
	ldrsb   r1, [r1, r7]
	mov     r0, r4
	bl      Function_2228808
	str     r0, [sp, #0x34]
	cmp     r0, #0x0
	beq     branch_2227ea4
	str     r0, [sp]
	mov     r0, r8
	mov     r1, r6
	mov     r2, r5
	mov     r3, r4
	bl      Function_2227224
	cmp     r0, #0x0
	blt     branch_2228690
	beq     branch_22275a8
.arm
branch_2227ea4: @ 2227ea4 :arm
	add     r7, r7, #0x1
	ldr     r1, [r10, #0x8]
	ldrsb   r0, [r1, r7]
	cmp     r0, #0x0
	bne     branch_2227e68
.arm
branch_2227eb8: @ 2227eb8 :arm
	mov     r0, #0x1
	str     r0, [sp]
	ldr     r3, [pc, #0x548] @ [0x2228410] (=0x2229db0)
	mov     r0, r8
	mov     r1, r6
	mov     r2, r5
	bl      Function_2227224
	cmp     r0, #0x0
	blt     branch_2228690
	beq     branch_22275a8
	ldr     r1, [r10, #0xc]
	mov     r7, #0x0
	ldrsb   r0, [r1]
	cmp     r0, #0x0
	beq     branch_2227f44
.arm
branch_2227ef4: @ 2227ef4 :arm
	ldrsb   r1, [r1, r7]
	mov     r0, r4
	bl      Function_2228808
	str     r0, [sp, #0x34]
	cmp     r0, #0x0
	beq     branch_2227f30
	str     r0, [sp]
	mov     r0, r8
	mov     r1, r6
	mov     r2, r5
	mov     r3, r4
	bl      Function_2227224
	cmp     r0, #0x0
	blt     branch_2228690
	beq     branch_22275a8
.arm
branch_2227f30: @ 2227f30 :arm
	add     r7, r7, #0x1
	ldr     r1, [r10, #0xc]
	ldrsb   r0, [r1, r7]
	cmp     r0, #0x0
	bne     branch_2227ef4
.arm
branch_2227f44: @ 2227f44 :arm
	ldr     r0, [r8, #0x38]
	ldr     r0, [r0]
	cmp     r10, r0
	beq     branch_2227f88
	mov     r0, #0x1
	str     r0, [sp]
	ldr     r3, [pc, #0x4b0] @ [0x2228414] (=0x2229db4)
	mov     r0, r8
	mov     r1, r6
	mov     r2, r5
	bl      Function_2227224
	cmp     r0, #0x0
	blt     branch_2228690
	beq     branch_22275a8
	ldr     r10, [r10, #0x4]
	cmp     r10, #0x0
	bne     branch_2227e54
.arm
branch_2227f88: @ 2227f88 :arm
	ldr     r3, [sp, #0x38]
	cmp     r3, #0x0
	ble     branch_2227fb8
	mov     r0, #0x0
	str     r0, [sp]
	ldr     r2, [pc, #0x474] @ [0x2228418] (=0x222aa58)
	mov     r0, r8
	mov     r1, r6
	bl      Function_2227070
	cmp     r0, #0x0
	blt     branch_2228690
	beq     branch_22275a8
.arm
branch_2227fb8: @ 2227fb8 :arm
	mov     r0, #0x0
	str     r0, [r9]
	strb    r0, [sp, #0x40]
	strb    r0, [sp, #0x41]
	mov     r1, #0x7
	strb    r0, [sp, #0x42]
	strb    r0, [sp, #0x43]
	ldr     r5, [r9, #0x1c]
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x38]
	add     r10, r9, #0x20
	add     r4, sp, #0x40
.arm
branch_2227fe8: @ 2227fe8 :arm
	ldr     r1, [r8, #0x4]
	cmp     r1, #0x0
	bne     branch_2228690
	cmp     r0, #1, 22 @ #0x400
	bge     branch_2228030
	add     r2, r10, r0
	mov     r0, #0x0
	str     r0, [sp]
	mov     r0, r8
	mov     r1, r6
	mov     r3, #0x1
	bl      Function_2227024
	ldr     r3, [sp, #0x38]
	add     r1, r9, r3
	ldrsb   r2, [r1, #0x20]
	and     r1, r3, #0x3
	strb    r2, [r4, r1]
	b       branch_22280c4
@ 0x2228030

.arm
branch_2228030: @ 2228030 :arm
	ldr     r1, [pc, #0x3e4] @ [0x222841c] (=0x1ff)
	ands    r7, r0, r1
	bne     branch_2228090
	cmp     r5, #0x0
	mov     r0, #129, 30 @ #0x204
	mov     r1, #0x4
	beq     branch_2228064
	ldr     r2, [pc, #0x3cc] @ [0x2228420] (=0x222a018)
	ldr     r2, [r2]
	blx     r2
	str     r0, [r5]
	mov     r5, r0
	b       branch_2228078
@ 0x2228064

.arm
branch_2228064: @ 2228064 :arm
	ldr     r2, [pc, #0x3b4] @ [0x2228420] (=0x222a018)
	ldr     r2, [r2]
	blx     r2
	mov     r5, r0
	str     r5, [r9, #0x1c]
.arm
branch_2228078: @ 2228078 :arm
	cmp     r5, #0x0
	moveq   r0, #0x1
	streq   r0, [sp, #0x4]
	beq     branch_2228690
	mov     r0, #0x0
	str     r0, [r5]
.arm
branch_2228090: @ 2228090 :arm
	mov     r0, #0x0
	add     r2, r5, #0x4
	str     r0, [sp]
	mov     r0, r8
	mov     r1, r6
	add     r2, r2, r7
	mov     r3, #0x1
	bl      Function_2227024
	add     r1, r5, r7
	ldrsb   r2, [r1, #0x4]
	ldr     r1, [sp, #0x38]
	and     r1, r1, #0x3
	strb    r2, [r4, r1]
.arm
branch_22280c4: @ 22280c4 :arm
	cmp     r0, #0x0
	movle   r0, #0xa
	strle   r0, [sp, #0x4]
	ble     branch_2228690
	ldr     r1, [sp, #0x38]
	add     r0, r1, r0
	str     r0, [sp, #0x38]
	sub     r1, r0, #0x4
	and     r1, r1, #0x3
	ldrsb   r1, [r4, r1]
	cmp     r1, #0xd
	bne     branch_2227fe8
	sub     r1, r0, #0x3
	and     r1, r1, #0x3
	ldrsb   r1, [r4, r1]
	cmp     r1, #0xa
	bne     branch_2227fe8
	sub     r1, r0, #0x2
	and     r1, r1, #0x3
	ldrsb   r1, [r4, r1]
	cmp     r1, #0xd
	bne     branch_2227fe8
	sub     r1, r0, #0x1
	and     r1, r1, #0x3
	ldrsb   r1, [r4, r1]
	cmp     r1, #0xa
	bne     branch_2227fe8
	str     r0, [r9]
	ldr     r0, [r9]
	cmp     r0, #0x0
	beq     branch_2228690
	ldr     r1, [pc, #0x2d0] @ [0x2228418] (=0x222aa58)
	mov     r0, r9
	mov     r2, #0x0
	mov     r3, #0xe
	bl      Function_2226220
	cmp     r0, #0x0
	beq     branch_2228690
	ldr     r0, [pc, #0x2b4] @ [0x2228418] (=0x222aa58)
	ldr     r1, [pc, #0x2bc] @ [0x2228424] (=0x2229db8)
	mov     r2, #0x5
	bl      Function_22270e4
	cmp     r0, #0x0
	ldreq   r0, [pc, #0x2a0] @ [0x2228418] (=0x222aa58)
	ldreqsb r0, [r0, #0x8]
	cmpeq   r0, #0x20
	bne     branch_2228690
	ldr     r0, [pc, #0x2a0] @ [0x2228428] (=0x222aa61)
	mov     r1, #0x3
	bl      Function_2228980
	cmp     r0, #0x0
	blt     branch_2228690
	ldr     r2, [r9]
	add     r3, sp, #0x30
	mov     r0, r9
	mov     r1, #0xc
	bl      Function_2226010
	cmp     r0, #0x0
	blt     branch_2228690
	ldr     r1, [pc, #0x274] @ [0x222842c] (=0x2229dc0)
	add     r2, sp, #0x34
	mov     r0, r9
	bl      Function_2226c7c
	movs    r5, r0
	moveq   r0, #0x0
	streq   r0, [sp, #0x4]
	beq     branch_2228690
	cmp     r5, #1, 22 @ #0x400
	bgt     branch_2228690
	cmp     r5, #0x0
	ble     branch_2228218
	ldr     r2, [sp, #0x34]
	ldr     r1, [pc, #0x22c] @ [0x2228418] (=0x222aa58)
	mov     r0, r9
	mov     r3, r5
	bl      Function_2226220
	cmp     r0, #0x0
	beq     branch_2228690
	ldr     r0, [pc, #0x214] @ [0x2228418] (=0x222aa58)
	mov     r1, r5
	bl      Function_2228980
	movs    r5, r0
	bmi     branch_2228690
	str     r5, [r8, #0x14]
	b       branch_2228220
@ 0x2228218

.arm
branch_2228218: @ 2228218 :arm
	mvn     r0, #0x0
	str     r0, [r8, #0x14]
.arm
branch_2228220: @ 2228220 :arm
	ldr     r1, [pc, #0x208] @ [0x2228430] (=0x2229dd0)
	add     r2, sp, #0x34
	mov     r0, r9
	bl      Function_2226c7c
	str     r0, [sp, #0x8]
	cmp     r0, #0x0
	beq     branch_2228690
	bge     branch_2228280
	ldr     r0, [pc, #0x1d0] @ [0x2228418] (=0x222aa58)
	mov     r2, #0x0
	ldrsb   r1, [r0, #0x5]
	ldrsb   r3, [r0, #0x7]
	add     r0, sp, #0x24
	strb    r1, [sp, #0x24]
	mov     r1, #0x2
	strb    r3, [sp, #0x25]
	strb    r2, [sp, #0x26]
	bl      Function_2228980
	cmp     r0, #0xb
	movge   r0, #0x1
	strge   r0, [sp, #0x8]
	movlt   r0, #0x0
	strlt   r0, [sp, #0x8]
	b       branch_22282c0
@ 0x2228280

.arm
branch_2228280: @ 2228280 :arm
	cmp     r0, #1, 22 @ #0x400
	mov     r0, #0x0
	strgt   r0, [sp, #0x8]
	bgt     branch_22282c0
	ldr     r1, [sp, #0x34]
	ldr     r2, [sp, #0x8]
	str     r0, [sp]
	ldr     r3, [pc, #0x190] @ [0x2228434] (=0x2229ddc)
	mov     r0, r9
	add     r2, r1, r2
	bl      Function_2226150
	cmp     r0, #0x0
	moveq   r0, #0x1
	streq   r0, [sp, #0x8]
	movne   r0, #0x0
	strne   r0, [sp, #0x8]
.arm
branch_22282c0: @ 22282c0 :arm
	ldr     r1, [pc, #0x170] @ [0x2228438] (=0x2229de8)
	add     r2, sp, #0x34
	mov     r0, r9
	bl      Function_2226c7c
	cmp     r0, #0x0
	beq     branch_2228690
	cmp     r0, #1, 22 @ #0x400
	movgt   r1, #0x0
	bgt     branch_222831c
	cmp     r0, #0x0
	ble     branch_2228318
	ldr     r1, [sp, #0x34]
	ldr     r3, [pc, #0x144] @ [0x222843c] (=0x2229dfc)
	add     r2, r1, r0
	mov     r0, #0x3b
	str     r0, [sp]
	mov     r0, r9
	bl      Function_2226150
	cmp     r0, #0x0
	moveq   r1, #0x1
	movne   r1, #0x0
	b       branch_222831c
@ 0x2228318

.arm
branch_2228318: @ 2228318 :arm
	mov     r1, #0x0
.arm
branch_222831c: @ 222831c :arm
	ldr     r0, [r8, #0x40]
	cmp     r0, #0x2
	beq     branch_2228690
	cmp     r5, #0x0
	blt     branch_2228440
	mov     r4, #0x0
	b       branch_222836c
@ 0x2228338

.arm
branch_2228338: @ 2228338 :arm
	str     r4, [sp]
	ldr     r2, [r9, #0x4]
	mov     r0, r8
	mov     r1, r6
	mov     r3, r5
	bl      Function_2226348
	cmp     r0, #0x0
	blt     branch_2228690
	beq     branch_2228388
	ldr     r1, [r9, #0x4]
	sub     r5, r5, r0
	add     r0, r1, r0
	str     r0, [r9, #0x4]
.arm
branch_222836c: @ 222836c :arm
	cmp     r5, #0x0
	ble     branch_2228388
	ldr     r1, [r9, #0x4]
	mov     r0, r9
	bl      Function_222630c
	cmp     r0, #0x0
	beq     branch_2228338
.arm
branch_2228388: @ 2228388 :arm
	cmp     r5, #0x0
	beq     branch_22283b4
	ldr     r1, [r9, #0x4]
	mov     r0, r9
	bl      Function_222630c
	cmp     r0, #0x0
	movne   r0, #0x6
	strne   r0, [sp, #0x4]
	moveq   r0, #0xa
	streq   r0, [sp, #0x4]
	b       branch_2228690
@ 0x22283b4

.arm
branch_22283b4: @ 22283b4 :arm
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	b       branch_2228690
@ 0x22283c0

.word 0x222aa10 @ 0x22283c0
.word 0x222a024 @ 0x22283c4
.word 0x222a020 @ 0x22283c8
.word 0xcc8d @ 0x22283cc
.word 0x2229cf4 @ 0x22283d0
.word 0x2229cfc @ 0x22283d4
.word 0x2229d04 @ 0x22283d8
.word 0x2229d0c @ 0x22283dc
.word 0x2229d10 @ 0x22283e0
.word 0x2229d1c @ 0x22283e4
.word 0x2229d24 @ 0x22283e8
.word 0x2229d28 @ 0x22283ec
.word 0x222a01c @ 0x22283f0
.word 0x2229d2c @ 0x22283f4
.word 0x2229d5c @ 0x22283f8
.word 0x2229d90 @ 0x22283fc
.word 0x2228d8c @ 0x2228400
.word 0x2229da4 @ 0x2228404
.word 0x2228db4 @ 0x2228408
.word 0x2229da8 @ 0x222840c
.word 0x2229db0 @ 0x2228410
.word 0x2229db4 @ 0x2228414
.word 0x222aa58 @ 0x2228418
.word 0x1ff @ 0x222841c
.word 0x222a018 @ 0x2228420
.word 0x2229db8 @ 0x2228424
.word 0x222aa61 @ 0x2228428
.word 0x2229dc0 @ 0x222842c
.word 0x2229dd0 @ 0x2228430
.word 0x2229ddc @ 0x2228434
.word 0x2229de8 @ 0x2228438
.word 0x2229dfc @ 0x222843c
.arm
branch_2228440: @ 2228440 :arm
	mov     r0, #0xa
	cmp     r1, #0x0
	str     r0, [sp, #0x4]
	beq     branch_22285e4
	mov     r7, #0x0
	ldr     r5, [pc, #-0x44] @ [0x2228418] (=0x222aa58)
	add     r4, sp, #0x40
	mov     r10, r7
.arm
branch_2228460: @ 2228460 :arm
	mov     r0, #0x0
	strb    r0, [sp, #0x40]
	strb    r0, [sp, #0x41]
	str     r0, [sp, #0x38]
.arm
branch_2228470: @ 2228470 :arm
	str     r7, [sp]
	ldr     r2, [sp, #0x38]
	mov     r0, r8
	mov     r1, r6
	mov     r3, #0x1
	add     r2, r5, r2
	bl      Function_2227024
	cmp     r0, #0x0
	blt     branch_2228690
	ldr     r1, [sp, #0x38]
	ldrsb   r0, [r5, r1]
	and     r2, r1, #0x1
	strb    r0, [r4, r2]
	cmp     r0, #0x3b
	beq     branch_22284c8
	cmp     r0, #0xa
	bne     branch_2228510
	sub     r2, r1, #0x1
	and     r2, r2, #0x1
	ldrsb   r2, [r4, r2]
	cmp     r2, #0xd
	bne     branch_2228510
.arm
branch_22284c8: @ 22284c8 :arm
	cmp     r0, #0xa
	subeq   r0, r1, #0x1
	streq   r0, [sp, #0x34]
	beq     branch_22284f0
	str     r1, [sp, #0x34]
	mov     r0, r8
	mov     r1, r6
	bl      Function_22272d8
	cmp     r0, #0x0
	ble     branch_2228690
.arm
branch_22284f0: @ 22284f0 :arm
	ldr     r1, [sp, #0x34]
	cmp     r1, #0x0
	beq     branch_2228690
	mov     r0, r5
	bl      Function_2228898
	movs    r11, r0
	bmi     branch_2228690
	b       branch_2228524
@ 0x2228510

.arm
branch_2228510: @ 2228510 :arm
	ldr     r0, [sp, #0x38]
	add     r0, r0, #0x1
	str     r0, [sp, #0x38]
	cmp     r0, #1, 22 @ #0x400
	blt     branch_2228470
.arm
branch_2228524: @ 2228524 :arm
	ldr     r0, [sp, #0x38]
	cmp     r0, #1, 22 @ #0x400
	moveq   r0, #0x7
	streq   r0, [sp, #0x4]
	beq     branch_2228690
	cmp     r11, #0x0
	ble     branch_22285cc
	ble     branch_2228460
.arm
branch_2228544: @ 2228544 :arm
	str     r10, [sp]
	mov     r0, r8
	mov     r1, r6
	ldr     r2, [r9, #0x4]
	mov     r3, r11
	bl      Function_2226348
	cmp     r0, #0x0
	ble     branch_2228690
	ldr     r1, [r9, #0x4]
	subs    r11, r11, r0
	add     r0, r1, r0
	str     r0, [r9, #0x4]
	bne     branch_22285c0
	mov     r0, #0x0
	str     r0, [sp]
	mov     r0, r8
	mov     r1, r6
	mov     r2, r5
	mov     r3, #0x1
	bl      Function_2227024
	cmp     r0, #0x0
	ble     branch_2228690
	mov     r0, #0x0
	str     r0, [sp]
	mov     r0, r8
	mov     r1, r6
	mov     r2, r5
	mov     r3, #0x1
	bl      Function_2227024
	cmp     r0, #0x0
	ble     branch_2228690
.arm
branch_22285c0: @ 22285c0 :arm
	cmp     r11, #0x0
	bgt     branch_2228544
	b       branch_2228460
@ 0x22285cc

.arm
branch_22285cc: @ 22285cc :arm
	mov     r0, r8
	mov     r1, r6
	bl      Function_22272d8
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	b       branch_2228690
@ 0x22285e4

.arm
branch_22285e4: @ 22285e4 :arm
	ldr     r1, [r9, #0x4]
	mov     r0, r9
	bl      Function_222630c
	cmp     r0, #0x0
	bne     branch_2228690
	mov     r5, #0x0
	ldr     r4, [pc, #-0x1ec] @ [0x2228418] (=0x222aa58)
	mov     r10, #0x1
	mov     r7, r5
.arm
branch_2228608: @ 2228608 :arm
	mov     r0, r8
	mov     r1, r6
	ldr     r2, [r9, #0x4]
	mov     r3, r7
	bl      Function_2226320
	cmp     r0, #0x0
	blt     branch_2228690
	moveq   r0, #0x0
	streq   r0, [sp, #0x4]
	beq     branch_2228690
	ldr     r1, [r9, #0x4]
	add     r0, r1, r0
	str     r0, [r9, #0x4]
	mov     r0, r9
	ldr     r1, [r9, #0x4]
	bl      Function_222630c
	cmp     r0, #0x0
	beq     branch_222867c
	str     r5, [sp]
	mov     r0, r8
	mov     r1, r6
	mov     r2, r4
	mov     r3, r10
	bl      Function_2227024
	cmp     r0, #0x0
	blt     branch_2228690
	movne   r0, #0x6
	strne   r0, [sp, #0x4]
	bne     branch_2228690
.arm
branch_222867c: @ 222867c :arm
	mov     r0, r9
	ldr     r1, [r9, #0x4]
	bl      Function_222630c
	cmp     r0, #0x0
	beq     branch_2228608
.arm
branch_2228690: @ 2228690 :arm
	bl      Function_2225e38
	ldr     r0, [pc, #-0x2d4] @ [0x22283c8] (=0x222a020)
	ldr     r1, [pc, #-0x2b0] @ [0x22283f0] (=0x222a01c)
	ldr     r0, [r0]
	ldr     r1, [r1]
	blx     r1
	ldr     r0, [pc, #-0x2e8] @ [0x22283c8] (=0x222a020)
	mov     r1, #0x0
	str     r1, [r0]
	bl      Function_2225e4c
	ldr     r0, [r8, #0x4]
	cmp     r0, #0x0
	movne   r0, #0x8
	strne   r0, [sp, #0x4]
	cmp     r6, #0x0
	blt     branch_2228718
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x0
	beq     branch_22286e8
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	beq     branch_2228718
.arm
branch_22286e8: @ 22286e8 :arm
	mov     r0, r8
	mov     r1, r6
	bl      Function_2226f5c
	cmp     r0, #0x0
	movlt   r0, #0xa
	strlt   r0, [sp, #0x4]
	add     r1, sp, #0x3c
	mov     r0, r6
	bl      Function_22273a0
	mov     r0, #0x0
	mvn     r6, #0x0
	str     r0, [sp, #0x8]
.arm
branch_2228718: @ 2228718 :arm
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	moveq   r0, #0x1
	streq   r0, [r9, #0x8]
	beq     branch_2228740
	mov     r0, #0x0
	str     r0, [r9, #0x8]
	ldr     r1, [pc, #0x60] @ [0x222879c] (=0x222a014)
	ldr     r0, [sp, #0x4]
	str     r0, [r1]
.arm
branch_2228740: @ 2228740 :arm
	ldr     r4, [r8, #0x2c]
	mov     r0, r8
	ldr     r5, [r8, #0x3c]
	bl      Function_2226998
	ldr     r0, [sp, #0x4]
	mov     r1, r9
	mov     r2, r4
	blx     r5
.arm
branch_2228760: @ 2228760 :arm
	ldr     r0, [pc, #-0x3a4] @ [0x22283c4] (=0x222a024)
	ldr     r0, [r0]
	cmp     r0, #0x0
	beq     branch_22274e4
.arm
branch_2228770: @ 2228770 :arm
	cmp     r6, #0x0
	blt     branch_2228790
	mov     r0, r8
	mov     r1, r6
	bl      Function_2226f5c
	add     r1, sp, #0x3c
	mov     r0, r6
	bl      Function_22273a0
.arm
branch_2228790: @ 2228790 :arm
	bl      Function_2227440
	add     sp, sp, #0x4c
	ldmfd   sp!, {r4-r11,pc}
@ 0x222879c

.word 0x222a014 @ 0x222879c
.arm
Function_22287a0: @ 22287a0 :arm
	ldrsb   r2, [r0], #0x1
	mov     r1, #0x0
	cmp     r2, #0x0
	beq     branch_2228800
.arm
branch_22287b0: @ 22287b0 :arm
	cmp     r2, #0x30
	blt     branch_22287c0
	cmp     r2, #0x39
	ble     branch_22287e8
.arm
branch_22287c0: @ 22287c0 :arm
	cmp     r2, #0x41
	blt     branch_22287d0
	cmp     r2, #0x5a
	ble     branch_22287e8
.arm
branch_22287d0: @ 22287d0 :arm
	cmp     r2, #0x61
	blt     branch_22287e0
	cmp     r2, #0x7a
	ble     branch_22287e8
.arm
branch_22287e0: @ 22287e0 :arm
	cmp     r2, #0x20
	bne     branch_22287f0
.arm
branch_22287e8: @ 22287e8 :arm
	add     r1, r1, #0x1
	b       branch_22287f4
@ 0x22287f0

.arm
branch_22287f0: @ 22287f0 :arm
	add     r1, r1, #0x3
.arm
branch_22287f4: @ 22287f4 :arm
	ldrsb   r2, [r0], #0x1
	cmp     r2, #0x0
	bne     branch_22287b0
.arm
branch_2228800: @ 2228800 :arm
	mov     r0, r1
	bx      lr
@ 0x2228808

.arm
Function_2228808: @ 2228808 :arm
	cmp     r1, #0x20
	bne     branch_2228820
	mov     r1, #0x2b
	strb    r1, [r0]
	mov     r0, #0x1
	bx      lr
@ 0x2228820

.arm
branch_2228820: @ 2228820 :arm
	cmp     r1, #0x30
	blt     branch_2228830
	cmp     r1, #0x39
	ble     branch_2228850
.arm
branch_2228830: @ 2228830 :arm
	cmp     r1, #0x41
	blt     branch_2228840
	cmp     r1, #0x5a
	ble     branch_2228850
.arm
branch_2228840: @ 2228840 :arm
	cmp     r1, #0x61
	blt     branch_222885c
	cmp     r1, #0x7a
	bgt     branch_222885c
.arm
branch_2228850: @ 2228850 :arm
	strb    r1, [r0]
	mov     r0, #0x1
	bx      lr
@ 0x222885c

.arm
branch_222885c: @ 222885c :arm
	mov     r2, r1, asr #4
	and     r3, r2, #0xf
	mov     r2, #0x25
	strb    r2, [r0]
	cmp     r3, #0xa
	addlt   r2, r3, #0x30
	addge   r2, r3, #0x37
	and     r1, r1, #0xf
	cmp     r1, #0xa
	addlt   r1, r1, #0x30
	strb    r2, [r0, #0x1]
	addge   r1, r1, #0x37
	strb    r1, [r0, #0x2]
	mov     r0, #0x3
	bx      lr
@ 0x2228898

.arm
Function_2228898: @ 2228898 :arm
	stmfd   sp!, {r4-r8,lr}
	cmp     r1, #0x8
	mvngt   r0, #0x0
	ldmgtfd sp!, {r4-r8,pc}
	bne     branch_22288bc
	ldrsb   r2, [r0]
	cmp     r2, #0x37
	mvngt   r0, #0x0
	ldmgtfd sp!, {r4-r8,pc}
.arm
branch_22288bc: @ 22288bc :arm
	mov     r5, #0x0
	mov     r6, r5
	mov     r7, r5
	cmp     r1, #0x0
	ble     branch_2228978
	mov     lr, #0x1
	mov     r3, lr
	mov     r12, lr
	mov     r4, r5
.arm
branch_22288e0: @ 22288e0 :arm
	ldrsb   r8, [r0, r5]
	mov     r2, r4
	cmp     r8, #0x41
	blt     branch_22288f8
	cmp     r8, #0x5a
	movle   r2, lr
.arm
branch_22288f8: @ 22288f8 :arm
	cmp     r2, #0x0
	addne   r8, r8, #0x20
	mov     r2, r8, lsl #24
	mov     r2, r2, asr #24
	cmp     r2, #0x30
	blt     branch_2228928
	cmp     r2, #0x39
	bgt     branch_2228928
	add     r2, r2, r6, lsl #4
	mov     r7, r12
	sub     r6, r2, #0x30
	b       branch_222896c
@ 0x2228928

.arm
branch_2228928: @ 2228928 :arm
	cmp     r2, #0x61
	blt     branch_2228948
	cmp     r2, #0x66
	bgt     branch_2228948
	add     r2, r2, r6, lsl #4
	mov     r7, r3
	sub     r6, r2, #0x57
	b       branch_222896c
@ 0x2228948

.arm
branch_2228948: @ 2228948 :arm
	cmp     r7, #0x0
	beq     branch_222895c
	cmp     r2, #0x20
	cmpne   r2, #0x0
	beq     branch_2228978
.arm
branch_222895c: @ 222895c :arm
	cmp     r7, #0x0
	cmpeq   r2, #0x20
	mvnne   r0, #0x0
	ldmnefd sp!, {r4-r8,pc}
.arm
branch_222896c: @ 222896c :arm
	add     r5, r5, #0x1
	cmp     r5, r1
	blt     branch_22288e0
.arm
branch_2228978: @ 2228978 :arm
	mov     r0, r6
	ldmfd   sp!, {r4-r8,pc}
@ 0x2228980

.arm
Function_2228980: @ 2228980 :arm
	stmfd   sp!, {r3-r5,lr}
	cmp     r1, #0xa
	mvngt   r0, #0x0
	ldmgtfd sp!, {r3-r5,pc}
	mov     lr, #0x0
	mov     r4, lr
	mov     r3, lr
	cmp     r1, #0x0
	ble     branch_2228a10
	mov     r12, #0x1
	mov     r2, #0xa
.arm
branch_22289ac: @ 22289ac :arm
	cmp     r3, #0x0
	ldrsb   r5, [r0, lr]
	beq     branch_22289c4
	cmp     r5, #0x20
	cmpne   r5, #0x0
	beq     branch_2228a10
.arm
branch_22289c4: @ 22289c4 :arm
	cmp     r3, #0x0
	cmpeq   r5, #0x20
	beq     branch_2228a04
	cmp     r5, #0x30
	blt     branch_22289e0
	cmp     r5, #0x39
	ble     branch_22289e8
.arm
branch_22289e0: @ 22289e0 :arm
	mvn     r0, #0x0
	ldmfd   sp!, {r3-r5,pc}
@ 0x22289e8

.arm
branch_22289e8: @ 22289e8 :arm
	mla     r3, r4, r2, r5
	mov     r5, r4
	sub     r4, r3, #0x30
	cmp     r5, r4
	mov     r3, r12
	mvngt   r0, #0x0
	ldmgtfd sp!, {r3-r5,pc}
.arm
branch_2228a04: @ 2228a04 :arm
	add     lr, lr, #0x1
	cmp     lr, r1
	blt     branch_22289ac
.arm
branch_2228a10: @ 2228a10 :arm
	mov     r0, r4
	ldmfd   sp!, {r3-r5,pc}
@ 0x2228a18

.arm
Function_2228a18: @ 2228a18 :arm
	stmfd   sp!, {r4-r11,lr}
	sub     sp, sp, #0x24
	ldr     r6, [pc, #0xa8] @ [0x2228ad0] (=0x2228e00)
	add     r4, sp, #0x0
	mov     r10, r0
	mov     r9, r1
	ldmia   r6!, {r0-r3}
	mov     r5, r4
	stmia   r4!, {r0-r3}
	ldmia   r6!, {r0-r3}
	stmia   r4!, {r0-r3}
	ldr     r0, [r6]
	mov     r7, #0x0
	str     r0, [r4]
	mov     r6, r7
	mov     r1, r7
	mov     r11, #0x1
	mov     r4, #0x30
.arm
branch_2228a60: @ 2228a60 :arm
	ldr     r8, [r5, r6, lsl #0x2]
	cmp     r9, r8
	bcc     branch_2228a98
	mov     r0, r9
	mov     r1, r8
	bl      _u32_div_f
	mul     r2, r0, r8
	cmp     r10, #0x0
	addne   r0, r0, #0x30
	strneb  r0, [r10, r7]
	mov     r1, r11
	sub     r9, r9, r2
	add     r7, r7, #0x1
	b       branch_2228aac
@ 0x2228a98

.arm
branch_2228a98: @ 2228a98 :arm
	cmp     r1, #0x0
	beq     branch_2228aac
	cmp     r10, #0x0
	strneb  r4, [r10, r7]
	add     r7, r7, #0x1
.arm
branch_2228aac: @ 2228aac :arm
	add     r6, r6, #0x1
	cmp     r6, #0x9
	blt     branch_2228a60
	cmp     r10, #0x0
	addne   r0, r9, #0x30
	strneb  r0, [r10, r7]
	add     r0, r7, #0x1
	add     sp, sp, #0x24
	ldmfd   sp!, {r4-r11,pc}
@ 0x2228ad0

.word 0x2228e00 @ 0x2228ad0
.arm
Function_2228ad4: @ 2228ad4 :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r12, #0x1
	mov     r3, #0x0
	mov     r2, r12
	mov     lr, r3
	b       branch_2228b04
@ 0x2228aec

.arm
branch_2228aec: @ 2228aec :arm
	cmp     r5, #0x0
	cmpne   r5, #0x20
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r6,pc}
	add     r0, r0, #0x1
	add     r1, r1, #0x1
.arm
branch_2228b04: @ 2228b04 :arm
	ldrsb   r6, [r1]
	mov     r4, lr
	cmp     r6, #0x41
	blt     branch_2228b1c
	cmp     r6, #0x5a
	movle   r4, r12
.arm
branch_2228b1c: @ 2228b1c :arm
	ldrsb   r5, [r0]
	cmp     r4, #0x0
	addne   r6, r6, #0x20
	mov     r4, r3
	cmp     r5, #0x41
	blt     branch_2228b3c
	cmp     r5, #0x5a
	movle   r4, r2
.arm
branch_2228b3c: @ 2228b3c :arm
	cmp     r4, #0x0
	addne   r4, r5, #0x20
	moveq   r4, r5
	cmp     r4, r6
	beq     branch_2228aec
	mvn     r0, #0x0
	ldmfd   sp!, {r4-r6,pc}
@ 0x2228b58

.arm
Function_2228b58: @ 2228b58 :arm
	stmfd   sp!, {r3,lr}
	mov     r12, #0x0
	cmp     r1, #0x0
	mov     lr, r12
	sub     r1, r1, #0x1
	beq     branch_2228bb8
	mov     r2, #0xa
.arm
branch_2228b74: @ 2228b74 :arm
	ldrsb   r3, [r0]
	cmp     r3, #0x20
	beq     branch_2228ba8
	cmp     r3, #0x30
	blt     branch_2228ba8
	cmp     r3, #0x39
	bgt     branch_2228ba8
	mla     r3, lr, r2, r3
	add     r12, r12, #0x1
	cmp     r12, #0x9
	sub     lr, r3, #0x30
	mvngt   r0, #0x0
	ldmgtfd sp!, {r3,pc}
.arm
branch_2228ba8: @ 2228ba8 :arm
	cmp     r1, #0x0
	add     r0, r0, #0x1
	sub     r1, r1, #0x1
	bne     branch_2228b74
.arm
branch_2228bb8: @ 2228bb8 :arm
	cmp     r12, #0x0
	mvneq   lr, #0x0
	mov     r0, lr
	ldmfd   sp!, {r3,pc}
@ 0x2228bc8

.arm
Function_2228bc8: @ 2228bc8 :arm
	stmfd   sp!, {r4-r8,lr}
	cmp     r1, r3
	mvnlt   r0, #0x0
	ldmltfd sp!, {r4-r8,pc}
	sub     r1, r1, r3
	add     r8, r1, #0x1
	cmp     r8, #0x0
	mov     r4, #0x0
	ble     branch_2228c44
	ldrsb   r7, [r2]
	mov     lr, #0x1
.arm
branch_2228bf4: @ 2228bf4 :arm
	ldrsb   r1, [r0, r4]
	cmp     r7, r1
	bne     branch_2228c38
	mov     r5, lr
	cmp     r3, #0x1
	add     r6, r0, r4
	ble     branch_2228c2c
.arm
branch_2228c10: @ 2228c10 :arm
	ldrsb   r12, [r6, r5]
	ldrsb   r1, [r2, r5]
	cmp     r12, r1
	bne     branch_2228c2c
	add     r5, r5, #0x1
	cmp     r5, r3
	blt     branch_2228c10
.arm
branch_2228c2c: @ 2228c2c :arm
	cmp     r5, r3
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r8,pc}
.arm
branch_2228c38: @ 2228c38 :arm
	add     r4, r4, #0x1
	cmp     r4, r8
	blt     branch_2228bf4
.arm
branch_2228c44: @ 2228c44 :arm
	mvn     r0, #0x0
	ldmfd   sp!, {r4-r8,pc}
@ 0x2228c4c


.incbin "./baserom/overlay/overlay_0060.bin", 0x944c, 0x2229e20 - 0x2228c4c


@end 0x2229e20




