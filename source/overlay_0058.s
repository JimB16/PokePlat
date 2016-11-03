

.section .iwram58, "ax"


.thumb
Function_21d0d80: @ 21d0d80 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r1
	ldr     r1, [r5, #0x0]
	mov     r6, r0
	cmp     r1, #0x0
	beq     branch_21d0d96
	cmp     r1, #0x1
	bne     branch_21d0d94
	b       branch_21d0ed6

branch_21d0d94: @ 21d0d94 :thumb
	b       branch_21d0ee4

branch_21d0d96: @ 21d0d96 :thumb
	mov     r0, #0x0
	mov     r1, r0
	bl      0x2017798
	bl      0x20177a4
	bl      0x201ff00
	bl      0x201ff68
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x138] @ 0x21d0eec, (=0xffffe0ff)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r2, [pc, #0x138] @ 0x21d0ef0, (=0x4001000)
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	mov     r0, #0x3
	mov     r1, #0x27
	lsl     r2, r2, #6
	bl      0x2017fc8
	ldr     r1, [pc, #0x128] @ 0x21d0ef4, (=0x940c)
	mov     r0, r6
	mov     r2, #0x27
	bl      0x200681c
	ldr     r2, [pc, #0x120] @ 0x21d0ef4, (=0x940c)
	mov     r1, #0x0
	mov     r4, r0
	blx     0x20d5124
	mov     r0, #0x27
	bl      0x2018340
	str     r0, [r4, #0x0]
	mov     r0, #0x27
	bl      0x200b358
	str     r0, [r4, #0xc]
	ldr     r2, [pc, #0x108] @ 0x21d0ef8, (=0x1a9)
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, #0x27
	bl      0x200b144
	str     r0, [r4, #0x10]
	mov     r0, #0x4
	mov     r1, #0x8
	bl      0x2017dd4
	bl      Function_21d1184
	ldr     r0, [r4, #0x0]
	bl      Function_21d11a4
	mov     r0, #0x0
	mov     r1, r0
	bl      0x200f344
	mov     r0, #0x1
	mov     r1, #0x0
	bl      0x200f344
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x27
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, #0x11
	mov     r2, r1
	mov     r3, r0
	bl      0x200f174
	mov     r0, r6
	bl      0x2006840
	str     r0, [r4, #0x8]
	mov     r0, #0x4e
	mov     r1, #0x27
	bl      0x2006c24
	mov     r7, r0
	mov     r0, r4
	mov     r1, r7
	bl      Function_21d142c
	bl      0x201e3d8
	mov     r0, #0x2
	bl      0x201e450
	ldr     r0, [pc, #0xa0] @ 0x21d0efc, (=0x21d115d)
	ldr     r1, [r4, #0x0]
	bl      0x2017798
	mov     r0, r4
	bl      Function_21d12c4
	bl      Function_21d1524
	mov     r0, r4
	mov     r1, r7
	bl      Function_21d1554
	mov     r0, r4
	bl      Function_21d16d8
	mov     r0, r4
	mov     r1, r6
	bl      Function_21d18ac
	mov     r1, #0x0
	mov     r0, #0x34
	mov     r2, r1
	bl      0x2004550
	ldr     r2, [pc, #0x74] @ 0x21d0f00, (=0x4000304)
	ldr     r0, [pc, #0x74] @ 0x21d0f04, (=0xffff7fff)
	ldrh    r1, [r2, #0x0]
	and     r0, r1
	strh    r0, [r2, #0x0]
	mov     r0, r4
	bl      0x2095e98
	mov     r0, #0x0
	mov     r1, #0x1
	bl      0x20388f4
	bl      0x203608c
	cmp     r0, #0x0
	bne     branch_21d0eb0
	mov     r0, #0x3
	bl      0x2037b58
branch_21d0eb0: @ 21d0eb0 :thumb
	bl      0x2039734
	bl      0x203608c
	cmp     r0, #0x0
	bne     branch_21d0ec8
	mov     r0, #0x1
	bl      0x205bea8
	mov     r0, #0x1
	bl      0x2033ed4
branch_21d0ec8: @ 21d0ec8 :thumb
	mov     r0, r7
	bl      0x2006ca8
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_21d0ee4

branch_21d0ed6: @ 21d0ed6 :thumb
	bl      0x200682c
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4-r7,pc}

branch_21d0ee4: @ 21d0ee4 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21d0eea

.align 2
.word 0xffffe0ff @ 0x21d0eec
.word 0x4001000 @ 0x21d0ef0
.word 0x940c @ 0x21d0ef4
.word 0x1a9 @ 0x21d0ef8
.word 0x21d115d @ 0x21d0efc
.word 0x4000304 @ 0x21d0f00
.word 0xffff7fff @ 0x21d0f04



.thumb
Function_21d0f08: @ 21d0f08 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	bl      0x200682c
	mov     r4, r0
	bl      0x203608c
	cmp     r0, #0x0
	bne     branch_21d0f2e
	ldr     r0, [pc, #0xe8] @ 0x21d1004, (=0x93b4)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21d0f2e
	bl      0x20318ec
	ldr     r1, [pc, #0xdc] @ 0x21d1004, (=0x93b4)
	ldr     r2, [r4, r1]
	and     r0, r2
	str     r0, [r4, r1]
.thumb
branch_21d0f2e: @ 21d0f2e :thumb
	mov     r0, #0x3
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #8
	str     r1, [r4, r0]
	ldr     r1, [r5, #0x0]
	mov     r0, r4
	bl      Function_21d2cb8
	ldr     r1, [r5, #0x0]
	cmp     r1, #0x3
	bhi     branch_21d0ff8
	add     r0, r1, r1
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d0f50

Jumppoints_21d0f50:
.hword branch_21d0f58 - Jumppoints_21d0f50 - 2
.hword branch_21d0f86 - Jumppoints_21d0f50 - 2
.hword branch_21d0fcc - Jumppoints_21d0f50 - 2
.hword branch_21d0fec - Jumppoints_21d0f50 - 2
.thumb
branch_21d0f58: @ 21d0f58 :thumb
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_21d0ff8
	bl      0x203608c
	cmp     r0, #0x0
	beq     branch_21d0f80
	bl      Function_21d2a30
	cmp     r0, #0x2
	blt     branch_21d0ff8
	mov     r1, #0x0
	mov     r0, #0x80
	mov     r2, r1
	bl      0x20359dc
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_21d0ff8
@ 0x21d0f80

.thumb
branch_21d0f80: @ 21d0f80 :thumb
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_21d0ff8
@ 0x21d0f86

.thumb
branch_21d0f86: @ 21d0f86 :thumb
	mov     r0, #0xc1
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	lsl     r2, r0, #3
	ldr     r0, [pc, #0x78] @ 0x21d1008, (=0x21d3180)
	ldr     r2, [r0, r2]
	cmp     r2, #0x0
	beq     branch_21d0f9c
	mov     r0, r4
	blx     r2
	str     r0, [r5, #0x0]
.thumb
branch_21d0f9c: @ 21d0f9c :thumb
	mov     r0, #0x9e
	lsl     r0, r0, #2
	ldr     r2, [pc, #0x68] @ 0x21d100c, (=0xe0d0f)
	add     r0, r4, r0
	mov     r1, #0x0
	mov     r3, r4
	bl      Function_21d28e4
	bl      0x203608c
	cmp     r0, #0x0
	bne     branch_21d0fc2
	mov     r0, r4
	bl      Function_21d2b5c
	ldr     r1, [r5, #0x0]
	cmp     r1, #0x1
	bne     branch_21d0fc2
	str     r0, [r5, #0x0]
.thumb
branch_21d0fc2: @ 21d0fc2 :thumb
	ldr     r0, [pc, #0x4c] @ 0x21d1010, (=0x4374)
	add     r0, r4, r0
	bl      Function_21d2888
	b       branch_21d0ff8
@ 0x21d0fcc

.thumb
branch_21d0fcc: @ 21d0fcc :thumb
	mov     r0, #0xc1
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	lsl     r3, r0, #3
	ldr     r0, [pc, #0x30] @ 0x21d1008, (=0x21d3180)
	ldr     r2, [r0, r3]
	cmp     r2, #0x0
	beq     branch_21d0ff8
	ldr     r0, [pc, #0x34] @ 0x21d1014, (=0x21d3184)
	ldr     r0, [r0, r3]
	cmp     r0, #0x0
	beq     branch_21d0ff8
	mov     r0, r4
	blx     r2
	str     r0, [r5, #0x0]
	b       branch_21d0ff8
@ 0x21d0fec

.thumb
branch_21d0fec: @ 21d0fec :thumb
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_21d0ff8
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d0ff8

.thumb
branch_21d0ff8: @ 21d0ff8 :thumb
	ldr     r0, [r4, #0x34]
	bl      0x20219f8
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d1002


.align 2


.word 0x93b4 @ 0x21d1004
.word 0x21d3180 @ 0x21d1008
.word 0xe0d0f @ 0x21d100c
.word 0x4374 @ 0x21d1010
.word 0x21d3184 @ 0x21d1014
.thumb
Function_21d1018: @ 21d1018 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r7, r1
	bl      0x200682c
	mov     r6, r0
	mov     r0, r5
	bl      0x2006840
	mov     r4, r0
	ldr     r0, [r7, #0x0]
	cmp     r0, #0x3
	bls     branch_21d1034
	b       branch_21d1152
@ 0x21d1034

.thumb
branch_21d1034: @ 21d1034 :thumb
	add     r1, r0, r0
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d1040

Jumppoints_21d1040:
.hword branch_21d1048 - Jumppoints_21d1040 - 2
.hword branch_21d10d4 - Jumppoints_21d1040 - 2
.hword branch_21d1102 - Jumppoints_21d1040 - 2
.hword branch_21d1122 - Jumppoints_21d1040 - 2
.thumb
branch_21d1048: @ 21d1048 :thumb
	mov     r0, #0x27
	bl      0x202c168
	mov     r1, r0
	ldr     r0, [r4, #0x4]
	mov     r2, #0x4
	bl      0x202b758
	mov     r0, #0x0
	mov     r1, r0
	bl      0x2017798
	mov     r0, #0x17
	lsl     r0, r0, #4
	ldr     r0, [r6, r0]
	bl      0x200a4e4
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r6, r0]
	bl      0x200a4e4
	mov     r0, #0x5d
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	bl      0x200a6dc
	mov     r0, #0x61
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	bl      0x200a6dc
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_21d108c: @ 21d108c :thumb
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	bl      0x2009754
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_21d108c
	ldr     r0, [r6, #0x34]
	bl      0x2021964
	bl      0x200a878
	bl      0x201e958
	bl      0x201f8b4
	mov     r0, r6
	bl      Function_21d19d4
	ldr     r0, [r6, #0x0]
	bl      Function_21d13f0
	bl      0x201e530
	ldr     r0, [r6, #0x10]
	bl      0x200b190
	ldr     r0, [r6, #0xc]
	bl      0x200b3f0
	ldr     r0, [r7, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r7, #0x0]
	b       branch_21d1152
@ 0x21d10d4

.thumb
branch_21d10d4: @ 21d10d4 :thumb
	mov     r0, #0x1
	bl      0x2037b58
	bl      0x2036ac4
	ldr     r0, [r4, #0x0]
	bl      0x205c2c8
	ldr     r2, [pc, #0x70] @ 0x21d1158, (=0x4000304)
	ldrh    r1, [r2, #0x0]
	lsr     r0, r2, #11
	orr     r0, r1
	strh    r0, [r2, #0x0]
	mov     r0, #0x0
	bl      0x205bea8
	mov     r0, #0x0
	bl      0x2033ed4
	ldr     r0, [r7, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r7, #0x0]
	b       branch_21d1152
@ 0x21d1102

.thumb
branch_21d1102: @ 21d1102 :thumb
	mov     r1, #0x25
	lsl     r1, r1, #10
	ldr     r1, [r6, r1]
	cmp     r1, #0x0
	beq     branch_21d111c
	bl      0x20318ec
	cmp     r0, #0x1
	bne     branch_21d1152
	ldr     r0, [r7, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r7, #0x0]
	b       branch_21d1152
@ 0x21d111c

.thumb
branch_21d111c: @ 21d111c :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r7, #0x0]
	b       branch_21d1152
@ 0x21d1122

.thumb
branch_21d1122: @ 21d1122 :thumb
	mov     r0, #0x2
	bl      0x2037b58
	mov     r0, r6
	bl      Function_21d13b4
	ldr     r0, [r6, #0x8]
	bl      0x20181c4
	mov     r0, r5
	bl      0x2006830
	mov     r0, #0x0
	mov     r1, r0
	bl      0x2017798
	mov     r0, #0x27
	bl      0x201807c
	mov     r0, #0x2
	bl      0x2037b58
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d1152

.thumb
branch_21d1152: @ 21d1152 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21d1156


.align 2


.word 0x4000304 @ 0x21d1158
.thumb
Function_21d115c: @ 21d115c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x201dcac
	bl      0x200a858
	mov     r0, r4
	bl      0x201c2b8
	ldr     r3, [pc, #0xc] @ 0x21d117c, (=0x27e0000)
	ldr     r1, [pc, #0xc] @ 0x21d1180, (=0x3ff8)
	mov     r0, #0x1
	ldr     r2, [r3, r1]
	orr     r0, r2
	str     r0, [r3, r1]
	pop     {r4,pc}
@ 0x21d117c

.word 0x27e0000 @ 0x21d117c
.word 0x3ff8 @ 0x21d1180
.thumb
Function_21d1184: @ 21d1184 :thumb
	push    {r4,lr}
	add     sp, #-0x28
	ldr     r4, [pc, #0x14] @ 0x21d11a0, (=0x21d2e90)
	add     r3, sp, #0x0
	mov     r2, #0x5
.thumb
branch_21d118e: @ 21d118e :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d118e
	add     r0, sp, #0x0
	bl      0x201fe94
	add     sp, #0x28
	pop     {r4,pc}
@ 0x21d11a0

.word 0x21d2e90 @ 0x21d11a0
.thumb
Function_21d11a4: @ 21d11a4 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x9c
	ldr     r5, [pc, #0x100] @ 0x21d12ac, (=0x21d2de4)
	add     r3, sp, #0x8c
	mov     r4, r0
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      0x2018368
	ldr     r5, [pc, #0xf0] @ 0x21d12b0, (=0x21d2e04)
	add     r3, sp, #0x70
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
	bl      0x20183c4
	mov     r0, r4
	mov     r1, #0x0
	bl      0x2019ebc
	ldr     r5, [pc, #0xcc] @ 0x21d12b4, (=0x21d2e3c)
	add     r3, sp, #0x54
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
	bl      0x20183c4
	mov     r0, r4
	mov     r1, #0x1
	bl      0x2019ebc
	ldr     r5, [pc, #0xa8] @ 0x21d12b8, (=0x21d2e58)
	add     r3, sp, #0x38
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
	mov     r0, r4
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r5, [pc, #0x8c] @ 0x21d12bc, (=0x21d2e74)
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
	mov     r0, r4
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, r4
	mov     r1, #0x4
	bl      0x2019ebc
	ldr     r5, [pc, #0x68] @ 0x21d12c0, (=0x21d2e20)
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
	mov     r1, #0x5
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, #0x0
	mov     r1, #0x20
	mov     r2, r0
	mov     r3, #0x27
	bl      0x2019690
	mov     r0, #0x4
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x27
	bl      0x2019690
	mov     r0, #0x1
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x27
	bl      0x2019690
	mov     r0, #0x5
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x27
	bl      0x2019690
	add     sp, #0x9c
	pop     {r4,r5,pc}
@ 0x21d12aa


.align 2


.word 0x21d2de4 @ 0x21d12ac
.word 0x21d2e04 @ 0x21d12b0
.word 0x21d2e3c @ 0x21d12b4
.word 0x21d2e58 @ 0x21d12b8
.word 0x21d2e74 @ 0x21d12bc
.word 0x21d2e20 @ 0x21d12c0
.thumb
Function_21d12c4: @ 21d12c4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r7, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xc8] @ 0x21d1398, (=0x438a)
	mov     r6, r7
	add     r4, r7, r0
	mov     r0, #0x38
	mov     r5, r7
	str     r0, [sp, #0x4]
.thumb
branch_21d12da: @ 21d12da :thumb
	mov     r0, #0x8
	mov     r1, #0x27
	bl      0x2023790
	str     r0, [r6, #0x14]
	ldrb    r1, [r4, #0x0]
	ldr     r0, [sp, #0x4]
	bic     r1, r0
	strb    r1, [r4, #0x0]
	ldr     r0, [pc, #0xac] @ 0x21d139c, (=0x43b6)
	mov     r1, #0x0
	strh    r1, [r6, r0]
	mov     r0, #0xcd
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r5, r0]
	ldr     r0, [sp, #0x0]
	.hword  0x1d36 @ add r6, r6, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r4, #0xa
	add     r5, #0x8
	str     r0, [sp, #0x0]
	cmp     r0, #0x5
	blt     branch_21d12da
	mov     r0, #0xa
	mov     r1, #0x27
	bl      0x2023790
	str     r0, [r7, #0x28]
	mov     r0, #0x50
	mov     r1, #0x27
	bl      0x2023790
	str     r0, [r7, #0x2c]
	ldr     r0, [pc, #0x7c] @ 0x21d13a0, (=0x4376)
	mov     r2, #0x0
	strb    r2, [r7, r0]
	mov     r1, #0x1
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r1, [r7, r0]
	ldr     r0, [pc, #0x74] @ 0x21d13a4, (=0x93f4)
	str     r1, [r7, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r2, [r7, r0]
	mov     r0, #0xc6
	mov     r1, #0x2
	lsl     r0, r0, #2
	str     r1, [r7, r0]
	bl      0x20318ec
	mov     r1, #0xc7
	lsl     r1, r1, #2
	str     r0, [r7, r1]
	ldr     r2, [pc, #0x60] @ 0x21d13a8, (=0x93fc)
	mov     r3, #0x0
	str     r3, [r7, r2]
	add     r0, r2, #0x4
	str     r3, [r7, r0]
	mov     r0, r2
	sub     r1, #0x18
	str     r3, [r7, r1]
	add     r0, #0x8
	str     r3, [r7, r0]
	add     r2, #0xc
	str     r3, [r7, r2]
	bl      0x203608c
	mov     r0, r7
	mov     r1, #0x4
	bl      Function_21d2cb0
	ldr     r0, [r7, #0x10]
	ldr     r2, [r7, #0x28]
	mov     r1, #0x7
	bl      0x200b1b8
	mov     r1, #0xf
	mov     r0, #0x27
	lsl     r1, r1, #10
	bl      0x2018144
	ldr     r1, [pc, #0x2c] @ 0x21d13ac, (=0x43c8)
	str     r0, [r7, r1]
	mov     r0, #0x27
	bl      0x2015920
	ldr     r1, [pc, #0x24] @ 0x21d13b0, (=0x93f0)
	str     r0, [r7, r1]
	mov     r0, #0xc5
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r7, r0]
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d1398

.word 0x438a @ 0x21d1398
.word 0x43b6 @ 0x21d139c
.word 0x4376 @ 0x21d13a0
.word 0x93f4 @ 0x21d13a4
.word 0x93fc @ 0x21d13a8
.word 0x43c8 @ 0x21d13ac
.word 0x93f0 @ 0x21d13b0
.thumb
Function_21d13b4: @ 21d13b4 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	ldr     r0, [pc, #0x2c] @ 0x21d13e8, (=0x43c8)
	ldr     r0, [r6, r0]
	bl      0x20181c4
	ldr     r0, [pc, #0x28] @ 0x21d13ec, (=0x93f0)
	ldr     r0, [r6, r0]
	bl      0x2015938
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_21d13cc: @ 21d13cc :thumb
	ldr     r0, [r5, #0x14]
	bl      0x20237bc
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x5
	blt     branch_21d13cc
	ldr     r0, [r6, #0x2c]
	bl      0x20237bc
	ldr     r0, [r6, #0x28]
	bl      0x20237bc
	pop     {r4-r6,pc}
@ 0x21d13e8

.word 0x43c8 @ 0x21d13e8
.word 0x93f0 @ 0x21d13ec
.thumb
Function_21d13f0: @ 21d13f0 :thumb
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
	mov     r0, r4
	bl      0x20181c4
	pop     {r4,pc}
@ 0x21d142a


.align 2, 0


.thumb
Function_21d142c: @ 21d142c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r6, r0
	ldr     r4, [r6, #0x0]
	mov     r0, #0x40
	mov     r5, r1
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x27
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, r1
	mov     r3, r1
	bl      0x2007130
	mov     r0, #0x40
	str     r0, [sp, #0x0]
	mov     r0, #0x27
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0x4
	mov     r3, #0x0
	bl      0x2007130
	mov     r1, #0x1a
	mov     r0, #0x0
	lsl     r1, r1, #4
	mov     r2, #0x27
	bl      0x2002e98
	mov     r1, #0x1a
	mov     r0, #0x4
	lsl     r1, r1, #4
	mov     r2, #0x27
	bl      0x2002e98
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	lsl     r0, r0, #12
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x27
	mov     r1, #0x2
	str     r0, [sp, #0xc]
	mov     r0, r5
	mov     r2, r4
	mov     r3, r1
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x27
	str     r0, [sp, #0xc]
	mov     r0, r5
	mov     r1, #0x4
	mov     r2, r4
	mov     r3, #0x2
	bl      0x200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	lsl     r0, r0, #12
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x27
	str     r0, [sp, #0xc]
	mov     r0, r5
	mov     r1, #0x3
	mov     r2, r4
	mov     r3, #0x5
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x27
	mov     r1, #0x5
	str     r0, [sp, #0xc]
	mov     r0, r5
	mov     r2, r4
	mov     r3, r1
	bl      0x200710c
	ldr     r0, [r6, #0x8]
	ldr     r0, [r0, #0x8]
	bl      0x2027b50
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x27
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x1
	mov     r3, #0xa
	bl      0x200dd0c
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x27
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      0x200daa4
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d1522


.align 2, 0


.thumb
Function_21d1524: @ 21d1524 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	ldr     r4, [pc, #0x24] @ 0x21d1550, (=0x21d2df4)
	add     r3, sp, #0x0
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      0x201e86c
	mov     r0, #0x14
	mov     r1, #0x27
	bl      0x201f834
	bl      0x201e994
	bl      0x201f8e4
	add     sp, #0x10
	pop     {r4,pc}
@ 0x21d1550

.word 0x21d2df4 @ 0x21d1550
.thumb
Function_21d1554: @ 21d1554 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r7, r1
	blx     0x20a7944
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x7e
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r3, #0x20
	str     r3, [sp, #0xc]
	mov     r2, #0x27
	str     r2, [sp, #0x10]
	mov     r2, r0
	bl      0x200a784
	mov     r1, r5
	mov     r0, #0x35
	add     r1, #0x38
	mov     r2, #0x27
	bl      0x20095c4
	str     r0, [r5, #0x34]
	mov     r0, r5
	mov     r2, #0x1
	add     r0, #0x38
	mov     r1, #0x0
	lsl     r2, r2, #20
	bl      0x200964c
	mov     r6, #0x0
	mov     r4, r5
.thumb
branch_21d1598: @ 21d1598 :thumb
	mov     r0, #0x2
	mov     r1, r6
	mov     r2, #0x27
	bl      0x2009714
	mov     r1, #0x16
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x4
	blt     branch_21d1598
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r3, #0x1
	str     r3, [sp, #0x4]
	mov     r0, #0x27
	str     r0, [sp, #0x8]
	mov     r0, r1
	ldr     r0, [r5, r0]
	mov     r1, r7
	mov     r2, #0x6
	bl      0x2009a4c
	mov     r1, #0x17
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x7
	str     r0, [sp, #0x8]
	mov     r0, #0x27
	sub     r1, #0xc
	str     r0, [sp, #0xc]
	ldr     r0, [r5, r1]
	mov     r1, r7
	mov     r3, r2
	bl      0x2009b04
	mov     r1, #0x5d
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x27
	sub     r1, #0xc
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	mov     r1, r7
	mov     r2, #0x7
	mov     r3, #0x1
	bl      0x2009bc4
	mov     r1, #0x5e
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x27
	sub     r1, #0xc
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	mov     r1, r7
	mov     r2, #0x8
	mov     r3, #0x1
	bl      0x2009bc4
	mov     r1, #0x5f
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r3, #0x1
	str     r3, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x27
	sub     r1, #0x1c
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	mov     r1, r7
	mov     r2, #0x6
	bl      0x2009a4c
	mov     r1, #0x6
	lsl     r1, r1, #6
	str     r0, [r5, r1]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x3
	str     r0, [sp, #0x8]
	mov     r0, #0x27
	mov     r2, #0x0
	sub     r1, #0x1c
	str     r0, [sp, #0xc]
	ldr     r0, [r5, r1]
	mov     r1, r7
	mov     r3, r2
	bl      0x2009b04
	mov     r1, #0x61
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r3, #0x1
	str     r3, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x27
	sub     r1, #0x1c
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	mov     r1, r7
	mov     r2, #0x7
	bl      0x2009bc4
	mov     r1, #0x62
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r3, #0x1
	str     r3, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x27
	sub     r1, #0x1c
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	mov     r1, r7
	mov     r2, #0x8
	bl      0x2009bc4
	mov     r1, #0x63
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	sub     r1, #0x1c
	ldr     r0, [r5, r1]
	bl      0x200a328
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	bl      0x200a328
	mov     r0, #0x5d
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      0x200a5c8
	mov     r0, #0x61
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      0x200a5c8
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d16d8

.thumb
Function_21d16d8: @ 21d16d8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x64
	mov     r1, #0x0
	mov     r5, r0
	str     r1, [sp, #0x0]
	.hword  0x1e48 @ sub r0, r1, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r2, #0x16
	str     r1, [sp, #0x10]
	lsl     r2, r2, #4
	ldr     r0, [r5, r2]
	mov     r3, r1
	str     r0, [sp, #0x14]
	add     r0, r2, #0x4
	ldr     r0, [r5, r0]
	str     r0, [sp, #0x18]
	mov     r0, r2
	add     r0, #0x8
	ldr     r0, [r5, r0]
	str     r0, [sp, #0x1c]
	mov     r0, r2
	add     r0, #0xc
	ldr     r0, [r5, r0]
	add     r2, #0x30
	str     r0, [sp, #0x20]
	str     r1, [sp, #0x24]
	add     r0, r5, r2
	mov     r2, r1
	str     r1, [sp, #0x28]
	bl      0x20093b4
	mov     r1, #0x1
	mov     r3, #0x16
	str     r1, [sp, #0x0]
	.hword  0x1e88 @ sub r0, r1, #0x2
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	lsl     r3, r3, #4
	ldr     r2, [r5, r3]
	str     r2, [sp, #0x14]
	add     r2, r3, #0x4
	ldr     r2, [r5, r2]
	str     r2, [sp, #0x18]
	mov     r2, r3
	add     r2, #0x8
	ldr     r2, [r5, r2]
	str     r2, [sp, #0x1c]
	mov     r2, r3
	add     r2, #0xc
	ldr     r2, [r5, r2]
	add     r3, #0x54
	str     r2, [sp, #0x20]
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
	add     r0, r5, r3
	mov     r2, r1
	mov     r3, r1
	bl      0x20093b4
	ldr     r0, [r5, #0x34]
	mov     r6, #0x0
	str     r0, [sp, #0x34]
	mov     r0, #0x19
	lsl     r0, r0, #4
	add     r0, r5, r0
	str     r0, [sp, #0x38]
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r6, [sp, #0x44]
	str     r0, [sp, #0x48]
	str     r0, [sp, #0x4c]
	str     r0, [sp, #0x50]
	add     r0, sp, #0x34
	strh    r6, [r0, #0x20]
	mov     r0, #0x1
	str     r0, [sp, #0x58]
	str     r0, [sp, #0x5c]
	mov     r0, #0x27
	str     r0, [sp, #0x60]
	mov     r0, #0x6d
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r7, #0x18
	mov     r4, r5
	str     r0, [sp, #0x2c]
.thumb
branch_21d178c: @ 21d178c :thumb
	ldr     r0, [sp, #0x2c]
	str     r0, [sp, #0x38]
	lsl     r0, r7, #12
	str     r0, [sp, #0x3c]
	mov     r0, #0x1
	lsl     r0, r0, #18
	str     r0, [sp, #0x40]
	mov     r0, #0x2
	str     r0, [sp, #0x5c]
	add     r0, sp, #0x34
	bl      0x2021aa0
	mov     r1, #0x76
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, r1
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      0x2021cc8
	mov     r0, #0x76
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, r6
	bl      0x2021d6c
	mov     r0, #0x76
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x2021cac
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r7, #0x28
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x5
	blt     branch_21d178c
	mov     r0, #0x6d
	lsl     r0, r0, #2
	add     r0, r5, r0
	ldr     r6, [pc, #0xc8] @ 0x21d18a8, (=0x21d2eec)
	mov     r7, #0x0
	mov     r4, r5
	str     r0, [sp, #0x30]
.thumb
branch_21d17e4: @ 21d17e4 :thumb
	ldr     r0, [sp, #0x30]
	str     r0, [sp, #0x38]
	ldrh    r0, [r6, #0x0]
	lsl     r0, r0, #12
	str     r0, [sp, #0x3c]
	ldrh    r0, [r6, #0x2]
	lsl     r0, r0, #12
	str     r0, [sp, #0x40]
	add     r0, sp, #0x34
	bl      0x2021aa0
	mov     r1, #0x92
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, r1
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      0x2021cc8
	mov     r0, #0x92
	lsl     r0, r0, #2
	ldrh    r1, [r6, #0x4]
	ldr     r0, [r4, r0]
	bl      0x2021d6c
	cmp     r7, #0x8
	blt     branch_21d1826
	mov     r0, #0x92
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x2
	bl      0x2021e80
.thumb
branch_21d1826: @ 21d1826 :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1db6 @ add r6, r6, #0x6
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r7, #0xc
	blt     branch_21d17e4
	mov     r0, #0x92
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x6
	bl      0x2021d6c
	mov     r7, #0x6
	mov     r6, #0x0
	mov     r4, #0x20
	lsl     r7, r7, #14
.thumb
branch_21d1844: @ 21d1844 :thumb
	mov     r0, #0x1
	lsl     r1, r4, #12
	lsl     r0, r0, #20
	add     r0, r1, r0
	str     r0, [sp, #0x40]
	add     r0, sp, #0x34
	str     r7, [sp, #0x3c]
	bl      0x2021aa0
	mov     r1, #0x21
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r0, r1
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      0x2021cc8
	mov     r0, #0x21
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, r6
	bl      0x2021d6c
	mov     r0, #0x21
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      0x2021f58
	mov     r0, #0x21
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x2021cac
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x20
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x5
	blt     branch_21d1844
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff74
	add     sp, #0x64
	pop     {r4-r7,pc}
@ 0x21d18a8

.word 0x21d2eec @ 0x21d18a8
.thumb
Function_21d18ac: @ 21d18ac :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r7, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x28
	mov     r1, #0xb6
	str     r0, [sp, #0x10]
	lsl     r1, r1, #2
	ldr     r0, [r7, #0x0]
	add     r1, r7, r1
	mov     r2, #0x0
	mov     r3, #0x2
	bl      0x201a7e8
	mov     r0, #0xb6
	lsl     r0, r0, #2
	add     r0, r7, r0
	mov     r1, #0xf
	bl      0x201ada4
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x1e
	str     r0, [sp, #0x4]
	mov     r0, #0xf
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, #0x1
	str     r0, [sp, #0xc]
	str     r2, [sp, #0x10]
	mov     r1, #0xb2
	lsl     r1, r1, #2
	ldr     r0, [r7, #0x0]
	add     r1, r7, r1
	mov     r3, r2
	bl      0x201a7e8
	mov     r0, #0xb2
	lsl     r0, r0, #2
	add     r0, r7, r0
	mov     r1, #0x2
	bl      0x201ada4
	mov     r0, #0x15
	str     r0, [sp, #0x0]
	mov     r0, #0x7
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0xa4] @ 0x21d19c8, (=0x1c3)
	mov     r1, #0xba
	str     r0, [sp, #0x10]
	lsl     r1, r1, #2
	ldr     r0, [r7, #0x0]
	add     r1, r7, r1
	mov     r2, #0x1
	mov     r3, #0x19
	bl      0x201a7e8
	mov     r0, #0xba
	lsl     r0, r0, #2
	add     r0, r7, r0
	mov     r1, #0x0
	bl      0x201ada4
	ldr     r1, [r7, #0x28]
	mov     r0, #0x1
	mov     r2, #0x0
	mov     r3, #0x30
	bl      0x2002eec
	mov     r3, r0
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	ldr     r0, [pc, #0x78] @ 0x21d19cc, (=0x70100)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, #0xba
	lsl     r0, r0, #2
	ldr     r2, [r7, #0x28]
	add     r0, r7, r0
	mov     r1, #0x1
	.hword  0x1c9b @ add r3, r3, #0x2
	bl      0x201d78c
	mov     r0, #0x0
	str     r0, [sp, #0x14]
	mov     r0, #0x9e
	lsl     r0, r0, #2
	mov     r6, #0x1
	mov     r4, #0x3
	add     r5, r7, r0
.thumb
branch_21d1978: @ 21d1978 :thumb
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	lsl     r0, r6, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	ldr     r0, [r7, #0x0]
	mov     r1, r5
	mov     r2, #0x4
	mov     r3, #0x5
	bl      0x201a7e8
	mov     r0, r5
	mov     r1, #0x0
	bl      0x201ada4
	ldr     r0, [sp, #0x14]
	add     r6, #0x14
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r5, #0x10
	str     r0, [sp, #0x14]
	cmp     r0, #0x5
	blt     branch_21d1978
	mov     r0, #0x9e
	lsl     r0, r0, #2
	ldr     r2, [pc, #0x14] @ 0x21d19d0, (=0xe0d0f)
	add     r0, r7, r0
	mov     r1, #0x0
	mov     r3, r7
	bl      Function_21d28e4
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21d19c8

.word 0x1c3 @ 0x21d19c8
.word 0x70100 @ 0x21d19cc
.word 0xe0d0f @ 0x21d19d0
.thumb
Function_21d19d4: @ 21d19d4 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r0, #0x9e
	lsl     r0, r0, #2
	mov     r4, #0x0
	add     r5, r6, r0
.thumb
branch_21d19e0: @ 21d19e0 :thumb
	mov     r0, r5
	bl      0x201a8fc
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x5
	blt     branch_21d19e0
	mov     r0, #0xba
	lsl     r0, r0, #2
	add     r0, r6, r0
	bl      0x201a8fc
	mov     r0, #0xb2
	lsl     r0, r0, #2
	add     r0, r6, r0
	bl      0x201a8fc
	mov     r0, #0xb6
	lsl     r0, r0, #2
	add     r0, r6, r0
	bl      0x201a8fc
	pop     {r4-r6,pc}
@ 0x21d1a0e


.align 2, 0


.thumb
Function_21d1a10: @ 21d1a10 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r5, r2
	cmp     r1, #0x0
	ble     branch_21d1a2e
	lsl     r0, r1, #12
	blx     0x20e17b4
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_21d1a3c
@ 0x21d1a2e

.thumb
branch_21d1a2e: @ 21d1a2e :thumb
	lsl     r0, r1, #12
	blx     0x20e17b4
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     0x20e1a9c
.thumb
branch_21d1a3c: @ 21d1a3c :thumb
	blx     0x20e1740
	sub     r5, #0x8
	str     r0, [sp, #0x0]
	cmp     r5, #0x0
	ble     branch_21d1a5a
	lsl     r0, r5, #12
	blx     0x20e17b4
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_21d1a68
@ 0x21d1a5a

.thumb
branch_21d1a5a: @ 21d1a5a :thumb
	lsl     r0, r5, #12
	blx     0x20e17b4
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     0x20e1a9c
.thumb
branch_21d1a68: @ 21d1a68 :thumb
	blx     0x20e1740
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r4
	add     r1, sp, #0x0
	bl      0x2021c50
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d1a7e


.align 2, 0


.thumb
Function_21d1a80: @ 21d1a80 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x54
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1f0] @ 0x21d1c7c, (=0x21d2eb8)
	bl      0x2022664
	mov     r1, #0x0
	mvn     r1, r1
	str     r0, [sp, #0x8]
	cmp     r0, r1
	beq     branch_21d1ace
	cmp     r0, #0xb
	bhi     branch_21d1ace
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d1aaa

Jumppoints_21d1aaa:
.hword branch_21d1ac2 - Jumppoints_21d1aaa - 2
.hword branch_21d1ac2 - Jumppoints_21d1aaa - 2
.hword branch_21d1ac2 - Jumppoints_21d1aaa - 2
.hword branch_21d1ac2 - Jumppoints_21d1aaa - 2
.hword branch_21d1ac2 - Jumppoints_21d1aaa - 2
.hword branch_21d1ac2 - Jumppoints_21d1aaa - 2
.hword branch_21d1ac2 - Jumppoints_21d1aaa - 2
.hword branch_21d1ac2 - Jumppoints_21d1aaa - 2
.hword branch_21d1aea - Jumppoints_21d1aaa - 2
.hword branch_21d1b8e - Jumppoints_21d1aaa - 2
.hword branch_21d1b8e - Jumppoints_21d1aaa - 2
.hword branch_21d1b8e - Jumppoints_21d1aaa - 2
.thumb
branch_21d1ac2: @ 21d1ac2 :thumb
	ldr     r2, [pc, #0x1bc] @ 0x21d1c80, (=0x4376)
	ldr     r0, [sp, #0x0]
	ldrb    r1, [r0, r2]
	ldr     r0, [sp, #0x8]
	cmp     r1, r0
	bne     branch_21d1ad0
.thumb
branch_21d1ace: @ 21d1ace :thumb
	b       branch_21d1be6
@ 0x21d1ad0

.thumb
branch_21d1ad0: @ 21d1ad0 :thumb
	mov     r1, r0
	ldr     r0, [sp, #0x0]
	strb    r1, [r0, r2]
	mov     r1, #0x92
	lsl     r1, r1, #2
	add     r0, r0, r1
	ldr     r1, [sp, #0x8]
	bl      Function_21d1cac
	ldr     r0, [pc, #0x1a0] @ 0x21d1c84, (=0x5dc)
	bl      0x2005748
	b       branch_21d1be6
@ 0x21d1aea

.thumb
branch_21d1aea: @ 21d1aea :thumb
	mov     r1, #0xc1
	ldr     r0, [sp, #0x0]
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	cmp     r0, #0x4
	bne     branch_21d1be6
	bl      0x203608c
	cmp     r0, #0x0
	bne     branch_21d1b50
	bl      0x20318ec
	mov     r2, #0xc7
	ldr     r1, [sp, #0x0]
	lsl     r2, r2, #2
	ldr     r1, [r1, r2]
	cmp     r1, r0
	beq     branch_21d1b16
	ldr     r0, [pc, #0x178] @ 0x21d1c88, (=0x5f2)
	bl      0x2005748
	b       branch_21d1be6
@ 0x21d1b16

.thumb
branch_21d1b16: @ 21d1b16 :thumb
	bl      0x2035e18
	bl      0x2037b58
	ldr     r1, [pc, #0x16c] @ 0x21d1c8c, (=0x93f4)
	ldr     r0, [sp, #0x0]
	mov     r2, #0x2
	str     r2, [r0, r1]
	mov     r1, #0x1
	mov     r2, r1
	bl      Function_21d2a98
	ldr     r0, [sp, #0x0]
	mov     r1, #0x5
	bl      Function_21d2cb0
	mov     r1, #0x92
	ldr     r0, [sp, #0x0]
	lsl     r1, r1, #2
	add     r0, r0, r1
	mov     r1, #0x1
	bl      Function_21d1cdc
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x138] @ 0x21d1c84, (=0x5dc)
	bl      0x2005748
	b       branch_21d1be6
@ 0x21d1b50

.thumb
branch_21d1b50: @ 21d1b50 :thumb
	ldr     r1, [pc, #0x13c] @ 0x21d1c90, (=0x438b)
	ldr     r0, [sp, #0x0]
	ldrb    r0, [r0, r1]
	cmp     r0, #0x2
	bne     branch_21d1b62
	ldr     r0, [pc, #0x12c] @ 0x21d1c88, (=0x5f2)
	bl      0x2005748
	b       branch_21d1be6
@ 0x21d1b62

.thumb
branch_21d1b62: @ 21d1b62 :thumb
	mov     r1, #0x1
	ldr     r0, [sp, #0x0]
	mov     r2, r1
	bl      Function_21d2a98
	ldr     r0, [sp, #0x0]
	mov     r1, #0x5
	bl      Function_21d2cb0
	mov     r1, #0x92
	ldr     r0, [sp, #0x0]
	lsl     r1, r1, #2
	add     r0, r0, r1
	mov     r1, #0x1
	bl      Function_21d1cdc
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xfc] @ 0x21d1c84, (=0x5dc)
	bl      0x2005748
	b       branch_21d1be6
@ 0x21d1b8e

.thumb
branch_21d1b8e: @ 21d1b8e :thumb
	ldr     r0, [sp, #0x8]
	ldr     r5, [sp, #0x0]
	str     r0, [sp, #0xc]
	sub     r0, #0x9
	mov     r4, #0x0
	mov     r7, #0x1e
	mov     r6, #0x1d
	str     r0, [sp, #0xc]
.thumb
branch_21d1b9e: @ 21d1b9e :thumb
	ldr     r0, [sp, #0xc]
	cmp     r0, r4
	bne     branch_21d1bb2
	mov     r0, #0x9b
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r7
	bl      0x2021d6c
	b       branch_21d1bbe
@ 0x21d1bb2

.thumb
branch_21d1bb2: @ 21d1bb2 :thumb
	mov     r0, #0x9b
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r6
	bl      0x2021d6c
.thumb
branch_21d1bbe: @ 21d1bbe :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cbf @ add r7, r7, #0x2
	.hword  0x1d2d @ add r5, r5, #0x4
	.hword  0x1cb6 @ add r6, r6, #0x2
	cmp     r4, #0x3
	blt     branch_21d1b9e
	ldr     r2, [pc, #0xc8] @ 0x21d1c94, (=0x4377)
	ldr     r0, [sp, #0x0]
	ldrb    r1, [r0, r2]
	ldr     r0, [sp, #0x8]
	sub     r0, #0x9
	str     r0, [sp, #0x8]
	cmp     r1, r0
	beq     branch_21d1be6
	mov     r1, r0
	ldr     r0, [sp, #0x0]
	strb    r1, [r0, r2]
	ldr     r0, [pc, #0xb4] @ 0x21d1c98, (=0x5e5)
	bl      0x2005748
.thumb
branch_21d1be6: @ 21d1be6 :thumb
	ldr     r0, [pc, #0xb4] @ 0x21d1c9c, (=0x21d2ddc)
	bl      0x2022644
	mov     r4, r0
	bl      0x203608c
	lsl     r1, r0, #2
	ldr     r0, [sp, #0x0]
	add     r1, r0, r1
	mov     r0, #0x76
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	mov     r1, #0x0
	bl      0x2021cac
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r4, r0
	beq     branch_21d1c3c
	bl      0x203608c
	lsl     r1, r0, #2
	ldr     r0, [sp, #0x0]
	ldr     r2, [pc, #0x88] @ 0x21d1ca0, (=0x21bf6bc)
	add     r1, r0, r1
	mov     r0, #0x76
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	ldrh    r1, [r2, #0x1c]
	ldrh    r2, [r2, #0x1e]
	bl      Function_21d1a10
	bl      0x203608c
	lsl     r1, r0, #2
	ldr     r0, [sp, #0x0]
	add     r1, r0, r1
	mov     r0, #0x76
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	mov     r1, #0x1
	bl      0x2021cac
.thumb
branch_21d1c3c: @ 21d1c3c :thumb
	add     r0, sp, #0x10
	mov     r1, #0x4
	mov     r2, #0x40
	bl      0x201e564
	cmp     r0, #0x1
	bne     branch_21d1c76
	ldr     r3, [pc, #0x58] @ 0x21d1ca4, (=0x4378)
	ldr     r0, [sp, #0x0]
	ldr     r2, [sp, #0x0]
	.hword  0x1e9c @ sub r4, r3, #0x2
	ldrb    r2, [r2, r4]
	add     r0, r0, r3
	.hword  0x1e5c @ sub r4, r3, #0x1
	ldr     r3, [sp, #0x0]
	add     r1, sp, #0x10
	ldrb    r3, [r3, r4]
	bl      Function_21d2d4c
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x1
	bne     branch_21d1c76
	ldr     r1, [pc, #0x3c] @ 0x21d1ca8, (=0x4380)
	ldr     r0, [sp, #0x0]
	ldrb    r2, [r0, r1]
	mov     r0, #0x38
	bic     r2, r0
	ldr     r0, [sp, #0x0]
	strb    r2, [r0, r1]
.thumb
branch_21d1c76: @ 21d1c76 :thumb
	add     sp, #0x54
	pop     {r4-r7,pc}
@ 0x21d1c7a


.align 2


.word 0x21d2eb8 @ 0x21d1c7c
.word 0x4376 @ 0x21d1c80
.word 0x5dc @ 0x21d1c84
.word 0x5f2 @ 0x21d1c88
.word 0x93f4 @ 0x21d1c8c
.word 0x438b @ 0x21d1c90
.word 0x4377 @ 0x21d1c94
.word 0x5e5 @ 0x21d1c98
.word 0x21d2ddc @ 0x21d1c9c
.word 0x21bf6bc @ 0x21d1ca0
.word 0x4378 @ 0x21d1ca4
.word 0x4380 @ 0x21d1ca8
.thumb
Function_21d1cac: @ 21d1cac :thumb
	push    {r3-r7,lr}
	ldr     r4, [pc, #0x28] @ 0x21d1cd8, (=0x21d2eec)
	mov     r5, r0
	mov     r7, r1
	mov     r6, #0x0
.thumb
branch_21d1cb6: @ 21d1cb6 :thumb
	cmp     r6, r7
	ldr     r0, [r5, #0x0]
	bne     branch_21d1cc6
	ldrh    r1, [r4, #0x4]
	.hword  0x1c49 @ add r1, r1, #0x1
	bl      0x2021d6c
	b       branch_21d1ccc
@ 0x21d1cc6

.thumb
branch_21d1cc6: @ 21d1cc6 :thumb
	ldrh    r1, [r4, #0x4]
	bl      0x2021d6c
.thumb
branch_21d1ccc: @ 21d1ccc :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1da4 @ add r4, r4, #0x6
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x8
	blt     branch_21d1cb6
	pop     {r3-r7,pc}
@ 0x21d1cd8

.word 0x21d2eec @ 0x21d1cd8
.thumb
Function_21d1cdc: @ 21d1cdc :thumb
	push    {r3,lr}
	cmp     r1, #0x1
	ldr     r0, [r0, #0x20]
	bne     branch_21d1cec
	mov     r1, #0x16
	bl      0x2021d6c
	pop     {r3,pc}
@ 0x21d1cec

.thumb
branch_21d1cec: @ 21d1cec :thumb
	mov     r1, #0x15
	bl      0x2021d6c
	pop     {r3,pc}
@ 0x21d1cf4

.thumb
Function_21d1cf4: @ 21d1cf4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_21d1a80
	bl      0x203608c
	cmp     r0, #0x0
	bne     branch_21d1d16
	bl      Function_21d28c8
	cmp     r0, #0x1
	beq     branch_21d1d1c
	mov     r0, r5
	bl      Function_21d29c8
	b       branch_21d1d1c
@ 0x21d1d16

.thumb
branch_21d1d16: @ 21d1d16 :thumb
	mov     r0, r5
	bl      Function_21d29c8
.thumb
branch_21d1d1c: @ 21d1d1c :thumb
	mov     r0, r5
	bl      Function_21d2820
	ldr     r2, [pc, #0x18] @ 0x21d1d3c, (=0x4382)
	mov     r0, #0xb2
	lsl     r0, r0, #2
	add     r1, r5, r2
	add     r2, #0x32
	add     r0, r5, r0
	add     r2, r5, r2
	mov     r3, #0x1
	bl      Function_21d2754
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d1d3a


.align 2


.word 0x4382 @ 0x21d1d3c
.thumb
Function_21d1d40: @ 21d1d40 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d2820
	ldr     r2, [pc, #0x14] @ 0x21d1d60, (=0x4382)
	mov     r0, #0xb2
	lsl     r0, r0, #2
	add     r1, r4, r2
	add     r2, #0x32
	add     r0, r4, r0
	add     r2, r4, r2
	mov     r3, #0x0
	bl      Function_21d2754
	pop     {r4,pc}
@ 0x21d1d5e


.align 2


.word 0x4382 @ 0x21d1d60
.thumb
Function_21d1d64: @ 21d1d64 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      0x203608c
	mov     r1, #0x32
	lsl     r1, r1, #4
	ldr     r1, [r5, r1]
	cmp     r1, r0
	bne     branch_21d1d84
	mov     r0, r5
	mov     r1, #0xd
	mov     r2, #0x0
	bl      Function_21d2a98
	b       branch_21d1d8e
@ 0x21d1d84

.thumb
branch_21d1d84: @ 21d1d84 :thumb
	mov     r1, #0x0
	mov     r0, r5
	mov     r2, r1
	bl      Function_21d2a98
.thumb
branch_21d1d8e: @ 21d1d8e :thumb
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_21d2cb0
	ldr     r0, [pc, #0x1c] @ 0x21d1db4, (=0x5e4)
	bl      0x2005748
	mov     r1, #0x1e
	mov     r2, r1
	ldr     r0, [pc, #0x14] @ 0x21d1db8, (=0x4000050)
	sub     r2, #0x24
	blx     0x20bf578
	mov     r0, r5
	bl      Function_21d1d40
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d1db2


.align 2


.word 0x5e4 @ 0x21d1db4
.word 0x4000050 @ 0x21d1db8
.thumb
Function_21d1dbc: @ 21d1dbc :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_21d1d40
	mov     r0, r4
	pop     {r4,pc}
@ 0x21d1dc8

.thumb
Function_21d1dc8: @ 21d1dc8 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r1, [pc, #0x24] @ 0x21d1df4, (=0x4000050)
	mov     r2, #0x0
	strh    r2, [r1, #0x0]
	mov     r5, r0
	mov     r1, #0x1
	bl      Function_21d2b3c
	mov     r0, r5
	mov     r1, #0x4
	bl      Function_21d2cb0
	mov     r0, r5
	bl      Function_21d1d40
	ldr     r0, [pc, #0xc] @ 0x21d1df8, (=0x9404)
	mov     r1, #0x0
	str     r1, [r5, r0]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d1df2


.align 2


.word 0x4000050 @ 0x21d1df4
.word 0x9404 @ 0x21d1df8
.thumb
Function_21d1dfc: @ 21d1dfc :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r5, #0x30]
	mov     r4, r1
	bl      Function_21d2b0c
	cmp     r0, #0x0
	beq     branch_21d1e40
	ldr     r0, [r5, #0x0]
	mov     r1, #0x19
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0xb4
	str     r0, [sp, #0x8]
	mov     r0, #0x8
	str     r0, [sp, #0xc]
	add     r0, sp, #0x0
	strb    r1, [r0, #0x10]
	mov     r1, #0x6
	strb    r1, [r0, #0x11]
	mov     r0, r5
	add     r1, sp, #0x0
	bl      Function_21d2cec
	cmp     r0, #0x0
	bne     branch_21d1e38
	bl      ErrorHandling
.thumb
branch_21d1e38: @ 21d1e38 :thumb
	mov     r0, r5
	mov     r1, #0x6
	bl      Function_21d2cb0
.thumb
branch_21d1e40: @ 21d1e40 :thumb
	mov     r0, r5
	bl      Function_21d1d40
	mov     r0, r4
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x21d1e4c

.thumb
Function_21d1e4c: @ 21d1e4c :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r6, r1
	mov     r5, r0
	ldr     r1, [pc, #0x140] @ 0x21d1f98, (=0x4380)
	mov     r0, #0x38
	ldrb    r2, [r5, r1]
	bic     r2, r0
	strb    r2, [r5, r1]
	add     r1, #0xb
	ldrb    r0, [r5, r1]
	cmp     r0, #0x2
	bne     branch_21d1e8a
	bl      0x203608c
	cmp     r0, #0x0
	beq     branch_21d1e8a
	mov     r0, r5
	bl      Function_21d1d40
	mov     r0, r5
	bl      Function_21d2d30
	cmp     r0, #0x0
	beq     branch_21d1e84
	ldr     r0, [pc, #0x11c] @ 0x21d1f9c, (=0x5f2)
	bl      0x2005748
.thumb
branch_21d1e84: @ 21d1e84 :thumb
	add     sp, #0x4
	mov     r0, r6
	pop     {r3-r6,pc}
@ 0x21d1e8a

.thumb
branch_21d1e8a: @ 21d1e8a :thumb
	bl      0x203608c
	cmp     r0, #0x0
	bne     branch_21d1ea6
	ldr     r0, [pc, #0x10c] @ 0x21d1fa0, (=0x93b4)
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_21d1ea6
	mov     r0, r5
	bl      Function_21d1d40
	add     sp, #0x4
	mov     r0, r6
	pop     {r3-r6,pc}
@ 0x21d1ea6

.thumb
branch_21d1ea6: @ 21d1ea6 :thumb
	bl      Function_21d2a30
	mov     r4, r0
	bl      0x2035e18
	cmp     r4, r0
	beq     branch_21d1ec0
	mov     r0, r5
	bl      Function_21d1d40
	add     sp, #0x4
	mov     r0, r6
	pop     {r3-r6,pc}
@ 0x21d1ec0

.thumb
branch_21d1ec0: @ 21d1ec0 :thumb
	ldr     r0, [pc, #0xe0] @ 0x21d1fa4, (=0x93f0)
	ldr     r0, [r5, r0]
	bl      0x20159fc
	cmp     r0, #0x1
	beq     branch_21d1ed2
	cmp     r0, #0x2
	beq     branch_21d1f42
	b       branch_21d1f8a
@ 0x21d1ed2

.thumb
branch_21d1ed2: @ 21d1ed2 :thumb
	bl      0x203608c
	cmp     r0, #0x0
	bne     branch_21d1eee
	mov     r0, r5
	mov     r1, #0xd
	bl      Function_21d2cb0
	mov     r0, r5
	mov     r1, #0x4
	mov     r2, #0x1
	bl      Function_21d2a98
	b       branch_21d1f30
@ 0x21d1eee

.thumb
branch_21d1eee: @ 21d1eee :thumb
	add     r0, sp, #0x0
	mov     r1, #0x0
	mov     r2, #0x4
	blx     MI_CpuFill8
	mov     r1, #0x0
	add     r0, sp, #0x0
	strb    r1, [r0, #0x2]
	bl      0x203608c
	add     r1, sp, #0x0
	strb    r0, [r1, #0x0]
	ldr     r0, [pc, #0xa0] @ 0x21d1fa8, (=0x93bc)
	mov     r1, #0x1
	strb    r1, [r5, r0]
	mov     r1, #0x0
	.hword  0x1e80 @ sub r0, r0, #0x2
	strh    r1, [r5, r0]
	mov     r0, r5
	mov     r1, #0x7
	bl      Function_21d2cb0
	mov     r0, #0x7e
	add     r1, sp, #0x0
	mov     r2, #0x4
	bl      0x20359dc
	mov     r0, #0xb6
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x1
	bl      0x200e084
.thumb
branch_21d1f30: @ 21d1f30 :thumb
	mov     r0, r5
	bl      Function_21d2d10
	mov     r0, #0xb2
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      0x201a954
	b       branch_21d1f8a
@ 0x21d1f42

.thumb
branch_21d1f42: @ 21d1f42 :thumb
	mov     r0, r5
	mov     r1, #0x4
	bl      Function_21d2cb0
	mov     r0, #0x92
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x0
	bl      Function_21d1cdc
	mov     r0, #0xb6
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x1
	bl      0x200e084
	mov     r0, r5
	bl      Function_21d2d10
	mov     r0, #0xb2
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      0x201a954
	bl      0x203608c
	cmp     r0, #0x0
	bne     branch_21d1f8a
	bl      0x2035e18
	.hword  0x1c40 @ add r0, r0, #0x1
	bl      0x2037b58
	ldr     r0, [pc, #0x24] @ 0x21d1fac, (=0x93f4)
	mov     r1, #0x1
	str     r1, [r5, r0]
.thumb
branch_21d1f8a: @ 21d1f8a :thumb
	mov     r0, r5
	bl      Function_21d1d40
	mov     r0, r6
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x21d1f96


.align 2


.word 0x4380 @ 0x21d1f98
.word 0x5f2 @ 0x21d1f9c
.word 0x93b4 @ 0x21d1fa0
.word 0x93f0 @ 0x21d1fa4
.word 0x93bc @ 0x21d1fa8
.word 0x93f4 @ 0x21d1fac
.thumb
Function_21d1fb0: @ 21d1fb0 :thumb
	push    {r4,lr}
	ldr     r2, [pc, #0x18] @ 0x21d1fcc, (=0x4380)
	mov     r4, r1
	ldrb    r3, [r0, r2]
	mov     r1, #0x38
	bic     r3, r1
	strb    r3, [r0, r2]
	ldr     r1, [pc, #0x10] @ 0x21d1fd0, (=0x93ba)
	mov     r2, #0x0
	strh    r2, [r0, r1]
	bl      Function_21d1d40
	mov     r0, r4
	pop     {r4,pc}
@ 0x21d1fcc

.word 0x4380 @ 0x21d1fcc
.word 0x93ba @ 0x21d1fd0
.thumb
Function_21d1fd4: @ 21d1fd4 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r1, [pc, #0x84] @ 0x21d2060, (=0x4380)
	mov     r0, #0x38
	ldrb    r2, [r5, r1]
	bic     r2, r0
	strb    r2, [r5, r1]
	bl      0x2035e18
	ldr     r1, [pc, #0x78] @ 0x21d2064, (=0x93b8)
	ldrh    r1, [r5, r1]
	cmp     r1, r0
	bne     branch_21d1ffc
	bl      Function_21d2a30
	ldr     r1, [pc, #0x6c] @ 0x21d2064, (=0x93b8)
	ldrh    r2, [r5, r1]
	cmp     r2, r0
	beq     branch_21d2014
.thumb
branch_21d1ffc: @ 21d1ffc :thumb
	ldr     r0, [pc, #0x68] @ 0x21d2068, (=0x93ba)
	mov     r1, #0x0
	strh    r1, [r5, r0]
	mov     r0, r5
	mov     r1, #0x9
	bl      Function_21d2cb0
	mov     r0, r5
	bl      Function_21d1d40
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d2014

.thumb
branch_21d2014: @ 21d2014 :thumb
	add     r0, r1, #0x2
	ldsh    r0, [r5, r0]
	add     r2, r0, #0x1
	add     r0, r1, #0x2
	strh    r2, [r5, r0]
	ldsh    r0, [r5, r0]
	cmp     r0, #0x1e
	ble     branch_21d2054
	add     r0, sp, #0x0
	mov     r1, #0x0
	mov     r2, #0x4
	blx     MI_CpuFill8
	mov     r1, #0x1
	add     r0, sp, #0x0
	strb    r1, [r0, #0x2]
	bl      0x203608c
	add     r1, sp, #0x0
	strb    r0, [r1, #0x0]
	mov     r0, #0x7e
	add     r1, sp, #0x0
	mov     r2, #0x4
	bl      0x20359dc
	ldr     r0, [pc, #0x20] @ 0x21d2068, (=0x93ba)
	mov     r1, #0x0
	strh    r1, [r5, r0]
	mov     r0, r5
	mov     r1, #0xa
	bl      Function_21d2cb0
.thumb
branch_21d2054: @ 21d2054 :thumb
	mov     r0, r5
	bl      Function_21d1d40
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d205e


.align 2


.word 0x4380 @ 0x21d2060
.word 0x93b8 @ 0x21d2064
.word 0x93ba @ 0x21d2068
.thumb
Function_21d206c: @ 21d206c :thumb
	push    {r3-r5,lr}
	ldr     r2, [pc, #0x30] @ 0x21d20a0, (=0x4380)
	mov     r5, r0
	ldrb    r3, [r5, r2]
	mov     r4, r1
	mov     r1, #0x38
	bic     r3, r1
	strb    r3, [r5, r2]
	ldr     r1, [pc, #0x24] @ 0x21d20a4, (=0x93bc)
	mov     r2, #0x0
	strb    r2, [r5, r1]
	mov     r1, #0x4
	bl      Function_21d2cb0
	mov     r0, #0x92
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x0
	bl      Function_21d1cdc
	mov     r0, r5
	bl      Function_21d1d40
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d209e


.align 2


.word 0x4380 @ 0x21d20a0
.word 0x93bc @ 0x21d20a4
.thumb
Function_21d20a8: @ 21d20a8 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r1, #0x6
	mov     r2, #0x1
	bl      Function_21d2a98
	mov     r0, r5
	mov     r1, #0xb
	bl      Function_21d2cb0
	mov     r0, r5
	bl      Function_21d1d40
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d20c8

.thumb
Function_21d20c8: @ 21d20c8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x30]
	mov     r4, r1
	bl      Function_21d2b0c
	cmp     r0, #0x0
	beq     branch_21d20e8
	mov     r0, #0x31
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r5, r0]
	mov     r0, r5
	mov     r1, #0xc
	bl      Function_21d2cb0
.thumb
branch_21d20e8: @ 21d20e8 :thumb
	mov     r0, r5
	bl      Function_21d1d40
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d20f2


.align 2, 0


.thumb
Function_21d20f4: @ 21d20f4 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r0, #0x31
	lsl     r0, r0, #4
	mov     r4, r1
	ldr     r1, [r5, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r5, r0]
	ldr     r0, [r5, r0]
	cmp     r0, #0x3c
	ble     branch_21d2124
	mov     r1, #0x10
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x27
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	mov     r3, r0
	bl      0x200f174
	mov     r4, #0x3
.thumb
branch_21d2124: @ 21d2124 :thumb
	mov     r0, r5
	bl      Function_21d1d40
	mov     r0, r4
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d2130

.thumb
Function_21d2130: @ 21d2130 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r5, #0x30]
	mov     r4, r1
	bl      Function_21d2b0c
	cmp     r0, #0x0
	beq     branch_21d2174
	ldr     r0, [r5, #0x0]
	mov     r1, #0x19
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0xb4
	str     r0, [sp, #0x8]
	mov     r0, #0x8
	str     r0, [sp, #0xc]
	add     r0, sp, #0x0
	strb    r1, [r0, #0x10]
	mov     r1, #0x6
	strb    r1, [r0, #0x11]
	mov     r0, r5
	add     r1, sp, #0x0
	bl      Function_21d2cec
	cmp     r0, #0x0
	bne     branch_21d216c
	bl      ErrorHandling
.thumb
branch_21d216c: @ 21d216c :thumb
	mov     r0, r5
	mov     r1, #0xe
	bl      Function_21d2cb0
.thumb
branch_21d2174: @ 21d2174 :thumb
	mov     r0, r5
	bl      Function_21d1d40
	mov     r0, r4
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x21d2180

.thumb
Function_21d2180: @ 21d2180 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [pc, #0xa8] @ 0x21d2230, (=0x93f0)
	mov     r6, r1
	ldr     r0, [r5, r0]
	bl      0x20159fc
	mov     r4, r0
	bl      Function_21d2a30
	mov     r1, #0xc6
	lsl     r1, r1, #2
	ldr     r1, [r5, r1]
	cmp     r1, r0
	bne     branch_21d21a6
	ldr     r0, [pc, #0x94] @ 0x21d2234, (=0x93b4)
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_21d21b0
.thumb
branch_21d21a6: @ 21d21a6 :thumb
	mov     r0, r5
	bl      Function_21d1d40
	mov     r0, r6
	pop     {r4-r6,pc}
@ 0x21d21b0

.thumb
branch_21d21b0: @ 21d21b0 :thumb
	cmp     r4, #0x1
	beq     branch_21d21ba
	cmp     r4, #0x2
	beq     branch_21d21e6
	b       branch_21d2224
@ 0x21d21ba

.thumb
branch_21d21ba: @ 21d21ba :thumb
	mov     r0, r5
	mov     r1, #0xf
	bl      Function_21d2cb0
	mov     r1, #0x0
	mov     r0, #0x7f
	mov     r2, r1
	bl      0x2035ac4
	mov     r0, #0x0
	bl      0x2032ee8
	mov     r2, r0
	ldr     r0, [r5, #0xc]
	mov     r1, #0x0
	bl      0x200b498
	mov     r0, r5
	mov     r6, #0x2
	bl      Function_21d2d10
	b       branch_21d2224
@ 0x21d21e6

.thumb
branch_21d21e6: @ 21d21e6 :thumb
	mov     r0, r5
	mov     r1, #0x4
	bl      Function_21d2cb0
	mov     r0, #0x92
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x0
	bl      Function_21d1cdc
	mov     r0, #0xb6
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x1
	bl      0x200e084
	mov     r0, r5
	bl      Function_21d2d10
	bl      0x203608c
	cmp     r0, #0x0
	bne     branch_21d2224
	bl      0x2035e18
	.hword  0x1c40 @ add r0, r0, #0x1
	bl      0x2037b58
	ldr     r0, [pc, #0x18] @ 0x21d2238, (=0x93f4)
	mov     r1, #0x1
	str     r1, [r5, r0]
.thumb
branch_21d2224: @ 21d2224 :thumb
	mov     r0, r5
	bl      Function_21d1d40
	mov     r0, r6
	pop     {r4-r6,pc}
@ 0x21d222e


.align 2


.word 0x93f0 @ 0x21d2230
.word 0x93b4 @ 0x21d2234
.word 0x93f4 @ 0x21d2238
.thumb
Function_21d223c: @ 21d223c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x0
	mov     r4, r1
	bl      0x2032ee8
	mov     r2, r0
	ldr     r0, [r5, #0xc]
	mov     r1, #0x0
	bl      0x200b498
	mov     r0, r5
	mov     r1, #0x3
	mov     r2, #0x1
	bl      Function_21d2a98
	mov     r0, r5
	mov     r1, #0x10
	bl      Function_21d2cb0
	mov     r0, r5
	bl      Function_21d1d40
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d226e


.align 2, 0


.thumb
Function_21d2270: @ 21d2270 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x30]
	mov     r4, r1
	bl      Function_21d2b0c
	cmp     r0, #0x0
	beq     branch_21d228e
	mov     r0, r5
	mov     r1, #0x11
	bl      Function_21d2cb0
	mov     r0, #0xc8
	bl      0x20364f0
.thumb
branch_21d228e: @ 21d228e :thumb
	mov     r0, r5
	bl      Function_21d1d40
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d2298

.thumb
Function_21d2298: @ 21d2298 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r0, #0xc8
	mov     r5, r1
	bl      0x2036540
	cmp     r0, #0x0
	bne     branch_21d22b2
	bl      0x2035e18
	cmp     r0, #0x1
	bne     branch_21d22ca
.thumb
branch_21d22b2: @ 21d22b2 :thumb
	mov     r1, #0x10
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x27
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	mov     r3, r0
	bl      0x200f174
	mov     r5, #0x3
.thumb
branch_21d22ca: @ 21d22ca :thumb
	mov     r0, r4
	bl      Function_21d1d40
	mov     r0, r5
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d22d6


.align 2, 0


.thumb
Function_21d22d8: @ 21d22d8 :thumb
	mov     r0, r1
	bx      lr
@ 0x21d22dc

.thumb
Function_21d22dc: @ 21d22dc :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r1, #0x5
	mov     r2, #0x1
	bl      Function_21d2a98
	mov     r0, r5
	mov     r1, #0x14
	bl      Function_21d2cb0
	mov     r0, r5
	bl      Function_21d1d40
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d22fc

.thumb
Function_21d22fc: @ 21d22fc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x30]
	mov     r4, r1
	bl      Function_21d2b0c
	cmp     r0, #0x0
	beq     branch_21d2314
	mov     r0, r5
	mov     r1, #0xc
	bl      Function_21d2cb0
.thumb
branch_21d2314: @ 21d2314 :thumb
	mov     r0, r5
	bl      Function_21d1d40
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d231e


.align 2, 0


.thumb
Function_21d2320: @ 21d2320 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x30]
	mov     r4, r1
	cmp     r0, #0xff
	beq     branch_21d233e
	bl      Function_21d2b0c
	cmp     r0, #0x0
	bne     branch_21d233e
	ldr     r0, [r5, #0x30]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d730
.thumb
branch_21d233e: @ 21d233e :thumb
	mov     r0, r5
	mov     r1, #0x2
	mov     r2, #0x1
	bl      Function_21d2a98
	mov     r0, r5
	mov     r1, #0x16
	bl      Function_21d2cb0
	ldr     r0, [pc, #0x24] @ 0x21d2378, (=0x5e4)
	bl      0x2005748
	bl      0x203608c
	cmp     r0, #0x0
	bne     branch_21d2366
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_21d2b3c
.thumb
branch_21d2366: @ 21d2366 :thumb
	bl      0x2035e18
	ldr     r1, [pc, #0x10] @ 0x21d237c, (=0x93b0)
	str     r0, [r5, r1]
	mov     r0, r5
	bl      Function_21d1d40
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d2378

.word 0x5e4 @ 0x21d2378
.word 0x93b0 @ 0x21d237c
.thumb
Function_21d2380: @ 21d2380 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x3c] @ 0x21d23c4, (=0x93b0)
	mov     r4, r1
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_21d239e
	bl      0x2035e18
	ldr     r1, [pc, #0x30] @ 0x21d23c4, (=0x93b0)
	ldr     r2, [r5, r1]
	cmp     r2, r0
	beq     branch_21d239e
	mov     r0, #0x0
	str     r0, [r5, r1]
.thumb
branch_21d239e: @ 21d239e :thumb
	ldr     r0, [r5, #0x30]
	bl      Function_21d2b0c
	cmp     r0, #0x0
	beq     branch_21d23b8
	mov     r0, r5
	mov     r1, #0x17
	bl      Function_21d2cb0
	mov     r0, #0x31
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r5, r0]
.thumb
branch_21d23b8: @ 21d23b8 :thumb
	mov     r0, r5
	bl      Function_21d1d40
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d23c2


.align 2


.word 0x93b0 @ 0x21d23c4
.thumb
Function_21d23c8: @ 21d23c8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x5c] @ 0x21d242c, (=0x93b0)
	mov     r4, r1
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_21d23e6
	bl      0x2035e18
	ldr     r1, [pc, #0x50] @ 0x21d242c, (=0x93b0)
	ldr     r2, [r5, r1]
	cmp     r2, r0
	beq     branch_21d23e6
	mov     r0, #0x0
	str     r0, [r5, r1]
.thumb
branch_21d23e6: @ 21d23e6 :thumb
	mov     r0, #0x31
	lsl     r0, r0, #4
	ldr     r1, [r5, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r5, r0]
	ldr     r0, [r5, r0]
	cmp     r0, #0x3c
	ble     branch_21d2420
	ldr     r0, [pc, #0x34] @ 0x21d242c, (=0x93b0)
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	bne     branch_21d2420
	mov     r0, r5
	bl      Function_21d2b2c
	mov     r0, r5
	mov     r1, #0x4
	bl      Function_21d2cb0
	bl      0x203608c
	cmp     r0, #0x0
	bne     branch_21d2420
	ldr     r0, [pc, #0x18] @ 0x21d2430, (=0x93f4)
	mov     r1, #0x1
	str     r1, [r5, r0]
	mov     r0, r5
	bl      Function_21d2b3c
.thumb
branch_21d2420: @ 21d2420 :thumb
	mov     r0, r5
	bl      Function_21d1d40
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d242a


.align 2


.word 0x93b0 @ 0x21d242c
.word 0x93f4 @ 0x21d2430
.thumb
Function_21d2434: @ 21d2434 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r4, r0
	mov     r6, r2
	cmp     r5, #0xf
	bgt     branch_21d2466
	bge     branch_21d2512
	cmp     r5, #0x9
	bhi     branch_21d251a
	add     r1, r5, r5
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d2452

Jumppoints_21d2452:
.hword branch_21d2510 - Jumppoints_21d2452 - 2
.hword branch_21d246c - Jumppoints_21d2452 - 2
.hword branch_21d2510 - Jumppoints_21d2452 - 2
.hword branch_21d24aa - Jumppoints_21d2452 - 2
.hword branch_21d2510 - Jumppoints_21d2452 - 2
.hword branch_21d2510 - Jumppoints_21d2452 - 2
.hword branch_21d2510 - Jumppoints_21d2452 - 2
.hword branch_21d2510 - Jumppoints_21d2452 - 2
.hword branch_21d2512 - Jumppoints_21d2452 - 2
.hword branch_21d2512 - Jumppoints_21d2452 - 2
.thumb
branch_21d2466: @ 21d2466 :thumb
	cmp     r5, #0x15
	beq     branch_21d24b0
	pop     {r4-r6,pc}
@ 0x21d246c

.thumb
branch_21d246c: @ 21d246c :thumb
	mov     r0, #0xc1
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x6
	beq     branch_21d247a
	cmp     r0, #0xe
	bne     branch_21d2480
.thumb
branch_21d247a: @ 21d247a :thumb
	mov     r0, r4
	bl      Function_21d2d10
.thumb
branch_21d2480: @ 21d2480 :thumb
	mov     r0, #0x92
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, #0x0
	bl      Function_21d1cdc
	mov     r0, r6
	bl      0x2032ee8
	mov     r2, r0
	ldr     r0, [r4, #0xc]
	mov     r1, #0x0
	bl      0x200b498
	mov     r0, #0x32
	lsl     r0, r0, #4
	str     r6, [r4, r0]
	ldr     r0, [pc, #0x78] @ 0x21d251c, (=0x93b4)
	mov     r1, #0x0
	str     r1, [r4, r0]
	b       branch_21d2512
@ 0x21d24aa

.thumb
branch_21d24aa: @ 21d24aa :thumb
	bl      Function_21d2b2c
	b       branch_21d2512
@ 0x21d24b0

.thumb
branch_21d24b0: @ 21d24b0 :thumb
	ldr     r0, [pc, #0x6c] @ 0x21d2520, (=0x93bc)
	ldrb    r0, [r4, r0]
	cmp     r0, #0x1
	beq     branch_21d251a
	mov     r0, r6
	bl      0x2032ee8
	mov     r2, r0
	ldr     r0, [r4, #0xc]
	mov     r1, #0x0
	bl      0x200b498
	bl      0x203608c
	cmp     r6, r0
	beq     branch_21d251a
	bl      0x203608c
	cmp     r0, #0x0
	bne     branch_21d24e4
	ldr     r1, [pc, #0x40] @ 0x21d251c, (=0x93b4)
	ldr     r0, [pc, #0x48] @ 0x21d2524, (=0xffff)
	ldr     r2, [r4, r1]
	eor     r0, r6
	and     r0, r2
	str     r0, [r4, r1]
.thumb
branch_21d24e4: @ 21d24e4 :thumb
	mov     r0, #0xc1
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x6
	beq     branch_21d24f2
	cmp     r0, #0xe
	bne     branch_21d2502
.thumb
branch_21d24f2: @ 21d24f2 :thumb
	mov     r0, r4
	bl      Function_21d2d10
	mov     r0, #0xb2
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      0x201a954
.thumb
branch_21d2502: @ 21d2502 :thumb
	mov     r0, #0x92
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, #0x0
	bl      Function_21d1cdc
	b       branch_21d2512
@ 0x21d2510

.thumb
branch_21d2510: @ 21d2510 :thumb
	pop     {r4-r6,pc}
@ 0x21d2512

.thumb
branch_21d2512: @ 21d2512 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_21d2cb0
.thumb
branch_21d251a: @ 21d251a :thumb
	pop     {r4-r6,pc}
@ 0x21d251c

.word 0x93b4 @ 0x21d251c
.word 0x93bc @ 0x21d2520
.word 0xffff @ 0x21d2524
.thumb
Function_21d2528: @ 21d2528 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	ldr     r4, [sp, #0x38]
	mov     r12, r1
	mov     r6, r2
	mov     r7, r3
	str     r0, [sp, #0x18]
	ldr     r3, [sp, #0x3c]
	ldr     r2, [sp, #0x40]
	ldr     r1, [sp, #0x44]
	cmp     r4, #0x0
	bge     branch_21d2554
	neg     r0, r4
	cmp     r0, r2
	ble     branch_21d2548
	mov     r0, r2
.thumb
branch_21d2548: @ 21d2548 :thumb
	ldr     r5, [sp, #0x30]
	mov     r4, #0x0
	sub     r5, r5, r0
	add     r6, r6, r0
	str     r5, [sp, #0x30]
	sub     r2, r2, r0
.thumb
branch_21d2554: @ 21d2554 :thumb
	cmp     r3, #0x0
	bge     branch_21d256c
	neg     r0, r3
	cmp     r0, r1
	ble     branch_21d2560
	mov     r0, r1
.thumb
branch_21d2560: @ 21d2560 :thumb
	ldr     r5, [sp, #0x34]
	mov     r3, #0x0
	sub     r5, r5, r0
	add     r7, r7, r0
	str     r5, [sp, #0x34]
	sub     r1, r1, r0
.thumb
branch_21d256c: @ 21d256c :thumb
	ldr     r0, [sp, #0x30]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x34]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x4]
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x8]
	lsl     r0, r3, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0xc]
	lsl     r0, r2, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	lsl     r0, r1, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x14]
	lsl     r2, r6, #16
	lsl     r3, r7, #16
	ldr     r0, [sp, #0x18]
	mov     r1, r12
	lsr     r2, r2, #16
	lsr     r3, r3, #16
	bl      0x201addc
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x21d25a8

.thumb
Function_21d25a8: @ 21d25a8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x3c
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x50]
	str     r1, [sp, #0x1c]
	str     r0, [sp, #0x50]
	ldr     r0, [sp, #0x54]
	str     r2, [sp, #0x20]
	str     r0, [sp, #0x54]
	ldr     r0, [sp, #0x50]
	str     r3, [sp, #0x24]
	ldr     r4, [r0, #0x0]
	ldr     r0, [sp, #0x54]
	ldr     r5, [r0, #0x0]
	mov     r0, r2
	str     r0, [sp, #0x38]
	mov     r0, r3
	str     r0, [sp, #0x30]
	ldr     r0, [sp, #0x58]
	cmp     r0, #0x0
	bne     branch_21d25e8
	ldr     r0, [sp, #0x5c]
	cmp     r0, #0x0
	bne     branch_21d25e8
	ldr     r0, [sp, #0x50]
	mov     r1, r2
	str     r1, [r0, #0x0]
	ldr     r0, [sp, #0x54]
	mov     r1, r3
	str     r1, [r0, #0x0]
	add     sp, #0x3c
	pop     {r4-r7,pc}
@ 0x21d25e8

.thumb
branch_21d25e8: @ 21d25e8 :thumb
	ldr     r0, [sp, #0x20]
	sub     r0, r0, r4
	str     r0, [sp, #0x34]
	bpl     branch_21d25f4
	neg     r0, r0
	str     r0, [sp, #0x34]
.thumb
branch_21d25f4: @ 21d25f4 :thumb
	ldr     r0, [sp, #0x24]
	sub     r7, r0, r5
	bpl     branch_21d25fc
	neg     r7, r7
.thumb
branch_21d25fc: @ 21d25fc :thumb
	ldr     r0, [sp, #0x34]
	cmp     r0, r7
	ble     branch_21d268a
	ldr     r0, [sp, #0x20]
	cmp     r4, r0
	ble     branch_21d2622
	ldr     r0, [sp, #0x24]
	cmp     r5, r0
	ble     branch_21d2614
	mov     r0, #0x1
	str     r0, [sp, #0x2c]
	b       branch_21d261a
@ 0x21d2614

.thumb
branch_21d2614: @ 21d2614 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	str     r0, [sp, #0x2c]
.thumb
branch_21d261a: @ 21d261a :thumb
	str     r4, [sp, #0x38]
	ldr     r4, [sp, #0x20]
	ldr     r5, [sp, #0x24]
	b       branch_21d2634
@ 0x21d2622

.thumb
branch_21d2622: @ 21d2622 :thumb
	ldr     r0, [sp, #0x24]
	cmp     r5, r0
	bge     branch_21d262e
	mov     r0, #0x1
	str     r0, [sp, #0x2c]
	b       branch_21d2634
@ 0x21d262e

.thumb
branch_21d262e: @ 21d262e :thumb
	mov     r0, #0x0
	mvn     r0, r0
	str     r0, [sp, #0x2c]
.thumb
branch_21d2634: @ 21d2634 :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r4, [sp, #0x8]
	str     r5, [sp, #0xc]
	str     r0, [sp, #0x10]
	str     r0, [sp, #0x14]
	mov     r2, #0x0
	ldr     r0, [sp, #0x18]
	ldr     r1, [sp, #0x1c]
	mov     r3, r2
	bl      Function_21d2528
	ldr     r0, [sp, #0x34]
	.hword  0x1c64 @ add r4, r4, #0x1
	asr     r6, r0, #1
	ldr     r0, [sp, #0x38]
	cmp     r4, r0
	bgt     branch_21d270e
.thumb
branch_21d265a: @ 21d265a :thumb
	sub     r6, r6, r7
	bpl     branch_21d2666
	ldr     r0, [sp, #0x34]
	add     r6, r6, r0
	ldr     r0, [sp, #0x2c]
	add     r5, r5, r0
.thumb
branch_21d2666: @ 21d2666 :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r4, [sp, #0x8]
	str     r5, [sp, #0xc]
	str     r0, [sp, #0x10]
	str     r0, [sp, #0x14]
	mov     r2, #0x0
	ldr     r0, [sp, #0x18]
	ldr     r1, [sp, #0x1c]
	mov     r3, r2
	bl      Function_21d2528
	ldr     r0, [sp, #0x38]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r0
	ble     branch_21d265a
	b       branch_21d270e
@ 0x21d268a

.thumb
branch_21d268a: @ 21d268a :thumb
	ldr     r0, [sp, #0x24]
	cmp     r5, r0
	ble     branch_21d26aa
	ldr     r0, [sp, #0x20]
	cmp     r4, r0
	ble     branch_21d269c
	mov     r0, #0x1
	str     r0, [sp, #0x28]
	b       branch_21d26a2
@ 0x21d269c

.thumb
branch_21d269c: @ 21d269c :thumb
	mov     r0, #0x0
	mvn     r0, r0
	str     r0, [sp, #0x28]
.thumb
branch_21d26a2: @ 21d26a2 :thumb
	str     r5, [sp, #0x30]
	ldr     r5, [sp, #0x24]
	ldr     r4, [sp, #0x20]
	b       branch_21d26bc
@ 0x21d26aa

.thumb
branch_21d26aa: @ 21d26aa :thumb
	ldr     r0, [sp, #0x20]
	cmp     r4, r0
	bge     branch_21d26b6
	mov     r0, #0x1
	str     r0, [sp, #0x28]
	b       branch_21d26bc
@ 0x21d26b6

.thumb
branch_21d26b6: @ 21d26b6 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	str     r0, [sp, #0x28]
.thumb
branch_21d26bc: @ 21d26bc :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r4, [sp, #0x8]
	str     r5, [sp, #0xc]
	str     r0, [sp, #0x10]
	str     r0, [sp, #0x14]
	mov     r2, #0x0
	ldr     r0, [sp, #0x18]
	ldr     r1, [sp, #0x1c]
	mov     r3, r2
	bl      Function_21d2528
	ldr     r0, [sp, #0x30]
	.hword  0x1c6d @ add r5, r5, #0x1
	asr     r6, r7, #1
	cmp     r5, r0
	bgt     branch_21d270e
.thumb
branch_21d26e0: @ 21d26e0 :thumb
	ldr     r0, [sp, #0x34]
	sub     r6, r6, r0
	bpl     branch_21d26ec
	ldr     r0, [sp, #0x28]
	add     r6, r6, r7
	add     r4, r4, r0
.thumb
branch_21d26ec: @ 21d26ec :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r4, [sp, #0x8]
	str     r5, [sp, #0xc]
	str     r0, [sp, #0x10]
	str     r0, [sp, #0x14]
	mov     r2, #0x0
	ldr     r0, [sp, #0x18]
	ldr     r1, [sp, #0x1c]
	mov     r3, r2
	bl      Function_21d2528
	ldr     r0, [sp, #0x30]
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r0
	ble     branch_21d26e0
.thumb
branch_21d270e: @ 21d270e :thumb
	ldr     r1, [sp, #0x20]
	ldr     r0, [sp, #0x50]
	str     r1, [r0, #0x0]
	ldr     r1, [sp, #0x24]
	ldr     r0, [sp, #0x54]
	str     r1, [r0, #0x0]
	add     sp, #0x3c
	pop     {r4-r7,pc}
@ 0x21d271e


.align 2, 0


.thumb
Function_21d2720: @ 21d2720 :thumb
	mov     r2, #0x0
.thumb
branch_21d2722: @ 21d2722 :thumb
	ldrb    r3, [r0, #0x8]
	lsl     r3, r3, #26
	lsr     r3, r3, #29
	strh    r3, [r1, #0x2]
	ldrb    r3, [r0, #0x8]
	lsl     r3, r3, #26
	lsr     r3, r3, #29
	beq     branch_21d2746
	add     r3, r0, r3
	.hword  0x1e5b @ sub r3, r3, #0x1
	ldrb    r3, [r3, #0x0]
	strb    r3, [r1, #0x0]
	ldrb    r3, [r0, #0x8]
	lsl     r3, r3, #26
	lsr     r3, r3, #29
	add     r3, r0, r3
	ldrb    r3, [r3, #0x3]
	strb    r3, [r1, #0x1]
.thumb
branch_21d2746: @ 21d2746 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r0, #0xa
	.hword  0x1d09 @ add r1, r1, #0x4
	cmp     r2, #0x5
	blt     branch_21d2722
	bx      lr
@ 0x21d2752


.align 2, 0


.thumb
Function_21d2754: @ 21d2754 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	str     r0, [sp, #0x10]
	mov     r0, #0x0
	str     r1, [sp, #0x14]
	str     r2, [sp, #0x18]
	str     r3, [sp, #0x1c]
	str     r0, [sp, #0x20]
	str     r0, [sp, #0x24]
	mov     r5, r1
	mov     r7, r2
.thumb
branch_21d276a: @ 21d276a :thumb
	ldrb    r0, [r5, #0x8]
	lsl     r0, r0, #26
	lsr     r0, r0, #29
	beq     branch_21d27da
	ldrh    r0, [r7, #0x2]
	cmp     r0, #0x0
	beq     branch_21d2784
	ldrb    r0, [r7, #0x0]
	sub     r0, #0x9
	str     r0, [sp, #0x2c]
	ldrb    r0, [r7, #0x1]
	sub     r0, #0x11
	str     r0, [sp, #0x28]
.thumb
branch_21d2784: @ 21d2784 :thumb
	ldrb    r0, [r5, #0x8]
	mov     r4, #0x0
	lsl     r0, r0, #26
	lsr     r1, r0, #29
	cmp     r1, #0x0
	ble     branch_21d27da
	mov     r0, #0x1
	str     r0, [sp, #0x20]
	cmp     r1, #0x0
	ble     branch_21d27da
.thumb
branch_21d2798: @ 21d2798 :thumb
	add     r0, sp, #0x2c
	str     r0, [sp, #0x0]
	add     r0, sp, #0x28
	str     r0, [sp, #0x4]
	str     r4, [sp, #0x8]
	ldrh    r0, [r7, #0x2]
	mov     r6, #0xc0
	add     r3, r5, r4
	str     r0, [sp, #0xc]
	ldrb    r1, [r5, #0x8]
	ldrb    r3, [r3, #0x4]
	ldr     r0, [sp, #0x10]
	lsl     r2, r1, #24
	lsr     r2, r2, #30
	mul     r6, r2
	ldr     r2, [pc, #0x64] @ 0x21d281c, (=0x21d2f34)
	lsl     r1, r1, #29
	add     r2, r2, r6
	lsr     r6, r1, #29
	mov     r1, #0x18
	mul     r1, r6
	add     r1, r2, r1
	ldrb    r2, [r5, r4]
	sub     r3, #0x11
	sub     r2, #0x9
	bl      Function_21d25a8
	ldrb    r0, [r5, #0x8]
	.hword  0x1c64 @ add r4, r4, #0x1
	lsl     r0, r0, #26
	lsr     r0, r0, #29
	cmp     r4, r0
	blt     branch_21d2798
.thumb
branch_21d27da: @ 21d27da :thumb
	ldr     r0, [sp, #0x24]
	add     r5, #0xa
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d3f @ add r7, r7, #0x4
	str     r0, [sp, #0x24]
	cmp     r0, #0x5
	blt     branch_21d276a
	ldr     r0, [sp, #0x20]
	cmp     r0, #0x0
	beq     branch_21d27fa
	ldr     r0, [sp, #0x1c]
	cmp     r0, #0x0
	beq     branch_21d27fa
	ldr     r0, [sp, #0x10]
	bl      0x201a954
.thumb
branch_21d27fa: @ 21d27fa :thumb
	ldr     r0, [sp, #0x14]
	ldr     r1, [sp, #0x18]
	bl      Function_21d2720
	mov     r3, #0x0
	mov     r1, #0x38
.thumb
branch_21d2806: @ 21d2806 :thumb
	ldr     r0, [sp, #0x14]
	.hword  0x1c5b @ add r3, r3, #0x1
	ldrb    r2, [r0, #0x8]
	bic     r2, r1
	strb    r2, [r0, #0x8]
	add     r0, #0xa
	str     r0, [sp, #0x14]
	cmp     r3, #0x5
	blt     branch_21d2806
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x21d281c

.word 0x21d2f34 @ 0x21d281c
.thumb
Function_21d2820: @ 21d2820 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x5c] @ 0x21d2884, (=0x4382)
	mov     r7, #0x76
	mov     r6, #0x0
	add     r4, r5, r0
	lsl     r7, r7, #2
.thumb
branch_21d282e: @ 21d282e :thumb
	bl      0x203608c
	cmp     r6, r0
	beq     branch_21d2876
	ldrb    r0, [r4, #0x8]
	lsl     r0, r0, #26
	lsr     r0, r0, #29
	beq     branch_21d286a
	mov     r0, r6
	bl      0x2032ee8
	cmp     r0, #0x0
	beq     branch_21d286a
	mov     r0, #0x76
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      0x2021cac
	ldrb    r0, [r4, #0x8]
	lsl     r0, r0, #26
	lsr     r0, r0, #29
	add     r2, r4, r0
	.hword  0x1e51 @ sub r1, r2, #0x1
	ldrb    r1, [r1, #0x0]
	ldrb    r2, [r2, #0x3]
	ldr     r0, [r5, r7]
	bl      Function_21d1a10
	b       branch_21d2876
@ 0x21d286a

.thumb
branch_21d286a: @ 21d286a :thumb
	mov     r0, #0x76
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x2021cac
.thumb
branch_21d2876: @ 21d2876 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0xa
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x5
	blt     branch_21d282e
	pop     {r3-r7,pc}
@ 0x21d2882


.align 2


.word 0x4382 @ 0x21d2884
.thumb
Function_21d2888: @ 21d2888 :thumb
	push    {r3,lr}
	ldrh    r1, [r0, #0x0]
	add     r1, #0x14
	strh    r1, [r0, #0x0]
	ldrh    r2, [r0, #0x0]
	mov     r1, #0x5a
	lsl     r1, r1, #2
	cmp     r2, r1
	bls     branch_21d289e
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
.thumb
branch_21d289e: @ 21d289e :thumb
	ldrh    r0, [r0, #0x0]
	bl      0x201d250
	mov     r1, #0xa
	mul     r1, r0
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r0, r0, #12
	add     r0, #0xf
	lsl     r1, r0, #5
	mov     r0, #0x1d
	orr     r1, r0
	add     r0, sp, #0x0
	strh    r1, [r0, #0x0]
	add     r0, sp, #0x0
	mov     r1, #0x18
	mov     r2, #0x2
	blx     0x20c0160
	pop     {r3,pc}
@ 0x21d28c8

.thumb
Function_21d28c8: @ 21d28c8 :thumb
	push    {r3-r5,lr}
	mov     r5, #0x0
	mov     r4, r5
.thumb
branch_21d28ce: @ 21d28ce :thumb
	mov     r0, r4
	bl      0x2032ee8
	cmp     r0, #0x0
	beq     branch_21d28da
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_21d28da: @ 21d28da :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x5
	blt     branch_21d28ce
	mov     r0, r5
	pop     {r3-r5,pc}
@ 0x21d28e4

.thumb
Function_21d28e4: @ 21d28e4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r7, r3
	mov     r5, r0
	str     r2, [sp, #0x10]
	bl      0x203608c
	str     r0, [sp, #0x14]
	mov     r0, r7
	bl      Function_21d2a54
	cmp     r0, #0x0
	beq     branch_21d29be
	mov     r0, #0x0
	str     r0, [sp, #0x18]
	mov     r6, r7
	mov     r4, r7
.thumb
branch_21d2906: @ 21d2906 :thumb
	mov     r0, #0xcd
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	cmp     r0, #0x0
	bne     branch_21d291e
	mov     r0, #0x21
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x2021cac
	b       branch_21d292a
@ 0x21d291e

.thumb
branch_21d291e: @ 21d291e :thumb
	mov     r0, #0x21
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      0x2021cac
.thumb
branch_21d292a: @ 21d292a :thumb
	ldr     r0, [sp, #0x18]
	add     r6, #0x8
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	str     r0, [sp, #0x18]
	cmp     r0, #0x5
	blt     branch_21d2906
	mov     r6, #0x0
	mov     r4, r5
.thumb
branch_21d293c: @ 21d293c :thumb
	mov     r0, #0x50
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, r1
	mov     r3, r1
	bl      0x201ae78
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x10
	cmp     r6, #0x5
	blt     branch_21d293c
	mov     r6, #0x0
	mov     r4, r7
.thumb
branch_21d295c: @ 21d295c :thumb
	mov     r0, #0xcd
	lsl     r0, r0, #2
	ldr     r0, [r7, r0]
	cmp     r0, #0x0
	beq     branch_21d29ac
	ldr     r1, [r4, #0x14]
	bl      0x2025ef4
	ldr     r0, [sp, #0x14]
	cmp     r0, r6
	bne     branch_21d2990
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x48] @ 0x21d29c4, (=0x3040f)
	mov     r1, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x14]
	mov     r0, r5
	mov     r3, #0x0
	bl      0x201d78c
	b       branch_21d29ac
@ 0x21d2990

.thumb
branch_21d2990: @ 21d2990 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x10]
	mov     r1, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x14]
	mov     r0, r5
	mov     r3, #0x0
	bl      0x201d78c
.thumb
branch_21d29ac: @ 21d29ac :thumb
	mov     r0, r5
	bl      0x201a954
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r7, #0x8
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r5, #0x10
	cmp     r6, #0x5
	blt     branch_21d295c
.thumb
branch_21d29be: @ 21d29be :thumb
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x21d29c2


.align 2


.word 0x3040f @ 0x21d29c4
.thumb
Function_21d29c8: @ 21d29c8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x203608c
	cmp     r0, #0x0
	bne     branch_21d2a08
	bl      0x2036284
	cmp     r0, #0x0
	beq     branch_21d2a1c
	ldr     r1, [pc, #0x40] @ 0x21d2a20, (=0x93f4)
	ldr     r0, [pc, #0x44] @ 0x21d2a24, (=0x4381)
	ldr     r2, [r4, r1]
	sub     r1, #0x37
	strb    r2, [r4, r0]
	sub     r0, #0x9
	add     r2, r4, r1
	add     r3, r4, r0
	mov     r1, #0xa
.thumb
branch_21d29ee: @ 21d29ee :thumb
	ldrb    r0, [r3, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_21d29ee
	ldr     r1, [pc, #0x2c] @ 0x21d2a28, (=0x93bd)
	mov     r0, #0x78
	add     r1, r4, r1
	mov     r2, #0x32
	bl      0x2035ac4
	pop     {r4,pc}
@ 0x21d2a08

.thumb
branch_21d2a08: @ 21d2a08 :thumb
	bl      0x203629c
	cmp     r0, #0x0
	beq     branch_21d2a1c
	ldr     r1, [pc, #0x18] @ 0x21d2a2c, (=0x4378)
	mov     r0, #0x77
	add     r1, r4, r1
	mov     r2, #0xa
	bl      0x20359dc
.thumb
branch_21d2a1c: @ 21d2a1c :thumb
	pop     {r4,pc}
@ 0x21d2a1e


.align 2


.word 0x93f4 @ 0x21d2a20
.word 0x4381 @ 0x21d2a24
.word 0x93bd @ 0x21d2a28
.word 0x4378 @ 0x21d2a2c
.thumb
Function_21d2a30: @ 21d2a30 :thumb
	push    {r3-r5,lr}
	mov     r5, #0x0
	mov     r4, r5
.thumb
branch_21d2a36: @ 21d2a36 :thumb
	mov     r0, r4
	bl      0x2032ee8
	cmp     r0, #0x0
	beq     branch_21d2a42
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_21d2a42: @ 21d2a42 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x5
	blt     branch_21d2a36
	mov     r0, r5
	pop     {r3-r5,pc}
@ 0x21d2a4c

.thumb
Function_21d2a4c: @ 21d2a4c :thumb
	ldr     r3, [pc, #0x0] @ 0x21d2a50, (=0x21d2a31)
	bx      r3
@ 0x21d2a50

.word 0x21d2a31 @ 0x21d2a50
.thumb
Function_21d2a54: @ 21d2a54 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r7, #0x0
	mov     r6, r7
	mov     r4, r5
.thumb
branch_21d2a5e: @ 21d2a5e :thumb
	mov     r0, #0xcd
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r4, r0]
	mov     r0, r6
	bl      0x2032ee8
	mov     r1, #0xcd
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x8
	cmp     r6, #0x5
	blt     branch_21d2a5e
	mov     r6, #0x0
	mov     r2, #0x1
	add     r0, r1, #0x4
.thumb
branch_21d2a82: @ 21d2a82 :thumb
	ldr     r4, [r5, r0]
	ldr     r3, [r5, r1]
	cmp     r4, r3
	beq     branch_21d2a8c
	mov     r7, r2
.thumb
branch_21d2a8c: @ 21d2a8c :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x8
	cmp     r6, #0x5
	blt     branch_21d2a82
	mov     r0, r7
	pop     {r3-r7,pc}
@ 0x21d2a98

.thumb
Function_21d2a98: @ 21d2a98 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r7, r1
	mov     r0, #0x50
	mov     r1, #0x27
	mov     r4, r2
	bl      0x2023790
	mov     r6, r0
	ldr     r0, [r5, #0x10]
	mov     r1, r7
	mov     r2, r6
	bl      0x200b1b8
	ldr     r0, [r5, #0xc]
	ldr     r1, [r5, #0x2c]
	mov     r2, r6
	bl      0x200c388
	mov     r0, r6
	bl      0x20237bc
	mov     r0, #0xb6
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0xf
	bl      0x201ada4
	mov     r0, #0xb6
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x0
	mov     r2, #0x1
	mov     r3, #0xa
	bl      0x200e060
	cmp     r4, #0x0
	bne     branch_21d2ae8
	mov     r4, #0x0
.thumb
branch_21d2ae8: @ 21d2ae8 :thumb
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r4, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, #0xb6
	lsl     r0, r0, #2
	ldr     r2, [r5, #0x2c]
	add     r0, r5, r0
	mov     r1, #0x1
	bl      0x201d738
	str     r0, [r5, #0x30]
	cmp     r4, #0x0
	bne     branch_21d2b08
	mov     r0, #0xff
	str     r0, [r5, #0x30]
.thumb
branch_21d2b08: @ 21d2b08 :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21d2b0c

.thumb
Function_21d2b0c: @ 21d2b0c :thumb
	push    {r3,lr}
	cmp     r0, #0xff
	bne     branch_21d2b16
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d2b16

.thumb
branch_21d2b16: @ 21d2b16 :thumb
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d724
	cmp     r0, #0x0
	bne     branch_21d2b26
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d2b26

.thumb
branch_21d2b26: @ 21d2b26 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d2b2a


.align 2, 0


.thumb
Function_21d2b2c: @ 21d2b2c :thumb
	mov     r1, #0xb6
	lsl     r1, r1, #2
	add     r0, r0, r1
	ldr     r3, [pc, #0x4] @ 0x21d2b38, (=0x200e085)
	mov     r1, #0x0
	bx      r3
@ 0x21d2b38

.word 0x200e085 @ 0x21d2b38
.thumb
Function_21d2b3c: @ 21d2b3c :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      0x203608c
	cmp     r0, #0x0
	bne     branch_21d2b58
	bl      0x2035e18
	add     r0, r4, r0
	cmp     r0, #0x5
	ble     branch_21d2b54
	mov     r0, #0x5
.thumb
branch_21d2b54: @ 21d2b54 :thumb
	bl      0x2037b58
.thumb
branch_21d2b58: @ 21d2b58 :thumb
	pop     {r4,pc}
@ 0x21d2b5a


.align 2, 0


.thumb
Function_21d2b5c: @ 21d2b5c :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      Function_21d2a30
	mov     r5, r0
	cmp     r5, #0x5
	bhi     branch_21d2bfa
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d2b76

Jumppoints_21d2b76:
.hword branch_21d2bfa - Jumppoints_21d2b76 - 2
.hword branch_21d2b82 - Jumppoints_21d2b76 - 2
.hword branch_21d2bc8 - Jumppoints_21d2b76 - 2
.hword branch_21d2bc8 - Jumppoints_21d2b76 - 2
.hword branch_21d2bc8 - Jumppoints_21d2b76 - 2
.hword branch_21d2bf4 - Jumppoints_21d2b76 - 2
.thumb
branch_21d2b82: @ 21d2b82 :thumb
	mov     r0, #0xc1
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0xe
	bgt     branch_21d2bfa
	bl      0x20318ec
	cmp     r0, #0x1
	beq     branch_21d2b9c
	mov     r0, #0x25
	mov     r1, #0x1
	lsl     r0, r0, #10
	str     r1, [r4, r0]
.thumb
branch_21d2b9c: @ 21d2b9c :thumb
	mov     r0, #0xc2
	mov     r1, #0x13
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r0, #0x1
	bl      0x2037b58
	ldr     r0, [pc, #0xf0] @ 0x21d2c9c, (=0x93f8)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21d2bc4
	mov     r0, r4
	bl      Function_21d2d10
	mov     r0, #0x9a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x15
	bl      0x2021d6c
.thumb
branch_21d2bc4: @ 21d2bc4 :thumb
	mov     r0, #0x2
	pop     {r3-r5,pc}
@ 0x21d2bc8

.thumb
branch_21d2bc8: @ 21d2bc8 :thumb
	mov     r0, #0x1
	bl      0x205bea8
	mov     r0, #0xc5
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r5, r0
	bge     branch_21d2bfa
	ldr     r0, [pc, #0xc4] @ 0x21d2ca0, (=0x93f4)
	ldr     r0, [r4, r0]
	cmp     r0, #0x2
	bne     branch_21d2bea
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d2b3c
	b       branch_21d2bfa
@ 0x21d2bea

.thumb
branch_21d2bea: @ 21d2bea :thumb
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d2b3c
	b       branch_21d2bfa
@ 0x21d2bf4

.thumb
branch_21d2bf4: @ 21d2bf4 :thumb
	mov     r0, #0x8
	bl      0x205bea8
.thumb
branch_21d2bfa: @ 21d2bfa :thumb
	mov     r0, #0xc5
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r5, r0
	bge     branch_21d2c44
	bl      0x2035e18
	mov     r1, #0xc6
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	bl      0x20318ec
	mov     r1, #0xc7
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [pc, #0x88] @ 0x21d2ca4, (=0x9404)
	ldr     r2, [r4, r0]
	cmp     r2, #0x0
	beq     branch_21d2c44
	.hword  0x1d00 @ add r0, r0, #0x4
	ldr     r1, [r4, r1]
	ldr     r0, [r4, r0]
	tst     r0, r1
	bne     branch_21d2c44
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d2b3c
	ldr     r1, [pc, #0x6c] @ 0x21d2ca0, (=0x93f4)
	mov     r0, #0x1
	str     r0, [r4, r1]
	mov     r0, r1
	mov     r2, #0x0
	add     r0, #0x10
	str     r2, [r4, r0]
	add     r1, #0x14
	str     r2, [r4, r1]
.thumb
branch_21d2c44: @ 21d2c44 :thumb
	bl      Function_21d2a30
	mov     r1, #0xc5
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	bl      0x2035e18
	mov     r1, #0xc6
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	cmp     r1, r0
	bge     branch_21d2c98
	ldr     r0, [pc, #0x40] @ 0x21d2ca0, (=0x93f4)
	mov     r1, #0x2
	str     r1, [r4, r0]
	mov     r1, #0x1
	add     r0, #0x10
	str     r1, [r4, r0]
	bl      0x20318ec
	mov     r1, #0xc7
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	eor     r0, r1
	ldr     r1, [pc, #0x30] @ 0x21d2ca8, (=0x9408)
	str     r0, [r4, r1]
	ldr     r1, [r4, r1]
	mov     r0, #0x0
	.hword  0x1e89 @ sub r1, r1, #0x2
	cmp     r1, #0xe
	bhi     branch_21d2c90
	mov     r2, #0x1
	mov     r3, r2
	lsl     r3, r1
	ldr     r1, [pc, #0x20] @ 0x21d2cac, (=0x4045)
	tst     r1, r3
	beq     branch_21d2c90
	mov     r0, r2
.thumb
branch_21d2c90: @ 21d2c90 :thumb
	cmp     r0, #0x0
	bne     branch_21d2c98
	bl      ErrorHandling
.thumb
branch_21d2c98: @ 21d2c98 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d2c9c

.word 0x93f8 @ 0x21d2c9c
.word 0x93f4 @ 0x21d2ca0
.word 0x9404 @ 0x21d2ca4
.word 0x9408 @ 0x21d2ca8
.word 0x4045 @ 0x21d2cac
.thumb
Function_21d2cb0: @ 21d2cb0 :thumb
	mov     r2, #0xc2
	lsl     r2, r2, #2
	str     r1, [r0, r2]
	bx      lr
@ 0x21d2cb8

.thumb
Function_21d2cb8: @ 21d2cb8 :thumb
	push    {r3,r4}
	mov     r3, #0xc2
	lsl     r3, r3, #2
	.hword  0x1f1c @ sub r4, r3, #0x4
	ldr     r2, [r0, r3]
	ldr     r4, [r0, r4]
	cmp     r4, r2
	beq     branch_21d2ce2
	cmp     r1, #0x2
	beq     branch_21d2cd4
	.hword  0x1f19 @ sub r1, r3, #0x4
	str     r2, [r0, r1]
	pop     {r3,r4}
	bx      lr
@ 0x21d2cd4

.thumb
branch_21d2cd4: @ 21d2cd4 :thumb
	ldr     r1, [pc, #0x10] @ 0x21d2ce8, (=0x21d3184)
	lsl     r4, r2, #3
	ldr     r1, [r1, r4]
	cmp     r1, #0x0
	beq     branch_21d2ce2
	.hword  0x1f19 @ sub r1, r3, #0x4
	str     r2, [r0, r1]
.thumb
branch_21d2ce2: @ 21d2ce2 :thumb
	pop     {r3,r4}
	bx      lr
@ 0x21d2ce6


.align 2


.word 0x21d3184 @ 0x21d2ce8
.thumb
Function_21d2cec: @ 21d2cec :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x18] @ 0x21d2d0c, (=0x93f8)
	ldr     r2, [r4, r0]
	cmp     r2, #0x0
	bne     branch_21d2d08
	sub     r0, #0x8
	ldr     r0, [r4, r0]
	bl      0x2015958
	ldr     r1, [pc, #0x8] @ 0x21d2d0c, (=0x93f8)
	mov     r0, #0x1
	str     r0, [r4, r1]
	pop     {r4,pc}
@ 0x21d2d08

.thumb
branch_21d2d08: @ 21d2d08 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d2d0c

.word 0x93f8 @ 0x21d2d0c
.thumb
Function_21d2d10: @ 21d2d10 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x14] @ 0x21d2d2c, (=0x93f8)
	ldr     r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_21d2d2a
	sub     r0, #0x8
	ldr     r0, [r4, r0]
	bl      0x2015a54
	ldr     r0, [pc, #0x4] @ 0x21d2d2c, (=0x93f8)
	mov     r1, #0x0
	str     r1, [r4, r0]
.thumb
branch_21d2d2a: @ 21d2d2a :thumb
	pop     {r4,pc}
@ 0x21d2d2c

.word 0x93f8 @ 0x21d2d2c



.thumb
Function_21d2d30: @ 21d2d30 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x14] @ 0x21d2d48, (=Unknown_21d2dd4)
	bl      0x2022664
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_21d2d44
	mov     r0, #0x1
	pop     {r3,pc}

branch_21d2d44: @ 21d2d44 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d2d48

.word Unknown_21d2dd4 @ 0x21d2d48



.thumb
Function_21d2d4c: @ 21d2d4c :thumb
	push    {r4-r7}
	mov     r5, r1
	ldrh    r1, [r5, #0x0]
	mov     r4, r2
	mov     r2, r3
	cmp     r1, #0x0
	beq     branch_21d2d88
	ldrh    r1, [r5, #0x2]
	strb    r1, [r0, #0x0]
	ldrh    r1, [r5, #0x4]
	strb    r1, [r0, #0x4]
	ldrh    r1, [r5, #0x0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	lsl     r1, r1, #3
	add     r3, r5, r1
	ldrh    r1, [r3, #0x2]
	strb    r1, [r0, #0x1]
	ldrh    r1, [r3, #0x4]
	strb    r1, [r0, #0x5]
	mov     r1, #0x0
	mov     r3, r1
.thumb
branch_21d2d76: @ 21d2d76 :thumb
	add     r6, r0, r1
	ldrb    r7, [r0, r1]
	ldrb    r6, [r6, #0x4]
	add     r6, r7, r6
	bne     branch_21d2d82
	strh    r3, [r5, #0x0]
.thumb
branch_21d2d82: @ 21d2d82 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r1, #0x2
	blt     branch_21d2d76
.thumb
branch_21d2d88: @ 21d2d88 :thumb
	ldrh    r5, [r5, #0x0]
	cmp     r5, #0x2
	bcc     branch_21d2d98
	ldrb    r3, [r0, #0x8]
	mov     r1, #0x38
	bic     r3, r1
	mov     r1, #0x10
	b       branch_21d2da6
@ 0x21d2d98

.thumb
branch_21d2d98: @ 21d2d98 :thumb
	ldrb    r1, [r0, #0x8]
	mov     r3, #0x38
	bic     r1, r3
	lsl     r3, r5, #24
	lsr     r3, r3, #24
	lsl     r3, r3, #29
	lsr     r3, r3, #26
.thumb
branch_21d2da6: @ 21d2da6 :thumb
	orr     r1, r3
	strb    r1, [r0, #0x8]
	ldrb    r1, [r0, #0x8]
	mov     r3, #0x7
	bic     r1, r3
	lsl     r3, r4, #24
	lsr     r4, r3, #24
	mov     r3, #0x7
	and     r3, r4
	orr     r1, r3
	strb    r1, [r0, #0x8]
	ldrb    r3, [r0, #0x8]
	mov     r1, #0xc0
	bic     r3, r1
	lsl     r1, r2, #24
	lsr     r1, r1, #24
	lsl     r1, r1, #30
	lsr     r1, r1, #24
	orr     r1, r3
	strb    r1, [r0, #0x8]
	pop     {r4-r7}
	bx      lr
@ 0x21d2dd2



.align 2, 0
Unknown_21d2dd4: @ 0x21d2dd4
.incbin "./baserom/overlay/overlay_0058.bin", 0x2054, 0x21d3240 - 0x21d2dd4


@end 0x21d3240




