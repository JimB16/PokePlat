

.section .iwram91, "ax"


.thumb
Function_21d0d80: @ 21d0d80 :thumb
	push    {r3-r5,lr}
	mov     r2, #0x2
	mov     r5, r0
	mov     r0, #0x3
	mov     r1, #0x43
	lsl     r2, r2, #16
	bl      0x2017fc8
	mov     r1, #0x62
	mov     r0, r5
	lsl     r1, r1, #2
	mov     r2, #0x43
	bl      0x200681c
	mov     r2, #0x62
	mov     r1, #0x0
	lsl     r2, r2, #2
	mov     r4, r0
	blx 0x20d5124
	mov     r0, r5
	bl      0x2006840
	str     r0, [r4, #0x0]
	mov     r0, r4
	bl      Function_21d0ed8
	ldr     r1, [r4, #0x0]
	mov     r0, r4
	ldrh    r1, [r1, #0x10]
	mov     r2, #0x0
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_21d2548
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d1c10
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r3, [pc, #0x2c] @ 0x21d0e00, (=0x1020f)
	mov     r0, r4
	mov     r1, #0xc
	mov     r2, #0x1
	bl      Function_21d1580
	mov     r0, #0x6
	mov     r1, #0x1
	lsl     r0, r0, #6
	str     r1, [r4, r0]
	mov     r0, r4
	add     r0, #0xc8
	bl      0x201a9a4
	mov     r0, r4
	bl      Function_21d2594
	ldr     r0, [pc, #0xc] @ 0x21d0e04, (=0x21d0f9d)
	mov     r1, r4
	bl      0x2017798
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d0e00

.word 0x1020f @ 0x21d0e00
.word 0x21d0f9d @ 0x21d0e04
.thumb
Function_21d0e08: @ 21d0e08 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	bl      0x200682c
	ldr     r1, [r4, #0x0]
	mov     r5, r0
	cmp     r1, #0xc
	bhi     branch_21d0ea6
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d0e24

Jumppoints_21d0e24:
.hword branch_21d0e3e - Jumppoints_21d0e24 - 2
.hword branch_21d0e46 - Jumppoints_21d0e24 - 2
.hword branch_21d0e4e - Jumppoints_21d0e24 - 2
.hword branch_21d0e56 - Jumppoints_21d0e24 - 2
.hword branch_21d0e5e - Jumppoints_21d0e24 - 2
.hword branch_21d0e66 - Jumppoints_21d0e24 - 2
.hword branch_21d0e6e - Jumppoints_21d0e24 - 2
.hword branch_21d0e76 - Jumppoints_21d0e24 - 2
.hword branch_21d0e7e - Jumppoints_21d0e24 - 2
.hword branch_21d0e86 - Jumppoints_21d0e24 - 2
.hword branch_21d0e8a - Jumppoints_21d0e24 - 2
.hword branch_21d0e92 - Jumppoints_21d0e24 - 2
.hword branch_21d0e9c - Jumppoints_21d0e24 - 2
.thumb
branch_21d0e3e: @ 21d0e3e :thumb
	bl      Function_21d1214
	str     r0, [r4, #0x0]
	b       branch_21d0ea6
@ 0x21d0e46

.thumb
branch_21d0e46: @ 21d0e46 :thumb
	bl      Function_21d122c
	str     r0, [r4, #0x0]
	b       branch_21d0ea6
@ 0x21d0e4e

.thumb
branch_21d0e4e: @ 21d0e4e :thumb
	bl      Function_21d134c
	str     r0, [r4, #0x0]
	b       branch_21d0ea6
@ 0x21d0e56

.thumb
branch_21d0e56: @ 21d0e56 :thumb
	bl      Function_21d136c
	str     r0, [r4, #0x0]
	b       branch_21d0ea6
@ 0x21d0e5e

.thumb
branch_21d0e5e: @ 21d0e5e :thumb
	bl      Function_21d1394
	str     r0, [r4, #0x0]
	b       branch_21d0ea6
@ 0x21d0e66

.thumb
branch_21d0e66: @ 21d0e66 :thumb
	bl      Function_21d13e4
	str     r0, [r4, #0x0]
	b       branch_21d0ea6
@ 0x21d0e6e

.thumb
branch_21d0e6e: @ 21d0e6e :thumb
	bl      Function_21d1438
	str     r0, [r4, #0x0]
	b       branch_21d0ea6
@ 0x21d0e76

.thumb
branch_21d0e76: @ 21d0e76 :thumb
	bl      Function_21d1450
	str     r0, [r4, #0x0]
	b       branch_21d0ea6
@ 0x21d0e7e

.thumb
branch_21d0e7e: @ 21d0e7e :thumb
	bl      Function_21d1480
	str     r0, [r4, #0x0]
	b       branch_21d0ea6
@ 0x21d0e86

.thumb
branch_21d0e86: @ 21d0e86 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d0e8a

.thumb
branch_21d0e8a: @ 21d0e8a :thumb
	bl      Function_21d2604
	str     r0, [r4, #0x0]
	b       branch_21d0ea6
@ 0x21d0e92

.thumb
branch_21d0e92: @ 21d0e92 :thumb
	bl      Function_21d261c
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d0e9c

.thumb
branch_21d0e9c: @ 21d0e9c :thumb
	bl      Function_21d26ac
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d0ea6

.thumb
branch_21d0ea6: @ 21d0ea6 :thumb
	mov     r0, r5
	bl      Function_21d20e8
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      0x200c7ec
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d0eba


.align 2, 0


.thumb
Function_21d0ebc: @ 21d0ebc :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x200682c
	bl      Function_21d0f6c
	mov     r0, r4
	bl      0x2006830
	mov     r0, #0x43
	bl      0x201807c
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d0ed8

.thumb
Function_21d0ed8: @ 21d0ed8 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r0, #0x0
	mov     r1, r0
	bl      0x2017798
	bl      0x20177a4
	bl      0x201ff00
	bl      0x201ff68
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x68] @ 0x21d0f60, (=0xffffe0ff)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r2, [pc, #0x64] @ 0x21d0f64, (=0x4001000)
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	mov     r0, #0x43
	bl      0x2018340
	str     r0, [r4, #0x4]
	mov     r0, #0x0
	mov     r1, #0x43
	bl      0x208c120
	mov     r0, #0x71
	mov     r1, #0x43
	bl      0x2006c24
	mov     r5, r0
	bl      Function_21d0fc4
	ldr     r0, [r4, #0x4]
	bl      Function_21d0fe4
	mov     r0, r4
	mov     r1, r5
	bl      Function_21d10c8
	mov     r0, r4
	mov     r1, r5
	bl      Function_21d2508
	mov     r0, r4
	bl      Function_21d11b8
	mov     r0, r4
	bl      Function_21d1154
	mov     r0, r4
	bl      Function_21d1784
	mov     r0, r4
	bl      Function_21d1498
	ldr     r0, [pc, #0x14] @ 0x21d0f68, (=0x21d0f9d)
	mov     r1, r4
	bl      0x2017798
	mov     r0, r5
	bl      0x2006ca8
	pop     {r3-r5,pc}
@ 0x21d0f60

.word 0xffffe0ff @ 0x21d0f60
.word 0x4001000 @ 0x21d0f64
.word 0x21d0f9d @ 0x21d0f68
.thumb
Function_21d0f6c: @ 21d0f6c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d1868
	mov     r0, r4
	bl      Function_21d11a0
	ldr     r0, [r4, #0x4]
	bl      Function_21d1098
	mov     r0, r4
	bl      Function_21d11f0
	mov     r0, r4
	bl      Function_21d20b4
	bl      0x201dc3c
	mov     r0, #0x0
	mov     r1, r0
	bl      0x2017798
	pop     {r4,pc}
@ 0x21d0f9a


.align 2, 0


.thumb
Function_21d0f9c: @ 21d0f9c :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x4]
	bl      0x201c2b8
	bl      0x201dcac
	bl      0x200c800
	ldr     r3, [pc, #0xc] @ 0x21d0fbc, (=0x27e0000)
	ldr     r1, [pc, #0x10] @ 0x21d0fc0, (=0x3ff8)
	mov     r0, #0x1
	ldr     r2, [r3, r1]
	orr     r0, r2
	str     r0, [r3, r1]
	pop     {r3,pc}
@ 0x21d0fba


.align 2


.word 0x27e0000 @ 0x21d0fbc
.word 0x3ff8 @ 0x21d0fc0
.thumb
Function_21d0fc4: @ 21d0fc4 :thumb
	push    {r4,lr}
	add     sp, #-0x28
	ldr     r4, [pc, #0x14] @ 0x21d0fe0, (=0x21d2804)
	add     r3, sp, #0x0
	mov     r2, #0x5
.thumb
branch_21d0fce: @ 21d0fce :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d0fce
	add     r0, sp, #0x0
	bl      0x201fe94
	add     sp, #0x28
	pop     {r4,pc}
@ 0x21d0fe0

.word 0x21d2804 @ 0x21d0fe0
.thumb
Function_21d0fe4: @ 21d0fe4 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x64
	ldr     r5, [pc, #0x9c] @ 0x21d1088, (=0x21d270c)
	add     r3, sp, #0x54
	mov     r4, r0
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      0x2018368
	ldr     r5, [pc, #0x8c] @ 0x21d108c, (=0x21d2748)
	add     r3, sp, #0x38
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
	ldr     r5, [pc, #0x68] @ 0x21d1090, (=0x21d2780)
	add     r3, sp, #0x1c
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
	ldr     r5, [pc, #0x44] @ 0x21d1094, (=0x21d2764)
	add     r3, sp, #0x0
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
	mov     r0, r4
	mov     r1, #0x2
	bl      0x2019ebc
	mov     r0, #0x0
	mov     r1, #0x20
	mov     r2, r0
	mov     r3, #0x43
	bl      0x2019690
	add     sp, #0x64
	pop     {r4,r5,pc}
@ 0x21d1086


.align 2


.word 0x21d270c @ 0x21d1088
.word 0x21d2748 @ 0x21d108c
.word 0x21d2780 @ 0x21d1090
.word 0x21d2764 @ 0x21d1094
.thumb
Function_21d1098: @ 21d1098 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x17
	mov     r1, #0x0
	bl      0x201ff0c
	mov     r0, r4
	mov     r1, #0x2
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x1
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x0
	bl      0x2019044
	mov     r0, #0x43
	mov     r1, r4
	bl      0x2018238
	pop     {r4,pc}
@ 0x21d10c6


.align 2, 0


.thumb
Function_21d10c8: @ 21d10c8 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x43
	str     r0, [sp, #0xc]
	mov     r4, r1
	ldr     r2, [r5, #0x4]
	mov     r0, r4
	mov     r1, #0xa
	mov     r3, #0x2
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x43
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x4]
	mov     r0, r4
	mov     r1, #0xb
	mov     r3, #0x2
	bl      0x200710c
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x43
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0xc
	mov     r3, r2
	bl      0x2007130
	mov     r1, #0x7
	mov     r0, #0x0
	lsl     r1, r1, #6
	mov     r2, #0x43
	bl      0x2002e98
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x43
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x4]
	mov     r2, #0x1
	mov     r3, #0xc
	bl      0x200daa4
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x8]
	bl      0x2027b50
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x43
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x4]
	mov     r1, #0x0
	mov     r2, #0xa
	mov     r3, #0xd
	bl      0x200dd0c
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x21d1152


.align 2, 0


.thumb
Function_21d1154: @ 21d1154 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r5, r7
	ldr     r4, [pc, #0x40] @ 0x21d119c, (=0x21d2884)
	mov     r6, #0x0
	add     r5, #0x8
.thumb
branch_21d1160: @ 21d1160 :thumb
	ldr     r0, [r7, #0x4]
	mov     r1, r5
	mov     r2, r4
	bl      0x201a8d4
	mov     r0, r5
	mov     r1, #0x0
	bl      0x201ada4
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x8
	add     r5, #0x10
	cmp     r6, #0xf
	bcc     branch_21d1160
	mov     r0, r7
	bl      Function_21d1664
	mov     r0, r7
	add     r0, #0xc8
	mov     r1, #0xf
	bl      0x201ada4
	add     r7, #0xc8
	mov     r0, r7
	mov     r1, #0x0
	mov     r2, #0xa
	mov     r3, #0xd
	bl      0x200e060
	pop     {r3-r7,pc}
@ 0x21d119c

.word 0x21d2884 @ 0x21d119c
.thumb
Function_21d11a0: @ 21d11a0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
	add     r5, #0x8
.thumb
branch_21d11a8: @ 21d11a8 :thumb
	mov     r0, r5
	bl      0x201a8fc
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0xf
	bcc     branch_21d11a8
	pop     {r3-r5,pc}
@ 0x21d11b8

.thumb
Function_21d11b8: @ 21d11b8 :thumb
	push    {r4,lr}
	ldr     r2, [pc, #0x30] @ 0x21d11ec, (=0x285)
	mov     r4, r0
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, #0x43
	bl      0x200b144
	mov     r1, r4
	add     r1, #0xf8
	str     r0, [r1, #0x0]
	mov     r0, #0x43
	bl      0x200b358
	mov     r1, r4
	add     r1, #0xfc
	str     r0, [r1, #0x0]
	mov     r0, #0x1
	lsl     r0, r0, #8
	mov     r1, #0x43
	bl      0x2023790
	mov     r1, #0x1
	lsl     r1, r1, #8
	str     r0, [r4, r1]
	pop     {r4,pc}
@ 0x21d11ec

.word 0x285 @ 0x21d11ec
.thumb
Function_21d11f0: @ 21d11f0 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0xf8
	ldr     r0, [r0, #0x0]
	bl      0x200b190
	mov     r0, r4
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	bl      0x200b3f0
	mov     r0, #0x1
	lsl     r0, r0, #8
	ldr     r0, [r4, r0]
	bl      0x20237bc
	pop     {r4,pc}
@ 0x21d1212


.align 2, 0


.thumb
Function_21d1214: @ 21d1214 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x200f2ac
	cmp     r0, #0x1
	bne     branch_21d1228
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	pop     {r4,pc}
@ 0x21d1228

.thumb
branch_21d1228: @ 21d1228 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d122c

.thumb
Function_21d122c: @ 21d122c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x10c] @ 0x21d1340, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x30
	tst     r1, r0
	beq     branch_21d1254
	ldr     r0, [pc, #0x108] @ 0x21d1344, (=0x5dd)
	bl      0x2005748
	ldr     r2, [r5, #0x0]
	mov     r0, #0x1
	ldrb    r1, [r2, #0x14]
	eor     r0, r1
	strb    r0, [r2, #0x14]
	mov     r0, r5
	bl      Function_21d1498
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d1254

.thumb
branch_21d1254: @ 21d1254 :thumb
	add     r0, #0xd4
	add     r1, sp, #0x0
	ldr     r0, [r5, r0]
	add     r1, #0x2
	add     r2, sp, #0x0
	bl      0x20014dc
	mov     r0, #0x41
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      0x2001288
	mov     r4, r0
	ldr     r2, [r5, #0x0]
	mov     r0, #0x41
	mov     r1, r2
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	add     r1, #0x12
	add     r2, #0x10
	bl      0x20014dc
	ldr     r2, [r5, #0x0]
	add     r1, sp, #0x0
	ldrh    r1, [r1, #0x2]
	ldrh    r2, [r2, #0x12]
	mov     r0, r5
	bl      Function_21d237c
	ldr     r0, [r5, #0x0]
	ldrh    r1, [r0, #0x10]
	add     r0, sp, #0x0
	ldrh    r0, [r0, #0x0]
	cmp     r1, r0
	beq     branch_21d12a6
	lsl     r1, r1, #24
	mov     r0, r5
	lsr     r1, r1, #24
	mov     r2, #0x0
	bl      Function_21d2548
.thumb
branch_21d12a6: @ 21d12a6 :thumb
	mov     r0, r5
	bl      Function_21d2594
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r4, r0
	beq     branch_21d12bc
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r4, r0
	beq     branch_21d133a
	b       branch_21d12f0
@ 0x21d12bc

.thumb
branch_21d12bc: @ 21d12bc :thumb
	ldr     r0, [pc, #0x84] @ 0x21d1344, (=0x5dd)
	bl      0x2005748
	ldr     r1, [r5, #0x0]
	mov     r0, r5
	ldrh    r1, [r1, #0x10]
	mov     r2, #0x1
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_21d2548
	mov     r0, r5
	bl      Function_21d25e4
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_21d1df8
	ldr     r0, [pc, #0x64] @ 0x21d1348, (=0x186)
	mov     r1, #0x1
	strb    r1, [r5, r0]
	mov     r1, #0x3
	lsl     r0, r1, #7
	str     r1, [r5, r0]
	mov     r0, #0x2
	pop     {r3-r5,pc}
@ 0x21d12f0

.thumb
branch_21d12f0: @ 21d12f0 :thumb
	ldr     r0, [pc, #0x50] @ 0x21d1344, (=0x5dd)
	bl      0x2005748
	ldr     r1, [r5, #0x0]
	mov     r0, r5
	ldrh    r1, [r1, #0x10]
	mov     r2, #0x1
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_21d2548
	mov     r0, r5
	bl      Function_21d25e4
	mov     r0, r5
	bl      Function_21d1ea0
	cmp     r0, #0x4
	bcs     branch_21d1322
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_21d1df8
	mov     r1, #0x0
	b       branch_21d132c
@ 0x21d1322

.thumb
branch_21d1322: @ 21d1322 :thumb
	mov     r0, r5
	mov     r1, #0x4
	bl      Function_21d1df8
	mov     r1, #0x2
.thumb
branch_21d132c: @ 21d132c :thumb
	ldr     r0, [pc, #0x18] @ 0x21d1348, (=0x186)
	strb    r1, [r5, r0]
	mov     r1, #0x3
	lsl     r0, r1, #7
	str     r1, [r5, r0]
	mov     r0, #0x2
	pop     {r3-r5,pc}
@ 0x21d133a

.thumb
branch_21d133a: @ 21d133a :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d133e


.align 2


.word 0x21bf67c @ 0x21d1340
.word 0x5dd @ 0x21d1344
.word 0x186 @ 0x21d1348
.thumb
Function_21d134c: @ 21d134c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x14] @ 0x21d1368, (=0x185)
	ldrb    r0, [r4, r0]
	bl      0x201d724
	cmp     r0, #0x0
	bne     branch_21d1364
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	pop     {r4,pc}
@ 0x21d1364

.thumb
branch_21d1364: @ 21d1364 :thumb
	mov     r0, #0x2
	pop     {r4,pc}
@ 0x21d1368

.word 0x185 @ 0x21d1368
.thumb
Function_21d136c: @ 21d136c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	mov     r0, #0x43
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x4]
	ldr     r1, [pc, #0x14] @ 0x21d1390, (=0x21d28f4)
	mov     r2, #0x1
	mov     r3, #0xc
	bl      0x2002100
	mov     r1, #0x43
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x4
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d138e


.align 2


.word 0x21d28f4 @ 0x21d1390
.thumb
Function_21d1394: @ 21d1394 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x43
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x43
	bl      0x2002114
	cmp     r0, #0x0
	beq     branch_21d13b2
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_21d13c2
	b       branch_21d13d2
@ 0x21d13b2

.thumb
branch_21d13b2: @ 21d13b2 :thumb
	ldr     r1, [pc, #0x24] @ 0x21d13d8, (=0x186)
	mov     r0, r4
	ldrb    r1, [r4, r1]
	lsl     r2, r1, #3
	ldr     r1, [pc, #0x20] @ 0x21d13dc, (=0x21d27dc)
	ldr     r1, [r1, r2]
	blx     r1
	pop     {r4,pc}
@ 0x21d13c2

.thumb
branch_21d13c2: @ 21d13c2 :thumb
	ldr     r1, [pc, #0x14] @ 0x21d13d8, (=0x186)
	mov     r0, r4
	ldrb    r1, [r4, r1]
	lsl     r2, r1, #3
	ldr     r1, [pc, #0x14] @ 0x21d13e0, (=0x21d27e0)
	ldr     r1, [r1, r2]
	blx     r1
	pop     {r4,pc}
@ 0x21d13d2

.thumb
branch_21d13d2: @ 21d13d2 :thumb
	mov     r0, #0x4
	pop     {r4,pc}
@ 0x21d13d6


.align 2


.word 0x186 @ 0x21d13d8
.word 0x21d27dc @ 0x21d13dc
.word 0x21d27e0 @ 0x21d13e0
.thumb
Function_21d13e4: @ 21d13e4 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	bl      Function_21d1dd0
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x0]
	add     r2, sp, #0x0
	ldr     r0, [r1, #0x0]
	ldrb    r1, [r1, #0x17]
	add     r1, #0x36
	bl      0x2074b30
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x0]
	add     r2, sp, #0x0
	ldr     r0, [r1, #0x0]
	ldrb    r1, [r1, #0x17]
	add     r1, #0x3e
	bl      0x2074b30
	mov     r0, r4
	bl      Function_21d1dd0
	mov     r1, #0x0
	bl      0x20790dc
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x0]
	add     r2, sp, #0x0
	ldr     r0, [r1, #0x0]
	ldrb    r1, [r1, #0x17]
	add     r1, #0x3a
	bl      0x2074b30
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	strb    r1, [r0, #0x16]
	mov     r0, #0x8
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d1438

.thumb
Function_21d1438: @ 21d1438 :thumb
	push    {r4,lr}
	mov     r1, #0x6
	mov     r4, r0
	bl      Function_21d1df8
	mov     r0, #0x6
	mov     r1, #0x5
	lsl     r0, r0, #6
	str     r1, [r4, r0]
	mov     r0, #0x2
	pop     {r4,pc}
@ 0x21d144e


.align 2, 0


.thumb
Function_21d1450: @ 21d1450 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x0]
	ldrb    r1, [r1, #0x17]
	cmp     r1, #0x4
	bcs     branch_21d1466
	mov     r1, #0xa
	bl      Function_21d1df8
	mov     r1, #0x4
	b       branch_21d146e
@ 0x21d1466

.thumb
branch_21d1466: @ 21d1466 :thumb
	mov     r1, #0x7
	bl      Function_21d1df8
	mov     r1, #0x3
.thumb
branch_21d146e: @ 21d146e :thumb
	ldr     r0, [pc, #0xc] @ 0x21d147c, (=0x186)
	strb    r1, [r4, r0]
	mov     r1, #0x3
	lsl     r0, r1, #7
	str     r1, [r4, r0]
	mov     r0, #0x2
	pop     {r4,pc}
@ 0x21d147c

.word 0x186 @ 0x21d147c
.thumb
Function_21d1480: @ 21d1480 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x1
	mov     r1, #0x43
	bl      0x208c120
	mov     r0, #0x6
	mov     r1, #0x9
	lsl     r0, r0, #6
	str     r1, [r4, r0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d1498

.thumb
Function_21d1498: @ 21d1498 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_21d1dd0
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldrb    r0, [r0, #0x14]
	cmp     r0, #0x0
	ldr     r0, [r5, #0x4]
	bne     branch_21d14f2
	mov     r2, #0x0
	mov     r1, #0x2
	mov     r3, r2
	bl      0x201c63c
	mov     r0, r5
	add     r0, #0x18
	bl      0x201ad10
	mov     r0, r5
	add     r0, #0x68
	bl      0x201ad10
	mov     r0, r5
	add     r0, #0xb8
	bl      0x201ad10
	mov     r0, r5
	add     r0, #0x8
	bl      0x201a9a4
	ldr     r0, [pc, #0xa4] @ 0x21d157c, (=0xffff)
	cmp     r4, r0
	beq     branch_21d14e6
	mov     r0, r5
	mov     r1, r4
	bl      Function_21d18c8
	b       branch_21d1574
@ 0x21d14e6

.thumb
branch_21d14e6: @ 21d14e6 :thumb
	mov     r1, #0x1
	mov     r0, r5
	mvn     r1, r1
	bl      Function_21d18c8
	b       branch_21d1574
@ 0x21d14f2

.thumb
branch_21d14f2: @ 21d14f2 :thumb
	mov     r1, #0x2
	mov     r3, r1
	mov     r2, #0x0
	add     r3, #0xfe
	bl      0x201c63c
	mov     r0, r5
	add     r0, #0x8
	bl      0x201ad10
	mov     r0, r5
	add     r0, #0x28
	bl      0x201ad10
	mov     r0, r5
	add     r0, #0x38
	bl      0x201ad10
	mov     r0, r5
	add     r0, #0x48
	bl      0x201ad10
	mov     r0, r5
	add     r0, #0x58
	bl      0x201ad10
	mov     r0, r5
	add     r0, #0xa8
	bl      0x201ad10
	mov     r0, r5
	add     r0, #0x78
	bl      0x201ad10
	mov     r0, r5
	add     r0, #0x88
	bl      0x201ad10
	mov     r0, r5
	add     r0, #0x98
	bl      0x201ad10
	mov     r0, r5
	add     r0, #0x18
	bl      0x201a9a4
	ldr     r0, [pc, #0x2c] @ 0x21d157c, (=0xffff)
	cmp     r4, r0
	beq     branch_21d155e
	mov     r0, r5
	mov     r1, r4
	bl      Function_21d1a68
	b       branch_21d1568
@ 0x21d155e

.thumb
branch_21d155e: @ 21d155e :thumb
	mov     r1, #0x1
	mov     r0, r5
	mvn     r1, r1
	bl      Function_21d1a68
.thumb
branch_21d1568: @ 21d1568 :thumb
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x200d3f4
.thumb
branch_21d1574: @ 21d1574 :thumb
	mov     r0, r5
	bl      Function_21d2314
	pop     {r3-r5,pc}
@ 0x21d157c

.word 0xffff @ 0x21d157c
.thumb
Function_21d1580: @ 21d1580 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [sp, #0x28]
	mov     r4, r1
	mov     r7, r3
	str     r2, [sp, #0x10]
	cmp     r0, #0x0
	beq     branch_21d159c
	cmp     r0, #0x1
	beq     branch_21d15a0
	cmp     r0, #0x2
	beq     branch_21d15ca
	b       branch_21d15f6
@ 0x21d159c

.thumb
branch_21d159c: @ 21d159c :thumb
	mov     r3, #0x0
	b       branch_21d15f6
@ 0x21d15a0

.thumb
branch_21d15a0: @ 21d15a0 :thumb
	mov     r1, #0x1
	lsl     r1, r1, #8
	mov     r0, #0x0
	ldr     r1, [r5, r1]
	mov     r2, r0
	bl      0x2002d7c
	lsl     r0, r0, #24
	mov     r1, r5
	lsr     r6, r0, #24
	add     r1, #0x8
	lsl     r0, r4, #4
	add     r0, r1, r0
	bl      0x201c294
	lsl     r0, r0, #27
	lsr     r0, r0, #24
	sub     r0, r0, r6
	lsl     r0, r0, #24
	lsr     r3, r0, #24
	b       branch_21d15f6
@ 0x21d15ca

.thumb
branch_21d15ca: @ 21d15ca :thumb
	mov     r1, #0x1
	lsl     r1, r1, #8
	mov     r0, #0x0
	ldr     r1, [r5, r1]
	mov     r2, r0
	bl      0x2002d7c
	lsl     r0, r0, #24
	mov     r1, r5
	lsr     r6, r0, #24
	add     r1, #0x8
	lsl     r0, r4, #4
	add     r0, r1, r0
	bl      0x201c294
	lsl     r0, r0, #27
	lsr     r0, r0, #24
	sub     r1, r0, r6
	lsr     r0, r1, #31
	add     r0, r1, r0
	lsl     r0, r0, #23
	lsr     r3, r0, #24
.thumb
branch_21d15f6: @ 21d15f6 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	str     r7, [sp, #0x8]
	mov     r1, r5
	str     r0, [sp, #0xc]
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r1, #0x8
	lsl     r0, r4, #4
	add     r0, r1, r0
	ldr     r1, [sp, #0x10]
	ldr     r2, [r5, r2]
	bl      0x201d78c
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d1618

.thumb
Function_21d1618: @ 21d1618 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	add     r0, #0xf8
	ldr     r0, [r0, #0x0]
	mov     r6, r2
	mov     r7, r3
	bl      0x200b1ec
	mov     r4, r0
	add     r0, sp, #0x10
	ldrb    r0, [r0, #0x10]
	mov     r1, #0x0
	mov     r2, r6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	mov     r3, r7
	bl      0x200b60c
	mov     r0, r5
	mov     r1, #0x1
	add     r0, #0xfc
	lsl     r1, r1, #8
	ldr     r0, [r0, #0x0]
	ldr     r1, [r5, r1]
	mov     r2, r4
	bl      0x200c388
	mov     r0, r4
	bl      0x20237bc
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d1662


.align 2, 0


.thumb
Function_21d1664: @ 21d1664 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r1, #0x1a
	mov     r2, r1
	mov     r4, r0
	add     r0, #0xf8
	add     r2, #0xe6
	ldr     r0, [r0, #0x0]
	ldr     r2, [r4, r2]
	bl      0x200b1b8
	mov     r0, #0x2
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	ldr     r3, [pc, #0xd0] @ 0x21d1754, (=0xf0e00)
	mov     r0, r4
	mov     r2, r1
	bl      Function_21d1580
	mov     r1, #0x1c
	mov     r0, r4
	mov     r2, r1
	add     r0, #0xf8
	add     r2, #0xe4
	ldr     r0, [r0, #0x0]
	ldr     r2, [r4, r2]
	bl      0x200b1b8
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	ldr     r3, [pc, #0xb0] @ 0x21d1754, (=0xf0e00)
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_21d1580
	mov     r1, #0x16
	mov     r0, r4
	mov     r2, r1
	add     r0, #0xf8
	add     r2, #0xea
	ldr     r0, [r0, #0x0]
	ldr     r2, [r4, r2]
	bl      0x200b1b8
	mov     r2, #0x0
	ldr     r3, [pc, #0x90] @ 0x21d1754, (=0xf0e00)
	mov     r0, r4
	mov     r1, #0x2
	str     r2, [sp, #0x0]
	bl      Function_21d1580
	mov     r1, #0x17
	mov     r0, r4
	mov     r2, r1
	add     r0, #0xf8
	add     r2, #0xe9
	ldr     r0, [r0, #0x0]
	ldr     r2, [r4, r2]
	bl      0x200b1b8
	mov     r2, #0x0
	ldr     r3, [pc, #0x70] @ 0x21d1754, (=0xf0e00)
	mov     r0, r4
	mov     r1, #0x3
	str     r2, [sp, #0x0]
	bl      Function_21d1580
	mov     r1, #0x18
	mov     r0, r4
	mov     r2, r1
	add     r0, #0xf8
	add     r2, #0xe8
	ldr     r0, [r0, #0x0]
	ldr     r2, [r4, r2]
	bl      0x200b1b8
	mov     r2, #0x0
	ldr     r3, [pc, #0x50] @ 0x21d1754, (=0xf0e00)
	mov     r0, r4
	mov     r1, #0x4
	str     r2, [sp, #0x0]
	bl      Function_21d1580
	mov     r1, #0x19
	mov     r0, r4
	mov     r2, r1
	add     r0, #0xf8
	add     r2, #0xe7
	ldr     r0, [r0, #0x0]
	ldr     r2, [r4, r2]
	bl      0x200b1b8
	mov     r2, #0x0
	ldr     r3, [pc, #0x34] @ 0x21d1758, (=0x10200)
	mov     r0, r4
	mov     r1, #0x5
	str     r2, [sp, #0x0]
	bl      Function_21d1580
	mov     r1, #0x1b
	mov     r0, r4
	mov     r2, r1
	add     r0, #0xf8
	add     r2, #0xe5
	ldr     r0, [r0, #0x0]
	ldr     r2, [r4, r2]
	bl      0x200b1b8
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	ldr     r3, [pc, #0x10] @ 0x21d1754, (=0xf0e00)
	mov     r0, r4
	mov     r1, #0x6
	mov     r2, #0x0
	bl      Function_21d1580
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d1752


.align 2


.word 0xf0e00 @ 0x21d1754
.word 0x10200 @ 0x21d1758
.thumb
Function_21d175c: @ 21d175c :thumb
	push    {r3,r4}
	ldr     r0, [r0, #0x0]
	ldr     r1, [pc, #0x1c] @ 0x21d1780, (=0xffff)
	ldr     r4, [r0, #0xc]
	mov     r0, #0x1
	mov     r3, #0x0
	lsl     r0, r0, #8
.thumb
branch_21d176a: @ 21d176a :thumb
	ldrh    r2, [r4, #0x0]
	cmp     r2, r1
	beq     branch_21d1778
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r3, r0
	bcc     branch_21d176a
.thumb
branch_21d1778: @ 21d1778 :thumb
	mov     r0, r3
	pop     {r3,r4}
	bx      lr
@ 0x21d177e


.align 2


.word 0xffff @ 0x21d1780
.thumb
Function_21d1784: @ 21d1784 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r5, r0
	bl      Function_21d175c
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	add     r1, r0, #0x1
	mov     r0, #0x61
	lsl     r0, r0, #2
	strb    r1, [r5, r0]
	ldrb    r0, [r5, r0]
	mov     r1, #0x43
	bl      0x2013a04
	mov     r1, #0x42
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r2, [pc, #0xb0] @ 0x21d185c, (=0x287)
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, #0x43
	bl      0x200b144
	mov     r7, r0
	mov     r0, #0x61
	lsl     r0, r0, #2
	ldrb    r0, [r5, r0]
	mov     r4, #0x0
	cmp     r0, #0x0
	bls     branch_21d1806
	mov     r6, r4
.thumb
branch_21d17c4: @ 21d17c4 :thumb
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	ldrh    r2, [r0, r6]
	ldr     r0, [pc, #0x94] @ 0x21d1860, (=0xffff)
	cmp     r2, r0
	beq     branch_21d17e0
	mov     r0, #0x42
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r7
	mov     r3, r2
	bl      0x2013a4c
	b       branch_21d17f8
@ 0x21d17e0

.thumb
branch_21d17e0: @ 21d17e0 :thumb
	mov     r0, #0x42
	mov     r1, r5
	lsl     r0, r0, #2
	add     r1, #0xf8
	mov     r2, #0x20
	mov     r3, r2
	ldr     r0, [r5, r0]
	ldr     r1, [r1, #0x0]
	sub     r3, #0x22
	bl      0x2013a4c
	b       branch_21d1806
@ 0x21d17f8

.thumb
branch_21d17f8: @ 21d17f8 :thumb
	mov     r0, #0x61
	lsl     r0, r0, #2
	ldrb    r0, [r5, r0]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cb6 @ add r6, r6, #0x2
	cmp     r4, r0
	bcc     branch_21d17c4
.thumb
branch_21d1806: @ 21d1806 :thumb
	mov     r0, r7
	bl      0x200b190
	ldr     r4, [pc, #0x54] @ 0x21d1864, (=0x21d27bc)
	add     r3, sp, #0x0
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, #0x42
	lsl     r0, r0, #2
	ldr     r1, [r5, r0]
	add     r0, #0x7c
	str     r1, [sp, #0x0]
	mov     r1, r5
	add     r1, #0xd8
	str     r1, [sp, #0xc]
	ldrb    r1, [r5, r0]
	add     r0, sp, #0x0
	strh    r1, [r0, #0x10]
	str     r5, [sp, #0x1c]
	ldr     r3, [r5, #0x0]
	mov     r0, r2
	ldrh    r1, [r3, #0x12]
	ldrh    r2, [r3, #0x10]
	mov     r3, #0x43
	bl      0x200112c
	mov     r1, #0x41
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	add     r5, #0xd8
	mov     r0, r5
	bl      0x201a9a4
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x21d185a


.align 2


.word 0x287 @ 0x21d185c
.word 0xffff @ 0x21d1860
.word 0x21d27bc @ 0x21d1864
.thumb
Function_21d1868: @ 21d1868 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r2, [r4, #0x0]
	mov     r0, #0x41
	mov     r1, r2
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	add     r1, #0x12
	add     r2, #0x10
	bl      0x2001384
	mov     r0, #0x42
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x2013a3c
	pop     {r4,pc}
@ 0x21d188a


.align 2, 0


.thumb
Function_21d188c: @ 21d188c :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r1, #0x13
	mov     r6, r2
	bl      0x2001504
	mov     r4, r0
	cmp     r6, #0x1
	beq     branch_21d18a4
	ldr     r0, [pc, #0x20] @ 0x21d18c0, (=0x5dd)
	bl      0x2005748
.thumb
branch_21d18a4: @ 21d18a4 :thumb
	ldr     r0, [r4, #0x0]
	ldrb    r0, [r0, #0x14]
	cmp     r0, #0x0
	bne     branch_21d18b6
	mov     r0, r4
	mov     r1, r5
	bl      Function_21d18c8
	pop     {r4-r6,pc}
@ 0x21d18b6

.thumb
branch_21d18b6: @ 21d18b6 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_21d1a68
	pop     {r4-r6,pc}
@ 0x21d18c0

.word 0x5dd @ 0x21d18c0
.thumb
Function_21d18c4: @ 21d18c4 :thumb
	bx      lr
@ 0x21d18c6


.align 2, 0


.thumb
Function_21d18c8: @ 21d18c8 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	mov     r4, r1
	add     r0, #0xa8
	mov     r1, #0x0
	bl      0x201ada4
	mov     r0, r5
	add     r0, #0x78
	mov     r1, #0x0
	bl      0x201ada4
	mov     r0, r5
	add     r0, #0x88
	mov     r1, #0x0
	bl      0x201ada4
	mov     r0, r5
	add     r0, #0x98
	mov     r1, #0x0
	bl      0x201ada4
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x200d3f4
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r4, r0
	bne     branch_21d190c
	b       branch_21d1a1a
@ 0x21d190c

.thumb
branch_21d190c: @ 21d190c :thumb
	mov     r0, r4
	mov     r1, #0x2
	bl      0x20790c4
	mov     r2, r0
	cmp     r2, #0x1
	bhi     branch_21d192e
	mov     r1, #0x21
	mov     r0, r5
	mov     r2, r1
	add     r0, #0xf8
	add     r2, #0xdf
	ldr     r0, [r0, #0x0]
	ldr     r2, [r5, r2]
	bl      0x200b1b8
	b       branch_21d193c
@ 0x21d192e

.thumb
branch_21d192e: @ 21d192e :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x1d
	mov     r3, #0x3
	bl      Function_21d1618
.thumb
branch_21d193c: @ 21d193c :thumb
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	ldr     r3, [pc, #0x11c] @ 0x21d1a60, (=0x10200)
	mov     r0, r5
	mov     r1, #0x7
	mov     r2, #0x0
	bl      Function_21d1580
	mov     r0, r4
	mov     r1, #0x4
	bl      0x20790c4
	mov     r2, r0
	bne     branch_21d196c
	mov     r1, #0x21
	mov     r0, r5
	mov     r2, r1
	add     r0, #0xf8
	add     r2, #0xdf
	ldr     r0, [r0, #0x0]
	ldr     r2, [r5, r2]
	bl      0x200b1b8
	b       branch_21d197a
@ 0x21d196c

.thumb
branch_21d196c: @ 21d196c :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x1e
	mov     r3, #0x3
	bl      Function_21d1618
.thumb
branch_21d197a: @ 21d197a :thumb
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	ldr     r3, [pc, #0xe0] @ 0x21d1a60, (=0x10200)
	mov     r0, r5
	mov     r1, #0x8
	mov     r2, #0x0
	bl      Function_21d1580
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	mov     r1, #0x0
	bl      0x20790dc
	mov     r2, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x1f
	mov     r3, #0x2
	bl      Function_21d1618
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	ldr     r3, [pc, #0xb4] @ 0x21d1a60, (=0x10200)
	mov     r0, r5
	mov     r1, #0x9
	mov     r2, #0x0
	bl      Function_21d1580
	ldr     r2, [pc, #0xac] @ 0x21d1a64, (=0x286)
	mov     r0, #0x1
	mov     r1, #0x1a
	mov     r3, #0x43
	bl      0x200b144
	mov     r2, #0x1
	lsl     r2, r2, #8
	ldr     r2, [r5, r2]
	mov     r1, r4
	mov     r6, r0
	bl      0x200b1b8
	mov     r2, #0x0
	ldr     r3, [pc, #0x8c] @ 0x21d1a60, (=0x10200)
	mov     r0, r5
	mov     r1, #0xa
	str     r2, [sp, #0x0]
	bl      Function_21d1580
	mov     r0, r6
	bl      0x200b190
	lsl     r1, r4, #16
	mov     r0, r5
	lsr     r1, r1, #16
	bl      Function_21d24b4
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      0x200d3f4
	mov     r0, r5
	add     r0, #0x28
	bl      0x201a9a4
	mov     r0, r5
	add     r0, #0x38
	bl      0x201a9a4
	mov     r0, r5
	add     r0, #0x48
	bl      0x201a9a4
	mov     r0, r5
	add     r0, #0x58
	bl      0x201a9a4
	b       branch_21d1a3a
@ 0x21d1a1a

.thumb
branch_21d1a1a: @ 21d1a1a :thumb
	mov     r0, r5
	add     r0, #0x28
	bl      0x201ad10
	mov     r0, r5
	add     r0, #0x38
	bl      0x201ad10
	mov     r0, r5
	add     r0, #0x48
	bl      0x201ad10
	mov     r0, r5
	add     r0, #0x58
	bl      0x201ad10
.thumb
branch_21d1a3a: @ 21d1a3a :thumb
	mov     r0, r5
	add     r0, #0xa8
	bl      0x201a9a4
	mov     r0, r5
	add     r0, #0x78
	bl      0x201a9a4
	mov     r0, r5
	add     r0, #0x88
	bl      0x201a9a4
	add     r5, #0x98
	mov     r0, r5
	bl      0x201a9a4
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x21d1a5e


.align 2


.word 0x10200 @ 0x21d1a60
.word 0x286 @ 0x21d1a64
.thumb
Function_21d1a68: @ 21d1a68 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r4, r1
	add     r0, #0xb8
	mov     r1, #0x0
	bl      0x201ada4
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r4, r1
	beq     branch_21d1ade
	mov     r0, r4
	mov     r1, #0xa
	bl      0x20790c4
	bl      0x209577c
	mov     r6, r0
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r2, #0xd2
	mov     r3, #0x43
	bl      0x200b144
	mov     r2, #0x1
	lsl     r2, r2, #8
	ldr     r2, [r5, r2]
	mov     r1, r6
	mov     r7, r0
	bl      0x200b1b8
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	ldr     r0, [pc, #0x48] @ 0x21d1afc, (=0x10200)
	.hword  0x1c52 @ add r2, r2, #0x1
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, r5
	ldr     r2, [r5, r2]
	add     r0, #0xb8
	mov     r3, r1
	bl      0x201d78c
	mov     r0, r7
	bl      0x200b190
	lsl     r1, r4, #16
	mov     r0, r5
	lsr     r1, r1, #16
	bl      Function_21d1bbc
	mov     r0, r5
	add     r0, #0x68
	bl      0x201a9a4
	b       branch_21d1aee
@ 0x21d1ade

.thumb
branch_21d1ade: @ 21d1ade :thumb
	mov     r0, r5
	lsr     r1, r1, #16
	bl      Function_21d1bbc
	mov     r0, r5
	add     r0, #0x68
	bl      0x201ad10
.thumb
branch_21d1aee: @ 21d1aee :thumb
	add     r5, #0xb8
	mov     r0, r5
	bl      0x201a9a4
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d1afa


.align 2


.word 0x10200 @ 0x21d1afc
.thumb
Function_21d1b00: @ 21d1b00 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x5
	lsl     r6, r2, #1
	str     r0, [sp, #0x0]
	mov     r4, r1
	mov     r0, #0x1
	mov     r7, r6
	str     r0, [sp, #0x4]
	add     r7, #0x22
	str     r0, [sp, #0x8]
	mov     r0, #0x10
	str     r0, [sp, #0xc]
	lsl     r3, r7, #24
	ldr     r0, [r5, #0x4]
	mov     r1, #0x2
	mov     r2, r4
	lsr     r3, r3, #24
	bl      0x2019cb8
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	add     r6, #0x23
	str     r0, [sp, #0x8]
	mov     r0, #0x10
	add     r2, r4, #0x1
	str     r0, [sp, #0xc]
	lsl     r2, r2, #16
	lsl     r3, r6, #24
	ldr     r0, [r5, #0x4]
	mov     r1, #0x2
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      0x2019cb8
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r2, r4
	str     r0, [sp, #0x8]
	mov     r0, #0x10
	add     r2, #0x20
	str     r0, [sp, #0xc]
	lsl     r2, r2, #16
	lsl     r3, r7, #24
	ldr     r0, [r5, #0x4]
	mov     r1, #0x2
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      0x2019cb8
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x10
	add     r4, #0x21
	str     r0, [sp, #0xc]
	lsl     r2, r4, #16
	lsl     r3, r6, #24
	ldr     r0, [r5, #0x4]
	mov     r1, #0x2
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      0x2019cb8
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d1b92


.align 2, 0


.thumb
Function_21d1b94: @ 21d1b94 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, #0x0
	mov     r6, #0x12
.thumb
branch_21d1b9c: @ 21d1b9c :thumb
	lsl     r2, r4, #24
	mov     r0, r5
	mov     r1, r6
	lsr     r2, r2, #24
	bl      Function_21d1b00
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0x6
	bcc     branch_21d1b9c
	ldr     r0, [r5, #0x4]
	mov     r1, #0x2
	bl      0x201c3c0
	pop     {r4-r6,pc}
@ 0x21d1bbc

.thumb
Function_21d1bbc: @ 21d1bbc :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_21d1b94
	ldr     r0, [pc, #0x44] @ 0x21d1c0c, (=0xffff)
	cmp     r4, r0
	beq     branch_21d1c00
	mov     r0, r4
	mov     r1, #0xa
	bl      0x20790c4
	bl      0x2095734
	mov     r1, #0xa
	blx 0x20e1f6c
	lsl     r0, r0, #24
	asr     r6, r0, #24
	mov     r4, #0x0
	cmp     r6, #0x0
	ble     branch_21d1c00
	mov     r7, #0xe
.thumb
branch_21d1bea: @ 21d1bea :thumb
	lsl     r2, r4, #24
	mov     r0, r5
	mov     r1, r7
	lsr     r2, r2, #24
	bl      Function_21d1b00
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, r6
	blt     branch_21d1bea
.thumb
branch_21d1c00: @ 21d1c00 :thumb
	ldr     r0, [r5, #0x4]
	mov     r1, #0x2
	bl      0x201c3c0
	pop     {r3-r7,pc}
@ 0x21d1c0a


.align 2


.word 0xffff @ 0x21d1c0c
.thumb
Function_21d1c10: @ 21d1c10 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r0
	cmp     r5, #0xa
	bls     branch_21d1c1c
	b       branch_21d1d94
@ 0x21d1c1c

.thumb
branch_21d1c1c: @ 21d1c1c :thumb
	add     r1, r5, r5
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d1c28

Jumppoints_21d1c28:
.hword branch_21d1c3e - Jumppoints_21d1c28 - 2
.hword branch_21d1c56 - Jumppoints_21d1c28 - 2
.hword branch_21d1c6a - Jumppoints_21d1c28 - 2
.hword branch_21d1c82 - Jumppoints_21d1c28 - 2
.hword branch_21d1cae - Jumppoints_21d1c28 - 2
.hword branch_21d1cda - Jumppoints_21d1c28 - 2
.hword branch_21d1d06 - Jumppoints_21d1c28 - 2
.hword branch_21d1d32 - Jumppoints_21d1c28 - 2
.hword branch_21d1d46 - Jumppoints_21d1c28 - 2
.hword branch_21d1d72 - Jumppoints_21d1c28 - 2
.hword branch_21d1d82 - Jumppoints_21d1c28 - 2
.thumb
branch_21d1c3e: @ 21d1c3e :thumb
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      0x2076b10
	mov     r2, r0
	mov     r0, r4
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      0x200b5cc
	b       branch_21d1d94
@ 0x21d1c56

.thumb
branch_21d1c56: @ 21d1c56 :thumb
	bl      Function_21d1dd0
	mov     r2, r0
	mov     r0, r4
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      0x200b630
	b       branch_21d1d94
@ 0x21d1c6a

.thumb
branch_21d1c6a: @ 21d1c6a :thumb
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      0x2076b10
	mov     r2, r0
	mov     r0, r4
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      0x200b5cc
	b       branch_21d1d94
@ 0x21d1c82

.thumb
branch_21d1c82: @ 21d1c82 :thumb
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      0x2076b10
	mov     r2, r0
	mov     r0, r4
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      0x200b5cc
	mov     r0, r4
	bl      Function_21d1dd0
	mov     r2, r0
	mov     r0, r4
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      0x200b630
	b       branch_21d1d94
@ 0x21d1cae

.thumb
branch_21d1cae: @ 21d1cae :thumb
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      0x2076b10
	mov     r2, r0
	mov     r0, r4
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      0x200b5cc
	mov     r0, r4
	bl      Function_21d1dd0
	mov     r2, r0
	mov     r0, r4
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      0x200b630
	b       branch_21d1d94
@ 0x21d1cda

.thumb
branch_21d1cda: @ 21d1cda :thumb
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      0x2076b10
	mov     r2, r0
	mov     r0, r4
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      0x200b5cc
	mov     r0, r4
	bl      Function_21d1de0
	mov     r2, r0
	mov     r0, r4
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      0x200b630
	b       branch_21d1d94
@ 0x21d1d06

.thumb
branch_21d1d06: @ 21d1d06 :thumb
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      0x2076b10
	mov     r2, r0
	mov     r0, r4
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      0x200b5cc
	mov     r0, r4
	bl      Function_21d1dd0
	mov     r2, r0
	mov     r0, r4
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      0x200b630
	b       branch_21d1d94
@ 0x21d1d32

.thumb
branch_21d1d32: @ 21d1d32 :thumb
	bl      Function_21d1dd0
	mov     r2, r0
	mov     r0, r4
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      0x200b630
	b       branch_21d1d94
@ 0x21d1d46

.thumb
branch_21d1d46: @ 21d1d46 :thumb
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      0x2076b10
	mov     r2, r0
	mov     r0, r4
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      0x200b5cc
	mov     r0, r4
	bl      Function_21d1dd0
	mov     r2, r0
	mov     r0, r4
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      0x200b630
	b       branch_21d1d94
@ 0x21d1d72

.thumb
branch_21d1d72: @ 21d1d72 :thumb
	ldr     r2, [r4, #0x0]
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	ldr     r2, [r2, #0x4]
	mov     r1, #0x2
	bl      0x200b498
	b       branch_21d1d94
@ 0x21d1d82

.thumb
branch_21d1d82: @ 21d1d82 :thumb
	bl      Function_21d1de0
	mov     r2, r0
	mov     r0, r4
	add     r0, #0xfc
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      0x200b630
.thumb
branch_21d1d94: @ 21d1d94 :thumb
	ldr     r1, [r4, #0x0]
	mov     r0, r4
	ldrb    r2, [r1, #0x15]
	add     r0, #0xf8
	mov     r1, #0x2c
	mov     r3, r2
	mul     r3, r1
	ldr     r1, [pc, #0x28] @ 0x21d1dcc, (=0x21d282c)
	lsl     r2, r5, #2
	add     r1, r1, r3
	ldr     r0, [r0, #0x0]
	ldr     r1, [r2, r1]
	bl      0x200b1ec
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	add     r0, #0xfc
	lsl     r1, r1, #8
	ldr     r0, [r0, #0x0]
	ldr     r1, [r4, r1]
	mov     r2, r5
	bl      0x200c388
	mov     r0, r5
	bl      0x20237bc
	pop     {r3-r5,pc}
@ 0x21d1dcc

.word 0x21d282c @ 0x21d1dcc
.thumb
Function_21d1dd0: @ 21d1dd0 :thumb
	ldr     r0, [r0, #0x0]
	ldr     r2, [r0, #0xc]
	ldrh    r1, [r0, #0x12]
	ldrh    r0, [r0, #0x10]
	add     r0, r1, r0
	lsl     r0, r0, #1
	ldrh    r0, [r2, r0]
	bx      lr
@ 0x21d1de0

.thumb
Function_21d1de0: @ 21d1de0 :thumb
	push    {r3,lr}
	ldr     r1, [r0, #0x0]
	mov     r2, #0x0
	ldr     r0, [r1, #0x0]
	ldrb    r1, [r1, #0x17]
	add     r1, #0x36
	bl      0x2074470
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	pop     {r3,pc}
@ 0x21d1df6


.align 2, 0


.thumb
Function_21d1df8: @ 21d1df8 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r5, r1
	add     r0, #0xc8
	mov     r1, #0xf
	bl      0x201ada4
	mov     r0, r4
	mov     r1, r5
	bl      Function_21d1c10
	mov     r0, #0x1
	bl      0x2002ac8
	mov     r0, #0x0
	bl      0x2002ae4
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x8]
	bl      0x2027ac0
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1c] @ 0x21d1e48, (=0x21d1e51)
	mov     r1, #0x1
	mov     r2, r1
	str     r0, [sp, #0x8]
	add     r2, #0xff
	mov     r0, r4
	ldr     r2, [r4, r2]
	add     r0, #0xc8
	bl      0x201d738
	ldr     r1, [pc, #0xc] @ 0x21d1e4c, (=0x185)
	strb    r0, [r4, r1]
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d1e46


.align 2


.word 0x21d1e51 @ 0x21d1e48
.word 0x185 @ 0x21d1e4c
.thumb
Function_21d1e50: @ 21d1e50 :thumb
	push    {r3,lr}
	cmp     r1, #0x5
	bhi     branch_21d1e92
	add     r0, r1, r1
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d1e62

Jumppoints_21d1e62:
.hword branch_21d1e92 - Jumppoints_21d1e62 - 2
.hword branch_21d1e6e - Jumppoints_21d1e62 - 2
.hword branch_21d1e74 - Jumppoints_21d1e62 - 2
.hword branch_21d1e7a - Jumppoints_21d1e62 - 2
.hword branch_21d1e82 - Jumppoints_21d1e62 - 2
.hword branch_21d1e8a - Jumppoints_21d1e62 - 2
.thumb
branch_21d1e6e: @ 21d1e6e :thumb
	bl      0x20057e0
	pop     {r3,pc}
@ 0x21d1e74

.thumb
branch_21d1e74: @ 21d1e74 :thumb
	bl      0x20061e4
	pop     {r3,pc}
@ 0x21d1e7a

.thumb
branch_21d1e7a: @ 21d1e7a :thumb
	ldr     r0, [pc, #0x1c] @ 0x21d1e98, (=0x5e6)
	bl      0x2005748
	b       branch_21d1e92
@ 0x21d1e82

.thumb
branch_21d1e82: @ 21d1e82 :thumb
	ldr     r0, [pc, #0x18] @ 0x21d1e9c, (=0x483)
	bl      0x2006150
	b       branch_21d1e92
@ 0x21d1e8a

.thumb
branch_21d1e8a: @ 21d1e8a :thumb
	ldr     r0, [pc, #0xc] @ 0x21d1e98, (=0x5e6)
	bl      0x20057d4
	pop     {r3,pc}
@ 0x21d1e92

.thumb
branch_21d1e92: @ 21d1e92 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d1e96


.align 2


.word 0x5e6 @ 0x21d1e98
.word 0x483 @ 0x21d1e9c
.thumb
Function_21d1ea0: @ 21d1ea0 :thumb
	push    {r4-r6,lr}
	mov     r4, #0x0
	mov     r5, r0
	mov     r6, r4
.thumb
branch_21d1ea8: @ 21d1ea8 :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	ldr     r0, [r0, #0x0]
	add     r1, #0x36
	mov     r2, r6
	bl      0x2074470
	cmp     r0, #0x0
	beq     branch_21d1ec4
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0x4
	bcc     branch_21d1ea8
.thumb
branch_21d1ec4: @ 21d1ec4 :thumb
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x21d1ec8

.thumb
Function_21d1ec8: @ 21d1ec8 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x3
	bl      Function_21d1df8
	mov     r0, r4
	bl      Function_21d1ea0
	ldr     r1, [r4, #0x0]
	strb    r0, [r1, #0x17]
	mov     r0, #0x6
	mov     r1, #0x5
	lsl     r0, r0, #6
	str     r1, [r4, r0]
	mov     r0, #0x2
	pop     {r4,pc}
@ 0x21d1ee8

.thumb
Function_21d1ee8: @ 21d1ee8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	add     r0, #0xc8
	mov     r1, #0xf
	bl      0x201ada4
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d1c10
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r3, [pc, #0x30] @ 0x21d1f34, (=0x1020f)
	mov     r0, r4
	mov     r1, #0xc
	mov     r2, #0x1
	bl      Function_21d1580
	mov     r0, r4
	add     r0, #0xc8
	bl      0x201a9a4
	ldr     r1, [r4, #0x0]
	mov     r0, r4
	ldrh    r1, [r1, #0x10]
	mov     r2, #0x0
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_21d2548
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d2574
	mov     r0, #0x1
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d1f34

.word 0x1020f @ 0x21d1f34
.thumb
Function_21d1f38: @ 21d1f38 :thumb
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	strb    r1, [r0, #0x16]
	mov     r0, #0x8
	bx      lr
@ 0x21d1f42


.align 2, 0


.thumb
Function_21d1f44: @ 21d1f44 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	add     r0, #0xc8
	mov     r1, #0xf
	bl      0x201ada4
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d1c10
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r3, [pc, #0x30] @ 0x21d1f90, (=0x1020f)
	mov     r0, r4
	mov     r1, #0xc
	mov     r2, #0x1
	bl      Function_21d1580
	mov     r0, r4
	add     r0, #0xc8
	bl      0x201a9a4
	ldr     r1, [r4, #0x0]
	mov     r0, r4
	ldrh    r1, [r1, #0x10]
	mov     r2, #0x0
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_21d2548
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d2574
	mov     r0, #0x1
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d1f90

.word 0x1020f @ 0x21d1f90
.thumb
Function_21d1f94: @ 21d1f94 :thumb
	mov     r1, #0x6
	mov     r2, #0xa
	lsl     r1, r1, #6
	str     r2, [r0, r1]
	mov     r0, #0x0
	bx      lr
@ 0x21d1fa0

.thumb
Function_21d1fa0: @ 21d1fa0 :thumb
	push    {r4,lr}
	mov     r1, #0x7
	mov     r4, r0
	bl      Function_21d1df8
	ldr     r0, [pc, #0xc] @ 0x21d1fb8, (=0x186)
	mov     r1, #0x3
	strb    r1, [r4, r0]
	.hword  0x1f80 @ sub r0, r0, #0x6
	str     r1, [r4, r0]
	mov     r0, #0x2
	pop     {r4,pc}
@ 0x21d1fb8

.word 0x186 @ 0x21d1fb8
.thumb
Function_21d1fbc: @ 21d1fbc :thumb
	push    {r4,lr}
	mov     r1, #0x8
	mov     r4, r0
	bl      Function_21d1df8
	mov     r0, #0x6
	mov     r1, #0x8
	lsl     r0, r0, #6
	str     r1, [r4, r0]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	strb    r1, [r0, #0x16]
	mov     r0, #0x2
	pop     {r4,pc}
@ 0x21d1fd8

.thumb
Function_21d1fd8: @ 21d1fd8 :thumb
	push    {r4,lr}
	mov     r1, #0x4
	mov     r4, r0
	bl      Function_21d1df8
	ldr     r1, [pc, #0xc] @ 0x21d1ff0, (=0x186)
	mov     r0, #0x2
	mov     r2, #0x3
	strb    r0, [r4, r1]
	lsl     r1, r2, #7
	str     r2, [r4, r1]
	pop     {r4,pc}
@ 0x21d1ff0

.word 0x186 @ 0x21d1ff0
.thumb
Function_21d1ff4: @ 21d1ff4 :thumb
	push    {r4,lr}
	mov     r1, #0x5
	mov     r4, r0
	bl      Function_21d1df8
	mov     r1, #0x6
	lsl     r0, r1, #6
	str     r1, [r4, r0]
	mov     r0, #0x2
	pop     {r4,pc}
@ 0x21d2008

.thumb
Function_21d2008: @ 21d2008 :thumb
	mov     r1, #0x6
	mov     r2, #0xa
	lsl     r1, r1, #6
	str     r2, [r0, r1]
	mov     r0, #0x0
	bx      lr
@ 0x21d2014

.thumb
Function_21d2014: @ 21d2014 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x4c
	ldr     r3, [pc, #0x8c] @ 0x21d20a8, (=0x21d2730)
	add     r2, sp, #0x34
	mov     r4, r0
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	mov     r0, #0x40
	mov     r1, #0x43
	bl      0x201dbec
	mov     r0, #0x43
	bl      0x200c6e4
	mov     r1, #0x11
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	bl      0x200c704
	mov     r7, #0x45
	lsl     r7, r7, #2
	add     r2, sp, #0x14
	ldr     r3, [pc, #0x60] @ 0x21d20ac, (=0x21d279c)
	str     r0, [r4, r7]
	ldmia   r3!, {r0,r1}
	mov     r6, r2
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	ldr     r5, [pc, #0x50] @ 0x21d20b0, (=0x21d271c)
	stmia   r2!, {r0,r1}
	add     r3, sp, #0x0
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r6
	str     r0, [r3, #0x0]
	.hword  0x1f38 @ sub r0, r7, #0x4
	ldr     r0, [r4, r0]
	mov     r3, #0x20
	bl      0x200c73c
	.hword  0x1f39 @ sub r1, r7, #0x4
	ldr     r0, [r4, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r4, r1]
	mov     r2, #0xd
	bl      0x200c7c0
	.hword  0x1f39 @ sub r1, r7, #0x4
	ldr     r0, [r4, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r4, r1]
	add     r2, sp, #0x34
	bl      0x200cb30
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff0c
	add     sp, #0x4c
	pop     {r4-r7,pc}
@ 0x21d20a6


.align 2


.word 0x21d2730 @ 0x21d20a8
.word 0x21d279c @ 0x21d20ac
.word 0x21d271c @ 0x21d20b0
.thumb
Function_21d20b4: @ 21d20b4 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r6, #0x46
	mov     r4, #0x0
	mov     r5, r7
	lsl     r6, r6, #2
.thumb
branch_21d20c0: @ 21d20c0 :thumb
	ldr     r0, [r5, r6]
	bl      0x200d0f4
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0xd
	bcc     branch_21d20c0
	mov     r1, #0x11
	lsl     r1, r1, #4
	ldr     r0, [r7, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r7, r1]
	bl      0x200d0b0
	mov     r0, #0x11
	lsl     r0, r0, #4
	ldr     r0, [r7, r0]
	bl      0x200c8d4
	pop     {r3-r7,pc}
@ 0x21d20e8

.thumb
Function_21d20e8: @ 21d20e8 :thumb
	push    {r3-r7,lr}
	mov     r7, #0x1
	mov     r6, #0x46
	mov     r5, r0
	mov     r4, #0x0
	lsl     r7, r7, #12
	lsl     r6, r6, #2
.thumb
branch_21d20f6: @ 21d20f6 :thumb
	lsl     r0, r4, #2
	add     r0, r5, r0
	ldr     r0, [r0, r6]
	mov     r1, r7
	ldr     r0, [r0, #0x0]
	bl      0x2021e2c
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0xd
	bcc     branch_21d20f6
	pop     {r3-r7,pc}
@ 0x21d2110

.thumb
Function_21d2110: @ 21d2110 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x0
	mov     r6, r1
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x168] @ 0x21d228c, (=0xb8a8)
	mov     r1, #0x11
	lsl     r1, r1, #4
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	mov     r2, r6
	mov     r3, #0x5
	bl      0x200cc3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x150] @ 0x21d2290, (=0xb8a9)
	mov     r1, #0x11
	lsl     r1, r1, #4
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	mov     r2, r6
	mov     r3, #0x8
	bl      0x200cc3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x134] @ 0x21d2294, (=0xb8aa)
	mov     r1, #0x11
	lsl     r1, r1, #4
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	mov     r2, r6
	mov     r3, #0x2
	bl      0x200cc3c
	ldr     r4, [pc, #0x124] @ 0x21d2298, (=0xb8ac)
	add     r7, r4, #0x6
.thumb
branch_21d2176: @ 21d2176 :thumb
	mov     r0, #0x11
	mov     r1, #0x45
	str     r4, [sp, #0x0]
	lsl     r0, r0, #4
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	mov     r2, #0x1
	mov     r3, #0x0
	bl      0x207c948
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r7
	bls     branch_21d2176
	ldr     r0, [pc, #0x108] @ 0x21d229c, (=0xb8ab)
	mov     r1, #0x11
	lsl     r1, r1, #4
	str     r0, [sp, #0x0]
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	mov     r2, #0x1
	mov     r3, #0x0
	bl      0x207cac4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0xd4] @ 0x21d228c, (=0xb8a8)
	mov     r1, #0x11
	lsl     r1, r1, #4
	str     r0, [sp, #0xc]
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	mov     r2, r6
	mov     r3, #0x9
	bl      0x200cd0c
	mov     r1, #0x11
	lsl     r1, r1, #4
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	ldr     r3, [pc, #0xb8] @ 0x21d2290, (=0xb8a9)
	mov     r2, #0x1
	bl      0x207c97c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xa8] @ 0x21d228c, (=0xb8a8)
	mov     r1, #0x11
	lsl     r1, r1, #4
	str     r0, [sp, #0x4]
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	mov     r2, r6
	mov     r3, #0x4
	bl      0x200ce24
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x94] @ 0x21d2290, (=0xb8a9)
	mov     r1, #0x11
	lsl     r1, r1, #4
	str     r0, [sp, #0x4]
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	mov     r2, r6
	mov     r3, #0x7
	bl      0x200ce24
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x7c] @ 0x21d2294, (=0xb8aa)
	mov     r1, #0x11
	lsl     r1, r1, #4
	str     r0, [sp, #0x4]
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	mov     r2, r6
	mov     r3, #0x1
	bl      0x200ce24
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x5c] @ 0x21d228c, (=0xb8a8)
	mov     r1, #0x11
	lsl     r1, r1, #4
	str     r0, [sp, #0x4]
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	mov     r2, r6
	mov     r3, #0x3
	bl      0x200ce54
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x44] @ 0x21d2290, (=0xb8a9)
	mov     r1, #0x11
	lsl     r1, r1, #4
	str     r0, [sp, #0x4]
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	mov     r2, r6
	mov     r3, #0x6
	bl      0x200ce54
	mov     r3, #0x0
	mov     r1, #0x11
	ldr     r0, [pc, #0x30] @ 0x21d2294, (=0xb8aa)
	str     r3, [sp, #0x0]
	lsl     r1, r1, #4
	str     r0, [sp, #0x4]
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	mov     r2, r6
	bl      0x200ce54
	mov     r1, #0x11
	lsl     r1, r1, #4
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r2, [pc, #0x1c] @ 0x21d229c, (=0xb8ab)
	ldr     r1, [r5, r1]
	mov     r3, r2
	bl      0x207c9ec
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d228c

.word 0xb8a8 @ 0x21d228c
.word 0xb8a9 @ 0x21d2290
.word 0xb8aa @ 0x21d2294
.word 0xb8ac @ 0x21d2298
.word 0xb8ab @ 0x21d229c
.thumb
Function_21d22a0: @ 21d22a0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r2
	ldrb    r0, [r0, #0x14]
	cmp     r0, #0x0
	bne     branch_21d22bc
	mov     r0, r1
	mov     r1, #0x3
	bl      0x20790c4
	mov     r6, r0
	b       branch_21d22c8
@ 0x21d22bc

.thumb
branch_21d22bc: @ 21d22bc :thumb
	mov     r0, r1
	mov     r1, #0xb
	bl      0x20790c4
	mov     r6, r0
	add     r6, #0x12
.thumb
branch_21d22c8: @ 21d22c8 :thumb
	bl      0x207c944
	mov     r7, r0
	mov     r0, r6
	bl      0x207c908
	mov     r3, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x34] @ 0x21d2310, (=0xb8ac)
	mov     r1, #0x11
	add     r0, r4, r0
	lsl     r1, r1, #4
	str     r0, [sp, #0x4]
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	mov     r2, r7
	bl      0x200d948
	mov     r0, r6
	bl      0x207c92c
	mov     r1, r0
	add     r0, r4, #0x6
	lsl     r0, r0, #2
	add     r2, r5, r0
	mov     r0, #0x46
	lsl     r0, r0, #2
	ldr     r0, [r2, r0]
	.hword  0x1c89 @ add r1, r1, #0x2
	bl      0x200d41c
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d230e


.align 2


.word 0xb8ac @ 0x21d2310
.thumb
Function_21d2314: @ 21d2314 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r4, #0x0
	mov     r7, #0x20
	mov     r5, r6
.thumb
branch_21d231e: @ 21d231e :thumb
	mov     r0, #0x13
	lsl     r0, r0, #4
	lsl     r2, r7, #16
	ldr     r0, [r5, r0]
	mov     r1, #0x98
	asr     r2, r2, #16
	bl      0x200d4c4
	ldr     r0, [r6, #0x0]
	mov     r1, #0x61
	lsl     r1, r1, #2
	ldrh    r0, [r0, #0x12]
	ldrb    r1, [r6, r1]
	add     r0, r0, r4
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	bcc     branch_21d234e
	mov     r0, #0x13
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x200d3f4
	b       branch_21d2370
@ 0x21d234e

.thumb
branch_21d234e: @ 21d234e :thumb
	mov     r0, #0x13
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      0x200d3f4
	ldr     r2, [r6, #0x0]
	mov     r0, r6
	ldr     r1, [r2, #0xc]
	ldrh    r2, [r2, #0x12]
	add     r2, r2, r4
	lsl     r2, r2, #1
	ldrh    r1, [r1, r2]
	lsl     r2, r4, #16
	lsr     r2, r2, #16
	bl      Function_21d22a0
.thumb
branch_21d2370: @ 21d2370 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r7, #0x10
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x7
	bcc     branch_21d231e
	pop     {r3-r7,pc}
@ 0x21d237c

.thumb
Function_21d237c: @ 21d237c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	str     r2, [sp, #0x0]
	cmp     r1, r2
	bcs     branch_21d23ec
	ldr     r0, [sp, #0x0]
	mov     r6, #0x0
	.hword  0x1d80 @ add r0, r0, #0x6
	lsl     r0, r0, #1
	mov     r4, r5
	str     r0, [sp, #0x4]
	add     r7, sp, #0xc
.thumb
branch_21d2396: @ 21d2396 :thumb
	mov     r0, #0x13
	lsl     r0, r0, #4
	add     r1, sp, #0xc
	ldr     r0, [r4, r0]
	add     r1, #0x2
	add     r2, sp, #0xc
	bl      0x200d550
	mov     r0, #0x0
	ldsh    r0, [r7, r0]
	cmp     r0, #0x20
	bne     branch_21d23cc
	mov     r0, #0x80
	strh    r0, [r7, #0x0]
	ldr     r0, [r5, #0x0]
	ldr     r1, [r0, #0xc]
	ldr     r0, [sp, #0x4]
	ldrh    r1, [r0, r1]
	ldr     r0, [pc, #0xf4] @ 0x21d24b0, (=0xffff)
	cmp     r1, r0
	beq     branch_21d23d0
	lsl     r2, r6, #16
	mov     r0, r5
	lsr     r2, r2, #16
	bl      Function_21d22a0
	b       branch_21d23d0
@ 0x21d23cc

.thumb
branch_21d23cc: @ 21d23cc :thumb
	sub     r0, #0x10
	strh    r0, [r7, #0x0]
.thumb
branch_21d23d0: @ 21d23d0 :thumb
	mov     r0, #0x13
	mov     r1, #0x2
	mov     r2, #0x0
	lsl     r0, r0, #4
	ldsh    r1, [r7, r1]
	ldsh    r2, [r7, r2]
	ldr     r0, [r4, r0]
	bl      0x200d4c4
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x7
	bcc     branch_21d2396
	b       branch_21d2450
@ 0x21d23ec

.thumb
branch_21d23ec: @ 21d23ec :thumb
	ldr     r0, [sp, #0x0]
	cmp     r1, r0
	bls     branch_21d24ac
	lsl     r0, r0, #1
	mov     r6, #0x0
	mov     r4, r5
	str     r0, [sp, #0x8]
	add     r7, sp, #0xc
.thumb
branch_21d23fc: @ 21d23fc :thumb
	mov     r0, #0x13
	lsl     r0, r0, #4
	add     r1, sp, #0xc
	ldr     r0, [r4, r0]
	add     r1, #0x2
	add     r2, sp, #0xc
	bl      0x200d550
	mov     r0, #0x0
	ldsh    r0, [r7, r0]
	cmp     r0, #0x80
	bne     branch_21d2432
	mov     r0, #0x20
	strh    r0, [r7, #0x0]
	ldr     r0, [r5, #0x0]
	ldr     r1, [r0, #0xc]
	ldr     r0, [sp, #0x8]
	ldrh    r1, [r0, r1]
	ldr     r0, [pc, #0x8c] @ 0x21d24b0, (=0xffff)
	cmp     r1, r0
	beq     branch_21d2436
	lsl     r2, r6, #16
	mov     r0, r5
	lsr     r2, r2, #16
	bl      Function_21d22a0
	b       branch_21d2436
@ 0x21d2432

.thumb
branch_21d2432: @ 21d2432 :thumb
	add     r0, #0x10
	strh    r0, [r7, #0x0]
.thumb
branch_21d2436: @ 21d2436 :thumb
	mov     r0, #0x13
	mov     r1, #0x2
	mov     r2, #0x0
	lsl     r0, r0, #4
	ldsh    r1, [r7, r1]
	ldsh    r2, [r7, r2]
	ldr     r0, [r4, r0]
	bl      0x200d4c4
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x7
	bcc     branch_21d23fc
.thumb
branch_21d2450: @ 21d2450 :thumb
	mov     r6, #0x0
	mov     r4, r5
	add     r7, sp, #0xc
.thumb
branch_21d2456: @ 21d2456 :thumb
	mov     r0, #0x13
	lsl     r0, r0, #4
	add     r1, sp, #0xc
	ldr     r0, [r4, r0]
	add     r1, #0x2
	add     r2, sp, #0xc
	bl      0x200d550
	mov     r0, #0x0
	ldsh    r1, [r7, r0]
	sub     r1, #0x20
	asr     r0, r1, #3
	lsr     r0, r0, #28
	add     r0, r1, r0
	asr     r0, r0, #4
	strh    r0, [r7, #0x0]
	mov     r0, #0x0
	ldsh    r1, [r7, r0]
	ldr     r0, [sp, #0x0]
	add     r0, r0, r1
	mov     r1, #0x61
	lsl     r1, r1, #2
	ldrb    r1, [r5, r1]
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	blt     branch_21d2498
	mov     r0, #0x13
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x200d3f4
	b       branch_21d24a4
@ 0x21d2498

.thumb
branch_21d2498: @ 21d2498 :thumb
	mov     r0, #0x13
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      0x200d3f4
.thumb
branch_21d24a4: @ 21d24a4 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x7
	bcc     branch_21d2456
.thumb
branch_21d24ac: @ 21d24ac :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d24b0

.word 0xffff @ 0x21d24b0
.thumb
Function_21d24b4: @ 21d24b4 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r0, r1
	mov     r1, #0x1
	bl      0x20790c4
	mov     r4, r0
	bl      0x207cac0
	mov     r6, r0
	mov     r0, r4
	bl      0x207ca90
	mov     r3, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x2c] @ 0x21d2504, (=0xb8ab)
	mov     r1, #0x11
	lsl     r1, r1, #4
	str     r0, [sp, #0x4]
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	mov     r2, r6
	bl      0x200d948
	mov     r0, r4
	bl      0x207caa8
	mov     r1, r0
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	.hword  0x1c89 @ add r1, r1, #0x2
	bl      0x200d41c
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x21d2502


.align 2


.word 0xb8ab @ 0x21d2504
.thumb
Function_21d2508: @ 21d2508 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r4, r1
	bl      Function_21d2014
	mov     r0, r6
	mov     r1, r4
	bl      Function_21d2110
	ldr     r4, [pc, #0x28] @ 0x21d2544, (=0x21d28fc)
	mov     r7, #0x0
	mov     r5, r6
.thumb
branch_21d2520: @ 21d2520 :thumb
	mov     r0, #0x11
	mov     r1, #0x45
	lsl     r0, r0, #4
	lsl     r1, r1, #2
	ldr     r0, [r6, r0]
	ldr     r1, [r6, r1]
	mov     r2, r4
	bl      0x200ce6c
	mov     r1, #0x46
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r4, #0x34
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r7, #0xd
	bcc     branch_21d2520
	pop     {r3-r7,pc}
@ 0x21d2544

.word 0x21d28fc @ 0x21d2544
.thumb
Function_21d2548: @ 21d2548 :thumb
	push    {r3-r5,lr}
	mov     r3, r1
	mov     r5, r0
	mov     r4, r2
	mov     r0, #0x4a
	lsl     r2, r3, #4
	lsl     r0, r0, #2
	add     r2, #0x20
	lsl     r2, r2, #16
	ldr     r0, [r5, r0]
	mov     r1, #0xc4
	asr     r2, r2, #16
	bl      0x200d4c4
	mov     r0, #0x4a
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r4
	bl      0x200d41c
	pop     {r3-r5,pc}
@ 0x21d2572


.align 2, 0


.thumb
Function_21d2574: @ 21d2574 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x46
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r4, r1
	bl      0x200d3f4
	mov     r0, #0x47
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r4
	bl      0x200d3f4
	pop     {r3-r5,pc}
@ 0x21d2592


.align 2, 0


.thumb
Function_21d2594: @ 21d2594 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldrh    r0, [r0, #0x12]
	cmp     r0, #0x0
	beq     branch_21d25ae
	mov     r0, #0x12
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      0x200d3f4
	b       branch_21d25ba
@ 0x21d25ae

.thumb
branch_21d25ae: @ 21d25ae :thumb
	mov     r0, #0x12
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x200d3f4
.thumb
branch_21d25ba: @ 21d25ba :thumb
	ldr     r0, [r4, #0x0]
	ldrh    r0, [r0, #0x12]
	add     r2, r0, #0x7
	mov     r0, #0x61
	lsl     r0, r0, #2
	ldrb    r1, [r4, r0]
	cmp     r2, r1
	bge     branch_21d25d6
	sub     r0, #0x60
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      0x200d3f4
	pop     {r4,pc}
@ 0x21d25d6

.thumb
branch_21d25d6: @ 21d25d6 :thumb
	sub     r0, #0x60
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x200d3f4
	pop     {r4,pc}
@ 0x21d25e2


.align 2, 0


.thumb
Function_21d25e4: @ 21d25e4 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x12
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x200d3f4
	mov     r0, #0x49
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x200d3f4
	pop     {r4,pc}
@ 0x21d2602


.align 2, 0


.thumb
Function_21d2604: @ 21d2604 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x1
	mov     r1, #0x43
	bl      0x208c120
	mov     r0, #0x6
	mov     r1, #0xb
	lsl     r0, r0, #6
	str     r1, [r4, r0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d261c


.thumb
Function_21d261c: @ 21d261c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r2, [pc, #0x80] @ 0x21d26a4, (=Unknown_21d2708)
	add     r1, sp, #0x0
	ldrb    r3, [r2, #0x0]
	mov     r4, r0
	strb    r3, [r1, #0x0]
	ldrb    r3, [r2, #0x1]
	ldrb    r2, [r2, #0x2]
	strb    r3, [r1, #0x1]
	strb    r2, [r1, #0x2]
	bl      Function_21d0f6c
	ldr     r0, [r4, #0x0]
	mov     r1, #0x53
	ldr     r0, [r0, #0x0]
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [r4, #0x0]
	ldr     r2, [r0, #0x8]
	add     r0, r1, #0x4
	str     r2, [r4, r0]
	mov     r0, r1
	mov     r2, #0x0
	add     r0, #0x11
	strb    r2, [r4, r0]
	mov     r0, r1
	add     r0, #0x14
	strb    r2, [r4, r0]
	mov     r0, #0x1
	add     r1, #0x13
	strb    r0, [r4, r1]
	mov     r0, r4
	bl      Function_21d1dd0
	mov     r1, #0x59
	lsl     r1, r1, #2
	strh    r0, [r4, r1]
	mov     r2, #0x2
	.hword  0x1f88 @ sub r0, r1, #0x6
	strb    r2, [r4, r0]
	mov     r0, r1
	mov     r2, #0x1
	add     r0, #0x14
	str     r2, [r4, r0]
	mov     r0, r1
	mov     r2, #0x0
	add     r0, #0x10
	sub     r1, #0x18
	str     r2, [r4, r0]
	add     r0, r4, r1
	add     r1, sp, #0x0
	bl      0x208d720
	mov     r1, #0x53
	lsl     r1, r1, #2
	ldr     r0, [pc, #0x18] @ 0x21d26a8, (=0x20f410c)
	add     r1, r4, r1
	mov     r2, #0x43
	bl      0x20067e8
	mov     r1, #0x5f
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0xc
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d26a2

.align 2
.word Unknown_21d2708 @ 0x21d26a4
.word 0x20f410c @ 0x21d26a8



.thumb
Function_21d26ac: @ 21d26ac :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x5f
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x2006844
	cmp     r0, #0x0
	beq     branch_21d26fe
	mov     r0, #0x5f
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x2006814
	mov     r0, r4
	bl      Function_21d0ed8
	ldr     r1, [r4, #0x0]
	mov     r0, r4
	ldrh    r1, [r1, #0x10]
	mov     r2, #0x1
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_21d2548
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d2574
	mov     r0, r4
	bl      Function_21d25e4
	ldr     r0, [pc, #0x14] @ 0x21d2704, (=0x162)
	ldr     r1, [r4, #0x0]
	ldrb    r2, [r4, r0]
	add     r0, #0x1e
	strb    r2, [r1, #0x17]
	mov     r1, #0x7
	str     r1, [r4, r0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d26fe

.thumb
branch_21d26fe: @ 21d26fe :thumb
	mov     r0, #0xc
	pop     {r4,pc}
@ 0x21d2702

.align 2
.word 0x162 @ 0x21d2704



Unknown_21d2708: @ 0x21d2708
.incbin "./baserom/overlay/overlay_0091.bin", 0x1988, 0x21d2bc0 - 0x21d2708


@end 0x21d2bc0




