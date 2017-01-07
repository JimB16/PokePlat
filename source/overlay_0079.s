

.section .iwram79, "ax"


.thumb
Function_21d0d80: @ 21d0d80 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      0x2006840
	mov     r2, #0x2
	mov     r5, r0
	mov     r0, #0x3
	mov     r1, #0x2d
	lsl     r2, r2, #16
	bl      0x2017fc8
	mov     r1, #0x2
	mov     r0, r4
	lsl     r1, r1, #8
	mov     r2, #0x2d
	bl      0x200681c
	mov     r2, #0x2
	mov     r1, #0x0
	lsl     r2, r2, #8
	mov     r4, r0
	blx     MI_CpuFill8
	mov     r0, #0x2d
	str     r0, [r4, #0x0]
	str     r5, [r4, #0x20]
	ldrb    r0, [r5, #0x3]
	strb    r0, [r4, #0x1b]
	ldr     r0, [pc, #0x4] @ 0x21d0dc0, (=0xffff)
	strh    r0, [r4, #0x14]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d0dc0

.word 0xffff @ 0x21d0dc0
.thumb
Function_21d0dc4: @ 21d0dc4 :thumb
	push    {r3,lr}
	bl      0x200682c
	bl      Function_21d0e1c
	cmp     r0, #0x0
	beq     branch_21d0dd6
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d0dd6

.thumb
branch_21d0dd6: @ 21d0dd6 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d0dda


.align 2, 0


.thumb
Function_21d0ddc: @ 21d0ddc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      0x200682c
	mov     r4, r0
	ldrb    r1, [r4, #0x1a]
	ldr     r0, [r4, #0x20]
	strb    r1, [r0, #0x1]
	ldr     r1, [r4, #0x10]
	ldr     r0, [r4, #0x20]
	strb    r1, [r0, #0x2]
	ldrb    r1, [r4, #0x1b]
	ldr     r0, [r4, #0x20]
	strb    r1, [r0, #0x3]
	mov     r0, r4
	add     r0, #0x80
	ldrh    r1, [r0, #0x0]
	ldr     r0, [r4, #0x20]
	strh    r1, [r0, #0x4]
	mov     r0, r4
	add     r0, #0x82
	ldrh    r1, [r0, #0x0]
	ldr     r0, [r4, #0x20]
	strh    r1, [r0, #0x6]
	mov     r0, r5
	bl      0x2006830
	ldr     r0, [r4, #0x0]
	bl      0x201807c
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d0e1c

.thumb
Function_21d0e1c: @ 21d0e1c :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldr     r1, [r4, #0x4]
	cmp     r1, #0x6
	bls     branch_21d0e2a
	b       branch_21d0f5e
@ 0x21d0e2a

.thumb
branch_21d0e2a: @ 21d0e2a :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d0e36

Jumppoints_21d0e36:
.hword branch_21d0e44 - Jumppoints_21d0e36 - 2
.hword branch_21d0e94 - Jumppoints_21d0e36 - 2
.hword branch_21d0ebc - Jumppoints_21d0e36 - 2
.hword branch_21d0ece - Jumppoints_21d0e36 - 2
.hword branch_21d0f04 - Jumppoints_21d0e36 - 2
.hword branch_21d0f16 - Jumppoints_21d0e36 - 2
.hword branch_21d0f24 - Jumppoints_21d0e36 - 2
.thumb
branch_21d0e44: @ 21d0e44 :thumb
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      0x20177a4
	bl      0x201ff00
	bl      0x201ff68
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x110] @ 0x21d0f70, (=0xffffe0ff)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r2, [pc, #0x10c] @ 0x21d0f74, (=0x4001000)
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	mov     r0, #0x0
	mov     r1, r0
	bl      0x200f344
	mov     r0, #0x1
	mov     r1, #0x0
	bl      0x200f344
	mov     r0, #0x0
	bl      0x200f32c
	mov     r0, #0x1
	bl      0x200f32c
	bl      0x201e3d8
	mov     r0, #0x4
	bl      0x201e450
	b       branch_21d0f64
@ 0x21d0e94

.thumb
branch_21d0e94: @ 21d0e94 :thumb
	bl      Function_21d122c
	cmp     r0, #0x0
	bne     branch_21d0ea2
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x21d0ea2

.thumb
branch_21d0ea2: @ 21d0ea2 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0xc]
	mov     r1, #0x6
	str     r1, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	ldr     r2, [r4, #0x0]
	mov     r3, r0
	str     r2, [sp, #0x8]
	mov     r2, r1
	bl      0x200f174
	b       branch_21d0f64
@ 0x21d0ebc

.thumb
branch_21d0ebc: @ 21d0ebc :thumb
	bl      Function_21d21f8
	bl      0x200f2ac
	cmp     r0, #0x0
	bne     branch_21d0f64
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x21d0ece

.thumb
branch_21d0ece: @ 21d0ece :thumb
	bl      Function_21d21f8
	ldrh    r1, [r4, #0x18]
	mov     r0, r4
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x9c] @ 0x21d0f78, (=0x21d394c)
	ldr     r1, [r1, r2]
	blx     r1
	cmp     r0, #0x0
	bne     branch_21d0ee8
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x21d0ee8

.thumb
branch_21d0ee8: @ 21d0ee8 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0xc]
	mov     r1, #0x6
	str     r1, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	ldr     r1, [r4, #0x0]
	mov     r2, r0
	str     r1, [sp, #0x8]
	mov     r1, r0
	mov     r3, r0
	bl      0x200f174
	b       branch_21d0f64
@ 0x21d0f04

.thumb
branch_21d0f04: @ 21d0f04 :thumb
	bl      Function_21d21f8
	bl      0x200f2ac
	cmp     r0, #0x0
	bne     branch_21d0f64
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x21d0f16

.thumb
branch_21d0f16: @ 21d0f16 :thumb
	bl      Function_21d12a0
	cmp     r0, #0x0
	bne     branch_21d0f64
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x21d0f24

.thumb
branch_21d0f24: @ 21d0f24 :thumb
	bl      0x201e530
	mov     r0, #0x0
	mov     r1, r0
	bl      0x200f344
	mov     r0, #0x1
	mov     r1, #0x0
	bl      0x200f344
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      0x201ff00
	bl      0x201ff68
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x20] @ 0x21d0f70, (=0xffffe0ff)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r2, [pc, #0x1c] @ 0x21d0f74, (=0x4001000)
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	b       branch_21d0f64
@ 0x21d0f5e

.thumb
branch_21d0f5e: @ 21d0f5e :thumb
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r3,r4,pc}
@ 0x21d0f64

.thumb
branch_21d0f64: @ 21d0f64 :thumb
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x21d0f70

.word 0xffffe0ff @ 0x21d0f70
.word 0x4001000 @ 0x21d0f74
.word 0x21d394c @ 0x21d0f78
.thumb
Function_21d0f7c: @ 21d0f7c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x6e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21d0f8e
	bl      0x200c800
.thumb
branch_21d0f8e: @ 21d0f8e :thumb
	bl      0x201dcac
	ldr     r0, [r4, #0x24]
	bl      0x201c2b8
	ldr     r3, [pc, #0xc] @ 0x21d0fa8, (=0x27e0000)
	ldr     r1, [pc, #0x10] @ 0x21d0fac, (=0x3ff8)
	mov     r0, #0x1
	ldr     r2, [r3, r1]
	orr     r0, r2
	str     r0, [r3, r1]
	pop     {r4,pc}
@ 0x21d0fa6


.align 2


.word 0x27e0000 @ 0x21d0fa8
.word 0x3ff8 @ 0x21d0fac
.thumb
Function_21d0fb0: @ 21d0fb0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x30] @ 0x21d0fe8, (=0x21d3964)
	bl      0x2022664
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	bne     branch_21d0fe4
	ldr     r0, [pc, #0x24] @ 0x21d0fe8, (=0x21d3964)
	bl      0x2022644
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	bne     branch_21d0fe0
	ldrh    r0, [r4, #0x14]
	cmp     r0, #0x1
	bne     branch_21d0fe0
	ldrb    r1, [r4, #0x1b]
	mov     r0, r4
	mov     r2, #0x2
	bl      Function_21d1b24
.thumb
branch_21d0fe0: @ 21d0fe0 :thumb
	mov     r0, #0x0
	mvn     r0, r0
.thumb
branch_21d0fe4: @ 21d0fe4 :thumb
	pop     {r4,pc}
@ 0x21d0fe6


.align 2


.word 0x21d3964 @ 0x21d0fe8
.thumb
Function_21d0fec: @ 21d0fec :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r1, r5
	add     r1, #0xc4
	ldr     r1, [r1, #0x0]
	mov     r4, #0x0
	mvn     r4, r4
	cmp     r1, #0x0
	bne     branch_21d1002
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d1002

.thumb
branch_21d1002: @ 21d1002 :thumb
	bl      Function_21d0fb0
	mov     r1, r0
	ldr     r0, [pc, #0x8c] @ 0x21d1098, (=0x21bf67c)
	ldr     r0, [r0, #0x44]
	cmp     r0, #0x0
	beq     branch_21d1024
	ldrh    r0, [r5, #0x14]
	cmp     r0, #0x0
	bne     branch_21d1036
	mov     r0, r5
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	bl      Function_2001288
	mov     r4, r0
	b       branch_21d1036
@ 0x21d1024

.thumb
branch_21d1024: @ 21d1024 :thumb
	cmp     r1, #0x0
	blt     branch_21d1032
	lsl     r1, r1, #24
	mov     r0, r5
	lsr     r1, r1, #24
	bl      Function_21d1c44
.thumb
branch_21d1032: @ 21d1032 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d1036

.thumb
branch_21d1036: @ 21d1036 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r4, r0
	bne     branch_21d1042
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d1042

.thumb
branch_21d1042: @ 21d1042 :thumb
	ldr     r0, [pc, #0x54] @ 0x21d1098, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_21d105e
	ldr     r0, [pc, #0x4c] @ 0x21d109c, (=0x5dc)
	bl      Function_2005748
	mov     r0, #0xff
	strb    r0, [r5, #0x1a]
	mov     r0, #0x0
	str     r0, [r5, #0x10]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d105e

.thumb
branch_21d105e: @ 21d105e :thumb
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_21d1092
	ldr     r0, [pc, #0x34] @ 0x21d109c, (=0x5dc)
	bl      Function_2005748
	cmp     r4, #0xff
	beq     branch_21d107c
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r4, r0
	beq     branch_21d107c
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r4, r0
	bne     branch_21d1088
.thumb
branch_21d107c: @ 21d107c :thumb
	mov     r0, #0xff
	strb    r0, [r5, #0x1a]
	mov     r0, #0x0
	str     r0, [r5, #0x10]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d1088

.thumb
branch_21d1088: @ 21d1088 :thumb
	strb    r4, [r5, #0x1a]
	mov     r0, #0x1
	strh    r0, [r5, #0x18]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d1092

.thumb
branch_21d1092: @ 21d1092 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d1096


.align 2


.word 0x21bf67c @ 0x21d1098
.word 0x5dc @ 0x21d109c
.thumb
Function_21d10a0: @ 21d10a0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x1
	bl      Function_21d2214
	mov     r0, r4
	bl      Function_21d1ed8
	mov     r0, #0x2
	strh    r0, [r4, #0x18]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d10b8

.thumb
Function_21d10b8: @ 21d10b8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0xc8
	ldr     r0, [r0, #0x0]
	bl      Function_2001288
	mov     r4, r0
	ldr     r0, [pc, #0x7c] @ 0x21d1144, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_21d10ea
	ldr     r0, [pc, #0x74] @ 0x21d1148, (=0x5dc)
	bl      Function_2005748
	mov     r0, r5
	bl      Function_21d1f60
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_21d2214
	mov     r0, #0x0
	strh    r0, [r5, #0x18]
	pop     {r3-r5,pc}
@ 0x21d10ea

.thumb
branch_21d10ea: @ 21d10ea :thumb
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_21d113e
	ldr     r0, [pc, #0x54] @ 0x21d1148, (=0x5dc)
	bl      Function_2005748
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r4, r0
	bhi     branch_21d110e
	bcs     branch_21d112c
	cmp     r4, #0x1
	bhi     branch_21d112c
	cmp     r4, #0x0
	beq     branch_21d1114
	cmp     r4, #0x1
	beq     branch_21d111a
	b       branch_21d112c
@ 0x21d110e

.thumb
branch_21d110e: @ 21d110e :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r4, r0
	b       branch_21d112c
@ 0x21d1114

.thumb
branch_21d1114: @ 21d1114 :thumb
	mov     r0, #0x1
	str     r0, [r5, #0x10]
	pop     {r3-r5,pc}
@ 0x21d111a

.thumb
branch_21d111a: @ 21d111a :thumb
	mov     r0, r5
	bl      Function_21d1f60
	mov     r0, r5
	bl      Function_21d1fbc
	mov     r0, #0x3
	strh    r0, [r5, #0x18]
	b       branch_21d113e
@ 0x21d112c

.thumb
branch_21d112c: @ 21d112c :thumb
	mov     r0, r5
	bl      Function_21d1f60
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_21d2214
	mov     r0, #0x0
	strh    r0, [r5, #0x18]
.thumb
branch_21d113e: @ 21d113e :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d1142


.align 2


.word 0x21bf67c @ 0x21d1144
.word 0x5dc @ 0x21d1148
.thumb
Function_21d114c: @ 21d114c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1f]
	bl      0x201d724
	cmp     r0, #0x0
	beq     branch_21d115e
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d115e

.thumb
branch_21d115e: @ 21d115e :thumb
	mov     r0, r4
	bl      Function_21d2054
	mov     r0, #0x4
	strh    r0, [r4, #0x18]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d116c

.thumb
Function_21d116c: @ 21d116c :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0xd4
	ldr     r0, [r0, #0x0]
	ldr     r1, [r4, #0x0]
	bl      0x2002114
	cmp     r0, #0x0
	beq     branch_21d1188
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_21d119c
	b       branch_21d11b6
@ 0x21d1188

.thumb
branch_21d1188: @ 21d1188 :thumb
	ldr     r0, [pc, #0x30] @ 0x21d11bc, (=0x5dc)
	bl      Function_2005748
	mov     r0, r4
	bl      Function_21d2008
	mov     r0, #0x5
	strh    r0, [r4, #0x18]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d119c

.thumb
branch_21d119c: @ 21d119c :thumb
	ldr     r0, [pc, #0x1c] @ 0x21d11bc, (=0x5dc)
	bl      Function_2005748
	mov     r0, #0x42
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, #0x0
	bl      0x200e084
	mov     r0, #0x1
	strh    r0, [r4, #0x18]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d11b6

.thumb
branch_21d11b6: @ 21d11b6 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d11ba


.align 2


.word 0x5dc @ 0x21d11bc
.thumb
Function_21d11c0: @ 21d11c0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1f]
	bl      0x201d724
	cmp     r0, #0x0
	beq     branch_21d11d2
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d11d2

.thumb
branch_21d11d2: @ 21d11d2 :thumb
	ldr     r0, [pc, #0x54] @ 0x21d1228, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	bne     branch_21d11e0
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d11e0

.thumb
branch_21d11e0: @ 21d11e0 :thumb
	mov     r0, #0x42
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, #0x1
	bl      0x200e084
	mov     r0, #0x42
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      0x201acf4
	ldrb    r0, [r4, #0x1a]
	ldr     r3, [r4, #0x20]
	lsl     r2, r0, #3
	add     r3, #0x20
	ldrb    r1, [r3, r2]
	mov     r0, #0x40
	orr     r0, r1
	strb    r0, [r3, r2]
	ldr     r0, [r4, #0x20]
	mov     r1, #0x1
	strb    r1, [r0, #0x2]
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d1ab8
	mov     r0, r4
	bl      Function_21d196c
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d2214
	mov     r0, #0x0
	strh    r0, [r4, #0x18]
	pop     {r4,pc}
@ 0x21d1228

.word 0x21bf67c @ 0x21d1228
.thumb
Function_21d122c: @ 21d122c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x8]
	cmp     r1, #0x5
	bhi     branch_21d1290
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d1242

Jumppoints_21d1242:
.hword branch_21d124e - Jumppoints_21d1242 - 2
.hword branch_21d1254 - Jumppoints_21d1242 - 2
.hword branch_21d125a - Jumppoints_21d1242 - 2
.hword branch_21d1266 - Jumppoints_21d1242 - 2
.hword branch_21d126c - Jumppoints_21d1242 - 2
.hword branch_21d1272 - Jumppoints_21d1242 - 2
.thumb
branch_21d124e: @ 21d124e :thumb
	bl      Function_21d132c
	b       branch_21d1290
@ 0x21d1254

.thumb
branch_21d1254: @ 21d1254 :thumb
	bl      Function_21d13c4
	b       branch_21d1290
@ 0x21d125a

.thumb
branch_21d125a: @ 21d125a :thumb
	bl      Function_21d1568
	mov     r0, r4
	bl      Function_21d14a4
	b       branch_21d1290
@ 0x21d1266

.thumb
branch_21d1266: @ 21d1266 :thumb
	bl      Function_21d20f4
	b       branch_21d1290
@ 0x21d126c

.thumb
branch_21d126c: @ 21d126c :thumb
	bl      Function_21d167c
	b       branch_21d1290
@ 0x21d1272

.thumb
branch_21d1272: @ 21d1272 :thumb
	bl      Function_21d196c
	ldrb    r1, [r4, #0x1b]
	mov     r0, r4
	mov     r2, #0x4
	bl      Function_21d1b24
	ldr     r0, [pc, #0x18] @ 0x21d129c, (=0x21d0f7d)
	mov     r1, r4
	bl      SetMainLoopFunctionCall
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d1290

.thumb
branch_21d1290: @ 21d1290 :thumb
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d129a


.align 2


.word 0x21d0f7d @ 0x21d129c
.thumb
Function_21d12a0: @ 21d12a0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x8]
	cmp     r1, #0x5
	bhi     branch_21d1302
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d12b6

Jumppoints_21d12b6:
.hword branch_21d12c2 - Jumppoints_21d12b6 - 2
.hword branch_21d12da - Jumppoints_21d12b6 - 2
.hword branch_21d12e6 - Jumppoints_21d12b6 - 2
.hword branch_21d12f2 - Jumppoints_21d12b6 - 2
.hword branch_21d12f8 - Jumppoints_21d12b6 - 2
.hword branch_21d12fe - Jumppoints_21d12b6 - 2
.thumb
branch_21d12c2: @ 21d12c2 :thumb
	mov     r1, r4
	add     r1, #0xd0
	ldr     r1, [r1, #0x0]
	cmp     r1, #0x0
	beq     branch_21d12d0
	bl      Function_21d1f60
.thumb
branch_21d12d0: @ 21d12d0 :thumb
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d1ab8
	b       branch_21d1302
@ 0x21d12da

.thumb
branch_21d12da: @ 21d12da :thumb
	bl      Function_21d17e8
	mov     r0, r4
	bl      Function_21d21cc
	b       branch_21d1302
@ 0x21d12e6

.thumb
branch_21d12e6: @ 21d12e6 :thumb
	bl      Function_21d1548
	mov     r0, r4
	bl      Function_21d1618
	b       branch_21d1302
@ 0x21d12f2

.thumb
branch_21d12f2: @ 21d12f2 :thumb
	bl      Function_21d14a0
	b       branch_21d1302
@ 0x21d12f8

.thumb
branch_21d12f8: @ 21d12f8 :thumb
	bl      Function_21d13a4
	b       branch_21d1302
@ 0x21d12fe

.thumb
branch_21d12fe: @ 21d12fe :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d1302

.thumb
branch_21d1302: @ 21d1302 :thumb
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d130c

.thumb
Function_21d130c: @ 21d130c :thumb
	push    {r4,lr}
	add     sp, #-0x28
	ldr     r4, [pc, #0x14] @ 0x21d1328, (=0x21d3980)
	add     r3, sp, #0x0
	mov     r2, #0x5
.thumb
branch_21d1316: @ 21d1316 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d1316
	add     r0, sp, #0x0
	bl      0x201fe94
	add     sp, #0x28
	pop     {r4,pc}
@ 0x21d1328

.word 0x21d3980 @ 0x21d1328



.thumb
Function_21d132c: @ 21d132c :thumb
	push    {r3-r7,lr}
	add     sp, #-0xb8
	mov     r5, r0
	bl      Function_21d130c
	ldr     r0, [r5, #0x0]
	bl      0x2018340
	add     r3, sp, #0x0
	ldr     r4, [pc, #0x5c] @ 0x21d139c, (=Unknown_21d3910)
	str     r0, [r5, #0x24]
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      0x2018368
	ldr     r4, [pc, #0x4c] @ 0x21d13a0, (=0x21d3a10)
	add     r3, sp, #0x10
	mov     r2, #0x15
.thumb
branch_21d1358: @ 21d1358 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d1358
	mov     r4, #0x0
	mov     r7, r4
	add     r6, sp, #0x10
.thumb
branch_21d1366: @ 21d1366 :thumb
	lsl     r1, r4, #24
	ldr     r0, [r5, #0x24]
	lsr     r1, r1, #24
	mov     r2, r6
	mov     r3, #0x0
	bl      0x20183c4
	lsl     r1, r4, #24
	ldr     r0, [r5, #0x24]
	lsr     r1, r1, #24
	bl      0x2019ebc
	lsl     r0, r4, #24
	ldr     r3, [r5, #0x0]
	lsr     r0, r0, #24
	mov     r1, #0x20
	mov     r2, #0x0
	bl      0x2019690
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r6, #0x1c
	cmp     r7, #0x6
	blt     branch_21d1366
	add     sp, #0xb8
	pop     {r3-r7,pc}
@ 0x21d139a

.align 2
.word Unknown_21d3910 @ 0x21d139c
.word 0x21d3a10 @ 0x21d13a0



.thumb
Function_21d13a4: @ 21d13a4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
branch_21d13aa: @ 21d13aa :thumb
	lsl     r1, r4, #24
	ldr     r0, [r5, #0x24]
	lsr     r1, r1, #24
	bl      0x2019044
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x6
	blt     branch_21d13aa
	ldr     r0, [r5, #0x24]
	bl      free
	pop     {r3-r5,pc}
@ 0x21d13c2


.align 2, 0


.thumb
Function_21d13c4: @ 21d13c4 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r1, [r5, #0x0]
	mov     r0, #0x53
	bl      0x2006c24
	mov     r4, r0
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x24]
	ldr     r1, [r5, #0x0]
	mov     r2, r4
	mov     r3, #0x53
	bl      0x208c210
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	mov     r0, #0x5
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x24]
	ldr     r1, [r5, #0x0]
	mov     r2, r4
	mov     r3, #0x53
	bl      0x208c210
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0x6
	lsl     r0, r0, #6
	str     r0, [sp, #0xc]
	str     r1, [sp, #0x10]
	ldr     r0, [r5, #0x24]
	ldr     r1, [r5, #0x0]
	mov     r2, r4
	mov     r3, #0x53
	bl      0x208c210
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0x6
	lsl     r0, r0, #6
	str     r0, [sp, #0xc]
	str     r1, [sp, #0x10]
	ldr     r0, [r5, #0x24]
	ldr     r1, [r5, #0x0]
	mov     r2, r4
	mov     r3, #0x53
	bl      0x208c210
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x24]
	ldr     r1, [r5, #0x0]
	mov     r2, r4
	mov     r3, #0x53
	bl      0x208c210
	mov     r0, #0xb
	str     r0, [sp, #0x0]
	mov     r0, #0x5
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x24]
	ldr     r1, [r5, #0x0]
	mov     r2, r4
	mov     r3, #0x53
	bl      0x208c210
	mov     r0, r4
	bl      0x2006ca8
	ldr     r0, [r5, #0x24]
	mov     r1, #0x3
	bl      0x201c3c0
	ldr     r0, [r5, #0x24]
	mov     r1, #0x5
	bl      0x201c3c0
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x21d149e


.align 2, 0


.thumb
Function_21d14a0: @ 21d14a0 :thumb
	bx      lr
@ 0x21d14a2


.align 2, 0


.thumb
Function_21d14a4: @ 21d14a4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r6, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [r6, #0x0]
	mov     r1, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r6, #0x24]
	mov     r2, #0x1f
	mov     r3, #0xf
	bl      0x200daa4
	ldr     r0, [r6, #0x20]
	ldr     r0, [r0, #0x18]
	bl      0x2027b50
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldr     r0, [r6, #0x0]
	mov     r1, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r6, #0x24]
	mov     r2, r1
	mov     r3, #0xe
	bl      0x200dd0c
	mov     r1, #0x1a
	ldr     r2, [r6, #0x0]
	mov     r0, #0x0
	lsl     r1, r1, #4
	bl      0x2002e7c
	mov     r1, #0x6
	ldr     r2, [r6, #0x0]
	mov     r0, #0x0
	lsl     r1, r1, #6
	bl      0x2002e98
	mov     r1, #0x1a
	ldr     r2, [r6, #0x0]
	mov     r0, #0x4
	lsl     r1, r1, #4
	bl      0x2002e7c
	mov     r5, r6
	ldr     r4, [pc, #0x40] @ 0x21d1544, (=0x21d39a8)
	mov     r7, #0x0
	add     r5, #0xe8
.thumb
branch_21d1508: @ 21d1508 :thumb
	ldrb    r0, [r4, #0x2]
	mov     r1, r5
	str     r0, [sp, #0x0]
	ldrb    r0, [r4, #0x3]
	str     r0, [sp, #0x4]
	ldrb    r0, [r4, #0x4]
	str     r0, [sp, #0x8]
	ldrb    r0, [r4, #0x5]
	str     r0, [sp, #0xc]
	ldrh    r0, [r4, #0x6]
	str     r0, [sp, #0x10]
	ldrb    r2, [r4, #0x0]
	ldrb    r3, [r4, #0x1]
	ldr     r0, [r6, #0x24]
	bl      0x201a7e8
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_201ada4
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r4, #0x8
	add     r5, #0x10
	cmp     r7, #0xd
	blt     branch_21d1508
	mov     r0, r6
	bl      Function_21d2078
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d1544

.word 0x21d39a8 @ 0x21d1544
.thumb
Function_21d1548: @ 21d1548 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
	add     r5, #0xe8
.thumb
branch_21d1550: @ 21d1550 :thumb
	mov     r0, r5
	bl      0x201acf4
	mov     r0, r5
	bl      Function_201a8fc
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0xd
	blt     branch_21d1550
	pop     {r3-r5,pc}
@ 0x21d1566


.align 2, 0


.thumb
Function_21d1568: @ 21d1568 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r1, [r5, #0x0]
	mov     r0, #0x2
	bl      Function_2002bb8
	ldr     r2, [pc, #0x9c] @ 0x21d1614, (=0x1cf)
	ldr     r3, [r5, #0x0]
	mov     r0, #0x0
	mov     r1, #0x1a
	bl      Function_200b144
	str     r0, [r5, #0x2c]
	ldr     r0, [r5, #0x0]
	bl      0x20158a8
	str     r0, [r5, #0x28]
	ldr     r2, [r5, #0x0]
	mov     r0, #0x2
	mov     r1, #0x40
	bl      Function_200b368
	str     r0, [r5, #0x30]
	ldr     r1, [r5, #0x0]
	mov     r0, #0x40
	bl      Function_2023790
	str     r0, [r5, #0x34]
	ldr     r0, [r5, #0x2c]
	mov     r1, #0x6
	bl      Function_200b1ec
	str     r0, [r5, #0x38]
	ldr     r0, [r5, #0x2c]
	mov     r1, #0x16
	bl      Function_200b1ec
	str     r0, [r5, #0x3c]
	ldr     r0, [r5, #0x2c]
	mov     r1, #0x4
	bl      Function_200b1ec
	str     r0, [r5, #0x40]
	ldr     r0, [r5, #0x2c]
	mov     r1, #0x7
	bl      Function_200b1ec
	str     r0, [r5, #0x44]
	ldr     r0, [r5, #0x2c]
	mov     r1, #0x8
	bl      Function_200b1ec
	str     r0, [r5, #0x48]
	ldr     r0, [r5, #0x2c]
	mov     r1, #0x0
	bl      Function_200b1ec
	str     r0, [r5, #0x4c]
	mov     r4, #0x0
	mov     r6, r5
.thumb
branch_21d15e0: @ 21d15e0 :thumb
	mov     r1, r4
	ldr     r0, [r5, #0x2c]
	add     r1, #0xb
	bl      Function_200b1ec
	str     r0, [r6, #0x50]
	cmp     r4, #0x5
	bge     branch_21d1604
	mov     r1, r4
	ldr     r0, [r5, #0x2c]
	add     r1, #0x11
	bl      Function_200b1ec
	str     r0, [r6, #0x68]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r4, #0x6
	blt     branch_21d15e0
.thumb
branch_21d1604: @ 21d1604 :thumb
	ldr     r0, [r5, #0x20]
	ldr     r0, [r0, #0x18]
	bl      0x2027ac0
	add     r5, #0x7c
	strb    r0, [r5, #0x0]
	pop     {r4-r6,pc}
@ 0x21d1612


.align 2


.word 0x1cf @ 0x21d1614
.thumb
Function_21d1618: @ 21d1618 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_21d1620: @ 21d1620 :thumb
	ldr     r0, [r5, #0x50]
	bl      Function_20237bc
	cmp     r4, #0x5
	bge     branch_21d1638
	ldr     r0, [r5, #0x68]
	bl      Function_20237bc
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x6
	blt     branch_21d1620
.thumb
branch_21d1638: @ 21d1638 :thumb
	ldr     r0, [r6, #0x4c]
	bl      Function_20237bc
	ldr     r0, [r6, #0x48]
	bl      Function_20237bc
	ldr     r0, [r6, #0x44]
	bl      Function_20237bc
	ldr     r0, [r6, #0x40]
	bl      Function_20237bc
	ldr     r0, [r6, #0x3c]
	bl      Function_20237bc
	ldr     r0, [r6, #0x38]
	bl      Function_20237bc
	ldr     r0, [r6, #0x34]
	bl      Function_20237bc
	ldr     r0, [r6, #0x30]
	bl      0x200b3f0
	ldr     r0, [r6, #0x28]
	bl      0x20158f4
	ldr     r0, [r6, #0x2c]
	bl      Function_200b190
	mov     r0, #0x2
	bl      0x2002c60
	pop     {r4-r6,pc}
@ 0x21d167c

.thumb
Function_21d167c: @ 21d167c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r6, [pc, #0x150] @ 0x21d17d4, (=0x21d3ab8)
	mov     r7, #0x0
	mov     r4, r5
.thumb
branch_21d1688: @ 21d1688 :thumb
	mov     r0, #0x6e
	mov     r1, #0x6f
	lsl     r0, r0, #2
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	mov     r2, r6
	bl      0x200ca08
	mov     r1, #0x7
	lsl     r1, r1, #6
	str     r0, [r4, r1]
	mov     r0, r1
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      0x2021cac
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r6, #0x28
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r7, #0x3
	blt     branch_21d1688
	mov     r0, #0x7
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x2021cc8
	mov     r0, #0x71
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      0x2021cc8
	mov     r0, #0x72
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      0x2021cc8
	ldr     r6, [pc, #0xfc] @ 0x21d17d8, (=0x21d3920)
	mov     r7, #0x0
	mov     r4, r5
.thumb
branch_21d16de: @ 21d16de :thumb
	mov     r0, #0x6e
	mov     r1, #0x6f
	lsl     r0, r0, #2
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	ldr     r2, [pc, #0xf0] @ 0x21d17dc, (=0x21d3b30)
	bl      0x200ca08
	mov     r1, #0x73
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, r1
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      0x2021cac
	mov     r0, #0x73
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	add     r1, r7, #0x3
	bl      0x2021d6c
	mov     r0, #0x73
	mov     r1, #0x0
	mov     r2, #0x2
	lsl     r0, r0, #2
	ldsh    r1, [r6, r1]
	ldsh    r2, [r6, r2]
	ldr     r0, [r4, r0]
	bl      0x200d494
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r7, #0x5
	blt     branch_21d16de
	mov     r7, #0x0
	ldr     r6, [pc, #0xb4] @ 0x21d17e0, (=0x21d3934)
	mov     r4, r5
	str     r7, [sp, #0x10]
.thumb
branch_21d1730: @ 21d1730 :thumb
	mov     r0, #0x6e
	mov     r1, #0x6f
	lsl     r0, r0, #2
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	ldr     r2, [pc, #0xa4] @ 0x21d17e4, (=0x21d3b58)
	bl      0x200ca08
	mov     r1, #0x1e
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	mov     r0, r1
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      0x2021cac
	mov     r0, #0x1e
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	ldr     r1, [sp, #0x10]
	bl      0x2021d6c
	mov     r0, #0x1e
	lsl     r0, r0, #4
	mov     r1, #0x2
	ldr     r0, [r4, r0]
	lsl     r1, r1, #12
	bl      0x2021ce4
	mov     r0, #0x1e
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	add     r1, r7, #0x2
	bl      0x2021e90
	mov     r0, #0x1e
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x2021cc8
	mov     r0, #0x1e
	mov     r1, #0x0
	mov     r2, #0x2
	lsl     r0, r0, #4
	ldsh    r1, [r6, r1]
	ldsh    r2, [r6, r2]
	ldr     r0, [r4, r0]
	bl      0x200d494
	ldr     r0, [sp, #0x10]
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1cc0 @ add r0, r0, #0x3
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1d36 @ add r6, r6, #0x4
	str     r0, [sp, #0x10]
	cmp     r7, #0x6
	blt     branch_21d1730
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r0, #0x7e
	str     r1, [sp, #0xc]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r2, #0xe7
	mov     r3, #0x4c
	bl      0x209916c
	mov     r1, #0x7f
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	mov     r1, #0x0
	ldr     r0, [r0, #0x4]
	bl      0x200d3f4
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d17d4

.word 0x21d3ab8 @ 0x21d17d4
.word 0x21d3920 @ 0x21d17d8
.word 0x21d3b30 @ 0x21d17dc
.word 0x21d3934 @ 0x21d17e0
.word 0x21d3b58 @ 0x21d17e4
.thumb
Function_21d17e8: @ 21d17e8 :thumb
	push    {r3-r7,lr}
	mov     r1, #0x7e
	mov     r5, r0
	lsl     r1, r1, #2
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	bl      0x2099370
	mov     r7, #0x1e
	mov     r6, #0x0
	mov     r4, r5
	lsl     r7, r7, #4
.thumb
branch_21d1802: @ 21d1802 :thumb
	ldr     r0, [r4, r7]
	bl      0x200c7e4
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x6
	blt     branch_21d1802
	mov     r7, #0x73
	mov     r6, #0x0
	mov     r4, r5
	lsl     r7, r7, #2
.thumb
branch_21d1818: @ 21d1818 :thumb
	ldr     r0, [r4, r7]
	bl      0x200c7e4
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x5
	blt     branch_21d1818
	mov     r6, #0x7
	mov     r4, #0x0
	lsl     r6, r6, #6
.thumb
branch_21d182c: @ 21d182c :thumb
	ldr     r0, [r5, r6]
	bl      0x200c7e4
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x3
	blt     branch_21d182c
	pop     {r3-r7,pc}
@ 0x21d183c

.thumb
Function_21d183c: @ 21d183c :thumb
	ldrb    r2, [r0, #0x4]
	mov     r1, #0x20
	bic     r2, r1
	strb    r2, [r0, #0x4]
	mov     r1, #0xff
	strb    r1, [r0, #0x6]
	ldrb    r1, [r0, #0x6]
	strb    r1, [r0, #0x7]
	bx      lr
@ 0x21d184e


.align 2, 0


.thumb
Function_21d1850: @ 21d1850 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r6, r1
	mov     r4, r2
	cmp     r3, #0x0
	beq     branch_21d186e
	mov     r0, #0x42
	lsl     r0, r0, #2
	mov     r1, #0x1
	add     r0, r5, r0
	mov     r2, r1
	mov     r3, #0xe
	bl      0x200e060
.thumb
branch_21d186e: @ 21d186e :thumb
	mov     r0, #0xd8
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	add     r0, #0xe8
	mov     r2, #0x0
	add     r0, r5, r0
	mov     r1, #0xff
	mov     r3, r2
	bl      0x201ae78
	mov     r0, #0x1
	bl      Function_2002ac8
	mov     r0, #0x0
	bl      Function_2002ae4
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	ldr     r0, [pc, #0x18] @ 0x21d18b0, (=0x1020f)
	str     r4, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x42
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x1
	mov     r2, r6
	str     r3, [sp, #0xc]
	bl      0x201d78c
	strb    r0, [r5, #0x1f]
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d18b0

.word 0x1020f @ 0x21d18b0
.thumb
Function_21d18b4: @ 21d18b4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r5, r1
	mov     r0, #0xff
	strb    r0, [r5, #0x1e]
	ldrb    r0, [r5, #0x1e]
	strb    r0, [r5, #0x1d]
	ldrb    r2, [r5, #0x1b]
	cmp     r2, #0x5
	bne     branch_21d18d2
	mov     r7, #0x1f
	b       branch_21d18e8
@ 0x21d18d2

.thumb
branch_21d18d2: @ 21d18d2 :thumb
	mov     r7, #0x1
	ldr     r1, [sp, #0x4]
	cmp     r2, #0x0
	ble     branch_21d18e8
.thumb
branch_21d18da: @ 21d18da :thumb
	lsl     r0, r7, #25
	lsr     r7, r0, #24
	add     r0, r1, #0x1
	lsl     r0, r0, #16
	lsr     r1, r0, #16
	cmp     r1, r2
	blt     branch_21d18da
.thumb
branch_21d18e8: @ 21d18e8 :thumb
	ldr     r0, [sp, #0x0]
	mov     r6, #0x0
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	ble     branch_21d195e
	ldr     r0, [sp, #0x0]
	str     r0, [sp, #0x8]
	add     r0, #0x1c
	str     r0, [sp, #0x8]
.thumb
branch_21d18fa: @ 21d18fa :thumb
	ldr     r0, [sp, #0x8]
	lsl     r1, r6, #3
	add     r4, r0, r1
	mov     r0, r4
	bl      Function_21d183c
	ldrb    r0, [r4, #0x4]
	lsl     r1, r0, #24
	lsr     r1, r1, #31
	beq     branch_21d1950
	lsl     r1, r0, #25
	lsr     r1, r1, #31
	bne     branch_21d1950
	mov     r1, #0x1f
	and     r1, r0
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	tst     r1, r7
	beq     branch_21d1950
	mov     r1, #0x20
	orr     r0, r1
	strb    r0, [r4, #0x4]
	ldrb    r0, [r5, #0x1d]
	cmp     r0, #0xff
	ldrb    r0, [r4, #0x5]
	bne     branch_21d1932
	strb    r0, [r5, #0x1d]
	b       branch_21d193e
@ 0x21d1932

.thumb
branch_21d1932: @ 21d1932 :thumb
	ldrb    r1, [r5, #0x1e]
	lsl     r2, r1, #3
	ldr     r1, [sp, #0x0]
	add     r1, r1, r2
	add     r1, #0x23
	strb    r0, [r1, #0x0]
.thumb
branch_21d193e: @ 21d193e :thumb
	ldrb    r0, [r5, #0x1e]
	strb    r0, [r4, #0x6]
	ldrb    r0, [r4, #0x5]
	strb    r0, [r5, #0x1e]
	ldr     r0, [sp, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x4]
.thumb
branch_21d1950: @ 21d1950 :thumb
	add     r0, r6, #0x1
	lsl     r0, r0, #16
	lsr     r6, r0, #16
	ldr     r0, [sp, #0x0]
	ldrb    r0, [r0, #0x0]
	cmp     r6, r0
	blt     branch_21d18fa
.thumb
branch_21d195e: @ 21d195e :thumb
	ldr     r0, [sp, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21d196a


.align 2, 0


.thumb
Function_21d196c: @ 21d196c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r0, [r5, #0x20]
	mov     r1, r5
	bl      Function_21d18b4
	strb    r0, [r5, #0x1c]
	ldrb    r0, [r5, #0x1c]
	ldr     r1, [r5, #0x0]
	bl      0x2013a04
	mov     r1, r5
	add     r1, #0xcc
	str     r0, [r1, #0x0]
	ldrb    r4, [r5, #0x1e]
	cmp     r4, #0xff
	beq     branch_21d19e6
	mov     r7, #0x0
.thumb
branch_21d1992: @ 21d1992 :thumb
	ldr     r1, [r5, #0x20]
	lsl     r0, r4, #3
	add     r1, #0x1c
	add     r6, r1, r0
	ldrb    r4, [r6, #0x6]
	ldrb    r1, [r6, #0x2]
	ldr     r0, [r5, #0x28]
	bl      0x2015918
	mov     r2, r0
	str     r7, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x30]
	mov     r1, r7
	mov     r3, r7
	bl      0x200b48c
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldrb    r2, [r6, #0x1]
	ldr     r0, [r5, #0x30]
	mov     r1, #0x1
	mov     r3, #0x2
	bl      0x200b60c
	ldr     r0, [r5, #0x30]
	ldr     r1, [r5, #0x34]
	ldr     r2, [r5, #0x3c]
	bl      Function_200c388
	mov     r0, r5
	add     r0, #0xcc
	ldrb    r2, [r6, #0x5]
	ldr     r0, [r0, #0x0]
	ldr     r1, [r5, #0x34]
	bl      0x2013a6c
	cmp     r4, #0xff
	bne     branch_21d1992
.thumb
branch_21d19e6: @ 21d19e6 :thumb
	mov     r0, r5
	add     r0, #0xcc
	ldr     r0, [r0, #0x0]
	ldr     r1, [r5, #0x38]
	mov     r2, #0xff
	bl      0x2013a6c
	mov     r1, r5
	ldr     r0, [pc, #0xbc] @ 0x21d1ab4, (=0x21d3bb0)
	add     r1, #0x84
	mov     r2, #0x20
	blx     MI_CpuCopy8
	ldr     r0, [r5, #0x20]
	ldrh    r1, [r0, #0x6]
	mov     r0, r5
	add     r0, #0x82
	strh    r1, [r0, #0x0]
	ldr     r0, [r5, #0x20]
	ldrh    r1, [r0, #0x4]
	mov     r0, r5
	add     r0, #0x80
	strh    r1, [r0, #0x0]
	ldr     r0, [r5, #0x20]
	ldrb    r0, [r0, #0x2]
	cmp     r0, #0x0
	beq     branch_21d1a64
	mov     r0, r5
	add     r0, #0x80
	ldrh    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_21d1a48
	mov     r0, r5
	add     r0, #0x82
	ldrh    r1, [r0, #0x0]
	cmp     r1, #0x0
	beq     branch_21d1a5e
	ldrb    r0, [r5, #0x1c]
	.hword  0x1e40 @ sub r0, r0, #0x1
	cmp     r1, r0
	blt     branch_21d1a5e
	mov     r0, r5
	add     r0, #0x82
	ldrh    r0, [r0, #0x0]
	.hword  0x1e41 @ sub r1, r0, #0x1
	mov     r0, r5
	add     r0, #0x82
	strh    r1, [r0, #0x0]
	b       branch_21d1a5e
@ 0x21d1a48

.thumb
branch_21d1a48: @ 21d1a48 :thumb
	add     r1, r0, #0x6
	ldrb    r0, [r5, #0x1c]
	cmp     r1, r0
	blt     branch_21d1a5e
	mov     r0, r5
	add     r0, #0x80
	ldrh    r0, [r0, #0x0]
	.hword  0x1e41 @ sub r1, r0, #0x1
	mov     r0, r5
	add     r0, #0x80
	strh    r1, [r0, #0x0]
.thumb
branch_21d1a5e: @ 21d1a5e :thumb
	ldr     r0, [r5, #0x20]
	mov     r1, #0x0
	strb    r1, [r0, #0x2]
.thumb
branch_21d1a64: @ 21d1a64 :thumb
	mov     r1, r5
	mov     r0, r5
	add     r1, #0xe8
	add     r0, #0x90
	str     r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xcc
	ldr     r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x84
	str     r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xa0
	str     r5, [r0, #0x0]
	mov     r0, r5
	mov     r2, r5
	ldrb    r1, [r5, #0x1c]
	add     r0, #0x94
	add     r2, #0x82
	strh    r1, [r0, #0x0]
	mov     r0, #0x0
	strh    r0, [r5, #0x16]
	mov     r1, r5
	add     r1, #0x80
	ldr     r3, [r5, #0x0]
	mov     r0, r5
	lsl     r3, r3, #24
	ldrh    r1, [r1, #0x0]
	ldrh    r2, [r2, #0x0]
	add     r0, #0x84
	lsr     r3, r3, #24
	bl      0x200112c
	mov     r1, r5
	add     r1, #0xc4
	str     r0, [r1, #0x0]
	mov     r0, #0x1
	strh    r0, [r5, #0x16]
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d1ab4

.word 0x21d3bb0 @ 0x21d1ab4
.thumb
Function_21d1ab8: @ 21d1ab8 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r0, #0xb0
	str     r0, [sp, #0x0]
	mov     r0, #0x60
	mov     r4, r1
	mov     r1, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r0, #0xe8
	mov     r2, r1
	mov     r3, r1
	bl      0x201ae78
	cmp     r4, #0x0
	beq     branch_21d1ae2
	mov     r0, r5
	add     r0, #0xe8
	bl      0x201acf4
.thumb
branch_21d1ae2: @ 21d1ae2 :thumb
	mov     r0, r5
	add     r0, #0xc4
	mov     r1, r5
	mov     r2, r5
	ldr     r0, [r0, #0x0]
	add     r1, #0x80
	add     r2, #0x82
	bl      Function_2001384
	mov     r0, r5
	add     r0, #0xcc
	ldr     r0, [r0, #0x0]
	bl      0x2013a3c
	mov     r0, r5
	add     r0, #0x80
	ldrh    r1, [r0, #0x0]
	ldr     r0, [r5, #0x20]
	strh    r1, [r0, #0x4]
	mov     r0, r5
	add     r0, #0x82
	ldrh    r1, [r0, #0x0]
	ldr     r0, [r5, #0x20]
	strh    r1, [r0, #0x6]
	mov     r0, r5
	mov     r1, #0x0
	add     r0, #0xc4
	str     r1, [r0, #0x0]
	add     r5, #0xcc
	str     r1, [r5, #0x0]
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x21d1b22


.align 2, 0


.thumb
Function_21d1b24: @ 21d1b24 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	mov     r5, r1
	cmp     r2, #0x4
	bls     branch_21d1b30
	b       branch_21d1c36
@ 0x21d1b30

.thumb
branch_21d1b30: @ 21d1b30 :thumb
	add     r0, r2, r2
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d1b3c

Jumppoints_21d1b3c:
.hword branch_21d1b46 - Jumppoints_21d1b3c - 2
.hword branch_21d1b76 - Jumppoints_21d1b3c - 2
.hword branch_21d1ba6 - Jumppoints_21d1b3c - 2
.hword branch_21d1bd4 - Jumppoints_21d1b3c - 2
.hword branch_21d1c02 - Jumppoints_21d1b3c - 2
.thumb
branch_21d1b46: @ 21d1b46 :thumb
	mov     r0, #0x1e
	lsl     r0, r0, #4
	add     r6, r4, r0
	lsl     r7, r5, #2
	lsl     r1, r5, #1
	ldr     r0, [r6, r7]
	add     r1, r5, r1
	bl      0x2021d6c
	ldr     r0, [r6, r7]
	mov     r1, #0x0
	bl      0x2021cc8
	mov     r1, r4
	add     r0, r5, #0x7
	add     r1, #0xe8
	lsl     r0, r0, #4
	add     r0, r1, r0
	mov     r1, #0x1
	mov     r2, #0x2
	mov     r3, #0x0
	bl      0x201c04c
	b       branch_21d1c36
@ 0x21d1b76

.thumb
branch_21d1b76: @ 21d1b76 :thumb
	mov     r0, #0x1e
	lsl     r0, r0, #4
	add     r6, r4, r0
	lsl     r7, r5, #2
	ldr     r0, [r6, r7]
	bl      0x2021de0
	ldr     r0, [r6, r7]
	mov     r1, #0x1
	bl      0x2021cc8
	mov     r1, r4
	add     r0, r5, #0x7
	add     r1, #0xe8
	lsl     r0, r0, #4
	add     r0, r1, r0
	mov     r1, #0x0
	mov     r2, #0x4
	mov     r3, r1
	bl      0x201c04c
	mov     r0, #0x1
	strh    r0, [r4, #0x14]
	b       branch_21d1c36
@ 0x21d1ba6

.thumb
branch_21d1ba6: @ 21d1ba6 :thumb
	lsl     r0, r5, #2
	add     r1, r4, r0
	mov     r0, #0x1e
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	lsl     r1, r5, #1
	add     r1, r5, r1
	.hword  0x1c49 @ add r1, r1, #0x1
	bl      0x2021d6c
	mov     r1, r4
	add     r0, r5, #0x7
	add     r1, #0xe8
	lsl     r0, r0, #4
	add     r0, r1, r0
	mov     r1, #0x1
	mov     r2, #0x2
	mov     r3, #0x0
	bl      0x201c04c
	mov     r0, #0x0
	strh    r0, [r4, #0x14]
	b       branch_21d1c36
@ 0x21d1bd4

.thumb
branch_21d1bd4: @ 21d1bd4 :thumb
	lsl     r0, r5, #2
	add     r1, r4, r0
	mov     r0, #0x1e
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	lsl     r1, r5, #1
	add     r1, r5, r1
	.hword  0x1c89 @ add r1, r1, #0x2
	bl      0x2021d6c
	mov     r1, r4
	add     r0, r5, #0x7
	add     r1, #0xe8
	lsl     r0, r0, #4
	add     r0, r1, r0
	mov     r1, #0x0
	mov     r2, #0x2
	mov     r3, r1
	bl      0x201c04c
	mov     r0, #0x1
	strh    r0, [r4, #0x14]
	b       branch_21d1c36
@ 0x21d1c02

.thumb
branch_21d1c02: @ 21d1c02 :thumb
	mov     r0, #0x1e
	lsl     r0, r0, #4
	lsl     r1, r5, #1
	add     r1, r5, r1
	add     r6, r4, r0
	lsl     r7, r5, #2
	ldr     r0, [r6, r7]
	.hword  0x1c49 @ add r1, r1, #0x1
	bl      0x2021d6c
	ldr     r0, [r6, r7]
	mov     r1, #0x1
	bl      0x2021cc8
	mov     r1, r4
	add     r0, r5, #0x7
	add     r1, #0xe8
	lsl     r0, r0, #4
	add     r0, r1, r0
	mov     r1, #0x0
	mov     r2, #0x2
	mov     r3, r1
	bl      0x201c04c
	mov     r0, #0x0
	strh    r0, [r4, #0x14]
.thumb
branch_21d1c36: @ 21d1c36 :thumb
	add     r0, r5, #0x7
	add     r4, #0xe8
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      0x201a954
	pop     {r3-r7,pc}
@ 0x21d1c44

.thumb
Function_21d1c44: @ 21d1c44 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r4, r0
	ldr     r0, [pc, #0xc8] @ 0x21d1d14, (=0x5e4)
	mov     r5, r1
	bl      Function_2005748
	ldrh    r1, [r4, #0x14]
	ldr     r0, [pc, #0xc0] @ 0x21d1d18, (=0xffff)
	cmp     r1, r0
	beq     branch_21d1c76
	ldrb    r1, [r4, #0x1b]
	cmp     r5, r1
	bne     branch_21d1c6e
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x3
	bl      Function_21d1b24
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x21d1c6e

.thumb
branch_21d1c6e: @ 21d1c6e :thumb
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_21d1b24
.thumb
branch_21d1c76: @ 21d1c76 :thumb
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x1
	bl      Function_21d1b24
	mov     r0, r4
	mov     r1, #0x0
	strb    r5, [r4, #0x1b]
	bl      Function_21d1ab8
	mov     r0, r4
	mov     r2, #0x0
	add     r0, #0x82
	strh    r2, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x82
	ldrh    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x80
	strh    r1, [r0, #0x0]
	ldr     r0, [r4, #0x20]
	strh    r2, [r0, #0x6]
	ldr     r1, [r4, #0x20]
	ldrh    r0, [r1, #0x6]
	strh    r0, [r1, #0x4]
	mov     r0, r4
	bl      Function_21d196c
	mov     r1, #0xa0
	str     r1, [sp, #0x0]
	mov     r0, #0x18
	add     r1, #0xa8
	str     r0, [sp, #0x4]
	add     r0, r4, r1
	mov     r1, #0x0
	mov     r2, r1
	mov     r3, r1
	bl      0x201ae78
	ldrb    r1, [r4, #0x1b]
	cmp     r1, #0x5
	bne     branch_21d1cd8
	mov     r0, #0x52
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      0x201a954
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x21d1cd8

.thumb
branch_21d1cd8: @ 21d1cd8 :thumb
	lsl     r1, r1, #2
	add     r1, r4, r1
	mov     r0, #0x0
	ldr     r1, [r1, #0x68]
	mov     r2, r0
	bl      0x2002d7c
	mov     r2, #0xa0
	sub     r3, r2, r0
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [pc, #0x28] @ 0x21d1d1c, (=0x10200)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	add     r2, #0xa8
	str     r1, [sp, #0xc]
	add     r0, r4, r2
	ldrb    r2, [r4, #0x1b]
	lsl     r2, r2, #2
	add     r2, r4, r2
	lsr     r4, r3, #31
	add     r4, r3, r4
	ldr     r2, [r2, #0x68]
	asr     r3, r4, #1
	bl      0x201d78c
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x21d1d12


.align 2


.word 0x5e4 @ 0x21d1d14
.word 0xffff @ 0x21d1d18
.word 0x10200 @ 0x21d1d1c
.thumb
Function_21d1d20: @ 21d1d20 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r7, r1
	ldr     r6, [pc, #0x5c] @ 0x21d1d84, (=0x1)
	bne     branch_21d1d4a
	mov     r4, #0x0
	mov     r6, #0x73
	mov     r7, r4
	lsl     r6, r6, #2
.thumb
branch_21d1d32: @ 21d1d32 :thumb
	lsl     r0, r4, #2
	add     r0, r5, r0
	ldr     r0, [r0, r6]
	mov     r1, r7
	bl      0x2021cac
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0x5
	bcc     branch_21d1d32
	pop     {r3-r7,pc}
@ 0x21d1d4a

.thumb
branch_21d1d4a: @ 21d1d4a :thumb
	mov     r4, #0x0
.thumb
branch_21d1d4c: @ 21d1d4c :thumb
	ldrb    r0, [r7, #0x4]
	tst     r0, r6
	beq     branch_21d1d64
	lsl     r0, r4, #2
	add     r1, r5, r0
	mov     r0, #0x73
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	mov     r1, #0x1
	bl      0x2021cac
	b       branch_21d1d74
@ 0x21d1d64

.thumb
branch_21d1d64: @ 21d1d64 :thumb
	lsl     r0, r4, #2
	add     r1, r5, r0
	mov     r0, #0x73
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	mov     r1, #0x0
	bl      0x2021cac
.thumb
branch_21d1d74: @ 21d1d74 :thumb
	lsl     r0, r6, #25
	lsr     r6, r0, #24
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0x5
	bcc     branch_21d1d4c
	pop     {r3-r7,pc}
@ 0x21d1d84

.word 0x1 @ 0x21d1d84
.thumb
Function_21d1d88: @ 21d1d88 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d1d90, (=Function_2001504+1)
	mov     r1, #0x13
	bx      r3
@ 0x21d1d8e


.align 2


.word Function_2001504+1 @ 0x21d1d90
.thumb
Function_21d1d94: @ 21d1d94 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r1
	mov     r1, #0x13
	mov     r7, r0
	mov     r6, r2
	bl      0x2001504
	mov     r4, r0
	cmp     r6, #0x0
	bne     branch_21d1db0
	ldr     r0, [pc, #0x124] @ 0x21d1ed0, (=0x5dc)
	bl      Function_2005748
.thumb
branch_21d1db0: @ 21d1db0 :thumb
	add     r1, sp, #0x10
	mov     r0, r7
	add     r1, #0x2
	add     r2, sp, #0x10
	bl      0x20014dc
	add     r2, sp, #0x10
	ldrh    r2, [r2, #0x0]
	mov     r0, #0x7
	lsl     r0, r0, #6
	lsl     r2, r2, #4
	add     r2, #0x28
	lsl     r2, r2, #16
	ldr     r0, [r4, r0]
	mov     r1, #0x69
	asr     r2, r2, #16
	bl      0x200d494
	add     r0, sp, #0x10
	ldrh    r0, [r0, #0x2]
	cmp     r0, #0x0
	bne     branch_21d1dea
	mov     r0, #0x71
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x2021cac
	b       branch_21d1df6
@ 0x21d1dea

.thumb
branch_21d1dea: @ 21d1dea :thumb
	mov     r0, #0x71
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      0x2021cac
.thumb
branch_21d1df6: @ 21d1df6 :thumb
	add     r0, sp, #0x10
	ldrh    r1, [r0, #0x2]
	ldrb    r0, [r4, #0x1c]
	.hword  0x1f80 @ sub r0, r0, #0x6
	cmp     r1, r0
	bge     branch_21d1e10
	mov     r0, #0x72
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      0x2021cac
	b       branch_21d1e1c
@ 0x21d1e10

.thumb
branch_21d1e10: @ 21d1e10 :thumb
	mov     r0, #0x72
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x2021cac
.thumb
branch_21d1e1c: @ 21d1e1c :thumb
	mov     r0, #0x50
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r0, #0xf8
	mov     r2, r1
	mov     r3, r1
	bl      0x201ae78
	cmp     r5, #0xff
	bne     branch_21d1e58
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d1d20
	mov     r0, r4
	add     r0, #0xf8
	bl      0x201a954
	mov     r0, #0x7f
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	ldr     r0, [r0, #0x4]
	bl      0x200d3f4
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d1e58

.thumb
branch_21d1e58: @ 21d1e58 :thumb
	ldr     r1, [r4, #0x20]
	lsl     r5, r5, #3
	add     r1, #0x1c
	mov     r0, r4
	add     r1, r1, r5
	bl      Function_21d1d20
	ldr     r0, [r4, #0x34]
	bl      0x20237e8
	ldr     r0, [r4, #0x20]
	add     r0, r0, r5
	ldrb    r2, [r0, #0x1f]
	cmp     r2, #0x63
	bls     branch_21d1e78
	mov     r2, #0x63
.thumb
branch_21d1e78: @ 21d1e78 :thumb
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x30]
	mov     r3, #0x2
	bl      0x200b60c
	ldr     r0, [r4, #0x30]
	ldr     r1, [r4, #0x34]
	ldr     r2, [r4, #0x40]
	bl      Function_200c388
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	ldr     r0, [pc, #0x3c] @ 0x21d1ed4, (=0x10200)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, r4
	ldr     r2, [r4, #0x34]
	add     r0, #0xf8
	mov     r3, #0x8
	bl      0x201d78c
	ldr     r2, [r4, #0x20]
	mov     r1, #0x7e
	lsl     r1, r1, #2
	add     r2, r2, r5
	ldr     r0, [r4, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldrb    r2, [r2, #0x1e]
	ldr     r1, [r4, r1]
	bl      0x209933c
	mov     r0, #0x7f
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	ldr     r0, [r0, #0x4]
	bl      0x200d3f4
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d1ed0

.word 0x5dc @ 0x21d1ed0
.word 0x10200 @ 0x21d1ed4
.thumb
Function_21d1ed8: @ 21d1ed8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r1, [r5, #0x0]
	mov     r0, #0x3
	bl      0x2013a04
	mov     r1, r5
	add     r1, #0xd0
	str     r0, [r1, #0x0]
	mov     r4, #0x0
.thumb
branch_21d1eec: @ 21d1eec :thumb
	mov     r0, r5
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	ldr     r1, [r5, #0x2c]
	add     r2, r4, #0x1
	mov     r3, r4
	bl      0x2013a4c
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0x3
	bcc     branch_21d1eec
	mov     r1, r5
	ldr     r0, [pc, #0x50] @ 0x21d1f5c, (=0x21d3b90)
	add     r1, #0xa4
	mov     r2, #0x20
	blx     MI_CpuCopy8
	mov     r0, #0x46
	lsl     r0, r0, #2
	mov     r1, r5
	add     r0, r5, r0
	add     r1, #0xb0
	str     r0, [r1, #0x0]
	mov     r1, r5
	add     r1, #0xd0
	ldr     r2, [r1, #0x0]
	mov     r1, r5
	add     r1, #0xa4
	str     r2, [r1, #0x0]
	mov     r1, r5
	add     r1, #0xc0
	str     r5, [r1, #0x0]
	mov     r1, r5
	mov     r2, #0x3
	add     r1, #0xb4
	strh    r2, [r1, #0x0]
	mov     r1, #0x1
	mov     r2, #0x1f
	mov     r3, #0xf
	bl      0x200dc48
	ldr     r3, [r5, #0x0]
	mov     r0, r5
	mov     r1, #0x0
	lsl     r3, r3, #24
	add     r0, #0xa4
	mov     r2, r1
	lsr     r3, r3, #24
	bl      0x200112c
	add     r5, #0xc8
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d1f5a


.align 2


.word 0x21d3b90 @ 0x21d1f5c
.thumb
Function_21d1f60: @ 21d1f60 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	mov     r0, #0x46
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, #0x0
	bl      Function_200dc9c
	mov     r0, #0x46
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      0x201acf4
	mov     r0, r4
	add     r0, #0xc8
	add     r2, sp, #0x0
	ldr     r0, [r0, #0x0]
	add     r1, sp, #0x0
	add     r2, #0x2
	bl      Function_2001384
	mov     r0, r4
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	bl      0x2013a3c
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0xc8
	str     r1, [r0, #0x0]
	add     r4, #0xd0
	str     r1, [r4, #0x0]
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d1fa6


.align 2, 0


.thumb
Function_21d1fa8: @ 21d1fa8 :thumb
	push    {r3,lr}
	cmp     r2, #0x0
	bne     branch_21d1fb4
	ldr     r0, [pc, #0x8] @ 0x21d1fb8, (=0x5dc)
	bl      Function_2005748
.thumb
branch_21d1fb4: @ 21d1fb4 :thumb
	pop     {r3,pc}
@ 0x21d1fb6


.align 2


.word 0x5dc @ 0x21d1fb8
.thumb
Function_21d1fbc: @ 21d1fbc :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	ldr     r0, [r4, #0x34]
	bl      0x20237e8
	ldrb    r1, [r4, #0x1a]
	ldr     r2, [r4, #0x20]
	ldr     r0, [r4, #0x28]
	lsl     r1, r1, #3
	add     r1, r2, r1
	ldrb    r1, [r1, #0x1e]
	bl      0x2015918
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r3, #0x2
	str     r3, [sp, #0x4]
	ldr     r0, [r4, #0x30]
	mov     r1, #0x0
	bl      0x200b48c
	ldr     r0, [r4, #0x30]
	ldr     r1, [r4, #0x34]
	ldr     r2, [r4, #0x44]
	bl      Function_200c388
	mov     r0, r4
	ldr     r1, [r4, #0x34]
	add     r4, #0x7c
	ldrb    r2, [r4, #0x0]
	mov     r3, #0x1
	bl      Function_21d1850
	add     sp, #0x8
	pop     {r4,pc}
@ 0x21d2006


.align 2, 0


.thumb
Function_21d2008: @ 21d2008 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	ldr     r0, [r4, #0x34]
	bl      0x20237e8
	ldrb    r1, [r4, #0x1a]
	ldr     r2, [r4, #0x20]
	ldr     r0, [r4, #0x28]
	lsl     r1, r1, #3
	add     r1, r2, r1
	ldrb    r1, [r1, #0x1e]
	bl      0x2015918
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r3, #0x2
	str     r3, [sp, #0x4]
	ldr     r0, [r4, #0x30]
	mov     r1, #0x0
	bl      0x200b48c
	ldr     r0, [r4, #0x30]
	ldr     r1, [r4, #0x34]
	ldr     r2, [r4, #0x48]
	bl      Function_200c388
	mov     r0, r4
	ldr     r1, [r4, #0x34]
	add     r4, #0x7c
	ldrb    r2, [r4, #0x0]
	mov     r3, #0x0
	bl      Function_21d1850
	add     sp, #0x8
	pop     {r4,pc}
@ 0x21d2052


.align 2, 0


.thumb
Function_21d2054: @ 21d2054 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0x14] @ 0x21d2074, (=0x21d3b88)
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x24]
	mov     r2, #0x1f
	mov     r3, #0xf
	bl      0x2002100
	add     r4, #0xd4
	str     r0, [r4, #0x0]
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d2072


.align 2


.word 0x21d3b88 @ 0x21d2074
.thumb
Function_21d2078: @ 21d2078 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r1, #0x0
	mov     r5, r0
	str     r1, [sp, #0x0]
	ldr     r0, [pc, #0x64] @ 0x21d20e8, (=0x10200)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, #0x4e
	lsl     r0, r0, #2
	ldr     r2, [r5, #0x4c]
	add     r0, r5, r0
	mov     r3, #0x4
	bl      0x201d78c
	mov     r0, r5
	str     r0, [sp, #0x10]
	add     r0, #0xe8
	ldr     r4, [pc, #0x4c] @ 0x21d20ec, (=0x21d3b80)
	mov     r6, #0x0
	str     r0, [sp, #0x10]
.thumb
branch_21d20a4: @ 21d20a4 :thumb
	ldr     r1, [r5, #0x50]
	mov     r0, #0x2
	mov     r2, #0x0
	bl      0x2002d7c
	mov     r1, #0x40
	sub     r3, r1, r0
	ldrb    r0, [r4, #0x0]
	lsr     r7, r3, #31
	add     r7, r3, r7
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x30] @ 0x21d20f0, (=0x20301)
	asr     r3, r7, #1
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	add     r0, r6, #0x7
	lsl     r1, r0, #4
	ldr     r0, [sp, #0x10]
	ldr     r2, [r5, #0x50]
	add     r0, r0, r1
	mov     r1, #0x2
	bl      0x201d78c
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r6, #0x6
	blt     branch_21d20a4
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d20e6


.align 2


.word 0x10200 @ 0x21d20e8
.word 0x21d3b80 @ 0x21d20ec
.word 0x20301 @ 0x21d20f0
.thumb
Function_21d20f4: @ 21d20f4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x54
	mov     r4, r0
	ldr     r1, [r4, #0x0]
	mov     r0, #0x20
	bl      0x201dbec
	ldr     r0, [r4, #0x0]
	bl      0x200c6e4
	mov     r1, #0x6e
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	bl      0x200c704
	mov     r7, #0x6f
	lsl     r7, r7, #2
	add     r2, sp, #0x34
	ldr     r3, [pc, #0xa4] @ 0x21d21c0, (=0x21d3c00)
	str     r0, [r4, r7]
	ldmia   r3!, {r0,r1}
	mov     r6, r2
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	ldr     r5, [pc, #0x94] @ 0x21d21c4, (=0x21d3bd0)
	stmia   r2!, {r0,r1}
	add     r3, sp, #0x20
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
	mov     r2, #0xe
	bl      0x200c7c0
	ldr     r0, [r4, #0x0]
	bl      0x200a93c
	ldr     r0, [r4, #0x0]
	bl      0x200a944
	ldr     r5, [pc, #0x5c] @ 0x21d21c8, (=0x21d3be4)
	add     r3, sp, #0x4
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	.hword  0x1f39 @ sub r1, r7, #0x4
	str     r0, [r3, #0x0]
	ldr     r0, [r4, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r4, r1]
	bl      0x200c8f0
	mov     r1, #0x1
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	mov     r2, r1
	mov     r3, r1
	bl      0x2098ffc
	mov     r1, r7
	add     r1, #0x3c
	str     r0, [r4, r1]
	bl      0x2035e38
	cmp     r0, #0x0
	beq     branch_21d21ac
	bl      0x2039734
.thumb
branch_21d21ac: @ 21d21ac :thumb
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff74
	add     sp, #0x54
	pop     {r4-r7,pc}
@ 0x21d21c0

.word 0x21d3c00 @ 0x21d21c0
.word 0x21d3bd0 @ 0x21d21c4
.word 0x21d3be4 @ 0x21d21c8
.thumb
Function_21d21cc: @ 21d21cc :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x209903c
	mov     r1, #0x6e
	lsl     r1, r1, #2
	ldr     r0, [r4, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r4, r1]
	bl      0x200c8b0
	mov     r0, #0x6e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x200c8d4
	bl      0x201dc3c
	pop     {r4,pc}
@ 0x21d21f8

.thumb
Function_21d21f8: @ 21d21f8 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x6f
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x200c7ec
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x2099160
	pop     {r4,pc}
@ 0x21d2212


.align 2, 0


.thumb
Function_21d2214: @ 21d2214 :thumb
	push    {r4,lr}
	mov     r4, r0
	cmp     r1, #0x0
	bne     branch_21d2242
	mov     r0, #0x7
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x2021e90
	mov     r0, #0x71
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      0x2021cc8
	mov     r0, #0x72
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      0x2021cc8
	pop     {r4,pc}
@ 0x21d2242

.thumb
branch_21d2242: @ 21d2242 :thumb
	mov     r0, #0x7
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	mov     r1, #0x9
	bl      0x2021e90
	mov     r0, #0x71
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x2021cc8
	mov     r0, #0x72
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x2021cc8
	pop     {r4,pc}
@ 0x21d2268

.thumb
Function_21d2268: @ 21d2268 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r6, r0
	mov     r5, r1
	add     r1, sp, #0x0
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	str     r0, [r1, #0x4]
	mov     r4, r2
	str     r0, [r1, #0x8]
	mov     r7, r3
	ldr     r0, [r4, #0x0]
	mov     r1, r7
	blx     0x20bcfd0
	str     r0, [r5, #0x0]
	ldr     r0, [r4, #0x4]
	mov     r1, r7
	blx     0x20bcfd0
	str     r0, [r5, #0x4]
	ldr     r0, [r4, #0x8]
	mov     r1, r7
	blx     0x20bcfd0
	add     r2, sp, #0x0
	str     r0, [r5, #0x8]
	ldmia   r2!, {r0,r1}
	stmia   r6!, {r0,r1}
	ldr     r0, [r2, #0x0]
	str     r0, [r6, #0x0]
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21d22aa


.align 2, 0


.thumb
Function_21d22ac: @ 21d22ac :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      0x2006840
	mov     r2, #0x1
	mov     r5, r0
	mov     r0, #0x3
	mov     r1, #0x2e
	lsl     r2, r2, #16
	bl      0x2017fc8
	mov     r1, #0x6f
	mov     r0, r4
	lsl     r1, r1, #2
	mov     r2, #0x2e
	bl      0x200681c
	mov     r2, #0x6f
	mov     r1, #0x0
	lsl     r2, r2, #2
	mov     r4, r0
	blx     MI_CpuFill8
	mov     r0, #0x2e
	str     r0, [r4, #0x0]
	str     r5, [r4, #0x10]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d22e4

.thumb
Function_21d22e4: @ 21d22e4 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r1
	bl      0x200682c
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x2
	blt     branch_21d2308
	cmp     r0, #0x5
	bgt     branch_21d2308
	mov     r0, r4
	add     r0, #0x40
	bl      Function_21d3820
	ldr     r0, [r4, #0x5c]
	bl      0x2099160
.thumb
branch_21d2308: @ 21d2308 :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x7
	bls     branch_21d2310
	b       branch_21d2442
@ 0x21d2310

.thumb
branch_21d2310: @ 21d2310 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d231c

Jumppoints_21d231c:
.hword branch_21d232c - Jumppoints_21d231c - 2
.hword branch_21d2372 - Jumppoints_21d231c - 2
.hword branch_21d238c - Jumppoints_21d231c - 2
.hword branch_21d23b6 - Jumppoints_21d231c - 2
.hword branch_21d23c4 - Jumppoints_21d231c - 2
.hword branch_21d23ee - Jumppoints_21d231c - 2
.hword branch_21d23fc - Jumppoints_21d231c - 2
.hword branch_21d240c - Jumppoints_21d231c - 2
.thumb
branch_21d232c: @ 21d232c :thumb
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      0x20177a4
	bl      0x201ff00
	bl      0x201ff68
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x10c] @ 0x21d2454, (=0xffffe0ff)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r2, [pc, #0x108] @ 0x21d2458, (=0x4001000)
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	mov     r0, #0x0
	mov     r1, r0
	bl      0x200f344
	mov     r0, #0x1
	mov     r1, #0x0
	bl      0x200f344
	mov     r0, #0x0
	bl      0x200f32c
	mov     r0, #0x1
	bl      0x200f32c
	b       branch_21d2448
@ 0x21d2372

.thumb
branch_21d2372: @ 21d2372 :thumb
	mov     r0, r4
	bl      Function_21d247c
	cmp     r0, #0x0
	bne     branch_21d2382
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r4,r5,pc}
@ 0x21d2382

.thumb
branch_21d2382: @ 21d2382 :thumb
	ldr     r0, [pc, #0xd8] @ 0x21d245c, (=0x21d252d)
	mov     r1, r4
	bl      SetMainLoopFunctionCall
	b       branch_21d2448
@ 0x21d238c

.thumb
branch_21d238c: @ 21d238c :thumb
	ldr     r1, [r4, #0x4]
	add     r0, r1, #0x1
	str     r0, [r4, #0x4]
	cmp     r1, #0x4
	bge     branch_21d239c
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r4,r5,pc}
@ 0x21d239c

.thumb
branch_21d239c: @ 21d239c :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	mov     r1, #0x6
	str     r1, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	ldr     r2, [r4, #0x0]
	mov     r3, r0
	str     r2, [sp, #0x8]
	mov     r2, r1
	bl      0x200f174
	b       branch_21d2448
@ 0x21d23b6

.thumb
branch_21d23b6: @ 21d23b6 :thumb
	bl      0x200f2ac
	cmp     r0, #0x0
	bne     branch_21d2448
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r4,r5,pc}
@ 0x21d23c4

.thumb
branch_21d23c4: @ 21d23c4 :thumb
	mov     r0, r4
	bl      Function_21d2928
	cmp     r0, #0x0
	bne     branch_21d23d4
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r4,r5,pc}
@ 0x21d23d4

.thumb
branch_21d23d4: @ 21d23d4 :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      0x200f174
	b       branch_21d2448
@ 0x21d23ee

.thumb
branch_21d23ee: @ 21d23ee :thumb
	bl      0x200f2ac
	cmp     r0, #0x0
	bne     branch_21d2448
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r4,r5,pc}
@ 0x21d23fc

.thumb
branch_21d23fc: @ 21d23fc :thumb
	mov     r0, r4
	bl      Function_21d24d4
	cmp     r0, #0x0
	bne     branch_21d2448
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r4,r5,pc}
@ 0x21d240c

.thumb
branch_21d240c: @ 21d240c :thumb
	mov     r0, #0x0
	mov     r1, r0
	bl      0x200f344
	mov     r0, #0x1
	mov     r1, #0x0
	bl      0x200f344
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      0x201ff00
	bl      0x201ff68
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x20] @ 0x21d2454, (=0xffffe0ff)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r2, [pc, #0x1c] @ 0x21d2458, (=0x4001000)
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	b       branch_21d2448
@ 0x21d2442

.thumb
branch_21d2442: @ 21d2442 :thumb
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4,r5,pc}
@ 0x21d2448

.thumb
branch_21d2448: @ 21d2448 :thumb
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d2454

.word 0xffffe0ff @ 0x21d2454
.word 0x4001000 @ 0x21d2458
.word 0x21d252d @ 0x21d245c
.thumb
Function_21d2460: @ 21d2460 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      0x200682c
	mov     r4, r0
	mov     r0, r5
	bl      0x2006830
	ldr     r0, [r4, #0x0]
	bl      0x201807c
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d247a


.align 2, 0


.thumb
Function_21d247c: @ 21d247c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x4]
	cmp     r1, #0x0
	beq     branch_21d2490
	cmp     r1, #0x1
	beq     branch_21d249c
	cmp     r1, #0x2
	beq     branch_21d24a8
	b       branch_21d24c8
@ 0x21d2490

.thumb
branch_21d2490: @ 21d2490 :thumb
	bl      Function_21d257c
	mov     r0, r4
	bl      Function_21d2634
	b       branch_21d24c8
@ 0x21d249c

.thumb
branch_21d249c: @ 21d249c :thumb
	bl      Function_21d2768
	mov     r0, r4
	bl      Function_21d270c
	b       branch_21d24c8
@ 0x21d24a8

.thumb
branch_21d24a8: @ 21d24a8 :thumb
	bl      Function_21d27d8
	mov     r0, r4
	mov     r1, r4
	ldr     r2, [r4, #0x0]
	add     r0, #0x40
	add     r1, #0x30
	bl      Function_21d3768
	mov     r0, r4
	bl      Function_21d2864
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d24c8

.thumb
branch_21d24c8: @ 21d24c8 :thumb
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d24d2


.align 2, 0


.thumb
Function_21d24d4: @ 21d24d4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x4]
	cmp     r1, #0x3
	bhi     branch_21d2520
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d24ea

Jumppoints_21d24ea:
.hword branch_21d24f2 - Jumppoints_21d24ea - 2
.hword branch_21d2506 - Jumppoints_21d24ea - 2
.hword branch_21d2512 - Jumppoints_21d24ea - 2
.hword branch_21d2518 - Jumppoints_21d24ea - 2
.thumb
branch_21d24f2: @ 21d24f2 :thumb
	bl      Function_21d2908
	mov     r0, r4
	add     r0, #0x40
	bl      Function_21d385c
	mov     r0, r4
	bl      Function_21d2858
	b       branch_21d2520
@ 0x21d2506

.thumb
branch_21d2506: @ 21d2506 :thumb
	bl      Function_21d2754
	mov     r0, r4
	bl      Function_21d27ac
	b       branch_21d2520
@ 0x21d2512

.thumb
branch_21d2512: @ 21d2512 :thumb
	bl      Function_21d260c
	b       branch_21d2520
@ 0x21d2518

.thumb
branch_21d2518: @ 21d2518 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d2520

.thumb
branch_21d2520: @ 21d2520 :thumb
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d252a


.align 2, 0


.thumb
Function_21d252c: @ 21d252c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x68]
	bl      0x201c2b8
	ldr     r0, [r4, #0x44]
	bl      0x2008a94
	bl      0x200c800
	bl      0x201dcac
	ldr     r3, [pc, #0xc] @ 0x21d2554, (=0x27e0000)
	ldr     r1, [pc, #0x10] @ 0x21d2558, (=0x3ff8)
	mov     r0, #0x1
	ldr     r2, [r3, r1]
	orr     r0, r2
	str     r0, [r3, r1]
	pop     {r4,pc}
@ 0x21d2552


.align 2


.word 0x27e0000 @ 0x21d2554
.word 0x3ff8 @ 0x21d2558
.thumb
Function_21d255c: @ 21d255c :thumb
	push    {r4,lr}
	add     sp, #-0x28
	ldr     r4, [pc, #0x14] @ 0x21d2578, (=0x21d3c70)
	add     r3, sp, #0x0
	mov     r2, #0x5
.thumb
branch_21d2566: @ 21d2566 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d2566
	add     r0, sp, #0x0
	bl      0x201fe94
	add     sp, #0x28
	pop     {r4,pc}
@ 0x21d2578

.word 0x21d3c70 @ 0x21d2578
.thumb
Function_21d257c: @ 21d257c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x6c
	mov     r5, r0
	bl      Function_21d255c
	ldr     r0, [r5, #0x0]
	bl      0x2018340
	add     r3, sp, #0x8
	ldr     r4, [pc, #0x70] @ 0x21d2600, (=0x21d3c2c)
	str     r0, [r5, #0x68]
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      0x2018368
	ldr     r4, [pc, #0x60] @ 0x21d2604, (=0x21d3c98)
	add     r3, sp, #0x18
	mov     r2, #0xa
.thumb
branch_21d25a8: @ 21d25a8 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d25a8
	ldr     r1, [pc, #0x54] @ 0x21d2608, (=0x21d3c20)
	ldr     r0, [r4, #0x0]
	ldrb    r2, [r1, #0x0]
	str     r0, [r3, #0x0]
	add     r0, sp, #0x4
	strb    r2, [r0, #0x0]
	ldrb    r2, [r1, #0x1]
	ldrb    r1, [r1, #0x2]
	add     r4, sp, #0x4
	strb    r2, [r0, #0x1]
	strb    r1, [r0, #0x2]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	add     r6, sp, #0x18
.thumb
branch_21d25cc: @ 21d25cc :thumb
	ldrb    r7, [r4, #0x0]
	ldr     r0, [r5, #0x68]
	mov     r2, r6
	mov     r1, r7
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r0, [r5, #0x68]
	mov     r1, r7
	bl      0x2019ebc
	ldr     r3, [r5, #0x0]
	mov     r0, r7
	mov     r1, #0x20
	mov     r2, #0x0
	bl      0x2019690
	ldr     r0, [sp, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r6, #0x1c
	str     r0, [sp, #0x0]
	cmp     r0, #0x3
	blt     branch_21d25cc
	add     sp, #0x6c
	pop     {r4-r7,pc}
@ 0x21d2600

.word 0x21d3c2c @ 0x21d2600
.word 0x21d3c98 @ 0x21d2604
.word 0x21d3c20 @ 0x21d2608
.thumb
Function_21d260c: @ 21d260c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x1
.thumb
branch_21d2612: @ 21d2612 :thumb
	lsl     r1, r4, #24
	ldr     r0, [r5, #0x68]
	lsr     r1, r1, #24
	bl      0x2019044
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x3
	blt     branch_21d2612
	ldr     r0, [r5, #0x68]
	mov     r1, #0x4
	bl      0x2019044
	ldr     r0, [r5, #0x68]
	bl      free
	pop     {r3-r5,pc}
@ 0x21d2632


.align 2, 0


.thumb
Function_21d2634: @ 21d2634 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r1, [r5, #0x0]
	mov     r0, #0x57
	bl      0x2006c24
	mov     r4, r0
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x68]
	ldr     r1, [r5, #0x0]
	mov     r2, r4
	mov     r3, #0x57
	bl      0x208c210
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x68]
	ldr     r1, [r5, #0x0]
	mov     r2, r4
	mov     r3, #0x57
	bl      0x208c210
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x20
	str     r0, [sp, #0xc]
	str     r1, [sp, #0x10]
	ldr     r0, [r5, #0x68]
	ldr     r1, [r5, #0x0]
	mov     r2, r4
	mov     r3, #0x57
	bl      0x208c210
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0xa0
	str     r0, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x68]
	ldr     r1, [r5, #0x0]
	mov     r2, r4
	mov     r3, #0x57
	bl      0x208c210
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x68]
	ldr     r1, [r5, #0x0]
	mov     r2, r4
	mov     r3, #0x57
	bl      0x208c210
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x68]
	ldr     r1, [r5, #0x0]
	mov     r2, r4
	mov     r3, #0x57
	bl      0x208c210
	mov     r0, r4
	bl      0x2006ca8
	ldr     r0, [r5, #0x68]
	mov     r1, #0x2
	bl      0x201c3c0
	ldr     r0, [r5, #0x68]
	mov     r1, #0x4
	bl      0x201c3c0
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x21d270c

.thumb
Function_21d270c: @ 21d270c :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	mov     r1, r4
	ldr     r0, [r4, #0x68]
	ldr     r2, [pc, #0x38] @ 0x21d2750, (=0x21d3c24)
	add     r1, #0x6c
	bl      0x201a8d4
	mov     r0, r4
	add     r0, #0x6c
	mov     r1, #0x0
	bl      Function_201ada4
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	ldrb    r0, [r0, #0xb]
	mov     r2, r1
	mov     r3, #0xe
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x68]
	bl      0x200dd0c
	mov     r1, #0x1e
	ldr     r2, [r4, #0x0]
	mov     r0, #0x0
	lsl     r1, r1, #4
	bl      0x2002e98
	add     sp, #0x8
	pop     {r4,pc}
@ 0x21d274e


.align 2


.word 0x21d3c24 @ 0x21d2750
.thumb
Function_21d2754: @ 21d2754 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x6c
	bl      0x201acf4
	add     r4, #0x6c
	mov     r0, r4
	bl      Function_201a8fc
	pop     {r4,pc}
@ 0x21d2768

.thumb
Function_21d2768: @ 21d2768 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	ldr     r2, [pc, #0x38] @ 0x21d27a8, (=0x1ce)
	ldr     r3, [r6, #0x0]
	mov     r0, #0x0
	mov     r1, #0x1a
	bl      Function_200b144
	str     r0, [r6, #0x18]
	ldr     r2, [r6, #0x0]
	mov     r0, #0x1
	mov     r1, #0x40
	bl      Function_200b368
	str     r0, [r6, #0x1c]
	ldr     r1, [r6, #0x0]
	mov     r0, #0x40
	bl      Function_2023790
	str     r0, [r6, #0x20]
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_21d2794: @ 21d2794 :thumb
	ldr     r0, [r6, #0x18]
	mov     r1, r4
	bl      Function_200b1ec
	str     r0, [r5, #0x24]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x3
	blt     branch_21d2794
	pop     {r4-r6,pc}
@ 0x21d27a8

.word 0x1ce @ 0x21d27a8
.thumb
Function_21d27ac: @ 21d27ac :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_21d27b4: @ 21d27b4 :thumb
	ldr     r0, [r5, #0x24]
	bl      Function_20237bc
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x3
	blt     branch_21d27b4
	ldr     r0, [r6, #0x20]
	bl      Function_20237bc
	ldr     r0, [r6, #0x1c]
	bl      0x200b3f0
	ldr     r0, [r6, #0x18]
	bl      Function_200b190
	pop     {r4-r6,pc}
@ 0x21d27d6


.align 2, 0


.thumb
Function_21d27d8: @ 21d27d8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x10]
	mov     r1, #0x5
	ldr     r0, [r0, #0x0]
	mov     r2, #0x0
	str     r0, [r4, #0x30]
	ldr     r0, [r4, #0x10]
	ldr     r0, [r0, #0x0]
	bl      GetPkmnData
	strh    r0, [r4, #0x34]
	ldr     r0, [r4, #0x10]
	ldr     r0, [r0, #0x0]
	bl      Call_DecidePkmnGender
	mov     r1, r4
	add     r1, #0x37
	strb    r0, [r1, #0x0]
	ldr     r0, [r4, #0x10]
	ldr     r0, [r0, #0x0]
	bl      Function_2075bcc
	mov     r1, r4
	add     r1, #0x36
	strb    r0, [r1, #0x0]
	ldr     r0, [r4, #0x10]
	mov     r1, #0x70
	ldr     r0, [r0, #0x0]
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, r0
	ldrh    r0, [r4, #0x34]
	mov     r2, #0x1c
	bl      0x20759cc
	mov     r1, #0x1
	eor     r1, r0
	mov     r0, r4
	add     r0, #0x38
	strb    r1, [r0, #0x0]
	ldr     r1, [r4, #0x0]
	mov     r0, #0xc
	bl      Function_2023790
	str     r0, [r4, #0x3c]
	ldr     r0, [r4, #0x10]
	ldr     r2, [r4, #0x3c]
	ldr     r0, [r0, #0x0]
	mov     r1, #0x77
	bl      GetPkmnData
	mov     r1, r4
	ldr     r0, [r4, #0x10]
	add     r1, #0x36
	ldrb    r1, [r1, #0x0]
	ldr     r0, [r0, #0x4]
	bl      0x2098eac
	add     r4, #0x39
	strb    r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x21d2856


.align 2, 0


.thumb
Function_21d2858: @ 21d2858 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d2860, (=0x20237bd)
	ldr     r0, [r0, #0x3c]
	bx      r3
@ 0x21d285e


.align 2


.word 0x20237bd @ 0x21d2860
.thumb
Function_21d2864: @ 21d2864 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x44
	mov     r4, r0
	ldr     r1, [r4, #0x0]
	mov     r0, #0x20
	bl      0x201dbec
	ldr     r0, [r4, #0x0]
	bl      0x200c6e4
	add     r2, sp, #0x24
	ldr     r5, [pc, #0x84] @ 0x21d2900, (=0x21d3c50)
	str     r0, [r4, #0x7c]
	ldmia   r5!, {r0,r1}
	mov     r3, r2
	stmia   r2!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r5!, {r0,r1}
	ldr     r6, [pc, #0x74] @ 0x21d2904, (=0x21d3c3c)
	stmia   r2!, {r0,r1}
	add     r5, sp, #0x10
	ldmia   r6!, {r0,r1}
	mov     r2, r5
	stmia   r5!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r5!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r1, r3
	str     r0, [r5, #0x0]
	ldr     r0, [r4, #0x7c]
	mov     r3, #0x20
	bl      0x200c73c
	ldr     r0, [r4, #0x0]
	bl      0x200a93c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x2
	ldr     r0, [r4, #0x0]
	mov     r2, r1
	mov     r3, #0x1
	bl      0x2098ffc
	str     r0, [r4, #0x5c]
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r1, [r4, #0x10]
	ldr     r0, [r4, #0x5c]
	ldrh    r1, [r1, #0x8]
	mov     r2, #0x64
	mov     r3, #0x5a
	bl      0x209916c
	str     r0, [r4, #0x60]
	ldr     r0, [r0, #0x4]
	mov     r1, #0x0
	bl      0x200d3f4
	bl      0x2035e38
	cmp     r0, #0x0
	beq     branch_21d28f4
	bl      0x2039734
.thumb
branch_21d28f4: @ 21d28f4 :thumb
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	add     sp, #0x44
	pop     {r3-r6,pc}
@ 0x21d2900

.word 0x21d3c50 @ 0x21d2900
.word 0x21d3c3c @ 0x21d2904
.thumb
Function_21d2908: @ 21d2908 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x5c]
	ldr     r1, [r4, #0x60]
	bl      0x2099370
	ldr     r0, [r4, #0x5c]
	bl      0x209903c
	ldr     r0, [r4, #0x7c]
	bl      0x200c8d4
	bl      0x201dc3c
	pop     {r4,pc}
@ 0x21d2926


.align 2, 0


.thumb
Function_21d2928: @ 21d2928 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x4]
	cmp     r1, #0x8
	bhi     branch_21d29a8
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d293e

Jumppoints_21d293e:
.hword branch_21d2950 - Jumppoints_21d293e - 2
.hword branch_21d295c - Jumppoints_21d293e - 2
.hword branch_21d2968 - Jumppoints_21d293e - 2
.hword branch_21d2974 - Jumppoints_21d293e - 2
.hword branch_21d2980 - Jumppoints_21d293e - 2
.hword branch_21d298c - Jumppoints_21d293e - 2
.hword branch_21d2998 - Jumppoints_21d293e - 2
.hword branch_21d29a0 - Jumppoints_21d293e - 2
.hword branch_21d29a8 - Jumppoints_21d293e - 2
.thumb
branch_21d2950: @ 21d2950 :thumb
	mov     r1, r4
	add     r1, #0x80
	bl      Function_21d2a04
	str     r0, [r4, #0x4]
	b       branch_21d29b0
@ 0x21d295c

.thumb
branch_21d295c: @ 21d295c :thumb
	mov     r1, r4
	add     r1, #0x80
	bl      Function_21d2ae0
	str     r0, [r4, #0x4]
	b       branch_21d29b0
@ 0x21d2968

.thumb
branch_21d2968: @ 21d2968 :thumb
	mov     r1, r4
	add     r1, #0x80
	bl      Function_21d2af0
	str     r0, [r4, #0x4]
	b       branch_21d29b0
@ 0x21d2974

.thumb
branch_21d2974: @ 21d2974 :thumb
	mov     r1, r4
	add     r1, #0x80
	bl      Function_21d2b3c
	str     r0, [r4, #0x4]
	b       branch_21d29b0
@ 0x21d2980

.thumb
branch_21d2980: @ 21d2980 :thumb
	mov     r1, r4
	add     r1, #0x80
	bl      Function_21d2b54
	str     r0, [r4, #0x4]
	b       branch_21d29b0
@ 0x21d298c

.thumb
branch_21d298c: @ 21d298c :thumb
	mov     r1, r4
	add     r1, #0x80
	bl      Function_21d2b84
	str     r0, [r4, #0x4]
	b       branch_21d29b0
@ 0x21d2998

.thumb
branch_21d2998: @ 21d2998 :thumb
	bl      Function_21d2b94
	str     r0, [r4, #0x4]
	b       branch_21d29b0
@ 0x21d29a0

.thumb
branch_21d29a0: @ 21d29a0 :thumb
	bl      Function_21d2c08
	str     r0, [r4, #0x4]
	b       branch_21d29b0
@ 0x21d29a8

.thumb
branch_21d29a8: @ 21d29a8 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d29b0

.thumb
branch_21d29b0: @ 21d29b0 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d29b4

.thumb
Function_21d29b4: @ 21d29b4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r2
	mov     r3, r5
	mov     r0, r1
	mov     r2, #0x1c
	add     r3, #0xcc
	mul     r0, r2
	add     r4, r3, r0
	mov     r0, r4
	mov     r1, #0x0
	blx     MI_CpuFill8
	str     r5, [r4, #0x14]
	mov     r0, r6
	mov     r1, r4
	mov     r2, #0x0
	bl      0x200d9e8
	str     r0, [r4, #0x18]
	ldr     r0, [r5, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x4]
	pop     {r4-r6,pc}
@ 0x21d29e4

.thumb
Function_21d29e4: @ 21d29e4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x18]
	bl      Call_RemoveTaskFromTaskList
	ldr     r1, [r4, #0x14]
	mov     r2, #0x1c
	ldr     r0, [r1, #0x4]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r1, #0x4]
	mov     r0, r4
	mov     r1, #0x0
	blx     MI_CpuFill8
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d2a04

.thumb
Function_21d2a04: @ 21d2a04 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	mov     r4, r1
	mov     r2, #0x4f
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x0
	lsl     r2, r2, #2
	blx     MI_CpuFill8
	ldr     r0, [r5, #0x60]
	mov     r2, #0x18
	ldr     r0, [r0, #0x4]
	ldr     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xc4
	str     r1, [r0, #0x0]
	ldr     r1, [r5, #0x58]
	mov     r0, r4
	add     r0, #0xc8
	str     r1, [r0, #0x0]
	add     r5, #0x39
	ldrb    r0, [r5, #0x0]
	mov     r1, #0x2
	lsl     r1, r1, #18
	str     r0, [r4, #0x8]
	str     r2, [r4, #0x0]
	mov     r0, #0xe
	str     r1, [r4, #0xc]
	lsl     r0, r0, #16
	str     r0, [r4, #0x10]
	str     r1, [r4, #0x18]
	lsl     r0, r2, #14
	str     r0, [r4, #0x1c]
	lsr     r0, r1, #7
	str     r0, [r4, #0x30]
	str     r0, [r4, #0x34]
	lsr     r0, r1, #8
	str     r0, [r4, #0x3c]
	str     r0, [r4, #0x40]
	mov     r1, r4
	str     r2, [r4, #0x64]
	mov     r0, #0x0
	str     r0, [r4, #0x60]
	mov     r0, r4
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	add     r1, #0xc
	bl      0x2021c50
	mov     r0, r4
	mov     r1, r4
	add     r0, #0xc
	add     r1, #0x18
	add     r2, sp, #0xc
	blx     0x20bd1b0
	mov     r1, r4
	mov     r3, #0x6
	add     r0, sp, #0x0
	add     r1, #0x48
	add     r2, sp, #0xc
	lsl     r3, r3, #14
	bl      Function_21d2268
	mov     r0, r4
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      0x2021cf8
	mov     r0, r4
	add     r0, #0xc4
	mov     r1, r4
	ldr     r0, [r0, #0x0]
	add     r1, #0x30
	bl      0x2021c70
	ldr     r2, [pc, #0x2c] @ 0x21d2ad0, (=0x21d2c51)
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d29b4
	ldr     r2, [pc, #0x28] @ 0x21d2ad4, (=0x21d2d7d)
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d29b4
	ldr     r2, [pc, #0x20] @ 0x21d2ad8, (=0x21d2f4d)
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_21d29b4
	ldr     r2, [pc, #0x1c] @ 0x21d2adc, (=0x21d3095)
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_21d29b4
	mov     r0, #0x1
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x21d2ace


.align 2


.word 0x21d2c51 @ 0x21d2ad0
.word 0x21d2d7d @ 0x21d2ad4
.word 0x21d2f4d @ 0x21d2ad8
.word 0x21d3095 @ 0x21d2adc
.thumb
Function_21d2ae0: @ 21d2ae0 :thumb
	ldr     r0, [r1, #0x4]
	cmp     r0, #0x0
	beq     branch_21d2aea
	mov     r0, #0x1
	bx      lr
@ 0x21d2aea

.thumb
branch_21d2aea: @ 21d2aea :thumb
	mov     r0, #0x2
	bx      lr
@ 0x21d2aee


.align 2, 0


.thumb
Function_21d2af0: @ 21d2af0 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	ldr     r0, [r4, #0x30]
	mov     r1, #0x70
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, r4
	add     r1, #0x39
	ldrb    r1, [r1, #0x0]
	cmp     r1, #0x1
	ldr     r1, [r4, #0x0]
	bne     branch_21d2b22
	lsl     r0, r0, #24
	str     r1, [sp, #0x0]
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	ldrh    r1, [r4, #0x34]
	mov     r0, #0xb
	mov     r2, #0x0
	mov     r3, #0x7f
	bl      0x20059d0
	b       branch_21d2b36
@ 0x21d2b22

.thumb
branch_21d2b22: @ 21d2b22 :thumb
	lsl     r0, r0, #24
	str     r1, [sp, #0x0]
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	ldrh    r1, [r4, #0x34]
	mov     r2, r0
	mov     r3, #0x7f
	bl      0x20059d0
.thumb
branch_21d2b36: @ 21d2b36 :thumb
	mov     r0, #0x3
	add     sp, #0x8
	pop     {r4,pc}
@ 0x21d2b3c

.thumb
Function_21d2b3c: @ 21d2b3c :thumb
	push    {r3,lr}
	bl      0x200598c
	cmp     r0, #0x0
	beq     branch_21d2b4a
	mov     r0, #0x3
	pop     {r3,pc}
@ 0x21d2b4a

.thumb
branch_21d2b4a: @ 21d2b4a :thumb
	mov     r0, #0x0
	bl      0x200592c
	mov     r0, #0x4
	pop     {r3,pc}
@ 0x21d2b54

.thumb
Function_21d2b54: @ 21d2b54 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	add     r0, #0x68
	mov     r1, #0x0
	mov     r2, #0x5c
	blx     MI_CpuFill8
	ldr     r2, [pc, #0x14] @ 0x21d2b7c, (=0x21d3291)
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d29b4
	ldr     r2, [pc, #0x10] @ 0x21d2b80, (=0x21d33dd)
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d29b4
	mov     r0, #0x5
	pop     {r4,pc}
@ 0x21d2b7c

.word 0x21d3291 @ 0x21d2b7c
.word 0x21d33dd @ 0x21d2b80
.thumb
Function_21d2b84: @ 21d2b84 :thumb
	ldr     r0, [r1, #0x4]
	cmp     r0, #0x0
	beq     branch_21d2b8e
	mov     r0, #0x5
	bx      lr
@ 0x21d2b8e

.thumb
branch_21d2b8e: @ 21d2b8e :thumb
	mov     r0, #0x6
	bx      lr
@ 0x21d2b92


.align 2, 0


.thumb
Function_21d2b94: @ 21d2b94 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r1, #0x1
	mov     r4, r0
	add     r0, #0x6c
	mov     r2, r1
	mov     r3, #0xe
	bl      0x200e060
	mov     r0, r4
	add     r0, #0x6c
	mov     r1, #0xff
	bl      Function_201ada4
	ldr     r0, [r4, #0x20]
	bl      0x20237e8
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r3, #0x2
	str     r3, [sp, #0x4]
	ldr     r0, [r4, #0x1c]
	ldr     r2, [r4, #0x3c]
	mov     r1, #0x0
	bl      0x200b48c
	mov     r2, r4
	add     r2, #0x39
	ldrb    r2, [r2, #0x0]
	ldr     r0, [r4, #0x1c]
	ldr     r1, [r4, #0x20]
	lsl     r2, r2, #2
	add     r2, r4, r2
	ldr     r2, [r2, #0x24]
	bl      Function_200c388
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	ldrb    r0, [r0, #0xa]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x21d2c04, (=0x1020f)
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	mov     r0, r4
	ldr     r2, [r4, #0x20]
	add     r0, #0x6c
	bl      0x201d78c
	strh    r0, [r4, #0xc]
	mov     r0, #0x0
	strh    r0, [r4, #0xe]
	mov     r0, #0x7
	add     sp, #0x10
	pop     {r4,pc}
@ 0x21d2c04

.word 0x1020f @ 0x21d2c04
.thumb
Function_21d2c08: @ 21d2c08 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrh    r0, [r4, #0xc]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d724
	cmp     r0, #0x0
	beq     branch_21d2c1e
	mov     r0, #0x7
	pop     {r4,pc}
@ 0x21d2c1e

.thumb
branch_21d2c1e: @ 21d2c1e :thumb
	ldr     r0, [pc, #0x2c] @ 0x21d2c4c, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	bne     branch_21d2c36
	ldrh    r1, [r4, #0xe]
	add     r0, r1, #0x1
	strh    r0, [r4, #0xe]
	cmp     r1, #0x5a
	bcs     branch_21d2c36
	mov     r0, #0x7
	pop     {r4,pc}
@ 0x21d2c36

.thumb
branch_21d2c36: @ 21d2c36 :thumb
	mov     r0, r4
	add     r0, #0x6c
	mov     r1, #0x1
	bl      0x200e084
	add     r4, #0x6c
	mov     r0, r4
	bl      0x201acf4
	mov     r0, #0x8
	pop     {r4,pc}
@ 0x21d2c4c

.word 0x21bf67c @ 0x21d2c4c
.thumb
Function_21d2c50: @ 21d2c50 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r6, r1
	ldr     r4, [r6, #0x14]
	mov     r7, r0
	mov     r0, #0x18
	mov     r5, r4
	str     r0, [r6, #0x4]
	mov     r0, #0x1
	add     r5, #0xc
	lsl     r0, r0, #12
	str     r0, [r5, #0x24]
	str     r0, [r5, #0x28]
	lsr     r0, r0, #1
	str     r0, [r5, #0x30]
	str     r0, [r5, #0x34]
	mov     r0, r5
	mov     r1, r5
	add     r0, #0x24
	add     r1, #0x30
	add     r2, sp, #0xc
	blx     0x20bd1b0
	ldr     r0, [r6, #0x4]
	cmp     r0, #0x0
	ble     branch_21d2c96
	lsl     r0, r0, #12
	blx     0x20e17b4
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_21d2ca4
@ 0x21d2c96

.thumb
branch_21d2c96: @ 21d2c96 :thumb
	lsl     r0, r0, #12
	blx     0x20e17b4
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     0x20e1a9c
.thumb
branch_21d2ca4: @ 21d2ca4 :thumb
	blx     0x20e1740
	mov     r1, r5
	mov     r3, r0
	add     r0, sp, #0x0
	add     r1, #0x3c
	add     r2, sp, #0xc
	bl      Function_21d2268
	mov     r0, r4
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      0x2021cac
	mov     r0, r4
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      0x2021cf8
	add     r4, #0xc4
	add     r5, #0x24
	ldr     r0, [r4, #0x0]
	mov     r1, r5
	bl      0x2021c70
	ldr     r1, [pc, #0xc] @ 0x21d2ce8, (=0x21d2ced)
	mov     r0, r7
	bl      0x201cecc
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21d2ce6


.align 2


.word 0x21d2ced @ 0x21d2ce8
.thumb
Function_21d2cec: @ 21d2cec :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r1
	ldr     r6, [r5, #0x14]
	add     r1, sp, #0x0
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	mov     r4, r6
	str     r0, [r1, #0x4]
	str     r0, [r1, #0x8]
	add     r4, #0xc
	ldr     r0, [r4, #0x3c]
	ldr     r2, [r5, #0xc]
	asr     r1, r0, #31
	asr     r3, r2, #31
	blx     _ll_mul
	mov     r2, r0
	mov     r0, #0x2
	mov     r3, r1
	mov     r7, #0x0
	lsl     r0, r0, #10
	add     r0, r2, r0
	adc     r3, r7
	ldr     r1, [r4, #0x24]
	lsl     r2, r3, #20
	lsr     r0, r0, #12
	orr     r0, r2
	sub     r0, r1, r0
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x40]
	ldr     r2, [r5, #0xc]
	asr     r1, r0, #31
	asr     r3, r2, #31
	blx     _ll_mul
	mov     r3, #0x2
	ldr     r2, [r4, #0x28]
	mov     r4, r7
	lsl     r3, r3, #10
	add     r3, r0, r3
	adc     r1, r4
	lsl     r0, r1, #20
	lsr     r1, r3, #12
	orr     r1, r0
	sub     r0, r2, r1
	str     r0, [sp, #0x4]
	mov     r0, r6
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	add     r1, sp, #0x0
	bl      0x2021c70
	mov     r0, #0x1
	ldr     r1, [r5, #0xc]
	lsl     r0, r0, #12
	add     r0, r1, r0
	str     r0, [r5, #0xc]
	ldr     r0, [r5, #0x4]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r5, #0x4]
	bne     branch_21d2d78
	add     r6, #0xc4
	ldr     r0, [r6, #0x0]
	mov     r1, r7
	bl      0x2021cac
	mov     r0, r5
	bl      Function_21d29e4
.thumb
branch_21d2d78: @ 21d2d78 :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21d2d7c

.thumb
Function_21d2d7c: @ 21d2d7c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r1
	ldr     r6, [r5, #0x14]
	mov     r7, r0
	add     r3, sp, #0xc
	mov     r0, #0x0
	str     r0, [r3, #0x0]
	str     r0, [r3, #0x4]
	str     r0, [r3, #0x8]
	mov     r2, #0x18
	mov     r1, #0x2
	mov     r4, r6
	mov     r0, #0xe
	str     r2, [r5, #0x4]
	lsl     r1, r1, #18
	add     r4, #0xc
	str     r1, [r6, #0xc]
	lsl     r0, r0, #16
	str     r0, [r4, #0x4]
	str     r1, [r4, #0xc]
	lsl     r0, r2, #14
	str     r0, [r4, #0x10]
	mov     r0, r4
	add     r0, #0xc
	mov     r1, r4
	mov     r2, r3
	blx     0x20bd1b0
	ldr     r0, [r5, #0x4]
	cmp     r0, #0x0
	ble     branch_21d2dce
	lsl     r0, r0, #12
	blx     0x20e17b4
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_21d2ddc
@ 0x21d2dce

.thumb
branch_21d2dce: @ 21d2dce :thumb
	lsl     r0, r0, #12
	blx     0x20e17b4
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     0x20e1a9c
.thumb
branch_21d2ddc: @ 21d2ddc :thumb
	blx     0x20e1740
	mov     r1, r4
	mov     r3, r0
	add     r0, sp, #0x0
	add     r1, #0x18
	add     r2, sp, #0xc
	bl      Function_21d2268
	ldr     r0, [r5, #0x4]
	cmp     r0, #0x0
	ble     branch_21d2e06
	lsl     r0, r0, #12
	blx     0x20e17b4
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_21d2e14
@ 0x21d2e06

.thumb
branch_21d2e06: @ 21d2e06 :thumb
	lsl     r0, r0, #12
	blx     0x20e17b4
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     0x20e1a9c
.thumb
branch_21d2e14: @ 21d2e14 :thumb
	blx     0x20e1740
	mov     r1, r0
	mov     r0, #0x2d
	lsl     r0, r0, #14
	blx     0x20bcfd0
	str     r0, [r4, #0x48]
	ldr     r0, [r5, #0x4]
	cmp     r0, #0x0
	ble     branch_21d2e3c
	lsl     r0, r0, #12
	blx     0x20e17b4
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_21d2e4a
@ 0x21d2e3c

.thumb
branch_21d2e3c: @ 21d2e3c :thumb
	lsl     r0, r0, #12
	blx     0x20e17b4
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     0x20e1a9c
.thumb
branch_21d2e4a: @ 21d2e4a :thumb
	blx     0x20e1740
	mov     r1, r0
	mov     r0, #0x1
	lsl     r0, r0, #12
	blx     0x20bcfd0
	add     r6, #0xc4
	str     r0, [r4, #0x4c]
	ldr     r0, [r6, #0x0]
	mov     r1, r4
	bl      0x2021c50
	ldr     r1, [pc, #0x8] @ 0x21d2e70, (=0x21d2e75)
	mov     r0, r7
	bl      0x201cecc
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21d2e70

.word 0x21d2e75 @ 0x21d2e70
.thumb
Function_21d2e74: @ 21d2e74 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r1
	ldr     r6, [r5, #0x14]
	ldr     r2, [r5, #0xc]
	mov     r4, r6
	add     r4, #0xc
	ldr     r0, [r4, #0x18]
	asr     r3, r2, #31
	asr     r1, r0, #31
	blx     _ll_mul
	mov     r2, r0
	mov     r0, #0x2
	mov     r3, r1
	mov     r7, #0x0
	lsl     r0, r0, #10
	add     r0, r2, r0
	adc     r3, r7
	ldr     r1, [r6, #0xc]
	lsl     r2, r3, #20
	lsr     r0, r0, #12
	orr     r0, r2
	add     r0, r1, r0
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x1c]
	ldr     r2, [r5, #0xc]
	asr     r1, r0, #31
	asr     r3, r2, #31
	blx     _ll_mul
	mov     r2, r0
	mov     r0, #0x2
	mov     r3, r1
	lsl     r0, r0, #10
	add     r0, r2, r0
	adc     r3, r7
	ldr     r1, [r4, #0x4]
	lsl     r2, r3, #20
	lsr     r0, r0, #12
	orr     r0, r2
	add     r0, r1, r0
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x48]
	ldr     r2, [r5, #0xc]
	asr     r1, r0, #31
	asr     r3, r2, #31
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, r7
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	lsl     r0, r1, #4
	lsr     r0, r0, #16
	bl      0x201d250
	ldr     r2, [pc, #0x58] @ 0x21d2f48, (=0xfffc0000)
	asr     r1, r0, #31
	asr     r3, r2, #18
	blx     _ll_mul
	mov     r3, r7
	mov     r7, #0x2
	mov     r2, r1
	lsl     r7, r7, #10
	add     r0, r0, r7
	adc     r2, r3
	lsl     r2, r2, #20
	lsr     r0, r0, #12
	orr     r0, r2
	asr     r4, r0, #31
	lsr     r2, r0, #20
	lsl     r4, r4, #12
	orr     r4, r2
	lsl     r0, r0, #12
	add     r2, r0, r7
	adc     r4, r3
	ldr     r1, [sp, #0x4]
	lsl     r0, r4, #20
	lsr     r2, r2, #12
	orr     r2, r0
	add     r0, r1, r2
	add     r6, #0xc4
	str     r0, [sp, #0x4]
	ldr     r0, [r6, #0x0]
	add     r1, sp, #0x0
	bl      0x2021c50
	ldr     r1, [r5, #0xc]
	lsl     r0, r7, #1
	add     r0, r1, r0
	str     r0, [r5, #0xc]
	ldr     r0, [r5, #0x4]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r5, #0x4]
	bne     branch_21d2f44
	mov     r0, r5
	bl      Function_21d29e4
.thumb
branch_21d2f44: @ 21d2f44 :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21d2f48

.word 0xfffc0000 @ 0x21d2f48
.thumb
Function_21d2f4c: @ 21d2f4c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r6, r1
	ldr     r4, [r6, #0x14]
	mov     r7, r0
	mov     r5, r4
	mov     r1, #0x18
	mov     r0, #0x1
	add     r5, #0x68
	str     r1, [r6, #0x4]
	lsl     r0, r0, #12
	str     r0, [r5, #0x24]
	str     r0, [r5, #0x28]
	lsl     r0, r1, #8
	str     r0, [r5, #0x30]
	str     r0, [r5, #0x34]
	mov     r0, r5
	mov     r1, r5
	add     r0, #0x30
	add     r1, #0x24
	add     r2, sp, #0xc
	blx     0x20bd1b0
	ldr     r0, [r6, #0x4]
	cmp     r0, #0x0
	ble     branch_21d2f92
	lsl     r0, r0, #12
	blx     0x20e17b4
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_21d2fa0
@ 0x21d2f92

.thumb
branch_21d2f92: @ 21d2f92 :thumb
	lsl     r0, r0, #12
	blx     0x20e17b4
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     0x20e1a9c
.thumb
branch_21d2fa0: @ 21d2fa0 :thumb
	blx     0x20e1740
	add     r5, #0x3c
	mov     r3, r0
	add     r0, sp, #0x0
	mov     r1, r5
	add     r2, sp, #0xc
	bl      Function_21d2268
	mov     r0, r4
	add     r0, #0xc8
	mov     r1, #0xc
	mov     r2, r1
	ldr     r0, [r0, #0x0]
	add     r2, #0xf4
	bl      0x2007dec
	add     r4, #0xc8
	mov     r1, #0xd
	mov     r2, r1
	ldr     r0, [r4, #0x0]
	add     r2, #0xf3
	bl      0x2007dec
	ldr     r1, [pc, #0x8] @ 0x21d2fdc, (=0x21d2fe1)
	mov     r0, r7
	bl      0x201cecc
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21d2fdc

.word 0x21d2fe1 @ 0x21d2fdc
.thumb
Function_21d2fe0: @ 21d2fe0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r1
	ldr     r6, [r5, #0x14]
	ldr     r0, [r5, #0xc]
	mov     r4, r6
	add     r4, #0x68
	str     r0, [sp, #0x4]
	asr     r7, r0, #31
	ldr     r0, [r4, #0x40]
	ldr     r2, [sp, #0x4]
	asr     r1, r0, #31
	mov     r3, r7
	blx     _ll_mul
	mov     r3, #0x2
	mov     r2, r0
	lsl     r3, r3, #10
	add     r3, r2, r3
	ldr     r2, [pc, #0x88] @ 0x21d3090, (=0x0)
	ldr     r0, [r4, #0x28]
	adc     r1, r2
	lsr     r2, r3, #12
	lsl     r1, r1, #20
	orr     r2, r1
	add     r0, r0, r2
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x3c]
	ldr     r2, [sp, #0x4]
	asr     r1, r0, #31
	mov     r3, r7
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, r0
	mov     r0, r6
	mov     r7, r1
	add     r0, #0xc8
	lsl     r2, r2, #10
	mov     r1, #0xc
	add     r3, r3, r2
	ldr     r2, [pc, #0x5c] @ 0x21d3090, (=0x0)
	ldr     r4, [r4, #0x24]
	adc     r7, r2
	lsl     r2, r7, #20
	lsr     r3, r3, #12
	orr     r3, r2
	add     r2, r4, r3
	ldr     r0, [r0, #0x0]
	asr     r2, r2, #4
	bl      0x2007dec
	mov     r0, r6
	add     r0, #0xc8
	ldr     r2, [sp, #0x0]
	ldr     r0, [r0, #0x0]
	mov     r1, #0xd
	asr     r2, r2, #4
	bl      0x2007dec
	mov     r0, #0x1
	ldr     r1, [r5, #0xc]
	lsl     r0, r0, #12
	add     r0, r1, r0
	str     r0, [r5, #0xc]
	ldr     r0, [r5, #0x4]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r5, #0x4]
	bne     branch_21d308a
	mov     r0, r6
	add     r0, #0xc8
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	mov     r2, #0x80
	bl      0x2007dec
	add     r6, #0xc8
	ldr     r0, [r6, #0x0]
	mov     r1, #0x1
	mov     r2, #0x60
	bl      0x2007dec
	mov     r0, r5
	bl      Function_21d29e4
.thumb
branch_21d308a: @ 21d308a :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d308e


.align 2


.word 0x0 @ 0x21d3090
.thumb
Function_21d3094: @ 21d3094 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r6, r1
	ldr     r4, [r6, #0x14]
	mov     r7, r0
	mov     r0, #0x18
	mov     r1, #0x2
	mov     r5, r4
	str     r0, [r6, #0x4]
	lsl     r1, r1, #18
	add     r5, #0x68
	str     r1, [r4, #0x68]
	lsl     r0, r0, #14
	str     r0, [r5, #0x4]
	mov     r0, #0x7
	str     r1, [r5, #0xc]
	lsl     r0, r0, #16
	str     r0, [r5, #0x10]
	mov     r0, r5
	add     r0, #0xc
	mov     r1, r5
	add     r2, sp, #0xc
	blx     0x20bd1b0
	ldr     r0, [r6, #0x4]
	cmp     r0, #0x0
	ble     branch_21d30dc
	lsl     r0, r0, #12
	blx     0x20e17b4
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_21d30ea
@ 0x21d30dc

.thumb
branch_21d30dc: @ 21d30dc :thumb
	lsl     r0, r0, #12
	blx     0x20e17b4
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     0x20e1a9c
.thumb
branch_21d30ea: @ 21d30ea :thumb
	blx     0x20e1740
	mov     r1, r5
	mov     r3, r0
	add     r0, sp, #0x0
	add     r1, #0x18
	add     r2, sp, #0xc
	bl      Function_21d2268
	mov     r0, r4
	add     r0, #0xc8
	ldr     r2, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	asr     r2, r2, #12
	bl      0x2007dec
	add     r4, #0xc8
	ldr     r2, [r5, #0x4]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	asr     r2, r2, #12
	bl      0x2007dec
	ldr     r1, [pc, #0xc] @ 0x21d3128, (=0x21d312d)
	mov     r0, r7
	bl      0x201cecc
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21d3126


.align 2


.word 0x21d312d @ 0x21d3128
.thumb
Function_21d312c: @ 21d312c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r6, r1
	ldr     r5, [r6, #0x14]
	ldr     r7, [r6, #0xc]
	mov     r4, r5
	str     r0, [sp, #0x0]
	asr     r0, r7, #31
	str     r0, [sp, #0x8]
	add     r4, #0x68
	ldr     r0, [r4, #0x1c]
	ldr     r3, [sp, #0x8]
	asr     r1, r0, #31
	mov     r2, r7
	blx     _ll_mul
	mov     r3, #0x2
	mov     r2, r0
	lsl     r3, r3, #10
	add     r3, r2, r3
	ldr     r2, [pc, #0x108] @ 0x21d3260, (=0x0)
	ldr     r0, [r4, #0x4]
	adc     r1, r2
	lsr     r2, r3, #12
	lsl     r1, r1, #20
	orr     r2, r1
	add     r0, r0, r2
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x18]
	ldr     r3, [sp, #0x8]
	asr     r1, r0, #31
	mov     r2, r7
	blx     _ll_mul
	mov     r12, r0
	ldr     r2, [r5, #0x68]
	mov     r7, r1
	str     r2, [sp, #0xc]
	mov     r2, #0x2
	mov     r0, r5
	add     r0, #0xc8
	mov     r1, #0x0
	mov     r3, r12
	lsl     r2, r2, #10
	add     r2, r3, r2
	adc     r7, r1
	lsl     r3, r7, #20
	lsr     r2, r2, #12
	orr     r2, r3
	ldr     r3, [sp, #0xc]
	ldr     r0, [r0, #0x0]
	add     r2, r3, r2
	asr     r2, r2, #12
	bl      0x2007dec
	mov     r0, r5
	add     r0, #0xc8
	ldr     r2, [sp, #0x4]
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	asr     r2, r2, #12
	bl      0x2007dec
	mov     r0, r4
	add     r0, #0x50
	ldrh    r0, [r0, #0x0]
	.hword  0x1f00 @ sub r0, r0, #0x4
	mov     r1, r0
	mul     r1, r0
	mov     r0, #0x10
	sub     r0, r0, r1
	neg     r0, r0
	cmp     r0, #0x0
	ble     branch_21d31d2
	lsl     r0, r0, #12
	blx     0x20e17b4
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_21d31e0
@ 0x21d31d2

.thumb
branch_21d31d2: @ 21d31d2 :thumb
	lsl     r0, r0, #12
	blx     0x20e17b4
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     0x20e1a9c
.thumb
branch_21d31e0: @ 21d31e0 :thumb
	blx     0x20e1740
	ldr     r2, [pc, #0x7c] @ 0x21d3264, (=0x1666)
	asr     r1, r0, #31
	mov     r3, #0x0
	blx     _ll_mul
	mov     r3, r1
	mov     r1, #0x4
	mov     r7, r0
	mov     r0, r5
	add     r0, #0xc8
	lsl     r2, r1, #9
	add     r7, r7, r2
	ldr     r2, [pc, #0x60] @ 0x21d3260, (=0x0)
	ldr     r0, [r0, #0x0]
	adc     r3, r2
	lsl     r2, r3, #20
	lsr     r3, r7, #12
	orr     r3, r2
	asr     r2, r3, #12
	bl      0x2007dec
	mov     r0, r4
	add     r0, #0x50
	ldrh    r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x50
	strh    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x50
	ldrh    r0, [r0, #0x0]
	cmp     r0, #0x8
	bls     branch_21d322e
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0x50
	strh    r1, [r0, #0x0]
.thumb
branch_21d322e: @ 21d322e :thumb
	mov     r0, #0x1
	ldr     r1, [r6, #0xc]
	lsl     r0, r0, #12
	add     r0, r1, r0
	str     r0, [r6, #0xc]
	ldr     r1, [r6, #0x4]
	.hword  0x1e48 @ sub r0, r1, #0x1
	str     r0, [r6, #0x4]
	cmp     r1, #0x0
	bne     branch_21d325c
	add     r5, #0xc8
	ldr     r0, [r5, #0x0]
	mov     r1, #0x4
	mov     r2, #0x0
	bl      0x2007dec
	mov     r0, #0x0
	add     r4, #0x50
	strh    r0, [r4, #0x0]
	ldr     r0, [sp, #0x0]
	ldr     r1, [pc, #0x10] @ 0x21d3268, (=0x21d326d)
	bl      0x201cecc
.thumb
branch_21d325c: @ 21d325c :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d3260

.word 0x0 @ 0x21d3260
.word 0x1666 @ 0x21d3264
.word 0x21d326d @ 0x21d3268
.thumb
Function_21d326c: @ 21d326c :thumb
	push    {r3,lr}
	ldr     r3, [r1, #0x14]
	add     r3, #0x68
	mov     r0, r3
	add     r0, #0x50
	ldrh    r2, [r0, #0x0]
	mov     r0, r3
	add     r0, #0x50
	ldrh    r0, [r0, #0x0]
	add     r3, #0x50
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r3, #0x0]
	cmp     r2, #0x4
	bcc     branch_21d328e
	mov     r0, r1
	bl      Function_21d29e4
.thumb
branch_21d328e: @ 21d328e :thumb
	pop     {r3,pc}
@ 0x21d3290

.thumb
Function_21d3290: @ 21d3290 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r6, r1
	ldr     r4, [r6, #0x14]
	mov     r7, r0
	mov     r5, r4
	mov     r1, #0x8
	mov     r0, #0x6
	add     r5, #0x68
	str     r1, [r6, #0x4]
	lsl     r0, r0, #10
	str     r0, [r5, #0x24]
	str     r0, [r5, #0x28]
	lsl     r0, r1, #9
	str     r0, [r5, #0x30]
	str     r0, [r5, #0x34]
	mov     r0, r5
	mov     r1, r5
	add     r0, #0x30
	add     r1, #0x24
	add     r2, sp, #0xc
	blx     0x20bd1b0
	ldr     r0, [r6, #0x4]
	cmp     r0, #0x0
	ble     branch_21d32d6
	lsl     r0, r0, #12
	blx     0x20e17b4
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_21d32e4
@ 0x21d32d6

.thumb
branch_21d32d6: @ 21d32d6 :thumb
	lsl     r0, r0, #12
	blx     0x20e17b4
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     0x20e1a9c
.thumb
branch_21d32e4: @ 21d32e4 :thumb
	blx     0x20e1740
	add     r5, #0x3c
	mov     r3, r0
	add     r0, sp, #0x0
	mov     r1, r5
	add     r2, sp, #0xc
	bl      Function_21d2268
	mov     r0, r4
	add     r0, #0xc8
	mov     r1, #0xc
	ldr     r0, [r0, #0x0]
	lsl     r2, r1, #5
	bl      0x2007dec
	add     r4, #0xc8
	mov     r2, #0x6
	ldr     r0, [r4, #0x0]
	mov     r1, #0xd
	lsl     r2, r2, #6
	bl      0x2007dec
	ldr     r1, [pc, #0xc] @ 0x21d3320, (=0x21d3325)
	mov     r0, r7
	bl      0x201cecc
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21d331e


.align 2


.word 0x21d3325 @ 0x21d3320
.thumb
Function_21d3324: @ 21d3324 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r1
	ldr     r6, [r5, #0x14]
	ldr     r0, [r5, #0xc]
	mov     r4, r6
	add     r4, #0x68
	str     r0, [sp, #0x4]
	asr     r7, r0, #31
	ldr     r0, [r4, #0x40]
	ldr     r2, [sp, #0x4]
	asr     r1, r0, #31
	mov     r3, r7
	blx     _ll_mul
	mov     r3, #0x2
	mov     r2, r0
	lsl     r3, r3, #10
	add     r3, r2, r3
	ldr     r2, [pc, #0x8c] @ 0x21d33d8, (=0x0)
	ldr     r0, [r4, #0x28]
	adc     r1, r2
	lsr     r2, r3, #12
	lsl     r1, r1, #20
	orr     r2, r1
	add     r0, r0, r2
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x3c]
	ldr     r2, [sp, #0x4]
	asr     r1, r0, #31
	mov     r3, r7
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, r0
	mov     r0, r6
	mov     r7, r1
	add     r0, #0xc8
	lsl     r2, r2, #10
	mov     r1, #0xc
	add     r3, r3, r2
	ldr     r2, [pc, #0x60] @ 0x21d33d8, (=0x0)
	ldr     r4, [r4, #0x24]
	adc     r7, r2
	lsl     r2, r7, #20
	lsr     r3, r3, #12
	orr     r3, r2
	add     r2, r4, r3
	ldr     r0, [r0, #0x0]
	asr     r2, r2, #4
	bl      0x2007dec
	mov     r0, r6
	add     r0, #0xc8
	ldr     r2, [sp, #0x0]
	ldr     r0, [r0, #0x0]
	mov     r1, #0xd
	asr     r2, r2, #4
	bl      0x2007dec
	mov     r0, #0x1
	ldr     r1, [r5, #0xc]
	lsl     r0, r0, #12
	add     r0, r1, r0
	str     r0, [r5, #0xc]
	ldr     r0, [r5, #0x4]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r5, #0x4]
	bne     branch_21d33d2
	mov     r0, r6
	add     r0, #0xc8
	mov     r1, #0xc
	mov     r2, r1
	ldr     r0, [r0, #0x0]
	add     r2, #0xf4
	bl      0x2007dec
	add     r6, #0xc8
	mov     r1, #0xd
	mov     r2, r1
	ldr     r0, [r6, #0x0]
	add     r2, #0xf3
	bl      0x2007dec
	mov     r0, r5
	bl      Function_21d29e4
.thumb
branch_21d33d2: @ 21d33d2 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d33d6


.align 2


.word 0x0 @ 0x21d33d8
.thumb
Function_21d33dc: @ 21d33dc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r6, r1
	ldr     r4, [r6, #0x14]
	mov     r7, r0
	mov     r0, #0x8
	mov     r5, r4
	str     r0, [r6, #0x4]
	lsl     r1, r0, #16
	mov     r0, #0x7
	add     r5, #0x68
	str     r1, [r4, #0x68]
	lsl     r0, r0, #16
	str     r0, [r5, #0x4]
	mov     r0, #0x6
	str     r1, [r5, #0xc]
	lsl     r0, r0, #16
	str     r0, [r5, #0x10]
	mov     r0, r5
	add     r0, #0xc
	mov     r1, r5
	add     r2, sp, #0xc
	blx     0x20bd1b0
	ldr     r0, [r6, #0x4]
	cmp     r0, #0x0
	ble     branch_21d3424
	lsl     r0, r0, #12
	blx     0x20e17b4
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_21d3432
@ 0x21d3424

.thumb
branch_21d3424: @ 21d3424 :thumb
	lsl     r0, r0, #12
	blx     0x20e17b4
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     0x20e1a9c
.thumb
branch_21d3432: @ 21d3432 :thumb
	blx     0x20e1740
	mov     r1, r5
	mov     r3, r0
	add     r0, sp, #0x0
	add     r1, #0x18
	add     r2, sp, #0xc
	bl      Function_21d2268
	ldr     r0, [r6, #0x4]
	cmp     r0, #0x0
	ble     branch_21d345c
	lsl     r0, r0, #12
	blx     0x20e17b4
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_21d346a
@ 0x21d345c

.thumb
branch_21d345c: @ 21d345c :thumb
	lsl     r0, r0, #12
	blx     0x20e17b4
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     0x20e1a9c
.thumb
branch_21d346a: @ 21d346a :thumb
	blx     0x20e1740
	mov     r1, r0
	mov     r0, #0x2d
	lsl     r0, r0, #14
	blx     0x20bcfd0
	str     r0, [r5, #0x48]
	mov     r0, r4
	add     r0, #0xc8
	ldr     r2, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	asr     r2, r2, #12
	bl      0x2007dec
	add     r4, #0xc8
	ldr     r2, [r5, #0x4]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	asr     r2, r2, #12
	bl      0x2007dec
	ldr     r1, [pc, #0x8] @ 0x21d34a4, (=0x21d34a9)
	mov     r0, r7
	bl      0x201cecc
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21d34a4

.word 0x21d34a9 @ 0x21d34a4
.thumb
Function_21d34a8: @ 21d34a8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r6, r1
	ldr     r5, [r6, #0x14]
	ldr     r7, [r6, #0xc]
	mov     r4, r5
	str     r0, [sp, #0x0]
	asr     r0, r7, #31
	str     r0, [sp, #0x8]
	add     r4, #0x68
	ldr     r0, [r4, #0x1c]
	ldr     r3, [sp, #0x8]
	asr     r1, r0, #31
	mov     r2, r7
	blx     _ll_mul
	mov     r3, #0x2
	mov     r2, r0
	lsl     r3, r3, #10
	add     r3, r2, r3
	ldr     r2, [pc, #0xd0] @ 0x21d35a4, (=0x0)
	ldr     r0, [r4, #0x4]
	adc     r1, r2
	lsr     r2, r3, #12
	lsl     r1, r1, #20
	orr     r2, r1
	add     r0, r0, r2
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x18]
	ldr     r3, [sp, #0x8]
	asr     r1, r0, #31
	mov     r2, r7
	blx     _ll_mul
	mov     r12, r0
	ldr     r2, [r5, #0x68]
	mov     r7, r1
	str     r2, [sp, #0xc]
	mov     r2, #0x2
	mov     r0, r5
	add     r0, #0xc8
	mov     r1, #0x0
	mov     r3, r12
	lsl     r2, r2, #10
	add     r2, r3, r2
	adc     r7, r1
	lsl     r3, r7, #20
	lsr     r2, r2, #12
	orr     r2, r3
	ldr     r3, [sp, #0xc]
	ldr     r0, [r0, #0x0]
	add     r2, r3, r2
	asr     r2, r2, #12
	bl      0x2007dec
	mov     r0, r5
	add     r0, #0xc8
	ldr     r2, [sp, #0x4]
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	asr     r2, r2, #12
	bl      0x2007dec
	ldr     r0, [r4, #0x48]
	ldr     r2, [r6, #0xc]
	asr     r1, r0, #31
	asr     r3, r2, #31
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	lsl     r0, r1, #4
	lsr     r0, r0, #16
	bl      0x201d250
	ldr     r2, [pc, #0x5c] @ 0x21d35a8, (=0xffffa000)
	asr     r1, r0, #31
	asr     r3, r2, #15
	blx     _ll_mul
	mov     r4, r1
	mov     r1, #0x4
	mov     r3, r0
	mov     r0, r5
	add     r0, #0xc8
	mov     r7, #0x0
	lsl     r2, r1, #9
	add     r2, r3, r2
	adc     r4, r7
	lsl     r3, r4, #20
	lsr     r2, r2, #12
	orr     r2, r3
	ldr     r0, [r0, #0x0]
	asr     r2, r2, #12
	bl      0x2007dec
	mov     r2, r6
	add     r2, #0xc
	mov     r0, #0x1
	ldr     r1, [r2, #0x0]
	lsl     r0, r0, #12
	add     r0, r1, r0
	str     r0, [r2, #0x0]
	ldr     r0, [r6, #0x4]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r6, #0x4]
	bne     branch_21d359e
	add     r5, #0xc8
	ldr     r0, [r5, #0x0]
	mov     r1, #0x4
	mov     r2, r7
	bl      0x2007dec
	ldr     r0, [sp, #0x0]
	ldr     r1, [pc, #0x10] @ 0x21d35ac, (=0x21d35b1)
	bl      0x201cecc
.thumb
branch_21d359e: @ 21d359e :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d35a2


.align 2


.word 0x0 @ 0x21d35a4
.word 0xffffa000 @ 0x21d35a8
.word 0x21d35b1 @ 0x21d35ac
.thumb
Function_21d35b0: @ 21d35b0 :thumb
	push    {r3,lr}
	ldr     r3, [r1, #0x4]
	add     r2, r3, #0x1
	str     r2, [r1, #0x4]
	cmp     r3, #0x4
	blt     branch_21d35e0
	ldr     r2, [r1, #0x14]
	ldr     r2, [r2, #0x8]
	cmp     r2, #0x0
	beq     branch_21d35ca
	cmp     r2, #0x1
	beq     branch_21d35d2
	b       branch_21d35da
@ 0x21d35ca

.thumb
branch_21d35ca: @ 21d35ca :thumb
	ldr     r1, [pc, #0x18] @ 0x21d35e4, (=0x21d35ed)
	bl      0x201cecc
	pop     {r3,pc}
@ 0x21d35d2

.thumb
branch_21d35d2: @ 21d35d2 :thumb
	ldr     r1, [pc, #0x14] @ 0x21d35e8, (=0x21d36cd)
	bl      0x201cecc
	pop     {r3,pc}
@ 0x21d35da

.thumb
branch_21d35da: @ 21d35da :thumb
	mov     r0, r1
	bl      Function_21d29e4
.thumb
branch_21d35e0: @ 21d35e0 :thumb
	pop     {r3,pc}
@ 0x21d35e2


.align 2


.word 0x21d35ed @ 0x21d35e4
.word 0x21d36cd @ 0x21d35e8
.thumb
Function_21d35ec: @ 21d35ec :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x14]
	mov     r1, #0x0
	add     r0, #0x68
	mov     r2, #0x5c
	blx     MI_CpuFill8
	mov     r0, #0x3
	str     r0, [r4, #0x4]
	ldr     r1, [pc, #0x8] @ 0x21d360c, (=0x21d3611)
	mov     r0, r5
	bl      0x201cecc
	pop     {r3-r5,pc}
@ 0x21d360c

.word 0x21d3611 @ 0x21d360c
.thumb
Function_21d3610: @ 21d3610 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	ldr     r7, [r5, #0x14]
	mov     r4, r7
	add     r4, #0x68
	mov     r0, r4
	add     r0, #0x50
	ldrh    r0, [r0, #0x0]
	.hword  0x1f00 @ sub r0, r0, #0x4
	mov     r1, r0
	mul     r1, r0
	mov     r0, #0x10
	sub     r0, r0, r1
	neg     r0, r0
	cmp     r0, #0x0
	ble     branch_21d3642
	lsl     r0, r0, #12
	blx     0x20e17b4
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_21d3650
@ 0x21d3642

.thumb
branch_21d3642: @ 21d3642 :thumb
	lsl     r0, r0, #12
	blx     0x20e17b4
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     0x20e1a9c
.thumb
branch_21d3650: @ 21d3650 :thumb
	blx     0x20e1740
	ldr     r2, [pc, #0x6c] @ 0x21d36c4, (=0x1666)
	asr     r1, r0, #31
	mov     r3, #0x0
	blx     _ll_mul
	mov     r6, r1
	mov     r1, #0x4
	mov     r3, r0
	mov     r0, r7
	add     r0, #0xc8
	lsl     r2, r1, #9
	add     r3, r3, r2
	ldr     r2, [pc, #0x58] @ 0x21d36c8, (=0x0)
	ldr     r0, [r0, #0x0]
	adc     r6, r2
	lsl     r2, r6, #20
	lsr     r3, r3, #12
	orr     r3, r2
	asr     r2, r3, #12
	bl      0x2007dec
	mov     r1, r4
	mov     r0, #0x0
	add     r1, #0x52
	strh    r0, [r1, #0x0]
	mov     r1, r4
	add     r1, #0x50
	ldrh    r1, [r1, #0x0]
	add     r2, r1, #0x1
	mov     r1, r4
	add     r1, #0x50
	strh    r2, [r1, #0x0]
	mov     r1, r4
	add     r1, #0x50
	ldrh    r1, [r1, #0x0]
	cmp     r1, #0x8
	bls     branch_21d36a8
	add     r4, #0x50
	strh    r0, [r4, #0x0]
	ldr     r0, [r5, #0x4]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r5, #0x4]
.thumb
branch_21d36a8: @ 21d36a8 :thumb
	ldr     r0, [r5, #0x4]
	cmp     r0, #0x0
	bne     branch_21d36c0
	add     r7, #0xc8
	ldr     r0, [r7, #0x0]
	mov     r1, #0x4
	mov     r2, #0x0
	bl      0x2007dec
	mov     r0, r5
	bl      Function_21d29e4
.thumb
branch_21d36c0: @ 21d36c0 :thumb
	pop     {r3-r7,pc}
@ 0x21d36c2


.align 2


.word 0x1666 @ 0x21d36c4
.word 0x0 @ 0x21d36c8
.thumb
Function_21d36cc: @ 21d36cc :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x14]
	mov     r1, #0x0
	add     r0, #0x68
	mov     r2, #0x5c
	blx     MI_CpuFill8
	mov     r0, #0x20
	str     r0, [r4, #0x4]
	ldr     r1, [pc, #0x8] @ 0x21d36ec, (=0x21d36f1)
	mov     r0, r5
	bl      0x201cecc
	pop     {r3-r5,pc}
@ 0x21d36ec

.word 0x21d36f1 @ 0x21d36ec
.thumb
Function_21d36f0: @ 21d36f0 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	ldr     r6, [r5, #0x14]
	mov     r4, r6
	add     r4, #0x68
	mov     r0, r4
	add     r0, #0x50
	ldrh    r0, [r0, #0x0]
	bl      0x201d250
	asr     r1, r0, #31
	lsr     r2, r0, #19
	lsl     r1, r1, #13
	orr     r1, r2
	mov     r2, #0x2
	lsl     r3, r0, #13
	mov     r0, #0x0
	lsl     r2, r2, #10
	add     r2, r3, r2
	adc     r1, r0
	lsl     r1, r1, #20
	lsr     r2, r2, #12
	orr     r2, r1
	mov     r1, r4
	add     r1, #0x50
	ldrh    r3, [r1, #0x0]
	ldr     r1, [pc, #0x3c] @ 0x21d3764, (=0x167)
	cmp     r3, r1
	bls     branch_21d372c
	b       branch_21d3734
@ 0x21d372c

.thumb
branch_21d372c: @ 21d372c :thumb
	mov     r0, r4
	add     r0, #0x50
	ldrh    r0, [r0, #0x0]
	add     r0, #0x5a
.thumb
branch_21d3734: @ 21d3734 :thumb
	add     r4, #0x50
	strh    r0, [r4, #0x0]
	mov     r0, r6
	add     r0, #0xc8
	ldr     r0, [r0, #0x0]
	mov     r1, #0x3
	asr     r2, r2, #12
	bl      0x2007dec
	ldr     r0, [r5, #0x4]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r5, #0x4]
	bne     branch_21d3760
	add     r6, #0xc8
	ldr     r0, [r6, #0x0]
	mov     r1, #0x3
	mov     r2, #0x0
	bl      0x2007dec
	mov     r0, r5
	bl      Function_21d29e4
.thumb
branch_21d3760: @ 21d3760 :thumb
	pop     {r4-r6,pc}
@ 0x21d3762


.align 2


.word 0x167 @ 0x21d3764
.thumb
Function_21d3768: @ 21d3768 :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	mov     r4, r2
	mov     r1, #0x0
	mov     r2, #0x1c
	mov     r5, r0
	blx     MI_CpuFill8
	blx     0x20b28cc
	blx     0x20bf9ac
	blx     0x20bfb4c
	ldr     r0, [pc, #0x7c] @ 0x21d3804, (=0x4000060)
	ldr     r1, [pc, #0x80] @ 0x21d3808, (=0xffffcffd)
	ldrh    r2, [r0, #0x0]
	ldr     r3, [pc, #0x80] @ 0x21d380c, (=0xcffb)
	and     r2, r1
	strh    r2, [r0, #0x0]
	ldrh    r2, [r0, #0x0]
	and     r2, r3
	strh    r2, [r0, #0x0]
	add     r2, r1, #0x2
	ldrh    r6, [r0, #0x0]
	.hword  0x1c89 @ add r1, r1, #0x2
	sub     r3, #0x1c
	and     r6, r2
	mov     r2, #0x8
	orr     r2, r6
	strh    r2, [r0, #0x0]
	ldrh    r2, [r0, #0x0]
	and     r2, r1
	mov     r1, #0x10
	orr     r1, r2
	strh    r1, [r0, #0x0]
	ldrh    r1, [r0, #0x0]
	and     r1, r3
	strh    r1, [r0, #0x0]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	blx     0x20bfc74
	mov     r0, #0x0
	ldr     r2, [pc, #0x48] @ 0x21d3810, (=0x7fff)
	mov     r1, r0
	mov     r3, #0x3f
	str     r0, [sp, #0x0]
	blx     0x20bfd58
	ldr     r1, [pc, #0x40] @ 0x21d3814, (=0x4000540)
	mov     r0, #0x2
	str     r0, [r1, #0x0]
	ldr     r0, [pc, #0x40] @ 0x21d3818, (=0xbfff0000)
	str     r0, [r1, #0x40]
	mov     r0, r5
	mov     r1, r4
	bl      Function_21d3870
	mov     r0, r5
	mov     r1, r7
	mov     r2, r4
	bl      Function_21d38d0
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff0c
	ldr     r1, [pc, #0x24] @ 0x21d381c, (=0x4000008)
	mov     r0, #0x3
	ldrh    r2, [r1, #0x0]
	bic     r2, r0
	mov     r0, #0x1
	orr     r0, r2
	strh    r0, [r1, #0x0]
	pop     {r3-r7,pc}
@ 0x21d3804

.word 0x4000060 @ 0x21d3804
.word 0xffffcffd @ 0x21d3808
.word 0xcffb @ 0x21d380c
.word 0x7fff @ 0x21d3810
.word 0x4000540 @ 0x21d3814
.word 0xbfff0000 @ 0x21d3818
.word 0x4000008 @ 0x21d381c
.thumb
Function_21d3820: @ 21d3820 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Call_G3X_Reset
	bl      0x20203ec
	ldr     r2, [pc, #0x24] @ 0x21d3854, (=0x4000440)
	mov     r3, #0x0
	mov     r1, r2
	str     r3, [r2, #0x0]
	add     r1, #0x14
	str     r3, [r1, #0x0]
	mov     r0, #0x2
	str     r0, [r2, #0x0]
	str     r3, [r1, #0x0]
	blx     0x20af480
	blx     0x20a73c0
	ldr     r0, [r4, #0x4]
	bl      0x2007768
	ldr     r0, [pc, #0x8] @ 0x21d3858, (=0x4000540)
	mov     r1, #0x1
	str     r1, [r0, #0x0]
	pop     {r4,pc}
@ 0x21d3854

.word 0x4000440 @ 0x21d3854
.word 0x4000540 @ 0x21d3858
.thumb
Function_21d385c: @ 21d385c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      0x20203b8
	ldr     r0, [r4, #0x4]
	bl      0x2007b6c
	pop     {r4,pc}
@ 0x21d386e


.align 2, 0


.thumb
Function_21d3870: @ 21d3870 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x1c
	ldr     r5, [pc, #0x50] @ 0x21d38c8, (=0x21d3cec)
	mov     r4, r0
	mov     r2, r1
	ldmia   r5!, {r0,r1}
	add     r3, sp, #0x10
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	add     r1, sp, #0x8
	str     r0, [r3, #0x0]
	mov     r0, #0x0
	strh    r0, [r1, #0x0]
	strh    r0, [r1, #0x2]
	strh    r0, [r1, #0x4]
	strh    r0, [r1, #0x6]
	mov     r0, r2
	bl      0x20203ac
	str     r0, [r4, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	ldr     r3, [pc, #0x2c] @ 0x21d38cc, (=0x5c1)
	str     r0, [sp, #0x4]
	add     r0, sp, #0x10
	lsl     r1, r1, #16
	add     r2, sp, #0x8
	bl      0x2020738
	mov     r1, #0x19
	ldr     r2, [r4, #0x0]
	mov     r0, #0x0
	lsl     r1, r1, #14
	bl      0x20206bc
	ldr     r0, [r4, #0x0]
	bl      0x20206b0
	ldr     r0, [r4, #0x0]
	bl      0x20203d4
	add     sp, #0x1c
	pop     {r4,r5,pc}
@ 0x21d38c8

.word 0x21d3cec @ 0x21d38c8
.word 0x5c1 @ 0x21d38cc
.thumb
Function_21d38d0: @ 21d38d0 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x20
	mov     r5, r0
	mov     r0, r2
	mov     r4, r1
	bl      0x200762c
	str     r0, [r5, #0x4]
	ldr     r1, [r4, #0x0]
	add     r0, sp, #0x10
	mov     r2, #0x2
	bl      Function_2075ef4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x4]
	add     r1, sp, #0x10
	mov     r2, #0x80
	mov     r3, #0x60
	bl      0x2007c34
	ldrb    r2, [r4, #0x8]
	mov     r1, #0x23
	mov     r6, r0
	bl      0x2007dec
	str     r6, [r5, #0x18]
	add     sp, #0x20
	pop     {r4-r6,pc}



Unknown_21d3910: @ 0x21d3910
.incbin "./baserom/overlay/overlay_0079.bin", 0x2b90, 0x21d3da0 - 0x21d3910


@end 0x21d3da0




