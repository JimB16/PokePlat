

.section .iwram65, "ax"


.thumb
Function_222dce0: @ 222dce0 :thumb
	push    {r3,lr}
	mov     r1, #0x16
	lsl     r1, r1, #4
	ldr     r0, [r0, r1]
	bl      LoadFlagAdress
	mov     r1, #0x2
	mov     r2, #0x35
	bl      Function_206af3c
	pop     {r3,pc}
@ 0x222dcf6


.align 2, 0
.thumb
Function_222dcf8: @ 222dcf8 :thumb
	push    {r3,lr}
	mov     r1, #0x16
	lsl     r1, r1, #4
	ldr     r0, [r0, r1]
	bl      LoadVariableAreaAdressItemList
	ldr     r1, [pc, #0x10] @ 0x222dd18, (=0x1c1)
	mov     r2, #0x36
	bl      Function_207d730
	cmp     r0, #0x0
	beq     branch_222dd14
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x222dd14

.thumb
branch_222dd14: @ 222dd14 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x222dd18

.word 0x1c1 @ 0x222dd18
.thumb
Function_222dd1c: @ 222dd1c :thumb
	mov     r0, #0x1
	bx      lr
@ 0x222dd20

.thumb
Function_222dd20: @ 222dd20 :thumb
	push    {r3-r5,lr}
	ldrb    r4, [r1, #0x1b]
	mov     r5, r0
	mov     r1, r4
	sub     r1, #0x14
	cmp     r1, #0x1
	bhi     branch_222dd38
	bl      Function_222dce0
	cmp     r0, #0x0
	bne     branch_222dd38
	mov     r4, #0x1d
.thumb
branch_222dd38: @ 222dd38 :thumb
	mov     r0, r4
	sub     r0, #0x16
	cmp     r0, #0x5
	bhi     branch_222dd4c
	mov     r0, r5
	bl      Function_222dd1c
	cmp     r0, #0x0
	bne     branch_222dd4c
	mov     r4, #0x1d
.thumb
branch_222dd4c: @ 222dd4c :thumb
	mov     r0, r4
	sub     r0, #0x12
	cmp     r0, #0x1
	bhi     branch_222dd60
	mov     r0, r5
	bl      Function_222dcf8
	cmp     r0, #0x0
	bne     branch_222dd60
	mov     r4, #0x1d
.thumb
branch_222dd60: @ 222dd60 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x222dd64

.thumb
Function_222dd64: @ 222dd64 :thumb
	sub     r0, #0x12
	cmp     r0, #0x9
	bhi     branch_222dd8e
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x222dd76

Jumppoints_222dd76:
.hword branch_222dd8a - Jumppoints_222dd76 - 2
.hword branch_222dd8a - Jumppoints_222dd76 - 2
.hword branch_222dd8e - Jumppoints_222dd76 - 2
.hword branch_222dd8e - Jumppoints_222dd76 - 2
.hword branch_222dd8a - Jumppoints_222dd76 - 2
.hword branch_222dd8a - Jumppoints_222dd76 - 2
.hword branch_222dd8a - Jumppoints_222dd76 - 2
.hword branch_222dd8a - Jumppoints_222dd76 - 2
.hword branch_222dd8a - Jumppoints_222dd76 - 2
.hword branch_222dd8a - Jumppoints_222dd76 - 2
.thumb
branch_222dd8a: @ 222dd8a :thumb
	mov     r0, #0x1
	bx      lr
@ 0x222dd8e

.thumb
branch_222dd8e: @ 222dd8e :thumb
	mov     r0, #0x0
	bx      lr
@ 0x222dd92


.align 2, 0


.thumb
Function_222dd94: @ 222dd94 :thumb
	push    {r3,lr}
	sub     r0, #0x12
	cmp     r0, #0x9
	bhi     branch_222ddcc
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x222dda8

Jumppoints_222dda8:
.hword branch_222ddbc - Jumppoints_222dda8 - 2
.hword branch_222ddbc - Jumppoints_222dda8 - 2
.hword branch_222ddcc - Jumppoints_222dda8 - 2
.hword branch_222ddcc - Jumppoints_222dda8 - 2
.hword branch_222ddc0 - Jumppoints_222dda8 - 2
.hword branch_222ddc0 - Jumppoints_222dda8 - 2
.hword branch_222ddc8 - Jumppoints_222dda8 - 2
.hword branch_222ddc8 - Jumppoints_222dda8 - 2
.hword branch_222ddc4 - Jumppoints_222dda8 - 2
.hword branch_222ddc4 - Jumppoints_222dda8 - 2
.thumb
branch_222ddbc: @ 222ddbc :thumb
	mov     r0, #0xb
	pop     {r3,pc}
@ 0x222ddc0

.thumb
branch_222ddc0: @ 222ddc0 :thumb
	mov     r0, #0xd
	pop     {r3,pc}
@ 0x222ddc4

.thumb
branch_222ddc4: @ 222ddc4 :thumb
	mov     r0, #0xf
	pop     {r3,pc}
@ 0x222ddc8

.thumb
branch_222ddc8: @ 222ddc8 :thumb
	mov     r0, #0xe
	pop     {r3,pc}
@ 0x222ddcc

.thumb
branch_222ddcc: @ 222ddcc :thumb
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x222ddd4

.thumb
Function_222ddd4: @ 222ddd4 :thumb
	sub     r0, #0x9
	cmp     r0, #0x5
	bhi     branch_222ddf6
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x222dde6

Jumppoints_222dde6:
.hword branch_222ddf2 - Jumppoints_222dde6 - 2
.hword branch_222ddf2 - Jumppoints_222dde6 - 2
.hword branch_222ddf2 - Jumppoints_222dde6 - 2
.hword branch_222ddf2 - Jumppoints_222dde6 - 2
.hword branch_222ddf2 - Jumppoints_222dde6 - 2
.hword branch_222ddf2 - Jumppoints_222dde6 - 2
.thumb
branch_222ddf2: @ 222ddf2 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x222ddf6

.thumb
branch_222ddf6: @ 222ddf6 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x222ddfa


.align 2, 0


.thumb
Function_222ddfc: @ 222ddfc :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_222ddd4
	cmp     r0, #0x0
	beq     branch_222de0c
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x222de0c

.thumb
branch_222de0c: @ 222de0c :thumb
	sub     r4, #0xf
	cmp     r4, #0xc
	bhi     branch_222de3c
	add     r0, r4, r4
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x222de1e

Jumppoints_222de1e:
.hword branch_222de38 - Jumppoints_222de1e - 2
.hword branch_222de3c - Jumppoints_222de1e - 2
.hword branch_222de3c - Jumppoints_222de1e - 2
.hword branch_222de3c - Jumppoints_222de1e - 2
.hword branch_222de38 - Jumppoints_222de1e - 2
.hword branch_222de3c - Jumppoints_222de1e - 2
.hword branch_222de38 - Jumppoints_222de1e - 2
.hword branch_222de3c - Jumppoints_222de1e - 2
.hword branch_222de38 - Jumppoints_222de1e - 2
.hword branch_222de3c - Jumppoints_222de1e - 2
.hword branch_222de38 - Jumppoints_222de1e - 2
.hword branch_222de3c - Jumppoints_222de1e - 2
.hword branch_222de38 - Jumppoints_222de1e - 2
.thumb
branch_222de38: @ 222de38 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x222de3c

.thumb
branch_222de3c: @ 222de3c :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x222de40

.thumb
Function_222de40: @ 222de40 :thumb
	cmp     r0, #0x7
	bhi     branch_222de64
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x222de50

Jumppoints_222de50:
.hword branch_222de64 - Jumppoints_222de50 - 2
.hword branch_222de64 - Jumppoints_222de50 - 2
.hword branch_222de60 - Jumppoints_222de50 - 2
.hword branch_222de60 - Jumppoints_222de50 - 2
.hword branch_222de60 - Jumppoints_222de50 - 2
.hword branch_222de60 - Jumppoints_222de50 - 2
.hword branch_222de60 - Jumppoints_222de50 - 2
.hword branch_222de60 - Jumppoints_222de50 - 2
.thumb
branch_222de60: @ 222de60 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x222de64

.thumb
branch_222de64: @ 222de64 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x222de68

.thumb
Function_222de68: @ 222de68 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_222de40
	cmp     r0, #0x0
	beq     branch_222de78
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x222de78

.thumb
branch_222de78: @ 222de78 :thumb
	cmp     r4, #0x8
	bgt     branch_222de84
	bge     branch_222dea8
	cmp     r4, #0x1
	beq     branch_222dea8
	b       branch_222deac
@ 0x222de84

.thumb
branch_222de84: @ 222de84 :thumb
	sub     r4, #0x12
	cmp     r4, #0x8
	bhi     branch_222deac
	add     r0, r4, r4
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x222de96

Jumppoints_222de96:
.hword branch_222dea8 - Jumppoints_222de96 - 2
.hword branch_222deac - Jumppoints_222de96 - 2
.hword branch_222dea8 - Jumppoints_222de96 - 2
.hword branch_222deac - Jumppoints_222de96 - 2
.hword branch_222dea8 - Jumppoints_222de96 - 2
.hword branch_222deac - Jumppoints_222de96 - 2
.hword branch_222dea8 - Jumppoints_222de96 - 2
.hword branch_222deac - Jumppoints_222de96 - 2
.hword branch_222dea8 - Jumppoints_222de96 - 2
.thumb
branch_222dea8: @ 222dea8 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x222deac

.thumb
branch_222deac: @ 222deac :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x222deb0

.thumb
Function_222deb0: @ 222deb0 :thumb
	sub     r0, #0xc
	cmp     r0, #0x3
	bhi     branch_222dece
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x222dec2

Jumppoints_222dec2:
.hword branch_222deca - Jumppoints_222dec2 - 2
.hword branch_222deca - Jumppoints_222dec2 - 2
.hword branch_222deca - Jumppoints_222dec2 - 2
.hword branch_222deca - Jumppoints_222dec2 - 2
.thumb
branch_222deca: @ 222deca :thumb
	mov     r0, #0x1
	bx      lr
@ 0x222dece

.thumb
branch_222dece: @ 222dece :thumb
	mov     r0, #0x0
	bx      lr
@ 0x222ded2


.align 2, 0


.thumb
Function_222ded4: @ 222ded4 :thumb
	mov     r1, #0x1d
	cmp     r0, #0x1b
	bhi     branch_222df84
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x222dee6

Jumppoints_222dee6:
.hword branch_222df84 - Jumppoints_222dee6 - 2
.hword branch_222df82 - Jumppoints_222dee6 - 2
.hword branch_222df6a - Jumppoints_222dee6 - 2
.hword branch_222df6e - Jumppoints_222dee6 - 2
.hword branch_222df72 - Jumppoints_222dee6 - 2
.hword branch_222df76 - Jumppoints_222dee6 - 2
.hword branch_222df7a - Jumppoints_222dee6 - 2
.hword branch_222df7e - Jumppoints_222dee6 - 2
.hword branch_222df66 - Jumppoints_222dee6 - 2
.hword branch_222df36 - Jumppoints_222dee6 - 2
.hword branch_222df3a - Jumppoints_222dee6 - 2
.hword branch_222df3e - Jumppoints_222dee6 - 2
.hword branch_222df42 - Jumppoints_222dee6 - 2
.hword branch_222df46 - Jumppoints_222dee6 - 2
.hword branch_222df4a - Jumppoints_222dee6 - 2
.hword branch_222df32 - Jumppoints_222dee6 - 2
.hword branch_222df4e - Jumppoints_222dee6 - 2
.hword branch_222df84 - Jumppoints_222dee6 - 2
.hword branch_222df52 - Jumppoints_222dee6 - 2
.hword branch_222df1e - Jumppoints_222dee6 - 2
.hword branch_222df56 - Jumppoints_222dee6 - 2
.hword branch_222df22 - Jumppoints_222dee6 - 2
.hword branch_222df5a - Jumppoints_222dee6 - 2
.hword branch_222df26 - Jumppoints_222dee6 - 2
.hword branch_222df62 - Jumppoints_222dee6 - 2
.hword branch_222df2e - Jumppoints_222dee6 - 2
.hword branch_222df5e - Jumppoints_222dee6 - 2
.hword branch_222df2a - Jumppoints_222dee6 - 2
.thumb
branch_222df1e: @ 222df1e :thumb
	mov     r1, #0x12
	b       branch_222df84
@ 0x222df22

.thumb
branch_222df22: @ 222df22 :thumb
	mov     r1, #0x14
	b       branch_222df84
@ 0x222df26

.thumb
branch_222df26: @ 222df26 :thumb
	mov     r1, #0x16
	b       branch_222df84
@ 0x222df2a

.thumb
branch_222df2a: @ 222df2a :thumb
	mov     r1, #0x1a
	b       branch_222df84
@ 0x222df2e

.thumb
branch_222df2e: @ 222df2e :thumb
	mov     r1, #0x18
	b       branch_222df84
@ 0x222df32

.thumb
branch_222df32: @ 222df32 :thumb
	mov     r1, #0x8
	b       branch_222df84
@ 0x222df36

.thumb
branch_222df36: @ 222df36 :thumb
	mov     r1, #0x2
	b       branch_222df84
@ 0x222df3a

.thumb
branch_222df3a: @ 222df3a :thumb
	mov     r1, #0x3
	b       branch_222df84
@ 0x222df3e

.thumb
branch_222df3e: @ 222df3e :thumb
	mov     r1, #0x4
	b       branch_222df84
@ 0x222df42

.thumb
branch_222df42: @ 222df42 :thumb
	mov     r1, #0x5
	b       branch_222df84
@ 0x222df46

.thumb
branch_222df46: @ 222df46 :thumb
	mov     r1, #0x6
	b       branch_222df84
@ 0x222df4a

.thumb
branch_222df4a: @ 222df4a :thumb
	mov     r1, #0x7
	b       branch_222df84
@ 0x222df4e

.thumb
branch_222df4e: @ 222df4e :thumb
	mov     r1, #0x1
	b       branch_222df84
@ 0x222df52

.thumb
branch_222df52: @ 222df52 :thumb
	mov     r1, #0x13
	b       branch_222df84
@ 0x222df56

.thumb
branch_222df56: @ 222df56 :thumb
	mov     r1, #0x15
	b       branch_222df84
@ 0x222df5a

.thumb
branch_222df5a: @ 222df5a :thumb
	mov     r1, #0x17
	b       branch_222df84
@ 0x222df5e

.thumb
branch_222df5e: @ 222df5e :thumb
	mov     r1, #0x1b
	b       branch_222df84
@ 0x222df62

.thumb
branch_222df62: @ 222df62 :thumb
	mov     r1, #0x19
	b       branch_222df84
@ 0x222df66

.thumb
branch_222df66: @ 222df66 :thumb
	mov     r1, #0xf
	b       branch_222df84
@ 0x222df6a

.thumb
branch_222df6a: @ 222df6a :thumb
	mov     r1, #0x9
	b       branch_222df84
@ 0x222df6e

.thumb
branch_222df6e: @ 222df6e :thumb
	mov     r1, #0xa
	b       branch_222df84
@ 0x222df72

.thumb
branch_222df72: @ 222df72 :thumb
	mov     r1, #0xb
	b       branch_222df84
@ 0x222df76

.thumb
branch_222df76: @ 222df76 :thumb
	mov     r1, #0xc
	b       branch_222df84
@ 0x222df7a

.thumb
branch_222df7a: @ 222df7a :thumb
	mov     r1, #0xd
	b       branch_222df84
@ 0x222df7e

.thumb
branch_222df7e: @ 222df7e :thumb
	mov     r1, #0xe
	b       branch_222df84
@ 0x222df82

.thumb
branch_222df82: @ 222df82 :thumb
	mov     r1, #0x10
.thumb
branch_222df84: @ 222df84 :thumb
	mov     r0, r1
	bx      lr
@ 0x222df88

.thumb
Function_222df88: @ 222df88 :thumb
	push    {r3-r7,lr}
	mov     r1, #0x16
	lsl     r1, r1, #4
	ldr     r0, [r0, r1]
	bl      LoadPokePartyAdress
	str     r0, [sp, #0x0]
	bl      GetNrOfPkmnInParty
	mov     r5, #0x0
	mov     r7, r0
	mov     r4, r5
	cmp     r7, #0x0
	ble     branch_222dfd0
.thumb
branch_222dfa4: @ 222dfa4 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      GetAdrOfPkmnInParty
	mov     r1, #0xa3
	mov     r2, #0x0
	mov     r6, r0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_222dfca
	mov     r0, r6
	mov     r1, #0x4c
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_222dfca
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_222dfca: @ 222dfca :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r7
	blt     branch_222dfa4
.thumb
branch_222dfd0: @ 222dfd0 :thumb
	mov     r0, r5
	pop     {r3-r7,pc}
@ 0x222dfd4

.thumb
Function_222dfd4: @ 222dfd4 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, r4
	sub     r1, #0x12
	cmp     r1, #0x1
	bhi     branch_222dfe6
	bl      Function_2038b00
	pop     {r4,pc}
@ 0x222dfe6

.thumb
branch_222dfe6: @ 222dfe6 :thumb
	bl      Function_222dd64
	cmp     r0, #0x0
	beq     branch_222dff4
	bl      Function_2038b20
	pop     {r4,pc}
@ 0x222dff4

.thumb
branch_222dff4: @ 222dff4 :thumb
	cmp     r4, #0x10
	bne     branch_222dffe
	bl      Function_2038b60
	pop     {r4,pc}
@ 0x222dffe

.thumb
branch_222dffe: @ 222dffe :thumb
	sub     r4, #0x14
	cmp     r4, #0x1
	bhi     branch_222e010
	mov     r0, #0x0
	bl      Function_203632c
	bl      Function_2038ea4
	pop     {r4,pc}
@ 0x222e010

.thumb
branch_222e010: @ 222e010 :thumb
	mov     r0, #0x1
	bl      Function_203632c
	bl      Function_2038b84
	pop     {r4,pc}
@ 0x222e01c

.thumb
Function_222e01c: @ 222e01c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      Function_20177a4
	bl      Function_201ff00
	bl      Function_201ff68
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x1ac] @ 0x222e1ec, (=0xffffe0ff)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r2, [pc, #0x1ac] @ 0x222e1f0, (=0x4001000)
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	mov     r0, #0x4
	mov     r1, #0x8
	bl      Function_2017dd4
	mov     r0, #0x5c
	mov     r1, #0x36
	bl      LoadFromNARC_8
	str     r0, [sp, #0x20]
	mov     r0, #0x36
	bl      Function_2018340
	mov     r2, #0x57
	ldr     r1, [sp, #0x4]
	lsl     r2, r2, #2
	str     r0, [r1, r2]
	mov     r0, #0x36
	bl      Function_200b358
	mov     r2, #0x59
	ldr     r1, [sp, #0x4]
	lsl     r2, r2, #2
	str     r0, [r1, r2]
	ldr     r2, [pc, #0x178] @ 0x222e1f4, (=0x2a2)
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, #0x36
	bl      Function_200b144
	mov     r2, #0x5a
	ldr     r1, [sp, #0x4]
	lsl     r2, r2, #2
	str     r0, [r1, r2]
	ldr     r2, [pc, #0x168] @ 0x222e1f8, (=0x2b7)
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, #0x36
	bl      Function_200b144
	mov     r2, #0x5b
	ldr     r1, [sp, #0x4]
	lsl     r2, r2, #2
	str     r0, [r1, r2]
	bl      Function_222e618
	mov     r1, #0x57
	ldr     r0, [sp, #0x4]
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	bl      Function_222e638
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x20]
	bl      Function_222eca8
	mov     r2, #0xcb
	ldr     r1, [pc, #0x140] @ 0x222e1fc, (=0xd64)
	ldr     r0, [sp, #0x4]
	lsl     r2, r2, #2
	add     r0, r0, r1
	mov     r1, #0x0
	blx     MI_CpuFill8
	ldr     r0, [sp, #0x20]
	mov     r1, #0x4
	add     r2, sp, #0x2c
	mov     r3, #0x36
	bl      Function_20071ec
	mov     r4, r0
	ldr     r0, [sp, #0x2c]
	ldr     r2, [pc, #0x124] @ 0x222e200, (=0xd6c)
	ldr     r1, [sp, #0x4]
	ldr     r0, [r0, #0xc]
	add     r1, r1, r2
	mov     r2, #0x80
	blx     MIi_CpuCopy16
	ldr     r0, [sp, #0x2c]
	ldr     r2, [pc, #0x118] @ 0x222e204, (=0xdec)
	ldr     r1, [sp, #0x4]
	ldr     r0, [r0, #0xc]
	add     r1, r1, r2
	mov     r2, #0x80
	blx     MIi_CpuCopy16
	mov     r0, r4
	bl      free
	mov     r0, #0x0
	str     r0, [sp, #0x18]
	str     r0, [sp, #0x1c]
	ldr     r1, [pc, #0x100] @ 0x222e204, (=0xdec)
	ldr     r0, [sp, #0x4]
	add     r0, r0, r1
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x4]
	sub     r1, #0x80
	add     r0, r0, r1
	str     r0, [sp, #0x8]
.thumb
branch_222e112: @ 222e112 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x14]
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x1c]
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r1, r0, #5
	ldr     r0, [sp, #0x4]
	add     r0, r0, r1
	str     r0, [sp, #0x24]
.thumb
branch_222e124: @ 222e124 :thumb
	ldr     r0, [sp, #0x18]
	cmp     r0, #0x15
	blt     branch_222e12e
	bl      ErrorHandling
.thumb
branch_222e12e: @ 222e12e :thumb
	ldr     r0, [sp, #0x24]
	mov     r7, #0x1
	add     r4, r0, #0x2
	ldr     r0, [sp, #0xc]
	add     r6, r0, #0x2
	ldr     r0, [sp, #0x8]
	add     r5, r0, #0x2
	ldr     r0, [sp, #0x14]
	asr     r0, r0, #8
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x28]
.thumb
branch_222e146: @ 222e146 :thumb
	ldr     r0, [pc, #0xb8] @ 0x222e200, (=0xd6c)
	ldr     r3, [sp, #0x28]
	ldrh    r0, [r4, r0]
	mov     r1, r6
	mov     r2, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r5
	bl      Function_200393c
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	.hword  0x1cb6 @ add r6, r6, #0x2
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r7, #0x10
	blt     branch_222e146
	ldr     r0, [sp, #0xc]
	add     r0, #0x20
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x1
	beq     branch_222e190
	mov     r0, #0x3
	ldr     r1, [sp, #0x14]
	lsl     r0, r0, #8
	add     r1, r1, r0
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r1, [sp, #0x14]
	cmp     r1, r0
	blt     branch_222e124
	str     r0, [sp, #0x14]
	mov     r0, #0x1
	str     r0, [sp, #0x10]
	b       branch_222e124
@ 0x222e190

.thumb
branch_222e190: @ 222e190 :thumb
	ldr     r0, [sp, #0x8]
	add     r0, #0x20
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x1c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x1c]
	cmp     r0, #0x3
	blt     branch_222e112
	ldr     r1, [pc, #0x60] @ 0x222e204, (=0xdec)
	ldr     r0, [sp, #0x4]
	add     r0, r0, r1
	mov     r1, #0x2a
	lsl     r1, r1, #4
	blx     DC_FlushRange
	ldr     r1, [pc, #0x58] @ 0x222e208, (=0xd68)
	ldr     r0, [sp, #0x4]
	mov     r2, #0x1
	str     r2, [r0, r1]
	.hword  0x1f0a @ sub r2, r1, #0x4
	ldr     r1, [sp, #0x4]
	ldr     r0, [pc, #0x50] @ 0x222e20c, (=0x222e215)
	add     r1, r1, r2
	mov     r2, #0x14
	bl      AddTaskToTaskList2
	ldr     r2, [pc, #0x34] @ 0x222e1fc, (=0xd64)
	ldr     r1, [sp, #0x4]
	str     r0, [r1, r2]
	ldr     r0, [pc, #0x44] @ 0x222e210, (=0x222e5e1)
	bl      SetMainLoopFunctionCall
	bl      Function_222edd0
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x20]
	bl      Function_222ee18
	ldr     r0, [sp, #0x4]
	bl      Function_222ee8c
	ldr     r0, [sp, #0x20]
	bl      Call_FS_CloseFile
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x222e1ec

.word 0xffffe0ff @ 0x222e1ec
.word 0x4001000 @ 0x222e1f0
.word 0x2a2 @ 0x222e1f4
.word 0x2b7 @ 0x222e1f8
.word 0xd64 @ 0x222e1fc
.word 0xd6c @ 0x222e200
.word 0xdec @ 0x222e204
.word 0xd68 @ 0x222e208
.word 0x222e215 @ 0x222e20c
.word 0x222e5e1 @ 0x222e210
.thumb
Function_222e214: @ 222e214 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_222e29c
	ldr     r0, [pc, #0x80] @ 0x222e2a0, (=0x32b)
	mov     r1, #0x1
	ldrb    r2, [r4, r0]
	eor     r2, r1
	strb    r2, [r4, r0]
	ldrb    r2, [r4, r0]
	tst     r1, r2
	bne     branch_222e29c
	.hword  0x1ec0 @ sub r0, r0, #0x3
	ldsh    r0, [r4, r0]
	mov     r1, r4
	add     r1, #0x88
	lsl     r0, r0, #5
	add     r0, r1, r0
	mov     r1, #0x0
	mov     r2, #0x20
	blx     GX_LoadBGPltt
	mov     r0, #0xca
	lsl     r0, r0, #2
	ldsh    r0, [r4, r0]
	mov     r1, r4
	add     r1, #0x88
	lsl     r0, r0, #5
	add     r0, r1, r0
	mov     r1, #0x0
	mov     r2, #0x20
	blx     GXS_LoadBGPltt
	ldr     r0, [pc, #0x48] @ 0x222e2a4, (=0x32a)
	ldsb    r1, [r4, r0]
	cmp     r1, #0x0
	bne     branch_222e280
	.hword  0x1e81 @ sub r1, r0, #0x2
	ldsh    r1, [r4, r1]
	add     r2, r1, #0x1
	.hword  0x1e81 @ sub r1, r0, #0x2
	strh    r2, [r4, r1]
	ldsh    r1, [r4, r1]
	cmp     r1, #0x15
	blt     branch_222e29c
	mov     r2, #0x13
	.hword  0x1e81 @ sub r1, r0, #0x2
	strh    r2, [r4, r1]
	ldsb    r2, [r4, r0]
	mov     r1, #0x1
	eor     r1, r2
	strb    r1, [r4, r0]
	pop     {r4,pc}
@ 0x222e280

.thumb
branch_222e280: @ 222e280 :thumb
	.hword  0x1e81 @ sub r1, r0, #0x2
	ldsh    r1, [r4, r1]
	.hword  0x1e4a @ sub r2, r1, #0x1
	.hword  0x1e81 @ sub r1, r0, #0x2
	strh    r2, [r4, r1]
	ldsh    r1, [r4, r1]
	cmp     r1, #0x0
	bge     branch_222e29c
	mov     r2, #0x1
	.hword  0x1e81 @ sub r1, r0, #0x2
	strh    r2, [r4, r1]
	ldsb    r1, [r4, r0]
	eor     r1, r2
	strb    r1, [r4, r0]
.thumb
branch_222e29c: @ 222e29c :thumb
	pop     {r4,pc}
@ 0x222e29e


.align 2


.word 0x32b @ 0x222e2a0
.word 0x32a @ 0x222e2a4
.thumb
Function_222e2a8: @ 222e2a8 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r6, r1
	ldr     r1, [r6, #0x0]
	mov     r5, r0
	cmp     r1, #0x0
	beq     branch_222e2be
	cmp     r1, #0x1
	bne     branch_222e2bc
	b       branch_222e3e0
@ 0x222e2bc

.thumb
branch_222e2bc: @ 222e2bc :thumb
	b       branch_222e3ee
@ 0x222e2be

.thumb
branch_222e2be: @ 222e2be :thumb
	bl      LoadPtrToOverWorldDataIn18
	mov     r4, r0
	bl      Function_20389b8
	cmp     r0, #0x0
	beq     branch_222e306
	ldr     r0, [r4, #0x4]
	cmp     r0, #0xc
	bhi     branch_222e312
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x222e2de

Jumppoints_222e2de:
.hword branch_222e312 - Jumppoints_222e2de - 2
.hword branch_222e2f8 - Jumppoints_222e2de - 2
.hword branch_222e2f8 - Jumppoints_222e2de - 2
.hword branch_222e2f8 - Jumppoints_222e2de - 2
.hword branch_222e2f8 - Jumppoints_222e2de - 2
.hword branch_222e2f8 - Jumppoints_222e2de - 2
.hword branch_222e2f8 - Jumppoints_222e2de - 2
.hword branch_222e2f8 - Jumppoints_222e2de - 2
.hword branch_222e2f8 - Jumppoints_222e2de - 2
.hword branch_222e2f8 - Jumppoints_222e2de - 2
.hword branch_222e2f8 - Jumppoints_222e2de - 2
.hword branch_222e312 - Jumppoints_222e2de - 2
.hword branch_222e2f8 - Jumppoints_222e2de - 2
.thumb
branch_222e2f8: @ 222e2f8 :thumb
	mov     r2, #0x1
	mov     r0, #0x3
	mov     r1, #0x79
	lsl     r2, r2, #16
	bl      Function_2017fc8
	b       branch_222e312
@ 0x222e306

.thumb
branch_222e306: @ 222e306 :thumb
	mov     r2, #0x1
	mov     r0, #0x3
	mov     r1, #0x79
	lsl     r2, r2, #16
	bl      Function_2017fc8
.thumb
branch_222e312: @ 222e312 :thumb
	ldr     r0, [pc, #0xe0] @ 0x222e3f4, (=0x3f)
	mov     r1, #0x2
	bl      LoadOverlay
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x1
	bne     branch_222e32e
	mov     r2, #0x7
	mov     r0, #0x3
	mov     r1, #0x36
	lsl     r2, r2, #16
	bl      Function_2017fc8
	b       branch_222e33a
@ 0x222e32e

.thumb
branch_222e32e: @ 222e32e :thumb
	mov     r2, #0xa
	mov     r0, #0x3
	mov     r1, #0x36
	lsl     r2, r2, #16
	bl      Function_2017fc8
.thumb
branch_222e33a: @ 222e33a :thumb
	ldr     r1, [pc, #0xbc] @ 0x222e3f8, (=0x1094)
	mov     r0, r5
	mov     r2, #0x36
	bl      MallocSomeDataAndStorePtrInOverlayData1c
	ldr     r2, [pc, #0xb0] @ 0x222e3f8, (=0x1094)
	mov     r1, #0x0
	mov     r5, r0
	blx     MI_CpuFill8
	mov     r0, #0x20
	mov     r1, #0x36
	bl      Function_201dbec
	mov     r1, #0x6
	mov     r0, #0x8
	lsl     r1, r1, #6
	str     r0, [r5, r1]
	mov     r0, r1
	ldr     r2, [r4, #0x0]
	sub     r0, #0x20
	sub     r1, #0x20
	str     r2, [r5, r0]
	ldr     r0, [r5, r1]
	bl      LoadVariableAreaAdress_1d
	str     r0, [r5, #0x0]
	mov     r1, #0x35
	ldr     r0, [r4, #0x4]
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r0, r1
	mov     r2, #0x8
	sub     r0, #0x8
	str     r2, [r5, r0]
	sub     r2, #0x9
	add     r1, #0x1c
	str     r2, [r5, r1]
	mov     r0, #0xf
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0xf
	mov     r1, #0x0
	bl      Function_201ff74
	mov     r0, r5
	bl      Function_222ebe0
	mov     r0, r5
	bl      Function_222e01c
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x36
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	mov     r3, r0
	bl      Function_200f174
	bl      Function_20389b8
	cmp     r0, #0x0
	beq     branch_222e3c6
	bl      Function_2039734
	b       branch_222e3ca
@ 0x222e3c6

.thumb
branch_222e3c6: @ 222e3c6 :thumb
	bl      LoadOverlay4
.thumb
branch_222e3ca: @ 222e3ca :thumb
	mov     r0, #0x4
	bl      Function_201e450
	cmp     r0, #0x1
	beq     branch_222e3d8
	bl      ErrorHandling
.thumb
branch_222e3d8: @ 222e3d8 :thumb
	ldr     r0, [r6, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r6, #0x0]
	b       branch_222e3ee
@ 0x222e3e0

.thumb
branch_222e3e0: @ 222e3e0 :thumb
	bl      LoadOverlayData1c
	mov     r0, #0x0
	str     r0, [r6, #0x0]
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x222e3ee

.thumb
branch_222e3ee: @ 222e3ee :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x222e3f4

.word 0x3f @ 0x222e3f4
.word 0x1094 @ 0x222e3f8
.thumb
Function_222e3fc: @ 222e3fc :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	bl      LoadOverlayData1c
	ldr     r1, [r5, #0x0]
	mov     r4, r0
	cmp     r1, #0x0
	beq     branch_222e416
	cmp     r1, #0x1
	beq     branch_222e424
	cmp     r1, #0x2
	beq     branch_222e43e
	b       branch_222e44a
@ 0x222e416

.thumb
branch_222e416: @ 222e416 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_222e44a
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_222e44a
@ 0x222e424

.thumb
branch_222e424: @ 222e424 :thumb
	mov     r2, #0xd1
	lsl     r2, r2, #2
	ldr     r2, [r4, r2]
	ldr     r3, [pc, #0x48] @ 0x222e474, (=0x2239d2c)
	lsl     r6, r2, #2
	ldr     r6, [r3, r6]
	cmp     r6, #0x0
	beq     branch_222e44a
	ldr     r3, [pc, #0x40] @ 0x222e478, (=0x2239e60)
	str     r2, [r3, #0x0]
	blx     r6
	str     r0, [r5, #0x0]
	b       branch_222e44a
@ 0x222e43e

.thumb
branch_222e43e: @ 222e43e :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_222e44a
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x222e44a

.thumb
branch_222e44a: @ 222e44a :thumb
	mov     r0, #0x63
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_222e458
	bl      Function_20219f8
.thumb
branch_222e458: @ 222e458 :thumb
	mov     r0, #0xe2
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_2235194
	cmp     r0, #0x1
	bne     branch_222e470
	mov     r0, #0xe2
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_2235244
.thumb
branch_222e470: @ 222e470 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x222e474

.word 0x2239d2c @ 0x222e474
.word 0x2239e60 @ 0x222e478
.thumb
Function_222e47c: @ 222e47c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	ldr     r0, [pc, #0xb0] @ 0x222e53c, (=0xd64)
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_222e49e
	bl      Call_RemoveTaskFromTaskList
	ldr     r0, [pc, #0xa4] @ 0x222e53c, (=0xd64)
	mov     r1, #0x0
	str     r1, [r5, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r5, r0]
.thumb
branch_222e49e: @ 222e49e :thumb
	mov     r0, #0xe2
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_2235194
	cmp     r0, #0x1
	bne     branch_222e4b6
	mov     r0, #0xe2
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_2235130
.thumb
branch_222e4b6: @ 222e4b6 :thumb
	mov     r0, r5
	bl      Function_2232fcc
	cmp     r0, #0x1
	bne     branch_222e4c6
	mov     r0, r5
	bl      Function_2233068
.thumb
branch_222e4c6: @ 222e4c6 :thumb
	ldr     r0, [pc, #0x78] @ 0x222e540, (=0xb08)
	add     r0, r5, r0
	bl      Function_222e99c
	mov     r0, #0xb2
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_20127bc
	mov     r7, #0xae
	mov     r6, #0x0
	mov     r4, r5
	lsl     r7, r7, #2
.thumb
branch_222e4e0: @ 222e4e0 :thumb
	ldr     r0, [r4, r7]
	bl      Function_2009754
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x4
	blt     branch_222e4e0
	mov     r0, #0x63
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2021964
	bl      Function_200a878
	bl      Function_201e958
	bl      Function_201f8b4
	mov     r0, r5
	bl      Function_222ef4c
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_222ec5c
	mov     r0, #0x5b
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_200b190
	mov     r0, #0x5a
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_200b190
	mov     r0, #0x59
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_200b3f0
	ldr     r0, [pc, #0x10] @ 0x222e544, (=0x3f)
	bl      UnloadOverlay
	pop     {r3-r7,pc}
@ 0x222e53a


.align 2


.word 0xd64 @ 0x222e53c
.word 0xb08 @ 0x222e540
.word 0x3f @ 0x222e544
.thumb
Function_222e548: @ 222e548 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      LoadOverlayData1c
	mov     r4, r0
	bl      Function_222e47c
	mov     r0, r5
	bl      LoadPtrToOverWorldDataIn18
	mov     r6, r0
	mov     r0, #0xd2
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	str     r1, [r6, #0x4]
	ldr     r0, [r4, r0]
	cmp     r0, #0x8
	beq     branch_222e570
	cmp     r0, #0xa
	bne     branch_222e576
.thumb
branch_222e570: @ 222e570 :thumb
	bl      UnloadOverlay4
	b       branch_222e57c
@ 0x222e576

.thumb
branch_222e576: @ 222e576 :thumb
	bl      0x21d2388
	str     r0, [r6, #0x8]
.thumb
branch_222e57c: @ 222e57c :thumb
	mov     r0, r4
	bl      Function_222ec2c
	mov     r0, r5
	bl      FreeSomeDataAndStore0InOverlayData1c
	bl      Function_201e530
	bl      Function_201dc3c
	mov     r0, #0x36
	bl      Function_201807c
	mov     r0, #0xd2
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0xc
	bhi     branch_222e5cc
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x222e5ac

Jumppoints_222e5ac:
.hword branch_222e5cc - Jumppoints_222e5ac - 2
.hword branch_222e5c6 - Jumppoints_222e5ac - 2
.hword branch_222e5c6 - Jumppoints_222e5ac - 2
.hword branch_222e5c6 - Jumppoints_222e5ac - 2
.hword branch_222e5c6 - Jumppoints_222e5ac - 2
.hword branch_222e5c6 - Jumppoints_222e5ac - 2
.hword branch_222e5c6 - Jumppoints_222e5ac - 2
.hword branch_222e5c6 - Jumppoints_222e5ac - 2
.hword branch_222e5c6 - Jumppoints_222e5ac - 2
.hword branch_222e5c6 - Jumppoints_222e5ac - 2
.hword branch_222e5c6 - Jumppoints_222e5ac - 2
.hword branch_222e5cc - Jumppoints_222e5ac - 2
.hword branch_222e5c6 - Jumppoints_222e5ac - 2
.thumb
branch_222e5c6: @ 222e5c6 :thumb
	mov     r0, #0x79
	bl      Function_201807c
.thumb
branch_222e5cc: @ 222e5cc :thumb
	bl      Function_2231a54
	cmp     r0, #0x1
	bne     branch_222e5dc
	mov     r0, #0x0
	mov     r1, #0x78
	bl      Function_2004a68
.thumb
branch_222e5dc: @ 222e5dc :thumb
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x222e5e0

.thumb
Function_222e5e0: @ 222e5e0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_201c2b8
	bl      Function_201dcac
	bl      Function_200a858
	ldr     r0, [pc, #0x1c] @ 0x222e614, (=0x1090)
	ldrh    r0, [r4, r0]
	cmp     r0, #0x1
	bne     branch_222e610
	mov     r0, #0x0
	bl      Function_200f338
	mov     r0, #0x1
	bl      Function_200f338
	ldr     r0, [pc, #0x8] @ 0x222e614, (=0x1090)
	mov     r1, #0x0
	strh    r1, [r4, r0]
.thumb
branch_222e610: @ 222e610 :thumb
	pop     {r4,pc}
@ 0x222e612


.align 2


.word 0x1090 @ 0x222e614
.thumb
Function_222e618: @ 222e618 :thumb
	push    {r4,lr}
	add     sp, #-0x28
	ldr     r4, [pc, #0x14] @ 0x222e634, (=0x2238b10)
	add     r3, sp, #0x0
	mov     r2, #0x5
.thumb
branch_222e622: @ 222e622 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_222e622
	add     r0, sp, #0x0
	bl      Function_201fe94
	add     sp, #0x28
	pop     {r4,pc}
@ 0x222e634

.word 0x2238b10 @ 0x222e634
.thumb
Function_222e638: @ 222e638 :thumb
	push    {r3-r5,lr}
	add     sp, #-0xf0
	ldr     r5, [pc, #0x210] @ 0x222e850, (=0x2238988)
	add     r3, sp, #0xe0
	mov     r4, r0
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      Function_2018368
	ldr     r5, [pc, #0x200] @ 0x222e854, (=0x22389b0)
	add     r3, sp, #0xc4
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
	bl      Function_20183c4
	mov     r0, #0x0
	mov     r1, #0x20
	mov     r2, r0
	mov     r3, #0x36
	bl      Function_2019690
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2019ebc
	ldr     r5, [pc, #0x1d0] @ 0x222e858, (=0x22389cc)
	add     r3, sp, #0xa8
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
	bl      Function_20183c4
	mov     r0, #0x1
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x36
	bl      Function_2019690
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2019ebc
	ldr     r5, [pc, #0x1a0] @ 0x222e85c, (=0x2238a74)
	add     r3, sp, #0x8c
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
	bl      Function_20183c4
	mov     r0, #0x2
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x36
	bl      Function_2019690
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2019ebc
	ldr     r5, [pc, #0x170] @ 0x222e860, (=0x22389e8)
	add     r3, sp, #0x70
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
	mov     r0, r4
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x3
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x36
	bl      Function_2019690
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_2019ebc
	ldr     r5, [pc, #0x140] @ 0x222e864, (=0x2238a04)
	add     r3, sp, #0x54
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
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_2019ebc
	ldr     r5, [pc, #0x11c] @ 0x222e868, (=0x2238a20)
	add     r3, sp, #0x38
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
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x5
	bl      Function_2019ebc
	ldr     r5, [pc, #0xf8] @ 0x222e86c, (=0x2238a3c)
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
	mov     r0, r4
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x6
	bl      Function_2019ebc
	ldr     r5, [pc, #0xd4] @ 0x222e870, (=0x2238a58)
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
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x7
	bl      Function_2019ebc
	mov     r0, #0x0
	mov     r1, #0x20
	mov     r2, r0
	mov     r3, #0x36
	bl      Function_2019690
	mov     r0, #0x1
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x36
	bl      Function_2019690
	mov     r0, #0x2
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x36
	bl      Function_2019690
	mov     r0, #0x3
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x36
	bl      Function_2019690
	mov     r0, #0x4
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x36
	bl      Function_2019690
	mov     r0, #0x5
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x36
	bl      Function_2019690
	mov     r0, #0x6
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x36
	bl      Function_2019690
	mov     r0, #0x7
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x36
	bl      Function_2019690
	mov     r0, #0x0
	mov     r1, #0x3
	bl      Function_2019060
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_2019060
	mov     r0, #0x3
	mov     r1, #0x0
	bl      Function_2019060
	mov     r0, #0x2
	mov     r1, #0x0
	bl      Function_2019060
	ldr     r0, [pc, #0x30] @ 0x222e874, (=0x4000050)
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	ldr     r0, [pc, #0x2c] @ 0x222e878, (=0x4001050)
	strh    r1, [r0, #0x0]
	add     sp, #0xf0
	pop     {r3-r5,pc}
@ 0x222e850

.word 0x2238988 @ 0x222e850
.word 0x22389b0 @ 0x222e854
.word 0x22389cc @ 0x222e858
.word 0x2238a74 @ 0x222e85c
.word 0x22389e8 @ 0x222e860
.word 0x2238a04 @ 0x222e864
.word 0x2238a20 @ 0x222e868
.word 0x2238a3c @ 0x222e86c
.word 0x2238a58 @ 0x222e870
.word 0x4000050 @ 0x222e874
.word 0x4001050 @ 0x222e878
.thumb
Function_222e87c: @ 222e87c :thumb
	push    {r3-r5,lr}
	ldr     r2, [pc, #0x24] @ 0x222e8a4, (=0xa84)
	mov     r4, #0x0
	mov     r5, r0
.thumb
branch_222e884: @ 222e884 :thumb
	ldr     r3, [r5, r2]
	cmp     r3, #0x0
	bne     branch_222e894
	lsl     r2, r4, #2
	add     r2, r0, r2
	ldr     r0, [pc, #0x14] @ 0x222e8a4, (=0xa84)
	str     r1, [r2, r0]
	pop     {r3-r5,pc}
@ 0x222e894

.thumb
branch_222e894: @ 222e894 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x21
	blt     branch_222e884
	bl      ErrorHandling
	pop     {r3-r5,pc}
@ 0x222e8a2


.align 2


.word 0xa84 @ 0x222e8a4
.thumb
Function_222e8a8: @ 222e8a8 :thumb
	push    {r3-r5,lr}
	ldr     r2, [pc, #0x24] @ 0x222e8d0, (=0xa84)
	mov     r4, #0x0
	mov     r5, r0
.thumb
branch_222e8b0: @ 222e8b0 :thumb
	ldr     r3, [r5, r2]
	cmp     r3, r1
	bne     branch_222e8c2
	lsl     r1, r4, #2
	add     r1, r0, r1
	ldr     r0, [pc, #0x14] @ 0x222e8d0, (=0xa84)
	mov     r2, #0x0
	str     r2, [r1, r0]
	pop     {r3-r5,pc}
@ 0x222e8c2

.thumb
branch_222e8c2: @ 222e8c2 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x21
	blt     branch_222e8b0
	bl      ErrorHandling
	pop     {r3-r5,pc}
@ 0x222e8d0

.word 0xa84 @ 0x222e8d0
.thumb
Function_222e8d4: @ 222e8d4 :thumb
	push    {r3-r7,lr}
	ldr     r7, [pc, #0x30] @ 0x222e908, (=0xa84)
	str     r0, [sp, #0x0]
	mov     r6, r1
	mov     r4, #0x0
	mov     r5, r0
.thumb
branch_222e8e0: @ 222e8e0 :thumb
	ldr     r0, [r5, r7]
	cmp     r0, #0x0
	beq     branch_222e8fa
	bl      Function_22354d8
	cmp     r6, r0
	bne     branch_222e8fa
	ldr     r0, [sp, #0x0]
	lsl     r1, r4, #2
	add     r1, r0, r1
	ldr     r0, [pc, #0x10] @ 0x222e908, (=0xa84)
	ldr     r0, [r1, r0]
	pop     {r3-r7,pc}
@ 0x222e8fa

.thumb
branch_222e8fa: @ 222e8fa :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x21
	blt     branch_222e8e0
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x222e906


.align 2


.word 0xa84 @ 0x222e908
.thumb
Function_222e90c: @ 222e90c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r7, r0
	mov     r6, r2
	mov     r4, r3
	mov     r0, #0x40
	str     r0, [sp, #0x0]
	mov     r3, #0xd
	mov     r5, r1
	mov     r1, r3
	mov     r0, r6
	mov     r2, #0x0
	add     r3, #0xf3
	str     r4, [sp, #0x4]
	bl      Function_2007130
	mov     r0, #0x40
	str     r0, [sp, #0x0]
	mov     r1, #0xd
	mov     r0, r6
	mov     r2, #0x4
	lsl     r3, r1, #5
	str     r4, [sp, #0x4]
	bl      Function_2007130
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r1, #0xc
	mov     r2, r7
	mov     r3, #0x1
	str     r4, [sp, #0xc]
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r4, [sp, #0xc]
	mov     r0, r6
	mov     r1, #0xc
	mov     r2, r7
	mov     r3, #0x6
	bl      Function_20070e8
	ldr     r0, [r5, #0x8]
	cmp     r0, #0x0
	bne     branch_222e982
	mov     r3, r5
	mov     r0, r6
	mov     r1, #0xc
	mov     r2, #0x0
	add     r3, #0xc
	str     r4, [sp, #0x0]
	bl      Function_20071b4
	str     r0, [r5, #0x8]
.thumb
branch_222e982: @ 222e982 :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	bne     branch_222e998
	mov     r0, r6
	mov     r1, #0xe
	mov     r2, #0x0
	add     r3, r5, #0x4
	str     r4, [sp, #0x0]
	bl      Function_20071d0
	str     r0, [r5, #0x0]
.thumb
branch_222e998: @ 222e998 :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x222e99c

.thumb
Function_222e99c: @ 222e99c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_222e9ae
	bl      free
	mov     r0, #0x0
	str     r0, [r4, #0x0]
.thumb
branch_222e9ae: @ 222e9ae :thumb
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x0
	beq     branch_222e9bc
	bl      free
	mov     r0, #0x0
	str     r0, [r4, #0x8]
.thumb
branch_222e9bc: @ 222e9bc :thumb
	pop     {r4,pc}
@ 0x222e9be


.align 2, 0


.thumb
Function_222e9c0: @ 222e9c0 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x1c
	ldr     r1, [r1, #0x4]
	mov     r4, r2
	mov     r2, #0x2
	str     r2, [sp, #0x0]
	str     r2, [sp, #0x4]
	mov     r2, r1
	add     r2, #0xc
	str     r2, [sp, #0x8]
	ldr     r2, [sp, #0x34]
	mov     r6, r3
	lsl     r2, r2, #25
	lsr     r2, r2, #24
	str     r2, [sp, #0xc]
	mov     r2, #0x0
	str     r2, [sp, #0x10]
	ldrh    r2, [r1, #0x0]
	add     r3, sp, #0x20
	mov     r5, r0
	lsl     r2, r2, #21
	lsr     r2, r2, #24
	str     r2, [sp, #0x14]
	ldrh    r1, [r1, #0x2]
	mov     r2, r6
	lsl     r1, r1, #21
	lsr     r1, r1, #24
	str     r1, [sp, #0x18]
	lsl     r1, r4, #24
	ldrb    r3, [r3, #0x10]
	lsr     r1, r1, #24
	bl      Function_20198e8
	mov     r0, r4
	bl      Function_222ebac
	mov     r1, #0x2
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r1, [sp, #0x38]
	add     r3, sp, #0x20
	add     r0, r0, r1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	lsl     r1, r4, #24
	ldrb    r3, [r3, #0x10]
	mov     r0, r5
	lsr     r1, r1, #24
	mov     r2, r6
	bl      Function_2019e2c
	lsl     r1, r4, #24
	mov     r0, r5
	lsr     r1, r1, #24
	bl      Function_201c3c0
	add     sp, #0x1c
	pop     {r3-r6,pc}
@ 0x222ea36


.align 2, 0


.thumb
Function_222ea38: @ 222ea38 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	ldr     r5, [sp, #0x24]
	mov     r4, #0x0
	cmp     r5, #0x1d
	bhi     branch_222eaba
	add     r5, r5, r5
	add     r5, pc
	ldrh    r5, [r5, #0x6]
	lsl     r5, r5, #16
	asr     r5, r5, #16
	add     pc, r5
@ 0x222ea50

Jumppoints_222ea50:
.hword branch_222eab2 - Jumppoints_222ea50 - 2
.hword branch_222ea8c - Jumppoints_222ea50 - 2
.hword branch_222ea92 - Jumppoints_222ea50 - 2
.hword branch_222ea92 - Jumppoints_222ea50 - 2
.hword branch_222ea92 - Jumppoints_222ea50 - 2
.hword branch_222ea92 - Jumppoints_222ea50 - 2
.hword branch_222ea92 - Jumppoints_222ea50 - 2
.hword branch_222ea92 - Jumppoints_222ea50 - 2
.hword branch_222ea98 - Jumppoints_222ea50 - 2
.hword branch_222ea90 - Jumppoints_222ea50 - 2
.hword branch_222ea90 - Jumppoints_222ea50 - 2
.hword branch_222ea90 - Jumppoints_222ea50 - 2
.hword branch_222ea90 - Jumppoints_222ea50 - 2
.hword branch_222ea90 - Jumppoints_222ea50 - 2
.hword branch_222ea90 - Jumppoints_222ea50 - 2
.hword branch_222ea96 - Jumppoints_222ea50 - 2
.hword branch_222eaae - Jumppoints_222ea50 - 2
.hword branch_222eaba - Jumppoints_222ea50 - 2
.hword branch_222eaa4 - Jumppoints_222ea50 - 2
.hword branch_222eaa2 - Jumppoints_222ea50 - 2
.hword branch_222eaaa - Jumppoints_222ea50 - 2
.hword branch_222eaa8 - Jumppoints_222ea50 - 2
.hword branch_222ea9e - Jumppoints_222ea50 - 2
.hword branch_222ea9c - Jumppoints_222ea50 - 2
.hword branch_222ea9e - Jumppoints_222ea50 - 2
.hword branch_222ea9c - Jumppoints_222ea50 - 2
.hword branch_222ea9e - Jumppoints_222ea50 - 2
.hword branch_222ea9c - Jumppoints_222ea50 - 2
.hword branch_222eab6 - Jumppoints_222ea50 - 2
.hword branch_222eab6 - Jumppoints_222ea50 - 2
.thumb
branch_222ea8c: @ 222ea8c :thumb
	mov     r5, #0x3
	b       branch_222eabc
@ 0x222ea90

.thumb
branch_222ea90: @ 222ea90 :thumb
	mov     r4, #0x1
.thumb
branch_222ea92: @ 222ea92 :thumb
	mov     r5, #0x6
	b       branch_222eabc
@ 0x222ea96

.thumb
branch_222ea96: @ 222ea96 :thumb
	mov     r4, #0x1
.thumb
branch_222ea98: @ 222ea98 :thumb
	mov     r5, #0x7
	b       branch_222eabc
@ 0x222ea9c

.thumb
branch_222ea9c: @ 222ea9c :thumb
	mov     r4, #0x1
.thumb
branch_222ea9e: @ 222ea9e :thumb
	mov     r5, #0xa
	b       branch_222eabc
@ 0x222eaa2

.thumb
branch_222eaa2: @ 222eaa2 :thumb
	mov     r4, #0x1
.thumb
branch_222eaa4: @ 222eaa4 :thumb
	mov     r5, #0x9
	b       branch_222eabc
@ 0x222eaa8

.thumb
branch_222eaa8: @ 222eaa8 :thumb
	mov     r4, #0x1
.thumb
branch_222eaaa: @ 222eaaa :thumb
	mov     r5, #0xb
	b       branch_222eabc
@ 0x222eaae

.thumb
branch_222eaae: @ 222eaae :thumb
	mov     r5, #0x4
	b       branch_222eabc
@ 0x222eab2

.thumb
branch_222eab2: @ 222eab2 :thumb
	mov     r5, #0x8
	b       branch_222eabc
@ 0x222eab6

.thumb
branch_222eab6: @ 222eab6 :thumb
	mov     r5, #0x5
	b       branch_222eabc
@ 0x222eaba

.thumb
branch_222eaba: @ 222eaba :thumb
	mov     r5, #0x5
.thumb
branch_222eabc: @ 222eabc :thumb
	add     r6, sp, #0x10
	ldrb    r6, [r6, #0x10]
	str     r6, [sp, #0x0]
	str     r5, [sp, #0x4]
	str     r4, [sp, #0x8]
	bl      Function_222e9c0
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x222eace


.align 2, 0


.thumb
Function_222ead0: @ 222ead0 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	ldr     r1, [r1, #0xc]
	mov     r4, r0
	ldrh    r5, [r1, #0x2]
	lsl     r5, r5, #19
	lsr     r5, r5, #16
	str     r5, [sp, #0x0]
	ldrh    r5, [r1, #0x0]
	lsl     r5, r5, #19
	lsr     r5, r5, #16
	str     r5, [sp, #0x4]
	str     r2, [sp, #0x8]
	str     r3, [sp, #0xc]
	mov     r2, #0x10
	str     r2, [sp, #0x10]
	str     r2, [sp, #0x14]
	ldr     r2, [sp, #0x28]
	ldr     r1, [r1, #0x14]
	lsl     r2, r2, #20
	lsr     r2, r2, #16
	mov     r3, #0x0
	bl      Function_201addc
	ldrb    r0, [r4, #0x4]
	bl      Function_222ebac
	mov     r2, r0
	ldr     r1, [sp, #0x2c]
	mov     r0, r4
	add     r1, r2, r1
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_201c2b4
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x222eb1a


.align 2, 0


.thumb
Function_222eb1c: @ 222eb1c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	ldr     r5, [sp, #0x18]
	mov     r4, #0x0
	cmp     r5, #0x1d
	bhi     branch_222eb9e
	add     r5, r5, r5
	add     r5, pc
	ldrh    r5, [r5, #0x6]
	lsl     r5, r5, #16
	asr     r5, r5, #16
	add     pc, r5
@ 0x222eb34

Jumppoints_222eb34:
.hword branch_222eb96 - Jumppoints_222eb34 - 2
.hword branch_222eb70 - Jumppoints_222eb34 - 2
.hword branch_222eb76 - Jumppoints_222eb34 - 2
.hword branch_222eb76 - Jumppoints_222eb34 - 2
.hword branch_222eb76 - Jumppoints_222eb34 - 2
.hword branch_222eb76 - Jumppoints_222eb34 - 2
.hword branch_222eb76 - Jumppoints_222eb34 - 2
.hword branch_222eb76 - Jumppoints_222eb34 - 2
.hword branch_222eb7c - Jumppoints_222eb34 - 2
.hword branch_222eb74 - Jumppoints_222eb34 - 2
.hword branch_222eb74 - Jumppoints_222eb34 - 2
.hword branch_222eb74 - Jumppoints_222eb34 - 2
.hword branch_222eb74 - Jumppoints_222eb34 - 2
.hword branch_222eb74 - Jumppoints_222eb34 - 2
.hword branch_222eb74 - Jumppoints_222eb34 - 2
.hword branch_222eb7a - Jumppoints_222eb34 - 2
.hword branch_222eb92 - Jumppoints_222eb34 - 2
.hword branch_222eb9e - Jumppoints_222eb34 - 2
.hword branch_222eb88 - Jumppoints_222eb34 - 2
.hword branch_222eb86 - Jumppoints_222eb34 - 2
.hword branch_222eb8e - Jumppoints_222eb34 - 2
.hword branch_222eb8c - Jumppoints_222eb34 - 2
.hword branch_222eb82 - Jumppoints_222eb34 - 2
.hword branch_222eb80 - Jumppoints_222eb34 - 2
.hword branch_222eb82 - Jumppoints_222eb34 - 2
.hword branch_222eb80 - Jumppoints_222eb34 - 2
.hword branch_222eb82 - Jumppoints_222eb34 - 2
.hword branch_222eb80 - Jumppoints_222eb34 - 2
.hword branch_222eb9a - Jumppoints_222eb34 - 2
.hword branch_222eb9a - Jumppoints_222eb34 - 2
.thumb
branch_222eb70: @ 222eb70 :thumb
	mov     r5, #0x3
	b       branch_222eba0
@ 0x222eb74

.thumb
branch_222eb74: @ 222eb74 :thumb
	mov     r4, #0x1
.thumb
branch_222eb76: @ 222eb76 :thumb
	mov     r5, #0x6
	b       branch_222eba0
@ 0x222eb7a

.thumb
branch_222eb7a: @ 222eb7a :thumb
	mov     r4, #0x1
.thumb
branch_222eb7c: @ 222eb7c :thumb
	mov     r5, #0x7
	b       branch_222eba0
@ 0x222eb80

.thumb
branch_222eb80: @ 222eb80 :thumb
	mov     r4, #0x1
.thumb
branch_222eb82: @ 222eb82 :thumb
	mov     r5, #0xa
	b       branch_222eba0
@ 0x222eb86

.thumb
branch_222eb86: @ 222eb86 :thumb
	mov     r4, #0x1
.thumb
branch_222eb88: @ 222eb88 :thumb
	mov     r5, #0x9
	b       branch_222eba0
@ 0x222eb8c

.thumb
branch_222eb8c: @ 222eb8c :thumb
	mov     r4, #0x1
.thumb
branch_222eb8e: @ 222eb8e :thumb
	mov     r5, #0xb
	b       branch_222eba0
@ 0x222eb92

.thumb
branch_222eb92: @ 222eb92 :thumb
	mov     r5, #0x4
	b       branch_222eba0
@ 0x222eb96

.thumb
branch_222eb96: @ 222eb96 :thumb
	mov     r5, #0x8
	b       branch_222eba0
@ 0x222eb9a

.thumb
branch_222eb9a: @ 222eb9a :thumb
	mov     r5, #0x5
	b       branch_222eba0
@ 0x222eb9e

.thumb
branch_222eb9e: @ 222eb9e :thumb
	mov     r5, #0x5
.thumb
branch_222eba0: @ 222eba0 :thumb
	str     r5, [sp, #0x0]
	str     r4, [sp, #0x4]
	bl      Function_222ead0
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x222ebac

.thumb
Function_222ebac: @ 222ebac :thumb
	cmp     r0, #0x4
	bcs     branch_222ebb4
	mov     r0, #0x8
	bx      lr
@ 0x222ebb4

.thumb
branch_222ebb4: @ 222ebb4 :thumb
	mov     r0, #0xd
	bx      lr
@ 0x222ebb8

.thumb
Function_222ebb8: @ 222ebb8 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x36
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      Function_200f174
	bl      Function_2231a0c
	mov     r0, #0x12
	add     sp, #0xc
	pop     {pc}
@ 0x222ebde


.align 2, 0


.thumb
Function_222ebe0: @ 222ebe0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x5f
	lsl     r0, r0, #2
	mov     r1, #0x36
	bl      Function_2023790
	mov     r1, #0x5d
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	add     r1, #0x8
	mov     r0, r1
	mov     r1, #0x36
	bl      Function_2023790
	mov     r1, #0x5f
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, r1
	mov     r1, #0x36
	bl      Function_2023790
	mov     r1, #0x17
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	mov     r0, #0xb4
	mov     r1, #0x36
	bl      Function_2023790
	mov     r1, #0x5e
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0xd1
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	pop     {r4,pc}
@ 0x222ec2a


.align 2, 0


.thumb
Function_222ec2c: @ 222ec2c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x5e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_20237bc
	mov     r0, #0x5d
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_20237bc
	mov     r0, #0x5f
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_20237bc
	mov     r0, #0x17
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_20237bc
	pop     {r4,pc}
@ 0x222ec5a


.align 2, 0


.thumb
Function_222ec5c: @ 222ec5c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x7
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x6
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x5
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2019044
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x222eca6


.align 2, 0


.thumb
Function_222eca8: @ 222eca8 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r6, r0
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r4, [r6, r0]
	mov     r0, #0x1
	mov     r5, r1
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
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff74
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x36
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x3
	mov     r3, r2
	bl      Function_2007130
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x36
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x3
	mov     r2, #0x4
	bl      Function_2007130
	mov     r1, #0x1a
	mov     r0, #0x0
	lsl     r1, r1, #4
	mov     r2, #0x36
	bl      Function_2002e98
	mov     r1, #0x6
	mov     r0, #0x0
	lsl     r1, r1, #6
	mov     r2, #0x36
	bl      Function_2002e98
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r3, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, #0x36
	str     r0, [sp, #0xc]
	mov     r0, r5
	mov     r1, #0x2
	mov     r2, r4
	bl      Function_20070e8
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r3, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, #0x36
	str     r0, [sp, #0xc]
	mov     r0, r5
	mov     r1, #0x5
	mov     r2, r4
	bl      Function_200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x36
	str     r0, [sp, #0xc]
	mov     r0, r5
	mov     r1, #0xa
	mov     r2, r4
	mov     r3, #0x4
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x36
	str     r0, [sp, #0xc]
	mov     r0, r5
	mov     r1, #0xb
	mov     r2, r4
	mov     r3, #0x4
	bl      Function_200710c
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r6, r0]
	bl      LoadPlayerDataAdress
	bl      Function_2027b50
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x36
	str     r0, [sp, #0x4]
	ldr     r2, [pc, #0x38] @ 0x222edc8, (=0x1e2)
	mov     r0, r4
	mov     r1, #0x2
	mov     r3, #0xa
	bl      Function_200dd0c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x36
	str     r0, [sp, #0x4]
	ldr     r2, [pc, #0x28] @ 0x222edcc, (=0x1d9)
	mov     r0, r4
	mov     r1, #0x2
	mov     r3, #0xb
	bl      Function_200daa4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x36
	str     r0, [sp, #0x4]
	ldr     r2, [pc, #0x14] @ 0x222edcc, (=0x1d9)
	mov     r0, r4
	mov     r1, #0x1
	mov     r3, #0xb
	bl      Function_200daa4
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x222edc6


.align 2


.word 0x1e2 @ 0x222edc8
.word 0x1d9 @ 0x222edcc
.thumb
Function_222edd0: @ 222edd0 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	ldr     r4, [pc, #0x38] @ 0x222ee10, (=0x2238978)
	add     r3, sp, #0x0
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	ldr     r1, [pc, #0x2c] @ 0x222ee14, (=0x200010)
	mov     r2, #0x10
	bl      Function_201e88c
	mov     r0, #0x14
	mov     r1, #0x36
	bl      Function_201f834
	bl      Function_201e994
	bl      Function_201f8e4
	ldr     r1, [pc, #0x14] @ 0x222ee14, (=0x200010)
	mov     r0, #0x1
	bl      Function_200966c
	mov     r0, #0x1
	bl      Function_2009704
	add     sp, #0x10
	pop     {r4,pc}
@ 0x222ee0e


.align 2


.word 0x2238978 @ 0x222ee10
.word 0x200010 @ 0x222ee14
.thumb
Function_222ee18: @ 222ee18 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r6, r0
	blx     Function_20a7944
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x7e
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r3, #0x20
	str     r3, [sp, #0xc]
	mov     r2, #0x36
	str     r2, [sp, #0x10]
	mov     r2, r0
	bl      Function_200a784
	mov     r1, #0x19
	lsl     r1, r1, #4
	mov     r0, #0x8
	add     r1, r6, r1
	mov     r2, #0x36
	bl      Function_20095c4
	mov     r1, #0x63
	lsl     r1, r1, #2
	str     r0, [r6, r1]
	add     r0, r1, #0x4
	mov     r2, #0x1
	add     r0, r6, r0
	mov     r1, #0x0
	lsl     r2, r2, #20
	bl      Function_200964c
	mov     r7, #0xae
	mov     r4, #0x0
	mov     r5, r6
	lsl     r7, r7, #2
.thumb
branch_222ee64: @ 222ee64 :thumb
	mov     r0, #0x1
	mov     r1, r4
	mov     r2, #0x36
	bl      Function_2009714
	str     r0, [r5, r7]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_222ee64
	mov     r0, #0x1
	mov     r1, #0x36
	bl      Function_2012744
	mov     r1, #0xb2
	lsl     r1, r1, #2
	str     r0, [r6, r1]
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x222ee8a


.align 2, 0


.thumb
Function_222ee8c: @ 222ee8c :thumb
	ldr     r3, [pc, #0x4] @ 0x222ee94, (=0x201ff0d)
	mov     r0, #0x10
	mov     r1, #0x1
	bx      r3
@ 0x222ee94

.word 0x201ff0d @ 0x222ee94
.thumb
Function_222ee98: @ 222ee98 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	mov     r4, r0
	mov     r0, #0xbb
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_201a7cc
	cmp     r0, #0x0
	beq     branch_222eec2
	mov     r0, #0xbb
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, #0x0
	bl      Function_200dc9c
	mov     r0, #0xbb
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_201a8fc
.thumb
branch_222eec2: @ 222eec2 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x16
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x70] @ 0x222ef44, (=0x1ca)
	mov     r1, #0xbb
	str     r0, [sp, #0x10]
	sub     r0, #0x6e
	lsl     r1, r1, #2
	ldr     r0, [r4, r0]
	add     r1, r4, r1
	mov     r2, #0x3
	mov     r3, #0x5
	bl      Function_201a7e8
	mov     r0, #0xbb
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, #0x0
	bl      Function_201ada4
	mov     r2, #0x5a
	lsl     r2, r2, #2
	ldr     r0, [r4, r2]
	add     r2, #0x10
	ldr     r2, [r4, r2]
	mov     r1, #0x15
	bl      Function_200b1b8
	mov     r1, #0x5e
	lsl     r1, r1, #2
	mov     r0, #0x0
	ldr     r1, [r4, r1]
	mov     r2, r0
	mov     r3, #0xb0
	bl      Function_2002eec
	mov     r1, #0x0
	mov     r3, r0
	str     r1, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	ldr     r0, [pc, #0x28] @ 0x222ef48, (=0xf0e00)
	add     r2, #0x79
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, #0xbb
	lsl     r0, r0, #2
	ldr     r2, [r4, r2]
	add     r0, r4, r0
	mov     r1, #0x1
	bl      Function_201d78c
	mov     r0, #0xbb
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_201a9a4
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x222ef42


.align 2


.word 0x1ca @ 0x222ef44
.word 0xf0e00 @ 0x222ef48
.thumb
Function_222ef4c: @ 222ef4c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2232dfc
	mov     r0, #0xbb
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_201a7cc
	cmp     r0, #0x0
	beq     branch_222ef6c
	mov     r0, #0xbb
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_201a8fc
.thumb
branch_222ef6c: @ 222ef6c :thumb
	mov     r0, #0xb3
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_201a7cc
	cmp     r0, #0x0
	beq     branch_222ef84
	mov     r0, #0xb3
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_201a8fc
.thumb
branch_222ef84: @ 222ef84 :thumb
	mov     r0, #0xcb
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_201a7cc
	cmp     r0, #0x0
	beq     branch_222ef9c
	mov     r0, #0xcb
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_201a8fc
.thumb
branch_222ef9c: @ 222ef9c :thumb
	mov     r0, #0xb7
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_201a7cc
	cmp     r0, #0x0
	beq     branch_222efb4
	mov     r0, #0xb7
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_201a8fc
.thumb
branch_222efb4: @ 222efb4 :thumb
	mov     r0, #0xc3
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_201a7cc
	cmp     r0, #0x0
	beq     branch_222efcc
	mov     r0, #0xc3
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_201a8fc
.thumb
branch_222efcc: @ 222efcc :thumb
	mov     r0, #0x15
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_222efde
	mov     r1, #0x0
	mov     r2, r1
	bl      Function_2001384
.thumb
branch_222efde: @ 222efde :thumb
	mov     r0, #0x53
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_222eff4
	bl      Function_2013a3c
	mov     r0, #0x53
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
.thumb
branch_222eff4: @ 222eff4 :thumb
	mov     r0, #0xbf
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_201a7cc
	cmp     r0, #0x0
	beq     branch_222f00c
	mov     r0, #0xbf
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_201a8fc
.thumb
branch_222f00c: @ 222f00c :thumb
	pop     {r4,pc}
@ 0x222f00e


.align 2, 0


.thumb
Function_222f010: @ 222f010 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_20389b8
	cmp     r0, #0x0
	beq     branch_222f0bc
	bl      0x21d2388
	mov     r1, r0
	mov     r0, r5
	bl      Function_2232dc0
	bl      Function_20388e8
	mov     r1, r0
	str     r0, [r5, #0x4]
	add     r1, #0x22
	ldrb    r1, [r1, #0x0]
	add     r0, #0x21
	strb    r1, [r0, #0x0]
	ldr     r1, [r5, #0x4]
	mov     r0, r5
	bl      Function_222dd20
	cmp     r0, #0x8
	beq     branch_222f06a
	cmp     r0, #0x12
	beq     branch_222f06a
	cmp     r0, #0x14
	beq     branch_222f06a
	cmp     r0, #0x16
	beq     branch_222f06a
	cmp     r0, #0x17
	beq     branch_222f06a
	cmp     r0, #0x18
	beq     branch_222f06a
	cmp     r0, #0x19
	beq     branch_222f06a
	cmp     r0, #0x1a
	beq     branch_222f06a
	cmp     r0, #0x1b
	beq     branch_222f06a
	cmp     r0, #0x13
	bne     branch_222f09a
.thumb
branch_222f06a: @ 222f06a :thumb
	mov     r0, r5
	mov     r1, #0x10
	bl      Function_2232e58
	bl      Function_2032a70
	bl      Function_2038398
	bl      Function_20388e8
	mov     r1, r0
	str     r0, [r5, #0x4]
	add     r1, #0x22
	ldrb    r1, [r1, #0x0]
	add     r0, #0x21
	strb    r1, [r0, #0x0]
	mov     r0, #0xd6
	mov     r1, #0x14
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r1, #0x41
	sub     r0, #0x14
	str     r1, [r5, r0]
	b       branch_222f158
@ 0x222f09a

.thumb
branch_222f09a: @ 222f09a :thumb
	mov     r0, r5
	mov     r1, #0x4d
	mov     r2, #0x0
	bl      Function_2232b58
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_20388f4
	mov     r0, #0x10
	bl      Function_20364f0
	mov     r0, #0xd1
	mov     r1, #0x3d
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	b       branch_222f158
@ 0x222f0bc

.thumb
branch_222f0bc: @ 222f0bc :thumb
	ldr     r1, [pc, #0x9c] @ 0x222f15c, (=0x497)
	mov     r0, #0xb
	mov     r2, #0x1
	bl      Function_2004550
	mov     r0, r5
	bl      Function_222ee98
	ldr     r0, [r5, #0x0]
	bl      Function_202ad28
	blx     Function_20a450c
	cmp     r0, #0x0
	bne     branch_222f126
	mov     r0, #0x0
	mov     r1, #0x3
	bl      Function_2019060
	mov     r0, #0x1
	mov     r1, #0x0
	bl      Function_2019060
	mov     r0, #0x3
	mov     r1, #0x0
	bl      Function_2019060
	mov     r0, #0x2
	mov     r1, #0x1
	bl      Function_2019060
	mov     r0, r5
	mov     r1, #0x12
	bl      Function_2232ca8
	mov     r2, #0x57
	mov     r0, #0x36
	lsl     r2, r2, #2
	str     r0, [sp, #0x0]
	ldr     r0, [r5, r2]
	ldr     r1, [pc, #0x50] @ 0x222f160, (=0x2238954)
	add     r2, #0x7d
	mov     r3, #0xb
	bl      Function_2002100
	mov     r1, #0x61
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0xd1
	mov     r1, #0x6
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	b       branch_222f158
@ 0x222f126

.thumb
branch_222f126: @ 222f126 :thumb
	ldr     r0, [r5, #0x0]
	bl      Function_202ad28
	blx     Function_20a453c
	cmp     r0, #0x0
	bne     branch_222f146
	mov     r0, r5
	mov     r1, #0x14
	bl      Function_2232ca8
	mov     r0, #0xd1
	mov     r1, #0x3
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	b       branch_222f158
@ 0x222f146

.thumb
branch_222f146: @ 222f146 :thumb
	mov     r0, r5
	mov     r1, #0x11
	mov     r2, #0x1
	bl      Function_2232b58
	mov     r0, #0xd1
	mov     r1, #0x1
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_222f158: @ 222f158 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x222f15c

.word 0x497 @ 0x222f15c
.word 0x2238954 @ 0x222f160
.thumb
Function_222f164: @ 222f164 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	mov     r4, r1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_222f19e
	mov     r2, #0x57
	mov     r0, #0x36
	lsl     r2, r2, #2
	str     r0, [sp, #0x0]
	ldr     r0, [r5, r2]
	ldr     r1, [pc, #0x1c] @ 0x222f1a4, (=0x2238944)
	add     r2, #0x7d
	mov     r3, #0xb
	bl      Function_2002100
	mov     r1, #0x61
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0xd1
	mov     r1, #0x2
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_222f19e: @ 222f19e :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x222f1a2


.align 2


.word 0x2238944 @ 0x222f1a4
.thumb
Function_222f1a8: @ 222f1a8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x61
	lsl     r0, r0, #2
	mov     r4, r1
	ldr     r0, [r5, r0]
	mov     r1, #0x36
	bl      Function_2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	bne     branch_222f1c6
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x222f1c6

.thumb
branch_222f1c6: @ 222f1c6 :thumb
	cmp     r0, #0x0
	bne     branch_222f20c
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	ldr     r1, [pc, #0x44] @ 0x222f218, (=0x4a4)
	bl      Function_203871c
	str     r0, [r5, #0x4]
	mov     r0, r5
	mov     r1, #0x17
	mov     r2, #0x1
	bl      Function_2232b58
	mov     r0, #0x62
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_222f1f0
	bl      ErrorHandling
.thumb
branch_222f1f0: @ 222f1f0 :thumb
	mov     r1, #0xb3
	lsl     r1, r1, #2
	add     r0, r5, r1
	sub     r1, #0xea
	bl      Function_200e7fc
	mov     r1, #0x62
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0xd1
	mov     r1, #0xe
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	b       branch_222f214
@ 0x222f20c

.thumb
branch_222f20c: @ 222f20c :thumb
	mov     r0, #0xd1
	mov     r1, #0x22
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_222f214: @ 222f214 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x222f218

.word 0x4a4 @ 0x222f218
.thumb
Function_222f21c: @ 222f21c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r1
	ldr     r1, [pc, #0x5c] @ 0x222f280, (=0x21bf67c)
	mov     r5, r0
	ldr     r2, [r1, #0x48]
	mov     r1, #0x3
	tst     r1, r2
	beq     branch_222f27a
	mov     r1, #0x15
	bl      Function_2232ca8
	mov     r0, #0x3
	mov     r1, #0x0
	bl      Function_2019060
	mov     r0, #0x2
	mov     r1, #0x1
	bl      Function_2019060
	mov     r0, #0x1
	mov     r1, #0x0
	bl      Function_2019060
	mov     r0, #0x0
	mov     r1, #0x3
	bl      Function_2019060
	mov     r0, #0x1
	mov     r2, #0x57
	str     r0, [sp, #0x0]
	mov     r0, #0x36
	lsl     r2, r2, #2
	str     r0, [sp, #0x4]
	ldr     r0, [r5, r2]
	ldr     r1, [pc, #0x20] @ 0x222f284, (=0x2238954)
	add     r2, #0x7d
	mov     r3, #0xb
	bl      Function_2002054
	mov     r1, #0x61
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0xd1
	mov     r1, #0x4
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_222f27a: @ 222f27a :thumb
	mov     r0, r4
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x222f280

.word 0x21bf67c @ 0x222f280
.word 0x2238954 @ 0x222f284
.thumb
Function_222f288: @ 222f288 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r0, #0x61
	lsl     r0, r0, #2
	mov     r4, r1
	ldr     r0, [r5, r0]
	mov     r1, #0x36
	bl      Function_2002114
	mov     r6, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r6, r0
	bne     branch_222f2ac
	add     sp, #0x8
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x222f2ac

.thumb
branch_222f2ac: @ 222f2ac :thumb
	mov     r0, #0xbf
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x0
	bl      Function_200e084
	mov     r0, #0xbf
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a8fc
	cmp     r6, #0x0
	bne     branch_222f2f0
	mov     r0, r5
	mov     r1, #0x16
	bl      Function_2232ca8
	mov     r0, #0x1
	mov     r2, #0x57
	str     r0, [sp, #0x0]
	mov     r0, #0x36
	lsl     r2, r2, #2
	str     r0, [sp, #0x4]
	ldr     r0, [r5, r2]
	ldr     r1, [pc, #0x20] @ 0x222f300, (=0x2238954)
	add     r2, #0x7d
	mov     r3, #0xb
	bl      Function_2002054
	mov     r1, #0x61
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r1, #0x5
	b       branch_222f2f2
@ 0x222f2f0

.thumb
branch_222f2f0: @ 222f2f0 :thumb
	mov     r1, #0x22
.thumb
branch_222f2f2: @ 222f2f2 :thumb
	mov     r0, #0xd1
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, r4
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x222f2fe


.align 2


.word 0x2238954 @ 0x222f300
.thumb
Function_222f304: @ 222f304 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, #0x61
	lsl     r0, r0, #2
	mov     r4, r1
	ldr     r0, [r5, r0]
	mov     r1, #0x36
	bl      Function_2002114
	mov     r6, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r6, r0
	bne     branch_222f324
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x222f324

.thumb
branch_222f324: @ 222f324 :thumb
	mov     r0, #0x3
	mov     r1, #0x0
	bl      Function_2019060
	mov     r0, #0x2
	mov     r1, #0x0
	bl      Function_2019060
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_2019060
	mov     r0, #0x0
	mov     r1, #0x3
	bl      Function_2019060
	mov     r0, #0xbf
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x0
	bl      Function_200e084
	mov     r0, #0xbf
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a8fc
	cmp     r6, #0x0
	bne     branch_222f3cc
	ldr     r0, [r5, #0x0]
	bl      Function_202ace8
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x23
	bl      LoadVariableAreaAdress
	bl      Function_2030cec
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	bl      LoadVariableAreaAdress_17
	bl      Function_2030764
	mov     r0, #0xd1
	mov     r1, #0xe
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	ldr     r1, [pc, #0x44] @ 0x222f3d8, (=0x4a4)
	bl      Function_203871c
	str     r0, [r5, #0x4]
	mov     r0, r5
	mov     r1, #0x17
	mov     r2, #0x1
	bl      Function_2232b58
	mov     r0, #0x62
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_222f3b0
	bl      ErrorHandling
.thumb
branch_222f3b0: @ 222f3b0 :thumb
	mov     r1, #0xb3
	lsl     r1, r1, #2
	add     r0, r5, r1
	sub     r1, #0xea
	bl      Function_200e7fc
	mov     r1, #0x62
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0xd9
	mov     r1, #0x1
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	b       branch_222f3d4
@ 0x222f3cc

.thumb
branch_222f3cc: @ 222f3cc :thumb
	mov     r0, #0xd1
	mov     r1, #0x22
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_222f3d4: @ 222f3d4 :thumb
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x222f3d8

.word 0x4a4 @ 0x222f3d8
.thumb
Function_222f3dc: @ 222f3dc :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, #0x61
	lsl     r0, r0, #2
	mov     r4, r1
	ldr     r0, [r5, r0]
	mov     r1, #0x36
	bl      Function_2002114
	mov     r6, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r6, r0
	bne     branch_222f3fc
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x222f3fc

.thumb
branch_222f3fc: @ 222f3fc :thumb
	mov     r0, #0x0
	mov     r1, #0x3
	bl      Function_2019060
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_2019060
	mov     r0, #0x3
	mov     r1, #0x0
	bl      Function_2019060
	mov     r0, #0x2
	mov     r1, #0x0
	bl      Function_2019060
	mov     r0, #0xbf
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x0
	bl      Function_200e084
	mov     r0, #0xbf
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a8fc
	cmp     r6, #0x0
	bne     branch_222f480
	mov     r0, #0xd1
	mov     r1, #0xe
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	ldr     r1, [pc, #0x44] @ 0x222f48c, (=0x4a4)
	bl      Function_203871c
	str     r0, [r5, #0x4]
	mov     r0, r5
	mov     r1, #0x17
	mov     r2, #0x1
	bl      Function_2232b58
	mov     r0, #0x62
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_222f464
	bl      ErrorHandling
.thumb
branch_222f464: @ 222f464 :thumb
	mov     r1, #0xb3
	lsl     r1, r1, #2
	add     r0, r5, r1
	sub     r1, #0xea
	bl      Function_200e7fc
	mov     r1, #0x62
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0xd9
	mov     r1, #0x1
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	b       branch_222f488
@ 0x222f480

.thumb
branch_222f480: @ 222f480 :thumb
	mov     r0, #0xd1
	mov     r1, #0x22
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_222f488: @ 222f488 :thumb
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x222f48c

.word 0x4a4 @ 0x222f48c
.thumb
Function_222f490: @ 222f490 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r0, #0x0
	mov     r1, #0x3
	bl      Function_2019060
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_2019060
	mov     r0, #0x3
	mov     r1, #0x0
	bl      Function_2019060
	mov     r0, #0x2
	mov     r1, #0x0
	bl      Function_2019060
	mov     r0, #0xd1
	mov     r1, #0xf
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x222f4c2


.align 2, 0


.thumb
Function_222f4c4: @ 222f4c4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	str     r1, [sp, #0x0]
	bl      LoadTrainerDataAdress
	str     r0, [sp, #0x14]
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	bl      LoadVariableAreaAdress_7
	str     r0, [sp, #0x10]
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	bl      LoadPokePartyAdress
	str     r0, [sp, #0xc]
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	bl      Function_202c878
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0xc]
	bl      GetNrOfPkmnInParty
	mov     r6, #0x0
	str     r0, [sp, #0x4]
	cmp     r0, #0x0
	ble     branch_222f53c
	mov     r4, r6
.thumb
branch_222f50c: @ 222f50c :thumb
	ldr     r0, [sp, #0xc]
	mov     r1, r6
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x5
	mov     r2, #0x0
	mov     r7, r0
	bl      GetPkmnData
	ldr     r1, [r5, #0x4]
	mov     r2, #0x0
	strh    r0, [r1, r4]
	mov     r0, r7
	mov     r1, #0x6
	bl      GetPkmnData
	ldr     r1, [r5, #0x4]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r1, r1, r4
	strh    r0, [r1, #0xc]
	ldr     r0, [sp, #0x4]
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r6, r0
	blt     branch_222f50c
.thumb
branch_222f53c: @ 222f53c :thumb
	ldr     r0, [sp, #0x14]
	bl      Function_2025fcc
	ldr     r1, [r5, #0x4]
	strb    r0, [r1, #0x18]
	ldr     r0, [sp, #0x14]
	bl      Function_2025fd8
	ldr     r1, [r5, #0x4]
	strb    r0, [r1, #0x19]
	ldr     r0, [sp, #0x10]
	bl      Function_2027474
	ldr     r1, [r5, #0x4]
	strb    r0, [r1, #0x1a]
	ldr     r0, [r5, #0x4]
	mov     r1, #0x1d
	strb    r1, [r0, #0x1b]
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	bl      Function_2232e70
	ldr     r0, [r5, #0x4]
	mov     r1, #0x0
	strb    r1, [r0, #0x1c]
	ldr     r0, [sp, #0x14]
	bl      Function_2025f8c
	ldr     r1, [r5, #0x4]
	strb    r0, [r1, #0x1d]
	ldr     r0, [sp, #0x14]
	bl      GetGender
	ldr     r1, [r5, #0x4]
	strb    r0, [r1, #0x1e]
	ldr     r0, [sp, #0x8]
	bl      Function_202c8c0
	ldr     r1, [r5, #0x4]
	strb    r0, [r1, #0x1f]
	ldr     r0, [sp, #0x8]
	bl      Function_202c8c4
	ldr     r1, [r5, #0x4]
	add     r1, #0x20
	strb    r0, [r1, #0x0]
	ldr     r0, [r5, #0x4]
	mov     r1, #0x1
	add     r0, #0x21
	strb    r1, [r0, #0x0]
	ldr     r0, [r5, #0x4]
	add     r0, #0x22
	strb    r1, [r0, #0x0]
	ldr     r0, [r5, #0x4]
	mov     r1, #0x24
	bl      0x21d222c
	ldr     r0, [r5, #0x4]
	mov     r1, #0x24
	add     r0, #0x24
	bl      0x21d2198
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x222f5bc

.thumb
Function_222f5bc: @ 222f5bc :thumb
	push    {r3-r7,lr}
	mov     r6, #0x0
	mov     r5, r0
	mov     r4, r6
.thumb
branch_222f5c4: @ 222f5c4 :thumb
	add     r1, r5, r4
	mov     r0, #0x0
	strb    r0, [r1, #0xc]
	ldr     r0, [pc, #0x5c] @ 0x222f628, (=0x1092)
	ldrh    r0, [r5, r0]
	cmp     r0, r4
	ble     branch_222f61e
	mov     r0, r4
	bl      Function_2234fc4
	cmp     r0, #0x0
	beq     branch_222f61e
	mov     r0, r5
	mov     r1, r4
	bl      Function_2234fa8
	mov     r7, r0
	mov     r0, r5
	mov     r1, r7
	bl      Function_222dd20
	cmp     r0, #0x0
	beq     branch_222f606
	cmp     r0, #0x1c
	beq     branch_222f606
	ldrb    r1, [r7, #0x1d]
	cmp     r1, #0x0
	beq     branch_222f606
	add     r0, r5, r6
	add     r1, r4, #0x1
	strb    r1, [r0, #0xc]
	.hword  0x1c76 @ add r6, r6, #0x1
	b       branch_222f61e
@ 0x222f606

.thumb
branch_222f606: @ 222f606 :thumb
	cmp     r0, #0x1c
	bne     branch_222f61e
	mov     r0, r5
	add     r1, r4, #0x1
	bl      Function_223368c
	cmp     r0, #0x0
	beq     branch_222f61e
	mov     r0, r5
	add     r1, r4, #0x1
	bl      Function_223366c
.thumb
branch_222f61e: @ 222f61e :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x20
	blt     branch_222f5c4
	mov     r0, r6
	pop     {r3-r7,pc}
@ 0x222f628

.word 0x1092 @ 0x222f628
.thumb
Function_222f62c: @ 222f62c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r4, #0x0
	str     r4, [sp, #0xc]
	mov     r6, r5
.thumb
branch_222f638: @ 222f638 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_2234fa8
	mov     r7, r0
	mov     r0, r5
	mov     r1, r7
	bl      Function_222dd20
	ldr     r1, [r6, #0x4c]
	str     r0, [sp, #0x0]
	cmp     r0, r1
	bne     branch_222f662
	mov     r0, r7
	add     r0, #0x21
	ldrb    r1, [r0, #0x0]
	mov     r0, r6
	add     r0, #0xcc
	ldr     r0, [r0, #0x0]
	cmp     r1, r0
	beq     branch_222f6de
.thumb
branch_222f662: @ 222f662 :thumb
	mov     r0, r5
	add     r1, r4, #0x1
	bl      Function_222e8d4
	str     r0, [sp, #0x4]
	cmp     r0, #0x0
	beq     branch_222f6de
	ldr     r0, [r6, #0x4c]
	bl      Function_222ddfc
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x0]
	bl      Function_222ddfc
	ldr     r1, [sp, #0x8]
	cmp     r1, #0x1
	bne     branch_222f698
	cmp     r0, #0x0
	bne     branch_222f698
	mov     r0, #0xe2
	lsl     r0, r0, #2
	ldr     r1, [sp, #0x4]
	add     r0, r5, r0
	mov     r2, #0x0
	bl      Function_223558c
	b       branch_222f6b0
@ 0x222f698

.thumb
branch_222f698: @ 222f698 :thumb
	ldr     r1, [sp, #0x8]
	cmp     r1, #0x0
	bne     branch_222f6b0
	cmp     r0, #0x1
	bne     branch_222f6b0
	mov     r0, #0xe2
	lsl     r0, r0, #2
	ldr     r1, [sp, #0x4]
	add     r0, r5, r0
	mov     r2, #0x1
	bl      Function_223558c
.thumb
branch_222f6b0: @ 222f6b0 :thumb
	ldr     r0, [sp, #0x0]
	mov     r2, #0x7
	str     r0, [r6, #0x4c]
	mov     r0, r7
	add     r0, #0x21
	ldrb    r1, [r0, #0x0]
	mov     r0, r6
	add     r0, #0xcc
	str     r1, [r0, #0x0]
	ldrb    r3, [r7, #0x1d]
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	bl      Function_202ae2c
	ldrb    r3, [r7, #0x1e]
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	mov     r2, #0x8
	bl      Function_202ae2c
	ldr     r0, [sp, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0xc]
.thumb
branch_222f6de: @ 222f6de :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r4, #0x20
	blt     branch_222f638
	ldr     r0, [sp, #0xc]
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x222f6ec

.thumb
Function_222f6ec: @ 222f6ec :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r0
	bl      Function_20382f8
	mov     r1, r0
	ldr     r6, [r1, #0x0]
	ldr     r1, [r1, #0x4]
	mov     r0, r6
	bl      0x21d1f3c
	mov     r5, r0
	cmp     r5, #0xb
	beq     branch_222f70c
	cmp     r6, #0x19
	bne     branch_222f712
.thumb
branch_222f70c: @ 222f70c :thumb
	mov     r7, #0xe
	mov     r5, #0xb
	b       branch_222f726
@ 0x222f712

.thumb
branch_222f712: @ 222f712 :thumb
	cmp     r6, #0x1a
	bne     branch_222f71c
	mov     r7, #0xd
	mov     r5, #0xc
	b       branch_222f726
@ 0x222f71c

.thumb
branch_222f71c: @ 222f71c :thumb
	cmp     r5, #0x0
	blt     branch_222f724
	mov     r7, r5
	b       branch_222f726
@ 0x222f724

.thumb
branch_222f724: @ 222f724 :thumb
	mov     r7, #0xb
.thumb
branch_222f726: @ 222f726 :thumb
	mov     r0, r4
	bl      Function_2232dfc
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x59
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	mov     r2, r6
	mov     r3, #0x5
	bl      Function_200b60c
	mov     r0, #0xd6
	mov     r1, #0x1e
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r0, r4
	mov     r1, r7
	bl      Function_2232ca8
	cmp     r5, #0xb
	bhi     branch_222f7a0
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x222f764

Jumppoints_222f764:
.hword branch_222f7a0 - Jumppoints_222f764 - 2
.hword branch_222f77c - Jumppoints_222f764 - 2
.hword branch_222f7a0 - Jumppoints_222f764 - 2
.hword branch_222f7a0 - Jumppoints_222f764 - 2
.hword branch_222f77c - Jumppoints_222f764 - 2
.hword branch_222f77c - Jumppoints_222f764 - 2
.hword branch_222f788 - Jumppoints_222f764 - 2
.hword branch_222f788 - Jumppoints_222f764 - 2
.hword branch_222f788 - Jumppoints_222f764 - 2
.hword branch_222f788 - Jumppoints_222f764 - 2
.hword branch_222f794 - Jumppoints_222f764 - 2
.hword branch_222f77c - Jumppoints_222f764 - 2
.thumb
branch_222f77c: @ 222f77c :thumb
	mov     r0, #0xd1
	mov     r1, #0xa
	lsl     r0, r0, #2
	add     sp, #0x8
	str     r1, [r4, r0]
	pop     {r3-r7,pc}
@ 0x222f788

.thumb
branch_222f788: @ 222f788 :thumb
	mov     r0, #0xd1
	mov     r1, #0xa
	lsl     r0, r0, #2
	add     sp, #0x8
	str     r1, [r4, r0]
	pop     {r3-r7,pc}
@ 0x222f794

.thumb
branch_222f794: @ 222f794 :thumb
	mov     r0, #0xd1
	mov     r1, #0xa
	lsl     r0, r0, #2
	add     sp, #0x8
	str     r1, [r4, r0]
	pop     {r3-r7,pc}
@ 0x222f7a0

.thumb
branch_222f7a0: @ 222f7a0 :thumb
	mov     r0, #0xd1
	mov     r1, #0x23
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x222f7ac

.thumb
Function_222f7ac: @ 222f7ac :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x38] @ 0x222f7ec, (=0x21bf67c)
	mov     r4, r1
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_222f7e8
	mov     r0, #0xbf
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a7cc
	cmp     r0, #0x0
	beq     branch_222f7e0
	mov     r0, #0xbf
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x0
	bl      Function_200e084
	mov     r0, #0xbf
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a8fc
.thumb
branch_222f7e0: @ 222f7e0 :thumb
	mov     r0, #0xd1
	mov     r1, #0x8
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_222f7e8: @ 222f7e8 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x222f7ec

.word 0x21bf67c @ 0x222f7ec
.thumb
Function_222f7f0: @ 222f7f0 :thumb
	mov     r2, #0xd1
	mov     r3, #0x9
	lsl     r2, r2, #2
	str     r3, [r0, r2]
	mov     r0, r1
	bx      lr
@ 0x222f7fc

.thumb
Function_222f7fc: @ 222f7fc :thumb
	mov     r2, #0xd1
	mov     r3, #0xb
	lsl     r2, r2, #2
	str     r3, [r0, r2]
	mov     r0, r1
	bx      lr
@ 0x222f808

.thumb
Function_222f808: @ 222f808 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r1, #0xd6
	mov     r5, r0
	lsl     r1, r1, #2
	ldr     r0, [r5, r1]
	cmp     r0, #0x0
	ble     branch_222f820
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r5, r1]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x222f820

.thumb
branch_222f820: @ 222f820 :thumb
	ldr     r0, [pc, #0x40] @ 0x222f864, (=0x21bf67c)
	ldr     r2, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r2
	beq     branch_222f85e
	sub     r1, #0x5c
	add     r0, r5, r1
	bl      Function_201a7cc
	cmp     r0, #0x0
	beq     branch_222f84c
	mov     r0, #0xbf
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x0
	bl      Function_200e084
	mov     r0, #0xbf
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a8fc
.thumb
branch_222f84c: @ 222f84c :thumb
	mov     r0, r5
	mov     r1, #0x58
	mov     r2, #0x0
	bl      Function_2232b58
	mov     r0, #0xd1
	mov     r1, #0xb
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_222f85e: @ 222f85e :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x222f862


.align 2


.word 0x21bf67c @ 0x222f864
.thumb
Function_222f868: @ 222f868 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	mov     r4, r1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_222f8a2
	mov     r2, #0x57
	mov     r0, #0x36
	lsl     r2, r2, #2
	str     r0, [sp, #0x0]
	ldr     r0, [r5, r2]
	ldr     r1, [pc, #0x1c] @ 0x222f8a8, (=0x223894c)
	add     r2, #0x7d
	mov     r3, #0xb
	bl      Function_2002100
	mov     r1, #0x61
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0xd1
	mov     r1, #0xc
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_222f8a2: @ 222f8a2 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x222f8a6


.align 2


.word 0x223894c @ 0x222f8a8
.thumb
Function_222f8ac: @ 222f8ac :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x61
	lsl     r0, r0, #2
	mov     r4, r1
	ldr     r0, [r5, r0]
	mov     r1, #0x36
	bl      Function_2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	bne     branch_222f8ca
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x222f8ca

.thumb
branch_222f8ca: @ 222f8ca :thumb
	cmp     r0, #0x0
	bne     branch_222f8e2
	bl      Function_2038350
	mov     r0, r5
	mov     r1, #0x10
	bl      Function_2232e58
	mov     r0, #0xd1
	mov     r1, #0xd
	lsl     r0, r0, #2
	b       branch_222f8fe
@ 0x222f8e2

.thumb
branch_222f8e2: @ 222f8e2 :thumb
	mov     r0, r5
	mov     r1, #0x10
	bl      Function_2232e58
	bl      Function_2038350
	bl      Function_2032a70
	mov     r0, #0xd2
	mov     r1, #0x8
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r1, #0x22
	.hword  0x1f00 @ sub r0, r0, #0x4
.thumb
branch_222f8fe: @ 222f8fe :thumb
	str     r1, [r5, r0]
	mov     r0, r5
	bl      Function_2232dfc
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x222f90a


.align 2, 0


.thumb
Function_222f90c: @ 222f90c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_20334a4
	cmp     r0, #0x0
	beq     branch_222f91c
	b       branch_222fa8c
@ 0x222f91c

.thumb
branch_222f91c: @ 222f91c :thumb
	mov     r0, #0xe2
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_2235194
	cmp     r0, #0x1
	bne     branch_222f962
	mov     r0, #0x0
	mov     r1, r0
	bl      SetBrightnessWithValue
	mov     r0, #0x1
	mov     r1, #0x0
	bl      SetBrightnessWithValue
	mov     r0, #0xe2
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_2235130
	mov     r2, #0x0
	ldr     r0, [pc, #0x148] @ 0x222fa90, (=0xa84)
	mov     r3, r5
	mov     r1, r2
.thumb
branch_222f94c: @ 222f94c :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	str     r1, [r3, r0]
	.hword  0x1d1b @ add r3, r3, #0x4
	cmp     r2, #0x21
	blt     branch_222f94c
	mov     r0, #0x36
	bl      Function_200a93c
	mov     r0, #0x36
	bl      Function_200a944
.thumb
branch_222f962: @ 222f962 :thumb
	mov     r0, r5
	bl      Function_2232fcc
	cmp     r0, #0x1
	bne     branch_222f972
	mov     r0, r5
	bl      Function_2233068
.thumb
branch_222f972: @ 222f972 :thumb
	mov     r0, #0xbb
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a7cc
	cmp     r0, #0x0
	beq     branch_222f996
	mov     r0, #0xbb
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x0
	bl      Function_200dc9c
	mov     r0, #0xbb
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a8fc
.thumb
branch_222f996: @ 222f996 :thumb
	mov     r0, #0xb7
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a7cc
	cmp     r0, #0x0
	beq     branch_222f9ae
	mov     r0, #0xb7
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a8fc
.thumb
branch_222f9ae: @ 222f9ae :thumb
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x3
	bl      Function_2019ebc
	mov     r0, #0x5c
	mov     r1, #0x36
	bl      LoadFromNARC_8
	mov     r6, r0
	mov     r0, r5
	mov     r1, r6
	bl      Function_222eca8
	mov     r0, r6
	bl      Call_FS_CloseFile
	ldr     r0, [pc, #0xc0] @ 0x222fa94, (=0xd68)
	mov     r1, #0x1
	str     r1, [r5, r0]
	ldr     r0, [pc, #0xbc] @ 0x222fa98, (=0x1090)
	strh    r1, [r5, r0]
	mov     r0, #0x53
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_222fa16
	mov     r0, #0xc3
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a8fc
	mov     r0, #0x15
	lsl     r0, r0, #4
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	mov     r2, r1
	bl      Function_2001384
	mov     r0, #0x15
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r5, r0]
	.hword  0x1f00 @ sub r0, r0, #0x4
	ldr     r0, [r5, r0]
	bl      Function_2013a3c
	mov     r0, #0x53
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_222fa16: @ 222fa16 :thumb
	mov     r0, r5
	add     r0, #0xc
	mov     r1, #0x0
	mov     r2, #0x20
	blx     MI_CpuFill8
	mov     r0, r5
	add     r0, #0x2c
	mov     r1, #0x0
	mov     r2, #0x20
	blx     MI_CpuFill8
	mov     r0, r5
	add     r0, #0x4c
	mov     r1, #0x0
	mov     r2, #0x80
	blx     MI_CpuFill8
	mov     r0, r5
	add     r0, #0xcc
	mov     r1, #0x0
	mov     r2, #0x80
	blx     MI_CpuFill8
	mov     r0, r5
	bl      Function_222ee98
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	ldr     r1, [pc, #0x48] @ 0x222fa9c, (=0x4a4)
	bl      Function_203871c
	str     r0, [r5, #0x4]
	mov     r0, r5
	mov     r1, #0x17
	mov     r2, #0x1
	bl      Function_2232b58
	mov     r0, #0x62
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_222fa72
	bl      ErrorHandling
.thumb
branch_222fa72: @ 222fa72 :thumb
	mov     r1, #0xb3
	lsl     r1, r1, #2
	add     r0, r5, r1
	sub     r1, #0xea
	bl      Function_200e7fc
	mov     r1, #0x62
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0xd1
	mov     r1, #0xe
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_222fa8c: @ 222fa8c :thumb
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x222fa90

.word 0xa84 @ 0x222fa90
.word 0xd68 @ 0x222fa94
.word 0x1090 @ 0x222fa98
.word 0x4a4 @ 0x222fa9c
.thumb
Function_222faa0: @ 222faa0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	mov     r4, r1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	beq     branch_222fabc
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x222fabc

.thumb
branch_222fabc: @ 222fabc :thumb
	bl      0x21d27e0
	cmp     r0, #0x0
	beq     branch_222faf6
	mov     r0, #0xd1
	mov     r1, #0x45
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, r5
	mov     r1, #0x1e
	mov     r2, #0x1
	bl      Function_2232b58
	mov     r0, #0x62
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_222fae4
	bl      ErrorHandling
.thumb
branch_222fae4: @ 222fae4 :thumb
	mov     r1, #0xb3
	lsl     r1, r1, #2
	add     r0, r5, r1
	sub     r1, #0xea
	bl      Function_200e7fc
	mov     r1, #0x62
	lsl     r1, r1, #2
	str     r0, [r5, r1]
.thumb
branch_222faf6: @ 222faf6 :thumb
	bl      Function_2038294
	cmp     r0, #0x0
	beq     branch_222fb2a
	mov     r0, #0xd9
	lsl     r0, r0, #2
	ldr     r1, [r5, r0]
	cmp     r1, #0x0
	beq     branch_222fb10
	mov     r1, #0x10
	sub     r0, #0x20
	str     r1, [r5, r0]
	b       branch_222fb40
@ 0x222fb10

.thumb
branch_222fb10: @ 222fb10 :thumb
	mov     r0, r5
	mov     r1, #0x10
	bl      Function_222f4c4
	mov     r0, r5
	bl      Function_222f5bc
	bl      Function_222ebb8
	mov     r1, #0xd1
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	b       branch_222fb40
@ 0x222fb2a

.thumb
branch_222fb2a: @ 222fb2a :thumb
	bl      Function_20383e8
	cmp     r0, #0x0
	bne     branch_222fb3a
	bl      Function_20380e4
	cmp     r0, #0x3
	bne     branch_222fb40
.thumb
branch_222fb3a: @ 222fb3a :thumb
	mov     r0, r5
	bl      Function_222f6ec
.thumb
branch_222fb40: @ 222fb40 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x222fb44

.thumb
Function_222fb44: @ 222fb44 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	mov     r4, r1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	beq     branch_222fb60
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x222fb60

.thumb
branch_222fb60: @ 222fb60 :thumb
	bl      0x21d27e0
	cmp     r0, #0x0
	beq     branch_222fb80
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_2024814
	mov     r0, #0xd1
	mov     r1, #0x47
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x222fb80

.thumb
branch_222fb80: @ 222fb80 :thumb
	bl      Function_2038294
	cmp     r0, #0x0
	beq     branch_222fbb4
	mov     r0, #0xd9
	lsl     r0, r0, #2
	ldr     r1, [r5, r0]
	cmp     r1, #0x0
	beq     branch_222fb9a
	mov     r1, #0x10
	sub     r0, #0x20
	str     r1, [r5, r0]
	b       branch_222fbca
@ 0x222fb9a

.thumb
branch_222fb9a: @ 222fb9a :thumb
	mov     r0, r5
	mov     r1, #0x10
	bl      Function_222f4c4
	mov     r0, r5
	bl      Function_222f5bc
	bl      Function_222ebb8
	mov     r1, #0xd1
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	b       branch_222fbca
@ 0x222fbb4

.thumb
branch_222fbb4: @ 222fbb4 :thumb
	bl      Function_20383e8
	cmp     r0, #0x0
	bne     branch_222fbc4
	bl      Function_20380e4
	cmp     r0, #0x3
	bne     branch_222fbca
.thumb
branch_222fbc4: @ 222fbc4 :thumb
	mov     r0, r5
	bl      Function_222f6ec
.thumb
branch_222fbca: @ 222fbca :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x222fbce


.align 2, 0


.thumb
Function_222fbd0: @ 222fbd0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      0x21d27e0
	cmp     r0, #0x0
	beq     branch_222fbfa
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	bl      Function_2024828
	cmp     r0, #0x0
	beq     branch_222fbf6
	cmp     r0, #0x1
	beq     branch_222fbf6
	bl      0x21d27f4
	b       branch_222fbfa
@ 0x222fbf6

.thumb
branch_222fbf6: @ 222fbf6 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x222fbfa

.thumb
branch_222fbfa: @ 222fbfa :thumb
	bl      Function_2038294
	cmp     r0, #0x0
	beq     branch_222fc2e
	mov     r0, #0xd9
	lsl     r0, r0, #2
	ldr     r1, [r5, r0]
	cmp     r1, #0x0
	beq     branch_222fc14
	mov     r1, #0x10
	sub     r0, #0x20
	str     r1, [r5, r0]
	b       branch_222fc44
@ 0x222fc14

.thumb
branch_222fc14: @ 222fc14 :thumb
	mov     r0, r5
	mov     r1, #0x10
	bl      Function_222f4c4
	mov     r0, r5
	bl      Function_222f5bc
	bl      Function_222ebb8
	mov     r1, #0xd1
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	b       branch_222fc44
@ 0x222fc2e

.thumb
branch_222fc2e: @ 222fc2e :thumb
	bl      Function_20383e8
	cmp     r0, #0x0
	bne     branch_222fc3e
	bl      Function_20380e4
	cmp     r0, #0x3
	bne     branch_222fc44
.thumb
branch_222fc3e: @ 222fc3e :thumb
	mov     r0, r5
	bl      Function_222f6ec
.thumb
branch_222fc44: @ 222fc44 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x222fc48

.thumb
Function_222fc48: @ 222fc48 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0xd6
	lsl     r0, r0, #2
	mov     r4, r1
	ldr     r1, [r5, r0]
	cmp     r1, #0x0
	ble     branch_222fc60
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r5, r0]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x222fc60

.thumb
branch_222fc60: @ 222fc60 :thumb
	bl      Function_20382c0
	cmp     r0, #0x0
	beq     branch_222fc74
	bl      Function_222ebb8
	mov     r1, #0xd1
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	b       branch_222fcb4
@ 0x222fc74

.thumb
branch_222fc74: @ 222fc74 :thumb
	bl      Function_20383e8
	cmp     r0, #0x0
	bne     branch_222fc84
	bl      Function_20380e4
	cmp     r0, #0x3
	bne     branch_222fc8c
.thumb
branch_222fc84: @ 222fc84 :thumb
	mov     r0, r5
	bl      Function_222f6ec
	b       branch_222fcb4
@ 0x222fc8c

.thumb
branch_222fc8c: @ 222fc8c :thumb
	bl      Function_20380e4
	cmp     r0, #0x4
	bge     branch_222fca6
	bl      Function_2038284
	cmp     r0, #0x0
	bne     branch_222fca6
	mov     r0, #0x0
	bl      Function_2035d78
	cmp     r0, #0x0
	bne     branch_222fcb4
.thumb
branch_222fca6: @ 222fca6 :thumb
	bl      Function_2038378
	bl      Function_222ebb8
	mov     r1, #0xd1
	lsl     r1, r1, #2
	str     r0, [r5, r1]
.thumb
branch_222fcb4: @ 222fcb4 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x222fcb8

.thumb
Function_222fcb8: @ 222fcb8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_2232dfc
	mov     r0, r5
	mov     r1, #0x13
	bl      Function_2232ca8
	mov     r0, #0xd1
	mov     r1, #0x11
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r1, #0x0
	add     r0, #0x20
	str     r1, [r5, r0]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x222fcdc

.thumb
Function_222fcdc: @ 222fcdc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x88] @ 0x222fd6c, (=0x21bf67c)
	mov     r4, r1
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_222fd68
	mov     r1, #0x35
	lsl     r1, r1, #4
	ldr     r0, [r5, r1]
	cmp     r0, #0x1
	bne     branch_222fd0a
	mov     r0, r1
	mov     r2, #0xa
	sub     r0, #0x8
	str     r2, [r5, r0]
	mov     r0, #0x22
	sub     r1, #0xc
	str     r0, [r5, r1]
	bl      Function_2038350
	b       branch_222fd68
@ 0x222fd0a

.thumb
branch_222fd0a: @ 222fd0a :thumb
	ldr     r0, [r5, #0x0]
	bl      Function_202af94
	cmp     r0, #0x0
	bne     branch_222fd2e
	mov     r0, r5
	mov     r1, #0x1a
	mov     r2, #0x1
	bl      Function_2232b58
	mov     r0, #0xd1
	mov     r1, #0x3b
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r1, #0x1
	add     r0, #0x14
	str     r1, [r5, r0]
	b       branch_222fd68
@ 0x222fd2e

.thumb
branch_222fd2e: @ 222fd2e :thumb
	mov     r0, r5
	mov     r1, #0x10
	bl      Function_222f4c4
	mov     r0, r5
	bl      Function_222f5bc
	bl      Function_222ebb8
	mov     r1, #0xd1
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	sub     r1, #0x48
	add     r0, r5, r1
	bl      Function_201a7cc
	cmp     r0, #0x0
	beq     branch_222fd68
	mov     r0, #0xbf
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x0
	bl      Function_200e084
	mov     r0, #0xbf
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a8fc
.thumb
branch_222fd68: @ 222fd68 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x222fd6c

.word 0x21bf67c @ 0x222fd6c
.thumb
Function_222fd70: @ 222fd70 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	bl      LoadTrainerDataAdress
	mov     r1, #0x36
	mov     r6, r0
	bl      Function_2025f04
	mov     r4, r0
	mov     r0, #0xb7
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a7cc
	cmp     r0, #0x0
	bne     branch_222fda2
	mov     r0, r4
	bl      Function_20237bc
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x222fda2

.thumb
branch_222fda2: @ 222fda2 :thumb
	mov     r0, #0xb7
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x0
	bl      Function_201ada4
	mov     r0, r6
	bl      GetGender
	cmp     r0, #0x0
	bne     branch_222fdbc
	ldr     r0, [pc, #0x114] @ 0x222fed0, (=0x50600)
	b       branch_222fdc0
@ 0x222fdbc

.thumb
branch_222fdbc: @ 222fdbc :thumb
	mov     r0, #0xc1
	lsl     r0, r0, #10
.thumb
branch_222fdc0: @ 222fdc0 :thumb
	str     r0, [sp, #0x10]
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x10]
	mov     r2, r4
	str     r0, [sp, #0x8]
	mov     r0, #0xb7
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r3, #0x20
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r4
	bl      Function_20237bc
	ldr     r1, [r5, #0x4]
	mov     r0, r5
	bl      Function_222dd20
	add     r1, sp, #0x10
	mov     r4, r0
	bl      Function_223484c
	mov     r6, r0
	cmp     r4, #0x1
	bne     branch_222fe54
	bl      0x21d2388
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	bne     branch_222fe18
	mov     r2, #0x5a
	lsl     r2, r2, #2
	ldr     r0, [r5, r2]
	add     r2, #0x8
	ldr     r2, [r5, r2]
	mov     r1, r6
	bl      Function_200b1b8
	b       branch_222fe64
@ 0x222fe18

.thumb
branch_222fe18: @ 222fe18 :thumb
	bl      0x21d2388
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	mov     r2, #0x8
	bl      Function_202ad2c
	cmp     r0, #0x0
	bne     branch_222fe30
	ldr     r0, [pc, #0xa4] @ 0x222fed0, (=0x50600)
	str     r0, [sp, #0x10]
	b       branch_222fe3a
@ 0x222fe30

.thumb
branch_222fe30: @ 222fe30 :thumb
	cmp     r0, #0x1
	bne     branch_222fe3a
	mov     r0, #0xc1
	lsl     r0, r0, #10
	str     r0, [sp, #0x10]
.thumb
branch_222fe3a: @ 222fe3a :thumb
	bl      0x21d2388
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      Function_202aef0
	mov     r1, r0
	mov     r0, #0x17
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	bl      Function_2023d28
	b       branch_222fe64
@ 0x222fe54

.thumb
branch_222fe54: @ 222fe54 :thumb
	mov     r2, #0x5a
	lsl     r2, r2, #2
	ldr     r0, [r5, r2]
	add     r2, #0x8
	ldr     r2, [r5, r2]
	mov     r1, r6
	bl      Function_200b1b8
.thumb
branch_222fe64: @ 222fe64 :thumb
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	ldr     r0, [sp, #0x10]
	add     r2, #0x71
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, #0xb7
	lsl     r0, r0, #2
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r3, #0x66
	bl      Function_201d78c
	mov     r2, #0x1
	str     r2, [sp, #0x0]
	mov     r0, #0x57
	ldr     r1, [pc, #0x48] @ 0x222fed4, (=0xb08)
	str     r4, [sp, #0x4]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	add     r1, r5, r1
	mov     r3, #0x2
	bl      Function_222ea38
	ldr     r0, [r5, #0x4]
	add     r0, #0x21
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_222fea6
	mov     r0, #0x8
	b       branch_222fea8
@ 0x222fea6

.thumb
branch_222fea6: @ 222fea6 :thumb
	mov     r0, #0x1
.thumb
branch_222fea8: @ 222fea8 :thumb
	mov     r2, #0x1
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r1, [pc, #0x1c] @ 0x222fed4, (=0xb08)
	ldr     r0, [r5, r0]
	add     r1, r5, r1
	mov     r3, #0x1a
	bl      Function_222e9c0
	mov     r0, #0xb7
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a9a4
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x222fed0

.word 0x50600 @ 0x222fed0
.word 0xb08 @ 0x222fed4
.thumb
Function_222fed8: @ 222fed8 :thumb
	push    {r3,lr}
	cmp     r2, #0x0
	bne     branch_222fee4
	ldr     r0, [pc, #0x8] @ 0x222fee8, (=0x5dc)
	bl      Function_2005748
.thumb
branch_222fee4: @ 222fee4 :thumb
	pop     {r3,pc}
@ 0x222fee6


.align 2


.word 0x5dc @ 0x222fee8
.thumb
Function_222feec: @ 222feec :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	mov     r4, r0
	mov     r0, #0xb7
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_201a7cc
	cmp     r0, #0x0
	beq     branch_222ff0a
	mov     r0, #0xb7
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_201a8fc
.thumb
branch_222ff0a: @ 222ff0a :thumb
	mov     r0, #0xbb
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_201a7cc
	cmp     r0, #0x0
	beq     branch_222ff2e
	mov     r0, #0xbb
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, #0x0
	bl      Function_200dc9c
	mov     r0, #0xbb
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_201a8fc
.thumb
branch_222ff2e: @ 222ff2e :thumb
	mov     r3, #0x1
	str     r3, [sp, #0x0]
	mov     r0, #0x1c
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x60] @ 0x222ffa0, (=0x192)
	mov     r1, #0xb7
	str     r0, [sp, #0x10]
	sub     r0, #0x36
	lsl     r1, r1, #2
	ldr     r0, [r4, r0]
	add     r1, r4, r1
	mov     r2, #0x3
	bl      Function_201a7e8
	mov     r2, #0x1
	mov     r1, #0xbb
	lsl     r1, r1, #2
	str     r2, [sp, #0x0]
	mov     r0, #0x1c
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x3c] @ 0x222ffa4, (=0x1a1)
	add     r1, r4, r1
	str     r0, [sp, #0x10]
	sub     r0, #0x45
	ldr     r0, [r4, r0]
	mov     r3, r2
	bl      Function_201a7e8
	mov     r0, #0xbb
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, #0xf
	bl      Function_201ada4
	mov     r0, #0xbb
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_201a9a4
	mov     r0, #0xbb
	lsl     r0, r0, #2
	ldr     r2, [pc, #0x14] @ 0x222ffa8, (=0x1d9)
	add     r0, r4, r0
	mov     r1, #0x0
	mov     r3, #0xb
	bl      Function_200dc48
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x222ffa0

.word 0x192 @ 0x222ffa0
.word 0x1a1 @ 0x222ffa4
.word 0x1d9 @ 0x222ffa8
.thumb
Function_222ffac: @ 222ffac :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r7, r1
	bl      Function_200f2ac
	cmp     r0, #0x0
	bne     branch_222ffc2
	add     sp, #0xc
	mov     r0, r7
	pop     {r4-r7,pc}
@ 0x222ffc2

.thumb
branch_222ffc2: @ 222ffc2 :thumb
	bl      Function_20383e8
	cmp     r0, #0x0
	bne     branch_222ffd8
	bl      Function_20382c0
	cmp     r0, #0x0
	bne     branch_222ffd8
	add     sp, #0xc
	mov     r0, r7
	pop     {r4-r7,pc}
@ 0x222ffd8

.thumb
branch_222ffd8: @ 222ffd8 :thumb
	ldr     r0, [pc, #0x140] @ 0x223011c, (=0x207dfad)
	bl      0x21d113c
	ldr     r0, [pc, #0x140] @ 0x2230120, (=0xd68)
	mov     r1, #0x0
	str     r1, [r5, r0]
	mov     r0, #0x5c
	mov     r1, #0x36
	bl      LoadFromNARC_8
	mov     r6, r0
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r1, [pc, #0x130] @ 0x2230124, (=0xb08)
	ldr     r0, [r5, r0]
	add     r1, r5, r1
	mov     r2, r6
	mov     r3, #0x36
	bl      Function_222e90c
	mov     r0, r5
	bl      Function_2232f30
	mov     r0, r5
	bl      Function_2232dfc
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x3
	bl      Function_2019ebc
	mov     r0, #0x53
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_2230052
	mov     r0, #0xc3
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a8fc
	mov     r0, #0x15
	lsl     r0, r0, #4
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	mov     r2, r1
	bl      Function_2001384
	mov     r0, #0x15
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r5, r0]
	.hword  0x1f00 @ sub r0, r0, #0x4
	ldr     r0, [r5, r0]
	bl      Function_2013a3c
	mov     r0, #0x53
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_2230052: @ 2230052 :thumb
	mov     r0, #0xe2
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_2235194
	cmp     r0, #0x0
	bne     branch_22300a6
	ldr     r0, [r5, #0x4]
	ldrb    r0, [r0, #0x1e]
	cmp     r0, #0x0
	bne     branch_223006c
	mov     r4, #0x0
	b       branch_223006e
@ 0x223006c

.thumb
branch_223006c: @ 223006c :thumb
	mov     r4, #0x61
.thumb
branch_223006e: @ 223006e :thumb
	ldr     r0, [r5, #0x0]
	bl      Function_202afb4
	ldr     r1, [pc, #0xb0] @ 0x2230128, (=0x1092)
	mov     r3, #0x57
	strh    r0, [r5, r1]
	str     r4, [sp, #0x0]
	ldrh    r0, [r5, r1]
	lsl     r3, r3, #2
	mov     r1, #0x36
	str     r0, [sp, #0x4]
	mov     r0, #0xe2
	lsl     r0, r0, #2
	ldr     r3, [r5, r3]
	add     r0, r5, r0
	mov     r2, r6
	bl      Function_2235060
	mov     r0, #0xe2
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, r4
	bl      Function_2235380
	mov     r1, r0
	mov     r0, r5
	bl      Function_222e87c
.thumb
branch_22300a6: @ 22300a6 :thumb
	mov     r0, r5
	bl      Function_2232fcc
	cmp     r0, #0x0
	bne     branch_22300ba
	mov     r0, r5
	mov     r1, r6
	mov     r2, #0x36
	bl      Function_2232fe0
.thumb
branch_22300ba: @ 22300ba :thumb
	mov     r0, r5
	mov     r1, #0x36
	bl      Function_22336a4
	mov     r0, r5
	bl      Function_2232dfc
	mov     r0, r5
	bl      Function_222f5bc
	mov     r0, r5
	bl      Function_222feec
	mov     r0, r5
	mov     r1, #0x10
	bl      Function_2232e58
	bl      Function_2038b60
	mov     r1, #0x0
	mov     r0, #0xdb
	mvn     r1, r1
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, r6
	bl      Call_FS_CloseFile
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x36
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	mov     r3, r0
	bl      Function_200f174
	mov     r0, #0xd1
	mov     r1, #0x13
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, #0x0
	mov     r1, r0
	bl      Function_20388f4
	mov     r0, r7
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x223011c

.word 0x207dfad @ 0x223011c
.word 0xd68 @ 0x2230120
.word 0xb08 @ 0x2230124
.word 0x1092 @ 0x2230128
.thumb
Function_223012c: @ 223012c :thumb
	push    {r3,lr}
	bl      Function_20380e4
	cmp     r0, #0x1
	bne     branch_223013a
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x223013a

.thumb
branch_223013a: @ 223013a :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x223013e


.align 2, 0


.thumb
Function_2230140: @ 2230140 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x21d2568
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_223015e
	ldr     r0, [r4, #0x4]
	add     r0, #0x21
	ldrb    r0, [r0, #0x0]
	bl      0x21d2584
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223015e

.thumb
branch_223015e: @ 223015e :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2230162


.align 2, 0


.thumb
Function_2230164: @ 2230164 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	bl      Function_222f5bc
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r5
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r0, #0xc
	add     r1, #0x2c
	mov     r2, #0x20
	blx     Function_20d5190
	cmp     r0, #0x0
	bne     branch_223018a
	b       branch_223028c
@ 0x223018a

.thumb
branch_223018a: @ 223018a :thumb
	mov     r4, #0x0
.thumb
branch_223018c: @ 223018c :thumb
	add     r7, r5, r4
	mov     r1, r7
	add     r1, #0x2c
	ldrb    r1, [r1, #0x0]
	mov     r2, #0x0
	mov     r0, r2
.thumb
branch_2230198: @ 2230198 :thumb
	add     r3, r5, r0
	ldrb    r3, [r3, #0xc]
	cmp     r3, r1
	bne     branch_22301a4
	mov     r2, #0x1
	b       branch_22301aa
@ 0x22301a4

.thumb
branch_22301a4: @ 22301a4 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r0, #0x20
	blt     branch_2230198
.thumb
branch_22301aa: @ 22301aa :thumb
	cmp     r2, #0x0
	bne     branch_22301ee
	cmp     r1, #0x0
	beq     branch_22301ee
	mov     r0, r5
	bl      Function_222e8d4
	mov     r6, r0
	beq     branch_22301ee
	mov     r0, #0xe2
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, r6
	bl      Function_2235478
	mov     r0, r5
	mov     r1, r6
	bl      Function_222e8a8
	add     r1, r5, r4
	add     r1, #0x2c
	ldrb    r1, [r1, #0x0]
	mov     r0, r5
	bl      Function_223366c
	add     r1, r5, r4
	add     r1, #0x2c
	ldrb    r1, [r1, #0x0]
	mov     r0, r5
	mov     r2, #0x36
	bl      Function_2232fb0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
.thumb
branch_22301ee: @ 22301ee :thumb
	ldrb    r0, [r7, #0xc]
	mov     r1, #0x0
	mov     r2, r1
.thumb
branch_22301f4: @ 22301f4 :thumb
	add     r3, r5, r2
	add     r3, #0x2c
	ldrb    r3, [r3, #0x0]
	cmp     r0, r3
	bne     branch_2230202
	mov     r1, #0x1
	b       branch_2230208
@ 0x2230202

.thumb
branch_2230202: @ 2230202 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	cmp     r2, #0x20
	blt     branch_22301f4
.thumb
branch_2230208: @ 2230208 :thumb
	cmp     r1, #0x0
	bne     branch_2230258
	ldrb    r1, [r7, #0xc]
	cmp     r1, #0x0
	beq     branch_2230258
	mov     r0, r5
	.hword  0x1e49 @ sub r1, r1, #0x1
	bl      Function_2234fa8
	mov     r1, r0
	add     r6, r5, r4
	mov     r0, #0xe2
	lsl     r0, r0, #2
	ldrb    r1, [r1, #0x1d]
	ldrb    r2, [r6, #0xc]
	add     r0, r5, r0
	bl      Function_22353ec
	str     r0, [sp, #0xc]
	cmp     r0, #0x0
	beq     branch_223024a
	ldrb    r1, [r7, #0xc]
	mov     r0, r5
	mov     r2, #0x2
	bl      Function_2233638
	ldr     r1, [sp, #0xc]
	mov     r0, r5
	bl      Function_222e87c
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	b       branch_2230258
@ 0x223024a

.thumb
branch_223024a: @ 223024a :thumb
	ldrb    r1, [r6, #0xc]
	mov     r0, r5
	mov     r2, #0x1
	bl      Function_2233638
	mov     r0, #0x0
	strb    r0, [r6, #0xc]
.thumb
branch_2230258: @ 2230258 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x20
	blt     branch_223018c
	mov     r0, r5
	mov     r1, r5
	add     r0, #0x2c
	add     r1, #0xc
	mov     r2, #0x20
	blx     CopyDataInByteSteps
	mov     r0, r5
	bl      Function_22336c4
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x1
	bne     branch_2230280
	ldr     r0, [pc, #0x18] @ 0x2230294, (=0x64f)
	bl      Function_2005748
	b       branch_223028c
@ 0x2230280

.thumb
branch_2230280: @ 2230280 :thumb
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x1
	bne     branch_223028c
	ldr     r0, [pc, #0xc] @ 0x2230294, (=0x64f)
	bl      Function_2005748
.thumb
branch_223028c: @ 223028c :thumb
	ldr     r0, [sp, #0x8]
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2230292


.align 2


.word 0x64f @ 0x2230294
.thumb
Function_2230298: @ 2230298 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_222f62c
	cmp     r0, #0x0
	ble     branch_22302ae
	mov     r0, r5
	mov     r1, r4
	bl      Function_22336a4
.thumb
branch_22302ae: @ 22302ae :thumb
	pop     {r3-r5,pc}
@ 0x22302b0

.thumb
Function_22302b0: @ 22302b0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_2230164
	mov     r0, r5
	mov     r1, r4
	bl      Function_2230298
	pop     {r3-r5,pc}
@ 0x22302c4

.thumb
Function_22302c4: @ 22302c4 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	mov     r5, r1
	mov     r7, #0x0
	bl      Function_200f2ac
	cmp     r0, #0x0
	bne     branch_22302d8
	mov     r0, r5
	pop     {r3-r7,pc}
@ 0x22302d8

.thumb
branch_22302d8: @ 22302d8 :thumb
	bl      Function_20383e8
	cmp     r0, #0x0
	beq     branch_22302ea
	mov     r0, r4
	bl      Function_222f6ec
	mov     r0, r5
	pop     {r3-r7,pc}
@ 0x22302ea

.thumb
branch_22302ea: @ 22302ea :thumb
	bl      Function_20380e4
	cmp     r0, #0x4
	bne     branch_2230320
	bl      0x21d2388
	mov     r1, r0
	mov     r0, r4
	bl      Function_2232dc0
	mov     r0, r4
	mov     r1, #0x12
	mov     r2, r7
	bl      Function_2232b58
	mov     r0, #0xd1
	mov     r1, #0x1d
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r0, r4
	mov     r1, #0x10
	bl      Function_2232e58
	bl      Function_2038378
	mov     r0, r5
	pop     {r3-r7,pc}
@ 0x2230320

.thumb
branch_2230320: @ 2230320 :thumb
	mov     r0, r4
	mov     r1, #0x36
	bl      Function_22302b0
	mov     r0, r4
	bl      Function_22331e0
	mov     r0, #0xe2
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_22355ec
	mov     r0, #0xe2
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_223537c
	cmp     r0, #0x0
	bne     branch_22303da
	bl      0x21d2568
	.hword  0x1e79 @ sub r1, r7, #0x1
	cmp     r0, r1
	bne     branch_223039c
	ldr     r0, [pc, #0x28c] @ 0x22305e0, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	lsl     r0, r0, #10
	tst     r0, r1
	beq     branch_223039c
	mov     r0, r4
	bl      Function_2232f00
	cmp     r0, #0x0
	beq     branch_2230372
	mov     r0, r4
	mov     r1, #0x5a
	mov     r2, r7
	bl      Function_2232b58
	b       branch_223037c
@ 0x2230372

.thumb
branch_2230372: @ 2230372 :thumb
	mov     r0, r4
	mov     r1, #0x5b
	mov     r2, r7
	bl      Function_2232b58
.thumb
branch_223037c: @ 223037c :thumb
	ldr     r0, [pc, #0x264] @ 0x22305e4, (=0x5dd)
	bl      Function_2005748
	mov     r0, r4
	bl      Function_222fd70
	mov     r0, #0xd1
	mov     r1, #0x14
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r0, r4
	mov     r1, #0x36
	bl      Function_2232f90
	mov     r0, r5
	pop     {r3-r7,pc}
@ 0x223039c

.thumb
branch_223039c: @ 223039c :thumb
	mov     r0, r4
	mov     r1, #0x36
	bl      Function_22330c0
	mov     r6, r0
	mov     r0, r4
	mov     r1, r6
	bl      Function_222e8d4
	mov     r1, r0
	cmp     r6, #0x0
	beq     branch_22303d0
	cmp     r1, #0x0
	beq     branch_22303c4
	mov     r0, #0xe2
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_223532c
	b       branch_22303da
@ 0x22303c4

.thumb
branch_22303c4: @ 22303c4 :thumb
	mov     r0, #0xe2
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_2235370
	b       branch_22303da
@ 0x22303d0

.thumb
branch_22303d0: @ 22303d0 :thumb
	mov     r0, #0xe2
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_2235370
.thumb
branch_22303da: @ 22303da :thumb
	mov     r0, r4
	bl      Function_223012c
	cmp     r0, #0x0
	beq     branch_2230404
	mov     r0, #0xdb
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r1, r0
	beq     branch_2230404
	ldr     r0, [pc, #0x1f4] @ 0x22305e8, (=0x624)
	bl      Function_2005748
	mov     r0, #0xd1
	mov     r1, #0x30
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r0, r5
	pop     {r3-r7,pc}
@ 0x2230404

.thumb
branch_2230404: @ 2230404 :thumb
	mov     r0, #0xdb
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r1, r0
	bne     branch_223044e
	bl      0x21d2568
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_223044e
	bl      0x21d2568
	mov     r1, #0xdb
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r1, [r4, r1]
	mov     r0, r4
	bl      Function_2232dc0
	mov     r0, r4
	mov     r1, #0x4c
	mov     r2, #0x0
	bl      Function_2232b58
	ldr     r0, [r4, #0x4]
	add     r0, #0x21
	ldrb    r0, [r0, #0x0]
	bl      0x21d2584
	mov     r0, #0xd
	mov     r1, #0x0
	lsl     r0, r0, #6
	str     r1, [r4, r0]
	b       branch_2230494
@ 0x223044e

.thumb
branch_223044e: @ 223044e :thumb
	mov     r0, #0xdb
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r1, r0
	beq     branch_2230494
	bl      0x21d2568
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	bne     branch_2230494
	mov     r0, #0x0
	bl      0x21d2584
	mov     r1, #0xdb
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	mov     r0, r4
	bl      Function_2232dc0
	mov     r0, r4
	mov     r1, #0x12
	mov     r2, #0x0
	bl      Function_2232b58
	bl      Function_2038378
	mov     r0, #0xd1
	mov     r1, #0x1b
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r0, r5
	pop     {r3-r7,pc}
@ 0x2230494

.thumb
branch_2230494: @ 2230494 :thumb
	bl      0x21d254c
	cmp     r0, #0x1
	bne     branch_22304ae
	bl      0x21d2568
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	bne     branch_22304ae
	mov     r0, #0x0
	bl      0x21d2584
.thumb
branch_22304ae: @ 22304ae :thumb
	ldr     r1, [r4, #0x4]
	mov     r0, r4
	bl      Function_222dd20
	mov     r1, #0xdb
	lsl     r1, r1, #2
	ldr     r2, [r4, r1]
	mov     r1, #0x0
	mvn     r1, r1
	mov     r6, r0
	cmp     r2, r1
	bne     branch_2230508
	ldr     r1, [pc, #0x118] @ 0x22305e0, (=0x21bf67c)
	ldr     r2, [r1, #0x48]
	mov     r1, #0x2
	tst     r1, r2
	beq     branch_22304f2
	bl      Function_222ddfc
	cmp     r0, #0x0
	beq     branch_22304f2
	ldr     r0, [pc, #0x108] @ 0x22305e4, (=0x5dd)
	bl      Function_2005748
	mov     r0, #0xd1
	mov     r1, #0x27
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r0, r4
	mov     r1, #0x36
	bl      Function_2232f90
	mov     r0, r5
	pop     {r3-r7,pc}
@ 0x22304f2

.thumb
branch_22304f2: @ 22304f2 :thumb
	mov     r0, #0xe2
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_2235198
	mov     r7, r0
	mov     r0, #0xe2
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_22355fc
.thumb
branch_2230508: @ 2230508 :thumb
	cmp     r7, #0x3
	bhi     branch_22305d8
	add     r0, r7, r7
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2230518

Jumppoints_2230518:
.hword branch_2230520 - Jumppoints_2230518 - 2
.hword branch_2230524 - Jumppoints_2230518 - 2
.hword branch_22305b0 - Jumppoints_2230518 - 2
.hword branch_2230562 - Jumppoints_2230518 - 2
.thumb
branch_2230520: @ 2230520 :thumb
	mov     r0, r5
	pop     {r3-r7,pc}
@ 0x2230524

.thumb
branch_2230524: @ 2230524 :thumb
	ldr     r0, [pc, #0xbc] @ 0x22305e4, (=0x5dd)
	bl      Function_2005748
	mov     r0, r6
	bl      Function_222ddfc
	cmp     r0, #0x0
	beq     branch_223053e
	mov     r0, #0xd1
	mov     r1, #0x27
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	b       branch_2230556
@ 0x223053e

.thumb
branch_223053e: @ 223053e :thumb
	mov     r0, #0xd2
	mov     r1, #0x8
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r1, #0x39
	.hword  0x1f00 @ sub r0, r0, #0x4
	str     r1, [r4, r0]
	mov     r0, r4
	mov     r1, #0x19
	mov     r2, #0x1
	bl      Function_2232b58
.thumb
branch_2230556: @ 2230556 :thumb
	mov     r0, r4
	mov     r1, #0x36
	bl      Function_2232f90
	mov     r0, r5
	pop     {r3-r7,pc}
@ 0x2230562

.thumb
branch_2230562: @ 2230562 :thumb
	ldr     r0, [pc, #0x80] @ 0x22305e4, (=0x5dd)
	bl      Function_2005748
	mov     r0, r6
	bl      Function_222ddfc
	cmp     r0, #0x0
	beq     branch_2230586
	mov     r0, #0xe2
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_22355b0
	mov     r0, #0xd1
	mov     r1, #0x27
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	b       branch_22305a4
@ 0x2230586

.thumb
branch_2230586: @ 2230586 :thumb
	cmp     r6, #0x10
	bne     branch_22305a4
	bl      Function_20382c0
	cmp     r0, #0x1
	bne     branch_22305a4
	mov     r0, #0xe2
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_22355b0
	mov     r0, #0xd1
	mov     r1, #0x24
	lsl     r0, r0, #2
	str     r1, [r4, r0]
.thumb
branch_22305a4: @ 22305a4 :thumb
	mov     r0, r4
	mov     r1, #0x36
	bl      Function_2232f90
	mov     r0, r5
	pop     {r3-r7,pc}
@ 0x22305b0

.thumb
branch_22305b0: @ 22305b0 :thumb
	ldr     r0, [pc, #0x30] @ 0x22305e4, (=0x5dd)
	bl      Function_2005748
	mov     r0, r6
	bl      Function_222ddfc
	cmp     r0, #0x0
	beq     branch_22305c4
	mov     r1, #0x27
	b       branch_22305c6
@ 0x22305c4

.thumb
branch_22305c4: @ 22305c4 :thumb
	mov     r1, #0x2a
.thumb
branch_22305c6: @ 22305c6 :thumb
	mov     r0, #0xd1
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r0, r4
	mov     r1, #0x36
	bl      Function_2232f90
	mov     r0, r5
	pop     {r3-r7,pc}
@ 0x22305d8

.thumb
branch_22305d8: @ 22305d8 :thumb
	bl      ErrorHandling
	mov     r0, r5
	pop     {r3-r7,pc}
@ 0x22305e0

.word 0x21bf67c @ 0x22305e0
.word 0x5dd @ 0x22305e4
.word 0x624 @ 0x22305e8
.thumb
Function_22305ec: @ 22305ec :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_2230140
	cmp     r0, #0x0
	beq     branch_223060a
	mov     r0, #0xd1
	mov     r1, #0x13
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, r5
	bl      Function_223503c
	b       branch_2230630
@ 0x223060a

.thumb
branch_223060a: @ 223060a :thumb
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_2230630
	mov     r0, #0xd1
	mov     r1, #0x13
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, r5
	bl      Function_223503c
	mov     r0, r5
	bl      Function_2232dfc
.thumb
branch_2230630: @ 2230630 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2230634

.thumb
Function_2230634: @ 2230634 :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	ldr     r1, [pc, #0x134] @ 0x2230770, (=0x37e)
	mov     r5, r0
	ldrh    r1, [r5, r1]
	.hword  0x1e49 @ sub r1, r1, #0x1
	bl      Function_2234fa8
	mov     r1, r0
	add     r0, #0x21
	ldrb    r4, [r0, #0x0]
	mov     r0, r5
	bl      Function_222dd20
	mov     r6, r0
	mov     r0, #0xcf
	lsl     r0, r0, #2
	ldr     r1, [r5, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r5, r0]
	ldr     r1, [r5, r0]
	cmp     r1, #0x0
	bge     branch_223066a
	mov     r1, #0x46
	add     r0, #0x8
	str     r1, [r5, r0]
	b       branch_223076c
@ 0x223066a

.thumb
branch_223066a: @ 223066a :thumb
	bl      Function_20380e4
	cmp     r0, #0x5
	bne     branch_2230692
	bl      0x21d2388
	mov     r1, r0
	mov     r0, r5
	bl      Function_2232dc0
	mov     r0, r5
	mov     r1, #0xf
	mov     r2, #0x0
	bl      Function_2232b58
	mov     r0, #0xd1
	mov     r1, #0x1b
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	b       branch_223076c
@ 0x2230692

.thumb
branch_2230692: @ 2230692 :thumb
	bl      Function_20380e4
	cmp     r0, #0x3
	bne     branch_22306ba
	bl      0x21d2388
	mov     r1, r0
	mov     r0, r5
	bl      Function_2232dc0
	mov     r0, r5
	mov     r1, #0x12
	mov     r2, #0x0
	bl      Function_2232b58
	mov     r0, #0xd1
	mov     r1, #0x1b
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	b       branch_223076c
@ 0x22306ba

.thumb
branch_22306ba: @ 22306ba :thumb
	bl      Function_20380e4
	cmp     r0, #0x4
	beq     branch_22306ca
	bl      Function_2038284
	cmp     r0, #0x0
	beq     branch_22306ea
.thumb
branch_22306ca: @ 22306ca :thumb
	bl      0x21d2388
	mov     r1, r0
	mov     r0, r5
	bl      Function_2232dc0
	mov     r0, r5
	mov     r1, #0x13
	mov     r2, #0x0
	bl      Function_2232b58
	mov     r0, #0xd1
	mov     r1, #0x1b
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	b       branch_223076c
@ 0x22306ea

.thumb
branch_22306ea: @ 22306ea :thumb
	bl      Function_20383e8
	cmp     r0, #0x0
	beq     branch_22306fa
	mov     r0, r5
	bl      Function_222f6ec
	b       branch_223076c
@ 0x22306fa

.thumb
branch_22306fa: @ 22306fa :thumb
	cmp     r4, #0x0
	bne     branch_223071e
	bl      0x21d2388
	mov     r1, r0
	mov     r0, r5
	bl      Function_2232dc0
	mov     r0, r5
	mov     r1, #0x10
	mov     r2, #0x0
	bl      Function_2232b58
	mov     r0, #0xd1
	mov     r1, #0x1b
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	b       branch_223076c
@ 0x223071e

.thumb
branch_223071e: @ 223071e :thumb
	cmp     r6, #0x10
	beq     branch_2230742
	bl      0x21d2388
	mov     r1, r0
	mov     r0, r5
	bl      Function_2232dc0
	mov     r0, r5
	mov     r1, #0x10
	mov     r2, #0x0
	bl      Function_2232b58
	mov     r0, #0xd1
	mov     r1, #0x1b
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	b       branch_223076c
@ 0x2230742

.thumb
branch_2230742: @ 2230742 :thumb
	bl      Function_20380e4
	cmp     r0, #0x1
	bne     branch_223076c
	mov     r0, r5
	bl      Function_2232dfc
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2232e58
	mov     r1, #0xd1
	mov     r0, #0x18
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	add     r1, #0x3a
	ldrh    r1, [r5, r1]
	ldr     r0, [r5, #0x0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	bl      Function_202b13c
.thumb
branch_223076c: @ 223076c :thumb
	mov     r0, r7
	pop     {r3-r7,pc}
@ 0x2230770

.word 0x37e @ 0x2230770
.thumb
Function_2230774: @ 2230774 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      0x21d2388
	mov     r1, r0
	mov     r0, r5
	bl      Function_2232dc0
	mov     r0, r5
	mov     r1, #0xe
	mov     r2, #0x0
	bl      Function_2232b58
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2232e58
	mov     r0, #0xd1
	mov     r1, #0x17
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	bl      0x21d2388
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      Function_202b13c
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x22307b0

.thumb
Function_22307b0: @ 22307b0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_20383e8
	cmp     r0, #0x0
	beq     branch_22307c8
	mov     r0, r5
	bl      Function_222f6ec
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x22307c8

.thumb
branch_22307c8: @ 22307c8 :thumb
	bl      0x21d2388
	cmp     r0, #0x0
	bge     branch_22307e6
	mov     r0, r5
	mov     r1, #0x13
	mov     r2, #0x0
	bl      Function_2232b58
	mov     r0, #0xd1
	mov     r1, #0x1b
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x22307e6

.thumb
branch_22307e6: @ 22307e6 :thumb
	bl      0x21d2388
	mov     r1, r0
	mov     r0, r5
	bl      Function_2234fa8
	mov     r1, r0
	mov     r0, r5
	bl      Function_222dd20
	cmp     r0, #0x10
	beq     branch_2230824
	cmp     r0, #0x1
	beq     branch_2230824
	bl      0x21d2388
	mov     r1, r0
	mov     r0, r5
	bl      Function_2232dc0
	mov     r0, r5
	mov     r1, #0x10
	mov     r2, #0x0
	bl      Function_2232b58
	mov     r0, #0xd1
	mov     r1, #0x1b
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2230824

.thumb
branch_2230824: @ 2230824 :thumb
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_2230858
	ldr     r0, [pc, #0x24] @ 0x223085c, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_2230850
	mov     r0, r5
	bl      Function_2232dfc
	mov     r0, #0xd1
	mov     r1, #0x18
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	b       branch_2230858
@ 0x2230850

.thumb
branch_2230850: @ 2230850 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_2230860
.thumb
branch_2230858: @ 2230858 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x223085c

.word 0x21bf67c @ 0x223085c
.thumb
Function_2230860: @ 2230860 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r6, r1
	bl      0x21d2388
	cmp     r0, #0x0
	bge     branch_2230888
	mov     r0, r5
	mov     r1, #0x13
	mov     r2, #0x0
	bl      Function_2232b58
	mov     r0, #0xd1
	mov     r1, #0x1b
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	add     sp, #0xc
	mov     r0, r6
	pop     {r3-r6,pc}
@ 0x2230888

.thumb
branch_2230888: @ 2230888 :thumb
	bl      0x21d2388
	mov     r1, r0
	mov     r0, r5
	bl      Function_2234fa8
	mov     r1, r0
	mov     r0, r5
	bl      Function_222dd20
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x36
	bl      Function_22302b0
	mov     r0, r5
	bl      Function_22331e0
	bl      Function_20380e4
	cmp     r0, #0x5
	bne     branch_22308d4
	bl      0x21d2388
	mov     r1, r0
	mov     r0, r5
	bl      Function_2232dc0
	mov     r0, r5
	mov     r1, #0xf
	mov     r2, #0x0
	bl      Function_2232b58
	mov     r0, #0xd1
	mov     r1, #0x1b
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	b       branch_22309c0
@ 0x22308d4

.thumb
branch_22308d4: @ 22308d4 :thumb
	bl      Function_20380e4
	cmp     r0, #0x3
	bne     branch_22308fc
	bl      0x21d2388
	mov     r1, r0
	mov     r0, r5
	bl      Function_2232dc0
	mov     r0, r5
	mov     r1, #0x12
	mov     r2, #0x0
	bl      Function_2232b58
	mov     r0, #0xd1
	mov     r1, #0x1b
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	b       branch_22309c0
@ 0x22308fc

.thumb
branch_22308fc: @ 22308fc :thumb
	bl      Function_20380e4
	cmp     r0, #0x4
	beq     branch_223090c
	bl      Function_2038284
	cmp     r0, #0x0
	beq     branch_223092c
.thumb
branch_223090c: @ 223090c :thumb
	bl      0x21d2388
	mov     r1, r0
	mov     r0, r5
	bl      Function_2232dc0
	mov     r0, r5
	mov     r1, #0x13
	mov     r2, #0x0
	bl      Function_2232b58
	mov     r0, #0xd1
	mov     r1, #0x1b
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	b       branch_22309c0
@ 0x223092c

.thumb
branch_223092c: @ 223092c :thumb
	bl      Function_20383e8
	cmp     r0, #0x0
	beq     branch_223093c
	mov     r0, r5
	bl      Function_222f6ec
	b       branch_22309c0
@ 0x223093c

.thumb
branch_223093c: @ 223093c :thumb
	cmp     r4, #0x10
	beq     branch_2230964
	cmp     r4, #0x1
	beq     branch_2230964
	bl      0x21d2388
	mov     r1, r0
	mov     r0, r5
	bl      Function_2232dc0
	mov     r0, r5
	mov     r1, #0x10
	mov     r2, #0x0
	bl      Function_2232b58
	mov     r0, #0xd1
	mov     r1, #0x1b
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	b       branch_22309c0
@ 0x2230964

.thumb
branch_2230964: @ 2230964 :thumb
	ldr     r0, [pc, #0x60] @ 0x22309c8, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_2230982
	mov     r0, r5
	mov     r1, #0x14
	mov     r2, #0x0
	bl      Function_2232b58
	mov     r0, #0xd1
	mov     r1, #0x19
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	b       branch_22309c0
@ 0x2230982

.thumb
branch_2230982: @ 2230982 :thumb
	bl      0x21d2544
	cmp     r0, #0x0
	ldr     r1, [pc, #0x40] @ 0x22309cc, (=0xb08)
	beq     branch_22309a6
	mov     r2, #0x1
	str     r2, [sp, #0x0]
	mov     r3, #0x2
	str     r3, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	add     r1, r5, r1
	bl      Function_222e9c0
	b       branch_22309c0
@ 0x22309a6

.thumb
branch_22309a6: @ 22309a6 :thumb
	mov     r2, #0x1
	str     r2, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	add     r1, r5, r1
	mov     r3, #0x2
	bl      Function_222e9c0
.thumb
branch_22309c0: @ 22309c0 :thumb
	mov     r0, r6
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x22309c6


.align 2


.word 0x21bf67c @ 0x22309c8
.word 0xb08 @ 0x22309cc
.thumb
Function_22309d0: @ 22309d0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_20383e8
	cmp     r0, #0x0
	beq     branch_22309e8
	mov     r0, r5
	bl      Function_222f6ec
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x22309e8

.thumb
branch_22309e8: @ 22309e8 :thumb
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_2230a28
	bl      0x21d2388
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      Function_202b13c
	mov     r2, #0x57
	mov     r0, #0x36
	lsl     r2, r2, #2
	str     r0, [sp, #0x0]
	ldr     r0, [r5, r2]
	ldr     r1, [pc, #0x18] @ 0x2230a2c, (=0x223894c)
	add     r2, #0x7d
	mov     r3, #0xb
	bl      Function_2002100
	mov     r1, #0x61
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0xd1
	mov     r1, #0x1a
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_2230a28: @ 2230a28 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2230a2c

.word 0x223894c @ 0x2230a2c
.thumb
Function_2230a30: @ 2230a30 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x61
	lsl     r0, r0, #2
	mov     r4, r1
	ldr     r0, [r5, r0]
	mov     r1, #0x36
	bl      Function_2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	bne     branch_2230aaa
	bl      Function_20380e4
	cmp     r0, #0x4
	bge     branch_2230a64
	bl      Function_2038284
	cmp     r0, #0x0
	bne     branch_2230a64
	mov     r0, #0x0
	bl      Function_2035d78
	cmp     r0, #0x0
	bne     branch_2230a98
.thumb
branch_2230a64: @ 2230a64 :thumb
	mov     r0, r5
	bl      Function_2232dfc
	mov     r0, r5
	mov     r1, #0x10
	bl      Function_2232e58
	mov     r0, #0x61
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x36
	bl      Function_2002154
	mov     r0, #0x0
	mov     r1, #0xdb
	mvn     r0, r0
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, r1
	mov     r2, #0x14
	sub     r0, #0x14
	str     r2, [r5, r0]
	mov     r0, #0x41
	sub     r1, #0x28
	str     r0, [r5, r1]
	b       branch_2230aa6
@ 0x2230a98

.thumb
branch_2230a98: @ 2230a98 :thumb
	bl      Function_20383e8
	cmp     r0, #0x0
	beq     branch_2230aa6
	mov     r0, r5
	bl      Function_222f6ec
.thumb
branch_2230aa6: @ 2230aa6 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2230aaa

.thumb
branch_2230aaa: @ 2230aaa :thumb
	cmp     r0, #0x0
	bne     branch_2230ae4
	bl      Function_20383e8
	cmp     r0, #0x0
	bne     branch_2230adc
	mov     r0, r5
	mov     r1, #0x10
	bl      Function_2232e58
	bl      Function_20383d4
	mov     r0, #0x0
	mov     r1, #0xdb
	mvn     r0, r0
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, r1
	mov     r2, #0x14
	sub     r0, #0x14
	str     r2, [r5, r0]
	mov     r0, #0x41
	sub     r1, #0x28
	str     r0, [r5, r1]
	b       branch_2230aec
@ 0x2230adc

.thumb
branch_2230adc: @ 2230adc :thumb
	mov     r0, r5
	bl      Function_222f6ec
	b       branch_2230aec
@ 0x2230ae4

.thumb
branch_2230ae4: @ 2230ae4 :thumb
	mov     r0, #0xd1
	mov     r1, #0x18
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_2230aec: @ 2230aec :thumb
	mov     r0, r5
	bl      Function_2232dfc
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2230af6


.align 2, 0


.thumb
Function_2230af8: @ 2230af8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_20383e8
	cmp     r0, #0x0
	beq     branch_2230b10
	mov     r0, r5
	bl      Function_222f6ec
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2230b10

.thumb
branch_2230b10: @ 2230b10 :thumb
	ldr     r1, [r5, #0x4]
	mov     r0, r5
	bl      Function_222dd20
	cmp     r0, #0x10
	beq     branch_2230b24
	mov     r0, r5
	mov     r1, #0x10
	bl      Function_2232e58
.thumb
branch_2230b24: @ 2230b24 :thumb
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	beq     branch_2230b42
	mov     r0, #0xd6
	mov     r1, #0x1e
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2230b42

.thumb
branch_2230b42: @ 2230b42 :thumb
	mov     r0, #0xd6
	lsl     r0, r0, #2
	ldr     r1, [r5, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r5, r0]
	ldr     r1, [pc, #0x60] @ 0x2230bb0, (=0x21bf67c)
	ldr     r2, [r1, #0x48]
	mov     r1, #0x3
	tst     r1, r2
	bne     branch_2230b5c
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	bne     branch_2230baa
.thumb
branch_2230b5c: @ 2230b5c :thumb
	mov     r0, r5
	bl      Function_2232dfc
	bl      Function_2038378
	bl      Function_2038b60
	mov     r0, #0xe2
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_2235194
	cmp     r0, #0x0
	bne     branch_2230b88
	mov     r0, #0xd6
	mov     r1, #0x14
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r1, #0x41
	sub     r0, #0x14
	str     r1, [r5, r0]
	b       branch_2230baa
@ 0x2230b88

.thumb
branch_2230b88: @ 2230b88 :thumb
	mov     r0, r5
	bl      Function_2232f30
	mov     r0, r5
	bl      Function_222fd70
	mov     r1, #0x0
	mov     r0, #0xdb
	mvn     r1, r1
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r1, #0x13
	sub     r0, #0x28
	str     r1, [r5, r0]
	mov     r0, r5
	bl      Function_223503c
.thumb
branch_2230baa: @ 2230baa :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2230bae


.align 2


.word 0x21bf67c @ 0x2230bb0
.thumb
Function_2230bb4: @ 2230bb4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	mov     r4, r1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	beq     branch_2230bd0
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2230bd0

.thumb
branch_2230bd0: @ 2230bd0 :thumb
	ldr     r0, [pc, #0x2c] @ 0x2230c00, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_2230bfa
	mov     r0, r5
	bl      Function_2232dfc
	mov     r0, r5
	mov     r1, #0x10
	bl      Function_2232e58
	bl      Function_2038378
	mov     r0, #0xd6
	mov     r1, #0x14
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r1, #0x41
	sub     r0, #0x14
	str     r1, [r5, r0]
.thumb
branch_2230bfa: @ 2230bfa :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2230bfe


.align 2


.word 0x21bf67c @ 0x2230c00
.thumb
Function_2230c04: @ 2230c04 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_20383e8
	cmp     r0, #0x0
	beq     branch_2230c1c
	mov     r0, r5
	bl      Function_222f6ec
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2230c1c

.thumb
branch_2230c1c: @ 2230c1c :thumb
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	beq     branch_2230c3a
	mov     r0, #0xd6
	mov     r1, #0x1e
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2230c3a

.thumb
branch_2230c3a: @ 2230c3a :thumb
	mov     r0, #0xd6
	lsl     r0, r0, #2
	ldr     r1, [r5, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r5, r0]
	ldr     r1, [pc, #0x60] @ 0x2230ca8, (=0x21bf67c)
	ldr     r2, [r1, #0x48]
	mov     r1, #0x3
	tst     r1, r2
	bne     branch_2230c54
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	bne     branch_2230ca2
.thumb
branch_2230c54: @ 2230c54 :thumb
	mov     r0, r5
	bl      Function_2232dfc
	mov     r0, r5
	mov     r1, #0x10
	bl      Function_2232e58
	bl      Function_2038b60
	mov     r0, #0xe2
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_2235194
	cmp     r0, #0x0
	bne     branch_2230c80
	bl      Function_222ebb8
	mov     r1, #0xd1
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	b       branch_2230ca2
@ 0x2230c80

.thumb
branch_2230c80: @ 2230c80 :thumb
	mov     r0, r5
	bl      Function_2232f30
	mov     r0, r5
	bl      Function_222fd70
	mov     r1, #0x0
	mov     r0, #0xdb
	mvn     r1, r1
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r1, #0x13
	sub     r0, #0x28
	str     r1, [r5, r0]
	mov     r0, r5
	bl      Function_223503c
.thumb
branch_2230ca2: @ 2230ca2 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2230ca6


.align 2


.word 0x21bf67c @ 0x2230ca8
.thumb
Function_2230cac: @ 2230cac :thumb
	mov     r0, r1
	bx      lr
@ 0x2230cb0

.thumb
Function_2230cb0: @ 2230cb0 :thumb
	mov     r0, r1
	bx      lr
@ 0x2230cb4

.thumb
Function_2230cb4: @ 2230cb4 :thumb
	mov     r0, r1
	bx      lr
@ 0x2230cb8

.thumb
Function_2230cb8: @ 2230cb8 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r1, #0xd6
	mov     r5, r0
	lsl     r1, r1, #2
	ldr     r2, [r5, r1]
	cmp     r2, #0x0
	ble     branch_2230cd0
	.hword  0x1e50 @ sub r0, r2, #0x1
	str     r0, [r5, r1]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2230cd0

.thumb
branch_2230cd0: @ 2230cd0 :thumb
	ldr     r1, [pc, #0x20] @ 0x2230cf4, (=0x21bf67c)
	ldr     r2, [r1, #0x48]
	mov     r1, #0x3
	tst     r1, r2
	beq     branch_2230cf0
	mov     r1, #0x1a
	mov     r2, #0x1
	bl      Function_2232b58
	mov     r0, #0xd1
	mov     r1, #0x3b
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r1, #0x1
	add     r0, #0x14
	str     r1, [r5, r0]
.thumb
branch_2230cf0: @ 2230cf0 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2230cf4

.word 0x21bf67c @ 0x2230cf4
.thumb
Function_2230cf8: @ 2230cf8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0xe2
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r4, r1
	bl      Function_22355fc
	mov     r0, r5
	mov     r1, #0xa
	mov     r2, #0x0
	bl      Function_2232b58
	mov     r0, #0xd1
	mov     r1, #0x28
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2230d1e


.align 2, 0


.thumb
Function_2230d20: @ 2230d20 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0xe2
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r4, r1
	bl      Function_22355fc
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_2230d64
	mov     r2, #0x57
	mov     r0, #0x36
	lsl     r2, r2, #2
	str     r0, [sp, #0x0]
	ldr     r0, [r5, r2]
	ldr     r1, [pc, #0x18] @ 0x2230d68, (=0x223894c)
	add     r2, #0x7d
	mov     r3, #0xb
	bl      Function_2002100
	mov     r1, #0x61
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0xd1
	mov     r1, #0x29
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_2230d64: @ 2230d64 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2230d68

.word 0x223894c @ 0x2230d68
.thumb
Function_2230d6c: @ 2230d6c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, #0x61
	lsl     r0, r0, #2
	mov     r6, r1
	ldr     r0, [r5, r0]
	mov     r1, #0x36
	bl      Function_2002114
	mov     r4, r0
	mov     r0, #0xe2
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_22355fc
	mov     r0, #0xdb
	lsl     r0, r0, #2
	ldr     r1, [r5, r0]
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r1, r0
	bne     branch_2230dc4
	bl      0x21d2568
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_2230dc4
	ldr     r0, [r5, #0x4]
	add     r0, #0x21
	ldrb    r0, [r0, #0x0]
	bl      0x21d2584
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r4, r0
	bne     branch_2230dc2
	mov     r0, #0x61
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x36
	bl      Function_2002154
.thumb
branch_2230dc2: @ 2230dc2 :thumb
	mov     r4, #0x1
.thumb
branch_2230dc4: @ 2230dc4 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r4, r0
	bne     branch_2230dd0
	mov     r0, r6
	pop     {r4-r6,pc}
@ 0x2230dd0

.thumb
branch_2230dd0: @ 2230dd0 :thumb
	cmp     r4, #0x0
	bne     branch_2230de8
	mov     r0, r5
	mov     r1, #0x10
	bl      Function_2232e58
	bl      Function_2038b60
	mov     r0, r5
	bl      Function_223503c
	b       branch_2230df6
@ 0x2230de8

.thumb
branch_2230de8: @ 2230de8 :thumb
	mov     r0, r5
	bl      Function_223503c
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_223500c
.thumb
branch_2230df6: @ 2230df6 :thumb
	mov     r0, #0xd1
	mov     r1, #0x13
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, r6
	pop     {r4-r6,pc}
@ 0x2230e02


.align 2, 0


.thumb
Function_2230e04: @ 2230e04 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x3c
	ldr     r3, [pc, #0x1a0] @ 0x2230fac, (=0x2239cbc)
	add     r2, sp, #0x1c
	mov     r5, r0
	str     r1, [sp, #0x14]
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	mov     r0, r5
	mov     r7, #0x3
	ldr     r4, [pc, #0x188] @ 0x2230fb0, (=0x2239cdc)
	bl      Function_222dcf8
	cmp     r0, #0x1
	bne     branch_2230e4e
	add     r0, sp, #0x1c
	ldrh    r1, [r0, #0x10]
	.hword  0x1c7f @ add r7, r7, #0x1
	ldr     r2, [pc, #0x17c] @ 0x2230fb4, (=0x2239c20)
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r0, #0x10]
	ldrh    r1, [r0, #0x12]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r0, #0x12]
	.hword  0x1e78 @ sub r0, r7, #0x1
	lsl     r1, r0, #3
	ldr     r0, [r2, #0x8]
	ldr     r2, [r2, #0xc]
	add     r3, r4, r1
	str     r0, [r4, r1]
	str     r2, [r3, #0x4]
.thumb
branch_2230e4e: @ 2230e4e :thumb
	mov     r0, r5
	bl      Function_222dce0
	cmp     r0, #0x1
	bne     branch_2230e78
	add     r0, sp, #0x1c
	ldrh    r1, [r0, #0x10]
	.hword  0x1c7f @ add r7, r7, #0x1
	ldr     r2, [pc, #0x154] @ 0x2230fb4, (=0x2239c20)
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r0, #0x10]
	ldrh    r1, [r0, #0x12]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r0, #0x12]
	.hword  0x1e78 @ sub r0, r7, #0x1
	lsl     r1, r0, #3
	ldr     r0, [r2, #0x10]
	ldr     r2, [r2, #0x14]
	add     r3, r4, r1
	str     r0, [r4, r1]
	str     r2, [r3, #0x4]
.thumb
branch_2230e78: @ 2230e78 :thumb
	mov     r0, r5
	bl      Function_222dd1c
	cmp     r0, #0x1
	bne     branch_2230ea2
	add     r0, sp, #0x1c
	ldrh    r1, [r0, #0x10]
	.hword  0x1c7f @ add r7, r7, #0x1
	ldr     r2, [pc, #0x128] @ 0x2230fb4, (=0x2239c20)
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r0, #0x10]
	ldrh    r1, [r0, #0x12]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r0, #0x12]
	.hword  0x1e78 @ sub r0, r7, #0x1
	lsl     r1, r0, #3
	ldr     r0, [r2, #0x18]
	ldr     r2, [r2, #0x1c]
	add     r3, r4, r1
	str     r0, [r4, r1]
	str     r2, [r3, #0x4]
.thumb
branch_2230ea2: @ 2230ea2 :thumb
	add     r0, sp, #0x1c
	ldrh    r1, [r0, #0x10]
	ldr     r2, [pc, #0x10c] @ 0x2230fb4, (=0x2239c20)
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r0, #0x10]
	ldrh    r1, [r0, #0x12]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r0, #0x12]
	lsl     r1, r7, #3
	ldmia   r2!, {r0,r2}
	str     r0, [r4, r1]
	add     r3, r4, r1
	add     r0, r7, #0x1
	mov     r1, #0x36
	str     r2, [r3, #0x4]
	bl      Function_2013a04
	mov     r1, #0x55
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	add     r0, r7, #0x1
	mov     r6, #0x0
	str     r0, [sp, #0x18]
	cmp     r0, #0x0
	ble     branch_2230ef2
.thumb
branch_2230ed4: @ 2230ed4 :thumb
	mov     r0, #0x55
	mov     r1, #0x5a
	lsl     r0, r0, #2
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	ldr     r2, [r4, #0x0]
	ldr     r3, [r4, #0x4]
	bl      Function_2013a4c
	ldr     r0, [sp, #0x18]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x8
	cmp     r6, r0
	blt     branch_2230ed4
.thumb
branch_2230ef2: @ 2230ef2 :thumb
	mov     r0, #0xc7
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a7cc
	cmp     r0, #0x0
	beq     branch_2230f16
	mov     r0, #0xc7
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x0
	bl      Function_200dc9c
	mov     r0, #0xc7
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a8fc
.thumb
branch_2230f16: @ 2230f16 :thumb
	add     r0, r7, #0x1
	mov     r1, #0x3
	str     r1, [sp, #0x0]
	mov     r1, #0xf
	lsl     r0, r0, #1
	str     r1, [sp, #0x4]
	lsl     r1, r0, #24
	lsr     r1, r1, #24
	str     r1, [sp, #0x8]
	mov     r1, #0xd
	str     r1, [sp, #0xc]
	mov     r1, #0x3b
	sub     r0, r1, r0
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	mov     r0, #0x57
	lsl     r0, r0, #2
	mov     r1, #0xc7
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	add     r1, r5, r1
	mov     r2, #0x2
	mov     r3, #0x10
	bl      Function_201a7e8
	mov     r0, #0xc7
	lsl     r0, r0, #2
	ldr     r2, [pc, #0x68] @ 0x2230fb8, (=0x1d9)
	add     r0, r5, r0
	mov     r1, #0x1
	mov     r3, #0xb
	bl      Function_200dc48
	mov     r0, #0x55
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r2, #0xc7
	lsl     r2, r2, #2
	str     r0, [sp, #0x1c]
	add     r0, r5, r2
	str     r0, [sp, #0x28]
	add     r2, #0x54
	ldrh    r2, [r5, r2]
	add     r0, sp, #0x1c
	mov     r1, #0x0
	mov     r3, #0x36
	bl      Function_200112c
	mov     r1, #0x56
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0xc7
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a9a4
	mov     r0, r5
	mov     r1, #0x8
	mov     r2, #0x0
	bl      Function_2232b58
	mov     r0, #0xe2
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_22355fc
	mov     r0, #0xd1
	mov     r1, #0x25
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	ldr     r0, [sp, #0x14]
	add     sp, #0x3c
	pop     {r4-r7,pc}
@ 0x2230faa


.align 2


.word 0x2239cbc @ 0x2230fac
.word 0x2239cdc @ 0x2230fb0
.word 0x2239c20 @ 0x2230fb4
.word 0x1d9 @ 0x2230fb8
.thumb
Function_2230fbc: @ 2230fbc :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r7, r1
	bl      Function_222df88
	str     r0, [sp, #0x0]
	mov     r0, r5
	bl      Function_22319b8
	mov     r6, r0
	mov     r0, #0xe2
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_22355fc
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	beq     branch_2231038
	mov     r0, r5
	bl      Function_2230140
	cmp     r0, #0x0
	beq     branch_2231034
	mov     r0, #0xd1
	mov     r1, #0x13
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	sub     r0, #0x28
	add     r0, r5, r0
	mov     r1, #0x0
	bl      Function_200dc9c
	mov     r0, #0xc7
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a8fc
	mov     r0, #0x56
	lsl     r0, r0, #2
	mov     r2, #0x37
	lsl     r2, r2, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	add     r2, r5, r2
	bl      Function_2001384
	mov     r0, #0x55
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2013a3c
	mov     r0, r5
	bl      Function_2232dfc
.thumb
branch_2231034: @ 2231034 :thumb
	mov     r0, r7
	pop     {r3-r7,pc}
@ 0x2231038

.thumb
branch_2231038: @ 2231038 :thumb
	mov     r0, #0x56
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2001288
	mov     r4, r0
	mov     r0, r5
	bl      Function_2230140
	cmp     r0, #0x0
	beq     branch_2231052
	mov     r4, #0x1
	mvn     r4, r4
.thumb
branch_2231052: @ 2231052 :thumb
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r4, r0
	beq     branch_2231064
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r4, r0
	bne     branch_223107a
	mov     r0, r7
	pop     {r3-r7,pc}
@ 0x2231064

.thumb
branch_2231064: @ 2231064 :thumb
	mov     r0, #0xd1
	mov     r1, #0x13
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, r5
	bl      Function_2232dfc
	ldr     r0, [pc, #0x188] @ 0x22311fc, (=0x5dd)
	bl      Function_2005748
	b       branch_22311c6
@ 0x223107a

.thumb
branch_223107a: @ 223107a :thumb
	ldr     r0, [pc, #0x180] @ 0x22311fc, (=0x5dd)
	bl      Function_2005748
	cmp     r4, #0x13
	bne     branch_22310bc
	cmp     r6, #0x0
	beq     branch_22310bc
	cmp     r6, #0x1
	bne     branch_2231098
	mov     r0, r5
	mov     r1, #0x68
	mov     r2, #0x0
	bl      Function_2232b58
	b       branch_22310b2
@ 0x2231098

.thumb
branch_2231098: @ 2231098 :thumb
	cmp     r6, #0x3
	bne     branch_22310a8
	mov     r0, r5
	mov     r1, #0x6a
	mov     r2, #0x0
	bl      Function_2232b58
	b       branch_22310b2
@ 0x22310a8

.thumb
branch_22310a8: @ 22310a8 :thumb
	mov     r0, r5
	mov     r1, #0x69
	mov     r2, #0x0
	bl      Function_2232b58
.thumb
branch_22310b2: @ 22310b2 :thumb
	mov     r0, #0xd1
	mov     r1, #0x1d
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	b       branch_2231160
@ 0x22310bc

.thumb
branch_22310bc: @ 22310bc :thumb
	cmp     r4, #0xf
	bne     branch_22310da
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x2
	bge     branch_22310da
	mov     r0, r5
	mov     r1, #0x59
	mov     r2, #0x0
	bl      Function_2232b58
	mov     r0, #0xd1
	mov     r1, #0x1d
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	b       branch_2231160
@ 0x22310da

.thumb
branch_22310da: @ 22310da :thumb
	cmp     r4, #0x1
	bne     branch_22310f8
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x2
	bge     branch_22310f8
	mov     r0, r5
	mov     r1, #0x67
	mov     r2, #0x0
	bl      Function_2232b58
	mov     r0, #0xd1
	mov     r1, #0x1d
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	b       branch_2231160
@ 0x22310f8

.thumb
branch_22310f8: @ 22310f8 :thumb
	cmp     r4, #0x0
	beq     branch_2231104
	cmp     r4, #0x1
	beq     branch_2231104
	cmp     r4, #0x1d
	bne     branch_223114a
.thumb
branch_2231104: @ 2231104 :thumb
	mov     r0, #0xc7
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x0
	bl      Function_200dc9c
	mov     r0, #0xc7
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a8fc
	mov     r0, #0x56
	lsl     r0, r0, #2
	mov     r2, #0x37
	lsl     r2, r2, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	add     r2, r5, r2
	bl      Function_2001384
	mov     r0, #0x55
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2013a3c
	mov     r0, r5
	mov     r1, r4
	bl      Function_223128c
	mov     r0, #0xd1
	mov     r1, #0x26
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, r7
	pop     {r3-r7,pc}
@ 0x223114a

.thumb
branch_223114a: @ 223114a :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_2232e58
	mov     r0, #0xd1
	mov     r1, #0x13
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, r5
	bl      Function_2232dfc
.thumb
branch_2231160: @ 2231160 :thumb
	mov     r0, r4
	mov     r6, #0x1
	bl      Function_222dd64
	cmp     r0, #0x0
	beq     branch_22311a2
	mov     r0, #0xd1
	lsl     r0, r0, #2
	ldr     r1, [r5, r0]
	cmp     r1, #0x13
	bne     branch_22311a2
	mov     r1, #0x44
	str     r1, [r5, r0]
	mov     r0, r5
	sub     r1, #0x45
	mov     r2, r4
	bl      Function_2234fcc
	mov     r0, r4
	bl      Function_222dfd4
	mov     r0, r5
	mov     r1, r4
	bl      Function_2232e58
	mov     r0, r4
	bl      Function_222dd94
	mov     r1, #0xd2
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r6, #0x0
	b       branch_22311b4
@ 0x22311a2

.thumb
branch_22311a2: @ 22311a2 :thumb
	mov     r1, #0x0
	mov     r0, r5
	mvn     r1, r1
	mov     r2, r4
	bl      Function_2234fcc
	mov     r0, r4
	bl      Function_222dfd4
.thumb
branch_22311b4: @ 22311b4 :thumb
	mov     r0, #0xd1
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	cmp     r0, #0x13
	bne     branch_22311c6
	mov     r0, r5
	mov     r1, r6
	bl      Function_223500c
.thumb
branch_22311c6: @ 22311c6 :thumb
	mov     r0, #0xc7
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x0
	bl      Function_200dc9c
	mov     r0, #0xc7
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a8fc
	mov     r0, #0x56
	lsl     r0, r0, #2
	mov     r2, #0x37
	lsl     r2, r2, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	add     r2, r5, r2
	bl      Function_2001384
	mov     r0, #0x55
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2013a3c
	mov     r0, r7
	pop     {r3-r7,pc}
@ 0x22311fc

.word 0x5dd @ 0x22311fc
.thumb
Function_2231200: @ 2231200 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r4, r1
	bl      Function_20383e8
	cmp     r0, #0x0
	beq     branch_223121c
	mov     r0, r5
	bl      Function_222f6ec
	add     sp, #0xc
	mov     r0, r4
	pop     {r4,r5,pc}
@ 0x223121c

.thumb
branch_223121c: @ 223121c :thumb
	mov     r0, #0xe2
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_22355fc
	mov     r0, r5
	bl      Function_2230140
	cmp     r0, #0x0
	beq     branch_2231238
	mov     r0, #0xd1
	mov     r1, #0x13
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_2231238: @ 2231238 :thumb
	bl      Function_20382c0
	cmp     r0, #0x0
	beq     branch_2231286
	mov     r0, #0x0
	mov     r1, #0x1
	bl      Function_20388f4
	mov     r0, #0x0
	bl      Function_203632c
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x36
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      Function_200f174
	mov     r0, #0xe
	mov     r1, #0x0
	lsl     r0, r0, #6
	str     r1, [r5, r0]
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	bl      Function_20329e0
	bl      Function_2032ac0
	bl      Function_203608c
	bl      Function_2032e1c
	mov     r4, #0x2
.thumb
branch_2231286: @ 2231286 :thumb
	mov     r0, r4
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x223128c

.thumb
Function_223128c: @ 223128c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x34
	mov     r5, r0
	cmp     r1, #0x0
	beq     branch_22312a0
	cmp     r1, #0x1
	beq     branch_22312c2
	cmp     r1, #0x1d
	beq     branch_22312e4
	b       branch_2231304
@ 0x22312a0

.thumb
branch_22312a0: @ 22312a0 :thumb
	mov     r0, #0xde
	mov     r1, #0x1
	lsl     r0, r0, #2
	ldr     r3, [pc, #0x180] @ 0x2231428, (=0x2238ad0)
	strh    r1, [r5, r0]
	add     r2, sp, #0x14
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	ldr     r4, [pc, #0x170] @ 0x223142c, (=0x2239c7c)
	mov     r7, #0x4
	stmia   r2!, {r0,r1}
	b       branch_2231304
@ 0x22312c2

.thumb
branch_22312c2: @ 22312c2 :thumb
	mov     r0, #0xde
	mov     r1, #0x0
	lsl     r0, r0, #2
	ldr     r3, [pc, #0x15c] @ 0x2231428, (=0x2238ad0)
	strh    r1, [r5, r0]
	add     r2, sp, #0x14
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	ldr     r4, [pc, #0x150] @ 0x2231430, (=0x2239c9c)
	mov     r7, #0x4
	stmia   r2!, {r0,r1}
	b       branch_2231304
@ 0x22312e4

.thumb
branch_22312e4: @ 22312e4 :thumb
	ldr     r3, [pc, #0x14c] @ 0x2231434, (=0x2238af0)
	add     r2, sp, #0x14
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	mov     r0, #0xde
	ldr     r4, [pc, #0x13c] @ 0x2231438, (=0x2239c5c)
	mov     r1, #0x2
	lsl     r0, r0, #2
	mov     r7, #0x4
	strh    r1, [r5, r0]
.thumb
branch_2231304: @ 2231304 :thumb
	mov     r0, r7
	mov     r1, #0x36
	bl      Function_2013a04
	mov     r1, #0x55
	lsl     r1, r1, #2
	mov     r6, #0x0
	str     r0, [r5, r1]
	cmp     r7, #0x0
	ble     branch_2231382
.thumb
branch_2231318: @ 2231318 :thumb
	ldr     r2, [r4, #0x0]
	cmp     r2, #0x47
	beq     branch_2231332
	mov     r0, #0x55
	mov     r1, #0x5a
	lsl     r0, r0, #2
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	ldr     r3, [r4, #0x4]
	bl      Function_2013a4c
	b       branch_223137a
@ 0x2231332

.thumb
branch_2231332: @ 2231332 :thumb
	mov     r0, #0x59
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	mov     r2, r6
	bl      Function_200c0b0
	mov     r0, #0x5a
	mov     r2, #0x17
	lsl     r0, r0, #2
	lsl     r2, r2, #4
	ldr     r0, [r5, r0]
	ldr     r1, [r4, #0x0]
	ldr     r2, [r5, r2]
	bl      Function_200b1b8
	mov     r0, #0x59
	mov     r1, #0x5e
	mov     r2, #0x17
	lsl     r0, r0, #2
	lsl     r1, r1, #2
	lsl     r2, r2, #4
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	ldr     r2, [r5, r2]
	bl      Function_200c388
	mov     r0, #0x55
	mov     r1, #0x5e
	lsl     r0, r0, #2
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	ldr     r2, [r4, #0x4]
	bl      Function_2013a6c
.thumb
branch_223137a: @ 223137a :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x8
	cmp     r6, r7
	blt     branch_2231318
.thumb
branch_2231382: @ 2231382 :thumb
	mov     r0, #0xc7
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a7cc
	cmp     r0, #0x0
	beq     branch_22313a6
	mov     r0, #0xc7
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x0
	bl      Function_200dc9c
	mov     r0, #0xc7
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a8fc
.thumb
branch_22313a6: @ 22313a6 :thumb
	mov     r1, #0x9
	str     r1, [sp, #0x0]
	mov     r1, #0xf
	lsl     r0, r7, #1
	str     r1, [sp, #0x4]
	lsl     r1, r0, #24
	lsr     r1, r1, #24
	str     r1, [sp, #0x8]
	mov     r1, #0xd
	str     r1, [sp, #0xc]
	mov     r1, #0x3b
	sub     r0, r1, r0
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	mov     r0, #0x57
	lsl     r0, r0, #2
	mov     r1, #0xc7
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	add     r1, r5, r1
	mov     r2, #0x2
	mov     r3, #0x10
	bl      Function_201a7e8
	mov     r0, #0xc7
	lsl     r0, r0, #2
	ldr     r2, [pc, #0x5c] @ 0x223143c, (=0x1d9)
	add     r0, r5, r0
	mov     r1, #0x1
	mov     r3, #0xb
	bl      Function_200dc48
	mov     r0, #0x55
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r3, #0xc7
	lsl     r3, r3, #2
	str     r0, [sp, #0x14]
	add     r0, r5, r3
	mov     r2, r3
	str     r0, [sp, #0x20]
	add     r2, #0x5c
	ldrh    r2, [r5, r2]
	add     r3, #0x56
	add     r0, sp, #0x14
	lsl     r2, r2, #1
	add     r2, r5, r2
	ldrh    r2, [r2, r3]
	mov     r1, #0x0
	mov     r3, #0x36
	bl      Function_200112c
	mov     r1, #0x56
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0xc7
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a9a4
	mov     r0, #0x1
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x2231426


.align 2


.word 0x2238ad0 @ 0x2231428
.word 0x2239c7c @ 0x223142c
.word 0x2239c9c @ 0x2231430
.word 0x2238af0 @ 0x2231434
.word 0x2239c5c @ 0x2231438
.word 0x1d9 @ 0x223143c
.thumb
Function_2231440: @ 2231440 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r0, #0xe2
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r6, r1
	bl      Function_22355fc
	mov     r0, r5
	bl      Function_2230140
	cmp     r0, #0x0
	beq     branch_22314a2
	mov     r0, #0xd1
	mov     r1, #0x13
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	sub     r0, #0x28
	add     r0, r5, r0
	mov     r1, #0x0
	bl      Function_200dc9c
	mov     r0, #0xc7
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a8fc
	ldr     r3, [pc, #0x124] @ 0x223159c, (=0x372)
	mov     r0, #0x56
	add     r2, r5, r3
	.hword  0x1d9b @ add r3, r3, #0x6
	ldrh    r3, [r5, r3]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	lsl     r3, r3, #1
	mov     r1, #0x0
	add     r2, r2, r3
	bl      Function_2001384
	mov     r0, #0x55
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2013a3c
	mov     r0, r5
	bl      Function_2232dfc
	mov     r0, r6
	pop     {r3-r7,pc}
@ 0x22314a2

.thumb
branch_22314a2: @ 22314a2 :thumb
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	beq     branch_22314b8
	mov     r0, r6
	pop     {r3-r7,pc}
@ 0x22314b8

.thumb
branch_22314b8: @ 22314b8 :thumb
	mov     r0, #0x56
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2001288
	mov     r4, r0
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r4, r0
	beq     branch_22314d6
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r4, r0
	bne     branch_22314e6
	mov     r0, r6
	pop     {r3-r7,pc}
@ 0x22314d6

.thumb
branch_22314d6: @ 22314d6 :thumb
	ldr     r0, [pc, #0xc8] @ 0x22315a0, (=0x5dd)
	bl      Function_2005748
	mov     r0, #0xd1
	mov     r1, #0x24
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	b       branch_2231502
@ 0x22314e6

.thumb
branch_22314e6: @ 22314e6 :thumb
	ldr     r0, [pc, #0xb8] @ 0x22315a0, (=0x5dd)
	bl      Function_2005748
	mov     r0, r5
	mov     r1, r4
	bl      Function_2232e58
	mov     r0, #0xd1
	mov     r1, #0x13
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, r5
	bl      Function_2232dfc
.thumb
branch_2231502: @ 2231502 :thumb
	mov     r0, #0xd1
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	cmp     r0, #0x13
	bne     branch_223155e
	mov     r0, r4
	mov     r7, #0x1
	bl      Function_222dd64
	cmp     r0, #0x0
	beq     branch_2231548
	mov     r0, #0xd1
	mov     r1, #0x44
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, r5
	sub     r1, #0x45
	mov     r2, r4
	bl      Function_2234fcc
	mov     r0, r4
	bl      Function_222dfd4
	mov     r0, r5
	mov     r1, r4
	bl      Function_2232e58
	mov     r0, r4
	bl      Function_222dd94
	mov     r1, #0xd2
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r7, #0x0
	b       branch_2231556
@ 0x2231548

.thumb
branch_2231548: @ 2231548 :thumb
	mov     r0, r5
	.hword  0x1eb9 @ sub r1, r7, #0x2
	mov     r2, r4
	bl      Function_2234fcc
	bl      Function_2038b84
.thumb
branch_2231556: @ 2231556 :thumb
	mov     r0, r5
	mov     r1, r7
	bl      Function_223500c
.thumb
branch_223155e: @ 223155e :thumb
	mov     r0, #0xc7
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x0
	bl      Function_200dc9c
	mov     r0, #0xc7
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a8fc
	ldr     r3, [pc, #0x24] @ 0x223159c, (=0x372)
	mov     r0, #0x56
	add     r2, r5, r3
	.hword  0x1d9b @ add r3, r3, #0x6
	ldrh    r3, [r5, r3]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	lsl     r3, r3, #1
	mov     r1, #0x0
	add     r2, r2, r3
	bl      Function_2001384
	mov     r0, #0x55
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2013a3c
	mov     r0, r6
	pop     {r3-r7,pc}
@ 0x223159a


.align 2


.word 0x372 @ 0x223159c
.word 0x5dd @ 0x22315a0
.thumb
Function_22315a4: @ 22315a4 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	mov     r0, #0xe2
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r6, r1
	bl      Function_2235254
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_222e8d4
	mov     r7, r0
	bne     branch_22315c6
	bl      ErrorHandling
.thumb
branch_22315c6: @ 22315c6 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_222e8d4
	str     r0, [sp, #0x0]
	cmp     r0, #0x0
	bne     branch_22315f2
	mov     r0, r4
	.hword  0x1e69 @ sub r1, r5, #0x1
	bl      Function_2232dc0
	mov     r0, r4
	mov     r1, #0x10
	mov     r2, #0x0
	bl      Function_2232b58
	mov     r0, #0xd1
	mov     r1, #0x1d
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r0, r6
	pop     {r3-r7,pc}
@ 0x22315f2

.thumb
branch_22315f2: @ 22315f2 :thumb
	mov     r0, r7
	bl      Function_22354e8
	mov     r2, r0
	mov     r0, #0xe2
	lsl     r0, r0, #2
	ldr     r1, [sp, #0x0]
	add     r0, r4, r0
	bl      Function_22354f8
	.hword  0x1e6f @ sub r7, r5, #0x1
	mov     r0, r4
	mov     r1, r7
	bl      Function_2234fa8
	mov     r1, r0
	mov     r0, r4
	bl      Function_222dd20
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	ldr     r0, [pc, #0xcc] @ 0x22316ec, (=0x37a)
	mov     r1, r7
	strh    r5, [r4, r0]
	mov     r0, r4
	bl      Function_2232dc0
	cmp     r5, #0xf
	bne     branch_2231630
	mov     r1, #0x3
	b       branch_22316d8
@ 0x2231630

.thumb
branch_2231630: @ 2231630 :thumb
	cmp     r5, #0x13
	bne     branch_2231638
	mov     r1, #0x4
	b       branch_22316d8
@ 0x2231638

.thumb
branch_2231638: @ 2231638 :thumb
	cmp     r5, #0x12
	bne     branch_2231640
	mov     r1, #0x53
	b       branch_22316d8
@ 0x2231640

.thumb
branch_2231640: @ 2231640 :thumb
	cmp     r5, #0x15
	bne     branch_2231648
	mov     r1, #0x5
	b       branch_22316d8
@ 0x2231648

.thumb
branch_2231648: @ 2231648 :thumb
	cmp     r5, #0x14
	bne     branch_2231650
	mov     r1, #0x54
	b       branch_22316d8
@ 0x2231650

.thumb
branch_2231650: @ 2231650 :thumb
	cmp     r5, #0x17
	bne     branch_2231666
	mov     r0, #0x59
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_200c0b0
	mov     r1, #0x6
	b       branch_22316d8
@ 0x2231666

.thumb
branch_2231666: @ 2231666 :thumb
	cmp     r5, #0x16
	bne     branch_223166e
	mov     r1, #0x55
	b       branch_22316d8
@ 0x223166e

.thumb
branch_223166e: @ 223166e :thumb
	cmp     r5, #0x19
	bne     branch_2231684
	mov     r0, #0x59
	lsl     r0, r0, #2
	mov     r1, #0x1
	ldr     r0, [r4, r0]
	mov     r2, r1
	bl      Function_200c0b0
	mov     r1, #0x6
	b       branch_22316d8
@ 0x2231684

.thumb
branch_2231684: @ 2231684 :thumb
	cmp     r5, #0x18
	bne     branch_223168c
	mov     r1, #0x55
	b       branch_22316d8
@ 0x223168c

.thumb
branch_223168c: @ 223168c :thumb
	cmp     r5, #0x1b
	bne     branch_22316a2
	mov     r0, #0x59
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	mov     r2, #0x2
	bl      Function_200c0b0
	mov     r1, #0x6
	b       branch_22316d8
@ 0x22316a2

.thumb
branch_22316a2: @ 22316a2 :thumb
	cmp     r5, #0x1a
	bne     branch_22316aa
	mov     r1, #0x55
	b       branch_22316d8
@ 0x22316aa

.thumb
branch_22316aa: @ 22316aa :thumb
	mov     r0, r5
	bl      Function_222ddd4
	cmp     r0, #0x0
	beq     branch_22316b8
	mov     r1, #0x2
	b       branch_22316d8
@ 0x22316b8

.thumb
branch_22316b8: @ 22316b8 :thumb
	cmp     r5, #0x8
	bne     branch_22316c0
	mov     r1, #0x52
	b       branch_22316d8
@ 0x22316c0

.thumb
branch_22316c0: @ 22316c0 :thumb
	mov     r0, r5
	bl      Function_222de40
	cmp     r0, #0x0
	beq     branch_22316ce
	mov     r1, #0x51
	b       branch_22316d8
@ 0x22316ce

.thumb
branch_22316ce: @ 22316ce :thumb
	cmp     r5, #0x1
	bne     branch_22316d6
	mov     r1, #0x56
	b       branch_22316d8
@ 0x22316d6

.thumb
branch_22316d6: @ 22316d6 :thumb
	mov     r1, #0x7
.thumb
branch_22316d8: @ 22316d8 :thumb
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_2232b58
	mov     r0, #0xd1
	mov     r1, #0x2b
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r0, r6
	pop     {r3-r7,pc}
@ 0x22316ec

.word 0x37a @ 0x22316ec
.thumb
Function_22316f0: @ 22316f0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x44
	mov     r5, r0
	str     r1, [sp, #0x14]
	bl      Function_20383e8
	cmp     r0, #0x0
	beq     branch_223170c
	mov     r0, r5
	bl      Function_222f6ec
	ldr     r0, [sp, #0x14]
	add     sp, #0x44
	pop     {r4-r7,pc}
@ 0x223170c

.thumb
branch_223170c: @ 223170c :thumb
	mov     r0, #0xe2
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_2235254
	mov     r4, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_222e8d4
	mov     r6, r0
	mov     r0, r5
	bl      Function_2230140
	cmp     r0, #0x0
	beq     branch_223174c
	mov     r0, #0xe2
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, r6
	bl      Function_223556c
	mov     r0, r5
	bl      Function_2232dfc
	mov     r0, #0xd1
	mov     r1, #0x13
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	ldr     r0, [sp, #0x14]
	add     sp, #0x44
	pop     {r4-r7,pc}
@ 0x223174c

.thumb
branch_223174c: @ 223174c :thumb
	cmp     r6, #0x0
	bne     branch_223178a
	mov     r0, #0xe2
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, r6
	bl      Function_223556c
	mov     r0, #0x56
	lsl     r0, r0, #2
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	mov     r2, r1
	bl      Function_2001384
	mov     r0, r5
	.hword  0x1e61 @ sub r1, r4, #0x1
	bl      Function_2232dc0
	mov     r0, r5
	mov     r1, #0x10
	mov     r2, #0x0
	bl      Function_2232b58
	mov     r0, #0xd1
	mov     r1, #0x1d
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	ldr     r0, [sp, #0x14]
	add     sp, #0x44
	pop     {r4-r7,pc}
@ 0x223178a

.thumb
branch_223178a: @ 223178a :thumb
	mov     r0, r5
	.hword  0x1e61 @ sub r1, r4, #0x1
	bl      Function_2234fa8
	mov     r1, r0
	mov     r0, r5
	bl      Function_222dd20
	ldr     r1, [pc, #0x1cc] @ 0x2231968, (=0x37a)
	ldrh    r2, [r5, r1]
	cmp     r2, r0
	beq     branch_22317cc
	add     r1, #0xe
	add     r0, r5, r1
	mov     r1, r6
	bl      Function_223556c
	mov     r0, r5
	.hword  0x1e61 @ sub r1, r4, #0x1
	bl      Function_2232dc0
	mov     r0, r5
	mov     r1, #0x10
	mov     r2, #0x0
	bl      Function_2232b58
	mov     r0, #0xd1
	mov     r1, #0x1d
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	ldr     r0, [sp, #0x14]
	add     sp, #0x44
	pop     {r4-r7,pc}
@ 0x22317cc

.thumb
branch_22317cc: @ 22317cc :thumb
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	beq     branch_22317e4
	ldr     r0, [sp, #0x14]
	add     sp, #0x44
	pop     {r4-r7,pc}
@ 0x22317e4

.thumb
branch_22317e4: @ 22317e4 :thumb
	ldr     r3, [pc, #0x184] @ 0x223196c, (=0x2238a90)
	mov     r0, #0x2
	str     r0, [sp, #0x1c]
	add     r2, sp, #0x24
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	mov     r0, #0xe2
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_2235254
	mov     r1, r0
	mov     r0, r5
	.hword  0x1e49 @ sub r1, r1, #0x1
	bl      Function_2234fa8
	mov     r6, r0
	mov     r0, r5
	mov     r1, r6
	bl      Function_222dd20
	add     r6, #0x21
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	mov     r0, #0xdf
	ldrb    r1, [r6, #0x0]
	lsl     r0, r0, #2
	strh    r1, [r5, r0]
	ldr     r0, [r5, #0x4]
	add     r0, #0x21
	ldrb    r0, [r0, #0x0]
	add     r0, r1, r0
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x18]
	mov     r0, #0x2
	mov     r1, #0x36
	bl      Function_2013a04
	mov     r1, #0x55
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x0
	ldr     r6, [pc, #0x128] @ 0x2231970, (=0x2238968)
	str     r0, [sp, #0x20]
	add     r7, sp, #0x24
.thumb
branch_223184c: @ 223184c :thumb
	ldr     r0, [sp, #0x20]
	cmp     r0, #0x0
	bne     branch_22318c6
	mov     r0, r4
	bl      Function_222de68
	cmp     r0, #0x0
	bne     branch_2231868
	cmp     r4, #0x0
	beq     branch_2231868
	cmp     r4, #0x1c
	beq     branch_2231868
	cmp     r4, #0x1d
	bcc     branch_223187c
.thumb
branch_2231868: @ 2231868 :thumb
	ldrh    r0, [r7, #0x12]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r7, #0x12]
	ldrh    r0, [r7, #0x10]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r7, #0x10]
	ldr     r0, [sp, #0x1c]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [sp, #0x1c]
	b       branch_22318da
@ 0x223187c

.thumb
branch_223187c: @ 223187c :thumb
	cmp     r4, #0x10
	bne     branch_22318b0
	ldr     r0, [sp, #0x18]
	cmp     r0, #0x2
	bne     branch_223189c
	mov     r0, #0x55
	mov     r1, #0x5a
	lsl     r0, r0, #2
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	ldr     r3, [r6, #0x4]
	mov     r2, #0x24
	bl      Function_2013a4c
	b       branch_22318da
@ 0x223189c

.thumb
branch_223189c: @ 223189c :thumb
	ldrh    r0, [r7, #0x12]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r7, #0x12]
	ldrh    r0, [r7, #0x10]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r7, #0x10]
	ldr     r0, [sp, #0x1c]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [sp, #0x1c]
	b       branch_22318da
@ 0x22318b0

.thumb
branch_22318b0: @ 22318b0 :thumb
	mov     r0, #0x55
	mov     r1, #0x5a
	lsl     r0, r0, #2
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	ldr     r2, [r6, #0x0]
	ldr     r3, [r6, #0x4]
	bl      Function_2013a4c
	b       branch_22318da
@ 0x22318c6

.thumb
branch_22318c6: @ 22318c6 :thumb
	mov     r0, #0x55
	mov     r1, #0x5a
	lsl     r0, r0, #2
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	ldr     r2, [r6, #0x0]
	ldr     r3, [r6, #0x4]
	bl      Function_2013a4c
.thumb
branch_22318da: @ 22318da :thumb
	ldr     r0, [sp, #0x20]
	add     r6, #0x8
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x20]
	cmp     r0, #0x2
	bcc     branch_223184c
	ldr     r0, [sp, #0x1c]
	mov     r1, #0x3
	sub     r0, r1, r0
	lsl     r0, r0, #1
	add     r0, #0xb
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0xf
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x1c]
	mov     r1, #0xc7
	lsl     r0, r0, #25
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x3b
	str     r0, [sp, #0x10]
	mov     r0, #0x57
	lsl     r0, r0, #2
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	add     r1, r5, r1
	mov     r2, #0x2
	mov     r3, #0x10
	bl      Function_201a7e8
	mov     r0, #0xc7
	lsl     r0, r0, #2
	ldr     r2, [pc, #0x50] @ 0x2231974, (=0x1d9)
	add     r0, r5, r0
	mov     r1, #0x1
	mov     r3, #0xb
	bl      Function_200dc48
	mov     r0, #0x55
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	str     r0, [sp, #0x24]
	mov     r0, #0xc7
	lsl     r0, r0, #2
	add     r0, r5, r0
	str     r0, [sp, #0x30]
	add     r0, sp, #0x24
	mov     r2, r1
	mov     r3, #0x36
	bl      Function_200112c
	mov     r1, #0x56
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0xc7
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a9a4
	mov     r0, #0xd1
	mov     r1, #0x2c
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	ldr     r0, [sp, #0x14]
	add     sp, #0x44
	pop     {r4-r7,pc}
@ 0x2231968

.word 0x37a @ 0x2231968
.word 0x2238a90 @ 0x223196c
.word 0x2238968 @ 0x2231970
.word 0x1d9 @ 0x2231974
.thumb
Function_2231978: @ 2231978 :thumb
	push    {r4,r5}
	ldr     r2, [pc, #0x38] @ 0x22319b4, (=0x1ef)
	mov     r5, #0x0
	mov     r1, r2
	sub     r1, #0x1c
	mov     r3, r2
.thumb
branch_2231984: @ 2231984 :thumb
	ldrh    r4, [r0, #0x0]
	cmp     r4, r3
	bne     branch_2231990
	mov     r0, #0x0
	pop     {r4,r5}
	bx      lr
@ 0x2231990

.thumb
branch_2231990: @ 2231990 :thumb
	cmp     r4, r2
	bls     branch_223199a
	mov     r0, #0x0
	pop     {r4,r5}
	bx      lr
@ 0x223199a

.thumb
branch_223199a: @ 223199a :thumb
	ldrh    r4, [r0, #0xc]
	cmp     r4, r1
	bls     branch_22319a6
	mov     r0, #0x0
	pop     {r4,r5}
	bx      lr
@ 0x22319a6

.thumb
branch_22319a6: @ 22319a6 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1c80 @ add r0, r0, #0x2
	cmp     r5, #0x6
	blt     branch_2231984
	mov     r0, #0x1
	pop     {r4,r5}
	bx      lr
@ 0x22319b4

.word 0x1ef @ 0x22319b4
.thumb
Function_22319b8: @ 22319b8 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      LoadVariableAreaAdressItemList
	mov     r1, #0x4
	bl      Function_207d69c
	cmp     r0, #0x0
	bne     branch_22319d4
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x22319d4

.thumb
branch_22319d4: @ 22319d4 :thumb
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      LoadVariableAreaAdressItemList
	ldr     r1, [pc, #0x28] @ 0x2231a08, (=0x1c1)
	mov     r2, #0x36
	bl      Function_207d730
	cmp     r0, #0x0
	bne     branch_22319ee
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x22319ee

.thumb
branch_22319ee: @ 22319ee :thumb
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      LoadVariableAreaAdress_10
	bl      Function_202ac98
	cmp     r0, #0x64
	bcc     branch_2231a04
	mov     r0, #0x2
	pop     {r4,pc}
@ 0x2231a04

.thumb
branch_2231a04: @ 2231a04 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2231a08

.word 0x1c1 @ 0x2231a08
.thumb
Function_2231a0c: @ 2231a0c :thumb
	push    {r4,lr}
	mov     r0, #0x0
	bl      0x21d2584
	bl      Function_2231a54
	cmp     r0, #0x0
	bne     branch_2231a3e
	bl      Function_2013948
	cmp     r0, #0x0
	bne     branch_2231a28
	ldr     r4, [pc, #0x24] @ 0x2231a4c, (=0x43d)
	b       branch_2231a2a
@ 0x2231a28

.thumb
branch_2231a28: @ 2231a28 :thumb
	ldr     r4, [pc, #0x24] @ 0x2231a50, (=0x43e)
.thumb
branch_2231a2a: @ 2231a2a :thumb
	mov     r0, #0x0
	bl      Function_2004234
	lsl     r1, r4, #16
	mov     r0, #0xb
	lsr     r1, r1, #16
	mov     r2, #0x1
	bl      Function_2004550
	pop     {r4,pc}

branch_2231a3e: @ 2231a3e :thumb
	bl      Function_20041fc
	mov     r1, #0x78
	bl      Function_2004ad4
	pop     {r4,pc}
@ 0x2231a4a

.align 2
.word 0x43d @ 0x2231a4c
.word 0x43e @ 0x2231a50



.thumb
Function_2231a54: @ 2231a54 :thumb
	push    {r3,lr}
	bl      Function_20041fc
	ldr     r1, [pc, #0x14] @ 0x2231a70, (=0x43d)
	cmp     r0, r1
	beq     branch_2231a6a
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r0, r1
	beq     branch_2231a6a
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2231a6a

.thumb
branch_2231a6a: @ 2231a6a :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2231a6e

.align 2
.word 0x43d @ 0x2231a70



.thumb
Function_2231a74: @ 2231a74 :thumb
	push    {r4,lr}
	mov     r1, #0x16
	lsl     r1, r1, #4
	ldr     r0, [r0, r1]
	bl      LoadVariableAreaAdress_12
	mov     r4, r0
	mov     r0, #0x36
	mov     r1, #0x1d
	bl      Function_202c244
	mov     r1, r0
	mov     r0, r4
	mov     r2, #0x4
	bl      Function_202b758
	pop     {r4,pc}
@ 0x2231a96


.align 2, 0


.thumb
Function_2231a98: @ 2231a98 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	mov     r0, #0x56
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	str     r1, [sp, #0x0]
	mov     r6, #0x0
	bl      Function_2001288
	mov     r7, r0
	mov     r0, r5
	bl      Function_2230140
	cmp     r0, #0x0
	beq     branch_2231aba
	.hword  0x1eb7 @ sub r7, r6, #0x2
.thumb
branch_2231aba: @ 2231aba :thumb
	mov     r0, #0xe2
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_2235254
	mov     r4, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_222e8d4
	str     r0, [sp, #0x14]
	bl      Function_20383e8
	cmp     r0, #0x0
	beq     branch_2231b24
	mov     r0, #0xc7
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x0
	bl      Function_200dc9c
	mov     r0, #0xc7
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a8fc
	mov     r0, #0x56
	lsl     r0, r0, #2
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	mov     r2, r1
	bl      Function_2001384
	mov     r0, #0x55
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2013a3c
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x0
	beq     branch_2231b18
	mov     r0, #0xe2
	lsl     r0, r0, #2
	ldr     r1, [sp, #0x14]
	add     r0, r5, r0
	bl      Function_223556c
.thumb
branch_2231b18: @ 2231b18 :thumb
	mov     r0, r5
	bl      Function_222f6ec
	ldr     r0, [sp, #0x0]
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2231b24

.thumb
branch_2231b24: @ 2231b24 :thumb
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r7, r0
	beq     branch_2231bb8
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r7, r0
	bne     branch_2231bc8
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x0
	bne     branch_2231b64
	mov     r0, #0x56
	lsl     r0, r0, #2
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	mov     r2, r1
	bl      Function_2001384
	mov     r0, r5
	.hword  0x1e61 @ sub r1, r4, #0x1
	bl      Function_2232dc0
	mov     r0, r5
	mov     r1, #0x10
	mov     r2, #0x0
	bl      Function_2232b58
	mov     r0, #0xd1
	mov     r1, #0x1d
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r6, #0x1
	b       branch_2231e06
@ 0x2231b64

.thumb
branch_2231b64: @ 2231b64 :thumb
	mov     r0, r5
	.hword  0x1e61 @ sub r1, r4, #0x1
	bl      Function_2234fa8
	mov     r6, r0
	mov     r0, r5
	mov     r1, r6
	bl      Function_222dd20
	ldr     r1, [pc, #0x2e0] @ 0x2231e58, (=0x37a)
	add     r6, #0x21
	ldrh    r1, [r5, r1]
	ldrb    r6, [r6, #0x0]
	cmp     r1, r0
	bne     branch_2231b94
	bl      Function_222dd64
	cmp     r0, #0x0
	bne     branch_2231bb2
	mov     r0, #0xdf
	lsl     r0, r0, #2
	ldrh    r0, [r5, r0]
	cmp     r0, r6
	beq     branch_2231bb2
.thumb
branch_2231b94: @ 2231b94 :thumb
	mov     r0, r5
	.hword  0x1e61 @ sub r1, r4, #0x1
	bl      Function_2232dc0
	mov     r0, r5
	mov     r1, #0x10
	mov     r2, #0x0
	bl      Function_2232b58
	mov     r0, #0xd1
	mov     r1, #0x1d
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r6, #0x1
	b       branch_2231e06
@ 0x2231bb2

.thumb
branch_2231bb2: @ 2231bb2 :thumb
	ldr     r0, [sp, #0x0]
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2231bb8

.thumb
branch_2231bb8: @ 2231bb8 :thumb
	ldr     r0, [pc, #0x2a0] @ 0x2231e5c, (=0x5dd)
	bl      Function_2005748
	mov     r0, #0xd1
	mov     r1, #0x13
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	b       branch_2231e06
@ 0x2231bc8

.thumb
branch_2231bc8: @ 2231bc8 :thumb
	ldr     r0, [pc, #0x290] @ 0x2231e5c, (=0x5dd)
	bl      Function_2005748
	cmp     r7, #0x1
	beq     branch_2231bd4
	b       branch_2231dfa
@ 0x2231bd4

.thumb
branch_2231bd4: @ 2231bd4 :thumb
	mov     r0, #0xd1
	mov     r1, #0x13
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	add     r0, #0x3a
	strh    r4, [r5, r0]
	cmp     r4, #0x0
	bne     branch_2231be6
	b       branch_2231e06
@ 0x2231be6

.thumb
branch_2231be6: @ 2231be6 :thumb
	mov     r0, r5
	bl      Function_222df88
	str     r0, [sp, #0x10]
	mov     r0, r5
	bl      Function_22319b8
	str     r0, [sp, #0xc]
	mov     r0, r5
	.hword  0x1e61 @ sub r1, r4, #0x1
	bl      Function_2234fa8
	str     r0, [sp, #0x8]
	ldr     r1, [sp, #0x8]
	mov     r0, r5
	bl      Function_222dd20
	ldr     r1, [sp, #0x8]
	mov     r7, r0
	add     r1, #0x21
	ldrb    r1, [r1, #0x0]
	str     r1, [sp, #0x4]
	ldr     r1, [pc, #0x244] @ 0x2231e58, (=0x37a)
	ldrh    r1, [r5, r1]
	cmp     r1, r7
	bne     branch_2231c2e
	bl      Function_222dd64
	cmp     r0, #0x0
	bne     branch_2231c4c
	mov     r0, #0xdf
	lsl     r0, r0, #2
	ldrh    r1, [r5, r0]
	ldr     r0, [sp, #0x4]
	cmp     r1, r0
	beq     branch_2231c4c
.thumb
branch_2231c2e: @ 2231c2e :thumb
	mov     r0, r5
	.hword  0x1e61 @ sub r1, r4, #0x1
	bl      Function_2232dc0
	mov     r0, r5
	mov     r1, #0x10
	mov     r2, #0x0
	bl      Function_2232b58
	mov     r0, #0xd1
	mov     r1, #0x1d
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r6, #0x1
	b       branch_2231e06
@ 0x2231c4c

.thumb
branch_2231c4c: @ 2231c4c :thumb
	ldr     r0, [sp, #0x8]
	bl      Function_2231978
	cmp     r0, #0x0
	bne     branch_2231c74
	mov     r0, r5
	.hword  0x1e61 @ sub r1, r4, #0x1
	bl      Function_2232dc0
	mov     r0, r5
	mov     r1, #0x10
	mov     r2, #0x0
	bl      Function_2232b58
	mov     r0, #0xd1
	mov     r1, #0x1d
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r6, #0x1
	b       branch_2231e06
@ 0x2231c74

.thumb
branch_2231c74: @ 2231c74 :thumb
	mov     r0, r7
	bl      Function_222deb0
	cmp     r0, #0x0
	beq     branch_2231caa
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x2
	bge     branch_2231caa
	cmp     r7, #0xf
	bne     branch_2231c94
	mov     r0, r5
	mov     r1, #0x59
	mov     r2, #0x0
	bl      Function_2232b58
	b       branch_2231c9e
@ 0x2231c94

.thumb
branch_2231c94: @ 2231c94 :thumb
	mov     r0, r5
	mov     r1, #0x67
	mov     r2, #0x0
	bl      Function_2232b58
.thumb
branch_2231c9e: @ 2231c9e :thumb
	mov     r0, #0xd1
	mov     r1, #0x1d
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r6, #0x1
	b       branch_2231e06
@ 0x2231caa

.thumb
branch_2231caa: @ 2231caa :thumb
	cmp     r7, #0x13
	bne     branch_2231cea
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x0
	beq     branch_2231cea
	cmp     r0, #0x1
	bne     branch_2231cc4
	mov     r0, r5
	mov     r1, #0x68
	mov     r2, #0x0
	bl      Function_2232b58
	b       branch_2231cde
@ 0x2231cc4

.thumb
branch_2231cc4: @ 2231cc4 :thumb
	cmp     r0, #0x3
	bne     branch_2231cd4
	mov     r0, r5
	mov     r1, #0x6a
	mov     r2, #0x0
	bl      Function_2232b58
	b       branch_2231cde
@ 0x2231cd4

.thumb
branch_2231cd4: @ 2231cd4 :thumb
	mov     r0, r5
	mov     r1, #0x69
	mov     r2, #0x0
	bl      Function_2232b58
.thumb
branch_2231cde: @ 2231cde :thumb
	mov     r0, #0xd1
	mov     r1, #0x1d
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r6, #0x1
	b       branch_2231e06
@ 0x2231cea

.thumb
branch_2231cea: @ 2231cea :thumb
	mov     r0, r7
	bl      Function_222dd64
	cmp     r0, #0x0
	bne     branch_2231d34
	ldr     r0, [r5, #0x4]
	add     r0, #0x21
	ldrb    r1, [r0, #0x0]
	ldr     r0, [sp, #0x4]
	cmp     r0, r1
	beq     branch_2231d34
	cmp     r0, #0x0
	beq     branch_2231d10
	mov     r0, r5
	mov     r1, #0x86
	mov     r2, #0x0
	bl      Function_2232b58
	b       branch_2231d1a
@ 0x2231d10

.thumb
branch_2231d10: @ 2231d10 :thumb
	mov     r0, r5
	mov     r1, #0x87
	mov     r2, #0x0
	bl      Function_2232b58
.thumb
branch_2231d1a: @ 2231d1a :thumb
	mov     r0, r7
	bl      Function_222ded4
	mov     r1, r0
	mov     r0, r5
	bl      Function_2232e58
	mov     r0, #0xd1
	mov     r1, #0x3f
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r6, #0x1
	b       branch_2231e06
@ 0x2231d34

.thumb
branch_2231d34: @ 2231d34 :thumb
	mov     r0, r7
	bl      Function_222ded4
	mov     r7, r0
	cmp     r7, #0x1d
	beq     branch_2231e06
	.hword  0x1e60 @ sub r0, r4, #0x1
	bl      Function_2234fc4
	cmp     r0, #0x6
	bne     branch_2231ddc
	mov     r0, r5
	.hword  0x1e61 @ sub r1, r4, #0x1
	mov     r2, r7
	bl      Function_2234fcc
	cmp     r0, #0x0
	beq     branch_2231dbe
	mov     r0, #0xcf
	ldr     r1, [pc, #0x104] @ 0x2231e60, (=0x708)
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, r7
	bl      Function_222dfd4
	mov     r0, r5
	mov     r1, r7
	bl      Function_2232e58
	mov     r0, r5
	.hword  0x1e61 @ sub r1, r4, #0x1
	bl      Function_2232dc0
	mov     r0, r5
	mov     r1, #0x11
	mov     r2, #0x0
	bl      Function_2232b58
	mov     r0, #0x62
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_2231d8e
	bl      ErrorHandling
.thumb
branch_2231d8e: @ 2231d8e :thumb
	mov     r1, #0xb3
	lsl     r1, r1, #2
	add     r0, r5, r1
	sub     r1, #0xea
	bl      Function_200e7fc
	mov     r1, #0x62
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	cmp     r7, #0x1
	beq     branch_2231dac
	mov     r0, #0xd1
	mov     r1, #0x2d
	lsl     r0, r0, #2
	b       branch_2231db8
@ 0x2231dac

.thumb
branch_2231dac: @ 2231dac :thumb
	mov     r0, #0xcf
	ldr     r1, [pc, #0xb0] @ 0x2231e60, (=0x708)
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r1, #0x15
	add     r0, #0x8
.thumb
branch_2231db8: @ 2231db8 :thumb
	str     r1, [r5, r0]
	mov     r6, #0x1
	b       branch_2231e06
@ 0x2231dbe

.thumb
branch_2231dbe: @ 2231dbe :thumb
	mov     r0, r5
	.hword  0x1e61 @ sub r1, r4, #0x1
	bl      Function_2232dc0
	mov     r0, r5
	mov     r1, #0x10
	mov     r2, #0x0
	bl      Function_2232b58
	mov     r0, #0xd1
	mov     r1, #0x1d
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r6, #0x1
	b       branch_2231e06
@ 0x2231ddc

.thumb
branch_2231ddc: @ 2231ddc :thumb
	mov     r0, r5
	.hword  0x1e61 @ sub r1, r4, #0x1
	bl      Function_2232dc0
	mov     r0, r5
	mov     r1, #0x10
	mov     r2, #0x0
	bl      Function_2232b58
	mov     r0, #0xd1
	mov     r1, #0x1d
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r6, #0x1
	b       branch_2231e06
@ 0x2231dfa

.thumb
branch_2231dfa: @ 2231dfa :thumb
	cmp     r7, #0x2
	bne     branch_2231e06
	mov     r0, #0xd1
	mov     r1, #0x36
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_2231e06: @ 2231e06 :thumb
	cmp     r6, #0x0
	bne     branch_2231e10
	mov     r0, r5
	bl      Function_2232dfc
.thumb
branch_2231e10: @ 2231e10 :thumb
	mov     r0, #0xc7
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x0
	bl      Function_200dc9c
	mov     r0, #0xc7
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a8fc
	mov     r0, #0x56
	lsl     r0, r0, #2
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	mov     r2, r1
	bl      Function_2001384
	mov     r0, #0x55
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2013a3c
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x0
	beq     branch_2231e50
	mov     r0, #0xe2
	lsl     r0, r0, #2
	ldr     r1, [sp, #0x14]
	add     r0, r5, r0
	bl      Function_223556c
.thumb
branch_2231e50: @ 2231e50 :thumb
	ldr     r0, [sp, #0x0]
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2231e56


.align 2


.word 0x37a @ 0x2231e58
.word 0x5dd @ 0x2231e5c
.word 0x708 @ 0x2231e60
.thumb
Function_2231e64: @ 2231e64 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r0, #0xcf
	lsl     r0, r0, #2
	mov     r4, r1
	ldr     r1, [r5, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r5, r0]
	ldr     r1, [r5, r0]
	cmp     r1, #0x0
	bge     branch_2231e84
	mov     r1, #0x46
	add     r0, #0x8
	str     r1, [r5, r0]
	b       branch_2231fd8
@ 0x2231e84

.thumb
branch_2231e84: @ 2231e84 :thumb
	bl      Function_20380e4
	cmp     r0, #0x3
	bne     branch_2231eac
	bl      0x21d2388
	mov     r1, r0
	mov     r0, r5
	bl      Function_2232dc0
	mov     r0, r5
	mov     r1, #0x12
	mov     r2, #0x0
	bl      Function_2232b58
	mov     r0, #0xd1
	mov     r1, #0x1b
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	b       branch_2231fd8
@ 0x2231eac

.thumb
branch_2231eac: @ 2231eac :thumb
	bl      Function_20380e4
	cmp     r0, #0x5
	bne     branch_2231ed4
	bl      0x21d2388
	mov     r1, r0
	mov     r0, r5
	bl      Function_2232dc0
	mov     r0, r5
	mov     r1, #0xf
	mov     r2, #0x0
	bl      Function_2232b58
	mov     r0, #0xd1
	mov     r1, #0x1b
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	b       branch_2231fd8
@ 0x2231ed4

.thumb
branch_2231ed4: @ 2231ed4 :thumb
	bl      Function_20380e4
	cmp     r0, #0x4
	beq     branch_2231ee4
	bl      Function_2038284
	cmp     r0, #0x0
	beq     branch_2231f04
.thumb
branch_2231ee4: @ 2231ee4 :thumb
	bl      0x21d2388
	mov     r1, r0
	mov     r0, r5
	bl      Function_2232dc0
	mov     r0, r5
	mov     r1, #0x12
	mov     r2, #0x0
	bl      Function_2232b58
	mov     r0, #0xd1
	mov     r1, #0x1b
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	b       branch_2231fd8
@ 0x2231f04

.thumb
branch_2231f04: @ 2231f04 :thumb
	bl      Function_20383e8
	cmp     r0, #0x0
	beq     branch_2231f14
	mov     r0, r5
	bl      Function_222f6ec
	b       branch_2231fd8
@ 0x2231f14

.thumb
branch_2231f14: @ 2231f14 :thumb
	bl      Function_20380e4
	cmp     r0, #0x1
	bne     branch_2231fd8
	ldr     r1, [r5, #0x4]
	mov     r0, r5
	bl      Function_222dd20
	mov     r6, r0
	bl      Function_222dd64
	cmp     r0, #0x0
	bne     branch_2231f52
	mov     r0, #0xd1
	mov     r1, #0x31
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, r5
	bl      Function_2232dfc
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_20329e0
	mov     r0, #0xd6
	mov     r1, #0x1e
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	b       branch_2231fd8
@ 0x2231f52

.thumb
branch_2231f52: @ 2231f52 :thumb
	mov     r0, #0x0
	bl      Function_2035d78
	cmp     r0, #0x1
	bne     branch_2231fb2
	mov     r0, r5
	bl      Function_2232dfc
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_20329e0
	mov     r0, #0x0
	mov     r1, #0x1
	bl      Function_20388f4
	mov     r0, r6
	bl      Function_222dfd4
	mov     r0, r6
	bl      Function_222dd94
	mov     r1, #0xd2
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x0
	bl      Function_203632c
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x36
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      Function_200f174
	mov     r0, #0xe
	mov     r1, #0x0
	lsl     r0, r0, #6
	str     r1, [r5, r0]
	mov     r4, #0x2
	b       branch_2231fd8
@ 0x2231fb2

.thumb
branch_2231fb2: @ 2231fb2 :thumb
	bl      Function_20362c8
	cmp     r0, #0x1
	bne     branch_2231fd8
	bl      0x21d2388
	mov     r1, r0
	mov     r0, r5
	bl      Function_2232dc0
	mov     r0, r5
	mov     r1, #0x12
	mov     r2, #0x0
	bl      Function_2232b58
	mov     r0, #0xd1
	mov     r1, #0x1b
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_2231fd8: @ 2231fd8 :thumb
	mov     r0, r4
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x2231fde


.align 2, 0


.thumb
Function_2231fe0: @ 2231fe0 :thumb
	mov     r0, r1
	bx      lr
@ 0x2231fe4

.thumb
Function_2231fe4: @ 2231fe4 :thumb
	mov     r0, r1
	bx      lr
@ 0x2231fe8

.thumb
Function_2231fe8: @ 2231fe8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_2232f30
	mov     r0, r5
	mov     r1, #0x10
	bl      Function_2232e58
	bl      Function_2038378
	mov     r1, #0x0
	mov     r0, #0xdb
	mvn     r1, r1
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r1, #0x13
	sub     r0, #0x28
	str     r1, [r5, r0]
	mov     r0, r5
	bl      Function_223503c
	mov     r0, r5
	bl      Function_2232dfc
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x223201e


.align 2, 0


.thumb
Function_2232020: @ 2232020 :thumb
	mov     r0, r1
	bx      lr
@ 0x2232024

.thumb
Function_2232024: @ 2232024 :thumb
	mov     r0, r1
	bx      lr
@ 0x2232028

.thumb
Function_2232028: @ 2232028 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	bl      0x21d2388
	mov     r1, r0
	mov     r0, r5
	bl      Function_2234fa8
	mov     r7, r0
	ldr     r1, [r5, #0x4]
	mov     r0, r5
	bl      Function_222dd20
	mov     r4, r0
	mov     r0, r5
	mov     r1, r7
	bl      Function_222dd20
	ldr     r1, [r5, #0x4]
	add     r1, #0x21
	ldrb    r1, [r1, #0x0]
	cmp     r4, #0xc
	bne     branch_2232066
	cmp     r0, #0x5
	bne     branch_2232066
	mov     r0, #0xd1
	mov     r1, #0x31
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	b       branch_2232172
@ 0x2232066

.thumb
branch_2232066: @ 2232066 :thumb
	cmp     r4, #0xd
	bne     branch_2232078
	cmp     r0, #0x6
	bne     branch_2232078
	mov     r0, #0xd1
	mov     r1, #0x31
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	b       branch_2232172
@ 0x2232078

.thumb
branch_2232078: @ 2232078 :thumb
	cmp     r4, #0xe
	bne     branch_223208a
	cmp     r0, #0x7
	bne     branch_223208a
	mov     r0, #0xd1
	mov     r1, #0x31
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	b       branch_2232172
@ 0x223208a

.thumb
branch_223208a: @ 223208a :thumb
	cmp     r4, #0x9
	bne     branch_223209c
	cmp     r0, #0x2
	bne     branch_223209c
	mov     r0, #0xd1
	mov     r1, #0x31
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	b       branch_2232172
@ 0x223209c

.thumb
branch_223209c: @ 223209c :thumb
	cmp     r4, #0xa
	bne     branch_22320ae
	cmp     r0, #0x3
	bne     branch_22320ae
	mov     r0, #0xd1
	mov     r1, #0x31
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	b       branch_2232172
@ 0x22320ae

.thumb
branch_22320ae: @ 22320ae :thumb
	cmp     r4, #0xb
	bne     branch_22320c0
	cmp     r0, #0x4
	bne     branch_22320c0
	mov     r0, #0xd1
	mov     r1, #0x31
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	b       branch_2232172
@ 0x22320c0

.thumb
branch_22320c0: @ 22320c0 :thumb
	cmp     r4, #0xf
	bne     branch_22320d2
	cmp     r0, #0x8
	bne     branch_22320d2
	mov     r0, #0xd1
	mov     r1, #0x31
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	b       branch_2232172
@ 0x22320d2

.thumb
branch_22320d2: @ 22320d2 :thumb
	cmp     r4, #0x13
	bne     branch_22320e4
	cmp     r0, #0x12
	bne     branch_22320e4
	mov     r0, #0xd1
	mov     r1, #0x31
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	b       branch_2232172
@ 0x22320e4

.thumb
branch_22320e4: @ 22320e4 :thumb
	cmp     r4, #0x15
	bne     branch_22320f6
	cmp     r0, #0x14
	bne     branch_22320f6
	mov     r0, #0xd1
	mov     r1, #0x31
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	b       branch_2232172
@ 0x22320f6

.thumb
branch_22320f6: @ 22320f6 :thumb
	cmp     r4, #0x17
	bne     branch_2232108
	cmp     r0, #0x16
	bne     branch_2232108
	mov     r0, #0xd1
	mov     r1, #0x31
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	b       branch_2232172
@ 0x2232108

.thumb
branch_2232108: @ 2232108 :thumb
	cmp     r4, #0x19
	bne     branch_223211a
	cmp     r0, #0x18
	bne     branch_223211a
	mov     r0, #0xd1
	mov     r1, #0x31
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	b       branch_2232172
@ 0x223211a

.thumb
branch_223211a: @ 223211a :thumb
	cmp     r4, #0x1b
	bne     branch_223212c
	cmp     r0, #0x1a
	bne     branch_223212c
	mov     r0, #0xd1
	mov     r1, #0x31
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	b       branch_2232172
@ 0x223212c

.thumb
branch_223212c: @ 223212c :thumb
	cmp     r4, #0x10
	bne     branch_2232144
	cmp     r0, #0x1
	bne     branch_2232144
	cmp     r1, #0x0
	ble     branch_2232144
	mov     r0, #0xd1
	mov     r1, #0x16
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, r6
	pop     {r3-r7,pc}
@ 0x2232144

.thumb
branch_2232144: @ 2232144 :thumb
	bl      0x21d2388
	mov     r1, r0
	mov     r0, r5
	bl      Function_2232dc0
	mov     r0, r5
	mov     r1, #0x12
	mov     r2, #0x0
	bl      Function_2232b58
	mov     r0, #0xd1
	mov     r1, #0x1d
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, r5
	mov     r1, #0x10
	bl      Function_2232e58
	bl      Function_2038378
	mov     r0, r6
	pop     {r3-r7,pc}
@ 0x2232172

.thumb
branch_2232172: @ 2232172 :thumb
	bl      0x21d2388
	mov     r1, r0
	mov     r0, r5
	bl      Function_2232dc0
	mov     r0, r5
	mov     r1, #0xb
	mov     r2, #0x0
	bl      Function_2232b58
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_20329e0
	mov     r0, #0xd1
	mov     r1, #0x31
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r1, #0x1e
	add     r0, #0x14
	str     r1, [r5, r0]
	mov     r0, r6
	pop     {r3-r7,pc}
@ 0x22321a6


.align 2, 0


.thumb
Function_22321a8: @ 22321a8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_20380e4
	cmp     r0, #0x3
	blt     branch_22321d4
	mov     r1, #0xdb
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	mov     r0, r4
	bl      Function_2232dc0
	mov     r0, r4
	mov     r1, #0x12
	mov     r2, #0x0
	bl      Function_2232b58
	mov     r0, #0xd1
	mov     r1, #0x1b
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	b       branch_22321e8
@ 0x22321d4

.thumb
branch_22321d4: @ 22321d4 :thumb
	bl      Function_20383e8
	cmp     r0, #0x0
	beq     branch_22321e4
	mov     r0, r4
	bl      Function_222f6ec
	b       branch_22321e8
@ 0x22321e4

.thumb
branch_22321e4: @ 22321e4 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22321e8

.thumb
branch_22321e8: @ 22321e8 :thumb
	mov     r0, #0xe
	mov     r1, #0x0
	lsl     r0, r0, #6
	str     r1, [r4, r0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x22321f4

.thumb
Function_22321f4: @ 22321f4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_20380e4
	cmp     r0, #0x4
	bge     branch_2232214
	bl      Function_2038284
	cmp     r0, #0x0
	bne     branch_2232214
	mov     r0, #0x0
	bl      Function_2035d78
	cmp     r0, #0x0
	bne     branch_223224e
.thumb
branch_2232214: @ 2232214 :thumb
	mov     r1, #0xe
	lsl     r1, r1, #6
	ldr     r0, [r5, r1]
	cmp     r0, #0x0
	beq     branch_223222a
	mov     r0, r5
	mov     r1, #0x65
	mov     r2, #0x0
	bl      Function_2232b58
	b       branch_223223e
@ 0x223222a

.thumb
branch_223222a: @ 223222a :thumb
	sub     r1, #0x14
	ldr     r1, [r5, r1]
	mov     r0, r5
	bl      Function_2232dc0
	mov     r0, r5
	mov     r1, #0x12
	mov     r2, #0x0
	bl      Function_2232b58
.thumb
branch_223223e: @ 223223e :thumb
	mov     r0, #0xe
	mov     r1, #0x0
	lsl     r0, r0, #6
	str     r1, [r5, r0]
	mov     r1, #0x1b
	sub     r0, #0x3c
	str     r1, [r5, r0]
	b       branch_2232296
@ 0x223224e

.thumb
branch_223224e: @ 223224e :thumb
	mov     r0, r5
	bl      Function_22321a8
	cmp     r0, #0x0
	bne     branch_2232296
	mov     r0, #0xd6
	lsl     r0, r0, #2
	ldr     r1, [r5, r0]
	cmp     r1, #0x0
	bne     branch_2232286
	mov     r0, #0xd
	bl      Function_2036540
	cmp     r0, #0x0
	beq     branch_2232296
	bl      Function_20365f4
	mov     r0, #0xe
	bl      Function_20364f0
	mov     r0, #0xe
	mov     r1, #0x0
	lsl     r0, r0, #6
	str     r1, [r5, r0]
	mov     r1, #0x32
	sub     r0, #0x3c
	str     r1, [r5, r0]
	b       branch_2232296
@ 0x2232286

.thumb
branch_2232286: @ 2232286 :thumb
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r5, r0]
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	bne     branch_2232296
	mov     r0, #0xd
	bl      Function_20364f0
.thumb
branch_2232296: @ 2232296 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x223229a


.align 2, 0


.thumb
Function_223229c: @ 223229c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_22321a8
	cmp     r0, #0x0
	bne     branch_22322d6
	mov     r0, #0xe
	bl      Function_2036540
	cmp     r0, #0x0
	beq     branch_22322d6
	ldr     r1, [r5, #0x4]
	mov     r0, r5
	bl      Function_222dd20
	add     r1, sp, #0x0
	strh    r0, [r1, #0x0]
	bl      Function_203608c
	add     r1, sp, #0x0
	bl      Function_2036614
	cmp     r0, #0x0
	beq     branch_22322d6
	mov     r0, #0xd1
	mov     r1, #0x33
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_22322d6: @ 22322d6 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x22322da


.align 2, 0


.thumb
Function_22322dc: @ 22322dc :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r7, r1
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_22322ee
	mov     r0, #0x1
	b       branch_22322f0
@ 0x22322ee

.thumb
branch_22322ee: @ 22322ee :thumb
	mov     r0, #0x0
.thumb
branch_22322f0: @ 22322f0 :thumb
	bl      Function_203664c
	mov     r4, r0
	mov     r0, r5
	bl      Function_22321a8
	cmp     r0, #0x0
	bne     branch_2232352
	cmp     r4, #0x0
	beq     branch_2232352
	ldr     r1, [r5, #0x4]
	mov     r0, r5
	bl      Function_222dd20
	lsl     r0, r0, #16
	lsr     r6, r0, #16
	mov     r0, r6
	bl      Function_222ded4
	lsl     r0, r0, #16
	lsr     r1, r0, #16
	ldrh    r0, [r4, #0x0]
	cmp     r0, r1
	beq     branch_2232324
	cmp     r0, r6
	bne     branch_2232334
.thumb
branch_2232324: @ 2232324 :thumb
	mov     r0, #0xf
	bl      Function_20364f0
	mov     r0, #0xd1
	mov     r1, #0x34
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	b       branch_2232352
@ 0x2232334

.thumb
branch_2232334: @ 2232334 :thumb
	bl      0x21d2388
	mov     r1, r0
	mov     r0, r5
	bl      Function_2232dc0
	mov     r0, r5
	mov     r1, #0x10
	mov     r2, #0x0
	bl      Function_2232b58
	mov     r0, #0xd1
	mov     r1, #0x1b
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_2232352: @ 2232352 :thumb
	mov     r0, r7
	pop     {r3-r7,pc}
@ 0x2232356


.align 2, 0


.thumb
Function_2232358: @ 2232358 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_22321a8
	cmp     r0, #0x0
	bne     branch_223238a
	mov     r0, #0xf
	bl      Function_2036540
	cmp     r0, #0x0
	beq     branch_223238a
	bl      Function_2032ac0
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_20388f4
	mov     r0, #0x12
	bl      Function_20364f0
	mov     r0, #0xd1
	mov     r1, #0x35
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_223238a: @ 223238a :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x223238e


.align 2, 0


.thumb
Function_2232390: @ 2232390 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_22323aa
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x22323aa

.thumb
branch_22323aa: @ 22323aa :thumb
	mov     r0, #0xb3
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_201a7cc
	cmp     r0, #0x0
	bne     branch_22323bc
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x22323bc

.thumb
branch_22323bc: @ 22323bc :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22323c0

.thumb
Function_22323c0: @ 22323c0 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x2c
	mov     r5, r0
	mov     r4, r1
	bl      Function_22321a8
	cmp     r0, #0x0
	bne     branch_22323e4
	mov     r0, #0x12
	bl      Function_2036540
	cmp     r0, #0x0
	beq     branch_22323e4
	mov     r0, r5
	bl      Function_2232390
	cmp     r0, #0x1
	beq     branch_22323e6
.thumb
branch_22323e4: @ 22323e4 :thumb
	b       branch_223252a
@ 0x22323e6

.thumb
branch_22323e6: @ 22323e6 :thumb
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	add     r1, sp, #0xc
	mov     r2, #0x36
	bl      Function_20391dc
	mov     r0, r5
	bl      Function_2232dfc
	bl      0x21d2388
	mov     r1, r0
	mov     r0, r5
	bl      Function_2234fa8
	mov     r1, r0
	mov     r0, r5
	bl      Function_222dd20
	mov     r4, r0
	cmp     r4, #0xf
	beq     branch_2232418
	cmp     r4, #0x8
	bne     branch_2232424
.thumb
branch_2232418: @ 2232418 :thumb
	mov     r0, #0xd2
	mov     r1, #0x7
	lsl     r0, r0, #2
	mov     r4, #0x8
	str     r1, [r5, r0]
	b       branch_22324fc
@ 0x2232424

.thumb
branch_2232424: @ 2232424 :thumb
	sub     r0, #0x12
	cmp     r0, #0x1
	bhi     branch_2232436
	mov     r0, #0xd2
	mov     r1, #0xb
	lsl     r0, r0, #2
	mov     r4, #0x12
	str     r1, [r5, r0]
	b       branch_22324fc
@ 0x2232436

.thumb
branch_2232436: @ 2232436 :thumb
	mov     r0, r4
	sub     r0, #0x14
	cmp     r0, #0x1
	bhi     branch_223244a
	mov     r0, #0xd2
	mov     r1, #0xc
	lsl     r0, r0, #2
	mov     r4, #0x14
	str     r1, [r5, r0]
	b       branch_22324fc
@ 0x223244a

.thumb
branch_223244a: @ 223244a :thumb
	mov     r0, r4
	sub     r0, #0x16
	cmp     r0, #0x1
	bhi     branch_223245e
	mov     r0, #0xd2
	mov     r1, #0xd
	lsl     r0, r0, #2
	mov     r4, #0x16
	str     r1, [r5, r0]
	b       branch_22324fc
@ 0x223245e

.thumb
branch_223245e: @ 223245e :thumb
	mov     r0, r4
	sub     r0, #0x18
	cmp     r0, #0x1
	bhi     branch_2232472
	mov     r0, #0xd2
	mov     r1, #0xe
	lsl     r0, r0, #2
	mov     r4, #0x18
	str     r1, [r5, r0]
	b       branch_22324fc
@ 0x2232472

.thumb
branch_2232472: @ 2232472 :thumb
	mov     r0, r4
	sub     r0, #0x1a
	cmp     r0, #0x1
	bhi     branch_2232486
	mov     r0, #0xd2
	mov     r1, #0xf
	lsl     r0, r0, #2
	mov     r4, #0x1a
	str     r1, [r5, r0]
	b       branch_22324fc
@ 0x2232486

.thumb
branch_2232486: @ 2232486 :thumb
	cmp     r4, #0x9
	beq     branch_223248e
	cmp     r4, #0x2
	bne     branch_223249a
.thumb
branch_223248e: @ 223248e :thumb
	mov     r0, #0xd2
	mov     r1, #0x1
	lsl     r0, r0, #2
	mov     r4, #0x2
	str     r1, [r5, r0]
	b       branch_22324fc
@ 0x223249a

.thumb
branch_223249a: @ 223249a :thumb
	cmp     r4, #0xa
	beq     branch_22324a2
	cmp     r4, #0x3
	bne     branch_22324ae
.thumb
branch_22324a2: @ 22324a2 :thumb
	mov     r0, #0xd2
	mov     r1, #0x2
	lsl     r0, r0, #2
	mov     r4, #0x3
	str     r1, [r5, r0]
	b       branch_22324fc
@ 0x22324ae

.thumb
branch_22324ae: @ 22324ae :thumb
	cmp     r4, #0xb
	beq     branch_22324b6
	cmp     r4, #0x4
	bne     branch_22324c2
.thumb
branch_22324b6: @ 22324b6 :thumb
	mov     r0, #0xd2
	mov     r1, #0x3
	lsl     r0, r0, #2
	mov     r4, #0x4
	str     r1, [r5, r0]
	b       branch_22324fc
@ 0x22324c2

.thumb
branch_22324c2: @ 22324c2 :thumb
	cmp     r4, #0xc
	beq     branch_22324ca
	cmp     r4, #0x5
	bne     branch_22324d6
.thumb
branch_22324ca: @ 22324ca :thumb
	mov     r0, #0xd2
	mov     r1, #0x4
	lsl     r0, r0, #2
	mov     r4, #0x5
	str     r1, [r5, r0]
	b       branch_22324fc
@ 0x22324d6

.thumb
branch_22324d6: @ 22324d6 :thumb
	cmp     r4, #0xd
	beq     branch_22324de
	cmp     r4, #0x6
	bne     branch_22324ea
.thumb
branch_22324de: @ 22324de :thumb
	mov     r0, #0xd2
	mov     r1, #0x5
	lsl     r0, r0, #2
	mov     r4, #0x6
	str     r1, [r5, r0]
	b       branch_22324fc
@ 0x22324ea

.thumb
branch_22324ea: @ 22324ea :thumb
	cmp     r4, #0xe
	beq     branch_22324f2
	cmp     r4, #0x7
	bne     branch_22324fc
.thumb
branch_22324f2: @ 22324f2 :thumb
	mov     r0, #0xd2
	mov     r1, #0x6
	lsl     r0, r0, #2
	mov     r4, #0x7
	str     r1, [r5, r0]
.thumb
branch_22324fc: @ 22324fc :thumb
	bl      0x21d2388
	mov     r1, r0
	mov     r0, r5
	bl      Function_2231a74
	mov     r0, r5
	mov     r1, r4
	bl      Function_2232e58
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x36
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      Function_200f174
	mov     r4, #0x2
.thumb
branch_223252a: @ 223252a :thumb
	mov     r0, r4
	add     sp, #0x2c
	pop     {r4,r5,pc}
@ 0x2232530

.thumb
Function_2232530: @ 2232530 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x57
	lsl     r0, r0, #2
	mov     r4, r1
	ldr     r0, [r5, r0]
	mov     r1, #0x3
	bl      Function_2019ebc
	mov     r0, #0x36
	mov     r1, #0x0
	lsl     r0, r0, #4
	strb    r1, [r5, r0]
	bl      Function_222ebb8
	mov     r1, #0xd1
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2232558

.thumb
Function_2232558: @ 2232558 :thumb
	mov     r2, #0xd1
	mov     r3, #0x37
	lsl     r2, r2, #2
	str     r3, [r0, r2]
	mov     r0, r1
	bx      lr
@ 0x2232564

.thumb
Function_2232564: @ 2232564 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	mov     r4, r1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	beq     branch_2232580
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2232580

.thumb
branch_2232580: @ 2232580 :thumb
	mov     r0, r5
	bl      Function_223012c
	cmp     r0, #0x0
	beq     branch_2232592
	mov     r0, #0xd1
	mov     r1, #0x38
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_2232592: @ 2232592 :thumb
	ldr     r0, [pc, #0x14] @ 0x22325a8, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_22325a4
	mov     r0, #0xd1
	mov     r1, #0x38
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_22325a4: @ 22325a4 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x22325a8

.word 0x21bf67c @ 0x22325a8
.thumb
Function_22325ac: @ 22325ac :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_2232dfc
	mov     r0, #0xd1
	mov     r1, #0x13
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x22325c2


.align 2, 0


.thumb
Function_22325c4: @ 22325c4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	mov     r4, r1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_22325fe
	mov     r2, #0x57
	mov     r0, #0x36
	lsl     r2, r2, #2
	str     r0, [sp, #0x0]
	ldr     r0, [r5, r2]
	ldr     r1, [pc, #0x1c] @ 0x2232604, (=0x223894c)
	add     r2, #0x7d
	mov     r3, #0xb
	bl      Function_2002100
	mov     r1, #0x61
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0xd1
	mov     r1, #0x3a
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_22325fe: @ 22325fe :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2232602


.align 2


.word 0x223894c @ 0x2232604
.thumb
Function_2232608: @ 2232608 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, #0x61
	lsl     r0, r0, #2
	mov     r6, r1
	ldr     r0, [r5, r0]
	mov     r1, #0x36
	bl      Function_2002114
	mov     r4, r0
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	beq     branch_2232632
	mov     r0, r6
	pop     {r4-r6,pc}
@ 0x2232632

.thumb
branch_2232632: @ 2232632 :thumb
	mov     r0, r5
	bl      Function_2230140
	cmp     r0, #0x0
	beq     branch_2232654
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r4, r0
	bne     branch_2232650
	mov     r0, #0x61
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x36
	bl      Function_2002154
.thumb
branch_2232650: @ 2232650 :thumb
	mov     r4, #0x1
	mvn     r4, r4
.thumb
branch_2232654: @ 2232654 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r4, r0
	bne     branch_2232660
	mov     r0, r6
	pop     {r4-r6,pc}
@ 0x2232660

.thumb
branch_2232660: @ 2232660 :thumb
	cmp     r4, #0x0
	bne     branch_223267e
	mov     r0, r5
	mov     r1, #0x1a
	mov     r2, #0x1
	bl      Function_2232b58
	mov     r0, #0xd1
	mov     r1, #0x3b
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r1, #0x1
	add     r0, #0x14
	str     r1, [r5, r0]
	b       branch_2232692
@ 0x223267e

.thumb
branch_223267e: @ 223267e :thumb
	mov     r0, r5
	bl      Function_2232dfc
	mov     r0, #0xd1
	mov     r1, #0x13
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, r5
	bl      Function_223503c
.thumb
branch_2232692: @ 2232692 :thumb
	mov     r0, r6
	pop     {r4-r6,pc}
@ 0x2232696


.align 2, 0


.thumb
Function_2232698: @ 2232698 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	mov     r4, r1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	beq     branch_22326b4
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x22326b4

.thumb
branch_22326b4: @ 22326b4 :thumb
	mov     r0, #0xd6
	lsl     r0, r0, #2
	ldr     r1, [r5, r0]
	cmp     r1, #0x1
	bne     branch_22326c6
	mov     r1, #0x0
	str     r1, [r5, r0]
	bl      Function_2038350
.thumb
branch_22326c6: @ 22326c6 :thumb
	bl      Function_2036780
	cmp     r0, #0x0
	bne     branch_22326ec
	ldr     r0, [r5, #0x0]
	bl      Function_202b0f8
	mov     r0, r5
	mov     r1, #0x1b
	mov     r2, #0x1
	bl      Function_2232b58
	mov     r0, #0xd1
	mov     r1, #0x3c
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r1, #0x1e
	add     r0, #0x14
	str     r1, [r5, r0]
.thumb
branch_22326ec: @ 22326ec :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x22326f0

.thumb
Function_22326f0: @ 22326f0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	mov     r4, r1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	beq     branch_223270c
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x223270c

.thumb
branch_223270c: @ 223270c :thumb
	mov     r1, #0xd6
	lsl     r1, r1, #2
	ldr     r0, [r5, r1]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	cmp     r0, #0x0
	bne     branch_2232730
	mov     r0, r1
	mov     r2, #0x8
	sub     r0, #0x10
	str     r2, [r5, r0]
	mov     r0, #0x22
	sub     r1, #0x14
	str     r0, [r5, r1]
	mov     r0, r5
	bl      Function_2232dfc
.thumb
branch_2232730: @ 2232730 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2232734

.thumb
Function_2232734: @ 2232734 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x10
	mov     r4, r1
	bl      Function_2036540
	cmp     r0, #0x0
	bne     branch_2232748
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2232748

.thumb
branch_2232748: @ 2232748 :thumb
	mov     r0, #0x0
	mov     r1, #0x1
	bl      Function_20388f4
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_2232784
	mov     r2, #0x57
	mov     r0, #0x36
	lsl     r2, r2, #2
	str     r0, [sp, #0x0]
	ldr     r0, [r5, r2]
	ldr     r1, [pc, #0x18] @ 0x2232788, (=0x223894c)
	add     r2, #0x7d
	mov     r3, #0xb
	bl      Function_2002100
	mov     r1, #0x61
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0xd1
	mov     r1, #0x3e
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_2232784: @ 2232784 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2232788

.word 0x223894c @ 0x2232788
.thumb
Function_223278c: @ 223278c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	mov     r4, r1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	beq     branch_22327a8
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x22327a8

.thumb
branch_22327a8: @ 22327a8 :thumb
	bl      Function_2038294
	cmp     r0, #0x0
	bne     branch_22327c0
	bl      Function_2038284
	cmp     r0, #0x0
	bne     branch_22327c0
	bl      Function_20380e4
	cmp     r0, #0x3
	blt     branch_22327e0
.thumb
branch_22327c0: @ 22327c0 :thumb
	mov     r0, #0x61
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x36
	bl      Function_2002154
	mov     r0, r5
	mov     r1, #0x65
	mov     r2, #0x0
	bl      Function_2232b58
	mov     r0, #0xd1
	mov     r1, #0x1c
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	b       branch_2232886
@ 0x22327e0

.thumb
branch_22327e0: @ 22327e0 :thumb
	bl      Function_20383e8
	cmp     r0, #0x0
	beq     branch_22327fc
	mov     r0, #0x61
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x36
	bl      Function_2002154
	mov     r0, r5
	bl      Function_222f6ec
	b       branch_2232886
@ 0x22327fc

.thumb
branch_22327fc: @ 22327fc :thumb
	mov     r0, #0x61
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x36
	bl      Function_2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	bne     branch_2232814
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2232814

.thumb
branch_2232814: @ 2232814 :thumb
	cmp     r0, #0x0
	bne     branch_223285a
	mov     r0, r5
	mov     r1, #0x8a
	mov     r2, #0x0
	bl      Function_2232b58
	mov     r0, #0x62
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_2232830
	bl      ErrorHandling
.thumb
branch_2232830: @ 2232830 :thumb
	mov     r1, #0xb3
	lsl     r1, r1, #2
	add     r0, r5, r1
	sub     r1, #0xea
	bl      Function_200e7fc
	mov     r1, #0x62
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r1, #0xe
	mov     r0, #0x1
	lsl     r1, r1, #6
	str     r0, [r5, r1]
	mov     r0, r1
	mov     r2, #0x31
	sub     r0, #0x3c
	str     r2, [r5, r0]
	mov     r0, #0x1e
	sub     r1, #0x28
	str     r0, [r5, r1]
	b       branch_2232876
@ 0x223285a

.thumb
branch_223285a: @ 223285a :thumb
	mov     r0, r5
	bl      Function_2232dfc
	bl      Function_2032a70
	bl      Function_20383d4
	mov     r0, #0xd6
	mov     r1, #0x14
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r1, #0x41
	sub     r0, #0x14
	str     r1, [r5, r0]
.thumb
branch_2232876: @ 2232876 :thumb
	bl      Function_20388e8
	mov     r1, r0
	str     r0, [r5, #0x4]
	add     r1, #0x22
	ldrb    r1, [r1, #0x0]
	add     r0, #0x21
	strb    r1, [r0, #0x0]
.thumb
branch_2232886: @ 2232886 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x223288a


.align 2, 0


.thumb
Function_223288c: @ 223288c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r0, #0xe2
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r6, r1
	bl      Function_2235254
	mov     r4, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_222e8d4
	cmp     r0, #0x0
	bne     branch_22328c8
	mov     r0, r5
	.hword  0x1e61 @ sub r1, r4, #0x1
	bl      Function_2232dc0
	mov     r0, r5
	mov     r1, #0x10
	mov     r2, #0x0
	bl      Function_2232b58
	mov     r0, #0xd1
	mov     r1, #0x1d
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, r6
	pop     {r3-r7,pc}
@ 0x22328c8

.thumb
branch_22328c8: @ 22328c8 :thumb
	mov     r0, r5
	.hword  0x1e61 @ sub r1, r4, #0x1
	bl      Function_2234fa8
	mov     r7, r0
	mov     r0, r5
	mov     r1, r7
	bl      Function_222dd20
	ldr     r2, [pc, #0x68] @ 0x2232944, (=0x37a)
	add     r7, #0x21
	ldrh    r3, [r5, r2]
	ldrb    r1, [r7, #0x0]
	cmp     r3, r0
	bne     branch_22328ee
	add     r0, r2, #0x2
	ldrh    r0, [r5, r0]
	cmp     r0, r1
	beq     branch_223290c
.thumb
branch_22328ee: @ 22328ee :thumb
	mov     r0, r5
	.hword  0x1e61 @ sub r1, r4, #0x1
	bl      Function_2232dc0
	mov     r0, r5
	mov     r1, #0x10
	mov     r2, #0x0
	bl      Function_2232b58
	mov     r0, #0xd1
	mov     r1, #0x1d
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, r6
	pop     {r3-r7,pc}
@ 0x223290c

.thumb
branch_223290c: @ 223290c :thumb
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_2232940
	mov     r2, #0x57
	mov     r0, #0x36
	lsl     r2, r2, #2
	str     r0, [sp, #0x0]
	ldr     r0, [r5, r2]
	ldr     r1, [pc, #0x1c] @ 0x2232948, (=0x223894c)
	add     r2, #0x7d
	mov     r3, #0xb
	bl      Function_2002100
	mov     r1, #0x61
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0xd1
	mov     r1, #0x40
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_2232940: @ 2232940 :thumb
	mov     r0, r6
	pop     {r3-r7,pc}
@ 0x2232944

.word 0x37a @ 0x2232944
.word 0x223894c @ 0x2232948
.thumb
Function_223294c: @ 223294c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r0, #0xe2
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r4, r1
	bl      Function_2235254
	mov     r6, r0
	mov     r0, r5
	mov     r1, r6
	bl      Function_222e8d4
	cmp     r0, #0x0
	bne     branch_2232994
	mov     r0, #0x61
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x36
	bl      Function_2002154
	mov     r0, r5
	.hword  0x1e71 @ sub r1, r6, #0x1
	bl      Function_2232dc0
	mov     r0, r5
	mov     r1, #0x10
	mov     r2, #0x0
	bl      Function_2232b58
	mov     r0, #0xd1
	mov     r1, #0x1d
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x2232994

.thumb
branch_2232994: @ 2232994 :thumb
	mov     r0, r5
	.hword  0x1e71 @ sub r1, r6, #0x1
	bl      Function_2234fa8
	mov     r7, r0
	mov     r0, r5
	mov     r1, r7
	bl      Function_222dd20
	ldr     r2, [pc, #0x174] @ 0x2232b1c, (=0x37a)
	add     r7, #0x21
	ldrh    r3, [r5, r2]
	ldrb    r1, [r7, #0x0]
	cmp     r3, r0
	bne     branch_22329ba
	add     r0, r2, #0x2
	ldrh    r0, [r5, r0]
	cmp     r0, r1
	beq     branch_22329e4
.thumb
branch_22329ba: @ 22329ba :thumb
	mov     r0, #0x61
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x36
	bl      Function_2002154
	mov     r0, r5
	.hword  0x1e71 @ sub r1, r6, #0x1
	bl      Function_2232dc0
	mov     r0, r5
	mov     r1, #0x10
	mov     r2, #0x0
	bl      Function_2232b58
	mov     r0, #0xd1
	mov     r1, #0x1d
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x22329e4

.thumb
branch_22329e4: @ 22329e4 :thumb
	bl      Function_20380e4
	cmp     r0, #0x3
	blt     branch_2232a12
	mov     r0, #0x61
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x36
	bl      Function_2002154
	mov     r0, r5
	mov     r1, #0x12
	mov     r2, #0x0
	bl      Function_2232b58
	bl      Function_2038378
	mov     r0, #0xd1
	mov     r1, #0x1d
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x2232a12

.thumb
branch_2232a12: @ 2232a12 :thumb
	bl      Function_20383e8
	cmp     r0, #0x0
	beq     branch_2232a2e
	mov     r0, #0x61
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x36
	bl      Function_2002154
	mov     r0, r5
	bl      Function_222f6ec
	b       branch_2232b18
@ 0x2232a2e

.thumb
branch_2232a2e: @ 2232a2e :thumb
	mov     r0, #0x61
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x36
	bl      Function_2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	bne     branch_2232a46
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x2232a46

.thumb
branch_2232a46: @ 2232a46 :thumb
	cmp     r0, #0x0
	bne     branch_2232af2
	ldr     r0, [pc, #0xd0] @ 0x2232b1c, (=0x37a)
	ldrh    r0, [r5, r0]
	bl      Function_222ded4
	mov     r6, r0
	cmp     r6, #0x1d
	beq     branch_2232af2
	ldr     r0, [pc, #0xc4] @ 0x2232b20, (=0x37e)
	ldrh    r0, [r5, r0]
	.hword  0x1e40 @ sub r0, r0, #0x1
	bl      Function_2234fc4
	cmp     r0, #0x6
	bne     branch_2232af2
	mov     r0, r5
	bl      Function_2232edc
	ldr     r1, [pc, #0xb0] @ 0x2232b20, (=0x37e)
	mov     r0, r5
	ldrh    r1, [r5, r1]
	mov     r2, r6
	.hword  0x1e49 @ sub r1, r1, #0x1
	bl      Function_2234fcc
	cmp     r0, #0x0
	beq     branch_2232af2
	mov     r0, #0xcf
	ldr     r1, [pc, #0xa0] @ 0x2232b24, (=0x708)
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, r6
	bl      Function_222dfd4
	mov     r0, #0x0
	bl      Function_203632c
	mov     r0, r5
	mov     r1, r6
	bl      Function_2232e58
	ldr     r1, [pc, #0x84] @ 0x2232b20, (=0x37e)
	mov     r0, r5
	ldrh    r1, [r5, r1]
	.hword  0x1e49 @ sub r1, r1, #0x1
	bl      Function_2232dc0
	mov     r0, r5
	mov     r1, #0x11
	mov     r2, #0x0
	bl      Function_2232b58
	mov     r0, #0x62
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_2232abe
	bl      ErrorHandling
.thumb
branch_2232abe: @ 2232abe :thumb
	mov     r1, #0xb3
	lsl     r1, r1, #2
	add     r0, r5, r1
	sub     r1, #0xea
	bl      Function_200e7fc
	mov     r1, #0x62
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	cmp     r6, #0x1
	beq     branch_2232ae0
	mov     r0, #0xd1
	mov     r1, #0x2d
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x2232ae0

.thumb
branch_2232ae0: @ 2232ae0 :thumb
	mov     r0, #0xcf
	ldr     r1, [pc, #0x40] @ 0x2232b24, (=0x708)
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r1, #0x15
	add     r0, #0x8
	str     r1, [r5, r0]
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x2232af2

.thumb
branch_2232af2: @ 2232af2 :thumb
	mov     r0, r5
	bl      Function_2232dfc
	mov     r0, r5
	mov     r1, #0x10
	bl      Function_2232e58
	mov     r0, r5
	bl      Function_2232f30
	mov     r0, r5
	bl      Function_222fd70
	mov     r0, #0xd1
	mov     r1, #0x13
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x2232b18

.thumb
branch_2232b18: @ 2232b18 :thumb
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x2232b1c

.word 0x37a @ 0x2232b1c
.word 0x37e @ 0x2232b20
.word 0x708 @ 0x2232b24
.thumb
Function_2232b28: @ 2232b28 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r1
	bl      Function_2036780
	cmp     r0, #0x0
	bne     branch_2232b50
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x36
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      Function_200f174
	mov     r4, #0x2
.thumb
branch_2232b50: @ 2232b50 :thumb
	mov     r0, r4
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2232b56


.align 2, 0


.thumb
Function_2232b58: @ 2232b58 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r4, r1
	mov     r6, r2
	bl      LoadPlayerDataAdress
	bl      Function_2027ac0
	mov     r7, r0
	mov     r0, r5
	bl      Function_2232f50
	mov     r0, #0xbf
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a7cc
	cmp     r0, #0x0
	beq     branch_2232b9c
	mov     r0, #0xbf
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x0
	bl      Function_200e084
	mov     r0, #0xbf
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a8fc
.thumb
branch_2232b9c: @ 2232b9c :thumb
	mov     r0, #0xb3
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a7cc
	cmp     r0, #0x0
	beq     branch_2232bc0
	mov     r0, #0xb3
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x0
	bl      Function_200e084
	mov     r0, #0xb3
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a8fc
.thumb
branch_2232bc0: @ 2232bc0 :thumb
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	cmp     r0, #0x8
	beq     branch_2232bec
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	beq     branch_2232bec
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d730
	mov     r0, #0x6
	mov     r1, #0x8
	lsl     r0, r0, #6
	str     r1, [r5, r0]
.thumb
branch_2232bec: @ 2232bec :thumb
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0xc
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0xa4] @ 0x2232ca4, (=0x12d)
	mov     r1, #0xb3
	str     r0, [sp, #0x10]
	add     r0, #0x2f
	lsl     r1, r1, #2
	mov     r2, #0x2
	ldr     r0, [r5, r0]
	add     r1, r5, r1
	mov     r3, r2
	bl      Function_201a7e8
	cmp     r6, #0x0
	beq     branch_2232c28
	mov     r2, #0x5b
	lsl     r2, r2, #2
	ldr     r0, [r5, r2]
	.hword  0x1d12 @ add r2, r2, #0x4
	ldr     r2, [r5, r2]
	mov     r1, r4
	bl      Function_200b1b8
	b       branch_2232c38
@ 0x2232c28

.thumb
branch_2232c28: @ 2232c28 :thumb
	mov     r2, #0x5a
	lsl     r2, r2, #2
	ldr     r0, [r5, r2]
	add     r2, #0x8
	ldr     r2, [r5, r2]
	mov     r1, r4
	bl      Function_200b1b8
.thumb
branch_2232c38: @ 2232c38 :thumb
	mov     r2, #0x59
	lsl     r2, r2, #2
	mov     r1, r2
	ldr     r0, [r5, r2]
	add     r1, #0x10
	add     r2, #0xc
	ldr     r1, [r5, r1]
	ldr     r2, [r5, r2]
	bl      Function_200c388
	mov     r0, #0xb3
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0xf
	bl      Function_201ada4
	mov     r2, #0xb3
	lsl     r2, r2, #2
	add     r0, r5, r2
	mov     r1, #0x1
	sub     r2, #0xea
	mov     r3, #0xa
	bl      Function_200e060
	mov     r0, #0x1
	bl      Function_2002ac8
	mov     r0, #0x0
	bl      Function_2002ae4
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r7, [sp, #0x4]
	mov     r2, #0x5d
	mov     r0, #0xb3
	lsl     r0, r0, #2
	str     r3, [sp, #0x8]
	lsl     r2, r2, #2
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r1, #0x1
	bl      Function_201d738
	mov     r1, #0x6
	lsl     r1, r1, #6
	str     r0, [r5, r1]
	mov     r0, #0xb3
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a9a4
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2232ca2


.align 2


.word 0x12d @ 0x2232ca4
.thumb
Function_2232ca8: @ 2232ca8 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r4, r1
	bl      Function_2232f50
	mov     r0, #0xbf
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a7cc
	cmp     r0, #0x0
	beq     branch_2232cd8
	mov     r0, #0xbf
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x0
	bl      Function_200e084
	mov     r0, #0xbf
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a8fc
.thumb
branch_2232cd8: @ 2232cd8 :thumb
	mov     r0, #0xb3
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a7cc
	cmp     r0, #0x0
	beq     branch_2232cfc
	mov     r0, #0xb3
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x0
	bl      Function_200e084
	mov     r0, #0xb3
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a8fc
.thumb
branch_2232cfc: @ 2232cfc :thumb
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	cmp     r0, #0x8
	beq     branch_2232d28
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	beq     branch_2232d28
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d730
	mov     r0, #0x6
	mov     r1, #0x8
	lsl     r0, r0, #6
	str     r1, [r5, r0]
.thumb
branch_2232d28: @ 2232d28 :thumb
	mov     r3, #0x4
	str     r3, [sp, #0x0]
	mov     r0, #0x17
	str     r0, [sp, #0x4]
	mov     r0, #0x10
	str     r0, [sp, #0x8]
	mov     r0, #0xc
	str     r0, [sp, #0xc]
	mov     r0, #0x69
	str     r0, [sp, #0x10]
	add     r0, #0xf3
	mov     r1, #0xbf
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	add     r1, r5, r1
	mov     r2, #0x2
	bl      Function_201a7e8
	mov     r2, #0x5b
	lsl     r2, r2, #2
	ldr     r0, [r5, r2]
	.hword  0x1d12 @ add r2, r2, #0x4
	ldr     r2, [r5, r2]
	mov     r1, r4
	bl      Function_200b1b8
	mov     r2, #0x59
	lsl     r2, r2, #2
	mov     r1, r2
	ldr     r0, [r5, r2]
	add     r1, #0x10
	add     r2, #0xc
	ldr     r1, [r5, r1]
	ldr     r2, [r5, r2]
	bl      Function_200c388
	mov     r0, #0xbf
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0xf
	bl      Function_201ada4
	mov     r0, #0xbf
	lsl     r0, r0, #2
	ldr     r2, [pc, #0x38] @ 0x2232dbc, (=0x1d9)
	add     r0, r5, r0
	mov     r1, #0x1
	mov     r3, #0xb
	bl      Function_200dc48
	mov     r3, #0x0
	mov     r0, #0xbf
	lsl     r0, r0, #2
	str     r3, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	str     r3, [sp, #0x8]
	add     r2, #0x75
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r1, #0x1
	bl      Function_201d738
	mov     r1, #0x6
	lsl     r1, r1, #6
	str     r0, [r5, r1]
	mov     r0, #0xbf
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a9a4
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x2232dba


.align 2


.word 0x1d9 @ 0x2232dbc
.thumb
Function_2232dc0: @ 2232dc0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, #0x0
	mov     r6, r1
	mvn     r0, r0
	cmp     r6, r0
	beq     branch_2232dfa
	mov     r0, #0x36
	bl      AllocTrainerData
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	mov     r1, r6
	bl      Function_202aef0
	mov     r1, r0
	mov     r0, r4
	bl      Function_2025ec0
	mov     r0, #0x59
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	mov     r2, r4
	bl      Function_200b498
	mov     r0, r4
	bl      free
.thumb
branch_2232dfa: @ 2232dfa :thumb
	pop     {r4-r6,pc}
@ 0x2232dfc

.thumb
Function_2232dfc: @ 2232dfc :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2232f50
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	cmp     r0, #0x8
	beq     branch_2232e30
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	beq     branch_2232e30
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d730
	mov     r0, #0x6
	mov     r1, #0x8
	lsl     r0, r0, #6
	str     r1, [r4, r0]
.thumb
branch_2232e30: @ 2232e30 :thumb
	mov     r0, #0xb3
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_201a7cc
	cmp     r0, #0x0
	beq     branch_2232e54
	mov     r0, #0xb3
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, #0x0
	bl      Function_200e084
	mov     r0, #0xb3
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_201a8fc
.thumb
branch_2232e54: @ 2232e54 :thumb
	pop     {r4,pc}
@ 0x2232e56


.align 2, 0


.thumb
Function_2232e58: @ 2232e58 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r2, [r4, #0x4]
	cmp     r2, #0x0
	beq     branch_2232e6e
	bl      Function_2232e70
	ldr     r0, [r4, #0x4]
	mov     r1, #0x24
	bl      0x21d222c
.thumb
branch_2232e6e: @ 2232e6e :thumb
	pop     {r4,pc}
@ 0x2232e70

.thumb
Function_2232e70: @ 2232e70 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	ldr     r1, [r5, #0x4]
	cmp     r1, #0x0
	beq     branch_2232eda
	bl      Function_222dd20
	cmp     r0, r4
	beq     branch_2232ed4
	ldr     r0, [r5, #0x4]
	strb    r4, [r0, #0x1b]
	mov     r0, r4
	bl      Function_222de40
	cmp     r0, #0x0
	bne     branch_2232ed4
	cmp     r4, #0x8
	beq     branch_2232ed4
	cmp     r4, #0x14
	beq     branch_2232ed4
	cmp     r4, #0x16
	beq     branch_2232ed4
	cmp     r4, #0x18
	beq     branch_2232ed4
	cmp     r4, #0x1a
	beq     branch_2232ed4
	cmp     r4, #0x12
	beq     branch_2232ed4
	cmp     r4, #0x1
	bne     branch_2232eb8
	mov     r0, #0x0
	mov     r1, #0x1e
	bl      Function_200564c
	b       branch_2232ed4
@ 0x2232eb8

.thumb
branch_2232eb8: @ 2232eb8 :thumb
	cmp     r4, #0x10
	bne     branch_2232ed4
	mov     r0, #0x0
	bl      0x21d2584
	bl      Function_2231a54
	cmp     r0, #0x1
	bne     branch_2232ed4
	mov     r0, #0x78
	mov     r1, #0x1e
	mov     r2, #0x1
	bl      Function_200560c
.thumb
branch_2232ed4: @ 2232ed4 :thumb
	mov     r0, r5
	bl      Function_222fd70
.thumb
branch_2232eda: @ 2232eda :thumb
	pop     {r3-r5,pc}
@ 0x2232edc

.thumb
Function_2232edc: @ 2232edc :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r2, [r4, #0x4]
	mov     r0, r2
	add     r0, #0x21
	ldrb    r1, [r0, #0x0]
	mov     r0, #0x1
	add     r2, #0x21
	sub     r0, r0, r1
	strb    r0, [r2, #0x0]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x24
	bl      0x21d222c
	ldr     r0, [r4, #0x4]
	add     r0, #0x21
	ldrb    r0, [r0, #0x0]
	pop     {r4,pc}
@ 0x2232f00

.thumb
Function_2232f00: @ 2232f00 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r2, [r4, #0x4]
	mov     r0, r2
	add     r0, #0x22
	ldrb    r1, [r0, #0x0]
	mov     r0, #0x1
	add     r2, #0x22
	sub     r0, r0, r1
	strb    r0, [r2, #0x0]
	ldr     r1, [r4, #0x4]
	mov     r0, r1
	add     r0, #0x22
	ldrb    r0, [r0, #0x0]
	add     r1, #0x21
	strb    r0, [r1, #0x0]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x24
	bl      0x21d222c
	ldr     r0, [r4, #0x4]
	add     r0, #0x22
	ldrb    r0, [r0, #0x0]
	pop     {r4,pc}
@ 0x2232f30

.thumb
Function_2232f30: @ 2232f30 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x4]
	mov     r0, r1
	add     r0, #0x22
	ldrb    r0, [r0, #0x0]
	add     r1, #0x21
	strb    r0, [r1, #0x0]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x24
	bl      0x21d222c
	ldr     r0, [r4, #0x4]
	add     r0, #0x22
	ldrb    r0, [r0, #0x0]
	pop     {r4,pc}
@ 0x2232f50

.thumb
Function_2232f50: @ 2232f50 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x62
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_2232f8e
	bl      Function_200ebc8
	mov     r0, #0x62
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r0, #0xb3
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_201a7cc
	cmp     r0, #0x0
	beq     branch_2232f8e
	mov     r0, #0xb3
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, #0x0
	bl      Function_200e084
	mov     r0, #0xb3
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_201a8fc
.thumb
branch_2232f8e: @ 2232f8e :thumb
	pop     {r4,pc}
@ 0x2232f90

.thumb
Function_2232f90: @ 2232f90 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_223324c
	mov     r0, #0xe2
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_2235370
	mov     r0, r5
	mov     r1, r4
	bl      Function_22336a4
	pop     {r3-r5,pc}
@ 0x2232fae


.align 2, 0


.thumb
Function_2232fb0: @ 2232fb0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	bl      Function_2233240
	cmp     r4, r0
	bne     branch_2232fc8
	mov     r0, r5
	mov     r1, r6
	bl      Function_2232f90
.thumb
branch_2232fc8: @ 2232fc8 :thumb
	pop     {r4-r6,pc}
@ 0x2232fca


.align 2, 0


.thumb
Function_2232fcc: @ 2232fcc :thumb
	ldr     r1, [pc, #0xc] @ 0x2232fdc, (=0xb64)
	ldr     r0, [r0, r1]
	cmp     r0, #0x0
	beq     branch_2232fd8
	mov     r0, #0x1
	bx      lr
@ 0x2232fd8

.thumb
branch_2232fd8: @ 2232fd8 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2232fdc

.word 0xb64 @ 0x2232fdc
.thumb
Function_2232fe0: @ 2232fe0 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	ldr     r0, [pc, #0x70] @ 0x2233058, (=0xb18)
	mov     r4, r2
	mov     r2, #0x92
	mov     r6, r1
	add     r0, r5, r0
	mov     r1, #0x0
	lsl     r2, r2, #2
	blx     Call_FillMemWithValue
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff74
	mov     r0, #0x2
	mov     r1, #0x1
	bl      Function_201ff74
	mov     r0, #0x4
	mov     r1, #0x1
	bl      Function_201ff74
	mov     r0, #0x8
	mov     r1, #0x0
	bl      Function_201ff74
	ldr     r0, [pc, #0x40] @ 0x223305c, (=0x2238ab0)
	ldr     r2, [pc, #0x44] @ 0x2233060, (=0x22332c5)
	mov     r1, #0x8
	mov     r3, r5
	str     r4, [sp, #0x0]
	bl      Function_2023fcc
	ldr     r1, [pc, #0x3c] @ 0x2233064, (=0xb64)
	str     r0, [r5, r1]
	mov     r0, r4
	bl      Function_200b358
	ldr     r1, [pc, #0x24] @ 0x2233058, (=0xb18)
	mov     r2, r4
	str     r0, [r5, r1]
	mov     r0, r5
	mov     r1, r6
	bl      Function_22332fc
	mov     r0, #0xb9
	mov     r1, #0x1
	lsl     r0, r0, #4
	str     r1, [r5, r0]
	mov     r0, r5
	bl      Function_22336d4
	mov     r0, r5
	bl      Function_223370c
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x2233056


.align 2


.word 0xb18 @ 0x2233058
.word 0x2238ab0 @ 0x223305c
.word 0x22332c5 @ 0x2233060
.word 0xb64 @ 0x2233064
.thumb
Function_2233068: @ 2233068 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2232fcc
	cmp     r0, #0x0
	beq     branch_22330b6
	mov     r0, r4
	bl      Function_2233570
	ldr     r0, [pc, #0x3c] @ 0x22330b8, (=0xb64)
	ldr     r0, [r4, r0]
	bl      Function_2024034
	ldr     r0, [pc, #0x34] @ 0x22330b8, (=0xb64)
	mov     r1, #0x0
	str     r1, [r4, r0]
	sub     r0, #0x4c
	ldr     r0, [r4, r0]
	bl      Function_200b3f0
	ldr     r0, [pc, #0x28] @ 0x22330bc, (=0xb18)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff74
	mov     r0, #0x2
	mov     r1, #0x0
	bl      Function_201ff74
	mov     r0, #0x4
	mov     r1, #0x0
	bl      Function_201ff74
	mov     r0, #0x8
	mov     r1, #0x0
	bl      Function_201ff74
.thumb
branch_22330b6: @ 22330b6 :thumb
	pop     {r4,pc}
@ 0x22330b8

.word 0xb64 @ 0x22330b8
.word 0xb18 @ 0x22330bc
.thumb
Function_22330c0: @ 22330c0 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	mov     r0, #0xe2
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r6, r1
	bl      Function_2235270
	mov     r5, r0
	mov     r0, #0xe2
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_22352cc
	cmp     r0, #0x3
	bcc     branch_22330e6
	cmp     r0, #0x6
	bhi     branch_22330e6
	mov     r5, r0
.thumb
branch_22330e6: @ 22330e6 :thumb
	cmp     r5, #0x3
	bcc     branch_2233110
	cmp     r5, #0x6
	bhi     branch_2233110
	ldr     r0, [pc, #0xd8] @ 0x22331c8, (=0xb88)
	.hword  0x1ee9 @ sub r1, r5, #0x3
	ldrb    r2, [r4, r0]
	cmp     r2, r1
	beq     branch_2233110
	strb    r1, [r4, r0]
	ldr     r0, [pc, #0xd0] @ 0x22331cc, (=0x5e1)
	bl      Function_2005748
	mov     r0, r4
	bl      Function_22336d4
	ldr     r0, [pc, #0xc8] @ 0x22331d0, (=0xb8d)
	mov     r1, #0x1
	strb    r1, [r4, r0]
	.hword  0x1cc0 @ add r0, r0, #0x3
	str     r1, [r4, r0]
.thumb
branch_2233110: @ 2233110 :thumb
	ldr     r0, [pc, #0xc0] @ 0x22331d4, (=0xb8b)
	ldrb    r1, [r4, r0]
	cmp     r1, #0x1
	bne     branch_2233130
	mov     r1, #0x2
	strb    r1, [r4, r0]
	mov     r1, #0x0
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r1, [r4, r0]
	mov     r0, r4
	mov     r1, r6
	bl      Function_2233874
	mov     r0, r4
	bl      Function_2234d6c
.thumb
branch_2233130: @ 2233130 :thumb
	ldr     r0, [pc, #0xa0] @ 0x22331d4, (=0xb8b)
	ldrb    r1, [r4, r0]
	cmp     r1, #0x0
	bne     branch_223315a
	sub     r0, #0x27
	ldr     r0, [r4, r0]
	bl      Function_202404c
	mov     r0, r4
	bl      Function_2234a10
	ldr     r0, [pc, #0x88] @ 0x22331d0, (=0xb8d)
	ldrb    r0, [r4, r0]
	cmp     r0, #0x1
	bne     branch_223315a
	mov     r0, r4
	bl      Function_223370c
	ldr     r0, [pc, #0x78] @ 0x22331d0, (=0xb8d)
	mov     r1, #0x0
	strb    r1, [r4, r0]
.thumb
branch_223315a: @ 223315a :thumb
	ldr     r0, [pc, #0x78] @ 0x22331d4, (=0xb8b)
	ldrb    r0, [r4, r0]
	add     r0, #0xfe
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	cmp     r0, #0x1
	bhi     branch_22331c2
	mov     r0, r4
	bl      Function_2234dd8
	mov     r5, r0
	mov     r0, r4
	mov     r1, r5
	bl      Function_2233208
	cmp     r0, #0x1
	bne     branch_22331a8
	ldr     r1, [pc, #0x58] @ 0x22331d8, (=0xb89)
	mov     r3, #0x1
	ldrb    r2, [r4, r1]
	add     r0, r1, #0x6
	strb    r2, [r4, r0]
	mov     r0, #0x0
	strb    r0, [r4, r1]
	add     r2, r1, #0x1
	strb    r0, [r4, r2]
	add     r2, r1, #0x4
	strb    r3, [r4, r2]
	add     r2, r1, #0x7
	str     r3, [r4, r2]
	.hword  0x1c89 @ add r1, r1, #0x2
	strb    r0, [r4, r1]
	mov     r0, r4
	bl      Function_2234da0
	ldr     r0, [pc, #0x38] @ 0x22331dc, (=0x5dd)
	bl      Function_2005748
	b       branch_22331c2
@ 0x22331a8

.thumb
branch_22331a8: @ 22331a8 :thumb
	cmp     r5, #0x0
	beq     branch_22331c2
	ldr     r0, [pc, #0x2c] @ 0x22331dc, (=0x5dd)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, r5
	bl      Function_223327c
	mov     r0, r4
	mov     r1, r6
	bl      Function_2233874
.thumb
branch_22331c2: @ 22331c2 :thumb
	ldr     r0, [pc, #0x14] @ 0x22331d8, (=0xb89)
	ldrb    r0, [r4, r0]
	pop     {r4-r6,pc}
@ 0x22331c8

.word 0xb88 @ 0x22331c8
.word 0x5e1 @ 0x22331cc
.word 0xb8d @ 0x22331d0
.word 0xb8b @ 0x22331d4
.word 0xb89 @ 0x22331d8
.word 0x5dd @ 0x22331dc
.thumb
Function_22331e0: @ 22331e0 :thumb
	push    {r4,lr}
	ldr     r1, [pc, #0x1c] @ 0x2233200, (=0xb8b)
	mov     r4, r0
	ldrb    r2, [r4, r1]
	cmp     r2, #0x0
	bne     branch_22331fe
	.hword  0x1c89 @ add r1, r1, #0x2
	ldrb    r1, [r4, r1]
	cmp     r1, #0x1
	bne     branch_22331fe
	bl      Function_223370c
	ldr     r0, [pc, #0x8] @ 0x2233204, (=0xb8d)
	mov     r1, #0x0
	strb    r1, [r4, r0]
.thumb
branch_22331fe: @ 22331fe :thumb
	pop     {r4,pc}
@ 0x2233200

.word 0xb8b @ 0x2233200
.word 0xb8d @ 0x2233204
.thumb
Function_2233208: @ 2233208 :thumb
	ldr     r2, [pc, #0x28] @ 0x2233234, (=0xb8b)
	ldrb    r0, [r0, r2]
	cmp     r0, #0x3
	bne     branch_2233214
	mov     r0, #0x0
	bx      lr
@ 0x2233214

.thumb
branch_2233214: @ 2233214 :thumb
	ldr     r2, [pc, #0x20] @ 0x2233238, (=0x21bf67c)
	mov     r0, #0xf0
	ldr     r3, [r2, #0x44]
	tst     r0, r3
	bne     branch_223322a
	ldr     r2, [r2, #0x48]
	ldr     r0, [pc, #0x18] @ 0x223323c, (=0x403)
	tst     r0, r2
	bne     branch_223322a
	cmp     r1, #0x2
	bne     branch_223322e
.thumb
branch_223322a: @ 223322a :thumb
	mov     r0, #0x1
	bx      lr
@ 0x223322e

.thumb
branch_223322e: @ 223322e :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2233232


.align 2


.word 0xb8b @ 0x2233234
.word 0x21bf67c @ 0x2233238
.word 0x403 @ 0x223323c
.thumb
Function_2233240: @ 2233240 :thumb
	ldr     r1, [pc, #0x4] @ 0x2233248, (=0xb89)
	ldrb    r0, [r0, r1]
	bx      lr
@ 0x2233246


.align 2


.word 0xb89 @ 0x2233248
.thumb
Function_223324c: @ 223324c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2232fcc
	cmp     r0, #0x1
	bne     branch_2233276
	ldr     r0, [pc, #0x1c] @ 0x2233278, (=0xb89)
	mov     r2, #0x0
	strb    r2, [r4, r0]
	add     r1, r0, #0x1
	strb    r2, [r4, r1]
	add     r1, r0, #0x2
	strb    r2, [r4, r1]
	add     r1, r0, #0x4
	mov     r2, #0x1
	strb    r2, [r4, r1]
	.hword  0x1dc0 @ add r0, r0, #0x7
	str     r2, [r4, r0]
	mov     r0, r4
	bl      Function_2234da0
.thumb
branch_2233276: @ 2233276 :thumb
	pop     {r4,pc}
@ 0x2233278

.word 0xb89 @ 0x2233278
.thumb
Function_223327c: @ 223327c :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r5, r1
	bl      Function_222dce0
	cmp     r0, #0x1
	bne     branch_223328e
	mov     r1, #0x7
	b       branch_2233290
@ 0x223328e

.thumb
branch_223328e: @ 223328e :thumb
	mov     r1, #0x2
.thumb
branch_2233290: @ 2233290 :thumb
	cmp     r5, #0x3
	bne     branch_22332a4
	ldr     r0, [pc, #0x28] @ 0x22332c0, (=0xb8c)
	ldsb    r0, [r4, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	blx     _u32_div_f
	ldr     r0, [pc, #0x20] @ 0x22332c0, (=0xb8c)
	strb    r1, [r4, r0]
	pop     {r3-r5,pc}
@ 0x22332a4

.thumb
branch_22332a4: @ 22332a4 :thumb
	ldr     r2, [pc, #0x18] @ 0x22332c0, (=0xb8c)
	ldsb    r3, [r4, r2]
	add     r0, r4, r2
	.hword  0x1e5b @ sub r3, r3, #0x1
	strb    r3, [r0, #0x0]
	ldsb    r2, [r4, r2]
	cmp     r2, #0x0
	bge     branch_22332bc
	mov     r2, #0x0
	ldsb    r2, [r0, r2]
	add     r1, r2, r1
	strb    r1, [r0, #0x0]
.thumb
branch_22332bc: @ 22332bc :thumb
	pop     {r3-r5,pc}
@ 0x22332be


.align 2


.word 0xb8c @ 0x22332c0
.thumb
Function_22332c4: @ 22332c4 :thumb
	push    {r3-r5,lr}
	ldr     r4, [pc, #0x2c] @ 0x22332f4, (=0xb88)
	ldrb    r3, [r2, r4]
	lsl     r3, r3, #3
	add     r0, r0, r3
	mov     r3, r4
	add     r5, r2, r0
	sub     r3, #0x20
	ldrb    r3, [r5, r3]
	cmp     r3, #0x2
	bne     branch_22332f2
	add     r3, r4, #0x1
	ldrb    r3, [r2, r3]
	cmp     r3, #0x0
	bne     branch_22332f2
	cmp     r1, #0x0
	bne     branch_22332f2
	add     r1, r0, #0x1
	add     r0, r4, #0x1
	strb    r1, [r2, r0]
	ldr     r0, [pc, #0x8] @ 0x22332f8, (=0x5dd)
	bl      Function_2005748
.thumb
branch_22332f2: @ 22332f2 :thumb
	pop     {r3-r5,pc}
@ 0x22332f4

.word 0xb88 @ 0x22332f4
.word 0x5dd @ 0x22332f8
.thumb
Function_22332fc: @ 22332fc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x38
	mov     r7, r0
	mov     r0, #0x57
	lsl     r0, r0, #2
	str     r1, [sp, #0x14]
	ldr     r0, [r7, r0]
	mov     r1, #0x4
	str     r2, [sp, #0x18]
	bl      Function_2019ebc
	mov     r0, #0x80
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x18]
	mov     r1, #0x10
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x14]
	mov     r2, #0x4
	mov     r3, #0x0
	bl      Function_2007130
	mov     r0, #0xa0
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x18]
	mov     r1, #0x13
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x14]
	mov     r2, #0x4
	mov     r3, #0x80
	bl      Function_2007130
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x18]
	mov     r2, #0x57
	str     r0, [sp, #0xc]
	lsl     r2, r2, #2
	ldr     r0, [sp, #0x14]
	ldr     r2, [r7, r2]
	mov     r1, #0xf
	mov     r3, #0x4
	bl      Function_20070e8
	mov     r0, #0x30
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x18]
	mov     r2, #0x57
	str     r0, [sp, #0xc]
	lsl     r2, r2, #2
	ldr     r0, [sp, #0x14]
	ldr     r2, [r7, r2]
	mov     r1, #0x12
	mov     r3, #0x6
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x18]
	mov     r2, #0x57
	str     r0, [sp, #0xc]
	lsl     r2, r2, #2
	ldr     r0, [sp, #0x14]
	ldr     r2, [r7, r2]
	mov     r1, #0x11
	mov     r3, #0x4
	bl      Function_200710c
	ldr     r0, [sp, #0x18]
	mov     r3, #0xb2
	str     r0, [sp, #0x0]
	lsl     r3, r3, #4
	ldr     r0, [sp, #0x14]
	mov     r1, #0x14
	mov     r2, #0x0
	add     r3, r7, r3
	bl      Function_20071d0
	ldr     r1, [pc, #0x1b4] @ 0x223355c, (=0xb1c)
	str     r0, [r7, r1]
	add     r0, r1, #0x4
	ldr     r0, [r7, r0]
	mov     r1, #0x30
	bl      Function_22335f8
	mov     r0, #0x2d
	lsl     r0, r0, #6
	mov     r6, #0x0
	add     r5, r7, r0
	mov     r4, r7
.thumb
branch_22333bc: @ 22333bc :thumb
	ldr     r0, [sp, #0x18]
	mov     r1, r6
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x14]
	add     r1, #0x15
	mov     r2, #0x0
	mov     r3, r5
	bl      Function_20071d0
	ldr     r1, [pc, #0x190] @ 0x2233560, (=0xb24)
	str     r0, [r4, r1]
	mov     r0, r1
	add     r0, #0x1c
	ldr     r0, [r4, r0]
	mov     r1, #0x30
	bl      Function_22335f8
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x7
	blt     branch_22333bc
	ldr     r0, [sp, #0x18]
	mov     r3, #0xb6
	str     r0, [sp, #0x0]
	lsl     r3, r3, #4
	ldr     r0, [sp, #0x14]
	mov     r1, #0x1c
	mov     r2, #0x0
	add     r3, r7, r3
	bl      Function_20071d0
	ldr     r1, [pc, #0x164] @ 0x2233564, (=0xb5c)
	str     r0, [r7, r1]
	add     r0, r1, #0x4
	ldr     r0, [r7, r0]
	mov     r1, #0x30
	bl      Function_22335f8
	mov     r1, #0x1e
	ldr     r2, [sp, #0x18]
	mov     r0, #0x4
	lsl     r1, r1, #4
	bl      Function_2002e98
	mov     r0, #0x0
	ldr     r1, [pc, #0x14c] @ 0x2233568, (=0xb94)
	str     r0, [sp, #0x1c]
	add     r0, r7, r1
	str     r0, [sp, #0x30]
	mov     r0, #0x1
	add     r1, #0x80
	str     r0, [sp, #0x2c]
	add     r0, r7, r1
	str     r0, [sp, #0x28]
	ldr     r0, [sp, #0x1c]
	str     r0, [sp, #0x24]
.thumb
branch_223342e: @ 223342e :thumb
	ldr     r0, [sp, #0x30]
	bl      Function_201a7a0
	ldr     r0, [sp, #0x1c]
	lsr     r2, r0, #31
	lsl     r1, r0, #30
	sub     r1, r1, r2
	mov     r0, #0x1e
	ror     r1, r0
	add     r1, r2, r1
	mov     r0, #0x6
	mul     r0, r1
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x1c]
	mov     r2, #0x5
	asr     r0, r0, #1
	lsr     r1, r0, #30
	ldr     r0, [sp, #0x1c]
	add     r1, r0, r1
	asr     r0, r1, #2
	lsl     r5, r0, #4
	ldr     r0, [sp, #0x20]
	add     r3, r5, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x9
	str     r0, [sp, #0x4]
	mov     r0, #0x3
	str     r0, [sp, #0x8]
	mov     r0, #0xf
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x2c]
	lsl     r3, r3, #24
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r7, r0]
	ldr     r1, [sp, #0x30]
	lsr     r3, r3, #24
	bl      Function_201a7e8
	ldr     r0, [sp, #0x30]
	mov     r1, #0x0
	bl      Function_201ada4
	ldr     r0, [sp, #0x30]
	bl      Function_201a9a4
	ldr     r0, [sp, #0x20]
	ldr     r4, [sp, #0x28]
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	mov     r6, #0x0
	.hword  0x1c6d @ add r5, r5, #0x1
	str     r0, [sp, #0x34]
.thumb
branch_22334a6: @ 22334a6 :thumb
	mov     r0, r4
	bl      Function_201a7a0
	ldr     r0, [sp, #0x34]
	lsl     r3, r5, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x3
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x24]
	mov     r2, #0x5
	add     r1, r6, r0
	mov     r0, #0x6
	mul     r0, r1
	add     r0, #0xda
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r7, r0]
	mov     r1, r4
	lsr     r3, r3, #24
	bl      Function_201a7e8
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_201ada4
	mov     r0, r4
	bl      Function_201a9a4
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x10
	add     r5, #0xc
	cmp     r6, #0x2
	blt     branch_22334a6
	ldr     r0, [sp, #0x30]
	add     r0, #0x10
	str     r0, [sp, #0x30]
	ldr     r0, [sp, #0x2c]
	add     r0, #0x1b
	str     r0, [sp, #0x2c]
	ldr     r0, [sp, #0x28]
	add     r0, #0x20
	str     r0, [sp, #0x28]
	ldr     r0, [sp, #0x24]
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x1c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x1c]
	cmp     r0, #0x8
	blt     branch_223342e
	mov     r3, #0x1
	str     r3, [sp, #0x0]
	mov     r0, #0x1e
	str     r0, [sp, #0x4]
	mov     r0, #0x15
	str     r0, [sp, #0x8]
	mov     r0, #0xf
	str     r0, [sp, #0xc]
	mov     r0, #0x57
	ldr     r1, [pc, #0x40] @ 0x223356c, (=0xd14)
	str     r3, [sp, #0x10]
	lsl     r0, r0, #2
	ldr     r0, [r7, r0]
	add     r1, r7, r1
	mov     r2, #0x7
	bl      Function_201a7e8
	ldr     r0, [pc, #0x30] @ 0x223356c, (=0xd14)
	mov     r1, #0x0
	add     r0, r7, r0
	bl      Function_201ada4
	ldr     r0, [pc, #0x24] @ 0x223356c, (=0xd14)
	add     r0, r7, r0
	bl      Function_201a9a4
	ldr     r1, [sp, #0x14]
	ldr     r2, [sp, #0x18]
	mov     r0, r7
	bl      Function_2234a68
	add     sp, #0x38
	pop     {r3-r7,pc}
@ 0x223355a


.align 2


.word 0xb1c @ 0x223355c
.word 0xb24 @ 0x2233560
.word 0xb5c @ 0x2233564
.word 0xb94 @ 0x2233568
.word 0xd14 @ 0x223356c
.thumb
Function_2233570: @ 2233570 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	str     r0, [sp, #0x0]
	bl      Function_2234cfc
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r1, [pc, #0x64] @ 0x22335e4, (=0xb94)
	ldr     r0, [sp, #0x0]
	add     r7, r0, r1
	add     r1, #0x80
	add     r6, r0, r1
.thumb
branch_2233588: @ 2233588 :thumb
	mov     r0, r7
	bl      Function_201a8fc
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_2233592: @ 2233592 :thumb
	mov     r0, r5
	bl      Function_201a8fc
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x2
	blt     branch_2233592
	ldr     r0, [sp, #0x4]
	add     r7, #0x10
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r6, #0x20
	str     r0, [sp, #0x4]
	cmp     r0, #0x8
	blt     branch_2233588
	ldr     r1, [pc, #0x38] @ 0x22335e8, (=0xd14)
	ldr     r0, [sp, #0x0]
	add     r0, r0, r1
	bl      Function_201a8fc
	ldr     r1, [pc, #0x30] @ 0x22335ec, (=0xb1c)
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, r1]
	bl      free
	ldr     r4, [sp, #0x0]
	ldr     r6, [pc, #0x28] @ 0x22335f0, (=0xb24)
	mov     r5, #0x0
.thumb
branch_22335c8: @ 22335c8 :thumb
	ldr     r0, [r4, r6]
	bl      free
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, #0x7
	blt     branch_22335c8
	ldr     r1, [pc, #0x1c] @ 0x22335f4, (=0xb5c)
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, r1]
	bl      free
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x22335e4

.word 0xb94 @ 0x22335e4
.word 0xd14 @ 0x22335e8
.word 0xb1c @ 0x22335ec
.word 0xb24 @ 0x22335f0
.word 0xb5c @ 0x22335f4
.thumb
Function_22335f8: @ 22335f8 :thumb
	push    {r4-r7}
	mov     r5, r1
	mov     r1, r0
	add     r1, #0xc
	mov     r12, r1
	ldrh    r1, [r0, #0x0]
	ldrh    r0, [r0, #0x2]
	lsr     r2, r1, #3
	lsr     r7, r0, #3
	mov     r0, #0x0
	cmp     r7, #0x0
	ble     branch_2233634
	mov     r3, r0
.thumb
branch_2233612: @ 2233612 :thumb
	mov     r1, #0x0
	cmp     r2, #0x0
	ble     branch_223362c
	lsl     r6, r3, #1
	mov     r4, r12
	add     r4, r4, r6
.thumb
branch_223361e: @ 223361e :thumb
	ldrh    r6, [r4, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r6, r6, r5
	strh    r6, [r4, #0x0]
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r1, r2
	blt     branch_223361e
.thumb
branch_223362c: @ 223362c :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r3, r3, r2
	cmp     r0, r7
	blt     branch_2233612
.thumb
branch_2233634: @ 2233634 :thumb
	pop     {r4-r7}
	bx      lr
@ 0x2233638

.thumb
Function_2233638: @ 2233638 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r5, r0
	mov     r4, r2
	cmp     r6, #0x0
	bne     branch_2233648
	bl      ErrorHandling
.thumb
branch_2233648: @ 2233648 :thumb
	cmp     r4, #0x0
	bne     branch_2233650
	bl      ErrorHandling
.thumb
branch_2233650: @ 2233650 :thumb
	cmp     r4, #0x3
	bcc     branch_2233658
	bl      ErrorHandling
.thumb
branch_2233658: @ 2233658 :thumb
	ldr     r0, [pc, #0xc] @ 0x2233668, (=0xb67)
	add     r1, r5, r6
	strb    r4, [r1, r0]
	mov     r1, #0x1
	add     r0, #0x26
	strb    r1, [r5, r0]
	pop     {r4-r6,pc}
@ 0x2233666


.align 2


.word 0xb67 @ 0x2233668
.thumb
Function_223366c: @ 223366c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bne     branch_2233678
	bl      ErrorHandling
.thumb
branch_2233678: @ 2233678 :thumb
	ldr     r0, [pc, #0xc] @ 0x2233688, (=0xb67)
	mov     r2, #0x0
	add     r1, r5, r4
	strb    r2, [r1, r0]
	mov     r1, #0x1
	add     r0, #0x26
	strb    r1, [r5, r0]
	pop     {r3-r5,pc}
@ 0x2233688

.word 0xb67 @ 0x2233688
.thumb
Function_223368c: @ 223368c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bne     branch_2233698
	bl      ErrorHandling
.thumb
branch_2233698: @ 2233698 :thumb
	ldr     r0, [pc, #0x4] @ 0x22336a0, (=0xb67)
	add     r1, r5, r4
	ldrb    r0, [r1, r0]
	pop     {r3-r5,pc}
@ 0x22336a0

.word 0xb67 @ 0x22336a0
.thumb
Function_22336a4: @ 22336a4 :thumb
	push    {r3,lr}
	ldr     r2, [pc, #0x18] @ 0x22336c0, (=0xb8b)
	ldrb    r3, [r0, r2]
	cmp     r3, #0x0
	beq     branch_22336b4
	bl      Function_2233874
	pop     {r3,pc}
@ 0x22336b4

.thumb
branch_22336b4: @ 22336b4 :thumb
	mov     r3, #0x1
	add     r1, r2, #0x5
	str     r3, [r0, r1]
	bl      Function_223370c
	pop     {r3,pc}
@ 0x22336c0

.word 0xb8b @ 0x22336c0
.thumb
Function_22336c4: @ 22336c4 :thumb
	mov     r1, #0xb9
	mov     r2, #0x1
	lsl     r1, r1, #4
	str     r2, [r0, r1]
	.hword  0x1ec9 @ sub r1, r1, #0x3
	strb    r2, [r0, r1]
	bx      lr
@ 0x22336d2


.align 2, 0


.thumb
Function_22336d4: @ 22336d4 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x18
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x24] @ 0x2233708, (=0xb88)
	mov     r2, #0x0
	ldrb    r0, [r4, r0]
	mov     r1, #0x4
	mov     r3, r2
	str     r0, [sp, #0x8]
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2019e2c
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x4
	bl      Function_201c3c0
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2233708

.word 0xb88 @ 0x2233708
.thumb
Function_223370c: @ 223370c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r6, r0
	mov     r0, #0xb9
	lsl     r0, r0, #4
	ldr     r1, [r6, r0]
	cmp     r1, #0x1
	bne     branch_2233740
	mov     r2, #0x0
	str     r2, [r6, r0]
	mov     r0, #0x1
	str     r0, [sp, #0x18]
	str     r2, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x18
	str     r0, [sp, #0x8]
	mov     r0, #0x57
	str     r2, [sp, #0xc]
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	mov     r1, #0x6
	mov     r3, r2
	bl      Function_2019cb8
	b       branch_2233744
@ 0x2233740

.thumb
branch_2233740: @ 2233740 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x18]
.thumb
branch_2233744: @ 2233744 :thumb
	ldr     r1, [pc, #0x11c] @ 0x2233864, (=0xb94)
	mov     r7, #0x0
	add     r0, r6, r1
	add     r1, #0x80
	str     r0, [sp, #0x14]
	add     r0, r6, r1
	str     r0, [sp, #0x10]
.thumb
branch_2233752: @ 2233752 :thumb
	ldr     r0, [pc, #0x114] @ 0x2233868, (=0xb88)
	ldrb    r1, [r6, r0]
	sub     r0, #0x21
	lsl     r1, r1, #3
	add     r1, r7, r1
	add     r4, r1, #0x1
	add     r1, r6, r4
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2233780
	ldr     r0, [r6, #0x0]
	.hword  0x1e61 @ sub r1, r4, #0x1
	mov     r2, #0x8
	bl      Function_202ad2c
	cmp     r0, #0x0
	bne     branch_223377a
	mov     r0, #0x1
	str     r0, [sp, #0x1c]
	b       branch_2233784
@ 0x223377a

.thumb
branch_223377a: @ 223377a :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x1c]
	b       branch_2233784
@ 0x2233780

.thumb
branch_2233780: @ 2233780 :thumb
	mov     r0, #0x2
	str     r0, [sp, #0x1c]
.thumb
branch_2233784: @ 2233784 :thumb
	asr     r0, r7, #1
	lsr     r0, r0, #30
	add     r0, r7, r0
	asr     r2, r0, #2
	lsr     r3, r7, #31
	lsl     r1, r7, #30
	sub     r1, r1, r3
	mov     r0, #0x1e
	ror     r1, r0
	add     r0, r3, r1
	ldr     r1, [pc, #0xd0] @ 0x223386c, (=0xb89)
	mov     r12, r0
	ldrb    r0, [r6, r1]
	cmp     r4, r0
	bne     branch_22337a8
	.hword  0x1c49 @ add r1, r1, #0x1
	ldrb    r5, [r6, r1]
	b       branch_22337aa
@ 0x22337a8

.thumb
branch_22337a8: @ 22337a8 :thumb
	mov     r5, #0x0
.thumb
branch_22337aa: @ 22337aa :thumb
	cmp     r4, r0
	beq     branch_22337b6
	ldr     r0, [pc, #0xc0] @ 0x2233870, (=0xb8f)
	ldrb    r0, [r6, r0]
	cmp     r4, r0
	bne     branch_22337ba
.thumb
branch_22337b6: @ 22337b6 :thumb
	mov     r1, #0x1
	b       branch_22337bc
@ 0x22337ba

.thumb
branch_22337ba: @ 22337ba :thumb
	mov     r1, #0x0
.thumb
branch_22337bc: @ 22337bc :thumb
	ldr     r0, [sp, #0x18]
	cmp     r0, #0x1
	beq     branch_22337c6
	cmp     r1, #0x1
	bne     branch_2233832
.thumb
branch_22337c6: @ 22337c6 :thumb
	lsl     r1, r2, #28
	mov     r3, #0x6
	mov     r2, r12
	mul     r3, r2
	lsl     r2, r3, #24
	ldr     r3, [sp, #0x1c]
	lsl     r0, r5, #24
	lsr     r0, r0, #24
	lsl     r3, r3, #24
	str     r0, [sp, #0x0]
	mov     r0, r6
	lsr     r1, r1, #24
	lsr     r2, r2, #24
	lsr     r3, r3, #24
	bl      Function_2234788
	ldr     r0, [sp, #0x1c]
	cmp     r0, #0x2
	beq     branch_223380a
	ldr     r1, [sp, #0x14]
	mov     r0, r6
	mov     r2, r4
	mov     r3, r5
	str     r7, [sp, #0x0]
	bl      Function_2234900
	ldr     r1, [sp, #0x10]
	mov     r0, r6
	mov     r2, r4
	mov     r3, r5
	str     r7, [sp, #0x0]
	bl      Function_223498c
	b       branch_2233832
@ 0x223380a

.thumb
branch_223380a: @ 223380a :thumb
	ldr     r0, [sp, #0x14]
	mov     r1, #0x0
	bl      Function_201ada4
	ldr     r0, [sp, #0x14]
	bl      Function_201a9a4
	ldr     r5, [sp, #0x10]
	mov     r4, #0x0
.thumb
branch_223381c: @ 223381c :thumb
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_201ada4
	mov     r0, r5
	bl      Function_201a9a4
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x2
	blt     branch_223381c
.thumb
branch_2233832: @ 2233832 :thumb
	ldr     r0, [sp, #0x14]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r0, #0x10
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x10]
	add     r0, #0x20
	str     r0, [sp, #0x10]
	cmp     r7, #0x8
	blt     branch_2233752
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	mov     r1, #0x6
	bl      Function_201c3c0
	mov     r0, #0x2
	mov     r1, #0x1
	bl      Function_201ff74
	mov     r0, #0x8
	mov     r1, #0x0
	bl      Function_201ff74
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x2233864

.word 0xb94 @ 0x2233864
.word 0xb88 @ 0x2233868
.word 0xb89 @ 0x223386c
.word 0xb8f @ 0x2233870
.thumb
Function_2233874: @ 2233874 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r6, r1
	mov     r5, r0
	ldr     r1, [pc, #0xb0] @ 0x2233930, (=0xb89)
	ldr     r0, [r5, #0x0]
	ldrb    r1, [r5, r1]
	mov     r2, #0x8
	.hword  0x1e49 @ sub r1, r1, #0x1
	bl      Function_202ad2c
	cmp     r0, #0x1
	bne     branch_2233892
	mov     r4, #0x7
	b       branch_2233894
@ 0x2233892

.thumb
branch_2233892: @ 2233892 :thumb
	mov     r4, #0x8
.thumb
branch_2233894: @ 2233894 :thumb
	ldr     r0, [pc, #0x9c] @ 0x2233934, (=0xb8c)
	ldsb    r1, [r5, r0]
	sub     r0, #0x4c
	lsl     r1, r1, #2
	add     r1, r5, r1
	ldr     r3, [r1, r0]
	mov     r0, #0x57
	mov     r2, r3
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r3, [r3, #0x8]
	mov     r1, #0x6
	add     r2, #0xc
	bl      Function_2019574
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x18
	str     r0, [sp, #0x4]
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	mov     r0, #0x57
	lsl     r0, r0, #2
	mov     r2, #0x0
	ldr     r0, [r5, r0]
	mov     r1, #0x6
	mov     r3, r2
	bl      Function_2019e2c
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x7
	bl      Function_2019ebc
	mov     r0, r5
	bl      Function_222dce0
	cmp     r0, #0x0
	bne     branch_22338ec
	mov     r0, r5
	bl      Function_2234628
.thumb
branch_22338ec: @ 22338ec :thumb
	ldr     r0, [pc, #0x48] @ 0x2233938, (=0xd14)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      Function_201ada4
	ldr     r2, [pc, #0x3c] @ 0x2233934, (=0xb8c)
	mov     r0, r5
	ldsb    r2, [r5, r2]
	mov     r1, r6
	lsl     r3, r2, #2
	ldr     r2, [pc, #0x38] @ 0x223393c, (=0x2239c40)
	ldr     r2, [r2, r3]
	blx     r2
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x6
	bl      Function_201c3c0
	ldr     r0, [pc, #0x24] @ 0x2233938, (=0xd14)
	add     r0, r5, r0
	bl      Function_201a9a4
	mov     r0, #0x2
	mov     r1, #0x0
	bl      Function_201ff74
	mov     r0, #0x8
	mov     r1, #0x1
	bl      Function_201ff74
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x223392e


.align 2


.word 0xb89 @ 0x2233930
.word 0xb8c @ 0x2233934
.word 0xd14 @ 0x2233938
.word 0x2239c40 @ 0x223393c
.thumb
Function_2233940: @ 2233940 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	ldr     r0, [pc, #0x38c] @ 0x2233cd4, (=0xb89)
	mov     r2, #0x8
	ldrb    r0, [r5, r0]
	.hword  0x1e44 @ sub r4, r0, #0x1
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	bl      Function_202ad2c
	cmp     r0, #0x0
	bne     branch_223395e
	ldr     r0, [pc, #0x37c] @ 0x2233cd8, (=0x50600)
	b       branch_2233962
@ 0x223395e

.thumb
branch_223395e: @ 223395e :thumb
	mov     r0, #0xc1
	lsl     r0, r0, #10
.thumb
branch_2233962: @ 2233962 :thumb
	str     r0, [sp, #0x14]
	mov     r0, r5
	mov     r1, r4
	bl      Function_2234f68
	mov     r2, #0x5a
	lsl     r2, r2, #2
	ldr     r0, [r5, r2]
	add     r2, #0x8
	ldr     r2, [r5, r2]
	mov     r1, #0x2a
	bl      Function_200b1b8
	mov     r2, #0x5e
	ldr     r0, [pc, #0x35c] @ 0x2233cdc, (=0xb18)
	lsl     r2, r2, #2
	ldr     r1, [r5, r2]
	sub     r2, #0x8
	ldr     r0, [r5, r0]
	ldr     r2, [r5, r2]
	bl      Function_200c388
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	ldr     r0, [sp, #0x14]
	add     r2, #0x79
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x33c] @ 0x2233ce0, (=0xd14)
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r1, #0x1
	mov     r3, #0x20
	bl      Function_201d78c
	mov     r0, r5
	mov     r1, r4
	bl      Function_2234fa8
	str     r0, [sp, #0x10]
	ldr     r1, [sp, #0x10]
	mov     r0, r5
	bl      Function_222dd20
	add     r1, sp, #0x14
	mov     r7, r0
	bl      Function_223484c
	mov     r2, #0x5a
	lsl     r2, r2, #2
	mov     r1, r0
	ldr     r0, [r5, r2]
	add     r2, #0x8
	ldr     r2, [r5, r2]
	bl      Function_200b1b8
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	ldr     r0, [sp, #0x14]
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x2f8] @ 0x2233ce0, (=0xd14)
	str     r1, [sp, #0xc]
	add     r2, #0x71
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r3, #0x68
	bl      Function_201d78c
	mov     r0, #0x36
	bl      AllocTrainerData
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	bl      Function_202af34
	mov     r1, r0
	mov     r0, r6
	bl      Function_2025ec0
	ldr     r0, [pc, #0x2cc] @ 0x2233cdc, (=0xb18)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	mov     r2, r6
	bl      Function_200b498
	mov     r0, r6
	bl      free
	mov     r2, #0x5a
	lsl     r2, r2, #2
	ldr     r0, [r5, r2]
	add     r2, #0x10
	ldr     r2, [r5, r2]
	mov     r1, #0x2b
	bl      Function_200b1b8
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	ldr     r0, [pc, #0x2a8] @ 0x2233ce4, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x2a0] @ 0x2233ce0, (=0xd14)
	str     r1, [sp, #0xc]
	add     r2, #0x79
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r3, #0x8
	bl      Function_201d78c
	mov     r1, #0x96
	mov     r0, #0x5a
	mov     r2, r1
	lsl     r0, r0, #2
	add     r2, #0xda
	ldr     r0, [r5, r0]
	ldr     r2, [r5, r2]
	bl      Function_200b1b8
	mov     r2, #0x5e
	ldr     r0, [pc, #0x278] @ 0x2233cdc, (=0xb18)
	lsl     r2, r2, #2
	ldr     r1, [r5, r2]
	sub     r2, #0x8
	ldr     r0, [r5, r0]
	ldr     r2, [r5, r2]
	bl      Function_200c388
	mov     r1, #0x5e
	lsl     r1, r1, #2
	mov     r0, #0x0
	ldr     r1, [r5, r1]
	mov     r2, r0
	bl      Function_2002d7c
	mov     r1, #0xe8
	sub     r3, r1, r0
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	ldr     r0, [pc, #0x254] @ 0x2233ce4, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x24c] @ 0x2233ce0, (=0xd14)
	str     r1, [sp, #0xc]
	add     r2, #0x79
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	bl      Function_201d78c
	mov     r2, #0x5a
	lsl     r2, r2, #2
	ldr     r0, [r5, r2]
	add     r2, #0x10
	ldr     r2, [r5, r2]
	mov     r1, #0x2c
	bl      Function_200b1b8
	mov     r0, #0x38
	str     r0, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	ldr     r0, [pc, #0x228] @ 0x2233ce4, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x220] @ 0x2233ce0, (=0xd14)
	str     r1, [sp, #0xc]
	add     r2, #0x79
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r3, #0x8
	bl      Function_201d78c
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	mov     r2, #0x1
	bl      Function_202ad2c
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1f8] @ 0x2233cdc, (=0xb18)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	mov     r3, #0x4
	bl      Function_200b60c
	mov     r2, #0x5a
	lsl     r2, r2, #2
	ldr     r0, [r5, r2]
	add     r2, #0x8
	ldr     r2, [r5, r2]
	mov     r1, #0x2d
	bl      Function_200b1b8
	mov     r2, #0x5e
	ldr     r0, [pc, #0x1dc] @ 0x2233cdc, (=0xb18)
	lsl     r2, r2, #2
	ldr     r1, [r5, r2]
	sub     r2, #0x8
	ldr     r0, [r5, r0]
	ldr     r2, [r5, r2]
	bl      Function_200c388
	mov     r0, #0x38
	str     r0, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	ldr     r0, [pc, #0x1cc] @ 0x2233ce4, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x1c0] @ 0x2233ce0, (=0xd14)
	str     r1, [sp, #0xc]
	add     r2, #0x79
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r3, #0x78
	bl      Function_201d78c
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	mov     r2, #0x2
	bl      Function_202ad2c
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x19c] @ 0x2233cdc, (=0xb18)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	mov     r3, #0x4
	bl      Function_200b60c
	mov     r0, #0x5a
	mov     r1, #0x2e
	lsl     r0, r0, #2
	lsl     r2, r1, #3
	ldr     r0, [r5, r0]
	ldr     r2, [r5, r2]
	bl      Function_200b1b8
	mov     r2, #0x5e
	ldr     r0, [pc, #0x17c] @ 0x2233cdc, (=0xb18)
	lsl     r2, r2, #2
	ldr     r1, [r5, r2]
	sub     r2, #0x8
	ldr     r0, [r5, r0]
	ldr     r2, [r5, r2]
	bl      Function_200c388
	mov     r1, #0x5e
	lsl     r1, r1, #2
	mov     r0, #0x0
	ldr     r1, [r5, r1]
	mov     r2, r0
	bl      Function_2002d7c
	mov     r1, #0xe8
	sub     r3, r1, r0
	mov     r0, #0x38
	str     r0, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	ldr     r0, [pc, #0x15c] @ 0x2233ce4, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x150] @ 0x2233ce0, (=0xd14)
	str     r1, [sp, #0xc]
	add     r2, #0x79
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	bl      Function_201d78c
	mov     r0, #0x5a
	mov     r1, #0x2f
	lsl     r0, r0, #2
	lsl     r2, r1, #3
	ldr     r0, [r5, r0]
	ldr     r2, [r5, r2]
	bl      Function_200b1b8
	mov     r0, #0x50
	str     r0, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	ldr     r0, [pc, #0x130] @ 0x2233ce4, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x124] @ 0x2233ce0, (=0xd14)
	str     r1, [sp, #0xc]
	add     r2, #0x79
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r3, #0x8
	bl      Function_201d78c
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	mov     r2, #0x3
	bl      Function_202ad2c
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x100] @ 0x2233cdc, (=0xb18)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	mov     r3, #0x4
	bl      Function_200b60c
	mov     r2, #0x5a
	lsl     r2, r2, #2
	ldr     r0, [r5, r2]
	add     r2, #0x8
	ldr     r2, [r5, r2]
	mov     r1, #0x30
	bl      Function_200b1b8
	mov     r2, #0x5e
	ldr     r0, [pc, #0xe0] @ 0x2233cdc, (=0xb18)
	lsl     r2, r2, #2
	ldr     r1, [r5, r2]
	sub     r2, #0x8
	ldr     r0, [r5, r0]
	ldr     r2, [r5, r2]
	bl      Function_200c388
	mov     r1, #0x5e
	lsl     r1, r1, #2
	mov     r0, #0x0
	ldr     r1, [r5, r1]
	mov     r2, r0
	bl      Function_2002d7c
	mov     r1, #0xe8
	sub     r3, r1, r0
	mov     r0, #0x50
	str     r0, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	ldr     r0, [pc, #0xc0] @ 0x2233ce4, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0xb4] @ 0x2233ce0, (=0xd14)
	str     r1, [sp, #0xc]
	add     r2, #0x79
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	bl      Function_201d78c
	mov     r0, r5
	bl      Function_222dcf8
	cmp     r0, #0x1
	bne     branch_2233cf4
	mov     r2, #0x5a
	lsl     r2, r2, #2
	ldr     r0, [r5, r2]
	add     r2, #0x10
	ldr     r2, [r5, r2]
	mov     r1, #0x31
	bl      Function_200b1b8
	mov     r0, #0x68
	str     r0, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	ldr     r0, [pc, #0x88] @ 0x2233ce4, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x80] @ 0x2233ce0, (=0xd14)
	str     r1, [sp, #0xc]
	add     r2, #0x79
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r3, #0x8
	bl      Function_201d78c
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	mov     r2, #0x9
	bl      Function_202ad2c
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x58] @ 0x2233cdc, (=0xb18)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	mov     r3, #0x4
	bl      Function_200b60c
	mov     r2, #0x5a
	lsl     r2, r2, #2
	ldr     r0, [r5, r2]
	add     r2, #0x8
	ldr     r2, [r5, r2]
	mov     r1, #0x32
	bl      Function_200b1b8
	mov     r2, #0x5e
	ldr     r0, [pc, #0x3c] @ 0x2233cdc, (=0xb18)
	lsl     r2, r2, #2
	ldr     r1, [r5, r2]
	sub     r2, #0x8
	ldr     r0, [r5, r0]
	ldr     r2, [r5, r2]
	bl      Function_200c388
	mov     r1, #0x5e
	lsl     r1, r1, #2
	mov     r0, #0x0
	ldr     r1, [r5, r1]
	mov     r2, r0
	bl      Function_2002d7c
	mov     r1, #0xe8
	sub     r3, r1, r0
	mov     r0, #0x68
	str     r0, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x2233ce4, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x10] @ 0x2233ce0, (=0xd14)
	b       branch_2233ce8
@ 0x2233cd2


.align 2


.word 0xb89 @ 0x2233cd4
.word 0x50600 @ 0x2233cd8
.word 0xb18 @ 0x2233cdc
.word 0xd14 @ 0x2233ce0
.word 0x10200 @ 0x2233ce4
.thumb
branch_2233ce8: @ 2233ce8 :thumb
	str     r1, [sp, #0xc]
	add     r2, #0x79
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	bl      Function_201d78c
.thumb
branch_2233cf4: @ 2233cf4 :thumb
	mov     r2, #0x5a
	lsl     r2, r2, #2
	ldr     r0, [r5, r2]
	add     r2, #0x10
	ldr     r2, [r5, r2]
	mov     r1, #0x33
	bl      Function_200b1b8
	mov     r0, #0x80
	str     r0, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	ldr     r0, [pc, #0x100] @ 0x2233e10, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x100] @ 0x2233e14, (=0xd14)
	str     r1, [sp, #0xc]
	add     r2, #0x79
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r3, #0x8
	bl      Function_201d78c
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	mov     r2, #0x6
	bl      Function_202ad2c
	mov     r2, r0
	beq     branch_2233dc8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xdc] @ 0x2233e18, (=0xb18)
	mov     r1, #0x2
	ldr     r0, [r5, r0]
	mov     r3, r1
	bl      Function_200b60c
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	mov     r2, #0x4
	bl      Function_202ad2c
	mov     r1, #0x0
	mov     r2, r0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xbc] @ 0x2233e18, (=0xb18)
	mov     r3, #0x4
	ldr     r0, [r5, r0]
	bl      Function_200b60c
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	mov     r2, #0x5
	bl      Function_202ad2c
	mov     r2, r0
	ldr     r0, [pc, #0xa8] @ 0x2233e18, (=0xb18)
	mov     r1, #0x1
	ldr     r0, [r5, r0]
	bl      Function_200c2e0
	mov     r2, #0x5a
	lsl     r2, r2, #2
	ldr     r0, [r5, r2]
	add     r2, #0x8
	ldr     r2, [r5, r2]
	mov     r1, #0x4a
	bl      Function_200b1b8
	mov     r2, #0x5e
	ldr     r0, [pc, #0x8c] @ 0x2233e18, (=0xb18)
	lsl     r2, r2, #2
	ldr     r1, [r5, r2]
	sub     r2, #0x8
	ldr     r0, [r5, r0]
	ldr     r2, [r5, r2]
	bl      Function_200c388
	mov     r1, #0x5e
	lsl     r1, r1, #2
	mov     r0, #0x0
	ldr     r1, [r5, r1]
	mov     r2, r0
	bl      Function_2002d7c
	mov     r1, #0xe8
	sub     r3, r1, r0
	mov     r0, #0x80
	str     r0, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	ldr     r0, [pc, #0x58] @ 0x2233e10, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x58] @ 0x2233e14, (=0xd14)
	str     r1, [sp, #0xc]
	add     r2, #0x79
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	bl      Function_201d78c
.thumb
branch_2233dc8: @ 2233dc8 :thumb
	mov     r3, #0x2
	str     r3, [sp, #0x0]
	mov     r0, #0x57
	ldr     r1, [pc, #0x4c] @ 0x2233e1c, (=0xb08)
	str     r7, [sp, #0x4]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	add     r1, r5, r1
	mov     r2, #0x6
	bl      Function_222ea38
	ldr     r0, [sp, #0x10]
	add     r0, #0x21
	str     r0, [sp, #0x10]
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2233dee
	mov     r1, #0x8
	b       branch_2233df0
@ 0x2233dee

.thumb
branch_2233dee: @ 2233dee :thumb
	mov     r1, #0x1
.thumb
branch_2233df0: @ 2233df0 :thumb
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r1, [pc, #0x1c] @ 0x2233e1c, (=0xb08)
	ldr     r0, [r5, r0]
	add     r1, r5, r1
	mov     r2, #0x6
	mov     r3, #0x1c
	bl      Function_222e9c0
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2233e10

.word 0x10200 @ 0x2233e10
.word 0xd14 @ 0x2233e14
.word 0xb18 @ 0x2233e18
.word 0xb08 @ 0x2233e1c
.thumb
Function_2233e20: @ 2233e20 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r0, [pc, #0xb8] @ 0x2233ee0, (=0xb89)
	mov     r2, #0x5a
	ldrb    r0, [r5, r0]
	lsl     r2, r2, #2
	mov     r1, #0x34
	.hword  0x1e44 @ sub r4, r0, #0x1
	ldr     r0, [r5, r2]
	add     r2, #0x10
	ldr     r2, [r5, r2]
	bl      Function_200b1b8
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	ldr     r0, [pc, #0x9c] @ 0x2233ee4, (=0xf0e00)
	add     r2, #0x79
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [pc, #0x98] @ 0x2233ee8, (=0xd14)
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r3, #0x8
	bl      Function_201d78c
	mov     r1, #0x5e
	lsl     r1, r1, #2
	ldr     r1, [r5, r1]
	mov     r0, r5
	mov     r2, #0x0
	mov     r3, r4
	bl      Function_22346c4
	mov     r0, #0x18
	str     r0, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	ldr     r0, [pc, #0x78] @ 0x2233eec, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x70] @ 0x2233ee8, (=0xd14)
	str     r1, [sp, #0xc]
	add     r2, #0x79
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r3, #0x8
	bl      Function_201d78c
	mov     r0, #0x78
	str     r0, [sp, #0x0]
	mov     r0, #0x18
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x41
	mov     r2, #0x71
	mov     r3, r4
	bl      Function_2234694
	mov     r2, #0x5a
	lsl     r2, r2, #2
	ldr     r0, [r5, r2]
	add     r2, #0x10
	ldr     r2, [r5, r2]
	mov     r1, #0x3b
	bl      Function_200b1b8
	mov     r0, #0x30
	str     r0, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	ldr     r0, [pc, #0x38] @ 0x2233eec, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x2c] @ 0x2233ee8, (=0xd14)
	str     r1, [sp, #0xc]
	add     r2, #0x79
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r3, #0x8
	bl      Function_201d78c
	mov     r0, #0x78
	str     r0, [sp, #0x0]
	mov     r0, #0x30
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x41
	mov     r2, #0x70
	mov     r3, r4
	bl      Function_2234694
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2233ee0

.word 0xb89 @ 0x2233ee0
.word 0xf0e00 @ 0x2233ee4
.word 0xd14 @ 0x2233ee8
.word 0x10200 @ 0x2233eec
.thumb
Function_2233ef0: @ 2233ef0 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r0, [pc, #0x264] @ 0x223415c, (=0xb89)
	mov     r2, #0x5a
	ldrb    r0, [r5, r0]
	lsl     r2, r2, #2
	mov     r1, #0x35
	.hword  0x1e44 @ sub r4, r0, #0x1
	ldr     r0, [r5, r2]
	add     r2, #0x10
	ldr     r2, [r5, r2]
	bl      Function_200b1b8
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	ldr     r0, [pc, #0x248] @ 0x2234160, (=0xf0e00)
	add     r2, #0x79
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [pc, #0x244] @ 0x2234164, (=0xd14)
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r3, #0x8
	bl      Function_201d78c
	mov     r2, #0x5a
	lsl     r2, r2, #2
	ldr     r0, [r5, r2]
	add     r2, #0x10
	ldr     r2, [r5, r2]
	mov     r1, #0x3c
	bl      Function_200b1b8
	mov     r0, #0x18
	str     r0, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	ldr     r0, [pc, #0x224] @ 0x2234168, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x21c] @ 0x2234164, (=0xd14)
	str     r1, [sp, #0xc]
	add     r2, #0x79
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r3, #0x8
	bl      Function_201d78c
	mov     r2, #0x5a
	lsl     r2, r2, #2
	ldr     r0, [r5, r2]
	add     r2, #0x10
	ldr     r2, [r5, r2]
	mov     r1, #0x3e
	bl      Function_200b1b8
	mov     r1, #0x5e
	lsl     r1, r1, #2
	mov     r0, #0x0
	ldr     r1, [r5, r1]
	mov     r2, r0
	bl      Function_2002d7c
	mov     r1, #0xe8
	sub     r3, r1, r0
	mov     r0, #0x18
	str     r0, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	ldr     r0, [pc, #0x1e4] @ 0x2234168, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x1dc] @ 0x2234164, (=0xd14)
	str     r1, [sp, #0xc]
	add     r2, #0x79
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	bl      Function_201d78c
	mov     r1, #0x5e
	lsl     r1, r1, #2
	ldr     r1, [r5, r1]
	mov     r0, r5
	mov     r2, #0x1
	mov     r3, r4
	bl      Function_22346c4
	mov     r0, #0x30
	str     r0, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	ldr     r0, [pc, #0x1b8] @ 0x2234168, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x1b0] @ 0x2234164, (=0xd14)
	str     r1, [sp, #0xc]
	add     r2, #0x79
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r3, #0x8
	bl      Function_201d78c
	mov     r0, #0x68
	str     r0, [sp, #0x0]
	mov     r0, #0x30
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x41
	mov     r2, #0x73
	mov     r3, r4
	bl      Function_2234694
	mov     r0, #0xd4
	str     r0, [sp, #0x0]
	mov     r0, #0x30
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x42
	mov     r2, #0x75
	mov     r3, r4
	bl      Function_2234694
	mov     r2, #0x5a
	lsl     r2, r2, #2
	ldr     r0, [r5, r2]
	add     r2, #0x10
	ldr     r2, [r5, r2]
	mov     r1, #0x3b
	bl      Function_200b1b8
	mov     r0, #0x40
	str     r0, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	ldr     r0, [pc, #0x164] @ 0x2234168, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x158] @ 0x2234164, (=0xd14)
	str     r1, [sp, #0xc]
	add     r2, #0x79
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r3, #0x8
	bl      Function_201d78c
	mov     r0, #0x68
	str     r0, [sp, #0x0]
	mov     r0, #0x40
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x41
	mov     r2, #0x72
	mov     r3, r4
	bl      Function_2234694
	mov     r0, #0xd4
	str     r0, [sp, #0x0]
	mov     r0, #0x40
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x42
	mov     r2, #0x74
	mov     r3, r4
	bl      Function_2234694
	mov     r2, #0x5a
	lsl     r2, r2, #2
	ldr     r0, [r5, r2]
	add     r2, #0x10
	ldr     r2, [r5, r2]
	mov     r1, #0x3d
	bl      Function_200b1b8
	mov     r0, #0x58
	str     r0, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	ldr     r0, [pc, #0x10c] @ 0x2234168, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x104] @ 0x2234164, (=0xd14)
	str     r1, [sp, #0xc]
	add     r2, #0x79
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r3, #0x8
	bl      Function_201d78c
	mov     r2, #0x5a
	lsl     r2, r2, #2
	ldr     r0, [r5, r2]
	add     r2, #0x10
	ldr     r2, [r5, r2]
	mov     r1, #0x3e
	bl      Function_200b1b8
	mov     r1, #0x5e
	lsl     r1, r1, #2
	mov     r0, #0x0
	ldr     r1, [r5, r1]
	mov     r2, r0
	bl      Function_2002d7c
	mov     r1, #0xe8
	sub     r3, r1, r0
	mov     r0, #0x58
	str     r0, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	ldr     r0, [pc, #0xcc] @ 0x2234168, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0xc4] @ 0x2234164, (=0xd14)
	str     r1, [sp, #0xc]
	add     r2, #0x79
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	bl      Function_201d78c
	mov     r1, #0x5e
	lsl     r1, r1, #2
	ldr     r1, [r5, r1]
	mov     r0, r5
	mov     r2, #0x2
	mov     r3, r4
	bl      Function_22346c4
	mov     r0, #0x70
	str     r0, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	ldr     r0, [pc, #0xa0] @ 0x2234168, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x98] @ 0x2234164, (=0xd14)
	str     r1, [sp, #0xc]
	add     r2, #0x79
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r3, #0x8
	bl      Function_201d78c
	mov     r0, #0x68
	str     r0, [sp, #0x0]
	mov     r0, #0x70
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x41
	mov     r2, #0x77
	mov     r3, r4
	bl      Function_2234694
	mov     r0, #0xd4
	str     r0, [sp, #0x0]
	mov     r0, #0x70
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x42
	mov     r2, #0x79
	mov     r3, r4
	bl      Function_2234694
	mov     r2, #0x5a
	lsl     r2, r2, #2
	ldr     r0, [r5, r2]
	add     r2, #0x10
	ldr     r2, [r5, r2]
	mov     r1, #0x3b
	bl      Function_200b1b8
	mov     r0, #0x80
	str     r0, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	ldr     r0, [pc, #0x4c] @ 0x2234168, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x40] @ 0x2234164, (=0xd14)
	str     r1, [sp, #0xc]
	add     r2, #0x79
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r3, #0x8
	bl      Function_201d78c
	mov     r0, #0x68
	str     r0, [sp, #0x0]
	mov     r0, #0x80
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x41
	mov     r2, #0x76
	mov     r3, r4
	bl      Function_2234694
	mov     r0, #0xd4
	str     r0, [sp, #0x0]
	mov     r0, #0x80
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x42
	mov     r2, #0x78
	mov     r3, r4
	bl      Function_2234694
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x223415c

.word 0xb89 @ 0x223415c
.word 0xf0e00 @ 0x2234160
.word 0xd14 @ 0x2234164
.word 0x10200 @ 0x2234168
.thumb
Function_223416c: @ 223416c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r0, [pc, #0x124] @ 0x2234298, (=0xb89)
	mov     r2, #0x5a
	ldrb    r0, [r5, r0]
	lsl     r2, r2, #2
	mov     r1, #0x36
	.hword  0x1e44 @ sub r4, r0, #0x1
	ldr     r0, [r5, r2]
	add     r2, #0x10
	ldr     r2, [r5, r2]
	bl      Function_200b1b8
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	ldr     r0, [pc, #0x108] @ 0x223429c, (=0xf0e00)
	add     r2, #0x79
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [pc, #0x104] @ 0x22342a0, (=0xd14)
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r3, #0x8
	bl      Function_201d78c
	mov     r2, #0x5a
	lsl     r2, r2, #2
	ldr     r0, [r5, r2]
	add     r2, #0x10
	ldr     r2, [r5, r2]
	mov     r1, #0x3f
	bl      Function_200b1b8
	mov     r1, #0x5e
	lsl     r1, r1, #2
	mov     r0, #0x0
	ldr     r1, [r5, r1]
	mov     r2, r0
	bl      Function_2002d7c
	.hword  0x1c40 @ add r0, r0, #0x1
	lsr     r1, r0, #1
	mov     r0, #0xb4
	sub     r3, r0, r1
	mov     r0, #0x18
	str     r0, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	ldr     r0, [pc, #0xd0] @ 0x22342a4, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0xc4] @ 0x22342a0, (=0xd14)
	str     r1, [sp, #0xc]
	add     r2, #0x79
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	bl      Function_201d78c
	mov     r1, #0x5e
	lsl     r1, r1, #2
	ldr     r1, [r5, r1]
	mov     r0, r5
	mov     r2, #0x3
	mov     r3, r4
	bl      Function_22346c4
	mov     r0, #0x30
	str     r0, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	ldr     r0, [pc, #0xa4] @ 0x22342a4, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x98] @ 0x22342a0, (=0xd14)
	str     r1, [sp, #0xc]
	add     r2, #0x79
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r3, #0x8
	bl      Function_201d78c
	mov     r0, #0x68
	str     r0, [sp, #0x0]
	mov     r0, #0x30
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x44
	mov     r2, #0x87
	mov     r3, r4
	bl      Function_2234694
	mov     r0, #0xd4
	str     r0, [sp, #0x0]
	mov     r0, #0x30
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x43
	mov     r2, #0x88
	mov     r3, r4
	bl      Function_2234694
	mov     r2, #0x5a
	lsl     r2, r2, #2
	ldr     r0, [r5, r2]
	add     r2, #0x10
	ldr     r2, [r5, r2]
	mov     r1, #0x3b
	bl      Function_200b1b8
	mov     r0, #0x50
	str     r0, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	ldr     r0, [pc, #0x4c] @ 0x22342a4, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x44] @ 0x22342a0, (=0xd14)
	str     r1, [sp, #0xc]
	add     r2, #0x79
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r3, #0x8
	bl      Function_201d78c
	mov     r0, #0x68
	str     r0, [sp, #0x0]
	mov     r0, #0x50
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x44
	mov     r2, #0x86
	mov     r3, r4
	bl      Function_2234694
	mov     r0, #0xd4
	str     r0, [sp, #0x0]
	mov     r0, #0x50
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x43
	mov     r2, #0x8a
	mov     r3, r4
	bl      Function_2234694
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2234296


.align 2


.word 0xb89 @ 0x2234298
.word 0xf0e00 @ 0x223429c
.word 0xd14 @ 0x22342a0
.word 0x10200 @ 0x22342a4
.thumb
Function_22342a8: @ 22342a8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r6, r1
	bl      LoadVariableAreaAdress_17
	mov     r7, r0
	ldr     r0, [pc, #0xfc] @ 0x22343bc, (=0xb89)
	mov     r2, #0x5a
	ldrb    r0, [r5, r0]
	lsl     r2, r2, #2
	mov     r1, #0x37
	.hword  0x1e44 @ sub r4, r0, #0x1
	ldr     r0, [r5, r2]
	add     r2, #0x10
	ldr     r2, [r5, r2]
	bl      Function_200b1b8
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	ldr     r0, [pc, #0xe4] @ 0x22343c0, (=0xf0e00)
	add     r2, #0x79
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [pc, #0xe0] @ 0x22343c4, (=0xd14)
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r3, #0x8
	bl      Function_201d78c
	mov     r0, r7
	mov     r1, #0x7c
	mov     r2, r4
	bl      Function_2030698
	mov     r1, r6
	bl      Function_200b32c
	mov     r6, r0
	mov     r0, #0x0
	mov     r1, r6
	mov     r2, r0
	bl      Function_2002d7c
	.hword  0x1c40 @ add r0, r0, #0x1
	lsr     r1, r0, #1
	mov     r0, #0x21
	sub     r3, r0, r1
	mov     r0, #0x18
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xac] @ 0x22343c8, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0xa0] @ 0x22343c4, (=0xd14)
	mov     r2, r6
	add     r0, r5, r0
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r6
	bl      Function_20237bc
	mov     r1, #0x5e
	lsl     r1, r1, #2
	ldr     r1, [r5, r1]
	mov     r0, r5
	mov     r2, #0x4
	mov     r3, r4
	bl      Function_22346c4
	mov     r0, #0x30
	str     r0, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	ldr     r0, [pc, #0x7c] @ 0x22343c8, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x70] @ 0x22343c4, (=0xd14)
	str     r1, [sp, #0xc]
	add     r2, #0x79
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r3, #0x8
	bl      Function_201d78c
	mov     r0, #0x6c
	str     r0, [sp, #0x0]
	mov     r0, #0x30
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x41
	mov     r2, #0x7b
	mov     r3, r4
	bl      Function_2234694
	mov     r2, #0x5a
	lsl     r2, r2, #2
	ldr     r0, [r5, r2]
	add     r2, #0x10
	ldr     r2, [r5, r2]
	mov     r1, #0x3b
	bl      Function_200b1b8
	mov     r0, #0x50
	str     r0, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	ldr     r0, [pc, #0x38] @ 0x22343c8, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x30] @ 0x22343c4, (=0xd14)
	str     r1, [sp, #0xc]
	add     r2, #0x79
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r3, #0x8
	bl      Function_201d78c
	mov     r0, #0x6c
	str     r0, [sp, #0x0]
	mov     r0, #0x50
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x41
	mov     r2, #0x7a
	mov     r3, r4
	bl      Function_2234694
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x22343ba


.align 2


.word 0xb89 @ 0x22343bc
.word 0xf0e00 @ 0x22343c0
.word 0xd14 @ 0x22343c4
.word 0x10200 @ 0x22343c8
.thumb
Function_22343cc: @ 22343cc :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r0, [pc, #0xb8] @ 0x223448c, (=0xb89)
	mov     r2, #0x5a
	ldrb    r0, [r5, r0]
	lsl     r2, r2, #2
	mov     r1, #0x38
	.hword  0x1e44 @ sub r4, r0, #0x1
	ldr     r0, [r5, r2]
	add     r2, #0x10
	ldr     r2, [r5, r2]
	bl      Function_200b1b8
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	ldr     r0, [pc, #0x9c] @ 0x2234490, (=0xf0e00)
	add     r2, #0x79
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [pc, #0x98] @ 0x2234494, (=0xd14)
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r3, #0x8
	bl      Function_201d78c
	mov     r1, #0x5e
	lsl     r1, r1, #2
	ldr     r1, [r5, r1]
	mov     r0, r5
	mov     r2, #0x5
	mov     r3, r4
	bl      Function_22346c4
	mov     r0, #0x18
	str     r0, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	ldr     r0, [pc, #0x78] @ 0x2234498, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x70] @ 0x2234494, (=0xd14)
	str     r1, [sp, #0xc]
	add     r2, #0x79
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r3, #0x8
	bl      Function_201d78c
	mov     r0, #0x70
	str     r0, [sp, #0x0]
	mov     r0, #0x18
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x45
	mov     r2, #0x8f
	mov     r3, r4
	bl      Function_2234694
	mov     r2, #0x5a
	lsl     r2, r2, #2
	ldr     r0, [r5, r2]
	add     r2, #0x10
	ldr     r2, [r5, r2]
	mov     r1, #0x3b
	bl      Function_200b1b8
	mov     r0, #0x30
	str     r0, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	ldr     r0, [pc, #0x38] @ 0x2234498, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x2c] @ 0x2234494, (=0xd14)
	str     r1, [sp, #0xc]
	add     r2, #0x79
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r3, #0x8
	bl      Function_201d78c
	mov     r0, #0x70
	str     r0, [sp, #0x0]
	mov     r0, #0x30
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x45
	mov     r2, #0x8e
	mov     r3, r4
	bl      Function_2234694
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x223448c

.word 0xb89 @ 0x223448c
.word 0xf0e00 @ 0x2234490
.word 0xd14 @ 0x2234494
.word 0x10200 @ 0x2234498
.thumb
Function_223449c: @ 223449c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	bl      LoadVariableAreaAdress_1d
	mov     r6, r0
	ldr     r0, [pc, #0x164] @ 0x2234614, (=0xb89)
	mov     r2, #0x5a
	ldrb    r0, [r5, r0]
	lsl     r2, r2, #2
	mov     r1, #0x46
	.hword  0x1e44 @ sub r4, r0, #0x1
	ldr     r0, [r5, r2]
	add     r2, #0x10
	ldr     r2, [r5, r2]
	bl      Function_200b1b8
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	ldr     r0, [pc, #0x148] @ 0x2234618, (=0xf0e00)
	add     r2, #0x79
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [pc, #0x144] @ 0x223461c, (=0xd14)
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r3, #0x8
	bl      Function_201d78c
	ldr     r0, [pc, #0x13c] @ 0x2234620, (=0xb18)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	mov     r2, r1
	bl      Function_200c0b0
	mov     r2, #0x5a
	lsl     r2, r2, #2
	ldr     r0, [r5, r2]
	add     r2, #0x8
	ldr     r2, [r5, r2]
	mov     r1, #0x47
	bl      Function_200b1b8
	mov     r2, #0x5e
	ldr     r0, [pc, #0x120] @ 0x2234620, (=0xb18)
	lsl     r2, r2, #2
	ldr     r1, [r5, r2]
	sub     r2, #0x8
	ldr     r0, [r5, r0]
	ldr     r2, [r5, r2]
	bl      Function_200c388
	mov     r0, #0x18
	str     r0, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	ldr     r0, [pc, #0x10c] @ 0x2234624, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0xfc] @ 0x223461c, (=0xd14)
	str     r1, [sp, #0xc]
	add     r2, #0x79
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r3, #0x8
	bl      Function_201d78c
	mov     r0, r6
	mov     r1, r4
	mov     r2, #0xa
	bl      Function_202ad2c
	mov     r2, r0
	mov     r0, #0x18
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x48
	mov     r3, #0xa4
	bl      Function_2234708
	ldr     r0, [pc, #0xd8] @ 0x2234620, (=0xb18)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	mov     r2, #0x1
	bl      Function_200c0b0
	mov     r2, #0x5a
	lsl     r2, r2, #2
	ldr     r0, [r5, r2]
	add     r2, #0x8
	ldr     r2, [r5, r2]
	mov     r1, #0x47
	bl      Function_200b1b8
	mov     r2, #0x5e
	ldr     r0, [pc, #0xb8] @ 0x2234620, (=0xb18)
	lsl     r2, r2, #2
	ldr     r1, [r5, r2]
	sub     r2, #0x8
	ldr     r0, [r5, r0]
	ldr     r2, [r5, r2]
	bl      Function_200c388
	mov     r0, #0x30
	str     r0, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	ldr     r0, [pc, #0xa4] @ 0x2234624, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x98] @ 0x223461c, (=0xd14)
	str     r1, [sp, #0xc]
	add     r2, #0x79
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r3, #0x8
	bl      Function_201d78c
	mov     r0, r6
	mov     r1, r4
	mov     r2, #0xb
	bl      Function_202ad2c
	mov     r2, r0
	mov     r0, #0x30
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x48
	mov     r3, #0xa4
	bl      Function_2234708
	ldr     r0, [pc, #0x70] @ 0x2234620, (=0xb18)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	mov     r2, #0x2
	bl      Function_200c0b0
	mov     r2, #0x5a
	lsl     r2, r2, #2
	ldr     r0, [r5, r2]
	add     r2, #0x8
	ldr     r2, [r5, r2]
	mov     r1, #0x47
	bl      Function_200b1b8
	mov     r2, #0x5e
	ldr     r0, [pc, #0x54] @ 0x2234620, (=0xb18)
	lsl     r2, r2, #2
	ldr     r1, [r5, r2]
	sub     r2, #0x8
	ldr     r0, [r5, r0]
	ldr     r2, [r5, r2]
	bl      Function_200c388
	mov     r0, #0x48
	str     r0, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	ldr     r0, [pc, #0x40] @ 0x2234624, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x30] @ 0x223461c, (=0xd14)
	str     r1, [sp, #0xc]
	add     r2, #0x79
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r3, #0x8
	bl      Function_201d78c
	mov     r0, r6
	mov     r1, r4
	mov     r2, #0xc
	bl      Function_202ad2c
	mov     r2, r0
	mov     r1, #0x48
	mov     r0, r5
	mov     r3, #0xa4
	str     r1, [sp, #0x0]
	bl      Function_2234708
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x2234614

.word 0xb89 @ 0x2234614
.word 0xf0e00 @ 0x2234618
.word 0xd14 @ 0x223461c
.word 0xb18 @ 0x2234620
.word 0x10200 @ 0x2234624
.thumb
Function_2234628: @ 2234628 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r4, #0x0
	mov     r5, r0
	mov     r7, #0x1
	mov     r6, r4
.thumb
branch_2234634: @ 2234634 :thumb
	mov     r0, #0xb6
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r2, r4
	str     r7, [sp, #0x0]
	mov     r1, r0
	str     r7, [sp, #0x4]
	add     r1, #0xc
	str     r1, [sp, #0x8]
	str     r6, [sp, #0xc]
	str     r6, [sp, #0x10]
	ldrh    r1, [r0, #0x0]
	add     r2, #0x1a
	lsl     r2, r2, #24
	lsl     r1, r1, #21
	lsr     r1, r1, #24
	str     r1, [sp, #0x14]
	ldrh    r0, [r0, #0x2]
	mov     r1, #0x6
	lsr     r2, r2, #24
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x18]
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r3, r6
	bl      Function_20198e8
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x5
	blt     branch_2234634
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r1, #0x6
	mov     r0, #0x57
	str     r1, [sp, #0x8]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r2, #0x1a
	mov     r3, #0x0
	bl      Function_2019e2c
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x2234692


.align 2, 0


.thumb
Function_2234694: @ 2234694 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r6, r2
	mov     r7, r3
	mov     r4, r1
	bl      LoadVariableAreaAdress_17
	mov     r1, r6
	mov     r2, r7
	bl      Function_2030698
	mov     r2, r0
	ldr     r0, [sp, #0x1c]
	ldr     r3, [sp, #0x18]
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, r4
	bl      Function_2234708
	pop     {r3-r7,pc}
@ 0x22346c2


.align 2, 0


.thumb
Function_22346c4: @ 22346c4 :thumb
	push    {r3-r7,lr}
	mov     r4, r2
	mov     r5, r0
	mov     r6, r1
	mov     r7, r3
	cmp     r4, #0x6
	bcc     branch_22346d6
	bl      ErrorHandling
.thumb
branch_22346d6: @ 22346d6 :thumb
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	bl      LoadVariableAreaAdress_17
	ldr     r1, [pc, #0x20] @ 0x2234704, (=0x2238998)
	lsl     r2, r4, #2
	ldr     r1, [r1, r2]
	mov     r2, r7
	bl      Function_2030698
	cmp     r0, #0x0
	bne     branch_22346f4
	mov     r1, #0x39
	b       branch_22346f6
@ 0x22346f4

.thumb
branch_22346f4: @ 22346f4 :thumb
	mov     r1, #0x3a
.thumb
branch_22346f6: @ 22346f6 :thumb
	mov     r0, #0x5a
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r2, r6
	bl      Function_200b1b8
	pop     {r3-r7,pc}
@ 0x2234704

.word 0x2238998 @ 0x2234704
.thumb
Function_2234708: @ 2234708 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x64] @ 0x223477c, (=0xb18)
	mov     r6, r1
	mov     r4, r3
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	mov     r3, #0x4
	bl      Function_200b60c
	mov     r2, #0x5a
	lsl     r2, r2, #2
	ldr     r0, [r5, r2]
	add     r2, #0x8
	ldr     r2, [r5, r2]
	mov     r1, r6
	bl      Function_200b1b8
	mov     r2, #0x5e
	ldr     r0, [pc, #0x44] @ 0x223477c, (=0xb18)
	lsl     r2, r2, #2
	ldr     r1, [r5, r2]
	sub     r2, #0x8
	ldr     r0, [r5, r0]
	ldr     r2, [r5, r2]
	bl      Function_200c388
	mov     r1, #0x5e
	lsl     r1, r1, #2
	mov     r0, #0x0
	ldr     r1, [r5, r1]
	mov     r2, r0
	bl      Function_2002d7c
	.hword  0x1c40 @ add r0, r0, #0x1
	lsr     r0, r0, #1
	sub     r3, r4, r0
	ldr     r0, [sp, #0x20]
	mov     r2, #0xff
	str     r0, [sp, #0x0]
	str     r2, [sp, #0x4]
	ldr     r0, [pc, #0x1c] @ 0x2234780, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x18] @ 0x2234784, (=0xd14)
	str     r1, [sp, #0xc]
	add     r2, #0x79
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	bl      Function_201d78c
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x223477a


.align 2


.word 0xb18 @ 0x223477c
.word 0x10200 @ 0x2234780
.word 0xd14 @ 0x2234784
.thumb
Function_2234788: @ 2234788 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	str     r2, [sp, #0x1c]
	ldr     r4, [sp, #0x38]
	mov     r5, r0
	mov     r7, r1
	mov     r6, r3
	cmp     r4, #0x4
	bcc     branch_223479e
	bl      ErrorHandling
.thumb
branch_223479e: @ 223479e :thumb
	cmp     r4, #0x3
	bne     branch_22347a4
	mov     r4, #0x1
.thumb
branch_22347a4: @ 22347a4 :thumb
	cmp     r4, #0x2
	bcs     branch_22347ea
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r1, #0x6
	mov     r0, #0xb2
	str     r1, [sp, #0x4]
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r2, r7
	add     r0, #0xc
	str     r0, [sp, #0x8]
	lsl     r0, r4, #20
	lsr     r0, r0, #16
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0xc]
	mov     r0, r6
	mul     r0, r1
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x10]
	mov     r0, #0x20
	str     r0, [sp, #0x14]
	mov     r0, #0x12
	str     r0, [sp, #0x18]
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r3, [sp, #0x1c]
	bl      Function_20198e8
	b       branch_2234828
@ 0x22347ea

.thumb
branch_22347ea: @ 22347ea :thumb
	mov     r0, #0x10
	mov     r2, #0xb2
	str     r0, [sp, #0x0]
	mov     r1, #0x6
	str     r1, [sp, #0x4]
	lsl     r2, r2, #4
	ldr     r3, [r5, r2]
	mov     r2, #0x12
	add     r3, #0xc
	lsl     r2, r2, #6
	add     r2, r3, r2
	str     r2, [sp, #0x8]
	mov     r2, #0x0
	str     r2, [sp, #0xc]
	mov     r2, r6
	mul     r2, r1
	lsl     r2, r2, #16
	lsr     r2, r2, #16
	lsl     r2, r2, #24
	lsr     r2, r2, #24
	str     r2, [sp, #0x10]
	str     r0, [sp, #0x14]
	mov     r0, #0x12
	str     r0, [sp, #0x18]
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r3, [sp, #0x1c]
	mov     r2, r7
	bl      Function_20198e8
.thumb
branch_2234828: @ 2234828 :thumb
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	add     r0, r6, #0x4
	mov     r1, #0x6
	lsl     r0, r0, #24
	str     r1, [sp, #0x4]
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r3, [sp, #0x1c]
	mov     r2, r7
	bl      Function_2019e2c
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x223484a


.align 2, 0


.thumb
Function_223484c: @ 223484c :thumb
	ldr     r2, [pc, #0xa8] @ 0x22348f8, (=0x10200)
	cmp     r0, #0x1b
	str     r2, [r1, #0x0]
	bhi     branch_22348f4
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2234860

Jumppoints_2234860:
.hword branch_22348f4 - Jumppoints_2234860 - 2
.hword branch_2234898 - Jumppoints_2234860 - 2
.hword branch_22348a0 - Jumppoints_2234860 - 2
.hword branch_22348a0 - Jumppoints_2234860 - 2
.hword branch_22348a0 - Jumppoints_2234860 - 2
.hword branch_22348a0 - Jumppoints_2234860 - 2
.hword branch_22348a0 - Jumppoints_2234860 - 2
.hword branch_22348a0 - Jumppoints_2234860 - 2
.hword branch_22348c0 - Jumppoints_2234860 - 2
.hword branch_22348a8 - Jumppoints_2234860 - 2
.hword branch_22348ac - Jumppoints_2234860 - 2
.hword branch_22348b0 - Jumppoints_2234860 - 2
.hword branch_22348b4 - Jumppoints_2234860 - 2
.hword branch_22348b8 - Jumppoints_2234860 - 2
.hword branch_22348bc - Jumppoints_2234860 - 2
.hword branch_22348c8 - Jumppoints_2234860 - 2
.hword branch_22348f0 - Jumppoints_2234860 - 2
.hword branch_22348f4 - Jumppoints_2234860 - 2
.hword branch_22348cc - Jumppoints_2234860 - 2
.hword branch_22348d4 - Jumppoints_2234860 - 2
.hword branch_22348d8 - Jumppoints_2234860 - 2
.hword branch_22348e0 - Jumppoints_2234860 - 2
.hword branch_22348e4 - Jumppoints_2234860 - 2
.hword branch_22348ec - Jumppoints_2234860 - 2
.hword branch_22348e4 - Jumppoints_2234860 - 2
.hword branch_22348ec - Jumppoints_2234860 - 2
.hword branch_22348e4 - Jumppoints_2234860 - 2
.hword branch_22348ec - Jumppoints_2234860 - 2
.thumb
branch_2234898: @ 2234898 :thumb
	ldr     r2, [pc, #0x60] @ 0x22348fc, (=0x20e00)
	mov     r0, #0x24
	str     r2, [r1, #0x0]
	bx      lr
@ 0x22348a0

.thumb
branch_22348a0: @ 22348a0 :thumb
	ldr     r2, [pc, #0x58] @ 0x22348fc, (=0x20e00)
	mov     r0, #0x1b
	str     r2, [r1, #0x0]
	bx      lr
@ 0x22348a8

.thumb
branch_22348a8: @ 22348a8 :thumb
	mov     r0, #0x60
	bx      lr
@ 0x22348ac

.thumb
branch_22348ac: @ 22348ac :thumb
	mov     r0, #0x61
	bx      lr
@ 0x22348b0

.thumb
branch_22348b0: @ 22348b0 :thumb
	mov     r0, #0x5f
	bx      lr
@ 0x22348b4

.thumb
branch_22348b4: @ 22348b4 :thumb
	mov     r0, #0x63
	bx      lr
@ 0x22348b8

.thumb
branch_22348b8: @ 22348b8 :thumb
	mov     r0, #0x64
	bx      lr
@ 0x22348bc

.thumb
branch_22348bc: @ 22348bc :thumb
	mov     r0, #0x62
	bx      lr
@ 0x22348c0

.thumb
branch_22348c0: @ 22348c0 :thumb
	ldr     r2, [pc, #0x38] @ 0x22348fc, (=0x20e00)
	mov     r0, #0x1d
	str     r2, [r1, #0x0]
	bx      lr
@ 0x22348c8

.thumb
branch_22348c8: @ 22348c8 :thumb
	mov     r0, #0x1c
	bx      lr
@ 0x22348cc

.thumb
branch_22348cc: @ 22348cc :thumb
	ldr     r2, [pc, #0x2c] @ 0x22348fc, (=0x20e00)
	mov     r0, #0x1f
	str     r2, [r1, #0x0]
	bx      lr
@ 0x22348d4

.thumb
branch_22348d4: @ 22348d4 :thumb
	mov     r0, #0x1e
	bx      lr
@ 0x22348d8

.thumb
branch_22348d8: @ 22348d8 :thumb
	ldr     r2, [pc, #0x20] @ 0x22348fc, (=0x20e00)
	mov     r0, #0x21
	str     r2, [r1, #0x0]
	bx      lr
@ 0x22348e0

.thumb
branch_22348e0: @ 22348e0 :thumb
	mov     r0, #0x20
	bx      lr
@ 0x22348e4

.thumb
branch_22348e4: @ 22348e4 :thumb
	ldr     r2, [pc, #0x14] @ 0x22348fc, (=0x20e00)
	mov     r0, #0x23
	str     r2, [r1, #0x0]
	bx      lr
@ 0x22348ec

.thumb
branch_22348ec: @ 22348ec :thumb
	mov     r0, #0x22
	bx      lr
@ 0x22348f0

.thumb
branch_22348f0: @ 22348f0 :thumb
	mov     r0, #0x4f
	bx      lr
@ 0x22348f4

.thumb
branch_22348f4: @ 22348f4 :thumb
	mov     r0, #0x5c
	bx      lr
@ 0x22348f8

.word 0x10200 @ 0x22348f8
.word 0x20e00 @ 0x22348fc
.thumb
Function_2234900: @ 2234900 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r6, r1
	mov     r5, r0
	mov     r0, r6
	mov     r1, #0x0
	str     r2, [sp, #0x10]
	mov     r4, r3
	bl      Function_201ada4
	ldr     r0, [pc, #0x68] @ 0x2234980, (=0x2238934)
	mov     r2, #0x8
	ldrb    r7, [r0, r4]
	ldr     r0, [sp, #0x10]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [sp, #0x14]
	ldr     r0, [r5, #0x0]
	ldr     r1, [sp, #0x14]
	bl      Function_202ad2c
	cmp     r0, #0x0
	bne     branch_2234930
	ldr     r4, [pc, #0x54] @ 0x2234984, (=0x50600)
	b       branch_2234934
@ 0x2234930

.thumb
branch_2234930: @ 2234930 :thumb
	mov     r4, #0xc1
	lsl     r4, r4, #10
.thumb
branch_2234934: @ 2234934 :thumb
	ldr     r1, [sp, #0x14]
	mov     r0, r5
	bl      Function_2234f68
	mov     r2, #0x5a
	lsl     r2, r2, #2
	ldr     r0, [r5, r2]
	add     r2, #0x8
	ldr     r2, [r5, r2]
	mov     r1, #0x2a
	bl      Function_200b1b8
	mov     r2, #0x5e
	ldr     r0, [pc, #0x38] @ 0x2234988, (=0xb18)
	lsl     r2, r2, #2
	ldr     r1, [r5, r2]
	sub     r2, #0x8
	ldr     r0, [r5, r0]
	ldr     r2, [r5, r2]
	bl      Function_200c388
	str     r7, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	str     r4, [sp, #0x8]
	mov     r3, #0x0
	str     r3, [sp, #0xc]
	add     r2, #0x79
	ldr     r2, [r5, r2]
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_201d78c
	mov     r0, r6
	bl      Function_201a9a4
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2234980

.word 0x2238934 @ 0x2234980
.word 0x50600 @ 0x2234984
.word 0xb18 @ 0x2234988
.thumb
Function_223498c: @ 223498c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r1
	.hword  0x1e51 @ sub r1, r2, #0x1
	mov     r6, r0
	mov     r4, r3
	bl      Function_2234fa8
	str     r0, [sp, #0xc]
	ldr     r1, [sp, #0xc]
	mov     r0, r6
	bl      Function_222dd20
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x5c] @ 0x2234a08, (=0x2238934)
	ldrb    r0, [r0, r4]
	mov     r4, #0x0
	lsl     r0, r0, #16
	lsr     r7, r0, #16
.thumb
branch_22349b2: @ 22349b2 :thumb
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_201ada4
	cmp     r4, #0x0
	bne     branch_22349d2
	ldr     r0, [sp, #0x8]
	ldr     r1, [pc, #0x48] @ 0x2234a0c, (=0xb08)
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r1, r6, r1
	mov     r2, #0x0
	mov     r3, r7
	bl      Function_222eb1c
	b       branch_22349f6
@ 0x22349d2

.thumb
branch_22349d2: @ 22349d2 :thumb
	ldr     r0, [sp, #0xc]
	add     r0, #0x21
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_22349e0
	mov     r0, #0x8
	b       branch_22349e2
@ 0x22349e0

.thumb
branch_22349e0: @ 22349e0 :thumb
	mov     r0, #0x1
.thumb
branch_22349e2: @ 22349e2 :thumb
	ldr     r1, [pc, #0x28] @ 0x2234a0c, (=0xb08)
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r1, r6, r1
	mov     r2, #0x0
	mov     r3, r7
	bl      Function_222ead0
.thumb
branch_22349f6: @ 22349f6 :thumb
	mov     r0, r5
	bl      Function_201a9a4
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x2
	blt     branch_22349b2
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2234a08

.word 0x2238934 @ 0x2234a08
.word 0xb08 @ 0x2234a0c
.thumb
Function_2234a10: @ 2234a10 :thumb
	push    {r3,r4}
	ldr     r1, [pc, #0x4c] @ 0x2234a60, (=0xb89)
	ldrb    r2, [r0, r1]
	cmp     r2, #0x0
	beq     branch_2234a5c
	add     r2, r1, #0x5
	ldrb    r2, [r0, r2]
	add     r3, r2, #0x1
	add     r2, r1, #0x5
	strb    r3, [r0, r2]
	ldrb    r4, [r0, r2]
	add     r2, r1, #0x1
	ldrb    r3, [r0, r2]
	ldr     r2, [pc, #0x38] @ 0x2234a64, (=0x2238938)
	ldrb    r2, [r2, r3]
	cmp     r4, r2
	bcc     branch_2234a5c
	mov     r3, #0x0
	add     r2, r1, #0x5
	strb    r3, [r0, r2]
	add     r2, r1, #0x1
	ldrb    r2, [r0, r2]
	add     r4, r2, #0x1
	add     r2, r1, #0x1
	strb    r4, [r0, r2]
	mov     r2, #0x1
	add     r4, r1, #0x4
	strb    r2, [r0, r4]
	add     r4, r1, #0x1
	ldrb    r4, [r0, r4]
	cmp     r4, #0x4
	bcc     branch_2234a5c
	add     r4, r1, #0x5
	strb    r3, [r0, r4]
	add     r4, r1, #0x1
	strb    r3, [r0, r4]
	.hword  0x1c89 @ add r1, r1, #0x2
	strb    r2, [r0, r1]
.thumb
branch_2234a5c: @ 2234a5c :thumb
	pop     {r3,r4}
	bx      lr
@ 0x2234a60

.word 0xb89 @ 0x2234a60
.word 0x2238938 @ 0x2234a64
.thumb
Function_2234a68: @ 2234a68 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x12c
	ldr     r6, [pc, #0x25c] @ 0x2234ccc, (=0x2238b38)
	str     r2, [sp, #0x2c]
	mov     r5, r0
	mov     r4, r1
	add     r3, sp, #0x9c
	mov     r2, #0x12
.thumb
branch_2234a78: @ 2234a78 :thumb
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_2234a78
	mov     r0, #0x10
	mov     r1, #0x0
	bl      Function_201ff74
	mov     r0, #0x1e
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x2c]
	mov     r1, r4
	str     r0, [sp, #0x8]
	mov     r0, #0xae
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r2, #0x2a
	mov     r3, #0x0
	bl      Function_2009a4c
	ldr     r1, [pc, #0x228] @ 0x2234cd0, (=0xd24)
	mov     r2, #0x2b
	str     r0, [r5, r1]
	mov     r0, #0x1e
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x2c]
	mov     r1, r4
	str     r0, [sp, #0xc]
	mov     r0, #0xaf
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r3, #0x0
	bl      Function_2009b04
	ldr     r1, [pc, #0x208] @ 0x2234cd4, (=0xd28)
	mov     r2, #0x28
	str     r0, [r5, r1]
	mov     r0, #0x1e
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x2c]
	mov     r1, r4
	str     r0, [sp, #0x8]
	mov     r0, #0xb
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	mov     r3, #0x0
	bl      Function_2009bc4
	ldr     r1, [pc, #0x1ec] @ 0x2234cd8, (=0xd2c)
	mov     r2, #0x29
	str     r0, [r5, r1]
	mov     r0, #0x1e
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x2c]
	mov     r1, r4
	str     r0, [sp, #0x8]
	mov     r0, #0xb1
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r3, #0x0
	bl      Function_2009bc4
	mov     r1, #0xd3
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	sub     r1, #0xc
	ldr     r0, [r5, r1]
	bl      Function_200a450
	cmp     r0, #0x0
	bne     branch_2234b1e
	bl      ErrorHandling
.thumb
branch_2234b1e: @ 2234b1e :thumb
	ldr     r0, [pc, #0x1b4] @ 0x2234cd4, (=0xd28)
	ldr     r0, [r5, r0]
	bl      Function_200a640
	cmp     r0, #0x0
	bne     branch_2234b2e
	bl      ErrorHandling
.thumb
branch_2234b2e: @ 2234b2e :thumb
	ldr     r0, [pc, #0x1a0] @ 0x2234cd0, (=0xd24)
	ldr     r0, [r5, r0]
	bl      Function_2009d4c
	ldr     r0, [pc, #0x19c] @ 0x2234cd4, (=0xd28)
	ldr     r0, [r5, r0]
	bl      Function_2009d4c
	mov     r1, #0x1e
	mov     r0, r1
	mov     r3, #0xae
	str     r1, [sp, #0x0]
	sub     r0, #0x1f
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
	add     r3, #0xc
	str     r2, [sp, #0x1c]
	ldr     r2, [r5, r3]
	mov     r3, r1
	str     r2, [sp, #0x20]
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
	add     r0, sp, #0x78
	mov     r2, r1
	bl      Function_20093b4
	mov     r0, #0x0
	add     r4, sp, #0x9c
	ldr     r7, [pc, #0x15c] @ 0x2234cdc, (=0x2238930)
	str     r0, [sp, #0x34]
	str     r4, [sp, #0x30]
	mov     r6, r5
.thumb
branch_2234b86: @ 2234b86 :thumb
	mov     r0, #0x63
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	str     r0, [r4, #0x0]
	add     r0, sp, #0x78
	str     r0, [r4, #0x4]
	ldr     r0, [sp, #0x2c]
	str     r0, [r4, #0x2c]
	ldr     r0, [sp, #0x30]
	bl      Function_2021aa0
	ldr     r1, [pc, #0x140] @ 0x2234ce0, (=0xd34)
	str     r0, [r6, r1]
	mov     r0, r1
	ldrb    r1, [r7, #0x0]
	ldr     r0, [r6, r0]
	bl      Function_2021d6c
	ldr     r0, [sp, #0x30]
	add     r4, #0x30
	add     r0, #0x30
	str     r0, [sp, #0x30]
	ldr     r0, [sp, #0x34]
	.hword  0x1d36 @ add r6, r6, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1c7f @ add r7, r7, #0x1
	str     r0, [sp, #0x34]
	cmp     r0, #0x3
	blt     branch_2234b86
	ldr     r1, [sp, #0x2c]
	mov     r0, #0x2
	bl      Function_2002bb8
	add     r0, sp, #0x68
	bl      Function_201a7a0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	add     r1, sp, #0x68
	mov     r2, #0x8
	mov     r3, #0x2
	bl      Function_201a870
	ldr     r1, [sp, #0x2c]
	mov     r0, #0x40
	bl      Function_2023790
	mov     r6, r0
	mov     r0, #0x5a
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x49
	mov     r2, r6
	bl      Function_200b1b8
	mov     r1, #0x5e
	lsl     r1, r1, #2
	mov     r0, #0x0
	ldr     r1, [r5, r1]
	mov     r2, r0
	bl      Function_2002d7c
	.hword  0x1c40 @ add r0, r0, #0x1
	lsr     r0, r0, #1
	mov     r3, #0x0
	neg     r4, r0
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xc8] @ 0x2234ce4, (=0x10200)
	mov     r1, #0x2
	str     r0, [sp, #0x8]
	add     r0, sp, #0x68
	mov     r2, r6
	str     r3, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r6
	bl      Function_20237bc
	ldr     r1, [sp, #0x2c]
	add     r0, sp, #0x68
	bl      Function_2012b20
	mov     r1, #0x2
	mov     r6, r0
	bl      Function_2012b58
	mov     r3, #0x35
	lsl     r3, r3, #6
	mov     r1, #0x1
	mov     r2, #0x2
	add     r3, r5, r3
	bl      Function_201ed94
	cmp     r0, #0x0
	bne     branch_2234c54
	bl      ErrorHandling
.thumb
branch_2234c54: @ 2234c54 :thumb
	mov     r0, #0xb2
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	str     r0, [sp, #0x38]
	add     r0, sp, #0x68
	str     r0, [sp, #0x3c]
	mov     r0, #0x63
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	str     r0, [sp, #0x40]
	ldr     r0, [pc, #0x68] @ 0x2234cd4, (=0xd28)
	ldr     r0, [r5, r0]
	bl      Function_200a72c
	str     r0, [sp, #0x44]
	ldr     r0, [pc, #0x70] @ 0x2234ce8, (=0xd38)
	ldr     r1, [r5, r0]
	add     r0, #0xc
	str     r1, [sp, #0x48]
	ldr     r0, [r5, r0]
	mov     r1, r6
	str     r0, [sp, #0x4c]
	mov     r0, #0x7
	mvn     r0, r0
	str     r0, [sp, #0x54]
	mov     r0, #0x0
	str     r0, [sp, #0x58]
	str     r0, [sp, #0x5c]
	mov     r0, #0x2
	str     r0, [sp, #0x60]
	ldr     r0, [sp, #0x2c]
	str     r4, [sp, #0x50]
	str     r0, [sp, #0x64]
	add     r0, sp, #0x38
	bl      Function_2012b60
	ldr     r1, [pc, #0x4c] @ 0x2234cec, (=0xd4c)
	str     r0, [r5, r1]
	mov     r0, r6
	bl      Function_2012b48
	add     r0, sp, #0x68
	bl      Function_201a8fc
	mov     r0, #0x2
	bl      Function_2002c60
	ldr     r0, [sp, #0x2c]
	ldr     r2, [pc, #0x38] @ 0x2234cf0, (=0x2234e41)
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x38] @ 0x2234cf4, (=0x223895c)
	mov     r1, #0x3
	mov     r3, r5
	bl      Function_2023fcc
	ldr     r1, [pc, #0x30] @ 0x2234cf8, (=0xd5c)
	str     r0, [r5, r1]
	add     sp, #0x12c
	pop     {r4-r7,pc}
@ 0x2234ccc

.word 0x2238b38 @ 0x2234ccc
.word 0xd24 @ 0x2234cd0
.word 0xd28 @ 0x2234cd4
.word 0xd2c @ 0x2234cd8
.word 0x2238930 @ 0x2234cdc
.word 0xd34 @ 0x2234ce0
.word 0x10200 @ 0x2234ce4
.word 0xd38 @ 0x2234ce8
.word 0xd4c @ 0x2234cec
.word Function_2234e40+1 @ =0x2234e41, 0x2234cf0
.word 0x223895c @ 0x2234cf4
.word 0xd5c @ 0x2234cf8
.thumb
Function_2234cfc: @ 2234cfc :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x54] @ 0x2234d58, (=0xd5c)
	ldr     r0, [r5, r0]
	bl      Function_2024034
	ldr     r0, [pc, #0x50] @ 0x2234d5c, (=0xd4c)
	ldr     r0, [r5, r0]
	bl      Function_2012bd8
	mov     r0, #0x35
	lsl     r0, r0, #6
	add     r0, r5, r0
	bl      Function_201ee28
	ldr     r7, [pc, #0x44] @ 0x2234d60, (=0xd34)
	mov     r6, #0x0
	mov     r4, r5
.thumb
branch_2234d20: @ 2234d20 :thumb
	ldr     r0, [r4, r7]
	bl      Function_2021bd4
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x3
	blt     branch_2234d20
	ldr     r0, [pc, #0x34] @ 0x2234d64, (=0xd24)
	ldr     r0, [r5, r0]
	bl      Function_200a4e4
	ldr     r0, [pc, #0x30] @ 0x2234d68, (=0xd28)
	ldr     r0, [r5, r0]
	bl      Function_200a6dc
	mov     r7, #0xae
	ldr     r6, [pc, #0x20] @ 0x2234d64, (=0xd24)
	mov     r4, #0x0
	lsl     r7, r7, #2
.thumb
branch_2234d46: @ 2234d46 :thumb
	ldr     r0, [r5, r7]
	ldr     r1, [r5, r6]
	bl      Function_2009d68
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_2234d46
	pop     {r3-r7,pc}
@ 0x2234d58

.word 0xd5c @ 0x2234d58
.word 0xd4c @ 0x2234d5c
.word 0xd34 @ 0x2234d60
.word 0xd24 @ 0x2234d64
.word 0xd28 @ 0x2234d68
.thumb
Function_2234d6c: @ 2234d6c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, #0xd5
	mov     r1, #0x1
	lsl     r0, r0, #4
	str     r1, [r5, r0]
	mov     r0, #0x10
	bl      Function_201ff74
	ldr     r0, [pc, #0x18] @ 0x2234d98, (=0xd54)
	mov     r4, #0x0
	ldr     r6, [pc, #0x18] @ 0x2234d9c, (=0xb18)
	str     r4, [r5, r0]
.thumb
branch_2234d86: @ 2234d86 :thumb
	add     r0, r5, r6
	mov     r1, r4
	bl      Function_2234e50
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x3
	blt     branch_2234d86
	pop     {r4-r6,pc}
@ 0x2234d96


.align 2


.word 0xd54 @ 0x2234d98
.word 0xb18 @ 0x2234d9c
.thumb
Function_2234da0: @ 2234da0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xd5
	lsl     r0, r0, #4
	ldr     r1, [r4, r0]
	cmp     r1, #0x2
	bne     branch_2234dc2
	sub     r0, #0x18
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_2021cac
	ldr     r0, [pc, #0x18] @ 0x2234dd4, (=0xd4c)
	mov     r1, #0x1
	ldr     r0, [r4, r0]
	bl      Function_20129d0
.thumb
branch_2234dc2: @ 2234dc2 :thumb
	mov     r0, #0xd5
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	mov     r0, #0x10
	bl      Function_201ff74
	pop     {r4,pc}
@ 0x2234dd2


.align 2


.word 0xd4c @ 0x2234dd4
.thumb
Function_2234dd8: @ 2234dd8 :thumb
	push    {r3-r7,lr}
	mov     r1, #0xd5
	mov     r5, r0
	lsl     r1, r1, #4
	ldr     r0, [r5, r1]
	cmp     r0, #0x0
	bne     branch_2234dea
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2234dea

.thumb
branch_2234dea: @ 2234dea :thumb
	mov     r2, #0x3
	add     r0, r1, #0x4
	str     r2, [r5, r0]
	mov     r0, r1
	mov     r2, #0xff
	add     r0, #0x8
	add     r1, #0xc
	str     r2, [r5, r0]
	ldr     r0, [r5, r1]
	bl      Function_202404c
	mov     r7, #0xd5
	ldr     r6, [pc, #0x30] @ 0x2234e34, (=0xb18)
	mov     r4, #0x0
	lsl     r7, r7, #4
.thumb
branch_2234e08: @ 2234e08 :thumb
	ldr     r0, [r5, r7]
	cmp     r0, #0x2
	bne     branch_2234e12
	cmp     r4, #0x1
	beq     branch_2234e2a
.thumb
branch_2234e12: @ 2234e12 :thumb
	ldr     r2, [pc, #0x24] @ 0x2234e38, (=0xd54)
	ldr     r3, [pc, #0x24] @ 0x2234e3c, (=0xd58)
	ldr     r2, [r5, r2]
	ldr     r3, [r5, r3]
	add     r0, r5, r6
	mov     r1, r4
	bl      Function_2234e8c
	cmp     r0, #0x1
	bne     branch_2234e2a
	add     r0, r4, #0x1
	pop     {r3-r7,pc}
@ 0x2234e2a

.thumb
branch_2234e2a: @ 2234e2a :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x3
	blt     branch_2234e08
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2234e34

.word 0xb18 @ 0x2234e34
.word 0xd54 @ 0x2234e38
.word 0xd58 @ 0x2234e3c
.thumb
Function_2234e40: @ 2234e40 :thumb
	ldr     r3, [pc, #0x8] @ 0x2234e4c, (=0xd54)
	str     r0, [r2, r3]
	add     r0, r3, #0x4
	str     r1, [r2, r0]
	bx      lr
@ 0x2234e4a


.align 2


.word 0xd54 @ 0x2234e4c
.thumb
Function_2234e50: @ 2234e50 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, #0x87
	ldr     r1, [pc, #0x2c] @ 0x2234e88, (=0x2238930)
	lsl     r0, r0, #2
	add     r6, r5, r0
	lsl     r7, r4, #2
	ldrb    r1, [r1, r4]
	ldr     r0, [r6, r7]
	bl      Function_2021d6c
	ldr     r0, [r6, r7]
	mov     r1, #0x4
	bl      Function_2021e50
	cmp     r4, #0x1
	bne     branch_2234e86
	mov     r0, #0x8d
	mov     r1, #0x11
	lsl     r0, r0, #2
	mvn     r1, r1
	mov     r2, r1
	ldr     r0, [r5, r0]
	add     r2, #0xa
	bl      Function_20128c4
.thumb
branch_2234e86: @ 2234e86 :thumb
	pop     {r3-r7,pc}
@ 0x2234e88

.word 0x2238930 @ 0x2234e88
.thumb
Function_2234e8c: @ 2234e8c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	mov     r5, r1
	mov     r6, r3
	str     r0, [sp, #0x8]
	cmp     r2, r5
	bne     branch_2234f0e
	mov     r1, #0x87
	ldr     r0, [sp, #0x0]
	lsl     r1, r1, #2
	lsl     r4, r5, #2
	add     r7, r0, r1
	ldr     r0, [r7, r4]
	bl      Function_2021e74
	str     r0, [sp, #0x4]
	cmp     r6, #0x0
	beq     branch_2234eb8
	cmp     r6, #0x2
	bne     branch_2234f00
branch_2234eb8: @ 2234eb8 :thumb
	cmp     r6, #0x0
	bne     branch_2234ec6
	ldr     r1, [pc, #0x9c] @ 0x2234f5c, (=Unknown_223892c)
	ldr     r0, [r7, r4]
	ldrb    r1, [r1, r5]
	bl      Function_2021d6c
branch_2234ec6: @ 2234ec6 :thumb
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x3
	bcs     branch_2234f54
	mov     r1, #0x2
	ldr     r0, [r7, r4]
	lsl     r1, r1, #12
	bl      Function_2021e2c
	ldr     r0, [r7, r4]
	bl      Function_2021e74
	mov     r4, r0
	cmp     r5, #0x1
	bne     branch_2234ef6
	ldr     r2, [pc, #0x7c] @ 0x2234f60, (=0x223893c)
	mov     r1, #0x8d
	ldr     r0, [sp, #0x0]
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	mov     r1, #0x11
	ldsb    r2, [r2, r4]
	mvn     r1, r1
	bl      Function_20128c4
.thumb
branch_2234ef6: @ 2234ef6 :thumb
	cmp     r4, #0x3
	bcc     branch_2234f54
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	b       branch_2234f54
@ 0x2234f00

.thumb
branch_2234f00: @ 2234f00 :thumb
	cmp     r6, #0x1
	bne     branch_2234f54
	cmp     r0, #0x3
	bcs     branch_2234f54
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	b       branch_2234f54
@ 0x2234f0e

.thumb
branch_2234f0e: @ 2234f0e :thumb
	mov     r1, #0x87
	ldr     r0, [sp, #0x0]
	lsl     r1, r1, #2
	lsl     r4, r5, #2
	add     r6, r0, r1
	ldr     r0, [r6, r4]
	bl      Function_2021e24
	mov     r7, r0
	ldr     r0, [r6, r4]
	bl      Function_2021e74
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x30] @ 0x2234f5c, (=Unknown_223892c)
	ldrb    r0, [r0, r5]
	cmp     r7, r0
	bne     branch_2234f4a
	ldr     r1, [pc, #0x30] @ 0x2234f64, (=0x2238930)
	ldr     r0, [r6, r4]
	ldrb    r1, [r1, r5]
	bl      Function_2021d6c
	ldr     r1, [sp, #0xc]
	mov     r2, #0x4
	sub     r1, r2, r1
	lsl     r1, r1, #16
	ldr     r0, [r6, r4]
	lsr     r1, r1, #16
	bl      Function_2021e50
.thumb
branch_2234f4a: @ 2234f4a :thumb
	mov     r1, #0x2
	ldr     r0, [r6, r4]
	lsl     r1, r1, #12
	bl      Function_2021e2c
.thumb
branch_2234f54: @ 2234f54 :thumb
	ldr     r0, [sp, #0x8]
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2234f5a

.align 2
.word Unknown_223892c @ 0x2234f5c
.word 0x223893c @ 0x2234f60
.word 0x2238930 @ 0x2234f64



.thumb
Function_2234f68: @ 2234f68 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, #0x0
	mov     r6, r1
	mvn     r0, r0
	cmp     r6, r0
	beq     branch_2234fa0
	mov     r0, #0x36
	bl      AllocTrainerData
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	mov     r1, r6
	bl      Function_202aef0
	mov     r1, r0
	mov     r0, r4
	bl      Function_2025ec0
	ldr     r0, [pc, #0x14] @ 0x2234fa4, (=0xb18)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	mov     r2, r4
	bl      Function_200b498
	mov     r0, r4
	bl      free
.thumb
branch_2234fa0: @ 2234fa0 :thumb
	pop     {r4-r6,pc}
@ 0x2234fa2


.align 2


.word 0xb18 @ 0x2234fa4
.thumb
Function_2234fa8: @ 2234fa8 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0x20
	bcc     branch_2234fb6
	bl      ErrorHandling
.thumb
branch_2234fb6: @ 2234fb6 :thumb
	ldr     r1, [r5, #0x4]
	mov     r0, #0x24
	add     r1, #0x24
	mul     r0, r4
	add     r0, r1, r0
	pop     {r3-r5,pc}
@ 0x2234fc2


.align 2, 0


.thumb
Function_2234fc4: @ 2234fc4 :thumb
	ldr     r3, [pc, #0x0] @ 0x2234fc8, (=0x21d2235)
	bx      r3
@ 0x2234fc8

.word 0x21d2235 @ 0x2234fc8
.thumb
Function_2234fcc: @ 2234fcc :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, #0xf
	mov     r4, r1
	mov     r6, r2
	bl      Function_20363e8
	ldr     r0, [r5, #0x4]
	add     r0, #0x21
	ldrb    r0, [r0, #0x0]
	bl      0x21d2584
	mov     r0, r6
	bl      Function_222dd64
	cmp     r0, #0x1
	bne     branch_2234ff8
	mov     r0, #0x1
	mov     r1, #0x79
	bl      0x21d2618
	b       branch_2235000
@ 0x2234ff8

.thumb
branch_2234ff8: @ 2234ff8 :thumb
	mov     r0, #0x0
	mov     r1, #0x79
	bl      0x21d2618
.thumb
branch_2235000: @ 2235000 :thumb
	bl      Function_209c3ac
	mov     r0, r4
	bl      Function_20380a0
	pop     {r4-r6,pc}
@ 0x223500c

.thumb
Function_223500c: @ 223500c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0xd6
	lsl     r0, r0, #4
	mov     r4, r1
	ldr     r1, [r5, r0]
	cmp     r1, #0x0
	bne     branch_2235038
	mov     r1, #0x1
	str     r1, [r5, r0]
	mov     r0, #0xe2
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_2235378
	cmp     r4, #0x1
	bne     branch_2235038
	mov     r0, r5
	mov     r1, #0x9
	mov     r2, #0x0
	bl      Function_2232b58
.thumb
branch_2235038: @ 2235038 :thumb
	pop     {r3-r5,pc}
@ 0x223503a


.align 2, 0


.thumb
Function_223503c: @ 223503c :thumb
	push    {r4,lr}
	mov     r1, #0xd6
	mov     r4, r0
	lsl     r1, r1, #4
	ldr     r2, [r4, r1]
	cmp     r2, #0x1
	bne     branch_223505e
	mov     r2, #0x0
	str     r2, [r4, r1]
	bl      Function_2232dfc
	mov     r0, #0xe2
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, #0x0
	bl      Function_2235378
.thumb
branch_223505e: @ 223505e :thumb
	pop     {r4,pc}
@ 0x2235060

.thumb
Function_2235060: @ 2235060 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r6, r2
	mov     r4, r1
	ldr     r2, [pc, #0xb4] @ 0x2235120, (=0x6fc)
	mov     r1, #0x0
	mov     r5, r0
	str     r3, [sp, #0x0]
	blx     Call_FillMemWithValue
	ldr     r0, [sp, #0x24]
	str     r4, [r5, #0x4]
	.hword  0x1e40 @ sub r0, r0, #0x1
	lsr     r7, r0, #3
	ldr     r0, [sp, #0x0]
	mov     r2, r6
	str     r0, [r5, #0x10]
	mov     r0, r5
	ldr     r1, [r5, #0x4]
	add     r0, #0x14
	bl      Function_223587c
	ldr     r0, [r5, #0x10]
	mov     r1, r4
	bl      Function_2235918
	mov     r0, r7
	bl      Function_2236474
	add     r2, sp, #0x4
	strh    r0, [r2, #0x0]
	lsr     r0, r0, #16
	strh    r0, [r2, #0x2]
	ldrh    r0, [r2, #0x0]
	strh    r0, [r2, #0x4]
	ldrh    r1, [r2, #0x2]
	strh    r1, [r2, #0x6]
	ldrh    r0, [r2, #0x4]
	mov     r2, r4
	bl      0x222bce8
	ldr     r1, [pc, #0x70] @ 0x2235124, (=0x6e4)
	str     r0, [r5, r1]
	mov     r0, r7
	bl      Function_2236480
	mov     r1, r0
	ldr     r0, [pc, #0x64] @ 0x2235124, (=0x6e4)
	ldr     r0, [r5, r0]
	bl      0x222bd50
	mov     r0, #0x30
	mov     r1, r4
	bl      0x222be18
	ldr     r1, [pc, #0x58] @ 0x2235128, (=0x6e8)
	mov     r2, r4
	str     r0, [r5, r1]
	ldr     r1, [sp, #0x20]
	mov     r0, r5
	bl      Function_22357e8
	mov     r0, #0x6f
	lsl     r0, r0, #4
	add     r0, r5, r0
	bl      0x222d19c
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	mov     r3, r7
	bl      Function_223582c
	ldr     r0, [r5, #0x10]
	mov     r1, r4
	mov     r2, r6
	bl      Function_2235920
	mov     r1, #0x6d
	lsl     r1, r1, #4
	mov     r0, r5
	add     r1, r5, r1
	mov     r2, r6
	bl      Function_22362b0
	mov     r0, #0x80
	mov     r1, r4
	bl      0x222d848
	ldr     r1, [pc, #0x18] @ 0x223512c, (=0x6f8)
	str     r0, [r5, r1]
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x223511e


.align 2


.word 0x6fc @ 0x2235120
.word 0x6e4 @ 0x2235124
.word 0x6e8 @ 0x2235128
.word 0x6f8 @ 0x223512c
.thumb
Function_2235130: @ 2235130 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x4c] @ 0x2235184, (=0x6f8)
	ldr     r0, [r4, r0]
	bl      0x222d880
	mov     r0, r4
	bl      Function_223586c
	mov     r1, #0x6d
	lsl     r1, r1, #4
	mov     r0, r4
	add     r1, r4, r1
	bl      Function_22362ec
	mov     r0, r4
	bl      Function_223560c
	mov     r0, r4
	bl      Function_223581c
	ldr     r0, [pc, #0x2c] @ 0x2235188, (=0x6e8)
	ldr     r0, [r4, r0]
	bl      0x222be58
	ldr     r0, [pc, #0x28] @ 0x223518c, (=0x6e4)
	ldr     r0, [r4, r0]
	bl      0x222bd30
	mov     r0, r4
	add     r0, #0x14
	bl      Function_22358cc
	ldr     r0, [r4, #0x10]
	bl      Function_223591c
	ldr     r2, [pc, #0x14] @ 0x2235190, (=0x6fc)
	mov     r0, r4
	mov     r1, #0x0
	blx     Call_FillMemWithValue
	pop     {r4,pc}
@ 0x2235184

.word 0x6f8 @ 0x2235184
.word 0x6e8 @ 0x2235188
.word 0x6e4 @ 0x223518c
.word 0x6fc @ 0x2235190
.thumb
Function_2235194: @ 2235194 :thumb
	ldr     r0, [r0, #0x0]
	bx      lr
@ 0x2235198

.thumb
Function_2235198: @ 2235198 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x94] @ 0x2235234, (=0x6e8)
	ldr     r0, [r4, r0]
	bl      0x222be84
	mov     r0, r4
	bl      Function_223573c
	mov     r0, r4
	bl      Function_22356e8
	mov     r1, #0x6f
	lsl     r1, r1, #4
	add     r0, r4, r1
	sub     r1, #0x24
	ldr     r1, [r4, r1]
	ldr     r1, [r1, #0x0]
	bl      0x222d160
	ldr     r1, [pc, #0x74] @ 0x2235238, (=0x6f4)
	ldr     r0, [r4, r1]
	.hword  0x1f09 @ sub r1, r1, #0x4
	add     r1, r4, r1
	bl      0x222d228
	ldr     r0, [pc, #0x6c] @ 0x223523c, (=0x6ec)
	ldr     r0, [r4, r0]
	bl      0x222cee4
	mov     r0, r4
	bl      Function_2235778
	mov     r0, r4
	bl      Function_2235b78
	mov     r0, r4
	bl      Function_2235634
	cmp     r0, #0x1
	bne     branch_223522e
	mov     r0, r4
	bl      Function_2235be8
	cmp     r0, #0x1
	bne     branch_2235208
	mov     r0, r4
	bl      Function_2235b30
	ldr     r0, [pc, #0x44] @ 0x2235240, (=0x21bf67c)
	ldr     r1, [r0, #0x44]
	mov     r0, #0x80
	tst     r0, r1
	beq     branch_2235208
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2235208

.thumb
branch_2235208: @ 2235208 :thumb
	ldr     r0, [pc, #0x34] @ 0x2235240, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_223522e
	mov     r0, r4
	bl      Function_2235254
	cmp     r0, #0x0
	beq     branch_2235220
	mov     r0, #0x2
	pop     {r4,pc}
@ 0x2235220

.thumb
branch_2235220: @ 2235220 :thumb
	mov     r0, r4
	bl      Function_2235654
	cmp     r0, #0x1
	bne     branch_223522e
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223522e

.thumb
branch_223522e: @ 223522e :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2235232


.align 2


.word 0x6e8 @ 0x2235234
.word 0x6f4 @ 0x2235238
.word 0x6ec @ 0x223523c
.word 0x21bf67c @ 0x2235240
.thumb
Function_2235244: @ 2235244 :thumb
	push    {r3,lr}
	ldr     r1, [r0, #0x0]
	cmp     r1, #0x0
	beq     branch_2235252
	ldr     r0, [r0, #0x14]
	bl      Function_20219f8
.thumb
branch_2235252: @ 2235252 :thumb
	pop     {r3,pc}
@ 0x2235254

.thumb
Function_2235254: @ 2235254 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x10] @ 0x223526c, (=0x6cc)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_2235264
	bl      ErrorHandling
.thumb
branch_2235264: @ 2235264 :thumb
	ldr     r0, [pc, #0x4] @ 0x223526c, (=0x6cc)
	ldr     r0, [r4, r0]
	ldrb    r0, [r0, #0xa]
	pop     {r4,pc}
@ 0x223526c

.word 0x6cc @ 0x223526c
.thumb
Function_2235270: @ 2235270 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	ldr     r0, [pc, #0x4c] @ 0x22352c4, (=0x6cc)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_2235282
	bl      ErrorHandling
.thumb
branch_2235282: @ 2235282 :thumb
	ldr     r0, [pc, #0x40] @ 0x22352c4, (=0x6cc)
	ldr     r0, [r4, r0]
	ldr     r0, [r0, #0x0]
	bl      0x222c0e4
	add     r2, sp, #0x0
	strh    r0, [r2, #0x0]
	lsr     r0, r0, #16
	strh    r0, [r2, #0x2]
	ldrh    r0, [r2, #0x0]
	mov     r1, #0x4
	strh    r0, [r2, #0x4]
	ldrh    r0, [r2, #0x2]
	strh    r0, [r2, #0x6]
	ldsh    r3, [r2, r1]
	ldr     r0, [pc, #0x24] @ 0x22352c8, (=0x6e4)
	asr     r1, r3, #3
	lsr     r1, r1, #28
	add     r1, r3, r1
	mov     r3, #0x6
	ldsh    r3, [r2, r3]
	lsl     r1, r1, #12
	ldr     r0, [r4, r0]
	asr     r2, r3, #3
	lsr     r2, r2, #28
	add     r2, r3, r2
	lsl     r2, r2, #12
	lsr     r1, r1, #16
	lsr     r2, r2, #16
	bl      0x222bde4
	add     sp, #0x8
	pop     {r4,pc}
@ 0x22352c4

.word 0x6cc @ 0x22352c4
.word 0x6e4 @ 0x22352c8
.thumb
Function_22352cc: @ 22352cc :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	ldr     r0, [pc, #0x50] @ 0x2235324, (=0x6cc)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_22352de
	bl      ErrorHandling
.thumb
branch_22352de: @ 22352de :thumb
	ldr     r0, [pc, #0x44] @ 0x2235324, (=0x6cc)
	ldr     r0, [r4, r0]
	ldr     r0, [r0, #0x0]
	bl      0x222c0e4
	add     r2, sp, #0x0
	strh    r0, [r2, #0x0]
	lsr     r0, r0, #16
	strh    r0, [r2, #0x2]
	ldrh    r0, [r2, #0x0]
	mov     r1, #0x4
	strh    r0, [r2, #0x4]
	ldrh    r0, [r2, #0x2]
	strh    r0, [r2, #0x6]
	ldsh    r3, [r2, r1]
	ldr     r0, [pc, #0x28] @ 0x2235328, (=0x6e4)
	asr     r1, r3, #3
	lsr     r1, r1, #28
	add     r1, r3, r1
	mov     r3, #0x6
	ldsh    r3, [r2, r3]
	lsl     r1, r1, #12
	ldr     r0, [r4, r0]
	asr     r2, r3, #3
	lsr     r2, r2, #28
	add     r2, r3, r2
	asr     r2, r2, #4
	.hword  0x1c52 @ add r2, r2, #0x1
	lsl     r2, r2, #16
	lsr     r1, r1, #16
	lsr     r2, r2, #16
	bl      0x222bde4
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2235324

.word 0x6cc @ 0x2235324
.word 0x6e4 @ 0x2235328
.thumb
Function_223532c: @ 223532c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r1
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	bl      0x222c0e4
	add     r1, sp, #0x0
	strh    r0, [r1, #0x0]
	lsr     r0, r0, #16
	strh    r0, [r1, #0x2]
	ldrh    r0, [r1, #0x0]
	strh    r0, [r1, #0x4]
	ldrh    r0, [r1, #0x2]
	strh    r0, [r1, #0x6]
	ldr     r0, [r5, #0x4]
	bl      0x222d014
	mov     r2, r0
	add     r1, sp, #0x0
	mov     r0, r4
	mov     r4, sp
	ldrh    r3, [r1, #0x4]
	.hword  0x1f24 @ sub r4, r4, #0x4
	.hword  0x1e92 @ sub r2, r2, #0x2
	strh    r3, [r4, #0x0]
	ldrh    r1, [r1, #0x6]
	strh    r1, [r4, #0x2]
	ldr     r1, [r4, #0x0]
	bl      Function_2235b88
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x223536e


.align 2, 0


.thumb
Function_2235370: @ 2235370 :thumb
	ldr     r3, [pc, #0x0] @ 0x2235374, (=0x2235bd9)
	bx      r3
@ 0x2235374

.word Function_2235bd8+1 @ =0x2235bd9, 0x2235374
.thumb
Function_2235378: @ 2235378 :thumb
	str     r1, [r0, #0xc]
	bx      lr
@ 0x223537c

.thumb
Function_223537c: @ 223537c :thumb
	ldr     r0, [r0, #0xc]
	bx      lr
@ 0x2235380

.thumb
Function_2235380: @ 2235380 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r6, r1
	bl      Function_2235d7c
	mov     r4, r0
	ldr     r0, [pc, #0x54] @ 0x22353e4, (=0x6cc)
	add     r1, sp, #0xc
	str     r4, [r5, r0]
	mov     r0, r5
	bl      Function_2235d08
	lsl     r0, r6, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x0]
	mov     r3, #0x0
	str     r3, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	add     r2, sp, #0xc
	str     r3, [sp, #0x8]
	bl      Function_2235de4
	mov     r0, r5
	mov     r1, r4
	bl      Function_2235e48
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x1
	bl      Function_2235dac
	mov     r1, #0x6f
	lsl     r1, r1, #4
	add     r0, r5, r1
	sub     r1, #0x24
	ldr     r1, [r5, r1]
	ldr     r1, [r1, #0x0]
	bl      0x222d160
	ldr     r1, [pc, #0x14] @ 0x22353e8, (=0x6f4)
	ldr     r0, [r5, r1]
	.hword  0x1f09 @ sub r1, r1, #0x4
	add     r1, r5, r1
	bl      0x222d228
	mov     r0, r4
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x22353e4

.word 0x6cc @ 0x22353e4
.word 0x6f4 @ 0x22353e8
.thumb
Function_22353ec: @ 22353ec :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	mov     r6, r2
	mov     r7, r1
	bl      Function_2235d7c
	mov     r4, r0
	mov     r0, r5
	add     r1, sp, #0x14
	.hword  0x1e72 @ sub r2, r6, #0x1
	bl      Function_2235c64
	ldr     r0, [pc, #0x6c] @ 0x2235474, (=0x6cc)
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_2235442
	ldr     r0, [r0, #0x0]
	bl      0x222c0e4
	add     r1, sp, #0xc
	strh    r0, [r1, #0x0]
	lsr     r0, r0, #16
	strh    r0, [r1, #0x2]
	ldrh    r0, [r1, #0x0]
	mov     r2, #0x8
	strh    r0, [r1, #0x4]
	ldrh    r0, [r1, #0x2]
	strh    r0, [r1, #0x6]
	mov     r0, #0x4
	ldsh    r0, [r1, r0]
	ldsh    r2, [r1, r2]
	cmp     r0, r2
	bne     branch_2235442
	mov     r0, #0x6
	mov     r2, #0xa
	ldsh    r0, [r1, r0]
	ldsh    r1, [r1, r2]
	cmp     r0, r1
	bne     branch_2235442
	add     sp, #0x18
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2235442

.thumb
branch_2235442: @ 2235442 :thumb
	lsl     r0, r7, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r1, r4
	add     r2, sp, #0x14
	mov     r3, r6
	bl      Function_2235de4
	mov     r0, r5
	mov     r1, r4
	bl      Function_2235e68
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_2235dac
	mov     r0, r4
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2235474

.word 0x6cc @ 0x2235474
.thumb
Function_2235478: @ 2235478 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x6
	bl      0x222bf90
	ldr     r0, [pc, #0x28] @ 0x22354b0, (=0x22361b1)
	mov     r1, #0x0
	str     r0, [r4, #0x10]
	ldr     r0, [pc, #0x24] @ 0x22354b4, (=0x2235ef9)
	str     r0, [r4, #0x18]
	mov     r0, #0x2
	strh    r0, [r4, #0xc]
	strh    r1, [r4, #0x8]
	ldr     r0, [r4, #0x4]
	bl      0x222cfa4
	ldr     r0, [r4, #0x4]
	bl      0x222cfa8
	mov     r0, r5
	mov     r1, #0x4
	mov     r2, r4
	bl      Function_2236250
	pop     {r3-r5,pc}
@ 0x22354ae


.align 2


.word Function_22361b0+1 @ =0x22361b1, 0x22354b0
.word 0x2235ef9 @ 0x22354b4
.thumb
Function_22354b8: @ 22354b8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	bl      0x222cecc
	ldr     r0, [r4, #0x0]
	bl      0x222bf08
	mov     r1, #0x1c
	mov     r0, #0x0
.thumb
branch_22354cc: @ 22354cc :thumb
	strb    r0, [r4, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_22354cc
	pop     {r4,pc}
@ 0x22354d6


.align 2, 0


.thumb
Function_22354d8: @ 22354d8 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	mov     r1, #0x4
	bl      0x222bf90
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	pop     {r3,pc}
@ 0x22354e8

.thumb
Function_22354e8: @ 22354e8 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	mov     r1, #0x6
	bl      0x222bf90
	bl      0x222c0ac
	pop     {r3,pc}
@ 0x22354f8

.thumb
Function_22354f8: @ 22354f8 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r1
	mov     r6, r0
	ldr     r0, [r5, #0x10]
	mov     r4, r2
	str     r0, [r5, #0x14]
	ldr     r0, [pc, #0x60] @ 0x2235568, (=0x223622d)
	mov     r1, #0x4
	str     r0, [r5, #0x10]
	ldrh    r0, [r5, #0xc]
	strh    r0, [r5, #0xe]
	mov     r0, #0x5
	strh    r0, [r5, #0xc]
	ldr     r0, [r5, #0x0]
	bl      0x222bf90
	mov     r3, r0
	mov     r0, r6
	mov     r1, #0x0
	mov     r2, r4
	bl      Function_2236230
	ldr     r0, [r5, #0x4]
	mov     r1, #0x0
	bl      0x222cfa4
	ldr     r0, [r5, #0x4]
	mov     r1, r4
	bl      0x222d020
	ldr     r0, [r5, #0x0]
	mov     r1, #0x0
	bl      0x222bf90
	add     r1, sp, #0x0
	strh    r0, [r1, #0x0]
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	bl      0x222bf90
	add     r1, sp, #0x0
	strh    r0, [r1, #0x2]
	mov     r3, sp
	ldrh    r2, [r1, #0x0]
	ldr     r0, [r5, #0x4]
	.hword  0x1f1b @ sub r3, r3, #0x4
	strh    r2, [r3, #0x0]
	ldrh    r1, [r1, #0x2]
	strh    r1, [r3, #0x2]
	ldr     r1, [r3, #0x0]
	bl      0x222cfe0
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x2235566


.align 2


.word Function_223622c+1 @ =0x223622d, 0x2235568
.thumb
Function_223556c: @ 223556c :thumb
	push    {r3,lr}
	cmp     r1, #0x0
	beq     branch_223558a
	ldr     r0, [r1, #0x14]
	cmp     r0, #0x0
	beq     branch_223558a
	str     r0, [r1, #0x10]
	mov     r0, #0x0
	str     r0, [r1, #0x14]
	ldrh    r0, [r1, #0xe]
	strh    r0, [r1, #0xc]
	ldr     r0, [r1, #0x4]
	mov     r1, #0x1
	bl      0x222cfa4
.thumb
branch_223558a: @ 223558a :thumb
	pop     {r3,pc}
@ 0x223558c

.thumb
Function_223558c: @ 223558c :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	mov     r4, r2
	bl      Function_2236278
	cmp     r0, #0x0
	bne     branch_22355a2
	strb    r4, [r5, #0xb]
	pop     {r4-r6,pc}
@ 0x22355a2

.thumb
branch_22355a2: @ 22355a2 :thumb
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	bl      Function_223628c
	pop     {r4-r6,pc}
@ 0x22355ae


.align 2, 0


.thumb
Function_22355b0: @ 22355b0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_2235654
	cmp     r0, #0x1
	bne     branch_22355e6
	mov     r0, r5
	bl      Function_22352cc
	lsl     r0, r0, #24
	asr     r0, r0, #24
	.hword  0x1ec0 @ sub r0, r0, #0x3
	lsl     r0, r0, #24
	asr     r4, r0, #24
	bmi     branch_22355d2
	cmp     r4, #0x4
	blt     branch_22355d6
.thumb
branch_22355d2: @ 22355d2 :thumb
	bl      ErrorHandling
.thumb
branch_22355d6: @ 22355d6 :thumb
	mov     r0, #0x6d
	lsl     r0, r0, #4
	lsl     r1, r4, #24
	add     r0, r5, r0
	lsr     r1, r1, #24
	bl      Function_2236440
	pop     {r3-r5,pc}
@ 0x22355e6

.thumb
branch_22355e6: @ 22355e6 :thumb
	bl      ErrorHandling
	pop     {r3-r5,pc}
@ 0x22355ec

.thumb
Function_22355ec: @ 22355ec :thumb
	mov     r1, #0x6d
	lsl     r1, r1, #4
	ldr     r3, [pc, #0x4] @ 0x22355f8, (=0x2236465)
	add     r0, r0, r1
	bx      r3
@ 0x22355f6


.align 2


.word 0x2236465 @ 0x22355f8
.thumb
Function_22355fc: @ 22355fc :thumb
	mov     r1, #0x6d
	lsl     r1, r1, #4
	ldr     r3, [pc, #0x4] @ 0x2235608, (=0x2236305)
	add     r1, r0, r1
	bx      r3
@ 0x2235606


.align 2


.word 0x2236305 @ 0x2235608
.thumb
Function_223560c: @ 223560c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r0, #0x63
	lsl     r0, r0, #2
	mov     r6, #0x0
	add     r4, r5, r0
	mov     r7, r0
.thumb
branch_223561a: @ 223561a :thumb
	ldr     r0, [r5, r7]
	cmp     r0, #0x0
	beq     branch_2235626
	mov     r0, r4
	bl      Function_22354b8
.thumb
branch_2235626: @ 2235626 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x1c
	add     r4, #0x1c
	cmp     r6, #0x30
	blt     branch_223561a
	pop     {r3-r7,pc}
@ 0x2235632


.align 2, 0


.thumb
Function_2235634: @ 2235634 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x18] @ 0x2235650, (=0x6cc)
	ldr     r0, [r0, r1]
	mov     r1, #0x5
	ldr     r0, [r0, #0x0]
	bl      0x222bf90
	cmp     r0, #0x0
	bne     branch_223564a
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x223564a

.thumb
branch_223564a: @ 223564a :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x223564e


.align 2


.word 0x6cc @ 0x2235650
.thumb
Function_2235654: @ 2235654 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r0, [pc, #0x84] @ 0x22356e0, (=0x6cc)
	ldr     r0, [r5, r0]
	ldr     r0, [r0, #0x0]
	bl      0x222c0e4
	add     r1, sp, #0x0
	strh    r0, [r1, #0x4]
	lsr     r0, r0, #16
	strh    r0, [r1, #0x6]
	ldrh    r0, [r1, #0x4]
	strh    r0, [r1, #0xc]
	ldrh    r0, [r1, #0x6]
	strh    r0, [r1, #0xe]
	ldr     r0, [pc, #0x68] @ 0x22356e0, (=0x6cc)
	mov     r1, #0x6
	ldr     r0, [r5, r0]
	ldr     r0, [r0, #0x0]
	bl      0x222bf90
	mov     r4, r0
	add     r0, sp, #0x0
	mov     r2, sp
	ldrh    r1, [r0, #0xc]
	.hword  0x1f12 @ sub r2, r2, #0x4
	strh    r1, [r2, #0x0]
	ldrh    r0, [r0, #0xe]
	mov     r1, r4
	strh    r0, [r2, #0x2]
	ldr     r0, [r2, #0x0]
	bl      0x222c078
	add     r2, sp, #0x0
	strh    r0, [r2, #0x0]
	lsr     r0, r0, #16
	strh    r0, [r2, #0x2]
	ldrh    r0, [r2, #0x0]
	mov     r1, #0x8
	strh    r0, [r2, #0x8]
	ldrh    r0, [r2, #0x2]
	strh    r0, [r2, #0xa]
	ldsh    r3, [r2, r1]
	ldr     r0, [pc, #0x34] @ 0x22356e4, (=0x6e4)
	asr     r1, r3, #3
	lsr     r1, r1, #28
	add     r1, r3, r1
	mov     r3, #0xa
	ldsh    r3, [r2, r3]
	lsl     r1, r1, #12
	ldr     r0, [r5, r0]
	asr     r2, r3, #3
	lsr     r2, r2, #28
	add     r2, r3, r2
	lsl     r2, r2, #12
	lsr     r1, r1, #16
	lsr     r2, r2, #16
	bl      0x222bde4
	cmp     r4, #0x0
	bne     branch_22356da
	cmp     r0, #0x2
	bne     branch_22356da
	add     sp, #0x10
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x22356da

.thumb
branch_22356da: @ 22356da :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x22356e0

.word 0x6cc @ 0x22356e0
.word 0x6e4 @ 0x22356e4
.thumb
Function_22356e8: @ 22356e8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [pc, #0x40] @ 0x2235730, (=0x6f8)
	add     r1, sp, #0x8
	ldr     r0, [r5, r0]
	bl      0x222d8d0
	cmp     r0, #0x1
	bne     branch_223572c
	ldr     r7, [pc, #0x34] @ 0x2235734, (=0x6e8)
	add     r6, sp, #0x0
	add     r4, sp, #0x8
.thumb
branch_2235702: @ 2235702 :thumb
	ldr     r0, [pc, #0x34] @ 0x2235738, (=0x6e4)
	ldr     r1, [r5, r7]
	ldr     r0, [r5, r0]
	mov     r2, r4
	mov     r3, r6
	bl      0x222ca88
	cmp     r0, #0x1
	bne     branch_223571e
	ldr     r0, [pc, #0x1c] @ 0x2235734, (=0x6e8)
	mov     r1, r6
	ldr     r0, [r5, r0]
	bl      0x222be70
.thumb
branch_223571e: @ 223571e :thumb
	ldr     r0, [pc, #0x10] @ 0x2235730, (=0x6f8)
	mov     r1, r4
	ldr     r0, [r5, r0]
	bl      0x222d8d0
	cmp     r0, #0x1
	beq     branch_2235702
.thumb
branch_223572c: @ 223572c :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2235730

.word 0x6f8 @ 0x2235730
.word 0x6e8 @ 0x2235734
.word 0x6e4 @ 0x2235738
.thumb
Function_223573c: @ 223573c :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r0, #0x63
	lsl     r0, r0, #2
	mov     r6, #0x0
	mov     r4, r7
	add     r5, r7, r0
.thumb
branch_223574a: @ 223574a :thumb
	mov     r0, #0x63
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_223576a
	mov     r2, #0x67
	lsl     r2, r2, #2
	ldr     r2, [r4, r2]
	mov     r0, r7
	mov     r1, r5
	blx     r2
	cmp     r0, #0x1
	bne     branch_223576a
	mov     r0, r5
	bl      Function_22354b8
.thumb
branch_223576a: @ 223576a :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x1c
	add     r5, #0x1c
	cmp     r6, #0x30
	blt     branch_223574a
	pop     {r3-r7,pc}
@ 0x2235776


.align 2, 0


.thumb
Function_2235778: @ 2235778 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r0, #0x63
	lsl     r0, r0, #2
	mov     r6, #0x0
	mov     r4, r7
	add     r5, r7, r0
.thumb
branch_2235786: @ 2235786 :thumb
	mov     r0, #0x63
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_223579c
	mov     r2, #0x69
	lsl     r2, r2, #2
	ldr     r2, [r4, r2]
	mov     r0, r7
	mov     r1, r5
	blx     r2
.thumb
branch_223579c: @ 223579c :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x1c
	add     r5, #0x1c
	cmp     r6, #0x30
	blt     branch_2235786
	pop     {r3-r7,pc}
@ 0x22357a8

.thumb
Function_22357a8: @ 22357a8 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r0, [r1, #0x0]
	ldr     r1, [pc, #0x34] @ 0x22357e4, (=0x6e8)
	ldr     r1, [r4, r1]
	bl      0x222c1c4
	cmp     r0, #0x0
	beq     branch_22357de
	mov     r2, #0x63
	mov     r1, #0x0
	mov     r5, r4
	lsl     r2, r2, #2
.thumb
branch_22357c2: @ 22357c2 :thumb
	ldr     r3, [r5, r2]
	cmp     r3, r0
	bne     branch_22357d6
	mov     r0, #0x63
	lsl     r0, r0, #2
	add     r2, r4, r0
	mov     r0, #0x1c
	mul     r0, r1
	add     r0, r2, r0
	pop     {r3-r5,pc}
@ 0x22357d6

.thumb
branch_22357d6: @ 22357d6 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r5, #0x1c
	cmp     r1, #0x30
	blt     branch_22357c2
.thumb
branch_22357de: @ 22357de :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22357e2


.align 2


.word 0x6e8 @ 0x22357e4
.thumb
Function_22357e8: @ 22357e8 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r3, r1
	mov     r1, #0x0
	mov     r5, r0
	mov     r4, r2
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r4, [sp, #0x8]
	ldr     r0, [r5, #0x14]
	mov     r2, #0x30
	bl      0x222cd2c
	ldr     r1, [pc, #0x10] @ 0x2235818, (=0x6ec)
	mov     r2, r4
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	mov     r1, #0x2
	bl      0x222ce30
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2235816


.align 2


.word 0x6ec @ 0x2235818
.thumb
Function_223581c: @ 223581c :thumb
	ldr     r1, [pc, #0x4] @ 0x2235824, (=0x6ec)
	ldr     r3, [pc, #0x8] @ 0x2235828, (=0x222cd9d)
	ldr     r0, [r0, r1]
	bx      r3
@ 0x2235824

.word 0x6ec @ 0x2235824
.word 0x222cd9d @ 0x2235828
.thumb
Function_223582c: @ 223582c :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	ldr     r6, [pc, #0x30] @ 0x2235864, (=0x2238bcc)
	mov     r4, r1
	mov     r5, r0
	add     r2, sp, #0x0
	mov     r1, #0xb
.thumb
branch_223583a: @ 223583a :thumb
	ldrb    r0, [r6, #0x0]
	.hword  0x1c76 @ add r6, r6, #0x1
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_223583a
	add     r0, sp, #0x0
	ldrb    r1, [r0, #0x9]
	add     r2, sp, #0x0
	add     r1, r1, r3
	strb    r1, [r0, #0x9]
	mov     r0, r5
	ldr     r1, [r5, #0x10]
	add     r0, #0x18
	mov     r3, r4
	bl      0x222d1c0
	ldr     r1, [pc, #0x8] @ 0x2235868, (=0x6f4)
	str     r0, [r5, r1]
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x2235864

.word 0x2238bcc @ 0x2235864
.word 0x6f4 @ 0x2235868
.thumb
Function_223586c: @ 223586c :thumb
	ldr     r1, [pc, #0x4] @ 0x2235874, (=0x6f4)
	ldr     r3, [pc, #0x8] @ 0x2235878, (=0x222d215)
	ldr     r0, [r0, r1]
	bx      r3
@ 0x2235874

.word 0x6f4 @ 0x2235874
.word 0x222d215 @ 0x2235878
.thumb
Function_223587c: @ 223587c :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r6, r1
	str     r2, [sp, #0x0]
	mov     r0, #0x60
	add     r1, r7, #0x4
	mov     r2, r6
	bl      Function_20095c4
	mov     r2, #0x32
	str     r0, [r7, #0x0]
	add     r0, r7, #0x4
	mov     r1, #0x0
	lsl     r2, r2, #16
	bl      Function_200964c
	mov     r4, #0x0
	mov     r5, r7
.thumb
branch_22358a0: @ 22358a0 :thumb
	mov     r0, #0x10
	mov     r1, r4
	mov     r2, r6
	bl      Function_2009714
	mov     r1, #0x4b
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_22358a0
	ldr     r2, [sp, #0x0]
	mov     r0, r7
	mov     r1, r6
	bl      Function_22358f8
	mov     r0, r7
	mov     r1, r6
	bl      Function_2235908
	pop     {r3-r7,pc}
@ 0x22358cc

.thumb
Function_22358cc: @ 22358cc :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	bl      Function_2235910
	mov     r0, r7
	bl      Function_2235900
	mov     r6, #0x4b
	mov     r4, #0x0
	mov     r5, r7
	lsl     r6, r6, #2
.thumb
branch_22358e2: @ 22358e2 :thumb
	ldr     r0, [r5, r6]
	bl      Function_2009754
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_22358e2
	ldr     r0, [r7, #0x0]
	bl      Function_2021964
	pop     {r3-r7,pc}
@ 0x22358f8

.thumb
Function_22358f8: @ 22358f8 :thumb
	ldr     r3, [pc, #0x0] @ 0x22358fc, (=0x2235961)
	bx      r3
@ 0x22358fc

.word 0x2235961 @ 0x22358fc
.thumb
Function_2235900: @ 2235900 :thumb
	ldr     r3, [pc, #0x0] @ 0x2235904, (=0x2235a61)
	bx      r3
@ 0x2235904

.word 0x2235a61 @ 0x2235904
.thumb
Function_2235908: @ 2235908 :thumb
	ldr     r3, [pc, #0x0] @ 0x223590c, (=0x2235a95)
	bx      r3
@ 0x223590c

.word 0x2235a95 @ 0x223590c
.thumb
Function_2235910: @ 2235910 :thumb
	ldr     r3, [pc, #0x0] @ 0x2235914, (=0x2235b15)
	bx      r3
@ 0x2235914

.word 0x2235b15 @ 0x2235914
.thumb
Function_2235918: @ 2235918 :thumb
	bx      lr
@ 0x223591a


.align 2, 0


.thumb
Function_223591c: @ 223591c :thumb
	bx      lr
@ 0x223591e


.align 2, 0


.thumb
Function_2235920: @ 2235920 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r6, r0
	mov     r0, #0x1
	mov     r4, r2
	lsl     r0, r0, #8
	mov     r2, #0x0
	mov     r5, r1
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x1e
	mov     r3, r2
	str     r5, [sp, #0x4]
	bl      Function_2007130
	mov     r0, #0x0
	mov     r1, r0
	bl      Function_201975c
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r3, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x1d
	mov     r2, r6
	str     r5, [sp, #0xc]
	bl      Function_20070e8
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x223595e


.align 2, 0


.thumb
Function_2235960: @ 2235960 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x2c
	mov     r4, r1
	mov     r1, #0x32
	mov     r5, r0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r6, r2
	str     r4, [sp, #0x8]
	add     r1, #0xfa
	ldr     r0, [r5, r1]
	mov     r1, r6
	mov     r2, #0x25
	mov     r3, #0x0
	bl      Function_2009a4c
	mov     r1, #0x4f
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r1, #0x32
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r4, [sp, #0xc]
	add     r1, #0xfe
	ldr     r0, [r5, r1]
	mov     r1, r6
	mov     r2, #0x24
	mov     r3, #0x0
	bl      Function_2009b04
	mov     r1, #0x5
	lsl     r1, r1, #6
	str     r0, [r5, r1]
	mov     r0, #0x32
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	str     r4, [sp, #0x8]
	sub     r1, #0xc
	ldr     r0, [r5, r1]
	mov     r1, r6
	mov     r2, #0x26
	mov     r3, #0x0
	bl      Function_2009bc4
	mov     r1, #0x51
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x32
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	str     r4, [sp, #0x8]
	sub     r1, #0xc
	ldr     r0, [r5, r1]
	mov     r1, r6
	mov     r2, #0x27
	mov     r3, #0x0
	bl      Function_2009bc4
	mov     r1, #0x52
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	sub     r1, #0xc
	ldr     r0, [r5, r1]
	bl      Function_200a3dc
	cmp     r0, #0x1
	beq     branch_22359f4
	bl      ErrorHandling
.thumb
branch_22359f4: @ 22359f4 :thumb
	mov     r0, #0x5
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	bl      Function_200a640
	cmp     r0, #0x1
	beq     branch_2235a06
	bl      ErrorHandling
.thumb
branch_2235a06: @ 2235a06 :thumb
	mov     r0, #0x4f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2009d4c
	mov     r0, #0x5
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	bl      Function_2009d4c
	mov     r1, #0x32
	mov     r0, r1
	str     r1, [sp, #0x0]
	sub     r0, #0x33
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r3, #0x4d
	str     r0, [sp, #0xc]
	mov     r2, #0x2
	str     r2, [sp, #0x10]
	mov     r2, r1
	add     r2, #0xfa
	ldr     r2, [r5, r2]
	lsl     r3, r3, #2
	str     r2, [sp, #0x14]
	mov     r2, r1
	add     r2, #0xfe
	ldr     r2, [r5, r2]
	str     r2, [sp, #0x18]
	ldr     r2, [r5, r3]
	str     r2, [sp, #0x1c]
	add     r2, r3, #0x4
	ldr     r2, [r5, r2]
	add     r3, #0x18
	str     r2, [sp, #0x20]
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
	add     r0, r5, r3
	mov     r2, r1
	mov     r3, r1
	bl      Function_20093b4
	add     sp, #0x2c
	pop     {r3-r6,pc}
@ 0x2235a60

.thumb
Function_2235a60: @ 2235a60 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r0, #0x4f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_200a4e4
	mov     r0, #0x5
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	bl      Function_200a6dc
	mov     r7, #0x4b
	lsl     r7, r7, #2
	mov     r6, r7
	mov     r4, #0x0
	add     r6, #0x10
.thumb
branch_2235a82: @ 2235a82 :thumb
	ldr     r0, [r5, r7]
	ldr     r1, [r5, r6]
	bl      Function_2009d68
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_2235a82
	pop     {r3-r7,pc}
@ 0x2235a94

.thumb
Function_2235a94: @ 2235a94 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x30
	mov     r4, r0
	add     r2, sp, #0x0
	mov     r0, #0x0
	mov     r3, r1
	mov     r5, r2
	mov     r1, r0
	stmia   r5!, {r0,r1}
	stmia   r5!, {r0,r1}
	stmia   r5!, {r0,r1}
	stmia   r5!, {r0,r1}
	stmia   r5!, {r0,r1}
	stmia   r5!, {r0,r1}
	ldr     r1, [r4, #0x0]
	str     r1, [sp, #0x0]
	mov     r1, #0x53
	lsl     r1, r1, #2
	add     r1, r4, r1
	str     r1, [sp, #0x4]
	mov     r1, #0x1
	str     r1, [sp, #0x28]
	lsl     r1, r1, #12
	str     r0, [sp, #0x24]
	mov     r0, r2
	str     r1, [sp, #0x14]
	str     r1, [sp, #0x18]
	str     r3, [sp, #0x2c]
	bl      Function_2021aa0
	mov     r1, #0x17
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	add     r0, sp, #0x0
	bl      Function_2021aa0
	mov     r1, #0x5d
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	.hword  0x1f08 @ sub r0, r1, #0x4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2021cac
	mov     r0, #0x5d
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2021cac
	mov     r0, #0x17
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_2021cc8
	mov     r0, #0x5d
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_2021d6c
	add     sp, #0x30
	pop     {r3-r5,pc}
@ 0x2235b14

.thumb
Function_2235b14: @ 2235b14 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x17
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_2021bd4
	mov     r0, #0x5d
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2021bd4
	pop     {r4,pc}
@ 0x2235b2e


.align 2, 0


.thumb
Function_2235b30: @ 2235b30 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	add     r1, sp, #0x0
	mov     r4, r0
	bl      Function_2235d08
	add     r2, sp, #0x0
	mov     r0, #0x0
	ldsh    r1, [r2, r0]
	add     r1, #0x8
	strh    r1, [r2, #0x0]
	mov     r1, #0x2
	ldsh    r3, [r2, r1]
	add     r3, #0x20
	strh    r3, [r2, #0x2]
	ldsh    r0, [r2, r0]
	lsl     r0, r0, #12
	str     r0, [sp, #0x4]
	ldsh    r0, [r2, r1]
	add     r1, sp, #0x4
	lsl     r0, r0, #12
	str     r0, [sp, #0x8]
	mov     r0, #0x61
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2021c50
	mov     r0, #0x61
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_2021cac
	add     sp, #0x10
	pop     {r4,pc}
@ 0x2235b76


.align 2, 0


.thumb
Function_2235b78: @ 2235b78 :thumb
	mov     r1, #0x61
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	ldr     r3, [pc, #0x4] @ 0x2235b84, (=0x2021cad)
	mov     r1, #0x0
	bx      r3
@ 0x2235b84

.word 0x2021cad @ 0x2235b84
.thumb
Function_2235b88: @ 2235b88 :thumb
	push    {r0-r3}
.thumb
Function_2235b8a: @ 2235b8a :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	add     r1, sp, #0x18
	mov     r0, #0x4
	ldsh    r0, [r1, r0]
	mov     r4, r2
	add     r0, #0x8
	lsl     r0, r0, #16
	asr     r0, r0, #4
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	ldsh    r0, [r1, r0]
	add     r1, sp, #0x0
	lsl     r0, r0, #12
	str     r0, [sp, #0x4]
	mov     r0, #0x62
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2021c50
	mov     r0, #0x62
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r4
	bl      Function_2021f58
	mov     r0, #0x62
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      Function_2021cac
	add     sp, #0xc
	pop     {r4,r5}
	pop     {r3}
	add     sp, #0x10
	bx      r3
@ 0x2235bd6


.align 2, 0


.thumb
Function_2235bd8: @ 2235bd8 :thumb
	mov     r1, #0x62
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	ldr     r3, [pc, #0x4] @ 0x2235be4, (=0x2021cad)
	mov     r1, #0x0
	bx      r3
@ 0x2235be4

.word 0x2021cad @ 0x2235be4
.thumb
Function_2235be8: @ 2235be8 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r0, [pc, #0x6c] @ 0x2235c5c, (=0x6cc)
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	bne     branch_2235bfc
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2235bfc

.thumb
branch_2235bfc: @ 2235bfc :thumb
	ldr     r0, [r0, #0x0]
	bl      0x222c0e4
	add     r1, sp, #0x0
	strh    r0, [r1, #0x0]
	lsr     r0, r0, #16
	strh    r0, [r1, #0x2]
	ldrh    r0, [r1, #0x0]
	strh    r0, [r1, #0x4]
	ldrh    r0, [r1, #0x2]
	strh    r0, [r1, #0x6]
	ldr     r0, [pc, #0x48] @ 0x2235c5c, (=0x6cc)
	mov     r1, #0x6
	ldr     r0, [r5, r0]
	ldr     r0, [r0, #0x0]
	bl      0x222bf90
	mov     r4, r0
	ldr     r0, [pc, #0x3c] @ 0x2235c60, (=0x6e4)
	add     r2, sp, #0x0
	mov     r1, #0x4
	ldsh    r3, [r2, r1]
	ldr     r0, [r5, r0]
	asr     r1, r3, #3
	lsr     r1, r1, #28
	add     r1, r3, r1
	mov     r3, #0x6
	ldsh    r3, [r2, r3]
	lsl     r1, r1, #12
	lsr     r1, r1, #16
	asr     r2, r3, #3
	lsr     r2, r2, #28
	add     r2, r3, r2
	lsl     r2, r2, #12
	lsr     r2, r2, #16
	bl      0x222bde4
	cmp     r0, #0xf
	bne     branch_2235c54
	cmp     r4, #0x1
	bne     branch_2235c54
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2235c54

.thumb
branch_2235c54: @ 2235c54 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2235c5a


.align 2


.word 0x6cc @ 0x2235c5c
.word 0x6e4 @ 0x2235c60
.thumb
Function_2235c64: @ 2235c64 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	mov     r0, #0x7
	mov     r4, r2
	and     r4, r0
	ldr     r0, [pc, #0x90] @ 0x2235d04, (=0x6e4)
	str     r1, [sp, #0x0]
	ldr     r0, [r5, r0]
	lsr     r7, r2, #3
	bl      0x222bd48
	mov     r6, r0
	ldr     r0, [pc, #0x84] @ 0x2235d04, (=0x6e4)
	ldr     r0, [r5, r0]
	bl      0x222bd4c
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	bls     branch_2235cfc
	add     r0, r7, #0x3
	str     r0, [sp, #0x14]
	add     r0, r4, #0x7
	str     r0, [sp, #0xc]
.thumb
branch_2235c9a: @ 2235c9a :thumb
	mov     r4, #0x0
	cmp     r6, #0x0
	bls     branch_2235cf0
	ldr     r0, [sp, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x8]
	lsl     r0, r0, #16
	lsr     r7, r0, #16
.thumb
branch_2235cb0: @ 2235cb0 :thumb
	ldr     r0, [pc, #0x50] @ 0x2235d04, (=0x6e4)
	lsl     r1, r4, #16
	ldr     r0, [r5, r0]
	lsr     r1, r1, #16
	mov     r2, r7
	bl      0x222bde4
	ldr     r1, [sp, #0xc]
	cmp     r0, r1
	bne     branch_2235cea
	ldr     r0, [pc, #0x3c] @ 0x2235d04, (=0x6e4)
	lsl     r1, r4, #16
	ldr     r0, [r5, r0]
	ldr     r2, [sp, #0x10]
	lsr     r1, r1, #16
	bl      0x222bde4
	ldr     r1, [sp, #0x14]
	cmp     r0, r1
	bne     branch_2235cea
	ldr     r0, [sp, #0x0]
	lsl     r1, r4, #4
	strh    r1, [r0, #0x0]
	ldr     r0, [sp, #0x8]
	lsl     r1, r0, #4
	ldr     r0, [sp, #0x0]
	add     sp, #0x18
	strh    r1, [r0, #0x2]
	pop     {r3-r7,pc}
@ 0x2235cea

.thumb
branch_2235cea: @ 2235cea :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r6
	bcc     branch_2235cb0
.thumb
branch_2235cf0: @ 2235cf0 :thumb
	ldr     r0, [sp, #0x8]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	cmp     r1, r0
	bcc     branch_2235c9a
.thumb
branch_2235cfc: @ 2235cfc :thumb
	bl      ErrorHandling
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2235d04

.word 0x6e4 @ 0x2235d04
.thumb
Function_2235d08: @ 2235d08 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r7, r0
	ldr     r0, [pc, #0x68] @ 0x2235d78, (=0x6e4)
	str     r1, [sp, #0x0]
	ldr     r0, [r7, r0]
	bl      0x222bd48
	mov     r5, r0
	ldr     r0, [pc, #0x5c] @ 0x2235d78, (=0x6e4)
	ldr     r0, [r7, r0]
	bl      0x222bd4c
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	bls     branch_2235d70
.thumb
branch_2235d2e: @ 2235d2e :thumb
	mov     r4, #0x0
	cmp     r5, #0x0
	bls     branch_2235d64
	ldr     r0, [sp, #0x8]
	lsl     r0, r0, #16
	lsr     r6, r0, #16
.thumb
branch_2235d3a: @ 2235d3a :thumb
	ldr     r0, [pc, #0x3c] @ 0x2235d78, (=0x6e4)
	lsl     r1, r4, #16
	ldr     r0, [r7, r0]
	lsr     r1, r1, #16
	mov     r2, r6
	bl      0x222bde4
	cmp     r0, #0xf
	bne     branch_2235d5e
	ldr     r0, [sp, #0x0]
	lsl     r1, r4, #4
	strh    r1, [r0, #0x0]
	ldr     r0, [sp, #0x8]
	lsl     r1, r0, #4
	ldr     r0, [sp, #0x0]
	add     sp, #0xc
	strh    r1, [r0, #0x2]
	pop     {r4-r7,pc}
@ 0x2235d5e

.thumb
branch_2235d5e: @ 2235d5e :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r5
	bcc     branch_2235d3a
.thumb
branch_2235d64: @ 2235d64 :thumb
	ldr     r0, [sp, #0x8]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	cmp     r1, r0
	bcc     branch_2235d2e
.thumb
branch_2235d70: @ 2235d70 :thumb
	bl      ErrorHandling
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2235d78

.word 0x6e4 @ 0x2235d78
.thumb
Function_2235d7c: @ 2235d7c :thumb
	push    {r4,lr}
	mov     r2, #0x63
	mov     r1, #0x0
	mov     r4, r0
	lsl     r2, r2, #2
.thumb
branch_2235d86: @ 2235d86 :thumb
	ldr     r3, [r4, r2]
	cmp     r3, #0x0
	bne     branch_2235d9a
	mov     r2, #0x63
	lsl     r2, r2, #2
	add     r2, r0, r2
	mov     r0, #0x1c
	mul     r0, r1
	add     r0, r2, r0
	pop     {r4,pc}
@ 0x2235d9a

.thumb
branch_2235d9a: @ 2235d9a :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r4, #0x1c
	cmp     r1, #0x30
	blt     branch_2235d86
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2235daa


.align 2, 0


.thumb
Function_2235dac: @ 2235dac :thumb
	push    {r3-r5,lr}
	mov     r3, r0
	ldr     r0, [pc, #0x2c] @ 0x2235de0, (=0x6ec)
	mov     r5, r1
	ldr     r0, [r3, r0]
	ldr     r1, [r5, #0x0]
	ldr     r3, [r3, #0x4]
	mov     r4, r2
	bl      0x222ce44
	str     r0, [r5, #0x4]
	cmp     r4, #0x0
	bne     branch_2235ddc
	ldr     r0, [r5, #0x4]
	mov     r1, #0x0
	bl      0x222cfa4
	ldr     r0, [r5, #0x4]
	bl      0x222cfa8
	ldr     r0, [r5, #0x4]
	mov     r1, #0x0
	bl      0x222d008
.thumb
branch_2235ddc: @ 2235ddc :thumb
	pop     {r3-r5,pc}
@ 0x2235dde


.align 2


.word 0x6ec @ 0x2235de0
.thumb
Function_2235de4: @ 2235de4 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r1, #0x0
	ldsh    r1, [r2, r1]
	add     r5, sp, #0x0
	strh    r1, [r5, #0x0]
	mov     r1, #0x2
	ldsh    r1, [r2, r1]
	strh    r1, [r5, #0x2]
	ldr     r1, [sp, #0x20]
	strh    r3, [r5, #0x4]
	strh    r1, [r5, #0x6]
	add     r1, sp, #0x8
	ldrb    r2, [r1, #0x14]
	strh    r2, [r5, #0x8]
	ldrh    r1, [r1, #0x10]
	strh    r1, [r5, #0xa]
	ldr     r1, [pc, #0xc] @ 0x2235e18, (=0x6e8)
	ldr     r0, [r0, r1]
	add     r1, sp, #0x0
	bl      0x222bec0
	str     r0, [r4, #0x0]
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2235e18

.word 0x6e8 @ 0x2235e18
.thumb
Function_2235e1c: @ 2235e1c :thumb
	ldrh    r0, [r0, #0xc]
	cmp     r0, #0x5
	bhi     branch_2235e42
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2235e2e

Jumppoints_2235e2e:
.hword branch_2235e3a - Jumppoints_2235e2e - 2
.hword branch_2235e3e - Jumppoints_2235e2e - 2
.hword branch_2235e3e - Jumppoints_2235e2e - 2
.hword branch_2235e3a - Jumppoints_2235e2e - 2
.hword branch_2235e3a - Jumppoints_2235e2e - 2
.hword branch_2235e3e - Jumppoints_2235e2e - 2
.thumb
branch_2235e3a: @ 2235e3a :thumb
	mov     r0, #0x1
	bx      lr
@ 0x2235e3e

.thumb
branch_2235e3e: @ 2235e3e :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2235e42

.thumb
branch_2235e42: @ 2235e42 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2235e46


.align 2, 0


.thumb
Function_2235e48: @ 2235e48 :thumb
	mov     r2, r1
	ldr     r1, [pc, #0x10] @ 0x2235e5c, (=0x2236045)
	ldr     r3, [pc, #0x10] @ 0x2235e60, (=0x2236251)
	str     r1, [r2, #0x10]
	ldr     r1, [pc, #0x10] @ 0x2235e64, (=0x2235ef5)
	str     r1, [r2, #0x18]
	mov     r1, #0x0
	strh    r1, [r2, #0xc]
	bx      r3
@ 0x2235e5a


.align 2


.word 0x2236045 @ 0x2235e5c
.word 0x2236251 @ 0x2235e60
.word Function_2235ef4+1 @ =0x2235ef5, 0x2235e64
.thumb
Function_2235e68: @ 2235e68 :thumb
	ldr     r0, [pc, #0x10] @ 0x2235e7c, (=0x2236159)
	str     r0, [r1, #0x10]
	ldr     r0, [pc, #0x10] @ 0x2235e80, (=0x2235ef9)
	str     r0, [r1, #0x18]
	mov     r0, #0x2d
	strh    r0, [r1, #0x8]
	mov     r0, #0x1
	strh    r0, [r1, #0xc]
	bx      lr
@ 0x2235e7a


.align 2


.word 0x2236159 @ 0x2235e7c
.word 0x2235ef9 @ 0x2235e80
.thumb
Function_2235e84: @ 2235e84 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x30] @ 0x2235ebc, (=0x22361c9)
	mov     r4, r1
	str     r0, [r4, #0x10]
	ldr     r0, [pc, #0x30] @ 0x2235ec0, (=0x2235ef5)
	str     r0, [r4, #0x18]
	bl      Function_201d35c
	ldr     r1, [pc, #0x2c] @ 0x2235ec4, (=0x3ff)
	mov     r2, r4
	and     r1, r0
	mov     r0, #0x1
	lsl     r0, r0, #8
	add     r0, r1, r0
	strh    r0, [r4, #0x8]
	mov     r0, #0x3
	strh    r0, [r4, #0xc]
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2236250
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      0x222cfa4
	pop     {r3-r5,pc}
@ 0x2235eba


.align 2


.word 0x22361c9 @ 0x2235ebc
.word Function_2235ef4+1 @ =0x2235ef5, 0x2235ec0
.word 0x3ff @ 0x2235ec4
.thumb
Function_2235ec8: @ 2235ec8 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r1, [pc, #0x1c] @ 0x2235eec, (=0x2236215)
	mov     r2, r4
	str     r1, [r4, #0x10]
	ldr     r1, [pc, #0x1c] @ 0x2235ef0, (=0x2235f95)
	str     r1, [r4, #0x18]
	mov     r1, #0x1c
	strh    r1, [r4, #0x8]
	mov     r1, #0x4
	strh    r1, [r4, #0xc]
	bl      Function_2236250
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	bl      0x222cfa4
	pop     {r4,pc}
@ 0x2235eec

.word Function_2236214+1 @ =0x2236215, 0x2235eec
.word 0x2235f95 @ 0x2235ef0
.thumb
Function_2235ef4: @ 2235ef4 :thumb
	bx      lr
@ 0x2235ef6


.align 2, 0


.thumb
Function_2235ef8: @ 2235ef8 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r4, r1
	ldr     r0, [r4, #0x4]
	bl      0x222cfb4
	ldr     r0, [r4, #0x4]
	bl      0x222cffc
	cmp     r0, #0x0
	bne     branch_2235f16
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      0x222d008
.thumb
branch_2235f16: @ 2235f16 :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	bl      0x222bf90
	add     r1, sp, #0x0
	strh    r0, [r1, #0x4]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      0x222bf90
	add     r1, sp, #0x0
	strh    r0, [r1, #0x6]
	ldrh    r0, [r1, #0x4]
	strh    r0, [r1, #0x0]
	ldrh    r0, [r1, #0x6]
	strh    r0, [r1, #0x2]
	ldrh    r0, [r4, #0x8]
	bl      Function_201d15c
	ldr     r2, [pc, #0x50] @ 0x2235f90, (=0xfff40000)
	asr     r1, r0, #31
	asr     r3, r2, #20
	blx     _ll_mul
	mov     r5, #0x2
	mov     r6, #0x0
	lsl     r5, r5, #10
	mov     r3, #0x6
	add     r2, sp, #0x0
	add     r5, r0, r5
	adc     r1, r6
	lsl     r0, r1, #20
	lsr     r1, r5, #12
	orr     r1, r0
	ldsh    r3, [r2, r3]
	asr     r0, r1, #12
	add     r0, r3, r0
	strh    r0, [r2, #0x6]
	mov     r3, sp
	ldrh    r1, [r2, #0x4]
	ldr     r0, [r4, #0x4]
	.hword  0x1f1b @ sub r3, r3, #0x4
	strh    r1, [r3, #0x0]
	ldrh    r1, [r2, #0x6]
	strh    r1, [r3, #0x2]
	ldr     r1, [r3, #0x0]
	bl      0x222cfe0
	add     r1, sp, #0x0
	mov     r3, sp
	ldrh    r2, [r1, #0x0]
	ldr     r0, [r4, #0x4]
	.hword  0x1f1b @ sub r3, r3, #0x4
	strh    r2, [r3, #0x0]
	ldrh    r1, [r1, #0x2]
	strh    r1, [r3, #0x2]
	ldr     r1, [r3, #0x0]
	bl      0x222d060
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2235f90

.word 0xfff40000 @ 0x2235f90
.thumb
Function_2235f94: @ 2235f94 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r4, r1
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	bl      0x222bf90
	add     r1, sp, #0x0
	strh    r0, [r1, #0x4]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      0x222bf90
	add     r1, sp, #0x0
	strh    r0, [r1, #0x6]
	ldrh    r0, [r1, #0x4]
	strh    r0, [r1, #0x0]
	ldrh    r0, [r1, #0x6]
	strh    r0, [r1, #0x2]
	mov     r0, #0x8
	ldsh    r0, [r4, r0]
	sub     r0, #0x10
	lsl     r0, r0, #16
	asr     r0, r0, #16
	cmp     r0, #0x0
	ble     branch_223600a
	mov     r1, #0x6
	blx     _s32_div_f
	lsl     r0, r1, #16
	asr     r1, r0, #16
	mov     r0, #0xb4
	mul     r0, r1
	mov     r1, #0x6
	blx     _s32_div_f
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_201d15c
	add     r1, sp, #0x0
	mov     r2, #0x6
	ldsh    r3, [r1, r2]
	asr     r2, r0, #31
	lsr     r5, r0, #18
	lsl     r2, r2, #14
	lsl     r6, r0, #14
	mov     r0, #0x2
	orr     r2, r5
	mov     r5, #0x0
	lsl     r0, r0, #10
	add     r6, r6, r0
	adc     r2, r5
	lsl     r0, r2, #20
	lsr     r2, r6, #12
	orr     r2, r0
	asr     r0, r2, #12
	sub     r0, r3, r0
	strh    r0, [r1, #0x6]
.thumb
branch_223600a: @ 223600a :thumb
	add     r1, sp, #0x0
	ldrh    r2, [r1, #0x4]
	mov     r3, sp
	ldr     r0, [r4, #0x4]
	.hword  0x1f1b @ sub r3, r3, #0x4
	strh    r2, [r3, #0x0]
	ldrh    r1, [r1, #0x6]
	strh    r1, [r3, #0x2]
	ldr     r1, [r3, #0x0]
	bl      0x222cfe0
	add     r1, sp, #0x0
	mov     r3, sp
	ldrh    r2, [r1, #0x0]
	ldr     r0, [r4, #0x4]
	.hword  0x1f1b @ sub r3, r3, #0x4
	strh    r2, [r3, #0x0]
	ldrh    r1, [r1, #0x2]
	strh    r1, [r3, #0x2]
	ldr     r1, [r3, #0x0]
	bl      0x222d060
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      0x222d020
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2236042


.align 2, 0


.thumb
Function_2236044: @ 2236044 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r5, r0
	ldr     r0, [r6, #0x0]
	mov     r1, #0x6
	bl      0x222bf90
	mov     r4, r0
	ldr     r0, [r6, #0x0]
	mov     r1, #0x4
	bl      0x222bf90
	mov     r7, r0
	ldr     r0, [r6, #0x0]
	mov     r1, #0x5
	bl      0x222bf90
	cmp     r0, #0x0
	beq     branch_223606e
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x223606e

.thumb
branch_223606e: @ 223606e :thumb
	ldr     r0, [pc, #0xe4] @ 0x2236154, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_22360a8
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	bl      Function_22357a8
	str     r0, [sp, #0x0]
	cmp     r0, #0x0
	beq     branch_22360a4
	bl      Function_2235e1c
	cmp     r0, #0x1
	bne     branch_223609e
	ldr     r0, [sp, #0x0]
	mov     r1, #0x4
	ldr     r0, [r0, #0x0]
	bl      0x222bf90
	strb    r0, [r6, #0xa]
	b       branch_22360a8
@ 0x223609e

.thumb
branch_223609e: @ 223609e :thumb
	mov     r0, #0x0
	strb    r0, [r6, #0xa]
	b       branch_22360a8
@ 0x22360a4

.thumb
branch_22360a4: @ 22360a4 :thumb
	mov     r0, #0x0
	strb    r0, [r6, #0xa]
.thumb
branch_22360a8: @ 22360a8 :thumb
	ldr     r0, [r5, #0xc]
	cmp     r0, #0x1
	bne     branch_22360b2
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22360b2

.thumb
branch_22360b2: @ 22360b2 :thumb
	ldr     r0, [pc, #0xa0] @ 0x2236154, (=0x21bf67c)
	mov     r1, #0x2
	ldr     r0, [r0, #0x44]
	mov     r2, r0
	tst     r2, r1
	beq     branch_22360c0
	mov     r1, #0x3
.thumb
branch_22360c0: @ 22360c0 :thumb
	mov     r2, #0x40
	tst     r2, r0
	beq     branch_22360e4
	cmp     r4, #0x0
	bne     branch_22360d6
	mov     r0, r5
	mov     r2, r4
	mov     r3, r7
	bl      Function_2236230
	b       branch_223614e
@ 0x22360d6

.thumb
branch_22360d6: @ 22360d6 :thumb
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0x0
	mov     r3, r7
	bl      Function_2236230
	b       branch_223614e
@ 0x22360e4

.thumb
branch_22360e4: @ 22360e4 :thumb
	mov     r2, #0x80
	tst     r2, r0
	beq     branch_2236108
	cmp     r4, #0x1
	bne     branch_22360fa
	mov     r0, r5
	mov     r2, r4
	mov     r3, r7
	bl      Function_2236230
	b       branch_223614e
@ 0x22360fa

.thumb
branch_22360fa: @ 22360fa :thumb
	mov     r1, #0x1
	mov     r0, r5
	mov     r2, r1
	mov     r3, r7
	bl      Function_2236230
	b       branch_223614e
@ 0x2236108

.thumb
branch_2236108: @ 2236108 :thumb
	mov     r2, #0x20
	tst     r2, r0
	beq     branch_223612c
	cmp     r4, #0x2
	bne     branch_223611e
	mov     r0, r5
	mov     r2, r4
	mov     r3, r7
	bl      Function_2236230
	b       branch_223614e
@ 0x223611e

.thumb
branch_223611e: @ 223611e :thumb
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0x2
	mov     r3, r7
	bl      Function_2236230
	b       branch_223614e
@ 0x223612c

.thumb
branch_223612c: @ 223612c :thumb
	mov     r2, #0x10
	tst     r0, r2
	beq     branch_223614e
	cmp     r4, #0x3
	bne     branch_2236142
	mov     r0, r5
	mov     r2, r4
	mov     r3, r7
	bl      Function_2236230
	b       branch_223614e
@ 0x2236142

.thumb
branch_2236142: @ 2236142 :thumb
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0x3
	mov     r3, r7
	bl      Function_2236230
.thumb
branch_223614e: @ 223614e :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2236152


.align 2


.word 0x21bf67c @ 0x2236154
.thumb
Function_2236158: @ 2236158 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r0, #0x8
	ldsh    r1, [r4, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strh    r1, [r4, #0x8]
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	bgt     branch_22361a8
	ldr     r0, [r4, #0x4]
	bl      0x222cfc0
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      0x222cfa4
	ldr     r0, [pc, #0x30] @ 0x22361ac, (=0x6cc)
	mov     r1, #0x4
	ldr     r0, [r5, r0]
	ldr     r0, [r0, #0x0]
	bl      0x222bf90
	mov     r6, r0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x4
	bl      0x222bf90
	cmp     r0, r6
	bne     branch_223619e
	mov     r0, r5
	mov     r1, r4
	bl      Function_2235e48
	b       branch_22361a8
@ 0x223619e

.thumb
branch_223619e: @ 223619e :thumb
	ldrb    r2, [r4, #0xb]
	mov     r0, r5
	mov     r1, r4
	bl      Function_223628c
.thumb
branch_22361a8: @ 22361a8 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x22361ac

.word 0x6cc @ 0x22361ac
.thumb
Function_22361b0: @ 22361b0 :thumb
	mov     r0, #0x8
	ldsh    r2, [r1, r0]
	.hword  0x1c52 @ add r2, r2, #0x1
	strh    r2, [r1, #0x8]
	ldsh    r0, [r1, r0]
	cmp     r0, #0x2d
	ble     branch_22361c2
	mov     r0, #0x1
	bx      lr
@ 0x22361c2

.thumb
branch_22361c2: @ 22361c2 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x22361c6


.align 2, 0


.thumb
Function_22361c8: @ 22361c8 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r0, #0x8
	ldsh    r1, [r5, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strh    r1, [r5, #0x8]
	ldsh    r0, [r5, r0]
	cmp     r0, #0x0
	bgt     branch_223620a
	bl      Function_201d35c
	ldr     r1, [pc, #0x2c] @ 0x2236210, (=0x3ff)
	and     r1, r0
	mov     r0, #0x1
	lsl     r0, r0, #8
	add     r0, r1, r0
	strh    r0, [r5, #0x8]
	bl      Function_201d35c
	mov     r4, r0
	mov     r1, #0x3
	and     r4, r1
	ldr     r0, [r5, #0x0]
	mov     r1, #0x4
	bl      0x222bf90
	mov     r3, r0
	mov     r0, r6
	mov     r1, #0x0
	mov     r2, r4
	bl      Function_2236230
.thumb
branch_223620a: @ 223620a :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x223620e


.align 2


.word 0x3ff @ 0x2236210
.thumb
Function_2236214: @ 2236214 :thumb
	mov     r0, #0x8
	ldsh    r2, [r1, r0]
	.hword  0x1e52 @ sub r2, r2, #0x1
	strh    r2, [r1, #0x8]
	ldsh    r0, [r1, r0]
	cmp     r0, #0x0
	bge     branch_2236226
	mov     r0, #0x1c
	strh    r0, [r1, #0x8]
.thumb
branch_2236226: @ 2236226 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x223622a


.align 2, 0


.thumb
Function_223622c: @ 223622c :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2236230

.thumb
Function_2236230: @ 2236230 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	add     r4, sp, #0x0
	strh    r1, [r4, #0x0]
	strb    r2, [r4, #0x2]
	ldr     r1, [pc, #0x10] @ 0x223624c, (=0x6f8)
	strb    r3, [r4, #0x3]
	ldr     r0, [r0, r1]
	add     r1, sp, #0x0
	bl      0x222d894
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223624a


.align 2


.word 0x6f8 @ 0x223624c
.thumb
Function_2236250: @ 2236250 :thumb
	push    {r3-r7,lr}
	mov     r4, r2
	mov     r5, r0
	mov     r6, r1
	ldr     r0, [r4, #0x0]
	mov     r1, #0x6
	bl      0x222bf90
	mov     r7, r0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x4
	bl      0x222bf90
	mov     r3, r0
	mov     r0, r5
	mov     r1, r6
	mov     r2, r7
	bl      Function_2236230
	pop     {r3-r7,pc}
@ 0x2236278

.thumb
Function_2236278: @ 2236278 :thumb
	ldr     r1, [r0, #0x18]
	ldr     r0, [pc, #0xc] @ 0x2236288, (=0x2235ef9)
	cmp     r1, r0
	beq     branch_2236284
	mov     r0, #0x1
	bx      lr
@ 0x2236284

.thumb
branch_2236284: @ 2236284 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2236288

.word 0x2235ef9 @ 0x2236288
.thumb
Function_223628c: @ 223628c :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r2
	beq     branch_223629a
	cmp     r4, #0x1
	beq     branch_22362a0
	b       branch_22362a6
@ 0x223629a

.thumb
branch_223629a: @ 223629a :thumb
	bl      Function_2235e84
	b       branch_22362aa
@ 0x22362a0

.thumb
branch_22362a0: @ 22362a0 :thumb
	bl      Function_2235ec8
	b       branch_22362aa
@ 0x22362a6

.thumb
branch_22362a6: @ 22362a6 :thumb
	bl      ErrorHandling
.thumb
branch_22362aa: @ 22362aa :thumb
	strb    r4, [r5, #0xb]
	pop     {r3-r5,pc}
@ 0x22362ae


.align 2, 0


.thumb
Function_22362b0: @ 22362b0 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r3, r0
	mov     r5, r4
	mov     r1, #0x14
	mov     r0, #0x0
.thumb
branch_22362bc: @ 22362bc :thumb
	strb    r0, [r5, #0x0]
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_22362bc
	ldr     r3, [r3, #0x4]
	mov     r0, r2
	mov     r1, #0x1f
	add     r2, r4, #0x4
	bl      Function_20071ec
	str     r0, [r4, #0x0]
	mov     r0, #0xf
	strb    r0, [r4, #0x8]
	mov     r0, #0x0
	strb    r0, [r4, #0x9]
	ldrb    r0, [r4, #0x9]
	lsl     r1, r0, #1
	ldr     r0, [pc, #0x8] @ 0x22362e8, (=0x2238bc8)
	ldrh    r0, [r0, r1]
	strh    r0, [r4, #0xa]
	pop     {r3-r5,pc}
@ 0x22362e6


.align 2


.word 0x2238bc8 @ 0x22362e8
.thumb
Function_22362ec: @ 22362ec :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r0, [r4, #0x0]
	bl      free
	mov     r1, #0x14
	mov     r0, #0x0
.thumb
branch_22362fa: @ 22362fa :thumb
	strb    r0, [r4, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_22362fa
	pop     {r4,pc}
@ 0x2236304

.thumb
Function_2236304: @ 2236304 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	bl      Function_2236318
	mov     r0, r4
	bl      Function_2236384
	pop     {r4,pc}
@ 0x2236316


.align 2, 0


.thumb
Function_2236318: @ 2236318 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r0, #0xa
	ldsh    r1, [r5, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strh    r1, [r5, #0xa]
	ldsh    r0, [r5, r0]
	cmp     r0, #0x0
	bgt     branch_223637e
	ldrb    r0, [r5, #0x9]
	.hword  0x1c40 @ add r0, r0, #0x1
	lsr     r2, r0, #31
	lsl     r1, r0, #31
	sub     r1, r1, r2
	mov     r0, #0x1f
	ror     r1, r0
	add     r0, r2, r1
	strb    r0, [r5, #0x9]
	ldrb    r0, [r5, #0x9]
	lsl     r1, r0, #1
	ldr     r0, [pc, #0x3c] @ 0x2236380, (=0x2238bc8)
	ldrh    r0, [r0, r1]
	strh    r0, [r5, #0xa]
	ldrb    r0, [r5, #0x9]
	cmp     r0, #0x1
	bne     branch_2236350
	mov     r6, #0x2
	b       branch_2236352
@ 0x2236350

.thumb
branch_2236350: @ 2236350 :thumb
	mov     r6, #0x1
.thumb
branch_2236352: @ 2236352 :thumb
	mov     r4, #0x0
	mov     r7, #0x1
.thumb
branch_2236356: @ 2236356 :thumb
	mov     r0, r7
	ldrb    r1, [r5, #0x8]
	lsl     r0, r4
	tst     r0, r1
	beq     branch_2236378
	mov     r0, r5
	mov     r1, r6
	bl      Function_2236410
	add     r1, r4, #0x1
	lsl     r1, r1, #1
	mov     r2, r0
	mov     r0, #0xf
	add     r1, #0xe0
	mov     r3, #0x2
	bl      Function_201dc68
.thumb
branch_2236378: @ 2236378 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x4
	blt     branch_2236356
.thumb
branch_223637e: @ 223637e :thumb
	pop     {r3-r7,pc}
@ 0x2236380

.word 0x2238bc8 @ 0x2236380
.thumb
Function_2236384: @ 2236384 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldrb    r3, [r4, #0xd]
	mov     r0, #0x0
	mov     r1, r0
	lsl     r5, r3, #2
	ldr     r3, [pc, #0x6c] @ 0x2236400, (=0x2238bd7)
	mov     r2, r0
	ldrb    r3, [r3, r5]
	cmp     r3, #0x1
	bne     branch_22363ac
	mov     r3, #0xe
	ldsh    r5, [r4, r3]
	.hword  0x1e6d @ sub r5, r5, #0x1
	strh    r5, [r4, #0xe]
	ldsh    r3, [r4, r3]
	cmp     r3, #0x0
	bgt     branch_22363b6
	mov     r2, #0x1
	b       branch_22363b6
@ 0x22363ac

.thumb
branch_22363ac: @ 22363ac :thumb
	ldrb    r3, [r4, #0x10]
	cmp     r3, #0x0
	beq     branch_22363b6
	strb    r0, [r4, #0x10]
	mov     r2, #0x1
.thumb
branch_22363b6: @ 22363b6 :thumb
	cmp     r2, #0x0
	beq     branch_22363e2
	ldrb    r0, [r4, #0xd]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0xd]
	ldrb    r0, [r4, #0xd]
	cmp     r0, #0x8
	bcc     branch_22363ce
	mov     r0, r4
	bl      Function_223641c
	pop     {r3-r5,pc}
@ 0x22363ce

.thumb
branch_22363ce: @ 22363ce :thumb
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x30] @ 0x2236404, (=0x2238bd8)
	ldrb    r0, [r0, r1]
	ldr     r1, [pc, #0x30] @ 0x2236408, (=0x2238bda)
	strh    r0, [r4, #0xe]
	ldrb    r0, [r4, #0xd]
	lsl     r2, r0, #2
	ldr     r0, [pc, #0x2c] @ 0x223640c, (=0x2238bd9)
	ldrb    r1, [r1, r2]
	ldrb    r0, [r0, r2]
.thumb
branch_22363e2: @ 22363e2 :thumb
	cmp     r0, #0x0
	beq     branch_22363fe
	mov     r0, r4
	bl      Function_2236410
	ldrb    r1, [r4, #0xc]
	mov     r2, r0
	mov     r0, #0xf
	.hword  0x1c49 @ add r1, r1, #0x1
	lsl     r1, r1, #1
	add     r1, #0xe0
	mov     r3, #0x2
	bl      Function_201dc68
.thumb
branch_22363fe: @ 22363fe :thumb
	pop     {r3-r5,pc}
@ 0x2236400

.word 0x2238bd7 @ 0x2236400
.word 0x2238bd8 @ 0x2236404
.word 0x2238bda @ 0x2236408
.word 0x2238bd9 @ 0x223640c
.thumb
Function_2236410: @ 2236410 :thumb
	ldr     r0, [r0, #0x4]
	ldr     r2, [r0, #0xc]
	add     r0, r1, #0x1
	lsl     r0, r0, #1
	add     r0, r2, r0
	bx      lr
@ 0x223641c

.thumb
Function_223641c: @ 223641c :thumb
	ldrb    r1, [r0, #0xc]
	ldrb    r3, [r0, #0x8]
	mov     r2, #0x1
	lsl     r2, r1
	mov     r1, r3
	orr     r1, r2
	strb    r1, [r0, #0x8]
	mov     r1, #0x0
	strb    r1, [r0, #0xc]
	strb    r1, [r0, #0xd]
	strh    r1, [r0, #0xe]
	strb    r1, [r0, #0x10]
	bx      lr
@ 0x2236436


.align 2, 0


.thumb
Function_2236438: @ 2236438 :thumb
	mov     r1, #0x1
	strb    r1, [r0, #0x10]
	bx      lr
@ 0x223643e


.align 2, 0


.thumb
Function_2236440: @ 2236440 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	ldrb    r1, [r5, #0xd]
	cmp     r1, #0x0
	beq     branch_2236450
	bl      Function_223641c
.thumb
branch_2236450: @ 2236450 :thumb
	mov     r0, #0x1
	ldrb    r1, [r5, #0x8]
	lsl     r0, r4
	eor     r0, r1
	strb    r0, [r5, #0x8]
	mov     r0, r5
	strb    r4, [r5, #0xc]
	bl      Function_2236438
	pop     {r3-r5,pc}
@ 0x2236464

.thumb
Function_2236464: @ 2236464 :thumb
	push    {r3,lr}
	ldrb    r1, [r0, #0xd]
	cmp     r1, #0x0
	beq     branch_2236470
	bl      Function_2236438
.thumb
branch_2236470: @ 2236470 :thumb
	pop     {r3,pc}
@ 0x2236472


.align 2, 0


.thumb
Function_2236474: @ 2236474 :thumb
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x4] @ 0x223647c, (=0x2238bf8)
	ldr     r0, [r0, r1]
	bx      lr
@ 0x223647c

.word 0x2238bf8 @ 0x223647c
.thumb
Function_2236480: @ 2236480 :thumb
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x4] @ 0x2236488, (=0x2239e4c)
	ldr     r0, [r0, r1]
	bx      lr
@ 0x2236488

.word 0x2239e4c @ 0x2236488
.thumb
Function_223648c: @ 223648c :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      LoadPtrToOverWorldDataIn18
	mov     r5, r0
	ldr     r0, [pc, #0xa8] @ 0x2236540, (=0x3f)
	mov     r1, #0x2
	bl      LoadOverlay
	bl      Function_20389b8
	cmp     r0, #0x1
	beq     branch_22364aa
	bl      ErrorHandling
.thumb
branch_22364aa: @ 22364aa :thumb
	mov     r1, #0x60
	mov     r0, #0x3
	lsl     r2, r1, #10
	bl      Function_2017fc8
	mov     r2, #0xa
	mov     r0, #0x3
	mov     r1, #0x61
	lsl     r2, r2, #12
	bl      Function_2017fc8
	mov     r1, #0x8a
	mov     r0, r4
	lsl     r1, r1, #2
	mov     r2, #0x60
	bl      MallocSomeDataAndStorePtrInOverlayData1c
	mov     r2, #0x8a
	mov     r4, r0
	mov     r1, #0x0
	lsl     r2, r2, #2
	blx     MI_CpuFill8
	mov     r0, r4
	add     r0, #0x1c
	mov     r1, #0x1
	mov     r2, #0x4
	blx     MI_CpuFill8
	mov     r0, r4
	add     r0, #0x20
	mov     r1, #0x1
	mov     r2, #0x4
	blx     MI_CpuFill8
	mov     r0, #0x10
	mov     r1, #0x60
	bl      Function_201dbec
	bl      Function_20388e8
	mov     r1, r0
	str     r0, [r4, #0x0]
	add     r1, #0x22
	ldrb    r1, [r1, #0x0]
	add     r0, #0x21
	strb    r1, [r0, #0x0]
	mov     r0, r4
	bl      Function_2236794
	strb    r0, [r4, #0x4]
	mov     r0, #0xff
	strb    r0, [r4, #0x6]
	mov     r0, r4
	bl      Function_209c390
	mov     r0, r4
	bl      Function_223760c
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x60
	bl      Function_22367a8
	ldr     r0, [pc, #0x18] @ 0x2236544, (=0x2236781)
	mov     r1, r4
	bl      SetMainLoopFunctionCall
	bl      Function_2039734
	mov     r0, #0x1
	add     r4, #0x27
	strb    r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x223653e


.align 2


.word 0x3f @ 0x2236540
.word 0x2236781 @ 0x2236544
.thumb
Function_2236548: @ 2236548 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r6, r0
	mov     r5, r1
	bl      LoadOverlayData1c
	mov     r4, r0
	mov     r0, r6
	bl      LoadPtrToOverWorldDataIn18
	mov     r7, r0
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x4
	bls     branch_2236566
	b       branch_223666e
@ 0x2236566

.thumb
branch_2236566: @ 2236566 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2236572

Jumppoints_2236572:
.hword branch_223657c - Jumppoints_2236572 - 2
.hword branch_223659a - Jumppoints_2236572 - 2
.hword branch_22365aa - Jumppoints_2236572 - 2
.hword branch_2236640 - Jumppoints_2236572 - 2
.hword branch_2236660 - Jumppoints_2236572 - 2
.thumb
branch_223657c: @ 223657c :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x60
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	mov     r2, r1
	mov     r3, #0x0
	bl      Function_200f174
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_223666e
@ 0x223659a

.thumb
branch_223659a: @ 223659a :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_223666e
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_223666e
@ 0x22365aa

.thumb
branch_22365aa: @ 22365aa :thumb
	mov     r0, r4
	add     r0, #0x27
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_22365be
	mov     r0, r4
	mov     r1, r7
	mov     r2, #0x60
	bl      Function_2237370
.thumb
branch_22365be: @ 22365be :thumb
	ldrb    r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_22365f0
	bl      Function_2032aac
	cmp     r0, #0x1
	bne     branch_22365dc
	mov     r0, r4
	bl      Function_2237970
	bl      Function_2032ce8
	mov     r0, r4
	bl      Function_223782c
.thumb
branch_22365dc: @ 22365dc :thumb
	ldrb    r3, [r4, #0x5]
	mov     r0, r4
	mov     r1, r7
	lsl     r6, r3, #2
	ldr     r3, [pc, #0x9c] @ 0x2236684, (=0x2239b80)
	mov     r2, #0x60
	ldr     r3, [r3, r6]
	blx     r3
	mov     r6, r0
	b       branch_2236612
@ 0x22365f0

.thumb
branch_22365f0: @ 22365f0 :thumb
	ldrb    r3, [r4, #0x5]
	mov     r0, r4
	mov     r1, r7
	lsl     r6, r3, #2
	ldr     r3, [pc, #0x8c] @ 0x2236688, (=0x2239b08)
	mov     r2, #0x60
	ldr     r3, [r3, r6]
	blx     r3
	mov     r6, r0
	bl      Function_2032aac
	cmp     r0, #0x1
	bne     branch_2236612
	mov     r0, r4
	mov     r1, #0x60
	bl      Function_2237860
.thumb
branch_2236612: @ 2236612 :thumb
	mov     r0, r4
	bl      Function_2237660
	cmp     r0, #0x0
	beq     branch_2236626
	mov     r0, r4
	mov     r1, r7
	mov     r2, #0x60
	bl      Function_2237034
.thumb
branch_2236626: @ 2236626 :thumb
	mov     r0, r4
	bl      Function_22377a4
	cmp     r6, #0x1
	bne     branch_223666e
	ldrb    r0, [r4, #0x7]
	strb    r0, [r7, #0x3]
	ldrb    r0, [r4, #0x11]
	strb    r0, [r7, #0x4]
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_223666e
@ 0x2236640

.thumb
branch_2236640: @ 2236640 :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x60
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	mov     r2, r1
	mov     r3, r1
	bl      Function_200f174
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_223666e
@ 0x2236660

.thumb
branch_2236660: @ 2236660 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_223666e
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x223666e

.thumb
branch_223666e: @ 223666e :thumb
	mov     r0, r4
	add     r0, #0x30
	bl      Function_22372b0
	ldr     r0, [r4, #0x48]
	bl      Function_20219f8
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2236682


.align 2


.word 0x2239b80 @ 0x2236684
.word 0x2239b08 @ 0x2236688
.thumb
Function_223668c: @ 223668c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      LoadOverlayData1c
	mov     r4, r0
	mov     r0, r5
	bl      LoadPtrToOverWorldDataIn18
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	mov     r0, r4
	bl      Function_223761c
	mov     r0, r4
	bl      Function_22377e8
	mov     r0, r4
	bl      Function_2237504
	mov     r0, r4
	mov     r1, #0x60
	bl      Function_22367f8
	bl      Function_201dc3c
	mov     r0, r5
	bl      FreeSomeDataAndStore0InOverlayData1c
	mov     r0, #0x61
	bl      Function_201807c
	mov     r0, #0x60
	bl      Function_201807c
	ldr     r0, [pc, #0x8] @ 0x22366e0, (=0x3f)
	bl      UnloadOverlay
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x22366de


.align 2


.word 0x3f @ 0x22366e0
.thumb
Function_22366e4: @ 22366e4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldrb    r0, [r5, #0x4]
	mov     r4, r1
	cmp     r0, #0x0
	bne     branch_2236742
	ldrh    r6, [r4, #0x0]
	bl      Function_203608c
	cmp     r6, r0
	ldr     r0, [r4, #0x4]
	bne     branch_223671c
	cmp     r0, #0x0
	beq     branch_2236710
	cmp     r0, #0x1
	beq     branch_223670a
	cmp     r0, #0x2
	beq     branch_2236716
	pop     {r4-r6,pc}
@ 0x223670a

.thumb
branch_223670a: @ 223670a :thumb
	mov     r0, #0x1
	strb    r0, [r5, #0x13]
	pop     {r4-r6,pc}
@ 0x2236710

.thumb
branch_2236710: @ 2236710 :thumb
	mov     r0, #0x2
	strb    r0, [r5, #0x13]
	pop     {r4-r6,pc}
@ 0x2236716

.thumb
branch_2236716: @ 2236716 :thumb
	mov     r0, #0x3
	strb    r0, [r5, #0x13]
	pop     {r4-r6,pc}
@ 0x223671c

.thumb
branch_223671c: @ 223671c :thumb
	cmp     r0, #0x0
	beq     branch_2236734
	cmp     r0, #0x1
	beq     branch_223672a
	cmp     r0, #0x2
	beq     branch_2236734
	pop     {r4-r6,pc}
@ 0x223672a

.thumb
branch_223672a: @ 223672a :thumb
	add     r0, r5, r6
	mov     r1, #0x1
	add     r0, #0x28
	strb    r1, [r0, #0x0]
	pop     {r4-r6,pc}
@ 0x2236734

.thumb
branch_2236734: @ 2236734 :thumb
	bl      Function_2032aac
	cmp     r0, #0x1
	bne     branch_2236742
	ldrh    r0, [r4, #0x0]
	bl      Function_2032d98
.thumb
branch_2236742: @ 2236742 :thumb
	pop     {r4-r6,pc}
@ 0x2236744

.thumb
Function_2236744: @ 2236744 :thumb
	push    {r3,lr}
	mov     r1, r0
	add     r1, #0x2c
	ldrb    r1, [r1, #0x0]
	cmp     r1, #0x0
	bne     branch_223675c
	mov     r1, #0x1
	add     r0, #0x2c
	strb    r1, [r0, #0x0]
	mov     r0, #0xd
	bl      Function_20364f0
.thumb
branch_223675c: @ 223675c :thumb
	pop     {r3,pc}
@ 0x223675e


.align 2, 0


.thumb
Function_2236760: @ 2236760 :thumb
	ldrb    r2, [r0, #0x4]
	cmp     r2, #0x1
	beq     branch_223677c
	ldrb    r2, [r1, #0x0]
	mov     r3, r0
	add     r0, #0x20
	strb    r2, [r0, #0x0]
	ldrb    r0, [r1, #0x1]
	add     r3, #0x20
	strb    r0, [r3, #0x1]
	ldrb    r0, [r1, #0x2]
	strb    r0, [r3, #0x2]
	ldrb    r0, [r1, #0x3]
	strb    r0, [r3, #0x3]
.thumb
branch_223677c: @ 223677c :thumb
	bx      lr
@ 0x223677e


.align 2, 0


.thumb
Function_2236780: @ 2236780 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x30]
	bl      Function_201c2b8
	bl      Function_201dcac
	bl      Function_200a858
	pop     {r3,pc}
@ 0x2236792


.align 2, 0


.thumb
Function_2236794: @ 2236794 :thumb
	push    {r3,lr}
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_22367a2
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x22367a2

.thumb
branch_22367a2: @ 22367a2 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x22367a6


.align 2, 0


.thumb
Function_22367a8: @ 22367a8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	bl      Function_2236820
	mov     r0, r5
	add     r0, #0x30
	mov     r1, r6
	bl      Function_2236840
	mov     r0, r5
	add     r0, #0x30
	mov     r1, r4
	mov     r2, r6
	bl      Function_2236a28
	mov     r0, r5
	add     r0, #0x30
	mov     r1, r4
	mov     r2, r6
	bl      Function_2236c10
	mov     r0, r5
	add     r0, #0x30
	mov     r1, r4
	mov     r2, r6
	bl      Function_2236c7c
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_2237034
	add     r5, #0x30
	mov     r0, r5
	mov     r1, r6
	bl      Function_2236d50
	pop     {r4-r6,pc}
@ 0x22367f8

.thumb
Function_22367f8: @ 22367f8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x30
	mov     r4, r1
	bl      Function_2236e04
	mov     r0, r5
	add     r0, #0x30
	bl      Function_2236c5c
	mov     r0, r5
	add     r0, #0x30
	mov     r1, r4
	bl      Function_2236b90
	add     r5, #0x30
	mov     r0, r5
	bl      Function_22369f0
	pop     {r3-r5,pc}
@ 0x2236820

.thumb
Function_2236820: @ 2236820 :thumb
	push    {r4,lr}
	add     sp, #-0x28
	ldr     r4, [pc, #0x14] @ 0x223683c, (=0x2239ab0)
	add     r3, sp, #0x0
	mov     r2, #0x5
.thumb
branch_223682a: @ 223682a :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_223682a
	add     r0, sp, #0x0
	bl      Function_201fe94
	add     sp, #0x28
	pop     {r4,pc}
@ 0x223683c

.word 0x2239ab0 @ 0x223683c
.thumb
Function_2236840: @ 2236840 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x74
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	bl      Function_2018340
	add     r3, sp, #0x64
	ldr     r6, [pc, #0x18c] @ 0x22369e0, (=0x2239a3c)
	str     r0, [r5, #0x0]
	mov     r2, r3
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      Function_2018368
	ldr     r6, [pc, #0x17c] @ 0x22369e4, (=0x2239a78)
	add     r3, sp, #0x48
	ldmia   r6!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r1, #0x0
	str     r0, [r3, #0x0]
	ldr     r0, [r5, #0x0]
	mov     r3, r1
	bl      Function_20183c4
	mov     r0, #0x0
	mov     r1, #0x20
	mov     r2, r0
	mov     r3, r4
	bl      Function_2019690
	ldr     r0, [r5, #0x0]
	mov     r1, #0x0
	bl      Function_2019ebc
	ldr     r6, [pc, #0x14c] @ 0x22369e8, (=0x2239a5c)
	add     r3, sp, #0x2c
	ldmia   r6!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r1, #0x1
	str     r0, [r3, #0x0]
	ldr     r0, [r5, #0x0]
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x1
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, r4
	bl      Function_2019690
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	bl      Function_2019ebc
	ldr     r6, [pc, #0x11c] @ 0x22369ec, (=0x2239a94)
	add     r3, sp, #0x10
	ldmia   r6!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r1, #0x2
	str     r0, [r3, #0x0]
	ldr     r0, [r5, #0x0]
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x2
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, r4
	bl      Function_2019690
	ldr     r0, [r5, #0x0]
	mov     r1, #0x2
	bl      Function_2019ebc
	mov     r0, #0x8
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x1
	mov     r1, #0x0
	bl      Function_201ff74
	mov     r0, #0x2
	mov     r1, #0x0
	bl      Function_201ff74
	mov     r0, #0x4
	mov     r1, #0x0
	bl      Function_201ff74
	mov     r0, #0x8
	mov     r1, #0x0
	bl      Function_201ff74
	mov     r0, #0x10
	mov     r1, #0x0
	bl      Function_201ff74
	mov     r0, #0x5c
	mov     r1, r4
	bl      LoadFromNARC_8
	mov     r1, #0x20
	str     r1, [sp, #0x0]
	mov     r1, #0xd
	mov     r2, #0x0
	mov     r3, #0xa0
	mov     r6, r0
	str     r4, [sp, #0x4]
	bl      Function_2007130
	mov     r1, #0x0
	mov     r0, #0x6
	str     r1, [sp, #0x0]
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	str     r4, [sp, #0xc]
	ldr     r2, [r5, #0x0]
	mov     r0, r6
	mov     r1, #0xc
	mov     r3, #0x2
	bl      Function_20070e8
	mov     r3, #0x79
	lsl     r3, r3, #2
	mov     r0, r6
	mov     r1, #0xe
	mov     r2, #0x0
	add     r3, r5, r3
	str     r4, [sp, #0x0]
	bl      Function_20071d0
	mov     r2, #0x1e
	lsl     r2, r2, #4
	str     r0, [r5, r2]
	add     r2, #0x10
	mov     r0, r6
	mov     r1, #0x2c
	add     r2, r5, r2
	mov     r3, r4
	bl      Function_20071ec
	mov     r1, #0x7b
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r3, [sp, #0x4]
	str     r3, [sp, #0x8]
	str     r4, [sp, #0xc]
	ldr     r2, [r5, #0x0]
	mov     r0, r6
	mov     r1, #0x2d
	bl      Function_20070e8
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r3, [sp, #0x4]
	str     r3, [sp, #0x8]
	str     r4, [sp, #0xc]
	ldr     r2, [r5, #0x0]
	mov     r0, r6
	mov     r1, #0x2e
	bl      Function_200710c
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_22372ec
	mov     r0, #0x7d
	mov     r1, #0x3
	lsl     r0, r0, #2
	strh    r1, [r5, r0]
	mov     r1, #0x1
	.hword  0x1c80 @ add r0, r0, #0x2
	strh    r1, [r5, r0]
	mov     r0, r6
	bl      Call_FS_CloseFile
	add     sp, #0x74
	pop     {r3-r6,pc}
@ 0x22369e0

.word 0x2239a3c @ 0x22369e0
.word 0x2239a78 @ 0x22369e4
.word 0x2239a5c @ 0x22369e8
.word 0x2239a94 @ 0x22369ec
.thumb
Function_22369f0: @ 22369f0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x1e
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      free
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      free
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2
	bl      Function_2019044
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      Function_2019044
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	bl      Function_2019044
	ldr     r0, [r4, #0x0]
	bl      free
	pop     {r4,pc}
@ 0x2236a28

.thumb
Function_2236a28: @ 2236a28 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x0
	mov     r1, #0x20
	mov     r4, r2
	bl      Function_2002e98
	ldr     r0, [r6, #0x8]
	bl      LoadPlayerDataAdress
	bl      Function_2027b50
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	str     r4, [sp, #0x4]
	mov     r1, #0x1
	ldr     r0, [r5, #0x0]
	mov     r2, r1
	mov     r3, #0x2
	bl      Function_200dd0c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r4, [sp, #0x4]
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	mov     r2, #0x1f
	mov     r3, #0x3
	bl      Function_200daa4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r4, [sp, #0x4]
	ldr     r0, [r5, #0x0]
	mov     r1, #0x2
	mov     r2, #0x30
	mov     r3, #0x4
	bl      Function_200daa4
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r2, #0x1
	mov     r1, #0x63
	lsl     r1, r1, #2
	str     r2, [sp, #0xc]
	mov     r0, #0x28
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x0]
	add     r1, r5, r1
	mov     r3, #0x2
	bl      Function_201a7e8
	mov     r0, #0x63
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0xf
	bl      Function_201ada4
	mov     r0, #0x63
	lsl     r0, r0, #2
	mov     r1, #0x1
	add     r0, r5, r0
	mov     r2, r1
	mov     r3, #0x2
	bl      Function_200e060
	mov     r2, #0x1
	mov     r1, #0x67
	lsl     r1, r1, #2
	str     r2, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r2, [sp, #0xc]
	mov     r0, #0x94
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x0]
	add     r1, r5, r1
	mov     r3, r2
	bl      Function_201a7e8
	mov     r0, #0x67
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0xf
	bl      Function_201ada4
	mov     r0, #0x67
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x1
	mov     r2, #0x1f
	mov     r3, #0x3
	bl      Function_200dc48
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0x1c
	str     r0, [sp, #0x4]
	mov     r3, #0x2
	str     r3, [sp, #0x8]
	mov     r2, #0x1
	str     r2, [sp, #0xc]
	mov     r1, #0xca
	str     r1, [sp, #0x10]
	add     r1, #0xe2
	ldr     r0, [r5, #0x0]
	add     r1, r5, r1
	bl      Function_201a7e8
	mov     r0, #0x6b
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x0
	bl      Function_201ada4
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	mov     r0, #0x14
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	mov     r2, #0x1
	mov     r1, #0x6f
	lsl     r1, r1, #2
	str     r2, [sp, #0xc]
	add     r0, #0xfa
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x0]
	add     r1, r5, r1
	mov     r3, r2
	bl      Function_201a7e8
	mov     r0, #0x6f
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0xf
	bl      Function_201ada4
	mov     r0, #0x6f
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x1
	mov     r2, #0x1f
	mov     r3, #0x3
	bl      Function_200dc48
	mov     r1, #0x5
	str     r1, [sp, #0x0]
	mov     r0, #0x7
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r2, #0x1
	ldr     r1, [pc, #0x20] @ 0x2236b8c, (=0x1a2)
	str     r2, [sp, #0xc]
	str     r1, [sp, #0x10]
	add     r1, #0x2a
	ldr     r0, [r5, #0x0]
	add     r1, r5, r1
	mov     r3, #0x17
	bl      Function_201a7e8
	mov     r0, #0x73
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0xf
	bl      Function_201ada4
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x2236b8c

.word 0x1a2 @ 0x2236b8c
.thumb
Function_2236b90: @ 2236b90 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_2236f38
	mov     r0, #0x63
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x0
	bl      Function_200e084
	mov     r0, #0x63
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a8fc
	mov     r0, #0x67
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x0
	bl      Function_200dc9c
	mov     r0, #0x67
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a8fc
	mov     r0, #0x6b
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a8fc
	mov     r0, #0x6f
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x0
	bl      Function_200dc9c
	mov     r0, #0x6f
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a8fc
	mov     r0, #0x73
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x0
	bl      Function_200dc9c
	mov     r0, #0x73
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a8fc
	mov     r0, #0x77
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_2236c0c
	mov     r1, r4
	bl      Function_2002154
.thumb
branch_2236c0c: @ 2236c0c :thumb
	pop     {r3-r5,pc}
@ 0x2236c0e


.align 2, 0


.thumb
Function_2236c10: @ 2236c10 :thumb
	push    {r4-r6,lr}
	mov     r6, r2
	mov     r5, r0
	mov     r0, r6
	mov     r4, r1
	bl      Function_200b358
	str     r0, [r5, #0x4]
	ldr     r2, [pc, #0x34] @ 0x2236c58, (=0x2a2)
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, r6
	bl      Function_200b144
	str     r0, [r5, #0x8]
	mov     r0, #0x1
	lsl     r0, r0, #8
	mov     r1, r6
	bl      Function_2023790
	str     r0, [r5, #0xc]
	mov     r0, #0x1
	lsl     r0, r0, #8
	mov     r1, r6
	bl      Function_2023790
	str     r0, [r5, #0x10]
	mov     r0, #0xff
	strb    r0, [r5, #0x14]
	ldr     r0, [r4, #0x8]
	bl      LoadPlayerDataAdress
	bl      Function_2027ac0
	strh    r0, [r5, #0x16]
	pop     {r4-r6,pc}
@ 0x2236c58

.word 0x2a2 @ 0x2236c58
.thumb
Function_2236c5c: @ 2236c5c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x10]
	bl      Function_20237bc
	ldr     r0, [r4, #0xc]
	bl      Function_20237bc
	ldr     r0, [r4, #0x8]
	bl      Function_200b190
	ldr     r0, [r4, #0x4]
	bl      Function_200b3f0
	pop     {r4,pc}
@ 0x2236c7a


.align 2, 0


.thumb
Function_2236c7c: @ 2236c7c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r1
	mov     r4, r0
	ldrb    r0, [r5, #0x0]
	cmp     r0, #0x3
	bhi     branch_2236cc0
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2236c96

Jumppoints_2236c96:
.hword branch_2236cc0 - Jumppoints_2236c96 - 2
.hword branch_2236c9e - Jumppoints_2236c96 - 2
.hword branch_2236caa - Jumppoints_2236c96 - 2
.hword branch_2236cb6 - Jumppoints_2236c96 - 2
.thumb
branch_2236c9e: @ 2236c9e :thumb
	mov     r1, #0x0
	ldr     r0, [r4, #0x4]
	mov     r2, r1
	bl      Function_200c0b0
	b       branch_2236cc0
@ 0x2236caa

.thumb
branch_2236caa: @ 2236caa :thumb
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	mov     r2, #0x1
	bl      Function_200c0b0
	b       branch_2236cc0
@ 0x2236cb6

.thumb
branch_2236cb6: @ 2236cb6 :thumb
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	mov     r2, #0x2
	bl      Function_200c0b0
.thumb
branch_2236cc0: @ 2236cc0 :thumb
	ldrb    r2, [r5, #0x0]
	ldr     r1, [pc, #0x80] @ 0x2236d44, (=0x2239e5c)
	ldr     r0, [r4, #0x8]
	ldrb    r1, [r1, r2]
	ldr     r2, [r4, #0x10]
	bl      Function_200b1b8
	ldr     r0, [r4, #0x4]
	ldr     r1, [r4, #0xc]
	ldr     r2, [r4, #0x10]
	bl      Function_200c388
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	ldr     r0, [pc, #0x64] @ 0x2236d48, (=0x1020f)
	add     r2, #0x9d
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	add     r0, r4, r2
	ldr     r2, [r4, #0xc]
	mov     r3, r1
	bl      Function_201d78c
	mov     r0, #0x67
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_201a9a4
	mov     r0, #0x6f
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_201a9a4
	ldr     r0, [r4, #0x8]
	ldr     r2, [r4, #0xc]
	mov     r1, #0x80
	bl      Function_200b1b8
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	ldr     r0, [pc, #0x30] @ 0x2236d4c, (=0x10200)
	add     r2, #0xad
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	add     r0, r4, r2
	ldr     r2, [r4, #0xc]
	mov     r3, r1
	bl      Function_201d78c
	mov     r0, #0x6b
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_201a9a4
	mov     r0, #0x63
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_201a9a4
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2236d42


.align 2


.word 0x2239e5c @ 0x2236d44
.word 0x1020f @ 0x2236d48
.word 0x10200 @ 0x2236d4c
.thumb
Function_2236d50: @ 2236d50 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r7, r0
	mov     r6, r1
	blx     Function_20a7944
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x7e
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r3, #0x1f
	str     r3, [sp, #0xc]
	mov     r2, r0
	str     r6, [sp, #0x10]
	bl      Function_200a784
	ldr     r4, [pc, #0x88] @ 0x2236dfc, (=0x2239a4c)
	add     r3, sp, #0x14
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	ldr     r1, [pc, #0x7c] @ 0x2236e00, (=0x200010)
	mov     r2, #0x10
	str     r6, [sp, #0x20]
	bl      Function_201e88c
	mov     r0, #0x4
	mov     r1, r6
	bl      Function_201f834
	bl      Function_201e994
	bl      Function_201f8e4
	ldr     r1, [pc, #0x60] @ 0x2236e00, (=0x200010)
	mov     r0, #0x1
	bl      Function_200966c
	mov     r0, #0x1
	bl      Function_2009704
	mov     r1, r7
	mov     r0, #0x4
	add     r1, #0x1c
	mov     r2, r6
	bl      Function_20095c4
	str     r0, [r7, #0x18]
	mov     r4, #0x0
	mov     r5, r7
.thumb
branch_2236dbc: @ 2236dbc :thumb
	mov     r0, #0x4
	mov     r1, r4
	mov     r2, r6
	bl      Function_2009714
	mov     r1, #0x51
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_2236dbc
	mov     r0, #0x4
	mov     r1, r6
	bl      0x222be18
	mov     r1, #0x55
	lsl     r1, r1, #2
	str     r0, [r7, r1]
	str     r6, [sp, #0x0]
	ldr     r0, [r7, #0x18]
	mov     r1, #0x0
	mov     r2, #0x4
	mov     r3, #0x1
	bl      0x222cce4
	mov     r1, #0x56
	lsl     r1, r1, #2
	str     r0, [r7, r1]
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x2236dfa


.align 2


.word 0x2239a4c @ 0x2236dfc
.word 0x200010 @ 0x2236e00
.thumb
Function_2236e04: @ 2236e04 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, #0x56
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      0x222cd9c
	mov     r0, #0x55
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      0x222be58
	ldr     r0, [r5, #0x18]
	bl      Function_2021964
	mov     r6, #0x51
	mov     r4, #0x0
	lsl     r6, r6, #2
.thumb
branch_2236e28: @ 2236e28 :thumb
	ldr     r0, [r5, r6]
	bl      Function_2009754
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_2236e28
	bl      Function_201e958
	bl      Function_201f8b4
	bl      Function_200a878
	pop     {r4-r6,pc}
@ 0x2236e44

.thumb
Function_2236e44: @ 2236e44 :thumb
	push    {r3,lr}
	str     r3, [sp, #0x0]
	mov     r3, #0x0
	bl      Function_2236e50
	pop     {r3,pc}
@ 0x2236e50

.thumb
Function_2236e50: @ 2236e50 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldrb    r0, [r5, #0x14]
	mov     r4, r1
	mov     r6, r3
	str     r2, [sp, #0x10]
	cmp     r0, #0xff
	beq     branch_2236e74
	bl      Function_201d724
	cmp     r0, #0x0
	beq     branch_2236e74
	ldrb    r0, [r5, #0x14]
	bl      Function_201d730
	mov     r0, #0xff
	strb    r0, [r5, #0x14]
.thumb
branch_2236e74: @ 2236e74 :thumb
	mov     r0, #0x63
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0xf
	bl      Function_201ada4
	mov     r0, #0x1
	ldr     r1, [sp, #0x28]
	lsl     r0, r0, #8
	bl      Function_2023790
	mov     r7, r0
	ldr     r0, [r5, #0x8]
	ldr     r1, [sp, #0x10]
	mov     r2, r7
	bl      Function_200b1b8
	ldr     r0, [r5, #0x4]
	ldr     r1, [r5, #0xc]
	mov     r2, r7
	bl      Function_200c388
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	ldrh    r0, [r5, #0x16]
	mov     r1, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x48] @ 0x2236ef4, (=0x1020f)
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	mov     r0, #0x63
	lsl     r0, r0, #2
	ldr     r2, [r5, #0xc]
	add     r0, r5, r0
	bl      Function_201d78c
	strb    r0, [r5, #0x14]
	mov     r0, #0x63
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a9a4
	mov     r0, r7
	bl      Function_20237bc
	ldr     r0, [r4, #0x8]
	bl      LoadPlayerDataAdress
	bl      Function_2027b50
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x28]
	mov     r1, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x0]
	mov     r2, r1
	mov     r3, #0x2
	bl      Function_200dd0c
	strb    r6, [r5, #0x15]
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2236ef4

.word 0x1020f @ 0x2236ef4
.thumb
Function_2236ef8: @ 2236ef8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x14]
	cmp     r0, #0xff
	bne     branch_2236f10
	ldrb    r0, [r4, #0x15]
	cmp     r0, #0x0
	beq     branch_2236f22
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0x15]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2236f10

.thumb
branch_2236f10: @ 2236f10 :thumb
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_2236f22
	ldrb    r0, [r4, #0x14]
	cmp     r0, #0xff
	beq     branch_2236f22
	mov     r0, #0xff
	strb    r0, [r4, #0x14]
.thumb
branch_2236f22: @ 2236f22 :thumb
	ldrb    r0, [r4, #0x14]
	cmp     r0, #0xff
	bne     branch_2236f32
	ldrb    r0, [r4, #0x15]
	cmp     r0, #0x0
	bne     branch_2236f32
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2236f32

.thumb
branch_2236f32: @ 2236f32 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2236f36


.align 2, 0


.thumb
Function_2236f38: @ 2236f38 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x14]
	cmp     r0, #0xff
	beq     branch_2236f54
	bl      Function_201d724
	cmp     r0, #0x0
	beq     branch_2236f50
	ldrb    r0, [r4, #0x14]
	bl      Function_201d730
.thumb
branch_2236f50: @ 2236f50 :thumb
	mov     r0, #0xff
	strb    r0, [r4, #0x14]
.thumb
branch_2236f54: @ 2236f54 :thumb
	mov     r0, #0x63
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, #0xf
	bl      Function_201ada4
	mov     r0, #0x63
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_201a9a4
	mov     r0, #0x0
	strb    r0, [r4, #0x15]
	pop     {r4,pc}
@ 0x2236f70

.thumb
Function_2236f70: @ 2236f70 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	mov     r0, #0x1
	mov     r4, r3
	str     r1, [sp, #0x10]
	lsl     r0, r0, #8
	mov     r1, r4
	str     r2, [sp, #0x14]
	bl      Function_2023790
	mov     r6, r0
	mov     r0, #0x1
	lsl     r0, r0, #8
	mov     r1, r4
	bl      Function_2023790
	mov     r7, r0
	ldr     r1, [sp, #0x10]
	ldr     r2, [sp, #0x14]
	mov     r0, r5
	mov     r3, #0x0
	str     r4, [sp, #0x0]
	bl      Function_223726c
	ldr     r1, [sp, #0x10]
	ldr     r2, [sp, #0x14]
	str     r4, [sp, #0x0]
	mov     r0, r5
	mov     r3, #0x1
	bl      Function_2237284
	ldr     r0, [r5, #0x8]
	mov     r1, #0x83
	mov     r2, r6
	bl      Function_200b1b8
	ldr     r0, [r5, #0x4]
	mov     r1, r7
	mov     r2, r6
	bl      Function_200c388
	mov     r0, #0x73
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0xf
	bl      Function_201ada4
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	ldr     r0, [pc, #0x38] @ 0x2237014, (=0x1020f)
	add     r2, #0xcd
	str     r0, [sp, #0x8]
	add     r0, r5, r2
	mov     r2, r7
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, #0x73
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x1
	mov     r2, #0x1f
	mov     r3, #0x3
	bl      Function_200dc48
	mov     r0, #0x73
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a9a4
	mov     r0, r6
	bl      Function_20237bc
	mov     r0, r7
	bl      Function_20237bc
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2237014

.word 0x1020f @ 0x2237014
.thumb
Function_2237018: @ 2237018 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x73
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, #0x1
	bl      Function_200dc9c
	mov     r0, #0x73
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_201ad10
	pop     {r4,pc}
@ 0x2237034

.thumb
Function_2237034: @ 2237034 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	str     r0, [sp, #0x4]
	mov     r7, r1
	mov     r5, r2
	bl      Function_2032aac
	cmp     r0, #0x0
	beq     branch_2237096
	ldr     r6, [sp, #0x4]
	mov     r4, #0x0
	add     r6, #0x30
.thumb
branch_223704c: @ 223704c :thumb
	cmp     r4, #0x0
	bne     branch_223706a
	mov     r0, r4
	bl      Function_2032de0
	cmp     r0, #0x1
	bne     branch_223706a
	ldr     r0, [sp, #0x4]
	mov     r1, r6
	mov     r2, r7
	mov     r3, r4
	str     r5, [sp, #0x0]
	bl      Function_223709c
	b       branch_2237090
@ 0x223706a

.thumb
branch_223706a: @ 223706a :thumb
	mov     r0, r4
	bl      Function_2032e00
	cmp     r0, #0x1
	bne     branch_2237084
	ldr     r0, [sp, #0x4]
	mov     r1, r6
	mov     r2, r7
	mov     r3, r4
	str     r5, [sp, #0x0]
	bl      Function_223709c
	b       branch_2237090
@ 0x2237084

.thumb
branch_2237084: @ 2237084 :thumb
	mov     r0, r6
	mov     r1, r7
	mov     r2, r4
	mov     r3, r5
	bl      Function_22371fc
.thumb
branch_2237090: @ 2237090 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x4
	blt     branch_223704c
.thumb
branch_2237096: @ 2237096 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x223709a


.align 2, 0


.thumb
Function_223709c: @ 223709c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x2c
	ldr     r7, [sp, #0x40]
	str     r0, [sp, #0x1c]
	mov     r0, #0x1
	mov     r5, r1
	lsl     r0, r0, #8
	mov     r1, r7
	str     r2, [sp, #0x20]
	mov     r4, r3
	bl      Function_2023790
	str     r0, [sp, #0x28]
	mov     r0, #0x1
	lsl     r0, r0, #8
	mov     r1, r7
	bl      Function_2023790
	str     r0, [sp, #0x24]
	ldr     r1, [sp, #0x20]
	str     r7, [sp, #0x0]
	mov     r0, r5
	mov     r2, r4
	mov     r3, #0x0
	bl      Function_223726c
	ldr     r0, [r5, #0x8]
	ldr     r2, [sp, #0x28]
	mov     r1, #0x81
	bl      Function_200b1b8
	ldr     r0, [r5, #0x4]
	ldr     r1, [sp, #0x24]
	ldr     r2, [sp, #0x28]
	bl      Function_200c388
	mov     r0, #0xa0
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	lsl     r6, r4, #4
	str     r0, [sp, #0x4]
	mov     r0, #0x6f
	lsl     r0, r0, #2
	lsl     r3, r6, #16
	add     r0, r5, r0
	mov     r1, #0xf
	mov     r2, #0x0
	lsr     r3, r3, #16
	bl      Function_201ae78
	mov     r1, #0x0
	str     r6, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	ldr     r0, [pc, #0xec] @ 0x22371f8, (=0x1020f)
	add     r2, #0xbd
	str     r0, [sp, #0x8]
	add     r0, r5, r2
	ldr     r2, [sp, #0x24]
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	ldr     r1, [sp, #0x20]
	str     r7, [sp, #0x0]
	mov     r0, r5
	mov     r2, r4
	mov     r3, #0x0
	bl      Function_2237284
	ldr     r0, [r5, #0x8]
	ldr     r2, [sp, #0x28]
	mov     r1, #0x82
	bl      Function_200b1b8
	ldr     r0, [r5, #0x4]
	ldr     r1, [sp, #0x24]
	ldr     r2, [sp, #0x28]
	bl      Function_200c388
	str     r6, [sp, #0x0]
	mov     r2, #0xff
	str     r2, [sp, #0x4]
	ldr     r0, [pc, #0xb4] @ 0x22371f8, (=0x1020f)
	add     r2, #0xbd
	str     r0, [sp, #0x8]
	add     r0, r5, r2
	mov     r1, #0x0
	ldr     r2, [sp, #0x24]
	mov     r3, #0x48
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, #0x6f
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a9a4
	bl      Function_203608c
	cmp     r4, r0
	bne     branch_223717c
	ldr     r0, [sp, #0x1c]
	ldr     r0, [r0, #0x0]
	add     r0, #0x21
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2237178
	mov     r2, #0x2
	b       branch_223718e
@ 0x2237178

.thumb
branch_2237178: @ 2237178 :thumb
	mov     r2, #0x1
	b       branch_223718e
@ 0x223717c

.thumb
branch_223717c: @ 223717c :thumb
	ldr     r0, [sp, #0x1c]
	add     r0, r0, r4
	add     r0, #0x20
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_223718c
	mov     r2, #0x2
	b       branch_223718e
@ 0x223718c

.thumb
branch_223718c: @ 223718c :thumb
	mov     r2, #0x1
.thumb
branch_223718e: @ 223718e :thumb
	mov     r0, #0x79
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	lsl     r1, r4, #1
	add     r4, r1, #0x5
	mov     r1, #0x2
	str     r1, [sp, #0x0]
	mov     r3, r0
	lsl     r2, r2, #25
	str     r1, [sp, #0x4]
	add     r3, #0xc
	str     r3, [sp, #0x8]
	lsr     r2, r2, #24
	str     r2, [sp, #0xc]
	mov     r2, #0x0
	str     r2, [sp, #0x10]
	ldrh    r2, [r0, #0x0]
	lsl     r3, r4, #24
	lsr     r3, r3, #24
	lsl     r2, r2, #21
	lsr     r2, r2, #24
	str     r2, [sp, #0x14]
	ldrh    r0, [r0, #0x2]
	mov     r2, #0x12
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x18]
	ldr     r0, [r5, #0x0]
	bl      Function_20198e8
	mov     r1, #0x2
	str     r1, [sp, #0x0]
	lsl     r3, r4, #24
	str     r1, [sp, #0x4]
	mov     r0, #0x5
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x0]
	mov     r2, #0x12
	lsr     r3, r3, #24
	bl      Function_2019e2c
	ldr     r0, [r5, #0x0]
	mov     r1, #0x2
	bl      Function_201c3c0
	ldr     r0, [sp, #0x28]
	bl      Function_20237bc
	ldr     r0, [sp, #0x24]
	bl      Function_20237bc
	add     sp, #0x2c
	pop     {r4-r7,pc}
@ 0x22371f8

.word 0x1020f @ 0x22371f8
.thumb
Function_22371fc: @ 22371fc :thumb
	push    {r4,r5,lr}
	add     sp, #-0x1c
	mov     r5, r0
	mov     r0, #0xa0
	mov     r4, r2
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r0, #0x6f
	lsl     r0, r0, #2
	lsl     r3, r4, #20
	add     r0, r5, r0
	mov     r1, #0xf
	mov     r2, #0x0
	lsr     r3, r3, #16
	bl      Function_201ae78
	mov     r0, #0x79
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x2
	str     r1, [sp, #0x0]
	mov     r2, r0
	lsl     r3, r4, #1
	.hword  0x1d5b @ add r3, r3, #0x5
	lsl     r3, r3, #24
	str     r1, [sp, #0x4]
	add     r2, #0xc
	str     r2, [sp, #0x8]
	mov     r2, #0x0
	str     r2, [sp, #0xc]
	str     r2, [sp, #0x10]
	ldrh    r2, [r0, #0x0]
	lsr     r3, r3, #24
	lsl     r2, r2, #21
	lsr     r2, r2, #24
	str     r2, [sp, #0x14]
	ldrh    r0, [r0, #0x2]
	mov     r2, #0x12
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x18]
	ldr     r0, [r5, #0x0]
	bl      Function_20198e8
	ldr     r0, [r5, #0x0]
	mov     r1, #0x2
	bl      Function_201c3c0
	mov     r0, #0x6f
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a9a4
	add     sp, #0x1c
	pop     {r4,r5,pc}
@ 0x223726c

.thumb
Function_223726c: @ 223726c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, r2
	mov     r4, r3
	bl      Function_2032ee8
	mov     r2, r0
	ldr     r0, [r5, #0x4]
	mov     r1, r4
	bl      Function_200b498
	pop     {r3-r5,pc}
@ 0x2237284

.thumb
Function_2237284: @ 2237284 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r0, r2
	mov     r4, r3
	bl      Function_2032ee8
	bl      GetSecretTrainerID
	mov     r2, r0
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x4]
	mov     r1, r4
	mov     r3, #0x5
	bl      Function_200b60c
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x22372ae


.align 2, 0


.thumb
Function_22372b0: @ 22372b0 :thumb
	push    {r4,lr}
	mov     r1, #0x7d
	mov     r4, r0
	lsl     r1, r1, #2
	ldsh    r2, [r4, r1]
	cmp     r2, #0x0
	bgt     branch_22372e0
	.hword  0x1c89 @ add r1, r1, #0x2
	ldsh    r1, [r4, r1]
	bl      Function_22372ec
	mov     r0, #0x7d
	mov     r1, #0x3
	lsl     r0, r0, #2
	strh    r1, [r4, r0]
	.hword  0x1c80 @ add r0, r0, #0x2
	ldsh    r0, [r4, r0]
	mov     r1, #0x12
	.hword  0x1c40 @ add r0, r0, #0x1
	blx     _s32_div_f
	ldr     r0, [pc, #0xc] @ 0x22372e8, (=0x1f6)
	strh    r1, [r4, r0]
	pop     {r4,pc}
@ 0x22372e0

.thumb
branch_22372e0: @ 22372e0 :thumb
	.hword  0x1e50 @ sub r0, r2, #0x1
	strh    r0, [r4, r1]
	pop     {r4,pc}
@ 0x22372e6


.align 2


.word 0x1f6 @ 0x22372e8
.thumb
Function_22372ec: @ 22372ec :thumb
	push    {r4,lr}
	mov     r2, #0x1f
	mov     r3, r0
	lsl     r2, r2, #4
	ldr     r2, [r3, r2]
	mov     r4, r1
	ldr     r3, [r2, #0xc]
	ldr     r2, [pc, #0x1c] @ 0x2237318, (=0x2239c04)
	mov     r0, #0xf
	ldrb    r2, [r2, r4]
	mov     r1, #0x0
	lsl     r2, r2, #5
	add     r2, r3, r2
	mov     r3, #0x20
	bl      Function_201dc68
	cmp     r0, #0x0
	bne     branch_2237314
	bl      ErrorHandling
.thumb
branch_2237314: @ 2237314 :thumb
	pop     {r4,pc}
@ 0x2237316


.align 2


.word 0x2239c04 @ 0x2237318
.thumb
Function_223731c: @ 223731c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r2, [r4, #0x0]
	mov     r0, r2
	add     r0, #0x22
	ldrb    r1, [r0, #0x0]
	mov     r0, #0x1
	add     r2, #0x22
	sub     r0, r0, r1
	strb    r0, [r2, #0x0]
	ldr     r1, [r4, #0x0]
	mov     r0, r1
	add     r0, #0x22
	ldrb    r0, [r0, #0x0]
	add     r1, #0x21
	strb    r0, [r1, #0x0]
	ldr     r0, [r4, #0x0]
	add     r0, #0x21
	ldrb    r0, [r0, #0x0]
	bl      0x21d2584
	ldr     r0, [r4, #0x0]
	mov     r1, #0x24
	bl      0x21d222c
	ldr     r0, [r4, #0x0]
	add     r0, #0x21
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_2237360
	mov     r0, r4
	bl      Function_2237520
	b       branch_2237366
@ 0x2237360

.thumb
branch_2237360: @ 2237360 :thumb
	mov     r0, r4
	bl      Function_2237534
.thumb
branch_2237366: @ 2237366 :thumb
	ldr     r0, [r4, #0x0]
	add     r0, #0x22
	ldrb    r0, [r0, #0x0]
	pop     {r4,pc}
@ 0x223736e


.align 2, 0


.thumb
Function_2237370: @ 2237370 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x4]
	cmp     r0, #0x0
	ldrb    r0, [r4, #0x5]
	beq     branch_22373a4
	add     r0, #0xe5
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	cmp     r0, #0x2
	bls     branch_2237428
	bl      Function_20380e4
	cmp     r0, #0x2
	bgt     branch_22373ba
	mov     r0, r4
	bl      Function_2237548
	cmp     r0, #0x1
	bgt     branch_22373ba
	mov     r0, r4
	bl      Function_2237450
	cmp     r0, #0x0
	bne     branch_22373ba
	pop     {r3-r7,pc}
@ 0x22373a4

.thumb
branch_22373a4: @ 22373a4 :thumb
	cmp     r0, #0xf
	beq     branch_2237428
	cmp     r0, #0x10
	beq     branch_2237428
	cmp     r0, #0x11
	beq     branch_2237428
	add     r0, #0xfa
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	cmp     r0, #0x1
	bls     branch_2237428
.thumb
branch_22373ba: @ 22373ba :thumb
	mov     r0, r4
	bl      Function_2237a54
	mov     r6, r0
	mov     r0, r4
	bl      Function_2237628
	mov     r7, r0
	mov     r0, r4
	bl      Function_2237548
	mov     r5, r0
	bl      Function_2035e18
	cmp     r5, r0
	ble     branch_22373de
	mov     r5, #0x1
	b       branch_22373e0
@ 0x22373de

.thumb
branch_22373de: @ 22373de :thumb
	mov     r5, #0x0
.thumb
branch_22373e0: @ 22373e0 :thumb
	bl      Function_20380e4
	cmp     r0, #0x3
	bge     branch_2237418
	bl      Function_20383e8
	cmp     r0, #0x0
	bne     branch_2237418
	bl      Function_2038284
	cmp     r0, #0x0
	bne     branch_2237418
	mov     r0, #0x0
	bl      Function_2035d78
	cmp     r0, #0x0
	beq     branch_2237418
	mov     r0, r4
	bl      Function_2237450
	cmp     r0, #0x0
	beq     branch_2237418
	cmp     r5, #0x1
	beq     branch_2237418
	cmp     r6, #0x1
	beq     branch_2237418
	cmp     r7, #0x1
	bne     branch_2237428
.thumb
branch_2237418: @ 2237418 :thumb
	ldrb    r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_2237424
	mov     r0, #0x1b
	strb    r0, [r4, #0x5]
	pop     {r3-r7,pc}
@ 0x2237424

.thumb
branch_2237424: @ 2237424 :thumb
	mov     r0, #0xf
	strb    r0, [r4, #0x5]
.thumb
branch_2237428: @ 2237428 :thumb
	pop     {r3-r7,pc}
@ 0x223742a


.align 2, 0


.thumb
Function_223742c: @ 223742c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_20380e4
	cmp     r0, #0x3
	bgt     branch_2237448
	bl      Function_2038284
	cmp     r0, #0x0
	bne     branch_2237448
	bl      Function_20383e8
	cmp     r0, #0x0
	beq     branch_223744c
.thumb
branch_2237448: @ 2237448 :thumb
	mov     r0, #0xf
	strb    r0, [r4, #0x5]
.thumb
branch_223744c: @ 223744c :thumb
	pop     {r4,pc}
@ 0x223744e


.align 2, 0


.thumb
Function_2237450: @ 2237450 :thumb
	push    {r3,lr}
	bl      Function_2035e18
	cmp     r0, #0x0
	ble     branch_223745e
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x223745e

.thumb
branch_223745e: @ 223745e :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2237462


.align 2, 0


.thumb
Function_2237464: @ 2237464 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	bl      Function_20380a0
	mov     r5, r0
	cmp     r5, #0x1
	bne     branch_2237494
	cmp     r4, #0x3
	bhi     branch_2237494
	add     r0, r4, r4
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2237482

Jumppoints_2237482:
.hword branch_223748a - Jumppoints_2237482 - 2
.hword branch_2237490 - Jumppoints_2237482 - 2
.hword branch_2237490 - Jumppoints_2237482 - 2
.hword branch_2237490 - Jumppoints_2237482 - 2
.thumb
branch_223748a: @ 223748a :thumb
	bl      Function_2038b00
	b       branch_2237494
@ 0x2237490

.thumb
branch_2237490: @ 2237490 :thumb
	bl      Function_2038b20
.thumb
branch_2237494: @ 2237494 :thumb
	mov     r0, r5
	pop     {r3-r5,pc}
@ 0x2237498

.thumb
Function_2237498: @ 2237498 :thumb
	ldrb    r1, [r1, #0x0]
	cmp     r1, #0x3
	bhi     branch_22374d0
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x22374aa

Jumppoints_22374aa:
.hword branch_22374b2 - Jumppoints_22374aa - 2
.hword branch_22374ba - Jumppoints_22374aa - 2
.hword branch_22374c2 - Jumppoints_22374aa - 2
.hword branch_22374ca - Jumppoints_22374aa - 2
.thumb
branch_22374b2: @ 22374b2 :thumb
	ldr     r1, [r0, #0x0]
	mov     r2, #0x12
	strb    r2, [r1, #0x1b]
	b       branch_22374d0
@ 0x22374ba

.thumb
branch_22374ba: @ 22374ba :thumb
	ldr     r1, [r0, #0x0]
	mov     r2, #0x16
	strb    r2, [r1, #0x1b]
	b       branch_22374d0
@ 0x22374c2

.thumb
branch_22374c2: @ 22374c2 :thumb
	ldr     r1, [r0, #0x0]
	mov     r2, #0x18
	strb    r2, [r1, #0x1b]
	b       branch_22374d0
@ 0x22374ca

.thumb
branch_22374ca: @ 22374ca :thumb
	ldr     r1, [r0, #0x0]
	mov     r2, #0x1a
	strb    r2, [r1, #0x1b]
.thumb
branch_22374d0: @ 22374d0 :thumb
	ldr     r3, [pc, #0x4] @ 0x22374d8, (=0x21d222d)
	ldr     r0, [r0, #0x0]
	mov     r1, #0x24
	bx      r3
@ 0x22374d8

.word 0x21d222d @ 0x22374d8
.thumb
Function_22374dc: @ 22374dc :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x11]
	cmp     r1, #0x1
	bne     branch_22374ea
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22374ea

.thumb
branch_22374ea: @ 22374ea :thumb
	bl      Function_2237450
	cmp     r0, #0x1
	bne     branch_22374fe
	mov     r0, #0x61
	bl      0x21d1e74
	mov     r0, #0x1
	strb    r0, [r4, #0x11]
	pop     {r4,pc}
@ 0x22374fe

.thumb
branch_22374fe: @ 22374fe :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2237502


.align 2, 0


.thumb
Function_2237504: @ 2237504 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x11]
	cmp     r0, #0x0
	bne     branch_2237512
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2237512

.thumb
branch_2237512: @ 2237512 :thumb
	bl      0x21d1f18
	mov     r0, #0x0
	strb    r0, [r4, #0x11]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223751e


.align 2, 0


.thumb
Function_2237520: @ 2237520 :thumb
	push    {r3,lr}
	bl      Function_22374dc
	cmp     r0, #0x0
	beq     branch_2237532
	bl      Function_20041fc
	bl      Function_2004a84
.thumb
branch_2237532: @ 2237532 :thumb
	pop     {r3,pc}
@ 0x2237534

.thumb
Function_2237534: @ 2237534 :thumb
	push    {r3,lr}
	bl      Function_2237504
	cmp     r0, #0x0
	beq     branch_2237546
	mov     r0, #0x0
	mov     r1, #0x78
	bl      Function_2004a68
.thumb
branch_2237546: @ 2237546 :thumb
	pop     {r3,pc}
@ 0x2237548

.thumb
Function_2237548: @ 2237548 :thumb
	ldr     r3, [pc, #0x0] @ 0x223754c, (=0x2032e65)
	bx      r3
@ 0x223754c

.word 0x2032e65 @ 0x223754c
.thumb
Function_2237550: @ 2237550 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r7, #0x1
	bl      Function_203608c
	.hword  0x1e44 @ sub r4, r0, #0x1
	bmi     branch_2237586
.thumb
branch_2237560: @ 2237560 :thumb
	mov     r0, r4
	bl      Function_2032dc4
	cmp     r0, #0x1
	bne     branch_2237576
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_22376a0
	b       branch_2237582
@ 0x2237576

.thumb
branch_2237576: @ 2237576 :thumb
	mov     r0, r4
	bl      Function_2032e00
	cmp     r0, #0x0
	bne     branch_2237582
	mov     r7, #0x0
.thumb
branch_2237582: @ 2237582 :thumb
	.hword  0x1e64 @ sub r4, r4, #0x1
	bpl     branch_2237560
.thumb
branch_2237586: @ 2237586 :thumb
	mov     r0, r7
	pop     {r3-r7,pc}
@ 0x223758a


.align 2, 0


.thumb
Function_223758c: @ 223758c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r5, #0x1
	mov     r6, #0x16
	add     r7, sp, #0x0
	add     r4, sp, #0x0
.thumb
branch_223759c: @ 223759c :thumb
	mov     r0, r5
	bl      Function_2032dc4
	cmp     r0, #0x1
	bne     branch_22375c0
	mov     r0, r6
	mov     r1, r7
	mov     r2, #0x8
	strh    r5, [r4, #0x0]
	bl      Function_20359dc
	cmp     r0, #0x1
	beq     branch_22375ba
	bl      ErrorHandling
.thumb
branch_22375ba: @ 22375ba :thumb
	mov     r0, r5
	bl      Function_2032d98
.thumb
branch_22375c0: @ 22375c0 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x4
	blt     branch_223759c
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x22375ca


.align 2, 0


.thumb
Function_22375cc: @ 22375cc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r5, #0x1
	mov     r6, #0x16
	add     r7, sp, #0x0
	add     r4, sp, #0x0
.thumb
branch_22375dc: @ 22375dc :thumb
	mov     r0, r5
	bl      Function_2032de0
	cmp     r0, #0x1
	bne     branch_2237600
	mov     r0, r6
	mov     r1, r7
	mov     r2, #0x8
	strh    r5, [r4, #0x0]
	bl      Function_20359dc
	cmp     r0, #0x1
	beq     branch_22375fa
	bl      ErrorHandling
.thumb
branch_22375fa: @ 22375fa :thumb
	mov     r0, r5
	bl      Function_2032d98
.thumb
branch_2237600: @ 2237600 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x4
	blt     branch_22375dc
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x223760a


.align 2, 0


.thumb
Function_223760c: @ 223760c :thumb
	ldr     r3, [pc, #0x4] @ 0x2237614, (=0x21d1121)
	mov     r1, r0
	ldr     r0, [pc, #0x4] @ 0x2237618, (=0x2237655)
	bx      r3
@ 0x2237614

.word 0x21d1121 @ 0x2237614
.word Function_2237654+1 @ =0x2237655, 0x2237618
.thumb
Function_223761c: @ 223761c :thumb
	ldr     r3, [pc, #0x4] @ 0x2237624, (=0x21d1121)
	mov     r0, #0x0
	mov     r1, r0
	bx      r3
@ 0x2237624

.word 0x21d1121 @ 0x2237624
.thumb
Function_2237628: @ 2237628 :thumb
	push    {r3-r7,lr}
	mov     r7, #0x0
	mov     r6, r0
	mov     r4, r7
.thumb
branch_2237630: @ 2237630 :thumb
	add     r5, r6, r4
	ldrb    r0, [r5, #0x14]
	cmp     r0, #0x1
	bne     branch_223764a
	ldrb    r0, [r5, #0x18]
	bl      Function_2032e00
	cmp     r0, #0x1
	bne     branch_2237644
	mov     r7, #0x1
.thumb
branch_2237644: @ 2237644 :thumb
	mov     r0, #0x0
	strb    r0, [r5, #0x14]
	strb    r0, [r5, #0x18]
.thumb
branch_223764a: @ 223764a :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x4
	blt     branch_2237630
	mov     r0, r7
	pop     {r3-r7,pc}
@ 0x2237654

.thumb
Function_2237654: @ 2237654 :thumb
	mov     r2, #0x1
	add     r1, r1, r0
	strb    r2, [r1, #0x14]
	strb    r0, [r1, #0x18]
	bx      lr
@ 0x223765e


.align 2, 0


.thumb
Function_2237660: @ 2237660 :thumb
	push    {r3-r6}
	mov     r4, #0x0
	mov     r3, r4
	mov     r2, #0x1
.thumb
branch_2237668: @ 2237668 :thumb
	add     r6, r0, r3
	mov     r1, r6
	add     r1, #0x20
	ldrb    r5, [r1, #0x0]
	ldrb    r1, [r6, #0x1c]
	cmp     r1, r5
	beq     branch_2237678
	mov     r4, r2
.thumb
branch_2237678: @ 2237678 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	strb    r5, [r6, #0x1c]
	cmp     r3, #0x4
	blt     branch_2237668
	mov     r1, r0
	add     r1, #0x24
	ldrb    r1, [r1, #0x0]
	cmp     r1, #0x0
	beq     branch_2237692
	mov     r1, #0x0
	add     r0, #0x24
	strb    r1, [r0, #0x0]
	mov     r4, #0x1
.thumb
branch_2237692: @ 2237692 :thumb
	mov     r0, r4
	pop     {r3-r6}
	bx      lr
@ 0x2237698

.thumb
Function_2237698: @ 2237698 :thumb
	mov     r1, #0x1
	add     r0, #0x24
	strb    r1, [r0, #0x0]
	bx      lr
@ 0x22376a0

.thumb
Function_22376a0: @ 22376a0 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r6, r2
	bl      Function_2032e00
	cmp     r0, #0x0
	bne     branch_22376ce
	mov     r0, r4
	bl      Function_2032e1c
	mov     r0, r5
	add     r0, #0x25
	strb    r4, [r0, #0x0]
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_22376d0
	mov     r0, r5
	bl      Function_2237698
.thumb
branch_22376ce: @ 22376ce :thumb
	pop     {r4-r6,pc}
@ 0x22376d0

.thumb
Function_22376d0: @ 22376d0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r6, r1
	mov     r5, r0
	mov     r0, #0xc
	mov     r4, r6
	mul     r4, r0
	mov     r0, #0x63
	lsl     r0, r0, #2
	add     r7, r5, r0
	ldr     r0, [r7, r4]
	str     r2, [sp, #0x0]
	cmp     r0, #0x0
	bne     branch_223779c
	ldr     r1, [pc, #0xb0] @ 0x22377a0, (=0x2239ad8)
	ldrh    r2, [r1, r4]
	add     r0, r1, r4
	add     r1, sp, #0x4
	strh    r2, [r1, #0x0]
	ldrh    r2, [r0, #0x2]
	strh    r2, [r1, #0x2]
	ldrh    r2, [r0, #0x4]
	strh    r2, [r1, #0x4]
	ldrh    r2, [r0, #0x6]
	strh    r2, [r1, #0x6]
	ldrh    r2, [r0, #0x8]
	strh    r2, [r1, #0x8]
	ldrh    r0, [r0, #0xa]
	strh    r0, [r1, #0xa]
	bl      Function_203608c
	cmp     r6, r0
	beq     branch_223772c
	mov     r0, r6
	bl      Function_2032ee8
	mov     r6, r0
	bne     branch_2237720
	bl      ErrorHandling
.thumb
branch_2237720: @ 2237720 :thumb
	mov     r0, r6
	bl      Function_2025f8c
	add     r1, sp, #0x4
	strh    r0, [r1, #0xa]
	b       branch_2237740
@ 0x223772c

.thumb
branch_223772c: @ 223772c :thumb
	ldr     r0, [r5, #0x0]
	ldrb    r0, [r0, #0x1e]
	cmp     r0, #0x0
	add     r0, sp, #0x4
	bne     branch_223773c
	mov     r1, #0x0
	strh    r1, [r0, #0xa]
	b       branch_2237740
@ 0x223773c

.thumb
branch_223773c: @ 223773c :thumb
	mov     r1, #0x61
	strh    r1, [r0, #0xa]
.thumb
branch_2237740: @ 2237740 :thumb
	mov     r0, #0x61
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	add     r1, sp, #0x4
	bl      0x222bec0
	str     r0, [r7, r4]
	mov     r0, #0x62
	add     r1, sp, #0x4
	lsl     r0, r0, #2
	ldrh    r1, [r1, #0xa]
	ldr     r0, [r5, r0]
	bl      0x222ce18
	cmp     r0, #0x0
	bne     branch_2237772
	mov     r0, #0x62
	add     r1, sp, #0x4
	lsl     r0, r0, #2
	ldrh    r1, [r1, #0xa]
	ldr     r0, [r5, r0]
	ldr     r3, [sp, #0x0]
	mov     r2, #0x2
	bl      0x222cde8
.thumb
branch_2237772: @ 2237772 :thumb
	mov     r0, #0x19
	lsl     r0, r0, #4
	add     r6, r5, r0
	sub     r0, #0x8
	ldr     r0, [r5, r0]
	ldr     r1, [r7, r4]
	ldr     r3, [sp, #0x0]
	mov     r2, #0x0
	bl      0x222ce44
	str     r0, [r6, r4]
	ldr     r0, [r6, r4]
	mov     r1, #0x0
	bl      0x222d008
	mov     r0, #0x65
	lsl     r0, r0, #2
	add     r1, r5, r0
	ldrh    r0, [r1, r4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r1, r4]
.thumb
branch_223779c: @ 223779c :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x22377a0

.word 0x2239ad8 @ 0x22377a0
.thumb
Function_22377a4: @ 22377a4 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r0, #0x63
	lsl     r0, r0, #2
	mov     r6, #0x0
	add     r4, r7, r0
	mov     r5, r7
.thumb
branch_22377b2: @ 22377b2 :thumb
	mov     r2, #0x65
	lsl     r2, r2, #2
	ldrh    r2, [r5, r2]
	mov     r0, r7
	mov     r1, r4
	lsl     r3, r2, #2
	ldr     r2, [pc, #0x24] @ 0x22377e4, (=0x2239a2c)
	ldr     r2, [r2, r3]
	blx     r2
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0xc
	add     r5, #0xc
	cmp     r6, #0x4
	blt     branch_22377b2
	mov     r0, #0x61
	lsl     r0, r0, #2
	ldr     r0, [r7, r0]
	bl      0x222be84
	mov     r0, #0x62
	lsl     r0, r0, #2
	ldr     r0, [r7, r0]
	bl      0x222cee4
	pop     {r3-r7,pc}
@ 0x22377e4

.word 0x2239a2c @ 0x22377e4
.thumb
Function_22377e8: @ 22377e8 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x62
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x222ce24
	mov     r0, #0x63
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, #0x0
	mov     r2, #0x30
	blx     Call_FillMemWithValue
	pop     {r4,pc}
@ 0x2237806


.align 2, 0


.thumb
Function_2237808: @ 2237808 :thumb
	push    {r3,lr}
	add     sp, #-0x8
	add     r0, sp, #0x0
	strh    r1, [r0, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x16
	add     r1, sp, #0x0
	mov     r2, #0x8
	bl      Function_20359dc
	cmp     r0, #0x1
	beq     branch_2237826
	bl      ErrorHandling
.thumb
branch_2237826: @ 2237826 :thumb
	add     sp, #0x8
	pop     {r3,pc}
@ 0x223782a


.align 2, 0


.thumb
Function_223782c: @ 223782c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_2237832: @ 2237832 :thumb
	mov     r0, r5
	add     r0, #0x25
	ldrb    r0, [r0, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r0, r4
	bge     branch_2237856
	mov     r0, r4
	bl      Function_2032dc4
	cmp     r0, #0x1
	bne     branch_2237856
	mov     r0, r5
	mov     r1, r4
	bl      Function_2237808
	mov     r0, r4
	bl      Function_2032d98
.thumb
branch_2237856: @ 2237856 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x4
	blt     branch_2237832
	pop     {r3-r5,pc}
@ 0x223785e


.align 2, 0


.thumb
Function_2237860: @ 2237860 :thumb
	push    {r3-r7,lr}
	mov     r4, #0x0
	mov     r5, r0
	mov     r6, r1
	mov     r7, r4
.thumb
branch_223786a: @ 223786a :thumb
	add     r0, r5, r4
	add     r0, #0x28
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_2237892
	mov     r0, r4
	bl      Function_2032de0
	cmp     r0, #0x1
	bne     branch_2237892
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_22376a0
	add     r0, r5, r4
	add     r0, #0x28
	strb    r7, [r0, #0x0]
	mov     r0, #0x1
	strb    r0, [r5, #0x12]
.thumb
branch_2237892: @ 2237892 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x4
	blt     branch_223786a
	pop     {r3-r7,pc}
@ 0x223789a


.align 2, 0


.thumb
Function_223789c: @ 223789c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x86
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_22378ae
	bl      ErrorHandling
.thumb
branch_22378ae: @ 22378ae :thumb
	mov     r0, #0x6f
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, #0x1
	bl      Function_200e7fc
	mov     r1, #0x86
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	pop     {r4,pc}
@ 0x22378c2


.align 2, 0


.thumb
Function_22378c4: @ 22378c4 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r0, #0x86
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r4, r1
	mov     r6, r2
	cmp     r0, #0x0
	beq     branch_2237902
	bl      Function_200eba0
	mov     r0, #0x86
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	ldr     r0, [r4, #0x8]
	bl      LoadPlayerDataAdress
	bl      Function_2027b50
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	str     r6, [sp, #0x4]
	mov     r1, #0x1
	ldr     r0, [r5, #0x30]
	mov     r2, r1
	mov     r3, #0x2
	bl      Function_200dd0c
.thumb
branch_2237902: @ 2237902 :thumb
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2237906


.align 2, 0


.thumb
Function_2237908: @ 2237908 :thumb
	bx      lr
@ 0x223790a


.align 2, 0


.thumb
Function_223790c: @ 223790c :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	bl      0x222cfa4
	ldr     r0, [r4, #0x4]
	bl      0x222cfa8
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      0x222d008
	mov     r0, #0x2
	strh    r0, [r4, #0x8]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x6
	bl      0x222bf90
	ldr     r1, [pc, #0x8] @ 0x223793c, (=0x2239a20)
	ldrb    r0, [r1, r0]
	add     r0, #0x10
	strh    r0, [r4, #0xa]
	pop     {r4,pc}
@ 0x223793c

.word 0x2239a20 @ 0x223793c
.thumb
Function_2237940: @ 2237940 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r0, [r4, #0x4]
	bl      0x222cfb4
	mov     r0, #0xa
	ldsh    r1, [r4, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strh    r1, [r4, #0xa]
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	bgt     branch_223796a
	ldr     r0, [r4, #0x4]
	bl      0x222cfc0
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      0x222cfa4
	mov     r0, #0x3
	strh    r0, [r4, #0x8]
.thumb
branch_223796a: @ 223796a :thumb
	pop     {r4,pc}
@ 0x223796c

.thumb
Function_223796c: @ 223796c :thumb
	bx      lr
@ 0x223796e


.align 2, 0


.thumb
Function_2237970: @ 2237970 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	bl      Function_2032aac
	cmp     r0, #0x0
	beq     branch_2237a0c
	bl      Function_2032e64
	mov     r7, r0
	bl      Function_2032d84
	cmp     r0, #0x0
	beq     branch_223799e
	mov     r0, #0x5
	bl      Function_2036254
	cmp     r0, #0x0
	bne     branch_223799e
	mov     r0, #0x1
	str     r0, [sp, #0x0]
.thumb
branch_223799e: @ 223799e :thumb
	mov     r4, #0x0
	cmp     r7, #0x0
	ble     branch_22379e6
.thumb
branch_22379a4: @ 22379a4 :thumb
	cmp     r4, #0x0
	bne     branch_22379b0
	ldr     r0, [r5, #0x0]
	add     r0, #0x21
	ldrb    r0, [r0, #0x0]
	b       branch_22379cc
@ 0x22379b0

.thumb
branch_22379b0: @ 22379b0 :thumb
	mov     r0, r4
	bl      Function_2032f40
	mov     r6, r0
	cmp     r6, #0x20
	bne     branch_22379c0
	bl      ErrorHandling
.thumb
branch_22379c0: @ 22379c0 :thumb
	mov     r0, #0x24
	ldr     r1, [r5, #0x0]
	mul     r0, r6
	add     r0, r1, r0
	add     r0, #0x45
	ldrb    r0, [r0, #0x0]
.thumb
branch_22379cc: @ 22379cc :thumb
	add     r1, r5, r4
	add     r1, #0x20
	ldrb    r1, [r1, #0x0]
	cmp     r0, r1
	beq     branch_22379da
	mov     r1, #0x1
	str     r1, [sp, #0x0]
.thumb
branch_22379da: @ 22379da :thumb
	add     r1, r5, r4
	add     r1, #0x20
	.hword  0x1c64 @ add r4, r4, #0x1
	strb    r0, [r1, #0x0]
	cmp     r4, r7
	blt     branch_22379a4
.thumb
branch_22379e6: @ 22379e6 :thumb
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x1
	bne     branch_2237a0c
	mov     r2, r5
	add     r5, #0x20
	ldrb    r0, [r5, #0x0]
	add     r1, sp, #0x4
	add     r2, #0x20
	strb    r0, [r1, #0x0]
	ldrb    r0, [r2, #0x1]
	strb    r0, [r1, #0x1]
	ldrb    r0, [r2, #0x2]
	strb    r0, [r1, #0x2]
	ldrb    r0, [r2, #0x3]
	mov     r2, #0x4
	strb    r0, [r1, #0x3]
	mov     r0, #0x18
	bl      Function_20359dc
.thumb
branch_2237a0c: @ 2237a0c :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2237a10

.thumb
Function_2237a10: @ 2237a10 :thumb
	push    {r3,lr}
	mov     r0, #0xd
	bl      Function_2036540
	cmp     r0, #0x0
	beq     branch_2237a20
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2237a20

.thumb
branch_2237a20: @ 2237a20 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2237a24

.thumb
Function_2237a24: @ 2237a24 :thumb
	push    {r3-r5,lr}
	ldr     r0, [r0, #0x8]
	mov     r5, r1
	bl      LoadVariableAreaAdress_12
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x1d
	bl      Function_202c244
	mov     r1, r0
	mov     r0, r4
	mov     r2, #0x4
	bl      Function_202b758
	pop     {r3-r5,pc}
@ 0x2237a44

.thumb
Function_2237a44: @ 2237a44 :thumb
	mov     r1, #0x1
	strb    r1, [r0, #0x10]
	ldr     r1, [pc, #0x4] @ 0x2237a50, (=0x708)
	str     r1, [r0, #0xc]
	bx      lr
@ 0x2237a4e


.align 2


.word 0x708 @ 0x2237a50
.thumb
Function_2237a54: @ 2237a54 :thumb
	ldrb    r1, [r0, #0x10]
	cmp     r1, #0x0
	bne     branch_2237a5e
	mov     r0, #0x0
	bx      lr
@ 0x2237a5e

.thumb
branch_2237a5e: @ 2237a5e :thumb
	ldr     r1, [r0, #0xc]
	cmp     r1, #0x0
	ble     branch_2237a6c
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r0, #0xc]
	mov     r0, #0x0
	bx      lr
@ 0x2237a6c

.thumb
branch_2237a6c: @ 2237a6c :thumb
	mov     r0, #0x1
	bx      lr
@ 0x2237a70

.thumb
Function_2237a70: @ 2237a70 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r1, [r5, #0x0]
	mov     r4, r2
	add     r1, #0x21
	ldrb    r1, [r1, #0x0]
	cmp     r1, #0x1
	bne     branch_2237a84
	bl      Function_2237520
.thumb
branch_2237a84: @ 2237a84 :thumb
	mov     r0, #0x0
	bl      0x21d26ec
	mov     r0, #0x0
	mov     r1, #0x1
	bl      Function_20388f4
	bl      Function_203608c
	mov     r1, r0
	mov     r0, r5
	mov     r2, r4
	bl      Function_22376d0
	mov     r0, #0x1
	strb    r0, [r5, #0x5]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2237aa8

.thumb
Function_2237aa8: @ 2237aa8 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r3, r2
	add     r0, #0x30
	mov     r2, #0x6b
	bl      Function_2236e44
	mov     r0, #0x2
	strb    r0, [r4, #0x5]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2237abe


.align 2, 0


.thumb
Function_2237ac0: @ 2237ac0 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	add     r0, #0x30
	mov     r6, r1
	bl      Function_2236ef8
	cmp     r0, #0x0
	bne     branch_2237ad8
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2237ad8

.thumb
branch_2237ad8: @ 2237ad8 :thumb
	mov     r0, r5
	bl      Function_2237450
	cmp     r0, #0x1
	bne     branch_2237b1e
	bl      Function_2032e44
	mov     r4, r0
	cmp     r4, #0xff
	beq     branch_2237b1e
	ldrb    r1, [r5, #0x6]
	cmp     r1, #0x0
	beq     branch_2237b1e
	bl      Function_2032f40
	cmp     r0, #0x20
	bne     branch_2237b1c
	add     r0, sp, #0x0
	strh    r4, [r0, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r4
	bl      Function_2032d98
	mov     r0, #0x16
	add     r1, sp, #0x0
	mov     r2, #0x8
	bl      Function_20359dc
	cmp     r0, #0x1
	beq     branch_2237b1e
	bl      ErrorHandling
	b       branch_2237b1e
@ 0x2237b1c

.thumb
branch_2237b1c: @ 2237b1c :thumb
	strb    r4, [r5, #0x6]
.thumb
branch_2237b1e: @ 2237b1e :thumb
	ldr     r0, [pc, #0x74] @ 0x2237b94, (=0x21bf67c)
	mov     r1, #0x1
	ldr     r0, [r0, #0x48]
	tst     r1, r0
	beq     branch_2237b56
	ldr     r0, [pc, #0x6c] @ 0x2237b98, (=0x5dd)
	bl      Function_2005748
	mov     r0, r5
	bl      Function_2237450
	cmp     r0, #0x0
	bne     branch_2237b3e
	mov     r0, #0x6
	strb    r0, [r5, #0x5]
	b       branch_2237b8c
@ 0x2237b3e

.thumb
branch_2237b3e: @ 2237b3e :thumb
	mov     r0, r5
	bl      Function_2237548
	ldrb    r1, [r6, #0x1]
	cmp     r1, r0
	bgt     branch_2237b50
	mov     r0, #0x8
	strb    r0, [r5, #0x5]
	b       branch_2237b8c
@ 0x2237b50

.thumb
branch_2237b50: @ 2237b50 :thumb
	mov     r0, #0x6
	strb    r0, [r5, #0x5]
	b       branch_2237b8c
@ 0x2237b56

.thumb
branch_2237b56: @ 2237b56 :thumb
	mov     r1, #0x2
	mov     r2, r0
	tst     r2, r1
	beq     branch_2237b6a
	ldr     r0, [pc, #0x38] @ 0x2237b98, (=0x5dd)
	bl      Function_2005748
	mov     r0, #0x16
	strb    r0, [r5, #0x5]
	b       branch_2237b8c
@ 0x2237b6a

.thumb
branch_2237b6a: @ 2237b6a :thumb
	ldrb    r2, [r5, #0x6]
	cmp     r2, #0xff
	beq     branch_2237b7c
	ldr     r0, [pc, #0x24] @ 0x2237b98, (=0x5dd)
	bl      Function_2005748
	mov     r0, #0x3
	strb    r0, [r5, #0x5]
	b       branch_2237b8c
@ 0x2237b7c

.thumb
branch_2237b7c: @ 2237b7c :thumb
	lsl     r1, r1, #9
	tst     r0, r1
	beq     branch_2237b8c
	mov     r0, #0x1e
	strb    r0, [r5, #0x5]
	ldr     r0, [pc, #0x10] @ 0x2237b98, (=0x5dd)
	bl      Function_2005748
.thumb
branch_2237b8c: @ 2237b8c :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2237b92


.align 2


.word 0x21bf67c @ 0x2237b94
.word 0x5dd @ 0x2237b98
.thumb
Function_2237b9c: @ 2237b9c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r2
	ldrb    r2, [r5, #0x6]
	add     r0, #0x30
	mov     r3, r6
	mov     r4, r1
	bl      Function_2236f70
	mov     r0, r5
	add     r0, #0x30
	mov     r1, r4
	mov     r2, #0x6c
	mov     r3, r6
	bl      Function_2236e44
	mov     r0, #0x4
	strb    r0, [r5, #0x5]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2237bc4

.thumb
Function_2237bc4: @ 2237bc4 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	add     r0, #0x30
	mov     r5, r2
	bl      Function_2236ef8
	cmp     r0, #0x0
	bne     branch_2237bd8
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2237bd8

.thumb
branch_2237bd8: @ 2237bd8 :thumb
	str     r5, [sp, #0x0]
	ldr     r0, [r4, #0x30]
	ldr     r1, [pc, #0x14] @ 0x2237bf4, (=0x2239a24)
	mov     r2, #0x30
	mov     r3, #0x4
	bl      Function_2002100
	mov     r1, #0x83
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x5
	strb    r0, [r4, #0x5]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2237bf4

.word 0x2239a24 @ 0x2237bf4
.thumb
Function_2237bf8: @ 2237bf8 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r0, #0x83
	lsl     r0, r0, #2
	mov     r6, r2
	mov     r4, r1
	ldr     r0, [r5, r0]
	mov     r1, r6
	bl      Function_2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_2237c90
	ldrb    r2, [r5, #0x6]
	add     r1, sp, #0x0
	cmp     r0, #0x0
	strh    r2, [r1, #0x0]
	bne     branch_2237c5c
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldrb    r1, [r5, #0x6]
	mov     r0, r5
	mov     r2, r6
	bl      Function_22376a0
	ldr     r0, [r5, #0x0]
	add     r0, #0x21
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_2237c44
	mov     r0, r5
	bl      Function_2237504
	mov     r0, r5
	bl      Function_2237520
.thumb
branch_2237c44: @ 2237c44 :thumb
	mov     r0, r5
	bl      Function_2237548
	ldrb    r1, [r4, #0x2]
	cmp     r1, r0
	bgt     branch_2237c56
	mov     r0, #0x8
	strb    r0, [r5, #0x5]
	b       branch_2237c6a
@ 0x2237c56

.thumb
branch_2237c56: @ 2237c56 :thumb
	mov     r0, #0x1
	strb    r0, [r5, #0x5]
	b       branch_2237c6a
@ 0x2237c5c

.thumb
branch_2237c5c: @ 2237c5c :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldrb    r0, [r5, #0x6]
	bl      Function_2032d98
	mov     r0, #0x1
	strb    r0, [r5, #0x5]
.thumb
branch_2237c6a: @ 2237c6a :thumb
	mov     r0, #0x16
	add     r1, sp, #0x0
	mov     r2, #0x8
	bl      Function_20359dc
	cmp     r0, #0x1
	beq     branch_2237c7c
	bl      ErrorHandling
.thumb
branch_2237c7c: @ 2237c7c :thumb
	mov     r0, #0xff
	strb    r0, [r5, #0x6]
	mov     r0, r5
	add     r0, #0x30
	bl      Function_2237018
	mov     r0, #0x83
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_2237c90: @ 2237c90 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2237c96


.align 2, 0


.thumb
Function_2237c98: @ 2237c98 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r3, r2
	add     r0, #0x30
	mov     r2, #0x77
	bl      Function_2236e44
	mov     r0, #0x7
	strb    r0, [r4, #0x5]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2237cae


.align 2, 0


.thumb
Function_2237cb0: @ 2237cb0 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x30
	bl      Function_2236ef8
	cmp     r0, #0x0
	bne     branch_2237cc2
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2237cc2

.thumb
branch_2237cc2: @ 2237cc2 :thumb
	mov     r0, #0x13
	strb    r0, [r4, #0x5]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2237cca


.align 2, 0


.thumb
Function_2237ccc: @ 2237ccc :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r3, r2
	add     r0, #0x30
	mov     r2, #0x6f
	bl      Function_2236e44
	mov     r0, #0x9
	strb    r0, [r4, #0x5]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2237ce2


.align 2, 0


.thumb
Function_2237ce4: @ 2237ce4 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	add     r0, #0x30
	mov     r5, r2
	bl      Function_2236ef8
	cmp     r0, #0x0
	bne     branch_2237cf8
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2237cf8

.thumb
branch_2237cf8: @ 2237cf8 :thumb
	str     r5, [sp, #0x0]
	ldr     r0, [r4, #0x30]
	ldr     r1, [pc, #0x14] @ 0x2237d14, (=0x2239a24)
	mov     r2, #0x30
	mov     r3, #0x4
	bl      Function_2002100
	mov     r1, #0x83
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0xa
	strb    r0, [r4, #0x5]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2237d14

.word 0x2239a24 @ 0x2237d14
.thumb
Function_2237d18: @ 2237d18 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x83
	lsl     r0, r0, #2
	mov     r4, r1
	ldr     r0, [r5, r0]
	mov     r1, r2
	bl      Function_2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_2237d5a
	cmp     r0, #0x0
	bne     branch_2237d3c
	mov     r0, #0xb
	strb    r0, [r5, #0x5]
	b       branch_2237d52
@ 0x2237d3c

.thumb
branch_2237d3c: @ 2237d3c :thumb
	mov     r0, r5
	bl      Function_2237548
	ldrb    r1, [r4, #0x2]
	cmp     r1, r0
	bgt     branch_2237d4e
	mov     r0, #0x13
	strb    r0, [r5, #0x5]
	b       branch_2237d52
@ 0x2237d4e

.thumb
branch_2237d4e: @ 2237d4e :thumb
	mov     r0, #0x1
	strb    r0, [r5, #0x5]
.thumb
branch_2237d52: @ 2237d52 :thumb
	mov     r0, #0x83
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_2237d5a: @ 2237d5a :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2237d5e


.align 2, 0


.thumb
Function_2237d60: @ 2237d60 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r1, #0x1e
	mov     r6, r2
	str     r1, [r5, #0x8]
	bl      Function_223758c
	mov     r0, r5
	add     r0, #0x30
	mov     r1, r4
	mov     r2, #0x66
	mov     r3, r6
	bl      Function_2236e44
	mov     r0, r5
	bl      Function_223789c
	mov     r0, r5
	bl      Function_2237a44
	mov     r0, #0xc
	strb    r0, [r5, #0x5]
	bl      0x21d25fc
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2237d96


.align 2, 0


.thumb
Function_2237d98: @ 2237d98 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      Function_2035e18
	mov     r5, r0
	bl      Function_2032e64
	cmp     r5, r0
	beq     branch_2237db4
	mov     r0, r4
	bl      Function_223758c
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2237db4

.thumb
branch_2237db4: @ 2237db4 :thumb
	bl      0x21d25c0
	cmp     r0, #0x0
	bne     branch_2237dc0
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2237dc0

.thumb
branch_2237dc0: @ 2237dc0 :thumb
	mov     r0, #0x1
	bl      0x21d26ec
	mov     r0, #0xd
	strb    r0, [r4, #0x5]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2237dce


.align 2, 0


.thumb
Function_2237dd0: @ 2237dd0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x0
	bne     branch_2237dee
	mov     r1, #0x0
	mov     r0, #0x17
	mov     r2, r1
	bl      Function_20359dc
	cmp     r0, #0x0
	beq     branch_2237df2
	mov     r0, #0xe
	strb    r0, [r4, #0x5]
	b       branch_2237df2
@ 0x2237dee

.thumb
branch_2237dee: @ 2237dee :thumb
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x8]
.thumb
branch_2237df2: @ 2237df2 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2237df6


.align 2, 0


.thumb
Function_2237df8: @ 2237df8 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r0, #0xd
	mov     r5, r1
	bl      Function_2036540
	cmp     r0, #0x0
	beq     branch_2237e1e
	mov     r0, r4
	mov     r1, r5
	bl      Function_2237498
	bl      Function_20365f4
	mov     r0, #0xe
	bl      Function_20364f0
	mov     r0, #0xf
	strb    r0, [r4, #0x5]
.thumb
branch_2237e1e: @ 2237e1e :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2237e22


.align 2, 0


.thumb
Function_2237e24: @ 2237e24 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	mov     r0, #0xe
	bl      Function_2036540
	cmp     r0, #0x0
	beq     branch_2237e4e
	ldr     r0, [r4, #0x0]
	ldrb    r1, [r0, #0x1b]
	add     r0, sp, #0x0
	strh    r1, [r0, #0x0]
	bl      Function_203608c
	add     r1, sp, #0x0
	bl      Function_2036614
	cmp     r0, #0x1
	bne     branch_2237e4e
	mov     r0, #0x10
	strb    r0, [r4, #0x5]
.thumb
branch_2237e4e: @ 2237e4e :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2237e54

.thumb
Function_2237e54: @ 2237e54 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	bl      Function_2237548
	mov     r7, r0
	bl      Function_203608c
	mov     r5, #0x0
	mov     r4, r5
	str     r0, [sp, #0x0]
	cmp     r7, #0x0
	ble     branch_2237e98
.thumb
branch_2237e6c: @ 2237e6c :thumb
	ldr     r0, [sp, #0x0]
	cmp     r0, r4
	beq     branch_2237e90
	mov     r0, r4
	bl      Function_203664c
	cmp     r0, #0x0
	beq     branch_2237e92
	ldrh    r1, [r0, #0x0]
	ldr     r0, [r6, #0x0]
	ldrb    r0, [r0, #0x1b]
	cmp     r1, r0
	bne     branch_2237e8a
	.hword  0x1c6d @ add r5, r5, #0x1
	b       branch_2237e92
@ 0x2237e8a

.thumb
branch_2237e8a: @ 2237e8a :thumb
	mov     r0, #0x1b
	strb    r0, [r6, #0x5]
	b       branch_2237e92
@ 0x2237e90

.thumb
branch_2237e90: @ 2237e90 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_2237e92: @ 2237e92 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r7
	blt     branch_2237e6c
.thumb
branch_2237e98: @ 2237e98 :thumb
	cmp     r5, r7
	bne     branch_2237ea0
	mov     r0, #0x11
	strb    r0, [r6, #0x5]
.thumb
branch_2237ea0: @ 2237ea0 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2237ea4

.thumb
Function_2237ea4: @ 2237ea4 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_20388f4
	mov     r0, #0x12
	bl      Function_20364f0
	mov     r0, #0x12
	strb    r0, [r4, #0x5]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2237ebe


.align 2, 0


.thumb
Function_2237ec0: @ 2237ec0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, #0x12
	mov     r4, r1
	mov     r6, r2
	bl      Function_2036540
	cmp     r0, #0x0
	beq     branch_2237eec
	mov     r0, #0x1
	strb    r0, [r5, #0x7]
	mov     r0, r4
	mov     r1, r6
	bl      Function_2237a24
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_22378c4
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2237eec

.thumb
branch_2237eec: @ 2237eec :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2237ef0

.thumb
Function_2237ef0: @ 2237ef0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r3, r2
	add     r0, #0x30
	mov     r2, #0x78
	bl      Function_2236e44
	mov     r0, #0x14
	strb    r0, [r4, #0x5]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2237f06


.align 2, 0


.thumb
Function_2237f08: @ 2237f08 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	add     r0, #0x30
	mov     r4, r2
	bl      Function_2236ef8
	cmp     r0, #0x0
	bne     branch_2237f20
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2237f20

.thumb
branch_2237f20: @ 2237f20 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r4, [sp, #0x4]
	ldr     r0, [r5, #0x30]
	ldr     r1, [pc, #0x18] @ 0x2237f44, (=0x2239a24)
	mov     r2, #0x30
	mov     r3, #0x4
	bl      Function_2002054
	mov     r1, #0x83
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x15
	strb    r0, [r5, #0x5]
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2237f42


.align 2


.word 0x2239a24 @ 0x2237f44
.thumb
Function_2237f48: @ 2237f48 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x83
	lsl     r0, r0, #2
	mov     r4, r1
	ldr     r0, [r5, r0]
	mov     r1, r2
	bl      Function_2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_2237f9a
	cmp     r0, #0x0
	bne     branch_2237f6c
	mov     r0, #0x16
	strb    r0, [r5, #0x5]
	b       branch_2237f92
@ 0x2237f6c

.thumb
branch_2237f6c: @ 2237f6c :thumb
	mov     r0, r5
	bl      Function_2237450
	cmp     r0, #0x0
	beq     branch_2237f8e
	mov     r0, r5
	bl      Function_2237548
	ldrb    r1, [r4, #0x2]
	cmp     r1, r0
	bgt     branch_2237f88
	mov     r0, #0x8
	strb    r0, [r5, #0x5]
	b       branch_2237f92
@ 0x2237f88

.thumb
branch_2237f88: @ 2237f88 :thumb
	mov     r0, #0x1
	strb    r0, [r5, #0x5]
	b       branch_2237f92
@ 0x2237f8e

.thumb
branch_2237f8e: @ 2237f8e :thumb
	mov     r0, #0x1
	strb    r0, [r5, #0x5]
.thumb
branch_2237f92: @ 2237f92 :thumb
	mov     r0, #0x83
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_2237f9a: @ 2237f9a :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2237f9e


.align 2, 0


.thumb
Function_2237fa0: @ 2237fa0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r3, r2
	add     r0, #0x30
	mov     r2, #0x79
	bl      Function_2236e44
	mov     r0, #0x17
	strb    r0, [r4, #0x5]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2237fb6


.align 2, 0


.thumb
Function_2237fb8: @ 2237fb8 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	add     r0, #0x30
	mov     r4, r2
	bl      Function_2236ef8
	cmp     r0, #0x0
	bne     branch_2237fd0
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2237fd0

.thumb
branch_2237fd0: @ 2237fd0 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r4, [sp, #0x4]
	ldr     r0, [r5, #0x30]
	ldr     r1, [pc, #0x18] @ 0x2237ff4, (=0x2239a24)
	mov     r2, #0x30
	mov     r3, #0x4
	bl      Function_2002054
	mov     r1, #0x83
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x18
	strb    r0, [r5, #0x5]
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2237ff2


.align 2


.word 0x2239a24 @ 0x2237ff4
.thumb
Function_2237ff8: @ 2237ff8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x83
	lsl     r0, r0, #2
	mov     r4, r1
	ldr     r0, [r5, r0]
	mov     r1, r2
	bl      Function_2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_223804a
	cmp     r0, #0x0
	bne     branch_223801c
	mov     r0, #0x19
	strb    r0, [r5, #0x5]
	b       branch_2238042
@ 0x223801c

.thumb
branch_223801c: @ 223801c :thumb
	mov     r0, r5
	bl      Function_2237450
	cmp     r0, #0x0
	beq     branch_223803e
	mov     r0, r5
	bl      Function_2237548
	ldrb    r1, [r4, #0x2]
	cmp     r1, r0
	bgt     branch_2238038
	mov     r0, #0x8
	strb    r0, [r5, #0x5]
	b       branch_2238042
@ 0x2238038

.thumb
branch_2238038: @ 2238038 :thumb
	mov     r0, #0x1
	strb    r0, [r5, #0x5]
	b       branch_2238042
@ 0x223803e

.thumb
branch_223803e: @ 223803e :thumb
	mov     r0, #0x1
	strb    r0, [r5, #0x5]
.thumb
branch_2238042: @ 2238042 :thumb
	mov     r0, #0x83
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_223804a: @ 223804a :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x223804e


.align 2, 0


.thumb
Function_2238050: @ 2238050 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r3, r2
	add     r0, #0x30
	mov     r2, #0x7a
	bl      Function_2236e44
	mov     r0, #0x1e
	str     r0, [r4, #0x8]
	mov     r0, #0x1a
	strb    r0, [r4, #0x5]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223806a


.align 2, 0


.thumb
Function_223806c: @ 223806c :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x30
	bl      Function_2236ef8
	cmp     r0, #0x0
	bne     branch_223807e
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223807e

.thumb
branch_223807e: @ 223807e :thumb
	ldr     r0, [r4, #0x8]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x8]
	cmp     r0, #0x0
	ble     branch_223808c
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223808c

.thumb
branch_223808c: @ 223808c :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x7]
	bl      Function_2038378
	mov     r0, r4
	bl      Function_22375cc
	bl      Function_2038b60
	mov     r0, #0x0
	mov     r1, #0x1
	bl      Function_20388f4
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x22380aa


.align 2, 0


.thumb
Function_22380ac: @ 22380ac :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, #0x83
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r6, r1
	mov     r4, r2
	cmp     r0, #0x0
	beq     branch_22380cc
	mov     r1, r4
	bl      Function_2002154
	mov     r0, #0x83
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_22380cc: @ 22380cc :thumb
	mov     r0, r5
	add     r0, #0x30
	bl      Function_2237018
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	bl      Function_22378c4
	mov     r0, #0x1c
	strb    r0, [r5, #0x5]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x22380e6


.align 2, 0


.thumb
Function_22380e8: @ 22380e8 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r3, r2
	add     r0, #0x30
	mov     r2, #0x76
	bl      Function_2236e44
	mov     r0, #0x1d
	strb    r0, [r4, #0x5]
	mov     r0, r4
	bl      Function_22375cc
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2238104

.thumb
Function_2238104: @ 2238104 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x30
	bl      Function_2236ef8
	cmp     r0, #0x0
	bne     branch_2238116
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2238116

.thumb
branch_2238116: @ 2238116 :thumb
	bl      Function_2038378
	bl      Function_2038b60
	mov     r0, r4
	bl      Function_22375cc
	mov     r0, #0x0
	mov     r1, #0x1
	strb    r0, [r4, #0x7]
	bl      Function_20388f4
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2238132


.align 2, 0


.thumb
Function_2238134: @ 2238134 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	mov     r3, r2
	add     r0, #0x21
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_2238148
	mov     r2, #0x7d
	b       branch_223814a
@ 0x2238148

.thumb
branch_2238148: @ 2238148 :thumb
	mov     r2, #0x7c
.thumb
branch_223814a: @ 223814a :thumb
	mov     r0, r4
	add     r0, #0x30
	bl      Function_2236e44
	mov     r0, #0x1f
	strb    r0, [r4, #0x5]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223815a


.align 2, 0


.thumb
Function_223815c: @ 223815c :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	add     r0, #0x30
	mov     r5, r2
	bl      Function_2236ef8
	cmp     r0, #0x0
	bne     branch_2238170
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2238170

.thumb
branch_2238170: @ 2238170 :thumb
	str     r5, [sp, #0x0]
	ldr     r0, [r4, #0x30]
	ldr     r1, [pc, #0x14] @ 0x223818c, (=0x2239a24)
	mov     r2, #0x30
	mov     r3, #0x4
	bl      Function_2002100
	mov     r1, #0x83
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x20
	strb    r0, [r4, #0x5]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x223818c

.word 0x2239a24 @ 0x223818c
.thumb
Function_2238190: @ 2238190 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x83
	lsl     r0, r0, #2
	mov     r4, r2
	ldr     r0, [r5, r0]
	mov     r1, r4
	bl      Function_2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_22381c8
	cmp     r0, #0x0
	bne     branch_22381bc
	mov     r0, r5
	mov     r1, r4
	bl      Function_223731c
	mov     r0, r5
	bl      Function_2237698
.thumb
branch_22381bc: @ 22381bc :thumb
	mov     r0, #0x1
	strb    r0, [r5, #0x5]
	mov     r0, #0x83
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_22381c8: @ 22381c8 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22381cc

.thumb
Function_22381cc: @ 22381cc :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2032ac0
	mov     r0, #0x0
	mov     r1, #0x1
	bl      Function_20388f4
	mov     r0, #0x1
	strb    r0, [r4, #0x5]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22381e4

.thumb
Function_22381e4: @ 22381e4 :thumb
	push    {r4,lr}
	mov     r1, r2
	mov     r4, r0
	bl      Function_2237550
	mov     r0, #0x0
	bl      Function_2035d78
	cmp     r0, #0x0
	bne     branch_22381fe
	mov     r0, #0xf
	strb    r0, [r4, #0x5]
	b       branch_223820c
@ 0x22381fe

.thumb
branch_22381fe: @ 22381fe :thumb
	mov     r0, #0x0
	bl      Function_2032e00
	cmp     r0, #0x0
	beq     branch_223820c
	mov     r0, #0x2
	strb    r0, [r4, #0x5]
.thumb
branch_223820c: @ 223820c :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2238210

.thumb
Function_2238210: @ 2238210 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r6, r2
	mov     r4, r1
	mov     r5, r0
	mov     r1, r6
	bl      Function_2237550
	mov     r0, r5
	mov     r2, #0x0
	add     r0, #0x30
	mov     r1, r4
	mov     r3, r2
	str     r6, [sp, #0x0]
	bl      Function_223726c
	mov     r0, r5
	add     r0, #0x30
	mov     r1, r4
	mov     r2, #0x72
	mov     r3, r6
	bl      Function_2236e44
	mov     r0, r5
	bl      Function_223789c
	mov     r0, #0x3
	strb    r0, [r5, #0x5]
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x223824e


.align 2, 0


.thumb
Function_2238250: @ 2238250 :thumb
	push    {r4-r6,lr}
	mov     r6, r2
	mov     r4, r1
	mov     r5, r0
	mov     r1, r6
	bl      Function_2237550
	mov     r0, r5
	add     r0, #0x30
	bl      Function_2236ef8
	cmp     r0, #0x0
	bne     branch_223826e
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x223826e

.thumb
branch_223826e: @ 223826e :thumb
	ldrb    r0, [r5, #0x13]
	cmp     r0, #0x0
	beq     branch_22382aa
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_22378c4
	ldrb    r0, [r5, #0x13]
	cmp     r0, #0x1
	beq     branch_223828e
	cmp     r0, #0x2
	beq     branch_2238294
	cmp     r0, #0x3
	beq     branch_22382a0
	b       branch_22382aa
@ 0x223828e

.thumb
branch_223828e: @ 223828e :thumb
	mov     r0, #0x4
	strb    r0, [r5, #0x5]
	b       branch_22382aa
@ 0x2238294

.thumb
branch_2238294: @ 2238294 :thumb
	mov     r0, #0x6
	strb    r0, [r5, #0x5]
	mov     r0, #0x74
	add     r5, #0x2d
	strb    r0, [r5, #0x0]
	b       branch_22382aa
@ 0x22382a0

.thumb
branch_22382a0: @ 22382a0 :thumb
	mov     r0, #0x6
	strb    r0, [r5, #0x5]
	mov     r0, #0x84
	add     r5, #0x2d
	strb    r0, [r5, #0x0]
.thumb
branch_22382aa: @ 22382aa :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x22382ae


.align 2, 0


.thumb
Function_22382b0: @ 22382b0 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r4, r2
	mov     r2, #0x0
	mov     r5, r0
	add     r0, #0x30
	mov     r3, r2
	mov     r6, r1
	str     r4, [sp, #0x0]
	bl      Function_223726c
	mov     r0, r5
	add     r0, #0x30
	mov     r1, r6
	mov     r2, #0x73
	mov     r3, #0x1e
	str     r4, [sp, #0x0]
	bl      Function_2236e50
	mov     r0, #0x5
	strb    r0, [r5, #0x5]
	bl      Function_203608c
	mov     r1, r0
	mov     r0, r5
	mov     r2, #0x60
	bl      Function_22376a0
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x22382ee


.align 2, 0


.thumb
Function_22382f0: @ 22382f0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, r2
	bl      Function_2237550
	mov     r0, r4
	add     r0, #0x30
	bl      Function_2236ef8
	cmp     r0, #0x0
	bne     branch_223830a
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223830a

.thumb
branch_223830a: @ 223830a :thumb
	mov     r0, #0x8
	strb    r0, [r4, #0x5]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2238312


.align 2, 0


.thumb
Function_2238314: @ 2238314 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r6, r2
	mov     r2, #0x0
	mov     r5, r0
	add     r0, #0x30
	mov     r3, r2
	mov     r4, r1
	str     r6, [sp, #0x0]
	bl      Function_223726c
	mov     r2, r5
	add     r2, #0x2d
	mov     r0, r5
	ldrb    r2, [r2, #0x0]
	add     r0, #0x30
	mov     r1, r4
	mov     r3, r6
	bl      Function_2236e44
	mov     r0, #0x7
	strb    r0, [r5, #0x5]
	bl      Function_2038378
	bl      Function_2038b60
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x223834e


.align 2, 0


.thumb
Function_2238350: @ 2238350 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x30
	bl      Function_2236ef8
	cmp     r0, #0x0
	bne     branch_2238362
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2238362

.thumb
branch_2238362: @ 2238362 :thumb
	mov     r0, #0x0
	mov     r1, #0x1
	strb    r0, [r4, #0x7]
	bl      Function_20388f4
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2238370

.thumb
Function_2238370: @ 2238370 :thumb
	push    {r4-r6,lr}
	mov     r6, r2
	mov     r4, r1
	mov     r5, r0
	mov     r1, r6
	bl      Function_2237550
	mov     r0, r5
	add     r0, #0x30
	mov     r1, r4
	mov     r2, #0x7b
	mov     r3, r6
	bl      Function_2236e44
	mov     r0, r5
	bl      Function_223789c
	mov     r0, #0x9
	strb    r0, [r5, #0x5]
	ldr     r0, [r5, #0x0]
	add     r0, #0x21
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_22383a6
	mov     r0, r5
	bl      Function_2237520
.thumb
branch_22383a6: @ 22383a6 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x22383aa


.align 2, 0


.thumb
Function_22383ac: @ 22383ac :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, r2
	bl      Function_2237550
	mov     r0, r4
	add     r0, #0x30
	bl      Function_2236ef8
	cmp     r0, #0x0
	bne     branch_22383c6
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22383c6

.thumb
branch_22383c6: @ 22383c6 :thumb
	mov     r0, #0xa
	strb    r0, [r4, #0x5]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22383ce


.align 2, 0


.thumb
Function_22383d0: @ 22383d0 :thumb
	push    {r4-r6,lr}
	mov     r6, r2
	mov     r4, r1
	mov     r5, r0
	mov     r1, r6
	bl      Function_2237550
	ldrb    r0, [r5, #0x12]
	cmp     r0, #0x0
	beq     branch_2238404
	mov     r0, #0x0
	strb    r0, [r5, #0x12]
	ldr     r0, [r5, #0x0]
	add     r0, #0x21
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_22383fe
	mov     r0, r5
	bl      Function_2237504
	mov     r0, r5
	bl      Function_2237520
.thumb
branch_22383fe: @ 22383fe :thumb
	mov     r0, r5
	bl      Function_2237698
.thumb
branch_2238404: @ 2238404 :thumb
	mov     r0, r5
	bl      Function_2237a10
	cmp     r0, #0x1
	bne     branch_2238448
	bl      Function_20365f4
	mov     r0, #0xe
	bl      Function_20364f0
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_22378c4
	mov     r0, r5
	add     r0, #0x30
	mov     r1, r4
	mov     r2, #0x66
	mov     r3, r6
	bl      Function_2236e44
	mov     r0, r5
	bl      Function_2237a44
	mov     r0, #0x4b
	lsl     r0, r0, #2
	str     r0, [r5, #0x8]
	mov     r0, r5
	bl      Function_223789c
	mov     r0, #0xb
	strb    r0, [r5, #0x5]
	b       branch_2238462
@ 0x2238448

.thumb
branch_2238448: @ 2238448 :thumb
	ldr     r0, [pc, #0x1c] @ 0x2238468, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	lsl     r0, r0, #10
	tst     r0, r1
	beq     branch_2238462
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_22378c4
	mov     r0, #0x12
	strb    r0, [r5, #0x5]
.thumb
branch_2238462: @ 2238462 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2238466


.align 2


.word 0x21bf67c @ 0x2238468
.thumb
Function_223846c: @ 223846c :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r0, #0xe
	bl      Function_2036540
	cmp     r0, #0x0
	beq     branch_22384b6
	ldr     r0, [r4, #0x0]
	ldrb    r1, [r0, #0x1b]
	add     r0, sp, #0x0
	strh    r1, [r0, #0x0]
	mov     r0, r4
	bl      Function_2237548
	mov     r5, r0
	bl      Function_2035e18
	cmp     r5, r0
	beq     branch_22384a4
	ldr     r0, [r4, #0x8]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x8]
	cmp     r0, #0x0
	bgt     branch_22384a0
	mov     r0, #0xf
	strb    r0, [r4, #0x5]
.thumb
branch_22384a0: @ 22384a0 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22384a4

.thumb
branch_22384a4: @ 22384a4 :thumb
	bl      Function_203608c
	add     r1, sp, #0x0
	bl      Function_2036614
	cmp     r0, #0x1
	bne     branch_22384b6
	mov     r0, #0xc
	strb    r0, [r4, #0x5]
.thumb
branch_22384b6: @ 22384b6 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22384ba


.align 2, 0


.thumb
Function_22384bc: @ 22384bc :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	bl      Function_2237548
	mov     r7, r0
	bl      Function_203608c
	mov     r5, #0x0
	mov     r4, r5
	str     r0, [sp, #0x0]
	cmp     r7, #0x0
	ble     branch_2238500
.thumb
branch_22384d4: @ 22384d4 :thumb
	ldr     r0, [sp, #0x0]
	cmp     r0, r4
	beq     branch_22384f8
	mov     r0, r4
	bl      Function_203664c
	cmp     r0, #0x0
	beq     branch_22384fa
	ldrh    r1, [r0, #0x0]
	ldr     r0, [r6, #0x0]
	ldrb    r0, [r0, #0x1b]
	cmp     r1, r0
	bne     branch_22384f2
	.hword  0x1c6d @ add r5, r5, #0x1
	b       branch_22384fa
@ 0x22384f2

.thumb
branch_22384f2: @ 22384f2 :thumb
	mov     r0, #0xf
	strb    r0, [r6, #0x5]
	b       branch_22384fa
@ 0x22384f8

.thumb
branch_22384f8: @ 22384f8 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_22384fa: @ 22384fa :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r7
	blt     branch_22384d4
.thumb
branch_2238500: @ 2238500 :thumb
	cmp     r5, r7
	bne     branch_2238508
	mov     r0, #0xd
	strb    r0, [r6, #0x5]
.thumb
branch_2238508: @ 2238508 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x223850c

.thumb
Function_223850c: @ 223850c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_20388f4
	mov     r0, #0x12
	bl      Function_20364f0
	mov     r0, #0xe
	strb    r0, [r4, #0x5]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2238526


.align 2, 0


.thumb
Function_2238528: @ 2238528 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, #0x12
	mov     r4, r1
	mov     r6, r2
	bl      Function_2036540
	cmp     r0, #0x0
	beq     branch_2238554
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_22378c4
	mov     r0, #0x1
	strb    r0, [r5, #0x7]
	mov     r0, r4
	mov     r1, r6
	bl      Function_2237a24
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2238554

.thumb
branch_2238554: @ 2238554 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2238558

.thumb
Function_2238558: @ 2238558 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, #0x83
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r6, r1
	mov     r4, r2
	cmp     r0, #0x0
	beq     branch_2238578
	mov     r1, r4
	bl      Function_2002154
	mov     r0, #0x83
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_2238578: @ 2238578 :thumb
	mov     r0, r5
	add     r0, #0x30
	bl      Function_2237018
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	bl      Function_22378c4
	mov     r0, #0x10
	strb    r0, [r5, #0x5]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2238592


.align 2, 0


.thumb
Function_2238594: @ 2238594 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r3, r2
	add     r0, #0x30
	mov     r2, #0x76
	bl      Function_2236e44
	mov     r0, #0x11
	strb    r0, [r4, #0x5]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22385aa


.align 2, 0


.thumb
Function_22385ac: @ 22385ac :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x30
	bl      Function_2236ef8
	cmp     r0, #0x0
	bne     branch_22385be
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22385be

.thumb
branch_22385be: @ 22385be :thumb
	bl      Function_2038378
	bl      Function_2038b60
	mov     r0, #0x0
	mov     r1, #0x1
	strb    r0, [r4, #0x7]
	bl      Function_20388f4
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x22385d4

.thumb
Function_22385d4: @ 22385d4 :thumb
	push    {r4-r6,lr}
	mov     r6, r2
	mov     r4, r1
	mov     r5, r0
	mov     r1, r6
	bl      Function_2237550
	ldr     r0, [r5, #0x0]
	add     r0, #0x21
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_22385f0
	mov     r2, #0x7d
	b       branch_22385f2
@ 0x22385f0

.thumb
branch_22385f0: @ 22385f0 :thumb
	mov     r2, #0x7c
.thumb
branch_22385f2: @ 22385f2 :thumb
	mov     r0, r5
	add     r0, #0x30
	mov     r1, r4
	mov     r3, r6
	bl      Function_2236e44
	mov     r0, #0x13
	strb    r0, [r5, #0x5]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2238606


.align 2, 0


.thumb
Function_2238608: @ 2238608 :thumb
	push    {r3-r5,lr}
	mov     r5, r2
	mov     r4, r0
	mov     r1, r5
	bl      Function_2237550
	mov     r0, r4
	bl      Function_2237a10
	cmp     r0, #0x1
	bne     branch_223862e
	mov     r0, #0xa
	strb    r0, [r4, #0x5]
	add     r4, #0x30
	mov     r0, r4
	bl      Function_2236f38
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x223862e

.thumb
branch_223862e: @ 223862e :thumb
	mov     r0, r4
	add     r0, #0x30
	bl      Function_2236ef8
	cmp     r0, #0x0
	bne     branch_223863e
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x223863e

.thumb
branch_223863e: @ 223863e :thumb
	str     r5, [sp, #0x0]
	ldr     r0, [r4, #0x30]
	ldr     r1, [pc, #0x18] @ 0x223865c, (=0x2239a24)
	mov     r2, #0x30
	mov     r3, #0x4
	bl      Function_2002100
	mov     r1, #0x83
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x14
	strb    r0, [r4, #0x5]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x223865a


.align 2


.word 0x2239a24 @ 0x223865c
.thumb
Function_2238660: @ 2238660 :thumb
	push    {r3-r5,lr}
	mov     r4, r2
	mov     r5, r0
	mov     r1, r4
	bl      Function_2237550
	mov     r0, r5
	bl      Function_2237a10
	cmp     r0, #0x1
	bne     branch_2238698
	mov     r0, #0xa
	strb    r0, [r5, #0x5]
	mov     r0, r5
	add     r0, #0x30
	bl      Function_2236f38
	mov     r0, #0x83
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r4
	bl      Function_2002154
	mov     r1, #0x83
	mov     r0, #0x0
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	pop     {r3-r5,pc}
@ 0x2238698

.thumb
branch_2238698: @ 2238698 :thumb
	mov     r0, #0x83
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r4
	bl      Function_2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_22386ca
	cmp     r0, #0x0
	bne     branch_22386be
	mov     r0, r5
	mov     r1, r4
	bl      Function_223731c
	mov     r0, r5
	bl      Function_2237698
.thumb
branch_22386be: @ 22386be :thumb
	mov     r0, #0x8
	strb    r0, [r5, #0x5]
	mov     r0, #0x83
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_22386ca: @ 22386ca :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22386ce


.align 2, 0


.thumb
Function_22386d0: @ 22386d0 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	mov     r0, #0x0
	mov     r6, r1
	mov     r4, r2
	bl      Function_2032f40
	mov     r1, r5
	add     r1, #0x26
	strb    r0, [r1, #0x0]
	mov     r0, r5
	add     r0, #0x26
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x20
	bne     branch_22386f4
	bl      ErrorHandling
.thumb
branch_22386f4: @ 22386f4 :thumb
	mov     r0, r5
	mov     r2, #0x0
	add     r0, #0x30
	mov     r1, r6
	mov     r3, r2
	str     r4, [sp, #0x0]
	bl      Function_223726c
	bl      Function_2038378
	mov     r0, r5
	mov     r1, #0x0
	add     r0, #0x27
	strb    r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x30
	mov     r1, r6
	mov     r2, #0x84
	mov     r3, r4
	bl      Function_2236e44
	mov     r0, #0x16
	strb    r0, [r5, #0x5]
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x2238728

.thumb
Function_2238728: @ 2238728 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	add     r0, #0x30
	mov     r5, r2
	bl      Function_2236ef8
	cmp     r0, #0x0
	bne     branch_223873c
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x223873c

.thumb
branch_223873c: @ 223873c :thumb
	str     r5, [sp, #0x0]
	ldr     r0, [r4, #0x30]
	ldr     r1, [pc, #0x14] @ 0x2238758, (=0x2239a24)
	mov     r2, #0x30
	mov     r3, #0x4
	bl      Function_2002100
	mov     r1, #0x83
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x17
	strb    r0, [r4, #0x5]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2238758

.word 0x2239a24 @ 0x2238758
.thumb
Function_223875c: @ 223875c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x83
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, r2
	bl      Function_2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_2238788
	cmp     r0, #0x0
	bne     branch_223877c
	mov     r0, #0x18
	b       branch_223877e
@ 0x223877c

.thumb
branch_223877c: @ 223877c :thumb
	mov     r0, #0x1d
.thumb
branch_223877e: @ 223877e :thumb
	strb    r0, [r4, #0x5]
	mov     r0, #0x83
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
.thumb
branch_2238788: @ 2238788 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223878c

.thumb
Function_223878c: @ 223878c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r3, r2
	add     r0, #0x30
	mov     r2, #0x11
	bl      Function_2236e44
	mov     r0, r4
	bl      Function_223789c
	mov     r0, #0x5a
	str     r0, [r4, #0x8]
	mov     r0, #0x19
	strb    r0, [r4, #0x5]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22387ac

.thumb
Function_22387ac: @ 22387ac :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x8]
	mov     r4, r1
	cmp     r0, #0x0
	ble     branch_22387c0
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r5, #0x8]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22387c0

.thumb
branch_22387c0: @ 22387c0 :thumb
	mov     r0, r5
	add     r0, #0x30
	bl      Function_2236ef8
	cmp     r0, #0x0
	bne     branch_22387d0
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22387d0

.thumb
branch_22387d0: @ 22387d0 :thumb
	mov     r0, r5
	add     r0, #0x26
	ldrb    r0, [r0, #0x0]
	ldrb    r1, [r4, #0x0]
	bl      Function_2237464
	cmp     r0, #0x0
	beq     branch_22387e4
	mov     r0, #0x1a
	strb    r0, [r5, #0x5]
.thumb
branch_22387e4: @ 22387e4 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22387e8

.thumb
Function_22387e8: @ 22387e8 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r6, r1
	mov     r4, r2
	bl      Function_223742c
	bl      Function_20380e4
	cmp     r0, #0x1
	bne     branch_2238832
	mov     r0, #0x0
	bl      Function_2035d78
	cmp     r0, #0x1
	bne     branch_2238832
	mov     r0, #0x0
	bl      Function_203632c
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	bl      Function_22378c4
	mov     r1, #0x0
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x3
	mov     r2, r1
	mov     r3, r1
	str     r4, [sp, #0x8]
	bl      Function_200f174
	mov     r0, #0x1b
	strb    r0, [r5, #0x5]
.thumb
branch_2238832: @ 2238832 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x2238838

.thumb
Function_2238838: @ 2238838 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r6, r1
	mov     r4, r2
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_22388f4
	ldr     r0, [r6, #0x8]
	mov     r1, #0x0
	bl      Function_20329e0
	mov     r0, r5
	mov     r1, #0x1
	add     r0, #0x27
	strb    r1, [r0, #0x0]
	mov     r0, r5
	bl      Function_22377e8
	mov     r0, r5
	mov     r1, r4
	bl      Function_22367f8
	mov     r0, r5
	mov     r2, #0x7e
	add     r0, #0x30
	mov     r1, #0x0
	lsl     r2, r2, #2
	blx     Call_FillMemWithValue
	mov     r0, r5
	bl      Function_223760c
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	bl      Function_22367a8
	bl      Function_2039734
	mov     r1, #0x0
	strb    r1, [r5, #0x12]
	strb    r1, [r5, #0x13]
	mov     r0, r5
	add     r0, #0x14
	strb    r1, [r5, #0x14]
	strb    r1, [r0, #0x1]
	strb    r1, [r0, #0x2]
	strb    r1, [r0, #0x3]
	mov     r0, r5
	add     r0, #0x18
	strb    r1, [r5, #0x18]
	strb    r1, [r0, #0x1]
	strb    r1, [r0, #0x2]
	strb    r1, [r0, #0x3]
	mov     r0, r5
	add     r0, #0x1c
	mov     r1, #0x1
	mov     r2, #0x4
	blx     MI_CpuFill8
	mov     r0, r5
	add     r0, #0x20
	mov     r1, #0x1
	mov     r2, #0x4
	blx     MI_CpuFill8
	mov     r0, r5
	mov     r1, r5
	mov     r3, #0x0
	add     r0, #0x24
	strb    r3, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x26
	strb    r3, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x28
	strb    r3, [r0, #0x0]
	add     r1, #0x28
	strb    r3, [r1, #0x1]
	strb    r3, [r1, #0x2]
	strb    r3, [r1, #0x3]
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x3
	mov     r2, r1
	str     r4, [sp, #0x8]
	bl      Function_200f174
	mov     r0, #0x1c
	strb    r0, [r5, #0x5]
.thumb
branch_22388f4: @ 22388f4 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x22388fa


.align 2, 0


.thumb
Function_22388fc: @ 22388fc :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_223890c
	mov     r0, #0x0
	strb    r0, [r4, #0x5]
.thumb
branch_223890c: @ 223890c :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2238910

.thumb
Function_2238910: @ 2238910 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2038378
	bl      Function_2038b60
	mov     r0, #0x0
	mov     r1, #0x1
	strb    r0, [r4, #0x7]
	bl      Function_20388f4
	mov     r0, #0x1
	pop     {r4,pc}



.align 2, 0
Unknown_223892c: @ 0x223892c
.incbin "./baserom/overlay/overlay_0065.bin", 0xac4c, 0x2239a2c - 0x223892c


.word Function_2237908+1 @ =0x2237909, 0x2239a2c
.word Function_223790c+1 @ =0x223790d, 0x2239a30
.word Function_2237940+1 @ =0x2237941, 0x2239a34
.word Function_223796c+1 @ =0x223796d, 0x2239a38

.incbin "./baserom/overlay/overlay_0065.bin", 0xbd5c, 0x2239d2c - 0x2239a3c


.word Function_222f010+1 @ =0x222f011, 0x2239d2c
.word Function_222f164+1 @ =0x222f165, 0x2239d30
.word Function_222f1a8+1 @ =0x222f1a9, 0x2239d34
.word Function_222f21c+1 @ =0x222f21d, 0x2239d38
.word Function_222f288+1 @ =0x222f289, 0x2239d3c
.word Function_222f304+1 @ =0x222f305, 0x2239d40
.word Function_222f3dc+1 @ =0x222f3dd, 0x2239d44
.word Function_222f7ac+1 @ =0x222f7ad, 0x2239d48
.word Function_222f7f0+1 @ =0x222f7f1, 0x2239d4c
.word Function_222f7fc+1 @ =0x222f7fd, 0x2239d50
.word Function_222f808+1 @ =0x222f809, 0x2239d54
.word Function_222f868+1 @ =0x222f869, 0x2239d58
.word Function_222f8ac+1 @ =0x222f8ad, 0x2239d5c
.word Function_222f90c+1 @ =0x222f90d, 0x2239d60
.word Function_222f490+1 @ =0x222f491, 0x2239d64
.word Function_222faa0+1 @ =0x222faa1, 0x2239d68
.word Function_222fcb8+1 @ =0x222fcb9, 0x2239d6c
.word Function_222fcdc+1 @ =0x222fcdd, 0x2239d70
.word Function_222ffac+1 @ =0x222ffad, 0x2239d74
.word Function_22302c4+1 @ =0x22302c5, 0x2239d78
.word Function_22305ec+1 @ =0x22305ed, 0x2239d7c
.word Function_2230634+1 @ =0x2230635, 0x2239d80
.word Function_2230774+1 @ =0x2230775, 0x2239d84
.word Function_22307b0+1 @ =0x22307b1, 0x2239d88
.word Function_2230860+1 @ =0x2230861, 0x2239d8c
.word Function_22309d0+1 @ =0x22309d1, 0x2239d90
.word Function_2230a30+1 @ =0x2230a31, 0x2239d94
.word Function_2230af8+1 @ =0x2230af9, 0x2239d98
.word Function_2230bb4+1 @ =0x2230bb5, 0x2239d9c
.word Function_2230c04+1 @ =0x2230c05, 0x2239da0
.word Function_2230cac+1 @ =0x2230cad, 0x2239da4
.word Function_2230cb0+1 @ =0x2230cb1, 0x2239da8
.word Function_2230cb4+1 @ =0x2230cb5, 0x2239dac
.word Function_2232530+1 @ =0x2232531, 0x2239db0
.word Function_2232b28+1 @ =0x2232b29, 0x2239db4
.word Function_2230cb8+1 @ =0x2230cb9, 0x2239db8
.word Function_2230e04+1 @ =0x2230e05, 0x2239dbc
.word Function_2230fbc+1 @ =0x2230fbd, 0x2239dc0
.word Function_2231440+1 @ =0x2231441, 0x2239dc4
.word Function_2230cf8+1 @ =0x2230cf9, 0x2239dc8
.word Function_2230d20+1 @ =0x2230d21, 0x2239dcc
.word Function_2230d6c+1 @ =0x2230d6d, 0x2239dd0
.word Function_22315a4+1 @ =0x22315a5, 0x2239dd4
.word Function_22316f0+1 @ =0x22316f1, 0x2239dd8
.word Function_2231a98+1 @ =0x2231a99, 0x2239ddc
.word Function_2231e64+1 @ =0x2231e65, 0x2239de0
.word Function_2232020+1 @ =0x2232021, 0x2239de4
.word Function_2232024+1 @ =0x2232025, 0x2239de8
.word Function_2232028+1 @ =0x2232029, 0x2239dec
.word Function_22321f4+1 @ =0x22321f5, 0x2239df0
.word Function_223229c+1 @ =0x223229d, 0x2239df4
.word Function_22322dc+1 @ =0x22322dd, 0x2239df8
.word Function_2232358+1 @ =0x2232359, 0x2239dfc
.word Function_22323c0+1 @ =0x22323c1, 0x2239e00
.word Function_2232558+1 @ =0x2232559, 0x2239e04
.word Function_2232564+1 @ =0x2232565, 0x2239e08
.word Function_22325ac+1 @ =0x22325ad, 0x2239e0c
.word Function_22325c4+1 @ =0x22325c5, 0x2239e10
.word Function_2232608+1 @ =0x2232609, 0x2239e14
.word Function_2232698+1 @ =0x2232699, 0x2239e18
.word Function_22326f0+1 @ =0x22326f1, 0x2239e1c
.word Function_2232734+1 @ =0x2232735, 0x2239e20
.word Function_223278c+1 @ =0x223278d, 0x2239e24
.word Function_223288c+1 @ =0x223288d, 0x2239e28
.word Function_223294c+1 @ =0x223294d, 0x2239e2c
.word Function_222fc48+1 @ =0x222fc49, 0x2239e30
.word Function_2231fe0+1 @ =0x2231fe1, 0x2239e34
.word Function_2231fe4+1 @ =0x2231fe5, 0x2239e38
.word Function_2231200+1 @ =0x2231201, 0x2239e3c
.word Function_222fb44+1 @ =0x222fb45, 0x2239e40
.word Function_2231fe8+1 @ =0x2231fe9, 0x2239e44
.word Function_222fbd0+1 @ =0x222fbd1, 0x2239e48
@ 0x2239e4c


.incbin "./baserom/overlay/overlay_0065.bin", 0xc16c, 0x2239e60 - 0x2239e4c


@end 0x2239e60




