

.section .iwram5, "ax"



.thumb
Startpoint_21d0d80: @ 21d0d80 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	bl      Function_201c2b8
	bl      Function_201dcac
	bl      Function_200a858
	ldr     r0, [r4, #0x38]
	bl      Function_206285c
	bl      Function_21edc8c
	bl      Function_2020d68
	pop     {r4,pc}
@ 0x21d0da2


.incbin "./baserom/overlay/overlay_0005.bin", 0x22, 0x21dc018 - 0x21d0da2


.thumb
Function_21dc018: @ 21dc018 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	ldr     r1, [sp, #0x2c]
	mov     r4, r0
	mov     r5, r2
	mov     r7, r3
	cmp     r1, #0x0
	bne     branch_21dc046
	ldr     r2, [pc, #0x11c] @ 0x21dc148, (=#0x169)
	mov     r0, #0x1
	mov     r1, #0x1a
	mov     r3, #0x4
	bl      Function_200b144
	mov     r1, r6
	add     r1, #0x8c
	str     r0, [r1, #0x0]
	mov     r0, r6
	add     r0, #0x97
	ldrb    r1, [r0, #0x0]
	mov     r0, #0x2
	orr     r1, r0
	b       branch_21dc056
@ 0x21dc046

.thumb
branch_21dc046: @ 21dc046 :thumb
	mov     r0, r6
	add     r0, #0x8c
	str     r1, [r0, #0x0]
	mov     r0, r6
	add     r0, #0x97
	ldrb    r1, [r0, #0x0]
	mov     r0, #0x2
	bic     r1, r0
.thumb
branch_21dc056: @ 21dc056 :thumb
	mov     r0, r6
	add     r0, #0x97
	strb    r1, [r0, #0x0]
	mov     r0, r6
	ldr     r1, [sp, #0x24]
	add     r0, #0x90
	str     r1, [r0, #0x0]
	mov     r0, r6
	str     r4, [r6, #0x0]
	ldr     r1, [sp, #0x20]
	add     r0, #0xa0
	str     r1, [r0, #0x0]
	mov     r1, r6
	add     r1, #0xa0
	ldr     r1, [r1, #0x0]
	mov     r0, #0x0
	strh    r0, [r1, #0x0]
	mov     r1, r6
	add     r1, #0xa4
	str     r0, [r1, #0x0]
	mov     r1, r6
	add     r1, #0xa8
	str     r0, [r1, #0x0]
	mov     r1, r6
	add     r1, #0x97
	ldrb    r3, [r1, #0x0]
	add     r4, sp, #0x8
	mov     r1, #0x1
	bic     r3, r1
	ldrb    r2, [r4, #0x14]
	mov     r1, #0x1
	and     r1, r2
	mov     r2, r3
	orr     r2, r1
	mov     r1, r6
	add     r1, #0x97
	strb    r2, [r1, #0x0]
	mov     r1, r6
	ldrb    r2, [r4, #0x10]
	add     r1, #0x96
	mov     r3, #0x40
	strb    r2, [r1, #0x0]
	mov     r1, r6
	add     r1, #0x97
	ldrb    r1, [r1, #0x0]
	bic     r1, r3
	mov     r3, r6
	add     r3, #0x97
	strb    r1, [r3, #0x0]
	mov     r1, r6
	add     r1, #0x97
	ldrb    r1, [r1, #0x0]
	mov     r3, #0x80
	bic     r1, r3
	mov     r3, r6
	add     r3, #0x97
	strb    r1, [r3, #0x0]
	mov     r1, r6
	add     r1, #0x98
	strb    r5, [r1, #0x0]
	mov     r1, r6
	add     r1, #0x99
	strb    r7, [r1, #0x0]
	mov     r1, r6
	add     r1, #0x9b
	strb    r0, [r1, #0x0]
	ldr     r1, [sp, #0x28]
	mov     r3, #0x3
	str     r1, [r6, #0x18]
	mov     r1, r6
	add     r1, #0x94
	strb    r3, [r1, #0x0]
	mov     r1, #0xb7
	lsl     r1, r1, #2
	strh    r2, [r6, r1]
	mov     r2, r6
	mov     r3, r0
.thumb
branch_21dc0f0: @ 21dc0f0 :thumb
	mov     r1, r2
	add     r1, #0xbc
	str     r3, [r1, #0x0]
	mov     r1, r2
	add     r1, #0xc0
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r2, #0x8
	str     r3, [r1, #0x0]
	cmp     r0, #0x1c
	blt     branch_21dc0f0
	mov     r7, #0xa9
	mov     r1, r6
	mov     r2, r6
	mov     r5, #0x0
	mov     r0, #0xff
	lsl     r7, r7, #2
.thumb
branch_21dc110: @ 21dc110 :thumb
	mov     r4, #0x71
	lsl     r4, r4, #2
	str     r5, [r1, r4]
	.hword  0x1d24 @ add r4, r4, #0x4
	str     r5, [r1, r4]
	strh    r0, [r2, r7]
	.hword  0x1c5b @ add r3, r3, #0x1
	add     r1, #0x8
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r3, #0x1c
	blt     branch_21dc110
	mov     r4, r6
	mov     r7, #0x50
.thumb
branch_21dc12a: @ 21dc12a :thumb
	mov     r0, r7
	mov     r1, #0x4
	bl      Function_2023790
	str     r0, [r4, #0x1c]
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, #0x1c
	blt     branch_21dc12a
	add     r6, #0xa0
	ldr     r1, [pc, #0xc] @ 0x21dc14c, (=#0xeeee)
	ldr     r0, [r6, #0x0]
	strh    r1, [r0, #0x0]
	pop     {r3-r7,pc}
@ 0x21dc146


.incbin "./baserom/overlay/overlay_0005.bin", 0xb3c6, 0x21dc148 - 0x21dc146


.word 0x169 @ 0x21dc148
.word 0xeeee @ 0x21dc14c
.thumb
Function_21dc150: @ 21dc150 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r7, r1
	mov     r1, #0x2e
	mov     r6, r0
	mov     r0, #0x4
	lsl     r1, r1, #4
	str     r2, [sp, #0x18]
	mov     r5, r3
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21dc170
	add     sp, #0x1c
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x21dc170

.thumb
branch_21dc170: @ 21dc170 :thumb
	mov     r2, #0x2e
	mov     r1, #0x0
	lsl     r2, r2, #4
	blx     Function_20d5124
	str     r5, [sp, #0x0]
	add     r0, sp, #0x20
	ldrb    r0, [r0, #0x10]
	mov     r1, r4
	mov     r2, r7
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x34]
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x38]
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x3c]
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x40]
	str     r0, [sp, #0x14]
	ldr     r3, [sp, #0x18]
	mov     r0, r6
	bl      Function_21dc018
	mov     r0, r4
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x21dc1a4


.incbin "./baserom/overlay/overlay_0005.bin", 0xb424, 0x21dcc00 - 0x21dc1a4


.thumb
Function_21dcc00: @ 21dcc00 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	str     r1, [sp, #0xc]
	mov     r5, r0
	mov     r0, #0x50
	mov     r1, #0x4
	str     r2, [sp, #0x10]
	mov     r7, r3
	bl      Function_2023790
	mov     r4, r0
	mov     r0, #0x50
	mov     r1, #0x4
	bl      Function_2023790
	mov     r6, r0
	mov     r0, r5
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	ldr     r1, [sp, #0xc]
	mov     r2, r4
	bl      Function_200b1b8
	mov     r0, r5
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	mov     r1, r6
	mov     r2, r4
	bl      Function_200c388
	str     r7, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r1, #0x0
	str     r1, [sp, #0x8]
	add     r5, #0x8
	ldr     r3, [sp, #0x10]
	mov     r0, r5
	mov     r2, r6
	bl      Function_201d738
	mov     r0, r4
	bl      Function_20237bc
	mov     r0, r6
	bl      Function_20237bc
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21dcc62


.incbin "./baserom/overlay/overlay_0005.bin", 0xbee2, 0x21dd250 - 0x21dcc62


.thumb
Function_21dd250: @ 21dd250 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r4, #0x0
	str     r4, [sp, #0x0]
	str     r3, [sp, #0x4]
	ldr     r5, [sp, #0x20]
	mov     r3, r4
	str     r5, [sp, #0x8]
	str     r4, [sp, #0xc]
	str     r4, [sp, #0x10]
	bl      Function_21dc150
	mov     r4, r0
	add     r0, #0x99
	ldrb    r0, [r0, #0x0]
	mov     r3, r4
	mov     r1, r4
	str     r0, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	mov     r0, #0x10
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x3d
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x0]
	add     r3, #0x98
	ldrb    r3, [r3, #0x0]
	ldr     r0, [r0, #0x8]
	add     r1, #0x8
	mov     r2, #0x3
	bl      Function_201a7e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	ldr     r2, [pc, #0xf4] @ 0x21dd394, (=#0x3d9)
	ldr     r0, [r0, #0x8]
	mov     r1, #0x3
	mov     r3, #0xb
	bl      Function_200daa4
	mov     r0, r4
	ldr     r2, [pc, #0xe4] @ 0x21dd394, (=#0x3d9)
	add     r0, #0x8
	mov     r1, #0x1
	mov     r3, #0xb
	bl      Function_200dc48
	mov     r0, #0x50
	str     r0, [sp, #0x0]
	mov     r0, #0x80
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, #0x0
	add     r0, #0x8
	mov     r1, #0xf
	mov     r3, r2
	bl      Function_201ae78
	mov     r2, #0x0
	ldr     r1, [pc, #0xc4] @ 0x21dd398, (=#0x111)
	mov     r0, r4
	mov     r3, r2
	bl      Function_21dcc00
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	add     r2, sp, #0x10
	ldrb    r2, [r2, #0x14]
	mov     r0, r5
	mov     r1, #0x0
	mov     r3, #0x3
	bl      Function_200b60c
	ldr     r1, [pc, #0xac] @ 0x21dd39c, (=#0x115)
	mov     r0, r4
	mov     r2, #0x0
	mov     r3, #0x10
	bl      Function_21dcc00
	ldr     r1, [pc, #0xa4] @ 0x21dd3a0, (=#0x112)
	mov     r0, r4
	mov     r2, #0x0
	mov     r3, #0x20
	bl      Function_21dcc00
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	add     r2, sp, #0x10
	ldrb    r2, [r2, #0x18]
	mov     r0, r5
	mov     r1, #0x0
	mov     r3, #0x3
	bl      Function_200b60c
	ldr     r1, [pc, #0x80] @ 0x21dd39c, (=#0x115)
	mov     r0, r4
	mov     r2, #0x0
	mov     r3, #0x30
	bl      Function_21dcc00
	ldr     r1, [pc, #0x7c] @ 0x21dd3a4, (=#0x113)
	mov     r0, r4
	mov     r2, #0x0
	mov     r3, #0x40
	bl      Function_21dcc00
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	add     r2, sp, #0x10
	ldrb    r2, [r2, #0x1c]
	mov     r0, r5
	mov     r1, #0x0
	mov     r3, #0x3
	bl      Function_200b60c
	ldr     r1, [pc, #0x54] @ 0x21dd39c, (=#0x115)
	mov     r0, r4
	mov     r2, #0x0
	mov     r3, #0x50
	bl      Function_21dcc00
	mov     r1, #0x45
	mov     r0, r4
	lsl     r1, r1, #2
	mov     r2, #0x0
	mov     r3, #0x60
	bl      Function_21dcc00
	add     r2, sp, #0x30
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldrb    r2, [r2, #0x0]
	mov     r0, r5
	mov     r1, #0x0
	mov     r3, #0x3
	bl      Function_200b60c
	ldr     r1, [pc, #0x24] @ 0x21dd39c, (=#0x115)
	mov     r0, r4
	mov     r2, #0x0
	mov     r3, #0x70
	bl      Function_21dcc00
	mov     r0, r4
	mov     r1, r4
	add     r0, #0x8
	add     r1, #0xb0
	str     r0, [r1, #0x0]
	bl      Function_201a954
	mov     r0, r4
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x21dd394

.word 0x3d9 @ 0x21dd394
.word 0x111 @ 0x21dd398
.word 0x115 @ 0x21dd39c
.word 0x112 @ 0x21dd3a0
.word 0x113 @ 0x21dd3a4



.thumb
Function_21dd3a8: @ 21dd3a8 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	add     r0, #0xb0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_200dc9c
	mov     r0, r6
	add     r0, #0xb0
	ldr     r0, [r0, #0x0]
	bl      Function_201a8fc
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_21dd3c4: @ 21dd3c4 :thumb
	ldr     r0, [r5, #0x1c]
	bl      Function_20237bc
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x1c
	blt     branch_21dd3c4
	mov     r0, r6
	add     r0, #0x97
	ldrb    r0, [r0, #0x0]
	lsl     r0, r0, #30
	lsr     r0, r0, #31
	cmp     r0, #0x1
	bne     branch_21dd3ea
	mov     r0, r6
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	bl      Function_200b190
.thumb
branch_21dd3ea: @ 21dd3ea :thumb
	mov     r0, r6
	bl      Function_20181c4
	pop     {r4-r6,pc}
@ 0x21dd3f2


.incbin "./baserom/overlay/overlay_0005.bin", 0xc672, 0x21eb1a0 - 0x21dd3f2


.thumb
Function_21eb1a0: @ 21eb1a0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2062920
	ldr     r1, [pc, #0x138] @ 0x21eb2e4, (=#0x107)
	cmp     r0, r1
	bgt     branch_21eb24a
	bge     branch_21eb29c
	cmp     r0, #0x98
	bgt     branch_21eb1dc
	bge     branch_21eb2b0
	cmp     r0, #0x15
	bgt     branch_21eb1c2
	bge     branch_21eb29c
	cmp     r0, #0x0
	beq     branch_21eb29c
	b       branch_21eb2c6
@ 0x21eb1c2

.thumb
branch_21eb1c2: @ 21eb1c2 :thumb
	cmp     r0, #0x64
	bgt     branch_21eb1d6
	cmp     r0, #0x61
	blt     branch_21eb2c6
	beq     branch_21eb29c
	cmp     r0, #0x62
	beq     branch_21eb29c
	cmp     r0, #0x64
	beq     branch_21eb2c2
	b       branch_21eb2c6
@ 0x21eb1d6

.thumb
branch_21eb1d6: @ 21eb1d6 :thumb
	cmp     r0, #0x97
	beq     branch_21eb2b0
	b       branch_21eb2c6
@ 0x21eb1dc

.thumb
branch_21eb1dc: @ 21eb1dc :thumb
	cmp     r0, #0xb0
	bgt     branch_21eb1e8
	bge     branch_21eb29c
	cmp     r0, #0x99
	beq     branch_21eb2b0
	b       branch_21eb2c6
@ 0x21eb1e8

.thumb
branch_21eb1e8: @ 21eb1e8 :thumb
	cmp     r0, #0xb1
	bgt     branch_21eb1f0
	beq     branch_21eb29c
	b       branch_21eb2c6
@ 0x21eb1f0

.thumb
branch_21eb1f0: @ 21eb1f0 :thumb
	mov     r1, r0
	sub     r1, #0xb2
	cmp     r1, #0x22
	bhi     branch_21eb2c6
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r6, r2, #2
	lsl     r6, r2, #2
	lsl     r6, r2, #2
	lsl     r6, r2, #2
	lsl     r0, r0, #3
	lsl     r0, r0, #3
	lsl     r0, r0, #3
	lsl     r0, r0, #3
	lsl     r6, r2, #2
	lsl     r6, r2, #2
	lsl     r6, r2, #2
	lsl     r6, r2, #2
	lsl     r0, r0, #3
	lsl     r0, r0, #3
	lsl     r0, r0, #3
	lsl     r0, r0, #3
	lsl     r0, r0, #3
	lsl     r0, r4, #2
	lsl     r6, r2, #2
	lsl     r6, r2, #2
	lsl     r6, r2, #2
	lsl     r6, r2, #2
	lsl     r6, r2, #2
	lsl     r6, r2, #2
	lsl     r0, r0, #3
	lsl     r0, r0, #3
	lsl     r0, r0, #3
	lsl     r0, r0, #3
	lsl     r0, r0, #3
	lsl     r0, r0, #3
	lsl     r0, r0, #3
	lsl     r0, r0, #3
	lsl     r6, r2, #2
	lsl     r6, r2, #2
	lsl     r6, r2, #2
.thumb
branch_21eb24a: @ 21eb24a :thumb
	ldr     r1, [pc, #0x9c] @ 0x21eb2e8, (=#0x10f)
	cmp     r0, r1
	bgt     branch_21eb278
	bge     branch_21eb29c
	.hword  0x1eca @ sub r2, r1, #0x3
	cmp     r0, r2
	bgt     branch_21eb262
	bge     branch_21eb29c
	.hword  0x1fc9 @ sub r1, r1, #0x7
	cmp     r0, r1
	beq     branch_21eb2b8
	b       branch_21eb2c6
@ 0x21eb262

.thumb
branch_21eb262: @ 21eb262 :thumb
	.hword  0x1e8a @ sub r2, r1, #0x2
	cmp     r0, r2
	bgt     branch_21eb270
	.hword  0x1e89 @ sub r1, r1, #0x2
	cmp     r0, r1
	beq     branch_21eb29c
	b       branch_21eb2c6
@ 0x21eb270

.thumb
branch_21eb270: @ 21eb270 :thumb
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	beq     branch_21eb29c
	b       branch_21eb2c6
@ 0x21eb278

.thumb
branch_21eb278: @ 21eb278 :thumb
	add     r2, r1, #0x2
	cmp     r0, r2
	bgt     branch_21eb288
	bge     branch_21eb29c
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r0, r1
	beq     branch_21eb29c
	b       branch_21eb2c6
@ 0x21eb288

.thumb
branch_21eb288: @ 21eb288 :thumb
	add     r2, r1, #0x3
	cmp     r0, r2
	bgt     branch_21eb296
	.hword  0x1cc9 @ add r1, r1, #0x3
	cmp     r0, r1
	beq     branch_21eb29c
	b       branch_21eb2c6
@ 0x21eb296

.thumb
branch_21eb296: @ 21eb296 :thumb
	.hword  0x1d09 @ add r1, r1, #0x4
	cmp     r0, r1
	bne     branch_21eb2c6
.thumb
branch_21eb29c: @ 21eb29c :thumb
	mov     r0, r4
	bl      Function_2062af0
	ldr     r0, [r0, #0x4]
	pop     {r4,pc}
@ 0x21eb2a6


.incbin "./baserom/overlay/overlay_0005.bin", 0x1a526, 0x21eb2b0 - 0x21eb2a6


.thumb
branch_21eb2b0: @ 21eb2b0 :thumb
	mov     r0, r4
	bl      Function_21ecb80
	pop     {r4,pc}
@ 0x21eb2b8

.thumb
branch_21eb2b8: @ 21eb2b8 :thumb
	mov     r0, r4
	bl      Function_2062af0
	ldr     r0, [r0, #0x4]
	pop     {r4,pc}
@ 0x21eb2c2

.thumb
branch_21eb2c2: @ 21eb2c2 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21eb2c6

.thumb
branch_21eb2c6: @ 21eb2c6 :thumb
	mov     r0, r4
	bl      Function_21ecd04
	ldr     r0, [r0, #0x4]
	lsl     r0, r0, #28
	lsr     r0, r0, #28
	cmp     r0, #0x1
	bne     branch_21eb2e0
	mov     r0, r4
	bl      Function_2062af0
	ldr     r0, [r0, #0x4]
	pop     {r4,pc}
@ 0x21eb2e0

.thumb
branch_21eb2e0: @ 21eb2e0 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21eb2e4

.word 0x107 @ 0x21eb2e4
.word 0x10f @ 0x21eb2e8

.incbin "./baserom/overlay/overlay_0005.bin", 0x1a56c, 0x21ecb80 - 0x21eb2ec


.thumb
Function_21ecb80: @ 21ecb80 :thumb
	push    {r3,lr}
	bl      Function_2062af0
	bl      Function_21ecb8c
	pop     {r3,pc}
@ 0x21ecb8c

.thumb
Function_21ecb8c: @ 21ecb8c :thumb
	ldr     r0, [r0, #0x0]
	bx      lr
@ 0x21ecb90


.incbin "./baserom/overlay/overlay_0005.bin", 0x1be10, 0x21ecd04 - 0x21ecb90


.thumb
Function_21ecd04: @ 21ecd04 :thumb
	push    {r3,lr}
	bl      Function_2062920
	bl      Function_21ecd10
	pop     {r3,pc}
@ 0x21ecd10

.thumb
Function_21ecd10: @ 21ecd10 :thumb
	push    {r3,lr}
	ldr     r3, [pc, #0x1c] @ 0x21ecd30, (=#0x21fc194)
	ldr     r1, [pc, #0x1c] @ 0x21ecd34, (=#0xffff)
.thumb
branch_21ecd16: @ 21ecd16 :thumb
	ldr     r2, [r3, #0x0]
	cmp     r2, r0
	bne     branch_21ecd20
	mov     r0, r3
	pop     {r3,pc}
@ 0x21ecd20

.thumb
branch_21ecd20: @ 21ecd20 :thumb
	add     r3, #0x8
	ldr     r2, [r3, #0x0]
	cmp     r2, r1
	bne     branch_21ecd16
	bl      Function_2022974
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21ecd30

.word 0x21fc194 @ 0x21ecd30
.word 0xffff @ 0x21ecd34

.incbin "./baserom/overlay/overlay_0005.bin", 0x1bfb8, 0x21ecda0 - 0x21ecd38


.thumb
Function_21ecda0: @ 21ecda0 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x30
	mov     r4, r1
	mov     r5, r0
	add     r1, sp, #0x24
	bl      Function_2063050
	mov     r0, r5
	add     r1, sp, #0x18
	bl      Function_2063078
	mov     r0, r5
	add     r1, sp, #0xc
	bl      Function_206309c
	mov     r0, r5
	add     r1, sp, #0x0
	bl      Function_20630bc
	ldr     r1, [sp, #0x24]
	ldr     r0, [sp, #0x18]
	ldr     r2, [sp, #0xc]
	add     r0, r1, r0
	ldr     r3, [sp, #0x0]
	add     r0, r2, r0
	add     r0, r3, r0
	str     r0, [r4, #0x0]
	ldr     r1, [sp, #0x28]
	ldr     r0, [sp, #0x1c]
	ldr     r2, [sp, #0x10]
	add     r0, r1, r0
	ldr     r3, [sp, #0x4]
	add     r0, r2, r0
	add     r0, r3, r0
	str     r0, [r4, #0x4]
	ldr     r1, [sp, #0x2c]
	ldr     r0, [sp, #0x20]
	ldr     r2, [sp, #0x14]
	add     r0, r1, r0
	ldr     r3, [sp, #0x8]
	add     r0, r2, r0
	add     r0, r3, r0
	str     r0, [r4, #0x8]
	add     sp, #0x30
	pop     {r3-r5,pc}
@ 0x21ecdfa


.incbin "./baserom/overlay/overlay_0005.bin", 0x1c07a, 0x21edc8c - 0x21ecdfa


.thumb
Function_21edc8c: @ 21edc8c :thumb
	add     r0, #0xe0
	ldr     r0, [r0, #0x0]
	bx      lr
@ 0x21edc92


.incbin "./baserom/overlay/overlay_0005.bin", 0x1cf12, 0x21edeb4 - 0x21edc92


.thumb
Function_21edeb4: @ 21edeb4 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r1
	add     r1, sp, #0x0
	bl      Function_21ecda0
	mov     r0, #0x6
	ldr     r1, [sp, #0x8]
	lsl     r0, r0, #12
	add     r0, r1, r0
	str     r0, [sp, #0x8]
	mov     r0, r4
	add     r1, sp, #0x0
	bl      Function_20212a8
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x21eded8


.incbin "./baserom/overlay/overlay_0005.bin", 0x1d158, 0x21f6454 - 0x21eded8


.thumb
.globl Function_5_21f6454
Function_5_21f6454: @ 21f6454 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x48
	str     r0, [sp, #0x1c]
	add     r0, #0x80
	ldr     r6, [r0, #0x0]
	mov     r1, #0xf
	mov     r0, r6
	bl      Function_203f098
	str     r0, [sp, #0x2c]
	ldr     r0, [sp, #0x1c]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	ldr     r0, [sp, #0x1c]
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0x30]
	ldr     r0, [sp, #0x1c]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	ldr     r0, [sp, #0x1c]
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0x34]
	ldr     r0, [sp, #0x1c]
	bl      ScriptHandler_LoadHWord
	mov     r4, r0
	ldr     r0, [sp, #0x1c]
	bl      ScriptHandler_LoadHWord
	mov     r7, r0
	ldr     r0, [sp, #0x1c]
	bl      ScriptHandler_LoadHWord
	str     r0, [sp, #0x38]
	ldr     r0, [sp, #0x1c]
	mov     r2, #0x67
	str     r4, [r0, #0x64]
	mov     r0, #0x0
	mov     r1, #0x1a
	lsl     r2, r2, #2
	mov     r3, #0x20
	bl      Function_200b144
	str     r0, [sp, #0x20]
	mov     r0, r6
	mov     r1, r4
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	ldr     r0, [sp, #0x1c]
	mov     r1, #0x1
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_203f098
	mov     r5, r0
	mov     r0, r6
	mov     r1, r7
	bl      ScriptHandler_CheckLoadParameter
	mov     r7, r0
	ldr     r1, [sp, #0x38]
	mov     r0, r6
	bl      ScriptHandler_CheckLoadParameter
	mov     r2, #0x1
	str     r2, [sp, #0x0]
	ldr     r1, [sp, #0x2c]
	str     r4, [sp, #0x4]
	ldr     r1, [r1, #0x0]
	mov     r3, #0x0
	str     r1, [sp, #0x8]
	ldr     r1, [sp, #0x20]
	str     r5, [sp, #0xc]
	str     r1, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r0, [sp, #0x18]
	mov     r0, r6
	mov     r1, #0x14
	bl      Function_21f6704
	mov     r7, r0
	ldr     r0, [r6, #0xc]
	mov     r1, #0xb
	add     r2, sp, #0x44
	bl      Function_20308a0
	str     r0, [sp, #0x28]
	ldr     r0, [sp, #0x44]
	cmp     r0, #0x1
	bne     branch_21f6570
	ldr     r1, [sp, #0x34]
	mov     r0, #0x20
	lsl     r2, r1, #1
	ldr     r1, [pc, #0xa0] @ 0x21f65c4, (=#0x220210c)
	ldrh    r1, [r1, r2]
	add     r2, sp, #0x40
	bl      Function_21f65fc
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x40]
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_21f656a
	ldr     r0, [sp, #0x30]
	ldr     r5, [sp, #0x24]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x3c]
.thumb
branch_21f653e: @ 21f653e :thumb
	ldr     r0, [sp, #0x3c]
	bl      Function_205e584
	mov     r2, r0
	ldrh    r3, [r5, #0x0]
	ldr     r0, [r6, #0xc]
	ldr     r1, [sp, #0x28]
	bl      Function_20308bc
	cmp     r0, #0x0
	beq     branch_21f6560
	ldrh    r1, [r5, #0x0]
	mov     r0, r7
	mov     r2, #0xff
	mov     r3, r1
	bl      Function_21f6760
.thumb
branch_21f6560: @ 21f6560 :thumb
	ldr     r0, [sp, #0x40]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r4, r0
	blt     branch_21f653e
.thumb
branch_21f656a: @ 21f656a :thumb
	ldr     r0, [sp, #0x24]
	bl      0x20181c4
.thumb
branch_21f6570: @ 21f6570 :thumb
	ldr     r0, [sp, #0x28]
	cmp     r0, #0x0
	beq     branch_21f657a
	bl      Function_20181c4
.thumb
branch_21f657a: @ 21f657a :thumb
	ldr     r2, [pc, #0x4c] @ 0x21f65c8, (=#0x169)
	mov     r0, #0x1
	mov     r1, #0x1a
	mov     r3, #0x20
	bl      Function_200b144
	mov     r4, r0
	mov     r0, r7
	mov     r1, r4
	bl      Function_21f661c
	ldr     r3, [pc, #0x38] @ 0x21f65cc, (=#0xfffe)
	mov     r0, r7
	mov     r1, #0xc
	mov     r2, #0xff
	bl      Function_21f6760
	mov     r0, r4
	bl      Function_200b190
	ldr     r1, [sp, #0x20]
	mov     r0, r7
	bl      Function_21f661c
	mov     r0, r7
	bl      Function_21f6768
	ldr     r0, [sp, #0x1c]
	ldr     r1, [pc, #0x1c] @ 0x21f65d0, (=#0x21f65d5)
	bl      Function_203e764
	ldr     r0, [sp, #0x20]
	bl      Function_200b190
	mov     r0, #0x1
	add     sp, #0x48
	pop     {r3-r7,pc}
@ 0x21f65c4

.word 0x220210c @ 0x21f65c4
.word 0x169 @ 0x21f65c8
.word 0xfffe @ 0x21f65cc
.word 0x21f65d5 @ 0x21f65d0

.incbin "./baserom/overlay/overlay_0005.bin", 0x25854, 0x21f65fc - 0x21f65d4


.thumb
Function_21f65fc: @ 21f65fc :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r2
	mov     r2, #0x0
	mov     r3, r0
	str     r2, [sp, #0x0]
	add     r0, sp, #0x8
	str     r0, [sp, #0x4]
	mov     r0, #0x4b
	bl      Function_2007068
	ldr     r1, [sp, #0x8]
	lsr     r1, r1, #1
	str     r1, [r4, #0x0]
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x21f661c

.thumb
Function_21f661c: @ 21f661c :thumb
	mov     r2, #0x7f
	lsl     r2, r2, #2
	str     r1, [r0, r2]
	bx      lr
@ 0x21f6624

.thumb
Function_21f6624: @ 21f6624 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r7, r2
	mov     r2, #0x7f
	ldr     r1, [sp, #0x2c]
	lsl     r2, r2, #2
	str     r1, [r6, r2]
	mov     r1, r2
	add     r1, #0xb
	mov     r5, r3
	ldrb    r1, [r6, r1]
	mov     r3, #0x2
	bic     r1, r3
	mov     r3, r2
	add     r3, #0xb
	strb    r1, [r6, r3]
	ldr     r3, [sp, #0x24]
	add     r1, r2, #0x4
	str     r3, [r6, r1]
	str     r0, [r6, #0x0]
	mov     r0, r2
	ldr     r1, [sp, #0x20]
	add     r0, #0x14
	str     r1, [r6, r0]
	mov     r0, r2
	add     r0, #0x14
	ldr     r0, [r6, r0]
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	mov     r0, r2
	ldr     r3, [sp, #0x30]
	add     r0, #0x18
	str     r3, [r6, r0]
	mov     r0, r2
	ldr     r3, [sp, #0x34]
	add     r0, #0x1c
	str     r3, [r6, r0]
	mov     r0, r2
	add     r0, #0xb
	ldrb    r4, [r6, r0]
	mov     r0, #0x1
	bic     r4, r0
	add     r0, sp, #0x8
	ldrb    r3, [r0, #0x14]
	mov     r0, #0x1
	and     r0, r3
	mov     r3, r4
	orr     r3, r0
	mov     r0, r2
	add     r0, #0xb
	strb    r3, [r6, r0]
	add     r0, sp, #0x8
	mov     r3, r2
	ldrb    r0, [r0, #0x10]
	add     r3, #0xa
	strb    r0, [r6, r3]
	mov     r3, r2
	add     r3, #0xc
	strb    r7, [r6, r3]
	mov     r3, r2
	add     r3, #0xd
	strb    r5, [r6, r3]
	mov     r3, r2
	add     r3, #0xf
	strb    r1, [r6, r3]
	ldr     r3, [sp, #0x28]
	add     r2, #0x8
	str     r3, [r6, #0x18]
	mov     r3, #0x3
	strb    r3, [r6, r2]
	ldr     r2, [pc, #0x44] @ 0x21f66f8, (=#0x6f4)
	ldr     r7, [pc, #0x48] @ 0x21f66fc, (=#0x604)
	strh    r0, [r6, r2]
	mov     r2, r6
	mov     r3, r6
	mov     r5, r1
	mov     r0, #0xff
.thumb
branch_21f66be: @ 21f66be :thumb
	mov     r4, #0x91
	lsl     r4, r4, #2
	str     r5, [r2, r4]
	.hword  0x1d24 @ add r4, r4, #0x4
	str     r5, [r2, r4]
	strh    r0, [r3, r7]
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r2, #0x8
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r1, #0x78
	blt     branch_21f66be
	mov     r4, r6
	mov     r7, #0x50
.thumb
branch_21f66d8: @ 21f66d8 :thumb
	mov     r0, r7
	mov     r1, #0x4
	bl      Function_2023790
	str     r0, [r4, #0x1c]
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, #0x78
	blt     branch_21f66d8
	mov     r0, #0x21
	lsl     r0, r0, #4
	ldr     r1, [pc, #0x10] @ 0x21f6700, (=#0xeeee)
	ldr     r0, [r6, r0]
	strh    r1, [r0, #0x0]
	pop     {r3-r7,pc}
@ 0x21f66f6


.incbin "./baserom/overlay/overlay_0005.bin", 0x25976, 0x21f66f8 - 0x21f66f6


.word 0x6f4 @ 0x21f66f8
.word 0x604 @ 0x21f66fc
.word 0xeeee @ 0x21f6700



.thumb
Function_21f6704: @ 21f6704 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r7, r1
	mov     r6, r0
	ldr     r1, [pc, #0x4c] @ 0x21f675c, (=#0x6f8)
	mov     r0, #0x4
	str     r2, [sp, #0x20]
	mov     r5, r3
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21f6722
	add     sp, #0x24
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x21f6722

.thumb
branch_21f6722: @ 21f6722 :thumb
	ldr     r2, [pc, #0x38] @ 0x21f675c, (=#0x6f8)
	mov     r1, #0x0
	blx     Function_20d5124
	str     r5, [sp, #0x0]
	add     r0, sp, #0x28
	ldrb    r0, [r0, #0x10]
	mov     r1, r4
	mov     r2, r7
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x3c]
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x40]
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x44]
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x48]
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x4c]
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x50]
	str     r0, [sp, #0x1c]
	ldr     r3, [sp, #0x20]
	mov     r0, r6
	bl      Function_21f6624
	mov     r0, r4
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x21f675c

.word 0x6f8 @ 0x21f675c
.thumb
Function_21f6760: @ 21f6760 :thumb
	push    {r3,lr}
	bl      Function_21f6830
	pop     {r3,pc}
@ 0x21f6768

.thumb
Function_21f6768: @ 21f6768 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	ldr     r3, [pc, #0xb4] @ 0x21f6824, (=#0x20b)
	mov     r4, r0
	ldrb    r1, [r4, r3]
	cmp     r1, #0x8
	bls     branch_21f67a0
	sub     r0, r3, #0x2
	ldrb    r0, [r4, r0]
	mov     r1, r4
	.hword  0x1edb @ sub r3, r3, #0x3
	str     r0, [sp, #0x0]
	mov     r0, #0xb
	str     r0, [sp, #0x4]
	mov     r0, #0x10
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x1
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x0]
	ldrb    r3, [r4, r3]
	ldr     r0, [r0, #0x8]
	add     r1, #0x8
	mov     r2, #0x3
	bl      Function_201a7e8
	b       branch_21f67ca
@ 0x21f67a0

.thumb
branch_21f67a0: @ 21f67a0 :thumb
	sub     r0, r3, #0x2
	ldrb    r0, [r4, r0]
	.hword  0x1edb @ sub r3, r3, #0x3
	mov     r2, #0x3
	str     r0, [sp, #0x0]
	mov     r0, #0xb
	str     r0, [sp, #0x4]
	lsl     r0, r1, #25
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x1
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x0]
	mov     r1, r4
	ldrb    r3, [r4, r3]
	ldr     r0, [r0, #0x8]
	add     r1, #0x8
	bl      Function_201a7e8
.thumb
branch_21f67ca: @ 21f67ca :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	ldr     r2, [pc, #0x50] @ 0x21f6828, (=#0x3d9)
	ldr     r0, [r0, #0x8]
	mov     r1, #0x3
	mov     r3, #0xb
	bl      Function_200daa4
	mov     r0, r4
	ldr     r2, [pc, #0x44] @ 0x21f6828, (=#0x3d9)
	add     r0, #0x8
	mov     r1, #0x1
	mov     r3, #0xb
	bl      Function_200dc48
	mov     r0, r4
	bl      Function_21f68bc
	mov     r2, #0x87
	lsl     r2, r2, #2
	mov     r1, r2
	add     r0, r4, r2
	sub     r1, #0x8
	.hword  0x1f12 @ sub r2, r2, #0x4
	ldr     r1, [r4, r1]
	ldr     r2, [r4, r2]
	ldrh    r1, [r1, #0x0]
	ldrh    r2, [r2, #0x0]
	mov     r3, #0x4
	bl      Function_200112c
	mov     r1, #0x8f
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [pc, #0x14] @ 0x21f682c, (=#0x21f6a35)
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_200d9e8
	str     r0, [r4, #0x4]
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x21f6824

.word 0x20b @ 0x21f6824
.word 0x3d9 @ 0x21f6828
.word 0x21f6a35 @ 0x21f682c



.thumb
Function_21f6830: @ 21f6830 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	str     r1, [sp, #0x0]
	mov     r0, #0x50
	mov     r1, #0x4
	mov     r7, r2
	mov     r4, r3
	bl      Function_2023790
	mov     r6, r0
	mov     r0, #0x7f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r1, [sp, #0x0]
	mov     r2, r6
	bl      Function_200b1b8
	mov     r1, #0x2
	lsl     r1, r1, #8
	ldr     r0, [r5, r1]
	add     r1, #0xb
	ldrb    r1, [r5, r1]
	mov     r2, r6
	lsl     r1, r1, #2
	add     r1, r5, r1
	ldr     r1, [r1, #0x1c]
	bl      Function_200c388
	ldr     r2, [pc, #0x48] @ 0x21f68b4, (=#0x20b)
	ldrb    r1, [r5, r2]
	add     r2, #0x39
	lsl     r0, r1, #2
	add     r0, r5, r0
	lsl     r1, r1, #3
	ldr     r0, [r0, #0x1c]
	add     r1, r5, r1
	str     r0, [r1, r2]
	mov     r0, r6
	bl      Function_20237bc
	cmp     r4, #0xfa
	ldr     r0, [pc, #0x30] @ 0x21f68b4, (=#0x20b)
	bne     branch_21f6896
	ldrb    r1, [r5, r0]
	mov     r2, #0x2
	mvn     r2, r2
	lsl     r1, r1, #3
	add     r1, r5, r1
	add     r0, #0x3d
	str     r2, [r1, r0]
	b       branch_21f68a0
@ 0x21f6896

.thumb
branch_21f6896: @ 21f6896 :thumb
	ldrb    r1, [r5, r0]
	add     r0, #0x3d
	lsl     r1, r1, #3
	add     r1, r5, r1
	str     r4, [r1, r0]
.thumb
branch_21f68a0: @ 21f68a0 :thumb
	ldr     r1, [pc, #0x10] @ 0x21f68b4, (=#0x20b)
	ldrb    r0, [r5, r1]
	lsl     r0, r0, #1
	add     r2, r5, r0
	ldr     r0, [pc, #0xc] @ 0x21f68b8, (=#0x604)
	strh    r7, [r2, r0]
	ldrb    r0, [r5, r1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, r1]
	pop     {r3-r7,pc}
@ 0x21f68b4

.word 0x20b @ 0x21f68b4
.word 0x604 @ 0x21f68b8
.thumb
Function_21f68bc: @ 21f68bc :thumb
	push    {r4,r5}
	mov     r3, #0x91
	lsl     r3, r3, #2
	mov     r1, r3
	add     r2, r0, r3
	sub     r1, #0x28
	str     r2, [r0, r1]
	mov     r1, r3
	ldr     r2, [pc, #0xe8] @ 0x21f69b8, (=#0x21f69f1)
	sub     r1, #0x24
	str     r2, [r0, r1]
	mov     r1, r3
	ldr     r2, [pc, #0xe4] @ 0x21f69bc, (=#0x21f69cd)
	sub     r1, #0x20
	str     r2, [r0, r1]
	mov     r2, r0
	mov     r1, r3
	add     r2, #0x8
	sub     r1, #0x1c
	str     r2, [r0, r1]
	mov     r1, r3
	sub     r1, #0x39
	ldrb    r2, [r0, r1]
	mov     r1, r3
	sub     r1, #0x18
	strh    r2, [r0, r1]
	mov     r1, r3
	mov     r2, #0x8
	sub     r1, #0x16
	strh    r2, [r0, r1]
	mov     r1, r3
	mov     r2, #0x1
	sub     r1, #0x14
	strb    r2, [r0, r1]
	mov     r1, r3
	mov     r4, #0xc
	sub     r1, #0x13
	strb    r4, [r0, r1]
	mov     r1, r3
	mov     r4, #0x2
	sub     r1, #0x12
	strb    r4, [r0, r1]
	mov     r1, r3
	sub     r1, #0x11
	ldrb    r4, [r0, r1]
	mov     r1, #0xf
	bic     r4, r1
	orr     r4, r2
	mov     r2, r3
	sub     r2, #0x11
	strb    r4, [r0, r2]
	mov     r2, r3
	sub     r2, #0x11
	ldrb    r5, [r0, r2]
	mov     r2, #0xf0
	mov     r4, #0x10
	bic     r5, r2
	orr     r5, r4
	mov     r4, r3
	sub     r4, #0x11
	strb    r5, [r0, r4]
	mov     r4, r3
	sub     r4, #0x10
	ldrb    r4, [r0, r4]
	bic     r4, r1
	mov     r1, #0xf
	orr     r4, r1
	mov     r1, r3
	sub     r1, #0x10
	strb    r4, [r0, r1]
	mov     r1, r3
	sub     r1, #0x10
	ldrb    r4, [r0, r1]
	mov     r1, #0x20
	bic     r4, r2
	mov     r2, r4
	orr     r2, r1
	mov     r1, r3
	sub     r1, #0x10
	strb    r2, [r0, r1]
	mov     r1, r3
	sub     r1, #0xe
	ldrh    r2, [r0, r1]
	mov     r1, #0x7
	bic     r2, r1
	mov     r1, r3
	sub     r1, #0xe
	strh    r2, [r0, r1]
	mov     r1, r3
	sub     r1, #0xe
	ldrh    r2, [r0, r1]
	mov     r1, #0x78
	bic     r2, r1
	mov     r1, r3
	sub     r1, #0xe
	strh    r2, [r0, r1]
	mov     r1, r3
	sub     r1, #0xe
	ldrh    r2, [r0, r1]
	ldr     r1, [pc, #0x3c] @ 0x21f69c0, (=#0xfffffe7f)
	and     r2, r1
	mov     r1, #0x80
	orr     r2, r1
	mov     r1, r3
	sub     r1, #0xe
	strh    r2, [r0, r1]
	mov     r1, r3
	sub     r1, #0xe
	ldrh    r2, [r0, r1]
	ldr     r1, [pc, #0x2c] @ 0x21f69c4, (=#0xffff81ff)
	and     r2, r1
	mov     r1, r3
	sub     r1, #0xe
	strh    r2, [r0, r1]
	mov     r1, r3
	sub     r1, #0xe
	ldrh    r2, [r0, r1]
	ldr     r1, [pc, #0x20] @ 0x21f69c8, (=#0xffff7fff)
	and     r2, r1
	mov     r1, r3
	sub     r1, #0xe
	strh    r2, [r0, r1]
	sub     r3, #0xc
	str     r0, [r0, r3]
	pop     {r4,r5}
	bx      lr
@ 0x21f69b8

.word 0x21f69f1 @ 0x21f69b8
.word 0x21f69cd @ 0x21f69bc
.word 0xfffffe7f @ 0x21f69c0
.word 0xffff81ff @ 0x21f69c4
.word 0xffff7fff @ 0x21f69c8

.incbin "./baserom/overlay/overlay_0005.bin", 0x25c4c, 0x21f6b3c - 0x21f69cc


.thumb
.globl Function_5_21f6b3c
Function_5_21f6b3c: @ 21f6b3c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r5, r0
	mov     r1, r5
	add     r1, #0x80
	ldr     r1, [r1, #0x0]
	str     r1, [sp, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0x4]
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r7, r0
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_207a268
	ldr     r1, [sp, #0x4]
	bl      Function_207a0fc
	mov     r5, r0
	mov     r1, #0x46
	mov     r2, #0x0
	bl      Function_2074470
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r1, #0x47
	mov     r2, #0x0
	bl      Function_2074470
	str     r0, [sp, #0xc]
	mov     r0, r5
	mov     r1, #0x48
	mov     r2, #0x0
	bl      Function_2074470
	str     r0, [sp, #0x10]
	mov     r0, r5
	mov     r1, #0x49
	mov     r2, #0x0
	bl      Function_2074470
	str     r0, [sp, #0x14]
	mov     r0, r5
	mov     r1, #0x4a
	mov     r2, #0x0
	bl      Function_2074470
	str     r0, [sp, #0x18]
	mov     r0, r5
	mov     r1, #0x4b
	mov     r2, #0x0
	bl      Function_2074470
	mov     r2, #0x0
	str     r0, [sp, #0x1c]
	strh    r2, [r4, #0x0]
	add     r0, sp, #0x8
.thumb
branch_21f6bf2: @ 21f6bf2 :thumb
	lsl     r3, r2, #2
	ldrh    r1, [r4, #0x0]
	ldr     r3, [r0, r3]
	add     r1, r1, r3
	strh    r1, [r4, #0x0]
	add     r1, r2, #0x1
	lsl     r1, r1, #24
	lsr     r2, r1, #24
	cmp     r2, #0x6
	bcc     branch_21f6bf2
	mov     r0, #0x0
	strh    r0, [r6, #0x0]
	ldr     r0, [sp, #0x8]
	mov     r5, #0x1
	strh    r0, [r7, #0x0]
.thumb
branch_21f6c10: @ 21f6c10 :thumb
	lsl     r1, r5, #2
	add     r0, sp, #0x8
	ldr     r4, [r0, r1]
	ldrh    r0, [r6, #0x0]
	lsl     r1, r0, #2
	add     r0, sp, #0x8
	ldr     r0, [r0, r1]
	cmp     r0, r4
	bcs     branch_21f6c28
	strh    r5, [r6, #0x0]
	strh    r4, [r7, #0x0]
	b       branch_21f6c42
@ 0x21f6c28

.thumb
branch_21f6c28: @ 21f6c28 :thumb
	cmp     r0, r4
	bne     branch_21f6c42
	bl      PRNG
	lsr     r1, r0, #31
	lsl     r2, r0, #31
	sub     r2, r2, r1
	mov     r0, #0x1f
	ror     r2, r0
	add     r0, r1, r2
	bne     branch_21f6c42
	strh    r5, [r6, #0x0]
	strh    r4, [r7, #0x0]
.thumb
branch_21f6c42: @ 21f6c42 :thumb
	add     r0, r5, #0x1
	lsl     r0, r0, #24
	lsr     r5, r0, #24
	cmp     r5, #0x6
	bcc     branch_21f6c10
	ldrh    r0, [r6, #0x0]
	lsl     r1, r0, #1
	ldr     r0, [pc, #0x8] @ 0x21f6c5c, (=#0x2200c84)
	ldrh    r0, [r0, r1]
	strh    r0, [r6, #0x0]
	mov     r0, #0x0
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x21f6c5c

.word 0x2200c84 @ 0x21f6c5c



.thumb
.globl Function_5_21f6c60
Function_5_21f6c60: @ 21f6c60 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	mov     r1, #0x0
	mov     r4, r0
	str     r1, [sp, #0x8]
	mov     r1, r4
	add     r1, #0x80
	ldr     r1, [r1, #0x0]
	str     r1, [sp, #0x4]
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, #0xc]
	bl      Function_207a268
	mov     r7, r0
	bl      Function_207a0f8
	mov     r6, r0
	mov     r4, #0x0
	ldr     r0, [sp, #0x0]
	cmp     r6, #0x0
	strh    r4, [r0, #0x0]
	ble     branch_21f6cc2
	add     r5, sp, #0x10
.thumb
branch_21f6c9e: @ 21f6c9e :thumb
	mov     r0, r7
	mov     r1, r4
	bl      Function_207a0fc
	mov     r1, #0x6
	mov     r2, #0x0
	bl      Function_2074470
	str     r0, [r5, #0x0]
	cmp     r0, #0x70
	bne     branch_21f6cba
	ldr     r0, [sp, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x8]
.thumb
branch_21f6cba: @ 21f6cba :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, r6
	blt     branch_21f6c9e
.thumb
branch_21f6cc2: @ 21f6cc2 :thumb
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x0
	ble     branch_21f6d16
	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, #0xc]
	bl      Function_207d990
	ldr     r2, [sp, #0x8]
	mov     r1, #0x70
	lsl     r2, r2, #16
	lsr     r2, r2, #16
	mov     r3, #0x4
	bl      Function_207d570
	cmp     r0, #0x0
	bne     branch_21f6cee
	ldr     r0, [sp, #0x0]
	mov     r1, #0xff
	strh    r1, [r0, #0x0]
	add     sp, #0x28
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21f6cee

.thumb
branch_21f6cee: @ 21f6cee :thumb
	mov     r5, #0x0
	str     r5, [sp, #0xc]
	cmp     r6, #0x0
	ble     branch_21f6d16
	add     r4, sp, #0x10
.thumb
branch_21f6cf8: @ 21f6cf8 :thumb
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x70
	bne     branch_21f6d0e
	mov     r0, r7
	mov     r1, r5
	bl      Function_207a0fc
	mov     r1, #0x6
	add     r2, sp, #0xc
	bl      Function_2074b30
.thumb
branch_21f6d0e: @ 21f6d0e :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, r6
	blt     branch_21f6cf8
.thumb
branch_21f6d16: @ 21f6d16 :thumb
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_21f6d74
.thumb
branch_21f6d1c: @ 21f6d1c :thumb
	mov     r0, r7
	mov     r1, r5
	bl      Function_207a0fc
	mov     r1, #0x70
	mov     r2, #0x0
	mov     r4, r0
	bl      Function_2074470
	cmp     r0, #0x0
	ble     branch_21f6d6e
	mov     r0, r4
	mov     r1, #0x5
	mov     r2, #0x0
	bl      Function_2074470
	ldr     r1, [pc, #0x3c] @ 0x21f6d7c, (=#0x1df)
	cmp     r0, r1
	beq     branch_21f6d5a
	add     r1, #0x8
	cmp     r0, r1
	beq     branch_21f6d52
	mov     r1, #0x7b
	lsl     r1, r1, #2
	cmp     r0, r1
	beq     branch_21f6d66
	b       branch_21f6d6e
@ 0x21f6d52

.thumb
branch_21f6d52: @ 21f6d52 :thumb
	mov     r0, r4
	bl      Function_2077a00
	b       branch_21f6d6e
@ 0x21f6d5a

.thumb
branch_21f6d5a: @ 21f6d5a :thumb
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	bl      Function_2077c20
	b       branch_21f6d6e
@ 0x21f6d66

.thumb
branch_21f6d66: @ 21f6d66 :thumb
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2077acc
.thumb
branch_21f6d6e: @ 21f6d6e :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r6
	blt     branch_21f6d1c
.thumb
branch_21f6d74: @ 21f6d74 :thumb
	mov     r0, #0x0
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x21f6d7a


.incbin "./baserom/overlay/overlay_0005.bin", 0x25ffa, 0x21f6d7c - 0x21f6d7a


.word 0x1df @ 0x21f6d7c



.thumb
.globl Function_5_21f6d80
Function_5_21f6d80: @ 21f6d80 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	mov     r1, r4
	add     r1, #0x80
	ldr     r5, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r6, r0
	ldr     r0, [r5, #0xc]
	bl      Function_207a268
	mov     r1, r7
	bl      Function_207a0fc
	mov     r2, #0x0
	mov     r4, r0
	strh    r2, [r6, #0x0]
	cmp     r7, #0xff
	bne     branch_21f6dc8
	mov     r0, r2
	pop     {r3-r7,pc}
@ 0x21f6dc8

.thumb
branch_21f6dc8: @ 21f6dc8 :thumb
	mov     r1, #0x6
	bl      Function_2074470
	cmp     r0, #0x70
	bne     branch_21f6dfc
	ldr     r0, [r5, #0xc]
	bl      Function_207d990
	mov     r1, #0x70
	mov     r2, #0x1
	mov     r3, #0x4
	bl      Function_207d570
	cmp     r0, #0x0
	bne     branch_21f6dee
	mov     r0, #0xff
	strh    r0, [r6, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21f6dee

.thumb
branch_21f6dee: @ 21f6dee :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x6
	add     r2, sp, #0x0
	bl      Function_2074b30
.thumb
branch_21f6dfc: @ 21f6dfc :thumb
	mov     r0, r4
	mov     r1, #0x70
	mov     r2, #0x0
	bl      Function_2074470
	cmp     r0, #0x0
	ble     branch_21f6e46
	mov     r0, r4
	mov     r1, #0x5
	mov     r2, #0x0
	bl      Function_2074470
	ldr     r2, [pc, #0x34] @ 0x21f6e4c, (=#0x1df)
	cmp     r0, r2
	beq     branch_21f6e32
	mov     r1, r2
	add     r1, #0x8
	cmp     r0, r1
	beq     branch_21f6e2a
	add     r2, #0xd
	cmp     r0, r2
	beq     branch_21f6e3e
	b       branch_21f6e46
@ 0x21f6e2a

.thumb
branch_21f6e2a: @ 21f6e2a :thumb
	mov     r0, r4
	bl      Function_2077a00
	b       branch_21f6e46
@ 0x21f6e32

.thumb
branch_21f6e32: @ 21f6e32 :thumb
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	bl      Function_2077c20
	b       branch_21f6e46
@ 0x21f6e3e

.thumb
branch_21f6e3e: @ 21f6e3e :thumb
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2077acc
.thumb
branch_21f6e46: @ 21f6e46 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21f6e4a


.incbin "./baserom/overlay/overlay_0005.bin", 0x260ca, 0x21f6e4c - 0x21f6e4a


.word 0x1df @ 0x21f6e4c



.thumb
.globl Function_5_21f6e50
Function_5_21f6e50: @ 21f6e50 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	mov     r1, r5
	add     r1, #0x80
	ldr     r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	add     r1, sp, #0x0
	strh    r0, [r1, #0x0]
	ldr     r0, [r4, #0xc]
	bl      Function_207a268
	mov     r1, r6
	bl      Function_207a0fc
	mov     r1, #0x70
	add     r2, sp, #0x0
	bl      Function_2074b30
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x21f6e9c

.thumb
.globl Function_5_21f6e9c
Function_5_21f6e9c: @ 21f6e9c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r1, r5
	add     r1, #0x80
	ldr     r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	str     r0, [sp, #0x0]
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r6, r0
	mov     r0, #0xff
	strh    r0, [r6, #0x0]
	ldr     r0, [r4, #0xc]
	mov     r7, #0x0
	bl      Function_207a268
	str     r0, [sp, #0x4]
	bl      Function_207a0f8
	mov     r5, r7
	str     r0, [sp, #0x8]
	cmp     r0, #0x0
	ble     branch_21f6f34
.thumb
branch_21f6ee6: @ 21f6ee6 :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	bl      Function_207a0fc
	mov     r4, r0
	mov     r1, #0x5
	mov     r2, #0x0
	bl      Function_2074470
	str     r0, [sp, #0xc]
	mov     r0, r4
	mov     r1, #0x70
	mov     r2, #0x0
	bl      Function_2074470
	str     r0, [sp, #0x10]
	mov     r0, r4
	mov     r1, #0x4c
	mov     r2, #0x0
	bl      Function_2074470
	ldr     r2, [sp, #0xc]
	ldr     r1, [pc, #0x2c] @ 0x21f6f40, (=#0x1df)
	cmp     r2, r1
	bne     branch_21f6f2c
	ldr     r1, [sp, #0x10]
	cmp     r1, #0x0
	beq     branch_21f6f2c
	cmp     r0, #0x0
	bne     branch_21f6f2c
	ldrh    r0, [r6, #0x0]
	cmp     r0, #0xff
	bne     branch_21f6f2a
	strh    r5, [r6, #0x0]
.thumb
branch_21f6f2a: @ 21f6f2a :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
.thumb
branch_21f6f2c: @ 21f6f2c :thumb
	ldr     r0, [sp, #0x8]
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r0
	blt     branch_21f6ee6
.thumb
branch_21f6f34: @ 21f6f34 :thumb
	ldr     r0, [sp, #0x0]
	strh    r7, [r0, #0x0]
	mov     r0, #0x0
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21f6f3e


.incbin "./baserom/overlay/overlay_0005.bin", 0x261be, 0x21f6f40 - 0x21f6f3e


.word 0x1df @ 0x21f6f40



.thumb
.globl Function_5_21f6f44
Function_5_21f6f44: @ 21f6f44 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r1, r5
	add     r1, #0x80
	ldr     r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0x0]
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0
	ldr     r0, [r4, #0xc]
	bl      Function_207a268
	mov     r1, r6
	bl      Function_207a0fc
	ldr     r2, [sp, #0x0]
	mov     r1, r7
	mov     r5, r0
	bl      Function_2077c20
	ldr     r0, [r4, #0xc]
	bl      Function_2027560
	mov     r1, r5
	bl      Function_202736c
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21f6fbe


.align 2, 0


.thumb
.globl Function_5_21f6fc0
Function_5_21f6fc0: @ 21f6fc0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r0
	mov     r1, r4
	add     r1, #0x80
	ldr     r6, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	ldr     r0, [r6, #0xc]
	bl      Function_207a268
	mov     r1, r7
	bl      Function_207a0fc
	mov     r1, #0x5
	mov     r2, #0x0
	mov     r6, r0
	bl      Function_2074470
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	mov     r0, r6
	mov     r1, #0x4c
	mov     r2, #0x0
	bl      Function_2074470
	cmp     r0, #0x0
	bne     branch_21f70ae
	ldr     r0, [pc, #0xa8] @ 0x21f70c4, (=#0x10a)
	cmp     r4, r0
	bgt     branch_21f7060
	bge     branch_21f70a4
	cmp     r4, #0x84
	bgt     branch_21f704c
	bge     branch_21f70a4
	cmp     r4, #0xe
	bgt     branch_21f7046
	mov     r0, r4
	sub     r0, #0xa
	bmi     branch_21f70ae
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r4, #1
	lsl     r6, r4, #1
	lsl     r0, r6, #1
	lsl     r6, r4, #1
	lsl     r6, r4, #1
.thumb
branch_21f7046: @ 21f7046 :thumb
	cmp     r4, #0x81
	beq     branch_21f70a4
	b       branch_21f70ae
@ 0x21f704c

.thumb
branch_21f704c: @ 21f704c :thumb
	cmp     r4, #0xeb
	bgt     branch_21f7058
	bge     branch_21f70a4
	cmp     r4, #0xca
	beq     branch_21f70a4
	b       branch_21f70ae
@ 0x21f7058

.thumb
branch_21f7058: @ 21f7058 :thumb
	.hword  0x1e40 @ sub r0, r0, #0x1
	cmp     r4, r0
	beq     branch_21f70a4
	b       branch_21f70ae
@ 0x21f7060

.thumb
branch_21f7060: @ 21f7060 :thumb
	mov     r1, r0
	add     r1, #0x6c
	cmp     r4, r1
	bgt     branch_21f7086
	mov     r1, r0
	add     r1, #0x6c
	cmp     r4, r1
	bge     branch_21f70a4
	add     r1, r0, #0x2
	cmp     r4, r1
	bgt     branch_21f707e
	.hword  0x1c80 @ add r0, r0, #0x2
	cmp     r4, r0
	beq     branch_21f70a4
	b       branch_21f70ae
@ 0x21f707e

.thumb
branch_21f707e: @ 21f707e :thumb
	add     r0, #0x5e
	cmp     r4, r0
	beq     branch_21f70a4
	b       branch_21f70ae
@ 0x21f7086

.thumb
branch_21f7086: @ 21f7086 :thumb
	mov     r1, r0
	add     r1, #0x92
	cmp     r4, r1
	bgt     branch_21f709e
	mov     r1, r0
	add     r1, #0x92
	cmp     r4, r1
	bge     branch_21f70a4
	add     r0, #0x87
	cmp     r4, r0
	beq     branch_21f70a4
	b       branch_21f70ae
@ 0x21f709e

.thumb
branch_21f709e: @ 21f709e :thumb
	add     r0, #0x95
	cmp     r4, r0
	bne     branch_21f70ae
.thumb
branch_21f70a4: @ 21f70a4 :thumb
	ldr     r0, [pc, #0x20] @ 0x21f70c8, (=#0xffff)
	add     sp, #0x8
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21f70ae

.thumb
branch_21f70ae: @ 21f70ae :thumb
	mov     r0, r6
	add     r1, sp, #0x4
	add     r2, sp, #0x0
	bl      Function_21f70cc
	ldr     r0, [sp, #0x0]
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21f70c2


.incbin "./baserom/overlay/overlay_0005.bin", 0x26342, 0x21f70c4 - 0x21f70c2


.word 0x10a @ 0x21f70c4
.word 0xffff @ 0x21f70c8
.thumb
Function_21f70cc: @ 21f70cc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r1
	mov     r4, r2
	mov     r6, r0
	mov     r1, #0x46
	mov     r2, #0x0
	bl      Function_2074470
	str     r0, [sp, #0x10]
	mov     r0, r6
	mov     r1, #0x47
	mov     r2, #0x0
	bl      Function_2074470
	str     r0, [sp, #0xc]
	mov     r0, r6
	mov     r1, #0x48
	mov     r2, #0x0
	bl      Function_2074470
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r1, #0x49
	mov     r2, #0x0
	bl      Function_2074470
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r1, #0x4a
	mov     r2, #0x0
	bl      Function_2074470
	str     r0, [sp, #0x0]
	mov     r0, r6
	mov     r1, #0x4b
	mov     r2, #0x0
	bl      Function_2074470
	mov     r7, r0
	cmp     r5, #0x0
	beq     branch_21f7168
	mov     r1, #0x2
	and     r0, r1
	lsl     r0, r0, #4
	mov     r12, r0
	ldr     r0, [sp, #0x0]
	and     r0, r1
	lsl     r3, r0, #3
	ldr     r0, [sp, #0x4]
	and     r0, r1
	lsl     r0, r0, #2
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x8]
	and     r0, r1
	lsl     r2, r0, #1
	ldr     r0, [sp, #0x10]
	and     r0, r1
	asr     r6, r0, #1
	ldr     r0, [sp, #0xc]
	and     r0, r1
	orr     r0, r6
	mov     r1, r2
	orr     r1, r0
	ldr     r0, [sp, #0x14]
	orr     r0, r1
	mov     r1, r3
	orr     r1, r0
	mov     r0, r12
	orr     r1, r0
	mov     r0, #0x28
	str     r1, [r5, #0x0]
	mul     r0, r1
	mov     r1, #0x3f
	blx     Division
	add     r0, #0x1e
	str     r0, [r5, #0x0]
.thumb
branch_21f7168: @ 21f7168 :thumb
	cmp     r4, #0x0
	beq     branch_21f71b2
	lsl     r0, r7, #31
	lsr     r5, r0, #26
	ldr     r0, [sp, #0x0]
	mov     r6, #0x1
	lsl     r0, r0, #31
	lsr     r3, r0, #27
	ldr     r0, [sp, #0x4]
	lsl     r0, r0, #31
	lsr     r2, r0, #28
	ldr     r0, [sp, #0x8]
	lsl     r0, r0, #31
	lsr     r1, r0, #29
	ldr     r0, [sp, #0x10]
	and     r0, r6
	ldr     r6, [sp, #0xc]
	lsl     r6, r6, #31
	lsr     r6, r6, #30
	orr     r0, r6
	orr     r0, r1
	orr     r0, r2
	orr     r0, r3
	mov     r1, r5
	orr     r1, r0
	mov     r0, #0xf
	str     r1, [r4, #0x0]
	mul     r0, r1
	mov     r1, #0x3f
	blx     Division
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	cmp     r0, #0x9
	blt     branch_21f71b2
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_21f71b2: @ 21f71b2 :thumb
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21f71b6


.align 2, 0


.thumb
.globl Function_5_21f71b8
Function_5_21f71b8: @ 21f71b8 :thumb
	push    {r3-r7,lr}
	add     r0, #0x80
	ldr     r4, [r0, #0x0]
	ldr     r0, [r4, #0xc]
	bl      Function_207a268
	mov     r1, #0x0
	bl      Function_207a0fc
	mov     r5, r0
	ldr     r0, [r4, #0xc]
	bl      Function_202783c
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x5
	mov     r2, #0x0
	bl      Function_2074470
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x70
	mov     r2, #0x0
	bl      Function_2074470
	mov     r7, r0
	mov     r0, r5
	mov     r1, #0x4c
	mov     r2, #0x0
	bl      Function_2074470
	mov     r3, r0
	mov     r0, r4
	mov     r1, r6
	mov     r2, r7
	bl      Function_20278dc
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21f7206


.align 2, 0


.thumb
.globl Function_5_21f7208
Function_5_21f7208: @ 21f7208 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r1, r4
	add     r1, #0x80
	ldr     r5, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r6, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r7, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	ldr     r0, [r5, #0xc]
	bl      Function_202783c
	add     r1, sp, #0x8
	add     r2, sp, #0x4
	add     r3, sp, #0x0
	bl      Function_2027914
	ldr     r0, [sp, #0x8]
	strh    r0, [r6, #0x0]
	ldr     r0, [sp, #0x4]
	strh    r0, [r7, #0x0]
	ldr     r0, [sp, #0x0]
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21f726e


.align 2, 0


.thumb
.globl Function_5_21f7270
Function_5_21f7270: @ 21f7270 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	mov     r1, r4
	add     r1, #0x80
	ldr     r5, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	ldr     r0, [r5, #0xc]
	bl      Function_207a268
	mov     r1, r6
	bl      Function_207a0fc
	mov     r1, #0x70
	mov     r2, #0x0
	bl      Function_2074470
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x21f72b8

.thumb
.globl Function_5_21f72b8
Function_5_21f72b8: @ 21f72b8 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	mov     r1, r4
	add     r1, #0x80
	ldr     r5, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	ldr     r0, [r5, #0xc]
	bl      Function_20507e4
	mov     r6, r0
	ldr     r0, [r5, #0xc]
	bl      Function_202cd88
	mov     r1, #0x1
	sub     r7, #0xd
	mov     r5, r0
	strh    r1, [r4, #0x0]
	cmp     r7, #0x7
	bls     branch_21f7302
	b       branch_21f740a
@ 0x21f7302

.thumb
branch_21f7302: @ 21f7302 :thumb
	add     r1, r7, r7
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r6, r1, #0
	lsl     r6, r3, #1
	lsl     r2, r5, #2
	lsl     r2, r7, #2
	lsl     r2, r1, #3
	lsl     r2, r3, #3
	lsl     r2, r7, #3
	lsl     r2, r5, #3
	mov     r1, #0x1d
	bl      Function_202cfb8
	cmp     r0, #0x1
	bcs     branch_21f732c
	mov     r0, #0x0
	strh    r0, [r4, #0x0]
.thumb
branch_21f732c: @ 21f732c :thumb
	mov     r0, r5
	mov     r1, #0x3c
	bl      Function_202cfb8
	cmp     r0, #0x1
	bcs     branch_21f733c
	mov     r0, #0x0
	strh    r0, [r4, #0x0]
.thumb
branch_21f733c: @ 21f733c :thumb
	mov     r0, r5
	mov     r1, #0x3d
	bl      Function_202cfb8
	cmp     r0, #0x1
	bcs     branch_21f734c
	mov     r0, #0x0
	strh    r0, [r4, #0x0]
.thumb
branch_21f734c: @ 21f734c :thumb
	mov     r0, r5
	mov     r1, #0x3e
	bl      Function_202cfb8
	cmp     r0, #0x1
	bcs     branch_21f735c
	mov     r0, #0x0
	strh    r0, [r4, #0x0]
.thumb
branch_21f735c: @ 21f735c :thumb
	mov     r0, r5
	mov     r1, #0x3f
	bl      Function_202cfb8
	cmp     r0, #0x1
	bcs     branch_21f740a
	mov     r0, #0x0
	strh    r0, [r4, #0x0]
	b       branch_21f740a
@ 0x21f736e


.incbin "./baserom/overlay/overlay_0005.bin", 0x265ee, 0x21f740a - 0x21f736e


.thumb
branch_21f740a: @ 21f740a :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21f740e


.incbin "./baserom/overlay/overlay_0005.bin", 0x2668e, 0x21f7414 - 0x21f740e


.thumb
.globl Function_5_21f7414
Function_5_21f7414: @ 21f7414 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x21f7418

.thumb
.globl Function_5_21f7418
Function_5_21f7418: @ 21f7418 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r7, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r2, #0x93
	lsl     r2, r2, #2
	cmp     r6, r2
	beq     branch_21f747c
	add     r1, r2, #0x2
	cmp     r6, r1
	beq     branch_21f74b0
	add     r1, r2, #0x4
	cmp     r6, r1
	beq     branch_21f74e4
	b       branch_21f7516
@ 0x21f747c

.thumb
branch_21f747c: @ 21f747c :thumb
	mov     r1, #0x7f
	str     r1, [sp, #0x0]
	mov     r5, #0x0
	ldr     r1, [pc, #0xa4] @ 0x21f7528, (=#0x2200c90)
	mov     r2, #0x2
	mov     r3, r5
.thumb
branch_21f7488: @ 21f7488 :thumb
	ldsh    r6, [r1, r3]
	cmp     r4, r6
	bne     branch_21f74a6
	ldsh    r6, [r1, r2]
	cmp     r0, r6
	bne     branch_21f74a6
	ldr     r0, [pc, #0x94] @ 0x21f752c, (=#0x5cf)
	bl      Function_2005748
	mov     r0, #0x1
	ldrh    r1, [r7, #0x0]
	lsl     r0, r5
	orr     r0, r1
	strh    r0, [r7, #0x0]
	b       branch_21f7516
@ 0x21f74a6

.thumb
branch_21f74a6: @ 21f74a6 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d09 @ add r1, r1, #0x4
	cmp     r5, #0x7
	bcc     branch_21f7488
	b       branch_21f7516
@ 0x21f74b0

.thumb
branch_21f74b0: @ 21f74b0 :thumb
	mov     r1, #0x7f
	str     r1, [sp, #0x0]
	mov     r5, #0x0
	ldr     r1, [pc, #0x78] @ 0x21f7530, (=#0x2200cac)
	mov     r2, #0x2
	mov     r3, r5
.thumb
branch_21f74bc: @ 21f74bc :thumb
	ldsh    r6, [r1, r3]
	cmp     r4, r6
	bne     branch_21f74da
	ldsh    r6, [r1, r2]
	cmp     r0, r6
	bne     branch_21f74da
	ldr     r0, [pc, #0x60] @ 0x21f752c, (=#0x5cf)
	bl      Function_2005748
	mov     r0, #0x1
	ldrh    r1, [r7, #0x0]
	lsl     r0, r5
	orr     r0, r1
	strh    r0, [r7, #0x0]
	b       branch_21f7516
@ 0x21f74da

.thumb
branch_21f74da: @ 21f74da :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d09 @ add r1, r1, #0x4
	cmp     r5, #0x7
	bcc     branch_21f74bc
	b       branch_21f7516
@ 0x21f74e4

.thumb
branch_21f74e4: @ 21f74e4 :thumb
	mov     r1, #0x7f
	str     r1, [sp, #0x0]
	mov     r5, #0x0
	ldr     r1, [pc, #0x48] @ 0x21f7534, (=#0x2200cc8)
	mov     r2, #0x2
	mov     r3, r5
.thumb
branch_21f74f0: @ 21f74f0 :thumb
	ldsh    r6, [r1, r3]
	cmp     r4, r6
	bne     branch_21f750e
	ldsh    r6, [r1, r2]
	cmp     r0, r6
	bne     branch_21f750e
	ldr     r0, [pc, #0x2c] @ 0x21f752c, (=#0x5cf)
	bl      Function_2005748
	mov     r0, #0x1
	ldrh    r1, [r7, #0x0]
	lsl     r0, r5
	orr     r0, r1
	strh    r0, [r7, #0x0]
	b       branch_21f7516
@ 0x21f750e

.thumb
branch_21f750e: @ 21f750e :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d09 @ add r1, r1, #0x4
	cmp     r5, #0x7
	bcc     branch_21f74f0
.thumb
branch_21f7516: @ 21f7516 :thumb
	ldrh    r1, [r7, #0x0]
	ldr     r0, [sp, #0x0]
	cmp     r1, r0
	bne     branch_21f7524
	mov     r0, #0x41
	lsl     r0, r0, #2
	strh    r0, [r7, #0x0]
.thumb
branch_21f7524: @ 21f7524 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21f7528

.word 0x2200c90 @ 0x21f7528
.word 0x5cf @ 0x21f752c
.word 0x2200cac @ 0x21f7530
.word 0x2200cc8 @ 0x21f7534



.thumb
.globl Function_5_21f7538
Function_5_21f7538: @ 21f7538 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r1, #0x0
	str     r1, [sp, #0x8]
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r6, [r0, #0x38]
	ldr     r0, [r0, #0x3c]
	bl      Function_205eb3c
	add     r1, sp, #0xc
	str     r0, [sp, #0x0]
	bl      Function_2063050
	mov     r0, r6
	add     r1, sp, #0x4
	add     r2, sp, #0x8
	mov     r3, #0x1
	ldr     r4, [sp, #0x10]
	bl      Function_20625b0
	cmp     r0, #0x1
	bne     branch_21f75fc
	asr     r1, r4, #3
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r7, r0, #12
.thumb
branch_21f7570: @ 21f7570 :thumb
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x0]
	cmp     r0, r1
	beq     branch_21f75ec
	mov     r1, #0x2
	lsl     r1, r1, #12
	bl      Function_20628bc
	mov     r1, #0x1
	ldr     r0, [sp, #0x4]
	lsl     r1, r1, #12
	bl      Function_20628d8
	cmp     r0, #0x1
	bne     branch_21f75a8
	ldr     r0, [sp, #0x4]
	add     r1, sp, #0xc
	bl      Function_2063050
	ldr     r0, [sp, #0x4]
	add     r1, sp, #0xc
	str     r4, [sp, #0x10]
	bl      Function_2063060
	ldr     r0, [sp, #0x4]
	mov     r1, r7
	bl      Function_2063034
.thumb
branch_21f75a8: @ 21f75a8 :thumb
	ldr     r0, [sp, #0x4]
	bl      Function_21eb1a0
	mov     r5, r0
	bne     branch_21f75d8
	ldr     r0, [sp, #0x4]
	bl      Function_2062920
	bl      Function_20677f4
	cmp     r0, #0x0
	beq     branch_21f75d8
	ldr     r0, [sp, #0x4]
	bl      Function_2062d4c
	cmp     r0, #0x0
	beq     branch_21f75d8
	ldr     r0, [sp, #0x4]
	bl      Function_2062b68
	ldr     r0, [sp, #0x4]
	bl      Function_2067a58
	mov     r5, r0
.thumb
branch_21f75d8: @ 21f75d8 :thumb
	cmp     r5, #0x0
	beq     branch_21f75ec
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	bl      Function_21edeb4
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2021320
.thumb
branch_21f75ec: @ 21f75ec :thumb
	mov     r0, r6
	add     r1, sp, #0x4
	add     r2, sp, #0x8
	mov     r3, #0x1
	bl      Function_20625b0
	cmp     r0, #0x1
	beq     branch_21f7570
.thumb
branch_21f75fc: @ 21f75fc :thumb
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21f7602


.align 2, 0


.thumb
.globl Function_5_21f7604
Function_5_21f7604: @ 21f7604 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r1, #0x0
	str     r1, [sp, #0x4]
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r4, [r0, #0x38]
	ldr     r0, [r0, #0x3c]
	bl      Function_205eb3c
	mov     r5, r0
	mov     r0, r4
	add     r1, sp, #0x0
	add     r2, sp, #0x4
	mov     r3, #0x1
	bl      Function_20625b0
	cmp     r0, #0x1
	bne     branch_21f764c
	mov     r6, #0x2
	lsl     r6, r6, #12
	add     r7, sp, #0x0
.thumb
branch_21f7630: @ 21f7630 :thumb
	ldr     r0, [sp, #0x0]
	cmp     r0, r5
	beq     branch_21f763c
	mov     r1, r6
	bl      Function_20628c4
.thumb
branch_21f763c: @ 21f763c :thumb
	mov     r0, r4
	mov     r1, r7
	add     r2, sp, #0x4
	mov     r3, #0x1
	bl      Function_20625b0
	cmp     r0, #0x1
	beq     branch_21f7630
.thumb
branch_21f764c: @ 21f764c :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21f7652


.align 2, 0


.thumb
Function_21f7654: @ 21f7654 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r1, #0x2
	mov     r5, r0
	lsl     r1, r1, #12
	bl      Function_20628bc
	mov     r0, r5
	add     r1, sp, #0x0
	bl      Function_2063050
	lsl     r0, r4, #16
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r1, sp, #0x0
	bl      Function_2063060
	mov     r0, r5
	lsl     r1, r4, #1
	bl      Function_2063034
	mov     r0, r5
	bl      Function_21eb1a0
	mov     r4, r0
	beq     branch_21f769a
	mov     r0, r5
	mov     r1, r4
	bl      Function_21edeb4
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2021320
.thumb
branch_21f769a: @ 21f769a :thumb
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21f769e


.align 2, 0


.thumb
.globl Function_5_21f76a0
Function_5_21f76a0: @ 21f76a0 :thumb
	push    {r4,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x20
	ldr     r4, [r0, #0x38]
	mov     r0, r4
	bl      Function_206251c
	cmp     r0, #0x0
	beq     branch_21f76ba
	mov     r1, #0x9
	bl      Function_21f7654
.thumb
branch_21f76ba: @ 21f76ba :thumb
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_206251c
	cmp     r0, #0x0
	beq     branch_21f76cc
	mov     r1, #0x9
	bl      Function_21f7654
.thumb
branch_21f76cc: @ 21f76cc :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21f76d0

.thumb
.globl Function_5_21f76d0
Function_5_21f76d0: @ 21f76d0 :thumb
	push    {r4,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x20
	ldr     r4, [r0, #0x38]
	mov     r0, r4
	bl      Function_206251c
	cmp     r0, #0x0
	beq     branch_21f76ec
	mov     r1, #0x2
	lsl     r1, r1, #12
	bl      0x20628c4
.thumb
branch_21f76ec: @ 21f76ec :thumb
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_206251c
	cmp     r0, #0x0
	beq     branch_21f7700
	mov     r1, #0x2
	lsl     r1, r1, #12
	bl      Function_20628c4
.thumb
branch_21f7700: @ 21f7700 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21f7704

.thumb
.globl Function_5_21f7704
Function_5_21f7704: @ 21f7704 :thumb
	push    {r4,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	ldr     r0, [r0, #0x38]
	bl      Function_206251c
	mov     r4, r0
	beq     branch_21f774e
	bl      Function_2063020
	cmp     r0, #0x28
	bgt     branch_21f7730
	cmp     r0, #0x26
	blt     branch_21f772a
	beq     branch_21f773a
	cmp     r0, #0x28
	beq     branch_21f773e
	b       branch_21f7746
@ 0x21f772a

.thumb
branch_21f772a: @ 21f772a :thumb
	cmp     r0, #0x1c
	beq     branch_21f7736
	b       branch_21f7746
@ 0x21f7730

.thumb
branch_21f7730: @ 21f7730 :thumb
	cmp     r0, #0x30
	beq     branch_21f7742
	b       branch_21f7746
@ 0x21f7736

.thumb
branch_21f7736: @ 21f7736 :thumb
	mov     r1, #0x6
	b       branch_21f7748
@ 0x21f773a

.thumb
branch_21f773a: @ 21f773a :thumb
	mov     r1, #0x5
	b       branch_21f7748
@ 0x21f773e

.thumb
branch_21f773e: @ 21f773e :thumb
	mov     r1, #0x3
	b       branch_21f7748
@ 0x21f7742

.thumb
branch_21f7742: @ 21f7742 :thumb
	mov     r1, #0x2
	b       branch_21f7748
@ 0x21f7746

.thumb
branch_21f7746: @ 21f7746 :thumb
	mov     r1, #0x4
.thumb
branch_21f7748: @ 21f7748 :thumb
	mov     r0, r4
	bl      Function_21f7654
.thumb
branch_21f774e: @ 21f774e :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21f7752


.align 2, 0


.thumb
.globl Function_5_21f7754
Function_5_21f7754: @ 21f7754 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	ldr     r0, [r0, #0x38]
	bl      Function_206251c
	cmp     r0, #0x0
	beq     branch_21f776e
	mov     r1, #0x2
	lsl     r1, r1, #12
	bl      Function_20628c4
.thumb
branch_21f776e: @ 21f776e :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21f7772


.align 2, 0


.thumb
.globl Function_5_21f7774
Function_5_21f7774: @ 21f7774 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_202c878
	bl      Function_2038f8c
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21f7788

.thumb
.globl Function_5_21f7788
Function_5_21f7788: @ 21f7788 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r1, r0
	mov     r0, #0x1
	bl      Function_200544c
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21f77a6


.align 2, 0


.thumb
.globl Function_5_21f77a8
Function_5_21f77a8: @ 21f77a8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_2027560
	mov     r1, r6
	bl      Function_2026fe8
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x21f77e8

.thumb
.globl Function_5_21f77e8
Function_5_21f77e8: @ 21f77e8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_207a268
	mov     r1, r6
	bl      Function_207a0fc
	mov     r1, r7
	bl      Function_21f7b60
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21f7842


.align 2, 0


.thumb
.globl Function_5_21f7844
Function_5_21f7844: @ 21f7844 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	add     r5, #0x80
	mov     r7, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_207a268
	mov     r1, r4
	mov     r2, r6
	mov     r3, r7
	bl      Function_2054988
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21f789a


.align 2, 0


.thumb
.globl Function_5_21f789c
Function_5_21f789c: @ 21f789c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r6, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r6
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0
	mov     r0, r6
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r6
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r6, #0x80
	mov     r5, r0
	ldr     r0, [r6, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_207d990
	ldr     r2, [pc, #0xb0] @ 0x21f7984, (=#0x2200ce4)
	mov     r6, r0
	mov     r1, #0x0
.thumb
branch_21f78d8: @ 21f78d8 :thumb
	ldrh    r0, [r2, #0x0]
	cmp     r4, r0
	bne     branch_21f78fa
	mov     r0, #0xc
	ldr     r2, [pc, #0xa4] @ 0x21f7988, (=#0x2200ce6)
	mul     r0, r1
	ldrb    r2, [r2, r0]
	str     r2, [sp, #0x8]
	ldr     r2, [pc, #0xa0] @ 0x21f798c, (=#0x2200ce7)
	ldrb    r2, [r2, r0]
	str     r2, [sp, #0x4]
	ldr     r2, [pc, #0xa0] @ 0x21f7990, (=#0x2200ce8)
	ldrb    r2, [r2, r0]
	str     r2, [sp, #0x0]
	ldr     r2, [pc, #0x9c] @ 0x21f7994, (=#0x2200ce9)
	ldrb    r7, [r2, r0]
	b       branch_21f7902
@ 0x21f78fa

.thumb
branch_21f78fa: @ 21f78fa :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r2, #0xc
	cmp     r1, #0x26
	bcc     branch_21f78d8
.thumb
branch_21f7902: @ 21f7902 :thumb
	cmp     r1, #0x26
	bne     branch_21f7912
	bl      Function_2022974
	mov     r0, #0x0
	add     sp, #0xc
	strh    r0, [r5, #0x0]
	pop     {r4-r7,pc}
@ 0x21f7912

.thumb
branch_21f7912: @ 21f7912 :thumb
	mov     r0, #0x1
	strh    r0, [r5, #0x0]
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x0
	beq     branch_21f7930
	ldr     r2, [sp, #0x8]
	mov     r0, r6
	mov     r1, #0x48
	mov     r3, #0x20
	bl      Function_207d688
	cmp     r0, #0x0
	bne     branch_21f7930
	mov     r0, #0x0
	strh    r0, [r5, #0x0]
.thumb
branch_21f7930: @ 21f7930 :thumb
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	beq     branch_21f794a
	ldr     r2, [sp, #0x4]
	mov     r0, r6
	mov     r1, #0x49
	mov     r3, #0x20
	bl      Function_207d688
	cmp     r0, #0x0
	bne     branch_21f794a
	mov     r0, #0x0
	strh    r0, [r5, #0x0]
.thumb
branch_21f794a: @ 21f794a :thumb
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x0
	beq     branch_21f7964
	ldr     r2, [sp, #0x0]
	mov     r0, r6
	mov     r1, #0x4a
	mov     r3, #0x20
	bl      Function_207d688
	cmp     r0, #0x0
	bne     branch_21f7964
	mov     r0, #0x0
	strh    r0, [r5, #0x0]
.thumb
branch_21f7964: @ 21f7964 :thumb
	cmp     r7, #0x0
	beq     branch_21f797c
	mov     r0, r6
	mov     r1, #0x4b
	mov     r2, r7
	mov     r3, #0x20
	bl      Function_207d688
	cmp     r0, #0x0
	bne     branch_21f797c
	mov     r0, #0x0
	strh    r0, [r5, #0x0]
.thumb
branch_21f797c: @ 21f797c :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21f7982


.incbin "./baserom/overlay/overlay_0005.bin", 0x26c02, 0x21f7984 - 0x21f7982


.word 0x2200ce4 @ 0x21f7984
.word 0x2200ce6 @ 0x21f7988
.word 0x2200ce7 @ 0x21f798c
.word 0x2200ce8 @ 0x21f7990
.word 0x2200ce9 @ 0x21f7994



.thumb
.globl Function_5_21f7998
Function_5_21f7998: @ 21f7998 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	add     r4, #0x80
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_207d990
	ldr     r2, [pc, #0x6c] @ 0x21f7a28, (=#0x2200ce4)
	mov     r4, r0
	mov     r1, #0x0
.thumb
branch_21f79c0: @ 21f79c0 :thumb
	ldrh    r0, [r2, #0x0]
	cmp     r5, r0
	bne     branch_21f79e0
	mov     r0, #0xc
	ldr     r2, [pc, #0x60] @ 0x21f7a2c, (=#0x2200ce6)
	mul     r0, r1
	ldrb    r2, [r2, r0]
	str     r2, [sp, #0x4]
	ldr     r2, [pc, #0x5c] @ 0x21f7a30, (=#0x2200ce7)
	ldrb    r2, [r2, r0]
	str     r2, [sp, #0x0]
	ldr     r2, [pc, #0x5c] @ 0x21f7a34, (=#0x2200ce8)
	ldrb    r7, [r2, r0]
	ldr     r2, [pc, #0x5c] @ 0x21f7a38, (=#0x2200ce9)
	ldrb    r6, [r2, r0]
	b       branch_21f79e8
@ 0x21f79e0

.thumb
branch_21f79e0: @ 21f79e0 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r2, #0xc
	cmp     r1, #0x26
	bcc     branch_21f79c0
.thumb
branch_21f79e8: @ 21f79e8 :thumb
	cmp     r1, #0x26
	bne     branch_21f79f0
	bl      Function_2022974
.thumb
branch_21f79f0: @ 21f79f0 :thumb
	ldr     r2, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x48
	mov     r3, #0x20
	bl      Function_207d60c
	ldr     r2, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x49
	mov     r3, #0x20
	bl      Function_207d60c
	mov     r0, r4
	mov     r1, #0x4a
	mov     r2, r7
	mov     r3, #0x20
	bl      Function_207d60c
	mov     r0, r4
	mov     r1, #0x4b
	mov     r2, r6
	mov     r3, #0x20
	bl      Function_207d60c
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21f7a26


.incbin "./baserom/overlay/overlay_0005.bin", 0x26ca6, 0x21f7a28 - 0x21f7a26


.word 0x2200ce4 @ 0x21f7a28
.word 0x2200ce6 @ 0x21f7a2c
.word 0x2200ce7 @ 0x21f7a30
.word 0x2200ce8 @ 0x21f7a34
.word 0x2200ce9 @ 0x21f7a38
.thumb
Function_21f7a3c: @ 21f7a3c :thumb
	mov     r1, #0xc
	mul     r1, r0
	ldr     r0, [pc, #0x4] @ 0x21f7a48, (=#0x2200ce4)
	ldrh    r0, [r0, r1]
	bx      lr
@ 0x21f7a46


.incbin "./baserom/overlay/overlay_0005.bin", 0x26cc6, 0x21f7a48 - 0x21f7a46


.word 0x2200ce4 @ 0x21f7a48
.thumb
Function_21f7a4c: @ 21f7a4c :thumb
	push    {r3,lr}
	ldr     r3, [pc, #0x20] @ 0x21f7a70, (=#0x2200ce4)
	mov     r2, #0x0
.thumb
branch_21f7a52: @ 21f7a52 :thumb
	ldrh    r1, [r3, #0x0]
	cmp     r0, r1
	bne     branch_21f7a5e
	lsl     r0, r2, #16
	lsr     r0, r0, #16
	pop     {r3,pc}
@ 0x21f7a5e

.thumb
branch_21f7a5e: @ 21f7a5e :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r3, #0xc
	cmp     r2, #0x26
	bcc     branch_21f7a52
	bl      Function_2022974
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21f7a6e


.incbin "./baserom/overlay/overlay_0005.bin", 0x26cee, 0x21f7a70 - 0x21f7a6e


.word 0x2200ce4 @ 0x21f7a70
.thumb
Function_21f7a74: @ 21f7a74 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r6, r0
	mov     r1, #0x5
	mov     r2, #0x0
	bl      Function_2074470
	mov     r4, r0
	mov     r0, r6
	mov     r1, #0x70
	mov     r2, #0x0
	bl      Function_2074470
	lsl     r1, r4, #16
	lsr     r2, r1, #16
	ldr     r1, [pc, #0xc4] @ 0x21f7b58, (=#0x1df)
	cmp     r4, r1
	bhi     branch_21f7ab6
	bcs     branch_21f7b18
	mov     r3, r1
	sub     r3, #0x5d
	cmp     r4, r3
	bhi     branch_21f7aac
	mov     r3, r1
	sub     r3, #0x5d
	cmp     r4, r3
	beq     branch_21f7ad2
	b       branch_21f7b48
@ 0x21f7aac

.thumb
branch_21f7aac: @ 21f7aac :thumb
	mov     r3, r1
	sub     r3, #0x42
	cmp     r4, r3
	beq     branch_21f7af0
	b       branch_21f7b48
@ 0x21f7ab6

.thumb
branch_21f7ab6: @ 21f7ab6 :thumb
	mov     r3, r1
	add     r3, #0x8
	cmp     r4, r3
	bhi     branch_21f7ac8
	mov     r3, r1
	add     r3, #0x8
	cmp     r4, r3
	beq     branch_21f7b04
	b       branch_21f7b48
@ 0x21f7ac8

.thumb
branch_21f7ac8: @ 21f7ac8 :thumb
	mov     r3, r1
	add     r3, #0xd
	cmp     r4, r3
	beq     branch_21f7b0e
	b       branch_21f7b48
@ 0x21f7ad2

.thumb
branch_21f7ad2: @ 21f7ad2 :thumb
	cmp     r0, #0x1
	bne     branch_21f7adc
	mov     r2, r1
	add     r2, #0xf
	b       branch_21f7b48
@ 0x21f7adc

.thumb
branch_21f7adc: @ 21f7adc :thumb
	cmp     r0, #0x2
	bne     branch_21f7ae6
	mov     r2, r1
	add     r2, #0x10
	b       branch_21f7b48
@ 0x21f7ae6

.thumb
branch_21f7ae6: @ 21f7ae6 :thumb
	cmp     r0, #0x3
	bne     branch_21f7b48
	mov     r2, r1
	add     r2, #0x11
	b       branch_21f7b48
@ 0x21f7af0

.thumb
branch_21f7af0: @ 21f7af0 :thumb
	cmp     r0, #0x1
	bne     branch_21f7afa
	mov     r2, r1
	add     r2, #0x12
	b       branch_21f7b48
@ 0x21f7afa

.thumb
branch_21f7afa: @ 21f7afa :thumb
	cmp     r0, #0x2
	bne     branch_21f7b48
	mov     r2, r1
	add     r2, #0x13
	b       branch_21f7b48
@ 0x21f7b04

.thumb
branch_21f7b04: @ 21f7b04 :thumb
	cmp     r0, #0x1
	bne     branch_21f7b48
	mov     r2, r1
	add     r2, #0x14
	b       branch_21f7b48
@ 0x21f7b0e

.thumb
branch_21f7b0e: @ 21f7b0e :thumb
	cmp     r0, #0x1
	bne     branch_21f7b48
	mov     r2, r1
	add     r2, #0x15
	b       branch_21f7b48
@ 0x21f7b18

.thumb
branch_21f7b18: @ 21f7b18 :thumb
	cmp     r0, #0x1
	bne     branch_21f7b22
	mov     r2, r1
	add     r2, #0x16
	b       branch_21f7b48
@ 0x21f7b22

.thumb
branch_21f7b22: @ 21f7b22 :thumb
	cmp     r0, #0x2
	bne     branch_21f7b2c
	mov     r2, r1
	add     r2, #0x17
	b       branch_21f7b48
@ 0x21f7b2c

.thumb
branch_21f7b2c: @ 21f7b2c :thumb
	cmp     r0, #0x3
	bne     branch_21f7b36
	mov     r2, r1
	add     r2, #0x18
	b       branch_21f7b48
@ 0x21f7b36

.thumb
branch_21f7b36: @ 21f7b36 :thumb
	cmp     r0, #0x4
	bne     branch_21f7b40
	mov     r2, r1
	add     r2, #0x19
	b       branch_21f7b48
@ 0x21f7b40

.thumb
branch_21f7b40: @ 21f7b40 :thumb
	cmp     r0, #0x5
	bne     branch_21f7b48
	mov     r2, r1
	add     r2, #0x1a
.thumb
branch_21f7b48: @ 21f7b48 :thumb
	sub     r1, r2, #0x1
	lsl     r0, r1, #2
	add     r1, r1, r0
	ldr     r0, [pc, #0xc] @ 0x21f7b5c, (=#0x2200eac)
	add     r0, r0, r1
	ldrb    r0, [r5, r0]
	pop     {r4-r6,pc}
@ 0x21f7b56


.incbin "./baserom/overlay/overlay_0005.bin", 0x26dd6, 0x21f7b58 - 0x21f7b56


.word 0x1df @ 0x21f7b58
.word 0x2200eac @ 0x21f7b5c
.thumb
Function_21f7b60: @ 21f7b60 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r7, r1
	mov     r1, #0x5
	mov     r2, #0x0
	str     r0, [sp, #0x0]
	bl      Function_2074470
	mov     r5, #0x0
	add     r4, sp, #0xc
	mov     r6, r5
.thumb
branch_21f7b76: @ 21f7b76 :thumb
	mov     r1, r5
	ldr     r0, [sp, #0x0]
	add     r1, #0x36
	mov     r2, r6
	bl      Function_2074470
	strh    r0, [r4, #0x0]
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r5, #0x4
	blt     branch_21f7b76
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	str     r0, [sp, #0x4]
.thumb
branch_21f7b92: @ 21f7b92 :thumb
	ldr     r1, [sp, #0x8]
	ldr     r0, [sp, #0x0]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_21f7a74
	mov     r3, r0
	ldr     r0, [sp, #0x4]
	mov     r2, #0xc
	mul     r2, r0
	ldr     r0, [pc, #0x58] @ 0x21f7c00, (=#0x2200ce4)
	mov     r1, #0x0
	add     r2, r0, r2
.thumb
branch_21f7bac: @ 21f7bac :thumb
	mov     r4, r3
	asr     r4, r1
	mov     r0, #0x1
	and     r0, r4
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	cmp     r0, #0x1
	bne     branch_21f7be0
	ldr     r0, [r2, #0x8]
	cmp     r7, r0
	bne     branch_21f7be0
	ldrh    r5, [r2, #0x0]
	mov     r6, #0x0
	add     r4, sp, #0xc
.thumb
branch_21f7bc8: @ 21f7bc8 :thumb
	ldrh    r0, [r4, #0x0]
	cmp     r0, r5
	beq     branch_21f7bd6
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r6, #0x4
	blt     branch_21f7bc8
.thumb
branch_21f7bd6: @ 21f7bd6 :thumb
	cmp     r6, #0x4
	bne     branch_21f7be0
	add     sp, #0x14
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x21f7be0

.thumb
branch_21f7be0: @ 21f7be0 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r2, #0xc
	cmp     r1, #0x8
	blt     branch_21f7bac
	ldr     r0, [sp, #0x4]
	add     r0, #0x8
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x8]
	cmp     r0, #0x5
	blt     branch_21f7b92
	mov     r0, #0x0
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21f7bfe


.incbin "./baserom/overlay/overlay_0005.bin", 0x26e7e, 0x21f7c00 - 0x21f7bfe


.word 0x2200ce4 @ 0x21f7c00



.thumb
.globl Function_5_21f7c04
Function_5_21f7c04: @ 21f7c04 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x84
	str     r0, [sp, #0x14]
	add     r0, #0x80
	ldr     r6, [r0, #0x0]
	mov     r1, #0xf
	mov     r0, r6
	bl      Function_203f098
	mov     r5, r0
	ldr     r0, [sp, #0x14]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	ldr     r0, [sp, #0x14]
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0
	ldr     r0, [sp, #0x14]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	ldr     r0, [sp, #0x14]
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x14]
	bl      ScriptHandler_LoadHWord
	mov     r7, r0
	ldr     r0, [sp, #0x14]
	cmp     r4, #0xff
	str     r7, [r0, #0x64]
	beq     branch_21f7c62
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_207a268
	mov     r1, r4
	bl      Function_207a0fc
	str     r0, [sp, #0x2c]
.thumb
branch_21f7c62: @ 21f7c62 :thumb
	ldr     r2, [pc, #0x170] @ 0x21f7dd4, (=#0x287)
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, #0x20
	bl      Function_200b144
	str     r0, [sp, #0x28]
	mov     r0, r6
	mov     r1, r7
	bl      ScriptHandler_CheckLoadParameter
	mov     r7, r0
	ldr     r0, [sp, #0x14]
	mov     r1, #0x1
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_203f098
	mov     r2, #0x1
	str     r2, [sp, #0x0]
	str     r7, [sp, #0x4]
	ldr     r1, [r5, #0x0]
	mov     r3, #0x0
	str     r1, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x28]
	mov     r1, #0x14
	str     r0, [sp, #0x10]
	mov     r0, r6
	bl      Function_21f7ed8
	str     r0, [sp, #0x24]
	mov     r0, #0x0
	add     r1, sp, #0x38
	mov     r7, r0
.thumb
branch_21f7ca8: @ 21f7ca8 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r7, [r1, #0x0]
	.hword  0x1c89 @ add r1, r1, #0x2
	cmp     r0, #0x26
	bcc     branch_21f7ca8
	cmp     r4, #0xff
	beq     branch_21f7d46
	mov     r5, r7
	add     r4, sp, #0x30
	mov     r6, #0x0
.thumb
branch_21f7cbc: @ 21f7cbc :thumb
	mov     r1, r5
	ldr     r0, [sp, #0x2c]
	add     r1, #0x36
	mov     r2, r6
	bl      Function_2074470
	strh    r0, [r4, #0x0]
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r5, #0x4
	blt     branch_21f7cbc
	mov     r0, #0x0
	str     r0, [sp, #0x18]
	str     r0, [sp, #0x20]
	add     r6, sp, #0x38
.thumb
branch_21f7cda: @ 21f7cda :thumb
	ldr     r1, [sp, #0x18]
	ldr     r0, [sp, #0x2c]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_21f7a74
	mov     r12, r0
	ldr     r0, [sp, #0x20]
	mov     r2, #0xc
	mul     r2, r0
	ldr     r0, [pc, #0xe8] @ 0x21f7dd8, (=#0x2200ce4)
	mov     r1, #0x0
	add     r2, r0, r2
.thumb
branch_21f7cf4: @ 21f7cf4 :thumb
	mov     r0, r12
	mov     r3, r0
	asr     r3, r1
	mov     r0, #0x1
	and     r0, r3
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	cmp     r0, #0x1
	bne     branch_21f7d2c
	ldr     r3, [r2, #0x8]
	ldr     r0, [sp, #0x1c]
	cmp     r0, r3
	bne     branch_21f7d2c
	ldrh    r4, [r2, #0x0]
	mov     r5, #0x0
	add     r3, sp, #0x30
.thumb
branch_21f7d14: @ 21f7d14 :thumb
	ldrh    r0, [r3, #0x0]
	cmp     r0, r4
	beq     branch_21f7d22
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r5, #0x4
	blt     branch_21f7d14
.thumb
branch_21f7d22: @ 21f7d22 :thumb
	cmp     r5, #0x4
	bne     branch_21f7d2c
	strh    r4, [r6, #0x0]
	.hword  0x1cb6 @ add r6, r6, #0x2
	.hword  0x1c7f @ add r7, r7, #0x1
.thumb
branch_21f7d2c: @ 21f7d2c :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r2, #0xc
	cmp     r1, #0x8
	blt     branch_21f7cf4
	ldr     r0, [sp, #0x20]
	add     r0, #0x8
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x18]
	cmp     r0, #0x5
	blt     branch_21f7cda
	b       branch_21f7d6a
@ 0x21f7d46

.thumb
branch_21f7d46: @ 21f7d46 :thumb
	ldr     r5, [pc, #0x90] @ 0x21f7dd8, (=#0x2200ce4)
	mov     r6, r7
	add     r4, sp, #0x38
.thumb
branch_21f7d4c: @ 21f7d4c :thumb
	ldr     r1, [r5, #0x8]
	ldr     r0, [sp, #0x1c]
	cmp     r0, r1
	bne     branch_21f7d62
	lsl     r0, r6, #16
	lsr     r0, r0, #16
	bl      Function_21f7a3c
	strh    r0, [r4, #0x0]
	.hword  0x1ca4 @ add r4, r4, #0x2
	.hword  0x1c7f @ add r7, r7, #0x1
.thumb
branch_21f7d62: @ 21f7d62 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0xc
	cmp     r6, #0x26
	bcc     branch_21f7d4c
.thumb
branch_21f7d6a: @ 21f7d6a :thumb
	mov     r5, #0x0
	cmp     r7, #0x0
	ble     branch_21f7d88
	add     r4, sp, #0x38
	mov     r6, #0xff
.thumb
branch_21f7d74: @ 21f7d74 :thumb
	ldrh    r1, [r4, #0x0]
	ldr     r0, [sp, #0x24]
	mov     r2, r6
	mov     r3, r1
	bl      Function_21f7f2c
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r5, r7
	blt     branch_21f7d74
.thumb
branch_21f7d88: @ 21f7d88 :thumb
	ldr     r2, [pc, #0x50] @ 0x21f7ddc, (=#0x169)
	mov     r0, #0x1
	mov     r1, #0x1a
	mov     r3, #0x20
	bl      Function_200b144
	mov     r4, r0
	ldr     r0, [sp, #0x24]
	mov     r1, r4
	bl      Function_21f7e10
	ldr     r0, [sp, #0x24]
	ldr     r3, [pc, #0x3c] @ 0x21f7de0, (=#0xfffe)
	mov     r1, #0x5
	mov     r2, #0xff
	bl      Function_21f7f2c
	mov     r0, r4
	bl      Function_200b190
	ldr     r0, [sp, #0x24]
	ldr     r1, [sp, #0x28]
	bl      Function_21f7e10
	ldr     r0, [sp, #0x24]
	bl      Function_21f7f34
	ldr     r0, [sp, #0x14]
	ldr     r1, [pc, #0x20] @ 0x21f7de4, (=#0x21f7de9)
	bl      Function_203e764
	ldr     r0, [sp, #0x28]
	bl      Function_200b190
	mov     r0, #0x1
	add     sp, #0x84
	pop     {r4-r7,pc}
@ 0x21f7dd2


.incbin "./baserom/overlay/overlay_0005.bin", 0x27052, 0x21f7dd4 - 0x21f7dd2


.word 0x287 @ 0x21f7dd4
.word 0x2200ce4 @ 0x21f7dd8
.word 0x169 @ 0x21f7ddc
.word 0xfffe @ 0x21f7de0
.word 0x21f7de9 @ 0x21f7de4

.incbin "./baserom/overlay/overlay_0005.bin", 0x27068, 0x21f7e10 - 0x21f7de8


.thumb
Function_21f7e10: @ 21f7e10 :thumb
	add     r0, #0xb8
	str     r1, [r0, #0x0]
	bx      lr
@ 0x21f7e16


.align 2, 0


.thumb
Function_21f7e18: @ 21f7e18 :thumb
	push    {r3-r7,lr}
	ldr     r4, [sp, #0x2c]
	mov     r6, r1
	add     r1, #0xb8
	str     r4, [r1, #0x0]
	mov     r1, r6
	add     r1, #0xc3
	ldrb    r4, [r1, #0x0]
	mov     r1, #0x2
	mov     r7, #0x23
	bic     r4, r1
	mov     r1, r6
	add     r1, #0xc3
	strb    r4, [r1, #0x0]
	mov     r1, r6
	ldr     r4, [sp, #0x24]
	add     r1, #0xbc
	str     r4, [r1, #0x0]
	str     r0, [r6, #0x0]
	mov     r0, r6
	ldr     r1, [sp, #0x20]
	add     r0, #0xcc
	str     r1, [r0, #0x0]
	mov     r0, r6
	add     r0, #0xc3
	add     r4, sp, #0x8
	ldrb    r0, [r0, #0x0]
	mov     r1, #0x1
	ldrb    r5, [r4, #0x14]
	bic     r0, r1
	mov     r1, #0x1
	and     r1, r5
	orr     r1, r0
	mov     r0, r6
	add     r0, #0xc3
	strb    r1, [r0, #0x0]
	mov     r1, r6
	ldrb    r0, [r4, #0x10]
	add     r1, #0xc2
	lsl     r7, r7, #4
	strb    r0, [r1, #0x0]
	mov     r1, r6
	add     r1, #0xc4
	strb    r2, [r1, #0x0]
	mov     r1, r6
	add     r1, #0xc5
	strb    r3, [r1, #0x0]
	mov     r2, r6
	mov     r1, #0x0
	add     r2, #0xc7
	strb    r1, [r2, #0x0]
	ldr     r2, [sp, #0x28]
	mov     r3, #0x3
	str     r2, [r6, #0x18]
	mov     r2, r6
	add     r2, #0xc0
	strb    r3, [r2, #0x0]
	ldr     r2, [pc, #0x44] @ 0x21f7ed0, (=#0x27e)
	mov     r3, r6
	strh    r0, [r6, r2]
	mov     r2, r6
	mov     r5, r1
	mov     r0, #0xff
.thumb
branch_21f7e96: @ 21f7e96 :thumb
	mov     r4, r2
	add     r4, #0xf8
	str     r5, [r4, #0x0]
	mov     r4, r2
	add     r4, #0xfc
	str     r5, [r4, #0x0]
	strh    r0, [r3, r7]
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r2, #0x8
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r1, #0x27
	bcc     branch_21f7e96
	mov     r4, r6
	mov     r7, #0x50
.thumb
branch_21f7eb2: @ 21f7eb2 :thumb
	mov     r0, r7
	mov     r1, #0x4
	bl      Function_2023790
	str     r0, [r4, #0x1c]
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, #0x27
	bcc     branch_21f7eb2
	add     r6, #0xcc
	ldr     r1, [pc, #0xc] @ 0x21f7ed4, (=#0xeeee)
	ldr     r0, [r6, #0x0]
	strh    r1, [r0, #0x0]
	pop     {r3-r7,pc}
@ 0x21f7ece


.incbin "./baserom/overlay/overlay_0005.bin", 0x2714e, 0x21f7ed0 - 0x21f7ece


.word 0x27e @ 0x21f7ed0
.word 0xeeee @ 0x21f7ed4
.thumb
Function_21f7ed8: @ 21f7ed8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r7, r1
	mov     r1, #0xa
	mov     r6, r0
	mov     r0, #0x4
	lsl     r1, r1, #6
	str     r2, [sp, #0x18]
	mov     r5, r3
	bl      Function_2018144
	mov     r4, r0
	bne     branch_21f7ef8
	add     sp, #0x1c
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x21f7ef8

.thumb
branch_21f7ef8: @ 21f7ef8 :thumb
	mov     r2, #0xa
	mov     r1, #0x0
	lsl     r2, r2, #6
	blx     Function_20d5124
	str     r5, [sp, #0x0]
	add     r0, sp, #0x20
	ldrb    r0, [r0, #0x10]
	mov     r1, r4
	mov     r2, r7
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x34]
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x38]
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x3c]
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x40]
	str     r0, [sp, #0x14]
	ldr     r3, [sp, #0x18]
	mov     r0, r6
	bl      Function_21f7e18
	mov     r0, r4
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x21f7f2c

.thumb
Function_21f7f2c: @ 21f7f2c :thumb
	push    {r3,lr}
	bl      Function_21f7ff8
	pop     {r3,pc}
@ 0x21f7f34

.thumb
Function_21f7f34: @ 21f7f34 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	mov     r4, r0
	add     r0, #0xc7
	ldrb    r1, [r0, #0x0]
	cmp     r1, #0x8
	bls     branch_21f7f70
	mov     r0, r4
	add     r0, #0xc5
	ldrb    r0, [r0, #0x0]
	mov     r3, r4
	mov     r1, r4
	str     r0, [sp, #0x0]
	mov     r0, #0xb
	str     r0, [sp, #0x4]
	mov     r0, #0x10
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x1
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x0]
	add     r3, #0xc4
	ldrb    r3, [r3, #0x0]
	ldr     r0, [r0, #0x8]
	add     r1, #0x8
	mov     r2, #0x3
	bl      Function_201a7e8
	b       branch_21f7f9e
@ 0x21f7f70

.thumb
branch_21f7f70: @ 21f7f70 :thumb
	mov     r0, r4
	add     r0, #0xc5
	ldrb    r0, [r0, #0x0]
	mov     r3, r4
	add     r3, #0xc4
	str     r0, [sp, #0x0]
	mov     r0, #0xb
	str     r0, [sp, #0x4]
	lsl     r0, r1, #25
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x1
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x0]
	mov     r1, r4
	ldrb    r3, [r3, #0x0]
	ldr     r0, [r0, #0x8]
	add     r1, #0x8
	mov     r2, #0x3
	bl      Function_201a7e8
.thumb
branch_21f7f9e: @ 21f7f9e :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	ldr     r2, [pc, #0x44] @ 0x21f7ff0, (=#0x3d9)
	ldr     r0, [r0, #0x8]
	mov     r1, #0x3
	mov     r3, #0xb
	bl      Function_200daa4
	mov     r0, r4
	ldr     r2, [pc, #0x38] @ 0x21f7ff0, (=#0x3d9)
	add     r0, #0x8
	mov     r1, #0x1
	mov     r3, #0xb
	bl      Function_200dc48
	mov     r0, r4
	bl      Function_21f8090
	mov     r2, r4
	add     r2, #0xc2
	mov     r0, r4
	ldrb    r2, [r2, #0x0]
	add     r0, #0xd0
	mov     r1, #0x0
	mov     r3, #0x4
	bl      Function_200112c
	mov     r1, r4
	add     r1, #0xf0
	str     r0, [r1, #0x0]
	ldr     r0, [pc, #0x10] @ 0x21f7ff4, (=#0x21f81a9)
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_200d9e8
	str     r0, [r4, #0x4]
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x21f7ff0

.word 0x3d9 @ 0x21f7ff0
.word 0x21f81a9 @ 0x21f7ff4
.thumb
Function_21f7ff8: @ 21f7ff8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	str     r1, [sp, #0x0]
	mov     r0, #0x50
	mov     r1, #0x4
	mov     r7, r2
	mov     r4, r3
	bl      Function_2023790
	mov     r6, r0
	mov     r0, r5
	add     r0, #0xb8
	ldr     r0, [r0, #0x0]
	ldr     r1, [sp, #0x0]
	mov     r2, r6
	bl      Function_200b1b8
	mov     r1, r5
	add     r1, #0xc7
	ldrb    r1, [r1, #0x0]
	mov     r0, r5
	add     r0, #0xbc
	lsl     r1, r1, #2
	add     r1, r5, r1
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x1c]
	mov     r2, r6
	bl      Function_200c388
	mov     r0, r5
	add     r0, #0xc7
	ldrb    r1, [r0, #0x0]
	lsl     r0, r1, #2
	add     r0, r5, r0
	lsl     r1, r1, #3
	add     r1, r5, r1
	ldr     r0, [r0, #0x1c]
	add     r1, #0xf8
	str     r0, [r1, #0x0]
	mov     r0, r6
	bl      Function_20237bc
	cmp     r4, #0xfa
	bne     branch_21f8064
	mov     r0, r5
	add     r0, #0xc7
	ldrb    r0, [r0, #0x0]
	mov     r1, #0x2
	mvn     r1, r1
	lsl     r0, r0, #3
	add     r0, r5, r0
	add     r0, #0xfc
	str     r1, [r0, #0x0]
	b       branch_21f8072
@ 0x21f8064

.thumb
branch_21f8064: @ 21f8064 :thumb
	mov     r0, r5
	add     r0, #0xc7
	ldrb    r0, [r0, #0x0]
	lsl     r0, r0, #3
	add     r0, r5, r0
	add     r0, #0xfc
	str     r4, [r0, #0x0]
.thumb
branch_21f8072: @ 21f8072 :thumb
	mov     r0, r5
	add     r0, #0xc7
	ldrb    r0, [r0, #0x0]
	lsl     r0, r0, #1
	add     r1, r5, r0
	mov     r0, #0x23
	lsl     r0, r0, #4
	strh    r7, [r1, r0]
	mov     r0, r5
	add     r0, #0xc7
	ldrb    r0, [r0, #0x0]
	add     r5, #0xc7
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x0]
	pop     {r3-r7,pc}
@ 0x21f8090

.thumb
Function_21f8090: @ 21f8090 :thumb
	push    {r3,r4}
	mov     r2, r0
	mov     r1, r0
	add     r2, #0xf8
	add     r1, #0xd0
	str     r2, [r1, #0x0]
	mov     r1, r0
	ldr     r2, [pc, #0xec] @ 0x21f818c, (=#0x21f819d)
	add     r1, #0xd4
	str     r2, [r1, #0x0]
	mov     r1, r0
	mov     r2, #0x0
	add     r1, #0xd8
	str     r2, [r1, #0x0]
	mov     r2, r0
	mov     r1, r0
	add     r2, #0x8
	add     r1, #0xdc
	str     r2, [r1, #0x0]
	mov     r1, r0
	add     r1, #0xc7
	ldrb    r2, [r1, #0x0]
	mov     r1, r0
	add     r1, #0xe0
	strh    r2, [r1, #0x0]
	mov     r1, r0
	mov     r2, #0x8
	add     r1, #0xe2
	strh    r2, [r1, #0x0]
	mov     r1, r0
	mov     r2, #0x1
	add     r1, #0xe4
	strb    r2, [r1, #0x0]
	mov     r1, r0
	mov     r3, #0xc
	add     r1, #0xe5
	strb    r3, [r1, #0x0]
	mov     r1, r0
	mov     r3, #0x2
	add     r1, #0xe6
	strb    r3, [r1, #0x0]
	mov     r1, r0
	add     r1, #0xe7
	ldrb    r3, [r1, #0x0]
	mov     r1, #0xf
	bic     r3, r1
	orr     r3, r2
	mov     r2, r0
	add     r2, #0xe7
	strb    r3, [r2, #0x0]
	mov     r2, r0
	add     r2, #0xe7
	ldrb    r4, [r2, #0x0]
	mov     r2, #0xf0
	mov     r3, #0x10
	bic     r4, r2
	orr     r4, r3
	mov     r3, r0
	add     r3, #0xe7
	strb    r4, [r3, #0x0]
	mov     r3, r0
	add     r3, #0xe8
	ldrb    r3, [r3, #0x0]
	bic     r3, r1
	mov     r1, #0xf
	orr     r3, r1
	mov     r1, r0
	add     r1, #0xe8
	strb    r3, [r1, #0x0]
	mov     r1, r0
	add     r1, #0xe8
	ldrb    r3, [r1, #0x0]
	mov     r1, #0x20
	bic     r3, r2
	mov     r2, r3
	orr     r2, r1
	mov     r1, r0
	add     r1, #0xe8
	strb    r2, [r1, #0x0]
	mov     r1, r0
	add     r1, #0xea
	ldrh    r2, [r1, #0x0]
	mov     r1, #0x7
	bic     r2, r1
	mov     r1, r0
	add     r1, #0xea
	strh    r2, [r1, #0x0]
	mov     r1, r0
	add     r1, #0xea
	ldrh    r2, [r1, #0x0]
	mov     r1, #0x78
	bic     r2, r1
	mov     r1, r0
	add     r1, #0xea
	strh    r2, [r1, #0x0]
	mov     r1, r0
	add     r1, #0xea
	ldrh    r2, [r1, #0x0]
	ldr     r1, [pc, #0x38] @ 0x21f8190, (=#0xfffffe7f)
	and     r2, r1
	mov     r1, #0x80
	orr     r2, r1
	mov     r1, r0
	add     r1, #0xea
	strh    r2, [r1, #0x0]
	mov     r1, r0
	add     r1, #0xea
	ldrh    r2, [r1, #0x0]
	ldr     r1, [pc, #0x28] @ 0x21f8194, (=#0xffff81ff)
	and     r2, r1
	mov     r1, r0
	add     r1, #0xea
	strh    r2, [r1, #0x0]
	mov     r1, r0
	add     r1, #0xea
	ldrh    r2, [r1, #0x0]
	ldr     r1, [pc, #0x1c] @ 0x21f8198, (=#0xffff7fff)
	and     r2, r1
	mov     r1, r0
	add     r1, #0xea
	strh    r2, [r1, #0x0]
	mov     r1, r0
	add     r1, #0xec
	str     r0, [r1, #0x0]
	pop     {r3,r4}
	bx      lr
@ 0x21f818c

.word 0x21f819d @ 0x21f818c
.word 0xfffffe7f @ 0x21f8190
.word 0xffff81ff @ 0x21f8194
.word 0xffff7fff @ 0x21f8198

.incbin "./baserom/overlay/overlay_0005.bin", 0x2741c, 0x21f82b8 - 0x21f819c


.thumb
.globl Function_5_21f82b8
Function_5_21f82b8: @ 21f82b8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r5, r0
	add     r0, #0x80
	ldr     r7, [r0, #0x0]
	mov     r1, #0xf
	mov     r0, r7
	bl      Function_203f098
	str     r0, [sp, #0x14]
	mov     r0, r7
	mov     r1, #0x0
	bl      Function_203f098
	str     r0, [sp, #0x18]
	ldr     r0, [r5, #0x8]
	add     r1, r0, #0x1
	str     r1, [r5, #0x8]
	ldrb    r6, [r0, #0x0]
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	mov     r0, r5
	ldrb    r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0x1c]
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	ldr     r0, [sp, #0x1c]
	bl      Function_21f7a4c
	mov     r1, #0xc
	mul     r1, r0
	ldr     r0, [sp, #0x14]
	mov     r2, r4
	ldr     r0, [r0, #0x0]
	mov     r3, r5
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x28] @ 0x21f8348, (=#0x2200ce6)
	ldrb    r0, [r0, r1]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x24] @ 0x21f834c, (=#0x2200ce7)
	ldrb    r0, [r0, r1]
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x24] @ 0x21f8350, (=#0x2200ce8)
	ldrb    r0, [r0, r1]
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x20] @ 0x21f8354, (=#0x2200ce9)
	ldrb    r0, [r0, r1]
	mov     r1, r6
	str     r0, [sp, #0x10]
	mov     r0, r7
	bl      Function_21dd250
	ldr     r1, [sp, #0x18]
	str     r0, [r1, #0x0]
	mov     r0, #0x0
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x21f8348

.word 0x2200ce6 @ 0x21f8348
.word 0x2200ce7 @ 0x21f834c
.word 0x2200ce8 @ 0x21f8350
.word 0x2200ce9 @ 0x21f8354



.thumb
.globl Function_5_21f8358
Function_5_21f8358: @ 21f8358 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      0x203f098
	ldr     r0, [r0, #0x0]
	bl      Function_21dd3a8
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21f836e


.incbin "./baserom/overlay/overlay_0005.bin", 0x275ee, 0x2202120 - 0x21f836e


@end 0x2202120
