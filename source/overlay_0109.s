

.section .iwram109, "ax"


.thumb
Function_21d0d80: @ 21d0d80 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	bl      0x2006840
	mov     r4, r0
	mov     r0, #0x1
	mov     r1, r0
	bl      0x20388f4
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      0x20177a4
	mov     r0, #0x2
	bl      0x2017de0
	mov     r2, #0x2
	mov     r0, #0x3
	mov     r1, #0x5f
	lsl     r2, r2, #18
	bl      0x2017fc8
	ldr     r1, [pc, #0xf4] @ 0x21d0ea8, (=0xdcc)
	mov     r0, r5
	mov     r2, #0x5f
	bl      0x200681c
	ldr     r2, [pc, #0xe8] @ 0x21d0ea8, (=0xdcc)
	mov     r6, r0
	mov     r1, #0x0
	blx     0x20d5124
	mov     r0, r6
	str     r6, [r4, #0x38]
	add     r0, #0xcc
	str     r4, [r0, #0x0]
	mov     r0, r6
	ldr     r1, [r4, #0x34]
	add     r0, #0xd0
	str     r1, [r0, #0x0]
	mov     r0, r6
	add     r0, #0xcc
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x1c]
	bl      LoadPokePartyAdress
	str     r0, [r6, #0x24]
	mov     r0, #0x9a
	mov     r1, #0x5f
	bl      0x2006c24
	mov     r1, #0x36
	lsl     r1, r1, #6
	str     r0, [r6, r1]
	mov     r0, #0x8
	mov     r1, #0x5f
	bl      0x201dbec
	bl      0x201e3d8
	mov     r0, #0x4
	bl      0x201e450
	mov     r0, r6
	bl      Function_21d1c28
	ldr     r0, [pc, #0xa0] @ 0x21d0eac, (=0x21d1c01)
	mov     r1, r6
	bl      SetMainLoopFunctionCall
	mov     r0, r6
	bl      Function_21d29cc
	mov     r0, r6
	bl      Function_21d2af0
	mov     r4, #0x0
	mov     r5, r4
	bl      Function_203608c
	mov     r1, r6
	add     r1, #0xd4
	mov     r12, r1
	mov     r1, r6
	add     r1, #0xcc
	ldr     r7, [r1, #0x0]
	mov     r3, #0x1
	ldr     r1, [r7, #0xc]
.thumb
branch_21d0e36: @ 21d0e36 :thumb
	mov     r2, r3
	lsl     r2, r4
	tst     r2, r1
	beq     branch_21d0e44
	cmp     r4, r0
	beq     branch_21d0e4a
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_21d0e44: @ 21d0e44 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x5
	blt     branch_21d0e36
.thumb
branch_21d0e4a: @ 21d0e4a :thumb
	ldr     r1, [r7, #0x8]
	mov     r0, #0xa
	mov     r2, r1
	mul     r2, r0
	ldr     r0, [pc, #0x5c] @ 0x21d0eb0, (=0x21d5c44)
	lsl     r1, r5, #1
	add     r0, r0, r2
	ldrh    r0, [r1, r0]
	lsl     r1, r0, #12
	mov     r0, r12
	str     r1, [r0, #0x40]
	bl      0x20041fc
	str     r0, [r6, #0x1c]
	mov     r0, r6
	bl      Function_21d31a8
	mov     r0, r6
	bl      Function_21d32dc
	mov     r0, r6
	bl      Function_21d3414
	mov     r0, r6
	bl      Function_21d3584
	mov     r0, r6
	bl      Function_21d379c
	mov     r0, r6
	bl      Function_21d3884
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x5f
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	mov     r3, r0
	bl      0x200f174
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21d0ea6


.align 2


.word 0xdcc @ 0x21d0ea8
.word 0x21d1c01 @ 0x21d0eac
.word 0x21d5c44 @ 0x21d0eb0
.thumb
Function_21d0eb4: @ 21d0eb4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      0x200682c
	mov     r4, r0
	bl      0x201e530
	cmp     r0, #0x1
	beq     branch_21d0eca
	bl      ErrorHandling
.thumb
branch_21d0eca: @ 21d0eca :thumb
	mov     r0, r4
	bl      Function_21d31e0
	mov     r0, r4
	bl      Function_21d3318
	mov     r0, r4
	bl      Function_21d3450
	mov     r0, r4
	bl      Function_21d35bc
	mov     r0, r4
	bl      Function_21d37e0
	mov     r0, r4
	bl      Function_21d38bc
	mov     r0, r4
	bl      Function_21d2a58
	mov     r0, r4
	bl      Function_21d2af8
	mov     r0, r4
	bl      Function_21d1c68
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      0x201dc3c
	mov     r0, #0x36
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	bl      0x2006ca8
	mov     r0, r5
	bl      0x2006830
	mov     r0, #0x5f
	bl      0x201807c
	mov     r0, #0x2
	bl      0x2017df0
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d0f2c

.thumb
Function_21d0f2c: @ 21d0f2c :thumb
	push    {r3-r5,lr}
	bl      0x200682c
	mov     r5, r0
	bl      Function_21d294c
	ldr     r4, [pc, #0x30] @ 0x21d0f6c, (=0x21d5cbc)
.thumb
branch_21d0f3a: @ 21d0f3a :thumb
	ldr     r1, [r5, #0x0]
	mov     r0, r5
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	blx     r1
	cmp     r0, #0x1
	beq     branch_21d0f3a
	cmp     r0, #0x2
	bne     branch_21d0f50
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d0f50

.thumb
branch_21d0f50: @ 21d0f50 :thumb
	mov     r0, r5
	bl      Function_21d2a68
	mov     r0, r5
	bl      Function_21d2c38
	mov     r0, r5
	bl      Function_21d1c90
	mov     r0, r5
	bl      Function_21d0f70
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d0f6c

.word 0x21d5cbc @ 0x21d0f6c
.thumb
Function_21d0f70: @ 21d0f70 :thumb
	mov     r1, #0x0
	str     r1, [r0, #0x34]
	str     r1, [r0, #0x3c]
	bx      lr
@ 0x21d0f78

.thumb
Function_21d0f78: @ 21d0f78 :thumb
	push    {r4,lr}
	mov     r1, #0x0
	mov     r4, r0
	bl      Function_21d2634
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d0f8a


.align 2, 0


.thumb
Function_21d0f8c: @ 21d0f8c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_21d0fac
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_21d0fa4
	mov     r0, #0x2
	b       branch_21d0fa6
@ 0x21d0fa4

.thumb
branch_21d0fa4: @ 21d0fa4 :thumb
	mov     r0, #0x8
.thumb
branch_21d0fa6: @ 21d0fa6 :thumb
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d0fac

.thumb
branch_21d0fac: @ 21d0fac :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d0fb0

.thumb
Function_21d0fb0: @ 21d0fb0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d3acc
	cmp     r0, #0x0
	beq     branch_21d0fc4
	mov     r0, #0x3
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d0fc4

.thumb
branch_21d0fc4: @ 21d0fc4 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d0fc8

.thumb
Function_21d0fc8: @ 21d0fc8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	mov     r1, #0x1
	add     r0, sp, #0x0
	strh    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x8
	add     r2, sp, #0x0
	mov     r3, #0x2
	bl      0x209bebc
	cmp     r0, #0x1
	bne     branch_21d0ff2
	mov     r0, #0x4
	str     r0, [r4, #0x0]
	add     sp, #0x4
	mov     r0, #0x1
	pop     {r3,r4,pc}
@ 0x21d0ff2

.thumb
branch_21d0ff2: @ 21d0ff2 :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d0ff8

.thumb
Function_21d0ff8: @ 21d0ff8 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      Function_21d3b04
	add     r5, r0, #0x1
	bl      0x2035e18
	cmp     r5, r0
	beq     branch_21d100e
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d100e

.thumb
branch_21d100e: @ 21d100e :thumb
	mov     r0, #0x5
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d1016


.align 2, 0


.thumb
Function_21d1018: @ 21d1018 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d3b04
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x30]
	mov     r0, r4
	add     r0, #0xd0
	mov     r2, r4
	ldr     r0, [r0, #0x0]
	mov     r1, #0xd
	add     r2, #0x30
	mov     r3, #0x4
	bl      0x209bebc
	cmp     r0, #0x1
	bne     branch_21d1042
	mov     r0, #0x0
	str     r0, [r4, #0x14]
	mov     r0, #0x6
	str     r0, [r4, #0x0]
.thumb
branch_21d1042: @ 21d1042 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d1046


.align 2, 0


.thumb
Function_21d1048: @ 21d1048 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r3, [r4, #0x14]
	cmp     r3, #0x0
	bne     branch_21d107c
	mov     r1, #0x0
	add     r0, sp, #0x0
	strh    r1, [r0, #0x2]
	strh    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	mov     r1, #0xc
	add     r2, sp, #0x0
	mov     r3, #0x4
	bl      0x209bebc
	cmp     r0, #0x1
	bne     branch_21d1076
	ldr     r0, [r4, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x14]
.thumb
branch_21d1076: @ 21d1076 :thumb
	add     sp, #0x4
	mov     r0, #0x0
	pop     {r3-r6,pc}
@ 0x21d107c

.thumb
branch_21d107c: @ 21d107c :thumb
	mov     r2, r4
	add     r2, #0xd0
	ldr     r2, [r2, #0x0]
	mov     r0, #0x1
	add     r2, #0x42
	ldrh    r2, [r2, #0x0]
	mov     r1, r0
	mov     r5, r0
.thumb
branch_21d108c: @ 21d108c :thumb
	mov     r6, r5
	lsl     r6, r0
	tst     r6, r2
	beq     branch_21d10be
	cmp     r1, r3
	blt     branch_21d10bc
	add     r1, sp, #0x0
	strh    r0, [r1, #0x2]
	ldr     r0, [r4, #0x14]
	add     r2, sp, #0x0
	strh    r0, [r1, #0x0]
	mov     r0, r4
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	mov     r1, #0xc
	mov     r3, #0x4
	bl      0x209bebc
	cmp     r0, #0x1
	bne     branch_21d10c4
	ldr     r0, [r4, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x14]
	b       branch_21d10c4
@ 0x21d10bc

.thumb
branch_21d10bc: @ 21d10bc :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
.thumb
branch_21d10be: @ 21d10be :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r0, #0x5
	blt     branch_21d108c
.thumb
branch_21d10c4: @ 21d10c4 :thumb
	ldr     r1, [r4, #0x14]
	ldr     r0, [r4, #0x30]
	cmp     r1, r0
	blt     branch_21d10d0
	mov     r0, #0x7
	str     r0, [r4, #0x0]
.thumb
branch_21d10d0: @ 21d10d0 :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x21d10d6


.align 2, 0


.thumb
Function_21d10d8: @ 21d10d8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	mov     r1, #0x8
	add     r0, sp, #0x0
	strh    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	add     r2, sp, #0x0
	mov     r3, #0x2
	bl      0x209bebc
	cmp     r0, #0x1
	bne     branch_21d10fa
	mov     r0, #0xa
	str     r0, [r4, #0x0]
.thumb
branch_21d10fa: @ 21d10fa :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d1100

.thumb
Function_21d1100: @ 21d1100 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0xd0
	mov     r2, #0x0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x9
	mov     r3, r2
	bl      0x209bebc
	cmp     r0, #0x1
	bne     branch_21d1120
	mov     r0, #0x0
	str     r0, [r4, #0x10]
	mov     r1, #0x9
	str     r1, [r4, #0x0]
	pop     {r4,pc}
@ 0x21d1120

.thumb
branch_21d1120: @ 21d1120 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d1124

.thumb
Function_21d1124: @ 21d1124 :thumb
	push    {r4,lr}
	mov     r1, #0x8
	mov     r4, r0
	bl      Function_21d3ab8
	cmp     r0, #0x1
	bne     branch_21d114a
	ldr     r0, [r4, #0x30]
	cmp     r0, #0x2
	bge     branch_21d113c
	bl      ErrorHandling
.thumb
branch_21d113c: @ 21d113c :thumb
	ldr     r0, [r4, #0x2c]
	cmp     r0, #0x0
	bne     branch_21d1146
	bl      ErrorHandling
.thumb
branch_21d1146: @ 21d1146 :thumb
	mov     r0, #0xa
	str     r0, [r4, #0x0]
.thumb
branch_21d114a: @ 21d114a :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d114e


.align 2, 0


.thumb
Function_21d1150: @ 21d1150 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xca
	bl      0x20364f0
	mov     r0, #0xb
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d1162


.align 2, 0


.thumb
Function_21d1164: @ 21d1164 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xca
	bl      0x2036540
	cmp     r0, #0x0
	beq     branch_21d1176
	mov     r0, #0xc
	str     r0, [r4, #0x0]
.thumb
branch_21d1176: @ 21d1176 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d117a


.align 2, 0


.thumb
Function_21d117c: @ 21d117c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r2, r4
	add     r2, #0xcc
	add     r0, #0xd0
	ldr     r2, [r2, #0x0]
	ldr     r0, [r0, #0x0]
	mov     r1, #0xe
	.hword  0x1d12 @ add r2, r2, #0x4
	mov     r3, #0x4
	bl      0x209bebc
	cmp     r0, #0x0
	beq     branch_21d119c
	mov     r0, #0xd
	str     r0, [r4, #0x0]
.thumb
branch_21d119c: @ 21d119c :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d11a0

.thumb
Function_21d11a0: @ 21d11a0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r2, #0x59
	ldr     r1, [r4, #0x24]
	mov     r0, #0x83
	lsl     r2, r2, #4
	bl      0x203597c
	cmp     r0, #0x0
	beq     branch_21d11b8
	mov     r0, #0xe
	str     r0, [r4, #0x0]
.thumb
branch_21d11b8: @ 21d11b8 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d11bc

.thumb
Function_21d11bc: @ 21d11bc :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d3bc4
	ldr     r1, [r4, #0x30]
	cmp     r1, r0
	bne     branch_21d11fe
	mov     r0, r4
	bl      Function_21d3cd8
	cmp     r0, #0x1
	bne     branch_21d11ea
	mov     r0, r4
	add     r0, #0xd0
	mov     r2, #0x0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x10
	mov     r3, r2
	bl      0x209bebc
	mov     r0, #0x2e
	str     r0, [r4, #0x0]
	b       branch_21d11fe
@ 0x21d11ea

.thumb
branch_21d11ea: @ 21d11ea :thumb
	mov     r0, r4
	add     r0, #0xd0
	mov     r2, #0x0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x11
	mov     r3, r2
	bl      0x209bebc
	mov     r0, #0xf
	str     r0, [r4, #0x0]
.thumb
branch_21d11fe: @ 21d11fe :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d1202


.align 2, 0


.thumb
Function_21d1204: @ 21d1204 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d3d3c
	cmp     r0, #0x1
	bne     branch_21d1216
	mov     r0, #0x2e
	str     r0, [r4, #0x0]
	b       branch_21d1226
@ 0x21d1216

.thumb
branch_21d1216: @ 21d1216 :thumb
	mov     r0, r4
	bl      Function_21d3d1c
	ldr     r1, [r4, #0x30]
	cmp     r1, r0
	bne     branch_21d1226
	mov     r0, #0x10
	str     r0, [r4, #0x0]
.thumb
branch_21d1226: @ 21d1226 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d122a


.align 2, 0


.thumb
Function_21d122c: @ 21d122c :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r1, #0x18
	bl      Function_21d3a94
	mov     r7, r0
	ldr     r0, [r6, #0x2c]
	ldr     r2, [pc, #0x6c] @ 0x21d12a8, (=0x21d5c44)
	str     r0, [r7, #0x10]
	ldr     r1, [r6, #0x30]
	mov     r0, #0xa
	mov     r3, r1
	str     r1, [r7, #0x14]
	mul     r3, r0
	ldr     r0, [r6, #0x2c]
	mov     r4, #0x0
	lsl     r1, r0, #1
	add     r0, r2, r3
	ldrh    r0, [r1, r0]
	mov     r5, r6
	str     r0, [r7, #0x4]
.thumb
branch_21d1256: @ 21d1256 :thumb
	mov     r0, r6
	mov     r1, r4
	bl      Function_21d3b54
	cmp     r0, #0x0
	beq     branch_21d127e
	mov     r0, r4
	bl      0x2032ee8
	mov     r1, r5
	add     r1, #0x84
	str     r0, [r1, #0x0]
	mov     r0, r5
	mov     r1, r5
	add     r0, #0x84
	add     r1, #0x98
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	bl      0x2025ef4
.thumb
branch_21d127e: @ 21d127e :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x8
	blt     branch_21d1256
	ldr     r0, [r7, #0x4]
	mov     r2, #0x1
	lsl     r1, r0, #12
	mov     r0, #0x45
	lsl     r0, r0, #2
	str     r1, [r6, r0]
	mov     r0, #0x11
	str     r0, [r6, #0x0]
	ldr     r1, [pc, #0x14] @ 0x21d12ac, (=0x4ba)
	mov     r0, #0xf
	bl      0x2004550
	mov     r0, r6
	bl      Function_21d2788
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d12a8

.word 0x21d5c44 @ 0x21d12a8
.word 0x4ba @ 0x21d12ac
.thumb
Function_21d12b0: @ 21d12b0 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r1, [r5, #0xc]
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r5, #0xc]
	cmp     r1, #0x0
	ble     branch_21d12c6
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r4,r5,pc}
@ 0x21d12c6

.thumb
branch_21d12c6: @ 21d12c6 :thumb
	mov     r1, #0xf
	str     r1, [r5, #0xc]
	bl      Function_21d3ab4
	mov     r4, r0
	ldr     r1, [r4, #0x14]
	mov     r0, #0xa
	mov     r3, r1
	ldr     r2, [r4, #0x10]
	mul     r3, r0
	ldr     r0, [pc, #0x54] @ 0x21d1330, (=0x21d5c80)
	lsl     r1, r2, #1
	add     r0, r0, r3
	ldrh    r0, [r1, r0]
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x4]
	str     r0, [sp, #0x4]
	mov     r0, #0x2d
	lsl     r0, r0, #4
	add     r1, r5, r0
	mov     r0, #0xb0
	mul     r0, r2
	add     r0, r1, r0
	str     r0, [sp, #0x8]
	lsl     r1, r2, #2
	add     r1, r5, r1
	add     r1, #0x72
	ldrh    r1, [r1, #0x0]
	ldr     r3, [r4, #0x0]
	mov     r0, r5
	bl      Function_21d2fe0
	ldr     r0, [r4, #0x10]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x10]
	ldr     r1, [r4, #0x14]
	blx     _s32_div_f
	str     r1, [r4, #0x10]
	ldr     r0, [r4, #0x0]
	add     r1, r0, #0x1
	str     r1, [r4, #0x0]
	ldr     r0, [r4, #0x14]
	cmp     r1, r0
	bne     branch_21d1328
	mov     r0, #0x0
	str     r0, [r5, #0xc]
	mov     r0, #0x12
	str     r0, [r5, #0x0]
.thumb
branch_21d1328: @ 21d1328 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d132e


.align 2


.word 0x21d5c80 @ 0x21d1330
.thumb
Function_21d1334: @ 21d1334 :thumb
	push    {r3-r6}
	mov     r1, #0x19
	mov     r3, #0x0
	lsl     r1, r1, #4
	add     r6, r0, r1
	ldr     r5, [r0, #0x30]
	mov     r4, r3
	sub     r1, #0x48
.thumb
branch_21d1344: @ 21d1344 :thumb
	ldr     r2, [r6, r1]
	cmp     r2, #0x1
	bne     branch_21d134c
	.hword  0x1c64 @ add r4, r4, #0x1
.thumb
branch_21d134c: @ 21d134c :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	add     r6, #0xb0
	cmp     r3, r5
	blt     branch_21d1344
	cmp     r4, r5
	bne     branch_21d1362
	mov     r1, #0x13
	str     r1, [r0, #0x0]
	mov     r0, #0x1
	pop     {r3-r6}
	bx      lr
@ 0x21d1362

.thumb
branch_21d1362: @ 21d1362 :thumb
	mov     r0, #0x0
	pop     {r3-r6}
	bx      lr
@ 0x21d1368

.thumb
Function_21d1368: @ 21d1368 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	cmp     r0, #0x1e
	ble     branch_21d138c
	mov     r0, #0x0
	str     r0, [r4, #0xc]
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_21d1388
	mov     r0, #0x14
	str     r0, [r4, #0x0]
	b       branch_21d138c
@ 0x21d1388

.thumb
branch_21d1388: @ 21d1388 :thumb
	mov     r0, #0x15
	str     r0, [r4, #0x0]
.thumb
branch_21d138c: @ 21d138c :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d1390

.thumb
Function_21d1390: @ 21d1390 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	mov     r1, #0x4
	add     r0, sp, #0x0
	strh    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x8
	add     r2, sp, #0x0
	mov     r3, #0x2
	bl      0x209bebc
	cmp     r0, #0x1
	bne     branch_21d13b4
	mov     r0, #0x16
	str     r0, [r4, #0x0]
.thumb
branch_21d13b4: @ 21d13b4 :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d13ba


.align 2, 0


.thumb
Function_21d13bc: @ 21d13bc :thumb
	push    {r4,lr}
	mov     r1, #0x4
	mov     r4, r0
	bl      Function_21d3ab8
	cmp     r0, #0x1
	bne     branch_21d13d2
	mov     r0, #0x16
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d13d2

.thumb
branch_21d13d2: @ 21d13d2 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d13d6


.align 2, 0


.thumb
Function_21d13d8: @ 21d13d8 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xca
	bl      0x20364f0
	mov     r0, #0x17
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d13ea


.align 2, 0


.thumb
Function_21d13ec: @ 21d13ec :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xca
	bl      0x2036540
	cmp     r0, #0x0
	beq     branch_21d13fe
	mov     r0, #0x18
	str     r0, [r4, #0x0]
.thumb
branch_21d13fe: @ 21d13fe :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d1402


.align 2, 0


.thumb
Function_21d1404: @ 21d1404 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x1
	bl      Function_21d3990
	mov     r0, r4
	bl      Function_21d3684
	mov     r0, #0x19
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d141c

.thumb
Function_21d141c: @ 21d141c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0xc]
	cmp     r0, #0x5f
	bge     branch_21d142e
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d142e

.thumb
branch_21d142e: @ 21d142e :thumb
	ldr     r0, [r5, #0x30]
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_21d1446
.thumb
branch_21d1436: @ 21d1436 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_21d28a0
	ldr     r0, [r5, #0x30]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r0
	blt     branch_21d1436
.thumb
branch_21d1446: @ 21d1446 :thumb
	mov     r0, #0x0
	str     r0, [r5, #0xc]
	mov     r1, #0x1a
	str     r1, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d1450

.thumb
Function_21d1450: @ 21d1450 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_203608c
	mov     r0, #0x1b
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d1460

.thumb
Function_21d1460: @ 21d1460 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r0
	bl      Function_21d3a14
	cmp     r0, #0x1
	bne     branch_21d1482
	mov     r0, r4
	bl      Function_21d35f4
	cmp     r0, #0x0
	bne     branch_21d1482
	mov     r0, #0x1d
	str     r0, [r4, #0x0]
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d1482

.thumb
branch_21d1482: @ 21d1482 :thumb
	ldr     r0, [r4, #0x34]
	cmp     r0, #0x0
	beq     branch_21d1498
	mov     r0, r4
	bl      Function_21d35f4
	cmp     r0, #0x0
	bne     branch_21d1498
	mov     r0, r4
	bl      Function_21d35cc
.thumb
branch_21d1498: @ 21d1498 :thumb
	mov     r0, r4
	bl      Function_21d37f0
	cmp     r0, #0x0
	bne     branch_21d14c6
	mov     r0, r4
	bl      Function_21d29ac
	cmp     r0, #0x1
	bne     branch_21d14c6
	mov     r0, r4
	bl      Function_21d35f4
	cmp     r0, #0x0
	bne     branch_21d14c0
	mov     r0, r4
	bl      Function_21d35cc
	mov     r0, #0x1
	str     r0, [r4, #0x38]
.thumb
branch_21d14c0: @ 21d14c0 :thumb
	mov     r0, r4
	bl      Function_21d37fc
.thumb
branch_21d14c6: @ 21d14c6 :thumb
	ldr     r0, [r4, #0x38]
	cmp     r0, #0x0
	beq     branch_21d14e8
	mov     r0, r4
	add     r0, #0xcc
	ldr     r0, [r0, #0x0]
	mov     r2, r4
	ldr     r0, [r0, #0x34]
	mov     r1, #0xa
	add     r2, #0x38
	mov     r3, #0x1
	bl      0x209bebc
	cmp     r0, #0x1
	bne     branch_21d14e8
	mov     r0, #0x0
	str     r0, [r4, #0x38]
.thumb
branch_21d14e8: @ 21d14e8 :thumb
	mov     r0, r4
	mov     r1, #0x4b
	ldr     r2, [r4, #0x8]
	add     r0, #0xd4
	lsl     r1, r1, #2
	cmp     r2, r1
	ldr     r2, [r0, #0x48]
	bge     branch_21d1508
	mov     r1, #0xe
	add     r2, #0xbf
	lsl     r1, r1, #12
	str     r2, [r0, #0x48]
	cmp     r2, r1
	blt     branch_21d1516
	str     r1, [r0, #0x48]
	b       branch_21d1516
@ 0x21d1508

.thumb
branch_21d1508: @ 21d1508 :thumb
	mov     r1, #0x1
	sub     r2, #0xbf
	lsl     r1, r1, #14
	str     r2, [r0, #0x48]
	cmp     r2, r1
	bge     branch_21d1516
	str     r1, [r0, #0x48]
.thumb
branch_21d1516: @ 21d1516 :thumb
	ldr     r5, [r0, #0x48]
	mov     r0, r4
	bl      Function_21d35e8
	cmp     r0, #0x1
	bne     branch_21d152e
	mov     r0, r4
	add     r0, #0xd4
	lsl     r1, r5, #1
	bl      Function_21d2ae4
	b       branch_21d1536
@ 0x21d152e

.thumb
branch_21d152e: @ 21d152e :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_21d39fc
.thumb
branch_21d1536: @ 21d1536 :thumb
	ldr     r0, [r4, #0x8]
	add     r2, sp, #0x0
	mov     r1, #0x47
	strh    r0, [r2, #0x2]
	lsl     r1, r1, #2
	ldr     r3, [r4, r1]
	sub     r1, #0xc
	asr     r0, r3, #11
	lsr     r0, r0, #20
	add     r0, r3, r0
	asr     r0, r0, #12
	strh    r0, [r2, #0x4]
	ldr     r1, [r4, r1]
	add     r4, #0xd0
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r0, r0, #12
	strh    r0, [r2, #0x6]
	ldr     r0, [r4, #0x0]
	mov     r1, #0xb
	add     r2, sp, #0x0
	mov     r3, #0x8
	bl      0x209bebc
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x21d156e


.align 2, 0


.thumb
Function_21d1570: @ 21d1570 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x3c]
	cmp     r0, #0x1
	bne     branch_21d159a
	mov     r0, r4
	add     r0, #0x5e
	ldrh    r0, [r0, #0x0]
	lsl     r1, r0, #12
	mov     r0, #0x11
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	mov     r0, #0x5c
	ldsh    r1, [r4, r0]
	add     r0, #0xc0
	lsl     r1, r1, #12
	str     r1, [r4, r0]
	mov     r0, r4
	add     r0, #0x5a
	ldrh    r0, [r0, #0x0]
	str     r0, [r4, #0x8]
.thumb
branch_21d159a: @ 21d159a :thumb
	mov     r0, r4
	bl      Function_21d3a14
	cmp     r0, #0x1
	bne     branch_21d15b6
	mov     r0, r4
	bl      Function_21d35f4
	cmp     r0, #0x0
	bne     branch_21d15b6
	mov     r0, #0x1d
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d15b6

.thumb
branch_21d15b6: @ 21d15b6 :thumb
	ldr     r0, [r4, #0x34]
	cmp     r0, #0x0
	beq     branch_21d15cc
	mov     r0, r4
	bl      Function_21d35f4
	cmp     r0, #0x0
	bne     branch_21d15cc
	mov     r0, r4
	bl      Function_21d35cc
.thumb
branch_21d15cc: @ 21d15cc :thumb
	mov     r0, r4
	bl      Function_21d37f0
	cmp     r0, #0x0
	bne     branch_21d15fa
	mov     r0, r4
	bl      Function_21d29ac
	cmp     r0, #0x1
	bne     branch_21d15fa
	mov     r0, r4
	bl      Function_21d35f4
	cmp     r0, #0x0
	bne     branch_21d15f4
	mov     r0, r4
	bl      Function_21d35cc
	mov     r0, #0x1
	str     r0, [r4, #0x38]
.thumb
branch_21d15f4: @ 21d15f4 :thumb
	mov     r0, r4
	bl      Function_21d37fc
.thumb
branch_21d15fa: @ 21d15fa :thumb
	ldr     r0, [r4, #0x38]
	cmp     r0, #0x0
	beq     branch_21d161c
	mov     r0, r4
	add     r0, #0xcc
	ldr     r0, [r0, #0x0]
	mov     r2, r4
	ldr     r0, [r0, #0x34]
	mov     r1, #0xa
	add     r2, #0x38
	mov     r3, #0x1
	bl      0x209bebc
	cmp     r0, #0x1
	bne     branch_21d161c
	mov     r0, #0x0
	str     r0, [r4, #0x38]
.thumb
branch_21d161c: @ 21d161c :thumb
	mov     r0, r4
	bl      Function_21d35e8
	cmp     r0, #0x1
	bne     branch_21d1638
	mov     r1, #0x47
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	mov     r0, r4
	add     r0, #0xd4
	lsl     r1, r1, #1
	bl      Function_21d2ae4
	b       branch_21d1644
@ 0x21d1638

.thumb
branch_21d1638: @ 21d1638 :thumb
	mov     r1, #0x47
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	mov     r0, r4
	bl      Function_21d39fc
.thumb
branch_21d1644: @ 21d1644 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d1648

.thumb
Function_21d1648: @ 21d1648 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x0
	bl      Function_21d3990
	mov     r0, r4
	bl      Function_21d2df8
	str     r0, [r4, #0x28]
	bl      Function_203608c
	ldr     r1, [r4, #0x28]
	ldr     r1, [r1, #0xc]
	cmp     r1, r0
	bne     branch_21d166a
	mov     r0, #0x1e
	b       branch_21d166c
@ 0x21d166a

.thumb
branch_21d166a: @ 21d166a :thumb
	mov     r0, #0x1f
.thumb
branch_21d166c: @ 21d166c :thumb
	str     r0, [r4, #0x0]
	ldr     r0, [pc, #0x8] @ 0x21d1678, (=0x5f1)
	bl      Function_2005748
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d1678

.word 0x5f1 @ 0x21d1678
.thumb
Function_21d167c: @ 21d167c :thumb
	push    {r4,lr}
	mov     r1, #0x1
	mov     r4, r0
	lsl     r1, r1, #14
	bl      Function_21d39fc
	mov     r0, r4
	bl      Function_21d2df8
	str     r0, [r4, #0x28]
	bl      Function_203608c
	ldr     r1, [r4, #0x28]
	ldr     r1, [r1, #0xc]
	cmp     r1, r0
	beq     branch_21d16a0
	mov     r0, #0x1f
	str     r0, [r4, #0x0]
.thumb
branch_21d16a0: @ 21d16a0 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d16a4

.thumb
Function_21d16a4: @ 21d16a4 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r6, r0
	ldr     r0, [r6, #0x28]
	ldr     r2, [r6, #0x30]
	ldr     r1, [r0, #0x1c]
	ldr     r3, [r6, #0x2c]
	mov     r0, #0xa
	mul     r0, r2
	ldr     r4, [pc, #0x64] @ 0x21d171c, (=0x21d5c80)
	lsl     r2, r3, #1
	add     r0, r4, r0
	ldrh    r0, [r2, r0]
	mov     r5, #0x1
	lsl     r5, r5, #14
	lsl     r4, r0, #12
	str     r1, [sp, #0x0]
	sub     r2, r4, r1
	bpl     branch_21d16d2
	mov     r0, #0x5a
	lsl     r0, r0, #14
	add     r0, r4, r0
	sub     r2, r0, r1
.thumb
branch_21d16d2: @ 21d16d2 :thumb
	mov     r0, #0x1
	lsl     r0, r0, #16
	cmp     r2, r0
	bgt     branch_21d16dc
	asr     r5, r5, #1
.thumb
branch_21d16dc: @ 21d16dc :thumb
	cmp     r2, r5
	bge     branch_21d16e2
	mov     r5, r2
.thumb
branch_21d16e2: @ 21d16e2 :thumb
	mov     r0, r6
	add     r0, #0xd4
	mov     r1, r5
	bl      Function_21d2ae4
	mov     r0, r6
	mov     r1, r5
	bl      Function_21d2d44
	add     r0, sp, #0x0
	mov     r1, r5
	bl      Function_21d39d4
	ldr     r1, [sp, #0x0]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r1, r0, #12
	asr     r0, r4, #11
	lsr     r0, r0, #20
	add     r0, r4, r0
	asr     r0, r0, #12
	cmp     r1, r0
	bne     branch_21d1716
	mov     r0, #0x20
	str     r0, [r6, #0x0]
.thumb
branch_21d1716: @ 21d1716 :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x21d171c

.word 0x21d5c80 @ 0x21d171c
.thumb
Function_21d1720: @ 21d1720 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xca
	bl      0x20364f0
	mov     r0, #0x21
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d1732


.align 2, 0


.thumb
Function_21d1734: @ 21d1734 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xca
	bl      0x2036540
	cmp     r0, #0x0
	beq     branch_21d1754
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_21d1750
	mov     r0, #0x22
	str     r0, [r4, #0x0]
	b       branch_21d1754
@ 0x21d1750

.thumb
branch_21d1750: @ 21d1750 :thumb
	mov     r0, #0x23
	str     r0, [r4, #0x0]
.thumb
branch_21d1754: @ 21d1754 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d1758

.thumb
Function_21d1758: @ 21d1758 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x11
	lsl     r0, r0, #4
	ldr     r1, [r5, r0]
	mov     r7, #0x0
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r1, r0, #12
	add     r0, sp, #0x0
	strh    r1, [r0, #0x0]
	str     r7, [r5, #0x20]
	ldr     r0, [r5, #0x30]
	cmp     r0, #0x0
	ble     branch_21d17c6
	mov     r0, #0x2d
	lsl     r0, r0, #4
	mov     r6, r5
	add     r4, r5, r0
	add     r6, #0x20
.thumb
branch_21d1784: @ 21d1784 :thumb
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_21d178e
	bl      ErrorHandling
.thumb
branch_21d178e: @ 21d178e :thumb
	ldr     r1, [r4, #0x1c]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	ldr     r1, [r4, #0x10]
	asr     r0, r0, #12
	lsl     r2, r1, #1
	add     r1, sp, #0x0
	add     r1, r1, r2
	strh    r0, [r1, #0x4]
	ldr     r1, [r4, #0x1c]
	ldr     r2, [r5, #0x30]
	mov     r0, r5
	bl      Function_21d3c08
	cmp     r0, #0x1
	bne     branch_21d17bc
	ldr     r2, [r4, #0xc]
	mov     r1, #0x1
	ldr     r0, [r6, #0x0]
	lsl     r1, r2
	orr     r0, r1
	str     r0, [r6, #0x0]
.thumb
branch_21d17bc: @ 21d17bc :thumb
	ldr     r0, [r5, #0x30]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r4, #0xb0
	cmp     r7, r0
	blt     branch_21d1784
.thumb
branch_21d17c6: @ 21d17c6 :thumb
	ldr     r1, [r5, #0x20]
	add     r0, sp, #0x0
	strh    r1, [r0, #0x2]
	mov     r0, r5
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	add     r2, sp, #0x0
	mov     r3, #0x10
	bl      0x209bebc
	cmp     r0, #0x1
	bne     branch_21d17e4
	mov     r0, #0x24
	str     r0, [r5, #0x0]
.thumb
branch_21d17e4: @ 21d17e4 :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d17ea


.align 2, 0


.thumb
Function_21d17ec: @ 21d17ec :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x40]
	cmp     r0, #0x1
	bne     branch_21d1852
	mov     r0, r5
	add     r0, #0x60
	ldrh    r0, [r0, #0x0]
	mov     r7, r5
	add     r7, #0x60
	lsl     r1, r0, #12
	mov     r0, #0x11
	lsl     r0, r0, #4
	str     r1, [r5, r0]
	ldr     r0, [r5, #0x30]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_21d1836
	mov     r0, #0x2d
	lsl     r0, r0, #4
	add     r4, r5, r0
.thumb
branch_21d1816: @ 21d1816 :thumb
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_21d1820
	bl      ErrorHandling
.thumb
branch_21d1820: @ 21d1820 :thumb
	ldr     r0, [r4, #0x10]
	.hword  0x1c76 @ add r6, r6, #0x1
	lsl     r0, r0, #1
	add     r0, r7, r0
	ldrh    r0, [r0, #0x4]
	lsl     r0, r0, #12
	str     r0, [r4, #0x1c]
	ldr     r0, [r5, #0x30]
	add     r4, #0xb0
	cmp     r6, r0
	blt     branch_21d1816
.thumb
branch_21d1836: @ 21d1836 :thumb
	ldrh    r0, [r7, #0x2]
	str     r0, [r5, #0x20]
	mov     r0, r5
	bl      Function_21d2a68
	mov     r0, r5
	bl      Function_21d2c38
	mov     r0, r5
	bl      Function_21d2df8
	str     r0, [r5, #0x28]
	mov     r0, #0x24
	str     r0, [r5, #0x0]
.thumb
branch_21d1852: @ 21d1852 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21d1856


.align 2, 0


.thumb
Function_21d1858: @ 21d1858 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x28]
	mov     r6, #0x0
	ldr     r4, [r0, #0x10]
	ldr     r0, [r5, #0x30]
	cmp     r0, #0x0
	ble     branch_21d1896
.thumb
branch_21d1868: @ 21d1868 :thumb
	mov     r0, #0xb0
	mul     r0, r4
	add     r1, r5, r0
	mov     r0, #0xb7
	lsl     r0, r0, #2
	ldr     r3, [r1, r0]
	mov     r0, r5
	lsl     r1, r3, #2
	add     r1, r5, r1
	add     r1, #0x98
	ldr     r1, [r1, #0x0]
	mov     r2, r6
	bl      Function_21d2874
	ldr     r7, [r5, #0x30]
	add     r0, r4, #0x1
	mov     r1, r7
	blx     _s32_div_f
	.hword  0x1c76 @ add r6, r6, #0x1
	mov     r4, r1
	cmp     r6, r7
	blt     branch_21d1868
.thumb
branch_21d1896: @ 21d1896 :thumb
	mov     r0, #0x0
	str     r0, [r5, #0xc]
	mov     r1, #0x25
	str     r1, [r5, #0x0]
	pop     {r3-r7,pc}
@ 0x21d18a0

.thumb
Function_21d18a0: @ 21d18a0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0xc]
	cmp     r0, #0x78
	bge     branch_21d18b2
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d18b2

.thumb
branch_21d18b2: @ 21d18b2 :thumb
	mov     r4, #0x0
	str     r4, [r5, #0xc]
	ldr     r0, [r5, #0x30]
	cmp     r0, #0x0
	ble     branch_21d18cc
.thumb
branch_21d18bc: @ 21d18bc :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_21d28a0
	ldr     r0, [r5, #0x30]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r0
	blt     branch_21d18bc
.thumb
branch_21d18cc: @ 21d18cc :thumb
	ldr     r2, [r5, #0x28]
	mov     r0, r5
	ldr     r2, [r2, #0xc]
	mov     r1, #0x2
	lsl     r2, r2, #2
	add     r2, r5, r2
	add     r2, #0x84
	ldr     r2, [r2, #0x0]
	bl      Function_21d268c
	ldr     r0, [pc, #0xc] @ 0x21d18f0, (=0x486)
	bl      0x2006150
	mov     r0, #0x26
	str     r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d18ee


.align 2


.word 0x486 @ 0x21d18f0
.thumb
Function_21d18f4: @ 21d18f4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x78
	bge     branch_21d1904
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	b       branch_21d1914
@ 0x21d1904

.thumb
branch_21d1904: @ 21d1904 :thumb
	bl      0x20061e4
	cmp     r0, #0x0
	bne     branch_21d1914
	mov     r0, #0x0
	str     r0, [r4, #0xc]
	mov     r0, #0x27
	str     r0, [r4, #0x0]
.thumb
branch_21d1914: @ 21d1914 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d1918

.thumb
Function_21d1918: @ 21d1918 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      Function_21d38f8
	ldr     r0, [r5, #0x28]
	ldr     r2, [r5, #0x20]
	ldr     r0, [r0, #0xc]
	mov     r1, #0x1
	lsl     r1, r0
	mov     r0, r2
	tst     r0, r1
	bne     branch_21d1938
	mov     r0, #0x2b
	str     r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21d1938

.thumb
branch_21d1938: @ 21d1938 :thumb
	ldr     r0, [r5, #0x30]
	lsl     r6, r0, #3
	ldr     r0, [pc, #0x60] @ 0x21d19a0, (=0x21d5be4)
	ldr     r4, [r0, r6]
	ldr     r0, [pc, #0x60] @ 0x21d19a4, (=0x21d5be8)
	ldr     r7, [r0, r6]
	bl      PRNG
	sub     r1, r7, r4
	.hword  0x1c49 @ add r1, r1, #0x1
	blx     _u32_div_f
	ldr     r0, [pc, #0x4c] @ 0x21d19a0, (=0x21d5be4)
	add     r4, r4, r1
	ldr     r0, [r0, r6]
	cmp     r4, r0
	bcs     branch_21d195e
	mov     r4, r0
	b       branch_21d1964
@ 0x21d195e

.thumb
branch_21d195e: @ 21d195e :thumb
	cmp     r4, r7
	bls     branch_21d1964
	mov     r4, r7
.thumb
branch_21d1964: @ 21d1964 :thumb
	mov     r0, r5
	mov     r1, #0x3
	mov     r2, r4
	bl      Function_21d2714
	mov     r0, r5
	add     r0, #0xcc
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x1c]
	bl      0x207d990
	lsl     r1, r4, #16
	lsr     r1, r1, #16
	mov     r2, #0x1
	mov     r3, #0x5f
	bl      0x207d570
	mov     r4, r0
	ldr     r0, [pc, #0x1c] @ 0x21d19a8, (=0x486)
	bl      0x2006150
	cmp     r4, #0x1
	bne     branch_21d1996
	mov     r0, #0x28
	b       branch_21d1998
@ 0x21d1996

.thumb
branch_21d1996: @ 21d1996 :thumb
	mov     r0, #0x29
.thumb
branch_21d1998: @ 21d1998 :thumb
	str     r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21d199e


.align 2


.word 0x21d5be4 @ 0x21d19a0
.word 0x21d5be8 @ 0x21d19a4
.word 0x486 @ 0x21d19a8
.thumb
Function_21d19ac: @ 21d19ac :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x78
	bge     branch_21d19bc
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	b       branch_21d19cc
@ 0x21d19bc

.thumb
branch_21d19bc: @ 21d19bc :thumb
	bl      0x20061e4
	cmp     r0, #0x0
	bne     branch_21d19cc
	mov     r0, #0x0
	str     r0, [r4, #0xc]
	mov     r0, #0x2b
	str     r0, [r4, #0x0]
.thumb
branch_21d19cc: @ 21d19cc :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d19d0

.thumb
Function_21d19d0: @ 21d19d0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x78
	bge     branch_21d19e0
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	b       branch_21d19f8
@ 0x21d19e0

.thumb
branch_21d19e0: @ 21d19e0 :thumb
	bl      0x20061e4
	cmp     r0, #0x0
	bne     branch_21d19f8
	mov     r0, #0x0
	str     r0, [r4, #0xc]
	mov     r0, #0x28
	str     r0, [r4, #0x0]
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_21d2634
.thumb
branch_21d19f8: @ 21d19f8 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d19fc

.thumb
Function_21d19fc: @ 21d19fc :thumb
	ldr     r1, [r0, #0xc]
	cmp     r1, #0x78
	bge     branch_21d1a08
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0xc]
	b       branch_21d1a10
@ 0x21d1a08

.thumb
branch_21d1a08: @ 21d1a08 :thumb
	mov     r1, #0x0
	str     r1, [r0, #0xc]
	mov     r1, #0x2b
	str     r1, [r0, #0x0]
.thumb
branch_21d1a10: @ 21d1a10 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21d1a14

.thumb
Function_21d1a14: @ 21d1a14 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x5f
	mov     r1, #0x11
	bl      0x202c244
	mov     r1, r0
	mov     r0, r4
	add     r0, #0xcc
	ldr     r0, [r0, #0x0]
	mov     r2, #0x4
	ldr     r0, [r0, #0x2c]
	bl      0x202b758
	mov     r0, r4
	add     r0, #0xcc
	ldr     r0, [r0, #0x0]
	mov     r1, #0x77
	ldr     r0, [r0, #0x28]
	bl      0x202cf28
	mov     r0, r4
	add     r0, #0xcc
	ldr     r0, [r0, #0x0]
	mov     r1, #0x2d
	ldr     r0, [r0, #0x28]
	bl      0x202cfec
	mov     r0, r4
	mov     r1, #0xb
	bl      Function_21d2634
	mov     r0, #0xca
	bl      0x20364f0
	ldr     r0, [pc, #0xc] @ 0x21d1a68, (=0x21bf6dc)
	mov     r1, #0x1
	strb    r1, [r0, #0x8]
	mov     r0, #0x2c
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d1a68

.word 0x21bf6dc @ 0x21d1a68
.thumb
Function_21d1a6c: @ 21d1a6c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xca
	bl      0x2036540
	cmp     r0, #0x0
	beq     branch_21d1a9c
	ldr     r1, [r4, #0x28]
	mov     r0, r4
	ldr     r1, [r1, #0xc]
	bl      Function_21d3b70
	add     r0, r4, #0x4
	bl      0x2038ed4
	ldr     r0, [pc, #0x14] @ 0x21d1aa0, (=0xca8)
	mov     r1, #0xa
	add     r0, r4, r0
	bl      0x200e7fc
	ldr     r1, [pc, #0xc] @ 0x21d1aa4, (=0xdc8)
	str     r0, [r4, r1]
	mov     r0, #0x2d
	str     r0, [r4, #0x0]
.thumb
branch_21d1a9c: @ 21d1a9c :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d1aa0

.word 0xca8 @ 0x21d1aa0
.word 0xdc8 @ 0x21d1aa4
.thumb
Function_21d1aa8: @ 21d1aa8 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0xcc
	ldr     r0, [r0, #0x0]
	mov     r1, #0x2
	ldr     r0, [r0, #0x1c]
	add     r2, r4, #0x4
	bl      0x2038edc
	cmp     r0, #0x0
	beq     branch_21d1ad0
	ldr     r0, [pc, #0x14] @ 0x21d1ad4, (=0x21bf6dc)
	mov     r1, #0x0
	strb    r1, [r0, #0x8]
	ldr     r0, [pc, #0x10] @ 0x21d1ad8, (=0xdc8)
	ldr     r0, [r4, r0]
	bl      0x200eba0
	mov     r0, #0x30
	str     r0, [r4, #0x0]
.thumb
branch_21d1ad0: @ 21d1ad0 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d1ad4

.word 0x21bf6dc @ 0x21d1ad4
.word 0xdc8 @ 0x21d1ad8
.thumb
Function_21d1adc: @ 21d1adc :thumb
	push    {r4,lr}
	mov     r1, #0xc
	mov     r4, r0
	bl      Function_21d2634
	mov     r0, #0x2f
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d1aee


.align 2, 0


.thumb
Function_21d1af0: @ 21d1af0 :thumb
	ldr     r1, [r0, #0xc]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0xc]
	cmp     r1, #0x78
	blt     branch_21d1b06
	mov     r1, #0x0
	str     r1, [r0, #0xc]
	mov     r1, #0x30
	str     r1, [r0, #0x0]
	mov     r0, #0x1
	bx      lr
@ 0x21d1b06

.thumb
branch_21d1b06: @ 21d1b06 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21d1b0a


.align 2, 0


.thumb
Function_21d1b0c: @ 21d1b0c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x0
	bne     branch_21d1b1c
	mov     r0, #0xca
	bl      0x20364f0
.thumb
branch_21d1b1c: @ 21d1b1c :thumb
	mov     r0, r4
	mov     r1, #0xa
	bl      Function_21d2634
	mov     r0, #0x31
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d1b2c

.thumb
Function_21d1b2c: @ 21d1b2c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x0
	bne     branch_21d1b58
	mov     r0, #0xca
	bl      0x2036540
	cmp     r0, #0x0
	beq     branch_21d1b86
	mov     r0, #0x0
	mov     r1, r0
	bl      0x20388f4
	mov     r0, #0x1
	bl      0x2037b58
	bl      0x2036ac4
	mov     r0, #0x32
	str     r0, [r4, #0x0]
	b       branch_21d1b86
@ 0x21d1b58

.thumb
branch_21d1b58: @ 21d1b58 :thumb
	ldr     r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	cmp     r0, #0x78
	blt     branch_21d1b86
	mov     r0, #0x0
	mov     r1, r4
	str     r0, [r4, #0xc]
	add     r1, #0xd0
	ldr     r1, [r1, #0x0]
	ldr     r1, [r1, #0x3c]
	cmp     r1, #0x0
	bne     branch_21d1b82
	mov     r1, r0
	bl      0x20388f4
	mov     r0, #0x1
	bl      0x2037b58
	bl      0x2036ac4
.thumb
branch_21d1b82: @ 21d1b82 :thumb
	mov     r0, #0x32
	str     r0, [r4, #0x0]
.thumb
branch_21d1b86: @ 21d1b86 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d1b8a


.align 2, 0


.thumb
Function_21d1b8c: @ 21d1b8c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x2035e18
	cmp     r0, #0x1
	bgt     branch_21d1ba0
	mov     r0, #0x33
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d1ba0

.thumb
branch_21d1ba0: @ 21d1ba0 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d1ba4

.thumb
Function_21d1ba4: @ 21d1ba4 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r0, #0x8
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x5f
	str     r0, [sp, #0x8]
	mov     r0, #0x2
	mov     r2, r1
	mov     r3, r1
	bl      0x200f174
	ldr     r5, [r4, #0x1c]
	bl      0x20041fc
	cmp     r5, r0
	beq     branch_21d1bd8
	lsl     r1, r5, #16
	mov     r0, #0x4
	lsr     r1, r1, #16
	mov     r2, #0x1
	bl      0x2004550
.thumb
branch_21d1bd8: @ 21d1bd8 :thumb
	mov     r0, #0x34
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d1be2


.align 2, 0


.thumb
Function_21d1be4: @ 21d1be4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_21d1bf8
	mov     r0, #0x35
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d1bf8

.thumb
branch_21d1bf8: @ 21d1bf8 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d1bfc

.thumb
Function_21d1bfc: @ 21d1bfc :thumb
	mov     r0, #0x2
	bx      lr
@ 0x21d1c00

.thumb
Function_21d1c00: @ 21d1c00 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x201dcac
	bl      0x200c800
	ldr     r0, [pc, #0x10] @ 0x21d1c20, (=0xd9c)
	ldr     r0, [r4, r0]
	bl      0x2003694
	ldr     r0, [pc, #0xc] @ 0x21d1c24, (=0xd84)
	ldr     r0, [r4, r0]
	bl      0x201c2b8
	pop     {r4,pc}
@ 0x21d1c1e


.align 2


.word 0xd9c @ 0x21d1c20
.word 0xd84 @ 0x21d1c24
.thumb
Function_21d1c28: @ 21d1c28 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d1cf0
	mov     r0, r4
	bl      Function_21d1e1c
	mov     r0, r4
	bl      Function_21d28c4
	mov     r0, r4
	bl      Function_21d1ec8
	mov     r0, r4
	bl      Function_21d22b0
	mov     r0, r4
	bl      Function_21d2368
	mov     r0, r4
	bl      Function_21d2004
	mov     r0, r4
	bl      Function_21d24f8
	mov     r0, r4
	bl      Function_21d2408
	mov     r0, r4
	bl      Function_21d1d10
	pop     {r4,pc}
@ 0x21d1c68

.thumb
Function_21d1c68: @ 21d1c68 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d1dc8
	mov     r0, r4
	bl      Function_21d24c0
	mov     r0, r4
	bl      Function_21d25e8
	mov     r0, r4
	bl      Function_21d2204
	mov     r0, r4
	bl      Function_21d2308
	mov     r0, r4
	bl      Function_21d293c
	pop     {r4,pc}
@ 0x21d1c90

.thumb
Function_21d1c90: @ 21d1c90 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Call_G3X_Reset
	bl      0x20203ec
	mov     r0, #0x0
	ldr     r2, [pc, #0x44] @ 0x21d1ce4, (=0xfffff000)
	mov     r1, r0
	mov     r3, r0
	blx     0x20af51c
	ldr     r1, [pc, #0x3c] @ 0x21d1ce8, (=0x7fff)
	mov     r0, #0x0
	blx     0x20af558
	ldr     r0, [pc, #0x34] @ 0x21d1ce8, (=0x7fff)
	mov     r2, #0x0
	mov     r1, r0
	blx     0x20af56c
	ldr     r0, [pc, #0x2c] @ 0x21d1ce8, (=0x7fff)
	mov     r2, #0x0
	mov     r1, r0
	blx     0x20af590
	mov     r0, r4
	bl      Function_21d2ac8
	mov     r0, r4
	bl      Function_21d2ccc
	mov     r0, #0x0
	mov     r1, r0
	bl      0x20241bc
	ldr     r0, [pc, #0x10] @ 0x21d1cec, (=0xd98)
	ldr     r0, [r4, r0]
	bl      0x200c7ec
	pop     {r4,pc}
@ 0x21d1ce2


.align 2


.word 0xfffff000 @ 0x21d1ce4
.word 0x7fff @ 0x21d1ce8
.word 0xd98 @ 0x21d1cec
.thumb
Function_21d1cf0: @ 21d1cf0 :thumb
	push    {r4,lr}
	add     sp, #-0x28
	ldr     r4, [pc, #0x14] @ 0x21d1d0c, (=0x21d5bbc)
	add     r3, sp, #0x0
	mov     r2, #0x5
.thumb
branch_21d1cfa: @ 21d1cfa :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d1cfa
	add     r0, sp, #0x0
	bl      0x201fe94
	add     sp, #0x28
	pop     {r4,pc}
@ 0x21d1d0c

.word 0x21d5bbc @ 0x21d1d0c
.thumb
Function_21d1d10: @ 21d1d10 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff0c
	mov     r0, #0x2
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x4
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x8
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x1
	mov     r1, #0x0
	bl      0x201ff74
	mov     r0, #0x2
	mov     r1, #0x0
	bl      0x201ff74
	mov     r0, #0x4
	mov     r1, #0x1
	bl      0x201ff74
	mov     r0, #0x8
	mov     r1, #0x1
	bl      0x201ff74
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff74
	ldr     r0, [pc, #0x58] @ 0x21d1dc0, (=0x4000008)
	mov     r4, #0x3
	ldrh    r1, [r0, #0x0]
	mov     r2, #0x1
	mov     r3, #0x2
	bic     r1, r4
	orr     r1, r2
	strh    r1, [r0, #0x0]
	ldrh    r1, [r0, #0x2]
	mov     r5, #0x3
	bic     r1, r4
	strh    r1, [r0, #0x2]
	ldrh    r1, [r0, #0x4]
	bic     r1, r4
	orr     r1, r3
	strh    r1, [r0, #0x4]
	ldrh    r1, [r0, #0x6]
	bic     r1, r4
	orr     r1, r5
	strh    r1, [r0, #0x6]
	ldr     r1, [pc, #0x34] @ 0x21d1dc4, (=0x4001008)
	ldrh    r6, [r1, #0x0]
	bic     r6, r4
	strh    r6, [r1, #0x0]
	ldrh    r6, [r1, #0x2]
	bic     r6, r4
	orr     r2, r6
	strh    r2, [r1, #0x2]
	ldrh    r2, [r1, #0x4]
	bic     r2, r4
	orr     r2, r3
	strh    r2, [r1, #0x4]
	ldrh    r2, [r1, #0x6]
	bic     r2, r4
	orr     r2, r5
	strh    r2, [r1, #0x6]
	mov     r1, #0xa
	str     r1, [sp, #0x0]
	add     r0, #0x48
	mov     r1, #0x4
	mov     r2, #0x28
	mov     r3, #0xb
	blx     G2x_SetBlendAlpha_
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x21d1dc0

.word 0x4000008 @ 0x21d1dc0
.word 0x4001008 @ 0x21d1dc4
.thumb
Function_21d1dc8: @ 21d1dc8 :thumb
	push    {r3,lr}
	mov     r0, #0x1
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x2
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x4
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x8
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x10
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x1
	mov     r1, #0x0
	bl      0x201ff74
	mov     r0, #0x2
	mov     r1, #0x0
	bl      0x201ff74
	mov     r0, #0x4
	mov     r1, #0x0
	bl      0x201ff74
	mov     r0, #0x8
	mov     r1, #0x0
	bl      0x201ff74
	mov     r0, #0x10
	mov     r1, #0x0
	bl      0x201ff74
	pop     {r3,pc}
@ 0x21d1e1c

.thumb
Function_21d1e1c: @ 21d1e1c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	blx     0x20b28cc
	blx     0x20bfb4c
	ldr     r0, [pc, #0x80] @ 0x21d1eac, (=0x4000060)
	ldr     r1, [pc, #0x80] @ 0x21d1eb0, (=0xffffcffd)
	ldrh    r2, [r0, #0x0]
	and     r2, r1
	strh    r2, [r0, #0x0]
	ldrh    r3, [r0, #0x0]
	add     r2, r1, #0x2
	and     r3, r2
	mov     r2, #0x10
	orr     r2, r3
	strh    r2, [r0, #0x0]
	ldrh    r3, [r0, #0x0]
	ldr     r2, [pc, #0x70] @ 0x21d1eb4, (=0xcffb)
	and     r2, r3
	strh    r2, [r0, #0x0]
	add     r2, r1, #0x2
	ldrh    r3, [r0, #0x0]
	.hword  0x1c89 @ add r1, r1, #0x2
	and     r3, r2
	mov     r2, #0x8
	orr     r2, r3
	strh    r2, [r0, #0x0]
	ldrh    r2, [r0, #0x0]
	mov     r3, r4
	and     r2, r1
	mov     r1, #0x20
	orr     r1, r2
	strh    r1, [r0, #0x0]
	mov     r0, #0xda
	ldr     r1, [pc, #0x50] @ 0x21d1eb8, (=0x1084)
	mov     r2, #0x0
	lsl     r0, r0, #4
.thumb
branch_21d1e6a: @ 21d1e6a :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	strh    r1, [r3, r0]
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r2, #0x8
	blt     branch_21d1e6a
	mov     r0, #0xda
	lsl     r0, r0, #4
	add     r0, r4, r0
	blx     0x20bfd2c
	ldr     r0, [pc, #0x3c] @ 0x21d1ebc, (=0x7fff)
	mov     r1, #0x0
	mov     r2, r0
	mov     r3, #0x3f
	str     r1, [sp, #0x0]
	blx     0x20bfd58
	ldr     r1, [pc, #0x30] @ 0x21d1ec0, (=0x4000540)
	mov     r0, #0x2
	str     r0, [r1, #0x0]
	ldr     r0, [pc, #0x30] @ 0x21d1ec4, (=0xbfff0000)
	str     r0, [r1, #0x40]
	mov     r0, #0x1
	mov     r1, r0
	blx     0x20a5a94
	mov     r0, #0x1
	lsl     r0, r0, #14
	mov     r1, #0x1
	blx     0x20a5d88
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d1eac

.word 0x4000060 @ 0x21d1eac
.word 0xffffcffd @ 0x21d1eb0
.word 0xcffb @ 0x21d1eb4
.word 0x1084 @ 0x21d1eb8
.word 0x7fff @ 0x21d1ebc
.word 0x4000540 @ 0x21d1ec0
.word 0xbfff0000 @ 0x21d1ec4
.thumb
Function_21d1ec8: @ 21d1ec8 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x9c
	mov     r4, r0
	mov     r0, #0x5f
	bl      0x2018340
	ldr     r1, [pc, #0x10c] @ 0x21d1fe4, (=0xd84)
	ldr     r2, [pc, #0x110] @ 0x21d1fe8, (=0x4000304)
	str     r0, [r4, r1]
	ldrh    r1, [r2, #0x0]
	lsr     r0, r2, #11
	ldr     r5, [pc, #0x10c] @ 0x21d1fec, (=0x21d59f4)
	orr     r0, r1
	strh    r0, [r2, #0x0]
	add     r3, sp, #0x8c
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      0x2018368
	ldr     r5, [pc, #0xf8] @ 0x21d1ff0, (=0x21d5ac8)
	add     r3, sp, #0x70
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
	ldr     r0, [pc, #0xd4] @ 0x21d1fe4, (=0xd84)
	mov     r3, #0x0
	ldr     r0, [r4, r0]
	bl      0x20183c4
	ldr     r0, [pc, #0xc8] @ 0x21d1fe4, (=0xd84)
	mov     r1, #0x1
	ldr     r0, [r4, r0]
	bl      0x2019ebc
	mov     r0, #0x1
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x5f
	bl      0x2019690
	ldr     r5, [pc, #0xc4] @ 0x21d1ff4, (=0x21d5ae4)
	add     r3, sp, #0x54
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
	ldr     r0, [pc, #0x9c] @ 0x21d1fe4, (=0xd84)
	mov     r3, #0x0
	ldr     r0, [r4, r0]
	bl      0x20183c4
	ldr     r0, [pc, #0x90] @ 0x21d1fe4, (=0xd84)
	mov     r1, #0x2
	ldr     r0, [r4, r0]
	bl      0x2019ebc
	ldr     r5, [pc, #0x9c] @ 0x21d1ff8, (=0x21d5b00)
	add     r3, sp, #0x38
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
	ldr     r0, [pc, #0x70] @ 0x21d1fe4, (=0xd84)
	mov     r3, #0x0
	ldr     r0, [r4, r0]
	bl      0x20183c4
	ldr     r0, [pc, #0x64] @ 0x21d1fe4, (=0xd84)
	mov     r1, #0x3
	ldr     r0, [r4, r0]
	bl      0x2019ebc
	ldr     r5, [pc, #0x74] @ 0x21d1ffc, (=0x21d5b1c)
	add     r3, sp, #0x1c
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x6
	str     r0, [r3, #0x0]
	ldr     r0, [pc, #0x44] @ 0x21d1fe4, (=0xd84)
	mov     r3, #0x0
	ldr     r0, [r4, r0]
	bl      0x20183c4
	ldr     r0, [pc, #0x38] @ 0x21d1fe4, (=0xd84)
	mov     r1, #0x6
	ldr     r0, [r4, r0]
	bl      0x2019ebc
	ldr     r5, [pc, #0x4c] @ 0x21d2000, (=0x21d5b38)
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
	ldr     r0, [pc, #0x18] @ 0x21d1fe4, (=0xd84)
	mov     r3, #0x0
	ldr     r0, [r4, r0]
	bl      0x20183c4
	ldr     r0, [pc, #0xc] @ 0x21d1fe4, (=0xd84)
	mov     r1, #0x7
	ldr     r0, [r4, r0]
	bl      0x2019ebc
	add     sp, #0x9c
	pop     {r4,r5,pc}
@ 0x21d1fe2


.align 2


.word 0xd84 @ 0x21d1fe4
.word 0x4000304 @ 0x21d1fe8
.word 0x21d59f4 @ 0x21d1fec
.word 0x21d5ac8 @ 0x21d1ff0
.word 0x21d5ae4 @ 0x21d1ff4
.word 0x21d5b00 @ 0x21d1ff8
.word 0x21d5b1c @ 0x21d1ffc
.word 0x21d5b38 @ 0x21d2000
.thumb
Function_21d2004: @ 21d2004 :thumb
	push    {r3-r5,lr}
	mov     r1, #0x11
	mov     r2, #0x0
	mov     r4, r0
	bl      Function_21d3a2c
	mov     r1, #0xd9
	lsl     r1, r1, #4
	add     r1, r4, r1
	mov     r5, r0
	blx     0x20a71b0
	mov     r0, #0x40
	mov     r2, #0x0
	ldr     r1, [pc, #0x1cc] @ 0x21d21f0, (=0xd9c)
	str     r0, [sp, #0x0]
	ldr     r0, [r4, r1]
	sub     r1, #0xc
	ldr     r1, [r4, r1]
	mov     r3, r2
	ldr     r1, [r1, #0xc]
	bl      0x2002fbc
	mov     r0, r5
	bl      free
	mov     r0, r4
	mov     r1, #0x14
	mov     r2, #0x0
	bl      Function_21d3a2c
	mov     r1, #0xd9
	lsl     r1, r1, #4
	add     r1, r4, r1
	mov     r5, r0
	blx     0x20a71b0
	mov     r0, #0x40
	ldr     r1, [pc, #0x19c] @ 0x21d21f0, (=0xd9c)
	str     r0, [sp, #0x0]
	ldr     r0, [r4, r1]
	sub     r1, #0xc
	ldr     r1, [r4, r1]
	mov     r2, #0x1
	ldr     r1, [r1, #0xc]
	mov     r3, #0x0
	bl      0x2002fbc
	mov     r0, r5
	bl      free
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x180] @ 0x21d21f0, (=0xd9c)
	ldr     r2, [pc, #0x180] @ 0x21d21f4, (=0xffff)
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	mov     r3, #0x8
	bl      0x2003a2c
	mov     r0, r4
	mov     r1, #0x10
	mov     r2, #0x0
	bl      Function_21d3a2c
	ldr     r1, [pc, #0x170] @ 0x21d21f8, (=0xd8c)
	mov     r5, r0
	add     r1, r4, r1
	blx     0x20a7118
	ldr     r0, [pc, #0x164] @ 0x21d21f8, (=0xd8c)
	mov     r1, #0x0
	ldr     r3, [r4, r0]
	sub     r0, #0x8
	str     r1, [sp, #0x0]
	ldr     r2, [r3, #0x14]
	ldr     r0, [r4, r0]
	ldr     r3, [r3, #0x10]
	mov     r1, #0x3
	bl      0x201958c
	mov     r0, r5
	bl      free
	mov     r0, r4
	mov     r1, #0x16
	mov     r2, #0x0
	bl      Function_21d3a2c
	mov     r5, r0
	ldr     r1, [pc, #0x13c] @ 0x21d21f8, (=0xd8c)
	add     r1, r4, r1
	blx     0x20a7118
	ldr     r0, [pc, #0x134] @ 0x21d21f8, (=0xd8c)
	mov     r1, #0x0
	ldr     r3, [r4, r0]
	sub     r0, #0x8
	str     r1, [sp, #0x0]
	ldr     r2, [r3, #0x14]
	ldr     r0, [r4, r0]
	ldr     r3, [r3, #0x10]
	mov     r1, #0x6
	bl      0x201958c
	mov     r0, r5
	bl      free
	mov     r0, r4
	mov     r1, #0x15
	mov     r2, #0x0
	bl      Function_21d3a2c
	ldr     r1, [pc, #0x110] @ 0x21d21f8, (=0xd8c)
	mov     r5, r0
	add     r1, r4, r1
	blx     0x20a7118
	ldr     r0, [pc, #0x104] @ 0x21d21f8, (=0xd8c)
	mov     r1, #0x0
	ldr     r3, [r4, r0]
	sub     r0, #0x8
	str     r1, [sp, #0x0]
	ldr     r2, [r3, #0x14]
	ldr     r0, [r4, r0]
	ldr     r3, [r3, #0x10]
	mov     r1, #0x7
	bl      0x201958c
	mov     r0, r5
	bl      free
	mov     r0, r4
	mov     r1, #0x13
	mov     r2, #0x0
	bl      Function_21d3a2c
	ldr     r1, [pc, #0xe4] @ 0x21d21fc, (=0xd88)
	mov     r5, r0
	add     r1, r4, r1
	blx     0x20a7248
	ldr     r0, [pc, #0xd8] @ 0x21d21fc, (=0xd88)
	mov     r1, #0x2
	ldr     r3, [r4, r0]
	.hword  0x1f00 @ sub r0, r0, #0x4
	mov     r2, r3
	ldr     r0, [r4, r0]
	ldr     r3, [r3, #0x8]
	add     r2, #0xc
	bl      0x2019574
	ldr     r0, [pc, #0xc8] @ 0x21d2200, (=0xd84)
	mov     r1, #0x2
	ldr     r0, [r4, r0]
	bl      0x2019448
	mov     r0, r5
	bl      free
	mov     r0, r4
	mov     r1, #0x12
	mov     r2, #0x0
	bl      Function_21d3a2c
	ldr     r1, [pc, #0xac] @ 0x21d21fc, (=0xd88)
	mov     r5, r0
	add     r1, r4, r1
	blx     0x20a7248
	ldr     r0, [pc, #0xa0] @ 0x21d21fc, (=0xd88)
	mov     r1, #0x3
	ldr     r3, [r4, r0]
	.hword  0x1f00 @ sub r0, r0, #0x4
	mov     r2, r3
	ldr     r0, [r4, r0]
	ldr     r3, [r3, #0x8]
	add     r2, #0xc
	bl      0x2019574
	ldr     r0, [pc, #0x90] @ 0x21d2200, (=0xd84)
	mov     r1, #0x3
	ldr     r0, [r4, r0]
	bl      0x2019448
	mov     r0, r5
	bl      free
	mov     r0, r4
	mov     r1, #0x18
	mov     r2, #0x0
	bl      Function_21d3a2c
	ldr     r1, [pc, #0x74] @ 0x21d21fc, (=0xd88)
	mov     r5, r0
	add     r1, r4, r1
	blx     0x20a7248
	ldr     r0, [pc, #0x68] @ 0x21d21fc, (=0xd88)
	mov     r1, #0x6
	ldr     r3, [r4, r0]
	.hword  0x1f00 @ sub r0, r0, #0x4
	mov     r2, r3
	ldr     r0, [r4, r0]
	ldr     r3, [r3, #0x8]
	add     r2, #0xc
	bl      0x2019574
	ldr     r0, [pc, #0x58] @ 0x21d2200, (=0xd84)
	mov     r1, #0x6
	ldr     r0, [r4, r0]
	bl      0x2019448
	mov     r0, r5
	bl      free
	mov     r0, r4
	mov     r1, #0x17
	mov     r2, #0x0
	bl      Function_21d3a2c
	ldr     r1, [pc, #0x3c] @ 0x21d21fc, (=0xd88)
	mov     r5, r0
	add     r1, r4, r1
	blx     0x20a7248
	ldr     r0, [pc, #0x30] @ 0x21d21fc, (=0xd88)
	mov     r1, #0x7
	ldr     r3, [r4, r0]
	.hword  0x1f00 @ sub r0, r0, #0x4
	mov     r2, r3
	ldr     r0, [r4, r0]
	ldr     r3, [r3, #0x8]
	add     r2, #0xc
	bl      0x2019574
	ldr     r0, [pc, #0x20] @ 0x21d2200, (=0xd84)
	mov     r1, #0x7
	ldr     r0, [r4, r0]
	bl      0x2019448
	mov     r0, r5
	bl      free
	pop     {r3-r5,pc}
@ 0x21d21ee


.align 2


.word 0xd9c @ 0x21d21f0
.word 0xffff @ 0x21d21f4
.word 0xd8c @ 0x21d21f8
.word 0xd88 @ 0x21d21fc
.word 0xd84 @ 0x21d2200
.thumb
Function_21d2204: @ 21d2204 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x38] @ 0x21d2244, (=0xd84)
	mov     r1, #0x1
	ldr     r0, [r4, r0]
	bl      0x2019044
	ldr     r0, [pc, #0x30] @ 0x21d2244, (=0xd84)
	mov     r1, #0x2
	ldr     r0, [r4, r0]
	bl      0x2019044
	ldr     r0, [pc, #0x24] @ 0x21d2244, (=0xd84)
	mov     r1, #0x3
	ldr     r0, [r4, r0]
	bl      0x2019044
	ldr     r0, [pc, #0x1c] @ 0x21d2244, (=0xd84)
	mov     r1, #0x6
	ldr     r0, [r4, r0]
	bl      0x2019044
	ldr     r0, [pc, #0x10] @ 0x21d2244, (=0xd84)
	mov     r1, #0x7
	ldr     r0, [r4, r0]
	bl      0x2019044
	ldr     r0, [pc, #0x8] @ 0x21d2244, (=0xd84)
	ldr     r0, [r4, r0]
	bl      free
	pop     {r4,pc}
@ 0x21d2244

.word 0xd84 @ 0x21d2244
.thumb
Function_21d2248: @ 21d2248 :thumb
	push    {r3-r5,lr}
	mov     r2, #0x0
	mov     r5, r0
	bl      Function_21d3a2c
	ldr     r1, [pc, #0x30] @ 0x21d2284, (=0xd88)
	mov     r4, r0
	add     r1, r5, r1
	blx     0x20a7248
	ldr     r0, [pc, #0x24] @ 0x21d2284, (=0xd88)
	mov     r1, #0x6
	ldr     r3, [r5, r0]
	.hword  0x1f00 @ sub r0, r0, #0x4
	mov     r2, r3
	ldr     r0, [r5, r0]
	ldr     r3, [r3, #0x8]
	add     r2, #0xc
	bl      0x2019574
	ldr     r0, [pc, #0x14] @ 0x21d2288, (=0xd84)
	mov     r1, #0x6
	ldr     r0, [r5, r0]
	bl      0x2019448
	mov     r0, r4
	bl      free
	pop     {r3-r5,pc}
@ 0x21d2282


.align 2


.word 0xd88 @ 0x21d2284
.word 0xd84 @ 0x21d2288
.thumb
Function_21d228c: @ 21d228c :thumb
	ldr     r3, [pc, #0x4] @ 0x21d2294, (=0x21d2249)
	mov     r1, #0x1a
	bx      r3
@ 0x21d2292


.align 2


.word 0x21d2249 @ 0x21d2294
.thumb
Function_21d2298: @ 21d2298 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d22a0, (=0x21d2249)
	mov     r1, #0x18
	bx      r3
@ 0x21d229e


.align 2


.word 0x21d2249 @ 0x21d22a0
.thumb
Function_21d22a4: @ 21d22a4 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d22ac, (=0x21d2249)
	mov     r1, #0x19
	bx      r3
@ 0x21d22aa


.align 2


.word 0x21d2249 @ 0x21d22ac
.thumb
Function_21d22b0: @ 21d22b0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x5f
	bl      0x2002f38
	ldr     r1, [pc, #0x48] @ 0x21d2304, (=0xd9c)
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	mov     r1, #0x1
	bl      0x2003858
	ldr     r0, [pc, #0x3c] @ 0x21d2304, (=0xd9c)
	mov     r2, #0x2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	lsl     r2, r2, #8
	mov     r3, #0x5f
	bl      Function_2002f70
	ldr     r0, [pc, #0x2c] @ 0x21d2304, (=0xd9c)
	mov     r1, #0x2
	ldr     r0, [r4, r0]
	lsl     r2, r1, #8
	mov     r3, #0x5f
	bl      Function_2002f70
	ldr     r0, [pc, #0x1c] @ 0x21d2304, (=0xd9c)
	mov     r1, #0x1
	ldr     r0, [r4, r0]
	lsl     r2, r1, #9
	mov     r3, #0x5f
	bl      Function_2002f70
	ldr     r0, [pc, #0x10] @ 0x21d2304, (=0xd9c)
	mov     r2, #0x2
	ldr     r0, [r4, r0]
	mov     r1, #0x3
	lsl     r2, r2, #8
	mov     r3, #0x5f
	bl      Function_2002f70
	pop     {r4,pc}
@ 0x21d2304

.word 0xd9c @ 0x21d2304
.thumb
Function_21d2308: @ 21d2308 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x30] @ 0x21d2340, (=0xd9c)
	mov     r1, #0x0
	ldr     r0, [r4, r0]
	bl      0x2002fa0
	ldr     r0, [pc, #0x28] @ 0x21d2340, (=0xd9c)
	mov     r1, #0x2
	ldr     r0, [r4, r0]
	bl      0x2002fa0
	ldr     r0, [pc, #0x1c] @ 0x21d2340, (=0xd9c)
	mov     r1, #0x1
	ldr     r0, [r4, r0]
	bl      0x2002fa0
	ldr     r0, [pc, #0x14] @ 0x21d2340, (=0xd9c)
	mov     r1, #0x3
	ldr     r0, [r4, r0]
	bl      0x2002fa0
	ldr     r0, [pc, #0x8] @ 0x21d2340, (=0xd9c)
	ldr     r0, [r4, r0]
	bl      0x2002f54
	pop     {r4,pc}
@ 0x21d233e


.align 2


.word 0xd9c @ 0x21d2340
.thumb
Function_21d2344: @ 21d2344 :thumb
	push    {r3,lr}
	mov     r3, r1
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x10] @ 0x21d2360, (=0xd9c)
	lsl     r3, r3, #24
	ldr     r0, [r0, r1]
	ldr     r2, [pc, #0x10] @ 0x21d2364, (=0xffff)
	mov     r1, #0x1
	lsr     r3, r3, #24
	bl      0x2003a2c
	pop     {r3,pc}
@ 0x21d235e


.align 2


.word 0xd9c @ 0x21d2360
.word 0xffff @ 0x21d2364
.thumb
Function_21d2368: @ 21d2368 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4c
	ldr     r3, [pc, #0x84] @ 0x21d23f4, (=0x21d5b74)
	mov     r4, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x2c
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r3, [pc, #0x74] @ 0x21d23f8, (=0x21d5a28)
	add     r2, sp, #0x18
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	mov     r0, #0x5f
	bl      0x200c6e4
	ldr     r1, [pc, #0x60] @ 0x21d23fc, (=0xd94)
	add     r2, sp, #0x18
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	add     r1, sp, #0x2c
	mov     r3, #0x20
	bl      0x200c73c
	ldr     r3, [pc, #0x54] @ 0x21d2400, (=0x21d5a50)
	add     r2, sp, #0x0
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [pc, #0x40] @ 0x21d23fc, (=0xd94)
	ldr     r0, [r4, r0]
	bl      0x200c704
	ldr     r1, [pc, #0x40] @ 0x21d2404, (=0xd98)
	mov     r2, #0xff
	str     r0, [r4, r1]
	.hword  0x1f08 @ sub r0, r1, #0x4
	ldr     r0, [r4, r0]
	ldr     r1, [r4, r1]
	bl      0x200c7c0
	cmp     r0, #0x0
	bne     branch_21d23d8
	bl      ErrorHandling
.thumb
branch_21d23d8: @ 21d23d8 :thumb
	ldr     r1, [pc, #0x20] @ 0x21d23fc, (=0xd94)
	add     r2, sp, #0x0
	ldr     r0, [r4, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r4, r1]
	bl      0x200cb30
	cmp     r0, #0x0
	bne     branch_21d23ee
	bl      ErrorHandling
.thumb
branch_21d23ee: @ 21d23ee :thumb
	add     sp, #0x4c
	pop     {r3,r4,pc}
@ 0x21d23f2


.align 2


.word 0x21d5b74 @ 0x21d23f4
.word 0x21d5a28 @ 0x21d23f8
.word 0xd94 @ 0x21d23fc
.word 0x21d5a50 @ 0x21d2400
.word 0xd98 @ 0x21d2404
.thumb
Function_21d2408: @ 21d2408 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	ldr     r2, [pc, #0xac] @ 0x21d24bc, (=0xd94)
	add     r1, r2, #0x4
	ldr     r6, [r0, r2]
	add     r2, #0x8
	ldr     r5, [r0, r1]
	ldr     r7, [r0, r2]
	mov     r0, #0x1
	bl      0x2009704
	mov     r0, #0x7a
	mov     r1, #0x5f
	bl      0x2006c24
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	mov     r3, #0xe
	bl      0x200cc3c
	str     r4, [sp, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	mov     r0, #0x5
	str     r0, [sp, #0x14]
	mov     r0, r7
	mov     r1, #0x2
	mov     r2, r6
	mov     r3, r5
	bl      0x200cdc4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	mov     r3, #0xd
	bl      0x200ce24
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x7
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	mov     r3, #0xc
	bl      0x200ce54
	mov     r0, r4
	bl      0x2006ca8
	bl      0x2039734
	mov     r0, #0x5f
	bl      0x20394a8
	add     r1, sp, #0x18
	mov     r4, r0
	blx     0x20a71b0
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x18]
	mov     r0, r7
	ldr     r1, [r1, #0xc]
	mov     r2, #0x2
	mov     r3, #0xe0
	bl      0x2002fbc
	mov     r0, r4
	bl      free
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x21d24bc

.word 0xd94 @ 0x21d24bc
.thumb
Function_21d24c0: @ 21d24c0 :thumb
	push    {r4,lr}
	ldr     r1, [pc, #0x18] @ 0x21d24dc, (=0xd94)
	mov     r4, r0
	ldr     r0, [r4, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r4, r1]
	bl      Function_200d0b0
	ldr     r0, [pc, #0x8] @ 0x21d24dc, (=0xd94)
	ldr     r0, [r4, r0]
	bl      0x200c8d4
	pop     {r4,pc}
@ 0x21d24da


.align 2


.word 0xd94 @ 0x21d24dc
.thumb
Function_21d24e0: @ 21d24e0 :thumb
	mov     r2, r1
	ldr     r1, [pc, #0xc] @ 0x21d24f0, (=0xd94)
	mov     r3, r0
	ldr     r0, [r3, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r3, r1]
	ldr     r3, [pc, #0x4] @ 0x21d24f4, (=0x200ce6d)
	bx      r3
@ 0x21d24f0

.word 0xd94 @ 0x21d24f0
.word 0x200ce6d @ 0x21d24f4
.thumb
Function_21d24f8: @ 21d24f8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r6, r0
	ldr     r0, [pc, #0xd8] @ 0x21d25d8, (=0xc9c)
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r1, #0x5f
	add     r4, r6, r0
	str     r1, [sp, #0x4]
	add     r0, #0xe8
	mov     r1, #0x1
	ldr     r0, [r6, r0]
	mov     r2, r1
	mov     r3, #0xf
	bl      0x200daa4
	mov     r0, r6
	add     r0, #0xcc
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	ldr     r0, [r0, #0x18]
	mov     r2, #0xa
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x5f
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xac] @ 0x21d25dc, (=0xd84)
	mov     r3, #0xe
	ldr     r0, [r6, r0]
	bl      0x200dd0c
	mov     r0, r6
	add     r0, #0xcc
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x18]
	bl      0x200dd08
	mov     r2, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0xe0
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x8c] @ 0x21d25e0, (=0xd9c)
	mov     r1, #0x26
	ldr     r0, [r6, r0]
	mov     r3, #0x5f
	bl      0x2003050
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0xf0
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x74] @ 0x21d25e0, (=0xd9c)
	mov     r1, #0xe
	ldr     r0, [r6, r0]
	mov     r2, #0x7
	mov     r3, #0x5f
	bl      0x2003050
	mov     r2, #0x5e
	mov     r0, #0x0
	mov     r1, #0x1a
	lsl     r2, r2, #2
	mov     r3, #0x5f
	bl      Function_200b144
	str     r0, [r4, #0x4]
	mov     r0, #0x5f
	bl      0x200b358
	str     r0, [r4, #0x8]
	ldr     r0, [pc, #0x48] @ 0x21d25dc, (=0xd84)
	mov     r1, r4
	ldr     r0, [r6, r0]
	ldr     r2, [pc, #0x4c] @ 0x21d25e4, (=0x21d59b8)
	add     r1, #0xc
	bl      0x201a8d4
	mov     r0, #0x1
	lsl     r0, r0, #8
	mov     r1, #0x5f
	bl      Function_2023790
	str     r0, [r4, #0x6c]
	mov     r4, #0x0
	mov     r5, r6
	mov     r7, #0x8
.thumb
branch_21d25b0: @ 21d25b0 :thumb
	mov     r0, r7
	mov     r1, #0x5f
	bl      Function_2023790
	mov     r1, r5
	add     r1, #0x98
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	str     r0, [r1, #0x0]
	cmp     r4, #0x5
	blt     branch_21d25b0
	mov     r0, r6
	add     r6, #0xcc
	ldr     r1, [r6, #0x0]
	ldr     r1, [r1, #0x8]
	bl      Function_21d27ac
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21d25d6


.align 2


.word 0xc9c @ 0x21d25d8
.word 0xd84 @ 0x21d25dc
.word 0xd9c @ 0x21d25e0
.word 0x21d59b8 @ 0x21d25e4
.thumb
Function_21d25e8: @ 21d25e8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x40] @ 0x21d2630, (=0xc9c)
	add     r4, r5, r0
	mov     r6, r4
	add     r6, #0xc
	mov     r0, r6
	bl      0x201acf4
	mov     r0, r6
	bl      Function_201a8fc
	mov     r0, r5
	bl      Function_21d27f0
	ldr     r0, [r4, #0x4]
	bl      Function_200b190
	ldr     r0, [r4, #0x8]
	bl      0x200b3f0
	ldr     r0, [r4, #0x6c]
	bl      Function_20237bc
	mov     r4, #0x0
.thumb
branch_21d261a: @ 21d261a :thumb
	mov     r0, r5
	add     r0, #0x98
	ldr     r0, [r0, #0x0]
	bl      Function_20237bc
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x5
	blt     branch_21d261a
	pop     {r4-r6,pc}
@ 0x21d262e


.align 2


.word 0xc9c @ 0x21d2630
.thumb
Function_21d2634: @ 21d2634 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r6, r1
	ldr     r1, [pc, #0x4c] @ 0x21d2688, (=0xc9c)
	add     r4, r0, r1
	mov     r5, r4
	add     r5, #0xc
	mov     r0, r5
	mov     r1, #0xf
	bl      Function_201ada4
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0xa
	mov     r3, #0xe
	bl      0x200e060
	mov     r0, r5
	mov     r1, #0xf
	bl      Function_201ada4
	ldr     r0, [r4, #0x4]
	ldr     r2, [r4, #0x6c]
	mov     r1, r6
	bl      Function_200b1b8
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	str     r3, [sp, #0x8]
	ldr     r2, [r4, #0x6c]
	mov     r0, r5
	mov     r1, #0x1
	bl      0x201d738
	mov     r0, r5
	bl      Function_201a9a4
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x21d2686


.align 2


.word 0xc9c @ 0x21d2688
.thumb
Function_21d268c: @ 21d268c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r7, r1
	ldr     r1, [pc, #0x7c] @ 0x21d2710, (=0xc9c)
	mov     r6, r2
	add     r4, r0, r1
	mov     r5, r4
	add     r5, #0xc
	bl      Function_203608c
	bl      0x2032ee8
	mov     r2, r0
	ldr     r0, [r4, #0x8]
	mov     r1, #0x1
	bl      0x200b498
	ldr     r0, [r4, #0x8]
	mov     r1, #0x2
	mov     r2, r6
	bl      0x200b498
	mov     r0, #0x1
	lsl     r0, r0, #8
	mov     r1, #0x5f
	bl      Function_2023790
	mov     r6, r0
	ldr     r0, [r4, #0x4]
	mov     r1, r7
	mov     r2, r6
	bl      Function_200b1b8
	ldr     r0, [r4, #0x8]
	ldr     r1, [r4, #0x6c]
	mov     r2, r6
	bl      Function_200c388
	mov     r0, r6
	bl      Function_20237bc
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0xa
	mov     r3, #0xe
	bl      0x200e060
	mov     r0, r5
	mov     r1, #0xf
	bl      Function_201ada4
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	str     r3, [sp, #0x8]
	ldr     r2, [r4, #0x6c]
	mov     r0, r5
	mov     r1, #0x1
	bl      0x201d738
	mov     r0, r5
	bl      Function_201a9a4
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21d2710

.word 0xc9c @ 0x21d2710
.thumb
Function_21d2714: @ 21d2714 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r7, r1
	ldr     r1, [pc, #0x68] @ 0x21d2784, (=0xc9c)
	add     r4, r0, r1
	mov     r5, r4
	ldr     r0, [r4, #0x8]
	mov     r1, #0x0
	add     r5, #0xc
	bl      0x200b70c
	mov     r0, #0x1
	lsl     r0, r0, #8
	mov     r1, #0x5f
	bl      Function_2023790
	mov     r6, r0
	ldr     r0, [r4, #0x4]
	mov     r1, r7
	mov     r2, r6
	bl      Function_200b1b8
	ldr     r0, [r4, #0x8]
	ldr     r1, [r4, #0x6c]
	mov     r2, r6
	bl      Function_200c388
	mov     r0, r6
	bl      Function_20237bc
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0xa
	mov     r3, #0xe
	bl      0x200e060
	mov     r0, r5
	mov     r1, #0xf
	bl      Function_201ada4
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	str     r3, [sp, #0x8]
	ldr     r2, [r4, #0x6c]
	mov     r0, r5
	mov     r1, #0x1
	bl      0x201d738
	mov     r0, r5
	bl      Function_201a9a4
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21d2782


.align 2


.word 0xc9c @ 0x21d2784
.thumb
Function_21d2788: @ 21d2788 :thumb
	push    {r3-r5,lr}
	ldr     r4, [pc, #0x1c] @ 0x21d27a8, (=0xca8)
	mov     r5, r0
	add     r0, r5, r4
	mov     r1, #0x1
	bl      0x200e084
	add     r0, r5, r4
	mov     r1, #0x0
	bl      Function_201ada4
	add     r0, r5, r4
	bl      Function_201a9a4
	pop     {r3-r5,pc}
@ 0x21d27a6


.align 2


.word 0xca8 @ 0x21d27a8
.thumb
Function_21d27ac: @ 21d27ac :thumb
	push    {r3-r7,lr}
	str     r1, [sp, #0x0]
	mov     r7, r0
	ldr     r0, [sp, #0x0]
	ldr     r1, [pc, #0x2c] @ 0x21d27e4, (=0xc9c)
	lsl     r2, r0, #2
	ldr     r0, [pc, #0x2c] @ 0x21d27e8, (=0x21d5a68)
	mov     r6, #0x0
	ldr     r4, [r0, r2]
	ldr     r0, [sp, #0x0]
	str     r0, [r7, r1]
	cmp     r0, #0x0
	ble     branch_21d27e2
	add     r5, r7, r1
	add     r5, #0x1c
.thumb
branch_21d27ca: @ 21d27ca :thumb
	ldr     r0, [pc, #0x20] @ 0x21d27ec, (=0xd84)
	mov     r1, r5
	ldr     r0, [r7, r0]
	mov     r2, r4
	bl      0x201a8d4
	ldr     r0, [sp, #0x0]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x8
	add     r5, #0x10
	cmp     r6, r0
	blt     branch_21d27ca
.thumb
branch_21d27e2: @ 21d27e2 :thumb
	pop     {r3-r7,pc}
@ 0x21d27e4

.word 0xc9c @ 0x21d27e4
.word 0x21d5a68 @ 0x21d27e8
.word 0xd84 @ 0x21d27ec
.thumb
Function_21d27f0: @ 21d27f0 :thumb
	push    {r3-r7,lr}
	ldr     r7, [pc, #0x28] @ 0x21d281c, (=0xc9c)
	mov     r6, r0
	ldr     r0, [r6, r7]
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_21d2818
	add     r5, r6, r7
	add     r5, #0x1c
.thumb
branch_21d2802: @ 21d2802 :thumb
	mov     r0, r5
	bl      0x201acf4
	mov     r0, r5
	bl      Function_201a8fc
	ldr     r0, [r6, r7]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, r0
	blt     branch_21d2802
.thumb
branch_21d2818: @ 21d2818 :thumb
	pop     {r3-r7,pc}
@ 0x21d281a


.align 2


.word 0xc9c @ 0x21d281c
.thumb
Function_21d2820: @ 21d2820 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r6, r1
	ldr     r1, [pc, #0x48] @ 0x21d2870, (=0xcb8)
	lsl     r4, r2, #4
	add     r5, r0, r1
	mov     r1, #0x1
	mov     r7, r3
	add     r0, r5, r4
	mov     r2, r1
	mov     r3, #0xe
	bl      0x200dc48
	add     r0, r5, r4
	mov     r1, #0xf
	bl      Function_201ada4
	mov     r0, #0x0
	mov     r1, r6
	mov     r2, r0
	mov     r3, #0x40
	bl      0x2002eec
	mov     r1, #0x0
	mov     r3, r0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	str     r7, [sp, #0x8]
	add     r0, r5, r4
	mov     r2, r6
	str     r1, [sp, #0xc]
	bl      0x201d78c
	add     r0, r5, r4
	bl      Function_201a9a4
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d286e


.align 2


.word 0xcb8 @ 0x21d2870
.thumb
Function_21d2874: @ 21d2874 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r7, r1
	str     r2, [sp, #0x0]
	mov     r5, r3
	ldr     r4, [pc, #0x1c] @ 0x21d289c, (=0x10200)
	bl      Function_203608c
	cmp     r5, r0
	bne     branch_21d288c
	mov     r4, #0xc1
	lsl     r4, r4, #10
.thumb
branch_21d288c: @ 21d288c :thumb
	ldr     r2, [sp, #0x0]
	mov     r0, r6
	mov     r1, r7
	mov     r3, r4
	bl      Function_21d2820
	pop     {r3-r7,pc}
@ 0x21d289a


.align 2


.word 0x10200 @ 0x21d289c
.thumb
Function_21d28a0: @ 21d28a0 :thumb
	push    {r3-r5,lr}
	ldr     r2, [pc, #0x1c] @ 0x21d28c0, (=0xcb8)
	lsl     r4, r1, #4
	add     r5, r0, r2
	add     r0, r5, r4
	mov     r1, #0x1
	bl      0x200e084
	add     r0, r5, r4
	mov     r1, #0x0
	bl      Function_201ada4
	add     r0, r5, r4
	bl      Function_201a9a4
	pop     {r3-r5,pc}
@ 0x21d28c0

.word 0xcb8 @ 0x21d28c0
.thumb
Function_21d28c4: @ 21d28c4 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	mov     r5, r0
	ldr     r0, [pc, #0x60] @ 0x21d292c, (=0xd0c)
	add     r4, r5, r0
	mov     r0, #0x5f
	bl      0x20203ac
	str     r0, [r4, #0x1c]
	mov     r2, #0x0
	str     r2, [r4, #0x8]
	str     r2, [r4, #0xc]
	ldr     r0, [pc, #0x50] @ 0x21d2930, (=0xe93f)
	str     r2, [r4, #0x10]
	strh    r0, [r4, #0x14]
	strh    r2, [r4, #0x16]
	ldr     r0, [pc, #0x4c] @ 0x21d2934, (=0x143000)
	ldr     r1, [pc, #0x44] @ 0x21d292c, (=0xd0c)
	strh    r2, [r4, #0x18]
	str     r0, [r5, r1]
	ldr     r0, [pc, #0x48] @ 0x21d2938, (=0x444)
	str     r0, [r4, #0x4]
	str     r2, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x1c]
	mov     r2, r4
	str     r0, [sp, #0x8]
	ldr     r3, [r4, #0x4]
	mov     r0, r4
	lsl     r3, r3, #16
	ldr     r1, [r5, r1]
	add     r0, #0x8
	add     r2, #0x14
	lsr     r3, r3, #16
	bl      0x20206d0
	mov     r1, #0x0
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r0, [sp, #0x10]
	str     r1, [sp, #0xc]
	str     r1, [sp, #0x14]
	ldr     r1, [r4, #0x1c]
	add     r0, sp, #0xc
	bl      0x2020680
	ldr     r0, [r4, #0x1c]
	bl      0x20203d4
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x21d292c

.word 0xd0c @ 0x21d292c
.word 0xe93f @ 0x21d2930
.word 0x143000 @ 0x21d2934
.word 0x444 @ 0x21d2938
.thumb
Function_21d293c: @ 21d293c :thumb
	ldr     r1, [pc, #0x4] @ 0x21d2944, (=0xd28)
	ldr     r3, [pc, #0x8] @ 0x21d2948, (=0x20203b9)
	ldr     r0, [r0, r1]
	bx      r3
@ 0x21d2944

.word 0xd28 @ 0x21d2944
.word 0x20203b9 @ 0x21d2948
.thumb
Function_21d294c: @ 21d294c :thumb
	push    {r4-r6,lr}
	ldr     r1, [pc, #0x3c] @ 0x21d298c, (=0xd2c)
	mov     r6, #0x0
	add     r5, r0, r1
	mov     r0, r5
	add     r0, #0x10
	mov     r1, #0x2
	mov     r2, r6
	mov     r4, #0x3
	bl      0x201e564
	mov     r2, r5
	add     r2, #0x18
	mov     r0, #0x1
.thumb
branch_21d2968: @ 21d2968 :thumb
	ldrh    r1, [r2, #0x16]
	cmp     r1, #0x1
	bne     branch_21d2978
	ldrh    r1, [r2, #0x12]
	mov     r6, r0
	str     r1, [r5, #0x0]
	ldrh    r1, [r2, #0x14]
	str     r1, [r5, #0x4]
.thumb
branch_21d2978: @ 21d2978 :thumb
	sub     r2, #0x8
	.hword  0x1e64 @ sub r4, r4, #0x1
	bpl     branch_21d2968
	ldr     r0, [r5, #0xc]
	eor     r0, r6
	and     r0, r6
	str     r0, [r5, #0x8]
	str     r6, [r5, #0xc]
	pop     {r4-r6,pc}
@ 0x21d298a


.align 2


.word 0xd2c @ 0x21d298c
.thumb
Function_21d2990: @ 21d2990 :thumb
	ldr     r1, [r0, #0x0]
	ldr     r0, [r0, #0x4]
	cmp     r0, #0x20
	blt     branch_21d29a8
	cmp     r0, #0x9f
	bgt     branch_21d29a8
	cmp     r1, #0x40
	blt     branch_21d29a8
	cmp     r1, #0xbf
	bgt     branch_21d29a8
	mov     r0, #0x1
	bx      lr
@ 0x21d29a8

.thumb
branch_21d29a8: @ 21d29a8 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21d29ac

.thumb
Function_21d29ac: @ 21d29ac :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x18] @ 0x21d29c8, (=0xd2c)
	add     r0, r0, r1
	ldr     r1, [r0, #0x8]
	cmp     r1, #0x0
	beq     branch_21d29c4
	bl      Function_21d2990
	cmp     r0, #0x1
	bne     branch_21d29c4
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d29c4

.thumb
branch_21d29c4: @ 21d29c4 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d29c8

.word 0xd2c @ 0x21d29c8
.thumb
Function_21d29cc: @ 21d29cc :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r6, r0
	add     r0, #0xcc
	ldr     r0, [r0, #0x0]
	mov     r4, r6
	ldr     r0, [r0, #0x8]
	mov     r2, #0x36
	lsl     r5, r0, #2
	mov     r0, #0x5f
	ldr     r3, [pc, #0x68] @ 0x21d2a4c, (=0x21d5a80)
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	add     r4, #0xd4
	mov     r0, r4
	str     r1, [sp, #0x4]
	lsl     r2, r2, #6
	ldr     r2, [r6, r2]
	ldr     r3, [r3, r5]
	add     r0, #0x54
	bl      0x207389c
	mov     r0, r4
	add     r0, #0x54
	bl      0x20738ec
	mov     r0, r4
	mov     r1, r4
	add     r0, #0x68
	add     r1, #0x54
	bl      0x2073b70
	ldr     r1, [pc, #0x40] @ 0x21d2a50, (=0x21d5a98)
	mov     r0, #0x0
	mov     r2, r4
	ldr     r1, [r1, r5]
	str     r0, [r4, #0x3c]
	str     r1, [r4, #0x44]
	mov     r1, #0x1
	lsl     r1, r1, #12
	str     r1, [r4, #0x18]
	str     r1, [r4, #0x1c]
	str     r1, [r4, #0x20]
	mov     r1, r4
	add     r1, #0x4c
	strh    r0, [r1, #0x0]
	mov     r1, r4
	add     r1, #0x4e
	strh    r0, [r1, #0x0]
	mov     r1, r4
	add     r1, #0x50
	strh    r0, [r1, #0x0]
	add     r6, #0xd4
	ldr     r1, [pc, #0x1c] @ 0x21d2a54, (=0xfffdc000)
	str     r0, [r6, #0x0]
	str     r1, [r4, #0x4]
	str     r0, [r4, #0x8]
	ldmia   r4!, {r0,r1}
	add     r2, #0xc
	stmia   r2!, {r0,r1}
	ldr     r0, [r4, #0x0]
	str     r0, [r2, #0x0]
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x21d2a4c

.word 0x21d5a80 @ 0x21d2a4c
.word 0x21d5a98 @ 0x21d2a50
.word 0xfffdc000 @ 0x21d2a54
.thumb
Function_21d2a58: @ 21d2a58 :thumb
	mov     r1, #0x4a
	lsl     r1, r1, #2
	ldr     r3, [pc, #0x4] @ 0x21d2a64, (=0x207395d)
	add     r0, r0, r1
	bx      r3
@ 0x21d2a62


.align 2


.word 0x207395d @ 0x21d2a64
.thumb
Function_21d2a68: @ 21d2a68 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r5
	add     r4, #0xd4
	ldr     r0, [r4, #0x3c]
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x40]
	add     r0, sp, #0x0
	bl      Function_21d39d4
	ldr     r1, [r4, #0x44]
	add     r0, sp, #0x0
	bl      Function_21d39d4
	ldr     r1, [sp, #0x0]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	mov     r1, #0x5a
	asr     r0, r0, #12
	lsl     r1, r1, #2
	sub     r0, r1, r0
	blx     _s32_div_f
	mov     r0, r4
	add     r0, #0x4e
	strh    r1, [r0, #0x0]
	add     r5, #0xd4
	ldr     r1, [r5, #0x0]
	ldr     r0, [r4, #0x30]
	ldr     r2, [r4, #0x24]
	add     r0, r1, r0
	add     r0, r2, r0
	str     r0, [r4, #0xc]
	ldr     r1, [r4, #0x4]
	ldr     r0, [r4, #0x34]
	ldr     r2, [r4, #0x28]
	add     r0, r1, r0
	add     r0, r2, r0
	str     r0, [r4, #0x10]
	ldr     r1, [r4, #0x8]
	ldr     r0, [r4, #0x38]
	ldr     r2, [r4, #0x2c]
	add     r0, r1, r0
	add     r0, r2, r0
	str     r0, [r4, #0x14]
	pop     {r3-r5,pc}
@ 0x21d2ac6


.align 2, 0


.thumb
Function_21d2ac8: @ 21d2ac8 :thumb
	push    {r3,lr}
	mov     r3, r0
	add     r3, #0xd4
	mov     r0, r3
	mov     r1, r3
	mov     r2, r3
	add     r0, #0x68
	add     r1, #0xc
	add     r2, #0x18
	add     r3, #0x4c
	bl      0x2073bc8
	pop     {r3,pc}
@ 0x21d2ae2


.align 2, 0


.thumb
Function_21d2ae4: @ 21d2ae4 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d2aec, (=0x21d39d5)
	add     r0, #0x3c
	bx      r3
@ 0x21d2aea


.align 2


.word 0x21d39d5 @ 0x21d2aec
.thumb
Function_21d2af0: @ 21d2af0 :thumb
	ldr     r3, [pc, #0x0] @ 0x21d2af4, (=0x21d2b01)
	bx      r3
@ 0x21d2af4

.word 0x21d2b01 @ 0x21d2af4
.thumb
Function_21d2af8: @ 21d2af8 :thumb
	ldr     r3, [pc, #0x0] @ 0x21d2afc, (=0x21d2bd5)
	bx      r3
@ 0x21d2afc

.word 0x21d2bd5 @ 0x21d2afc
.thumb
Function_21d2b00: @ 21d2b00 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r7, r0
	mov     r0, #0x5f
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	mov     r2, #0x36
	mov     r5, #0x19
	lsl     r5, r5, #4
	str     r1, [sp, #0x4]
	lsl     r2, r2, #6
	ldr     r2, [r7, r2]
	add     r0, r7, r5
	mov     r3, r1
	bl      0x207389c
	add     r0, r7, r5
	bl      0x20738ec
	mov     r0, #0x5f
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	mov     r2, #0x36
	add     r0, r7, r5
	str     r1, [sp, #0x4]
	lsl     r2, r2, #6
	ldr     r2, [r7, r2]
	add     r0, #0x14
	mov     r3, #0x5
	bl      0x207389c
	add     r0, r7, r5
	add     r0, #0x14
	bl      0x20738ec
	add     r4, r7, r5
	ldr     r0, [pc, #0x80] @ 0x21d2bcc, (=0x21d5a14)
	add     r4, #0x28
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x80] @ 0x21d2bd0, (=0x21d5a3c)
	add     r5, r7, r5
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	add     r5, #0x8c
	mov     r6, r4
.thumb
branch_21d2b5c: @ 21d2b5c :thumb
	mov     r0, #0x5f
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	mov     r2, #0x36
	str     r0, [sp, #0x4]
	ldr     r3, [sp, #0xc]
	lsl     r2, r2, #6
	ldr     r2, [r7, r2]
	ldr     r3, [r3, #0x0]
	mov     r0, r4
	mov     r1, #0x0
	bl      0x207389c
	mov     r0, r4
	bl      0x20738ec
	mov     r0, #0x5f
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	mov     r2, #0x36
	str     r0, [sp, #0x4]
	ldr     r3, [sp, #0x8]
	lsl     r2, r2, #6
	ldr     r2, [r7, r2]
	ldr     r3, [r3, #0x0]
	mov     r0, r5
	mov     r1, #0x0
	bl      0x20739b4
	mov     r0, r5
	mov     r1, r6
	mov     r2, #0x5f
	bl      0x2073a3c
	mov     r0, r5
	mov     r1, r6
	bl      0x2073a5c
	ldr     r0, [sp, #0x10]
	add     r4, #0x14
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0xc]
	add     r5, #0x24
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x8]
	add     r6, #0x14
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x5
	blt     branch_21d2b5c
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d2bca


.align 2


.word 0x21d5a14 @ 0x21d2bcc
.word 0x21d5a3c @ 0x21d2bd0
.thumb
Function_21d2bd4: @ 21d2bd4 :thumb
	push    {r3-r7,lr}
	mov     r7, #0x19
	mov     r5, r0
	lsl     r7, r7, #4
	add     r0, r5, r7
	bl      0x207395c
	add     r0, r5, r7
	add     r0, #0x14
	bl      0x207395c
	add     r4, r5, r7
	add     r5, r5, r7
	mov     r6, #0x0
	add     r4, #0x28
	add     r5, #0x8c
.thumb
branch_21d2bf4: @ 21d2bf4 :thumb
	mov     r0, r4
	bl      0x207395c
	mov     r0, r5
	bl      0x20739f0
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x14
	add     r5, #0x24
	cmp     r6, #0x5
	blt     branch_21d2bf4
	pop     {r3-r7,pc}
@ 0x21d2c0c

.thumb
Function_21d2c0c: @ 21d2c0c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r1, #0x19
	mov     r5, r0
	mov     r0, r4
	lsl     r1, r1, #4
	add     r0, #0x5c
	add     r1, r5, r1
	bl      0x2073b70
	mov     r0, #0x1
	str     r0, [r4, #0x4]
	mov     r0, r5
	mov     r1, r4
	bl      Function_21d2ec0
	mov     r0, r5
	mov     r1, r4
	bl      Function_21d2f68
	pop     {r3-r5,pc}
@ 0x21d2c36


.align 2, 0


.thumb
Function_21d2c38: @ 21d2c38 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x30]
	mov     r1, #0x19
	lsl     r1, r1, #4
	add     r4, r5, r1
	str     r0, [sp, #0xc]
	cmp     r0, #0x0
	ble     branch_21d2cc4
	sub     r1, #0x50
	add     r0, r4, r1
	str     r0, [sp, #0x8]
	mov     r0, #0x4b
	lsl     r0, r0, #4
	add     r0, r4, r0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x68] @ 0x21d2cc8, (=0x71c)
	str     r4, [sp, #0x4]
	mov     r7, r4
	add     r6, r4, r0
.thumb
branch_21d2c66: @ 21d2c66 :thumb
	mov     r0, #0x5
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21d2c7c
	mov     r1, #0x41
	lsl     r1, r1, #2
	ldr     r0, [sp, #0x8]
	add     r1, r5, r1
	bl      Function_21d2d78
.thumb
branch_21d2c7c: @ 21d2c7c :thumb
	mov     r0, #0x4b
	ldr     r1, [sp, #0x4]
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_21d2c90
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	bl      Function_21d2ef4
.thumb
branch_21d2c90: @ 21d2c90 :thumb
	ldr     r0, [pc, #0x34] @ 0x21d2cc8, (=0x71c)
	ldr     r0, [r7, r0]
	cmp     r0, #0x0
	beq     branch_21d2ca0
	mov     r0, r5
	mov     r1, r6
	bl      Function_21d2fa4
.thumb
branch_21d2ca0: @ 21d2ca0 :thumb
	ldr     r0, [sp, #0x8]
	add     r4, #0xb0
	add     r0, #0xb0
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x4]
	add     r7, #0x68
	add     r0, #0x7c
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	add     r6, #0x68
	add     r0, #0x7c
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x10]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0xc]
	str     r1, [sp, #0x10]
	cmp     r1, r0
	blt     branch_21d2c66
.thumb
branch_21d2cc4: @ 21d2cc4 :thumb
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d2cc8

.word 0x71c @ 0x21d2cc8
.thumb
Function_21d2ccc: @ 21d2ccc :thumb
	push    {r3-r7,lr}
	ldr     r1, [r0, #0x30]
	mov     r7, #0x0
	str     r1, [sp, #0x0]
	mov     r1, #0x19
	lsl     r1, r1, #4
	add     r2, r0, r1
	mov     r0, #0x4b
	lsl     r0, r0, #4
	add     r4, r2, r0
	ldr     r0, [pc, #0x5c] @ 0x21d2d40, (=0x71c)
	sub     r1, #0x50
	add     r5, r2, r0
	ldr     r0, [sp, #0x0]
	add     r6, r2, r1
	cmp     r0, #0x0
	ble     branch_21d2d3e
.thumb
branch_21d2cee: @ 21d2cee :thumb
	ldr     r0, [r6, #0x4]
	cmp     r0, #0x0
	beq     branch_21d2d08
	mov     r0, r6
	mov     r1, r6
	mov     r2, r6
	mov     r3, r6
	add     r0, #0x5c
	add     r1, #0x44
	add     r2, #0x38
	add     r3, #0x24
	bl      0x2073bc8
.thumb
branch_21d2d08: @ 21d2d08 :thumb
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_21d2d20
	mov     r0, r4
	mov     r1, r4
	mov     r2, r4
	add     r0, #0x24
	add     r1, #0x18
	add     r2, #0xc
	add     r3, r4, #0x4
	bl      0x2073bc8
.thumb
branch_21d2d20: @ 21d2d20 :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_21d2d30
	mov     r0, r5
	add     r0, #0x10
	add     r1, r5, #0x4
	bl      0x2073bb4
.thumb
branch_21d2d30: @ 21d2d30 :thumb
	ldr     r0, [sp, #0x0]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r6, #0xb0
	add     r4, #0x7c
	add     r5, #0x68
	cmp     r7, r0
	blt     branch_21d2cee
.thumb
branch_21d2d3e: @ 21d2d3e :thumb
	pop     {r3-r7,pc}
@ 0x21d2d40

.word 0x71c @ 0x21d2d40
.thumb
Function_21d2d44: @ 21d2d44 :thumb
	push    {r3-r7,lr}
	str     r1, [sp, #0x0]
	mov     r1, #0x19
	lsl     r1, r1, #4
	ldr     r7, [r0, #0x30]
	mov     r6, #0x0
	add     r4, r0, r1
	cmp     r7, #0x0
	ble     branch_21d2d76
	sub     r1, #0x34
	add     r5, r4, r1
.thumb
branch_21d2d5a: @ 21d2d5a :thumb
	mov     r0, #0x5
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21d2d6c
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	bl      Function_21d39d4
.thumb
branch_21d2d6c: @ 21d2d6c :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0xb0
	add     r5, #0xb0
	cmp     r6, r7
	blt     branch_21d2d5a
.thumb
branch_21d2d76: @ 21d2d76 :thumb
	pop     {r3-r7,pc}
@ 0x21d2d78

.thumb
Function_21d2d78: @ 21d2d78 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	ldr     r0, [r5, #0x1c]
	mov     r4, r1
	str     r0, [sp, #0x0]
	ldr     r1, [r5, #0x20]
	add     r0, sp, #0x0
	bl      Function_21d39d4
	ldr     r1, [sp, #0x0]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	lsl     r0, r0, #4
	lsr     r6, r0, #16
	mov     r0, r6
	bl      0x201d1d4
	ldr     r2, [r5, #0x50]
	ldr     r1, [r4, #0x0]
	add     r2, r2, r1
	mov     r1, #0x16
	mul     r1, r0
	add     r0, r2, r1
	str     r0, [r5, #0x44]
	mov     r0, #0x6
	ldr     r1, [r5, #0x54]
	lsl     r0, r0, #12
	sub     r1, r1, r0
	ldr     r0, [r4, #0x4]
	add     r0, r1, r0
	str     r0, [r5, #0x48]
	mov     r0, r6
	bl      0x201d15c
	ldr     r2, [r5, #0x58]
	ldr     r1, [r4, #0x8]
	add     r2, r2, r1
	mov     r1, #0x16
	mul     r1, r0
	add     r0, r2, r1
	str     r0, [r5, #0x4c]
	ldr     r1, [r5, #0x2c]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r0, r0, #12
	strh    r0, [r5, #0x24]
	ldr     r1, [r5, #0x30]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r0, r0, #12
	strh    r0, [r5, #0x26]
	ldr     r1, [r5, #0x34]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r0, r0, #12
	strh    r0, [r5, #0x28]
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x21d2df6


.align 2, 0


.thumb
Function_21d2df8: @ 21d2df8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x2c
	mov     r1, #0x19
	ldr     r6, [r0, #0x30]
	lsl     r1, r1, #4
	add     r1, r0, r1
	mov     lr, r1
	ldr     r0, [r0, #0x2c]
	mov     r1, #0xa
	mov     r2, r6
	mul     r2, r1
	ldr     r1, [pc, #0xa8] @ 0x21d2eb8, (=0x21d5c80)
	lsl     r4, r0, #1
	add     r0, r1, r2
	ldrh    r0, [r4, r0]
	mov     r3, #0x0
	add     r1, sp, #0x4
	lsl     r5, r0, #12
	ldr     r0, [pc, #0x9c] @ 0x21d2ebc, (=0xffff)
	add     r2, sp, #0x18
.thumb
branch_21d2e20: @ 21d2e20 :thumb
	stmia   r1!, {r3}
	.hword  0x1c5b @ add r3, r3, #0x1
	stmia   r2!, {r0}
	cmp     r3, r6
	blt     branch_21d2e20
	mov     r3, #0x0
	cmp     r6, #0x0
	ble     branch_21d2e58
	mov     r0, #0x5a
	lsl     r0, r0, #14
	mov     r1, lr
	add     r2, sp, #0x18
	add     r7, r5, r0
.thumb
branch_21d2e3a: @ 21d2e3a :thumb
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r4, [r1, r0]
	sub     r0, r5, r4
	bpl     branch_21d2e46
	sub     r0, r7, r4
.thumb
branch_21d2e46: @ 21d2e46 :thumb
	asr     r4, r0, #11
	lsr     r4, r4, #20
	add     r4, r0, r4
	asr     r0, r4, #12
	.hword  0x1c5b @ add r3, r3, #0x1
	stmia   r2!, {r0}
	add     r1, #0xb0
	cmp     r3, r6
	blt     branch_21d2e3a
.thumb
branch_21d2e58: @ 21d2e58 :thumb
	mov     r7, #0x1
	cmp     r6, #0x1
	ble     branch_21d2ea2
	add     r0, sp, #0x8
	str     r0, [sp, #0x0]
	add     r5, sp, #0x18
.thumb
branch_21d2e64: @ 21d2e64 :thumb
	ldr     r0, [sp, #0x0]
	add     r2, sp, #0x4
	ldr     r0, [r0, #0x0]
	mov     r12, r0
	lsl     r0, r0, #2
	ldr     r1, [r5, r0]
	.hword  0x1e78 @ sub r0, r7, #0x1
	lsl     r3, r0, #2
	add     r2, r2, r3
	b       branch_21d2e7e
@ 0x21d2e78

.thumb
branch_21d2e78: @ 21d2e78 :thumb
	str     r3, [r2, #0x4]
	.hword  0x1f12 @ sub r2, r2, #0x4
	.hword  0x1e40 @ sub r0, r0, #0x1
.thumb
branch_21d2e7e: @ 21d2e7e :thumb
	cmp     r0, #0x0
	blt     branch_21d2e8c
	ldr     r3, [r2, #0x0]
	lsl     r4, r3, #2
	ldr     r4, [r5, r4]
	cmp     r4, r1
	bgt     branch_21d2e78
.thumb
branch_21d2e8c: @ 21d2e8c :thumb
	lsl     r1, r0, #2
	add     r0, sp, #0x4
	add     r1, r0, r1
	mov     r0, r12
	str     r0, [r1, #0x4]
	ldr     r0, [sp, #0x0]
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x0]
	cmp     r7, r6
	blt     branch_21d2e64
.thumb
branch_21d2ea2: @ 21d2ea2 :thumb
	mov     r1, #0x5
	lsl     r1, r1, #6
	mov     r0, lr
	add     r2, r0, r1
	ldr     r1, [sp, #0x4]
	mov     r0, #0xb0
	mul     r0, r1
	add     r0, r2, r0
	add     sp, #0x2c
	pop     {r4-r7,pc}
@ 0x21d2eb6


.align 2


.word 0x21d5c80 @ 0x21d2eb8
.word 0xffff @ 0x21d2ebc
.thumb
Function_21d2ec0: @ 21d2ec0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, #0x19
	lsl     r0, r0, #4
	add     r3, r5, r0
	mov     r0, #0x4b
	lsl     r0, r0, #4
	add     r2, r3, r0
	ldr     r4, [r1, #0x10]
	mov     r0, #0x7c
	mul     r0, r4
	mov     r6, #0x1
	add     r4, r2, r0
	str     r6, [r2, r0]
	mov     r0, r4
	add     r3, #0x14
	str     r1, [r4, #0x78]
	add     r0, #0x24
	mov     r1, r3
	bl      0x2073b70
	mov     r0, r5
	mov     r1, r4
	bl      Function_21d2ef4
	pop     {r4-r6,pc}
@ 0x21d2ef4

.thumb
Function_21d2ef4: @ 21d2ef4 :thumb
	push    {r4,r5}
	mov     r3, r1
	mov     r0, #0x0
	strh    r0, [r3, #0x4]
	strh    r0, [r3, #0x6]
	strh    r0, [r3, #0x8]
	ldr     r5, [r3, #0x78]
	mov     r4, r3
	add     r5, #0x44
	add     r4, #0x18
	ldmia   r5!, {r0,r1}
	mov     r2, r4
	stmia   r4!, {r0,r1}
	ldr     r0, [r5, #0x0]
	str     r0, [r4, #0x0]
	ldr     r0, [r3, #0x78]
	ldr     r1, [r2, #0x0]
	ldr     r0, [r0, #0x50]
	sub     r0, r1, r0
	str     r0, [r2, #0x0]
	ldr     r0, [r3, #0x78]
	ldr     r1, [r3, #0x1c]
	ldr     r0, [r0, #0x54]
	sub     r0, r1, r0
	str     r0, [r3, #0x1c]
	ldr     r0, [r3, #0x78]
	ldr     r1, [r3, #0x20]
	ldr     r0, [r0, #0x58]
	sub     r0, r1, r0
	str     r0, [r3, #0x20]
	mov     r0, #0x2
	ldr     r1, [r3, #0x1c]
	lsl     r0, r0, #12
	add     r0, r1, r0
	str     r0, [r3, #0x1c]
	ldr     r0, [r3, #0x78]
	ldr     r1, [r0, #0x54]
	cmp     r1, #0x0
	bge     branch_21d2f44
	neg     r1, r1
.thumb
branch_21d2f44: @ 21d2f44 :thumb
	asr     r0, r1, #6
	lsr     r0, r0, #25
	add     r0, r1, r0
	asr     r1, r0, #7
	mov     r0, #0x2
	lsl     r0, r0, #10
	cmp     r1, r0
	ble     branch_21d2f56
	mov     r1, r0
.thumb
branch_21d2f56: @ 21d2f56 :thumb
	mov     r0, #0x1
	lsl     r0, r0, #12
	sub     r0, r0, r1
	str     r0, [r3, #0xc]
	str     r0, [r3, #0x10]
	str     r0, [r3, #0x14]
	pop     {r4,r5}
	bx      lr
@ 0x21d2f66


.align 2, 0


.thumb
Function_21d2f68: @ 21d2f68 :thumb
	push    {r3-r5,lr}
	mov     r2, #0x19
	lsl     r2, r2, #4
	add     r3, r0, r2
	ldr     r0, [pc, #0x2c] @ 0x21d2fa0, (=0x71c)
	ldr     r4, [r1, #0x10]
	add     r2, r3, r0
	mov     r5, r4
	mov     r0, #0x68
	mul     r5, r0
	mov     r4, #0x1
	str     r4, [r2, r5]
	mov     r4, r3
	add     r0, r2, r5
	str     r1, [r0, #0x64]
	ldr     r2, [r1, #0x10]
	mov     r1, #0x14
	add     r4, #0x28
	mul     r1, r2
	add     r1, r4, r1
	mov     r4, #0x24
	add     r3, #0x8c
	mul     r4, r2
	add     r0, #0x10
	add     r2, r3, r4
	bl      0x2073b90
	pop     {r3-r5,pc}
@ 0x21d2fa0

.word 0x71c @ 0x21d2fa0
.thumb
Function_21d2fa4: @ 21d2fa4 :thumb
	push    {r3-r5,lr}
	mov     r2, r1
	ldr     r5, [r2, #0x64]
	mov     r3, r0
	add     r5, #0x44
	ldmia   r5!, {r0,r1}
	add     r4, r2, #0x4
	stmia   r4!, {r0,r1}
	ldr     r0, [r5, #0x0]
	str     r0, [r4, #0x0]
	mov     r0, #0x5
	ldr     r1, [r2, #0x8]
	lsl     r0, r0, #14
	add     r0, r1, r0
	str     r0, [r2, #0x8]
	mov     r0, #0x87
	lsl     r0, r0, #2
	add     r3, r3, r0
	ldr     r0, [r2, #0x64]
	mov     r2, #0x1
	ldr     r1, [r0, #0x10]
	mov     r0, #0x24
	mul     r0, r1
	mov     r1, #0x1
	add     r0, r3, r0
	lsl     r1, r1, #12
	bl      0x2073ac0
	pop     {r3-r5,pc}
@ 0x21d2fde


.align 2, 0


.thumb
Function_21d2fe0: @ 21d2fe0 :thumb
	push    {r3-r5,lr}
	ldr     r4, [sp, #0x18]
	mov     r5, r0
	str     r1, [r4, #0xc]
	str     r2, [r4, #0x10]
	ldr     r0, [sp, #0x10]
	str     r3, [r4, #0x14]
	str     r2, [r4, #0x18]
	lsl     r0, r0, #12
	str     r0, [r4, #0x1c]
	ldr     r0, [sp, #0x14]
	mov     r1, #0x18
	lsl     r0, r0, #12
	str     r0, [r4, #0x20]
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	mov     r0, #0x5f
	bl      malloc2_maybe
	mov     r1, r0
	mov     r3, r1
	mov     r2, #0x18
	mov     r0, #0x0
.thumb
branch_21d3012: @ 21d3012 :thumb
	strb    r0, [r3, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d3012
	ldr     r0, [pc, #0xc] @ 0x21d3028, (=0x21d302d)
	str     r5, [r1, #0x14]
	mov     r2, #0x0
	str     r4, [r1, #0x10]
	bl      0x200d9e8
	pop     {r3-r5,pc}
@ 0x21d3028

.word 0x21d302d @ 0x21d3028
.thumb
Function_21d302c: @ 21d302c :thumb
	push    {r4-r6,lr}
	ldr     r4, [pc, #0x2c] @ 0x21d305c, (=0x21d59d8)
	mov     r6, r0
	mov     r5, r1
.thumb
branch_21d3034: @ 21d3034 :thumb
	ldr     r1, [r5, #0x0]
	mov     r0, r5
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	blx     r1
	cmp     r0, #0x1
	beq     branch_21d3034
	cmp     r0, #0x2
	bne     branch_21d3058
	ldr     r0, [r5, #0x10]
	mov     r1, #0x1
	str     r1, [r0, #0x8]
	mov     r0, r5
	bl      free
	mov     r0, r6
	bl      Function_200da58
.thumb
branch_21d3058: @ 21d3058 :thumb
	pop     {r4-r6,pc}
@ 0x21d305a


.align 2


.word 0x21d59d8 @ 0x21d305c
.thumb
Function_21d3060: @ 21d3060 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x1
	ldr     r1, [r4, #0x10]
	lsl     r0, r0, #12
	str     r0, [r1, #0x38]
	str     r0, [r1, #0x3c]
	str     r0, [r1, #0x40]
	mov     r0, #0x3
	lsl     r0, r0, #18
	str     r0, [r1, #0x54]
	ldr     r0, [r4, #0x14]
	bl      Function_21d2c0c
	mov     r0, #0x2
	lsl     r0, r0, #14
	str     r0, [r4, #0xc]
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d308a


.align 2, 0


.thumb
Function_21d308c: @ 21d308c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r4, [r5, #0x10]
	ldr     r0, [r5, #0xc]
	ldr     r1, [r4, #0x54]
	sub     r0, r1, r0
	str     r0, [r4, #0x54]
	ldr     r0, [r5, #0x8]
	cmp     r0, #0x0
	bne     branch_21d30b6
	mov     r0, #0x1a
	ldr     r1, [r4, #0x54]
	lsl     r0, r0, #14
	cmp     r1, r0
	bgt     branch_21d30b6
	mov     r0, #0x1
	str     r0, [r5, #0x8]
	mov     r0, #0x65
	lsl     r0, r0, #4
	bl      Function_2005748
.thumb
branch_21d30b6: @ 21d30b6 :thumb
	mov     r0, #0x2
	ldr     r1, [r4, #0x54]
	lsl     r0, r0, #16
	cmp     r1, r0
	bgt     branch_21d30c6
	str     r0, [r4, #0x54]
	mov     r0, #0x2
	str     r0, [r5, #0x0]
.thumb
branch_21d30c6: @ 21d30c6 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d30ca


.align 2, 0


.thumb
Function_21d30cc: @ 21d30cc :thumb
	push    {r3,lr}
	mov     r1, #0x1
	ldr     r3, [r0, #0xc]
	lsl     r1, r1, #12
	ldr     r2, [r0, #0x10]
	cmp     r3, r1
	ble     branch_21d30e4
	sub     r3, r3, r1
	str     r3, [r0, #0xc]
	cmp     r3, r1
	bge     branch_21d30e4
	str     r1, [r0, #0xc]
.thumb
branch_21d30e4: @ 21d30e4 :thumb
	ldr     r3, [r2, #0x54]
	ldr     r1, [r0, #0xc]
	sub     r1, r3, r1
	str     r1, [r2, #0x54]
	cmp     r1, #0x0
	bgt     branch_21d310a
	mov     r1, #0x0
	str     r1, [r2, #0x54]
	ldr     r3, [r2, #0xc]
	ldr     r0, [r0, #0x14]
	lsl     r1, r3, #2
	add     r1, r0, r1
	add     r1, #0x98
	ldr     r1, [r1, #0x0]
	ldr     r2, [r2, #0x14]
	bl      Function_21d2874
	mov     r0, #0x2
	pop     {r3,pc}
@ 0x21d310a

.thumb
branch_21d310a: @ 21d310a :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d310e


.align 2, 0


.thumb
Function_21d3110: @ 21d3110 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	ldr     r1, [r5, #0x4]
	mov     r6, r0
	ldr     r4, [r5, #0x1c]
	cmp     r1, #0x0
	beq     branch_21d3124
	cmp     r1, #0x1
	beq     branch_21d313a
	pop     {r4-r6,pc}
@ 0x21d3124

.thumb
branch_21d3124: @ 21d3124 :thumb
	mov     r1, r4
	bl      Function_21d3328
	mov     r0, #0x1
	lsl     r0, r0, #14
	str     r0, [r5, #0x10]
	ldr     r0, [pc, #0x48] @ 0x21d317c, (=0xfffffbbc)
	str     r0, [r5, #0x14]
	ldr     r0, [r5, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x4]
.thumb
branch_21d313a: @ 21d313a :thumb
	ldr     r1, [r4, #0x54]
	ldr     r0, [r5, #0x10]
	add     r0, r1, r0
	str     r0, [r4, #0x54]
	ldr     r1, [r5, #0x10]
	ldr     r0, [r5, #0x14]
	add     r0, r1, r0
	str     r0, [r5, #0x10]
	ldr     r0, [r5, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x8]
	cmp     r0, #0xf
	blt     branch_21d317a
	mov     r1, #0x0
	str     r1, [r5, #0x8]
	str     r1, [r5, #0x10]
	ldr     r0, [r5, #0xc]
	cmp     r0, #0x0
	bne     branch_21d3166
	mov     r0, #0x1
	str     r0, [r5, #0xc]
	pop     {r4-r6,pc}
@ 0x21d3166

.thumb
branch_21d3166: @ 21d3166 :thumb
	str     r1, [r4, #0x54]
	mov     r0, r6
	mov     r1, r4
	bl      Function_21d3460
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, #0x20
	blx     0x20d5124
.thumb
branch_21d317a: @ 21d317a :thumb
	pop     {r4-r6,pc}
@ 0x21d317c

.word 0xfffffbbc @ 0x21d317c
.thumb
Function_21d3180: @ 21d3180 :thumb
	push    {r4-r6,lr}
	ldr     r0, [pc, #0x20] @ 0x21d31a4, (=0xab4)
	mov     r6, r1
	add     r5, r6, r0
	mov     r4, #0x0
.thumb
branch_21d318a: @ 21d318a :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_21d3198
	mov     r0, r6
	mov     r1, r5
	bl      Function_21d3110
.thumb
branch_21d3198: @ 21d3198 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x20
	cmp     r4, #0x5
	blt     branch_21d318a
	pop     {r4-r6,pc}
@ 0x21d31a2


.align 2


.word 0xab4 @ 0x21d31a4
.thumb
Function_21d31a8: @ 21d31a8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x28] @ 0x21d31d8, (=0xab4)
	mov     r1, #0x0
	add     r0, r4, r0
	mov     r2, #0xa0
	blx     0x20d5124
	mov     r2, #0x1
	ldr     r0, [pc, #0x20] @ 0x21d31dc, (=0x21d3181)
	mov     r1, r4
	lsl     r2, r2, #8
	bl      0x200d9e8
	mov     r1, #0xdb
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	cmp     r0, #0x0
	bne     branch_21d31d4
	bl      ErrorHandling
.thumb
branch_21d31d4: @ 21d31d4 :thumb
	pop     {r4,pc}
@ 0x21d31d6


.align 2


.word 0xab4 @ 0x21d31d8
.word 0x21d3181 @ 0x21d31dc
.thumb
Function_21d31e0: @ 21d31e0 :thumb
	mov     r1, #0xdb
	lsl     r1, r1, #4
	ldr     r3, [pc, #0x4] @ 0x21d31ec, (=0x200da59)
	ldr     r0, [r0, r1]
	bx      r3
@ 0x21d31ea


.align 2


.word 0x200da59 @ 0x21d31ec
.thumb
Function_21d31f0: @ 21d31f0 :thumb
	push    {r3,lr}
	ldr     r2, [pc, #0x20] @ 0x21d3214, (=0xab4)
	add     r3, r0, r2
	mov     r2, #0x0
.thumb
branch_21d31f8: @ 21d31f8 :thumb
	ldr     r0, [r3, #0x0]
	cmp     r0, #0x0
	bne     branch_21d3206
	mov     r0, #0x1
	str     r0, [r3, #0x0]
	str     r1, [r3, #0x1c]
	pop     {r3,pc}
@ 0x21d3206

.thumb
branch_21d3206: @ 21d3206 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r3, #0x20
	cmp     r2, #0x5
	blt     branch_21d31f8
	bl      ErrorHandling
	pop     {r3,pc}
@ 0x21d3214

.word 0xab4 @ 0x21d3214
.thumb
Function_21d3218: @ 21d3218 :thumb
	push    {r3-r7,lr}
	mov     r1, #0x19
	lsl     r1, r1, #4
	add     r4, r0, r1
	sub     r1, #0x50
	ldr     r7, [r0, #0x30]
	str     r0, [sp, #0x0]
	mov     r6, #0x0
	add     r5, r4, r1
.thumb
branch_21d322a: @ 21d322a :thumb
	mov     r0, #0x5
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21d323c
	ldr     r0, [sp, #0x0]
	mov     r1, r5
	bl      Function_21d31f0
.thumb
branch_21d323c: @ 21d323c :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0xb0
	add     r5, #0xb0
	cmp     r6, r7
	blt     branch_21d322a
	pop     {r3-r7,pc}
@ 0x21d3248

.thumb
Function_21d3248: @ 21d3248 :thumb
	ldr     r1, [pc, #0x18] @ 0x21d3264, (=0xab4)
	add     r2, r0, r1
	mov     r1, #0x0
.thumb
branch_21d324e: @ 21d324e :thumb
	ldr     r0, [r2, #0x0]
	cmp     r0, #0x0
	beq     branch_21d3258
	mov     r0, #0x1
	bx      lr
@ 0x21d3258

.thumb
branch_21d3258: @ 21d3258 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r2, #0x20
	cmp     r1, #0x5
	blt     branch_21d324e
	mov     r0, #0x0
	bx      lr
@ 0x21d3264

.word 0xab4 @ 0x21d3264
.thumb
Function_21d3268: @ 21d3268 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	ldr     r4, [r5, #0x10]
	cmp     r0, #0x0
	beq     branch_21d327a
	cmp     r0, #0x1
	beq     branch_21d328a
	pop     {r3-r5,pc}
@ 0x21d327a

.thumb
branch_21d327a: @ 21d327a :thumb
	mov     r0, #0x6
	lsl     r0, r0, #14
	str     r0, [r5, #0xc]
	mov     r0, #0x0
	str     r0, [r4, #0x30]
	ldr     r0, [r5, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x4]
.thumb
branch_21d328a: @ 21d328a :thumb
	mov     r0, r4
	ldr     r1, [r5, #0xc]
	add     r0, #0x30
	bl      Function_21d39d4
	mov     r0, #0x1
	ldr     r1, [r4, #0x30]
	lsl     r0, r0, #14
	cmp     r1, r0
	bge     branch_21d32b6
	ldr     r1, [r5, #0xc]
	lsr     r1, r1, #1
	str     r1, [r5, #0xc]
	cmp     r1, r0
	bge     branch_21d32b6
	mov     r1, #0x0
	str     r1, [r4, #0x30]
	mov     r0, #0x14
.thumb
branch_21d32ae: @ 21d32ae :thumb
	strb    r1, [r5, #0x0]
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1e40 @ sub r0, r0, #0x1
	bne     branch_21d32ae
.thumb
branch_21d32b6: @ 21d32b6 :thumb
	pop     {r3-r5,pc}
@ 0x21d32b8

.thumb
Function_21d32b8: @ 21d32b8 :thumb
	push    {r3-r5,lr}
	ldr     r0, [pc, #0x1c] @ 0x21d32d8, (=0xb54)
	mov     r4, #0x0
	add     r5, r1, r0
.thumb
branch_21d32c0: @ 21d32c0 :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_21d32cc
	mov     r0, r5
	bl      Function_21d3268
.thumb
branch_21d32cc: @ 21d32cc :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x14
	cmp     r4, #0x5
	blt     branch_21d32c0
	pop     {r3-r5,pc}
@ 0x21d32d6


.align 2


.word 0xb54 @ 0x21d32d8
.thumb
Function_21d32dc: @ 21d32dc :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x24] @ 0x21d3308, (=0xb54)
	mov     r1, #0x0
	add     r0, r4, r0
	mov     r2, #0x64
	blx     0x20d5124
	ldr     r0, [pc, #0x1c] @ 0x21d330c, (=0x21d32b9)
	ldr     r2, [pc, #0x20] @ 0x21d3310, (=0x101)
	mov     r1, r4
	bl      0x200d9e8
	ldr     r1, [pc, #0x1c] @ 0x21d3314, (=0xdb4)
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	cmp     r0, #0x0
	bne     branch_21d3304
	bl      ErrorHandling
.thumb
branch_21d3304: @ 21d3304 :thumb
	pop     {r4,pc}
@ 0x21d3306


.align 2


.word 0xb54 @ 0x21d3308
.word 0x21d32b9 @ 0x21d330c
.word 0x101 @ 0x21d3310
.word 0xdb4 @ 0x21d3314
.thumb
Function_21d3318: @ 21d3318 :thumb
	ldr     r1, [pc, #0x4] @ 0x21d3320, (=0xdb4)
	ldr     r3, [pc, #0x8] @ 0x21d3324, (=0x200da59)
	ldr     r0, [r0, r1]
	bx      r3
@ 0x21d3320

.word 0xdb4 @ 0x21d3320
.word 0x200da59 @ 0x21d3324
.thumb
Function_21d3328: @ 21d3328 :thumb
	push    {r4,lr}
	ldr     r2, [pc, #0x40] @ 0x21d336c, (=0xb54)
	mov     r3, #0x0
	add     r0, r0, r2
	mov     r4, r0
.thumb
branch_21d3332: @ 21d3332 :thumb
	ldr     r2, [r4, #0x0]
	cmp     r2, #0x1
	bne     branch_21d3344
	ldr     r2, [r4, #0x10]
	cmp     r2, r1
	bne     branch_21d3344
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	pop     {r4,pc}
@ 0x21d3344

.thumb
branch_21d3344: @ 21d3344 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	add     r4, #0x14
	cmp     r3, #0x5
	blt     branch_21d3332
	mov     r3, #0x0
.thumb
branch_21d334e: @ 21d334e :thumb
	ldr     r2, [r0, #0x0]
	cmp     r2, #0x0
	bne     branch_21d335c
	mov     r2, #0x1
	str     r2, [r0, #0x0]
	str     r1, [r0, #0x10]
	pop     {r4,pc}
@ 0x21d335c

.thumb
branch_21d335c: @ 21d335c :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	add     r0, #0x14
	cmp     r3, #0x5
	blt     branch_21d334e
	bl      ErrorHandling
	pop     {r4,pc}
@ 0x21d336a


.align 2


.word 0xb54 @ 0x21d336c
.thumb
Function_21d3370: @ 21d3370 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	ldr     r4, [r5, #0x14]
	cmp     r0, #0x0
	beq     branch_21d3382
	cmp     r0, #0x1
	beq     branch_21d339a
	pop     {r4-r6,pc}
@ 0x21d3382

.thumb
branch_21d3382: @ 21d3382 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x34]
	str     r0, [r5, #0x10]
	mov     r0, #0x1e
	lsl     r0, r0, #12
	str     r0, [r5, #0x8]
	mov     r0, #0x5
	lsl     r0, r0, #14
	str     r0, [r5, #0xc]
	ldr     r0, [r5, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x4]
.thumb
branch_21d339a: @ 21d339a :thumb
	ldr     r1, [r5, #0x10]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	lsl     r0, r0, #4
	lsr     r0, r0, #16
	bl      0x201d15c
	ldr     r2, [r5, #0x8]
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	asr     r2, r1, #12
	mov     r1, r2
	mul     r1, r0
	mov     r0, #0x0
	str     r0, [r4, #0x34]
	mov     r0, r4
	add     r0, #0x34
	bl      Function_21d39d4
	mov     r0, r5
	ldr     r1, [r5, #0xc]
	add     r0, #0x10
	ldr     r6, [r5, #0x10]
	bl      Function_21d39d4
	ldr     r0, [r5, #0x10]
	cmp     r0, r6
	bge     branch_21d33ec
	ldr     r0, [r5, #0x8]
	lsr     r0, r0, #1
	str     r0, [r5, #0x8]
	bne     branch_21d33ec
	mov     r1, #0x0
	str     r1, [r4, #0x34]
	mov     r0, #0x18
.thumb
branch_21d33e4: @ 21d33e4 :thumb
	strb    r1, [r5, #0x0]
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1e40 @ sub r0, r0, #0x1
	bne     branch_21d33e4
.thumb
branch_21d33ec: @ 21d33ec :thumb
	pop     {r4-r6,pc}
@ 0x21d33ee


.align 2, 0


.thumb
Function_21d33f0: @ 21d33f0 :thumb
	push    {r3-r5,lr}
	ldr     r0, [pc, #0x1c] @ 0x21d3410, (=0xbb8)
	mov     r4, #0x0
	add     r5, r1, r0
.thumb
branch_21d33f8: @ 21d33f8 :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_21d3404
	mov     r0, r5
	bl      Function_21d3370
.thumb
branch_21d3404: @ 21d3404 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x18
	cmp     r4, #0x5
	blt     branch_21d33f8
	pop     {r3-r5,pc}
@ 0x21d340e


.align 2


.word 0xbb8 @ 0x21d3410
.thumb
Function_21d3414: @ 21d3414 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x24] @ 0x21d3440, (=0xbb8)
	mov     r1, #0x0
	add     r0, r4, r0
	mov     r2, #0x78
	blx     0x20d5124
	ldr     r0, [pc, #0x1c] @ 0x21d3444, (=0x21d33f1)
	ldr     r2, [pc, #0x20] @ 0x21d3448, (=0x102)
	mov     r1, r4
	bl      0x200d9e8
	ldr     r1, [pc, #0x1c] @ 0x21d344c, (=0xdb8)
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	cmp     r0, #0x0
	bne     branch_21d343c
	bl      ErrorHandling
.thumb
branch_21d343c: @ 21d343c :thumb
	pop     {r4,pc}
@ 0x21d343e


.align 2


.word 0xbb8 @ 0x21d3440
.word 0x21d33f1 @ 0x21d3444
.word 0x102 @ 0x21d3448
.word 0xdb8 @ 0x21d344c
.thumb
Function_21d3450: @ 21d3450 :thumb
	ldr     r1, [pc, #0x4] @ 0x21d3458, (=0xdb8)
	ldr     r3, [pc, #0x8] @ 0x21d345c, (=0x200da59)
	ldr     r0, [r0, r1]
	bx      r3
@ 0x21d3458

.word 0xdb8 @ 0x21d3458
.word 0x200da59 @ 0x21d345c
.thumb
Function_21d3460: @ 21d3460 :thumb
	push    {r4,lr}
	ldr     r2, [pc, #0x40] @ 0x21d34a4, (=0xbb8)
	mov     r3, #0x0
	add     r0, r0, r2
	mov     r4, r0
.thumb
branch_21d346a: @ 21d346a :thumb
	ldr     r2, [r4, #0x0]
	cmp     r2, #0x1
	bne     branch_21d347c
	ldr     r2, [r4, #0x14]
	cmp     r2, r1
	bne     branch_21d347c
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	pop     {r4,pc}
@ 0x21d347c

.thumb
branch_21d347c: @ 21d347c :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	add     r4, #0x18
	cmp     r3, #0x5
	blt     branch_21d346a
	mov     r3, #0x0
.thumb
branch_21d3486: @ 21d3486 :thumb
	ldr     r2, [r0, #0x0]
	cmp     r2, #0x0
	bne     branch_21d3494
	mov     r2, #0x1
	str     r2, [r0, #0x0]
	str     r1, [r0, #0x14]
	pop     {r4,pc}
@ 0x21d3494

.thumb
branch_21d3494: @ 21d3494 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	add     r0, #0x18
	cmp     r3, #0x5
	blt     branch_21d3486
	bl      ErrorHandling
	pop     {r4,pc}
@ 0x21d34a2


.align 2


.word 0xbb8 @ 0x21d34a4
.thumb
Function_21d34a8: @ 21d34a8 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r2, [r4, #0x0]
	mov     r1, r0
	add     r1, #0xd4
	cmp     r2, #0x5
	bhi     branch_21d3564
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x21d34c2

Jumppoints_21d34c2:
.hword branch_21d3564 - Jumppoints_21d34c2 - 2
.hword branch_21d34ce - Jumppoints_21d34c2 - 2
.hword branch_21d34de - Jumppoints_21d34c2 - 2
.hword branch_21d34f6 - Jumppoints_21d34c2 - 2
.hword branch_21d351c - Jumppoints_21d34c2 - 2
.hword branch_21d354e - Jumppoints_21d34c2 - 2
.thumb
branch_21d34ce: @ 21d34ce :thumb
	mov     r0, #0x1
	lsl     r0, r0, #14
	str     r0, [r4, #0x10]
	mov     r0, #0x0
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_21d34de: @ 21d34de :thumb
	mov     r0, #0x1
	ldr     r2, [r1, #0x34]
	lsl     r0, r0, #12
	sub     r2, r2, r0
	ldr     r0, [pc, #0x80] @ 0x21d3568, (=0xffff8000)
	str     r2, [r1, #0x34]
	cmp     r2, r0
	bgt     branch_21d3564
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x21d34f6

.thumb
branch_21d34f6: @ 21d34f6 :thumb
	mov     r2, #0x2
	ldr     r3, [r1, #0x34]
	lsl     r2, r2, #12
	add     r2, r3, r2
	str     r2, [r1, #0x34]
	bmi     branch_21d3564
	mov     r2, #0x0
	str     r2, [r1, #0x34]
	bl      Function_21d3218
	mov     r0, #0x1
	str     r0, [r4, #0x4]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	ldr     r0, [pc, #0x54] @ 0x21d356c, (=0x657)
	bl      Function_2005748
	pop     {r4,pc}
@ 0x21d351c

.thumb
branch_21d351c: @ 21d351c :thumb
	ldr     r0, [r4, #0x10]
	str     r0, [r1, #0x28]
	ldr     r0, [r4, #0x10]
	neg     r0, r0
	str     r0, [r4, #0x10]
	ldr     r0, [r4, #0xc]
	add     r2, r0, #0x1
	mov     r0, #0x3
	str     r2, [r4, #0xc]
	tst     r0, r2
	bne     branch_21d3564
	mov     r0, #0x1
	ldr     r2, [r4, #0x10]
	lsl     r0, r0, #12
	cmp     r2, r0
	bgt     branch_21d3548
	mov     r0, #0x0
	str     r0, [r1, #0x28]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x21d3548

.thumb
branch_21d3548: @ 21d3548 :thumb
	asr     r0, r2, #1
	str     r0, [r4, #0x10]
	pop     {r4,pc}
@ 0x21d354e

.thumb
branch_21d354e: @ 21d354e :thumb
	bl      Function_21d3248
	cmp     r0, #0x0
	bne     branch_21d3564
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	str     r0, [r4, #0x4]
	str     r0, [r4, #0x0]
	ldr     r0, [pc, #0x10] @ 0x21d3570, (=0x631)
	bl      Function_2005748
.thumb
branch_21d3564: @ 21d3564 :thumb
	pop     {r4,pc}
@ 0x21d3566


.align 2


.word 0xffff8000 @ 0x21d3568
.word 0x657 @ 0x21d356c
.word 0x631 @ 0x21d3570
.thumb
Function_21d3574: @ 21d3574 :thumb
	mov     r2, #0xc3
	ldr     r3, [pc, #0x8] @ 0x21d3580, (=0x21d34a9)
	lsl     r2, r2, #4
	mov     r0, r1
	add     r1, r1, r2
	bx      r3
@ 0x21d3580

.word 0x21d34a9 @ 0x21d3580
.thumb
Function_21d3584: @ 21d3584 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xc3
	lsl     r0, r0, #4
	add     r2, r4, r0
	mov     r1, #0x14
	mov     r0, #0x0
.thumb
branch_21d3592: @ 21d3592 :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_21d3592
	ldr     r0, [pc, #0x18] @ 0x21d35b4, (=0x21d3575)
	mov     r1, r4
	mov     r2, #0xff
	bl      0x200d9e8
	ldr     r1, [pc, #0x10] @ 0x21d35b8, (=0xdbc)
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	cmp     r0, #0x0
	bne     branch_21d35b2
	bl      ErrorHandling
.thumb
branch_21d35b2: @ 21d35b2 :thumb
	pop     {r4,pc}
@ 0x21d35b4

.word 0x21d3575 @ 0x21d35b4
.word 0xdbc @ 0x21d35b8
.thumb
Function_21d35bc: @ 21d35bc :thumb
	ldr     r1, [pc, #0x4] @ 0x21d35c4, (=0xdbc)
	ldr     r3, [pc, #0x8] @ 0x21d35c8, (=0x200da59)
	ldr     r0, [r0, r1]
	bx      r3
@ 0x21d35c4

.word 0xdbc @ 0x21d35c4
.word 0x200da59 @ 0x21d35c8
.thumb
Function_21d35cc: @ 21d35cc :thumb
	push    {r4,lr}
	mov     r1, #0xc3
	lsl     r1, r1, #4
	add     r4, r0, r1
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_21d35de
	bl      ErrorHandling
.thumb
branch_21d35de: @ 21d35de :thumb
	mov     r0, #0x1
	str     r0, [r4, #0x8]
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x21d35e6


.align 2, 0


.thumb
Function_21d35e8: @ 21d35e8 :thumb
	ldr     r1, [pc, #0x4] @ 0x21d35f0, (=0xc34)
	ldr     r0, [r0, r1]
	bx      lr
@ 0x21d35ee


.align 2


.word 0xc34 @ 0x21d35f0
.thumb
Function_21d35f4: @ 21d35f4 :thumb
	ldr     r1, [pc, #0x4] @ 0x21d35fc, (=0xc38)
	ldr     r0, [r0, r1]
	bx      lr
@ 0x21d35fa


.align 2


.word 0xc38 @ 0x21d35fc
.thumb
Function_21d3600: @ 21d3600 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_21d3616
	cmp     r0, #0x1
	beq     branch_21d366a
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x21d3616

.thumb
branch_21d3616: @ 21d3616 :thumb
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x4
	bge     branch_21d364c
	ldr     r5, [pc, #0x60] @ 0x21d3680, (=0x21d59e4)
	add     r3, sp, #0x0
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r4, #0x4]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x4]
	cmp     r0, #0x0
	bgt     branch_21d364c
	mov     r0, #0x1e
	str     r0, [r4, #0x4]
	ldr     r0, [r4, #0xc]
	lsl     r0, r0, #2
	ldr     r0, [r2, r0]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_2005748
	ldr     r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
.thumb
branch_21d364c: @ 21d364c :thumb
	mov     r1, #0x6
	ldr     r0, [r4, #0x14]
	lsl     r1, r1, #10
	bl      0x200d34c
	ldr     r0, [r4, #0x14]
	bl      0x200d3b8
	cmp     r0, #0x0
	bne     branch_21d367c
	ldr     r0, [r4, #0x0]
	add     sp, #0x10
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x21d366a

.thumb
branch_21d366a: @ 21d366a :thumb
	ldr     r0, [r4, #0x14]
	bl      0x200d0f4
	mov     r0, r4
	bl      free
	mov     r0, r5
	bl      Function_200da58
.thumb
branch_21d367c: @ 21d367c :thumb
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x21d3680

.word 0x21d59e4 @ 0x21d3680
.thumb
Function_21d3684: @ 21d3684 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x34
	mov     r5, r0
	mov     r0, #0x5f
	mov     r1, #0x18
	bl      malloc2_maybe
	mov     r4, r0
	mov     r2, r4
	mov     r1, #0x18
	mov     r0, #0x0
.thumb
branch_21d369a: @ 21d369a :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_21d369a
	mov     r1, #0x80
	add     r0, sp, #0x0
	strh    r1, [r0, #0x0]
	mov     r1, #0x64
	strh    r1, [r0, #0x2]
	mov     r1, #0x0
	strh    r1, [r0, #0x4]
	strh    r1, [r0, #0x6]
	mov     r0, #0x1
	str     r0, [sp, #0x10]
	mov     r0, #0x4
	str     r0, [sp, #0x14]
	mov     r0, #0x5
	str     r0, [sp, #0x18]
	mov     r0, #0x6
	str     r0, [sp, #0x1c]
	mov     r0, #0x7
	str     r0, [sp, #0x20]
	sub     r0, #0x8
	str     r1, [sp, #0x8]
	str     r1, [sp, #0xc]
	str     r1, [sp, #0x2c]
	str     r1, [sp, #0x30]
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
	mov     r0, r5
	add     r1, sp, #0x0
	bl      Function_21d24e0
	str     r0, [r4, #0x14]
	bl      0x200d330
	ldr     r0, [pc, #0x18] @ 0x21d36fc, (=0x21d3601)
	mov     r1, r4
	mov     r2, #0x0
	str     r5, [r4, #0x10]
	bl      0x200d9e8
	mov     r4, r0
	bne     branch_21d36f6
	bl      ErrorHandling
.thumb
branch_21d36f6: @ 21d36f6 :thumb
	mov     r0, r4
	add     sp, #0x34
	pop     {r4,r5,pc}
@ 0x21d36fc

.word 0x21d3601 @ 0x21d36fc
.thumb
Function_21d3700: @ 21d3700 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldrh    r1, [r4, #0x0]
	mov     r5, r0
	cmp     r1, #0x4
	bhi     branch_21d3780
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d3718

Jumppoints_21d3718:
.hword branch_21d3780 - Jumppoints_21d3718 - 2
.hword branch_21d3722 - Jumppoints_21d3718 - 2
.hword branch_21d3736 - Jumppoints_21d3718 - 2
.hword branch_21d3752 - Jumppoints_21d3718 - 2
.hword branch_21d376c - Jumppoints_21d3718 - 2
.thumb
branch_21d3722: @ 21d3722 :thumb
	bl      Function_21d228c
	ldr     r0, [pc, #0x5c] @ 0x21d3784, (=0x5e4)
	bl      Function_2005748
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
.thumb
branch_21d3736: @ 21d3736 :thumb
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	cmp     r0, #0x2
	blt     branch_21d3780
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	mov     r0, r5
	bl      Function_21d22a4
	pop     {r3-r5,pc}
@ 0x21d3752

.thumb
branch_21d3752: @ 21d3752 :thumb
	ldr     r1, [r4, #0x4]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, #0x4]
	cmp     r1, #0x4
	blt     branch_21d3780
	bl      Function_21d228c
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x21d376c

.thumb
branch_21d376c: @ 21d376c :thumb
	ldr     r1, [r4, #0x4]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, #0x4]
	cmp     r1, #0x2
	blt     branch_21d3780
	bl      Function_21d2298
	mov     r0, #0x0
	strh    r0, [r4, #0x2]
	strh    r0, [r4, #0x0]
.thumb
branch_21d3780: @ 21d3780 :thumb
	pop     {r3-r5,pc}
@ 0x21d3782


.align 2


.word 0x5e4 @ 0x21d3784
.thumb
Function_21d3788: @ 21d3788 :thumb
	ldr     r2, [pc, #0x8] @ 0x21d3794, (=0xc44)
	ldr     r3, [pc, #0xc] @ 0x21d3798, (=0x21d3701)
	mov     r0, r1
	add     r1, r1, r2
	bx      r3
@ 0x21d3792


.align 2


.word 0xc44 @ 0x21d3794
.word 0x21d3701 @ 0x21d3798
.thumb
Function_21d379c: @ 21d379c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x30] @ 0x21d37d4, (=0xc44)
	ldr     r2, [pc, #0x34] @ 0x21d37d8, (=0x103)
	add     r1, r4, r0
	mov     r0, #0x0
	strb    r0, [r1, #0x0]
	strb    r0, [r1, #0x1]
	strb    r0, [r1, #0x2]
	strb    r0, [r1, #0x3]
	strb    r0, [r1, #0x4]
	strb    r0, [r1, #0x5]
	strb    r0, [r1, #0x6]
	strb    r0, [r1, #0x7]
	ldr     r0, [pc, #0x20] @ 0x21d37dc, (=0x21d3789)
	mov     r1, r4
	bl      0x200d9e8
	mov     r1, #0x37
	lsl     r1, r1, #6
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	cmp     r0, #0x0
	bne     branch_21d37d0
	bl      ErrorHandling
.thumb
branch_21d37d0: @ 21d37d0 :thumb
	pop     {r4,pc}
@ 0x21d37d2


.align 2


.word 0xc44 @ 0x21d37d4
.word 0x103 @ 0x21d37d8
.word 0x21d3789 @ 0x21d37dc
.thumb
Function_21d37e0: @ 21d37e0 :thumb
	mov     r1, #0x37
	lsl     r1, r1, #6
	ldr     r3, [pc, #0x4] @ 0x21d37ec, (=0x200da59)
	ldr     r0, [r0, r1]
	bx      r3
@ 0x21d37ea


.align 2


.word 0x200da59 @ 0x21d37ec
.thumb
Function_21d37f0: @ 21d37f0 :thumb
	ldr     r1, [pc, #0x4] @ 0x21d37f8, (=0xc46)
	ldrh    r0, [r0, r1]
	bx      lr
@ 0x21d37f6


.align 2


.word 0xc46 @ 0x21d37f8
.thumb
Function_21d37fc: @ 21d37fc :thumb
	push    {r4,lr}
	ldr     r1, [pc, #0x14] @ 0x21d3814, (=0xc44)
	add     r4, r0, r1
	ldrh    r0, [r4, #0x2]
	cmp     r0, #0x0
	beq     branch_21d380c
	bl      ErrorHandling
.thumb
branch_21d380c: @ 21d380c :thumb
	mov     r0, #0x1
	strh    r0, [r4, #0x2]
	strh    r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x21d3814

.word 0xc44 @ 0x21d3814
.thumb
Function_21d3818: @ 21d3818 :thumb
	ldr     r0, [r1, #0x0]
	cmp     r0, #0x0
	beq     branch_21d385e
	cmp     r0, #0x1
	beq     branch_21d3828
	cmp     r0, #0x2
	beq     branch_21d384c
	bx      lr
@ 0x21d3828

.thumb
branch_21d3828: @ 21d3828 :thumb
	ldr     r0, [r1, #0x4]
	lsl     r2, r0, #2
	ldr     r0, [pc, #0x30] @ 0x21d3860, (=0x21d5f20)
	ldr     r0, [r0, r2]
	lsl     r2, r0, #12
	ldr     r0, [r1, #0xc]
	str     r2, [r0, #0x54]
	ldr     r0, [r1, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r1, #0x4]
	cmp     r0, #0x10
	blt     branch_21d385e
	mov     r0, #0x0
	str     r0, [r1, #0x4]
	ldr     r0, [r1, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r1, #0x0]
	bx      lr
@ 0x21d384c

.thumb
branch_21d384c: @ 21d384c :thumb
	ldr     r0, [r1, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r1, #0x8]
	cmp     r0, #0xf
	blt     branch_21d385e
	mov     r0, #0x0
	str     r0, [r1, #0x8]
	mov     r0, #0x1
	str     r0, [r1, #0x0]
.thumb
branch_21d385e: @ 21d385e :thumb
	bx      lr
@ 0x21d3860

.word 0x21d5f20 @ 0x21d3860
.thumb
Function_21d3864: @ 21d3864 :thumb
	push    {r4-r6,lr}
	ldr     r0, [pc, #0x18] @ 0x21d3880, (=0xc4c)
	mov     r6, r1
	add     r5, r6, r0
	mov     r4, #0x0
.thumb
branch_21d386e: @ 21d386e :thumb
	mov     r0, r6
	mov     r1, r5
	bl      Function_21d3818
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x5
	blt     branch_21d386e
	pop     {r4-r6,pc}
@ 0x21d3880

.word 0xc4c @ 0x21d3880
.thumb
Function_21d3884: @ 21d3884 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x24] @ 0x21d38b0, (=0xc4c)
	mov     r1, #0x0
	add     r0, r4, r0
	mov     r2, #0x50
	blx     0x20d5124
	mov     r2, #0x41
	ldr     r0, [pc, #0x1c] @ 0x21d38b4, (=0x21d3865)
	mov     r1, r4
	lsl     r2, r2, #2
	bl      0x200d9e8
	ldr     r1, [pc, #0x14] @ 0x21d38b8, (=0xdc4)
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	cmp     r0, #0x0
	bne     branch_21d38ae
	bl      ErrorHandling
.thumb
branch_21d38ae: @ 21d38ae :thumb
	pop     {r4,pc}
@ 0x21d38b0

.word 0xc4c @ 0x21d38b0
.word 0x21d3865 @ 0x21d38b4
.word 0xdc4 @ 0x21d38b8
.thumb
Function_21d38bc: @ 21d38bc :thumb
	ldr     r1, [pc, #0x4] @ 0x21d38c4, (=0xdc4)
	ldr     r3, [pc, #0x8] @ 0x21d38c8, (=0x200da59)
	ldr     r0, [r0, r1]
	bx      r3
@ 0x21d38c4

.word 0xdc4 @ 0x21d38c4
.word 0x200da59 @ 0x21d38c8
.thumb
Function_21d38cc: @ 21d38cc :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r1, [pc, #0x20] @ 0x21d38f4, (=0xc4c)
	ldr     r2, [r5, #0xc]
	add     r1, r0, r1
	lsl     r0, r2, #4
	add     r4, r1, r0
	cmp     r2, #0x5
	blt     branch_21d38e2
	bl      ErrorHandling
.thumb
branch_21d38e2: @ 21d38e2 :thumb
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_21d38ec
	bl      ErrorHandling
.thumb
branch_21d38ec: @ 21d38ec :thumb
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	str     r5, [r4, #0xc]
	pop     {r3-r5,pc}
@ 0x21d38f4

.word 0xc4c @ 0x21d38f4
.thumb
Function_21d38f8: @ 21d38f8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	str     r0, [sp, #0x0]
	ldr     r0, [r0, #0x20]
	mov     r1, #0x19
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	lsl     r1, r1, #4
	ldr     r7, [r0, #0x30]
	mov     r6, #0x0
	add     r4, r0, r1
	cmp     r7, #0x0
	ble     branch_21d3944
	sub     r1, #0x50
	add     r5, r4, r1
.thumb
branch_21d3916: @ 21d3916 :thumb
	mov     r0, #0x5
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21d393a
	mov     r0, #0x53
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	mov     r0, #0x1
	mov     r2, r0
	lsl     r2, r1
	ldr     r0, [sp, #0x4]
	tst     r0, r2
	beq     branch_21d393a
	ldr     r0, [sp, #0x0]
	mov     r1, r5
	bl      Function_21d38cc
.thumb
branch_21d393a: @ 21d393a :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0xb0
	add     r5, #0xb0
	cmp     r6, r7
	blt     branch_21d3916
.thumb
branch_21d3944: @ 21d3944 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d3948

.thumb
Function_21d3948: @ 21d3948 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r6, r0
	ldr     r0, [r5, #0x4]
	mov     r4, #0x0
	cmp     r0, #0x1
	ldr     r0, [r5, #0x8]
	bne     branch_21d3966
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r5, #0x8]
	cmp     r0, #0x0
	bgt     branch_21d3974
	str     r4, [r5, #0x8]
	mov     r4, #0x1
	b       branch_21d3974
@ 0x21d3966

.thumb
branch_21d3966: @ 21d3966 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x8]
	cmp     r0, #0x8
	blt     branch_21d3974
	mov     r0, #0x8
	str     r0, [r5, #0x8]
	mov     r4, #0x1
.thumb
branch_21d3974: @ 21d3974 :thumb
	ldr     r0, [r5, #0x0]
	ldr     r1, [r5, #0x8]
	bl      Function_21d2344
	cmp     r4, #0x1
	bne     branch_21d398c
	mov     r0, r5
	bl      free
	mov     r0, r6
	bl      Function_200da58
branch_21d398c: @ 21d398c :thumb
	pop     {r4-r6,pc}
@ 0x21d398e


.align 2, 0
.thumb
Function_21d3990: @ 21d3990 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r0, [pc, #0x34] @ 0x21d39cc, (=Unknown_21d59ac)
	mov     r4, r1
	ldr     r1, [r0, #0x1c]
	ldr     r0, [r0, #0x20]
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x5f
	mov     r1, #0xc
	bl      malloc2_maybe
	mov     r1, r0
	str     r5, [r1, #0x0]
	lsl     r2, r4, #2
	add     r0, sp, #0x0
	ldr     r0, [r0, r2]
	str     r4, [r1, #0x4]
	str     r0, [r1, #0x8]
	ldr     r0, [pc, #0x14] @ 0x21d39d0, (=0x21d3949)
	mov     r2, #0x0
	bl      0x200d9e8
	cmp     r0, #0x0
	bne     branch_21d39c8
	bl      ErrorHandling
branch_21d39c8: @ 21d39c8 :thumb
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x21d39cc

.word Unknown_21d59ac @ 0x21d39cc
.word 0x21d3949 @ 0x21d39d0



.thumb
Function_21d39d4: @ 21d39d4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	add     r0, r0, r1
	str     r0, [r4, #0x0]
	bpl     branch_21d39ec
	mov     r0, #0x5a
	lsl     r0, r0, #14
.thumb
branch_21d39e4: @ 21d39e4 :thumb
	ldr     r1, [r4, #0x0]
	add     r1, r1, r0
	str     r1, [r4, #0x0]
	bmi     branch_21d39e4
.thumb
branch_21d39ec: @ 21d39ec :thumb
	mov     r1, #0x5a
	ldr     r0, [r4, #0x0]
	lsl     r1, r1, #14
	blx     _s32_div_f
	str     r1, [r4, #0x0]
	pop     {r4,pc}
@ 0x21d39fa


.align 2, 0


.thumb
Function_21d39fc: @ 21d39fc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	add     r0, #0xd4
	bl      Function_21d2ae4
	mov     r0, r5
	mov     r1, r4
	bl      Function_21d2d44
	pop     {r3-r5,pc}
@ 0x21d3a12


.align 2, 0


.thumb
Function_21d3a14: @ 21d3a14 :thumb
	ldr     r1, [r0, #0x8]
	add     r2, r1, #0x1
	mov     r1, #0x96
	lsl     r1, r1, #2
	str     r2, [r0, #0x8]
	cmp     r2, r1
	bge     branch_21d3a26
	mov     r0, #0x0
	bx      lr
@ 0x21d3a26

.thumb
branch_21d3a26: @ 21d3a26 :thumb
	str     r1, [r0, #0x8]
	mov     r0, #0x1
	bx      lr
@ 0x21d3a2c

.thumb
Function_21d3a2c: @ 21d3a2c :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	mov     r0, #0x36
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	mov     r6, r1
	mov     r5, r2
	bl      0x2006d84
	mov     r1, r0
	cmp     r5, #0x1
	bne     branch_21d3a4c
	mov     r0, #0x5f
	bl      malloc_maybe
	b       branch_21d3a52
@ 0x21d3a4c

.thumb
branch_21d3a4c: @ 21d3a4c :thumb
	mov     r0, #0x5f
	bl      malloc2_maybe
.thumb
branch_21d3a52: @ 21d3a52 :thumb
	mov     r5, r0
	mov     r0, #0x36
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	mov     r1, r6
	mov     r2, r5
	bl      0x2006d28
	mov     r0, r5
	pop     {r4-r6,pc}
@ 0x21d3a66


.align 2, 0


.thumb
Function_21d3a68: @ 21d3a68 :thumb
	cmp     r1, #0x0
	beq     branch_21d3a6e
	str     r1, [r0, #0x34]
.thumb
branch_21d3a6e: @ 21d3a6e :thumb
	bx      lr
@ 0x21d3a70

.thumb
Function_21d3a70: @ 21d3a70 :thumb
	mov     r2, #0x1
	str     r2, [r0, #0x3c]
	ldrh    r3, [r1, #0x0]
	mov     r2, r0
	add     r2, #0x58
	strh    r3, [r2, #0x0]
	mov     r2, r0
	ldrh    r3, [r1, #0x2]
	add     r2, #0x5a
	strh    r3, [r2, #0x0]
	mov     r2, r0
	ldrh    r3, [r1, #0x4]
	add     r2, #0x5c
	add     r0, #0x5e
	strh    r3, [r2, #0x0]
	ldrh    r1, [r1, #0x6]
	strh    r1, [r0, #0x0]
	bx      lr
@ 0x21d3a94

.thumb
Function_21d3a94: @ 21d3a94 :thumb
	push    {r4,lr}
	mov     r4, r0
	cmp     r1, #0x20
	bcc     branch_21d3aa0
	bl      ErrorHandling
.thumb
branch_21d3aa0: @ 21d3aa0 :thumb
	mov     r0, r4
	add     r0, #0xac
	mov     r1, #0x0
	mov     r2, #0x20
	blx     0x20d5124
	add     r4, #0xac
	mov     r0, r4
	pop     {r4,pc}
@ 0x21d3ab2


.align 2, 0


.thumb
Function_21d3ab4: @ 21d3ab4 :thumb
	add     r0, #0xac
	bx      lr
@ 0x21d3ab8

.thumb
Function_21d3ab8: @ 21d3ab8 :thumb
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	add     r0, #0x40
	ldrh    r0, [r0, #0x0]
	tst     r0, r1
	beq     branch_21d3ac8
	mov     r0, #0x1
	bx      lr
@ 0x21d3ac8

.thumb
branch_21d3ac8: @ 21d3ac8 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21d3acc

.thumb
Function_21d3acc: @ 21d3acc :thumb
	push    {r3,r4}
	mov     r1, r0
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	add     r1, #0xcc
	ldr     r1, [r1, #0x0]
	add     r0, #0x42
	ldr     r1, [r1, #0x8]
	ldrh    r4, [r0, #0x0]
	mov     r2, #0x0
	.hword  0x1e4b @ sub r3, r1, #0x1
	cmp     r4, #0x0
	beq     branch_21d3af2
	mov     r0, #0x1
.thumb
branch_21d3ae8: @ 21d3ae8 :thumb
	mov     r1, r4
	and     r1, r0
	add     r2, r2, r1
	lsr     r4, r4, #1
	bne     branch_21d3ae8
.thumb
branch_21d3af2: @ 21d3af2 :thumb
	cmp     r2, r3
	blt     branch_21d3afc
	mov     r0, #0x1
	pop     {r3,r4}
	bx      lr
@ 0x21d3afc

.thumb
branch_21d3afc: @ 21d3afc :thumb
	mov     r0, #0x0
	pop     {r3,r4}
	bx      lr
@ 0x21d3b02


.align 2, 0


.thumb
Function_21d3b04: @ 21d3b04 :thumb
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	mov     r2, #0x0
	add     r0, #0x42
	ldrh    r3, [r0, #0x0]
	cmp     r3, #0x0
	beq     branch_21d3b1e
	mov     r0, #0x1
.thumb
branch_21d3b14: @ 21d3b14 :thumb
	mov     r1, r3
	and     r1, r0
	add     r2, r2, r1
	lsr     r3, r3, #1
	bne     branch_21d3b14
.thumb
branch_21d3b1e: @ 21d3b1e :thumb
	mov     r0, r2
	bx      lr
@ 0x21d3b22


.align 2, 0


.thumb
Function_21d3b24: @ 21d3b24 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldrh    r0, [r4, #0x0]
	ldrh    r1, [r4, #0x0]
	lsl     r2, r0, #2
	add     r0, r5, r2
	add     r0, #0x70
	strh    r1, [r0, #0x0]
	add     r0, r5, r2
	ldrh    r1, [r4, #0x2]
	add     r0, #0x72
	strh    r1, [r0, #0x0]
	bl      Function_203608c
	ldrh    r1, [r4, #0x2]
	cmp     r1, r0
	bne     branch_21d3b4c
	ldrh    r0, [r4, #0x0]
	str     r0, [r5, #0x2c]
.thumb
branch_21d3b4c: @ 21d3b4c :thumb
	pop     {r3-r5,pc}
@ 0x21d3b4e


.align 2, 0


.thumb
Function_21d3b50: @ 21d3b50 :thumb
	str     r1, [r0, #0x30]
	bx      lr
@ 0x21d3b54

.thumb
Function_21d3b54: @ 21d3b54 :thumb
	cmp     r1, #0x0
	beq     branch_21d3b6c
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	add     r0, #0x42
	ldrh    r2, [r0, #0x0]
	mov     r0, #0x1
	lsl     r0, r1
	tst     r0, r2
	bne     branch_21d3b6c
	mov     r0, #0x0
	bx      lr
@ 0x21d3b6c

.thumb
branch_21d3b6c: @ 21d3b6c :thumb
	mov     r0, #0x1
	bx      lr
@ 0x21d3b70

.thumb
Function_21d3b70: @ 21d3b70 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	mov     r5, r1
	ldr     r6, [r4, #0x24]
	bl      0x209c188
	mov     r7, r0
	lsl     r0, r5, #2
	add     r0, r4, r0
	add     r4, #0xcc
	ldr     r1, [r4, #0x0]
	ldr     r5, [r0, #0x44]
	ldr     r1, [r1, #0x4]
	mov     r0, r6
	bl      GetAdrOfPkmnInParty
	mov     r4, r0
	mov     r0, r7
	mov     r1, r5
	bl      GetAdrOfPkmnInParty
	mov     r5, r0
	bl      Function_203608c
	bl      0x2032ee8
	mov     r1, r0
	mov     r0, #0xb
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r2, #0x5
	mov     r3, #0x0
	bl      0x209304c
	mov     r0, r5
	mov     r1, r4
	bl      Function_20775ec
	pop     {r3-r7,pc}
@ 0x21d3bc2


.align 2, 0


.thumb
Function_21d3bc4: @ 21d3bc4 :thumb
	add     r0, #0xd0
	ldr     r1, [r0, #0x0]
	mov     r0, #0x46
	ldsh    r3, [r1, r0]
	mov     r2, #0x0
	cmp     r3, #0x0
	beq     branch_21d3bde
	mov     r0, #0x1
.thumb
branch_21d3bd4: @ 21d3bd4 :thumb
	mov     r1, r3
	and     r1, r0
	add     r2, r2, r1
	lsr     r3, r3, #1
	bne     branch_21d3bd4
.thumb
branch_21d3bde: @ 21d3bde :thumb
	mov     r0, r2
	bx      lr
@ 0x21d3be2


.align 2, 0


.thumb
Function_21d3be4: @ 21d3be4 :thumb
	lsl     r1, r1, #2
	add     r0, r0, r1
	str     r2, [r0, #0x44]
	bx      lr
@ 0x21d3bec

.thumb
Function_21d3bec: @ 21d3bec :thumb
	push    {r3,r4}
	mov     r4, r0
	add     r4, #0x60
	mov     r3, #0x8
.thumb
branch_21d3bf4: @ 21d3bf4 :thumb
	ldrh    r2, [r1, #0x0]
	.hword  0x1c89 @ add r1, r1, #0x2
	strh    r2, [r4, #0x0]
	.hword  0x1ca4 @ add r4, r4, #0x2
	.hword  0x1e5b @ sub r3, r3, #0x1
	bne     branch_21d3bf4
	mov     r1, #0x1
	str     r1, [r0, #0x40]
	pop     {r3,r4}
	bx      lr
@ 0x21d3c08

.thumb
Function_21d3c08: @ 21d3c08 :thumb
	push    {r0-r3}
.thumb
Function_21d3c0a: @ 21d3c0a :thumb
	push    {r3-r5,lr}
	mov     r1, #0x11
	mov     r3, r0
	lsl     r1, r1, #4
	ldr     r1, [r3, r1]
	add     r0, sp, #0x14
	neg     r1, r1
	mov     r4, r2
	bl      Function_21d39d4
	ldr     r0, [sp, #0x14]
	ldr     r1, [pc, #0x68] @ 0x21d3c8c, (=0xffffc000)
	str     r0, [sp, #0x0]
	add     r0, sp, #0x0
	bl      Function_21d39d4
	ldr     r1, [sp, #0x0]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r5, r0, #12
	ldr     r0, [sp, #0x14]
	mov     r1, #0x5
	str     r0, [sp, #0x0]
	add     r0, sp, #0x0
	lsl     r1, r1, #12
	bl      Function_21d39d4
	ldr     r1, [sp, #0x0]
	ldr     r2, [pc, #0x48] @ 0x21d3c90, (=0x21d5c14)
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	lsl     r1, r4, #3
	add     r3, r2, r1
	ldr     r2, [r2, r1]
	asr     r0, r0, #12
	ldr     r3, [r3, #0x4]
	cmp     r2, #0x0
	beq     branch_21d3c80
.thumb
branch_21d3c5a: @ 21d3c5a :thumb
	ldrh    r4, [r3, #0x0]
	cmp     r5, r4
	bcc     branch_21d3c66
	ldrh    r1, [r3, #0x2]
	cmp     r5, r1
	bls     branch_21d3c70
.thumb
branch_21d3c66: @ 21d3c66 :thumb
	cmp     r0, r4
	bcc     branch_21d3c7a
	ldrh    r1, [r3, #0x2]
	cmp     r0, r1
	bhi     branch_21d3c7a
.thumb
branch_21d3c70: @ 21d3c70 :thumb
	mov     r0, #0x1
	pop     {r3-r5}
	pop     {r3}
	add     sp, #0x10
	bx      r3
@ 0x21d3c7a

.thumb
branch_21d3c7a: @ 21d3c7a :thumb
	.hword  0x1d1b @ add r3, r3, #0x4
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d3c5a
.thumb
branch_21d3c80: @ 21d3c80 :thumb
	mov     r0, #0x0
	pop     {r3-r5}
	pop     {r3}
	add     sp, #0x10
	bx      r3
@ 0x21d3c8a


.align 2


.word 0xffffc000 @ 0x21d3c8c
.word 0x21d5c14 @ 0x21d3c90
.thumb
Function_21d3c94: @ 21d3c94 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	bl      GetNrOfPkmnInParty
	mov     r6, r0
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_21d3cd2
.thumb
branch_21d3ca4: @ 21d3ca4 :thumb
	mov     r0, r7
	mov     r1, r5
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x4c
	mov     r2, #0x0
	mov     r4, r0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_21d3ccc
	mov     r0, r4
	mov     r1, #0x3
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_21d3ccc
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d3ccc

.thumb
branch_21d3ccc: @ 21d3ccc :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r6
	blt     branch_21d3ca4
.thumb
branch_21d3cd2: @ 21d3cd2 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21d3cd6


.align 2, 0


.thumb
Function_21d3cd8: @ 21d3cd8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x24]
	bl      Function_21d3c94
	cmp     r0, #0x1
	bne     branch_21d3cea
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d3cea

.thumb
branch_21d3cea: @ 21d3cea :thumb
	mov     r4, #0x0
.thumb
branch_21d3cec: @ 21d3cec :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_21d3b54
	cmp     r0, #0x0
	beq     branch_21d3d10
	mov     r0, r5
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	mov     r1, r4
	bl      0x209c188
	bl      Function_21d3c94
	cmp     r0, #0x1
	bne     branch_21d3d10
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d3d10

.thumb
branch_21d3d10: @ 21d3d10 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x5
	blt     branch_21d3cec
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d3d1a


.align 2, 0


.thumb
Function_21d3d1c: @ 21d3d1c :thumb
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	mov     r2, #0x0
	add     r0, #0x4a
	ldrh    r3, [r0, #0x0]
	cmp     r3, #0x0
	beq     branch_21d3d36
	mov     r0, #0x1
.thumb
branch_21d3d2c: @ 21d3d2c :thumb
	mov     r1, r3
	and     r1, r0
	add     r2, r2, r1
	lsr     r3, r3, #1
	bne     branch_21d3d2c
.thumb
branch_21d3d36: @ 21d3d36 :thumb
	mov     r0, r2
	bx      lr
@ 0x21d3d3a


.align 2, 0


.thumb
Function_21d3d3c: @ 21d3d3c :thumb
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	add     r0, #0x48
	ldrh    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_21d3d4c
	mov     r0, #0x1
	bx      lr
@ 0x21d3d4c

.thumb
branch_21d3d4c: @ 21d3d4c :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21d3d50

.thumb
Function_21d3d50: @ 21d3d50 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r1
	mov     r4, r0
	bl      0x2006840
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_21d3d6c
	cmp     r0, #0x1
	bne     branch_21d3d6a
	b       branch_21d3e88
@ 0x21d3d6a

.thumb
branch_21d3d6a: @ 21d3d6a :thumb
	b       branch_21d3e92
@ 0x21d3d6c

.thumb
branch_21d3d6c: @ 21d3d6c :thumb
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      0x20177a4
	bl      0x201ff00
	bl      0x201ff68
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x110] @ 0x21d3e98, (=0xffffe0ff)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r2, [pc, #0x10c] @ 0x21d3e9c, (=0x4001000)
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	mov     r0, #0x3
	mov     r1, #0x5f
	lsl     r2, r2, #7
	bl      0x2017fc8
	mov     r0, #0x56
	mov     r1, #0x5f
	bl      0x2006c24
	mov     r7, r0
	bne     branch_21d3dae
	bl      ErrorHandling
.thumb
branch_21d3dae: @ 21d3dae :thumb
	ldr     r1, [pc, #0xf0] @ 0x21d3ea0, (=0x4ab0)
	mov     r0, r4
	mov     r2, #0x5f
	bl      0x200681c
	ldr     r2, [pc, #0xe4] @ 0x21d3ea0, (=0x4ab0)
	mov     r4, r0
	mov     r1, #0x0
	blx     0x20d5124
	str     r4, [r6, #0x3c]
	str     r6, [r4, #0xc]
	ldr     r0, [r6, #0x34]
	str     r0, [r4, #0x10]
	mov     r0, #0x5f
	bl      0x2018340
	str     r0, [r4, #0x14]
	mov     r0, #0x5f
	bl      0x200b358
	str     r0, [r4, #0x34]
	ldr     r2, [pc, #0xc8] @ 0x21d3ea4, (=0x179)
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, #0x5f
	bl      Function_200b144
	str     r0, [r4, #0x38]
	mov     r0, #0x4
	mov     r1, #0x8
	bl      0x2017dd4
	bl      Function_21d40d0
	ldr     r0, [r4, #0x14]
	bl      Function_21d40f0
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x5f
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, #0x11
	mov     r2, r1
	mov     r3, r0
	bl      0x200f174
	mov     r0, r4
	mov     r1, r7
	bl      Function_21d4300
	ldr     r0, [pc, #0x8c] @ 0x21d3ea8, (=0x21d40a9)
	mov     r1, r4
	bl      SetMainLoopFunctionCall
	mov     r0, r4
	mov     r1, r7
	bl      Function_21d41f8
	bl      Function_21d43ec
	mov     r0, r4
	mov     r1, r7
	bl      Function_21d441c
	mov     r0, r4
	bl      Function_21d4518
	mov     r0, r4
	bl      Function_21d45f4
	mov     r1, #0x0
	mov     r0, #0x34
	mov     r2, r1
	bl      0x2004550
	ldr     r0, [r6, #0x34]
	bl      0x209be50
	bl      0x20378b8
	mov     r0, #0x3
	bl      0x2037b58
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_21d3e6a
	mov     r0, #0xd
	bl      0x205bea8
.thumb
branch_21d3e6a: @ 21d3e6a :thumb
	bl      0x2039734
	ldr     r0, [pc, #0x3c] @ 0x21d3eac, (=0x21d4045)
	mov     r1, r4
	mov     r2, #0x5
	bl      0x200da04
	str     r0, [r4, #0x30]
	mov     r0, r7
	bl      0x2006ca8
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_21d3e92
@ 0x21d3e88

.thumb
branch_21d3e88: @ 21d3e88 :thumb
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x21d3e92

.thumb
branch_21d3e92: @ 21d3e92 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21d3e98

.word 0xffffe0ff @ 0x21d3e98
.word 0x4001000 @ 0x21d3e9c
.word 0x4ab0 @ 0x21d3ea0
.word 0x179 @ 0x21d3ea4
.word 0x21d40a9 @ 0x21d3ea8
.word 0x21d4045 @ 0x21d3eac
.thumb
Function_21d3eb0: @ 21d3eb0 :thumb
	push    {r4,lr}
	bl      0x200682c
	mov     r4, r0
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_21d3ed4
	ldr     r0, [r4, #0x10]
	ldr     r0, [r0, #0x30]
	cmp     r0, #0x0
	beq     branch_21d3ed4
	bl      0x20318ec
	ldr     r2, [r4, #0x10]
	ldr     r1, [r2, #0x30]
	and     r0, r1
	str     r0, [r2, #0x30]
.thumb
branch_21d3ed4: @ 21d3ed4 :thumb
	ldr     r1, [r4, #0x0]
	cmp     r1, #0x3
	bhi     branch_21d3f8a
	add     r0, r1, r1
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d3ee6

Jumppoints_21d3ee6:
.hword branch_21d3eee - Jumppoints_21d3ee6 - 2
.hword branch_21d3f18 - Jumppoints_21d3ee6 - 2
.hword branch_21d3f66 - Jumppoints_21d3ee6 - 2
.hword branch_21d3f7e - Jumppoints_21d3ee6 - 2
.thumb
branch_21d3eee: @ 21d3eee :thumb
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_21d3f8a
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	bl      Function_203608c
	cmp     r0, #0x0
	beq     branch_21d3f8a
	bl      Function_21d548c
	cmp     r0, #0x2
	ble     branch_21d3f8a
	mov     r2, #0x0
	ldr     r0, [r4, #0x10]
	mov     r1, #0x4
	mov     r3, r2
	bl      0x209bebc
	b       branch_21d3f8a
@ 0x21d3f18

.thumb
branch_21d3f18: @ 21d3f18 :thumb
	mov     r0, #0xd5
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	lsl     r2, r0, #2
	ldr     r0, [pc, #0x70] @ 0x21d3f94, (=0x21d5e9c)
	ldr     r2, [r0, r2]
	cmp     r2, #0x0
	beq     branch_21d3f2e
	mov     r0, r4
	blx     r2
	str     r0, [r4, #0x0]
.thumb
branch_21d3f2e: @ 21d3f2e :thumb
	ldr     r0, [r4, #0x10]
	ldr     r0, [r0, #0x24]
	cmp     r0, #0x0
	bne     branch_21d3f46
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r2, [pc, #0x5c] @ 0x21d3f98, (=0x10300)
	add     r0, r4, r0
	mov     r1, #0x0
	mov     r3, r4
	bl      Function_21d537c
.thumb
branch_21d3f46: @ 21d3f46 :thumb
	mov     r0, r4
	bl      Function_21d5668
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_21d3f8a
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d58ac
	ldr     r1, [r4, #0x0]
	cmp     r1, #0x1
	bne     branch_21d3f8a
	str     r0, [r4, #0x0]
	b       branch_21d3f8a
@ 0x21d3f66

.thumb
branch_21d3f66: @ 21d3f66 :thumb
	mov     r0, #0xd5
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	lsl     r2, r0, #2
	ldr     r0, [pc, #0x24] @ 0x21d3f94, (=0x21d5e9c)
	ldr     r2, [r0, r2]
	cmp     r2, #0x0
	beq     branch_21d3f8a
	mov     r0, r4
	blx     r2
	str     r0, [r4, #0x0]
	b       branch_21d3f8a
@ 0x21d3f7e

.thumb
branch_21d3f7e: @ 21d3f7e :thumb
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_21d3f8a
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d3f8a

.thumb
branch_21d3f8a: @ 21d3f8a :thumb
	ldr     r0, [r4, #0x60]
	bl      0x20219f8
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d3f94

.word 0x21d5e9c @ 0x21d3f94
.word 0x10300 @ 0x21d3f98
.thumb
Function_21d3f9c: @ 21d3f9c :thumb
	push    {r3-r7,lr}
	str     r0, [sp, #0x0]
	bl      0x200682c
	mov     r6, r0
	ldr     r0, [r6, #0x30]
	bl      Function_200da58
	mov     r0, #0x6f
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	bl      0x200a4e4
	mov     r0, #0x7
	lsl     r0, r0, #6
	ldr     r0, [r6, r0]
	bl      0x200a6dc
	mov     r7, #0x63
	mov     r4, #0x0
	mov     r5, r6
	lsl     r7, r7, #2
.thumb
branch_21d3fc8: @ 21d3fc8 :thumb
	ldr     r0, [r5, r7]
	bl      0x2009754
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_21d3fc8
	ldr     r0, [r6, #0x60]
	bl      0x2021964
	bl      0x200a878
	bl      0x201e958
	bl      0x201f8b4
	mov     r0, r6
	bl      Function_21d471c
	ldr     r0, [r6, #0x14]
	bl      Function_21d42cc
	ldr     r0, [r6, #0x38]
	bl      Function_200b190
	ldr     r0, [r6, #0x34]
	bl      0x200b3f0
	ldr     r2, [pc, #0x3c] @ 0x21d4040, (=0x4000304)
	ldrh    r1, [r2, #0x0]
	lsr     r0, r2, #11
	orr     r0, r1
	strh    r0, [r2, #0x0]
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	ldr     r1, [r6, #0x8]
	ldr     r0, [r6, #0xc]
	str     r1, [r0, #0x10]
	bl      Function_21d548c
	ldr     r1, [r6, #0xc]
	str     r0, [r1, #0x8]
	bl      Function_21d54a8
	ldr     r1, [r6, #0xc]
	str     r0, [r1, #0xc]
	mov     r0, r6
	bl      Function_21d4294
	ldr     r0, [sp, #0x0]
	bl      0x2006830
	mov     r0, #0x5f
	bl      0x201807c
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d403e


.align 2


.word 0x4000304 @ 0x21d4040
.thumb
Function_21d4044: @ 21d4044 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r0, [r4, #0x1c]
	add     r1, #0x1c
	cmp     r0, #0x0
	beq     branch_21d409e
	ldr     r0, [r1, #0x4]
	ldr     r3, [r1, #0x8]
	lsl     r2, r0, #1
	ldr     r0, [pc, #0x48] @ 0x21d40a0, (=0x21d5da6)
	ldrb    r0, [r0, r2]
	cmp     r3, r0
	ble     branch_21d408e
	mov     r0, #0x0
	str     r0, [r1, #0x8]
	ldr     r2, [r1, #0x4]
	.hword  0x1c52 @ add r2, r2, #0x1
	str     r2, [r1, #0x4]
	lsl     r3, r2, #1
	ldr     r2, [pc, #0x38] @ 0x21d40a4, (=0x21d5da7)
	ldrb    r2, [r2, r3]
	cmp     r2, #0xff
	bne     branch_21d4074
	str     r0, [r1, #0x4]
.thumb
branch_21d4074: @ 21d4074 :thumb
	ldr     r0, [r1, #0x10]
	ldr     r1, [r1, #0x4]
	ldr     r0, [r0, #0xc]
	lsl     r2, r1, #1
	ldr     r1, [pc, #0x24] @ 0x21d40a4, (=0x21d5da7)
	ldrb    r1, [r1, r2]
	mov     r2, #0x20
	lsl     r1, r1, #5
	add     r0, r0, r1
	mov     r1, #0x0
	blx     0x20c0160
	b       branch_21d4094
@ 0x21d408e

.thumb
branch_21d408e: @ 21d408e :thumb
	ldr     r0, [r4, #0x24]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x24]
.thumb
branch_21d4094: @ 21d4094 :thumb
	mov     r0, #0xed
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_21d5314
.thumb
branch_21d409e: @ 21d409e :thumb
	pop     {r4,pc}
@ 0x21d40a0

.word 0x21d5da6 @ 0x21d40a0
.word 0x21d5da7 @ 0x21d40a4
.thumb
Function_21d40a8: @ 21d40a8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x201dcac
	bl      0x200a858
	mov     r0, r4
	bl      0x201c2b8
	ldr     r3, [pc, #0xc] @ 0x21d40c8, (=0x27e0000)
	ldr     r1, [pc, #0xc] @ 0x21d40cc, (=0x3ff8)
	mov     r0, #0x1
	ldr     r2, [r3, r1]
	orr     r0, r2
	str     r0, [r3, r1]
	pop     {r4,pc}
@ 0x21d40c8

.word 0x27e0000 @ 0x21d40c8
.word 0x3ff8 @ 0x21d40cc
.thumb
Function_21d40d0: @ 21d40d0 :thumb
	push    {r4,lr}
	add     sp, #-0x28
	ldr     r4, [pc, #0x14] @ 0x21d40ec, (=0x21d5e74)
	add     r3, sp, #0x0
	mov     r2, #0x5
.thumb
branch_21d40da: @ 21d40da :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d40da
	add     r0, sp, #0x0
	bl      0x201fe94
	add     sp, #0x28
	pop     {r4,pc}
@ 0x21d40ec

.word 0x21d5e74 @ 0x21d40ec
.thumb
Function_21d40f0: @ 21d40f0 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x9c
	ldr     r5, [pc, #0xe8] @ 0x21d41e0, (=0x21d5db0)
	add     r3, sp, #0x8c
	mov     r4, r0
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      0x2018368
	ldr     r5, [pc, #0xd8] @ 0x21d41e4, (=0x21d5e3c)
	add     r3, sp, #0x70
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
	ldr     r5, [pc, #0xb4] @ 0x21d41e8, (=0x21d5e58)
	add     r3, sp, #0x54
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x5
	str     r0, [r3, #0x0]
	mov     r0, r4
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, r4
	mov     r1, #0x5
	bl      0x2019ebc
	ldr     r5, [pc, #0x90] @ 0x21d41ec, (=0x21d5de8)
	add     r3, sp, #0x38
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x6
	str     r0, [r3, #0x0]
	mov     r0, r4
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r5, [pc, #0x74] @ 0x21d41f0, (=0x21d5e04)
	add     r3, sp, #0x1c
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
	ldr     r5, [pc, #0x50] @ 0x21d41f4, (=0x21d5e20)
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
	mov     r1, #0x1
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, #0x0
	mov     r1, #0x20
	mov     r2, r0
	mov     r3, #0x5f
	bl      0x2019690
	mov     r0, #0x4
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x5f
	bl      0x2019690
	add     sp, #0x9c
	pop     {r4,r5,pc}
@ 0x21d41de


.align 2


.word 0x21d5db0 @ 0x21d41e0
.word 0x21d5e3c @ 0x21d41e4
.word 0x21d5e58 @ 0x21d41e8
.word 0x21d5de8 @ 0x21d41ec
.word 0x21d5e04 @ 0x21d41f0
.word 0x21d5e20 @ 0x21d41f4
.thumb
Function_21d41f8: @ 21d41f8 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	str     r1, [sp, #0x0]
	mov     r6, #0x0
	mov     r4, r7
	mov     r5, r7
.thumb
branch_21d4204: @ 21d4204 :thumb
	mov     r0, #0x8
	mov     r1, #0x5f
	bl      Function_2023790
	str     r0, [r4, #0x3c]
	mov     r0, #0xdd
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r5, r0]
	mov     r0, #0xe7
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r5, #0x8
	cmp     r6, #0x5
	blt     branch_21d4204
	mov     r0, #0xb4
	mov     r1, #0x5f
	bl      Function_2023790
	str     r0, [r7, #0x54]
	mov     r0, #0x28
	mov     r1, #0x5f
	bl      Function_2023790
	str     r0, [r7, #0x58]
	mov     r0, #0xd5
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r7, r0]
	ldr     r0, [r7, #0x38]
	ldr     r2, [r7, #0x58]
	mov     r1, #0x11
	bl      Function_200b1b8
	ldr     r1, [sp, #0x0]
	mov     r0, r7
	bl      Function_21d577c
	mov     r0, #0x5f
	bl      0x205ca4c
	mov     r1, #0xee
	lsl     r1, r1, #2
	str     r0, [r7, r1]
	mov     r0, #0x0
	str     r0, [r7, #0x1c]
	str     r0, [r7, #0x24]
	str     r0, [r7, #0x20]
	mov     r2, r7
	ldr     r0, [sp, #0x0]
	mov     r1, #0x1
	add     r2, #0x2c
	mov     r3, #0x5f
	bl      0x20071ec
	str     r0, [r7, #0x28]
	ldr     r0, [pc, #0x10] @ 0x21d4290, (=0x4a44)
	mov     r1, #0x0
	str     r1, [r7, r0]
	mov     r0, #0x33
	lsl     r0, r0, #4
	str     r1, [r7, r0]
	ldr     r0, [r7, #0x10]
	mov     r1, #0x2
	str     r1, [r0, #0x2c]
	pop     {r3-r7,pc}
@ 0x21d4290

.word 0x4a44 @ 0x21d4290
.thumb
Function_21d4294: @ 21d4294 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	bl      Function_21d5824
	ldr     r0, [r6, #0x28]
	bl      free
	mov     r0, #0xee
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	bl      free
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_21d42b0: @ 21d42b0 :thumb
	ldr     r0, [r5, #0x3c]
	bl      Function_20237bc
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x5
	blt     branch_21d42b0
	ldr     r0, [r6, #0x58]
	bl      Function_20237bc
	ldr     r0, [r6, #0x54]
	bl      Function_20237bc
	pop     {r4-r6,pc}
@ 0x21d42cc

.thumb
Function_21d42cc: @ 21d42cc :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x6
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x5
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x4
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x1
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x0
	bl      0x2019044
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x21d42fe


.align 2, 0


.thumb
Function_21d4300: @ 21d4300 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x2
	ldr     r4, [r5, #0x14]
	lsl     r0, r0, #8
	mov     r6, r1
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x5f
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r2, r1
	mov     r3, r1
	bl      0x2007130
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x5f
	str     r0, [sp, #0x4]
	mov     r0, #0xc
	mov     r1, r0
	mov     r2, #0x4
	mov     r3, #0x0
	bl      0x2006e84
	mov     r1, #0x1a
	mov     r0, #0x0
	lsl     r1, r1, #4
	mov     r2, #0x5f
	bl      0x2002e98
	mov     r1, #0x1a
	mov     r0, #0x4
	lsl     r1, r1, #4
	mov     r2, #0x5f
	bl      0x2002e98
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x5f
	str     r0, [sp, #0xc]
	mov     r0, #0xc
	mov     r1, #0xa
	mov     r2, r4
	mov     r3, #0x6
	bl      0x2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x5f
	str     r0, [sp, #0xc]
	mov     r0, #0xc
	mov     r1, #0xb
	mov     r2, r4
	mov     r3, #0x6
	bl      0x2006e60
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	lsl     r0, r0, #12
	str     r0, [sp, #0x4]
	mov     r3, #0x1
	str     r3, [sp, #0x8]
	mov     r0, #0x5f
	str     r0, [sp, #0xc]
	mov     r0, r6
	mov     r1, #0x2
	mov     r2, r4
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	mov     r3, #0x1
	str     r3, [sp, #0x8]
	mov     r0, #0x5f
	str     r0, [sp, #0xc]
	mov     r0, r6
	mov     r1, #0x3
	mov     r2, r4
	bl      0x200710c
	ldr     r0, [r5, #0xc]
	ldr     r0, [r0, #0x24]
	bl      0x2027b50
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x5f
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x1
	mov     r3, #0xa
	bl      0x200dd0c
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x5f
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      0x200daa4
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d43ec

.thumb
Function_21d43ec: @ 21d43ec :thumb
	push    {r4,lr}
	add     sp, #-0x10
	ldr     r4, [pc, #0x24] @ 0x21d4418, (=0x21d5dc0)
	add     r3, sp, #0x0
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      0x201e86c
	mov     r0, #0x14
	mov     r1, #0x5f
	bl      0x201f834
	bl      0x201e994
	bl      0x201f8e4
	add     sp, #0x10
	pop     {r4,pc}
@ 0x21d4418

.word 0x21d5dc0 @ 0x21d4418
.thumb
Function_21d441c: @ 21d441c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r6, r0
	str     r1, [sp, #0x14]
	blx     0x20a7944
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x7e
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r3, #0x20
	str     r3, [sp, #0xc]
	mov     r2, #0x5f
	str     r2, [sp, #0x10]
	mov     r2, r0
	bl      0x200a784
	mov     r1, r6
	mov     r0, #0x1e
	add     r1, #0x64
	mov     r2, #0x5f
	bl      0x20095c4
	str     r0, [r6, #0x60]
	cmp     r0, #0x0
	bne     branch_21d4456
	bl      ErrorHandling
.thumb
branch_21d4456: @ 21d4456 :thumb
	mov     r0, r6
	mov     r2, #0x1
	add     r0, #0x64
	mov     r1, #0x0
	lsl     r2, r2, #20
	bl      0x200964c
	mov     r7, #0x63
	mov     r4, #0x0
	mov     r5, r6
	lsl     r7, r7, #2
.thumb
branch_21d446c: @ 21d446c :thumb
	mov     r0, #0x3
	mov     r1, r4
	mov     r2, #0x5f
	bl      0x2009714
	str     r0, [r5, r7]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_21d446c
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r3, #0x1
	str     r3, [sp, #0x4]
	mov     r0, #0x5f
	str     r0, [sp, #0x8]
	mov     r0, #0x63
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	ldr     r1, [sp, #0x14]
	mov     r2, #0xc
	bl      0x2009a4c
	mov     r1, #0x6f
	lsl     r1, r1, #2
	str     r0, [r6, r1]
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r2, #0x1
	str     r2, [sp, #0x4]
	mov     r0, #0xf
	str     r0, [sp, #0x8]
	mov     r0, #0x5f
	sub     r1, #0x2c
	str     r0, [sp, #0xc]
	ldr     r0, [r6, r1]
	ldr     r1, [sp, #0x14]
	mov     r3, #0x0
	bl      0x2009b04
	mov     r1, #0x7
	lsl     r1, r1, #6
	str     r0, [r6, r1]
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x5f
	sub     r1, #0x2c
	str     r0, [sp, #0x8]
	ldr     r0, [r6, r1]
	ldr     r1, [sp, #0x14]
	mov     r2, #0xd
	mov     r3, #0x1
	bl      0x2009bc4
	mov     r1, #0x71
	lsl     r1, r1, #2
	str     r0, [r6, r1]
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x5f
	sub     r1, #0x2c
	str     r0, [sp, #0x8]
	ldr     r0, [r6, r1]
	ldr     r1, [sp, #0x14]
	mov     r2, #0xe
	mov     r3, #0x1
	bl      0x2009bc4
	mov     r1, #0x72
	lsl     r1, r1, #2
	str     r0, [r6, r1]
	sub     r1, #0xc
	ldr     r0, [r6, r1]
	bl      0x200a328
	mov     r0, #0x7
	lsl     r0, r0, #6
	ldr     r0, [r6, r0]
	bl      0x200a5c8
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21d4516


.align 2, 0


.thumb
Function_21d4518: @ 21d4518 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x5c
	mov     r1, #0x2
	mov     r5, r0
	str     r1, [sp, #0x0]
	.hword  0x1ec8 @ sub r0, r1, #0x3
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r3, #0x63
	str     r0, [sp, #0xc]
	mov     r2, #0x1
	lsl     r3, r3, #2
	str     r2, [sp, #0x10]
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
	add     r3, #0x88
	str     r2, [sp, #0x20]
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
	add     r0, r5, r3
	mov     r2, r1
	mov     r3, r1
	bl      0x20093b4
	ldr     r0, [r5, #0x60]
	mov     r6, #0x0
	str     r0, [sp, #0x2c]
	mov     r0, #0x85
	lsl     r0, r0, #2
	add     r0, r5, r0
	str     r0, [sp, #0x30]
	mov     r0, #0x1
	lsl     r0, r0, #12
	mov     r7, #0x8f
	str     r6, [sp, #0x3c]
	str     r0, [sp, #0x40]
	str     r0, [sp, #0x44]
	str     r0, [sp, #0x48]
	add     r0, sp, #0x2c
	strh    r6, [r0, #0x20]
	mov     r0, #0x1
	str     r0, [sp, #0x50]
	str     r0, [sp, #0x54]
	mov     r0, #0x5f
	ldr     r4, [pc, #0x68] @ 0x21d45f0, (=0x21d5dd0)
	str     r0, [sp, #0x58]
	lsl     r7, r7, #2
.thumb
branch_21d458c: @ 21d458c :thumb
	ldrh    r0, [r4, #0x4]
	lsl     r0, r0, #12
	str     r0, [sp, #0x34]
	ldrh    r0, [r4, #0x6]
	lsl     r0, r0, #12
	str     r0, [sp, #0x38]
	add     r0, sp, #0x2c
	bl      0x2021aa0
	mov     r1, #0x8f
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, r1
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      0x2021cc8
	mov     r0, #0x8f
	lsl     r0, r0, #2
	.hword  0x1e71 @ sub r1, r6, #0x1
	lsl     r1, r1, #1
	ldr     r0, [r5, r0]
	add     r1, #0x1b
	bl      0x2021d6c
	ldr     r0, [r5, r7]
	mov     r1, #0x0
	bl      0x2021cac
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x5
	blt     branch_21d458c
	mov     r0, #0x6
	lsl     r0, r0, #14
	str     r0, [sp, #0x34]
	mov     r0, #0x1a
	lsl     r0, r0, #16
	str     r0, [sp, #0x38]
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff74
	add     sp, #0x5c
	pop     {r4-r7,pc}
@ 0x21d45f0

.word 0x21d5dd0 @ 0x21d45f0
.thumb
Function_21d45f4: @ 21d45f4 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	mov     r4, r0
	mov     r0, #0x14
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0xc4] @ 0x21d46d0, (=0x1c3)
	mov     r1, #0xc2
	str     r0, [sp, #0x10]
	lsl     r1, r1, #2
	ldr     r0, [r4, #0x14]
	add     r1, r4, r1
	mov     r2, #0x5
	mov     r3, #0x1a
	bl      0x201a7e8
	mov     r0, #0xc2
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, #0x0
	bl      Function_201ada4
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x28
	mov     r1, #0xbe
	str     r0, [sp, #0x10]
	lsl     r1, r1, #2
	ldr     r0, [r4, #0x14]
	add     r1, r4, r1
	mov     r2, #0x0
	mov     r3, #0x2
	bl      0x201a7e8
	mov     r0, #0xbe
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, #0xf
	bl      Function_201ada4
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x1a
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0xf
	str     r0, [sp, #0xc]
	mov     r0, #0x94
	mov     r1, #0xc6
	str     r0, [sp, #0x10]
	lsl     r1, r1, #2
	ldr     r0, [r4, #0x14]
	add     r1, r4, r1
	mov     r2, #0x0
	mov     r3, #0x3
	bl      0x201a7e8
	mov     r0, #0xc6
	lsl     r0, r0, #2
	ldr     r1, [r4, #0x58]
	add     r0, r4, r0
	mov     r2, #0x0
	bl      Function_21d46d8
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r0, #0xb
	str     r0, [sp, #0x8]
	mov     r0, #0xf
	str     r0, [sp, #0xc]
	mov     r0, #0xc8
	mov     r1, #0xaa
	str     r0, [sp, #0x10]
	lsl     r1, r1, #2
	ldr     r0, [r4, #0x14]
	add     r1, r4, r1
	mov     r2, #0x0
	mov     r3, #0x2
	bl      0x201a7e8
	mov     r0, #0xaa
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, #0x0
	bl      Function_201ada4
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r2, [pc, #0x10] @ 0x21d46d4, (=0x10300)
	add     r0, r4, r0
	mov     r1, #0x0
	mov     r3, r4
	bl      Function_21d537c
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x21d46d0

.word 0x1c3 @ 0x21d46d0
.word 0x10300 @ 0x21d46d4
.thumb
Function_21d46d8: @ 21d46d8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r4, r2
	mov     r0, #0x1
	mov     r2, #0x0
	mov     r7, r1
	bl      0x2002d7c
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_201ada4
	mov     r1, #0x1
	str     r1, [sp, #0x0]
	mov     r0, #0x41
	mov     r3, #0xd0
	str     r4, [sp, #0x4]
	sub     r4, r3, r6
	lsl     r0, r0, #10
	lsr     r3, r4, #31
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	add     r3, r4, r3
	str     r0, [sp, #0xc]
	mov     r0, r5
	mov     r2, r7
	asr     r3, r3, #1
	bl      0x201d78c
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d471a


.align 2, 0


.thumb
Function_21d471c: @ 21d471c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xaa
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_201a8fc
	mov     r0, #0xc6
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_201a8fc
	mov     r0, #0xc2
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_201a8fc
	mov     r0, #0xbe
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_201a8fc
	pop     {r4,pc}
@ 0x21d474a


.align 2, 0


.thumb
Function_21d474c: @ 21d474c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r0, #0x0
	mov     r1, #0x1
	bl      0x20388f4
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_21d4776
	bl      0x2035e18
	cmp     r0, #0x2
	blt     branch_21d4780
	mov     r0, r5
	mov     r1, #0x2
	mov     r2, #0x0
	bl      Function_21d55a8
	b       branch_21d4780
@ 0x21d4776

.thumb
branch_21d4776: @ 21d4776 :thumb
	mov     r0, r5
	mov     r1, #0x8
	mov     r2, #0x0
	bl      Function_21d55a8
.thumb
branch_21d4780: @ 21d4780 :thumb
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_21d48ec
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d478c

.thumb
Function_21d478c: @ 21d478c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_21d47b8
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_21d47ae
	bl      Function_21d5360
	cmp     r0, #0x1
	beq     branch_21d47b4
	mov     r0, r5
	bl      Function_21d5488
	b       branch_21d47b4
@ 0x21d47ae

.thumb
branch_21d47ae: @ 21d47ae :thumb
	mov     r0, r5
	bl      Function_21d5488
.thumb
branch_21d47b4: @ 21d47b4 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d47b8

.thumb
Function_21d47b8: @ 21d47b8 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x104] @ 0x21d48c4, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_21d4818
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_21d48c2
	ldr     r5, [r4, #0x10]
	bl      Function_21d548c
	ldr     r1, [r5, #0x2c]
	cmp     r1, r0
	bne     branch_21d4810
	ldr     r0, [r5, #0x30]
	cmp     r0, #0x0
	bne     branch_21d4810
	mov     r1, #0x1
	add     r0, sp, #0x0
	strb    r1, [r0, #0x2]
	mov     r0, r4
	mov     r1, #0x3
	mov     r2, #0x0
	bl      Function_21d55a8
	mov     r0, r4
	mov     r1, #0x16
	bl      Function_21d48ec
	add     r2, sp, #0x0
	ldr     r0, [r4, #0x10]
	mov     r1, #0x7
	add     r2, #0x2
	mov     r3, #0x1
	bl      0x209bebc
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d5858
	pop     {r3-r5,pc}
@ 0x21d4810

.thumb
branch_21d4810: @ 21d4810 :thumb
	ldr     r0, [pc, #0xb4] @ 0x21d48c8, (=0x5f2)
	bl      Function_2005748
	pop     {r3-r5,pc}
@ 0x21d4818

.thumb
branch_21d4818: @ 21d4818 :thumb
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_21d4894
	bl      Function_203608c
	cmp     r0, #0x0
	beq     branch_21d484a
	ldr     r0, [r4, #0x10]
	ldr     r0, [r0, #0x28]
	cmp     r0, #0x0
	bne     branch_21d4842
	mov     r0, r4
	mov     r1, #0x4
	mov     r2, #0x0
	bl      Function_21d55a8
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_21d48ec
	pop     {r3-r5,pc}
@ 0x21d4842

.thumb
branch_21d4842: @ 21d4842 :thumb
	ldr     r0, [pc, #0x84] @ 0x21d48c8, (=0x5f2)
	bl      Function_2005748
	pop     {r3-r5,pc}
@ 0x21d484a

.thumb
branch_21d484a: @ 21d484a :thumb
	ldr     r5, [r4, #0x10]
	bl      0x2035e18
	ldr     r1, [r5, #0x2c]
	cmp     r1, r0
	bne     branch_21d488c
	ldr     r0, [r5, #0x30]
	cmp     r0, #0x0
	bne     branch_21d488c
	mov     r1, #0x1
	add     r0, sp, #0x0
	strb    r1, [r0, #0x1]
	mov     r0, r4
	mov     r1, #0x4
	mov     r2, #0x0
	bl      Function_21d55a8
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_21d48ec
	add     r2, sp, #0x0
	ldr     r0, [r4, #0x10]
	mov     r1, #0x7
	add     r2, #0x1
	mov     r3, #0x1
	bl      0x209bebc
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d5858
	pop     {r3-r5,pc}
@ 0x21d488c

.thumb
branch_21d488c: @ 21d488c :thumb
	ldr     r0, [pc, #0x38] @ 0x21d48c8, (=0x5f2)
	bl      Function_2005748
	pop     {r3-r5,pc}
@ 0x21d4894

.thumb
branch_21d4894: @ 21d4894 :thumb
	ldr     r0, [pc, #0x34] @ 0x21d48cc, (=0x4a48)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_21d48c2
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_21d48c2
	bl      0x2035e18
	ldr     r1, [r4, #0x10]
	ldr     r1, [r1, #0x2c]
	cmp     r1, r0
	bne     branch_21d48c2
	mov     r1, #0x0
	add     r0, sp, #0x0
	strb    r1, [r0, #0x0]
	ldr     r0, [r4, #0x10]
	mov     r1, #0x7
	add     r2, sp, #0x0
	mov     r3, #0x1
	bl      0x209bebc
.thumb
branch_21d48c2: @ 21d48c2 :thumb
	pop     {r3-r5,pc}
@ 0x21d48c4

.word 0x21bf67c @ 0x21d48c4
.word 0x5f2 @ 0x21d48c8
.word 0x4a48 @ 0x21d48cc
.thumb
Function_21d48d0: @ 21d48d0 :thumb
	bx      lr
@ 0x21d48d2


.align 2, 0


.thumb
Function_21d48d4: @ 21d48d4 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r1, #0x2
	bl      Function_21d48ec
	mov     r0, r5
	bl      Function_21d48d0
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d48ea


.align 2, 0


.thumb
Function_21d48ec: @ 21d48ec :thumb
	mov     r2, #0xd5
	mov     r3, #0x1e
	lsl     r2, r2, #2
	str     r3, [r0, r2]
	.hword  0x1d12 @ add r2, r2, #0x4
	str     r1, [r0, r2]
	bx      lr
@ 0x21d48fa


.align 2, 0


.thumb
Function_21d48fc: @ 21d48fc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x5c]
	mov     r4, r1
	bl      Function_21d5638
	cmp     r0, #0x0
	beq     branch_21d4916
	mov     r0, #0xd6
	lsl     r0, r0, #2
	ldr     r1, [r5, r0]
	.hword  0x1f00 @ sub r0, r0, #0x4
	str     r1, [r5, r0]
.thumb
branch_21d4916: @ 21d4916 :thumb
	mov     r0, r5
	bl      Function_21d48d0
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d4920

.thumb
Function_21d4920: @ 21d4920 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_21d493e
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x10]
	mov     r1, #0x7
	add     r2, sp, #0x0
	mov     r3, #0x1
	bl      0x209bebc
.thumb
branch_21d493e: @ 21d493e :thumb
	mov     r0, #0xd5
	mov     r1, #0x3
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, r5
	bl      Function_21d48d0
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d4950

.thumb
Function_21d4950: @ 21d4950 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x5f
	mov     r4, r1
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x14]
	ldr     r1, [pc, #0x1c] @ 0x21d497c, (=0x21d5d94)
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      0x2002100
	mov     r1, #0x33
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r0, #0x5
	add     r1, #0x24
	str     r0, [r5, r1]
	mov     r0, r5
	bl      Function_21d48d0
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d497c

.word 0x21d5d94 @ 0x21d497c
.thumb
Function_21d4980: @ 21d4980 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r6, r1
	bl      Function_203608c
	cmp     r0, #0x0
	ldr     r0, [r5, #0x10]
	beq     branch_21d49b4
	ldr     r0, [r0, #0x28]
	cmp     r0, #0x0
	beq     branch_21d49d6
	ldr     r0, [pc, #0x100] @ 0x21d4a9c, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0xc3
	tst     r0, r1
	beq     branch_21d49a8
	ldr     r0, [pc, #0xfc] @ 0x21d4aa0, (=0x5f2)
	bl      Function_2005748
.thumb
branch_21d49a8: @ 21d49a8 :thumb
	mov     r0, r5
	bl      Function_21d48d0
	add     sp, #0x8
	mov     r0, r6
	pop     {r4-r6,pc}
@ 0x21d49b4

.thumb
branch_21d49b4: @ 21d49b4 :thumb
	ldr     r0, [r0, #0x30]
	cmp     r0, #0x0
	beq     branch_21d49d6
	ldr     r0, [pc, #0xe0] @ 0x21d4a9c, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0xc3
	tst     r0, r1
	beq     branch_21d49ca
	ldr     r0, [pc, #0xd8] @ 0x21d4aa0, (=0x5f2)
	bl      Function_2005748
.thumb
branch_21d49ca: @ 21d49ca :thumb
	mov     r0, r5
	bl      Function_21d48d0
	add     sp, #0x8
	mov     r0, r6
	pop     {r4-r6,pc}
@ 0x21d49d6

.thumb
branch_21d49d6: @ 21d49d6 :thumb
	bl      Function_21d548c
	mov     r4, r0
	bl      0x2035e18
	cmp     r4, r0
	beq     branch_21d49f0
	mov     r0, r5
	bl      Function_21d48d0
	add     sp, #0x8
	mov     r0, r6
	pop     {r4-r6,pc}
@ 0x21d49f0

.thumb
branch_21d49f0: @ 21d49f0 :thumb
	mov     r0, #0x33
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x5f
	bl      0x2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_21d4a90
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	bne     branch_21d4a34
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_21d4a2a
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x10]
	mov     r1, #0x7
	add     r2, sp, #0x4
	mov     r3, #0x1
	bl      0x209bebc
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_21d5858
.thumb
branch_21d4a2a: @ 21d4a2a :thumb
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_21d48ec
	b       branch_21d4a88
@ 0x21d4a34

.thumb
branch_21d4a34: @ 21d4a34 :thumb
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_21d4a50
	mov     r0, r5
	mov     r1, #0xb
	bl      Function_21d48ec
	mov     r0, r5
	mov     r1, #0xe
	mov     r2, #0x0
	bl      Function_21d55a8
	b       branch_21d4a88
@ 0x21d4a50

.thumb
branch_21d4a50: @ 21d4a50 :thumb
	add     r0, sp, #0x0
	mov     r1, #0x0
	mov     r2, #0x4
	blx     MI_CpuFill8
	mov     r1, #0x0
	add     r0, sp, #0x0
	strb    r1, [r0, #0x2]
	bl      Function_203608c
	add     r1, sp, #0x0
	strb    r0, [r1, #0x0]
	ldr     r0, [pc, #0x38] @ 0x21d4aa4, (=0x4a50)
	mov     r1, #0x1
	strb    r1, [r5, r0]
	mov     r1, #0x0
	add     r0, #0xc
	strh    r1, [r5, r0]
	mov     r0, #0xd5
	mov     r1, #0x6
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	ldr     r0, [r5, #0x10]
	mov     r1, #0x2
	add     r2, sp, #0x0
	mov     r3, #0x4
	bl      0x209bebc
.thumb
branch_21d4a88: @ 21d4a88 :thumb
	mov     r0, #0x33
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r5, r0]
.thumb
branch_21d4a90: @ 21d4a90 :thumb
	mov     r0, r5
	bl      Function_21d48d0
	mov     r0, r6
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x21d4a9c

.word 0x21bf67c @ 0x21d4a9c
.word 0x5f2 @ 0x21d4aa0
.word 0x4a50 @ 0x21d4aa4
.thumb
Function_21d4aa8: @ 21d4aa8 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r1, [pc, #0xc] @ 0x21d4abc, (=0x4a5c)
	mov     r2, #0x0
	strh    r2, [r0, r1]
	bl      Function_21d48d0
	mov     r0, r4
	pop     {r4,pc}
@ 0x21d4aba


.align 2


.word 0x4a5c @ 0x21d4abc
.thumb
Function_21d4ac0: @ 21d4ac0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      0x2035e18
	ldr     r1, [r5, #0x10]
	ldrh    r1, [r1, #0x38]
	cmp     r1, r0
	bne     branch_21d4ade
	bl      Function_21d548c
	ldr     r1, [r5, #0x10]
	ldrh    r1, [r1, #0x38]
	cmp     r1, r0
	beq     branch_21d4af6
.thumb
branch_21d4ade: @ 21d4ade :thumb
	ldr     r0, [pc, #0x60] @ 0x21d4b40, (=0x4a5c)
	mov     r1, #0x0
	strh    r1, [r5, r0]
	mov     r0, #0xd5
	mov     r1, #0x8
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, r5
	bl      Function_21d48d0
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d4af6

.thumb
branch_21d4af6: @ 21d4af6 :thumb
	ldr     r0, [pc, #0x48] @ 0x21d4b40, (=0x4a5c)
	ldsh    r1, [r5, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r5, r0]
	ldsh    r0, [r5, r0]
	cmp     r0, #0x1e
	ble     branch_21d4b36
	add     r0, sp, #0x0
	mov     r1, #0x0
	mov     r2, #0x4
	blx     MI_CpuFill8
	mov     r1, #0x1
	add     r0, sp, #0x0
	strb    r1, [r0, #0x2]
	bl      Function_203608c
	add     r1, sp, #0x0
	strb    r0, [r1, #0x0]
	ldr     r0, [r5, #0x10]
	mov     r1, #0x2
	add     r2, sp, #0x0
	mov     r3, #0x4
	bl      0x209bebc
	ldr     r0, [pc, #0x14] @ 0x21d4b40, (=0x4a5c)
	mov     r1, #0x0
	strh    r1, [r5, r0]
	mov     r0, #0xd5
	mov     r1, #0x9
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_21d4b36: @ 21d4b36 :thumb
	mov     r0, r5
	bl      Function_21d48d0
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d4b40

.word 0x4a5c @ 0x21d4b40
.thumb
Function_21d4b44: @ 21d4b44 :thumb
	push    {r3-r5,lr}
	ldr     r2, [pc, #0x18] @ 0x21d4b60, (=0x4a50)
	mov     r4, r1
	mov     r5, r0
	mov     r1, #0x0
	strb    r1, [r5, r2]
	bl      Function_21d48ec
	mov     r0, r5
	bl      Function_21d48d0
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d4b5e


.align 2


.word 0x4a50 @ 0x21d4b60
.thumb
Function_21d4b64: @ 21d4b64 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x5f
	mov     r4, r1
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x14]
	ldr     r1, [pc, #0x1c] @ 0x21d4b90, (=0x21d5d94)
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      0x2002100
	mov     r1, #0x33
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r0, #0x17
	add     r1, #0x24
	str     r0, [r5, r1]
	mov     r0, r5
	bl      Function_21d48d0
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d4b90

.word 0x21d5d94 @ 0x21d4b90
.thumb
Function_21d4b94: @ 21d4b94 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	ldr     r4, [r5, #0x10]
	mov     r6, r1
	bl      Function_21d548c
	ldr     r1, [r4, #0x2c]
	cmp     r1, r0
	bne     branch_21d4bae
	ldr     r0, [r4, #0x30]
	cmp     r0, #0x0
	beq     branch_21d4bca
.thumb
branch_21d4bae: @ 21d4bae :thumb
	ldr     r0, [pc, #0x90] @ 0x21d4c40, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0xc3
	tst     r0, r1
	beq     branch_21d4bbe
	ldr     r0, [pc, #0x88] @ 0x21d4c44, (=0x5f2)
	bl      Function_2005748
.thumb
branch_21d4bbe: @ 21d4bbe :thumb
	mov     r0, r5
	bl      Function_21d48d0
	add     sp, #0x4
	mov     r0, r6
	pop     {r3-r6,pc}
@ 0x21d4bca

.thumb
branch_21d4bca: @ 21d4bca :thumb
	mov     r0, #0x33
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x5f
	bl      0x2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_21d4c32
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	bne     branch_21d4c06
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x10]
	mov     r1, #0x7
	add     r2, sp, #0x0
	mov     r3, #0x1
	bl      0x209bebc
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_21d5858
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_21d48ec
	b       branch_21d4c2a
@ 0x21d4c06

.thumb
branch_21d4c06: @ 21d4c06 :thumb
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_21d4c26
	mov     r0, #0xd5
	mov     r1, #0x18
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	bl      Function_21d548c
	ldr     r1, [pc, #0x2c] @ 0x21d4c48, (=0x4a52)
	strb    r0, [r5, r1]
	mov     r0, #0xc
	bl      0x205bea8
	b       branch_21d4c2a
@ 0x21d4c26

.thumb
branch_21d4c26: @ 21d4c26 :thumb
	bl      ErrorHandling
.thumb
branch_21d4c2a: @ 21d4c2a :thumb
	mov     r0, #0x33
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r5, r0]
.thumb
branch_21d4c32: @ 21d4c32 :thumb
	mov     r0, r5
	bl      Function_21d48d0
	mov     r0, r6
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x21d4c3e


.align 2


.word 0x21bf67c @ 0x21d4c40
.word 0x5f2 @ 0x21d4c44
.word 0x4a52 @ 0x21d4c48
.thumb
Function_21d4c4c: @ 21d4c4c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x24] @ 0x21d4c78, (=0x4a53)
	mov     r4, r1
	ldrb    r0, [r5, r0]
	cmp     r0, #0x0
	bne     branch_21d4c72
	mov     r2, #0x0
	ldr     r0, [r5, #0x10]
	mov     r1, #0x5
	mov     r3, r2
	bl      0x209bebc
	cmp     r0, #0x1
	bne     branch_21d4c72
	mov     r0, #0xd5
	mov     r1, #0x1f
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_21d4c72: @ 21d4c72 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d4c76


.align 2


.word 0x4a53 @ 0x21d4c78
.thumb
Function_21d4c7c: @ 21d4c7c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_21d4c8e
	bl      0x2035e18
.thumb
branch_21d4c8e: @ 21d4c8e :thumb
	bl      0x2035e18
	ldr     r1, [r5, #0x10]
	ldr     r1, [r1, #0x20]
	cmp     r1, r0
	bne     branch_21d4ca2
	mov     r0, #0xd5
	mov     r1, #0x1f
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_21d4ca2: @ 21d4ca2 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d4ca6


.align 2, 0


.thumb
Function_21d4ca8: @ 21d4ca8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0xc]
	mov     r4, r1
	mov     r1, #0x3e
	lsl     r1, r1, #6
	ldr     r0, [r0, #0x1c]
	add     r1, r5, r1
	bl      Function_21d59a8
	mov     r0, #0xd5
	mov     r1, #0x1b
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d4cc8

.thumb
Function_21d4cc8: @ 21d4cc8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	ldr     r0, [pc, #0x4c] @ 0x21d4d1c, (=0x21bf6dc)
	mov     r1, #0x1
	strb    r1, [r0, #0x8]
	mov     r0, #0x5f
	bl      0x202c1b4
	mov     r1, r0
	ldr     r0, [r5, #0xc]
	mov     r2, #0x4
	ldr     r0, [r0, #0x2c]
	bl      0x202b758
	mov     r0, #0x5f
	mov     r1, #0x11
	bl      0x202c244
	mov     r1, r0
	ldr     r0, [r5, #0xc]
	mov     r2, #0x4
	ldr     r0, [r0, #0x2c]
	bl      0x202b758
	ldr     r0, [r5, #0xc]
	mov     r1, #0x14
	ldr     r0, [r0, #0x28]
	bl      0x202cfec
	mov     r0, #0x3b
	lsl     r0, r0, #4
	add     r0, r5, r0
	bl      0x2038ed4
	mov     r0, #0xd5
	mov     r1, #0x1c
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d4d1a


.align 2


.word 0x21bf6dc @ 0x21d4d1c
.thumb
Function_21d4d20: @ 21d4d20 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_21d4d32
	bl      0x2035e18
.thumb
branch_21d4d32: @ 21d4d32 :thumb
	ldr     r0, [r5, #0xc]
	mov     r2, #0x3b
	lsl     r2, r2, #4
	ldr     r0, [r0, #0x1c]
	mov     r1, #0x2
	add     r2, r5, r2
	bl      0x2038edc
	cmp     r0, #0x0
	beq     branch_21d4d72
	ldr     r0, [pc, #0x30] @ 0x21d4d78, (=0x658)
	mov     r1, #0x8
	bl      0x20057a4
	mov     r0, r5
	mov     r1, #0xd
	mov     r2, #0x0
	bl      Function_21d55a8
	mov     r0, r5
	mov     r1, #0x1d
	bl      Function_21d48ec
	mov     r1, #0x0
	mov     r0, #0x36
	str     r1, [r5, #0x1c]
	lsl     r0, r0, #4
	str     r1, [r5, r0]
	ldr     r0, [pc, #0x10] @ 0x21d4d7c, (=0x21bf6dc)
	strb    r1, [r0, #0x8]
	ldr     r0, [r5, #0x10]
	str     r1, [r0, #0x24]
.thumb
branch_21d4d72: @ 21d4d72 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d4d76


.align 2


.word 0x658 @ 0x21d4d78
.word 0x21bf6dc @ 0x21d4d7c
.thumb
Function_21d4d80: @ 21d4d80 :thumb
	push    {r3,r4}
	mov     r2, #0x36
	lsl     r2, r2, #4
	ldr     r4, [r0, r2]
	add     r3, r4, #0x1
	str     r3, [r0, r2]
	cmp     r4, #0x3c
	ble     branch_21d4d96
	mov     r3, #0xf
	sub     r2, #0xc
	str     r3, [r0, r2]
.thumb
branch_21d4d96: @ 21d4d96 :thumb
	mov     r0, r1
	pop     {r3,r4}
	bx      lr
@ 0x21d4d9c

.thumb
Function_21d4d9c: @ 21d4d9c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r1, #0x5
	mov     r2, #0x0
	bl      Function_21d55a8
	mov     r0, r5
	mov     r1, #0xa
	bl      Function_21d48ec
	mov     r0, r5
	bl      Function_21d48d0
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d4dbc

.thumb
Function_21d4dbc: @ 21d4dbc :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r0, #0x36
	lsl     r0, r0, #4
	mov     r4, r1
	ldr     r1, [r5, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r5, r0]
	ldr     r0, [r5, r0]
	cmp     r0, #0x3c
	ble     branch_21d4dec
	mov     r1, #0x10
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x5f
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	mov     r3, r0
	bl      0x200f174
	mov     r4, #0x3
.thumb
branch_21d4dec: @ 21d4dec :thumb
	mov     r0, r5
	bl      Function_21d48d0
	mov     r0, r4
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d4df8

.thumb
Function_21d4df8: @ 21d4df8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x5f
	mov     r4, r1
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x14]
	ldr     r1, [pc, #0x1c] @ 0x21d4e24, (=0x21d5d94)
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      0x2002100
	mov     r1, #0x33
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r0, #0xc
	add     r1, #0x24
	str     r0, [r5, r1]
	mov     r0, r5
	bl      Function_21d48d0
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d4e24

.word 0x21d5d94 @ 0x21d4e24
.thumb
Function_21d4e28: @ 21d4e28 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	ldr     r4, [r5, #0x10]
	mov     r6, r1
	bl      Function_21d548c
	ldr     r1, [r4, #0x2c]
	cmp     r1, r0
	bne     branch_21d4e42
	ldr     r0, [r4, #0x30]
	cmp     r0, #0x0
	beq     branch_21d4e5e
.thumb
branch_21d4e42: @ 21d4e42 :thumb
	ldr     r0, [pc, #0x8c] @ 0x21d4ed0, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0xc3
	tst     r0, r1
	beq     branch_21d4e52
	ldr     r0, [pc, #0x84] @ 0x21d4ed4, (=0x5f2)
	bl      Function_2005748
.thumb
branch_21d4e52: @ 21d4e52 :thumb
	mov     r0, r5
	bl      Function_21d48d0
	add     sp, #0x4
	mov     r0, r6
	pop     {r3-r6,pc}
@ 0x21d4e5e

.thumb
branch_21d4e5e: @ 21d4e5e :thumb
	mov     r0, #0x33
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x5f
	bl      0x2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_21d4ec4
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	bne     branch_21d4e98
	mov     r1, #0x0
	mov     r0, #0xd5
	str     r1, [sp, #0x0]
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	ldr     r0, [r5, #0x10]
	mov     r1, #0x7
	add     r2, sp, #0x0
	mov     r3, #0x1
	bl      0x209bebc
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_21d5858
	b       branch_21d4ebc
@ 0x21d4e98

.thumb
branch_21d4e98: @ 21d4e98 :thumb
	mov     r0, #0xd5
	mov     r1, #0xd
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r2, #0x0
	ldr     r0, [r5, #0x10]
	mov     r1, #0x3
	mov     r3, r2
	bl      0x209bebc
	mov     r0, #0x0
	bl      0x2032ee8
	mov     r2, r0
	ldr     r0, [r5, #0x34]
	mov     r1, #0x0
	bl      0x200b498
.thumb
branch_21d4ebc: @ 21d4ebc :thumb
	mov     r0, #0x33
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r5, r0]
.thumb
branch_21d4ec4: @ 21d4ec4 :thumb
	mov     r0, r5
	bl      Function_21d48d0
	mov     r0, r6
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x21d4ed0

.word 0x21bf67c @ 0x21d4ed0
.word 0x5f2 @ 0x21d4ed4
.thumb
Function_21d4ed8: @ 21d4ed8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_21d4ef2
	mov     r0, r5
	mov     r1, #0x5
	mov     r2, #0x0
	bl      Function_21d55a8
	b       branch_21d4f0c
@ 0x21d4ef2

.thumb
branch_21d4ef2: @ 21d4ef2 :thumb
	mov     r0, #0x0
	bl      0x2032ee8
	mov     r2, r0
	ldr     r0, [r5, #0x34]
	mov     r1, #0x0
	bl      0x200b498
	mov     r0, r5
	mov     r1, #0x10
	mov     r2, #0x0
	bl      Function_21d55a8
.thumb
branch_21d4f0c: @ 21d4f0c :thumb
	mov     r0, r5
	mov     r1, #0xe
	bl      Function_21d48ec
	mov     r0, #0x36
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r5, r0]
	mov     r0, r5
	bl      Function_21d48d0
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d4f26


.align 2, 0


.thumb
Function_21d4f28: @ 21d4f28 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r1, #0x36
	lsl     r1, r1, #4
	ldr     r2, [r0, r1]
	.hword  0x1c52 @ add r2, r2, #0x1
	str     r2, [r0, r1]
	ldr     r2, [r0, r1]
	cmp     r2, #0x2d
	ble     branch_21d4f42
	mov     r2, #0xf
	sub     r1, #0xc
	str     r2, [r0, r1]
.thumb
branch_21d4f42: @ 21d4f42 :thumb
	bl      Function_21d48d0
	mov     r0, r4
	pop     {r4,pc}
@ 0x21d4f4a


.align 2, 0


.thumb
Function_21d4f4c: @ 21d4f4c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0xca
	mov     r4, r1
	bl      0x20364f0
	mov     r0, #0xd5
	mov     r1, #0x10
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, r5
	bl      Function_21d48d0
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d4f6a


.align 2, 0


.thumb
Function_21d4f6c: @ 21d4f6c :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r0, #0xca
	mov     r5, r1
	bl      0x2036540
	cmp     r0, #0x0
	beq     branch_21d4f9e
	mov     r0, #0x0
	mov     r1, r0
	bl      0x20388f4
	mov     r1, #0x10
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x5f
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	mov     r3, r0
	bl      0x200f174
	mov     r5, #0x3
.thumb
branch_21d4f9e: @ 21d4f9e :thumb
	mov     r0, r4
	bl      Function_21d48d0
	mov     r0, r5
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d4faa


.align 2, 0


.thumb
Function_21d4fac: @ 21d4fac :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x5c]
	mov     r4, r1
	bl      Function_21d5638
	cmp     r0, #0x0
	beq     branch_21d4fc6
	mov     r0, r5
	mov     r1, #0x9
	mov     r2, #0x0
	bl      Function_21d55a8
.thumb
branch_21d4fc6: @ 21d4fc6 :thumb
	mov     r0, #0xd5
	mov     r1, #0x12
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, r5
	bl      Function_21d48d0
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d4fd8

.thumb
Function_21d4fd8: @ 21d4fd8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x5c]
	mov     r4, r1
	bl      Function_21d5638
	cmp     r0, #0x0
	beq     branch_21d4ff0
	mov     r0, #0xd5
	mov     r1, #0xa
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_21d4ff0: @ 21d4ff0 :thumb
	mov     r0, r5
	bl      Function_21d48d0
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d4ffa


.align 2, 0


.thumb
Function_21d4ffc: @ 21d4ffc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x5c]
	mov     r4, r1
	cmp     r0, #0xff
	beq     branch_21d501a
	bl      Function_21d5638
	cmp     r0, #0x0
	bne     branch_21d501a
	ldr     r0, [r5, #0x5c]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d730
.thumb
branch_21d501a: @ 21d501a :thumb
	mov     r0, r5
	mov     r1, #0xf
	mov     r2, #0x1
	bl      Function_21d55a8
	mov     r0, #0xd5
	mov     r1, #0x14
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_21d503c
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_21d5858
.thumb
branch_21d503c: @ 21d503c :thumb
	bl      0x2035e18
	ldr     r1, [pc, #0x14] @ 0x21d5058, (=0x4a58)
	mov     r2, #0x4b
	str     r0, [r5, r1]
	lsl     r2, r2, #2
	.hword  0x1f08 @ sub r0, r1, #0x4
	str     r2, [r5, r0]
	mov     r0, r5
	bl      Function_21d48d0
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d5056


.align 2


.word 0x4a58 @ 0x21d5058
.thumb
Function_21d505c: @ 21d505c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x30] @ 0x21d5094, (=0x4a58)
	mov     r4, r1
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_21d507a
	bl      0x2035e18
	ldr     r1, [pc, #0x24] @ 0x21d5094, (=0x4a58)
	ldr     r2, [r5, r1]
	cmp     r2, r0
	beq     branch_21d507a
	mov     r0, #0x0
	str     r0, [r5, r1]
.thumb
branch_21d507a: @ 21d507a :thumb
	mov     r0, #0xd5
	mov     r1, #0x15
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r1, #0x0
	add     r0, #0xc
	str     r1, [r5, r0]
	mov     r0, r5
	bl      Function_21d48d0
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d5092


.align 2


.word 0x4a58 @ 0x21d5094
.thumb
Function_21d5098: @ 21d5098 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x64] @ 0x21d5104, (=0x4a58)
	mov     r4, r1
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_21d50b6
	bl      0x2035e18
	ldr     r1, [pc, #0x58] @ 0x21d5104, (=0x4a58)
	ldr     r2, [r5, r1]
	cmp     r2, r0
	beq     branch_21d50b6
	mov     r0, #0x0
	str     r0, [r5, r1]
.thumb
branch_21d50b6: @ 21d50b6 :thumb
	ldr     r0, [pc, #0x50] @ 0x21d5108, (=0x4a54)
	ldr     r1, [r5, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r5, r0]
	ldr     r1, [r5, r0]
	cmp     r1, #0x0
	bge     branch_21d50ca
	mov     r1, #0x0
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r5, r0]
.thumb
branch_21d50ca: @ 21d50ca :thumb
	mov     r1, #0x36
	lsl     r1, r1, #4
	ldr     r0, [r5, r1]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	cmp     r0, #0x3c
	ble     branch_21d50f8
	ldr     r0, [pc, #0x28] @ 0x21d5104, (=0x4a58)
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	bne     branch_21d50f8
	mov     r0, #0x0
	sub     r1, #0xc
	str     r0, [r5, r1]
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_21d50f8
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_21d5858
.thumb
branch_21d50f8: @ 21d50f8 :thumb
	mov     r0, r5
	bl      Function_21d48d0
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d5102


.align 2


.word 0x4a58 @ 0x21d5104
.word 0x4a54 @ 0x21d5108
.thumb
Function_21d510c: @ 21d510c :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r0, #0xc
	bl      0x205bea8
	mov     r1, #0x10
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x5f
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	mov     r3, r0
	bl      0x200f174
	mov     r0, #0x1
	str     r0, [r4, #0x8]
	mov     r0, r4
	bl      Function_21d48d0
	mov     r0, #0x3
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x21d513e


.align 2, 0


.thumb
Function_21d5140: @ 21d5140 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r6, r2
	cmp     r4, #0x13
	bgt     branch_21d5168
	bge     branch_21d51ce
	cmp     r4, #0x8
	bgt     branch_21d5162
	cmp     r4, #0x2
	blt     branch_21d524e
	beq     branch_21d5176
	cmp     r4, #0x7
	beq     branch_21d5248
	cmp     r4, #0x8
	beq     branch_21d5248
	pop     {r4-r6,pc}
@ 0x21d5162

.thumb
branch_21d5162: @ 21d5162 :thumb
	cmp     r4, #0xd
	beq     branch_21d517c
	pop     {r4-r6,pc}
@ 0x21d5168

.thumb
branch_21d5168: @ 21d5168 :thumb
	cmp     r4, #0x19
	bgt     branch_21d5170
	beq     branch_21d5196
	pop     {r4-r6,pc}
@ 0x21d5170

.thumb
branch_21d5170: @ 21d5170 :thumb
	cmp     r4, #0x1f
	beq     branch_21d521c
	pop     {r4-r6,pc}
@ 0x21d5176

.thumb
branch_21d5176: @ 21d5176 :thumb
	bl      Function_21d5658
	b       branch_21d5248
@ 0x21d517c

.thumb
branch_21d517c: @ 21d517c :thumb
	mov     r0, #0x33
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_21d5248
	mov     r1, #0x5f
	bl      0x2002154
	mov     r0, #0x33
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r5, r0]
	b       branch_21d5248
@ 0x21d5196

.thumb
branch_21d5196: @ 21d5196 :thumb
	ldr     r0, [r5, #0x5c]
	bl      Function_21d5638
	cmp     r0, #0x0
	bne     branch_21d51aa
	ldr     r0, [r5, #0x5c]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d730
.thumb
branch_21d51aa: @ 21d51aa :thumb
	mov     r0, r5
	mov     r1, #0xc
	mov     r2, #0x0
	bl      Function_21d55a8
	mov     r0, #0x33
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_21d5248
	mov     r1, #0x5f
	bl      0x2002154
	mov     r0, #0x33
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r5, r0]
	b       branch_21d5248
@ 0x21d51ce

.thumb
branch_21d51ce: @ 21d51ce :thumb
	ldr     r0, [pc, #0x80] @ 0x21d5250, (=0x4a50)
	ldrb    r0, [r5, r0]
	cmp     r0, #0x1
	beq     branch_21d524e
	mov     r0, r6
	bl      0x2032ee8
	mov     r2, r0
	ldr     r0, [r5, #0x34]
	mov     r1, #0x0
	bl      0x200b498
	bl      Function_203608c
	cmp     r6, r0
	beq     branch_21d524e
	mov     r0, #0x33
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_21d5206
	mov     r1, #0x5f
	bl      0x2002154
	mov     r0, #0x33
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r5, r0]
.thumb
branch_21d5206: @ 21d5206 :thumb
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_21d5248
	ldr     r2, [r5, #0x10]
	ldr     r0, [pc, #0x40] @ 0x21d5254, (=0xffff)
	ldr     r1, [r2, #0x30]
	eor     r0, r6
	and     r0, r1
	str     r0, [r2, #0x30]
	b       branch_21d5248
@ 0x21d521c

.thumb
branch_21d521c: @ 21d521c :thumb
	ldr     r0, [r5, #0x5c]
	bl      Function_21d5638
	cmp     r0, #0x0
	bne     branch_21d5230
	ldr     r0, [r5, #0x5c]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d730
.thumb
branch_21d5230: @ 21d5230 :thumb
	mov     r0, #0x33
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_21d5248
	mov     r1, #0x5f
	bl      0x2002154
	mov     r0, #0x33
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r5, r0]
.thumb
branch_21d5248: @ 21d5248 :thumb
	mov     r0, #0xd5
	lsl     r0, r0, #2
	str     r4, [r5, r0]
.thumb
branch_21d524e: @ 21d524e :thumb
	pop     {r4-r6,pc}
@ 0x21d5250

.word 0x4a50 @ 0x21d5250
.word 0xffff @ 0x21d5254
.thumb
Function_21d5258: @ 21d5258 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	mov     r0, #0xd5
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r4, r1
	mov     r6, r2
	cmp     r0, #0x3
	bne     branch_21d52fa
	cmp     r4, #0x1
	beq     branch_21d5276
	cmp     r4, #0x13
	beq     branch_21d52bc
	b       branch_21d52f2
@ 0x21d5276

.thumb
branch_21d5276: @ 21d5276 :thumb
	mov     r0, r6
	bl      0x2032ee8
	mov     r2, r0
	ldr     r0, [r5, #0x34]
	mov     r1, #0x0
	bl      0x200b498
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_21d5858
	mov     r0, #0xd5
	lsl     r0, r0, #2
	str     r4, [r5, r0]
	bl      0x2035e18
	ldr     r1, [r5, #0x10]
	str     r0, [r1, #0x2c]
	ldr     r0, [r5, #0x10]
	mov     r1, #0x0
	str     r1, [r0, #0x30]
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_21d530c
	mov     r3, #0x1
	str     r3, [sp, #0x0]
	ldr     r0, [r5, #0x10]
	mov     r1, #0x7
	add     r2, sp, #0x0
	bl      0x209bebc
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x21d52bc

.thumb
branch_21d52bc: @ 21d52bc :thumb
	mov     r0, r6
	bl      0x2032ee8
	mov     r2, r0
	ldr     r0, [r5, #0x34]
	mov     r1, #0x0
	bl      0x200b498
	bl      Function_203608c
	cmp     r6, r0
	beq     branch_21d530c
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_21d52e8
	ldr     r2, [r5, #0x10]
	ldr     r0, [pc, #0x30] @ 0x21d5310, (=0xffff)
	ldr     r1, [r2, #0x30]
	eor     r0, r6
	and     r0, r1
	str     r0, [r2, #0x30]
.thumb
branch_21d52e8: @ 21d52e8 :thumb
	mov     r0, #0xd5
	lsl     r0, r0, #2
	add     sp, #0x4
	str     r4, [r5, r0]
	pop     {r3-r6,pc}
@ 0x21d52f2

.thumb
branch_21d52f2: @ 21d52f2 :thumb
	bl      ErrorHandling
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x21d52fa

.thumb
branch_21d52fa: @ 21d52fa :thumb
	cmp     r4, #0x1
	bne     branch_21d530c
	ldr     r0, [r5, #0x10]
	mov     r1, #0x0
	str     r1, [r0, #0x30]
	bl      0x2035e18
	ldr     r1, [r5, #0x10]
	str     r0, [r1, #0x2c]
.thumb
branch_21d530c: @ 21d530c :thumb
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x21d5310

.word 0xffff @ 0x21d5310
.thumb
Function_21d5314: @ 21d5314 :thumb
	push    {r3,lr}
	ldrh    r1, [r0, #0x0]
	add     r1, #0xa
	strh    r1, [r0, #0x0]
	ldrh    r2, [r0, #0x0]
	mov     r1, #0x5a
	lsl     r1, r1, #2
	cmp     r2, r1
	bls     branch_21d532a
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
.thumb
branch_21d532a: @ 21d532a :thumb
	ldrh    r0, [r0, #0x0]
	bl      0x201d250
	mov     r1, #0xa
	mov     r2, r0
	mul     r2, r1
	asr     r0, r2, #11
	lsr     r0, r0, #20
	add     r0, r2, r0
	asr     r0, r0, #12
	add     r0, #0xf
	lsl     r2, r0, #5
	mov     r0, #0x1d
	orr     r2, r0
	add     r0, sp, #0x0
	strh    r2, [r0, #0x0]
	add     r0, sp, #0x0
	mov     r2, #0x2
	blx     0x20c0160
	add     r0, sp, #0x0
	mov     r1, #0x2a
	mov     r2, #0x2
	blx     0x20c0160
	pop     {r3,pc}
@ 0x21d535e


.align 2, 0


.thumb
Function_21d5360: @ 21d5360 :thumb
	push    {r3-r5,lr}
	mov     r5, #0x0
	mov     r4, r5
.thumb
branch_21d5366: @ 21d5366 :thumb
	mov     r0, r4
	bl      0x2032ee8
	cmp     r0, #0x0
	beq     branch_21d5372
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_21d5372: @ 21d5372 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x5
	blt     branch_21d5366
	mov     r0, r5
	pop     {r3-r5,pc}
@ 0x21d537c

.thumb
Function_21d537c: @ 21d537c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	str     r3, [sp, #0x14]
	mov     r6, r0
	str     r2, [sp, #0x10]
	bl      Function_203608c
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x14]
	bl      Function_21d54cc
	cmp     r0, #0x0
	bne     branch_21d539c
	add     sp, #0x28
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21d539c

.thumb
branch_21d539c: @ 21d539c :thumb
	mov     r0, r6
	mov     r1, #0x0
	bl      Function_201ada4
	ldr     r7, [sp, #0x14]
	mov     r0, #0x0
	str     r0, [sp, #0x20]
	mov     r4, r7
	mov     r5, #0x1
.thumb
branch_21d53ae: @ 21d53ae :thumb
	mov     r0, #0xdd
	lsl     r0, r0, #2
	ldr     r0, [r7, r0]
	cmp     r0, #0x0
	beq     branch_21d5468
	bl      0x2025f24
	str     r0, [sp, #0x24]
	mov     r0, #0xdd
	lsl     r0, r0, #2
	ldr     r0, [r7, r0]
	ldr     r1, [r4, #0x3c]
	bl      0x2025ef4
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x14]
	ldr     r2, [sp, #0x24]
	ldr     r0, [r0, #0x34]
	mov     r1, #0x0
	mov     r3, #0x5
	bl      0x200b60c
	ldr     r0, [sp, #0x14]
	ldr     r1, [sp, #0x14]
	ldr     r0, [r0, #0x34]
	ldr     r1, [r1, #0x38]
	mov     r2, #0x1
	mov     r3, #0x5f
	bl      0x200b29c
	str     r0, [sp, #0x18]
	ldr     r1, [sp, #0x1c]
	ldr     r0, [sp, #0x20]
	cmp     r1, r0
	str     r5, [sp, #0x0]
	bne     branch_21d5430
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x80] @ 0x21d5484, (=0x20300)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x3c]
	mov     r0, r6
	mov     r3, #0x5
	bl      0x201d78c
	str     r5, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x68] @ 0x21d5484, (=0x20300)
	ldr     r2, [sp, #0x18]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	mov     r0, r6
	mov     r1, #0x0
	mov     r3, #0x46
	bl      0x201d78c
	b       branch_21d5462
@ 0x21d5430

.thumb
branch_21d5430: @ 21d5430 :thumb
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x10]
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x3c]
	mov     r0, r6
	mov     r3, #0x5
	bl      0x201d78c
	str     r5, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x10]
	ldr     r2, [sp, #0x18]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	mov     r0, r6
	mov     r1, #0x0
	mov     r3, #0x46
	bl      0x201d78c
.thumb
branch_21d5462: @ 21d5462 :thumb
	ldr     r0, [sp, #0x18]
	bl      Function_20237bc
.thumb
branch_21d5468: @ 21d5468 :thumb
	ldr     r0, [sp, #0x20]
	add     r7, #0x8
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r5, #0x12
	str     r0, [sp, #0x20]
	cmp     r0, #0x5
	blt     branch_21d53ae
	mov     r0, r6
	bl      0x201a954
	mov     r0, #0x1
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x21d5484

.word 0x20300 @ 0x21d5484
.thumb
Function_21d5488: @ 21d5488 :thumb
	bx      lr
@ 0x21d548a


.align 2, 0


.thumb
Function_21d548c: @ 21d548c :thumb
	push    {r3-r5,lr}
	mov     r5, #0x0
	mov     r4, r5
.thumb
branch_21d5492: @ 21d5492 :thumb
	mov     r0, r4
	bl      0x2032ee8
	cmp     r0, #0x0
	beq     branch_21d549e
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_21d549e: @ 21d549e :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x5
	blt     branch_21d5492
	mov     r0, r5
	pop     {r3-r5,pc}
@ 0x21d54a8

.thumb
Function_21d54a8: @ 21d54a8 :thumb
	push    {r4-r6,lr}
	mov     r5, #0x0
	mov     r4, r5
	mov     r6, #0x1
.thumb
branch_21d54b0: @ 21d54b0 :thumb
	mov     r0, r4
	bl      0x2032ee8
	cmp     r0, #0x0
	beq     branch_21d54c0
	mov     r0, r6
	lsl     r0, r4
	orr     r5, r0
.thumb
branch_21d54c0: @ 21d54c0 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x5
	blt     branch_21d54b0
	mov     r0, r5
	pop     {r4-r6,pc}
@ 0x21d54ca


.align 2, 0


.thumb
Function_21d54cc: @ 21d54cc :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r4, #0x0
	str     r4, [sp, #0x0]
	mov     r6, r7
	mov     r5, r7
.thumb
branch_21d54d8: @ 21d54d8 :thumb
	mov     r0, #0xdd
	lsl     r0, r0, #2
	ldr     r1, [r6, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r6, r0]
	mov     r0, r4
	bl      0x2032ee8
	mov     r1, #0xdd
	lsl     r1, r1, #2
	str     r0, [r6, r1]
	ldr     r0, [pc, #0xac] @ 0x21d559c, (=0x4a60)
	ldr     r2, [pc, #0xac] @ 0x21d55a0, (=0x4a68)
	ldr     r1, [r5, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	ldr     r0, [r5, r0]
	str     r1, [r5, r2]
	add     r1, r2, #0x4
	str     r0, [r5, r1]
	mov     r0, #0xdd
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	cmp     r0, #0x0
	beq     branch_21d5516
	bl      0x2025f20
	ldr     r1, [pc, #0x8c] @ 0x21d559c, (=0x4a60)
	str     r0, [r5, r1]
	mov     r1, #0x1
	ldr     r0, [pc, #0x90] @ 0x21d55a4, (=0x4a64)
	b       branch_21d5520
@ 0x21d5516

.thumb
branch_21d5516: @ 21d5516 :thumb
	mov     r0, r2
	mov     r1, #0x0
	sub     r0, #0x8
	str     r1, [r5, r0]
	.hword  0x1f10 @ sub r0, r2, #0x4
.thumb
branch_21d5520: @ 21d5520 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	str     r1, [r5, r0]
	add     r6, #0x8
	add     r5, #0x10
	cmp     r4, #0x5
	blt     branch_21d54d8
	mov     r4, #0x0
	mov     r2, r7
	mov     r3, r7
.thumb
branch_21d5532: @ 21d5532 :thumb
	mov     r0, #0xdd
	mov     r1, #0xde
	lsl     r0, r0, #2
	lsl     r1, r1, #2
	ldr     r0, [r7, r0]
	ldr     r1, [r7, r1]
	cmp     r1, r0
	beq     branch_21d555c
	mov     r1, #0x1
	str     r1, [sp, #0x0]
	cmp     r0, #0x0
	bne     branch_21d5554
	mov     r0, #0xe7
	mov     r1, #0x3
	lsl     r0, r0, #2
	str     r1, [r2, r0]
	b       branch_21d558c
@ 0x21d5554

.thumb
branch_21d5554: @ 21d5554 :thumb
	mov     r0, #0xe7
	lsl     r0, r0, #2
	str     r1, [r2, r0]
	b       branch_21d558c
@ 0x21d555c

.thumb
branch_21d555c: @ 21d555c :thumb
	ldr     r0, [pc, #0x3c] @ 0x21d559c, (=0x4a60)
	ldr     r5, [pc, #0x40] @ 0x21d55a0, (=0x4a68)
	ldr     r1, [r3, r0]
	ldr     r6, [r3, r5]
	.hword  0x1d00 @ add r0, r0, #0x4
	.hword  0x1d2d @ add r5, r5, #0x4
	ldr     r0, [r3, r0]
	ldr     r5, [r3, r5]
	eor     r1, r6
	eor     r5, r0
	orr     r1, r5
	beq     branch_21d558c
	mov     r1, #0x1
	str     r1, [sp, #0x0]
	cmp     r0, #0x0
	bne     branch_21d5586
	mov     r0, #0xe7
	mov     r1, #0x3
	lsl     r0, r0, #2
	str     r1, [r2, r0]
	b       branch_21d558c
@ 0x21d5586

.thumb
branch_21d5586: @ 21d5586 :thumb
	mov     r0, #0xe7
	lsl     r0, r0, #2
	str     r1, [r2, r0]
.thumb
branch_21d558c: @ 21d558c :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r7, #0x8
	.hword  0x1d12 @ add r2, r2, #0x4
	add     r3, #0x10
	cmp     r4, #0x5
	blt     branch_21d5532
	ldr     r0, [sp, #0x0]
	pop     {r3-r7,pc}
@ 0x21d559c

.word 0x4a60 @ 0x21d559c
.word 0x4a68 @ 0x21d55a0
.word 0x4a64 @ 0x21d55a4
.thumb
Function_21d55a8: @ 21d55a8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r7, r1
	mov     r0, #0xb4
	mov     r1, #0x5f
	mov     r6, r2
	bl      Function_2023790
	mov     r4, r0
	ldr     r0, [r5, #0x38]
	mov     r1, r7
	mov     r2, r4
	bl      Function_200b1b8
	ldr     r0, [r5, #0x34]
	ldr     r1, [r5, #0x54]
	mov     r2, r4
	bl      Function_200c388
	mov     r0, r4
	bl      Function_20237bc
	mov     r0, #0xbe
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0xf
	bl      Function_201ada4
	mov     r0, #0xbe
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x0
	mov     r2, #0x1
	mov     r3, #0xa
	bl      0x200e060
	cmp     r6, #0x0
	bne     branch_21d5618
	mov     r0, r5
	bl      Function_21d5854
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, #0xbe
	lsl     r0, r0, #2
	ldr     r2, [r5, #0x54]
	add     r0, r5, r0
	mov     r1, #0x1
	bl      0x201d738
	add     sp, #0xc
	str     r0, [r5, #0x5c]
	pop     {r4-r7,pc}
@ 0x21d5618

.thumb
branch_21d5618: @ 21d5618 :thumb
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r3, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, #0xbe
	lsl     r0, r0, #2
	ldr     r2, [r5, #0x54]
	add     r0, r5, r0
	mov     r1, #0x1
	bl      0x201d738
	mov     r0, #0xff
	str     r0, [r5, #0x5c]
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21d5636


.align 2, 0


.thumb
Function_21d5638: @ 21d5638 :thumb
	push    {r3,lr}
	cmp     r0, #0xff
	bne     branch_21d5642
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d5642

.thumb
branch_21d5642: @ 21d5642 :thumb
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d724
	cmp     r0, #0x0
	bne     branch_21d5652
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d5652

.thumb
branch_21d5652: @ 21d5652 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d5656


.align 2, 0


.thumb
Function_21d5658: @ 21d5658 :thumb
	mov     r1, #0xbe
	lsl     r1, r1, #2
	add     r0, r0, r1
	ldr     r3, [pc, #0x4] @ 0x21d5664, (=0x200e085)
	mov     r1, #0x0
	bx      r3
@ 0x21d5664

.word 0x200e085 @ 0x21d5664
.thumb
Function_21d5668: @ 21d5668 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r0, #0xcf
	lsl     r0, r0, #2
	add     r0, r5, r0
	str     r0, [sp, #0x14]
	mov     r0, #0xd3
	lsl     r0, r0, #2
	mov     r4, #0x0
	add     r0, r5, r0
	str     r4, [sp, #0x8]
	mov     r6, r5
	mov     r7, #0x1c
	str     r0, [sp, #0x18]
.thumb
branch_21d568a: @ 21d568a :thumb
	mov     r0, #0xe7
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	cmp     r0, #0x3
	bhi     branch_21d5756
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d56a0

Jumppoints_21d56a0:
.hword branch_21d5756 - Jumppoints_21d56a0 - 2
.hword branch_21d56a8 - Jumppoints_21d56a0 - 2
.hword branch_21d5756 - Jumppoints_21d56a0 - 2
.hword branch_21d571e - Jumppoints_21d56a0 - 2
.thumb
branch_21d56a8: @ 21d56a8 :thumb
	mov     r0, #0xdd
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	cmp     r0, #0x0
	bne     branch_21d56b6
	bl      ErrorHandling
.thumb
branch_21d56b6: @ 21d56b6 :thumb
	mov     r0, #0xdd
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	bl      GetGender
	str     r0, [sp, #0xc]
	mov     r0, #0xdd
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	bl      Function_2025f8c
	str     r0, [sp, #0x10]
	bl      Function_203608c
	cmp     r4, r0
	bne     branch_21d56e8
	mov     r0, #0x8f
	ldr     r1, [sp, #0xc]
	lsl     r0, r0, #2
	lsl     r1, r1, #1
	ldr     r0, [r5, r0]
	add     r1, #0x26
	bl      0x2021d6c
	b       branch_21d5704
@ 0x21d56e8

.thumb
branch_21d56e8: @ 21d56e8 :thumb
	ldr     r0, [sp, #0xc]
	ldr     r1, [sp, #0x18]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x14]
	ldr     r3, [sp, #0x10]
	mov     r2, r4
	bl      Function_21d57e0
	mov     r0, #0x8f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r1, [sp, #0x4]
	bl      0x2021d6c
.thumb
branch_21d5704: @ 21d5704 :thumb
	mov     r0, #0x8f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      0x2021cac
	mov     r0, #0xe7
	mov     r1, #0x2
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	b       branch_21d5756
@ 0x21d571e

.thumb
branch_21d571e: @ 21d571e :thumb
	bl      Function_203608c
	cmp     r4, r0
	bne     branch_21d5742
	mov     r0, #0xdd
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	bl      GetGender
	mov     r1, r0
	mov     r0, #0x8f
	lsl     r0, r0, #2
	lsl     r1, r1, #1
	ldr     r0, [r5, r0]
	add     r1, #0x27
	bl      0x2021d6c
	b       branch_21d574e
@ 0x21d5742

.thumb
branch_21d5742: @ 21d5742 :thumb
	mov     r0, #0x8f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r7
	bl      0x2021d6c
.thumb
branch_21d574e: @ 21d574e :thumb
	mov     r0, #0xe7
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_21d5756: @ 21d5756 :thumb
	ldr     r0, [sp, #0x4]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c80 @ add r0, r0, #0x2
	.hword  0x1d2d @ add r5, r5, #0x4
	add     r6, #0x8
	.hword  0x1cbf @ add r7, r7, #0x2
	str     r0, [sp, #0x4]
	cmp     r4, #0x5
	blt     branch_21d568a
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x0
	beq     branch_21d5774
	ldr     r0, [pc, #0x8] @ 0x21d5778, (=0x64f)
	bl      Function_2005748
.thumb
branch_21d5774: @ 21d5774 :thumb
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x21d5778

.word 0x64f @ 0x21d5778
.thumb
Function_21d577c: @ 21d577c :thumb
	push    {r3-r5,lr}
	mov     r2, #0xd3
	mov     r5, r0
	lsl     r2, r2, #2
	mov     r4, r1
	mov     r0, #0x68
	mov     r1, #0x8
	add     r2, r5, r2
	mov     r3, #0x5f
	bl      0x2006f88
	mov     r2, #0xd1
	lsl     r2, r2, #2
	str     r0, [r5, r2]
	add     r2, #0xc
	mov     r0, r4
	mov     r1, #0x7
	add     r2, r5, r2
	mov     r3, #0x5f
	bl      0x20071ec
	mov     r3, #0xd2
	lsl     r3, r3, #2
	str     r0, [r5, r3]
	mov     r0, #0x5f
	sub     r3, #0xc
	str     r0, [sp, #0x0]
	mov     r0, #0x68
	mov     r1, #0x20
	mov     r2, #0x1
	add     r3, r5, r3
	bl      0x2006f50
	mov     r3, #0xcd
	lsl     r3, r3, #2
	str     r0, [r5, r3]
	mov     r0, #0x5f
	add     r3, #0xc
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x9
	mov     r2, #0x1
	add     r3, r5, r3
	bl      0x20071b4
	mov     r1, #0xce
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	pop     {r3-r5,pc}
@ 0x21d57de


.align 2, 0


.thumb
Function_21d57e0: @ 21d57e0 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r6, r1
	ldr     r0, [sp, #0x18]
	mov     r1, r3
	mov     r5, r2
	bl      0x205ca0c
	mov     r4, r0
	ldr     r0, [r6, #0x4]
	mov     r2, #0x6
	ldr     r6, [r0, #0xc]
	ldr     r0, [r7, #0x4]
	lsl     r2, r2, #8
	ldr     r1, [r0, #0x14]
	mov     r0, r4
	mul     r0, r2
	add     r0, r1, r0
	ldr     r1, [pc, #0x18] @ 0x21d5820, (=0x21d5d9c)
	lsl     r3, r5, #1
	ldrh    r1, [r1, r3]
	blx     0x20c02bc
	lsl     r0, r4, #5
	add     r1, r5, #0x7
	add     r0, r6, r0
	lsl     r1, r1, #5
	mov     r2, #0x20
	blx     0x20c0160
	pop     {r3-r7,pc}
@ 0x21d581e


.align 2


.word 0x21d5d9c @ 0x21d5820
.thumb
Function_21d5824: @ 21d5824 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xd1
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      free
	mov     r0, #0xd2
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      free
	mov     r0, #0xcd
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      free
	mov     r0, #0xce
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      free
	pop     {r4,pc}
@ 0x21d5852


.align 2, 0


.thumb
Function_21d5854: @ 21d5854 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x21d5858

.thumb
Function_21d5858: @ 21d5858 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_21d58a4
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r4, r0
	bne     branch_21d5876
	mov     r0, #0x1
	bl      0x2037b58
	b       branch_21d5886
@ 0x21d5876

.thumb
branch_21d5876: @ 21d5876 :thumb
	bl      0x2035e18
	add     r0, r4, r0
	cmp     r0, #0x5
	ble     branch_21d5882
	mov     r0, #0x5
.thumb
branch_21d5882: @ 21d5882 :thumb
	bl      0x2037b58
.thumb
branch_21d5886: @ 21d5886 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r4, r0
	ldr     r0, [pc, #0x18] @ 0x21d58a8, (=0x4a51)
	bne     branch_21d5896
	mov     r1, #0x2
	strb    r1, [r5, r0]
	pop     {r3-r5,pc}
@ 0x21d5896

.thumb
branch_21d5896: @ 21d5896 :thumb
	cmp     r4, #0x0
	bne     branch_21d58a0
	mov     r1, #0x1
	strb    r1, [r5, r0]
	pop     {r3-r5,pc}
@ 0x21d58a0

.thumb
branch_21d58a0: @ 21d58a0 :thumb
	mov     r1, #0x0
	strb    r1, [r5, r0]
.thumb
branch_21d58a4: @ 21d58a4 :thumb
	pop     {r3-r5,pc}
@ 0x21d58a6


.align 2


.word 0x4a51 @ 0x21d58a8
.thumb
Function_21d58ac: @ 21d58ac :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r4, r0
	mov     r6, r1
	bl      Function_21d548c
	mov     r5, r0
	ldr     r0, [r4, #0x10]
	ldr     r0, [r0, #0x2c]
	cmp     r5, r0
	ble     branch_21d58d6
	mov     r3, #0x1
	add     r0, sp, #0x0
	strb    r3, [r0, #0x0]
	ldr     r0, [r4, #0x10]
	mov     r1, #0x7
	add     r2, sp, #0x0
	bl      0x209bebc
	mov     r1, #0x1
	b       branch_21d58d8
@ 0x21d58d6

.thumb
branch_21d58d6: @ 21d58d6 :thumb
	mov     r1, #0x0
.thumb
branch_21d58d8: @ 21d58d8 :thumb
	ldr     r0, [pc, #0xc4] @ 0x21d59a0, (=0x4a48)
	str     r1, [r4, r0]
	ldr     r0, [pc, #0xc4] @ 0x21d59a4, (=0x4a44)
	ldr     r0, [r4, r0]
	cmp     r5, r0
	bne     branch_21d58ea
	add     sp, #0x4
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x21d58ea

.thumb
branch_21d58ea: @ 21d58ea :thumb
	cmp     r5, #0x5
	bhi     branch_21d5990
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d58fa

Jumppoints_21d58fa:
.hword branch_21d5990 - Jumppoints_21d58fa - 2
.hword branch_21d5906 - Jumppoints_21d58fa - 2
.hword branch_21d594a - Jumppoints_21d58fa - 2
.hword branch_21d594a - Jumppoints_21d58fa - 2
.hword branch_21d594a - Jumppoints_21d58fa - 2
.hword branch_21d5982 - Jumppoints_21d58fa - 2
.thumb
branch_21d5906: @ 21d5906 :thumb
	bl      0x2035e18
	cmp     r0, #0x1
	bgt     branch_21d5916
	bl      0x20318ec
	cmp     r0, #0x1
	bls     branch_21d591c
.thumb
branch_21d5916: @ 21d5916 :thumb
	add     sp, #0x4
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x21d591c

.thumb
branch_21d591c: @ 21d591c :thumb
	mov     r0, #0xd5
	mov     r1, #0x11
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r0, r4
	sub     r1, #0x12
	bl      Function_21d5858
	mov     r0, #0x33
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21d5944
	mov     r1, #0x5f
	bl      0x2002154
	mov     r0, #0x33
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r4, r0]
.thumb
branch_21d5944: @ 21d5944 :thumb
	add     sp, #0x4
	mov     r0, #0x2
	pop     {r3-r6,pc}
@ 0x21d594a

.thumb
branch_21d594a: @ 21d594a :thumb
	mov     r0, #0xd
	bl      0x205bea8
	ldr     r0, [pc, #0x50] @ 0x21d59a4, (=0x4a44)
	ldr     r1, [r4, r0]
	cmp     r5, r1
	bge     branch_21d5990
	add     r0, #0xd
	ldsb    r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21d5966
	cmp     r0, #0x1
	beq     branch_21d5970
	b       branch_21d5978
@ 0x21d5966

.thumb
branch_21d5966: @ 21d5966 :thumb
	mov     r0, r4
	mov     r1, r6
	bl      Function_21d5858
	b       branch_21d5978
@ 0x21d5970

.thumb
branch_21d5970: @ 21d5970 :thumb
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d5858
.thumb
branch_21d5978: @ 21d5978 :thumb
	bl      0x2035e18
	ldr     r1, [r4, #0x10]
	str     r0, [r1, #0x2c]
	b       branch_21d5990
@ 0x21d5982

.thumb
branch_21d5982: @ 21d5982 :thumb
	mov     r0, #0xc
	bl      0x205bea8
	mov     r0, r4
	mov     r1, r6
	bl      Function_21d5858
.thumb
branch_21d5990: @ 21d5990 :thumb
	bl      Function_21d548c
	ldr     r1, [pc, #0xc] @ 0x21d59a4, (=0x4a44)
	str     r0, [r4, r1]
	mov     r0, #0x1
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x21d599e


.align 2


.word 0x4a48 @ 0x21d59a0
.word 0x4a44 @ 0x21d59a4
.thumb
Function_21d59a8: @ 21d59a8 :thumb
	bx      lr
@ 0x21d59aa



.align 2, 0
Unknown_21d59ac: @ 0x21d59ac
.incbin "./baserom/overlay/overlay_0109.bin", 0x4c2c, 0x21d59d8 - 0x21d59ac


.word Function_21d3060+1 @ =0x21d3061, 0x21d59d8
.word Function_21d308c+1 @ =0x21d308d, 0x21d59dc
.word Function_21d30cc+1 @ =0x21d30cd, 0x21d59e0

.incbin "./baserom/overlay/overlay_0109.bin", 0x4c64, 0x21d5cbc - 0x21d59e4


.word Function_21d0f78+1 @ =0x21d0f79, 0x21d5cbc
.word Function_21d0f8c+1 @ =0x21d0f8d, 0x21d5cc0
.word Function_21d0fb0+1 @ =0x21d0fb1, 0x21d5cc4
.word Function_21d0fc8+1 @ =0x21d0fc9, 0x21d5cc8
.word Function_21d0ff8+1 @ =0x21d0ff9, 0x21d5ccc
.word Function_21d1018+1 @ =0x21d1019, 0x21d5cd0
.word Function_21d1048+1 @ =0x21d1049, 0x21d5cd4
.word Function_21d10d8+1 @ =0x21d10d9, 0x21d5cd8
.word Function_21d1100+1 @ =0x21d1101, 0x21d5cdc
.word Function_21d1124+1 @ =0x21d1125, 0x21d5ce0
.word Function_21d1150+1 @ =0x21d1151, 0x21d5ce4
.word Function_21d1164+1 @ =0x21d1165, 0x21d5ce8
.word Function_21d117c+1 @ =0x21d117d, 0x21d5cec
.word Function_21d11a0+1 @ =0x21d11a1, 0x21d5cf0
.word Function_21d11bc+1 @ =0x21d11bd, 0x21d5cf4
.word Function_21d1204+1 @ =0x21d1205, 0x21d5cf8
.word Function_21d122c+1 @ =0x21d122d, 0x21d5cfc
.word Function_21d12b0+1 @ =0x21d12b1, 0x21d5d00
.word Function_21d1334+1 @ =0x21d1335, 0x21d5d04
.word Function_21d1368+1 @ =0x21d1369, 0x21d5d08
.word Function_21d1390+1 @ =0x21d1391, 0x21d5d0c
.word Function_21d13bc+1 @ =0x21d13bd, 0x21d5d10
.word Function_21d13d8+1 @ =0x21d13d9, 0x21d5d14
.word Function_21d13ec+1 @ =0x21d13ed, 0x21d5d18
.word Function_21d1404+1 @ =0x21d1405, 0x21d5d1c
.word Function_21d141c+1 @ =0x21d141d, 0x21d5d20
.word Function_21d1450+1 @ =0x21d1451, 0x21d5d24
.word Function_21d1460+1 @ =0x21d1461, 0x21d5d28
.word Function_21d1570+1 @ =0x21d1571, 0x21d5d2c
.word Function_21d1648+1 @ =0x21d1649, 0x21d5d30
.word Function_21d167c+1 @ =0x21d167d, 0x21d5d34
.word Function_21d16a4+1 @ =0x21d16a5, 0x21d5d38
.word Function_21d1720+1 @ =0x21d1721, 0x21d5d3c
.word Function_21d1734+1 @ =0x21d1735, 0x21d5d40
.word Function_21d1758+1 @ =0x21d1759, 0x21d5d44
.word Function_21d17ec+1 @ =0x21d17ed, 0x21d5d48
.word Function_21d1858+1 @ =0x21d1859, 0x21d5d4c
.word Function_21d18a0+1 @ =0x21d18a1, 0x21d5d50
.word Function_21d18f4+1 @ =0x21d18f5, 0x21d5d54
.word Function_21d1918+1 @ =0x21d1919, 0x21d5d58
.word Function_21d19ac+1 @ =0x21d19ad, 0x21d5d5c
.word Function_21d19d0+1 @ =0x21d19d1, 0x21d5d60
.word Function_21d19fc+1 @ =0x21d19fd, 0x21d5d64
.word Function_21d1a14+1 @ =0x21d1a15, 0x21d5d68
.word Function_21d1a6c+1 @ =0x21d1a6d, 0x21d5d6c
.word Function_21d1aa8+1 @ =0x21d1aa9, 0x21d5d70
.word Function_21d1adc+1 @ =0x21d1add, 0x21d5d74
.word Function_21d1af0+1 @ =0x21d1af1, 0x21d5d78
.word Function_21d1b0c+1 @ =0x21d1b0d, 0x21d5d7c
.word Function_21d1b2c+1 @ =0x21d1b2d, 0x21d5d80
.word Function_21d1b8c+1 @ =0x21d1b8d, 0x21d5d84
.word Function_21d1ba4+1 @ =0x21d1ba5, 0x21d5d88
.word Function_21d1be4+1 @ =0x21d1be5, 0x21d5d8c
.word Function_21d1bfc+1 @ =0x21d1bfd, 0x21d5d90

.incbin "./baserom/overlay/overlay_0109.bin", 0x5014, 0x21d5e9c - 0x21d5d94


.word Function_21d474c+1 @ =0x21d474d, 0x21d5e9c
.word Function_21d48d4+1 @ =0x21d48d5, 0x21d5ea0
.word Function_21d4920+1 @ =0x21d4921, 0x21d5ea4
.word Function_21d478c+1 @ =0x21d478d, 0x21d5ea8
.word Function_21d4950+1 @ =0x21d4951, 0x21d5eac
.word Function_21d4980+1 @ =0x21d4981, 0x21d5eb0
.word Function_21d4aa8+1 @ =0x21d4aa9, 0x21d5eb4
.word Function_21d4ac0+1 @ =0x21d4ac1, 0x21d5eb8
.word Function_21d4b44+1 @ =0x21d4b45, 0x21d5ebc
.word Function_21d4d9c+1 @ =0x21d4d9d, 0x21d5ec0
.word Function_21d4dbc+1 @ =0x21d4dbd, 0x21d5ec4
.word Function_21d4df8+1 @ =0x21d4df9, 0x21d5ec8
.word Function_21d4e28+1 @ =0x21d4e29, 0x21d5ecc
.word Function_21d4ed8+1 @ =0x21d4ed9, 0x21d5ed0
.word Function_21d4f28+1 @ =0x21d4f29, 0x21d5ed4
.word Function_21d4f4c+1 @ =0x21d4f4d, 0x21d5ed8
.word Function_21d4f6c+1 @ =0x21d4f6d, 0x21d5edc
.word Function_21d4fac+1 @ =0x21d4fad, 0x21d5ee0
.word Function_21d4fd8+1 @ =0x21d4fd9, 0x21d5ee4
.word Function_21d4ffc+1 @ =0x21d4ffd, 0x21d5ee8
.word Function_21d505c+1 @ =0x21d505d, 0x21d5eec
.word Function_21d5098+1 @ =0x21d5099, 0x21d5ef0
.word Function_21d4b64+1 @ =0x21d4b65, 0x21d5ef4
.word Function_21d4b94+1 @ =0x21d4b95, 0x21d5ef8
.word Function_21d4c4c+1 @ =0x21d4c4d, 0x21d5efc
.word Function_21d4c7c+1 @ =0x21d4c7d, 0x21d5f00
.word Function_21d4ca8+1 @ =0x21d4ca9, 0x21d5f04
.word Function_21d4cc8+1 @ =0x21d4cc9, 0x21d5f08
.word Function_21d4d20+1 @ =0x21d4d21, 0x21d5f0c
.word Function_21d4d80+1 @ =0x21d4d81, 0x21d5f10
.word Function_21d48fc+1 @ =0x21d48fd, 0x21d5f14
.word Function_21d510c+1 @ =0x21d510d, 0x21d5f18
@ 0x21d5f1c


.incbin "./baserom/overlay/overlay_0109.bin", 0x519c, 0x21d5f60 - 0x21d5f1c


@end 0x21d5f60



