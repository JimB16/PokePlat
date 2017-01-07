

.section .iwram64, "ax"


.thumb
Function_222dce0: @ 222dce0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0xb8] @ 0x222dda0, (=0x3f)
	mov     r1, #0x2
	bl      LoadOverlay
	mov     r2, #0x7
	mov     r0, #0x3
	mov     r1, #0x34
	lsl     r2, r2, #16
	bl      0x2017fc8
	ldr     r1, [pc, #0xa8] @ 0x222dda4, (=0x4d8)
	mov     r0, r5
	mov     r2, #0x34
	bl      0x200681c
	ldr     r2, [pc, #0xa0] @ 0x222dda4, (=0x4d8)
	mov     r1, #0x0
	mov     r4, r0
	blx     0x20d5124
	mov     r0, r5
	bl      0x2006840
	mov     r1, r0
	mov     r0, #0x2
	lsl     r0, r0, #8
	add     r0, r4, r0
	mov     r2, #0x34
	bl      Function_222e040
	mov     r1, #0x2
	lsl     r1, r1, #8
	add     r0, r4, #0x4
	add     r1, r4, r1
	mov     r2, #0x34
	bl      Function_222e1a4
	mov     r1, #0x8f
	lsl     r1, r1, #2
	add     r0, r4, r1
	sub     r1, #0x3c
	add     r1, r4, r1
	add     r2, r4, #0x4
	mov     r3, #0x34
	bl      Function_222ea68
	mov     r1, #0x9e
	lsl     r1, r1, #2
	add     r0, r4, r1
	sub     r1, #0x78
	add     r1, r4, r1
	add     r2, r4, #0x4
	mov     r3, #0x34
	bl      Function_222f09c
	mov     r0, #0xe2
	mov     r1, #0x2
	lsl     r0, r0, #2
	lsl     r1, r1, #8
	add     r0, r4, r0
	add     r1, r4, r1
	add     r2, r4, #0x4
	mov     r3, #0x34
	bl      Function_2230444
	mov     r0, #0xe5
	mov     r1, #0x2
	lsl     r0, r0, #2
	lsl     r1, r1, #8
	add     r0, r4, r0
	add     r1, r4, r1
	add     r2, r4, #0x4
	mov     r3, #0x34
	bl      Function_2230620
	mov     r0, #0xef
	mov     r1, #0x2
	lsl     r0, r0, #2
	lsl     r1, r1, #8
	add     r0, r4, r0
	add     r1, r4, r1
	add     r2, r4, #0x4
	mov     r3, #0x34
	bl      Function_22308dc
	ldr     r0, [pc, #0x18] @ 0x222dda8, (=0x222df3d)
	mov     r1, r4
	bl      SetMainLoopFunctionCall
	bl      0x20177a4
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x222dd9e


.align 2


.word 0x3f @ 0x222dda0
.word 0x4d8 @ 0x222dda4
.word 0x222df3d @ 0x222dda8
.thumb
Function_222ddac: @ 222ddac :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r1
	bl      0x200682c
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_222ddc4
	cmp     r0, #0x1
	beq     branch_222de7c
	b       branch_222de8e
@ 0x222ddc4

.thumb
branch_222ddc4: @ 222ddc4 :thumb
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x5
	bhi     branch_222de5e
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x222ddd6

Jumppoints_222ddd6:
.hword branch_222dde2 - Jumppoints_222ddd6 - 2
.hword branch_222ddf8 - Jumppoints_222ddd6 - 2
.hword branch_222de0e - Jumppoints_222ddd6 - 2
.hword branch_222de2a - Jumppoints_222ddd6 - 2
.hword branch_222de40 - Jumppoints_222ddd6 - 2
.hword branch_222de58 - Jumppoints_222ddd6 - 2
.thumb
branch_222dde2: @ 222dde2 :thumb
	mov     r1, #0x8f
	lsl     r1, r1, #2
	add     r0, r4, r1
	sub     r1, #0x3c
	add     r1, r4, r1
	add     r2, r4, #0x4
	mov     r3, #0x34
	bl      Function_222ea70
	mov     r6, r0
	b       branch_222de5e
@ 0x222ddf8

.thumb
branch_222ddf8: @ 222ddf8 :thumb
	mov     r1, #0x9e
	lsl     r1, r1, #2
	add     r0, r4, r1
	sub     r1, #0x78
	add     r1, r4, r1
	add     r2, r4, #0x4
	mov     r3, #0x34
	bl      Function_222f0c4
	mov     r6, r0
	b       branch_222de5e
@ 0x222de0e

.thumb
branch_222de0e: @ 222de0e :thumb
	mov     r0, #0x34
	str     r0, [sp, #0x0]
	mov     r0, #0xe2
	mov     r2, #0x2
	lsl     r0, r0, #2
	lsl     r2, r2, #8
	add     r0, r4, r0
	mov     r1, r4
	add     r2, r4, r2
	add     r3, r4, #0x4
	bl      Function_223044c
	mov     r6, r0
	b       branch_222de5e
@ 0x222de2a

.thumb
branch_222de2a: @ 222de2a :thumb
	mov     r0, #0xe5
	mov     r1, #0x2
	lsl     r0, r0, #2
	lsl     r1, r1, #8
	add     r0, r4, r0
	add     r1, r4, r1
	add     r2, r4, #0x4
	bl      Function_2230628
	mov     r6, r0
	b       branch_222de5e
@ 0x222de40

.thumb
branch_222de40: @ 222de40 :thumb
	mov     r0, #0xef
	mov     r1, #0x2
	lsl     r0, r0, #2
	lsl     r1, r1, #8
	add     r0, r4, r0
	add     r1, r4, r1
	add     r2, r4, #0x4
	mov     r3, #0x34
	bl      Function_2230904
	mov     r6, r0
	b       branch_222de5e
@ 0x222de58

.thumb
branch_222de58: @ 222de58 :thumb
	add     sp, #0x4
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x222de5e

.thumb
branch_222de5e: @ 222de5e :thumb
	cmp     r6, #0x1
	bne     branch_222de8e
	ldr     r0, [pc, #0x38] @ 0x222de9c, (=0x205)
	ldrb    r1, [r4, r0]
	str     r1, [r4, #0x0]
	add     r1, r0, #0x1
	ldrb    r1, [r4, r1]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r1, [r4, r0]
	ldr     r0, [pc, #0x2c] @ 0x222dea0, (=0x4d4)
	mov     r1, #0x4
	str     r1, [r4, r0]
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_222de8e
@ 0x222de7c

.thumb
branch_222de7c: @ 222de7c :thumb
	ldr     r0, [pc, #0x20] @ 0x222dea0, (=0x4d4)
	ldr     r1, [r4, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bgt     branch_222de8e
	mov     r0, #0x0
	str     r0, [r5, #0x0]
.thumb
branch_222de8e: @ 222de8e :thumb
	add     r0, r4, #0x4
	bl      Function_222e21c
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x222de9a


.align 2


.word 0x205 @ 0x222de9c
.word 0x4d4 @ 0x222dea0
.thumb
Function_222dea4: @ 222dea4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      0x200682c
	mov     r4, r0
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      0x20177a4
	mov     r1, #0x8f
	lsl     r1, r1, #2
	add     r0, r4, r1
	sub     r1, #0x3c
	add     r1, r4, r1
	add     r2, r4, #0x4
	bl      Function_222ec8c
	mov     r1, #0x9e
	lsl     r1, r1, #2
	add     r0, r4, r1
	sub     r1, #0x78
	add     r1, r4, r1
	add     r2, r4, #0x4
	bl      Function_222f40c
	mov     r0, #0xe2
	mov     r1, #0x2
	lsl     r0, r0, #2
	lsl     r1, r1, #8
	add     r0, r4, r0
	add     r1, r4, r1
	add     r2, r4, #0x4
	bl      Function_22305cc
	mov     r0, #0xe5
	mov     r1, #0x2
	lsl     r0, r0, #2
	lsl     r1, r1, #8
	add     r0, r4, r0
	add     r1, r4, r1
	add     r2, r4, #0x4
	bl      Function_2230678
	mov     r0, #0xef
	mov     r1, #0x2
	lsl     r0, r0, #2
	lsl     r1, r1, #8
	add     r0, r4, r0
	add     r1, r4, r1
	add     r2, r4, #0x4
	bl      Function_2230a50
	add     r0, r4, #0x4
	bl      Function_222e23c
	mov     r0, #0x2
	lsl     r0, r0, #8
	add     r0, r4, r0
	bl      Function_222e060
	mov     r0, r5
	bl      0x2006830
	mov     r0, #0x34
	bl      0x201807c
	ldr     r0, [pc, #0x8] @ 0x222df38, (=0x3f)
	bl      0x2006514
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x222df36


.align 2


.word 0x3f @ 0x222df38
.thumb
Function_222df3c: @ 222df3c :thumb
	ldr     r3, [pc, #0x4] @ 0x222df44, (=0x222e229)
	.hword  0x1d00 @ add r0, r0, #0x4
	bx      r3
@ 0x222df42


.align 2


.word 0x222e229 @ 0x222df44
.thumb
Function_222df48: @ 222df48 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r1, #0x2
	mov     r5, r0
	lsl     r1, r1, #8
	add     r0, r5, #0x4
	add     r1, r5, r1
	mov     r2, r4
	bl      Function_222e1a4
	mov     r1, #0x8f
	lsl     r1, r1, #2
	add     r0, r5, r1
	sub     r1, #0x3c
	add     r1, r5, r1
	add     r2, r5, #0x4
	mov     r3, r4
	bl      Function_222ec94
	mov     r1, #0x9e
	lsl     r1, r1, #2
	add     r0, r5, r1
	sub     r1, #0x78
	add     r1, r5, r1
	add     r2, r5, #0x4
	mov     r3, r4
	bl      Function_222f414
	mov     r0, #0xe2
	mov     r1, #0x2
	lsl     r0, r0, #2
	lsl     r1, r1, #8
	add     r0, r5, r0
	add     r1, r5, r1
	add     r2, r5, #0x4
	mov     r3, r4
	bl      Function_22305d4
	mov     r0, #0xe5
	mov     r1, #0x2
	lsl     r0, r0, #2
	lsl     r1, r1, #8
	add     r0, r5, r0
	add     r1, r5, r1
	add     r2, r5, #0x4
	mov     r3, r4
	bl      Function_2230680
	mov     r0, #0xef
	mov     r1, #0x2
	lsl     r0, r0, #2
	lsl     r1, r1, #8
	add     r0, r5, r0
	add     r1, r5, r1
	add     r2, r5, #0x4
	mov     r3, r4
	bl      Function_2230b1c
	ldr     r0, [pc, #0xc] @ 0x222dfcc, (=0x222df3d)
	mov     r1, r5
	bl      SetMainLoopFunctionCall
	bl      0x20177a4
	pop     {r3-r5,pc}
@ 0x222dfca


.align 2


.word Function_222df3c+1 @ =0x222df3d, 0x222dfcc
.thumb
Function_222dfd0: @ 222dfd0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      0x20177a4
	mov     r1, #0x8f
	lsl     r1, r1, #2
	add     r0, r4, r1
	sub     r1, #0x3c
	add     r1, r4, r1
	add     r2, r4, #0x4
	bl      Function_222ee00
	mov     r1, #0x9e
	lsl     r1, r1, #2
	add     r0, r4, r1
	sub     r1, #0x78
	add     r1, r4, r1
	add     r2, r4, #0x4
	bl      Function_222f5f4
	mov     r0, #0xe2
	mov     r1, #0x2
	lsl     r0, r0, #2
	lsl     r1, r1, #8
	add     r0, r4, r0
	add     r1, r4, r1
	add     r2, r4, #0x4
	bl      Function_22305d8
	mov     r0, #0xe5
	mov     r1, #0x2
	lsl     r0, r0, #2
	lsl     r1, r1, #8
	add     r0, r4, r0
	add     r1, r4, r1
	add     r2, r4, #0x4
	bl      Function_2230804
	mov     r0, #0xef
	mov     r1, #0x2
	lsl     r0, r0, #2
	lsl     r1, r1, #8
	add     r0, r4, r0
	add     r1, r4, r1
	add     r2, r4, #0x4
	bl      Function_2230ba0
	add     r0, r4, #0x4
	bl      Function_222e23c
	pop     {r4,pc}
@ 0x222e03e


.align 2, 0


.thumb
Function_222e040: @ 222e040 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r2
	str     r1, [r5, #0x0]
	mov     r0, #0x80
	mov     r1, r4
	bl      Function_2023790
	str     r0, [r5, #0x2c]
	mov     r0, #0x80
	mov     r1, r4
	bl      Function_2023790
	str     r0, [r5, #0x30]
	pop     {r3-r5,pc}
@ 0x222e05e


.align 2, 0


.thumb
Function_222e060: @ 222e060 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x2c]
	bl      Function_20237bc
	ldr     r0, [r4, #0x30]
	bl      Function_20237bc
	pop     {r4,pc}
@ 0x222e072


.align 2, 0


.thumb
Function_222e074: @ 222e074 :thumb
	strb    r1, [r0, #0x5]
	strb    r2, [r0, #0x6]
	bx      lr
@ 0x222e07a


.align 2, 0


.thumb
Function_222e07c: @ 222e07c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r2
	cmp     r1, #0x0
	beq     branch_222e08c
	ldr     r0, [r5, #0x2c]
	bl      0x2023810
.thumb
branch_222e08c: @ 222e08c :thumb
	cmp     r4, #0x0
	beq     branch_222e098
	ldr     r0, [r5, #0x30]
	mov     r1, r4
	bl      0x2023810
.thumb
branch_222e098: @ 222e098 :thumb
	pop     {r3-r5,pc}
@ 0x222e09a


.align 2, 0


.thumb
Function_222e09c: @ 222e09c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	str     r0, [sp, #0x0]
	ldr     r0, [r0, #0x0]
	mov     r6, r1
	str     r2, [sp, #0x4]
	bl      0x202b370
	mov     r5, r0
	bl      0x202ad28
	blx     0x20a471c
	str     r0, [sp, #0x10]
	str     r1, [sp, #0xc]
	mov     r4, #0x0
.thumb
branch_222e0bc: @ 222e0bc :thumb
	mov     r0, r5
	mov     r1, r4
	bl      0x202af78
	cmp     r0, #0x0
	bne     branch_222e148
	mov     r0, r6
	add     r1, sp, #0x1c
	bl      0x2023b38
	mov     r7, r0
	ldr     r0, [sp, #0x1c]
	mov     r6, r1
	cmp     r0, #0x1
	bne     branch_222e142
	ldr     r0, [sp, #0xc]
	eor     r1, r0
	ldr     r0, [sp, #0x10]
	eor     r0, r7
	orr     r0, r1
	beq     branch_222e142
	mov     r0, r5
	bl      0x202ad28
	mov     r1, r7
	mov     r2, r6
	blx     0x20a4118
	cmp     r0, #0x0
	bne     branch_222e0fe
	add     sp, #0x20
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x222e0fe

.thumb
branch_222e0fe: @ 222e0fe :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, r7
	ldr     r0, [r0, #0x0]
	mov     r2, r6
	add     r3, sp, #0x18
	bl      0x2039140
	cmp     r0, #0x0
	bne     branch_222e116
	add     sp, #0x20
	mov     r0, #0x2
	pop     {r3-r7,pc}
@ 0x222e116

.thumb
branch_222e116: @ 222e116 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      0x202aed8
	mov     r1, r7
	mov     r2, r6
	blx     0x20a474c
	ldr     r2, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	bl      0x202af0c
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x8
	mov     r3, #0x2
	bl      0x202ae2c
	add     sp, #0x20
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x222e142

.thumb
branch_222e142: @ 222e142 :thumb
	add     sp, #0x20
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x222e148

.thumb
branch_222e148: @ 222e148 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x20
	blt     branch_222e0bc
	bl      ErrorHandling
	mov     r0, #0x0
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x222e158

.thumb
Function_222e158: @ 222e158 :thumb
	str     r1, [r0, #0x34]
	mov     r1, #0x1
	str     r1, [r0, #0x38]
	bx      lr
@ 0x222e160

.thumb
Function_222e160: @ 222e160 :thumb
	strb    r1, [r0, #0x7]
	bx      lr
@ 0x222e164

.thumb
Function_222e164: @ 222e164 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	add     r0, #0x8
	mov     r1, #0x0
	mov     r2, #0x24
	blx     0x20d5124
	ldr     r0, [r6, #0x0]
	bl      0x202b370
	mov     r5, #0x0
	mov     r4, r6
	mov     r7, r0
	str     r5, [r6, #0x8]
	add     r4, #0x8
.thumb
branch_222e182: @ 222e182 :thumb
	mov     r0, r7
	mov     r1, r5
	bl      0x202af78
	cmp     r0, #0x1
	bne     branch_222e19a
	ldr     r0, [r6, #0x8]
	add     r0, r6, r0
	strb    r5, [r0, #0xc]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_222e19a: @ 222e19a :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x20
	blt     branch_222e182
	pop     {r3-r7,pc}
@ 0x222e1a2


.align 2, 0


.thumb
Function_222e1a4: @ 222e1a4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	ldr     r0, [pc, #0x6c] @ 0x222e218, (=0x21bf6dc)
	mov     r1, #0x0
	mov     r4, r2
	strb    r1, [r0, #0x5]
	bl      0x201ffe8
	mov     r0, #0x59
	mov     r1, r4
	bl      0x2006c24
	mov     r1, #0x19
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	bl      Function_222e270
	mov     r0, r5
	mov     r1, r4
	bl      Function_222e290
	mov     r0, r5
	mov     r1, r4
	bl      Function_222e3d8
	mov     r0, r5
	mov     r1, r4
	bl      Function_222e5d8
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	bl      Function_222e620
	mov     r0, r5
	mov     r1, r4
	bl      Function_222e9a4
	mov     r0, r5
	mov     r1, r4
	bl      Function_222e6d8
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x1
	bl      Function_2002ac8
	mov     r0, #0x0
	bl      Function_2002ae4
	mov     r0, #0x0
	bl      Function_2002b20
	pop     {r4-r6,pc}
@ 0x222e216


.align 2


.word 0x21bf6dc @ 0x222e218
.thumb
Function_222e21c: @ 222e21c :thumb
	ldr     r3, [pc, #0x4] @ 0x222e224, (=0x20219f9)
	ldr     r0, [r0, #0x4]
	bx      r3
@ 0x222e222


.align 2


.word 0x20219f9 @ 0x222e224
.thumb
Function_222e228: @ 222e228 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	bl      0x201c2b8
	bl      0x201dcac
	bl      0x200a858
	pop     {r3,pc}
@ 0x222e23a


.align 2, 0


.thumb
Function_222e23c: @ 222e23c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_222ea0c
	mov     r0, r4
	bl      Function_222e71c
	mov     r0, r4
	bl      Function_222e6b4
	mov     r0, r4
	bl      Function_222e604
	mov     r0, r4
	bl      Function_222e570
	mov     r0, r4
	bl      Function_222e3ac
	mov     r0, #0x19
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      0x2006ca8
	pop     {r4,pc}
@ 0x222e26e


.align 2, 0


.thumb
Function_222e270: @ 222e270 :thumb
	push    {r4,lr}
	add     sp, #-0x28
	ldr     r4, [pc, #0x14] @ 0x222e28c, (=0x223228c)
	add     r3, sp, #0x0
	mov     r2, #0x5
.thumb
branch_222e27a: @ 222e27a :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_222e27a
	add     r0, sp, #0x0
	bl      0x201fe94
	add     sp, #0x28
	pop     {r4,pc}
@ 0x222e28c

.word 0x223228c @ 0x222e28c
.thumb
Function_222e290: @ 222e290 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r7, r1
	mov     r5, r0
	mov     r0, r7
	bl      0x2018340
	add     r3, sp, #0x14
	ldr     r4, [pc, #0xfc] @ 0x222e3a0, (=0x223220c)
	str     r0, [r5, #0x0]
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      0x2018368
	mov     r0, #0x0
	ldr     r6, [pc, #0xec] @ 0x222e3a4, (=0x2232390)
	ldr     r4, [pc, #0xec] @ 0x222e3a8, (=0x2232258)
	str     r0, [sp, #0x10]
.thumb
branch_222e2bc: @ 222e2bc :thumb
	ldr     r1, [r4, #0x0]
	ldr     r0, [r5, #0x0]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	mov     r2, r6
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r0, [r4, #0x0]
	mov     r1, #0x20
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	mov     r2, #0x0
	mov     r3, r7
	bl      0x2019690
	ldr     r1, [r4, #0x0]
	ldr     r0, [r5, #0x0]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      0x2019ebc
	ldr     r0, [sp, #0x10]
	add     r6, #0x1c
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	str     r0, [sp, #0x10]
	cmp     r0, #0x5
	blt     branch_222e2bc
	mov     r0, #0xe0
	str     r0, [sp, #0x0]
	str     r7, [sp, #0x4]
	mov     r1, #0x0
	add     r0, #0xb0
	ldr     r0, [r5, r0]
	mov     r2, r1
	mov     r3, r1
	bl      0x2007130
	mov     r0, #0xa0
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	str     r7, [sp, #0x4]
	add     r0, #0xf0
	ldr     r0, [r5, r0]
	mov     r2, #0x4
	mov     r3, r1
	bl      0x2007130
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r3, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, #0x19
	str     r7, [sp, #0xc]
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x0]
	mov     r1, #0x12
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x19
	str     r7, [sp, #0xc]
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x0]
	mov     r1, #0x12
	mov     r3, #0x2
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x19
	str     r7, [sp, #0xc]
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x0]
	mov     r1, #0xd
	mov     r3, #0x4
	bl      0x20070e8
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r3, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, #0x19
	str     r7, [sp, #0xc]
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x0]
	mov     r1, #0xc
	bl      0x200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x19
	str     r7, [sp, #0xc]
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x0]
	mov     r1, #0xe
	mov     r3, #0x4
	bl      0x200710c
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x222e3a0

.word 0x223220c @ 0x222e3a0
.word 0x2232390 @ 0x222e3a4
.word 0x2232258 @ 0x222e3a8
.thumb
Function_222e3ac: @ 222e3ac :thumb
	push    {r4-r6,lr}
	ldr     r5, [pc, #0x24] @ 0x222e3d4, (=0x2232258)
	mov     r6, r0
	mov     r4, #0x0
.thumb
branch_222e3b4: @ 222e3b4 :thumb
	ldr     r1, [r5, #0x0]
	ldr     r0, [r6, #0x0]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      0x2019044
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x5
	blt     branch_222e3b4
	ldr     r0, [r6, #0x0]
	bl      free
	mov     r0, #0x0
	str     r0, [r6, #0x0]
	pop     {r4-r6,pc}
@ 0x222e3d4

.word 0x2232258 @ 0x222e3d4
.thumb
Function_222e3d8: @ 222e3d8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x3c
	mov     r7, r1
	mov     r5, r0
	blx     0x20a7944
	mov     r0, #0x10
	mov     r1, r7
	bl      0x201dbec
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x7e
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r3, #0x1e
	str     r3, [sp, #0xc]
	mov     r2, r0
	str     r7, [sp, #0x10]
	bl      0x200a784
	ldr     r4, [pc, #0x160] @ 0x222e564, (=0x22321ec)
	add     r3, sp, #0x2c
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r1, [pc, #0x154] @ 0x222e568, (=0x200010)
	mov     r0, r2
	mov     r2, r1
	str     r7, [sp, #0x38]
	bl      0x201e88c
	mov     r0, #0x40
	mov     r1, r7
	bl      0x201f834
	bl      0x201e994
	bl      0x201f8e4
	mov     r1, r5
	mov     r0, #0x40
	add     r1, #0x50
	mov     r2, r7
	bl      0x20095c4
	str     r0, [r5, #0x4]
	mov     r0, r5
	mov     r3, r5
	ldr     r1, [pc, #0x12c] @ 0x222e56c, (=0x2232460)
	add     r0, #0x8
	mov     r2, #0x1
	add     r3, #0x50
	bl      0x200a8b0
	mov     r6, #0x0
	mov     r4, r5
.thumb
branch_222e44e: @ 222e44e :thumb
	mov     r0, #0x40
	mov     r1, r6
	mov     r2, r7
	bl      0x2009714
	mov     r1, #0x5e
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x4
	blt     branch_222e44e
	mov     r0, #0x64
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r7, [sp, #0x8]
	ldr     r0, [r5, r1]
	add     r1, #0x18
	ldr     r1, [r5, r1]
	mov     r2, #0xf
	mov     r3, #0x0
	bl      0x2009a4c
	mov     r1, #0x75
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r2, #0x64
	str     r2, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x5
	str     r0, [sp, #0x8]
	str     r7, [sp, #0xc]
	sub     r1, #0x58
	ldr     r0, [r5, r1]
	lsl     r1, r2, #2
	mov     r2, #0x0
	ldr     r1, [r5, r1]
	mov     r3, r2
	bl      0x2009b04
	mov     r1, #0x76
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r2, #0x64
	str     r2, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	str     r7, [sp, #0x8]
	sub     r1, #0x58
	ldr     r0, [r5, r1]
	lsl     r1, r2, #2
	ldr     r1, [r5, r1]
	mov     r2, #0x10
	mov     r3, #0x0
	bl      0x2009bc4
	mov     r1, #0x77
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r2, #0x64
	str     r2, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	str     r7, [sp, #0x8]
	sub     r1, #0x58
	ldr     r0, [r5, r1]
	lsl     r1, r2, #2
	ldr     r1, [r5, r1]
	mov     r2, #0x11
	mov     r3, #0x0
	bl      0x2009bc4
	mov     r1, #0x1e
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	sub     r1, #0xc
	ldr     r0, [r5, r1]
	bl      0x200a3dc
	cmp     r0, #0x0
	bne     branch_222e4f8
	bl      ErrorHandling
.thumb
branch_222e4f8: @ 222e4f8 :thumb
	mov     r0, #0x76
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      0x200a640
	cmp     r0, #0x0
	bne     branch_222e50a
	bl      ErrorHandling
.thumb
branch_222e50a: @ 222e50a :thumb
	mov     r0, #0x75
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      0x2009d4c
	mov     r0, #0x76
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      0x2009d4c
	mov     r1, #0x64
	mov     r0, r1
	mov     r3, #0x5e
	str     r1, [sp, #0x0]
	sub     r0, #0x65
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	lsl     r3, r3, #2
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
	add     r3, #0x38
	str     r2, [sp, #0x20]
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
	add     r0, r5, r3
	mov     r2, r1
	mov     r3, r1
	bl      0x20093b4
	add     sp, #0x3c
	pop     {r4-r7,pc}
@ 0x222e562


.align 2


.word 0x22321ec @ 0x222e564
.word 0x200010 @ 0x222e568
.word 0x2232460 @ 0x222e56c
.thumb
Function_222e570: @ 222e570 :thumb
	push    {r3-r7,lr}
	mov     r1, #0x75
	lsl     r1, r1, #2
	str     r0, [sp, #0x0]
	ldr     r0, [r0, r1]
	bl      0x200a4e4
	mov     r1, #0x76
	ldr     r0, [sp, #0x0]
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	bl      0x200a6dc
	mov     r7, #0x5e
	lsl     r7, r7, #2
	mov     r6, r7
	ldr     r5, [sp, #0x0]
	mov     r4, #0x0
	add     r6, #0x5c
.thumb
branch_222e596: @ 222e596 :thumb
	ldr     r0, [r5, r7]
	ldr     r1, [r5, r6]
	bl      0x2009d68
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_222e596
	mov     r6, #0x5e
	ldr     r4, [sp, #0x0]
	mov     r5, #0x0
	lsl     r6, r6, #2
.thumb
branch_222e5ae: @ 222e5ae :thumb
	ldr     r0, [r4, r6]
	bl      0x2009754
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, #0x4
	blt     branch_222e5ae
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x4]
	bl      0x2021964
	bl      0x201e958
	bl      0x201f8b4
	bl      0x200a878
	bl      0x201dc3c
	pop     {r3-r7,pc}
@ 0x222e5d6


.align 2, 0


.thumb
Function_222e5d8: @ 222e5d8 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	bl      0x200b358
	mov     r1, #0x62
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r2, [pc, #0x14] @ 0x222e600, (=0x2a3)
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, r4
	bl      Function_200b144
	mov     r1, #0x63
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	pop     {r3-r5,pc}
@ 0x222e5fe


.align 2


.word 0x2a3 @ 0x222e600
.thumb
Function_222e604: @ 222e604 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x63
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_200b190
	mov     r0, #0x62
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x200b3f0
	pop     {r4,pc}
@ 0x222e61e


.align 2, 0


.thumb
Function_222e620: @ 222e620 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r1, #0x0]
	mov     r4, r2
	bl      0x2025e44
	bl      0x2027b50
	mov     r6, r0
	mov     r0, #0x0
	mov     r1, #0xe0
	mov     r2, r4
	bl      0x2002e98
	lsl     r0, r6, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	str     r4, [sp, #0x4]
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	mov     r2, #0xa
	mov     r3, #0x8
	bl      0x200dd0c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r4, [sp, #0x4]
	mov     r1, #0x1
	ldr     r0, [r5, #0x0]
	mov     r2, r1
	mov     r3, #0x9
	bl      0x200daa4
	mov     r0, #0x65
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      0x201a7a0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x18
	str     r0, [sp, #0x4]
	mov     r0, #0x3
	str     r0, [sp, #0x8]
	mov     r0, #0x7
	str     r0, [sp, #0xc]
	mov     r0, #0x28
	mov     r1, #0x65
	str     r0, [sp, #0x10]
	lsl     r1, r1, #2
	mov     r2, #0x1
	ldr     r0, [r5, #0x0]
	add     r1, r5, r1
	mov     r3, r2
	bl      0x201a7e8
	mov     r0, #0x80
	mov     r1, r4
	bl      Function_2023790
	mov     r1, #0x69
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x80
	mov     r1, r4
	bl      Function_2023790
	mov     r1, #0x6a
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x222e6b2


.align 2, 0


.thumb
Function_222e6b4: @ 222e6b4 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x69
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_20237bc
	mov     r0, #0x6a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_20237bc
	mov     r0, #0x65
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_201a8fc
	pop     {r4,pc}
@ 0x222e6d8


.thumb
Function_222e6d8: @ 222e6d8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	str     r1, [sp, #0x8]
	mov     r1, #0x7d
	lsl     r1, r1, #2
	ldr     r4, [pc, #0x34] @ 0x222e718, (=Unknown_22321a0)
	str     r0, [sp, #0x4]
	mov     r7, #0x0
	add     r6, r0, r1
	mov     r5, r0
branch_222e6ec: @ 222e6ec :thumb
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x4]
	str     r0, [sp, #0x0]
	mov     r0, #0x19
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	ldrb    r1, [r4, #0x0]
	mov     r2, #0x0
	mov     r3, r6
	bl      0x20071d0
	mov     r1, #0x7b
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r7, #0x2
	blt     branch_222e6ec
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x222e718

.word Unknown_22321a0 @ 0x222e718



.thumb
Function_222e71c: @ 222e71c :thumb
	push    {r4-r6,lr}
	mov     r6, #0x7b
	mov     r5, r0
	mov     r4, #0x0
	lsl     r6, r6, #2
branch_222e726: @ 222e726 :thumb
	ldr     r0, [r5, r6]
	bl      free
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x2
	blt     branch_222e726
	pop     {r4-r6,pc}
@ 0x222e736


.align 2, 0


.thumb
Function_222e738: @ 222e738 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x6b
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r4, r1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d724
	cmp     r0, #0x1
	bne     branch_222e760
	mov     r0, #0x6b
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d730
.thumb
branch_222e760: @ 222e760 :thumb
	mov     r0, #0x65
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x0
	bl      Function_201ada4
	mov     r2, #0x63
	lsl     r2, r2, #2
	ldr     r0, [r5, r2]
	add     r2, #0x1c
	ldr     r2, [r5, r2]
	mov     r1, r4
	bl      Function_200b1b8
	mov     r2, #0x62
	lsl     r2, r2, #2
	mov     r1, r2
	ldr     r0, [r5, r2]
	add     r1, #0x1c
	add     r2, #0x20
	ldr     r1, [r5, r1]
	ldr     r2, [r5, r2]
	bl      Function_200c388
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x28] @ 0x222e7c4, (=0xf0200)
	mov     r2, #0x65
	str     r0, [sp, #0x8]
	mov     r3, #0x0
	lsl     r2, r2, #2
	add     r0, r5, r2
	str     r3, [sp, #0xc]
	add     r2, #0x10
	ldr     r2, [r5, r2]
	mov     r1, #0x1
	bl      0x201d78c
	mov     r1, #0x6b
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	sub     r1, #0x18
	add     r0, r5, r1
	bl      Function_201a9a4
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x222e7c2


.align 2


.word 0xf0200 @ 0x222e7c4
.thumb
Function_222e7c8: @ 222e7c8 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x6b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d724
	cmp     r0, #0x1
	bne     branch_222e7ec
	mov     r0, #0x6b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d730
.thumb
branch_222e7ec: @ 222e7ec :thumb
	mov     r0, #0x65
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      0x201ad10
	pop     {r4,pc}
@ 0x222e7f8

.thumb
Function_222e7f8: @ 222e7f8 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r6, r2
	mov     r4, r1
	mov     r5, r0
	ldr     r2, [pc, #0x74] @ 0x222e878, (=0x5f5e100)
	mov     r0, r4
	mov     r1, r6
	mov     r3, #0x0
	blx     0x20e1ed4
	mov     r2, r0
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	mov     r0, #0x62
	str     r1, [sp, #0x4]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r3, #0x4
	bl      0x200b60c
	ldr     r2, [pc, #0x54] @ 0x222e87c, (=0x2710)
	mov     r0, r4
	mov     r1, r6
	mov     r3, #0x0
	blx     0x20e1ed4
	ldr     r2, [pc, #0x48] @ 0x222e87c, (=0x2710)
	mov     r3, #0x0
	blx     0x20e1ee0
	mov     r1, #0x2
	mov     r2, r0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x62
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r3, #0x4
	bl      0x200b60c
	ldr     r2, [pc, #0x2c] @ 0x222e87c, (=0x2710)
	mov     r0, r4
	mov     r1, r6
	mov     r3, #0x0
	blx     0x20e1ee0
	mov     r2, r0
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x62
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x3
	mov     r3, #0x4
	bl      0x200b60c
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x222e876


.align 2


.word 0x5f5e100 @ 0x222e878
.word 0x2710 @ 0x222e87c
.thumb
Function_222e880: @ 222e880 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	mov     r5, r3
	mov     r0, r1
	mov     r6, r2
	bl      0x202b370
	mov     r7, r0
	mov     r0, r5
	bl      0x2025e6c
	mov     r5, r0
	mov     r0, r7
	mov     r1, r6
	bl      0x202aef0
	mov     r1, r0
	mov     r0, r5
	bl      0x2025ec0
	mov     r0, #0x62
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	mov     r2, r5
	bl      0x200b498
	mov     r0, r5
	bl      free
	pop     {r3-r7,pc}
@ 0x222e8be


.align 2, 0


.thumb
Function_222e8c0: @ 222e8c0 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, r3
	mov     r7, r2
	bl      0x2025e6c
	mov     r4, r0
	mov     r0, r6
	bl      0x202b370
	mov     r1, r7
	bl      0x202af34
	mov     r1, r0
	mov     r0, r4
	bl      0x2025ec0
	mov     r0, #0x62
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	mov     r2, r4
	bl      0x200b498
	mov     r0, r4
	bl      free
	pop     {r3-r7,pc}
@ 0x222e8fa


.align 2, 0


.thumb
Function_222e8fc: @ 222e8fc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r4, r2
	mov     r0, r1
	bl      0x202b370
	mov     r1, r4
	mov     r2, #0x6
	mov     r7, r0
	mov     r6, #0x1
	bl      0x202ad2c
	mov     r2, r0
	bne     branch_222e91c
	mov     r6, #0x0
.thumb
branch_222e91c: @ 222e91c :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x62
	lsl     r0, r0, #2
	mov     r1, #0x2
	ldr     r0, [r5, r0]
	mov     r3, r1
	bl      0x200b60c
	mov     r0, r7
	mov     r1, r4
	mov     r2, #0x4
	bl      0x202ad2c
	mov     r1, #0x0
	mov     r2, r0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x62
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r3, #0x4
	bl      0x200b60c
	mov     r0, r7
	mov     r1, r4
	mov     r2, #0x5
	bl      0x202ad2c
	mov     r2, r0
	mov     r0, #0x62
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      0x200c2e0
	mov     r0, r6
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x222e970

.thumb
Function_222e970: @ 222e970 :thumb
	push    {r3,lr}
	add     sp, #-0x8
	mov     r2, r1
	mov     r1, #0x1
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r1, #0x62
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	mov     r1, #0x0
	mov     r3, #0x4
	bl      0x200b60c
	add     sp, #0x8
	pop     {r3,pc}
@ 0x222e98e


.align 2, 0


.thumb
Function_222e990: @ 222e990 :thumb
	mov     r2, r1
	mov     r1, #0x62
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	ldr     r3, [pc, #0x4] @ 0x222e9a0, (=0x200c0b1)
	mov     r1, #0x0
	bx      r3
@ 0x222e99e


.align 2


.word 0x200c0b1 @ 0x222e9a0
.thumb
Function_222e9a4: @ 222e9a4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	str     r1, [sp, #0x4]
	mov     r1, #0x1b
	ldr     r4, [pc, #0x58] @ 0x222ea08, (=0x22324a8)
	lsl     r1, r1, #4
	str     r0, [sp, #0x0]
	mov     r5, r0
	add     r0, r0, r1
	mov     r6, #0x0
	mov     r7, r4
	str     r0, [sp, #0x8]
.thumb
branch_222e9bc: @ 222e9bc :thumb
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x4]
	str     r0, [r4, #0x0]
	ldr     r0, [sp, #0x8]
	str     r0, [r4, #0x4]
	ldr     r0, [sp, #0x4]
	str     r0, [r4, #0x2c]
	mov     r0, r7
	bl      0x2021aa0
	mov     r1, #0x79
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, r1
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      0x2021cc8
	mov     r0, #0x79
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x2021cac
	mov     r0, #0x79
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r6
	bl      0x2021d6c
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x30
	add     r7, #0x30
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x2
	blt     branch_222e9bc
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x222ea08

.word 0x22324a8 @ 0x222ea08
.thumb
Function_222ea0c: @ 222ea0c :thumb
	push    {r4-r6,lr}
	mov     r6, #0x79
	mov     r5, r0
	mov     r4, #0x0
	lsl     r6, r6, #2
.thumb
branch_222ea16: @ 222ea16 :thumb
	ldr     r0, [r5, r6]
	bl      0x2021bd4
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x2
	blt     branch_222ea16
	pop     {r4-r6,pc}
@ 0x222ea26


.align 2, 0


.thumb
Function_222ea28: @ 222ea28 :thumb
	push    {r3-r7,lr}
	mov     r7, #0x79
	mov     r5, r0
	mov     r6, r1
	mov     r4, #0x0
	lsl     r7, r7, #2
.thumb
branch_222ea34: @ 222ea34 :thumb
	ldr     r0, [r5, r7]
	mov     r1, r6
	bl      0x2021cac
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x2
	blt     branch_222ea34
	pop     {r3-r7,pc}
@ 0x222ea46


.align 2, 0


.thumb
Function_222ea48: @ 222ea48 :thumb
	push    {r3-r7,lr}
	mov     r7, #0x79
	mov     r5, r0
	mov     r6, r1
	mov     r4, #0x0
	lsl     r7, r7, #2
.thumb
branch_222ea54: @ 222ea54 :thumb
	ldr     r0, [r5, r7]
	mov     r1, r6
	bl      0x2021cc8
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x2
	blt     branch_222ea54
	pop     {r3-r7,pc}
@ 0x222ea66


.align 2, 0


.thumb
Function_222ea68: @ 222ea68 :thumb
	push    {r3,lr}
	bl      Function_222ec94
	pop     {r3,pc}
@ 0x222ea70

.thumb
Function_222ea70: @ 222ea70 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r4, r1
	mov     r6, r3
	ldrb    r3, [r4, #0x4]
	mov     r5, r0
	mov     r7, r2
	cmp     r3, #0xa
	bhi     branch_222eb56
	add     r3, r3, r3
	add     r3, pc
	ldrh    r3, [r3, #0x6]
	lsl     r3, r3, #16
	asr     r3, r3, #16
	add     pc, r3
@ 0x222ea8e

Jumppoints_222ea8e:
.hword branch_222eaa4 - Jumppoints_222ea8e - 2
.hword branch_222eac4 - Jumppoints_222ea8e - 2
.hword branch_222ead2 - Jumppoints_222ea8e - 2
.hword branch_222eadc - Jumppoints_222ea8e - 2
.hword branch_222eb30 - Jumppoints_222ea8e - 2
.hword branch_222eb4e - Jumppoints_222ea8e - 2
.hword branch_222eb5e - Jumppoints_222ea8e - 2
.hword branch_222eb7e - Jumppoints_222ea8e - 2
.hword branch_222ebee - Jumppoints_222ea8e - 2
.hword branch_222ec0c - Jumppoints_222ea8e - 2
.hword branch_222ec5e - Jumppoints_222ea8e - 2
.thumb
branch_222eaa4: @ 222eaa4 :thumb
	bl      Function_222ee20
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	mov     r1, #0x11
	mov     r2, r1
	mov     r3, r0
	str     r6, [sp, #0x8]
	bl      0x200f174
	mov     r0, #0x1
	strb    r0, [r4, #0x4]
	b       branch_222ec7a
@ 0x222eac4

.thumb
branch_222eac4: @ 222eac4 :thumb
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_222eb56
	mov     r0, #0x3
	strb    r0, [r4, #0x4]
	b       branch_222ec7a
@ 0x222ead2

.thumb
branch_222ead2: @ 222ead2 :thumb
	bl      Function_222ee20
	mov     r0, #0x3
	strb    r0, [r4, #0x4]
	b       branch_222ec7a
@ 0x222eadc

.thumb
branch_222eadc: @ 222eadc :thumb
	bl      Function_222ee84
	str     r0, [sp, #0x10]
	cmp     r0, #0x1
	bne     branch_222eb56
	mov     r0, r5
	mov     r1, r4
	bl      Function_222f068
	cmp     r0, #0x1
	bne     branch_222eb18
	mov     r0, r5
	mov     r1, r4
	bl      Function_222ef4c
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x3
	beq     branch_222eb04
	cmp     r0, #0x1
	bne     branch_222eb0a
.thumb
branch_222eb04: @ 222eb04 :thumb
	mov     r0, #0x4
	strb    r0, [r4, #0x4]
	b       branch_222ec7a
@ 0x222eb0a

.thumb
branch_222eb0a: @ 222eb0a :thumb
	mov     r0, r5
	mov     r1, r7
	bl      Function_222ef64
	add     sp, #0x14
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x222eb18

.thumb
branch_222eb18: @ 222eb18 :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x1
	bne     branch_222eb56
	mov     r0, r5
	mov     r1, r7
	mov     r2, #0x35
	mov     r3, r6
	bl      Function_222efbc
	mov     r0, #0xa
	strb    r0, [r4, #0x4]
	b       branch_222ec7a
@ 0x222eb30

.thumb
branch_222eb30: @ 222eb30 :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	mov     r1, #0x10
	str     r6, [sp, #0x8]
	mov     r2, r1
	mov     r3, r0
	bl      0x200f174
	ldrb    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
	b       branch_222ec7a
@ 0x222eb4e

.thumb
branch_222eb4e: @ 222eb4e :thumb
	bl      0x200f2ac
	cmp     r0, #0x1
	beq     branch_222eb58
.thumb
branch_222eb56: @ 222eb56 :thumb
	b       branch_222ec7a
@ 0x222eb58

.thumb
branch_222eb58: @ 222eb58 :thumb
	add     sp, #0x14
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x222eb5e

.thumb
branch_222eb5e: @ 222eb5e :thumb
	bl      Function_222ee20
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	mov     r1, #0x11
	mov     r2, r1
	mov     r3, r0
	str     r6, [sp, #0x8]
	bl      0x200f174
	mov     r0, #0x7
	strb    r0, [r4, #0x4]
	b       branch_222ec7a
@ 0x222eb7e

.thumb
branch_222eb7e: @ 222eb7e :thumb
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_222ec7a
	mov     r0, r6
	bl      0x2025e6c
	str     r0, [sp, #0xc]
	ldr     r0, [r4, #0x2c]
	bl      0x2023e2c
	mov     r1, r0
	ldr     r0, [sp, #0xc]
	bl      0x2025ec0
	mov     r0, #0x62
	lsl     r0, r0, #2
	ldr     r0, [r7, r0]
	ldr     r2, [sp, #0xc]
	mov     r1, #0x0
	bl      0x200b498
	ldr     r0, [sp, #0xc]
	bl      free
	ldr     r0, [r4, #0x30]
	add     r1, sp, #0x10
	bl      0x2023b38
	mov     r3, r0
	ldr     r0, [sp, #0x10]
	mov     r2, r1
	cmp     r0, #0x0
	beq     branch_222ebdc
	mov     r0, r7
	mov     r1, r3
	bl      Function_222e7f8
	mov     r0, r5
	mov     r1, r7
	mov     r2, #0x31
	mov     r3, r6
	bl      Function_222efbc
	mov     r0, #0x8
	strb    r0, [r4, #0x4]
	b       branch_222ec7a
@ 0x222ebdc

.thumb
branch_222ebdc: @ 222ebdc :thumb
	mov     r0, r5
	mov     r1, r7
	mov     r2, #0x32
	mov     r3, r6
	bl      Function_222efbc
	mov     r0, #0xa
	strb    r0, [r4, #0x4]
	b       branch_222ec7a
@ 0x222ebee

.thumb
branch_222ebee: @ 222ebee :thumb
	bl      Function_222f038
	cmp     r0, #0x0
	beq     branch_222ec7a
	str     r6, [sp, #0x0]
	ldr     r0, [r7, #0x0]
	ldr     r1, [pc, #0x84] @ 0x222ec80, (=0x22321ca)
	mov     r2, #0x1
	mov     r3, #0x9
	bl      0x2002100
	str     r0, [r5, #0x2c]
	mov     r0, #0x9
	strb    r0, [r4, #0x4]
	b       branch_222ec7a
@ 0x222ec0c

.thumb
branch_222ec0c: @ 222ec0c :thumb
	ldr     r0, [r5, #0x2c]
	mov     r1, r6
	bl      0x2002114
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_222ec24
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r0, r1
	beq     branch_222ec7a
	b       branch_222ec30
@ 0x222ec24

.thumb
branch_222ec24: @ 222ec24 :thumb
	mov     r0, r5
	bl      Function_222f050
	mov     r0, #0x3
	strb    r0, [r4, #0x4]
	b       branch_222ec7a
@ 0x222ec30

.thumb
branch_222ec30: @ 222ec30 :thumb
	ldr     r1, [r4, #0x30]
	ldr     r2, [r4, #0x2c]
	mov     r0, r4
	bl      Function_222e09c
	mov     r2, r0
	bne     branch_222ec4a
	mov     r0, r5
	bl      Function_222f050
	mov     r0, #0x3
	strb    r0, [r4, #0x4]
	b       branch_222ec7a
@ 0x222ec4a

.thumb
branch_222ec4a: @ 222ec4a :thumb
	ldr     r3, [pc, #0x38] @ 0x222ec84, (=0x22321a4)
	mov     r0, r5
	ldrb    r2, [r3, r2]
	mov     r1, r7
	mov     r3, r6
	bl      Function_222efbc
	mov     r0, #0xa
	strb    r0, [r4, #0x4]
	b       branch_222ec7a
@ 0x222ec5e

.thumb
branch_222ec5e: @ 222ec5e :thumb
	bl      Function_222f038
	cmp     r0, #0x0
	beq     branch_222ec7a
	ldr     r0, [pc, #0x20] @ 0x222ec88, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_222ec7a
	mov     r0, r5
	bl      Function_222f050
	mov     r0, #0x3
	strb    r0, [r4, #0x4]
.thumb
branch_222ec7a: @ 222ec7a :thumb
	mov     r0, #0x0
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x222ec80

.word 0x22321ca @ 0x222ec80
.word 0x22321a4 @ 0x222ec84
.word 0x21bf67c @ 0x222ec88
.thumb
Function_222ec8c: @ 222ec8c :thumb
	ldr     r3, [pc, #0x0] @ 0x222ec90, (=0x222ee01)
	bx      r3
@ 0x222ec90

.word Function_222ee00+1 @ =0x222ee01, 0x222ec90
.thumb
Function_222ec94: @ 222ec94 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	str     r0, [sp, #0x14]
	.hword  0x1d00 @ add r0, r0, #0x4
	mov     r5, r1
	str     r2, [sp, #0x18]
	str     r3, [sp, #0x1c]
	bl      0x201a7a0
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x1a
	str     r0, [sp, #0x4]
	mov     r0, #0x14
	str     r0, [sp, #0x8]
	mov     r0, #0x7
	str     r0, [sp, #0xc]
	mov     r0, #0x1
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x18]
	ldr     r1, [sp, #0x14]
	mov     r2, #0x3
	ldr     r0, [r0, #0x0]
	.hword  0x1d09 @ add r1, r1, #0x4
	mov     r3, r2
	bl      0x201a7e8
	ldr     r0, [sp, #0x14]
	add     r0, #0x1c
	bl      0x201a7a0
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0x7
	str     r0, [sp, #0xc]
	mov     r0, #0x70
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x18]
	ldr     r1, [sp, #0x14]
	ldr     r0, [r0, #0x0]
	add     r1, #0x1c
	mov     r2, #0x1
	mov     r3, #0x2
	bl      0x201a7e8
	ldr     r0, [sp, #0x14]
	mov     r1, #0x0
	.hword  0x1d00 @ add r0, r0, #0x4
	bl      Function_201ada4
	ldr     r0, [sp, #0x14]
	mov     r1, #0x0
	add     r0, #0x1c
	bl      Function_201ada4
	ldr     r1, [sp, #0x1c]
	mov     r0, #0x80
	bl      Function_2023790
	ldr     r1, [sp, #0x14]
	str     r0, [r1, #0x38]
	ldr     r0, [r5, #0x0]
	bl      0x2025e44
	bl      0x2027ac0
	ldr     r1, [sp, #0x14]
	str     r0, [r1, #0x34]
	ldr     r1, [sp, #0x1c]
	mov     r0, #0x80
	bl      Function_2023790
	mov     r4, r0
	ldr     r1, [sp, #0x1c]
	mov     r0, #0x80
	bl      Function_2023790
	str     r0, [sp, #0x24]
	ldr     r0, [r5, #0x0]
	bl      LoadTrainerDataAdress
	mov     r2, r0
	mov     r1, #0x62
	ldr     r0, [sp, #0x18]
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	mov     r1, #0x0
	bl      0x200b498
	mov     r0, #0x0
	str     r0, [sp, #0x20]
	ldr     r0, [pc, #0x9c] @ 0x222edf0, (=0x2232424)
	ldr     r7, [pc, #0x9c] @ 0x222edf4, (=0x22321fc)
	ldr     r5, [pc, #0xa0] @ 0x222edf8, (=0x223241c)
	str     r0, [sp, #0x2c]
.thumb
branch_222ed5a: @ 222ed5a :thumb
	mov     r0, #0x63
	ldr     r1, [sp, #0x18]
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	ldr     r1, [sp, #0x2c]
	ldr     r2, [sp, #0x24]
	ldrb    r1, [r1, #0x0]
	bl      Function_200b1b8
	mov     r0, #0x62
	ldr     r1, [sp, #0x18]
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	ldr     r2, [sp, #0x24]
	mov     r1, r4
	bl      Function_200c388
	mov     r0, #0x0
	mov     r1, r4
	mov     r2, r0
	mov     r3, #0xd0
	bl      0x2002eec
	mov     r12, r0
	ldr     r0, [r7, #0x0]
	mov     r6, r12
	str     r0, [sp, #0x28]
	ldrb    r0, [r5, #0x0]
	ldr     r3, [sp, #0x28]
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x5c] @ 0x222edfc, (=0x10200)
	mov     r2, r4
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x14]
	add     r3, r3, r6
	.hword  0x1d00 @ add r0, r0, #0x4
	bl      0x201d78c
	ldr     r0, [sp, #0x2c]
	.hword  0x1d3f @ add r7, r7, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x2c]
	ldr     r0, [sp, #0x20]
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x20]
	cmp     r0, #0x4
	blt     branch_222ed5a
	mov     r0, r4
	bl      Function_20237bc
	ldr     r0, [sp, #0x24]
	bl      Function_20237bc
	ldr     r0, [sp, #0x1c]
	mov     r1, #0x19
	str     r0, [sp, #0x0]
	ldr     r3, [sp, #0x14]
	ldr     r0, [sp, #0x18]
	lsl     r1, r1, #4
	ldr     r0, [r0, r1]
	mov     r1, #0x1
	mov     r2, #0x0
	add     r3, #0x18
	bl      0x20071d0
	ldr     r1, [sp, #0x14]
	str     r0, [r1, #0x14]
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x222edf0

.word 0x2232424 @ 0x222edf0
.word 0x22321fc @ 0x222edf4
.word 0x223241c @ 0x222edf8
.word 0x10200 @ 0x222edfc
.thumb
Function_222ee00: @ 222ee00 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x38]
	bl      Function_20237bc
	add     r0, r4, #0x4
	bl      Function_201a8fc
	mov     r0, r4
	add     r0, #0x1c
	bl      Function_201a8fc
	ldr     r0, [r4, #0x14]
	bl      free
	pop     {r4,pc}
@ 0x222ee20

.thumb
Function_222ee20: @ 222ee20 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r2
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_222e738
	add     r0, r5, #0x4
	bl      Function_201a9a4
	ldr     r2, [r5, #0x18]
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	ldrh    r0, [r2, #0x0]
	mov     r1, #0x2
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	ldrh    r0, [r2, #0x2]
	add     r2, #0xc
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	bl      0x20198c0
	mov     r2, #0x0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2
	mov     r3, r2
	bl      Function_201c63c
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_201c63c
	mov     r0, r5
	mov     r1, r4
	bl      Function_222ef08
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2
	bl      0x201c3c0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x222ee82


.align 2, 0


.thumb
Function_222ee84: @ 222ee84 :thumb
	push    {r4-r6,lr}
	ldr     r6, [pc, #0x74] @ 0x222eefc, (=0x21bf67c)
	mov     r5, r0
	ldr     r1, [r6, #0x48]
	mov     r4, r2
	mov     r0, #0x1
	mov     r3, r1
	mov     r2, #0x0
	tst     r3, r0
	beq     branch_222eea2
	ldr     r0, [pc, #0x64] @ 0x222ef00, (=0x5dd)
	bl      Function_2005748
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x222eea2

.thumb
branch_222eea2: @ 222eea2 :thumb
	mov     r3, #0x2
	tst     r1, r3
	beq     branch_222eeb6
	ldr     r0, [pc, #0x54] @ 0x222ef00, (=0x5dd)
	bl      Function_2005748
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x222eeb6

.thumb
branch_222eeb6: @ 222eeb6 :thumb
	ldr     r1, [r6, #0x4c]
	mov     r3, #0x40
	tst     r3, r1
	beq     branch_222eecc
	ldr     r1, [r5, #0x0]
	cmp     r1, #0x0
	beq     branch_222eede
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r5, #0x0]
	mov     r2, r0
	b       branch_222eede
@ 0x222eecc

.thumb
branch_222eecc: @ 222eecc :thumb
	mov     r3, #0x80
	tst     r1, r3
	beq     branch_222eede
	ldr     r1, [r5, #0x0]
	cmp     r1, #0x3
	bcs     branch_222eede
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r5, #0x0]
	mov     r2, r0
.thumb
branch_222eede: @ 222eede :thumb
	cmp     r2, #0x1
	bne     branch_222eef8
	ldr     r0, [pc, #0x20] @ 0x222ef04, (=0x5e5)
	bl      Function_2005748
	mov     r0, r5
	mov     r1, r4
	bl      Function_222ef08
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2
	bl      0x201c3c0
.thumb
branch_222eef8: @ 222eef8 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x222eefc

.word 0x21bf67c @ 0x222eefc
.word 0x5dd @ 0x222ef00
.word 0x5e5 @ 0x222ef04
.thumb
Function_222ef08: @ 222ef08 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	ldr     r5, [pc, #0x38] @ 0x222ef48, (=0x22321c2)
	mov     r6, r0
	mov     r7, r1
	mov     r4, #0x0
.thumb
branch_222ef14: @ 222ef14 :thumb
	ldr     r0, [r6, #0x0]
	cmp     r0, r4
	bne     branch_222ef1e
	mov     r1, #0x1
	b       branch_222ef20
@ 0x222ef1e

.thumb
branch_222ef1e: @ 222ef1e :thumb
	mov     r1, #0x0
.thumb
branch_222ef20: @ 222ef20 :thumb
	mov     r0, #0x1c
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x4]
	lsl     r0, r1, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	ldrb    r2, [r5, #0x0]
	ldrb    r3, [r5, #0x1]
	ldr     r0, [r7, #0x0]
	mov     r1, #0x2
	bl      0x2019e2c
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r4, #0x4
	blt     branch_222ef14
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x222ef46


.align 2


.word 0x22321c2 @ 0x222ef48
.thumb
Function_222ef4c: @ 222ef4c :thumb
	mov     r2, r0
	mov     r0, r1
	ldr     r2, [r2, #0x0]
	ldr     r1, [pc, #0x8] @ 0x222ef5c, (=0x2232420)
	ldr     r3, [pc, #0x8] @ 0x222ef60, (=0x222e075)
	ldrb    r1, [r1, r2]
	mov     r2, #0x0
	bx      r3
@ 0x222ef5c

.word 0x2232420 @ 0x222ef5c
.word Function_222e074+1 @ =0x222e075, 0x222ef60
.thumb
Function_222ef64: @ 222ef64 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	bl      Function_222e7c8
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x18
	str     r0, [sp, #0x8]
	str     r2, [sp, #0xc]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2
	mov     r3, r2
	bl      0x2019cb8
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2
	bl      0x201c3c0
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x18
	str     r0, [sp, #0x8]
	str     r2, [sp, #0xc]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x3
	mov     r3, r2
	bl      0x2019cb8
	ldr     r0, [r4, #0x0]
	mov     r1, #0x3
	bl      0x201c3c0
	add     r0, r5, #0x4
	bl      0x201ad10
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x222efbc

.thumb
Function_222efbc: @ 222efbc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r4, r1
	mov     r0, #0x80
	mov     r1, r3
	mov     r7, r2
	bl      Function_2023790
	mov     r6, r0
	mov     r0, r5
	add     r0, #0x1c
	mov     r1, #0xf
	bl      Function_201ada4
	mov     r0, #0x63
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, r7
	mov     r2, r6
	bl      Function_200b1b8
	mov     r0, #0x62
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	ldr     r1, [r5, #0x38]
	mov     r2, r6
	bl      Function_200c388
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	ldr     r0, [r5, #0x34]
	mov     r1, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x30] @ 0x222f034, (=0x10200)
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	mov     r0, r5
	ldr     r2, [r5, #0x38]
	add     r0, #0x1c
	bl      0x201d78c
	str     r0, [r5, #0x30]
	mov     r0, r5
	add     r0, #0x1c
	mov     r1, #0x1
	mov     r2, #0xa
	mov     r3, #0x8
	bl      0x200e060
	add     r5, #0x1c
	mov     r0, r5
	bl      Function_201a9a4
	mov     r0, r6
	bl      Function_20237bc
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x222f032


.align 2


.word 0x10200 @ 0x222f034
.thumb
Function_222f038: @ 222f038 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x30]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d724
	cmp     r0, #0x0
	bne     branch_222f04c
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x222f04c

.thumb
branch_222f04c: @ 222f04c :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x222f050

.thumb
Function_222f050: @ 222f050 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x1c
	mov     r1, #0x1
	bl      0x200e084
	add     r4, #0x1c
	mov     r0, r4
	bl      0x201ad10
	pop     {r4,pc}
@ 0x222f066


.align 2, 0


.thumb
Function_222f068: @ 222f068 :thumb
	push    {r3-r5,lr}
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_222f092
	ldr     r0, [r1, #0x0]
	bl      0x202b370
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_222f07a: @ 222f07a :thumb
	mov     r0, r5
	mov     r1, r4
	bl      0x202af78
	cmp     r0, #0x0
	bne     branch_222f08a
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x222f08a

.thumb
branch_222f08a: @ 222f08a :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x20
	blt     branch_222f07a
	b       branch_222f096
@ 0x222f092

.thumb
branch_222f092: @ 222f092 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x222f096

.thumb
branch_222f096: @ 222f096 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x222f09a


.align 2, 0


.thumb
Function_222f09c: @ 222f09c :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	mov     r6, r2
	mov     r7, r3
	bl      0x2025e44
	bl      0x2027ac0
	mov     r1, r5
	add     r1, #0xe0
	str     r0, [r1, #0x0]
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	mov     r3, r7
	bl      Function_222f414
	pop     {r3-r7,pc}
@ 0x222f0c4

.thumb
Function_222f0c4: @ 222f0c4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r4, r1
	ldrb    r5, [r4, #0x4]
	mov     r6, r0
	mov     r7, r3
	str     r2, [sp, #0xc]
	cmp     r5, #0x17
	bhi     branch_222f1b6
	add     r5, r5, r5
	add     r5, pc
	ldrh    r5, [r5, #0x6]
	lsl     r5, r5, #16
	asr     r5, r5, #16
	add     pc, r5
@ 0x222f0e2

Jumppoints_222f0e2:
.hword branch_222f112 - Jumppoints_222f0e2 - 2
.hword branch_222f11c - Jumppoints_222f0e2 - 2
.hword branch_222f134 - Jumppoints_222f0e2 - 2
.hword branch_222f1a4 - Jumppoints_222f0e2 - 2
.hword branch_222f1ae - Jumppoints_222f0e2 - 2
.hword branch_222f1be - Jumppoints_222f0e2 - 2
.hword branch_222f1dc - Jumppoints_222f0e2 - 2
.hword branch_222f1e4 - Jumppoints_222f0e2 - 2
.hword branch_222f1f2 - Jumppoints_222f0e2 - 2
.hword branch_222f216 - Jumppoints_222f0e2 - 2
.hword branch_222f23a - Jumppoints_222f0e2 - 2
.hword branch_222f274 - Jumppoints_222f0e2 - 2
.hword branch_222f296 - Jumppoints_222f0e2 - 2
.hword branch_222f2ac - Jumppoints_222f0e2 - 2
.hword branch_222f2d4 - Jumppoints_222f0e2 - 2
.hword branch_222f2e2 - Jumppoints_222f0e2 - 2
.hword branch_222f2ec - Jumppoints_222f0e2 - 2
.hword branch_222f2fc - Jumppoints_222f0e2 - 2
.hword branch_222f338 - Jumppoints_222f0e2 - 2
.hword branch_222f342 - Jumppoints_222f0e2 - 2
.hword branch_222f3a2 - Jumppoints_222f0e2 - 2
.hword branch_222f3ac - Jumppoints_222f0e2 - 2
.hword branch_222f3c8 - Jumppoints_222f0e2 - 2
.hword branch_222f3ec - Jumppoints_222f0e2 - 2
.thumb
branch_222f112: @ 222f112 :thumb
	mov     r0, #0x0
	strh    r0, [r6, #0x0]
	strh    r0, [r6, #0x2]
	strh    r0, [r6, #0x4]
	strh    r0, [r6, #0x6]
.thumb
branch_222f11c: @ 222f11c :thumb
	mov     r0, r4
	bl      Function_222e164
	ldr     r2, [sp, #0xc]
	mov     r0, r6
	mov     r1, r4
	mov     r3, r7
	bl      Function_222f668
	mov     r0, #0x2
	strb    r0, [r4, #0x4]
	b       branch_222f400
@ 0x222f134

.thumb
branch_222f134: @ 222f134 :thumb
	bl      Function_222f798
	cmp     r0, #0x4
	bhi     branch_222f1b6
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x222f148

Jumppoints_222f148:
.hword branch_222f400 - Jumppoints_222f148 - 2
.hword branch_222f152 - Jumppoints_222f148 - 2
.hword branch_222f174 - Jumppoints_222f148 - 2
.hword branch_222f198 - Jumppoints_222f148 - 2
.hword branch_222f19e - Jumppoints_222f148 - 2
.thumb
branch_222f152: @ 222f152 :thumb
	mov     r0, #0x0
	ldsh    r1, [r6, r0]
	strh    r1, [r6, #0x2]
	ldsh    r1, [r6, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strh    r1, [r6, #0x0]
	ldsh    r0, [r6, r0]
	cmp     r0, #0x0
	bge     branch_222f168
	.hword  0x1d00 @ add r0, r0, #0x4
	strh    r0, [r6, #0x0]
.thumb
branch_222f168: @ 222f168 :thumb
	mov     r0, r6
	mov     r1, r4
	mov     r2, #0x2
	bl      Function_222fe5c
	b       branch_222f400
@ 0x222f174

.thumb
branch_222f174: @ 222f174 :thumb
	mov     r0, #0x0
	ldsh    r1, [r6, r0]
	strh    r1, [r6, #0x2]
	ldsh    r0, [r6, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	lsr     r2, r0, #31
	lsl     r1, r0, #30
	sub     r1, r1, r2
	mov     r0, #0x1e
	ror     r1, r0
	add     r0, r2, r1
	strh    r0, [r6, #0x0]
	mov     r0, r6
	mov     r1, r4
	mov     r2, #0x3
	bl      Function_222fe5c
	b       branch_222f400
@ 0x222f198

.thumb
branch_222f198: @ 222f198 :thumb
	mov     r0, #0x17
	strb    r0, [r4, #0x4]
	b       branch_222f400
@ 0x222f19e

.thumb
branch_222f19e: @ 222f19e :thumb
	mov     r0, #0x5
	strb    r0, [r4, #0x4]
	b       branch_222f400
@ 0x222f1a4

.thumb
branch_222f1a4: @ 222f1a4 :thumb
	bl      Function_222f8f8
	mov     r0, #0x4
	strb    r0, [r4, #0x4]
	b       branch_222f400
@ 0x222f1ae

.thumb
branch_222f1ae: @ 222f1ae :thumb
	bl      Function_222f948
	cmp     r0, #0x1
	beq     branch_222f1b8
.thumb
branch_222f1b6: @ 222f1b6 :thumb
	b       branch_222f400
@ 0x222f1b8

.thumb
branch_222f1b8: @ 222f1b8 :thumb
	mov     r0, #0x2
	strb    r0, [r4, #0x4]
	b       branch_222f400
@ 0x222f1be

.thumb
branch_222f1be: @ 222f1be :thumb
	bl      Function_222ff38
	mov     r1, r0
	mov     r0, r4
	bl      Function_222e160
	ldr     r2, [sp, #0xc]
	mov     r0, r6
	mov     r1, r4
	mov     r3, r7
	bl      Function_222fa70
	mov     r0, #0x6
	strb    r0, [r4, #0x4]
	b       branch_222f400
@ 0x222f1dc

.thumb
branch_222f1dc: @ 222f1dc :thumb
	bl      Function_222fb24
	strb    r0, [r4, #0x4]
	b       branch_222f400
@ 0x222f1e4

.thumb
branch_222f1e4: @ 222f1e4 :thumb
	mov     r0, #0x41
	mov     r1, #0x4
	lsl     r0, r0, #2
	str     r1, [r6, r0]
	mov     r0, #0x8
	strb    r0, [r4, #0x4]
	b       branch_222f400
@ 0x222f1f2

.thumb
branch_222f1f2: @ 222f1f2 :thumb
	mov     r3, #0x41
	lsl     r3, r3, #2
	ldr     r5, [r6, r3]
	.hword  0x1e6d @ sub r5, r5, #0x1
	str     r5, [r6, r3]
	ldr     r3, [r6, r3]
	cmp     r3, #0x0
	bgt     branch_222f2f4
	bl      Function_222f6e8
	mov     r0, r4
	mov     r1, #0x4
	mov     r2, #0x0
	bl      Function_222e074
	add     sp, #0x18
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x222f216

.thumb
branch_222f216: @ 222f216 :thumb
	mov     r1, #0x7
	ldsb    r2, [r4, r1]
	asr     r0, r2, #2
	lsr     r0, r0, #29
	add     r0, r2, r0
	asr     r0, r0, #3
	strh    r0, [r6, #0x0]
	ldsb    r0, [r4, r1]
	lsr     r2, r0, #31
	lsl     r1, r0, #29
	sub     r1, r1, r2
	mov     r0, #0x1d
	ror     r1, r0
	add     r0, r2, r1
	strh    r0, [r6, #0x4]
	mov     r0, #0x1
	strb    r0, [r4, #0x4]
	b       branch_222f400
@ 0x222f23a

.thumb
branch_222f23a: @ 222f23a :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	mov     r1, #0x10
	mov     r2, r1
	mov     r3, r0
	str     r7, [sp, #0x8]
	bl      0x200f174
	mov     r0, r6
	bl      Function_222ff38
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	bl      0x202b370
	add     r1, r4, r5
	ldrb    r1, [r1, #0xc]
	bl      0x202aef0
	mov     r1, r0
	mov     r0, r4
	bl      Function_222e158
	mov     r0, #0xb
	strb    r0, [r4, #0x4]
	b       branch_222f400
@ 0x222f274

.thumb
branch_222f274: @ 222f274 :thumb
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_222f2f4
	ldr     r2, [sp, #0xc]
	mov     r0, r6
	mov     r1, r4
	bl      Function_222f6e8
	mov     r0, r4
	mov     r1, #0x2
	mov     r2, #0x4
	bl      Function_222e074
	add     sp, #0x18
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x222f296

.thumb
branch_222f296: @ 222f296 :thumb
	bl      Function_222ff38
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	bl      0x202b370
	add     r1, r4, r5
	ldrb    r1, [r1, #0xc]
	ldr     r2, [r4, #0x2c]
	bl      0x202af0c
.thumb
branch_222f2ac: @ 222f2ac :thumb
	ldr     r2, [sp, #0xc]
	mov     r0, r6
	mov     r1, r4
	mov     r3, r7
	bl      Function_222f668
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	mov     r1, #0x11
	mov     r2, r1
	mov     r3, r0
	str     r7, [sp, #0x8]
	bl      0x200f174
	mov     r0, #0xe
	strb    r0, [r4, #0x4]
	b       branch_222f400
@ 0x222f2d4

.thumb
branch_222f2d4: @ 222f2d4 :thumb
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_222f2f4
	mov     r0, #0x2
	strb    r0, [r4, #0x4]
	b       branch_222f400
@ 0x222f2e2

.thumb
branch_222f2e2: @ 222f2e2 :thumb
	bl      Function_222fc1c
	mov     r0, #0x10
	strb    r0, [r4, #0x4]
	b       branch_222f400
@ 0x222f2ec

.thumb
branch_222f2ec: @ 222f2ec :thumb
	bl      Function_222fc48
	cmp     r0, #0x1
	beq     branch_222f2f6
.thumb
branch_222f2f4: @ 222f2f4 :thumb
	b       branch_222f400
@ 0x222f2f6

.thumb
branch_222f2f6: @ 222f2f6 :thumb
	mov     r0, #0x11
	strb    r0, [r4, #0x4]
	b       branch_222f400
@ 0x222f2fc

.thumb
branch_222f2fc: @ 222f2fc :thumb
	mov     r0, #0x1
	lsl     r0, r0, #8
	ldr     r0, [r6, r0]
	mov     r1, r7
	bl      0x2002114
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_222f318
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r0, r1
	beq     branch_222f400
	b       branch_222f32c
@ 0x222f318

.thumb
branch_222f318: @ 222f318 :thumb
	mov     r0, r6
	bl      Function_222ff18
	ldr     r0, [sp, #0xc]
	mov     r1, #0x1
	bl      Function_222ea28
	mov     r0, #0x2
	strb    r0, [r4, #0x4]
	b       branch_222f400
@ 0x222f32c

.thumb
branch_222f32c: @ 222f32c :thumb
	mov     r0, r6
	bl      Function_222ff18
	mov     r0, #0x12
	strb    r0, [r4, #0x4]
	b       branch_222f400
@ 0x222f338

.thumb
branch_222f338: @ 222f338 :thumb
	bl      Function_222ff5c
	mov     r0, #0x13
	strb    r0, [r4, #0x4]
	b       branch_222f400
@ 0x222f342

.thumb
branch_222f342: @ 222f342 :thumb
	bl      Function_2230008
	cmp     r0, #0x1
	bne     branch_222f400
	ldr     r0, [r4, #0x0]
	bl      0x202b370
	str     r0, [sp, #0x10]
	mov     r0, r6
	bl      Function_222ff38
	str     r0, [sp, #0x14]
	mov     r5, r4
	ldr     r1, [sp, #0x14]
	add     r5, #0xc
	ldrb    r1, [r5, r1]
	ldr     r0, [sp, #0x10]
	bl      0x202afd4
	ldr     r0, [r4, #0x0]
	bl      0x203068c
	ldr     r1, [sp, #0x14]
	ldrb    r1, [r5, r1]
	bl      0x2030788
	mov     r0, r4
	bl      Function_222e164
	mov     r0, #0x4
	ldsh    r0, [r6, r0]
	mov     r3, #0x0
	ldr     r2, [sp, #0xc]
	str     r0, [sp, #0x0]
	str     r3, [sp, #0x4]
	str     r7, [sp, #0x8]
	ldsh    r3, [r6, r3]
	mov     r0, r6
	mov     r1, r4
	bl      Function_222fc80
	ldr     r0, [sp, #0xc]
	mov     r1, #0x1
	bl      Function_222ea28
	mov     r0, #0x14
	strb    r0, [r4, #0x4]
	b       branch_222f400
@ 0x222f3a2

.thumb
branch_222f3a2: @ 222f3a2 :thumb
	bl      Function_2230044
	mov     r0, #0x2
	strb    r0, [r4, #0x4]
	b       branch_222f400
@ 0x222f3ac

.thumb
branch_222f3ac: @ 222f3ac :thumb
	bl      Function_222fba4
	cmp     r0, #0x1
	bne     branch_222f3ba
	mov     r0, #0x16
	strb    r0, [r4, #0x4]
	b       branch_222f400
@ 0x222f3ba

.thumb
branch_222f3ba: @ 222f3ba :thumb
	ldr     r0, [sp, #0xc]
	mov     r1, #0x1
	bl      Function_222ea28
	mov     r0, #0x2
	strb    r0, [r4, #0x4]
	b       branch_222f400
@ 0x222f3c8

.thumb
branch_222f3c8: @ 222f3c8 :thumb
	bl      Function_222fefc
	cmp     r0, #0x0
	beq     branch_222f400
	ldr     r0, [pc, #0x34] @ 0x222f408, (=0x21bf67c)
	ldr     r0, [r0, #0x48]
	cmp     r0, #0x0
	beq     branch_222f400
	ldr     r0, [sp, #0xc]
	mov     r1, #0x1
	bl      Function_222ea28
	mov     r0, #0x2
	strb    r0, [r4, #0x4]
	mov     r0, r6
	bl      Function_222ff18
	b       branch_222f400
@ 0x222f3ec

.thumb
branch_222f3ec: @ 222f3ec :thumb
	bl      Function_222f6e8
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x2
	bl      Function_222e074
	add     sp, #0x18
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x222f400

.thumb
branch_222f400: @ 222f400 :thumb
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x222f406


.align 2


.word 0x21bf67c @ 0x222f408
.thumb
Function_222f40c: @ 222f40c :thumb
	ldr     r3, [pc, #0x0] @ 0x222f410, (=0x222f5f5)
	bx      r3
@ 0x222f410

.word Function_222f5f4+1 @ =0x222f5f5, 0x222f410
.thumb
Function_222f414: @ 222f414 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x58
	ldr     r4, [pc, #0x1c4] @ 0x222f5e0, (=0x22322b4)
	mov     r7, r2
	str     r3, [sp, #0x18]
	str     r0, [sp, #0x14]
	add     r3, sp, #0x28
	mov     r2, #0x6
.thumb
branch_222f424: @ 222f424 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_222f424
	ldr     r4, [sp, #0x14]
	mov     r0, #0x0
	ldr     r5, [pc, #0x1b0] @ 0x222f5e4, (=0x22321bc)
	ldr     r6, [pc, #0x1b4] @ 0x222f5e8, (=0x223221c)
	str     r0, [sp, #0x24]
	add     r4, #0x8
.thumb
branch_222f438: @ 222f438 :thumb
	ldr     r0, [sp, #0x18]
	mov     r1, r7
	str     r0, [sp, #0x0]
	ldrh    r3, [r5, #0x0]
	mov     r0, r4
	mov     r2, r6
	bl      Function_2230074
	ldr     r0, [sp, #0x24]
	.hword  0x1cad @ add r5, r5, #0x2
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1db6 @ add r6, r6, #0x6
	add     r4, #0x38
	str     r0, [sp, #0x24]
	cmp     r0, #0x3
	blt     branch_222f438
	ldr     r0, [r7, #0x4]
	ldr     r3, [sp, #0x18]
	mov     r1, #0x0
	mov     r2, #0x10
	bl      0x222ae60
	ldr     r1, [sp, #0x14]
	ldr     r3, [sp, #0x18]
	add     r1, #0xb4
	str     r0, [r1, #0x0]
	ldr     r0, [sp, #0x14]
	mov     r1, #0x1
	add     r0, #0xb4
	ldr     r0, [r0, #0x0]
	mov     r2, #0x2
	bl      0x222b02c
	ldr     r0, [sp, #0x14]
	add     r0, #0xb8
	bl      0x201a7a0
	mov     r0, #0x15
	str     r0, [sp, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x4]
	mov     r0, #0x3
	str     r0, [sp, #0x8]
	mov     r0, #0x7
	str     r0, [sp, #0xc]
	mov     r0, #0x70
	ldr     r1, [sp, #0x14]
	str     r0, [sp, #0x10]
	ldr     r0, [r7, #0x0]
	add     r1, #0xb8
	mov     r2, #0x1
	mov     r3, #0xd
	bl      0x201a7e8
	ldr     r0, [sp, #0x14]
	mov     r1, #0x0
	add     r0, #0xb8
	bl      Function_201ada4
	ldr     r1, [sp, #0x18]
	mov     r0, #0x80
	bl      Function_2023790
	mov     r4, r0
	mov     r0, #0x63
	lsl     r0, r0, #2
	ldr     r0, [r7, r0]
	mov     r1, #0x7
	mov     r2, r4
	bl      Function_200b1b8
	mov     r0, #0x0
	mov     r1, r4
	mov     r2, r0
	mov     r3, #0x40
	bl      0x2002eec
	mov     r1, #0x0
	mov     r3, r0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x10c] @ 0x222f5ec, (=0x10200)
	mov     r2, r4
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x14]
	str     r1, [sp, #0xc]
	add     r0, #0xb8
	bl      0x201d78c
	mov     r0, r4
	bl      Function_20237bc
	ldr     r0, [sp, #0x14]
	add     r0, #0xe4
	bl      0x201a7a0
	mov     r0, #0x9
	str     r0, [sp, #0x0]
	mov     r0, #0xf
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	mov     r0, #0x7
	str     r0, [sp, #0xc]
	mov     r0, #0x88
	ldr     r1, [sp, #0x14]
	str     r0, [sp, #0x10]
	ldr     r0, [r7, #0x0]
	add     r1, #0xe4
	mov     r2, #0x1
	mov     r3, #0x10
	bl      0x201a7e8
	ldr     r0, [sp, #0x14]
	mov     r1, #0x0
	add     r0, #0xe4
	bl      Function_201ada4
	mov     r0, #0x0
	str     r0, [sp, #0x1c]
	ldr     r0, [pc, #0xc4] @ 0x222f5f0, (=0x22322e4)
	ldr     r6, [sp, #0x14]
	str     r0, [sp, #0x20]
.thumb
branch_222f530: @ 222f530 :thumb
	ldr     r1, [sp, #0x18]
	mov     r0, #0x4
	bl      0x2013a04
	mov     r1, r6
	add     r1, #0xf4
	ldr     r5, [sp, #0x20]
	str     r0, [r1, #0x0]
	mov     r4, #0x0
.thumb
branch_222f542: @ 222f542 :thumb
	mov     r0, r6
	mov     r1, #0x63
	add     r0, #0xf4
	lsl     r1, r1, #2
	ldr     r0, [r0, #0x0]
	ldr     r1, [r7, r1]
	ldr     r2, [r5, #0x0]
	ldr     r3, [r5, #0x4]
	bl      0x2013a4c
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x8
	cmp     r4, #0x4
	blt     branch_222f542
	ldr     r0, [sp, #0x20]
	.hword  0x1d36 @ add r6, r6, #0x4
	add     r0, #0x20
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x1c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x1c]
	cmp     r0, #0x2
	blt     branch_222f530
	ldr     r0, [sp, #0x14]
	add     r0, #0xc8
	bl      0x201a7a0
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0x7
	str     r0, [sp, #0xc]
	add     r0, #0xf9
	ldr     r1, [sp, #0x14]
	str     r0, [sp, #0x10]
	ldr     r0, [r7, #0x0]
	add     r1, #0xc8
	mov     r2, #0x1
	mov     r3, #0x2
	bl      0x201a7e8
	ldr     r0, [sp, #0x14]
	mov     r1, #0xf
	add     r0, #0xc8
	bl      Function_201ada4
	ldr     r1, [sp, #0x18]
	mov     r0, #0x80
	bl      Function_2023790
	ldr     r1, [sp, #0x14]
	add     r1, #0xd8
	str     r0, [r1, #0x0]
	ldr     r0, [r7, #0x4]
	str     r0, [sp, #0x28]
	mov     r0, #0x1b
	lsl     r0, r0, #4
	add     r0, r7, r0
	str     r0, [sp, #0x2c]
	ldr     r0, [sp, #0x18]
	str     r0, [sp, #0x54]
	add     r0, sp, #0x28
	bl      0x2021aa0
	mov     r2, #0x42
	ldr     r1, [sp, #0x14]
	lsl     r2, r2, #2
	str     r0, [r1, r2]
	mov     r0, r1
	ldr     r0, [r0, r2]
	mov     r1, #0x0
	bl      0x2021cac
	add     sp, #0x58
	pop     {r3-r7,pc}
@ 0x222f5de


.align 2


.word 0x22322b4 @ 0x222f5e0
.word 0x22321bc @ 0x222f5e4
.word 0x223221c @ 0x222f5e8
.word 0x10200 @ 0x222f5ec
.word 0x22322e4 @ 0x222f5f0
.thumb
Function_222f5f4: @ 222f5f4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r0, #0x42
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r7, r2
	bl      0x2021bd4
	mov     r0, r5
	add     r0, #0xc8
	bl      Function_201a8fc
	mov     r0, r5
	add     r0, #0xd8
	ldr     r0, [r0, #0x0]
	bl      Function_20237bc
	mov     r6, #0x0
	mov     r4, r5
.thumb
branch_222f61a: @ 222f61a :thumb
	mov     r0, r4
	add     r0, #0xf4
	ldr     r0, [r0, #0x0]
	bl      0x2013a3c
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x2
	blt     branch_222f61a
	mov     r0, r5
	add     r0, #0xe4
	bl      Function_201a8fc
	mov     r0, r5
	add     r0, #0xb8
	bl      Function_201a8fc
	mov     r0, r5
	add     r0, #0xb4
	ldr     r0, [r0, #0x0]
	bl      0x222b078
	mov     r0, r5
	add     r0, #0xb4
	ldr     r0, [r0, #0x0]
	bl      0x222af14
	mov     r4, #0x0
	add     r5, #0x8
.thumb
branch_222f654: @ 222f654 :thumb
	mov     r0, r5
	mov     r1, r7
	bl      Function_22300d8
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x38
	cmp     r4, #0x3
	blt     branch_222f654
	pop     {r3-r7,pc}
@ 0x222f666


.align 2, 0


.thumb
Function_222f668: @ 222f668 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r4, r2
	mov     r5, r0
	mov     r7, r1
	mov     r0, r4
	mov     r1, #0x5
	mov     r6, r3
	bl      Function_222e738
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0xa
	str     r1, [sp, #0x0]
	mov     r1, #0x4
	str     r1, [sp, #0x4]
	mov     r1, r0
	add     r1, #0xc
	str     r1, [sp, #0x8]
	mov     r1, #0x6
	str     r1, [sp, #0xc]
	mov     r1, #0x0
	str     r1, [sp, #0x10]
	ldrh    r2, [r0, #0x0]
	mov     r3, #0x14
	lsl     r2, r2, #21
	lsr     r2, r2, #24
	str     r2, [sp, #0x14]
	ldrh    r0, [r0, #0x2]
	mov     r2, #0xb
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x18]
	ldr     r0, [r4, #0x0]
	bl      0x20198e8
	mov     r0, r5
	add     r0, #0xb8
	bl      Function_201a9a4
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	bl      0x201c3c0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_222ea28
	mov     r0, #0x4
	ldsh    r0, [r5, r0]
	mov     r3, #0x0
	mov     r1, r7
	str     r0, [sp, #0x0]
	str     r3, [sp, #0x4]
	str     r6, [sp, #0x8]
	ldsh    r3, [r5, r3]
	mov     r0, r5
	mov     r2, r4
	bl      Function_222fc80
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x222f6e6


.align 2, 0


.thumb
Function_222f6e8: @ 222f6e8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r4, r2
	mov     r5, r0
	mov     r0, r4
	bl      Function_222e7c8
	mov     r0, r5
	add     r0, #0xb8
	bl      0x201ad10
	mov     r7, #0x7b
	mov     r6, #0x0
	add     r5, #0x8
	lsl     r7, r7, #2
.thumb
branch_222f706: @ 222f706 :thumb
	mov     r0, r5
	mov     r1, r4
	add     r2, r4, r7
	bl      Function_2230240
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x38
	cmp     r6, #0x3
	blt     branch_222f706
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_222ea28
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0xa
	str     r1, [sp, #0x0]
	mov     r1, #0x4
	str     r1, [sp, #0x4]
	mov     r1, r0
	add     r1, #0xc
	str     r1, [sp, #0x8]
	mov     r1, #0x0
	str     r1, [sp, #0xc]
	mov     r2, #0x8
	str     r2, [sp, #0x10]
	ldrh    r2, [r0, #0x0]
	mov     r3, #0x14
	lsl     r2, r2, #21
	lsr     r2, r2, #24
	str     r2, [sp, #0x14]
	ldrh    r0, [r0, #0x2]
	mov     r2, #0xb
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x18]
	ldr     r0, [r4, #0x0]
	bl      0x20198e8
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x9
	str     r1, [sp, #0x0]
	mov     r1, #0x3
	str     r1, [sp, #0x4]
	mov     r1, r0
	add     r1, #0xc
	str     r1, [sp, #0x8]
	mov     r1, #0x10
	str     r1, [sp, #0xc]
	mov     r1, #0x0
	str     r1, [sp, #0x10]
	ldrh    r2, [r0, #0x0]
	mov     r3, r1
	lsl     r2, r2, #21
	lsr     r2, r2, #24
	str     r2, [sp, #0x14]
	ldrh    r0, [r0, #0x2]
	mov     r2, #0x16
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x18]
	ldr     r0, [r4, #0x0]
	bl      0x20198e8
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	bl      0x201c3c0
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x222f798

.thumb
Function_222f798: @ 222f798 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r0, [pc, #0x14c] @ 0x222f8ec, (=0x21bf67c)
	mov     r6, r2
	ldr     r2, [r0, #0x48]
	mov     r3, #0x1
	tst     r3, r2
	beq     branch_222f7da
	mov     r0, #0x4
	ldsh    r3, [r5, r0]
	cmp     r3, #0x8
	bne     branch_222f7be
	ldr     r0, [pc, #0x13c] @ 0x222f8f0, (=0x5dd)
	bl      Function_2005748
	add     sp, #0x8
	mov     r0, #0x3
	pop     {r3-r7,pc}
@ 0x222f7be

.thumb
branch_222f7be: @ 222f7be :thumb
	mov     r0, #0x0
	ldr     r2, [r1, #0x8]
	ldsh    r1, [r5, r0]
	lsl     r1, r1, #3
	add     r1, r3, r1
	cmp     r2, r1
	bhi     branch_222f7ce
	b       branch_222f8e8
@ 0x222f7ce

.thumb
branch_222f7ce: @ 222f7ce :thumb
	ldr     r0, [pc, #0x120] @ 0x222f8f0, (=0x5dd)
	bl      Function_2005748
	add     sp, #0x8
	mov     r0, #0x4
	pop     {r3-r7,pc}
@ 0x222f7da

.thumb
branch_222f7da: @ 222f7da :thumb
	mov     r3, #0x2
	mov     r1, r2
	tst     r1, r3
	beq     branch_222f7ee
	ldr     r0, [pc, #0x10c] @ 0x222f8f0, (=0x5dd)
	bl      Function_2005748
	add     sp, #0x8
	mov     r0, #0x3
	pop     {r3-r7,pc}
@ 0x222f7ee

.thumb
branch_222f7ee: @ 222f7ee :thumb
	mov     r1, #0x4
	ldsh    r1, [r5, r1]
	mov     r4, #0x0
	str     r4, [sp, #0x0]
	lsl     r2, r1, #16
	lsr     r2, r2, #16
	str     r2, [sp, #0x4]
	ldr     r0, [r0, #0x4c]
	mov     r2, #0x40
	tst     r2, r0
	beq     branch_222f834
	cmp     r1, #0x8
	bne     branch_222f81a
	mov     r0, #0x6
	ldsh    r0, [r5, r0]
	mov     r4, #0x1
	mov     r1, r4
	strh    r0, [r5, #0x4]
	mov     r0, r6
	bl      Function_222ea28
	b       branch_222f8b4
@ 0x222f81a

.thumb
branch_222f81a: @ 222f81a :thumb
	cmp     r1, #0x4
	bge     branch_222f82a
	cmp     r1, #0x0
	ble     branch_222f8b4
	.hword  0x1e48 @ sub r0, r1, #0x1
	strh    r0, [r5, #0x4]
	mov     r4, #0x1
	b       branch_222f8b4
@ 0x222f82a

.thumb
branch_222f82a: @ 222f82a :thumb
	ble     branch_222f8b4
	.hword  0x1e48 @ sub r0, r1, #0x1
	strh    r0, [r5, #0x4]
	mov     r4, #0x1
	b       branch_222f8b4
@ 0x222f834

.thumb
branch_222f834: @ 222f834 :thumb
	mov     r2, #0x80
	tst     r2, r0
	beq     branch_222f86e
	cmp     r1, #0x3
	beq     branch_222f842
	cmp     r1, #0x7
	bne     branch_222f852
.thumb
branch_222f842: @ 222f842 :thumb
	mov     r0, #0x8
	strh    r0, [r5, #0x4]
	mov     r0, r6
	mov     r1, #0x0
	mov     r4, #0x1
	bl      Function_222ea28
	b       branch_222f8b4
@ 0x222f852

.thumb
branch_222f852: @ 222f852 :thumb
	cmp     r1, #0x4
	bge     branch_222f862
	cmp     r1, #0x3
	bge     branch_222f8b4
	add     r0, r1, #0x1
	strh    r0, [r5, #0x4]
	mov     r4, #0x1
	b       branch_222f8b4
@ 0x222f862

.thumb
branch_222f862: @ 222f862 :thumb
	cmp     r1, #0x7
	bge     branch_222f8b4
	add     r0, r1, #0x1
	strh    r0, [r5, #0x4]
	mov     r4, #0x1
	b       branch_222f8b4
@ 0x222f86e

.thumb
branch_222f86e: @ 222f86e :thumb
	mov     r2, #0x20
	tst     r2, r0
	beq     branch_222f892
	cmp     r1, #0x8
	beq     branch_222f8b4
	cmp     r1, #0x4
	bge     branch_222f88a
	add     r0, r1, #0x4
	mov     r4, #0x1
	strh    r0, [r5, #0x4]
	mov     r0, r4
	str     r0, [sp, #0x0]
	mov     r7, r3
	b       branch_222f8b4
@ 0x222f88a

.thumb
branch_222f88a: @ 222f88a :thumb
	.hword  0x1f08 @ sub r0, r1, #0x4
	strh    r0, [r5, #0x4]
	mov     r4, #0x1
	b       branch_222f8b4
@ 0x222f892

.thumb
branch_222f892: @ 222f892 :thumb
	mov     r2, #0x10
	tst     r0, r2
	beq     branch_222f8b4
	cmp     r1, #0x8
	beq     branch_222f8b4
	cmp     r1, #0x4
	bge     branch_222f8a8
	add     r0, r1, #0x4
	strh    r0, [r5, #0x4]
	mov     r4, #0x1
	b       branch_222f8b4
@ 0x222f8a8

.thumb
branch_222f8a8: @ 222f8a8 :thumb
	.hword  0x1f08 @ sub r0, r1, #0x4
	mov     r4, #0x1
	strh    r0, [r5, #0x4]
	mov     r0, r4
	str     r0, [sp, #0x0]
	mov     r7, #0x3
.thumb
branch_222f8b4: @ 222f8b4 :thumb
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x1
	bne     branch_222f8ca
	cmp     r7, #0x2
	bne     branch_222f8c4
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x222f8c4

.thumb
branch_222f8c4: @ 222f8c4 :thumb
	add     sp, #0x8
	mov     r0, #0x2
	pop     {r3-r7,pc}
@ 0x222f8ca

.thumb
branch_222f8ca: @ 222f8ca :thumb
	cmp     r4, #0x1
	bne     branch_222f8e6
	ldr     r0, [pc, #0x24] @ 0x222f8f4, (=0x5e5)
	bl      Function_2005748
	mov     r2, #0x4
	mov     r0, r5
	ldsh    r2, [r5, r2]
	add     r0, #0x8
	mov     r1, r6
	bl      Function_2230130
	ldr     r0, [sp, #0x4]
	strh    r0, [r5, #0x6]
.thumb
branch_222f8e6: @ 222f8e6 :thumb
	mov     r0, #0x0
.thumb
branch_222f8e8: @ 222f8e8 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x222f8ec

.word 0x21bf67c @ 0x222f8ec
.word 0x5dd @ 0x222f8f0
.word 0x5e5 @ 0x222f8f4
.thumb
Function_222f8f8: @ 222f8f8 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	add     r0, #0xb2
	ldrh    r0, [r0, #0x0]
	mov     r4, r2
	cmp     r0, #0x2
	bne     branch_222f90c
	mov     r2, #0x2
	b       branch_222f90e
@ 0x222f90c

.thumb
branch_222f90c: @ 222f90c :thumb
	mov     r2, #0x1
.thumb
branch_222f90e: @ 222f90e :thumb
	mov     r0, #0x4
	ldsh    r0, [r5, r0]
	str     r0, [sp, #0x0]
	str     r2, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r3, #0x0
	ldsh    r3, [r5, r3]
	mov     r0, r5
	mov     r2, r4
	bl      Function_222fc80
	add     r5, #0x8
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0xa
	bl      Function_2230130
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_222ea48
	ldr     r0, [pc, #0x8] @ 0x222f944, (=0x5e1)
	bl      Function_2005748
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x222f942


.align 2


.word 0x5e1 @ 0x222f944
.thumb
Function_222f948: @ 222f948 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r5, r0
	mov     r0, #0xb0
	ldsh    r0, [r5, r0]
	str     r1, [sp, #0xc]
	mov     r4, r2
	mov     r6, r3
	cmp     r0, #0xc
	blt     branch_222f9d8
	mov     r2, #0x0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2
	mov     r3, r2
	bl      Function_201c63c
	mov     r2, #0x0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x3
	mov     r3, r2
	bl      Function_201c63c
	ldr     r3, [pc, #0xf0] @ 0x222fa68, (=0x2232460)
	add     r2, sp, #0x10
	mov     r7, r2
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	mov     r0, r4
	add     r0, #0x8
	mov     r1, r7
	bl      0x20230e0
	mov     r0, r5
	add     r0, #0xb2
	ldrh    r0, [r0, #0x0]
	cmp     r0, #0x2
	bne     branch_222f99a
	mov     r2, #0x2
	b       branch_222f99c
@ 0x222f99a

.thumb
branch_222f99a: @ 222f99a :thumb
	mov     r2, #0x1
.thumb
branch_222f99c: @ 222f99c :thumb
	mov     r0, #0x38
	mov     r1, r5
	mul     r0, r2
	mov     r2, #0x7b
	add     r1, #0x8
	lsl     r2, r2, #2
	add     r0, r1, r0
	mov     r1, r4
	add     r2, r4, r2
	bl      Function_2230240
	mov     r0, #0x4
	ldsh    r0, [r5, r0]
	mov     r3, #0x0
	ldr     r1, [sp, #0xc]
	str     r0, [sp, #0x0]
	str     r3, [sp, #0x4]
	str     r6, [sp, #0x8]
	ldsh    r3, [r5, r3]
	mov     r0, r5
	mov     r2, r4
	bl      Function_222fc80
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_222ea48
	add     sp, #0x20
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x222f9d8

.thumb
branch_222f9d8: @ 222f9d8 :thumb
	lsl     r0, r0, #8
	mov     r1, #0xc
	blx     _s32_div_f
	mov     r6, r0
	mov     r0, r5
	add     r0, #0xb2
	ldrh    r0, [r0, #0x0]
	cmp     r0, #0x2
	bne     branch_222f9ee
	neg     r6, r6
.thumb
branch_222f9ee: @ 222f9ee :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2
	mov     r2, #0x0
	mov     r3, r6
	bl      Function_201c63c
	ldr     r0, [r4, #0x0]
	mov     r1, #0x3
	mov     r2, #0x0
	mov     r3, r6
	bl      Function_201c63c
	ldr     r3, [pc, #0x60] @ 0x222fa68, (=0x2232460)
	add     r2, sp, #0x10
	mov     r7, r2
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r1, [sp, #0x10]
	lsl     r0, r6, #12
	add     r0, r1, r0
	str     r0, [sp, #0x10]
	mov     r0, r4
	add     r0, #0x8
	mov     r1, r7
	bl      0x20230e0
	mov     r0, #0xb0
	ldsh    r6, [r5, r0]
	mov     r1, #0x3
	mov     r0, r6
	blx     _s32_div_f
	cmp     r1, #0x0
	beq     branch_222fa56
	mov     r0, r6
	mov     r1, #0x3
	blx     _s32_div_f
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x28] @ 0x222fa6c, (=0x2232440)
	ldr     r6, [r0, r1]
	cmp     r6, #0x0
	beq     branch_222fa56
	mov     r2, #0x0
	mov     r3, #0x2
	ldsh    r2, [r5, r2]
	ldsh    r3, [r5, r3]
	mov     r0, r5
	mov     r1, r4
	blx     r6
.thumb
branch_222fa56: @ 222fa56 :thumb
	mov     r0, #0xb0
	ldsh    r0, [r5, r0]
	add     r5, #0xb0
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x222fa66


.align 2


.word 0x2232460 @ 0x222fa68
.word 0x2232440 @ 0x222fa6c
.thumb
Function_222fa70: @ 222fa70 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x2c
	mov     r5, r1
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	str     r2, [sp, #0x0]
	mov     r6, r3
	bl      0x202b370
	str     r0, [sp, #0x4]
	mov     r0, r4
	bl      Function_222ff38
	str     r0, [sp, #0x8]
	mov     r7, r5
	ldr     r1, [sp, #0x8]
	add     r7, #0xc
	ldrb    r1, [r7, r1]
	ldr     r0, [sp, #0x4]
	mov     r2, #0x8
	bl      0x202ad2c
	ldr     r3, [pc, #0x80] @ 0x222fb20, (=0x223226c)
	mov     r12, r0
	add     r2, sp, #0xc
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	mov     r0, r12
	cmp     r0, #0x2
	bne     branch_222fac2
	mov     r0, r4
	add     r0, #0xf8
	ldr     r0, [r0, #0x0]
	str     r0, [sp, #0xc]
	b       branch_222faca
@ 0x222fac2

.thumb
branch_222fac2: @ 222fac2 :thumb
	mov     r0, r4
	add     r0, #0xf4
	ldr     r0, [r0, #0x0]
	str     r0, [sp, #0xc]
.thumb
branch_222faca: @ 222faca :thumb
	mov     r0, r4
	add     r0, #0xe4
	mov     r1, #0x0
	lsl     r3, r6, #24
	str     r0, [sp, #0x18]
	add     r0, sp, #0xc
	mov     r2, r1
	lsr     r3, r3, #24
	bl      0x200112c
	mov     r1, r4
	add     r1, #0xfc
	str     r0, [r1, #0x0]
	mov     r0, r4
	mov     r1, #0x1
	add     r0, #0xe4
	mov     r2, r1
	mov     r3, #0x9
	bl      0x200dc48
	mov     r0, r4
	add     r0, #0xe4
	bl      Function_201a9a4
	ldr     r2, [sp, #0x8]
	ldr     r0, [sp, #0x0]
	ldrb    r2, [r7, r2]
	ldr     r1, [r5, #0x0]
	mov     r3, r6
	bl      Function_222e880
	ldr     r1, [sp, #0x0]
	mov     r0, r4
	mov     r2, #0xc
	mov     r3, r6
	bl      Function_222fe70
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	bl      Function_222ea28
	add     sp, #0x2c
	pop     {r4-r7,pc}
@ 0x222fb20

.word 0x223226c @ 0x222fb20
.thumb
Function_222fb24: @ 222fb24 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r2
	bl      Function_222fefc
	cmp     r0, #0x0
	bne     branch_222fb36
	mov     r0, #0x6
	pop     {r4-r6,pc}
@ 0x222fb36

.thumb
branch_222fb36: @ 222fb36 :thumb
	mov     r0, r5
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	bl      Function_2001288
	mov     r4, r0
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r4, r0
	beq     branch_222fb54
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r4, r0
	bne     branch_222fb66
	mov     r0, #0x6
	pop     {r4-r6,pc}
@ 0x222fb54

.thumb
branch_222fb54: @ 222fb54 :thumb
	ldr     r0, [pc, #0x48] @ 0x222fba0, (=0x5dc)
	bl      Function_2005748
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_222ea28
	mov     r4, #0x2
	b       branch_222fb6c
@ 0x222fb66

.thumb
branch_222fb66: @ 222fb66 :thumb
	ldr     r0, [pc, #0x38] @ 0x222fba0, (=0x5dc)
	bl      Function_2005748
.thumb
branch_222fb6c: @ 222fb6c :thumb
	mov     r0, r5
	bl      Function_222ff18
	mov     r0, r5
	add     r0, #0xe4
	mov     r1, #0x1
	bl      Function_200dc9c
	mov     r0, r5
	add     r0, #0xe4
	bl      0x201ad10
	add     r5, #0xfc
	mov     r1, #0x0
	ldr     r0, [r5, #0x0]
	mov     r2, r1
	bl      Function_2001384
	cmp     r4, #0x2
	bne     branch_222fb9c
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_222ea28
.thumb
branch_222fb9c: @ 222fb9c :thumb
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x222fba0

.word 0x5dc @ 0x222fba0
.thumb
Function_222fba4: @ 222fba4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r1
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x0]
	mov     r4, r2
	str     r3, [sp, #0x4]
	bl      0x202b370
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x0]
	bl      Function_222ff38
	mov     r6, r5
	mov     r7, r0
	add     r6, #0xc
	ldrb    r1, [r6, r7]
	ldr     r0, [sp, #0x10]
	bl      0x202aed8
	blx     0x20a4670
	str     r1, [sp, #0xc]
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0xc]
	mov     r2, #0x0
	eor     r0, r2
	ldr     r2, [sp, #0x14]
	mov     r1, #0x0
	eor     r1, r2
	orr     r0, r1
	beq     branch_222fc12
	ldr     r0, [pc, #0x30] @ 0x222fc18, (=0x5dd)
	bl      Function_2005748
	ldr     r1, [sp, #0x14]
	ldr     r2, [sp, #0xc]
	mov     r0, r4
	bl      Function_222e7f8
	ldrb    r2, [r6, r7]
	ldr     r1, [r5, #0x0]
	ldr     r3, [sp, #0x4]
	mov     r0, r4
	bl      Function_222e880
	ldr     r0, [sp, #0x0]
	ldr     r3, [sp, #0x4]
	mov     r1, r4
	mov     r2, #0x37
	bl      Function_222fe70
	add     sp, #0x18
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x222fc12

.thumb
branch_222fc12: @ 222fc12 :thumb
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x222fc18

.word 0x5dd @ 0x222fc18
.thumb
Function_222fc1c: @ 222fc1c :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r5, r1
	mov     r4, r2
	mov     r6, r3
	bl      Function_222ff38
	mov     r2, r0
	add     r2, r5, r2
	ldrb    r2, [r2, #0xc]
	ldr     r1, [r5, #0x0]
	mov     r0, r4
	mov     r3, r6
	bl      Function_222e880
	mov     r0, r7
	mov     r1, r4
	mov     r2, #0x34
	mov     r3, r6
	bl      Function_222fe70
	pop     {r3-r7,pc}
@ 0x222fc48

.thumb
Function_222fc48: @ 222fc48 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	mov     r4, r2
	mov     r6, r3
	bl      Function_222fefc
	cmp     r0, #0x0
	bne     branch_222fc60
	add     sp, #0x4
	mov     r0, #0x0
	pop     {r3-r6,pc}
@ 0x222fc60

.thumb
branch_222fc60: @ 222fc60 :thumb
	str     r6, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0x14] @ 0x222fc7c, (=0x22321ca)
	mov     r2, #0x1
	mov     r3, #0x9
	bl      0x2002100
	mov     r1, #0x1
	lsl     r1, r1, #8
	str     r0, [r5, r1]
	mov     r0, #0x1
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x222fc7a


.align 2


.word 0x22321ca @ 0x222fc7c
.thumb
Function_222fc80: @ 222fc80 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	str     r1, [sp, #0x10]
	ldr     r1, [sp, #0x34]
	mov     r5, r0
	mov     r6, r2
	mov     r7, r3
	cmp     r1, #0x0
	bne     branch_222fca0
	ldr     r1, [sp, #0x30]
	strh    r7, [r5, #0x0]
	strh    r1, [r5, #0x4]
	mov     r1, r6
	mov     r2, r7
	bl      Function_222fcf0
.thumb
branch_222fca0: @ 222fca0 :thumb
	ldr     r1, [sp, #0x34]
	mov     r4, r5
	mov     r0, #0x38
	mul     r0, r1
	mov     r2, #0x7b
	lsl     r2, r2, #2
	add     r4, #0x8
	str     r0, [sp, #0x14]
	add     r0, r4, r0
	mov     r1, r6
	add     r2, r6, r2
	bl      Function_22300e4
	mov     r0, #0x7b
	lsl     r0, r0, #2
	add     r0, r6, r0
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x10]
	add     r5, #0xb4
	add     r0, #0x8
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x38]
	str     r7, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x14]
	ldr     r1, [sp, #0x10]
	ldr     r3, [r5, #0x0]
	add     r0, r4, r0
	mov     r2, r6
	bl      Function_22301b4
	ldr     r0, [sp, #0x14]
	ldr     r2, [sp, #0x30]
	add     r0, r4, r0
	mov     r1, r6
	bl      Function_2230130
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x222fcee


.align 2, 0


.thumb
Function_222fcf0: @ 222fcf0 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x1c
	mov     r0, #0x7e
	mov     r5, r1
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x9
	str     r1, [sp, #0x0]
	mov     r1, #0x3
	str     r1, [sp, #0x4]
	mov     r1, r0
	add     r1, #0xc
	str     r1, [sp, #0x8]
	mov     r1, #0x0
	mov     r4, r2
	str     r1, [sp, #0xc]
	mov     r2, #0x4
	str     r2, [sp, #0x10]
	ldrh    r2, [r0, #0x0]
	mov     r3, r1
	lsl     r2, r2, #21
	lsr     r2, r2, #24
	str     r2, [sp, #0x14]
	ldrh    r0, [r0, #0x2]
	mov     r2, #0x16
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x18]
	ldr     r0, [r5, #0x0]
	bl      0x20198e8
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r3, #0x1
	str     r3, [sp, #0x0]
	mov     r1, r0
	str     r3, [sp, #0x4]
	add     r1, #0xc
	str     r1, [sp, #0x8]
	mov     r1, #0x3
	str     r1, [sp, #0xc]
	ldr     r1, [pc, #0x30] @ 0x222fd78, (=0x2232428)
	lsl     r2, r4, #1
	ldrb    r1, [r1, r4]
	add     r2, #0x17
	lsl     r2, r2, #24
	str     r1, [sp, #0x10]
	ldrh    r1, [r0, #0x0]
	lsr     r2, r2, #24
	lsl     r1, r1, #21
	lsr     r1, r1, #24
	str     r1, [sp, #0x14]
	ldrh    r0, [r0, #0x2]
	mov     r1, #0x0
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x18]
	ldr     r0, [r5, #0x0]
	bl      0x20198e8
	ldr     r0, [r5, #0x0]
	mov     r1, #0x0
	bl      0x201c3c0
	add     sp, #0x1c
	pop     {r4,r5,pc}
@ 0x222fd76


.align 2


.word 0x2232428 @ 0x222fd78
.thumb
Function_222fd7c: @ 222fd7c :thumb
	push    {r4,r5,lr}
	add     sp, #-0x1c
	mov     r0, #0x7e
	mov     r4, r1
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r5, #0x1
	str     r5, [sp, #0x0]
	mov     r1, r0
	str     r5, [sp, #0x4]
	add     r1, #0xc
	str     r1, [sp, #0x8]
	mov     r1, #0x4
	str     r1, [sp, #0xc]
	ldr     r1, [pc, #0x30] @ 0x222fdcc, (=0x2232428)
	lsl     r2, r3, #1
	ldrb    r1, [r1, r3]
	add     r2, #0x17
	lsl     r2, r2, #24
	str     r1, [sp, #0x10]
	ldrh    r1, [r0, #0x0]
	lsr     r2, r2, #24
	mov     r3, r5
	lsl     r1, r1, #21
	lsr     r1, r1, #24
	str     r1, [sp, #0x14]
	ldrh    r0, [r0, #0x2]
	mov     r1, #0x0
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x18]
	ldr     r0, [r4, #0x0]
	bl      0x20198e8
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	bl      0x201c3c0
	add     sp, #0x1c
	pop     {r4,r5,pc}
@ 0x222fdcc

.word 0x2232428 @ 0x222fdcc
.thumb
Function_222fdd0: @ 222fdd0 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x1c
	mov     r0, #0x7e
	mov     r5, r1
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x9
	str     r1, [sp, #0x0]
	mov     r1, #0x3
	str     r1, [sp, #0x4]
	mov     r1, r0
	add     r1, #0xc
	str     r1, [sp, #0x8]
	mov     r1, #0x0
	mov     r4, r2
	str     r1, [sp, #0xc]
	mov     r2, #0x4
	str     r2, [sp, #0x10]
	ldrh    r2, [r0, #0x0]
	mov     r3, r1
	lsl     r2, r2, #21
	lsr     r2, r2, #24
	str     r2, [sp, #0x14]
	ldrh    r0, [r0, #0x2]
	mov     r2, #0x16
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x18]
	ldr     r0, [r5, #0x0]
	bl      0x20198e8
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r3, #0x1
	str     r3, [sp, #0x0]
	mov     r1, r0
	str     r3, [sp, #0x4]
	add     r1, #0xc
	str     r1, [sp, #0x8]
	mov     r1, #0x3
	str     r1, [sp, #0xc]
	ldr     r1, [pc, #0x30] @ 0x222fe58, (=0x2232428)
	lsl     r2, r4, #1
	ldrb    r1, [r1, r4]
	add     r2, #0x17
	lsl     r2, r2, #24
	str     r1, [sp, #0x10]
	ldrh    r1, [r0, #0x0]
	lsr     r2, r2, #24
	lsl     r1, r1, #21
	lsr     r1, r1, #24
	str     r1, [sp, #0x14]
	ldrh    r0, [r0, #0x2]
	mov     r1, #0x0
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x18]
	ldr     r0, [r5, #0x0]
	bl      0x20198e8
	ldr     r0, [r5, #0x0]
	mov     r1, #0x0
	bl      0x201c3c0
	add     sp, #0x1c
	pop     {r4,r5,pc}
@ 0x222fe56


.align 2


.word 0x2232428 @ 0x222fe58
.thumb
Function_222fe5c: @ 222fe5c :thumb
	mov     r3, #0x3
	strb    r3, [r1, #0x4]
	mov     r1, r0
	add     r1, #0xb2
	strh    r2, [r1, #0x0]
	mov     r1, #0x0
	add     r0, #0xb0
	strh    r1, [r0, #0x0]
	bx      lr
@ 0x222fe6e


.align 2, 0


.thumb
Function_222fe70: @ 222fe70 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r4, r1
	mov     r6, r3
	add     r0, #0xc8
	mov     r1, #0xf
	mov     r7, r2
	bl      Function_201ada4
	mov     r0, #0x80
	mov     r1, r6
	bl      Function_2023790
	mov     r6, r0
	mov     r0, #0x63
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, r7
	mov     r2, r6
	bl      Function_200b1b8
	mov     r0, #0x62
	mov     r1, r5
	lsl     r0, r0, #2
	add     r1, #0xd8
	ldr     r0, [r4, r0]
	ldr     r1, [r1, #0x0]
	mov     r2, r6
	bl      Function_200c388
	mov     r3, #0x0
	mov     r0, r5
	mov     r2, r5
	str     r3, [sp, #0x0]
	add     r0, #0xe0
	ldr     r0, [r0, #0x0]
	add     r2, #0xd8
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x38] @ 0x222fef8, (=0x10200)
	mov     r1, #0x1
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	mov     r0, r5
	ldr     r2, [r2, #0x0]
	add     r0, #0xc8
	bl      0x201d78c
	mov     r1, r5
	add     r1, #0xdc
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r0, #0xc8
	mov     r1, #0x1
	mov     r2, #0xa
	mov     r3, #0x8
	bl      0x200e060
	add     r5, #0xc8
	mov     r0, r5
	bl      Function_201a9a4
	mov     r0, r6
	bl      Function_20237bc
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x222fef6


.align 2


.word 0x10200 @ 0x222fef8
.thumb
Function_222fefc: @ 222fefc :thumb
	push    {r3,lr}
	add     r0, #0xdc
	ldr     r0, [r0, #0x0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d724
	cmp     r0, #0x0
	bne     branch_222ff12
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x222ff12

.thumb
branch_222ff12: @ 222ff12 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x222ff16


.align 2, 0


.thumb
Function_222ff18: @ 222ff18 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0xc8
	mov     r1, #0x1
	bl      0x200e084
	mov     r0, r4
	add     r0, #0xc8
	bl      0x201ad10
	add     r4, #0xb8
	mov     r0, r4
	bl      Function_201a9a4
	pop     {r4,pc}
@ 0x222ff36


.align 2, 0


.thumb
Function_222ff38: @ 222ff38 :thumb
	mov     r1, #0x0
	ldsh    r1, [r0, r1]
	lsl     r2, r1, #3
	mov     r1, #0x4
	ldsh    r0, [r0, r1]
	add     r0, r2, r0
	bx      lr
@ 0x222ff46


.align 2, 0


.thumb
Function_222ff48: @ 222ff48 :thumb
	push    {r3,lr}
	cmp     r2, #0x0
	bne     branch_222ff54
	ldr     r0, [pc, #0x8] @ 0x222ff58, (=0x5dc)
	bl      Function_2005748
.thumb
branch_222ff54: @ 222ff54 :thumb
	pop     {r3,pc}
@ 0x222ff56


.align 2


.word 0x5dc @ 0x222ff58
.thumb
Function_222ff5c: @ 222ff5c :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r0, #0x42
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      0x2021cac
	mov     r0, #0x42
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x2
	bl      0x2021d6c
	mov     r0, #0x43
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	.hword  0x1f00 @ sub r0, r0, #0x4
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      0x2021cc8
	mov     r0, #0x4
	ldsh    r2, [r4, r0]
	mov     r1, #0xc
	mov     r0, r2
	mul     r0, r1
	ldr     r2, [pc, #0x5c] @ 0x222fff4, (=0x2232324)
	add     r1, #0xfc
	ldsh    r2, [r2, r0]
	lsl     r3, r2, #3
	ldr     r2, [pc, #0x58] @ 0x222fff8, (=0x2232326)
	str     r3, [sp, #0x0]
	ldsh    r0, [r2, r0]
	lsl     r2, r0, #3
	add     r2, #0xfc
	lsl     r0, r3, #12
	str     r0, [sp, #0x0]
	str     r2, [sp, #0x4]
	lsl     r0, r2, #12
	str     r0, [sp, #0x4]
	ldr     r0, [r4, r1]
	add     r1, sp, #0x0
	bl      0x2021c50
	ldr     r1, [pc, #0x40] @ 0x222fffc, (=0x400004a)
	ldr     r0, [pc, #0x40] @ 0x2230000, (=0xffffc0ff)
	ldrh    r2, [r1, #0x0]
	and     r2, r0
	mov     r0, #0x7
	lsl     r0, r0, #8
	orr     r2, r0
	strh    r2, [r1, #0x0]
	ldrh    r3, [r1, #0x0]
	mov     r2, #0x3f
	sub     r0, #0xd7
	bic     r3, r2
	mov     r2, #0x1f
	orr     r3, r2
	mov     r2, #0x20
	orr     r3, r2
	strh    r3, [r1, #0x0]
	lsl     r4, r2, #21
	ldr     r3, [r4, #0x0]
	ldr     r1, [pc, #0x20] @ 0x2230004, (=0xffff1fff)
	and     r3, r1
	lsl     r1, r2, #10
	orr     r1, r3
	str     r1, [r4, #0x0]
	bl      Function_2005748
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x222fff2


.align 2


.word 0x2232324 @ 0x222fff4
.word 0x2232326 @ 0x222fff8
.word 0x400004a @ 0x222fffc
.word 0xffffc0ff @ 0x2230000
.word 0xffff1fff @ 0x2230004
.thumb
Function_2230008: @ 2230008 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x42
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x2021fd0
	cmp     r0, #0x0
	bne     branch_223001e
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223001e

.thumb
branch_223001e: @ 223001e :thumb
	mov     r0, #0x42
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x2021e74
	mov     r1, #0x43
	lsl     r1, r1, #2
	ldr     r2, [r4, r1]
	sub     r2, r0, r2
	cmp     r2, #0x2
	bcc     branch_223003c
	str     r0, [r4, r1]
	ldr     r0, [pc, #0x8] @ 0x2230040, (=0x629)
	bl      Function_2005748
.thumb
branch_223003c: @ 223003c :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2230040

.word 0x629 @ 0x2230040
.thumb
Function_2230044: @ 2230044 :thumb
	push    {r4,lr}
	mov     r2, #0x1
	lsl     r2, r2, #26
	mov     r4, r0
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x20] @ 0x2230070, (=0xffff1fff)
	and     r0, r1
	str     r0, [r2, #0x0]
	mov     r0, #0x42
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x2021cac
	mov     r0, #0x42
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x2021cc8
	pop     {r4,pc}
@ 0x223006e


.align 2


.word 0xffff1fff @ 0x2230070
.thumb
Function_2230074: @ 2230074 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r4, r2
	mov     r5, r0
	ldrh    r0, [r4, #0x0]
	mov     r6, r1
	mov     r7, r3
	strh    r0, [r5, #0x0]
	ldrh    r0, [r4, #0x2]
	strh    r0, [r5, #0x2]
	ldrh    r0, [r4, #0x4]
	strh    r0, [r5, #0x4]
	mov     r0, r5
	add     r0, #0x8
	bl      0x201a7a0
	mov     r0, #0x2
	ldsh    r1, [r4, r0]
	cmp     r1, #0x0
	bge     branch_223009e
	neg     r1, r1
.thumb
branch_223009e: @ 223009e :thumb
	mov     r0, #0x0
	ldsh    r3, [r4, r0]
	cmp     r3, #0x0
	bge     branch_22300a8
	neg     r3, r3
.thumb
branch_22300a8: @ 22300a8 :thumb
	add     r0, r1, #0x4
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x1a
	str     r0, [sp, #0x4]
	mov     r0, #0x11
	str     r0, [sp, #0x8]
	mov     r0, #0x7
	str     r0, [sp, #0xc]
	lsl     r0, r7, #16
	lsr     r0, r0, #16
	.hword  0x1d1b @ add r3, r3, #0x4
	str     r0, [sp, #0x10]
	add     r5, #0x8
	lsl     r3, r3, #24
	ldr     r0, [r6, #0x0]
	mov     r1, r5
	mov     r2, #0x3
	lsr     r3, r3, #24
	bl      0x201a7e8
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x22300d8

.thumb
Function_22300d8: @ 22300d8 :thumb
	ldr     r3, [pc, #0x4] @ 0x22300e0, (=0x201a8fd)
	add     r0, #0x8
	bx      r3
@ 0x22300de


.align 2


.word 0x201a8fd @ 0x22300e0
.thumb
Function_22300e4: @ 22300e4 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r1, #0x2
	ldsh    r5, [r0, r1]
	cmp     r5, #0x0
	bge     branch_22300f4
	neg     r5, r5
.thumb
branch_22300f4: @ 22300f4 :thumb
	mov     r1, #0x0
	ldsh    r3, [r0, r1]
	cmp     r3, #0x0
	bge     branch_22300fe
	neg     r3, r3
.thumb
branch_22300fe: @ 22300fe :thumb
	lsl     r0, r5, #24
	ldr     r2, [r2, #0x8]
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldrh    r0, [r2, #0x0]
	lsl     r3, r3, #24
	mov     r1, #0x2
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	ldrh    r0, [r2, #0x2]
	add     r2, #0xc
	lsr     r3, r3, #24
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	bl      0x20198c0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2
	bl      0x201c3c0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2230130

.thumb
Function_2230130: @ 2230130 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	ldr     r5, [pc, #0x78] @ 0x22301b0, (=0x2232324)
	mov     r7, r0
	str     r1, [sp, #0xc]
	str     r2, [sp, #0x10]
	mov     r4, #0x0
.thumb
branch_223013e: @ 223013e :thumb
	ldr     r0, [sp, #0x10]
	cmp     r0, r4
	bne     branch_2230148
	mov     r0, #0x6
	b       branch_223014a
@ 0x2230148

.thumb
branch_2230148: @ 2230148 :thumb
	mov     r0, #0x0
.thumb
branch_223014a: @ 223014a :thumb
	mov     r1, #0x2
	ldsh    r3, [r7, r1]
	cmp     r3, #0x0
	bge     branch_2230154
	neg     r3, r3
.thumb
branch_2230154: @ 2230154 :thumb
	mov     r1, #0x0
	ldsh    r2, [r7, r1]
	cmp     r2, #0x0
	bge     branch_223015e
	neg     r2, r2
.thumb
branch_223015e: @ 223015e :thumb
	ldrb    r1, [r5, #0x4]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r1, [sp, #0x0]
	ldrb    r1, [r5, #0x5]
	mov     r6, #0x0
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldsh    r6, [r5, r6]
	ldr     r0, [sp, #0xc]
	ldr     r1, [r5, #0x8]
	add     r2, r6, r2
	mov     r6, #0x2
	ldsh    r6, [r5, r6]
	lsl     r1, r1, #24
	lsl     r2, r2, #24
	add     r3, r6, r3
	lsl     r3, r3, #24
	ldr     r0, [r0, #0x0]
	lsr     r1, r1, #24
	lsr     r2, r2, #24
	lsr     r3, r3, #24
	bl      0x2019e2c
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0xc
	cmp     r4, #0x9
	blt     branch_223013e
	ldr     r0, [sp, #0xc]
	mov     r1, #0x2
	ldr     r0, [r0, #0x0]
	bl      0x201c3c0
	ldr     r0, [sp, #0xc]
	mov     r1, #0x0
	ldr     r0, [r0, #0x0]
	bl      0x201c3c0
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x22301ae


.align 2


.word 0x2232324 @ 0x22301b0
.thumb
Function_22301b4: @ 22301b4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r6, r0
	ldr     r0, [sp, #0x30]
	mov     r7, r2
	str     r0, [sp, #0x30]
	ldr     r0, [sp, #0x34]
	str     r3, [sp, #0x10]
	str     r0, [sp, #0x34]
	ldr     r0, [sp, #0x3c]
	str     r0, [sp, #0x3c]
	ldr     r0, [r1, #0x0]
	bl      0x202b370
	str     r0, [sp, #0x14]
	mov     r0, r6
	add     r0, #0x8
	mov     r1, #0x0
	bl      Function_201ada4
	mov     r0, r6
	mov     r1, r7
	bl      Function_22302cc
	ldr     r0, [sp, #0x38]
	ldr     r1, [sp, #0x34]
	lsl     r0, r0, #3
	str     r0, [sp, #0x18]
	mov     r4, #0x0
	add     r5, r1, r0
.thumb
branch_22301f0: @ 22301f0 :thumb
	ldr     r0, [sp, #0x34]
	ldr     r1, [r0, #0x0]
	ldr     r0, [sp, #0x18]
	add     r0, r0, r4
	cmp     r1, r0
	bls     branch_2230218
	ldr     r0, [sp, #0x14]
	str     r4, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldrb    r0, [r5, #0x4]
	ldr     r1, [sp, #0x10]
	ldr     r3, [sp, #0x30]
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x3c]
	mov     r2, r7
	str     r0, [sp, #0xc]
	mov     r0, r6
	bl      Function_22302ec
	b       branch_2230224
@ 0x2230218

.thumb
branch_2230218: @ 2230218 :thumb
	ldr     r2, [sp, #0x30]
	mov     r0, r6
	mov     r1, r7
	mov     r3, r4
	bl      Function_22303cc
.thumb
branch_2230224: @ 2230224 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r4, #0x8
	blt     branch_22301f0
	ldr     r0, [r7, #0x0]
	mov     r1, #0x2
	bl      0x201c3c0
	add     r6, #0x8
	mov     r0, r6
	bl      Function_201a9a4
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x2230240

.thumb
Function_2230240: @ 2230240 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r4, r1
	bl      Function_22302cc
	mov     r0, r5
	add     r0, #0x8
	bl      0x201ad10
	mov     r0, #0x2
	ldsh    r1, [r5, r0]
	cmp     r1, #0x0
	bge     branch_223025e
	neg     r1, r1
.thumb
branch_223025e: @ 223025e :thumb
	mov     r0, #0x0
	ldsh    r3, [r5, r0]
	cmp     r3, #0x0
	bge     branch_2230268
	neg     r3, r3
.thumb
branch_2230268: @ 2230268 :thumb
	lsl     r0, r1, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldrb    r0, [r5, #0x4]
	lsl     r3, r3, #24
	mov     r2, #0x0
	str     r0, [sp, #0x4]
	ldrb    r0, [r5, #0x5]
	mov     r1, #0x2
	lsr     r3, r3, #24
	str     r0, [sp, #0x8]
	str     r2, [sp, #0xc]
	ldr     r0, [r4, #0x0]
	bl      0x2019cb8
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2
	bl      0x201c3c0
	mov     r0, #0x2
	ldsh    r1, [r5, r0]
	cmp     r1, #0x0
	bge     branch_2230298
	neg     r1, r1
.thumb
branch_2230298: @ 2230298 :thumb
	mov     r0, #0x0
	ldsh    r3, [r5, r0]
	cmp     r3, #0x0
	bge     branch_22302a2
	neg     r3, r3
.thumb
branch_22302a2: @ 22302a2 :thumb
	lsl     r0, r1, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldrb    r0, [r5, #0x4]
	lsl     r3, r3, #24
	mov     r2, #0x0
	str     r0, [sp, #0x4]
	ldrb    r0, [r5, #0x5]
	mov     r1, #0x3
	lsr     r3, r3, #24
	str     r0, [sp, #0x8]
	str     r2, [sp, #0xc]
	ldr     r0, [r4, #0x0]
	bl      0x2019cb8
	ldr     r0, [r4, #0x0]
	mov     r1, #0x3
	bl      0x201c3c0
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x22302cc

.thumb
Function_22302cc: @ 22302cc :thumb
	push    {r4-r6,lr}
	mov     r4, #0x0
	mov     r5, r0
	mov     r6, r4
.thumb
branch_22302d4: @ 22302d4 :thumb
	ldr     r0, [r5, #0x18]
	cmp     r0, #0x0
	beq     branch_22302e0
	bl      0x222b210
	str     r6, [r5, #0x18]
.thumb
branch_22302e0: @ 22302e0 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x8
	blt     branch_22302d4
	pop     {r4-r6,pc}
@ 0x22302ea


.align 2, 0


.thumb
Function_22302ec: @ 22302ec :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	mov     r5, r0
	ldr     r0, [sp, #0x48]
	mov     r6, r2
	str     r0, [sp, #0x18]
	str     r1, [sp, #0x10]
	ldr     r0, [sp, #0x44]
	ldr     r1, [sp, #0x18]
	mov     r2, #0x7
	str     r3, [sp, #0x14]
	ldr     r4, [sp, #0x40]
	bl      0x202ad2c
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x44]
	ldr     r1, [sp, #0x18]
	mov     r2, #0x8
	bl      0x202ad2c
	mov     r7, r0
	cmp     r7, #0x2
	bne     branch_2230328
	ldr     r2, [sp, #0x14]
	mov     r0, r5
	mov     r1, r6
	mov     r3, r4
	bl      Function_22303cc
	b       branch_223036c
@ 0x2230328

.thumb
branch_2230328: @ 2230328 :thumb
	mov     r0, #0xc
	mov     r6, r4
	mul     r6, r0
	ldr     r2, [pc, #0x90] @ 0x22303c0, (=0x2232324)
	mov     r1, #0x0
	ldsh    r1, [r5, r1]
	ldsh    r2, [r2, r6]
	add     r0, #0xfa
	add     r1, r1, r2
	lsl     r2, r1, #3
	add     r2, #0x8
	add     r1, sp, #0x20
	strh    r2, [r1, #0x0]
	mov     r2, #0x2
	ldsh    r3, [r5, r2]
	ldr     r2, [pc, #0x7c] @ 0x22303c4, (=0x2232326)
	ldsh    r2, [r2, r6]
	add     r2, r3, r2
	lsl     r2, r2, #3
	add     r0, r2, r0
	strh    r0, [r1, #0x2]
	mov     r0, #0x8
	strh    r0, [r1, #0x4]
	mov     r0, #0x1
	strh    r0, [r1, #0x6]
	ldr     r0, [sp, #0x10]
	ldr     r2, [sp, #0x1c]
	ldr     r3, [sp, #0x4c]
	add     r1, sp, #0x20
	bl      0x222b0c0
	lsl     r1, r4, #2
	add     r1, r5, r1
	str     r0, [r1, #0x18]
.thumb
branch_223036c: @ 223036c :thumb
	ldr     r1, [sp, #0x4c]
	mov     r0, #0x80
	bl      Function_2023790
	mov     r6, r0
	ldr     r0, [sp, #0x44]
	ldr     r1, [sp, #0x18]
	bl      0x202aef0
	mov     r1, r0
	mov     r0, r6
	bl      0x2023d28
	mov     r3, r4
	mov     r0, #0xc
	mul     r3, r0
	ldr     r0, [pc, #0x34] @ 0x22303c4, (=0x2232326)
	ldr     r4, [pc, #0x30] @ 0x22303c0, (=0x2232324)
	ldsh    r0, [r0, r3]
	ldsh    r3, [r4, r3]
	lsl     r1, r7, #2
	lsl     r0, r0, #3
	sub     r0, #0x18
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x24] @ 0x22303c8, (=0x22321e0)
	add     r5, #0x8
	ldr     r0, [r0, r1]
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r2, r6
	lsl     r3, r3, #3
	str     r1, [sp, #0xc]
	bl      0x201d78c
	mov     r0, r6
	bl      Function_20237bc
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x22303c0

.word 0x2232324 @ 0x22303c0
.word 0x2232326 @ 0x22303c4
.word 0x22321e0 @ 0x22303c8
.thumb
Function_22303cc: @ 22303cc :thumb
	push    {r3-r6,lr}
	add     sp, #-0x1c
	mov     r4, r1
	mov     r1, r3
	mov     r3, #0x2
	ldsh    r5, [r0, r3]
	cmp     r5, #0x0
	bge     branch_22303de
	neg     r5, r5
.thumb
branch_22303de: @ 22303de :thumb
	mov     r3, #0x0
	ldsh    r6, [r0, r3]
	cmp     r6, #0x0
	bge     branch_22303e8
	neg     r6, r6
.thumb
branch_22303e8: @ 22303e8 :thumb
	ldr     r0, [r2, #0xc]
	mov     r3, r1
	mov     r1, #0x3
	str     r1, [sp, #0x0]
	mov     r1, #0x4
	str     r1, [sp, #0x4]
	mov     r1, r0
	add     r1, #0xc
	str     r1, [sp, #0x8]
	mov     r1, #0x0
	mov     r2, #0xc
	str     r1, [sp, #0xc]
	mul     r3, r2
	str     r1, [sp, #0x10]
	ldrh    r1, [r0, #0x0]
	ldr     r2, [pc, #0x34] @ 0x223043c, (=0x2232324)
	ldsh    r2, [r2, r3]
	lsl     r1, r1, #21
	lsr     r1, r1, #24
	str     r1, [sp, #0x14]
	add     r2, r2, r6
	ldr     r6, [pc, #0x2c] @ 0x2230440, (=0x2232326)
	ldrh    r0, [r0, #0x2]
	ldsh    r3, [r6, r3]
	lsl     r2, r2, #24
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	add     r3, r3, r5
	str     r0, [sp, #0x18]
	lsl     r3, r3, #24
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2
	lsr     r2, r2, #24
	lsr     r3, r3, #24
	bl      0x20198e8
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2
	bl      0x201c3c0
	add     sp, #0x1c
	pop     {r3-r6,pc}
@ 0x223043c

.word 0x2232324 @ 0x223043c
.word 0x2232326 @ 0x2230440
.thumb
Function_2230444: @ 2230444 :thumb
	push    {r3,lr}
	bl      Function_22305d4
	pop     {r3,pc}
@ 0x223044c

.thumb
Function_223044c: @ 223044c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r2
	mov     r7, r1
	ldrb    r1, [r5, #0x4]
	mov     r4, r0
	ldr     r6, [sp, #0x30]
	cmp     r1, #0x6
	bls     branch_2230460
	b       branch_22305be
@ 0x2230460

.thumb
branch_2230460: @ 2230460 :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x223046c

Jumppoints_223046c:
.hword branch_223047a - Jumppoints_223046c - 2
.hword branch_22304c2 - Jumppoints_223046c - 2
.hword branch_22304fc - Jumppoints_223046c - 2
.hword branch_223052a - Jumppoints_223046c - 2
.hword branch_2230544 - Jumppoints_223046c - 2
.hword branch_2230566 - Jumppoints_223046c - 2
.hword branch_22305aa - Jumppoints_223046c - 2
.thumb
branch_223047a: @ 223047a :thumb
	mov     r1, r5
	mov     r2, r6
	bl      Function_22305dc
	str     r0, [r4, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	mov     r0, #0x0
	str     r0, [sp, #0x14]
	ldr     r0, [r5, #0x0]
	bl      0x2025e44
	mov     r3, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r1, #0xc
	add     r2, sp, #0x8
	bl      0x2089400
	str     r0, [r4, #0x8]
	mov     r0, r7
	bl      Function_222dfd0
	ldr     r0, [pc, #0x110] @ 0x22305c4, (=0x20f2dac)
	ldr     r1, [r4, #0x4]
	mov     r2, r6
	bl      0x20067e8
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	strb    r0, [r5, #0x4]
	b       branch_22305be
@ 0x22304c2

.thumb
branch_22304c2: @ 22304c2 :thumb
	ldr     r0, [r4, #0x0]
	bl      0x2006844
	cmp     r0, #0x0
	beq     branch_22305be
	ldr     r0, [r4, #0x0]
	bl      0x2006814
	ldr     r0, [r4, #0x4]
	ldr     r0, [r0, #0x14]
	cmp     r0, #0x0
	bne     branch_22304ec
	ldr     r0, [pc, #0xec] @ 0x22305c8, (=0x20f2dbc)
	ldr     r1, [r4, #0x8]
	mov     r2, r6
	bl      0x20067e8
	str     r0, [r4, #0x0]
	mov     r0, #0x2
	strb    r0, [r5, #0x4]
	b       branch_22305be
@ 0x22304ec

.thumb
branch_22304ec: @ 22304ec :thumb
	mov     r1, #0x0
	mov     r0, r5
	mov     r2, r1
	bl      Function_222e074
	mov     r0, #0x3
	strb    r0, [r5, #0x4]
	b       branch_22305be
@ 0x22304fc

.thumb
branch_22304fc: @ 22304fc :thumb
	ldr     r0, [r4, #0x0]
	bl      0x2006844
	cmp     r0, #0x0
	beq     branch_22305be
	ldr     r0, [r4, #0x0]
	bl      0x2006814
	ldr     r1, [r4, #0x4]
	ldr     r2, [r4, #0x8]
	ldr     r1, [r1, #0x18]
	ldr     r2, [r2, #0x1c]
	mov     r0, r5
	bl      Function_222e07c
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, #0x6
	bl      Function_222e074
	mov     r0, #0x3
	strb    r0, [r5, #0x4]
	b       branch_22305be
@ 0x223052a

.thumb
branch_223052a: @ 223052a :thumb
	ldr     r0, [r4, #0x4]
	bl      0x208716c
	ldr     r0, [r4, #0x8]
	bl      0x2089438
	mov     r0, r7
	mov     r1, r6
	bl      Function_222df48
	add     sp, #0x18
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2230544

.thumb
branch_2230544: @ 2230544 :thumb
	mov     r1, r5
	mov     r2, r6
	bl      Function_22305dc
	str     r0, [r4, #0x4]
	mov     r0, r7
	bl      Function_222dfd0
	ldr     r0, [pc, #0x6c] @ 0x22305c4, (=0x20f2dac)
	ldr     r1, [r4, #0x4]
	mov     r2, r6
	bl      0x20067e8
	str     r0, [r4, #0x0]
	mov     r0, #0x5
	strb    r0, [r5, #0x4]
	b       branch_22305be
@ 0x2230566

.thumb
branch_2230566: @ 2230566 :thumb
	ldr     r0, [r4, #0x0]
	bl      0x2006844
	cmp     r0, #0x0
	beq     branch_22305be
	ldr     r0, [r4, #0x0]
	bl      0x2006814
	ldr     r0, [r4, #0x4]
	ldr     r0, [r0, #0x14]
	cmp     r0, #0x0
	bne     branch_223059a
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0xc
	bl      Function_222e074
	ldr     r1, [r4, #0x4]
	mov     r0, r5
	ldr     r1, [r1, #0x18]
	mov     r2, #0x0
	bl      Function_222e07c
	mov     r0, #0x6
	strb    r0, [r5, #0x4]
	b       branch_22305be
@ 0x223059a

.thumb
branch_223059a: @ 223059a :thumb
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0xd
	bl      Function_222e074
	mov     r0, #0x6
	strb    r0, [r5, #0x4]
	b       branch_22305be
@ 0x22305aa

.thumb
branch_22305aa: @ 22305aa :thumb
	ldr     r0, [r4, #0x4]
	bl      0x208716c
	mov     r0, r7
	mov     r1, r6
	bl      Function_222df48
	add     sp, #0x18
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x22305be

.thumb
branch_22305be: @ 22305be :thumb
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x22305c4

.word 0x20f2dac @ 0x22305c4
.word 0x20f2dbc @ 0x22305c8
.thumb
Function_22305cc: @ 22305cc :thumb
	ldr     r3, [pc, #0x0] @ 0x22305d0, (=0x22305d9)
	bx      r3
@ 0x22305d0

.word Function_22305d8+1 @ =0x22305d9, 0x22305d0
.thumb
Function_22305d4: @ 22305d4 :thumb
	bx      lr
@ 0x22305d6


.align 2, 0


.thumb
Function_22305d8: @ 22305d8 :thumb
	bx      lr
@ 0x22305da


.align 2, 0


.thumb
Function_22305dc: @ 22305dc :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r0, [r5, #0x0]
	mov     r4, r2
	bl      0x2025e44
	mov     r1, #0x7
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r2, #0x0
	mov     r3, r1
	bl      Function_208712c
	mov     r4, r0
	ldr     r0, [r5, #0x38]
	cmp     r0, #0x1
	bne     branch_223061c
	ldr     r0, [r5, #0x34]
	ldrh    r0, [r0, #0x0]
	bl      0x201e17c
	cmp     r0, #0x0
	ldr     r0, [r4, #0x18]
	bne     branch_2230614
	ldr     r1, [r5, #0x34]
	bl      0x2023d28
	b       branch_2230618
@ 0x2230614

.thumb
branch_2230614: @ 2230614 :thumb
	bl      0x20237e8
.thumb
branch_2230618: @ 2230618 :thumb
	mov     r0, #0x0
	str     r0, [r5, #0x38]
.thumb
branch_223061c: @ 223061c :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2230620

.thumb
Function_2230620: @ 2230620 :thumb
	push    {r3,lr}
	bl      Function_2230680
	pop     {r3,pc}
@ 0x2230628

.thumb
Function_2230628: @ 2230628 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	ldrb    r3, [r4, #0x4]
	mov     r5, r0
	mov     r6, r2
	cmp     r3, #0x0
	beq     branch_223063c
	cmp     r3, #0x1
	beq     branch_2230646
	b       branch_223066c
@ 0x223063c

.thumb
branch_223063c: @ 223063c :thumb
	bl      Function_223081c
	mov     r0, #0x1
	strb    r0, [r4, #0x4]
	b       branch_223066c
@ 0x2230646

.thumb
branch_2230646: @ 2230646 :thumb
	ldr     r0, [pc, #0x28] @ 0x2230670, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_223066c
	ldr     r0, [pc, #0x20] @ 0x2230674, (=0x5dd)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x2
	bl      Function_222e074
	mov     r0, r5
	mov     r1, r6
	bl      Function_223087c
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x223066c

.thumb
branch_223066c: @ 223066c :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2230670

.word 0x21bf67c @ 0x2230670
.word 0x5dd @ 0x2230674
.thumb
Function_2230678: @ 2230678 :thumb
	ldr     r3, [pc, #0x0] @ 0x223067c, (=0x2230805)
	bx      r3
@ 0x223067c

.word Function_2230804+1 @ =0x2230805, 0x223067c
.thumb
Function_2230680: @ 2230680 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	mov     r5, r0
	str     r1, [sp, #0x14]
	mov     r4, r2
	mov     r7, r3
	bl      0x201a7a0
	mov     r0, #0xd
	str     r0, [sp, #0x0]
	mov     r0, #0x17
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	mov     r0, #0x7
	str     r0, [sp, #0xc]
	mov     r0, #0x1
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x0]
	mov     r1, r5
	mov     r2, #0x3
	mov     r3, #0x5
	bl      0x201a7e8
	mov     r0, r5
	add     r0, #0x10
	bl      0x201a7a0
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0xf
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0x7
	str     r0, [sp, #0xc]
	mov     r0, #0xb9
	str     r0, [sp, #0x10]
	mov     r1, r5
	ldr     r0, [r4, #0x0]
	add     r1, #0x10
	mov     r2, #0x3
	mov     r3, #0x9
	bl      0x201a7e8
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_201ada4
	mov     r0, r5
	add     r0, #0x10
	mov     r1, #0x0
	bl      Function_201ada4
	mov     r0, #0x80
	mov     r1, r7
	bl      Function_2023790
	mov     r6, r0
	mov     r0, #0x80
	mov     r1, r7
	bl      Function_2023790
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x14]
	ldr     r0, [r0, #0x0]
	bl      0x202b370
	bl      0x202ad28
	blx     0x20a471c
	str     r1, [sp, #0x1c]
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x1c]
	mov     r2, #0x0
	eor     r0, r2
	ldr     r2, [sp, #0x24]
	mov     r1, #0x0
	eor     r1, r2
	orr     r0, r1
	beq     branch_22307a6
	mov     r0, #0x63
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x2f
	mov     r2, r6
	bl      Function_200b1b8
	mov     r0, #0x0
	mov     r1, r6
	mov     r2, r0
	bl      0x2002eb4
	mov     r1, #0xb8
	sub     r0, r1, r0
	mov     r1, #0x0
	lsr     r3, r0, #1
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xb4] @ 0x2230800, (=0x10200)
	mov     r2, r6
	str     r0, [sp, #0x8]
	mov     r0, r5
	str     r1, [sp, #0xc]
	bl      0x201d78c
	ldr     r1, [sp, #0x24]
	ldr     r2, [sp, #0x1c]
	mov     r0, r4
	bl      Function_222e7f8
	mov     r0, #0x63
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	ldr     r2, [sp, #0x20]
	mov     r1, #0x33
	bl      Function_200b1b8
	mov     r0, #0x62
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	ldr     r2, [sp, #0x20]
	mov     r1, r6
	bl      Function_200c388
	mov     r0, #0x0
	mov     r1, r6
	mov     r2, r0
	mov     r3, #0x78
	bl      0x2002eec
	mov     r1, #0x0
	mov     r3, r0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x68] @ 0x2230800, (=0x10200)
	mov     r2, r6
	str     r0, [sp, #0x8]
	mov     r0, r5
	add     r0, #0x10
	str     r1, [sp, #0xc]
	bl      0x201d78c
	b       branch_22307da
@ 0x22307a6

.thumb
branch_22307a6: @ 22307a6 :thumb
	mov     r0, #0x63
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x30
	mov     r2, r6
	bl      Function_200b1b8
	mov     r0, #0x0
	mov     r1, r6
	mov     r2, r0
	bl      0x2002eb4
	mov     r1, #0xb8
	sub     r0, r1, r0
	mov     r1, #0x0
	lsr     r3, r0, #1
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x30] @ 0x2230800, (=0x10200)
	mov     r2, r6
	str     r0, [sp, #0x8]
	mov     r0, r5
	str     r1, [sp, #0xc]
	bl      0x201d78c
.thumb
branch_22307da: @ 22307da :thumb
	mov     r0, r6
	bl      Function_20237bc
	ldr     r0, [sp, #0x20]
	bl      Function_20237bc
	mov     r0, #0x19
	mov     r3, r5
	str     r7, [sp, #0x0]
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0xb
	mov     r2, #0x0
	add     r3, #0x24
	bl      0x20071d0
	str     r0, [r5, #0x20]
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x2230800

.word 0x10200 @ 0x2230800
.thumb
Function_2230804: @ 2230804 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_201a8fc
	mov     r0, r4
	add     r0, #0x10
	bl      Function_201a8fc
	ldr     r0, [r4, #0x20]
	bl      free
	pop     {r4,pc}
@ 0x223081c

.thumb
Function_223081c: @ 223081c :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [r1, #0x0]
	mov     r4, r2
	bl      LoadTrainerDataAdress
	mov     r2, r0
	mov     r0, #0x62
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x200b498
	mov     r0, r4
	mov     r1, #0x2e
	bl      Function_222e738
	ldr     r2, [r5, #0x24]
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	ldrh    r0, [r2, #0x0]
	mov     r1, #0x2
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	ldrh    r0, [r2, #0x2]
	add     r2, #0xc
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	bl      0x20198c0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2
	bl      0x201c3c0
	mov     r0, r5
	bl      Function_201a9a4
	add     r5, #0x10
	mov     r0, r5
	bl      Function_201a9a4
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x223087a


.align 2, 0


.thumb
Function_223087c: @ 223087c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	bl      Function_222e7c8
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x18
	str     r0, [sp, #0x8]
	str     r2, [sp, #0xc]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2
	mov     r3, r2
	bl      0x2019cb8
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2
	bl      0x201c3c0
	mov     r0, r5
	bl      0x201ad10
	add     r5, #0x10
	mov     r0, r5
	bl      0x201ad10
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x18
	str     r0, [sp, #0x8]
	str     r2, [sp, #0xc]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x3
	mov     r3, r2
	bl      0x2019cb8
	ldr     r0, [r4, #0x0]
	mov     r1, #0x3
	bl      0x201c3c0
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x22308dc

.thumb
Function_22308dc: @ 22308dc :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	mov     r6, r2
	mov     r7, r3
	bl      0x20507e4
	mov     r1, #0x2
	mov     r2, #0x35
	bl      0x206af3c
	str     r0, [r5, #0x10]
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	mov     r3, r7
	bl      Function_2230b1c
	pop     {r3-r7,pc}
@ 0x2230904

.thumb
Function_2230904: @ 2230904 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	ldrb    r5, [r6, #0x4]
	mov     r4, r0
	mov     r7, r2
	str     r3, [sp, #0x0]
	cmp     r5, #0x6
	bls     branch_2230916
	b       branch_2230a3e
@ 0x2230916

.thumb
branch_2230916: @ 2230916 :thumb
	add     r5, r5, r5
	add     r5, pc
	ldrh    r5, [r5, #0x6]
	lsl     r5, r5, #16
	asr     r5, r5, #16
	add     pc, r5
@ 0x2230922

Jumppoints_2230922:
.hword branch_2230930 - Jumppoints_2230922 - 2
.hword branch_2230936 - Jumppoints_2230922 - 2
.hword branch_2230948 - Jumppoints_2230922 - 2
.hword branch_22309c4 - Jumppoints_2230922 - 2
.hword branch_22309da - Jumppoints_2230922 - 2
.hword branch_22309e8 - Jumppoints_2230922 - 2
.hword branch_2230a2a - Jumppoints_2230922 - 2
.thumb
branch_2230930: @ 2230930 :thumb
	mov     r0, #0x0
	strh    r0, [r4, #0xe]
	strh    r0, [r4, #0x0]
.thumb
branch_2230936: @ 2230936 :thumb
	ldr     r3, [sp, #0x0]
	mov     r0, r4
	mov     r1, r6
	mov     r2, r7
	bl      Function_2230bd8
	mov     r0, #0x2
	strb    r0, [r6, #0x4]
	b       branch_2230a3e
@ 0x2230948

.thumb
branch_2230948: @ 2230948 :thumb
	ldr     r2, [pc, #0xf8] @ 0x2230a44, (=0x21bf67c)
	mov     r1, #0x3
	ldr     r3, [r2, #0x48]
	tst     r1, r3
	beq     branch_223095e
	ldr     r0, [pc, #0xf4] @ 0x2230a48, (=0x5dd)
	bl      Function_2005748
	mov     r0, #0x6
	strb    r0, [r6, #0x4]
	b       branch_22309b4
@ 0x223095e

.thumb
branch_223095e: @ 223095e :thumb
	ldr     r3, [r2, #0x4c]
	mov     r1, #0x20
	mov     r5, r3
	tst     r5, r1
	beq     branch_2230978
	sub     r1, #0x21
	bl      Function_2232138
	mov     r0, #0x3
	strb    r0, [r6, #0x4]
	mov     r0, #0x2
	str     r0, [r4, #0x8]
	b       branch_22309b4
@ 0x2230978

.thumb
branch_2230978: @ 2230978 :thumb
	mov     r1, #0x10
	tst     r1, r3
	beq     branch_223098c
	mov     r1, #0x1
	bl      Function_2232138
	mov     r0, #0x3
	strb    r0, [r6, #0x4]
	str     r0, [r4, #0x8]
	b       branch_22309b4
@ 0x223098c

.thumb
branch_223098c: @ 223098c :thumb
	ldr     r1, [r2, #0x44]
	mov     r0, #0x40
	tst     r0, r1
	beq     branch_22309a2
	mov     r0, #0x5
	strb    r0, [r6, #0x4]
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	mov     r0, #0x4
	strh    r0, [r4, #0xc]
	b       branch_22309b4
@ 0x22309a2

.thumb
branch_22309a2: @ 22309a2 :thumb
	mov     r0, #0x80
	tst     r0, r1
	beq     branch_22309b4
	mov     r0, #0x5
	strb    r0, [r6, #0x4]
	mov     r0, #0x1
	str     r0, [r4, #0x8]
	mov     r0, #0x4
	strh    r0, [r4, #0xc]
.thumb
branch_22309b4: @ 22309b4 :thumb
	ldr     r0, [pc, #0x8c] @ 0x2230a44, (=0x21bf67c)
	ldr     r1, [r0, #0x44]
	mov     r0, #0xc0
	tst     r0, r1
	bne     branch_2230a3e
	mov     r0, #0x0
	strh    r0, [r4, #0xe]
	b       branch_2230a3e
@ 0x22309c4

.thumb
branch_22309c4: @ 22309c4 :thumb
	bl      Function_2230a58
	ldr     r3, [sp, #0x0]
	mov     r0, r4
	mov     r1, r6
	mov     r2, r7
	bl      Function_2230a9c
	mov     r0, #0x4
	strb    r0, [r6, #0x4]
	b       branch_2230a3e
@ 0x22309da

.thumb
branch_22309da: @ 22309da :thumb
	bl      Function_2230a9c
	cmp     r0, #0x1
	bne     branch_2230a3e
	mov     r0, #0x2
	strb    r0, [r6, #0x4]
	b       branch_2230a3e
@ 0x22309e8

.thumb
branch_22309e8: @ 22309e8 :thumb
	ldrh    r0, [r4, #0xe]
	cmp     r0, #0x0
	beq     branch_22309fa
	ldrh    r0, [r4, #0xc]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, #0xc]
	ldrh    r0, [r4, #0xc]
	cmp     r0, #0x0
	bne     branch_2230a3e
.thumb
branch_22309fa: @ 22309fa :thumb
	ldr     r1, [r4, #0x8]
	mov     r0, r6
	bl      Function_2230ea8
	cmp     r0, #0x0
	beq     branch_2230a24
	ldr     r0, [pc, #0x44] @ 0x2230a4c, (=0x5e5)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, r7
	bl      Function_2230c1c
	mov     r0, r6
	mov     r1, #0x4
	mov     r2, #0x1
	bl      Function_222e074
	mov     r0, #0x1
	strh    r0, [r4, #0xe]
	pop     {r3-r7,pc}
@ 0x2230a24

.thumb
branch_2230a24: @ 2230a24 :thumb
	mov     r0, #0x2
	strb    r0, [r6, #0x4]
	b       branch_2230a3e
@ 0x2230a2a

.thumb
branch_2230a2a: @ 2230a2a :thumb
	mov     r1, r7
	bl      Function_2230c1c
	mov     r0, r6
	mov     r1, #0x1
	mov     r2, #0x9
	bl      Function_222e074
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2230a3e

.thumb
branch_2230a3e: @ 2230a3e :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2230a42


.align 2


.word 0x21bf67c @ 0x2230a44
.word 0x5dd @ 0x2230a48
.word 0x5e5 @ 0x2230a4c
.thumb
Function_2230a50: @ 2230a50 :thumb
	ldr     r3, [pc, #0x0] @ 0x2230a54, (=0x2230ba1)
	bx      r3
@ 0x2230a54

.word Function_2230ba0+1 @ =0x2230ba1, 0x2230a54
.thumb
Function_2230a58: @ 2230a58 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r7, r1
	mov     r5, r0
	mov     r4, r2
	mov     r1, #0x0
	str     r1, [r5, #0x4]
	mov     r0, r4
	mov     r6, r3
	bl      Function_222ea48
	ldr     r0, [r5, #0x8]
	cmp     r0, #0x2
	bne     branch_2230a78
	mov     r3, #0x2
	b       branch_2230a7a
@ 0x2230a78

.thumb
branch_2230a78: @ 2230a78 :thumb
	mov     r3, #0x1
.thumb
branch_2230a7a: @ 2230a7a :thumb
	mov     r0, #0x0
	ldsh    r0, [r5, r0]
	mov     r1, r7
	mov     r2, r4
	str     r0, [sp, #0x0]
	mov     r0, r5
	str     r6, [sp, #0x4]
	bl      Function_2230c50
	ldr     r0, [pc, #0x8] @ 0x2230a98, (=0x5e1)
	bl      Function_2005748
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2230a96


.align 2


.word 0x5e1 @ 0x2230a98
.thumb
Function_2230a9c: @ 2230a9c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	mov     r7, r1
	mov     r4, r2
	mov     r6, r3
	cmp     r0, #0x4
	ble     branch_2230ae6
	mov     r2, #0x0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2
	mov     r3, r2
	bl      Function_201c63c
	mov     r2, #0x0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x3
	mov     r3, r2
	bl      Function_201c63c
	mov     r3, #0x0
	ldsh    r0, [r5, r3]
	mov     r1, r7
	mov     r2, r4
	str     r0, [sp, #0x0]
	mov     r0, r5
	str     r6, [sp, #0x4]
	bl      Function_2230c50
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_222ea48
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2230ae6

.thumb
branch_2230ae6: @ 2230ae6 :thumb
	lsl     r1, r0, #8
	asr     r0, r1, #1
	lsr     r0, r0, #30
	add     r0, r1, r0
	asr     r6, r0, #2
	ldr     r0, [r5, #0x8]
	cmp     r0, #0x2
	bne     branch_2230af8
	neg     r6, r6
.thumb
branch_2230af8: @ 2230af8 :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2
	mov     r2, #0x0
	mov     r3, r6
	bl      Function_201c63c
	ldr     r0, [r4, #0x0]
	mov     r1, #0x3
	mov     r2, #0x0
	mov     r3, r6
	bl      Function_201c63c
	ldr     r0, [r5, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x4]
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2230b1c

.thumb
Function_2230b1c: @ 2230b1c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r7, r0
	str     r2, [sp, #0x8]
	mov     r1, r2
	add     r0, #0xe0
	mov     r2, r3
	str     r3, [sp, #0xc]
	bl      Function_2230f24
	mov     r0, #0x0
	str     r0, [sp, #0x18]
	ldr     r0, [pc, #0x58] @ 0x2230b90, (=0x22321d4)
	add     r7, #0x14
	str     r0, [sp, #0x14]
	ldr     r0, [pc, #0x58] @ 0x2230b94, (=0x223221c)
	str     r0, [sp, #0x10]
.thumb
branch_2230b3e: @ 2230b3e :thumb
	ldr     r0, [sp, #0xc]
	ldr     r3, [sp, #0x14]
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x8]
	ldr     r2, [sp, #0x10]
	ldr     r3, [r3, #0x0]
	mov     r0, r7
	bl      Function_2230f78
	ldr     r4, [pc, #0x44] @ 0x2230b98, (=0x2232470)
	ldr     r5, [pc, #0x48] @ 0x2230b9c, (=0x2232434)
	mov     r6, #0x0
.thumb
branch_2230b56: @ 2230b56 :thumb
	ldr     r0, [r4, #0x0]
	ldr     r1, [sp, #0x8]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0xc]
	mov     r2, r6
	str     r0, [sp, #0x4]
	ldrb    r3, [r5, #0x0]
	mov     r0, r7
	bl      Function_2230f9c
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r6, #0x7
	blt     branch_2230b56
	ldr     r0, [sp, #0x14]
	add     r7, #0x44
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x10]
	.hword  0x1d80 @ add r0, r0, #0x6
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x18]
	cmp     r0, #0x3
	blt     branch_2230b3e
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x2230b90

.word 0x22321d4 @ 0x2230b90
.word 0x223221c @ 0x2230b94
.word 0x2232470 @ 0x2230b98
.word 0x2232434 @ 0x2230b9c
.thumb
Function_2230ba0: @ 2230ba0 :thumb
	push    {r3-r7,lr}
	mov     r6, #0x0
	mov     r5, r0
	str     r0, [sp, #0x0]
	add     r5, #0x14
	mov     r7, r6
.thumb
branch_2230bac: @ 2230bac :thumb
	mov     r4, r7
.thumb
branch_2230bae: @ 2230bae :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_2231058
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x7
	blt     branch_2230bae
	mov     r0, r5
	bl      Function_2230f98
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x44
	cmp     r6, #0x3
	blt     branch_2230bac
	ldr     r0, [sp, #0x0]
	add     r0, #0xe0
	str     r0, [sp, #0x0]
	bl      Function_2230f60
	pop     {r3-r7,pc}
@ 0x2230bd6


.align 2, 0


.thumb
Function_2230bd8: @ 2230bd8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r6, r2
	mov     r2, #0x7
	ldsb    r2, [r4, r2]
	mov     r5, r0
	ldr     r1, [r4, #0x0]
	add     r2, r4, r2
	ldrb    r2, [r2, #0xc]
	mov     r0, r6
	mov     r7, r3
	bl      Function_222e880
	mov     r0, r6
	mov     r1, #0xd
	bl      Function_222e738
	mov     r3, #0x0
	ldsh    r0, [r5, r3]
	mov     r1, r4
	mov     r2, r6
	str     r0, [sp, #0x0]
	mov     r0, r5
	str     r7, [sp, #0x4]
	bl      Function_2230c50
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_222ea28
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2230c1a


.align 2, 0


.thumb
Function_2230c1c: @ 2230c1c :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r7, r0
	mov     r0, r6
	mov     r1, #0x0
	bl      Function_222ea28
	mov     r5, r7
	mov     r4, #0x0
	add     r5, #0x14
.thumb
branch_2230c30: @ 2230c30 :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_2231144
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x44
	cmp     r4, #0x3
	blt     branch_2230c30
	mov     r0, r7
	mov     r1, r6
	bl      Function_2230d50
	mov     r0, r6
	bl      Function_222e7c8
	pop     {r3-r7,pc}
@ 0x2230c50

.thumb
Function_2230c50: @ 2230c50 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r7, r1
	mov     r4, r2
	mov     r6, r3
	bne     branch_2230c6a
	ldr     r2, [sp, #0x20]
	ldr     r3, [sp, #0x24]
	mov     r1, r4
	strh    r2, [r5, #0x0]
	bl      Function_2230c8c
.thumb
branch_2230c6a: @ 2230c6a :thumb
	mov     r0, r5
	add     r0, #0xe0
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x24]
	add     r5, #0x14
	str     r0, [sp, #0x4]
	mov     r0, #0x44
	mul     r0, r6
	ldr     r3, [sp, #0x20]
	add     r0, r5, r0
	mov     r1, r7
	mov     r2, r4
	bl      Function_22310d4
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2230c8a


.align 2, 0


.thumb
Function_2230c8c: @ 2230c8c :thumb
	push    {r4,r5,lr}
	add     sp, #-0x1c
	ldr     r0, [r0, #0x10]
	mov     r5, r1
	mov     r4, r2
	cmp     r0, #0x1
	bne     branch_2230cd4
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x9
	str     r1, [sp, #0x0]
	mov     r1, #0x3
	str     r1, [sp, #0x4]
	mov     r1, r0
	add     r1, #0xc
	str     r1, [sp, #0x8]
	mov     r1, #0x10
	str     r1, [sp, #0xc]
	mov     r1, #0x4
	str     r1, [sp, #0x10]
	ldrh    r1, [r0, #0x0]
	mov     r2, #0x16
	lsl     r1, r1, #21
	lsr     r1, r1, #24
	str     r1, [sp, #0x14]
	ldrh    r0, [r0, #0x2]
	mov     r1, #0x0
	mov     r3, r1
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x18]
	ldr     r0, [r5, #0x0]
	bl      0x20198e8
	b       branch_2230d0c
@ 0x2230cd4

.thumb
branch_2230cd4: @ 2230cd4 :thumb
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x9
	str     r1, [sp, #0x0]
	mov     r1, #0x3
	str     r1, [sp, #0x4]
	mov     r1, r0
	add     r1, #0xc
	str     r1, [sp, #0x8]
	mov     r1, #0x10
	str     r1, [sp, #0xc]
	mov     r1, #0x7
	str     r1, [sp, #0x10]
	ldrh    r1, [r0, #0x0]
	mov     r2, #0x16
	lsl     r1, r1, #21
	lsr     r1, r1, #24
	str     r1, [sp, #0x14]
	ldrh    r0, [r0, #0x2]
	mov     r1, #0x0
	mov     r3, r1
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x18]
	ldr     r0, [r5, #0x0]
	bl      0x20198e8
.thumb
branch_2230d0c: @ 2230d0c :thumb
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r3, #0x1
	str     r3, [sp, #0x0]
	mov     r1, r0
	str     r3, [sp, #0x4]
	add     r1, #0xc
	str     r1, [sp, #0x8]
	mov     r1, #0x5
	str     r1, [sp, #0xc]
	mov     r1, #0x0
	str     r1, [sp, #0x10]
	ldrh    r2, [r0, #0x0]
	add     r4, #0x17
	lsl     r2, r2, #21
	lsr     r2, r2, #24
	str     r2, [sp, #0x14]
	ldrh    r0, [r0, #0x2]
	lsl     r2, r4, #24
	lsr     r2, r2, #24
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x18]
	ldr     r0, [r5, #0x0]
	bl      0x20198e8
	ldr     r0, [r5, #0x0]
	mov     r1, #0x0
	bl      0x201c3c0
	add     sp, #0x1c
	pop     {r4,r5,pc}
@ 0x2230d4e


.align 2, 0


.thumb
Function_2230d50: @ 2230d50 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x1c
	mov     r0, #0x7e
	mov     r4, r1
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x9
	str     r1, [sp, #0x0]
	mov     r1, #0x3
	str     r1, [sp, #0x4]
	mov     r1, r0
	add     r1, #0xc
	str     r1, [sp, #0x8]
	mov     r1, #0x10
	str     r1, [sp, #0xc]
	mov     r1, #0x0
	str     r1, [sp, #0x10]
	ldrh    r2, [r0, #0x0]
	mov     r3, r1
	lsl     r2, r2, #21
	lsr     r2, r2, #24
	str     r2, [sp, #0x14]
	ldrh    r0, [r0, #0x2]
	mov     r2, #0x16
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x18]
	ldr     r0, [r4, #0x0]
	bl      0x20198e8
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	bl      0x201c3c0
	add     sp, #0x1c
	pop     {r3,r4,pc}
@ 0x2230d98

.thumb
Function_2230d98: @ 2230d98 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x1c
	mov     r0, #0x7e
	mov     r4, r1
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r5, #0x1
	str     r5, [sp, #0x0]
	mov     r1, r0
	str     r5, [sp, #0x4]
	add     r1, #0xc
	str     r1, [sp, #0x8]
	mov     r1, #0x5
	str     r1, [sp, #0xc]
	str     r5, [sp, #0x10]
	ldrh    r1, [r0, #0x0]
	add     r3, #0x17
	lsl     r2, r3, #24
	lsl     r1, r1, #21
	lsr     r1, r1, #24
	str     r1, [sp, #0x14]
	ldrh    r0, [r0, #0x2]
	mov     r1, #0x0
	lsr     r2, r2, #24
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x18]
	ldr     r0, [r4, #0x0]
	mov     r3, r5
	bl      0x20198e8
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	bl      0x201c3c0
	add     sp, #0x1c
	pop     {r4,r5,pc}
@ 0x2230de2


.align 2, 0


.thumb
Function_2230de4: @ 2230de4 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x1c
	ldr     r0, [r0, #0x10]
	mov     r5, r1
	mov     r4, r2
	cmp     r0, #0x1
	bne     branch_2230e2c
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x9
	str     r1, [sp, #0x0]
	mov     r1, #0x3
	str     r1, [sp, #0x4]
	mov     r1, r0
	add     r1, #0xc
	str     r1, [sp, #0x8]
	mov     r1, #0x10
	str     r1, [sp, #0xc]
	mov     r1, #0x4
	str     r1, [sp, #0x10]
	ldrh    r1, [r0, #0x0]
	mov     r2, #0x16
	lsl     r1, r1, #21
	lsr     r1, r1, #24
	str     r1, [sp, #0x14]
	ldrh    r0, [r0, #0x2]
	mov     r1, #0x0
	mov     r3, r1
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x18]
	ldr     r0, [r5, #0x0]
	bl      0x20198e8
	b       branch_2230e64
@ 0x2230e2c

.thumb
branch_2230e2c: @ 2230e2c :thumb
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x9
	str     r1, [sp, #0x0]
	mov     r1, #0x3
	str     r1, [sp, #0x4]
	mov     r1, r0
	add     r1, #0xc
	str     r1, [sp, #0x8]
	mov     r1, #0x10
	str     r1, [sp, #0xc]
	mov     r1, #0x7
	str     r1, [sp, #0x10]
	ldrh    r1, [r0, #0x0]
	mov     r2, #0x16
	lsl     r1, r1, #21
	lsr     r1, r1, #24
	str     r1, [sp, #0x14]
	ldrh    r0, [r0, #0x2]
	mov     r1, #0x0
	mov     r3, r1
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x18]
	ldr     r0, [r5, #0x0]
	bl      0x20198e8
.thumb
branch_2230e64: @ 2230e64 :thumb
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r3, #0x1
	str     r3, [sp, #0x0]
	mov     r1, r0
	str     r3, [sp, #0x4]
	add     r1, #0xc
	str     r1, [sp, #0x8]
	mov     r1, #0x5
	str     r1, [sp, #0xc]
	mov     r1, #0x0
	str     r1, [sp, #0x10]
	ldrh    r2, [r0, #0x0]
	add     r4, #0x17
	lsl     r2, r2, #21
	lsr     r2, r2, #24
	str     r2, [sp, #0x14]
	ldrh    r0, [r0, #0x2]
	lsl     r2, r4, #24
	lsr     r2, r2, #24
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x18]
	ldr     r0, [r5, #0x0]
	bl      0x20198e8
	ldr     r0, [r5, #0x0]
	mov     r1, #0x0
	bl      0x201c3c0
	add     sp, #0x1c
	pop     {r4,r5,pc}
@ 0x2230ea6


.align 2, 0


.thumb
Function_2230ea8: @ 2230ea8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r7, r1
	bl      0x202b370
	mov     r6, r0
	mov     r0, #0x7
	ldsb    r4, [r5, r0]
	cmp     r7, #0x0
	bne     branch_2230eee
	ldr     r1, [r5, #0x8]
	mov     r7, #0x0
	.hword  0x1e48 @ sub r0, r1, #0x1
	beq     branch_2230f1e
.thumb
branch_2230ec6: @ 2230ec6 :thumb
	.hword  0x1e64 @ sub r4, r4, #0x1
	bpl     branch_2230ecc
	add     r4, r4, r1
.thumb
branch_2230ecc: @ 2230ecc :thumb
	add     r1, r5, r4
	ldrb    r1, [r1, #0xc]
	mov     r0, r6
	mov     r2, #0x8
	bl      0x202ad2c
	cmp     r0, #0x2
	beq     branch_2230ee2
	strb    r4, [r5, #0x7]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2230ee2

.thumb
branch_2230ee2: @ 2230ee2 :thumb
	ldr     r1, [r5, #0x8]
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1e48 @ sub r0, r1, #0x1
	cmp     r7, r0
	bcc     branch_2230ec6
	b       branch_2230f1e
@ 0x2230eee

.thumb
branch_2230eee: @ 2230eee :thumb
	ldr     r1, [r5, #0x8]
	mov     r7, #0x0
	.hword  0x1e48 @ sub r0, r1, #0x1
	beq     branch_2230f1e
.thumb
branch_2230ef6: @ 2230ef6 :thumb
	add     r0, r4, #0x1
	blx     _u32_div_f
	mov     r4, r1
	add     r1, r5, r4
	ldrb    r1, [r1, #0xc]
	mov     r0, r6
	mov     r2, #0x8
	bl      0x202ad2c
	cmp     r0, #0x2
	beq     branch_2230f14
	strb    r4, [r5, #0x7]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2230f14

.thumb
branch_2230f14: @ 2230f14 :thumb
	ldr     r1, [r5, #0x8]
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1e48 @ sub r0, r1, #0x1
	cmp     r7, r0
	bcc     branch_2230ef6
.thumb
branch_2230f1e: @ 2230f1e :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2230f22


.align 2, 0


.thumb
Function_2230f24: @ 2230f24 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r6, r5
	ldr     r4, [pc, #0x2c] @ 0x2230f5c, (=0x223242c)
	str     r1, [sp, #0x4]
	str     r2, [sp, #0x8]
	mov     r7, #0x0
	add     r6, #0x1c
.thumb
branch_2230f36: @ 2230f36 :thumb
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x4]
	str     r0, [sp, #0x0]
	mov     r0, #0x19
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	ldrb    r1, [r4, #0x0]
	mov     r2, #0x0
	mov     r3, r6
	bl      0x20071d0
	.hword  0x1c7f @ add r7, r7, #0x1
	stmia   r5!, {r0}
	.hword  0x1d36 @ add r6, r6, #0x4
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r7, #0x7
	blt     branch_2230f36
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2230f5c

.word 0x223242c @ 0x2230f5c
.thumb
Function_2230f60: @ 2230f60 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_2230f66: @ 2230f66 :thumb
	ldr     r0, [r5, #0x0]
	bl      free
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x7
	blt     branch_2230f66
	pop     {r3-r5,pc}
@ 0x2230f76


.align 2, 0


.thumb
Function_2230f78: @ 2230f78 :thumb
	ldrh    r1, [r2, #0x0]
	strh    r1, [r0, #0x0]
	ldrh    r1, [r2, #0x2]
	strh    r1, [r0, #0x2]
	ldrh    r1, [r2, #0x4]
	mov     r2, #0x0
	strh    r1, [r0, #0x4]
	str     r3, [r0, #0x8]
	mov     r1, r2
.thumb
branch_2230f8a: @ 2230f8a :thumb
	str     r1, [r0, #0xc]
	str     r1, [r0, #0x28]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	cmp     r2, #0x7
	blt     branch_2230f8a
	bx      lr
@ 0x2230f98

.thumb
Function_2230f98: @ 2230f98 :thumb
	bx      lr
@ 0x2230f9a


.align 2, 0


.thumb
Function_2230f9c: @ 2230f9c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	str     r1, [sp, #0x18]
	mov     r1, r3
	str     r0, [sp, #0x14]
	lsl     r1, r1, #24
	ldr     r0, [sp, #0x44]
	lsr     r1, r1, #24
	str     r3, [sp, #0x1c]
	lsl     r4, r2, #2
	bl      0x201a778
	ldr     r1, [sp, #0x14]
	add     r7, r1, r4
	str     r0, [r7, #0xc]
	ldr     r0, [sp, #0x1c]
	str     r0, [r7, #0x28]
	mov     r0, r1
	ldr     r0, [r0, #0x8]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x20]
	mov     r0, #0x0
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x1c]
	cmp     r0, #0x0
	bls     branch_2231052
	ldr     r4, [sp, #0x24]
	ldr     r5, [sp, #0x40]
.thumb
branch_2230fd6: @ 2230fd6 :thumb
	ldr     r0, [r7, #0xc]
	add     r0, r0, r4
	bl      0x201a7a0
	ldr     r1, [sp, #0x14]
	mov     r0, #0x2
	ldsh    r0, [r1, r0]
	cmp     r0, #0x0
	bge     branch_2230fea
	neg     r0, r0
.thumb
branch_2230fea: @ 2230fea :thumb
	ldr     r2, [sp, #0x14]
	mov     r1, #0x0
	ldsh    r6, [r2, r1]
	cmp     r6, #0x0
	bge     branch_2230ff6
	neg     r6, r6
.thumb
branch_2230ff6: @ 2230ff6 :thumb
	ldrb    r1, [r5, #0x1]
	mov     r2, #0x3
	add     r0, r1, r0
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldrb    r0, [r5, #0x2]
	str     r0, [sp, #0x4]
	ldrb    r0, [r5, #0x3]
	str     r0, [sp, #0x8]
	mov     r0, #0x7
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x20]
	str     r0, [sp, #0x10]
	ldrb    r3, [r5, #0x0]
	ldr     r0, [sp, #0x18]
	ldr     r1, [r7, #0xc]
	add     r3, r3, r6
	lsl     r3, r3, #24
	ldr     r0, [r0, #0x0]
	add     r1, r1, r4
	lsr     r3, r3, #24
	bl      0x201a7e8
	ldr     r0, [r7, #0xc]
	mov     r1, #0x0
	add     r0, r0, r4
	bl      Function_201ada4
	ldrb    r1, [r5, #0x2]
	ldrb    r0, [r5, #0x3]
	add     r4, #0x10
	mov     r2, r1
	mul     r2, r0
	ldr     r0, [sp, #0x20]
	.hword  0x1d2d @ add r5, r5, #0x4
	add     r0, r0, r2
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x24]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x1c]
	str     r1, [sp, #0x24]
	cmp     r1, r0
	bcc     branch_2230fd6
.thumb
branch_2231052: @ 2231052 :thumb
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x2231056


.align 2, 0


.thumb
Function_2231058: @ 2231058 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	lsl     r4, r1, #2
	add     r0, r5, r4
	ldr     r0, [r0, #0xc]
	cmp     r0, #0x0
	beq     branch_223107c
	mov     r6, r5
	add     r6, #0x28
	ldr     r1, [r6, r4]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_201a928
	mov     r1, #0x0
	add     r0, r5, r4
	str     r1, [r0, #0xc]
	str     r1, [r6, r4]
.thumb
branch_223107c: @ 223107c :thumb
	pop     {r4-r6,pc}
@ 0x223107e


.align 2, 0


.thumb
Function_2231080: @ 2231080 :thumb
	push    {r4-r6,lr}
	lsl     r1, r1, #2
	add     r5, r0, r1
	ldr     r0, [r5, #0x28]
	mov     r6, #0x0
	cmp     r0, #0x0
	bls     branch_22310a2
	mov     r4, r6
.thumb
branch_2231090: @ 2231090 :thumb
	ldr     r0, [r5, #0xc]
	add     r0, r0, r4
	bl      Function_201a9a4
	ldr     r0, [r5, #0x28]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x10
	cmp     r6, r0
	bcc     branch_2231090
.thumb
branch_22310a2: @ 22310a2 :thumb
	pop     {r4-r6,pc}
@ 0x22310a4

.thumb
Function_22310a4: @ 22310a4 :thumb
	push    {r3-r7,lr}
	lsl     r1, r1, #2
	add     r5, r0, r1
	ldr     r0, [r5, #0x28]
	mov     r6, #0x0
	cmp     r0, #0x0
	bls     branch_22310d2
	mov     r4, r6
	mov     r7, r6
.thumb
branch_22310b6: @ 22310b6 :thumb
	ldr     r0, [r5, #0xc]
	add     r0, r0, r4
	bl      0x201ad10
	ldr     r0, [r5, #0xc]
	mov     r1, r7
	add     r0, r0, r4
	bl      Function_201ada4
	ldr     r0, [r5, #0x28]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x10
	cmp     r6, r0
	bcc     branch_22310b6
.thumb
branch_22310d2: @ 22310d2 :thumb
	pop     {r3-r7,pc}
@ 0x22310d4

.thumb
Function_22310d4: @ 22310d4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r2
	mov     r7, r1
	mov     r1, r4
	mov     r5, r0
	mov     r6, r3
	bl      Function_2231144
	mov     r0, #0x2
	ldsh    r0, [r5, r0]
	cmp     r0, #0x0
	bge     branch_22310f0
	neg     r0, r0
.thumb
branch_22310f0: @ 22310f0 :thumb
	mov     r1, #0x0
	ldsh    r3, [r5, r1]
	cmp     r3, #0x0
	bge     branch_22310fa
	neg     r3, r3
.thumb
branch_22310fa: @ 22310fa :thumb
	ldr     r1, [sp, #0x20]
	lsl     r6, r6, #2
	add     r1, r1, r6
	ldr     r2, [r1, #0x1c]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldrh    r0, [r2, #0x0]
	lsl     r3, r3, #24
	mov     r1, #0x2
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	ldrh    r0, [r2, #0x2]
	add     r2, #0xc
	lsr     r3, r3, #24
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	bl      0x20198c0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2
	bl      0x201c3c0
	mov     r2, r4
	ldr     r4, [pc, #0xc] @ 0x2231140, (=0x223248c)
	ldr     r3, [sp, #0x24]
	ldr     r4, [r4, r6]
	mov     r0, r5
	mov     r1, r7
	blx     r4
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2231140

.word 0x223248c @ 0x2231140
.thumb
Function_2231144: @ 2231144 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r4, #0x0
.thumb
branch_223114c: @ 223114c :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_22310a4
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x7
	blt     branch_223114c
	mov     r0, r6
	mov     r1, r5
	bl      Function_2232038
	pop     {r4-r6,pc}
@ 0x2231164

.thumb
Function_2231164: @ 2231164 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x50
	mov     r5, r1
	str     r0, [sp, #0x20]
	ldr     r0, [r5, #0x0]
	str     r3, [sp, #0x24]
	mov     r4, r2
	bl      0x202b370
	str     r0, [sp, #0x2c]
	ldr     r1, [sp, #0x24]
	mov     r0, #0x80
	bl      Function_2023790
	mov     r7, r0
	ldr     r1, [sp, #0x24]
	mov     r0, #0x80
	bl      Function_2023790
	mov     r6, r0
	mov     r1, #0x0
	str     r4, [sp, #0x0]
	mov     r0, #0xe
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r0, #0x4
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x380] @ 0x223151c, (=0x10200)
	mov     r2, r1
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	ldr     r0, [sp, #0x20]
	mov     r3, r5
	str     r1, [sp, #0x1c]
	bl      Function_22320b8
	mov     r2, #0x7
	ldsb    r2, [r5, r2]
	ldr     r1, [r5, #0x0]
	ldr     r3, [sp, #0x24]
	add     r2, r5, r2
	ldrb    r2, [r2, #0xc]
	mov     r0, r4
	bl      Function_222e8c0
	mov     r1, #0x0
	str     r4, [sp, #0x0]
	mov     r0, #0x3d
	str     r0, [sp, #0x4]
	mov     r0, #0x80
	str     r0, [sp, #0x8]
	mov     r0, #0x4
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x348] @ 0x223151c, (=0x10200)
	mov     r2, r1
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	mov     r0, #0x2
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x20]
	mov     r3, r5
	bl      Function_22320b8
	mov     r1, #0x0
	str     r4, [sp, #0x0]
	mov     r0, #0xf
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r0, #0x1c
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x324] @ 0x223151c, (=0x10200)
	mov     r2, r1
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	ldr     r0, [sp, #0x20]
	str     r1, [sp, #0x1c]
	mov     r3, r5
	bl      Function_22320b8
	str     r4, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r1, #0x0
	str     r1, [sp, #0x8]
	mov     r0, #0x4
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x304] @ 0x223151c, (=0x10200)
	mov     r2, #0x1
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	ldr     r0, [sp, #0x20]
	mov     r3, r5
	str     r1, [sp, #0x1c]
	bl      Function_22320b8
	mov     r1, #0x7
	ldsb    r1, [r5, r1]
	ldr     r0, [sp, #0x2c]
	mov     r2, #0x1
	add     r1, r5, r1
	ldrb    r1, [r1, #0xc]
	bl      0x202ad2c
	mov     r1, r0
	mov     r0, r4
	bl      Function_222e970
	str     r4, [sp, #0x0]
	mov     r0, #0x12
	str     r0, [sp, #0x4]
	mov     r0, #0x40
	str     r0, [sp, #0x8]
	mov     r0, #0x4
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x2c8] @ 0x223151c, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	mov     r0, #0x2
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x20]
	mov     r2, #0x1
	mov     r3, r5
	bl      Function_22320b8
	str     r4, [sp, #0x0]
	mov     r0, #0x11
	str     r0, [sp, #0x4]
	mov     r1, #0x0
	str     r1, [sp, #0x8]
	mov     r0, #0x14
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x2a4] @ 0x223151c, (=0x10200)
	mov     r2, #0x1
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	ldr     r0, [sp, #0x20]
	mov     r3, r5
	str     r1, [sp, #0x1c]
	bl      Function_22320b8
	mov     r1, #0x7
	ldsb    r1, [r5, r1]
	ldr     r0, [sp, #0x2c]
	mov     r2, #0x2
	add     r1, r5, r1
	ldrb    r1, [r1, #0xc]
	bl      0x202ad2c
	mov     r1, r0
	mov     r0, r4
	bl      Function_222e970
	str     r4, [sp, #0x0]
	mov     r0, #0x12
	str     r0, [sp, #0x4]
	mov     r0, #0x40
	str     r0, [sp, #0x8]
	mov     r0, #0x14
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x268] @ 0x223151c, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	mov     r0, #0x2
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x20]
	mov     r2, #0x1
	mov     r3, r5
	bl      Function_22320b8
	str     r4, [sp, #0x0]
	mov     r0, #0x13
	str     r0, [sp, #0x4]
	mov     r1, #0x0
	str     r1, [sp, #0x8]
	mov     r0, #0x4
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x244] @ 0x223151c, (=0x10200)
	mov     r2, #0x2
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	ldr     r0, [sp, #0x20]
	mov     r3, r5
	str     r1, [sp, #0x1c]
	bl      Function_22320b8
	mov     r1, #0x7
	ldsb    r1, [r5, r1]
	ldr     r0, [sp, #0x2c]
	mov     r2, #0x3
	add     r1, r5, r1
	ldrb    r1, [r1, #0xc]
	bl      0x202ad2c
	mov     r1, r0
	mov     r0, r4
	bl      Function_222e970
	str     r4, [sp, #0x0]
	mov     r0, #0x14
	str     r0, [sp, #0x4]
	mov     r0, #0x80
	str     r0, [sp, #0x8]
	mov     r0, #0x4
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x208] @ 0x223151c, (=0x10200)
	mov     r2, #0x2
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	ldr     r0, [sp, #0x20]
	mov     r1, #0x0
	mov     r3, r5
	str     r2, [sp, #0x1c]
	bl      Function_22320b8
	ldr     r1, [sp, #0x24]
	mov     r0, r5
	bl      Function_223217c
	cmp     r0, #0x0
	beq     branch_2231390
	str     r4, [sp, #0x0]
	mov     r0, #0x15
	str     r0, [sp, #0x4]
	mov     r1, #0x0
	str     r1, [sp, #0x8]
	mov     r0, #0x14
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x1d8] @ 0x223151c, (=0x10200)
	mov     r2, #0x2
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	ldr     r0, [sp, #0x20]
	mov     r3, r5
	str     r1, [sp, #0x1c]
	bl      Function_22320b8
	mov     r1, #0x7
	ldsb    r1, [r5, r1]
	ldr     r0, [sp, #0x2c]
	mov     r2, #0x9
	add     r1, r5, r1
	ldrb    r1, [r1, #0xc]
	bl      0x202ad2c
	mov     r1, r0
	mov     r0, r4
	bl      Function_222e970
	str     r4, [sp, #0x0]
	mov     r0, #0x16
	str     r0, [sp, #0x4]
	mov     r0, #0x80
	str     r0, [sp, #0x8]
	mov     r0, #0x14
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x1a0] @ 0x223151c, (=0x10200)
	mov     r2, #0x2
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	ldr     r0, [sp, #0x20]
	mov     r1, #0x0
	mov     r3, r5
	str     r2, [sp, #0x1c]
	bl      Function_22320b8
.thumb
branch_2231390: @ 2231390 :thumb
	str     r4, [sp, #0x0]
	mov     r0, #0x17
	str     r0, [sp, #0x4]
	mov     r1, #0x0
	str     r1, [sp, #0x8]
	mov     r0, #0x6
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x180] @ 0x2231520, (=0xf0200)
	mov     r2, #0x3
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	ldr     r0, [sp, #0x20]
	mov     r3, r5
	str     r1, [sp, #0x1c]
	bl      Function_22320b8
	mov     r2, #0x7
	ldsb    r2, [r5, r2]
	ldr     r1, [r5, #0x0]
	mov     r0, r4
	add     r2, r5, r2
	ldrb    r2, [r2, #0xc]
	bl      Function_222e8fc
	cmp     r0, #0x0
	beq     branch_22313ec
	str     r4, [sp, #0x0]
	mov     r0, #0x18
	str     r0, [sp, #0x4]
	mov     r0, #0xe0
	str     r0, [sp, #0x8]
	mov     r0, #0x6
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x148] @ 0x2231520, (=0xf0200)
	mov     r1, #0x0
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	mov     r0, #0x2
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x20]
	mov     r2, #0x3
	mov     r3, r5
	bl      Function_22320b8
.thumb
branch_22313ec: @ 22313ec :thumb
	mov     r1, #0x7
	ldsb    r1, [r5, r1]
	ldr     r0, [sp, #0x2c]
	mov     r2, #0x8
	add     r1, r5, r1
	ldrb    r1, [r1, #0xc]
	bl      0x202ad2c
	mov     r2, #0x7
	ldsb    r1, [r5, r2]
	str     r0, [sp, #0x30]
	ldr     r0, [sp, #0x2c]
	add     r1, r5, r1
	ldrb    r1, [r1, #0xc]
	bl      0x202ad2c
	mov     r1, r0
	ldr     r0, [sp, #0x30]
	mov     r2, #0x1
	bl      0x205ca14
	mov     r1, #0x2
	add     r2, sp, #0x38
	bl      Function_2076aac
	mov     r1, #0x32
	ldr     r0, [sp, #0x24]
	lsl     r1, r1, #6
	bl      malloc
	mov     r3, #0x0
	str     r0, [sp, #0x34]
	str     r3, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x34]
	ldr     r2, [sp, #0x24]
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x38]
	ldr     r1, [sp, #0x4c]
	bl      0x20133d4
	mov     r1, #0x50
	str     r1, [sp, #0x0]
	mov     r2, #0x0
	str     r1, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	str     r1, [sp, #0x10]
	str     r1, [sp, #0x14]
	ldr     r0, [sp, #0x20]
	ldr     r1, [sp, #0x34]
	ldr     r0, [r0, #0xc]
	mov     r3, r2
	add     r0, #0x40
	bl      0x201addc
	ldr     r0, [sp, #0x34]
	bl      free
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x24]
	mov     r3, #0x5
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x38]
	ldr     r1, [sp, #0x40]
	mov     r2, #0x0
	lsl     r3, r3, #6
	bl      0x2006e84
	ldr     r0, [sp, #0x30]
	cmp     r0, #0x0
	bne     branch_223148a
	ldr     r0, [pc, #0x9c] @ 0x2231524, (=0x50600)
	str     r0, [sp, #0x28]
	b       branch_223149a
@ 0x223148a

.thumb
branch_223148a: @ 223148a :thumb
	cmp     r0, #0x1
	bne     branch_2231496
	mov     r0, #0xc1
	lsl     r0, r0, #10
	str     r0, [sp, #0x28]
	b       branch_223149a
@ 0x2231496

.thumb
branch_2231496: @ 2231496 :thumb
	ldr     r0, [pc, #0x84] @ 0x223151c, (=0x10200)
	str     r0, [sp, #0x28]
.thumb
branch_223149a: @ 223149a :thumb
	mov     r2, #0x7
	ldsb    r2, [r5, r2]
	ldr     r1, [r5, #0x0]
	ldr     r3, [sp, #0x24]
	add     r2, r5, r2
	ldrb    r2, [r2, #0xc]
	mov     r0, r4
	bl      Function_222e880
	str     r4, [sp, #0x0]
	mov     r0, #0x6
	str     r0, [sp, #0x4]
	mov     r0, #0x2c
	str     r0, [sp, #0x8]
	mov     r0, #0x58
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x28]
	mov     r1, #0x0
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	mov     r0, #0x1
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x20]
	mov     r2, #0x4
	mov     r3, r5
	bl      Function_22320b8
	ldr     r0, [sp, #0x20]
	mov     r1, #0x0
	bl      Function_2231080
	ldr     r0, [sp, #0x20]
	ldr     r0, [r0, #0xc]
	add     r0, #0x40
	bl      0x201c29c
	mov     r5, r0
	ldr     r0, [sp, #0x20]
	ldr     r0, [r0, #0xc]
	add     r0, #0x40
	bl      0x201c2a0
	mov     r3, r0
	mov     r0, #0xb
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0xa
	str     r0, [sp, #0x8]
	lsl     r2, r5, #24
	lsl     r3, r3, #24
	ldr     r0, [r4, #0x0]
	mov     r1, #0x3
	lsr     r2, r2, #24
	lsr     r3, r3, #24
	bl      0x2019e2c
	mov     r0, r7
	bl      Function_20237bc
	mov     r0, r6
	bl      Function_20237bc
	add     sp, #0x50
	pop     {r3-r7,pc}
@ 0x223151c

.word 0x10200 @ 0x223151c
.word 0xf0200 @ 0x2231520
.word 0x50600 @ 0x2231524
.thumb
Function_2231528: @ 2231528 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	mov     r5, r1
	str     r0, [sp, #0x20]
	ldr     r0, [r5, #0x0]
	mov     r6, r3
	mov     r4, r2
	bl      0x203068c
	str     r0, [sp, #0x24]
	mov     r0, #0x80
	mov     r1, r6
	bl      Function_2023790
	mov     r7, r0
	mov     r0, #0x80
	mov     r1, r6
	bl      Function_2023790
	mov     r6, r0
	str     r4, [sp, #0x0]
	mov     r0, #0x19
	str     r0, [sp, #0x4]
	mov     r2, #0x0
	str     r2, [sp, #0x8]
	mov     r0, #0x8
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x100] @ 0x2231660, (=0x10200)
	mov     r1, #0x2
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	ldr     r0, [sp, #0x20]
	mov     r3, r5
	str     r2, [sp, #0x1c]
	bl      Function_22320b8
	mov     r2, #0x7
	ldsb    r2, [r5, r2]
	ldr     r0, [sp, #0x24]
	mov     r1, #0x64
	add     r2, r5, r2
	ldrb    r2, [r2, #0xc]
	bl      Function_2030698
	cmp     r0, #0x0
	bne     branch_223158a
	mov     r0, #0x1e
	b       branch_223158c
@ 0x223158a

.thumb
branch_223158a: @ 223158a :thumb
	mov     r0, #0x1f
.thumb
branch_223158c: @ 223158c :thumb
	str     r4, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r2, #0x0
	str     r2, [sp, #0x8]
	mov     r0, #0x20
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0xc4] @ 0x2231660, (=0x10200)
	mov     r1, #0x2
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	ldr     r0, [sp, #0x20]
	mov     r3, r5
	str     r2, [sp, #0x1c]
	bl      Function_22320b8
	mov     r2, #0x7
	ldsb    r2, [r5, r2]
	ldr     r0, [sp, #0x24]
	mov     r1, #0x71
	add     r2, r5, r2
	ldrb    r2, [r2, #0xc]
	bl      Function_2030698
	mov     r1, r0
	mov     r0, r4
	bl      Function_222e970
	str     r4, [sp, #0x0]
	mov     r0, #0x26
	str     r0, [sp, #0x4]
	mov     r0, #0xa0
	str     r0, [sp, #0x8]
	mov     r0, #0x20
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x8c] @ 0x2231660, (=0x10200)
	mov     r1, #0x2
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	ldr     r0, [sp, #0x20]
	str     r1, [sp, #0x1c]
	mov     r2, #0x0
	mov     r3, r5
	bl      Function_22320b8
	str     r4, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r2, #0x0
	str     r2, [sp, #0x8]
	mov     r0, #0x38
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x68] @ 0x2231660, (=0x10200)
	mov     r1, #0x2
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	ldr     r0, [sp, #0x20]
	mov     r3, r5
	str     r2, [sp, #0x1c]
	bl      Function_22320b8
	mov     r2, #0x7
	ldsb    r2, [r5, r2]
	ldr     r0, [sp, #0x24]
	mov     r1, #0x70
	add     r2, r5, r2
	ldrb    r2, [r2, #0xc]
	bl      Function_2030698
	mov     r1, r0
	mov     r0, r4
	bl      Function_222e970
	str     r4, [sp, #0x0]
	mov     r0, #0x26
	str     r0, [sp, #0x4]
	mov     r0, #0xa0
	str     r0, [sp, #0x8]
	mov     r0, #0x38
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x2c] @ 0x2231660, (=0x10200)
	mov     r1, #0x2
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	ldr     r0, [sp, #0x20]
	mov     r2, #0x0
	mov     r3, r5
	str     r1, [sp, #0x1c]
	bl      Function_22320b8
	ldr     r0, [sp, #0x20]
	mov     r1, #0x2
	bl      Function_2231080
	mov     r0, r7
	bl      Function_20237bc
	mov     r0, r6
	bl      Function_20237bc
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x223165e


.align 2


.word 0x10200 @ 0x2231660
.thumb
Function_2231664: @ 2231664 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	mov     r5, r1
	str     r0, [sp, #0x20]
	ldr     r0, [r5, #0x0]
	mov     r6, r3
	mov     r4, r2
	bl      0x203068c
	str     r0, [sp, #0x24]
	mov     r0, #0x80
	mov     r1, r6
	bl      Function_2023790
	mov     r7, r0
	mov     r0, #0x80
	mov     r1, r6
	bl      Function_2023790
	mov     r6, r0
	str     r4, [sp, #0x0]
	mov     r0, #0x1a
	str     r0, [sp, #0x4]
	mov     r2, #0x0
	str     r2, [sp, #0x8]
	ldr     r0, [pc, #0x364] @ 0x22319fc, (=0x10200)
	str     r2, [sp, #0xc]
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	ldr     r0, [sp, #0x20]
	str     r2, [sp, #0x1c]
	mov     r1, #0x3
	mov     r3, r5
	bl      Function_22320b8
	str     r4, [sp, #0x0]
	mov     r0, #0x21
	str     r0, [sp, #0x4]
	mov     r1, #0x0
	str     r1, [sp, #0x8]
	ldr     r0, [pc, #0x344] @ 0x22319fc, (=0x10200)
	str     r1, [sp, #0xc]
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	str     r1, [sp, #0x1c]
	ldr     r0, [sp, #0x20]
	mov     r1, #0x3
	mov     r2, #0x1
	mov     r3, r5
	bl      Function_22320b8
	str     r4, [sp, #0x0]
	mov     r0, #0x23
	str     r0, [sp, #0x4]
	mov     r0, #0xe0
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x31c] @ 0x22319fc, (=0x10200)
	mov     r1, #0x3
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	mov     r0, #0x2
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x20]
	mov     r2, #0x1
	mov     r3, r5
	bl      Function_22320b8
	mov     r2, #0x7
	ldsb    r2, [r5, r2]
	ldr     r0, [sp, #0x24]
	mov     r1, #0x66
	add     r2, r5, r2
	ldrb    r2, [r2, #0xc]
	bl      Function_2030698
	cmp     r0, #0x0
	bne     branch_223170c
	mov     r0, #0x1e
	b       branch_223170e
@ 0x223170c

.thumb
branch_223170c: @ 223170c :thumb
	mov     r0, #0x1f
.thumb
branch_223170e: @ 223170e :thumb
	str     r4, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r1, #0x0
	str     r1, [sp, #0x8]
	ldr     r0, [pc, #0x2e4] @ 0x22319fc, (=0x10200)
	str     r1, [sp, #0xc]
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	str     r1, [sp, #0x1c]
	ldr     r0, [sp, #0x20]
	mov     r1, #0x3
	mov     r2, #0x2
	mov     r3, r5
	bl      Function_22320b8
	mov     r2, #0x7
	ldsb    r2, [r5, r2]
	ldr     r0, [sp, #0x24]
	mov     r1, #0x73
	add     r2, r5, r2
	ldrb    r2, [r2, #0xc]
	bl      Function_2030698
	mov     r1, r0
	mov     r0, r4
	bl      Function_222e970
	str     r4, [sp, #0x0]
	mov     r0, #0x26
	str     r0, [sp, #0x4]
	mov     r0, #0x70
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x2a4] @ 0x22319fc, (=0x10200)
	mov     r1, #0x3
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	mov     r0, #0x1
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x20]
	mov     r2, #0x2
	mov     r3, r5
	bl      Function_22320b8
	mov     r2, #0x7
	ldsb    r2, [r5, r2]
	ldr     r0, [sp, #0x24]
	mov     r1, #0x75
	add     r2, r5, r2
	ldrb    r2, [r2, #0xc]
	bl      Function_2030698
	mov     r1, r0
	mov     r0, r4
	bl      Function_222e970
	str     r4, [sp, #0x0]
	mov     r0, #0x27
	str     r0, [sp, #0x4]
	mov     r0, #0xe0
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x268] @ 0x22319fc, (=0x10200)
	mov     r2, #0x2
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	ldr     r0, [sp, #0x20]
	str     r2, [sp, #0x1c]
	mov     r1, #0x3
	mov     r3, r5
	bl      Function_22320b8
	str     r4, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r1, #0x0
	str     r1, [sp, #0x8]
	mov     r0, #0x10
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x244] @ 0x22319fc, (=0x10200)
	mov     r2, #0x2
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	str     r1, [sp, #0x1c]
	ldr     r0, [sp, #0x20]
	mov     r1, #0x3
	mov     r3, r5
	bl      Function_22320b8
	mov     r2, #0x7
	ldsb    r2, [r5, r2]
	ldr     r0, [sp, #0x24]
	mov     r1, #0x72
	add     r2, r5, r2
	ldrb    r2, [r2, #0xc]
	bl      Function_2030698
	mov     r1, r0
	mov     r0, r4
	bl      Function_222e970
	str     r4, [sp, #0x0]
	mov     r0, #0x26
	str     r0, [sp, #0x4]
	mov     r0, #0x70
	str     r0, [sp, #0x8]
	mov     r0, #0x10
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x208] @ 0x22319fc, (=0x10200)
	mov     r1, #0x3
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	mov     r0, #0x1
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x20]
	mov     r2, #0x2
	mov     r3, r5
	bl      Function_22320b8
	mov     r2, #0x7
	ldsb    r2, [r5, r2]
	ldr     r0, [sp, #0x24]
	mov     r1, #0x74
	add     r2, r5, r2
	ldrb    r2, [r2, #0xc]
	bl      Function_2030698
	mov     r1, r0
	mov     r0, r4
	bl      Function_222e970
	str     r4, [sp, #0x0]
	mov     r0, #0x27
	str     r0, [sp, #0x4]
	mov     r0, #0xe0
	str     r0, [sp, #0x8]
	mov     r0, #0x10
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x1c8] @ 0x22319fc, (=0x10200)
	mov     r2, #0x2
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	ldr     r0, [sp, #0x20]
	str     r2, [sp, #0x1c]
	mov     r1, #0x3
	mov     r3, r5
	bl      Function_22320b8
	str     r4, [sp, #0x0]
	mov     r0, #0x22
	str     r0, [sp, #0x4]
	mov     r1, #0x0
	str     r1, [sp, #0x8]
	ldr     r0, [pc, #0x1a8] @ 0x22319fc, (=0x10200)
	str     r1, [sp, #0xc]
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	str     r1, [sp, #0x1c]
	mov     r1, #0x3
	ldr     r0, [sp, #0x20]
	mov     r2, r1
	mov     r3, r5
	bl      Function_22320b8
	mov     r1, #0x3
	str     r4, [sp, #0x0]
	mov     r0, #0x23
	str     r0, [sp, #0x4]
	mov     r0, #0xe0
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x180] @ 0x22319fc, (=0x10200)
	mov     r2, r1
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	mov     r0, #0x2
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x20]
	mov     r3, r5
	bl      Function_22320b8
	mov     r2, #0x7
	ldsb    r2, [r5, r2]
	ldr     r0, [sp, #0x24]
	mov     r1, #0x68
	add     r2, r5, r2
	ldrb    r2, [r2, #0xc]
	bl      Function_2030698
	cmp     r0, #0x0
	bne     branch_22318a6
	mov     r0, #0x1e
	b       branch_22318a8
@ 0x22318a6

.thumb
branch_22318a6: @ 22318a6 :thumb
	mov     r0, #0x1f
.thumb
branch_22318a8: @ 22318a8 :thumb
	str     r4, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r1, #0x0
	str     r1, [sp, #0x8]
	ldr     r0, [pc, #0x148] @ 0x22319fc, (=0x10200)
	str     r1, [sp, #0xc]
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	str     r1, [sp, #0x1c]
	ldr     r0, [sp, #0x20]
	mov     r1, #0x3
	mov     r2, #0x4
	mov     r3, r5
	bl      Function_22320b8
	mov     r2, #0x7
	ldsb    r2, [r5, r2]
	ldr     r0, [sp, #0x24]
	mov     r1, #0x77
	add     r2, r5, r2
	ldrb    r2, [r2, #0xc]
	bl      Function_2030698
	mov     r1, r0
	mov     r0, r4
	bl      Function_222e970
	str     r4, [sp, #0x0]
	mov     r0, #0x26
	str     r0, [sp, #0x4]
	mov     r0, #0x70
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x10c] @ 0x22319fc, (=0x10200)
	mov     r1, #0x3
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	mov     r0, #0x1
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x20]
	mov     r2, #0x4
	mov     r3, r5
	bl      Function_22320b8
	mov     r2, #0x7
	ldsb    r2, [r5, r2]
	ldr     r0, [sp, #0x24]
	mov     r1, #0x79
	add     r2, r5, r2
	ldrb    r2, [r2, #0xc]
	bl      Function_2030698
	mov     r1, r0
	mov     r0, r4
	bl      Function_222e970
	str     r4, [sp, #0x0]
	mov     r0, #0x27
	str     r0, [sp, #0x4]
	mov     r0, #0xe0
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0xcc] @ 0x22319fc, (=0x10200)
	mov     r1, #0x3
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	mov     r0, #0x2
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x20]
	mov     r2, #0x4
	mov     r3, r5
	bl      Function_22320b8
	str     r4, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r1, #0x0
	str     r1, [sp, #0x8]
	mov     r0, #0x10
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0xa8] @ 0x22319fc, (=0x10200)
	mov     r2, #0x4
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	str     r1, [sp, #0x1c]
	ldr     r0, [sp, #0x20]
	mov     r1, #0x3
	mov     r3, r5
	bl      Function_22320b8
	mov     r2, #0x7
	ldsb    r2, [r5, r2]
	ldr     r0, [sp, #0x24]
	mov     r1, #0x76
	add     r2, r5, r2
	ldrb    r2, [r2, #0xc]
	bl      Function_2030698
	mov     r1, r0
	mov     r0, r4
	bl      Function_222e970
	str     r4, [sp, #0x0]
	mov     r0, #0x26
	str     r0, [sp, #0x4]
	mov     r0, #0x70
	str     r0, [sp, #0x8]
	mov     r0, #0x10
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x6c] @ 0x22319fc, (=0x10200)
	mov     r1, #0x3
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	mov     r0, #0x1
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x20]
	mov     r2, #0x4
	mov     r3, r5
	bl      Function_22320b8
	mov     r2, #0x7
	ldsb    r2, [r5, r2]
	ldr     r0, [sp, #0x24]
	mov     r1, #0x78
	add     r2, r5, r2
	ldrb    r2, [r2, #0xc]
	bl      Function_2030698
	mov     r1, r0
	mov     r0, r4
	bl      Function_222e970
	str     r4, [sp, #0x0]
	mov     r0, #0x27
	str     r0, [sp, #0x4]
	mov     r0, #0xe0
	str     r0, [sp, #0x8]
	mov     r0, #0x10
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x2c] @ 0x22319fc, (=0x10200)
	mov     r1, #0x3
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	mov     r0, #0x2
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x20]
	mov     r2, #0x4
	mov     r3, r5
	bl      Function_22320b8
	ldr     r0, [sp, #0x20]
	mov     r1, #0x3
	bl      Function_2231080
	mov     r0, r7
	bl      Function_20237bc
	mov     r0, r6
	bl      Function_20237bc
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x22319fc

.word 0x10200 @ 0x22319fc
.thumb
Function_2231a00: @ 2231a00 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	mov     r5, r1
	str     r0, [sp, #0x20]
	ldr     r0, [r5, #0x0]
	mov     r6, r3
	mov     r4, r2
	bl      0x203068c
	str     r0, [sp, #0x24]
	mov     r0, #0x80
	mov     r1, r6
	bl      Function_2023790
	mov     r7, r0
	mov     r0, #0x80
	mov     r1, r6
	bl      Function_2023790
	mov     r6, r0
	str     r4, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r2, #0x0
	str     r2, [sp, #0x8]
	ldr     r0, [pc, #0x1a8] @ 0x2231bdc, (=0x10200)
	str     r2, [sp, #0xc]
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	ldr     r0, [sp, #0x20]
	str     r2, [sp, #0x1c]
	mov     r1, #0x4
	mov     r3, r5
	bl      Function_22320b8
	str     r4, [sp, #0x0]
	mov     r0, #0x24
	str     r0, [sp, #0x4]
	mov     r0, #0xe0
	str     r0, [sp, #0x8]
	mov     r0, #0x14
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x184] @ 0x2231bdc, (=0x10200)
	mov     r1, #0x4
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	mov     r0, #0x2
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x20]
	mov     r2, #0x0
	mov     r3, r5
	bl      Function_22320b8
	mov     r2, #0x7
	ldsb    r2, [r5, r2]
	ldr     r0, [sp, #0x24]
	mov     r1, #0x6c
	add     r2, r5, r2
	ldrb    r2, [r2, #0xc]
	bl      Function_2030698
	cmp     r0, #0x0
	bne     branch_2231a86
	mov     r0, #0x1e
	b       branch_2231a88
@ 0x2231a86

.thumb
branch_2231a86: @ 2231a86 :thumb
	mov     r0, #0x1f
.thumb
branch_2231a88: @ 2231a88 :thumb
	str     r4, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r2, #0x0
	str     r2, [sp, #0x8]
	mov     r0, #0x30
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x144] @ 0x2231bdc, (=0x10200)
	mov     r1, #0x4
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	ldr     r0, [sp, #0x20]
	mov     r3, r5
	str     r2, [sp, #0x1c]
	bl      Function_22320b8
	mov     r2, #0x7
	ldsb    r2, [r5, r2]
	ldr     r0, [sp, #0x24]
	mov     r1, #0x87
	add     r2, r5, r2
	ldrb    r2, [r2, #0xc]
	bl      Function_2030698
	mov     r1, r0
	mov     r0, r4
	bl      Function_222e970
	str     r4, [sp, #0x0]
	mov     r0, #0x29
	str     r0, [sp, #0x4]
	mov     r0, #0x70
	str     r0, [sp, #0x8]
	mov     r0, #0x30
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x10c] @ 0x2231bdc, (=0x10200)
	mov     r1, #0x4
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	mov     r0, #0x1
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x20]
	mov     r2, #0x0
	mov     r3, r5
	bl      Function_22320b8
	mov     r2, #0x7
	ldsb    r2, [r5, r2]
	ldr     r0, [sp, #0x24]
	mov     r1, #0x88
	add     r2, r5, r2
	ldrb    r2, [r2, #0xc]
	bl      Function_2030698
	mov     r1, r0
	mov     r0, r4
	bl      Function_222e970
	str     r4, [sp, #0x0]
	mov     r0, #0x28
	str     r0, [sp, #0x4]
	mov     r0, #0xe0
	str     r0, [sp, #0x8]
	mov     r0, #0x30
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0xcc] @ 0x2231bdc, (=0x10200)
	mov     r1, #0x4
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	mov     r0, #0x2
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x20]
	mov     r2, #0x0
	mov     r3, r5
	bl      Function_22320b8
	str     r4, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r2, #0x0
	str     r2, [sp, #0x8]
	mov     r0, #0x48
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0xa8] @ 0x2231bdc, (=0x10200)
	mov     r1, #0x4
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	ldr     r0, [sp, #0x20]
	mov     r3, r5
	str     r2, [sp, #0x1c]
	bl      Function_22320b8
	mov     r2, #0x7
	ldsb    r2, [r5, r2]
	ldr     r0, [sp, #0x24]
	mov     r1, #0x86
	add     r2, r5, r2
	ldrb    r2, [r2, #0xc]
	bl      Function_2030698
	mov     r1, r0
	mov     r0, r4
	bl      Function_222e970
	str     r4, [sp, #0x0]
	mov     r0, #0x29
	str     r0, [sp, #0x4]
	mov     r0, #0x70
	str     r0, [sp, #0x8]
	mov     r0, #0x48
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x6c] @ 0x2231bdc, (=0x10200)
	mov     r1, #0x4
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	mov     r0, #0x1
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x20]
	mov     r2, #0x0
	mov     r3, r5
	bl      Function_22320b8
	mov     r2, #0x7
	ldsb    r2, [r5, r2]
	ldr     r0, [sp, #0x24]
	mov     r1, #0x8a
	add     r2, r5, r2
	ldrb    r2, [r2, #0xc]
	bl      Function_2030698
	mov     r1, r0
	mov     r0, r4
	bl      Function_222e970
	str     r4, [sp, #0x0]
	mov     r0, #0x28
	str     r0, [sp, #0x4]
	mov     r0, #0xe0
	str     r0, [sp, #0x8]
	mov     r0, #0x48
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x30] @ 0x2231bdc, (=0x10200)
	mov     r1, #0x4
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	mov     r0, #0x2
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x20]
	mov     r2, #0x0
	mov     r3, r5
	bl      Function_22320b8
	ldr     r0, [sp, #0x20]
	mov     r1, #0x4
	bl      Function_2231080
	mov     r0, r7
	bl      Function_20237bc
	mov     r0, r6
	bl      Function_20237bc
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x2231bda


.align 2


.word 0x10200 @ 0x2231bdc
.thumb
Function_2231be0: @ 2231be0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	mov     r5, r1
	str     r0, [sp, #0x20]
	ldr     r0, [r5, #0x0]
	str     r3, [sp, #0x24]
	mov     r4, r2
	bl      0x203068c
	str     r0, [sp, #0x28]
	ldr     r1, [sp, #0x24]
	mov     r0, #0x80
	bl      Function_2023790
	mov     r7, r0
	ldr     r1, [sp, #0x24]
	mov     r0, #0x80
	bl      Function_2023790
	mov     r6, r0
	str     r4, [sp, #0x0]
	mov     r0, #0x1c
	str     r0, [sp, #0x4]
	mov     r2, #0x0
	str     r2, [sp, #0x8]
	ldr     r0, [pc, #0x140] @ 0x2231d54, (=0x10200)
	str     r2, [sp, #0xc]
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	ldr     r0, [sp, #0x20]
	mov     r1, #0x5
	mov     r3, r5
	str     r2, [sp, #0x1c]
	bl      Function_22320b8
	mov     r2, #0x7
	ldsb    r2, [r5, r2]
	ldr     r0, [sp, #0x28]
	mov     r1, #0x7c
	add     r2, r5, r2
	ldrb    r2, [r2, #0xc]
	bl      Function_2030698
	ldr     r1, [sp, #0x24]
	bl      0x200b32c
	str     r0, [sp, #0x2c]
	mov     r0, #0x18
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x108] @ 0x2231d54, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x20]
	str     r1, [sp, #0xc]
	ldr     r0, [r0, #0x20]
	ldr     r2, [sp, #0x2c]
	mov     r3, r1
	bl      0x201d78c
	ldr     r0, [sp, #0x2c]
	bl      Function_20237bc
	mov     r2, #0x7
	ldsb    r2, [r5, r2]
	ldr     r0, [sp, #0x28]
	mov     r1, #0x6a
	add     r2, r5, r2
	ldrb    r2, [r2, #0xc]
	bl      Function_2030698
	cmp     r0, #0x0
	bne     branch_2231c7a
	mov     r0, #0x1e
	b       branch_2231c7c
@ 0x2231c7a

.thumb
branch_2231c7a: @ 2231c7a :thumb
	mov     r0, #0x1f
.thumb
branch_2231c7c: @ 2231c7c :thumb
	str     r4, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r2, #0x0
	str     r2, [sp, #0x8]
	mov     r0, #0x30
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0xc8] @ 0x2231d54, (=0x10200)
	mov     r1, #0x5
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	ldr     r0, [sp, #0x20]
	mov     r3, r5
	str     r2, [sp, #0x1c]
	bl      Function_22320b8
	mov     r2, #0x7
	ldsb    r2, [r5, r2]
	ldr     r0, [sp, #0x28]
	mov     r1, #0x7b
	add     r2, r5, r2
	ldrb    r2, [r2, #0xc]
	bl      Function_2030698
	mov     r1, r0
	mov     r0, r4
	bl      Function_222e970
	str     r4, [sp, #0x0]
	mov     r0, #0x26
	str     r0, [sp, #0x4]
	mov     r0, #0xa0
	str     r0, [sp, #0x8]
	mov     r0, #0x30
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x90] @ 0x2231d54, (=0x10200)
	mov     r1, #0x5
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	mov     r0, #0x2
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x20]
	mov     r2, #0x0
	mov     r3, r5
	bl      Function_22320b8
	str     r4, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r2, #0x0
	str     r2, [sp, #0x8]
	mov     r0, #0x48
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x68] @ 0x2231d54, (=0x10200)
	mov     r1, #0x5
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	ldr     r0, [sp, #0x20]
	mov     r3, r5
	str     r2, [sp, #0x1c]
	bl      Function_22320b8
	mov     r2, #0x7
	ldsb    r2, [r5, r2]
	ldr     r0, [sp, #0x28]
	mov     r1, #0x7a
	add     r2, r5, r2
	ldrb    r2, [r2, #0xc]
	bl      Function_2030698
	mov     r1, r0
	mov     r0, r4
	bl      Function_222e970
	str     r4, [sp, #0x0]
	mov     r0, #0x26
	str     r0, [sp, #0x4]
	mov     r0, #0xa0
	str     r0, [sp, #0x8]
	mov     r0, #0x48
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x30] @ 0x2231d54, (=0x10200)
	mov     r1, #0x5
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	mov     r0, #0x2
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x20]
	mov     r2, #0x0
	mov     r3, r5
	bl      Function_22320b8
	ldr     r0, [sp, #0x20]
	mov     r1, #0x5
	bl      Function_2231080
	mov     r0, r7
	bl      Function_20237bc
	mov     r0, r6
	bl      Function_20237bc
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x2231d52


.align 2


.word 0x10200 @ 0x2231d54
.thumb
Function_2231d58: @ 2231d58 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	mov     r5, r1
	str     r0, [sp, #0x20]
	ldr     r0, [r5, #0x0]
	mov     r6, r3
	mov     r4, r2
	bl      0x203068c
	str     r0, [sp, #0x24]
	mov     r0, #0x80
	mov     r1, r6
	bl      Function_2023790
	mov     r7, r0
	mov     r0, #0x80
	mov     r1, r6
	bl      Function_2023790
	mov     r6, r0
	str     r4, [sp, #0x0]
	mov     r0, #0x1d
	str     r0, [sp, #0x4]
	mov     r2, #0x0
	str     r2, [sp, #0x8]
	ldr     r0, [pc, #0x104] @ 0x2231e90, (=0x10200)
	str     r2, [sp, #0xc]
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	ldr     r0, [sp, #0x20]
	mov     r1, #0x6
	mov     r3, r5
	str     r2, [sp, #0x1c]
	bl      Function_22320b8
	mov     r2, #0x7
	ldsb    r2, [r5, r2]
	ldr     r0, [sp, #0x24]
	mov     r1, #0x6e
	add     r2, r5, r2
	ldrb    r2, [r2, #0xc]
	bl      Function_2030698
	cmp     r0, #0x0
	bne     branch_2231db8
	mov     r0, #0x1e
	b       branch_2231dba
@ 0x2231db8

.thumb
branch_2231db8: @ 2231db8 :thumb
	mov     r0, #0x1f
.thumb
branch_2231dba: @ 2231dba :thumb
	str     r4, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r2, #0x0
	str     r2, [sp, #0x8]
	mov     r0, #0x18
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0xc8] @ 0x2231e90, (=0x10200)
	mov     r1, #0x6
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	ldr     r0, [sp, #0x20]
	mov     r3, r5
	str     r2, [sp, #0x1c]
	bl      Function_22320b8
	mov     r2, #0x7
	ldsb    r2, [r5, r2]
	ldr     r0, [sp, #0x24]
	mov     r1, #0x8f
	add     r2, r5, r2
	ldrb    r2, [r2, #0xc]
	bl      Function_2030698
	mov     r1, r0
	mov     r0, r4
	bl      Function_222e970
	str     r4, [sp, #0x0]
	mov     r0, #0x2a
	str     r0, [sp, #0x4]
	mov     r0, #0xa0
	str     r0, [sp, #0x8]
	mov     r0, #0x18
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x8c] @ 0x2231e90, (=0x10200)
	mov     r1, #0x6
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	mov     r0, #0x2
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x20]
	mov     r2, #0x0
	mov     r3, r5
	bl      Function_22320b8
	str     r4, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r2, #0x0
	str     r2, [sp, #0x8]
	mov     r0, #0x30
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x68] @ 0x2231e90, (=0x10200)
	mov     r1, #0x6
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	ldr     r0, [sp, #0x20]
	mov     r3, r5
	str     r2, [sp, #0x1c]
	bl      Function_22320b8
	mov     r2, #0x7
	ldsb    r2, [r5, r2]
	ldr     r0, [sp, #0x24]
	mov     r1, #0x8e
	add     r2, r5, r2
	ldrb    r2, [r2, #0xc]
	bl      Function_2030698
	mov     r1, r0
	mov     r0, r4
	bl      Function_222e970
	str     r4, [sp, #0x0]
	mov     r0, #0x2a
	str     r0, [sp, #0x4]
	mov     r0, #0xa0
	str     r0, [sp, #0x8]
	mov     r0, #0x30
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x2c] @ 0x2231e90, (=0x10200)
	mov     r1, #0x6
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	str     r6, [sp, #0x18]
	mov     r0, #0x2
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x20]
	mov     r2, #0x0
	mov     r3, r5
	bl      Function_22320b8
	ldr     r0, [sp, #0x20]
	mov     r1, #0x6
	bl      Function_2231080
	mov     r0, r7
	bl      Function_20237bc
	mov     r0, r6
	bl      Function_20237bc
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x2231e90

.word 0x10200 @ 0x2231e90
.thumb
Function_2231e94: @ 2231e94 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	mov     r5, r1
	str     r0, [sp, #0x20]
	ldr     r0, [r5, #0x0]
	mov     r4, r2
	mov     r7, r3
	bl      0x203068c
	ldr     r0, [r5, #0x0]
	bl      0x202b370
	str     r0, [sp, #0x24]
	mov     r0, #0x80
	mov     r1, r7
	bl      Function_2023790
	mov     r6, r0
	mov     r0, #0x80
	mov     r1, r7
	bl      Function_2023790
	mov     r7, r0
	str     r4, [sp, #0x0]
	mov     r0, #0x2b
	str     r0, [sp, #0x4]
	mov     r2, #0x0
	str     r2, [sp, #0x8]
	ldr     r0, [pc, #0x164] @ 0x2232034, (=0x10200)
	str     r2, [sp, #0xc]
	str     r0, [sp, #0x10]
	str     r6, [sp, #0x14]
	str     r7, [sp, #0x18]
	ldr     r0, [sp, #0x20]
	mov     r1, #0x1
	mov     r3, r5
	str     r2, [sp, #0x1c]
	bl      Function_22320b8
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_222e990
	str     r4, [sp, #0x0]
	mov     r0, #0x2c
	str     r0, [sp, #0x4]
	mov     r2, #0x0
	str     r2, [sp, #0x8]
	mov     r0, #0x18
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x138] @ 0x2232034, (=0x10200)
	mov     r1, #0x1
	str     r0, [sp, #0x10]
	str     r6, [sp, #0x14]
	str     r7, [sp, #0x18]
	ldr     r0, [sp, #0x20]
	mov     r3, r5
	str     r2, [sp, #0x1c]
	bl      Function_22320b8
	mov     r1, #0x7
	ldsb    r1, [r5, r1]
	ldr     r0, [sp, #0x24]
	mov     r2, #0xa
	add     r1, r5, r1
	ldrb    r1, [r1, #0xc]
	bl      0x202ad2c
	mov     r1, r0
	mov     r0, r4
	bl      Function_222e970
	str     r4, [sp, #0x0]
	mov     r0, #0x2d
	str     r0, [sp, #0x4]
	mov     r0, #0xa0
	str     r0, [sp, #0x8]
	mov     r0, #0x18
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x100] @ 0x2232034, (=0x10200)
	mov     r1, #0x1
	str     r0, [sp, #0x10]
	str     r6, [sp, #0x14]
	str     r7, [sp, #0x18]
	mov     r0, #0x2
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x20]
	mov     r2, #0x0
	mov     r3, r5
	bl      Function_22320b8
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_222e990
	str     r4, [sp, #0x0]
	mov     r0, #0x2c
	str     r0, [sp, #0x4]
	mov     r2, #0x0
	str     r2, [sp, #0x8]
	mov     r0, #0x30
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0xd0] @ 0x2232034, (=0x10200)
	mov     r1, #0x1
	str     r0, [sp, #0x10]
	str     r6, [sp, #0x14]
	str     r7, [sp, #0x18]
	ldr     r0, [sp, #0x20]
	mov     r3, r5
	str     r2, [sp, #0x1c]
	bl      Function_22320b8
	mov     r1, #0x7
	ldsb    r1, [r5, r1]
	ldr     r0, [sp, #0x24]
	mov     r2, #0xb
	add     r1, r5, r1
	ldrb    r1, [r1, #0xc]
	bl      0x202ad2c
	mov     r1, r0
	mov     r0, r4
	bl      Function_222e970
	str     r4, [sp, #0x0]
	mov     r0, #0x2d
	str     r0, [sp, #0x4]
	mov     r0, #0xa0
	str     r0, [sp, #0x8]
	mov     r0, #0x30
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x98] @ 0x2232034, (=0x10200)
	mov     r1, #0x1
	str     r0, [sp, #0x10]
	str     r6, [sp, #0x14]
	str     r7, [sp, #0x18]
	mov     r0, #0x2
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x20]
	mov     r2, #0x0
	mov     r3, r5
	bl      Function_22320b8
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_222e990
	str     r4, [sp, #0x0]
	mov     r0, #0x2c
	str     r0, [sp, #0x4]
	mov     r2, #0x0
	str     r2, [sp, #0x8]
	mov     r0, #0x48
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x68] @ 0x2232034, (=0x10200)
	mov     r1, #0x1
	str     r0, [sp, #0x10]
	str     r6, [sp, #0x14]
	str     r7, [sp, #0x18]
	ldr     r0, [sp, #0x20]
	mov     r3, r5
	str     r2, [sp, #0x1c]
	bl      Function_22320b8
	mov     r1, #0x7
	ldsb    r1, [r5, r1]
	ldr     r0, [sp, #0x24]
	mov     r2, #0xc
	add     r1, r5, r1
	ldrb    r1, [r1, #0xc]
	bl      0x202ad2c
	mov     r1, r0
	mov     r0, r4
	bl      Function_222e970
	str     r4, [sp, #0x0]
	mov     r0, #0x2d
	str     r0, [sp, #0x4]
	mov     r0, #0xa0
	str     r0, [sp, #0x8]
	mov     r0, #0x48
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x30] @ 0x2232034, (=0x10200)
	mov     r1, #0x1
	str     r0, [sp, #0x10]
	str     r6, [sp, #0x14]
	str     r7, [sp, #0x18]
	mov     r0, #0x2
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x20]
	mov     r2, #0x0
	mov     r3, r5
	bl      Function_22320b8
	ldr     r0, [sp, #0x20]
	mov     r1, #0x1
	bl      Function_2231080
	mov     r0, r6
	bl      Function_20237bc
	mov     r0, r7
	bl      Function_20237bc
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x2232032


.align 2


.word 0x10200 @ 0x2232034
.thumb
Function_2232038: @ 2232038 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r4, r1
	mov     r0, #0x2
	ldsh    r1, [r4, r0]
	cmp     r1, #0x0
	bge     branch_223204a
	neg     r1, r1
.thumb
branch_223204a: @ 223204a :thumb
	mov     r0, #0x0
	ldsh    r3, [r4, r0]
	cmp     r3, #0x0
	bge     branch_2232054
	neg     r3, r3
.thumb
branch_2232054: @ 2232054 :thumb
	lsl     r0, r1, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x18
	lsl     r3, r3, #24
	str     r0, [sp, #0x8]
	mov     r2, #0x0
	str     r2, [sp, #0xc]
	ldr     r0, [r5, #0x0]
	mov     r1, #0x2
	lsr     r3, r3, #24
	bl      0x2019cb8
	ldr     r0, [r5, #0x0]
	mov     r1, #0x2
	bl      0x201c3c0
	mov     r0, #0x2
	ldsh    r1, [r4, r0]
	cmp     r1, #0x0
	bge     branch_2232084
	neg     r1, r1
.thumb
branch_2232084: @ 2232084 :thumb
	mov     r0, #0x0
	ldsh    r3, [r4, r0]
	cmp     r3, #0x0
	bge     branch_223208e
	neg     r3, r3
.thumb
branch_223208e: @ 223208e :thumb
	lsl     r0, r1, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x18
	lsl     r3, r3, #24
	str     r0, [sp, #0x8]
	mov     r2, #0x0
	str     r2, [sp, #0xc]
	ldr     r0, [r5, #0x0]
	mov     r1, #0x3
	lsr     r3, r3, #24
	bl      0x2019cb8
	ldr     r0, [r5, #0x0]
	mov     r1, #0x3
	bl      0x201c3c0
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x22320b8

.thumb
Function_22320b8: @ 22320b8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r7, r0
	mov     r0, #0x63
	str     r1, [sp, #0x10]
	str     r2, [sp, #0x14]
	ldr     r6, [sp, #0x30]
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	ldr     r1, [sp, #0x34]
	ldr     r2, [sp, #0x48]
	ldr     r5, [sp, #0x38]
	ldr     r4, [sp, #0x44]
	bl      Function_200b1b8
	mov     r0, #0x62
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	ldr     r2, [sp, #0x48]
	mov     r1, r4
	bl      Function_200c388
	ldr     r0, [sp, #0x4c]
	cmp     r0, #0x1
	beq     branch_22320f0
	cmp     r0, #0x2
	beq     branch_2232102
	b       branch_223210e
@ 0x22320f0

.thumb
branch_22320f0: @ 22320f0 :thumb
	mov     r0, #0x0
	mov     r1, r4
	mov     r2, r0
	bl      0x2002d7c
	.hword  0x1c40 @ add r0, r0, #0x1
	lsr     r0, r0, #1
	sub     r5, r5, r0
	b       branch_223210e
@ 0x2232102

.thumb
branch_2232102: @ 2232102 :thumb
	mov     r0, #0x0
	mov     r1, r4
	mov     r2, r0
	bl      0x2002d7c
	sub     r5, r5, r0
.thumb
branch_223210e: @ 223210e :thumb
	ldr     r0, [sp, #0x3c]
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x40]
	mov     r3, r5
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x10]
	str     r1, [sp, #0xc]
	lsl     r0, r0, #2
	add     r0, r7, r0
	ldr     r2, [r0, #0xc]
	ldr     r0, [sp, #0x14]
	lsl     r0, r0, #4
	add     r0, r2, r0
	mov     r2, r4
	bl      0x201d78c
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2232138

.thumb
Function_2232138: @ 2232138 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x1
	bne     branch_2232146
	mov     r2, #0x7
	b       branch_2232148
@ 0x2232146

.thumb
branch_2232146: @ 2232146 :thumb
	mov     r2, #0x2
.thumb
branch_2232148: @ 2232148 :thumb
	cmp     r1, #0x0
	ble     branch_2232160
	mov     r0, #0x0
	ldsh    r3, [r4, r0]
	strh    r3, [r4, #0x2]
	ldsh    r0, [r4, r0]
	add     r0, r0, r1
	mov     r1, r2
	blx     _s32_div_f
	strh    r1, [r4, #0x0]
	pop     {r4,pc}
@ 0x2232160

.thumb
branch_2232160: @ 2232160 :thumb
	bge     branch_2232178
	mov     r0, #0x0
	ldsh    r3, [r4, r0]
	strh    r3, [r4, #0x2]
	ldsh    r3, [r4, r0]
	add     r1, r3, r1
	strh    r1, [r4, #0x0]
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	bge     branch_2232178
	add     r0, r0, r2
	strh    r0, [r4, #0x0]
.thumb
branch_2232178: @ 2232178 :thumb
	pop     {r4,pc}
@ 0x223217a


.align 2, 0


.thumb
Function_223217c: @ 223217c :thumb
	push    {r4,lr}
	ldr     r0, [r0, #0x0]
	mov     r4, r1
	bl      0x207d990
	ldr     r1, [pc, #0x14] @ 0x223219c, (=0x1c1)
	mov     r2, r4
	bl      0x207d730
	cmp     r0, #0x0
	beq     branch_2232196
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2232196

.thumb
branch_2232196: @ 2232196 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223219a

.align 2
.word 0x1c1 @ 0x223219c



Unknown_22321a0: @ 0x22321a0
.incbin "./baserom/overlay/overlay_0064.bin", 0x44c0, 0x2232520 - 0x22321a0


@end 0x2232520




