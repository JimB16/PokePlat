
.include "source/macros_asm.s"
.include "source/arm9_ram_2.s"


/*
0x32d000 in arm9.bin

strange: Function_2267a2e
*/

.section .iwram70, "ax"


.thumb
Function_225c700: @ 225c700 :thumb
	mov     r3, #0x0
	ldsh    r2, [r0, r3]
	lsl     r2, r2, #12
	str     r2, [r1, #0x0]
	mov     r2, #0x2
	ldsh    r0, [r0, r2]
	lsl     r0, r0, #12
	str     r0, [r1, #0x8]
	str     r3, [r1, #0x4]
	bx      lr
@ 0x225c714


.thumb
Function_225c714: @ 225c714 :thumb
	ldr     r3, [r0, #0x0]
	asr     r2, r3, #11
	lsr     r2, r2, #20
	add     r2, r3, r2
	asr     r2, r2, #12
	strh    r2, [r1, #0x0]
	ldr     r2, [r0, #0x8]
	asr     r0, r2, #11
	lsr     r0, r0, #20
	add     r0, r2, r0
	asr     r0, r0, #12
	strh    r0, [r1, #0x2]
	bx      lr
@ 0x225c72e


.align 2, 0
.thumb
Function_225c730: @ 225c730 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r1
	mov     r1, r2
	mov     r2, #0x0
	mov     r7, r3
	bl      Function_200723c
	mov     r4, r0
	blx     Function_20b3c1c_GetTexOffsets
	mov     r6, r0
	bl      Function_201cbcc
	mov     r0, r6
	add     r1, sp, #0xc
	add     r2, sp, #0x8
	blx     Function_20ae9b8
	mov     r0, r6
	blx     Function_20aea70
	str     r0, [sp, #0x4]
	mov     r0, r4
	bl      Call_Function_2023084_GetTexDataOffset
	mov     r6, r0
	mov     r0, r7
	mov     r1, r6
	bl      malloc
	str     r0, [r5, #0x0]
	mov     r1, r4
	mov     r2, r6
	blx     CopyDataInByteSteps
	ldr     r0, [r5, #0x0]
	blx     Function_20b3c1c_GetTexOffsets
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x8]
	mov     r5, r0
	blx     Function_20ae8ec
	ldr     r1, [sp, #0x4]
	mov     r0, r5
	blx     Function_20aea18
	mov     r0, r4
	bl      free
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x225c7a0

.thumb
Function_225c7a0: @ 225c7a0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x60
	mov     r5, r1
	mov     r4, r0
	mov     r0, r5
	add     r1, sp, #0x54
	add     r2, sp, #0x58
	add     r3, sp, #0x5c
	bl      Function_2017358
	mov     r0, r5
	add     r1, sp, #0x48
	add     r2, sp, #0x4c
	add     r3, sp, #0x50
	bl      Function_2017374
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2017394
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2017394
	mov     r7, r0
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_2017394
	mov     r5, r0
	add     r0, sp, #0x24
	blx     MTX_Identity33_
	asr     r0, r6, #4
	lsl     r3, r0, #1
	lsl     r1, r3, #1
	ldr     r2, [pc, #0x68] @ 0x225c854, (=Unknown_20f983c)
	.hword  0x1c5b @ add r3, r3, #0x1
	lsl     r3, r3, #1
	ldsh    r1, [r2, r1]
	ldsh    r2, [r2, r3]
	add     r0, sp, #0x0
	bl      MTX_RotX33_
	add     r1, sp, #0x24
	add     r0, sp, #0x0
	mov     r2, r1
	blx     MTX_Concat33
	asr     r0, r5, #4
	lsl     r2, r0, #1
	lsl     r1, r2, #1
	ldr     r3, [pc, #0x48] @ 0x225c854, (=Unknown_20f983c)
	.hword  0x1c52 @ add r2, r2, #0x1
	lsl     r2, r2, #1
	ldsh    r1, [r3, r1]
	ldsh    r2, [r3, r2]
	add     r0, sp, #0x0
	bl      MTX_RotZ33_
	add     r1, sp, #0x24
	add     r0, sp, #0x0
	mov     r2, r1
	blx     MTX_Concat33
	asr     r0, r7, #4
	lsl     r2, r0, #1
	lsl     r1, r2, #1
	ldr     r3, [pc, #0x28] @ 0x225c854, (=Unknown_20f983c)
	.hword  0x1c52 @ add r2, r2, #0x1
	lsl     r2, r2, #1
	ldsh    r1, [r3, r1]
	ldsh    r2, [r3, r2]
	add     r0, sp, #0x0
	bl      MTX_RotY33_
	add     r1, sp, #0x24
	add     r0, sp, #0x0
	mov     r2, r1
	blx     MTX_Concat33
	ldr     r0, [r4, #0x8]
	add     r1, sp, #0x54
	add     r2, sp, #0x24
	add     r3, sp, #0x48
	bl      Function_201ced8
	add     sp, #0x60
	pop     {r3-r7,pc}
@ 0x225c854

.word Unknown_20f983c @ 0x225c854
.thumb
Function_225c858: @ 225c858 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r1, #0x4
	bl      malloc
	mov     r4, r0
	mov     r0, #0x23
	mov     r1, #0x2a
	mov     r2, r5
	bl      0x222bce8
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0xae
	mov     r2, r1
	mov     r3, r5
	bl      Function_2006fe8_LoadFromNARC_UncompressLZ8
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	mov     r1, r5
	bl      0x222bd50
	mov     r0, r5
	bl      free
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x225c894

.thumb
Function_225c894: @ 225c894 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      0x222bd30
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x225c8a6


.align 2, 0


.thumb
Function_225c8a8: @ 225c8a8 :thumb
	mov     r0, #0x23
	bx      lr
@ 0x225c8ac

.thumb
Function_225c8ac: @ 225c8ac :thumb
	ldr     r3, [pc, #0x4] @ 0x225c8b4, (=0x222bdad)
	ldr     r0, [r0, #0x0]
	bx      r3
@ 0x225c8b2


.align 2


.word 0x222bdad @ 0x225c8b4
.thumb
Function_225c8b8: @ 225c8b8 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	bl      0x222bde4
	lsr     r0, r0, #15
	pop     {r3,pc}
@ 0x225c8c4

.thumb
Function_225c8c4: @ 225c8c4 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	bl      0x222bde4
	ldr     r1, [pc, #0x4] @ 0x225c8d4, (=0x7fff)
	and     r0, r1
	pop     {r3,pc}
@ 0x225c8d2


.align 2


.word 0x7fff @ 0x225c8d4
.thumb
Function_225c8d8: @ 225c8d8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, #0x0
	ldr     r7, [sp, #0x28]
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	str     r2, [sp, #0x8]
	str     r3, [sp, #0xc]
	str     r5, [sp, #0x10]
.thumb
branch_225c8ea: @ 225c8ea :thumb
	ldr     r0, [sp, #0x10]
	mov     r4, #0x0
	lsl     r0, r0, #16
	lsr     r6, r0, #16
.thumb
branch_225c8f2: @ 225c8f2 :thumb
	lsl     r1, r4, #16
	ldr     r0, [sp, #0x0]
	lsr     r1, r1, #16
	mov     r2, r6
	bl      Function_225c8b8
	ldr     r1, [sp, #0x4]
	cmp     r0, r1
	bne     branch_225c91a
	cmp     r5, r7
	bcc     branch_225c918
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x10]
	strh    r4, [r0, #0x0]
	ldr     r0, [sp, #0xc]
	add     sp, #0x14
	strh    r1, [r0, #0x0]
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x225c918

.thumb
branch_225c918: @ 225c918 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_225c91a: @ 225c91a :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x23
	blt     branch_225c8f2
	ldr     r0, [sp, #0x10]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x10]
	cmp     r0, #0x2a
	blt     branch_225c8ea
	mov     r0, #0x0
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x225c930

.thumb
Function_225c930: @ 225c930 :thumb
	ldr     r3, [pc, #0x18] @ 0x225c94c, (=0x226d4dc)
	mov     r2, #0x0
.thumb
branch_225c934: @ 225c934 :thumb
	ldrb    r1, [r3, #0x0]
	cmp     r0, r1
	bne     branch_225c93e
	mov     r0, #0x1
	bx      lr
@ 0x225c93e

.thumb
branch_225c93e: @ 225c93e :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c5b @ add r3, r3, #0x1
	cmp     r2, #0x20
	bcc     branch_225c934
	mov     r0, #0x0
	bx      lr
@ 0x225c94a

.align 2
.word 0x226d4dc @ 0x225c94c



.thumb
Function_225c950: @ 225c950 :thumb
	ldr     r3, [pc, #0x18] @ 0x225c96c, (=Unknown_226d4cc)
	mov     r2, #0x0
branch_225c954: @ 225c954 :thumb
	ldrb    r1, [r3, #0x0]
	cmp     r0, r1
	bne     branch_225c95e
	mov     r0, #0x1
	bx      lr

branch_225c95e: @ 225c95e :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c5b @ add r3, r3, #0x1
	cmp     r2, #0x3
	bcc     branch_225c954
	mov     r0, #0x0
	bx      lr
@ 0x225c96a

.align 2
.word Unknown_226d4cc @ 0x225c96c



.thumb
Function_225c970: @ 225c970 :thumb
	ldr     r3, [pc, #0x18] @ 0x225c98c, (=0x226d4d4)
	mov     r2, #0x0
branch_225c974: @ 225c974 :thumb
	ldrb    r1, [r3, #0x0]
	cmp     r0, r1
	bne     branch_225c97e
	mov     r0, #0x1
	bx      lr
@ 0x225c97e

.thumb
branch_225c97e: @ 225c97e :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c5b @ add r3, r3, #0x1
	cmp     r2, #0x7
	bcc     branch_225c974
	mov     r0, #0x0
	bx      lr
@ 0x225c98a


.align 2


.word 0x226d4d4 @ 0x225c98c
.thumb
Function_225c990: @ 225c990 :thumb
	ldr     r3, [pc, #0x18] @ 0x225c9ac, (=0x226d4d0)
	mov     r2, #0x0
.thumb
branch_225c994: @ 225c994 :thumb
	ldrb    r1, [r3, #0x0]
	cmp     r0, r1
	bne     branch_225c99e
	mov     r0, #0x1
	bx      lr
@ 0x225c99e

.thumb
branch_225c99e: @ 225c99e :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c5b @ add r3, r3, #0x1
	cmp     r2, #0x4
	bcc     branch_225c994
	mov     r0, #0x0
	bx      lr
@ 0x225c9aa


.align 2


.word 0x226d4d0 @ 0x225c9ac
.thumb
Function_225c9b0: @ 225c9b0 :thumb
	ldr     r0, [r0, #0x0]
	bx      lr
@ 0x225c9b4

.thumb
Function_225c9b4: @ 225c9b4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r6, r1
	mov     r0, r3
	mov     r1, #0x28
	str     r2, [sp, #0x0]
	str     r3, [sp, #0x4]
	bl      malloc
	mov     r1, #0x0
	mov     r2, #0x28
	mov     r4, r0
	blx     Call_FillMemWithValue
	ldr     r1, [sp, #0x4]
	mov     r0, r5
	bl      0x222be18
	str     r0, [r4, #0x0]
	ldr     r2, [sp, #0x4]
	ldr     r3, [sp, #0x20]
	mov     r0, r5
	mov     r1, r6
	bl      0x22343a8
	str     r0, [r4, #0x4]
	ldr     r1, [sp, #0x4]
	mov     r0, #0x20
	bl      0x222d848
	str     r0, [r4, #0x10]
	mov     r0, #0x28
	mov     r7, r5
	mul     r7, r0
	ldr     r0, [sp, #0x4]
	mov     r1, r7
	strh    r5, [r4, #0xc]
	bl      malloc
	mov     r1, #0x0
	mov     r2, r7
	str     r0, [r4, #0x8]
	blx     Call_FillMemWithValue
	ldr     r0, [sp, #0x0]
	str     r0, [r4, #0x14]
	mov     r0, r4
	strh    r6, [r4, #0xe]
	bl      Function_225d0d8
	mov     r0, r4
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x225ca20

.thumb
Function_225ca20: @ 225ca20 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	bl      free
	ldr     r0, [r4, #0x10]
	bl      0x222d880
	ldr     r0, [r4, #0x4]
	bl      0x2234548
	ldr     r0, [r4, #0x0]
	bl      0x222be58
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x225ca44

.thumb
Function_225ca44: @ 225ca44 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      0x222be84
	mov     r0, r4
	ldr     r1, [r4, #0x4]
	add     r0, #0x18
	bl      Function_225d954
	pop     {r4,pc}
@ 0x225ca5a


.align 2, 0


.thumb
Function_225ca5c: @ 225ca5c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldrh    r0, [r5, #0xc]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_225ca8c
	mov     r4, r6
.thumb
branch_225ca6c: @ 225ca6c :thumb
	ldr     r0, [r5, #0x8]
	add     r0, r0, r4
	bl      Function_225d2fc
	cmp     r0, #0x0
	bne     branch_225ca82
	ldr     r0, [r5, #0x8]
	mov     r1, r5
	add     r0, r0, r4
	ldr     r2, [r0, #0x24]
	blx     r2
.thumb
branch_225ca82: @ 225ca82 :thumb
	ldrh    r0, [r5, #0xc]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x28
	cmp     r6, r0
	blt     branch_225ca6c
.thumb
branch_225ca8c: @ 225ca8c :thumb
	ldr     r0, [r5, #0x14]
	bl      Function_225c9b0
	mov     r4, r0
	ldr     r0, [r5, #0x10]
	add     r1, sp, #0x8
	bl      0x222d8d0
	cmp     r0, #0x1
	bne     branch_225cac8
	add     r7, sp, #0x0
	add     r6, sp, #0x8
.thumb
branch_225caa4: @ 225caa4 :thumb
	ldr     r1, [r5, #0x0]
	mov     r0, r4
	mov     r2, r6
	mov     r3, r7
	bl      0x222ca88
	cmp     r0, #0x1
	bne     branch_225cabc
	ldr     r0, [r5, #0x0]
	mov     r1, r7
	bl      0x222be70
.thumb
branch_225cabc: @ 225cabc :thumb
	ldr     r0, [r5, #0x10]
	mov     r1, r6
	bl      0x222d8d0
	cmp     r0, #0x1
	beq     branch_225caa4
.thumb
branch_225cac8: @ 225cac8 :thumb
	ldr     r0, [r5, #0x4]
	bl      0x2234590
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x225cad2


.align 2, 0


.thumb
Function_225cad4: @ 225cad4 :thumb
	ldr     r3, [pc, #0x4] @ 0x225cadc, (=0x22345c5)
	ldr     r0, [r0, #0x4]
	bx      r3
@ 0x225cada


.align 2


.word 0x22345c5 @ 0x225cadc
.thumb
Function_225cae0: @ 225cae0 :thumb
	ldr     r3, [pc, #0x4] @ 0x225cae8, (=0x2234605)
	ldr     r0, [r0, #0x4]
	bx      r3
@ 0x225cae6


.align 2


.word 0x2234605 @ 0x225cae8
.thumb
Function_225caec: @ 225caec :thumb
	mov     r3, r0
	mov     r2, r1
	ldr     r1, [r3, #0x4]
	lsl     r3, r2, #2
	ldr     r2, [pc, #0x8] @ 0x225cb00, (=0x226d518)
	add     r0, #0x18
	ldr     r2, [r2, r3]
	ldr     r3, [pc, #0x8] @ 0x225cb04, (=0x225d921)
	bx      r3
@ 0x225cafe


.align 2


.word 0x226d518 @ 0x225cb00
.word Function_225d920+1 @ =0x225d921, 0x225cb04
.thumb
Function_225cb08: @ 225cb08 :thumb
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x8] @ 0x225cb14, (=0x226d518)
	ldr     r3, [pc, #0x8] @ 0x225cb18, (=0x225d93d)
	add     r0, #0x18
	ldr     r1, [r1, r2]
	bx      r3
@ 0x225cb14

.word 0x226d518 @ 0x225cb14
.word Function_225d93c+1 @ =0x225d93d, 0x225cb18
.thumb
Function_225cb1c: @ 225cb1c :thumb
	ldr     r3, [pc, #0x4] @ 0x225cb24, (=0x222d895)
	ldr     r0, [r0, #0x10]
	bx      r3
@ 0x225cb22


.align 2


.word 0x222d895 @ 0x225cb24
.thumb
Function_225cb28: @ 225cb28 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	add     r2, sp, #0x4
	mov     r4, r1
	ldr     r0, [r5, #0x14]
	mov     r1, #0x3
	add     r2, #0x2
	add     r3, sp, #0x4
	bl      Function_225c8d8
	cmp     r0, #0x0
	bne     branch_225cb4a
	bl      ErrorHandling
.thumb
branch_225cb4a: @ 225cb4a :thumb
	add     r3, sp, #0x4
	ldrh    r2, [r3, #0x2]
	ldrh    r3, [r3, #0x0]
	mov     r0, r5
	mov     r1, r4
	bl      Function_225cb5c
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x225cb5c

.thumb
Function_225cb5c: @ 225cb5c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r7, r2
	mov     r5, r0
	mov     r6, r1
	str     r3, [sp, #0x0]
	bl      Function_225d2c0
	mov     r4, r0
	lsl     r0, r7, #4
	add     r1, sp, #0x4
	strh    r0, [r1, #0x0]
	ldr     r0, [sp, #0x0]
	mov     r2, #0x0
	lsl     r0, r0, #4
	strh    r0, [r1, #0x2]
	strh    r6, [r1, #0x4]
	strh    r2, [r1, #0x6]
	strh    r2, [r1, #0x8]
	ldrh    r0, [r5, #0xe]
	cmp     r0, #0x0
	bne     branch_225cb8c
	strh    r2, [r1, #0xa]
	b       branch_225cb90
@ 0x225cb8c

.thumb
branch_225cb8c: @ 225cb8c :thumb
	mov     r0, #0x61
	strh    r0, [r1, #0xa]
.thumb
branch_225cb90: @ 225cb90 :thumb
	ldr     r0, [r5, #0x0]
	add     r1, sp, #0x4
	bl      0x222bec0
	str     r0, [r4, #0x0]
	ldr     r0, [r5, #0x4]
	ldr     r1, [r4, #0x0]
	bl      0x223461c
	str     r0, [r4, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x0
	str     r4, [r5, #0x20]
	bl      Function_225cdec
	mov     r0, r4
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x225cbb6


.align 2, 0


.thumb
Function_225cbb8: @ 225cbb8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0
	mov     r7, r1
	str     r2, [sp, #0x4]
	bl      Function_225d2c0
	mov     r6, #0x0
	str     r0, [sp, #0x8]
	mov     r4, r6
.thumb
branch_225cbcc: @ 225cbcc :thumb
	str     r4, [sp, #0x0]
	add     r2, sp, #0xc
	ldr     r0, [r5, #0x14]
	add     r1, r7, #0x4
	add     r2, #0x2
	add     r3, sp, #0xc
	bl      Function_225c8d8
	cmp     r0, #0x0
	bne     branch_225cbe6
	add     sp, #0x1c
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x225cbe6

.thumb
branch_225cbe6: @ 225cbe6 :thumb
	mov     r0, r5
	bl      Function_225ccac
	cmp     r0, #0x0
	bne     branch_225cbf4
	mov     r6, #0x1
	b       branch_225cc06
@ 0x225cbf4

.thumb
branch_225cbf4: @ 225cbf4 :thumb
	add     r1, sp, #0xc
	add     r2, sp, #0xc
	ldrh    r1, [r1, #0x2]
	ldrh    r2, [r2, #0x0]
	bl      Function_225cedc
	cmp     r0, #0x0
	bne     branch_225cc06
	mov     r6, #0x1
.thumb
branch_225cc06: @ 225cc06 :thumb
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r6, #0x0
	beq     branch_225cbcc
	add     r1, sp, #0xc
	ldrh    r0, [r1, #0x2]
	lsl     r0, r0, #4
	strh    r0, [r1, #0x4]
	ldrh    r0, [r1, #0x0]
	lsl     r0, r0, #4
	strh    r0, [r1, #0x6]
	strh    r7, [r1, #0x8]
	mov     r0, #0x0
	strh    r0, [r1, #0xa]
	mov     r0, #0x1
	strh    r0, [r1, #0xc]
	ldr     r0, [sp, #0x4]
	strh    r0, [r1, #0xe]
	ldr     r0, [r5, #0x0]
	add     r1, sp, #0x10
	bl      0x222bec0
	ldr     r1, [sp, #0x8]
	str     r0, [r1, #0x0]
	ldr     r0, [r5, #0x4]
	ldr     r1, [r1, #0x0]
	bl      0x223461c
	ldr     r1, [sp, #0x8]
	mov     r2, #0x0
	str     r0, [r1, #0x4]
	mov     r0, r5
	bl      Function_225cdec
	ldr     r0, [sp, #0x8]
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x225cc52


.align 2, 0


.thumb
Function_225cc54: @ 225cc54 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	bl      0x2234798
	ldr     r0, [r4, #0x0]
	bl      0x222bf08
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x28
	blx     Call_FillMemWithValue
	pop     {r4,pc}
@ 0x225cc70

.thumb
Function_225cc70: @ 225cc70 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldrh    r0, [r5, #0xc]
	mov     r7, r1
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_225cca6
	mov     r4, r6
.thumb
branch_225cc80: @ 225cc80 :thumb
	ldr     r0, [r5, #0x8]
	ldr     r0, [r0, r4]
	cmp     r0, #0x0
	beq     branch_225cc9c
	mov     r1, #0x4
	bl      Function_63_222bf90
	cmp     r0, r7
	bne     branch_225cc9c
	mov     r0, #0x28
	ldr     r1, [r5, #0x8]
	mul     r0, r6
	add     r0, r1, r0
	pop     {r3-r7,pc}
@ 0x225cc9c

.thumb
branch_225cc9c: @ 225cc9c :thumb
	ldrh    r0, [r5, #0xc]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x28
	cmp     r6, r0
	blt     branch_225cc80
.thumb
branch_225cca6: @ 225cca6 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x225ccaa


.align 2, 0


.thumb
Function_225ccac: @ 225ccac :thumb
	ldr     r0, [r0, #0x20]
	bx      lr
@ 0x225ccb0

.thumb
Function_225ccb0: @ 225ccb0 :thumb
	ldr     r0, [r0, #0x24]
	bx      lr
@ 0x225ccb4

.thumb
Function_225ccb4: @ 225ccb4 :thumb
	push    {r0-r3}
.thumb
Function_225ccb6: @ 225ccb6 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_225ccc4
	bl      ErrorHandling
.thumb
branch_225ccc4: @ 225ccc4 :thumb
	add     r1, sp, #0x8
	ldrh    r2, [r1, #0x4]
	mov     r3, sp
	ldr     r0, [r4, #0x0]
	.hword  0x1f1b @ sub r3, r3, #0x4
	strh    r2, [r3, #0x0]
	ldrh    r1, [r1, #0x6]
	strh    r1, [r3, #0x2]
	ldr     r1, [r3, #0x0]
	bl      0x222c1a4
	add     r1, sp, #0x8
	mov     r3, sp
	ldrh    r2, [r1, #0x4]
	ldr     r0, [r4, #0x0]
	.hword  0x1f1b @ sub r3, r3, #0x4
	strh    r2, [r3, #0x0]
	ldrh    r1, [r1, #0x6]
	strh    r1, [r3, #0x2]
	ldr     r1, [r3, #0x0]
	bl      0x222c1b4
	ldr     r0, [r4, #0x0]
	mov     r1, #0x5
	mov     r2, #0x0
	bl      0x222c000
	pop     {r4}
	pop     {r3}
	add     sp, #0x10
	bx      r3
@ 0x225cd02


.align 2, 0


.thumb
Function_225cd04: @ 225cd04 :thumb
	push    {r0-r3}
.thumb
Function_225cd06: @ 225cd06 :thumb
	push    {r3-r5,lr}
	add     r1, sp, #0x10
	mov     r4, r2
	mov     r3, sp
	ldrh    r2, [r1, #0x4]
	.hword  0x1f1b @ sub r3, r3, #0x4
	mov     r5, r0
	strh    r2, [r3, #0x0]
	ldrh    r1, [r1, #0x6]
	strh    r1, [r3, #0x2]
	ldr     r1, [r3, #0x0]
	bl      Function_225ccb4
	ldr     r0, [r5, #0x0]
	mov     r1, #0x6
	mov     r2, r4
	bl      0x222c000
	pop     {r3-r5}
	pop     {r3}
	add     sp, #0x10
	bx      r3
@ 0x225cd32


.align 2, 0


.thumb
Function_225cd34: @ 225cd34 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_225cd44
	bl      ErrorHandling
.thumb
branch_225cd44: @ 225cd44 :thumb
	ldr     r0, [r4, #0x0]
	bl      0x222c0fc
	add     r1, sp, #0x0
	strh    r0, [r1, #0x0]
	lsr     r0, r0, #16
	strh    r0, [r1, #0x2]
	ldrh    r2, [r1, #0x2]
	ldrh    r0, [r1, #0x0]
	lsl     r1, r2, #16
	orr     r0, r1
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x225cd5e


.align 2, 0


.thumb
Function_225cd60: @ 225cd60 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	cmp     r0, #0x0
	bne     branch_225cd70
	bl      ErrorHandling
.thumb
branch_225cd70: @ 225cd70 :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	bl      Function_63_222bf90
	pop     {r3-r5,pc}
@ 0x225cd7a


.align 2, 0


.thumb
Function_225cd7c: @ 225cd7c :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x5
	mov     r6, r2
	mov     r7, r3
	bl      Function_63_222bf90
	cmp     r0, #0x0
	beq     branch_225cd96
	bl      ErrorHandling
.thumb
branch_225cd96: @ 225cd96 :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, #0x4
	bl      Function_63_222bf90
	mov     r3, r0
	mov     r0, r5
	mov     r1, r6
	mov     r2, r7
	bl      Function_225d17c
	pop     {r3-r7,pc}
@ 0x225cdac

.thumb
Function_225cdac: @ 225cdac :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	mov     r6, r2
	mov     r7, r3
	bl      0x222c0e4
	add     r1, sp, #0x0
	strh    r0, [r1, #0x0]
	lsr     r0, r0, #16
	strh    r0, [r1, #0x2]
	ldrh    r0, [r1, #0x0]
	strh    r0, [r1, #0x4]
	ldrh    r0, [r1, #0x2]
	strh    r0, [r1, #0x6]
	strh    r6, [r1, #0x8]
	strb    r7, [r1, #0xa]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x4
	bl      Function_63_222bf90
	add     r1, sp, #0x0
	strb    r0, [r1, #0xb]
	ldr     r0, [r5, #0x0]
	add     r1, sp, #0x4
	bl      0x222be70
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x225cdea


.align 2, 0


.thumb
Function_225cdec: @ 225cdec :thumb
	push    {r4-r6,lr}
	mov     r4, r2
	mov     r6, r0
	mov     r5, r1
	cmp     r4, #0xa
	blt     branch_225cdfc
	bl      ErrorHandling
.thumb
branch_225cdfc: @ 225cdfc :thumb
	ldrb    r0, [r5, #0xb]
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x2c] @ 0x225ce30, (=0x226d530)
	ldr     r2, [r0, r1]
	cmp     r2, #0x0
	beq     branch_225ce0e
	mov     r0, r5
	mov     r1, r6
	blx     r2
.thumb
branch_225ce0e: @ 225ce0e :thumb
	mov     r2, #0x0
	strh    r2, [r5, #0x8]
	strb    r2, [r5, #0xa]
	mov     r1, r5
	strb    r4, [r5, #0xb]
	add     r1, #0xc
	mov     r0, #0x18
.thumb
branch_225ce1c: @ 225ce1c :thumb
	strb    r2, [r1, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1e40 @ sub r0, r0, #0x1
	bne     branch_225ce1c
	ldr     r0, [pc, #0xc] @ 0x225ce34, (=0x226d558)
	lsl     r1, r4, #2
	ldr     r0, [r0, r1]
	str     r0, [r5, #0x24]
	pop     {r4-r6,pc}
@ 0x225ce2e


.align 2


.word 0x226d530 @ 0x225ce30
.word 0x226d558 @ 0x225ce34
.thumb
Function_225ce38: @ 225ce38 :thumb
	ldrb    r0, [r0, #0xa]
	bx      lr
@ 0x225ce3c

.thumb
Function_225ce3c: @ 225ce3c :thumb
	ldrb    r0, [r0, #0xb]
	bx      lr
@ 0x225ce40

.thumb
Function_225ce40: @ 225ce40 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x6
	bl      Function_63_222bf90
	mov     r2, r0
	ldr     r0, [r4, #0x0]
	ldr     r1, [r5, #0x0]
	bl      0x222c1c4
	cmp     r0, #0x0
	bne     branch_225ce60
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x225ce60

.thumb
branch_225ce60: @ 225ce60 :thumb
	mov     r1, #0x4
	bl      Function_63_222bf90
	mov     r1, r0
	mov     r0, r5
	bl      Function_225cc70
	pop     {r3-r5,pc}
@ 0x225ce70

.thumb
Function_225ce70: @ 225ce70 :thumb
	ldr     r3, [pc, #0x4] @ 0x225ce78, (=0x22347cd)
	ldr     r0, [r0, #0x4]
	bx      r3
@ 0x225ce76


.align 2


.word 0x22347cd @ 0x225ce78
.thumb
Function_225ce7c: @ 225ce7c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	lsl     r0, r1, #4
	add     r1, sp, #0x0
	strh    r0, [r1, #0x0]
	lsl     r0, r2, #4
	strh    r0, [r1, #0x2]
	mov     r3, sp
	ldrh    r2, [r1, #0x0]
	ldr     r0, [r4, #0x0]
	.hword  0x1f1b @ sub r3, r3, #0x4
	strh    r2, [r3, #0x0]
	ldrh    r1, [r1, #0x2]
	strh    r1, [r3, #0x2]
	ldr     r1, [r3, #0x0]
	bl      0x222c2ac
	cmp     r0, #0x0
	bne     branch_225ceaa
	add     sp, #0x4
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x225ceaa

.thumb
branch_225ceaa: @ 225ceaa :thumb
	ldrh    r2, [r4, #0xc]
	mov     r1, #0x0
	cmp     r2, #0x0
	ble     branch_225ced0
	ldr     r3, [r4, #0x8]
.thumb
branch_225ceb4: @ 225ceb4 :thumb
	ldr     r2, [r3, #0x0]
	cmp     r2, r0
	bne     branch_225cec6
	mov     r0, #0x28
	ldr     r2, [r4, #0x8]
	mul     r0, r1
	add     sp, #0x4
	add     r0, r2, r0
	pop     {r3,r4,pc}
@ 0x225cec6

.thumb
branch_225cec6: @ 225cec6 :thumb
	ldrh    r2, [r4, #0xc]
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r3, #0x28
	cmp     r1, r2
	blt     branch_225ceb4
.thumb
branch_225ced0: @ 225ced0 :thumb
	bl      ErrorHandling
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x225ceda


.align 2, 0


.thumb
Function_225cedc: @ 225cedc :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r6, r1
	mov     r4, r2
	bl      0x222c0e4
	add     r1, sp, #0x0
	strh    r0, [r1, #0x4]
	lsr     r0, r0, #16
	strh    r0, [r1, #0x6]
	ldrh    r0, [r1, #0x4]
	strh    r0, [r1, #0xc]
	ldrh    r0, [r1, #0x6]
	strh    r0, [r1, #0xe]
	ldr     r0, [r5, #0x0]
	bl      0x222c0f0
	add     r2, sp, #0x0
	strh    r0, [r2, #0x0]
	lsr     r0, r0, #16
	strh    r0, [r2, #0x2]
	ldrh    r0, [r2, #0x0]
	mov     r1, #0xc
	strh    r0, [r2, #0x8]
	ldrh    r0, [r2, #0x2]
	strh    r0, [r2, #0xa]
	ldsh    r1, [r2, r1]
	lsl     r0, r6, #4
	cmp     r1, r0
	bne     branch_225cf2c
	mov     r1, #0xe
	ldsh    r2, [r2, r1]
	lsl     r1, r4, #4
	cmp     r2, r1
	bne     branch_225cf2c
	add     sp, #0x10
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x225cf2c

.thumb
branch_225cf2c: @ 225cf2c :thumb
	add     r2, sp, #0x0
	mov     r1, #0x8
	ldsh    r1, [r2, r1]
	cmp     r1, r0
	bne     branch_225cf46
	mov     r0, #0xa
	ldsh    r1, [r2, r0]
	lsl     r0, r4, #4
	cmp     r1, r0
	bne     branch_225cf46
	add     sp, #0x10
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x225cf46

.thumb
branch_225cf46: @ 225cf46 :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x225cf4c

.thumb
Function_225cf4c: @ 225cf4c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x2c
	mov     r6, r0
	ldr     r0, [r1, #0x0]
	str     r2, [sp, #0x0]
	str     r3, [sp, #0x4]
	bl      0x222c0e4
	add     r4, sp, #0x1c
	strh    r0, [r4, #0x4]
	lsr     r0, r0, #16
	strh    r0, [r4, #0x6]
	ldrh    r0, [r4, #0x4]
	mov     r5, sp
	ldr     r7, [pc, #0xc0] @ 0x225d02c, (=0x226d504)
	strh    r0, [r4, #0xc]
	ldrh    r0, [r4, #0x6]
	.hword  0x1f2d @ sub r5, r5, #0x4
	strh    r0, [r4, #0xe]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	ldrh    r0, [r4, #0xc]
	str     r0, [sp, #0x14]
	ldrh    r0, [r4, #0xe]
	str     r0, [sp, #0x18]
.thumb
branch_225cf7e: @ 225cf7e :thumb
	ldr     r0, [sp, #0x14]
	strh    r0, [r5, #0x0]
	ldr     r0, [sp, #0x18]
	strh    r0, [r5, #0x2]
	ldrb    r1, [r7, #0x0]
	ldr     r0, [r5, #0x0]
	bl      0x222c078
	strh    r0, [r4, #0x0]
	lsr     r0, r0, #16
	strh    r0, [r4, #0x2]
	ldrh    r0, [r4, #0x0]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r4, #0x2]
	strh    r0, [r4, #0xa]
	mov     r0, #0xa
	ldsh    r1, [r4, r0]
	asr     r0, r1, #3
	lsr     r0, r0, #28
	add     r0, r1, r0
	asr     r0, r0, #4
	str     r0, [sp, #0xc]
	mov     r0, #0x8
	ldsh    r1, [r4, r0]
	ldr     r2, [sp, #0xc]
	asr     r0, r1, #3
	lsr     r0, r0, #28
	add     r0, r1, r0
	asr     r0, r0, #4
	str     r0, [sp, #0x8]
	ldr     r1, [sp, #0x8]
	lsl     r2, r2, #16
	lsl     r1, r1, #16
	ldr     r0, [r6, #0x14]
	lsr     r1, r1, #16
	lsr     r2, r2, #16
	bl      Function_225c8ac
	cmp     r0, #0x1
	beq     branch_225d018
	ldr     r1, [sp, #0x8]
	ldr     r2, [sp, #0xc]
	lsl     r1, r1, #16
	lsl     r2, r2, #16
	ldr     r0, [r6, #0x14]
	lsr     r1, r1, #16
	lsr     r2, r2, #16
	bl      Function_225c8c4
	cmp     r0, #0x0
	beq     branch_225cfe8
	cmp     r0, #0x2a
	bne     branch_225d018
.thumb
branch_225cfe8: @ 225cfe8 :thumb
	ldrh    r1, [r4, #0x8]
	ldr     r0, [r6, #0x0]
	strh    r1, [r5, #0x0]
	ldrh    r1, [r4, #0xa]
	strh    r1, [r5, #0x2]
	ldr     r1, [r5, #0x0]
	bl      0x222c2ac
	cmp     r0, #0x0
	bne     branch_225d018
	ldr     r1, [pc, #0x2c] @ 0x225d02c, (=0x226d504)
	ldr     r0, [sp, #0x10]
	ldrb    r1, [r1, r0]
	ldr     r0, [sp, #0x0]
	str     r1, [r0, #0x0]
	add     r1, sp, #0x1c
	ldr     r0, [sp, #0x4]
	ldrh    r2, [r1, #0x8]
	add     sp, #0x2c
	strh    r2, [r0, #0x0]
	ldrh    r1, [r1, #0xa]
	strh    r1, [r0, #0x2]
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x225d018

.thumb
branch_225d018: @ 225d018 :thumb
	ldr     r0, [sp, #0x10]
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x10]
	cmp     r0, #0x4
	blt     branch_225cf7e
	mov     r0, #0x0
	add     sp, #0x2c
	pop     {r4-r7,pc}
@ 0x225d02a


.align 2


.word 0x226d504 @ 0x225d02c
.thumb
Function_225d030: @ 225d030 :thumb
	ldr     r3, [pc, #0x4] @ 0x225d038, (=0x22347b1)
	ldr     r0, [r0, #0x4]
	bx      r3
@ 0x225d036


.align 2


.word 0x22347b1 @ 0x225d038
.thumb
Function_225d03c: @ 225d03c :thumb
	ldr     r3, [pc, #0x4] @ 0x225d044, (=0x22347d5)
	ldr     r0, [r0, #0x4]
	bx      r3
@ 0x225d042


.align 2


.word 0x22347d5 @ 0x225d044
.thumb
Function_225d048: @ 225d048 :thumb
	ldr     r3, [pc, #0x4] @ 0x225d050, (=0x22347f9)
	ldr     r0, [r0, #0x4]
	bx      r3
@ 0x225d04e


.align 2


.word 0x22347f9 @ 0x225d050
.thumb
Function_225d054: @ 225d054 :thumb
	ldr     r3, [pc, #0x4] @ 0x225d05c, (=0x223481d)
	ldr     r0, [r0, #0x4]
	bx      r3
@ 0x225d05a


.align 2


.word 0x223481d @ 0x225d05c
.thumb
Function_225d060: @ 225d060 :thumb
	ldr     r3, [pc, #0x4] @ 0x225d068, (=0x2234835)
	ldr     r0, [r0, #0x4]
	bx      r3
@ 0x225d066


.align 2


.word 0x2234835 @ 0x225d068
.thumb
Function_225d06c: @ 225d06c :thumb
	push    {r3,lr}
	cmp     r1, #0x0
	ldr     r0, [r0, #0x4]
	beq     branch_225d07c
	mov     r1, #0x1
	bl      0x2234850
	pop     {r3,pc}
@ 0x225d07c

.thumb
branch_225d07c: @ 225d07c :thumb
	bl      0x223487c
	pop     {r3,pc}
@ 0x225d082


.align 2, 0


.thumb
Function_225d084: @ 225d084 :thumb
	push    {r3,lr}
	cmp     r1, #0x0
	ldr     r0, [r0, #0x4]
	beq     branch_225d094
	mov     r1, #0x0
	bl      0x2234850
	pop     {r3,pc}
@ 0x225d094

.thumb
branch_225d094: @ 225d094 :thumb
	bl      0x223487c
	pop     {r3,pc}
@ 0x225d09a


.align 2, 0


.thumb
Function_225d09c: @ 225d09c :thumb
	push    {r3,lr}
	cmp     r1, #0x0
	ldr     r0, [r0, #0x4]
	beq     branch_225d0ac
	mov     r1, #0x2
	bl      0x2234850
	pop     {r3,pc}
@ 0x225d0ac

.thumb
branch_225d0ac: @ 225d0ac :thumb
	bl      0x223487c
	pop     {r3,pc}
@ 0x225d0b2


.align 2, 0


.thumb
Function_225d0b4: @ 225d0b4 :thumb
	ldr     r3, [pc, #0x4] @ 0x225d0bc, (=0x22347c5)
	ldr     r0, [r0, #0x4]
	bx      r3
@ 0x225d0ba


.align 2


.word 0x22347c5 @ 0x225d0bc
.thumb
Function_225d0c0: @ 225d0c0 :thumb
	ldr     r3, [pc, #0x4] @ 0x225d0c8, (=0x223488d)
	ldr     r0, [r0, #0x4]
	bx      r3
@ 0x225d0c6


.align 2


.word 0x223488d @ 0x225d0c8
.thumb
Function_225d0cc: @ 225d0cc :thumb
	ldr     r3, [pc, #0x4] @ 0x225d0d4, (=0x22348a9)
	ldr     r0, [r0, #0x4]
	bx      r3
@ 0x225d0d2


.align 2


.word 0x22348a9 @ 0x225d0d4
.thumb
Function_225d0d8: @ 225d0d8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0
	mov     r0, #0x0
	ldr     r4, [pc, #0x94] @ 0x225d178, (=0x226d508)
	str     r0, [sp, #0x8]
.thumb
branch_225d0e4: @ 225d0e4 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x0]
	ldrb    r1, [r4, #0x0]
	add     r2, sp, #0xc
	ldr     r0, [r5, #0x14]
	add     r2, #0x2
	add     r3, sp, #0xc
	bl      Function_225c8d8
	cmp     r0, #0x1
	bne     branch_225d166
	add     r7, sp, #0xc
.thumb
branch_225d0fe: @ 225d0fe :thumb
	mov     r0, r5
	bl      Function_225d2c0
	mov     r6, r0
	ldrh    r0, [r7, #0x2]
	add     r1, sp, #0x10
	lsl     r0, r0, #4
	strh    r0, [r7, #0x4]
	ldrh    r0, [r7, #0x0]
	lsl     r0, r0, #4
	strh    r0, [r7, #0x6]
	ldrb    r0, [r4, #0x3]
	strh    r0, [r7, #0x8]
	mov     r0, #0x0
	strh    r0, [r7, #0xa]
	ldrb    r0, [r4, #0x1]
	strh    r0, [r7, #0xc]
	ldrb    r0, [r4, #0x2]
	strh    r0, [r7, #0xe]
	ldr     r0, [r5, #0x0]
	bl      0x222bec0
	mov     r1, r0
	str     r1, [r6, #0x0]
	ldr     r0, [r5, #0x4]
	bl      0x223461c
	str     r0, [r6, #0x4]
	mov     r0, r5
	mov     r1, r6
	mov     r2, #0x0
	bl      Function_225cdec
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x61
	bne     branch_225d148
	str     r6, [r5, #0x24]
.thumb
branch_225d148: @ 225d148 :thumb
	ldr     r0, [sp, #0x4]
	add     r2, sp, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x0]
	ldrb    r1, [r4, #0x0]
	ldr     r0, [r5, #0x14]
	add     r2, #0x2
	add     r3, sp, #0xc
	bl      Function_225c8d8
	cmp     r0, #0x1
	beq     branch_225d0fe
.thumb
branch_225d166: @ 225d166 :thumb
	ldr     r0, [sp, #0x8]
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x8]
	cmp     r0, #0x4
	bcc     branch_225d0e4
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x225d176


.align 2


.word 0x226d508 @ 0x225d178
.thumb
Function_225d17c: @ 225d17c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	add     r4, sp, #0x0
	strh    r1, [r4, #0x0]
	strb    r2, [r4, #0x2]
	add     r1, sp, #0x0
	strb    r3, [r4, #0x3]
	bl      Function_225cb1c
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x225d192


.align 2, 0


.thumb
Function_225d194: @ 225d194 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	bl      Function_201d35c
	mov     r1, r4
	blx     _u32_div_f
	ldrb    r0, [r5, r1]
	pop     {r3-r5,pc}
@ 0x225d1a8

.thumb
Function_225d1a8: @ 225d1a8 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r0, [r1, #0x0]
	mov     r6, r2
	mov     r4, r3
	bl      0x222c0e4
	add     r1, sp, #0x0
	strh    r0, [r1, #0x4]
	lsr     r0, r0, #16
	strh    r0, [r1, #0x6]
	ldrh    r0, [r1, #0x4]
	mov     r2, sp
	.hword  0x1f12 @ sub r2, r2, #0x4
	strh    r0, [r1, #0xc]
	ldrh    r0, [r1, #0x6]
	strh    r0, [r1, #0xe]
	ldrh    r0, [r1, #0xc]
	strh    r0, [r2, #0x0]
	ldrh    r0, [r1, #0xe]
	mov     r1, r6
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
	ldr     r0, [r5, #0x14]
	asr     r1, r3, #3
	lsr     r1, r1, #28
	add     r1, r3, r1
	mov     r3, #0xa
	ldsh    r3, [r2, r3]
	lsl     r1, r1, #12
	lsr     r1, r1, #16
	asr     r2, r3, #3
	lsr     r2, r2, #28
	add     r2, r3, r2
	lsl     r2, r2, #12
	lsr     r2, r2, #16
	bl      Function_225c8b8
	cmp     r0, r4
	bne     branch_225d218
	add     sp, #0x10
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x225d218

.thumb
branch_225d218: @ 225d218 :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x225d21e


.align 2, 0


.thumb
Function_225d220: @ 225d220 :thumb
	str     r1, [r0, #0x0]
	str     r1, [r0, #0x4]
	sub     r1, r2, r1
	str     r1, [r0, #0x8]
	str     r3, [r0, #0xc]
	bx      lr
@ 0x225d22c

.thumb
Function_225d22c: @ 225d22c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	ldr     r6, [r5, #0x8]
	beq     branch_225d248
	lsl     r0, r4, #12
	blx     _ffltu
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_225d256
@ 0x225d248

.thumb
branch_225d248: @ 225d248 :thumb
	lsl     r0, r4, #12
	blx     _ffltu
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
.thumb
branch_225d256: @ 225d256 :thumb
	blx     _ffix
	mov     r2, r0
	asr     r1, r6, #31
	mov     r0, r6
	asr     r3, r2, #31
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r6, r2, #12
	orr     r6, r0
	ldr     r0, [r5, #0xc]
	cmp     r0, #0x0
	beq     branch_225d28e
	lsl     r0, r0, #12
	blx     _ffltu
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_225d29c
@ 0x225d28e

.thumb
branch_225d28e: @ 225d28e :thumb
	lsl     r0, r0, #12
	blx     _ffltu
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
branch_225d29c: @ 225d29c :thumb
	blx     _ffix
	mov     r1, r0
	mov     r0, r6
	blx     FX_Div
	ldr     r1, [r5, #0x4]
	add     r0, r0, r1
	str     r0, [r5, #0x0]
	ldr     r0, [r5, #0xc]
	cmp     r4, r0
	bcc     branch_225d2b8
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x225d2b8

.thumb
branch_225d2b8: @ 225d2b8 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x225d2bc

.thumb
Function_225d2bc: @ 225d2bc :thumb
	ldr     r0, [r0, #0x0]
	bx      lr
@ 0x225d2c0

.thumb
Function_225d2c0: @ 225d2c0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldrh    r0, [r5, #0xc]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_225d2ee
	mov     r4, r6
.thumb
branch_225d2ce: @ 225d2ce :thumb
	ldr     r0, [r5, #0x8]
	add     r0, r0, r4
	bl      Function_225d2fc
	cmp     r0, #0x0
	beq     branch_225d2e4
	mov     r0, #0x28
	ldr     r1, [r5, #0x8]
	mul     r0, r6
	add     r0, r1, r0
	pop     {r4-r6,pc}
@ 0x225d2e4

.thumb
branch_225d2e4: @ 225d2e4 :thumb
	ldrh    r0, [r5, #0xc]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x28
	cmp     r6, r0
	blt     branch_225d2ce
.thumb
branch_225d2ee: @ 225d2ee :thumb
	bl      ErrorHandling
	mov     r0, #0x28
	ldr     r1, [r5, #0x8]
	mul     r0, r6
	add     r0, r1, r0
	pop     {r4-r6,pc}
@ 0x225d2fc

.thumb
Function_225d2fc: @ 225d2fc :thumb
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_225d306
	mov     r0, #0x1
	bx      lr
@ 0x225d306

.thumb
branch_225d306: @ 225d306 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x225d30a


.align 2, 0


.thumb
Function_225d30c: @ 225d30c :thumb
	bx      lr
@ 0x225d30e


.align 2, 0


.thumb
Function_225d310: @ 225d310 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	ldr     r0, [r7, #0x0]
	mov     r5, r1
	mov     r1, #0x6
	bl      Function_63_222bf90
	mov     r4, r0
	ldr     r0, [r7, #0x0]
	mov     r1, #0x4
	bl      Function_63_222bf90
	mov     r6, r0
	ldr     r0, [r7, #0x0]
	mov     r1, #0x5
	bl      Function_63_222bf90
	cmp     r0, #0x0
	bne     branch_225d3d2
	ldr     r0, [pc, #0x9c] @ 0x225d3d4, (=0x21bf67c)
	mov     r1, #0x2
	ldr     r0, [r0, #0x44]
	mov     r2, r0
	tst     r2, r1
	beq     branch_225d344
	mov     r1, #0x3
.thumb
branch_225d344: @ 225d344 :thumb
	mov     r2, #0x40
	tst     r2, r0
	beq     branch_225d368
	cmp     r4, #0x0
	bne     branch_225d35a
	mov     r0, r5
	mov     r2, r4
	mov     r3, r6
	bl      Function_225d17c
	pop     {r3-r7,pc}
@ 0x225d35a

.thumb
branch_225d35a: @ 225d35a :thumb
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0x0
	mov     r3, r6
	bl      Function_225d17c
	pop     {r3-r7,pc}
@ 0x225d368

.thumb
branch_225d368: @ 225d368 :thumb
	mov     r2, #0x80
	tst     r2, r0
	beq     branch_225d38c
	cmp     r4, #0x1
	bne     branch_225d37e
	mov     r0, r5
	mov     r2, r4
	mov     r3, r6
	bl      Function_225d17c
	pop     {r3-r7,pc}
@ 0x225d37e

.thumb
branch_225d37e: @ 225d37e :thumb
	mov     r1, #0x1
	mov     r0, r5
	mov     r2, r1
	mov     r3, r6
	bl      Function_225d17c
	pop     {r3-r7,pc}
@ 0x225d38c

.thumb
branch_225d38c: @ 225d38c :thumb
	mov     r2, #0x20
	tst     r2, r0
	beq     branch_225d3b0
	cmp     r4, #0x2
	bne     branch_225d3a2
	mov     r0, r5
	mov     r2, r4
	mov     r3, r6
	bl      Function_225d17c
	pop     {r3-r7,pc}
@ 0x225d3a2

.thumb
branch_225d3a2: @ 225d3a2 :thumb
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0x2
	mov     r3, r6
	bl      Function_225d17c
	pop     {r3-r7,pc}
@ 0x225d3b0

.thumb
branch_225d3b0: @ 225d3b0 :thumb
	mov     r2, #0x10
	tst     r0, r2
	beq     branch_225d3d2
	cmp     r4, #0x3
	bne     branch_225d3c6
	mov     r0, r5
	mov     r2, r4
	mov     r3, r6
	bl      Function_225d17c
	pop     {r3-r7,pc}
@ 0x225d3c6

.thumb
branch_225d3c6: @ 225d3c6 :thumb
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0x3
	mov     r3, r6
	bl      Function_225d17c
.thumb
branch_225d3d2: @ 225d3d2 :thumb
	pop     {r3-r7,pc}
@ 0x225d3d4

.word 0x21bf67c @ 0x225d3d4
.thumb
Function_225d3d8: @ 225d3d8 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	ldrh    r0, [r4, #0x8]
	mov     r5, r1
	cmp     r0, #0x4
	bhi     branch_225d4c0
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x225d3f0

Jumppoints_225d3f0:
.hword branch_225d3fa - Jumppoints_225d3f0 - 2
.hword branch_225d40c - Jumppoints_225d3f0 - 2
.hword branch_225d422 - Jumppoints_225d3f0 - 2
.hword branch_225d48e - Jumppoints_225d3f0 - 2
.hword branch_225d4b0 - Jumppoints_225d3f0 - 2
.thumb
branch_225d3fa: @ 225d3fa :thumb
	ldr     r0, [pc, #0xc8] @ 0x225d4c4, (=0x226d500)
	mov     r1, #0x4
	bl      Function_225d194
	strh    r0, [r4, #0xc]
	ldrh    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x8]
	pop     {r3-r7,pc}
@ 0x225d40c

.thumb
branch_225d40c: @ 225d40c :thumb
	mov     r0, #0xc
	ldsh    r1, [r4, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strh    r1, [r4, #0xc]
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_225d4c0
	ldrh    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x8]
	pop     {r3-r7,pc}
@ 0x225d422

.thumb
branch_225d422: @ 225d422 :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, #0x4
	bl      Function_63_222bf90
	mov     r6, r0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x6
	bl      Function_63_222bf90
	mov     r7, r0
	ldr     r0, [pc, #0x90] @ 0x225d4c8, (=0x226d4fc)
	mov     r1, #0x4
	bl      Function_225d194
	strh    r0, [r4, #0xe]
	mov     r2, #0xe
	ldsh    r2, [r4, r2]
	mov     r0, r5
	mov     r1, r4
	add     r3, r6, #0x4
	bl      Function_225d1a8
	cmp     r0, #0x1
	bne     branch_225d47a
	mov     r0, #0xe
	ldsh    r3, [r4, r0]
	cmp     r7, r3
	bne     branch_225d46a
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x2
	bl      Function_225cd7c
	mov     r0, #0x4
	strh    r0, [r4, #0x8]
	pop     {r3-r7,pc}
@ 0x225d46a

.thumb
branch_225d46a: @ 225d46a :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x1
	bl      Function_225cd7c
	mov     r0, #0x3
	strh    r0, [r4, #0x8]
	pop     {r3-r7,pc}
@ 0x225d47a

.thumb
branch_225d47a: @ 225d47a :thumb
	mov     r3, #0xe
	ldsh    r3, [r4, r3]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x1
	bl      Function_225cd7c
	mov     r0, #0x4
	strh    r0, [r4, #0x8]
	pop     {r3-r7,pc}
@ 0x225d48e

.thumb
branch_225d48e: @ 225d48e :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, #0x5
	bl      Function_63_222bf90
	cmp     r0, #0x0
	bne     branch_225d4c0
	mov     r3, #0xe
	ldsh    r3, [r4, r3]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x2
	bl      Function_225cd7c
	ldrh    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x8]
	pop     {r3-r7,pc}
@ 0x225d4b0

.thumb
branch_225d4b0: @ 225d4b0 :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, #0x5
	bl      Function_63_222bf90
	cmp     r0, #0x0
	bne     branch_225d4c0
	mov     r0, #0x0
	strh    r0, [r4, #0x8]
.thumb
branch_225d4c0: @ 225d4c0 :thumb
	pop     {r3-r7,pc}
@ 0x225d4c2


.align 2


.word 0x226d500 @ 0x225d4c4
.word 0x226d4fc @ 0x225d4c8
.thumb
Function_225d4cc: @ 225d4cc :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldrh    r0, [r4, #0x8]
	cmp     r0, #0x3
	bhi     branch_225d572
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x225d4e4

Jumppoints_225d4e4:
.hword branch_225d4ec - Jumppoints_225d4e4 - 2
.hword branch_225d516 - Jumppoints_225d4e4 - 2
.hword branch_225d532 - Jumppoints_225d4e4 - 2
.hword branch_225d572 - Jumppoints_225d4e4 - 2
.thumb
branch_225d4ec: @ 225d4ec :thumb
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	bl      0x22347b0
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	bl      0x2234850
	mov     r0, r4
	mov     r2, #0x7d
	add     r0, #0xc
	mov     r1, #0x0
	lsl     r2, r2, #14
	mov     r3, #0x18
	bl      Function_225d220
	mov     r0, #0x20
	str     r0, [r4, #0x1c]
	ldrh    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x8]
.thumb
branch_225d516: @ 225d516 :thumb
	ldr     r0, [r4, #0x1c]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x1c]
	bne     branch_225d572
	ldrh    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x8]
	mov     r0, #0x0
	str     r0, [r4, #0x1c]
	ldr     r0, [pc, #0x4c] @ 0x225d578, (=0x64f)
	bl      Function_2005748
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x225d532

.thumb
branch_225d532: @ 225d532 :thumb
	mov     r0, r4
	ldr     r1, [r4, #0x1c]
	add     r0, #0xc
	bl      Function_225d22c
	mov     r5, r0
	ldr     r0, [r4, #0x1c]
	add     r1, sp, #0x0
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x1c]
	ldr     r0, [r4, #0x4]
	bl      0x223481c
	mov     r0, r4
	add     r0, #0xc
	bl      Function_225d2bc
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x4]
	add     r1, sp, #0x0
	bl      0x22347f8
	cmp     r5, #0x1
	bne     branch_225d572
	ldrh    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x8]
	ldr     r0, [r4, #0x4]
	bl      0x223487c
	mov     r0, #0x1
	strb    r0, [r4, #0xa]
.thumb
branch_225d572: @ 225d572 :thumb
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x225d576


.align 2


.word 0x64f @ 0x225d578
.thumb
Function_225d57c: @ 225d57c :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldrh    r0, [r4, #0x8]
	cmp     r0, #0x3
	bhi     branch_225d62a
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x225d594

Jumppoints_225d594:
.hword branch_225d59c - Jumppoints_225d594 - 2
.hword branch_225d5cc - Jumppoints_225d594 - 2
.hword branch_225d60a - Jumppoints_225d594 - 2
.hword branch_225d62a - Jumppoints_225d594 - 2
.thumb
branch_225d59c: @ 225d59c :thumb
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	bl      0x22347b0
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	bl      0x2234850
	mov     r0, r4
	mov     r1, #0x7d
	add     r0, #0xc
	lsl     r1, r1, #14
	mov     r2, #0x0
	mov     r3, #0x18
	bl      Function_225d220
	mov     r0, #0x0
	str     r0, [r4, #0x1c]
	ldrh    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x8]
	ldr     r0, [pc, #0x68] @ 0x225d630, (=0x64f)
	bl      Function_2005748
.thumb
branch_225d5cc: @ 225d5cc :thumb
	mov     r0, r4
	ldr     r1, [r4, #0x1c]
	add     r0, #0xc
	bl      Function_225d22c
	mov     r5, r0
	ldr     r0, [r4, #0x1c]
	add     r1, sp, #0x0
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x1c]
	ldr     r0, [r4, #0x4]
	bl      0x223481c
	mov     r0, r4
	add     r0, #0xc
	bl      Function_225d2bc
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x4]
	add     r1, sp, #0x0
	bl      0x22347f8
	cmp     r5, #0x1
	bne     branch_225d62a
	mov     r0, #0x20
	str     r0, [r4, #0x1c]
	ldrh    r0, [r4, #0x8]
	add     sp, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x8]
	pop     {r4,r5,pc}
@ 0x225d60a

.thumb
branch_225d60a: @ 225d60a :thumb
	ldr     r0, [r4, #0x1c]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x1c]
	bne     branch_225d62a
	ldrh    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x8]
	ldr     r0, [r4, #0x4]
	bl      0x223487c
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      0x22347b0
	mov     r0, #0x1
	strb    r0, [r4, #0xa]
.thumb
branch_225d62a: @ 225d62a :thumb
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x225d62e


.align 2


.word 0x64f @ 0x225d630
.thumb
Function_225d634: @ 225d634 :thumb
	ldr     r3, [pc, #0x4] @ 0x225d63c, (=0x225d665)
	mov     r2, #0x2
	bx      r3
@ 0x225d63a


.align 2


.word 0x225d665 @ 0x225d63c
.thumb
Function_225d640: @ 225d640 :thumb
	ldr     r3, [pc, #0x4] @ 0x225d648, (=0x225d665)
	mov     r2, #0x3
	bx      r3
@ 0x225d646


.align 2


.word 0x225d665 @ 0x225d648
.thumb
Function_225d64c: @ 225d64c :thumb
	ldr     r3, [pc, #0x4] @ 0x225d654, (=0x225d665)
	mov     r2, #0x0
	bx      r3
@ 0x225d652


.align 2


.word 0x225d665 @ 0x225d654
.thumb
Function_225d658: @ 225d658 :thumb
	ldr     r3, [pc, #0x4] @ 0x225d660, (=0x225d665)
	mov     r2, #0x1
	bx      r3
@ 0x225d65e


.align 2


.word 0x225d665 @ 0x225d660
.thumb
Function_225d664: @ 225d664 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x28
	mov     r4, r0
	ldrh    r0, [r4, #0x8]
	mov     r5, r2
	cmp     r0, #0x3
	bls     branch_225d674
	b       branch_225d816
@ 0x225d674

.thumb
branch_225d674: @ 225d674 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x225d680

Jumppoints_225d680:
.hword branch_225d688 - Jumppoints_225d680 - 2
.hword branch_225d6e4 - Jumppoints_225d680 - 2
.hword branch_225d79e - Jumppoints_225d680 - 2
.hword branch_225d816 - Jumppoints_225d680 - 2
.thumb
branch_225d688: @ 225d688 :thumb
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	bl      0x22347b0
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	bl      0x2234850
	ldr     r0, [r4, #0x4]
	mov     r1, #0x2
	bl      0x2234888
	mov     r0, r4
	mov     r2, #0x1
	add     r0, #0xc
	mov     r1, #0x0
	lsl     r2, r2, #16
	mov     r3, #0x4
	bl      Function_225d220
	ldr     r0, [r4, #0x4]
	add     r1, sp, #0x1c
	bl      0x223481c
	cmp     r5, #0x3
	bhi     branch_225d6da
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x225d6c8

Jumppoints_225d6c8:
.hword branch_225d6d0 - Jumppoints_225d6c8 - 2
.hword branch_225d6d0 - Jumppoints_225d6c8 - 2
.hword branch_225d6d6 - Jumppoints_225d6c8 - 2
.hword branch_225d6d6 - Jumppoints_225d6c8 - 2
.thumb
branch_225d6d0: @ 225d6d0 :thumb
	ldr     r0, [sp, #0x24]
	str     r0, [r4, #0x20]
	b       branch_225d6da
@ 0x225d6d6

.thumb
branch_225d6d6: @ 225d6d6 :thumb
	ldr     r0, [sp, #0x1c]
	str     r0, [r4, #0x20]
.thumb
branch_225d6da: @ 225d6da :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x1c]
	ldrh    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x8]
.thumb
branch_225d6e4: @ 225d6e4 :thumb
	mov     r0, r4
	ldr     r1, [r4, #0x1c]
	add     r0, #0xc
	bl      Function_225d22c
	mov     r6, r0
	ldr     r0, [r4, #0x1c]
	add     r1, sp, #0x10
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x1c]
	ldr     r0, [r4, #0x4]
	bl      0x223481c
	cmp     r5, #0x3
	bhi     branch_225d754
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x225d70e

Jumppoints_225d70e:
.hword branch_225d716 - Jumppoints_225d70e - 2
.hword branch_225d726 - Jumppoints_225d70e - 2
.hword branch_225d736 - Jumppoints_225d70e - 2
.hword branch_225d746 - Jumppoints_225d70e - 2
.thumb
branch_225d716: @ 225d716 :thumb
	mov     r0, r4
	add     r0, #0xc
	bl      Function_225d2bc
	ldr     r1, [r4, #0x20]
	sub     r0, r1, r0
	str     r0, [sp, #0x18]
	b       branch_225d754
@ 0x225d726

.thumb
branch_225d726: @ 225d726 :thumb
	mov     r0, r4
	add     r0, #0xc
	bl      Function_225d2bc
	ldr     r1, [r4, #0x20]
	add     r0, r1, r0
	str     r0, [sp, #0x18]
	b       branch_225d754
@ 0x225d736

.thumb
branch_225d736: @ 225d736 :thumb
	mov     r0, r4
	add     r0, #0xc
	bl      Function_225d2bc
	ldr     r1, [r4, #0x20]
	sub     r0, r1, r0
	str     r0, [sp, #0x10]
	b       branch_225d754
@ 0x225d746

.thumb
branch_225d746: @ 225d746 :thumb
	mov     r0, r4
	add     r0, #0xc
	bl      Function_225d2bc
	ldr     r1, [r4, #0x20]
	add     r0, r1, r0
	str     r0, [sp, #0x10]
.thumb
branch_225d754: @ 225d754 :thumb
	ldr     r0, [r4, #0x4]
	add     r1, sp, #0x10
	bl      0x22347f8
	cmp     r6, #0x1
	bne     branch_225d816
	mov     r0, r5
	bl      0x222c0ac
	mov     r1, #0x4
	str     r1, [r4, #0x1c]
	cmp     r0, #0x3
	bhi     branch_225d794
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x225d77a

Jumppoints_225d77a:
.hword branch_225d788 - Jumppoints_225d77a - 2
.hword branch_225d794 - Jumppoints_225d77a - 2
.hword branch_225d78e - Jumppoints_225d77a - 2
.hword branch_225d782 - Jumppoints_225d77a - 2
.thumb
branch_225d782: @ 225d782 :thumb
	ldr     r0, [r4, #0x1c]
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [r4, #0x1c]
.thumb
branch_225d788: @ 225d788 :thumb
	ldr     r0, [r4, #0x1c]
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [r4, #0x1c]
.thumb
branch_225d78e: @ 225d78e :thumb
	ldr     r0, [r4, #0x1c]
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [r4, #0x1c]
.thumb
branch_225d794: @ 225d794 :thumb
	ldrh    r0, [r4, #0x8]
	add     sp, #0x28
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x8]
	pop     {r4-r6,pc}
@ 0x225d79e

.thumb
branch_225d79e: @ 225d79e :thumb
	ldr     r0, [r4, #0x1c]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x1c]
	bne     branch_225d816
	ldrh    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x8]
	ldr     r0, [r4, #0x0]
	bl      0x222c0e4
	add     r1, sp, #0x0
	strh    r0, [r1, #0x4]
	lsr     r0, r0, #16
	strh    r0, [r1, #0x6]
	ldrh    r0, [r1, #0x4]
	mov     r2, sp
	.hword  0x1f12 @ sub r2, r2, #0x4
	strh    r0, [r1, #0xc]
	ldrh    r0, [r1, #0x6]
	strh    r0, [r1, #0xe]
	ldrh    r0, [r1, #0xc]
	strh    r0, [r2, #0x0]
	ldrh    r0, [r1, #0xe]
	mov     r1, r5
	strh    r0, [r2, #0x2]
	ldr     r0, [r2, #0x0]
	bl      0x222c078
	add     r1, sp, #0x0
	strh    r0, [r1, #0x0]
	lsr     r0, r0, #16
	strh    r0, [r1, #0x2]
	ldrh    r0, [r1, #0x0]
	strh    r0, [r1, #0x8]
	ldrh    r0, [r1, #0x2]
	strh    r0, [r1, #0xa]
	mov     r0, r5
	bl      0x222c0ac
	add     r1, sp, #0x0
	mov     r5, sp
	mov     r2, r0
	ldrh    r3, [r1, #0x8]
	.hword  0x1f2d @ sub r5, r5, #0x4
	mov     r0, r4
	strh    r3, [r5, #0x0]
	ldrh    r1, [r1, #0xa]
	strh    r1, [r5, #0x2]
	ldr     r1, [r5, #0x0]
	bl      Function_225cd04
	ldr     r0, [r4, #0x4]
	bl      0x223487c
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      0x22347b0
	mov     r0, #0x1
	strb    r0, [r4, #0xa]
.thumb
branch_225d816: @ 225d816 :thumb
	add     sp, #0x28
	pop     {r4-r6,pc}
@ 0x225d81a


.align 2, 0


.thumb
Function_225d81c: @ 225d81c :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldrh    r0, [r5, #0x8]
	cmp     r0, #0x0
	beq     branch_225d830
	cmp     r0, #0x1
	beq     branch_225d850
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x225d830

.thumb
branch_225d830: @ 225d830 :thumb
	ldr     r0, [r5, #0x4]
	mov     r1, #0x0
	bl      0x22347b0
	mov     r1, r5
	ldr     r0, [r5, #0x4]
	add     r1, #0x10
	bl      0x223481c
	mov     r0, #0x1c
	str     r0, [r5, #0xc]
	ldrh    r0, [r5, #0x8]
	add     sp, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x8]
	pop     {r3-r6,pc}
@ 0x225d850

.thumb
branch_225d850: @ 225d850 :thumb
	ldr     r0, [r5, #0xc]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r5, #0xc]
	bpl     branch_225d85c
	mov     r0, #0x1c
	str     r0, [r5, #0xc]
.thumb
branch_225d85c: @ 225d85c :thumb
	mov     r3, r5
	add     r3, #0x10
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x0
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	ldr     r0, [r5, #0xc]
	sub     r0, #0x10
	lsl     r0, r0, #16
	asr     r0, r0, #16
	cmp     r0, #0x0
	ble     branch_225d8de
	mov     r1, #0x6
	blx     _s32_div_f
	lsl     r0, r1, #16
	asr     r1, r0, #16
	mov     r0, #0xb4
	mul     r0, r1
	mov     r1, #0x6
	blx     _s32_div_f
	mov     r4, r0
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	bl      Function_201d15c
	ldr     r2, [pc, #0x5c] @ 0x225d8f4, (=0xffffe000)
	asr     r1, r0, #31
	asr     r3, r2, #13
	blx     _ll_mul
	mov     r3, #0x2
	mov     r6, #0x0
	lsl     r3, r3, #10
	add     r3, r0, r3
	adc     r1, r6
	lsl     r0, r1, #20
	lsr     r1, r3, #12
	ldr     r2, [sp, #0x8]
	orr     r1, r0
	add     r0, r2, r1
	str     r0, [sp, #0x8]
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	bl      Function_201d15c
	mov     r2, #0xa
	asr     r1, r0, #31
	lsl     r2, r2, #12
	mov     r3, r6
	blx     _ll_mul
	mov     r3, #0x2
	mov     r4, r6
	lsl     r3, r3, #10
	add     r3, r0, r3
	adc     r1, r4
	lsl     r0, r1, #20
	lsr     r1, r3, #12
	ldr     r2, [sp, #0x4]
	orr     r1, r0
	add     r0, r2, r1
	str     r0, [sp, #0x4]
.thumb
branch_225d8de: @ 225d8de :thumb
	ldr     r0, [r5, #0x4]
	add     r1, sp, #0x0
	bl      0x22347f8
	ldr     r0, [r5, #0x4]
	mov     r1, #0x1
	bl      0x2234834
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x225d8f2


.align 2


.word 0xffffe000 @ 0x225d8f4
.thumb
Function_225d8f8: @ 225d8f8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      0x22347b0
	ldr     r0, [r4, #0x4]
	add     r1, sp, #0x0
	bl      0x223481c
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x4]
	add     r1, sp, #0x0
	bl      0x22347f8
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x225d91e


.align 2, 0


.thumb
Function_225d920: @ 225d920 :thumb
	strb    r2, [r0, #0x1]
	strb    r2, [r0, #0x2]
	mov     r3, #0x0
	strb    r3, [r0, #0x3]
	strh    r3, [r0, #0x4]
	strh    r3, [r0, #0x6]
	strb    r3, [r0, #0x0]
	mov     r0, r1
	ldr     r3, [pc, #0x4] @ 0x225d938, (=0x2234611)
	mov     r1, r2
	bx      r3
@ 0x225d936


.align 2


.word 0x2234611 @ 0x225d938
.thumb
Function_225d93c: @ 225d93c :thumb
	mov     r2, #0x1
	strb    r2, [r0, #0x0]
	ldrb    r2, [r0, #0x1]
	strb    r2, [r0, #0x2]
	ldrb    r2, [r0, #0x1]
	sub     r1, r1, r2
	strb    r1, [r0, #0x3]
	mov     r1, #0x0
	strh    r1, [r0, #0x4]
	mov     r1, #0x3c
	strh    r1, [r0, #0x6]
	bx      lr
@ 0x225d954

.thumb
Function_225d954: @ 225d954 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldrb    r0, [r5, #0x0]
	mov     r4, r1
	cmp     r0, #0x0
	bne     branch_225d964
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x225d964

.thumb
branch_225d964: @ 225d964 :thumb
	mov     r0, #0x4
	ldsh    r1, [r5, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r5, #0x4]
	ldsh    r1, [r5, r0]
	mov     r0, #0x6
	ldsh    r0, [r5, r0]
	cmp     r1, r0
	blt     branch_225d97a
	mov     r0, #0x0
	strb    r0, [r5, #0x0]
.thumb
branch_225d97a: @ 225d97a :thumb
	mov     r0, #0x4
	ldsh    r1, [r5, r0]
	mov     r0, #0x3
	ldsb    r0, [r5, r0]
	mul     r0, r1
	mov     r1, #0x6
	ldsh    r1, [r5, r1]
	blx     _s32_div_f
	strb    r0, [r5, #0x1]
	mov     r0, #0x2
	ldrb    r1, [r5, #0x1]
	ldsb    r0, [r5, r0]
	add     r0, r1, r0
	strb    r0, [r5, #0x1]
	ldrb    r1, [r5, #0x1]
	mov     r0, r4
	bl      0x2234610
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x225d9a4

.thumb
Function_225d9a4: @ 225d9a4 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r0
	bl      LoadPtrToOverWorldDataIn18
	mov     r2, #0x3a
	mov     r5, r0
	mov     r0, #0x3
	mov     r1, #0x70
	lsl     r2, r2, #12
	bl      Function_2017fc8
	mov     r2, #0x3d
	mov     r0, #0x3
	mov     r1, #0x71
	lsl     r2, r2, #12
	bl      Function_2017fc8
	mov     r1, #0xfe
	mov     r0, r4
	lsl     r1, r1, #2
	mov     r2, #0x70
	bl      MallocSomeDataAndStorePtrInOverlayData1c
	mov     r2, #0xfe
	mov     r1, #0x0
	lsl     r2, r2, #2
	mov     r4, r0
	blx     Call_FillMemWithValue
	mov     r0, r5
	add     r0, #0xc
	str     r0, [r4, #0x38]
	ldr     r0, [r5, #0x1c]
	str     r0, [r4, #0x34]
	bl      0x222e338
	strb    r0, [r4, #0x2]
	ldr     r0, [r4, #0x34]
	bl      0x222e338
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	bne     branch_225da02
	bl      ErrorHandling
.thumb
branch_225da02: @ 225da02 :thumb
	mov     r0, #0x1
	bl      Function_2002ac8
	mov     r0, #0x0
	bl      Function_2002ae4
	mov     r0, #0x0
	bl      Function_2002b20
	ldr     r0, [r5, #0x0]
	bl      LoadTrainerDataAdress
	mov     r1, #0xfd
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, r4
	ldr     r1, [r5, #0x0]
	add     r0, #0x3c
	mov     r2, #0x70
	bl      Function_225e4ec
	mov     r0, #0x70
	bl      Function_225c858
	mov     r1, #0xfa
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	add     r1, #0xc
	ldr     r0, [r4, r1]
	bl      GetGender
	mov     r1, r0
	mov     r0, #0x71
	mov     r2, #0xfa
	str     r0, [sp, #0x0]
	lsl     r2, r2, #2
	ldr     r2, [r4, r2]
	mov     r0, #0x18
	mov     r3, #0x70
	bl      Function_225c9b4
	mov     r2, #0x3e
	lsl     r2, r2, #4
	str     r0, [r4, r2]
	mov     r0, #0x71
	str     r0, [sp, #0x0]
	add     r2, #0x8
	ldr     r0, [r5, #0x4]
	ldr     r1, [r5, #0x8]
	ldr     r2, [r4, r2]
	mov     r3, #0x70
	bl      Function_2261e10
	mov     r1, #0xf9
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x70
	bl      Function_2260a70
	mov     r1, #0xfb
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	sub     r1, #0xf4
	add     r0, r4, r1
	mov     r1, r4
	ldr     r2, [r5, #0x0]
	add     r1, #0x3c
	mov     r3, #0x70
	bl      Function_225e9c8
	mov     r0, #0xc6
	lsl     r0, r0, #2
	mov     r1, r4
	ldr     r2, [r5, #0x0]
	add     r0, r4, r0
	add     r1, #0x3c
	mov     r3, #0x70
	bl      Function_225eba8
	mov     r0, #0xce
	lsl     r0, r0, #2
	mov     r1, r4
	add     r0, r4, r0
	add     r1, #0x3c
	mov     r2, #0x70
	bl      Function_225ec20
	mov     r0, #0x39
	lsl     r0, r0, #4
	mov     r1, r4
	add     r0, r4, r0
	add     r1, #0x3c
	mov     r2, #0x70
	bl      Function_225f114
	mov     r0, #0xf1
	lsl     r0, r0, #2
	mov     r1, r4
	add     r0, r4, r0
	add     r1, #0x3c
	mov     r2, #0x70
	bl      Function_225efd4
	mov     r0, #0xb7
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, #0x70
	bl      Function_225f208
	mov     r1, #0x3a
	lsl     r1, r1, #4
	add     r0, r4, r1
	sub     r1, #0xc4
	add     r1, r4, r1
	mov     r2, #0x70
	bl      Function_225f098
	mov     r0, #0x70
	str     r0, [sp, #0x0]
	mov     r3, #0xfd
	mov     r0, #0x61
	lsl     r3, r3, #2
	lsl     r0, r0, #2
	mov     r2, r4
	ldr     r1, [r4, #0x38]
	ldr     r3, [r4, r3]
	add     r0, r4, r0
	add     r2, #0x3c
	bl      Function_225f350
	ldr     r0, [r4, #0x34]
	bl      0x222e3bc
	mov     r5, r0
	bl      0x222e8d8
	cmp     r0, #0x1
	bne     branch_225db2e
	mov     r0, #0x61
	mov     r2, #0xb7
	lsl     r0, r0, #2
	mov     r1, r4
	lsl     r2, r2, #2
	add     r0, r4, r0
	add     r1, #0x3c
	add     r2, r4, r2
	mov     r3, #0x70
	str     r5, [sp, #0x0]
	bl      Function_225f8ac
.thumb
branch_225db2e: @ 225db2e :thumb
	mov     r0, r4
	mov     r1, #0x70
	bl      Function_2262da8
	mov     r1, #0x3f
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	mov     r0, r4
	bl      Function_22630a4
	mov     r0, r4
	bl      Function_22630ec
	mov     r0, #0x70
	str     r0, [sp, #0x0]
	mov     r0, #0x71
	mov     r3, #0xfa
	str     r0, [sp, #0x4]
	lsl     r3, r3, #2
	add     r2, r3, #0x4
	ldr     r1, [r4, r3]
	sub     r3, #0x8
	ldr     r0, [r4, #0x34]
	ldr     r2, [r4, r2]
	ldr     r3, [r4, r3]
	bl      Function_2269190
	mov     r1, #0xf5
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x70
	mov     r1, r4
	bl      Function_226c60c
	mov     r1, #0xf7
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [pc, #0x10] @ 0x225db8c, (=0x225e4c9)
	mov     r1, r4
	bl      SetMainLoopFunctionCall
	bl      Function_20177a4
	mov     r0, #0x1
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x225db8a


.align 2


.word 0x225e4c9 @ 0x225db8c
.thumb
Function_225db90: @ 225db90 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r6, r0
	mov     r5, r1
	bl      LoadOverlayData1c
	mov     r4, r0
	mov     r0, r6
	bl      LoadPtrToOverWorldDataIn18
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x8
	bhi     branch_225dc58
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x225dbb6

Jumppoints_225dbb6:
.hword branch_225dbc8 - Jumppoints_225dbb6 - 2
.hword branch_225dbea - Jumppoints_225dbb6 - 2
.hword branch_225dbfe - Jumppoints_225dbb6 - 2
.hword branch_225dc7a - Jumppoints_225dbb6 - 2
.hword branch_225dcf8 - Jumppoints_225dbb6 - 2
.hword branch_225dd08 - Jumppoints_225dbb6 - 2
.hword branch_225dd58 - Jumppoints_225dbb6 - 2
.hword branch_225dd76 - Jumppoints_225dbb6 - 2
.hword branch_225ddd0 - Jumppoints_225dbb6 - 2
.thumb
branch_225dbc8: @ 225dbc8 :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x70
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	mov     r3, r0
	bl      Function_200f174
	mov     r0, #0x1
	strb    r0, [r4, #0x3]
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_225dde2
@ 0x225dbea

.thumb
branch_225dbea: @ 225dbea :thumb
	bl      Function_200f2ac
	cmp     r0, #0x1
	bne     branch_225dc58
	mov     r0, #0x0
	strb    r0, [r4, #0x3]
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_225dde2
@ 0x225dbfe

.thumb
branch_225dbfe: @ 225dbfe :thumb
	ldrb    r0, [r4, #0x4]
	lsl     r0, r0, #28
	lsr     r0, r0, #28
	cmp     r0, #0x1
	bne     branch_225dc26
	bl      0x2231760
	cmp     r0, #0x1
	beq     branch_225dc1a
	ldr     r0, [r4, #0x34]
	bl      0x222dff8
	cmp     r0, #0x0
	beq     branch_225dc26
.thumb
branch_225dc1a: @ 225dc1a :thumb
	ldrb    r1, [r4, #0x4]
	mov     r0, #0xf0
	bic     r1, r0
	mov     r0, #0x10
	orr     r0, r1
	strb    r0, [r4, #0x4]
.thumb
branch_225dc26: @ 225dc26 :thumb
	ldrb    r0, [r4, #0x7]
	cmp     r0, #0x0
	bne     branch_225dc42
	ldr     r0, [r4, #0x34]
	bl      0x222e138
	cmp     r0, #0x1
	bne     branch_225dc42
	mov     r0, #0x1
	strb    r0, [r4, #0x6]
	mov     r0, r4
	mov     r1, #0x8
	bl      Function_225df38
.thumb
branch_225dc42: @ 225dc42 :thumb
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x1
	beq     branch_225dc5a
	ldrb    r0, [r4, #0x4]
	lsl     r0, r0, #24
	lsr     r0, r0, #28
	cmp     r0, #0x1
	beq     branch_225dc5a
	ldrb    r0, [r4, #0x6]
	cmp     r0, #0x1
	beq     branch_225dc5a
.thumb
branch_225dc58: @ 225dc58 :thumb
	b       branch_225dde2
@ 0x225dc5a

.thumb
branch_225dc5a: @ 225dc5a :thumb
	ldrb    r0, [r4, #0x4]
	lsl     r0, r0, #24
	lsr     r0, r0, #28
	beq     branch_225dc68
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	b       branch_225dde2
@ 0x225dc68

.thumb
branch_225dc68: @ 225dc68 :thumb
	ldrb    r0, [r4, #0x6]
	cmp     r0, #0x1
	bne     branch_225dc74
	mov     r0, #0x5
	str     r0, [r5, #0x0]
	b       branch_225dde2
@ 0x225dc74

.thumb
branch_225dc74: @ 225dc74 :thumb
	mov     r0, #0x7
	str     r0, [r5, #0x0]
	b       branch_225dde2
@ 0x225dc7a

.thumb
branch_225dc7a: @ 225dc7a :thumb
	mov     r0, #0xbe
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_225eb74
	mov     r0, #0xce
	lsl     r0, r0, #2
	mov     r1, #0x0
	add     r0, r4, r0
	mov     r2, r1
	bl      Function_225ef14
	mov     r0, #0xf1
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_225f024
	mov     r0, #0x3a
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_225f100
	bl      Function_20383e8
	cmp     r0, #0x0
	beq     branch_225dcbe
	mov     r1, #0x39
	lsl     r1, r1, #4
	add     r0, r4, r1
	sub     r1, #0xb4
	add     r1, r4, r1
	bl      Function_225f184
	b       branch_225dcf2
@ 0x225dcbe

.thumb
branch_225dcbe: @ 225dcbe :thumb
	bl      Function_203881c
	cmp     r0, #0x0
	beq     branch_225dcdc
	bl      0x22326dc
	mov     r1, #0x39
	lsl     r1, r1, #4
	mov     r2, r0
	add     r0, r4, r1
	sub     r1, #0xb4
	add     r1, r4, r1
	bl      Function_225f1c0
	b       branch_225dcf2
@ 0x225dcdc

.thumb
branch_225dcdc: @ 225dcdc :thumb
	ldr     r0, [r4, #0x34]
	bl      0x222dff8
	mov     r1, #0x39
	lsl     r1, r1, #4
	mov     r2, r0
	add     r0, r4, r1
	sub     r1, #0xb4
	add     r1, r4, r1
	bl      Function_225f1f0
.thumb
branch_225dcf2: @ 225dcf2 :thumb
	mov     r0, #0x4
	str     r0, [r5, #0x0]
	b       branch_225dde2
@ 0x225dcf8

.thumb
branch_225dcf8: @ 225dcf8 :thumb
	ldr     r0, [pc, #0xf8] @ 0x225ddf4, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_225dde2
	mov     r0, #0x7
	str     r0, [r5, #0x0]
	b       branch_225dde2
@ 0x225dd08

.thumb
branch_225dd08: @ 225dd08 :thumb
	mov     r0, #0xbe
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_225eb74
	mov     r0, #0xce
	lsl     r0, r0, #2
	mov     r1, #0x0
	add     r0, r4, r0
	mov     r2, r1
	bl      Function_225ef14
	mov     r0, #0xf1
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_225f024
	mov     r0, #0x3a
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_225f100
	mov     r0, #0xb7
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, #0x1
	mov     r2, #0x46
	bl      Function_225f288
	mov     r1, r0
	mov     r0, #0xbe
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_225ea44
	mov     r0, #0x6
	str     r0, [r5, #0x0]
	mov     r0, #0x3c
	str     r0, [r4, #0x8]
	b       branch_225dde2
@ 0x225dd58

.thumb
branch_225dd58: @ 225dd58 :thumb
	mov     r0, #0xbe
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_225eb5c
	cmp     r0, #0x0
	beq     branch_225dde2
	ldr     r0, [r4, #0x8]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x8]
	cmp     r0, #0x0
	bgt     branch_225dde2
	mov     r0, #0x7
	str     r0, [r5, #0x0]
	b       branch_225dde2
@ 0x225dd76

.thumb
branch_225dd76: @ 225dd76 :thumb
	mov     r0, #0x61
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_225f798
	cmp     r0, #0x5
	bne     branch_225dda8
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x70
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      Function_200f174
	mov     r0, #0x1
	strb    r0, [r4, #0x3]
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_225dde2
@ 0x225dda8

.thumb
branch_225dda8: @ 225dda8 :thumb
	cmp     r0, #0x0
	bne     branch_225dde2
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x70
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      Function_200f174
	mov     r0, #0x1
	strb    r0, [r4, #0x3]
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_225dde2
@ 0x225ddd0

.thumb
branch_225ddd0: @ 225ddd0 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x1
	bne     branch_225dde2
	mov     r0, #0x0
	strb    r0, [r4, #0x3]
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x225dde2

.thumb
branch_225dde2: @ 225dde2 :thumb
	mov     r0, r4
	bl      Function_225e88c
	mov     r0, r4
	bl      Function_225e92c
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x225ddf4

.word 0x21bf67c @ 0x225ddf4
.thumb
Function_225ddf8: @ 225ddf8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      LoadOverlayData1c
	mov     r4, r0
	mov     r0, r5
	bl      LoadPtrToOverWorldDataIn18
	ldrb    r1, [r4, #0x1]
	str     r1, [r0, #0x18]
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      Function_20177a4
	mov     r0, #0xf7
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_226c6f8
	mov     r0, #0xf5
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2269204
	mov     r0, #0x3f
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_2262df4
	mov     r0, #0x61
	mov     r1, #0xc6
	lsl     r0, r0, #2
	lsl     r1, r1, #2
	mov     r2, r4
	add     r0, r4, r0
	add     r1, r4, r1
	add     r2, #0x3c
	bl      Function_225f3e4
	mov     r0, #0xb7
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_225f25c
	mov     r0, #0xbe
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_225ea14
	mov     r0, #0xc6
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_225ebbc
	mov     r0, #0xce
	lsl     r0, r0, #2
	mov     r1, r4
	add     r0, r4, r0
	add     r1, #0x3c
	bl      Function_225ed4c
	mov     r0, #0x39
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_225f144
	mov     r0, #0x3a
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_225f100
	mov     r0, #0xf1
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_225efd8
	mov     r0, #0xfb
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2260ad4
	mov     r0, #0xf9
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_22621ac
	mov     r0, #0x3e
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_225ca20
	mov     r0, #0xfa
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_225c894
	mov     r0, r4
	add     r0, #0x3c
	bl      Function_225e6d0
	mov     r0, r4
	bl      free
	mov     r0, #0x70
	bl      Function_201807c
	mov     r0, #0x71
	bl      Function_201807c
	mov     r0, #0x0
	bl      Function_20057bc
	mov     r0, #0x0
	bl      Function_200592c
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x225dee6


.align 2, 0


.thumb
Function_225dee8: @ 225dee8 :thumb
	ldr     r0, [r0, #0x34]
	bx      lr
@ 0x225deec

.thumb
Function_225deec: @ 225deec :thumb
	ldr     r0, [r0, #0x38]
	bx      lr
@ 0x225def0

.thumb
Function_225def0: @ 225def0 :thumb
	mov     r1, #0x3e
	lsl     r1, r1, #4
	ldr     r0, [r0, r1]
	bx      lr
@ 0x225def8

.thumb
Function_225def8: @ 225def8 :thumb
	mov     r1, #0xf9
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	bx      lr
@ 0x225df00

.thumb
Function_225df00: @ 225df00 :thumb
	mov     r1, #0xfa
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	bx      lr
@ 0x225df08

.thumb
Function_225df08: @ 225df08 :thumb
	mov     r1, #0xfb
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	bx      lr
@ 0x225df10

.thumb
Function_225df10: @ 225df10 :thumb
	mov     r1, #0x3f
	lsl     r1, r1, #4
	ldr     r0, [r0, r1]
	bx      lr
@ 0x225df18

.thumb
Function_225df18: @ 225df18 :thumb
	ldrb    r3, [r0, #0x4]
	mov     r2, #0xf
	lsl     r1, r1, #24
	bic     r3, r2
	lsr     r2, r1, #24
	mov     r1, #0xf
	and     r1, r2
	orr     r1, r3
	strb    r1, [r0, #0x4]
	bx      lr
@ 0x225df2c

.thumb
Function_225df2c: @ 225df2c :thumb
	ldrb    r0, [r0, #0x2]
	bx      lr
@ 0x225df30

.thumb
Function_225df30: @ 225df30 :thumb
	ldrb    r0, [r0, #0x3]
	bx      lr
@ 0x225df34

.thumb
Function_225df34: @ 225df34 :thumb
	strb    r1, [r0, #0x0]
	bx      lr
@ 0x225df38

.thumb
Function_225df38: @ 225df38 :thumb
	strb    r1, [r0, #0x1]
	bx      lr
@ 0x225df3c

.thumb
Function_225df3c: @ 225df3c :thumb
	strb    r1, [r0, #0x5]
	bx      lr
@ 0x225df40

.thumb
Function_225df40: @ 225df40 :thumb
	ldrb    r0, [r0, #0x5]
	bx      lr
@ 0x225df44

.thumb
Function_225df44: @ 225df44 :thumb
	mov     r1, #0x1
	strb    r1, [r0, #0x7]
	bx      lr
@ 0x225df4a


.align 2, 0


.thumb
Function_225df4c: @ 225df4c :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r6, r2
	cmp     r4, #0x14
	bcc     branch_225df5c
	bl      ErrorHandling
.thumb
branch_225df5c: @ 225df5c :thumb
	add     r0, r5, r4
	strb    r6, [r0, #0xc]
	pop     {r4-r6,pc}
@ 0x225df62


.align 2, 0


.thumb
Function_225df64: @ 225df64 :thumb
	add     r0, r0, r1
	ldrb    r0, [r0, #0xc]
	bx      lr
@ 0x225df6a


.align 2, 0


.thumb
Function_225df6c: @ 225df6c :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r6, r2
	cmp     r4, #0x14
	bcc     branch_225df7c
	bl      ErrorHandling
.thumb
branch_225df7c: @ 225df7c :thumb
	add     r0, r5, r4
	add     r0, #0x20
	strb    r6, [r0, #0x0]
	pop     {r4-r6,pc}
@ 0x225df84

.thumb
Function_225df84: @ 225df84 :thumb
	add     r0, r0, r1
	add     r0, #0x20
	ldrb    r0, [r0, #0x0]
	bx      lr
@ 0x225df8c

.thumb
Function_225df8c: @ 225df8c :thumb
	mov     r2, #0xbe
	lsl     r2, r2, #2
	ldr     r3, [pc, #0x4] @ 0x225df98, (=0x225ea45)
	add     r0, r0, r2
	bx      r3
@ 0x225df96


.align 2


.word Function_225ea44+1 @ =0x225ea45, 0x225df98
.thumb
Function_225df9c: @ 225df9c :thumb
	mov     r2, #0xbe
	lsl     r2, r2, #2
	ldr     r3, [pc, #0x4] @ 0x225dfa8, (=0x225eaa5)
	add     r0, r0, r2
	bx      r3
@ 0x225dfa6


.align 2


.word 0x225eaa5 @ 0x225dfa8
.thumb
Function_225dfac: @ 225dfac :thumb
	mov     r1, #0xbe
	lsl     r1, r1, #2
	ldr     r3, [pc, #0x4] @ 0x225dfb8, (=0x225eb5d)
	add     r0, r0, r1
	bx      r3
@ 0x225dfb6


.align 2


.word Function_225eb5c+1 @ =0x225eb5d, 0x225dfb8
.thumb
Function_225dfbc: @ 225dfbc :thumb
	mov     r1, #0xbe
	lsl     r1, r1, #2
	ldr     r3, [pc, #0x4] @ 0x225dfc8, (=0x225eb09)
	add     r0, r0, r1
	bx      r3
@ 0x225dfc6


.align 2


.word 0x225eb09 @ 0x225dfc8
.thumb
Function_225dfcc: @ 225dfcc :thumb
	mov     r1, #0xbe
	lsl     r1, r1, #2
	ldr     r3, [pc, #0x4] @ 0x225dfd8, (=0x225eb25)
	add     r0, r0, r1
	bx      r3
@ 0x225dfd6


.align 2


.word 0x225eb25 @ 0x225dfd8
.thumb
Function_225dfdc: @ 225dfdc :thumb
	mov     r1, #0xbe
	lsl     r1, r1, #2
	ldr     r3, [pc, #0x4] @ 0x225dfe8, (=0x225eb4d)
	add     r0, r0, r1
	bx      r3
@ 0x225dfe6


.align 2


.word Function_225eb4c+1 @ =0x225eb4d, 0x225dfe8
.thumb
Function_225dfec: @ 225dfec :thumb
	mov     r1, #0xbe
	lsl     r1, r1, #2
	ldr     r3, [pc, #0x4] @ 0x225dff8, (=0x225eb75)
	add     r0, r0, r1
	bx      r3
@ 0x225dff6


.align 2


.word Function_225eb74+1 @ =0x225eb75, 0x225dff8
.thumb
Function_225dffc: @ 225dffc :thumb
	mov     r2, #0xc6
	lsl     r2, r2, #2
	ldr     r3, [pc, #0x4] @ 0x225e008, (=0x225ebc5)
	add     r0, r0, r2
	bx      r3
@ 0x225e006


.align 2


.word Function_225ebc4+1 @ =0x225ebc5, 0x225e008
.thumb
Function_225e00c: @ 225e00c :thumb
	push    {r3,lr}
	mov     r2, #0xce
	lsl     r2, r2, #2
	add     r0, r0, r2
	mov     r2, #0x71
	mov     r3, #0x0
	bl      Function_225eda8
	pop     {r3,pc}
@ 0x225e01e


.align 2, 0


.thumb
Function_225e020: @ 225e020 :thumb
	push    {r3,lr}
	mov     r3, r2
	mov     r2, #0xce
	lsl     r2, r2, #2
	add     r0, r0, r2
	mov     r2, #0x71
	bl      Function_225eda8
	pop     {r3,pc}
@ 0x225e032


.align 2, 0


.thumb
Function_225e034: @ 225e034 :thumb
	mov     r1, #0xce
	lsl     r1, r1, #2
	ldr     r3, [pc, #0x4] @ 0x225e040, (=0x225ede1)
	add     r0, r0, r1
	bx      r3
@ 0x225e03e


.align 2


.word 0x225ede1 @ 0x225e040
.thumb
Function_225e044: @ 225e044 :thumb
	mov     r3, #0xce
	lsl     r3, r3, #2
	add     r0, r0, r3
	ldr     r3, [pc, #0x4] @ 0x225e050, (=0x225edf9)
	bx      r3
@ 0x225e04e


.align 2


.word Function_225edf8+1 @ =0x225edf9, 0x225e050
.thumb
Function_225e054: @ 225e054 :thumb
	mov     r1, #0xce
	lsl     r1, r1, #2
	ldr     r3, [pc, #0x4] @ 0x225e060, (=0x225ee05)
	add     r0, r0, r1
	bx      r3
@ 0x225e05e


.align 2


.word Function_225ee04+1 @ =0x225ee05, 0x225e060
.thumb
Function_225e064: @ 225e064 :thumb
	mov     r2, #0xce
	lsl     r2, r2, #2
	ldr     r3, [pc, #0x4] @ 0x225e070, (=0x225ee09)
	add     r0, r0, r2
	bx      r3
@ 0x225e06e


.align 2


.word Function_225ee08+1 @ =0x225ee09, 0x225e070
.thumb
Function_225e074: @ 225e074 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r5, r0
	str     r3, [sp, #0x0]
	mov     r0, #0x70
	str     r0, [sp, #0x4]
	mov     r0, #0x10
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	str     r0, [sp, #0xc]
	mov     r0, #0xf
	str     r0, [sp, #0x10]
	mov     r0, #0xce
	lsl     r0, r0, #2
	mov     r4, r2
	add     r0, r5, r0
	add     r5, #0x3c
	mov     r2, r5
	mov     r3, r4
	bl      Function_225ee30
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x225e0a2


.align 2, 0


.thumb
Function_225e0a4: @ 225e0a4 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r5, r0
	str     r3, [sp, #0x0]
	mov     r0, #0x70
	str     r0, [sp, #0x4]
	mov     r4, r2
	add     r0, sp, #0x10
	ldrb    r2, [r0, #0x10]
	mov     r3, r4
	str     r2, [sp, #0x8]
	ldrb    r2, [r0, #0x14]
	str     r2, [sp, #0xc]
	ldrb    r0, [r0, #0x18]
	str     r0, [sp, #0x10]
	mov     r0, #0xce
	lsl     r0, r0, #2
	add     r0, r5, r0
	add     r5, #0x3c
	mov     r2, r5
	bl      Function_225ee30
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x225e0d4

.thumb
Function_225e0d4: @ 225e0d4 :thumb
	mov     r1, #0xce
	lsl     r1, r1, #2
	ldr     r3, [pc, #0x4] @ 0x225e0e0, (=0x225eed9)
	add     r0, r0, r1
	bx      r3
@ 0x225e0de


.align 2


.word 0x225eed9 @ 0x225e0e0
.thumb
Function_225e0e4: @ 225e0e4 :thumb
	mov     r3, #0xce
	lsl     r3, r3, #2
	add     r0, r0, r3
	ldr     r3, [pc, #0x4] @ 0x225e0f0, (=0x225ef15)
	bx      r3
@ 0x225e0ee


.align 2


.word Function_225ef14+1 @ =0x225ef15, 0x225e0f0
.thumb
Function_225e0f4: @ 225e0f4 :thumb
	mov     r2, #0xce
	lsl     r2, r2, #2
	ldr     r3, [pc, #0x4] @ 0x225e100, (=0x225ef6d)
	add     r0, r0, r2
	bx      r3
@ 0x225e0fe


.align 2


.word Function_225ef6c+1 @ =0x225ef6d, 0x225e100
.thumb
Function_225e104: @ 225e104 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	str     r2, [sp, #0x0]
	mov     r5, r0
	str     r3, [sp, #0x4]
	add     r0, sp, #0x8
	ldrb    r0, [r0, #0x10]
	mov     r4, r1
	mov     r2, #0x70
	str     r0, [sp, #0x8]
	mov     r0, #0xf1
	lsl     r0, r0, #2
	add     r0, r5, r0
	add     r5, #0x3c
	mov     r1, r5
	mov     r3, r4
	bl      Function_225efe0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x225e12c

.thumb
Function_225e12c: @ 225e12c :thumb
	mov     r1, #0xf1
	lsl     r1, r1, #2
	ldr     r3, [pc, #0x4] @ 0x225e138, (=0x225f025)
	add     r0, r0, r1
	bx      r3
@ 0x225e136


.align 2


.word 0x225f025 @ 0x225e138
.thumb
Function_225e13c: @ 225e13c :thumb
	push    {r4,lr}
	mov     r4, #0xf1
	lsl     r4, r4, #2
	add     r0, r0, r4
	bl      Function_225f048
	pop     {r4,pc}
@ 0x225e14a


.align 2, 0


.thumb
Function_225e14c: @ 225e14c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	add     r4, sp, #0x0
	ldrh    r4, [r4, #0x10]
	str     r4, [sp, #0x0]
	mov     r4, #0xf1
	lsl     r4, r4, #2
	add     r0, r0, r4
	bl      Function_225f078
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x225e164

.thumb
Function_225e164: @ 225e164 :thumb
	push    {lr}
	add     sp, #-0x14
	mov     r3, #0x0
	mov     r2, r0
	str     r3, [sp, #0x0]
	mov     r0, #0x70
	str     r0, [sp, #0x4]
	mov     r0, #0x19
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	mov     r1, #0xce
	str     r0, [sp, #0xc]
	mov     r0, #0x6
	lsl     r1, r1, #2
	str     r0, [sp, #0x10]
	add     r0, r2, r1
	add     r1, #0x6c
	add     r1, r2, r1
	add     r2, #0x3c
	bl      Function_225ee30
	add     sp, #0x14
	pop     {pc}
@ 0x225e192


.align 2, 0


.thumb
Function_225e194: @ 225e194 :thumb
	push    {lr}
	add     sp, #-0x14
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x70
	str     r0, [sp, #0x4]
	mov     r0, #0x19
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	mov     r1, #0xce
	str     r0, [sp, #0xc]
	mov     r0, #0x6
	lsl     r1, r1, #2
	str     r0, [sp, #0x10]
	add     r0, r2, r1
	add     r1, #0x6c
	add     r1, r2, r1
	add     r2, #0x3c
	mov     r3, #0x0
	bl      Function_225ee30
	add     sp, #0x14
	pop     {pc}
@ 0x225e1c4

.thumb
Function_225e1c4: @ 225e1c4 :thumb
	push    {r3,lr}
	mov     r1, #0xce
	lsl     r1, r1, #2
	add     r0, r0, r1
	bl      Function_225eed8
	cmp     r0, #0x0
	beq     branch_225e1ea
	cmp     r0, #0x1
	beq     branch_225e1e6
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	bne     branch_225e1ee
	ldr     r0, [pc, #0x10] @ 0x225e1f4, (=0x5dc)
	bl      Function_2005748
.thumb
branch_225e1e6: @ 225e1e6 :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x225e1ea

.thumb
branch_225e1ea: @ 225e1ea :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x225e1ee

.thumb
branch_225e1ee: @ 225e1ee :thumb
	mov     r0, #0x2
	pop     {r3,pc}
@ 0x225e1f2


.align 2


.word 0x5dc @ 0x225e1f4
.thumb
Function_225e1f8: @ 225e1f8 :thumb
	mov     r1, #0xce
	lsl     r1, r1, #2
	add     r0, r0, r1
	mov     r1, #0x0
	ldr     r3, [pc, #0x4] @ 0x225e208, (=0x225ef15)
	mov     r2, r1
	bx      r3
@ 0x225e206


.align 2


.word Function_225ef14+1 @ =0x225ef15, 0x225e208
.thumb
Function_225e20c: @ 225e20c :thumb
	mov     r3, #0xb7
	lsl     r3, r3, #2
	add     r0, r0, r3
	ldr     r3, [pc, #0x4] @ 0x225e218, (=0x225f289)
	bx      r3
@ 0x225e216


.align 2


.word Function_225f288+1 @ =0x225f289, 0x225e218
.thumb
Function_225e21c: @ 225e21c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r4, [sp, #0x10]
	str     r4, [sp, #0x0]
	mov     r4, #0xb7
	lsl     r4, r4, #2
	add     r0, r0, r4
	bl      Function_225f2a8
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x225e232


.align 2, 0


.thumb
Function_225e234: @ 225e234 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r0, #0x70
	mov     r4, r1
	mov     r7, r2
	bl      AllocTrainerData
	mov     r6, r0
	ldr     r0, [r5, #0x34]
	bl      0x222e338
	cmp     r4, r0
	ldr     r0, [r5, #0x34]
	bne     branch_225e256
	bl      0x222e3bc
	b       branch_225e25c
@ 0x225e256

.thumb
branch_225e256: @ 225e256 :thumb
	mov     r1, r4
	bl      0x222e374
.thumb
branch_225e25c: @ 225e25c :thumb
	mov     r1, r6
	mov     r2, #0x70
	bl      0x222e640
	mov     r0, #0xb7
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, r6
	mov     r2, r7
	bl      Function_225f2c8
	mov     r0, r6
	bl      free
	pop     {r3-r7,pc}
@ 0x225e27a


.align 2, 0


.thumb
Function_225e27c: @ 225e27c :thumb
	mov     r3, #0xb7
	lsl     r3, r3, #2
	add     r0, r0, r3
	ldr     r3, [pc, #0x4] @ 0x225e288, (=0x225f2d9)
	bx      r3
@ 0x225e286


.align 2


.word Function_225f2d8+1 @ =0x225f2d9, 0x225e288
.thumb
Function_225e28c: @ 225e28c :thumb
	mov     r3, #0xb7
	lsl     r3, r3, #2
	add     r0, r0, r3
	ldr     r3, [pc, #0x4] @ 0x225e298, (=0x225f2e9)
	bx      r3
@ 0x225e296


.align 2


.word Function_225f2e8+1 @ =0x225f2e9, 0x225e298
.thumb
Function_225e29c: @ 225e29c :thumb
	mov     r3, #0xb7
	lsl     r3, r3, #2
	add     r0, r0, r3
	ldr     r3, [pc, #0x4] @ 0x225e2a8, (=0x225f2f9)
	bx      r3
@ 0x225e2a6


.align 2


.word Function_225f2f8+1 @ =0x225f2f9, 0x225e2a8
.thumb
Function_225e2ac: @ 225e2ac :thumb
	mov     r3, #0xb7
	lsl     r3, r3, #2
	ldr     r0, [r0, r3]
	ldr     r3, [pc, #0x4] @ 0x225e2b8, (=Function_200c158+1)
	bx      r3
@ 0x225e2b6

.align 2
.word Function_200c158+1 @ 0x225e2b8



.thumb
Function_225e2bc: @ 225e2bc :thumb
	mov     r3, #0xb7
	lsl     r3, r3, #2
	ldr     r0, [r0, r3]
	ldr     r3, [pc, #0x4] @ 0x225e2c8, (=Function_200c190+1)
	bx      r3
@ 0x225e2c6

.align 2
.word Function_200c190+1 @ 0x225e2c8



.thumb
Function_225e2cc: @ 225e2cc :thumb
	mov     r3, #0xb7
	lsl     r3, r3, #2
	ldr     r0, [r0, r3]
	ldr     r3, [pc, #0x4] @ 0x225e2d8, (=Function_200c1c8+1)
	bx      r3
@ 0x225e2d6

.align 2
.word Function_200c1c8+1 @ 0x225e2d8



.thumb
Function_225e2dc: @ 225e2dc :thumb
	mov     r3, #0xb7
	lsl     r3, r3, #2
	ldr     r0, [r0, r3]
	ldr     r3, [pc, #0x4] @ 0x225e2e8, (=Function_200c200+1)
	bx      r3
@ 0x225e2e6

.align 2
.word Function_200c200+1 @ 0x225e2e8



.thumb
Function_225e2ec: @ 225e2ec :thumb
	mov     r3, #0xb7
	lsl     r3, r3, #2
	ldr     r0, [r0, r3]
	ldr     r3, [pc, #0x4] @ 0x225e2f8, (=Function_200c238+1)
	bx      r3
@ 0x225e2f6

.align 2
.word Function_200c238+1 @ 0x225e2f8



.thumb
Function_225e2fc: @ 225e2fc :thumb
	mov     r3, #0xb7
	lsl     r3, r3, #2
	ldr     r0, [r0, r3]
	ldr     r3, [pc, #0x4] @ 0x225e308, (=Function_200c270+1)
	bx      r3
@ 0x225e306

.align 2
.word Function_200c270+1 @ 0x225e308



.thumb
Function_225e30c: @ 225e30c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, r2
	mov     r4, r1
	bl      0x22316e8
	mov     r2, r0
	mov     r0, #0xb7
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r4
	bl      Function_200b7ec
	pop     {r3-r5,pc}
@ 0x225e328

.thumb
Function_225e328: @ 225e328 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, #0x61
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r4, r1
	mov     r6, r2
	bl      Function_225f7f8
	cmp     r4, r0
	bne     branch_225e368
	mov     r0, #0x61
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_225f7fc
	cmp     r0, #0x1
	bne     branch_225e368
	mov     r0, #0x61
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_225f834
	cmp     r0, #0x0
	bne     branch_225e368
	mov     r0, #0x61
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_225f828
	cmp     r6, r0
	beq     branch_225e376
.thumb
branch_225e368: @ 225e368 :thumb
	mov     r0, #0x61
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, r4
	mov     r2, r6
	bl      Function_225f79c
.thumb
branch_225e376: @ 225e376 :thumb
	pop     {r4-r6,pc}
@ 0x225e378

.thumb
Function_225e378: @ 225e378 :thumb
	push    {r3,lr}
	mov     r3, r0
	mov     r0, #0x61
	lsl     r0, r0, #2
	add     r0, r3, r0
	add     r3, #0x3c
	mov     r2, r1
	mov     r1, r3
	mov     r3, #0x70
	bl      Function_225f7a8
	pop     {r3,pc}
@ 0x225e390

.thumb
Function_225e390: @ 225e390 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	mov     r0, #0x61
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_225f7fc
	cmp     r0, #0x0
	beq     branch_225e3cc
	mov     r0, #0x61
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_225f7f8
	mov     r1, r0
	ldr     r0, [r4, #0x34]
	bl      0x222e374
	mov     r1, #0x61
	lsl     r1, r1, #2
	str     r0, [sp, #0x0]
	add     r0, r4, r1
	add     r1, #0x8
	add     r1, r4, r1
	add     r4, #0x3c
	mov     r2, r4
	mov     r3, #0x70
	bl      Function_225fda0
.thumb
branch_225e3cc: @ 225e3cc :thumb
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x225e3d0

.thumb
Function_225e3d0: @ 225e3d0 :thumb
	mov     r1, #0x61
	lsl     r1, r1, #2
	ldr     r3, [pc, #0x4] @ 0x225e3dc, (=0x225f7e1)
	add     r0, r0, r1
	bx      r3
@ 0x225e3da


.align 2


.word Function_225f7e0+1 @ =0x225f7e1, 0x225e3dc
.thumb
Function_225e3e0: @ 225e3e0 :thumb
	mov     r1, #0x61
	lsl     r1, r1, #2
	ldr     r3, [pc, #0x4] @ 0x225e3ec, (=0x225f7f9)
	add     r0, r0, r1
	bx      r3
@ 0x225e3ea


.align 2


.word Function_225f7f8+1 @ =0x225f7f9, 0x225e3ec
.thumb
Function_225e3f0: @ 225e3f0 :thumb
	mov     r1, #0x61
	lsl     r1, r1, #2
	ldr     r3, [pc, #0x4] @ 0x225e3fc, (=0x225f7fd)
	add     r0, r0, r1
	bx      r3
@ 0x225e3fa


.align 2


.word Function_225f7fc+1 @ =0x225f7fd, 0x225e3fc
.thumb
Function_225e400: @ 225e400 :thumb
	mov     r1, #0x61
	lsl     r1, r1, #2
	ldr     r3, [pc, #0x4] @ 0x225e40c, (=0x225f815)
	add     r0, r0, r1
	bx      r3
@ 0x225e40a


.align 2


.word Function_225f814+1 @ =0x225f815, 0x225e40c
.thumb
Function_225e410: @ 225e410 :thumb
	mov     r1, #0x61
	lsl     r1, r1, #2
	ldr     r3, [pc, #0x4] @ 0x225e41c, (=0x225f7ed)
	add     r0, r0, r1
	bx      r3
@ 0x225e41a


.align 2


.word Function_225f7ec+1 @ =0x225f7ed, 0x225e41c
.thumb
Function_225e420: @ 225e420 :thumb
	mov     r2, #0xf7
	lsl     r2, r2, #2
	ldr     r0, [r0, r2]
	ldr     r3, [pc, #0x4] @ 0x225e42c, (=0x226c811)
	mov     r2, #0x1
	bx      r3
@ 0x225e42c

.word Function_226c810+1 @ =0x226c811, 0x225e42c
.thumb
Function_225e430: @ 225e430 :thumb
	ldr     r1, [pc, #0x4] @ 0x225e438, (=0x18a)
	mov     r2, #0x1
	strh    r2, [r0, r1]
	bx      lr
@ 0x225e438

.word 0x18a @ 0x225e438
.thumb
Function_225e43c: @ 225e43c :thumb
	mov     r2, #0x61
	lsl     r2, r2, #2
	ldr     r3, [pc, #0x4] @ 0x225e448, (=0x225f935)
	add     r0, r0, r2
	bx      r3
@ 0x225e446


.align 2


.word Function_225f934+1 @ =0x225f935, 0x225e448
.thumb
Function_225e44c: @ 225e44c :thumb
	mov     r1, #0xa6
	lsl     r1, r1, #2
	ldr     r3, [pc, #0x4] @ 0x225e458, (=0x2260a69)
	add     r0, r0, r1
	bx      r3
@ 0x225e456


.align 2


.word Function_2260a68+1 @ =0x2260a69, 0x225e458
.thumb
Function_225e45c: @ 225e45c :thumb
	mov     r1, #0xf6
	lsl     r1, r1, #2
	ldr     r3, [r0, r1]
	mov     r2, #0x0
	str     r2, [r0, r1]
	mov     r0, r3
	bx      lr
@ 0x225e46a


.align 2, 0


.thumb
Function_225e46c: @ 225e46c :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0x14
	bcc     branch_225e47a
	bl      ErrorHandling
.thumb
branch_225e47a: @ 225e47a :thumb
	ldr     r0, [r5, #0x34]
	mov     r1, r4
	bl      0x222e374
	bl      0x222e8c4
	mov     r6, r0
	mov     r0, #0xf5
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r4
	mov     r2, r6
	bl      Function_2269268
	ldr     r0, [r5, #0x34]
	bl      0x222e338
	cmp     r4, r0
	bne     branch_225e4a8
	ldr     r0, [r5, #0x34]
	mov     r1, r6
	bl      0x222eb6c
.thumb
branch_225e4a8: @ 225e4a8 :thumb
	pop     {r4-r6,pc}
@ 0x225e4aa


.align 2, 0


.thumb
Function_225e4ac: @ 225e4ac :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0x14
	bcc     branch_225e4ba
	bl      ErrorHandling
.thumb
branch_225e4ba: @ 225e4ba :thumb
	mov     r0, #0xf5
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r4
	bl      Function_2269298
	pop     {r3-r5,pc}
@ 0x225e4c8

.thumb
Function_225e4c8: @ 225e4c8 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xf9
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_22622a4
	mov     r0, #0x3e
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_225cae0
	add     r4, #0x3c
	mov     r0, r4
	bl      Function_225e740
	pop     {r4,pc}
@ 0x225e4ea


.align 2, 0


.thumb
Function_225e4ec: @ 225e4ec :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0
	str     r1, [sp, #0x14]
	ldr     r0, [pc, #0x1a0] @ 0x225e698, (=0x4000050)
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	ldr     r0, [pc, #0x1a0] @ 0x225e69c, (=0x4001050)
	mov     r6, r2
	strh    r1, [r0, #0x0]
	mov     r0, #0x20
	mov     r1, r6
	bl      Function_201dbec
	ldr     r0, [pc, #0x194] @ 0x225e6a0, (=0x226d664)
	bl      GX_SetBanks
	ldr     r0, [pc, #0x194] @ 0x225e6a4, (=RAM_21bf6dc)
	mov     r1, #0x0
	strb    r1, [r0, #0x5]
	bl      Function_201ffe8
	mov     r0, #0x0
	mov     r1, r0
	bl      Function_201975c
	ldr     r0, [pc, #0x184] @ 0x225e6a8, (=0x226d5bc)
	bl      SetGraphicsModes
	mov     r0, r6
	bl      Function_2018340
	str     r0, [r5, #0x0]
	mov     r0, #0x0
	ldr     r7, [pc, #0x178] @ 0x225e6ac, (=0x226d6b4)
	ldr     r4, [pc, #0x17c] @ 0x225e6b0, (=0x226d5cc)
	str     r0, [sp, #0x18]
.thumb
branch_225e536: @ 225e536 :thumb
	ldr     r1, [r4, #0x0]
	ldr     r0, [r5, #0x0]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	mov     r2, r7
	mov     r3, #0x0
	bl      Function_20183c4
	ldr     r0, [r4, #0x0]
	mov     r1, #0x20
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	mov     r2, #0x0
	mov     r3, r6
	bl      Function_2019690
	ldr     r1, [r4, #0x0]
	ldr     r0, [r5, #0x0]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_2019ebc
	ldr     r0, [sp, #0x18]
	add     r7, #0x1c
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	str     r0, [sp, #0x18]
	cmp     r0, #0x4
	blt     branch_225e536
	ldr     r0, [sp, #0x14]
	bl      LoadPlayerDataAdress
	bl      Function_2027b50
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	mov     r0, #0x0
	mov     r1, #0xa0
	mov     r2, r6
	bl      LoadFromNARC_PlFont1
	mov     r0, #0x0
	mov     r1, #0x80
	mov     r2, r6
	bl      LoadFromNARC_PlFont2
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r6, [sp, #0x4]
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	mov     r2, #0x55
	mov     r3, #0x3
	bl      Function_200daa4
	mov     r1, #0x1
	str     r4, [sp, #0x0]
	str     r6, [sp, #0x4]
	ldr     r0, [r5, #0x0]
	mov     r2, r1
	mov     r3, r1
	bl      Function_200dd0c
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	str     r6, [sp, #0x8]
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	mov     r2, #0x1f
	mov     r3, #0x2
	bl      Function_200e2a4

	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #WifiLobbyOther_Narc
	mov     r1, #0x5a
	mov     r2, #0x0
	mov     r3, #0x40
	str     r6, [sp, #0x4]
	bl      Call_LoadFromNARC_RLCN
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
	ldr     r0, [pc, #0xbc] @ 0x225e6b4, (=0x226d5dc)
	ldr     r2, [pc, #0xbc] @ 0x225e6b8, (=0x100010)
	mov     r1, #0x10
	bl      Function_201e88c
	mov     r0, #0x18
	mov     r1, r6
	bl      Function_201f834
	bl      Function_201e994
	bl      Function_201f8e4
	mov     r0, #0x1
	mov     r1, #0x10
	bl      Function_200966c
	mov     r0, #0x1
	bl      Function_2009704
	bl      Function_2039734
	mov     r1, r5
	mov     r0, #0x18
	add     r1, #0x8
	mov     r2, r6
	bl      Function_20095c4
	str     r0, [r5, #0x4]
	mov     r0, r5
	mov     r2, #0x1
	add     r0, #0x8
	mov     r1, #0x0
	lsl     r2, r2, #20
	bl      Function_200964c
	mov     r7, #0x0
	mov     r4, r5
.thumb
branch_225e642: @ 225e642 :thumb
	mov     r0, #0x18
	mov     r1, r7
	mov     r2, r6
	bl      Function_2009714
	mov     r1, #0x13
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r7, #0x4
	blt     branch_225e642
	mov     r0, #0x18
	mov     r1, r6
	bl      Function_201dcc8
	mov     r1, #0x5
	lsl     r1, r1, #6
	str     r0, [r5, r1]
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff74
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x3c] @ 0x225e6bc, (=0x225e755)
	mov     r1, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r2, #0x2
	mov     r3, r1
	bl      Function_2024220
	mov     r1, #0x51
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x225e696


.align 2


.word 0x4000050 @ 0x225e698
.word 0x4001050 @ 0x225e69c
.word 0x226d664 @ 0x225e6a0
.word RAM_21bf6dc @ 0x225e6a4
.word 0x226d5bc @ 0x225e6a8
.word 0x226d6b4 @ 0x225e6ac
.word 0x226d5cc @ 0x225e6b0
.word 0x226d5dc @ 0x225e6b4
.word 0x100010 @ 0x225e6b8
.word 0x225e755 @ 0x225e6bc
.thumb
Function_225e6c0: @ 225e6c0 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x4]
	bl      Function_20219f8
	bl      Function_201dce8
	pop     {r3,pc}
@ 0x225e6ce


.align 2, 0


.thumb
Function_225e6d0: @ 225e6d0 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	bl      Function_201dc3c
	ldr     r5, [pc, #0x60] @ 0x225e73c, (=0x226d5cc)
	mov     r4, #0x0
.thumb
branch_225e6dc: @ 225e6dc :thumb
	ldr     r1, [r5, #0x0]
	ldr     r0, [r6, #0x0]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_2019044
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_225e6dc
	ldr     r0, [r6, #0x0]
	bl      free
	mov     r0, #0x5
	lsl     r0, r0, #6
	ldr     r0, [r6, r0]
	bl      Call_free4
	mov     r0, #0x5
	lsl     r0, r0, #6
	mov     r4, #0x0
	mov     r7, r0
	str     r4, [r6, r0]
	mov     r5, r6
	sub     r7, #0x10
.thumb
branch_225e70e: @ 225e70e :thumb
	ldr     r0, [r5, r7]
	bl      Function_2009754
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_225e70e
	ldr     r0, [r6, #0x4]
	bl      Function_2021964
	bl      Function_201e958
	bl      Function_201f8b4
	bl      Function_200a878
	mov     r0, #0x51
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	bl      Function_20242c4
	pop     {r3-r7,pc}
@ 0x225e73a


.align 2


.word 0x226d5cc @ 0x225e73c
.thumb
Function_225e740: @ 225e740 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	bl      Function_201c2b8
	bl      Function_200a858
	bl      Function_201dcac
	pop     {r3,pc}
@ 0x225e752


.align 2, 0


.thumb
Function_225e754: @ 225e754 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff0c
	ldr     r0, [pc, #0x100] @ 0x225e864, (=0x4000008)
	mov     r1, #0x3
	ldrh    r2, [r0, #0x0]
	bic     r2, r1
	mov     r1, #0x1
	orr     r1, r2
	strh    r1, [r0, #0x0]
	add     r0, #0x58
	ldrh    r2, [r0, #0x0]
	ldr     r1, [pc, #0xf4] @ 0x225e868, (=0xffffcffd)
	and     r2, r1
	strh    r2, [r0, #0x0]
	ldrh    r3, [r0, #0x0]
	add     r2, r1, #0x2
	and     r3, r2
	mov     r2, #0x10
	orr     r2, r3
	strh    r2, [r0, #0x0]
	ldrh    r3, [r0, #0x0]
	ldr     r2, [pc, #0xe4] @ 0x225e86c, (=0xcffb)
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
	and     r2, r1
	mov     r1, #0x20
	orr     r1, r2
	strh    r1, [r0, #0x0]
	ldr     r0, [pc, #0xc8] @ 0x225e870, (=0x226d5ec)
	blx     SetEdgeTable
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	blx     G3X_SetFog
	mov     r1, #0x0
	ldr     r0, [pc, #0xb8] @ 0x225e874, (=0x6b5a)
	ldr     r2, [pc, #0xbc] @ 0x225e878, (=0x7fff)
	mov     r3, #0x3f
	str     r1, [sp, #0x0]
	blx     G3X_SetClearColor
	ldr     r1, [pc, #0xb4] @ 0x225e87c, (=0xbfff0000)
	ldr     r0, [pc, #0xb8] @ 0x225e880, (=0x4000580)
	ldr     r2, [pc, #0xb8] @ 0x225e884, (=0xfffff224)
	str     r1, [r0, #0x0]
	ldr     r1, [pc, #0xb8] @ 0x225e888, (=0xfffff805)
	mov     r0, #0x0
	mov     r3, #0x6e
	blx     Function_20af51c
	mov     r1, #0x0
	add     r0, sp, #0x4
	strh    r1, [r0, #0x0]
	strh    r1, [r0, #0x2]
	mov     r1, #0x1
	lsl     r1, r1, #12
	strh    r1, [r0, #0x4]
	add     r0, sp, #0x4
	mov     r1, r0
	blx     VEC_Fx16Normalize
	add     r4, sp, #0x4
	mov     r1, #0x0
	mov     r2, #0x2
	mov     r3, #0x4
	ldsh    r1, [r4, r1]
	ldsh    r2, [r4, r2]
	ldsh    r3, [r4, r3]
	mov     r0, #0x1
	blx     Function_20af51c
	mov     r1, #0x0
	mov     r0, r4
	strh    r1, [r0, #0x0]
	strh    r1, [r0, #0x2]
	mov     r1, #0x1
	lsl     r1, r1, #12
	strh    r1, [r0, #0x4]
	add     r0, sp, #0x4
	mov     r1, r0
	blx     VEC_Fx16Normalize
	mov     r0, #0x2
	mov     r1, #0x0
	mov     r3, #0x4
	ldsh    r1, [r4, r1]
	ldsh    r2, [r4, r0]
	ldsh    r3, [r4, r3]
	blx     Function_20af51c
	ldr     r1, [pc, #0x50] @ 0x225e878, (=0x7fff)
	mov     r0, #0x2
	blx     Function_20af558
	mov     r1, #0x0
	mov     r0, r4
	strh    r1, [r0, #0x0]
	strh    r1, [r0, #0x2]
	mov     r1, #0x1
	lsl     r1, r1, #12
	strh    r1, [r0, #0x4]
	add     r0, sp, #0x4
	mov     r1, r0
	blx     VEC_Fx16Normalize
	mov     r1, #0x0
	mov     r2, #0x2
	mov     r3, #0x4
	ldsh    r1, [r4, r1]
	ldsh    r2, [r4, r2]
	ldsh    r3, [r4, r3]
	mov     r0, #0x3
	blx     Function_20af51c
	ldr     r1, [pc, #0x20] @ 0x225e878, (=0x7fff)
	mov     r0, #0x3
	blx     Function_20af558
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x225e862


.align 2


.word 0x4000008 @ 0x225e864
.word 0xffffcffd @ 0x225e868
.word 0xcffb @ 0x225e86c
.word 0x226d5ec @ 0x225e870
.word 0x6b5a @ 0x225e874
.word 0x7fff @ 0x225e878
.word 0xbfff0000 @ 0x225e87c
.word 0x4000580 @ 0x225e880
.word 0xfffff224 @ 0x225e884
.word 0xfffff805 @ 0x225e888
.thumb
Function_225e88c: @ 225e88c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x3e
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_225ca44
	ldrb    r0, [r4, #0x4]
	lsl     r0, r0, #24
	lsr     r0, r0, #28
	bne     branch_225e8b2
	ldrb    r0, [r4, #0x6]
	cmp     r0, #0x0
	bne     branch_225e8b2
	mov     r0, #0x3f
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_2262e20
.thumb
branch_225e8b2: @ 225e8b2 :thumb
	mov     r0, #0xf9
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2262210
	ldrb    r0, [r4, #0x4]
	lsl     r0, r0, #24
	lsr     r0, r0, #28
	bne     branch_225e8e8
	ldrb    r0, [r4, #0x6]
	cmp     r0, #0x0
	bne     branch_225e8e8
	mov     r0, #0x3e
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_225ca5c
	mov     r0, #0x3f
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_2262e2c
	mov     r0, #0xf7
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_226c718
.thumb
branch_225e8e8: @ 225e8e8 :thumb
	mov     r0, r4
	bl      Function_225e970
	ldrb    r0, [r4, #0x3]
	cmp     r0, #0x0
	bne     branch_225e91e
	ldrb    r0, [r4, #0x4]
	lsl     r0, r0, #24
	lsr     r0, r0, #28
	cmp     r0, #0x1
	beq     branch_225e90a
	ldrb    r0, [r4, #0x6]
	cmp     r0, #0x1
	beq     branch_225e90a
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x1
	bne     branch_225e90e
.thumb
branch_225e90a: @ 225e90a :thumb
	mov     r2, #0x1
	b       branch_225e910
@ 0x225e90e

.thumb
branch_225e90e: @ 225e90e :thumb
	mov     r2, #0x0
.thumb
branch_225e910: @ 225e910 :thumb
	mov     r0, #0x61
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, r4
	mov     r3, #0x70
	bl      Function_225f418
.thumb
branch_225e91e: @ 225e91e :thumb
	mov     r0, #0xf5
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2269220
	pop     {r4,pc}
@ 0x225e92a


.align 2, 0


.thumb
Function_225e92c: @ 225e92c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Call_G3X_Reset
	mov     r0, #0xfb
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2260aec
	mov     r0, #0xf9
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2262298
	mov     r0, #0x3e
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_225cad4
	mov     r0, #0xf5
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2269240
	mov     r0, #0x0
	mov     r1, r0
	bl      Function_20241bc
	add     r4, #0x3c
	mov     r0, r4
	bl      Function_225e6c0
	pop     {r4,pc}
@ 0x225e96e


.align 2, 0


.thumb
Function_225e970: @ 225e970 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r7, r0
	ldr     r0, [r7, #0x34]
	bl      0x222e190
	str     r0, [sp, #0x8]
	mov     r4, #0x0
.thumb
branch_225e980: @ 225e980 :thumb
	mov     r0, r4
	bl      0x2233184
	mov     r6, r0
	cmp     r6, #0x1
	bne     branch_225e99e
	mov     r0, r4
	bl      0x22331a4
	cmp     r0, #0x0
	bne     branch_225e99a
	mov     r5, #0x1
	b       branch_225e9a0
@ 0x225e99a

.thumb
branch_225e99a: @ 225e99a :thumb
	mov     r5, #0x0
	b       branch_225e9a0
@ 0x225e99e

.thumb
branch_225e99e: @ 225e99e :thumb
	mov     r5, #0x0
.thumb
branch_225e9a0: @ 225e9a0 :thumb
	mov     r0, r4
	bl      0x2233224
	mov     r2, r0
	ldr     r0, [sp, #0x8]
	str     r5, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0xf9
	lsl     r0, r0, #2
	ldr     r0, [r7, r0]
	mov     r1, r4
	mov     r3, r6
	bl      Function_22627bc
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x3
	blt     branch_225e980
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x225e9c6


.align 2, 0


.thumb
Function_225e9c8: @ 225e9c8 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	mov     r0, #0x5e
	str     r0, [sp, #0x10]
	ldr     r0, [r1, #0x0]
	mov     r4, r2
	mov     r6, r3
	mov     r1, r5
	mov     r2, #0x1
	mov     r3, #0x2
	bl      Function_201a7e8
	mov     r0, r5
	mov     r1, #0xf
	bl      Function_201ada4_ClearTextBox
	mov     r0, #0x6
	lsl     r0, r0, #6
	mov     r1, r6
	bl      Function_2023790
	str     r0, [r5, #0x18]
	mov     r0, r4
	bl      LoadPlayerDataAdress
	bl      Function_2027ac0
	str     r0, [r5, #0x14]
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x225ea14

.thumb
Function_225ea14: @ 225ea14 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x10]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	beq     branch_225ea30
	ldr     r0, [r4, #0x10]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Call_RemoveTextInterpreterTaskFromTaskList
.thumb
branch_225ea30: @ 225ea30 :thumb
	mov     r0, r4
	bl      Function_225eb38
	ldr     r0, [r4, #0x18]
	bl      Function_20237bc_FreeMsg
	mov     r0, r4
	bl      Function_201a8fc
	pop     {r4,pc}
@ 0x225ea44

.thumb
Function_225ea44: @ 225ea44 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r0, [r5, #0x10]
	mov     r4, r1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	beq     branch_225ea64
	ldr     r0, [r5, #0x10]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Call_RemoveTextInterpreterTaskFromTaskList
.thumb
branch_225ea64: @ 225ea64 :thumb
	mov     r0, r5
	mov     r1, #0xf
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [r5, #0x18]
	mov     r1, r4
	bl      Function_2023810
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	ldr     r0, [r5, #0x14]
	mov     r1, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x20] @ 0x225eaa0, (=0x1020f)
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	ldr     r2, [r5, #0x18]
	mov     r0, r5
	bl      Function_201d78c
	mov     r1, #0x1
	str     r0, [r5, #0x10]
	mov     r0, r5
	mov     r2, r1
	mov     r3, r1
	bl      Function_200e060
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x225ea9e


.align 2


.word 0x1020f @ 0x225eaa0
.thumb
Function_225eaa4: @ 225eaa4 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r0, [r5, #0x10]
	mov     r4, r1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	beq     branch_225eac4
	ldr     r0, [r5, #0x10]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Call_RemoveTextInterpreterTaskFromTaskList
.thumb
branch_225eac4: @ 225eac4 :thumb
	mov     r0, r5
	mov     r1, #0xf
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [r5, #0x18]
	mov     r1, r4
	bl      Function_2023810
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x24] @ 0x225eb04, (=0x1020f)
	mov     r1, #0x1
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	ldr     r2, [r5, #0x18]
	mov     r0, r5
	bl      Function_201d78c
	mov     r1, #0x1
	mov     r0, r5
	mov     r2, r1
	mov     r3, r1
	bl      Function_200e060
	mov     r0, r5
	bl      Function_201a9a4
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x225eb02


.align 2


.word 0x1020f @ 0x225eb04
.thumb
Function_225eb08: @ 225eb08 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x1c]
	cmp     r0, #0x0
	beq     branch_225eb16
	bl      ErrorHandling
.thumb
branch_225eb16: @ 225eb16 :thumb
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_200e7fc
	str     r0, [r4, #0x1c]
	pop     {r4,pc}
@ 0x225eb22


.align 2, 0


.thumb
Function_225eb24: @ 225eb24 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x1c]
	cmp     r0, #0x0
	beq     branch_225eb36
	bl      Function_200eba0
	mov     r0, #0x0
	str     r0, [r4, #0x1c]
.thumb
branch_225eb36: @ 225eb36 :thumb
	pop     {r4,pc}
@ 0x225eb38

.thumb
Function_225eb38: @ 225eb38 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x1c]
	cmp     r0, #0x0
	beq     branch_225eb4a
	bl      Function_200ebc8
	mov     r0, #0x0
	str     r0, [r4, #0x1c]
.thumb
branch_225eb4a: @ 225eb4a :thumb
	pop     {r4,pc}
@ 0x225eb4c

.thumb
Function_225eb4c: @ 225eb4c :thumb
	ldr     r0, [r0, #0x1c]
	cmp     r0, #0x0
	beq     branch_225eb56
	mov     r0, #0x1
	bx      lr
@ 0x225eb56

.thumb
branch_225eb56: @ 225eb56 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x225eb5a


.align 2, 0


.thumb
Function_225eb5c: @ 225eb5c :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x10]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_225eb70
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x225eb70

.thumb
branch_225eb70: @ 225eb70 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x225eb74

.thumb
Function_225eb74: @ 225eb74 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x10]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	beq     branch_225eb90
	ldr     r0, [r4, #0x10]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Call_RemoveTextInterpreterTaskFromTaskList
.thumb
branch_225eb90: @ 225eb90 :thumb
	mov     r0, r4
	bl      Function_225eb38
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_200e084
	mov     r0, r4
	bl      Function_201ad10
	pop     {r4,pc}
@ 0x225eba6


.align 2, 0


.thumb
Function_225eba8: @ 225eba8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_225e9c8
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_201c2b4
	pop     {r4,pc}
@ 0x225ebba


.align 2, 0


.thumb
Function_225ebbc: @ 225ebbc :thumb
	ldr     r3, [pc, #0x0] @ 0x225ebc0, (=0x225ea15)
	bx      r3
@ 0x225ebc0

.word Function_225ea14+1 @ =0x225ea15, 0x225ebc0
.thumb
Function_225ebc4: @ 225ebc4 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [r5, #0x10]
	mov     r4, r1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	beq     branch_225ebe4
	ldr     r0, [r5, #0x10]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Call_RemoveTextInterpreterTaskFromTaskList
.thumb
branch_225ebe4: @ 225ebe4 :thumb
	mov     r0, r5
	mov     r1, #0xf
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [r5, #0x18]
	mov     r1, r4
	bl      Function_2023810
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	ldr     r0, [r5, #0x14]
	mov     r1, #0x1
	str     r0, [sp, #0x4]
	str     r3, [sp, #0x8]
	ldr     r2, [r5, #0x18]
	mov     r0, r5
	bl      Function_201d738_CallInitTextInterpreter
	str     r0, [r5, #0x10]
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0x1f
	mov     r3, #0x2
	bl      Function_200e69c
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x225ec1e


.align 2, 0


.thumb
Function_225ec20: @ 225ec20 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x70
	mov     r5, r2
	mov     r7, r0
	mov     r4, r1
	mov     r0, #ShopGra_Narc
	mov     r1, r5
	bl      LoadFromNARC_8
	mov     r6, r0
	ldr     r0, [pc, #0x10c] @ 0x225ed44, (=0x1388)
	mov     r1, r6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x13
	str     r5, [sp, #0x8]
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r2, #0x4
	mov     r3, #0x0
	bl      Function_2009a4c
	str     r0, [r7, #0x40]
	ldr     r0, [pc, #0xf0] @ 0x225ed44, (=0x1388)
	mov     r1, r6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4d
	str     r5, [sp, #0xc]
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, #0xa
	mov     r3, #0x0
	bl      Function_2009b04
	str     r0, [r7, #0x44]
	ldr     r1, [pc, #0xd4] @ 0x225ed44, (=0x1388)
	mov     r0, #0x2
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	lsr     r0, r1, #4
	str     r5, [sp, #0x8]
	ldr     r0, [r4, r0]
	mov     r1, r6
	mov     r2, #0x5
	mov     r3, #0x0
	bl      Function_2009bc4
	str     r0, [r7, #0x48]
	ldr     r0, [pc, #0xb8] @ 0x225ed44, (=0x1388)
	mov     r1, r6
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x4f
	str     r5, [sp, #0x8]
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, #0x6
	mov     r3, #0x0
	bl      Function_2009bc4
	str     r0, [r7, #0x4c]
	mov     r0, r6
	bl      Call_FS_CloseFile
	ldr     r0, [r7, #0x40]
	bl      Function_200a3dc
	ldr     r0, [r7, #0x44]
	bl      Function_200a640
	ldr     r1, [pc, #0x8c] @ 0x225ed44, (=0x1388)
	mov     r0, #0x0
	str     r1, [sp, #0x0]
	mvn     r0, r0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r2, #0x0
	str     r2, [sp, #0xc]
	mov     r0, #0x13
	str     r2, [sp, #0x10]
	lsl     r0, r0, #4
	ldr     r3, [r4, r0]
	str     r3, [sp, #0x14]
	add     r3, r0, #0x4
	ldr     r3, [r4, r3]
	str     r3, [sp, #0x18]
	mov     r3, r0
	add     r3, #0x8
	ldr     r3, [r4, r3]
	add     r0, #0xc
	str     r3, [sp, #0x1c]
	ldr     r0, [r4, r0]
	mov     r3, r1
	str     r0, [sp, #0x20]
	str     r2, [sp, #0x24]
	str     r2, [sp, #0x28]
	add     r0, sp, #0x4c
	mov     r2, r1
	bl      Function_20093b4
	ldr     r0, [r4, #0x4]
	mov     r6, #0x0
	str     r0, [sp, #0x2c]
	add     r0, sp, #0x4c
	str     r0, [sp, #0x30]
	mov     r0, #0x1
	str     r0, [sp, #0x44]
	mov     r0, #0x3
	lsl     r0, r0, #18
	str     r5, [sp, #0x48]
	ldr     r4, [pc, #0x40] @ 0x225ed48, (=0x226d580)
	str     r6, [sp, #0x40]
	str     r0, [sp, #0x34]
	mov     r5, r7
.thumb
branch_225ed0e: @ 225ed0e :thumb
	ldrb    r0, [r4, #0x0]
	lsl     r0, r0, #12
	str     r0, [sp, #0x38]
	add     r0, sp, #0x2c
	bl      Function_2021b90
	str     r0, [r5, #0x50]
	mov     r1, r6
	bl      Function_2021d6c
	ldr     r0, [r5, #0x50]
	mov     r1, #0x1
	bl      Function_2021cc8
	ldr     r0, [r5, #0x50]
	mov     r1, #0x0
	bl      Function_2021cac
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x2
	blt     branch_225ed0e
	mov     r0, #0x0
	str     r0, [r7, #0x3c]
	add     sp, #0x70
	pop     {r3-r7,pc}
@ 0x225ed44

.word 0x1388 @ 0x225ed44
.word 0x226d580 @ 0x225ed48
.thumb
Function_225ed4c: @ 225ed4c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	ldr     r1, [r5, #0x34]
	cmp     r1, #0x0
	beq     branch_225ed5c
	bl      Function_225ede0
.thumb
branch_225ed5c: @ 225ed5c :thumb
	ldr     r0, [r5, #0x30]
	cmp     r0, #0x0
	beq     branch_225ed6c
	mov     r1, #0x0
	mov     r0, r5
	mov     r2, r1
	bl      Function_225ef14
.thumb
branch_225ed6c: @ 225ed6c :thumb
	mov     r7, #0x0
	mov     r4, r5
.thumb
branch_225ed70: @ 225ed70 :thumb
	ldr     r0, [r4, #0x50]
	bl      Function_2021bd4
	mov     r0, #0x0
	str     r0, [r4, #0x50]
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r7, #0x2
	blt     branch_225ed70
	ldr     r0, [r5, #0x40]
	bl      Function_200a4e4
	ldr     r0, [r5, #0x44]
	bl      Function_200a6dc
	mov     r7, #0x13
	mov     r4, #0x0
	lsl     r7, r7, #4
.thumb
branch_225ed94: @ 225ed94 :thumb
	ldr     r0, [r6, r7]
	ldr     r1, [r5, #0x40]
	bl      Function_2009d68
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r4, #0x4
	blt     branch_225ed94
	pop     {r3-r7,pc}
@ 0x225eda8

.thumb
Function_225eda8: @ 225eda8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x34]
	mov     r4, r1
	mov     r7, r2
	mov     r6, r3
	cmp     r0, #0x0
	beq     branch_225edbc
	bl      ErrorHandling
.thumb
branch_225edbc: @ 225edbc :thumb
	mov     r0, r4
	mov     r1, r7
	bl      Function_2013a04
	str     r0, [r5, #0x34]
	mov     r1, #0x0
	strh    r4, [r5, #0x38]
	cmp     r4, #0x0
	bls     branch_225edde
	mov     r2, r1
.thumb
branch_225edd0: @ 225edd0 :thumb
	ldr     r0, [r5, #0x34]
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r0, r0, r2
	str     r6, [r0, #0x4]
	add     r2, #0x8
	cmp     r1, r4
	bcc     branch_225edd0
.thumb
branch_225edde: @ 225edde :thumb
	pop     {r3-r7,pc}
@ 0x225ede0

.thumb
Function_225ede0: @ 225ede0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x34]
	cmp     r0, #0x0
	beq     branch_225edf4
	bl      Function_2013a3c
	mov     r0, #0x0
	str     r0, [r4, #0x34]
	strh    r0, [r4, #0x38]
.thumb
branch_225edf4: @ 225edf4 :thumb
	pop     {r4,pc}
@ 0x225edf6


.align 2, 0


.thumb
Function_225edf8: @ 225edf8 :thumb
	ldr     r3, [pc, #0x4] @ 0x225ee00, (=Function_2013a6c+1)
	ldr     r0, [r0, #0x34]
	bx      r3
@ 0x225edfe

.align 2
.word Function_2013a6c+1 @ 0x225ee00



.thumb
Function_225ee04: @ 225ee04 :thumb
	ldr     r0, [r0, #0x34]
	bx      lr
@ 0x225ee08


.thumb
Function_225ee08: @ 225ee08 :thumb
	push    {r3,r4}
	ldrh    r2, [r0, #0x38]
	mov     r3, #0x0
	cmp     r2, #0x0
	ble     branch_225ee2a
	ldr     r4, [r0, #0x34]
.thumb
branch_225ee14: @ 225ee14 :thumb
	ldr     r2, [r4, #0x4]
	cmp     r1, r2
	bne     branch_225ee20
	mov     r0, #0x1
	pop     {r3,r4}
	bx      lr
@ 0x225ee20

.thumb
branch_225ee20: @ 225ee20 :thumb
	ldrh    r2, [r0, #0x38]
	.hword  0x1c5b @ add r3, r3, #0x1
	add     r4, #0x8
	cmp     r3, r2
	blt     branch_225ee14
.thumb
branch_225ee2a: @ 225ee2a :thumb
	mov     r0, #0x0
	pop     {r3,r4}
	bx      lr
@ 0x225ee30

.thumb
Function_225ee30: @ 225ee30 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r5, #0x30]
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3
	cmp     r0, #0x0
	beq     branch_225ee46
	bl      ErrorHandling
.thumb
branch_225ee46: @ 225ee46 :thumb
	ldrh    r0, [r4, #0x12]
	lsl     r0, r0, #1
	cmp     r0, #0x12
	blt     branch_225ee52
	bl      ErrorHandling
.thumb
branch_225ee52: @ 225ee52 :thumb
	mov     r3, r4
	mov     r2, r5
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	mov     r1, r5
	add     r1, #0x20
	str     r1, [r5, #0xc]
	ldrh    r0, [r4, #0x10]
	add     r3, sp, #0x18
	mov     r2, #0x1
	strh    r0, [r5, #0x3a]
	ldr     r0, [pc, #0x5c] @ 0x225eed4, (=0x225ef59)
	str     r0, [r5, #0x4]
	ldrb    r0, [r3, #0x1c]
	str     r0, [sp, #0x0]
	add     r0, sp, #0x38
	ldrb    r0, [r0, #0x0]
	str     r0, [sp, #0x4]
	ldrh    r0, [r4, #0x12]
	lsl     r0, r0, #25
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	mov     r0, #0x5
	str     r0, [sp, #0xc]
	mov     r0, #0xca
	str     r0, [sp, #0x10]
	ldrb    r3, [r3, #0x18]
	ldr     r0, [r6, #0x0]
	bl      Function_201a7e8
	mov     r0, r5
	add     r0, #0x20
	mov     r1, #0xf
	bl      Function_201ada4_ClearTextBox
	mov     r0, r5
	add     r0, #0x20
	mov     r1, #0x1
	mov     r2, #0x55
	mov     r3, #0x3
	bl      Function_200dc48
	add     r2, sp, #0x18
	ldr     r3, [sp, #0x2c]
	ldrh    r2, [r2, #0x10]
	lsl     r3, r3, #24
	mov     r0, r5
	mov     r1, r7
	lsr     r3, r3, #24
	bl      Function_200112c
	str     r0, [r5, #0x30]
	add     r5, #0x20
	mov     r0, r5
	bl      Function_201a9a4
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x225eed2


.align 2


.word 0x225ef59 @ 0x225eed4
.thumb
Function_225eed8: @ 225eed8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x30]
	cmp     r0, #0x0
	bne     branch_225eee8
	mov     r0, #0x1
	mvn     r0, r0
	pop     {r3-r5,pc}
@ 0x225eee8

.thumb
branch_225eee8: @ 225eee8 :thumb
	bl      Function_2001288
	mov     r4, r0
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r4, r0
	beq     branch_225eefc
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r4, r0
	bne     branch_225ef04
.thumb
branch_225eefc: @ 225eefc :thumb
	mov     r0, r5
	bl      Function_225ef70
	b       branch_225ef0a
@ 0x225ef04

.thumb
branch_225ef04: @ 225ef04 :thumb
	ldr     r0, [pc, #0x8] @ 0x225ef10, (=0x5dc)
	bl      Function_2005748
.thumb
branch_225ef0a: @ 225ef0a :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x225ef0e


.align 2


.word 0x5dc @ 0x225ef10
.thumb
Function_225ef14: @ 225ef14 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x30]
	cmp     r0, #0x0
	beq     branch_225ef56
	bl      Function_2001384
	mov     r0, #0x0
	str     r0, [r5, #0x30]
	mov     r0, r5
	add     r0, #0x20
	mov     r1, #0x1
	bl      Function_200dc9c
	mov     r0, r5
	add     r0, #0x20
	bl      Function_201ad10
	mov     r0, r5
	add     r0, #0x20
	bl      Function_201a8fc
	mov     r4, #0x0
	str     r4, [r5, #0x3c]
	mov     r6, r4
.thumb
branch_225ef46: @ 225ef46 :thumb
	ldr     r0, [r5, #0x50]
	mov     r1, r6
	bl      Function_2021cac
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x2
	blt     branch_225ef46
.thumb
branch_225ef56: @ 225ef56 :thumb
	pop     {r4-r6,pc}
@ 0x225ef58

.thumb
Function_225ef58: @ 225ef58 :thumb
	push    {r3,lr}
	cmp     r2, #0x0
	bne     branch_225ef64
	ldr     r0, [pc, #0x8] @ 0x225ef68, (=0x5dc)
	bl      Function_2005748
.thumb
branch_225ef64: @ 225ef64 :thumb
	pop     {r3,pc}
@ 0x225ef66


.align 2


.word 0x5dc @ 0x225ef68
.thumb
Function_225ef6c: @ 225ef6c :thumb
	str     r1, [r0, #0x3c]
	bx      lr
@ 0x225ef70

.thumb
Function_225ef70: @ 225ef70 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r0, [r4, #0x3c]
	cmp     r0, #0x0
	bne     branch_225ef90
	ldr     r0, [r4, #0x50]
	mov     r1, #0x0
	bl      Function_2021cac
	ldr     r0, [r4, #0x54]
	mov     r1, #0x0
	bl      Function_2021cac
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x225ef90

.thumb
branch_225ef90: @ 225ef90 :thumb
	ldr     r0, [r4, #0x30]
	add     r1, sp, #0x0
	mov     r2, #0x0
	bl      Function_20014dc
	add     r0, sp, #0x0
	ldrh    r0, [r0, #0x0]
	cmp     r0, #0x0
	ldr     r0, [r4, #0x50]
	bne     branch_225efac
	mov     r1, #0x0
	bl      Function_2021cac
	b       branch_225efb2
@ 0x225efac

.thumb
branch_225efac: @ 225efac :thumb
	mov     r1, #0x1
	bl      Function_2021cac
.thumb
branch_225efb2: @ 225efb2 :thumb
	add     r0, sp, #0x0
	ldrh    r1, [r0, #0x0]
	ldrh    r0, [r4, #0x3a]
	.hword  0x1fc0 @ sub r0, r0, #0x7
	cmp     r1, r0
	ldr     r0, [r4, #0x54]
	blt     branch_225efca
	mov     r1, #0x0
	bl      Function_2021cac
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x225efca

.thumb
branch_225efca: @ 225efca :thumb
	mov     r1, #0x1
	bl      Function_2021cac
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x225efd4

.thumb
Function_225efd4: @ 225efd4 :thumb
	bx      lr
@ 0x225efd6


.align 2, 0


.thumb
Function_225efd8: @ 225efd8 :thumb
	ldr     r3, [pc, #0x0] @ 0x225efdc, (=0x225f025)
	bx      r3
@ 0x225efdc

.word Function_225f024+1 @ =0x225f025, 0x225efdc
.thumb
Function_225efe0: @ 225efe0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	mov     r4, r0
	add     r0, sp, #0x10
	ldrb    r2, [r0, #0x10]
	str     r2, [sp, #0x0]
	ldrb    r2, [r0, #0x14]
	str     r2, [sp, #0x4]
	ldrb    r0, [r0, #0x18]
	mov     r2, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x5
	str     r0, [sp, #0xc]
	mov     r0, #0xca
	str     r0, [sp, #0x10]
	ldr     r0, [r1, #0x0]
	mov     r1, r4
	bl      Function_201a7e8
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x55
	mov     r3, #0x3
	bl      Function_200dc48
	mov     r0, r4
	mov     r1, #0xf
	bl      Function_201ada4_ClearTextBox
	mov     r0, r4
	bl      Function_201a9a4
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x225f024

.thumb
Function_225f024: @ 225f024 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_201a7cc
	cmp     r0, #0x1
	bne     branch_225f044
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_200dc9c
	mov     r0, r4
	bl      Function_201ad10
	mov     r0, r4
	bl      Function_201a8fc
.thumb
branch_225f044: @ 225f044 :thumb
	pop     {r4,pc}
@ 0x225f046


.align 2, 0


.thumb
Function_225f048: @ 225f048 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r6, r1
	str     r3, [sp, #0x0]
	mov     r5, r2
	mov     r1, #0xff
	str     r1, [sp, #0x4]
	ldr     r1, [pc, #0x1c] @ 0x225f074, (=0x1020f)
	mov     r4, r0
	str     r1, [sp, #0x8]
	mov     r1, #0x0
	mov     r2, r6
	mov     r3, r5
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r4
	bl      Function_201a9a4
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x225f072


.align 2


.word 0x1020f @ 0x225f074
.thumb
Function_225f078: @ 225f078 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r1
	str     r3, [sp, #0x0]
	add     r1, sp, #0x8
	mov     r4, r2
	ldrh    r1, [r1, #0x10]
	mov     r2, r5
	mov     r3, r4
	str     r1, [sp, #0x4]
	mov     r1, #0xf
	bl      Function_201ae78
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x225f096


.align 2, 0


.thumb
Function_225f098: @ 225f098 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	mov     r6, r2
	cmp     r0, #0x0
	beq     branch_225f0aa
	bl      ErrorHandling
.thumb
branch_225f0aa: @ 225f0aa :thumb
	mov     r0, #0x2
	mov     r1, r6
	bl      Function_2013a04
	str     r0, [r5, #0x0]
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x43
	bl      Function_225f288
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	mov     r2, #0x0
	bl      Function_2013a6c
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x42
	bl      Function_225f288
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	mov     r2, #0x1
	bl      Function_2013a6c
	ldr     r3, [pc, #0x1c] @ 0x225f0fc, (=0x226d644)
	add     r2, r5, #0x4
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	mov     r0, #0x2
	strh    r0, [r5, #0x14]
	ldr     r0, [r5, #0x0]
	str     r0, [r5, #0x4]
	pop     {r4-r6,pc}
@ 0x225f0fa


.align 2


.word 0x226d644 @ 0x225f0fc
.thumb
Function_225f100: @ 225f100 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_225f112
	bl      Function_2013a3c
	mov     r0, #0x0
	str     r0, [r4, #0x0]
.thumb
branch_225f112: @ 225f112 :thumb
	pop     {r4,pc}
@ 0x225f114

.thumb
Function_225f114: @ 225f114 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	mov     r3, #0x4
	mov     r4, r0
	str     r3, [sp, #0x0]
	mov     r0, #0x17
	str     r0, [sp, #0x4]
	mov     r0, #0x10
	str     r0, [sp, #0x8]
	mov     r0, #0x5
	str     r0, [sp, #0xc]
	mov     r0, #0x5e
	str     r0, [sp, #0x10]
	ldr     r0, [r1, #0x0]
	mov     r1, r4
	mov     r2, #0x1
	bl      Function_201a7e8
	mov     r0, r4
	mov     r1, #0xf
	bl      Function_201ada4_ClearTextBox
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x225f144

.thumb
Function_225f144: @ 225f144 :thumb
	ldr     r3, [pc, #0x0] @ 0x225f148, (=Function_201a8fc+1)
	bx      r3
@ 0x225f148

.word Function_201a8fc+1 @ 0x225f148
.thumb
Function_225f14c: @ 225f14c :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r2, r1
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r3, #0xff
	str     r3, [sp, #0x4]
	ldr     r3, [pc, #0x24] @ 0x225f180, (=0x1020f)
	mov     r4, r0
	str     r3, [sp, #0x8]
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x55
	mov     r3, #0x3
	bl      Function_200dc48
	mov     r0, r4
	bl      Function_201a9a4
	add     sp, #0x10
	pop     {r4,pc}
@ 0x225f17e


.align 2


.word 0x1020f @ 0x225f180
.thumb
Function_225f184: @ 225f184 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r5, r1
	bl      Function_20382f8
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r1, [r4, #0x4]
	bl      0x22316f4
	mov     r7, r0
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x0]
	mov     r0, r5
	mov     r2, #0x5
	mov     r3, #0x0
	bl      Function_225f2a8
	mov     r0, r5
	mov     r1, #0x2
	mov     r2, r7
	bl      Function_225f288
	mov     r1, r0
	mov     r0, r6
	bl      Function_225f14c
	pop     {r3-r7,pc}
@ 0x225f1be


.align 2, 0


.thumb
Function_225f1c0: @ 225f1c0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, r2
	mov     r4, r1
	bl      0x223270c
	mov     r1, r0
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r2, #0x5
	mov     r3, #0x0
	bl      Function_225f2a8
	mov     r0, r4
	mov     r1, #0x2
	mov     r2, #0x20
	bl      Function_225f288
	mov     r1, r0
	mov     r0, r5
	bl      Function_225f14c
	pop     {r3-r5,pc}
@ 0x225f1f0

.thumb
Function_225f1f0: @ 225f1f0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r1
	mov     r1, #0x2
	mov     r2, #0xe
	bl      Function_225f288
	mov     r1, r0
	mov     r0, r4
	bl      Function_225f14c
	pop     {r4,pc}
@ 0x225f208

.thumb
Function_225f208: @ 225f208 :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	str     r0, [sp, #0x0]
	mov     r0, #0x8
	mov     r1, #0x40
	mov     r2, r7
	bl      Function_200b368
	ldr     r1, [sp, #0x0]
	ldr     r4, [pc, #0x3c] @ 0x225f258, (=0x226d5ac)
	str     r0, [r1, #0x0]
	mov     r6, #0x0
	mov     r5, r1
.thumb
branch_225f222: @ 225f222 :thumb
	ldr     r2, [r4, #0x0]
	mov     r0, #0x1
	mov     r1, #0x1a
	mov     r3, r7
	bl      LoadFromNARC_9
	str     r0, [r5, #0x4]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x4
	blt     branch_225f222
	mov     r0, #0x1e
	lsl     r0, r0, #4
	mov     r1, r7
	bl      Function_2023790
	ldr     r1, [sp, #0x0]
	str     r0, [r1, #0x14]
	mov     r0, #0x1e
	lsl     r0, r0, #4
	mov     r1, r7
	bl      Function_2023790
	ldr     r1, [sp, #0x0]
	str     r0, [r1, #0x18]
	pop     {r3-r7,pc}
@ 0x225f258

.word 0x226d5ac @ 0x225f258
.thumb
Function_225f25c: @ 225f25c :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	ldr     r0, [r6, #0x0]
	bl      Function_200b3f0
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_225f26a: @ 225f26a :thumb
	ldr     r0, [r5, #0x4]
	bl      Function_200b190
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_225f26a
	ldr     r0, [r6, #0x14]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [r6, #0x18]
	bl      Function_20237bc_FreeMsg
	pop     {r4-r6,pc}
@ 0x225f286


.align 2, 0


.thumb
Function_225f288: @ 225f288 :thumb
	push    {r4,lr}
	mov     r4, r0
	lsl     r0, r1, #2
	add     r0, r4, r0
	mov     r1, r2
	ldr     r0, [r0, #0x4]
	ldr     r2, [r4, #0x18]
	bl      Function_200b1b8_CallMsgDecrypt
	ldr     r0, [r4, #0x0]
	ldr     r1, [r4, #0x14]
	ldr     r2, [r4, #0x18]
	bl      Function_200c388
	ldr     r0, [r4, #0x14]
	pop     {r4,pc}
@ 0x225f2a8

.thumb
Function_225f2a8: @ 225f2a8 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r1
	ldr     r1, [sp, #0x18]
	mov     r4, r2
	str     r1, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r1, r3
	ldr     r0, [r0, #0x0]
	mov     r2, r5
	mov     r3, r4
	bl      Function_200b60c
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x225f2c8

.thumb
Function_225f2c8: @ 225f2c8 :thumb
	mov     r3, r1
	mov     r1, r2
	mov     r2, r3
	ldr     r3, [pc, #0x4] @ 0x225f2d4, (=Function_200b498+1)
	ldr     r0, [r0, #0x0]
	bx      r3
@ 0x225f2d4

.word Function_200b498+1 @ 0x225f2d4



.thumb
Function_225f2d8: @ 225f2d8 :thumb
	mov     r3, r1
	mov     r1, r2
	mov     r2, r3
	ldr     r3, [pc, #0x4] @ 0x225f2e4, (=Function_200c0b0+1)
	ldr     r0, [r0, #0x0]
	bx      r3
@ 0x225f2e4

.word Function_200c0b0+1 @ 0x225f2e4
.thumb
Function_225f2e8: @ 225f2e8 :thumb
	mov     r3, r1
	mov     r1, r2
	mov     r2, r3
	ldr     r3, [pc, #0x4] @ 0x225f2f4, (=Function_200c0e8+1)
	ldr     r0, [r0, #0x0]
	bx      r3
@ 0x225f2f4

.word Function_200c0e8+1 @ 0x225f2f4



.thumb
Function_225f2f8: @ 225f2f8 :thumb
	mov     r3, r1
	mov     r1, r2
	mov     r2, r3
	ldr     r3, [pc, #0x4] @ 0x225f304, (=Function_200c120+1)
	ldr     r0, [r0, #0x0]
	bx      r3
@ 0x225f304

.word Function_200c120+1 @ 0x225f304



.thumb
Function_225f308: @ 225f308 :thumb
	mov     r3, r1
	mov     r1, r2
	mov     r2, r3
	ldr     r3, [pc, #0x4] @ 0x225f314, (=Function_200bdd0+1)
	ldr     r0, [r0, #0x0]
	bx      r3
@ 0x225f314

.word Function_200bdd0+1 @ 0x225f314



.thumb
Function_225f318: @ 225f318 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r2
	mov     r1, r3
	ldr     r0, [r0, #0x0]
	mov     r2, r5
	mov     r3, r4
	bl      Function_200be08
	pop     {r3-r5,pc}
@ 0x225f32c

.thumb
Function_225f32c: @ 225f32c :thumb
	ldr     r3, [pc, #0x4] @ 0x225f334, (=Function_200be48+1)
	ldr     r0, [r0, #0x0]
	bx      r3
@ 0x225f332

.align 2
.word Function_200be48+1 @ 0x225f334



.thumb
Function_225f338: @ 225f338 :thumb
	ldr     r3, [pc, #0x4] @ 0x225f340, (=Function_200c41c+1)
	ldr     r0, [r0, #0x0]
	bx      r3
@ 0x225f33e

.align 2
.word Function_200c41c+1 @ 0x225f340



.thumb
Function_225f344: @ 225f344 :thumb
	mov     r1, #0xf6
	mov     r2, #0x1
	lsl     r1, r1, #2
	str     r2, [r0, r1]
	bx      lr
@ 0x225f34e


.align 2, 0


.thumb
Function_225f350: @ 225f350 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	ldr     r4, [sp, #0x20]
	mov     r5, r0
	mov     r0, r3
	mov     r7, r1
	mov     r6, r2
	bl      GetGender
	str     r0, [sp, #0x4]

	mov     r0, #WifiLobbyOther_Narc
	mov     r1, r4
	bl      LoadFromNARC_8
	mov     r2, #0x53
	lsl     r2, r2, #2
	str     r0, [r5, r2]
	str     r4, [sp, #0x0]
	ldr     r2, [r5, r2]
	ldr     r3, [sp, #0x4]
	mov     r0, r5
	mov     r1, r6
	bl      Function_225f9bc
	mov     r2, #0x53
	lsl     r2, r2, #2
	mov     r0, r5
	ldr     r2, [r5, r2]
	add     r0, #0x8
	mov     r1, r6
	mov     r3, r4
	bl      Function_225fa84
	mov     r2, #0x45
	lsl     r2, r2, #2
	add     r0, r5, r2
	add     r2, #0x38
	ldr     r2, [r5, r2]
	mov     r1, r6
	mov     r3, r4
	bl      Function_2260744
	mov     r1, #0x0
	strb    r1, [r5, #0x2]
	strb    r1, [r5, #0x1]
	ldrh    r0, [r7, #0x6]
	cmp     r0, #0x0
	bne     branch_225f3dc
	mov     r0, #0x4
	strb    r1, [r5, #0x0]
	bl      Function_201975c
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
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x225f3dc

.thumb
branch_225f3dc: @ 225f3dc :thumb
	mov     r0, #0x5
	strb    r0, [r5, #0x0]
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x225f3e4

.thumb
Function_225f3e4: @ 225f3e4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, #0x45
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r6, r1
	mov     r4, r2
	bl      Function_22607a8
	mov     r0, r5
	add     r0, #0x8
	mov     r1, r6
	mov     r2, r4
	bl      Function_225faa8
	mov     r0, r5
	mov     r1, r4
	bl      Function_225fa10
	mov     r0, #0x53
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Call_FS_CloseFile
	pop     {r4-r6,pc}
@ 0x225f416


.align 2, 0


.thumb
Function_225f418: @ 225f418 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x50
	mov     r5, r1
	mov     r4, r0
	mov     r0, r5
	str     r0, [sp, #0x38]
	add     r0, #0x3c
	str     r0, [sp, #0x38]
	mov     r0, #0xb7
	lsl     r0, r0, #2
	ldrb    r1, [r4, #0x0]
	mov     r7, r3
	ldr     r6, [r5, #0x34]
	str     r0, [sp, #0x3c]
	cmp     r1, #0xa
	bhi     branch_225f4fa
	add     r0, r1, r1
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x225f444

Jumppoints_225f444:
.hword branch_225f45a - Jumppoints_225f444 - 2
.hword branch_225f468 - Jumppoints_225f444 - 2
.hword branch_225f486 - Jumppoints_225f444 - 2
.hword branch_225f4d4 - Jumppoints_225f444 - 2
.hword branch_225f4f2 - Jumppoints_225f444 - 2
.hword branch_225f506 - Jumppoints_225f444 - 2
.hword branch_225f5e2 - Jumppoints_225f444 - 2
.hword branch_225f600 - Jumppoints_225f444 - 2
.hword branch_225f648 - Jumppoints_225f444 - 2
.hword branch_225f74e - Jumppoints_225f444 - 2
.hword branch_225f780 - Jumppoints_225f444 - 2
.thumb
branch_225f45a: @ 225f45a :thumb
	ldrh    r0, [r4, #0x6]
	cmp     r0, #0x1
	bne     branch_225f4fa
	add     r0, r1, #0x1
	add     sp, #0x50
	strb    r0, [r4, #0x0]
	pop     {r3-r7,pc}
@ 0x225f468

.thumb
branch_225f468: @ 225f468 :thumb
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r1, #0x0
	ldr     r3, [pc, #0x31c] @ 0x225f790, (=0x7fff)
	str     r7, [sp, #0x8]
	mov     r2, r1
	bl      Function_200f174
	ldrb    r0, [r4, #0x0]
	add     sp, #0x50
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	pop     {r3-r7,pc}
@ 0x225f486

.thumb
branch_225f486: @ 225f486 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x1
	bne     branch_225f4fa
	mov     r0, r6
	bl      0x222e3bc
	mov     r2, #0xb7
	lsl     r2, r2, #2
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x38]
	mov     r0, r4
	add     r2, r5, r2
	mov     r3, r7
	bl      Function_225f8ac
	mov     r0, #0x4
	strb    r0, [r4, #0x1]
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff74
	mov     r0, #0x2
	mov     r1, #0x1
	bl      Function_201ff74
	mov     r0, #0x4
	mov     r1, #0x1
	bl      Function_201ff74
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff74
	ldrb    r0, [r4, #0x0]
	add     sp, #0x50
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	pop     {r3-r7,pc}
@ 0x225f4d4

.thumb
branch_225f4d4: @ 225f4d4 :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	ldr     r3, [pc, #0x2b0] @ 0x225f790, (=0x7fff)
	str     r7, [sp, #0x8]
	mov     r0, #0x4
	mov     r2, r1
	bl      Function_200f174
	ldrb    r0, [r4, #0x0]
	add     sp, #0x50
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	pop     {r3-r7,pc}
@ 0x225f4f2

.thumb
branch_225f4f2: @ 225f4f2 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x1
	beq     branch_225f4fc
.thumb
branch_225f4fa: @ 225f4fa :thumb
	b       branch_225f78c
@ 0x225f4fc

.thumb
branch_225f4fc: @ 225f4fc :thumb
	ldrb    r0, [r4, #0x0]
	add     sp, #0x50
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	pop     {r3-r7,pc}
@ 0x225f506

.thumb
branch_225f506: @ 225f506 :thumb
	cmp     r2, #0x1
	beq     branch_225f608
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x4
	bhi     branch_225f5d2
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x225f51c

Jumppoints_225f51c:
.hword branch_225f5d2 - Jumppoints_225f51c - 2
.hword branch_225f526 - Jumppoints_225f51c - 2
.hword branch_225f5c2 - Jumppoints_225f51c - 2
.hword branch_225f542 - Jumppoints_225f51c - 2
.hword branch_225f5d2 - Jumppoints_225f51c - 2
.thumb
branch_225f526: @ 225f526 :thumb
	mov     r2, #0x45
	lsl     r2, r2, #2
	add     r0, r4, r2
	add     r2, #0x38
	ldr     r1, [sp, #0x38]
	ldr     r2, [r4, r2]
	bl      Function_22607d4
	cmp     r0, #0x1
	bne     branch_225f5d2
	mov     r0, r5
	bl      Function_225f344
	b       branch_225f5d2
@ 0x225f542

.thumb
branch_225f542: @ 225f542 :thumb
	ldr     r2, [pc, #0x250] @ 0x225f794, (=0x153)
	ldrb    r0, [r4, r2]
	cmp     r0, #0x0
	beq     branch_225f56e
	.hword  0x1ed1 @ sub r1, r2, #0x3
	mov     r0, #0xf7
	.hword  0x1e52 @ sub r2, r2, #0x1
	lsl     r0, r0, #2
	ldrh    r1, [r4, r1]
	ldrb    r2, [r4, r2]
	ldr     r0, [r5, r0]
	bl      Function_226c810
	cmp     r0, #0x0
	bne     branch_225f56e
	ldr     r0, [pc, #0x230] @ 0x225f794, (=0x153)
	mov     r1, #0x0
	strb    r1, [r4, r0]
	sub     r0, #0x3f
	add     r0, r4, r0
	bl      Function_2260a68
.thumb
branch_225f56e: @ 225f56e :thumb
	mov     r2, #0x45
	lsl     r2, r2, #2
	add     r0, r4, r2
	add     r2, #0x38
	ldr     r1, [sp, #0x38]
	ldr     r2, [r4, r2]
	mov     r3, r7
	bl      Function_22607d4
	cmp     r0, #0x1
	bne     branch_225f5d2
	mov     r0, r6
	bl      0x222e338
	mov     r1, r0
	mov     r0, r6
	bl      0x222ebd4
	mov     r0, r6
	bl      0x222ec50
	mov     r0, r6
	bl      0x222e338
	mov     r1, r0
	mov     r0, r6
	bl      0x222eba4
	add     r1, sp, #0x4c
	add     r2, sp, #0x48
	bl      0x222ec04
	ldr     r0, [pc, #0x1e4] @ 0x225f794, (=0x153)
	mov     r1, #0x1
	strb    r1, [r4, r0]
	.hword  0x1ec1 @ sub r1, r0, #0x3
	ldr     r2, [sp, #0x4c]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r2, [r4, r1]
	ldr     r1, [sp, #0x48]
	strb    r1, [r4, r0]
	b       branch_225f5d2
@ 0x225f5c2

.thumb
branch_225f5c2: @ 225f5c2 :thumb
	ldr     r1, [sp, #0x3c]
	mov     r0, r4
	add     r1, #0x3c
	str     r1, [sp, #0x3c]
	add     r0, #0x8
	add     r1, r5, r1
	bl      Function_225facc
.thumb
branch_225f5d2: @ 225f5d2 :thumb
	ldrb    r0, [r4, #0x2]
	cmp     r0, #0x0
	beq     branch_225f608
	ldrb    r0, [r4, #0x0]
	add     sp, #0x50
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	pop     {r3-r7,pc}
@ 0x225f5e2

.thumb
branch_225f5e2: @ 225f5e2 :thumb
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r2, #0x0
	str     r7, [sp, #0x8]
	mov     r0, #0x4
	mov     r3, r2
	bl      Function_200f174
	ldrb    r0, [r4, #0x0]
	add     sp, #0x50
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	pop     {r3-r7,pc}
@ 0x225f600

.thumb
branch_225f600: @ 225f600 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x1
	beq     branch_225f60a
.thumb
branch_225f608: @ 225f608 :thumb
	b       branch_225f78c
@ 0x225f60a

.thumb
branch_225f60a: @ 225f60a :thumb
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x4
	bhi     branch_225f63e
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x225f61c

Jumppoints_225f61c:
.hword branch_225f63e - Jumppoints_225f61c - 2
.hword branch_225f626 - Jumppoints_225f61c - 2
.hword branch_225f630 - Jumppoints_225f61c - 2
.hword branch_225f626 - Jumppoints_225f61c - 2
.hword branch_225f626 - Jumppoints_225f61c - 2
.thumb
branch_225f626: @ 225f626 :thumb
	ldr     r1, [sp, #0x38]
	mov     r0, r4
	bl      Function_225f920
	b       branch_225f63e
@ 0x225f630

.thumb
branch_225f630: @ 225f630 :thumb
	mov     r1, #0xc6
	lsl     r1, r1, #2
	ldr     r2, [sp, #0x38]
	mov     r0, r4
	add     r1, r5, r1
	bl      Function_225f89c
.thumb
branch_225f63e: @ 225f63e :thumb
	ldrb    r0, [r4, #0x0]
	add     sp, #0x50
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	pop     {r3-r7,pc}
@ 0x225f648

.thumb
branch_225f648: @ 225f648 :thumb
	ldrb    r0, [r4, #0x2]
	cmp     r0, #0x4
	bhi     branch_225f740
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x225f65a

Jumppoints_225f65a:
.hword branch_225f740 - Jumppoints_225f65a - 2
.hword branch_225f664 - Jumppoints_225f65a - 2
.hword branch_225f67e - Jumppoints_225f65a - 2
.hword branch_225f710 - Jumppoints_225f65a - 2
.hword branch_225f664 - Jumppoints_225f65a - 2
.thumb
branch_225f664: @ 225f664 :thumb
	mov     r0, r6
	bl      0x222e3bc
	mov     r2, #0xb7
	lsl     r2, r2, #2
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x38]
	mov     r0, r4
	add     r2, r5, r2
	mov     r3, r7
	bl      Function_225f8ac
	b       branch_225f740
@ 0x225f67e

.thumb
branch_225f67e: @ 225f67e :thumb
	mov     r0, r6
	bl      0x222e3bc
	str     r0, [sp, #0x28]
	ldrb    r0, [r4, #0x3]
	str     r0, [sp, #0x24]
	mov     r0, r6
	bl      0x222e338
	ldr     r1, [sp, #0x24]
	cmp     r1, r0
	bne     branch_225f6a4
	mov     r0, r6
	bl      0x222e3bc
	str     r0, [sp, #0x20]
	mov     r0, #0x1
	str     r0, [sp, #0x2c]
	b       branch_225f6b0
@ 0x225f6a4

.thumb
branch_225f6a4: @ 225f6a4 :thumb
	mov     r0, r6
	bl      0x222e374
	str     r0, [sp, #0x20]
	mov     r0, #0x0
	str     r0, [sp, #0x2c]
.thumb
branch_225f6b0: @ 225f6b0 :thumb
	ldrb    r1, [r4, #0x3]
	mov     r0, r6
	bl      0x222e924
	str     r0, [sp, #0x34]
	ldrh    r0, [r4, #0x4]
	cmp     r0, #0x1
	bne     branch_225f6dc
	ldrb    r1, [r4, #0x3]
	mov     r0, r6
	bl      0x222e944
	str     r0, [sp, #0x30]
	ldrb    r1, [r4, #0x3]
	mov     r0, r6
	bl      0x222e954
	cmp     r0, #0x0
	bne     branch_225f6e0
	mov     r1, #0x0
	str     r1, [sp, #0x30]
	b       branch_225f6e0
@ 0x225f6dc

.thumb
branch_225f6dc: @ 225f6dc :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x30]
.thumb
branch_225f6e0: @ 225f6e0 :thumb
	ldr     r1, [sp, #0x2c]
	ldr     r3, [sp, #0x3c]
	str     r1, [sp, #0x0]
	ldr     r1, [sp, #0x20]
	str     r7, [sp, #0x4]
	str     r1, [sp, #0x8]
	ldr     r1, [sp, #0x28]
	ldr     r2, [sp, #0x38]
	str     r1, [sp, #0xc]
	ldr     r1, [sp, #0x34]
	add     r3, r5, r3
	str     r1, [sp, #0x10]
	ldr     r1, [sp, #0x30]
	str     r1, [sp, #0x14]
	mov     r1, #0xc6
	str     r0, [sp, #0x18]
	mov     r0, #0x1
	lsl     r1, r1, #2
	str     r0, [sp, #0x1c]
	mov     r0, r4
	add     r1, r5, r1
	bl      Function_225f844
	b       branch_225f740
@ 0x225f710

.thumb
branch_225f710: @ 225f710 :thumb
	mov     r0, r6
	bl      0x222e338
	mov     r1, r0
	mov     r0, r6
	bl      0x222eba4
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	bne     branch_225f72c
	bl      ErrorHandling
	mov     r0, #0x0
.thumb
branch_225f72c: @ 225f72c :thumb
	add     r1, sp, #0x44
	add     r2, sp, #0x40
	bl      0x222ec04
	ldr     r1, [sp, #0x38]
	ldr     r3, [sp, #0x40]
	mov     r0, r4
	mov     r2, r7
	bl      Function_225f8f0
.thumb
branch_225f740: @ 225f740 :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x2]
	ldrb    r0, [r4, #0x0]
	add     sp, #0x50
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	pop     {r3-r7,pc}
@ 0x225f74e

.thumb
branch_225f74e: @ 225f74e :thumb
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	str     r7, [sp, #0x8]
	mov     r0, #0x4
	mov     r2, r1
	mov     r3, #0x0
	bl      Function_200f174
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x2
	bne     branch_225f776
	mov     r1, #0xc6
	mov     r0, r4
	lsl     r1, r1, #2
	add     r0, #0x8
	add     r1, r5, r1
	bl      Function_225facc
.thumb
branch_225f776: @ 225f776 :thumb
	ldrb    r0, [r4, #0x0]
	add     sp, #0x50
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	pop     {r3-r7,pc}
@ 0x225f780

.thumb
branch_225f780: @ 225f780 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x1
	bne     branch_225f78c
	mov     r0, #0x5
	strb    r0, [r4, #0x0]
.thumb
branch_225f78c: @ 225f78c :thumb
	add     sp, #0x50
	pop     {r3-r7,pc}
@ 0x225f790

.word 0x7fff @ 0x225f790
.word 0x153 @ 0x225f794
.thumb
Function_225f798: @ 225f798 :thumb
	ldrb    r0, [r0, #0x0]
	bx      lr
@ 0x225f79c

.thumb
Function_225f79c: @ 225f79c :thumb
	mov     r3, #0x2
	strb    r3, [r0, #0x2]
	strb    r1, [r0, #0x3]
	strh    r2, [r0, #0x4]
	bx      lr
@ 0x225f7a6


.align 2, 0


.thumb
Function_225f7a8: @ 225f7a8 :thumb
	push    {r3-r7,lr}
	mov     r4, r2
	mov     r5, r0
	mov     r6, r1
	mov     r7, r3
	cmp     r4, #0x1b
	bcc     branch_225f7ba
	bl      ErrorHandling
.thumb
branch_225f7ba: @ 225f7ba :thumb
	ldrb    r0, [r5, #0x1]
	cmp     r0, #0x2
	beq     branch_225f7c4
	bl      ErrorHandling
.thumb
branch_225f7c4: @ 225f7c4 :thumb
	ldrb    r0, [r5, #0x1]
	cmp     r0, #0x2
	bne     branch_225f7de
	mov     r2, #0x53
	str     r4, [sp, #0x0]
	lsl     r2, r2, #2
	mov     r0, r5
	ldr     r2, [r5, r2]
	add     r0, #0x8
	mov     r1, r6
	mov     r3, r7
	bl      Function_225fec4
.thumb
branch_225f7de: @ 225f7de :thumb
	pop     {r3-r7,pc}
@ 0x225f7e0

.thumb
Function_225f7e0: @ 225f7e0 :thumb
	ldrb    r1, [r0, #0x1]
	cmp     r1, #0x1
	beq     branch_225f7ea
	mov     r1, #0x1
	strb    r1, [r0, #0x2]
.thumb
branch_225f7ea: @ 225f7ea :thumb
	bx      lr
@ 0x225f7ec

.thumb
Function_225f7ec: @ 225f7ec :thumb
	ldrb    r1, [r0, #0x1]
	cmp     r1, #0x3
	beq     branch_225f7f6
	mov     r1, #0x3
	strb    r1, [r0, #0x2]
.thumb
branch_225f7f6: @ 225f7f6 :thumb
	bx      lr
@ 0x225f7f8

.thumb
Function_225f7f8: @ 225f7f8 :thumb
	ldrb    r0, [r0, #0x3]
	bx      lr
@ 0x225f7fc

.thumb
Function_225f7fc: @ 225f7fc :thumb
	ldrb    r1, [r0, #0x2]
	cmp     r1, #0x2
	bne     branch_225f806
	mov     r0, #0x1
	bx      lr
@ 0x225f806

.thumb
branch_225f806: @ 225f806 :thumb
	ldrb    r0, [r0, #0x1]
	cmp     r0, #0x2
	bne     branch_225f810
	mov     r0, #0x1
	bx      lr
@ 0x225f810

.thumb
branch_225f810: @ 225f810 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x225f814

.thumb
Function_225f814: @ 225f814 :thumb
	ldrb    r1, [r0, #0x2]
	cmp     r1, #0x0
	bne     branch_225f824
	ldrb    r0, [r0, #0x1]
	cmp     r0, #0x2
	bne     branch_225f824
	mov     r0, #0x1
	bx      lr
@ 0x225f824

.thumb
branch_225f824: @ 225f824 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x225f828

.thumb
Function_225f828: @ 225f828 :thumb
	ldr     r3, [pc, #0x4] @ 0x225f830, (=0x225feed)
	add     r0, #0x8
	bx      r3
@ 0x225f82e


.align 2


.word Function_225feec+1 @ =0x225feed, 0x225f830
.thumb
Function_225f834: @ 225f834 :thumb
	ldrb    r0, [r0, #0x2]
	cmp     r0, #0x0
	beq     branch_225f83e
	mov     r0, #0x1
	bx      lr
@ 0x225f83e

.thumb
branch_225f83e: @ 225f83e :thumb
	mov     r0, #0x0
	bx      lr
@ 0x225f842


.align 2, 0


.thumb
Function_225f844: @ 225f844 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	mov     r5, r0
	mov     r4, r3
	ldrb    r3, [r5, #0x1]
	mov     r6, r1
	mov     r7, r2
	cmp     r3, #0x2
	bne     branch_225f85a
	bl      Function_225f89c
.thumb
branch_225f85a: @ 225f85a :thumb
	ldr     r0, [sp, #0x40]
	str     r4, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x53
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r2, r5
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x44]
	mov     r1, r6
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x48]
	add     r2, #0x8
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x4c]
	mov     r3, r7
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x50]
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x54]
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x58]
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x5c]
	str     r0, [sp, #0x24]
	mov     r0, r5
	bl      Function_225fad0
	mov     r0, #0x2
	strb    r0, [r5, #0x1]
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x225f89a


.align 2, 0


.thumb
Function_225f89c: @ 225f89c :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x8
	bl      Function_225fe80
	mov     r0, #0x0
	strb    r0, [r4, #0x1]
	pop     {r4,pc}
@ 0x225f8ac

.thumb
Function_225f8ac: @ 225f8ac :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldrb    r0, [r5, #0x1]
	mov     r4, r1
	mov     r7, r2
	mov     r6, r3
	cmp     r0, #0x1
	beq     branch_225f8c8
	add     r0, #0xfd
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	cmp     r0, #0x1
	bhi     branch_225f8d0
.thumb
branch_225f8c8: @ 225f8c8 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_225f920
.thumb
branch_225f8d0: @ 225f8d0 :thumb
	mov     r0, #0x53
	lsl     r0, r0, #2
	ldr     r1, [r5, r0]
	sub     r0, #0x38
	str     r1, [sp, #0x0]
	ldr     r3, [sp, #0x20]
	add     r0, r5, r0
	mov     r1, r4
	mov     r2, r7
	str     r6, [sp, #0x4]
	bl      Function_2260870
	mov     r0, #0x1
	strb    r0, [r5, #0x1]
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x225f8f0

.thumb
Function_225f8f0: @ 225f8f0 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r2
	ldrb    r2, [r5, #0x1]
	mov     r6, r1
	mov     r7, r3
	cmp     r2, #0x3
	bne     branch_225f904
	bl      Function_225f920
.thumb
branch_225f904: @ 225f904 :thumb
	mov     r3, #0x45
	lsl     r3, r3, #2
	add     r0, r5, r3
	str     r4, [sp, #0x0]
	add     r3, #0x38
	ldr     r3, [r5, r3]
	mov     r1, r6
	mov     r2, r7
	bl      Function_2260930
	mov     r0, #0x3
	strb    r0, [r5, #0x1]
	pop     {r3-r7,pc}
@ 0x225f91e


.align 2, 0


.thumb
Function_225f920: @ 225f920 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x45
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_22609a8
	mov     r0, #0x0
	strb    r0, [r4, #0x1]
	pop     {r4,pc}
@ 0x225f934

.thumb
Function_225f934: @ 225f934 :thumb
	ldr     r2, [pc, #0x4] @ 0x225f93c, (=0x11a)
	strh    r1, [r0, r2]
	bx      lr
@ 0x225f93a


.align 2


.word 0x11a @ 0x225f93c
.thumb
Function_225f940: @ 225f940 :thumb
	mov     r1, r0
	mov     r0, #0x55
	lsl     r0, r0, #2
	strh    r2, [r1, r0]
	.hword  0x1c80 @ add r0, r0, #0x2
	strh    r3, [r1, r0]
	ldr     r3, [pc, #0x4] @ 0x225f954, (=AddTaskToTaskList3+1)
	ldr     r0, [pc, #0x8] @ 0x225f958, (=0x225f95d)
	mov     r2, #0x0
	bx      r3
@ 0x225f954

.word AddTaskToTaskList3+1 @ 0x225f954
.word 0x225f95d @ 0x225f958



.thumb
Function_225f95c: @ 225f95c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r3, #0x0
	ldr     r1, [pc, #0x50] @ 0x225f9b8, (=0x156)
	str     r3, [sp, #0x0]
	mov     r5, r0
	ldrh    r0, [r4, r1]
	mov     r2, #0x4
	str     r0, [sp, #0x4]
	mov     r0, r1
	.hword  0x1e89 @ sub r1, r1, #0x2
	sub     r0, #0xa
	ldrh    r1, [r4, r1]
	ldr     r0, [r4, r0]
	bl      Function_2007130
	mov     r1, #0xa0
	mov     r2, r1
	add     r2, #0xb6
	ldrh    r2, [r4, r2]
	mov     r0, #0x4
	bl      LoadFromNARC_PlFont1
	bl      Function_207c944
	mov     r6, r0
	bl      Function_207c920
	mov     r1, r0
	mov     r0, #0x60
	str     r0, [sp, #0x0]
	add     r0, #0xf6
	ldrh    r0, [r4, r0]
	mov     r3, #0x16
	mov     r2, #0x4
	str     r0, [sp, #0x4]
	mov     r0, r6
	lsl     r3, r3, #4
	bl      Call_LoadFromNARC_RLCN
	mov     r0, r5
	bl      Call_RemoveTaskFromTaskList
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x225f9b8

.word 0x156 @ 0x225f9b8



.thumb
Function_225f9bc: @ 225f9bc :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r6, r1
	mov     r5, r2
	ldr     r4, [sp, #0x20]
	cmp     r3, #0x0
	bne     branch_225f9dc
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x56
	mov     r2, #0x4
	str     r4, [sp, #0x4]
	bl      Function_2007130
	b       branch_225f9ec
@ 0x225f9dc

.thumb
branch_225f9dc: @ 225f9dc :thumb
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x57
	mov     r2, #0x4
	str     r4, [sp, #0x4]
	bl      Function_2007130
.thumb
branch_225f9ec: @ 225f9ec :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r4, [sp, #0xc]
	ldr     r2, [r6, #0x0]
	mov     r0, r5
	mov     r1, #0x36
	mov     r3, #0x4
	bl      Function_20070e8
	mov     r0, #0x4
	mov     r1, #0xa0
	mov     r2, r4
	bl      LoadFromNARC_PlFont1
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x225fa10

.thumb
Function_225fa10: @ 225fa10 :thumb
	bx      lr
@ 0x225fa12


.align 2, 0


.thumb
Function_225fa14: @ 225fa14 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r0, [sp, #0x2c]
	mov     r6, r3
	str     r0, [sp, #0x0]
	mov     r0, r1
	mov     r1, r2
	mov     r2, #0x0
	add     r3, sp, #0xc
	ldr     r4, [sp, #0x28]
	bl      Function_20071d0
	ldr     r2, [sp, #0xc]
	mov     r7, r0
	ldr     r0, [r2, #0x8]
	add     r2, #0xc
	lsr     r1, r0, #1
	mov     r0, #0x0
	cmp     r1, #0x0
	ble     branch_225fa4c
.thumb
branch_225fa3e: @ 225fa3e :thumb
	ldrh    r3, [r2, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r3, r3, r4
	strh    r3, [r2, #0x0]
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r0, r1
	blt     branch_225fa3e
.thumb
branch_225fa4c: @ 225fa4c :thumb
	ldr     r2, [sp, #0xc]
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	ldrh    r0, [r2, #0x0]
	lsl     r1, r6, #24
	lsr     r1, r1, #24
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	ldrh    r0, [r2, #0x2]
	add     r2, #0xc
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x0]
	bl      Function_20198c0
	lsl     r1, r6, #24
	ldr     r0, [r5, #0x0]
	lsr     r1, r1, #24
	bl      Function_201c3c0
	mov     r0, r7
	bl      free
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x225fa82


.align 2, 0


.thumb
Function_225fa84: @ 225fa84 :thumb
	push    {r3-r7,lr}
	ldr     r4, [pc, #0x1c] @ 0x225faa4, (=0x226d68c)
	mov     r7, r1
	mov     r6, #0x0
	add     r5, r0, #0x4
.thumb
branch_225fa8e: @ 225fa8e :thumb
	ldr     r0, [r7, #0x0]
	mov     r1, r5
	mov     r2, r4
	bl      Function_201a8d4
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x8
	add     r5, #0x10
	cmp     r6, #0x5
	blt     branch_225fa8e
	pop     {r3-r7,pc}
@ 0x225faa4

.word 0x226d68c @ 0x225faa4
.thumb
Function_225faa8: @ 225faa8 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r3, [r4, #0x54]
	cmp     r3, #0x0
	beq     branch_225fab6
	bl      Function_225fe80
.thumb
branch_225fab6: @ 225fab6 :thumb
	mov     r5, #0x0
	.hword  0x1d24 @ add r4, r4, #0x4
.thumb
branch_225faba: @ 225faba :thumb
	mov     r0, r4
	bl      Function_201a8fc
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r4, #0x10
	cmp     r5, #0x5
	blt     branch_225faba
	pop     {r3-r5,pc}
@ 0x225faca


.align 2, 0


.thumb
Function_225facc: @ 225facc :thumb
	bx      lr
@ 0x225face


.align 2, 0


.thumb
Function_225fad0: @ 225fad0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x30]
	ldr     r4, [sp, #0x28]
	str     r0, [sp, #0x30]
	ldr     r0, [sp, #0x34]
	mov     r5, r2
	str     r0, [sp, #0x34]
	ldr     r0, [sp, #0x38]
	mov     r6, r3
	str     r0, [sp, #0x38]
	mov     r0, r4
	bl      Function_225f338
	ldr     r0, [sp, #0x38]
	bl      0x222e7c8
	cmp     r0, #0x0
	bne     branch_225fb1c
	ldr     r0, [sp, #0x40]
	ldr     r7, [pc, #0x29c] @ 0x225fd98, (=0x70800)
	cmp     r0, #0x0
	bne     branch_225fb0e
	ldr     r0, [sp, #0xc]
	ldr     r3, [sp, #0x34]
	mov     r1, r6
	mov     r2, #0x56
	bl      Function_225f940
	b       branch_225fb40
@ 0x225fb0e

.thumb
branch_225fb0e: @ 225fb0e :thumb
	ldr     r0, [sp, #0xc]
	ldr     r3, [sp, #0x34]
	mov     r1, r6
	mov     r2, #0x58
	bl      Function_225f940
	b       branch_225fb40
@ 0x225fb1c

.thumb
branch_225fb1c: @ 225fb1c :thumb
	ldr     r0, [sp, #0x40]
	mov     r7, #0xc1
	lsl     r7, r7, #10
	cmp     r0, #0x0
	bne     branch_225fb34
	ldr     r0, [sp, #0xc]
	ldr     r3, [sp, #0x34]
	mov     r1, r6
	mov     r2, #0x57
	bl      Function_225f940
	b       branch_225fb40
@ 0x225fb34

.thumb
branch_225fb34: @ 225fb34 :thumb
	ldr     r0, [sp, #0xc]
	ldr     r3, [sp, #0x34]
	mov     r1, r6
	mov     r2, #0x58
	bl      Function_225f940
.thumb
branch_225fb40: @ 225fb40 :thumb
	ldr     r0, [r6, #0x0]
	mov     r1, #0x4
	mov     r2, #0x0
	bl      Function_2019f04
	ldr     r0, [r6, #0x0]
	mov     r1, #0x5
	mov     r2, #0x0
	bl      Function_2019f04
	ldr     r0, [r6, #0x0]
	mov     r1, #0x6
	mov     r2, #0x0
	bl      Function_2019f04
	mov     r0, r5
	bl      Function_22602c0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x34]
	ldr     r1, [sp, #0x30]
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r2, #0x5c
	mov     r3, #0x4
	bl      Function_225fa14
	ldr     r0, [sp, #0x34]
	bl      AllocTrainerData
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x38]
	ldr     r1, [sp, #0x10]
	ldr     r2, [sp, #0x34]
	bl      0x222e640
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	str     r2, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x2c
	str     r7, [sp, #0x8]
	bl      Function_22602dc
	ldr     r0, [sp, #0x10]
	bl      GetSecretTrainerID
	mov     r1, r0
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r2, #0x5
	mov     r3, #0x0
	bl      Function_225f2a8
	mov     r0, #0x7a
	str     r0, [sp, #0x0]
	mov     r2, #0x0
	ldr     r0, [pc, #0x1e0] @ 0x225fd9c, (=0x10200)
	str     r2, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x31
	bl      Function_2260314
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x2d
	str     r7, [sp, #0x8]
	bl      Function_22602dc
	ldr     r2, [sp, #0x10]
	mov     r0, r5
	mov     r1, r4
	bl      Function_2260370
	mov     r0, #0x7a
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1ac] @ 0x225fd9c, (=0x10200)
	mov     r1, r4
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r2, #0x0
	mov     r3, #0x32
	bl      Function_2260314
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2260360
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x1
	mov     r3, #0x2e
	str     r7, [sp, #0x8]
	bl      Function_22602dc
	ldr     r0, [sp, #0x38]
	bl      0x222e880
	cmp     r0, #0x0
	bne     branch_225fc3e
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x16c] @ 0x225fd9c, (=0x10200)
	mov     r1, r4
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r2, #0x1
	mov     r3, #0x37
	bl      Function_22602dc
	b       branch_225fc60
@ 0x225fc3e

.thumb
branch_225fc3e: @ 225fc3e :thumb
	ldr     r2, [sp, #0x38]
	mov     r0, r5
	mov     r1, r4
	bl      Function_2260380
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x148] @ 0x225fd9c, (=0x10200)
	mov     r1, r4
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r2, #0x1
	mov     r3, #0x33
	bl      Function_22602dc
.thumb
branch_225fc60: @ 225fc60 :thumb
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2260360
	ldr     r0, [sp, #0x44]
	cmp     r0, #0x0
	beq     branch_225fd06
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	ldr     r2, [sp, #0x10]
	mov     r0, r5
	mov     r1, r4
	bl      Function_2260370
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x4
	mov     r3, #0x38
	str     r7, [sp, #0x8]
	bl      Function_22602dc
	ldr     r2, [sp, #0x48]
	mov     r0, r5
	mov     r1, r4
	bl      Function_22603b0
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x18
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xf4] @ 0x225fd9c, (=0x10200)
	mov     r1, r4
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r2, #0x4
	mov     r3, #0x3b
	bl      Function_22602dc
	mov     r0, #0x5a
	str     r0, [sp, #0x0]
	mov     r0, #0x18
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xdc] @ 0x225fd9c, (=0x10200)
	mov     r1, r4
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r2, #0x4
	mov     r3, #0x3c
	bl      Function_22602dc
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x2c
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xc4] @ 0x225fd9c, (=0x10200)
	mov     r1, r4
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r2, #0x4
	mov     r3, #0x3d
	bl      Function_22602dc
	mov     r0, #0x5a
	str     r0, [sp, #0x0]
	mov     r0, #0x2c
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xac] @ 0x225fd9c, (=0x10200)
	mov     r1, r4
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r2, #0x4
	mov     r3, #0x3e
	bl      Function_22602dc
	mov     r0, r5
	mov     r1, #0x4
	bl      Function_2260360
	b       branch_225fd3a
@ 0x225fd06

.thumb
branch_225fd06: @ 225fd06 :thumb
	mov     r1, #0x0
	str     r1, [r5, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x4
	mov     r3, #0x30
	str     r7, [sp, #0x8]
	bl      Function_22602dc
	mov     r0, r5
	mov     r1, #0x4
	bl      Function_2260360
	ldr     r0, [sp, #0x38]
	ldr     r2, [sp, #0x30]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x3c]
	ldr     r3, [sp, #0x34]
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r6
	bl      Function_22603cc
.thumb
branch_225fd3a: @ 225fd3a :thumb
	ldr     r0, [sp, #0x38]
	bl      0x222e8c4
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4c]
	ldr     r2, [sp, #0x30]
	str     r0, [sp, #0x4]
	ldr     r3, [sp, #0x34]
	mov     r0, r5
	mov     r1, r6
	bl      Function_225fef0
	ldr     r0, [sp, #0x2c]
	cmp     r0, #0x1
	bne     branch_225fd6a
	ldr     r0, [sp, #0x38]
	bl      0x222e7c8
	cmp     r0, #0x1
	bne     branch_225fd66
	mov     r0, #0x61
	b       branch_225fd70
@ 0x225fd66

.thumb
branch_225fd66: @ 225fd66 :thumb
	mov     r0, #0x0
	b       branch_225fd70
@ 0x225fd6a

.thumb
branch_225fd6a: @ 225fd6a :thumb
	ldr     r0, [sp, #0x38]
	bl      0x222e858
.thumb
branch_225fd70: @ 225fd70 :thumb
	ldr     r2, [sp, #0x30]
	str     r0, [sp, #0x0]
	ldr     r3, [sp, #0x34]
	mov     r0, r5
	mov     r1, r6
	bl      Function_2260080
	ldr     r0, [sp, #0x38]
	ldr     r3, [sp, #0x34]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0xc]
	mov     r1, r5
	mov     r2, r6
	bl      Function_225fda0
	ldr     r0, [sp, #0x10]
	bl      free
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x225fd98

.word 0x70800 @ 0x225fd98
.word 0x10200 @ 0x225fd9c
.thumb
Function_225fda0: @ 225fda0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x34
	ldr     r0, [sp, #0x48]
	ldr     r6, [pc, #0xd0] @ 0x225fe78, (=0x226d624)
	str     r0, [sp, #0x48]
	mov     r0, #0x0
	str     r0, [sp, #0x24]
	ldr     r0, [pc, #0xcc] @ 0x225fe7c, (=0x226d590)
	mov     r5, r2
	str     r3, [sp, #0x1c]
	str     r0, [sp, #0x20]
	mov     r4, #0x2
.thumb
branch_225fdb8: @ 225fdb8 :thumb
	ldr     r0, [sp, #0x48]
	ldr     r1, [sp, #0x24]
	bl      0x222e8e8
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	beq     branch_225fe60
	bl      0x22316e8
	lsl     r0, r0, #16
	lsr     r7, r0, #16
	bl      Function_207c944
	str     r0, [sp, #0x28]
	mov     r0, r7
	bl      Function_207c908
	mov     r1, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x28]
	ldr     r3, [sp, #0x1c]
	mov     r2, #0x1
	bl      Function_2006fe8_LoadFromNARC_UncompressLZ8
	add     r1, sp, #0x30
	str     r0, [sp, #0x2c]
	blx     Function_20a7118
	ldr     r0, [sp, #0x20]
	mov     r1, #0x6
	ldrh    r0, [r0, #0x0]
	mov     r3, r1
	add     r3, #0xfa
	str     r0, [sp, #0x0]
	ldr     r2, [sp, #0x30]
	ldr     r0, [r5, #0x0]
	ldr     r2, [r2, #0x14]
	bl      Function_201958c
	ldr     r0, [sp, #0x2c]
	bl      free
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	lsl     r3, r4, #24
	str     r6, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	mov     r0, #0x4
	str     r0, [sp, #0x14]
	mov     r0, #0x2
	str     r0, [sp, #0x18]
	ldr     r0, [r5, #0x0]
	mov     r1, #0x6
	mov     r2, #0x1a
	lsr     r3, r3, #24
	bl      Function_20198e8
	mov     r0, r7
	bl      Function_207c92c
	mov     r1, #0x4
	add     r0, #0xb
	str     r1, [sp, #0x0]
	mov     r1, #0x2
	lsl     r0, r0, #24
	str     r1, [sp, #0x4]
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	lsl     r3, r4, #24
	ldr     r0, [r5, #0x0]
	mov     r1, #0x6
	mov     r2, #0x1a
	lsr     r3, r3, #24
	bl      Function_2019e2c
	ldr     r0, [r5, #0x0]
	mov     r1, #0x6
	bl      Function_201c3c0
.thumb
branch_225fe60: @ 225fe60 :thumb
	ldr     r0, [sp, #0x20]
	add     r6, #0x10
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x24]
	.hword  0x1ca4 @ add r4, r4, #0x2
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x24]
	cmp     r0, #0x2
	blt     branch_225fdb8
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x225fe78

.word 0x226d624 @ 0x225fe78
.word 0x226d590 @ 0x225fe7c
.thumb
Function_225fe80: @ 225fe80 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r1, [r5, #0x0]
	mov     r4, r2
	cmp     r1, #0x1
	bne     branch_225fe92
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	b       branch_225fe98
@ 0x225fe92

.thumb
branch_225fe92: @ 225fe92 :thumb
	mov     r1, r4
	bl      Function_226068c
.thumb
branch_225fe98: @ 225fe98 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_2260048
	mov     r0, r5
	mov     r1, r4
	bl      Function_2260228
	ldr     r0, [r4, #0x0]
	mov     r1, #0x4
	bl      Function_2019ebc
	ldr     r0, [r4, #0x0]
	mov     r1, #0x5
	bl      Function_2019ebc
	ldr     r0, [r4, #0x0]
	mov     r1, #0x6
	bl      Function_2019ebc
	pop     {r3-r5,pc}
@ 0x225fec2


.align 2, 0


.thumb
Function_225fec4: @ 225fec4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3
	bl      Function_2260048
	ldr     r0, [sp, #0x20]
	mov     r1, r4
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, r6
	mov     r3, r7
	bl      Function_225fef0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x225feec

.thumb
Function_225feec: @ 225feec :thumb
	ldr     r0, [r0, #0x0]
	bx      lr
@ 0x225fef0

.thumb
Function_225fef0: @ 225fef0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x7c
	mov     r5, r0
	ldr     r0, [sp, #0x90]
	mov     r4, r1
	mov     r6, r3
	str     r2, [sp, #0x2c]
	cmp     r0, #0x1b
	bcc     branch_225ff06
	bl      ErrorHandling
.thumb
branch_225ff06: @ 225ff06 :thumb
	ldr     r0, [r5, #0x54]
	cmp     r0, #0x0
	beq     branch_225ff10
	bl      ErrorHandling
.thumb
branch_225ff10: @ 225ff10 :thumb
	ldr     r0, [sp, #0x90]
	mov     r1, #0x3
	blx     _u32_div_f
	mov     r7, r0
	ldr     r0, [sp, #0x90]
	mov     r1, #0x3
	blx     _u32_div_f
	str     r1, [sp, #0x30]
	lsl     r0, r7, #1
	str     r0, [sp, #0x34]
	mov     r1, #0x64
	str     r1, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r2, [sp, #0x34]
	str     r6, [sp, #0x8]
	add     r1, #0xcc
	ldr     r0, [r4, r1]
	add     r2, r7, r2
	ldr     r1, [sp, #0x2c]
	add     r2, #0x3d
	mov     r3, #0x0
	bl      Function_2009a4c
	str     r0, [r5, #0x58]
	bl      Function_200a3dc
	cmp     r0, #0x0
	bne     branch_225ff52
	bl      ErrorHandling
.thumb
branch_225ff52: @ 225ff52 :thumb
	ldr     r0, [r5, #0x58]
	bl      Function_2009d4c
	mov     r1, #0x64
	str     r1, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x3
	str     r0, [sp, #0x8]
	str     r6, [sp, #0xc]
	add     r1, #0xd0
	ldr     r0, [r4, r1]
	ldr     r1, [sp, #0x2c]
	mov     r2, #0x59
	mov     r3, #0x0
	bl      Function_2009b04
	str     r0, [r5, #0x5c]
	bl      Function_200a640
	cmp     r0, #0x0
	bne     branch_225ff82
	bl      ErrorHandling
.thumb
branch_225ff82: @ 225ff82 :thumb
	ldr     r0, [r5, #0x5c]
	bl      Function_2009d4c
	mov     r1, #0x64
	str     r1, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r2, [sp, #0x34]
	str     r6, [sp, #0x8]
	add     r1, #0xd4
	ldr     r0, [r4, r1]
	add     r2, r7, r2
	ldr     r1, [sp, #0x2c]
	add     r2, #0x3c
	mov     r3, #0x0
	bl      Function_2009bc4
	str     r0, [r5, #0x60]
	mov     r1, #0x64
	str     r1, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	ldr     r2, [sp, #0x34]
	str     r6, [sp, #0x8]
	add     r1, #0xd8
	ldr     r0, [r4, r1]
	add     r2, r7, r2
	ldr     r1, [sp, #0x2c]
	add     r2, #0x3b
	mov     r3, #0x0
	bl      Function_2009bc4
	str     r0, [r5, #0x64]
	mov     r0, #0x0
	add     r2, sp, #0x38
	mov     r1, r0
	stmia   r2!, {r0,r1}
	stmia   r2!, {r0,r1}
	stmia   r2!, {r0,r1}
	stmia   r2!, {r0,r1}
	mov     r1, #0x64
	mov     r2, r1
	str     r1, [sp, #0x0]
	sub     r2, #0x65
	str     r2, [sp, #0x4]
	str     r2, [sp, #0x8]
	str     r0, [sp, #0xc]
	mov     r2, r1
	str     r0, [sp, #0x10]
	add     r2, #0xcc
	ldr     r2, [r4, r2]
	mov     r3, r1
	str     r2, [sp, #0x14]
	mov     r2, r1
	add     r2, #0xd0
	ldr     r2, [r4, r2]
	str     r2, [sp, #0x18]
	mov     r2, r1
	add     r2, #0xd4
	ldr     r2, [r4, r2]
	str     r2, [sp, #0x1c]
	mov     r2, r1
	add     r2, #0xd8
	ldr     r2, [r4, r2]
	str     r2, [sp, #0x20]
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
	add     r0, sp, #0x58
	mov     r2, r1
	bl      Function_20093b4
	ldr     r0, [r4, #0x4]
	str     r0, [sp, #0x38]
	add     r0, sp, #0x58
	str     r0, [sp, #0x3c]
	mov     r0, #0x10
	str     r0, [sp, #0x4c]
	mov     r0, #0x2
	str     r0, [sp, #0x50]
	mov     r0, #0xd
	lsl     r0, r0, #16
	str     r0, [sp, #0x40]
	mov     r0, #0x66
	lsl     r0, r0, #14
	str     r0, [sp, #0x44]
	add     r0, sp, #0x38
	str     r6, [sp, #0x54]
	bl      Function_2021b90
	ldr     r1, [sp, #0x30]
	str     r0, [r5, #0x54]
	bl      Function_2021d6c
	ldr     r0, [r5, #0x54]
	ldr     r1, [sp, #0x94]
	bl      Function_2021cac
	add     sp, #0x7c
	pop     {r4-r7,pc}
@ 0x2260048

.thumb
Function_2260048: @ 2260048 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x54]
	mov     r4, r1
	bl      Function_2021bd4
	mov     r0, #0x0
	str     r0, [r5, #0x54]
	ldr     r0, [r5, #0x58]
	bl      Function_200a4e4
	ldr     r0, [r5, #0x5c]
	bl      Function_200a6dc
	mov     r7, #0x13
	mov     r6, #0x0
	lsl     r7, r7, #4
.thumb
branch_226006a: @ 226006a :thumb
	ldr     r0, [r4, r7]
	ldr     r1, [r5, #0x58]
	bl      Function_2009d68
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x4
	blt     branch_226006a
	pop     {r3-r7,pc}
@ 0x226007e


.align 2, 0


.thumb
Function_2260080: @ 2260080 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x94
	mov     r6, r0
	ldr     r0, [r6, #0x68]
	mov     r5, r1
	str     r3, [sp, #0x2c]
	ldr     r4, [sp, #0xa8]
	cmp     r0, #0x0
	beq     branch_2260096
	bl      ErrorHandling
.thumb
branch_2260096: @ 2260096 :thumb
	ldr     r1, [pc, #0x18c] @ 0x2260224, (=0x226d724)
	mov     r0, #0x0
.thumb
branch_226009a: @ 226009a :thumb
	ldrh    r2, [r1, #0x0]
	cmp     r4, r2
	bne     branch_22600aa
	ldrh    r2, [r1, #0x2]
	str     r2, [sp, #0x34]
	ldrh    r2, [r1, #0x4]
	str     r2, [sp, #0x30]
	ldrh    r7, [r1, #0x6]
.thumb
branch_22600aa: @ 22600aa :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r1, #0x8
	cmp     r0, #0x12
	bcc     branch_226009a
	ldr     r0, [sp, #0x34]
	mov     r1, #0x2
	add     r2, sp, #0x7c
	bl      Function_2076aac
	mov     r1, #0x65
	str     r1, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x2c]
	add     r1, #0xcb
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	ldr     r1, [sp, #0x7c]
	ldr     r2, [sp, #0x80]
	mov     r3, #0x0
	bl      Function_200985c
	str     r0, [r6, #0x6c]
	bl      Function_200a3dc
	cmp     r0, #0x0
	bne     branch_22600e4
	bl      ErrorHandling
.thumb
branch_22600e4: @ 22600e4 :thumb
	mov     r1, #0x65
	str     r1, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x2c]
	add     r1, #0xcf
	str     r0, [sp, #0xc]
	ldr     r0, [r5, r1]
	ldr     r1, [sp, #0x7c]
	ldr     r2, [sp, #0x84]
	mov     r3, #0x0
	bl      Function_20098b8
	str     r0, [r6, #0x70]
	bl      Function_2009e34
	bl      Function_2260268
	ldr     r0, [r6, #0x70]
	bl      Function_200a640
	cmp     r0, #0x0
	bne     branch_226011a
	bl      ErrorHandling
.thumb
branch_226011a: @ 226011a :thumb
	ldr     r0, [r6, #0x70]
	bl      Function_2009d4c
	mov     r1, #0x65
	str     r1, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x2c]
	add     r1, #0xd3
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	ldr     r1, [sp, #0x7c]
	ldr     r2, [sp, #0x88]
	mov     r3, #0x0
	bl      Function_2009918
	str     r0, [r6, #0x74]
	mov     r1, #0x65
	str     r1, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x2c]
	add     r1, #0xd7
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	ldr     r1, [sp, #0x7c]
	ldr     r2, [sp, #0x8c]
	mov     r3, #0x0
	bl      Function_2009918
	str     r0, [r6, #0x78]
	mov     r0, #0x0
	add     r2, sp, #0x38
	mov     r1, r0
	stmia   r2!, {r0,r1}
	stmia   r2!, {r0,r1}
	stmia   r2!, {r0,r1}
	stmia   r2!, {r0,r1}
	mov     r1, #0x65
	mov     r2, r1
	str     r1, [sp, #0x0]
	sub     r2, #0x66
	str     r2, [sp, #0x4]
	str     r2, [sp, #0x8]
	mov     r2, #0x1
	str     r2, [sp, #0xc]
	mov     r2, #0x3
	str     r2, [sp, #0x10]
	mov     r2, r1
	add     r2, #0xcb
	ldr     r2, [r5, r2]
	mov     r3, r1
	str     r2, [sp, #0x14]
	mov     r2, r1
	add     r2, #0xcf
	ldr     r2, [r5, r2]
	str     r2, [sp, #0x18]
	mov     r2, r1
	add     r2, #0xd3
	ldr     r2, [r5, r2]
	str     r2, [sp, #0x1c]
	mov     r2, r1
	add     r2, #0xd7
	ldr     r2, [r5, r2]
	str     r2, [sp, #0x20]
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
	add     r0, sp, #0x58
	mov     r2, r1
	bl      Function_20093b4
	ldr     r0, [r5, #0x4]
	str     r0, [sp, #0x38]
	add     r0, sp, #0x58
	str     r0, [sp, #0x3c]
	mov     r0, #0x20
	str     r0, [sp, #0x4c]
	mov     r0, #0x2
	str     r0, [sp, #0x50]
	ldr     r0, [sp, #0x2c]
	str     r0, [sp, #0x54]
	ldr     r0, [sp, #0x30]
	cmp     r0, #0x0
	beq     branch_22601d4
	lsl     r0, r0, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_22601e2
@ 0x22601d4

.thumb
branch_22601d4: @ 22601d4 :thumb
	lsl     r0, r0, #12
	blx     _fflt
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
.thumb
branch_22601e2: @ 22601e2 :thumb
	blx     _ffix
	str     r0, [sp, #0x40]
	cmp     r7, #0x0
	beq     branch_22601fe
	lsl     r0, r7, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_226020c
@ 0x22601fe

.thumb
branch_22601fe: @ 22601fe :thumb
	lsl     r0, r7, #12
	blx     _fflt
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
.thumb
branch_226020c: @ 226020c :thumb
	blx     _ffix
	mov     r1, #0x1
	lsl     r1, r1, #20
	add     r0, r0, r1
	str     r0, [sp, #0x44]
	add     r0, sp, #0x38
	bl      Function_2021b90
	str     r0, [r6, #0x68]
	add     sp, #0x94
	pop     {r4-r7,pc}
@ 0x2260224

.word 0x226d724 @ 0x2260224
.thumb
Function_2260228: @ 2260228 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x68]
	mov     r4, r1
	bl      Function_2021f98
	bl      Function_201ed1c
	ldr     r0, [r5, #0x68]
	bl      Function_2021bd4
	mov     r0, #0x0
	str     r0, [r5, #0x68]
	ldr     r0, [r5, #0x6c]
	bl      Function_200a4e4
	ldr     r0, [r5, #0x70]
	bl      Function_200a6dc
	mov     r7, #0x13
	mov     r6, #0x0
	lsl     r7, r7, #4
.thumb
branch_2260254: @ 2260254 :thumb
	ldr     r0, [r4, r7]
	ldr     r1, [r5, #0x6c]
	bl      Function_2009d68
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x4
	blt     branch_2260254
	pop     {r3-r7,pc}
@ 0x2260268

.thumb
Function_2260268: @ 2260268 :thumb
	push    {r4-r7}
	ldr     r1, [r0, #0x8]
	ldr     r4, [r0, #0xc]
	lsr     r3, r1, #1
	mov     r2, #0x0
	cmp     r3, #0x0
	ble     branch_22602bc
	mov     r5, #0xc8
.thumb
branch_2260278: @ 2260278 :thumb
	ldrh    r6, [r4, #0x0]
	mov     r0, #0x1f
	.hword  0x1c52 @ add r2, r2, #0x1
	mov     r1, r6
	asr     r7, r6, #5
	and     r1, r0
	and     r0, r7
	asr     r7, r6, #10
	mov     r6, #0x1f
	and     r6, r7
	mov     r7, #0x1d
	mul     r7, r6
	mov     r6, #0x4c
	mul     r6, r1
	mov     r1, #0x97
	mul     r1, r0
	add     r0, r6, r1
	add     r0, r7, r0
	asr     r6, r0, #8
	lsl     r0, r6, #8
	mov     r7, r6
	asr     r1, r0, #8
	lsl     r0, r6, #7
	mul     r7, r5
	asr     r0, r0, #8
	asr     r6, r7, #8
	lsl     r0, r0, #10
	lsl     r6, r6, #5
	orr     r0, r6
	orr     r0, r1
	strh    r0, [r4, #0x0]
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r2, r3
	blt     branch_2260278
.thumb
branch_22602bc: @ 22602bc :thumb
	pop     {r4-r7}
	bx      lr
@ 0x22602c0

.thumb
Function_22602c0: @ 22602c0 :thumb
	push    {r4-r6,lr}
	mov     r4, #0x0
	add     r5, r0, #0x4
	mov     r6, r4
.thumb
branch_22602c8: @ 22602c8 :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_201ada4_ClearTextBox
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x5
	blt     branch_22602c8
	pop     {r4-r6,pc}
@ 0x22602da


.align 2, 0


.thumb
Function_22602dc: @ 22602dc :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r4, r2
	mov     r0, r1
	mov     r1, #0x1
	mov     r2, r3
	bl      Function_225f288
	add     r3, sp, #0x10
	mov     r2, r0
	ldrb    r0, [r3, #0x14]
	mov     r1, #0x0
	.hword  0x1d2d @ add r5, r5, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x28]
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	lsl     r0, r4, #4
	ldrb    r3, [r3, #0x10]
	add     r0, r5, r0
	bl      Function_201d78c
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2260312


.align 2, 0


.thumb
Function_2260314: @ 2260314 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r4, r2
	mov     r0, r1
	mov     r1, #0x1
	mov     r2, r3
	bl      Function_225f288
	mov     r6, r0
	mov     r0, #0x0
	mov     r1, r6
	mov     r2, r0
	bl      Function_2002d7c
	add     r1, sp, #0x10
	ldrb    r1, [r1, #0x10]
	sub     r3, r1, r0
	bpl     branch_226033c
	mov     r3, #0x0
.thumb
branch_226033c: @ 226033c :thumb
	add     r0, sp, #0x10
	ldrb    r0, [r0, #0x14]
	add     r2, r5, #0x4
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x28]
	str     r0, [sp, #0x8]
	lsl     r0, r4, #4
	add     r0, r2, r0
	mov     r2, r6
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x226035e


.align 2, 0


.thumb
Function_2260360: @ 2260360 :thumb
	ldr     r3, [pc, #0x8] @ 0x226036c, (=Function_201a9a4+1)
	add     r2, r0, #0x4
	lsl     r0, r1, #4
	add     r0, r2, r0
	bx      r3
@ 0x226036a

.align 2
.word Function_201a9a4+1 @ 0x226036c



.thumb
Function_2260370: @ 2260370 :thumb
	ldr     r3, [pc, #0x8] @ 0x226037c, (=0x225f2c9)
	mov     r0, r1
	mov     r1, r2
	mov     r2, #0x0
	bx      r3
@ 0x226037a


.align 2


.word 0x225f2c9 @ 0x226037c
.thumb
Function_2260380: @ 2260380 :thumb
	push    {r4-r6,lr}
	mov     r6, r2
	mov     r0, r6
	mov     r5, r1
	bl      0x222e880
	mov     r4, r0
	mov     r0, r6
	bl      0x222e8a4
	mov     r6, r0
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_225f308
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	mov     r3, #0x1
	bl      Function_225f318
	pop     {r4-r6,pc}
@ 0x22603ae


.align 2, 0


.thumb
Function_22603b0: @ 22603b0 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r5, r2
	mov     r4, #0x0
.thumb
branch_22603b8: @ 22603b8 :thumb
	ldrh    r2, [r5, #0x0]
	mov     r0, r6
	mov     r1, r4
	bl      Function_225f32c
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r4, #0x4
	blt     branch_22603b8
	pop     {r4-r6,pc}
@ 0x22603cc

.thumb
Function_22603cc: @ 22603cc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x98
	mov     r7, r0
	ldr     r0, [sp, #0xb0]
	mov     r5, r1
	str     r0, [sp, #0xb0]

	mov     r0, #Unionobj2dOnlyfront_Narc
	mov     r1, r3
	str     r2, [sp, #0x2c]
	str     r3, [sp, #0x30]
	bl      LoadFromNARC_8
	str     r0, [sp, #0x50]
	ldr     r0, [sp, #0xb4]
	bl      0x222e798
	str     r0, [sp, #0x44]
	ldr     r0, [sp, #0xb4]
	bl      0x222e7c8
	str     r0, [sp, #0x4c]
	ldr     r0, [pc, #0x284] @ 0x226067c, (=0x226d60c)
	mov     r6, #0x0
	str     r0, [sp, #0x40]
	ldr     r0, [pc, #0x280] @ 0x2260680, (=0x226d59c)
	mov     r4, r7
	str     r0, [sp, #0x3c]
	ldr     r0, [pc, #0x280] @ 0x2260684, (=0x226d594)
	str     r0, [sp, #0x38]
.thumb
branch_2260406: @ 2260406 :thumb
	cmp     r6, #0x2
	bne     branch_2260426
	ldr     r0, [sp, #0x4c]
	cmp     r0, #0x1
	bne     branch_2260446
	mov     r1, r4
	add     r1, #0xac
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	mov     r1, r4
	add     r1, #0xec
	str     r0, [r1, #0x0]
	mov     r1, r4
	add     r1, #0xfc
	str     r0, [r1, #0x0]
	b       branch_22604ec
@ 0x2260426

.thumb
branch_2260426: @ 2260426 :thumb
	cmp     r6, #0x3
	bne     branch_2260446
	ldr     r0, [sp, #0x4c]
	cmp     r0, #0x0
	bne     branch_2260446
	mov     r1, r4
	add     r1, #0xac
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	mov     r1, r4
	add     r1, #0xec
	str     r0, [r1, #0x0]
	mov     r1, r4
	add     r1, #0xfc
	str     r0, [r1, #0x0]
	b       branch_22604ec
@ 0x2260446

.thumb
branch_2260446: @ 2260446 :thumb
	ldr     r0, [sp, #0x40]
	ldrh    r0, [r0, #0x0]
	cmp     r0, #0xc0
	bne     branch_2260454
	ldr     r0, [sp, #0x50]
	str     r0, [sp, #0x34]
	b       branch_2260458
@ 0x2260454

.thumb
branch_2260454: @ 2260454 :thumb
	ldr     r0, [sp, #0x2c]
	str     r0, [sp, #0x34]
.thumb
branch_2260458: @ 2260458 :thumb
	mov     r0, r6
	add     r0, #0x96
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x40]
	ldr     r2, [sp, #0x40]
	ldrh    r0, [r0, #0x4]
	ldr     r1, [sp, #0x34]
	mov     r3, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x30]
	str     r0, [sp, #0xc]
	mov     r0, #0x4d
	lsl     r0, r0, #2
	ldrh    r2, [r2, #0x2]
	ldr     r0, [r5, r0]
	bl      Function_2009b04
	mov     r1, r4
	add     r1, #0xac
	str     r0, [r1, #0x0]
	mov     r0, r4
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	bl      Function_200a640
	cmp     r0, #0x0
	bne     branch_2260496
	bl      ErrorHandling
.thumb
branch_2260496: @ 2260496 :thumb
	mov     r0, r4
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	bl      Function_2009d4c
	mov     r0, r6
	add     r0, #0x96
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x30]
	ldr     r2, [sp, #0x3c]
	str     r0, [sp, #0x8]
	mov     r0, #0x4e
	lsl     r0, r0, #2
	ldrh    r2, [r2, #0x0]
	ldr     r0, [r5, r0]
	ldr     r1, [sp, #0x34]
	mov     r3, #0x0
	bl      Function_2009bc4
	mov     r1, r4
	add     r1, #0xec
	str     r0, [r1, #0x0]
	mov     r0, r6
	add     r0, #0x96
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x30]
	ldr     r2, [sp, #0x38]
	str     r0, [sp, #0x8]
	mov     r0, #0x4f
	lsl     r0, r0, #2
	ldrh    r2, [r2, #0x0]
	ldr     r0, [r5, r0]
	ldr     r1, [sp, #0x34]
	mov     r3, #0x0
	bl      Function_2009bc4
	mov     r1, r4
	add     r1, #0xfc
	str     r0, [r1, #0x0]
.thumb
branch_22604ec: @ 22604ec :thumb
	ldr     r0, [sp, #0x40]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d80 @ add r0, r0, #0x6
	str     r0, [sp, #0x40]
	ldr     r0, [sp, #0x3c]
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [sp, #0x3c]
	ldr     r0, [sp, #0x38]
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [sp, #0x38]
	cmp     r6, #0x4
	bge     branch_2260508
	b       branch_2260406
@ 0x2260508

.thumb
branch_2260508: @ 2260508 :thumb
	ldr     r0, [pc, #0x17c] @ 0x2260688, (=0x226d7b4)
	mov     r6, #0x0
	str     r0, [sp, #0x48]
.thumb
branch_226050e: @ 226050e :thumb
	ldr     r0, [sp, #0xb0]
	mov     r1, r6
	bl      0x222e728
	mov     r4, r0
	ldr     r0, [sp, #0xb0]
	mov     r1, r6
	bl      0x222e760
	mov     r1, r0
	cmp     r4, #0x18
	bne     branch_2260532
	mov     r1, r7
	add     r1, #0xbc
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	str     r0, [r7, #0x7c]
	b       branch_2260660
@ 0x2260532

.thumb
branch_2260532: @ 2260532 :thumb
	ldr     r2, [sp, #0x44]
	ldr     r3, [sp, #0x4c]
	mov     r0, r4
	bl      Function_2260728
	mov     r4, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x1
	bne     branch_2260548
	ldr     r1, [sp, #0x2c]
	b       branch_226054a
@ 0x2260548

.thumb
branch_2260548: @ 2260548 :thumb
	ldr     r1, [sp, #0x50]
.thumb
branch_226054a: @ 226054a :thumb
	mov     r0, r6
	add     r0, #0x96
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x30]
	mov     r3, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x13
	lsl     r0, r0, #4
	ldrh    r2, [r4, #0x2]
	ldr     r0, [r5, r0]
	bl      Function_2009a4c
	mov     r1, r7
	add     r1, #0xbc
	str     r0, [r1, #0x0]
	mov     r0, r7
	add     r0, #0xbc
	ldr     r0, [r0, #0x0]
	bl      Function_200a3dc
	cmp     r0, #0x0
	bne     branch_226057e
	bl      ErrorHandling
.thumb
branch_226057e: @ 226057e :thumb
	mov     r0, r7
	add     r0, #0xbc
	ldr     r0, [r0, #0x0]
	bl      Function_2009d4c
	ldrb    r2, [r4, #0x0]
	mov     r0, #0x0
	mvn     r0, r0
	add     r2, #0x96
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	mov     r0, #0x13
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, r6
	str     r0, [sp, #0x14]
	mov     r0, #0x4d
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	add     r1, #0x96
	str     r0, [sp, #0x18]
	mov     r0, #0x4e
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r3, r2
	str     r0, [sp, #0x1c]
	mov     r0, #0x4f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	str     r0, [sp, #0x20]
	mov     r0, #0x0
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
	add     r0, sp, #0x54
	bl      Function_20093b4
	ldr     r0, [r5, #0x4]
	ldr     r2, [sp, #0x48]
	str     r0, [sp, #0x78]
	add     r0, sp, #0x54
	str     r0, [sp, #0x7c]
	mov     r0, #0x0
	str     r0, [sp, #0x8c]
	mov     r0, #0x2
	str     r0, [sp, #0x90]
	ldr     r0, [sp, #0x30]
	add     r3, sp, #0x80
	str     r0, [sp, #0x94]
	ldmia   r2!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r2, #0x0]
	str     r0, [r3, #0x0]
	mov     r0, #0x4
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	ble     branch_2260608
	lsl     r0, r0, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_2260616
@ 0x2260608

.thumb
branch_2260608: @ 2260608 :thumb
	lsl     r0, r0, #12
	blx     _fflt
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
.thumb
branch_2260616: @ 2260616 :thumb
	blx     _ffix
	ldr     r1, [sp, #0x80]
	add     r0, r1, r0
	str     r0, [sp, #0x80]
	mov     r0, #0x6
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	ble     branch_226063a
	lsl     r0, r0, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_2260648
@ 0x226063a

.thumb
branch_226063a: @ 226063a :thumb
	lsl     r0, r0, #12
	blx     _fflt
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
.thumb
branch_2260648: @ 2260648 :thumb
	blx     _ffix
	ldr     r1, [sp, #0x84]
	add     r0, r1, r0
	str     r0, [sp, #0x84]
	add     r0, sp, #0x78
	bl      Function_2021b90
	str     r0, [r7, #0x7c]
	ldrb    r1, [r4, #0x1]
	bl      Function_2021f24
.thumb
branch_2260660: @ 2260660 :thumb
	ldr     r0, [sp, #0x48]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r0, #0xc
	.hword  0x1d3f @ add r7, r7, #0x4
	str     r0, [sp, #0x48]
	cmp     r6, #0xc
	bge     branch_2260670
	b       branch_226050e
@ 0x2260670

.thumb
branch_2260670: @ 2260670 :thumb
	ldr     r0, [sp, #0x50]
	bl      Call_FS_CloseFile
	add     sp, #0x98
	pop     {r3-r7,pc}
@ 0x226067a


.align 2


.word 0x226d60c @ 0x226067c
.word 0x226d59c @ 0x2260680
.word 0x226d594 @ 0x2260684
.word 0x226d7b4 @ 0x2260688
.thumb
Function_226068c: @ 226068c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r7, #0x0
	mov     r4, r5
.thumb
branch_2260696: @ 2260696 :thumb
	mov     r0, r4
	add     r0, #0xbc
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_22606cc
	ldr     r0, [r4, #0x7c]
	bl      Function_2021bd4
	mov     r0, #0x0
	str     r0, [r4, #0x7c]
	mov     r0, r4
	add     r0, #0xbc
	ldr     r0, [r0, #0x0]
	bl      Function_200a4e4
	mov     r0, #0x13
	mov     r1, r4
	lsl     r0, r0, #4
	add     r1, #0xbc
	ldr     r0, [r6, r0]
	ldr     r1, [r1, #0x0]
	bl      Function_2009d68
	mov     r1, r4
	add     r1, #0xbc
	mov     r0, #0x0
	str     r0, [r1, #0x0]
.thumb
branch_22606cc: @ 22606cc :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r7, #0xc
	blt     branch_2260696
	mov     r4, #0x0
	mov     r7, r4
.thumb
branch_22606d8: @ 22606d8 :thumb
	mov     r0, r5
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_226071c
	bl      Function_200a6dc
	mov     r0, #0x4d
	mov     r1, r5
	lsl     r0, r0, #2
	add     r1, #0xac
	ldr     r0, [r6, r0]
	ldr     r1, [r1, #0x0]
	bl      Function_2009d68
	mov     r0, #0x4e
	mov     r1, r5
	lsl     r0, r0, #2
	add     r1, #0xec
	ldr     r0, [r6, r0]
	ldr     r1, [r1, #0x0]
	bl      Function_2009d68
	mov     r0, #0x4f
	mov     r1, r5
	lsl     r0, r0, #2
	add     r1, #0xfc
	ldr     r0, [r6, r0]
	ldr     r1, [r1, #0x0]
	bl      Function_2009d68
	mov     r0, r5
	add     r0, #0xac
	str     r7, [r0, #0x0]
.thumb
branch_226071c: @ 226071c :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_22606d8
	pop     {r3-r7,pc}
@ 0x2260726


.align 2, 0


.thumb
Function_2260728: @ 2260728 :thumb
	cmp     r1, r2
	bne     branch_2260734
	ldr     r1, [pc, #0xc] @ 0x226073c, (=0x226d5fc)
	lsl     r0, r3, #3
	add     r0, r1, r0
	bx      lr
@ 0x2260734

.thumb
branch_2260734: @ 2260734 :thumb
	ldr     r1, [pc, #0x8] @ 0x2260740, (=0x226d844)
	lsl     r0, r0, #3
	add     r0, r1, r0
	bx      lr
@ 0x226073c

.word 0x226d5fc @ 0x226073c
.word 0x226d844 @ 0x2260740
.thumb
Function_2260744: @ 2260744 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	str     r0, [sp, #0x4]
	ldr     r0, [r1, #0x0]
	ldr     r1, [sp, #0x4]
	str     r2, [sp, #0x8]
	ldr     r2, [pc, #0x48] @ 0x226079c, (=0x226d5a4)
	add     r1, #0xc
	mov     r7, r3
	bl      Function_201a8d4
	ldr     r4, [sp, #0x4]
	ldr     r5, [sp, #0x4]
	mov     r6, #0x0
	add     r4, #0x2c
.thumb
branch_2260762: @ 2260762 :thumb
	mov     r1, r6
	ldr     r0, [sp, #0x8]
	add     r1, #0x38
	mov     r2, #0x0
	mov     r3, r4
	str     r7, [sp, #0x0]
	bl      Function_20071d0
	str     r0, [r5, #0x20]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x3
	blt     branch_2260762
	ldr     r0, [pc, #0x20] @ 0x22607a0, (=0x226d58c)
	ldr     r2, [pc, #0x20] @ 0x22607a4, (=0x2260a51)
	ldr     r3, [sp, #0x4]
	mov     r1, #0x1
	str     r7, [sp, #0x0]
	bl      Function_2023fcc
	ldr     r1, [sp, #0x4]
	str     r0, [r1, #0x1c]
	ldr     r0, [sp, #0x4]
	mov     r1, #0x1
	strh    r1, [r0, #0x6]
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x226079a


.align 2


.word 0x226d5a4 @ 0x226079c
.word 0x226d58c @ 0x22607a0
.word Function_2260a50+1 @ =0x2260a51, 0x22607a4
.thumb
Function_22607a8: @ 22607a8 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	ldr     r0, [r6, #0x1c]
	bl      Function_2024034
	mov     r0, r6
	add     r0, #0xc
	bl      Function_201a8fc
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_22607be: @ 22607be :thumb
	ldr     r0, [r5, #0x20]
	bl      free
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x3
	blt     branch_22607be
	mov     r0, #0x0
	strb    r0, [r6, #0x2]
	pop     {r4-r6,pc}
@ 0x22607d2


.align 2, 0


.thumb
Function_22607d4: @ 22607d4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldrh    r0, [r5, #0x6]
	mov     r6, r1
	mov     r7, r2
	mov     r4, r3
	cmp     r0, #0x0
	bne     branch_22607f2
	ldr     r0, [r5, #0x1c]
	bl      Function_202404c
	b       branch_22607f6
@ 0x22607f2

.thumb
branch_22607f2: @ 22607f2 :thumb
	mov     r0, #0x1
	strb    r0, [r5, #0x3]
.thumb
branch_22607f6: @ 22607f6 :thumb
	ldrb    r0, [r5, #0x2]
	cmp     r0, #0x1
	bne     branch_2260812
	mov     r2, #0x0
	ldsh    r0, [r5, r2]
	cmp     r0, #0x0
	bne     branch_2260812
	strb    r2, [r5, #0x2]
	mov     r0, r5
	mov     r1, r6
	mov     r3, r7
	str     r4, [sp, #0x0]
	bl      Function_22609d4
.thumb
branch_2260812: @ 2260812 :thumb
	ldrb    r1, [r5, #0x3]
	ldrh    r0, [r5, #0x4]
	cmp     r1, r0
	beq     branch_2260868
	strh    r1, [r5, #0x4]
	ldrb    r0, [r5, #0x3]
	cmp     r0, #0x2
	bne     branch_2260832
	mov     r0, r5
	mov     r1, r6
	mov     r2, #0x1
	mov     r3, r7
	str     r4, [sp, #0x0]
	bl      Function_22609d4
	b       branch_2260854
@ 0x2260832

.thumb
branch_2260832: @ 2260832 :thumb
	ldrb    r0, [r5, #0x2]
	cmp     r0, #0x0
	str     r4, [sp, #0x0]
	bne     branch_2260848
	mov     r0, r5
	mov     r1, r6
	mov     r2, #0x0
	mov     r3, r7
	bl      Function_22609d4
	b       branch_2260854
@ 0x2260848

.thumb
branch_2260848: @ 2260848 :thumb
	mov     r0, r5
	mov     r1, r6
	mov     r2, #0x2
	mov     r3, r7
	bl      Function_22609d4
.thumb
branch_2260854: @ 2260854 :thumb
	ldrb    r0, [r5, #0x2]
	cmp     r0, #0x0
	bne     branch_2260868
	ldrb    r0, [r5, #0x3]
	cmp     r0, #0x2
	bne     branch_2260868
	mov     r0, #0x1
	strb    r0, [r5, #0x2]
	str     r0, [sp, #0x4]
	strh    r0, [r5, #0x0]
.thumb
branch_2260868: @ 2260868 :thumb
	ldr     r0, [sp, #0x4]
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x226086e


.align 2, 0


.thumb
Function_2260870: @ 2260870 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r6, r1
	ldr     r4, [sp, #0x34]
	str     r0, [sp, #0x8]
	ldr     r7, [sp, #0x30]
	str     r3, [sp, #0x14]
	str     r4, [sp, #0xc]
	str     r2, [sp, #0x10]
	ldr     r2, [r6, #0x0]
	mov     r0, r7
	mov     r1, #0x37
	mov     r3, #0x4
	bl      Function_200710c
	mov     r0, #0x0
	strh    r0, [r5, #0x8]
	ldr     r0, [sp, #0x14]
	bl      0x222e8c4
	strh    r0, [r5, #0xa]
	mov     r0, #0x5
	lsl     r0, r0, #6
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r4, [sp, #0xc]
	ldrh    r1, [r5, #0xa]
	ldr     r2, [r6, #0x0]
	mov     r0, r7
	mov     r3, #0x6
	bl      Function_20070e8
	mov     r0, #0x5
	lsl     r0, r0, #6
	str     r0, [sp, #0x0]
	str     r4, [sp, #0x4]
	ldrh    r2, [r5, #0xa]
	mov     r0, r6
	mov     r1, r7
	add     r2, #0x1b
	mov     r3, #0x6
	bl      Function_225fa14
	ldr     r0, [sp, #0x10]
	mov     r1, #0x1
	mov     r2, #0x3f
	bl      Function_225f288
	str     r0, [sp, #0x18]
	mov     r0, r5
	add     r0, #0xc
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [pc, #0x3c] @ 0x226092c, (=0xf0e00)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, r5
	ldr     r2, [sp, #0x18]
	str     r1, [sp, #0xc]
	add     r0, #0xc
	mov     r3, r1
	bl      Function_201d78c
	ldrb    r0, [r5, #0x2]
	cmp     r0, #0x0
	str     r4, [sp, #0x0]
	bne     branch_226091a
	mov     r0, r5
	mov     r1, r6
	mov     r2, #0x0
	mov     r3, r7
	bl      Function_22609d4
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x226091a

.thumb
branch_226091a: @ 226091a :thumb
	mov     r0, r5
	mov     r1, r6
	mov     r2, #0x2
	mov     r3, r7
	bl      Function_22609d4
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x226092a


.align 2


.word 0xf0e00 @ 0x226092c
.thumb
Function_2260930: @ 2260930 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r7, r2
	mov     r5, r0
	mov     r6, r1
	str     r3, [sp, #0x10]
	ldr     r4, [sp, #0x28]
	cmp     r7, #0x3
	bcc     branch_2260946
	bl      ErrorHandling
.thumb
branch_2260946: @ 2260946 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r4, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	ldr     r2, [r6, #0x0]
	mov     r1, #0x37
	mov     r3, #0x4
	bl      Function_200710c
	mov     r0, #0x1
	strh    r0, [r5, #0x8]
	mov     r0, #0x5
	strh    r7, [r5, #0xa]
	lsl     r0, r0, #6
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r4, [sp, #0xc]
	ldrh    r1, [r5, #0xa]
	ldr     r0, [sp, #0x10]
	ldr     r2, [r6, #0x0]
	add     r1, #0x5d
	mov     r3, #0x6
	bl      Function_20070e8
	ldrb    r0, [r5, #0x2]
	cmp     r0, #0x0
	str     r4, [sp, #0x0]
	bne     branch_2260996
	ldr     r3, [sp, #0x10]
	mov     r0, r5
	mov     r1, r6
	mov     r2, #0x0
	bl      Function_22609d4
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2260996

.thumb
branch_2260996: @ 2260996 :thumb
	ldr     r3, [sp, #0x10]
	mov     r0, r5
	mov     r1, r6
	mov     r2, #0x2
	bl      Function_22609d4
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x22609a6


.align 2, 0


.thumb
Function_22609a8: @ 22609a8 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r0, [r4, #0x0]
	mov     r1, #0x4
	bl      Function_2019ebc
	ldr     r0, [r4, #0x0]
	mov     r1, #0x5
	bl      Function_2019ebc
	ldr     r0, [r4, #0x0]
	mov     r1, #0x6
	bl      Function_2019ebc
	ldr     r0, [r4, #0x0]
	mov     r1, #0x6
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2019184
	pop     {r4,pc}
@ 0x22609d2


.align 2, 0


.thumb
Function_22609d4: @ 22609d4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0
	mov     r0, #0x20
	mov     r4, r1
	mov     r6, r2
	str     r0, [sp, #0x0]
	mov     r1, #0x15
	str     r1, [sp, #0x4]
	lsl     r1, r6, #2
	add     r1, r5, r1
	ldr     r1, [r1, #0x2c]
	mov     r7, r3
	add     r1, #0xc
	str     r1, [sp, #0x8]
	mov     r2, #0x0
	str     r2, [sp, #0xc]
	mov     r3, #0x3
	str     r3, [sp, #0x10]
	str     r0, [sp, #0x14]
	str     r0, [sp, #0x18]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x5
	bl      Function_20198e8
	ldr     r0, [r4, #0x0]
	mov     r1, #0x5
	bl      Function_201c3c0
	ldrh    r0, [r5, #0x8]
	cmp     r0, #0x1
	bne     branch_2260a34
	mov     r0, #0x5
	lsl     r0, r0, #6
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x30]
	ldr     r2, [pc, #0x28] @ 0x2260a48, (=0x226d584)
	str     r0, [sp, #0x4]
	ldrh    r3, [r5, #0xa]
	ldrb    r2, [r2, r6]
	mov     r0, r4
	lsl     r3, r3, #1
	add     r2, r2, r3
	mov     r1, r7
	add     r2, #0x60
	mov     r3, #0x6
	bl      Function_225fa14
.thumb
branch_2260a34: @ 2260a34 :thumb
	ldr     r3, [pc, #0x14] @ 0x2260a4c, (=0x226d588)
	ldr     r0, [r4, #0x0]
	ldsb    r3, [r3, r6]
	mov     r1, #0x6
	mov     r2, #0x3
	bl      Function_201c63c
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x2260a46


.align 2


.word 0x226d584 @ 0x2260a48
.word 0x226d588 @ 0x2260a4c
.thumb
Function_2260a50: @ 2260a50 :thumb
	strb    r1, [r2, #0x3]
	ldrb    r0, [r2, #0x3]
	cmp     r0, #0x0
	bne     branch_2260a5e
	mov     r0, #0x2
	strb    r0, [r2, #0x3]
	bx      lr
@ 0x2260a5e

.thumb
branch_2260a5e: @ 2260a5e :thumb
	cmp     r0, #0x3
	bne     branch_2260a66
	mov     r0, #0x1
	strb    r0, [r2, #0x3]
.thumb
branch_2260a66: @ 2260a66 :thumb
	bx      lr
@ 0x2260a68

.thumb
Function_2260a68: @ 2260a68 :thumb
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	bx      lr
@ 0x2260a6e


.align 2, 0


.thumb
Function_2260a70: @ 2260a70 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r1, #0x14
	mov     r5, r0
	bl      malloc
	mov     r4, r0
	mov     r2, r4
	mov     r1, #0x14
	mov     r0, #0x0
.thumb
branch_2260a84: @ 2260a84 :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_2260a84
	mov     r0, r5
	bl      Function_20203ac
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0x28] @ 0x2260ac8, (=0x29aec1)
	str     r0, [sp, #0x8]
	mov     r0, r4
	ldr     r2, [pc, #0x24] @ 0x2260acc, (=0x226d904)
	ldr     r3, [pc, #0x28] @ 0x2260ad0, (=0x5c1)
	add     r0, #0x8
	bl      Function_20206d0
	ldr     r0, [r4, #0x0]
	bl      Function_20203d4
	mov     r0, #0x96
	mov     r1, #0xe1
	ldr     r2, [r4, #0x0]
	lsl     r0, r0, #12
	lsl     r1, r1, #14
	bl      Function_20206bc
	mov     r0, r4
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2260ac8

.word 0x29aec1 @ 0x2260ac8
.word 0x226d904 @ 0x2260acc
.word 0x5c1 @ 0x2260ad0



.thumb
Function_2260ad4: @ 2260ad4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_20203e0
	ldr     r0, [r4, #0x0]
	bl      Call_free5
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x2260aea


.align 2, 0
.thumb
Function_2260aec: @ 2260aec :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_2260b10
	mov     r1, r4
	add     r1, #0x8
	bl      Function_225d054
	mov     r0, #0x2
	ldr     r1, [r4, #0x8]
	lsl     r0, r0, #14
	add     r1, r1, r0
	str     r1, [r4, #0x8]
	ldr     r1, [r4, #0x10]
	lsl     r0, r0, #2
	sub     r0, r1, r0
	str     r0, [r4, #0x10]
.thumb
branch_2260b10: @ 2260b10 :thumb
	bl      Function_20203ec
	pop     {r4,pc}
@ 0x2260b16


.align 2, 0


.thumb
Function_2260b18: @ 2260b18 :thumb
	str     r1, [r0, #0x8]
	str     r2, [r0, #0xc]
	str     r3, [r0, #0x10]
	bx      lr
@ 0x2260b20

.thumb
Function_2260b20: @ 2260b20 :thumb
	push    {r3,r4}
	mov     r4, #0x2
	lsl     r4, r4, #14
	add     r1, r1, r4
	str     r1, [r0, #0x8]
	lsl     r1, r4, #2
	str     r2, [r0, #0xc]
	sub     r1, r3, r1
	str     r1, [r0, #0x10]
	pop     {r3,r4}
	bx      lr
@ 0x2260b36


.align 2, 0


.thumb
Function_2260b38: @ 2260b38 :thumb
	str     r1, [r0, #0x4]
	bx      lr
@ 0x2260b3c

.thumb
Function_2260b3c: @ 2260b3c :thumb
	mov     r1, #0x0
	str     r1, [r0, #0x4]
	bx      lr
@ 0x2260b42


.align 2, 0


.thumb
Function_2260b44: @ 2260b44 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r1
	mov     r5, r0
	ldr     r1, [pc, #0x64] @ 0x2260bb4, (=0x4a4)
	mov     r0, r2
	str     r2, [sp, #0x0]
	bl      malloc
	ldr     r2, [pc, #0x5c] @ 0x2260bb4, (=0x4a4)
	mov     r1, #0x0
	mov     r4, r0
	blx     Call_FillMemWithValue
	mov     r0, #0xb4
	mul     r0, r5
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	bl      malloc
	mov     r1, #0x47
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0xe4
	mov     r7, r6
	mul     r7, r0
	ldr     r0, [sp, #0x0]
	mov     r1, r7
	bl      malloc
	mov     r1, #0x12
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	.hword  0x1f08 @ sub r0, r1, #0x4
	ldr     r0, [r4, r0]
	ldr     r2, [sp, #0x4]
	mov     r1, #0x0
	blx     Call_FillMemWithValue
	mov     r0, #0x12
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	mov     r2, r7
	blx     Call_FillMemWithValue
	mov     r0, #0x49
	lsl     r0, r0, #2
	strb    r5, [r4, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r6, [r4, r0]
	mov     r0, r4
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2260bb2


.align 2


.word 0x4a4 @ 0x2260bb4
.thumb
Function_2260bb8: @ 2260bb8 :thumb
	push    {r4,lr}
	mov     r1, #0x4a
	mov     r4, r0
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	cmp     r1, #0x0
	beq     branch_2260bca
	bl      Function_2260d80
.thumb
branch_2260bca: @ 2260bca :thumb
	mov     r0, #0x47
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      free
	mov     r0, #0x12
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      free
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x2260be6


.align 2, 0


.thumb
Function_2260be8: @ 2260be8 :thumb
	push    {r3-r7,lr}
	mov     r1, #0x4b
	mov     r5, r0
	lsl     r1, r1, #2
	add     r1, r5, r1
	bl      Function_22616b0
	mov     r0, #0x49
	lsl     r0, r0, #2
	ldrb    r0, [r5, r0]
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_2260c24
	mov     r7, #0x71
	mov     r6, r4
	lsl     r7, r7, #2
.thumb
branch_2260c08: @ 2260c08 :thumb
	mov     r0, #0x47
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	add     r1, r5, r7
	add     r0, r0, r6
	bl      Function_2261968
	mov     r0, #0x49
	lsl     r0, r0, #2
	ldrb    r0, [r5, r0]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r6, #0xb4
	cmp     r4, r0
	blt     branch_2260c08
.thumb
branch_2260c24: @ 2260c24 :thumb
	ldr     r0, [pc, #0x24] @ 0x2260c4c, (=0x125)
	mov     r6, #0x0
	ldrb    r0, [r5, r0]
	cmp     r0, #0x0
	ble     branch_2260c4a
	ldr     r7, [pc, #0x1c] @ 0x2260c4c, (=0x125)
	mov     r4, r6
.thumb
branch_2260c32: @ 2260c32 :thumb
	mov     r1, #0x12
	lsl     r1, r1, #4
	ldr     r1, [r5, r1]
	mov     r0, r5
	add     r1, r1, r4
	bl      Function_2261c60
	ldrb    r0, [r5, r7]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0xe4
	cmp     r6, r0
	blt     branch_2260c32
.thumb
branch_2260c4a: @ 2260c4a :thumb
	pop     {r3-r7,pc}
@ 0x2260c4c

.word 0x125 @ 0x2260c4c
.thumb
Function_2260c50: @ 2260c50 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bne     branch_2260c5a
	bl      ErrorHandling
.thumb
branch_2260c5a: @ 2260c5a :thumb
	mov     r0, #0x12
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	bne     branch_2260c68
	bl      ErrorHandling
.thumb
branch_2260c68: @ 2260c68 :thumb
	mov     r0, #0x47
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	bne     branch_2260c76
	bl      ErrorHandling
.thumb
branch_2260c76: @ 2260c76 :thumb
	mov     r1, #0x4b
	lsl     r1, r1, #2
	mov     r0, r5
	add     r1, r5, r1
	bl      Function_22616fc
	ldr     r0, [pc, #0x58] @ 0x2260cdc, (=0x125)
	mov     r4, #0x0
	ldrb    r0, [r5, r0]
	cmp     r0, #0x0
	ble     branch_2260cac
	mov     r7, #0xa7
	mov     r6, r4
	lsl     r7, r7, #2
.thumb
branch_2260c92: @ 2260c92 :thumb
	mov     r1, #0x12
	lsl     r1, r1, #4
	ldr     r1, [r5, r1]
	add     r0, r5, r7
	add     r1, r1, r6
	bl      Function_2261c04
	ldr     r0, [pc, #0x38] @ 0x2260cdc, (=0x125)
	.hword  0x1c64 @ add r4, r4, #0x1
	ldrb    r0, [r5, r0]
	add     r6, #0xe4
	cmp     r4, r0
	blt     branch_2260c92
.thumb
branch_2260cac: @ 2260cac :thumb
	mov     r0, #0x49
	lsl     r0, r0, #2
	ldrb    r0, [r5, r0]
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_2260cda
	mov     r7, #0x71
	mov     r6, r4
	lsl     r7, r7, #2
.thumb
branch_2260cbe: @ 2260cbe :thumb
	mov     r0, #0x47
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	add     r1, r5, r7
	add     r0, r0, r6
	bl      Function_22619f4
	mov     r0, #0x49
	lsl     r0, r0, #2
	ldrb    r0, [r5, r0]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r6, #0xb4
	cmp     r4, r0
	blt     branch_2260cbe
.thumb
branch_2260cda: @ 2260cda :thumb
	pop     {r3-r7,pc}
@ 0x2260cdc

.word 0x125 @ 0x2260cdc
.thumb
Function_2260ce0: @ 2260ce0 :thumb
	bx      lr
@ 0x2260ce2


.align 2, 0


.thumb
Function_2260ce4: @ 2260ce4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x8c] @ 0x2260d78, (=0x127)
	mov     r7, r3
	strb    r2, [r5, r0]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r1, [r5, r0]
	mov     r0, r1
	mov     r1, r2
	mov     r2, r7
	ldr     r4, [sp, #0x18]
	bl      Function_22613f4
	mov     r6, r0

	mov     r0, #WifiLobby_Narc
	mov     r1, r7
	bl      LoadFromNARC_8
	mov     r7, r0
	ldr     r0, [pc, #0x70] @ 0x2260d7c, (=0x494)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0x4
	bl      Function_20182cc
	ldr     r0, [pc, #0x64] @ 0x2260d7c, (=0x494)
	mov     r1, r7
	add     r0, r5, r0
	str     r0, [sp, #0x0]
	mov     r0, #0x4b
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r2, r6
	mov     r3, r4
	bl      Function_22614f4
	mov     r0, #0xa7
	ldr     r2, [pc, #0x4c] @ 0x2260d7c, (=0x494)
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, r7
	add     r2, r5, r2
	mov     r3, r6
	str     r4, [sp, #0x0]
	bl      Function_2261b24
	mov     r0, #0x71
	ldr     r2, [pc, #0x38] @ 0x2260d7c, (=0x494)
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, r7
	add     r2, r5, r2
	mov     r3, r6
	str     r4, [sp, #0x0]
	bl      Function_226174c
	mov     r0, r7
	bl      Call_FS_CloseFile
	mov     r0, r6
	bl      Function_2261418
	mov     r1, #0x4b
	lsl     r1, r1, #2
	mov     r0, r5
	add     r1, r5, r1
	bl      Function_22615e8
	mov     r0, #0x4a
	mov     r1, #0x1
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	pop     {r3-r7,pc}
@ 0x2260d76


.align 2


.word 0x127 @ 0x2260d78
.word 0x494 @ 0x2260d7c
.thumb
Function_2260d80: @ 2260d80 :thumb
	push    {r4,lr}
	mov     r1, #0x4b
	mov     r4, r0
	lsl     r1, r1, #2
	add     r1, r4, r1
	bl      Function_2261664
	mov     r0, #0x4b
	ldr     r1, [pc, #0x30] @ 0x2260dc4, (=0x494)
	lsl     r0, r0, #2
	add     r0, r4, r0
	add     r1, r4, r1
	bl      Function_22615a4
	mov     r0, #0xa7
	ldr     r1, [pc, #0x24] @ 0x2260dc4, (=0x494)
	lsl     r0, r0, #2
	add     r0, r4, r0
	add     r1, r4, r1
	bl      Function_2261bb4
	mov     r0, #0x71
	ldr     r1, [pc, #0x14] @ 0x2260dc4, (=0x494)
	lsl     r0, r0, #2
	add     r0, r4, r0
	add     r1, r4, r1
	bl      Function_22618c8
	mov     r0, #0x4a
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	pop     {r4,pc}
@ 0x2260dc2


.align 2


.word 0x494 @ 0x2260dc4
.thumb
Function_2260dc8: @ 2260dc8 :thumb
	push    {r3,lr}
	mov     r2, #0x7
	mov     r1, r0
	lsl     r2, r2, #6
	ldr     r0, [r1, r2]
	cmp     r0, #0x1
	bne     branch_2260df2
	mov     r0, r2
	sub     r0, #0xbc
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_2260df2
	mov     r0, r2
	mov     r3, #0x1
	sub     r0, #0xbc
	str     r3, [r1, r0]
	sub     r2, #0x24
	add     r0, r1, #0x4
	add     r1, r1, r2
	bl      Function_201727c
.thumb
branch_2260df2: @ 2260df2 :thumb
	pop     {r3,pc}
@ 0x2260df4

.thumb
Function_2260df4: @ 2260df4 :thumb
	push    {r4,lr}
	mov     r1, #0x7
	mov     r4, r0
	lsl     r1, r1, #6
	ldr     r0, [r4, r1]
	cmp     r0, #0x1
	bne     branch_2260e1e
	mov     r0, r1
	sub     r0, #0xbc
	ldr     r0, [r4, r0]
	cmp     r0, #0x1
	bne     branch_2260e1e
	sub     r1, #0x24
	add     r0, r4, #0x4
	add     r1, r4, r1
	bl      Function_2017288
	mov     r0, #0x41
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
.thumb
branch_2260e1e: @ 2260e1e :thumb
	pop     {r4,pc}
@ 0x2260e20

.thumb
Function_2260e20: @ 2260e20 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r1
	mov     r7, r0
	mov     r6, r2
	str     r3, [sp, #0x0]
	cmp     r5, #0x2
	ble     branch_2260e34
	bl      ErrorHandling
.thumb
branch_2260e34: @ 2260e34 :thumb
	cmp     r6, #0x3
	ble     branch_2260e3c
	bl      ErrorHandling
.thumb
branch_2260e3c: @ 2260e3c :thumb
	mov     r0, r7
	bl      Function_2261718
	mov     r1, #0x71
	lsl     r1, r1, #2
	mov     r4, r0
	add     r2, r7, r1
	lsl     r1, r5, #4
	add     r0, r4, #0x4
	add     r1, r2, r1
	bl      Function_2017258
	add     r0, r4, #0x4
	mov     r1, #0x1
	bl      Function_2017348
	ldr     r1, [sp, #0x0]
	mov     r0, r4
	bl      Function_2260ea0
	add     r1, sp, #0x4
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	str     r0, [r1, #0x4]
	str     r0, [r1, #0x8]
	mov     r0, r4
	bl      Function_2260ee4
	strb    r6, [r4, #0x1]
	mov     r0, r4
	strb    r5, [r4, #0x2]
	mov     r1, #0x1
	strb    r1, [r4, #0x0]
	str     r1, [r4, #0x7c]
	add     r0, #0x84
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2260e8a


.align 2, 0


.thumb
Function_2260e8c: @ 2260e8c :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, r4, #0x4
	mov     r1, #0x0
	bl      Function_2017348
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x2260e9e


.align 2, 0


.thumb
Function_2260ea0: @ 2260ea0 :thumb
	push    {r4,lr}
	mov     r3, r0
	mov     r4, r1
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	add     r2, #0x9c
	stmia   r2!, {r0,r1}
	ldr     r0, [r4, #0x0]
	mov     r1, r3
	str     r0, [r2, #0x0]
	add     r1, #0x9c
	ldr     r2, [r1, #0x0]
	mov     r1, r3
	add     r1, #0xa8
	ldr     r1, [r1, #0x0]
	add     r0, r3, #0x4
	add     r1, r2, r1
	mov     r2, r3
	add     r2, #0xa0
	ldr     r4, [r2, #0x0]
	mov     r2, r3
	add     r2, #0xac
	ldr     r2, [r2, #0x0]
	add     r2, r4, r2
	mov     r4, r3
	add     r4, #0xa4
	add     r3, #0xb0
	ldr     r4, [r4, #0x0]
	ldr     r3, [r3, #0x0]
	add     r3, r4, r3
	bl      Function_2017350
	pop     {r4,pc}
@ 0x2260ee2


.align 2, 0


.thumb
Function_2260ee4: @ 2260ee4 :thumb
	push    {r4,lr}
	mov     r3, r0
	mov     r4, r1
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	add     r2, #0xa8
	stmia   r2!, {r0,r1}
	ldr     r0, [r4, #0x0]
	mov     r1, r3
	str     r0, [r2, #0x0]
	add     r1, #0x9c
	ldr     r2, [r1, #0x0]
	mov     r1, r3
	add     r1, #0xa8
	ldr     r1, [r1, #0x0]
	add     r0, r3, #0x4
	add     r1, r2, r1
	mov     r2, r3
	add     r2, #0xa0
	ldr     r4, [r2, #0x0]
	mov     r2, r3
	add     r2, #0xac
	ldr     r2, [r2, #0x0]
	add     r2, r4, r2
	mov     r4, r3
	add     r4, #0xa4
	add     r3, #0xb0
	ldr     r4, [r4, #0x0]
	ldr     r3, [r3, #0x0]
	add     r3, r4, r3
	bl      Function_2017350
	pop     {r4,pc}
@ 0x2260f26


.align 2, 0


.thumb
Function_2260f28: @ 2260f28 :thumb
	push    {r3,lr}
	mov     r3, r1
	.hword  0x1d00 @ add r0, r0, #0x4
	add     r2, r1, #0x4
	add     r3, #0x8
	bl      Function_2017358
	pop     {r3,pc}
@ 0x2260f38

.thumb
Function_2260f38: @ 2260f38 :thumb
	ldr     r3, [pc, #0x4] @ 0x2260f40, (=Function_2017348+1)
	.hword  0x1d00 @ add r0, r0, #0x4
	bx      r3
@ 0x2260f3e


.align 2


.word Function_2017348+1 @ 0x2260f40
.thumb
Function_2260f44: @ 2260f44 :thumb
	mov     r1, r0
	add     r1, #0x80
	ldr     r1, [r1, #0x0]
	cmp     r1, #0x0
	bne     branch_2260f58
	mov     r1, #0x1
	add     r0, #0x80
	str     r1, [r0, #0x0]
	mov     r0, r1
	bx      lr
@ 0x2260f58

.thumb
branch_2260f58: @ 2260f58 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2260f5c

.thumb
Function_2260f5c: @ 2260f5c :thumb
	mov     r1, r0
	add     r1, #0x88
	ldr     r1, [r1, #0x0]
	cmp     r1, #0x0
	bne     branch_2260f70
	mov     r1, #0x1
	add     r0, #0x88
	str     r1, [r0, #0x0]
	mov     r0, r1
	bx      lr
@ 0x2260f70

.thumb
branch_2260f70: @ 2260f70 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2260f74


.thumb
Function_2260f74: @ 2260f74 :thumb
	ldr     r3, [pc, #0x4] @ 0x2260f7c, (=Function_2017388+1)
	.hword  0x1d00 @ add r0, r0, #0x4
	mov     r2, #0x0
	bx      r3
@ 0x2260f7c

.word Function_2017388+1 @ 0x2260f7c



.thumb
Function_2260f80: @ 2260f80 :thumb
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bx      lr
@ 0x2260f86


.align 2, 0


.thumb
Function_2260f88: @ 2260f88 :thumb
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	bx      lr
@ 0x2260f8e


.align 2, 0


.thumb
Function_2260f90: @ 2260f90 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r7, r0
	str     r1, [sp, #0x0]
	str     r2, [sp, #0x4]
	str     r3, [sp, #0x8]
	bl      Function_2261af0
	mov     r1, #0xa7
	lsl     r1, r1, #2
	add     r2, r7, r1
	ldr     r1, [sp, #0x0]
	str     r0, [sp, #0xc]
	lsl     r1, r1, #4
	.hword  0x1d00 @ add r0, r0, #0x4
	add     r1, r2, r1
	bl      Function_2017258
	ldr     r5, [sp, #0xc]
	ldr     r0, [sp, #0x0]
	mov     r1, #0xc
	mul     r1, r0
	mov     r0, #0xa7
	lsl     r0, r0, #2
	add     r0, r7, r0
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x0]
	mov     r6, #0x0
	lsl     r0, r0, #4
	add     r4, r7, r1
	add     r5, #0x7c
	str     r0, [sp, #0x14]
.thumb
branch_2260fd0: @ 2260fd0 :thumb
	mov     r0, #0xef
	lsl     r0, r0, #2
	ldr     r2, [r4, r0]
	cmp     r2, #0x0
	beq     branch_2260fea
	ldr     r3, [sp, #0x10]
	ldr     r1, [sp, #0x14]
	mov     r0, r5
	add     r1, r3, r1
	ldr     r3, [pc, #0x70] @ 0x2261054, (=0x494)
	add     r3, r7, r3
	bl      Function_2017190
.thumb
branch_2260fea: @ 2260fea :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r5, #0x14
	cmp     r6, #0x3
	blt     branch_2260fd0
	ldr     r0, [sp, #0xc]
	mov     r1, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	bl      Function_2017348
	ldr     r0, [sp, #0x4]
	add     r1, sp, #0x18
	lsl     r0, r0, #4
	strh    r0, [r1, #0x0]
	ldr     r0, [sp, #0x8]
	mov     r3, sp
	lsl     r0, r0, #4
	strh    r0, [r1, #0x2]
	ldrh    r2, [r1, #0x0]
	.hword  0x1f1b @ sub r3, r3, #0x4
	ldr     r0, [sp, #0xc]
	strh    r2, [r3, #0x0]
	ldrh    r1, [r1, #0x2]
	strh    r1, [r3, #0x2]
	ldr     r1, [r3, #0x0]
	bl      Function_22610bc
	ldr     r0, [sp, #0xc]
	mov     r2, #0x1
	ldr     r1, [sp, #0x0]
	strh    r2, [r0, #0x0]
	strh    r1, [r0, #0x2]
	mov     r1, #0x14
	add     r0, #0xcc
	strb    r1, [r0, #0x0]
	ldr     r0, [sp, #0xc]
	lsl     r1, r2, #12
	add     r0, #0xdc
	str     r1, [r0, #0x0]
	ldr     r0, [sp, #0xc]
	mov     r1, #0x0
	add     r0, #0xe0
	strb    r1, [r0, #0x0]
	ldr     r0, [sp, #0xc]
	mov     r1, #0x1f
	add     r0, #0xe1
	strb    r1, [r0, #0x0]
	ldr     r0, [sp, #0xc]
	add     r0, #0xe2
	strb    r1, [r0, #0x0]
	ldr     r0, [sp, #0xc]
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x2261054

.word 0x494 @ 0x2261054
.thumb
Function_2261058: @ 2261058 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r0
	str     r1, [sp, #0x0]
	add     r0, r1, #0x4
	mov     r1, #0x0
	bl      Function_2017348
	mov     r0, #0xa7
	ldr     r5, [sp, #0x0]
	lsl     r0, r0, #2
	mov     r7, #0x0
	add     r0, r6, r0
	mov     r4, r7
	add     r5, #0x7c
	str     r0, [sp, #0x4]
.thumb
branch_2261078: @ 2261078 :thumb
	ldr     r0, [sp, #0x0]
	ldrh    r1, [r0, #0x2]
	mov     r0, #0xc
	mul     r0, r1
	add     r0, r6, r0
	add     r2, r4, r0
	mov     r0, #0xef
	lsl     r0, r0, #2
	ldr     r2, [r2, r0]
	cmp     r2, #0x0
	beq     branch_226109e
	lsl     r3, r1, #4
	ldr     r1, [sp, #0x4]
	mov     r0, r5
	add     r1, r1, r3
	ldr     r3, [pc, #0x1c] @ 0x22610b4, (=0x494)
	add     r3, r6, r3
	bl      Function_2017190
.thumb
branch_226109e: @ 226109e :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r5, #0x14
	cmp     r7, #0x3
	blt     branch_2261078
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x22610b2


.align 2


.word 0x494 @ 0x22610b4
.thumb
Function_22610b8: @ 22610b8 :thumb
	ldrh    r0, [r0, #0x2]
	bx      lr
@ 0x22610bc

.thumb
Function_22610bc: @ 22610bc :thumb
	push    {r0-r3}
.thumb
Function_22610be: @ 22610be :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	add     r0, sp, #0x1c
	add     r1, sp, #0x0
	bl      Function_225c700
	ldr     r1, [sp, #0x0]
	ldr     r2, [sp, #0x4]
	ldr     r3, [sp, #0x8]
	add     r0, r4, #0x4
	bl      Function_2017350
	add     sp, #0xc
	pop     {r3,r4}
	pop     {r3}
	add     sp, #0x10
	bx      r3
@ 0x22610e2


.align 2, 0


.thumb
Function_22610e4: @ 22610e4 :thumb
	push    {r3,lr}
	add     sp, #-0x10
	.hword  0x1d00 @ add r0, r0, #0x4
	add     r1, sp, #0x4
	add     r2, sp, #0x8
	add     r3, sp, #0xc
	bl      Function_2017358
	add     r0, sp, #0x4
	add     r1, sp, #0x0
	bl      Function_225c714
	add     r0, sp, #0x0
	ldrh    r1, [r0, #0x2]
	ldrh    r0, [r0, #0x0]
	lsl     r1, r1, #16
	orr     r0, r1
	add     sp, #0x10
	pop     {r3,pc}
@ 0x226110a


.align 2, 0


.thumb
Function_226110c: @ 226110c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, #0x0
	str     r4, [sp, #0x0]
	bl      Function_226111c
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x226111c

.thumb
Function_226111c: @ 226111c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r2
	str     r0, [sp, #0x0]
	mov     r4, r1
	mov     r7, r3
	cmp     r5, #0x3
	blt     branch_2261130
	bl      ErrorHandling
.thumb
branch_2261130: @ 2261130 :thumb
	cmp     r7, #0x7
	blt     branch_2261138
	bl      ErrorHandling
.thumb
branch_2261138: @ 2261138 :thumb
	ldrh    r0, [r4, #0x2]
	cmp     r0, #0x12
	bcc     branch_2261142
	bl      ErrorHandling
.thumb
branch_2261142: @ 2261142 :thumb
	ldrh    r0, [r4, #0x2]
	mov     r1, #0xc
	lsl     r6, r5, #2
	mul     r1, r0
	ldr     r0, [sp, #0x0]
	add     r0, r0, r1
	add     r1, r0, r6
	mov     r0, #0xef
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_226121c
	mov     r0, r4
	str     r0, [sp, #0x4]
	add     r0, #0xb8
	str     r0, [sp, #0x4]
	ldrb    r0, [r0, r5]
	cmp     r0, #0x0
	bne     branch_2261178
	mov     r2, r4
	mov     r1, #0x14
	add     r2, #0x7c
	mul     r1, r5
	add     r0, r4, #0x4
	add     r1, r2, r1
	bl      Function_201727c
.thumb
branch_2261178: @ 2261178 :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, #0x1
	strb    r1, [r0, r5]
	add     r0, r4, r5
	add     r0, #0xbc
	strb    r7, [r0, #0x0]
	add     r0, r4, r6
	ldr     r1, [sp, #0x20]
	add     r0, #0xd0
	str     r1, [r0, #0x0]
	mov     r0, r4
	str     r0, [sp, #0x8]
	add     r0, #0xcd
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	ldr     r1, [sp, #0x8]
	cmp     r7, #0x6
	strb    r0, [r1, r5]
	bhi     branch_2261208
	add     r1, r7, r7
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x22611aa

Jumppoints_22611aa:
.hword branch_22611b8 - Jumppoints_22611aa - 2
.hword branch_22611b8 - Jumppoints_22611aa - 2
.hword branch_22611b8 - Jumppoints_22611aa - 2
.hword branch_22611c0 - Jumppoints_22611aa - 2
.hword branch_22611c0 - Jumppoints_22611aa - 2
.hword branch_22611d6 - Jumppoints_22611aa - 2
.hword branch_22611f0 - Jumppoints_22611aa - 2
.thumb
branch_22611b8: @ 22611b8 :thumb
	add     r1, r4, r6
	add     r1, #0xc0
	str     r0, [r1, #0x0]
	b       branch_2261208
@ 0x22611c0

.thumb
branch_22611c0: @ 22611c0 :thumb
	mov     r1, r4
	mov     r0, #0x14
	add     r1, #0x7c
	mul     r0, r5
	add     r0, r1, r0
	bl      Function_201724c
	add     r1, r4, r6
	add     r1, #0xc0
	str     r0, [r1, #0x0]
	b       branch_2261208
@ 0x22611d6

.thumb
branch_22611d6: @ 22611d6 :thumb
	add     r1, r4, r6
	add     r1, #0xc0
	str     r0, [r1, #0x0]
	bl      Function_201d35c
	mov     r1, r4
	add     r1, #0xcc
	ldrb    r1, [r1, #0x0]
	blx     _u32_div_f
	ldr     r0, [sp, #0x8]
	strb    r1, [r0, r5]
	b       branch_2261208
@ 0x22611f0

.thumb
branch_22611f0: @ 22611f0 :thumb
	add     r1, r4, r6
	add     r1, #0xc0
	str     r0, [r1, #0x0]
	bl      Function_201d35c
	mov     r1, r4
	add     r1, #0xcc
	ldrb    r1, [r1, #0x0]
	blx     _u32_div_f
	ldr     r0, [sp, #0x8]
	strb    r1, [r0, r5]
.thumb
branch_2261208: @ 2261208 :thumb
	mov     r1, r4
	mov     r0, #0x14
	add     r1, #0x7c
	mul     r0, r5
	add     r0, r1, r0
	add     r1, r4, r6
	add     r1, #0xc0
	ldr     r1, [r1, #0x0]
	bl      Function_2017240
.thumb
branch_226121c: @ 226121c :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2261220

.thumb
Function_2261220: @ 2261220 :thumb
	push    {r4-r6,lr}
	mov     r4, r2
	mov     r6, r0
	mov     r5, r1
	cmp     r4, #0x3
	blt     branch_2261230
	bl      ErrorHandling
.thumb
branch_2261230: @ 2261230 :thumb
	ldrh    r0, [r5, #0x2]
	cmp     r0, #0x12
	bcc     branch_226123a
	bl      ErrorHandling
.thumb
branch_226123a: @ 226123a :thumb
	ldrh    r1, [r5, #0x2]
	mov     r0, #0xc
	mul     r0, r1
	add     r1, r6, r0
	lsl     r0, r4, #2
	add     r1, r1, r0
	mov     r0, #0xef
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2261288
	mov     r6, r5
	add     r6, #0xb8
	ldrb    r0, [r6, r4]
	cmp     r0, #0x1
	bne     branch_2261288
	mov     r2, r5
	mov     r1, #0x14
	add     r2, #0x7c
	mul     r1, r4
	add     r0, r5, #0x4
	add     r1, r2, r1
	bl      Function_2017288
	lsl     r2, r4, #2
	mov     r0, #0x0
	add     r1, r5, r2
	strb    r0, [r6, r4]
	add     r1, #0xc0
	str     r0, [r1, #0x0]
	add     r1, r5, r4
	add     r1, #0xbc
	strb    r0, [r1, #0x0]
	add     r1, r5, r4
	add     r1, #0xcd
	strb    r0, [r1, #0x0]
	add     r1, r5, r2
	add     r1, #0xd0
	str     r0, [r1, #0x0]
.thumb
branch_2261288: @ 2261288 :thumb
	pop     {r4-r6,pc}
@ 0x226128a


.align 2, 0


.thumb
Function_226128c: @ 226128c :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r4, #0x0
.thumb
branch_2261294: @ 2261294 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_2261348
	cmp     r0, #0x1
	bne     branch_22612aa
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	bl      Function_2261220
.thumb
branch_22612aa: @ 22612aa :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x3
	blt     branch_2261294
	pop     {r4-r6,pc}
@ 0x22612b2


.align 2, 0


.thumb
Function_22612b4: @ 22612b4 :thumb
	push    {r4-r6,lr}
	mov     r4, r2
	mov     r6, r0
	mov     r5, r1
	cmp     r4, #0x3
	blt     branch_22612c4
	bl      ErrorHandling
.thumb
branch_22612c4: @ 22612c4 :thumb
	ldrh    r0, [r5, #0x2]
	cmp     r0, #0x12
	bcc     branch_22612ce
	bl      ErrorHandling
.thumb
branch_22612ce: @ 22612ce :thumb
	ldrh    r1, [r5, #0x2]
	mov     r0, #0xc
	mul     r0, r1
	add     r1, r6, r0
	lsl     r0, r4, #2
	add     r1, r1, r0
	mov     r0, #0xef
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_22612ec
	add     r0, r5, r4
	add     r0, #0xb8
	ldrb    r0, [r0, #0x0]
	pop     {r4-r6,pc}
@ 0x22612ec

.thumb
branch_22612ec: @ 22612ec :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x22612f0

.thumb
Function_22612f0: @ 22612f0 :thumb
	push    {r3-r7,lr}
	mov     r4, r2
	mov     r6, r0
	mov     r5, r1
	mov     r7, r3
	cmp     r4, #0x3
	blt     branch_2261302
	bl      ErrorHandling
.thumb
branch_2261302: @ 2261302 :thumb
	ldrh    r0, [r5, #0x2]
	cmp     r0, #0x12
	bcc     branch_226130c
	bl      ErrorHandling
.thumb
branch_226130c: @ 226130c :thumb
	ldrh    r1, [r5, #0x2]
	mov     r0, #0xc
	mul     r0, r1
	add     r1, r6, r0
	lsl     r0, r4, #2
	add     r1, r1, r0
	mov     r0, #0xef
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_2261326
	bl      ErrorHandling
.thumb
branch_2261326: @ 2261326 :thumb
	add     r0, r5, r4
	add     r0, #0xbc
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x2
	bne     branch_2261346
	mov     r2, r5
	mov     r0, #0x14
	add     r2, #0xc0
	lsl     r1, r4, #2
	str     r7, [r2, r1]
	add     r5, #0x7c
	mul     r0, r4
	ldr     r1, [r2, r1]
	add     r0, r5, r0
	bl      Function_2017240
.thumb
branch_2261346: @ 2261346 :thumb
	pop     {r3-r7,pc}
@ 0x2261348

.thumb
Function_2261348: @ 2261348 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0x3
	blt     branch_2261356
	bl      ErrorHandling
.thumb
branch_2261356: @ 2261356 :thumb
	ldrh    r0, [r5, #0x2]
	cmp     r0, #0x12
	bcc     branch_2261360
	bl      ErrorHandling
.thumb
branch_2261360: @ 2261360 :thumb
	add     r0, r5, r4
	add     r0, #0xb8
	ldrb    r0, [r0, #0x0]
	pop     {r3-r5,pc}
@ 0x2261368

.thumb
Function_2261368: @ 2261368 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0x3
	blt     branch_2261376
	bl      ErrorHandling
.thumb
branch_2261376: @ 2261376 :thumb
	ldrh    r0, [r5, #0x2]
	cmp     r0, #0x12
	bcc     branch_2261380
	bl      ErrorHandling
.thumb
branch_2261380: @ 2261380 :thumb
	lsl     r0, r4, #2
	add     r0, r5, r0
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	pop     {r3-r5,pc}
@ 0x226138a


.align 2, 0


.thumb
Function_226138c: @ 226138c :thumb
	ldr     r3, [pc, #0x4] @ 0x2261394, (=Function_2017348+1)
	.hword  0x1d00 @ add r0, r0, #0x4
	bx      r3
@ 0x2261392

.align 2
.word Function_2017348+1 @ 0x2261394



.thumb
Function_2261398: @ 2261398 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	ldrh    r0, [r4, #0x2]
	mov     r6, r2
	cmp     r0, #0x12
	bcc     branch_22613aa
	bl      ErrorHandling
.thumb
branch_22613aa: @ 22613aa :thumb
	ldrh    r0, [r4, #0x2]
	lsl     r0, r0, #4
	add     r1, r5, r0
	mov     r0, #0xa9
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	mov     r1, r6
	blx     Function_20b3664
	pop     {r4-r6,pc}
@ 0x22613be


.align 2, 0


.thumb
Function_22613c0: @ 22613c0 :thumb
	add     r0, #0xdc
	str     r1, [r0, #0x0]
	bx      lr
@ 0x22613c6


.align 2, 0


.thumb
Function_22613c8: @ 22613c8 :thumb
	push    {r3,r4}
	mov     r3, r0
	mov     r4, #0x1
	add     r3, #0xe0
	strb    r4, [r3, #0x0]
	mov     r3, r0
	add     r3, #0xe1
	strb    r1, [r3, #0x0]
	add     r0, #0xe2
	strb    r2, [r0, #0x0]
	pop     {r3,r4}
	bx      lr
@ 0x22613e0

.thumb
Function_22613e0: @ 22613e0 :thumb
	mov     r1, #0x0
	add     r0, #0xe0
	strb    r1, [r0, #0x0]
	bx      lr
@ 0x22613e8

.thumb
Function_22613e8: @ 22613e8 :thumb
	push    {r3,lr}
	.hword  0x1d00 @ add r0, r0, #0x4
	bl      Function_201736c
	pop     {r3,pc}
@ 0x22613f2


.align 2, 0


.thumb
Function_22613f4: @ 22613f4 :thumb
	push    {r3-r5,lr}
	mov     r5, r2
	lsl     r2, r1, #2
	add     r1, r1, r2
	add     r4, r0, r1
	cmp     r4, #0x19
	bcc     branch_2261406
	bl      ErrorHandling
.thumb
branch_2261406: @ 2261406 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0xae
	add     r1, r4, #0x1
	mov     r2, #0x0
	mov     r3, r5
	bl      Function_2006fe8_LoadFromNARC_UncompressLZ8
	pop     {r3-r5,pc}
@ 0x2261418


.thumb
Function_2261418: @ 2261418 :thumb
	ldr     r3, [pc, #0x0] @ 0x226141c, (=free+1)
	bx      r3
@ 0x226141c

.word free+1 @ 0x226141c



.thumb
Function_2261420: @ 2261420 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_225c730
	ldr     r0, [r4, #0x0]
	blx     Function_20b3c0c_GetAdrOfDataPart
	str     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_2261454
	mov     r2, r0
	add     r2, #0x8
	beq     branch_2261448
	ldrb    r1, [r0, #0x9]
	cmp     r1, #0x0
	bls     branch_2261448
	ldrh    r1, [r0, #0xe]
	add     r1, r2, r1
	.hword  0x1d09 @ add r1, r1, #0x4
	b       branch_226144a
@ 0x2261448

.thumb
branch_2261448: @ 2261448 :thumb
	mov     r1, #0x0
.thumb
branch_226144a: @ 226144a :thumb
	cmp     r1, #0x0
	beq     branch_2261454
	ldr     r1, [r1, #0x0]
	add     r0, r0, r1
	b       branch_2261456
@ 0x2261454

.thumb
branch_2261454: @ 2261454 :thumb
	mov     r0, #0x0
.thumb
branch_2261456: @ 2261456 :thumb
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x0]
	blx     Function_20b3c1c_GetTexOffsets
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0x0]
	ldr     r1, [r4, #0xc]
	bl      Function_201cbb0
	pop     {r4,pc}
@ 0x226146a


.align 2, 0


.thumb
Function_226146c: @ 226146c :thumb
	ldr     r3, [pc, #0x0] @ 0x2261470, (=Function_2017110+1)
	bx      r3
@ 0x2261470

.word Function_2017110+1 @ 0x2261470
.thumb
Function_2261474: @ 2261474 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, r1
	mov     r4, r2
	bl      Function_201724c
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	add     r0, r0, r4
	cmp     r0, r1
	bge     branch_226148e
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x226148e

.thumb
branch_226148e: @ 226148e :thumb
	blx     _s32_div_f
	str     r1, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x2261496


.align 2, 0


.thumb
Function_2261498: @ 2261498 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, r1
	mov     r4, r2
	bl      Function_201724c
	ldr     r1, [r5, #0x0]
	add     r1, r1, r4
	cmp     r1, r0
	bge     branch_22614b2
	str     r1, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22614b2

.thumb
branch_22614b2: @ 22614b2 :thumb
	mov     r1, #0x2
	lsl     r1, r1, #10
	sub     r0, r0, r1
	str     r0, [r5, #0x0]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x22614be


.align 2, 0


.thumb
Function_22614c0: @ 22614c0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, r1
	mov     r4, r2
	bl      Function_201724c
	ldr     r1, [r5, #0x0]
	sub     r1, r1, r4
	bmi     branch_22614d6
	str     r1, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x22614d6

.thumb
branch_22614d6: @ 22614d6 :thumb
	add     r0, r0, r1
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x22614dc

.thumb
Function_22614dc: @ 22614dc :thumb
	ldr     r1, [r0, #0x0]
	sub     r1, r1, r2
	cmp     r1, #0x0
	ble     branch_22614ea
	str     r1, [r0, #0x0]
	mov     r0, #0x0
	bx      lr
@ 0x22614ea

.thumb
branch_22614ea: @ 22614ea :thumb
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	mov     r0, #0x1
	bx      lr
@ 0x22614f2


.align 2, 0


.thumb
Function_22614f4: @ 22614f4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x30]
	mov     r7, #0x6
	ldr     r5, [sp, #0x8]
	str     r1, [sp, #0xc]
	str     r2, [sp, #0x10]
	str     r3, [sp, #0x14]
	str     r0, [sp, #0x30]
	mov     r6, #0x0
	mov     r4, r2
	lsl     r7, r7, #6
.thumb
branch_226150e: @ 226150e :thumb
	ldr     r1, [sp, #0xc]
	ldr     r2, [r4, r7]
	ldr     r3, [sp, #0x14]
	mov     r0, r5
	bl      Function_2261420
	ldr     r0, [r5, #0x0]
	bl      0x2231668
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r5, #0x10
	cmp     r6, #0x2
	blt     branch_226150e
	ldr     r6, [sp, #0x8]
	ldr     r4, [sp, #0x10]
	mov     r0, r6
	mov     r5, r6
	str     r0, [sp, #0x18]
	add     r0, #0x10
	mov     r7, #0x0
	add     r5, #0x20
	str     r0, [sp, #0x18]
.thumb
branch_226153c: @ 226153c :thumb
	mov     r0, #0x6
	ldr     r1, [sp, #0x10]
	lsl     r0, r0, #6
	ldr     r1, [r1, r0]
	add     r0, #0xc
	ldr     r0, [r4, r0]
	cmp     r1, r0
	bne     branch_2261556
	mov     r1, r6
	add     r1, #0x84
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	b       branch_2261594
@ 0x2261556

.thumb
branch_2261556: @ 2261556 :thumb
	mov     r1, r6
	add     r1, #0x84
	mov     r0, #0x1
	str     r0, [r1, #0x0]
	cmp     r7, #0x3
	beq     branch_226157c
	ldr     r0, [sp, #0x14]
	mov     r3, #0x63
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x30]
	lsl     r3, r3, #2
	str     r0, [sp, #0x4]
	ldr     r1, [sp, #0x8]
	ldr     r2, [sp, #0xc]
	ldr     r3, [r4, r3]
	mov     r0, r5
	bl      Function_2017164
	b       branch_2261594
@ 0x226157c

.thumb
branch_226157c: @ 226157c :thumb
	ldr     r0, [sp, #0x14]
	mov     r3, #0x63
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x30]
	lsl     r3, r3, #2
	str     r0, [sp, #0x4]
	ldr     r1, [sp, #0x18]
	ldr     r2, [sp, #0xc]
	ldr     r3, [r4, r3]
	mov     r0, r5
	bl      Function_2017164
.thumb
branch_2261594: @ 2261594 :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1d36 @ add r6, r6, #0x4
	add     r5, #0x14
	cmp     r7, #0x5
	blt     branch_226153c
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x22615a4

.thumb
Function_22615a4: @ 22615a4 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r5, r6
	str     r1, [sp, #0x0]
	mov     r7, #0x0
	mov     r4, r6
	add     r5, #0x20
.thumb
branch_22615b2: @ 22615b2 :thumb
	mov     r0, r4
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_22615cc
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	bl      Function_20171a0
	mov     r1, r4
	add     r1, #0x84
	mov     r0, #0x0
	str     r0, [r1, #0x0]
.thumb
branch_22615cc: @ 22615cc :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r5, #0x14
	cmp     r7, #0x5
	blt     branch_22615b2
	mov     r4, #0x0
.thumb
branch_22615d8: @ 22615d8 :thumb
	mov     r0, r6
	bl      Function_226146c
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r6, #0x10
	cmp     r4, #0x2
	blt     branch_22615d8
	pop     {r3-r7,pc}
@ 0x22615e8

.thumb
Function_22615e8: @ 22615e8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r6, r0
	mov     r0, #0x1
	mov     r7, r1
	str     r0, [r6, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r4, r7
	add     r5, r6, #0x4
.thumb
branch_22615fc: @ 22615fc :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_2017258
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2017348
	ldr     r0, [sp, #0x0]
	add     r4, #0x10
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r5, #0x78
	str     r0, [sp, #0x0]
	cmp     r0, #0x2
	blt     branch_22615fc
	mov     r0, r6
	str     r0, [sp, #0x8]
	add     r0, #0x7c
	mov     r4, r7
	str     r0, [sp, #0x8]
	add     r0, r6, #0x4
	mov     r5, #0x0
	add     r4, #0x20
	str     r0, [sp, #0x4]
.thumb
branch_226162c: @ 226162c :thumb
	mov     r0, r7
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_2261654
	mov     r1, r6
	add     r1, #0xf4
	mov     r0, #0x1
	str     r0, [r1, #0x0]
	cmp     r5, #0x3
	beq     branch_226164c
	ldr     r0, [sp, #0x4]
	mov     r1, r4
	bl      Function_201727c
	b       branch_2261654
@ 0x226164c

.thumb
branch_226164c: @ 226164c :thumb
	ldr     r0, [sp, #0x8]
	mov     r1, r4
	bl      Function_201727c
.thumb
branch_2261654: @ 2261654 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d3f @ add r7, r7, #0x4
	.hword  0x1d36 @ add r6, r6, #0x4
	add     r4, #0x14
	cmp     r5, #0x4
	blt     branch_226162c
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2261664

.thumb
Function_2261664: @ 2261664 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r5, r1
	str     r0, [sp, #0x0]
	add     r0, #0x7c
	mov     r6, #0x0
	mov     r4, r7
	add     r5, #0x20
	str     r0, [sp, #0x0]
.thumb
branch_2261676: @ 2261676 :thumb
	mov     r0, r4
	add     r0, #0xf4
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_226169e
	mov     r1, r4
	add     r1, #0xf4
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	cmp     r6, #0x3
	beq     branch_2261696
	add     r0, r7, #0x4
	mov     r1, r5
	bl      Function_2017288
	b       branch_226169e
@ 0x2261696

.thumb
branch_2261696: @ 2261696 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, r5
	bl      Function_2017288
.thumb
branch_226169e: @ 226169e :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r5, #0x14
	cmp     r6, #0x4
	blt     branch_2261676
	mov     r0, #0x0
	str     r0, [r7, #0x0]
	pop     {r3-r7,pc}
@ 0x22616ae


.align 2, 0


.thumb
Function_22616b0: @ 22616b0 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r4, r1
	mov     r0, #0x42
	add     r4, #0x20
	lsl     r0, r0, #2
	add     r6, r5, r0
	mov     r7, r4
.thumb
branch_22616c4: @ 22616c4 :thumb
	mov     r0, r5
	add     r0, #0xf4
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_22616e6
	mov     r2, #0x1
	mov     r0, r6
	mov     r1, r4
	lsl     r2, r2, #12
	bl      Function_2261474
	mov     r1, #0x42
	lsl     r1, r1, #2
	ldr     r1, [r5, r1]
	mov     r0, r7
	bl      Function_2017240
.thumb
branch_22616e6: @ 22616e6 :thumb
	ldr     r0, [sp, #0x0]
	.hword  0x1d2d @ add r5, r5, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r4, #0x14
	.hword  0x1d36 @ add r6, r6, #0x4
	add     r7, #0x14
	str     r0, [sp, #0x0]
	cmp     r0, #0x5
	blt     branch_22616c4
	pop     {r3-r7,pc}
@ 0x22616fa


.align 2, 0


.thumb
Function_22616fc: @ 22616fc :thumb
	push    {r3-r5,lr}
	ldr     r1, [r0, #0x0]
	cmp     r1, #0x0
	beq     branch_2261716
	mov     r4, #0x0
	add     r5, r0, #0x4
.thumb
branch_2261708: @ 2261708 :thumb
	mov     r0, r5
	bl      Function_2017294
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x78
	cmp     r4, #0x2
	blt     branch_2261708
.thumb
branch_2261716: @ 2261716 :thumb
	pop     {r3-r5,pc}
@ 0x2261718

.thumb
Function_2261718: @ 2261718 :thumb
	push    {r4,lr}
	mov     r1, #0x49
	lsl     r1, r1, #2
	ldrb    r4, [r0, r1]
	mov     r2, #0x0
	cmp     r4, #0x0
	ble     branch_2261742
	sub     r1, #0x8
	ldr     r3, [r0, r1]
	mov     r1, r3
.thumb
branch_226172c: @ 226172c :thumb
	ldrb    r0, [r1, #0x0]
	cmp     r0, #0x0
	bne     branch_226173a
	mov     r0, #0xb4
	mul     r0, r2
	add     r0, r3, r0
	pop     {r4,pc}
@ 0x226173a

.thumb
branch_226173a: @ 226173a :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r1, #0xb4
	cmp     r2, r4
	blt     branch_226172c
.thumb
branch_2261742: @ 2261742 :thumb
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x226174a


.align 2, 0


.thumb
Function_226174c: @ 226174c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x44
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x58]
	mov     r7, #0x4a
	str     r0, [sp, #0x58]
	mov     r0, #0x0
	str     r0, [sp, #0x40]
	mov     r0, r3
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	str     r0, [sp, #0x20]
	add     r0, #0x20
	str     r2, [sp, #0x10]
	str     r3, [sp, #0x14]
	str     r0, [sp, #0x20]
	lsl     r7, r7, #2
.thumb
branch_2261770: @ 2261770 :thumb
	ldr     r4, [sp, #0x24]
	ldr     r5, [sp, #0x20]
	mov     r6, #0x0
.thumb
branch_2261776: @ 2261776 :thumb
	ldr     r1, [sp, #0xc]
	ldr     r2, [r4, r7]
	ldr     r3, [sp, #0x58]
	mov     r0, r5
	bl      Function_225c730
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x3
	blt     branch_2261776
	ldr     r0, [sp, #0x24]
	add     r0, #0xc
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x20]
	add     r0, #0xc
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x40]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x40]
	cmp     r0, #0x2
	blt     branch_2261770
	ldr     r4, [sp, #0x8]
	ldr     r6, [sp, #0x14]
	mov     r7, #0x0
	mov     r5, r4
.thumb
branch_22617aa: @ 22617aa :thumb
	mov     r0, #0x0
	mov     r1, #0x12
	str     r0, [sp, #0x0]
	lsl     r1, r1, #4
	ldr     r0, [sp, #0xc]
	ldr     r1, [r6, r1]
	ldr     r3, [sp, #0x58]
	mov     r2, #0x0
	bl      Function_200723c
	str     r0, [r4, #0x0]
	blx     Function_20b3c0c_GetAdrOfDataPart
	str     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_22617ea
	mov     r1, r0
	add     r1, #0x8
	beq     branch_22617de
	ldrb    r2, [r0, #0x9]
	cmp     r2, #0x0
	bls     branch_22617de
	ldrh    r2, [r0, #0xe]
	add     r1, r1, r2
	.hword  0x1d09 @ add r1, r1, #0x4
	b       branch_22617e0
@ 0x22617de

.thumb
branch_22617de: @ 22617de :thumb
	mov     r1, #0x0
.thumb
branch_22617e0: @ 22617e0 :thumb
	cmp     r1, #0x0
	beq     branch_22617ea
	ldr     r1, [r1, #0x0]
	add     r0, r0, r1
	b       branch_22617ec
@ 0x22617ea

.thumb
branch_22617ea: @ 22617ea :thumb
	mov     r0, #0x0
.thumb
branch_22617ec: @ 22617ec :thumb
	str     r0, [r4, #0x8]
	ldr     r0, [r5, #0x20]
	blx     Function_20b3c1c_GetTexOffsets
	str     r0, [r4, #0xc]
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	add     r4, #0x10
	add     r5, #0xc
	cmp     r7, #0x2
	blt     branch_22617aa
	mov     r0, #0x0
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x14]
	ldr     r7, [sp, #0x14]
	str     r0, [sp, #0x3c]
	ldr     r0, [sp, #0x8]
	str     r0, [sp, #0x38]
	add     r0, #0x38
	str     r0, [sp, #0x38]
	ldr     r0, [sp, #0x14]
	str     r0, [sp, #0x34]
	ldr     r0, [sp, #0x8]
	str     r0, [sp, #0x30]
.thumb
branch_226181c: @ 226181c :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x3c]
	ldr     r6, [sp, #0x34]
	str     r0, [sp, #0x2c]
	ldr     r0, [sp, #0x38]
	ldr     r5, [sp, #0x30]
	str     r0, [sp, #0x28]
.thumb
branch_226182c: @ 226182c :thumb
	mov     r0, #0x5
	ldr     r1, [sp, #0x2c]
	lsl     r0, r0, #6
	ldr     r3, [r1, r0]
	ldr     r1, [sp, #0x14]
	sub     r0, #0x20
	ldr     r0, [r1, r0]
	cmp     r0, r3
	beq     branch_2261880
	ldr     r0, [sp, #0x58]
	ldr     r1, [sp, #0x8]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x10]
	ldr     r2, [sp, #0xc]
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x28]
	bl      Function_2017164
	ldr     r0, [sp, #0x18]
	cmp     r0, #0x1
	blt     branch_2261880
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r7, r0]
	mov     r4, #0x0
	cmp     r0, #0x0
	bls     branch_2261880
.thumb
branch_2261862: @ 2261862 :thumb
	mov     r0, #0x59
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	cmp     r4, r0
	beq     branch_2261874
	ldr     r0, [r5, #0x40]
	mov     r1, r4
	blx     Function_20ae5cc
.thumb
branch_2261874: @ 2261874 :thumb
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r7, r0]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r0
	bcc     branch_2261862
.thumb
branch_2261880: @ 2261880 :thumb
	ldr     r0, [sp, #0x2c]
	.hword  0x1d36 @ add r6, r6, #0x4
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x2c]
	ldr     r0, [sp, #0x28]
	add     r5, #0x14
	add     r0, #0x14
	str     r0, [sp, #0x28]
	ldr     r0, [sp, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x18]
	cmp     r0, #0x4
	blt     branch_226182c
	ldr     r0, [sp, #0x3c]
	.hword  0x1d3f @ add r7, r7, #0x4
	add     r0, #0x10
	str     r0, [sp, #0x3c]
	ldr     r0, [sp, #0x8]
	add     r0, #0x10
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x38]
	add     r0, #0x50
	str     r0, [sp, #0x38]
	ldr     r0, [sp, #0x34]
	add     r0, #0xc
	str     r0, [sp, #0x34]
	ldr     r0, [sp, #0x30]
	add     r0, #0x50
	str     r0, [sp, #0x30]
	ldr     r0, [sp, #0x1c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x1c]
	cmp     r0, #0x2
	blt     branch_226181c
	add     sp, #0x44
	pop     {r4-r7,pc}
@ 0x22618c8

.thumb
Function_22618c8: @ 22618c8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	str     r0, [sp, #0x0]
	ldr     r7, [sp, #0x0]
	mov     r0, #0x0
	mov     r6, r1
	str     r0, [sp, #0x8]
	add     r7, #0x38
.thumb
branch_22618d8: @ 22618d8 :thumb
	mov     r4, #0x0
	mov     r5, r7
.thumb
branch_22618dc: @ 22618dc :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_20171a0
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x14
	cmp     r4, #0x4
	blt     branch_22618dc
	ldr     r0, [sp, #0x8]
	add     r7, #0x50
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x8]
	cmp     r0, #0x2
	blt     branch_22618d8
	ldr     r4, [sp, #0x0]
	mov     r5, #0x0
.thumb
branch_22618fc: @ 22618fc :thumb
	ldr     r0, [r4, #0x0]
	bl      free
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r4, #0x10
	cmp     r5, #0x2
	blt     branch_22618fc
	mov     r0, #0x0
	ldr     r7, [pc, #0x50] @ 0x2261960, (=0x2100df0)
	str     r0, [sp, #0x4]
.thumb
branch_2261910: @ 2261910 :thumb
	ldr     r4, [sp, #0x0]
	mov     r5, #0x0
.thumb
branch_2261914: @ 2261914 :thumb
	ldr     r0, [r4, #0x20]
	blx     Function_20b3c1c_GetTexOffsets
	add     r1, sp, #0x10
	add     r2, sp, #0xc
	mov     r6, r0
	blx     Function_20ae9b8
	ldr     r0, [sp, #0x10]
	ldr     r1, [r7, #0x0]
	blx     r1
	ldr     r0, [sp, #0xc]
	ldr     r1, [r7, #0x0]
	blx     r1
	mov     r0, r6
	blx     Function_20aea70
	ldr     r1, [pc, #0x2c] @ 0x2261964, (=0x2100df8)
	ldr     r1, [r1, #0x0]
	blx     r1
	ldr     r0, [r4, #0x20]
	bl      free
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, #0x3
	blt     branch_2261914
	ldr     r0, [sp, #0x0]
	add     r0, #0xc
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x4]
	cmp     r0, #0x2
	blt     branch_2261910
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x226195e


.align 2


.word 0x2100df0 @ 0x2261960
.word 0x2100df8 @ 0x2261964
.thumb
Function_2261968: @ 2261968 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r7, #0x0
	str     r0, [sp, #0x0]
	mov     r4, r0
	mov     r0, r1
	str     r1, [sp, #0x4]
	add     r0, #0x38
	mov     r6, r7
	add     r5, #0x8c
	str     r0, [sp, #0x4]
.thumb
branch_2261980: @ 2261980 :thumb
	ldr     r0, [r4, #0x7c]
	cmp     r0, #0x0
	beq     branch_22619e4
	cmp     r7, #0x3
	bhi     branch_22619e0
	add     r0, r7, r7
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2261996

Jumppoints_2261996:
.hword branch_226199e - Jumppoints_2261996 - 2
.hword branch_22619b8 - Jumppoints_2261996 - 2
.hword branch_226199e - Jumppoints_2261996 - 2
.hword branch_22619b8 - Jumppoints_2261996 - 2
.thumb
branch_226199e: @ 226199e :thumb
	ldr     r1, [sp, #0x0]
	mov     r2, #0x50
	ldrb    r1, [r1, #0x2]
	mov     r0, r5
	mul     r2, r1
	ldr     r1, [sp, #0x4]
	add     r1, r1, r2
	mov     r2, #0x1
	add     r1, r1, r6
	lsl     r2, r2, #12
	bl      Function_2261474
	b       branch_22619e4
@ 0x22619b8

.thumb
branch_22619b8: @ 22619b8 :thumb
	ldr     r1, [sp, #0x0]
	mov     r2, #0x50
	ldrb    r1, [r1, #0x2]
	mov     r0, r5
	mul     r2, r1
	ldr     r1, [sp, #0x4]
	add     r1, r1, r2
	mov     r2, #0x1
	add     r1, r1, r6
	lsl     r2, r2, #12
	bl      Function_2261498
	cmp     r0, #0x1
	bne     branch_22619e4
	mov     r0, #0x0
	mov     r1, r4
	str     r0, [r4, #0x7c]
	add     r1, #0x8c
	str     r0, [r1, #0x0]
	b       branch_22619e4
@ 0x22619e0

.thumb
branch_22619e0: @ 22619e0 :thumb
	bl      ErrorHandling
.thumb
branch_22619e4: @ 22619e4 :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r6, #0x14
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r7, #0x4
	blt     branch_2261980
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x22619f4

.thumb
Function_22619f4: @ 22619f4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldrb    r0, [r5, #0x0]
	str     r1, [sp, #0x0]
	cmp     r0, #0x0
	beq     branch_2261aea
	ldrb    r0, [r5, #0x2]
	lsl     r1, r0, #4
	ldr     r0, [sp, #0x0]
	add     r0, r0, r1
	add     r1, r5, #0x4
	bl      Function_225c7a0
	cmp     r0, #0x0
	beq     branch_2261aea
	ldrb    r0, [r5, #0x1]
	cmp     r0, #0x3
	bcc     branch_2261a1e
	bl      ErrorHandling
.thumb
branch_2261a1e: @ 2261a1e :thumb
	ldrb    r0, [r5, #0x2]
	cmp     r0, #0x2
	bcc     branch_2261a28
	bl      ErrorHandling
.thumb
branch_2261a28: @ 2261a28 :thumb
	ldrb    r1, [r5, #0x2]
	mov     r0, #0xc
	mov     r2, r1
	mul     r2, r0
	ldr     r0, [sp, #0x0]
	add     r1, r0, r2
	ldrb    r0, [r5, #0x1]
	lsl     r0, r0, #2
	add     r0, r1, r0
	ldr     r0, [r0, #0x20]
	blx     Function_20b3c1c_GetTexOffsets
	ldrb    r1, [r5, #0x2]
	lsl     r2, r1, #4
	ldr     r1, [sp, #0x0]
	add     r1, r1, r2
	str     r0, [r1, #0xc]
	ldrb    r0, [r5, #0x2]
	lsl     r1, r0, #4
	ldr     r0, [sp, #0x0]
	add     r1, r0, r1
	ldr     r0, [r1, #0x4]
	ldr     r1, [r1, #0xc]
	blx     Function_20af1e8
	cmp     r0, #0x0
	bne     branch_2261a62
	bl      ErrorHandling
.thumb
branch_2261a62: @ 2261a62 :thumb
	ldr     r7, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r6, r5
	mov     r4, r0
	add     r7, #0x38
.thumb
branch_2261a6e: @ 2261a6e :thumb
	ldr     r0, [r6, #0x7c]
	cmp     r0, #0x0
	beq     branch_2261a98
	ldrb    r2, [r5, #0x2]
	mov     r1, #0x50
	add     r0, r5, #0x4
	mul     r1, r2
	add     r1, r7, r1
	add     r1, r1, r4
	bl      Function_201727c
	ldrb    r1, [r5, #0x2]
	mov     r0, #0x50
	mul     r0, r1
	mov     r1, r6
	add     r1, #0x8c
	add     r0, r7, r0
	ldr     r1, [r1, #0x0]
	add     r0, r0, r4
	bl      Function_2017240
.thumb
branch_2261a98: @ 2261a98 :thumb
	ldr     r0, [sp, #0x4]
	.hword  0x1d36 @ add r6, r6, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r4, #0x14
	str     r0, [sp, #0x4]
	cmp     r0, #0x4
	blt     branch_2261a6e
	add     r0, r5, #0x4
	bl      Function_2017294
	ldr     r0, [sp, #0x0]
	mov     r7, #0x0
	str     r0, [sp, #0x8]
	add     r0, #0x38
	mov     r6, r5
	mov     r4, r7
	str     r0, [sp, #0x8]
.thumb
branch_2261aba: @ 2261aba :thumb
	ldr     r0, [r6, #0x7c]
	cmp     r0, #0x0
	beq     branch_2261ad2
	ldrb    r1, [r5, #0x2]
	mov     r2, #0x50
	add     r0, r5, #0x4
	mul     r2, r1
	ldr     r1, [sp, #0x8]
	add     r1, r1, r2
	add     r1, r1, r4
	bl      Function_2017288
.thumb
branch_2261ad2: @ 2261ad2 :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	add     r4, #0x14
	cmp     r7, #0x4
	blt     branch_2261aba
	ldrb    r0, [r5, #0x2]
	lsl     r1, r0, #4
	ldr     r0, [sp, #0x0]
	add     r0, r0, r1
	ldr     r0, [r0, #0x4]
	blx     Function_20af298
.thumb
branch_2261aea: @ 2261aea :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2261aee


.align 2, 0


.thumb
Function_2261af0: @ 2261af0 :thumb
	push    {r4,lr}
	ldr     r3, [pc, #0x2c] @ 0x2261b20, (=0x125)
	mov     r1, #0x0
	ldrb    r2, [r0, r3]
	cmp     r2, #0x0
	ble     branch_2261b18
	.hword  0x1f5b @ sub r3, r3, #0x5
	ldr     r4, [r0, r3]
	mov     r3, r4
.thumb
branch_2261b02: @ 2261b02 :thumb
	ldrh    r0, [r3, #0x0]
	cmp     r0, #0x0
	bne     branch_2261b10
	mov     r0, #0xe4
	mul     r0, r1
	add     r0, r4, r0
	pop     {r4,pc}
@ 0x2261b10

.thumb
branch_2261b10: @ 2261b10 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r3, #0xe4
	cmp     r1, r2
	blt     branch_2261b02
.thumb
branch_2261b18: @ 2261b18 :thumb
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2261b20

.word 0x125 @ 0x2261b20
.thumb
Function_2261b24: @ 2261b24 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x30]
	mov     r7, r3
	str     r0, [sp, #0x30]
	mov     r0, #0x0
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	str     r7, [sp, #0x10]
	str     r0, [sp, #0xc]
.thumb
branch_2261b3c: @ 2261b3c :thumb
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x8]
	ldr     r2, [r7, #0x0]
	ldr     r3, [sp, #0x30]
	bl      Function_2261420
	ldr     r0, [sp, #0x14]
	cmp     r0, #0xb
	beq     branch_2261b5a
	cmp     r0, #0xc
	beq     branch_2261b5a
	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, #0x0]
	bl      0x2231668
.thumb
branch_2261b5a: @ 2261b5a :thumb
	ldr     r4, [sp, #0x10]
	ldr     r5, [sp, #0xc]
	mov     r6, #0x0
.thumb
branch_2261b60: @ 2261b60 :thumb
	ldr     r1, [r4, #0x48]
	ldr     r0, [r7, #0x0]
	cmp     r0, r1
	beq     branch_2261b7e
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x8]
	ldr     r3, [sp, #0x30]
	mov     r2, #0x0
	bl      Function_200723c
	mov     r1, #0x12
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	b       branch_2261b86
@ 0x2261b7e

.thumb
branch_2261b7e: @ 2261b7e :thumb
	mov     r0, #0x12
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r5, r0]
.thumb
branch_2261b86: @ 2261b86 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x3
	blt     branch_2261b60
	ldr     r0, [sp, #0x4]
	.hword  0x1d3f @ add r7, r7, #0x4
	add     r0, #0x10
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x10]
	add     r0, #0xc
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0xc]
	add     r0, #0xc
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x14]
	cmp     r0, #0x12
	blt     branch_2261b3c
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2261bb2


.align 2, 0


.thumb
Function_2261bb4: @ 2261bb4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x0]
	mov     r7, #0x12
	str     r0, [sp, #0x4]
	mov     r6, #0x0
	lsl     r7, r7, #4
.thumb
branch_2261bc8: @ 2261bc8 :thumb
	ldr     r5, [sp, #0x0]
	mov     r4, #0x0
.thumb
branch_2261bcc: @ 2261bcc :thumb
	ldr     r0, [r5, r7]
	cmp     r0, #0x0
	beq     branch_2261bdc
	bl      free
	mov     r0, #0x12
	lsl     r0, r0, #4
	str     r6, [r5, r0]
.thumb
branch_2261bdc: @ 2261bdc :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x3
	blt     branch_2261bcc
	ldr     r0, [sp, #0x4]
	bl      Function_226146c
	ldr     r0, [sp, #0x0]
	add     r0, #0xc
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	add     r0, #0x10
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x8]
	cmp     r0, #0x12
	blt     branch_2261bc8
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2261c04

.thumb
Function_2261c04: @ 2261c04 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_2261c5c
	ldrh    r0, [r4, #0x2]
	add     r1, r4, #0x4
	lsl     r0, r0, #4
	add     r0, r5, r0
	bl      Function_225c7a0
	cmp     r0, #0x0
	beq     branch_2261c5c
	mov     r0, r4
	add     r0, #0xe0
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_2261c3c
	ldrh    r0, [r4, #0x2]
	mov     r1, r4
	add     r1, #0xe1
	lsl     r0, r0, #4
	add     r0, r5, r0
	ldrb    r1, [r1, #0x0]
	ldr     r0, [r0, #0x8]
	blx     Function_20b3764
.thumb
branch_2261c3c: @ 2261c3c :thumb
	add     r0, r4, #0x4
	bl      Function_2017294
	mov     r0, r4
	add     r0, #0xe0
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_2261c5c
	ldrh    r0, [r4, #0x2]
	add     r4, #0xe2
	ldrb    r1, [r4, #0x0]
	lsl     r0, r0, #4
	add     r0, r5, r0
	ldr     r0, [r0, #0x8]
	blx     Function_20b3764
.thumb
branch_2261c5c: @ 2261c5c :thumb
	pop     {r3-r5,pc}
@ 0x2261c5e


.align 2, 0


.thumb
Function_2261c60: @ 2261c60 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r4, r1
	str     r0, [sp, #0x0]
	mov     r0, r4
	str     r0, [sp, #0xc]
	add     r0, #0x7c
	mov     r7, r4
	mov     r5, #0x0
	str     r0, [sp, #0xc]
	add     r7, #0xc0
	mov     r6, r4
	str     r0, [sp, #0x8]
.thumb
branch_2261c7a: @ 2261c7a :thumb
	add     r0, r4, r5
	add     r0, #0xb8
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2261ce6
	add     r0, r4, r5
	add     r0, #0xbc
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x6
	bhi     branch_2261ce6
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2261c9a

Jumppoints_2261c9a:
.hword branch_2261ca8 - Jumppoints_2261c9a - 2
.hword branch_2261cc4 - Jumppoints_2261c9a - 2
.hword branch_2261df4 - Jumppoints_2261c9a - 2
.hword branch_2261d0a - Jumppoints_2261c9a - 2
.hword branch_2261d26 - Jumppoints_2261c9a - 2
.hword branch_2261d6a - Jumppoints_2261c9a - 2
.hword branch_2261dc0 - Jumppoints_2261c9a - 2
.thumb
branch_2261ca8: @ 2261ca8 :thumb
	mov     r2, r4
	add     r2, #0xdc
	ldr     r1, [sp, #0xc]
	ldr     r2, [r2, #0x0]
	mov     r0, r7
	bl      Function_2261474
	mov     r1, r6
	add     r1, #0xc0
	ldr     r0, [sp, #0x8]
	ldr     r1, [r1, #0x0]
	bl      Function_2017240
	b       branch_2261df4
@ 0x2261cc4

.thumb
branch_2261cc4: @ 2261cc4 :thumb
	mov     r2, r4
	add     r2, #0xdc
	ldr     r1, [sp, #0xc]
	ldr     r2, [r2, #0x0]
	mov     r0, r7
	bl      Function_2261498
	mov     r1, r6
	add     r1, #0xc0
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x8]
	ldr     r1, [r1, #0x0]
	bl      Function_2017240
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x1
	beq     branch_2261ce8
.thumb
branch_2261ce6: @ 2261ce6 :thumb
	b       branch_2261df4
@ 0x2261ce8

.thumb
branch_2261ce8: @ 2261ce8 :thumb
	mov     r0, r6
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	mov     r1, r4
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x0]
	mov     r2, r5
	bl      Function_2261220
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x0
	beq     branch_2261df4
	ldr     r0, [sp, #0x0]
	ldr     r2, [sp, #0x10]
	mov     r1, r4
	blx     r2
	b       branch_2261df4
@ 0x2261d0a

.thumb
branch_2261d0a: @ 2261d0a :thumb
	mov     r2, r4
	add     r2, #0xdc
	ldr     r1, [sp, #0xc]
	ldr     r2, [r2, #0x0]
	mov     r0, r7
	bl      Function_22614c0
	mov     r1, r6
	add     r1, #0xc0
	ldr     r0, [sp, #0x8]
	ldr     r1, [r1, #0x0]
	bl      Function_2017240
	b       branch_2261df4
@ 0x2261d26

.thumb
branch_2261d26: @ 2261d26 :thumb
	mov     r2, r4
	add     r2, #0xdc
	ldr     r1, [sp, #0xc]
	ldr     r2, [r2, #0x0]
	mov     r0, r7
	bl      Function_22614dc
	mov     r1, r6
	add     r1, #0xc0
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x8]
	ldr     r1, [r1, #0x0]
	bl      Function_2017240
	ldr     r0, [sp, #0x18]
	cmp     r0, #0x1
	bne     branch_2261df4
	mov     r0, r6
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	mov     r1, r4
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	mov     r2, r5
	bl      Function_2261220
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	beq     branch_2261df4
	ldr     r0, [sp, #0x0]
	ldr     r2, [sp, #0x4]
	mov     r1, r4
	blx     r2
	b       branch_2261df4
@ 0x2261d6a

.thumb
branch_2261d6a: @ 2261d6a :thumb
	add     r0, r4, r5
	add     r0, #0xcd
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2261d84
	add     r0, r4, r5
	add     r0, #0xcd
	ldrb    r0, [r0, #0x0]
	.hword  0x1e41 @ sub r1, r0, #0x1
	add     r0, r4, r5
	add     r0, #0xcd
	strb    r1, [r0, #0x0]
	b       branch_2261df4
@ 0x2261d84

.thumb
branch_2261d84: @ 2261d84 :thumb
	mov     r2, r4
	add     r2, #0xdc
	ldr     r1, [sp, #0xc]
	ldr     r2, [r2, #0x0]
	mov     r0, r7
	bl      Function_2261498
	cmp     r0, #0x1
	bne     branch_2261db2
	bl      Function_201d35c
	mov     r1, r4
	add     r1, #0xcc
	ldrb    r1, [r1, #0x0]
	blx     _u32_div_f
	add     r0, r4, r5
	add     r0, #0xcd
	strb    r1, [r0, #0x0]
	mov     r1, r6
	add     r1, #0xc0
	mov     r0, #0x0
	str     r0, [r1, #0x0]
.thumb
branch_2261db2: @ 2261db2 :thumb
	mov     r1, r6
	add     r1, #0xc0
	ldr     r0, [sp, #0x8]
	ldr     r1, [r1, #0x0]
	bl      Function_2017240
	b       branch_2261df4
@ 0x2261dc0

.thumb
branch_2261dc0: @ 2261dc0 :thumb
	add     r0, r4, r5
	add     r0, #0xcd
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2261dda
	add     r0, r4, r5
	add     r0, #0xcd
	ldrb    r0, [r0, #0x0]
	.hword  0x1e41 @ sub r1, r0, #0x1
	add     r0, r4, r5
	add     r0, #0xcd
	strb    r1, [r0, #0x0]
	b       branch_2261df4
@ 0x2261dda

.thumb
branch_2261dda: @ 2261dda :thumb
	mov     r2, r4
	add     r2, #0xdc
	ldr     r1, [sp, #0xc]
	ldr     r2, [r2, #0x0]
	mov     r0, r7
	bl      Function_2261474
	mov     r1, r6
	add     r1, #0xc0
	ldr     r0, [sp, #0x8]
	ldr     r1, [r1, #0x0]
	bl      Function_2017240
.thumb
branch_2261df4: @ 2261df4 :thumb
	ldr     r0, [sp, #0xc]
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r0, #0x14
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x8]
	.hword  0x1d3f @ add r7, r7, #0x4
	add     r0, #0x14
	.hword  0x1d36 @ add r6, r6, #0x4
	str     r0, [sp, #0x8]
	cmp     r5, #0x3
	bge     branch_2261e0c
	b       branch_2261c7a
@ 0x2261e0c

.thumb
branch_2261e0c: @ 2261e0c :thumb
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x2261e10

.thumb
Function_2261e10: @ 2261e10 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x34
	mov     r6, r1
	mov     r5, r0
	ldr     r1, [pc, #0x360] @ 0x226217c, (=0x614)
	mov     r0, r3
	mov     r7, r2
	str     r3, [sp, #0x4]
	bl      malloc
	ldr     r2, [pc, #0x354] @ 0x226217c, (=0x614)
	mov     r1, #0x0
	mov     r4, r0
	blx     Call_FillMemWithValue
	mov     r0, #0x61
	str     r7, [r4, #0x0]
	lsl     r0, r0, #4
	strb    r5, [r4, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r6, [r4, r0]
	ldr     r2, [sp, #0x4]
	ldr     r3, [sp, #0x48]
	mov     r0, #0x9
	mov     r1, #0x80
	bl      Function_2260b44
	str     r0, [r4, #0x4]
	ldr     r0, [sp, #0x48]
	ldr     r3, [sp, #0x4]
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x4]
	mov     r1, r6
	mov     r2, r5
	bl      Function_2260ce4
	mov     r0, #0x0
	ldr     r5, [pc, #0x324] @ 0x2262180, (=0x226d944)
	str     r0, [sp, #0xc]
.thumb
branch_2261e5e: @ 2261e5e :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldrh    r1, [r5, #0x0]
	str     r0, [sp, #0x8]
	add     r2, sp, #0x1c
	ldr     r0, [r4, #0x0]
	add     r2, #0x2
	add     r3, sp, #0x1c
	bl      Function_225c8d8
	cmp     r0, #0x1
	beq     branch_2261e78
	b       branch_226212c
@ 0x2261e78

.thumb
branch_2261e78: @ 2261e78 :thumb
	mov     r0, #0x92
	lsl     r0, r0, #2
	add     r0, r4, r0
	str     r0, [sp, #0x10]
	mov     r0, #0xda
	lsl     r0, r0, #2
	add     r0, r4, r0
	str     r0, [sp, #0x14]
	ldr     r0, [pc, #0x2f8] @ 0x2262184, (=0x4e8)
	mov     r7, sp
	add     r0, r4, r0
	str     r0, [sp, #0x18]
	.hword  0x1f3f @ sub r7, r7, #0x4
	add     r6, sp, #0x1c
.thumb
branch_2261e94: @ 2261e94 :thumb
	ldrh    r1, [r5, #0x2]
	ldrh    r2, [r6, #0x2]
	ldrh    r3, [r6, #0x0]
	ldr     r0, [r4, #0x4]
	bl      Function_2260f90
	ldr     r1, [pc, #0x2e4] @ 0x2262188, (=0x612)
	ldrb    r1, [r4, r1]
	lsl     r1, r1, #2
	add     r1, r4, r1
	str     r0, [r1, #0x8]
	ldrh    r0, [r5, #0x2]
	cmp     r0, #0x10
	bls     branch_2261eb2
	b       branch_2262106
@ 0x2261eb2

.thumb
branch_2261eb2: @ 2261eb2 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2261ebe

Jumppoints_2261ebe:
.hword branch_2261f0c - Jumppoints_2261ebe - 2
.hword branch_2262106 - Jumppoints_2261ebe - 2
.hword branch_2262106 - Jumppoints_2261ebe - 2
.hword branch_2262106 - Jumppoints_2261ebe - 2
.hword branch_2262106 - Jumppoints_2261ebe - 2
.hword branch_2262106 - Jumppoints_2261ebe - 2
.hword branch_2261ee0 - Jumppoints_2261ebe - 2
.hword branch_2261ee0 - Jumppoints_2261ebe - 2
.hword branch_2261ee0 - Jumppoints_2261ebe - 2
.hword branch_2262106 - Jumppoints_2261ebe - 2
.hword branch_2261f4a - Jumppoints_2261ebe - 2
.hword branch_2261f76 - Jumppoints_2261ebe - 2
.hword branch_2261f76 - Jumppoints_2261ebe - 2
.hword branch_2261f8c - Jumppoints_2261ebe - 2
.hword branch_2261fea - Jumppoints_2261ebe - 2
.hword branch_2262048 - Jumppoints_2261ebe - 2
.hword branch_2262084 - Jumppoints_2261ebe - 2
.thumb
branch_2261ee0: @ 2261ee0 :thumb
	ldr     r1, [pc, #0x2a4] @ 0x2262188, (=0x612)
	mov     r2, #0x0
	ldrb    r1, [r4, r1]
	ldr     r0, [r4, #0x4]
	mov     r3, r2
	lsl     r1, r1, #2
	add     r1, r4, r1
	ldr     r1, [r1, #0x8]
	bl      Function_226110c
	ldr     r0, [pc, #0x290] @ 0x2262188, (=0x612)
	ldrb    r0, [r4, r0]
	lsl     r0, r0, #2
	add     r0, r4, r0
	ldr     r2, [r0, #0x8]
	ldrh    r0, [r5, #0x2]
	lsl     r0, r0, #2
	add     r1, r4, r0
	mov     r0, #0x85
	lsl     r0, r0, #2
	str     r2, [r1, r0]
	b       branch_2262106
@ 0x2261f0c

.thumb
branch_2261f0c: @ 2261f0c :thumb
	ldr     r1, [pc, #0x278] @ 0x2262188, (=0x612)
	mov     r2, #0x0
	ldrb    r1, [r4, r1]
	ldr     r0, [r4, #0x4]
	mov     r3, r2
	lsl     r1, r1, #2
	add     r1, r4, r1
	ldr     r1, [r1, #0x8]
	bl      Function_226110c
	ldr     r1, [pc, #0x264] @ 0x2262188, (=0x612)
	ldr     r0, [r4, #0x4]
	ldrb    r1, [r4, r1]
	mov     r2, #0x1
	mov     r3, #0x0
	lsl     r1, r1, #2
	add     r1, r4, r1
	ldr     r1, [r1, #0x8]
	bl      Function_226110c
	ldr     r1, [pc, #0x250] @ 0x2262188, (=0x612)
	ldr     r0, [r4, #0x4]
	ldrb    r1, [r4, r1]
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r1, r1, #2
	add     r1, r4, r1
	ldr     r1, [r1, #0x8]
	bl      Function_226110c
	b       branch_2262106
@ 0x2261f4a

.thumb
branch_2261f4a: @ 2261f4a :thumb
	ldr     r1, [pc, #0x23c] @ 0x2262188, (=0x612)
	ldr     r0, [r4, #0x4]
	ldrb    r1, [r4, r1]
	mov     r2, #0x0
	mov     r3, #0x2
	lsl     r1, r1, #2
	add     r1, r4, r1
	ldr     r1, [r1, #0x8]
	bl      Function_226110c
	ldr     r0, [pc, #0x228] @ 0x2262188, (=0x612)
	ldrb    r0, [r4, r0]
	lsl     r0, r0, #2
	add     r0, r4, r0
	ldr     r2, [r0, #0x8]
	ldrh    r0, [r5, #0x0]
	lsl     r0, r0, #2
	add     r1, r4, r0
	mov     r0, #0x45
	lsl     r0, r0, #2
	str     r2, [r1, r0]
	b       branch_2262106
@ 0x2261f76

.thumb
branch_2261f76: @ 2261f76 :thumb
	ldr     r1, [pc, #0x210] @ 0x2262188, (=0x612)
	ldr     r0, [r4, #0x4]
	ldrb    r1, [r4, r1]
	mov     r2, #0x0
	mov     r3, #0x2
	lsl     r1, r1, #2
	add     r1, r4, r1
	ldr     r1, [r1, #0x8]
	bl      Function_226110c
	b       branch_2262106
@ 0x2261f8c

.thumb
branch_2261f8c: @ 2261f8c :thumb
	ldr     r0, [pc, #0x1fc] @ 0x226218c, (=0x608)
	mov     r1, #0xc
	ldrb    r0, [r4, r0]
	mul     r1, r0
	ldr     r0, [sp, #0x10]
	add     r0, r0, r1
	ldr     r1, [pc, #0x1ec] @ 0x2262188, (=0x612)
	ldrb    r1, [r4, r1]
	lsl     r1, r1, #2
	add     r1, r4, r1
	ldr     r1, [r1, #0x8]
	bl      Function_22629fc
	ldr     r0, [pc, #0x1e4] @ 0x226218c, (=0x608)
	ldrb    r0, [r4, r0]
	add     r1, r0, #0x1
	ldr     r0, [pc, #0x1dc] @ 0x226218c, (=0x608)
	strb    r1, [r4, r0]
	ldrb    r0, [r4, r0]
	cmp     r0, #0x18
	bls     branch_2261fba
	bl      ErrorHandling
.thumb
branch_2261fba: @ 2261fba :thumb
	ldr     r0, [pc, #0x1cc] @ 0x2262188, (=0x612)
	mov     r1, #0x0
	ldrb    r0, [r4, r0]
	lsl     r0, r0, #2
	add     r0, r4, r0
	ldr     r0, [r0, #0x8]
	bl      Function_226138c
	ldrh    r1, [r5, #0x0]
	ldr     r0, [pc, #0x1c0] @ 0x2262190, (=0xffa4)
	add     r0, r1, r0
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	cmp     r0, #0x1
	bls     branch_2261fda
	b       branch_2262106
@ 0x2261fda

.thumb
branch_2261fda: @ 2261fda :thumb
	ldr     r0, [pc, #0x1ac] @ 0x2262188, (=0x612)
	ldrb    r0, [r4, r0]
	lsl     r0, r0, #2
	add     r0, r4, r0
	ldr     r0, [r0, #0x8]
	bl      Function_2262d48
	b       branch_2262106
@ 0x2261fea

.thumb
branch_2261fea: @ 2261fea :thumb
	ldr     r0, [pc, #0x1a8] @ 0x2262194, (=0x609)
	mov     r1, #0xc
	ldrb    r0, [r4, r0]
	mul     r1, r0
	ldr     r0, [sp, #0x14]
	add     r0, r0, r1
	ldr     r1, [pc, #0x190] @ 0x2262188, (=0x612)
	ldrb    r1, [r4, r1]
	lsl     r1, r1, #2
	add     r1, r4, r1
	ldr     r1, [r1, #0x8]
	bl      Function_22629fc
	ldr     r0, [pc, #0x18c] @ 0x2262194, (=0x609)
	ldrb    r0, [r4, r0]
	add     r1, r0, #0x1
	ldr     r0, [pc, #0x188] @ 0x2262194, (=0x609)
	strb    r1, [r4, r0]
	.hword  0x1e40 @ sub r0, r0, #0x1
	ldrb    r0, [r4, r0]
	cmp     r0, #0x18
	bls     branch_226201a
	bl      ErrorHandling
.thumb
branch_226201a: @ 226201a :thumb
	ldr     r0, [pc, #0x16c] @ 0x2262188, (=0x612)
	mov     r1, #0x0
	ldrb    r0, [r4, r0]
	lsl     r0, r0, #2
	add     r0, r4, r0
	ldr     r0, [r0, #0x8]
	bl      Function_226138c
	ldrh    r1, [r5, #0x0]
	ldr     r0, [pc, #0x160] @ 0x2262190, (=0xffa4)
	add     r0, r1, r0
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	cmp     r0, #0x1
	bhi     branch_2262106
	ldr     r0, [pc, #0x14c] @ 0x2262188, (=0x612)
	ldrb    r0, [r4, r0]
	lsl     r0, r0, #2
	add     r0, r4, r0
	ldr     r0, [r0, #0x8]
	bl      Function_2262d48
	b       branch_2262106
@ 0x2262048

.thumb
branch_2262048: @ 2262048 :thumb
	ldr     r0, [pc, #0x13c] @ 0x2262188, (=0x612)
	ldrb    r0, [r4, r0]
	lsl     r0, r0, #2
	add     r0, r4, r0
	ldr     r2, [r0, #0x8]
	ldr     r0, [pc, #0x144] @ 0x2262198, (=0x60a)
	ldrb    r0, [r4, r0]
	lsl     r0, r0, #2
	add     r1, r4, r0
	ldr     r0, [pc, #0x140] @ 0x226219c, (=0x488)
	str     r2, [r1, r0]
	ldr     r0, [pc, #0x138] @ 0x2262198, (=0x60a)
	ldrb    r0, [r4, r0]
	add     r1, r0, #0x1
	ldr     r0, [pc, #0x130] @ 0x2262198, (=0x60a)
	strb    r1, [r4, r0]
	ldrb    r0, [r4, r0]
	cmp     r0, #0x18
	bls     branch_2262072
	bl      ErrorHandling
.thumb
branch_2262072: @ 2262072 :thumb
	ldr     r0, [pc, #0x114] @ 0x2262188, (=0x612)
	mov     r1, #0x0
	ldrb    r0, [r4, r0]
	lsl     r0, r0, #2
	add     r0, r4, r0
	ldr     r0, [r0, #0x8]
	bl      Function_226138c
	b       branch_2262106
@ 0x2262084

.thumb
branch_2262084: @ 2262084 :thumb
	ldr     r0, [pc, #0x118] @ 0x22621a0, (=0x60b)
	mov     r1, #0xc
	ldrb    r0, [r4, r0]
	mul     r1, r0
	ldr     r0, [sp, #0x18]
	add     r0, r0, r1
	ldr     r1, [pc, #0xf4] @ 0x2262188, (=0x612)
	ldrb    r1, [r4, r1]
	lsl     r1, r1, #2
	add     r1, r4, r1
	ldr     r1, [r1, #0x8]
	bl      Function_22629fc
	ldr     r0, [pc, #0x100] @ 0x22621a0, (=0x60b)
	ldrb    r0, [r4, r0]
	add     r1, r0, #0x1
	ldr     r0, [pc, #0xf8] @ 0x22621a0, (=0x60b)
	strb    r1, [r4, r0]
	ldrb    r0, [r4, r0]
	cmp     r0, #0x18
	bls     branch_22620b2
	bl      ErrorHandling
.thumb
branch_22620b2: @ 22620b2 :thumb
	ldr     r0, [pc, #0xd4] @ 0x2262188, (=0x612)
	mov     r1, #0x0
	ldrb    r0, [r4, r0]
	lsl     r0, r0, #2
	add     r0, r4, r0
	ldr     r0, [r0, #0x8]
	bl      Function_226138c
	ldr     r0, [pc, #0xc4] @ 0x2262188, (=0x612)
	ldrb    r0, [r4, r0]
	lsl     r0, r0, #2
	add     r0, r4, r0
	ldr     r0, [r0, #0x8]
	bl      Function_22610e4
	strh    r0, [r6, #0x4]
	lsr     r0, r0, #16
	strh    r0, [r6, #0x6]
	ldrh    r0, [r6, #0x4]
	strh    r0, [r6, #0x8]
	ldrh    r0, [r6, #0x6]
	strh    r0, [r6, #0xa]
	mov     r0, #0x8
	ldsh    r0, [r6, r0]
	add     r0, #0x8
	strh    r0, [r6, #0x8]
	mov     r0, #0xa
	ldsh    r0, [r6, r0]
	add     r0, #0x14
	strh    r0, [r6, #0xa]
	ldr     r0, [pc, #0x98] @ 0x2262188, (=0x612)
	ldrh    r1, [r6, #0x8]
	ldrb    r0, [r4, r0]
	lsl     r0, r0, #2
	add     r0, r4, r0
	ldr     r0, [r0, #0x8]
	strh    r1, [r7, #0x0]
	ldrh    r1, [r6, #0xa]
	strh    r1, [r7, #0x2]
	ldr     r1, [r7, #0x0]
	bl      Function_22610bc
.thumb
branch_2262106: @ 2262106 :thumb
	ldr     r0, [pc, #0x80] @ 0x2262188, (=0x612)
	add     r2, sp, #0x1c
	ldrb    r0, [r4, r0]
	add     r2, #0x2
	add     r3, sp, #0x1c
	add     r1, r0, #0x1
	ldr     r0, [pc, #0x74] @ 0x2262188, (=0x612)
	strb    r1, [r4, r0]
	ldr     r0, [sp, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x8]
	ldrh    r1, [r5, #0x0]
	ldr     r0, [r4, #0x0]
	bl      Function_225c8d8
	cmp     r0, #0x1
	bne     branch_226212c
	b       branch_2261e94
@ 0x226212c

.thumb
branch_226212c: @ 226212c :thumb
	ldr     r0, [sp, #0xc]
	.hword  0x1d2d @ add r5, r5, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0xc]
	cmp     r0, #0x23
	bcs     branch_226213a
	b       branch_2261e5e
@ 0x226213a

.thumb
branch_226213a: @ 226213a :thumb
	mov     r0, #0xa
	mov     r7, #0x0
	lsl     r0, r0, #14
	ldr     r6, [pc, #0x60] @ 0x22621a4, (=0x226d920)
	str     r7, [sp, #0x28]
	str     r0, [sp, #0x30]
	str     r7, [sp, #0x2c]
	mov     r5, r4
.thumb
branch_226214a: @ 226214a :thumb
	ldrh    r1, [r6, #0x0]
	ldrh    r2, [r6, #0x2]
	ldr     r0, [r4, #0x4]
	add     r3, sp, #0x28
	bl      Function_2260e20
	mov     r1, #0x82
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, r1
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_2260f38
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r7, #0x9
	blt     branch_226214a
	ldr     r0, [pc, #0x34] @ 0x22621a8, (=0x613)
	mov     r1, #0x9
	strb    r1, [r4, r0]
	mov     r0, r4
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x226217c

.word 0x614 @ 0x226217c
.word 0x226d944 @ 0x2262180
.word 0x4e8 @ 0x2262184
.word 0x612 @ 0x2262188
.word 0x608 @ 0x226218c
.word 0xffa4 @ 0x2262190
.word 0x609 @ 0x2262194
.word 0x60a @ 0x2262198
.word 0x488 @ 0x226219c
.word 0x60b @ 0x22621a0
.word 0x226d920 @ 0x22621a4
.word 0x613 @ 0x22621a8
.thumb
Function_22621ac: @ 22621ac :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x54] @ 0x2262208, (=0x613)
	mov     r6, #0x0
	ldrb    r0, [r5, r0]
	cmp     r0, #0x0
	ble     branch_22621d2
	ldr     r7, [pc, #0x4c] @ 0x2262208, (=0x613)
	mov     r4, r5
.thumb
branch_22621be: @ 22621be :thumb
	mov     r0, #0x82
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2260e8c
	ldrb    r0, [r5, r7]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, r0
	blt     branch_22621be
.thumb
branch_22621d2: @ 22621d2 :thumb
	ldr     r0, [pc, #0x38] @ 0x226220c, (=0x612)
	mov     r6, #0x0
	ldrb    r0, [r5, r0]
	cmp     r0, #0x0
	ble     branch_22621f2
	ldr     r7, [pc, #0x2c] @ 0x226220c, (=0x612)
	mov     r4, r5
.thumb
branch_22621e0: @ 22621e0 :thumb
	ldr     r0, [r5, #0x4]
	ldr     r1, [r4, #0x8]
	bl      Function_2261058
	ldrb    r0, [r5, r7]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, r0
	blt     branch_22621e0
.thumb
branch_22621f2: @ 22621f2 :thumb
	ldr     r0, [r5, #0x4]
	bl      Function_2260d80
	ldr     r0, [r5, #0x4]
	bl      Function_2260bb8
	mov     r0, r5
	bl      free
	pop     {r3-r7,pc}
@ 0x2262206


.align 2


.word 0x613 @ 0x2262208
.word 0x612 @ 0x226220c
.thumb
Function_2262210: @ 2262210 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x70] @ 0x2262288, (=0x608)
	mov     r6, #0x0
	ldrb    r0, [r5, r0]
	cmp     r0, #0x0
	ble     branch_2262238
	mov     r0, #0x92
	lsl     r0, r0, #2
	ldr     r7, [pc, #0x64] @ 0x2262288, (=0x608)
	add     r4, r5, r0
.thumb
branch_2262226: @ 2262226 :thumb
	ldr     r1, [r5, #0x4]
	mov     r0, r4
	bl      Function_2262a04
	ldrb    r0, [r5, r7]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0xc
	cmp     r6, r0
	blt     branch_2262226
.thumb
branch_2262238: @ 2262238 :thumb
	ldr     r0, [pc, #0x50] @ 0x226228c, (=0x609)
	mov     r6, #0x0
	ldrb    r0, [r5, r0]
	cmp     r0, #0x0
	ble     branch_226225c
	mov     r0, #0xda
	lsl     r0, r0, #2
	ldr     r7, [pc, #0x44] @ 0x226228c, (=0x609)
	add     r4, r5, r0
.thumb
branch_226224a: @ 226224a :thumb
	ldr     r1, [r5, #0x4]
	mov     r0, r4
	bl      Function_2262bec
	ldrb    r0, [r5, r7]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0xc
	cmp     r6, r0
	blt     branch_226224a
.thumb
branch_226225c: @ 226225c :thumb
	ldr     r0, [pc, #0x30] @ 0x2262290, (=0x60b)
	mov     r6, #0x0
	ldrb    r0, [r5, r0]
	cmp     r0, #0x0
	ble     branch_226227e
	ldr     r0, [pc, #0x2c] @ 0x2262294, (=0x4e8)
	ldr     r7, [pc, #0x24] @ 0x2262290, (=0x60b)
	add     r4, r5, r0
.thumb
branch_226226c: @ 226226c :thumb
	ldr     r1, [r5, #0x4]
	mov     r0, r4
	bl      Function_2262c94
	ldrb    r0, [r5, r7]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0xc
	cmp     r6, r0
	blt     branch_226226c
.thumb
branch_226227e: @ 226227e :thumb
	ldr     r0, [r5, #0x4]
	bl      Function_2260be8
	pop     {r3-r7,pc}
@ 0x2262286


.align 2


.word 0x608 @ 0x2262288
.word 0x609 @ 0x226228c
.word 0x60b @ 0x2262290
.word 0x4e8 @ 0x2262294
.thumb
Function_2262298: @ 2262298 :thumb
	ldr     r3, [pc, #0x4] @ 0x22622a0, (=0x2260c51)
	ldr     r0, [r0, #0x4]
	bx      r3
@ 0x226229e


.align 2


.word 0x2260c51 @ 0x22622a0
.thumb
Function_22622a4: @ 22622a4 :thumb
	ldr     r3, [pc, #0x4] @ 0x22622ac, (=0x2260ce1)
	ldr     r0, [r0, #0x4]
	bx      r3
@ 0x22622aa


.align 2


.word Function_2260ce0+1 @ =0x2260ce1, 0x22622ac
.thumb
Function_22622b0: @ 22622b0 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [pc, #0x30] @ 0x22622e8, (=0x613)
	mov     r4, r1
	ldrb    r0, [r5, r0]
	mov     r6, r2
	cmp     r0, r4
	bhi     branch_22622c6
	bl      ErrorHandling
.thumb
branch_22622c6: @ 22622c6 :thumb
	mov     r0, #0xa
	lsl     r0, r0, #14
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	lsl     r0, r4, #2
	add     r1, r5, r0
	mov     r0, #0x82
	str     r6, [sp, #0x0]
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	add     r1, sp, #0x0
	bl      Function_2260ea0
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x22622e6


.align 2


.word 0x613 @ 0x22622e8
.thumb
Function_22622ec: @ 22622ec :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x20] @ 0x2262314, (=0x613)
	mov     r4, r1
	ldrb    r0, [r5, r0]
	mov     r6, r2
	cmp     r0, r4
	bhi     branch_2262300
	bl      ErrorHandling
.thumb
branch_2262300: @ 2262300 :thumb
	lsl     r0, r4, #2
	add     r1, r5, r0
	mov     r0, #0x82
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	mov     r1, r6
	bl      Function_2260ee4
	pop     {r4-r6,pc}
@ 0x2262312


.align 2


.word 0x613 @ 0x2262314
.thumb
Function_2262318: @ 2262318 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x48] @ 0x2262368, (=0x613)
	mov     r6, r1
	ldrb    r0, [r5, r0]
	mov     r7, r2
	mov     r4, r3
	cmp     r0, r6
	bhi     branch_226232e
	bl      ErrorHandling
.thumb
branch_226232e: @ 226232e :thumb
	cmp     r7, #0x3
	bcc     branch_2262336
	bl      ErrorHandling
.thumb
branch_2262336: @ 2262336 :thumb
	lsl     r0, r6, #2
	add     r1, r5, r0
	mov     r0, #0x82
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	mov     r1, r4
	bl      Function_2260f28
	ldr     r1, [pc, #0x24] @ 0x226236c, (=0x226d914)
	lsl     r0, r7, #2
	ldsh    r1, [r1, r0]
	ldr     r2, [r4, #0x0]
	lsl     r1, r1, #12
	add     r1, r2, r1
	str     r1, [r4, #0x0]
	ldr     r1, [pc, #0x18] @ 0x2262370, (=0x226d916)
	ldr     r2, [r4, #0x8]
	ldsh    r0, [r1, r0]
	lsl     r0, r0, #12
	add     r0, r2, r0
	str     r0, [r4, #0x8]
	mov     r0, #0xa
	lsl     r0, r0, #14
	str     r0, [r4, #0x4]
	pop     {r3-r7,pc}
@ 0x2262368

.word 0x613 @ 0x2262368
.word 0x226d914 @ 0x226236c
.word 0x226d916 @ 0x2262370
.thumb
Function_2262374: @ 2262374 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x1c] @ 0x2262398, (=0x613)
	mov     r4, r1
	ldrb    r0, [r5, r0]
	cmp     r0, r4
	bhi     branch_2262386
	bl      ErrorHandling
.thumb
branch_2262386: @ 2262386 :thumb
	lsl     r0, r4, #2
	add     r1, r5, r0
	mov     r0, #0x82
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	bl      Function_2260f44
	pop     {r3-r5,pc}
@ 0x2262396


.align 2


.word 0x613 @ 0x2262398
.thumb
Function_226239c: @ 226239c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x1c] @ 0x22623c0, (=0x613)
	mov     r4, r1
	ldrb    r0, [r5, r0]
	cmp     r0, r4
	bhi     branch_22623ae
	bl      ErrorHandling
.thumb
branch_22623ae: @ 22623ae :thumb
	lsl     r0, r4, #2
	add     r1, r5, r0
	mov     r0, #0x82
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	bl      Function_2260f5c
	pop     {r3-r5,pc}
@ 0x22623be


.align 2


.word 0x613 @ 0x22623c0
.thumb
Function_22623c4: @ 22623c4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x20] @ 0x22623ec, (=0x613)
	mov     r4, r1
	ldrb    r0, [r5, r0]
	mov     r6, r2
	cmp     r0, r4
	bhi     branch_22623d8
	bl      ErrorHandling
.thumb
branch_22623d8: @ 22623d8 :thumb
	lsl     r0, r4, #2
	add     r1, r5, r0
	mov     r0, #0x82
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	mov     r1, r6
	bl      Function_2260f38
	pop     {r4-r6,pc}
@ 0x22623ea


.align 2


.word 0x613 @ 0x22623ec
.thumb
Function_22623f0: @ 22623f0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x20] @ 0x2262418, (=0x613)
	mov     r4, r1
	ldrb    r0, [r5, r0]
	mov     r6, r2
	cmp     r0, r4
	bhi     branch_2262404
	bl      ErrorHandling
.thumb
branch_2262404: @ 2262404 :thumb
	lsl     r0, r4, #2
	add     r1, r5, r0
	mov     r0, #0x82
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	mov     r1, r6
	bl      Function_2260f74
	pop     {r4-r6,pc}
@ 0x2262416


.align 2


.word 0x613 @ 0x2262418
.thumb
Function_226241c: @ 226241c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x1c] @ 0x2262440, (=0x613)
	mov     r4, r1
	ldrb    r0, [r5, r0]
	cmp     r0, r4
	bhi     branch_226242e
	bl      ErrorHandling
.thumb
branch_226242e: @ 226242e :thumb
	lsl     r0, r4, #2
	add     r1, r5, r0
	mov     r0, #0x82
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	bl      Function_2260f80
	pop     {r3-r5,pc}
@ 0x226243e


.align 2


.word 0x613 @ 0x2262440
.thumb
Function_2262444: @ 2262444 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x1c] @ 0x2262468, (=0x613)
	mov     r4, r1
	ldrb    r0, [r5, r0]
	cmp     r0, r4
	bhi     branch_2262456
	bl      ErrorHandling
.thumb
branch_2262456: @ 2262456 :thumb
	lsl     r0, r4, #2
	add     r1, r5, r0
	mov     r0, #0x82
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	bl      Function_2260f88
	pop     {r3-r5,pc}
@ 0x2262466


.align 2


.word 0x613 @ 0x2262468
.thumb
Function_226246c: @ 226246c :thumb
	ldr     r3, [pc, #0x4] @ 0x2262474, (=0x2260dc9)
	ldr     r0, [r0, #0x4]
	bx      r3
@ 0x2262472


.align 2


.word 0x2260dc9 @ 0x2262474
.thumb
Function_2262478: @ 2262478 :thumb
	ldr     r3, [pc, #0x4] @ 0x2262480, (=0x2260df5)
	ldr     r0, [r0, #0x4]
	bx      r3
@ 0x226247e


.align 2


.word 0x2260df5 @ 0x2262480
.thumb
Function_2262484: @ 2262484 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [pc, #0x88] @ 0x2262514, (=0x612)
	str     r1, [sp, #0x0]
	ldrb    r0, [r5, r0]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_226250e
	ldr     r1, [sp, #0x0]
	.hword  0x1e50 @ sub r0, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	lsl     r0, r0, #24
	mov     r4, r5
	str     r1, [sp, #0x4]
	lsr     r7, r0, #24
.thumb
branch_22624a8: @ 22624a8 :thumb
	ldr     r0, [r4, #0x8]
	ldr     r1, [sp, #0x4]
	mov     r2, r7
	bl      Function_22628c8
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x8]
	ldr     r1, [sp, #0x0]
	mov     r2, r7
	bl      Function_22628c8
	ldr     r1, [sp, #0x8]
	cmp     r1, #0x1
	beq     branch_22624c8
	cmp     r0, #0x1
	bne     branch_2262502
.thumb
branch_22624c8: @ 22624c8 :thumb
	ldr     r0, [r4, #0x8]
	bl      Function_22610b8
	cmp     r0, #0x4
	bhi     branch_2262502
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22624de

Jumppoints_22624de:
.hword branch_2262502 - Jumppoints_22624de - 2
.hword branch_22624e8 - Jumppoints_22624de - 2
.hword branch_22624e8 - Jumppoints_22624de - 2
.hword branch_22624e8 - Jumppoints_22624de - 2
.hword branch_22624e8 - Jumppoints_22624de - 2
.thumb
branch_22624e8: @ 22624e8 :thumb
	ldr     r0, [pc, #0x2c] @ 0x2262518, (=0x611)
	ldrb    r0, [r5, r0]
	cmp     r0, #0x4
	bne     branch_22624fa
	ldr     r1, [r4, #0x8]
	mov     r0, r5
	bl      Function_22629ac
	b       branch_2262502
@ 0x22624fa

.thumb
branch_22624fa: @ 22624fa :thumb
	ldr     r1, [r4, #0x8]
	mov     r0, r5
	bl      Function_2262968
.thumb
branch_2262502: @ 2262502 :thumb
	ldr     r0, [pc, #0x10] @ 0x2262514, (=0x612)
	.hword  0x1c76 @ add r6, r6, #0x1
	ldrb    r0, [r5, r0]
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, r0
	blt     branch_22624a8
.thumb
branch_226250e: @ 226250e :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2262512


.align 2


.word 0x612 @ 0x2262514
.word 0x611 @ 0x2262518
.thumb
Function_226251c: @ 226251c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [pc, #0xb0] @ 0x22625d4, (=0x612)
	mov     r7, r1
	ldrb    r0, [r5, r0]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_22625d2
	mov     r4, r5
.thumb
branch_226252e: @ 226252e :thumb
	ldr     r0, [r4, #0x8]
	bl      Function_22610b8
	cmp     r0, #0x4
	bhi     branch_226254e
	add     r1, r0, r0
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2262544

Jumppoints_2262544:
.hword branch_22625c6 - Jumppoints_2262544 - 2
.hword branch_2262554 - Jumppoints_2262544 - 2
.hword branch_2262554 - Jumppoints_2262544 - 2
.hword branch_2262554 - Jumppoints_2262544 - 2
.hword branch_2262554 - Jumppoints_2262544 - 2
.thumb
branch_226254e: @ 226254e :thumb
	cmp     r0, #0xf
	beq     branch_2262564
	b       branch_22625c6
@ 0x2262554

.thumb
branch_2262554: @ 2262554 :thumb
	cmp     r7, #0x1
	bne     branch_22625c6
	ldr     r0, [r5, #0x4]
	ldr     r1, [r4, #0x8]
	mov     r2, #0x1
	bl      Function_2261398
	b       branch_22625c6
@ 0x2262564

.thumb
branch_2262564: @ 2262564 :thumb
	cmp     r7, #0x1
	bne     branch_22625a0
	mov     r1, #0x2
	ldr     r0, [r4, #0x8]
	lsl     r1, r1, #10
	bl      Function_22613c0
	ldr     r0, [r5, #0x4]
	ldr     r1, [r4, #0x8]
	mov     r2, #0x0
	mov     r3, #0x6
	bl      Function_226110c
	ldr     r0, [r5, #0x4]
	ldr     r1, [r4, #0x8]
	mov     r2, #0x1
	mov     r3, #0x6
	bl      Function_226110c
	ldr     r0, [r5, #0x4]
	ldr     r1, [r4, #0x8]
	mov     r2, #0x2
	mov     r3, #0x6
	bl      Function_226110c
	ldr     r0, [r4, #0x8]
	mov     r1, #0x1
	bl      Function_226138c
	b       branch_22625c6
@ 0x22625a0

.thumb
branch_22625a0: @ 22625a0 :thumb
	ldr     r0, [r5, #0x4]
	ldr     r1, [r4, #0x8]
	mov     r2, #0x0
	bl      Function_2261220
	ldr     r0, [r5, #0x4]
	ldr     r1, [r4, #0x8]
	mov     r2, #0x1
	bl      Function_2261220
	ldr     r0, [r5, #0x4]
	ldr     r1, [r4, #0x8]
	mov     r2, #0x2
	bl      Function_2261220
	ldr     r0, [r4, #0x8]
	mov     r1, #0x0
	bl      Function_226138c
.thumb
branch_22625c6: @ 22625c6 :thumb
	ldr     r0, [pc, #0xc] @ 0x22625d4, (=0x612)
	.hword  0x1c76 @ add r6, r6, #0x1
	ldrb    r0, [r5, r0]
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, r0
	blt     branch_226252e
.thumb
branch_22625d2: @ 22625d2 :thumb
	pop     {r3-r7,pc}
@ 0x22625d4

.word 0x612 @ 0x22625d4
.thumb
Function_22625d8: @ 22625d8 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r0, [pc, #0x24] @ 0x2262604, (=0x60b)
	mov     r7, r1
	ldrb    r0, [r6, r0]
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_2262600
	ldr     r0, [pc, #0x1c] @ 0x2262608, (=0x4e8)
	add     r5, r6, r0
.thumb
branch_22625ec: @ 22625ec :thumb
	mov     r0, r5
	mov     r1, r7
	bl      Function_2262bd0
	ldr     r0, [pc, #0xc] @ 0x2262604, (=0x60b)
	.hword  0x1c64 @ add r4, r4, #0x1
	ldrb    r0, [r6, r0]
	add     r5, #0xc
	cmp     r4, r0
	blt     branch_22625ec
.thumb
branch_2262600: @ 2262600 :thumb
	pop     {r3-r7,pc}
@ 0x2262602


.align 2


.word 0x60b @ 0x2262604
.word 0x4e8 @ 0x2262608
.thumb
Function_226260c: @ 226260c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x40] @ 0x2262654, (=0x612)
	mov     r6, #0x0
	ldrb    r0, [r5, r0]
	cmp     r0, #0x0
	ble     branch_2262652
	ldr     r7, [pc, #0x38] @ 0x2262654, (=0x612)
	mov     r4, r5
.thumb
branch_226261e: @ 226261e :thumb
	ldr     r0, [r4, #0x8]
	bl      Function_22610b8
	cmp     r0, #0x4
	bhi     branch_2262648
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2262634

Jumppoints_2262634:
.hword branch_2262648 - Jumppoints_2262634 - 2
.hword branch_226263e - Jumppoints_2262634 - 2
.hword branch_226263e - Jumppoints_2262634 - 2
.hword branch_226263e - Jumppoints_2262634 - 2
.hword branch_226263e - Jumppoints_2262634 - 2
.thumb
branch_226263e: @ 226263e :thumb
	ldr     r0, [r5, #0x4]
	ldr     r1, [r4, #0x8]
	mov     r2, #0x1
	bl      Function_2261398
.thumb
branch_2262648: @ 2262648 :thumb
	ldrb    r0, [r5, r7]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, r0
	blt     branch_226261e
.thumb
branch_2262652: @ 2262652 :thumb
	pop     {r3-r7,pc}
@ 0x2262654

.word 0x612 @ 0x2262654
.thumb
Function_2262658: @ 2262658 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	ldr     r0, [pc, #0xb0] @ 0x2262710, (=0x612)
	mov     r7, r1
	ldrb    r0, [r4, r0]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_226270e
	mov     r5, r4
.thumb
branch_226266a: @ 226266a :thumb
	ldr     r0, [r5, #0x8]
	bl      Function_22610b8
	cmp     r0, #0xb
	beq     branch_2262678
	cmp     r0, #0xc
	bne     branch_2262702
.thumb
branch_2262678: @ 2262678 :thumb
	cmp     r7, #0x3
	bhi     branch_2262702
	add     r0, r7, r7
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2262688

Jumppoints_2262688:
.hword branch_2262690 - Jumppoints_2262688 - 2
.hword branch_22626a6 - Jumppoints_2262688 - 2
.hword branch_22626c0 - Jumppoints_2262688 - 2
.hword branch_22626e4 - Jumppoints_2262688 - 2
.thumb
branch_2262690: @ 2262690 :thumb
	ldr     r0, [r4, #0x4]
	ldr     r1, [r5, #0x8]
	mov     r2, #0x0
	mov     r3, #0x2
	bl      Function_226110c
	mov     r0, #0x91
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	b       branch_2262702
@ 0x22626a6

.thumb
branch_22626a6: @ 22626a6 :thumb
	ldr     r0, [pc, #0x6c] @ 0x2262714, (=0x2262909)
	mov     r2, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x4]
	ldr     r1, [r5, #0x8]
	mov     r3, #0x1
	bl      Function_226111c
	mov     r0, #0x91
	mov     r1, #0x1
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	b       branch_2262702
@ 0x22626c0

.thumb
branch_22626c0: @ 22626c0 :thumb
	ldr     r0, [pc, #0x54] @ 0x2262718, (=0x2262939)
	mov     r2, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x4]
	ldr     r1, [r5, #0x8]
	mov     r3, #0x4
	bl      Function_226111c
	ldr     r0, [r4, #0x4]
	ldr     r1, [r5, #0x8]
	mov     r2, #0x1
	bl      Function_2261220
	mov     r0, #0x91
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	b       branch_2262702
@ 0x22626e4

.thumb
branch_22626e4: @ 22626e4 :thumb
	ldr     r0, [r4, #0x4]
	ldr     r1, [r5, #0x8]
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_226110c
	ldr     r0, [r4, #0x4]
	ldr     r1, [r5, #0x8]
	mov     r2, #0x0
	bl      Function_2261220
	mov     r0, #0x91
	mov     r1, #0x1
	lsl     r0, r0, #2
	str     r1, [r4, r0]
.thumb
branch_2262702: @ 2262702 :thumb
	ldr     r0, [pc, #0xc] @ 0x2262710, (=0x612)
	.hword  0x1c76 @ add r6, r6, #0x1
	ldrb    r0, [r4, r0]
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, r0
	blt     branch_226266a
.thumb
branch_226270e: @ 226270e :thumb
	pop     {r3-r7,pc}
@ 0x2262710

.word 0x612 @ 0x2262710
.word 0x2262909 @ 0x2262714
.word 0x2262939 @ 0x2262718
.thumb
Function_226271c: @ 226271c :thumb
	mov     r1, #0x91
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	bx      lr
@ 0x2262724

.thumb
Function_2262724: @ 2262724 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x24] @ 0x2262750, (=0x608)
	mov     r6, r1
	ldrb    r0, [r5, r0]
	mov     r7, r2
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_226274c
.thumb
branch_2262736: @ 2262736 :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	mov     r3, r7
	bl      Function_2262754
	ldr     r0, [pc, #0xc] @ 0x2262750, (=0x608)
	.hword  0x1c64 @ add r4, r4, #0x1
	ldrb    r0, [r5, r0]
	cmp     r4, r0
	blt     branch_2262736
.thumb
branch_226274c: @ 226274c :thumb
	pop     {r3-r7,pc}
@ 0x226274e


.align 2


.word 0x608 @ 0x2262750
.thumb
Function_2262754: @ 2262754 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x2c] @ 0x2262788, (=0x608)
	ldrb    r0, [r4, r0]
	cmp     r1, r0
	bcs     branch_2262784
	mov     r0, #0x92
	lsl     r0, r0, #2
	add     r5, r4, r0
	mov     r0, #0xc
	mul     r0, r1
	cmp     r2, #0x0
	beq     branch_226277a
	ldr     r1, [r4, #0x4]
	add     r0, r5, r0
	mov     r2, r3
	bl      Function_2262a50
	b       branch_2262780
@ 0x226277a

.thumb
branch_226277a: @ 226277a :thumb
	add     r0, r5, r0
	bl      Function_2262a80
.thumb
branch_2262780: @ 2262780 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2262784

.thumb
branch_2262784: @ 2262784 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2262788

.word 0x608 @ 0x2262788
.thumb
Function_226278c: @ 226278c :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r0, [pc, #0x24] @ 0x22627b8, (=0x609)
	mov     r7, r1
	ldrb    r0, [r6, r0]
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_22627b6
	mov     r0, #0xda
	lsl     r0, r0, #2
	add     r5, r6, r0
.thumb
branch_22627a2: @ 22627a2 :thumb
	mov     r0, r5
	mov     r1, r7
	bl      Function_2262bd0
	ldr     r0, [pc, #0xc] @ 0x22627b8, (=0x609)
	.hword  0x1c64 @ add r4, r4, #0x1
	ldrb    r0, [r6, r0]
	add     r5, #0xc
	cmp     r4, r0
	blt     branch_22627a2
.thumb
branch_22627b6: @ 22627b6 :thumb
	pop     {r3-r7,pc}
@ 0x22627b8

.word 0x609 @ 0x22627b8
.thumb
Function_22627bc: @ 22627bc :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	lsl     r0, r1, #2
	add     r1, r5, r0
	mov     r0, #0x8b
	lsl     r0, r0, #2
	ldr     r6, [r1, r0]
	add     r0, #0xc
	ldr     r7, [r1, r0]
	ldr     r0, [sp, #0x18]
	mov     r4, r2
	cmp     r0, #0x1
	beq     branch_22627da
	cmp     r3, #0x1
	bne     branch_226288a
.thumb
branch_22627da: @ 22627da :thumb
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_2261348
	cmp     r0, #0x0
	bne     branch_22627f2
	ldr     r0, [r5, #0x4]
	mov     r1, r6
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_226110c
.thumb
branch_22627f2: @ 22627f2 :thumb
	ldr     r0, [sp, #0x18]
	cmp     r0, #0x1
	bne     branch_2262830
	add     r0, r4, #0x4
	lsl     r1, r0, #2
	beq     branch_2262810
	lsl     r0, r0, #14
	blx     _ffltu
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_226281e
@ 0x2262810

.thumb
branch_2262810: @ 2262810 :thumb
	lsl     r0, r0, #14
	blx     _ffltu
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
.thumb
branch_226281e: @ 226281e :thumb
	blx     _ffix
	mov     r3, r0
	ldr     r0, [r5, #0x4]
	mov     r1, r7
	mov     r2, #0x0
	bl      Function_22612f0
	pop     {r3-r7,pc}
@ 0x2262830

.thumb
branch_2262830: @ 2262830 :thumb
	ldr     r0, [pc, #0x90] @ 0x22628c4, (=0x60c)
	mov     r1, #0x1c
	ldr     r0, [r5, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	blx     _u32_div_f
	ldr     r0, [pc, #0x84] @ 0x22628c4, (=0x60c)
	str     r1, [r5, r0]
	ldr     r0, [r5, r0]
	cmp     r0, #0xe
	bcs     branch_226287c
	lsl     r0, r4, #2
	beq     branch_226285c
	lsl     r0, r4, #14
	blx     _ffltu
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_226286a
@ 0x226285c

.thumb
branch_226285c: @ 226285c :thumb
	lsl     r0, r4, #14
	blx     _ffltu
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
.thumb
branch_226286a: @ 226286a :thumb
	blx     _ffix
	mov     r3, r0
	ldr     r0, [r5, #0x4]
	mov     r1, r7
	mov     r2, #0x0
	bl      Function_22612f0
	pop     {r3-r7,pc}
@ 0x226287c

.thumb
branch_226287c: @ 226287c :thumb
	mov     r2, #0x0
	ldr     r0, [r5, #0x4]
	mov     r1, r7
	mov     r3, r2
	bl      Function_22612f0
	pop     {r3-r7,pc}
@ 0x226288a

.thumb
branch_226288a: @ 226288a :thumb
	ldr     r0, [sp, #0x1c]
	cmp     r0, #0x0
	ldr     r0, [r5, #0x4]
	beq     branch_22628ac
	mov     r1, r6
	bl      Function_226128c
	ldr     r0, [r5, #0x4]
	mov     r1, r7
	bl      Function_226128c
	ldr     r0, [r5, #0x4]
	mov     r1, r6
	mov     r2, #0x1
	bl      Function_2261398
	pop     {r3-r7,pc}
@ 0x22628ac

.thumb
branch_22628ac: @ 22628ac :thumb
	mov     r1, r6
	mov     r2, #0x1
	bl      Function_2261220
	mov     r2, #0x0
	ldr     r0, [r5, #0x4]
	mov     r1, r7
	mov     r3, r2
	bl      Function_22612f0
	pop     {r3-r7,pc}
@ 0x22628c2


.align 2


.word 0x60c @ 0x22628c4
.thumb
Function_22628c8: @ 22628c8 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r1
	lsl     r1, r2, #20
	asr     r4, r1, #16
	bl      Function_22610e4
	add     r1, sp, #0x0
	strh    r0, [r1, #0x0]
	lsr     r0, r0, #16
	strh    r0, [r1, #0x2]
	ldrh    r0, [r1, #0x0]
	strh    r0, [r1, #0x4]
	ldrh    r0, [r1, #0x2]
	strh    r0, [r1, #0x6]
	mov     r0, #0x4
	ldsh    r2, [r1, r0]
	lsl     r0, r5, #20
	asr     r0, r0, #16
	cmp     r2, r0
	bne     branch_2262900
	mov     r0, #0x6
	ldsh    r0, [r1, r0]
	cmp     r0, r4
	bne     branch_2262900
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2262900

.thumb
branch_2262900: @ 2262900 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2262906


.align 2, 0


.thumb
Function_2262908: @ 2262908 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r5, r0
	mov     r0, r6
	bl      Function_22610b8
	mov     r4, r0
	cmp     r4, #0xb
	beq     branch_2262922
	cmp     r4, #0xc
	beq     branch_2262922
	bl      ErrorHandling
.thumb
branch_2262922: @ 2262922 :thumb
	sub     r4, #0xb
	cmp     r4, #0x1
	bhi     branch_2262934
	mov     r0, r5
	mov     r1, r6
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_226110c
.thumb
branch_2262934: @ 2262934 :thumb
	pop     {r4-r6,pc}
@ 0x2262936


.align 2, 0


.thumb
Function_2262938: @ 2262938 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r5, r0
	mov     r0, r6
	bl      Function_22610b8
	mov     r4, r0
	cmp     r4, #0xb
	beq     branch_2262952
	cmp     r4, #0xc
	beq     branch_2262952
	bl      ErrorHandling
.thumb
branch_2262952: @ 2262952 :thumb
	sub     r4, #0xb
	cmp     r4, #0x1
	bhi     branch_2262964
	mov     r0, r5
	mov     r1, r6
	mov     r2, #0x0
	mov     r3, #0x2
	bl      Function_226110c
.thumb
branch_2262964: @ 2262964 :thumb
	pop     {r4-r6,pc}
@ 0x2262966


.align 2, 0


.thumb
Function_2262968: @ 2262968 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r4, #0x0
	ldr     r0, [r6, #0x4]
	mov     r2, r4
	mov     r5, r1
	bl      Function_22612b4
	cmp     r0, #0x0
	bne     branch_2262980
	mov     r4, #0x1
	b       branch_2262992
@ 0x2262980

.thumb
branch_2262980: @ 2262980 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_2261368
	mov     r1, #0x2
	lsl     r1, r1, #12
	cmp     r0, r1
	ble     branch_2262992
	mov     r4, #0x1
.thumb
branch_2262992: @ 2262992 :thumb
	cmp     r4, #0x1
	bne     branch_22629a4
	mov     r0, r6
	mov     r1, r5
	bl      Function_22629dc
	ldr     r0, [pc, #0x8] @ 0x22629a8, (=0x5a5)
	bl      Function_2005748
.thumb
branch_22629a4: @ 22629a4 :thumb
	pop     {r4-r6,pc}
@ 0x22629a6


.align 2


.word 0x5a5 @ 0x22629a8
.thumb
Function_22629ac: @ 22629ac :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, #0x0
	ldr     r0, [r5, #0x4]
	mov     r2, r4
	mov     r6, r1
	bl      Function_22612b4
	cmp     r0, #0x0
	bne     branch_22629c2
	mov     r4, #0x1
.thumb
branch_22629c2: @ 22629c2 :thumb
	cmp     r4, #0x1
	bne     branch_22629d4
	mov     r0, r5
	mov     r1, r6
	bl      Function_22629dc
	ldr     r0, [pc, #0x8] @ 0x22629d8, (=0x5a9)
	bl      Function_2005748
.thumb
branch_22629d4: @ 22629d4 :thumb
	pop     {r4-r6,pc}
@ 0x22629d6


.align 2


.word 0x5a9 @ 0x22629d8
.thumb
Function_22629dc: @ 22629dc :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r4, #0x0
	mov     r7, #0x1
.thumb
branch_22629e6: @ 22629e6 :thumb
	ldr     r0, [r5, #0x4]
	mov     r1, r6
	mov     r2, r4
	mov     r3, r7
	bl      Function_226110c
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x3
	blt     branch_22629e6
	pop     {r3-r7,pc}
@ 0x22629fa


.align 2, 0


.thumb
Function_22629fc: @ 22629fc :thumb
	str     r1, [r0, #0x0]
	mov     r1, #0x0
	strh    r1, [r0, #0x4]
	bx      lr
@ 0x2262a04

.thumb
Function_2262a04: @ 2262a04 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldrh    r2, [r4, #0x4]
	mov     r5, r1
	cmp     r2, #0x4
	bhi     branch_2262a4e
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x2262a1c

Jumppoints_2262a1c:
.hword branch_2262a4e - Jumppoints_2262a1c - 2
.hword branch_2262a26 - Jumppoints_2262a1c - 2
.hword branch_2262a4e - Jumppoints_2262a1c - 2
.hword branch_2262a30 - Jumppoints_2262a1c - 2
.hword branch_2262a3a - Jumppoints_2262a1c - 2
.thumb
branch_2262a26: @ 2262a26 :thumb
	bl      Function_2262aa4
	mov     r0, #0x2
	strh    r0, [r4, #0x4]
	pop     {r3-r5,pc}
@ 0x2262a30

.thumb
branch_2262a30: @ 2262a30 :thumb
	bl      Function_2262b24
	mov     r0, #0x4
	strh    r0, [r4, #0x4]
	pop     {r3-r5,pc}
@ 0x2262a3a

.thumb
branch_2262a3a: @ 2262a3a :thumb
	bl      Function_2262b2c
	cmp     r0, #0x1
	bne     branch_2262a4e
	mov     r0, r4
	mov     r1, r5
	bl      Function_2262ae0
	mov     r0, #0x0
	strh    r0, [r4, #0x4]
.thumb
branch_2262a4e: @ 2262a4e :thumb
	pop     {r3-r5,pc}
@ 0x2262a50

.thumb
Function_2262a50: @ 2262a50 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r2
	ldrh    r2, [r5, #0x4]
	ldr     r3, [pc, #0x20] @ 0x2262a7c, (=0xffff)
	add     r6, r2, r3
	lsl     r6, r6, #16
	lsr     r6, r6, #16
	cmp     r6, #0x1
	bls     branch_2262a7a
	.hword  0x1e9b @ sub r3, r3, #0x2
	add     r2, r2, r3
	lsl     r2, r2, #16
	lsr     r2, r2, #16
	cmp     r2, #0x1
	bhi     branch_2262a74
	bl      Function_2262ae0
.thumb
branch_2262a74: @ 2262a74 :thumb
	mov     r0, #0x1
	strh    r0, [r5, #0x4]
	str     r4, [r5, #0x8]
.thumb
branch_2262a7a: @ 2262a7a :thumb
	pop     {r4-r6,pc}
@ 0x2262a7c

.word 0xffff @ 0x2262a7c
.thumb
Function_2262a80: @ 2262a80 :thumb
	ldrh    r2, [r0, #0x4]
	ldr     r1, [pc, #0x1c] @ 0x2262aa0, (=0xfffd)
	add     r1, r2, r1
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	cmp     r1, #0x1
	bls     branch_2262a9c
	cmp     r2, #0x1
	bhi     branch_2262a98
	mov     r1, #0x0
	strh    r1, [r0, #0x4]
	bx      lr
@ 0x2262a98

.thumb
branch_2262a98: @ 2262a98 :thumb
	mov     r1, #0x3
	strh    r1, [r0, #0x4]
.thumb
branch_2262a9c: @ 2262a9c :thumb
	bx      lr
@ 0x2262a9e


.align 2


.word 0xfffd @ 0x2262aa0
.thumb
Function_2262aa4: @ 2262aa4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	ldr     r0, [r5, #0x0]
	ldr     r1, [r5, #0x8]
	bl      Function_22613c0
	mov     r2, #0x0
	ldr     r1, [r5, #0x0]
	mov     r0, r4
	mov     r3, r2
	bl      Function_226110c
	ldr     r1, [r5, #0x0]
	mov     r0, r4
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_226110c
	ldr     r1, [r5, #0x0]
	mov     r0, r4
	mov     r2, #0x2
	mov     r3, #0x0
	bl      Function_226110c
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	bl      Function_226138c
	pop     {r3-r5,pc}
@ 0x2262ae0

.thumb
Function_2262ae0: @ 2262ae0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	ldr     r1, [r5, #0x0]
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_2261220
	ldr     r1, [r5, #0x0]
	mov     r0, r4
	mov     r2, #0x1
	bl      Function_2261220
	ldr     r1, [r5, #0x0]
	mov     r0, r4
	mov     r2, #0x2
	bl      Function_2261220
	ldr     r0, [r5, #0x0]
	mov     r1, #0x0
	bl      Function_226138c
	ldr     r0, [r5, #0x0]
	bl      Function_22613e0
	mov     r1, #0x1
	lsl     r1, r1, #12
	ldr     r0, [r5, #0x0]
	mov     r2, r1
	mov     r3, r1
	bl      Function_22613e8
	pop     {r3-r5,pc}
@ 0x2262b22


.align 2, 0


.thumb
Function_2262b24: @ 2262b24 :thumb
	mov     r1, #0x0
	strh    r1, [r0, #0x6]
	bx      lr
@ 0x2262b2a


.align 2, 0


.thumb
Function_2262b2c: @ 2262b2c :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r0, #0x6
	ldsh    r1, [r4, r0]
	cmp     r1, #0xa
	bge     branch_2262bc8
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, #0x6]
	ldsh    r0, [r4, r0]
	ldr     r2, [r4, #0x8]
	lsl     r0, r0, #12
	asr     r1, r0, #31
	asr     r3, r2, #31
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r0, r0, r2
	adc     r1, r3
	lsl     r1, r1, #20
	lsr     r0, r0, #12
	orr     r0, r1
	mov     r1, #0xa
	lsl     r1, r1, #12
	blx     FX_Div
	mov     r2, r0
	ldr     r1, [r4, #0x8]
	ldr     r0, [r4, #0x0]
	add     r1, r2, r1
	bl      Function_22613c0
	mov     r0, #0x6
	ldsh    r1, [r4, r0]
	mov     r0, #0x1f
	mul     r0, r1
	mov     r1, #0xa
	blx     _s32_div_f
	mov     r2, #0x1f
	sub     r1, r2, r0
	lsl     r1, r1, #24
	ldr     r0, [r4, #0x0]
	lsr     r1, r1, #24
	bl      Function_22613c8
	mov     r0, #0x6
	ldsh    r0, [r4, r0]
	ldr     r2, [pc, #0x3c] @ 0x2262bcc, (=0x2e1)
	mov     r3, #0x0
	lsl     r0, r0, #12
	asr     r1, r0, #31
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r0, r0, r2
	adc     r1, r3
	lsl     r1, r1, #20
	lsr     r0, r0, #12
	orr     r0, r1
	mov     r1, #0xa
	lsl     r1, r1, #12
	blx     FX_Div
	mov     r3, #0x1
	mov     r5, r0
	lsl     r3, r3, #12
	add     r1, r5, r3
	ldr     r0, [r4, #0x0]
	mov     r2, r1
	add     r3, r5, r3
	bl      Function_22613e8
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2262bc8

.thumb
branch_2262bc8: @ 2262bc8 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2262bcc

.word 0x2e1 @ 0x2262bcc
.thumb
Function_2262bd0: @ 2262bd0 :thumb
	ldrh    r3, [r0, #0x4]
	ldr     r2, [pc, #0x14] @ 0x2262be8, (=0xffff)
	add     r2, r3, r2
	lsl     r2, r2, #16
	lsr     r2, r2, #16
	cmp     r2, #0x1
	bls     branch_2262be4
	mov     r2, #0x1
	strh    r2, [r0, #0x4]
	str     r1, [r0, #0x8]
.thumb
branch_2262be4: @ 2262be4 :thumb
	bx      lr
@ 0x2262be6


.align 2


.word 0xffff @ 0x2262be8
.thumb
Function_2262bec: @ 2262bec :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrh    r2, [r4, #0x4]
	cmp     r2, #0x4
	bhi     branch_2262c5e
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x2262c02

Jumppoints_2262c02:
.hword branch_2262c62 - Jumppoints_2262c02 - 2
.hword branch_2262c0c - Jumppoints_2262c02 - 2
.hword branch_2262c16 - Jumppoints_2262c02 - 2
.hword branch_2262c2a - Jumppoints_2262c02 - 2
.hword branch_2262c34 - Jumppoints_2262c02 - 2
.thumb
branch_2262c0c: @ 2262c0c :thumb
	bl      Function_2262c64
	mov     r0, #0x2
	strh    r0, [r4, #0x4]
	pop     {r4,pc}
@ 0x2262c16

.thumb
branch_2262c16: @ 2262c16 :thumb
	mov     r0, r1
	ldr     r1, [r4, #0x0]
	mov     r2, #0x0
	bl      Function_22612b4
	cmp     r0, #0x0
	bne     branch_2262c62
	mov     r0, #0x3
	strh    r0, [r4, #0x4]
	pop     {r4,pc}
@ 0x2262c2a

.thumb
branch_2262c2a: @ 2262c2a :thumb
	bl      Function_2262b24
	mov     r0, #0x4
	strh    r0, [r4, #0x4]
	pop     {r4,pc}
@ 0x2262c34

.thumb
branch_2262c34: @ 2262c34 :thumb
	bl      Function_2262b2c
	cmp     r0, #0x1
	bne     branch_2262c62
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	bl      Function_226138c
	ldr     r0, [r4, #0x0]
	bl      Function_22613e0
	mov     r1, #0x1
	lsl     r1, r1, #12
	ldr     r0, [r4, #0x0]
	mov     r2, r1
	mov     r3, r1
	bl      Function_22613e8
	mov     r0, #0x0
	strh    r0, [r4, #0x4]
	pop     {r4,pc}
@ 0x2262c5e

.thumb
branch_2262c5e: @ 2262c5e :thumb
	bl      ErrorHandling
.thumb
branch_2262c62: @ 2262c62 :thumb
	pop     {r4,pc}
@ 0x2262c64

.thumb
Function_2262c64: @ 2262c64 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	ldr     r0, [r5, #0x0]
	ldr     r1, [r5, #0x8]
	bl      Function_22613c0
	ldr     r1, [r5, #0x0]
	mov     r0, r4
	mov     r2, #0x0
	mov     r3, #0x1
	bl      Function_226110c
	mov     r2, #0x1
	ldr     r1, [r5, #0x0]
	mov     r0, r4
	mov     r3, r2
	bl      Function_226110c
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	bl      Function_226138c
	pop     {r3-r5,pc}
@ 0x2262c94

.thumb
Function_2262c94: @ 2262c94 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrh    r2, [r4, #0x4]
	cmp     r2, #0x4
	bhi     branch_2262d06
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x2262caa

Jumppoints_2262caa:
.hword branch_2262d0a - Jumppoints_2262caa - 2
.hword branch_2262cb4 - Jumppoints_2262caa - 2
.hword branch_2262cbe - Jumppoints_2262caa - 2
.hword branch_2262cd2 - Jumppoints_2262caa - 2
.hword branch_2262cdc - Jumppoints_2262caa - 2
.thumb
branch_2262cb4: @ 2262cb4 :thumb
	bl      Function_2262d0c
	mov     r0, #0x2
	strh    r0, [r4, #0x4]
	pop     {r4,pc}
@ 0x2262cbe

.thumb
branch_2262cbe: @ 2262cbe :thumb
	mov     r0, r1
	ldr     r1, [r4, #0x0]
	mov     r2, #0x0
	bl      Function_22612b4
	cmp     r0, #0x0
	bne     branch_2262d0a
	mov     r0, #0x3
	strh    r0, [r4, #0x4]
	pop     {r4,pc}
@ 0x2262cd2

.thumb
branch_2262cd2: @ 2262cd2 :thumb
	bl      Function_2262b24
	mov     r0, #0x4
	strh    r0, [r4, #0x4]
	pop     {r4,pc}
@ 0x2262cdc

.thumb
branch_2262cdc: @ 2262cdc :thumb
	bl      Function_2262b2c
	cmp     r0, #0x1
	bne     branch_2262d0a
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	bl      Function_226138c
	ldr     r0, [r4, #0x0]
	bl      Function_22613e0
	mov     r1, #0x1
	lsl     r1, r1, #12
	ldr     r0, [r4, #0x0]
	mov     r2, r1
	mov     r3, r1
	bl      Function_22613e8
	mov     r0, #0x0
	strh    r0, [r4, #0x4]
	pop     {r4,pc}
@ 0x2262d06

.thumb
branch_2262d06: @ 2262d06 :thumb
	bl      ErrorHandling
.thumb
branch_2262d0a: @ 2262d0a :thumb
	pop     {r4,pc}
@ 0x2262d0c

.thumb
Function_2262d0c: @ 2262d0c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	ldr     r0, [r5, #0x0]
	ldr     r1, [r5, #0x8]
	bl      Function_22613c0
	ldr     r1, [r5, #0x0]
	mov     r0, r4
	mov     r2, #0x0
	mov     r3, #0x1
	bl      Function_226110c
	mov     r2, #0x1
	ldr     r1, [r5, #0x0]
	mov     r0, r4
	mov     r3, r2
	bl      Function_226110c
	ldr     r1, [r5, #0x0]
	mov     r0, r4
	mov     r2, #0x2
	mov     r3, #0x1
	bl      Function_226110c
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	bl      Function_226138c
	pop     {r3-r5,pc}
@ 0x2262d48

.thumb
Function_2262d48: @ 2262d48 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0x5c
	beq     branch_2262d5c
	cmp     r4, #0x5d
	beq     branch_2262d5c
	bl      ErrorHandling
.thumb
branch_2262d5c: @ 2262d5c :thumb
	mov     r0, r5
	bl      Function_22610e4
	add     r1, sp, #0x0
	strh    r0, [r1, #0x0]
	lsr     r0, r0, #16
	strh    r0, [r1, #0x2]
	ldrh    r0, [r1, #0x0]
	sub     r4, #0x5c
	lsl     r2, r4, #2
	strh    r0, [r1, #0x4]
	ldrh    r0, [r1, #0x2]
	strh    r0, [r1, #0x6]
	mov     r0, #0x4
	ldsh    r3, [r1, r0]
	ldr     r0, [pc, #0x28] @ 0x2262da4, (=0x226d90c)
	ldr     r0, [r0, r2]
	add     r0, r3, r0
	strh    r0, [r1, #0x4]
	mov     r0, #0x6
	ldsh    r0, [r1, r0]
	mov     r3, sp
	.hword  0x1f1b @ sub r3, r3, #0x4
	sub     r0, #0xa
	strh    r0, [r1, #0x6]
	ldrh    r2, [r1, #0x4]
	mov     r0, r5
	strh    r2, [r3, #0x0]
	ldrh    r1, [r1, #0x6]
	strh    r1, [r3, #0x2]
	ldr     r1, [r3, #0x0]
	bl      Function_22610bc
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2262da2


.align 2


.word 0x226d90c @ 0x2262da4
.thumb
Function_2262da8: @ 2262da8 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r1, #0xbf
	mov     r4, r0
	mov     r0, r6
	lsl     r1, r1, #2
	bl      malloc
	mov     r2, #0xbf
	mov     r1, #0x0
	lsl     r2, r2, #2
	mov     r7, r0
	blx     Call_FillMemWithValue
	str     r6, [r7, #0x0]
	mov     r5, r7
	str     r4, [r7, #0x4]
	mov     r4, #0x0
	add     r5, #0x8
.thumb
branch_2262dce: @ 2262dce :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_2262f64
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x24
	cmp     r4, #0x14
	blt     branch_2262dce
	mov     r0, #0xb6
	lsl     r0, r0, #2
	add     r0, r7, r0
	mov     r1, #0x0
	mov     r2, r6
	bl      Function_2262f64
	mov     r0, r7
	pop     {r3-r7,pc}
@ 0x2262df2


.align 2, 0


.thumb
Function_2262df4: @ 2262df4 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r5, r6
	mov     r4, #0x0
	add     r5, #0x8
.thumb
branch_2262dfe: @ 2262dfe :thumb
	mov     r0, r5
	bl      Function_2262f70
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x24
	cmp     r4, #0x14
	blt     branch_2262dfe
	mov     r0, #0xb6
	lsl     r0, r0, #2
	add     r0, r6, r0
	bl      Function_2262f70
	mov     r0, r6
	bl      free
	pop     {r4-r6,pc}
@ 0x2262e1e


.align 2, 0


.thumb
Function_2262e20: @ 2262e20 :thumb
	ldr     r3, [pc, #0x4] @ 0x2262e28, (=0x2262f15)
	mov     r1, #0x0
	bx      r3
@ 0x2262e26


.align 2


.word 0x2262f15 @ 0x2262e28
.thumb
Function_2262e2c: @ 2262e2c :thumb
	ldr     r3, [pc, #0x4] @ 0x2262e34, (=0x2262f15)
	mov     r1, #0x1
	bx      r3
@ 0x2262e32


.align 2


.word 0x2262f15 @ 0x2262e34
.thumb
Function_2262e38: @ 2262e38 :thumb
	ldr     r0, [r0, #0xc]
	bx      lr
@ 0x2262e3c

.thumb
Function_2262e3c: @ 2262e3c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x8]
	mov     r4, r1
	cmp     r0, #0x0
	beq     branch_2262e4c
	bl      ErrorHandling
.thumb
branch_2262e4c: @ 2262e4c :thumb
	ldrh    r0, [r5, #0x0]
	mov     r1, r4
	bl      malloc
	mov     r1, #0x0
	mov     r2, r4
	str     r0, [r5, #0x8]
	blx     Call_FillMemWithValue
	ldr     r0, [r5, #0x8]
	pop     {r3-r5,pc}
@ 0x2262e62


.align 2, 0


.thumb
Function_2262e64: @ 2262e64 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x0
	bne     branch_2262e72
	bl      ErrorHandling
.thumb
branch_2262e72: @ 2262e72 :thumb
	ldr     r0, [r4, #0x8]
	bl      free
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	pop     {r4,pc}
@ 0x2262e7e


.align 2, 0


.thumb
Function_2262e80: @ 2262e80 :thumb
	ldr     r0, [r0, #0x8]
	bx      lr
@ 0x2262e84

.thumb
Function_2262e84: @ 2262e84 :thumb
	ldr     r0, [r0, #0x10]
	bx      lr
@ 0x2262e88

.thumb
Function_2262e88: @ 2262e88 :thumb
	str     r1, [r0, #0x10]
	bx      lr
@ 0x2262e8c

.thumb
Function_2262e8c: @ 2262e8c :thumb
	ldr     r1, [r0, #0x10]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0x10]
	bx      lr
@ 0x2262e94

.thumb
Function_2262e94: @ 2262e94 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3
	cmp     r5, #0x0
	bne     branch_2262ea6
	bl      ErrorHandling
.thumb
branch_2262ea6: @ 2262ea6 :thumb
	cmp     r4, #0x14
	bcc     branch_2262eae
	bl      ErrorHandling
.thumb
branch_2262eae: @ 2262eae :thumb
	mov     r0, #0x24
	add     r5, #0x8
	mul     r0, r4
	add     r0, r5, r0
	mov     r1, r6
	mov     r2, r7
	bl      Function_2262fd4
	pop     {r3-r7,pc}
@ 0x2262ec0

.thumb
Function_2262ec0: @ 2262ec0 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3
	cmp     r5, #0x0
	bne     branch_2262ed2
	bl      ErrorHandling
.thumb
branch_2262ed2: @ 2262ed2 :thumb
	cmp     r4, #0x14
	bcc     branch_2262eda
	bl      ErrorHandling
.thumb
branch_2262eda: @ 2262eda :thumb
	mov     r0, #0x24
	add     r5, #0x8
	mul     r0, r4
	add     r0, r5, r0
	mov     r1, r6
	mov     r2, r7
	bl      Function_226300c
	pop     {r3-r7,pc}
@ 0x2262eec

.thumb
Function_2262eec: @ 2262eec :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	cmp     r5, #0x0
	bne     branch_2262efc
	bl      ErrorHandling
.thumb
branch_2262efc: @ 2262efc :thumb
	cmp     r4, #0x14
	bcc     branch_2262f04
	bl      ErrorHandling
.thumb
branch_2262f04: @ 2262f04 :thumb
	mov     r0, #0x24
	add     r5, #0x8
	mul     r0, r4
	add     r0, r5, r0
	mov     r1, r6
	bl      Function_2263008
	pop     {r4-r6,pc}
@ 0x2262f14

.thumb
Function_2262f14: @ 2262f14 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r0, #0xb6
	lsl     r0, r0, #2
	add     r0, r7, r0
	str     r1, [sp, #0x0]
	bl      Function_226307c
	cmp     r0, #0x1
	bne     branch_2262f3a
	mov     r0, #0xb6
	lsl     r0, r0, #2
	ldr     r2, [sp, #0x0]
	add     r0, r7, r0
	mov     r1, r7
	mov     r3, #0x0
	bl      Function_2262f94
	pop     {r3-r7,pc}
@ 0x2262f3a

.thumb
branch_2262f3a: @ 2262f3a :thumb
	mov     r6, r7
	add     r6, #0x8
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_2262f42: @ 2262f42 :thumb
	mov     r0, r6
	bl      Function_226307c
	cmp     r0, #0x1
	bne     branch_2262f58
	ldr     r2, [sp, #0x0]
	mov     r0, r5
	mov     r1, r7
	mov     r3, r4
	bl      Function_2262f94
.thumb
branch_2262f58: @ 2262f58 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r6, #0x24
	add     r5, #0x24
	cmp     r4, #0x14
	blt     branch_2262f42
	pop     {r3-r7,pc}
@ 0x2262f64

.thumb
Function_2262f64: @ 2262f64 :thumb
	strh    r2, [r0, #0x0]
	mov     r2, #0x1
	strb    r2, [r0, #0x2]
	strb    r1, [r0, #0x3]
	bx      lr
@ 0x2262f6e


.align 2, 0


.thumb
Function_2262f70: @ 2262f70 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x0
	beq     branch_2262f7e
	bl      free
.thumb
branch_2262f7e: @ 2262f7e :thumb
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x0
	beq     branch_2262f88
	bl      free
.thumb
branch_2262f88: @ 2262f88 :thumb
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x24
	blx     Call_FillMemWithValue
	pop     {r4,pc}
@ 0x2262f94

.thumb
Function_2262f94: @ 2262f94 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldrb    r0, [r5, #0x2]
	mov     r6, r1
	mov     r7, r3
	cmp     r0, #0x0
	beq     branch_2262fd2
	cmp     r2, #0x0
	beq     branch_2262fac
	cmp     r2, #0x1
	beq     branch_2262fb2
	b       branch_2262fb8
@ 0x2262fac

.thumb
branch_2262fac: @ 2262fac :thumb
	ldr     r0, [r5, #0x4]
	ldr     r4, [r0, #0x0]
	b       branch_2262fbc
@ 0x2262fb2

.thumb
branch_2262fb2: @ 2262fb2 :thumb
	ldr     r0, [r5, #0x4]
	ldr     r4, [r0, #0x4]
	b       branch_2262fbc
@ 0x2262fb8

.thumb
branch_2262fb8: @ 2262fb8 :thumb
	bl      ErrorHandling
.thumb
branch_2262fbc: @ 2262fbc :thumb
	cmp     r4, #0x0
	beq     branch_2262fd2
	ldr     r1, [r6, #0x4]
	mov     r0, r5
	mov     r2, r7
	blx     r4
	cmp     r0, #0x1
	bne     branch_2262fd2
	mov     r0, r5
	bl      Function_2263044
.thumb
branch_2262fd2: @ 2262fd2 :thumb
	pop     {r3-r7,pc}
@ 0x2262fd4

.thumb
Function_2262fd4: @ 2262fd4 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	bl      Function_226306c
	cmp     r0, #0x1
	beq     branch_2262fea
	bl      ErrorHandling
.thumb
branch_2262fea: @ 2262fea :thumb
	ldr     r0, [r5, #0x8]
	cmp     r0, #0x0
	beq     branch_2262ff4
	bl      ErrorHandling
.thumb
branch_2262ff4: @ 2262ff4 :thumb
	mov     r3, #0x0
	add     r0, r5, #0x4
	mov     r1, r4
	mov     r2, r6
	str     r3, [sp, #0x0]
	bl      Function_226308c
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x2263006


.align 2, 0


.thumb
Function_2263008: @ 2263008 :thumb
	strb    r1, [r0, #0x2]
	bx      lr
@ 0x226300c

.thumb
Function_226300c: @ 226300c :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	bl      Function_226306c
	cmp     r0, #0x1
	beq     branch_2263022
	bl      ErrorHandling
.thumb
branch_2263022: @ 2263022 :thumb
	mov     r2, r5
	add     r3, r5, #0x4
	add     r2, #0x14
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	mov     r3, #0x0
	add     r0, r5, #0x4
	mov     r1, r4
	mov     r2, r6
	str     r3, [sp, #0x0]
	bl      Function_226308c
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x2263042


.align 2, 0


.thumb
Function_2263044: @ 2263044 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x0
	beq     branch_2263052
	bl      ErrorHandling
.thumb
branch_2263052: @ 2263052 :thumb
	mov     r3, r4
	add     r3, #0x14
	add     r2, r4, #0x4
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	add     r4, #0x14
	mov     r0, r4
	bl      Function_2263098
	pop     {r4,pc}
@ 0x226306a


.align 2, 0


.thumb
Function_226306c: @ 226306c :thumb
	ldr     r0, [r0, #0x14]
	cmp     r0, #0x0
	bne     branch_2263076
	mov     r0, #0x1
	bx      lr
@ 0x2263076

.thumb
branch_2263076: @ 2263076 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x226307a


.align 2, 0


.thumb
Function_226307c: @ 226307c :thumb
	ldr     r0, [r0, #0x4]
	cmp     r0, #0x0
	beq     branch_2263086
	mov     r0, #0x1
	bx      lr
@ 0x2263086

.thumb
branch_2263086: @ 2263086 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x226308a


.align 2, 0


.thumb
Function_226308c: @ 226308c :thumb
	str     r1, [r0, #0x0]
	ldr     r1, [sp, #0x0]
	str     r3, [r0, #0xc]
	str     r1, [r0, #0x4]
	str     r2, [r0, #0x8]
	bx      lr
@ 0x2263098

.thumb
Function_2263098: @ 2263098 :thumb
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	str     r1, [r0, #0xc]
	str     r1, [r0, #0x4]
	str     r1, [r0, #0x8]
	bx      lr
@ 0x22630a4

.thumb
Function_22630a4: @ 22630a4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      Function_225deec
	mov     r4, r0
	mov     r0, r5
	bl      Function_225df10
	mov     r7, r0
	mov     r0, r5
	bl      Function_225df2c
	mov     r6, r0
	mov     r0, r5
	bl      Function_225dee8
	mov     r1, #0x1
	bl      0x222e3e4
	ldrh    r0, [r4, #0x6]
	cmp     r0, #0x4
	bcc     branch_22630d4
	bl      ErrorHandling
.thumb
branch_22630d4: @ 22630d4 :thumb
	ldrh    r2, [r4, #0x6]
	ldr     r3, [pc, #0x10] @ 0x22630e8, (=0x226da78)
	mov     r0, r7
	lsl     r2, r2, #3
	add     r2, r3, r2
	mov     r1, r6
	mov     r3, #0x0
	bl      Function_2262e94
	pop     {r3-r7,pc}
@ 0x22630e8

.word 0x226da78 @ 0x22630e8
.thumb
Function_22630ec: @ 22630ec :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	bl      Function_225df2c
	mov     r5, r0
	mov     r0, r4
	bl      Function_225df10
	ldr     r7, [pc, #0x1c] @ 0x226311c, (=0x226da10)
	mov     r6, r0
	mov     r4, #0x0
.thumb
branch_2263102: @ 2263102 :thumb
	cmp     r5, r4
	beq     branch_2263112
	mov     r0, r6
	mov     r1, r4
	mov     r2, r7
	mov     r3, #0x0
	bl      Function_2262e94
.thumb
branch_2263112: @ 2263112 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x14
	blt     branch_2263102
	pop     {r3-r7,pc}
@ 0x226311a


.align 2


.word 0x226da10 @ 0x226311c
.thumb
Function_2263120: @ 2263120 :thumb
	cmp     r0, #0x3
	bhi     branch_2263146
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2263130

Jumppoints_2263130:
.hword branch_2263138 - Jumppoints_2263130 - 2
.hword branch_226313c - Jumppoints_2263130 - 2
.hword branch_2263140 - Jumppoints_2263130 - 2
.hword branch_2263144 - Jumppoints_2263130 - 2
.thumb
branch_2263138: @ 2263138 :thumb
	mov     r1, #0x40
	b       branch_2263146
@ 0x226313c

.thumb
branch_226313c: @ 226313c :thumb
	mov     r1, #0x80
	b       branch_2263146
@ 0x2263140

.thumb
branch_2263140: @ 2263140 :thumb
	mov     r1, #0x20
	b       branch_2263146
@ 0x2263144

.thumb
branch_2263144: @ 2263144 :thumb
	mov     r1, #0x10
.thumb
branch_2263146: @ 2263146 :thumb
	ldr     r0, [pc, #0x10] @ 0x2263158, (=0x21bf67c)
	ldr     r0, [r0, #0x44]
	tst     r0, r1
	beq     branch_2263152
	mov     r0, #0x1
	bx      lr
@ 0x2263152

.thumb
branch_2263152: @ 2263152 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2263156


.align 2


.word 0x21bf67c @ 0x2263158
.thumb
Function_226315c: @ 226315c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	str     r1, [sp, #0x0]
	mov     r7, r0
	str     r2, [sp, #0x4]
	mov     r4, r3
	ldr     r5, [sp, #0x28]
	bl      Function_2262e80
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x0]
	bl      Function_225df10
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x8]
	mov     r2, #0x0
	cmp     r0, #0x3
	beq     branch_22631f0
	mov     r6, r4
	mov     r1, r2
.thumb
branch_2263184: @ 2263184 :thumb
	mov     r3, r1
.thumb
branch_2263186: @ 2263186 :thumb
	ldrb    r0, [r6, r3]
	cmp     r0, #0xff
	beq     branch_22631e6
	cmp     r5, r0
	bne     branch_22631e0
	mov     r0, #0x18
	mov     r5, r2
	mul     r5, r0
	add     r6, r4, r5
	ldr     r0, [r6, #0x8]
	cmp     r0, #0x0
	beq     branch_22631a6
	cmp     r0, #0x1
	beq     branch_22631be
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x22631a6

.thumb
branch_22631a6: @ 22631a6 :thumb
	mov     r0, r7
	bl      Function_2262e64
	mov     r2, r6
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x4]
	add     r2, #0xc
	mov     r3, #0x0
	bl      Function_2262e94
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x22631be

.thumb
branch_22631be: @ 22631be :thumb
	ldr     r7, [r6, #0x14]
	cmp     r7, #0x0
	beq     branch_22631ce
	ldrb    r3, [r3, r6]
	ldr     r0, [sp, #0xc]
	ldr     r1, [sp, #0x0]
	ldr     r2, [sp, #0x4]
	blx     r7
.thumb
branch_22631ce: @ 22631ce :thumb
	add     r2, r4, r5
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x4]
	add     r2, #0xc
	mov     r3, #0x0
	bl      Function_2262ec0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x22631e0

.thumb
branch_22631e0: @ 22631e0 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	cmp     r3, #0x8
	blt     branch_2263186
.thumb
branch_22631e6: @ 22631e6 :thumb
	add     r6, #0x18
	ldr     r0, [r6, #0x8]
	.hword  0x1c52 @ add r2, r2, #0x1
	cmp     r0, #0x3
	bne     branch_2263184
.thumb
branch_22631f0: @ 22631f0 :thumb
	bl      ErrorHandling
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x22631f8

.thumb
Function_22631f8: @ 22631f8 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r5, r0
	bl      Function_225def0
	mov     r1, r4
	bl      Function_225cb28
	mov     r4, r0
	mov     r0, r5
	bl      Function_225df08
	mov     r5, r0
	mov     r0, r4
	add     r1, sp, #0x0
	bl      Function_225d054
	ldr     r1, [sp, #0x0]
	ldr     r2, [sp, #0x4]
	ldr     r3, [sp, #0x8]
	mov     r0, r5
	bl      Function_2260b20
	mov     r0, r4
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x226322e


.align 2, 0


.thumb
Function_2263230: @ 2263230 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r6, r1
	mov     r7, r2
	str     r3, [sp, #0x0]
	bl      Function_225def0
	mov     r4, r0
	mov     r0, r5
	bl      Function_225df08
	str     r0, [sp, #0x4]
	ldr     r3, [sp, #0x0]
	mov     r0, r4
	mov     r1, r6
	mov     r2, r7
	bl      Function_225cb5c
	mov     r5, r0
	ldr     r3, [sp, #0x20]
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x0
	bl      Function_225cd7c
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	bl      Function_2260b38
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2263270

.thumb
Function_2263270: @ 2263270 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	strb    r0, [r4, #0x4]
	mov     r0, #0x1
	strb    r0, [r4, #0x5]
	bl      Function_201d35c
	mov     r1, #0x3
	and     r0, r1
	strb    r0, [r4, #0x6]
	mov     r0, #0x1
	strb    r0, [r4, #0x7]
	pop     {r4,pc}
@ 0x226328e


.align 2, 0


.thumb
Function_2263290: @ 2263290 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x5]
	cmp     r0, #0x0
	beq     branch_22632a4
	cmp     r0, #0x1
	beq     branch_22632aa
	cmp     r0, #0x2
	beq     branch_22632bc
	b       branch_226331e
@ 0x22632a4

.thumb
branch_22632a4: @ 22632a4 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	b       branch_226331e
@ 0x22632aa

.thumb
branch_22632aa: @ 22632aa :thumb
	ldrb    r0, [r4, #0x6]
	.hword  0x1e40 @ sub r0, r0, #0x1
	cmp     r0, #0x0
	ble     branch_22632b6
	strb    r0, [r4, #0x6]
	b       branch_226331e
@ 0x22632b6

.thumb
branch_22632b6: @ 22632b6 :thumb
	mov     r0, #0x2
	strb    r0, [r4, #0x5]
	b       branch_226331e
@ 0x22632bc

.thumb
branch_22632bc: @ 22632bc :thumb
	mov     r0, #0x4
	ldsb    r1, [r4, r0]
	mov     r3, #0x0
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, #0x4]
	ldsb    r1, [r4, r0]
	ldr     r0, [pc, #0x58] @ 0x2263324, (=0x7fff)
	mov     r2, r1
	mul     r2, r0
	asr     r0, r2, #1
	lsr     r0, r0, #30
	add     r0, r2, r0
	lsl     r0, r0, #14
	lsr     r0, r0, #16
	asr     r0, r0, #4
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x48] @ 0x2263328, (=Unknown_20f983c)
	mov     r2, #0x6
	ldsh    r0, [r0, r1]
	lsl     r2, r2, #12
	asr     r1, r0, #31
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	str     r1, [r4, #0x0]
	mov     r0, #0x4
	ldsb    r0, [r4, r0]
	cmp     r0, #0x4
	blt     branch_226331e
	ldrb    r0, [r4, #0x7]
	cmp     r0, #0x1
	bne     branch_226331c
	strb    r3, [r4, #0x4]
	mov     r0, #0x1
	strb    r0, [r4, #0x5]
	bl      Function_201d35c
	mov     r1, #0x3
	and     r0, r1
	strb    r0, [r4, #0x6]
	b       branch_226331e
@ 0x226331c

.thumb
branch_226331c: @ 226331c :thumb
	strb    r3, [r4, #0x5]
.thumb
branch_226331e: @ 226331e :thumb
	ldr     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x2263322


.align 2


.word 0x7fff @ 0x2263324
.word Unknown_20f983c @ 0x2263328
.thumb
Function_226332c: @ 226332c :thumb
	mov     r1, #0x0
	strb    r1, [r0, #0x7]
	bx      lr
@ 0x2263332


.align 2, 0


.thumb
Function_2263334: @ 2263334 :thumb
	ldrb    r0, [r0, #0x5]
	cmp     r0, #0x0
	beq     branch_226333e
	mov     r0, #0x1
	bx      lr
@ 0x226333e

.thumb
branch_226333e: @ 226333e :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2263342


.align 2, 0


.thumb
Function_2263344: @ 2263344 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r1
	mov     r6, r0
	mov     r4, r2
	mov     r0, r5
	bl      Function_225def0
	mov     r1, r4
	mov     r7, r0
	bl      Function_225cc70
	str     r0, [sp, #0x0]
	mov     r0, r5
	bl      Function_225dee8
	str     r0, [sp, #0x4]
	mov     r0, r6
	bl      Function_2262e84
	cmp     r0, #0x0
	beq     branch_226337a
	cmp     r0, #0x1
	beq     branch_226339e
	cmp     r0, #0x2
	beq     branch_22633b4
	b       branch_226340c
@ 0x226337a

.thumb
branch_226337a: @ 226337a :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_225e46c
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_2262e88
	ldr     r0, [sp, #0x4]
	bl      0x222e338
	cmp     r4, r0
	bne     branch_226340c
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_225e43c
	b       branch_226340c
@ 0x226339e

.thumb
branch_226339e: @ 226339e :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_225e4ac
	cmp     r0, #0x1
	bne     branch_226340c
	mov     r0, r6
	mov     r1, #0x2
	bl      Function_2262e88
	b       branch_226340c
@ 0x22633b4

.thumb
branch_22633b4: @ 22633b4 :thumb
	ldr     r0, [sp, #0x4]
	bl      0x222e338
	cmp     r4, r0
	bne     branch_22633ca
	ldr     r1, [sp, #0x0]
	mov     r0, r7
	mov     r2, #0x1
	bl      Function_225cdec
	b       branch_2263400
@ 0x22633ca

.thumb
branch_22633ca: @ 22633ca :thumb
	mov     r0, r5
	bl      Function_225e3f0
	cmp     r0, #0x1
	bne     branch_22633ea
	mov     r0, r5
	bl      Function_225e3e0
	cmp     r4, r0
	beq     branch_22633f4
	ldr     r1, [sp, #0x0]
	mov     r0, r7
	mov     r2, #0x2
	bl      Function_225cdec
	b       branch_22633f4
@ 0x22633ea

.thumb
branch_22633ea: @ 22633ea :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, r7
	mov     r2, #0x2
	bl      Function_225cdec
.thumb
branch_22633f4: @ 22633f4 :thumb
	lsl     r1, r4, #24
	mov     r0, r5
	lsr     r1, r1, #24
	mov     r2, #0x0
	bl      Function_225df4c
.thumb
branch_2263400: @ 2263400 :thumb
	mov     r0, r5
	bl      Function_225e44c
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x226340c

.thumb
branch_226340c: @ 226340c :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2263412


.align 2, 0


.thumb
Function_2263414: @ 2263414 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	str     r2, [sp, #0x0]
	bl      Function_225dee8
	str     r0, [sp, #0x4]
	mov     r0, r5
	bl      Function_225def0
	str     r0, [sp, #0x8]
	bl      Function_225ccac
	mov     r7, r0
	mov     r0, r6
	bl      Function_2262e80
	mov     r4, r0
	mov     r0, r6
	bl      Function_2262e84
	cmp     r0, #0x16
	bhi     branch_22634fe
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2263452

Jumppoints_2263452:
.hword branch_2263480 - Jumppoints_2263452 - 2
.hword branch_22634c0 - Jumppoints_2263452 - 2
.hword branch_22634f6 - Jumppoints_2263452 - 2
.hword branch_2263510 - Jumppoints_2263452 - 2
.hword branch_226352a - Jumppoints_2263452 - 2
.hword branch_2263544 - Jumppoints_2263452 - 2
.hword branch_226355e - Jumppoints_2263452 - 2
.hword branch_2263578 - Jumppoints_2263452 - 2
.hword branch_226358e - Jumppoints_2263452 - 2
.hword branch_22635ae - Jumppoints_2263452 - 2
.hword branch_22635e0 - Jumppoints_2263452 - 2
.hword branch_2263654 - Jumppoints_2263452 - 2
.hword branch_226369a - Jumppoints_2263452 - 2
.hword branch_22636cc - Jumppoints_2263452 - 2
.hword branch_22638f6 - Jumppoints_2263452 - 2
.hword branch_2263740 - Jumppoints_2263452 - 2
.hword branch_2263786 - Jumppoints_2263452 - 2
.hword branch_22637de - Jumppoints_2263452 - 2
.hword branch_22637fe - Jumppoints_2263452 - 2
.hword branch_226384c - Jumppoints_2263452 - 2
.hword branch_2263876 - Jumppoints_2263452 - 2
.hword branch_22638aa - Jumppoints_2263452 - 2
.hword branch_22638be - Jumppoints_2263452 - 2
.thumb
branch_2263480: @ 2263480 :thumb
	mov     r0, r6
	mov     r1, #0x2c
	bl      Function_2262e3c
	mov     r1, r5
	mov     r4, r0
	bl      Function_22653dc
	ldr     r0, [sp, #0x4]
	bl      0x222e2cc
	ldr     r0, [sp, #0x4]
	bl      0x222f0dc
	strh    r0, [r4, #0x2]
	ldrh    r1, [r4, #0x2]
	ldr     r0, [sp, #0x4]
	bl      0x222e528
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	bl      Function_22631f8
	mov     r1, r0
	ldr     r0, [sp, #0x8]
	mov     r2, #0x4
	bl      Function_225cdec
	mov     r0, r6
	bl      Function_2262e8c
	b       branch_22638f6
@ 0x22634c0

.thumb
branch_22634c0: @ 22634c0 :thumb
	mov     r0, r5
	bl      Function_225df30
	cmp     r0, #0x0
	bne     branch_22634fe
	mov     r0, r7
	bl      Function_225ce38
	cmp     r0, #0x1
	bne     branch_22634fe
	ldr     r0, [sp, #0x8]
	mov     r1, r7
	mov     r2, #0x0
	bl      Function_225cdec
	mov     r0, r5
	bl      Function_225df08
	mov     r1, r7
	bl      Function_2260b38
	mov     r0, #0x10
	str     r0, [r4, #0x4]
	mov     r0, r6
	bl      Function_2262e8c
	b       branch_22638f6
@ 0x22634f6

.thumb
branch_22634f6: @ 22634f6 :thumb
	ldr     r0, [r4, #0x4]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x4]
	beq     branch_2263500
.thumb
branch_22634fe: @ 22634fe :thumb
	b       branch_22638f6
@ 0x2263500

.thumb
branch_2263500: @ 2263500 :thumb
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_225df18
	mov     r0, r6
	bl      Function_2262e8c
	b       branch_22638f6
@ 0x2263510

.thumb
branch_2263510: @ 2263510 :thumb
	ldr     r0, [sp, #0x8]
	mov     r1, r7
	mov     r2, #0x2
	mov     r3, #0x0
	bl      Function_225cd7c
	mov     r0, #0x4
	strh    r0, [r4, #0x0]
	mov     r0, r6
	mov     r1, #0x7
	bl      Function_2262e88
	b       branch_22638f6
@ 0x226352a

.thumb
branch_226352a: @ 226352a :thumb
	ldr     r0, [sp, #0x8]
	mov     r1, r7
	mov     r2, #0x2
	mov     r3, #0x0
	bl      Function_225cd7c
	mov     r0, #0x5
	strh    r0, [r4, #0x0]
	mov     r0, r6
	mov     r1, #0x7
	bl      Function_2262e88
	b       branch_22638f6
@ 0x2263544

.thumb
branch_2263544: @ 2263544 :thumb
	ldr     r0, [sp, #0x8]
	mov     r1, r7
	mov     r2, #0x1
	mov     r3, #0x3
	bl      Function_225cd7c
	mov     r0, #0x6
	strh    r0, [r4, #0x0]
	mov     r0, r6
	mov     r1, #0x7
	bl      Function_2262e88
	b       branch_22638f6
@ 0x226355e

.thumb
branch_226355e: @ 226355e :thumb
	ldr     r0, [sp, #0x8]
	mov     r1, r7
	mov     r2, #0x2
	mov     r3, #0x3
	bl      Function_225cd7c
	mov     r0, #0x8
	strh    r0, [r4, #0x0]
	mov     r0, r6
	mov     r1, #0x7
	bl      Function_2262e88
	b       branch_22638f6
@ 0x2263578

.thumb
branch_2263578: @ 2263578 :thumb
	mov     r0, r7
	mov     r1, #0x5
	bl      Function_225cd60
	cmp     r0, #0x0
	bne     branch_2263662
	ldrh    r1, [r4, #0x0]
	mov     r0, r6
	bl      Function_2262e88
	b       branch_22638f6
@ 0x226358e

.thumb
branch_226358e: @ 226358e :thumb
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df8c
	mov     r0, #0x10
	strh    r0, [r4, #0x0]
	mov     r0, r6
	mov     r1, #0x15
	bl      Function_2262e88
	b       branch_22638f6
@ 0x22635ae

.thumb
branch_22635ae: @ 22635ae :thumb
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0x5
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df9c
	add     r4, #0x8
	mov     r2, #0x0
	mov     r0, r5
	mov     r1, r4
	mov     r3, r2
	bl      Function_225e074
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_225e0f4
	mov     r0, r6
	mov     r1, #0xa
	bl      Function_2262e88
	b       branch_22638f6
@ 0x22635e0

.thumb
branch_22635e0: @ 22635e0 :thumb
	mov     r0, r5
	mov     r7, #0x0
	bl      Function_225e0d4
	mov     r2, r0
	beq     branch_2263600
	.hword  0x1eb8 @ sub r0, r7, #0x2
	cmp     r2, r0
	beq     branch_22635fa
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r2, r0
	beq     branch_2263614
	b       branch_2263608
@ 0x22635fa

.thumb
branch_22635fa: @ 22635fa :thumb
	ldr     r0, [pc, #0x300] @ 0x22638fc, (=0x5dc)
	bl      Function_2005748
.thumb
branch_2263600: @ 2263600 :thumb
	mov     r0, #0x0
	strh    r0, [r4, #0x28]
	mov     r7, #0x1
	b       branch_2263614
@ 0x2263608

.thumb
branch_2263608: @ 2263608 :thumb
	mov     r0, r5
	mov     r1, #0x0
	strh    r2, [r4, #0x28]
	mov     r7, #0x1
	bl      Function_225e30c
.thumb
branch_2263614: @ 2263614 :thumb
	cmp     r7, #0x1
	bne     branch_2263662
	mov     r1, #0x0
	mov     r0, r5
	mov     r2, r1
	bl      Function_225e0e4
	ldrh    r0, [r4, #0x28]
	cmp     r0, #0x0
	beq     branch_226364a
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0x8
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df9c
	mov     r0, r5
	bl      Function_225e164
	mov     r0, r6
	mov     r1, #0xb
	bl      Function_2262e88
	b       branch_22638f6
@ 0x226364a

.thumb
branch_226364a: @ 226364a :thumb
	mov     r0, r6
	mov     r1, #0x11
	bl      Function_2262e88
	b       branch_22638f6
@ 0x2263654

.thumb
branch_2263654: @ 2263654 :thumb
	mov     r0, r5
	bl      Function_225e1c4
	cmp     r0, #0x0
	beq     branch_2263664
	cmp     r0, #0x1
	beq     branch_226368a
.thumb
branch_2263662: @ 2263662 :thumb
	b       branch_22638f6
@ 0x2263664

.thumb
branch_2263664: @ 2263664 :thumb
	mov     r0, r5
	bl      Function_225e1f8
	mov     r0, r6
	mov     r1, #0xc
	bl      Function_2262e88
	ldrh    r1, [r4, #0x28]
	ldrh    r2, [r4, #0x2a]
	ldr     r0, [sp, #0x4]
	bl      0x222e56c
	mov     r0, r5
	bl      Function_225e390
	ldr     r0, [pc, #0x27c] @ 0x2263900, (=0x5e5)
	bl      Function_2005748
	b       branch_22638f6
@ 0x226368a

.thumb
branch_226368a: @ 226368a :thumb
	mov     r0, r5
	bl      Function_225e1f8
	mov     r0, r6
	mov     r1, #0x9
	bl      Function_2262e88
	b       branch_22638f6
@ 0x226369a

.thumb
branch_226369a: @ 226369a :thumb
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0xa
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df9c
	add     r4, #0x8
	mov     r2, #0x0
	mov     r0, r5
	mov     r1, r4
	mov     r3, r2
	bl      Function_225e074
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_225e0f4
	mov     r0, r6
	mov     r1, #0xd
	bl      Function_2262e88
	b       branch_22638f6
@ 0x22636cc

.thumb
branch_22636cc: @ 22636cc :thumb
	mov     r0, r5
	mov     r7, #0x0
	bl      Function_225e0d4
	mov     r2, r0
	beq     branch_22636ec
	.hword  0x1eb8 @ sub r0, r7, #0x2
	cmp     r2, r0
	beq     branch_22636e6
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r2, r0
	beq     branch_2263700
	b       branch_22636f4
@ 0x22636e6

.thumb
branch_22636e6: @ 22636e6 :thumb
	ldr     r0, [pc, #0x214] @ 0x22638fc, (=0x5dc)
	bl      Function_2005748
.thumb
branch_22636ec: @ 22636ec :thumb
	mov     r0, #0x0
	strh    r0, [r4, #0x2a]
	mov     r7, #0x1
	b       branch_2263700
@ 0x22636f4

.thumb
branch_22636f4: @ 22636f4 :thumb
	mov     r0, r5
	mov     r1, #0x0
	strh    r2, [r4, #0x2a]
	mov     r7, #0x1
	bl      Function_225e30c
.thumb
branch_2263700: @ 2263700 :thumb
	cmp     r7, #0x1
	bne     branch_226374e
	mov     r1, #0x0
	mov     r0, r5
	mov     r2, r1
	bl      Function_225e0e4
	ldrh    r0, [r4, #0x2a]
	cmp     r0, #0x0
	beq     branch_2263736
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0x8
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df9c
	mov     r0, r5
	bl      Function_225e164
	mov     r0, r6
	mov     r1, #0xf
	bl      Function_2262e88
	b       branch_22638f6
@ 0x2263736

.thumb
branch_2263736: @ 2263736 :thumb
	mov     r0, r6
	mov     r1, #0x13
	bl      Function_2262e88
	b       branch_22638f6
@ 0x2263740

.thumb
branch_2263740: @ 2263740 :thumb
	mov     r0, r5
	bl      Function_225e1c4
	cmp     r0, #0x0
	beq     branch_2263750
	cmp     r0, #0x1
	beq     branch_2263776
.thumb
branch_226374e: @ 226374e :thumb
	b       branch_22638f6
@ 0x2263750

.thumb
branch_2263750: @ 2263750 :thumb
	mov     r0, r5
	bl      Function_225e1f8
	mov     r0, r6
	mov     r1, #0x14
	bl      Function_2262e88
	ldrh    r1, [r4, #0x28]
	ldrh    r2, [r4, #0x2a]
	ldr     r0, [sp, #0x4]
	bl      0x222e56c
	mov     r0, r5
	bl      Function_225e390
	ldr     r0, [pc, #0x190] @ 0x2263900, (=0x5e5)
	bl      Function_2005748
	b       branch_22638f6
@ 0x2263776

.thumb
branch_2263776: @ 2263776 :thumb
	mov     r0, r5
	bl      Function_225e1f8
	mov     r0, r6
	mov     r1, #0xc
	bl      Function_2262e88
	b       branch_22638f6
@ 0x2263786

.thumb
branch_2263786: @ 2263786 :thumb
	ldr     r0, [pc, #0x17c] @ 0x2263904, (=0x5a8)
	bl      Function_2005748
	mov     r0, r5
	bl      Function_225e430
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_225e234
	ldrh    r1, [r4, #0x2]
	mov     r0, r5
	mov     r2, #0x1
	bl      Function_225e29c
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x0]
	bl      0x222e924
	cmp     r0, #0x0
	bne     branch_22637be
	mov     r1, #0x1
	mov     r0, r5
	mov     r2, r1
	bl      Function_225e20c
	b       branch_22637c8
@ 0x22637be

.thumb
branch_22637be: @ 22637be :thumb
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0x7c
	bl      Function_225e20c
.thumb
branch_22637c8: @ 22637c8 :thumb
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df8c
	mov     r0, #0x12
	strh    r0, [r4, #0x0]
	mov     r0, r6
	mov     r1, #0x15
	bl      Function_2262e88
	b       branch_22638f6
@ 0x22637de

.thumb
branch_22637de: @ 22637de :thumb
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0x2
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df8c
	mov     r0, #0x16
	strh    r0, [r4, #0x0]
	mov     r0, r6
	mov     r1, #0x15
	bl      Function_2262e88
	b       branch_22638f6
@ 0x22637fe

.thumb
branch_22637fe: @ 22637fe :thumb
	ldr     r0, [pc, #0x104] @ 0x2263904, (=0x5a8)
	bl      Function_20057d4
	cmp     r0, #0x0
	bne     branch_22638f6
	ldr     r0, [pc, #0xfc] @ 0x2263908, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_22638f6
	ldr     r0, [pc, #0xe8] @ 0x22638fc, (=0x5dc)
	bl      Function_2005748
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0x4
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df8c
	mov     r0, #0x9
	strh    r0, [r4, #0x0]
	mov     r0, r6
	mov     r1, #0x15
	bl      Function_2262e88
	ldrh    r1, [r4, #0x28]
	ldrh    r2, [r4, #0x2a]
	ldr     r0, [sp, #0x4]
	bl      0x222e56c
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_225e328
	b       branch_22638f6
@ 0x226384c

.thumb
branch_226384c: @ 226384c :thumb
	ldrh    r2, [r4, #0x28]
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_225e30c
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0xc
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df8c
	mov     r0, #0x11
	strh    r0, [r4, #0x0]
	mov     r0, r6
	mov     r1, #0x15
	bl      Function_2262e88
	b       branch_22638f6
@ 0x2263876

.thumb
branch_2263876: @ 2263876 :thumb
	ldrh    r2, [r4, #0x28]
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_225e30c
	ldrh    r2, [r4, #0x2a]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_225e30c
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0xb
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df8c
	mov     r0, #0x11
	strh    r0, [r4, #0x0]
	mov     r0, r6
	mov     r1, #0x15
	bl      Function_2262e88
	b       branch_22638f6
@ 0x22638aa

.thumb
branch_22638aa: @ 22638aa :thumb
	mov     r0, r5
	bl      Function_225dfac
	cmp     r0, #0x1
	bne     branch_22638f6
	ldrh    r1, [r4, #0x0]
	mov     r0, r6
	bl      Function_2262e88
	b       branch_22638f6
@ 0x22638be

.thumb
branch_22638be: @ 22638be :thumb
	ldr     r0, [sp, #0x8]
	mov     r1, r7
	mov     r2, #0x1
	bl      Function_225cdec
	mov     r0, r5
	bl      Function_225dfec
	mov     r0, r4
	mov     r1, r5
	bl      Function_2265450
	mov     r0, r6
	bl      Function_2262e64
	mov     r0, r5
	bl      Function_225df10
	mov     r4, r0
	mov     r0, r5
	bl      Function_225df2c
	mov     r1, r0
	ldr     r2, [pc, #0x1c] @ 0x226390c, (=0x226d9d0)
	mov     r0, r4
	mov     r3, #0x0
	bl      Function_2262e94
.thumb
branch_22638f6: @ 22638f6 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x22638fc

.word 0x5dc @ 0x22638fc
.word 0x5e5 @ 0x2263900
.word 0x5a8 @ 0x2263904
.word 0x21bf67c @ 0x2263908
.word 0x226d9d0 @ 0x226390c
.thumb
Function_2263910: @ 2263910 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	str     r2, [sp, #0x4]
	bl      Function_225dee8
	str     r0, [sp, #0x8]
	mov     r0, r4
	bl      Function_225deec
	mov     r6, r0
	mov     r0, r4
	bl      Function_225def0
	str     r0, [sp, #0xc]
	bl      Function_225ccac
	mov     r7, r0
	mov     r0, r5
	bl      Function_2262e84
	cmp     r0, #0x5
	bls     branch_2263944
	b       branch_2263a4e
@ 0x2263944

.thumb
branch_2263944: @ 2263944 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2263950

Jumppoints_2263950:
.hword branch_226395c - Jumppoints_2263950 - 2
.hword branch_2263988 - Jumppoints_2263950 - 2
.hword branch_22639be - Jumppoints_2263950 - 2
.hword branch_22639ee - Jumppoints_2263950 - 2
.hword branch_2263a12 - Jumppoints_2263950 - 2
.hword branch_2263a2a - Jumppoints_2263950 - 2
.thumb
branch_226395c: @ 226395c :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldrh    r2, [r6, #0x0]
	ldrh    r3, [r6, #0x2]
	ldr     r1, [sp, #0x4]
	mov     r0, r4
	bl      Function_2263230
	bl      0x2231760
	cmp     r0, #0x0
	bne     branch_2263978
	bl      0x2232aa4
.thumb
branch_2263978: @ 2263978 :thumb
	ldr     r0, [sp, #0x8]
	mov     r1, #0x0
	bl      0x222e31c
	mov     r0, r5
	bl      Function_2262e8c
	b       branch_2263a4e
@ 0x2263988

.thumb
branch_2263988: @ 2263988 :thumb
	bl      0x2231760
	cmp     r0, #0x0
	bne     branch_2263998
	bl      0x2232ad4
	cmp     r0, #0x0
	beq     branch_2263a4e
.thumb
branch_2263998: @ 2263998 :thumb
	mov     r0, r4
	bl      Function_225deec
	mov     r6, r0
	mov     r0, r4
	bl      Function_225df30
	cmp     r0, #0x0
	bne     branch_2263a4e
	mov     r0, r5
	bl      Function_2262e8c
	ldrh    r3, [r6, #0x4]
	ldr     r0, [sp, #0xc]
	mov     r1, r7
	mov     r2, #0x2
	bl      Function_225cdac
	b       branch_2263a4e
@ 0x22639be

.thumb
branch_22639be: @ 22639be :thumb
	mov     r0, r7
	mov     r1, #0x5
	bl      Function_225cd60
	cmp     r0, #0x0
	bne     branch_2263a4e
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_225df18
	ldr     r0, [sp, #0x8]
	bl      0x222e2b4
	cmp     r0, #0x1
	bne     branch_22639e4
	mov     r0, r5
	bl      Function_2262e8c
	b       branch_2263a4e
@ 0x22639e4

.thumb
branch_22639e4: @ 22639e4 :thumb
	mov     r0, r5
	mov     r1, #0x5
	bl      Function_2262e88
	b       branch_2263a4e
@ 0x22639ee

.thumb
branch_22639ee: @ 22639ee :thumb
	ldrh    r1, [r6, #0x8]
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_225e27c
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x15
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r4
	bl      Function_225df8c
	mov     r0, r5
	bl      Function_2262e8c
	b       branch_2263a4e
@ 0x2263a12

.thumb
branch_2263a12: @ 2263a12 :thumb
	mov     r0, r4
	bl      Function_225dfac
	cmp     r0, #0x1
	bne     branch_2263a4e
	mov     r0, r4
	bl      Function_225dfec
	mov     r0, r5
	bl      Function_2262e8c
	b       branch_2263a4e
@ 0x2263a2a

.thumb
branch_2263a2a: @ 2263a2a :thumb
	ldr     r0, [sp, #0xc]
	mov     r1, r7
	mov     r2, #0x1
	bl      Function_225cdec
	mov     r0, r4
	bl      Function_225df10
	mov     r5, r0
	mov     r0, r4
	bl      Function_225df2c
	mov     r1, r0
	ldr     r2, [pc, #0xc] @ 0x2263a54, (=0x226d9d0)
	mov     r0, r5
	mov     r3, #0x0
	bl      Function_2262e94
.thumb
branch_2263a4e: @ 2263a4e :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2263a54

.word 0x226d9d0 @ 0x2263a54
.thumb
Function_2263a58: @ 2263a58 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	str     r2, [sp, #0x4]
	bl      Function_225df10
	str     r0, [sp, #0x8]
	mov     r0, r4
	bl      Function_225def0
	str     r0, [sp, #0xc]
	bl      Function_225ccac
	mov     r7, r0
	mov     r0, r4
	bl      Function_225dee8
	str     r0, [sp, #0x10]
	mov     r0, r4
	bl      Function_225deec
	mov     r6, r0
	mov     r0, r5
	bl      Function_2262e84
	cmp     r0, #0x5
	bls     branch_2263a94
	b       branch_2263b96
@ 0x2263a94

.thumb
branch_2263a94: @ 2263a94 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2263aa0

Jumppoints_2263aa0:
.hword branch_2263aac - Jumppoints_2263aa0 - 2
.hword branch_2263ade - Jumppoints_2263aa0 - 2
.hword branch_2263b04 - Jumppoints_2263aa0 - 2
.hword branch_2263b36 - Jumppoints_2263aa0 - 2
.hword branch_2263b5a - Jumppoints_2263aa0 - 2
.hword branch_2263b72 - Jumppoints_2263aa0 - 2
.thumb
branch_2263aac: @ 2263aac :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldrh    r2, [r6, #0x0]
	ldrh    r3, [r6, #0x2]
	ldr     r1, [sp, #0x4]
	mov     r0, r4
	bl      Function_2263230
	mov     r0, r5
	bl      Function_2262e8c
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x4]
	ldr     r2, [pc, #0xd4] @ 0x2263b9c, (=0x226da00)
	mov     r3, #0x0
	bl      Function_2262ec0
	ldr     r0, [sp, #0x10]
	mov     r1, #0x0
	bl      0x222e2c4
	ldr     r0, [sp, #0x10]
	bl      0x222e2cc
	b       branch_2263b96
@ 0x2263ade

.thumb
branch_2263ade: @ 2263ade :thumb
	mov     r0, r4
	bl      Function_225deec
	mov     r6, r0
	mov     r0, r4
	bl      Function_225df30
	cmp     r0, #0x0
	bne     branch_2263b96
	mov     r0, r5
	bl      Function_2262e8c
	ldrh    r3, [r6, #0x4]
	ldr     r0, [sp, #0xc]
	mov     r1, r7
	mov     r2, #0x2
	bl      Function_225cdac
	b       branch_2263b96
@ 0x2263b04

.thumb
branch_2263b04: @ 2263b04 :thumb
	mov     r0, r7
	mov     r1, #0x5
	bl      Function_225cd60
	cmp     r0, #0x0
	bne     branch_2263b96
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_225df18
	ldr     r0, [sp, #0x10]
	bl      0x222e220
	cmp     r0, #0x1
	bne     branch_2263b2c
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_2262e88
	b       branch_2263b96
@ 0x2263b2c

.thumb
branch_2263b2c: @ 2263b2c :thumb
	mov     r0, r5
	mov     r1, #0x5
	bl      Function_2262e88
	b       branch_2263b96
@ 0x2263b36

.thumb
branch_2263b36: @ 2263b36 :thumb
	ldrh    r1, [r6, #0x8]
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_225e27c
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x8
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r4
	bl      Function_225df8c
	mov     r0, r5
	bl      Function_2262e8c
	b       branch_2263b96
@ 0x2263b5a

.thumb
branch_2263b5a: @ 2263b5a :thumb
	mov     r0, r4
	bl      Function_225dfac
	cmp     r0, #0x1
	bne     branch_2263b96
	mov     r0, r4
	bl      Function_225dfec
	mov     r0, r5
	bl      Function_2262e8c
	b       branch_2263b96
@ 0x2263b72

.thumb
branch_2263b72: @ 2263b72 :thumb
	ldr     r0, [sp, #0xc]
	mov     r1, r7
	mov     r2, #0x1
	bl      Function_225cdec
	mov     r0, r4
	bl      Function_225df10
	mov     r5, r0
	mov     r0, r4
	bl      Function_225df2c
	mov     r1, r0
	ldr     r2, [pc, #0x10] @ 0x2263ba0, (=0x226d9d0)
	mov     r0, r5
	mov     r3, #0x0
	bl      Function_2262e94
.thumb
branch_2263b96: @ 2263b96 :thumb
	mov     r0, #0x0
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2263b9c

.word 0x226da00 @ 0x2263b9c
.word 0x226d9d0 @ 0x2263ba0
.thumb
Function_2263ba4: @ 2263ba4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	str     r2, [sp, #0x4]
	bl      Function_225dee8
	mov     r7, r0
	mov     r0, r4
	bl      Function_225deec
	str     r0, [sp, #0x8]
	mov     r0, r4
	bl      Function_225def0
	str     r0, [sp, #0xc]
	bl      Function_225ccac
	mov     r6, r0
	mov     r0, r5
	bl      Function_2262e84
	cmp     r0, #0x5
	bhi     branch_2263cbe
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2263be2

Jumppoints_2263be2:
.hword branch_2263bee - Jumppoints_2263be2 - 2
.hword branch_2263c12 - Jumppoints_2263be2 - 2
.hword branch_2263c38 - Jumppoints_2263be2 - 2
.hword branch_2263c68 - Jumppoints_2263be2 - 2
.hword branch_2263c82 - Jumppoints_2263be2 - 2
.hword branch_2263c9a - Jumppoints_2263be2 - 2
.thumb
branch_2263bee: @ 2263bee :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r2, [sp, #0x8]
	ldr     r3, [sp, #0x8]
	ldrh    r2, [r2, #0x0]
	ldrh    r3, [r3, #0x2]
	ldr     r1, [sp, #0x4]
	mov     r0, r4
	bl      Function_2263230
	mov     r0, r7
	mov     r1, #0x0
	bl      0x222e31c
	mov     r0, r5
	bl      Function_2262e8c
	b       branch_2263cbe
@ 0x2263c12

.thumb
branch_2263c12: @ 2263c12 :thumb
	mov     r0, r4
	bl      Function_225deec
	mov     r7, r0
	mov     r0, r4
	bl      Function_225df30
	cmp     r0, #0x0
	bne     branch_2263cbe
	mov     r0, r5
	bl      Function_2262e8c
	ldrh    r3, [r7, #0x4]
	ldr     r0, [sp, #0xc]
	mov     r1, r6
	mov     r2, #0x2
	bl      Function_225cdac
	b       branch_2263cbe
@ 0x2263c38

.thumb
branch_2263c38: @ 2263c38 :thumb
	mov     r0, r6
	mov     r1, #0x5
	bl      Function_225cd60
	cmp     r0, #0x0
	bne     branch_2263cbe
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_225df18
	mov     r0, r7
	bl      0x222e2b4
	cmp     r0, #0x1
	bne     branch_2263c5e
	mov     r0, r5
	bl      Function_2262e8c
	b       branch_2263cbe
@ 0x2263c5e

.thumb
branch_2263c5e: @ 2263c5e :thumb
	mov     r0, r5
	mov     r1, #0x5
	bl      Function_2262e88
	b       branch_2263cbe
@ 0x2263c68

.thumb
branch_2263c68: @ 2263c68 :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x5b
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r4
	bl      Function_225df8c
	mov     r0, r5
	bl      Function_2262e8c
	b       branch_2263cbe
@ 0x2263c82

.thumb
branch_2263c82: @ 2263c82 :thumb
	mov     r0, r4
	bl      Function_225dfac
	cmp     r0, #0x1
	bne     branch_2263cbe
	mov     r0, r4
	bl      Function_225dfec
	mov     r0, r5
	bl      Function_2262e8c
	b       branch_2263cbe
@ 0x2263c9a

.thumb
branch_2263c9a: @ 2263c9a :thumb
	ldr     r0, [sp, #0xc]
	mov     r1, r6
	mov     r2, #0x1
	bl      Function_225cdec
	mov     r0, r4
	bl      Function_225df10
	mov     r5, r0
	mov     r0, r4
	bl      Function_225df2c
	mov     r1, r0
	ldr     r2, [pc, #0xc] @ 0x2263cc4, (=0x226d9d0)
	mov     r0, r5
	mov     r3, #0x0
	bl      Function_2262e94
.thumb
branch_2263cbe: @ 2263cbe :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2263cc4

.word 0x226d9d0 @ 0x2263cc4
.thumb
Function_2263cc8: @ 2263cc8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x50
	str     r0, [sp, #0x4]
	mov     r5, r1
	mov     r7, r2
	bl      Function_2262e80
	str     r0, [sp, #0x30]
	ldr     r0, [sp, #0x4]
	bl      Function_2262e84
	cmp     r0, #0x0
	beq     branch_2263ce8
	cmp     r0, #0x1
	beq     branch_2263cf8
	b       branch_2264106
@ 0x2263ce8

.thumb
branch_2263ce8: @ 2263ce8 :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, #0x4
	bl      Function_2262e3c
	ldr     r0, [sp, #0x4]
	bl      Function_2262e8c
	b       branch_2264106
@ 0x2263cf8

.thumb
branch_2263cf8: @ 2263cf8 :thumb
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_225e43c
	mov     r0, r5
	bl      Function_225df10
	str     r0, [sp, #0x14]
	mov     r0, r5
	bl      Function_225dee8
	str     r0, [sp, #0x18]
	mov     r0, r5
	bl      Function_225def0
	mov     r4, r0
	mov     r0, r5
	bl      Function_225df00
	str     r0, [sp, #0x1c]
	mov     r0, r5
	bl      Function_225def8
	str     r0, [sp, #0x20]
	mov     r0, r4
	bl      Function_225ccb0
	mov     r6, r0
	beq     branch_2263d7a
	ldr     r0, [sp, #0x18]
	bl      0x222e12c
	cmp     r0, #0x0
	bne     branch_2263d66
	ldr     r0, [sp, #0x18]
	bl      0x222e19c
	cmp     r0, #0x1
	bne     branch_2263d66
	ldr     r0, [sp, #0x18]
	bl      0x222e0f4
	cmp     r0, #0x0
	bne     branch_2263d66
	mov     r0, r6
	bl      Function_225ce3c
	cmp     r0, #0x9
	beq     branch_2263d7a
	mov     r0, r4
	mov     r1, r6
	mov     r2, #0x9
	bl      Function_225cdec
	b       branch_2263d7a
@ 0x2263d66

.thumb
branch_2263d66: @ 2263d66 :thumb
	mov     r0, r6
	bl      Function_225ce3c
	cmp     r0, #0x0
	beq     branch_2263d7a
	mov     r0, r4
	mov     r1, r6
	mov     r2, #0x0
	bl      Function_225cdec
.thumb
branch_2263d7a: @ 2263d7a :thumb
	mov     r0, r4
	bl      Function_225ccac
	str     r0, [sp, #0x28]
	mov     r1, #0x5
	bl      Function_225cd60
	str     r0, [sp, #0x2c]
	ldr     r0, [sp, #0x28]
	mov     r1, #0x6
	bl      Function_225cd60
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x28]
	bl      Function_225cd34
	add     r1, sp, #0x40
	strh    r0, [r1, #0x4]
	lsr     r0, r0, #16
	strh    r0, [r1, #0x6]
	ldrh    r0, [r1, #0x4]
	mov     r2, sp
	.hword  0x1f12 @ sub r2, r2, #0x4
	strh    r0, [r1, #0xc]
	ldrh    r0, [r1, #0x6]
	strh    r0, [r1, #0xe]
	ldrh    r0, [r1, #0xc]
	strh    r0, [r2, #0x0]
	ldrh    r0, [r1, #0xe]
	ldr     r1, [sp, #0x8]
	strh    r0, [r2, #0x2]
	ldr     r0, [r2, #0x0]
	bl      0x222c078
	add     r2, sp, #0x40
	strh    r0, [r2, #0x0]
	lsr     r0, r0, #16
	strh    r0, [r2, #0x2]
	ldrh    r0, [r2, #0x0]
	mov     r1, #0xc
	strh    r0, [r2, #0x8]
	ldrh    r0, [r2, #0x2]
	strh    r0, [r2, #0xa]
	ldsh    r1, [r2, r1]
	ldr     r0, [sp, #0x1c]
	asr     r3, r1, #3
	lsr     r3, r3, #28
	add     r3, r1, r3
	lsl     r1, r3, #12
	mov     r3, #0xe
	ldsh    r2, [r2, r3]
	lsr     r1, r1, #16
	asr     r3, r2, #3
	lsr     r3, r3, #28
	add     r3, r2, r3
	lsl     r2, r3, #12
	lsr     r2, r2, #16
	bl      Function_225c8c4
	str     r0, [sp, #0x24]
	add     r0, sp, #0x40
	mov     r1, #0xa
	ldsh    r2, [r0, r1]
	asr     r1, r2, #3
	lsr     r1, r1, #28
	add     r1, r2, r1
	asr     r1, r1, #4
	str     r1, [sp, #0x10]
	mov     r1, #0x8
	ldsh    r1, [r0, r1]
	ldr     r2, [sp, #0x10]
	asr     r0, r1, #3
	lsr     r0, r0, #28
	add     r0, r1, r0
	asr     r0, r0, #4
	str     r0, [sp, #0xc]
	ldr     r1, [sp, #0xc]
	lsl     r2, r2, #16
	lsl     r1, r1, #16
	ldr     r0, [sp, #0x1c]
	lsr     r1, r1, #16
	lsr     r2, r2, #16
	bl      Function_225c8c4
	mov     r6, r0
	mov     r0, r5
	bl      Function_225e3e0
	mov     r1, r0
	cmp     r1, r7
	beq     branch_2263e44
	lsl     r1, r1, #24
	mov     r0, r5
	lsr     r1, r1, #24
	bl      Function_225df84
	cmp     r0, #0x0
	beq     branch_2263e44
	mov     r0, r5
	bl      Function_225e3d0
.thumb
branch_2263e44: @ 2263e44 :thumb
	ldr     r0, [sp, #0x2c]
	cmp     r0, #0x0
	beq     branch_2263e90
	mov     r0, r5
	bl      Function_225e400
	cmp     r0, #0x1
	bne     branch_2263e5c
	ldr     r0, [sp, #0x2c]
	.hword  0x1e40 @ sub r0, r0, #0x1
	cmp     r0, #0x2
	bls     branch_2263e5e
.thumb
branch_2263e5c: @ 2263e5c :thumb
	b       branch_2264106
@ 0x2263e5e

.thumb
branch_2263e5e: @ 2263e5e :thumb
	mov     r0, r5
	bl      Function_225e3e0
	mov     r1, r0
	cmp     r1, r7
	beq     branch_2263e88
	mov     r0, r4
	bl      Function_225cc70
	mov     r6, r0
	beq     branch_2263e88
	bl      Function_225ce3c
	cmp     r0, #0x0
	bne     branch_2263e88
	ldr     r2, [sp, #0x30]
	mov     r0, r4
	ldr     r2, [r2, #0x0]
	mov     r1, r6
	bl      Function_225cdec
.thumb
branch_2263e88: @ 2263e88 :thumb
	mov     r0, r5
	bl      Function_225e3d0
	b       branch_2264106
@ 0x2263e90

.thumb
branch_2263e90: @ 2263e90 :thumb
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_225e43c
	ldr     r0, [sp, #0x24]
	bl      Function_225c930
	cmp     r0, #0x1
	bne     branch_2263ed6
	ldr     r0, [sp, #0x24]
	ldr     r3, [pc, #0x264] @ 0x226410c, (=0x226dbb8)
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	mov     r2, r7
	bl      Function_226315c
	ldr     r1, [sp, #0x28]
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_225cdec
	ldr     r1, [sp, #0x24]
	mov     r0, r5
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_225df3c
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_225e43c
	add     sp, #0x50
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2263ed6

.thumb
branch_2263ed6: @ 2263ed6 :thumb
	mov     r0, r5
	bl      Function_225e45c
	cmp     r0, #0x1
	bne     branch_2263f04
	ldr     r1, [sp, #0x28]
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_225cdec
	ldr     r0, [sp, #0x14]
	ldr     r2, [pc, #0x220] @ 0x2264110, (=0x226da18)
	mov     r1, r7
	mov     r3, #0x0
	bl      Function_2262ec0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_225e43c
	add     sp, #0x50
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2263f04

.thumb
branch_2263f04: @ 2263f04 :thumb
	ldr     r0, [sp, #0x18]
	bl      0x222ee08
	cmp     r0, #0x0
	beq     branch_2263f32
	ldr     r0, [sp, #0x14]
	ldr     r2, [pc, #0x200] @ 0x2264114, (=0x226da08)
	mov     r1, r7
	mov     r3, #0x0
	bl      Function_2262ec0
	ldr     r1, [sp, #0x28]
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_225cdec
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_225e43c
	add     sp, #0x50
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2263f32

.thumb
branch_2263f32: @ 2263f32 :thumb
	ldr     r0, [pc, #0x1e4] @ 0x2264118, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_226401c
	ldr     r1, [sp, #0x28]
	mov     r0, r4
	bl      Function_225ce40
	str     r0, [sp, #0x34]
	cmp     r0, #0x0
	beq     branch_2263fa2
	mov     r1, #0x5
	bl      Function_225cd60
	str     r0, [sp, #0x38]
	ldr     r0, [sp, #0x34]
	mov     r1, #0x4
	bl      Function_225cd60
	mov     r1, r0
	cmp     r1, #0xfe
	beq     branch_2263fa2
	lsl     r1, r1, #24
	mov     r0, r5
	lsr     r1, r1, #24
	bl      Function_225df64
	ldr     r1, [sp, #0x38]
	cmp     r1, #0x0
	bne     branch_2263fa2
	cmp     r0, #0x0
	bne     branch_2263fa2
	ldr     r0, [sp, #0x14]
	ldr     r2, [pc, #0x1a4] @ 0x226411c, (=0x226d9f8)
	mov     r1, r7
	mov     r3, #0x0
	bl      Function_2262ec0
	ldr     r1, [sp, #0x28]
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_225cdec
	ldr     r1, [sp, #0x34]
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_225cdec
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_225e43c
	add     sp, #0x50
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2263fa2

.thumb
branch_2263fa2: @ 2263fa2 :thumb
	mov     r0, r6
	bl      Function_225c990
	cmp     r0, #0x1
	bne     branch_2263fe2
	ldr     r0, [sp, #0x28]
	mov     r1, #0x6
	bl      Function_225cd60
	cmp     r0, #0x0
	bne     branch_2263fe2
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x10]
	lsl     r1, r1, #24
	lsl     r2, r2, #24
	ldr     r0, [sp, #0x20]
	lsr     r1, r1, #24
	lsr     r2, r2, #24
	bl      Function_2262484
	lsl     r1, r6, #24
	mov     r0, r5
	lsr     r1, r1, #24
	bl      Function_225df3c
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_225e43c
	add     sp, #0x50
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2263fe2

.thumb
branch_2263fe2: @ 2263fe2 :thumb
	mov     r0, r6
	bl      Function_225c970
	cmp     r0, #0x1
	bne     branch_226401c
	ldr     r0, [sp, #0x4]
	ldr     r3, [pc, #0x130] @ 0x2264120, (=0x226db28)
	mov     r1, r5
	mov     r2, r7
	str     r6, [sp, #0x0]
	bl      Function_226315c
	ldr     r1, [sp, #0x28]
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_225cdec
	lsl     r1, r6, #24
	mov     r0, r5
	lsr     r1, r1, #24
	bl      Function_225df3c
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_225e43c
	add     sp, #0x50
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x226401c

.thumb
branch_226401c: @ 226401c :thumb
	ldr     r0, [sp, #0x8]
	bl      Function_2263120
	cmp     r0, #0x1
	bne     branch_22640bc
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x0
	bne     branch_2264066
	mov     r0, r6
	bl      Function_225c950
	cmp     r0, #0x1
	bne     branch_2264066
	ldr     r0, [sp, #0x4]
	ldr     r3, [pc, #0xe8] @ 0x2264124, (=0x226daf8)
	mov     r1, r5
	mov     r2, r7
	str     r6, [sp, #0x0]
	bl      Function_226315c
	ldr     r1, [sp, #0x28]
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_225cdec
	lsl     r1, r6, #24
	mov     r0, r5
	lsr     r1, r1, #24
	bl      Function_225df3c
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_225e43c
	add     sp, #0x50
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2264066

.thumb
branch_2264066: @ 2264066 :thumb
	ldr     r1, [sp, #0x28]
	mov     r0, r4
	bl      Function_225ce40
	str     r0, [sp, #0x3c]
	cmp     r0, #0x0
	beq     branch_22640bc
	mov     r1, #0x4
	bl      Function_225cd60
	mov     r6, r0
	cmp     r6, #0xfe
	beq     branch_22640bc
	mov     r0, r5
	bl      Function_225e3f0
	cmp     r0, #0x0
	bne     branch_22640bc
	lsl     r1, r6, #24
	mov     r0, r5
	lsr     r1, r1, #24
	bl      Function_225df84
	cmp     r0, #0x0
	bne     branch_22640bc
	mov     r0, r5
	mov     r1, r6
	mov     r2, #0x1
	bl      Function_225e328
	ldr     r0, [sp, #0x3c]
	bl      Function_225ce3c
	ldr     r1, [sp, #0x30]
	mov     r2, #0x0
	str     r0, [r1, #0x0]
	ldr     r1, [sp, #0x3c]
	mov     r0, r4
	bl      Function_225cdec
	add     sp, #0x50
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22640bc

.thumb
branch_22640bc: @ 22640bc :thumb
	ldr     r0, [pc, #0x58] @ 0x2264118, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	lsl     r0, r0, #10
	tst     r0, r1
	beq     branch_2264106
	mov     r0, r5
	bl      Function_225e3f0
	cmp     r0, #0x0
	bne     branch_22640ea
	ldr     r0, [sp, #0x18]
	bl      0x222e338
	mov     r1, r0
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_225e328
	ldr     r0, [pc, #0x44] @ 0x2264128, (=0x5dc)
	bl      Function_2005748
	b       branch_2264100
@ 0x22640ea

.thumb
branch_22640ea: @ 22640ea :thumb
	mov     r0, r5
	bl      Function_225e3e0
	cmp     r0, r7
	bne     branch_2264100
	mov     r0, r5
	bl      Function_225e3d0
	ldr     r0, [pc, #0x2c] @ 0x2264128, (=0x5dc)
	bl      Function_2005748
.thumb
branch_2264100: @ 2264100 :thumb
	add     sp, #0x50
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2264106

.thumb
branch_2264106: @ 2264106 :thumb
	mov     r0, #0x0
	add     sp, #0x50
	pop     {r3-r7,pc}
@ 0x226410c

.word 0x226dbb8 @ 0x226410c
.word 0x226da18 @ 0x2264110
.word 0x226da08 @ 0x2264114
.word 0x21bf67c @ 0x2264118
.word 0x226d9f8 @ 0x226411c
.word 0x226db28 @ 0x2264120
.word 0x226daf8 @ 0x2264124
.word 0x5dc @ 0x2264128
.thumb
Function_226412c: @ 226412c :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	bl      Function_225def0
	bl      Function_225ccac
	mov     r1, #0x5
	bl      Function_225cd60
	cmp     r0, #0x0
	beq     branch_226414c
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_225e43c
.thumb
branch_226414c: @ 226414c :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2264150

.thumb
Function_2264150: @ 2264150 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r7, r2
	bl      Function_2262e84
	cmp     r0, #0x9
	bhi     branch_22641f8
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x226416c

Jumppoints_226416c:
.hword branch_2264180 - Jumppoints_226416c - 2
.hword branch_22641c2 - Jumppoints_226416c - 2
.hword branch_22641d4 - Jumppoints_226416c - 2
.hword branch_22641ee - Jumppoints_226416c - 2
.hword branch_2264202 - Jumppoints_226416c - 2
.hword branch_2264210 - Jumppoints_226416c - 2
.hword branch_226424c - Jumppoints_226416c - 2
.hword branch_2264280 - Jumppoints_226416c - 2
.hword branch_22642b2 - Jumppoints_226416c - 2
.hword branch_22642d2 - Jumppoints_226416c - 2
.thumb
branch_2264180: @ 2264180 :thumb
	mov     r0, r4
	bl      Function_225def0
	mov     r6, r0
	bl      Function_225ccac
	mov     r1, r0
	mov     r0, r6
	mov     r2, #0x0
	bl      Function_225cdec
	mov     r0, r4
	bl      Function_225dee8
	mov     r1, #0xb
	bl      0x222e3e4
	ldr     r0, [pc, #0x178] @ 0x226431c, (=0x5dd)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x41
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r4
	bl      Function_225df8c
	mov     r0, r5
	bl      Function_2262e8c
	b       branch_2264316
@ 0x22641c2

.thumb
branch_22641c2: @ 22641c2 :thumb
	mov     r0, r4
	bl      Function_225dfac
	cmp     r0, #0x1
	bne     branch_22641f8
	mov     r0, r5
	bl      Function_2262e8c
	b       branch_2264316
@ 0x22641d4

.thumb
branch_22641d4: @ 22641d4 :thumb
	mov     r0, r4
	mov     r1, #0x2
	mov     r2, #0x19
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r4
	bl      Function_225df8c
	mov     r0, r5
	bl      Function_2262e8c
	b       branch_2264316
@ 0x22641ee

.thumb
branch_22641ee: @ 22641ee :thumb
	mov     r0, r4
	bl      Function_225dfac
	cmp     r0, #0x1
	beq     branch_22641fa
.thumb
branch_22641f8: @ 22641f8 :thumb
	b       branch_2264316
@ 0x22641fa

.thumb
branch_22641fa: @ 22641fa :thumb
	mov     r0, r5
	bl      Function_2262e8c
	b       branch_2264316
@ 0x2264202

.thumb
branch_2264202: @ 2264202 :thumb
	mov     r0, r4
	bl      Function_225e194
	mov     r0, r5
	bl      Function_2262e8c
	b       branch_2264316
@ 0x2264210

.thumb
branch_2264210: @ 2264210 :thumb
	mov     r0, r4
	mov     r6, #0x0
	bl      Function_225e1c4
	cmp     r0, #0x0
	beq     branch_2264224
	cmp     r0, #0x1
	beq     branch_2264230
	cmp     r0, #0x2
	b       branch_226423a
@ 0x2264224

.thumb
branch_2264224: @ 2264224 :thumb
	mov     r0, r5
	mov     r1, #0x6
	bl      Function_2262e88
	mov     r6, #0x1
	b       branch_226423a
@ 0x2264230

.thumb
branch_2264230: @ 2264230 :thumb
	mov     r0, r5
	mov     r1, #0x8
	bl      Function_2262e88
	mov     r6, #0x1
.thumb
branch_226423a: @ 226423a :thumb
	cmp     r6, #0x1
	bne     branch_2264316
	mov     r0, r4
	bl      Function_225e1f8
	mov     r0, r4
	bl      Function_225dfec
	b       branch_2264316
@ 0x226424c

.thumb
branch_226424c: @ 226424c :thumb
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_225df18
	mov     r0, r4
	bl      Function_225def0
	mov     r6, r0
	bl      Function_225ccac
	mov     r7, r0
	mov     r0, r4
	bl      Function_225df08
	bl      Function_2260b3c
	mov     r0, r6
	mov     r1, r7
	mov     r2, #0x3
	bl      Function_225cdec
	mov     r0, r5
	mov     r1, #0x7
	bl      Function_2262e88
	b       branch_2264316
@ 0x2264280

.thumb
branch_2264280: @ 2264280 :thumb
	mov     r0, r4
	bl      Function_225def0
	bl      Function_225ccac
	bl      Function_225ce38
	cmp     r0, #0x1
	bne     branch_2264316
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_225df34
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_225df38
	mov     r0, r4
	bl      Function_225dee8
	mov     r1, #0xb
	bl      0x222e3e4
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x22642b2

.thumb
branch_22642b2: @ 22642b2 :thumb
	mov     r0, r4
	bl      Function_225def0
	mov     r4, r0
	bl      Function_225ccac
	mov     r1, r0
	mov     r0, r4
	mov     r2, #0x2
	mov     r3, #0x0
	bl      Function_225cdac
	mov     r0, r5
	bl      Function_2262e8c
	b       branch_2264316
@ 0x22642d2

.thumb
branch_22642d2: @ 22642d2 :thumb
	mov     r0, r4
	bl      Function_225dee8
	mov     r1, #0x1
	bl      0x222e3e4
	mov     r0, r4
	bl      Function_225def0
	mov     r5, r0
	mov     r0, r4
	bl      Function_225df10
	mov     r4, r0
	mov     r0, r5
	bl      Function_225ccac
	mov     r1, #0x5
	mov     r6, r0
	bl      Function_225cd60
	cmp     r0, #0x0
	bne     branch_2264316
	mov     r0, r5
	mov     r1, r6
	mov     r2, #0x1
	bl      Function_225cdec
	ldr     r2, [pc, #0x14] @ 0x2264320, (=0x226d9d0)
	mov     r0, r4
	mov     r1, r7
	mov     r3, #0x0
	bl      Function_2262e94
.thumb
branch_2264316: @ 2264316 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x226431a


.align 2


.word 0x5dd @ 0x226431c
.word 0x226d9d0 @ 0x2264320
.thumb
Function_2264324: @ 2264324 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x44
	mov     r4, r1
	mov     r5, r0
	str     r2, [sp, #0x10]
	mov     r0, r4
	bl      Function_225def0
	ldr     r1, [sp, #0x10]
	str     r0, [sp, #0x28]
	bl      Function_225cc70
	mov     r7, r0
	mov     r0, r4
	bl      Function_225df40
	str     r0, [sp, #0x20]
	mov     r0, r5
	bl      Function_2262e80
	mov     r6, r0
	mov     r0, r4
	bl      Function_225dee8
	str     r0, [sp, #0x24]
	mov     r0, r5
	bl      Function_2262e84
	cmp     r0, #0x8
	bls     branch_2264362
	b       branch_22646bc
@ 0x2264362

.thumb
branch_2264362: @ 2264362 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x226436e

Jumppoints_226436e:
.hword branch_2264380 - Jumppoints_226436e - 2
.hword branch_2264440 - Jumppoints_226436e - 2
.hword branch_22644de - Jumppoints_226436e - 2
.hword branch_22645b4 - Jumppoints_226436e - 2
.hword branch_2264606 - Jumppoints_226436e - 2
.hword branch_226461e - Jumppoints_226436e - 2
.hword branch_2264644 - Jumppoints_226436e - 2
.hword branch_226465e - Jumppoints_226436e - 2
.hword branch_226468c - Jumppoints_226436e - 2
.thumb
branch_2264380: @ 2264380 :thumb
	mov     r0, r5
	mov     r1, #0xc
	bl      Function_2262e3c
	mov     r4, r0
	ldr     r0, [sp, #0x20]
	bl      Function_2264b64
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	cmp     r0, #0x3
	bhi     branch_22643c4
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22643a4

Jumppoints_22643a4:
.hword branch_22643ac - Jumppoints_22643a4 - 2
.hword branch_22643b2 - Jumppoints_22643a4 - 2
.hword branch_22643b8 - Jumppoints_22643a4 - 2
.hword branch_22643be - Jumppoints_22643a4 - 2
.thumb
branch_22643ac: @ 22643ac :thumb
	mov     r0, #0x3
	str     r0, [r4, #0x8]
	b       branch_22643cc
@ 0x22643b2

.thumb
branch_22643b2: @ 22643b2 :thumb
	mov     r0, #0x4
	str     r0, [r4, #0x8]
	b       branch_22643cc
@ 0x22643b8

.thumb
branch_22643b8: @ 22643b8 :thumb
	mov     r0, #0x5
	str     r0, [r4, #0x8]
	b       branch_22643cc
@ 0x22643be

.thumb
branch_22643be: @ 22643be :thumb
	mov     r0, #0x6
	str     r0, [r4, #0x8]
	b       branch_22643cc
@ 0x22643c4

.thumb
branch_22643c4: @ 22643c4 :thumb
	bl      ErrorHandling
	mov     r0, #0x5
	str     r0, [r4, #0x8]
.thumb
branch_22643cc: @ 22643cc :thumb
	ldr     r0, [sp, #0x24]
	bl      0x222e12c
	cmp     r0, #0x1
	bne     branch_22643e8
	mov     r0, #0x16
	strh    r0, [r4, #0x4]
	mov     r0, #0x0
	strh    r0, [r4, #0x6]
	mov     r0, r5
	mov     r1, #0x5
	bl      Function_2262e88
	b       branch_22646bc
@ 0x22643e8

.thumb
branch_22643e8: @ 22643e8 :thumb
	ldr     r0, [sp, #0x24]
	bl      0x222e004
	cmp     r0, #0x1
	bne     branch_2264404
	mov     r0, #0x48
	strh    r0, [r4, #0x4]
	mov     r0, #0x1
	strh    r0, [r4, #0x6]
	mov     r0, r5
	mov     r1, #0x5
	bl      Function_2262e88
	b       branch_22646bc
@ 0x2264404

.thumb
branch_2264404: @ 2264404 :thumb
	ldr     r0, [sp, #0x20]
	bl      Function_2264b64
	lsl     r0, r0, #24
	lsr     r6, r0, #24
	mov     r0, r6
	bl      0x2232b00
	cmp     r0, #0x0
	bne     branch_226442a
	mov     r0, #0x14
	strh    r0, [r4, #0x4]
	mov     r0, #0x0
	strh    r0, [r4, #0x6]
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_2262e88
	b       branch_22646bc
@ 0x226442a

.thumb
branch_226442a: @ 226442a :thumb
	mov     r0, r6
	bl      0x2232a48
	cmp     r0, #0x0
	bne     branch_2264438
	bl      ErrorHandling
.thumb
branch_2264438: @ 2264438 :thumb
	mov     r0, r5
	bl      Function_2262e8c
	b       branch_22646bc
@ 0x2264440

.thumb
branch_2264440: @ 2264440 :thumb
	bl      0x2232a84
	cmp     r0, #0x1
	bne     branch_22644c6
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_2262e88
	add     r1, sp, #0x40
	mov     r0, #0x0
	strb    r0, [r1, #0x0]
	strb    r0, [r1, #0x1]
	strb    r0, [r1, #0x2]
	strb    r0, [r1, #0x3]
	mov     r0, r4
	bl      Function_225dee8
	mov     r7, r0
	bl      0x222e964
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x1c]
	ldr     r0, [r6, #0x8]
	.hword  0x1f40 @ sub r0, r0, #0x5
	cmp     r0, #0x1
	bhi     branch_22644a0
	mov     r5, #0x0
	mov     r4, r5
.thumb
branch_226447a: @ 226447a :thumb
	mov     r0, r7
	mov     r1, r4
	bl      0x222e974
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_2264498
	cmp     r5, #0x4
	bcs     branch_2264492
	add     r1, sp, #0x40
	strb    r0, [r1, r5]
.thumb
branch_2264492: @ 2264492 :thumb
	add     r0, r5, #0x1
	lsl     r0, r0, #24
	lsr     r5, r0, #24
.thumb
branch_2264498: @ 2264498 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x4
	blt     branch_226447a
	b       branch_22644a6
@ 0x22644a0

.thumb
branch_22644a0: @ 22644a0 :thumb
	ldr     r0, [sp, #0x10]
	add     r1, sp, #0x38
	strb    r0, [r1, #0x8]
.thumb
branch_22644a6: @ 22644a6 :thumb
	add     r3, sp, #0x38
	ldrb    r0, [r3, #0x9]
	str     r0, [sp, #0x0]
	ldrb    r0, [r3, #0xa]
	str     r0, [sp, #0x4]
	ldrb    r0, [r3, #0xb]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldrb    r3, [r3, #0x8]
	ldr     r1, [r6, #0x8]
	ldr     r2, [sp, #0x1c]
	mov     r0, r7
	bl      0x222ea10
	b       branch_22646bc
@ 0x22644c6

.thumb
branch_22644c6: @ 22644c6 :thumb
	cmp     r0, #0x2
	beq     branch_22644cc
	b       branch_22646bc
@ 0x22644cc

.thumb
branch_22644cc: @ 22644cc :thumb
	mov     r0, #0x14
	strh    r0, [r6, #0x4]
	mov     r0, #0x0
	strh    r0, [r6, #0x6]
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_2262e88
	b       branch_22646bc
@ 0x22644de

.thumb
branch_22644de: @ 22644de :thumb
	ldr     r0, [sp, #0x20]
	bl      Function_2264bcc
	str     r0, [sp, #0x2c]
	ldr     r0, [sp, #0x20]
	bl      Function_2264c34
	str     r0, [sp, #0x30]
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_225df34
	ldr     r1, [sp, #0x2c]
	mov     r0, r4
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_225df38
	mov     r0, r4
	bl      Function_225dee8
	ldr     r1, [sp, #0x30]
	bl      0x222e3e4
	ldr     r0, [sp, #0x24]
	ldr     r1, [r6, #0x8]
	bl      0x222ef94
	ldr     r0, [r6, #0x8]
	cmp     r0, #0x6
	bhi     branch_2264548
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2264528

Jumppoints_2264528:
.hword branch_2264548 - Jumppoints_2264528 - 2
.hword branch_2264548 - Jumppoints_2264528 - 2
.hword branch_2264548 - Jumppoints_2264528 - 2
.hword branch_2264536 - Jumppoints_2264528 - 2
.hword branch_2264536 - Jumppoints_2264528 - 2
.hword branch_226453c - Jumppoints_2264528 - 2
.hword branch_2264542 - Jumppoints_2264528 - 2
.thumb
branch_2264536: @ 2264536 :thumb
	mov     r0, #0x5
	str     r0, [sp, #0x18]
	b       branch_226454c
@ 0x226453c

.thumb
branch_226453c: @ 226453c :thumb
	mov     r0, #0x3
	str     r0, [sp, #0x18]
	b       branch_226454c
@ 0x2264542

.thumb
branch_2264542: @ 2264542 :thumb
	mov     r0, #0x4
	str     r0, [sp, #0x18]
	b       branch_226454c
@ 0x2264548

.thumb
branch_2264548: @ 2264548 :thumb
	bl      ErrorHandling
.thumb
branch_226454c: @ 226454c :thumb
	ldr     r0, [sp, #0x24]
	ldr     r1, [sp, #0x18]
	bl      0x222f040
	mov     r0, r7
	mov     r1, #0x6
	bl      Function_225cd60
	bl      0x222c0ac
	str     r0, [sp, #0x34]
	mov     r0, r4
	bl      Function_225deec
	mov     r4, r0
	mov     r0, r7
	bl      Function_225cd34
	add     r1, sp, #0x38
	strh    r0, [r1, #0x0]
	lsr     r0, r0, #16
	strh    r0, [r1, #0x2]
	ldrh    r0, [r1, #0x0]
	strh    r0, [r1, #0x4]
	ldrh    r0, [r1, #0x2]
	strh    r0, [r1, #0x6]
	mov     r0, #0x1
	strh    r0, [r4, #0x6]
	mov     r0, #0x4
	ldsh    r2, [r1, r0]
	asr     r0, r2, #3
	lsr     r0, r0, #28
	add     r0, r2, r0
	asr     r0, r0, #4
	strh    r0, [r4, #0x0]
	mov     r0, #0x6
	ldsh    r1, [r1, r0]
	asr     r0, r1, #3
	lsr     r0, r0, #28
	add     r0, r1, r0
	asr     r0, r0, #4
	strh    r0, [r4, #0x2]
	ldr     r0, [sp, #0x34]
	strh    r0, [r4, #0x4]
	ldr     r0, [r6, #0x8]
	strh    r0, [r4, #0x8]
	mov     r0, r5
	bl      Function_2262e64
	add     sp, #0x44
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x22645b4

.thumb
branch_22645b4: @ 22645b4 :thumb
	mov     r0, r7
	mov     r1, #0x6
	bl      Function_225cd60
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	cmp     r0, #0x3
	bhi     branch_22645f0
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22645d0

Jumppoints_22645d0:
.hword branch_22645d8 - Jumppoints_22645d0 - 2
.hword branch_22645de - Jumppoints_22645d0 - 2
.hword branch_22645e4 - Jumppoints_22645d0 - 2
.hword branch_22645ea - Jumppoints_22645d0 - 2
.thumb
branch_22645d8: @ 22645d8 :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x14]
	b       branch_22645f4
@ 0x22645de

.thumb
branch_22645de: @ 22645de :thumb
	mov     r0, #0x5
	str     r0, [sp, #0x14]
	b       branch_22645f4
@ 0x22645e4

.thumb
branch_22645e4: @ 22645e4 :thumb
	mov     r0, #0x8
	str     r0, [sp, #0x14]
	b       branch_22645f4
@ 0x22645ea

.thumb
branch_22645ea: @ 22645ea :thumb
	mov     r0, #0x7
	str     r0, [sp, #0x14]
	b       branch_22645f4
@ 0x22645f0

.thumb
branch_22645f0: @ 22645f0 :thumb
	bl      ErrorHandling
.thumb
branch_22645f4: @ 22645f4 :thumb
	ldr     r0, [sp, #0x28]
	ldr     r2, [sp, #0x14]
	mov     r1, r7
	bl      Function_225cdec
	mov     r0, r5
	bl      Function_2262e8c
	b       branch_22646bc
@ 0x2264606

.thumb
branch_2264606: @ 2264606 :thumb
	mov     r0, r7
	bl      Function_225ce38
	cmp     r0, #0x1
	bne     branch_22646bc
	mov     r0, #0x8
	str     r0, [r6, #0x0]
	mov     r0, r5
	mov     r1, #0x7
	bl      Function_2262e88
	b       branch_22646bc
@ 0x226461e

.thumb
branch_226461e: @ 226461e :thumb
	mov     r0, r7
	mov     r1, #0x6
	bl      Function_225cd60
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x222c0ac
	lsl     r0, r0, #24
	lsr     r3, r0, #24
	ldr     r0, [sp, #0x28]
	mov     r1, r7
	mov     r2, #0x2
	bl      Function_225cdac
	mov     r0, r5
	bl      Function_2262e8c
	b       branch_22646bc
@ 0x2264644

.thumb
branch_2264644: @ 2264644 :thumb
	mov     r0, r7
	mov     r1, #0x5
	bl      Function_225cd60
	cmp     r0, #0x0
	bne     branch_22646bc
	mov     r0, #0x8
	str     r0, [r6, #0x0]
	mov     r0, r5
	mov     r1, #0x7
	bl      Function_2262e88
	b       branch_22646bc
@ 0x226465e

.thumb
branch_226465e: @ 226465e :thumb
	ldr     r0, [r6, #0x0]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r6, #0x0]
	cmp     r0, #0x0
	bgt     branch_22646bc
	ldr     r1, [r6, #0x8]
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_225e27c
	ldrh    r1, [r6, #0x6]
	ldrh    r2, [r6, #0x4]
	mov     r0, r4
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r4
	bl      Function_225df8c
	mov     r0, r5
	bl      Function_2262e8c
	b       branch_22646bc
@ 0x226468c

.thumb
branch_226468c: @ 226468c :thumb
	mov     r0, r4
	bl      Function_225dfac
	cmp     r0, #0x0
	beq     branch_22646bc
	mov     r0, r5
	bl      Function_2262e64
	ldr     r0, [sp, #0x28]
	mov     r1, r7
	mov     r2, #0x1
	bl      Function_225cdec
	mov     r0, r4
	bl      Function_225dfec
	mov     r0, r4
	bl      Function_225df10
	ldr     r1, [sp, #0x10]
	ldr     r2, [pc, #0xc] @ 0x22646c4, (=0x226d9d0)
	mov     r3, #0x0
	bl      Function_2262e94
.thumb
branch_22646bc: @ 22646bc :thumb
	mov     r0, #0x0
	add     sp, #0x44
	pop     {r4-r7,pc}
@ 0x22646c2


.align 2


.word 0x226d9d0 @ 0x22646c4
.thumb
Function_22646c8: @ 22646c8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	mov     r4, r1
	mov     r7, r0
	str     r2, [sp, #0x0]
	bl      Function_2262e80
	mov     r5, r0
	mov     r0, r4
	bl      Function_225df10
	str     r0, [sp, #0x14]
	mov     r0, r4
	bl      Function_225def0
	str     r0, [sp, #0x18]
	bl      Function_225ccac
	str     r0, [sp, #0x10]
	mov     r0, r4
	bl      Function_225dee8
	str     r0, [sp, #0xc]
	mov     r0, r7
	bl      Function_2262e84
	cmp     r0, #0x7
	bls     branch_2264702
	b       branch_2264966
@ 0x2264702

.thumb
branch_2264702: @ 2264702 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x226470e

Jumppoints_226470e:
.hword branch_226471e - Jumppoints_226470e - 2
.hword branch_2264792 - Jumppoints_226470e - 2
.hword branch_22647ac - Jumppoints_226470e - 2
.hword branch_226486a - Jumppoints_226470e - 2
.hword branch_226488a - Jumppoints_226470e - 2
.hword branch_226489e - Jumppoints_226470e - 2
.hword branch_2264922 - Jumppoints_226470e - 2
.hword branch_226493a - Jumppoints_226470e - 2
.thumb
branch_226471e: @ 226471e :thumb
	mov     r0, r7
	mov     r1, #0x4
	bl      Function_2262e3c
	mov     r5, r0
	ldr     r0, [sp, #0x18]
	ldr     r1, [sp, #0x10]
	mov     r2, #0x0
	bl      Function_225cdec
	mov     r0, r7
	bl      Function_2262e8c
	mov     r0, #0x0
	strb    r0, [r5, #0x0]
	mov     r0, r4
	bl      Function_225df40
	cmp     r0, #0x1e
	beq     branch_2264750
	cmp     r0, #0x1f
	beq     branch_226475c
	cmp     r0, #0x20
	beq     branch_2264768
	b       branch_2264774
@ 0x2264750

.thumb
branch_2264750: @ 2264750 :thumb
	mov     r0, #0x0
	strb    r0, [r5, #0x1]
	strb    r0, [r5, #0x2]
	mov     r0, #0x2
	strb    r0, [r5, #0x3]
	b       branch_2264778
@ 0x226475c

.thumb
branch_226475c: @ 226475c :thumb
	mov     r0, #0x1
	strb    r0, [r5, #0x1]
	strb    r0, [r5, #0x2]
	mov     r0, #0x3
	strb    r0, [r5, #0x3]
	b       branch_2264778
@ 0x2264768

.thumb
branch_2264768: @ 2264768 :thumb
	mov     r0, #0x2
	strb    r0, [r5, #0x1]
	strb    r0, [r5, #0x2]
	mov     r0, #0x4
	strb    r0, [r5, #0x3]
	b       branch_2264778
@ 0x2264774

.thumb
branch_2264774: @ 2264774 :thumb
	bl      ErrorHandling
.thumb
branch_2264778: @ 2264778 :thumb
	mov     r0, r4
	bl      Function_225dee8
	mov     r1, #0xc
	bl      0x222e3e4
	ldr     r0, [sp, #0x14]
	ldr     r1, [sp, #0x0]
	ldr     r2, [pc, #0x1e0] @ 0x226496c, (=0x226da20)
	mov     r3, r5
	bl      Function_2262ec0
	b       branch_2264966
@ 0x2264792

.thumb
branch_2264792: @ 2264792 :thumb
	ldrb    r0, [r5, #0x0]
	cmp     r0, #0x8
	bne     branch_22647a2
	mov     r0, r7
	mov     r1, #0x2
	bl      Function_2262e88
	b       branch_2264966
@ 0x22647a2

.thumb
branch_22647a2: @ 22647a2 :thumb
	mov     r0, r7
	mov     r1, #0x3
	bl      Function_2262e88
	b       branch_2264966
@ 0x22647ac

.thumb
branch_22647ac: @ 22647ac :thumb
	mov     r0, r4
	bl      Function_225df40
	cmp     r0, #0x1e
	beq     branch_22647c0
	cmp     r0, #0x1f
	beq     branch_22647c8
	cmp     r0, #0x20
	beq     branch_22647d0
	b       branch_22647d6
@ 0x22647c0

.thumb
branch_22647c0: @ 22647c0 :thumb
	mov     r0, #0x0
	mov     r6, #0x3
	str     r0, [sp, #0x8]
	b       branch_22647d6
@ 0x22647c8

.thumb
branch_22647c8: @ 22647c8 :thumb
	mov     r0, #0x1
	mov     r6, #0x4
	str     r0, [sp, #0x8]
	b       branch_22647d6
@ 0x22647d0

.thumb
branch_22647d0: @ 22647d0 :thumb
	mov     r0, #0x2
	mov     r6, #0x5
	str     r0, [sp, #0x8]
.thumb
branch_22647d6: @ 22647d6 :thumb
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_225df34
	lsl     r1, r6, #24
	mov     r0, r4
	lsr     r1, r1, #24
	bl      Function_225df38
	ldrb    r1, [r5, #0x2]
	ldr     r0, [sp, #0xc]
	bl      0x222ef94
	ldr     r0, [sp, #0xc]
	bl      0x222f030
	ldr     r0, [sp, #0xc]
	ldr     r1, [sp, #0x8]
	bl      0x222f040
	ldr     r0, [sp, #0x10]
	mov     r1, #0x6
	bl      Function_225cd60
	bl      0x222c0ac
	str     r0, [sp, #0x1c]
	mov     r0, r4
	bl      Function_225deec
	mov     r6, r0
	ldr     r0, [sp, #0x10]
	bl      Function_225cd34
	add     r1, sp, #0x20
	strh    r0, [r1, #0x0]
	lsr     r0, r0, #16
	strh    r0, [r1, #0x2]
	ldrh    r0, [r1, #0x0]
	strh    r0, [r1, #0x4]
	ldrh    r0, [r1, #0x2]
	strh    r0, [r1, #0x6]
	mov     r0, #0x2
	strh    r0, [r6, #0x6]
	mov     r0, #0x4
	ldsh    r0, [r1, r0]
	asr     r2, r0, #3
	lsr     r2, r2, #28
	add     r2, r0, r2
	asr     r0, r2, #4
	strh    r0, [r6, #0x0]
	mov     r0, #0x6
	ldsh    r1, [r1, r0]
	asr     r0, r1, #3
	lsr     r0, r0, #28
	add     r0, r1, r0
	asr     r0, r0, #4
	strh    r0, [r6, #0x2]
	ldr     r0, [sp, #0x1c]
	strh    r0, [r6, #0x4]
	ldrb    r0, [r5, #0x2]
	strh    r0, [r6, #0x8]
	mov     r0, r4
	bl      Function_225dee8
	mov     r1, #0x1
	bl      0x222e2c4
	mov     r0, r7
	bl      Function_2262e64
	add     sp, #0x28
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x226486a

.thumb
branch_226486a: @ 226486a :thumb
	ldr     r0, [sp, #0x10]
	mov     r1, #0x6
	bl      Function_225cd60
	bl      0x222c0ac
	mov     r3, r0
	ldr     r0, [sp, #0x18]
	ldr     r1, [sp, #0x10]
	mov     r2, #0x2
	bl      Function_225cdac
	mov     r0, r7
	bl      Function_2262e8c
	b       branch_2264966
@ 0x226488a

.thumb
branch_226488a: @ 226488a :thumb
	ldr     r0, [sp, #0x10]
	mov     r1, #0x5
	bl      Function_225cd60
	cmp     r0, #0x0
	bne     branch_2264966
	mov     r0, r7
	bl      Function_2262e8c
	b       branch_2264966
@ 0x226489e

.thumb
branch_226489e: @ 226489e :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldrb    r0, [r5, #0x0]
	cmp     r0, #0x7
	bhi     branch_22648f4
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22648b4

Jumppoints_22648b4:
.hword branch_22648c4 - Jumppoints_22648b4 - 2
.hword branch_22648d2 - Jumppoints_22648b4 - 2
.hword branch_22648d6 - Jumppoints_22648b4 - 2
.hword branch_22648e4 - Jumppoints_22648b4 - 2
.hword branch_22648e8 - Jumppoints_22648b4 - 2
.hword branch_22648f4 - Jumppoints_22648b4 - 2
.hword branch_22648ec - Jumppoints_22648b4 - 2
.hword branch_22648f0 - Jumppoints_22648b4 - 2
.thumb
branch_22648c4: @ 22648c4 :thumb
	ldrb    r1, [r5, #0x2]
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_225e27c
	mov     r6, #0x4
	b       branch_22648f8
@ 0x22648d2

.thumb
branch_22648d2: @ 22648d2 :thumb
	mov     r6, #0x5
	b       branch_22648f8
@ 0x22648d6

.thumb
branch_22648d6: @ 22648d6 :thumb
	ldrb    r1, [r5, #0x2]
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_225e27c
	mov     r6, #0x6
	b       branch_22648f8
@ 0x22648e4

.thumb
branch_22648e4: @ 22648e4 :thumb
	mov     r6, #0x13
	b       branch_22648f8
@ 0x22648e8

.thumb
branch_22648e8: @ 22648e8 :thumb
	mov     r6, #0x11
	b       branch_22648f8
@ 0x22648ec

.thumb
branch_22648ec: @ 22648ec :thumb
	mov     r6, #0x1d
	b       branch_22648f8
@ 0x22648f0

.thumb
branch_22648f0: @ 22648f0 :thumb
	mov     r6, #0x7
	b       branch_22648f8
@ 0x22648f4

.thumb
branch_22648f4: @ 22648f4 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x4]
.thumb
branch_22648f8: @ 22648f8 :thumb
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	beq     branch_2264918
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, r6
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r4
	bl      Function_225df8c
	mov     r0, r7
	bl      Function_2262e8c
	b       branch_2264966
@ 0x2264918

.thumb
branch_2264918: @ 2264918 :thumb
	mov     r0, r7
	mov     r1, #0x7
	bl      Function_2262e88
	b       branch_2264966
@ 0x2264922

.thumb
branch_2264922: @ 2264922 :thumb
	mov     r0, r4
	bl      Function_225dfac
	cmp     r0, #0x1
	bne     branch_2264966
	mov     r0, r4
	bl      Function_225dfec
	mov     r0, r7
	bl      Function_2262e8c
	b       branch_2264966
@ 0x226493a

.thumb
branch_226493a: @ 226493a :thumb
	mov     r0, r7
	bl      Function_2262e64
	mov     r0, r4
	bl      Function_225dee8
	mov     r1, #0x1
	bl      0x222e3e4
	ldr     r0, [sp, #0x18]
	ldr     r1, [sp, #0x10]
	mov     r2, #0x1
	bl      Function_225cdec
	mov     r0, r4
	bl      Function_225df10
	ldr     r1, [sp, #0x0]
	ldr     r2, [pc, #0x10] @ 0x2264970, (=0x226d9d0)
	mov     r3, #0x0
	bl      Function_2262e94
.thumb
branch_2264966: @ 2264966 :thumb
	mov     r0, #0x0
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x226496c

.word 0x226da20 @ 0x226496c
.word 0x226d9d0 @ 0x2264970
.thumb
Function_2264974: @ 2264974 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r4, r1
	mov     r5, r0
	str     r2, [sp, #0x0]
	bl      Function_2262e80
	str     r0, [sp, #0x8]
	mov     r0, r4
	bl      Function_225df10
	mov     r0, r4
	bl      Function_225def0
	str     r0, [sp, #0xc]
	bl      Function_225ccac
	mov     r6, r0
	mov     r0, r4
	bl      Function_225dee8
	mov     r7, r0
	mov     r0, r5
	bl      Function_2262e84
	cmp     r0, #0x6
	bls     branch_22649ac
	b       branch_2264b56
@ 0x22649ac

.thumb
branch_22649ac: @ 22649ac :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22649b8

Jumppoints_22649b8:
.hword branch_22649c6 - Jumppoints_22649b8 - 2
.hword branch_2264a2a - Jumppoints_22649b8 - 2
.hword branch_2264ac0 - Jumppoints_22649b8 - 2
.hword branch_2264ae0 - Jumppoints_22649b8 - 2
.hword branch_2264af4 - Jumppoints_22649b8 - 2
.hword branch_2264b10 - Jumppoints_22649b8 - 2
.hword branch_2264b28 - Jumppoints_22649b8 - 2
.thumb
branch_22649c6: @ 22649c6 :thumb
	mov     r0, r5
	mov     r1, #0xc
	bl      Function_2262e3c
	mov     r6, r0
	mov     r0, r4
	bl      Function_225dee8
	mov     r1, #0xd
	bl      0x222e3e4
	mov     r0, r7
	bl      0x222e12c
	cmp     r0, #0x1
	bne     branch_22649f4
	mov     r0, #0x7a
	strh    r0, [r6, #0x0]
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_2262e88
	b       branch_2264b5a
@ 0x22649f4

.thumb
branch_22649f4: @ 22649f4 :thumb
	mov     r0, r7
	bl      0x222e19c
	cmp     r0, #0x1
	bne     branch_2264a04
	mov     r0, #0xa
	strh    r0, [r6, #0x2]
	b       branch_2264a20
@ 0x2264a04

.thumb
branch_2264a04: @ 2264a04 :thumb
	mov     r0, r7
	bl      0x222e0dc
	cmp     r0, #0x1
	bne     branch_2264a1c
	mov     r0, #0x62
	strh    r0, [r6, #0x0]
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_2262e88
	b       branch_2264b5a
@ 0x2264a1c

.thumb
branch_2264a1c: @ 2264a1c :thumb
	mov     r0, #0x9
	strh    r0, [r6, #0x2]
.thumb
branch_2264a20: @ 2264a20 :thumb
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2262e88
	b       branch_2264b5a
@ 0x2264a2a

.thumb
branch_2264a2a: @ 2264a2a :thumb
	ldr     r0, [sp, #0x8]
	ldrh    r0, [r0, #0x2]
	cmp     r0, #0x9
	bne     branch_2264a38
	mov     r0, #0x9
	str     r0, [sp, #0x4]
	b       branch_2264a42
@ 0x2264a38

.thumb
branch_2264a38: @ 2264a38 :thumb
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	mov     r0, r7
	bl      0x222e10c
.thumb
branch_2264a42: @ 2264a42 :thumb
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_225df34
	ldr     r1, [sp, #0x4]
	mov     r0, r4
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_225df38
	mov     r1, #0x17
	mov     r2, r1
	mov     r0, r7
	sub     r2, #0x18
	bl      0x222e500
	mov     r0, r6
	mov     r1, #0x6
	bl      Function_225cd60
	bl      0x222c0ac
	mov     r7, r0
	mov     r0, r4
	bl      Function_225deec
	mov     r4, r0
	mov     r0, r6
	bl      Function_225cd34
	add     r1, sp, #0x10
	strh    r0, [r1, #0x0]
	lsr     r0, r0, #16
	strh    r0, [r1, #0x2]
	ldrh    r0, [r1, #0x0]
	strh    r0, [r1, #0x4]
	ldrh    r0, [r1, #0x2]
	strh    r0, [r1, #0x6]
	mov     r0, #0x3
	strh    r0, [r4, #0x6]
	mov     r0, #0x4
	ldsh    r2, [r1, r0]
	asr     r0, r2, #3
	lsr     r0, r0, #28
	add     r0, r2, r0
	asr     r0, r0, #4
	strh    r0, [r4, #0x0]
	mov     r0, #0x6
	ldsh    r1, [r1, r0]
	asr     r0, r1, #3
	lsr     r0, r0, #28
	add     r0, r1, r0
	asr     r0, r0, #4
	strh    r0, [r4, #0x2]
	strh    r7, [r4, #0x4]
	mov     r0, #0x0
	strh    r0, [r4, #0x8]
	mov     r0, r5
	bl      Function_2262e64
	add     sp, #0x18
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2264ac0

.thumb
branch_2264ac0: @ 2264ac0 :thumb
	mov     r0, r6
	mov     r1, #0x6
	bl      Function_225cd60
	bl      0x222c0ac
	mov     r3, r0
	ldr     r0, [sp, #0xc]
	mov     r1, r6
	mov     r2, #0x2
	bl      Function_225cdac
	mov     r0, r5
	bl      Function_2262e8c
	b       branch_2264b5a
@ 0x2264ae0

.thumb
branch_2264ae0: @ 2264ae0 :thumb
	mov     r0, r6
	mov     r1, #0x5
	bl      Function_225cd60
	cmp     r0, #0x0
	bne     branch_2264b5a
	mov     r0, r5
	bl      Function_2262e8c
	b       branch_2264b5a
@ 0x2264af4

.thumb
branch_2264af4: @ 2264af4 :thumb
	ldr     r2, [sp, #0x8]
	mov     r0, r4
	ldrh    r2, [r2, #0x0]
	mov     r1, #0x1
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r4
	bl      Function_225df8c
	mov     r0, r5
	bl      Function_2262e8c
	b       branch_2264b5a
@ 0x2264b10

.thumb
branch_2264b10: @ 2264b10 :thumb
	mov     r0, r4
	bl      Function_225dfac
	cmp     r0, #0x1
	bne     branch_2264b5a
	mov     r0, r4
	bl      Function_225dfec
	mov     r0, r5
	bl      Function_2262e8c
	b       branch_2264b5a
@ 0x2264b28

.thumb
branch_2264b28: @ 2264b28 :thumb
	mov     r0, r5
	bl      Function_2262e64
	mov     r0, r4
	bl      Function_225dee8
	mov     r1, #0x1
	bl      0x222e3e4
	ldr     r0, [sp, #0xc]
	mov     r1, r6
	mov     r2, #0x1
	bl      Function_225cdec
	mov     r0, r4
	bl      Function_225df10
	ldr     r1, [sp, #0x0]
	ldr     r2, [pc, #0x10] @ 0x2264b60, (=0x226d9d0)
	mov     r3, #0x0
	bl      Function_2262e94
	b       branch_2264b5a
@ 0x2264b56

.thumb
branch_2264b56: @ 2264b56 :thumb
	bl      ErrorHandling
.thumb
branch_2264b5a: @ 2264b5a :thumb
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2264b60

.word 0x226d9d0 @ 0x2264b60
.thumb
Function_2264b64: @ 2264b64 :thumb
	push    {r3,lr}
	cmp     r0, #0x1d
	bhi     branch_2264bc2
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2264b76

Jumppoints_2264b76:
.hword branch_2264bc2 - Jumppoints_2264b76 - 2
.hword branch_2264bc2 - Jumppoints_2264b76 - 2
.hword branch_2264bc2 - Jumppoints_2264b76 - 2
.hword branch_2264bc2 - Jumppoints_2264b76 - 2
.hword branch_2264bc2 - Jumppoints_2264b76 - 2
.hword branch_2264bc2 - Jumppoints_2264b76 - 2
.hword branch_2264bba - Jumppoints_2264b76 - 2
.hword branch_2264bba - Jumppoints_2264b76 - 2
.hword branch_2264bba - Jumppoints_2264b76 - 2
.hword branch_2264bba - Jumppoints_2264b76 - 2
.hword branch_2264bba - Jumppoints_2264b76 - 2
.hword branch_2264bba - Jumppoints_2264b76 - 2
.hword branch_2264bba - Jumppoints_2264b76 - 2
.hword branch_2264bba - Jumppoints_2264b76 - 2
.hword branch_2264bbe - Jumppoints_2264b76 - 2
.hword branch_2264bbe - Jumppoints_2264b76 - 2
.hword branch_2264bbe - Jumppoints_2264b76 - 2
.hword branch_2264bbe - Jumppoints_2264b76 - 2
.hword branch_2264bbe - Jumppoints_2264b76 - 2
.hword branch_2264bbe - Jumppoints_2264b76 - 2
.hword branch_2264bbe - Jumppoints_2264b76 - 2
.hword branch_2264bbe - Jumppoints_2264b76 - 2
.hword branch_2264bb2 - Jumppoints_2264b76 - 2
.hword branch_2264bb2 - Jumppoints_2264b76 - 2
.hword branch_2264bb2 - Jumppoints_2264b76 - 2
.hword branch_2264bb2 - Jumppoints_2264b76 - 2
.hword branch_2264bb6 - Jumppoints_2264b76 - 2
.hword branch_2264bb6 - Jumppoints_2264b76 - 2
.hword branch_2264bb6 - Jumppoints_2264b76 - 2
.hword branch_2264bb6 - Jumppoints_2264b76 - 2
.thumb
branch_2264bb2: @ 2264bb2 :thumb
	mov     r0, #0x2
	pop     {r3,pc}
@ 0x2264bb6

.thumb
branch_2264bb6: @ 2264bb6 :thumb
	mov     r0, #0x3
	pop     {r3,pc}
@ 0x2264bba

.thumb
branch_2264bba: @ 2264bba :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2264bbe

.thumb
branch_2264bbe: @ 2264bbe :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2264bc2

.thumb
branch_2264bc2: @ 2264bc2 :thumb
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2264bca


.align 2, 0


.thumb
Function_2264bcc: @ 2264bcc :thumb
	push    {r3,lr}
	cmp     r0, #0x1d
	bhi     branch_2264c2a
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2264bde

Jumppoints_2264bde:
.hword branch_2264c2a - Jumppoints_2264bde - 2
.hword branch_2264c2a - Jumppoints_2264bde - 2
.hword branch_2264c2a - Jumppoints_2264bde - 2
.hword branch_2264c2a - Jumppoints_2264bde - 2
.hword branch_2264c2a - Jumppoints_2264bde - 2
.hword branch_2264c2a - Jumppoints_2264bde - 2
.hword branch_2264c22 - Jumppoints_2264bde - 2
.hword branch_2264c22 - Jumppoints_2264bde - 2
.hword branch_2264c22 - Jumppoints_2264bde - 2
.hword branch_2264c22 - Jumppoints_2264bde - 2
.hword branch_2264c22 - Jumppoints_2264bde - 2
.hword branch_2264c22 - Jumppoints_2264bde - 2
.hword branch_2264c22 - Jumppoints_2264bde - 2
.hword branch_2264c22 - Jumppoints_2264bde - 2
.hword branch_2264c26 - Jumppoints_2264bde - 2
.hword branch_2264c26 - Jumppoints_2264bde - 2
.hword branch_2264c26 - Jumppoints_2264bde - 2
.hword branch_2264c26 - Jumppoints_2264bde - 2
.hword branch_2264c26 - Jumppoints_2264bde - 2
.hword branch_2264c26 - Jumppoints_2264bde - 2
.hword branch_2264c26 - Jumppoints_2264bde - 2
.hword branch_2264c26 - Jumppoints_2264bde - 2
.hword branch_2264c1a - Jumppoints_2264bde - 2
.hword branch_2264c1a - Jumppoints_2264bde - 2
.hword branch_2264c1a - Jumppoints_2264bde - 2
.hword branch_2264c1a - Jumppoints_2264bde - 2
.hword branch_2264c1e - Jumppoints_2264bde - 2
.hword branch_2264c1e - Jumppoints_2264bde - 2
.hword branch_2264c1e - Jumppoints_2264bde - 2
.hword branch_2264c1e - Jumppoints_2264bde - 2
.thumb
branch_2264c1a: @ 2264c1a :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2264c1e

.thumb
branch_2264c1e: @ 2264c1e :thumb
	mov     r0, #0x2
	pop     {r3,pc}
@ 0x2264c22

.thumb
branch_2264c22: @ 2264c22 :thumb
	mov     r0, #0x6
	pop     {r3,pc}
@ 0x2264c26

.thumb
branch_2264c26: @ 2264c26 :thumb
	mov     r0, #0x7
	pop     {r3,pc}
@ 0x2264c2a

.thumb
branch_2264c2a: @ 2264c2a :thumb
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2264c32


.align 2, 0


.thumb
Function_2264c34: @ 2264c34 :thumb
	push    {r3,lr}
	cmp     r0, #0x1d
	bhi     branch_2264c92
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2264c46

Jumppoints_2264c46:
.hword branch_2264c92 - Jumppoints_2264c46 - 2
.hword branch_2264c92 - Jumppoints_2264c46 - 2
.hword branch_2264c92 - Jumppoints_2264c46 - 2
.hword branch_2264c92 - Jumppoints_2264c46 - 2
.hword branch_2264c92 - Jumppoints_2264c46 - 2
.hword branch_2264c92 - Jumppoints_2264c46 - 2
.hword branch_2264c8a - Jumppoints_2264c46 - 2
.hword branch_2264c8a - Jumppoints_2264c46 - 2
.hword branch_2264c8a - Jumppoints_2264c46 - 2
.hword branch_2264c8a - Jumppoints_2264c46 - 2
.hword branch_2264c8a - Jumppoints_2264c46 - 2
.hword branch_2264c8a - Jumppoints_2264c46 - 2
.hword branch_2264c8a - Jumppoints_2264c46 - 2
.hword branch_2264c8a - Jumppoints_2264c46 - 2
.hword branch_2264c8e - Jumppoints_2264c46 - 2
.hword branch_2264c8e - Jumppoints_2264c46 - 2
.hword branch_2264c8e - Jumppoints_2264c46 - 2
.hword branch_2264c8e - Jumppoints_2264c46 - 2
.hword branch_2264c8e - Jumppoints_2264c46 - 2
.hword branch_2264c8e - Jumppoints_2264c46 - 2
.hword branch_2264c8e - Jumppoints_2264c46 - 2
.hword branch_2264c8e - Jumppoints_2264c46 - 2
.hword branch_2264c82 - Jumppoints_2264c46 - 2
.hword branch_2264c82 - Jumppoints_2264c46 - 2
.hword branch_2264c82 - Jumppoints_2264c46 - 2
.hword branch_2264c82 - Jumppoints_2264c46 - 2
.hword branch_2264c86 - Jumppoints_2264c46 - 2
.hword branch_2264c86 - Jumppoints_2264c46 - 2
.hword branch_2264c86 - Jumppoints_2264c46 - 2
.hword branch_2264c86 - Jumppoints_2264c46 - 2
.thumb
branch_2264c82: @ 2264c82 :thumb
	mov     r0, #0x7
	pop     {r3,pc}
@ 0x2264c86

.thumb
branch_2264c86: @ 2264c86 :thumb
	mov     r0, #0x8
	pop     {r3,pc}
@ 0x2264c8a

.thumb
branch_2264c8a: @ 2264c8a :thumb
	mov     r0, #0x5
	pop     {r3,pc}
@ 0x2264c8e

.thumb
branch_2264c8e: @ 2264c8e :thumb
	mov     r0, #0x6
	pop     {r3,pc}
@ 0x2264c92

.thumb
branch_2264c92: @ 2264c92 :thumb
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2264c9a


.align 2, 0


.thumb
Function_2264c9c: @ 2264c9c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_2262e84
	cmp     r0, #0x0
	beq     branch_2264cb0
	cmp     r0, #0x1
	beq     branch_2264d06
	b       branch_2264d30
@ 0x2264cb0

.thumb
branch_2264cb0: @ 2264cb0 :thumb
	mov     r0, r4
	bl      Function_225dee8
	mov     r6, r0
	bl      0x222e12c
	cmp     r0, #0x1
	bne     branch_2264cce
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x3
	bl      Function_225e20c
	mov     r1, r0
	b       branch_2264cf2
@ 0x2264cce

.thumb
branch_2264cce: @ 2264cce :thumb
	mov     r0, r6
	bl      0x222e170
	cmp     r0, #0x1
	bne     branch_2264ce6
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x4e
	bl      Function_225e20c
	mov     r1, r0
	b       branch_2264cf2
@ 0x2264ce6

.thumb
branch_2264ce6: @ 2264ce6 :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x2
	bl      Function_225e20c
	mov     r1, r0
.thumb
branch_2264cf2: @ 2264cf2 :thumb
	mov     r0, r4
	bl      Function_225df8c
	ldr     r0, [pc, #0x38] @ 0x2264d34, (=0x5dc)
	bl      Function_2005748
	mov     r0, r5
	bl      Function_2262e8c
	b       branch_2264d30
@ 0x2264d06

.thumb
branch_2264d06: @ 2264d06 :thumb
	mov     r0, r4
	bl      Function_225dfac
	cmp     r0, #0x0
	beq     branch_2264d30
	mov     r0, r4
	bl      Function_225dfec
	mov     r0, r4
	bl      Function_225def0
	mov     r4, r0
	bl      Function_225ccac
	mov     r1, r0
	mov     r0, r4
	mov     r2, #0x1
	bl      Function_225cdec
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2264d30

.thumb
branch_2264d30: @ 2264d30 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2264d34

.word 0x5dc @ 0x2264d34
.thumb
Function_2264d38: @ 2264d38 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	str     r2, [sp, #0x0]
	bl      Function_225def0
	str     r0, [sp, #0x8]
	mov     r0, r5
	bl      Function_225def8
	mov     r7, r0
	mov     r0, r5
	bl      Function_225df08
	str     r0, [sp, #0xc]
	mov     r0, r5
	bl      Function_225dee8
	str     r0, [sp, #0x4]
	mov     r0, r6
	bl      Function_2262e80
	mov     r4, r0
	mov     r0, r6
	bl      Function_2262e84
	cmp     r0, #0xf
	bls     branch_2264d76
	b       branch_22650d2
@ 0x2264d76

.thumb
branch_2264d76: @ 2264d76 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2264d82

Jumppoints_2264d82:
.hword branch_2264da2 - Jumppoints_2264d82 - 2
.hword branch_2264dea - Jumppoints_2264d82 - 2
.hword branch_2264e5e - Jumppoints_2264d82 - 2
.hword branch_2264ef4 - Jumppoints_2264d82 - 2
.hword branch_2264f28 - Jumppoints_2264d82 - 2
.hword branch_2264f58 - Jumppoints_2264d82 - 2
.hword branch_2264f94 - Jumppoints_2264d82 - 2
.hword branch_2264faa - Jumppoints_2264d82 - 2
.hword branch_2264fc2 - Jumppoints_2264d82 - 2
.hword branch_2264fe2 - Jumppoints_2264d82 - 2
.hword branch_2265002 - Jumppoints_2264d82 - 2
.hword branch_2265022 - Jumppoints_2264d82 - 2
.hword branch_2265036 - Jumppoints_2264d82 - 2
.hword branch_2265046 - Jumppoints_2264d82 - 2
.hword branch_2265092 - Jumppoints_2264d82 - 2
.hword branch_22650a8 - Jumppoints_2264d82 - 2
.thumb
branch_2264da2: @ 2264da2 :thumb
	mov     r0, r6
	mov     r1, #0x18
	bl      Function_2262e3c
	mov     r4, r0
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x0]
	bl      Function_225cc70
	str     r0, [r4, #0xc]
	mov     r0, r5
	bl      Function_225df40
	cmp     r0, #0x21
	beq     branch_2264dca
	cmp     r0, #0x22
	beq     branch_2264dd0
	cmp     r0, #0x23
	beq     branch_2264dd6
	b       branch_2264ddc
@ 0x2264dca

.thumb
branch_2264dca: @ 2264dca :thumb
	mov     r0, #0x2
	strh    r0, [r4, #0x6]
	b       branch_2264de0
@ 0x2264dd0

.thumb
branch_2264dd0: @ 2264dd0 :thumb
	mov     r0, #0x1
	strh    r0, [r4, #0x6]
	b       branch_2264de0
@ 0x2264dd6

.thumb
branch_2264dd6: @ 2264dd6 :thumb
	mov     r0, #0x0
	strh    r0, [r4, #0x6]
	b       branch_2264de0
@ 0x2264ddc

.thumb
branch_2264ddc: @ 2264ddc :thumb
	bl      ErrorHandling
.thumb
branch_2264de0: @ 2264de0 :thumb
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_2262e88
	b       branch_22650d2
@ 0x2264dea

.thumb
branch_2264dea: @ 2264dea :thumb
	ldr     r0, [sp, #0x4]
	bl      0x222e170
	cmp     r0, #0x0
	bne     branch_2264e02
	mov     r0, #0x8
	strh    r0, [r4, #0x4]
	mov     r0, r6
	mov     r1, #0x6
	bl      Function_2262e88
	b       branch_22650d2
@ 0x2264e02

.thumb
branch_2264e02: @ 2264e02 :thumb
	ldr     r0, [sp, #0x4]
	bl      0x222e12c
	cmp     r0, #0x1
	bne     branch_2264e1a
	mov     r0, #0xa
	strh    r0, [r4, #0x4]
	mov     r0, r6
	mov     r1, #0x6
	bl      Function_2262e88
	b       branch_22650d2
@ 0x2264e1a

.thumb
branch_2264e1a: @ 2264e1a :thumb
	ldrh    r2, [r4, #0x6]
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x0]
	bl      0x222ebb4
	mov     r1, #0x0
	mvn     r1, r1
	str     r0, [r4, #0x0]
	cmp     r0, r1
	beq     branch_2264e50
	mov     r0, r6
	mov     r1, #0x2
	bl      Function_2262e88
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, #0x1f
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df9c
	mov     r0, r5
	bl      Function_225dfbc
	b       branch_22650d2
@ 0x2264e50

.thumb
branch_2264e50: @ 2264e50 :thumb
	mov     r0, #0x9
	strh    r0, [r4, #0x4]
	mov     r0, r6
	mov     r1, #0x6
	bl      Function_2262e88
	b       branch_22650d2
@ 0x2264e5e

.thumb
branch_2264e5e: @ 2264e5e :thumb
	ldr     r0, [pc, #0x278] @ 0x22650d8, (=0x21bf67c)
	mov     r1, #0x2
	ldr     r0, [r0, #0x48]
	tst     r1, r0
	bne     branch_2264e6e
	mov     r1, #0x80
	tst     r0, r1
	beq     branch_2264e8e
.thumb
branch_2264e6e: @ 2264e6e :thumb
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x0]
	bl      0x222ebc4
	mov     r0, r5
	bl      Function_225dfcc
	mov     r0, #0x6
	strb    r0, [r4, #0xa]
	mov     r0, #0xf
	strh    r0, [r4, #0x4]
	mov     r0, r6
	mov     r1, #0xc
	bl      Function_2262e88
	b       branch_22650d2
@ 0x2264e8e

.thumb
branch_2264e8e: @ 2264e8e :thumb
	mov     r0, r4
	mov     r1, r7
	bl      Function_2265104
	cmp     r0, #0x1
	beq     branch_2264e9c
	b       branch_22650d2
@ 0x2264e9c

.thumb
branch_2264e9c: @ 2264e9c :thumb
	mov     r0, r5
	bl      Function_225dfcc
	ldr     r0, [sp, #0x4]
	bl      0x222ec40
	mov     r0, #0x0
	strh    r0, [r4, #0x8]
	mov     r0, r5
	bl      Function_225dee8
	mov     r1, #0xa
	bl      0x222e3e4
	mov     r0, r5
	bl      Function_225df44
	ldr     r0, [sp, #0xc]
	bl      Function_2260b3c
	ldr     r0, [r4, #0xc]
	mov     r1, #0x0
	bl      Function_225d030
	ldr     r0, [r4, #0xc]
	mov     r1, #0x1
	bl      Function_225d06c
	ldr     r0, [pc, #0x204] @ 0x22650dc, (=0x5aa)
	bl      Function_2005748
	mov     r0, r5
	bl      Function_225e410
	mov     r0, #0x3
	strb    r0, [r4, #0xa]
	mov     r0, r6
	mov     r1, #0xc
	bl      Function_2262e88
	ldr     r0, [sp, #0x4]
	bl      0x222f000
	b       branch_22650d2
@ 0x2264ef4

.thumb
branch_2264ef4: @ 2264ef4 :thumb
	ldr     r2, [sp, #0xc]
	mov     r0, r4
	mov     r1, r7
	bl      Function_2265144
	cmp     r0, #0x1
	bne     branch_2264fb6
	ldr     r0, [r4, #0xc]
	mov     r1, #0x0
	bl      Function_225d06c
	ldr     r0, [r4, #0xc]
	mov     r1, #0x2
	bl      Function_225d060
	ldr     r0, [r4, #0xc]
	mov     r1, #0x8
	bl      Function_225d0b4
	mov     r0, r6
	mov     r1, #0x4
	bl      Function_2262e88
	mov     r0, #0x0
	strh    r0, [r4, #0x8]
	b       branch_22650d2
@ 0x2264f28

.thumb
branch_2264f28: @ 2264f28 :thumb
	mov     r0, r4
	mov     r1, r7
	mov     r2, r5
	bl      Function_2265344
	ldr     r1, [sp, #0xc]
	mov     r0, r4
	bl      Function_22650e4
	mov     r0, r4
	mov     r1, r7
	bl      Function_22652bc
	cmp     r0, #0x1
	bne     branch_2264fb6
	mov     r0, r6
	mov     r1, #0x5
	bl      Function_2262e88
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_225e43c
	b       branch_22650d2
@ 0x2264f58

.thumb
branch_2264f58: @ 2264f58 :thumb
	mov     r0, r4
	mov     r1, r7
	mov     r2, r5
	bl      Function_2265344
	ldr     r1, [sp, #0xc]
	mov     r0, r4
	bl      Function_22650e4
	ldr     r0, [r4, #0xc]
	add     r1, sp, #0x10
	bl      Function_225d054
	mov     r0, r4
	mov     r1, r7
	mov     r2, r5
	bl      Function_2265370
	mov     r0, #0x6
	ldr     r1, [sp, #0x10]
	lsl     r0, r0, #16
	cmp     r1, r0
	bge     branch_2264fb6
	mov     r0, #0x0
	strb    r0, [r4, #0xb]
	mov     r0, r6
	mov     r1, #0xd
	bl      Function_2262e88
	b       branch_22650d2
@ 0x2264f94

.thumb
branch_2264f94: @ 2264f94 :thumb
	ldr     r0, [sp, #0x8]
	ldr     r1, [r4, #0xc]
	mov     r2, #0x2
	mov     r3, #0x1
	bl      Function_225cdac
	mov     r0, r6
	mov     r1, #0x7
	bl      Function_2262e88
	b       branch_22650d2
@ 0x2264faa

.thumb
branch_2264faa: @ 2264faa :thumb
	ldr     r0, [r4, #0xc]
	mov     r1, #0x5
	bl      Function_225cd60
	cmp     r0, #0x0
	beq     branch_2264fb8
.thumb
branch_2264fb6: @ 2264fb6 :thumb
	b       branch_22650d2
@ 0x2264fb8

.thumb
branch_2264fb8: @ 2264fb8 :thumb
	ldrh    r1, [r4, #0x4]
	mov     r0, r6
	bl      Function_2262e88
	b       branch_22650d2
@ 0x2264fc2

.thumb
branch_2264fc2: @ 2264fc2 :thumb
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, #0x1e
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df8c
	mov     r0, #0xf
	strh    r0, [r4, #0x4]
	mov     r0, r6
	mov     r1, #0xb
	bl      Function_2262e88
	b       branch_22650d2
@ 0x2264fe2

.thumb
branch_2264fe2: @ 2264fe2 :thumb
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, #0x20
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df8c
	mov     r0, #0xf
	strh    r0, [r4, #0x4]
	mov     r0, r6
	mov     r1, #0xb
	bl      Function_2262e88
	b       branch_22650d2
@ 0x2265002

.thumb
branch_2265002: @ 2265002 :thumb
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, #0x21
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df8c
	mov     r0, #0xf
	strh    r0, [r4, #0x4]
	mov     r0, r6
	mov     r1, #0xb
	bl      Function_2262e88
	b       branch_22650d2
@ 0x2265022

.thumb
branch_2265022: @ 2265022 :thumb
	mov     r0, r5
	bl      Function_225dfac
	cmp     r0, #0x1
	bne     branch_22650d2
	ldrh    r1, [r4, #0x4]
	mov     r0, r6
	bl      Function_2262e88
	b       branch_22650d2
@ 0x2265036

.thumb
branch_2265036: @ 2265036 :thumb
	mov     r0, r5
	bl      Function_225dfec
	ldrb    r1, [r4, #0xa]
	mov     r0, r6
	bl      Function_2262e88
	b       branch_22650d2
@ 0x2265046

.thumb
branch_2265046: @ 2265046 :thumb
	mov     r0, r4
	mov     r1, r7
	mov     r2, r5
	bl      Function_2265344
	mov     r0, r4
	mov     r1, r7
	mov     r2, r5
	bl      Function_2265370
	ldrb    r0, [r4, #0xb]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0xb]
	ldrb    r0, [r4, #0xb]
	cmp     r0, #0x78
	bls     branch_22650d2
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_225df34
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_225df38
	mov     r0, r5
	bl      Function_225dfec
	mov     r0, r5
	bl      Function_225dee8
	mov     r1, #0xb
	bl      0x222e3e4
	mov     r0, r6
	mov     r1, #0xe
	bl      Function_2262e88
	b       branch_22650d2
@ 0x2265092

.thumb
branch_2265092: @ 2265092 :thumb
	mov     r0, r4
	mov     r1, r7
	mov     r2, r5
	bl      Function_2265344
	mov     r0, r4
	mov     r1, r7
	mov     r2, r5
	bl      Function_2265370
	b       branch_22650d2
@ 0x22650a8

.thumb
branch_22650a8: @ 22650a8 :thumb
	mov     r0, r5
	bl      Function_225df10
	mov     r7, r0
	mov     r0, r5
	bl      Function_225dfec
	ldr     r0, [sp, #0x8]
	ldr     r1, [r4, #0xc]
	mov     r2, #0x1
	bl      Function_225cdec
	mov     r0, r6
	bl      Function_2262e64
	ldr     r1, [sp, #0x0]
	ldr     r2, [pc, #0x14] @ 0x22650e0, (=0x226d9d0)
	mov     r0, r7
	mov     r3, #0x0
	bl      Function_2262e94
.thumb
branch_22650d2: @ 22650d2 :thumb
	mov     r0, #0x0
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x22650d8

.word 0x21bf67c @ 0x22650d8
.word 0x5aa @ 0x22650dc
.word 0x226d9d0 @ 0x22650e0
.thumb
Function_22650e4: @ 22650e4 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	ldr     r0, [r0, #0xc]
	mov     r4, r1
	add     r1, sp, #0x0
	bl      Function_225d054
	ldr     r1, [sp, #0x0]
	ldr     r2, [sp, #0x4]
	ldr     r3, [sp, #0x8]
	mov     r0, r4
	bl      Function_2260b18
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2265102


.align 2, 0


.thumb
Function_2265104: @ 2265104 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x20
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	add     r1, sp, #0x4
	add     r2, sp, #0x0
	bl      0x222ec04
	ldr     r1, [sp, #0x4]
	ldr     r2, [sp, #0x0]
	mov     r0, r4
	add     r3, sp, #0x8
	bl      Function_2262318
	ldr     r0, [r5, #0xc]
	add     r1, sp, #0x14
	bl      Function_225d054
	mov     r0, #0x1
	ldr     r1, [sp, #0x14]
	lsl     r0, r0, #16
	add     r1, r1, r0
	ldr     r0, [sp, #0x8]
	cmp     r1, r0
	blt     branch_226513e
	add     sp, #0x20
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x226513e

.thumb
branch_226513e: @ 226513e :thumb
	mov     r0, #0x0
	add     sp, #0x20
	pop     {r3-r5,pc}
@ 0x2265144

.thumb
Function_2265144: @ 2265144 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x34
	mov     r5, r0
	mov     r0, #0x8
	mov     r6, r1
	ldsh    r1, [r5, r0]
	mov     r7, r2
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r5, #0x8]
	ldsh    r0, [r5, r0]
	cmp     r0, #0x18
	bge     branch_2265160
	mov     r4, #0x0
	b       branch_2265166
@ 0x2265160

.thumb
branch_2265160: @ 2265160 :thumb
	mov     r0, #0x18
	strh    r0, [r5, #0x8]
	mov     r4, #0x1
.thumb
branch_2265166: @ 2265166 :thumb
	ldr     r0, [r5, #0x0]
	add     r1, sp, #0xc
	add     r2, sp, #0x8
	bl      0x222ec04
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x8]
	mov     r0, r6
	add     r3, sp, #0x1c
	bl      Function_2262318
	ldr     r0, [r5, #0xc]
	bl      Function_225cd34
	add     r1, sp, #0x0
	strh    r0, [r1, #0x0]
	lsr     r0, r0, #16
	strh    r0, [r1, #0x2]
	ldrh    r2, [r1, #0x0]
	add     r0, sp, #0x4
	strh    r2, [r1, #0x4]
	ldrh    r2, [r1, #0x2]
	strh    r2, [r1, #0x6]
	add     r1, sp, #0x28
	bl      Function_225c700
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	ldr     r1, [sp, #0x20]
	ldr     r0, [sp, #0x2c]
	sub     r6, r1, r0
	mov     r0, #0x8
	ldsh    r0, [r5, r0]
	cmp     r0, #0x0
	ble     branch_22651be
	lsl     r0, r0, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_22651cc
@ 0x22651be

.thumb
branch_22651be: @ 22651be :thumb
	lsl     r0, r0, #12
	blx     _fflt
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
.thumb
branch_22651cc: @ 22651cc :thumb
	blx     _ffix
	asr     r1, r0, #31
	asr     r3, r6, #31
	mov     r2, r6
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r0, r0, r2
	adc     r1, r3
	lsl     r1, r1, #20
	lsr     r0, r0, #12
	orr     r0, r1
	mov     r1, #0x6
	lsl     r1, r1, #14
	blx     FX_Div
	str     r0, [sp, #0x14]
	mov     r0, #0x8
	ldsh    r2, [r5, r0]
	cmp     r2, #0x4
	blt     branch_2265252
	ldr     r1, [sp, #0x24]
	ldr     r0, [sp, #0x30]
	sub     r6, r1, r0
	.hword  0x1f10 @ sub r0, r2, #0x4
	cmp     r0, #0x0
	ble     branch_226521a
	lsl     r0, r0, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_2265228
@ 0x226521a

.thumb
branch_226521a: @ 226521a :thumb
	lsl     r0, r0, #12
	blx     _fflt
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
.thumb
branch_2265228: @ 2265228 :thumb
	blx     _ffix
	asr     r1, r0, #31
	asr     r3, r6, #31
	mov     r2, r6
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r0, r0, r2
	adc     r1, r3
	lsl     r1, r1, #20
	lsr     r0, r0, #12
	orr     r0, r1
	mov     r1, #0x5
	lsl     r1, r1, #14
	blx     FX_Div
	str     r0, [sp, #0x18]
	b       branch_2265256
@ 0x2265252

.thumb
branch_2265252: @ 2265252 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x18]
.thumb
branch_2265256: @ 2265256 :thumb
	add     r0, sp, #0x10
	add     r1, sp, #0x28
	mov     r2, r0
	blx     VEC_Add
	ldr     r1, [sp, #0x10]
	ldr     r2, [sp, #0x14]
	ldr     r3, [sp, #0x18]
	mov     r0, r7
	bl      Function_2260b18
	mov     r0, #0x8
	ldsh    r1, [r5, r0]
	ldr     r0, [pc, #0x40] @ 0x22652b4, (=0x7fff)
	mul     r0, r1
	mov     r1, #0x18
	blx     _s32_div_f
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	asr     r0, r0, #4
	lsl     r2, r0, #2
	ldr     r0, [pc, #0x34] @ 0x22652b8, (=Unknown_20f983c)
	ldr     r1, [sp, #0x14]
	ldsh    r3, [r0, r2]
	asr     r0, r3, #31
	lsr     r2, r3, #16
	lsl     r0, r0, #16
	orr     r0, r2
	mov     r2, #0x2
	lsl     r6, r3, #16
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r6, r2
	adc     r0, r3
	lsl     r0, r0, #20
	lsr     r2, r2, #12
	orr     r2, r0
	add     r0, r1, r2
	str     r0, [sp, #0x14]
	ldr     r0, [r5, #0xc]
	add     r1, sp, #0x10
	bl      Function_225d048
	mov     r0, r4
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x22652b4

.word 0x7fff @ 0x22652b4
.word Unknown_20f983c @ 0x22652b8
.thumb
Function_22652bc: @ 22652bc :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r0, #0x8
	ldsh    r1, [r5, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r5, #0x8]
	ldsh    r0, [r5, r0]
	cmp     r0, #0x10
	bge     branch_22652d4
	mov     r6, #0x0
	b       branch_22652da
@ 0x22652d4

.thumb
branch_22652d4: @ 22652d4 :thumb
	mov     r0, #0x10
	strh    r0, [r5, #0x8]
	mov     r6, #0x1
.thumb
branch_22652da: @ 22652da :thumb
	mov     r0, #0x8
	ldsh    r0, [r5, r0]
	mov     r3, #0x0
	lsr     r2, r0, #31
	lsl     r1, r0, #29
	sub     r1, r1, r2
	mov     r0, #0x1d
	ror     r1, r0
	add     r1, r2, r1
	ldr     r0, [pc, #0x4c] @ 0x226533c, (=0x7fff)
	mov     r2, r1
	mul     r2, r0
	asr     r0, r2, #2
	lsr     r0, r0, #29
	add     r0, r2, r0
	lsl     r0, r0, #13
	lsr     r0, r0, #16
	asr     r0, r0, #4
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x3c] @ 0x2265340, (=Unknown_20f983c)
	mov     r2, #0x3
	ldsh    r0, [r0, r1]
	lsl     r2, r2, #12
	asr     r1, r0, #31
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r4, r2, #12
	orr     r4, r0
	ldr     r0, [r5, #0xc]
	add     r1, sp, #0x0
	bl      Function_225d054
	ldr     r0, [sp, #0x4]
	add     r1, sp, #0x0
	add     r0, r0, r4
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0xc]
	bl      Function_225d048
	mov     r0, r6
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x226533a


.align 2


.word 0x7fff @ 0x226533c
.word Unknown_20f983c @ 0x2265340
.thumb
Function_2265344: @ 2265344 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	add     r1, sp, #0x0
	add     r2, sp, #0x4
	bl      0x222ec04
	ldr     r1, [sp, #0x0]
	ldr     r2, [sp, #0x4]
	mov     r0, r4
	add     r3, sp, #0x8
	bl      Function_2262318
	ldr     r0, [r5, #0xc]
	add     r1, sp, #0x8
	bl      Function_225d048
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x226536e


.align 2, 0


.thumb
Function_2265370: @ 2265370 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r2
	add     r1, sp, #0x4
	add     r2, sp, #0x0
	bl      0x222ec04
	ldr     r1, [sp, #0x4]
	mov     r0, r4
	bl      Function_225e420
	cmp     r0, #0x1
	bne     branch_22653a4
	mov     r0, r5
	add     r0, #0x10
	bl      Function_2263334
	cmp     r0, #0x0
	bne     branch_22653b8
	mov     r0, r5
	add     r0, #0x10
	bl      Function_2263270
	b       branch_22653b8
@ 0x22653a4

.thumb
branch_22653a4: @ 22653a4 :thumb
	mov     r0, r5
	add     r0, #0x10
	bl      Function_2263334
	cmp     r0, #0x1
	bne     branch_22653b8
	mov     r0, r5
	add     r0, #0x10
	bl      Function_226332c
.thumb
branch_22653b8: @ 22653b8 :thumb
	mov     r0, r5
	add     r0, #0x10
	bl      Function_2263290
	mov     r4, r0
	ldr     r0, [r5, #0xc]
	add     r1, sp, #0x8
	bl      Function_225d054
	ldr     r0, [sp, #0xc]
	add     r1, sp, #0x8
	add     r0, r0, r4
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0xc]
	bl      Function_225d048
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x22653dc

.thumb
Function_22653dc: @ 22653dc :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x12
	bl      Function_225e00c
	mov     r4, #0x1
	mov     r6, #0x0
	mov     r7, r4
.thumb
branch_22653f0: @ 22653f0 :thumb
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	bl      Function_225e30c
	mov     r0, r5
	mov     r1, r7
	mov     r2, #0x6
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r5
	mov     r2, r4
	bl      Function_225e044
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x12
	blt     branch_22653f0
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0x7
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_225e044
	ldr     r2, [sp, #0x0]
	ldr     r3, [pc, #0x20] @ 0x226544c, (=0x226da98)
	add     r2, #0x8
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	mov     r0, r5
	bl      Function_225e054
	ldr     r1, [sp, #0x0]
	str     r0, [r1, #0x8]
	pop     {r3-r7,pc}
@ 0x226544a


.align 2


.word 0x226da98 @ 0x226544c
.thumb
Function_2265450: @ 2265450 :thumb
	ldr     r3, [pc, #0x4] @ 0x2265458, (=0x225e035)
	mov     r0, r1
	bx      r3
@ 0x2265456


.align 2


.word Function_225e034+1 @ =0x225e035, 0x2265458
.thumb
Function_226545c: @ 226545c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r6, r1
	mov     r5, r0
	mov     r0, r6
	mov     r4, r2
	bl      Function_225dee8
	str     r0, [sp, #0x8]
	mov     r0, r6
	bl      Function_225def0
	mov     r1, r4
	str     r0, [sp, #0xc]
	bl      Function_225cc70
	mov     r7, r0
	mov     r0, r5
	bl      Function_2262e80
	str     r0, [sp, #0x10]
	mov     r0, r6
	bl      Function_225df10
	str     r0, [sp, #0x14]
	mov     r0, r5
	bl      Function_2262e84
	cmp     r0, #0x5
	bhi     branch_2265516
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22654a4

Jumppoints_22654a4:
.hword branch_22654b0 - Jumppoints_22654a4 - 2
.hword branch_22654c0 - Jumppoints_22654a4 - 2
.hword branch_22654e4 - Jumppoints_22654a4 - 2
.hword branch_2265528 - Jumppoints_22654a4 - 2
.hword branch_22655da - Jumppoints_22654a4 - 2
.hword branch_22655ec - Jumppoints_22654a4 - 2
.thumb
branch_22654b0: @ 22654b0 :thumb
	mov     r0, r5
	mov     r1, #0x8
	bl      Function_2262e3c
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2262e88
.thumb
branch_22654c0: @ 22654c0 :thumb
	ldr     r0, [sp, #0x8]
	mov     r1, r4
	bl      0x222e02c
	mov     r6, r0
	ldr     r0, [sp, #0x8]
	mov     r1, r4
	bl      0x222e34c
	cmp     r6, #0x1
	beq     branch_22654da
	cmp     r0, #0x1
	bne     branch_2265516
.thumb
branch_22654da: @ 22654da :thumb
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_2262e88
	b       branch_2265620
@ 0x22654e4

.thumb
branch_22654e4: @ 22654e4 :thumb
	ldr     r0, [sp, #0x8]
	mov     r1, r4
	bl      0x222e374
	mov     r6, r0
	bne     branch_22654fa
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2262e88
	b       branch_2265620
@ 0x22654fa

.thumb
branch_22654fa: @ 22654fa :thumb
	bl      0x222e8d8
	cmp     r0, #0x1
	bne     branch_2265516
	mov     r0, r6
	bl      0x222e858
	mov     r2, r0
	ldr     r0, [sp, #0xc]
	mov     r1, r4
	bl      Function_225cbb8
	cmp     r0, #0x0
	bne     branch_2265518
.thumb
branch_2265516: @ 2265516 :thumb
	b       branch_2265620
@ 0x2265518

.thumb
branch_2265518: @ 2265518 :thumb
	mov     r1, #0x0
	bl      Function_225d0c0
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_2262e88
	b       branch_2265620
@ 0x2265528

.thumb
branch_2265528: @ 2265528 :thumb
	ldr     r0, [sp, #0x8]
	mov     r1, r4
	bl      0x222e374
	cmp     r0, #0x0
	bne     branch_2265548
	cmp     r7, #0x0
	beq     branch_226553e
	mov     r0, r7
	bl      Function_225cc54
.thumb
branch_226553e: @ 226553e :thumb
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2262e88
	b       branch_2265620
@ 0x2265548

.thumb
branch_2265548: @ 2265548 :thumb
	bl      0x222e71c
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x10]
	ldr     r1, [sp, #0x8]
	mov     r2, r6
	mov     r3, r7
	bl      Function_2265ccc
	cmp     r0, #0x0
	beq     branch_22655a6
	mov     r0, r5
	mov     r1, #0x5
	bl      Function_2262e88
	ldr     r0, [sp, #0xc]
	mov     r1, r7
	mov     r2, #0x0
	bl      Function_225cdec
	lsl     r1, r4, #24
	mov     r0, r6
	lsr     r1, r1, #24
	mov     r2, #0x1
	bl      Function_225df6c
	lsl     r1, r4, #24
	mov     r0, r6
	lsr     r1, r1, #24
	mov     r2, #0x1
	bl      Function_225df4c
	mov     r0, r7
	mov     r1, #0x0
	bl      Function_225d030
	ldr     r0, [sp, #0x14]
	ldr     r2, [pc, #0x8c] @ 0x2265628, (=0x226d9f0)
	ldr     r3, [sp, #0x10]
	mov     r1, r4
	bl      Function_2262ec0
	b       branch_2265620
@ 0x22655a6

.thumb
branch_22655a6: @ 22655a6 :thumb
	ldr     r0, [sp, #0xc]
	mov     r1, r7
	mov     r2, #0x4
	bl      Function_225cdec
	mov     r0, r5
	mov     r1, #0x4
	bl      Function_2262e88
	lsl     r1, r4, #24
	mov     r0, r6
	lsr     r1, r1, #24
	mov     r2, #0x1
	bl      Function_225df4c
	lsl     r1, r4, #24
	mov     r0, r6
	lsr     r1, r1, #24
	mov     r2, #0x1
	bl      Function_225df6c
	mov     r0, r7
	mov     r1, #0x1
	bl      Function_225d0c0
	b       branch_2265620
@ 0x22655da

.thumb
branch_22655da: @ 22655da :thumb
	mov     r0, r7
	bl      Function_225ce38
	cmp     r0, #0x1
	bne     branch_2265620
	mov     r0, r5
	bl      Function_2262e8c
	b       branch_2265620
@ 0x22655ec

.thumb
branch_22655ec: @ 22655ec :thumb
	mov     r0, r5
	bl      Function_2262e64
	ldr     r0, [sp, #0xc]
	mov     r1, r7
	mov     r2, #0x2
	bl      Function_225cdec
	ldr     r0, [sp, #0x14]
	ldr     r2, [pc, #0x2c] @ 0x226562c, (=0x226d9d8)
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_2262e94
	lsl     r1, r4, #24
	mov     r0, r6
	lsr     r1, r1, #24
	mov     r2, #0x0
	bl      Function_225df4c
	lsl     r1, r4, #24
	mov     r0, r6
	lsr     r1, r1, #24
	mov     r2, #0x0
	bl      Function_225df6c
.thumb
branch_2265620: @ 2265620 :thumb
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2265626


.align 2


.word 0x226d9f0 @ 0x2265628
.word 0x226d9d8 @ 0x226562c
.thumb
Function_2265630: @ 2265630 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r1
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r4, r2
	bl      Function_225dee8
	mov     r6, r0
	mov     r0, r5
	bl      Function_225def0
	str     r0, [sp, #0x10]
	mov     r0, r5
	bl      Function_225df10
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	mov     r1, r4
	bl      Function_225cc70
	mov     r7, r0
	ldr     r0, [sp, #0x10]
	bl      Function_225ccac
	ldr     r0, [sp, #0x8]
	bl      Function_2262e80
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x8]
	bl      Function_2262e84
	cmp     r0, #0x0
	beq     branch_226567a
	cmp     r0, #0x1
	beq     branch_226568c
	b       branch_22657ba
@ 0x226567a

.thumb
branch_226567a: @ 226567a :thumb
	ldr     r0, [sp, #0x8]
	mov     r1, #0x8
	bl      Function_2262e3c
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x8]
	mov     r1, #0x1
	bl      Function_2262e88
.thumb
branch_226568c: @ 226568c :thumb
	mov     r0, r6
	mov     r1, r4
	bl      0x222e058
	cmp     r0, #0x0
	beq     branch_22656ce
	ldr     r0, [sp, #0x8]
	bl      Function_2262e64
	ldr     r0, [sp, #0x10]
	mov     r1, r7
	mov     r2, #0x0
	bl      Function_225cdec
	lsl     r1, r4, #24
	mov     r0, r5
	lsr     r1, r1, #24
	mov     r2, #0x1
	bl      Function_225df6c
	lsl     r1, r4, #24
	mov     r0, r5
	lsr     r1, r1, #24
	mov     r2, #0x1
	bl      Function_225df4c
	ldr     r0, [sp, #0xc]
	ldr     r2, [pc, #0xfc] @ 0x22657c0, (=0x226d9e0)
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_2262e94
	b       branch_22657ba
@ 0x22656ce

.thumb
branch_22656ce: @ 22656ce :thumb
	mov     r0, r6
	mov     r1, r4
	bl      0x222e09c
	mov     r0, r6
	bl      0x222e170
	cmp     r0, #0x1
	bne     branch_226572e
	mov     r0, r6
	mov     r1, r4
	bl      0x222eba4
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_226572e
	ldr     r0, [sp, #0x10]
	mov     r1, r7
	mov     r2, #0x0
	bl      Function_225cdec
	lsl     r1, r4, #24
	mov     r0, r5
	lsr     r1, r1, #24
	mov     r2, #0x1
	bl      Function_225df6c
	lsl     r1, r4, #24
	mov     r0, r5
	lsr     r1, r1, #24
	mov     r2, #0x1
	bl      Function_225df4c
	mov     r0, r7
	mov     r1, #0x0
	bl      Function_225d030
	ldr     r0, [sp, #0x8]
	bl      Function_2262e64
	ldr     r0, [sp, #0xc]
	ldr     r2, [pc, #0xa0] @ 0x22657c4, (=0x226d9e8)
	ldr     r3, [sp, #0x14]
	mov     r1, r4
	bl      Function_2262e94
	b       branch_22657ba
@ 0x226572e

.thumb
branch_226572e: @ 226572e :thumb
	mov     r0, r6
	mov     r1, r4
	bl      0x222e374
	bl      0x222e71c
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x14]
	mov     r1, r6
	mov     r2, r5
	mov     r3, r7
	bl      Function_2265ccc
	cmp     r0, #0x0
	beq     branch_226578c
	ldr     r0, [sp, #0x10]
	mov     r1, r7
	mov     r2, #0x0
	bl      Function_225cdec
	lsl     r1, r4, #24
	mov     r0, r5
	lsr     r1, r1, #24
	mov     r2, #0x1
	bl      Function_225df6c
	lsl     r1, r4, #24
	mov     r0, r5
	lsr     r1, r1, #24
	mov     r2, #0x1
	bl      Function_225df4c
	mov     r0, r7
	mov     r1, #0x0
	bl      Function_225d030
	ldr     r0, [sp, #0xc]
	ldr     r2, [pc, #0x44] @ 0x22657c8, (=0x226d9f0)
	ldr     r3, [sp, #0x14]
	mov     r1, r4
	bl      Function_2262ec0
	b       branch_22657ba
@ 0x226578c

.thumb
branch_226578c: @ 226578c :thumb
	mov     r0, r6
	mov     r1, r4
	bl      0x222eb54
	cmp     r0, #0x1
	bne     branch_22657ba
	ldr     r0, [sp, #0x10]
	mov     r1, r7
	mov     r2, #0x0
	bl      Function_225cdec
	lsl     r1, r4, #24
	mov     r0, r5
	lsr     r1, r1, #24
	mov     r2, #0x1
	bl      Function_225df4c
	ldr     r0, [sp, #0xc]
	ldr     r2, [pc, #0x18] @ 0x22657cc, (=0x226da18)
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_2262ec0
.thumb
branch_22657ba: @ 22657ba :thumb
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x22657c0

.word 0x226d9e0 @ 0x22657c0
.word 0x226d9e8 @ 0x22657c4
.word 0x226d9f0 @ 0x22657c8
.word 0x226da18 @ 0x22657cc
.thumb
Function_22657d0: @ 22657d0 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r5, r0
	str     r2, [sp, #0x0]
	mov     r0, r6
	bl      Function_225def0
	ldr     r1, [sp, #0x0]
	mov     r7, r0
	bl      Function_225cc70
	mov     r4, r0
	mov     r0, r5
	bl      Function_2262e84
	cmp     r0, #0x0
	beq     branch_22657fc
	cmp     r0, #0x1
	beq     branch_226580e
	cmp     r0, #0x2
	beq     branch_2265820
	b       branch_2265836
@ 0x22657fc

.thumb
branch_22657fc: @ 22657fc :thumb
	mov     r0, r7
	mov     r1, r4
	mov     r2, #0x3
	bl      Function_225cdec
	mov     r0, r5
	bl      Function_2262e8c
	b       branch_2265836
@ 0x226580e

.thumb
branch_226580e: @ 226580e :thumb
	mov     r0, r4
	bl      Function_225ce38
	cmp     r0, #0x0
	beq     branch_2265836
	mov     r0, r5
	bl      Function_2262e8c
	b       branch_2265836
@ 0x2265820

.thumb
branch_2265820: @ 2265820 :thumb
	mov     r0, r4
	bl      Function_225cc54
	mov     r0, r6
	bl      Function_225df10
	ldr     r1, [sp, #0x0]
	ldr     r2, [pc, #0xc] @ 0x226583c, (=0x226da10)
	mov     r3, #0x0
	bl      Function_2262e94
.thumb
branch_2265836: @ 2265836 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x226583a


.align 2


.word 0x226da10 @ 0x226583c
.thumb
Function_2265840: @ 2265840 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x40
	mov     r6, r1
	mov     r5, r0
	mov     r0, r6
	mov     r7, r2
	bl      Function_225dee8
	str     r0, [sp, #0x0]
	mov     r0, r6
	bl      Function_225def0
	str     r0, [sp, #0x8]
	mov     r0, r6
	bl      Function_225def8
	str     r0, [sp, #0x4]
	mov     r0, r5
	bl      Function_2262e80
	mov     r4, r0
	mov     r0, r5
	bl      Function_2262e84
	cmp     r0, #0x4
	bhi     branch_22658de
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2265880

Jumppoints_2265880:
.hword branch_226588a - Jumppoints_2265880 - 2
.hword branch_22658d4 - Jumppoints_2265880 - 2
.hword branch_226593a - Jumppoints_2265880 - 2
.hword branch_22659e8 - Jumppoints_2265880 - 2
.hword branch_2265a58 - Jumppoints_2265880 - 2
.thumb
branch_226588a: @ 226588a :thumb
	mov     r0, r5
	mov     r1, #0x20
	bl      Function_2262e3c
	mov     r4, r0
	ldr     r0, [sp, #0x8]
	mov     r1, r7
	bl      Function_225cc70
	str     r0, [r4, #0x0]
	ldr     r0, [sp, #0x0]
	mov     r1, r7
	bl      0x222eba4
	mov     r1, #0x0
	mvn     r1, r1
	str     r0, [r4, #0x4]
	cmp     r0, r1
	bne     branch_22658b4
	bl      ErrorHandling
.thumb
branch_22658b4: @ 22658b4 :thumb
	mov     r2, r4
	ldr     r0, [r4, #0x4]
	add     r1, r4, #0x4
	add     r2, #0x8
	bl      0x222ec04
	ldr     r0, [sp, #0x8]
	ldr     r1, [r4, #0x0]
	mov     r2, #0x3
	bl      Function_225cdec
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2262e88
	b       branch_2265a74
@ 0x22658d4

.thumb
branch_22658d4: @ 22658d4 :thumb
	ldr     r0, [r4, #0x0]
	bl      Function_225ce38
	cmp     r0, #0x0
	bne     branch_22658e0
.thumb
branch_22658de: @ 22658de :thumb
	b       branch_2265a74
@ 0x22658e0

.thumb
branch_22658e0: @ 22658e0 :thumb
	ldr     r0, [sp, #0x4]
	ldr     r1, [r4, #0x4]
	ldr     r2, [r4, #0x8]
	add     r3, sp, #0x34
	bl      Function_2262318
	mov     r0, #0x1
	ldr     r1, [sp, #0x34]
	lsl     r0, r0, #16
	sub     r0, r1, r0
	str     r0, [r4, #0x10]
	ldr     r0, [r4, #0x0]
	add     r1, sp, #0x34
	bl      Function_225d054
	ldr     r0, [sp, #0x38]
	mov     r3, sp
	str     r0, [r4, #0xc]
	mov     r1, #0x0
	str     r1, [r4, #0x14]
	add     r0, sp, #0xc
	strh    r1, [r0, #0x0]
	strh    r1, [r0, #0x2]
	add     r1, sp, #0xc
	ldrh    r2, [r1, #0x0]
	ldr     r0, [r4, #0x0]
	.hword  0x1f1b @ sub r3, r3, #0x4
	strh    r2, [r3, #0x0]
	ldrh    r1, [r1, #0x2]
	strh    r1, [r3, #0x2]
	ldr     r1, [r3, #0x0]
	bl      Function_225ccb4
	ldr     r0, [pc, #0x158] @ 0x2265a7c, (=0x64f)
	bl      Function_2005748
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      Function_225d084
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_2262e88
	b       branch_2265a74
@ 0x226593a

.thumb
branch_226593a: @ 226593a :thumb
	ldr     r0, [r4, #0x14]
	mov     r6, #0x0
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x14]
	cmp     r0, #0x18
	blt     branch_226594c
	mov     r0, #0x18
	str     r0, [r4, #0x14]
	mov     r6, #0x1
.thumb
branch_226594c: @ 226594c :thumb
	ldr     r0, [sp, #0x4]
	ldr     r1, [r4, #0x4]
	ldr     r2, [r4, #0x8]
	add     r3, sp, #0x28
	bl      Function_2262318
	ldr     r0, [sp, #0x30]
	ldr     r1, [sp, #0x2c]
	str     r0, [sp, #0x24]
	ldr     r0, [r4, #0x10]
	str     r0, [sp, #0x1c]
	ldr     r0, [r4, #0xc]
	sub     r7, r1, r0
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x0
	ble     branch_226597e
	lsl     r0, r0, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_226598c
@ 0x226597e

.thumb
branch_226597e: @ 226597e :thumb
	lsl     r0, r0, #12
	blx     _fflt
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
.thumb
branch_226598c: @ 226598c :thumb
	blx     _ffix
	asr     r1, r0, #31
	asr     r3, r7, #31
	mov     r2, r7
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r0, r0, r2
	adc     r1, r3
	lsl     r1, r1, #20
	lsr     r0, r0, #12
	orr     r0, r1
	mov     r1, #0x6
	lsl     r1, r1, #14
	blx     FX_Div
	str     r0, [sp, #0x20]
	ldr     r1, [r4, #0xc]
	add     r0, r0, r1
	str     r0, [sp, #0x20]
	ldr     r0, [r4, #0x0]
	add     r1, sp, #0x1c
	bl      Function_225d048
	cmp     r6, #0x1
	bne     branch_2265a74
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	bl      Function_225d084
	ldr     r0, [r4, #0x0]
	mov     r1, #0x8
	bl      Function_225d0b4
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2
	bl      Function_225d060
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_2262e88
	b       branch_2265a74
@ 0x22659e8

.thumb
branch_22659e8: @ 22659e8 :thumb
	ldr     r1, [r4, #0x4]
	mov     r0, r6
	bl      Function_225e420
	cmp     r0, #0x1
	bne     branch_2265a0a
	mov     r0, r4
	add     r0, #0x18
	bl      Function_2263334
	cmp     r0, #0x0
	bne     branch_2265a1e
	mov     r0, r4
	add     r0, #0x18
	bl      Function_2263270
	b       branch_2265a1e
@ 0x2265a0a

.thumb
branch_2265a0a: @ 2265a0a :thumb
	mov     r0, r4
	add     r0, #0x18
	bl      Function_2263334
	cmp     r0, #0x1
	bne     branch_2265a1e
	mov     r0, r4
	add     r0, #0x18
	bl      Function_226332c
.thumb
branch_2265a1e: @ 2265a1e :thumb
	mov     r0, r4
	add     r0, #0x18
	bl      Function_2263290
	mov     r6, r0
	ldr     r0, [sp, #0x4]
	ldr     r1, [r4, #0x4]
	ldr     r2, [r4, #0x8]
	add     r3, sp, #0x10
	bl      Function_2262318
	ldr     r0, [sp, #0x14]
	add     r1, sp, #0x10
	add     r0, r0, r6
	str     r0, [sp, #0x14]
	ldr     r0, [r4, #0x0]
	bl      Function_225d048
	ldr     r0, [sp, #0x0]
	ldr     r1, [r4, #0x4]
	bl      0x222eb7c
	cmp     r0, #0x2
	bne     branch_2265a74
	mov     r0, r5
	mov     r1, #0x4
	bl      Function_2262e88
	b       branch_2265a74
@ 0x2265a58

.thumb
branch_2265a58: @ 2265a58 :thumb
	ldr     r0, [r4, #0x0]
	bl      Function_225cc54
	mov     r0, r5
	bl      Function_2262e64
	mov     r0, r6
	bl      Function_225df10
	ldr     r2, [pc, #0x14] @ 0x2265a80, (=0x226da10)
	mov     r1, r7
	mov     r3, #0x0
	bl      Function_2262e94
.thumb
branch_2265a74: @ 2265a74 :thumb
	mov     r0, #0x0
	add     sp, #0x40
	pop     {r3-r7,pc}
@ 0x2265a7a


.align 2


.word 0x64f @ 0x2265a7c
.word 0x226da10 @ 0x2265a80
.thumb
Function_2265a84: @ 2265a84 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	str     r1, [sp, #0x0]
	mov     r7, r0
	mov     r4, r2
	bl      Function_2262e38
	mov     r6, r0
	ldr     r0, [sp, #0x0]
	bl      Function_225dee8
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x0]
	bl      Function_225def0
	str     r0, [sp, #0xc]
	mov     r1, r4
	bl      Function_225cc70
	mov     r5, r0
	ldr     r0, [sp, #0xc]
	bl      Function_225ccac
	str     r0, [sp, #0x10]
	mov     r0, r7
	bl      Function_2262e84
	cmp     r0, #0xa
	bhi     branch_2265b68
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2265aca

Jumppoints_2265aca:
.hword branch_2265ae0 - Jumppoints_2265aca - 2
.hword branch_2265af8 - Jumppoints_2265aca - 2
.hword branch_2265b0a - Jumppoints_2265aca - 2
.hword branch_2265b1c - Jumppoints_2265aca - 2
.hword branch_2265b5e - Jumppoints_2265aca - 2
.hword branch_2265b94 - Jumppoints_2265aca - 2
.hword branch_2265c3e - Jumppoints_2265aca - 2
.hword branch_2265b0a - Jumppoints_2265aca - 2
.hword branch_2265c50 - Jumppoints_2265aca - 2
.hword branch_2265b0a - Jumppoints_2265aca - 2
.hword branch_2265c9e - Jumppoints_2265aca - 2
.thumb
branch_2265ae0: @ 2265ae0 :thumb
	ldrb    r0, [r6, #0x4]
	cmp     r0, #0x0
	bne     branch_2265aee
	mov     r0, r7
	bl      Function_2262e8c
	b       branch_2265cc6
@ 0x2265aee

.thumb
branch_2265aee: @ 2265aee :thumb
	mov     r0, r7
	mov     r1, #0x3
	bl      Function_2262e88
	b       branch_2265cc6
@ 0x2265af8

.thumb
branch_2265af8: @ 2265af8 :thumb
	ldr     r0, [sp, #0xc]
	mov     r1, r5
	mov     r2, #0x3
	bl      Function_225cdec
	mov     r0, r7
	bl      Function_2262e8c
	b       branch_2265cc6
@ 0x2265b0a

.thumb
branch_2265b0a: @ 2265b0a :thumb
	mov     r0, r5
	bl      Function_225ce38
	cmp     r0, #0x1
	bne     branch_2265b68
	mov     r0, r7
	bl      Function_2262e8c
	b       branch_2265cc6
@ 0x2265b1c

.thumb
branch_2265b1c: @ 2265b1c :thumb
	mov     r0, r5
	bl      Function_225cd34
	add     r2, sp, #0x14
	strh    r0, [r2, #0x0]
	lsr     r0, r0, #16
	strh    r0, [r2, #0x2]
	ldrh    r0, [r2, #0x0]
	add     r1, sp, #0x1c
	strh    r0, [r2, #0x8]
	ldrh    r0, [r2, #0x2]
	strh    r0, [r2, #0xa]
	mov     r0, r5
	bl      Function_225d03c
	mov     r0, r5
	bl      Function_225d0cc
	cmp     r0, #0x0
	bne     branch_2265b4c
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_225d0c0
.thumb
branch_2265b4c: @ 2265b4c :thumb
	ldr     r0, [sp, #0xc]
	mov     r1, r5
	mov     r2, #0x4
	bl      Function_225cdec
	mov     r0, r7
	bl      Function_2262e8c
	b       branch_2265cc6
@ 0x2265b5e

.thumb
branch_2265b5e: @ 2265b5e :thumb
	mov     r0, r5
	bl      Function_225ce38
	cmp     r0, #0x1
	beq     branch_2265b6a
.thumb
branch_2265b68: @ 2265b68 :thumb
	b       branch_2265cc6
@ 0x2265b6a

.thumb
branch_2265b6a: @ 2265b6a :thumb
	mov     r0, r7
	bl      Function_2262e8c
	ldr     r0, [sp, #0xc]
	mov     r1, r5
	mov     r2, #0x0
	bl      Function_225cdec
	lsl     r1, r4, #24
	ldr     r0, [sp, #0x0]
	lsr     r1, r1, #24
	mov     r2, #0x0
	bl      Function_225df4c
	lsl     r1, r4, #24
	ldr     r0, [sp, #0x0]
	lsr     r1, r1, #24
	mov     r2, #0x0
	bl      Function_225df6c
	b       branch_2265cc6
@ 0x2265b94

.thumb
branch_2265b94: @ 2265b94 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldrb    r0, [r6, #0x3]
	cmp     r0, #0x1
	bne     branch_2265bd4
	ldr     r0, [sp, #0x8]
	bl      0x222eeac
	cmp     r0, #0x0
	bne     branch_2265bd4
	ldr     r0, [sp, #0x8]
	bl      0x222e3bc
	bl      0x222e71c
	cmp     r0, #0x9
	bne     branch_2265bd4
	ldr     r0, [sp, #0x8]
	bl      0x222eea0
	mov     r0, r5
	mov     r1, #0x6
	bl      Function_225cd60
	bl      0x222c0ac
	mov     r3, r0
	ldr     r0, [sp, #0xc]
	ldr     r1, [sp, #0x10]
	mov     r2, #0x0
	bl      Function_225cdac
.thumb
branch_2265bd4: @ 2265bd4 :thumb
	ldr     r0, [sp, #0x8]
	mov     r1, r4
	bl      0x222e374
	mov     r5, r0
	bne     branch_2265be6
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	b       branch_2265c18
@ 0x2265be6

.thumb
branch_2265be6: @ 2265be6 :thumb
	ldrb    r0, [r6, #0x3]
	cmp     r0, #0x1
	bne     branch_2265bfc
	ldr     r0, [sp, #0x8]
	bl      0x222edf4
	cmp     r0, #0x0
	bne     branch_2265bfc
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	b       branch_2265c18
@ 0x2265bfc

.thumb
branch_2265bfc: @ 2265bfc :thumb
	ldr     r0, [sp, #0x8]
	mov     r1, r4
	bl      0x222e09c
	cmp     r0, #0x0
	beq     branch_2265c18
	mov     r0, r5
	bl      0x222e71c
	ldrb    r1, [r6, #0x2]
	cmp     r0, r1
	beq     branch_2265c18
	mov     r0, #0x1
	str     r0, [sp, #0x4]
.thumb
branch_2265c18: @ 2265c18 :thumb
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x1
	bne     branch_2265cc6
	mov     r0, r7
	bl      Function_2262e8c
	lsl     r1, r4, #24
	ldr     r0, [sp, #0x0]
	lsr     r1, r1, #24
	mov     r2, #0x1
	bl      Function_225df4c
	lsl     r1, r4, #24
	ldr     r0, [sp, #0x0]
	lsr     r1, r1, #24
	mov     r2, #0x1
	bl      Function_225df6c
	b       branch_2265cc6
@ 0x2265c3e

.thumb
branch_2265c3e: @ 2265c3e :thumb
	ldr     r0, [sp, #0xc]
	mov     r1, r5
	mov     r2, #0x3
	bl      Function_225cdec
	mov     r0, r7
	bl      Function_2262e8c
	b       branch_2265cc6
@ 0x2265c50

.thumb
branch_2265c50: @ 2265c50 :thumb
	ldr     r0, [sp, #0xc]
	bl      Function_225ccac
	ldrb    r1, [r6, #0x0]
	ldrb    r2, [r6, #0x1]
	bl      Function_225cedc
	cmp     r0, #0x0
	bne     branch_2265cc6
	ldrb    r0, [r6, #0x0]
	mov     r3, sp
	add     r1, sp, #0x14
	lsl     r0, r0, #4
	strh    r0, [r1, #0x4]
	ldrb    r0, [r6, #0x1]
	.hword  0x1f1b @ sub r3, r3, #0x4
	lsl     r0, r0, #4
	strh    r0, [r1, #0x6]
	ldrh    r2, [r1, #0x4]
	mov     r0, r5
	strh    r2, [r3, #0x0]
	ldrh    r1, [r1, #0x6]
	strh    r1, [r3, #0x2]
	ldr     r1, [r3, #0x0]
	bl      Function_225ccb4
	mov     r0, r5
	add     r1, sp, #0x18
	bl      Function_225d03c
	ldr     r0, [sp, #0xc]
	mov     r1, r5
	mov     r2, #0x4
	bl      Function_225cdec
	mov     r0, r7
	bl      Function_2262e8c
	b       branch_2265cc6
@ 0x2265c9e

.thumb
branch_2265c9e: @ 2265c9e :thumb
	ldr     r0, [sp, #0xc]
	mov     r1, r5
	mov     r2, #0x2
	bl      Function_225cdec
	lsl     r1, r4, #24
	ldr     r0, [sp, #0x0]
	lsr     r1, r1, #24
	mov     r2, #0x0
	bl      Function_225df4c
	lsl     r1, r4, #24
	ldr     r0, [sp, #0x0]
	lsr     r1, r1, #24
	mov     r2, #0x0
	bl      Function_225df6c
	add     sp, #0x20
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2265cc6

.thumb
branch_2265cc6: @ 2265cc6 :thumb
	mov     r0, #0x0
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x2265ccc

.thumb
Function_2265ccc: @ 2265ccc :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r6, r2
	mov     r4, r0
	mov     r0, r6
	str     r1, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r7, #0x0
	bl      Function_225def0
	mov     r5, r0
	bl      Function_225ccac
	str     r0, [sp, #0xc]
	mov     r0, r6
	bl      Function_225df00
	mov     r6, r0
	ldr     r0, [sp, #0x8]
	mov     r1, #0x4
	bl      Function_225cd60
	str     r0, [sp, #0x10]
	mov     r0, #0x1
	str     r0, [sp, #0x20]
	add     r0, sp, #0x28
	ldrb    r0, [r0, #0x10]
	cmp     r0, #0xe
	bhi     branch_2265d44
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2265d12

Jumppoints_2265d12:
.hword branch_2265e50 - Jumppoints_2265d12 - 2
.hword branch_2265e50 - Jumppoints_2265d12 - 2
.hword branch_2265d30 - Jumppoints_2265d12 - 2
.hword branch_2265d4c - Jumppoints_2265d12 - 2
.hword branch_2265d66 - Jumppoints_2265d12 - 2
.hword branch_2265d80 - Jumppoints_2265d12 - 2
.hword branch_2265d9e - Jumppoints_2265d12 - 2
.hword branch_2265dbc - Jumppoints_2265d12 - 2
.hword branch_2265dda - Jumppoints_2265d12 - 2
.hword branch_2265dfe - Jumppoints_2265d12 - 2
.hword branch_2265df8 - Jumppoints_2265d12 - 2
.hword branch_2265e50 - Jumppoints_2265d12 - 2
.hword branch_2265e50 - Jumppoints_2265d12 - 2
.hword branch_2265e50 - Jumppoints_2265d12 - 2
.hword branch_2265e50 - Jumppoints_2265d12 - 2
.thumb
branch_2265d30: @ 2265d30 :thumb
	add     r0, sp, #0x1c
	str     r0, [sp, #0x0]
	ldr     r2, [pc, #0x17c] @ 0x2265eb4, (=0x226da28)
	mov     r0, r6
	mov     r1, r5
	mov     r3, #0x4
	bl      Function_2265ed0
	cmp     r0, #0x0
	beq     branch_2265d46
.thumb
branch_2265d44: @ 2265d44 :thumb
	b       branch_2265e56
@ 0x2265d46

.thumb
branch_2265d46: @ 2265d46 :thumb
	add     sp, #0x24
	mov     r0, r7
	pop     {r4-r7,pc}
@ 0x2265d4c

.thumb
branch_2265d4c: @ 2265d4c :thumb
	add     r0, sp, #0x1c
	str     r0, [sp, #0x0]
	ldr     r2, [pc, #0x164] @ 0x2265eb8, (=0x226da58)
	mov     r0, r6
	mov     r1, r5
	mov     r3, #0x4
	bl      Function_2265ed0
	cmp     r0, #0x0
	bne     branch_2265e56
	add     sp, #0x24
	mov     r0, r7
	pop     {r4-r7,pc}
@ 0x2265d66

.thumb
branch_2265d66: @ 2265d66 :thumb
	add     r0, sp, #0x1c
	str     r0, [sp, #0x0]
	ldr     r2, [pc, #0x150] @ 0x2265ebc, (=0x226da38)
	mov     r0, r6
	mov     r1, r5
	mov     r3, #0x4
	bl      Function_2265ed0
	cmp     r0, #0x0
	bne     branch_2265e56
	add     sp, #0x24
	mov     r0, r7
	pop     {r4-r7,pc}
@ 0x2265d80

.thumb
branch_2265d80: @ 2265d80 :thumb
	mov     r0, r7
	str     r0, [sp, #0x20]
	add     r0, sp, #0x1c
	str     r0, [sp, #0x0]
	ldr     r2, [pc, #0x134] @ 0x2265ec0, (=0x226dab8)
	mov     r0, r6
	mov     r1, r5
	mov     r3, #0x8
	bl      Function_2265ed0
	cmp     r0, #0x0
	bne     branch_2265e56
	add     sp, #0x24
	mov     r0, r7
	pop     {r4-r7,pc}
@ 0x2265d9e

.thumb
branch_2265d9e: @ 2265d9e :thumb
	mov     r0, r7
	str     r0, [sp, #0x20]
	add     r0, sp, #0x1c
	str     r0, [sp, #0x0]
	ldr     r2, [pc, #0x11c] @ 0x2265ec4, (=0x226dad8)
	mov     r0, r6
	mov     r1, r5
	mov     r3, #0x8
	bl      Function_2265ed0
	cmp     r0, #0x0
	bne     branch_2265e56
	add     sp, #0x24
	mov     r0, r7
	pop     {r4-r7,pc}
@ 0x2265dbc

.thumb
branch_2265dbc: @ 2265dbc :thumb
	mov     r0, #0x3
	str     r0, [sp, #0x20]
	add     r0, sp, #0x1c
	str     r0, [sp, #0x0]
	ldr     r2, [pc, #0x100] @ 0x2265ec8, (=0x226da48)
	mov     r0, r6
	mov     r1, r5
	mov     r3, #0x4
	bl      Function_2265ed0
	cmp     r0, #0x0
	bne     branch_2265e56
	add     sp, #0x24
	mov     r0, r7
	pop     {r4-r7,pc}
@ 0x2265dda

.thumb
branch_2265dda: @ 2265dda :thumb
	mov     r0, r7
	str     r0, [sp, #0x20]
	add     r0, sp, #0x1c
	str     r0, [sp, #0x0]
	ldr     r2, [pc, #0xe8] @ 0x2265ecc, (=0x226da68)
	mov     r0, r6
	mov     r1, r5
	mov     r3, #0x4
	bl      Function_2265ed0
	cmp     r0, #0x0
	bne     branch_2265e56
	add     sp, #0x24
	mov     r0, r7
	pop     {r4-r7,pc}
@ 0x2265df8

.thumb
branch_2265df8: @ 2265df8 :thumb
	add     sp, #0x24
	mov     r0, r7
	pop     {r4-r7,pc}
@ 0x2265dfe

.thumb
branch_2265dfe: @ 2265dfe :thumb
	ldr     r0, [sp, #0x4]
	bl      0x222edf4
	cmp     r0, #0x0
	bne     branch_2265e0e
	add     sp, #0x24
	mov     r0, r7
	pop     {r4-r7,pc}
@ 0x2265e0e

.thumb
branch_2265e0e: @ 2265e0e :thumb
	ldr     r0, [sp, #0x4]
	bl      0x222ee08
	cmp     r0, #0x0
	bne     branch_2265e1e
	add     sp, #0x24
	mov     r0, r7
	pop     {r4-r7,pc}
@ 0x2265e1e

.thumb
branch_2265e1e: @ 2265e1e :thumb
	ldr     r0, [sp, #0x4]
	bl      0x222ee1c
	ldr     r1, [sp, #0x10]
	cmp     r1, r0
	beq     branch_2265e30
	add     sp, #0x24
	mov     r0, r7
	pop     {r4-r7,pc}
@ 0x2265e30

.thumb
branch_2265e30: @ 2265e30 :thumb
	ldr     r1, [sp, #0xc]
	mov     r0, r5
	add     r2, sp, #0x20
	add     r3, sp, #0x1c
	bl      Function_225cf4c
	cmp     r0, #0x1
	beq     branch_2265e44
	bl      ErrorHandling
.thumb
branch_2265e44: @ 2265e44 :thumb
	ldr     r0, [sp, #0x20]
	bl      0x222c0ac
	str     r0, [sp, #0x20]
	mov     r7, #0x1
	b       branch_2265e56
@ 0x2265e50

.thumb
branch_2265e50: @ 2265e50 :thumb
	add     sp, #0x24
	mov     r0, r7
	pop     {r4-r7,pc}
@ 0x2265e56

.thumb
branch_2265e56: @ 2265e56 :thumb
	ldr     r0, [sp, #0x8]
	bl      Function_225cd34
	add     r1, sp, #0x14
	strh    r0, [r1, #0x0]
	lsr     r0, r0, #16
	strh    r0, [r1, #0x2]
	ldrh    r0, [r1, #0x0]
	mov     r3, sp
	.hword  0x1f1b @ sub r3, r3, #0x4
	strh    r0, [r1, #0x4]
	ldrh    r0, [r1, #0x2]
	strh    r0, [r1, #0x6]
	ldrh    r2, [r1, #0x8]
	ldr     r0, [sp, #0x8]
	strh    r2, [r3, #0x0]
	ldrh    r1, [r1, #0xa]
	strh    r1, [r3, #0x2]
	ldr     r1, [r3, #0x0]
	ldr     r2, [sp, #0x20]
	bl      Function_225cd04
	add     r1, sp, #0x14
	mov     r0, #0x4
	ldsh    r2, [r1, r0]
	asr     r0, r2, #3
	lsr     r0, r0, #28
	add     r0, r2, r0
	asr     r0, r0, #4
	strb    r0, [r4, #0x0]
	mov     r0, #0x6
	ldsh    r1, [r1, r0]
	asr     r0, r1, #3
	lsr     r0, r0, #28
	add     r0, r1, r0
	asr     r0, r0, #4
	strb    r0, [r4, #0x1]
	add     r0, sp, #0x28
	ldrb    r0, [r0, #0x10]
	strb    r0, [r4, #0x2]
	ldr     r0, [sp, #0x3c]
	strb    r7, [r4, #0x3]
	strb    r0, [r4, #0x4]
	mov     r0, #0x1
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x2265eb2


.align 2


.word 0x226da28 @ 0x2265eb4
.word 0x226da58 @ 0x2265eb8
.word 0x226da38 @ 0x2265ebc
.word 0x226dab8 @ 0x2265ec0
.word 0x226dad8 @ 0x2265ec4
.word 0x226da48 @ 0x2265ec8
.word 0x226da68 @ 0x2265ecc
.thumb
Function_2265ed0: @ 2265ed0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r7, r0
	ldr     r0, [sp, #0x20]
	mov     r5, r2
	str     r1, [sp, #0x4]
	mov     r6, r3
	str     r0, [sp, #0x20]
	ldr     r4, [pc, #0x50] @ 0x2265f34, (=0x0)
	beq     branch_2265f2c
.thumb
branch_2265ee4: @ 2265ee4 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	add     r2, sp, #0x8
	ldr     r1, [r5, #0x0]
	mov     r0, r7
	add     r2, #0x2
	add     r3, sp, #0x8
	bl      Function_225c8d8
	cmp     r0, #0x1
	bne     branch_2265f24
	add     r1, sp, #0x8
	add     r2, sp, #0x8
	ldrh    r1, [r1, #0x2]
	ldrh    r2, [r2, #0x0]
	ldr     r0, [sp, #0x4]
	bl      Function_225ce7c
	cmp     r0, #0x0
	bne     branch_2265f24
	add     r1, sp, #0x8
	ldrh    r0, [r1, #0x2]
	lsl     r2, r0, #4
	ldr     r0, [sp, #0x20]
	strh    r2, [r0, #0x0]
	ldrh    r0, [r1, #0x0]
	lsl     r1, r0, #4
	ldr     r0, [sp, #0x20]
	add     sp, #0xc
	strh    r1, [r0, #0x2]
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x2265f24

.thumb
branch_2265f24: @ 2265f24 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, r6
	bcc     branch_2265ee4
.thumb
branch_2265f2c: @ 2265f2c :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2265f32


.align 2


.word 0x0 @ 0x2265f34
.thumb
Function_2265f38: @ 2265f38 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x40
	mov     r7, r0
	mov     r5, r1
	str     r2, [sp, #0x10]
	bl      Function_2262e38
	mov     r6, r0
	mov     r0, r7
	bl      Function_2262e80
	mov     r4, r0
	mov     r0, r5
	bl      Function_225dee8
	str     r0, [sp, #0x34]
	mov     r0, r7
	bl      Function_2262e84
	cmp     r0, #0x1b
	bhi     branch_2266050
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2265f6e

Jumppoints_2265f6e:
.hword branch_2266050 - Jumppoints_2265f6e - 2
.hword branch_2266050 - Jumppoints_2265f6e - 2
.hword branch_2266050 - Jumppoints_2265f6e - 2
.hword branch_2266050 - Jumppoints_2265f6e - 2
.hword branch_2266050 - Jumppoints_2265f6e - 2
.hword branch_2266050 - Jumppoints_2265f6e - 2
.hword branch_2266050 - Jumppoints_2265f6e - 2
.hword branch_2266024 - Jumppoints_2265f6e - 2
.hword branch_2265fee - Jumppoints_2265f6e - 2
.hword branch_2265fa6 - Jumppoints_2265f6e - 2
.hword branch_2265fa6 - Jumppoints_2265f6e - 2
.hword branch_2265fa6 - Jumppoints_2265f6e - 2
.hword branch_2265fa6 - Jumppoints_2265f6e - 2
.hword branch_2265fa6 - Jumppoints_2265f6e - 2
.hword branch_2265fa6 - Jumppoints_2265f6e - 2
.hword branch_2266050 - Jumppoints_2265f6e - 2
.hword branch_2266050 - Jumppoints_2265f6e - 2
.hword branch_2266024 - Jumppoints_2265f6e - 2
.hword branch_2266024 - Jumppoints_2265f6e - 2
.hword branch_2266024 - Jumppoints_2265f6e - 2
.hword branch_2266024 - Jumppoints_2265f6e - 2
.hword branch_2266024 - Jumppoints_2265f6e - 2
.hword branch_2266024 - Jumppoints_2265f6e - 2
.hword branch_2266050 - Jumppoints_2265f6e - 2
.hword branch_2266050 - Jumppoints_2265f6e - 2
.hword branch_2266050 - Jumppoints_2265f6e - 2
.hword branch_2265fa6 - Jumppoints_2265f6e - 2
.hword branch_2265fa6 - Jumppoints_2265f6e - 2
.thumb
branch_2265fa6: @ 2265fa6 :thumb
	ldrb    r0, [r6, #0x1]
	bl      0x2233224
	ldrh    r1, [r4, #0x8]
	cmp     r1, r0
	bls     branch_2265fc0
	mov     r0, #0x4
	strb    r0, [r6, #0x0]
	mov     r0, r7
	mov     r1, #0x17
	bl      Function_2262e88
	b       branch_2266050
@ 0x2265fc0

.thumb
branch_2265fc0: @ 2265fc0 :thumb
	bl      Function_2035e18
	ldrh    r1, [r4, #0x8]
	cmp     r1, r0
	ble     branch_2265fd8
	mov     r0, #0x4
	strb    r0, [r6, #0x0]
	mov     r0, r7
	mov     r1, #0x17
	bl      Function_2262e88
	b       branch_2266050
@ 0x2265fd8

.thumb
branch_2265fd8: @ 2265fd8 :thumb
	bl      Function_20388ac
	cmp     r0, #0x0
	bne     branch_2265fee
	mov     r0, #0x4
	strb    r0, [r6, #0x0]
	mov     r0, r7
	mov     r1, #0x17
	bl      Function_2262e88
	b       branch_2266050
@ 0x2265fee

.thumb
branch_2265fee: @ 2265fee :thumb
	bl      0x2233374
	cmp     r0, #0x1
	bne     branch_226600e
	ldrb    r0, [r6, #0x1]
	bl      0x2233224
	cmp     r0, #0x1
	bhi     branch_226600e
	mov     r0, #0x4
	strb    r0, [r6, #0x0]
	mov     r0, r7
	mov     r1, #0x17
	bl      Function_2262e88
	b       branch_2266050
@ 0x226600e

.thumb
branch_226600e: @ 226600e :thumb
	ldr     r0, [r4, #0x10]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x10]
	bpl     branch_2266024
	mov     r0, #0x4
	strb    r0, [r6, #0x0]
	mov     r0, r7
	mov     r1, #0x17
	bl      Function_2262e88
	b       branch_2266050
@ 0x2266024

.thumb
branch_2266024: @ 2266024 :thumb
	bl      Function_20380e4
	cmp     r0, #0x5
	bhi     branch_2266050
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2266038

Jumppoints_2266038:
.hword branch_2266050 - Jumppoints_2266038 - 2
.hword branch_2266050 - Jumppoints_2266038 - 2
.hword branch_2266044 - Jumppoints_2266038 - 2
.hword branch_2266044 - Jumppoints_2266038 - 2
.hword branch_2266044 - Jumppoints_2266038 - 2
.hword branch_2266044 - Jumppoints_2266038 - 2
.thumb
branch_2266044: @ 2266044 :thumb
	mov     r0, #0x4
	strb    r0, [r6, #0x0]
	mov     r0, r7
	mov     r1, #0x17
	bl      Function_2262e88
.thumb
branch_2266050: @ 2266050 :thumb
	mov     r0, r7
	bl      Function_2262e84
	cmp     r0, #0x1c
	bls     branch_226605e
	bl      Function_22669ac
.thumb
branch_226605e: @ 226605e :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x226606a

Jumppoints_226606a:
.hword branch_22660a4 - Jumppoints_226606a - 2
.hword branch_22660b6 - Jumppoints_226606a - 2
.hword branch_22660fa - Jumppoints_226606a - 2
.hword branch_2266118 - Jumppoints_226606a - 2
.hword branch_226613e - Jumppoints_226606a - 2
.hword branch_22661ac - Jumppoints_226606a - 2
.hword branch_22661ca - Jumppoints_226606a - 2
.hword branch_22662b4 - Jumppoints_226606a - 2
.hword branch_2266472 - Jumppoints_226606a - 2
.hword branch_22664fa - Jumppoints_226606a - 2
.hword branch_226654e - Jumppoints_226606a - 2
.hword branch_226657a - Jumppoints_226606a - 2
.hword branch_22665f2 - Jumppoints_226606a - 2
.hword branch_2266620 - Jumppoints_226606a - 2
.hword branch_226665a - Jumppoints_226606a - 2
.hword branch_2266700 - Jumppoints_226606a - 2
.hword branch_2266750 - Jumppoints_226606a - 2
.hword branch_2266776 - Jumppoints_226606a - 2
.hword branch_226679e - Jumppoints_226606a - 2
.hword branch_22667ae - Jumppoints_226606a - 2
.hword branch_2266806 - Jumppoints_226606a - 2
.hword branch_2266866 - Jumppoints_226606a - 2
.hword branch_22668b8 - Jumppoints_226606a - 2
.hword branch_2266902 - Jumppoints_226606a - 2
.hword branch_2266914 - Jumppoints_226606a - 2
.hword branch_2266926 - Jumppoints_226606a - 2
.hword branch_226693a - Jumppoints_226606a - 2
.hword branch_226695e - Jumppoints_226606a - 2
.hword branch_2266988 - Jumppoints_226606a - 2
.thumb
branch_22660a4: @ 22660a4 :thumb
	mov     r0, r7
	mov     r1, #0x44
	bl      Function_2262e3c
	mov     r0, r7
	bl      Function_2262e8c
	bl      Function_22669ac
.thumb
branch_22660b6: @ 22660b6 :thumb
	ldr     r0, [sp, #0x34]
	bl      0x222e210
	cmp     r0, #0x0
	beq     branch_22660d0
	mov     r0, #0x7
	strb    r0, [r6, #0x0]
	mov     r0, r7
	mov     r1, #0x1c
	bl      Function_2262e88
	bl      Function_22669ac
.thumb
branch_22660d0: @ 22660d0 :thumb
	ldr     r0, [sp, #0x34]
	bl      0x222e190
	cmp     r0, #0x0
	beq     branch_22660ea
	mov     r0, #0x2
	strb    r0, [r6, #0x0]
	mov     r0, r7
	mov     r1, #0x1c
	bl      Function_2262e88
	bl      Function_22669ac
.thumb
branch_22660ea: @ 22660ea :thumb
	ldr     r0, [pc, #0x2d8] @ 0x22663c4, (=0x5dd)
	bl      Function_2005748
	mov     r0, r7
	bl      Function_2262e8c
	bl      Function_22669ac
.thumb
branch_22660fa: @ 22660fa :thumb
	ldrb    r1, [r6, #0x2]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_225e27c
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, r7
	mov     r2, r5
	mov     r3, #0x0
	bl      Function_2266af0
	bl      Function_22669ac
.thumb
branch_2266118: @ 2266118 :thumb
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x3
	mov     r3, #0x1
	bl      Function_2266b30
	add     r4, #0x18
	mov     r2, #0x0
	mov     r0, r5
	mov     r1, r4
	mov     r3, r2
	bl      Function_225e074
	mov     r0, r7
	mov     r1, #0x4
	bl      Function_2262e88
	bl      Function_22669ac
.thumb
branch_226613e: @ 226613e :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x30]
	mov     r0, r5
	bl      Function_225e0d4
	cmp     r0, #0x2
	bhi     branch_226615a
	cmp     r0, #0x0
	beq     branch_2266182
	cmp     r0, #0x1
	beq     branch_2266174
	cmp     r0, #0x2
	beq     branch_2266162
	b       branch_226618e
@ 0x226615a

.thumb
branch_226615a: @ 226615a :thumb
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	bne     branch_226618e
.thumb
branch_2266162: @ 2266162 :thumb
	mov     r0, #0x5
	strb    r0, [r6, #0x0]
	mov     r0, r7
	mov     r1, #0x1c
	bl      Function_2262e88
	mov     r0, #0x1
	str     r0, [sp, #0x30]
	b       branch_226618e
@ 0x2266174

.thumb
branch_2266174: @ 2266174 :thumb
	mov     r0, r7
	mov     r1, #0x5
	bl      Function_2262e88
	mov     r0, #0x1
	str     r0, [sp, #0x30]
	b       branch_226618e
@ 0x2266182

.thumb
branch_2266182: @ 2266182 :thumb
	mov     r0, r7
	mov     r1, #0x6
	bl      Function_2262e88
	mov     r0, #0x1
	str     r0, [sp, #0x30]
.thumb
branch_226618e: @ 226618e :thumb
	ldr     r0, [sp, #0x30]
	cmp     r0, #0x1
	beq     branch_2266198
	bl      Function_22669ac
.thumb
branch_2266198: @ 2266198 :thumb
	mov     r1, #0x0
	mov     r0, r5
	mov     r2, r1
	bl      Function_225e0e4
	mov     r0, r4
	mov     r1, r5
	bl      Function_2266ba0
	b       Function_22669ac
@ 0x22661ac

.thumb
branch_22661ac: @ 22661ac :thumb
	ldrb    r1, [r6, #0x2]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_225e27c
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	ldrb    r3, [r6, #0x2]
	mov     r0, r4
	mov     r1, r7
	mov     r2, r5
	add     r3, #0x22
	bl      Function_2266af0
	b       Function_22669ac
@ 0x22661ca

.thumb
branch_22661ca: @ 22661ca :thumb
	ldr     r0, [sp, #0x34]
	bl      0x222e190
	cmp     r0, #0x0
	beq     branch_22661e2
	mov     r0, #0x2
	strb    r0, [r6, #0x0]
	mov     r0, r7
	mov     r1, #0x1c
	bl      Function_2262e88
	b       Function_22669ac
@ 0x22661e2

.thumb
branch_22661e2: @ 22661e2 :thumb
	ldrb    r0, [r6, #0x1]
	bl      0x2233184
	cmp     r0, #0x1
	bne     branch_2266226
	ldrb    r0, [r6, #0x1]
	bl      0x22331e4
	cmp     r0, #0x0
	beq     branch_2266200
	ldrb    r0, [r6, #0x1]
	bl      0x22331a4
	cmp     r0, #0x0
	bne     branch_226620e
.thumb
branch_2266200: @ 2266200 :thumb
	mov     r0, #0x1
	strb    r0, [r6, #0x0]
	mov     r0, r7
	mov     r1, #0x1c
	bl      Function_2262e88
	b       Function_22669ac
@ 0x226620e

.thumb
branch_226620e: @ 226620e :thumb
	ldrb    r0, [r6, #0x1]
	bl      0x22332f8
	cmp     r0, #0x0
	bne     branch_2266226
	mov     r0, #0x7
	strb    r0, [r6, #0x0]
	mov     r0, r7
	mov     r1, #0x1c
	bl      Function_2262e88
	b       Function_22669ac
@ 0x2266226

.thumb
branch_2266226: @ 2266226 :thumb
	ldrb    r0, [r6, #0x1]
	bl      0x22332f8
	strh    r0, [r4, #0x0]
	mov     r0, #0xe1
	lsl     r0, r0, #2
	str     r0, [r4, #0x10]
	mov     r1, #0x0
	ldsh    r2, [r4, r1]
	ldr     r0, [pc, #0x18c] @ 0x22663c8, (=0x14a)
	cmp     r2, r0
	ble     branch_2266248
	mov     r0, r5
	mov     r2, #0xa
	bl      Function_225e20c
	b       branch_2266254
@ 0x2266248

.thumb
branch_2266248: @ 2266248 :thumb
	mov     r0, #0x1
	str     r0, [r4, #0x14]
	mov     r0, r5
	mov     r2, #0xb
	bl      Function_225e20c
.thumb
branch_2266254: @ 2266254 :thumb
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df9c
	mov     r0, r5
	bl      Function_225dfbc
	ldrb    r0, [r6, #0x1]
	bl      Function_203883c
	bl      0x2233374
	cmp     r0, #0x1
	bne     branch_226628a
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldrb    r1, [r6, #0x2]
	ldr     r0, [sp, #0x34]
	ldr     r3, [sp, #0x10]
	mov     r2, #0x1
	bl      0x222ea10
	mov     r0, #0x1
	strb    r0, [r4, #0x7]
.thumb
branch_226628a: @ 226628a :thumb
	mov     r0, #0x0
	ldsh    r0, [r4, r0]
	mov     r1, r5
	mov     r3, #0x1
	str     r0, [sp, #0x0]
	ldrb    r2, [r6, #0x2]
	mov     r0, r4
	add     r0, #0x3c
	bl      Function_2266c68
	add     r4, #0x3c
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x1
	bl      Function_2266cfc
	mov     r0, r7
	mov     r1, #0x7
	bl      Function_2262e88
	b       Function_22669ac
@ 0x22662b4

.thumb
branch_22662b4: @ 22662b4 :thumb
	bl      Function_20388ac
	str     r0, [sp, #0x2c]
	ldrb    r0, [r6, #0x1]
	bl      0x2233224
	str     r0, [sp, #0x28]
	ldrb    r0, [r6, #0x1]
	bl      0x22332f8
	strh    r0, [r4, #0x0]
	mov     r1, #0x0
	mov     r0, r4
	ldsh    r1, [r4, r1]
	add     r0, #0x3c
	bl      Function_2266ccc
	mov     r0, #0x0
	ldsh    r1, [r4, r0]
	ldr     r0, [pc, #0xec] @ 0x22663c8, (=0x14a)
	cmp     r1, r0
	bgt     branch_2266308
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x0
	bne     branch_2266308
	mov     r0, r5
	bl      Function_225dfcc
	mov     r0, #0x1
	str     r0, [r4, #0x14]
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, #0xb
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df9c
	mov     r0, r5
	bl      Function_225dfbc
.thumb
branch_2266308: @ 2266308 :thumb
	mov     r0, r4
	add     r0, #0x3c
	mov     r1, r5
	mov     r2, #0x0
	bl      Function_2266cf0
	ldr     r0, [sp, #0x2c]
	cmp     r0, #0x0
	bne     branch_2266328
	mov     r0, #0x4
	strb    r0, [r6, #0x0]
	mov     r0, r7
	mov     r1, #0x17
	bl      Function_2262e88
	b       Function_22669ac
@ 0x2266328

.thumb
branch_2266328: @ 2266328 :thumb
	cmp     r0, #0x2
	bne     branch_226637e
	mov     r0, #0x8
	strb    r0, [r6, #0x0]
	ldr     r0, [sp, #0x28]
	cmp     r0, #0x4
	bne     branch_226633a
	mov     r6, #0x10
	b       branch_226633c
@ 0x226633a

.thumb
branch_226633a: @ 226633a :thumb
	mov     r6, #0x12
.thumb
branch_226633c: @ 226633c :thumb
	mov     r0, r5
	bl      Function_225dfcc
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, r6
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df9c
	mov     r0, r5
	bl      Function_225dfbc
	mov     r0, r7
	mov     r1, #0x9
	bl      Function_2262e88
	ldr     r0, [sp, #0x28]
	mov     r1, #0x0
	strh    r0, [r4, #0x8]
	mov     r0, r4
	add     r0, #0x3c
	bl      Function_2266ccc
	add     r4, #0x3c
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x0
	bl      Function_2266cf0
	b       Function_22669ac
@ 0x226637e

.thumb
branch_226637e: @ 226637e :thumb
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x0
	bne     branch_22663d4
	ldr     r0, [pc, #0x44] @ 0x22663cc, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_22663d4
	ldr     r0, [pc, #0x40] @ 0x22663d0, (=0x5dc)
	bl      Function_2005748
	bl      0x2233374
	cmp     r0, #0x0
	bne     branch_22663b0
	mov     r0, #0x6
	strb    r0, [r6, #0x0]
	mov     r0, r5
	bl      Function_225dfcc
	mov     r0, r7
	mov     r1, #0x17
	bl      Function_2262e88
	b       Function_22669ac
@ 0x22663b0

.thumb
branch_22663b0: @ 22663b0 :thumb
	mov     r0, #0x6
	strb    r0, [r6, #0x0]
	mov     r0, r5
	bl      Function_225dfcc
	mov     r0, r7
	mov     r1, #0x10
	bl      Function_2262e88
	b       Function_22669ac
@ 0x22663c4

.word 0x5dd @ 0x22663c4
.word 0x14a @ 0x22663c8
.word 0x21bf67c @ 0x22663cc
.word 0x5dc @ 0x22663d0
.thumb
branch_22663d4: @ 22663d4 :thumb
	bl      0x2233374
	cmp     r0, #0x1
	bne     branch_2266420
	ldrb    r1, [r4, #0x7]
	ldr     r0, [sp, #0x28]
	cmp     r1, r0
	beq     branch_2266400
	strb    r0, [r4, #0x7]
	cmp     r0, #0x4
	beq     branch_2266400
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldrb    r1, [r6, #0x2]
	ldr     r0, [sp, #0x34]
	ldr     r2, [sp, #0x28]
	ldr     r3, [sp, #0x10]
	bl      0x222ea10
.thumb
branch_2266400: @ 2266400 :thumb
	mov     r0, #0x0
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_2266420
	ldrb    r0, [r6, #0x1]
	bl      0x2233224
	cmp     r0, #0x1
	bhi     branch_2266420
	mov     r0, #0x3
	strb    r0, [r6, #0x0]
	mov     r0, r7
	mov     r1, #0x17
	bl      Function_2262e88
	b       Function_22669ac
@ 0x2266420

.thumb
branch_2266420: @ 2266420 :thumb
	ldrb    r0, [r6, #0x1]
	bl      0x2233184
	cmp     r0, #0x1
	bne     branch_2266442
	ldrb    r0, [r6, #0x1]
	bl      0x22331a4
	cmp     r0, #0x0
	bne     branch_2266442
	mov     r0, #0x0
	strb    r0, [r6, #0x0]
	mov     r0, r7
	mov     r1, #0x17
	bl      Function_2262e88
	b       Function_22669ac
@ 0x2266442

.thumb
branch_2266442: @ 2266442 :thumb
	mov     r0, #0x0
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_22664ea
	mov     r0, r7
	mov     r1, #0x8
	bl      Function_2262e88
	mov     r0, r5
	bl      Function_225dfcc
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, #0x12
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df9c
	mov     r0, r5
	bl      Function_225dfbc
	b       Function_22669ac
@ 0x2266472

.thumb
branch_2266472: @ 2266472 :thumb
	mov     r0, r4
	add     r0, #0x3c
	mov     r1, #0x0
	bl      Function_2266ccc
	mov     r0, r4
	add     r0, #0x3c
	mov     r1, r5
	mov     r2, #0x0
	bl      Function_2266cf0
	bl      Function_20388ac
	mov     r5, r0
	ldrb    r0, [r6, #0x1]
	bl      0x2233224
	str     r0, [sp, #0x24]
	bl      Function_20380e4
	cmp     r0, #0x3
	beq     branch_22664a2
	cmp     r0, #0x4
	bne     branch_22664ae
.thumb
branch_22664a2: @ 22664a2 :thumb
	mov     r0, #0x4
	strb    r0, [r6, #0x0]
	mov     r0, r7
	mov     r1, #0x17
	bl      Function_2262e88
.thumb
branch_22664ae: @ 22664ae :thumb
	cmp     r5, #0x0
	bne     branch_22664c0
	mov     r0, #0x4
	strb    r0, [r6, #0x0]
	mov     r0, r7
	mov     r1, #0x17
	bl      Function_2262e88
	b       Function_22669ac
@ 0x22664c0

.thumb
branch_22664c0: @ 22664c0 :thumb
	cmp     r5, #0x2
	bne     branch_22664d6
	mov     r0, #0x8
	strb    r0, [r6, #0x0]
	mov     r0, r7
	mov     r1, #0x9
	bl      Function_2262e88
	ldr     r0, [sp, #0x24]
	strh    r0, [r4, #0x8]
	b       Function_22669ac
@ 0x22664d6

.thumb
branch_22664d6: @ 22664d6 :thumb
	ldrb    r0, [r6, #0x1]
	bl      0x2233184
	cmp     r0, #0x1
	bne     branch_22664ea
	ldrb    r0, [r6, #0x1]
	bl      0x22331a4
	cmp     r0, #0x0
	beq     branch_22664ec
.thumb
branch_22664ea: @ 22664ea :thumb
	b       Function_22669ac
@ 0x22664ec

.thumb
branch_22664ec: @ 22664ec :thumb
	mov     r0, #0x0
	strb    r0, [r6, #0x0]
	mov     r0, r7
	mov     r1, #0x17
	bl      Function_2262e88
	b       Function_22669ac
@ 0x22664fa

.thumb
branch_22664fa: @ 22664fa :thumb
	mov     r0, r4
	add     r0, #0x3c
	mov     r1, #0x0
	bl      Function_2266ccc
	mov     r0, r4
	add     r0, #0x3c
	mov     r1, r5
	mov     r2, #0x0
	bl      Function_2266cf0
	mov     r0, r5
	bl      Function_225dee8
	ldrb    r1, [r6, #0x3]
	bl      0x222e3e4
	bl      Function_2038b40
	mov     r0, r5
	bl      Function_225dee8
	bl      0x222e0c4
	mov     r1, #0x0
	bl      Function_20329e0
	ldr     r0, [sp, #0x34]
	bl      0x222e918
	bl      Function_20331f4
	mov     r0, #0x0
	bl      Function_203632c
	mov     r0, r4
	mov     r1, r7
	mov     r2, #0xa
	mov     r3, #0x11
	bl      Function_2266b18
	b       Function_22669ac
@ 0x226654e

.thumb
branch_226654e: @ 226654e :thumb
	mov     r0, r4
	add     r0, #0x3c
	mov     r1, #0x0
	bl      Function_2266ccc
	add     r4, #0x3c
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x0
	bl      Function_2266cf0
	bl      Function_2032ac0
	bl      Function_203608c
	bl      Function_2032e1c
	mov     r0, r7
	mov     r1, #0xb
	bl      Function_2262e88
	b       Function_22669ac
@ 0x226657a

.thumb
branch_226657a: @ 226657a :thumb
	mov     r0, r4
	add     r0, #0x3c
	mov     r1, #0x0
	bl      Function_2266ccc
	mov     r0, r4
	add     r0, #0x3c
	mov     r1, r5
	mov     r2, #0x0
	bl      Function_2266cf0
	bl      Function_2032e44
	cmp     r0, #0xff
	beq     branch_22665a4
.thumb
branch_2266598: @ 2266598 :thumb
	bl      Function_2032e1c
	bl      Function_2032e44
	cmp     r0, #0xff
	bne     branch_2266598
.thumb
branch_22665a4: @ 22665a4 :thumb
	bl      Function_2032e64
	mov     r5, r0
	ldrb    r0, [r6, #0x1]
	bl      0x2233224
	cmp     r5, r0
	bcc     branch_22665dc
	bl      0x2233374
	cmp     r0, #0x1
	bne     branch_22665ca
	ldrh    r0, [r4, #0x2]
	cmp     r0, #0x0
	bne     branch_22665ca
	bl      0x22330cc
	mov     r0, #0x1
	strh    r0, [r4, #0x2]
.thumb
branch_22665ca: @ 22665ca :thumb
	bl      0x2233128
	cmp     r0, #0x1
	bne     branch_226664e
	mov     r0, r7
	mov     r1, #0xc
	bl      Function_2262e88
	b       Function_22669ac
@ 0x22665dc

.thumb
branch_22665dc: @ 22665dc :thumb
	bl      0x2233128
	cmp     r0, #0x1
	bne     branch_226664e
	mov     r0, #0x4
	strb    r0, [r6, #0x0]
	mov     r0, r7
	mov     r1, #0x17
	bl      Function_2262e88
	b       Function_22669ac
@ 0x22665f2

.thumb
branch_22665f2: @ 22665f2 :thumb
	mov     r0, r4
	add     r0, #0x3c
	mov     r1, #0x0
	bl      Function_2266ccc
	mov     r0, r4
	add     r0, #0x3c
	mov     r1, r5
	mov     r2, #0x0
	bl      Function_2266cf0
	bl      Function_20365f4
	ldr     r0, [sp, #0x34]
	bl      0x222e238
	mov     r0, r4
	mov     r1, r7
	mov     r2, #0xd
	mov     r3, #0xe
	bl      Function_2266b18
	b       Function_22669ac
@ 0x2266620

.thumb
branch_2266620: @ 2266620 :thumb
	mov     r0, r4
	add     r0, #0x3c
	mov     r1, #0x0
	bl      Function_2266ccc
	mov     r0, r4
	add     r0, #0x3c
	mov     r1, r5
	mov     r2, #0x0
	bl      Function_2266cf0
	ldr     r0, [sp, #0x34]
	bl      0x222e344
	str     r0, [r4, #0xc]
	bl      Function_203608c
	add     r4, #0xc
	mov     r1, r4
	bl      Function_2036614
	cmp     r0, #0x1
	beq     branch_2266650
.thumb
branch_226664e: @ 226664e :thumb
	b       Function_22669ac
@ 0x2266650

.thumb
branch_2266650: @ 2266650 :thumb
	mov     r0, r7
	mov     r1, #0xe
	bl      Function_2262e88
	b       Function_22669ac
@ 0x226665a

.thumb
branch_226665a: @ 226665a :thumb
	mov     r0, r4
	add     r0, #0x3c
	mov     r1, #0x0
	bl      Function_2266ccc
	add     r4, #0x3c
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x0
	bl      Function_2266cf0
	bl      Function_2032e64
	str     r0, [sp, #0x20]
	bl      Function_203608c
	mov     r5, #0x0
	str     r0, [sp, #0x1c]
	str     r5, [sp, #0x18]
	bl      0x2233340
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x20]
	mov     r4, r5
	cmp     r0, #0x0
	ble     branch_22666dc
.thumb
branch_226668e: @ 226668e :thumb
	ldr     r0, [sp, #0x1c]
	cmp     r0, r4
	beq     branch_22666be
	mov     r0, r4
	bl      Function_203664c
	str     r0, [sp, #0x38]
	cmp     r0, #0x0
	beq     branch_22666d4
	ldr     r1, [sp, #0x38]
	ldr     r0, [sp, #0x34]
	ldr     r1, [r1, #0x0]
	mov     r2, r4
	bl      0x222e24c
	ldr     r0, [sp, #0x38]
	ldr     r1, [r0, #0x0]
	ldr     r0, [sp, #0x14]
	cmp     r1, r0
	bne     branch_22666ba
	mov     r0, #0x1
	str     r0, [sp, #0x18]
.thumb
branch_22666ba: @ 22666ba :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	b       branch_22666d4
@ 0x22666be

.thumb
branch_22666be: @ 22666be :thumb
	ldr     r0, [sp, #0x34]
	mov     r1, r4
	bl      0x222e27c
	bl      0x2233374
	cmp     r0, #0x1
	bne     branch_22666d2
	mov     r0, #0x1
	str     r0, [sp, #0x18]
.thumb
branch_22666d2: @ 22666d2 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_22666d4: @ 22666d4 :thumb
	ldr     r0, [sp, #0x20]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r0
	blt     branch_226668e
.thumb
branch_22666dc: @ 22666dc :thumb
	ldr     r0, [sp, #0x20]
	cmp     r5, r0
	bne     branch_22667c0
	ldr     r0, [sp, #0x18]
	cmp     r0, #0x1
	bne     branch_22666f2
	mov     r0, r7
	mov     r1, #0xf
	bl      Function_2262e88
	b       Function_22669ac
@ 0x22666f2

.thumb
branch_22666f2: @ 22666f2 :thumb
	mov     r0, #0x4
	strb    r0, [r6, #0x0]
	mov     r0, r7
	mov     r1, #0x17
	bl      Function_2262e88
	b       Function_22669ac
@ 0x2266700

.thumb
branch_2266700: @ 2266700 :thumb
	mov     r0, #0x0
	mov     r1, #0x1
	bl      Function_20388f4
	bl      0x2233374
	cmp     r0, #0x1
	bne     branch_226673c
	ldr     r0, [sp, #0x34]
	add     r1, sp, #0x3c
	bl      0x222e294
	ldrb    r0, [r6, #0x1]
	bl      0x2233224
	add     r3, sp, #0x3c
	mov     r2, r0
	ldrb    r0, [r3, #0x1]
	str     r0, [sp, #0x0]
	ldrb    r0, [r3, #0x2]
	str     r0, [sp, #0x4]
	ldrb    r0, [r3, #0x3]
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	ldrb    r1, [r6, #0x2]
	ldrb    r3, [r3, #0x0]
	ldr     r0, [sp, #0x34]
	bl      0x222ea10
.thumb
branch_226673c: @ 226673c :thumb
	mov     r0, r5
	bl      Function_225dfcc
	mov     r0, r4
	mov     r1, r7
	mov     r2, #0x1c
	mov     r3, #0x12
	bl      Function_2266b18
	b       Function_22669ac
@ 0x2266750

.thumb
branch_2266750: @ 2266750 :thumb
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, #0x1a
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df8c
	mov     r0, r7
	mov     r1, #0x11
	bl      Function_2262e88
	add     r4, #0x3c
	mov     r0, r4
	mov     r1, r5
	bl      Function_2266cb0
	b       Function_22669ac
@ 0x2266776

.thumb
branch_2266776: @ 2266776 :thumb
	ldr     r0, [sp, #0x10]
	mov     r1, r5
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r2, r6
	mov     r3, r7
	bl      Function_2266bac
	cmp     r0, #0x0
	bne     branch_22667c0
	mov     r0, r5
	bl      Function_225dfac
	cmp     r0, #0x1
	bne     branch_22667c0
	mov     r0, r7
	mov     r1, #0x12
	bl      Function_2262e88
	b       Function_22669ac
@ 0x226679e

.thumb
branch_226679e: @ 226679e :thumb
	mov     r0, r5
	bl      Function_225e194
	mov     r0, r7
	mov     r1, #0x13
	bl      Function_2262e88
	b       Function_22669ac
@ 0x22667ae

.thumb
branch_22667ae: @ 22667ae :thumb
	mov     r0, r5
	bl      Function_225e1c4
	cmp     r0, #0x0
	beq     branch_22667c2
	cmp     r0, #0x1
	beq     branch_22667d8
	cmp     r0, #0x2
	beq     branch_22667e8
.thumb
branch_22667c0: @ 22667c0 :thumb
	b       Function_22669ac
@ 0x22667c2

.thumb
branch_22667c2: @ 22667c2 :thumb
	mov     r0, r5
	bl      Function_225e1f8
	mov     r0, r7
	mov     r1, #0x17
	bl      Function_2262e88
	ldr     r0, [sp, #0x34]
	bl      0x222e200
	b       Function_22669ac
@ 0x22667d8

.thumb
branch_22667d8: @ 22667d8 :thumb
	mov     r0, r5
	bl      Function_225e1f8
	mov     r0, r7
	mov     r1, #0x14
	bl      Function_2262e88
	b       Function_22669ac
@ 0x22667e8

.thumb
branch_22667e8: @ 22667e8 :thumb
	ldr     r0, [sp, #0x10]
	mov     r1, r5
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r2, r6
	mov     r3, r7
	bl      Function_2266bac
	cmp     r0, #0x1
	beq     branch_22667fe
	b       Function_22669ac
@ 0x22667fe

.thumb
branch_22667fe: @ 22667fe :thumb
	mov     r0, r5
	bl      Function_225e1f8
	b       Function_22669ac
@ 0x2266806

.thumb
branch_2266806: @ 2266806 :thumb
	ldrb    r0, [r6, #0x1]
	bl      0x22332f8
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	ldsh    r0, [r4, r0]
	mov     r1, r5
	mov     r3, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r4
	ldrb    r2, [r6, #0x2]
	add     r0, #0x3c
	bl      Function_2266c68
	mov     r0, r4
	add     r0, #0x3c
	mov     r1, r5
	mov     r2, #0x1
	bl      Function_2266cfc
	mov     r1, #0x0
	ldsh    r2, [r4, r1]
	ldr     r0, [pc, #0x180] @ 0x22669b4, (=0x14a)
	cmp     r2, r0
	ble     branch_2266842
	mov     r0, r5
	mov     r2, #0xa
	bl      Function_225e20c
	b       branch_226684e
@ 0x2266842

.thumb
branch_2266842: @ 2266842 :thumb
	mov     r0, #0x1
	str     r0, [r4, #0x14]
	mov     r0, r5
	mov     r2, #0xb
	bl      Function_225e20c
.thumb
branch_226684e: @ 226684e :thumb
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df9c
	mov     r0, r5
	bl      Function_225dfbc
	mov     r0, r7
	mov     r1, #0x7
	bl      Function_2262e88
	b       Function_22669ac
@ 0x2266866

.thumb
branch_2266866: @ 2266866 :thumb
	ldrb    r0, [r6, #0x1]
	bl      0x2233224
	mov     r1, #0x8
	strb    r1, [r6, #0x0]
	cmp     r0, #0x4
	bne     branch_2266878
	mov     r2, #0x10
	b       branch_226687a
@ 0x2266878

.thumb
branch_2266878: @ 2266878 :thumb
	mov     r2, #0x12
.thumb
branch_226687a: @ 226687a :thumb
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df9c
	mov     r0, r5
	bl      Function_225dfbc
	mov     r0, r7
	mov     r1, #0x9
	bl      Function_2262e88
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, r4
	ldrb    r2, [r6, #0x2]
	add     r0, #0x3c
	mov     r1, r5
	mov     r3, #0x1
	bl      Function_2266c68
	add     r4, #0x3c
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x1
	bl      Function_2266cfc
	b       Function_22669ac
@ 0x22668b8

.thumb
branch_22668b8: @ 22668b8 :thumb
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, #0x12
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df9c
	mov     r0, r5
	bl      Function_225dfbc
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, r4
	ldrb    r2, [r6, #0x2]
	add     r0, #0x3c
	mov     r1, r5
	mov     r3, #0x1
	bl      Function_2266c68
	mov     r0, r4
	add     r0, #0x3c
	mov     r1, #0x0
	bl      Function_2266ccc
	add     r4, #0x3c
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x1
	bl      Function_2266cf0
	mov     r0, r7
	mov     r1, #0x8
	bl      Function_2262e88
	b       Function_22669ac
@ 0x2266902

.thumb
branch_2266902: @ 2266902 :thumb
	bl      Function_2032a70
	bl      Function_203888c
	mov     r0, r7
	mov     r1, #0x18
	bl      Function_2262e88
	b       Function_22669ac
@ 0x2266914

.thumb
branch_2266914: @ 2266914 :thumb
	bl      Function_20388ac
	cmp     r0, #0x0
	bne     Function_22669ac
	mov     r0, r7
	mov     r1, #0x1c
	bl      Function_2262e88
	b       Function_22669ac
@ 0x2266926

.thumb
branch_2266926: @ 2266926 :thumb
	mov     r0, r5
	bl      Function_225dfac
	cmp     r0, #0x1
	bne     Function_22669ac
	ldrb    r1, [r4, #0x4]
	mov     r0, r7
	bl      Function_2262e88
	b       Function_22669ac
@ 0x226693a

.thumb
branch_226693a: @ 226693a :thumb
	mov     r0, #0x5
	ldsb    r0, [r4, r0]
	cmp     r0, #0x0
	ble     branch_2266946
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0x5]
.thumb
branch_2266946: @ 2266946 :thumb
	mov     r0, #0x5
	ldsb    r0, [r4, r0]
	cmp     r0, #0x0
	bne     Function_22669ac
	ldrb    r0, [r4, #0x6]
	bl      Function_20364f0
	mov     r0, r7
	mov     r1, #0x1b
	bl      Function_2262e88
	b       Function_22669ac
@ 0x226695e

.thumb
branch_226695e: @ 226695e :thumb
	ldrh    r0, [r4, #0xa]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0xa]
	ldrh    r0, [r4, #0xa]
	cmp     r0, #0x96
	bcc     branch_2266974
	ldrb    r0, [r4, #0x6]
	bl      Function_20364f0
	mov     r0, #0x0
	strh    r0, [r4, #0xa]
.thumb
branch_2266974: @ 2266974 :thumb
	ldrb    r0, [r4, #0x6]
	bl      Function_2036540
	cmp     r0, #0x0
	beq     Function_22669ac
	ldrb    r1, [r4, #0x4]
	mov     r0, r7
	bl      Function_2262e88
	b       Function_22669ac
@ 0x2266988

.thumb
branch_2266988: @ 2266988 :thumb
	mov     r0, r5
	bl      Function_225dfec
	mov     r0, r4
	mov     r1, r5
	bl      Function_2266ba0
	add     r4, #0x3c
	mov     r0, r4
	mov     r1, r5
	bl      Function_2266cb0
	mov     r0, r7
	bl      Function_2262e64
	add     sp, #0x40
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x22669ac

.thumb
Function_22669ac: @ 22669ac :thumb
	mov     r0, #0x0
	add     sp, #0x40
	pop     {r3-r7,pc}
@ 0x22669b2


.align 2


.word 0x14a @ 0x22669b4
.thumb
Function_22669b8: @ 22669b8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2262e84
	cmp     r0, #0x0
	beq     branch_22669ca
	cmp     r0, #0x1
	beq     branch_22669ec
	b       branch_22669f8
@ 0x22669ca

.thumb
branch_22669ca: @ 22669ca :thumb
	mov     r0, #0x0
	mov     r1, r0
	bl      Function_20388f4
	bl      Function_20382c0
	cmp     r0, #0x0
	bne     branch_22669e2
	bl      Function_2032a70
	bl      Function_203888c
.thumb
branch_22669e2: @ 22669e2 :thumb
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2262e88
	b       branch_22669f8
@ 0x22669ec

.thumb
branch_22669ec: @ 22669ec :thumb
	bl      Function_20382c0
	cmp     r0, #0x1
	bne     branch_22669f8
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x22669f8

.thumb
branch_22669f8: @ 22669f8 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22669fc

.thumb
Function_22669fc: @ 22669fc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r0
	mov     r5, r1
	bl      Function_2262e80
	mov     r4, r0
	mov     r0, r6
	bl      Function_2262e84
	cmp     r0, #0x0
	beq     branch_2266a1a
	cmp     r0, #0x1
	beq     branch_2266a90
	b       branch_2266ae6
@ 0x2266a1a

.thumb
branch_2266a1a: @ 2266a1a :thumb
	mov     r0, r6
	mov     r1, #0x8
	bl      Function_2262e3c
	str     r0, [sp, #0x4]
	mov     r0, r5
	bl      Function_225df40
	cmp     r0, #0x27
	beq     branch_2266a38
	cmp     r0, #0x28
	beq     branch_2266a3e
	cmp     r0, #0x29
	beq     branch_2266a44
	b       branch_2266a4a
@ 0x2266a38

.thumb
branch_2266a38: @ 2266a38 :thumb
	mov     r7, #0x2a
	mov     r4, #0x0
	b       branch_2266a54
@ 0x2266a3e

.thumb
branch_2266a3e: @ 2266a3e :thumb
	mov     r7, #0x29
	mov     r4, #0x1
	b       branch_2266a54
@ 0x2266a44

.thumb
branch_2266a44: @ 2266a44 :thumb
	mov     r7, #0x2b
	mov     r4, #0x2
	b       branch_2266a54
@ 0x2266a4a

.thumb
branch_2266a4a: @ 2266a4a :thumb
	bl      ErrorHandling
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2266a54

.thumb
branch_2266a54: @ 2266a54 :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_225e27c
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, r7
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r5
	bl      Function_225dffc
	mov     r3, #0x0
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	mov     r2, r4
	str     r3, [sp, #0x0]
	bl      Function_2266c68
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	mov     r2, #0x1
	bl      Function_2266cfc
	mov     r0, r6
	bl      Function_2262e8c
	b       branch_2266ae6
@ 0x2266a90

.thumb
branch_2266a90: @ 2266a90 :thumb
	ldr     r0, [pc, #0x58] @ 0x2266aec, (=0x21bf67c)
	mov     r1, #0x1
	ldr     r0, [r0, #0x48]
	tst     r1, r0
	bne     branch_2266aac
	mov     r1, #0x10
	tst     r1, r0
	bne     branch_2266aac
	mov     r1, #0x20
	tst     r1, r0
	bne     branch_2266aac
	mov     r1, #0x80
	tst     r0, r1
	beq     branch_2266adc
.thumb
branch_2266aac: @ 2266aac :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_2266cb0
	mov     r0, r5
	bl      Function_225dfec
	mov     r0, r5
	bl      Function_225def0
	mov     r4, r0
	bl      Function_225ccac
	mov     r1, r0
	mov     r0, r4
	mov     r2, #0x1
	bl      Function_225cdec
	mov     r0, r6
	bl      Function_2262e64
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2266adc

.thumb
branch_2266adc: @ 2266adc :thumb
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x0
	bl      Function_2266cfc
.thumb
branch_2266ae6: @ 2266ae6 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2266aec

.word 0x21bf67c @ 0x2266aec
.thumb
Function_2266af0: @ 2266af0 :thumb
	push    {r4-r6,lr}
	mov     r6, r2
	mov     r5, r0
	mov     r4, r1
	mov     r0, r6
	mov     r1, #0x0
	mov     r2, r3
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r6
	bl      Function_225df8c
	ldr     r0, [sp, #0x10]
	mov     r1, #0x19
	strb    r0, [r5, #0x4]
	mov     r0, r4
	bl      Function_2262e88
	pop     {r4-r6,pc}
@ 0x2266b18

.thumb
Function_2266b18: @ 2266b18 :thumb
	strb    r2, [r0, #0x4]
	strb    r3, [r0, #0x6]
	mov     r2, #0x0
	strb    r2, [r0, #0x5]
	strh    r2, [r0, #0xa]
	mov     r0, r1
	ldr     r3, [pc, #0x4] @ 0x2266b2c, (=0x2262e89)
	mov     r1, #0x1a
	bx      r3
@ 0x2266b2a


.align 2


.word Function_2262e88+1 @ =0x2262e89, 0x2266b2c
.thumb
Function_2266b30: @ 2266b30 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r6, r2
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, r6
	mov     r7, r3
	bl      Function_225e00c
	ldr     r0, [sp, #0x0]
	mov     r4, #0x0
	str     r6, [r0, #0x38]
	cmp     r6, #0x0
	bls     branch_2266b66
.thumb
branch_2266b4c: @ 2266b4c :thumb
	mov     r0, r5
	mov     r1, #0x0
	add     r2, r7, r4
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r5
	mov     r2, r4
	bl      Function_225e044
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r6
	bcc     branch_2266b4c
.thumb
branch_2266b66: @ 2266b66 :thumb
	ldr     r2, [sp, #0x0]
	ldr     r3, [pc, #0x30] @ 0x2266b9c, (=0x226dc94)
	add     r2, #0x18
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [sp, #0x0]
	ldr     r1, [r0, #0x38]
	strh    r1, [r0, #0x28]
	ldr     r1, [r0, #0x38]
	ldrh    r0, [r0, #0x2a]
	cmp     r0, r1
	bls     branch_2266b8e
	ldr     r0, [sp, #0x0]
	strh    r1, [r0, #0x2a]
.thumb
branch_2266b8e: @ 2266b8e :thumb
	mov     r0, r5
	bl      Function_225e054
	ldr     r1, [sp, #0x0]
	str     r0, [r1, #0x18]
	pop     {r3-r7,pc}
@ 0x2266b9a


.align 2


.word 0x226dc94 @ 0x2266b9c
.thumb
Function_2266ba0: @ 2266ba0 :thumb
	ldr     r3, [pc, #0x4] @ 0x2266ba8, (=0x225e035)
	mov     r0, r1
	bx      r3
@ 0x2266ba6


.align 2


.word Function_225e034+1 @ =0x225e035, 0x2266ba8
.thumb
Function_2266bac: @ 2266bac :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r4, r2
	mov     r0, r1
	mov     r6, r3
	bl      Function_225dee8
	str     r0, [sp, #0x10]
	bl      Function_20388ac
	mov     r7, r0
	ldrb    r0, [r4, #0x1]
	bl      0x2233224
	mov     r2, r0
	cmp     r7, #0x0
	bne     branch_2266be2
	mov     r0, #0x4
	strb    r0, [r4, #0x0]
	mov     r0, r6
	mov     r1, #0x17
	bl      Function_2262e88
	add     sp, #0x14
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x2266be2

.thumb
branch_2266be2: @ 2266be2 :thumb
	cmp     r7, #0x2
	bne     branch_2266bf6
	mov     r0, r6
	mov     r1, #0x15
	strh    r2, [r5, #0x8]
	bl      Function_2262e88
	add     sp, #0x14
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x2266bf6

.thumb
branch_2266bf6: @ 2266bf6 :thumb
	ldrb    r0, [r5, #0x7]
	cmp     r0, r2
	beq     branch_2266c16
	strb    r2, [r5, #0x7]
	cmp     r2, #0x4
	beq     branch_2266c16
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldrb    r1, [r4, #0x2]
	ldr     r0, [sp, #0x10]
	ldr     r3, [sp, #0x28]
	bl      0x222ea10
.thumb
branch_2266c16: @ 2266c16 :thumb
	ldrb    r0, [r4, #0x1]
	bl      0x22332f8
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	ldsh    r2, [r5, r0]
	cmp     r2, #0x0
	bne     branch_2266c50
	ldrb    r0, [r4, #0x1]
	bl      0x2233224
	cmp     r0, #0x1
	bhi     branch_2266c42
	mov     r0, #0x3
	strb    r0, [r4, #0x0]
	mov     r0, r6
	mov     r1, #0x17
	bl      Function_2262e88
	add     sp, #0x14
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x2266c42

.thumb
branch_2266c42: @ 2266c42 :thumb
	mov     r0, r6
	mov     r1, #0x16
	bl      Function_2262e88
	add     sp, #0x14
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x2266c50

.thumb
branch_2266c50: @ 2266c50 :thumb
	ldr     r1, [pc, #0x10] @ 0x2266c64, (=0x14a)
	cmp     r2, r1
	bgt     branch_2266c60
	mov     r0, r6
	mov     r1, #0x14
	bl      Function_2262e88
	mov     r0, #0x1
.thumb
branch_2266c60: @ 2266c60 :thumb
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2266c64

.word 0x14a @ 0x2266c64
.thumb
Function_2266c68: @ 2266c68 :thumb
	push    {r3-r7,lr}
	mov     r4, r3
	mov     r5, r0
	mov     r7, r1
	mov     r6, r2
	cmp     r4, #0x2
	bcc     branch_2266c7a
	bl      ErrorHandling
.thumb
branch_2266c7a: @ 2266c7a :thumb
	mov     r0, #0x0
	strb    r0, [r5, #0x0]
	strb    r0, [r5, #0x1]
	strb    r0, [r5, #0x2]
	strb    r0, [r5, #0x3]
	strb    r0, [r5, #0x4]
	strb    r0, [r5, #0x5]
	strb    r0, [r5, #0x6]
	strb    r0, [r5, #0x7]
	strb    r4, [r5, #0x6]
	ldr     r1, [sp, #0x18]
	mov     r0, r5
	strb    r6, [r5, #0x3]
	bl      Function_2266ccc
	ldr     r0, [pc, #0x10] @ 0x2266cac, (=0x226dc90)
	mov     r1, #0x12
	ldrb    r0, [r0, r4]
	mov     r2, #0x3
	mov     r3, #0xd
	str     r0, [sp, #0x0]
	mov     r0, r7
	bl      Function_225e104
	pop     {r3-r7,pc}
@ 0x2266cac

.word 0x226dc90 @ 0x2266cac
.thumb
Function_2266cb0: @ 2266cb0 :thumb
	mov     r2, #0x0
	strb    r2, [r0, #0x0]
	strb    r2, [r0, #0x1]
	strb    r2, [r0, #0x2]
	strb    r2, [r0, #0x3]
	strb    r2, [r0, #0x4]
	strb    r2, [r0, #0x5]
	strb    r2, [r0, #0x6]
	strb    r2, [r0, #0x7]
	ldr     r3, [pc, #0x4] @ 0x2266cc8, (=0x225e12d)
	mov     r0, r1
	bx      r3
@ 0x2266cc8

.word Function_225e12c+1 @ =0x225e12d, 0x2266cc8
.thumb
Function_2266ccc: @ 2266ccc :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r1
	mov     r1, #0x1e
	blx     _s32_div_f
	lsl     r0, r0, #16
	asr     r1, r0, #16
	mov     r0, #0x4
	ldsh    r0, [r4, r0]
	cmp     r1, r0
	beq     branch_2266cee
	strh    r1, [r4, #0x4]
	ldrb    r1, [r4, #0x7]
	mov     r0, #0x8
	orr     r0, r1
	strb    r0, [r4, #0x7]
.thumb
branch_2266cee: @ 2266cee :thumb
	pop     {r4,pc}
@ 0x2266cf0

.thumb
Function_2266cf0: @ 2266cf0 :thumb
	push    {r3,lr}
	mov     r3, #0x0
	bl      Function_2266d08
	pop     {r3,pc}
@ 0x2266cfa


.align 2, 0


.thumb
Function_2266cfc: @ 2266cfc :thumb
	push    {r3,lr}
	mov     r3, #0x1
	bl      Function_2266d08
	pop     {r3,pc}
@ 0x2266d06


.align 2, 0


.thumb
Function_2266d08: @ 2266d08 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r4, r1
	str     r3, [sp, #0x4]
	cmp     r2, #0x0
	beq     branch_2266d1a
	mov     r0, #0xff
	strb    r0, [r5, #0x7]
.thumb
branch_2266d1a: @ 2266d1a :thumb
	ldrb    r0, [r5, #0x3]
	cmp     r0, #0x0
	beq     branch_2266d2a
	cmp     r0, #0x1
	beq     branch_2266d2e
	cmp     r0, #0x2
	beq     branch_2266d32
	b       branch_2266d36
@ 0x2266d2a

.thumb
branch_2266d2a: @ 2266d2a :thumb
	mov     r6, #0x0
	b       branch_2266d3c
@ 0x2266d2e

.thumb
branch_2266d2e: @ 2266d2e :thumb
	mov     r6, #0x1
	b       branch_2266d3c
@ 0x2266d32

.thumb
branch_2266d32: @ 2266d32 :thumb
	mov     r6, #0x2
	b       branch_2266d3c
@ 0x2266d36

.thumb
branch_2266d36: @ 2266d36 :thumb
	bl      ErrorHandling
	mov     r6, #0x2
.thumb
branch_2266d3c: @ 2266d3c :thumb
	mov     r0, r6
	bl      0x2233184
	mov     r7, r0
	ldrb    r0, [r5, #0x0]
	cmp     r0, r7
	beq     branch_2266d52
	ldrb    r1, [r5, #0x7]
	mov     r0, #0x4
	orr     r0, r1
	strb    r0, [r5, #0x7]
.thumb
branch_2266d52: @ 2266d52 :thumb
	strb    r7, [r5, #0x0]
	mov     r0, r6
	bl      0x22331a4
	ldrb    r1, [r5, #0x2]
	cmp     r1, r0
	beq     branch_2266d68
	ldrb    r2, [r5, #0x7]
	mov     r1, #0x4
	orr     r1, r2
	strb    r1, [r5, #0x7]
.thumb
branch_2266d68: @ 2266d68 :thumb
	strb    r0, [r5, #0x2]
	cmp     r7, #0x1
	bne     branch_2266d76
	mov     r0, r6
	bl      0x22331e4
	b       branch_2266d78
@ 0x2266d76

.thumb
branch_2266d76: @ 2266d76 :thumb
	mov     r0, #0x4
.thumb
branch_2266d78: @ 2266d78 :thumb
	ldrb    r1, [r5, #0x1]
	cmp     r1, r0
	beq     branch_2266d86
	ldrb    r2, [r5, #0x7]
	mov     r1, #0x2
	orr     r1, r2
	strb    r1, [r5, #0x7]
.thumb
branch_2266d86: @ 2266d86 :thumb
	strb    r0, [r5, #0x1]
	ldrb    r1, [r5, #0x7]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_2266dc0
	mov     r0, #0x10
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r2, r1
	mov     r3, #0x68
	bl      Function_225e14c
	ldrb    r1, [r5, #0x3]
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_225e27c
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x36
	bl      Function_225e20c
	mov     r2, #0x0
	mov     r1, r0
	mov     r0, r4
	mov     r3, r2
	bl      Function_225e13c
.thumb
branch_2266dc0: @ 2266dc0 :thumb
	ldrb    r1, [r5, #0x7]
	mov     r0, #0x4
	tst     r0, r1
	beq     branch_2266dfe
	mov     r2, #0x10
	mov     r0, r4
	mov     r1, #0x24
	mov     r3, #0x68
	str     r2, [sp, #0x0]
	bl      Function_225e14c
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x1
	bne     branch_2266dfe
	ldrb    r0, [r5, #0x2]
	cmp     r0, #0x0
	bne     branch_2266dfe
	ldrb    r0, [r5, #0x0]
	cmp     r0, #0x1
	bne     branch_2266dfe
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x45
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r4
	mov     r2, #0x24
	mov     r3, #0x10
	bl      Function_225e13c
.thumb
branch_2266dfe: @ 2266dfe :thumb
	ldrb    r1, [r5, #0x7]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_2266e4e
	mov     r2, #0x20
	mov     r0, r4
	mov     r1, #0x0
	mov     r3, #0x68
	str     r2, [sp, #0x0]
	bl      Function_225e14c
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r2, #0x1
	ldrb    r1, [r5, #0x1]
	mov     r0, r4
	mov     r3, r2
	bl      Function_225e21c
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	ldrb    r2, [r5, #0x1]
	mov     r1, #0x4
	mov     r0, r4
	sub     r1, r1, r2
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_225e21c
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x44
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r4
	mov     r2, #0x0
	mov     r3, #0x20
	bl      Function_225e13c
.thumb
branch_2266e4e: @ 2266e4e :thumb
	ldrb    r0, [r5, #0x6]
	cmp     r0, #0x1
	bne     branch_2266e92
	ldrb    r1, [r5, #0x7]
	mov     r0, #0x8
	tst     r0, r1
	beq     branch_2266e92
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x40
	mov     r3, #0x68
	bl      Function_225e14c
	mov     r2, #0x2
	str     r2, [sp, #0x0]
	mov     r1, #0x4
	ldsh    r1, [r5, r1]
	mov     r0, r4
	mov     r3, #0x0
	bl      Function_225e21c
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0xf
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r4
	mov     r2, #0x0
	mov     r3, #0x40
	bl      Function_225e13c
.thumb
branch_2266e92: @ 2266e92 :thumb
	mov     r0, #0x0
	strb    r0, [r5, #0x7]
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2266e9a


.align 2, 0


.thumb
Function_2266e9c: @ 2266e9c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x4c
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	str     r2, [sp, #0xc]
	bl      Function_225dee8
	mov     r7, r0
	mov     r0, r5
	bl      Function_225df10
	str     r0, [sp, #0x24]
	mov     r0, r6
	bl      Function_2262e80
	mov     r4, r0
	mov     r0, r7
	bl      0x222ee30
	str     r0, [sp, #0x20]
	mov     r0, r7
	bl      0x222ee3c
	str     r0, [sp, #0x1c]
	mov     r0, r7
	bl      0x222ee68
	cmp     r0, #0x0
	beq     branch_2266ef4
	cmp     r4, #0x0
	beq     branch_2266ef4
	ldrh    r0, [r4, #0xa]
	cmp     r0, #0x0
	beq     branch_2266ef4
	mov     r0, r6
	mov     r1, #0x20
	bl      Function_2262e88
	mov     r0, r5
	bl      Function_225dfcc
	mov     r0, #0x0
	strh    r0, [r4, #0xa]
.thumb
branch_2266ef4: @ 2266ef4 :thumb
	cmp     r4, #0x0
	beq     branch_2266f16
	mov     r0, r7
	bl      0x222e3bc
	str     r0, [sp, #0x18]
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x0
	beq     branch_2266f12
	ldrb    r1, [r4, #0x3]
	mov     r0, r7
	bl      0x222e374
	str     r0, [sp, #0x14]
	b       branch_2266f16
@ 0x2266f12

.thumb
branch_2266f12: @ 2266f12 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x14]
.thumb
branch_2266f16: @ 2266f16 :thumb
	mov     r0, r6
	bl      Function_2262e84
	cmp     r0, #0x0
	beq     branch_2266f3e
	ldrh    r0, [r4, #0xa]
	cmp     r0, #0x0
	beq     branch_2266f3e
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x0
	bne     branch_2266f3e
	mov     r0, r6
	mov     r1, #0x20
	bl      Function_2262e88
	mov     r0, r5
	bl      Function_225dfcc
	mov     r0, #0x0
	strh    r0, [r4, #0xa]
.thumb
branch_2266f3e: @ 2266f3e :thumb
	mov     r0, r6
	bl      Function_2262e84
	cmp     r0, #0x26
	bls     branch_2266f4c
	bl      Function_2267a2e
.thumb
branch_2266f4c: @ 2266f4c :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2266f58

Jumppoints_2266f58:
.hword branch_2266fa6 - Jumppoints_2266f58 - 2
.hword branch_226706c - Jumppoints_2266f58 - 2
.hword branch_2267090 - Jumppoints_2266f58 - 2
.hword branch_22670d8 - Jumppoints_2266f58 - 2
.hword branch_2267116 - Jumppoints_2266f58 - 2
.hword branch_2267146 - Jumppoints_2266f58 - 2
.hword branch_22671b8 - Jumppoints_2266f58 - 2
.hword branch_22671e6 - Jumppoints_2266f58 - 2
.hword branch_2267216 - Jumppoints_2266f58 - 2
.hword branch_226724e - Jumppoints_2266f58 - 2
.hword branch_226727c - Jumppoints_2266f58 - 2
.hword branch_22672aa - Jumppoints_2266f58 - 2
.hword branch_22672da - Jumppoints_2266f58 - 2
.hword branch_2267356 - Jumppoints_2266f58 - 2
.hword branch_2267414 - Jumppoints_2266f58 - 2
.hword branch_2267444 - Jumppoints_2266f58 - 2
.hword branch_22674c4 - Jumppoints_2266f58 - 2
.hword branch_2267510 - Jumppoints_2266f58 - 2
.hword branch_2267520 - Jumppoints_2266f58 - 2
.hword branch_226758e - Jumppoints_2266f58 - 2
.hword branch_22675a0 - Jumppoints_2266f58 - 2
.hword branch_22675e0 - Jumppoints_2266f58 - 2
.hword branch_2267622 - Jumppoints_2266f58 - 2
.hword branch_2267654 - Jumppoints_2266f58 - 2
.hword branch_2267682 - Jumppoints_2266f58 - 2
.hword branch_22676da - Jumppoints_2266f58 - 2
.hword branch_2267720 - Jumppoints_2266f58 - 2
.hword branch_2267768 - Jumppoints_2266f58 - 2
.hword branch_22677ae - Jumppoints_2266f58 - 2
.hword branch_226780c - Jumppoints_2266f58 - 2
.hword branch_2267874 - Jumppoints_2266f58 - 2
.hword branch_22678a2 - Jumppoints_2266f58 - 2
.hword branch_22678d0 - Jumppoints_2266f58 - 2
.hword branch_2267912 - Jumppoints_2266f58 - 2
.hword branch_2267944 - Jumppoints_2266f58 - 2
.hword branch_226796c - Jumppoints_2266f58 - 2
.hword branch_22679a0 - Jumppoints_2266f58 - 2
.hword branch_22679aa - Jumppoints_2266f58 - 2
.hword branch_22679b6 - Jumppoints_2266f58 - 2
.thumb
branch_2266fa6: @ 2266fa6 :thumb
	mov     r0, r6
	mov     r1, #0x50
	bl      Function_2262e3c
	mov     r4, r0
	mov     r1, #0x0
	add     r0, #0x44
	strh    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x46
	strh    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x38
	str     r1, [r4, #0x48]
	bl      Function_2269114
	mov     r0, r5
	bl      Function_225def0
	str     r0, [sp, #0x28]
	bl      Function_225ccac
	str     r0, [sp, #0x2c]
	ldr     r0, [sp, #0x28]
	ldr     r1, [sp, #0x2c]
	bl      Function_225ce40
	str     r0, [sp, #0x30]
	cmp     r0, #0x0
	bne     branch_2266ff2
	mov     r0, #0x0
	strh    r0, [r4, #0xa]
	mov     r0, r6
	mov     r1, #0x26
	bl      Function_2262e88
	bl      Function_2267a2e
.thumb
branch_2266ff2: @ 2266ff2 :thumb
	mov     r1, #0x4
	bl      Function_225cd60
	str     r0, [sp, #0x34]
	ldr     r0, [sp, #0x2c]
	mov     r1, #0x6
	bl      Function_225cd60
	bl      0x222c0ac
	str     r0, [sp, #0x38]
	mov     r0, r7
	bl      0x222ec60
	ldr     r2, [sp, #0x34]
	mov     r0, r4
	mov     r1, r7
	bl      Function_2268b50
	str     r0, [sp, #0x3c]
	ldr     r0, [sp, #0x30]
	mov     r1, #0x0
	str     r0, [r4, #0x10]
	bl      Function_225d030
	ldr     r0, [sp, #0x30]
	ldr     r1, [sp, #0x38]
	bl      Function_225d060
	ldr     r0, [sp, #0x24]
	ldr     r1, [sp, #0x34]
	mov     r2, #0x0
	bl      Function_2262eec
	ldr     r0, [pc, #0x358] @ 0x2267390, (=0x5e4)
	bl      Function_2005748
	mov     r0, r7
	mov     r1, #0x9
	bl      0x222e3e4
	ldr     r0, [sp, #0x3c]
	cmp     r0, #0x1
	bne     branch_2267060
	ldr     r1, [sp, #0x34]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_225e328
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_2262e88
	bl      Function_2267a2e
.thumb
branch_2267060: @ 2267060 :thumb
	mov     r0, r6
	mov     r1, #0x22
	bl      Function_2262e88
	bl      Function_2267a2e
.thumb
branch_226706c: @ 226706c :thumb
	ldrb    r1, [r4, #0x3]
	mov     r0, r7
	bl      0x222ec70
	cmp     r0, #0x1
	bne     branch_2267084
	mov     r0, r6
	mov     r1, #0x2
	bl      Function_2262e88
	bl      Function_2267a2e
.thumb
branch_2267084: @ 2267084 :thumb
	mov     r0, r6
	mov     r1, #0x22
	bl      Function_2262e88
	bl      Function_2267a2e
.thumb
branch_2267090: @ 2267090 :thumb
	ldr     r0, [sp, #0x20]
	cmp     r0, #0x4
	bhi     branch_22670cc
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22670a2

Jumppoints_22670a2:
.hword branch_22670c0 - Jumppoints_22670a2 - 2
.hword branch_2267a2e - Jumppoints_22670a2 - 2
.hword branch_22670ac - Jumppoints_22670a2 - 2
.hword branch_22670cc - Jumppoints_22670a2 - 2
.hword branch_22670cc - Jumppoints_22670a2 - 2
.thumb
branch_22670ac: @ 22670ac :thumb
	ldrb    r1, [r4, #0x3]
	mov     r0, r7
	bl      0x222eee4
	mov     r0, r6
	mov     r1, #0x3
	bl      Function_2262e88
	bl      Function_2267a2e
.thumb
branch_22670c0: @ 22670c0 :thumb
	mov     r0, r6
	mov     r1, #0x22
	bl      Function_2262e88
	bl      Function_2267a2e
.thumb
branch_22670cc: @ 22670cc :thumb
	mov     r0, r6
	mov     r1, #0x20
	bl      Function_2262e88
	bl      Function_2267a2e
.thumb
branch_22670d8: @ 22670d8 :thumb
	ldrb    r1, [r4, #0x3]
	mov     r0, r7
	bl      0x222eef4
	mov     r0, r7
	bl      0x222f020
	mov     r0, r7
	mov     r1, #0x7
	bl      0x222f040
	ldr     r0, [sp, #0x18]
	mov     r1, r7
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x14]
	mov     r2, r5
	str     r0, [sp, #0x4]
	ldrb    r3, [r4, #0x4]
	mov     r0, r4
	bl      Function_2268bf4
	mov     r0, #0x25
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x80
	mov     r2, #0x4
	mov     r3, r6
	bl      Function_2268ba4
	bl      Function_2267a2e
.thumb
branch_2267116: @ 2267116 :thumb
	ldr     r0, [sp, #0x14]
	mov     r1, r7
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x18]
	mov     r2, r5
	str     r0, [sp, #0x4]
	ldrb    r3, [r4, #0x5]
	mov     r0, r4
	bl      Function_2268bf4
	mov     r0, #0x25
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x80
	mov     r2, #0x5
	mov     r3, r6
	bl      Function_2268ba4
	mov     r0, r7
	mov     r1, #0x0
	bl      0x222ecd4
	bl      Function_2267a2e
.thumb
branch_2267146: @ 2267146 :thumb
	ldr     r0, [sp, #0x20]
	cmp     r0, #0x4
	bhi     branch_22671a6
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2267158

Jumppoints_2267158:
.hword branch_22671a6 - Jumppoints_2267158 - 2
.hword branch_22671a6 - Jumppoints_2267158 - 2
.hword branch_2267162 - Jumppoints_2267158 - 2
.hword branch_226718a - Jumppoints_2267158 - 2
.hword branch_22671a6 - Jumppoints_2267158 - 2
.thumb
branch_2267162: @ 2267162 :thumb
	mov     r0, r5
	bl      Function_225dfcc
	mov     r0, r7
	bl      0x222ee24
	cmp     r0, #0x0
	beq     branch_226717e
	mov     r0, r6
	mov     r1, #0x6
	bl      Function_2262e88
	bl      Function_2267a2e
.thumb
branch_226717e: @ 226717e :thumb
	mov     r0, r6
	mov     r1, #0x8
	bl      Function_2262e88
	bl      Function_2267a2e
.thumb
branch_226718a: @ 226718a :thumb
	mov     r0, r5
	bl      Function_225dfdc
	cmp     r0, #0x0
	bne     branch_226719a
	mov     r0, r5
	bl      Function_225dfbc
.thumb
branch_226719a: @ 226719a :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_2268d70
	bl      Function_2267a2e
.thumb
branch_22671a6: @ 22671a6 :thumb
	mov     r0, r6
	mov     r1, #0x20
	bl      Function_2262e88
	mov     r0, r5
	bl      Function_225dfcc
	bl      Function_2267a2e
.thumb
branch_22671b8: @ 22671b8 :thumb
	mov     r0, r4
	mov     r1, r7
	mov     r2, r5
	bl      Function_2268cc8
	cmp     r0, #0x1
	bne     branch_22671da
	mov     r0, #0x25
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x80
	mov     r2, #0x7
	mov     r3, r6
	bl      Function_2268ba4
	bl      Function_2267a2e
.thumb
branch_22671da: @ 22671da :thumb
	mov     r0, r6
	mov     r1, #0x7
	bl      Function_2262e88
	bl      Function_2267a2e
.thumb
branch_22671e6: @ 22671e6 :thumb
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_225e234
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	mov     r2, #0x28
	bl      Function_2268aac
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df8c
	mov     r0, #0x25
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x80
	mov     r2, #0x9
	mov     r3, r6
	bl      Function_2268ba4
	bl      Function_2267a2e
.thumb
branch_2267216: @ 2267216 :thumb
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_225e234
	ldrh    r1, [r4, #0x8]
	mov     r0, r5
	mov     r2, #0x1
	bl      Function_225e234
	ldrb    r1, [r4, #0x3]
	ldrh    r2, [r4, #0x8]
	mov     r0, r5
	bl      Function_2268af8
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df8c
	mov     r0, #0x25
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x80
	mov     r2, #0x9
	mov     r3, r6
	bl      Function_2268ba4
	b       branch_2267a2e
@ 0x226724e

.thumb
branch_226724e: @ 226724e :thumb
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_225e234
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	mov     r2, #0x2e
	bl      Function_2268aac
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df8c
	mov     r0, #0x25
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x80
	mov     r2, #0xb
	mov     r3, r6
	bl      Function_2268ba4
	b       branch_2267a2e
@ 0x226727c

.thumb
branch_226727c: @ 226727c :thumb
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_225e234
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	mov     r2, #0x36
	bl      Function_2268aac
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df8c
	mov     r0, #0x25
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x80
	mov     r2, #0xb
	mov     r3, r6
	bl      Function_2268ba4
	b       branch_2267a2e
@ 0x22672aa

.thumb
branch_22672aa: @ 22672aa :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, r4
	ldr     r3, [pc, #0xe0] @ 0x2267394, (=0x203)
	add     r0, #0x14
	mov     r1, r5
	mov     r2, #0x3
	bl      Function_2268e44
	mov     r1, r4
	mov     r2, #0x0
	mov     r0, r5
	add     r1, #0x14
	mov     r3, r2
	bl      Function_225e074
	mov     r0, r4
	bl      Function_2268db8
	mov     r0, r6
	mov     r1, #0xc
	bl      Function_2262e88
	b       branch_2267a2e
@ 0x22672da

.thumb
branch_22672da: @ 22672da :thumb
	mov     r0, r5
	bl      Function_225e0d4
	cmp     r0, #0x0
	beq     branch_22672ee
	cmp     r0, #0x1
	beq     branch_22672fa
	cmp     r0, #0x2
	beq     branch_2267318
	b       branch_226732a
@ 0x22672ee

.thumb
branch_22672ee: @ 22672ee :thumb
	mov     r0, r6
	mov     r1, #0xd
	bl      Function_2262e88
	mov     r0, #0x1
	b       branch_2267334
@ 0x22672fa

.thumb
branch_22672fa: @ 22672fa :thumb
	mov     r0, r6
	mov     r1, #0x13
	bl      Function_2262e88
	ldr     r0, [r4, #0x10]
	mov     r1, #0x4
	bl      Function_225cd60
	mov     r2, r0
	ldr     r1, [sp, #0xc]
	mov     r0, r7
	bl      0x222e990
	mov     r0, #0x1
	b       branch_2267334
@ 0x2267318

.thumb
branch_2267318: @ 2267318 :thumb
	mov     r0, r7
	bl      0x222ed7c
	mov     r0, r6
	mov     r1, #0x21
	bl      Function_2262e88
	mov     r0, #0x1
	b       branch_2267334
@ 0x226732a

.thumb
branch_226732a: @ 226732a :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_2268dcc
	mov     r0, #0x0
.thumb
branch_2267334: @ 2267334 :thumb
	cmp     r0, #0x1
	beq     branch_226733a
	b       branch_2267a2e
@ 0x226733a

.thumb
branch_226733a: @ 226733a :thumb
	mov     r1, #0x0
	mov     r0, r5
	mov     r2, r1
	bl      Function_225e0e4
	mov     r0, r4
	add     r0, #0x14
	mov     r1, r5
	bl      Function_2269108
	mov     r0, r4
	bl      Function_2268dc4
	b       branch_2267a2e
@ 0x2267356

.thumb
branch_2267356: @ 2267356 :thumb
	ldr     r0, [sp, #0x18]
	bl      0x222e8c4
	str     r0, [sp, #0x40]
	ldr     r0, [sp, #0x14]
	bl      0x222e8c4
	ldr     r1, [sp, #0x40]
	cmp     r1, r0
	bne     branch_22673c4
	mov     r0, #0x1
	strb    r0, [r4, #0xc]
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_225e234
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, r7
	mov     r2, r5
	mov     r3, #0x1
	bl      Function_2268d38
	ldrb    r1, [r4, #0x3]
	ldr     r2, [pc, #0xc] @ 0x2267398, (=0x1fb)
	b       branch_226739c
@ 0x226738e


.align 2


.word 0x5e4 @ 0x2267390
.word 0x203 @ 0x2267394
.word 0x1fb @ 0x2267398
.thumb
branch_226739c: @ 226739c :thumb
	mov     r0, r5
	bl      Function_2268aac
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df8c
	mov     r0, #0x25
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x80
	mov     r2, #0x12
	mov     r3, r6
	bl      Function_2268ba4
	mov     r0, r7
	mov     r1, #0x4
	bl      0x222ecd4
	b       branch_2267a2e
@ 0x22673c4

.thumb
branch_22673c4: @ 22673c4 :thumb
	mov     r2, #0x0
	strb    r2, [r4, #0xc]
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	bl      Function_225e234
	mov     r3, #0x1
	mov     r0, r4
	mov     r1, r7
	mov     r2, r5
	str     r3, [sp, #0x0]
	bl      Function_2268d38
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, r7
	mov     r2, r5
	mov     r3, #0x2
	bl      Function_2268d38
	mov     r2, #0x7f
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	lsl     r2, r2, #2
	bl      Function_2268aac
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df8c
	mov     r0, #0x25
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x80
	mov     r2, #0xe
	mov     r3, r6
	bl      Function_2268ba4
	b       branch_2267a2e
@ 0x2267414

.thumb
branch_2267414: @ 2267414 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r4
	ldr     r3, [pc, #0x334] @ 0x2267750, (=0x206)
	add     r0, #0x14
	mov     r1, r5
	mov     r2, #0x2
	bl      Function_2268e44
	mov     r1, r4
	mov     r2, #0x0
	mov     r0, r5
	add     r1, #0x14
	mov     r3, r2
	bl      Function_225e074
	mov     r0, r4
	bl      Function_2268db8
	mov     r0, r6
	mov     r1, #0xf
	bl      Function_2262e88
	b       branch_2267a2e
@ 0x2267444

.thumb
branch_2267444: @ 2267444 :thumb
	mov     r0, r5
	bl      Function_225e0d4
	cmp     r0, #0x0
	beq     branch_2267454
	cmp     r0, #0x1
	beq     branch_226748c
	b       branch_2267498
@ 0x2267454

.thumb
branch_2267454: @ 2267454 :thumb
	mov     r0, r7
	mov     r1, #0x3
	bl      0x222ecd4
	mov     r0, r6
	mov     r1, #0x10
	bl      Function_2262e88
	ldrb    r1, [r4, #0x3]
	mov     r0, r7
	bl      0x222ef44
	ldr     r0, [r4, #0x10]
	mov     r1, #0x4
	bl      Function_225cd60
	mov     r6, r0
	ldr     r0, [sp, #0x14]
	bl      0x222e8c4
	mov     r3, r0
	ldr     r1, [sp, #0xc]
	mov     r0, r7
	mov     r2, r6
	bl      0x222e9cc
	mov     r0, #0x1
	b       branch_22674a2
@ 0x226748c

.thumb
branch_226748c: @ 226748c :thumb
	mov     r0, r6
	mov     r1, #0xa
	bl      Function_2262e88
	mov     r0, #0x1
	b       branch_22674a2
@ 0x2267498

.thumb
branch_2267498: @ 2267498 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_2268dcc
	mov     r0, #0x0
.thumb
branch_22674a2: @ 22674a2 :thumb
	cmp     r0, #0x1
	beq     branch_22674a8
	b       branch_2267a2e
@ 0x22674a8

.thumb
branch_22674a8: @ 22674a8 :thumb
	mov     r1, #0x0
	mov     r0, r5
	mov     r2, r1
	bl      Function_225e0e4
	mov     r0, r4
	add     r0, #0x14
	mov     r1, r5
	bl      Function_2269108
	mov     r0, r4
	bl      Function_2268dc4
	b       branch_2267a2e
@ 0x22674c4

.thumb
branch_22674c4: @ 22674c4 :thumb
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_225e234
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, r7
	mov     r2, r5
	mov     r3, #0x1
	bl      Function_2268d38
	ldrb    r1, [r4, #0x3]
	ldr     r2, [pc, #0x270] @ 0x2267754, (=0x1fe)
	mov     r0, r5
	bl      Function_2268aac
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df8c
	mov     r0, #0x25
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x80
	mov     r2, #0x11
	mov     r3, r6
	bl      Function_2268ba4
	ldr     r0, [sp, #0x14]
	bl      0x222e8c4
	mov     r1, r0
	mov     r0, r7
	bl      0x222e528
	b       branch_2267a2e
@ 0x2267510

.thumb
branch_2267510: @ 2267510 :thumb
	ldr     r0, [pc, #0x244] @ 0x2267758, (=0x5a8)
	bl      Function_2005748
	mov     r0, r6
	mov     r1, #0x12
	bl      Function_2262e88
	b       branch_2267a2e
@ 0x2267520

.thumb
branch_2267520: @ 2267520 :thumb
	ldr     r0, [sp, #0x20]
	cmp     r0, #0x4
	bhi     branch_226757e
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2267532

Jumppoints_2267532:
.hword branch_226757e - Jumppoints_2267532 - 2
.hword branch_226757e - Jumppoints_2267532 - 2
.hword branch_226753c - Jumppoints_2267532 - 2
.hword branch_2267564 - Jumppoints_2267532 - 2
.hword branch_226757e - Jumppoints_2267532 - 2
.thumb
branch_226753c: @ 226753c :thumb
	ldr     r1, [sp, #0x14]
	mov     r0, r4
	bl      Function_2268e20
	ldrb    r0, [r4, #0xc]
	cmp     r0, #0x1
	bne     branch_2267554
	mov     r0, r6
	mov     r1, #0x21
	bl      Function_2262e88
	b       branch_226755c
@ 0x2267554

.thumb
branch_2267554: @ 2267554 :thumb
	mov     r0, r6
	mov     r1, #0xa
	bl      Function_2262e88
.thumb
branch_226755c: @ 226755c :thumb
	mov     r0, r5
	bl      Function_225dfcc
	b       branch_2267a2e
@ 0x2267564

.thumb
branch_2267564: @ 2267564 :thumb
	mov     r0, r5
	bl      Function_225dfdc
	cmp     r0, #0x0
	bne     branch_2267574
	mov     r0, r5
	bl      Function_225dfbc
.thumb
branch_2267574: @ 2267574 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_2268d70
	b       branch_2267a2e
@ 0x226757e

.thumb
branch_226757e: @ 226757e :thumb
	mov     r0, r6
	mov     r1, #0x20
	bl      Function_2262e88
	mov     r0, r5
	bl      Function_225dfcc
	b       branch_2267a2e
@ 0x226758e

.thumb
branch_226758e: @ 226758e :thumb
	mov     r0, r7
	mov     r1, #0x5
	bl      0x222ecd4
	mov     r0, r6
	mov     r1, #0x14
	bl      Function_2262e88
	b       branch_2267a2e
@ 0x22675a0

.thumb
branch_22675a0: @ 22675a0 :thumb
	ldr     r0, [pc, #0x1b8] @ 0x226775c, (=0x207)
	mov     r1, r5
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r0, #0x14
	mov     r2, #0x1e
	mov     r3, #0x4
	bl      Function_2268eec
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x17
	mov     r1, r4
	mov     r2, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r5
	add     r1, #0x14
	mov     r3, r2
	bl      Function_225e0a4
	mov     r0, r6
	mov     r1, #0x15
	bl      Function_2262e88
	mov     r0, r4
	bl      Function_2268db8
	b       branch_2267a2e
@ 0x22675e0

.thumb
branch_22675e0: @ 22675e0 :thumb
	mov     r0, r5
	bl      Function_225e0d4
	mov     r1, #0x1
	mvn     r1, r1
	str     r0, [sp, #0x44]
	cmp     r0, r1
	beq     branch_22675f6
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r0, r1
	bne     branch_2267600
.thumb
branch_22675f6: @ 22675f6 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_2268dcc
	b       branch_2267a2e
@ 0x2267600

.thumb
branch_2267600: @ 2267600 :thumb
	mov     r1, #0x0
	mov     r0, r5
	mov     r2, r1
	bl      Function_225e0e4
	mov     r0, r4
	add     r0, #0x14
	mov     r1, r5
	bl      Function_2269108
	ldr     r0, [sp, #0x44]
	mov     r1, #0x16
	strb    r0, [r4, #0x0]
	mov     r0, r6
	bl      Function_2262e88
	b       branch_2267a2e
@ 0x2267622

.thumb
branch_2267622: @ 2267622 :thumb
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_225e234
	ldrb    r3, [r4, #0x0]
	ldr     r2, [pc, #0x130] @ 0x2267760, (=0x1dd)
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	add     r2, r3, r2
	bl      Function_2268aac
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df8c
	mov     r0, #0x25
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x80
	mov     r2, #0x17
	mov     r3, r6
	bl      Function_2268ba4
	b       branch_2267a2e
@ 0x2267654

.thumb
branch_2267654: @ 2267654 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldrb    r3, [r4, #0x0]
	mov     r0, r4
	add     r0, #0x14
	lsl     r3, r3, #2
	mov     r1, r5
	mov     r2, #0x4
	add     r3, #0x73
	bl      Function_2268e44
	mov     r1, r4
	mov     r2, #0x0
	mov     r0, r5
	add     r1, #0x14
	mov     r3, r2
	bl      Function_225e074
	mov     r0, r6
	mov     r1, #0x18
	bl      Function_2262e88
	b       branch_2267a2e
@ 0x2267682

.thumb
branch_2267682: @ 2267682 :thumb
	mov     r0, r5
	bl      Function_225e0d4
	str     r0, [sp, #0x48]
	cmp     r0, #0x3
	bhi     branch_22676d0
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x226769a

Jumppoints_226769a:
.hword branch_22676a2 - Jumppoints_226769a - 2
.hword branch_22676a2 - Jumppoints_226769a - 2
.hword branch_22676a2 - Jumppoints_226769a - 2
.hword branch_22676a2 - Jumppoints_226769a - 2
.thumb
branch_22676a2: @ 22676a2 :thumb
	mov     r1, #0x0
	mov     r0, r5
	mov     r2, r1
	bl      Function_225e0e4
	mov     r0, r4
	add     r0, #0x14
	mov     r1, r5
	bl      Function_2269108
	mov     r0, r4
	bl      Function_2268dc4
	ldrb    r0, [r4, #0x0]
	lsl     r1, r0, #2
	ldr     r0, [sp, #0x48]
	add     r0, r0, r1
	strb    r0, [r4, #0x1]
	mov     r0, r6
	mov     r1, #0x19
	bl      Function_2262e88
	b       branch_2267a2e
@ 0x22676d0

.thumb
branch_22676d0: @ 22676d0 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_2268dcc
	b       branch_2267a2e
@ 0x22676da

.thumb
branch_22676da: @ 22676da :thumb
	ldrb    r2, [r4, #0x1]
	mov     r0, r4
	add     r0, #0x38
	.hword  0x1d92 @ add r2, r2, #0x6
	lsl     r2, r2, #16
	mov     r1, r7
	lsr     r2, r2, #16
	mov     r3, #0x2
	bl      Function_226911c
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_225e234
	ldrb    r3, [r4, #0x1]
	ldr     r2, [pc, #0x68] @ 0x2267764, (=0x165)
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	add     r2, r3, r2
	bl      Function_2268aac
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df8c
	mov     r0, #0x25
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x80
	mov     r2, #0x1a
	mov     r3, r6
	bl      Function_2268ba4
	b       branch_2267a2e
@ 0x2267720

.thumb
branch_2267720: @ 2267720 :thumb
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_225e234
	ldrb    r2, [r4, #0x0]
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	add     r2, #0x55
	bl      Function_2268aac
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df8c
	mov     r0, #0x25
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x80
	mov     r2, #0x1b
	mov     r3, r6
	bl      Function_2268ba4
	b       branch_2267a2e
@ 0x2267750

.word 0x206 @ 0x2267750
.word 0x1fe @ 0x2267754
.word 0x5a8 @ 0x2267758
.word 0x207 @ 0x226775c
.word 0x1dd @ 0x2267760
.word 0x165 @ 0x2267764
.thumb
branch_2267768: @ 2267768 :thumb
	mov     r0, r4
	add     r0, #0x38
	bl      Function_2269178
	cmp     r0, #0x1
	bne     branch_226779a
	mov     r0, r4
	add     r0, #0x38
	bl      Function_2269188
	cmp     r0, #0x2
	bne     branch_226778a
	mov     r0, r6
	mov     r1, #0x1c
	bl      Function_2262e88
	b       branch_2267a2e
@ 0x226778a

.thumb
branch_226778a: @ 226778a :thumb
	mov     r0, r6
	mov     r1, #0x20
	bl      Function_2262e88
	mov     r0, r5
	bl      Function_225dfcc
	b       branch_2267a2e
@ 0x226779a

.thumb
branch_226779a: @ 226779a :thumb
	mov     r0, r5
	bl      Function_225dfdc
	cmp     r0, #0x0
	beq     branch_22677a6
	b       branch_2267a2e
@ 0x22677a6

.thumb
branch_22677a6: @ 22677a6 :thumb
	mov     r0, r5
	bl      Function_225dfbc
	b       branch_2267a2e
@ 0x22677ae

.thumb
branch_22677ae: @ 22677ae :thumb
	ldr     r0, [sp, #0x20]
	cmp     r0, #0x4
	bhi     branch_22677fc
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22677c0

Jumppoints_22677c0:
.hword branch_22677fc - Jumppoints_22677c0 - 2
.hword branch_22677fc - Jumppoints_22677c0 - 2
.hword branch_22677ca - Jumppoints_22677c0 - 2
.hword branch_22677e2 - Jumppoints_22677c0 - 2
.hword branch_22677fc - Jumppoints_22677c0 - 2
.thumb
branch_22677ca: @ 22677ca :thumb
	ldr     r1, [sp, #0x14]
	mov     r0, r4
	bl      Function_2268e20
	mov     r0, r6
	mov     r1, #0x1d
	bl      Function_2262e88
	mov     r0, r5
	bl      Function_225dfcc
	b       branch_2267a2e
@ 0x22677e2

.thumb
branch_22677e2: @ 22677e2 :thumb
	mov     r0, r5
	bl      Function_225dfdc
	cmp     r0, #0x0
	bne     branch_22677f2
	mov     r0, r5
	bl      Function_225dfbc
.thumb
branch_22677f2: @ 22677f2 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_2268d70
	b       branch_2267a2e
@ 0x22677fc

.thumb
branch_22677fc: @ 22677fc :thumb
	mov     r0, r6
	mov     r1, #0x20
	bl      Function_2262e88
	mov     r0, r5
	bl      Function_225dfcc
	b       branch_2267a2e
@ 0x226780c

.thumb
branch_226780c: @ 226780c :thumb
	ldr     r0, [sp, #0x1c]
	.hword  0x1f80 @ sub r0, r0, #0x6
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x1c]
	cmp     r0, #0x7e
	bcs     branch_2267820
	cmp     r0, #0x6
	bcs     branch_226782a
.thumb
branch_2267820: @ 2267820 :thumb
	mov     r0, r6
	mov     r1, #0x23
	bl      Function_2262e88
	b       branch_2267a2e
@ 0x226782a

.thumb
branch_226782a: @ 226782a :thumb
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_225e234
	ldr     r2, [sp, #0x10]
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	add     r2, #0xec
	bl      Function_2268aac
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df8c
	ldrb    r1, [r4, #0x1]
	ldr     r0, [sp, #0x10]
	cmp     r0, r1
	bne     branch_2267862
	mov     r0, #0x25
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x80
	mov     r2, #0x1e
	mov     r3, r6
	bl      Function_2268ba4
	b       branch_2267a2e
@ 0x2267862

.thumb
branch_2267862: @ 2267862 :thumb
	mov     r0, #0x25
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x80
	mov     r2, #0x1f
	mov     r3, r6
	bl      Function_2268ba4
	b       branch_2267a2e
@ 0x2267874

.thumb
branch_2267874: @ 2267874 :thumb
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_225e234
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	mov     r2, #0x33
	bl      Function_2268aac
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df8c
	mov     r0, #0x25
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x80
	mov     r2, #0xa
	mov     r3, r6
	bl      Function_2268ba4
	b       branch_2267a2e
@ 0x22678a2

.thumb
branch_22678a2: @ 22678a2 :thumb
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_225e234
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	mov     r2, #0x32
	bl      Function_2268aac
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df8c
	mov     r0, #0x25
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x80
	mov     r2, #0xa
	mov     r3, r6
	bl      Function_2268ba4
	b       branch_2267a2e
@ 0x22678d0

.thumb
branch_22678d0: @ 22678d0 :thumb
	mov     r1, #0x0
	mov     r0, r5
	mov     r2, r1
	bl      Function_225e0e4
	mov     r0, r4
	add     r0, #0x14
	mov     r1, r5
	bl      Function_2269108
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	mov     r2, #0x2d
	bl      Function_2268aac
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df8c
	mov     r0, #0x0
	strh    r0, [r4, #0xa]
	mov     r0, #0x24
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x80
	mov     r2, #0x26
	mov     r3, r6
	bl      Function_2268ba4
	mov     r0, r7
	bl      0x222edc0
	b       branch_2267a2e
@ 0x2267912

.thumb
branch_2267912: @ 2267912 :thumb
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_225e234
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	mov     r2, #0x2b
	bl      Function_2268aac
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df8c
	mov     r0, #0x0
	strh    r0, [r4, #0xa]
	mov     r0, #0x24
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x80
	mov     r2, #0x26
	mov     r3, r6
	bl      Function_2268ba4
	b       branch_2267a2e
@ 0x2267944

.thumb
branch_2267944: @ 2267944 :thumb
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	mov     r2, #0x2a
	bl      Function_2268aac
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df8c
	mov     r0, #0x0
	strh    r0, [r4, #0xa]
	mov     r0, #0x24
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x80
	mov     r2, #0x26
	mov     r3, r6
	bl      Function_2268ba4
	b       branch_2267a2e
@ 0x226796c

.thumb
branch_226796c: @ 226796c :thumb
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_225e234
	mov     r2, #0x59
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	lsl     r2, r2, #2
	bl      Function_2268aac
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df8c
	mov     r0, #0x0
	strh    r0, [r4, #0xa]
	mov     r0, #0x24
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x80
	mov     r2, #0x26
	mov     r3, r6
	bl      Function_2268ba4
	b       branch_2267a2e
@ 0x22679a0

.thumb
branch_22679a0: @ 22679a0 :thumb
	mov     r0, r4
	mov     r1, r6
	bl      Function_2268bbc
	b       branch_2267a2e
@ 0x22679aa

.thumb
branch_22679aa: @ 22679aa :thumb
	mov     r0, r4
	mov     r1, r6
	mov     r2, r5
	bl      Function_2268bd8
	b       branch_2267a2e
@ 0x22679b6

.thumb
branch_22679b6: @ 22679b6 :thumb
	mov     r0, r4
	add     r0, #0x44
	ldrh    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_22679ce
	mov     r1, r4
	add     r1, #0x46
	ldrh    r1, [r1, #0x0]
	ldr     r2, [r4, #0x48]
	mov     r0, r7
	bl      0x222e500
.thumb
branch_22679ce: @ 22679ce :thumb
	mov     r0, r7
	bl      0x222ec60
	mov     r0, r5
	bl      Function_225dfec
	mov     r0, r7
	mov     r1, #0x1
	bl      0x222e3e4
	mov     r0, r5
	bl      Function_225def0
	mov     r7, r0
	bl      Function_225ccac
	mov     r1, r0
	mov     r0, r7
	mov     r2, #0x1
	bl      Function_225cdec
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x0
	beq     branch_2267a1c
	mov     r1, #0x1
	bl      Function_225d030
	ldr     r0, [r4, #0x10]
	mov     r1, #0x4
	bl      Function_225cd60
	mov     r1, r0
	ldr     r0, [sp, #0x24]
	mov     r2, #0x1
	bl      Function_2262eec
	mov     r0, r5
	bl      Function_225e3d0
.thumb
branch_2267a1c: @ 2267a1c :thumb
	mov     r0, r4
	bl      Function_2268ba0
	mov     r0, r6
	bl      Function_2262e64
	add     sp, #0x4c
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x2267a2e

.thumb
Function_2267a2e: @ 2267a2e :thumb
.thumb
branch_2267a2e: @ 2267a2e :thumb
	mov     r0, r4
	bl      Function_2268e08
	add     r4, #0x38
	mov     r0, r4
	mov     r1, r7
	bl      Function_2269144
	mov     r0, #0x0
	add     sp, #0x4c
	pop     {r4-r7,pc}
@ 0x2267a44

.thumb
Function_2267a44: @ 2267a44 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	bl      Function_225dee8
	mov     r7, r0
	mov     r0, r6
	bl      Function_2262e80
	mov     r4, r0
	mov     r0, r7
	bl      0x222ee30
	str     r0, [sp, #0x14]
	mov     r0, r7
	bl      0x222ee3c
	str     r0, [sp, #0x10]
	mov     r0, r7
	bl      0x222ee68
	cmp     r0, #0x0
	beq     branch_2267a92
	cmp     r4, #0x0
	beq     branch_2267a92
	ldrh    r0, [r4, #0xa]
	cmp     r0, #0x1
	bne     branch_2267a92
	mov     r0, r6
	mov     r1, #0x1a
	bl      Function_2262e88
	mov     r0, r5
	bl      Function_225dfcc
	mov     r0, #0x0
	strh    r0, [r4, #0xa]
.thumb
branch_2267a92: @ 2267a92 :thumb
	cmp     r4, #0x0
	beq     branch_2267aa8
	mov     r0, r7
	bl      0x222e3bc
	str     r0, [sp, #0xc]
	ldrb    r1, [r4, #0x3]
	mov     r0, r7
	bl      0x222e374
	str     r0, [sp, #0x8]
.thumb
branch_2267aa8: @ 2267aa8 :thumb
	mov     r0, r6
	bl      Function_2262e84
	cmp     r0, #0x0
	beq     branch_2267ad0
	ldrh    r0, [r4, #0xa]
	cmp     r0, #0x1
	bne     branch_2267ad0
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x0
	bne     branch_2267ad0
	mov     r0, r6
	mov     r1, #0x1a
	bl      Function_2262e88
	mov     r0, r5
	bl      Function_225dfcc
	mov     r0, #0x0
	strh    r0, [r4, #0xa]
.thumb
branch_2267ad0: @ 2267ad0 :thumb
	mov     r0, r6
	bl      Function_2262e84
	cmp     r0, #0x1f
	bhi     branch_2267b96
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2267ae6

Jumppoints_2267ae6:
.hword branch_2267b26 - Jumppoints_2267ae6 - 2
.hword branch_2267b8c - Jumppoints_2267ae6 - 2
.hword branch_2267bbe - Jumppoints_2267ae6 - 2
.hword branch_2267bfa - Jumppoints_2267ae6 - 2
.hword branch_2267c6c - Jumppoints_2267ae6 - 2
.hword branch_2267c96 - Jumppoints_2267ae6 - 2
.hword branch_2267cc4 - Jumppoints_2267ae6 - 2
.hword branch_2267cfc - Jumppoints_2267ae6 - 2
.hword branch_2267d2a - Jumppoints_2267ae6 - 2
.hword branch_2267d58 - Jumppoints_2267ae6 - 2
.hword branch_2267e1e - Jumppoints_2267ae6 - 2
.hword branch_2267e5a - Jumppoints_2267ae6 - 2
.hword branch_2267ea0 - Jumppoints_2267ae6 - 2
.hword branch_2267edc - Jumppoints_2267ae6 - 2
.hword branch_2267f2a - Jumppoints_2267ae6 - 2
.hword branch_2267f6e - Jumppoints_2267ae6 - 2
.hword branch_2267f9c - Jumppoints_2267ae6 - 2
.hword branch_2267ffc - Jumppoints_2267ae6 - 2
.hword branch_226804a - Jumppoints_2267ae6 - 2
.hword branch_226807a - Jumppoints_2267ae6 - 2
.hword branch_22680aa - Jumppoints_2267ae6 - 2
.hword branch_22680dc - Jumppoints_2267ae6 - 2
.hword branch_2268110 - Jumppoints_2267ae6 - 2
.hword branch_226819e - Jumppoints_2267ae6 - 2
.hword branch_22681ea - Jumppoints_2267ae6 - 2
.hword branch_2268234 - Jumppoints_2267ae6 - 2
.hword branch_2268262 - Jumppoints_2267ae6 - 2
.hword branch_22682a4 - Jumppoints_2267ae6 - 2
.hword branch_22682d6 - Jumppoints_2267ae6 - 2
.hword branch_2268304 - Jumppoints_2267ae6 - 2
.hword branch_226830e - Jumppoints_2267ae6 - 2
.hword branch_226831a - Jumppoints_2267ae6 - 2
.thumb
branch_2267b26: @ 2267b26 :thumb
	mov     r0, r6
	mov     r1, #0x50
	bl      Function_2262e3c
	mov     r4, r0
	mov     r1, #0x0
	add     r0, #0x44
	strh    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x46
	strh    r1, [r0, #0x0]
	mov     r0, r7
	str     r1, [r4, #0x48]
	bl      0x222ee1c
	str     r0, [sp, #0x18]
	ldr     r2, [sp, #0x18]
	mov     r0, r4
	mov     r1, r7
	bl      Function_2268b50
	str     r0, [sp, #0x1c]
	ldr     r0, [pc, #0x344] @ 0x2267e98, (=0x5e4)
	bl      Function_2005748
	mov     r0, r7
	mov     r1, #0x9
	bl      0x222e3e4
	ldr     r0, [sp, #0x1c]
	cmp     r0, #0x1
	bne     branch_2267b82
	ldr     r1, [sp, #0x18]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_225e328
	ldr     r1, [sp, #0x18]
	mov     r0, r7
	bl      0x222eee4
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_2262e88
	b       branch_2268382
@ 0x2267b82

.thumb
branch_2267b82: @ 2267b82 :thumb
	mov     r0, r6
	mov     r1, #0x1a
	bl      Function_2262e88
	b       branch_2268382
@ 0x2267b8c

.thumb
branch_2267b8c: @ 2267b8c :thumb
	mov     r0, r7
	bl      0x222eeac
	cmp     r0, #0x0
	bne     branch_2267b98
.thumb
branch_2267b96: @ 2267b96 :thumb
	b       branch_2268382
@ 0x2267b98

.thumb
branch_2267b98: @ 2267b98 :thumb
	ldr     r0, [sp, #0x8]
	mov     r1, r7
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0xc]
	mov     r2, r5
	str     r0, [sp, #0x4]
	ldrb    r3, [r4, #0x5]
	mov     r0, r4
	bl      Function_2268bf4
	mov     r0, #0x1e
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x80
	mov     r2, #0x2
	mov     r3, r6
	bl      Function_2268ba4
	b       branch_2268382
@ 0x2267bbe

.thumb
branch_2267bbe: @ 2267bbe :thumb
	ldrb    r1, [r4, #0x3]
	mov     r0, r7
	bl      0x222eef4
	mov     r0, r7
	bl      0x222f020
	mov     r0, r7
	mov     r1, #0x7
	bl      0x222f040
	ldr     r0, [sp, #0xc]
	mov     r1, r7
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x8]
	mov     r2, r5
	str     r0, [sp, #0x4]
	ldrb    r3, [r4, #0x4]
	mov     r0, r4
	bl      Function_2268bf4
	mov     r0, #0x1e
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x80
	mov     r2, #0x3
	mov     r3, r6
	bl      Function_2268ba4
	b       branch_2268382
@ 0x2267bfa

.thumb
branch_2267bfa: @ 2267bfa :thumb
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x4
	bhi     branch_2267c5c
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2267c0c

Jumppoints_2267c0c:
.hword branch_2267c5c - Jumppoints_2267c0c - 2
.hword branch_2267c5c - Jumppoints_2267c0c - 2
.hword branch_2267c42 - Jumppoints_2267c0c - 2
.hword branch_2267c16 - Jumppoints_2267c0c - 2
.hword branch_2267c5c - Jumppoints_2267c0c - 2
.thumb
branch_2267c16: @ 2267c16 :thumb
	mov     r0, r5
	bl      Function_225dfcc
	mov     r0, r7
	mov     r1, #0x0
	bl      0x222ecd4
	mov     r0, r7
	bl      0x222ee24
	cmp     r0, #0x0
	beq     branch_2267c38
	mov     r0, r6
	mov     r1, #0x4
	bl      Function_2262e88
	b       branch_2268382
@ 0x2267c38

.thumb
branch_2267c38: @ 2267c38 :thumb
	mov     r0, r6
	mov     r1, #0x6
	bl      Function_2262e88
	b       branch_2268382
@ 0x2267c42

.thumb
branch_2267c42: @ 2267c42 :thumb
	mov     r0, r5
	bl      Function_225dfdc
	cmp     r0, #0x0
	bne     branch_2267c52
	mov     r0, r5
	bl      Function_225dfbc
.thumb
branch_2267c52: @ 2267c52 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_2268d70
	b       branch_2268382
@ 0x2267c5c

.thumb
branch_2267c5c: @ 2267c5c :thumb
	mov     r0, r6
	mov     r1, #0x1a
	bl      Function_2262e88
	mov     r0, r5
	bl      Function_225dfcc
	b       branch_2268382
@ 0x2267c6c

.thumb
branch_2267c6c: @ 2267c6c :thumb
	mov     r0, r4
	mov     r1, r7
	mov     r2, r5
	bl      Function_2268cc8
	cmp     r0, #0x1
	bne     branch_2267c8c
	mov     r0, #0x1e
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x80
	mov     r2, #0x5
	mov     r3, r6
	bl      Function_2268ba4
	b       branch_2268382
@ 0x2267c8c

.thumb
branch_2267c8c: @ 2267c8c :thumb
	mov     r0, r6
	mov     r1, #0x5
	bl      Function_2262e88
	b       branch_2268382
@ 0x2267c96

.thumb
branch_2267c96: @ 2267c96 :thumb
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_225e234
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	mov     r2, #0x28
	bl      Function_2268aac
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df8c
	mov     r0, #0x1e
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x80
	mov     r2, #0x7
	mov     r3, r6
	bl      Function_2268ba4
	b       branch_2268382
@ 0x2267cc4

.thumb
branch_2267cc4: @ 2267cc4 :thumb
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_225e234
	ldrh    r1, [r4, #0x8]
	mov     r0, r5
	mov     r2, #0x1
	bl      Function_225e234
	ldrb    r1, [r4, #0x3]
	ldrh    r2, [r4, #0x8]
	mov     r0, r5
	bl      Function_2268af8
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df8c
	mov     r0, #0x1e
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x80
	mov     r2, #0x7
	mov     r3, r6
	bl      Function_2268ba4
	b       branch_2268382
@ 0x2267cfc

.thumb
branch_2267cfc: @ 2267cfc :thumb
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_225e234
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	mov     r2, #0x2f
	bl      Function_2268aac
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df8c
	mov     r0, #0x1e
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x80
	mov     r2, #0x9
	mov     r3, r6
	bl      Function_2268ba4
	b       branch_2268382
@ 0x2267d2a

.thumb
branch_2267d2a: @ 2267d2a :thumb
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_225e234
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	mov     r2, #0x35
	bl      Function_2268aac
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df8c
	mov     r0, #0x1e
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x80
	mov     r2, #0x9
	mov     r3, r6
	bl      Function_2268ba4
	b       branch_2268382
@ 0x2267d58

.thumb
branch_2267d58: @ 2267d58 :thumb
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x4
	bhi     branch_2267e0e
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2267d6a

Jumppoints_2267d6a:
.hword branch_2267dfe - Jumppoints_2267d6a - 2
.hword branch_2267e0e - Jumppoints_2267d6a - 2
.hword branch_2267de4 - Jumppoints_2267d6a - 2
.hword branch_2267d74 - Jumppoints_2267d6a - 2
.hword branch_2267e0e - Jumppoints_2267d6a - 2
.thumb
branch_2267d74: @ 2267d74 :thumb
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x3
	beq     branch_2267d84
	cmp     r0, #0x4
	beq     branch_2267da0
	cmp     r0, #0x5
	beq     branch_2267dbc
	b       branch_2267dce
@ 0x2267d84

.thumb
branch_2267d84: @ 2267d84 :thumb
	mov     r0, r6
	mov     r1, #0xa
	bl      Function_2262e88
	mov     r0, r7
	bl      0x222eeb8
	mov     r0, #0x1
	str     r0, [r4, #0x4c]
	ldr     r1, [sp, #0x8]
	mov     r0, r4
	bl      Function_2268e20
	b       branch_2267ddc
@ 0x2267da0

.thumb
branch_2267da0: @ 2267da0 :thumb
	mov     r0, r6
	mov     r1, #0xe
	bl      Function_2262e88
	mov     r0, r7
	bl      0x222eeb8
	mov     r0, #0x1
	str     r0, [r4, #0x4c]
	ldr     r1, [sp, #0x8]
	mov     r0, r4
	bl      Function_2268e20
	b       branch_2267ddc
@ 0x2267dbc

.thumb
branch_2267dbc: @ 2267dbc :thumb
	mov     r0, r7
	mov     r1, #0x1
	bl      0x222ecd4
	mov     r0, r6
	mov     r1, #0xf
	bl      Function_2262e88
	b       branch_2267ddc
@ 0x2267dce

.thumb
branch_2267dce: @ 2267dce :thumb
	mov     r0, r6
	mov     r1, #0x1a
	bl      Function_2262e88
	mov     r0, r5
	bl      Function_225dfcc
.thumb
branch_2267ddc: @ 2267ddc :thumb
	mov     r0, r5
	bl      Function_225dfcc
	b       branch_2268382
@ 0x2267de4

.thumb
branch_2267de4: @ 2267de4 :thumb
	mov     r0, r5
	bl      Function_225dfdc
	cmp     r0, #0x0
	bne     branch_2267df4
	mov     r0, r5
	bl      Function_225dfbc
.thumb
branch_2267df4: @ 2267df4 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_2268d70
	b       branch_2268382
@ 0x2267dfe

.thumb
branch_2267dfe: @ 2267dfe :thumb
	mov     r0, r6
	mov     r1, #0x1b
	bl      Function_2262e88
	mov     r0, r5
	bl      Function_225dfcc
	b       branch_2268382
@ 0x2267e0e

.thumb
branch_2267e0e: @ 2267e0e :thumb
	mov     r0, r6
	mov     r1, #0x1a
	bl      Function_2262e88
	mov     r0, r5
	bl      Function_225dfcc
	b       branch_2268382
@ 0x2267e1e

.thumb
branch_2267e1e: @ 2267e1e :thumb
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_225e234
	mov     r3, #0x1
	str     r3, [sp, #0x0]
	mov     r0, r4
	mov     r1, r7
	mov     r2, r5
	bl      Function_2268d38
	ldrb    r1, [r4, #0x3]
	ldr     r2, [pc, #0x60] @ 0x2267e9c, (=0x1ff)
	mov     r0, r5
	bl      Function_2268aac
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df8c
	mov     r0, #0x1e
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x80
	mov     r2, #0xb
	mov     r3, r6
	bl      Function_2268ba4
	b       branch_2268382
@ 0x2267e5a

.thumb
branch_2267e5a: @ 2267e5a :thumb
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_225e234
	mov     r3, #0x1
	str     r3, [sp, #0x0]
	mov     r0, r4
	mov     r1, r7
	mov     r2, r5
	bl      Function_2268d38
	mov     r2, #0x2
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	lsl     r2, r2, #8
	bl      Function_2268aac
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df8c
	mov     r0, #0x1e
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x80
	mov     r2, #0xc
	mov     r3, r6
	bl      Function_2268ba4
	b       branch_2268382
@ 0x2267e98

.word 0x5e4 @ 0x2267e98
.word 0x1ff @ 0x2267e9c
.thumb
branch_2267ea0: @ 2267ea0 :thumb
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_225e234
	mov     r3, #0x1
	str     r3, [sp, #0x0]
	mov     r0, r4
	mov     r1, r7
	mov     r2, r5
	bl      Function_2268d38
	ldrb    r1, [r4, #0x3]
	ldr     r2, [pc, #0x35c] @ 0x2268218, (=0x201)
	mov     r0, r5
	bl      Function_2268aac
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df8c
	mov     r0, #0x1e
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x80
	mov     r2, #0xd
	mov     r3, r6
	bl      Function_2268ba4
	b       branch_2268382
@ 0x2267edc

.thumb
branch_2267edc: @ 2267edc :thumb
	ldr     r0, [pc, #0x33c] @ 0x226821c, (=0x5a8)
	bl      Function_2005748
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_225e234
	ldrb    r1, [r4, #0x3]
	ldr     r2, [pc, #0x330] @ 0x2268220, (=0x202)
	mov     r0, r5
	bl      Function_2268aac
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df8c
	mov     r0, #0x1e
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x80
	mov     r2, #0x8
	mov     r3, r6
	bl      Function_2268ba4
	mov     r0, r7
	mov     r1, #0x2
	bl      0x222ecd4
	mov     r0, r7
	bl      0x222e3bc
	bl      0x222e8c4
	mov     r1, r0
	mov     r0, r5
	bl      Function_225e378
	b       branch_2268382
@ 0x2267f2a

.thumb
branch_2267f2a: @ 2267f2a :thumb
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_225e234
	mov     r3, #0x1
	str     r3, [sp, #0x0]
	mov     r0, r4
	mov     r1, r7
	mov     r2, r5
	bl      Function_2268d38
	ldrb    r1, [r4, #0x3]
	ldr     r2, [pc, #0x2dc] @ 0x2268224, (=0x1fb)
	mov     r0, r5
	bl      Function_2268aac
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df8c
	mov     r0, #0x1e
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x80
	mov     r2, #0x1b
	mov     r3, r6
	bl      Function_2268ba4
	mov     r0, r7
	mov     r1, #0x2
	bl      0x222ecd4
	b       branch_2268382
@ 0x2267f6e

.thumb
branch_2267f6e: @ 2267f6e :thumb
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_225e234
	ldrb    r1, [r4, #0x3]
	ldr     r2, [pc, #0x2ac] @ 0x2268228, (=0x2af)
	mov     r0, r5
	bl      Function_2268aac
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df8c
	mov     r0, #0x1e
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x80
	mov     r2, #0x10
	mov     r3, r6
	bl      Function_2268ba4
	b       branch_2268382
@ 0x2267f9c

.thumb
branch_2267f9c: @ 2267f9c :thumb
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x4
	bhi     branch_2267fec
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2267fae

Jumppoints_2267fae:
.hword branch_2267fec - Jumppoints_2267fae - 2
.hword branch_2267fec - Jumppoints_2267fae - 2
.hword branch_2267fd2 - Jumppoints_2267fae - 2
.hword branch_2267fb8 - Jumppoints_2267fae - 2
.hword branch_2267fec - Jumppoints_2267fae - 2
.thumb
branch_2267fb8: @ 2267fb8 :thumb
	mov     r0, r6
	mov     r1, #0x11
	bl      Function_2262e88
	mov     r0, r5
	bl      Function_225dfcc
	mov     r0, r7
	bl      0x222eeb8
	mov     r0, #0x1
	str     r0, [r4, #0x4c]
	b       branch_2268382
@ 0x2267fd2

.thumb
branch_2267fd2: @ 2267fd2 :thumb
	mov     r0, r5
	bl      Function_225dfdc
	cmp     r0, #0x0
	bne     branch_2267fe2
	mov     r0, r5
	bl      Function_225dfbc
.thumb
branch_2267fe2: @ 2267fe2 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_2268d70
	b       branch_2268382
@ 0x2267fec

.thumb
branch_2267fec: @ 2267fec :thumb
	mov     r0, r6
	mov     r1, #0x1a
	bl      Function_2262e88
	mov     r0, r5
	bl      Function_225dfcc
	b       branch_2268382
@ 0x2267ffc

.thumb
branch_2267ffc: @ 2267ffc :thumb
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x6
	bcc     branch_2268006
	cmp     r0, #0x7e
	bcc     branch_2268010
.thumb
branch_2268006: @ 2268006 :thumb
	mov     r0, r6
	mov     r1, #0x1a
	bl      Function_2262e88
	b       branch_2268382
@ 0x2268010

.thumb
branch_2268010: @ 2268010 :thumb
	.hword  0x1f80 @ sub r0, r0, #0x6
	strb    r0, [r4, #0x2]
	ldrb    r0, [r4, #0x2]
	mov     r2, #0x0
	lsr     r0, r0, #2
	strb    r0, [r4, #0x0]
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	bl      Function_225e234
	ldrb    r2, [r4, #0x0]
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	add     r2, #0x37
	bl      Function_2268aac
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df8c
	mov     r0, #0x1e
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x80
	mov     r2, #0x12
	mov     r3, r6
	bl      Function_2268ba4
	b       branch_2268382
@ 0x226804a

.thumb
branch_226804a: @ 226804a :thumb
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_225e234
	ldrb    r2, [r4, #0x0]
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	add     r2, #0x55
	bl      Function_2268aac
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df8c
	mov     r0, #0x1e
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x80
	mov     r2, #0x13
	mov     r3, r6
	bl      Function_2268ba4
	b       branch_2268382
@ 0x226807a

.thumb
branch_226807a: @ 226807a :thumb
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_225e234
	ldrb    r2, [r4, #0x2]
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	add     r2, #0xec
	bl      Function_2268aac
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df8c
	mov     r0, #0x1e
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x80
	mov     r2, #0x14
	mov     r3, r6
	bl      Function_2268ba4
	b       branch_2268382
@ 0x22680aa

.thumb
branch_22680aa: @ 22680aa :thumb
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_225e234
	ldrb    r3, [r4, #0x0]
	ldr     r2, [pc, #0x174] @ 0x226822c, (=0x1dd)
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	add     r2, r3, r2
	bl      Function_2268aac
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df8c
	mov     r0, #0x1e
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x80
	mov     r2, #0x15
	mov     r3, r6
	bl      Function_2268ba4
	b       branch_2268382
@ 0x22680dc

.thumb
branch_22680dc: @ 22680dc :thumb
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	ldrb    r3, [r4, #0x0]
	mov     r0, r4
	add     r0, #0x14
	lsl     r3, r3, #2
	mov     r1, r5
	mov     r2, #0x5
	add     r3, #0x73
	bl      Function_2268e44
	mov     r1, r4
	mov     r2, #0x0
	mov     r0, r5
	add     r1, #0x14
	mov     r3, r2
	bl      Function_225e074
	mov     r0, r4
	bl      Function_2268db8
	mov     r0, r6
	mov     r1, #0x16
	bl      Function_2262e88
	b       branch_2268382
@ 0x2268110

.thumb
branch_2268110: @ 2268110 :thumb
	mov     r0, r5
	bl      Function_225e0d4
	cmp     r0, #0x4
	bhi     branch_226816a
	add     r1, r0, r0
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2268126

Jumppoints_2268126:
.hword branch_2268130 - Jumppoints_2268126 - 2
.hword branch_2268130 - Jumppoints_2268126 - 2
.hword branch_2268130 - Jumppoints_2268126 - 2
.hword branch_2268130 - Jumppoints_2268126 - 2
.hword branch_2268152 - Jumppoints_2268126 - 2
.thumb
branch_2268130: @ 2268130 :thumb
	ldrb    r1, [r4, #0x0]
	lsl     r1, r1, #2
	add     r0, r0, r1
	strb    r0, [r4, #0x1]
	ldrb    r1, [r4, #0x1]
	mov     r0, r7
	.hword  0x1d89 @ add r1, r1, #0x6
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	bl      0x222ecd4
	mov     r0, r6
	mov     r1, #0x17
	bl      Function_2262e88
	mov     r0, #0x1
	b       branch_2268174
@ 0x2268152

.thumb
branch_2268152: @ 2268152 :thumb
	mov     r0, #0x7e
	strb    r0, [r4, #0x1]
	ldrb    r1, [r4, #0x1]
	mov     r0, r7
	bl      0x222ecd4
	mov     r0, r6
	mov     r1, #0x1c
	bl      Function_2262e88
	mov     r0, #0x1
	b       branch_2268174
@ 0x226816a

.thumb
branch_226816a: @ 226816a :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_2268dcc
	mov     r0, #0x0
.thumb
branch_2268174: @ 2268174 :thumb
	cmp     r0, #0x0
	bne     branch_226817a
	b       branch_2268382
@ 0x226817a

.thumb
branch_226817a: @ 226817a :thumb
	mov     r1, #0x0
	mov     r0, r5
	mov     r2, r1
	bl      Function_225e0e4
	mov     r0, r4
	add     r0, #0x14
	mov     r1, r5
	bl      Function_2269108
	mov     r0, r4
	bl      Function_2268dc4
	ldr     r1, [sp, #0x8]
	mov     r0, r4
	bl      Function_2268e20
	b       branch_2268382
@ 0x226819e

.thumb
branch_226819e: @ 226819e :thumb
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_225e234
	ldrb    r3, [r4, #0x1]
	ldr     r2, [pc, #0x84] @ 0x2268230, (=0x165)
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	add     r2, r3, r2
	bl      Function_2268aac
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df8c
	ldrb    r1, [r4, #0x2]
	ldrb    r0, [r4, #0x1]
	cmp     r1, r0
	bne     branch_22681d8
	mov     r0, #0x1e
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x80
	mov     r2, #0x18
	mov     r3, r6
	bl      Function_2268ba4
	b       branch_2268382
@ 0x22681d8

.thumb
branch_22681d8: @ 22681d8 :thumb
	mov     r0, #0x1e
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x80
	mov     r2, #0x19
	mov     r3, r6
	bl      Function_2268ba4
	b       branch_2268382
@ 0x22681ea

.thumb
branch_22681ea: @ 22681ea :thumb
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_225e234
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	mov     r2, #0x33
	bl      Function_2268aac
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df8c
	mov     r0, #0x1e
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x80
	mov     r2, #0x19
	mov     r3, r6
	bl      Function_2268ba4
	b       branch_2268382
@ 0x2268218

.word 0x201 @ 0x2268218
.word 0x5a8 @ 0x226821c
.word 0x202 @ 0x2268220
.word 0x1fb @ 0x2268224
.word 0x2af @ 0x2268228
.word 0x1dd @ 0x226822c
.word 0x165 @ 0x2268230
.thumb
branch_2268234: @ 2268234 :thumb
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_225e234
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	mov     r2, #0x34
	bl      Function_2268aac
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df8c
	mov     r0, #0x1e
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x80
	mov     r2, #0x8
	mov     r3, r6
	bl      Function_2268ba4
	b       branch_2268382
@ 0x2268262

.thumb
branch_2268262: @ 2268262 :thumb
	mov     r1, #0x0
	mov     r0, r5
	mov     r2, r1
	bl      Function_225e0e4
	mov     r0, r4
	add     r0, #0x14
	mov     r1, r5
	bl      Function_2269108
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	mov     r2, #0x2d
	bl      Function_2268aac
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df8c
	mov     r0, #0x0
	strh    r0, [r4, #0xa]
	mov     r0, #0x1d
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x80
	mov     r2, #0x1f
	mov     r3, r6
	bl      Function_2268ba4
	mov     r0, r7
	bl      0x222edc0
	b       branch_2268382
@ 0x22682a4

.thumb
branch_22682a4: @ 22682a4 :thumb
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_225e234
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	mov     r2, #0x2b
	bl      Function_2268aac
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df8c
	mov     r0, #0x0
	strh    r0, [r4, #0xa]
	mov     r0, #0x1d
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x80
	mov     r2, #0x1f
	mov     r3, r6
	bl      Function_2268ba4
	b       branch_2268382
@ 0x22682d6

.thumb
branch_22682d6: @ 22682d6 :thumb
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_225e234
	ldrb    r1, [r4, #0x3]
	mov     r0, r5
	mov     r2, #0x31
	bl      Function_2268aac
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df8c
	mov     r0, #0x1e
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x80
	mov     r2, #0x1b
	mov     r3, r6
	bl      Function_2268ba4
	b       branch_2268382
@ 0x2268304

.thumb
branch_2268304: @ 2268304 :thumb
	mov     r0, r4
	mov     r1, r6
	bl      Function_2268bbc
	b       branch_2268382
@ 0x226830e

.thumb
branch_226830e: @ 226830e :thumb
	mov     r0, r4
	mov     r1, r6
	mov     r2, r5
	bl      Function_2268bd8
	b       branch_2268382
@ 0x226831a

.thumb
branch_226831a: @ 226831a :thumb
	mov     r0, r4
	add     r0, #0x44
	ldrh    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_2268332
	mov     r1, r4
	add     r1, #0x46
	ldrh    r1, [r1, #0x0]
	ldr     r2, [r4, #0x48]
	mov     r0, r7
	bl      0x222e500
.thumb
branch_2268332: @ 2268332 :thumb
	ldr     r0, [r4, #0x4c]
	cmp     r0, #0x0
	bne     branch_2268340
	ldrb    r1, [r4, #0x3]
	mov     r0, r7
	bl      0x222eed4
.thumb
branch_2268340: @ 2268340 :thumb
	mov     r0, r7
	bl      0x222ec60
	mov     r0, r5
	bl      Function_225dfec
	mov     r0, r4
	bl      Function_2268ba0
	mov     r0, r6
	bl      Function_2262e64
	mov     r0, r7
	mov     r1, #0x1
	bl      0x222e3e4
	mov     r0, r5
	bl      Function_225def0
	mov     r4, r0
	bl      Function_225ccac
	mov     r1, r0
	mov     r0, r4
	mov     r2, #0x1
	bl      Function_225cdec
	mov     r0, r5
	bl      Function_225e3d0
	add     sp, #0x20
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2268382

.thumb
branch_2268382: @ 2268382 :thumb
	mov     r0, r4
	bl      Function_2268e08
	mov     r0, #0x0
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x226838e


.align 2, 0


.thumb
Function_2268390: @ 2268390 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r6, r0
	bl      Function_2262e80
	mov     r5, r0
	mov     r0, r4
	bl      Function_225dee8
	mov     r7, r0
	mov     r0, r6
	bl      Function_2262e84
	cmp     r0, #0x18
	bls     branch_22683b2
	b       branch_2268892
@ 0x22683b2

.thumb
branch_22683b2: @ 22683b2 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22683be

Jumppoints_22683be:
.hword branch_22683f0 - Jumppoints_22683be - 2
.hword branch_2268430 - Jumppoints_22683be - 2
.hword branch_2268450 - Jumppoints_22683be - 2
.hword branch_2268470 - Jumppoints_22683be - 2
.hword branch_2268490 - Jumppoints_22683be - 2
.hword branch_22684b0 - Jumppoints_22683be - 2
.hword branch_22684da - Jumppoints_22683be - 2
.hword branch_2268588 - Jumppoints_22683be - 2
.hword branch_22685a8 - Jumppoints_22683be - 2
.hword branch_22685c6 - Jumppoints_22683be - 2
.hword branch_226863e - Jumppoints_22683be - 2
.hword branch_2268668 - Jumppoints_22683be - 2
.hword branch_2268692 - Jumppoints_22683be - 2
.hword branch_22686bc - Jumppoints_22683be - 2
.hword branch_22686dc - Jumppoints_22683be - 2
.hword branch_22686fc - Jumppoints_22683be - 2
.hword branch_226871c - Jumppoints_22683be - 2
.hword branch_2268740 - Jumppoints_22683be - 2
.hword branch_22687b6 - Jumppoints_22683be - 2
.hword branch_22687d6 - Jumppoints_22683be - 2
.hword branch_22687f6 - Jumppoints_22683be - 2
.hword branch_2268816 - Jumppoints_22683be - 2
.hword branch_2268836 - Jumppoints_22683be - 2
.hword branch_2268856 - Jumppoints_22683be - 2
.hword branch_226886a - Jumppoints_22683be - 2
.thumb
branch_22683f0: @ 22683f0 :thumb
	mov     r0, r6
	mov     r1, #0x28
	bl      Function_2262e3c
	ldr     r0, [pc, #0x340] @ 0x226873c, (=0x5dc)
	bl      Function_2005748
	mov     r0, r7
	bl      0x222e12c
	cmp     r0, #0x1
	bne     branch_2268412
	mov     r0, r6
	mov     r1, #0x2
	bl      Function_2262e88
	b       branch_2268892
@ 0x2268412

.thumb
branch_2268412: @ 2268412 :thumb
	mov     r0, r7
	bl      0x222e170
	cmp     r0, #0x1
	bne     branch_2268426
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_2262e88
	b       branch_2268892
@ 0x2268426

.thumb
branch_2268426: @ 2268426 :thumb
	mov     r0, r6
	mov     r1, #0x3
	bl      Function_2262e88
	b       branch_2268892
@ 0x2268430

.thumb
branch_2268430: @ 2268430 :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x4e
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r4
	bl      Function_225df8c
	mov     r0, #0x18
	str     r0, [r5, #0x0]
	mov     r0, r6
	mov     r1, #0x17
	bl      Function_2262e88
	b       branch_2268892
@ 0x2268450

.thumb
branch_2268450: @ 2268450 :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x3
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r4
	bl      Function_225df8c
	mov     r0, #0x18
	str     r0, [r5, #0x0]
	mov     r0, r6
	mov     r1, #0x17
	bl      Function_2262e88
	b       branch_2268892
@ 0x2268470

.thumb
branch_2268470: @ 2268470 :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0xf
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r4
	bl      Function_225df8c
	mov     r0, #0x4
	str     r0, [r5, #0x0]
	mov     r0, r6
	mov     r1, #0x17
	bl      Function_2262e88
	b       branch_2268892
@ 0x2268490

.thumb
branch_2268490: @ 2268490 :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x10
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r4
	bl      Function_225df8c
	mov     r0, #0x5
	str     r0, [r5, #0x0]
	mov     r0, r6
	mov     r1, #0x17
	bl      Function_2262e88
	b       branch_2268892
@ 0x22684b0

.thumb
branch_22684b0: @ 22684b0 :thumb
	add     r0, r5, #0x4
	mov     r1, r4
	bl      Function_2268fb8
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0xf
	mov     r2, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r4
	add     r1, r5, #0x4
	mov     r3, r2
	bl      Function_225e0a4
	mov     r0, r6
	mov     r1, #0x6
	bl      Function_2262e88
	b       branch_2268892
@ 0x22684da

.thumb
branch_22684da: @ 22684da :thumb
	mov     r0, r4
	mov     r7, #0x0
	bl      Function_225e0d4
	cmp     r0, #0x7
	bhi     branch_2268502
	add     r1, r0, r0
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x22684f2

Jumppoints_22684f2:
.hword branch_226850c - Jumppoints_22684f2 - 2
.hword branch_2268518 - Jumppoints_22684f2 - 2
.hword branch_2268524 - Jumppoints_22684f2 - 2
.hword branch_2268530 - Jumppoints_22684f2 - 2
.hword branch_226853c - Jumppoints_22684f2 - 2
.hword branch_2268548 - Jumppoints_22684f2 - 2
.hword branch_2268554 - Jumppoints_22684f2 - 2
.hword branch_2268566 - Jumppoints_22684f2 - 2
.thumb
branch_2268502: @ 2268502 :thumb
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_2268560
	b       branch_2268570
@ 0x226850c

.thumb
branch_226850c: @ 226850c :thumb
	mov     r0, r6
	mov     r1, #0x7
	bl      Function_2262e88
	mov     r7, #0x1
	b       branch_2268570
@ 0x2268518

.thumb
branch_2268518: @ 2268518 :thumb
	mov     r0, r6
	mov     r1, #0x8
	bl      Function_2262e88
	mov     r7, #0x1
	b       branch_2268570
@ 0x2268524

.thumb
branch_2268524: @ 2268524 :thumb
	mov     r0, r6
	mov     r1, #0xd
	bl      Function_2262e88
	mov     r7, #0x1
	b       branch_2268570
@ 0x2268530

.thumb
branch_2268530: @ 2268530 :thumb
	mov     r0, r6
	mov     r1, #0xe
	bl      Function_2262e88
	mov     r7, #0x1
	b       branch_2268570
@ 0x226853c

.thumb
branch_226853c: @ 226853c :thumb
	mov     r0, r6
	mov     r1, #0xf
	bl      Function_2262e88
	mov     r7, #0x1
	b       branch_2268570
@ 0x2268548

.thumb
branch_2268548: @ 2268548 :thumb
	mov     r0, r6
	mov     r1, #0x15
	bl      Function_2262e88
	mov     r7, #0x1
	b       branch_2268570
@ 0x2268554

.thumb
branch_2268554: @ 2268554 :thumb
	mov     r0, r6
	mov     r1, #0x10
	bl      Function_2262e88
	mov     r7, #0x1
	b       branch_2268570
@ 0x2268560

.thumb
branch_2268560: @ 2268560 :thumb
	ldr     r0, [pc, #0x1d8] @ 0x226873c, (=0x5dc)
	bl      Function_2005748
.thumb
branch_2268566: @ 2268566 :thumb
	mov     r0, r6
	mov     r1, #0x16
	bl      Function_2262e88
	mov     r7, #0x1
.thumb
branch_2268570: @ 2268570 :thumb
	cmp     r7, #0x1
	bne     branch_2268628
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	bl      Function_225e0e4
	add     r0, r5, #0x4
	mov     r1, r4
	bl      Function_2269108
	b       branch_2268892
@ 0x2268588

.thumb
branch_2268588: @ 2268588 :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x17
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r4
	bl      Function_225df8c
	mov     r0, #0x4
	str     r0, [r5, #0x0]
	mov     r0, r6
	mov     r1, #0x17
	bl      Function_2262e88
	b       branch_2268892
@ 0x22685a8

.thumb
branch_22685a8: @ 22685a8 :thumb
	add     r0, r5, #0x4
	mov     r1, r4
	bl      Function_2269090
	mov     r2, #0x0
	mov     r0, r4
	add     r1, r5, #0x4
	mov     r3, r2
	bl      Function_225e074
	mov     r0, r6
	mov     r1, #0x9
	bl      Function_2262e88
	b       branch_2268892
@ 0x22685c6

.thumb
branch_22685c6: @ 22685c6 :thumb
	mov     r0, r4
	mov     r7, #0x0
	bl      Function_225e0d4
	cmp     r0, #0x3
	bhi     branch_22685e6
	add     r1, r0, r0
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x22685de

Jumppoints_22685de:
.hword branch_22685f0 - Jumppoints_22685de - 2
.hword branch_22685fc - Jumppoints_22685de - 2
.hword branch_2268608 - Jumppoints_22685de - 2
.hword branch_226861a - Jumppoints_22685de - 2
.thumb
branch_22685e6: @ 22685e6 :thumb
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_2268614
	b       branch_2268624
@ 0x22685f0

.thumb
branch_22685f0: @ 22685f0 :thumb
	mov     r0, r6
	mov     r1, #0xa
	bl      Function_2262e88
	mov     r7, #0x1
	b       branch_2268624
@ 0x22685fc

.thumb
branch_22685fc: @ 22685fc :thumb
	mov     r0, r6
	mov     r1, #0xb
	bl      Function_2262e88
	mov     r7, #0x1
	b       branch_2268624
@ 0x2268608

.thumb
branch_2268608: @ 2268608 :thumb
	mov     r0, r6
	mov     r1, #0xc
	bl      Function_2262e88
	mov     r7, #0x1
	b       branch_2268624
@ 0x2268614

.thumb
branch_2268614: @ 2268614 :thumb
	ldr     r0, [pc, #0x124] @ 0x226873c, (=0x5dc)
	bl      Function_2005748
.thumb
branch_226861a: @ 226861a :thumb
	mov     r0, r6
	mov     r1, #0x4
	bl      Function_2262e88
	mov     r7, #0x1
.thumb
branch_2268624: @ 2268624 :thumb
	cmp     r7, #0x1
	beq     branch_226862a
.thumb
branch_2268628: @ 2268628 :thumb
	b       branch_2268892
@ 0x226862a

.thumb
branch_226862a: @ 226862a :thumb
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	bl      Function_225e0e4
	add     r0, r5, #0x4
	mov     r1, r4
	bl      Function_2269108
	b       branch_2268892
@ 0x226863e

.thumb
branch_226863e: @ 226863e :thumb
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	bl      Function_225e27c
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x18
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r4
	bl      Function_225df8c
	mov     r0, #0x4
	str     r0, [r5, #0x0]
	mov     r0, r6
	mov     r1, #0x17
	bl      Function_2262e88
	b       branch_2268892
@ 0x2268668

.thumb
branch_2268668: @ 2268668 :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_225e27c
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x19
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r4
	bl      Function_225df8c
	mov     r0, #0x4
	str     r0, [r5, #0x0]
	mov     r0, r6
	mov     r1, #0x17
	bl      Function_2262e88
	b       branch_2268892
@ 0x2268692

.thumb
branch_2268692: @ 2268692 :thumb
	mov     r0, r4
	mov     r1, #0x2
	mov     r2, #0x0
	bl      Function_225e27c
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x1a
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r4
	bl      Function_225df8c
	mov     r0, #0x4
	str     r0, [r5, #0x0]
	mov     r0, r6
	mov     r1, #0x17
	bl      Function_2262e88
	b       branch_2268892
@ 0x22686bc

.thumb
branch_22686bc: @ 22686bc :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x12
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r4
	bl      Function_225df8c
	mov     r0, #0x4
	str     r0, [r5, #0x0]
	mov     r0, r6
	mov     r1, #0x17
	bl      Function_2262e88
	b       branch_2268892
@ 0x22686dc

.thumb
branch_22686dc: @ 22686dc :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x13
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r4
	bl      Function_225df8c
	mov     r0, #0x4
	str     r0, [r5, #0x0]
	mov     r0, r6
	mov     r1, #0x17
	bl      Function_2262e88
	b       branch_2268892
@ 0x22686fc

.thumb
branch_22686fc: @ 22686fc :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x14
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r4
	bl      Function_225df8c
	mov     r0, #0x4
	str     r0, [r5, #0x0]
	mov     r0, r6
	mov     r1, #0x17
	bl      Function_2262e88
	b       branch_2268892
@ 0x226871c

.thumb
branch_226871c: @ 226871c :thumb
	add     r0, r5, #0x4
	mov     r1, r4
	bl      Function_2269018
	mov     r2, #0x0
	mov     r0, r4
	add     r1, r5, #0x4
	mov     r3, r2
	bl      Function_225e074
	mov     r0, r6
	mov     r1, #0x11
	bl      Function_2262e88
	b       branch_2268892
@ 0x226873a


.align 2


.word 0x5dc @ 0x226873c
.thumb
branch_2268740: @ 2268740 :thumb
	mov     r0, r4
	mov     r7, #0x0
	bl      Function_225e0d4
	cmp     r0, #0x3
	bhi     branch_2268760
	add     r1, r0, r0
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2268758

Jumppoints_2268758:
.hword branch_226876a - Jumppoints_2268758 - 2
.hword branch_2268776 - Jumppoints_2268758 - 2
.hword branch_2268782 - Jumppoints_2268758 - 2
.hword branch_2268794 - Jumppoints_2268758 - 2
.thumb
branch_2268760: @ 2268760 :thumb
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_226878e
	b       branch_226879e
@ 0x226876a

.thumb
branch_226876a: @ 226876a :thumb
	mov     r0, r6
	mov     r1, #0x12
	bl      Function_2262e88
	mov     r7, #0x1
	b       branch_226879e
@ 0x2268776

.thumb
branch_2268776: @ 2268776 :thumb
	mov     r0, r6
	mov     r1, #0x13
	bl      Function_2262e88
	mov     r7, #0x1
	b       branch_226879e
@ 0x2268782

.thumb
branch_2268782: @ 2268782 :thumb
	mov     r0, r6
	mov     r1, #0x14
	bl      Function_2262e88
	mov     r7, #0x1
	b       branch_226879e
@ 0x226878e

.thumb
branch_226878e: @ 226878e :thumb
	ldr     r0, [pc, #0x108] @ 0x2268898, (=0x5dc)
	bl      Function_2005748
.thumb
branch_2268794: @ 2268794 :thumb
	mov     r0, r6
	mov     r1, #0x4
	bl      Function_2262e88
	mov     r7, #0x1
.thumb
branch_226879e: @ 226879e :thumb
	cmp     r7, #0x1
	bne     branch_2268892
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	bl      Function_225e0e4
	add     r0, r5, #0x4
	mov     r1, r4
	bl      Function_2269108
	b       branch_2268892
@ 0x22687b6

.thumb
branch_22687b6: @ 22687b6 :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x1b
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r4
	bl      Function_225df8c
	mov     r0, #0x4
	str     r0, [r5, #0x0]
	mov     r0, r6
	mov     r1, #0x17
	bl      Function_2262e88
	b       branch_2268892
@ 0x22687d6

.thumb
branch_22687d6: @ 22687d6 :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x1c
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r4
	bl      Function_225df8c
	mov     r0, #0x4
	str     r0, [r5, #0x0]
	mov     r0, r6
	mov     r1, #0x17
	bl      Function_2262e88
	b       branch_2268892
@ 0x22687f6

.thumb
branch_22687f6: @ 22687f6 :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x1d
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r4
	bl      Function_225df8c
	mov     r0, #0x4
	str     r0, [r5, #0x0]
	mov     r0, r6
	mov     r1, #0x17
	bl      Function_2262e88
	b       branch_2268892
@ 0x2268816

.thumb
branch_2268816: @ 2268816 :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x1e
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r4
	bl      Function_225df8c
	mov     r0, #0x4
	str     r0, [r5, #0x0]
	mov     r0, r6
	mov     r1, #0x17
	bl      Function_2262e88
	b       branch_2268892
@ 0x2268836

.thumb
branch_2268836: @ 2268836 :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x16
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r4
	bl      Function_225df8c
	mov     r0, #0x18
	str     r0, [r5, #0x0]
	mov     r0, r6
	mov     r1, #0x17
	bl      Function_2262e88
	b       branch_2268892
@ 0x2268856

.thumb
branch_2268856: @ 2268856 :thumb
	mov     r0, r4
	bl      Function_225dfac
	cmp     r0, #0x0
	beq     branch_2268892
	ldr     r1, [r5, #0x0]
	mov     r0, r6
	bl      Function_2262e88
	b       branch_2268892
@ 0x226886a

.thumb
branch_226886a: @ 226886a :thumb
	mov     r0, r6
	bl      Function_2262e64
	mov     r0, r4
	bl      Function_225dfec
	mov     r0, r4
	bl      Function_225def0
	mov     r4, r0
	bl      Function_225ccac
	mov     r1, r0
	mov     r0, r4
	mov     r2, #0x1
	bl      Function_225cdec
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x2268892

.thumb
branch_2268892: @ 2268892 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2268898

.word 0x5dc @ 0x2268898
.thumb
Function_226889c: @ 226889c :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	bl      Function_2262e80
	mov     r0, r4
	bl      Function_225dee8
	mov     r6, r0
	mov     r0, r5
	bl      Function_2262e84
	cmp     r0, #0x0
	beq     branch_22688c6
	cmp     r0, #0x1
	bne     branch_22688be
	b       branch_22689fe
@ 0x22688be

.thumb
branch_22688be: @ 22688be :thumb
	cmp     r0, #0x2
	bne     branch_22688c4
	b       branch_2268a12
@ 0x22688c4

.thumb
branch_22688c4: @ 22688c4 :thumb
	b       branch_2268a32
@ 0x22688c6

.thumb
branch_22688c6: @ 22688c6 :thumb
	ldr     r0, [pc, #0x170] @ 0x2268a38, (=0x5dc)
	bl      Function_2005748
	mov     r0, r6
	bl      0x222e12c
	cmp     r0, #0x0
	bne     branch_22688fc
	mov     r0, r6
	bl      0x222e170
	cmp     r0, #0x1
	bne     branch_2268918
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x4e
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r4
	bl      Function_225df8c
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2262e88
	b       branch_2268a32
@ 0x22688fc

.thumb
branch_22688fc: @ 22688fc :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x3
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r4
	bl      Function_225df8c
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2262e88
	b       branch_2268a32
@ 0x2268918

.thumb
branch_2268918: @ 2268918 :thumb
	mov     r0, r6
	bl      0x222f05c
	cmp     r0, #0x8
	bhi     branch_22689e2
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x226892e

Jumppoints_226892e:
.hword branch_2268940 - Jumppoints_226892e - 2
.hword branch_2268958 - Jumppoints_226892e - 2
.hword branch_2268970 - Jumppoints_226892e - 2
.hword branch_2268988 - Jumppoints_226892e - 2
.hword branch_22689a0 - Jumppoints_226892e - 2
.hword branch_22689b8 - Jumppoints_226892e - 2
.hword branch_22689c6 - Jumppoints_226892e - 2
.hword branch_22689d4 - Jumppoints_226892e - 2
.hword branch_22689e2 - Jumppoints_226892e - 2
.thumb
branch_2268940: @ 2268940 :thumb
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	bl      Function_225e27c
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x49
	bl      Function_225e20c
	mov     r1, r0
	b       branch_22689ee
@ 0x2268958

.thumb
branch_2268958: @ 2268958 :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_225e27c
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x49
	bl      Function_225e20c
	mov     r1, r0
	b       branch_22689ee
@ 0x2268970

.thumb
branch_2268970: @ 2268970 :thumb
	mov     r0, r4
	mov     r1, #0x2
	mov     r2, #0x0
	bl      Function_225e27c
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x49
	bl      Function_225e20c
	mov     r1, r0
	b       branch_22689ee
@ 0x2268988

.thumb
branch_2268988: @ 2268988 :thumb
	mov     r0, r4
	mov     r1, #0x5
	mov     r2, #0x0
	bl      Function_225e27c
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x4d
	bl      Function_225e20c
	mov     r1, r0
	b       branch_22689ee
@ 0x22689a0

.thumb
branch_22689a0: @ 22689a0 :thumb
	mov     r0, r4
	mov     r1, #0x6
	mov     r2, #0x0
	bl      Function_225e27c
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x4d
	bl      Function_225e20c
	mov     r1, r0
	b       branch_22689ee
@ 0x22689b8

.thumb
branch_22689b8: @ 22689b8 :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x4a
	bl      Function_225e20c
	mov     r1, r0
	b       branch_22689ee
@ 0x22689c6

.thumb
branch_22689c6: @ 22689c6 :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x4f
	bl      Function_225e20c
	mov     r1, r0
	b       branch_22689ee
@ 0x22689d4

.thumb
branch_22689d4: @ 22689d4 :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x4b
	bl      Function_225e20c
	mov     r1, r0
	b       branch_22689ee
@ 0x22689e2

.thumb
branch_22689e2: @ 22689e2 :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x4c
	bl      Function_225e20c
	mov     r1, r0
.thumb
branch_22689ee: @ 22689ee :thumb
	mov     r0, r4
	bl      Function_225df8c
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2262e88
	b       branch_2268a32
@ 0x22689fe

.thumb
branch_22689fe: @ 22689fe :thumb
	mov     r0, r4
	bl      Function_225dfac
	cmp     r0, #0x0
	beq     branch_2268a32
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_2262e88
	b       branch_2268a32
@ 0x2268a12

.thumb
branch_2268a12: @ 2268a12 :thumb
	mov     r0, r4
	bl      Function_225dfec
	mov     r0, r4
	bl      Function_225def0
	mov     r4, r0
	bl      Function_225ccac
	mov     r1, r0
	mov     r0, r4
	mov     r2, #0x1
	bl      Function_225cdec
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2268a32

.thumb
branch_2268a32: @ 2268a32 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2268a36


.align 2


.word 0x5dc @ 0x2268a38
.thumb
Function_2268a3c: @ 2268a3c :thumb
	push    {r3,lr}
	add     sp, #-0x8
	bl      0x222e7c4
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	add     r0, sp, #0x0
	ldrb    r0, [r0, #0x4]
	cmp     r0, #0x18
	bhi     branch_2268aa0
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2268a5c

Jumppoints_2268a5c:
.hword branch_2268a9a - Jumppoints_2268a5c - 2
.hword branch_2268a9a - Jumppoints_2268a5c - 2
.hword branch_2268a9a - Jumppoints_2268a5c - 2
.hword branch_2268a9a - Jumppoints_2268a5c - 2
.hword branch_2268a8e - Jumppoints_2268a5c - 2
.hword branch_2268a8e - Jumppoints_2268a5c - 2
.hword branch_2268a8e - Jumppoints_2268a5c - 2
.hword branch_2268a8e - Jumppoints_2268a5c - 2
.hword branch_2268a8e - Jumppoints_2268a5c - 2
.hword branch_2268a8e - Jumppoints_2268a5c - 2
.hword branch_2268a8e - Jumppoints_2268a5c - 2
.hword branch_2268a94 - Jumppoints_2268a5c - 2
.hword branch_2268a94 - Jumppoints_2268a5c - 2
.hword branch_2268a94 - Jumppoints_2268a5c - 2
.hword branch_2268a94 - Jumppoints_2268a5c - 2
.hword branch_2268a94 - Jumppoints_2268a5c - 2
.hword branch_2268a94 - Jumppoints_2268a5c - 2
.hword branch_2268a94 - Jumppoints_2268a5c - 2
.hword branch_2268a94 - Jumppoints_2268a5c - 2
.hword branch_2268a9a - Jumppoints_2268a5c - 2
.hword branch_2268a9a - Jumppoints_2268a5c - 2
.hword branch_2268a9a - Jumppoints_2268a5c - 2
.hword branch_2268a9a - Jumppoints_2268a5c - 2
.hword branch_2268a9a - Jumppoints_2268a5c - 2
.hword branch_2268a9a - Jumppoints_2268a5c - 2
.thumb
branch_2268a8e: @ 2268a8e :thumb
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2268a94

.thumb
branch_2268a94: @ 2268a94 :thumb
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2268a9a

.thumb
branch_2268a9a: @ 2268a9a :thumb
	add     sp, #0x8
	mov     r0, #0x2
	pop     {r3,pc}
@ 0x2268aa0

.thumb
branch_2268aa0: @ 2268aa0 :thumb
	bl      ErrorHandling
	mov     r0, #0x1
	add     sp, #0x8
	pop     {r3,pc}
@ 0x2268aaa


.align 2, 0


.thumb
Function_2268aac: @ 2268aac :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r5, r0
	mov     r4, r2
	bl      Function_225dee8
	mov     r1, r6
	bl      0x222e924
	cmp     r0, #0x1
	bne     branch_2268ade
	ldr     r3, [pc, #0x28] @ 0x2268aec, (=0x226dd5c)
	ldr     r0, [pc, #0x28] @ 0x2268af0, (=0x163)
	mov     r2, #0x0
.thumb
branch_2268ac8: @ 2268ac8 :thumb
	ldrh    r1, [r3, #0x0]
	cmp     r4, r1
	bne     branch_2268ad6
	ldr     r0, [pc, #0x24] @ 0x2268af4, (=0x226dd5e)
	lsl     r1, r2, #2
	ldrh    r4, [r0, r1]
	b       branch_2268ade
@ 0x2268ad6

.thumb
branch_2268ad6: @ 2268ad6 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1d1b @ add r3, r3, #0x4
	cmp     r2, r0
	bcc     branch_2268ac8
.thumb
branch_2268ade: @ 2268ade :thumb
	mov     r0, r5
	mov     r1, #0x3
	mov     r2, r4
	bl      Function_225e20c
	pop     {r4-r6,pc}
@ 0x2268aea


.align 2


.word 0x226dd5c @ 0x2268aec
.word 0x163 @ 0x2268af0
.word 0x226dd5e @ 0x2268af4
.thumb
Function_2268af8: @ 2268af8 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r4, r0
	mov     r6, r2
	bl      Function_225dee8
	mov     r7, r0
	mov     r1, r5
	bl      0x222e924
	mov     r5, r0
	mov     r0, r7
	mov     r1, r6
	bl      0x222e924
	mov     r2, #0x29
	cmp     r5, #0x1
	bne     branch_2268b24
	cmp     r0, #0x1
	bne     branch_2268b24
	ldr     r2, [pc, #0x20] @ 0x2268b44, (=0x2aa)
	b       branch_2268b3a
@ 0x2268b24

.thumb
branch_2268b24: @ 2268b24 :thumb
	cmp     r5, #0x1
	bne     branch_2268b30
	cmp     r0, #0x0
	bne     branch_2268b30
	ldr     r2, [pc, #0x18] @ 0x2268b48, (=0x226)
	b       branch_2268b3a
@ 0x2268b30

.thumb
branch_2268b30: @ 2268b30 :thumb
	cmp     r5, #0x0
	bne     branch_2268b3a
	cmp     r0, #0x1
	bne     branch_2268b3a
	ldr     r2, [pc, #0x10] @ 0x2268b4c, (=0x2a9)
.thumb
branch_2268b3a: @ 2268b3a :thumb
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_225e20c
	pop     {r3-r7,pc}
@ 0x2268b44

.word 0x2aa @ 0x2268b44
.word 0x226 @ 0x2268b48
.word 0x2a9 @ 0x2268b4c
.thumb
Function_2268b50: @ 2268b50 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, #0x0
	mov     r6, r2
	mvn     r0, r0
	mov     r4, r1
	cmp     r6, r0
	bne     branch_2268b64
	bl      ErrorHandling
.thumb
branch_2268b64: @ 2268b64 :thumb
	strb    r6, [r5, #0x3]
	mov     r0, r4
	bl      0x222e338
	strh    r0, [r5, #0x8]
	mov     r0, #0x1
	strh    r0, [r5, #0xa]
	mov     r0, r4
	bl      0x222e3bc
	mov     r6, r0
	ldrb    r1, [r5, #0x3]
	mov     r0, r4
	bl      0x222e374
	mov     r4, r0
	bne     branch_2268b8a
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2268b8a

.thumb
branch_2268b8a: @ 2268b8a :thumb
	mov     r0, r6
	bl      Function_2268a3c
	strb    r0, [r5, #0x4]
	mov     r0, r4
	bl      Function_2268a3c
	strb    r0, [r5, #0x5]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2268b9e


.align 2, 0


.thumb
Function_2268ba0: @ 2268ba0 :thumb
	bx      lr
@ 0x2268ba2


.align 2, 0


.thumb
Function_2268ba4: @ 2268ba4 :thumb
	strb    r1, [r0, #0x6]
	ldr     r1, [pc, #0xc] @ 0x2268bb4, (=0xfffffff0)
	strb    r2, [r0, #0x7]
	mov     r0, r3
	add     r1, sp
	ldr     r3, [pc, #0x8] @ 0x2268bb8, (=0x2262e89)
	ldrb    r1, [r1, #0x10]
	bx      r3
@ 0x2268bb4

.word 0xfffffff0 @ 0x2268bb4
.word Function_2262e88+1 @ =0x2262e89, 0x2268bb8
.thumb
Function_2268bbc: @ 2268bbc :thumb
	push    {r3,lr}
	mov     r2, r0
	ldrb    r0, [r2, #0x6]
	cmp     r0, #0x0
	beq     branch_2268bcc
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r2, #0x6]
	pop     {r3,pc}
@ 0x2268bcc

.thumb
branch_2268bcc: @ 2268bcc :thumb
	mov     r0, r1
	ldrb    r1, [r2, #0x7]
	bl      Function_2262e88
	pop     {r3,pc}
@ 0x2268bd6


.align 2, 0


.thumb
Function_2268bd8: @ 2268bd8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, r2
	mov     r4, r1
	bl      Function_225dfac
	cmp     r0, #0x0
	beq     branch_2268bf0
	ldrb    r1, [r5, #0x7]
	mov     r0, r4
	bl      Function_2262e88
.thumb
branch_2268bf0: @ 2268bf0 :thumb
	pop     {r3-r5,pc}
@ 0x2268bf2


.align 2, 0


.thumb
Function_2268bf4: @ 2268bf4 :thumb
	push    {r3-r5,lr}
	mov     r5, r2
	mov     r4, r3
	ldr     r3, [sp, #0x10]
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, r4
	bl      Function_2268c44
	ldr     r3, [sp, #0x14]
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, r4
	bl      Function_2268c44
	ldr     r0, [sp, #0x10]
	bl      0x222e80c
	mov     r4, r0
	ldr     r0, [sp, #0x14]
	bl      0x222e80c
	mov     r3, r0
	ldr     r2, [pc, #0x1c] @ 0x2268c40, (=0x226dcdc)
	lsl     r4, r4, #4
	lsl     r3, r3, #1
	add     r2, r2, r4
	ldrh    r2, [r3, r2]
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r5
	bl      Function_225df8c
	pop     {r3-r5,pc}
@ 0x2268c3e


.align 2


.word 0x226dcdc @ 0x2268c40
.thumb
Function_2268c44: @ 2268c44 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	mov     r0, r3
	mov     r5, r1
	mov     r6, r2
	bl      0x222e80c
	cmp     r0, #0x7
	bhi     branch_2268cba
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2268c62

Jumppoints_2268c62:
.hword branch_2268cba - Jumppoints_2268c62 - 2
.hword branch_2268c72 - Jumppoints_2268c62 - 2
.hword branch_2268c7e - Jumppoints_2268c62 - 2
.hword branch_2268c8a - Jumppoints_2268c62 - 2
.hword branch_2268c96 - Jumppoints_2268c62 - 2
.hword branch_2268ca2 - Jumppoints_2268c62 - 2
.hword branch_2268cba - Jumppoints_2268c62 - 2
.hword branch_2268cae - Jumppoints_2268c62 - 2
.thumb
branch_2268c72: @ 2268c72 :thumb
	mov     r0, r4
	mov     r1, r5
	mov     r2, r6
	bl      Function_225e2ac
	pop     {r4-r6,pc}
@ 0x2268c7e

.thumb
branch_2268c7e: @ 2268c7e :thumb
	mov     r0, r4
	mov     r1, r5
	mov     r2, r6
	bl      Function_225e2bc
	pop     {r4-r6,pc}
@ 0x2268c8a

.thumb
branch_2268c8a: @ 2268c8a :thumb
	mov     r0, r4
	mov     r1, r5
	mov     r2, r6
	bl      Function_225e2cc
	pop     {r4-r6,pc}
@ 0x2268c96

.thumb
branch_2268c96: @ 2268c96 :thumb
	mov     r0, r4
	mov     r1, r5
	mov     r2, r6
	bl      Function_225e2dc
	pop     {r4-r6,pc}
@ 0x2268ca2

.thumb
branch_2268ca2: @ 2268ca2 :thumb
	mov     r0, r4
	mov     r1, r5
	mov     r2, r6
	bl      Function_225e2ec
	pop     {r4-r6,pc}
@ 0x2268cae

.thumb
branch_2268cae: @ 2268cae :thumb
	mov     r0, r4
	mov     r1, r5
	mov     r2, r6
	bl      Function_225e2fc
	pop     {r4-r6,pc}
@ 0x2268cba

.thumb
branch_2268cba: @ 2268cba :thumb
	mov     r0, r4
	mov     r1, r5
	mov     r2, r6
	bl      Function_225e2bc
	pop     {r4-r6,pc}
@ 0x2268cc6


.align 2, 0


.thumb
Function_2268cc8: @ 2268cc8 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r5, r0
	mov     r0, r6
	mov     r7, r2
	bl      0x222e3bc
	str     r0, [sp, #0x0]
	ldrb    r1, [r5, #0x3]
	mov     r0, r6
	bl      0x222e374
	mov     r6, r0
	ldr     r0, [sp, #0x0]
	bl      0x222e824
	cmp     r0, #0x0
	bne     branch_2268cf0
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2268cf0

.thumb
branch_2268cf0: @ 2268cf0 :thumb
	mov     r0, r6
	bl      0x222e824
	cmp     r0, #0x0
	bne     branch_2268cfe
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2268cfe

.thumb
branch_2268cfe: @ 2268cfe :thumb
	ldrb    r1, [r5, #0x5]
	ldrb    r0, [r5, #0x4]
	cmp     r0, r1
	beq     branch_2268d34
	cmp     r1, #0x0
	beq     branch_2268d14
	cmp     r1, #0x1
	beq     branch_2268d18
	cmp     r1, #0x2
	beq     branch_2268d1c
	b       branch_2268d1e
@ 0x2268d14

.thumb
branch_2268d14: @ 2268d14 :thumb
	mov     r4, #0x27
	b       branch_2268d1e
@ 0x2268d18

.thumb
branch_2268d18: @ 2268d18 :thumb
	mov     r4, #0x25
	b       branch_2268d1e
@ 0x2268d1c

.thumb
branch_2268d1c: @ 2268d1c :thumb
	mov     r4, #0x26
.thumb
branch_2268d1e: @ 2268d1e :thumb
	mov     r0, r7
	mov     r1, #0x3
	mov     r2, r4
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r7
	bl      Function_225df8c
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2268d34

.thumb
branch_2268d34: @ 2268d34 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2268d38

.thumb
Function_2268d38: @ 2268d38 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r6, r2
	mov     r7, r3
	bl      0x222e3bc
	str     r0, [sp, #0x0]
	ldrb    r1, [r5, #0x3]
	mov     r0, r4
	bl      0x222e374
	ldr     r1, [sp, #0x18]
	cmp     r1, #0x0
	bne     branch_2268d5e
	bl      0x222e8c4
	b       branch_2268d64
@ 0x2268d5e

.thumb
branch_2268d5e: @ 2268d5e :thumb
	ldr     r0, [sp, #0x0]
	bl      0x222e8c4
.thumb
branch_2268d64: @ 2268d64 :thumb
	mov     r1, r0
	mov     r0, r6
	mov     r2, r7
	bl      Function_225e29c
	pop     {r3-r7,pc}
@ 0x2268d70

.thumb
Function_2268d70: @ 2268d70 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	bl      Function_225dee8
	bl      0x222ee90
	ldr     r1, [pc, #0x30] @ 0x2268db4, (=0x1c2)
	cmp     r0, r1
	bne     branch_2268db0
	mov     r0, r4
	bl      Function_225dfcc
	ldrb    r1, [r5, #0x3]
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_225e234
	mov     r2, #0xab
	ldrb    r1, [r5, #0x3]
	mov     r0, r4
	lsl     r2, r2, #2
	bl      Function_2268aac
	mov     r1, r0
	mov     r0, r4
	bl      Function_225df8c
	mov     r0, r4
	bl      Function_225dfbc
.thumb
branch_2268db0: @ 2268db0 :thumb
	pop     {r3-r5,pc}
@ 0x2268db2


.align 2


.word 0x1c2 @ 0x2268db4
.thumb
Function_2268db8: @ 2268db8 :thumb
	mov     r1, #0x0
	strh    r1, [r0, #0xe]
	mov     r1, #0x1
	strb    r1, [r0, #0xd]
	bx      lr
@ 0x2268dc2


.align 2, 0


.thumb
Function_2268dc4: @ 2268dc4 :thumb
	mov     r1, #0x0
	strh    r1, [r0, #0xe]
	strb    r1, [r0, #0xd]
	bx      lr
@ 0x2268dcc

.thumb
Function_2268dcc: @ 2268dcc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldrb    r0, [r5, #0xd]
	mov     r4, r1
	cmp     r0, #0x1
	bne     branch_2268dfe
	mov     r0, #0xe
	ldsh    r1, [r5, r0]
	ldr     r0, [pc, #0x20] @ 0x2268e00, (=0x1c2)
	cmp     r1, r0
	bne     branch_2268dfe
	ldrb    r1, [r5, #0x3]
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_225e234
	ldrb    r1, [r5, #0x3]
	ldr     r2, [pc, #0x14] @ 0x2268e04, (=0x2ab)
	mov     r0, r4
	bl      Function_2268aac
	mov     r1, r0
	mov     r0, r4
	bl      Function_225df8c
.thumb
branch_2268dfe: @ 2268dfe :thumb
	pop     {r3-r5,pc}
@ 0x2268e00

.word 0x1c2 @ 0x2268e00
.word 0x2ab @ 0x2268e04
.thumb
Function_2268e08: @ 2268e08 :thumb
	ldrb    r1, [r0, #0xd]
	cmp     r1, #0x1
	bne     branch_2268e1e
	mov     r1, #0xe
	ldsh    r2, [r0, r1]
	mov     r1, #0xe1
	lsl     r1, r1, #2
	cmp     r2, r1
	bgt     branch_2268e1e
	add     r1, r2, #0x1
	strh    r1, [r0, #0xe]
.thumb
branch_2268e1e: @ 2268e1e :thumb
	bx      lr
@ 0x2268e20

.thumb
Function_2268e20: @ 2268e20 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	bl      0x222e7a0
	mov     r1, r5
	mov     r2, #0x1
	add     r1, #0x44
	strh    r2, [r1, #0x0]
	mov     r1, r5
	add     r1, #0x46
	strh    r0, [r1, #0x0]
	mov     r0, r4
	bl      0x222e798
	str     r0, [r5, #0x48]
	pop     {r3-r5,pc}
@ 0x2268e44

.thumb
Function_2268e44: @ 2268e44 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r1
	mov     r7, r2
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, r7
	str     r3, [sp, #0x4]
	ldr     r6, [sp, #0x20]
	bl      Function_225e00c
	ldr     r0, [sp, #0x0]
	mov     r4, #0x0
	str     r7, [r0, #0x20]
	cmp     r7, #0x0
	bls     branch_2268eae
	.hword  0x1e78 @ sub r0, r7, #0x1
	str     r0, [sp, #0x8]
.thumb
branch_2268e68: @ 2268e68 :thumb
	cmp     r6, #0x0
	beq     branch_2268e92
	ldr     r0, [sp, #0x8]
	cmp     r4, r0
	bne     branch_2268e92
	cmp     r6, #0x1
	bne     branch_2268e84
	ldr     r2, [pc, #0x6c] @ 0x2268ee4, (=0x205)
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_225e20c
	mov     r1, r0
	b       branch_2268ea0
@ 0x2268e84

.thumb
branch_2268e84: @ 2268e84 :thumb
	mov     r0, r5
	mov     r1, #0x3
	mov     r2, #0xeb
	bl      Function_225e20c
	mov     r1, r0
	b       branch_2268ea0
@ 0x2268e92

.thumb
branch_2268e92: @ 2268e92 :thumb
	ldr     r2, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x3
	add     r2, r2, r4
	bl      Function_225e20c
	mov     r1, r0
.thumb
branch_2268ea0: @ 2268ea0 :thumb
	mov     r0, r5
	mov     r2, r4
	bl      Function_225e044
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r7
	bcc     branch_2268e68
.thumb
branch_2268eae: @ 2268eae :thumb
	ldr     r3, [pc, #0x38] @ 0x2268ee8, (=0x226dcbc)
	ldr     r2, [sp, #0x0]
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [sp, #0x0]
	ldr     r1, [r0, #0x20]
	strh    r1, [r0, #0x10]
	ldr     r1, [r0, #0x20]
	ldrh    r0, [r0, #0x12]
	cmp     r0, r1
	bls     branch_2268ed4
	ldr     r0, [sp, #0x0]
	strh    r1, [r0, #0x12]
.thumb
branch_2268ed4: @ 2268ed4 :thumb
	mov     r0, r5
	bl      Function_225e054
	ldr     r1, [sp, #0x0]
	str     r0, [r1, #0x0]
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2268ee2


.align 2


.word 0x205 @ 0x2268ee4
.word 0x226dcbc @ 0x2268ee8
.thumb
Function_2268eec: @ 2268eec :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x20]
	mov     r5, r1
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x24]
	str     r3, [sp, #0x4]
	str     r0, [sp, #0x24]
	mov     r0, r5
	mov     r1, r3
	mov     r4, r2
	bl      Function_225e020
	ldr     r1, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	mov     r7, #0x0
	str     r1, [r0, #0x20]
	mov     r0, r1
	beq     branch_2268f7c
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [sp, #0x8]
.thumb
branch_2268f18: @ 2268f18 :thumb
	ldr     r0, [sp, #0x24]
	cmp     r0, #0x0
	beq     branch_2268f48
	ldr     r0, [sp, #0x8]
	cmp     r7, r0
	bne     branch_2268f48
	ldr     r0, [sp, #0x24]
	mov     r6, r4
	cmp     r0, #0x1
	bne     branch_2268f3a
	ldr     r2, [pc, #0x80] @ 0x2268fb0, (=0x205)
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_225e20c
	mov     r1, r0
	b       branch_2268f6c
@ 0x2268f3a

.thumb
branch_2268f3a: @ 2268f3a :thumb
	mov     r0, r5
	mov     r1, #0x3
	mov     r2, #0xeb
	bl      Function_225e20c
	mov     r1, r0
	b       branch_2268f6c
@ 0x2268f48

.thumb
branch_2268f48: @ 2268f48 :thumb
	bl      Function_201d35c
	mov     r1, r4
	blx     _u32_div_f
	mov     r0, r5
	mov     r6, r1
	bl      Function_225e064
	cmp     r0, #0x1
	beq     branch_2268f48
	ldr     r2, [sp, #0x20]
	mov     r0, r5
	mov     r1, #0x3
	add     r2, r2, r6
	bl      Function_225e20c
	mov     r1, r0
.thumb
branch_2268f6c: @ 2268f6c :thumb
	mov     r0, r5
	mov     r2, r6
	bl      Function_225e044
	ldr     r0, [sp, #0x4]
	.hword  0x1c7f @ add r7, r7, #0x1
	cmp     r7, r0
	bcc     branch_2268f18
.thumb
branch_2268f7c: @ 2268f7c :thumb
	ldr     r3, [pc, #0x34] @ 0x2268fb4, (=0x226dcbc)
	ldr     r2, [sp, #0x0]
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [sp, #0x0]
	ldr     r1, [r0, #0x20]
	strh    r1, [r0, #0x10]
	ldr     r1, [r0, #0x20]
	ldrh    r0, [r0, #0x12]
	cmp     r0, r1
	bls     branch_2268fa2
	ldr     r0, [sp, #0x0]
	strh    r1, [r0, #0x12]
.thumb
branch_2268fa2: @ 2268fa2 :thumb
	mov     r0, r5
	bl      Function_225e054
	ldr     r1, [sp, #0x0]
	str     r0, [r1, #0x0]
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2268fb0

.word 0x205 @ 0x2268fb0
.word 0x226dcbc @ 0x2268fb4
.thumb
Function_2268fb8: @ 2268fb8 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r7, r0
	mov     r0, r6
	mov     r1, #0x8
	bl      Function_225e00c
	mov     r0, #0x8
	ldr     r5, [pc, #0x44] @ 0x2269010, (=0x226dcb4)
	str     r0, [r7, #0x20]
	mov     r4, #0x0
.thumb
branch_2268fce: @ 2268fce :thumb
	ldrb    r2, [r5, #0x0]
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r6
	mov     r2, r4
	bl      Function_225e044
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r4, #0x8
	blt     branch_2268fce
	ldr     r3, [pc, #0x28] @ 0x2269014, (=0x226dcbc)
	mov     r2, r7
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r7, #0x20]
	strh    r0, [r7, #0x10]
	ldr     r0, [r7, #0x20]
	strh    r0, [r7, #0x12]
	mov     r0, r6
	bl      Function_225e054
	str     r0, [r7, #0x0]
	pop     {r3-r7,pc}
@ 0x2269010

.word 0x226dcb4 @ 0x2269010
.word 0x226dcbc @ 0x2269014
.thumb
Function_2269018: @ 2269018 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x4
	bl      Function_225e00c
	mov     r0, #0x4
	mov     r4, #0x0
	str     r0, [r6, #0x20]
	mov     r7, r4
.thumb
branch_226902e: @ 226902e :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, r7
	bl      Function_225e28c
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0x27
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r5
	mov     r2, r4
	bl      Function_225e044
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x3
	blt     branch_226902e
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0x25
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r5
	mov     r2, #0x3
	bl      Function_225e044
	ldr     r3, [pc, #0x24] @ 0x226908c, (=0x226dcbc)
	mov     r2, r6
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r6, #0x20]
	strh    r0, [r6, #0x10]
	ldr     r0, [r6, #0x20]
	strh    r0, [r6, #0x12]
	mov     r0, r5
	bl      Function_225e054
	str     r0, [r6, #0x0]
	pop     {r3-r7,pc}
@ 0x226908c

.word 0x226dcbc @ 0x226908c
.thumb
Function_2269090: @ 2269090 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x4
	bl      Function_225e00c
	mov     r0, #0x4
	mov     r4, #0x0
	str     r0, [r6, #0x20]
	mov     r7, r4
.thumb
branch_22690a6: @ 22690a6 :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, r7
	bl      Function_225e27c
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0x26
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r5
	mov     r2, r4
	bl      Function_225e044
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x3
	blt     branch_22690a6
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0x25
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, r5
	mov     r2, #0x3
	bl      Function_225e044
	ldr     r3, [pc, #0x24] @ 0x2269104, (=0x226dcbc)
	mov     r2, r6
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r6, #0x20]
	strh    r0, [r6, #0x10]
	ldr     r0, [r6, #0x20]
	strh    r0, [r6, #0x12]
	mov     r0, r5
	bl      Function_225e054
	str     r0, [r6, #0x0]
	pop     {r3-r7,pc}
@ 0x2269104

.word 0x226dcbc @ 0x2269104
.thumb
Function_2269108: @ 2269108 :thumb
	ldr     r3, [pc, #0x4] @ 0x2269110, (=0x225e035)
	mov     r0, r1
	bx      r3
@ 0x226910e


.align 2


.word Function_225e034+1 @ =0x225e035, 0x2269110
.thumb
Function_2269114: @ 2269114 :thumb
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	bx      lr
@ 0x226911a


.align 2, 0


.thumb
Function_226911c: @ 226911c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldrh    r0, [r5, #0x0]
	mov     r7, r1
	mov     r4, r2
	mov     r6, r3
	cmp     r0, #0x0
	beq     branch_2269130
	bl      ErrorHandling
.thumb
branch_2269130: @ 2269130 :thumb
	mov     r0, #0x1
	strh    r0, [r5, #0x0]
	strh    r4, [r5, #0x2]
	mov     r0, r7
	strh    r6, [r5, #0x4]
	bl      0x222ee30
	strh    r0, [r5, #0x6]
	pop     {r3-r7,pc}
@ 0x2269142


.align 2, 0


.thumb
Function_2269144: @ 2269144 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldrh    r0, [r5, #0x0]
	mov     r4, r1
	cmp     r0, #0x0
	beq     branch_2269176
	mov     r0, r4
	bl      0x222ee30
	str     r0, [r5, #0x8]
	ldrh    r1, [r5, #0x4]
	cmp     r0, r1
	bne     branch_226916c
	ldrh    r1, [r5, #0x2]
	mov     r0, r4
	bl      0x222ecd4
	mov     r0, #0x0
	strh    r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x226916c

.thumb
branch_226916c: @ 226916c :thumb
	ldrh    r1, [r5, #0x6]
	cmp     r0, r1
	beq     branch_2269176
	mov     r0, #0x0
	strh    r0, [r5, #0x0]
.thumb
branch_2269176: @ 2269176 :thumb
	pop     {r3-r5,pc}
@ 0x2269178

.thumb
Function_2269178: @ 2269178 :thumb
	ldrh    r0, [r0, #0x0]
	cmp     r0, #0x1
	beq     branch_2269182
	mov     r0, #0x1
	bx      lr
@ 0x2269182

.thumb
branch_2269182: @ 2269182 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2269186


.align 2, 0


.thumb
Function_2269188: @ 2269188 :thumb
	ldr     r0, [r0, #0x8]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bx      lr
@ 0x2269190

.thumb
Function_2269190: @ 2269190 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r0
	mov     r7, r1
	ldr     r0, [sp, #0x20]
	ldr     r1, [pc, #0x60] @ 0x22691fc, (=0x1082c)
	str     r2, [sp, #0x0]
	str     r3, [sp, #0x4]
	ldr     r5, [sp, #0x24]
	bl      malloc
	ldr     r2, [pc, #0x54] @ 0x22691fc, (=0x1082c)
	mov     r1, #0x0
	mov     r4, r0
	blx     Call_FillMemWithValue
	ldr     r0, [sp, #0x4]
	str     r6, [r4, #0x0]
	str     r0, [r4, #0x4]
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x20]
	str     r0, [r4, #0x8]
	mov     r0, #WifiLobbyOther_Narc
	str     r7, [r4, #0xc]
	bl      LoadFromNARC_8
	mov     r6, r0
	ldr     r0, [pc, #0x38] @ 0x2269200, (=0x1081c)
	mov     r1, r5
	add     r0, r4, r0
	mov     r2, #0x4
	bl      Function_20182cc
	mov     r0, r4
	mov     r1, r6
	mov     r2, r5
	bl      Function_2269540
	mov     r0, r4
	mov     r1, r6
	mov     r2, r5
	bl      Function_22695e0
	mov     r0, r4
	mov     r1, r6
	mov     r2, r5
	bl      Function_226965c
	mov     r0, r6
	bl      Call_FS_CloseFile
	mov     r0, r4
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x22691fc

.word 0x1082c @ 0x22691fc
.word 0x1081c @ 0x2269200
.thumb
Function_2269204: @ 2269204 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_22695c4
	mov     r0, r4
	bl      Function_2269608
	mov     r0, r4
	bl      Function_2269700
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x2269220

.thumb
Function_2269220: @ 2269220 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r5, r6
	mov     r7, #0xd1
	mov     r4, #0x0
	add     r5, #0x10
	lsl     r7, r7, #4
.thumb
branch_226922e: @ 226922e :thumb
	mov     r0, r6
	mov     r1, r5
	bl      Function_226978c
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, r5, r7
	cmp     r4, #0x14
	blt     branch_226922e
	pop     {r3-r7,pc}
@ 0x2269240

.thumb
Function_2269240: @ 2269240 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r0, [r6, #0x4]
	bl      Function_225ccac
	mov     r5, r6
	mov     r7, #0xd1
	mov     r4, #0x0
	add     r5, #0x10
	lsl     r7, r7, #4
.thumb
branch_2269254: @ 2269254 :thumb
	mov     r0, r6
	mov     r1, r5
	bl      Function_22697c8
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, r5, r7
	cmp     r4, #0x14
	blt     branch_2269254
	pop     {r3-r7,pc}
@ 0x2269266


.align 2, 0


.thumb
Function_2269268: @ 2269268 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r6, r2
	cmp     r4, #0x14
	bcc     branch_2269278
	bl      ErrorHandling
.thumb
branch_2269278: @ 2269278 :thumb
	ldr     r0, [r5, #0x4]
	mov     r1, r4
	bl      Function_225cc70
	mov     r2, r0
	beq     branch_2269296
	mov     r1, #0xd1
	lsl     r1, r1, #4
	mov     r0, r5
	add     r5, #0x10
	mul     r1, r4
	add     r1, r5, r1
	mov     r3, r6
	bl      Function_2269738
.thumb
branch_2269296: @ 2269296 :thumb
	pop     {r4-r6,pc}
@ 0x2269298

.thumb
Function_2269298: @ 2269298 :thumb
	push    {r3,lr}
	mov     r2, #0xd1
	lsl     r2, r2, #4
	add     r0, #0x10
	mul     r2, r1
	add     r0, r0, r2
	bl      Function_2269800
	cmp     r0, #0x1
	beq     branch_22692b0
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x22692b0

.thumb
branch_22692b0: @ 22692b0 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x22692b4

.thumb
Function_22692b4: @ 22692b4 :thumb
	push    {r3,r4}
	ldr     r4, [sp, #0x14]
	sub     r2, r2, r1
	str     r4, [r0, #0x0]
	str     r1, [r0, #0x4]
	str     r2, [r0, #0x10]
	str     r1, [r0, #0x14]
	ldr     r1, [sp, #0x8]
	str     r3, [r0, #0x8]
	sub     r1, r1, r3
	str     r1, [r0, #0x18]
	ldr     r2, [sp, #0xc]
	ldr     r1, [sp, #0x10]
	str     r3, [r0, #0x1c]
	str     r2, [r0, #0xc]
	sub     r1, r1, r2
	str     r1, [r0, #0x20]
	str     r2, [r0, #0x24]
	pop     {r3,r4}
	bx      lr
@ 0x22692dc

.thumb
Function_22692dc: @ 22692dc :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	mov     r7, #0x0
	cmp     r4, r0
	ble     branch_22692f0
	mov     r4, r0
	mov     r7, #0x1
.thumb
branch_22692f0: @ 22692f0 :thumb
	ldr     r6, [r5, #0x10]
	cmp     r6, #0x0
	beq     branch_2269374
	cmp     r0, #0x0
	ble     branch_226930e
	lsl     r0, r0, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	str     r0, [sp, #0x8]
	b       branch_226931e
@ 0x226930e

.thumb
branch_226930e: @ 226930e :thumb
	lsl     r0, r0, #12
	blx     _fflt
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
	str     r0, [sp, #0x8]
.thumb
branch_226931e: @ 226931e :thumb
	cmp     r4, #0x0
	ble     branch_2269334
	lsl     r0, r4, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_2269342
@ 0x2269334

.thumb
branch_2269334: @ 2269334 :thumb
	lsl     r0, r4, #12
	blx     _fflt
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
.thumb
branch_2269342: @ 2269342 :thumb
	blx     _ffix
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
	lsr     r6, r2, #12
	orr     r6, r0
	ldr     r0, [sp, #0x8]
	blx     _ffix
	mov     r1, r0
	mov     r0, r6
	blx     FX_Div
	ldr     r1, [r5, #0x14]
	add     r0, r1, r0
	str     r0, [r5, #0x4]
.thumb
branch_2269374: @ 2269374 :thumb
	ldr     r6, [r5, #0x18]
	cmp     r6, #0x0
	beq     branch_22693fa
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	ble     branch_2269394
	lsl     r0, r0, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	str     r0, [sp, #0x4]
	b       branch_22693a4
@ 0x2269394

.thumb
branch_2269394: @ 2269394 :thumb
	lsl     r0, r0, #12
	blx     _fflt
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
	str     r0, [sp, #0x4]
.thumb
branch_22693a4: @ 22693a4 :thumb
	cmp     r4, #0x0
	ble     branch_22693ba
	lsl     r0, r4, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_22693c8
@ 0x22693ba

.thumb
branch_22693ba: @ 22693ba :thumb
	lsl     r0, r4, #12
	blx     _fflt
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
.thumb
branch_22693c8: @ 22693c8 :thumb
	blx     _ffix
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
	lsr     r6, r2, #12
	orr     r6, r0
	ldr     r0, [sp, #0x4]
	blx     _ffix
	mov     r1, r0
	mov     r0, r6
	blx     FX_Div
	ldr     r1, [r5, #0x1c]
	add     r0, r1, r0
	str     r0, [r5, #0x8]
.thumb
branch_22693fa: @ 22693fa :thumb
	ldr     r6, [r5, #0x20]
	cmp     r6, #0x0
	beq     branch_2269480
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	ble     branch_226941a
	lsl     r0, r0, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	str     r0, [sp, #0x0]
	b       branch_226942a
@ 0x226941a

.thumb
branch_226941a: @ 226941a :thumb
	lsl     r0, r0, #12
	blx     _fflt
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
	str     r0, [sp, #0x0]
.thumb
branch_226942a: @ 226942a :thumb
	cmp     r4, #0x0
	ble     branch_2269440
	lsl     r0, r4, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_226944e
@ 0x2269440

.thumb
branch_2269440: @ 2269440 :thumb
	lsl     r0, r4, #12
	blx     _fflt
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
.thumb
branch_226944e: @ 226944e :thumb
	blx     _ffix
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
	lsr     r4, r2, #12
	orr     r4, r0
	ldr     r0, [sp, #0x0]
	blx     _ffix
	mov     r1, r0
	mov     r0, r4
	blx     FX_Div
	ldr     r1, [r5, #0x24]
	add     r0, r1, r0
	str     r0, [r5, #0xc]
.thumb
branch_2269480: @ 2269480 :thumb
	mov     r0, r7
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2269486


.align 2, 0


.thumb
Function_2269488: @ 2269488 :thumb
	push    {r3,r4}
	ldr     r4, [r0, #0x4]
	str     r4, [r1, #0x0]
	ldr     r1, [r0, #0x8]
	str     r1, [r2, #0x0]
	ldr     r0, [r0, #0xc]
	str     r0, [r3, #0x0]
	pop     {r3,r4}
	bx      lr
@ 0x226949a


.align 2, 0


.thumb
Function_226949c: @ 226949c :thumb
	push    {r4,lr}
	mov     r4, r0
	strh    r1, [r4, #0x0]
	asr     r0, r1, #4
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x24] @ 0x22694cc, (=Unknown_20f983c)
	strh    r2, [r4, #0x2]
	ldsh    r0, [r0, r1]
	mov     r2, r3
	str     r3, [r4, #0x4]
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
	str     r1, [r4, #0x8]
	pop     {r4,pc}
@ 0x22694cc

.word Unknown_20f983c @ 0x22694cc
.thumb
Function_22694d0: @ 22694d0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrh    r1, [r4, #0x0]
	ldrh    r0, [r4, #0x2]
	add     r0, r1, r0
	strh    r0, [r4, #0x0]
	ldrh    r0, [r4, #0x0]
	ldr     r2, [r4, #0x4]
	asr     r0, r0, #4
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x1c] @ 0x2269504, (=Unknown_20f983c)
	asr     r3, r2, #31
	ldsh    r0, [r0, r1]
	asr     r1, r0, #31
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	str     r1, [r4, #0x8]
	pop     {r4,pc}
@ 0x2269504

.word Unknown_20f983c @ 0x2269504
.thumb
Function_2269508: @ 2269508 :thumb
	ldr     r0, [r0, #0x8]
	str     r0, [r1, #0x0]
	bx      lr
@ 0x226950e


.align 2, 0


.thumb
Function_2269510: @ 2269510 :thumb
	push    {r3-r5,lr}
	ldr     r0, [r0, #0x4]
	ldr     r4, [r1, #0x8]
	mov     r5, r2
	bl      Function_225ccac
	cmp     r4, r0
	bne     branch_226952c
	lsl     r0, r5, #16
	lsr     r0, r0, #16
	mov     r1, #0x5
	bl      Function_2005770
	pop     {r3-r5,pc}
@ 0x226952c

.thumb
branch_226952c: @ 226952c :thumb
	mov     r0, r4
	bl      Function_225ce70
	cmp     r0, #0x0
	bne     branch_226953e
	lsl     r0, r5, #16
	lsr     r0, r0, #16
	bl      Function_2005748
.thumb
branch_226953e: @ 226953e :thumb
	pop     {r3-r5,pc}
@ 0x2269540

.thumb
Function_2269540: @ 2269540 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r7, r2
	mov     r4, #0x0
.thumb
branch_226954a: @ 226954a :thumb
	mov     r0, #0x0
	mov     r1, r4
	str     r0, [sp, #0x0]
	mov     r0, r6
	add     r1, #0x81
	mov     r2, #0x0
	mov     r3, r7
	bl      Function_200723c
	ldr     r1, [pc, #0x54] @ 0x22695b4, (=0x10550)
	str     r0, [r5, r1]
	mov     r0, r1
	ldr     r0, [r5, r0]
	blx     Function_20b3c0c_GetAdrOfDataPart
	ldr     r1, [pc, #0x4c] @ 0x22695b8, (=0x10554)
	str     r0, [r5, r1]
	mov     r0, r1
	ldr     r1, [r5, r0]
	cmp     r1, #0x0
	beq     branch_2269594
	mov     r0, r1
	add     r0, #0x8
	beq     branch_2269588
	ldrb    r2, [r1, #0x9]
	cmp     r2, #0x0
	bls     branch_2269588
	ldrh    r2, [r1, #0xe]
	add     r0, r0, r2
	.hword  0x1d00 @ add r0, r0, #0x4
	b       branch_226958a
@ 0x2269588

.thumb
branch_2269588: @ 2269588 :thumb
	mov     r0, #0x0
.thumb
branch_226958a: @ 226958a :thumb
	cmp     r0, #0x0
	beq     branch_2269594
	ldr     r0, [r0, #0x0]
	add     r1, r1, r0
	b       branch_2269596
@ 0x2269594

.thumb
branch_2269594: @ 2269594 :thumb
	mov     r1, #0x0
.thumb
branch_2269596: @ 2269596 :thumb
	ldr     r0, [pc, #0x24] @ 0x22695bc, (=0x10558)
	str     r1, [r5, r0]
	mov     r1, #0x0
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r5, r0]
	ldr     r0, [pc, #0x18] @ 0x22695bc, (=0x10558)
	ldr     r1, [pc, #0x1c] @ 0x22695c0, (=0x7fff)
	ldr     r0, [r5, r0]
	blx     Function_20b3624
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0xf
	blt     branch_226954a
	pop     {r3-r7,pc}
@ 0x22695b4

.word 0x10550 @ 0x22695b4
.word 0x10554 @ 0x22695b8
.word 0x10558 @ 0x22695bc
.word 0x7fff @ 0x22695c0
.thumb
Function_22695c4: @ 22695c4 :thumb
	push    {r4-r6,lr}
	ldr     r6, [pc, #0x14] @ 0x22695dc, (=0x10550)
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_22695cc: @ 22695cc :thumb
	ldr     r0, [r5, r6]
	bl      free
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0xf
	blt     branch_22695cc
	pop     {r4-r6,pc}
@ 0x22695dc

.word 0x10550 @ 0x22695dc
.thumb
Function_22695e0: @ 22695e0 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	ldr     r1, [pc, #0x1c] @ 0x2269604, (=0x10640)
	mov     r7, r2
	mov     r4, #0x0
	add     r5, r0, r1
.thumb
branch_22695ec: @ 22695ec :thumb
	mov     r2, r4
	mov     r0, r5
	mov     r1, r6
	add     r2, #0x90
	mov     r3, r7
	bl      Function_225c730
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x27
	blt     branch_22695ec
	pop     {r3-r7,pc}
@ 0x2269604

.word 0x10640 @ 0x2269604
.thumb
Function_2269608: @ 2269608 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	ldr     r7, [pc, #0x40] @ 0x2269650, (=0x2100df0)
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_2269612: @ 2269612 :thumb
	ldr     r0, [pc, #0x40] @ 0x2269654, (=0x10640)
	ldr     r0, [r5, r0]
	blx     Function_20b3c1c_GetTexOffsets
	add     r1, sp, #0x4
	add     r2, sp, #0x0
	mov     r6, r0
	blx     Function_20ae9b8
	ldr     r0, [sp, #0x4]
	ldr     r1, [r7, #0x0]
	blx     r1
	ldr     r0, [sp, #0x0]
	ldr     r1, [r7, #0x0]
	blx     r1
	mov     r0, r6
	blx     Function_20aea70
	ldr     r1, [pc, #0x20] @ 0x2269658, (=0x2100df8)
	ldr     r1, [r1, #0x0]
	blx     r1
	ldr     r0, [pc, #0x14] @ 0x2269654, (=0x10640)
	ldr     r0, [r5, r0]
	bl      free
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x27
	blt     branch_2269612
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2269650

.word 0x2100df0 @ 0x2269650
.word 0x10640 @ 0x2269654
.word 0x2100df8 @ 0x2269658
.thumb
Function_226965c: @ 226965c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r5, r0
	mov     r0, #0x0
	ldr     r4, [pc, #0x80] @ 0x22696e8, (=0x226e5a4)
	str     r1, [sp, #0x8]
	str     r2, [sp, #0xc]
	str     r0, [sp, #0x10]
.thumb
branch_226966c: @ 226966c :thumb
	ldr     r0, [pc, #0x7c] @ 0x22696ec, (=0x1081c)
	mov     r6, #0x0
	add     r0, r5, r0
	str     r0, [sp, #0x14]
	ldr     r0, [pc, #0x78] @ 0x22696f0, (=0x106dc)
	add     r0, r5, r0
	str     r0, [sp, #0x18]
	ldr     r0, [pc, #0x78] @ 0x22696f4, (=0x10550)
	add     r0, r5, r0
	str     r0, [sp, #0x1c]
.thumb
branch_2269680: @ 2269680 :thumb
	add     r7, r4, r6
	ldrb    r1, [r7, #0x2]
	cmp     r1, #0x11
	beq     branch_22696d2
	mov     r0, #0x14
	mul     r0, r1
	add     r1, r5, r0
	ldr     r0, [pc, #0x60] @ 0x22696f0, (=0x106dc)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_22696d2
	ldrb    r0, [r4, #0x1]
	lsl     r0, r0, #2
	add     r1, r5, r0
	ldr     r0, [pc, #0x58] @ 0x22696f8, (=0x10640)
	ldr     r0, [r1, r0]
	blx     Function_20b3c1c_GetTexOffsets
	ldrb    r1, [r4, #0x0]
	lsl     r1, r1, #4
	add     r2, r5, r1
	ldr     r1, [pc, #0x50] @ 0x22696fc, (=0x1055c)
	str     r0, [r2, r1]
	ldrb    r3, [r7, #0x2]
	ldr     r0, [sp, #0xc]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x14]
	mov     r1, r3
	str     r0, [sp, #0x4]
	mov     r0, #0x14
	mul     r1, r0
	ldr     r0, [sp, #0x18]
	add     r3, #0xb7
	add     r0, r0, r1
	ldrb    r1, [r4, #0x0]
	lsl     r2, r1, #4
	ldr     r1, [sp, #0x1c]
	add     r1, r1, r2
	ldr     r2, [sp, #0x8]
	bl      Function_2017164
.thumb
branch_22696d2: @ 22696d2 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, #0x2
	blt     branch_2269680
	ldr     r0, [sp, #0x10]
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x10]
	cmp     r0, #0x27
	blt     branch_226966c
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x22696e8

.word 0x226e5a4 @ 0x22696e8
.word 0x1081c @ 0x22696ec
.word 0x106dc @ 0x22696f0
.word 0x10550 @ 0x22696f4
.word 0x10640 @ 0x22696f8
.word 0x1055c @ 0x22696fc
.thumb
Function_2269700: @ 2269700 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x28] @ 0x2269730, (=0x106dc)
	mov     r6, #0x0
	add     r4, r5, r0
	ldr     r0, [pc, #0x28] @ 0x2269734, (=0x1081c)
	add     r7, r5, r0
.thumb
branch_226970e: @ 226970e :thumb
	ldr     r0, [pc, #0x20] @ 0x2269730, (=0x106dc)
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_2269724
	mov     r0, r4
	mov     r1, r7
	bl      Function_20171a0
	ldr     r0, [pc, #0x10] @ 0x2269730, (=0x106dc)
	mov     r1, #0x0
	str     r1, [r5, r0]
.thumb
branch_2269724: @ 2269724 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x14
	add     r4, #0x14
	cmp     r6, #0x10
	blt     branch_226970e
	pop     {r3-r7,pc}
@ 0x2269730

.word 0x106dc @ 0x2269730
.word 0x1081c @ 0x2269734
.thumb
Function_2269738: @ 2269738 :thumb
	push    {r3-r7,lr}
	mov     r7, r3
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	cmp     r7, #0x1b
	bcc     branch_226974a
	bl      ErrorHandling
.thumb
branch_226974a: @ 226974a :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_22697f0
	str     r6, [r4, #0x8]
	mov     r0, r6
	mov     r1, #0x5
	strb    r7, [r4, #0x0]
	bl      Function_225cd60
	add     r0, #0x28
	str     r0, [r4, #0x4]
	ldrb    r2, [r4, #0x0]
	mov     r0, r5
	mov     r1, r4
	lsl     r3, r2, #2
	ldr     r2, [pc, #0x18] @ 0x2269784, (=0x226e43c)
	ldr     r2, [r2, r3]
	blx     r2
	ldrb    r2, [r4, #0x0]
	mov     r0, r5
	mov     r1, r4
	lsl     r3, r2, #2
	ldr     r2, [pc, #0xc] @ 0x2269788, (=0x226e4a8)
	ldr     r2, [r2, r3]
	bl      Function_2269510
	pop     {r3-r7,pc}
@ 0x2269782


.align 2


.word 0x226e43c @ 0x2269784
.word 0x226e4a8 @ 0x2269788
.thumb
Function_226978c: @ 226978c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	bl      Function_2269800
	cmp     r0, #0x0
	beq     branch_22697c0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x1b
	bcc     branch_22697a6
	bl      ErrorHandling
.thumb
branch_22697a6: @ 22697a6 :thumb
	ldrb    r2, [r4, #0x0]
	mov     r0, r5
	mov     r1, r4
	lsl     r3, r2, #2
	ldr     r2, [pc, #0x14] @ 0x22697c4, (=0x226e3d0)
	ldr     r2, [r2, r3]
	blx     r2
	cmp     r0, #0x1
	bne     branch_22697c0
	mov     r0, r5
	mov     r1, r4
	bl      Function_22697f0
.thumb
branch_22697c0: @ 22697c0 :thumb
	pop     {r3-r5,pc}
@ 0x22697c2


.align 2


.word 0x226e3d0 @ 0x22697c4
.thumb
Function_22697c8: @ 22697c8 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	bl      Function_2269800
	cmp     r0, #0x0
	bne     branch_22697dc
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22697dc

.thumb
branch_22697dc: @ 22697dc :thumb
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x1b
	bcc     branch_22697e6
	bl      ErrorHandling
.thumb
branch_22697e6: @ 22697e6 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_226a998
	pop     {r3-r5,pc}
@ 0x22697f0

.thumb
Function_22697f0: @ 22697f0 :thumb
	ldr     r3, [pc, #0x8] @ 0x22697fc, (=Call_FillMemWithValue)
	mov     r2, #0xd1
	mov     r0, r1
	mov     r1, #0x0
	lsl     r2, r2, #4
	bx      r3
@ 0x22697fc

.word Call_FillMemWithValue @ 0x22697fc
.thumb
Function_2269800: @ 2269800 :thumb
	ldr     r0, [r0, #0x8]
	cmp     r0, #0x0
	beq     branch_226980a
	mov     r0, #0x1
	bx      lr
@ 0x226980a

.thumb
branch_226980a: @ 226980a :thumb
	mov     r0, #0x0
	bx      lr
@ 0x226980e


.align 2, 0


.thumb
Function_2269810: @ 2269810 :thumb
	lsl     r1, r1, #2
	add     r1, r0, r1
	ldr     r0, [pc, #0xc] @ 0x2269824, (=0x87c)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2269820
	mov     r0, #0x1
	bx      lr
@ 0x2269820

.thumb
branch_2269820: @ 2269820 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2269824

.word 0x87c @ 0x2269824
.thumb
Function_2269828: @ 2269828 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r2
	str     r0, [sp, #0x0]
	mov     r5, r1
	mov     r6, r3
	cmp     r4, #0x12
	bcc     branch_226983c
	bl      ErrorHandling
.thumb
branch_226983c: @ 226983c :thumb
	ldr     r0, [pc, #0x30] @ 0x2269870, (=0x87c)
	add     r7, r5, r0
	lsl     r0, r4, #2
	str     r0, [sp, #0x4]
	ldr     r0, [r7, r0]
	cmp     r0, #0x0
	beq     branch_226984e
	bl      ErrorHandling
.thumb
branch_226984e: @ 226984e :thumb
	ldr     r0, [sp, #0x4]
	ldr     r2, [pc, #0x20] @ 0x2269874, (=0x10550)
	ldr     r1, [sp, #0x0]
	str     r6, [r7, r0]
	add     r2, r1, r2
	ldrb    r1, [r6, #0x0]
	mov     r0, #0x78
	add     r5, #0xc
	mul     r0, r4
	lsl     r1, r1, #4
	add     r0, r5, r0
	add     r1, r2, r1
	bl      Function_2017258
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x226986e


.align 2


.word 0x87c @ 0x2269870
.word 0x10550 @ 0x2269874
.thumb
Function_2269878: @ 2269878 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r2
	str     r0, [sp, #0x0]
	lsl     r7, r5, #2
	mov     r0, r1
	str     r1, [sp, #0x4]
	add     r1, r0, r7
	ldr     r0, [pc, #0x120] @ 0x22699ac, (=0x87c)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_2269894
	bl      ErrorHandling
.thumb
branch_2269894: @ 2269894 :thumb
	mov     r0, #0x78
	mov     r6, r5
	mul     r6, r0
	ldr     r0, [sp, #0x4]
	add     r0, #0xc
	add     r0, r0, r6
	bl      Function_201734c
	cmp     r0, #0x0
	beq     branch_22699a6
	ldr     r0, [sp, #0x4]
	add     r1, r0, r7
	ldr     r0, [pc, #0xfc] @ 0x22699ac, (=0x87c)
	ldr     r2, [r1, r0]
	ldr     r0, [pc, #0xfc] @ 0x22699b0, (=0x10550)
	ldrb    r3, [r2, #0x0]
	ldr     r1, [sp, #0x0]
	add     r1, r1, r0
	lsl     r3, r3, #4
	add     r1, r1, r3
	str     r1, [sp, #0xc]
	ldrb    r1, [r2, #0x1]
	add     r0, #0xf0
	lsl     r2, r1, #2
	ldr     r1, [sp, #0x0]
	add     r1, r1, r2
	ldr     r0, [r1, r0]
	blx     Function_20b3c1c_GetTexOffsets
	ldr     r1, [sp, #0xc]
	mov     r2, #0x0
	str     r0, [r1, #0xc]
	mov     r0, r1
	ldr     r0, [r0, #0x8]
	ldr     r1, [r1, #0xc]
	mov     r3, r2
	blx     Function_20aed78
	cmp     r0, #0x0
	bne     branch_22698e8
	bl      ErrorHandling
.thumb
branch_22698e8: @ 22698e8 :thumb
	ldr     r0, [sp, #0xc]
	ldr     r1, [sp, #0xc]
	mov     r2, #0x0
	ldr     r0, [r0, #0x8]
	ldr     r1, [r1, #0xc]
	mov     r3, r2
	blx     Function_20af09c
	cmp     r0, #0x0
	bne     branch_2269900
	bl      ErrorHandling
.thumb
branch_2269900: @ 2269900 :thumb
	ldr     r0, [sp, #0x4]
	lsl     r1, r5, #3
	add     r5, r0, r1
	add     r0, r0, r7
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x4]
	ldr     r1, [pc, #0xa4] @ 0x22699b4, (=0x106dc)
	str     r0, [sp, #0x10]
	add     r0, #0xc
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x0]
	mov     r4, #0x0
	add     r7, r0, r1
.thumb
branch_226991a: @ 226991a :thumb
	ldr     r1, [sp, #0x8]
	ldr     r0, [pc, #0x8c] @ 0x22699ac, (=0x87c)
	ldr     r0, [r1, r0]
	add     r0, r0, r4
	ldrb    r1, [r0, #0x2]
	cmp     r1, #0x11
	beq     branch_226994e
	mov     r0, #0x14
	mul     r0, r1
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x10]
	ldr     r1, [sp, #0x14]
	add     r0, r0, r6
	add     r1, r7, r1
	bl      Function_201727c
	ldr     r1, [pc, #0x7c] @ 0x22699b8, (=0x8c4)
	ldr     r0, [sp, #0x14]
	ldr     r1, [r5, r1]
	add     r0, r7, r0
	bl      Function_2017240
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x2
	blt     branch_226991a
.thumb
branch_226994e: @ 226994e :thumb
	ldr     r0, [sp, #0xc]
	ldr     r1, [sp, #0x4]
	ldr     r0, [r0, #0x8]
	ldr     r1, [r1, #0x4]
	blx     Function_20b3724
	ldr     r0, [sp, #0x4]
	add     r0, #0xc
	str     r0, [sp, #0x4]
	add     r0, r0, r6
	bl      Function_2017294
	ldr     r1, [pc, #0x4c] @ 0x22699b4, (=0x106dc)
	ldr     r0, [sp, #0x0]
	ldr     r7, [pc, #0x40] @ 0x22699ac, (=0x87c)
	mov     r4, #0x0
	add     r5, r0, r1
.thumb
branch_2269970: @ 2269970 :thumb
	ldr     r0, [sp, #0x8]
	ldr     r0, [r0, r7]
	add     r0, r0, r4
	ldrb    r1, [r0, #0x2]
	cmp     r1, #0x11
	beq     branch_2269990
	ldr     r0, [sp, #0x4]
	mov     r2, #0x14
	mul     r2, r1
	add     r0, r0, r6
	add     r1, r5, r2
	bl      Function_2017288
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x2
	blt     branch_2269970
.thumb
branch_2269990: @ 2269990 :thumb
	ldr     r0, [sp, #0xc]
	ldr     r0, [r0, #0x8]
	blx     Function_20aee28
	ldr     r0, [sp, #0xc]
	ldr     r0, [r0, #0x8]
	blx     Function_20af164
	ldr     r0, [sp, #0xc]
	mov     r1, #0x0
	str     r1, [r0, #0xc]
.thumb
branch_22699a6: @ 22699a6 :thumb
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x22699aa


.align 2


.word 0x87c @ 0x22699ac
.word 0x10550 @ 0x22699b0
.word 0x106dc @ 0x22699b4
.word 0x8c4 @ 0x22699b8
.thumb
Function_22699bc: @ 22699bc :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, #0x2
	lsl     r4, r4, #12
	str     r4, [sp, #0x0]
	bl      Function_22699e4
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x22699ce


.align 2, 0


.thumb
Function_22699d0: @ 22699d0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, #0x2
	lsl     r4, r4, #12
	str     r4, [sp, #0x0]
	bl      Function_2269a3c
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x22699e2


.align 2, 0


.thumb
Function_22699e4: @ 22699e4 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	ldr     r1, [pc, #0x44] @ 0x2269a30, (=0x106dc)
	mov     r6, r2
	add     r0, r0, r1
	lsl     r1, r6, #2
	add     r2, r4, r1
	ldr     r1, [pc, #0x40] @ 0x2269a34, (=0x87c)
	mov     r5, r3
	ldr     r1, [r2, r1]
	add     r1, r1, r5
	ldrb    r2, [r1, #0x2]
	mov     r1, #0x14
	mul     r1, r2
	add     r0, r0, r1
	bl      Function_201724c
	mov     r1, r0
	ldr     r0, [pc, #0x2c] @ 0x2269a38, (=0x8c4)
	lsl     r2, r6, #3
	add     r0, r4, r0
	add     r4, r0, r2
	lsl     r5, r5, #2
	ldr     r2, [r4, r5]
	ldr     r0, [sp, #0x10]
	add     r0, r0, r2
	cmp     r0, r1
	bge     branch_2269a20
	str     r0, [r4, r5]
	pop     {r4-r6,pc}
@ 0x2269a20

.thumb
branch_2269a20: @ 2269a20 :thumb
	mov     r0, #0x2
	lsl     r0, r0, #12
	add     r0, r2, r0
	blx     _s32_div_f
	str     r1, [r4, r5]
	pop     {r4-r6,pc}
@ 0x2269a2e


.align 2


.word 0x106dc @ 0x2269a30
.word 0x87c @ 0x2269a34
.word 0x8c4 @ 0x2269a38
.thumb
Function_2269a3c: @ 2269a3c :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	ldr     r1, [pc, #0x40] @ 0x2269a84, (=0x106dc)
	mov     r4, r2
	add     r0, r0, r1
	lsl     r1, r4, #2
	add     r2, r5, r1
	ldr     r1, [pc, #0x3c] @ 0x2269a88, (=0x87c)
	mov     r6, r3
	ldr     r1, [r2, r1]
	add     r1, r1, r6
	ldrb    r2, [r1, #0x2]
	mov     r1, #0x14
	mul     r1, r2
	add     r0, r0, r1
	bl      Function_201724c
	ldr     r3, [pc, #0x2c] @ 0x2269a8c, (=0x8c4)
	lsl     r1, r4, #3
	add     r2, r5, r3
	add     r2, r2, r1
	lsl     r1, r6, #2
	ldr     r5, [sp, #0x10]
	ldr     r4, [r2, r1]
	add     r4, r5, r4
	cmp     r4, r0
	bge     branch_2269a78
	str     r4, [r2, r1]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2269a78

.thumb
branch_2269a78: @ 2269a78 :thumb
	sub     r3, #0xc4
	sub     r0, r0, r3
	str     r0, [r2, r1]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2269a82


.align 2


.word 0x106dc @ 0x2269a84
.word 0x87c @ 0x2269a88
.word 0x8c4 @ 0x2269a8c
.thumb
Function_2269a90: @ 2269a90 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	ldr     r1, [pc, #0x44] @ 0x2269adc, (=0x106dc)
	mov     r4, r2
	add     r0, r0, r1
	lsl     r1, r4, #2
	add     r2, r5, r1
	ldr     r1, [pc, #0x40] @ 0x2269ae0, (=0x87c)
	mov     r6, r3
	ldr     r1, [r2, r1]
	add     r1, r1, r6
	ldrb    r2, [r1, #0x2]
	mov     r1, #0x14
	mul     r1, r2
	add     r0, r0, r1
	bl      Function_201724c
	ldr     r1, [sp, #0x10]
	cmp     r0, r1
	bge     branch_2269acc
	mov     r1, #0x2
	lsl     r2, r4, #3
	lsl     r1, r1, #10
	add     r3, r5, r2
	lsl     r2, r6, #2
	sub     r0, r0, r1
	add     r2, r3, r2
	add     r1, #0xc4
	str     r0, [r2, r1]
	pop     {r4-r6,pc}
@ 0x2269acc

.thumb
branch_2269acc: @ 2269acc :thumb
	lsl     r0, r4, #3
	add     r2, r5, r0
	lsl     r0, r6, #2
	add     r2, r2, r0
	ldr     r0, [pc, #0xc] @ 0x2269ae4, (=0x8c4)
	str     r1, [r2, r0]
	pop     {r4-r6,pc}
@ 0x2269ada


.align 2


.word 0x106dc @ 0x2269adc
.word 0x87c @ 0x2269ae0
.word 0x8c4 @ 0x2269ae4
.thumb
Function_2269ae8: @ 2269ae8 :thumb
	push    {r4,lr}
	lsl     r2, r2, #2
	add     r2, r1, r2
	ldr     r1, [pc, #0x18] @ 0x2269b08, (=0x87c)
	ldr     r4, [pc, #0x18] @ 0x2269b0c, (=0x106dc)
	ldr     r1, [r2, r1]
	add     r0, r0, r4
	add     r1, r1, r3
	ldrb    r2, [r1, #0x2]
	mov     r1, #0x14
	mul     r1, r2
	add     r0, r0, r1
	bl      Function_2017248
	pop     {r4,pc}
@ 0x2269b06


.align 2


.word 0x87c @ 0x2269b08
.word 0x106dc @ 0x2269b0c
.thumb
Function_2269b10: @ 2269b10 :thumb
	ldr     r3, [pc, #0x4] @ 0x2269b18, (=0x226b92d)
	mov     r2, #0x1
	bx      r3
@ 0x2269b16


.align 2


.word 0x226b92d @ 0x2269b18
.thumb
Function_2269b1c: @ 2269b1c :thumb
	ldr     r3, [pc, #0x4] @ 0x2269b24, (=0x226b92d)
	mov     r2, #0x2
	bx      r3
@ 0x2269b22


.align 2


.word 0x226b92d @ 0x2269b24
.thumb
Function_2269b28: @ 2269b28 :thumb
	ldr     r3, [pc, #0x4] @ 0x2269b30, (=0x226b92d)
	mov     r2, #0x3
	bx      r3
@ 0x2269b2e


.align 2


.word 0x226b92d @ 0x2269b30
.thumb
Function_2269b34: @ 2269b34 :thumb
	ldr     r3, [pc, #0x4] @ 0x2269b3c, (=0x226bac9)
	mov     r2, #0x1
	bx      r3
@ 0x2269b3a


.align 2


.word 0x226bac9 @ 0x2269b3c
.thumb
Function_2269b40: @ 2269b40 :thumb
	ldr     r3, [pc, #0x4] @ 0x2269b48, (=0x226bac9)
	mov     r2, #0x2
	bx      r3
@ 0x2269b46


.align 2


.word 0x226bac9 @ 0x2269b48
.thumb
Function_2269b4c: @ 2269b4c :thumb
	ldr     r3, [pc, #0x4] @ 0x2269b54, (=0x226bac9)
	mov     r2, #0x3
	bx      r3
@ 0x2269b52


.align 2


.word 0x226bac9 @ 0x2269b54
.thumb
Function_2269b58: @ 2269b58 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r7, r1
	mov     r5, r7
	str     r0, [sp, #0x0]
	mov     r4, #0x0
	add     r5, #0xc
.thumb
branch_2269b66: @ 2269b66 :thumb
	add     r3, r4, #0x3
	lsl     r6, r3, #2
	ldr     r3, [pc, #0x44] @ 0x2269bb0, (=0x226e5a4)
	ldr     r0, [sp, #0x0]
	mov     r1, r7
	mov     r2, r4
	add     r3, r3, r6
	bl      Function_2269828
	ldr     r0, [r7, #0x8]
	add     r1, sp, #0x4
	bl      Function_225d054
	mov     r0, #0x2
	ldr     r1, [sp, #0x8]
	lsl     r0, r0, #14
	add     r2, r1, r0
	ldr     r1, [sp, #0x4]
	ldr     r3, [sp, #0xc]
	mov     r0, r5
	str     r2, [sp, #0x8]
	bl      Function_2017350
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2017348
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x78
	cmp     r4, #0x3
	blt     branch_2269b66
	ldr     r0, [pc, #0xc] @ 0x2269bb4, (=0x954)
	mov     r1, #0xff
	str     r1, [r7, r0]
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2269bae


.align 2


.word 0x226e5a4 @ 0x2269bb0
.word 0x954 @ 0x2269bb4
.thumb
Function_2269bb8: @ 2269bb8 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	ldr     r3, [pc, #0x128] @ 0x2269ce8, (=0x226e5c8)
	mov     r2, #0x1
	mov     r5, r0
	mov     r4, r1
	bl      Function_2269828
	ldr     r3, [pc, #0x120] @ 0x2269cec, (=0x226e5d4)
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_2269828
	mov     r0, r4
	add     r0, #0x84
	mov     r1, #0x0
	bl      Function_2017348
	ldr     r0, [r4, #0x8]
	add     r1, sp, #0xc
	bl      Function_225d054
	mov     r2, #0x1
	ldr     r0, [sp, #0x10]
	lsl     r2, r2, #16
	add     r0, r0, r2
	str     r0, [sp, #0x10]
	ldr     r1, [sp, #0xc]
	lsr     r0, r2, #1
	add     r0, r1, r0
	add     r5, sp, #0xc
	str     r0, [sp, #0xc]
	ldmia   r5!, {r0,r1}
	add     r3, sp, #0x0
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x8
	str     r0, [r3, #0x0]
	ldr     r0, [sp, #0x4]
	add     r0, r0, r2
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xe0] @ 0x2269cf0, (=0x958)
	str     r1, [r4, r0]
	ldr     r0, [r4, #0x8]
	mov     r1, #0x6
	bl      Function_225cd60
	cmp     r0, #0x3
	bhi     branch_2269cc8
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2269c28

Jumppoints_2269c28:
.hword branch_2269c30 - Jumppoints_2269c28 - 2
.hword branch_2269c50 - Jumppoints_2269c28 - 2
.hword branch_2269c72 - Jumppoints_2269c28 - 2
.hword branch_2269c9e - Jumppoints_2269c28 - 2
.thumb
branch_2269c30: @ 2269c30 :thumb
	mov     r0, #0x7
	ldr     r1, [sp, #0x14]
	lsl     r0, r0, #14
	sub     r1, r1, r0
	str     r1, [sp, #0x14]
	ldr     r1, [sp, #0x8]
	lsr     r0, r0, #1
	sub     r0, r1, r0
	str     r0, [sp, #0x8]
	mov     r0, r4
	ldr     r1, [pc, #0xac] @ 0x2269cf4, (=0xbfff)
	add     r0, #0x84
	mov     r2, #0x1
	bl      Function_2017388
	b       branch_2269cc8
@ 0x2269c50

.thumb
branch_2269c50: @ 2269c50 :thumb
	mov     r0, #0x6
	ldr     r1, [sp, #0x14]
	lsl     r0, r0, #14
	add     r0, r1, r0
	str     r0, [sp, #0x14]
	mov     r0, #0xb
	ldr     r1, [sp, #0x8]
	lsl     r0, r0, #12
	add     r0, r1, r0
	str     r0, [sp, #0x8]
	mov     r0, r4
	ldr     r1, [pc, #0x90] @ 0x2269cf8, (=0x3fff)
	add     r0, #0x84
	mov     r2, #0x1
	bl      Function_2017388
	b       branch_2269cc8
@ 0x2269c72

.thumb
branch_2269c72: @ 2269c72 :thumb
	mov     r0, #0x17
	ldr     r1, [sp, #0xc]
	lsl     r0, r0, #12
	sub     r0, r1, r0
	str     r0, [sp, #0xc]
	mov     r0, #0x7
	ldr     r1, [sp, #0x0]
	lsl     r0, r0, #12
	sub     r0, r1, r0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	ldr     r1, [sp, #0x8]
	lsl     r0, r0, #14
	add     r0, r1, r0
	str     r0, [sp, #0x8]
	mov     r0, r4
	add     r0, #0x84
	mov     r1, #0x0
	mov     r2, #0x1
	bl      Function_2017388
	b       branch_2269cc8
@ 0x2269c9e

.thumb
branch_2269c9e: @ 2269c9e :thumb
	mov     r0, #0x17
	ldr     r1, [sp, #0xc]
	lsl     r0, r0, #12
	add     r0, r1, r0
	str     r0, [sp, #0xc]
	mov     r0, #0x7
	ldr     r1, [sp, #0x0]
	lsl     r0, r0, #12
	add     r0, r1, r0
	str     r0, [sp, #0x0]
	mov     r1, #0x2
	ldr     r0, [sp, #0x8]
	lsl     r1, r1, #14
	add     r0, r0, r1
	str     r0, [sp, #0x8]
	mov     r0, r4
	add     r0, #0x84
	.hword  0x1e49 @ sub r1, r1, #0x1
	mov     r2, #0x1
	bl      Function_2017388
.thumb
branch_2269cc8: @ 2269cc8 :thumb
	mov     r0, r4
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x10]
	ldr     r3, [sp, #0x14]
	add     r0, #0x84
	bl      Function_2017350
	add     r4, #0xc
	ldr     r1, [sp, #0x0]
	ldr     r2, [sp, #0x4]
	ldr     r3, [sp, #0x8]
	mov     r0, r4
	bl      Function_2017350
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x2269ce8

.word 0x226e5c8 @ 0x2269ce8
.word 0x226e5d4 @ 0x2269cec
.word 0x958 @ 0x2269cf0
.word 0xbfff @ 0x2269cf4
.word 0x3fff @ 0x2269cf8
.thumb
Function_2269cfc: @ 2269cfc :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	ldr     r3, [pc, #0x1fc] @ 0x2269f00, (=0x226e5c8)
	mov     r2, #0x1
	mov     r5, r0
	mov     r4, r1
	bl      Function_2269828
	ldr     r3, [pc, #0x1f4] @ 0x2269f04, (=0x226e5d4)
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_2269828
	ldr     r3, [pc, #0x1ec] @ 0x2269f08, (=0x226e5cc)
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x2
	bl      Function_2269828
	mov     r0, r4
	add     r0, #0x84
	mov     r1, #0x0
	bl      Function_2017348
	ldr     r0, [r4, #0x8]
	add     r1, sp, #0xc
	bl      Function_225d054
	mov     r2, #0x1
	ldr     r0, [sp, #0x10]
	lsl     r2, r2, #16
	add     r0, r0, r2
	str     r0, [sp, #0x10]
	ldr     r1, [sp, #0xc]
	lsr     r0, r2, #1
	add     r0, r1, r0
	add     r5, sp, #0xc
	str     r0, [sp, #0xc]
	ldmia   r5!, {r0,r1}
	add     r3, sp, #0x0
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x8
	str     r0, [r3, #0x0]
	ldr     r0, [sp, #0x4]
	add     r0, r0, r2
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1ac] @ 0x2269f0c, (=0x958)
	str     r1, [r4, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r4, r0]
	ldr     r0, [r4, #0x8]
	mov     r1, #0x6
	bl      Function_225cd60
	cmp     r0, #0x3
	bls     branch_2269d72
	b       branch_2269eee
@ 0x2269d72

.thumb
branch_2269d72: @ 2269d72 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2269d7e

Jumppoints_2269d7e:
.hword branch_2269d86 - Jumppoints_2269d7e - 2
.hword branch_2269dda - Jumppoints_2269d7e - 2
.hword branch_2269e30 - Jumppoints_2269d7e - 2
.hword branch_2269e90 - Jumppoints_2269d7e - 2
.thumb
branch_2269d86: @ 2269d86 :thumb
	mov     r0, #0x7
	ldr     r1, [sp, #0x14]
	lsl     r0, r0, #14
	sub     r1, r1, r0
	str     r1, [sp, #0x14]
	ldr     r1, [sp, #0x8]
	lsr     r0, r0, #1
	sub     r0, r1, r0
	str     r0, [sp, #0x8]
	mov     r0, r4
	ldr     r1, [pc, #0x174] @ 0x2269f10, (=0xa38d)
	add     r0, #0x84
	mov     r2, #0x1
	bl      Function_2017388
	mov     r0, r4
	ldr     r1, [pc, #0x16c] @ 0x2269f14, (=0xdc70)
	add     r0, #0xfc
	mov     r2, #0x1
	bl      Function_2017388
	mov     r1, #0x2
	mov     r0, r4
	ldr     r2, [sp, #0xc]
	lsl     r1, r1, #14
	add     r1, r2, r1
	ldr     r2, [sp, #0x10]
	ldr     r3, [sp, #0x14]
	add     r0, #0x84
	bl      Function_2017350
	mov     r1, #0x2
	mov     r0, r4
	ldr     r2, [sp, #0xc]
	lsl     r1, r1, #14
	sub     r1, r2, r1
	ldr     r2, [sp, #0x10]
	ldr     r3, [sp, #0x14]
	add     r0, #0xfc
	bl      Function_2017350
	b       branch_2269eee
@ 0x2269dda

.thumb
branch_2269dda: @ 2269dda :thumb
	mov     r0, #0x6
	ldr     r1, [sp, #0x14]
	lsl     r0, r0, #14
	add     r0, r1, r0
	str     r0, [sp, #0x14]
	mov     r0, #0xb
	ldr     r1, [sp, #0x8]
	lsl     r0, r0, #12
	add     r0, r1, r0
	str     r0, [sp, #0x8]
	mov     r0, r4
	ldr     r1, [pc, #0x124] @ 0x2269f18, (=0x238e)
	add     r0, #0x84
	mov     r2, #0x1
	bl      Function_2017388
	mov     r0, r4
	ldr     r1, [pc, #0x11c] @ 0x2269f1c, (=0x5c71)
	add     r0, #0xfc
	mov     r2, #0x1
	bl      Function_2017388
	mov     r1, #0x2
	mov     r0, r4
	ldr     r2, [sp, #0xc]
	lsl     r1, r1, #14
	sub     r1, r2, r1
	ldr     r2, [sp, #0x10]
	ldr     r3, [sp, #0x14]
	add     r0, #0x84
	bl      Function_2017350
	mov     r1, #0x2
	mov     r0, r4
	ldr     r2, [sp, #0xc]
	lsl     r1, r1, #14
	add     r1, r2, r1
	ldr     r2, [sp, #0x10]
	ldr     r3, [sp, #0x14]
	add     r0, #0xfc
	bl      Function_2017350
	b       branch_2269eee
@ 0x2269e30

.thumb
branch_2269e30: @ 2269e30 :thumb
	mov     r0, #0x17
	ldr     r1, [sp, #0xc]
	lsl     r0, r0, #12
	sub     r0, r1, r0
	str     r0, [sp, #0xc]
	mov     r0, #0x7
	ldr     r1, [sp, #0x0]
	lsl     r0, r0, #12
	sub     r0, r1, r0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	ldr     r1, [sp, #0x8]
	lsl     r0, r0, #14
	add     r0, r1, r0
	str     r0, [sp, #0x8]
	mov     r0, r4
	ldr     r1, [pc, #0xcc] @ 0x2269f20, (=0xe38f)
	add     r0, #0x84
	mov     r2, #0x1
	bl      Function_2017388
	mov     r0, r4
	ldr     r1, [pc, #0xc4] @ 0x2269f24, (=0x1c71)
	add     r0, #0xfc
	mov     r2, #0x1
	bl      Function_2017388
	mov     r3, #0x2
	mov     r0, r4
	ldr     r5, [sp, #0x14]
	lsl     r3, r3, #14
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x10]
	add     r0, #0x84
	sub     r3, r5, r3
	bl      Function_2017350
	mov     r3, #0x2
	mov     r0, r4
	ldr     r5, [sp, #0x14]
	lsl     r3, r3, #14
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x10]
	add     r0, #0xfc
	add     r3, r5, r3
	bl      Function_2017350
	b       branch_2269eee
@ 0x2269e90

.thumb
branch_2269e90: @ 2269e90 :thumb
	mov     r0, #0x17
	ldr     r1, [sp, #0xc]
	lsl     r0, r0, #12
	add     r0, r1, r0
	str     r0, [sp, #0xc]
	mov     r0, #0x7
	ldr     r1, [sp, #0x0]
	lsl     r0, r0, #12
	add     r0, r1, r0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	ldr     r1, [sp, #0x8]
	lsl     r0, r0, #14
	add     r0, r1, r0
	str     r0, [sp, #0x8]
	mov     r0, r4
	ldr     r1, [pc, #0x74] @ 0x2269f28, (=0x638d)
	add     r0, #0x84
	mov     r2, #0x1
	bl      Function_2017388
	mov     r0, r4
	ldr     r1, [pc, #0x6c] @ 0x2269f2c, (=0x9c71)
	add     r0, #0xfc
	mov     r2, #0x1
	bl      Function_2017388
	mov     r3, #0x2
	mov     r0, r4
	ldr     r5, [sp, #0x14]
	lsl     r3, r3, #14
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x10]
	add     r0, #0x84
	add     r3, r5, r3
	bl      Function_2017350
	mov     r3, #0x2
	mov     r0, r4
	ldr     r5, [sp, #0x14]
	lsl     r3, r3, #14
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x10]
	add     r0, #0xfc
	sub     r3, r5, r3
	bl      Function_2017350
.thumb
branch_2269eee: @ 2269eee :thumb
	add     r4, #0xc
	ldr     r1, [sp, #0x0]
	ldr     r2, [sp, #0x4]
	ldr     r3, [sp, #0x8]
	mov     r0, r4
	bl      Function_2017350
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x2269f00

.word 0x226e5c8 @ 0x2269f00
.word 0x226e5d4 @ 0x2269f04
.word 0x226e5cc @ 0x2269f08
.word 0x958 @ 0x2269f0c
.word 0xa38d @ 0x2269f10
.word 0xdc70 @ 0x2269f14
.word 0x238e @ 0x2269f18
.word 0x5c71 @ 0x2269f1c
.word 0xe38f @ 0x2269f20
.word 0x1c71 @ 0x2269f24
.word 0x638d @ 0x2269f28
.word 0x9c71 @ 0x2269f2c
.thumb
Function_2269f30: @ 2269f30 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	ldr     r3, [pc, #0x284] @ 0x226a1bc, (=0x226e5c8)
	mov     r2, #0x1
	mov     r5, r0
	mov     r4, r1
	bl      Function_2269828
	ldr     r3, [pc, #0x27c] @ 0x226a1c0, (=0x226e5d4)
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_2269828
	ldr     r3, [pc, #0x274] @ 0x226a1c4, (=0x226e5cc)
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x2
	bl      Function_2269828
	ldr     r3, [pc, #0x26c] @ 0x226a1c8, (=0x226e5d0)
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x3
	bl      Function_2269828
	mov     r0, r4
	add     r0, #0x84
	mov     r1, #0x0
	bl      Function_2017348
	ldr     r1, [pc, #0x25c] @ 0x226a1cc, (=0x958)
	mov     r2, #0x8
	str     r2, [r4, r1]
	add     r0, r1, #0x4
	str     r2, [r4, r0]
	add     r1, #0x8
	str     r2, [r4, r1]
	ldr     r0, [r4, #0x8]
	add     r1, sp, #0xc
	bl      Function_225d054
	mov     r2, #0x1
	ldr     r0, [sp, #0x10]
	lsl     r2, r2, #16
	add     r0, r0, r2
	str     r0, [sp, #0x10]
	ldr     r1, [sp, #0xc]
	lsr     r0, r2, #1
	add     r0, r1, r0
	add     r5, sp, #0xc
	str     r0, [sp, #0xc]
	ldmia   r5!, {r0,r1}
	add     r3, sp, #0x0
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x6
	str     r0, [r3, #0x0]
	ldr     r0, [sp, #0x4]
	add     r0, r0, r2
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x8]
	bl      Function_225cd60
	cmp     r0, #0x3
	bls     branch_2269fb6
	b       branch_226a1aa
@ 0x2269fb6

.thumb
branch_2269fb6: @ 2269fb6 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2269fc2

Jumppoints_2269fc2:
.hword branch_2269fca - Jumppoints_2269fc2 - 2
.hword branch_226a03c - Jumppoints_2269fc2 - 2
.hword branch_226a0b0 - Jumppoints_2269fc2 - 2
.hword branch_226a12e - Jumppoints_2269fc2 - 2
.thumb
branch_2269fca: @ 2269fca :thumb
	mov     r0, #0x7
	ldr     r1, [sp, #0x14]
	lsl     r0, r0, #14
	sub     r1, r1, r0
	str     r1, [sp, #0x14]
	ldr     r1, [sp, #0x8]
	lsr     r0, r0, #1
	sub     r0, r1, r0
	str     r0, [sp, #0x8]
	mov     r0, r4
	ldr     r1, [pc, #0x1f0] @ 0x226a1d0, (=0xa38d)
	add     r0, #0x84
	mov     r2, #0x1
	bl      Function_2017388
	mov     r0, r4
	ldr     r1, [pc, #0x1e8] @ 0x226a1d4, (=0xdc70)
	add     r0, #0xfc
	mov     r2, #0x1
	bl      Function_2017388
	mov     r0, #0x5d
	lsl     r0, r0, #2
	ldr     r1, [pc, #0x1dc] @ 0x226a1d8, (=0xbfff)
	add     r0, r4, r0
	mov     r2, #0x1
	bl      Function_2017388
	mov     r1, #0x2
	mov     r0, r4
	ldr     r2, [sp, #0xc]
	lsl     r1, r1, #14
	add     r1, r2, r1
	ldr     r2, [sp, #0x10]
	ldr     r3, [sp, #0x14]
	add     r0, #0x84
	bl      Function_2017350
	mov     r1, #0x2
	mov     r0, r4
	ldr     r2, [sp, #0xc]
	lsl     r1, r1, #14
	sub     r1, r2, r1
	ldr     r2, [sp, #0x10]
	ldr     r3, [sp, #0x14]
	add     r0, #0xfc
	bl      Function_2017350
	mov     r0, #0x5d
	lsl     r0, r0, #2
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x10]
	ldr     r3, [sp, #0x14]
	add     r0, r4, r0
	bl      Function_2017350
	b       branch_226a1aa
@ 0x226a03c

.thumb
branch_226a03c: @ 226a03c :thumb
	mov     r0, #0x6
	ldr     r1, [sp, #0x14]
	lsl     r0, r0, #14
	add     r0, r1, r0
	str     r0, [sp, #0x14]
	mov     r0, #0xb
	ldr     r1, [sp, #0x8]
	lsl     r0, r0, #12
	add     r0, r1, r0
	str     r0, [sp, #0x8]
	mov     r0, r4
	ldr     r1, [pc, #0x188] @ 0x226a1dc, (=0x238e)
	add     r0, #0x84
	mov     r2, #0x1
	bl      Function_2017388
	mov     r0, r4
	ldr     r1, [pc, #0x180] @ 0x226a1e0, (=0x5c71)
	add     r0, #0xfc
	mov     r2, #0x1
	bl      Function_2017388
	mov     r0, #0x5d
	lsl     r0, r0, #2
	ldr     r1, [pc, #0x174] @ 0x226a1e4, (=0x3fff)
	add     r0, r4, r0
	mov     r2, #0x1
	bl      Function_2017388
	mov     r1, #0x2
	mov     r0, r4
	ldr     r2, [sp, #0xc]
	lsl     r1, r1, #14
	sub     r1, r2, r1
	ldr     r2, [sp, #0x10]
	ldr     r3, [sp, #0x14]
	add     r0, #0x84
	bl      Function_2017350
	mov     r1, #0x2
	mov     r0, r4
	ldr     r2, [sp, #0xc]
	lsl     r1, r1, #14
	add     r1, r2, r1
	ldr     r2, [sp, #0x10]
	ldr     r3, [sp, #0x14]
	add     r0, #0xfc
	bl      Function_2017350
	mov     r0, #0x5d
	lsl     r0, r0, #2
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x10]
	ldr     r3, [sp, #0x14]
	add     r0, r4, r0
	bl      Function_2017350
	b       branch_226a1aa
@ 0x226a0b0

.thumb
branch_226a0b0: @ 226a0b0 :thumb
	mov     r0, #0x17
	ldr     r1, [sp, #0xc]
	lsl     r0, r0, #12
	sub     r0, r1, r0
	str     r0, [sp, #0xc]
	mov     r0, #0x7
	ldr     r1, [sp, #0x0]
	lsl     r0, r0, #12
	sub     r0, r1, r0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	ldr     r1, [sp, #0x8]
	lsl     r0, r0, #14
	add     r0, r1, r0
	str     r0, [sp, #0x8]
	mov     r0, r4
	ldr     r1, [pc, #0x114] @ 0x226a1e8, (=0xe38f)
	add     r0, #0x84
	mov     r2, #0x1
	bl      Function_2017388
	mov     r0, r4
	ldr     r1, [pc, #0x10c] @ 0x226a1ec, (=0x1c71)
	add     r0, #0xfc
	mov     r2, #0x1
	bl      Function_2017388
	mov     r0, #0x5d
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, #0x0
	mov     r2, #0x1
	bl      Function_2017388
	mov     r3, #0x2
	mov     r0, r4
	ldr     r5, [sp, #0x14]
	lsl     r3, r3, #14
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x10]
	add     r0, #0x84
	sub     r3, r5, r3
	bl      Function_2017350
	mov     r3, #0x2
	mov     r0, r4
	ldr     r5, [sp, #0x14]
	lsl     r3, r3, #14
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x10]
	add     r0, #0xfc
	add     r3, r5, r3
	bl      Function_2017350
	mov     r0, #0x5d
	lsl     r0, r0, #2
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x10]
	ldr     r3, [sp, #0x14]
	add     r0, r4, r0
	bl      Function_2017350
	b       branch_226a1aa
@ 0x226a12e

.thumb
branch_226a12e: @ 226a12e :thumb
	mov     r0, #0x17
	ldr     r1, [sp, #0xc]
	lsl     r0, r0, #12
	add     r0, r1, r0
	str     r0, [sp, #0xc]
	mov     r0, #0x7
	ldr     r1, [sp, #0x0]
	lsl     r0, r0, #12
	add     r0, r1, r0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	ldr     r1, [sp, #0x8]
	lsl     r0, r0, #14
	add     r0, r1, r0
	str     r0, [sp, #0x8]
	mov     r0, r4
	ldr     r1, [pc, #0xa0] @ 0x226a1f0, (=0x638d)
	add     r0, #0x84
	mov     r2, #0x1
	bl      Function_2017388
	mov     r0, r4
	ldr     r1, [pc, #0x98] @ 0x226a1f4, (=0x9c71)
	add     r0, #0xfc
	mov     r2, #0x1
	bl      Function_2017388
	mov     r0, #0x5d
	lsl     r0, r0, #2
	ldr     r1, [pc, #0x8c] @ 0x226a1f8, (=0x7fff)
	add     r0, r4, r0
	mov     r2, #0x1
	bl      Function_2017388
	mov     r3, #0x2
	mov     r0, r4
	ldr     r5, [sp, #0x14]
	lsl     r3, r3, #14
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x10]
	add     r0, #0x84
	add     r3, r5, r3
	bl      Function_2017350
	mov     r3, #0x2
	mov     r0, r4
	ldr     r5, [sp, #0x14]
	lsl     r3, r3, #14
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x10]
	add     r0, #0xfc
	sub     r3, r5, r3
	bl      Function_2017350
	mov     r0, #0x5d
	lsl     r0, r0, #2
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x10]
	ldr     r3, [sp, #0x14]
	add     r0, r4, r0
	bl      Function_2017350
.thumb
branch_226a1aa: @ 226a1aa :thumb
	add     r4, #0xc
	ldr     r1, [sp, #0x0]
	ldr     r2, [sp, #0x4]
	ldr     r3, [sp, #0x8]
	mov     r0, r4
	bl      Function_2017350
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x226a1bc

.word 0x226e5c8 @ 0x226a1bc
.word 0x226e5d4 @ 0x226a1c0
.word 0x226e5cc @ 0x226a1c4
.word 0x226e5d0 @ 0x226a1c8
.word 0x958 @ 0x226a1cc
.word 0xa38d @ 0x226a1d0
.word 0xdc70 @ 0x226a1d4
.word 0xbfff @ 0x226a1d8
.word 0x238e @ 0x226a1dc
.word 0x5c71 @ 0x226a1e0
.word 0x3fff @ 0x226a1e4
.word 0xe38f @ 0x226a1e8
.word 0x1c71 @ 0x226a1ec
.word 0x638d @ 0x226a1f0
.word 0x9c71 @ 0x226a1f4
.word 0x7fff @ 0x226a1f8
.thumb
Function_226a1fc: @ 226a1fc :thumb
	ldr     r3, [pc, #0x4] @ 0x226a204, (=0x226a9d1)
	mov     r2, #0x1
	bx      r3
@ 0x226a202


.align 2


.word 0x226a9d1 @ 0x226a204
.thumb
Function_226a208: @ 226a208 :thumb
	ldr     r3, [pc, #0x4] @ 0x226a210, (=0x226a9d1)
	mov     r2, #0x2
	bx      r3
@ 0x226a20e


.align 2


.word 0x226a9d1 @ 0x226a210
.thumb
Function_226a214: @ 226a214 :thumb
	ldr     r3, [pc, #0x4] @ 0x226a21c, (=0x226a9d1)
	mov     r2, #0x3
	bx      r3
@ 0x226a21a


.align 2


.word 0x226a9d1 @ 0x226a21c
.thumb
Function_226a220: @ 226a220 :thumb
	ldr     r3, [pc, #0x4] @ 0x226a228, (=0x226b7b1)
	mov     r2, #0x1
	bx      r3
@ 0x226a226


.align 2


.word 0x226b7b1 @ 0x226a228
.thumb
Function_226a22c: @ 226a22c :thumb
	ldr     r3, [pc, #0x4] @ 0x226a234, (=0x226b7b1)
	mov     r2, #0x2
	bx      r3
@ 0x226a232


.align 2


.word 0x226b7b1 @ 0x226a234
.thumb
Function_226a238: @ 226a238 :thumb
	ldr     r3, [pc, #0x4] @ 0x226a240, (=0x226b7b1)
	mov     r2, #0x4
	bx      r3
@ 0x226a23e


.align 2


.word 0x226b7b1 @ 0x226a240
.thumb
Function_226a244: @ 226a244 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	ldr     r5, [pc, #0x38] @ 0x226a284, (=0x226e640)
	str     r0, [sp, #0x8]
	mov     r7, r1
	mov     r4, #0x0
.thumb
branch_226a250: @ 226a250 :thumb
	ldrb    r3, [r5, #0x0]
	ldr     r0, [sp, #0x8]
	mov     r1, r7
	lsl     r6, r3, #2
	ldr     r3, [pc, #0x2c] @ 0x226a288, (=0x226e5a4)
	mov     r2, r4
	add     r3, r3, r6
	bl      Function_2269828
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r4, #0x10
	blt     branch_226a250
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x1c] @ 0x226a28c, (=0x954)
	ldr     r1, [pc, #0x1c] @ 0x226a290, (=0x226e2ec)
	add     r0, r7, r0
	mov     r2, #0x2
	mov     r3, #0x21
	str     r7, [sp, #0x4]
	bl      Function_226bc40
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x226a282


.align 2


.word 0x226e640 @ 0x226a284
.word 0x226e5a4 @ 0x226a288
.word 0x954 @ 0x226a28c
.word 0x226e2ec @ 0x226a290
.thumb
Function_226a294: @ 226a294 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	ldr     r5, [pc, #0x38] @ 0x226a2d4, (=0x226e650)
	str     r0, [sp, #0x8]
	mov     r7, r1
	mov     r4, #0x0
.thumb
branch_226a2a0: @ 226a2a0 :thumb
	ldrb    r3, [r5, #0x0]
	ldr     r0, [sp, #0x8]
	mov     r1, r7
	lsl     r6, r3, #2
	ldr     r3, [pc, #0x2c] @ 0x226a2d8, (=0x226e5a4)
	mov     r2, r4
	add     r3, r3, r6
	bl      Function_2269828
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r4, #0x10
	blt     branch_226a2a0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x1c] @ 0x226a2dc, (=0x954)
	ldr     r1, [pc, #0x1c] @ 0x226a2e0, (=0x226e304)
	add     r0, r7, r0
	mov     r2, #0x2
	mov     r3, #0x21
	str     r7, [sp, #0x4]
	bl      Function_226bc40
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x226a2d2


.align 2


.word 0x226e650 @ 0x226a2d4
.word 0x226e5a4 @ 0x226a2d8
.word 0x954 @ 0x226a2dc
.word 0x226e304 @ 0x226a2e0
.thumb
Function_226a2e4: @ 226a2e4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	ldr     r5, [pc, #0x38] @ 0x226a324, (=0x226e660)
	str     r0, [sp, #0x8]
	mov     r7, r1
	mov     r4, #0x0
.thumb
branch_226a2f0: @ 226a2f0 :thumb
	ldrb    r3, [r5, #0x0]
	ldr     r0, [sp, #0x8]
	mov     r1, r7
	lsl     r6, r3, #2
	ldr     r3, [pc, #0x2c] @ 0x226a328, (=0x226e5a4)
	mov     r2, r4
	add     r3, r3, r6
	bl      Function_2269828
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r4, #0x10
	blt     branch_226a2f0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x1c] @ 0x226a32c, (=0x954)
	ldr     r1, [pc, #0x1c] @ 0x226a330, (=0x226e34c)
	add     r0, r7, r0
	mov     r2, #0x3
	mov     r3, #0x21
	str     r7, [sp, #0x4]
	bl      Function_226bc40
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x226a322


.align 2


.word 0x226e660 @ 0x226a324
.word 0x226e5a4 @ 0x226a328
.word 0x954 @ 0x226a32c
.word 0x226e34c @ 0x226a330
.thumb
Function_226a334: @ 226a334 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	ldr     r5, [pc, #0x38] @ 0x226a374, (=0x226e640)
	str     r0, [sp, #0x8]
	mov     r7, r1
	mov     r4, #0x0
.thumb
branch_226a340: @ 226a340 :thumb
	ldrb    r3, [r5, #0x0]
	ldr     r0, [sp, #0x8]
	mov     r1, r7
	lsl     r6, r3, #2
	ldr     r3, [pc, #0x2c] @ 0x226a378, (=0x226e5a4)
	mov     r2, r4
	add     r3, r3, r6
	bl      Function_2269828
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r4, #0x10
	blt     branch_226a340
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x1c] @ 0x226a37c, (=0x954)
	ldr     r1, [pc, #0x1c] @ 0x226a380, (=0x226e2fc)
	add     r0, r7, r0
	mov     r2, #0x2
	mov     r3, #0x21
	str     r7, [sp, #0x4]
	bl      Function_226bc40
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x226a372


.align 2


.word 0x226e640 @ 0x226a374
.word 0x226e5a4 @ 0x226a378
.word 0x954 @ 0x226a37c
.word 0x226e2fc @ 0x226a380
.thumb
Function_226a384: @ 226a384 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	ldr     r5, [pc, #0x38] @ 0x226a3c4, (=0x226e650)
	str     r0, [sp, #0x8]
	mov     r7, r1
	mov     r4, #0x0
.thumb
branch_226a390: @ 226a390 :thumb
	ldrb    r3, [r5, #0x0]
	ldr     r0, [sp, #0x8]
	mov     r1, r7
	lsl     r6, r3, #2
	ldr     r3, [pc, #0x2c] @ 0x226a3c8, (=0x226e5a4)
	mov     r2, r4
	add     r3, r3, r6
	bl      Function_2269828
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r4, #0x10
	blt     branch_226a390
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x1c] @ 0x226a3cc, (=0x954)
	ldr     r1, [pc, #0x1c] @ 0x226a3d0, (=0x226e334)
	add     r0, r7, r0
	mov     r2, #0x3
	mov     r3, #0x29
	str     r7, [sp, #0x4]
	bl      Function_226bc40
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x226a3c2


.align 2


.word 0x226e650 @ 0x226a3c4
.word 0x226e5a4 @ 0x226a3c8
.word 0x954 @ 0x226a3cc
.word 0x226e334 @ 0x226a3d0
.thumb
Function_226a3d4: @ 226a3d4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	ldr     r5, [pc, #0x38] @ 0x226a414, (=0x226e660)
	str     r0, [sp, #0x8]
	mov     r7, r1
	mov     r4, #0x0
.thumb
branch_226a3e0: @ 226a3e0 :thumb
	ldrb    r3, [r5, #0x0]
	ldr     r0, [sp, #0x8]
	mov     r1, r7
	lsl     r6, r3, #2
	ldr     r3, [pc, #0x2c] @ 0x226a418, (=0x226e5a4)
	mov     r2, r4
	add     r3, r3, r6
	bl      Function_2269828
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r4, #0x10
	blt     branch_226a3e0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x1c] @ 0x226a41c, (=0x954)
	ldr     r1, [pc, #0x1c] @ 0x226a420, (=0x226e358)
	add     r0, r7, r0
	mov     r2, #0x3
	mov     r3, #0x21
	str     r7, [sp, #0x4]
	bl      Function_226bc40
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x226a412


.align 2


.word 0x226e660 @ 0x226a414
.word 0x226e5a4 @ 0x226a418
.word 0x954 @ 0x226a41c
.word 0x226e358 @ 0x226a420
.thumb
Function_226a424: @ 226a424 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	ldr     r5, [pc, #0x3c] @ 0x226a468, (=0x226e640)
	str     r0, [sp, #0x8]
	mov     r7, r1
	mov     r4, #0x0
.thumb
branch_226a430: @ 226a430 :thumb
	ldrb    r3, [r5, #0x0]
	ldr     r0, [sp, #0x8]
	mov     r1, r7
	lsl     r6, r3, #2
	ldr     r3, [pc, #0x30] @ 0x226a46c, (=0x226e5a4)
	mov     r2, r4
	add     r3, r3, r6
	bl      Function_2269828
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r4, #0x10
	blt     branch_226a430
	ldr     r0, [pc, #0x24] @ 0x226a470, (=0x954)
	mov     r2, #0x2
	str     r2, [sp, #0x0]
	ldr     r1, [pc, #0x20] @ 0x226a474, (=0x226e314)
	add     r0, r7, r0
	mov     r3, #0x21
	str     r7, [sp, #0x4]
	bl      Function_226bc40
	ldr     r0, [sp, #0x8]
	mov     r1, r7
	bl      Function_226bb34
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x226a468

.word 0x226e640 @ 0x226a468
.word 0x226e5a4 @ 0x226a46c
.word 0x954 @ 0x226a470
.word 0x226e314 @ 0x226a474
.thumb
Function_226a478: @ 226a478 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	ldr     r5, [pc, #0x3c] @ 0x226a4bc, (=0x226e650)
	str     r0, [sp, #0x8]
	mov     r7, r1
	mov     r4, #0x0
.thumb
branch_226a484: @ 226a484 :thumb
	ldrb    r3, [r5, #0x0]
	ldr     r0, [sp, #0x8]
	mov     r1, r7
	lsl     r6, r3, #2
	ldr     r3, [pc, #0x30] @ 0x226a4c0, (=0x226e5a4)
	mov     r2, r4
	add     r3, r3, r6
	bl      Function_2269828
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r4, #0x10
	blt     branch_226a484
	ldr     r0, [pc, #0x24] @ 0x226a4c4, (=0x954)
	mov     r2, #0x2
	str     r2, [sp, #0x0]
	ldr     r1, [pc, #0x20] @ 0x226a4c8, (=0x226e2f4)
	add     r0, r7, r0
	mov     r3, #0x21
	str     r7, [sp, #0x4]
	bl      Function_226bc40
	ldr     r0, [sp, #0x8]
	mov     r1, r7
	bl      Function_226bb34
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x226a4bc

.word 0x226e650 @ 0x226a4bc
.word 0x226e5a4 @ 0x226a4c0
.word 0x954 @ 0x226a4c4
.word 0x226e2f4 @ 0x226a4c8
.thumb
Function_226a4cc: @ 226a4cc :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	ldr     r5, [pc, #0x3c] @ 0x226a510, (=0x226e660)
	str     r0, [sp, #0x8]
	mov     r7, r1
	mov     r4, #0x0
.thumb
branch_226a4d8: @ 226a4d8 :thumb
	ldrb    r3, [r5, #0x0]
	ldr     r0, [sp, #0x8]
	mov     r1, r7
	lsl     r6, r3, #2
	ldr     r3, [pc, #0x30] @ 0x226a514, (=0x226e5a4)
	mov     r2, r4
	add     r3, r3, r6
	bl      Function_2269828
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r4, #0x10
	blt     branch_226a4d8
	ldr     r0, [pc, #0x24] @ 0x226a518, (=0x954)
	mov     r2, #0x2
	str     r2, [sp, #0x0]
	ldr     r1, [pc, #0x20] @ 0x226a51c, (=0x226e30c)
	add     r0, r7, r0
	mov     r3, #0x21
	str     r7, [sp, #0x4]
	bl      Function_226bc40
	ldr     r0, [sp, #0x8]
	mov     r1, r7
	bl      Function_226bb34
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x226a510

.word 0x226e660 @ 0x226a510
.word 0x226e5a4 @ 0x226a514
.word 0x954 @ 0x226a518
.word 0x226e30c @ 0x226a51c
.thumb
Function_226a520: @ 226a520 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	str     r0, [sp, #0x4]
	mov     r5, r1
	mov     r0, #0x2
	ldsh    r0, [r5, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r0, #0x36
	bgt     branch_226a534
	strh    r0, [r5, #0x2]
.thumb
branch_226a534: @ 226a534 :thumb
	mov     r0, #0x2
	ldsh    r1, [r5, r0]
	mov     r0, #0x6
	mul     r0, r1
	mov     r1, #0x36
	blx     _s32_div_f
	mov     r6, r0
	ldr     r0, [pc, #0xa0] @ 0x226a5e8, (=0x955)
	ldsb    r4, [r5, r0]
	cmp     r4, r6
	bcs     branch_226a572
	mov     r7, r5
	add     r7, #0xc
.thumb
branch_226a550: @ 226a550 :thumb
	mov     r0, r4
	mov     r1, #0x3
	blx     _s32_div_f
	ldr     r0, [pc, #0x90] @ 0x226a5ec, (=0x954)
	ldsb    r0, [r5, r0]
	cmp     r1, r0
	bcs     branch_226a56c
	mov     r0, #0x78
	mul     r0, r1
	add     r0, r7, r0
	mov     r1, #0x1
	bl      Function_2017348
.thumb
branch_226a56c: @ 226a56c :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r6
	bcc     branch_226a550
.thumb
branch_226a572: @ 226a572 :thumb
	ldr     r1, [pc, #0x74] @ 0x226a5e8, (=0x955)
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	strb    r6, [r5, r1]
	.hword  0x1e48 @ sub r0, r1, #0x1
	ldsb    r0, [r5, r0]
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_226a5cc
	mov     r7, r5
	add     r7, #0xc
	mov     r6, r7
.thumb
branch_226a58a: @ 226a58a :thumb
	mov     r0, r7
	bl      Function_201734c
	cmp     r0, #0x1
	bne     branch_226a5be
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	mov     r2, r4
	mov     r3, #0x0
	bl      Function_22699d0
	str     r0, [sp, #0x8]
	cmp     r0, #0x0
	beq     branch_226a5be
	mov     r0, r6
	mov     r1, #0x0
	bl      Function_2017348
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	mov     r2, r4
	mov     r3, #0x0
	bl      Function_2269a90
.thumb
branch_226a5be: @ 226a5be :thumb
	ldr     r0, [pc, #0x2c] @ 0x226a5ec, (=0x954)
	.hword  0x1c64 @ add r4, r4, #0x1
	ldsb    r0, [r5, r0]
	add     r7, #0x78
	add     r6, #0x78
	cmp     r4, r0
	blt     branch_226a58a
.thumb
branch_226a5cc: @ 226a5cc :thumb
	ldr     r0, [pc, #0x18] @ 0x226a5e8, (=0x955)
	ldsb    r0, [r5, r0]
	cmp     r0, #0x6
	blt     branch_226a5e0
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x1
	bne     branch_226a5e0
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x226a5e0

.thumb
branch_226a5e0: @ 226a5e0 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x226a5e6


.align 2


.word 0x955 @ 0x226a5e8
.word 0x954 @ 0x226a5ec
.thumb
Function_226a5f0: @ 226a5f0 :thumb
	ldr     r3, [pc, #0x4] @ 0x226a5f8, (=0x226b999)
	mov     r2, #0x0
	bx      r3
@ 0x226a5f6


.align 2


.word 0x226b999 @ 0x226a5f8
.thumb
Function_226a5fc: @ 226a5fc :thumb
	ldr     r3, [pc, #0x4] @ 0x226a604, (=0x226b999)
	mov     r2, #0x1
	bx      r3
@ 0x226a602


.align 2


.word 0x226b999 @ 0x226a604
.thumb
Function_226a608: @ 226a608 :thumb
	ldr     r3, [pc, #0x4] @ 0x226a610, (=0x226b999)
	mov     r2, #0x2
	bx      r3
@ 0x226a60e


.align 2


.word 0x226b999 @ 0x226a610
.thumb
Function_226a614: @ 226a614 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r5, r1
	mov     r0, #0x2
	ldsh    r1, [r5, r0]
	lsl     r0, r1, #1
	add     r1, r1, r0
	asr     r0, r1, #4
	lsr     r0, r0, #27
	add     r0, r1, r0
	asr     r4, r0, #5
	ldr     r0, [pc, #0x94] @ 0x226a6c0, (=0x954)
	ldsh    r1, [r5, r0]
	cmp     r4, r1
	beq     branch_226a662
	strh    r4, [r5, r0]
	.hword  0x1c80 @ add r0, r0, #0x2
	ldsh    r0, [r5, r0]
	cmp     r0, r4
	bls     branch_226a662
	cmp     r4, #0x0
	beq     branch_226a652
	mov     r2, r5
	.hword  0x1e61 @ sub r1, r4, #0x1
	mov     r0, #0x78
	mul     r0, r1
	add     r2, #0xc
	add     r0, r2, r0
	mov     r1, #0x0
	bl      Function_2017348
.thumb
branch_226a652: @ 226a652 :thumb
	mov     r1, r5
	mov     r0, #0x78
	add     r1, #0xc
	mul     r0, r4
	add     r0, r1, r0
	mov     r1, #0x1
	bl      Function_2017348
.thumb
branch_226a662: @ 226a662 :thumb
	mov     r0, #0x2
	ldsh    r0, [r5, r0]
	cmp     r0, #0x20
	bge     branch_226a66e
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x2]
.thumb
branch_226a66e: @ 226a66e :thumb
	ldr     r0, [pc, #0x54] @ 0x226a6c4, (=0x956)
	mov     r4, #0x0
	ldsh    r0, [r5, r0]
	str     r4, [sp, #0x0]
	cmp     r0, #0x0
	ble     branch_226a6ba
	mov     r6, r5
	add     r6, #0xc
.thumb
branch_226a67e: @ 226a67e :thumb
	mov     r0, r6
	bl      Function_201734c
	cmp     r0, #0x0
	beq     branch_226a6ae
	ldr     r0, [pc, #0x38] @ 0x226a6c4, (=0x956)
	ldsh    r0, [r5, r0]
	.hword  0x1e40 @ sub r0, r0, #0x1
	cmp     r4, r0
	bne     branch_226a6a2
	mov     r0, r7
	mov     r1, r5
	mov     r2, r4
	mov     r3, #0x0
	bl      Function_22699d0
	str     r0, [sp, #0x0]
	b       branch_226a6ae
@ 0x226a6a2

.thumb
branch_226a6a2: @ 226a6a2 :thumb
	mov     r0, r7
	mov     r1, r5
	mov     r2, r4
	mov     r3, #0x0
	bl      Function_22699bc
.thumb
branch_226a6ae: @ 226a6ae :thumb
	ldr     r0, [pc, #0x14] @ 0x226a6c4, (=0x956)
	.hword  0x1c64 @ add r4, r4, #0x1
	ldsh    r0, [r5, r0]
	add     r6, #0x78
	cmp     r4, r0
	blt     branch_226a67e
.thumb
branch_226a6ba: @ 226a6ba :thumb
	ldr     r0, [sp, #0x0]
	pop     {r3-r7,pc}
@ 0x226a6be


.align 2


.word 0x954 @ 0x226a6c0
.word 0x956 @ 0x226a6c4
.thumb
Function_226a6c8: @ 226a6c8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x140] @ 0x226a810, (=0x87c)
	mov     r5, r1
	ldr     r0, [r5, r0]
	ldrb    r0, [r0, #0x2]
	cmp     r0, #0x11
	bne     branch_226a6de
	bl      ErrorHandling
.thumb
branch_226a6de: @ 226a6de :thumb
	ldr     r0, [pc, #0x134] @ 0x226a814, (=0x954)
	ldr     r1, [r5, r0]
	cmp     r1, #0x0
	ble     branch_226a6f6
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r5, r0]
	mov     r0, r5
	add     r0, #0xc
	mov     r1, #0x0
	bl      Function_2017348
	b       branch_226a752
@ 0x226a6f6

.thumb
branch_226a6f6: @ 226a6f6 :thumb
	mov     r0, #0x2
	ldsh    r1, [r5, r0]
	cmp     r1, #0x3
	bge     branch_226a752
	mov     r0, r5
	.hword  0x1c49 @ add r1, r1, #0x1
	bl      Function_2269810
	cmp     r0, #0x1
	bne     branch_226a752
	mov     r0, r5
	add     r0, #0xc
	mov     r1, #0x1
	bl      Function_2017348
	mov     r2, #0x0
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	mov     r3, r2
	bl      Function_22699d0
	cmp     r0, #0x1
	bne     branch_226a752
	mov     r1, #0x2
	ldsh    r0, [r5, r1]
	mov     r2, #0x3
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x2]
	ldr     r0, [pc, #0xe4] @ 0x226a814, (=0x954)
	str     r2, [r5, r0]
	ldsh    r0, [r5, r1]
	cmp     r0, #0x3
	bge     branch_226a748
	mov     r2, #0x0
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	mov     r3, r2
	str     r2, [sp, #0x0]
	bl      Function_2269a90
	b       branch_226a752
@ 0x226a748

.thumb
branch_226a748: @ 226a748 :thumb
	mov     r0, r5
	add     r0, #0xc
	mov     r1, #0x0
	bl      Function_2017348
.thumb
branch_226a752: @ 226a752 :thumb
	mov     r7, r5
	mov     r4, #0x1
	add     r7, #0xc
	str     r4, [sp, #0x8]
	add     r7, #0x78
	add     r6, r5, #0x4
.thumb
branch_226a75e: @ 226a75e :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_2269810
	cmp     r0, #0x1
	bne     branch_226a7fe
	mov     r0, #0x2
	ldsh    r1, [r5, r0]
	.hword  0x1e60 @ sub r0, r4, #0x1
	cmp     r1, r0
	ble     branch_226a7fa
	mov     r0, r7
	mov     r1, #0x1
	bl      Function_2017348
	mov     r0, #0xa
	lsl     r0, r0, #10
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	mov     r2, r4
	mov     r3, #0x0
	bl      Function_2269a3c
	cmp     r0, #0x0
	bne     branch_226a798
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	b       branch_226a7fe
@ 0x226a798

.thumb
branch_226a798: @ 226a798 :thumb
	.hword  0x1e60 @ sub r0, r4, #0x1
	lsl     r0, r0, #2
	add     r1, r5, r0
	ldr     r0, [pc, #0x78] @ 0x226a818, (=0x958)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_226a7c6
	mov     r0, r7
	mov     r1, #0x0
	bl      Function_2017348
	ldr     r0, [pc, #0x60] @ 0x226a810, (=0x87c)
	ldr     r0, [r6, r0]
	ldrb    r0, [r0, #0x0]
	lsl     r1, r0, #4
	ldr     r0, [sp, #0x4]
	add     r1, r0, r1
	ldr     r0, [pc, #0x60] @ 0x226a81c, (=0x10558)
	ldr     r0, [r1, r0]
	mov     r1, #0x1f
	blx     Function_20b3764
	b       branch_226a7fe
@ 0x226a7c6

.thumb
branch_226a7c6: @ 226a7c6 :thumb
	ldr     r0, [pc, #0x50] @ 0x226a818, (=0x958)
	ldr     r0, [r1, r0]
	.hword  0x1e42 @ sub r2, r0, #0x1
	ldr     r0, [pc, #0x48] @ 0x226a818, (=0x958)
	str     r2, [r1, r0]
	sub     r0, #0xdc
	ldr     r0, [r6, r0]
	ldrb    r0, [r0, #0x0]
	lsl     r2, r0, #4
	ldr     r0, [sp, #0x4]
	add     r2, r0, r2
	ldr     r0, [pc, #0x3c] @ 0x226a81c, (=0x10558)
	ldr     r0, [r2, r0]
	ldr     r2, [pc, #0x34] @ 0x226a818, (=0x958)
	ldr     r1, [r1, r2]
	mov     r2, #0x14
	mul     r2, r1
	asr     r1, r2, #2
	lsr     r1, r1, #29
	add     r1, r2, r1
	asr     r1, r1, #3
	blx     Function_20b3764
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	b       branch_226a7fe
@ 0x226a7fa

.thumb
branch_226a7fa: @ 226a7fa :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x8]
.thumb
branch_226a7fe: @ 226a7fe :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r7, #0x78
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r4, #0x3
	ble     branch_226a75e
	ldr     r0, [sp, #0x8]
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x226a80e


.align 2


.word 0x87c @ 0x226a810
.word 0x954 @ 0x226a814
.word 0x958 @ 0x226a818
.word 0x10558 @ 0x226a81c
.thumb
Function_226a820: @ 226a820 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldrb    r2, [r4, #0x1]
	mov     r5, r0
	cmp     r2, #0x0
	beq     branch_226a832
	cmp     r2, #0x1
	beq     branch_226a848
	b       branch_226a854
@ 0x226a832

.thumb
branch_226a832: @ 226a832 :thumb
	bl      Function_226ac08
	cmp     r0, #0x0
	beq     branch_226a854
	mov     r0, #0x1
	strb    r0, [r4, #0x1]
	mov     r0, r5
	mov     r1, r4
	bl      Function_226ada0
	b       branch_226a854
@ 0x226a848

.thumb
branch_226a848: @ 226a848 :thumb
	bl      Function_226af60
	cmp     r0, #0x0
	beq     branch_226a854
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x226a854

.thumb
branch_226a854: @ 226a854 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x226a858

.thumb
Function_226a858: @ 226a858 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r1
	ldr     r1, [pc, #0xc4] @ 0x226a924, (=0x955)
	str     r0, [sp, #0x0]
	add     r0, r1, #0x1
	ldsb    r2, [r5, r1]
	ldrb    r0, [r5, r0]
	cmp     r2, r0
	bge     branch_226a8c4
	.hword  0x1e48 @ sub r0, r1, #0x1
	ldsb    r0, [r5, r0]
	add     r2, r0, #0x1
	.hword  0x1e48 @ sub r0, r1, #0x1
	strb    r2, [r5, r0]
	ldsb    r0, [r5, r0]
	cmp     r0, #0x8
	blt     branch_226a888
	mov     r2, #0x0
	.hword  0x1e48 @ sub r0, r1, #0x1
	strb    r2, [r5, r0]
	ldsb    r0, [r5, r1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, r1]
.thumb
branch_226a888: @ 226a888 :thumb
	ldr     r0, [pc, #0x9c] @ 0x226a928, (=0x954)
	ldsb    r1, [r5, r0]
	lsl     r2, r1, #2
	asr     r1, r2, #2
	lsr     r1, r1, #29
	add     r1, r2, r1
	asr     r2, r1, #3
	add     r1, r0, #0x1
	ldsb    r1, [r5, r1]
	.hword  0x1cc0 @ add r0, r0, #0x3
	ldrb    r6, [r5, r0]
	lsl     r1, r1, #2
	add     r7, r2, r1
	cmp     r6, r7
	bcs     branch_226a8c0
	mov     r1, r5
	mov     r0, #0x78
	add     r1, #0xc
	mul     r0, r6
	add     r4, r1, r0
.thumb
branch_226a8b0: @ 226a8b0 :thumb
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2017348
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x78
	cmp     r6, r7
	bcc     branch_226a8b0
.thumb
branch_226a8c0: @ 226a8c0 :thumb
	ldr     r0, [pc, #0x68] @ 0x226a92c, (=0x957)
	strb    r7, [r5, r0]
.thumb
branch_226a8c4: @ 226a8c4 :thumb
	ldr     r0, [pc, #0x64] @ 0x226a92c, (=0x957)
	mov     r4, #0x0
	ldrb    r0, [r5, r0]
	cmp     r0, #0x0
	ble     branch_226a904
	mov     r7, r5
	add     r7, #0xc
	mov     r6, r7
.thumb
branch_226a8d4: @ 226a8d4 :thumb
	mov     r0, r7
	bl      Function_201734c
	cmp     r0, #0x1
	bne     branch_226a8f6
	ldr     r0, [sp, #0x0]
	mov     r1, r5
	mov     r2, r4
	bl      Function_226b8c4
	str     r0, [sp, #0x4]
	cmp     r0, #0x1
	bne     branch_226a8f6
	mov     r0, r6
	mov     r1, #0x0
	bl      Function_2017348
.thumb
branch_226a8f6: @ 226a8f6 :thumb
	ldr     r0, [pc, #0x34] @ 0x226a92c, (=0x957)
	.hword  0x1c64 @ add r4, r4, #0x1
	ldrb    r0, [r5, r0]
	add     r7, #0x78
	add     r6, #0x78
	cmp     r4, r0
	blt     branch_226a8d4
.thumb
branch_226a904: @ 226a904 :thumb
	ldr     r0, [pc, #0x1c] @ 0x226a924, (=0x955)
	ldsb    r1, [r5, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	ldrb    r0, [r5, r0]
	cmp     r1, r0
	bne     branch_226a91c
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x1
	bne     branch_226a91c
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x226a91c

.thumb
branch_226a91c: @ 226a91c :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x226a922


.align 2


.word 0x955 @ 0x226a924
.word 0x954 @ 0x226a928
.word 0x957 @ 0x226a92c
.thumb
Function_226a930: @ 226a930 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r1, #0x2
	ldr     r0, [pc, #0x1c] @ 0x226a954, (=0x954)
	ldsh    r1, [r4, r1]
	add     r0, r4, r0
	bl      Function_226bcc0
	mov     r1, #0x2
	ldsh    r1, [r4, r1]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, #0x2]
	cmp     r0, #0x2
	bne     branch_226a950
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x226a950

.thumb
branch_226a950: @ 226a950 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x226a954

.word 0x954 @ 0x226a954
.thumb
Function_226a958: @ 226a958 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r1, #0x2
	mov     r6, r0
	ldr     r0, [pc, #0x30] @ 0x226a994, (=0x954)
	ldsh    r1, [r5, r1]
	add     r0, r5, r0
	bl      Function_226bcc0
	mov     r4, r0
	mov     r0, #0x2
	ldsh    r0, [r5, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x2]
	cmp     r4, #0x1
	bne     branch_226a980
	mov     r0, r6
	mov     r1, r5
	bl      Function_226bba8
.thumb
branch_226a980: @ 226a980 :thumb
	mov     r0, r6
	mov     r1, r5
	bl      Function_226bbdc
	cmp     r4, #0x2
	bne     branch_226a990
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x226a990

.thumb
branch_226a990: @ 226a990 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x226a994

.word 0x954 @ 0x226a994
.thumb
Function_226a998: @ 226a998 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r6, r0
	ldr     r0, [r5, #0x8]
	bl      Function_225ce70
	cmp     r0, #0x1
	bne     branch_226a9ac
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x226a9ac

.thumb
branch_226a9ac: @ 226a9ac :thumb
	mov     r4, #0x0
.thumb
branch_226a9ae: @ 226a9ae :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_2269810
	cmp     r0, #0x1
	bne     branch_226a9c4
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	bl      Function_2269878
.thumb
branch_226a9c4: @ 226a9c4 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x12
	blt     branch_226a9ae
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x226a9ce


.align 2, 0


.thumb
Function_226a9d0: @ 226a9d0 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	mov     r4, r1
	mov     r6, r2
	bl      Function_225ccac
	ldr     r1, [r4, #0x8]
	cmp     r1, r0
	bne     branch_226a9ec
	ldr     r0, [r5, #0x8]
	bl      Function_2260b3c
.thumb
branch_226a9ec: @ 226a9ec :thumb
	ldr     r0, [r4, #0x8]
	bl      Function_225cd34
	add     r2, sp, #0x0
	strh    r0, [r2, #0x0]
	lsr     r0, r0, #16
	strh    r0, [r2, #0x2]
	ldrh    r0, [r2, #0x0]
	mov     r1, #0x4
	strh    r0, [r2, #0x4]
	ldrh    r0, [r2, #0x2]
	strh    r0, [r2, #0x6]
	ldsh    r1, [r2, r1]
	ldr     r0, [r5, #0xc]
	asr     r3, r1, #3
	lsr     r3, r3, #28
	add     r3, r1, r3
	lsl     r1, r3, #12
	mov     r3, #0x6
	ldsh    r2, [r2, r3]
	lsr     r1, r1, #16
	asr     r3, r2, #3
	lsr     r3, r3, #28
	add     r3, r2, r3
	lsl     r2, r3, #12
	lsr     r2, r2, #16
	bl      Function_225c8c4
	cmp     r0, #0x2a
	bne     branch_226aa2c
	mov     r1, #0x1
	b       branch_226aa2e
@ 0x226aa2c

.thumb
branch_226aa2c: @ 226aa2c :thumb
	mov     r1, #0x0
.thumb
branch_226aa2e: @ 226aa2e :thumb
	ldr     r0, [pc, #0xd0] @ 0x226ab00, (=0x965)
	cmp     r6, #0x1
	strb    r1, [r4, r0]
	beq     branch_226aa3e
	cmp     r6, #0x2
	beq     branch_226aa58
	cmp     r6, #0x3
	b       branch_226aa8a
@ 0x226aa3e

.thumb
branch_226aa3e: @ 226aa3e :thumb
	ldr     r3, [pc, #0xc4] @ 0x226ab04, (=0x226e5e4)
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_2269828
	mov     r2, #0x0
	mov     r0, r5
	mov     r1, r4
	mov     r3, r2
	bl      Function_226b714
	b       branch_226aad2
@ 0x226aa58

.thumb
branch_226aa58: @ 226aa58 :thumb
	ldr     r3, [pc, #0xa8] @ 0x226ab04, (=0x226e5e4)
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_2269828
	ldr     r3, [pc, #0xa0] @ 0x226ab08, (=0x226e5e8)
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x1
	bl      Function_2269828
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x0
	mov     r3, #0x2
	bl      Function_226b714
	mov     r2, #0x1
	mov     r0, r5
	mov     r1, r4
	mov     r3, r2
	bl      Function_226b714
	b       branch_226aad2
@ 0x226aa8a

.thumb
branch_226aa8a: @ 226aa8a :thumb
	ldr     r3, [pc, #0x78] @ 0x226ab04, (=0x226e5e4)
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_2269828
	ldr     r3, [pc, #0x70] @ 0x226ab08, (=0x226e5e8)
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x1
	bl      Function_2269828
	ldr     r3, [pc, #0x68] @ 0x226ab0c, (=0x226e5ec)
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x2
	bl      Function_2269828
	mov     r2, #0x0
	mov     r0, r5
	mov     r1, r4
	mov     r3, r2
	bl      Function_226b714
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x1
	mov     r3, #0x2
	bl      Function_226b714
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x2
	mov     r3, #0x1
	bl      Function_226b714
.thumb
branch_226aad2: @ 226aad2 :thumb
	ldr     r0, [pc, #0x3c] @ 0x226ab10, (=0x955)
	mov     r1, #0x0
	strb    r6, [r4, r0]
	ldr     r0, [r4, #0x8]
	bl      Function_225d030
	ldr     r0, [pc, #0x20] @ 0x226ab00, (=0x965)
	ldrb    r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_226aaf2
	mov     r0, r5
	mov     r1, r4
	bl      Function_226ab14
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x226aaf2

.thumb
branch_226aaf2: @ 226aaf2 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_226abac
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x226aafe


.align 2


.word 0x965 @ 0x226ab00
.word 0x226e5e4 @ 0x226ab04
.word 0x226e5e8 @ 0x226ab08
.word 0x226e5ec @ 0x226ab0c
.word 0x955 @ 0x226ab10
.thumb
Function_226ab14: @ 226ab14 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r1
	ldr     r0, [r5, #0x8]
	add     r1, sp, #0x10
	bl      Function_225d054
	ldr     r0, [pc, #0x70] @ 0x226ab94, (=0x955)
	ldsb    r0, [r5, r0]
	.hword  0x1e41 @ sub r1, r0, #0x1
	ldr     r0, [pc, #0x6c] @ 0x226ab98, (=0x226e2e8)
	ldrb    r0, [r0, r1]
	cmp     r0, #0x0
	beq     branch_226ab42
	lsl     r0, r0, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_226ab50
@ 0x226ab42

.thumb
branch_226ab42: @ 226ab42 :thumb
	lsl     r0, r0, #12
	blx     _fflt
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
.thumb
branch_226ab50: @ 226ab50 :thumb
	ldr     r6, [sp, #0x14]
	ldr     r4, [sp, #0x18]
	ldr     r7, [sp, #0x10]
	blx     _ffix
	add     r0, r6, r0
	str     r0, [sp, #0x0]
	str     r4, [sp, #0x4]
	str     r4, [sp, #0x8]
	mov     r0, #0x6c
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x34] @ 0x226ab9c, (=0xa04)
	mov     r1, r7
	add     r0, r5, r0
	mov     r2, r7
	mov     r3, r6
	bl      Function_22692b4
	ldr     r0, [pc, #0x28] @ 0x226aba0, (=0xa2c)
	mov     r3, #0x2
	ldr     r2, [pc, #0x28] @ 0x226aba4, (=0x71c)
	add     r0, r5, r0
	mov     r1, #0x0
	lsl     r3, r3, #14
	bl      Function_226949c
	mov     r0, r5
	bl      Function_226b324
	ldr     r0, [pc, #0x1c] @ 0x226aba8, (=0x956)
	mov     r1, #0x0
	strh    r1, [r5, r0]
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x226ab94

.word 0x955 @ 0x226ab94
.word 0x226e2e8 @ 0x226ab98
.word 0xa04 @ 0x226ab9c
.word 0xa2c @ 0x226aba0
.word 0x71c @ 0x226aba4
.word 0x956 @ 0x226aba8
.thumb
Function_226abac: @ 226abac :thumb
	push    {r3,r4,lr}
	add     sp, #-0x1c
	mov     r4, r1
	ldr     r0, [r4, #0x8]
	add     r1, sp, #0x10
	bl      Function_225d054
	mov     r0, #0x2
	ldr     r3, [sp, #0x14]
	lsl     r0, r0, #12
	ldr     r2, [sp, #0x18]
	ldr     r1, [sp, #0x10]
	add     r0, r3, r0
	str     r0, [sp, #0x0]
	str     r2, [sp, #0x4]
	str     r2, [sp, #0x8]
	mov     r0, #0x2
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x24] @ 0x226abf8, (=0xa04)
	mov     r2, r1
	add     r0, r4, r0
	bl      Function_22692b4
	ldr     r0, [pc, #0x20] @ 0x226abfc, (=0xa2c)
	mov     r1, #0x0
	ldr     r2, [pc, #0x20] @ 0x226ac00, (=0x71c)
	add     r0, r4, r0
	mov     r3, r1
	bl      Function_226949c
	mov     r0, r4
	bl      Function_226b51c
	ldr     r0, [pc, #0x14] @ 0x226ac04, (=0x956)
	mov     r1, #0x0
	strh    r1, [r4, r0]
	add     sp, #0x1c
	pop     {r3,r4,pc}
@ 0x226abf8

.word 0xa04 @ 0x226abf8
.word 0xa2c @ 0x226abfc
.word 0x71c @ 0x226ac00
.word 0x956 @ 0x226ac04
.thumb
Function_226ac08: @ 226ac08 :thumb
	push    {r3,lr}
	ldr     r2, [pc, #0x14] @ 0x226ac20, (=0x965)
	ldrb    r2, [r1, r2]
	cmp     r2, #0x0
	bne     branch_226ac18
	bl      Function_226ac24
	pop     {r3,pc}
@ 0x226ac18

.thumb
branch_226ac18: @ 226ac18 :thumb
	bl      Function_226ad20
	pop     {r3,pc}
@ 0x226ac1e


.align 2


.word 0x965 @ 0x226ac20
.thumb
Function_226ac24: @ 226ac24 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r1
	ldr     r1, [pc, #0xe0] @ 0x226ad0c, (=0xa04)
	mov     r6, r0
	add     r0, r5, r1
	sub     r1, #0xae
	ldsh    r1, [r5, r1]
	bl      Function_22692dc
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xd4] @ 0x226ad10, (=0xa2c)
	add     r0, r5, r0
	bl      Function_22694d0
	ldr     r0, [pc, #0xd0] @ 0x226ad14, (=0x956)
	ldsh    r1, [r5, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r5, r0]
	ldr     r0, [r5, #0x8]
	add     r1, sp, #0xc
	bl      Function_225d054
	ldr     r0, [pc, #0xb8] @ 0x226ad0c, (=0xa04)
	add     r1, sp, #0xc
	add     r0, r5, r0
	add     r2, sp, #0x10
	add     r3, sp, #0x14
	bl      Function_2269488
	ldr     r0, [pc, #0xac] @ 0x226ad10, (=0xa2c)
	add     r1, sp, #0x8
	add     r0, r5, r0
	bl      Function_2269508
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x0
	bne     branch_226ac78
	ldr     r1, [sp, #0xc]
	ldr     r0, [sp, #0x8]
	add     r0, r1, r0
	str     r0, [sp, #0xc]
.thumb
branch_226ac78: @ 226ac78 :thumb
	ldr     r0, [r5, #0x8]
	add     r1, sp, #0xc
	bl      Function_225d048
	mov     r0, r5
	bl      Function_226b324
	ldr     r0, [pc, #0x90] @ 0x226ad18, (=0x955)
	mov     r4, #0x0
	ldsb    r0, [r5, r0]
	cmp     r0, #0x0
	ble     branch_226aca4
	ldr     r7, [pc, #0x84] @ 0x226ad18, (=0x955)
.thumb
branch_226ac92: @ 226ac92 :thumb
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	bl      Function_226b744
	ldsb    r0, [r5, r7]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r0
	blt     branch_226ac92
.thumb
branch_226aca4: @ 226aca4 :thumb
	ldr     r0, [r6, #0x4]
	ldr     r7, [r5, #0x8]
	bl      Function_225ccac
	cmp     r7, r0
	bne     branch_226ad06
	ldr     r0, [pc, #0x68] @ 0x226ad1c, (=0x21bf67c)
	mov     r1, #0x40
	ldr     r0, [r0, #0x48]
	mov     r4, #0x4
	tst     r1, r0
	beq     branch_226acbe
	mov     r4, #0x0
.thumb
branch_226acbe: @ 226acbe :thumb
	mov     r1, #0x80
	tst     r1, r0
	beq     branch_226acc6
	mov     r4, #0x1
.thumb
branch_226acc6: @ 226acc6 :thumb
	mov     r1, #0x10
	tst     r1, r0
	beq     branch_226acce
	mov     r4, #0x3
.thumb
branch_226acce: @ 226acce :thumb
	mov     r1, #0x20
	tst     r0, r1
	beq     branch_226acd6
	mov     r4, #0x2
.thumb
branch_226acd6: @ 226acd6 :thumb
	cmp     r4, #0x4
	beq     branch_226ad06
	mov     r0, r7
	mov     r1, r4
	bl      Function_225d060
	ldr     r0, [r5, #0x8]
	bl      Function_225cd34
	add     r1, sp, #0x4
	strh    r0, [r1, #0x0]
	lsr     r0, r0, #16
	strh    r0, [r1, #0x2]
	mov     r3, sp
	ldrh    r2, [r1, #0x0]
	ldr     r0, [r5, #0x8]
	.hword  0x1f1b @ sub r3, r3, #0x4
	strh    r2, [r3, #0x0]
	ldrh    r1, [r1, #0x2]
	mov     r2, r4
	strh    r1, [r3, #0x2]
	ldr     r1, [r3, #0x0]
	bl      Function_225cd04
.thumb
branch_226ad06: @ 226ad06 :thumb
	ldr     r0, [sp, #0x0]
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x226ad0c

.word 0xa04 @ 0x226ad0c
.word 0xa2c @ 0x226ad10
.word 0x956 @ 0x226ad14
.word 0x955 @ 0x226ad18
.word 0x21bf67c @ 0x226ad1c
.thumb
Function_226ad20: @ 226ad20 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r1
	ldr     r1, [pc, #0x68] @ 0x226ad90, (=0xa04)
	mov     r6, r0
	add     r0, r5, r1
	sub     r1, #0xae
	ldsh    r1, [r5, r1]
	bl      Function_22692dc
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x5c] @ 0x226ad94, (=0xa2c)
	add     r0, r5, r0
	bl      Function_22694d0
	ldr     r0, [pc, #0x58] @ 0x226ad98, (=0x956)
	ldsh    r1, [r5, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r5, r0]
	ldr     r0, [r5, #0x8]
	add     r1, sp, #0x4
	bl      Function_225d054
	ldr     r0, [pc, #0x40] @ 0x226ad90, (=0xa04)
	add     r1, sp, #0x4
	add     r0, r5, r0
	add     r2, sp, #0x8
	add     r3, sp, #0xc
	bl      Function_2269488
	ldr     r0, [r5, #0x8]
	add     r1, sp, #0x4
	bl      Function_225d048
	mov     r0, r5
	bl      Function_226b51c
	ldr     r0, [pc, #0x30] @ 0x226ad9c, (=0x955)
	mov     r4, #0x0
	ldsb    r0, [r5, r0]
	cmp     r0, #0x0
	ble     branch_226ad88
	ldr     r7, [pc, #0x24] @ 0x226ad9c, (=0x955)
.thumb
branch_226ad76: @ 226ad76 :thumb
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	bl      Function_226b744
	ldsb    r0, [r5, r7]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r0
	blt     branch_226ad76
.thumb
branch_226ad88: @ 226ad88 :thumb
	ldr     r0, [sp, #0x0]
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x226ad8e


.align 2


.word 0xa04 @ 0x226ad90
.word 0xa2c @ 0x226ad94
.word 0x956 @ 0x226ad98
.word 0x955 @ 0x226ad9c
.thumb
Function_226ada0: @ 226ada0 :thumb
	push    {r3,lr}
	ldr     r2, [pc, #0x14] @ 0x226adb8, (=0x965)
	ldrb    r2, [r1, r2]
	cmp     r2, #0x0
	bne     branch_226adb0
	bl      Function_226adbc
	pop     {r3,pc}
@ 0x226adb0

.thumb
branch_226adb0: @ 226adb0 :thumb
	bl      Function_226af1c
	pop     {r3,pc}
@ 0x226adb6


.align 2


.word 0x965 @ 0x226adb8
.thumb
Function_226adbc: @ 226adbc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	mov     r5, r1
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x8]
	add     r1, sp, #0x24
	bl      Function_225d054
	ldr     r0, [pc, #0x134] @ 0x226af04, (=0x955)
	ldsb    r0, [r5, r0]
	.hword  0x1e41 @ sub r1, r0, #0x1
	ldr     r0, [pc, #0x134] @ 0x226af08, (=0x226e2e8)
	ldrb    r0, [r0, r1]
	cmp     r0, #0x0
	beq     branch_226adec
	lsl     r0, r0, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_226adfa
@ 0x226adec

.thumb
branch_226adec: @ 226adec :thumb
	lsl     r0, r0, #12
	blx     _fflt
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
.thumb
branch_226adfa: @ 226adfa :thumb
	ldr     r6, [sp, #0x28]
	ldr     r4, [sp, #0x2c]
	ldr     r7, [sp, #0x24]
	blx     _ffix
	sub     r0, r6, r0
	str     r0, [sp, #0x0]
	str     r4, [sp, #0x4]
	str     r4, [sp, #0x8]
	mov     r0, #0xa
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0xf8] @ 0x226af0c, (=0xa04)
	mov     r1, r7
	add     r0, r5, r0
	mov     r2, r7
	mov     r3, r6
	bl      Function_22692b4
	ldr     r1, [pc, #0xf0] @ 0x226af10, (=0x956)
	mov     r4, #0x0
	strh    r4, [r5, r1]
	.hword  0x1e88 @ sub r0, r1, #0x2
	strb    r4, [r5, r0]
	.hword  0x1e48 @ sub r0, r1, #0x1
	ldsb    r0, [r5, r0]
	cmp     r0, #0x0
	ble     branch_226aefa
	mov     r0, r5
	str     r0, [sp, #0x14]
	add     r0, #0xc
	str     r0, [sp, #0x14]
	mov     r0, r1
	add     r0, #0x36
	add     r1, #0x12
	add     r7, r5, r0
	add     r6, r5, r1
.thumb
branch_226ae42: @ 226ae42 :thumb
	ldr     r0, [sp, #0x14]
	add     r1, sp, #0x24
	add     r2, sp, #0x28
	add     r3, sp, #0x2c
	bl      Function_2017358
	mov     r0, #0x96
	add     r1, r5, r4
	lsl     r0, r0, #4
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_226ae64
	cmp     r0, #0x1
	beq     branch_226ae7e
	cmp     r0, #0x2
	beq     branch_226ae98
	b       branch_226aeb0
@ 0x226ae64

.thumb
branch_226ae64: @ 226ae64 :thumb
	ldr     r0, [sp, #0x24]
	ldr     r1, [sp, #0x28]
	str     r0, [sp, #0x20]
	mov     r0, #0x1
	lsl     r0, r0, #18
	add     r0, r1, r0
	str     r0, [sp, #0x1c]
	mov     r0, #0x1
	ldr     r1, [sp, #0x2c]
	lsl     r0, r0, #18
	sub     r0, r1, r0
	str     r0, [sp, #0x18]
	b       branch_226aeb0
@ 0x226ae7e

.thumb
branch_226ae7e: @ 226ae7e :thumb
	mov     r0, #0x1
	ldr     r1, [sp, #0x24]
	lsl     r0, r0, #18
	add     r0, r1, r0
	str     r0, [sp, #0x20]
	mov     r0, #0x1
	ldr     r1, [sp, #0x28]
	lsl     r0, r0, #18
	add     r0, r1, r0
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x2c]
	str     r0, [sp, #0x18]
	b       branch_226aeb0
@ 0x226ae98

.thumb
branch_226ae98: @ 226ae98 :thumb
	mov     r0, #0x1
	ldr     r1, [sp, #0x24]
	lsl     r0, r0, #18
	sub     r0, r1, r0
	str     r0, [sp, #0x20]
	mov     r0, #0x1
	ldr     r1, [sp, #0x28]
	lsl     r0, r0, #18
	add     r0, r1, r0
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x2c]
	str     r0, [sp, #0x18]
.thumb
branch_226aeb0: @ 226aeb0 :thumb
	ldr     r0, [sp, #0x1c]
	ldr     r2, [sp, #0x20]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x2c]
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x18]
	str     r0, [sp, #0x8]
	mov     r0, #0x1a
	str     r0, [sp, #0xc]
	ldr     r1, [sp, #0x24]
	ldr     r3, [sp, #0x28]
	mov     r0, r7
	bl      Function_22692b4
	mov     r3, #0x6
	ldr     r2, [pc, #0x44] @ 0x226af14, (=0xaaa)
	mov     r0, r6
	mov     r1, #0x0
	lsl     r3, r3, #12
	bl      Function_226949c
	ldr     r0, [sp, #0x10]
	mov     r1, r5
	mov     r2, r4
	mov     r3, #0x3
	bl      Function_226b714
	ldr     r0, [sp, #0x14]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r0, #0x78
	str     r0, [sp, #0x14]
	ldr     r0, [pc, #0x14] @ 0x226af04, (=0x955)
	add     r7, #0x28
	ldsb    r0, [r5, r0]
	add     r6, #0xc
	cmp     r4, r0
	blt     branch_226ae42
.thumb
branch_226aefa: @ 226aefa :thumb
	ldr     r0, [pc, #0x1c] @ 0x226af18, (=0x964)
	mov     r1, #0x0
	strb    r1, [r5, r0]
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x226af04

.word 0x955 @ 0x226af04
.word 0x226e2e8 @ 0x226af08
.word 0xa04 @ 0x226af0c
.word 0x956 @ 0x226af10
.word 0xaaa @ 0x226af14
.word 0x964 @ 0x226af18
.thumb
Function_226af1c: @ 226af1c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x1c
	mov     r4, r1
	ldr     r0, [r4, #0x8]
	add     r1, sp, #0x10
	bl      Function_225d054
	mov     r0, #0x2
	ldr     r3, [sp, #0x14]
	lsl     r0, r0, #12
	ldr     r2, [sp, #0x18]
	ldr     r1, [sp, #0x10]
	sub     r0, r3, r0
	str     r0, [sp, #0x0]
	str     r2, [sp, #0x4]
	str     r2, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x14] @ 0x226af58, (=0xa04)
	mov     r2, r1
	add     r0, r4, r0
	bl      Function_22692b4
	ldr     r0, [pc, #0x10] @ 0x226af5c, (=0x956)
	mov     r1, #0x0
	strh    r1, [r4, r0]
	.hword  0x1e80 @ sub r0, r0, #0x2
	strb    r1, [r4, r0]
	add     sp, #0x1c
	pop     {r3,r4,pc}
@ 0x226af58

.word 0xa04 @ 0x226af58
.word 0x956 @ 0x226af5c
.thumb
Function_226af60: @ 226af60 :thumb
	push    {r3,lr}
	ldr     r2, [pc, #0x14] @ 0x226af78, (=0x965)
	ldrb    r2, [r1, r2]
	cmp     r2, #0x0
	bne     branch_226af70
	bl      Function_226af7c
	pop     {r3,pc}
@ 0x226af70

.thumb
branch_226af70: @ 226af70 :thumb
	bl      Function_226b1d0
	pop     {r3,pc}
@ 0x226af76


.align 2


.word 0x965 @ 0x226af78
.thumb
Function_226af7c: @ 226af7c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x3c
	mov     r4, r1
	ldr     r1, [pc, #0x224] @ 0x226b1a8, (=0x954)
	mov     r6, r0
	ldsb    r0, [r4, r1]
	cmp     r0, #0x4
	bhi     branch_226afb2
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x226af98

Jumppoints_226af98:
.hword branch_226afa2 - Jumppoints_226af98 - 2
.hword branch_226afba - Jumppoints_226af98 - 2
.hword branch_226afd0 - Jumppoints_226af98 - 2
.hword branch_226b006 - Jumppoints_226af98 - 2
.hword branch_226b05e - Jumppoints_226af98 - 2
.thumb
branch_226afa2: @ 226afa2 :thumb
	add     r0, r1, #0x2
	ldsh    r0, [r4, r0]
	add     r2, r0, #0x1
	add     r0, r1, #0x2
	strh    r2, [r4, r0]
	ldsh    r0, [r4, r0]
	cmp     r0, #0x8
	bge     branch_226afb4
.thumb
branch_226afb2: @ 226afb2 :thumb
	b       branch_226b0d8
@ 0x226afb4

.thumb
branch_226afb4: @ 226afb4 :thumb
	mov     r0, #0x1
	strb    r0, [r4, r1]
	b       branch_226b0d8
@ 0x226afba

.thumb
branch_226afba: @ 226afba :thumb
	ldr     r0, [r4, #0x8]
	mov     r1, #0x1
	bl      Function_225d09c
	ldr     r0, [pc, #0x1e8] @ 0x226b1ac, (=0x956)
	mov     r1, #0x10
	strh    r1, [r4, r0]
	mov     r1, #0x2
	.hword  0x1e80 @ sub r0, r0, #0x2
	strb    r1, [r4, r0]
	b       branch_226b0d8
@ 0x226afd0

.thumb
branch_226afd0: @ 226afd0 :thumb
	add     r0, r1, #0x2
	ldsh    r0, [r4, r0]
	.hword  0x1e42 @ sub r2, r0, #0x1
	add     r0, r1, #0x2
	strh    r2, [r4, r0]
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	bgt     branch_226b0d8
	ldr     r0, [r4, #0x8]
	mov     r1, #0x0
	bl      Function_225d09c
	ldr     r0, [pc, #0x1bc] @ 0x226b1a8, (=0x954)
	mov     r1, #0x3
	strb    r1, [r4, r0]
	mov     r1, #0x0
	.hword  0x1c80 @ add r0, r0, #0x2
	strh    r1, [r4, r0]
	ldr     r0, [r4, #0x8]
	mov     r1, #0x6
	bl      Function_225cd60
	mov     r1, r0
	ldr     r0, [r4, #0x8]
	bl      Function_225d060
	b       branch_226b0d8
@ 0x226b006

.thumb
branch_226b006: @ 226b006 :thumb
	mov     r0, r1
	.hword  0x1c89 @ add r1, r1, #0x2
	add     r0, #0xb0
	ldsh    r1, [r4, r1]
	add     r0, r4, r0
	bl      Function_22692dc
	mov     r5, r0
	ldr     r0, [pc, #0x194] @ 0x226b1ac, (=0x956)
	ldsh    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, r0]
	ldr     r0, [r4, #0x8]
	add     r1, sp, #0x30
	bl      Function_225d054
	ldr     r0, [pc, #0x188] @ 0x226b1b0, (=0xa04)
	add     r1, sp, #0x30
	add     r0, r4, r0
	add     r2, sp, #0x34
	add     r3, sp, #0x38
	bl      Function_2269488
	ldr     r0, [r4, #0x8]
	add     r1, sp, #0x30
	bl      Function_225d048
	cmp     r5, #0x1
	bne     branch_226b0d8
	ldr     r0, [pc, #0x164] @ 0x226b1a8, (=0x954)
	mov     r1, #0x4
	strb    r1, [r4, r0]
	add     r1, r0, #0x2
	mov     r2, #0x0
	strh    r2, [r4, r1]
	ldr     r1, [sp, #0x34]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r4, r0]
	ldr     r2, [pc, #0x160] @ 0x226b1b4, (=0x5ab)
	mov     r0, r6
	mov     r1, r4
	bl      Function_2269510
	b       branch_226b0d8
@ 0x226b05e

.thumb
branch_226b05e: @ 226b05e :thumb
	add     r0, r1, #0x2
	ldsh    r1, [r4, r0]
	ldr     r0, [pc, #0x154] @ 0x226b1b8, (=0x7fff)
	mul     r0, r1
	mov     r1, #0xa
	blx     _s32_div_f
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	asr     r0, r0, #4
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x144] @ 0x226b1bc, (=Unknown_20f983c)
	ldsh    r2, [r0, r1]
	asr     r0, r2, #31
	lsr     r1, r2, #17
	lsl     r0, r0, #15
	orr     r0, r1
	mov     r1, #0x2
	lsl     r3, r2, #15
	mov     r2, #0x0
	lsl     r1, r1, #10
	add     r1, r3, r1
	adc     r0, r2
	lsr     r5, r1, #12
	lsl     r0, r0, #20
	orr     r5, r0
	ldr     r0, [r4, #0x8]
	add     r1, sp, #0x24
	bl      Function_225d054
	ldr     r0, [pc, #0x124] @ 0x226b1c0, (=0x958)
	add     r1, sp, #0x24
	ldr     r0, [r4, r0]
	add     r0, r0, r5
	str     r0, [sp, #0x28]
	ldr     r0, [r4, #0x8]
	bl      Function_225d048
	ldr     r0, [pc, #0x100] @ 0x226b1ac, (=0x956)
	ldsh    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r1, #0xa
	ble     branch_226b0d6
	ldr     r0, [r4, #0x8]
	mov     r1, #0x1
	bl      Function_225d030
	ldr     r0, [r6, #0x4]
	ldr     r4, [r4, #0x8]
	bl      Function_225ccac
	cmp     r4, r0
	bne     branch_226b0d0
	ldr     r0, [r6, #0x8]
	mov     r1, r4
	bl      Function_2260b38
.thumb
branch_226b0d0: @ 226b0d0 :thumb
	add     sp, #0x3c
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x226b0d6

.thumb
branch_226b0d6: @ 226b0d6 :thumb
	strh    r1, [r4, r0]
.thumb
branch_226b0d8: @ 226b0d8 :thumb
	ldr     r1, [pc, #0xe8] @ 0x226b1c4, (=0x964)
	mov     r5, #0x0
	ldrb    r0, [r4, r1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, r1]
	mov     r0, r1
	sub     r0, #0xf
	ldsb    r0, [r4, r0]
	cmp     r0, #0x0
	ble     branch_226b1a0
	mov     r0, r1
	add     r0, #0x28
	add     r7, r4, r0
	add     r0, r1, #0x4
	add     r0, r4, r0
	str     r0, [sp, #0x10]
	mov     r0, r4
	str     r0, [sp, #0xc]
	add     r0, #0xc
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	str     r7, [sp, #0x8]
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0xc]
	str     r0, [sp, #0x0]
.thumb
branch_226b10a: @ 226b10a :thumb
	ldr     r1, [pc, #0xb8] @ 0x226b1c4, (=0x964)
	mov     r0, r7
	ldrb    r1, [r4, r1]
	bl      Function_22692dc
	cmp     r0, #0x0
	bne     branch_226b152
	ldr     r0, [sp, #0x10]
	bl      Function_22694d0
	ldr     r0, [sp, #0xc]
	add     r1, sp, #0x18
	add     r2, sp, #0x1c
	add     r3, sp, #0x20
	bl      Function_2017358
	ldr     r0, [sp, #0x8]
	add     r1, sp, #0x18
	add     r2, sp, #0x1c
	add     r3, sp, #0x20
	bl      Function_2269488
	ldr     r0, [sp, #0x4]
	add     r1, sp, #0x14
	bl      Function_2269508
	ldr     r1, [sp, #0x18]
	ldr     r0, [sp, #0x14]
	ldr     r2, [sp, #0x1c]
	add     r1, r1, r0
	ldr     r0, [sp, #0x0]
	ldr     r3, [sp, #0x20]
	str     r1, [sp, #0x18]
	bl      Function_2017350
	b       branch_226b16c
@ 0x226b152

.thumb
branch_226b152: @ 226b152 :thumb
	mov     r0, r6
	mov     r1, r4
	mov     r2, r5
	mov     r3, #0x4
	bl      Function_226b714
	cmp     r0, #0x1
	bne     branch_226b16c
	ldr     r2, [pc, #0x64] @ 0x226b1c8, (=0x591)
	mov     r0, r6
	mov     r1, r4
	bl      Function_2269510
.thumb
branch_226b16c: @ 226b16c :thumb
	mov     r0, r6
	mov     r1, r4
	mov     r2, r5
	bl      Function_226b744
	ldr     r0, [sp, #0x10]
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r0, #0xc
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0xc]
	add     r7, #0x28
	add     r0, #0x78
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x8]
	add     r0, #0x28
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x4]
	add     r0, #0xc
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	add     r0, #0x78
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x30] @ 0x226b1cc, (=0x955)
	ldsb    r0, [r4, r0]
	cmp     r5, r0
	blt     branch_226b10a
.thumb
branch_226b1a0: @ 226b1a0 :thumb
	mov     r0, #0x0
	add     sp, #0x3c
	pop     {r4-r7,pc}
@ 0x226b1a6


.align 2


.word 0x954 @ 0x226b1a8
.word 0x956 @ 0x226b1ac
.word 0xa04 @ 0x226b1b0
.word 0x5ab @ 0x226b1b4
.word 0x7fff @ 0x226b1b8
.word Unknown_20f983c @ 0x226b1bc
.word 0x958 @ 0x226b1c0
.word 0x964 @ 0x226b1c4
.word 0x591 @ 0x226b1c8
.word 0x955 @ 0x226b1cc
.thumb
Function_226b1d0: @ 226b1d0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r6, r0
	ldr     r0, [pc, #0x134] @ 0x226b30c, (=0x955)
	mov     r4, r1
	ldsb    r0, [r4, r0]
	mov     r5, #0x0
	cmp     r0, #0x0
	ble     branch_226b1f6
	ldr     r7, [pc, #0x128] @ 0x226b30c, (=0x955)
.thumb
branch_226b1e4: @ 226b1e4 :thumb
	mov     r0, r6
	mov     r1, r4
	mov     r2, r5
	bl      Function_226b744
	ldsb    r0, [r4, r7]
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r0
	blt     branch_226b1e4
.thumb
branch_226b1f6: @ 226b1f6 :thumb
	ldr     r1, [pc, #0x118] @ 0x226b310, (=0x954)
	ldsb    r0, [r4, r1]
	cmp     r0, #0x3
	bls     branch_226b200
	b       branch_226b304
@ 0x226b200

.thumb
branch_226b200: @ 226b200 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x226b20c

Jumppoints_226b20c:
.hword branch_226b214 - Jumppoints_226b20c - 2
.hword branch_226b246 - Jumppoints_226b20c - 2
.hword branch_226b25c - Jumppoints_226b20c - 2
.hword branch_226b292 - Jumppoints_226b20c - 2
.thumb
branch_226b214: @ 226b214 :thumb
	ldr     r2, [pc, #0xfc] @ 0x226b314, (=0x591)
	mov     r0, r6
	mov     r1, r4
	bl      Function_2269510
	ldr     r0, [pc, #0xec] @ 0x226b30c, (=0x955)
	mov     r5, #0x0
	ldsb    r0, [r4, r0]
	cmp     r0, #0x0
	ble     branch_226b23e
	ldr     r7, [pc, #0xe0] @ 0x226b30c, (=0x955)
.thumb
branch_226b22a: @ 226b22a :thumb
	mov     r0, r6
	mov     r1, r4
	mov     r2, r5
	mov     r3, #0x4
	bl      Function_226b714
	ldsb    r0, [r4, r7]
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r0
	blt     branch_226b22a
.thumb
branch_226b23e: @ 226b23e :thumb
	ldr     r0, [pc, #0xd0] @ 0x226b310, (=0x954)
	mov     r1, #0x1
	strb    r1, [r4, r0]
	b       branch_226b304
@ 0x226b246

.thumb
branch_226b246: @ 226b246 :thumb
	ldr     r0, [r4, #0x8]
	mov     r1, #0x1
	bl      Function_225d09c
	ldr     r0, [pc, #0xc8] @ 0x226b318, (=0x956)
	mov     r1, #0x8
	strh    r1, [r4, r0]
	mov     r1, #0x2
	.hword  0x1e80 @ sub r0, r0, #0x2
	strb    r1, [r4, r0]
	b       branch_226b304
@ 0x226b25c

.thumb
branch_226b25c: @ 226b25c :thumb
	add     r0, r1, #0x2
	ldsh    r0, [r4, r0]
	.hword  0x1e42 @ sub r2, r0, #0x1
	add     r0, r1, #0x2
	strh    r2, [r4, r0]
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	bgt     branch_226b304
	ldr     r0, [r4, #0x8]
	mov     r1, #0x0
	bl      Function_225d09c
	ldr     r0, [pc, #0x98] @ 0x226b310, (=0x954)
	mov     r1, #0x3
	strb    r1, [r4, r0]
	mov     r1, #0x0
	.hword  0x1c80 @ add r0, r0, #0x2
	strh    r1, [r4, r0]
	ldr     r0, [r4, #0x8]
	mov     r1, #0x6
	bl      Function_225cd60
	mov     r1, r0
	ldr     r0, [r4, #0x8]
	bl      Function_225d060
	b       branch_226b304
@ 0x226b292

.thumb
branch_226b292: @ 226b292 :thumb
	mov     r0, r1
	.hword  0x1c89 @ add r1, r1, #0x2
	add     r0, #0xb0
	ldsh    r1, [r4, r1]
	add     r0, r4, r0
	bl      Function_22692dc
	mov     r5, r0
	ldr     r0, [pc, #0x74] @ 0x226b318, (=0x956)
	ldsh    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, r0]
	ldr     r0, [r4, #0x8]
	add     r1, sp, #0x0
	bl      Function_225d054
	ldr     r0, [pc, #0x68] @ 0x226b31c, (=0xa04)
	add     r1, sp, #0x0
	add     r0, r4, r0
	add     r2, sp, #0x4
	add     r3, sp, #0x8
	bl      Function_2269488
	ldr     r0, [r4, #0x8]
	add     r1, sp, #0x0
	bl      Function_225d048
	cmp     r5, #0x1
	bne     branch_226b304
	ldr     r0, [pc, #0x48] @ 0x226b318, (=0x956)
	mov     r1, #0x0
	strh    r1, [r4, r0]
	ldr     r1, [sp, #0x4]
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r1, [r4, r0]
	ldr     r2, [pc, #0x44] @ 0x226b320, (=0x5ab)
	mov     r0, r6
	mov     r1, r4
	bl      Function_2269510
	ldr     r0, [r4, #0x8]
	mov     r1, #0x1
	bl      Function_225d030
	ldr     r0, [r6, #0x4]
	ldr     r4, [r4, #0x8]
	bl      Function_225ccac
	cmp     r4, r0
	bne     branch_226b2fe
	ldr     r0, [r6, #0x8]
	mov     r1, r4
	bl      Function_2260b38
.thumb
branch_226b2fe: @ 226b2fe :thumb
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x226b304

.thumb
branch_226b304: @ 226b304 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x226b30a


.align 2


.word 0x955 @ 0x226b30c
.word 0x954 @ 0x226b310
.word 0x591 @ 0x226b314
.word 0x956 @ 0x226b318
.word 0xa04 @ 0x226b31c
.word 0x5ab @ 0x226b320
.thumb
Function_226b324: @ 226b324 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [r5, #0x8]
	add     r1, sp, #0x0
	bl      Function_225d054
	ldr     r0, [pc, #0x1e4] @ 0x226b518, (=0x955)
	ldsb    r0, [r5, r0]
	cmp     r0, #0x1
	beq     branch_226b342
	cmp     r0, #0x2
	beq     branch_226b392
	cmp     r0, #0x3
	b       branch_226b42e
@ 0x226b342

.thumb
branch_226b342: @ 226b342 :thumb
	mov     r0, #0xf
	lsl     r0, r0, #14
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	mov     r6, r0
	mov     r0, #0x2
	lsl     r0, r0, #14
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	blx     _ffix
	mov     r4, r0
	mov     r0, r6
	blx     _ffix
	ldr     r1, [sp, #0x0]
	ldr     r2, [sp, #0x4]
	mov     r3, r0
	add     r1, r1, r4
	add     r2, r2, r3
	mov     r3, #0x1
	add     r5, #0xc
	ldr     r4, [sp, #0x8]
	lsl     r3, r3, #12
	mov     r0, r5
	add     r3, r4, r3
	bl      Function_2017350
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x226b392

.thumb
branch_226b392: @ 226b392 :thumb
	mov     r0, #0xe
	lsl     r0, r0, #14
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	mov     r6, r0
	mov     r0, #0x2
	lsl     r0, r0, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	blx     _ffix
	mov     r4, r0
	mov     r0, r6
	blx     _ffix
	ldr     r1, [sp, #0x0]
	mov     r3, r0
	ldr     r2, [sp, #0x4]
	add     r1, r1, r4
	add     r2, r2, r3
	mov     r3, #0x1
	mov     r0, r5
	ldr     r4, [sp, #0x8]
	lsl     r3, r3, #12
	add     r0, #0xc
	add     r3, r4, r3
	bl      Function_2017350
	mov     r0, #0xe
	lsl     r0, r0, #14
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	mov     r6, r0
	mov     r0, #0xe
	lsl     r0, r0, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	blx     _ffix
	mov     r4, r0
	mov     r0, r6
	blx     _ffix
	ldr     r1, [sp, #0x0]
	ldr     r2, [sp, #0x4]
	mov     r3, r0
	add     r1, r1, r4
	add     r2, r2, r3
	mov     r3, #0x1
	add     r5, #0x84
	ldr     r4, [sp, #0x8]
	lsl     r3, r3, #12
	mov     r0, r5
	add     r3, r4, r3
	bl      Function_2017350
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x226b42e

.thumb
branch_226b42e: @ 226b42e :thumb
	mov     r0, #0xf
	lsl     r0, r0, #14
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	mov     r6, r0
	mov     r0, #0x2
	lsl     r0, r0, #14
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	blx     _ffix
	mov     r4, r0
	mov     r0, r6
	blx     _ffix
	ldr     r1, [sp, #0x0]
	mov     r3, r0
	ldr     r2, [sp, #0x4]
	add     r1, r1, r4
	add     r2, r2, r3
	mov     r3, #0x1
	mov     r0, r5
	ldr     r4, [sp, #0x8]
	lsl     r3, r3, #12
	add     r0, #0xc
	add     r3, r4, r3
	bl      Function_2017350
	mov     r0, #0xe
	lsl     r0, r0, #14
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	mov     r6, r0
	mov     r0, #0x2
	lsl     r0, r0, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	blx     _ffix
	mov     r4, r0
	mov     r0, r6
	blx     _ffix
	ldr     r1, [sp, #0x0]
	mov     r3, r0
	ldr     r2, [sp, #0x4]
	add     r1, r1, r4
	add     r2, r2, r3
	mov     r3, #0x1
	mov     r0, r5
	ldr     r4, [sp, #0x8]
	lsl     r3, r3, #12
	add     r0, #0x84
	add     r3, r4, r3
	bl      Function_2017350
	mov     r0, #0xe
	lsl     r0, r0, #14
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	mov     r6, r0
	mov     r0, #0xe
	lsl     r0, r0, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	blx     _ffix
	mov     r4, r0
	mov     r0, r6
	blx     _ffix
	ldr     r1, [sp, #0x0]
	ldr     r2, [sp, #0x4]
	mov     r3, r0
	add     r1, r1, r4
	add     r2, r2, r3
	mov     r3, #0x1
	add     r5, #0xfc
	ldr     r4, [sp, #0x8]
	lsl     r3, r3, #12
	mov     r0, r5
	add     r3, r4, r3
	bl      Function_2017350
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x226b516


.align 2


.word 0x955 @ 0x226b518
.thumb
Function_226b51c: @ 226b51c :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [r5, #0x8]
	add     r1, sp, #0x0
	bl      Function_225d054
	ldr     r0, [pc, #0x1e4] @ 0x226b710, (=0x955)
	ldsb    r0, [r5, r0]
	cmp     r0, #0x1
	beq     branch_226b53a
	cmp     r0, #0x2
	beq     branch_226b58a
	cmp     r0, #0x3
	b       branch_226b626
@ 0x226b53a

.thumb
branch_226b53a: @ 226b53a :thumb
	mov     r0, #0x3
	lsl     r0, r0, #16
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	mov     r6, r0
	mov     r0, #0x2
	lsl     r0, r0, #14
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	blx     _ffix
	mov     r4, r0
	mov     r0, r6
	blx     _ffix
	ldr     r1, [sp, #0x0]
	ldr     r2, [sp, #0x4]
	mov     r3, r0
	add     r1, r1, r4
	add     r2, r2, r3
	mov     r3, #0x2
	add     r5, #0xc
	ldr     r4, [sp, #0x8]
	lsl     r3, r3, #14
	mov     r0, r5
	sub     r3, r4, r3
	bl      Function_2017350
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x226b58a

.thumb
branch_226b58a: @ 226b58a :thumb
	mov     r0, #0xb
	lsl     r0, r0, #14
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	mov     r6, r0
	mov     r0, #0x2
	lsl     r0, r0, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	blx     _ffix
	mov     r4, r0
	mov     r0, r6
	blx     _ffix
	ldr     r1, [sp, #0x0]
	mov     r3, r0
	ldr     r2, [sp, #0x4]
	add     r1, r1, r4
	add     r2, r2, r3
	mov     r3, #0x2
	mov     r0, r5
	ldr     r4, [sp, #0x8]
	lsl     r3, r3, #14
	add     r0, #0xc
	sub     r3, r4, r3
	bl      Function_2017350
	mov     r0, #0xb
	lsl     r0, r0, #14
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	mov     r6, r0
	mov     r0, #0xe
	lsl     r0, r0, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	blx     _ffix
	mov     r4, r0
	mov     r0, r6
	blx     _ffix
	ldr     r1, [sp, #0x0]
	ldr     r2, [sp, #0x4]
	mov     r3, r0
	add     r1, r1, r4
	add     r2, r2, r3
	mov     r3, #0x2
	add     r5, #0x84
	ldr     r4, [sp, #0x8]
	lsl     r3, r3, #14
	mov     r0, r5
	sub     r3, r4, r3
	bl      Function_2017350
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x226b626

.thumb
branch_226b626: @ 226b626 :thumb
	mov     r0, #0x3
	lsl     r0, r0, #16
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	mov     r6, r0
	mov     r0, #0x2
	lsl     r0, r0, #14
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	blx     _ffix
	mov     r4, r0
	mov     r0, r6
	blx     _ffix
	ldr     r1, [sp, #0x0]
	mov     r3, r0
	ldr     r2, [sp, #0x4]
	add     r1, r1, r4
	add     r2, r2, r3
	mov     r3, #0x2
	mov     r0, r5
	ldr     r4, [sp, #0x8]
	lsl     r3, r3, #14
	add     r0, #0xc
	sub     r3, r4, r3
	bl      Function_2017350
	mov     r0, #0xb
	lsl     r0, r0, #14
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	mov     r6, r0
	mov     r0, #0x2
	lsl     r0, r0, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	blx     _ffix
	mov     r4, r0
	mov     r0, r6
	blx     _ffix
	ldr     r1, [sp, #0x0]
	mov     r3, r0
	ldr     r2, [sp, #0x4]
	add     r1, r1, r4
	add     r2, r2, r3
	mov     r3, #0x2
	mov     r0, r5
	ldr     r4, [sp, #0x8]
	lsl     r3, r3, #14
	add     r0, #0x84
	sub     r3, r4, r3
	bl      Function_2017350
	mov     r0, #0xb
	lsl     r0, r0, #14
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	mov     r6, r0
	mov     r0, #0xe
	lsl     r0, r0, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	blx     _ffix
	mov     r4, r0
	mov     r0, r6
	blx     _ffix
	ldr     r1, [sp, #0x0]
	ldr     r2, [sp, #0x4]
	mov     r3, r0
	add     r1, r1, r4
	add     r2, r2, r3
	mov     r3, #0x2
	add     r5, #0xfc
	ldr     r4, [sp, #0x8]
	lsl     r3, r3, #14
	mov     r0, r5
	sub     r3, r4, r3
	bl      Function_2017350
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x226b70e


.align 2


.word 0x955 @ 0x226b710
.thumb
Function_226b714: @ 226b714 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r6, #0x96
	lsl     r6, r6, #4
	add     r5, r1, r6
	mov     r4, r3
	ldrb    r3, [r5, r2]
	cmp     r4, r3
	beq     branch_226b73e
	strb    r4, [r5, r2]
	mov     r3, #0x0
	add     r5, r1, r2
	.hword  0x1f36 @ sub r6, r6, #0x4
	strb    r3, [r5, r6]
	lsl     r4, r4, #13
	str     r4, [sp, #0x0]
	bl      Function_2269a90
	add     sp, #0x4
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x226b73e

.thumb
branch_226b73e: @ 226b73e :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x226b744

.thumb
Function_226b744: @ 226b744 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r3, #0x96
	mov     r7, r1
	mov     r5, r2
	add     r4, r7, r5
	lsl     r3, r3, #4
	ldrb    r6, [r4, r3]
	.hword  0x1f1b @ sub r3, r3, #0x4
	add     r4, r7, r3
	ldrb    r3, [r4, r5]
	str     r0, [sp, #0x4]
	cmp     r3, #0x0
	bne     branch_226b7a4
	mov     r3, #0x0
	bl      Function_2269ae8
	lsl     r1, r6, #13
	str     r0, [sp, #0x8]
	cmp     r0, r1
	bne     branch_226b778
	mov     r0, #0x1
	lsl     r0, r0, #12
	add     r0, r1, r0
	str     r0, [sp, #0x8]
	b       branch_226b790
@ 0x226b778

.thumb
branch_226b778: @ 226b778 :thumb
	cmp     r6, #0x4
	beq     branch_226b780
	str     r1, [sp, #0x8]
	b       branch_226b790
@ 0x226b780

.thumb
branch_226b780: @ 226b780 :thumb
	mov     r1, r7
	mov     r0, #0x78
	add     r1, #0xc
	mul     r0, r5
	add     r0, r1, r0
	mov     r1, #0x0
	bl      Function_2017348
.thumb
branch_226b790: @ 226b790 :thumb
	ldr     r0, [sp, #0x8]
	mov     r1, r7
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	mov     r2, r5
	mov     r3, #0x0
	bl      Function_2269a90
	mov     r0, #0x8
	strb    r0, [r4, r5]
.thumb
branch_226b7a4: @ 226b7a4 :thumb
	ldrb    r0, [r4, r5]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, r5]
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x226b7ae


.align 2, 0


.thumb
Function_226b7b0: @ 226b7b0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x5c
	str     r0, [sp, #0x10]
	mov     r0, r1
	str     r1, [sp, #0x14]
	ldr     r0, [r0, #0x8]
	add     r1, sp, #0x50
	str     r2, [sp, #0x18]
	bl      Function_225d054
	mov     r0, #0x0
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x18]
	cmp     r0, #0x0
	bls     branch_226b88e
	ldr     r0, [sp, #0x20]
	str     r0, [sp, #0x1c]
.thumb
branch_226b7d2: @ 226b7d2 :thumb
	ldr     r1, [sp, #0x20]
	add     r1, #0xd
	cmp     r1, #0xf
	bls     branch_226b7dc
	mov     r1, #0xf
.thumb
branch_226b7dc: @ 226b7dc :thumb
	ldr     r0, [pc, #0xcc] @ 0x226b8ac, (=0x226e370)
	ldr     r7, [pc, #0xd0] @ 0x226b8b0, (=0x226e3a0)
	str     r0, [sp, #0x34]
	lsl     r0, r1, #2
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x14]
	ldr     r1, [pc, #0xc8] @ 0x226b8b4, (=0x968)
	str     r0, [sp, #0x28]
	add     r0, #0xc
	str     r0, [sp, #0x28]
	ldr     r0, [sp, #0x14]
	mov     r4, #0x0
	add     r0, r0, r1
	str     r0, [sp, #0x30]
.thumb
branch_226b7f8: @ 226b7f8 :thumb
	ldr     r0, [sp, #0x1c]
	ldr     r6, [pc, #0xbc] @ 0x226b8b8, (=0x226e5a4)
	add     r5, r4, r0
	ldr     r3, [sp, #0x24]
	ldr     r0, [sp, #0x10]
	ldr     r1, [sp, #0x14]
	mov     r2, r5
	add     r3, r6, r3
	bl      Function_2269828
	ldr     r1, [sp, #0x34]
	add     r0, sp, #0x50
	add     r2, sp, #0x44
	blx     VEC_Add
	add     r0, sp, #0x44
	mov     r1, r7
	add     r2, sp, #0x38
	blx     VEC_Add
	mov     r0, #0x78
	mul     r0, r5
	ldr     r1, [sp, #0x28]
	str     r0, [sp, #0x2c]
	add     r0, r1, r0
	ldr     r1, [sp, #0x44]
	ldr     r2, [sp, #0x48]
	ldr     r3, [sp, #0x4c]
	bl      Function_2017350
	ldr     r1, [sp, #0x28]
	ldr     r0, [sp, #0x2c]
	add     r0, r1, r0
	mov     r1, #0x0
	bl      Function_2017348
	ldr     r0, [sp, #0x14]
	mov     r1, #0x0
	add     r2, r0, r5
	ldr     r0, [pc, #0x74] @ 0x226b8bc, (=0x958)
	strb    r1, [r2, r0]
	ldr     r0, [sp, #0x3c]
	mov     r1, r5
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4c]
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x40]
	str     r0, [sp, #0x8]
	mov     r0, #0xe
	str     r0, [sp, #0xc]
	mov     r0, #0x28
	mul     r1, r0
	ldr     r0, [sp, #0x30]
	ldr     r2, [sp, #0x38]
	add     r0, r0, r1
	ldr     r1, [sp, #0x44]
	ldr     r3, [sp, #0x48]
	bl      Function_22692b4
	ldr     r0, [sp, #0x34]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r0, #0xc
	add     r7, #0xc
	str     r0, [sp, #0x34]
	cmp     r4, #0x4
	blt     branch_226b7f8
	ldr     r0, [sp, #0x1c]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x20]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x18]
	str     r1, [sp, #0x20]
	cmp     r1, r0
	bcc     branch_226b7d2
.thumb
branch_226b88e: @ 226b88e :thumb
	ldr     r2, [pc, #0x30] @ 0x226b8c0, (=0x956)
	ldr     r1, [sp, #0x18]
	ldr     r0, [sp, #0x14]
	.hword  0x1e53 @ sub r3, r2, #0x1
	strb    r1, [r0, r2]
	ldr     r1, [sp, #0x14]
	mov     r0, #0x0
	strb    r0, [r1, r3]
	.hword  0x1e93 @ sub r3, r2, #0x2
	strb    r0, [r1, r3]
	.hword  0x1c52 @ add r2, r2, #0x1
	strb    r0, [r1, r2]
	add     sp, #0x5c
	pop     {r4-r7,pc}
@ 0x226b8aa


.align 2


.word 0x226e370 @ 0x226b8ac
.word 0x226e3a0 @ 0x226b8b0
.word 0x968 @ 0x226b8b4
.word 0x226e5a4 @ 0x226b8b8
.word 0x958 @ 0x226b8bc
.word 0x956 @ 0x226b8c0
.thumb
Function_226b8c4: @ 226b8c4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r4, r2
	ldr     r2, [pc, #0x58] @ 0x226b924, (=0x958)
	mov     r5, r1
	add     r1, r5, r2
	mov     r7, r0
	ldsb    r0, [r1, r4]
	mov     r6, r4
	add     r2, #0x10
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r1, r4]
	mov     r0, #0x28
	mul     r6, r0
	add     r0, r5, r2
	ldsb    r1, [r1, r4]
	add     r0, r0, r6
	bl      Function_22692dc
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x38] @ 0x226b928, (=0x968)
	add     r1, sp, #0x4
	add     r0, r5, r0
	add     r0, r0, r6
	add     r2, sp, #0x8
	add     r3, sp, #0xc
	bl      Function_2269488
	mov     r1, r5
	mov     r0, #0x78
	add     r1, #0xc
	mul     r0, r4
	add     r0, r1, r0
	ldr     r1, [sp, #0x4]
	ldr     r2, [sp, #0x8]
	ldr     r3, [sp, #0xc]
	bl      Function_2017350
	mov     r0, r7
	mov     r1, r5
	mov     r2, r4
	mov     r3, #0x0
	bl      Function_22699bc
	ldr     r0, [sp, #0x0]
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x226b922


.align 2


.word 0x958 @ 0x226b924
.word 0x968 @ 0x226b928
.thumb
Function_226b92c: @ 226b92c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	str     r0, [sp, #0x0]
	mov     r7, r1
	mov     r6, #0x0
	str     r2, [sp, #0x4]
	mov     r0, r2
	beq     branch_226b986
	mov     r5, r7
	ldr     r4, [pc, #0x50] @ 0x226b990, (=0x226e5a4)
	add     r5, #0xc
.thumb
branch_226b942: @ 226b942 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, r7
	mov     r2, r6
	mov     r3, r4
	bl      Function_2269828
	ldr     r0, [r7, #0x8]
	add     r1, sp, #0x8
	bl      Function_225d054
	mov     r0, #0x2
	ldr     r1, [sp, #0xc]
	lsl     r0, r0, #14
	add     r2, r1, r0
	mov     r0, #0x6
	ldr     r1, [sp, #0x10]
	lsl     r0, r0, #12
	add     r3, r1, r0
	ldr     r1, [sp, #0x8]
	mov     r0, r5
	str     r2, [sp, #0xc]
	str     r3, [sp, #0x10]
	bl      Function_2017350
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2017348
	ldr     r0, [sp, #0x4]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r5, #0x78
	cmp     r6, r0
	bcc     branch_226b942
.thumb
branch_226b986: @ 226b986 :thumb
	ldr     r1, [pc, #0xc] @ 0x226b994, (=0x954)
	ldr     r0, [sp, #0x4]
	strb    r0, [r7, r1]
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x226b990

.word 0x226e5a4 @ 0x226b990
.word 0x954 @ 0x226b994
.thumb
Function_226b998: @ 226b998 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	str     r0, [sp, #0x4]
	mov     r5, r1
	mov     r0, #0x2
	ldsh    r1, [r5, r0]
	mov     r0, #0xc
	mov     r6, r2
	mul     r0, r1
	mov     r1, #0x30
	blx     _s32_div_f
	mov     r4, r0
	ldr     r0, [pc, #0x108] @ 0x226babc, (=0x954)
	ldr     r1, [r5, r0]
	cmp     r4, r1
	beq     branch_226ba9c
	str     r4, [r5, r0]
	cmp     r4, #0x0
	beq     branch_226b9ea
	mov     r0, #0x30
	mov     r2, r6
	mul     r2, r0
	ldr     r0, [pc, #0xf8] @ 0x226bac0, (=0x226e510)
	lsl     r1, r4, #2
	add     r0, r0, r2
	add     r2, r1, r0
	ldrh    r0, [r1, r0]
	add     r1, sp, #0x8
	strh    r0, [r1, #0x4]
	ldrh    r0, [r2, #0x2]
	strh    r0, [r1, #0x6]
	ldrh    r2, [r1, #0x4]
	mov     r0, r5
	mov     r1, #0x78
	add     r0, #0xc
	mul     r1, r2
	add     r0, r0, r1
	mov     r1, #0x0
	bl      Function_2017348
.thumb
branch_226b9ea: @ 226b9ea :thumb
	mov     r0, #0x30
	mov     r2, r6
	mul     r2, r0
	ldr     r0, [pc, #0xd0] @ 0x226bac4, (=0x226e514)
	lsl     r1, r4, #2
	add     r0, r0, r2
	add     r2, r1, r0
	ldrh    r1, [r1, r0]
	add     r0, sp, #0x8
	strh    r1, [r0, #0x0]
	ldrh    r4, [r2, #0x2]
	strh    r4, [r0, #0x2]
	cmp     r4, #0x0
	beq     branch_226ba8a
	beq     branch_226ba1c
	lsl     r7, r4, #12
	mov     r0, r7
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_226ba2c
@ 0x226ba1c

.thumb
branch_226ba1c: @ 226ba1c :thumb
	lsl     r7, r4, #12
	mov     r0, r7
	blx     _fflt
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
.thumb
branch_226ba2c: @ 226ba2c :thumb
	add     r1, sp, #0x8
	ldrh    r6, [r1, #0x0]
	blx     _ffix
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	mov     r2, r6
	mov     r3, #0x0
	bl      Function_2269a90
	cmp     r4, #0x0
	beq     branch_226ba58
	mov     r0, r7
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_226ba66
@ 0x226ba58

.thumb
branch_226ba58: @ 226ba58 :thumb
	mov     r0, r7
	blx     _fflt
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
.thumb
branch_226ba66: @ 226ba66 :thumb
	blx     _ffix
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	mov     r2, r6
	mov     r3, #0x1
	bl      Function_2269a90
	mov     r1, r5
	mov     r0, #0x78
	add     r1, #0xc
	mul     r0, r6
	add     r0, r1, r0
	mov     r1, #0x1
	bl      Function_2017348
	b       branch_226ba9c
@ 0x226ba8a

.thumb
branch_226ba8a: @ 226ba8a :thumb
	ldrh    r1, [r0, #0x0]
	mov     r2, r5
	mov     r0, #0x78
	mul     r0, r1
	add     r2, #0xc
	add     r0, r2, r0
	mov     r1, #0x0
	bl      Function_2017348
.thumb
branch_226ba9c: @ 226ba9c :thumb
	mov     r0, #0x2
	ldsh    r0, [r5, r0]
	cmp     r0, #0x30
	bge     branch_226baa8
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x2]
.thumb
branch_226baa8: @ 226baa8 :thumb
	mov     r0, #0x2
	ldsh    r0, [r5, r0]
	cmp     r0, #0x30
	blt     branch_226bab6
	add     sp, #0x10
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x226bab6

.thumb
branch_226bab6: @ 226bab6 :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x226babc

.word 0x954 @ 0x226babc
.word 0x226e510 @ 0x226bac0
.word 0x226e514 @ 0x226bac4
.thumb
Function_226bac8: @ 226bac8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	str     r0, [sp, #0x0]
	mov     r7, r1
	mov     r4, #0x0
	str     r2, [sp, #0x4]
	mov     r0, r2
	beq     branch_226bb1c
	mov     r5, r7
	add     r5, #0xc
.thumb
branch_226badc: @ 226badc :thumb
	add     r3, r4, #0x6
	lsl     r6, r3, #2
	ldr     r3, [pc, #0x48] @ 0x226bb2c, (=0x226e5a4)
	ldr     r0, [sp, #0x0]
	mov     r1, r7
	mov     r2, r4
	add     r3, r3, r6
	bl      Function_2269828
	ldr     r0, [r7, #0x8]
	add     r1, sp, #0x8
	bl      Function_225d054
	mov     r0, #0x2
	ldr     r1, [sp, #0xc]
	lsl     r0, r0, #14
	add     r2, r1, r0
	ldr     r1, [sp, #0x8]
	ldr     r3, [sp, #0x10]
	mov     r0, r5
	str     r2, [sp, #0xc]
	bl      Function_2017350
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2017348
	ldr     r0, [sp, #0x4]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x78
	cmp     r4, r0
	bcc     branch_226badc
.thumb
branch_226bb1c: @ 226bb1c :thumb
	ldr     r0, [pc, #0x10] @ 0x226bb30, (=0x954)
	mov     r1, #0xff
	strh    r1, [r7, r0]
	add     r1, r0, #0x2
	ldr     r0, [sp, #0x4]
	strh    r0, [r7, r1]
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x226bb2c

.word 0x226e5a4 @ 0x226bb2c
.word 0x954 @ 0x226bb30
.thumb
Function_226bb34: @ 226bb34 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	str     r0, [sp, #0x0]
	ldr     r0, [r1, #0x8]
	str     r1, [sp, #0x4]
	add     r1, sp, #0x8
	bl      Function_225d054
	mov     r0, #0xa
	ldr     r7, [sp, #0x4]
	mov     r4, #0x0
	ldr     r1, [sp, #0x10]
	lsl     r0, r0, #12
	sub     r0, r1, r0
	str     r0, [sp, #0x10]
	mov     r0, #0x1
	ldr     r1, [sp, #0x8]
	lsl     r0, r0, #14
	sub     r1, r1, r0
	str     r1, [sp, #0x8]
	ldr     r1, [sp, #0xc]
	lsl     r0, r0, #2
	add     r0, r1, r0
	str     r0, [sp, #0xc]
	mov     r5, r4
	add     r7, #0xc
.thumb
branch_226bb68: @ 226bb68 :thumb
	mov     r3, r4
	add     r3, #0x25
	lsl     r6, r3, #2
	ldr     r3, [pc, #0x34] @ 0x226bba4, (=0x226e5a4)
	mov     r2, r4
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	add     r2, #0x10
	add     r3, r3, r6
	bl      Function_2269828
	mov     r1, r4
	add     r1, #0x10
	mov     r0, #0x78
	mul     r0, r1
	ldr     r1, [sp, #0x8]
	ldr     r2, [sp, #0xc]
	ldr     r3, [sp, #0x10]
	add     r0, r7, r0
	add     r1, r1, r5
	bl      Function_2017350
	mov     r0, #0x6
	lsl     r0, r0, #14
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, r5, r0
	cmp     r4, #0x2
	blt     branch_226bb68
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x226bba4

.word 0x226e5a4 @ 0x226bba4
.thumb
Function_226bba8: @ 226bba8 :thumb
	push    {r3-r7,lr}
	ldr     r0, [pc, #0x2c] @ 0x226bbd8, (=0xd0c)
	mov     r2, #0x1
	strh    r2, [r1, r0]
	mov     r4, r1
	mov     r5, #0x0
	.hword  0x1c80 @ add r0, r0, #0x2
	strh    r5, [r1, r0]
	add     r4, #0xc
	mov     r7, r2
	mov     r6, #0x78
.thumb
branch_226bbbe: @ 226bbbe :thumb
	mov     r0, r5
	add     r0, #0x10
	mov     r1, r0
	mul     r1, r6
	add     r0, r4, r1
	mov     r1, r7
	bl      Function_2017348
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x2
	blt     branch_226bbbe
	pop     {r3-r7,pc}
@ 0x226bbd6


.align 2


.word 0xd0c @ 0x226bbd8
.thumb
Function_226bbdc: @ 226bbdc :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	ldr     r1, [pc, #0x54] @ 0x226bc38, (=0xd0c)
	mov     r7, r0
	ldrh    r0, [r5, r1]
	cmp     r0, #0x0
	beq     branch_226bc36
	add     r0, r1, #0x2
	ldrh    r0, [r5, r0]
	cmp     r0, #0xd
	bcs     branch_226bbfe
	add     r0, r1, #0x2
	ldrh    r0, [r5, r0]
	add     r2, r0, #0x1
	add     r0, r1, #0x2
	strh    r2, [r5, r0]
	b       branch_226bc02
@ 0x226bbfe

.thumb
branch_226bbfe: @ 226bbfe :thumb
	mov     r0, #0x0
	strh    r0, [r5, r1]
.thumb
branch_226bc02: @ 226bc02 :thumb
	mov     r6, r5
	mov     r4, #0x0
	add     r6, #0xc
.thumb
branch_226bc08: @ 226bc08 :thumb
	ldr     r0, [pc, #0x30] @ 0x226bc3c, (=0xd0e)
	ldrh    r0, [r5, r0]
	cmp     r0, #0xd
	bcs     branch_226bc20
	mov     r2, r4
	mov     r0, r7
	mov     r1, r5
	add     r2, #0x10
	mov     r3, #0x0
	bl      Function_22699bc
	b       branch_226bc30
@ 0x226bc20

.thumb
branch_226bc20: @ 226bc20 :thumb
	mov     r1, r4
	add     r1, #0x10
	mov     r0, #0x78
	mul     r0, r1
	add     r0, r6, r0
	mov     r1, #0x0
	bl      Function_2017348
.thumb
branch_226bc30: @ 226bc30 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x2
	blt     branch_226bc08
.thumb
branch_226bc36: @ 226bc36 :thumb
	pop     {r3-r7,pc}
@ 0x226bc38

.word 0xd0c @ 0x226bc38
.word 0xd0e @ 0x226bc3c
.thumb
Function_226bc40: @ 226bc40 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	ldr     r0, [sp, #0x30]
	mov     r7, #0x2
	str     r0, [sp, #0x30]
	ldr     r0, [sp, #0x34]
	mov     r6, #0x1
	str     r0, [sp, #0x34]
	mov     r0, #0x3b
	lsl     r0, r0, #4
	str     r1, [r5, r0]
	add     r1, r0, #0x4
	ldr     r4, [sp, #0x34]
	strh    r2, [r5, r1]
	.hword  0x1d80 @ add r0, r0, #0x6
	strh    r3, [r5, r0]
	mov     r0, #0x0
	str     r0, [sp, #0x14]
	mov     r0, #0x3
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x14]
	add     r4, #0xc
	str     r0, [sp, #0xc]
.thumb
branch_226bc70: @ 226bc70 :thumb
	ldr     r1, [sp, #0x10]
	mov     r0, #0x78
	mul     r0, r1
	add     r0, r4, r0
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x34]
	ldr     r2, [sp, #0xc]
	ldr     r0, [r0, #0x8]
	mov     r1, #0x78
	mul     r1, r2
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x30]
	mov     r2, #0x78
	mov     r3, #0x78
	mul     r2, r6
	mul     r3, r7
	str     r0, [sp, #0x8]
	mov     r0, r5
	add     r1, r4, r1
	add     r2, r4, r2
	add     r3, r4, r3
	bl      Function_226bd64
	ldr     r0, [sp, #0x10]
	.hword  0x1d3f @ add r7, r7, #0x4
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0xc]
	.hword  0x1d36 @ add r6, r6, #0x4
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x14]
	add     r5, #0xec
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x14]
	cmp     r0, #0x4
	blt     branch_226bc70
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x226bcbe


.align 2, 0


.thumb
Function_226bcc0: @ 226bcc0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	mov     r0, #0xed
	lsl     r0, r0, #2
	ldrh    r0, [r5, r0]
	str     r1, [sp, #0x0]
	cmp     r0, #0x0
	ble     branch_226bd2e
	ldr     r4, [sp, #0x8]
	add     r6, sp, #0x10
.thumb
branch_226bcdc: @ 226bcdc :thumb
	mov     r0, #0x3b
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	add     r1, r0, r4
	ldrh    r0, [r0, r4]
	strh    r0, [r6, #0x0]
	ldrh    r0, [r1, #0x2]
	strh    r0, [r6, #0x2]
	ldrh    r1, [r6, #0x0]
	ldr     r0, [sp, #0x0]
	cmp     r1, r0
	bne     branch_226bd1a
	ldrb    r7, [r6, #0x2]
	cmp     r7, #0x4
	bcc     branch_226bcfe
	bl      ErrorHandling
.thumb
branch_226bcfe: @ 226bcfe :thumb
	ldrb    r0, [r6, #0x3]
	str     r0, [sp, #0x4]
	cmp     r0, #0x4
	bls     branch_226bd0a
	bl      ErrorHandling
.thumb
branch_226bd0a: @ 226bd0a :thumb
	mov     r0, #0xec
	mul     r0, r7
	ldr     r1, [sp, #0x4]
	add     r0, r5, r0
	bl      Function_226bda0
	mov     r0, #0x1
	str     r0, [sp, #0x8]
.thumb
branch_226bd1a: @ 226bd1a :thumb
	ldr     r0, [sp, #0xc]
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0xc]
	mov     r0, #0xed
	lsl     r0, r0, #2
	ldrh    r1, [r5, r0]
	ldr     r0, [sp, #0xc]
	cmp     r0, r1
	blt     branch_226bcdc
.thumb
branch_226bd2e: @ 226bd2e :thumb
	mov     r7, #0x1
	mov     r6, #0x0
	mov     r4, r5
.thumb
branch_226bd34: @ 226bd34 :thumb
	mov     r0, r4
	bl      Function_226bde8
	cmp     r0, #0x0
	bne     branch_226bd40
	mov     r7, #0x0
.thumb
branch_226bd40: @ 226bd40 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0xec
	cmp     r6, #0x4
	blt     branch_226bd34
	ldr     r0, [pc, #0x14] @ 0x226bd60, (=0x3b6)
	ldrh    r1, [r5, r0]
	ldr     r0, [sp, #0x0]
	cmp     r1, r0
	bhi     branch_226bd5a
	cmp     r7, #0x1
	bne     branch_226bd5a
	mov     r0, #0x2
	str     r0, [sp, #0x8]
.thumb
branch_226bd5a: @ 226bd5a :thumb
	ldr     r0, [sp, #0x8]
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x226bd60

.word 0x3b6 @ 0x226bd60
.thumb
Function_226bd64: @ 226bd64 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [sp, #0x20]
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3
	cmp     r0, #0x3
	bcc     branch_226bd78
	bl      ErrorHandling
.thumb
branch_226bd78: @ 226bd78 :thumb
	mov     r0, r5
	add     r0, #0xd8
	str     r4, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xdc
	str     r6, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xe0
	str     r7, [r0, #0x0]
	mov     r0, r5
	ldr     r1, [sp, #0x18]
	add     r0, #0xe4
	str     r1, [r0, #0x0]
	mov     r0, r5
	ldr     r1, [sp, #0x1c]
	add     r0, #0xe8
	str     r1, [r0, #0x0]
	ldr     r0, [sp, #0x20]
	strh    r0, [r5, #0x2]
	pop     {r3-r7,pc}
@ 0x226bda0

.thumb
Function_226bda0: @ 226bda0 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r6, r1
	ldr     r4, [pc, #0x38] @ 0x226bde0, (=0x0)
	beq     branch_226bdc0
	mov     r5, r7
.thumb
branch_226bdac: @ 226bdac :thumb
	mov     r0, r5
	add     r0, #0xd8
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      Function_2017348
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, r6
	bcc     branch_226bdac
.thumb
branch_226bdc0: @ 226bdc0 :thumb
	mov     r0, #0x0
	strh    r0, [r7, #0x0]
	mov     r0, #0x1
	strb    r0, [r7, #0x6]
	strh    r6, [r7, #0x4]
	ldrh    r2, [r7, #0x2]
	mov     r1, r7
	add     r1, #0xe8
	lsl     r3, r2, #2
	ldr     r2, [pc, #0x10] @ 0x226bde4, (=0x226e364)
	ldr     r1, [r1, #0x0]
	ldr     r2, [r2, r3]
	mov     r0, r7
	blx     r2
	pop     {r3-r7,pc}
@ 0x226bdde


.align 2


.word 0x0 @ 0x226bde0
.word 0x226e364 @ 0x226bde4
.thumb
Function_226bde8: @ 226bde8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldrb    r1, [r5, #0x6]
	cmp     r1, #0x0
	bne     branch_226bdf6
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x226bdf6

.thumb
branch_226bdf6: @ 226bdf6 :thumb
	ldrh    r1, [r5, #0x2]
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x3c] @ 0x226be38, (=0x226e31c)
	ldr     r1, [r1, r2]
	blx     r1
	mov     r6, #0x0
	str     r0, [sp, #0x0]
	ldsh    r0, [r5, r6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x0]
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x1
	bne     branch_226be34
	ldrh    r0, [r5, #0x4]
	cmp     r0, #0x0
	ble     branch_226be30
	mov     r4, r5
	mov     r7, r6
.thumb
branch_226be1a: @ 226be1a :thumb
	mov     r0, r4
	add     r0, #0xd8
	ldr     r0, [r0, #0x0]
	mov     r1, r7
	bl      Function_2017348
	ldrh    r0, [r5, #0x4]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, r0
	blt     branch_226be1a
.thumb
branch_226be30: @ 226be30 :thumb
	mov     r0, #0x0
	strb    r0, [r5, #0x6]
.thumb
branch_226be34: @ 226be34 :thumb
	ldr     r0, [sp, #0x0]
	pop     {r3-r7,pc}
@ 0x226be38

.word 0x226e31c @ 0x226be38
.thumb
Function_226be3c: @ 226be3c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	str     r0, [sp, #0x10]
	mov     r0, r1
	add     r1, sp, #0x24
	bl      Function_225d054
	mov     r1, #0x2
	ldr     r0, [sp, #0x24]
	lsl     r1, r1, #14
	add     r0, r0, r1
	str     r0, [sp, #0x24]
	ldr     r2, [sp, #0x28]
	lsl     r0, r1, #1
	add     r0, r2, r0
	str     r0, [sp, #0x28]
	ldr     r0, [sp, #0x2c]
	mov     r4, #0x0
	sub     r0, r0, r1
	str     r0, [sp, #0x2c]
	ldr     r0, [sp, #0x10]
	ldrh    r0, [r0, #0x4]
	cmp     r0, #0x0
	ble     branch_226bf50
	ldr     r0, [sp, #0x10]
	str     r0, [sp, #0x1c]
	add     r0, #0x8
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x10]
	str     r0, [sp, #0x18]
	add     r0, #0xa8
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x10]
	str     r0, [sp, #0x14]
.thumb
branch_226be80: @ 226be80 :thumb
	cmp     r4, #0x3
	bhi     branch_226befe
	add     r0, r4, r4
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x226be90

Jumppoints_226be90:
.hword branch_226be98 - Jumppoints_226be90 - 2
.hword branch_226beb0 - Jumppoints_226be90 - 2
.hword branch_226bec8 - Jumppoints_226be90 - 2
.hword branch_226bee4 - Jumppoints_226be90 - 2
.thumb
branch_226be98: @ 226be98 :thumb
	mov     r0, #0x3
	ldr     r1, [sp, #0x24]
	lsl     r0, r0, #14
	sub     r7, r1, r0
	mov     r0, #0x1
	ldr     r1, [sp, #0x28]
	lsl     r0, r0, #16
	add     r6, r1, r0
	ldr     r5, [sp, #0x2c]
	mov     r0, #0x0
	str     r0, [sp, #0x20]
	b       branch_226befe
@ 0x226beb0

.thumb
branch_226beb0: @ 226beb0 :thumb
	mov     r0, #0x3
	ldr     r1, [sp, #0x24]
	lsl     r0, r0, #14
	add     r7, r1, r0
	mov     r0, #0x1
	ldr     r1, [sp, #0x28]
	lsl     r0, r0, #16
	add     r6, r1, r0
	ldr     r5, [sp, #0x2c]
	ldr     r0, [pc, #0x90] @ 0x226bf54, (=0x7fff)
	str     r0, [sp, #0x20]
	b       branch_226befe
@ 0x226bec8

.thumb
branch_226bec8: @ 226bec8 :thumb
	mov     r0, #0x2
	ldr     r1, [sp, #0x24]
	lsl     r0, r0, #14
	sub     r7, r1, r0
	ldr     r1, [sp, #0x28]
	lsl     r0, r0, #1
	add     r6, r1, r0
	mov     r0, #0x6
	ldr     r1, [sp, #0x2c]
	lsl     r0, r0, #12
	sub     r5, r1, r0
	ldr     r0, [pc, #0x74] @ 0x226bf54, (=0x7fff)
	str     r0, [sp, #0x20]
	b       branch_226befe
@ 0x226bee4

.thumb
branch_226bee4: @ 226bee4 :thumb
	mov     r0, #0x2
	ldr     r1, [sp, #0x24]
	lsl     r0, r0, #14
	add     r7, r1, r0
	ldr     r1, [sp, #0x28]
	lsl     r0, r0, #1
	add     r6, r1, r0
	mov     r0, #0x6
	ldr     r1, [sp, #0x2c]
	lsl     r0, r0, #12
	sub     r5, r1, r0
	mov     r0, #0x0
	str     r0, [sp, #0x20]
.thumb
branch_226befe: @ 226befe :thumb
	str     r6, [sp, #0x0]
	ldr     r0, [sp, #0x2c]
	mov     r2, r7
	str     r0, [sp, #0x4]
	str     r5, [sp, #0x8]
	mov     r0, #0x12
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x1c]
	ldr     r1, [sp, #0x24]
	ldr     r3, [sp, #0x28]
	bl      Function_22692b4
	mov     r3, #0x6
	ldr     r0, [sp, #0x18]
	ldr     r1, [sp, #0x20]
	ldr     r2, [pc, #0x38] @ 0x226bf58, (=0xccc)
	lsl     r3, r3, #12
	bl      Function_226949c
	ldr     r0, [sp, #0x14]
	ldr     r1, [sp, #0x24]
	add     r0, #0xd8
	ldr     r0, [r0, #0x0]
	ldr     r2, [sp, #0x28]
	ldr     r3, [sp, #0x2c]
	bl      Function_2017350
	ldr     r0, [sp, #0x1c]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r0, #0x28
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x18]
	add     r0, #0xc
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x14]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x10]
	ldrh    r0, [r0, #0x4]
	cmp     r4, r0
	blt     branch_226be80
.thumb
branch_226bf50: @ 226bf50 :thumb
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x226bf54

.word 0x7fff @ 0x226bf54
.word 0xccc @ 0x226bf58
.thumb
Function_226bf5c: @ 226bf5c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x0]
	ldrh    r0, [r0, #0x4]
	cmp     r0, #0x0
	ble     branch_226bfdc
	ldr     r0, [sp, #0x0]
	ldr     r6, [sp, #0x0]
	str     r0, [sp, #0x4]
	add     r0, #0xa8
	add     r6, #0x8
	ldr     r5, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r4, r0
	mov     r7, r6
.thumb
branch_226bf80: @ 226bf80 :thumb
	ldr     r0, [sp, #0x4]
	bl      Function_22694d0
	ldr     r2, [sp, #0x0]
	mov     r1, #0x0
	ldsh    r1, [r2, r1]
	mov     r0, r6
	bl      Function_22692dc
	str     r0, [sp, #0x8]
	mov     r0, r4
	add     r1, sp, #0x10
	bl      Function_2269508
	mov     r0, r7
	add     r1, sp, #0x14
	add     r2, sp, #0x18
	add     r3, sp, #0x1c
	bl      Function_2269488
	ldr     r1, [sp, #0x14]
	ldr     r0, [sp, #0x10]
	ldr     r2, [sp, #0x18]
	add     r1, r1, r0
	mov     r0, r5
	str     r1, [sp, #0x14]
	add     r0, #0xd8
	ldr     r0, [r0, #0x0]
	ldr     r3, [sp, #0x1c]
	bl      Function_2017350
	ldr     r0, [sp, #0x4]
	add     r6, #0x28
	add     r0, #0xc
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0xc]
	add     r4, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x0]
	add     r7, #0x28
	ldrh    r1, [r0, #0x4]
	ldr     r0, [sp, #0xc]
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r0, r1
	blt     branch_226bf80
.thumb
branch_226bfdc: @ 226bfdc :thumb
	ldr     r0, [sp, #0x8]
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x226bfe2


.align 2, 0


.thumb
Function_226bfe4: @ 226bfe4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	str     r0, [sp, #0x10]
	mov     r0, r1
	add     r1, sp, #0x1c
	bl      Function_225d054
	mov     r0, #0x2
	ldr     r1, [sp, #0x1c]
	lsl     r0, r0, #14
	add     r1, r1, r0
	str     r1, [sp, #0x1c]
	ldr     r1, [sp, #0x20]
	mov     r4, #0x0
	add     r1, r1, r0
	str     r1, [sp, #0x20]
	ldr     r1, [sp, #0x24]
	sub     r0, r1, r0
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x10]
	ldrh    r0, [r0, #0x4]
	cmp     r0, #0x0
	ble     branch_226c0c6
	ldr     r1, [sp, #0x10]
	str     r1, [sp, #0x18]
	add     r1, #0x8
	str     r1, [sp, #0x18]
	ldr     r1, [sp, #0x10]
	str     r1, [sp, #0x14]
	add     r1, #0xa8
	str     r1, [sp, #0x14]
.thumb
branch_226c022: @ 226c022 :thumb
	cmp     r4, #0x3
	bhi     branch_226c08a
	add     r1, r4, r4
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x226c032

Jumppoints_226c032:
.hword branch_226c03a - Jumppoints_226c032 - 2
.hword branch_226c04a - Jumppoints_226c032 - 2
.hword branch_226c05a - Jumppoints_226c032 - 2
.hword branch_226c07c - Jumppoints_226c032 - 2
.thumb
branch_226c03a: @ 226c03a :thumb
	mov     r0, #0x1
	ldr     r1, [sp, #0x1c]
	lsl     r0, r0, #16
	sub     r7, r1, r0
	ldr     r1, [sp, #0x24]
	ldr     r6, [sp, #0x20]
	add     r5, r1, r0
	b       branch_226c08a
@ 0x226c04a

.thumb
branch_226c04a: @ 226c04a :thumb
	mov     r0, #0x1
	ldr     r1, [sp, #0x1c]
	lsl     r0, r0, #16
	add     r7, r1, r0
	ldr     r1, [sp, #0x24]
	ldr     r6, [sp, #0x20]
	add     r5, r1, r0
	b       branch_226c08a
@ 0x226c05a

.thumb
branch_226c05a: @ 226c05a :thumb
	cmp     r0, #0x3
	bne     branch_226c06c
	mov     r0, #0x2
	ldr     r1, [sp, #0x24]
	lsl     r0, r0, #16
	ldr     r7, [sp, #0x1c]
	ldr     r6, [sp, #0x20]
	sub     r5, r1, r0
	b       branch_226c08a
@ 0x226c06c

.thumb
branch_226c06c: @ 226c06c :thumb
	mov     r0, #0x1
	ldr     r1, [sp, #0x1c]
	lsl     r0, r0, #16
	sub     r7, r1, r0
	ldr     r1, [sp, #0x24]
	ldr     r6, [sp, #0x20]
	sub     r5, r1, r0
	b       branch_226c08a
@ 0x226c07c

.thumb
branch_226c07c: @ 226c07c :thumb
	mov     r0, #0x1
	ldr     r1, [sp, #0x1c]
	lsl     r0, r0, #16
	add     r7, r1, r0
	ldr     r1, [sp, #0x24]
	ldr     r6, [sp, #0x20]
	sub     r5, r1, r0
.thumb
branch_226c08a: @ 226c08a :thumb
	str     r6, [sp, #0x0]
	ldr     r0, [sp, #0x24]
	mov     r2, r7
	str     r0, [sp, #0x4]
	str     r5, [sp, #0x8]
	mov     r0, #0x13
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x18]
	ldr     r1, [sp, #0x1c]
	ldr     r3, [sp, #0x20]
	bl      Function_22692b4
	mov     r3, #0x2
	ldr     r0, [sp, #0x14]
	ldr     r1, [pc, #0x28] @ 0x226c0d0, (=0x1555)
	ldr     r2, [pc, #0x28] @ 0x226c0d4, (=0x71c)
	lsl     r3, r3, #16
	bl      Function_226949c
	ldr     r0, [sp, #0x18]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r0, #0x28
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x14]
	add     r0, #0xc
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x10]
	ldrh    r0, [r0, #0x4]
	cmp     r4, r0
	blt     branch_226c022
.thumb
branch_226c0c6: @ 226c0c6 :thumb
	ldr     r0, [sp, #0x10]
	bl      Function_226c0d8
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x226c0d0

.word 0x1555 @ 0x226c0d0
.word 0x71c @ 0x226c0d4
.thumb
Function_226c0d8: @ 226c0d8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	ldrh    r0, [r5, #0x4]
	cmp     r0, #0x0
	ble     branch_226c16a
	mov     r4, r5
	mov     r0, r5
	add     r4, #0xa8
	str     r0, [sp, #0x4]
	add     r0, #0x8
	str     r0, [sp, #0x4]
	str     r4, [sp, #0x0]
	mov     r6, r0
	mov     r7, r5
.thumb
branch_226c0fa: @ 226c0fa :thumb
	mov     r0, #0x0
	ldsh    r0, [r5, r0]
	cmp     r0, #0xe
	bne     branch_226c112
	mov     r3, #0x3
	ldr     r2, [pc, #0x70] @ 0x226c178, (=0xe38)
	mov     r0, r4
	mov     r1, #0x0
	lsl     r3, r3, #14
	bl      Function_226949c
	b       branch_226c118
@ 0x226c112

.thumb
branch_226c112: @ 226c112 :thumb
	mov     r0, r4
	bl      Function_22694d0
.thumb
branch_226c118: @ 226c118 :thumb
	mov     r1, #0x0
	ldsh    r1, [r5, r1]
	ldr     r0, [sp, #0x4]
	bl      Function_22692dc
	ldr     r0, [sp, #0x0]
	add     r1, sp, #0xc
	bl      Function_2269508
	mov     r0, r6
	add     r1, sp, #0x10
	add     r2, sp, #0x14
	add     r3, sp, #0x18
	bl      Function_2269488
	ldr     r1, [sp, #0x14]
	ldr     r0, [sp, #0xc]
	ldr     r3, [sp, #0x18]
	add     r2, r1, r0
	mov     r0, r7
	str     r2, [sp, #0x14]
	add     r0, #0xd8
	ldr     r0, [r0, #0x0]
	ldr     r1, [sp, #0x10]
	bl      Function_2017350
	ldr     r0, [sp, #0x4]
	ldrh    r1, [r5, #0x4]
	add     r0, #0x28
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	add     r4, #0xc
	add     r0, #0xc
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x8]
	add     r6, #0x28
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d3f @ add r7, r7, #0x4
	str     r0, [sp, #0x8]
	cmp     r0, r1
	blt     branch_226c0fa
.thumb
branch_226c16a: @ 226c16a :thumb
	mov     r0, #0x0
	ldsh    r1, [r5, r0]
	cmp     r1, #0x16
	blt     branch_226c174
	mov     r0, #0x1
.thumb
branch_226c174: @ 226c174 :thumb
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x226c178

.word 0xe38 @ 0x226c178
.thumb
Function_226c17c: @ 226c17c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0
	mov     r0, r1
	add     r1, sp, #0x10
	bl      Function_225d054
	mov     r1, #0x2
	ldr     r0, [sp, #0x10]
	lsl     r1, r1, #14
	add     r0, r0, r1
	str     r0, [sp, #0x10]
	mov     r0, #0x5
	ldr     r2, [sp, #0x14]
	lsl     r0, r0, #14
	add     r0, r2, r0
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x18]
	mov     r4, #0x0
	sub     r0, r0, r1
	str     r0, [sp, #0x18]
	ldrh    r0, [r5, #0x4]
	cmp     r0, #0x0
	ble     branch_226c1d8
	mov     r6, #0x5
	mov     r7, #0x7
	lsl     r6, r6, #12
	lsl     r7, r7, #12
.thumb
branch_226c1b4: @ 226c1b4 :thumb
	str     r6, [sp, #0x0]
	mov     r0, #0xe
	mov     r3, #0xd
	str     r7, [sp, #0x4]
	lsl     r0, r0, #12
	str     r0, [sp, #0x8]
	mov     r0, #0x8
	str     r0, [sp, #0xc]
	mov     r0, r5
	mov     r1, r4
	add     r2, sp, #0x10
	lsl     r3, r3, #12
	bl      Function_226c2a4
	ldrh    r0, [r5, #0x4]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r0
	blt     branch_226c1b4
.thumb
branch_226c1d8: @ 226c1d8 :thumb
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x226c1dc

.thumb
Function_226c1dc: @ 226c1dc :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r5, r0
	ldrh    r0, [r5, #0x4]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_226c27e
	mov     r4, r5
	str     r4, [sp, #0x10]
	add     r4, #0x8
	str     r4, [sp, #0x10]
	mov     r7, r5
.thumb
branch_226c1f4: @ 226c1f4 :thumb
	mov     r1, #0x0
	ldsh    r1, [r5, r1]
	ldr     r0, [sp, #0x10]
	bl      Function_22692dc
	str     r0, [sp, #0x14]
	mov     r0, r4
	add     r1, sp, #0x18
	add     r2, sp, #0x1c
	add     r3, sp, #0x20
	bl      Function_2269488
	mov     r0, r7
	add     r0, #0xd8
	ldr     r0, [r0, #0x0]
	ldr     r1, [sp, #0x18]
	ldr     r2, [sp, #0x1c]
	ldr     r3, [sp, #0x20]
	bl      Function_2017350
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x1
	bne     branch_226c26c
	ldrb    r0, [r5, #0x7]
	add     r2, sp, #0x18
	cmp     r0, #0x0
	bne     branch_226c24a
	mov     r0, #0x1
	lsl     r0, r0, #14
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x6c] @ 0x226c2a0, (=0xffffd000)
	ldr     r3, [pc, #0x6c] @ 0x226c2a0, (=0xffffd000)
	str     r0, [sp, #0x4]
	mov     r0, #0x3
	lsl     r0, r0, #12
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	str     r0, [sp, #0xc]
	mov     r0, r5
	mov     r1, r6
	bl      Function_226c2a4
	b       branch_226c26c
@ 0x226c24a

.thumb
branch_226c24a: @ 226c24a :thumb
	mov     r0, #0x5
	lsl     r0, r0, #12
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	lsl     r0, r0, #12
	str     r0, [sp, #0x4]
	mov     r0, #0xa
	lsl     r0, r0, #12
	str     r0, [sp, #0x8]
	mov     r0, #0x4
	mov     r3, #0xa
	str     r0, [sp, #0xc]
	mov     r0, r5
	mov     r1, r6
	lsl     r3, r3, #12
	bl      Function_226c2a4
.thumb
branch_226c26c: @ 226c26c :thumb
	ldr     r0, [sp, #0x10]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r0, #0x28
	str     r0, [sp, #0x10]
	ldrh    r0, [r5, #0x4]
	add     r4, #0x28
	.hword  0x1d3f @ add r7, r7, #0x4
	cmp     r6, r0
	blt     branch_226c1f4
.thumb
branch_226c27e: @ 226c27e :thumb
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x1
	bne     branch_226c29a
	ldrb    r0, [r5, #0x7]
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r0, #0x3
	bge     branch_226c294
	strb    r0, [r5, #0x7]
	mov     r0, #0x0
	strh    r0, [r5, #0x0]
	b       branch_226c29a
@ 0x226c294

.thumb
branch_226c294: @ 226c294 :thumb
	add     sp, #0x24
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x226c29a

.thumb
branch_226c29a: @ 226c29a :thumb
	mov     r0, #0x0
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x226c2a0

.word 0xffffd000 @ 0x226c2a0
.thumb
Function_226c2a4: @ 226c2a4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r1
	mov     r7, r0
	mov     r4, r2
	mov     r6, r3
	cmp     r5, #0x3
	bhi     branch_226c302
	add     r3, r5, r5
	add     r3, pc
	ldrh    r3, [r3, #0x6]
	lsl     r3, r3, #16
	asr     r3, r3, #16
	add     pc, r3
@ 0x226c2c0

Jumppoints_226c2c0:
.hword branch_226c2c8 - Jumppoints_226c2c0 - 2
.hword branch_226c2d6 - Jumppoints_226c2c0 - 2
.hword branch_226c2e4 - Jumppoints_226c2c0 - 2
.hword branch_226c2f4 - Jumppoints_226c2c0 - 2
.thumb
branch_226c2c8: @ 226c2c8 :thumb
	ldr     r0, [r4, #0x0]
	ldr     r1, [r4, #0x4]
	sub     r2, r0, r6
	ldr     r0, [sp, #0x28]
	add     r0, r1, r0
	ldr     r1, [r4, #0x8]
	b       branch_226c302
@ 0x226c2d6

.thumb
branch_226c2d6: @ 226c2d6 :thumb
	ldr     r0, [r4, #0x0]
	ldr     r1, [r4, #0x4]
	add     r2, r0, r6
	ldr     r0, [sp, #0x28]
	add     r0, r1, r0
	ldr     r1, [r4, #0x8]
	b       branch_226c302
@ 0x226c2e4

.thumb
branch_226c2e4: @ 226c2e4 :thumb
	ldr     r1, [r4, #0x0]
	ldr     r0, [sp, #0x2c]
	sub     r2, r1, r0
	ldr     r1, [r4, #0x4]
	ldr     r0, [sp, #0x30]
	add     r0, r1, r0
	ldr     r1, [r4, #0x8]
	b       branch_226c302
@ 0x226c2f4

.thumb
branch_226c2f4: @ 226c2f4 :thumb
	ldr     r1, [r4, #0x0]
	ldr     r0, [sp, #0x2c]
	add     r2, r1, r0
	ldr     r1, [r4, #0x4]
	ldr     r0, [sp, #0x30]
	add     r0, r1, r0
	ldr     r1, [r4, #0x8]
.thumb
branch_226c302: @ 226c302 :thumb
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x8]
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	ldr     r0, [sp, #0x34]
	mov     r1, r7
	str     r0, [sp, #0xc]
	mov     r0, #0x28
	add     r1, #0x8
	mul     r0, r5
	add     r0, r1, r0
	ldr     r1, [r4, #0x0]
	ldr     r3, [r4, #0x4]
	bl      Function_22692b4
	lsl     r0, r5, #2
	add     r0, r7, r0
	add     r0, #0xd8
	ldr     r0, [r0, #0x0]
	ldr     r1, [r4, #0x0]
	ldr     r2, [r4, #0x4]
	ldr     r3, [r4, #0x8]
	bl      Function_2017350
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x226c336


.align 2, 0


.thumb
Function_226c338: @ 226c338 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r1, #0x60
	mov     r6, r2
	bl      malloc
	mov     r1, #0x0
	mov     r2, #0x60
	mov     r4, r0
	blx     Call_FillMemWithValue
	mov     r1, #0xa
	ldr     r2, [pc, #0x40] @ 0x226c394, (=0x226e678)
	mul     r1, r5
	mov     r0, r4
	add     r1, r2, r1
	bl      Function_226c568
	ldr     r2, [pc, #0x38] @ 0x226c398, (=0x226e670)
	lsl     r1, r6, #1
	mov     r0, r4
	add     r1, r2, r1
	bl      Function_226c58c
	mov     r1, #0x0
	mov     r2, r4
	mov     r0, #0x3c
.thumb
branch_226c36e: @ 226c36e :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r0, [r2, #0x48]
	.hword  0x1d12 @ add r2, r2, #0x4
	cmp     r1, #0x2
	blt     branch_226c36e
	mov     r2, #0x0
	mov     r1, r4
	mov     r0, #0x3c
.thumb
branch_226c37e: @ 226c37e :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	str     r0, [r1, #0x50]
	.hword  0x1d09 @ add r1, r1, #0x4
	cmp     r2, #0x4
	blt     branch_226c37e
	mov     r0, r4
	bl      Function_226c598
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x226c392

.align 2
.word 0x226e678 @ 0x226c394
.word 0x226e670 @ 0x226c398



.thumb
Function_226c39c: @ 226c39c :thumb
	ldr     r3, [pc, #0x0] @ 0x226c3a0, (=free+1)
	bx      r3
@ 0x226c3a0

.word free+1 @ 0x226c3a0



.thumb
Function_226c3a4: @ 226c3a4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	str     r0, [sp, #0x4]
	ldr     r4, [sp, #0x4]
	mov     r0, #0x0
	mov     r6, r4
	mov     r5, r4
	mov     r7, r0
	add     r6, #0x30
	add     r5, #0x18
.thumb
branch_226c3b8: @ 226c3b8 :thumb
	ldr     r1, [r4, #0x48]
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r1, #0x3c
	bgt     branch_226c3d4
	str     r1, [r4, #0x48]
	mov     r0, #0x3c
	str     r0, [sp, #0x0]
	ldr     r3, [r4, #0x48]
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	bl      Function_226c50c
	mov     r0, #0x1
.thumb
branch_226c3d4: @ 226c3d4 :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1d36 @ add r6, r6, #0x4
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r7, #0x2
	blt     branch_226c3b8
	ldr     r4, [sp, #0x4]
	mov     r1, #0x0
	mov     r7, r4
	mov     r6, r4
	mov     r5, r4
	str     r1, [sp, #0x8]
	add     r7, #0x8
	add     r6, #0x38
	add     r5, #0x20
.thumb
branch_226c3f2: @ 226c3f2 :thumb
	ldr     r1, [r4, #0x50]
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r1, #0x3c
	bgt     branch_226c40e
	str     r1, [r4, #0x50]
	mov     r0, #0x3c
	str     r0, [sp, #0x0]
	ldr     r3, [r4, #0x50]
	mov     r0, r5
	mov     r1, r6
	mov     r2, r7
	bl      Function_226c50c
	mov     r0, #0x1
.thumb
branch_226c40e: @ 226c40e :thumb
	ldr     r1, [sp, #0x8]
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1d3f @ add r7, r7, #0x4
	.hword  0x1d36 @ add r6, r6, #0x4
	.hword  0x1d2d @ add r5, r5, #0x4
	str     r1, [sp, #0x8]
	cmp     r1, #0x4
	blt     branch_226c3f2
	cmp     r0, #0x0
	beq     branch_226c42a
	ldr     r0, [sp, #0x4]
	bl      Function_226c598
.thumb
branch_226c42a: @ 226c42a :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x226c42e


.align 2, 0


.thumb
Function_226c430: @ 226c430 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldrb    r0, [r5, #0x0]
	ldr     r2, [pc, #0x64] @ 0x226c49c, (=0x226e678)
	strb    r0, [r5, #0x18]
	ldrb    r0, [r5, #0x1]
	strb    r0, [r5, #0x19]
	ldrb    r0, [r5, #0x2]
	strb    r0, [r5, #0x1a]
	ldrb    r0, [r5, #0x3]
	strb    r0, [r5, #0x1b]
	mov     r0, #0x0
	str     r0, [r5, #0x48]
	mov     r0, #0xa
	mul     r0, r1
	add     r4, r2, r0
	mov     r0, r5
	add     r0, #0x30
	mov     r1, r4
	bl      Function_226c4e8
	add     r6, r4, #0x2
	mov     r4, r5
	mov     r7, #0x0
	add     r4, #0x38
.thumb
branch_226c462: @ 226c462 :thumb
	ldrb    r1, [r5, #0x8]
	mov     r0, r5
	add     r0, #0x20
	strb    r1, [r0, #0x0]
	mov     r0, r5
	ldrb    r1, [r5, #0x9]
	add     r0, #0x21
	strb    r1, [r0, #0x0]
	mov     r0, r5
	ldrb    r1, [r5, #0xa]
	add     r0, #0x22
	strb    r1, [r0, #0x0]
	mov     r0, r5
	ldrb    r1, [r5, #0xb]
	add     r0, #0x23
	strb    r1, [r0, #0x0]
	mov     r0, #0x0
	str     r0, [r5, #0x50]
	mov     r0, r4
	mov     r1, r6
	bl      Function_226c4e8
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	.hword  0x1cb6 @ add r6, r6, #0x2
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r7, #0x4
	blt     branch_226c462
	pop     {r3-r7,pc}
@ 0x226c49c

.word 0x226e678 @ 0x226c49c
.thumb
Function_226c4a0: @ 226c4a0 :thumb
	ldrb    r2, [r0, #0x4]
	ldr     r3, [pc, #0x1c] @ 0x226c4c0, (=0x226c4e9)
	lsl     r1, r1, #1
	strb    r2, [r0, #0x1c]
	ldrb    r2, [r0, #0x5]
	strb    r2, [r0, #0x1d]
	ldrb    r2, [r0, #0x6]
	strb    r2, [r0, #0x1e]
	ldrb    r2, [r0, #0x7]
	strb    r2, [r0, #0x1f]
	mov     r2, #0x0
	str     r2, [r0, #0x4c]
	ldr     r2, [pc, #0x8] @ 0x226c4c4, (=0x226e670)
	add     r0, #0x34
	add     r1, r2, r1
	bx      r3
@ 0x226c4c0

.word 0x226c4e9 @ 0x226c4c0
.word 0x226e670 @ 0x226c4c4
.thumb
Function_226c4c8: @ 226c4c8 :thumb
	bx      lr
@ 0x226c4ca


.align 2, 0


.thumb
Function_226c4cc: @ 226c4cc :thumb
	push    {r3,r4}
	mov     r3, #0x0
	mov     r2, #0x2
	ldsb    r4, [r0, r3]
	ldsb    r2, [r0, r2]
	mov     r3, #0x1
	ldsb    r0, [r0, r3]
	lsl     r2, r2, #10
	lsl     r0, r0, #5
	orr     r0, r4
	orr     r0, r2
	strh    r0, [r1, #0x0]
	pop     {r3,r4}
	bx      lr
@ 0x226c4e8

.thumb
Function_226c4e8: @ 226c4e8 :thumb
	push    {r3,r4}
	ldrh    r3, [r1, #0x0]
	mov     r2, #0x1f
	and     r3, r2
	strb    r3, [r0, #0x0]
	ldrh    r4, [r1, #0x0]
	lsl     r3, r2, #5
	and     r3, r4
	asr     r3, r3, #5
	strb    r3, [r0, #0x1]
	ldrh    r3, [r1, #0x0]
	lsl     r1, r2, #10
	and     r1, r3
	asr     r1, r1, #10
	strb    r1, [r0, #0x2]
	pop     {r3,r4}
	bx      lr
@ 0x226c50a


.align 2, 0


.thumb
Function_226c50c: @ 226c50c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r0, #0x1
	mov     r4, r2
	ldsb    r2, [r1, r0]
	ldsb    r0, [r5, r0]
	mov     r6, r3
	sub     r0, r2, r0
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	ldsb    r2, [r1, r0]
	ldsb    r0, [r5, r0]
	sub     r0, r2, r0
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	ldsb    r7, [r5, r0]
	ldsb    r0, [r1, r0]
	ldr     r1, [sp, #0x20]
	sub     r0, r0, r7
	mul     r0, r6
	blx     _s32_div_f
	add     r0, r7, r0
	strb    r0, [r4, #0x0]
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x20]
	mul     r0, r6
	blx     _s32_div_f
	mov     r1, #0x1
	ldsb    r1, [r5, r1]
	add     r0, r1, r0
	strb    r0, [r4, #0x1]
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x20]
	mul     r0, r6
	blx     _s32_div_f
	mov     r1, #0x2
	ldsb    r1, [r5, r1]
	add     r0, r1, r0
	strb    r0, [r4, #0x2]
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x226c566


.align 2, 0


.thumb
Function_226c568: @ 226c568 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_226c4e8
	mov     r6, #0x0
	.hword  0x1ca4 @ add r4, r4, #0x2
	add     r5, #0x8
.thumb
branch_226c578: @ 226c578 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_226c4e8
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x4
	blt     branch_226c578
	pop     {r4-r6,pc}
@ 0x226c58c

.thumb
Function_226c58c: @ 226c58c :thumb
	ldr     r3, [pc, #0x4] @ 0x226c594, (=0x226c4e9)
	.hword  0x1d00 @ add r0, r0, #0x4
	bx      r3
@ 0x226c592


.align 2


.word Function_226c4e8+1 @ =0x226c4e9, 0x226c594
.thumb
Function_226c598: @ 226c598 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	add     r7, sp, #0x4
	str     r0, [sp, #0x0]
	mov     r4, #0x0
	mov     r5, r0
	add     r7, #0x2
	add     r6, sp, #0x4
.thumb
branch_226c5a8: @ 226c5a8 :thumb
	mov     r0, r5
	mov     r1, r7
	bl      Function_226c4cc
	ldrh    r1, [r6, #0x2]
	mov     r0, r4
	blx     Function_20af558
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x2
	blt     branch_226c5a8
	ldr     r0, [sp, #0x0]
	add     r1, sp, #0x4
	add     r0, #0x8
	add     r1, #0x2
	bl      Function_226c4cc
	ldr     r0, [sp, #0x0]
	add     r1, sp, #0x4
	add     r0, #0xc
	bl      Function_226c4cc
	add     r1, sp, #0x4
	ldrh    r0, [r1, #0x2]
	ldrh    r1, [r1, #0x0]
	mov     r2, #0x0
	blx     Function_20af56c
	ldr     r0, [sp, #0x0]
	add     r1, sp, #0x4
	add     r0, #0x10
	add     r1, #0x2
	bl      Function_226c4cc
	ldr     r0, [sp, #0x0]
	add     r1, sp, #0x4
	add     r0, #0x14
	str     r0, [sp, #0x0]
	bl      Function_226c4cc
	add     r1, sp, #0x4
	ldrh    r0, [r1, #0x2]
	ldrh    r1, [r1, #0x0]
	mov     r2, #0x0
	blx     Function_20af590
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x226c60a


.align 2, 0


.thumb
Function_226c60c: @ 226c60c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r1
	mov     r1, #0x1c
	mov     r6, r0
	bl      malloc
	mov     r4, r0
	mov     r2, r4
	mov     r1, #0x1c
	mov     r0, #0x0
.thumb
branch_226c622: @ 226c622 :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_226c622
	str     r5, [r4, #0x0]
	mov     r0, r5
	bl      Function_225dee8
	str     r0, [r4, #0x4]
	mov     r0, r5
	bl      Function_225def8
	str     r0, [r4, #0x8]
	mov     r0, r5
	bl      Function_225def0
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0x4]
	bl      0x222e1b8
	bl      Function_226c81c
	mov     r7, r0
	ldr     r0, [r4, #0x4]
	bl      0x222e1d0
	bl      Function_226c848
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x4]
	bl      0x222e1e8
	bl      Function_226c87c
	mov     r3, r0
	ldr     r2, [sp, #0x4]
	mov     r0, r6
	mov     r1, r7
	bl      Function_226c338
	str     r0, [r4, #0x10]
	mov     r0, r5
	mov     r1, r6
	bl      Function_226ce54
	str     r0, [r4, #0x14]
	ldr     r0, [r4, #0x4]
	ldr     r1, [r4, #0x8]
	mov     r2, r6
	bl      Function_226c8b4
	str     r0, [r4, #0x18]
	ldr     r0, [r4, #0xc]
	mov     r1, r7
	bl      Function_225caec
	ldr     r0, [r4, #0x4]
	bl      0x222e158
	mov     r5, r0
	ldr     r0, [r4, #0x4]
	bl      0x222e120
	ldr     r0, [r4, #0x4]
	bl      0x222e170
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x4]
	bl      0x222e19c
	mov     r7, r0
	ldr     r0, [r4, #0x4]
	bl      0x222e12c
	mov     r6, r0
	ldr     r0, [r4, #0x4]
	bl      0x222e190
	cmp     r5, #0x2
	bne     branch_226c6c8
	ldr     r0, [r4, #0x8]
	bl      Function_226260c
.thumb
branch_226c6c8: @ 226c6c8 :thumb
	cmp     r5, #0x1
	beq     branch_226c6dc
	cmp     r5, #0x0
	bne     branch_226c6dc
	cmp     r7, #0x1
	bne     branch_226c6dc
	ldr     r0, [r4, #0x8]
	mov     r1, #0x3
	bl      Function_2262658
.thumb
branch_226c6dc: @ 226c6dc :thumb
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x1
	bne     branch_226c6e8
	ldr     r0, [r4, #0x8]
	bl      Function_226246c
.thumb
branch_226c6e8: @ 226c6e8 :thumb
	cmp     r6, #0x1
	bne     branch_226c6f2
	mov     r0, r4
	bl      Function_226c8a8
.thumb
branch_226c6f2: @ 226c6f2 :thumb
	mov     r0, r4
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x226c6f8

.thumb
Function_226c6f8: @ 226c6f8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x18]
	bl      Function_226c914
	ldr     r0, [r4, #0x14]
	bl      Function_226cf38
	ldr     r0, [r4, #0x10]
	bl      Function_226c39c
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x226c716


.align 2, 0


.thumb
Function_226c718: @ 226c718 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	mov     r1, #0x1
	bl      0x222e084
	cmp     r0, #0x0
	beq     branch_226c744
	ldr     r0, [r5, #0x4]
	bl      0x222e1b8
	bl      Function_226c81c
	mov     r4, r0
	ldr     r0, [r5, #0x10]
	mov     r1, r4
	bl      Function_226c430
	ldr     r0, [r5, #0xc]
	mov     r1, r4
	bl      Function_225cb08
.thumb
branch_226c744: @ 226c744 :thumb
	ldr     r0, [r5, #0x4]
	mov     r1, #0x2
	bl      0x222e084
	cmp     r0, #0x0
	beq     branch_226c762
	ldr     r0, [r5, #0x4]
	bl      0x222e1d0
	bl      Function_226c848
	mov     r1, r0
	ldr     r0, [r5, #0x10]
	bl      Function_226c4a0
.thumb
branch_226c762: @ 226c762 :thumb
	ldr     r0, [r5, #0x4]
	mov     r1, #0x3
	bl      0x222e084
	cmp     r0, #0x0
	beq     branch_226c780
	ldr     r0, [r5, #0x4]
	bl      0x222e1e8
	bl      Function_226c87c
	mov     r1, r0
	ldr     r0, [r5, #0x10]
	bl      Function_226c4c8
.thumb
branch_226c780: @ 226c780 :thumb
	ldr     r0, [r5, #0x4]
	bl      0x222e19c
	cmp     r0, #0x1
	bne     branch_226c7a6
	ldr     r0, [r5, #0x4]
	bl      0x222e158
	cmp     r0, #0x0
	bne     branch_226c7a6
	ldr     r0, [r5, #0x8]
	bl      Function_226271c
	cmp     r0, #0x0
	bne     branch_226c7a6
	ldr     r0, [r5, #0x8]
	mov     r1, #0x1
	bl      Function_2262658
.thumb
branch_226c7a6: @ 226c7a6 :thumb
	ldr     r0, [r5, #0x4]
	mov     r1, #0x5
	bl      0x222e084
	cmp     r0, #0x0
	beq     branch_226c7ca
	ldr     r0, [r5, #0x4]
	bl      0x222e158
	cmp     r0, #0x1
	bne     branch_226c7ca
	ldr     r0, [r5, #0x8]
	bl      Function_226260c
	ldr     r0, [r5, #0x8]
	mov     r1, #0x2
	bl      Function_2262658
.thumb
branch_226c7ca: @ 226c7ca :thumb
	ldr     r0, [r5, #0x4]
	mov     r1, #0x6
	bl      0x222e084
	cmp     r0, #0x0
	beq     branch_226c7e6
	ldr     r0, [r5, #0x4]
	bl      0x222e170
	cmp     r0, #0x1
	bne     branch_226c7e6
	ldr     r0, [r5, #0x8]
	bl      Function_226246c
.thumb
branch_226c7e6: @ 226c7e6 :thumb
	ldr     r0, [r5, #0x4]
	bl      0x222e12c
	cmp     r0, #0x1
	bne     branch_226c7fc
	ldr     r0, [r5, #0x8]
	bl      Function_2262478
	mov     r0, r5
	bl      Function_226c8a8
.thumb
branch_226c7fc: @ 226c7fc :thumb
	ldr     r0, [r5, #0x10]
	bl      Function_226c3a4
	ldr     r0, [r5, #0x14]
	bl      Function_226cf40
	ldr     r0, [r5, #0x18]
	bl      Function_226c924
	pop     {r3-r5,pc}
@ 0x226c810

.thumb
Function_226c810: @ 226c810 :thumb
	ldr     r3, [pc, #0x4] @ 0x226c818, (=0x226cffd)
	ldr     r0, [r0, #0x14]
	bx      r3
@ 0x226c816


.align 2


.word 0x226cffd @ 0x226c818
.thumb
Function_226c81c: @ 226c81c :thumb
	push    {r3,lr}
	cmp     r0, #0x6
	bhi     branch_226c840
	add     r1, r0, r0
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x226c82e

Jumppoints_226c82e:
.hword branch_226c840 - Jumppoints_226c82e - 2
.hword branch_226c83c - Jumppoints_226c82e - 2
.hword branch_226c83c - Jumppoints_226c82e - 2
.hword branch_226c83c - Jumppoints_226c82e - 2
.hword branch_226c83c - Jumppoints_226c82e - 2
.hword branch_226c83c - Jumppoints_226c82e - 2
.hword branch_226c83c - Jumppoints_226c82e - 2
.thumb
branch_226c83c: @ 226c83c :thumb
	.hword  0x1e40 @ sub r0, r0, #0x1
	pop     {r3,pc}
@ 0x226c840

.thumb
branch_226c840: @ 226c840 :thumb
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x226c848

.thumb
Function_226c848: @ 226c848 :thumb
	push    {r3,lr}
	cmp     r0, #0xa
	bhi     branch_226c874
	add     r1, r0, r0
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x226c85a

Jumppoints_226c85a:
.hword branch_226c874 - Jumppoints_226c85a - 2
.hword branch_226c874 - Jumppoints_226c85a - 2
.hword branch_226c874 - Jumppoints_226c85a - 2
.hword branch_226c874 - Jumppoints_226c85a - 2
.hword branch_226c874 - Jumppoints_226c85a - 2
.hword branch_226c874 - Jumppoints_226c85a - 2
.hword branch_226c874 - Jumppoints_226c85a - 2
.hword branch_226c870 - Jumppoints_226c85a - 2
.hword branch_226c870 - Jumppoints_226c85a - 2
.hword branch_226c870 - Jumppoints_226c85a - 2
.hword branch_226c870 - Jumppoints_226c85a - 2
.thumb
branch_226c870: @ 226c870 :thumb
	.hword  0x1fc0 @ sub r0, r0, #0x7
	pop     {r3,pc}
@ 0x226c874

.thumb
branch_226c874: @ 226c874 :thumb
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x226c87c

.thumb
Function_226c87c: @ 226c87c :thumb
	push    {r3,lr}
	mov     r1, r0
	sub     r1, #0xb
	cmp     r1, #0x3
	bhi     branch_226c89e
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x226c892

Jumppoints_226c892:
.hword branch_226c89a - Jumppoints_226c892 - 2
.hword branch_226c89a - Jumppoints_226c892 - 2
.hword branch_226c89a - Jumppoints_226c892 - 2
.hword branch_226c89a - Jumppoints_226c892 - 2
.thumb
branch_226c89a: @ 226c89a :thumb
	sub     r0, #0xb
	pop     {r3,pc}
@ 0x226c89e

.thumb
branch_226c89e: @ 226c89e :thumb
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x226c8a6


.align 2, 0


.thumb
Function_226c8a8: @ 226c8a8 :thumb
	ldr     r3, [pc, #0x4] @ 0x226c8b0, (=Function_20af558)
	mov     r0, #0x2
	mov     r1, #0x0
	bx      r3
@ 0x226c8b0

.word Function_20af558 @ 0x226c8b0



.thumb
Function_226c8b4: @ 226c8b4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, r2
	mov     r1, #0x10
	bl      malloc
	mov     r4, r0
	mov     r2, r4
	mov     r1, #0x10
	mov     r0, #0x0
.thumb
branch_226c8ca: @ 226c8ca :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_226c8ca
	str     r5, [r4, #0x0]
	mov     r0, r5
	str     r6, [r4, #0x4]
	bl      0x222f104
	mov     r7, r0
	mov     r0, r5
	bl      0x222e158
	strh    r0, [r4, #0xa]
	ldrh    r0, [r4, #0xa]
	cmp     r0, #0x0
	beq     branch_226c90e
	cmp     r7, #0x0
	beq     branch_226c90e
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_226251c
	mov     r0, r4
	bl      Function_226cc3c
	mov     r0, r5
	bl      0x222f114
	mov     r2, r0
	mov     r0, r4
	mov     r1, r7
	bl      Function_226cb1c
.thumb
branch_226c90e: @ 226c90e :thumb
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x226c912


.align 2, 0


.thumb
Function_226c914: @ 226c914 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_226cc58
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x226c924

.thumb
Function_226c924: @ 226c924 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	bl      0x222f104
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	bl      0x222f114
	mov     r7, r0
	ldr     r0, [r5, #0x0]
	bl      0x222e158
	mov     r6, r0
	ldrh    r0, [r5, #0xa]
	cmp     r0, r6
	beq     branch_226c964
	strh    r6, [r5, #0xa]
	cmp     r6, #0x1
	bne     branch_226c964
	ldr     r0, [r5, #0x4]
	mov     r1, #0x1
	bl      Function_226251c
	mov     r0, r5
	mov     r1, r4
	mov     r2, r7
	bl      Function_226cb1c
	mov     r0, r5
	bl      Function_226cc3c
.thumb
branch_226c964: @ 226c964 :thumb
	cmp     r6, #0x0
	beq     branch_226c982
	ldrb    r0, [r5, #0x8]
	cmp     r0, r4
	beq     branch_226c978
	mov     r0, r5
	mov     r1, r4
	mov     r2, r7
	bl      Function_226cb1c
.thumb
branch_226c978: @ 226c978 :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, r7
	bl      Function_226c984
.thumb
branch_226c982: @ 226c982 :thumb
	pop     {r3-r7,pc}
@ 0x226c984

.thumb
Function_226c984: @ 226c984 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r6, r2
	cmp     r4, #0x6
	bcc     branch_226c994
	bl      ErrorHandling
.thumb
branch_226c994: @ 226c994 :thumb
	cmp     r4, #0x6
	bcs     branch_226c9a4
	ldr     r2, [pc, #0xc] @ 0x226c9a8, (=0x226e6e4)
	lsl     r3, r4, #2
	ldr     r2, [r2, r3]
	mov     r0, r5
	mov     r1, r6
	blx     r2
.thumb
branch_226c9a4: @ 226c9a4 :thumb
	pop     {r4-r6,pc}
@ 0x226c9a6


.align 2


.word 0x226e6e4 @ 0x226c9a8
.thumb
Function_226c9ac: @ 226c9ac :thumb
	bx      lr
@ 0x226c9ae


.align 2, 0


.thumb
Function_226c9b0: @ 226c9b0 :thumb
	bx      lr
@ 0x226c9b2


.align 2, 0


.thumb
Function_226c9b4: @ 226c9b4 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r0, r1
	mov     r1, #0xe
	blx     _u32_div_f
	cmp     r1, #0x0
	bne     branch_226ca2e
	ldr     r5, [pc, #0x68] @ 0x226ca30, (=0x226e74c)
	mov     r4, #0x0
.thumb
branch_226c9c8: @ 226c9c8 :thumb
	ldr     r0, [r7, #0xc]
	mov     r1, r4
	lsl     r2, r0, #3
	ldr     r0, [pc, #0x64] @ 0x226ca34, (=0x226e72c)
	mov     r6, #0x0
	add     r3, r0, r2
	mov     r0, #0x3
	and     r1, r0
	ldr     r0, [pc, #0x58] @ 0x226ca34, (=0x226e72c)
	ldr     r0, [r0, r2]
	cmp     r1, r0
	bne     branch_226c9e8
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r6, r0
	b       branch_226c9f4
@ 0x226c9e8

.thumb
branch_226c9e8: @ 226c9e8 :thumb
	ldr     r0, [r3, #0x4]
	cmp     r1, r0
	bne     branch_226c9f4
	mov     r0, r6
	str     r0, [sp, #0x0]
	mov     r6, #0x1
.thumb
branch_226c9f4: @ 226c9f4 :thumb
	cmp     r6, #0x1
	bne     branch_226ca1a
	cmp     r4, #0x11
	bcs     branch_226ca16
	ldrb    r1, [r5, #0x0]
	mov     r3, #0x1
	ldr     r0, [r7, #0x4]
	ldr     r2, [sp, #0x0]
	lsl     r3, r3, #12
	bl      Function_2262754
	mov     r6, r0
	cmp     r6, #0x1
	beq     branch_226ca1c
	bl      ErrorHandling
	b       branch_226ca1c
@ 0x226ca16

.thumb
branch_226ca16: @ 226ca16 :thumb
	mov     r6, #0x0
	b       branch_226ca1c
@ 0x226ca1a

.thumb
branch_226ca1a: @ 226ca1a :thumb
	mov     r6, #0x1
.thumb
branch_226ca1c: @ 226ca1c :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r6, #0x1
	beq     branch_226c9c8
	ldr     r0, [r7, #0xc]
	add     r1, r0, #0x1
	mov     r0, #0x3
	and     r0, r1
	str     r0, [r7, #0xc]
.thumb
branch_226ca2e: @ 226ca2e :thumb
	pop     {r3-r7,pc}
@ 0x226ca30

.word 0x226e74c @ 0x226ca30
.word 0x226e72c @ 0x226ca34
.thumb
Function_226ca38: @ 226ca38 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r0, r1
	mov     r1, #0x6
	blx     _u32_div_f
	cmp     r1, #0x0
	bne     branch_226cac8
	ldr     r0, [r5, #0xc]
	lsl     r1, r0, #1
	ldr     r0, [pc, #0x7c] @ 0x226cacc, (=0x226e6d4)
	ldrb    r0, [r0, r1]
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x78] @ 0x226cad0, (=0x226e6d5)
	ldrb    r0, [r0, r1]
	add     r1, sp, #0x4
	bl      Function_226cbb4
	ldr     r0, [sp, #0x8]
	mov     r4, #0x0
	cmp     r0, #0x0
	bls     branch_226ca8a
	mov     r7, #0x1
	mov     r6, r4
	lsl     r7, r7, #12
.thumb
branch_226ca6c: @ 226ca6c :thumb
	ldr     r1, [sp, #0x4]
	ldr     r0, [r5, #0x4]
	ldrb    r1, [r1, r4]
	mov     r2, r6
	mov     r3, r7
	bl      Function_2262754
	cmp     r0, #0x1
	beq     branch_226ca82
	bl      ErrorHandling
.thumb
branch_226ca82: @ 226ca82 :thumb
	ldr     r0, [sp, #0x8]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r0
	bcc     branch_226ca6c
.thumb
branch_226ca8a: @ 226ca8a :thumb
	ldr     r0, [sp, #0x0]
	add     r1, sp, #0x4
	bl      Function_226cbb4
	ldr     r0, [sp, #0x8]
	mov     r4, #0x0
	cmp     r0, #0x0
	bls     branch_226cabc
	mov     r6, #0x1
	lsl     r7, r6, #12
.thumb
branch_226ca9e: @ 226ca9e :thumb
	ldr     r1, [sp, #0x4]
	ldr     r0, [r5, #0x4]
	ldrb    r1, [r1, r4]
	mov     r2, r6
	mov     r3, r7
	bl      Function_2262754
	cmp     r0, #0x1
	beq     branch_226cab4
	bl      ErrorHandling
.thumb
branch_226cab4: @ 226cab4 :thumb
	ldr     r0, [sp, #0x8]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r0
	bcc     branch_226ca9e
.thumb
branch_226cabc: @ 226cabc :thumb
	ldr     r0, [r5, #0xc]
	mov     r1, #0x7
	.hword  0x1c40 @ add r0, r0, #0x1
	blx     _u32_div_f
	str     r1, [r5, #0xc]
.thumb
branch_226cac8: @ 226cac8 :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x226cacc

.word 0x226e6d4 @ 0x226cacc
.word 0x226e6d5 @ 0x226cad0
.thumb
Function_226cad4: @ 226cad4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x3
	bcs     branch_226cb0c
	lsl     r2, r0, #3
	ldr     r0, [pc, #0x2c] @ 0x226cb10, (=0x226e6fc)
	ldr     r0, [r0, r2]
	cmp     r0, r1
	bcs     branch_226cb0c
	ldr     r1, [pc, #0x28] @ 0x226cb14, (=0x226e700)
	ldr     r0, [r4, #0x4]
	ldr     r1, [r1, r2]
	bl      Function_226278c
	ldr     r1, [r4, #0xc]
	ldr     r0, [r4, #0x4]
	lsl     r2, r1, #3
	ldr     r1, [pc, #0x18] @ 0x226cb14, (=0x226e700)
	ldr     r1, [r1, r2]
	bl      Function_22625d8
	ldr     r0, [pc, #0x14] @ 0x226cb18, (=0x59d)
	bl      Function_2005748
	ldr     r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
.thumb
branch_226cb0c: @ 226cb0c :thumb
	pop     {r4,pc}
@ 0x226cb0e


.align 2


.word 0x226e6fc @ 0x226cb10
.word 0x226e700 @ 0x226cb14
.word 0x59d @ 0x226cb18
.thumb
Function_226cb1c: @ 226cb1c :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r6, r2
	cmp     r4, #0x6
	bcc     branch_226cb2c
	bl      ErrorHandling
.thumb
branch_226cb2c: @ 226cb2c :thumb
	cmp     r4, #0x6
	bcs     branch_226cb4c
	mov     r1, r5
	mov     r0, #0x0
	add     r1, #0xc
	strb    r0, [r5, #0xc]
	strb    r0, [r1, #0x1]
	strb    r0, [r1, #0x2]
	strb    r0, [r1, #0x3]
	ldr     r2, [pc, #0x10] @ 0x226cb50, (=0x226e714)
	lsl     r3, r4, #2
	ldr     r2, [r2, r3]
	mov     r0, r5
	mov     r1, r6
	blx     r2
	strb    r4, [r5, #0x8]
.thumb
branch_226cb4c: @ 226cb4c :thumb
	pop     {r4-r6,pc}
@ 0x226cb4e


.align 2


.word 0x226e714 @ 0x226cb50
.thumb
Function_226cb54: @ 226cb54 :thumb
	ldr     r3, [pc, #0x8] @ 0x226cb60, (=0x2262725)
	mov     r2, #0x1
	ldr     r0, [r0, #0x4]
	mov     r1, #0x0
	lsl     r2, r2, #12
	bx      r3
@ 0x226cb60

.word 0x2262725 @ 0x226cb60
.thumb
Function_226cb64: @ 226cb64 :thumb
	ldr     r3, [pc, #0x8] @ 0x226cb70, (=0x2262725)
	mov     r1, #0x1
	ldr     r0, [r0, #0x4]
	lsl     r2, r1, #12
	bx      r3
@ 0x226cb6e


.align 2


.word 0x2262725 @ 0x226cb70
.thumb
Function_226cb74: @ 226cb74 :thumb
	ldr     r3, [pc, #0x8] @ 0x226cb80, (=0x2262725)
	mov     r2, #0x1
	ldr     r0, [r0, #0x4]
	mov     r1, #0x0
	lsl     r2, r2, #12
	bx      r3
@ 0x226cb80

.word 0x2262725 @ 0x226cb80
.thumb
Function_226cb84: @ 226cb84 :thumb
	ldr     r3, [pc, #0x8] @ 0x226cb90, (=0x2262725)
	mov     r2, #0x1
	ldr     r0, [r0, #0x4]
	mov     r1, #0x0
	lsl     r2, r2, #12
	bx      r3
@ 0x226cb90

.word 0x2262725 @ 0x226cb90
.thumb
Function_226cb94: @ 226cb94 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_226cc58
	mov     r2, #0x1
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	lsl     r2, r2, #12
	bl      Function_2262724
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	bl      Function_226251c
	pop     {r4,pc}
@ 0x226cbb2


.align 2, 0


.thumb
Function_226cbb4: @ 226cbb4 :thumb
	push    {r3,lr}
	cmp     r0, #0x6
	bhi     branch_226cc1a
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x226cbc6

Jumppoints_226cbc6:
.hword branch_226cbd4 - Jumppoints_226cbc6 - 2
.hword branch_226cbde - Jumppoints_226cbc6 - 2
.hword branch_226cbe8 - Jumppoints_226cbc6 - 2
.hword branch_226cbf2 - Jumppoints_226cbc6 - 2
.hword branch_226cbfc - Jumppoints_226cbc6 - 2
.hword branch_226cc06 - Jumppoints_226cbc6 - 2
.hword branch_226cc10 - Jumppoints_226cbc6 - 2
.thumb
branch_226cbd4: @ 226cbd4 :thumb
	mov     r0, #0x6
	str     r0, [r1, #0x4]
	ldr     r0, [pc, #0x44] @ 0x226cc20, (=0x226e6cc)
	str     r0, [r1, #0x0]
	pop     {r3,pc}
@ 0x226cbde

.thumb
branch_226cbde: @ 226cbde :thumb
	mov     r0, #0x2
	str     r0, [r1, #0x4]
	ldr     r0, [pc, #0x40] @ 0x226cc24, (=0x226e6c4)
	str     r0, [r1, #0x0]
	pop     {r3,pc}
@ 0x226cbe8

.thumb
branch_226cbe8: @ 226cbe8 :thumb
	mov     r0, #0x2
	str     r0, [r1, #0x4]
	ldr     r0, [pc, #0x38] @ 0x226cc28, (=0x226e6bc)
	str     r0, [r1, #0x0]
	pop     {r3,pc}
@ 0x226cbf2

.thumb
branch_226cbf2: @ 226cbf2 :thumb
	mov     r0, #0x1
	str     r0, [r1, #0x4]
	ldr     r0, [pc, #0x34] @ 0x226cc2c, (=0x226e6b4)
	str     r0, [r1, #0x0]
	pop     {r3,pc}
@ 0x226cbfc

.thumb
branch_226cbfc: @ 226cbfc :thumb
	mov     r0, #0x1
	str     r0, [r1, #0x4]
	ldr     r0, [pc, #0x2c] @ 0x226cc30, (=0x226e6b8)
	str     r0, [r1, #0x0]
	pop     {r3,pc}
@ 0x226cc06

.thumb
branch_226cc06: @ 226cc06 :thumb
	mov     r0, #0x2
	str     r0, [r1, #0x4]
	ldr     r0, [pc, #0x28] @ 0x226cc34, (=0x226e6c0)
	str     r0, [r1, #0x0]
	pop     {r3,pc}
@ 0x226cc10

.thumb
branch_226cc10: @ 226cc10 :thumb
	mov     r0, #0x3
	str     r0, [r1, #0x4]
	ldr     r0, [pc, #0x20] @ 0x226cc38, (=0x226e6c8)
	str     r0, [r1, #0x0]
	pop     {r3,pc}
@ 0x226cc1a

.thumb
branch_226cc1a: @ 226cc1a :thumb
	bl      ErrorHandling
	pop     {r3,pc}
@ 0x226cc20

.word 0x226e6cc @ 0x226cc20
.word 0x226e6c4 @ 0x226cc24
.word 0x226e6bc @ 0x226cc28
.word 0x226e6b4 @ 0x226cc2c
.word 0x226e6b8 @ 0x226cc30
.word 0x226e6c0 @ 0x226cc34
.word 0x226e6c8 @ 0x226cc38
.thumb
Function_226cc3c: @ 226cc3c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x9]
	cmp     r0, #0x0
	bne     branch_226cc50
	ldr     r0, [pc, #0xc] @ 0x226cc54, (=0x59e)
	bl      Function_2005748
	mov     r0, #0x1
	strb    r0, [r4, #0x9]
.thumb
branch_226cc50: @ 226cc50 :thumb
	pop     {r4,pc}
@ 0x226cc52


.align 2


.word 0x59e @ 0x226cc54
.thumb
Function_226cc58: @ 226cc58 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x9]
	cmp     r0, #0x0
	beq     branch_226cc6e
	ldr     r0, [pc, #0xc] @ 0x226cc70, (=0x59e)
	mov     r1, #0x0
	bl      Function_20057a4
	mov     r0, #0x0
	strb    r0, [r4, #0x9]
.thumb
branch_226cc6e: @ 226cc6e :thumb
	pop     {r4,pc}
@ 0x226cc70

.word 0x59e @ 0x226cc70
.thumb
Function_226cc74: @ 226cc74 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r4, r1
	mov     r5, r0
	bl      Function_2262e80
	mov     r6, r0
	mov     r0, r4
	bl      Function_225dee8
	str     r0, [sp, #0x0]
	mov     r0, r4
	bl      Function_225def0
	str     r0, [sp, #0x4]
	bl      Function_225ccb0
	mov     r7, r0
	ldr     r0, [sp, #0x4]
	bl      Function_225ccac
	str     r0, [sp, #0x8]
	mov     r0, r5
	bl      Function_2262e84
	cmp     r0, #0x5
	bls     branch_226ccac
	b       branch_226ce46
@ 0x226ccac

.thumb
branch_226ccac: @ 226ccac :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x226ccb8

Jumppoints_226ccb8:
.hword branch_226ccc4 - Jumppoints_226ccb8 - 2
.hword branch_226cd9a - Jumppoints_226ccb8 - 2
.hword branch_226cdaa - Jumppoints_226ccb8 - 2
.hword branch_226cddc - Jumppoints_226ccb8 - 2
.hword branch_226cdfc - Jumppoints_226ccb8 - 2
.hword branch_226ce32 - Jumppoints_226ccb8 - 2
.thumb
branch_226ccc4: @ 226ccc4 :thumb
	mov     r0, r5
	mov     r1, #0x4
	bl      Function_2262e3c
	mov     r6, r0
	ldr     r0, [pc, #0x180] @ 0x226ce50, (=0x5dc)
	bl      Function_2005748
	ldr     r0, [sp, #0x8]
	mov     r1, #0x6
	bl      Function_225cd60
	bl      0x222c0ac
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x4]
	mov     r1, r7
	mov     r2, #0x0
	bl      Function_225cdec
	mov     r0, r7
	mov     r1, #0x0
	bl      Function_225d030
	ldr     r1, [sp, #0xc]
	mov     r0, r7
	bl      Function_225d060
	ldr     r0, [sp, #0x0]
	bl      0x222e12c
	cmp     r0, #0x0
	beq     branch_226cd26
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x3
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, #0x4
	str     r0, [r6, #0x0]
	mov     r0, r4
	bl      Function_225df8c
	mov     r0, r5
	mov     r1, #0x5
	bl      Function_2262e88
	b       branch_226ce4a
@ 0x226cd26

.thumb
branch_226cd26: @ 226cd26 :thumb
	ldr     r0, [sp, #0x0]
	bl      0x222e19c
	cmp     r0, #0x1
	bne     branch_226cd50
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x58
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, #0x4
	str     r0, [r6, #0x0]
	mov     r0, r4
	bl      Function_225df8c
	mov     r0, r5
	mov     r1, #0x5
	bl      Function_2262e88
	b       branch_226ce4a
@ 0x226cd50

.thumb
branch_226cd50: @ 226cd50 :thumb
	ldr     r0, [sp, #0x0]
	bl      0x222e0dc
	cmp     r0, #0x1
	bne     branch_226cd7a
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x57
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, #0x4
	str     r0, [r6, #0x0]
	mov     r0, r4
	bl      Function_225df8c
	mov     r0, r5
	mov     r1, #0x5
	bl      Function_2262e88
	b       branch_226ce4a
@ 0x226cd7a

.thumb
branch_226cd7a: @ 226cd7a :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x51
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, #0x1
	str     r0, [r6, #0x0]
	mov     r0, r4
	bl      Function_225df8c
	mov     r0, r5
	mov     r1, #0x5
	bl      Function_2262e88
	b       branch_226ce4a
@ 0x226cd9a

.thumb
branch_226cd9a: @ 226cd9a :thumb
	mov     r0, r4
	bl      Function_225e164
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_2262e88
	b       branch_226ce4a
@ 0x226cdaa

.thumb
branch_226cdaa: @ 226cdaa :thumb
	mov     r0, r4
	bl      Function_225e1c4
	cmp     r0, #0x0
	beq     branch_226cdbc
	cmp     r0, #0x1
	beq     branch_226cdcc
	cmp     r0, #0x2
	b       branch_226ce4a
@ 0x226cdbc

.thumb
branch_226cdbc: @ 226cdbc :thumb
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_2262e88
	mov     r0, r4
	bl      Function_225e1f8
	b       branch_226ce4a
@ 0x226cdcc

.thumb
branch_226cdcc: @ 226cdcc :thumb
	mov     r0, r5
	mov     r1, #0x4
	bl      Function_2262e88
	mov     r0, r4
	bl      Function_225e1f8
	b       branch_226ce4a
@ 0x226cddc

.thumb
branch_226cddc: @ 226cddc :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x55
	bl      Function_225e20c
	mov     r1, r0
	mov     r0, #0x4
	str     r0, [r6, #0x0]
	mov     r0, r4
	bl      Function_225df8c
	mov     r0, r5
	mov     r1, #0x5
	bl      Function_2262e88
	b       branch_226ce4a
@ 0x226cdfc

.thumb
branch_226cdfc: @ 226cdfc :thumb
	mov     r0, r4
	bl      Function_225dfec
	mov     r0, r4
	bl      Function_225e1f8
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x8]
	mov     r2, #0x1
	bl      Function_225cdec
	mov     r0, r5
	bl      Function_2262e64
	mov     r0, r7
	mov     r1, #0x1
	bl      Function_225d030
	ldr     r0, [sp, #0x4]
	mov     r1, r7
	mov     r2, #0x0
	mov     r3, #0x1
	bl      Function_225cdac
	add     sp, #0x10
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x226ce32

.thumb
branch_226ce32: @ 226ce32 :thumb
	mov     r0, r4
	bl      Function_225dfac
	cmp     r0, #0x1
	bne     branch_226ce4a
	ldr     r1, [r6, #0x0]
	mov     r0, r5
	bl      Function_2262e88
	b       branch_226ce4a
@ 0x226ce46

.thumb
branch_226ce46: @ 226ce46 :thumb
	bl      ErrorHandling
.thumb
branch_226ce4a: @ 226ce4a :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x226ce50

.word 0x5dc @ 0x226ce50
.thumb
Function_226ce54: @ 226ce54 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r0, r1
	mov     r1, #0xc4
	bl      malloc
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, #0xc4
	blx     Call_FillMemWithValue
	str     r5, [r4, #0x0]
	mov     r0, r5
	bl      Function_225dee8
	str     r0, [r4, #0x4]
	mov     r0, r5
	bl      Function_225def8
	str     r0, [r4, #0x8]
	mov     r0, r5
	bl      Function_225df00
	str     r0, [r4, #0xc]
	bl      Function_225c8a8
	add     r1, r0, #0x6
	mov     r0, r4
	add     r0, #0xbc
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xbc
	ldr     r1, [r0, #0x0]
	mov     r0, #0x7
	mvn     r0, r0
	sub     r1, r0, r1
	mov     r0, r4
	add     r0, #0xc0
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xbc
	ldr     r0, [r0, #0x0]
	ldr     r6, [pc, #0x88] @ 0x226cf34, (=0x226e760)
	lsl     r1, r0, #16
	mov     r0, r4
	add     r0, #0xbc
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	mov     r7, #0x0
	lsl     r1, r0, #16
	mov     r0, r4
	add     r0, #0xc0
	str     r1, [r0, #0x0]
	mov     r5, r4
.thumb
branch_226cec6: @ 226cec6 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldrb    r1, [r6, #0x0]
	add     r2, sp, #0x4
	ldr     r0, [r4, #0xc]
	add     r2, #0x2
	add     r3, sp, #0x4
	bl      Function_225c8d8
	add     r0, sp, #0x4
	ldrh    r0, [r0, #0x2]
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1c76 @ add r6, r6, #0x1
	lsl     r1, r0, #4
	mov     r0, r5
	add     r0, #0xaa
	strh    r1, [r0, #0x0]
	add     r0, sp, #0x4
	ldrh    r0, [r0, #0x0]
	lsl     r1, r0, #4
	mov     r0, r5
	add     r0, #0xac
	.hword  0x1d2d @ add r5, r5, #0x4
	strh    r1, [r0, #0x0]
	cmp     r7, #0x3
	blt     branch_226cec6
	mov     r5, #0x0
.thumb
branch_226cefc: @ 226cefc :thumb
	mov     r2, r4
	add     r2, #0xbc
	ldr     r0, [r4, #0x8]
	ldr     r2, [r2, #0x0]
	mov     r1, r5
	bl      Function_22622b0
	ldr     r0, [r4, #0x4]
	mov     r1, r5
	bl      0x222eb7c
	cmp     r0, #0x1
	bne     branch_226cf26
	mov     r0, r4
	mov     r1, r5
	bl      Function_226d020
	mov     r0, r4
	mov     r1, r5
	bl      Function_226d46c
.thumb
branch_226cf26: @ 226cf26 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x9
	blt     branch_226cefc
	mov     r0, r4
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x226cf32

.align 2
.word 0x226e760 @ 0x226cf34



.thumb
Function_226cf38: @ 226cf38 :thumb
	ldr     r3, [pc, #0x0] @ 0x226cf3c, (=free+1)
	bx      r3
@ 0x226cf3c

.word free+1 @ 0x226cf3c



.thumb
Function_226cf40: @ 226cf40 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	bl      0x222e338
	mov     r1, r0
	ldr     r0, [r5, #0x4]
	bl      0x222eba4
	mov     r1, #0x0
	mvn     r1, r1
	str     r0, [sp, #0x8]
	cmp     r0, r1
	bne     branch_226cf62
	mov     r6, #0x0
	b       branch_226cf6c
@ 0x226cf62

.thumb
branch_226cf62: @ 226cf62 :thumb
	add     r1, sp, #0x8
	add     r2, sp, #0x4
	bl      0x222ec04
	mov     r6, #0x1
.thumb
branch_226cf6c: @ 226cf6c :thumb
	mov     r4, #0x0
.thumb
branch_226cf6e: @ 226cf6e :thumb
	ldr     r0, [r5, #0x4]
	mov     r1, r4
	bl      0x222eb7c
	cmp     r0, #0x1
	ldr     r0, [r5, #0x8]
	bne     branch_226cfb6
	mov     r1, r4
	mov     r2, #0x1
	bl      Function_22623c4
	mov     r0, r5
	mov     r1, r4
	bl      Function_226d020
	mov     r0, r5
	mov     r1, r4
	bl      Function_226d46c
	cmp     r6, #0x0
	beq     branch_226cfa4
	ldr     r0, [sp, #0x8]
	cmp     r0, r4
	bne     branch_226cfa2
	mov     r7, #0x1
	b       branch_226cfa4
@ 0x226cfa2

.thumb
branch_226cfa2: @ 226cfa2 :thumb
	mov     r7, #0x0
.thumb
branch_226cfa4: @ 226cfa4 :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, r4
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r2, r6
	mov     r3, r7
	bl      Function_226d0e8
	b       branch_226cfbe
@ 0x226cfb6

.thumb
branch_226cfb6: @ 226cfb6 :thumb
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_22623c4
.thumb
branch_226cfbe: @ 226cfbe :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x9
	blt     branch_226cf6e
	mov     r7, r5
	mov     r6, #0x0
	mov     r4, r5
	add     r7, #0x2c
.thumb
branch_226cfcc: @ 226cfcc :thumb
	ldr     r0, [r5, #0x8]
	mov     r1, r6
	bl      Function_226241c
	strb    r0, [r4, #0x10]
	ldr     r1, [r5, #0x8]
	mov     r0, r7
	mov     r2, r6
	bl      Function_226d2d8
	strb    r0, [r4, #0x11]
	ldr     r0, [r5, #0x8]
	mov     r1, r6
	bl      Function_2262444
	strb    r0, [r4, #0x12]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1ce4 @ add r4, r4, #0x3
	add     r7, #0xe
	cmp     r6, #0x9
	blt     branch_226cfcc
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x226cffa


.align 2, 0


.thumb
Function_226cffc: @ 226cffc :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r6, r0
	mov     r4, r2
	cmp     r5, #0x9
	bcc     branch_226d00c
	bl      ErrorHandling
.thumb
branch_226d00c: @ 226d00c :thumb
	cmp     r4, #0x3
	blt     branch_226d014
	bl      ErrorHandling
.thumb
branch_226d014: @ 226d014 :thumb
	lsl     r0, r5, #1
	add     r0, r5, r0
	add     r0, r6, r0
	add     r0, r0, r4
	ldrb    r0, [r0, #0x10]
	pop     {r4-r6,pc}
@ 0x226d020

.thumb
Function_226d020: @ 226d020 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	str     r1, [sp, #0x0]
	bl      0x222eb8c
	mov     r4, r0
	ldr     r0, [r5, #0x4]
	bl      0x222eb9c
	mov     r6, r0
	mov     r0, r5
	add     r0, #0xc0
	mov     r1, #0x2
	ldr     r0, [r0, #0x0]
	lsl     r1, r1, #12
	blx     FX_Div
	mov     r7, r0
	cmp     r6, #0x0
	ble     branch_226d05c
	lsl     r0, r6, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_226d06a
@ 0x226d05c

.thumb
branch_226d05c: @ 226d05c :thumb
	lsl     r0, r6, #12
	blx     _fflt
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
.thumb
branch_226d06a: @ 226d06a :thumb
	mov     r6, r0
	cmp     r4, #0x0
	ble     branch_226d082
	lsl     r0, r4, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_226d090
@ 0x226d082

.thumb
branch_226d082: @ 226d082 :thumb
	lsl     r0, r4, #12
	blx     _fflt
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
.thumb
branch_226d090: @ 226d090 :thumb
	blx     _ffix
	asr     r1, r0, #31
	asr     r3, r7, #31
	mov     r2, r7
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r4, r2, #12
	orr     r4, r0
	mov     r0, r6
	blx     _ffix
	mov     r1, r0
	mov     r0, r4
	blx     FX_Div
	asr     r2, r0, #31
	lsl     r3, r2, #13
	lsr     r1, r0, #19
	lsl     r2, r0, #13
	mov     r0, #0x2
	orr     r3, r1
	mov     r1, #0x0
	lsl     r0, r0, #10
	add     r2, r2, r0
	adc     r3, r1
	lsl     r0, r3, #20
	lsr     r3, r2, #12
	orr     r3, r0
	mov     r0, r5
	add     r0, #0xbc
	ldr     r2, [r0, #0x0]
	ldr     r0, [r5, #0x8]
	ldr     r1, [sp, #0x0]
	add     r2, r3, r2
	bl      Function_22622b0
	pop     {r3-r7,pc}
@ 0x226d0e8

.thumb
Function_226d0e8: @ 226d0e8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r7, r0
	ldr     r0, [sp, #0x30]
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x30]
	ldr     r0, [r7, #0x4]
	str     r2, [sp, #0x4]
	mov     r5, r3
	bl      0x222eb38
	mov     r6, r0
	ldr     r0, [r7, #0x4]
	bl      0x222eb28
	ldr     r0, [sp, #0x0]
	mov     r4, #0x0
	lsl     r1, r0, #1
	add     r0, r0, r1
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x0]
	mov     r1, #0x3
	blx     _u32_div_f
	str     r1, [sp, #0x8]
	mov     r0, #0xc
	ldr     r1, [pc, #0x120] @ 0x226d240, (=0x226e774)
	mul     r0, r6
	add     r0, r1, r0
	str     r0, [sp, #0xc]
	mov     r0, r7
	str     r0, [sp, #0x14]
	add     r0, #0x2c
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x0]
	mov     r1, #0xe
	mul     r1, r0
	str     r1, [sp, #0x18]
.thumb
branch_226d134: @ 226d134 :thumb
	ldr     r1, [sp, #0x10]
	ldr     r0, [r7, #0x4]
	add     r1, r4, r1
	bl      0x222ebe4
	mov     r6, #0x0
	cmp     r5, #0x1
	bne     branch_226d14c
	ldr     r1, [sp, #0x30]
	cmp     r4, r1
	bne     branch_226d14c
	mov     r6, #0x1
.thumb
branch_226d14c: @ 226d14c :thumb
	cmp     r0, #0x1
	bne     branch_226d232
	cmp     r4, #0x0
	beq     branch_226d15e
	cmp     r4, #0x1
	beq     branch_226d1c2
	cmp     r4, #0x2
	beq     branch_226d1f8
	b       branch_226d232
@ 0x226d15e

.thumb
branch_226d15e: @ 226d15e :thumb
	ldr     r0, [r7, #0x8]
	ldr     r1, [sp, #0x0]
	bl      Function_2262374
	cmp     r0, #0x1
	bne     branch_226d232
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x2
	bne     branch_226d194
	ldr     r3, [sp, #0xc]
	ldr     r0, [sp, #0x4]
	ldrh    r3, [r3, #0x2]
	mov     r1, r5
	mov     r2, r6
	bl      Function_226d27c
	ldr     r0, [sp, #0xc]
	ldrh    r3, [r0, #0x8]
	ldr     r0, [pc, #0xc0] @ 0x226d244, (=0xfffe)
	cmp     r3, r0
	beq     branch_226d1b6
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	mov     r2, r6
	bl      Function_226d24c
	b       branch_226d1b6
@ 0x226d194

.thumb
branch_226d194: @ 226d194 :thumb
	ldr     r3, [sp, #0xc]
	ldr     r0, [sp, #0x4]
	ldrh    r3, [r3, #0x0]
	mov     r1, r5
	mov     r2, r6
	bl      Function_226d27c
	ldr     r0, [sp, #0xc]
	ldrh    r3, [r0, #0x4]
	ldr     r0, [pc, #0x9c] @ 0x226d244, (=0xfffe)
	cmp     r3, r0
	beq     branch_226d1b6
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	mov     r2, r6
	bl      Function_226d24c
.thumb
branch_226d1b6: @ 226d1b6 :thumb
	ldr     r1, [sp, #0x10]
	ldr     r0, [r7, #0x4]
	add     r1, r4, r1
	bl      0x222ebf4
	b       branch_226d232
@ 0x226d1c2

.thumb
branch_226d1c2: @ 226d1c2 :thumb
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x2
	bne     branch_226d1cc
	mov     r1, #0x1
	b       branch_226d1ce
@ 0x226d1cc

.thumb
branch_226d1cc: @ 226d1cc :thumb
	mov     r1, #0x0
.thumb
branch_226d1ce: @ 226d1ce :thumb
	ldr     r2, [sp, #0x14]
	ldr     r0, [sp, #0x18]
	ldr     r3, [sp, #0x0]
	add     r0, r2, r0
	ldr     r2, [r7, #0x8]
	bl      Function_226d2a0
	cmp     r0, #0x1
	bne     branch_226d232
	ldr     r1, [sp, #0x10]
	ldr     r0, [r7, #0x4]
	add     r1, r4, r1
	bl      0x222ebf4
	ldr     r0, [sp, #0x4]
	ldr     r3, [pc, #0x58] @ 0x226d248, (=0x5af)
	mov     r1, r5
	mov     r2, r6
	bl      Function_226d24c
	b       branch_226d232
@ 0x226d1f8

.thumb
branch_226d1f8: @ 226d1f8 :thumb
	ldr     r0, [r7, #0x8]
	ldr     r1, [sp, #0x0]
	bl      Function_226239c
	cmp     r0, #0x1
	bne     branch_226d232
	ldr     r1, [sp, #0x10]
	ldr     r0, [r7, #0x4]
	add     r1, r4, r1
	bl      0x222ebf4
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x2
	bne     branch_226d224
	ldr     r3, [sp, #0xc]
	ldr     r0, [sp, #0x4]
	ldrh    r3, [r3, #0xa]
	mov     r1, r5
	mov     r2, r6
	bl      Function_226d24c
	b       branch_226d232
@ 0x226d224

.thumb
branch_226d224: @ 226d224 :thumb
	ldr     r3, [sp, #0xc]
	ldr     r0, [sp, #0x4]
	ldrh    r3, [r3, #0x6]
	mov     r1, r5
	mov     r2, r6
	bl      Function_226d24c
.thumb
branch_226d232: @ 226d232 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x3
	bge     branch_226d23a
	b       branch_226d134
@ 0x226d23a

.thumb
branch_226d23a: @ 226d23a :thumb
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x226d23e


.align 2


.word 0x226e774 @ 0x226d240
.word 0xfffe @ 0x226d244
.word 0x5af @ 0x226d248
.thumb
Function_226d24c: @ 226d24c :thumb
	push    {r3,lr}
	cmp     r0, #0x0
	beq     branch_226d270
	cmp     r1, #0x0
	beq     branch_226d278
	cmp     r2, #0x0
	beq     branch_226d266
	lsl     r0, r3, #16
	lsr     r0, r0, #16
	mov     r1, #0x5
	bl      Function_2005770
	pop     {r3,pc}
@ 0x226d266

.thumb
branch_226d266: @ 226d266 :thumb
	lsl     r0, r3, #16
	lsr     r0, r0, #16
	bl      Function_2005748
	pop     {r3,pc}
@ 0x226d270

.thumb
branch_226d270: @ 226d270 :thumb
	lsl     r0, r3, #16
	lsr     r0, r0, #16
	bl      Function_2005748
.thumb
branch_226d278: @ 226d278 :thumb
	pop     {r3,pc}
@ 0x226d27a


.align 2, 0


.thumb
Function_226d27c: @ 226d27c :thumb
	push    {r3,lr}
	cmp     r0, #0x0
	beq     branch_226d292
	cmp     r1, #0x0
	beq     branch_226d29c
	lsl     r0, r3, #16
	lsr     r0, r0, #16
	mov     r1, #0x0
	bl      Function_2005844
	pop     {r3,pc}
@ 0x226d292

.thumb
branch_226d292: @ 226d292 :thumb
	lsl     r0, r3, #16
	lsr     r0, r0, #16
	mov     r1, #0x0
	bl      Function_2005844
.thumb
branch_226d29c: @ 226d29c :thumb
	pop     {r3,pc}
@ 0x226d29e


.align 2, 0


.thumb
Function_226d2a0: @ 226d2a0 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r6, r2
	mov     r7, r3
	cmp     r4, #0x2
	bcc     branch_226d2b2
	bl      ErrorHandling
.thumb
branch_226d2b2: @ 226d2b2 :thumb
	ldrh    r0, [r5, #0x0]
	cmp     r0, #0x1
	bne     branch_226d2bc
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x226d2bc

.thumb
branch_226d2bc: @ 226d2bc :thumb
	ldr     r3, [pc, #0x14] @ 0x226d2d4, (=0x226e76c)
	strh    r4, [r5, #0x2]
	lsl     r4, r4, #2
	mov     r0, #0x1
	strh    r0, [r5, #0x0]
	ldr     r3, [r3, r4]
	mov     r0, r5
	mov     r1, r6
	mov     r2, r7
	blx     r3
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x226d2d4

.word 0x226e76c @ 0x226d2d4
.thumb
Function_226d2d8: @ 226d2d8 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldrh    r3, [r4, #0x0]
	cmp     r3, #0x0
	beq     branch_226d312
	ldrh    r3, [r4, #0x2]
	lsl     r5, r3, #2
	ldr     r3, [pc, #0x30] @ 0x226d318, (=0x226e764)
	ldr     r3, [r3, r5]
	blx     r3
	cmp     r0, #0x1
	bne     branch_226d30e
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	strb    r0, [r4, #0x1]
	strb    r0, [r4, #0x2]
	strb    r0, [r4, #0x3]
	strb    r0, [r4, #0x4]
	strb    r0, [r4, #0x5]
	strb    r0, [r4, #0x6]
	strb    r0, [r4, #0x7]
	strb    r0, [r4, #0x8]
	strb    r0, [r4, #0x9]
	strb    r0, [r4, #0xa]
	strb    r0, [r4, #0xb]
	strb    r0, [r4, #0xc]
	strb    r0, [r4, #0xd]
.thumb
branch_226d30e: @ 226d30e :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x226d312

.thumb
branch_226d312: @ 226d312 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x226d316


.align 2


.word 0x226e764 @ 0x226d318
.thumb
Function_226d31c: @ 226d31c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x0
	strh    r0, [r4, #0x4]
	mov     r0, #0x8
	strh    r0, [r4, #0x6]
	mov     r0, #0x5
	bl      Function_201d2a4
	strh    r0, [r4, #0x8]
	mov     r0, #0x2
	strh    r0, [r4, #0xa]
	mov     r0, #0x4
	strh    r0, [r4, #0xc]
	pop     {r4,pc}
@ 0x226d33a


.align 2, 0


.thumb
Function_226d33c: @ 226d33c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x0
	strh    r0, [r4, #0x4]
	mov     r0, #0x10
	strh    r0, [r4, #0x6]
	mov     r0, #0xa
	bl      Function_201d2a4
	strh    r0, [r4, #0x8]
	mov     r0, #0x4
	strh    r0, [r4, #0xa]
	mov     r0, #0x2
	strh    r0, [r4, #0xc]
	pop     {r4,pc}
@ 0x226d35a


.align 2, 0


.thumb
Function_226d35c: @ 226d35c :thumb
	push    {r3-r6,lr}
	add     sp, #-0x1c
	mov     r5, r0
	add     r0, sp, #0x10
	mov     r4, #0x0
	str     r4, [r0, #0x0]
	str     r4, [r0, #0x4]
	str     r4, [r0, #0x8]
	mov     r0, #0x4
	ldsh    r0, [r5, r0]
	str     r1, [sp, #0x0]
	str     r2, [sp, #0x4]
	add     r1, r0, #0x1
	mov     r0, #0x6
	ldsh    r0, [r5, r0]
	cmp     r1, r0
	bge     branch_226d382
	strh    r1, [r5, #0x4]
	b       branch_226d394
@ 0x226d382

.thumb
branch_226d382: @ 226d382 :thumb
	strh    r4, [r5, #0x4]
	mov     r0, #0xc
	ldsh    r0, [r5, r0]
	.hword  0x1e40 @ sub r0, r0, #0x1
	cmp     r0, #0x0
	ble     branch_226d392
	strh    r0, [r5, #0xc]
	b       branch_226d394
@ 0x226d392

.thumb
branch_226d392: @ 226d392 :thumb
	mov     r4, #0x1
.thumb
branch_226d394: @ 226d394 :thumb
	mov     r0, #0x4
	ldsh    r1, [r5, r0]
	ldr     r0, [pc, #0xc8] @ 0x226d464, (=0xffff)
	mul     r0, r1
	mov     r1, #0x6
	ldsh    r1, [r5, r1]
	blx     _s32_div_f
	lsl     r0, r0, #16
	lsr     r6, r0, #16
	ldrh    r0, [r5, #0x8]
	cmp     r0, #0x0
	beq     branch_226d3c0
	lsl     r0, r0, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_226d3ce
@ 0x226d3c0

.thumb
branch_226d3c0: @ 226d3c0 :thumb
	lsl     r0, r0, #12
	blx     _fflt
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
.thumb
branch_226d3ce: @ 226d3ce :thumb
	blx     _ffix
	mov     r2, r0
	asr     r0, r6, #4
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x8c] @ 0x226d468, (=Unknown_20f983c)
	asr     r3, r2, #31
	ldsh    r0, [r0, r1]
	str     r0, [sp, #0x8]
	asr     r0, r0, #31
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0xc]
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
	lsr     r6, r0, #16
	mov     r0, #0xa
	ldsh    r0, [r5, r0]
	cmp     r0, #0x0
	ble     branch_226d41a
	lsl     r0, r0, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_226d428
@ 0x226d41a

.thumb
branch_226d41a: @ 226d41a :thumb
	lsl     r0, r0, #12
	blx     _fflt
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
.thumb
branch_226d428: @ 226d428 :thumb
	blx     _ffix
	mov     r2, r0
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0xc]
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
	str     r1, [sp, #0x14]
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	mov     r2, r6
	bl      Function_22623f0
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	add     r2, sp, #0x10
	bl      Function_22622ec
	mov     r0, r4
	add     sp, #0x1c
	pop     {r3-r6,pc}
@ 0x226d464

.word 0xffff @ 0x226d464
.word Unknown_20f983c @ 0x226d468
.thumb
Function_226d46c: @ 226d46c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r7, r0
	str     r1, [sp, #0x0]
	mov     r0, r1
	lsl     r1, r0, #1
	ldr     r0, [sp, #0x0]
	mov     r6, #0x0
	add     r0, r0, r1
	str     r0, [sp, #0x4]
.thumb
branch_226d480: @ 226d480 :thumb
	ldr     r1, [sp, #0x4]
	ldr     r0, [r7, #0x4]
	add     r1, r6, r1
	bl      0x222ec30
	mov     r4, r0
	ldr     r0, [r7, #0x8]
	ldr     r1, [sp, #0x0]
	mov     r2, r6
	add     r3, sp, #0x8
	bl      Function_2262318
	cmp     r4, #0x3
	bge     branch_226d4c2
	lsl     r0, r4, #2
	add     r5, r7, r0
.thumb
branch_226d4a0: @ 226d4a0 :thumb
	mov     r0, #0xaa
	ldsh    r0, [r5, r0]
	add     r0, #0x10
	lsl     r1, r0, #12
	ldr     r0, [sp, #0x8]
	cmp     r1, r0
	ble     branch_226d4ba
	ldr     r1, [sp, #0x4]
	ldr     r0, [r7, #0x4]
	add     r1, r6, r1
	mov     r2, r4
	bl      0x222ec20
.thumb
branch_226d4ba: @ 226d4ba :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x3
	blt     branch_226d4a0
.thumb
branch_226d4c2: @ 226d4c2 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, #0x3
	blt     branch_226d480
	add     sp, #0x14
	pop     {r4-r7,pc}



Unknown_226d4cc: @ 0x226d4cc
.incbin "./baserom/overlay/overlay_0070.bin", 0x10dcc, 0x226e6e4 - 0x226d4cc


.word Function_226c9ac+1 @ =0x226c9ad, 0x226e6e4
.word Function_226c9ac+1 @ =0x226c9ad, 0x226e6e8
.word Function_226c9b0+1 @ =0x226c9b1, 0x226e6ec
.word Function_226c9b4+1 @ =0x226c9b5, 0x226e6f0
.word Function_226ca38+1 @ =0x226ca39, 0x226e6f4
.word Function_226cad4+1 @ =0x226cad5, 0x226e6f8

.incbin "./baserom/overlay/overlay_0070.bin", 0x11ffc, 0x226e714 - 0x226e6fc


.word Function_226cb54+1 @ =0x226cb55, 0x226e714
.word Function_226cb54+1 @ =0x226cb55, 0x226e718
.word Function_226cb64+1 @ =0x226cb65, 0x226e71c
.word Function_226cb74+1 @ =0x226cb75, 0x226e720
.word Function_226cb84+1 @ =0x226cb85, 0x226e724
.word Function_226cb94+1 @ =0x226cb95, 0x226e728
@ 0x226e72c


.incbin "./baserom/overlay/overlay_0070.bin", 0x1202c, 0x226e7c0 - 0x226e72c


@end 0x226e7c0




