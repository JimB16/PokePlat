

.section .iwram118, "ax"


.thumb
Function_21d0d80: @ 21d0d80 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x2c] @ 0x21d0db4, (=0xb3c)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21d0d90
	bl      0x2022974
branch_21d0d90: @ 21d0d90 :thumb
	mov     r0, #0xc
	mov     r1, #0x1c
	bl      0x2018144
	ldr     r1, [pc, #0x18] @ 0x21d0db4, (=0xb3c)
	mov     r2, #0x1c
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	mov     r1, #0x0
	blx 0x20c4cf4
	ldr     r0, [pc, #0x10] @ 0x21d0db8, (=0xb29)
	ldrb    r1, [r4, r0]
	add     r0, #0x13
	ldr     r0, [r4, r0]
	str     r1, [r0, #0x14]
	pop     {r4,pc}
@ 0x21d0db2


.align 2


.word 0xb3c @ 0x21d0db4
.word 0xb29 @ 0x21d0db8
.thumb
Function_21d0dbc: @ 21d0dbc :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r1, [pc, #0x194] @ 0x21d0f58, (=0xb3c)
	ldr     r0, [pc, #0x198] @ 0x21d0f5c, (=0x5a4)
	ldr     r4, [r5, r1]
	ldr     r0, [r5, r0]
	sub     r1, #0x13
	ldrb    r1, [r5, r1]
	ldr     r0, [r0, #0x0]
	bl      0x207a0fc
	ldr     r1, [r4, #0x0]
	mov     r6, r0
	cmp     r1, #0xa
	bls     branch_21d0ddc
	b       branch_21d0f52
@ 0x21d0ddc

.thumb
branch_21d0ddc: @ 21d0ddc :thumb
	add     r2, r1, r1
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x21d0de8

Jumppoints_21d0de8:
.hword branch_21d0dfe - Jumppoints_21d0de8 - 2
.hword branch_21d0e60 - Jumppoints_21d0de8 - 2
.hword branch_21d0e60 - Jumppoints_21d0de8 - 2
.hword branch_21d0e66 - Jumppoints_21d0de8 - 2
.hword branch_21d0e74 - Jumppoints_21d0de8 - 2
.hword branch_21d0e8a - Jumppoints_21d0de8 - 2
.hword branch_21d0ebe - Jumppoints_21d0de8 - 2
.hword branch_21d0ecc - Jumppoints_21d0de8 - 2
.hword branch_21d0ed8 - Jumppoints_21d0de8 - 2
.hword branch_21d0ee8 - Jumppoints_21d0de8 - 2
.hword branch_21d0f32 - Jumppoints_21d0de8 - 2
.thumb
branch_21d0dfe: @ 21d0dfe :thumb
	mov     r1, #0x5
	mov     r2, #0x0
	bl      0x2074470
	ldr     r2, [pc, #0x158] @ 0x21d0f60, (=0x1df)
	str     r0, [r4, #0xc]
	cmp     r0, r2
	beq     branch_21d0e40
	mov     r1, r2
	add     r1, #0x8
	cmp     r0, r1
	beq     branch_21d0e1e
	add     r2, #0xd
	cmp     r0, r2
	beq     branch_21d0e2e
	b       branch_21d0e40
@ 0x21d0e1e

.thumb
branch_21d0e1e: @ 21d0e1e :thumb
	mov     r0, r6
	bl      0x2077a00
	mov     r0, #0x41
	str     r0, [r4, #0x8]
	mov     r0, #0x0
	str     r0, [r4, #0x10]
	b       branch_21d0e44
@ 0x21d0e2e

.thumb
branch_21d0e2e: @ 21d0e2e :thumb
	mov     r0, r6
	mov     r1, #0x1
	bl      0x2077acc
	mov     r0, #0x23
	str     r0, [r4, #0x8]
	mov     r0, #0x1
	str     r0, [r4, #0x10]
	b       branch_21d0e44
@ 0x21d0e40

.thumb
branch_21d0e40: @ 21d0e40 :thumb
	bl      0x2022974
.thumb
branch_21d0e44: @ 21d0e44 :thumb
	ldr     r0, [pc, #0x114] @ 0x21d0f5c, (=0x5a4)
	ldr     r0, [r5, r0]
	ldr     r0, [r0, #0x1c]
	bl      0x203d174
	bl      0x2027560
	mov     r1, r6
	bl      0x202736c
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d0f52
@ 0x21d0e60

.thumb
branch_21d0e60: @ 21d0e60 :thumb
	add     r0, r1, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d0f52
@ 0x21d0e66

.thumb
branch_21d0e66: @ 21d0e66 :thumb
	mov     r0, r5
	bl      Function_21d0f88
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d0f52
@ 0x21d0e74

.thumb
branch_21d0e74: @ 21d0e74 :thumb
	mov     r0, #0x1
	mov     r1, r0
	bl      0x201ff0c
	mov     r0, r4
	bl      Function_21d1028
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d0f52
@ 0x21d0e8a

.thumb
branch_21d0e8a: @ 21d0e8a :thumb
	ldr     r0, [r4, #0x4]
	add     r1, r0, #0x1
	str     r1, [r4, #0x4]
	ldr     r0, [r4, #0x8]
	cmp     r1, r0
	bne     branch_21d0ea0
	ldr     r1, [pc, #0xcc] @ 0x21d0f64, (=0xb29)
	mov     r0, r5
	ldrb    r1, [r5, r1]
	bl      0x2082da8
.thumb
branch_21d0ea0: @ 21d0ea0 :thumb
	bl      Function_21d10e8
	ldr     r1, [r4, #0x4]
	ldr     r0, [r4, #0x8]
	cmp     r1, r0
	ble     branch_21d0f52
	ldr     r0, [r4, #0x18]
	bl      0x2014710
	cmp     r0, #0x0
	bne     branch_21d0f52
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d0f52
@ 0x21d0ebe

.thumb
branch_21d0ebe: @ 21d0ebe :thumb
	mov     r0, r5
	bl      Function_21d0fb8
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d0f52
@ 0x21d0ecc

.thumb
branch_21d0ecc: @ 21d0ecc :thumb
	bl      0x2077e3c
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d0f52
@ 0x21d0ed8

.thumb
branch_21d0ed8: @ 21d0ed8 :thumb
	bl      0x200598c
	cmp     r0, #0x0
	bne     branch_21d0f52
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d0f52
@ 0x21d0ee8

.thumb
branch_21d0ee8: @ 21d0ee8 :thumb
	ldr     r0, [pc, #0x7c] @ 0x21d0f68, (=0x69c)
	mov     r1, #0xca
	ldr     r0, [r5, r0]
	bl      0x200b1ec
	mov     r7, r0
	mov     r0, r6
	bl      0x2076b10
	mov     r2, r0
	mov     r0, #0x6a
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x200b5cc
	mov     r1, #0x6a
	lsl     r1, r1, #4
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	mov     r2, r7
	bl      0x200c388
	mov     r0, r7
	bl      0x20237bc
	mov     r1, #0x0
	mov     r0, r5
	mvn     r1, r1
	mov     r2, #0x1
	bl      0x2082708
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d0f52
@ 0x21d0f32

.thumb
branch_21d0f32: @ 21d0f32 :thumb
	ldr     r0, [pc, #0x38] @ 0x21d0f6c, (=0xb28)
	ldrb    r0, [r5, r0]
	bl      0x201d724
	cmp     r0, #0x0
	bne     branch_21d0f52
	mov     r0, r5
	bl      Function_21d0f70
	ldr     r0, [pc, #0x14] @ 0x21d0f5c, (=0x5a4)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	add     r0, #0x23
	strb    r1, [r0, #0x0]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d0f52

.thumb
branch_21d0f52: @ 21d0f52 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21d0f56


.align 2


.word 0xb3c @ 0x21d0f58
.word 0x5a4 @ 0x21d0f5c
.word 0x1df @ 0x21d0f60
.word 0xb29 @ 0x21d0f64
.word 0x69c @ 0x21d0f68
.word 0xb28 @ 0x21d0f6c
.thumb
Function_21d0f70: @ 21d0f70 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0xc] @ 0x21d0f84, (=0xb3c)
	ldr     r0, [r4, r0]
	bl      0x20181c4
	ldr     r0, [pc, #0x4] @ 0x21d0f84, (=0xb3c)
	mov     r1, #0x0
	str     r1, [r4, r0]
	pop     {r4,pc}
@ 0x21d0f84

.word 0xb3c @ 0x21d0f84
.thumb
Function_21d0f88: @ 21d0f88 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r1, #0x0
	mov     r4, r0
	bl      0x207ea74
	ldr     r0, [pc, #0x18] @ 0x21d0fb0, (=0xb3c)
	ldr     r0, [r4, r0]
	bl      Function_21d0fdc
	mov     r1, #0x0
	ldr     r0, [pc, #0x14] @ 0x21d0fb4, (=0x4000050)
	mov     r2, #0x3f
	mov     r3, #0x1f
	str     r1, [sp, #0x0]
	blx 0x20bf55c
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d0fae


.align 2


.word 0xb3c @ 0x21d0fb0
.word 0x4000050 @ 0x21d0fb4
.thumb
Function_21d0fb8: @ 21d0fb8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x14] @ 0x21d0fd4, (=0xb3c)
	ldr     r0, [r4, r0]
	bl      Function_21d110c
	mov     r0, r4
	mov     r1, #0x1
	bl      0x207ea74
	ldr     r0, [pc, #0x8] @ 0x21d0fd8, (=0x4000050)
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	pop     {r4,pc}
@ 0x21d0fd4

.word 0xb3c @ 0x21d0fd4
.word 0x4000050 @ 0x21d0fd8
.thumb
Function_21d0fdc: @ 21d0fdc :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	bl      0x2014000
	mov     r1, #0x12
	mov     r0, #0xc
	lsl     r1, r1, #10
	bl      0x2018144
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0xc
	str     r0, [sp, #0x4]
	mov     r3, #0x12
	ldr     r0, [pc, #0x20] @ 0x21d1020, (=0x21d1129)
	ldr     r1, [pc, #0x24] @ 0x21d1024, (=0x21d114d)
	lsl     r3, r3, #10
	bl      0x2014014
	str     r0, [r4, #0x18]
	bl      0x2014784
	mov     r2, r0
	mov     r0, #0x1
	mov     r1, #0xe1
	lsl     r0, r0, #12
	lsl     r1, r1, #14
	bl      0x20206bc
	add     sp, #0x8
	pop     {r4,pc}
@ 0x21d101e


.align 2


.word 0x21d1129 @ 0x21d1020
.word 0x21d114d @ 0x21d1024
.thumb
Function_21d1028: @ 21d1028 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x10]
	mov     r0, #0xb9
	mov     r2, #0xc
	bl      0x20144c4
	mov     r1, r0
	ldr     r0, [r4, #0x18]
	mov     r2, #0xa
	mov     r3, #0x1
	bl      0x20144cc
	ldr     r1, [r4, #0xc]
	ldr     r0, [pc, #0x58] @ 0x21d10a0, (=0x1e7)
	cmp     r1, r0
	beq     branch_21d1052
	.hword  0x1d40 @ add r0, r0, #0x5
	cmp     r1, r0
	beq     branch_21d107e
	pop     {r4,pc}
@ 0x21d1052

.thumb
branch_21d1052: @ 21d1052 :thumb
	ldr     r0, [r4, #0x18]
	ldr     r2, [pc, #0x4c] @ 0x21d10a4, (=0x21d10b1)
	mov     r1, #0x0
	mov     r3, r4
	bl      0x20146f4
	ldr     r0, [r4, #0x18]
	ldr     r2, [pc, #0x40] @ 0x21d10a4, (=0x21d10b1)
	mov     r1, #0x1
	mov     r3, r4
	bl      0x20146f4
	ldr     r0, [r4, #0x18]
	ldr     r2, [pc, #0x34] @ 0x21d10a4, (=0x21d10b1)
	mov     r1, #0x2
	mov     r3, r4
	bl      0x20146f4
	ldr     r0, [pc, #0x30] @ 0x21d10a8, (=0x553)
	bl      0x2005748
	pop     {r4,pc}
@ 0x21d107e

.thumb
branch_21d107e: @ 21d107e :thumb
	ldr     r0, [r4, #0x18]
	ldr     r2, [pc, #0x20] @ 0x21d10a4, (=0x21d10b1)
	mov     r1, #0x0
	mov     r3, r4
	bl      0x20146f4
	ldr     r0, [r4, #0x18]
	ldr     r2, [pc, #0x14] @ 0x21d10a4, (=0x21d10b1)
	mov     r1, #0x1
	mov     r3, r4
	bl      0x20146f4
	ldr     r0, [pc, #0x14] @ 0x21d10ac, (=0x554)
	bl      0x2005748
	pop     {r4,pc}
@ 0x21d109e

.align 2
.word 0x1e7 @ 0x21d10a0
.word 0x21d10b1 @ 0x21d10a4
.word 0x553 @ 0x21d10a8
.word 0x554 @ 0x21d10ac



.thumb
Function_21d10b0: @ 21d10b0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x2014764
	ldr     r1, [r0, #0x14]
	lsl     r2, r1, #3
	ldr     r1, [pc, #0x20] @ 0x21d10e0, (=Unknown_21d1170)
	ldr     r2, [r1, r2]
	ldr     r1, [r4, #0x20]
	ldr     r1, [r1, #0x0]
	ldr     r1, [r1, #0x4]
	add     r1, r2, r1
	str     r1, [r4, #0x28]
	ldr     r0, [r0, #0x14]
	lsl     r1, r0, #3
	ldr     r0, [pc, #0x14] @ 0x21d10e4, (=0x21d1174)
	ldr     r1, [r0, r1]
	ldr     r0, [r4, #0x20]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x8]
	add     r0, r1, r0
	str     r0, [r4, #0x2c]
	pop     {r4,pc}
@ 0x21d10de

.align 2
.word Unknown_21d1170 @ 0x21d10e0
.word 0x21d1174 @ 0x21d10e4



.thumb
Function_21d10e8: @ 21d10e8 :thumb
	push    {r4,lr}
	bl      0x20241b4
	bl      0x201469c
	mov     r4, r0
	cmp     r4, #0x0
	ble     branch_21d10fc
	bl      0x20241b4
.thumb
branch_21d10fc: @ 21d10fc :thumb
	bl      0x20146c0
	mov     r0, #0x1
	mov     r1, #0x0
	bl      0x20241bc
	mov     r0, r4
	pop     {r4,pc}
@ 0x21d110c

.thumb
Function_21d110c: @ 21d110c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x18]
	bl      0x2014730
	mov     r4, r0
	ldr     r0, [r5, #0x18]
	bl      0x201411c
	mov     r0, r4
	bl      0x20181c4
	pop     {r3-r5,pc}
@ 0x21d1126


.align 2, 0


.thumb
Function_21d1128: @ 21d1128 :thumb
	push    {r4,lr}
	ldr     r3, [pc, #0x1c] @ 0x21d1148, (=0x2100dec)
	mov     r2, #0x0
	ldr     r3, [r3, #0x0]
	blx     r3
	mov     r4, r0
	bne     branch_21d113a
	bl      0x2022974
.thumb
branch_21d113a: @ 21d113a :thumb
	mov     r0, r4
	bl      0x20145b4
	lsl     r0, r4, #16
	lsr     r0, r0, #13
	pop     {r4,pc}
@ 0x21d1146


.align 2


.word 0x2100dec @ 0x21d1148
.thumb
Function_21d114c: @ 21d114c :thumb
	push    {r4,lr}
	ldr     r3, [pc, #0x1c] @ 0x21d116c, (=0x2100df4)
	mov     r2, #0x1
	ldr     r3, [r3, #0x0]
	blx     r3
	mov     r4, r0
	bne     branch_21d115e
	bl      0x2022974
.thumb
branch_21d115e: @ 21d115e :thumb
	mov     r0, r4
	bl      0x20145f4
	lsl     r0, r4, #16
	lsr     r0, r0, #13
	pop     {r4,pc}
@ 0x21d116a

.align 2
.word 0x2100df4 @ 0x21d116c



Unknown_21d1170: @ 0x21d1170
.incbin "./baserom/overlay/overlay_0118.bin", 0x3f0, 0x21d11c0 - 0x21d1170


@end 0x21d11c0



