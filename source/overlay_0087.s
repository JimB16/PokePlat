

.section .iwram87, "ax"


.thumb
Function_21d0d80: @ 21d0d80 :thumb
	push    {r3-r5,lr}
	mov     r2, #0x1
	mov     r5, r0
	mov     r0, #0x3
	mov     r1, #0x3c
	lsl     r2, r2, #14
	bl      0x2017fc8
	mov     r2, #0x7
	mov     r0, #0x3
	mov     r1, #0x3d
	lsl     r2, r2, #14
	bl      0x2017fc8
	mov     r0, r5
	mov     r1, #0xdc
	mov     r2, #0x3c
	bl      0x200681c
	mov     r4, r0
	beq     branch_21d0df8
	mov     r0, r5
	bl      0x2006840
	mov     r1, r4
	add     r1, #0xcc
	str     r0, [r1, #0x0]
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0xd4
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xcc
	ldr     r0, [r0, #0x0]
	bl      0x202e148
	mov     r1, r4
	add     r1, #0xd0
	str     r0, [r1, #0x0]
	mov     r1, r4
	add     r1, #0xcc
	ldr     r1, [r1, #0x0]
	mov     r0, r4
	bl      Function_21d0fc4
	mov     r0, r4
	mov     r1, r4
	bl      Function_21d106c
	mov     r1, r4
	add     r1, #0xc8
	str     r0, [r1, #0x0]
	mov     r0, r4
	add     r0, #0xc8
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_21d11d0
	add     r4, #0xd8
	str     r0, [r4, #0x0]
.thumb
branch_21d0df8: @ 21d0df8 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d0dfc

.thumb
Function_21d0dfc: @ 21d0dfc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      0x200682c
	mov     r4, r0
	add     r0, #0xc8
	ldr     r0, [r0, #0x0]
	bl      Function_21d1140
	mov     r0, r4
	bl      Function_21d1000
	mov     r0, r5
	bl      0x2006830
	mov     r0, #0x3d
	bl      0x201807c
	mov     r0, #0x3c
	bl      0x201807c
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d0e2a


.align 2, 0


.thumb
Function_21d0e2c: @ 21d0e2c :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	bl      0x200682c
	mov     r4, r0
	add     r0, #0xd8
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_21d0e58
	mov     r0, r4
	add     r0, #0xc8
	ldr     r0, [r0, #0x0]
	bl      Function_21d11f8
	cmp     r0, #0x0
	bne     branch_21d0e50
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d0e50

.thumb
branch_21d0e50: @ 21d0e50 :thumb
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0xd8
	str     r1, [r0, #0x0]
.thumb
branch_21d0e58: @ 21d0e58 :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_21d0e64
	cmp     r0, #0x1
	beq     branch_21d0f2a
	b       branch_21d0f2e
@ 0x21d0e64

.thumb
branch_21d0e64: @ 21d0e64 :thumb
	ldr     r0, [pc, #0xcc] @ 0x21d0f34, (=0x21bf67c)
	mov     r1, #0x2
	ldr     r0, [r0, #0x48]
	mov     r2, r0
	tst     r2, r1
	beq     branch_21d0e80
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d0f38
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_21d0f2e
@ 0x21d0e80

.thumb
branch_21d0e80: @ 21d0e80 :thumb
	mov     r2, #0x1
	mov     r3, r0
	tst     r3, r2
	beq     branch_21d0e98
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x4
	eor     r0, r2
	str     r0, [r4, #0x1c]
	mov     r0, r4
	bl      Function_21d0f38
	b       branch_21d0f2e
@ 0x21d0e98

.thumb
branch_21d0e98: @ 21d0e98 :thumb
	mov     r2, #0x20
	tst     r2, r0
	beq     branch_21d0eb2
	mov     r0, r4
	bl      Function_21d0f4c
	cmp     r0, #0x0
	beq     branch_21d0f2e
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_21d0f38
	b       branch_21d0f2e
@ 0x21d0eb2

.thumb
branch_21d0eb2: @ 21d0eb2 :thumb
	mov     r2, #0x10
	tst     r2, r0
	beq     branch_21d0ecc
	mov     r0, r4
	bl      Function_21d0f88
	cmp     r0, #0x0
	beq     branch_21d0f2e
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_21d0f38
	b       branch_21d0f2e
@ 0x21d0ecc

.thumb
branch_21d0ecc: @ 21d0ecc :thumb
	mov     r2, #0x40
	tst     r2, r0
	beq     branch_21d0efc
	ldr     r0, [r4, #0x18]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x18]
	bpl     branch_21d0ef4
	mov     r0, r4
	bl      Function_21d0f4c
	cmp     r0, #0x0
	beq     branch_21d0f2e
	ldr     r0, [r4, #0x14]
	mov     r1, #0x3
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x18]
	mov     r0, r4
	bl      Function_21d0f38
	b       branch_21d0f2e
@ 0x21d0ef4

.thumb
branch_21d0ef4: @ 21d0ef4 :thumb
	mov     r0, r4
	bl      Function_21d0f38
	b       branch_21d0f2e
@ 0x21d0efc

.thumb
branch_21d0efc: @ 21d0efc :thumb
	mov     r2, #0x80
	tst     r0, r2
	beq     branch_21d0f2e
	ldr     r0, [r4, #0x18]
	add     r2, r0, #0x1
	str     r2, [r4, #0x18]
	ldr     r0, [r4, #0x14]
	cmp     r2, r0
	blt     branch_21d0f22
	mov     r0, r4
	bl      Function_21d0f88
	cmp     r0, #0x0
	beq     branch_21d0f2e
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_21d0f38
	b       branch_21d0f2e
@ 0x21d0f22

.thumb
branch_21d0f22: @ 21d0f22 :thumb
	mov     r0, r4
	bl      Function_21d0f38
	b       branch_21d0f2e
@ 0x21d0f2a

.thumb
branch_21d0f2a: @ 21d0f2a :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d0f2e

.thumb
branch_21d0f2e: @ 21d0f2e :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d0f32


.align 2


.word 0x21bf67c @ 0x21d0f34
.thumb
Function_21d0f38: @ 21d0f38 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0xc8
	ldr     r0, [r0, #0x0]
	bl      Function_21d11d0
	add     r4, #0xd8
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x21d0f4a


.align 2, 0


.thumb
Function_21d0f4c: @ 21d0f4c :thumb
	push    {r3,lr}
	mov     r1, r0
	add     r1, #0xd4
	ldr     r1, [r1, #0x0]
	add     r2, r1, #0x1
	mov     r1, r0
	add     r1, #0xd4
	str     r2, [r1, #0x0]
	mov     r1, r0
	add     r1, #0xd4
	ldr     r2, [r1, #0x0]
	mov     r1, r0
	add     r1, #0xd0
	ldr     r1, [r1, #0x0]
	cmp     r2, r1
	blt     branch_21d0f74
	mov     r1, r0
	mov     r2, #0x0
	add     r1, #0xd4
	str     r2, [r1, #0x0]
.thumb
branch_21d0f74: @ 21d0f74 :thumb
	mov     r1, r0
	mov     r2, r0
	add     r1, #0xcc
	add     r2, #0xd4
	ldr     r1, [r1, #0x0]
	ldr     r2, [r2, #0x0]
	bl      Function_21d101c
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d0f88

.thumb
Function_21d0f88: @ 21d0f88 :thumb
	push    {r3,lr}
	mov     r1, r0
	add     r1, #0xd4
	ldr     r1, [r1, #0x0]
	.hword  0x1e4a @ sub r2, r1, #0x1
	mov     r1, r0
	add     r1, #0xd4
	str     r2, [r1, #0x0]
	mov     r1, r0
	add     r1, #0xd4
	ldr     r1, [r1, #0x0]
	cmp     r1, #0x0
	bge     branch_21d0fb0
	mov     r1, r0
	add     r1, #0xd0
	ldr     r1, [r1, #0x0]
	.hword  0x1e4a @ sub r2, r1, #0x1
	mov     r1, r0
	add     r1, #0xd4
	str     r2, [r1, #0x0]
.thumb
branch_21d0fb0: @ 21d0fb0 :thumb
	mov     r1, r0
	mov     r2, r0
	add     r1, #0xcc
	add     r2, #0xd4
	ldr     r1, [r1, #0x0]
	ldr     r2, [r2, #0x0]
	bl      Function_21d101c
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d0fc4

.thumb
Function_21d0fc4: @ 21d0fc4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r4, #0x0
	mov     r5, r0
	mov     r6, #0xc
	mov     r7, #0x3c
.thumb
branch_21d0fd4: @ 21d0fd4 :thumb
	mov     r0, r6
	mov     r1, r7
	bl      Function_2023790
	str     r0, [r5, #0x20]
	mov     r0, #0x8
	mov     r1, #0x3c
	bl      Function_2023790
	str     r0, [r5, #0x24]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x1c
	cmp     r4, #0x6
	blt     branch_21d0fd4
	ldr     r0, [sp, #0x0]
	mov     r2, #0x0
	ldr     r1, [sp, #0x4]
	str     r2, [r0, #0x1c]
	bl      Function_21d101c
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d1000

.thumb
Function_21d1000: @ 21d1000 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_21d1006: @ 21d1006 :thumb
	ldr     r0, [r5, #0x20]
	bl      Function_20237bc
	ldr     r0, [r5, #0x24]
	bl      Function_20237bc
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x1c
	cmp     r4, #0x6
	blt     branch_21d1006
	pop     {r3-r5,pc}
@ 0x21d101c

.thumb
Function_21d101c: @ 21d101c :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	mov     r6, r0
	str     r2, [sp, #0x0]
	mov     r0, r7
	mov     r1, r2
	bl      0x202e174
	str     r0, [r6, #0x0]
	ldr     r1, [sp, #0x0]
	mov     r0, r7
	bl      0x202e1a8
	str     r0, [r6, #0x14]
	ldr     r1, [sp, #0x0]
	mov     r0, r7
	add     r2, r6, #0x4
	bl      0x202e274
	ldr     r0, [r6, #0x14]
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_21d1064
	mov     r5, r6
	add     r5, #0x20
.thumb
branch_21d104e: @ 21d104e :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, r7
	mov     r2, r4
	mov     r3, r5
	bl      0x202e1f4
	ldr     r0, [r6, #0x14]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x1c
	cmp     r4, r0
	blt     branch_21d104e
.thumb
branch_21d1064: @ 21d1064 :thumb
	mov     r0, #0x0
	str     r0, [r6, #0x18]
	pop     {r3-r7,pc}
@ 0x21d106a


.align 2, 0


.thumb
Function_21d106c: @ 21d106c :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r6, r1
	mov     r5, r0
	ldr     r1, [pc, #0xbc] @ 0x21d1134, (=0xe1c)
	mov     r0, #0x3d
	bl      malloc
	mov     r4, r0
	beq     branch_21d112e
	str     r5, [r4, #0x0]
	str     r6, [r4, #0x4]
	mov     r0, #0x3d
	bl      0x2018340
	str     r0, [r4, #0x10]
	blx     0x20a7944
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x80
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r3, #0x20
	str     r3, [sp, #0xc]
	mov     r2, #0x3d
	str     r2, [sp, #0x10]
	mov     r2, r0
	bl      0x200a784
	mov     r1, r4
	mov     r0, #0x40
	add     r1, #0x38
	mov     r2, #0x3d
	bl      0x20095c4
	mov     r2, #0x16
	str     r0, [r4, #0x34]
	mov     r0, #0x0
	mov     r1, #0x1a
	lsl     r2, r2, #4
	mov     r3, #0x3d
	bl      Function_200b144
	mov     r2, #0x6
	lsl     r2, r2, #6
	str     r0, [r4, r2]
	mov     r0, #0x1
	mov     r1, #0x1a
	add     r2, #0x1c
	mov     r3, #0x3d
	bl      Function_200b144
	mov     r1, #0x61
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r2, [pc, #0x58] @ 0x21d1138, (=0x287)
	mov     r0, #0x1
	mov     r1, #0x1a
	mov     r3, #0x3d
	bl      Function_200b144
	mov     r1, #0x62
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x3d
	bl      0x200b358
	mov     r1, #0x63
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	sub     r1, #0x8c
	mov     r0, r1
	mov     r1, #0x3d
	bl      Function_2023790
	mov     r1, #0x19
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	sub     r1, #0x90
	mov     r0, r1
	mov     r1, #0x3d
	bl      Function_2023790
	mov     r1, #0x65
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x3d
	bl      0x2073c74
	mov     r1, #0x66
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [pc, #0x14] @ 0x21d113c, (=0x21d11ad)
	mov     r1, r4
	bl      SetMainLoopFunctionCall
.thumb
branch_21d112e: @ 21d112e :thumb
	mov     r0, r4
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x21d1134

.word 0xe1c @ 0x21d1134
.word 0x287 @ 0x21d1138
.word 0x21d11ad @ 0x21d113c
.thumb
Function_21d1140: @ 21d1140 :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_21d11aa
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	mov     r0, #0x66
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      free
	mov     r0, #0x65
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_20237bc
	mov     r0, #0x19
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_20237bc
	mov     r0, #0x63
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x200b3f0
	mov     r0, #0x62
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_200b190
	mov     r0, #0x61
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_200b190
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	bl      Function_200b190
	ldr     r0, [r4, #0x34]
	bl      0x2021964
	bl      0x200a878
	ldr     r0, [r4, #0x10]
	bl      free
	mov     r0, r4
	bl      free
.thumb
branch_21d11aa: @ 21d11aa :thumb
	pop     {r4,pc}
@ 0x21d11ac

.thumb
Function_21d11ac: @ 21d11ac :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x34]
	bl      0x20219f8
	bl      0x200a858
	ldr     r3, [pc, #0xc] @ 0x21d11c8, (=0x27e0000)
	ldr     r1, [pc, #0x10] @ 0x21d11cc, (=0x3ff8)
	mov     r0, #0x1
	ldr     r2, [r3, r1]
	orr     r0, r2
	str     r0, [r3, r1]
	pop     {r3,pc}
@ 0x21d11c6


.align 2


.word 0x27e0000 @ 0x21d11c8
.word 0x3ff8 @ 0x21d11cc
.thumb
Function_21d11d0: @ 21d11d0 :thumb
	push    {r3,lr}
	mov     r2, r1
	str     r2, [r0, #0xc]
	mov     r1, #0x0
	lsl     r3, r2, #2
	str     r1, [r0, #0x8]
	ldr     r2, [pc, #0x14] @ 0x21d11f4, (=0x21d1ba0)
	mov     r1, r0
	ldr     r2, [r2, r3]
	add     r1, #0x8
	blx     r2
	cmp     r0, #0x0
	bne     branch_21d11ee
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d11ee

.thumb
branch_21d11ee: @ 21d11ee :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d11f2


.align 2


.word 0x21d1ba0 @ 0x21d11f4
.thumb
Function_21d11f8: @ 21d11f8 :thumb
	push    {r3,lr}
	ldr     r2, [r0, #0xc]
	mov     r1, r0
	lsl     r3, r2, #2
	ldr     r2, [pc, #0x8] @ 0x21d120c, (=0x21d1ba0)
	add     r1, #0x8
	ldr     r2, [r2, r3]
	blx     r2
	pop     {r3,pc}
@ 0x21d120a


.align 2


.word 0x21d1ba0 @ 0x21d120c
.thumb
Function_21d1210: @ 21d1210 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r1
	ldr     r1, [r4, #0x0]
	mov     r5, r0
	cmp     r1, #0x0
	beq     branch_21d1224
	cmp     r1, #0x1
	beq     branch_21d124c
	b       branch_21d125a
@ 0x21d1224

.thumb
branch_21d1224: @ 21d1224 :thumb
	bl      Function_21d139c
	mov     r0, r5
	bl      Function_21d1818
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x3d
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	mov     r2, r1
	mov     r3, #0x0
	bl      0x200f174
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d125a
@ 0x21d124c

.thumb
branch_21d124c: @ 21d124c :thumb
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_21d125a
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4,r5,pc}
@ 0x21d125a

.thumb
branch_21d125a: @ 21d125a :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d1260

.thumb
Function_21d1260: @ 21d1260 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_21d1274
	cmp     r0, #0x1
	beq     branch_21d129a
	b       branch_21d12b4
@ 0x21d1274

.thumb
branch_21d1274: @ 21d1274 :thumb
	ldr     r0, [pc, #0x44] @ 0x21d12bc, (=0x60e)
	bl      Function_2005748
	mov     r1, #0x0
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x3d
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	mov     r2, r1
	mov     r3, r1
	bl      0x200f174
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d12b4
@ 0x21d129a

.thumb
branch_21d129a: @ 21d129a :thumb
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_21d12b4
	mov     r0, r5
	bl      Function_21d186c
	mov     r0, r5
	bl      Function_21d14b8
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4,r5,pc}
@ 0x21d12b4

.thumb
branch_21d12b4: @ 21d12b4 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d12ba


.align 2


.word 0x60e @ 0x21d12bc
.thumb
Function_21d12c0: @ 21d12c0 :thumb
	push    {r3-r7,lr}
	ldr     r7, [r0, #0x4]
	str     r0, [sp, #0x0]
	ldr     r0, [r7, #0x14]
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_21d1328
	ldr     r5, [sp, #0x0]
	mov     r6, r7
.thumb
branch_21d12d2: @ 21d12d2 :thumb
	ldr     r0, [r7, #0x18]
	cmp     r4, r0
	bne     branch_21d1304
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x2021fe0
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x2021f58
	mov     r0, #0x1
	bl      0x20063d4
	mov     r1, r6
	add     r1, #0x33
	ldrh    r0, [r6, #0x30]
	ldrb    r1, [r1, #0x0]
	bl      0x2005844
	b       branch_21d131c
@ 0x21d1304

.thumb
branch_21d1304: @ 21d1304 :thumb
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      0x2021fe0
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	add     r1, r4, #0x1
	bl      0x2021f58
.thumb
branch_21d131c: @ 21d131c :thumb
	ldr     r0, [r7, #0x14]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	add     r6, #0x1c
	cmp     r4, r0
	blt     branch_21d12d2
.thumb
branch_21d1328: @ 21d1328 :thumb
	ldr     r0, [sp, #0x0]
	bl      Function_21d1640
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d1332


.align 2, 0


.thumb
Function_21d1334: @ 21d1334 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r1, [r4, #0x0]
	cmp     r1, #0x3
	bhi     branch_21d137e
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d134a

Jumppoints_21d134a:
.hword branch_21d1352 - Jumppoints_21d134a - 2
.hword branch_21d135e - Jumppoints_21d134a - 2
.hword branch_21d136a - Jumppoints_21d134a - 2
.hword branch_21d1376 - Jumppoints_21d134a - 2
.thumb
branch_21d1352: @ 21d1352 :thumb
	bl      Function_21d1568
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d137e
@ 0x21d135e

.thumb
branch_21d135e: @ 21d135e :thumb
	bl      Function_21d1ab8
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d137e
@ 0x21d136a

.thumb
branch_21d136a: @ 21d136a :thumb
	bl      Function_21d1970
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d137e
@ 0x21d1376

.thumb
branch_21d1376: @ 21d1376 :thumb
	bl      Function_21d1558
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d137e

.thumb
branch_21d137e: @ 21d137e :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d1382


.align 2, 0


.thumb
Function_21d1384: @ 21d1384 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0xc] @ 0x21d1398, (=0x5dc)
	bl      Function_2005748
	mov     r0, r4
	bl      Function_21d1640
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d1398

.word 0x5dc @ 0x21d1398
.thumb
Function_21d139c: @ 21d139c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r0, [pc, #0xfc] @ 0x21d14a0, (=0x21d1b30)
	bl      0x201fe94
	ldr     r2, [pc, #0xf8] @ 0x21d14a4, (=0x4000304)
	ldrh    r1, [r2, #0x0]
	lsr     r0, r2, #11
	orr     r0, r1
	strh    r0, [r2, #0x0]
	ldr     r0, [pc, #0xf4] @ 0x21d14a8, (=0x21d1ae8)
	bl      0x2018368
	ldr     r0, [r5, #0x10]
	ldr     r2, [pc, #0xf0] @ 0x21d14ac, (=0x21d1b14)
	mov     r1, #0x1
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r0, [r5, #0x10]
	ldr     r2, [pc, #0xe8] @ 0x21d14b0, (=0x21d1af8)
	mov     r1, #0x2
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r1, #0x1
	str     r1, [sp, #0x8]
	mov     r0, #0x3d
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x10]
	mov     r0, #0x65
	mov     r3, #0x2
	bl      0x2006e3c
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x3d
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x10]
	mov     r0, #0x65
	mov     r3, #0x2
	bl      0x2006e60
	mov     r0, #0x40
	str     r0, [sp, #0x0]
	mov     r0, #0x3d
	mov     r2, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0x65
	mov     r1, #0x2
	mov     r3, r2
	bl      0x2006e84
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r1, #0x1
	ldr     r0, [r5, #0x10]
	mov     r3, r1
	bl      0x20196c0
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r2, [sp, #0xc]
	ldr     r0, [r5, #0x10]
	mov     r1, #0x1
	mov     r3, r2
	bl      0x2019cb8
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_21d14d4
	mov     r4, r0
	mov     r0, r5
	bl      Function_21d1558
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x3d
	str     r0, [sp, #0x4]
	lsl     r2, r4, #16
	ldr     r0, [r5, #0x10]
	mov     r1, #0x1
	lsr     r2, r2, #16
	mov     r3, #0x2
	bl      0x200daa4
	mov     r0, r5
	lsl     r2, r4, #16
	add     r0, #0x14
	mov     r1, #0x0
	lsr     r2, r2, #16
	mov     r3, #0x2
	bl      0x200dc48
	mov     r0, r5
	lsl     r2, r4, #16
	add     r0, #0x24
	mov     r1, #0x0
	lsr     r2, r2, #16
	mov     r3, #0x2
	bl      0x200dc48
	ldr     r0, [r5, #0x10]
	mov     r1, #0x1
	bl      0x2019448
	mov     r3, #0x8
	ldr     r0, [pc, #0x28] @ 0x21d14b4, (=0x4000050)
	mov     r1, #0x0
	mov     r2, #0x6
	str     r3, [sp, #0x0]
	blx     G2x_SetBlendAlpha_
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x21d14a0

.word 0x21d1b30 @ 0x21d14a0
.word 0x4000304 @ 0x21d14a4
.word 0x21d1ae8 @ 0x21d14a8
.word 0x21d1b14 @ 0x21d14ac
.word 0x21d1af8 @ 0x21d14b0
.word 0x4000050 @ 0x21d14b4
.thumb
Function_21d14b8: @ 21d14b8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	bl      0x2019044
	ldr     r0, [r4, #0x10]
	mov     r1, #0x2
	bl      0x2019044
	mov     r0, r4
	bl      Function_21d1540
	pop     {r4,pc}
@ 0x21d14d4

.thumb
Function_21d14d4: @ 21d14d4 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r2, #0x1
	mov     r5, r0
	str     r2, [sp, #0x0]
	mov     r0, #0x1e
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	mov     r4, r1
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	mov     r1, r5
	ldr     r0, [r5, #0x10]
	add     r1, #0x14
	mov     r3, r2
	bl      0x201a7e8
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	mov     r0, #0x1e
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	mov     r0, r4
	add     r0, #0x3c
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	mov     r1, r5
	mov     r2, #0x1
	ldr     r0, [r5, #0x10]
	add     r1, #0x24
	mov     r3, r2
	bl      0x201a7e8
	mov     r0, r5
	add     r0, #0x14
	bl      0x201a9f4
	add     r5, #0x24
	mov     r0, r5
	bl      0x201a9f4
	add     r4, #0xb4
	mov     r0, r4
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x21d153e


.align 2, 0


.thumb
Function_21d1540: @ 21d1540 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
	add     r5, #0x14
.thumb
branch_21d1548: @ 21d1548 :thumb
	mov     r0, r5
	bl      Function_201a8fc
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x2
	blt     branch_21d1548
	pop     {r3-r5,pc}
@ 0x21d1558

.thumb
Function_21d1558: @ 21d1558 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d1590
	mov     r0, r4
	bl      Function_21d1640
	pop     {r4,pc}
@ 0x21d1568

.thumb
Function_21d1568: @ 21d1568 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x14
	mov     r1, #0xf
	bl      Function_201ada4
	mov     r0, r4
	add     r0, #0x24
	mov     r1, #0xf
	bl      Function_201ada4
	mov     r0, r4
	add     r0, #0x14
	bl      0x201accc
	add     r4, #0x24
	mov     r0, r4
	bl      0x201accc
	pop     {r4,pc}
@ 0x21d1590

.thumb
Function_21d1590: @ 21d1590 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r4, [r5, #0x4]
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x63
	lsl     r0, r0, #2
	mov     r6, r5
	ldr     r0, [r5, r0]
	ldr     r2, [r4, #0x0]
	mov     r3, #0x4
	add     r6, #0x14
	bl      0x200b60c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x63
	lsl     r0, r0, #2
	mov     r2, #0x7d
	ldr     r3, [r4, #0x4]
	lsl     r2, r2, #4
	add     r2, r3, r2
	ldr     r0, [r5, r0]
	mov     r3, #0x4
	bl      0x200b60c
	mov     r0, #0x63
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [r4, #0x8]
	mov     r1, #0x2
	bl      0x200c2e0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x63
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [r4, #0xc]
	mov     r1, #0x3
	mov     r3, #0x2
	bl      0x200b60c
	mov     r2, #0x6
	lsl     r2, r2, #6
	ldr     r0, [r5, r2]
	add     r2, #0x10
	ldr     r2, [r5, r2]
	mov     r1, #0x0
	bl      Function_200b1b8
	mov     r2, #0x63
	lsl     r2, r2, #2
	mov     r1, r2
	ldr     r0, [r5, r2]
	add     r1, #0x8
	.hword  0x1d12 @ add r2, r2, #0x4
	ldr     r1, [r5, r1]
	ldr     r2, [r5, r2]
	bl      Function_200c388
	mov     r0, r6
	mov     r1, #0xf
	bl      Function_201ada4
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	str     r1, [sp, #0x8]
	add     r2, #0x95
	ldr     r2, [r5, r2]
	mov     r0, r6
	mov     r3, r1
	bl      0x201d738
	mov     r0, r6
	bl      0x201accc
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x21d1640

.thumb
Function_21d1640: @ 21d1640 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r4, [r5, #0x4]
	mov     r0, #0x1c
	ldr     r1, [r4, #0x18]
	mov     r2, r4
	mul     r0, r1
	add     r2, #0x20
	add     r7, r2, r0
	mov     r0, r5
	str     r0, [sp, #0xc]
	add     r0, #0x24
	mov     r1, #0xf
	str     r0, [sp, #0xc]
	bl      Function_201ada4
	ldr     r0, [r4, #0x1c]
	cmp     r0, #0x0
	beq     branch_21d1670
	cmp     r0, #0x1
	bne     branch_21d166e
	b       branch_21d17c4
@ 0x21d166e

.thumb
branch_21d166e: @ 21d166e :thumb
	b       branch_21d180e
@ 0x21d1670

.thumb
branch_21d1670: @ 21d1670 :thumb
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	ldr     r0, [sp, #0xc]
	ldr     r2, [r7, #0x0]
	mov     r3, r1
	bl      0x201d738
	mov     r2, #0x6
	lsl     r2, r2, #6
	ldr     r0, [r5, r2]
	add     r2, #0x10
	ldr     r2, [r5, r2]
	mov     r1, #0x5
	bl      Function_200b1b8
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	str     r1, [sp, #0x8]
	add     r2, #0x91
	ldr     r0, [sp, #0xc]
	ldr     r2, [r5, r2]
	mov     r3, #0x48
	bl      0x201d738
	mov     r2, #0x61
	lsl     r2, r2, #2
	ldr     r0, [r5, r2]
	add     r2, #0xc
	ldrh    r1, [r7, #0x10]
	ldr     r2, [r5, r2]
	bl      Function_200b1b8
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	str     r1, [sp, #0x8]
	add     r2, #0x91
	ldr     r0, [sp, #0xc]
	ldr     r2, [r5, r2]
	mov     r3, #0x5e
	bl      0x201d738
	ldrh    r0, [r7, #0x10]
	ldr     r1, [r7, #0x8]
	bl      Function_2075dac
	cmp     r0, #0x0
	beq     branch_21d16e2
	cmp     r0, #0x1
	beq     branch_21d16f4
	b       branch_21d1706
@ 0x21d16e2

.thumb
branch_21d16e2: @ 21d16e2 :thumb
	mov     r2, #0x6
	lsl     r2, r2, #6
	ldr     r0, [r5, r2]
	add     r2, #0x10
	ldr     r2, [r5, r2]
	mov     r1, #0x3
	bl      Function_200b1b8
	b       branch_21d1710
@ 0x21d16f4

.thumb
branch_21d16f4: @ 21d16f4 :thumb
	mov     r2, #0x6
	lsl     r2, r2, #6
	ldr     r0, [r5, r2]
	add     r2, #0x10
	ldr     r2, [r5, r2]
	mov     r1, #0x4
	bl      Function_200b1b8
	b       branch_21d1710
@ 0x21d1706

.thumb
branch_21d1706: @ 21d1706 :thumb
	mov     r0, #0x19
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	bl      0x20237e8
.thumb
branch_21d1710: @ 21d1710 :thumb
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	str     r1, [sp, #0x8]
	add     r2, #0x91
	ldr     r0, [sp, #0xc]
	ldr     r2, [r5, r2]
	mov     r3, #0xae
	bl      0x201d738
	mov     r2, #0x6
	lsl     r2, r2, #6
	ldr     r0, [r5, r2]
	add     r2, #0x10
	ldr     r2, [r5, r2]
	mov     r1, #0x1
	bl      Function_200b1b8
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x63
	lsl     r0, r0, #2
	ldrb    r2, [r7, #0x12]
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	mov     r3, #0x4
	bl      0x200b60c
	mov     r2, #0x63
	lsl     r2, r2, #2
	mov     r1, r2
	ldr     r0, [r5, r2]
	add     r1, #0x8
	.hword  0x1d12 @ add r2, r2, #0x4
	ldr     r1, [r5, r1]
	ldr     r2, [r5, r2]
	bl      Function_200c388
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	str     r1, [sp, #0x8]
	add     r2, #0x95
	ldr     r0, [sp, #0xc]
	ldr     r2, [r5, r2]
	mov     r3, #0xc2
	bl      0x201d738
	mov     r2, #0x6
	lsl     r2, r2, #6
	ldr     r0, [r5, r2]
	add     r2, #0x10
	ldr     r2, [r5, r2]
	mov     r1, #0x2
	bl      Function_200b1b8
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	mov     r1, #0x0
	str     r1, [sp, #0x8]
	add     r2, #0x91
	ldr     r0, [sp, #0xc]
	ldr     r2, [r5, r2]
	mov     r3, r1
	bl      0x201d738
	mov     r1, #0x19
	lsl     r1, r1, #4
	mov     r0, #0x0
	ldr     r1, [r5, r1]
	mov     r2, r0
	bl      0x2002d7c
	mov     r3, r0
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r1, #0x0
	str     r1, [sp, #0x8]
	ldr     r0, [sp, #0xc]
	ldr     r2, [r7, #0x4]
	bl      0x201d738
	b       branch_21d180e
@ 0x21d17c4

.thumb
branch_21d17c4: @ 21d17c4 :thumb
	mov     r4, #0x0
.thumb
branch_21d17c6: @ 21d17c6 :thumb
	ldrh    r1, [r7, #0x14]
	cmp     r1, #0x0
	beq     branch_21d180e
	mov     r0, #0x62
	mov     r2, #0x19
	lsl     r0, r0, #2
	lsl     r2, r2, #4
	ldr     r0, [r5, r0]
	ldr     r2, [r5, r2]
	bl      Function_200b1b8
	lsr     r0, r4, #31
	add     r0, r4, r0
	asr     r0, r0, #1
	lsl     r0, r0, #4
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	mov     r2, #0x19
	str     r0, [sp, #0x8]
	lsl     r2, r2, #4
	mov     r3, #0x1
	mov     r6, r4
	and     r6, r3
	mov     r3, #0x60
	ldr     r0, [sp, #0xc]
	ldr     r2, [r5, r2]
	mov     r1, #0x0
	mul     r3, r6
	bl      0x201d738
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cbf @ add r7, r7, #0x2
	cmp     r4, #0x4
	blt     branch_21d17c6
.thumb
branch_21d180e: @ 21d180e :thumb
	ldr     r0, [sp, #0xc]
	bl      0x201accc
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d1818

.thumb
Function_21d1818: @ 21d1818 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r0, #0x3d
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	mov     r1, #0x4d
	mov     r2, #0x0
	add     r3, sp, #0x8
	bl      0x2006fa0
	mov     r1, #0x5e
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x3d
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	mov     r1, #0x4e
	mov     r2, #0x0
	add     r3, sp, #0x4
	bl      0x2006fbc
	mov     r1, #0x5f
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	add     r1, #0x20
	mov     r2, #0x32
	mov     r0, #0x0
	add     r1, r4, r1
	lsl     r2, r2, #6
	blx     MIi_CpuClearFast
	ldr     r1, [sp, #0x8]
	ldr     r2, [sp, #0x4]
	mov     r0, r4
	bl      Function_21d18a0
	mov     r0, r4
	bl      Function_21d1970
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x21d186c

.thumb
Function_21d186c: @ 21d186c :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r6, #0x16
	mov     r4, #0x0
	mov     r5, r7
	lsl     r6, r6, #4
.thumb
branch_21d1878: @ 21d1878 :thumb
	ldr     r0, [r5, r6]
	cmp     r0, #0x0
	beq     branch_21d1882
	bl      0x2021bd4
.thumb
branch_21d1882: @ 21d1882 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x6
	blt     branch_21d1878
	mov     r0, #0x5e
	lsl     r0, r0, #2
	ldr     r0, [r7, r0]
	bl      free
	mov     r0, #0x5f
	lsl     r0, r0, #2
	ldr     r0, [r7, r0]
	bl      free
	pop     {r3-r7,pc}
@ 0x21d18a0

.thumb
Function_21d18a0: @ 21d18a0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x94
	mov     r3, #0x0
	mov     r5, r0
	str     r1, [sp, #0x7c]
	str     r2, [sp, #0x80]
	str     r3, [sp, #0x74]
	str     r3, [sp, #0x84]
	str     r3, [sp, #0x88]
	str     r3, [sp, #0x8c]
	add     r0, sp, #0x90
	strb    r3, [r0, #0x0]
	add     r0, sp, #0x2c
	str     r0, [sp, #0x70]
	add     r0, sp, #0x18
	str     r0, [sp, #0x78]
	ldr     r0, [r5, #0x34]
	mov     r1, #0x4c
	str     r0, [sp, #0x50]
	add     r0, sp, #0x70
	str     r0, [sp, #0x54]
	mov     r0, #0x1
	str     r0, [sp, #0x68]
	mov     r0, #0x3d
	str     r3, [sp, #0x60]
	str     r0, [sp, #0x6c]
	str     r0, [sp, #0x0]
	mov     r2, r3
	mov     r0, #0x1b
	add     r3, sp, #0x14
	bl      0x2006f50
	str     r0, [sp, #0xc]
	mov     r0, #0x1b
	mov     r1, #0x4b
	add     r2, sp, #0x10
	mov     r3, #0x3d
	bl      0x2006f88
	mov     r4, #0x0
	ldr     r6, [pc, #0x78] @ 0x21d196c, (=0x21d1b58)
	str     r0, [sp, #0x8]
	str     r4, [sp, #0x4]
	mov     r7, r4
.thumb
branch_21d18f8: @ 21d18f8 :thumb
	add     r0, sp, #0x2c
	blx     0x20a818c
	add     r0, sp, #0x18
	blx     0x20a81d0
	ldr     r0, [sp, #0x14]
	mov     r1, r4
	mov     r2, #0x1
	add     r3, sp, #0x2c
	blx     0x20a8224
	ldr     r0, [sp, #0x10]
	mov     r1, r7
	mov     r2, #0x1
	add     r3, sp, #0x18
	blx     0x20a8850
	ldr     r0, [r6, #0x0]
	lsl     r0, r0, #12
	str     r0, [sp, #0x58]
	ldr     r0, [r6, #0x4]
	lsl     r0, r0, #12
	str     r0, [sp, #0x5c]
	ldr     r0, [sp, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x64]
	add     r0, sp, #0x50
	bl      0x2021b90
	mov     r1, #0x16
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r0, r1
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x2021cac
	mov     r0, #0x32
	lsl     r0, r0, #6
	add     r4, r4, r0
	ldr     r0, [sp, #0x4]
	add     r7, #0x20
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r6, #0x8
	.hword  0x1d2d @ add r5, r5, #0x4
	str     r0, [sp, #0x4]
	cmp     r0, #0x6
	blt     branch_21d18f8
	ldr     r0, [sp, #0x8]
	bl      free
	ldr     r0, [sp, #0xc]
	bl      free
	add     sp, #0x94
	pop     {r4-r7,pc}
@ 0x21d196a


.align 2


.word 0x21d1b58 @ 0x21d196c
.thumb
Function_21d1970: @ 21d1970 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x38
	mov     r7, r0
	ldr     r0, [r7, #0x4]
	mov     r4, #0x0
	str     r0, [sp, #0x20]
	ldr     r0, [r0, #0x14]
	cmp     r0, #0x0
	bgt     branch_21d1984
	b       branch_21d1a92
@ 0x21d1984

.thumb
branch_21d1984: @ 21d1984 :thumb
	ldr     r5, [sp, #0x20]
	str     r4, [sp, #0x18]
	mov     r0, r5
	str     r0, [sp, #0x1c]
	add     r0, #0x33
	str     r0, [sp, #0x1c]
	mov     r0, #0x67
	lsl     r0, r0, #2
	add     r0, r7, r0
	str     r4, [sp, #0x14]
	mov     r6, r7
	str     r0, [sp, #0x24]
.thumb
branch_21d199c: @ 21d199c :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x28]
	mov     r2, r5
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x2c]
	add     r2, #0x32
	str     r0, [sp, #0xc]
	mov     r0, #0x66
	lsl     r0, r0, #2
	ldrh    r1, [r5, #0x30]
	ldrb    r2, [r2, #0x0]
	ldr     r0, [r7, r0]
	mov     r3, #0x20
	bl      InitPkmnData
	mov     r0, #0x66
	lsl     r0, r0, #2
	ldr     r0, [r7, r0]
	ldr     r2, [sp, #0x1c]
	mov     r1, #0x70
	bl      SetPkmnData
	mov     r1, #0x66
	lsl     r1, r1, #2
	ldr     r1, [r7, r1]
	add     r0, sp, #0x28
	mov     r2, #0x2
	bl      Function_2075ef4
	ldr     r0, [sp, #0x24]
	add     r1, sp, #0x28
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x28]
	ldr     r3, [pc, #0xcc] @ 0x21d1ab4, (=Unknown_21d1ad8)
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x2
	str     r0, [sp, #0xc]
	ldrh    r0, [r5, #0x30]
	mov     r2, #0x3d
	str     r0, [sp, #0x10]
	add     r0, sp, #0x28
	ldrh    r0, [r0, #0x0]
	ldrh    r1, [r1, #0x2]
	bl      0x2013720
	mov     r1, #0x32
	ldr     r0, [sp, #0x24]
	lsl     r1, r1, #6
	blx     DC_FlushRange
	mov     r2, #0x32
	ldr     r0, [sp, #0x24]
	ldr     r1, [sp, #0x18]
	lsl     r2, r2, #6
	blx     0x20c02bc
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x3d
	str     r0, [sp, #0x4]
	add     r0, sp, #0x28
	add     r1, sp, #0x28
	ldrh    r0, [r0, #0x0]
	ldrh    r1, [r1, #0x4]
	ldr     r3, [sp, #0x14]
	mov     r2, #0x1
	bl      0x2006e84
	ldr     r0, [sp, #0x20]
	ldr     r0, [r0, #0x18]
	cmp     r4, r0
	bne     branch_21d1a56
	mov     r0, #0x1
	bl      0x20063d4
	mov     r1, r5
	add     r1, #0x33
	ldrh    r0, [r5, #0x30]
	ldrb    r1, [r1, #0x0]
	bl      0x2005844
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r6, r0]
	mov     r1, #0x0
	bl      0x2021fe0
	b       branch_21d1a62
@ 0x21d1a56

.thumb
branch_21d1a56: @ 21d1a56 :thumb
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r6, r0]
	mov     r1, #0x1
	bl      0x2021fe0
.thumb
branch_21d1a62: @ 21d1a62 :thumb
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r6, r0]
	mov     r1, #0x1
	bl      0x2021cac
	ldr     r0, [sp, #0x1c]
	ldr     r1, [sp, #0x18]
	add     r0, #0x1c
	str     r0, [sp, #0x1c]
	mov     r0, #0x32
	lsl     r0, r0, #6
	add     r0, r1, r0
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x14]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r0, #0x20
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x20]
	add     r5, #0x1c
	ldr     r0, [r0, #0x14]
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r4, r0
	blt     branch_21d199c
.thumb
branch_21d1a92: @ 21d1a92 :thumb
	cmp     r4, #0x6
	bge     branch_21d1ab0
	lsl     r0, r4, #2
	mov     r6, #0x16
	add     r5, r7, r0
	mov     r7, #0x0
	lsl     r6, r6, #4
.thumb
branch_21d1aa0: @ 21d1aa0 :thumb
	ldr     r0, [r5, r6]
	mov     r1, r7
	bl      0x2021cac
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x6
	blt     branch_21d1aa0
branch_21d1ab0: @ 21d1ab0 :thumb
	add     sp, #0x38
	pop     {r3-r7,pc}
@ 0x21d1ab4

.word Unknown_21d1ad8 @ 0x21d1ab4



.thumb
Function_21d1ab8: @ 21d1ab8 :thumb
	push    {r3-r7,lr}
	mov     r4, #0x0
	mov     r6, #0x16
	mov     r5, r0
	mov     r7, r4
	lsl     r6, r6, #4
branch_21d1ac4: @ 21d1ac4 :thumb
	ldr     r0, [r5, r6]
	mov     r1, r7
	bl      0x2021cac
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x6
	blt     branch_21d1ac4
	pop     {r3-r7,pc}
@ 0x21d1ad6


.align 2, 0
Unknown_21d1ad8: @ 0x21d1ad8
.incbin "./baserom/overlay/overlay_0087.bin", 0xd58, 0x21d1bc0 - 0x21d1ad8


@end 0x21d1bc0




