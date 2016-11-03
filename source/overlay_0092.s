

.section .iwram92, "ax"


.thumb
Function_21d0d80: @ 21d0d80 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r0, #0x0
	mov     r1, r0
	bl      0x2017798
	mov     r0, #0x0
	mov     r1, r0
	bl      0x20177bc
	bl      0x201ff00
	bl      0x201ff68
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0xe4] @ 0x21d0e88, (=0xffffe0ff)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r2, [pc, #0xe0] @ 0x21d0e8c, (=0x4001000)
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	mov     r0, #0x3
	mov     r1, #0x32
	lsl     r2, r2, #7
	bl      0x2017fc8
	ldr     r1, [pc, #0xd4] @ 0x21d0e90, (=0xc32c)
	mov     r0, r4
	mov     r2, #0x32
	bl      0x200681c
	ldr     r2, [pc, #0xc8] @ 0x21d0e90, (=0xc32c)
	mov     r1, #0x0
	mov     r5, r0
	blx 0x20d5124
	mov     r0, #0x32
	str     r0, [r5, #0x0]
	ldr     r0, [pc, #0xc0] @ 0x21d0e94, (=0x20e4c44)
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_21d0dde
	mov     r1, #0x1
	b       branch_21d0de0
@ 0x21d0dde

.thumb
branch_21d0dde: @ 21d0dde :thumb
	mov     r1, #0x0
.thumb
branch_21d0de0: @ 21d0de0 :thumb
	ldr     r0, [pc, #0xb4] @ 0x21d0e98, (=0xc2f0)
	str     r1, [r5, r0]
	mov     r0, r4
	bl      0x2006840
	mov     r4, r0
	bl      0x202c878
	str     r0, [r5, #0x4]
	bl      0x202c8c0
	ldr     r1, [pc, #0xa4] @ 0x21d0e9c, (=0xc314)
	str     r0, [r5, r1]
	ldr     r0, [r5, #0x4]
	bl      0x202c8c4
	ldr     r1, [pc, #0x9c] @ 0x21d0ea0, (=0xc318)
	str     r0, [r5, r1]
	ldr     r0, [r5, #0x4]
	bl      0x202c990
	ldr     r1, [pc, #0x98] @ 0x21d0ea4, (=0xc324)
	str     r0, [r5, r1]
	mov     r0, r4
	bl      0x2025e44
	str     r0, [r5, #0x8]
	bl      Function_21d14f0
	bl      Function_21d1510
	ldr     r0, [r5, #0x0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201caf4
	ldr     r0, [r5, #0x0]
	bl      0x2018340
	ldr     r1, [pc, #0x78] @ 0x21d0ea8, (=0xc010)
	str     r0, [r5, r1]
	bl      0x201ffd0
	bl      0x201d710
	ldr     r2, [r5, #0x0]
	mov     r0, #0x8
	mov     r1, #0x40
	bl      0x200b368
	ldr     r1, [pc, #0x64] @ 0x21d0eac, (=0xc070)
	str     r0, [r5, r1]
	ldr     r0, [r5, #0x0]
	bl      0x20203ac
	ldr     r1, [pc, #0x60] @ 0x21d0eb0, (=0xc2cc)
	str     r0, [r5, r1]
	mov     r0, #0x0
	add     r1, #0x1c
	str     r0, [r5, r1]
	ldr     r0, [pc, #0x58] @ 0x21d0eb4, (=0x21bf6dc)
	mov     r1, #0x1
	strb    r1, [r0, #0x5]
	bl      0x201ffe8
	mov     r0, #0x4
	mov     r1, #0x8
	bl      0x2017dd4
	mov     r0, #0x1
	bl      0x2002ac8
	mov     r0, #0x0
	bl      0x2002ae4
	mov     r0, #0x0
	bl      0x2002b20
	mov     r0, r5
	bl      Function_21d1530
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d0e86


.align 2


.word 0xffffe0ff @ 0x21d0e88
.word 0x4001000 @ 0x21d0e8c
.word 0xc32c @ 0x21d0e90
.word 0x20e4c44 @ 0x21d0e94
.word 0xc2f0 @ 0x21d0e98
.word 0xc314 @ 0x21d0e9c
.word 0xc318 @ 0x21d0ea0
.word 0xc324 @ 0x21d0ea4
.word 0xc010 @ 0x21d0ea8
.word 0xc070 @ 0x21d0eac
.word 0xc2cc @ 0x21d0eb0
.word 0x21bf6dc @ 0x21d0eb4
.thumb
Function_21d0eb8: @ 21d0eb8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r1
	bl      0x200682c
	ldr     r1, [r5, #0x0]
	mov     r4, r0
	mov     r7, #0x0
	cmp     r1, #0x12
	bls     branch_21d0ece
	b       branch_21d142c
@ 0x21d0ece

.thumb
branch_21d0ece: @ 21d0ece :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d0eda

Jumppoints_21d0eda:
.hword branch_21d0f00 - Jumppoints_21d0eda - 2
.hword branch_21d0f72 - Jumppoints_21d0eda - 2
.hword branch_21d0f80 - Jumppoints_21d0eda - 2
.hword branch_21d0fa0 - Jumppoints_21d0eda - 2
.hword branch_21d0fc4 - Jumppoints_21d0eda - 2
.hword branch_21d100e - Jumppoints_21d0eda - 2
.hword branch_21d1036 - Jumppoints_21d0eda - 2
.hword branch_21d106c - Jumppoints_21d0eda - 2
.hword branch_21d10a6 - Jumppoints_21d0eda - 2
.hword branch_21d1100 - Jumppoints_21d0eda - 2
.hword branch_21d114e - Jumppoints_21d0eda - 2
.hword branch_21d11a4 - Jumppoints_21d0eda - 2
.hword branch_21d11b6 - Jumppoints_21d0eda - 2
.hword branch_21d11de - Jumppoints_21d0eda - 2
.hword branch_21d1278 - Jumppoints_21d0eda - 2
.hword branch_21d12f8 - Jumppoints_21d0eda - 2
.hword branch_21d13d4 - Jumppoints_21d0eda - 2
.hword branch_21d13e2 - Jumppoints_21d0eda - 2
.hword branch_21d1404 - Jumppoints_21d0eda - 2
.thumb
branch_21d0f00: @ 21d0f00 :thumb
	mov     r2, #0x59
	ldr     r3, [r4, #0x0]
	mov     r0, #0x1
	mov     r1, #0x1a
	lsl     r2, r2, #2
	bl      0x200b144
	ldr     r1, [pc, #0x310] @ 0x21d1220, (=0xc060)
	str     r0, [r4, r1]
	ldr     r1, [r4, #0x0]
	mov     r0, #0x81
	bl      0x2006c24
	mov     r6, r0
	mov     r0, r4
	mov     r1, r6
	bl      Function_21d2150
	mov     r0, r4
	mov     r1, r6
	bl      Function_21d1888
	mov     r0, r6
	bl      0x2006ca8
	mov     r0, r7
	ldr     r1, [pc, #0x2ec] @ 0x21d1224, (=0xc2ec)
	mov     r3, r0
	str     r0, [r4, r1]
	mov     r1, #0x6
	str     r1, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	ldr     r2, [r4, #0x0]
	str     r2, [sp, #0x8]
	mov     r2, r1
	bl      0x200f174
	mov     r0, #0x4
	mov     r1, #0x1
	bl      0x201ff0c
	mov     r0, #0x4
	mov     r1, #0x1
	bl      0x201ff74
	mov     r0, #0x8
	mov     r1, #0x1
	bl      0x201ff0c
	mov     r0, #0x8
	mov     r1, #0x1
	bl      0x201ff74
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_21d142c
@ 0x21d0f72

.thumb
branch_21d0f72: @ 21d0f72 :thumb
	bl      0x200f2ac
	cmp     r0, #0x1
	bne     branch_21d104a
	mov     r0, #0x2
	str     r0, [r5, #0x0]
	b       branch_21d142c
@ 0x21d0f80

.thumb
branch_21d0f80: @ 21d0f80 :thumb
	mov     r1, r7
	mov     r2, #0x1
	bl      Function_21d1b70
	cmp     r0, #0x1
	bne     branch_21d104a
	ldr     r0, [pc, #0x298] @ 0x21d1228, (=0xc314)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_21d0f9a
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	b       branch_21d142c

branch_21d0f9a: @ 21d0f9a :thumb
	mov     r0, #0xe
	str     r0, [r5, #0x0]
	b       branch_21d142c

branch_21d0fa0: @ 21d0fa0 :thumb
	mov     r1, #0x1
	mov     r2, r1
	bl      Function_21d1b70
	cmp     r0, #0x1
	bne     branch_21d104a
	ldr     r0, [pc, #0x27c] @ 0x21d122c, (=0x21d2958)
	ldr     r1, [pc, #0x280] @ 0x21d1230, (=0xc024)
	str     r0, [sp, #0x0]
	ldr     r2, [pc, #0x280] @ 0x21d1234, (=Unknown_21d290c)
	ldr     r3, [pc, #0x280] @ 0x21d1238, (=0x21d29a8)
	mov     r0, r4
	add     r1, r4, r1
	bl      Function_21d1c4c
	mov     r0, #0x4
	str     r0, [r5, #0x0]
	b       branch_21d142c

branch_21d0fc4: @ 21d0fc4 :thumb
	ldr     r0, [pc, #0x274] @ 0x21d123c, (=0xc054)
	ldr     r0, [r4, r0]
	bl      0x2001288
	mov     r6, r0
	.hword  0x1e78 @ sub r0, r7, #0x1
	cmp     r6, r0
	beq     branch_21d104a
	mov     r0, r4
	bl      Function_21d1db4
	ldr     r0, [pc, #0x264] @ 0x21d1240, (=0x5dc)
	bl      0x2005748
	add     r0, r6, #0x2
	cmp     r0, #0x4
	bhi     branch_21d0ffc
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d0ff2

Jumppoints_21d0ff2:
.hword branch_21d1008 - Jumppoints_21d0ff2 - 2
.hword branch_21d0ffc - Jumppoints_21d0ff2 - 2
.hword branch_21d0ffc - Jumppoints_21d0ff2 - 2
.hword branch_21d1002 - Jumppoints_21d0ff2 - 2
.hword branch_21d1008 - Jumppoints_21d0ff2 - 2
.thumb
branch_21d0ffc: @ 21d0ffc :thumb
	mov     r0, #0xe
	str     r0, [r5, #0x0]
	b       branch_21d142c
@ 0x21d1002

.thumb
branch_21d1002: @ 21d1002 :thumb
	mov     r0, #0x5
	str     r0, [r5, #0x0]
	b       branch_21d142c
@ 0x21d1008

.thumb
branch_21d1008: @ 21d1008 :thumb
	mov     r0, #0x11
	str     r0, [r5, #0x0]
	b       branch_21d142c
@ 0x21d100e

.thumb
branch_21d100e: @ 21d100e :thumb
	mov     r1, #0x2
	mov     r2, #0x1
	bl      Function_21d1b70
	cmp     r0, #0x1
	bne     branch_21d104a
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0x224] @ 0x21d1244, (=0x21d292c)
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x224] @ 0x21d1248, (=0xc010)
	ldr     r2, [pc, #0x228] @ 0x21d124c, (=0x1d9)
	ldr     r0, [r4, r0]
	mov     r3, #0x7
	bl      0x2002100
	ldr     r1, [pc, #0x220] @ 0x21d1250, (=0xc05c)
	str     r0, [r4, r1]
	mov     r0, #0x6
	str     r0, [r5, #0x0]
	b       branch_21d142c
@ 0x21d1036

.thumb
branch_21d1036: @ 21d1036 :thumb
	ldr     r0, [pc, #0x218] @ 0x21d1250, (=0xc05c)
	ldr     r1, [r4, #0x0]
	ldr     r0, [r4, r0]
	bl      0x2002114
	cmp     r0, #0x0
	beq     branch_21d104c
	.hword  0x1eb9 @ sub r1, r7, #0x2
	cmp     r0, r1
	beq     branch_21d1066
.thumb
branch_21d104a: @ 21d104a :thumb
	b       branch_21d142c
@ 0x21d104c

.thumb
branch_21d104c: @ 21d104c :thumb
	ldr     r0, [pc, #0x204] @ 0x21d1254, (=0xc2f0)
	ldr     r1, [r4, r0]
	cmp     r1, #0x1
	bne     branch_21d1060
	mov     r1, #0x67
	add     r0, #0x2c
	str     r1, [r4, r0]
	mov     r0, #0x9
	str     r0, [r5, #0x0]
	b       branch_21d142c
@ 0x21d1060

.thumb
branch_21d1060: @ 21d1060 :thumb
	mov     r0, #0x7
	str     r0, [r5, #0x0]
	b       branch_21d142c
@ 0x21d1066

.thumb
branch_21d1066: @ 21d1066 :thumb
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	b       branch_21d142c
@ 0x21d106c

.thumb
branch_21d106c: @ 21d106c :thumb
	mov     r1, #0x3
	mov     r2, #0x1
	bl      Function_21d1b70
	cmp     r0, #0x1
	bne     branch_21d10b6
	ldr     r1, [pc, #0x1dc] @ 0x21d1258, (=0xc31c)
	mov     r0, r7
	str     r0, [r4, r1]
	bl      0x2099780
	mov     r6, r0
	mov     r0, r7
	bl      0x209979c
	ldr     r1, [pc, #0x1d0] @ 0x21d125c, (=0x2b6)
	ldr     r2, [pc, #0x1d0] @ 0x21d1260, (=0x21d2914)
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x19c] @ 0x21d1230, (=0xc024)
	str     r6, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r3, [pc, #0x1cc] @ 0x21d1264, (=0x21d29c8)
	mov     r0, r4
	add     r1, r4, r1
	bl      Function_21d1cf4
	mov     r0, #0x8
	str     r0, [r5, #0x0]
	b       branch_21d142c
@ 0x21d10a6

.thumb
branch_21d10a6: @ 21d10a6 :thumb
	ldr     r0, [pc, #0x194] @ 0x21d123c, (=0xc054)
	ldr     r0, [r4, r0]
	bl      0x2001288
	mov     r6, r0
	.hword  0x1e78 @ sub r0, r7, #0x1
	cmp     r6, r0
	bne     branch_21d10b8
.thumb
branch_21d10b6: @ 21d10b6 :thumb
	b       branch_21d142c
@ 0x21d10b8

.thumb
branch_21d10b8: @ 21d10b8 :thumb
	mov     r0, r4
	bl      Function_21d1db4
	ldr     r0, [pc, #0x180] @ 0x21d1240, (=0x5dc)
	bl      0x2005748
	.hword  0x1eb8 @ sub r0, r7, #0x2
	cmp     r6, r0
	beq     branch_21d10d2
	mov     r0, r7
	bl      0x2099780
	ldrb    r6, [r0, r6]
.thumb
branch_21d10d2: @ 21d10d2 :thumb
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r6, r0
	beq     branch_21d10fa
	ldr     r0, [pc, #0x17c] @ 0x21d1258, (=0xc31c)
	str     r6, [r4, r0]
	ldr     r0, [r4, r0]
	bl      Function_21d2854
	cmp     r0, #0x1
	bne     branch_21d10ee
	mov     r0, #0x9
	str     r0, [r5, #0x0]
	b       branch_21d142c
@ 0x21d10ee

.thumb
branch_21d10ee: @ 21d10ee :thumb
	ldr     r0, [pc, #0x178] @ 0x21d1268, (=0xc320)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, #0xb
	str     r0, [r5, #0x0]
	b       branch_21d142c
@ 0x21d10fa

.thumb
branch_21d10fa: @ 21d10fa :thumb
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	b       branch_21d142c
@ 0x21d1100

.thumb
branch_21d1100: @ 21d1100 :thumb
	mov     r1, #0x4
	mov     r2, #0x1
	bl      Function_21d1b70
	cmp     r0, #0x1
	bne     branch_21d11f2
	ldr     r0, [pc, #0x158] @ 0x21d1268, (=0xc320)
	mov     r1, r7
	str     r1, [r4, r0]
	.hword  0x1f00 @ sub r0, r0, #0x4
	ldr     r0, [r4, r0]
	bl      0x20996d4
	mov     r6, r0
	bl      0x209972c
	str     r0, [sp, #0xc]
	mov     r0, r6
	bl      0x2099780
	str     r0, [sp, #0x10]
	mov     r0, r6
	bl      0x209979c
	ldr     r1, [sp, #0xc]
	ldr     r2, [pc, #0x12c] @ 0x21d1260, (=0x21d2914)
	str     r1, [sp, #0x0]
	ldr     r1, [sp, #0x10]
	ldr     r3, [pc, #0x128] @ 0x21d1264, (=0x21d29c8)
	str     r1, [sp, #0x4]
	ldr     r1, [pc, #0xf0] @ 0x21d1230, (=0xc024)
	str     r0, [sp, #0x8]
	mov     r0, r4
	add     r1, r4, r1
	bl      Function_21d1cf4
	mov     r0, #0xa
	str     r0, [r5, #0x0]
	b       branch_21d142c
@ 0x21d114e

.thumb
branch_21d114e: @ 21d114e :thumb
	ldr     r0, [pc, #0xec] @ 0x21d123c, (=0xc054)
	ldr     r0, [r4, r0]
	bl      0x2001288
	mov     r6, r0
	.hword  0x1e78 @ sub r0, r7, #0x1
	cmp     r6, r0
	beq     branch_21d11f2
	mov     r0, r4
	bl      Function_21d1db4
	ldr     r0, [pc, #0xd8] @ 0x21d1240, (=0x5dc)
	bl      0x2005748
	.hword  0x1eb8 @ sub r0, r7, #0x2
	cmp     r6, r0
	beq     branch_21d117e
	ldr     r0, [pc, #0xe4] @ 0x21d1258, (=0xc31c)
	ldr     r0, [r4, r0]
	bl      0x20996d4
	bl      0x2099780
	ldrb    r6, [r0, r6]
.thumb
branch_21d117e: @ 21d117e :thumb
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r6, r0
	beq     branch_21d1190
	ldr     r0, [pc, #0xe0] @ 0x21d1268, (=0xc320)
	str     r6, [r4, r0]
	mov     r0, #0xb
	str     r0, [r5, #0x0]
	b       branch_21d142c
@ 0x21d1190

.thumb
branch_21d1190: @ 21d1190 :thumb
	ldr     r0, [pc, #0xc0] @ 0x21d1254, (=0xc2f0)
	ldr     r0, [r4, r0]
	cmp     r0, #0x1
	bne     branch_21d119e
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	b       branch_21d142c
@ 0x21d119e

.thumb
branch_21d119e: @ 21d119e :thumb
	mov     r0, #0x7
	str     r0, [r5, #0x0]
	b       branch_21d142c
@ 0x21d11a4

.thumb
branch_21d11a4: @ 21d11a4 :thumb
	ldr     r2, [pc, #0xb0] @ 0x21d1258, (=0xc31c)
	ldr     r1, [r4, r2]
	.hword  0x1d12 @ add r2, r2, #0x4
	ldr     r2, [r4, r2]
	bl      Function_21d1ebc
	mov     r0, #0xc
	str     r0, [r5, #0x0]
	b       branch_21d142c
@ 0x21d11b6

.thumb
branch_21d11b6: @ 21d11b6 :thumb
	mov     r1, #0x5
	mov     r2, #0x1
	bl      Function_21d1b70
	cmp     r0, #0x1
	bne     branch_21d11f2
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0x7c] @ 0x21d1244, (=0x21d292c)
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x7c] @ 0x21d1248, (=0xc010)
	ldr     r2, [pc, #0x80] @ 0x21d124c, (=0x1d9)
	ldr     r0, [r4, r0]
	mov     r3, #0x7
	bl      0x2002100
	ldr     r1, [pc, #0x78] @ 0x21d1250, (=0xc05c)
	str     r0, [r4, r1]
	mov     r0, #0xd
	str     r0, [r5, #0x0]
	b       branch_21d142c
@ 0x21d11de

.thumb
branch_21d11de: @ 21d11de :thumb
	ldr     r0, [pc, #0x70] @ 0x21d1250, (=0xc05c)
	ldr     r1, [r4, #0x0]
	ldr     r0, [r4, r0]
	bl      0x2002114
	cmp     r0, #0x0
	beq     branch_21d11f4
	.hword  0x1eb9 @ sub r1, r7, #0x2
	cmp     r0, r1
	beq     branch_21d126c
.thumb
branch_21d11f2: @ 21d11f2 :thumb
	b       branch_21d142c
@ 0x21d11f4

.thumb
branch_21d11f4: @ 21d11f4 :thumb
	mov     r0, r4
	bl      Function_21d1f74
	ldr     r2, [pc, #0x5c] @ 0x21d1258, (=0xc31c)
	ldr     r0, [r4, #0x4]
	ldr     r1, [r4, r2]
	.hword  0x1d12 @ add r2, r2, #0x4
	ldr     r2, [r4, r2]
	bl      0x202c88c
	ldr     r0, [pc, #0x4c] @ 0x21d1258, (=0xc31c)
	mov     r1, r0
	ldr     r2, [r4, r0]
	sub     r1, #0x8
	str     r2, [r4, r1]
	add     r1, r0, #0x4
	ldr     r1, [r4, r1]
	.hword  0x1f00 @ sub r0, r0, #0x4
	str     r1, [r4, r0]
	mov     r0, #0xe
	str     r0, [r5, #0x0]
	b       branch_21d142c
@ 0x21d1220

.word 0xc060 @ 0x21d1220
.word 0xc2ec @ 0x21d1224
.word 0xc314 @ 0x21d1228
.word 0x21d2958 @ 0x21d122c
.word 0xc024 @ 0x21d1230
.word Unknown_21d290c @ 0x21d1234
.word 0x21d29a8 @ 0x21d1238
.word 0xc054 @ 0x21d123c
.word 0x5dc @ 0x21d1240
.word 0x21d292c @ 0x21d1244
.word 0xc010 @ 0x21d1248
.word 0x1d9 @ 0x21d124c
.word 0xc05c @ 0x21d1250
.word 0xc2f0 @ 0x21d1254
.word 0xc31c @ 0x21d1258
.word 0x2b6 @ 0x21d125c
.word 0x21d2914 @ 0x21d1260
.word 0x21d29c8 @ 0x21d1264
.word 0xc320 @ 0x21d1268
.thumb
branch_21d126c: @ 21d126c :thumb
	mov     r0, r4
	bl      Function_21d1f74
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	b       branch_21d142c
@ 0x21d1278

.thumb
branch_21d1278: @ 21d1278 :thumb
	ldr     r1, [pc, #0x1bc] @ 0x21d1438, (=0xc2f0)
	ldr     r0, [r4, r1]
	cmp     r0, #0x1
	bne     branch_21d1290
	mov     r0, r1
	add     r0, #0x34
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_21d1290
	add     r0, r1, #0x4
	strh    r7, [r4, r0]
	b       branch_21d1296
@ 0x21d1290

.thumb
branch_21d1290: @ 21d1290 :thumb
	ldr     r0, [pc, #0x1a8] @ 0x21d143c, (=0xc2f4)
	mov     r1, #0x1
	strh    r1, [r4, r0]
.thumb
branch_21d1296: @ 21d1296 :thumb
	mov     r0, r4
	bl      Function_21d2254
	mov     r0, r4
	bl      Function_21d16a8
	mov     r0, r4
	bl      Function_21d22b0
	mov     r0, r4
	bl      Function_21d2334
	mov     r0, #0xd8
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x188] @ 0x21d1440, (=0xc014)
	mov     r2, #0x0
	add     r0, r4, r0
	mov     r1, #0xf
	mov     r3, r2
	bl      0x201ae78
	ldr     r0, [pc, #0x17c] @ 0x21d1444, (=0xc034)
	ldr     r2, [pc, #0x180] @ 0x21d1448, (=0x1d9)
	add     r0, r4, r0
	mov     r1, #0x0
	mov     r3, #0x7
	bl      0x200dc48
	ldr     r0, [pc, #0x178] @ 0x21d144c, (=0xc314)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21d12e0
	mov     r0, r4
	bl      Function_21d1dec
.thumb
branch_21d12e0: @ 21d12e0 :thumb
	mov     r0, r4
	bl      Function_21d1f90
	ldr     r0, [pc, #0x168] @ 0x21d1450, (=0xc328)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r1, #0x1
	sub     r0, #0x40
	str     r1, [r4, r0]
	mov     r0, #0xf
	str     r0, [r5, #0x0]
	b       branch_21d142c
@ 0x21d12f8

.thumb
branch_21d12f8: @ 21d12f8 :thumb
	ldr     r1, [pc, #0x158] @ 0x21d1454, (=0xc2d8)
	ldrh    r6, [r4, r1]
	bl      Function_21d1700
	ldr     r0, [pc, #0x154] @ 0x21d1458, (=0x21bf67c)
	mov     r3, #0x2
	ldr     r1, [r0, #0x48]
	mov     r0, r1
	tst     r0, r3
	bne     branch_21d1314
	ldr     r0, [pc, #0x14c] @ 0x21d145c, (=0xc2f8)
	ldr     r2, [r4, r0]
	tst     r2, r3
	beq     branch_21d135a
.thumb
branch_21d1314: @ 21d1314 :thumb
	ldr     r0, [pc, #0x12c] @ 0x21d1444, (=0xc034)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      0x200dc9c
	ldr     r0, [pc, #0x140] @ 0x21d1460, (=0x5dd)
	bl      0x2005748
	mov     r0, #0xd8
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x110] @ 0x21d1440, (=0xc014)
	mov     r2, #0x0
	add     r0, r4, r0
	mov     r1, #0xf
	mov     r3, r2
	bl      0x201ae78
	ldr     r0, [pc, #0x110] @ 0x21d144c, (=0xc314)
	ldr     r1, [r4, r0]
	cmp     r1, #0x0
	bne     branch_21d134e
	mov     r1, #0x2
	sub     r0, #0x2c
	str     r1, [r4, r0]
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	b       branch_21d142c
@ 0x21d134e

.thumb
branch_21d134e: @ 21d134e :thumb
	mov     r0, r4
	bl      Function_21d1f74
	mov     r0, #0x11
	str     r0, [r5, #0x0]
	b       branch_21d142c
@ 0x21d135a

.thumb
branch_21d135a: @ 21d135a :thumb
	lsl     r2, r3, #9
	tst     r2, r1
	beq     branch_21d1386
	mov     r2, r0
	add     r2, #0x30
	ldr     r2, [r4, r2]
	cmp     r2, #0x0
	bne     branch_21d1386
	mov     r1, #0x1
	add     r0, #0x30
	str     r1, [r4, r0]
	mov     r0, r4
	bl      Function_21d1f90
	ldr     r0, [pc, #0xd8] @ 0x21d1450, (=0xc328)
	ldr     r0, [r4, r0]
	cmp     r0, #0x1
	bne     branch_21d142c
	ldr     r0, [pc, #0xe0] @ 0x21d1460, (=0x5dd)
	bl      0x2005748
	b       branch_21d142c
@ 0x21d1386

.thumb
branch_21d1386: @ 21d1386 :thumb
	ldr     r0, [pc, #0xdc] @ 0x21d1464, (=0x403)
	tst     r0, r1
	beq     branch_21d13a0
	ldr     r0, [pc, #0xc0] @ 0x21d1450, (=0xc328)
	ldr     r2, [r4, r0]
	cmp     r2, #0x1
	bne     branch_21d13a0
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, r4
	bl      Function_21d1f90
	b       branch_21d142c
@ 0x21d13a0

.thumb
branch_21d13a0: @ 21d13a0 :thumb
	ldr     r2, [pc, #0xb4] @ 0x21d1458, (=0x21bf67c)
	mov     r0, r4
	ldr     r2, [r2, #0x44]
	bl      Function_21d2460
	cmp     r0, #0x1
	bne     branch_21d13c0
	ldr     r0, [pc, #0xa0] @ 0x21d1450, (=0xc328)
	ldr     r1, [r4, r0]
	cmp     r1, #0x1
	bne     branch_21d13c0
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, r4
	bl      Function_21d1f90
.thumb
branch_21d13c0: @ 21d13c0 :thumb
	ldr     r0, [pc, #0x90] @ 0x21d1454, (=0xc2d8)
	ldrh    r0, [r4, r0]
	cmp     r6, r0
	beq     branch_21d142c
	mov     r0, #0x10
	str     r0, [r5, #0x0]
	ldr     r0, [pc, #0x98] @ 0x21d1468, (=0x5c2)
	bl      0x2005748
	b       branch_21d142c
@ 0x21d13d4

.thumb
branch_21d13d4: @ 21d13d4 :thumb
	bl      Function_21d2644
	cmp     r0, #0x1
	bne     branch_21d142c
	mov     r0, #0xf
	str     r0, [r5, #0x0]
	b       branch_21d142c
@ 0x21d13e2

.thumb
branch_21d13e2: @ 21d13e2 :thumb
	ldr     r0, [pc, #0x88] @ 0x21d146c, (=0xc2ec)
	mov     r1, r7
	str     r7, [r4, r0]
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	mov     r2, r7
	str     r0, [sp, #0x8]
	mov     r0, r7
	mov     r3, r7
	bl      0x200f174
	mov     r0, #0x12
	str     r0, [r5, #0x0]
	b       branch_21d142c
@ 0x21d1404

.thumb
branch_21d1404: @ 21d1404 :thumb
	bl      0x200f2ac
	cmp     r0, #0x1
	bne     branch_21d142c
	ldr     r0, [pc, #0x60] @ 0x21d1470, (=0xc2e8)
	mov     r1, #0x1
	str     r1, [r4, r0]
	mov     r0, r4
	bl      Function_21d1b24
	mov     r0, r4
	bl      Function_21d2210
	ldr     r0, [pc, #0x54] @ 0x21d1474, (=0xc060)
	ldr     r0, [r4, r0]
	bl      0x200b190
	mov     r0, r7
	str     r0, [r5, #0x0]
	mov     r7, #0x1
.thumb
branch_21d142c: @ 21d142c :thumb
	mov     r0, r4
	bl      Function_21d26d0
	mov     r0, r7
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d1438

.word 0xc2f0 @ 0x21d1438
.word 0xc2f4 @ 0x21d143c
.word 0xc014 @ 0x21d1440
.word 0xc034 @ 0x21d1444
.word 0x1d9 @ 0x21d1448
.word 0xc314 @ 0x21d144c
.word 0xc328 @ 0x21d1450
.word 0xc2d8 @ 0x21d1454
.word 0x21bf67c @ 0x21d1458
.word 0xc2f8 @ 0x21d145c
.word 0x5dd @ 0x21d1460
.word 0x403 @ 0x21d1464
.word 0x5c2 @ 0x21d1468
.word 0xc2ec @ 0x21d146c
.word 0xc2e8 @ 0x21d1470
.word 0xc060 @ 0x21d1474
.thumb
Function_21d1478: @ 21d1478 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	bl      0x200682c
	mov     r4, r0
	mov     r0, #0x4
	mov     r1, #0x0
	ldr     r5, [r4, #0x0]
	bl      0x201ff0c
	mov     r0, #0x4
	mov     r1, #0x0
	bl      0x201ff74
	mov     r0, #0x8
	mov     r1, #0x0
	bl      0x201ff0c
	mov     r0, #0x8
	mov     r1, #0x0
	bl      0x201ff74
	ldr     r0, [pc, #0x38] @ 0x21d14e0, (=0xc2cc)
	ldr     r0, [r4, r0]
	bl      0x20203b8
	ldr     r0, [pc, #0x34] @ 0x21d14e4, (=0xc070)
	ldr     r0, [r4, r0]
	bl      0x200b3f0
	bl      0x201cba0
	ldr     r0, [pc, #0x2c] @ 0x21d14e8, (=0xc010)
	ldr     r0, [r4, r0]
	bl      0x20181c4
	mov     r0, #0x0
	mov     r1, r0
	bl      0x2017798
	mov     r0, r6
	bl      0x2006830
	mov     r0, r5
	bl      0x201807c
	ldr     r0, [pc, #0x14] @ 0x21d14ec, (=0x21bf6dc)
	mov     r1, #0x0
	strb    r1, [r0, #0x5]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x21d14de


.align 2


.word 0xc2cc @ 0x21d14e0
.word 0xc070 @ 0x21d14e4
.word 0xc010 @ 0x21d14e8
.word 0x21bf6dc @ 0x21d14ec
.thumb
Function_21d14f0: @ 21d14f0 :thumb
	push    {r4,lr}
	add     sp, #-0x28
	ldr     r4, [pc, #0x14] @ 0x21d150c, (=0x21d2a78)
	add     r3, sp, #0x0
	mov     r2, #0x5
.thumb
branch_21d14fa: @ 21d14fa :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d14fa
	add     r0, sp, #0x0
	bl      0x201fe94
	add     sp, #0x28
	pop     {r4,pc}
@ 0x21d150c

.word 0x21d2a78 @ 0x21d150c
.thumb
Function_21d1510: @ 21d1510 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	ldr     r4, [pc, #0x14] @ 0x21d152c, (=0x21d2948)
	add     r3, sp, #0x0
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      0x2018368
	add     sp, #0x10
	pop     {r4,pc}
@ 0x21d152c

.word 0x21d2948 @ 0x21d152c
.thumb
Function_21d1530: @ 21d1530 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	str     r0, [sp, #0x8]
	ldr     r1, [sp, #0x8]
	mov     r0, #0x66
	ldr     r1, [r1, #0x0]
	bl      0x2006c24
	ldr     r1, [sp, #0x8]
	mov     r2, #0x0
	str     r2, [r1, #0xc]
	str     r2, [sp, #0x0]
	add     r1, sp, #0x24
	str     r1, [sp, #0x4]
	ldr     r3, [sp, #0x8]
	mov     r1, #0x12
	ldr     r3, [r3, #0x0]
	str     r0, [sp, #0x1c]
	bl      0x2007250
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x24]
	mov     r1, #0x6
	blx 0x20e2178
	mov     r7, r0
	ldr     r0, [sp, #0x18]
	mov     r5, #0x1
	add     r4, r0, #0x6
	cmp     r7, #0x1
	ble     branch_21d15a2
	ldr     r6, [sp, #0x8]
	add     r6, #0xc
.thumb
branch_21d1572: @ 21d1572 :thumb
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x2
	beq     branch_21d159a
	lsl     r0, r5, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x8]
	mov     r2, #0x2
	mov     r3, #0x4
	mov     r1, r0
	ldsh    r2, [r4, r2]
	ldsh    r3, [r4, r3]
	ldr     r1, [r1, #0xc]
	bl      Function_21d1634
	ldr     r0, [r6, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r6, #0x0]
.thumb
branch_21d159a: @ 21d159a :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1da4 @ add r4, r4, #0x6
	cmp     r5, r7
	blt     branch_21d1572
.thumb
branch_21d15a2: @ 21d15a2 :thumb
	ldr     r0, [sp, #0x18]
	bl      0x20181c4
	mov     r7, #0x1
	bl      0x20996d0
	str     r0, [sp, #0x10]
	cmp     r0, #0x1
	ble     branch_21d162a
	ldr     r6, [sp, #0x8]
	add     r6, #0xc
.thumb
branch_21d15b8: @ 21d15b8 :thumb
	mov     r0, r7
	bl      0x2099764
	mov     r1, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	add     r0, sp, #0x20
	str     r0, [sp, #0x4]
	ldr     r3, [sp, #0x8]
	ldr     r0, [sp, #0x1c]
	ldr     r3, [r3, #0x0]
	mov     r2, #0x0
	bl      0x2007250
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x20]
	mov     r5, #0x1
	lsr     r0, r0, #2
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x14]
	add     r4, r0, #0x4
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x1
	ble     branch_21d161c
.thumb
branch_21d15e8: @ 21d15e8 :thumb
	mov     r0, r7
	bl      0x2099748
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x0]
	lsl     r0, r5, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x8]
	mov     r2, #0x0
	mov     r3, #0x2
	mov     r1, r0
	ldsh    r2, [r4, r2]
	ldsh    r3, [r4, r3]
	ldr     r1, [r1, #0xc]
	bl      Function_21d1634
	ldr     r0, [r6, #0x0]
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r6, #0x0]
	ldr     r0, [sp, #0xc]
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, r0
	blt     branch_21d15e8
.thumb
branch_21d161c: @ 21d161c :thumb
	ldr     r0, [sp, #0x14]
	bl      0x20181c4
	ldr     r0, [sp, #0x10]
	.hword  0x1c7f @ add r7, r7, #0x1
	cmp     r7, r0
	blt     branch_21d15b8
.thumb
branch_21d162a: @ 21d162a :thumb
	ldr     r0, [sp, #0x1c]
	bl      0x2006ca8
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x21d1634

.thumb
Function_21d1634: @ 21d1634 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	ldr     r5, [pc, #0x68] @ 0x21d16a4, (=0x21d2a30)
	mov     r7, r2
	mov     r6, r3
	mov     r4, r0
	mov     r12, r1
	add     r3, sp, #0xc
	mov     r2, #0x4
.thumb
branch_21d1646: @ 21d1646 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d1646
	ldr     r0, [r5, #0x0]
	mov     r1, #0x30
	str     r0, [r3, #0x0]
	mov     r0, r12
	mov     r5, r0
	mul     r5, r1
	add     r0, r4, r5
	strh    r7, [r0, #0x10]
	strh    r6, [r0, #0x12]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	add     r0, sp, #0xc
	add     r1, sp, #0x0
	str     r7, [sp, #0x0]
	str     r6, [sp, #0x4]
	bl      Function_21d23e8
	add     r3, r4, r5
	add     r6, sp, #0xc
	add     r3, #0x14
	mov     r2, #0x4
.thumb
branch_21d1678: @ 21d1678 :thumb
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d1678
	ldr     r0, [r6, #0x0]
	add     r2, sp, #0x38
	str     r0, [r3, #0x0]
	ldrh    r1, [r2, #0x10]
	ldrh    r2, [r2, #0x14]
	ldr     r0, [r4, #0x4]
	bl      0x202c8c8
	add     r2, r4, r5
	strh    r0, [r2, #0x38]
	add     r0, sp, #0x38
	ldrh    r1, [r0, #0x10]
	strh    r1, [r2, #0x3a]
	ldrh    r0, [r0, #0x14]
	strh    r0, [r2, #0x3c]
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x21d16a2


.align 2


.word 0x21d2a30 @ 0x21d16a4
.thumb
Function_21d16a8: @ 21d16a8 :thumb
	push    {r4-r7}
	ldr     r1, [r0, #0xc]
	mov     r4, #0x0
	cmp     r1, #0x0
	bls     branch_21d16e6
	ldr     r1, [pc, #0x38] @ 0x21d16ec, (=0xc318)
	mov     r5, r0
	mov     r3, #0x3
	.hword  0x1f0a @ sub r2, r1, #0x4
.thumb
branch_21d16ba: @ 21d16ba :thumb
	ldrh    r6, [r5, #0x3a]
	ldr     r7, [r0, r2]
	cmp     r7, r6
	bne     branch_21d16dc
	ldrh    r6, [r5, #0x3c]
	ldr     r7, [r0, r1]
	cmp     r7, r6
	bne     branch_21d16dc
	strh    r3, [r5, #0x38]
	mov     r6, #0x10
	ldsh    r7, [r5, r6]
	ldr     r6, [pc, #0x1c] @ 0x21d16f0, (=0xc2b4)
	str     r7, [r0, r6]
	mov     r6, #0x12
	ldsh    r7, [r5, r6]
	ldr     r6, [pc, #0x18] @ 0x21d16f4, (=0xc2b8)
	str     r7, [r0, r6]
.thumb
branch_21d16dc: @ 21d16dc :thumb
	ldr     r6, [r0, #0xc]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x30
	cmp     r4, r6
	bcc     branch_21d16ba
.thumb
branch_21d16e6: @ 21d16e6 :thumb
	pop     {r4-r7}
	bx      lr
@ 0x21d16ea


.align 2


.word 0xc318 @ 0x21d16ec
.word 0xc2b4 @ 0x21d16f0
.word 0xc2b8 @ 0x21d16f4
.thumb
Function_21d16f8: @ 21d16f8 :thumb
	ldr     r3, [pc, #0x0] @ 0x21d16fc, (=0x20996d5)
	bx      r3
@ 0x21d16fc

.word 0x20996d5 @ 0x21d16fc
.thumb
Function_21d1700: @ 21d1700 :thumb
	push    {r4,lr}
	add     sp, #-0x18
	mov     r4, r0
	ldr     r0, [pc, #0x100] @ 0x21d1808, (=0xc2f8)
	mov     r1, #0x0
	str     r1, [r4, r0]
	ldr     r1, [pc, #0xfc] @ 0x21d180c, (=0x21bf6bc)
	ldrh    r2, [r1, #0x20]
	cmp     r2, #0x0
	beq     branch_21d1762
	ldrh    r2, [r1, #0x1c]
	cmp     r2, #0xc8
	bcc     branch_21d1730
	cmp     r2, #0xf8
	bhi     branch_21d1730
	ldrh    r1, [r1, #0x1e]
	cmp     r1, #0xa8
	bcc     branch_21d1730
	cmp     r1, #0xb8
	bhi     branch_21d1730
	mov     r1, #0x2
	add     sp, #0x18
	str     r1, [r4, r0]
	pop     {r4,pc}
@ 0x21d1730

.thumb
branch_21d1730: @ 21d1730 :thumb
	ldr     r0, [pc, #0xdc] @ 0x21d1810, (=0xc2fc)
	mov     r2, #0x0
	mov     r1, r0
	str     r2, [r4, r0]
	add     r1, #0xc
	str     r2, [r4, r1]
	mov     r1, r0
	add     r1, #0x10
	str     r2, [r4, r1]
	mov     r1, r0
	add     r1, #0x14
	str     r2, [r4, r1]
	.hword  0x1f01 @ sub r1, r0, #0x4
	str     r2, [r4, r1]
	ldr     r2, [pc, #0xbc] @ 0x21d180c, (=0x21bf6bc)
	add     r1, r0, #0x4
	ldrh    r3, [r2, #0x1c]
	str     r3, [r4, r1]
	mov     r1, r0
	ldrh    r2, [r2, #0x1e]
	add     r1, #0x8
	add     r0, #0x14
	str     r2, [r4, r1]
	mov     r1, #0x4
	str     r1, [r4, r0]
.thumb
branch_21d1762: @ 21d1762 :thumb
	ldr     r0, [pc, #0xa8] @ 0x21d180c, (=0x21bf6bc)
	ldrh    r0, [r0, #0x22]
	cmp     r0, #0x0
	beq     branch_21d17de
	ldr     r1, [pc, #0xa4] @ 0x21d1810, (=0xc2fc)
	ldr     r2, [r4, r1]
	cmp     r2, #0x0
	beq     branch_21d177a
	cmp     r2, #0x1
	beq     branch_21d1796
	add     sp, #0x18
	pop     {r4,pc}
@ 0x21d177a

.thumb
branch_21d177a: @ 21d177a :thumb
	mov     r0, r1
	add     r0, #0x14
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_21d178a
	add     r0, r2, #0x1
	str     r0, [r4, r1]
	b       branch_21d1796
@ 0x21d178a

.thumb
branch_21d178a: @ 21d178a :thumb
	mov     r0, r1
	add     r0, #0x14
	ldr     r0, [r4, r0]
	add     r1, #0x14
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, r1]
.thumb
branch_21d1796: @ 21d1796 :thumb
	add     r0, sp, #0xc
	mov     r1, #0xc3
	str     r0, [sp, #0x0]
	add     r0, sp, #0x8
	lsl     r1, r1, #8
	str     r0, [sp, #0x4]
	ldr     r0, [r4, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r4, r1]
	add     r2, sp, #0x14
	add     r3, sp, #0x10
	bl      Function_21d1818
	ldr     r1, [sp, #0x14]
	ldr     r0, [sp, #0xc]
	orr     r0, r1
	ldr     r1, [pc, #0x50] @ 0x21d1808, (=0xc2f8)
	str     r0, [r4, r1]
	mov     r0, r1
	ldr     r2, [sp, #0x10]
	add     r0, #0x10
	str     r2, [r4, r0]
	ldr     r2, [sp, #0x8]
	mov     r0, r1
	add     r0, #0x14
	str     r2, [r4, r0]
	mov     r0, r1
	ldr     r2, [pc, #0x3c] @ 0x21d180c, (=0x21bf6bc)
	add     r0, #0x8
	ldrh    r3, [r2, #0x1c]
	add     r1, #0xc
	add     sp, #0x18
	str     r3, [r4, r0]
	ldrh    r0, [r2, #0x1e]
	str     r0, [r4, r1]
	pop     {r4,pc}
@ 0x21d17de

.thumb
branch_21d17de: @ 21d17de :thumb
	ldr     r0, [pc, #0x34] @ 0x21d1814, (=0xc310)
	ldr     r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_21d17ec
	mov     r1, #0x1
	sub     r0, #0x18
	str     r1, [r4, r0]
.thumb
branch_21d17ec: @ 21d17ec :thumb
	ldr     r1, [pc, #0x20] @ 0x21d1810, (=0xc2fc)
	mov     r2, #0x0
	mov     r0, r1
	str     r2, [r4, r1]
	add     r0, #0xc
	str     r2, [r4, r0]
	mov     r0, r1
	add     r0, #0x10
	str     r2, [r4, r0]
	add     r1, #0x14
	str     r2, [r4, r1]
	add     sp, #0x18
	pop     {r4,pc}
@ 0x21d1806


.align 2


.word 0xc2f8 @ 0x21d1808
.word 0x21bf6bc @ 0x21d180c
.word 0xc2fc @ 0x21d1810
.word 0xc310 @ 0x21d1814
.thumb
Function_21d1818: @ 21d1818 :thumb
	push    {r3-r7,lr}
	mov     lr, r0
	ldr     r0, [pc, #0x60] @ 0x21d1880, (=0x21bf6bc)
	mov     r12, r1
	ldrh    r5, [r0, #0x1c]
	mov     r1, #0x0
	mov     r7, r2
	mov     r6, r3
	ldr     r0, [pc, #0x58] @ 0x21d1884, (=0xffff)
	mov     r2, r1
	mov     r3, r1
	mov     r4, r1
	cmp     r5, r0
	beq     branch_21d1848
	mov     r0, lr
	sub     r3, r5, r0
	bpl     branch_21d1842
	.hword  0x1e48 @ sub r0, r1, #0x1
	eor     r3, r0
	mov     r1, #0x10
	b       branch_21d1848
@ 0x21d1842

.thumb
branch_21d1842: @ 21d1842 :thumb
	cmp     r3, #0x0
	ble     branch_21d1848
	mov     r1, #0x20
.thumb
branch_21d1848: @ 21d1848 :thumb
	str     r1, [r7, #0x0]
	mov     r1, #0x3f
	mov     r0, r3
	and     r0, r1
	str     r0, [r6, #0x0]
	ldr     r0, [pc, #0x2c] @ 0x21d1880, (=0x21bf6bc)
	ldrh    r3, [r0, #0x1e]
	ldr     r0, [pc, #0x2c] @ 0x21d1884, (=0xffff)
	cmp     r3, r0
	beq     branch_21d1870
	mov     r0, r12
	sub     r4, r3, r0
	bpl     branch_21d186a
	sub     r1, #0x40
	eor     r4, r1
	mov     r2, #0x80
	b       branch_21d1870
@ 0x21d186a

.thumb
branch_21d186a: @ 21d186a :thumb
	cmp     r4, #0x0
	ble     branch_21d1870
	mov     r2, #0x40
.thumb
branch_21d1870: @ 21d1870 :thumb
	ldr     r0, [sp, #0x18]
	mov     r1, r4
	str     r2, [r0, #0x0]
	mov     r0, #0x3f
	and     r1, r0
	ldr     r0, [sp, #0x1c]
	str     r1, [r0, #0x0]
	pop     {r3-r7,pc}
@ 0x21d1880

.word 0x21bf6bc @ 0x21d1880
.word 0xffff @ 0x21d1884
.thumb
Function_21d1888: @ 21d1888 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	mov     r4, r0
	ldr     r0, [pc, #0x254] @ 0x21d1ae4, (=0xc010)
	ldr     r2, [pc, #0x254] @ 0x21d1ae8, (=0x21d2970)
	mov     r5, r1
	ldr     r0, [r4, r0]
	mov     r1, #0x6
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r0, [pc, #0x244] @ 0x21d1ae4, (=0xc010)
	mov     r1, #0x6
	ldr     r0, [r4, r0]
	bl      0x2019ebc
	ldr     r0, [pc, #0x238] @ 0x21d1ae4, (=0xc010)
	ldr     r2, [pc, #0x240] @ 0x21d1aec, (=0x21d298c)
	ldr     r0, [r4, r0]
	mov     r1, #0x7
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	ldr     r2, [pc, #0x220] @ 0x21d1ae4, (=0xc010)
	str     r0, [sp, #0xc]
	ldr     r2, [r4, r2]
	mov     r0, r5
	mov     r1, #0x5
	mov     r3, #0x7
	bl      0x20070e8
	mov     r0, #0x80
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x6
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, #0x4
	mov     r3, #0x0
	bl      0x2007130
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x7
	str     r0, [sp, #0xc]
	ldr     r2, [pc, #0x1f0] @ 0x21d1ae4, (=0xc010)
	mov     r0, r5
	ldr     r2, [r4, r2]
	mov     r3, r1
	bl      0x200710c
	ldr     r0, [r4, #0x8]
	bl      0x2027b50
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x6
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1d0] @ 0x21d1ae4, (=0xc010)
	ldr     r2, [pc, #0x1dc] @ 0x21d1af0, (=0x1e2)
	ldr     r0, [r4, r0]
	mov     r3, r1
	bl      0x200dd0c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	ldr     r2, [pc, #0x1d0] @ 0x21d1af4, (=0x1d9)
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1bc] @ 0x21d1ae4, (=0xc010)
	mov     r1, #0x6
	ldr     r0, [r4, r0]
	mov     r3, #0x7
	bl      0x200daa4
	ldr     r2, [r4, #0x0]
	mov     r0, #0x4
	mov     r1, #0x80
	bl      0x2002e7c
	ldr     r3, [r4, #0x0]
	mov     r0, #0x6
	mov     r1, #0x20
	mov     r2, #0x0
	bl      0x2019690
	ldr     r1, [pc, #0x1ac] @ 0x21d1af8, (=0x4753)
	mov     r0, #0x6
	bl      0x201975c
	ldr     r1, [pc, #0x190] @ 0x21d1ae4, (=0xc010)
	ldr     r2, [pc, #0x1a8] @ 0x21d1afc, (=0x21d2934)
	ldr     r0, [r4, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	add     r1, r4, r1
	bl      0x201a8d4
	mov     r0, #0xd8
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x198] @ 0x21d1b00, (=0xc014)
	mov     r2, #0x0
	add     r0, r4, r0
	mov     r1, #0xf
	mov     r3, r2
	bl      0x201ae78
	ldr     r0, [pc, #0x188] @ 0x21d1b00, (=0xc014)
	ldr     r2, [pc, #0x178] @ 0x21d1af0, (=0x1e2)
	add     r0, r4, r0
	mov     r1, #0x0
	mov     r3, #0x6
	bl      0x200e060
	ldr     r0, [pc, #0x180] @ 0x21d1b04, (=0xc064)
	mov     r3, #0x0
	str     r3, [r4, r0]
	sub     r0, #0x54
	ldr     r0, [r4, r0]
	ldr     r2, [pc, #0x158] @ 0x21d1ae8, (=0x21d2970)
	mov     r1, #0x2
	bl      0x20183c4
	ldr     r0, [pc, #0x14c] @ 0x21d1ae4, (=0xc010)
	mov     r1, #0x2
	ldr     r0, [r4, r0]
	bl      0x2019ebc
	ldr     r0, [pc, #0x144] @ 0x21d1ae4, (=0xc010)
	ldr     r2, [pc, #0x148] @ 0x21d1aec, (=0x21d298c)
	ldr     r0, [r4, r0]
	mov     r1, #0x3
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	ldr     r2, [pc, #0x12c] @ 0x21d1ae4, (=0xc010)
	str     r0, [sp, #0xc]
	ldr     r2, [r4, r2]
	mov     r0, r5
	mov     r1, #0x5
	mov     r3, #0x3
	bl      0x20070e8
	mov     r0, #0x80
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	mov     r2, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x6
	mov     r3, r2
	bl      0x2007130
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	ldr     r2, [pc, #0xfc] @ 0x21d1ae4, (=0xc010)
	str     r0, [sp, #0xc]
	ldr     r2, [r4, r2]
	mov     r0, r5
	mov     r1, #0x7
	mov     r3, #0x3
	bl      0x200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	ldr     r2, [pc, #0xf8] @ 0x21d1af4, (=0x1d9)
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xe4] @ 0x21d1ae4, (=0xc010)
	mov     r1, #0x2
	ldr     r0, [r4, r0]
	mov     r3, #0x7
	bl      0x200daa4
	ldr     r2, [r4, #0x0]
	mov     r0, #0x0
	mov     r1, #0x80
	bl      0x2002e7c
	ldr     r3, [r4, #0x0]
	mov     r0, #0x2
	mov     r1, #0x20
	mov     r2, #0x0
	bl      0x2019690
	mov     r0, #0x2
	mov     r1, #0x0
	bl      0x201975c
	ldr     r1, [r4, #0x0]
	mov     r0, #0x10
	bl      0x2023790
	mov     r5, r0
	ldr     r1, [r4, #0x0]
	mov     r0, #0x2
	bl      0x2002bb8
	ldr     r1, [pc, #0xcc] @ 0x21d1b08, (=0x4e56)
	add     r0, sp, #0x10
	strh    r1, [r0, #0x6]
	ldr     r1, [pc, #0xc8] @ 0x21d1b0c, (=0x3571)
	mov     r3, #0x82
	strh    r1, [r0, #0x4]
	ldr     r1, [pc, #0xc8] @ 0x21d1b10, (=0x208c)
	strh    r1, [r0, #0x2]
	ldr     r1, [pc, #0xc8] @ 0x21d1b14, (=0x7fff)
	strh    r1, [r0, #0x0]
	mov     r0, #0x2
	add     r1, sp, #0x14
	add     r1, #0x2
	mov     r2, r0
	bl      0x201972c
	mov     r0, #0x2
	add     r1, sp, #0x14
	mov     r2, r0
	mov     r3, #0x84
	bl      0x201972c
	mov     r0, #0x2
	add     r1, sp, #0x10
	add     r1, #0x2
	mov     r2, r0
	mov     r3, #0x86
	bl      0x201972c
	mov     r0, #0x2
	add     r1, sp, #0x10
	mov     r2, r0
	mov     r3, #0x9e
	bl      0x201972c
	ldr     r1, [pc, #0x60] @ 0x21d1ae4, (=0xc010)
	ldr     r2, [pc, #0x94] @ 0x21d1b18, (=0x21d2924)
	ldr     r0, [r4, r1]
	add     r1, #0x24
	add     r1, r4, r1
	bl      0x201a8d4
	mov     r0, #0xd8
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x84] @ 0x21d1b1c, (=0xc034)
	mov     r2, #0x0
	add     r0, r4, r0
	mov     r1, #0xf
	mov     r3, r2
	bl      0x201ae78
	ldr     r0, [pc, #0x78] @ 0x21d1b20, (=0xc060)
	mov     r1, #0xc
	ldr     r0, [r4, r0]
	mov     r2, r5
	bl      0x200b1b8
	mov     r0, #0x2
	mov     r1, r5
	mov     r2, #0x0
	mov     r3, #0x30
	bl      0x2002eec
	mov     r1, #0x0
	mov     r3, r0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x54] @ 0x21d1b1c, (=0xc034)
	str     r1, [sp, #0x8]
	add     r0, r4, r0
	mov     r1, #0x2
	mov     r2, r5
	bl      0x201d738
	mov     r0, r5
	bl      0x20237bc
	mov     r0, #0x2
	bl      0x2002c60
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x21d1ae4

.word 0xc010 @ 0x21d1ae4
.word 0x21d2970 @ 0x21d1ae8
.word 0x21d298c @ 0x21d1aec
.word 0x1e2 @ 0x21d1af0
.word 0x1d9 @ 0x21d1af4
.word 0x4753 @ 0x21d1af8
.word 0x21d2934 @ 0x21d1afc
.word 0xc014 @ 0x21d1b00
.word 0xc064 @ 0x21d1b04
.word 0x4e56 @ 0x21d1b08
.word 0x3571 @ 0x21d1b0c
.word 0x208c @ 0x21d1b10
.word 0x7fff @ 0x21d1b14
.word 0x21d2924 @ 0x21d1b18
.word 0xc034 @ 0x21d1b1c
.word 0xc060 @ 0x21d1b20
.thumb
Function_21d1b24: @ 21d1b24 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x38] @ 0x21d1b64, (=0xc034)
	add     r0, r4, r0
	bl      0x201a8fc
	ldr     r0, [pc, #0x34] @ 0x21d1b68, (=0xc014)
	add     r0, r4, r0
	bl      0x201a8fc
	ldr     r0, [pc, #0x30] @ 0x21d1b6c, (=0xc010)
	mov     r1, #0x2
	ldr     r0, [r4, r0]
	bl      0x2019044
	ldr     r0, [pc, #0x28] @ 0x21d1b6c, (=0xc010)
	mov     r1, #0x6
	ldr     r0, [r4, r0]
	bl      0x2019044
	ldr     r0, [pc, #0x1c] @ 0x21d1b6c, (=0xc010)
	mov     r1, #0x3
	ldr     r0, [r4, r0]
	bl      0x2019044
	ldr     r0, [pc, #0x14] @ 0x21d1b6c, (=0xc010)
	mov     r1, #0x7
	ldr     r0, [r4, r0]
	bl      0x2019044
	pop     {r4,pc}
@ 0x21d1b62


.align 2


.word 0xc034 @ 0x21d1b64
.word 0xc014 @ 0x21d1b68
.word 0xc010 @ 0x21d1b6c
.thumb
Function_21d1b70: @ 21d1b70 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [pc, #0xac] @ 0x21d1c24, (=0xc064)
	mov     r6, r1
	ldr     r1, [r5, r0]
	mov     r4, #0x0
	cmp     r1, #0x0
	beq     branch_21d1b8c
	cmp     r1, #0x1
	beq     branch_21d1be6
	cmp     r1, #0x2
	beq     branch_21d1c06
	b       branch_21d1c1c
@ 0x21d1b8c

.thumb
branch_21d1b8c: @ 21d1b8c :thumb
	mov     r1, #0xd8
	str     r1, [sp, #0x0]
	mov     r1, #0x20
	sub     r0, #0x50
	str     r1, [sp, #0x4]
	add     r0, r5, r0
	mov     r1, #0xf
	mov     r2, r4
	mov     r3, r4
	bl      0x201ae78
	mov     r0, #0x1
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #10
	bl      0x2023790
	ldr     r2, [pc, #0x78] @ 0x21d1c28, (=0xc06c)
	mov     r1, r6
	str     r0, [r5, r2]
	mov     r0, r2
	sub     r0, #0xc
	ldr     r0, [r5, r0]
	ldr     r2, [r5, r2]
	bl      0x200b1b8
	ldr     r0, [r5, #0x8]
	bl      0x2027ac0
	mov     r3, r4
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r2, [pc, #0x60] @ 0x21d1c2c, (=0xc014)
	str     r3, [sp, #0x8]
	add     r0, r5, r2
	add     r2, #0x58
	ldr     r2, [r5, r2]
	mov     r1, #0x1
	bl      0x201d738
	ldr     r1, [pc, #0x54] @ 0x21d1c30, (=0xc068)
	mov     r2, #0x1
	str     r0, [r5, r1]
	.hword  0x1f08 @ sub r0, r1, #0x4
	str     r2, [r5, r0]
	b       branch_21d1c1c
@ 0x21d1be6

.thumb
branch_21d1be6: @ 21d1be6 :thumb
	.hword  0x1d00 @ add r0, r0, #0x4
	ldr     r0, [r5, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d724
	cmp     r0, #0x0
	bne     branch_21d1c1c
	ldr     r0, [pc, #0x30] @ 0x21d1c28, (=0xc06c)
	ldr     r0, [r5, r0]
	bl      0x20237bc
	ldr     r0, [pc, #0x24] @ 0x21d1c24, (=0xc064)
	mov     r1, #0x2
	str     r1, [r5, r0]
	b       branch_21d1c1c
@ 0x21d1c06

.thumb
branch_21d1c06: @ 21d1c06 :thumb
	cmp     r2, #0x0
	bne     branch_21d1c14
	ldr     r0, [pc, #0x28] @ 0x21d1c34, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_21d1c1c
.thumb
branch_21d1c14: @ 21d1c14 :thumb
	ldr     r0, [pc, #0xc] @ 0x21d1c24, (=0xc064)
	mov     r1, #0x0
	str     r1, [r5, r0]
	mov     r4, #0x1
.thumb
branch_21d1c1c: @ 21d1c1c :thumb
	mov     r0, r4
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x21d1c22


.align 2


.word 0xc064 @ 0x21d1c24
.word 0xc06c @ 0x21d1c28
.word 0xc014 @ 0x21d1c2c
.word 0xc068 @ 0x21d1c30
.word 0x21bf67c @ 0x21d1c34
.thumb
Function_21d1c38: @ 21d1c38 :thumb
	push    {r3,lr}
	cmp     r2, #0x0
	bne     branch_21d1c44
	ldr     r0, [pc, #0x8] @ 0x21d1c48, (=0x5dc)
	bl      0x2005748
.thumb
branch_21d1c44: @ 21d1c44 :thumb
	pop     {r3,pc}
@ 0x21d1c46


.align 2


.word 0x5dc @ 0x21d1c48
.thumb
Function_21d1c4c: @ 21d1c4c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r5, r0
	ldr     r0, [pc, #0x88] @ 0x21d1cdc, (=0xc010)
	mov     r6, r3
	ldr     r0, [r5, r0]
	str     r1, [sp, #0x0]
	bl      0x201a8d4
	ldrh    r0, [r6, #0x10]
	ldr     r1, [r5, #0x0]
	bl      0x2013a04
	ldr     r1, [pc, #0x78] @ 0x21d1ce0, (=0xc058)
	mov     r7, #0x0
	str     r0, [r5, r1]
	ldrh    r0, [r6, #0x10]
	cmp     r0, #0x0
	ble     branch_21d1c8e
	ldr     r4, [sp, #0x38]
.thumb
branch_21d1c74: @ 21d1c74 :thumb
	ldr     r0, [pc, #0x68] @ 0x21d1ce0, (=0xc058)
	ldr     r1, [pc, #0x6c] @ 0x21d1ce4, (=0xc060)
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	ldr     r2, [r4, #0x0]
	ldr     r3, [r4, #0x4]
	bl      0x2013a4c
	ldrh    r0, [r6, #0x10]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r4, #0x8
	cmp     r7, r0
	blt     branch_21d1c74
.thumb
branch_21d1c8e: @ 21d1c8e :thumb
	add     r3, sp, #0x4
	mov     r2, r3
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [pc, #0x3c] @ 0x21d1ce0, (=0xc058)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x38] @ 0x21d1ce8, (=0x21d1c39)
	str     r0, [sp, #0x8]
	ldr     r3, [r5, #0x0]
	mov     r0, r2
	lsl     r3, r3, #24
	mov     r2, r1
	lsr     r3, r3, #24
	bl      0x200112c
	ldr     r1, [pc, #0x28] @ 0x21d1cec, (=0xc054)
	ldr     r2, [pc, #0x2c] @ 0x21d1cf0, (=0x1d9)
	str     r0, [r5, r1]
	ldr     r0, [sp, #0x10]
	mov     r1, #0x1
	mov     r3, #0x7
	bl      0x200dc48
	ldr     r0, [sp, #0x0]
	bl      0x201a954
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x21d1cda


.align 2


.word 0xc010 @ 0x21d1cdc
.word 0xc058 @ 0x21d1ce0
.word 0xc060 @ 0x21d1ce4
.word 0x21d1c39 @ 0x21d1ce8
.word 0xc054 @ 0x21d1cec
.word 0x1d9 @ 0x21d1cf0
.thumb
Function_21d1cf4: @ 21d1cf4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x2c
	mov     r5, r0
	ldr     r0, [pc, #0xa4] @ 0x21d1da0, (=0xc010)
	str     r1, [sp, #0x0]
	ldr     r0, [r5, r0]
	str     r3, [sp, #0x4]
	ldr     r7, [sp, #0x44]
	ldr     r6, [sp, #0x48]
	bl      0x201a8d4
	ldr     r2, [sp, #0x40]
	ldr     r3, [r5, #0x0]
	mov     r0, #0x0
	mov     r1, #0x1a
	bl      0x200b144
	str     r0, [sp, #0x8]
	ldr     r1, [r5, #0x0]
	mov     r0, r6
	bl      0x2013a04
	ldr     r1, [pc, #0x80] @ 0x21d1da4, (=0xc058)
	mov     r4, #0x0
	str     r0, [r5, r1]
	cmp     r6, #0x0
	bls     branch_21d1d3e
.thumb
branch_21d1d2a: @ 21d1d2a :thumb
	ldr     r0, [pc, #0x78] @ 0x21d1da4, (=0xc058)
	ldrb    r2, [r7, r4]
	ldr     r0, [r5, r0]
	ldr     r1, [sp, #0x8]
	mov     r3, r4
	bl      0x2013a4c
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r6
	bcc     branch_21d1d2a
.thumb
branch_21d1d3e: @ 21d1d3e :thumb
	ldr     r0, [sp, #0x8]
	bl      0x200b190
	ldr     r4, [sp, #0x4]
	add     r3, sp, #0xc
	ldmia   r4!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	str     r4, [sp, #0x4]
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	str     r4, [sp, #0x4]
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	str     r4, [sp, #0x4]
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [pc, #0x40] @ 0x21d1da4, (=0xc058)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	str     r4, [sp, #0x4]
	str     r0, [sp, #0xc]
	add     r0, sp, #0xc
	strh    r6, [r0, #0x10]
	ldr     r0, [sp, #0x0]
	str     r0, [sp, #0x18]
	ldr     r0, [pc, #0x34] @ 0x21d1da8, (=0x21d1c39)
	str     r0, [sp, #0x10]
	ldr     r3, [r5, #0x0]
	mov     r0, r2
	lsl     r3, r3, #24
	mov     r2, r1
	lsr     r3, r3, #24
	bl      0x200112c
	ldr     r1, [pc, #0x24] @ 0x21d1dac, (=0xc054)
	ldr     r2, [pc, #0x28] @ 0x21d1db0, (=0x1d9)
	str     r0, [r5, r1]
	ldr     r0, [sp, #0x18]
	mov     r1, #0x1
	mov     r3, #0x7
	bl      0x200dc48
	ldr     r0, [sp, #0x0]
	bl      0x201a954
	add     sp, #0x2c
	pop     {r4-r7,pc}
@ 0x21d1d9e


.align 2


.word 0xc010 @ 0x21d1da0
.word 0xc058 @ 0x21d1da4
.word 0x21d1c39 @ 0x21d1da8
.word 0xc054 @ 0x21d1dac
.word 0x1d9 @ 0x21d1db0
.thumb
Function_21d1db4: @ 21d1db4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x24] @ 0x21d1de0, (=0xc024)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      0x200dc9c
	ldr     r0, [pc, #0x1c] @ 0x21d1de0, (=0xc024)
	add     r0, r4, r0
	bl      0x201a8fc
	ldr     r0, [pc, #0x18] @ 0x21d1de4, (=0xc054)
	mov     r1, #0x0
	ldr     r0, [r4, r0]
	mov     r2, r1
	bl      0x2001384
	ldr     r0, [pc, #0x10] @ 0x21d1de8, (=0xc058)
	ldr     r0, [r4, r0]
	bl      0x2013a3c
	pop     {r4,pc}
@ 0x21d1de0

.word 0xc024 @ 0x21d1de0
.word 0xc054 @ 0x21d1de4
.word 0xc058 @ 0x21d1de8
.thumb
Function_21d1dec: @ 21d1dec :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r0, #0x1
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #10
	bl      0x2023790
	mov     r4, r0
	mov     r0, #0x1
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #10
	bl      0x2023790
	ldr     r1, [pc, #0x94] @ 0x21d1ea0, (=0xc010)
	mov     r6, r0
	ldr     r0, [r5, r1]
	add     r1, #0x34
	ldr     r2, [pc, #0x90] @ 0x21d1ea4, (=0x21d291c)
	add     r1, r5, r1
	bl      0x201a8d4
	mov     r0, #0xd8
	str     r0, [sp, #0x0]
	mov     r0, #0x30
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x84] @ 0x21d1ea8, (=0xc044)
	mov     r2, #0x0
	add     r0, r5, r0
	mov     r1, #0xf
	mov     r3, r2
	bl      0x201ae78
	ldr     r0, [pc, #0x78] @ 0x21d1ea8, (=0xc044)
	ldr     r2, [pc, #0x78] @ 0x21d1eac, (=0x1d9)
	add     r0, r5, r0
	mov     r1, #0x0
	mov     r3, #0x7
	bl      0x200dc48
	ldr     r0, [pc, #0x70] @ 0x21d1eb0, (=0xc070)
	ldr     r2, [pc, #0x74] @ 0x21d1eb4, (=0xc314)
	ldr     r0, [r5, r0]
	ldr     r2, [r5, r2]
	mov     r1, #0x0
	bl      0x200bdd0
	ldr     r3, [pc, #0x68] @ 0x21d1eb4, (=0xc314)
	ldr     r0, [pc, #0x60] @ 0x21d1eb0, (=0xc070)
	ldr     r2, [r5, r3]
	.hword  0x1d1b @ add r3, r3, #0x4
	ldr     r0, [r5, r0]
	ldr     r3, [r5, r3]
	mov     r1, #0x1
	bl      0x200be08
	ldr     r0, [pc, #0x58] @ 0x21d1eb8, (=0xc060)
	mov     r1, #0xd
	ldr     r0, [r5, r0]
	mov     r2, r6
	bl      0x200b1b8
	ldr     r0, [pc, #0x44] @ 0x21d1eb0, (=0xc070)
	mov     r1, r4
	ldr     r0, [r5, r0]
	mov     r2, r6
	bl      0x200c388
	mov     r1, #0x0
	ldr     r0, [pc, #0x30] @ 0x21d1ea8, (=0xc044)
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	add     r0, r5, r0
	mov     r2, r4
	mov     r3, r1
	str     r1, [sp, #0x8]
	bl      0x201d738
	mov     r0, r6
	bl      0x20237bc
	mov     r0, r4
	bl      0x20237bc
	ldr     r0, [pc, #0x10] @ 0x21d1ea8, (=0xc044)
	add     r0, r5, r0
	bl      0x201a954
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x21d1ea0

.word 0xc010 @ 0x21d1ea0
.word 0x21d291c @ 0x21d1ea4
.word 0xc044 @ 0x21d1ea8
.word 0x1d9 @ 0x21d1eac
.word 0xc070 @ 0x21d1eb0
.word 0xc314 @ 0x21d1eb4
.word 0xc060 @ 0x21d1eb8
.thumb
Function_21d1ebc: @ 21d1ebc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	str     r1, [sp, #0xc]
	ldr     r1, [r5, #0x0]
	mov     r0, #0x40
	mov     r4, r2
	bl      0x2023790
	mov     r7, r0
	ldr     r1, [r5, #0x0]
	mov     r0, #0x40
	bl      0x2023790
	ldr     r1, [pc, #0x88] @ 0x21d1f64, (=0xc010)
	mov     r6, r0
	ldr     r0, [r5, r1]
	add     r1, #0x34
	ldr     r2, [pc, #0x84] @ 0x21d1f68, (=0x21d291c)
	add     r1, r5, r1
	bl      0x201a8d4
	mov     r0, #0xd8
	str     r0, [sp, #0x0]
	mov     r0, #0x30
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x78] @ 0x21d1f6c, (=0xc044)
	mov     r2, #0x0
	add     r0, r5, r0
	mov     r1, #0xf
	mov     r3, r2
	bl      0x201ae78
	ldr     r0, [pc, #0x6c] @ 0x21d1f6c, (=0xc044)
	ldr     r2, [pc, #0x6c] @ 0x21d1f70, (=0x1d9)
	add     r0, r5, r0
	mov     r1, #0x0
	mov     r3, #0x7
	bl      0x200dc48
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0xc]
	mov     r2, r7
	mov     r3, r6
	bl      Function_21d27e8
	cmp     r4, #0x0
	beq     branch_21d1f38
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r1, #0x0
	ldr     r0, [pc, #0x40] @ 0x21d1f6c, (=0xc044)
	mov     r2, r6
	add     r0, r5, r0
	mov     r3, r1
	str     r1, [sp, #0x8]
	bl      0x201d738
.thumb
branch_21d1f38: @ 21d1f38 :thumb
	mov     r1, #0x0
	ldr     r0, [pc, #0x30] @ 0x21d1f6c, (=0xc044)
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	add     r0, r5, r0
	mov     r2, r7
	mov     r3, r1
	str     r1, [sp, #0x8]
	bl      0x201d738
	mov     r0, r6
	bl      0x20237bc
	mov     r0, r7
	bl      0x20237bc
	ldr     r0, [pc, #0x10] @ 0x21d1f6c, (=0xc044)
	add     r0, r5, r0
	bl      0x201a954
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d1f64

.word 0xc010 @ 0x21d1f64
.word 0x21d291c @ 0x21d1f68
.word 0xc044 @ 0x21d1f6c
.word 0x1d9 @ 0x21d1f70
.thumb
Function_21d1f74: @ 21d1f74 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x10] @ 0x21d1f8c, (=0xc044)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      0x200dc9c
	ldr     r0, [pc, #0x8] @ 0x21d1f8c, (=0xc044)
	add     r0, r4, r0
	bl      0x201a8fc
	pop     {r4,pc}
@ 0x21d1f8c

.word 0xc044 @ 0x21d1f8c
.thumb
Function_21d1f90: @ 21d1f90 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x38
	mov     r5, r0
	ldr     r0, [pc, #0x1a8] @ 0x21d2140, (=0xc328)
	ldr     r1, [r5, r0]
	cmp     r1, #0x0
	bne     branch_21d1fea
	mov     r0, #0x1
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #10
	bl      0x2023790
	mov     r4, r0
	mov     r0, #0xd8
	str     r0, [sp, #0x0]
	mov     r0, #0x30
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x190] @ 0x21d2144, (=0xc014)
	mov     r2, #0x0
	add     r0, r5, r0
	mov     r1, #0xf
	mov     r3, r2
	bl      0x201ae78
	ldr     r0, [pc, #0x184] @ 0x21d2148, (=0xc060)
	mov     r1, #0xe
	ldr     r0, [r5, r0]
	mov     r2, r4
	bl      0x200b1b8
	mov     r3, #0x0
	ldr     r0, [pc, #0x174] @ 0x21d2144, (=0xc014)
	str     r3, [sp, #0x0]
	str     r3, [sp, #0x4]
	add     r0, r5, r0
	mov     r1, #0x1
	mov     r2, r4
	str     r3, [sp, #0x8]
	bl      0x201d738
	mov     r0, r4
	bl      0x20237bc
	add     sp, #0x38
	pop     {r3-r7,pc}
@ 0x21d1fea

.thumb
branch_21d1fea: @ 21d1fea :thumb
	mov     r1, #0x0
	str     r1, [sp, #0x24]
	mov     r1, r0
	sub     r1, #0x74
	ldr     r1, [r5, r1]
	mov     r7, #0x1
	mov     r2, r1
	sub     r2, #0x80
	lsl     r2, r2, #16
	asr     r2, r2, #16
	str     r2, [sp, #0x20]
	mov     r2, r1
	add     r2, #0x80
	lsl     r2, r2, #16
	asr     r2, r2, #16
	str     r2, [sp, #0x1c]
	mov     r2, r0
	sub     r2, #0x70
	ldr     r3, [r5, r2]
	sub     r0, #0x70
	mov     r2, r3
	sub     r2, #0x80
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     r3, #0x80
	str     r2, [sp, #0x18]
	lsl     r2, r3, #16
	asr     r2, r2, #16
	str     r2, [sp, #0x14]
	ldr     r2, [r5, #0xc]
	lsl     r7, r7, #8
	str     r1, [sp, #0x30]
	ldr     r0, [r5, r0]
	str     r2, [sp, #0x10]
	str     r0, [sp, #0x34]
	add     r0, sp, #0x30
	bl      Function_21d2868
	ldr     r1, [r5, #0xc]
	mov     r6, #0x0
	cmp     r1, #0x0
	bls     branch_21d208e
	mov     r4, r5
.thumb
branch_21d2040: @ 21d2040 :thumb
	mov     r0, #0x10
	ldsh    r1, [r4, r0]
	ldr     r0, [sp, #0x20]
	cmp     r1, r0
	ble     branch_21d2084
	ldr     r0, [sp, #0x1c]
	cmp     r1, r0
	bge     branch_21d2084
	mov     r0, #0x12
	ldsh    r0, [r4, r0]
	ldr     r2, [sp, #0x18]
	cmp     r0, r2
	ble     branch_21d2084
	ldr     r2, [sp, #0x14]
	cmp     r0, r2
	bge     branch_21d2084
	ldrh    r0, [r4, #0x38]
	cmp     r0, #0x0
	beq     branch_21d2084
	str     r1, [sp, #0x28]
	mov     r0, #0x12
	ldsh    r0, [r4, r0]
	str     r0, [sp, #0x2c]
	add     r0, sp, #0x28
	bl      Function_21d2868
	add     r0, sp, #0x30
	add     r1, sp, #0x28
	bl      Function_21d28c0
	cmp     r0, r7
	bcs     branch_21d2084
	mov     r7, r0
	str     r6, [sp, #0x10]
.thumb
branch_21d2084: @ 21d2084 :thumb
	ldr     r1, [r5, #0xc]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x30
	cmp     r6, r1
	bcc     branch_21d2040
.thumb
branch_21d208e: @ 21d208e :thumb
	ldr     r0, [sp, #0x10]
	cmp     r0, r1
	beq     branch_21d2130
	ldr     r1, [r5, #0x0]
	mov     r0, #0x40
	bl      0x2023790
	str     r0, [sp, #0xc]
	ldr     r1, [r5, #0x0]
	mov     r0, #0x40
	bl      0x2023790
	mov     r7, r0
	mov     r0, #0xd8
	str     r0, [sp, #0x0]
	mov     r0, #0x30
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x90] @ 0x21d2144, (=0xc014)
	mov     r2, #0x0
	add     r0, r5, r0
	mov     r1, #0xf
	mov     r3, r2
	bl      0x201ae78
	ldr     r0, [sp, #0x10]
	mov     r6, r5
	mov     r4, r0
	mov     r1, #0x30
	ldr     r0, [r5, #0x0]
	mul     r4, r1
	str     r0, [sp, #0x0]
	add     r6, #0x3c
	add     r0, r5, r4
	ldrh    r0, [r0, #0x3a]
	ldrh    r1, [r6, r4]
	ldr     r2, [sp, #0xc]
	mov     r3, r7
	bl      Function_21d27e8
	ldrh    r0, [r6, r4]
	cmp     r0, #0x0
	beq     branch_21d20fa
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x58] @ 0x21d2144, (=0xc014)
	mov     r3, #0x0
	add     r0, r5, r0
	mov     r1, #0x1
	mov     r2, r7
	str     r3, [sp, #0x8]
	bl      0x201d738
.thumb
branch_21d20fa: @ 21d20fa :thumb
	mov     r3, #0x0
	ldr     r0, [pc, #0x44] @ 0x21d2144, (=0xc014)
	str     r3, [sp, #0x0]
	str     r3, [sp, #0x4]
	ldr     r2, [sp, #0xc]
	add     r0, r5, r0
	mov     r1, #0x1
	str     r3, [sp, #0x8]
	bl      0x201d738
	mov     r0, r7
	bl      0x20237bc
	ldr     r0, [sp, #0xc]
	bl      0x20237bc
	add     r2, r5, r4
	mov     r0, #0x10
	ldsh    r1, [r2, r0]
	ldr     r0, [pc, #0x28] @ 0x21d214c, (=0xc2b4)
	str     r1, [r5, r0]
	mov     r1, #0x12
	ldsh    r1, [r2, r1]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r5, r0]
	mov     r0, #0x1
	str     r0, [sp, #0x24]
.thumb
branch_21d2130: @ 21d2130 :thumb
	ldr     r0, [sp, #0x24]
	cmp     r0, #0x0
	bne     branch_21d213c
	ldr     r0, [pc, #0x8] @ 0x21d2140, (=0xc328)
	mov     r1, #0x0
	str     r1, [r5, r0]
.thumb
branch_21d213c: @ 21d213c :thumb
	add     sp, #0x38
	pop     {r3-r7,pc}
@ 0x21d2140

.word 0xc328 @ 0x21d2140
.word 0xc014 @ 0x21d2144
.word 0xc060 @ 0x21d2148
.word 0xc2b4 @ 0x21d214c
.thumb
Function_21d2150: @ 21d2150 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	ldr     r2, [r5, #0x0]
	mov     r0, r4
	mov     r1, #0x0
	bl      0x2006cb8
	ldr     r2, [pc, #0x90] @ 0x21d21f4, (=0xc0cc)
	str     r0, [r5, r2]
	mov     r0, r2
	.hword  0x1f11 @ sub r1, r2, #0x4
	sub     r0, #0x58
	add     r0, r5, r0
	add     r1, r5, r1
	add     r2, r5, r2
	bl      0x201ca3c
	ldr     r2, [r5, #0x0]
	mov     r0, r4
	mov     r1, #0x1
	bl      0x2006cb8
	ldr     r2, [pc, #0x78] @ 0x21d21f8, (=0xc294)
	str     r0, [r5, r2]
	mov     r0, r2
	mov     r1, r2
	sub     r0, #0xc8
	sub     r1, #0x14
	add     r0, r5, r0
	add     r1, r5, r1
	add     r2, r5, r2
	bl      0x201ca3c
	ldr     r2, [r5, #0x0]
	mov     r0, r4
	mov     r1, #0x2
	bl      0x2006cb8
	ldr     r2, [pc, #0x5c] @ 0x21d21fc, (=0xc298)
	str     r0, [r5, r2]
	mov     r0, r2
	mov     r1, r2
	sub     r0, #0x78
	sub     r1, #0x14
	add     r0, r5, r0
	add     r1, r5, r1
	add     r2, r5, r2
	bl      0x201ca3c
	ldr     r2, [r5, #0x0]
	mov     r0, r4
	mov     r1, #0x3
	bl      0x2006cb8
	ldr     r2, [pc, #0x40] @ 0x21d2200, (=0xc28c)
	str     r0, [r5, r2]
	mov     r1, r2
	ldr     r0, [pc, #0x3c] @ 0x21d2204, (=0xc124)
	sub     r1, #0x14
	add     r0, r5, r0
	add     r1, r5, r1
	add     r2, r5, r2
	bl      0x201ca3c
	ldr     r2, [r5, #0x0]
	mov     r0, r4
	mov     r1, #0x4
	bl      0x2006cb8
	ldr     r2, [pc, #0x28] @ 0x21d2208, (=0xc290)
	str     r0, [r5, r2]
	mov     r1, r2
	ldr     r0, [pc, #0x28] @ 0x21d220c, (=0xc178)
	sub     r1, #0x14
	add     r0, r5, r0
	add     r1, r5, r1
	add     r2, r5, r2
	bl      0x201ca3c
	pop     {r3-r5,pc}
@ 0x21d21f2


.align 2


.word 0xc0cc @ 0x21d21f4
.word 0xc294 @ 0x21d21f8
.word 0xc298 @ 0x21d21fc
.word 0xc28c @ 0x21d2200
.word 0xc124 @ 0x21d2204
.word 0xc290 @ 0x21d2208
.word 0xc178 @ 0x21d220c
.thumb
Function_21d2210: @ 21d2210 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x28] @ 0x21d2240, (=0xc290)
	ldr     r0, [r4, r0]
	bl      0x20181c4
	ldr     r0, [pc, #0x24] @ 0x21d2244, (=0xc28c)
	ldr     r0, [r4, r0]
	bl      0x20181c4
	ldr     r0, [pc, #0x20] @ 0x21d2248, (=0xc298)
	ldr     r0, [r4, r0]
	bl      0x20181c4
	ldr     r0, [pc, #0x1c] @ 0x21d224c, (=0xc294)
	ldr     r0, [r4, r0]
	bl      0x20181c4
	ldr     r0, [pc, #0x18] @ 0x21d2250, (=0xc0cc)
	ldr     r0, [r4, r0]
	bl      0x20181c4
	pop     {r4,pc}
@ 0x21d223e


.align 2


.word 0xc290 @ 0x21d2240
.word 0xc28c @ 0x21d2244
.word 0xc298 @ 0x21d2248
.word 0xc294 @ 0x21d224c
.word 0xc0cc @ 0x21d2250
.thumb
Function_21d2254: @ 21d2254 :thumb
	push    {r4,r5}
	ldr     r1, [pc, #0x54] @ 0x21d22ac, (=0xc29c)
	mov     r3, #0x0
	str     r3, [r0, r1]
	add     r2, r1, #0x4
	str     r3, [r0, r2]
	mov     r2, r1
	add     r2, #0x8
	str     r3, [r0, r2]
	mov     r2, #0x1
	mov     r4, r1
	lsl     r2, r2, #12
	add     r4, #0xc
	str     r2, [r0, r4]
	mov     r4, r1
	add     r4, #0x10
	str     r2, [r0, r4]
	mov     r4, r1
	add     r4, #0x14
	str     r2, [r0, r4]
	mov     r5, #0x69
	mov     r4, r1
	lsl     r5, r5, #6
	add     r4, #0x18
	str     r5, [r0, r4]
	mov     r5, #0x1f
	mov     r4, r1
	lsl     r5, r5, #10
	add     r4, #0x1c
	str     r5, [r0, r4]
	mov     r4, r1
	add     r4, #0x20
	str     r3, [r0, r4]
	mov     r3, r1
	add     r3, #0x24
	str     r2, [r0, r3]
	mov     r3, r1
	add     r3, #0x28
	str     r2, [r0, r3]
	add     r1, #0x2c
	str     r2, [r0, r1]
	pop     {r4,r5}
	bx      lr
@ 0x21d22aa


.align 2


.word 0xc29c @ 0x21d22ac
.thumb
Function_21d22b0: @ 21d22b0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	ldr     r6, [pc, #0x6c] @ 0x21d2324, (=0x21d293c)
	mov     r4, r0
	ldmia   r6!, {r0,r1}
	add     r5, sp, #0x8
	mov     r2, r5
	stmia   r5!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r1, r2
	str     r0, [r5, #0x0]
	add     r7, sp, #0x14
	mov     r3, #0x0
	str     r3, [r7, #0x0]
	str     r3, [r7, #0x4]
	str     r3, [r7, #0x8]
	ldr     r0, [pc, #0x54] @ 0x21d2328, (=0xc2cc)
	str     r3, [sp, #0x0]
	ldr     r0, [r4, r0]
	ldr     r2, [pc, #0x54] @ 0x21d232c, (=0x5c1)
	str     r0, [sp, #0x4]
	mov     r0, r7
	bl      0x2020784
	ldr     r2, [pc, #0x44] @ 0x21d2328, (=0xc2cc)
	mov     r1, #0x19
	ldr     r2, [r4, r2]
	mov     r0, #0x0
	lsl     r1, r1, #14
	bl      0x20206bc
	ldr     r1, [pc, #0x38] @ 0x21d2328, (=0xc2cc)
	mov     r0, #0x0
	ldr     r1, [r4, r1]
	bl      0x2020854
	ldr     r0, [pc, #0x2c] @ 0x21d2328, (=0xc2cc)
	ldr     r0, [r4, r0]
	bl      0x20203d4
	ldr     r0, [pc, #0x2c] @ 0x21d2330, (=0xc2f4)
	ldrh    r1, [r4, r0]
	cmp     r1, #0x0
	bne     branch_21d2310
	mov     r1, #0x1
	sub     r0, #0x1c
	strh    r1, [r4, r0]
	b       branch_21d2316
@ 0x21d2310

.thumb
branch_21d2310: @ 21d2310 :thumb
	mov     r1, #0x0
	sub     r0, #0x1c
	strh    r1, [r4, r0]
.thumb
branch_21d2316: @ 21d2316 :thumb
	mov     r0, r4
	bl      Function_21d2644
	cmp     r0, #0x1
	bne     branch_21d2316
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x21d2324

.word 0x21d293c @ 0x21d2324
.word 0xc2cc @ 0x21d2328
.word 0x5c1 @ 0x21d232c
.word 0xc2f4 @ 0x21d2330
.thumb
Function_21d2334: @ 21d2334 :thumb
	push    {r4,lr}
	ldr     r3, [pc, #0x30] @ 0x21d2368, (=0xc2dc)
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [r4, r3]
	add     r1, r3, #0x4
	str     r0, [r4, r1]
	mov     r1, r3
	ldr     r2, [pc, #0x24] @ 0x21d236c, (=0xfffff001)
	add     r1, #0x8
	str     r2, [r4, r1]
	ldr     r1, [r4, r3]
	add     r2, r3, #0x4
	add     r3, #0x8
	ldr     r2, [r4, r2]
	ldr     r3, [r4, r3]
	lsl     r1, r1, #16
	lsl     r2, r2, #16
	lsl     r3, r3, #16
	asr     r1, r1, #16
	asr     r2, r2, #16
	asr     r3, r3, #16
	blx 0x20af51c
	pop     {r4,pc}
@ 0x21d2366


.align 2


.word 0xc2dc @ 0x21d2368
.word 0xfffff001 @ 0x21d236c
.thumb
Function_21d2370: @ 21d2370 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x24
	mov     r4, r1
	ldr     r1, [r4, #0x4]
	ldr     r3, [pc, #0x68] @ 0x21d23e4, (=0x20f983c)
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	asr     r1, r1, #4
	lsl     r2, r1, #1
	lsl     r1, r2, #1
	.hword  0x1c52 @ add r2, r2, #0x1
	lsl     r2, r2, #1
	ldsh    r1, [r3, r1]
	ldsh    r2, [r3, r2]
	mov     r5, r0
	bl      0x20bb5c8
	ldr     r0, [r4, #0x0]
	ldr     r3, [pc, #0x4c] @ 0x21d23e4, (=0x20f983c)
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	asr     r0, r0, #4
	lsl     r2, r0, #1
	lsl     r1, r2, #1
	.hword  0x1c52 @ add r2, r2, #0x1
	lsl     r2, r2, #1
	ldsh    r1, [r3, r1]
	ldsh    r2, [r3, r2]
	add     r0, sp, #0x0
	bl      0x20bb5ac
	mov     r0, r5
	add     r1, sp, #0x0
	mov     r2, r5
	blx 0x20bb8ec
	ldr     r0, [r4, #0x8]
	ldr     r3, [pc, #0x28] @ 0x21d23e4, (=0x20f983c)
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	asr     r0, r0, #4
	lsl     r2, r0, #1
	lsl     r1, r2, #1
	.hword  0x1c52 @ add r2, r2, #0x1
	lsl     r2, r2, #1
	ldsh    r1, [r3, r1]
	ldsh    r2, [r3, r2]
	add     r0, sp, #0x0
	bl      0x20bb5e4
	mov     r0, r5
	add     r1, sp, #0x0
	mov     r2, r5
	blx 0x20bb8ec
	add     sp, #0x24
	pop     {r4,r5,pc}
@ 0x21d23e2


.align 2


.word 0x20f983c @ 0x21d23e4
.thumb
Function_21d23e8: @ 21d23e8 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x24
	mov     r4, r1
	ldr     r1, [r4, #0x0]
	ldr     r3, [pc, #0x68] @ 0x21d245c, (=0x20f983c)
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	asr     r1, r1, #4
	lsl     r2, r1, #1
	lsl     r1, r2, #1
	.hword  0x1c52 @ add r2, r2, #0x1
	lsl     r2, r2, #1
	ldsh    r1, [r3, r1]
	ldsh    r2, [r3, r2]
	mov     r5, r0
	bl      0x20bb5c8
	ldr     r0, [r4, #0x4]
	ldr     r3, [pc, #0x4c] @ 0x21d245c, (=0x20f983c)
	neg     r0, r0
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	asr     r0, r0, #4
	lsl     r2, r0, #1
	lsl     r1, r2, #1
	.hword  0x1c52 @ add r2, r2, #0x1
	lsl     r2, r2, #1
	ldsh    r1, [r3, r1]
	ldsh    r2, [r3, r2]
	add     r0, sp, #0x0
	bl      0x20bb5ac
	mov     r0, r5
	add     r1, sp, #0x0
	mov     r2, r5
	blx 0x20bb8ec
	ldr     r0, [r4, #0x8]
	ldr     r3, [pc, #0x24] @ 0x21d245c, (=0x20f983c)
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	asr     r0, r0, #4
	lsl     r2, r0, #1
	add     r1, r2, #0x1
	lsl     r1, r1, #1
	lsl     r2, r2, #1
	ldsh    r1, [r3, r1]
	ldsh    r2, [r3, r2]
	add     r0, sp, #0x0
	bl      0x20bb5e4
	mov     r0, r5
	add     r1, sp, #0x0
	mov     r2, r5
	blx 0x20bb8ec
	add     sp, #0x24
	pop     {r4,r5,pc}
@ 0x21d245c

.word 0x20f983c @ 0x21d245c
.thumb
Function_21d2460: @ 21d2460 :thumb
	push    {r3-r7,lr}
	mov     r3, r0
	ldr     r0, [pc, #0x1bc] @ 0x21d2624, (=0xc2b4)
	mov     r7, r2
	add     r4, r0, #0x4
	ldr     r4, [r3, r4]
	ldr     r2, [r3, r0]
	lsl     r4, r4, #16
	asr     r4, r4, #16
	lsl     r2, r2, #16
	mov     lr, r4
	mov     r4, #0x1
	mov     r6, #0x0
	asr     r2, r2, #16
	tst     r1, r4
	bne     branch_21d248c
	mov     r1, r0
	add     r1, #0x44
	ldr     r1, [r3, r1]
	mov     r12, r1
	tst     r1, r4
	beq     branch_21d24b0
.thumb
branch_21d248c: @ 21d248c :thumb
	ldr     r1, [pc, #0x198] @ 0x21d2628, (=0xc2f4)
	ldrh    r0, [r3, r1]
	cmp     r0, #0x1
	bne     branch_21d24ac
	mov     r0, r1
	sub     r0, #0x1c
	ldrh    r0, [r3, r0]
	cmp     r0, #0x0
	bne     branch_21d24a6
	mov     r0, #0x1
	sub     r1, #0x1c
	strh    r0, [r3, r1]
	b       branch_21d24ac
@ 0x21d24a6

.thumb
branch_21d24a6: @ 21d24a6 :thumb
	mov     r0, #0x0
	sub     r1, #0x1c
	strh    r0, [r3, r1]
.thumb
branch_21d24ac: @ 21d24ac :thumb
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d24b0

.thumb
branch_21d24b0: @ 21d24b0 :thumb
	mov     r1, r0
	add     r1, #0x24
	ldrh    r1, [r3, r1]
	cmp     r1, #0x0
	bne     branch_21d24e8
	mov     r1, r0
	add     r1, #0x54
	ldr     r1, [r3, r1]
	cmp     r1, #0x0
	bne     branch_21d24cc
	add     r0, #0x58
	ldr     r0, [r3, r0]
	cmp     r0, #0x0
	beq     branch_21d24e2
.thumb
branch_21d24cc: @ 21d24cc :thumb
	mov     r0, r1
	ldr     r1, [pc, #0x15c] @ 0x21d262c, (=0xc30c)
	mov     r4, #0x55
	ldr     r1, [r3, r1]
	mul     r0, r4
	mul     r4, r1
	lsl     r0, r0, #16
	lsl     r1, r4, #16
	lsr     r0, r0, #16
	lsr     r1, r1, #16
	b       branch_21d2514
@ 0x21d24e2

.thumb
branch_21d24e2: @ 21d24e2 :thumb
	lsl     r0, r4, #9
	mov     r1, r0
	b       branch_21d2514
@ 0x21d24e8

.thumb
branch_21d24e8: @ 21d24e8 :thumb
	mov     r1, r0
	add     r1, #0x54
	ldr     r1, [r3, r1]
	cmp     r1, #0x0
	bne     branch_21d24fa
	add     r0, #0x58
	ldr     r0, [r3, r0]
	cmp     r0, #0x0
	beq     branch_21d2510
.thumb
branch_21d24fa: @ 21d24fa :thumb
	mov     r0, r1
	ldr     r1, [pc, #0x12c] @ 0x21d262c, (=0xc30c)
	mov     r4, #0xa
	ldr     r1, [r3, r1]
	mul     r0, r4
	mul     r4, r1
	lsl     r0, r0, #16
	lsl     r1, r4, #16
	lsr     r0, r0, #16
	lsr     r1, r1, #16
	b       branch_21d2514
@ 0x21d2510

.thumb
branch_21d2510: @ 21d2510 :thumb
	mov     r0, #0x20
	mov     r1, r0
.thumb
branch_21d2514: @ 21d2514 :thumb
	mov     r4, #0x20
	tst     r4, r7
	bne     branch_21d2522
	mov     r5, r12
	mov     r4, #0x20
	tst     r4, r5
	beq     branch_21d254e
.thumb
branch_21d2522: @ 21d2522 :thumb
	ldr     r6, [pc, #0x104] @ 0x21d2628, (=0xc2f4)
	ldrh    r4, [r3, r6]
	cmp     r4, #0x1
	bne     branch_21d2538
	mov     r4, r6
	sub     r4, #0x3c
	ldr     r4, [r3, r4]
	sub     r6, #0x3c
	add     r4, r4, r0
	str     r4, [r3, r6]
	b       branch_21d254c
@ 0x21d2538

.thumb
branch_21d2538: @ 21d2538 :thumb
	ldr     r5, [pc, #0xf4] @ 0x21d2630, (=0xffffd820)
	mov     r4, lr
	cmp     r4, r5
	bge     branch_21d254c
	mov     r4, r6
	sub     r4, #0x3c
	ldr     r4, [r3, r4]
	sub     r6, #0x3c
	add     r4, r4, r0
	str     r4, [r3, r6]
.thumb
branch_21d254c: @ 21d254c :thumb
	mov     r6, #0x1
.thumb
branch_21d254e: @ 21d254e :thumb
	mov     r4, #0x10
	tst     r4, r7
	bne     branch_21d255e
	ldr     r4, [pc, #0xdc] @ 0x21d2634, (=0xc2f8)
	ldr     r5, [r3, r4]
	mov     r4, #0x10
	tst     r4, r5
	beq     branch_21d258a
.thumb
branch_21d255e: @ 21d255e :thumb
	ldr     r5, [pc, #0xc8] @ 0x21d2628, (=0xc2f4)
	ldrh    r4, [r3, r5]
	cmp     r4, #0x1
	bne     branch_21d2574
	mov     r4, r5
	sub     r4, #0x3c
	ldr     r4, [r3, r4]
	sub     r5, #0x3c
	sub     r0, r4, r0
	str     r0, [r3, r5]
	b       branch_21d2588
@ 0x21d2574

.thumb
branch_21d2574: @ 21d2574 :thumb
	ldr     r4, [pc, #0xc0] @ 0x21d2638, (=0xffffcc80)
	mov     r6, lr
	cmp     r6, r4
	ble     branch_21d2588
	mov     r4, r5
	sub     r4, #0x3c
	ldr     r4, [r3, r4]
	sub     r5, #0x3c
	sub     r0, r4, r0
	str     r0, [r3, r5]
.thumb
branch_21d2588: @ 21d2588 :thumb
	mov     r6, #0x1
.thumb
branch_21d258a: @ 21d258a :thumb
	mov     r4, #0x40
	mov     r0, r7
	tst     r0, r4
	bne     branch_21d259a
	ldr     r0, [pc, #0xa0] @ 0x21d2634, (=0xc2f8)
	ldr     r0, [r3, r0]
	tst     r0, r4
	beq     branch_21d25d4
.thumb
branch_21d259a: @ 21d259a :thumb
	ldr     r4, [pc, #0x8c] @ 0x21d2628, (=0xc2f4)
	ldrh    r0, [r3, r4]
	cmp     r0, #0x1
	bne     branch_21d25c0
	mov     r0, #0x3e
	add     r5, r2, r1
	lsl     r0, r0, #8
	cmp     r5, r0
	bge     branch_21d25ba
	mov     r0, r4
	sub     r0, #0x40
	ldr     r0, [r3, r0]
	sub     r4, #0x40
	add     r0, r0, r1
	str     r0, [r3, r4]
	b       branch_21d25d2
@ 0x21d25ba

.thumb
branch_21d25ba: @ 21d25ba :thumb
	sub     r4, #0x40
	str     r0, [r3, r4]
	b       branch_21d25d2
@ 0x21d25c0

.thumb
branch_21d25c0: @ 21d25c0 :thumb
	ldr     r0, [pc, #0x78] @ 0x21d263c, (=0x2020)
	cmp     r2, r0
	bge     branch_21d25d2
	mov     r0, r4
	sub     r0, #0x40
	ldr     r0, [r3, r0]
	sub     r4, #0x40
	add     r0, r0, r1
	str     r0, [r3, r4]
.thumb
branch_21d25d2: @ 21d25d2 :thumb
	mov     r6, #0x1
.thumb
branch_21d25d4: @ 21d25d4 :thumb
	mov     r4, #0x80
	mov     r0, r7
	tst     r0, r4
	bne     branch_21d25e4
	ldr     r0, [pc, #0x54] @ 0x21d2634, (=0xc2f8)
	ldr     r0, [r3, r0]
	tst     r0, r4
	beq     branch_21d261e
.thumb
branch_21d25e4: @ 21d25e4 :thumb
	ldr     r4, [pc, #0x40] @ 0x21d2628, (=0xc2f4)
	ldrh    r0, [r3, r4]
	cmp     r0, #0x1
	bne     branch_21d2608
	ldr     r0, [pc, #0x50] @ 0x21d2640, (=0xffffc200)
	sub     r2, r2, r1
	cmp     r2, r0
	ble     branch_21d2602
	mov     r0, r4
	sub     r0, #0x40
	ldr     r0, [r3, r0]
	sub     r4, #0x40
	sub     r0, r0, r1
	str     r0, [r3, r4]
	b       branch_21d261c
@ 0x21d2602

.thumb
branch_21d2602: @ 21d2602 :thumb
	sub     r4, #0x40
	str     r0, [r3, r4]
	b       branch_21d261c
@ 0x21d2608

.thumb
branch_21d2608: @ 21d2608 :thumb
	mov     r0, #0x13
	lsl     r0, r0, #8
	cmp     r2, r0
	ble     branch_21d261c
	mov     r0, r4
	sub     r0, #0x40
	ldr     r0, [r3, r0]
	sub     r4, #0x40
	sub     r0, r0, r1
	str     r0, [r3, r4]
.thumb
branch_21d261c: @ 21d261c :thumb
	mov     r6, #0x1
.thumb
branch_21d261e: @ 21d261e :thumb
	mov     r0, r6
	pop     {r3-r7,pc}
@ 0x21d2622


.align 2


.word 0xc2b4 @ 0x21d2624
.word 0xc2f4 @ 0x21d2628
.word 0xc30c @ 0x21d262c
.word 0xffffd820 @ 0x21d2630
.word 0xc2f8 @ 0x21d2634
.word 0xffffcc80 @ 0x21d2638
.word 0x2020 @ 0x21d263c
.word 0xffffc200 @ 0x21d2640
.thumb
Function_21d2644: @ 21d2644 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x7c] @ 0x21d26c8, (=0xc2cc)
	ldr     r0, [r5, r0]
	bl      0x2020a90
	ldr     r1, [pc, #0x78] @ 0x21d26cc, (=0xc2d8)
	mov     r4, #0x0
	ldrh    r2, [r5, r1]
	cmp     r2, #0x0
	beq     branch_21d268e
	cmp     r2, #0x1
	bne     branch_21d26bc
	mov     r2, #0x16
	lsl     r2, r2, #14
	cmp     r0, r2
	ble     branch_21d2686
	mov     r2, #0x2
	lsl     r2, r2, #14
	sub     r0, r0, r2
	mov     r2, r1
	sub     r2, #0x18
	ldr     r3, [r5, r2]
	mov     r2, r1
	sub     r3, #0x80
	sub     r2, #0x18
	str     r3, [r5, r2]
	mov     r2, r1
	sub     r2, #0x18
	ldr     r2, [r5, r2]
	sub     r1, #0x14
	str     r2, [r5, r1]
	b       branch_21d26bc
@ 0x21d2686

.thumb
branch_21d2686: @ 21d2686 :thumb
	mov     r0, #0x5
	lsl     r0, r0, #16
	mov     r4, #0x1
	b       branch_21d26bc
@ 0x21d268e

.thumb
branch_21d268e: @ 21d268e :thumb
	mov     r2, #0x12
	lsl     r2, r2, #16
	cmp     r0, r2
	bge     branch_21d26b6
	mov     r2, #0x2
	lsl     r2, r2, #14
	add     r0, r0, r2
	mov     r2, r1
	sub     r2, #0x18
	ldr     r3, [r5, r2]
	mov     r2, r1
	add     r3, #0x80
	sub     r2, #0x18
	str     r3, [r5, r2]
	mov     r2, r1
	sub     r2, #0x18
	ldr     r2, [r5, r2]
	sub     r1, #0x14
	str     r2, [r5, r1]
	b       branch_21d26bc
@ 0x21d26b6

.thumb
branch_21d26b6: @ 21d26b6 :thumb
	mov     r0, #0x4a
	lsl     r0, r0, #14
	mov     r4, #0x1
.thumb
branch_21d26bc: @ 21d26bc :thumb
	ldr     r1, [pc, #0x8] @ 0x21d26c8, (=0xc2cc)
	ldr     r1, [r5, r1]
	bl      0x2020a50
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d26c8

.word 0xc2cc @ 0x21d26c8
.word 0xc2d8 @ 0x21d26cc
.thumb
Function_21d26d0: @ 21d26d0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x70
	ldr     r4, [pc, #0xe8] @ 0x21d27c0, (=0x21d29e8)
	mov     r5, r0
	add     r3, sp, #0x4c
	mov     r2, #0x4
.thumb
branch_21d26dc: @ 21d26dc :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d26dc
	ldr     r0, [r4, #0x0]
	str     r0, [r3, #0x0]
	ldr     r0, [pc, #0xd8] @ 0x21d27c4, (=0xc2e8)
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_21d27ba
	cmp     r0, #0x1
	beq     branch_21d270e
	cmp     r0, #0x2
	bne     branch_21d27ba
	bl      0x20241b4
	mov     r0, #0x0
	mov     r1, #0x1
	bl      0x20241bc
	ldr     r0, [pc, #0xbc] @ 0x21d27c4, (=0xc2e8)
	mov     r1, #0x0
	add     sp, #0x70
	str     r1, [r5, r0]
	pop     {r3-r7,pc}
@ 0x21d270e

.thumb
branch_21d270e: @ 21d270e :thumb
	bl      0x20241b4
	bl      0x20203ec
	ldr     r1, [pc, #0xb0] @ 0x21d27c8, (=0xc2b4)
	add     r0, sp, #0x4c
	add     r1, r5, r1
	bl      Function_21d2370
	ldr     r3, [pc, #0xa8] @ 0x21d27cc, (=0xc29c)
	ldr     r0, [pc, #0xac] @ 0x21d27d0, (=0xc074)
	add     r1, r5, r3
	add     r3, #0xc
	add     r0, r5, r0
	add     r2, sp, #0x4c
	add     r3, r5, r3
	bl      0x201ca74
	ldr     r4, [pc, #0xa0] @ 0x21d27d4, (=0x21d2a54)
	add     r3, sp, #0x28
	mov     r2, #0x4
.thumb
branch_21d2738: @ 21d2738 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d2738
	ldr     r0, [r4, #0x0]
	add     r2, sp, #0x28
	str     r0, [r3, #0x0]
	ldr     r3, [pc, #0x90] @ 0x21d27d8, (=0xc220)
	mov     r1, r3
	add     r0, r5, r3
	add     r1, #0x7c
	add     r3, #0xa0
	add     r1, r5, r1
	add     r3, r5, r3
	bl      0x201ca74
	ldr     r4, [pc, #0x80] @ 0x21d27dc, (=0x21d2a0c)
	add     r3, sp, #0x4
	mov     r2, #0x4
.thumb
branch_21d275e: @ 21d275e :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d275e
	ldr     r0, [r4, #0x0]
	mov     r7, #0x0
	str     r0, [r3, #0x0]
	ldr     r0, [r5, #0xc]
	cmp     r0, #0x0
	bls     branch_21d27b2
	ldr     r0, [pc, #0x6c] @ 0x21d27e0, (=0xc0d0)
	mov     r6, r5
	add     r0, r5, r0
	add     r6, #0x14
	mov     r4, r5
	str     r0, [sp, #0x0]
.thumb
branch_21d277e: @ 21d277e :thumb
	mov     r0, r6
	add     r1, sp, #0x4c
	add     r2, sp, #0x4
	blx 0x20bb8ec
	ldrh    r2, [r4, #0x38]
	cmp     r2, #0x0
	beq     branch_21d27a6
	mov     r1, r2
	mov     r0, #0x54
	mul     r1, r0
	ldr     r0, [sp, #0x0]
	ldr     r3, [pc, #0x4c] @ 0x21d27e4, (=0xc2c0)
	add     r0, r0, r1
	ldr     r1, [pc, #0x30] @ 0x21d27cc, (=0xc29c)
	add     r2, sp, #0x4
	add     r1, r5, r1
	add     r3, r5, r3
	bl      0x201ca74
.thumb
branch_21d27a6: @ 21d27a6 :thumb
	ldr     r0, [r5, #0xc]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r6, #0x30
	add     r4, #0x30
	cmp     r7, r0
	bcc     branch_21d277e
.thumb
branch_21d27b2: @ 21d27b2 :thumb
	mov     r0, #0x0
	mov     r1, #0x1
	bl      0x20241bc
.thumb
branch_21d27ba: @ 21d27ba :thumb
	add     sp, #0x70
	pop     {r3-r7,pc}
@ 0x21d27be


.align 2


.word 0x21d29e8 @ 0x21d27c0
.word 0xc2e8 @ 0x21d27c4
.word 0xc2b4 @ 0x21d27c8
.word 0xc29c @ 0x21d27cc
.word 0xc074 @ 0x21d27d0
.word 0x21d2a54 @ 0x21d27d4
.word 0xc220 @ 0x21d27d8
.word 0x21d2a0c @ 0x21d27dc
.word 0xc0d0 @ 0x21d27e0
.word 0xc2c0 @ 0x21d27e4
.thumb
Function_21d27e8: @ 21d27e8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	str     r1, [sp, #0x0]
	mov     r6, r2
	str     r3, [sp, #0x4]
	bl      Function_21d16f8
	ldr     r7, [sp, #0x20]
	mov     r4, r0
	ldr     r2, [pc, #0x50] @ 0x21d2850, (=0x2b6)
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, r7
	bl      0x200b144
	str     r0, [sp, #0x8]
	mov     r1, r5
	mov     r2, r6
	bl      0x200b1b8
	ldr     r0, [sp, #0x8]
	bl      0x200b190
	cmp     r4, #0x0
	bne     branch_21d2824
	mov     r5, #0x0
	mov     r4, #0x1
	str     r5, [sp, #0x0]
	b       branch_21d2826
@ 0x21d2824

.thumb
branch_21d2824: @ 21d2824 :thumb
	mov     r5, #0x1
.thumb
branch_21d2826: @ 21d2826 :thumb
	mov     r0, r4
	bl      0x209972c
	mov     r2, r0
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, r7
	bl      0x200b144
	ldr     r1, [sp, #0x0]
	ldr     r2, [sp, #0x4]
	mov     r4, r0
	bl      0x200b1b8
	mov     r0, r4
	bl      0x200b190
	mov     r0, r5
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21d284e


.align 2


.word 0x2b6 @ 0x21d2850
.thumb
Function_21d2854: @ 21d2854 :thumb
	push    {r3,lr}
	bl      Function_21d16f8
	cmp     r0, #0x0
	beq     branch_21d2862
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d2862

.thumb
branch_21d2862: @ 21d2862 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d2866


.align 2, 0


.thumb
Function_21d2868: @ 21d2868 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	blt     branch_21d287c
	ldr     r1, [pc, #0x48] @ 0x21d28bc, (=0xffff)
	blx 0x20e1f6c
	str     r1, [r4, #0x0]
	b       branch_21d2892
@ 0x21d287c

.thumb
branch_21d287c: @ 21d287c :thumb
	bge     branch_21d2880
	neg     r0, r0
.thumb
branch_21d2880: @ 21d2880 :thumb
	ldr     r1, [pc, #0x38] @ 0x21d28bc, (=0xffff)
	blx 0x20e1f6c
	add     r1, r0, #0x1
	ldr     r0, [pc, #0x30] @ 0x21d28bc, (=0xffff)
	ldr     r2, [r4, #0x0]
	mul     r0, r1
	add     r0, r2, r0
	str     r0, [r4, #0x0]
.thumb
branch_21d2892: @ 21d2892 :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	blt     branch_21d28a2
	ldr     r1, [pc, #0x20] @ 0x21d28bc, (=0xffff)
	blx 0x20e1f6c
	str     r1, [r4, #0x4]
	pop     {r4,pc}
@ 0x21d28a2

.thumb
branch_21d28a2: @ 21d28a2 :thumb
	bge     branch_21d28a6
	neg     r0, r0
.thumb
branch_21d28a6: @ 21d28a6 :thumb
	ldr     r1, [pc, #0x14] @ 0x21d28bc, (=0xffff)
	blx 0x20e1f6c
	add     r1, r0, #0x1
	ldr     r0, [pc, #0xc] @ 0x21d28bc, (=0xffff)
	ldr     r2, [r4, #0x4]
	mul     r0, r1
	add     r0, r2, r0
	str     r0, [r4, #0x4]
	pop     {r4,pc}
@ 0x21d28ba


.align 2


.word 0xffff @ 0x21d28bc
.thumb
Function_21d28c0: @ 21d28c0 :thumb
	push    {r3-r5,lr}
	ldr     r3, [r0, #0x0]
	ldr     r2, [r1, #0x0]
	sub     r4, r3, r2
	bpl     branch_21d28cc
	neg     r4, r4
.thumb
branch_21d28cc: @ 21d28cc :thumb
	ldr     r2, [r0, #0x4]
	ldr     r0, [r1, #0x4]
	sub     r5, r2, r0
	bpl     branch_21d28d6
	neg     r5, r5
.thumb
branch_21d28d6: @ 21d28d6 :thumb
	mov     r0, #0xb4
	bl      0x201d278
	cmp     r4, r0
	ble     branch_21d28e4
	ldr     r0, [pc, #0x24] @ 0x21d2908, (=0xffff)
	sub     r4, r0, r4
.thumb
branch_21d28e4: @ 21d28e4 :thumb
	mov     r0, #0xb4
	bl      0x201d278
	cmp     r5, r0
	ble     branch_21d28f2
	ldr     r0, [pc, #0x18] @ 0x21d2908, (=0xffff)
	sub     r5, r0, r5
branch_21d28f2: @ 21d28f2 :thumb
	mov     r1, r4
	mov     r0, r5
	mul     r1, r4
	mul     r0, r5
	add     r0, r1, r0
	lsl     r0, r0, #12
	blx 0x20bcff0
	asr     r0, r0, #12
	pop     {r3-r5,pc}
@ 0x21d2906

.align 2
.word 0xffff @ 0x21d2908



Unknown_21d290c: @ 0x21d290c
.incbin "./baserom/overlay/overlay_0092.bin", 0x1b8c, 0x21d2ac0 - 0x21d290c


@end 0x21d2ac0




