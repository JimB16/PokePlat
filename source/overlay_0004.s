

.section .iwram2, "ax"


.thumb
Startpoint_21d0d80: @ 21d0d80 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1bc] @ 0x21d0f44, (=#0x221a400)
	mov     r5, r1
	ldr     r0, [r0, #0x0]
	mov     r4, r2
	str     r3, [sp, #0x0]
	cmp     r0, #0x0
	beq     branch_21d0d98
	bl      Function_2022974
branch_21d0d98: @ 21d0d98 :thumb
	ldr     r1, [pc, #0x1ac] @ 0x21d0f48, (=#0x1108)
	mov     r0, r5
	bl      Function_2018144
	ldr     r2, [pc, #0x1a4] @ 0x21d0f48, (=#0x1108)
	mov     r6, r0
	mov     r1, #0x0
	blx     Function_20c4cf4
	mov     r2, r6
	add     r2, #0x1f
	mov     r0, #0x1f
	bic     r2, r0
	ldr     r1, [pc, #0x190] @ 0x21d0f44, (=#0x221a400)
	ldr     r0, [pc, #0x194] @ 0x21d0f4c, (=#0xf7c)
	str     r2, [r1, #0x0]
	str     r6, [r2, r0]
	ldr     r6, [r1, #0x0]
	ldr     r2, [sp, #0x4]
	sub     r3, r0, #0x4
	str     r2, [r6, r3]
	mov     r3, r0
	ldr     r6, [r1, #0x0]
	mov     r2, #0x0
	add     r3, #0x28
	str     r2, [r6, r3]
	mov     r3, r0
	ldr     r6, [r1, #0x0]
	add     r3, #0x2c
	str     r2, [r6, r3]
	mov     r3, r0
	ldr     r6, [r1, #0x0]
	add     r3, #0x44
	str     r2, [r6, r3]
	ldr     r3, [r1, #0x0]
	add     r0, #0xf4
	str     r2, [r3, r0]
	ldr     r0, [r1, #0x0]
	ldr     r2, [pc, #0x168] @ 0x21d0f50, (=#0x1084)
	str     r5, [r0, r2]
	add     r0, r2, #0x4
	ldr     r3, [r1, #0x0]
	add     r2, #0x8
	str     r5, [r3, r0]
	ldr     r0, [r1, #0x0]
	ldr     r1, [pc, #0x160] @ 0x21d0f54, (=#0x3020)
	str     r4, [r0, r2]
	mov     r0, r5
	add     r1, r4, r1
	bl      Function_2018144
	ldr     r3, [pc, #0x144] @ 0x21d0f44, (=#0x221a400)
	mov     r1, #0xf9
	ldr     r2, [r3, #0x0]
	lsl     r1, r1, #4
	str     r0, [r2, r1]
	mov     r0, r1
	ldr     r5, [r3, #0x0]
	mov     r2, #0x0
	add     r0, #0x8
	str     r2, [r5, r0]
	ldr     r0, [r3, #0x0]
	ldr     r0, [r0, r1]
	mov     r1, #0x1f
	add     r0, #0x1f
	bic     r0, r1
	mov     r1, r4
	blx     Function_20a5404
	ldr     r4, [pc, #0x120] @ 0x21d0f44, (=#0x221a400)
	mov     r6, #0x0
	ldr     r2, [r4, #0x0]
	ldr     r1, [pc, #0x12c] @ 0x21d0f58, (=#0xf94)
	sub     r7, r6, #0x1
	str     r0, [r2, r1]
	mov     r0, r1
	ldr     r2, [r4, #0x0]
	add     r0, #0x8
	str     r6, [r2, r0]
	ldr     r0, [r4, #0x0]
	ldr     r2, [pc, #0x120] @ 0x21d0f5c, (=#0x10a4)
	str     r6, [r0, r2]
	mov     r0, r2
	ldr     r3, [r4, #0x0]
	sub     r0, #0x10
	str     r7, [r3, r0]
	mov     r0, r2
	ldr     r3, [r4, #0x0]
	sub     r0, #0x38
	str     r6, [r3, r0]
	mov     r3, r2
	ldr     r5, [r4, #0x0]
	ldr     r0, [sp, #0x0]
	sub     r3, #0x28
	str     r0, [r5, r3]
	mov     r0, r2
	ldr     r3, [r4, #0x0]
	sub     r0, #0x24
	str     r6, [r3, r0]
	mov     r0, r2
	ldr     r3, [r4, #0x0]
	add     r0, #0x34
	str     r6, [r3, r0]
	mov     r0, r2
	ldr     r3, [r4, #0x0]
	sub     r0, #0xc
	str     r7, [r3, r0]
	mov     r3, r2
	ldr     r5, [r4, #0x0]
	mov     r0, #0x1
	sub     r3, #0x8
	str     r0, [r5, r3]
	mov     r3, r2
	ldr     r5, [r4, #0x0]
	add     r3, #0x3a
	strb    r6, [r5, r3]
	mov     r3, r2
	ldr     r5, [r4, #0x0]
	add     r3, #0x28
	str     r6, [r5, r3]
	mov     r3, r2
	ldr     r5, [r4, #0x0]
	add     r3, #0x38
	strb    r6, [r5, r3]
	mov     r3, r2
	ldr     r5, [r4, #0x0]
	add     r3, #0x39
	strb    r6, [r5, r3]
	mov     r3, r2
	ldr     r5, [r4, #0x0]
	add     r3, #0x30
	strh    r0, [r5, r3]
	mov     r3, r2
	ldr     r5, [r4, #0x0]
	add     r3, #0x2c
	str     r0, [r5, r3]
	ldr     r3, [r4, #0x0]
	add     r2, #0x32
	strh    r0, [r3, r2]
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	beq     branch_21d0ee6
	ldr     r0, [r4, #0x0]
	sub     r1, #0x1c
	ldr     r0, [r0, r1]
	bl      Function_202b370
	bl      Function_202ad28
	mov     r2, r4
	mov     r1, #0xf1
	ldr     r3, [r2, #0x0]
	lsl     r1, r1, #4
	str     r0, [r3, r1]
	ldr     r0, [r2, #0x0]
	add     r1, #0x68
	ldr     r0, [r0, r1]
	bl      Function_202b370
	mov     r1, r6
	bl      Function_202aed8
	mov     r1, r4
	ldr     r2, [r1, #0x0]
	mov     r1, #0x1
	lsl     r1, r1, #8
	str     r0, [r2, r1]
branch_21d0ee6: @ 21d0ee6 :thumb
	ldr     r2, [pc, #0x5c] @ 0x21d0f44, (=#0x221a400)
	ldr     r1, [pc, #0x74] @ 0x21d0f60, (=#0x10e5)
	ldr     r0, [r2, #0x0]
	mov     r3, #0x1
	strb    r3, [r0, r1]
	mov     r0, #0x0
	ldr     r3, [r2, #0x0]
	sub     r1, #0x81
	str     r0, [r3, r1]
	ldr     r1, [pc, #0x68] @ 0x21d0f64, (=#0x1044)
	mov     r4, r0
branch_21d0efc: @ 21d0efc :thumb
	ldr     r3, [r2, #0x0]
	add     r3, r3, r0
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r4, [r3, r1]
	cmp     r0, #0x20
	blt     branch_21d0efc
	bl      Function_21d24d8
	ldr     r0, [pc, #0x34] @ 0x21d0f44, (=#0x221a400)
	ldr     r1, [r0, #0x0]
	mov     r0, #0xf1
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	blx     Function_20a450c
	cmp     r0, #0x0
	bne     branch_21d0f24
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}

branch_21d0f24: @ 21d0f24 :thumb
	ldr     r0, [pc, #0x1c] @ 0x21d0f44, (=#0x221a400)
	ldr     r1, [r0, #0x0]
	mov     r0, #0xf1
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	blx     Function_20a453c
	cmp     r0, #0x0
	beq     branch_21d0f3c
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_21d0f3c: @ 21d0f3c :thumb
	mov     r0, #0x2
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d0f42


.incbin "./baserom/overlay/overlay_0004.bin", 0x1c2, 0x21d0f44 - 0x21d0f42


.pool
.word 0x221a400 @ 0x21d0f44
.word 0x1108 @ 0x21d0f48
.word 0xf7c @ 0x21d0f4c
.word 0x1084 @ 0x21d0f50
.word 0x3020 @ 0x21d0f54
.word 0xf94 @ 0x21d0f58
.word 0x10a4 @ 0x21d0f5c
.word 0x10e5 @ 0x21d0f60
.word 0x1044 @ 0x21d0f64

.incbin "./baserom/overlay/overlay_0004.bin", 0x1e8, 0x21d24d8 - 0x21d0f68


.thumb
Function_21d24d8: @ 21d24d8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	ldr     r0, [pc, #0x60] @ 0x21d2540, (=#0x221a400)
	ldr     r1, [r0, #0x0]
	mov     r0, #0xf1
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	blx     Function_20a450c
	cmp     r0, #0x0
	bne     branch_21d2500
	ldr     r0, [pc, #0x50] @ 0x21d2540, (=#0x221a400)
	ldr     r1, [r0, #0x0]
	mov     r0, #0xf1
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	add     r1, sp, #0xc
	blx     Function_20a4788
	b       branch_21d2510

branch_21d2500: @ 21d2500 :thumb
	ldr     r0, [pc, #0x3c] @ 0x21d2540, (=#0x221a400)
	ldr     r1, [r0, #0x0]
	mov     r0, #0xf1
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	add     r1, sp, #0x0
	blx     Function_20a4788
branch_21d2510: @ 21d2510 :thumb
	mov     r4, #0x0
	mov     r7, #0x1
	ldr     r6, [pc, #0x28] @ 0x21d2540, (=#0x221a400)
	mov     r5, r4
	lsl     r7, r7, #8
branch_21d251a: @ 21d251a :thumb
	mov     r0, #0x1
	ldr     r1, [r6, #0x0]
	lsl     r0, r0, #8
	ldr     r0, [r1, r0]
	add     r0, r0, r5
	blx     Function_20a4060
	ldr     r0, [r6, #0x0]
	ldr     r0, [r0, r7]
	add     r0, r0, r5
	blx     Function_20a4028
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0xc
	cmp     r4, #0x20
	blt     branch_21d251a
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21d253e


.incbin "./baserom/overlay/overlay_0004.bin", 0x17be, 0x21d2540 - 0x21d253e

.word 0x221a400 @ 0x21d2540
@ 0x21d2544


.incbin "./baserom/overlay/overlay_0004.bin", 0x17c4, 0x221a3ff - 0x21d2544


@end 0x221a3ff


.section .text
