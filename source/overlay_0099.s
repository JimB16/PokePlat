

.section .iwram99, "ax"


.thumb
Function_21d0d80: @ 21d0d80 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      0x20177a4
	bl      0x201ff00
	bl      0x201ff68
	mov     r0, #0x1
	lsl     r0, r0, #26
	ldr     r2, [r0, #0x0]
	ldr     r1, [pc, #0x238] @ 0x21d0fd8, (=0xffffe0ff)
	and     r2, r1
	str     r2, [r0, #0x0]
	ldr     r2, [pc, #0x234] @ 0x21d0fdc, (=0x4001000)
	ldr     r3, [r2, #0x0]
	and     r1, r3
	str     r1, [r2, #0x0]
	ldr     r3, [r0, #0x0]
	ldr     r1, [pc, #0x230] @ 0x21d0fe0, (=0xffff1fff)
	and     r3, r1
	str     r3, [r0, #0x0]
	ldr     r3, [r2, #0x0]
	add     r0, #0x50
	and     r1, r3
	str     r1, [r2, #0x0]
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	mov     r0, r2
	add     r0, #0x50
	strh    r1, [r0, #0x0]
	mov     r0, #0x3
	mov     r1, #0x4b
	lsl     r2, r2, #7
	bl      0x2017fc8
	ldr     r1, [pc, #0x210] @ 0x21d0fe4, (=0x111c)
	mov     r0, r5
	mov     r2, #0x4b
	bl      0x200681c
	ldr     r2, [pc, #0x208] @ 0x21d0fe4, (=0x111c)
	mov     r1, #0x0
	mov     r4, r0
	blx     MI_CpuFill8
	mov     r0, r5
	bl      0x2006840
	str     r0, [r4, #0x0]
	mov     r0, #0x4b
	bl      Function_21d19ac
	str     r0, [r4, #0x10]
	mov     r0, #0x4b
	bl      0x2002f38
	mov     r2, #0x2
	str     r0, [r4, #0xc]
	mov     r1, #0x0
	lsl     r2, r2, #8
	mov     r3, #0x4b
	bl      Function_2002f70
	mov     r1, #0x1
	ldr     r0, [r4, #0xc]
	lsl     r2, r1, #9
	mov     r3, #0x4b
	bl      Function_2002f70
	mov     r2, #0x7
	ldr     r0, [r4, #0xc]
	mov     r1, #0x2
	lsl     r2, r2, #6
	mov     r3, #0x4b
	bl      Function_2002f70
	mov     r2, #0x2
	ldr     r0, [r4, #0xc]
	mov     r1, #0x3
	lsl     r2, r2, #8
	mov     r3, #0x4b
	bl      Function_2002f70
	ldr     r0, [r4, #0xc]
	mov     r1, #0x1
	bl      0x2003858
	mov     r0, #0x4b
	bl      0x2018340
	str     r0, [r4, #0x8]
	mov     r0, #0x40
	mov     r1, #0x4b
	bl      0x201dbec
	mov     r0, #0x4
	mov     r1, #0x8
	bl      0x2017dd4
	ldr     r0, [r4, #0x8]
	bl      Function_21d1380
	bl      0x201e3d8
	mov     r0, #0x4
	bl      0x201e450
	mov     r2, #0x89
	mov     r0, #0x0
	mov     r1, #0x1a
	lsl     r2, r2, #2
	mov     r3, #0x4b
	bl      Function_200b144
	str     r0, [r4, #0x20]
	mov     r0, #0x7f
	mov     r1, #0x4b
	bl      0x2006c24
	ldr     r1, [pc, #0x16c] @ 0x21d0fe8, (=0x10f8)
	str     r0, [r4, r1]
	mov     r0, r4
	bl      Function_21d1918
	mov     r0, #0x4b
	bl      0x200c6e4
	ldr     r1, [pc, #0x160] @ 0x21d0fec, (=0x21d4760)
	ldr     r2, [pc, #0x164] @ 0x21d0ff0, (=0x21d4718)
	mov     r3, #0x20
	str     r0, [r4, #0x18]
	bl      0x200c73c
	ldr     r1, [pc, #0x15c] @ 0x21d0ff4, (=0x200010)
	mov     r0, #0x1
	bl      0x200966c
	mov     r0, #0x1
	bl      0x2009704
	ldr     r0, [r4, #0x18]
	bl      0x200c704
	str     r0, [r4, #0x1c]
	ldr     r0, [r4, #0x18]
	ldr     r1, [r4, #0x1c]
	mov     r2, #0x80
	bl      0x200c7c0
	ldr     r0, [r4, #0x18]
	ldr     r1, [r4, #0x1c]
	ldr     r2, [pc, #0x13c] @ 0x21d0ff8, (=0x21d472c)
	bl      0x200cb30
	ldr     r0, [r4, #0x18]
	bl      0x200c738
	mov     r2, #0x11
	mov     r1, #0x0
	lsl     r2, r2, #16
	bl      0x200964c
	mov     r0, r4
	bl      Function_21d16e4
	ldr     r0, [r4, #0x20]
	mov     r1, #0xef
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x8]
	mvn     r1, r1
	mov     r2, #0x1
	mov     r3, #0xf
	bl      Function_21d3e78
	ldr     r1, [pc, #0x114] @ 0x21d0ffc, (=0x1108)
	mov     r2, #0x5
	str     r0, [r4, r1]
	ldr     r0, [r4, #0x20]
	ldr     r1, [pc, #0x110] @ 0x21d1000, (=0xfffffe40)
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x8]
	mov     r3, #0xf
	bl      Function_21d3e78
	ldr     r1, [pc, #0x108] @ 0x21d1004, (=0x110c)
	ldr     r2, [pc, #0x108] @ 0x21d1008, (=0xa8c0)
	str     r0, [r4, r1]
	ldr     r0, [pc, #0x108] @ 0x21d100c, (=0x4000040)
	mov     r1, #0xff
	strh    r1, [r0, #0x0]
	mov     r6, r0
	strh    r2, [r0, #0x4]
	add     r6, #0x8
	ldrh    r3, [r6, #0x0]
	mov     r2, #0x3f
	mov     r7, #0x1d
	bic     r3, r2
	orr     r3, r7
	mov     r5, #0x20
	orr     r3, r5
	strh    r3, [r6, #0x0]
	add     r0, #0xa
	ldrh    r6, [r0, #0x0]
	mov     r3, #0x1f
	bic     r6, r2
	orr     r6, r3
	orr     r6, r5
	strh    r6, [r0, #0x0]
	ldr     r0, [pc, #0xe4] @ 0x21d1010, (=0x4001040)
	strh    r1, [r0, #0x0]
	mov     r1, #0x18
	strh    r1, [r0, #0x4]
	mov     r1, r0
	add     r1, #0x8
	ldrh    r6, [r1, #0x0]
	bic     r6, r2
	orr     r6, r7
	orr     r6, r5
	strh    r6, [r1, #0x0]
	mov     r6, r0
	add     r6, #0xa
	ldrh    r1, [r6, #0x0]
	bic     r1, r2
	orr     r1, r3
	orr     r1, r5
	lsl     r3, r0, #20
	strh    r1, [r6, #0x0]
	ldr     r1, [r3, #0x0]
	ldr     r2, [pc, #0x8c] @ 0x21d0fe0, (=0xffff1fff)
	mov     r5, r1
	and     r5, r2
	lsr     r1, r0, #13
	orr     r1, r5
	str     r1, [r3, #0x0]
	mov     r3, r0
	sub     r3, #0x40
	ldr     r1, [r3, #0x0]
	lsr     r0, r0, #13
	and     r1, r2
	orr     r0, r1
	str     r0, [r3, #0x0]
	ldr     r0, [pc, #0xa4] @ 0x21d1014, (=0x21bf6dc)
	mov     r1, #0x1
	strb    r1, [r0, #0x5]
	bl      0x201ffe8
	bl      0x201ffd0
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff74
	ldr     r0, [pc, #0x8c] @ 0x21d1018, (=0x21d1245)
	ldr     r2, [pc, #0x8c] @ 0x21d101c, (=0xea60)
	mov     r1, r4
	bl      0x200d9e8
	str     r0, [r4, #0x14]
	ldr     r0, [pc, #0x88] @ 0x21d1020, (=0x21d1351)
	mov     r1, r4
	bl      SetMainLoopFunctionCall
	ldr     r1, [pc, #0x84] @ 0x21d1024, (=0x4a2)
	mov     r0, #0xe
	mov     r2, #0x1
	bl      0x2004550
	mov     r0, r7
	sub     r0, #0x2d
	mov     r1, #0x3d
	mov     r2, #0x3
	bl      0x200ab4c
	mov     r0, #0x0
	mov     r1, r0
	bl      0x200f44c
	mov     r0, #0x1
	mov     r1, #0x0
	bl      0x200f44c
	mov     r0, #0x1
	mov     r1, r0
	bl      0x2019120
	mov     r0, #0x5
	mov     r1, #0x1
	bl      0x2019120
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d0fd8

.word 0xffffe0ff @ 0x21d0fd8
.word 0x4001000 @ 0x21d0fdc
.word 0xffff1fff @ 0x21d0fe0
.word 0x111c @ 0x21d0fe4
.word 0x10f8 @ 0x21d0fe8
.word 0x21d4760 @ 0x21d0fec
.word 0x21d4718 @ 0x21d0ff0
.word 0x200010 @ 0x21d0ff4
.word 0x21d472c @ 0x21d0ff8
.word 0x1108 @ 0x21d0ffc
.word 0xfffffe40 @ 0x21d1000
.word 0x110c @ 0x21d1004
.word 0xa8c0 @ 0x21d1008
.word 0x4000040 @ 0x21d100c
.word 0x4001040 @ 0x21d1010
.word 0x21bf6dc @ 0x21d1014
.word 0x21d1245 @ 0x21d1018
.word 0xea60 @ 0x21d101c
.word 0x21d1351 @ 0x21d1020
.word 0x4a2 @ 0x21d1024
.thumb
Function_21d1028: @ 21d1028 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r1
	bl      0x200682c
	mov     r4, r0
	ldr     r0, [pc, #0x150] @ 0x21d1188, (=0x1108)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21d1050
	mov     r1, #0x1
	bl      Function_21d3f6c
	ldr     r0, [pc, #0x148] @ 0x21d118c, (=0x110c)
	mov     r1, #0x1
	ldr     r0, [r4, r0]
	bl      Function_21d3f6c
	ldr     r1, [pc, #0x140] @ 0x21d1190, (=0x1110)
	str     r0, [r4, r1]
.thumb
branch_21d1050: @ 21d1050 :thumb
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x4]
	cmp     r0, #0x0
	beq     branch_21d1094
	ldr     r0, [pc, #0x138] @ 0x21d1194, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x8
	tst     r0, r1
	beq     branch_21d1094
	mov     r0, #0x11
	lsl     r0, r0, #8
	ldrb    r1, [r4, r0]
	cmp     r1, #0x0
	bne     branch_21d1094
	.hword  0x1c40 @ add r0, r0, #0x1
	ldrb    r0, [r4, r0]
	cmp     r0, #0x6
	bcs     branch_21d1094
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x4b
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      0x200f174
	mov     r0, #0x11
	mov     r1, #0x1
	lsl     r0, r0, #8
	strb    r1, [r4, r0]
.thumb
branch_21d1094: @ 21d1094 :thumb
	mov     r0, #0x11
	lsl     r0, r0, #8
	ldrb    r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21d1104
	cmp     r0, #0x1
	bne     branch_21d1104
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_21d1104
	ldr     r1, [pc, #0xec] @ 0x21d1198, (=0x1102)
	ldrb    r0, [r4, r1]
	cmp     r0, #0x1
	bne     branch_21d10c2
	.hword  0x1e49 @ sub r1, r1, #0x1
	ldrb    r1, [r4, r1]
	mov     r0, r4
	bl      Function_21d1cfc
	ldr     r0, [pc, #0xd8] @ 0x21d1198, (=0x1102)
	mov     r1, #0x0
	strb    r1, [r4, r0]
.thumb
branch_21d10c2: @ 21d10c2 :thumb
	mov     r0, #0x3
	bl      0x200ac1c
	cmp     r0, #0x0
	bne     branch_21d10d2
	mov     r0, #0x3
	bl      0x200abb0
.thumb
branch_21d10d2: @ 21d10d2 :thumb
	mov     r0, r4
	bl      Function_21d12f0
	ldr     r0, [pc, #0xc0] @ 0x21d119c, (=0x1101)
	mov     r1, #0x6
	strb    r1, [r4, r0]
	mov     r0, #0x0
	bl      0x201ff48
	mov     r0, #0x0
	bl      0x201ffb0
	ldr     r0, [pc, #0xb4] @ 0x21d11a0, (=0xfa4)
	mov     r2, #0x4f
	add     r0, r4, r0
	mov     r1, #0x0
	lsl     r2, r2, #2
	blx     MI_CpuFill8
	mov     r0, #0x11
	mov     r1, #0x2
	lsl     r0, r0, #8
	strb    r1, [r4, r0]
	mov     r0, #0x0
	str     r0, [r5, #0x0]
.thumb
branch_21d1104: @ 21d1104 :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_21d1114
	cmp     r0, #0x1
	beq     branch_21d113a
	cmp     r0, #0x2
	beq     branch_21d1174
	b       branch_21d117a
@ 0x21d1114

.thumb
branch_21d1114: @ 21d1114 :thumb
	mov     r0, #0x11
	lsl     r0, r0, #8
	ldrb    r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21d1122
	cmp     r0, #0x2
	bne     branch_21d117a
.thumb
branch_21d1122: @ 21d1122 :thumb
	ldr     r1, [pc, #0x78] @ 0x21d119c, (=0x1101)
	mov     r0, r4
	ldrb    r1, [r4, r1]
	bl      Function_21d1cc8
	ldr     r0, [pc, #0x68] @ 0x21d1198, (=0x1102)
	mov     r1, #0x1
	strb    r1, [r4, r0]
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_21d117a
@ 0x21d113a

.thumb
branch_21d113a: @ 21d113a :thumb
	ldr     r1, [pc, #0x60] @ 0x21d119c, (=0x1101)
	mov     r0, r4
	ldrb    r1, [r4, r1]
	bl      Function_21d1d30
	cmp     r0, #0x1
	bne     branch_21d117a
	ldr     r1, [pc, #0x50] @ 0x21d119c, (=0x1101)
	mov     r0, r4
	ldrb    r1, [r4, r1]
	bl      Function_21d1cfc
	ldr     r1, [pc, #0x44] @ 0x21d1198, (=0x1102)
	mov     r0, #0x0
	strb    r0, [r4, r1]
	.hword  0x1e4a @ sub r2, r1, #0x1
	ldrb    r2, [r4, r2]
	add     r3, r2, #0x1
	.hword  0x1e4a @ sub r2, r1, #0x1
	strb    r3, [r4, r2]
	.hword  0x1e49 @ sub r1, r1, #0x1
	ldrb    r1, [r4, r1]
	cmp     r1, #0x7
	bcs     branch_21d116e
	str     r0, [r5, #0x0]
	b       branch_21d117a
@ 0x21d116e

.thumb
branch_21d116e: @ 21d116e :thumb
	mov     r0, #0x2
	str     r0, [r5, #0x0]
	b       branch_21d117a
@ 0x21d1174

.thumb
branch_21d1174: @ 21d1174 :thumb
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4,r5,pc}
@ 0x21d117a

.thumb
branch_21d117a: @ 21d117a :thumb
	ldr     r0, [pc, #0x28] @ 0x21d11a4, (=0x10fc)
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d1188

.word 0x1108 @ 0x21d1188
.word 0x110c @ 0x21d118c
.word 0x1110 @ 0x21d1190
.word 0x21bf67c @ 0x21d1194
.word 0x1102 @ 0x21d1198
.word 0x1101 @ 0x21d119c
.word 0xfa4 @ 0x21d11a0
.word 0x10fc @ 0x21d11a4
.thumb
Function_21d11a8: @ 21d11a8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      0x200682c
	mov     r4, r0
	ldr     r0, [r4, #0x14]
	bl      Function_200da58
	ldr     r0, [pc, #0x80] @ 0x21d123c, (=0x1108)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21d11c8
	mov     r0, r4
	bl      Function_21d1270
	b       branch_21d11ce
@ 0x21d11c8

.thumb
branch_21d11c8: @ 21d11c8 :thumb
	mov     r0, r4
	bl      Function_21d1314
.thumb
branch_21d11ce: @ 21d11ce :thumb
	ldr     r0, [r4, #0x20]
	bl      Function_200b190
	ldr     r0, [r4, #0x18]
	ldr     r1, [r4, #0x1c]
	bl      Function_200d0b0
	ldr     r0, [r4, #0x18]
	bl      0x200c8d4
	ldr     r0, [r4, #0xc]
	mov     r1, #0x0
	bl      0x2002fa0
	ldr     r0, [r4, #0xc]
	mov     r1, #0x1
	bl      0x2002fa0
	ldr     r0, [r4, #0xc]
	mov     r1, #0x2
	bl      0x2002fa0
	ldr     r0, [r4, #0xc]
	mov     r1, #0x3
	bl      0x2002fa0
	ldr     r0, [r4, #0xc]
	bl      0x2002f54
	mov     r0, r4
	bl      Function_21d19a0
	ldr     r0, [pc, #0x30] @ 0x21d1240, (=0x10f8)
	ldr     r0, [r4, r0]
	bl      0x2006ca8
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      0x20177a4
	bl      0x201dc3c
	bl      0x201e530
	mov     r0, r5
	bl      0x2006830
	mov     r0, #0x4b
	bl      0x201807c
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d123a


.align 2


.word 0x1108 @ 0x21d123c
.word 0x10f8 @ 0x21d1240
.thumb
Function_21d1244: @ 21d1244 :thumb
	push    {r4,lr}
	ldr     r0, [pc, #0x24] @ 0x21d126c, (=0x1103)
	mov     r4, r1
	ldrb    r0, [r4, r0]
	cmp     r0, #0x1
	bne     branch_21d125e
	mov     r0, r4
	bl      Function_21d1720
	mov     r0, #0x0
	mov     r1, r0
	bl      0x20241bc
.thumb
branch_21d125e: @ 21d125e :thumb
	ldr     r0, [r4, #0x1c]
	bl      0x200c7ec
	bl      0x200c808
	pop     {r4,pc}
@ 0x21d126a


.align 2


.word 0x1103 @ 0x21d126c
.thumb
Function_21d1270: @ 21d1270 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x70] @ 0x21d12e8, (=0x1108)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_21d1280
	bl      ErrorHandling
.thumb
branch_21d1280: @ 21d1280 :thumb
	ldr     r0, [pc, #0x68] @ 0x21d12ec, (=0x110c)
	ldr     r0, [r4, r0]
	bl      Function_21d3f38
	ldr     r0, [pc, #0x5c] @ 0x21d12e8, (=0x1108)
	ldr     r0, [r4, r0]
	bl      Function_21d3f38
	ldr     r0, [pc, #0x58] @ 0x21d12ec, (=0x110c)
	mov     r1, #0x0
	str     r1, [r4, r0]
	.hword  0x1f00 @ sub r0, r0, #0x4
	str     r1, [r4, r0]
	mov     r0, #0x1
	bl      0x2019120
	mov     r0, #0x5
	mov     r1, #0x0
	bl      0x2019120
	ldr     r0, [r4, #0x8]
	mov     r1, #0x7
	bl      0x2019044
	ldr     r0, [r4, #0x8]
	mov     r1, #0x5
	bl      0x2019044
	ldr     r0, [r4, #0x8]
	mov     r1, #0x6
	bl      0x2019044
	ldr     r0, [r4, #0x8]
	mov     r1, #0x3
	bl      0x2019044
	ldr     r0, [r4, #0x8]
	mov     r1, #0x2
	bl      0x2019044
	ldr     r0, [r4, #0x8]
	mov     r1, #0x1
	bl      0x2019044
	ldr     r0, [r4, #0x8]
	bl      free
	ldr     r0, [r4, #0x10]
	bl      Function_21d1a4c
	pop     {r4,pc}
@ 0x21d12e6


.align 2


.word 0x1108 @ 0x21d12e8
.word 0x110c @ 0x21d12ec
.thumb
Function_21d12f0: @ 21d12f0 :thumb
	push    {r4,lr}
	ldr     r1, [pc, #0x1c] @ 0x21d1310, (=0x1108)
	mov     r4, r0
	ldr     r1, [r4, r1]
	cmp     r1, #0x0
	beq     branch_21d130c
	bl      Function_21d1270
	mov     r0, #0x4b
	bl      0x2018340
	str     r0, [r4, #0x8]
	bl      Function_21d1580
.thumb
branch_21d130c: @ 21d130c :thumb
	pop     {r4,pc}
@ 0x21d130e


.align 2


.word 0x1108 @ 0x21d1310
.thumb
Function_21d1314: @ 21d1314 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x30] @ 0x21d134c, (=0x1108)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21d1324
	bl      ErrorHandling
.thumb
branch_21d1324: @ 21d1324 :thumb
	ldr     r0, [r4, #0x8]
	mov     r1, #0x1
	bl      0x2019044
	ldr     r0, [r4, #0x8]
	mov     r1, #0x2
	bl      0x2019044
	ldr     r0, [r4, #0x8]
	mov     r1, #0x3
	bl      0x2019044
	ldr     r0, [r4, #0x8]
	mov     r1, #0x7
	bl      0x2019044
	ldr     r0, [r4, #0x8]
	bl      free
	pop     {r4,pc}
@ 0x21d134c

.word 0x1108 @ 0x21d134c
.thumb
Function_21d1350: @ 21d1350 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x201dcac
	bl      0x200c800
	ldr     r0, [r4, #0xc]
	bl      0x2003694
	ldr     r0, [r4, #0x8]
	bl      0x201c2b8
	ldr     r3, [pc, #0xc] @ 0x21d1378, (=0x27e0000)
	ldr     r1, [pc, #0x10] @ 0x21d137c, (=0x3ff8)
	mov     r0, #0x1
	ldr     r2, [r3, r1]
	orr     r0, r2
	str     r0, [r3, r1]
	pop     {r4,pc}
@ 0x21d1376


.align 2


.word 0x27e0000 @ 0x21d1378
.word 0x3ff8 @ 0x21d137c
.thumb
Function_21d1380: @ 21d1380 :thumb
	push    {r3-r5,lr}
	add     sp, #-0xe0
	mov     r4, r0
	bl      0x201ff00
	bl      0x201ff68
	ldr     r5, [pc, #0x1dc] @ 0x21d156c, (=0x21d47a8)
	add     r3, sp, #0x10
	mov     r2, #0x5
.thumb
branch_21d1394: @ 21d1394 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d1394
	add     r0, sp, #0x10
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
	ldr     r5, [pc, #0x194] @ 0x21d1570, (=0x21d4708)
	add     r3, sp, #0x0
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      0x2018368
	ldr     r5, [pc, #0x184] @ 0x21d1574, (=0x21d4824)
	add     r3, sp, #0x8c
	mov     r2, #0xa
.thumb
branch_21d13f4: @ 21d13f4 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d13f4
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	str     r0, [r3, #0x0]
	mov     r0, r4
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
	mov     r3, #0x2
	bl      0x20183c4
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
	ldr     r1, [pc, #0xf8] @ 0x21d1578, (=0x4000008)
	mov     r0, #0x3
	ldrh    r2, [r1, #0x0]
	bic     r2, r0
	mov     r0, #0x1
	orr     r2, r0
	strh    r2, [r1, #0x0]
	mov     r1, r0
	bl      Function_201ff0c
	ldr     r5, [pc, #0xe8] @ 0x21d157c, (=0x21d4878)
	add     r3, sp, #0x38
	mov     r2, #0xa
.thumb
branch_21d1496: @ 21d1496 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d1496
	ldr     r0, [r5, #0x0]
	mov     r1, #0x5
	str     r0, [r3, #0x0]
	mov     r0, r4
	add     r2, sp, #0x38
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
	mov     r0, r4
	mov     r1, #0x6
	add     r2, sp, #0x54
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, r4
	mov     r1, #0x6
	bl      0x2019ebc
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x6
	mov     r3, r2
	bl      Function_2019184
	mov     r0, r4
	mov     r1, #0x6
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2019184
	mov     r0, r4
	mov     r1, #0x7
	add     r2, sp, #0x70
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, r4
	mov     r1, #0x7
	bl      0x2019ebc
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x7
	mov     r3, r2
	bl      Function_2019184
	mov     r0, r4
	mov     r1, #0x7
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2019184
	mov     r0, #0x1
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x4b
	bl      0x2019690
	mov     r0, #0x5
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x4b
	bl      0x2019690
	mov     r0, #0x6
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x4b
	bl      0x2019690
	mov     r0, #0x7
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x4b
	bl      0x2019690
	mov     r0, #0x3
	mov     r1, #0x0
	bl      0x2019120
	mov     r0, #0x6
	mov     r1, #0x0
	bl      0x2019120
	add     sp, #0xe0
	pop     {r3-r5,pc}
@ 0x21d156a


.align 2


.word 0x21d47a8 @ 0x21d156c
.word 0x21d4708 @ 0x21d1570
.word 0x21d4824 @ 0x21d1574
.word 0x4000008 @ 0x21d1578
.word 0x21d4878 @ 0x21d157c
.thumb
Function_21d1580: @ 21d1580 :thumb
	push    {r3-r5,lr}
	add     sp, #-0xa8
	mov     r4, r0
	bl      0x201ff00
	bl      0x201ff68
	ldr     r5, [pc, #0x144] @ 0x21d16d4, (=0x21d4780)
	add     r3, sp, #0x2c
	mov     r2, #0x5
.thumb
branch_21d1594: @ 21d1594 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d1594
	add     r0, sp, #0x2c
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
	ldr     r5, [pc, #0xfc] @ 0x21d16d8, (=0x21d46f8)
	add     r3, sp, #0x1c
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      0x2018368
	ldr     r5, [pc, #0xec] @ 0x21d16dc, (=0x21d47d0)
	add     r3, sp, #0x54
	mov     r2, #0xa
.thumb
branch_21d15f4: @ 21d15f4 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d15f4
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	str     r0, [r3, #0x0]
	mov     r0, r4
	add     r2, sp, #0x54
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
	mov     r1, #0x2
	mov     r0, r4
	add     r2, sp, #0x70
	mov     r3, r1
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
	add     r2, sp, #0x8c
	mov     r3, #0x2
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
	ldr     r5, [pc, #0x58] @ 0x21d16e0, (=0x21d4744)
	add     r3, sp, #0x0
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x7
	str     r0, [r3, #0x0]
	mov     r0, r4
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, r4
	mov     r1, #0x7
	bl      0x2019ebc
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x7
	mov     r3, r2
	bl      Function_2019184
	mov     r0, r4
	mov     r1, #0x7
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2019184
	mov     r0, #0x7
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x4b
	bl      0x2019690
	add     sp, #0xa8
	pop     {r3-r5,pc}
@ 0x21d16d4

.word 0x21d4780 @ 0x21d16d4
.word 0x21d46f8 @ 0x21d16d8
.word 0x21d47d0 @ 0x21d16dc
.word 0x21d4744 @ 0x21d16e0
.thumb
Function_21d16e4: @ 21d16e4 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0xf0
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0xc]
	mov     r1, #0x7f
	mov     r2, #0x55
	mov     r3, #0x4b
	bl      0x2003050
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0xf0
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0xc]
	mov     r1, #0x7f
	mov     r2, #0x55
	mov     r3, #0x4b
	bl      0x2003050
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x21d171e


.align 2, 0


.thumb
Function_21d1720: @ 21d1720 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x40
	mov     r6, r0
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r0, [sp, #0x34]
	str     r0, [sp, #0x38]
	str     r0, [sp, #0x3c]
	mov     r0, #0x0
	str     r0, [sp, #0x28]
	str     r0, [sp, #0x2c]
	str     r0, [sp, #0x30]
	add     r0, sp, #0x4
	blx     0x20bb4c8
	bl      Call_G3X_Reset
	ldr     r0, [r6, #0x28]
	bl      0x20203d4
	ldr     r1, [r6, #0x28]
	mov     r0, #0x0
	bl      0x2020854
	bl      0x20203ec
	ldr     r0, [pc, #0x160] @ 0x21d18b8, (=0x1101)
	ldrb    r0, [r6, r0]
	cmp     r0, #0x0
	beq     branch_21d1766
	cmp     r0, #0x2
	beq     branch_21d17a4
	cmp     r0, #0x4
	beq     branch_21d17e2
	b       branch_21d1820
@ 0x21d1766

.thumb
branch_21d1766: @ 21d1766 :thumb
	ldr     r1, [pc, #0x154] @ 0x21d18bc, (=0x769)
	ldr     r2, [pc, #0x154] @ 0x21d18c0, (=0xfffff1f0)
	ldr     r3, [pc, #0x158] @ 0x21d18c4, (=0xfffffe2e)
	mov     r0, #0x0
	blx     0x20af51c
	mov     r0, #0x2
	mov     r1, #0x0
	mov     r2, r1
	lsl     r3, r0, #11
	blx     0x20af51c
	ldr     r1, [pc, #0x148] @ 0x21d18c8, (=0x199c)
	mov     r0, #0x0
	blx     0x20af558
	mov     r0, #0x2
	mov     r1, #0x0
	blx     0x20af558
	ldr     r0, [pc, #0x13c] @ 0x21d18cc, (=0x3def)
	ldr     r1, [pc, #0x13c] @ 0x21d18d0, (=0x318b)
	mov     r2, #0x0
	blx     0x20af56c
	ldr     r0, [pc, #0x138] @ 0x21d18d4, (=0x4631)
	ldr     r1, [pc, #0x13c] @ 0x21d18d8, (=0x1d08)
	mov     r2, #0x0
	blx     0x20af590
	b       branch_21d1848
@ 0x21d17a4

.thumb
branch_21d17a4: @ 21d17a4 :thumb
	ldr     r1, [pc, #0x134] @ 0x21d18dc, (=0xfffff805)
	ldr     r2, [pc, #0x138] @ 0x21d18e0, (=0xfffff224)
	mov     r0, #0x0
	mov     r3, #0x6e
	blx     0x20af51c
	mov     r0, #0x2
	mov     r1, #0x0
	mov     r2, r1
	lsl     r3, r0, #11
	blx     0x20af51c
	ldr     r1, [pc, #0x124] @ 0x21d18e4, (=0x52d6)
	mov     r0, #0x0
	blx     0x20af558
	mov     r0, #0x2
	mov     r1, #0x0
	blx     0x20af558
	ldr     r0, [pc, #0xfc] @ 0x21d18cc, (=0x3def)
	ldr     r1, [pc, #0x118] @ 0x21d18e8, (=0x2d69)
	mov     r2, #0x0
	blx     0x20af56c
	ldr     r0, [pc, #0x114] @ 0x21d18ec, (=0x4210)
	ldr     r1, [pc, #0x114] @ 0x21d18f0, (=0x39ce)
	mov     r2, #0x0
	blx     0x20af590
	b       branch_21d1848
@ 0x21d17e2

.thumb
branch_21d17e2: @ 21d17e2 :thumb
	ldr     r1, [pc, #0xd8] @ 0x21d18bc, (=0x769)
	ldr     r2, [pc, #0xd8] @ 0x21d18c0, (=0xfffff1f0)
	ldr     r3, [pc, #0xdc] @ 0x21d18c4, (=0xfffffe2e)
	mov     r0, #0x0
	blx     0x20af51c
	mov     r0, #0x2
	mov     r1, #0x0
	mov     r2, r1
	lsl     r3, r0, #11
	blx     0x20af51c
	ldr     r1, [pc, #0xf8] @ 0x21d18f4, (=0x416b)
	mov     r0, #0x0
	blx     0x20af558
	mov     r0, #0x2
	mov     r1, #0x0
	blx     0x20af558
	ldr     r0, [pc, #0xec] @ 0x21d18f8, (=0x41ce)
	ldr     r1, [pc, #0xec] @ 0x21d18fc, (=0x294a)
	mov     r2, #0x0
	blx     0x20af56c
	ldr     r0, [pc, #0xe0] @ 0x21d18f8, (=0x41ce)
	ldr     r1, [pc, #0xe8] @ 0x21d1900, (=0x2d08)
	mov     r2, #0x0
	blx     0x20af590
	b       branch_21d1848
@ 0x21d1820

.thumb
branch_21d1820: @ 21d1820 :thumb
	mov     r0, #0x0
	ldr     r2, [pc, #0xe0] @ 0x21d1904, (=0xfffff000)
	mov     r1, r0
	mov     r3, r0
	blx     0x20af51c
	ldr     r1, [pc, #0xd8] @ 0x21d1908, (=0x739c)
	mov     r0, #0x0
	blx     0x20af558
	ldr     r0, [pc, #0xd4] @ 0x21d190c, (=0x7fff)
	mov     r2, #0x0
	mov     r1, r0
	blx     0x20af56c
	ldr     r0, [pc, #0xcc] @ 0x21d190c, (=0x7fff)
	mov     r2, #0x0
	mov     r1, r0
	blx     0x20af590
.thumb
branch_21d1848: @ 21d1848 :thumb
	mov     r1, #0x0
	ldr     r2, [pc, #0xb8] @ 0x21d1904, (=0xfffff000)
	mov     r0, #0x3
	mov     r3, r1
	blx     0x20af51c
	ldr     r1, [pc, #0xb0] @ 0x21d1908, (=0x739c)
	mov     r0, #0x3
	blx     0x20af558
	add     r0, sp, #0x28
	blx     0x20af4bc
	ldr     r1, [pc, #0xac] @ 0x21d1910, (=0x21c5b48)
	add     r0, sp, #0x4
	blx     MI_Copy36B
	ldr     r1, [pc, #0xa8] @ 0x21d1914, (=0x21c5b0c)
	mov     r0, #0xa4
	ldr     r2, [r1, #0x7c]
	bic     r2, r0
	add     r0, sp, #0x34
	str     r2, [r1, #0x7c]
	blx     0x20af4ec
	mov     r1, #0x0
	mov     r0, #0x11
	mov     r2, r1
	blx     0x20b275c
	mov     r7, #0x0
	add     r6, #0x6c
.thumb
branch_21d1888: @ 21d1888 :thumb
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_21d188c: @ 21d188c :thumb
	mov     r0, r5
	bl      0x2017294
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x78
	cmp     r4, #0x10
	blt     branch_21d188c
	mov     r0, #0x1e
	lsl     r0, r0, #6
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r6, r6, r0
	cmp     r7, #0x2
	blt     branch_21d1888
	mov     r2, #0x1
	mov     r0, #0x12
	add     r1, sp, #0x0
	str     r2, [sp, #0x0]
	blx     0x20b275c
	add     sp, #0x40
	pop     {r3-r7,pc}
@ 0x21d18b6


.align 2


.word 0x1101 @ 0x21d18b8
.word 0x769 @ 0x21d18bc
.word 0xfffff1f0 @ 0x21d18c0
.word 0xfffffe2e @ 0x21d18c4
.word 0x199c @ 0x21d18c8
.word 0x3def @ 0x21d18cc
.word 0x318b @ 0x21d18d0
.word 0x4631 @ 0x21d18d4
.word 0x1d08 @ 0x21d18d8
.word 0xfffff805 @ 0x21d18dc
.word 0xfffff224 @ 0x21d18e0
.word 0x52d6 @ 0x21d18e4
.word 0x2d69 @ 0x21d18e8
.word 0x4210 @ 0x21d18ec
.word 0x39ce @ 0x21d18f0
.word 0x416b @ 0x21d18f4
.word 0x41ce @ 0x21d18f8
.word 0x294a @ 0x21d18fc
.word 0x2d08 @ 0x21d1900
.word 0xfffff000 @ 0x21d1904
.word 0x739c @ 0x21d1908
.word 0x7fff @ 0x21d190c
.word 0x21c5b48 @ 0x21d1910
.word 0x21c5b0c @ 0x21d1914
.thumb
Function_21d1918: @ 21d1918 :thumb
	push    {r4,lr}
	add     sp, #-0x30
	ldr     r3, [pc, #0x6c] @ 0x21d198c, (=0x21d46e0)
	mov     r4, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x24
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	ldr     r3, [pc, #0x64] @ 0x21d1990, (=0x21d46d4)
	str     r0, [r2, #0x0]
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x18
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	ldr     r3, [pc, #0x5c] @ 0x21d1994, (=0x21d46ec)
	str     r0, [r2, #0x0]
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0xc
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	mov     r0, #0x4b
	bl      0x20203ac
	str     r0, [r4, #0x28]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x28]
	mov     r1, #0x1f
	str     r0, [sp, #0x8]
	ldr     r2, [pc, #0x40] @ 0x21d1998, (=Unknown_21d46cc)
	ldr     r3, [pc, #0x40] @ 0x21d199c, (=0xfa4)
	add     r0, sp, #0x24
	lsl     r1, r1, #14
	bl      0x20206d0
	ldr     r1, [r4, #0x28]
	add     r0, sp, #0x18
	bl      0x2020adc
	ldr     r1, [r4, #0x28]
	add     r0, sp, #0xc
	bl      0x2020acc
	mov     r0, #0x1
	mov     r1, #0xe1
	ldr     r2, [r4, #0x28]
	lsl     r0, r0, #12
	lsl     r1, r1, #14
	bl      0x20206bc
	ldr     r0, [r4, #0x28]
	bl      0x20203d4
	add     sp, #0x30
	pop     {r4,pc}
@ 0x21d198a

.align 2
.word 0x21d46e0 @ 0x21d198c
.word 0x21d46d4 @ 0x21d1990
.word 0x21d46ec @ 0x21d1994
.word Unknown_21d46cc @ 0x21d1998
.word 0xfa4 @ 0x21d199c



.thumb
Function_21d19a0: @ 21d19a0 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d19a8, (=0x20203b9)
	ldr     r0, [r0, #0x28]
	bx      r3
@ 0x21d19a6

.align 2
.word 0x20203b9 @ 0x21d19a8



.thumb
Function_21d19ac: @ 21d19ac :thumb
	push    {r3,lr}
	add     sp, #-0x8
	mov     r2, #0x1
	ldr     r1, [pc, #0x10] @ 0x21d19c4, (=0x21d19c9)
	str     r2, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r1, #0x0
	mov     r3, r1
	bl      Function_2024220
	add     sp, #0x8
	pop     {r3,pc}
@ 0x21d19c4

.word 0x21d19c9 @ 0x21d19c4
.thumb
Function_21d19c8: @ 21d19c8 :thumb
	push    {r3,lr}
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff0c
	ldr     r0, [pc, #0x60] @ 0x21d1a34, (=0x4000008)
	mov     r1, #0x3
	ldrh    r2, [r0, #0x0]
	bic     r2, r1
	mov     r1, #0x1
	orr     r1, r2
	strh    r1, [r0, #0x0]
	add     r0, #0x58
	ldrh    r2, [r0, #0x0]
	ldr     r1, [pc, #0x50] @ 0x21d1a38, (=0xffffcffd)
	and     r2, r1
	strh    r2, [r0, #0x0]
	add     r2, r1, #0x2
	ldrh    r3, [r0, #0x0]
	.hword  0x1c89 @ add r1, r1, #0x2
	and     r3, r2
	mov     r2, #0x10
	orr     r2, r3
	strh    r2, [r0, #0x0]
	ldrh    r3, [r0, #0x0]
	ldr     r2, [pc, #0x40] @ 0x21d1a3c, (=0xcffb)
	and     r3, r2
	strh    r3, [r0, #0x0]
	ldrh    r3, [r0, #0x0]
	sub     r2, #0x1c
	and     r3, r1
	mov     r1, #0x8
	orr     r1, r3
	strh    r1, [r0, #0x0]
	ldrh    r1, [r0, #0x0]
	and     r1, r2
	strh    r1, [r0, #0x0]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	blx     0x20bfc74
	mov     r0, #0x0
	ldr     r2, [pc, #0x1c] @ 0x21d1a40, (=0x7fff)
	mov     r1, r0
	mov     r3, #0x3f
	str     r0, [sp, #0x0]
	blx     0x20bfd58
	ldr     r1, [pc, #0x14] @ 0x21d1a44, (=0xbfff0000)
	ldr     r0, [pc, #0x18] @ 0x21d1a48, (=0x4000580)
	str     r1, [r0, #0x0]
	pop     {r3,pc}
@ 0x21d1a34

.word 0x4000008 @ 0x21d1a34
.word 0xffffcffd @ 0x21d1a38
.word 0xcffb @ 0x21d1a3c
.word 0x7fff @ 0x21d1a40
.word 0xbfff0000 @ 0x21d1a44
.word 0x4000580 @ 0x21d1a48
.thumb
Function_21d1a4c: @ 21d1a4c :thumb
	ldr     r3, [pc, #0x0] @ 0x21d1a50, (=0x20242c5)
	bx      r3
@ 0x21d1a50

.word 0x20242c5 @ 0x21d1a50
.thumb
Function_21d1a54: @ 21d1a54 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	ldr     r0, [pc, #0x120] @ 0x21d1b84, (=0x10f8)
	bne     branch_21d1ad0
	ldr     r0, [r5, r0]
	mov     r1, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x1f
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x10c] @ 0x21d1b88, (=0x2711)
	str     r0, [sp, #0x14]
	ldr     r0, [r5, #0xc]
	ldr     r2, [r5, #0x18]
	ldr     r3, [r5, #0x1c]
	bl      0x200cdc4
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xf4] @ 0x21d1b88, (=0x2711)
	ldr     r2, [pc, #0xf0] @ 0x21d1b84, (=0x10f8)
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x18]
	ldr     r1, [r5, #0x1c]
	ldr     r2, [r5, r2]
	mov     r3, #0x1c
	bl      0x200cc3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xe0] @ 0x21d1b88, (=0x2711)
	ldr     r2, [pc, #0xd8] @ 0x21d1b84, (=0x10f8)
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x18]
	ldr     r1, [r5, #0x1c]
	ldr     r2, [r5, r2]
	mov     r3, #0x1d
	bl      0x200ce24
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xc8] @ 0x21d1b88, (=0x2711)
	ldr     r2, [pc, #0xc4] @ 0x21d1b84, (=0x10f8)
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x18]
	ldr     r1, [r5, #0x1c]
	ldr     r2, [r5, r2]
	mov     r3, #0x1e
	bl      0x200ce54
	b       branch_21d1b3a
@ 0x21d1ad0

.thumb
branch_21d1ad0: @ 21d1ad0 :thumb
	ldr     r0, [r5, r0]
	mov     r1, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x24
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0xa0] @ 0x21d1b88, (=0x2711)
	str     r0, [sp, #0x14]
	ldr     r0, [r5, #0xc]
	ldr     r2, [r5, #0x18]
	ldr     r3, [r5, #0x1c]
	bl      0x200cdc4
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x88] @ 0x21d1b88, (=0x2711)
	ldr     r2, [pc, #0x84] @ 0x21d1b84, (=0x10f8)
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x18]
	ldr     r1, [r5, #0x1c]
	ldr     r2, [r5, r2]
	mov     r3, #0x21
	bl      0x200cc3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x74] @ 0x21d1b88, (=0x2711)
	ldr     r2, [pc, #0x6c] @ 0x21d1b84, (=0x10f8)
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x18]
	ldr     r1, [r5, #0x1c]
	ldr     r2, [r5, r2]
	mov     r3, #0x22
	bl      0x200ce24
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x5c] @ 0x21d1b88, (=0x2711)
	ldr     r2, [pc, #0x58] @ 0x21d1b84, (=0x10f8)
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x18]
	ldr     r1, [r5, #0x1c]
	ldr     r2, [r5, r2]
	mov     r3, #0x23
	bl      0x200ce54
.thumb
branch_21d1b3a: @ 21d1b3a :thumb
	ldr     r0, [pc, #0x50] @ 0x21d1b8c, (=0x1101)
	ldrb    r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_21d1b4e
	cmp     r0, #0x2
	beq     branch_21d1b7e
	cmp     r0, #0x4
	beq     branch_21d1b68
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x21d1b4e

.thumb
branch_21d1b4e: @ 21d1b4e :thumb
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x3c] @ 0x21d1b90, (=0x199c)
	lsl     r2, r4, #20
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0xc]
	mov     r1, #0x2
	lsr     r2, r2, #16
	mov     r3, #0x10
	bl      0x20039b0
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x21d1b68

.thumb
branch_21d1b68: @ 21d1b68 :thumb
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x24] @ 0x21d1b94, (=0x416b)
	lsl     r2, r4, #20
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0xc]
	mov     r1, #0x2
	lsr     r2, r2, #16
	mov     r3, #0x10
	bl      0x20039b0
.thumb
branch_21d1b7e: @ 21d1b7e :thumb
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x21d1b82


.align 2


.word 0x10f8 @ 0x21d1b84
.word 0x2711 @ 0x21d1b88
.word 0x1101 @ 0x21d1b8c
.word 0x199c @ 0x21d1b90
.word 0x416b @ 0x21d1b94
.thumb
Function_21d1b98: @ 21d1b98 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x1c]
	ldr     r1, [pc, #0x20] @ 0x21d1bc0, (=0x2711)
	bl      0x200d070
	ldr     r0, [r4, #0x1c]
	ldr     r1, [pc, #0x18] @ 0x21d1bc0, (=0x2711)
	bl      Function_200d080
	ldr     r0, [r4, #0x1c]
	ldr     r1, [pc, #0x10] @ 0x21d1bc0, (=0x2711)
	bl      Function_200d090
	ldr     r0, [r4, #0x1c]
	ldr     r1, [pc, #0x8] @ 0x21d1bc0, (=0x2711)
	bl      Function_200d0a0
	pop     {r4,pc}
@ 0x21d1bbe


.align 2


.word 0x2711 @ 0x21d1bc0
.thumb
Function_21d1bc4: @ 21d1bc4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x3c
	ldr     r4, [pc, #0xc4] @ 0x21d1c90, (=0x21d4900)
	mov     r7, r2
	mov     r5, r0
	mov     r6, r1
	add     r3, sp, #0x8
	mov     r2, #0x6
.thumb
branch_21d1bd4: @ 21d1bd4 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d1bd4
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	str     r0, [r3, #0x0]
	ldr     r0, [pc, #0xb0] @ 0x21d1c94, (=0x1114)
	mov     r2, #0x8
	add     r0, r5, r0
	blx     MI_CpuFill8
	ldr     r0, [r5, #0x18]
	ldr     r1, [r5, #0x1c]
	add     r2, sp, #0x8
	bl      0x200ce6c
	mov     r4, r0
	mov     r1, #0x1
	bl      0x200d390
	ldr     r0, [r4, #0x0]
	bl      0x200d324
	str     r4, [r6, #0x0]
	mov     r0, #0x3c
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x18]
	ldr     r1, [r5, #0x1c]
	add     r2, sp, #0x8
	bl      0x200ce6c
	mov     r4, r0
	mov     r1, #0x2
	bl      0x200d364
	mov     r0, r4
	mov     r1, #0x1
	bl      0x200d390
	ldr     r0, [r4, #0x0]
	bl      0x200d324
	ldr     r0, [pc, #0x6c] @ 0x21d1c98, (=0x10f4)
	str     r4, [r7, #0x0]
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_21d1c38
	bl      ErrorHandling
.thumb
branch_21d1c38: @ 21d1c38 :thumb
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_21d1c44
	mov     r4, #0x1b
	b       branch_21d1c46
@ 0x21d1c44

.thumb
branch_21d1c44: @ 21d1c44 :thumb
	mov     r4, #0x20
.thumb
branch_21d1c46: @ 21d1c46 :thumb
	mov     r0, #0x4b
	mov     r1, r0
	add     r1, #0xb5
	bl      malloc_maybe
	ldr     r1, [pc, #0x44] @ 0x21d1c98, (=0x10f4)
	mov     r2, #0x0
	str     r0, [r5, r1]
	mov     r0, #0x4b
	str     r0, [sp, #0x0]
	add     r0, r1, #0x4
	ldr     r0, [r5, r0]
	mov     r1, r4
	add     r3, sp, #0x4
	bl      0x20071b4
	mov     r4, r0
	ldr     r0, [sp, #0x4]
	ldr     r1, [pc, #0x2c] @ 0x21d1c98, (=0x10f4)
	mov     r2, #0x1
	ldr     r0, [r0, #0x14]
	ldr     r1, [r5, r1]
	lsl     r2, r2, #8
	blx     MI_CpuCopy32
	mov     r0, r4
	bl      free
	ldr     r0, [pc, #0x18] @ 0x21d1c98, (=0x10f4)
	mov     r1, #0x1
	ldr     r0, [r5, r0]
	lsl     r1, r1, #8
	blx     DC_FlushRange
	add     sp, #0x3c
	pop     {r4-r7,pc}
@ 0x21d1c8e


.align 2


.word 0x21d4900 @ 0x21d1c90
.word 0x1114 @ 0x21d1c94
.word 0x10f4 @ 0x21d1c98
.thumb
Function_21d1c9c: @ 21d1c9c :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r5, r2
	mov     r0, r1
	bl      0x200d0f4
	mov     r0, r5
	bl      0x200d0f4
	ldr     r0, [pc, #0x14] @ 0x21d1cc4, (=0x10f4)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21d1cc0
	bl      free
	ldr     r0, [pc, #0x8] @ 0x21d1cc4, (=0x10f4)
	mov     r1, #0x0
	str     r1, [r4, r0]
.thumb
branch_21d1cc0: @ 21d1cc0 :thumb
	pop     {r3-r5,pc}
@ 0x21d1cc2


.align 2


.word 0x10f4 @ 0x21d1cc4
.thumb
Function_21d1cc8: @ 21d1cc8 :thumb
	push    {r3-r5,lr}
	mov     r2, #0x34
	ldr     r3, [pc, #0x28] @ 0x21d1cf8, (=0x21d4a04)
	mul     r2, r1
	ldr     r1, [r3, r2]
	add     r4, r3, r2
	mov     r5, r0
	blx     r1
	ldr     r1, [r4, #0x4]
	mov     r0, r5
	blx     r1
	ldr     r1, [r4, #0x8]
	mov     r0, r5
	blx     r1
	ldr     r1, [r4, #0xc]
	mov     r0, r5
	blx     r1
	ldr     r1, [r4, #0x10]
	mov     r0, r5
	blx     r1
	ldr     r1, [r4, #0x14]
	mov     r0, r5
	blx     r1
	pop     {r3-r5,pc}
@ 0x21d1cf8

.word 0x21d4a04 @ 0x21d1cf8
.thumb
Function_21d1cfc: @ 21d1cfc :thumb
	push    {r3-r5,lr}
	mov     r2, #0x34
	ldr     r3, [pc, #0x28] @ 0x21d1d2c, (=0x21d4a04)
	mul     r2, r1
	add     r4, r3, r2
	ldr     r1, [r4, #0x18]
	mov     r5, r0
	blx     r1
	ldr     r1, [r4, #0x1c]
	mov     r0, r5
	blx     r1
	ldr     r1, [r4, #0x20]
	mov     r0, r5
	blx     r1
	ldr     r1, [r4, #0x24]
	mov     r0, r5
	blx     r1
	ldr     r1, [r4, #0x28]
	mov     r0, r5
	blx     r1
	ldr     r1, [r4, #0x2c]
	mov     r0, r5
	blx     r1
	pop     {r3-r5,pc}
@ 0x21d1d2c

.word 0x21d4a04 @ 0x21d1d2c
.thumb
Function_21d1d30: @ 21d1d30 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r2, #0x34
	mov     r3, r4
	mul     r3, r2
	ldr     r2, [pc, #0x24] @ 0x21d1d60, (=0x21d4a34)
	ldr     r1, [pc, #0x24] @ 0x21d1d64, (=0xfa4)
	mov     r5, r0
	ldr     r2, [r2, r3]
	add     r1, r5, r1
	blx     r2
	mov     r4, r0
	cmp     r4, #0x1
	bne     branch_21d1d5a
	ldr     r0, [pc, #0x14] @ 0x21d1d64, (=0xfa4)
	mov     r2, #0x4f
	add     r0, r5, r0
	mov     r1, #0x0
	lsl     r2, r2, #2
	blx     MI_CpuFill8
.thumb
branch_21d1d5a: @ 21d1d5a :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d1d5e


.align 2


.word 0x21d4a34 @ 0x21d1d60
.word 0xfa4 @ 0x21d1d64
.thumb
Function_21d1d68: @ 21d1d68 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r4, [r5, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0xc]
	mov     r1, #0x7f
	mov     r2, #0x12
	mov     r3, #0x4b
	bl      0x2003050
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4b
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0xd4] @ 0x21d1e68, (=0x10f8)
	ldr     r2, [r5, #0x8]
	ldr     r0, [r5, r0]
	mov     r1, #0x9
	mov     r3, #0x2
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4b
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0xbc] @ 0x21d1e68, (=0x10f8)
	ldr     r2, [r5, #0x8]
	ldr     r0, [r5, r0]
	mov     r1, #0x3
	mov     r3, #0x2
	bl      0x200710c
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0xc]
	mov     r1, #0x7f
	mov     r2, #0x15
	mov     r3, #0x4b
	bl      0x2003050
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4b
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x8c] @ 0x21d1e68, (=0x10f8)
	ldr     r2, [r5, #0x8]
	ldr     r0, [r5, r0]
	mov     r1, #0xc
	mov     r3, #0x7
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4b
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x70] @ 0x21d1e68, (=0x10f8)
	ldr     r2, [r5, #0x8]
	ldr     r0, [r5, r0]
	mov     r1, #0x6
	mov     r3, #0x7
	bl      0x200710c
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
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x7
	mov     r3, r2
	bl      Function_2019184
	mov     r0, r4
	mov     r1, #0x7
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2019184
	mov     r0, #0x2
	mov     r1, #0x1
	bl      0x2019120
	mov     r0, #0x7
	mov     r1, #0x1
	bl      0x2019120
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	ldr     r0, [r5, #0x8]
	mov     r1, #0x2
	bl      0x201c3c0
	ldr     r0, [r5, #0x8]
	mov     r1, #0x7
	bl      0x201c3c0
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x21d1e66


.align 2


.word 0x10f8 @ 0x21d1e68
.thumb
Function_21d1e6c: @ 21d1e6c :thumb
	push    {r3,lr}
	mov     r0, #0x2
	mov     r1, #0x0
	bl      0x2019120
	mov     r0, #0x7
	mov     r1, #0x0
	bl      0x2019120
	mov     r0, #0x1
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x10
	mov     r1, #0x0
	bl      Function_201ff0c
	pop     {r3,pc}
@ 0x21d1e90

.thumb
Function_21d1e90: @ 21d1e90 :thumb
	ldr     r3, [pc, #0x0] @ 0x21d1e94, (=0x21d1a55)
	bx      r3
@ 0x21d1e94

.word 0x21d1a55 @ 0x21d1e94
.thumb
Function_21d1e98: @ 21d1e98 :thumb
	ldr     r3, [pc, #0x0] @ 0x21d1e9c, (=0x21d1b99)
	bx      r3
@ 0x21d1e9c

.word 0x21d1b99 @ 0x21d1e9c
.thumb
Function_21d1ea0: @ 21d1ea0 :thumb
	ldr     r2, [pc, #0x8] @ 0x21d1eac, (=0x10e0)
	ldr     r3, [pc, #0xc] @ 0x21d1eb0, (=0x21d1bc5)
	add     r1, r0, r2
	.hword  0x1d12 @ add r2, r2, #0x4
	add     r2, r0, r2
	bx      r3
@ 0x21d1eac

.word 0x10e0 @ 0x21d1eac
.word 0x21d1bc5 @ 0x21d1eb0
.thumb
Function_21d1eb4: @ 21d1eb4 :thumb
	ldr     r2, [pc, #0x8] @ 0x21d1ec0, (=0x10e0)
	ldr     r3, [pc, #0xc] @ 0x21d1ec4, (=0x21d1c9d)
	ldr     r1, [r0, r2]
	.hword  0x1d12 @ add r2, r2, #0x4
	ldr     r2, [r0, r2]
	bx      r3
@ 0x21d1ec0

.word 0x10e0 @ 0x21d1ec0
.word 0x21d1c9d @ 0x21d1ec4
.thumb
Function_21d1ec8: @ 21d1ec8 :thumb
	push    {r4,lr}
	add     sp, #-0x18
	mov     r4, r0
	ldr     r0, [pc, #0x6c] @ 0x21d1f3c, (=0x10f8)
	mov     r1, #0x3
	ldr     r0, [r4, r0]
	str     r0, [sp, #0x0]
	mov     r0, #0xf
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0xa
	str     r0, [sp, #0xc]
	mov     r0, #0x2
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x58] @ 0x21d1f40, (=0x2713)
	str     r0, [sp, #0x14]
	ldr     r0, [r4, #0xc]
	ldr     r2, [r4, #0x18]
	ldr     r3, [r4, #0x1c]
	bl      0x200cdc4
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x40] @ 0x21d1f40, (=0x2713)
	ldr     r2, [pc, #0x3c] @ 0x21d1f3c, (=0x10f8)
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x18]
	ldr     r1, [r4, #0x1c]
	ldr     r2, [r4, r2]
	bl      0x200cc3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x2c] @ 0x21d1f40, (=0x2713)
	ldr     r2, [pc, #0x28] @ 0x21d1f3c, (=0x10f8)
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x18]
	ldr     r1, [r4, #0x1c]
	ldr     r2, [r4, r2]
	mov     r3, #0x1
	bl      0x200ce24
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x18] @ 0x21d1f40, (=0x2713)
	ldr     r2, [pc, #0x10] @ 0x21d1f3c, (=0x10f8)
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x18]
	ldr     r1, [r4, #0x1c]
	ldr     r2, [r4, r2]
	mov     r3, #0x2
	bl      0x200ce54
	add     sp, #0x18
	pop     {r4,pc}
@ 0x21d1f3c

.word 0x10f8 @ 0x21d1f3c
.word 0x2713 @ 0x21d1f40
.thumb
Function_21d1f44: @ 21d1f44 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x1c]
	ldr     r1, [pc, #0x20] @ 0x21d1f6c, (=0x2713)
	bl      0x200d070
	ldr     r0, [r4, #0x1c]
	ldr     r1, [pc, #0x18] @ 0x21d1f6c, (=0x2713)
	bl      Function_200d080
	ldr     r0, [r4, #0x1c]
	ldr     r1, [pc, #0x10] @ 0x21d1f6c, (=0x2713)
	bl      Function_200d090
	ldr     r0, [r4, #0x1c]
	ldr     r1, [pc, #0x8] @ 0x21d1f6c, (=0x2713)
	bl      Function_200d0a0
	pop     {r4,pc}
@ 0x21d1f6a


.align 2


.word 0x2713 @ 0x21d1f6c
.thumb
Function_21d1f70: @ 21d1f70 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r5, r6
	ldr     r7, [pc, #0x38] @ 0x21d1fb0, (=0x10e0)
	mov     r4, #0x2
	add     r5, #0x8
.thumb
branch_21d1f7c: @ 21d1f7c :thumb
	ldr     r0, [r6, #0x18]
	ldr     r1, [r6, #0x1c]
	ldr     r2, [pc, #0x30] @ 0x21d1fb4, (=0x21d499c)
	bl      0x200ce6c
	ldr     r1, [pc, #0x28] @ 0x21d1fb0, (=0x10e0)
	str     r0, [r5, r1]
	mov     r0, r1
	ldr     r0, [r5, r0]
	mov     r1, #0x2
	bl      0x200d6a4
	ldr     r0, [pc, #0x18] @ 0x21d1fb0, (=0x10e0)
	mov     r1, #0x1
	ldr     r0, [r5, r0]
	bl      0x200d390
	ldr     r0, [r5, r7]
	ldr     r0, [r0, #0x0]
	bl      0x200d324
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	ble     branch_21d1f7c
	pop     {r3-r7,pc}
@ 0x21d1fb0

.word 0x10e0 @ 0x21d1fb0
.word 0x21d499c @ 0x21d1fb4
.thumb
Function_21d1fb8: @ 21d1fb8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r6, [pc, #0x14] @ 0x21d1fd4, (=0x10e0)
	mov     r4, #0x2
	add     r5, #0x8
.thumb
branch_21d1fc2: @ 21d1fc2 :thumb
	ldr     r0, [r5, r6]
	bl      0x200d0f4
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	ble     branch_21d1fc2
	pop     {r4-r6,pc}
@ 0x21d1fd2


.align 2


.word 0x10e0 @ 0x21d1fd4
.thumb
Function_21d1fd8: @ 21d1fd8 :thumb
	push    {r3-r7,lr}
	ldr     r1, [pc, #0x10c] @ 0x21d20e8, (=0x10f8)
	mov     r6, r0
	ldr     r1, [r6, r1]
	add     r0, #0x2c
	mov     r2, #0x50
	mov     r3, #0x4b
	bl      0x20170d8
	ldr     r0, [r6, #0x34]
	mov     r1, #0x0
	mov     r2, #0x40
	blx     0x20b2ce4
	ldr     r0, [r6, #0x34]
	mov     r1, #0x0
	mov     r2, #0x80
	blx     0x20b2ce4
	mov     r2, #0x2
	ldr     r0, [r6, #0x34]
	mov     r1, #0x0
	lsl     r2, r2, #8
	blx     0x20b2ce4
	mov     r2, #0x1
	ldr     r0, [r6, #0x34]
	mov     r1, #0x0
	lsl     r2, r2, #10
	blx     0x20b2ce4
	ldr     r1, [pc, #0xd0] @ 0x21d20e8, (=0x10f8)
	mov     r0, r6
	ldr     r1, [r6, r1]
	add     r0, #0x3c
	mov     r2, #0x51
	mov     r3, #0x4b
	bl      0x20170d8
	ldr     r0, [r6, #0x44]
	mov     r1, #0x0
	mov     r2, #0x40
	blx     0x20b2ce4
	ldr     r0, [r6, #0x44]
	mov     r1, #0x0
	mov     r2, #0x80
	blx     0x20b2ce4
	mov     r2, #0x2
	ldr     r0, [r6, #0x44]
	mov     r1, #0x0
	lsl     r2, r2, #8
	blx     0x20b2ce4
	mov     r2, #0x1
	ldr     r0, [r6, #0x44]
	mov     r1, #0x0
	lsl     r2, r2, #10
	blx     0x20b2ce4
	mov     r5, r6
	mov     r7, r6
	mov     r4, #0x0
	add     r5, #0x6c
	add     r7, #0x2c
.thumb
branch_21d205c: @ 21d205c :thumb
	mov     r0, r5
	mov     r1, r7
	bl      0x2017258
	mov     r1, #0x0
	mov     r0, r5
	mov     r2, r1
	mov     r3, r1
	bl      0x2017350
	mov     r1, #0x1
	lsl     r1, r1, #12
	mov     r0, r5
	mov     r2, r1
	mov     r3, r1
	bl      0x201736c
	mov     r0, r5
	mov     r1, #0x1
	bl      0x2017348
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x78
	cmp     r4, #0x10
	blt     branch_21d205c
	ldr     r0, [pc, #0x5c] @ 0x21d20ec, (=0x7ec)
	mov     r7, r6
	mov     r5, #0x0
	add     r4, r6, r0
	add     r7, #0x3c
.thumb
branch_21d2098: @ 21d2098 :thumb
	mov     r0, r4
	mov     r1, r7
	bl      0x2017258
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	mov     r3, r1
	bl      0x2017350
	mov     r1, #0x1
	lsl     r1, r1, #12
	mov     r0, r4
	mov     r2, r1
	mov     r3, r1
	bl      0x201736c
	mov     r0, r4
	mov     r1, #0x1
	bl      0x2017348
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r4, #0x78
	cmp     r5, #0x10
	blt     branch_21d2098
	ldr     r0, [pc, #0x24] @ 0x21d20f0, (=0x1104)
	mov     r1, #0x2
	strb    r1, [r6, r0]
	mov     r0, r6
	mov     r1, #0x0
	bl      Function_21d4134
	mov     r0, r6
	bl      Function_21d4170
	ldr     r0, [pc, #0x14] @ 0x21d20f4, (=0x1103)
	mov     r1, #0x1
	strb    r1, [r6, r0]
	pop     {r3-r7,pc}
@ 0x21d20e6


.align 2


.word 0x10f8 @ 0x21d20e8
.word 0x7ec @ 0x21d20ec
.word 0x1104 @ 0x21d20f0
.word 0x1103 @ 0x21d20f4
.thumb
Function_21d20f8: @ 21d20f8 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r5, r6
	mov     r4, #0x0
	add     r5, #0x2c
.thumb
branch_21d2102: @ 21d2102 :thumb
	mov     r0, r5
	bl      0x2017110
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x4
	blt     branch_21d2102
	ldr     r0, [pc, #0x4] @ 0x21d2118, (=0x1103)
	mov     r1, #0x0
	strb    r1, [r6, r0]
	pop     {r4-r6,pc}
@ 0x21d2118

.word 0x1103 @ 0x21d2118
.thumb
Function_21d211c: @ 21d211c :thumb
	push    {r4,lr}
	ldr     r1, [pc, #0x28] @ 0x21d2148, (=0x1105)
	mov     r4, r0
	ldrb    r1, [r4, r1]
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_21d439c
	ldr     r0, [pc, #0x18] @ 0x21d2148, (=0x1105)
	ldrb    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	mov     r0, #0x3
	mov     r1, #0x1
	bl      0x2019120
	ldr     r0, [r4, #0x8]
	mov     r1, #0x2
	bl      0x201c3c0
	pop     {r4,pc}
@ 0x21d2146


.align 2


.word 0x1105 @ 0x21d2148
.thumb
Function_21d214c: @ 21d214c :thumb
	ldr     r3, [pc, #0x4] @ 0x21d2154, (=0x2019121)
	mov     r0, #0x3
	mov     r1, #0x0
	bx      r3
@ 0x21d2154

.word 0x2019121 @ 0x21d2154
.thumb
Function_21d2158: @ 21d2158 :thumb
	bx      lr
@ 0x21d215a


.align 2, 0


.thumb
Function_21d215c: @ 21d215c :thumb
	bx      lr
@ 0x21d215e


.align 2, 0


.thumb
Function_21d2160: @ 21d2160 :thumb
	bx      lr
@ 0x21d2162


.align 2, 0


.thumb
Function_21d2164: @ 21d2164 :thumb
	bx      lr
@ 0x21d2166


.align 2, 0


.thumb
Function_21d2168: @ 21d2168 :thumb
	bx      lr
@ 0x21d216a


.align 2, 0


.thumb
Function_21d216c: @ 21d216c :thumb
	bx      lr
@ 0x21d216e


.align 2, 0


.thumb
Function_21d2170: @ 21d2170 :thumb
	bx      lr
@ 0x21d2172


.align 2, 0


.thumb
Function_21d2174: @ 21d2174 :thumb
	bx      lr
@ 0x21d2176


.align 2, 0


.thumb
Function_21d2178: @ 21d2178 :thumb
	bx      lr
@ 0x21d217a


.align 2, 0


.thumb
Function_21d217c: @ 21d217c :thumb
	bx      lr
@ 0x21d217e


.align 2, 0


.thumb
Function_21d2180: @ 21d2180 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r4, [r5, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0xc]
	mov     r1, #0x7f
	mov     r2, #0x13
	mov     r3, #0x4b
	bl      0x2003050
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4b
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0xf8] @ 0x21d22a4, (=0x10f8)
	ldr     r2, [r5, #0x8]
	ldr     r0, [r5, r0]
	mov     r1, #0xa
	mov     r3, #0x2
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4b
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0xe0] @ 0x21d22a4, (=0x10f8)
	ldr     r2, [r5, #0x8]
	ldr     r0, [r5, r0]
	mov     r1, #0x4
	mov     r3, #0x2
	bl      0x200710c
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0xc]
	mov     r1, #0x7f
	mov     r2, #0x16
	mov     r3, #0x4b
	bl      0x2003050
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4b
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0xb0] @ 0x21d22a4, (=0x10f8)
	ldr     r2, [r5, #0x8]
	ldr     r0, [r5, r0]
	mov     r1, #0xd
	mov     r3, #0x7
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4b
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x94] @ 0x21d22a4, (=0x10f8)
	mov     r1, #0x7
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x8]
	mov     r3, r1
	bl      0x200710c
	ldr     r0, [pc, #0x88] @ 0x21d22a4, (=0x10f8)
	mov     r1, #0x10
	ldr     r0, [r5, r0]
	add     r2, sp, #0x10
	mov     r3, #0x4b
	bl      0x20071ec
	mov     r6, r0
	ldr     r0, [sp, #0x10]
	ldr     r1, [pc, #0x78] @ 0x21d22a8, (=0xfb4)
	ldr     r0, [r0, #0xc]
	add     r1, r5, r1
	mov     r2, #0x80
	blx     MIi_CpuCopy16
	mov     r0, r6
	bl      free
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
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x7
	mov     r3, r2
	bl      Function_2019184
	mov     r0, r4
	mov     r1, #0x7
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2019184
	mov     r0, #0x2
	mov     r1, #0x1
	bl      0x2019120
	mov     r0, #0x7
	mov     r1, #0x1
	bl      0x2019120
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	ldr     r0, [r5, #0x8]
	mov     r1, #0x2
	bl      0x201c3c0
	ldr     r0, [r5, #0x8]
	mov     r1, #0x7
	bl      0x201c3c0
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x21d22a2


.align 2


.word 0x10f8 @ 0x21d22a4
.word 0xfb4 @ 0x21d22a8
.thumb
Function_21d22ac: @ 21d22ac :thumb
	push    {r3,lr}
	mov     r0, #0x2
	mov     r1, #0x0
	bl      0x2019120
	mov     r0, #0x7
	mov     r1, #0x0
	bl      0x2019120
	mov     r0, #0x1
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x10
	mov     r1, #0x0
	bl      Function_201ff0c
	pop     {r3,pc}
@ 0x21d22d0

.thumb
Function_21d22d0: @ 21d22d0 :thumb
	ldr     r3, [pc, #0x0] @ 0x21d22d4, (=0x21d1a55)
	bx      r3
@ 0x21d22d4

.word 0x21d1a55 @ 0x21d22d4
.thumb
Function_21d22d8: @ 21d22d8 :thumb
	ldr     r3, [pc, #0x0] @ 0x21d22dc, (=0x21d1b99)
	bx      r3
@ 0x21d22dc

.word 0x21d1b99 @ 0x21d22dc
.thumb
Function_21d22e0: @ 21d22e0 :thumb
	ldr     r2, [pc, #0x8] @ 0x21d22ec, (=0x10e0)
	ldr     r3, [pc, #0xc] @ 0x21d22f0, (=0x21d1bc5)
	add     r1, r0, r2
	.hword  0x1d12 @ add r2, r2, #0x4
	add     r2, r0, r2
	bx      r3
@ 0x21d22ec

.word 0x10e0 @ 0x21d22ec
.word 0x21d1bc5 @ 0x21d22f0
.thumb
Function_21d22f4: @ 21d22f4 :thumb
	ldr     r2, [pc, #0x8] @ 0x21d2300, (=0x10e0)
	ldr     r3, [pc, #0xc] @ 0x21d2304, (=0x21d1c9d)
	ldr     r1, [r0, r2]
	.hword  0x1d12 @ add r2, r2, #0x4
	ldr     r2, [r0, r2]
	bx      r3
@ 0x21d2300

.word 0x10e0 @ 0x21d2300
.word 0x21d1c9d @ 0x21d2304
.thumb
Function_21d2308: @ 21d2308 :thumb
	push    {r4,lr}
	add     sp, #-0x18
	mov     r4, r0
	ldr     r0, [pc, #0x6c] @ 0x21d237c, (=0x10f8)
	mov     r1, #0x3
	ldr     r0, [r4, r0]
	str     r0, [sp, #0x0]
	mov     r0, #0xf
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0xa
	str     r0, [sp, #0xc]
	mov     r0, #0x2
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x58] @ 0x21d2380, (=0x2714)
	str     r0, [sp, #0x14]
	ldr     r0, [r4, #0xc]
	ldr     r2, [r4, #0x18]
	ldr     r3, [r4, #0x1c]
	bl      0x200cdc4
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x40] @ 0x21d2380, (=0x2714)
	ldr     r2, [pc, #0x3c] @ 0x21d237c, (=0x10f8)
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x18]
	ldr     r1, [r4, #0x1c]
	ldr     r2, [r4, r2]
	bl      0x200cc3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x2c] @ 0x21d2380, (=0x2714)
	ldr     r2, [pc, #0x28] @ 0x21d237c, (=0x10f8)
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x18]
	ldr     r1, [r4, #0x1c]
	ldr     r2, [r4, r2]
	mov     r3, #0x1
	bl      0x200ce24
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x18] @ 0x21d2380, (=0x2714)
	ldr     r2, [pc, #0x10] @ 0x21d237c, (=0x10f8)
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x18]
	ldr     r1, [r4, #0x1c]
	ldr     r2, [r4, r2]
	mov     r3, #0x2
	bl      0x200ce54
	add     sp, #0x18
	pop     {r4,pc}
@ 0x21d237c

.word 0x10f8 @ 0x21d237c
.word 0x2714 @ 0x21d2380
.thumb
Function_21d2384: @ 21d2384 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x1c]
	ldr     r1, [pc, #0x20] @ 0x21d23ac, (=0x2714)
	bl      0x200d070
	ldr     r0, [r4, #0x1c]
	ldr     r1, [pc, #0x18] @ 0x21d23ac, (=0x2714)
	bl      Function_200d080
	ldr     r0, [r4, #0x1c]
	ldr     r1, [pc, #0x10] @ 0x21d23ac, (=0x2714)
	bl      Function_200d090
	ldr     r0, [r4, #0x1c]
	ldr     r1, [pc, #0x8] @ 0x21d23ac, (=0x2714)
	bl      Function_200d0a0
	pop     {r4,pc}
@ 0x21d23aa


.align 2


.word 0x2714 @ 0x21d23ac
.thumb
Function_21d23b0: @ 21d23b0 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r5, r6
	ldr     r7, [pc, #0x30] @ 0x21d23e8, (=0x10e0)
	mov     r4, #0x2
	add     r5, #0x8
.thumb
branch_21d23bc: @ 21d23bc :thumb
	ldr     r0, [r6, #0x18]
	ldr     r1, [r6, #0x1c]
	ldr     r2, [pc, #0x28] @ 0x21d23ec, (=0x21d4968)
	bl      0x200ce6c
	ldr     r1, [pc, #0x20] @ 0x21d23e8, (=0x10e0)
	str     r0, [r5, r1]
	mov     r0, r1
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      0x200d390
	ldr     r0, [r5, r7]
	ldr     r0, [r0, #0x0]
	bl      0x200d324
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x3
	ble     branch_21d23bc
	pop     {r3-r7,pc}
@ 0x21d23e6


.align 2


.word 0x10e0 @ 0x21d23e8
.word 0x21d4968 @ 0x21d23ec
.thumb
Function_21d23f0: @ 21d23f0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r6, [pc, #0x14] @ 0x21d240c, (=0x10e0)
	mov     r4, #0x2
	add     r5, #0x8
.thumb
branch_21d23fa: @ 21d23fa :thumb
	ldr     r0, [r5, r6]
	bl      0x200d0f4
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x3
	ble     branch_21d23fa
	pop     {r4-r6,pc}
@ 0x21d240a


.align 2


.word 0x10e0 @ 0x21d240c
.thumb
Function_21d2410: @ 21d2410 :thumb
	push    {r3-r7,lr}
	ldr     r1, [pc, #0xa8] @ 0x21d24bc, (=0x10f8)
	mov     r7, r0
	ldr     r1, [r7, r1]
	add     r0, #0x2c
	mov     r2, #0x4e
	mov     r3, #0x4b
	bl      0x20170d8
	ldr     r0, [r7, #0x34]
	mov     r1, #0x0
	mov     r2, #0x40
	blx     0x20b2ce4
	ldr     r0, [r7, #0x34]
	mov     r1, #0x0
	mov     r2, #0x80
	blx     0x20b2ce4
	mov     r2, #0x2
	ldr     r0, [r7, #0x34]
	mov     r1, #0x0
	lsl     r2, r2, #8
	blx     0x20b2ce4
	mov     r2, #0x1
	ldr     r0, [r7, #0x34]
	mov     r1, #0x0
	lsl     r2, r2, #10
	blx     0x20b2ce4
	mov     r5, r7
	mov     r6, r7
	mov     r4, #0x0
	add     r5, #0x6c
	add     r6, #0x2c
.thumb
branch_21d2458: @ 21d2458 :thumb
	mov     r0, r5
	mov     r1, r6
	bl      0x2017258
	mov     r1, #0x0
	mov     r0, r5
	mov     r2, r1
	mov     r3, r1
	bl      0x2017350
	mov     r1, #0x1
	lsl     r1, r1, #12
	mov     r0, r5
	mov     r2, r1
	mov     r3, r1
	bl      0x201736c
	mov     r0, r5
	mov     r1, #0x1
	bl      0x2017348
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x78
	cmp     r4, #0x10
	blt     branch_21d2458
	ldr     r0, [pc, #0x34] @ 0x21d24c0, (=0x7ec)
	mov     r5, #0x0
	add     r4, r7, r0
	mov     r6, r5
.thumb
branch_21d2492: @ 21d2492 :thumb
	mov     r0, r4
	mov     r1, r6
	bl      0x2017348
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r4, #0x78
	cmp     r5, #0x10
	blt     branch_21d2492
	ldr     r0, [pc, #0x20] @ 0x21d24c4, (=0x1104)
	mov     r1, #0x1
	strb    r1, [r7, r0]
	mov     r0, r7
	bl      Function_21d4134
	mov     r0, r7
	bl      Function_21d4170
	ldr     r0, [pc, #0x10] @ 0x21d24c8, (=0x1103)
	mov     r1, #0x1
	strb    r1, [r7, r0]
	pop     {r3-r7,pc}
@ 0x21d24bc

.word 0x10f8 @ 0x21d24bc
.word 0x7ec @ 0x21d24c0
.word 0x1104 @ 0x21d24c4
.word 0x1103 @ 0x21d24c8
.thumb
Function_21d24cc: @ 21d24cc :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r5, r6
	mov     r4, #0x0
	add     r5, #0x2c
.thumb
branch_21d24d6: @ 21d24d6 :thumb
	mov     r0, r5
	bl      0x2017110
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x4
	blt     branch_21d24d6
	ldr     r0, [pc, #0x4] @ 0x21d24ec, (=0x1103)
	mov     r1, #0x0
	strb    r1, [r6, r0]
	pop     {r4-r6,pc}
@ 0x21d24ec

.word 0x1103 @ 0x21d24ec
.thumb
Function_21d24f0: @ 21d24f0 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r4, [r5, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0xc]
	mov     r1, #0x7f
	mov     r2, #0x14
	mov     r3, #0x4b
	bl      0x2003050
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4b
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x11c] @ 0x21d2638, (=0x10f8)
	ldr     r2, [r5, #0x8]
	ldr     r0, [r5, r0]
	mov     r1, #0xb
	mov     r3, #0x2
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4b
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x104] @ 0x21d2638, (=0x10f8)
	ldr     r2, [r5, #0x8]
	ldr     r0, [r5, r0]
	mov     r1, #0x5
	mov     r3, #0x2
	bl      0x200710c
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0xc]
	mov     r1, #0x7f
	mov     r2, #0x17
	mov     r3, #0x4b
	bl      0x2003050
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4b
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0xd4] @ 0x21d2638, (=0x10f8)
	ldr     r2, [r5, #0x8]
	ldr     r0, [r5, r0]
	mov     r1, #0xe
	mov     r3, #0x7
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4b
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0xb8] @ 0x21d2638, (=0x10f8)
	ldr     r2, [r5, #0x8]
	ldr     r0, [r5, r0]
	mov     r1, #0x8
	mov     r3, #0x7
	bl      0x200710c
	ldr     r0, [pc, #0xac] @ 0x21d2638, (=0x10f8)
	mov     r1, #0x11
	ldr     r0, [r5, r0]
	add     r2, sp, #0x10
	mov     r3, #0x4b
	bl      0x20071ec
	mov     r6, r0
	ldr     r0, [sp, #0x10]
	ldr     r1, [pc, #0x9c] @ 0x21d263c, (=0xfb4)
	mov     r2, #0x1
	ldr     r0, [r0, #0xc]
	add     r1, r5, r1
	lsl     r2, r2, #8
	blx     MIi_CpuCopy16
	mov     r0, r6
	bl      free
	mov     r0, #0x20
	ldr     r1, [pc, #0x88] @ 0x21d263c, (=0xfb4)
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0xc]
	add     r1, r5, r1
	mov     r2, #0x0
	mov     r3, #0x10
	bl      0x2002fbc
	mov     r0, #0x20
	ldr     r1, [pc, #0x74] @ 0x21d263c, (=0xfb4)
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0xc]
	add     r1, r5, r1
	mov     r2, #0x1
	mov     r3, #0x10
	bl      0x2002fbc
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
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x7
	mov     r3, r2
	bl      Function_2019184
	mov     r0, r4
	mov     r1, #0x7
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2019184
	mov     r0, #0x2
	mov     r1, #0x1
	bl      0x2019120
	mov     r0, #0x7
	mov     r1, #0x1
	bl      0x2019120
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	ldr     r0, [r5, #0x8]
	mov     r1, #0x2
	bl      0x201c3c0
	ldr     r0, [r5, #0x8]
	mov     r1, #0x7
	bl      0x201c3c0
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x21d2638

.word 0x10f8 @ 0x21d2638
.word 0xfb4 @ 0x21d263c
.thumb
Function_21d2640: @ 21d2640 :thumb
	push    {r3,lr}
	mov     r0, #0x2
	mov     r1, #0x0
	bl      0x2019120
	mov     r0, #0x7
	mov     r1, #0x0
	bl      0x2019120
	mov     r0, #0x1
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x10
	mov     r1, #0x0
	bl      Function_201ff0c
	pop     {r3,pc}
@ 0x21d2664

.thumb
Function_21d2664: @ 21d2664 :thumb
	push    {r4,lr}
	add     sp, #-0x18
	mov     r4, r0
	bl      Function_21d1a54
	ldr     r0, [pc, #0x6c] @ 0x21d26dc, (=0x10f8)
	mov     r1, #0x2
	ldr     r0, [r4, r0]
	str     r0, [sp, #0x0]
	mov     r0, #0xf
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x4
	str     r0, [sp, #0xc]
	mov     r0, #0x1
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x58] @ 0x21d26e0, (=0x2712)
	str     r0, [sp, #0x14]
	ldr     r0, [r4, #0xc]
	ldr     r2, [r4, #0x18]
	ldr     r3, [r4, #0x1c]
	bl      0x200cdc4
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x40] @ 0x21d26e0, (=0x2712)
	ldr     r2, [pc, #0x3c] @ 0x21d26dc, (=0x10f8)
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x18]
	ldr     r1, [r4, #0x1c]
	ldr     r2, [r4, r2]
	bl      0x200cc3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x2c] @ 0x21d26e0, (=0x2712)
	ldr     r2, [pc, #0x28] @ 0x21d26dc, (=0x10f8)
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x18]
	ldr     r1, [r4, #0x1c]
	ldr     r2, [r4, r2]
	mov     r3, #0x1
	bl      0x200ce24
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x18] @ 0x21d26e0, (=0x2712)
	ldr     r2, [pc, #0x10] @ 0x21d26dc, (=0x10f8)
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x18]
	ldr     r1, [r4, #0x1c]
	ldr     r2, [r4, r2]
	mov     r3, #0x2
	bl      0x200ce54
	add     sp, #0x18
	pop     {r4,pc}
@ 0x21d26dc

.word 0x10f8 @ 0x21d26dc
.word 0x2712 @ 0x21d26e0
.thumb
Function_21d26e4: @ 21d26e4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x1c]
	ldr     r1, [pc, #0x24] @ 0x21d2710, (=0x2712)
	bl      0x200d070
	ldr     r0, [r4, #0x1c]
	ldr     r1, [pc, #0x1c] @ 0x21d2710, (=0x2712)
	bl      Function_200d080
	ldr     r0, [r4, #0x1c]
	ldr     r1, [pc, #0x14] @ 0x21d2710, (=0x2712)
	bl      Function_200d090
	ldr     r0, [r4, #0x1c]
	ldr     r1, [pc, #0xc] @ 0x21d2710, (=0x2712)
	bl      Function_200d0a0
	mov     r0, r4
	bl      Function_21d1b98
	pop     {r4,pc}
@ 0x21d2710

.word 0x2712 @ 0x21d2710
.thumb
Function_21d2714: @ 21d2714 :thumb
	push    {r4,lr}
	ldr     r2, [pc, #0x38] @ 0x21d2750, (=0x10e0)
	mov     r4, r0
	add     r1, r4, r2
	.hword  0x1d12 @ add r2, r2, #0x4
	add     r2, r4, r2
	bl      Function_21d1bc4
	ldr     r0, [r4, #0x18]
	ldr     r1, [r4, #0x1c]
	ldr     r2, [pc, #0x28] @ 0x21d2754, (=0x21d49d0)
	bl      0x200ce6c
	ldr     r1, [pc, #0x28] @ 0x21d2758, (=0x10ec)
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	mov     r1, #0x1
	bl      0x200d390
	ldr     r0, [pc, #0x1c] @ 0x21d2758, (=0x10ec)
	mov     r1, #0x0
	ldr     r0, [r4, r0]
	bl      0x200d3f4
	ldr     r0, [pc, #0x10] @ 0x21d2758, (=0x10ec)
	ldr     r0, [r4, r0]
	ldr     r0, [r0, #0x0]
	bl      0x200d324
	pop     {r4,pc}
@ 0x21d2750

.word 0x10e0 @ 0x21d2750
.word 0x21d49d0 @ 0x21d2754
.word 0x10ec @ 0x21d2758
.thumb
Function_21d275c: @ 21d275c :thumb
	push    {r4,lr}
	ldr     r2, [pc, #0x18] @ 0x21d2778, (=0x10e0)
	mov     r4, r0
	ldr     r1, [r4, r2]
	.hword  0x1d12 @ add r2, r2, #0x4
	ldr     r2, [r4, r2]
	bl      Function_21d1c9c
	ldr     r0, [pc, #0xc] @ 0x21d277c, (=0x10ec)
	ldr     r0, [r4, r0]
	bl      0x200d0f4
	pop     {r4,pc}
@ 0x21d2776


.align 2


.word 0x10e0 @ 0x21d2778
.word 0x10ec @ 0x21d277c
.thumb
Function_21d2780: @ 21d2780 :thumb
	push    {r4,lr}
	add     sp, #-0x18
	mov     r4, r0
	ldr     r0, [pc, #0x6c] @ 0x21d27f4, (=0x10f8)
	mov     r1, #0x3
	ldr     r0, [r4, r0]
	str     r0, [sp, #0x0]
	mov     r0, #0xf
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0xa
	str     r0, [sp, #0xc]
	mov     r0, #0x2
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x58] @ 0x21d27f8, (=0x2715)
	str     r0, [sp, #0x14]
	ldr     r0, [r4, #0xc]
	ldr     r2, [r4, #0x18]
	ldr     r3, [r4, #0x1c]
	bl      0x200cdc4
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x40] @ 0x21d27f8, (=0x2715)
	ldr     r2, [pc, #0x3c] @ 0x21d27f4, (=0x10f8)
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x18]
	ldr     r1, [r4, #0x1c]
	ldr     r2, [r4, r2]
	bl      0x200cc3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x2c] @ 0x21d27f8, (=0x2715)
	ldr     r2, [pc, #0x28] @ 0x21d27f4, (=0x10f8)
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x18]
	ldr     r1, [r4, #0x1c]
	ldr     r2, [r4, r2]
	mov     r3, #0x1
	bl      0x200ce24
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x18] @ 0x21d27f8, (=0x2715)
	ldr     r2, [pc, #0x10] @ 0x21d27f4, (=0x10f8)
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x18]
	ldr     r1, [r4, #0x1c]
	ldr     r2, [r4, r2]
	mov     r3, #0x2
	bl      0x200ce54
	add     sp, #0x18
	pop     {r4,pc}
@ 0x21d27f4

.word 0x10f8 @ 0x21d27f4
.word 0x2715 @ 0x21d27f8
.thumb
Function_21d27fc: @ 21d27fc :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x1c]
	ldr     r1, [pc, #0x20] @ 0x21d2824, (=0x2715)
	bl      0x200d070
	ldr     r0, [r4, #0x1c]
	ldr     r1, [pc, #0x18] @ 0x21d2824, (=0x2715)
	bl      Function_200d080
	ldr     r0, [r4, #0x1c]
	ldr     r1, [pc, #0x10] @ 0x21d2824, (=0x2715)
	bl      Function_200d090
	ldr     r0, [r4, #0x1c]
	ldr     r1, [pc, #0x8] @ 0x21d2824, (=0x2715)
	bl      Function_200d0a0
	pop     {r4,pc}
@ 0x21d2822


.align 2


.word 0x2715 @ 0x21d2824
.thumb
Function_21d2828: @ 21d2828 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x18]
	mov     r4, r5
	ldr     r1, [r5, #0x1c]
	ldr     r2, [pc, #0x48] @ 0x21d287c, (=0x21d4934)
	add     r4, #0x8
	bl      0x200ce6c
	ldr     r1, [pc, #0x44] @ 0x21d2880, (=0x10e0)
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	mov     r1, #0x1
	bl      0x200d390
	ldr     r0, [pc, #0x38] @ 0x21d2880, (=0x10e0)
	ldr     r0, [r4, r0]
	ldr     r0, [r0, #0x0]
	bl      0x200d324
	ldr     r0, [r5, #0x18]
	ldr     r1, [r5, #0x1c]
	ldr     r2, [pc, #0x2c] @ 0x21d2884, (=0x21d48cc)
	bl      0x200ce6c
	ldr     r1, [pc, #0x2c] @ 0x21d2888, (=0x10f0)
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	mov     r1, #0x1
	bl      0x200d390
	ldr     r0, [pc, #0x20] @ 0x21d2888, (=0x10f0)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	bl      0x200d3f4
	ldr     r0, [pc, #0x14] @ 0x21d2888, (=0x10f0)
	ldr     r0, [r5, r0]
	ldr     r0, [r0, #0x0]
	bl      0x200d324
	pop     {r3-r5,pc}
@ 0x21d287c

.word 0x21d4934 @ 0x21d287c
.word 0x10e0 @ 0x21d2880
.word 0x21d48cc @ 0x21d2884
.word 0x10f0 @ 0x21d2888
.thumb
Function_21d288c: @ 21d288c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x10] @ 0x21d28a4, (=0x10e8)
	ldr     r0, [r4, r0]
	bl      0x200d0f4
	ldr     r0, [pc, #0xc] @ 0x21d28a8, (=0x10f0)
	ldr     r0, [r4, r0]
	bl      0x200d0f4
	pop     {r4,pc}
@ 0x21d28a2


.align 2


.word 0x10e8 @ 0x21d28a4
.word 0x10f0 @ 0x21d28a8
.thumb
Function_21d28ac: @ 21d28ac :thumb
	push    {r3-r7,lr}
	ldr     r1, [pc, #0x154] @ 0x21d2a04, (=0x10f8)
	mov     r5, r0
	ldr     r1, [r5, r1]
	add     r0, #0x2c
	mov     r2, #0x52
	mov     r3, #0x4b
	bl      0x20170d8
	ldr     r0, [r5, #0x34]
	mov     r1, #0x0
	mov     r2, #0x40
	blx     0x20b2ce4
	ldr     r0, [r5, #0x34]
	mov     r1, #0x0
	mov     r2, #0x80
	blx     0x20b2ce4
	mov     r2, #0x2
	ldr     r0, [r5, #0x34]
	mov     r1, #0x0
	lsl     r2, r2, #8
	blx     0x20b2ce4
	mov     r2, #0x1
	ldr     r0, [r5, #0x34]
	mov     r1, #0x0
	lsl     r2, r2, #10
	blx     0x20b2ce4
	ldr     r1, [pc, #0x118] @ 0x21d2a04, (=0x10f8)
	mov     r0, r5
	ldr     r1, [r5, r1]
	add     r0, #0x3c
	mov     r2, #0x53
	mov     r3, #0x4b
	bl      0x20170d8
	ldr     r0, [r5, #0x44]
	mov     r1, #0x0
	mov     r2, #0x40
	blx     0x20b2ce4
	ldr     r0, [r5, #0x44]
	mov     r1, #0x0
	mov     r2, #0x80
	blx     0x20b2ce4
	mov     r2, #0x2
	ldr     r0, [r5, #0x44]
	mov     r1, #0x0
	lsl     r2, r2, #8
	blx     0x20b2ce4
	mov     r2, #0x1
	ldr     r0, [r5, #0x44]
	mov     r1, #0x0
	lsl     r2, r2, #10
	blx     0x20b2ce4
	ldr     r1, [pc, #0xdc] @ 0x21d2a04, (=0x10f8)
	mov     r0, r5
	ldr     r1, [r5, r1]
	add     r0, #0x4c
	mov     r2, #0x54
	mov     r3, #0x4b
	bl      0x20170d8
	ldr     r0, [r5, #0x54]
	mov     r1, #0x0
	mov     r2, #0x40
	blx     0x20b2ce4
	ldr     r0, [r5, #0x54]
	mov     r1, #0x0
	mov     r2, #0x80
	blx     0x20b2ce4
	mov     r2, #0x2
	ldr     r0, [r5, #0x54]
	mov     r1, #0x0
	lsl     r2, r2, #8
	blx     0x20b2ce4
	mov     r2, #0x1
	ldr     r0, [r5, #0x54]
	mov     r1, #0x0
	lsl     r2, r2, #10
	blx     0x20b2ce4
	ldr     r1, [pc, #0xa0] @ 0x21d2a04, (=0x10f8)
	mov     r0, r5
	ldr     r1, [r5, r1]
	add     r0, #0x5c
	mov     r2, #0x4f
	mov     r3, #0x4b
	bl      0x20170d8
	mov     r4, r5
	mov     r7, r5
	mov     r6, #0x0
	add     r4, #0x6c
	add     r7, #0x2c
.thumb
branch_21d297c: @ 21d297c :thumb
	mov     r0, r4
	mov     r1, r7
	bl      0x2017258
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	mov     r3, r1
	bl      0x2017350
	mov     r1, #0x1
	lsl     r1, r1, #12
	mov     r0, r4
	mov     r2, r1
	mov     r3, r1
	bl      0x201736c
	mov     r0, r4
	mov     r1, #0x1
	bl      0x2017348
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x78
	cmp     r6, #0x10
	blt     branch_21d297c
	ldr     r0, [pc, #0x58] @ 0x21d2a08, (=0x7ec)
	mov     r7, r5
	mov     r6, #0x0
	add     r4, r5, r0
	add     r7, #0x4c
.thumb
branch_21d29b8: @ 21d29b8 :thumb
	mov     r0, r4
	mov     r1, r7
	bl      0x2017258
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	mov     r3, r1
	bl      0x2017350
	mov     r1, #0x1
	lsl     r1, r1, #12
	mov     r0, r4
	mov     r2, r1
	mov     r3, r1
	bl      0x201736c
	mov     r0, r4
	mov     r1, #0x1
	bl      0x2017348
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x78
	cmp     r6, #0x10
	blt     branch_21d29b8
	ldr     r0, [pc, #0x20] @ 0x21d2a0c, (=0x1104)
	mov     r1, #0x2
	strb    r1, [r5, r0]
	mov     r0, r5
	bl      Function_21d4134
	mov     r0, r5
	bl      Function_21d4170
	ldr     r0, [pc, #0x10] @ 0x21d2a10, (=0x1103)
	mov     r1, #0x1
	strb    r1, [r5, r0]
	pop     {r3-r7,pc}
@ 0x21d2a04

.word 0x10f8 @ 0x21d2a04
.word 0x7ec @ 0x21d2a08
.word 0x1104 @ 0x21d2a0c
.word 0x1103 @ 0x21d2a10
.thumb
Function_21d2a14: @ 21d2a14 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r5, r6
	mov     r4, #0x0
	add     r5, #0x2c
.thumb
branch_21d2a1e: @ 21d2a1e :thumb
	mov     r0, r5
	bl      0x2017110
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x4
	blt     branch_21d2a1e
	ldr     r0, [pc, #0x4] @ 0x21d2a34, (=0x1103)
	mov     r1, #0x0
	strb    r1, [r6, r0]
	pop     {r4-r6,pc}
@ 0x21d2a34

.word 0x1103 @ 0x21d2a34
.thumb
Function_21d2a38: @ 21d2a38 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d12f0
	ldr     r1, [pc, #0x28] @ 0x21d2a6c, (=0x1105)
	mov     r0, #0x0
	strb    r0, [r4, r1]
	ldrb    r1, [r4, r1]
	mov     r0, r4
	mov     r2, #0x2
	mov     r3, #0x1
	bl      Function_21d439c
	ldr     r0, [pc, #0x18] @ 0x21d2a6c, (=0x1105)
	ldrb    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	mov     r0, #0x2
	mov     r1, #0x1
	bl      0x2019120
	ldr     r0, [r4, #0x8]
	mov     r1, #0x2
	bl      0x201c3c0
	pop     {r4,pc}
@ 0x21d2a6c

.word 0x1105 @ 0x21d2a6c
.thumb
Function_21d2a70: @ 21d2a70 :thumb
	push    {r3,lr}
	mov     r0, #0x2
	mov     r1, #0x0
	bl      0x2019120
	mov     r0, #0x3
	mov     r1, #0x0
	bl      0x2019120
	pop     {r3,pc}
@ 0x21d2a84

.thumb
Function_21d2a84: @ 21d2a84 :thumb
	bx      lr
@ 0x21d2a86


.align 2, 0


.thumb
Function_21d2a88: @ 21d2a88 :thumb
	bx      lr
@ 0x21d2a8a


.align 2, 0


.thumb
Function_21d2a8c: @ 21d2a8c :thumb
	bx      lr
@ 0x21d2a8e


.align 2, 0


.thumb
Function_21d2a90: @ 21d2a90 :thumb
	bx      lr
@ 0x21d2a92


.align 2, 0


.thumb
Function_21d2a94: @ 21d2a94 :thumb
	bx      lr
@ 0x21d2a96


.align 2, 0


.thumb
Function_21d2a98: @ 21d2a98 :thumb
	bx      lr
@ 0x21d2a9a


.align 2, 0


.thumb
Function_21d2a9c: @ 21d2a9c :thumb
	bx      lr
@ 0x21d2a9e


.align 2, 0


.thumb
Function_21d2aa0: @ 21d2aa0 :thumb
	bx      lr
@ 0x21d2aa2


.align 2, 0


.thumb
Function_21d2aa4: @ 21d2aa4 :thumb
	bx      lr
@ 0x21d2aa6


.align 2, 0


.thumb
Function_21d2aa8: @ 21d2aa8 :thumb
	bx      lr
@ 0x21d2aaa


.align 2, 0


.thumb
Function_21d2aac: @ 21d2aac :thumb
	push    {r4-r6,lr}
	add     sp, #-0x18
	mov     r5, r0
	ldr     r4, [r5, #0x8]
	ldr     r0, [pc, #0xf4] @ 0x21d2bac, (=0x21bf6dc)
	mov     r1, #0x0
	strb    r1, [r0, #0x5]
	bl      0x201ffe8
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0xc]
	mov     r2, #0x2
	mov     r3, r1
	bl      Function_20038b0
	mov     r0, #0x4b
	mov     r1, #0x1
	bl      0x201a778
	str     r0, [r5, #0x24]
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0xf
	str     r0, [sp, #0xc]
	str     r3, [sp, #0x10]
	ldr     r1, [r5, #0x24]
	mov     r0, r4
	mov     r2, #0x7
	bl      0x201a7e8
	ldr     r0, [r5, #0x24]
	mov     r1, #0xf
	bl      Function_201ada4
	ldr     r0, [r5, #0x24]
	bl      0x201a9f4
	bl      Function_21d4130
	mov     r1, r0
	ldr     r0, [r5, #0x20]
	bl      Function_200b1ec
	mov     r6, r0
	mov     r0, #0x0
	mov     r1, r6
	mov     r2, r0
	bl      0x2002d7c
	mov     r1, #0x1
	lsl     r1, r1, #8
	sub     r0, r1, r0
	lsr     r3, r0, #1
	mov     r0, #0x50
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x84] @ 0x21d2bb0, (=0x1020f)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	str     r0, [sp, #0xc]
	str     r1, [sp, #0x10]
	str     r1, [sp, #0x14]
	ldr     r0, [r5, #0x24]
	mov     r2, r6
	bl      0x201d7e0
	ldr     r0, [r5, #0x24]
	bl      0x201accc
	mov     r0, r6
	bl      Function_20237bc
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x7
	mov     r3, r2
	bl      Function_2019184
	mov     r0, r4
	mov     r1, #0x7
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2019184
	mov     r0, #0x7
	mov     r1, #0x1
	bl      0x2019120
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x40] @ 0x21d2bb4, (=0xffff1fff)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r2, [pc, #0x3c] @ 0x21d2bb8, (=0x4001000)
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	mov     r0, #0x0
	mov     r1, r0
	sub     r1, #0x10
	bl      0x200f44c
	mov     r0, #0x1
	mov     r1, r0
	sub     r1, #0x11
	bl      0x200f44c
	mov     r0, #0x0
	mov     r1, #0x3d
	mov     r2, #0x3
	bl      0x200ab4c
	ldr     r0, [r5, #0x8]
	mov     r1, #0x7
	bl      0x201c3c0
	add     sp, #0x18
	pop     {r4-r6,pc}
@ 0x21d2baa


.align 2


.word 0x21bf6dc @ 0x21d2bac
.word 0x1020f @ 0x21d2bb0
.word 0xffff1fff @ 0x21d2bb4
.word 0x4001000 @ 0x21d2bb8
.thumb
Function_21d2bbc: @ 21d2bbc :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x7
	mov     r1, #0x0
	bl      0x2019120
	ldr     r0, [r4, #0x24]
	cmp     r0, #0x0
	beq     branch_21d2bdc
	bl      Function_201a8fc
	ldr     r0, [r4, #0x24]
	bl      free
	mov     r0, #0x0
	str     r0, [r4, #0x24]
.thumb
branch_21d2bdc: @ 21d2bdc :thumb
	pop     {r4,pc}
@ 0x21d2bde


.align 2, 0


.thumb
Function_21d2be0: @ 21d2be0 :thumb
	bx      lr
@ 0x21d2be2


.align 2, 0


.thumb
Function_21d2be4: @ 21d2be4 :thumb
	bx      lr
@ 0x21d2be6


.align 2, 0


.thumb
Function_21d2be8: @ 21d2be8 :thumb
	bx      lr
@ 0x21d2bea


.align 2, 0


.thumb
Function_21d2bec: @ 21d2bec :thumb
	bx      lr
@ 0x21d2bee


.align 2, 0


.thumb
Function_21d2bf0: @ 21d2bf0 :thumb
	bx      lr
@ 0x21d2bf2


.align 2, 0


.thumb
Function_21d2bf4: @ 21d2bf4 :thumb
	bx      lr
@ 0x21d2bf6


.align 2, 0


.thumb
Function_21d2bf8: @ 21d2bf8 :thumb
	bx      lr
@ 0x21d2bfa


.align 2, 0


.thumb
Function_21d2bfc: @ 21d2bfc :thumb
	bx      lr
@ 0x21d2bfe


.align 2, 0


.thumb
Function_21d2c00: @ 21d2c00 :thumb
	bx      lr
@ 0x21d2c02


.align 2, 0


.thumb
Function_21d2c04: @ 21d2c04 :thumb
	bx      lr
@ 0x21d2c06


.align 2, 0


.thumb
Function_21d2c08: @ 21d2c08 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r4, r1
	ldr     r1, [r4, #0x0]
	mov     r6, r4
	mov     r5, r0
	add     r6, #0x8
	cmp     r1, #0x0
	beq     branch_21d2c24
	cmp     r1, #0x1
	beq     branch_21d2c44
	cmp     r1, #0x2
	beq     branch_21d2c68
	b       branch_21d2c78
@ 0x21d2c24

.thumb
branch_21d2c24: @ 21d2c24 :thumb
	mov     r1, r6
	bl      Function_21d2cb0
	mov     r1, #0x0
	mov     r0, #0x3
	mov     r2, r1
	str     r0, [sp, #0x0]
	mov     r0, #0x18
	sub     r2, #0x10
	mov     r3, #0x3d
	bl      0x200aae0
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d2c78
@ 0x21d2c44

.thumb
branch_21d2c44: @ 21d2c44 :thumb
	ldr     r0, [pc, #0x5c] @ 0x21d2ca4, (=0x10fc)
	ldr     r1, [r5, r0]
	ldr     r0, [pc, #0x5c] @ 0x21d2ca8, (=0x726)
	cmp     r1, r0
	bcc     branch_21d2c78
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	mov     r0, #0x18
	mov     r1, r0
	sub     r1, #0x28
	mov     r2, #0x0
	mov     r3, #0x3d
	bl      0x200aae0
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d2c78
@ 0x21d2c68

.thumb
branch_21d2c68: @ 21d2c68 :thumb
	mov     r0, #0x3
	bl      0x200ac1c
	cmp     r0, #0x1
	bne     branch_21d2c78
	add     sp, #0x4
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x21d2c78

.thumb
branch_21d2c78: @ 21d2c78 :thumb
	ldr     r1, [pc, #0x30] @ 0x21d2cac, (=0x10e0)
	mov     r0, r5
	ldr     r1, [r5, r1]
	bl      Function_21d44cc
	mov     r0, r5
	mov     r1, r6
	bl      Function_21d2cec
	mov     r1, #0x0
	mov     r0, r5
	mvn     r1, r1
	bl      Function_21d425c
	mov     r0, r5
	mov     r1, r6
	bl      Function_21d2df4
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x21d2ca2


.align 2


.word 0x10fc @ 0x21d2ca4
.word 0x726 @ 0x21d2ca8
.word 0x10e0 @ 0x21d2cac
.thumb
Function_21d2cb0: @ 21d2cb0 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r4, [pc, #0x2c] @ 0x21d2ce4, (=0x21d4b70)
	mov     r5, r1
	mov     r7, #0x2
	add     r6, #0x8
.thumb
branch_21d2cbc: @ 21d2cbc :thumb
	ldr     r0, [pc, #0x28] @ 0x21d2ce8, (=0x10e0)
	mov     r3, #0x11
	ldr     r0, [r6, r0]
	ldr     r1, [r4, #0x4]
	ldr     r2, [r4, #0x8]
	lsl     r3, r3, #16
	bl      0x200d650
	ldr     r0, [r4, #0x4]
	.hword  0x1c7f @ add r7, r7, #0x1
	str     r0, [r5, #0x8]
	ldr     r0, [r4, #0x8]
	.hword  0x1d36 @ add r6, r6, #0x4
	str     r0, [r5, #0xc]
	add     r4, #0x24
	add     r5, #0x14
	cmp     r7, #0x4
	ble     branch_21d2cbc
	pop     {r3-r7,pc}
@ 0x21d2ce2


.align 2


.word 0x21d4b70 @ 0x21d2ce4
.word 0x10e0 @ 0x21d2ce8
.thumb
Function_21d2cec: @ 21d2cec :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r5, r7
	str     r1, [sp, #0x0]
	mov     r6, #0x0
	mov     r4, #0x2
	add     r5, #0x8
.thumb
branch_21d2cfa: @ 21d2cfa :thumb
	ldr     r2, [pc, #0x18] @ 0x21d2d14, (=0x10e0)
	ldr     r1, [sp, #0x0]
	ldr     r2, [r5, r2]
	mov     r0, r7
	mov     r3, r6
	bl      Function_21d2d18
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r4, #0x4
	ble     branch_21d2cfa
	pop     {r3-r7,pc}
@ 0x21d2d14

.word 0x10e0 @ 0x21d2d14
.thumb
Function_21d2d18: @ 21d2d18 :thumb
	push    {r3-r7,lr}
	mov     r0, #0x14
	add     r1, #0x8
	mul     r0, r3
	add     r4, r1, r0
	str     r2, [sp, #0x0]
	mov     r0, #0x24
	ldr     r2, [pc, #0xc4] @ 0x21d2dec, (=0x21d4b70)
	mul     r0, r3
	add     r5, r2, r0
	ldr     r1, [r4, #0xc]
	ldr     r0, [r2, r0]
	cmp     r1, r0
	bge     branch_21d2d3a
	add     r0, r1, #0x1
	str     r0, [r4, #0xc]
	pop     {r3-r7,pc}
@ 0x21d2d3a

.thumb
branch_21d2d3a: @ 21d2d3a :thumb
	ldr     r2, [r4, #0x8]
	ldr     r1, [r5, #0x14]
	mov     r0, r4
	add     r2, r2, r1
	mov     r1, #0x5a
	lsl     r1, r1, #14
	add     r0, #0x8
	str     r2, [r4, #0x8]
	cmp     r2, r1
	blt     branch_21d2d54
	ldr     r2, [r0, #0x0]
	sub     r1, r2, r1
	str     r1, [r0, #0x0]
.thumb
branch_21d2d54: @ 21d2d54 :thumb
	ldr     r0, [r4, #0x8]
	ldr     r6, [r5, #0x18]
	bl      0x201d2b8
	ldr     r2, [r4, #0x0]
	ldr     r1, [r5, #0xc]
	asr     r3, r6, #31
	add     r1, r2, r1
	str     r1, [r4, #0x0]
	ldr     r2, [r4, #0x4]
	ldr     r1, [r5, #0x10]
	add     r1, r2, r1
	str     r1, [r4, #0x4]
	asr     r1, r0, #31
	mov     r2, r6
	blx     _ll_mul
	mov     r2, #0x2
	mov     r7, r0
	mov     r6, r1
	lsl     r2, r2, #10
	add     r7, r7, r2
	ldr     r2, [pc, #0x6c] @ 0x21d2df0, (=0x0)
	ldr     r3, [r4, #0x4]
	adc     r6, r2
	lsl     r2, r6, #20
	lsr     r6, r7, #12
	orr     r6, r2
	add     r2, r3, r6
	mov     r3, #0x11
	ldr     r0, [sp, #0x0]
	ldr     r1, [r4, #0x0]
	lsl     r3, r3, #16
	bl      0x200d650
	mov     r0, #0x12
	ldsb    r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_21d2dae
	ldr     r1, [r5, #0x1c]
	ldr     r0, [sp, #0x0]
	mov     r2, r1
	bl      0x200d74c
	b       branch_21d2dca
@ 0x21d2dae

.thumb
branch_21d2dae: @ 21d2dae :thumb
	ldr     r1, [r5, #0x1c]
	mov     r0, #0x0
	blx     0x20e1a9c
	mov     r6, r0
	ldr     r1, [r5, #0x1c]
	mov     r0, #0x0
	blx     0x20e1a9c
	mov     r2, r0
	ldr     r0, [sp, #0x0]
	mov     r1, r6
	bl      0x200d74c
.thumb
branch_21d2dca: @ 21d2dca :thumb
	mov     r0, #0x10
	ldsh    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, #0x10]
	ldsh    r1, [r4, r0]
	ldrh    r0, [r5, #0x20]
	cmp     r1, r0
	blt     branch_21d2de8
	mov     r0, #0x0
	strh    r0, [r4, #0x10]
	mov     r0, #0x12
	ldsb    r1, [r4, r0]
	mov     r0, #0x1
	eor     r0, r1
	strb    r0, [r4, #0x12]
.thumb
branch_21d2de8: @ 21d2de8 :thumb
	pop     {r3-r7,pc}
@ 0x21d2dea


.align 2


.word 0x21d4b70 @ 0x21d2dec
.word 0x0 @ 0x21d2df0
.thumb
Function_21d2df4: @ 21d2df4 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	ldr     r3, [r4, #0x0]
	mov     r5, r0
	sub     r3, #0x40
	asr     r6, r3, #11
	str     r3, [r4, #0x0]
	lsr     r6, r6, #20
	add     r6, r3, r6
	ldr     r0, [r5, #0x8]
	mov     r1, #0x2
	mov     r2, #0x0
	asr     r3, r6, #12
	bl      Function_2019184
	ldr     r4, [r4, #0x0]
	ldr     r0, [r5, #0x8]
	asr     r3, r4, #11
	lsr     r3, r3, #20
	add     r3, r4, r3
	mov     r1, #0x7
	mov     r2, #0x0
	asr     r3, r3, #12
	bl      Function_2019184
	pop     {r4-r6,pc}
@ 0x21d2e28

.thumb
Function_21d2e28: @ 21d2e28 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r4, r1
	ldr     r1, [r4, #0x0]
	mov     r6, r4
	mov     r5, r0
	add     r6, #0x8
	cmp     r1, #0x0
	beq     branch_21d2e44
	cmp     r1, #0x1
	beq     branch_21d2e64
	cmp     r1, #0x2
	beq     branch_21d2e88
	b       branch_21d2e98
@ 0x21d2e44

.thumb
branch_21d2e44: @ 21d2e44 :thumb
	mov     r1, r6
	bl      Function_21d2ed8
	mov     r1, #0x0
	mov     r0, #0x3
	mov     r2, r1
	str     r0, [sp, #0x0]
	mov     r0, #0x18
	sub     r2, #0x10
	mov     r3, #0x3d
	bl      0x200aae0
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d2e98
@ 0x21d2e64

.thumb
branch_21d2e64: @ 21d2e64 :thumb
	ldr     r0, [pc, #0x64] @ 0x21d2ecc, (=0x10fc)
	ldr     r1, [r5, r0]
	ldr     r0, [pc, #0x64] @ 0x21d2ed0, (=0x1770)
	cmp     r1, r0
	bcc     branch_21d2e98
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	mov     r0, #0x18
	mov     r1, r0
	sub     r1, #0x28
	mov     r2, #0x0
	mov     r3, #0x3d
	bl      0x200aae0
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d2e98
@ 0x21d2e88

.thumb
branch_21d2e88: @ 21d2e88 :thumb
	mov     r0, #0x3
	bl      0x200ac1c
	cmp     r0, #0x1
	bne     branch_21d2e98
	add     sp, #0x4
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x21d2e98

.thumb
branch_21d2e98: @ 21d2e98 :thumb
	ldr     r1, [pc, #0x38] @ 0x21d2ed4, (=0x10e0)
	mov     r0, r5
	ldr     r1, [r5, r1]
	bl      Function_21d44cc
	mov     r0, r5
	mov     r1, r6
	bl      Function_21d2fa8
	mov     r1, #0x0
	mov     r0, r5
	mvn     r1, r1
	bl      Function_21d425c
	mov     r0, r5
	mov     r1, r6
	bl      Function_21d32d8
	mov     r0, r5
	mov     r1, r6
	bl      Function_21d330c
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x21d2eca


.align 2


.word 0x10fc @ 0x21d2ecc
.word 0x1770 @ 0x21d2ed0
.word 0x10e0 @ 0x21d2ed4
.thumb
Function_21d2ed8: @ 21d2ed8 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r4, [pc, #0xbc] @ 0x21d2f9c, (=0x21d4bdc)
	mov     r5, r1
	mov     r7, #0x2
	add     r6, #0x8
.thumb
branch_21d2ee4: @ 21d2ee4 :thumb
	ldr     r1, [r4, #0x40]
	ldr     r0, [r4, #0x4]
	sub     r1, r1, r0
	mov     r0, r5
	add     r0, #0x94
	str     r1, [r0, #0x0]
	mov     r0, r5
	ldr     r1, [r4, #0x44]
	add     r0, #0x98
	str     r1, [r0, #0x0]
	mov     r0, r5
	ldr     r1, [r4, #0x10]
	add     r0, #0xa4
	str     r1, [r0, #0x0]
	mov     r0, r5
	ldr     r1, [r4, #0xc]
	add     r0, #0xb0
	str     r1, [r0, #0x0]
	ldr     r0, [r4, #0x10]
	bl      0x201d2b8
	ldr     r2, [r4, #0x4]
	asr     r1, r0, #31
	asr     r3, r2, #31
	blx     _ll_mul
	mov     r2, #0x2
	lsl     r2, r2, #10
	add     r0, r0, r2
	ldr     r2, [pc, #0x80] @ 0x21d2fa0, (=0x0)
	adc     r1, r2
	lsr     r2, r0, #12
	lsl     r1, r1, #20
	mov     r0, r5
	orr     r2, r1
	add     r0, #0xbc
	str     r2, [r0, #0x0]
	ldr     r0, [r4, #0x10]
	bl      0x201d2c4
	ldr     r2, [r4, #0x8]
	asr     r1, r0, #31
	asr     r3, r2, #31
	blx     _ll_mul
	mov     r2, #0x2
	lsl     r2, r2, #10
	add     r0, r0, r2
	ldr     r2, [pc, #0x58] @ 0x21d2fa0, (=0x0)
	adc     r1, r2
	lsr     r2, r0, #12
	lsl     r1, r1, #20
	mov     r0, r5
	mov     r3, r5
	orr     r2, r1
	add     r0, #0xc0
	str     r2, [r0, #0x0]
	mov     r0, r5
	mov     r2, r5
	ldr     r1, [r4, #0x0]
	add     r0, #0xc8
	strh    r1, [r0, #0x0]
	mov     r1, r5
	add     r1, #0x94
	add     r2, #0xbc
	add     r3, #0xc0
	ldr     r0, [pc, #0x38] @ 0x21d2fa4, (=0x10e0)
	ldr     r1, [r1, #0x0]
	ldr     r2, [r2, #0x0]
	ldr     r3, [r3, #0x0]
	add     r1, r1, r2
	mov     r2, r5
	add     r2, #0x98
	ldr     r2, [r2, #0x0]
	ldr     r0, [r6, r0]
	add     r2, r2, r3
	mov     r3, #0x11
	lsl     r3, r3, #16
	bl      0x200d650
	ldr     r0, [pc, #0x1c] @ 0x21d2fa4, (=0x10e0)
	mov     r1, #0x2
	ldr     r0, [r6, r0]
	bl      0x200d6a4
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	add     r4, #0x54
	add     r5, #0x3c
	cmp     r7, #0x3
	ble     branch_21d2ee4
	pop     {r3-r7,pc}
@ 0x21d2f9c

.word 0x21d4bdc @ 0x21d2f9c
.word 0x0 @ 0x21d2fa0
.word 0x10e0 @ 0x21d2fa4
.thumb
Function_21d2fa8: @ 21d2fa8 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r5, r7
	str     r1, [sp, #0x0]
	mov     r6, #0x0
	mov     r4, #0x2
	add     r5, #0x8
.thumb
branch_21d2fb6: @ 21d2fb6 :thumb
	ldr     r2, [pc, #0x18] @ 0x21d2fd0, (=0x10e0)
	ldr     r1, [sp, #0x0]
	ldr     r2, [r5, r2]
	mov     r0, r7
	mov     r3, r6
	bl      Function_21d2fd4
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r4, #0x3
	ble     branch_21d2fb6
	pop     {r3-r7,pc}
@ 0x21d2fd0

.word 0x10e0 @ 0x21d2fd0
.thumb
Function_21d2fd4: @ 21d2fd4 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r0, #0x3c
	add     r1, #0x94
	mul     r0, r3
	add     r4, r1, r0
	mov     r0, #0x54
	ldr     r1, [pc, #0x2e8] @ 0x21d32cc, (=0x21d4bdc)
	mul     r0, r3
	add     r5, r1, r0
	mov     r0, #0x34
	ldsh    r0, [r4, r0]
	str     r2, [sp, #0x0]
	cmp     r0, #0x0
	ble     branch_21d2ff8
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, #0x34]
	pop     {r3-r7,pc}
@ 0x21d2ff8

.thumb
branch_21d2ff8: @ 21d2ff8 :thumb
	mov     r0, r4
	add     r0, #0x39
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x5
	bls     branch_21d3004
	b       branch_21d326c
@ 0x21d3004

.thumb
branch_21d3004: @ 21d3004 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d3010

Jumppoints_21d3010:
.hword branch_21d301c - Jumppoints_21d3010 - 2
.hword branch_21d302a - Jumppoints_21d3010 - 2
.hword branch_21d30aa - Jumppoints_21d3010 - 2
.hword branch_21d30d6 - Jumppoints_21d3010 - 2
.hword branch_21d3196 - Jumppoints_21d3010 - 2
.hword branch_21d3206 - Jumppoints_21d3010 - 2
.thumb
branch_21d301c: @ 21d301c :thumb
	mov     r0, r4
	add     r0, #0x39
	ldrb    r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x39
	strb    r1, [r0, #0x0]
.thumb
branch_21d302a: @ 21d302a :thumb
	ldr     r1, [r4, #0x10]
	ldr     r0, [r5, #0x14]
	cmp     r1, r0
	ble     branch_21d3042
	ldr     r1, [r4, #0x1c]
	ldr     r0, [r5, #0x1c]
	sub     r1, r1, r0
	str     r1, [r4, #0x1c]
	ldr     r0, [r5, #0x20]
	cmp     r1, r0
	bge     branch_21d3042
	str     r0, [r4, #0x1c]
.thumb
branch_21d3042: @ 21d3042 :thumb
	ldr     r1, [r4, #0x10]
	ldr     r0, [r4, #0x1c]
	add     r1, r1, r0
	str     r1, [r4, #0x10]
	ldr     r0, [r5, #0x18]
	cmp     r1, r0
	blt     branch_21d3060
	str     r0, [r4, #0x10]
	mov     r0, r4
	add     r0, #0x39
	ldrb    r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x39
	strb    r1, [r0, #0x0]
.thumb
branch_21d3060: @ 21d3060 :thumb
	ldr     r6, [r5, #0x4]
	ldr     r0, [r4, #0x10]
	bl      0x201d2b8
	asr     r1, r0, #31
	asr     r3, r6, #31
	mov     r2, r6
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	str     r1, [r4, #0x28]
	ldr     r6, [r5, #0x8]
	ldr     r0, [r4, #0x10]
	bl      0x201d2c4
	asr     r1, r0, #31
	asr     r3, r6, #31
	mov     r2, r6
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	str     r1, [r4, #0x2c]
	b       branch_21d326c
@ 0x21d30aa

.thumb
branch_21d30aa: @ 21d30aa :thumb
	ldr     r1, [r4, #0x0]
	ldr     r0, [r4, #0x28]
	add     r0, r1, r0
	str     r0, [r4, #0x0]
	ldr     r1, [r4, #0x4]
	ldr     r0, [r4, #0x2c]
	add     r0, r1, r0
	str     r0, [r4, #0x4]
	mov     r0, #0x0
	str     r0, [r4, #0x28]
	str     r0, [r4, #0x2c]
	ldr     r0, [r5, #0x2c]
	str     r0, [r4, #0x20]
	ldr     r0, [r5, #0x30]
	str     r0, [r4, #0x24]
	mov     r0, r4
	add     r0, #0x39
	ldrb    r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x39
	strb    r1, [r0, #0x0]
.thumb
branch_21d30d6: @ 21d30d6 :thumb
	ldr     r2, [r4, #0x14]
	ldr     r1, [r4, #0x20]
	mov     r0, r4
	add     r1, r2, r1
	str     r1, [r4, #0x14]
	ldr     r2, [r4, #0x18]
	ldr     r1, [r4, #0x24]
	add     r0, #0x14
	add     r1, r2, r1
	str     r1, [r4, #0x18]
	mov     r1, #0x5a
	ldr     r2, [r4, #0x14]
	lsl     r1, r1, #14
	cmp     r2, r1
	blt     branch_21d30fa
	ldr     r2, [r0, #0x0]
	sub     r1, r2, r1
	str     r1, [r0, #0x0]
.thumb
branch_21d30fa: @ 21d30fa :thumb
	mov     r0, #0x5a
	ldr     r1, [r4, #0x18]
	lsl     r0, r0, #14
	cmp     r1, r0
	blt     branch_21d3108
	sub     r0, r1, r0
	str     r0, [r4, #0x18]
.thumb
branch_21d3108: @ 21d3108 :thumb
	ldr     r6, [r5, #0x24]
	ldr     r0, [r4, #0x14]
	bl      0x201d2b8
	asr     r1, r0, #31
	asr     r3, r6, #31
	mov     r2, r6
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	str     r1, [r4, #0x28]
	ldr     r6, [r5, #0x28]
	ldr     r0, [r4, #0x18]
	bl      0x201d2b8
	asr     r1, r0, #31
	asr     r3, r6, #31
	mov     r2, r6
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	ldr     r0, [pc, #0x180] @ 0x21d32d0, (=0x10fc)
	str     r1, [r4, #0x2c]
	ldr     r1, [r7, r0]
	ldr     r0, [pc, #0x17c] @ 0x21d32d4, (=0x1752)
	cmp     r1, r0
	bcs     branch_21d315c
	b       branch_21d326c
@ 0x21d315c

.thumb
branch_21d315c: @ 21d315c :thumb
	ldr     r0, [r5, #0x2c]
	mov     r1, #0x14
	blx     _s32_div_f
	ldr     r1, [r4, #0x20]
	sub     r0, r1, r0
	str     r0, [r4, #0x20]
	ldr     r0, [r5, #0x30]
	mov     r1, #0x14
	blx     _s32_div_f
	ldr     r1, [r4, #0x24]
	sub     r0, r1, r0
	str     r0, [r4, #0x24]
	ldr     r0, [r5, #0x2c]
	mov     r1, #0x14
	blx     _s32_div_f
	ldr     r1, [r4, #0x20]
	cmp     r1, r0
	bgt     branch_21d326c
	mov     r0, r4
	add     r0, #0x39
	ldrb    r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x39
	strb    r1, [r0, #0x0]
	b       branch_21d326c
@ 0x21d3196

.thumb
branch_21d3196: @ 21d3196 :thumb
	ldr     r1, [r4, #0x0]
	ldr     r0, [r4, #0x28]
	add     r1, r1, r0
	ldr     r0, [r5, #0x34]
	sub     r0, r1, r0
	str     r0, [r4, #0x0]
	ldr     r1, [r4, #0x4]
	ldr     r0, [r4, #0x2c]
	add     r0, r1, r0
	str     r0, [r4, #0x4]
	mov     r0, #0x0
	str     r0, [r4, #0x10]
	ldr     r1, [r5, #0x3c]
	str     r1, [r4, #0x1c]
	ldr     r6, [r5, #0x34]
	bl      0x201d2b8
	asr     r1, r0, #31
	asr     r3, r6, #31
	mov     r2, r6
	blx     _ll_mul
	mov     r3, #0x2
	mov     r2, #0x0
	lsl     r3, r3, #10
	add     r3, r0, r3
	adc     r1, r2
	lsl     r0, r1, #20
	lsr     r1, r3, #12
	orr     r1, r0
	str     r1, [r4, #0x28]
	ldr     r6, [r5, #0x38]
	mov     r0, r2
	bl      0x201d2c4
	asr     r1, r0, #31
	asr     r3, r6, #31
	mov     r2, r6
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	mov     r0, r4
	str     r1, [r4, #0x2c]
	add     r0, #0x39
	ldrb    r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x39
	strb    r1, [r0, #0x0]
.thumb
branch_21d3206: @ 21d3206 :thumb
	ldr     r1, [r4, #0x10]
	ldr     r0, [r4, #0x1c]
	add     r0, r1, r0
	str     r0, [r4, #0x10]
	ldr     r6, [r5, #0x34]
	bl      0x201d2c4
	asr     r1, r0, #31
	asr     r3, r6, #31
	mov     r2, r6
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	str     r1, [r4, #0x28]
	ldr     r6, [r5, #0x38]
	ldr     r0, [r4, #0x10]
	bl      0x201d2b8
	asr     r1, r0, #31
	asr     r3, r6, #31
	mov     r2, r6
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	str     r1, [r4, #0x2c]
	mov     r0, #0x2d
	ldr     r1, [r4, #0x10]
	lsl     r0, r0, #14
	cmp     r1, r0
	blt     branch_21d326c
	mov     r0, r4
	add     r0, #0x39
	ldrb    r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x39
	strb    r1, [r0, #0x0]
.thumb
branch_21d326c: @ 21d326c :thumb
	mov     r0, #0x38
	ldsb    r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_21d327e
	ldr     r0, [sp, #0x0]
	ldr     r1, [r5, #0x4c]
	bl      0x200d7c0
	b       branch_21d3288
@ 0x21d327e

.thumb
branch_21d327e: @ 21d327e :thumb
	ldr     r1, [r5, #0x4c]
	ldr     r0, [sp, #0x0]
	neg     r1, r1
	bl      0x200d7c0
.thumb
branch_21d3288: @ 21d3288 :thumb
	mov     r0, #0x36
	ldsh    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, #0x36]
	ldsh    r1, [r4, r0]
	mov     r0, r5
	add     r0, #0x50
	ldrh    r0, [r0, #0x0]
	cmp     r1, r0
	blt     branch_21d32ae
	mov     r0, #0x0
	strh    r0, [r4, #0x36]
	mov     r0, #0x38
	ldsb    r1, [r4, r0]
	mov     r0, #0x1
	eor     r1, r0
	mov     r0, r4
	add     r0, #0x38
	strb    r1, [r0, #0x0]
.thumb
branch_21d32ae: @ 21d32ae :thumb
	ldr     r1, [r4, #0x4]
	ldr     r0, [r5, #0x48]
	sub     r3, r1, r0
	str     r3, [r4, #0x4]
	ldr     r2, [r4, #0x0]
	ldr     r1, [r4, #0x28]
	ldr     r0, [sp, #0x0]
	add     r1, r2, r1
	ldr     r2, [r4, #0x2c]
	add     r2, r3, r2
	mov     r3, #0x11
	lsl     r3, r3, #16
	bl      0x200d650
	pop     {r3-r7,pc}
@ 0x21d32cc

.word 0x21d4bdc @ 0x21d32cc
.word 0x10fc @ 0x21d32d0
.word 0x1752 @ 0x21d32d4
.thumb
Function_21d32d8: @ 21d32d8 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	ldr     r3, [r4, #0x4]
	mov     r5, r0
	add     r3, #0x60
	asr     r6, r3, #11
	str     r3, [r4, #0x4]
	lsr     r6, r6, #20
	add     r6, r3, r6
	ldr     r0, [r5, #0x8]
	mov     r1, #0x2
	mov     r2, #0x3
	asr     r3, r6, #12
	bl      Function_2019184
	ldr     r4, [r4, #0x4]
	ldr     r0, [r5, #0x8]
	asr     r3, r4, #11
	lsr     r3, r3, #20
	add     r3, r4, r3
	mov     r1, #0x7
	mov     r2, #0x3
	asr     r3, r3, #12
	bl      Function_2019184
	pop     {r4-r6,pc}
@ 0x21d330c

.thumb
Function_21d330c: @ 21d330c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r1
	add     r1, #0x88
	ldr     r7, [r1, #0x0]
	mov     r1, r5
	add     r1, #0x8c
	ldr     r2, [r1, #0x0]
	mov     r1, #0x2
	lsl     r1, r1, #8
	add     r3, r2, r1
	mov     r2, r5
	add     r2, #0x8c
	str     r3, [r2, #0x0]
	mov     r2, r5
	add     r2, #0x8c
	ldr     r2, [r2, #0x0]
	lsl     r1, r1, #3
	cmp     r2, r1
	blt     branch_21d33ac
	mov     r1, #0x10
	str     r1, [sp, #0x8]
	mov     r1, r5
	mov     r2, #0x0
	add     r1, #0x8c
	str     r2, [r1, #0x0]
	mov     r1, r5
	add     r1, #0x90
	ldr     r1, [r1, #0x0]
	cmp     r1, #0x0
	bne     branch_21d337c
	mov     r1, r5
	add     r1, #0x88
	ldr     r1, [r1, #0x0]
	add     r2, r1, #0x1
	mov     r1, r5
	add     r1, #0x88
	str     r2, [r1, #0x0]
	mov     r1, r5
	add     r1, #0x88
	ldr     r1, [r1, #0x0]
	cmp     r1, #0x4
	blt     branch_21d33b0
	mov     r1, r5
	mov     r2, #0x2
	add     r1, #0x88
	str     r2, [r1, #0x0]
	mov     r1, r5
	add     r1, #0x90
	ldr     r2, [r1, #0x0]
	mov     r1, #0x1
	eor     r2, r1
	mov     r1, r5
	add     r1, #0x90
	str     r2, [r1, #0x0]
	b       branch_21d33b0
@ 0x21d337c

.thumb
branch_21d337c: @ 21d337c :thumb
	mov     r1, r5
	add     r1, #0x88
	ldr     r1, [r1, #0x0]
	.hword  0x1e4a @ sub r2, r1, #0x1
	mov     r1, r5
	add     r1, #0x88
	str     r2, [r1, #0x0]
	mov     r1, r5
	add     r1, #0x88
	ldr     r1, [r1, #0x0]
	cmp     r1, #0x0
	bge     branch_21d33b0
	mov     r1, r5
	mov     r2, #0x1
	add     r1, #0x88
	str     r2, [r1, #0x0]
	mov     r1, r5
	add     r1, #0x90
	ldr     r1, [r1, #0x0]
	eor     r2, r1
	mov     r1, r5
	add     r1, #0x90
	str     r2, [r1, #0x0]
	b       branch_21d33b0
@ 0x21d33ac

.thumb
branch_21d33ac: @ 21d33ac :thumb
	asr     r1, r2, #8
	str     r1, [sp, #0x8]
.thumb
branch_21d33b0: @ 21d33b0 :thumb
	mov     r1, r5
	add     r1, #0x90
	ldr     r1, [r1, #0x0]
	cmp     r1, #0x0
	bne     branch_21d33c4
	add     r4, r7, #0x1
	cmp     r4, #0x4
	blt     branch_21d33ca
	.hword  0x1e7c @ sub r4, r7, #0x1
	b       branch_21d33ca
@ 0x21d33c4

.thumb
branch_21d33c4: @ 21d33c4 :thumb
	.hword  0x1e7c @ sub r4, r7, #0x1
	bpl     branch_21d33ca
	mov     r4, #0x1
.thumb
branch_21d33ca: @ 21d33ca :thumb
	ldr     r0, [r0, #0xc]
	mov     r1, #0x1
	bl      0x200316c
	str     r0, [sp, #0x4]
	lsl     r0, r4, #5
	add     r4, r5, r0
	add     r5, #0x8
	lsl     r0, r7, #5
	add     r5, r5, r0
	ldr     r0, [sp, #0x8]
	mov     r6, #0x0
	lsl     r0, r0, #24
	lsr     r7, r0, #24
.thumb
branch_21d33e6: @ 21d33e6 :thumb
	mov     r1, r6
	ldrh    r0, [r4, #0x8]
	add     r1, #0x20
	lsl     r2, r1, #1
	ldr     r1, [sp, #0x4]
	str     r0, [sp, #0x0]
	add     r1, r1, r2
	mov     r0, r5
	mov     r2, #0x1
	mov     r3, r7
	bl      0x200393c
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r6, #0x10
	blt     branch_21d33e6
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21d340c

.thumb
Function_21d340c: @ 21d340c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r0
	mov     r0, r1
	mov     r7, r1
	ldr     r0, [r0, #0x0]
	add     r7, #0x8
	str     r1, [sp, #0x4]
	cmp     r0, #0x3
	bhi     branch_21d3510
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d342c

Jumppoints_21d342c:
.hword branch_21d3434 - Jumppoints_21d342c - 2
.hword branch_21d34b4 - Jumppoints_21d342c - 2
.hword branch_21d34d8 - Jumppoints_21d342c - 2
.hword branch_21d3500 - Jumppoints_21d342c - 2
.thumb
branch_21d3434: @ 21d3434 :thumb
	mov     r4, r6
	mov     r5, #0x0
	add     r4, #0x6c
	b       branch_21d347c
@ 0x21d343c

.thumb
branch_21d343c: @ 21d343c :thumb
	mov     r0, #0x78
	mul     r0, r5
	add     r0, r4, r0
	mov     r1, #0x0
	mov     r2, #0x54
	blx     MI_CpuFill8
	lsr     r2, r5, #31
	lsl     r1, r5, #29
	sub     r1, r1, r2
	mov     r0, #0x1d
	ror     r1, r0
	add     r0, r2, r1
	bne     branch_21d345c
	mov     r1, #0x3
	b       branch_21d346a
@ 0x21d345c

.thumb
branch_21d345c: @ 21d345c :thumb
	cmp     r5, #0x1c
	bcc     branch_21d3464
	mov     r1, #0x1
	b       branch_21d346a
@ 0x21d3464

.thumb
branch_21d3464: @ 21d3464 :thumb
	ldr     r0, [pc, #0x10c] @ 0x21d3574, (=0x21d4cac)
	lsl     r1, r5, #1
	ldrh    r1, [r0, r1]
.thumb
branch_21d346a: @ 21d346a :thumb
	lsl     r1, r1, #4
	mov     r0, #0x78
	add     r1, r6, r1
	mul     r0, r5
	ldr     r1, [r1, #0x34]
	add     r0, r4, r0
	blx     0x20ae608
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_21d347c: @ 21d347c :thumb
	cmp     r5, #0x10
	blt     branch_21d343c
	mov     r0, #0x12
	mov     r1, #0x10
	lsl     r0, r0, #4
	str     r1, [r7, r0]
	mov     r0, r6
	mov     r1, r7
	bl      Function_21d3588
	mov     r0, r6
	bl      Function_21d36b0
	mov     r1, #0x0
	mov     r0, #0x3
	mov     r2, r1
	str     r0, [sp, #0x0]
	mov     r0, #0x18
	sub     r2, #0x10
	mov     r3, #0x3d
	bl      0x200aae0
	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x4]
	str     r1, [r0, #0x0]
	b       branch_21d3510
@ 0x21d34b4

.thumb
branch_21d34b4: @ 21d34b4 :thumb
	mov     r0, #0x3
	bl      0x200ac1c
	cmp     r0, #0x1
	bne     branch_21d3510
	ldr     r0, [pc, #0xb8] @ 0x21d3578, (=0x4000050)
	mov     r1, #0x0
	mov     r2, #0x3f
	mov     r3, #0x1f
	str     r1, [sp, #0x0]
	blx     G2x_SetBlendAlpha_
	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x4]
	str     r1, [r0, #0x0]
	b       branch_21d3510
@ 0x21d34d8

.thumb
branch_21d34d8: @ 21d34d8 :thumb
	ldr     r0, [pc, #0xa0] @ 0x21d357c, (=0x10fc)
	ldr     r1, [r6, r0]
	ldr     r0, [pc, #0xa0] @ 0x21d3580, (=0x1f2c)
	cmp     r1, r0
	bcc     branch_21d3510
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	mov     r0, #0x18
	mov     r1, r0
	sub     r1, #0x28
	mov     r2, #0x0
	mov     r3, #0x3d
	bl      0x200aae0
	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x4]
	str     r1, [r0, #0x0]
	b       branch_21d3510
@ 0x21d3500

.thumb
branch_21d3500: @ 21d3500 :thumb
	mov     r0, #0x3
	bl      0x200ac1c
	cmp     r0, #0x1
	bne     branch_21d3510
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d3510

.thumb
branch_21d3510: @ 21d3510 :thumb
	mov     r0, #0x12
	lsl     r0, r0, #4
	ldr     r3, [r7, r0]
	mov     r0, #0x1d
	lsr     r2, r3, #31
	lsl     r1, r3, #29
	sub     r1, r1, r2
	ror     r1, r0
	add     r0, r2, r1
	bne     branch_21d3528
	mov     r1, #0x3
	b       branch_21d3536
@ 0x21d3528

.thumb
branch_21d3528: @ 21d3528 :thumb
	cmp     r3, #0x1c
	bcc     branch_21d3530
	mov     r1, #0x1
	b       branch_21d3536
@ 0x21d3530

.thumb
branch_21d3530: @ 21d3530 :thumb
	ldr     r0, [pc, #0x40] @ 0x21d3574, (=0x21d4cac)
	lsl     r1, r3, #1
	ldrh    r1, [r0, r1]
.thumb
branch_21d3536: @ 21d3536 :thumb
	mov     r0, r6
	bl      Function_21d425c
	cmp     r0, #0x1
	bne     branch_21d354a
	mov     r0, #0x12
	lsl     r0, r0, #4
	ldr     r1, [r7, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r7, r0]
.thumb
branch_21d354a: @ 21d354a :thumb
	ldr     r1, [pc, #0x38] @ 0x21d3584, (=0x10e0)
	mov     r0, r6
	ldr     r1, [r6, r1]
	bl      Function_21d44cc
	mov     r0, r6
	mov     r1, r7
	bl      Function_21d35c8
	mov     r0, r6
	mov     r1, r7
	bl      Function_21d36d4
	mov     r0, r6
	mov     r1, r7
	bl      Function_21d3930
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d3572


.align 2


.word 0x21d4cac @ 0x21d3574
.word 0x4000050 @ 0x21d3578
.word 0x10fc @ 0x21d357c
.word 0x1f2c @ 0x21d3580
.word 0x10e0 @ 0x21d3584
.thumb
Function_21d3588: @ 21d3588 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x30] @ 0x21d35c0, (=0x10e0)
	add     r4, #0x8
	mov     r5, r1
	ldr     r0, [r4, r0]
	mov     r1, #0x2
	bl      0x200d6a4
	ldr     r0, [pc, #0x24] @ 0x21d35c0, (=0x10e0)
	mov     r1, #0x13
	mov     r2, #0x9
	mov     r3, #0x11
	ldr     r0, [r4, r0]
	lsl     r1, r1, #4
	mvn     r2, r2
	lsl     r3, r3, #16
	bl      0x200d500
	mov     r1, #0x13
	mov     r0, #0x49
	lsl     r1, r1, #16
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	ldr     r1, [pc, #0x8] @ 0x21d35c4, (=0xffff6000)
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r5, r0]
	pop     {r3-r5,pc}
@ 0x21d35c0

.word 0x10e0 @ 0x21d35c0
.word 0xffff6000 @ 0x21d35c4
.thumb
Function_21d35c8: @ 21d35c8 :thumb
	push    {r4,lr}
	ldr     r2, [pc, #0x14] @ 0x21d35e0, (=0x10fc)
	ldr     r3, [pc, #0x14] @ 0x21d35e4, (=0x1d10)
	ldr     r4, [r0, r2]
	cmp     r4, r3
	bcc     branch_21d35de
	sub     r2, #0x14
	ldr     r2, [r0, r2]
	mov     r3, #0x0
	bl      Function_21d35e8
.thumb
branch_21d35de: @ 21d35de :thumb
	pop     {r4,pc}
@ 0x21d35e0

.word 0x10fc @ 0x21d35e0
.word 0x1d10 @ 0x21d35e4
.thumb
Function_21d35e8: @ 21d35e8 :thumb
	push    {r3-r7,lr}
	mov     r0, #0x49
	lsl     r0, r0, #2
	add     r1, r1, r0
	lsl     r0, r3, #4
	str     r2, [sp, #0x0]
	add     r4, r1, r0
	mov     r2, #0x1c
	ldr     r1, [r1, r0]
	ldr     r5, [pc, #0xa8] @ 0x21d36a4, (=0x21d4c90)
	mul     r2, r3
	ldr     r0, [pc, #0xa8] @ 0x21d36a8, (=0xfffc0000)
	add     r5, r5, r2
	cmp     r1, r0
	blt     branch_21d36a0
	ldr     r2, [r4, #0x8]
	ldr     r1, [r5, #0xc]
	mov     r0, r4
	add     r2, r2, r1
	mov     r1, #0x5a
	lsl     r1, r1, #14
	add     r0, #0x8
	str     r2, [r4, #0x8]
	cmp     r2, r1
	blt     branch_21d3620
	ldr     r2, [r0, #0x0]
	sub     r1, r2, r1
	str     r1, [r0, #0x0]
.thumb
branch_21d3620: @ 21d3620 :thumb
	ldr     r0, [r4, #0x8]
	ldr     r6, [r5, #0x10]
	bl      0x201d2b8
	ldr     r2, [r4, #0x0]
	ldr     r1, [r5, #0x4]
	asr     r3, r6, #31
	add     r1, r2, r1
	str     r1, [r4, #0x0]
	ldr     r2, [r4, #0x4]
	ldr     r1, [r5, #0x8]
	add     r1, r2, r1
	str     r1, [r4, #0x4]
	asr     r1, r0, #31
	mov     r2, r6
	blx     _ll_mul
	mov     r2, #0x2
	mov     r7, r0
	mov     r6, r1
	lsl     r2, r2, #10
	add     r7, r7, r2
	ldr     r2, [pc, #0x5c] @ 0x21d36ac, (=0x0)
	ldr     r3, [r4, #0x4]
	adc     r6, r2
	lsl     r2, r6, #20
	lsr     r6, r7, #12
	orr     r6, r2
	add     r2, r3, r6
	mov     r3, #0x11
	ldr     r0, [sp, #0x0]
	ldr     r1, [r4, #0x0]
	lsl     r3, r3, #16
	bl      0x200d650
	mov     r0, #0xe
	ldsb    r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_21d3678
	ldr     r0, [sp, #0x0]
	ldr     r1, [r5, #0x14]
	bl      0x200d7c0
	b       branch_21d3682
@ 0x21d3678

.thumb
branch_21d3678: @ 21d3678 :thumb
	ldr     r1, [r5, #0x14]
	ldr     r0, [sp, #0x0]
	neg     r1, r1
	bl      0x200d7c0
.thumb
branch_21d3682: @ 21d3682 :thumb
	mov     r0, #0xc
	ldsh    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, #0xc]
	ldsh    r1, [r4, r0]
	ldrh    r0, [r5, #0x18]
	cmp     r1, r0
	blt     branch_21d36a0
	mov     r0, #0x0
	strh    r0, [r4, #0xc]
	mov     r0, #0xe
	ldsb    r1, [r4, r0]
	mov     r0, #0x1
	eor     r0, r1
	strb    r0, [r4, #0xe]
.thumb
branch_21d36a0: @ 21d36a0 :thumb
	pop     {r3-r7,pc}
@ 0x21d36a2


.align 2


.word 0x21d4c90 @ 0x21d36a4
.word 0xfffc0000 @ 0x21d36a8
.word 0x0 @ 0x21d36ac
.thumb
Function_21d36b0: @ 21d36b0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x14] @ 0x21d36cc, (=0x10ec)
	mov     r1, #0x1
	ldr     r0, [r4, r0]
	bl      0x200d810
	ldr     r0, [pc, #0x10] @ 0x21d36d0, (=0x10f0)
	mov     r1, #0x1
	ldr     r0, [r4, r0]
	bl      0x200d810
	pop     {r4,pc}
@ 0x21d36ca


.align 2


.word 0x10ec @ 0x21d36cc
.word 0x10f0 @ 0x21d36d0
.thumb
Function_21d36d4: @ 21d36d4 :thumb
	push    {r3-r5,lr}
	ldr     r2, [pc, #0x44] @ 0x21d371c, (=0x10fc)
	mov     r5, r0
	ldr     r3, [r5, r2]
	ldr     r2, [pc, #0x40] @ 0x21d3720, (=0x1c20)
	mov     r4, r1
	cmp     r3, r2
	bne     branch_21d36ea
	mov     r2, #0x0
	bl      Function_21d372c
.thumb
branch_21d36ea: @ 21d36ea :thumb
	ldr     r0, [pc, #0x30] @ 0x21d371c, (=0x10fc)
	ldr     r1, [r5, r0]
	ldr     r0, [pc, #0x34] @ 0x21d3724, (=0x1cd4)
	cmp     r1, r0
	bne     branch_21d36fe
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x1
	bl      Function_21d372c
.thumb
branch_21d36fe: @ 21d36fe :thumb
	ldr     r0, [pc, #0x1c] @ 0x21d371c, (=0x10fc)
	ldr     r1, [r5, r0]
	ldr     r0, [pc, #0x24] @ 0x21d3728, (=0x1d10)
	cmp     r1, r0
	bne     branch_21d3712
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x2
	bl      Function_21d372c
.thumb
branch_21d3712: @ 21d3712 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_21d37e0
	pop     {r3-r5,pc}
@ 0x21d371c

.word 0x10fc @ 0x21d371c
.word 0x1c20 @ 0x21d3720
.word 0x1cd4 @ 0x21d3724
.word 0x1d10 @ 0x21d3728
.thumb
Function_21d372c: @ 21d372c :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	mov     r0, #0x47
	mov     r4, r1
	lsl     r0, r0, #2
	ldrb    r0, [r4, r0]
	mov     r6, r2
	cmp     r0, #0x0
	beq     branch_21d3744
	bl      ErrorHandling
.thumb
branch_21d3744: @ 21d3744 :thumb
	cmp     r6, #0x3
	bcc     branch_21d374c
	bl      ErrorHandling
.thumb
branch_21d374c: @ 21d374c :thumb
	mov     r0, #0x47
	mov     r1, #0x1
	lsl     r0, r0, #2
	strb    r1, [r4, r0]
	mov     r2, #0x0
	add     r1, r0, #0x1
	strb    r2, [r4, r1]
	add     r1, r0, #0x2
	strb    r2, [r4, r1]
	mov     r1, #0x1f
	.hword  0x1cc0 @ add r0, r0, #0x3
	strb    r1, [r4, r0]
	ldr     r0, [pc, #0x58] @ 0x21d37c0, (=0x10f0)
	ldr     r1, [pc, #0x5c] @ 0x21d37c4, (=0x21d4c84)
	lsl     r2, r6, #2
	ldr     r3, [pc, #0x5c] @ 0x21d37c8, (=0x21d4c86)
	ldsh    r1, [r1, r2]
	ldsh    r2, [r3, r2]
	mov     r3, #0x11
	ldr     r0, [r5, r0]
	lsl     r3, r3, #16
	bl      0x200d500
	ldr     r0, [pc, #0x44] @ 0x21d37c0, (=0x10f0)
	mov     r1, #0x1
	ldr     r0, [r5, r0]
	bl      0x200d3f4
	ldr     r0, [pc, #0x44] @ 0x21d37cc, (=0x10ec)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	bl      0x200d3f4
	ldr     r0, [pc, #0x40] @ 0x21d37d0, (=0x11f)
	mov     r2, #0x3f
	ldsb    r0, [r4, r0]
	mov     r3, r2
	add     r3, #0xdf
	str     r0, [sp, #0x0]
	ldsb    r3, [r4, r3]
	ldr     r0, [pc, #0x34] @ 0x21d37d4, (=0x4001050)
	mov     r1, #0x0
	blx     G2x_SetBlendAlpha_
	ldr     r0, [pc, #0x30] @ 0x21d37d8, (=0x11e)
	mov     r2, #0x3f
	ldsb    r0, [r4, r0]
	mov     r3, r2
	add     r3, #0xe0
	str     r0, [sp, #0x0]
	ldsb    r3, [r4, r3]
	ldr     r0, [pc, #0x28] @ 0x21d37dc, (=0x4000050)
	mov     r1, #0x0
	blx     G2x_SetBlendAlpha_
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x21d37be


.align 2


.word 0x10f0 @ 0x21d37c0
.word 0x21d4c84 @ 0x21d37c4
.word 0x21d4c86 @ 0x21d37c8
.word 0x10ec @ 0x21d37cc
.word 0x11f @ 0x21d37d0
.word 0x4001050 @ 0x21d37d4
.word 0x11e @ 0x21d37d8
.word 0x4000050 @ 0x21d37dc
.thumb
Function_21d37e0: @ 21d37e0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x47
	mov     r4, r1
	lsl     r0, r0, #2
	ldrb    r1, [r4, r0]
	cmp     r1, #0x0
	bne     branch_21d37f2
	b       branch_21d390c
@ 0x21d37f2

.thumb
branch_21d37f2: @ 21d37f2 :thumb
	add     r1, r0, #0x1
	ldrb    r1, [r4, r1]
	cmp     r1, #0x0
	bne     branch_21d3892
	add     r1, r0, #0x2
	ldsb    r1, [r4, r1]
	add     r2, r1, #0x3
	add     r1, r0, #0x2
	strb    r2, [r4, r1]
	add     r1, r0, #0x3
	ldsb    r1, [r4, r1]
	.hword  0x1eca @ sub r2, r1, #0x3
	add     r1, r0, #0x3
	strb    r2, [r4, r1]
	.hword  0x1c80 @ add r0, r0, #0x2
	ldsb    r0, [r4, r0]
	cmp     r0, #0x1f
	ble     branch_21d381e
	mov     r1, #0x1f
	mov     r0, r1
	add     r0, #0xff
	strb    r1, [r4, r0]
.thumb
branch_21d381e: @ 21d381e :thumb
	ldr     r0, [pc, #0xf0] @ 0x21d3910, (=0x11f)
	ldsb    r1, [r4, r0]
	cmp     r1, #0x0
	bge     branch_21d382a
	mov     r1, #0x0
	strb    r1, [r4, r0]
.thumb
branch_21d382a: @ 21d382a :thumb
	ldr     r0, [pc, #0xe8] @ 0x21d3914, (=0x11e)
	mov     r2, #0xd
	ldsb    r1, [r4, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	ldsb    r0, [r4, r0]
	lsl     r2, r2, #12
	lsl     r0, r0, #8
	orr     r1, r0
	ldr     r0, [pc, #0xdc] @ 0x21d3918, (=0x4001052)
	strh    r1, [r0, #0x0]
	ldr     r0, [pc, #0xdc] @ 0x21d391c, (=0x10f0)
	ldr     r1, [pc, #0xdc] @ 0x21d3920, (=0xffffa000)
	ldr     r0, [r5, r0]
	bl      0x200d5e8
	ldr     r0, [pc, #0xd0] @ 0x21d391c, (=0x10f0)
	add     r1, sp, #0x0
	mov     r3, #0x11
	ldr     r0, [r5, r0]
	add     r1, #0x2
	add     r2, sp, #0x0
	lsl     r3, r3, #16
	bl      0x200d5a0
	add     r0, sp, #0x0
	mov     r1, #0x0
	ldsh    r0, [r0, r1]
	cmp     r0, #0xe0
	ble     branch_21d390c
	ldr     r0, [pc, #0xb4] @ 0x21d391c, (=0x10f0)
	ldr     r0, [r5, r0]
	bl      0x200d3f4
	ldr     r0, [pc, #0xb4] @ 0x21d3924, (=0x10ec)
	mov     r1, #0x1
	ldr     r0, [r5, r0]
	bl      0x200d3f4
	ldr     r0, [pc, #0xac] @ 0x21d3924, (=0x10ec)
	mov     r3, #0x11
	add     r1, sp, #0x0
	mov     r2, #0x2
	ldsh    r1, [r1, r2]
	ldr     r0, [r5, r0]
	sub     r2, #0x22
	lsl     r3, r3, #16
	bl      0x200d500
	ldr     r0, [pc, #0x9c] @ 0x21d3928, (=0x11d)
	mov     r1, #0x1
	strb    r1, [r4, r0]
	pop     {r3-r5,pc}
@ 0x21d3892

.thumb
branch_21d3892: @ 21d3892 :thumb
	add     r1, r0, #0x3
	ldsb    r1, [r4, r1]
	add     r2, r1, #0x3
	add     r1, r0, #0x3
	strb    r2, [r4, r1]
	add     r1, r0, #0x2
	ldsb    r1, [r4, r1]
	.hword  0x1eca @ sub r2, r1, #0x3
	add     r1, r0, #0x2
	strb    r2, [r4, r1]
	add     r1, r0, #0x3
	ldsb    r1, [r4, r1]
	cmp     r1, #0x1f
	ble     branch_21d38b4
	mov     r1, #0x1f
	.hword  0x1cc0 @ add r0, r0, #0x3
	strb    r1, [r4, r0]
.thumb
branch_21d38b4: @ 21d38b4 :thumb
	ldr     r0, [pc, #0x5c] @ 0x21d3914, (=0x11e)
	ldsb    r1, [r4, r0]
	cmp     r1, #0x0
	bge     branch_21d38c0
	mov     r1, #0x0
	strb    r1, [r4, r0]
.thumb
branch_21d38c0: @ 21d38c0 :thumb
	ldr     r0, [pc, #0x50] @ 0x21d3914, (=0x11e)
	mov     r2, #0xd
	ldsb    r1, [r4, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	ldsb    r0, [r4, r0]
	lsl     r2, r2, #12
	lsl     r0, r0, #8
	orr     r1, r0
	ldr     r0, [pc, #0x58] @ 0x21d392c, (=0x4000052)
	strh    r1, [r0, #0x0]
	ldr     r0, [pc, #0x4c] @ 0x21d3924, (=0x10ec)
	ldr     r1, [pc, #0x48] @ 0x21d3920, (=0xffffa000)
	ldr     r0, [r5, r0]
	bl      0x200d5e8
	ldr     r0, [pc, #0x44] @ 0x21d3924, (=0x10ec)
	add     r1, sp, #0x0
	mov     r3, #0x11
	ldr     r0, [r5, r0]
	add     r1, #0x2
	add     r2, sp, #0x0
	lsl     r3, r3, #16
	bl      0x200d5a0
	add     r0, sp, #0x0
	mov     r1, #0x0
	ldsh    r0, [r0, r1]
	cmp     r0, #0xe0
	ble     branch_21d390c
	ldr     r0, [pc, #0x28] @ 0x21d3924, (=0x10ec)
	ldr     r0, [r5, r0]
	bl      0x200d3f4
	ldr     r0, [pc, #0x24] @ 0x21d3928, (=0x11d)
	mov     r1, #0x0
	strb    r1, [r4, r0]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r1, [r4, r0]
.thumb
branch_21d390c: @ 21d390c :thumb
	pop     {r3-r5,pc}
@ 0x21d390e


.align 2


.word 0x11f @ 0x21d3910
.word 0x11e @ 0x21d3914
.word 0x4001052 @ 0x21d3918
.word 0x10f0 @ 0x21d391c
.word 0xffffa000 @ 0x21d3920
.word 0x10ec @ 0x21d3924
.word 0x11d @ 0x21d3928
.word 0x4000052 @ 0x21d392c
.thumb
Function_21d3930: @ 21d3930 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r4, r0
	mov     r0, #0x45
	lsl     r0, r0, #2
	str     r1, [sp, #0x4]
	ldr     r1, [r1, r0]
	cmp     r1, #0x0
	beq     branch_21d3948
	cmp     r1, #0x1
	beq     branch_21d3970
	b       branch_21d3a26
@ 0x21d3948

.thumb
branch_21d3948: @ 21d3948 :thumb
	ldr     r2, [pc, #0xec] @ 0x21d3a38, (=0x10fc)
	ldr     r3, [r4, r2]
	ldr     r2, [pc, #0xec] @ 0x21d3a3c, (=0x1dc4)
	cmp     r3, r2
	bcc     branch_21d3a34
	mov     r3, r0
	ldr     r2, [sp, #0x4]
	sub     r3, #0xc
	ldr     r2, [r2, r3]
	cmp     r2, #0x8
	bge     branch_21d3a34
	ldr     r2, [sp, #0x4]
	add     r3, r0, #0x4
	ldr     r2, [r2, r3]
	cmp     r2, #0x0
	beq     branch_21d3a26
	add     r2, r1, #0x1
	ldr     r1, [sp, #0x4]
	str     r2, [r1, r0]
	b       branch_21d3a26
@ 0x21d3970

.thumb
branch_21d3970: @ 21d3970 :thumb
	mov     r2, r0
	ldr     r1, [sp, #0x4]
	sub     r2, #0xc
	ldr     r5, [r1, r2]
	mov     r2, r0
	sub     r2, #0x8
	ldr     r1, [r1, r2]
	mov     r2, #0x1
	lsl     r2, r2, #10
	add     r6, r1, r2
	mov     r3, r0
	ldr     r1, [sp, #0x4]
	sub     r3, #0x8
	str     r6, [r1, r3]
	mov     r3, r0
	sub     r3, #0x8
	ldr     r3, [r1, r3]
	lsl     r1, r2, #2
	cmp     r3, r1
	blt     branch_21d39ba
	mov     r1, #0x10
	str     r1, [sp, #0x10]
	ldr     r3, [sp, #0x10]
	ldr     r2, [sp, #0x4]
	mov     r1, #0x0
	add     r3, #0xfc
	str     r1, [r2, r3]
	ldr     r3, [sp, #0x10]
	add     r3, #0xf8
	ldr     r2, [r2, r3]
	ldr     r3, [sp, #0x10]
	add     r6, r2, #0x1
	ldr     r2, [sp, #0x4]
	add     r3, #0xf8
	str     r6, [r2, r3]
	str     r1, [r2, r0]
	b       branch_21d39be
@ 0x21d39ba

.thumb
branch_21d39ba: @ 21d39ba :thumb
	asr     r0, r3, #8
	str     r0, [sp, #0x10]
.thumb
branch_21d39be: @ 21d39be :thumb
	add     r6, r5, #0x1
	cmp     r6, #0x8
	blt     branch_21d39c6
	mov     r6, #0x7
.thumb
branch_21d39c6: @ 21d39c6 :thumb
	ldr     r0, [r4, #0xc]
	mov     r1, #0x0
	bl      0x200316c
	str     r0, [sp, #0xc]
	ldr     r0, [r4, #0xc]
	mov     r1, #0x1
	bl      0x200316c
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x4]
	lsl     r1, r6, #5
	add     r4, r0, r1
	mov     r1, r0
	add     r1, #0x8
	lsl     r0, r5, #5
	add     r5, r1, r0
	ldr     r0, [sp, #0x10]
	mov     r7, #0x0
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x14]
.thumb
branch_21d39f2: @ 21d39f2 :thumb
	mov     r0, r7
	add     r0, #0x10
	lsl     r6, r0, #1
	ldrh    r0, [r4, #0x8]
	ldr     r1, [sp, #0xc]
	ldr     r3, [sp, #0x14]
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r1, r1, r6
	mov     r2, #0x1
	bl      0x200393c
	ldrh    r0, [r4, #0x8]
	ldr     r1, [sp, #0x8]
	ldr     r3, [sp, #0x14]
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r1, r1, r6
	mov     r2, #0x1
	bl      0x200393c
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r7, #0x10
	blt     branch_21d39f2
.thumb
branch_21d3a26: @ 21d3a26 :thumb
	mov     r1, #0x46
	ldr     r0, [sp, #0x4]
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	add     r2, r0, #0x1
	ldr     r0, [sp, #0x4]
	str     r2, [r0, r1]
.thumb
branch_21d3a34: @ 21d3a34 :thumb
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21d3a38

.word 0x10fc @ 0x21d3a38
.word 0x1dc4 @ 0x21d3a3c
.thumb
Function_21d3a40: @ 21d3a40 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r4, r1
	ldr     r1, [r4, #0x0]
	mov     r6, r4
	mov     r5, r0
	add     r6, #0x8
	cmp     r1, #0x4
	bhi     branch_21d3b14
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d3a5e

Jumppoints_21d3a5e:
.hword branch_21d3a68 - Jumppoints_21d3a5e - 2
.hword branch_21d3a82 - Jumppoints_21d3a5e - 2
.hword branch_21d3aaa - Jumppoints_21d3a5e - 2
.hword branch_21d3ac8 - Jumppoints_21d3a5e - 2
.hword branch_21d3b04 - Jumppoints_21d3a5e - 2
.thumb
branch_21d3a68: @ 21d3a68 :thumb
	mov     r1, #0x0
	mov     r0, #0x3
	mov     r2, r1
	str     r0, [sp, #0x0]
	mov     r0, #0x18
	sub     r2, #0x10
	mov     r3, #0x3d
	bl      0x200aae0
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d3b14
@ 0x21d3a82

.thumb
branch_21d3a82: @ 21d3a82 :thumb
	mov     r0, #0x19
	ldr     r1, [r6, #0x0]
	lsl     r0, r0, #4
	cmp     r1, r0
	bls     branch_21d3b14
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	mov     r1, r0
	sub     r1, #0x30
	mov     r2, #0x0
	mov     r3, #0x3d
	bl      0x200aae0
	mov     r0, #0x0
	str     r0, [r6, #0x0]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d3b14
@ 0x21d3aaa

.thumb
branch_21d3aaa: @ 21d3aaa :thumb
	mov     r0, #0x3
	bl      0x200ac1c
	cmp     r0, #0x1
	bne     branch_21d3b14
	ldr     r0, [pc, #0x68] @ 0x21d3b20, (=0x1105)
	ldrb    r0, [r5, r0]
	cmp     r0, #0x7
	bcs     branch_21d3ac2
	mov     r0, #0x3
	str     r0, [r4, #0x0]
	b       branch_21d3b14
@ 0x21d3ac2

.thumb
branch_21d3ac2: @ 21d3ac2 :thumb
	mov     r0, #0x4
	str     r0, [r4, #0x0]
	b       branch_21d3b14
@ 0x21d3ac8

.thumb
branch_21d3ac8: @ 21d3ac8 :thumb
	mov     r1, #0x4
	ldsh    r2, [r4, r1]
	.hword  0x1c52 @ add r2, r2, #0x1
	strh    r2, [r4, #0x4]
	ldsh    r1, [r4, r1]
	cmp     r1, #0x1e
	ble     branch_21d3b14
	mov     r3, #0x0
	ldr     r1, [pc, #0x44] @ 0x21d3b20, (=0x1105)
	strh    r3, [r4, #0x4]
	ldrb    r1, [r5, r1]
	mov     r2, #0x3
	bl      Function_21d439c
	ldr     r0, [pc, #0x38] @ 0x21d3b20, (=0x1105)
	mov     r3, #0x3d
	ldrb    r1, [r5, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r5, r0]
	mov     r1, #0x0
	mov     r0, #0x3
	mov     r2, r1
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	sub     r2, #0x10
	bl      0x200aae0
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d3b14
@ 0x21d3b04

.thumb
branch_21d3b04: @ 21d3b04 :thumb
	ldr     r0, [pc, #0x1c] @ 0x21d3b24, (=0x10fc)
	ldr     r1, [r5, r0]
	ldr     r0, [pc, #0x1c] @ 0x21d3b28, (=0x12cf)
	cmp     r1, r0
	bcc     branch_21d3b14
	add     sp, #0x4
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x21d3b14

.thumb
branch_21d3b14: @ 21d3b14 :thumb
	ldr     r0, [r6, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r6, #0x0]
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x21d3b20

.word 0x1105 @ 0x21d3b20
.word 0x10fc @ 0x21d3b24
.word 0x12cf @ 0x21d3b28
.thumb
Function_21d3b2c: @ 21d3b2c :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r4, r1
	ldr     r1, [r4, #0x0]
	mov     r6, r4
	mov     r5, r0
	add     r6, #0x8
	cmp     r1, #0x4
	bhi     branch_21d3c00
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d3b4a

Jumppoints_21d3b4a:
.hword branch_21d3b54 - Jumppoints_21d3b4a - 2
.hword branch_21d3b6e - Jumppoints_21d3b4a - 2
.hword branch_21d3b96 - Jumppoints_21d3b4a - 2
.hword branch_21d3bb4 - Jumppoints_21d3b4a - 2
.hword branch_21d3bf0 - Jumppoints_21d3b4a - 2
.thumb
branch_21d3b54: @ 21d3b54 :thumb
	mov     r1, #0x0
	mov     r0, #0x3
	mov     r2, r1
	str     r0, [sp, #0x0]
	mov     r0, #0x18
	sub     r2, #0x10
	mov     r3, #0x3d
	bl      0x200aae0
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d3c00
@ 0x21d3b6e

.thumb
branch_21d3b6e: @ 21d3b6e :thumb
	mov     r0, #0x4b
	ldr     r1, [r6, #0x0]
	lsl     r0, r0, #2
	cmp     r1, r0
	bls     branch_21d3c00
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	mov     r1, r0
	sub     r1, #0x30
	mov     r2, #0x0
	mov     r3, #0x3d
	bl      0x200aae0
	mov     r0, #0x0
	str     r0, [r6, #0x0]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d3c00
@ 0x21d3b96

.thumb
branch_21d3b96: @ 21d3b96 :thumb
	mov     r0, #0x3
	bl      0x200ac1c
	cmp     r0, #0x1
	bne     branch_21d3c00
	ldr     r0, [pc, #0x68] @ 0x21d3c0c, (=0x1105)
	ldrb    r0, [r5, r0]
	cmp     r0, #0xa
	bcs     branch_21d3bae
	mov     r0, #0x3
	str     r0, [r4, #0x0]
	b       branch_21d3c00
@ 0x21d3bae

.thumb
branch_21d3bae: @ 21d3bae :thumb
	mov     r0, #0x4
	str     r0, [r4, #0x0]
	b       branch_21d3c00
@ 0x21d3bb4

.thumb
branch_21d3bb4: @ 21d3bb4 :thumb
	mov     r1, #0x4
	ldsh    r2, [r4, r1]
	.hword  0x1c52 @ add r2, r2, #0x1
	strh    r2, [r4, #0x4]
	ldsh    r1, [r4, r1]
	cmp     r1, #0x1e
	ble     branch_21d3c00
	mov     r3, #0x0
	ldr     r1, [pc, #0x44] @ 0x21d3c0c, (=0x1105)
	strh    r3, [r4, #0x4]
	ldrb    r1, [r5, r1]
	mov     r2, #0x3
	bl      Function_21d439c
	ldr     r0, [pc, #0x38] @ 0x21d3c0c, (=0x1105)
	mov     r3, #0x3d
	ldrb    r1, [r5, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r5, r0]
	mov     r1, #0x0
	mov     r0, #0x3
	mov     r2, r1
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	sub     r2, #0x10
	bl      0x200aae0
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d3c00
@ 0x21d3bf0

.thumb
branch_21d3bf0: @ 21d3bf0 :thumb
	ldr     r0, [pc, #0x1c] @ 0x21d3c10, (=0x10fc)
	ldr     r1, [r5, r0]
	ldr     r0, [pc, #0x1c] @ 0x21d3c14, (=0x12cf)
	cmp     r1, r0
	bcc     branch_21d3c00
	add     sp, #0x4
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x21d3c00

.thumb
branch_21d3c00: @ 21d3c00 :thumb
	ldr     r0, [r6, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r6, #0x0]
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x21d3c0c

.word 0x1105 @ 0x21d3c0c
.word 0x10fc @ 0x21d3c10
.word 0x12cf @ 0x21d3c14
.thumb
Function_21d3c18: @ 21d3c18 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r1
	ldr     r1, [r5, #0x0]
	mov     r4, r5
	mov     r6, r0
	add     r4, #0x8
	cmp     r1, #0x4
	bhi     branch_21d3cec
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d3c36

Jumppoints_21d3c36:
.hword branch_21d3c40 - Jumppoints_21d3c36 - 2
.hword branch_21d3c5a - Jumppoints_21d3c36 - 2
.hword branch_21d3c70 - Jumppoints_21d3c36 - 2
.hword branch_21d3ccc - Jumppoints_21d3c36 - 2
.hword branch_21d3cdc - Jumppoints_21d3c36 - 2
.thumb
branch_21d3c40: @ 21d3c40 :thumb
	mov     r1, #0x0
	mov     r0, #0x3
	mov     r2, r1
	str     r0, [sp, #0x0]
	mov     r0, #0x18
	sub     r2, #0x10
	mov     r3, #0x3d
	bl      0x200aae0
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_21d3cec
@ 0x21d3c5a

.thumb
branch_21d3c5a: @ 21d3c5a :thumb
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	cmp     r0, #0x1b
	bls     branch_21d3cec
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_21d3cec
@ 0x21d3c70

.thumb
branch_21d3c70: @ 21d3c70 :thumb
	ldrb    r1, [r4, #0x4]
	cmp     r1, #0x3
	bcc     branch_21d3c8e
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	mov     r1, r0
	sub     r1, #0x30
	mov     r2, #0x0
	mov     r3, #0x3d
	bl      0x200aae0
	mov     r0, #0x4
	str     r0, [r5, #0x0]
	b       branch_21d3cec
@ 0x21d3c8e

.thumb
branch_21d3c8e: @ 21d3c8e :thumb
	mov     r3, #0x1
	tst     r1, r3
	ldr     r1, [pc, #0x60] @ 0x21d3cf4, (=0x1105)
	beq     branch_21d3ca8
	ldrb    r1, [r6, r1]
	mov     r2, #0x2
	bl      Function_21d439c
	mov     r0, r4
	mov     r1, #0x8
	bl      Function_21d3cf8
	b       branch_21d3cb8
@ 0x21d3ca8

.thumb
branch_21d3ca8: @ 21d3ca8 :thumb
	ldrb    r1, [r6, r1]
	mov     r2, #0x3
	bl      Function_21d439c
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_21d3cf8
.thumb
branch_21d3cb8: @ 21d3cb8 :thumb
	ldr     r0, [pc, #0x38] @ 0x21d3cf4, (=0x1105)
	ldrb    r1, [r6, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r6, r0]
	ldrb    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	b       branch_21d3cec
@ 0x21d3ccc

.thumb
branch_21d3ccc: @ 21d3ccc :thumb
	mov     r0, r4
	bl      Function_21d3d50
	cmp     r0, #0x1
	bne     branch_21d3cec
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_21d3cec
@ 0x21d3cdc

.thumb
branch_21d3cdc: @ 21d3cdc :thumb
	mov     r0, #0x3
	bl      0x200ac1c
	cmp     r0, #0x1
	bne     branch_21d3cec
	add     sp, #0x4
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x21d3cec

.thumb
branch_21d3cec: @ 21d3cec :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x21d3cf2


.align 2


.word 0x1105 @ 0x21d3cf4
.thumb
Function_21d3cf8: @ 21d3cf8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r3, r0
	str     r1, [r3, #0x8]
	mov     r0, #0x10
	strb    r0, [r3, #0x5]
	mov     r0, #0x0
	strb    r0, [r3, #0x6]
	cmp     r1, #0x4
	bne     branch_21d3d2c
	mov     r0, #0x6
	ldsb    r0, [r3, r0]
	mov     r4, #0x5
	mov     r1, #0x4
	str     r0, [sp, #0x0]
	ldsb    r3, [r3, r4]
	ldr     r0, [pc, #0x30] @ 0x21d3d4c, (=0x4000050)
	mov     r2, #0x28
	blx     G2x_SetBlendAlpha_
	mov     r0, #0x3
	mov     r1, #0x1
	bl      0x2019120
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d3d2c

.thumb
branch_21d3d2c: @ 21d3d2c :thumb
	mov     r0, #0x6
	ldsb    r0, [r3, r0]
	mov     r4, #0x5
	mov     r1, #0x8
	str     r0, [sp, #0x0]
	ldsb    r3, [r3, r4]
	ldr     r0, [pc, #0x10] @ 0x21d3d4c, (=0x4000050)
	mov     r2, #0x24
	blx     G2x_SetBlendAlpha_
	mov     r0, #0x2
	mov     r1, #0x1
	bl      0x2019120
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d3d4c

.word 0x4000050 @ 0x21d3d4c
.thumb
Function_21d3d50: @ 21d3d50 :thumb
	push    {r4,lr}
	mov     r1, #0x5
	ldsb    r2, [r0, r1]
	.hword  0x1e52 @ sub r2, r2, #0x1
	strb    r2, [r0, #0x5]
	ldsb    r1, [r0, r1]
	cmp     r1, #0x10
	bge     branch_21d3d68
	mov     r1, #0x6
	ldsb    r1, [r0, r1]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r0, #0x6]
.thumb
branch_21d3d68: @ 21d3d68 :thumb
	mov     r1, #0x5
	ldsb    r1, [r0, r1]
	cmp     r1, #0x0
	bge     branch_21d3d74
	mov     r1, #0x0
	strb    r1, [r0, #0x5]
.thumb
branch_21d3d74: @ 21d3d74 :thumb
	mov     r1, #0x6
	ldsb    r1, [r0, r1]
	cmp     r1, #0x10
	ble     branch_21d3d80
	mov     r1, #0x10
	strb    r1, [r0, #0x6]
.thumb
branch_21d3d80: @ 21d3d80 :thumb
	mov     r1, #0x6
	mov     r2, #0x5
	ldsb    r3, [r0, r1]
	ldsb    r4, [r0, r2]
	lsl     r3, r3, #8
	orr     r4, r3
	ldr     r3, [pc, #0x4c] @ 0x21d3ddc, (=0x4000052)
	strh    r4, [r3, #0x0]
	ldsb    r2, [r0, r2]
	cmp     r2, #0x0
	bne     branch_21d3dd8
	ldsb    r1, [r0, r1]
	cmp     r1, #0x10
	bne     branch_21d3dd8
	ldr     r0, [r0, #0x8]
	cmp     r0, #0x4
	bne     branch_21d3dbc
	mov     r0, #0x2
	mov     r1, #0x0
	bl      0x2019120
	mov     r0, #0x2
	mov     r1, #0x3
	bl      Function_2019060
	mov     r0, #0x3
	mov     r1, #0x2
	bl      Function_2019060
	b       branch_21d3dd4
@ 0x21d3dbc

.thumb
branch_21d3dbc: @ 21d3dbc :thumb
	mov     r0, #0x3
	mov     r1, #0x0
	bl      0x2019120
	mov     r0, #0x2
	mov     r1, r0
	bl      Function_2019060
	mov     r0, #0x3
	mov     r1, r0
	bl      Function_2019060
.thumb
branch_21d3dd4: @ 21d3dd4 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d3dd8

.thumb
branch_21d3dd8: @ 21d3dd8 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d3ddc

.word 0x4000052 @ 0x21d3ddc
.thumb
Function_21d3de0: @ 21d3de0 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_21d3df8
	cmp     r0, #0x1
	beq     branch_21d3e16
	cmp     r0, #0x2
	beq     branch_21d3e58
	b       branch_21d3e66
@ 0x21d3df8

.thumb
branch_21d3df8: @ 21d3df8 :thumb
	mov     r0, #0x1e
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x4b
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	mov     r3, r0
	bl      0x200f174
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d3e66
@ 0x21d3e16

.thumb
branch_21d3e16: @ 21d3e16 :thumb
	bl      0x200f2ac
	cmp     r0, #0x1
	bne     branch_21d3e66
	ldr     r0, [pc, #0x4c] @ 0x21d3e6c, (=0x10fc)
	ldr     r1, [r5, r0]
	ldr     r0, [pc, #0x4c] @ 0x21d3e70, (=0x2760)
	cmp     r1, r0
	bhi     branch_21d3e38
	ldr     r0, [pc, #0x48] @ 0x21d3e74, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	tst     r0, r1
	bne     branch_21d3e38
	mov     r0, #0x8
	tst     r0, r1
	beq     branch_21d3e66
.thumb
branch_21d3e38: @ 21d3e38 :thumb
	mov     r0, #0x2d
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x4b
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      0x200f174
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d3e66
@ 0x21d3e58

.thumb
branch_21d3e58: @ 21d3e58 :thumb
	bl      0x200f2ac
	cmp     r0, #0x1
	bne     branch_21d3e66
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4,r5,pc}
@ 0x21d3e66

.thumb
branch_21d3e66: @ 21d3e66 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d3e6c

.word 0x10fc @ 0x21d3e6c
.word 0x2760 @ 0x21d3e70
.word 0x21bf67c @ 0x21d3e74
.thumb
Function_21d3e78: @ 21d3e78 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r6, r0
	str     r1, [sp, #0x14]
	mov     r0, #0x4b
	mov     r1, #0x38
	mov     r5, r2
	mov     r7, r3
	bl      malloc_maybe
	mov     r4, r0
	beq     branch_21d3f2c
	ldr     r0, [sp, #0x14]
	str     r6, [r4, #0x20]
	str     r0, [r4, #0x0]
	add     r0, #0xc0
	str     r0, [r4, #0x4]
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x30]
	str     r5, [r4, #0x8]
	str     r0, [r4, #0x2c]
	mov     r0, #0x0
	str     r0, [r4, #0xc]
	str     r0, [r4, #0x10]
	str     r0, [r4, #0x14]
	str     r0, [r4, #0x18]
	str     r0, [r4, #0x1c]
	mov     r0, #0x1
	lsl     r0, r0, #8
	mov     r1, #0x4b
	bl      Function_2023790
	str     r0, [r4, #0x30]
	mov     r0, #0x4b
	mov     r1, #0x1
	bl      0x201a778
	str     r0, [r4, #0x24]
	mov     r3, #0x0
	lsl     r2, r5, #24
	str     r3, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	lsl     r0, r7, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0xc]
	str     r3, [sp, #0x10]
	ldr     r1, [r4, #0x24]
	mov     r0, r6
	lsr     r2, r2, #24
	bl      0x201a7e8
	ldr     r0, [r4, #0x24]
	mov     r1, #0x0
	bl      Function_201ada4
	ldr     r0, [r4, #0x24]
	bl      0x201a9f4
	ldr     r0, [r4, #0x24]
	bl      0x201a954
	mov     r0, #0x4b
	mov     r1, #0x1
	bl      0x201a778
	str     r0, [r4, #0x28]
	mov     r3, #0x0
	lsl     r2, r5, #24
	str     r3, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	lsl     r0, r7, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0xc]
	str     r3, [sp, #0x10]
	ldr     r1, [r4, #0x28]
	mov     r0, r6
	lsr     r2, r2, #24
	bl      0x201a7e8
	ldr     r0, [pc, #0x10] @ 0x21d3f34, (=0x21d4105)
	mov     r1, r4
	mov     r2, #0x0
	bl      0x200da3c
	str     r0, [r4, #0x34]
.thumb
branch_21d3f2c: @ 21d3f2c :thumb
	mov     r0, r4
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21d3f32


.align 2


.word 0x21d4105 @ 0x21d3f34
.thumb
Function_21d3f38: @ 21d3f38 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x34]
	cmp     r0, #0x0
	beq     branch_21d3f46
	bl      Function_200da58
.thumb
branch_21d3f46: @ 21d3f46 :thumb
	ldr     r0, [r4, #0x30]
	bl      Function_20237bc
	ldr     r0, [r4, #0x24]
	bl      Function_201a8fc
	ldr     r0, [r4, #0x28]
	bl      Function_201a8fc
	ldr     r0, [r4, #0x24]
	bl      free
	ldr     r0, [r4, #0x28]
	bl      free
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x21d3f6c

.thumb
Function_21d3f6c: @ 21d3f6c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0
	ldr     r2, [r5, #0x1c]
	str     r1, [sp, #0x18]
	cmp     r2, #0x2
	bne     branch_21d3f80
	add     sp, #0x1c
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x21d3f80

.thumb
branch_21d3f80: @ 21d3f80 :thumb
	ldr     r1, [r5, #0x4]
	ldr     r0, [sp, #0x18]
	add     r6, r1, r0
	cmp     r2, #0x0
	bne     branch_21d4060
	ldr     r2, [r5, #0xc]
	mov     r0, #0x6
	mov     r1, r2
	mul     r1, r0
	ldr     r0, [pc, #0x160] @ 0x21d40f4, (=0x21d4ce6)
	ldrh    r0, [r0, r1]
	cmp     r6, r0
	blt     branch_21d4060
	ldr     r2, [pc, #0x15c] @ 0x21d40f8, (=0x21d4ce4)
	ldr     r0, [r5, #0x2c]
	ldrh    r1, [r2, r1]
	ldr     r2, [r5, #0x30]
	bl      Function_200b1b8
	ldr     r1, [r5, #0xc]
	mov     r0, #0x6
	mov     r2, r1
	mul     r2, r0
	ldr     r0, [pc, #0x14c] @ 0x21d40fc, (=0x21d4ce8)
	ldrh    r0, [r0, r2]
	cmp     r0, #0x0
	beq     branch_21d3fca
	mov     r0, #0x0
	ldr     r1, [r5, #0x30]
	mov     r2, r0
	bl      0x2002d7c
	mov     r1, #0x1
	lsl     r1, r1, #8
	sub     r0, r1, r0
	lsr     r7, r0, #1
	b       branch_21d3fcc
@ 0x21d3fca

.thumb
branch_21d3fca: @ 21d3fca :thumb
	mov     r7, #0x20
.thumb
branch_21d3fcc: @ 21d3fcc :thumb
	ldr     r1, [r5, #0xc]
	mov     r0, #0x6
	mov     r2, r1
	mul     r2, r0
	ldr     r0, [pc, #0x11c] @ 0x21d40f4, (=0x21d4ce6)
	mov     r1, #0x0
	ldrh    r0, [r0, r2]
	mov     r3, r7
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	str     r4, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x118] @ 0x21d4100, (=0x10200)
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [r5, #0x24]
	ldr     r2, [r5, #0x30]
	bl      0x201d78c
	cmp     r4, #0xf0
	ble     branch_21d4050
	ldr     r0, [r5, #0x28]
	mov     r1, #0x0
	bl      Function_201ada4
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xf4] @ 0x21d4100, (=0x10200)
	mov     r3, r7
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [r5, #0x28]
	ldr     r2, [r5, #0x30]
	bl      0x201d78c
	ldr     r1, [r5, #0x28]
	sub     r4, #0xf0
	ldrb    r2, [r1, #0x7]
	mov     r0, #0x10
	sub     r3, r0, r4
	mov     r4, r0
	sub     r0, r0, r3
	lsl     r2, r2, #19
	lsr     r2, r2, #16
	str     r2, [sp, #0x0]
	ldrb    r2, [r1, #0x8]
	lsl     r0, r0, #16
	lsl     r3, r3, #16
	lsl     r2, r2, #19
	lsr     r2, r2, #16
	str     r2, [sp, #0x4]
	mov     r2, #0x0
	str     r2, [sp, #0x8]
	str     r2, [sp, #0xc]
	add     r4, #0xf0
	str     r4, [sp, #0x10]
	lsr     r0, r0, #16
	str     r0, [sp, #0x14]
	ldr     r0, [r5, #0x24]
	ldr     r1, [r1, #0xc]
	lsr     r3, r3, #16
	bl      0x201addc
.thumb
branch_21d4050: @ 21d4050 :thumb
	mov     r1, #0x1
	str     r1, [r5, #0x18]
	ldr     r0, [r5, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0xc]
	cmp     r0, #0xec
	bcc     branch_21d4060
	str     r1, [r5, #0x1c]
.thumb
branch_21d4060: @ 21d4060 :thumb
	str     r6, [r5, #0x4]
	ldr     r0, [r5, #0x10]
	mov     r1, #0x6
	mov     r2, r0
	ldr     r0, [pc, #0x88] @ 0x21d40f4, (=0x21d4ce6)
	mul     r2, r1
	ldrh    r3, [r0, r2]
	ldr     r2, [r5, #0x0]
	mov     r0, r3
	add     r0, #0x10
	cmp     r2, r0
	ble     branch_21d40e6
	lsl     r0, r3, #24
	lsr     r3, r0, #24
	cmp     r3, #0xf0
	bgt     branch_21d4098
	add     r1, #0xfa
	str     r1, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r1, #0x0
	lsl     r3, r3, #16
	ldr     r0, [r5, #0x24]
	mov     r2, r1
	lsr     r3, r3, #16
	bl      0x201ae78
	b       branch_21d40d4
@ 0x21d4098

.thumb
branch_21d4098: @ 21d4098 :thumb
	mov     r1, r3
	sub     r1, #0xf0
	mov     r0, #0x10
	sub     r4, r0, r1
	add     r0, #0xf0
	str     r0, [sp, #0x0]
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x4]
	mov     r1, #0x0
	lsl     r3, r3, #16
	ldr     r0, [r5, #0x24]
	mov     r2, r1
	lsr     r3, r3, #16
	bl      0x201ae78
	mov     r1, #0x0
	mov     r0, #0x1
	lsl     r0, r0, #8
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	sub     r0, r0, r4
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x24]
	mov     r2, r1
	mov     r3, r1
	bl      0x201ae78
.thumb
branch_21d40d4: @ 21d40d4 :thumb
	mov     r0, #0x1
	str     r0, [r5, #0x18]
	ldr     r0, [r5, #0x10]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x10]
	cmp     r0, #0xed
	bcc     branch_21d40e6
	mov     r0, #0x2
	str     r0, [r5, #0x1c]
.thumb
branch_21d40e6: @ 21d40e6 :thumb
	ldr     r1, [r5, #0x0]
	ldr     r0, [sp, #0x18]
	add     r0, r1, r0
	str     r0, [r5, #0x0]
	mov     r0, #0x0
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x21d40f4

.word 0x21d4ce6 @ 0x21d40f4
.word 0x21d4ce4 @ 0x21d40f8
.word 0x21d4ce8 @ 0x21d40fc
.word 0x10200 @ 0x21d4100
.thumb
Function_21d4104: @ 21d4104 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x0
	beq     branch_21d4118
	ldr     r0, [r4, #0x24]
	bl      0x201accc
	mov     r0, #0x0
	str     r0, [r4, #0x18]
.thumb
branch_21d4118: @ 21d4118 :thumb
	ldr     r1, [r4, #0x8]
	ldr     r3, [r4, #0x0]
	lsl     r1, r1, #24
	lsl     r3, r3, #24
	ldr     r0, [r4, #0x20]
	lsr     r1, r1, #24
	mov     r2, #0x3
	lsr     r3, r3, #24
	bl      Function_2019184
	pop     {r4,pc}
@ 0x21d412e


.align 2, 0


.thumb
Function_21d4130: @ 21d4130 :thumb
	mov     r0, #0xec
	bx      lr
@ 0x21d4134

.thumb
Function_21d4134: @ 21d4134 :thumb
	push    {r4-r7}
	mov     r4, r0
	mov     r0, #0x38
	ldr     r3, [pc, #0x2c] @ 0x21d4168, (=0x21d5434)
	mul     r0, r1
	ldr     r5, [pc, #0x2c] @ 0x21d416c, (=0xf6c)
	mov     r2, #0x0
	add     r3, r3, r0
.thumb
branch_21d4144: @ 21d4144 :thumb
	mov     r7, r3
	ldmia   r7!, {r0,r1}
	add     r6, r4, r5
	stmia   r6!, {r0,r1}
	ldmia   r7!, {r0,r1}
	stmia   r6!, {r0,r1}
	ldmia   r7!, {r0,r1}
	stmia   r6!, {r0,r1}
	ldr     r0, [r7, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	str     r0, [r6, #0x0]
	add     r3, #0x1c
	add     r4, #0x1c
	cmp     r2, #0x2
	blt     branch_21d4144
	pop     {r4-r7}
	bx      lr
@ 0x21d4166


.align 2


.word 0x21d5434 @ 0x21d4168
.word 0xf6c @ 0x21d416c
.thumb
Function_21d4170: @ 21d4170 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	ldr     r1, [pc, #0xd0] @ 0x21d424c, (=0x1104)
	ldr     r0, [sp, #0x0]
	ldrb    r0, [r0, r1]
	cmp     r0, #0x0
	ble     branch_21d4248
	ldr     r0, [sp, #0x0]
	ldr     r1, [pc, #0xc8] @ 0x21d4250, (=0xf6c)
	str     r0, [sp, #0x4]
	add     r5, r0, r1
	add     r0, #0x6c
	str     r0, [sp, #0x4]
.thumb
branch_21d4190: @ 21d4190 :thumb
	mov     r0, #0x0
	ldsh    r0, [r5, r0]
	cmp     r0, #0x10
	ble     branch_21d419c
	bl      ErrorHandling
.thumb
branch_21d419c: @ 21d419c :thumb
	mov     r4, #0x0
	ldsh    r0, [r5, r4]
	cmp     r0, #0x0
	ble     branch_21d41f0
	ldr     r6, [sp, #0x4]
.thumb
branch_21d41a6: @ 21d41a6 :thumb
	ldr     r1, [r5, #0x8]
	ldr     r3, [r5, #0x4]
	mov     r2, r1
	mul     r2, r4
	sub     r1, r3, r2
	ldr     r2, [r5, #0x10]
	ldr     r7, [r5, #0xc]
	mov     r3, r2
	mul     r3, r4
	sub     r2, r7, r3
	ldr     r3, [r5, #0x14]
	mov     r0, r6
	mov     r12, r3
	ldr     r3, [r5, #0x18]
	mov     r7, r3
	mul     r7, r4
	mov     r3, r12
	sub     r3, r3, r7
	bl      0x2017350
	mov     r1, #0x1
	lsl     r1, r1, #12
	mov     r0, r6
	mov     r2, r1
	mov     r3, r1
	bl      0x201736c
	mov     r0, r6
	mov     r1, #0x1
	bl      0x2017348
	mov     r0, #0x0
	ldsh    r0, [r5, r0]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r6, #0x78
	cmp     r4, r0
	blt     branch_21d41a6
.thumb
branch_21d41f0: @ 21d41f0 :thumb
	cmp     r4, #0x10
	bge     branch_21d422a
	mov     r0, #0x78
	mov     r1, r4
	mul     r1, r0
	ldr     r0, [sp, #0x4]
	mov     r7, #0x0
	add     r6, r0, r1
.thumb
branch_21d4200: @ 21d4200 :thumb
	ldr     r2, [pc, #0x50] @ 0x21d4254, (=0xfffc0000)
	ldr     r3, [pc, #0x54] @ 0x21d4258, (=0xfffce000)
	mov     r0, r6
	mov     r1, r7
	bl      0x2017350
	mov     r1, #0x1
	lsl     r1, r1, #12
	mov     r0, r6
	mov     r2, r1
	mov     r3, r1
	bl      0x201736c
	mov     r0, r6
	mov     r1, #0x0
	bl      0x2017348
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r6, #0x78
	cmp     r4, #0x10
	blt     branch_21d4200
.thumb
branch_21d422a: @ 21d422a :thumb
	mov     r1, #0x1e
	ldr     r0, [sp, #0x4]
	lsl     r1, r1, #6
	add     r0, r0, r1
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x8]
	ldr     r1, [pc, #0x14] @ 0x21d424c, (=0x1104)
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x0]
	add     r5, #0x1c
	ldrb    r1, [r0, r1]
	ldr     r0, [sp, #0x8]
	cmp     r0, r1
	blt     branch_21d4190
.thumb
branch_21d4248: @ 21d4248 :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21d424c

.word 0x1104 @ 0x21d424c
.word 0xf6c @ 0x21d4250
.word 0xfffc0000 @ 0x21d4254
.word 0xfffce000 @ 0x21d4258
.thumb
Function_21d425c: @ 21d425c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x34
	str     r1, [sp, #0x4]
	ldr     r1, [pc, #0x130] @ 0x21d4394, (=0x1104)
	str     r0, [sp, #0x0]
	ldrb    r0, [r0, r1]
	mov     r7, #0x0
	str     r7, [sp, #0x18]
	cmp     r0, #0x0
	bgt     branch_21d4272
	b       branch_21d438c
@ 0x21d4272

.thumb
branch_21d4272: @ 21d4272 :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [pc, #0x120] @ 0x21d4398, (=0xf6c)
	str     r0, [sp, #0x10]
	add     r4, r0, r1
	add     r0, #0x6c
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x4]
	lsl     r1, r0, #4
	ldr     r0, [sp, #0x0]
	add     r0, r0, r1
	str     r0, [sp, #0xc]
.thumb
branch_21d4288: @ 21d4288 :thumb
	mov     r0, #0x0
	ldsh    r5, [r4, r0]
	mov     r0, #0x2
	ldsh    r6, [r4, r0]
	ldr     r1, [r4, #0x8]
	mov     r0, r1
	mul     r0, r5
	mov     r1, r6
	blx     _s32_div_f
	ldr     r1, [r4, #0x10]
	str     r0, [sp, #0x24]
	mov     r0, r1
	mul     r0, r5
	mov     r1, r6
	blx     _s32_div_f
	ldr     r1, [r4, #0x18]
	str     r0, [sp, #0x20]
	mov     r0, r1
	mul     r0, r5
	mov     r1, r6
	blx     _s32_div_f
	str     r0, [sp, #0x1c]
	mov     r0, #0x0
	str     r0, [sp, #0x14]
	cmp     r5, #0x0
	ble     branch_21d436c
	ldr     r0, [sp, #0x10]
	str     r0, [sp, #0x8]
	mov     r5, r0
.thumb
branch_21d42c8: @ 21d42c8 :thumb
	ldr     r0, [sp, #0x8]
	add     r1, sp, #0x30
	add     r2, sp, #0x2c
	add     r3, sp, #0x28
	bl      0x2017358
	ldr     r1, [sp, #0x30]
	ldr     r0, [sp, #0x24]
	add     r1, r1, r0
	ldr     r0, [r4, #0x4]
	cmp     r1, r0
	blt     branch_21d433a
	mov     r0, #0x0
	ldsh    r7, [r4, r0]
	ldr     r2, [r4, #0x8]
	mov     r0, r5
	mov     r3, r2
	mul     r3, r7
	sub     r1, r1, r3
	ldr     r3, [sp, #0x2c]
	ldr     r2, [sp, #0x20]
	add     r6, r3, r2
	ldr     r2, [r4, #0x10]
	mov     r3, r2
	mul     r3, r7
	sub     r2, r6, r3
	ldr     r6, [sp, #0x28]
	ldr     r3, [sp, #0x1c]
	add     r3, r6, r3
	mov     r12, r3
	ldr     r3, [r4, #0x18]
	mov     r6, r3
	mul     r6, r7
	mov     r3, r12
	sub     r3, r3, r6
	bl      0x2017350
	mov     r0, #0x0
	ldr     r1, [sp, #0x4]
	mvn     r0, r0
	cmp     r1, r0
	beq     branch_21d4336
	ldr     r0, [sp, #0x18]
	cmp     r0, #0x0
	bne     branch_21d4336
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, #0x54
	blx     MI_CpuFill8
	ldr     r1, [sp, #0xc]
	mov     r0, r5
	ldr     r1, [r1, #0x34]
	blx     0x20ae608
.thumb
branch_21d4336: @ 21d4336 :thumb
	mov     r7, #0x1
	b       branch_21d434c
@ 0x21d433a

.thumb
branch_21d433a: @ 21d433a :thumb
	ldr     r3, [sp, #0x2c]
	ldr     r2, [sp, #0x20]
	ldr     r6, [sp, #0x28]
	add     r2, r3, r2
	ldr     r3, [sp, #0x1c]
	mov     r0, r5
	add     r3, r6, r3
	bl      0x2017350
.thumb
branch_21d434c: @ 21d434c :thumb
	mov     r0, r5
	mov     r1, #0x1
	bl      0x2017348
	ldr     r0, [sp, #0x8]
	add     r5, #0x78
	add     r0, #0x78
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x14]
	mov     r0, #0x0
	ldsh    r1, [r4, r0]
	ldr     r0, [sp, #0x14]
	cmp     r0, r1
	blt     branch_21d42c8
.thumb
branch_21d436c: @ 21d436c :thumb
	mov     r1, #0x1e
	ldr     r0, [sp, #0x10]
	lsl     r1, r1, #6
	add     r0, r0, r1
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x18]
	ldr     r1, [pc, #0x18] @ 0x21d4394, (=0x1104)
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x0]
	add     r4, #0x1c
	ldrb    r1, [r0, r1]
	ldr     r0, [sp, #0x18]
	cmp     r0, r1
	bge     branch_21d438c
	b       branch_21d4288
@ 0x21d438c

.thumb
branch_21d438c: @ 21d438c :thumb
	mov     r0, r7
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x21d4392


.align 2


.word 0x1104 @ 0x21d4394
.word 0xf6c @ 0x21d4398
.thumb
Function_21d439c: @ 21d439c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	ldr     r0, [r5, #0x8]
	mov     r6, r1
	mov     r7, r2
	str     r0, [sp, #0x10]
	cmp     r3, #0x0
	beq     branch_21d43b4
	cmp     r3, #0x1
	beq     branch_21d43d4
	b       branch_21d43f2
@ 0x21d43b4

.thumb
branch_21d43b4: @ 21d43b4 :thumb
	cmp     r6, #0xa
	bcc     branch_21d43bc
	bl      ErrorHandling
.thumb
branch_21d43bc: @ 21d43bc :thumb
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_21d43cc
	ldr     r1, [pc, #0xf0] @ 0x21d44b8, (=0x21d5394)
	lsl     r0, r6, #4
	add     r4, r1, r0
	b       branch_21d43f2
@ 0x21d43cc

.thumb
branch_21d43cc: @ 21d43cc :thumb
	ldr     r1, [pc, #0xec] @ 0x21d44bc, (=0x21d52f4)
	lsl     r0, r6, #4
	add     r4, r1, r0
	b       branch_21d43f2
@ 0x21d43d4

.thumb
branch_21d43d4: @ 21d43d4 :thumb
	cmp     r6, #0xa
	bcc     branch_21d43dc
	bl      ErrorHandling
.thumb
branch_21d43dc: @ 21d43dc :thumb
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_21d43ec
	ldr     r1, [pc, #0xd8] @ 0x21d44c0, (=0x21d5274)
	lsl     r0, r6, #4
	add     r4, r1, r0
	b       branch_21d43f2
@ 0x21d43ec

.thumb
branch_21d43ec: @ 21d43ec :thumb
	ldr     r1, [pc, #0xd4] @ 0x21d44c4, (=0x21d52b4)
	lsl     r0, r6, #4
	add     r4, r1, r0
.thumb
branch_21d43f2: @ 21d43f2 :thumb
	ldr     r0, [pc, #0xd4] @ 0x21d44c8, (=0x10f8)
	ldrh    r1, [r4, #0x4]
	ldr     r0, [r5, r0]
	add     r2, sp, #0x14
	mov     r3, #0x4b
	bl      0x20071ec
	ldr     r1, [sp, #0x14]
	mov     r6, r0
	ldr     r0, [r1, #0xc]
	ldr     r1, [r1, #0x8]
	blx     DC_FlushRange
	blx     0x20c096c
	cmp     r7, #0x3
	bne     branch_21d4426
	ldr     r0, [sp, #0x14]
	mov     r1, #0x6
	mov     r2, #0x2
	ldr     r0, [r0, #0xc]
	lsl     r1, r1, #12
	lsl     r2, r2, #12
	blx     0x20c0a0c
	b       branch_21d4434
@ 0x21d4426

.thumb
branch_21d4426: @ 21d4426 :thumb
	ldr     r0, [sp, #0x14]
	mov     r1, #0x1
	lsl     r1, r1, #14
	ldr     r0, [r0, #0xc]
	lsr     r2, r1, #1
	blx     0x20c0a0c
.thumb
branch_21d4434: @ 21d4434 :thumb
	blx     0x20c0a7c
	mov     r0, r6
	bl      free
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0xc]
	mov     r2, #0x2
	mov     r3, r1
	bl      Function_20038b0
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	ldr     r0, [r5, #0xc]
	mov     r2, #0x2
	bl      Function_20038b0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4b
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x58] @ 0x21d44c8, (=0x10f8)
	ldrh    r1, [r4, #0x0]
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x8]
	mov     r3, r7
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4b
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x40] @ 0x21d44c8, (=0x10f8)
	ldrh    r1, [r4, #0x2]
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x8]
	mov     r3, r7
	bl      0x200710c
	mov     r3, #0x6
	lsl     r1, r7, #24
	ldsh    r3, [r4, r3]
	ldr     r0, [sp, #0x10]
	lsr     r1, r1, #24
	mov     r2, #0x0
	bl      Function_2019184
	mov     r3, #0x8
	lsl     r1, r7, #24
	ldsh    r3, [r4, r3]
	ldr     r0, [sp, #0x10]
	lsr     r1, r1, #24
	mov     r2, #0x3
	bl      Function_2019184
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21d44b8

.word 0x21d5394 @ 0x21d44b8
.word 0x21d52f4 @ 0x21d44bc
.word 0x21d5274 @ 0x21d44c0
.word 0x21d52b4 @ 0x21d44c4
.word 0x10f8 @ 0x21d44c8
.thumb
Function_21d44cc: @ 21d44cc :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	ldr     r1, [pc, #0x1e8] @ 0x21d46bc, (=0x10f4)
	mov     r5, r0
	ldr     r0, [r5, r1]
	cmp     r0, #0x0
	bne     branch_21d44dc
	b       branch_21d46b8
@ 0x21d44dc

.thumb
branch_21d44dc: @ 21d44dc :thumb
	mov     r0, r1
	add     r0, #0x24
	ldsh    r2, [r5, r0]
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r2, r0
	beq     branch_21d44ec
	b       branch_21d466c
@ 0x21d44ec

.thumb
branch_21d44ec: @ 21d44ec :thumb
	mov     r0, r1
	add     r0, #0x20
	ldsh    r0, [r5, r0]
	cmp     r0, #0x0
	ble     branch_21d4504
	mov     r0, r1
	add     r0, #0x20
	ldsh    r0, [r5, r0]
	add     r1, #0x20
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r5, r1]
	b       branch_21d466c
@ 0x21d4504

.thumb
branch_21d4504: @ 21d4504 :thumb
	ldr     r0, [r6, #0x0]
	bl      0x2021f98
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r1, [pc, #0x1ac] @ 0x21d46bc, (=0x10f4)
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_21d4590
	ldr     r0, [r5, r1]
	add     r1, #0x22
	ldsh    r1, [r5, r1]
	mov     r7, #0x19
	lsl     r7, r7, #22
	lsl     r1, r1, #7
	add     r0, r0, r1
	mov     r1, #0x3a
	lsl     r1, r1, #4
	add     r2, r7, r1
	ldr     r1, [r4, #0x4]
	add     r1, r2, r1
	mov     r2, #0x20
	blx     MI_CpuCopy32
	ldr     r1, [pc, #0x184] @ 0x21d46bc, (=0x10f4)
	ldr     r0, [r5, r1]
	add     r1, #0x22
	ldsh    r1, [r5, r1]
	lsl     r1, r1, #7
	add     r1, #0x20
	add     r0, r0, r1
	mov     r1, #0xf
	lsl     r1, r1, #6
	add     r2, r7, r1
	ldr     r1, [r4, #0x4]
	add     r1, r2, r1
	mov     r2, #0x20
	blx     MI_CpuCopy32
	ldr     r1, [pc, #0x168] @ 0x21d46bc, (=0x10f4)
	ldr     r0, [r5, r1]
	add     r1, #0x22
	ldsh    r1, [r5, r1]
	lsl     r1, r1, #7
	add     r1, #0x40
	add     r0, r0, r1
	mov     r1, #0x4a
	lsl     r1, r1, #4
	add     r2, r7, r1
	ldr     r1, [r4, #0x4]
	add     r1, r2, r1
	mov     r2, #0x20
	blx     MI_CpuCopy32
	ldr     r1, [pc, #0x148] @ 0x21d46bc, (=0x10f4)
	ldr     r0, [r5, r1]
	add     r1, #0x22
	ldsh    r1, [r5, r1]
	lsl     r1, r1, #7
	add     r1, #0x60
	add     r0, r0, r1
	mov     r1, #0x13
	lsl     r1, r1, #6
	add     r2, r7, r1
	ldr     r1, [r4, #0x4]
	add     r1, r2, r1
	mov     r2, #0x20
	blx     MI_CpuCopy32
	b       branch_21d4608
@ 0x21d4590

.thumb
branch_21d4590: @ 21d4590 :thumb
	ldr     r0, [r5, r1]
	add     r1, #0x22
	ldsh    r1, [r5, r1]
	mov     r7, #0x19
	lsl     r7, r7, #22
	lsl     r1, r1, #7
	add     r0, r0, r1
	mov     r1, #0x8a
	lsl     r1, r1, #4
	add     r2, r7, r1
	ldr     r1, [r4, #0x4]
	add     r1, r2, r1
	mov     r2, #0x20
	blx     MI_CpuCopy32
	ldr     r1, [pc, #0x10c] @ 0x21d46bc, (=0x10f4)
	ldr     r0, [r5, r1]
	add     r1, #0x22
	ldsh    r1, [r5, r1]
	lsl     r1, r1, #7
	add     r1, #0x20
	add     r0, r0, r1
	mov     r1, #0x23
	lsl     r1, r1, #6
	add     r2, r7, r1
	ldr     r1, [r4, #0x4]
	add     r1, r2, r1
	mov     r2, #0x20
	blx     MI_CpuCopy32
	ldr     r1, [pc, #0xec] @ 0x21d46bc, (=0x10f4)
	ldr     r0, [r5, r1]
	add     r1, #0x22
	ldsh    r1, [r5, r1]
	lsl     r1, r1, #7
	add     r1, #0x40
	add     r0, r0, r1
	mov     r1, #0x9a
	lsl     r1, r1, #4
	add     r2, r7, r1
	ldr     r1, [r4, #0x4]
	add     r1, r2, r1
	mov     r2, #0x20
	blx     MI_CpuCopy32
	ldr     r1, [pc, #0xd0] @ 0x21d46bc, (=0x10f4)
	ldr     r0, [r5, r1]
	add     r1, #0x22
	ldsh    r1, [r5, r1]
	lsl     r1, r1, #7
	add     r1, #0x60
	add     r0, r0, r1
	mov     r1, #0x27
	lsl     r1, r1, #6
	add     r2, r7, r1
	ldr     r1, [r4, #0x4]
	add     r1, r2, r1
	mov     r2, #0x20
	blx     MI_CpuCopy32
.thumb
branch_21d4608: @ 21d4608 :thumb
	ldr     r0, [pc, #0xb4] @ 0x21d46c0, (=0x1116)
	ldsh    r1, [r5, r0]
	cmp     r1, #0x0
	bne     branch_21d465c
	.hword  0x1d00 @ add r0, r0, #0x4
	ldsh    r0, [r5, r0]
	mov     r1, #0x3
	blx     _s32_div_f
	cmp     r1, #0x0
	bne     branch_21d464a
	bl      PRNG
	mov     r1, #0x1
	tst     r0, r1
	beq     branch_21d4642
	bl      PRNG
	mov     r1, #0xa
	blx     _s32_div_f
	ldr     r0, [pc, #0x90] @ 0x21d46c4, (=0x1114)
	strh    r1, [r5, r0]
	add     r1, r0, #0x6
	ldsh    r1, [r5, r1]
	.hword  0x1d80 @ add r0, r0, #0x6
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r5, r0]
	b       branch_21d4662
@ 0x21d4642

.thumb
branch_21d4642: @ 21d4642 :thumb
	ldr     r0, [pc, #0x80] @ 0x21d46c4, (=0x1114)
	mov     r1, #0x28
	strh    r1, [r5, r0]
	b       branch_21d4662
@ 0x21d464a

.thumb
branch_21d464a: @ 21d464a :thumb
	ldr     r0, [pc, #0x78] @ 0x21d46c4, (=0x1114)
	mov     r1, #0x28
	strh    r1, [r5, r0]
	add     r1, r0, #0x6
	ldsh    r1, [r5, r1]
	.hword  0x1d80 @ add r0, r0, #0x6
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r5, r0]
	b       branch_21d4662
@ 0x21d465c

.thumb
branch_21d465c: @ 21d465c :thumb
	mov     r1, #0x1
	.hword  0x1e80 @ sub r0, r0, #0x2
	strh    r1, [r5, r0]
.thumb
branch_21d4662: @ 21d4662 :thumb
	ldr     r1, [pc, #0x5c] @ 0x21d46c0, (=0x1116)
	mov     r0, #0x1
	ldsh    r2, [r5, r1]
	eor     r0, r2
	strh    r0, [r5, r1]
.thumb
branch_21d466c: @ 21d466c :thumb
	mov     r0, r6
	bl      0x200d3b8
	cmp     r0, #0x0
	bne     branch_21d46b8
	ldr     r0, [pc, #0x50] @ 0x21d46c8, (=0x1118)
	mov     r1, #0x0
	ldsh    r2, [r5, r0]
	mvn     r1, r1
	cmp     r2, r1
	beq     branch_21d46ae
	add     r1, r2, #0x1
	strh    r1, [r5, r0]
	ldsh    r0, [r5, r0]
	cmp     r0, #0x10
	ble     branch_21d46a4
	bl      PRNG
	mov     r1, #0x5
	blx     _s32_div_f
	cmp     r1, #0x0
	bne     branch_21d46a4
	mov     r1, #0x1
	ldr     r0, [pc, #0x28] @ 0x21d46c8, (=0x1118)
	.hword  0x1e8a @ sub r2, r1, #0x2
	strh    r2, [r5, r0]
	b       branch_21d46a6
@ 0x21d46a4

.thumb
branch_21d46a4: @ 21d46a4 :thumb
	mov     r1, #0x0
.thumb
branch_21d46a6: @ 21d46a6 :thumb
	mov     r0, r6
	bl      0x200d364
	pop     {r3-r7,pc}
@ 0x21d46ae

.thumb
branch_21d46ae: @ 21d46ae :thumb
	mov     r1, #0x0
	strh    r1, [r5, r0]
	mov     r0, r6
	bl      0x200d364
.thumb
branch_21d46b8: @ 21d46b8 :thumb
	pop     {r3-r7,pc}
@ 0x21d46ba

.align 2
.word 0x10f4 @ 0x21d46bc
.word 0x1116 @ 0x21d46c0
.word 0x1114 @ 0x21d46c4
.word 0x1118 @ 0x21d46c8



Unknown_21d46cc: @ 0x21d46cc
.incbin "./baserom/overlay/overlay_0099.bin", 0x394c, 0x21d4a04 - 0x21d46cc


.word Function_21d1d68+1 @ =0x21d1d69, 0x21d4a04
.word Function_21d1fd8+1 @ =0x21d1fd9, 0x21d4a08
.word Function_21d1e90+1 @ =0x21d1e91, 0x21d4a0c
.word Function_21d1ec8+1 @ =0x21d1ec9, 0x21d4a10
.word Function_21d1ea0+1 @ =0x21d1ea1, 0x21d4a14
.word Function_21d1f70+1 @ =0x21d1f71, 0x21d4a18
.word Function_21d1e6c+1 @ =0x21d1e6d, 0x21d4a1c
.word Function_21d20f8+1 @ =0x21d20f9, 0x21d4a20
.word Function_21d1e98+1 @ =0x21d1e99, 0x21d4a24
.word Function_21d1f44+1 @ =0x21d1f45, 0x21d4a28
.word Function_21d1eb4+1 @ =0x21d1eb5, 0x21d4a2c
.word Function_21d1fb8+1 @ =0x21d1fb9, 0x21d4a30
.word Function_21d2c08+1 @ =0x21d2c09, 0x21d4a34
.word Function_21d211c+1 @ =0x21d211d, 0x21d4a38
.word Function_21d2178+1 @ =0x21d2179, 0x21d4a3c
.word Function_21d2158+1 @ =0x21d2159, 0x21d4a40
.word Function_21d2168+1 @ =0x21d2169, 0x21d4a44
.word Function_21d2160+1 @ =0x21d2161, 0x21d4a48
.word Function_21d2170+1 @ =0x21d2171, 0x21d4a4c
.word Function_21d214c+1 @ =0x21d214d, 0x21d4a50
.word Function_21d217c+1 @ =0x21d217d, 0x21d4a54
.word Function_21d215c+1 @ =0x21d215d, 0x21d4a58
.word Function_21d216c+1 @ =0x21d216d, 0x21d4a5c
.word Function_21d2164+1 @ =0x21d2165, 0x21d4a60
.word Function_21d2174+1 @ =0x21d2175, 0x21d4a64
.word Function_21d3a40+1 @ =0x21d3a41, 0x21d4a68
.word Function_21d2180+1 @ =0x21d2181, 0x21d4a6c
.word Function_21d2410+1 @ =0x21d2411, 0x21d4a70
.word Function_21d22d0+1 @ =0x21d22d1, 0x21d4a74
.word Function_21d2308+1 @ =0x21d2309, 0x21d4a78
.word Function_21d22e0+1 @ =0x21d22e1, 0x21d4a7c
.word Function_21d23b0+1 @ =0x21d23b1, 0x21d4a80
.word Function_21d22ac+1 @ =0x21d22ad, 0x21d4a84
.word Function_21d24cc+1 @ =0x21d24cd, 0x21d4a88
.word Function_21d22d8+1 @ =0x21d22d9, 0x21d4a8c
.word Function_21d2384+1 @ =0x21d2385, 0x21d4a90
.word Function_21d22f4+1 @ =0x21d22f5, 0x21d4a94
.word Function_21d23f0+1 @ =0x21d23f1, 0x21d4a98
.word Function_21d2e28+1 @ =0x21d2e29, 0x21d4a9c
.word Function_21d211c+1 @ =0x21d211d, 0x21d4aa0
.word Function_21d2178+1 @ =0x21d2179, 0x21d4aa4
.word Function_21d2158+1 @ =0x21d2159, 0x21d4aa8
.word Function_21d2168+1 @ =0x21d2169, 0x21d4aac
.word Function_21d2160+1 @ =0x21d2161, 0x21d4ab0
.word Function_21d2170+1 @ =0x21d2171, 0x21d4ab4
.word Function_21d214c+1 @ =0x21d214d, 0x21d4ab8
.word Function_21d217c+1 @ =0x21d217d, 0x21d4abc
.word Function_21d215c+1 @ =0x21d215d, 0x21d4ac0
.word Function_21d216c+1 @ =0x21d216d, 0x21d4ac4
.word Function_21d2164+1 @ =0x21d2165, 0x21d4ac8
.word Function_21d2174+1 @ =0x21d2175, 0x21d4acc
.word Function_21d3b2c+1 @ =0x21d3b2d, 0x21d4ad0
.word Function_21d24f0+1 @ =0x21d24f1, 0x21d4ad4
.word Function_21d28ac+1 @ =0x21d28ad, 0x21d4ad8
.word Function_21d2664+1 @ =0x21d2665, 0x21d4adc
.word Function_21d2780+1 @ =0x21d2781, 0x21d4ae0
.word Function_21d2714+1 @ =0x21d2715, 0x21d4ae4
.word Function_21d2828+1 @ =0x21d2829, 0x21d4ae8
.word Function_21d2640+1 @ =0x21d2641, 0x21d4aec
.word Function_21d2a14+1 @ =0x21d2a15, 0x21d4af0
.word Function_21d26e4+1 @ =0x21d26e5, 0x21d4af4
.word Function_21d27fc+1 @ =0x21d27fd, 0x21d4af8
.word Function_21d275c+1 @ =0x21d275d, 0x21d4afc
.word Function_21d288c+1 @ =0x21d288d, 0x21d4b00
.word Function_21d340c+1 @ =0x21d340d, 0x21d4b04
.word Function_21d2a38+1 @ =0x21d2a39, 0x21d4b08
.word Function_21d2aa4+1 @ =0x21d2aa5, 0x21d4b0c
.word Function_21d2a84+1 @ =0x21d2a85, 0x21d4b10
.word Function_21d2a94+1 @ =0x21d2a95, 0x21d4b14
.word Function_21d2a8c+1 @ =0x21d2a8d, 0x21d4b18
.word Function_21d2a9c+1 @ =0x21d2a9d, 0x21d4b1c
.word Function_21d2a70+1 @ =0x21d2a71, 0x21d4b20
.word Function_21d2aa8+1 @ =0x21d2aa9, 0x21d4b24
.word Function_21d2a88+1 @ =0x21d2a89, 0x21d4b28
.word Function_21d2a98+1 @ =0x21d2a99, 0x21d4b2c
.word Function_21d2a90+1 @ =0x21d2a91, 0x21d4b30
.word Function_21d2aa0+1 @ =0x21d2aa1, 0x21d4b34
.word Function_21d3c18+1 @ =0x21d3c19, 0x21d4b38
.word Function_21d2aac+1 @ =0x21d2aad, 0x21d4b3c
.word Function_21d2c00+1 @ =0x21d2c01, 0x21d4b40
.word Function_21d2be0+1 @ =0x21d2be1, 0x21d4b44
.word Function_21d2bf0+1 @ =0x21d2bf1, 0x21d4b48
.word Function_21d2be8+1 @ =0x21d2be9, 0x21d4b4c
.word Function_21d2bf8+1 @ =0x21d2bf9, 0x21d4b50
.word Function_21d2bbc+1 @ =0x21d2bbd, 0x21d4b54
.word Function_21d2c04+1 @ =0x21d2c05, 0x21d4b58
.word Function_21d2be4+1 @ =0x21d2be5, 0x21d4b5c
.word Function_21d2bf4+1 @ =0x21d2bf5, 0x21d4b60
.word Function_21d2bec+1 @ =0x21d2bed, 0x21d4b64
.word Function_21d2bfc+1 @ =0x21d2bfd, 0x21d4b68
.word Function_21d3de0+1 @ =0x21d3de1, 0x21d4b6c
@ 0x21d4b70


.incbin "./baserom/overlay/overlay_0099.bin", 0x3df0, 0x21d54e0 - 0x21d4b70


@end 0x21d54e0




