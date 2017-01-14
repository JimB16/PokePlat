

.section .iwram114, "ax"


.thumb
Function_225c700: @ 225c700 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r6, r0
	str     r1, [sp, #0x0]
	str     r2, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r2, r6
	mov     r1, #0x10
	mov     r0, #0x0
branch_225c712: @ 225c712 :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_225c712
	bl      Function_2032e64
	strb    r0, [r6, #0x8]
	bl      Function_203608c
	mov     r5, #0x0
	mov     r7, r0
	mov     r4, r5
.thumb
branch_225c72a: @ 225c72a :thumb
	mov     r0, r4
	bl      Function_2032ee8
	cmp     r0, #0x0
	beq     branch_225c740
	cmp     r7, r4
	bne     branch_225c73a
	strb    r5, [r6, #0x9]
.thumb
branch_225c73a: @ 225c73a :thumb
	add     r0, r6, r5
	strb    r4, [r0, #0x4]
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_225c740: @ 225c740 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x4
	blt     branch_225c72a
	ldrb    r0, [r6, #0x8]
	cmp     r5, r0
	beq     branch_225c750
	bl      ErrorHandling
.thumb
branch_225c750: @ 225c750 :thumb
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x0
	bne     branch_225c75a
	mov     r0, #0x1
	strb    r0, [r6, #0xb]
.thumb
branch_225c75a: @ 225c75a :thumb
	ldr     r0, [sp, #0x4]
	str     r0, [r6, #0x0]
	ldr     r0, [sp, #0x8]
	strb    r0, [r6, #0xa]
	ldr     r0, [sp, #0x20]
	str     r0, [r6, #0xc]
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x225c76a


.align 2, 0


.thumb
Function_225c76c: @ 225c76c :thumb
	ldrb    r2, [r0, #0x8]
	mov     r3, #0x0
	cmp     r2, #0x0
	ble     branch_225c788
.thumb
branch_225c774: @ 225c774 :thumb
	add     r2, r0, r3
	ldrb    r2, [r2, #0x4]
	cmp     r1, r2
	bne     branch_225c780
	mov     r0, r3
	bx      lr
@ 0x225c780

.thumb
branch_225c780: @ 225c780 :thumb
	ldrb    r2, [r0, #0x8]
	.hword  0x1c5b @ add r3, r3, #0x1
	cmp     r3, r2
	blt     branch_225c774
.thumb
branch_225c788: @ 225c788 :thumb
	mov     r0, #0x4
	bx      lr
@ 0x225c78c

.thumb
Function_225c78c: @ 225c78c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldrb    r0, [r5, #0x8]
	mov     r4, r1
	cmp     r4, r0
	bcc     branch_225c79c
	bl      ErrorHandling
.thumb
branch_225c79c: @ 225c79c :thumb
	add     r0, r5, r4
	ldrb    r0, [r0, #0x4]
	pop     {r3-r5,pc}
@ 0x225c7a2


.align 2, 0


.thumb
Function_225c7a4: @ 225c7a4 :thumb
	push    {r3,lr}
	cmp     r1, #0x4
	bcc     branch_225c7b4
	bcc     branch_225c7b0
	bl      ErrorHandling
.thumb
branch_225c7b0: @ 225c7b0 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x225c7b4

.thumb
branch_225c7b4: @ 225c7b4 :thumb
	ldr     r2, [r0, #0xc]
	add     r0, r2, r1
	ldrb    r1, [r0, #0x4]
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r1, r0
	bne     branch_225c7c6
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x225c7c6

.thumb
branch_225c7c6: @ 225c7c6 :thumb
	add     r0, r2, r1
	ldrb    r0, [r0, #0x8]
	pop     {r3,pc}
@ 0x225c7cc

.thumb
Function_225c7cc: @ 225c7cc :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0x4
	bcc     branch_225c7e0
	bcc     branch_225c7dc
	bl      ErrorHandling
.thumb
branch_225c7dc: @ 225c7dc :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x225c7e0

.thumb
branch_225c7e0: @ 225c7e0 :thumb
	ldrb    r2, [r5, #0xb]
	cmp     r2, #0x1
	bne     branch_225c800
	bl      Function_225c76c
	ldrb    r1, [r5, #0x9]
	cmp     r0, r1
	bne     branch_225c7f8
	ldr     r0, [r5, #0x0]
	bl      LoadTrainerDataAdress
	pop     {r3-r5,pc}
@ 0x225c7f8

.thumb
branch_225c7f8: @ 225c7f8 :thumb
	mov     r0, r4
	bl      Function_2032ee8
	pop     {r3-r5,pc}
@ 0x225c800

.thumb
branch_225c800: @ 225c800 :thumb
	ldr     r0, [r5, #0xc]
	cmp     r0, #0x0
	bne     branch_225c80a
	bl      ErrorHandling
.thumb
branch_225c80a: @ 225c80a :thumb
	ldr     r1, [r5, #0xc]
	lsl     r0, r4, #2
	add     r0, r1, r0
	ldr     r0, [r0, #0x20]
	pop     {r3-r5,pc}
@ 0x225c814

.thumb
Function_225c814: @ 225c814 :thumb
	ldr     r3, [pc, #0x4] @ 0x225c81c, (=0x225d48d)
	mov     r2, r1
	mov     r1, #0x0
	bx      r3
@ 0x225c81c

.word 0x225d48d @ 0x225c81c
.thumb
Function_225c820: @ 225c820 :thumb
	ldr     r3, [pc, #0x4] @ 0x225c828, (=0x225d48d)
	mov     r2, r1
	mov     r1, #0x1
	bx      r3
@ 0x225c828

.word 0x225d48d @ 0x225c828
.thumb
Function_225c82c: @ 225c82c :thumb
	ldr     r3, [pc, #0x4] @ 0x225c834, (=0x225d48d)
	mov     r2, r1
	mov     r1, #0x2
	bx      r3
@ 0x225c834

.word 0x225d48d @ 0x225c834
.thumb
Function_225c838: @ 225c838 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x78] @ 0x225c8b8, (=0x5ec)
	ldr     r0, [r5, r0]
	bl      Call_RemoveTaskFromTaskList
	mov     r0, #0x5f
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	bl      Call_RemoveTaskFromTaskList
	mov     r0, #0xb9
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_225dffc
	mov     r0, #0x73
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_225e234
	ldrb    r0, [r5, #0x10]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_225c880
	mov     r0, #0x81
	lsl     r0, r0, #2
	add     r4, r5, r0
.thumb
branch_225c870: @ 225c870 :thumb
	mov     r0, r4
	bl      Function_225dda0
	ldrb    r0, [r5, #0x10]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x38
	cmp     r6, r0
	blt     branch_225c870
.thumb
branch_225c880: @ 225c880 :thumb
	mov     r0, r5
	add     r0, #0x4c
	bl      Function_225d338
	mov     r0, r5
	bl      Function_225d678
	mov     r0, r5
	add     r0, #0x3c
	bl      Function_225d0d8
	mov     r0, #0x1b
	lsl     r0, r0, #4
	add     r0, r5, r0
	bl      Function_225cd10
	mov     r0, r5
	add     r0, #0x84
	bl      Function_225d058
	mov     r0, r5
	add     r0, #0x30
	bl      Function_225cf84
	mov     r0, r5
	bl      free
	pop     {r4-r6,pc}
@ 0x225c8b8

.word 0x5ec @ 0x225c8b8
.thumb
Function_225c8bc: @ 225c8bc :thumb
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x10
	bcc     branch_225c8c6
	mov     r0, #0x1
	bx      lr
@ 0x225c8c6

.thumb
branch_225c8c6: @ 225c8c6 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x225c8ca


.align 2, 0


.thumb
Function_225c8cc: @ 225c8cc :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x7]
	cmp     r0, #0x1
	beq     branch_225c8da
	bl      ErrorHandling
.thumb
branch_225c8da: @ 225c8da :thumb
	ldrb    r0, [r4, #0x6]
	pop     {r4,pc}
@ 0x225c8de


.align 2, 0


.thumb
Function_225c8e0: @ 225c8e0 :thumb
	push    {r3,lr}
	mov     r3, r2
	mov     r2, #0x0
	bl      Function_225e5a8
	pop     {r3,pc}
@ 0x225c8ec

.thumb
Function_225c8ec: @ 225c8ec :thumb
	push    {r3,lr}
	mov     r3, r2
	mov     r2, #0x1
	bl      Function_225e5a8
	pop     {r3,pc}
@ 0x225c8f8

.thumb
Function_225c8f8: @ 225c8f8 :thumb
	push    {r3,lr}
	mov     r3, r2
	mov     r2, #0x2
	bl      Function_225e5a8
	pop     {r3,pc}
@ 0x225c904

.thumb
Function_225c904: @ 225c904 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x84] @ 0x225c990, (=0x644)
	ldr     r0, [r5, r0]
	bl      Call_RemoveTaskFromTaskList
	ldr     r0, [pc, #0x80] @ 0x225c994, (=0x648)
	ldr     r0, [r5, r0]
	bl      Call_RemoveTaskFromTaskList
	mov     r0, #0xcf
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_225dffc
	ldrb    r0, [r5, #0x14]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_225c940
	mov     r0, #0x97
	lsl     r0, r0, #2
	add     r4, r5, r0
.thumb
branch_225c930: @ 225c930 :thumb
	mov     r0, r4
	bl      Function_225dda0
	ldrb    r0, [r5, #0x14]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x38
	cmp     r6, r0
	blt     branch_225c930
.thumb
branch_225c940: @ 225c940 :thumb
	mov     r0, #0x7a
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_225f270
	mov     r0, r5
	bl      Function_225e854
	mov     r0, r5
	add     r0, #0x68
	bl      Function_225d338
	mov     r0, r5
	add     r0, #0x58
	bl      Function_225d0d8
	mov     r0, #0x73
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_225cd10
	mov     r0, r5
	add     r0, #0xa0
	bl      Function_225d058
	mov     r0, r5
	add     r0, #0x4c
	bl      Function_225cf84
	ldr     r0, [pc, #0x1c] @ 0x225c998, (=0x4000050)
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	ldr     r0, [pc, #0x18] @ 0x225c99c, (=0x4001050)
	strh    r1, [r0, #0x0]
	bl      Function_201dc3c
	mov     r0, r5
	bl      free
	pop     {r4-r6,pc}
@ 0x225c990

.word 0x644 @ 0x225c990
.word 0x648 @ 0x225c994
.word 0x4000050 @ 0x225c998
.word 0x4001050 @ 0x225c99c
.thumb
Function_225c9a0: @ 225c9a0 :thumb
	ldrb    r0, [r0, #0x6]
	bx      lr
@ 0x225c9a4

.thumb
Function_225c9a4: @ 225c9a4 :thumb
	ldrb    r0, [r0, #0x8]
	bx      lr
@ 0x225c9a8

.thumb
Function_225c9a8: @ 225c9a8 :thumb
	push    {r3-r7}
	add     sp, #-0x4
	mov     r5, r0
	mov     r7, #0x0
	mov     r12, r1
	mov     r0, r1
	beq     branch_225c9e8
	mov     r3, r5
.thumb
branch_225c9b8: @ 225c9b8 :thumb
	mov     r2, r7
	cmp     r7, #0x0
	ble     branch_225c9da
	add     r0, sp, #0x0
	add     r4, r0, r7
.thumb
branch_225c9c2: @ 225c9c2 :thumb
	.hword  0x1e60 @ sub r0, r4, #0x1
	ldrb    r1, [r0, #0x0]
	ldr     r0, [r3, #0x0]
	lsl     r6, r1, #2
	ldr     r6, [r5, r6]
	cmp     r0, r6
	bls     branch_225c9da
	.hword  0x1e52 @ sub r2, r2, #0x1
	strb    r1, [r4, #0x0]
	.hword  0x1e64 @ sub r4, r4, #0x1
	cmp     r2, #0x0
	bgt     branch_225c9c2
.thumb
branch_225c9da: @ 225c9da :thumb
	add     r0, sp, #0x0
	strb    r7, [r0, r2]
	.hword  0x1c7f @ add r7, r7, #0x1
	mov     r0, r12
	.hword  0x1d1b @ add r3, r3, #0x4
	cmp     r7, r0
	bcc     branch_225c9b8
.thumb
branch_225c9e8: @ 225c9e8 :thumb
	mov     r0, r12
	mov     r4, #0x0
	cmp     r0, #0x0
	bls     branch_225ca1e
	add     r3, sp, #0x0
.thumb
branch_225c9f2: @ 225c9f2 :thumb
	mov     r2, r4
	cmp     r4, #0x0
	ble     branch_225ca0e
	.hword  0x1e58 @ sub r0, r3, #0x1
	ldrb    r1, [r0, #0x0]
	ldrb    r0, [r3, #0x0]
	lsl     r6, r1, #2
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r6, [r5, r6]
	cmp     r0, r6
	bne     branch_225ca0e
	add     r0, r5, r1
	ldrb    r2, [r0, #0x10]
.thumb
branch_225ca0e: @ 225ca0e :thumb
	ldrb    r0, [r3, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c5b @ add r3, r3, #0x1
	add     r0, r5, r0
	strb    r2, [r0, #0x10]
	mov     r0, r12
	cmp     r4, r0
	bcc     branch_225c9f2
.thumb
branch_225ca1e: @ 225ca1e :thumb
	add     sp, #0x4
	pop     {r3-r7}
	bx      lr
@ 0x225ca24

.thumb
Function_225ca24: @ 225ca24 :thumb
	strb    r1, [r0, #0x6]
	mov     r1, #0x1
	strb    r1, [r0, #0x7]
	bx      lr
@ 0x225ca2c

.thumb
Function_225ca2c: @ 225ca2c :thumb
	push    {r3,lr}
	mov     r3, r0
	ldrb    r0, [r3, #0x15]
	cmp     r0, #0x0
	bne     branch_225ca42
	mov     r0, #0x7a
	lsl     r0, r0, #2
	add     r0, r3, r0
	ldrb    r3, [r3, #0x14]
	bl      Function_225f424
.thumb
branch_225ca42: @ 225ca42 :thumb
	pop     {r3,pc}
@ 0x225ca44

.thumb
Function_225ca44: @ 225ca44 :thumb
	mov     r2, #0x7a
	lsl     r2, r2, #2
	ldr     r3, [pc, #0x4] @ 0x225ca50, (=0x225f47d)
	add     r0, r0, r2
	bx      r3
@ 0x225ca4e


.align 2


.word 0x225f47d @ 0x225ca50
.thumb
Function_225ca54: @ 225ca54 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0xc]
	mov     r4, #0x0
	cmp     r0, #0x0
	beq     branch_225ca94
	bl      Function_2035e18
	ldrb    r1, [r5, #0x8]
	cmp     r1, r0
	beq     branch_225ca6c
	mov     r4, #0x1
.thumb
branch_225ca6c: @ 225ca6c :thumb
	bl      Function_2038284
	cmp     r0, #0x1
	bne     branch_225ca76
	mov     r4, #0x1
.thumb
branch_225ca76: @ 225ca76 :thumb
	bl      Function_20380e4
	cmp     r0, #0x2
	blt     branch_225ca80
	mov     r4, #0x1
.thumb
branch_225ca80: @ 225ca80 :thumb
	cmp     r4, #0x1
	bne     branch_225ca8a
	ldr     r0, [r5, #0xc]
	mov     r1, #0x1
	str     r1, [r0, #0x1c]
.thumb
branch_225ca8a: @ 225ca8a :thumb
	ldr     r0, [r5, #0xc]
	ldr     r0, [r0, #0x1c]
	cmp     r0, #0x1
	bne     branch_225ca94
	mov     r4, #0x1
.thumb
branch_225ca94: @ 225ca94 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x225ca98

.thumb
Function_225ca98: @ 225ca98 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x0
	bne     branch_225caa6
	bl      ErrorHandling
.thumb
branch_225caa6: @ 225caa6 :thumb
	ldr     r0, [r4, #0xc]
	ldr     r0, [r0, #0x1c]
	cmp     r0, #0x1
	beq     branch_225cab2
	bl      ErrorHandling
.thumb
branch_225cab2: @ 225cab2 :thumb
	bl      Function_2032aac
	cmp     r0, #0x1
	bne     branch_225cac4
	bl      Function_2032a70
	bl      Function_203888c
	b       branch_225cad0
@ 0x225cac4

.thumb
branch_225cac4: @ 225cac4 :thumb
	bl      Function_20382c0
	cmp     r0, #0x1
	bne     branch_225cad0
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x225cad0

.thumb
branch_225cad0: @ 225cad0 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x225cad4

.thumb
Function_225cad4: @ 225cad4 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r5, r1
	mov     r1, #0x73
	mov     r6, r0
	mov     r0, r5
	lsl     r1, r1, #2
	bl      malloc
	mov     r2, #0x73
	mov     r4, r0
	mov     r1, #0x0
	lsl     r2, r2, #2
	blx     Call_FillMemWithValue
	str     r6, [r4, #0x8]
	mov     r0, #0xab
	mov     r1, r5
	bl      LoadFromNARC_8
	str     r0, [r4, #0xc]
	mov     r0, r4
	add     r0, #0x10
	mov     r1, #0x1
	mov     r2, r5
	bl      Function_225ccd0
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x1c] @ 0x225cb34, (=0x1388)
	mov     r2, #0x3
	str     r0, [sp, #0xc]
	str     r5, [sp, #0x10]
	mov     r0, r4
	ldr     r1, [r4, #0xc]
	add     r0, #0x10
	mov     r3, r2
	bl      Function_225cd54
	str     r0, [r4, #0x28]
	mov     r0, r4
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x225cb32


.align 2


.word 0x1388 @ 0x225cb34
.thumb
Function_225cb38: @ 225cb38 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x2c]
	cmp     r0, #0x0
	beq     branch_225cb4a
	bl      Call_RemoveTaskFromTaskList
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
.thumb
branch_225cb4a: @ 225cb4a :thumb
	ldr     r0, [r4, #0x30]
	cmp     r0, #0x0
	beq     branch_225cb54
	bl      Function_2021bd4
.thumb
branch_225cb54: @ 225cb54 :thumb
	mov     r0, r4
	add     r0, #0x34
	bl      Function_225fbf0
	mov     r0, r4
	add     r0, #0x10
	bl      Function_225cd10
	ldr     r0, [r4, #0xc]
	bl      Call_FS_CloseFile
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x225cb72


.align 2, 0


.thumb
Function_225cb74: @ 225cb74 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x14]
	ldr     r1, [pc, #0xc] @ 0x225cb88, (=0x1388)
	bl      Function_2009dc8
	mov     r1, #0x1
	bl      Function_200a760
	pop     {r3,pc}
@ 0x225cb86


.align 2


.word 0x1388 @ 0x225cb88
.thumb
Function_225cb8c: @ 225cb8c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x2c]
	cmp     r0, #0x0
	beq     branch_225cb9a
	bl      ErrorHandling
.thumb
branch_225cb9a: @ 225cb9a :thumb
	ldr     r0, [pc, #0x10] @ 0x225cbac, (=0x225fdc9)
	mov     r1, r4
	mov     r2, #0x0
	bl      AddTaskToTaskList1
	str     r0, [r4, #0x2c]
	mov     r0, #0x1
	strh    r0, [r4, #0x4]
	pop     {r4,pc}
@ 0x225cbac

.word 0x225fdc9 @ 0x225cbac
.thumb
Function_225cbb0: @ 225cbb0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x2c]
	cmp     r0, #0x0
	beq     branch_225cbbe
	bl      ErrorHandling
.thumb
branch_225cbbe: @ 225cbbe :thumb
	ldr     r0, [pc, #0x18] @ 0x225cbd8, (=0x225ff55)
	mov     r1, r4
	mov     r2, #0x0
	bl      AddTaskToTaskList1
	str     r0, [r4, #0x2c]
	mov     r0, #0x1
	strh    r0, [r4, #0x4]
	ldr     r0, [pc, #0xc] @ 0x225cbdc, (=0x5f1)
	bl      Function_2005748
	pop     {r4,pc}
@ 0x225cbd6


.align 2


.word 0x225ff55 @ 0x225cbd8
.word 0x5f1 @ 0x225cbdc
.thumb
Function_225cbe0: @ 225cbe0 :thumb
	ldrh    r0, [r0, #0x4]
	cmp     r0, #0x0
	bne     branch_225cbea
	mov     r0, #0x1
	bx      lr
@ 0x225cbea

.thumb
branch_225cbea: @ 225cbea :thumb
	mov     r0, #0x0
	bx      lr
@ 0x225cbee


.align 2, 0


.thumb
Function_225cbf0: @ 225cbf0 :thumb
	push    {r3-r7,lr}
	ldr     r4, [sp, #0x18]
	mov     r5, r0
	mov     r7, r2
	mov     r0, r3
	mov     r6, r1
	lsl     r2, r4, #12
	str     r3, [sp, #0x0]
	asr     r1, r0, #31
	asr     r3, r2, #31
	blx     _ll_mul
	mov     r2, r0
	sub     r0, r7, r6
	mov     r7, #0x2
	mov     r3, #0x0
	lsl     r7, r7, #10
	add     r2, r2, r7
	adc     r1, r3
	lsl     r1, r1, #20
	lsr     r2, r2, #12
	orr     r2, r1
	sub     r2, r0, r2
	asr     r1, r2, #31
	lsr     r0, r2, #19
	lsl     r1, r1, #13
	orr     r1, r0
	lsl     r0, r2, #13
	add     r0, r0, r7
	adc     r1, r3
	lsl     r1, r1, #20
	lsr     r0, r0, #12
	orr     r0, r1
	mov     r1, r4
	mul     r1, r4
	lsl     r1, r1, #12
	blx     FX_Div
	str     r6, [r5, #0x0]
	ldr     r1, [sp, #0x0]
	str     r6, [r5, #0x4]
	str     r1, [r5, #0x8]
	str     r0, [r5, #0xc]
	str     r4, [r5, #0x10]
	pop     {r3-r7,pc}
@ 0x225cc4a


.align 2, 0


.thumb
Function_225cc4c: @ 225cc4c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x10]
	mov     r4, r1
	cmp     r4, r0
	blt     branch_225cc5e
	mov     r4, r0
	mov     r7, #0x1
	b       branch_225cc60
@ 0x225cc5e

.thumb
branch_225cc5e: @ 225cc5e :thumb
	mov     r7, #0x0
.thumb
branch_225cc60: @ 225cc60 :thumb
	ldr     r0, [r5, #0x8]
	lsl     r2, r4, #12
	asr     r1, r0, #31
	asr     r3, r2, #31
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsr     r6, r2, #12
	lsl     r0, r1, #20
	mov     r2, r4
	orr     r6, r0
	ldr     r0, [r5, #0xc]
	mul     r2, r4
	lsl     r2, r2, #12
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
	lsl     r1, r2, #2
	blx     FX_Div
	ldr     r1, [r5, #0x4]
	add     r0, r6, r0
	add     r0, r1, r0
	str     r0, [r5, #0x0]
	mov     r0, r7
	pop     {r3-r7,pc}
@ 0x225ccae


.align 2, 0


.thumb
Function_225ccb0: @ 225ccb0 :thumb
	push    {r3,r4}
	ldr     r2, [r0, #0x8]
	add     r0, #0xc
	lsr     r4, r2, #1
	mov     r3, #0x0
	cmp     r4, #0x0
	ble     branch_225cccc
.thumb
branch_225ccbe: @ 225ccbe :thumb
	ldrh    r2, [r0, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	add     r2, r2, r1
	strh    r2, [r0, #0x0]
	.hword  0x1c80 @ add r0, r0, #0x2
	cmp     r3, r4
	blt     branch_225ccbe
.thumb
branch_225cccc: @ 225cccc :thumb
	pop     {r3,r4}
	bx      lr
@ 0x225ccd0

.thumb
Function_225ccd0: @ 225ccd0 :thumb
	push    {r3-r7,lr}
	str     r0, [sp, #0x0]
	mov     r6, r1
	mov     r7, r2
	mov     r4, #0x0
	mov     r5, r0
.thumb
branch_225ccdc: @ 225ccdc :thumb
	mov     r0, r6
	mov     r1, r4
	mov     r2, r7
	bl      Function_2009714
	.hword  0x1c64 @ add r4, r4, #0x1
	stmia   r5!, {r0}
	cmp     r4, #0x4
	blt     branch_225ccdc
	mov     r0, #0x38
	mov     r4, r6
	mul     r4, r0
	mov     r0, r7
	mov     r1, r4
	bl      malloc
	ldr     r1, [sp, #0x0]
	mov     r2, r4
	str     r0, [r1, #0x10]
	mov     r1, #0x0
	blx     Call_FillMemWithValue
	ldr     r0, [sp, #0x0]
	str     r6, [r0, #0x14]
	pop     {r3-r7,pc}
@ 0x225cd0e


.align 2, 0


.thumb
Function_225cd10: @ 225cd10 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x14]
	mov     r6, #0x0
	cmp     r0, #0x0
	bls     branch_225cd38
	mov     r4, r6
.thumb
branch_225cd1e: @ 225cd1e :thumb
	ldr     r1, [r5, #0x10]
	ldr     r0, [r1, r4]
	cmp     r0, #0x1
	bne     branch_225cd2e
	mov     r0, r5
	add     r1, r1, r4
	bl      Function_225ceb8
.thumb
branch_225cd2e: @ 225cd2e :thumb
	ldr     r0, [r5, #0x14]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x38
	cmp     r6, r0
	bcc     branch_225cd1e
.thumb
branch_225cd38: @ 225cd38 :thumb
	mov     r6, #0x0
	mov     r4, r5
.thumb
branch_225cd3c: @ 225cd3c :thumb
	ldr     r0, [r4, #0x0]
	bl      Function_2009754
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x4
	blt     branch_225cd3c
	ldr     r0, [r5, #0x10]
	bl      free
	pop     {r4-r6,pc}
@ 0x225cd52


.align 2, 0


.thumb
Function_225cd54: @ 225cd54 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r5, r0
	ldr     r6, [r5, #0x14]
	mov     r4, #0x0
	str     r1, [sp, #0x18]
	str     r2, [sp, #0x1c]
	mov     r7, r3
	mov     r1, r4
	cmp     r6, #0x0
	bls     branch_225cd84
	ldr     r3, [r5, #0x10]
	mov     r2, r3
.thumb
branch_225cd6e: @ 225cd6e :thumb
	ldr     r0, [r2, #0x0]
	cmp     r0, #0x0
	bne     branch_225cd7c
	mov     r0, #0x38
	mul     r0, r1
	add     r4, r3, r0
	b       branch_225cd84
@ 0x225cd7c

.thumb
branch_225cd7c: @ 225cd7c :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r2, #0x38
	cmp     r1, r6
	bcc     branch_225cd6e
.thumb
branch_225cd84: @ 225cd84 :thumb
	cmp     r4, #0x0
	bne     branch_225cd8c
	bl      ErrorHandling
.thumb
branch_225cd8c: @ 225cd8c :thumb
	ldr     r0, [sp, #0x38]
	str     r7, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x3c]
	ldr     r2, [sp, #0x18]
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x40]
	ldr     r3, [sp, #0x1c]
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x44]
	mov     r1, r4
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x48]
	str     r0, [sp, #0x14]
	mov     r0, r5
	bl      Function_225cde0
	mov     r0, r4
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x225cdb4

.thumb
Function_225cdb4: @ 225cdb4 :thumb
	push    {r3,lr}
	add     sp, #-0x20
	add     r0, #0x14
	str     r0, [sp, #0x4]
	lsl     r0, r2, #12
	str     r0, [sp, #0x8]
	lsl     r0, r3, #12
	str     r0, [sp, #0xc]
	str     r1, [sp, #0x0]
	add     r0, sp, #0x18
	ldrh    r0, [r0, #0x10]
	str     r0, [sp, #0x14]
	mov     r0, #0x1
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x2c]
	str     r0, [sp, #0x1c]
	add     r0, sp, #0x0
	bl      Function_2021b90
	add     sp, #0x20
	pop     {r3,pc}
@ 0x225cdde


.align 2, 0


.thumb
Function_225cde0: @ 225cde0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x34
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	str     r2, [sp, #0x2c]
	str     r3, [sp, #0x30]
	cmp     r0, #0x0
	beq     branch_225cdf6
	bl      ErrorHandling
.thumb
branch_225cdf6: @ 225cdf6 :thumb
	mov     r0, #0x1
	ldr     r7, [sp, #0x58]
	str     r0, [r4, #0x0]
	str     r7, [sp, #0x0]
	ldr     r6, [sp, #0x5c]
	str     r0, [sp, #0x4]
	str     r6, [sp, #0x8]
	ldr     r0, [r5, #0x0]
	ldr     r1, [sp, #0x2c]
	ldr     r2, [sp, #0x4c]
	mov     r3, #0x0
	bl      Function_2009a4c
	str     r0, [r4, #0x4]
	str     r7, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x48]
	ldr     r1, [sp, #0x2c]
	str     r0, [sp, #0x8]
	str     r6, [sp, #0xc]
	ldr     r0, [r5, #0x4]
	ldr     r2, [sp, #0x30]
	mov     r3, #0x0
	bl      Function_2009b04
	str     r0, [r4, #0x8]
	str     r7, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	str     r6, [sp, #0x8]
	ldr     r0, [r5, #0x8]
	ldr     r1, [sp, #0x2c]
	ldr     r2, [sp, #0x50]
	mov     r3, #0x0
	bl      Function_2009bc4
	str     r0, [r4, #0xc]
	str     r7, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	str     r6, [sp, #0x8]
	ldr     r0, [r5, #0xc]
	ldr     r1, [sp, #0x2c]
	ldr     r2, [sp, #0x54]
	mov     r3, #0x0
	bl      Function_2009bc4
	str     r0, [r4, #0x10]
	ldr     r0, [r4, #0x4]
	bl      Function_200a3dc
	cmp     r0, #0x0
	bne     branch_225ce66
	bl      ErrorHandling
.thumb
branch_225ce66: @ 225ce66 :thumb
	ldr     r0, [r4, #0x4]
	bl      Function_2009d4c
	ldr     r0, [r4, #0x8]
	bl      Function_200a640
	cmp     r0, #0x0
	bne     branch_225ce7a
	bl      ErrorHandling
.thumb
branch_225ce7a: @ 225ce7a :thumb
	ldr     r0, [r4, #0x8]
	bl      Function_2009d4c
	mov     r0, #0x0
	str     r7, [sp, #0x0]
	mvn     r0, r0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	mov     r1, #0x1
	str     r1, [sp, #0x10]
	ldr     r1, [r5, #0x0]
	add     r4, #0x14
	str     r1, [sp, #0x14]
	ldr     r1, [r5, #0x4]
	mov     r2, r7
	str     r1, [sp, #0x18]
	ldr     r1, [r5, #0x8]
	mov     r3, r7
	str     r1, [sp, #0x1c]
	ldr     r1, [r5, #0xc]
	str     r1, [sp, #0x20]
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
	mov     r0, r4
	mov     r1, r7
	bl      Function_20093b4
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x225ceb8

.thumb
Function_225ceb8: @ 225ceb8 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x1
	beq     branch_225cec8
	bl      ErrorHandling
.thumb
branch_225cec8: @ 225cec8 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	ldr     r0, [r4, #0x4]
	bl      Function_200a4e4
	ldr     r0, [r4, #0x8]
	bl      Function_200a6dc
	mov     r6, #0x0
.thumb
branch_225ceda: @ 225ceda :thumb
	ldr     r0, [r5, #0x0]
	ldr     r1, [r4, #0x4]
	bl      Function_2009d68
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x4
	blt     branch_225ceda
	pop     {r4-r6,pc}
@ 0x225ceee


.align 2, 0


.thumb
Function_225cef0: @ 225cef0 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [sp, #0x18]
	mov     r6, r2
	str     r0, [sp, #0x18]
	mov     r0, r1
	str     r3, [sp, #0x0]
	bl      Function_2018368
	ldr     r0, [sp, #0x18]
	bl      Function_2018340
	str     r0, [r5, #0x0]
	ldr     r0, [sp, #0x0]
	str     r6, [r5, #0x4]
	str     r0, [r5, #0x8]
	ldr     r0, [pc, #0x6c] @ 0x225cf80, (=0x21bf6dc)
	mov     r1, #0x0
	strb    r1, [r0, #0x5]
	bl      Function_201ffe8
	ldr     r0, [sp, #0x0]
	mov     r7, #0x0
	cmp     r0, #0x0
	bls     branch_225cf7c
	mov     r4, r6
.thumb
branch_225cf24: @ 225cf24 :thumb
	ldr     r1, [r4, #0x0]
	ldr     r0, [r5, #0x0]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	add     r2, r6, #0x4
	mov     r3, #0x0
	bl      Function_20183c4
	ldr     r0, [r4, #0x0]
	ldr     r3, [sp, #0x18]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	mov     r1, #0x20
	mov     r2, #0x0
	bl      Function_2019690
	ldr     r1, [r4, #0x0]
	ldr     r0, [r5, #0x0]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_2019ebc
	ldr     r1, [r4, #0x0]
	mov     r2, #0x0
	lsl     r1, r1, #24
	ldr     r0, [r5, #0x0]
	lsr     r1, r1, #24
	mov     r3, r2
	bl      Function_2019184
	ldr     r1, [r4, #0x0]
	ldr     r0, [r5, #0x0]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2019184
	ldr     r0, [sp, #0x0]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r6, #0x20
	add     r4, #0x20
	cmp     r7, r0
	bcc     branch_225cf24
.thumb
branch_225cf7c: @ 225cf7c :thumb
	pop     {r3-r7,pc}
@ 0x225cf7e


.align 2


.word 0x21bf6dc @ 0x225cf80
.thumb
Function_225cf84: @ 225cf84 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r1, #0x3
	ldr     r0, [r5, #0x0]
	mov     r2, r1
	mov     r3, #0x0
	bl      Function_2019184
	ldr     r0, [r5, #0x8]
	mov     r6, #0x0
	cmp     r0, #0x0
	bls     branch_225cfb6
	mov     r4, r6
.thumb
branch_225cf9e: @ 225cf9e :thumb
	ldr     r1, [r5, #0x4]
	ldr     r0, [r5, #0x0]
	ldr     r1, [r1, r4]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_2019044
	ldr     r0, [r5, #0x8]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x20
	cmp     r6, r0
	bcc     branch_225cf9e
.thumb
branch_225cfb6: @ 225cfb6 :thumb
	ldr     r0, [r5, #0x0]
	bl      free
	pop     {r4-r6,pc}
@ 0x225cfbe


.align 2, 0


.thumb
Function_225cfc0: @ 225cfc0 :thumb
	ldr     r3, [pc, #0x4] @ 0x225cfc8, (=0x201c2b9)
	ldr     r0, [r0, #0x0]
	bx      r3
@ 0x225cfc6


.align 2


.word 0x201c2b9 @ 0x225cfc8
.thumb
Function_225cfcc: @ 225cfcc :thumb
	push    {r4-r7,lr}
	add     sp, #-0x2c
	mov     r5, r0
	str     r1, [sp, #0x14]
	mov     r6, r2
	str     r3, [sp, #0x18]
	blx     Function_20a7944
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x7e
	str     r1, [sp, #0x4]
	ldr     r4, [sp, #0x40]
	str     r0, [sp, #0x8]
	mov     r3, #0x1f
	str     r3, [sp, #0xc]
	mov     r2, r0
	str     r4, [sp, #0x10]
	bl      Function_200a784
	ldr     r3, [pc, #0x5c] @ 0x225d054, (=0x226017c)
	add     r2, sp, #0x1c
	mov     r7, r2
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	mov     r1, #0x10
	mov     r0, r7
	mov     r2, r1
	str     r6, [sp, #0x1c]
	str     r4, [sp, #0x28]
	bl      Function_201e88c
	ldr     r0, [sp, #0x18]
	mov     r1, r4
	bl      Function_201f834
	bl      Function_201e994
	bl      Function_201f8e4
	mov     r0, #0x1
	mov     r1, #0x10
	bl      Function_200966c
	mov     r0, #0x1
	bl      Function_2009704
	ldr     r0, [sp, #0x14]
	add     r1, r5, #0x4
	mov     r2, r4
	bl      Function_20095c4
	str     r0, [r5, #0x0]
	bl      Function_2039734
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff74
	add     sp, #0x2c
	pop     {r4-r7,pc}
@ 0x225d052


.align 2


.word 0x226017c @ 0x225d054
.thumb
Function_225d058: @ 225d058 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	bl      Function_2021964
	bl      Function_201e958
	bl      Function_201f8b4
	bl      Function_200a878
	pop     {r3,pc}
@ 0x225d06e


.align 2, 0


.thumb
Function_225d070: @ 225d070 :thumb
	ldr     r3, [pc, #0x4] @ 0x225d078, (=0x20219f9)
	ldr     r0, [r0, #0x0]
	bx      r3
@ 0x225d076


.align 2


.word 0x20219f9 @ 0x225d078
.thumb
Function_225d07c: @ 225d07c :thumb
	ldr     r3, [pc, #0x0] @ 0x225d080, (=0x200a859)
	bx      r3
@ 0x225d080

.word 0x200a859 @ 0x225d080
.thumb
Function_225d084: @ 225d084 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r2, [pc, #0x48] @ 0x225d0d4, (=0x19b)
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, r4
	bl      Function_200b144
	str     r0, [r5, #0x0]
	mov     r0, #0x8
	mov     r1, #0x40
	mov     r2, r4
	bl      Function_200b368
	str     r0, [r5, #0x4]
	mov     r0, #0x80
	mov     r1, r4
	bl      Function_2023790
	str     r0, [r5, #0x8]
	mov     r0, #0x80
	mov     r1, r4
	bl      Function_2023790
	mov     r1, #0x6
	str     r0, [r5, #0xc]
	mov     r0, #0x0
	lsl     r1, r1, #6
	mov     r2, r4
	bl      Function_2002e98
	mov     r1, #0x6
	mov     r0, #0x4
	lsl     r1, r1, #6
	mov     r2, r4
	bl      Function_2002e98
	pop     {r3-r5,pc}
@ 0x225d0d2


.align 2


.word 0x19b @ 0x225d0d4
.thumb
Function_225d0d8: @ 225d0d8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0xc]
	bl      Function_20237bc
	ldr     r0, [r4, #0x8]
	bl      Function_20237bc
	ldr     r0, [r4, #0x4]
	bl      Function_200b3f0
	ldr     r0, [r4, #0x0]
	bl      Function_200b190
	pop     {r4,pc}
@ 0x225d0f6


.align 2, 0


.thumb
Function_225d0f8: @ 225d0f8 :thumb
	ldr     r3, [pc, #0x4] @ 0x225d100, (=0x200c41d)
	ldr     r0, [r0, #0x4]
	bx      r3
@ 0x225d0fe


.align 2


.word 0x200c41d @ 0x225d100
.thumb
Function_225d104: @ 225d104 :thumb
	ldr     r3, [pc, #0x8] @ 0x225d110, (=0x200b499)
	mov     r2, r1
	ldr     r0, [r0, #0x4]
	mov     r1, #0x0
	bx      r3
@ 0x225d10e


.align 2


.word 0x200b499 @ 0x225d110
.thumb
Function_225d114: @ 225d114 :thumb
	ldr     r3, [pc, #0x8] @ 0x225d120, (=0x200bdd1)
	mov     r2, r1
	ldr     r0, [r0, #0x4]
	mov     r1, #0x0
	bx      r3
@ 0x225d11e


.align 2


.word 0x200bdd1 @ 0x225d120
.thumb
Function_225d124: @ 225d124 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r3, r2
	ldr     r0, [r0, #0x4]
	mov     r1, #0x0
	mov     r2, r4
	bl      Function_200be08
	pop     {r4,pc}
@ 0x225d136


.align 2, 0


.thumb
Function_225d138: @ 225d138 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r1, #0x1
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r3, r2
	ldr     r0, [r0, #0x4]
	mov     r1, #0x0
	mov     r2, r4
	bl      Function_200b60c
	add     sp, #0x8
	pop     {r4,pc}
@ 0x225d154

.thumb
Function_225d154: @ 225d154 :thumb
	push    {r3,lr}
	add     sp, #-0x8
	mov     r2, r1
	mov     r1, #0x1
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r0, [r0, #0x4]
	mov     r1, #0x0
	mov     r3, #0x2
	bl      Function_200b60c
	add     sp, #0x8
	pop     {r3,pc}
@ 0x225d16e


.align 2, 0


.thumb
Function_225d170: @ 225d170 :thumb
	ldr     r3, [pc, #0x8] @ 0x225d17c, (=0x200c121)
	mov     r2, r1
	ldr     r0, [r0, #0x4]
	mov     r1, #0x1
	bx      r3
@ 0x225d17a


.align 2


.word 0x200c121 @ 0x225d17c
.thumb
Function_225d180: @ 225d180 :thumb
	ldr     r3, [pc, #0x8] @ 0x225d18c, (=0x200c0b1)
	mov     r2, r1
	ldr     r0, [r0, #0x4]
	mov     r1, #0x0
	bx      r3
@ 0x225d18a


.align 2


.word 0x200c0b1 @ 0x225d18c
.thumb
Function_225d190: @ 225d190 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r1, r2
	ldr     r0, [r5, #0x0]
	ldr     r2, [r5, #0xc]
	bl      Function_200b1b8
	ldr     r0, [r5, #0x4]
	ldr     r2, [r5, #0xc]
	mov     r1, r4
	bl      Function_200c388
	pop     {r3-r5,pc}
@ 0x225d1ac

.thumb
Function_225d1ac: @ 225d1ac :thumb
	push    {r4,lr}
	add     sp, #-0x8
	add     r4, sp, #0x0
	ldrb    r4, [r4, #0x10]
	str     r4, [sp, #0x0]
	ldr     r4, [pc, #0xc] @ 0x225d1c4, (=0xf0e00)
	str     r4, [sp, #0x4]
	bl      Function_225d254
	add     sp, #0x8
	pop     {r4,pc}
@ 0x225d1c2


.align 2


.word 0xf0e00 @ 0x225d1c4
.thumb
Function_225d1c8: @ 225d1c8 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r6, r2
	ldr     r0, [r5, #0x0]
	ldr     r2, [r5, #0xc]
	mov     r4, r3
	bl      Function_200b1b8
	ldr     r0, [r5, #0x4]
	ldr     r1, [r5, #0x8]
	ldr     r2, [r5, #0xc]
	bl      Function_200c388
	mov     r0, #0x0
	ldr     r1, [r5, #0x8]
	mov     r2, r0
	bl      Function_2002d7c
	sub     r3, r4, r0
	bpl     branch_225d1f4
	mov     r3, #0x0
.thumb
branch_225d1f4: @ 225d1f4 :thumb
	add     r0, sp, #0x10
	ldrb    r0, [r0, #0x10]
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x10] @ 0x225d214, (=0xf0e00)
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r2, [r5, #0x8]
	mov     r0, r6
	bl      Function_201d78c
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x225d212


.align 2


.word 0xf0e00 @ 0x225d214
.thumb
Function_225d218: @ 225d218 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r6, r2
	ldr     r0, [r5, #0x0]
	ldr     r2, [r5, #0xc]
	mov     r4, r3
	bl      Function_200b1b8
	ldr     r0, [r5, #0x4]
	ldr     r2, [r5, #0xc]
	mov     r1, r4
	bl      Function_200c388
	mov     r3, #0x0
	ldr     r0, [sp, #0x20]
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x10] @ 0x225d250, (=0x1020f)
	mov     r1, #0x1
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r2, r4
	str     r3, [sp, #0xc]
	bl      Function_201d78c
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x225d250

.word 0x1020f @ 0x225d250
.thumb
Function_225d254: @ 225d254 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r4, r2
	ldr     r0, [r5, #0x0]
	ldr     r2, [r5, #0xc]
	mov     r6, r3
	bl      Function_200b1b8
	ldr     r0, [r5, #0x4]
	ldr     r1, [r5, #0x8]
	ldr     r2, [r5, #0xc]
	bl      Function_200c388
	add     r0, sp, #0x10
	ldrb    r0, [r0, #0x10]
	mov     r1, #0x0
	mov     r3, r6
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x24]
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r2, [r5, #0x8]
	mov     r0, r4
	bl      Function_201d78c
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x225d290

.thumb
Function_225d290: @ 225d290 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x30]
	mov     r7, r1
	str     r0, [sp, #0x30]
	mov     r0, r2
	str     r3, [sp, #0x18]
	bl      LoadPlayerDataAdress
	bl      Function_2027b50
	mov     r4, r0
	mov     r0, #0x1
	bl      Function_20959f4
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x30]
	mov     r1, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [r7, #0x0]
	mov     r2, #0x1
	mov     r3, #0xd
	bl      Function_200dd0c
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x30]
	mov     r1, #0x4
	str     r0, [sp, #0x4]
	ldr     r0, [r7, #0x0]
	mov     r2, #0x1
	mov     r3, #0xd
	bl      Function_200dd0c
	ldr     r4, [sp, #0x14]
	mov     r6, #0x0
	mov     r5, r4
.thumb
branch_225d2e2: @ 225d2e2 :thumb
	cmp     r6, #0x0
	bne     branch_225d2ec
	mov     r2, #0x2
	mov     r0, #0x13
	b       branch_225d2f0
@ 0x225d2ec

.thumb
branch_225d2ec: @ 225d2ec :thumb
	mov     r2, #0x4
	mov     r0, #0x1
.thumb
branch_225d2f0: @ 225d2f0 :thumb
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0xc
	str     r0, [sp, #0xc]
	mov     r0, #0x1f
	str     r0, [sp, #0x10]
	lsl     r2, r2, #24
	ldr     r0, [r7, #0x0]
	mov     r1, r4
	lsr     r2, r2, #24
	mov     r3, #0x2
	bl      Function_201a7e8
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_201ada4
	ldr     r1, [sp, #0x30]
	mov     r0, #0x80
	bl      Function_2023790
	str     r0, [r5, #0x24]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x10
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x2
	blt     branch_225d2e2
	ldr     r1, [sp, #0x18]
	ldr     r0, [sp, #0x14]
	str     r1, [r0, #0x34]
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x225d336


.align 2, 0


.thumb
Function_225d338: @ 225d338 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r4, #0x0
	mov     r5, r7
	mov     r6, r7
.thumb
branch_225d342: @ 225d342 :thumb
	mov     r0, r7
	mov     r1, r4
	bl      Function_225d400
	ldr     r0, [r5, #0x24]
	bl      Function_20237bc
	mov     r0, r6
	bl      Function_201a8fc
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	add     r6, #0x10
	cmp     r4, #0x2
	blt     branch_225d342
	bl      Function_2095a24
	pop     {r3-r7,pc}
@ 0x225d366


.align 2, 0
.thumb
Function_225d368: @ 225d368 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r0, [r5, #0x34]
	str     r1, [sp, #0x4]
	mov     r4, r2
	mov     r6, r3
	cmp     r0, #0x1
	bne     branch_225d38e
	ldr     r2, [pc, #0x80] @ 0x225d3fc, (=0x2260234)
	mov     r1, #0x0
.thumb
branch_225d37e: @ 225d37e :thumb
	ldrh    r0, [r2, #0x0]
	cmp     r4, r0
	bne     branch_225d386
	ldrh    r4, [r2, #0x2]
.thumb
branch_225d386: @ 225d386 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1d12 @ add r2, r2, #0x4
	cmp     r1, #0x14
	bcc     branch_225d37e
.thumb
branch_225d38e: @ 225d38e :thumb
	mov     r0, r5
	str     r0, [sp, #0x8]
	add     r0, #0x20
	str     r0, [sp, #0x8]
	lsl     r0, r6, #1
	ldr     r1, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldrh    r0, [r1, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	beq     branch_225d3b8
	ldr     r1, [sp, #0x8]
	ldr     r0, [sp, #0xc]
	ldrh    r0, [r1, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d730
.thumb
branch_225d3b8: @ 225d3b8 :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_225d474
	lsl     r7, r6, #4
	add     r0, r5, r7
	mov     r1, #0xf
	bl      Function_201ada4
	mov     r0, #0x1
	lsl     r3, r6, #2
	str     r0, [sp, #0x0]
	add     r3, r5, r3
	ldr     r0, [sp, #0x4]
	ldr     r3, [r3, #0x24]
	mov     r1, r4
	add     r2, r5, r7
	bl      Function_225d218
	ldr     r2, [sp, #0x8]
	ldr     r1, [sp, #0xc]
	mov     r3, #0xd
	strh    r0, [r2, r1]
	mov     r1, #0x1
	add     r0, r5, r7
	mov     r2, r1
	bl      Function_200e060
	add     r0, r5, r7
	bl      Function_201a9a4
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x225d3fa


.align 2


.word 0x2260234 @ 0x225d3fc
.thumb
Function_225d400: @ 225d400 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_225d474
	mov     r6, r5
	add     r6, #0x20
	lsl     r7, r4, #1
	ldrh    r0, [r6, r7]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	beq     branch_225d428
	ldrh    r0, [r6, r7]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d730
.thumb
branch_225d428: @ 225d428 :thumb
	lsl     r4, r4, #4
	add     r0, r5, r4
	mov     r1, #0x1
	bl      Function_200e084
	add     r0, r5, r4
	bl      Function_201ad10
	pop     {r3-r7,pc}
@ 0x225d43a


.align 2, 0


.thumb
Function_225d43c: @ 225d43c :thumb
	push    {r3,lr}
	lsl     r1, r1, #1
	add     r0, r0, r1
	ldrh    r0, [r0, #0x20]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_225d454
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x225d454

.thumb
branch_225d454: @ 225d454 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x225d458

.thumb
Function_225d458: @ 225d458 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r5, #0x2c
	lsl     r4, r1, #2
	ldr     r2, [r5, r4]
	cmp     r2, #0x0
	bne     branch_225d472
	lsl     r1, r1, #4
	add     r0, r0, r1
	mov     r1, #0x1
	bl      Function_200e7fc
	str     r0, [r5, r4]
.thumb
branch_225d472: @ 225d472 :thumb
	pop     {r3-r5,pc}
@ 0x225d474

.thumb
Function_225d474: @ 225d474 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	lsl     r5, r1, #2
	add     r4, #0x2c
	ldr     r0, [r4, r5]
	cmp     r0, #0x0
	beq     branch_225d48a
	bl      Function_200ebc8
	mov     r0, #0x0
	str     r0, [r4, r5]
.thumb
branch_225d48a: @ 225d48a :thumb
	pop     {r3-r5,pc}
@ 0x225d48c

.thumb
Function_225d48c: @ 225d48c :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	mov     r6, r0
	mov     r5, r2
	ldr     r1, [pc, #0xf8] @ 0x225d590, (=0x4bb)
	mov     r0, #0x13
	mov     r2, #0x0
	bl      Function_2004550
	ldr     r1, [pc, #0xf4] @ 0x225d594, (=0x5f4)
	mov     r0, r5
	bl      malloc
	ldr     r2, [pc, #0xec] @ 0x225d594, (=0x5f4)
	mov     r1, #0x0
	mov     r4, r0
	blx     Call_FillMemWithValue
	mov     r2, r4
	add     r2, #0x8
	mov     r1, #0x10
.thumb
branch_225d4b6: @ 225d4b6 :thumb
	ldrb    r0, [r6, #0x0]
	.hword  0x1c76 @ add r6, r6, #0x1
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_225d4b6
	ldr     r3, [pc, #0xd4] @ 0x225d598, (=0x4000050)
	strh    r7, [r4, #0x4]
	mov     r1, #0x0
	strh    r1, [r3, #0x0]
	ldr     r0, [pc, #0xd0] @ 0x225d59c, (=0x4001050)
	sub     r3, #0x50
	strh    r1, [r0, #0x0]
	ldr     r2, [r3, #0x0]
	ldr     r1, [pc, #0xcc] @ 0x225d5a0, (=0xffff1fff)
	sub     r0, #0x50
	and     r2, r1
	str     r2, [r3, #0x0]
	ldr     r2, [r0, #0x0]
	and     r1, r2
	str     r1, [r0, #0x0]
	ldr     r0, [pc, #0xc0] @ 0x225d5a4, (=0x22601b4)
	bl      Function_201fe94
	mov     r0, r4
	strh    r5, [r4, #0x2]
	bl      Function_2260060
	mov     r0, r4
	mov     r1, r4
	add     r0, #0x18
	add     r1, #0x8
	bl      Function_225e0f8
	mov     r0, r4
	ldr     r1, [pc, #0xa8] @ 0x225d5a8, (=0x226018c)
	ldr     r2, [pc, #0xac] @ 0x225d5ac, (=0x2260284)
	add     r0, #0x30
	mov     r3, #0x5
	str     r5, [sp, #0x0]
	bl      Function_225cef0
	mov     r0, r4
	mov     r2, #0x1
	add     r0, #0x84
	mov     r1, #0x10
	mov     r3, r2
	str     r5, [sp, #0x0]
	bl      Function_225cfcc
	mov     r0, #0x1b
	lsl     r0, r0, #4
	add     r0, r4, r0
	mov     r1, #0x1
	mov     r2, r5
	bl      Function_225ccd0
	mov     r0, r4
	add     r0, #0x3c
	mov     r1, r5
	bl      Function_225d084
	mov     r0, r4
	mov     r1, r5
	bl      Function_225d5bc
	mov     r0, r4
	ldrb    r1, [r4, #0x11]
	add     r0, #0x8
	bl      Function_225c78c
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x8
	bl      Function_225c7a4
	str     r5, [sp, #0x0]
	mov     r3, r0
	mov     r0, r4
	mov     r1, r4
	ldr     r2, [r4, #0x8]
	add     r0, #0x4c
	add     r1, #0x30
	bl      Function_225d290
	ldr     r0, [pc, #0x4c] @ 0x225d5b0, (=0x225d689)
	mov     r1, r4
	mov     r2, #0x0
	bl      AddTaskToTaskList1
	ldr     r1, [pc, #0x48] @ 0x225d5b4, (=0x5ec)
	mov     r2, #0x0
	str     r0, [r4, r1]
	ldr     r0, [pc, #0x44] @ 0x225d5b8, (=0x225da0d)
	mov     r1, r4
	bl      AddTaskToTaskList3
	mov     r1, #0x5f
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	ldrb    r0, [r4, #0x12]
	cmp     r0, #0x0
	beq     branch_225d58a
	mov     r0, r5
	bl      0x21d1e74
.thumb
branch_225d58a: @ 225d58a :thumb
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x225d58e


.align 2


.word 0x4bb @ 0x225d590
.word 0x5f4 @ 0x225d594
.word 0x4000050 @ 0x225d598
.word 0x4001050 @ 0x225d59c
.word 0xffff1fff @ 0x225d5a0
.word 0x22601b4 @ 0x225d5a4
.word 0x226018c @ 0x225d5a8
.word 0x2260284 @ 0x225d5ac
.word 0x225d689 @ 0x225d5b0
.word 0x5ec @ 0x225d5b4
.word 0x225da0d @ 0x225d5b8
.thumb
Function_225d5bc: @ 225d5bc :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r0, #0xab
	mov     r4, r1
	bl      LoadFromNARC_8
	mov     r1, #0x12
	lsl     r1, r1, #4
	str     r1, [sp, #0x0]
	mov     r2, #0x0
	mov     r1, #0x4
	mov     r3, r2
	mov     r6, r0
	str     r4, [sp, #0x4]
	bl      Function_2007130
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r4, [sp, #0xc]
	ldr     r2, [r5, #0x30]
	mov     r0, r6
	mov     r1, #0x6
	mov     r3, #0x1
	bl      Function_20070e8
	mov     r3, #0x2
	lsl     r3, r3, #8
	mov     r0, r6
	mov     r1, #0x9
	mov     r2, #0x0
	add     r3, r5, r3
	str     r4, [sp, #0x0]
	bl      Function_20071d0
	mov     r1, #0x7f
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r4, [sp, #0xc]
	ldr     r2, [r5, #0x30]
	mov     r0, r6
	mov     r1, #0x8
	mov     r3, #0x3
	bl      Function_200710c
	ldrh    r1, [r5, #0x4]
	mov     r0, r6
	mov     r2, r4
	bl      Function_225e550
	mov     r0, #0xc
	str     r0, [sp, #0x0]
	mov     r0, #0xd
	str     r0, [sp, #0x4]
	mov     r0, #0xe
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x38] @ 0x225d674, (=0x1388)
	mov     r1, r6
	str     r0, [sp, #0xc]
	mov     r0, #0x1b
	lsl     r0, r0, #4
	add     r0, r5, r0
	mov     r2, #0xb
	mov     r3, #0x5
	str     r4, [sp, #0x10]
	bl      Function_225cd54
	mov     r1, #0x72
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	add     r0, r1, #0x4
	str     r6, [sp, #0x0]
	str     r4, [sp, #0x4]
	mov     r1, r5
	mov     r2, r5
	ldrh    r3, [r5, #0x4]
	add     r0, r5, r0
	add     r1, #0x30
	add     r2, #0x3c
	bl      Function_225e1a4
	mov     r0, r6
	bl      Call_FS_CloseFile
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x225d674

.word 0x1388 @ 0x225d674
.thumb
Function_225d678: @ 225d678 :thumb
	mov     r1, #0x7f
	lsl     r1, r1, #2
	ldr     r3, [pc, #0x4] @ 0x225d684, (=free+1)
	ldr     r0, [r0, r1]
	bx      r3
@ 0x225d682

.align 2
.word free+1 @ 0x225d684



.thumb
Function_225d688: @ 225d688 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x34
	mov     r4, r1
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x10
	bls     branch_225d696
	b       branch_225d9e6
@ 0x225d696

.thumb
branch_225d696: @ 225d696 :thumb
	add     r1, r0, r0
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x225d6a2

Jumppoints_225d6a2:
.hword branch_225d6c4 - Jumppoints_225d6a2 - 2
.hword branch_225d6f2 - Jumppoints_225d6a2 - 2
.hword branch_225d710 - Jumppoints_225d6a2 - 2
.hword branch_225d72a - Jumppoints_225d6a2 - 2
.hword branch_225d742 - Jumppoints_225d6a2 - 2
.hword branch_225d75c - Jumppoints_225d6a2 - 2
.hword branch_225d78c - Jumppoints_225d6a2 - 2
.hword branch_225d7a8 - Jumppoints_225d6a2 - 2
.hword branch_225d8ae - Jumppoints_225d6a2 - 2
.hword branch_225d8c0 - Jumppoints_225d6a2 - 2
.hword branch_225d8e6 - Jumppoints_225d6a2 - 2
.hword branch_225d8f8 - Jumppoints_225d6a2 - 2
.hword branch_225d92a - Jumppoints_225d6a2 - 2
.hword branch_225d944 - Jumppoints_225d6a2 - 2
.hword branch_225d9aa - Jumppoints_225d6a2 - 2
.hword branch_225d9dc - Jumppoints_225d6a2 - 2
.hword branch_225d9e6 - Jumppoints_225d6a2 - 2
.thumb
branch_225d6c4: @ 225d6c4 :thumb
	mov     r0, #0x6
	mov     r1, #0x1
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldrh    r0, [r4, #0x2]
	ldr     r3, [pc, #0x2fc] @ 0x225d9cc, (=0xffff)
	mov     r2, r1
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	bl      Function_200f174
	mov     r0, #0x73
	lsl     r0, r0, #2
	mov     r1, r4
	ldrh    r2, [r4, #0x2]
	add     r0, r4, r0
	add     r1, #0x30
	bl      Function_225e244
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_225d9e6
@ 0x225d6f2

.thumb
branch_225d6f2: @ 225d6f2 :thumb
	mov     r0, #0x73
	lsl     r0, r0, #2
	mov     r1, r4
	add     r0, r4, r0
	add     r1, #0x30
	bl      Function_225e31c
	bl      Function_200f2ac
	cmp     r0, #0x1
	bne     branch_225d79e
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_225d9e6
@ 0x225d710

.thumb
branch_225d710: @ 225d710 :thumb
	mov     r0, #0x73
	lsl     r0, r0, #2
	mov     r1, r4
	add     r0, r4, r0
	add     r1, #0x30
	bl      Function_225e31c
	cmp     r0, #0x1
	bne     branch_225d79e
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_225d9e6
@ 0x225d72a

.thumb
branch_225d72a: @ 225d72a :thumb
	mov     r0, r4
	mov     r1, r4
	mov     r2, #0x0
	add     r0, #0x4c
	add     r1, #0x3c
	mov     r3, r2
	bl      Function_225d368
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_225d9e6
@ 0x225d742

.thumb
branch_225d742: @ 225d742 :thumb
	mov     r0, r4
	add     r0, #0x4c
	mov     r1, #0x0
	bl      Function_225d43c
	cmp     r0, #0x0
	beq     branch_225d79e
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	mov     r0, #0x40
	strb    r0, [r4, #0x1]
	b       branch_225d9e6
@ 0x225d75c

.thumb
branch_225d75c: @ 225d75c :thumb
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_225d79e
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0x1]
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	bne     branch_225d79e
	mov     r0, r4
	add     r0, #0x4c
	mov     r1, #0x0
	bl      Function_225d400
	mov     r0, #0x73
	lsl     r0, r0, #2
	mov     r1, r4
	add     r0, r4, r0
	add     r1, #0x30
	bl      Function_225e2d4
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_225d9e6
@ 0x225d78c

.thumb
branch_225d78c: @ 225d78c :thumb
	mov     r0, #0x73
	lsl     r0, r0, #2
	mov     r1, r4
	add     r0, r4, r0
	add     r1, #0x30
	bl      Function_225e438
	cmp     r0, #0x1
	beq     branch_225d7a0
.thumb
branch_225d79e: @ 225d79e :thumb
	b       branch_225d9e6
@ 0x225d7a0

.thumb
branch_225d7a0: @ 225d7a0 :thumb
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_225d9e6
@ 0x225d7a8

.thumb
branch_225d7a8: @ 225d7a8 :thumb
	mov     r0, #0xb9
	lsl     r0, r0, #2
	mov     r1, r4
	ldrh    r2, [r4, #0x2]
	add     r0, r4, r0
	add     r1, #0x30
	bl      Function_225df7c
	mov     r0, r4
	mov     r1, r4
	add     r0, #0x8
	add     r1, #0x18
	bl      Function_225e14c
	ldrb    r1, [r4, #0x10]
	mov     r6, #0x0
	str     r0, [sp, #0x1c]
	cmp     r1, #0x0
	ble     branch_225d87a
	mov     r0, #0x81
	lsl     r0, r0, #2
	add     r5, r4, r0
	mov     r0, r4
	str     r0, [sp, #0x20]
	add     r0, #0x30
	str     r0, [sp, #0x20]
	mov     r0, r4
	str     r0, [sp, #0x24]
	add     r0, #0x84
	str     r0, [sp, #0x24]
	mov     r0, r4
	str     r0, [sp, #0x28]
	add     r0, #0x8
	str     r0, [sp, #0x28]
	mov     r0, r4
	str     r0, [sp, #0x2c]
	add     r0, #0x3c
	str     r4, [sp, #0x18]
	mov     r7, r6
	str     r0, [sp, #0x2c]
.thumb
branch_225d7f8: @ 225d7f8 :thumb
	ldr     r0, [sp, #0x20]
	mov     r3, #0x2
	str     r0, [sp, #0x0]
	str     r6, [sp, #0x4]
	ldrb    r0, [r4, #0x11]
	lsl     r3, r3, #8
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x24]
	str     r0, [sp, #0xc]
	mov     r0, #0x72
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	str     r0, [sp, #0x10]
	ldrh    r0, [r4, #0x2]
	str     r0, [sp, #0x14]
	ldrh    r2, [r4, #0x4]
	ldr     r3, [r4, r3]
	mov     r0, r5
	bl      Function_225dac0
	ldr     r0, [sp, #0x28]
	mov     r1, r6
	bl      Function_225c78c
	mov     r1, r0
	ldr     r0, [sp, #0x28]
	bl      Function_225c7a4
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r2, [sp, #0x18]
	ldr     r1, [sp, #0x2c]
	ldr     r2, [r2, #0x20]
	mov     r0, r5
	mov     r3, #0x8
	bl      Function_225dc44
	add     r3, r4, r6
	ldrb    r0, [r3, #0x1c]
	ldr     r1, [sp, #0x2c]
	ldr     r2, [sp, #0x1c]
	str     r0, [sp, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x4]
	ldrb    r3, [r3, #0x18]
	mov     r0, r5
	bl      Function_225dca0
	mov     r1, #0x7
	lsl     r2, r7, #16
	mov     r0, r5
	mvn     r1, r1
	asr     r2, r2, #16
	bl      Function_225ddd4
	ldr     r0, [sp, #0x18]
	ldrb    r1, [r4, #0x10]
	.hword  0x1d00 @ add r0, r0, #0x4
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x38
	str     r0, [sp, #0x18]
	.hword  0x1cff @ add r7, r7, #0x3
	cmp     r6, r1
	blt     branch_225d7f8
.thumb
branch_225d87a: @ 225d87a :thumb
	mov     r6, #0x0
	cmp     r1, #0x0
	ble     branch_225d8a2
	mov     r0, #0x81
	lsl     r0, r0, #2
	mov     r7, r4
	add     r5, r4, r0
	add     r7, #0x30
.thumb
branch_225d88a: @ 225d88a :thumb
	mov     r0, r5
	mov     r1, r7
	bl      Function_225dd80
	mov     r0, r5
	bl      Function_225dd94
	ldrb    r0, [r4, #0x10]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x38
	cmp     r6, r0
	blt     branch_225d88a
.thumb
branch_225d8a2: @ 225d8a2 :thumb
	mov     r0, #0x5c
	strb    r0, [r4, #0x1]
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_225d9e6
@ 0x225d8ae

.thumb
branch_225d8ae: @ 225d8ae :thumb
	mov     r0, r4
	bl      Function_225da5c
	cmp     r0, #0x1
	bne     branch_225d8de
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_225d9e6
@ 0x225d8c0

.thumb
branch_225d8c0: @ 225d8c0 :thumb
	ldrb    r0, [r4, #0x1]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0x1]
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	bne     branch_225d8de
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	mov     r0, #0x81
	bl      Function_20364f0
	ldrb    r0, [r4, #0x12]
	cmp     r0, #0x0
	bne     branch_225d8e0
.thumb
branch_225d8de: @ 225d8de :thumb
	b       branch_225d9e6
@ 0x225d8e0

.thumb
branch_225d8e0: @ 225d8e0 :thumb
	bl      0x21d1f18
	b       branch_225d9e6
@ 0x225d8e6

.thumb
branch_225d8e6: @ 225d8e6 :thumb
	mov     r0, #0x81
	bl      Function_2036540
	cmp     r0, #0x0
	beq     branch_225d9e6
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_225d9e6
@ 0x225d8f8

.thumb
branch_225d8f8: @ 225d8f8 :thumb
	ldrb    r0, [r4, #0x10]
	mov     r7, #0x0
	cmp     r0, #0x0
	ble     branch_225d91e
	mov     r0, #0x81
	lsl     r0, r0, #2
	mov     r6, r7
	add     r5, r4, r0
.thumb
branch_225d908: @ 225d908 :thumb
	lsl     r1, r6, #16
	mov     r0, r5
	asr     r1, r1, #16
	bl      Function_225de38
	ldrb    r0, [r4, #0x10]
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1cf6 @ add r6, r6, #0x3
	add     r5, #0x38
	cmp     r7, r0
	blt     branch_225d908
.thumb
branch_225d91e: @ 225d91e :thumb
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	mov     r0, #0x8
	strb    r0, [r4, #0x1]
	b       branch_225d9e6
@ 0x225d92a

.thumb
branch_225d92a: @ 225d92a :thumb
	ldrb    r0, [r4, #0x1]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0x1]
	mov     r0, r4
	bl      Function_225da5c
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	bne     branch_225d9e6
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_225d9e6
@ 0x225d944

.thumb
branch_225d944: @ 225d944 :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r2, #0x1
	str     r2, [sp, #0x4]
	ldrh    r0, [r4, #0x2]
	mov     r1, #0x0
	mov     r3, r1
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	bl      Function_200f174
	mov     r0, r4
	bl      Function_225da5c
	ldrb    r0, [r4, #0x11]
	cmp     r0, #0x0
	bne     branch_225d9a2
	ldrh    r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_225d976
	cmp     r0, #0x1
	beq     branch_225d982
	cmp     r0, #0x2
	beq     branch_225d98e
	b       branch_225d998
@ 0x225d976

.thumb
branch_225d976: @ 225d976 :thumb
	ldr     r0, [pc, #0x58] @ 0x225d9d0, (=0x22600d0)
	mov     r1, #0x3
	bl      Function_225da2c
	str     r0, [sp, #0x30]
	b       branch_225d998

branch_225d982: @ 225d982 :thumb
	ldr     r0, [pc, #0x50] @ 0x225d9d4, (=Unknown_22600c8)
	mov     r1, #0x2
	bl      Function_225da2c
	str     r0, [sp, #0x30]
	b       branch_225d998

branch_225d98e: @ 225d98e :thumb
	ldr     r0, [pc, #0x48] @ 0x225d9d8, (=0x22600cc)
	mov     r1, #0x3
	bl      Function_225da2c
	str     r0, [sp, #0x30]
branch_225d998: @ 225d998 :thumb
	mov     r0, #0x1a
	add     r1, sp, #0x30
	mov     r2, #0x4
	bl      Function_20359dc
.thumb
branch_225d9a2: @ 225d9a2 :thumb
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_225d9e6
@ 0x225d9aa

.thumb
branch_225d9aa: @ 225d9aa :thumb
	mov     r0, r4
	bl      Function_225da5c
	bl      Function_200f2ac
	cmp     r0, #0x1
	bne     branch_225d9e6
	mov     r0, #0xb9
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_225dffc
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_225d9e6
@ 0x225d9ca

.align 2
.word 0xffff @ 0x225d9cc
.word 0x22600d0 @ 0x225d9d0
.word Unknown_22600c8 @ 0x225d9d4
.word 0x22600cc @ 0x225d9d8



.thumb
branch_225d9dc: @ 225d9dc :thumb
	ldrb    r1, [r4, #0x7]
	cmp     r1, #0x1
	bne     branch_225d9e6
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
branch_225d9e6: @ 225d9e6 :thumb
	mov     r0, r4
	add     r0, #0x84
	bl      Function_225d070
	ldr     r0, [r4, #0x30]
	mov     r1, #0x3
	mov     r2, #0x4
	mov     r3, #0x2
	bl      Function_201c63c
	ldr     r0, [r4, #0x30]
	mov     r1, #0x5
	mov     r2, #0x4
	mov     r3, #0x2
	bl      Function_201c63c
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x225da0a


.align 2, 0


.thumb
Function_225da0c: @ 225da0c :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	add     r0, #0x30
	bl      Function_225cfc0
	mov     r0, r4
	add     r0, #0x84
	bl      Function_225d07c
	mov     r0, #0xb9
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_225e08c
	pop     {r4,pc}
@ 0x225da2c

.thumb
Function_225da2c: @ 225da2c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_201d35c
	mov     r1, #0x64
	blx     _u32_div_f
	mov     r3, #0x0
	mov     r0, r3
	cmp     r4, #0x0
	bls     branch_225da52
.thumb
branch_225da44: @ 225da44 :thumb
	ldrb    r2, [r5, r0]
	add     r3, r3, r2
	cmp     r3, r1
	bhi     branch_225da58
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r0, r4
	bcc     branch_225da44
.thumb
branch_225da52: @ 225da52 :thumb
	bl      ErrorHandling
	.hword  0x1e60 @ sub r0, r4, #0x1
.thumb
branch_225da58: @ 225da58 :thumb
	pop     {r3-r5,pc}
@ 0x225da5a


.align 2, 0


.thumb
Function_225da5c: @ 225da5c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r7, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldrb    r0, [r7, #0x10]
	cmp     r0, #0x0
	ble     branch_225daba
	mov     r0, #0x81
	lsl     r0, r0, #2
	add     r6, r7, r0
	mov     r4, r7
	mov     r5, r6
.thumb
branch_225da7a: @ 225da7a :thumb
	mov     r0, #0x85
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_225daa4
	mov     r0, r6
	bl      Function_225de70
	str     r0, [sp, #0x8]
	mov     r0, #0xb9
	lsl     r0, r0, #2
	add     r0, r7, r0
	mov     r1, r5
	bl      Function_225e028
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x0
	bne     branch_225daa8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	b       branch_225daa8
@ 0x225daa4

.thumb
branch_225daa4: @ 225daa4 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
.thumb
branch_225daa8: @ 225daa8 :thumb
	ldr     r0, [sp, #0x4]
	ldrb    r1, [r7, #0x10]
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r4, #0x38
	add     r6, #0x38
	add     r5, #0x38
	str     r0, [sp, #0x4]
	cmp     r0, r1
	blt     branch_225da7a
.thumb
branch_225daba: @ 225daba :thumb
	ldr     r0, [sp, #0x0]
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x225dac0

.thumb
Function_225dac0: @ 225dac0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	mov     r5, r0
	ldr     r0, [sp, #0x48]
	mov     r6, r3
	str     r0, [sp, #0x48]
	ldr     r0, [sp, #0x54]
	str     r1, [sp, #0x1c]
	ldr     r4, [sp, #0x4c]
	str     r0, [sp, #0x54]
	cmp     r2, #0x0
	beq     branch_225dae0
	cmp     r2, #0x1
	beq     branch_225daee
	cmp     r2, #0x2
	bne     branch_225db04
.thumb
branch_225dae0: @ 225dae0 :thumb
	ldr     r0, [sp, #0x1c]
	ldr     r2, [sp, #0x50]
	mov     r1, r4
	bl      Function_225df44
	mov     r7, r0
	b       branch_225db06
@ 0x225daee

.thumb
branch_225daee: @ 225daee :thumb
	ldr     r0, [sp, #0x50]
	cmp     r0, r4
	bls     branch_225daf8
	add     r7, r4, #0x1
	b       branch_225db06
@ 0x225daf8

.thumb
branch_225daf8: @ 225daf8 :thumb
	cmp     r0, r4
	bne     branch_225db00
	mov     r7, #0x0
	b       branch_225db06
@ 0x225db00

.thumb
branch_225db00: @ 225db00 :thumb
	mov     r7, r4
	b       branch_225db06
@ 0x225db04

.thumb
branch_225db04: @ 225db04 :thumb
	mov     r7, r4
.thumb
branch_225db06: @ 225db06 :thumb
	mov     r0, #0x1
	mov     r1, #0x2
	bl      Function_2019060
	mov     r0, #0x0
	mov     r1, #0x1
	bl      Function_2019060
	ldr     r1, [sp, #0x1c]
	mov     r0, #0xc
	mov     r2, r1
	mul     r2, r0
	str     r2, [sp, #0x2c]
	ldr     r2, [pc, #0x108] @ 0x225dc2c, (=0x22601f8)
	ldr     r1, [sp, #0x2c]
	mov     r3, #0x5
	add     r1, r2, r1
	ldrb    r1, [r7, r1]
	mov     r2, #0x0
	str     r1, [sp, #0x28]
	.hword  0x1c49 @ add r1, r1, #0x1
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	str     r1, [sp, #0x0]
	mov     r1, #0x1a
	str     r1, [sp, #0x4]
	mov     r1, #0x4
	str     r1, [sp, #0x8]
	str     r0, [sp, #0xc]
	mov     r0, #0x68
	mov     r1, r4
	mul     r1, r0
	ldr     r0, [pc, #0xe8] @ 0x225dc30, (=0x201)
	add     r0, r1, r0
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x48]
	mov     r1, r5
	ldr     r0, [r0, #0x0]
	bl      Function_201a7e8
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_201ada4
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	str     r0, [sp, #0x4]
	mov     r0, r6
	add     r0, #0xc
	str     r0, [sp, #0x8]
	mov     r2, #0x0
	ldr     r1, [pc, #0xc0] @ 0x225dc34, (=0x22601fc)
	ldr     r0, [sp, #0x2c]
	str     r2, [sp, #0xc]
	add     r0, r1, r0
	ldrb    r0, [r4, r0]
	ldr     r3, [sp, #0x28]
	mov     r1, #0x1
	str     r0, [sp, #0x10]
	ldrh    r0, [r6, #0x0]
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x14]
	ldrh    r0, [r6, #0x2]
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x48]
	ldr     r0, [r0, #0x0]
	bl      Function_20198e8
	ldr     r0, [sp, #0x28]
	ldr     r1, [pc, #0x98] @ 0x225dc38, (=0x2260200)
	lsl     r0, r0, #3
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x2c]
	ldr     r2, [pc, #0x94] @ 0x225dc3c, (=0x226015c)
	add     r0, r1, r0
	ldrb    r0, [r7, r0]
	ldr     r3, [pc, #0x94] @ 0x225dc40, (=0x226015e)
	ldr     r1, [sp, #0x54]
	lsl     r6, r0, #2
	ldsh    r2, [r2, r6]
	str     r0, [sp, #0x24]
	mov     r0, #0x0
	ldsh    r6, [r3, r6]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x5c]
	ldr     r3, [sp, #0x20]
	str     r0, [sp, #0x4]
	add     r3, r6, r3
	lsl     r2, r2, #24
	lsl     r3, r3, #24
	ldr     r0, [sp, #0x58]
	ldr     r1, [r1, #0x0]
	lsr     r2, r2, #24
	lsr     r3, r3, #24
	bl      Function_225cdb4
	ldr     r1, [sp, #0x24]
	str     r0, [r5, #0x10]
	bl      Function_2021d6c
	ldr     r0, [r5, #0x10]
	mov     r1, r4
	bl      Function_2021ef0
	ldr     r0, [r5, #0x10]
	mov     r1, #0x0
	bl      Function_2021cac
	ldr     r0, [r5, #0x10]
	mov     r1, #0x1
	bl      Function_2021cc8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x5c]
	ldr     r3, [sp, #0x20]
	str     r0, [sp, #0x4]
	ldr     r1, [sp, #0x54]
	add     r3, #0x15
	str     r3, [sp, #0x20]
	lsl     r3, r3, #24
	ldr     r0, [sp, #0x58]
	ldr     r1, [r1, #0x0]
	mov     r2, #0x18
	lsr     r3, r3, #24
	bl      Function_225cdb4
	str     r0, [r5, #0x14]
	mov     r1, #0x0
	bl      Function_2021d6c
	ldr     r0, [r5, #0x14]
	mov     r1, #0x0
	bl      Function_2021cac
	strb    r4, [r5, #0x1a]
	ldr     r0, [sp, #0x1c]
	strb    r7, [r5, #0x1b]
	strh    r0, [r5, #0x18]
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x225dc2c

.word 0x22601f8 @ 0x225dc2c
.word 0x201 @ 0x225dc30
.word 0x22601fc @ 0x225dc34
.word 0x2260200 @ 0x225dc38
.word 0x226015c @ 0x225dc3c
.word 0x226015e @ 0x225dc40
.thumb
Function_225dc44: @ 225dc44 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	mov     r1, r2
	mov     r4, r3
	bl      Function_225d104
	ldr     r0, [sp, #0x1c]
	add     r1, sp, #0x8
	cmp     r0, #0x1
	bne     branch_225dc7e
	mov     r0, #0x10
	ldsh    r0, [r1, r0]
	lsl     r3, r4, #24
	mov     r1, #0xa
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x2c] @ 0x225dc9c, (=0x50600)
	mov     r2, r6
	str     r0, [sp, #0x4]
	mov     r0, r5
	lsr     r3, r3, #24
	bl      Function_225d254
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x225dc7e

.thumb
branch_225dc7e: @ 225dc7e :thumb
	mov     r0, #0x10
	ldsh    r0, [r1, r0]
	lsl     r3, r4, #24
	mov     r1, #0xa
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r2, r6
	lsr     r3, r3, #24
	bl      Function_225d1ac
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x225dc9a


.align 2


.word 0x50600 @ 0x225dc9c
.thumb
Function_225dca0: @ 225dca0 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r6, r0
	mov     r5, r1
	mov     r4, r3
	cmp     r2, #0x0
	beq     branch_225dcdc
	cmp     r4, #0x0
	beq     branch_225dd08
	mov     r0, r5
	bl      Function_225d0f8
	mov     r0, r5
	mov     r1, r4
	bl      Function_225d114
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	add     r4, sp, #0x8
	mov     r3, #0x14
	ldsh    r3, [r4, r3]
	mov     r0, r5
	mov     r1, #0xb
	lsl     r3, r3, #24
	mov     r2, r6
	lsr     r3, r3, #24
	bl      Function_225d1ac
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x225dcdc

.thumb
branch_225dcdc: @ 225dcdc :thumb
	cmp     r4, #0x0
	beq     branch_225dd08
	mov     r0, r5
	bl      Function_225d0f8
	ldr     r2, [sp, #0x18]
	mov     r0, r5
	mov     r1, r4
	bl      Function_225d124
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	add     r4, sp, #0x8
	mov     r3, #0x14
	ldsh    r3, [r4, r3]
	mov     r0, r5
	mov     r1, #0xc
	lsl     r3, r3, #24
	mov     r2, r6
	lsr     r3, r3, #24
	bl      Function_225d1ac
.thumb
branch_225dd08: @ 225dd08 :thumb
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x225dd0c

.thumb
Function_225dd0c: @ 225dd0c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x14]
	mov     r4, r1
	mov     r1, #0x1
	bl      Function_2021cac
	ldr     r0, [r5, #0x14]
	add     r1, r4, #0x4
	bl      Function_2021d6c
	ldr     r0, [r5, #0x14]
	mov     r1, #0x1
	bl      Function_2021cc8
	pop     {r3-r5,pc}
@ 0x225dd2c

.thumb
Function_225dd2c: @ 225dd2c :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r1
	mov     r1, r2
	mov     r6, r0
	ldr     r2, [sp, #0x1c]
	mov     r0, r5
	mov     r4, r3
	bl      Function_225d138
	ldr     r0, [sp, #0x1c]
	add     r1, sp, #0x8
	cmp     r0, #0x5
	bne     branch_225dd64
	mov     r0, #0x10
	ldsh    r0, [r1, r0]
	lsl     r3, r4, #24
	mov     r1, #0xe
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r2, r6
	lsr     r3, r3, #24
	bl      Function_225d1c8
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x225dd64

.thumb
branch_225dd64: @ 225dd64 :thumb
	mov     r0, #0x10
	ldsh    r0, [r1, r0]
	lsl     r3, r4, #24
	mov     r1, #0xd
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r2, r6
	lsr     r3, r3, #24
	bl      Function_225d1c8
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x225dd80

.thumb
Function_225dd80: @ 225dd80 :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_201a9a4
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      Function_201c3c0
	pop     {r4,pc}
@ 0x225dd92


.align 2, 0


.thumb
Function_225dd94: @ 225dd94 :thumb
	ldr     r3, [pc, #0x4] @ 0x225dd9c, (=0x2021cad)
	ldr     r0, [r0, #0x10]
	mov     r1, #0x1
	bx      r3
@ 0x225dd9c

.word 0x2021cad @ 0x225dd9c
.thumb
Function_225dda0: @ 225dda0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x0
	beq     branch_225ddb2
	bl      Function_2021bd4
	mov     r0, #0x0
	str     r0, [r4, #0x10]
.thumb
branch_225ddb2: @ 225ddb2 :thumb
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x0
	beq     branch_225ddc0
	bl      Function_2021bd4
	mov     r0, #0x0
	str     r0, [r4, #0x14]
.thumb
branch_225ddc0: @ 225ddc0 :thumb
	mov     r0, r4
	bl      Function_201a7cc
	cmp     r0, #0x1
	bne     branch_225ddd0
	mov     r0, r4
	bl      Function_201a8fc
.thumb
branch_225ddd0: @ 225ddd0 :thumb
	pop     {r4,pc}
@ 0x225ddd2


.align 2, 0


.thumb
Function_225ddd4: @ 225ddd4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r2
	cmp     r1, #0x0
	ble     branch_225ddf0
	lsl     r0, r1, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_225ddfe
@ 0x225ddf0

.thumb
branch_225ddf0: @ 225ddf0 :thumb
	lsl     r0, r1, #12
	blx     _fflt
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
.thumb
branch_225ddfe: @ 225ddfe :thumb
	blx     _ffix
	mov     r2, r0
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r3, #0x7
	ldr     r1, [pc, #0x20] @ 0x225de30, (=0xfff01000)
	add     r0, #0x1c
	lsl     r3, r3, #14
	bl      Function_225cbf0
	mov     r0, #0x0
	strh    r0, [r5, #0x30]
	ldr     r0, [pc, #0x18] @ 0x225de34, (=0x566)
	strh    r4, [r5, #0x32]
	str     r0, [r5, #0x34]
	ldr     r1, [r5, #0x1c]
	mov     r0, r5
	asr     r1, r1, #12
	neg     r1, r1
	bl      Function_225debc
	pop     {r3-r5,pc}
@ 0x225de2e


.align 2


.word 0xfff01000 @ 0x225de30
.word 0x566 @ 0x225de34
.thumb
Function_225de38: @ 225de38 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r4, r1
	mov     r0, r5
	ldr     r1, [r5, #0x1c]
	ldr     r2, [pc, #0x20] @ 0x225de68, (=0xfff01000)
	add     r0, #0x1c
	mov     r3, #0x0
	bl      Function_225cbf0
	mov     r0, #0x0
	strh    r0, [r5, #0x30]
	ldr     r0, [pc, #0x14] @ 0x225de6c, (=0x567)
	strh    r4, [r5, #0x32]
	str     r0, [r5, #0x34]
	ldr     r1, [r5, #0x1c]
	mov     r0, r5
	asr     r1, r1, #12
	neg     r1, r1
	bl      Function_225debc
	pop     {r3-r5,pc}
@ 0x225de68

.word 0xfff01000 @ 0x225de68
.word 0x567 @ 0x225de6c
.thumb
Function_225de70: @ 225de70 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x32
	ldsh    r0, [r5, r0]
	cmp     r0, #0x0
	bgt     branch_225deb2
	mov     r0, #0x30
	ldsh    r0, [r5, r0]
	cmp     r0, #0x0
	bne     branch_225de8e
	ldr     r0, [r5, #0x34]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_2005748
.thumb
branch_225de8e: @ 225de8e :thumb
	mov     r1, #0x30
	ldsh    r0, [r5, r1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x30]
	ldsh    r1, [r5, r1]
	mov     r0, r5
	add     r0, #0x1c
	bl      Function_225cc4c
	ldr     r1, [r5, #0x1c]
	mov     r4, r0
	asr     r1, r1, #12
	mov     r0, r5
	neg     r1, r1
	bl      Function_225debc
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x225deb2

.thumb
branch_225deb2: @ 225deb2 :thumb
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r5, #0x32]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x225deba


.align 2, 0


.thumb
Function_225debc: @ 225debc :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldrh    r0, [r5, #0x18]
	mov     r4, r1
	ldrb    r2, [r5, #0x1b]
	.hword  0x1e41 @ sub r1, r0, #0x1
	mov     r0, #0xc
	mov     r3, r1
	mul     r3, r0
	ldr     r0, [pc, #0x60] @ 0x225df34, (=0x226020c)
	ldr     r6, [pc, #0x64] @ 0x225df38, (=0x2260204)
	add     r0, r0, r3
	ldrb    r0, [r2, r0]
	add     r3, r6, r3
	ldrb    r2, [r2, r3]
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x5c] @ 0x225df3c, (=0x226015e)
	lsl     r2, r2, #3
	ldsh    r0, [r0, r1]
	add     r0, r0, r2
	ldr     r2, [pc, #0x58] @ 0x225df40, (=0x226015c)
	lsl     r0, r0, #24
	ldsh    r1, [r2, r1]
	lsr     r0, r0, #24
	lsl     r0, r0, #12
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	add     r1, r1, r4
	lsl     r1, r1, #12
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x10]
	add     r1, sp, #0x0
	bl      Function_2021c50
	ldrh    r0, [r5, #0x18]
	add     r4, #0x18
	.hword  0x1e41 @ sub r1, r0, #0x1
	mov     r2, r1
	mov     r0, #0xc
	mul     r2, r0
	mov     r0, r6
	ldrb    r1, [r5, #0x1b]
	add     r0, r0, r2
	ldrb    r0, [r1, r0]
	lsl     r0, r0, #3
	add     r0, #0x15
	lsl     r0, r0, #24
	lsr     r1, r0, #24
	lsl     r0, r4, #12
	str     r0, [sp, #0x0]
	lsl     r0, r1, #12
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x14]
	add     r1, sp, #0x0
	bl      Function_2021c50
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x225df34

.word 0x226020c @ 0x225df34
.word 0x2260204 @ 0x225df38
.word 0x226015e @ 0x225df3c
.word 0x226015c @ 0x225df40
.thumb
Function_225df44: @ 225df44 :thumb
	push    {r4-r7}
	mov     r5, r0
	ldr     r4, [pc, #0x28] @ 0x225df74, (=0x0)
	beq     branch_225df6a
	ldr     r7, [pc, #0x28] @ 0x225df78, (=0x226016c)
	lsl     r6, r5, #2
	add     r7, r7, r6
.thumb
branch_225df52: @ 225df52 :thumb
	.hword  0x1f3e @ sub r6, r7, #0x4
	ldrb    r6, [r6, #0x0]
	cmp     r1, r6
	bne     branch_225df5c
	mov     r3, r4
.thumb
branch_225df5c: @ 225df5c :thumb
	cmp     r2, r6
	bne     branch_225df62
	mov     r0, r4
.thumb
branch_225df62: @ 225df62 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c7f @ add r7, r7, #0x1
	cmp     r4, r5
	bcc     branch_225df52
.thumb
branch_225df6a: @ 225df6a :thumb
	sub     r0, r3, r0
	bpl     branch_225df70
	add     r0, r0, r5
.thumb
branch_225df70: @ 225df70 :thumb
	pop     {r4-r7}
	bx      lr
@ 0x225df74

.word 0x0 @ 0x225df74
.word 0x226016c @ 0x225df78
.thumb
Function_225df7c: @ 225df7c :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r0, #0xc1
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	mov     r4, r1
	str     r2, [sp, #0x0]
	cmp     r0, #0x0
	beq     branch_225df92
	bl      ErrorHandling
.thumb
branch_225df92: @ 225df92 :thumb
	mov     r1, #0x0
	str     r4, [r6, #0x0]
	mov     r3, r1
	ldr     r0, [r4, #0x0]
	mov     r2, r1
	sub     r3, #0xff
	bl      Function_2019184
	ldr     r0, [r6, #0x0]
	mov     r2, #0x0
	mov     r3, r2
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	sub     r3, #0xff
	bl      Function_2019184
	mov     r7, #0x6
	mov     r4, #0x0
	add     r5, r6, #0x4
	lsl     r7, r7, #6
.thumb
branch_225dfba: @ 225dfba :thumb
	mov     r2, #0x6
	ldr     r0, [pc, #0x34] @ 0x225dff4, (=0xff01)
	mov     r1, r5
	lsl     r2, r2, #6
	blx     MIi_CpuClear16
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, r5, r7
	cmp     r4, #0x2
	blt     branch_225dfba
	mov     r2, #0x61
	lsl     r2, r2, #2
	ldr     r0, [sp, #0x0]
	add     r1, r6, #0x4
	add     r2, r6, r2
	bl      Function_2013b10
	mov     r1, #0xc1
	lsl     r1, r1, #2
	str     r0, [r6, r1]
	ldr     r0, [r6, r1]
	mov     r1, #0x0
	bl      Function_2013b80
	ldr     r0, [pc, #0xc] @ 0x225dff8, (=0x225e0ad)
	mov     r1, r6
	bl      Function_20177bc
	pop     {r3-r7,pc}
@ 0x225dff4

.word 0xff01 @ 0x225dff4
.word 0x225e0ad @ 0x225dff8
.thumb
Function_225dffc: @ 225dffc :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xc1
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_225e024
	mov     r0, #0x0
	mov     r1, r0
	bl      Function_20177bc
	mov     r0, #0xc1
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2013b40
	mov     r0, #0xc1
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
.thumb
branch_225e024: @ 225e024 :thumb
	pop     {r4,pc}
@ 0x225e026


.align 2, 0


.thumb
Function_225e028: @ 225e028 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r1, #0xc1
	lsl     r1, r1, #2
	str     r0, [sp, #0x0]
	ldr     r0, [r0, r1]
	cmp     r0, #0x0
	bne     branch_225e03c
	bl      ErrorHandling
.thumb
branch_225e03c: @ 225e03c :thumb
	mov     r1, #0xc1
	ldr     r0, [sp, #0x0]
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	bl      Function_2013b54
	ldr     r1, [pc, #0x3c] @ 0x225e088, (=0x2260204)
	mov     r5, r0
	mov     r6, #0x0
	mov     r7, #0xc
.thumb
branch_225e050: @ 225e050 :thumb
	ldrh    r0, [r4, #0x18]
	.hword  0x1e73 @ sub r3, r6, #0x1
	mov     r2, r0
	mul     r2, r7
	ldrb    r0, [r4, #0x1b]
	add     r2, r1, r2
	add     r0, r0, r2
	sub     r0, #0xc
	ldrb    r0, [r0, #0x0]
	lsl     r0, r0, #3
	add     r2, r3, r0
	bpl     branch_225e06a
	add     r2, #0xc0
.thumb
branch_225e06a: @ 225e06a :thumb
	ldr     r0, [r4, #0x1c]
	lsl     r2, r2, #1
	asr     r0, r0, #12
	.hword  0x1c76 @ add r6, r6, #0x1
	strh    r0, [r5, r2]
	cmp     r6, #0x30
	blt     branch_225e050
	mov     r1, #0xc1
	ldr     r0, [sp, #0x0]
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	mov     r1, #0x1
	bl      Function_2013b80
	pop     {r3-r7,pc}
@ 0x225e088

.word 0x2260204 @ 0x225e088
.thumb
Function_225e08c: @ 225e08c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xc1
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_225e0aa
	bl      Function_2013b94
	mov     r0, #0xc1
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2013b80
.thumb
branch_225e0aa: @ 225e0aa :thumb
	pop     {r4,pc}
@ 0x225e0ac

.thumb
Function_225e0ac: @ 225e0ac :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x3c] @ 0x225e0f0, (=0x4000006)
	ldrh    r4, [r0, #0x0]
	cmp     r4, #0xc0
	bge     branch_225e0ec
	mov     r0, #0xc1
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2013b68
	mov     r6, r0
	ldr     r0, [pc, #0x2c] @ 0x225e0f4, (=0x4000004)
	ldrh    r1, [r0, #0x0]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_225e0ec
	lsl     r4, r4, #1
	ldr     r0, [r5, #0x0]
	mov     r1, #0x0
	ldsh    r3, [r6, r4]
	ldr     r0, [r0, #0x0]
	mov     r2, r1
	bl      Function_2019184
	ldr     r0, [r5, #0x0]
	ldsh    r3, [r6, r4]
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_2019184
.thumb
branch_225e0ec: @ 225e0ec :thumb
	pop     {r4-r6,pc}
@ 0x225e0ee


.align 2


.word 0x4000006 @ 0x225e0f0
.word 0x4000004 @ 0x225e0f4
.thumb
Function_225e0f8: @ 225e0f8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r1
	str     r0, [sp, #0x0]
	ldrb    r0, [r5, #0x8]
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_225e146
	ldr     r6, [sp, #0x0]
.thumb
branch_225e10a: @ 225e10a :thumb
	add     r1, r5, r4
	ldrb    r1, [r1, #0x4]
	mov     r0, r5
	bl      Function_225c7cc
	str     r0, [r6, #0x8]
	cmp     r0, #0x0
	bne     branch_225e11e
	bl      ErrorHandling
.thumb
branch_225e11e: @ 225e11e :thumb
	add     r0, r5, r4
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	add     r7, r0, r4
	ldr     r0, [sp, #0x4]
	ldrb    r0, [r0, #0x4]
	bl      Function_2032f78
	ldr     r1, [sp, #0x0]
	strb    r0, [r1, r4]
	ldr     r0, [sp, #0x4]
	ldrb    r0, [r0, #0x4]
	bl      Function_2032f9c
	strb    r0, [r7, #0x4]
	ldrb    r0, [r5, #0x8]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r4, r0
	blt     branch_225e10a
.thumb
branch_225e146: @ 225e146 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x225e14a


.align 2, 0


.thumb
Function_225e14c: @ 225e14c :thumb
	push    {r3-r6}
	ldrb    r4, [r0, #0x8]
	mov     r3, #0x0
	mov     r2, r3
	.hword  0x1e64 @ sub r4, r4, #0x1
	cmp     r4, #0x0
	ble     branch_225e17a
	mov     r5, #0x1
.thumb
branch_225e15c: @ 225e15c :thumb
	add     r4, r1, r2
	ldrb    r6, [r4, #0x1]
	ldrb    r4, [r1, r2]
	cmp     r4, r6
	bne     branch_225e16e
	cmp     r4, #0x0
	beq     branch_225e16e
	cmp     r6, #0x0
	bne     branch_225e170
.thumb
branch_225e16e: @ 225e16e :thumb
	mov     r3, r5
.thumb
branch_225e170: @ 225e170 :thumb
	ldrb    r4, [r0, #0x8]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e64 @ sub r4, r4, #0x1
	cmp     r2, r4
	blt     branch_225e15c
.thumb
branch_225e17a: @ 225e17a :thumb
	mov     r0, r3
	pop     {r3-r6}
	bx      lr
@ 0x225e180

.thumb
Function_225e180: @ 225e180 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r1, #0x3
	blx     _u32_div_f
	mov     r4, r1
	mov     r0, r5
	mov     r1, #0x3
	blx     _u32_div_f
	add     r1, r4, #0x1
	cmp     r1, #0x3
	bcs     branch_225e19c
	mov     r4, r1
.thumb
branch_225e19c: @ 225e19c :thumb
	lsl     r1, r0, #1
	add     r0, r0, r1
	add     r0, r0, r4
	pop     {r3-r5,pc}
@ 0x225e1a4

.thumb
Function_225e1a4: @ 225e1a4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r0, #0xb
	str     r0, [sp, #0x0]
	mov     r0, #0x14
	str     r0, [sp, #0x4]
	mov     r0, #0xa
	str     r0, [sp, #0x8]
	mov     r0, #0x8
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x74] @ 0x225e230, (=0x201)
	mov     r4, r1
	str     r0, [sp, #0x10]
	mov     r7, r2
	mov     r6, r3
	ldr     r0, [r4, #0x0]
	mov     r1, r5
	mov     r2, #0x1
	mov     r3, #0x6
	bl      Function_201a7e8
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_201ada4
	ldr     r1, [sp, #0x2c]
	mov     r0, #0x80
	bl      Function_2023790
	str     r0, [r5, #0x14]
	mov     r0, r7
	mov     r1, r6
	bl      Function_225d180
	ldr     r1, [r5, #0x14]
	mov     r0, r7
	mov     r2, #0x10
	bl      Function_225d190
	mov     r0, #0x1
	mov     r1, #0x0
	str     r6, [r5, #0x10]
	bl      Function_201ff0c
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r3, [sp, #0x4]
	ldr     r0, [sp, #0x2c]
	str     r3, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x28]
	ldr     r2, [r4, #0x0]
	mov     r1, #0x7
	bl      Function_20070e8
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r3, [sp, #0x4]
	ldr     r0, [sp, #0x2c]
	str     r3, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x28]
	ldr     r2, [r4, #0x0]
	mov     r1, #0xa
	bl      Function_200710c
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x225e22e


.align 2


.word 0x201 @ 0x225e230
.thumb
Function_225e234: @ 225e234 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_201a8fc
	ldr     r0, [r4, #0x14]
	bl      Function_20237bc
	pop     {r4,pc}
@ 0x225e244

.thumb
Function_225e244: @ 225e244 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x0
	strh    r0, [r5, #0x2c]
	strh    r0, [r5, #0x2e]
	ldr     r0, [r5, #0x10]
	mov     r4, r1
	mov     r7, r2
	lsl     r6, r0, #2
	ldr     r1, [pc, #0x68] @ 0x225e2c4, (=0x2260140)
	ldr     r2, [pc, #0x6c] @ 0x225e2c8, (=0x2260110)
	ldr     r3, [pc, #0x6c] @ 0x225e2cc, (=0x2260104)
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, r5
	ldr     r1, [r1, r6]
	ldr     r2, [r2, r6]
	ldr     r3, [r3, r6]
	add     r0, #0x18
	bl      Function_225cbf0
	ldr     r2, [r5, #0x18]
	mov     r0, r5
	mov     r1, r4
	asr     r2, r2, #12
	bl      Function_225e4b0
	mov     r0, #0x2
	mov     r1, r7
	bl      Function_2002bb8
	ldr     r1, [r5, #0x14]
	mov     r0, #0x2
	mov     r2, #0x0
	bl      Function_2002d7c
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r3, r0
	str     r2, [sp, #0x4]
	ldr     r0, [r5, #0x10]
	lsr     r4, r3, #1
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x30] @ 0x225e2d0, (=0x22600f8)
	mov     r3, #0x50
	ldr     r0, [r0, r1]
	mov     r1, #0x2
	str     r0, [sp, #0x8]
	str     r2, [sp, #0xc]
	ldr     r2, [r5, #0x14]
	mov     r0, r5
	sub     r3, r3, r4
	bl      Function_201d78c
	mov     r0, #0x2
	bl      Function_2002c60
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff0c
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x225e2c4

.word 0x2260140 @ 0x225e2c4
.word 0x2260110 @ 0x225e2c8
.word 0x2260104 @ 0x225e2cc
.word 0x22600f8 @ 0x225e2d0
.thumb
Function_225e2d4: @ 225e2d4 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	mov     r0, #0x0
	strh    r0, [r5, #0x2c]
	strh    r0, [r5, #0x2e]
	ldr     r0, [r5, #0x10]
	mov     r4, r1
	lsl     r3, r0, #2
	ldr     r1, [pc, #0x28] @ 0x225e310, (=0x2260110)
	ldr     r2, [pc, #0x28] @ 0x225e314, (=0x22600e0)
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, r5
	ldr     r6, [pc, #0x24] @ 0x225e318, (=0x22600ec)
	ldr     r1, [r1, r3]
	ldr     r2, [r2, r3]
	ldr     r3, [r6, r3]
	add     r0, #0x18
	bl      Function_225cbf0
	ldr     r2, [r5, #0x18]
	mov     r0, r5
	mov     r1, r4
	asr     r2, r2, #12
	bl      Function_225e500
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x225e30e


.align 2


.word 0x2260110 @ 0x225e310
.word 0x22600e0 @ 0x225e314
.word 0x22600ec @ 0x225e318
.thumb
Function_225e31c: @ 225e31c :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r4, r0
	mov     r0, #0x2e
	ldsh    r0, [r4, r0]
	mov     r5, r1
	cmp     r0, #0x3
	bhi     branch_225e41c
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x225e338

Jumppoints_225e338:
.hword branch_225e340 - Jumppoints_225e338 - 2
.hword branch_225e396 - Jumppoints_225e338 - 2
.hword branch_225e3e6 - Jumppoints_225e338 - 2
.hword branch_225e416 - Jumppoints_225e338 - 2
.thumb
branch_225e340: @ 225e340 :thumb
	mov     r1, #0x2c
	ldsh    r1, [r4, r1]
	mov     r0, r4
	add     r0, #0x18
	bl      Function_225cc4c
	ldr     r2, [r4, #0x18]
	mov     r6, r0
	mov     r0, r4
	mov     r1, r5
	asr     r2, r2, #12
	bl      Function_225e500
	mov     r0, #0x2c
	ldsh    r0, [r4, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x2c]
	cmp     r6, #0x1
	bne     branch_225e41c
	ldr     r0, [pc, #0xbc] @ 0x225e424, (=0x569)
	bl      Function_2005748
	ldr     r0, [r4, #0x10]
	ldr     r1, [pc, #0xb8] @ 0x225e428, (=0x2260110)
	lsl     r3, r0, #2
	ldr     r2, [pc, #0xb8] @ 0x225e42c, (=0x226011c)
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, r4
	ldr     r5, [pc, #0xb4] @ 0x225e430, (=0x2260128)
	ldr     r1, [r1, r3]
	ldr     r2, [r2, r3]
	ldr     r3, [r5, r3]
	add     r0, #0x18
	bl      Function_225cbf0
	mov     r0, #0x2e
	ldsh    r0, [r4, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x2e]
	mov     r0, #0x0
	strh    r0, [r4, #0x2c]
	b       branch_225e41c
@ 0x225e396

.thumb
branch_225e396: @ 225e396 :thumb
	mov     r1, #0x2c
	ldsh    r1, [r4, r1]
	mov     r0, r4
	add     r0, #0x18
	bl      Function_225cc4c
	ldr     r2, [r4, #0x18]
	mov     r6, r0
	mov     r0, r4
	mov     r1, r5
	asr     r2, r2, #12
	bl      Function_225e500
	mov     r0, #0x2c
	ldsh    r0, [r4, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x2c]
	cmp     r6, #0x1
	bne     branch_225e41c
	ldr     r0, [r4, #0x10]
	ldr     r1, [pc, #0x6c] @ 0x225e42c, (=0x226011c)
	lsl     r3, r0, #2
	ldr     r2, [pc, #0x64] @ 0x225e428, (=0x2260110)
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, r4
	ldr     r5, [pc, #0x68] @ 0x225e434, (=0x2260134)
	ldr     r1, [r1, r3]
	ldr     r2, [r2, r3]
	ldr     r3, [r5, r3]
	add     r0, #0x18
	bl      Function_225cbf0
	mov     r0, #0x2e
	ldsh    r0, [r4, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x2e]
	mov     r0, #0x0
	strh    r0, [r4, #0x2c]
	b       branch_225e41c
@ 0x225e3e6

.thumb
branch_225e3e6: @ 225e3e6 :thumb
	mov     r1, #0x2c
	ldsh    r1, [r4, r1]
	mov     r0, r4
	add     r0, #0x18
	bl      Function_225cc4c
	ldr     r2, [r4, #0x18]
	mov     r6, r0
	mov     r0, r4
	mov     r1, r5
	asr     r2, r2, #12
	bl      Function_225e500
	mov     r0, #0x2c
	ldsh    r0, [r4, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x2c]
	cmp     r6, #0x1
	bne     branch_225e41c
	mov     r0, #0x2e
	ldsh    r0, [r4, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x2e]
	b       branch_225e41c
@ 0x225e416

.thumb
branch_225e416: @ 225e416 :thumb
	add     sp, #0x4
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x225e41c

.thumb
branch_225e41c: @ 225e41c :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x225e422


.align 2


.word 0x569 @ 0x225e424
.word 0x2260110 @ 0x225e428
.word 0x226011c @ 0x225e42c
.word 0x2260128 @ 0x225e430
.word 0x2260134 @ 0x225e434
.thumb
Function_225e438: @ 225e438 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r1, #0x2e
	ldsh    r1, [r5, r1]
	cmp     r1, #0x0
	beq     branch_225e44c
	cmp     r1, #0x1
	beq     branch_225e47a
	b       branch_225e4ac
@ 0x225e44c

.thumb
branch_225e44c: @ 225e44c :thumb
	mov     r1, #0x2c
	ldsh    r1, [r5, r1]
	add     r0, #0x18
	bl      Function_225cc4c
	ldr     r2, [r5, #0x18]
	mov     r6, r0
	mov     r0, r5
	mov     r1, r4
	asr     r2, r2, #12
	bl      Function_225e500
	mov     r0, #0x2c
	ldsh    r0, [r5, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x2c]
	cmp     r6, #0x1
	bne     branch_225e4ac
	mov     r0, #0x2e
	ldsh    r0, [r5, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x2e]
	b       branch_225e4ac
@ 0x225e47a

.thumb
branch_225e47a: @ 225e47a :thumb
	bl      Function_201acf4
	mov     r0, #0x1
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_225e4b0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	bl      Function_2019ebc
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      Function_2019ebc
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff0c
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x225e4ac

.thumb
branch_225e4ac: @ 225e4ac :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x225e4b0

.thumb
Function_225e4b0: @ 225e4b0 :thumb
	push    {r3-r5,lr}
	ldr     r0, [r0, #0x10]
	mov     r5, r1
	mov     r4, r2
	cmp     r0, #0x0
	beq     branch_225e4c6
	cmp     r0, #0x1
	beq     branch_225e4c6
	cmp     r0, #0x2
	beq     branch_225e4e0
	b       branch_225e4fa
@ 0x225e4c6

.thumb
branch_225e4c6: @ 225e4c6 :thumb
	mov     r1, #0x0
	ldr     r0, [r5, #0x0]
	mov     r2, r1
	mov     r3, r4
	bl      Function_2019184
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	mov     r2, #0x0
	mov     r3, r4
	bl      Function_2019184
	pop     {r3-r5,pc}
@ 0x225e4e0

.thumb
branch_225e4e0: @ 225e4e0 :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, #0x0
	mov     r2, #0x3
	mov     r3, r4
	bl      Function_2019184
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	mov     r2, #0x3
	mov     r3, r4
	bl      Function_2019184
	pop     {r3-r5,pc}
@ 0x225e4fa

.thumb
branch_225e4fa: @ 225e4fa :thumb
	bl      ErrorHandling
	pop     {r3-r5,pc}
@ 0x225e500

.thumb
Function_225e500: @ 225e500 :thumb
	push    {r3-r5,lr}
	ldr     r0, [r0, #0x10]
	mov     r5, r1
	mov     r4, r2
	cmp     r0, #0x0
	beq     branch_225e516
	cmp     r0, #0x1
	beq     branch_225e516
	cmp     r0, #0x2
	beq     branch_225e530
	b       branch_225e54a
@ 0x225e516

.thumb
branch_225e516: @ 225e516 :thumb
	mov     r1, #0x0
	ldr     r0, [r5, #0x0]
	mov     r2, r1
	mov     r3, r4
	bl      Function_201c63c
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	mov     r2, #0x0
	mov     r3, r4
	bl      Function_201c63c
	pop     {r3-r5,pc}
@ 0x225e530

.thumb
branch_225e530: @ 225e530 :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, #0x0
	mov     r2, #0x3
	mov     r3, r4
	bl      Function_201c63c
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	mov     r2, #0x3
	mov     r3, r4
	bl      Function_201c63c
	pop     {r3-r5,pc}
@ 0x225e54a

.thumb
branch_225e54a: @ 225e54a :thumb
	bl      ErrorHandling
	pop     {r3-r5,pc}
@ 0x225e550

.thumb
Function_225e550: @ 225e550 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r6, r0
	mov     r5, r2
	cmp     r1, #0x0
	beq     branch_225e566
	cmp     r1, #0x1
	beq     branch_225e56a
	cmp     r1, #0x2
	beq     branch_225e56e
	b       branch_225e572
@ 0x225e566

.thumb
branch_225e566: @ 225e566 :thumb
	mov     r0, #0x1
	b       branch_225e574
@ 0x225e56a

.thumb
branch_225e56a: @ 225e56a :thumb
	mov     r0, #0x2
	b       branch_225e574
@ 0x225e56e

.thumb
branch_225e56e: @ 225e56e :thumb
	mov     r0, #0x0
	b       branch_225e574
@ 0x225e572

.thumb
branch_225e572: @ 225e572 :thumb
	mov     r0, #0x1
.thumb
branch_225e574: @ 225e574 :thumb
	lsl     r4, r0, #5
	mov     r0, #0xa0
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r1, #0x5
	mov     r2, #0x0
	mov     r3, r4
	str     r5, [sp, #0x8]
	bl      Function_2007148
	mov     r0, #0xa0
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r1, #0x5
	mov     r2, #0x4
	mov     r3, r4
	str     r5, [sp, #0x8]
	bl      Function_2007148
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x225e5a6


.align 2, 0


.thumb
Function_225e5a8: @ 225e5a8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r7, r1
	mov     r5, r3
	mov     r6, r0
	ldr     r1, [pc, #0x160] @ 0x225e714, (=0x664)
	mov     r0, r5
	str     r2, [sp, #0x4]
	bl      malloc
	ldr     r2, [pc, #0x154] @ 0x225e714, (=0x664)
	mov     r1, #0x0
	mov     r4, r0
	blx     Call_FillMemWithValue
	mov     r2, r4
	add     r2, #0x1c
	mov     r1, #0x18
.thumb
branch_225e5cc: @ 225e5cc :thumb
	ldrb    r0, [r7, #0x0]
	.hword  0x1c7f @ add r7, r7, #0x1
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_225e5cc
	mov     r2, r4
	add     r2, #0xc
	mov     r1, #0x10
.thumb
branch_225e5de: @ 225e5de :thumb
	ldrb    r0, [r6, #0x0]
	.hword  0x1c76 @ add r6, r6, #0x1
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_225e5de
	ldr     r0, [sp, #0x4]
	strb    r0, [r4, #0x7]
	mov     r0, r4
	bl      Function_2260044
	ldr     r3, [pc, #0x120] @ 0x225e718, (=0x4000050)
	mov     r1, #0x0
	strh    r1, [r3, #0x0]
	ldr     r0, [pc, #0x120] @ 0x225e71c, (=0x4001050)
	sub     r3, #0x50
	strh    r1, [r0, #0x0]
	ldr     r2, [r3, #0x0]
	ldr     r1, [pc, #0x11c] @ 0x225e720, (=0xffff1fff)
	sub     r0, #0x50
	and     r2, r1
	str     r2, [r3, #0x0]
	ldr     r2, [r0, #0x0]
	and     r1, r2
	str     r1, [r0, #0x0]
	ldr     r0, [pc, #0x110] @ 0x225e724, (=0x22601dc)
	bl      Function_201fe94
	mov     r0, r4
	mov     r1, r4
	add     r0, #0x34
	add     r1, #0xc
	strh    r5, [r4, #0x2]
	bl      Function_225e0f8
	mov     r0, #0x10
	mov     r1, r5
	bl      Function_201dbec
	mov     r0, r4
	ldr     r1, [pc, #0xf8] @ 0x225e728, (=0x226014c)
	ldr     r2, [pc, #0xf8] @ 0x225e72c, (=0x2260324)
	add     r0, #0x4c
	mov     r3, #0x6
	str     r5, [sp, #0x0]
	bl      Function_225cef0
	mov     r0, r4
	mov     r2, #0x2
	add     r0, #0xa0
	mov     r1, #0x20
	mov     r3, r2
	str     r5, [sp, #0x0]
	bl      Function_225cfcc
	mov     r0, #0x73
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, #0x2
	mov     r2, r5
	bl      Function_225ccd0
	mov     r0, r4
	add     r0, #0x58
	mov     r1, r5
	bl      Function_225d084
	mov     r0, r4
	mov     r1, r5
	bl      Function_225e744
	mov     r0, r4
	ldrb    r1, [r4, #0x15]
	add     r0, #0xc
	bl      Function_225c78c
	mov     r1, r0
	mov     r0, r4
	add     r0, #0xc
	bl      Function_225c7a4
	str     r5, [sp, #0x0]
	mov     r3, r0
	mov     r0, r4
	mov     r1, r4
	ldr     r2, [r4, #0xc]
	add     r0, #0x68
	add     r1, #0x4c
	bl      Function_225d290
	mov     r0, #0x7a
	lsl     r0, r0, #2
	mov     r1, r4
	ldrb    r2, [r4, #0x16]
	add     r0, r4, r0
	add     r1, #0x4c
	mov     r3, r5
	bl      Function_225f234
	mov     r0, r4
	mov     r1, r4
	add     r0, #0xc
	add     r1, #0x34
	bl      Function_225e14c
	strb    r0, [r4, #0x5]
	ldrb    r0, [r4, #0x7]
	cmp     r0, #0x0
	beq     branch_225e6c2
	cmp     r0, #0x1
	beq     branch_225e6c2
	cmp     r0, #0x2
	beq     branch_225e6d2
	b       branch_225e6e2
@ 0x225e6c2

.thumb
branch_225e6c2: @ 225e6c2 :thumb
	ldr     r0, [pc, #0x6c] @ 0x225e730, (=0x225e875)
	mov     r1, r4
	mov     r2, #0x0
	bl      AddTaskToTaskList1
	ldr     r1, [pc, #0x64] @ 0x225e734, (=0x644)
	str     r0, [r4, r1]
	b       branch_225e6f4
@ 0x225e6d2

.thumb
branch_225e6d2: @ 225e6d2 :thumb
	ldr     r0, [pc, #0x64] @ 0x225e738, (=0x225ed41)
	mov     r1, r4
	mov     r2, #0x0
	bl      AddTaskToTaskList1
	ldr     r1, [pc, #0x54] @ 0x225e734, (=0x644)
	str     r0, [r4, r1]
	b       branch_225e6f4
@ 0x225e6e2

.thumb
branch_225e6e2: @ 225e6e2 :thumb
	bl      ErrorHandling
	ldr     r0, [pc, #0x48] @ 0x225e730, (=0x225e875)
	mov     r1, r4
	mov     r2, #0x0
	bl      AddTaskToTaskList1
	ldr     r1, [pc, #0x40] @ 0x225e734, (=0x644)
	str     r0, [r4, r1]
.thumb
branch_225e6f4: @ 225e6f4 :thumb
	ldr     r0, [pc, #0x44] @ 0x225e73c, (=0x225f125)
	mov     r1, r4
	mov     r2, #0x0
	bl      AddTaskToTaskList3
	ldr     r1, [pc, #0x40] @ 0x225e740, (=0x648)
	str     r0, [r4, r1]
	ldrb    r0, [r4, #0x16]
	cmp     r0, #0x0
	beq     branch_225e70e
	mov     r0, r5
	bl      0x21d1e74
.thumb
branch_225e70e: @ 225e70e :thumb
	mov     r0, r4
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x225e714

.word 0x664 @ 0x225e714
.word 0x4000050 @ 0x225e718
.word 0x4001050 @ 0x225e71c
.word 0xffff1fff @ 0x225e720
.word 0x22601dc @ 0x225e724
.word 0x226014c @ 0x225e728
.word 0x2260324 @ 0x225e72c
.word 0x225e875 @ 0x225e730
.word 0x644 @ 0x225e734
.word 0x225ed41 @ 0x225e738
.word 0x225f125 @ 0x225e73c
.word 0x648 @ 0x225e740
.thumb
Function_225e744: @ 225e744 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r0, #0xab
	mov     r4, r1
	bl      LoadFromNARC_8
	mov     r1, #0x12
	lsl     r1, r1, #4
	str     r1, [sp, #0x0]
	mov     r2, #0x0
	mov     r1, #0x4
	mov     r3, r2
	mov     r6, r0
	str     r4, [sp, #0x4]
	bl      Function_2007130
	mov     r0, #0x12
	lsl     r0, r0, #4
	str     r0, [sp, #0x0]
	mov     r1, #0x4
	mov     r0, r6
	mov     r2, r1
	mov     r3, #0x0
	str     r4, [sp, #0x4]
	bl      Function_2007130
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r4, [sp, #0xc]
	ldr     r2, [r5, #0x4c]
	mov     r0, r6
	mov     r1, #0x6
	mov     r3, #0x1
	bl      Function_20070e8
	mov     r1, #0x0
	mov     r0, #0x1
	str     r1, [sp, #0x0]
	lsl     r0, r0, #14
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	str     r4, [sp, #0xc]
	ldr     r2, [r5, #0x4c]
	mov     r0, r6
	mov     r1, #0x6
	mov     r3, #0x5
	bl      Function_20070e8
	mov     r3, #0x96
	lsl     r3, r3, #2
	mov     r0, r6
	mov     r1, #0x9
	mov     r2, #0x0
	add     r3, r5, r3
	str     r4, [sp, #0x0]
	bl      Function_20071d0
	mov     r1, #0x95
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r4, [sp, #0xc]
	ldr     r2, [r5, #0x4c]
	mov     r0, r6
	mov     r1, #0x8
	mov     r3, #0x3
	bl      Function_200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r4, [sp, #0xc]
	ldr     r2, [r5, #0x4c]
	mov     r0, r6
	mov     r1, #0x8
	mov     r3, #0x5
	bl      Function_200710c
	ldrb    r1, [r5, #0x7]
	mov     r0, r6
	mov     r2, r4
	bl      Function_225e550
	mov     r0, #0xc
	str     r0, [sp, #0x0]
	mov     r0, #0xd
	str     r0, [sp, #0x4]
	mov     r0, #0xe
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x48] @ 0x225e850, (=0x1388)
	mov     r1, r6
	str     r0, [sp, #0xc]
	mov     r0, #0x73
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r2, #0xb
	mov     r3, #0x5
	str     r4, [sp, #0x10]
	bl      Function_225cd54
	mov     r1, #0x79
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	bl      Function_225f148
	mov     r3, #0x82
	lsl     r3, r3, #2
	add     r0, r5, r3
	mov     r1, r5
	mov     r2, r5
	sub     r3, #0x3c
	str     r6, [sp, #0x0]
	add     r1, #0x4c
	add     r2, #0xa0
	add     r3, r5, r3
	str     r4, [sp, #0x4]
	bl      Function_225f484
	mov     r0, r6
	bl      Call_FS_CloseFile
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x225e84e


.align 2


.word 0x1388 @ 0x225e850
.thumb
Function_225e854: @ 225e854 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x82
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_225f578
	mov     r0, #0x95
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      free
	mov     r0, r4
	bl      Function_225f224
	pop     {r4,pc}
@ 0x225e874

.thumb
Function_225e874: @ 225e874 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r1
	ldrb    r1, [r4, #0x4]
	cmp     r1, #0x17
	bhi     branch_225e97e
	add     r0, r1, r1
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x225e88c

Jumppoints_225e88c:
.hword branch_225e8bc - Jumppoints_225e88c - 2
.hword branch_225e92c - Jumppoints_225e88c - 2
.hword branch_225e93c - Jumppoints_225e88c - 2
.hword branch_225e954 - Jumppoints_225e88c - 2
.hword branch_225e96e - Jumppoints_225e88c - 2
.hword branch_225e9e0 - Jumppoints_225e88c - 2
.hword branch_225ea52 - Jumppoints_225e88c - 2
.hword branch_225eabe - Jumppoints_225e88c - 2
.hword branch_225ead0 - Jumppoints_225e88c - 2
.hword branch_225eae0 - Jumppoints_225e88c - 2
.hword branch_225eafc - Jumppoints_225e88c - 2
.hword branch_225eb34 - Jumppoints_225e88c - 2
.hword branch_225eb68 - Jumppoints_225e88c - 2
.hword branch_225ebd0 - Jumppoints_225e88c - 2
.hword branch_225ebea - Jumppoints_225e88c - 2
.hword branch_225ec12 - Jumppoints_225e88c - 2
.hword branch_225ec36 - Jumppoints_225e88c - 2
.hword branch_225ec54 - Jumppoints_225e88c - 2
.hword branch_225ec74 - Jumppoints_225e88c - 2
.hword branch_225ec82 - Jumppoints_225e88c - 2
.hword branch_225ec90 - Jumppoints_225e88c - 2
.hword branch_225ecc0 - Jumppoints_225e88c - 2
.hword branch_225ecd0 - Jumppoints_225e88c - 2
.hword branch_225ece6 - Jumppoints_225e88c - 2
.thumb
branch_225e8bc: @ 225e8bc :thumb
	ldr     r0, [r4, #0x18]
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x2d8] @ 0x225eb9c, (=0x64c)
	str     r1, [r4, r0]
	ldrb    r0, [r4, #0x17]
	cmp     r0, #0x1
	bne     branch_225e8d0
	mov     r0, #0x0
	strb    r0, [r4, #0x9]
	b       branch_225e90e
@ 0x225e8d0

.thumb
branch_225e8d0: @ 225e8d0 :thumb
	mov     r0, r4
	bl      Function_225f8fc
	ldrb    r2, [r4, #0x15]
	add     r1, r4, r2
	add     r1, #0x2c
	ldrb    r1, [r1, #0x0]
	cmp     r1, #0x0
	bne     branch_225e8fe
	lsl     r1, r2, #2
	add     r1, r4, r1
	ldr     r1, [r1, #0x1c]
	cmp     r1, r0
	bls     branch_225e8fe
	ldr     r0, [r4, #0x18]
	ldr     r0, [r0, #0x0]
	bl      Function_225e180
	ldr     r1, [r4, #0x18]
	str     r0, [r1, #0x0]
	mov     r0, #0x1
	strb    r0, [r4, #0x9]
	b       branch_225e902
@ 0x225e8fe

.thumb
branch_225e8fe: @ 225e8fe :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x9]
.thumb
branch_225e902: @ 225e902 :thumb
	ldrb    r0, [r4, #0x15]
	cmp     r0, #0x0
	bne     branch_225e90e
	mov     r0, r4
	bl      Function_225f920
.thumb
branch_225e90e: @ 225e90e :thumb
	mov     r0, #0x6
	mov     r1, #0x1
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldrh    r0, [r4, #0x2]
	ldr     r3, [pc, #0x284] @ 0x225eba0, (=0xffff)
	mov     r2, r1
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	bl      Function_200f174
	ldrb    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
	b       branch_225ed10
@ 0x225e92c

.thumb
branch_225e92c: @ 225e92c :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_225e97e
	ldrb    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
	b       branch_225ed10
@ 0x225e93c

.thumb
branch_225e93c: @ 225e93c :thumb
	mov     r0, r4
	mov     r1, r4
	add     r0, #0x68
	add     r1, #0x58
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_225d368
	ldrb    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
	b       branch_225ed10
@ 0x225e954

.thumb
branch_225e954: @ 225e954 :thumb
	mov     r0, r4
	add     r0, #0x68
	mov     r1, #0x0
	bl      Function_225d43c
	cmp     r0, #0x0
	beq     branch_225e97e
	mov     r0, #0x40
	strh    r0, [r4, #0x0]
	ldrb    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
	b       branch_225ed10
@ 0x225e96e

.thumb
branch_225e96e: @ 225e96e :thumb
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_225e97e
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, #0x0]
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_225e980
.thumb
branch_225e97e: @ 225e97e :thumb
	b       branch_225ed10
@ 0x225e980

.thumb
branch_225e980: @ 225e980 :thumb
	mov     r0, r4
	add     r0, #0x68
	mov     r1, #0x0
	mov     r5, #0x1
	bl      Function_225d400
	mov     r0, #0xcf
	lsl     r0, r0, #2
	mov     r1, r4
	ldrh    r2, [r4, #0x2]
	add     r0, r4, r0
	add     r1, #0x4c
	bl      Function_225df7c
	mov     r0, r4
	bl      Function_225f8fc
	ldrb    r6, [r4, #0x14]
	mov     r2, r0
	mov     r1, #0x0
	cmp     r6, #0x0
	ble     branch_225e9c0
	mov     r3, r4
	mov     r7, r1
.thumb
branch_225e9b0: @ 225e9b0 :thumb
	ldr     r0, [r3, #0x1c]
	cmp     r0, r2
	bls     branch_225e9b8
	mov     r5, r7
.thumb
branch_225e9b8: @ 225e9b8 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1d1b @ add r3, r3, #0x4
	cmp     r1, r6
	blt     branch_225e9b0
.thumb
branch_225e9c0: @ 225e9c0 :thumb
	cmp     r5, #0x1
	bne     branch_225e9d0
	ldr     r0, [pc, #0x1dc] @ 0x225eba4, (=0x652)
	mov     r1, #0x10
	strh    r1, [r4, r0]
	mov     r0, #0x16
	strb    r0, [r4, #0x4]
	b       branch_225ed10
@ 0x225e9d0

.thumb
branch_225e9d0: @ 225e9d0 :thumb
	ldrb    r0, [r4, #0x4]
	mov     r1, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
	mov     r0, #0x65
	lsl     r0, r0, #4
	strh    r1, [r4, r0]
	b       branch_225ed10
@ 0x225e9e0

.thumb
branch_225e9e0: @ 225e9e0 :thumb
	mov     r7, #0x65
	mov     r1, #0x0
	mov     r6, #0x1
	lsl     r7, r7, #4
.thumb
branch_225e9e8: @ 225e9e8 :thumb
	ldrh    r0, [r4, r7]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, r7]
	ldrb    r3, [r4, #0x14]
	mov     r0, #0x0
	cmp     r3, #0x0
	ble     branch_225ea0e
	mov     r2, #0x65
	lsl     r2, r2, #4
	ldrh    r2, [r4, r2]
.thumb
branch_225e9fc: @ 225e9fc :thumb
	add     r5, r4, r0
	add     r5, #0x2c
	ldrb    r5, [r5, #0x0]
	cmp     r2, r5
	bne     branch_225ea08
	mov     r1, r6
.thumb
branch_225ea08: @ 225ea08 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r0, r3
	blt     branch_225e9fc
.thumb
branch_225ea0e: @ 225ea0e :thumb
	cmp     r1, #0x0
	beq     branch_225e9e8
	mov     r1, #0x65
	lsl     r1, r1, #4
	ldrh    r0, [r4, r1]
	cmp     r0, #0x3
	bhi     branch_225ea40
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x225ea28

Jumppoints_225ea28:
.hword branch_225ea38 - Jumppoints_225ea28 - 2
.hword branch_225ea38 - Jumppoints_225ea28 - 2
.hword branch_225ea30 - Jumppoints_225ea28 - 2
.hword branch_225ea30 - Jumppoints_225ea28 - 2
.thumb
branch_225ea30: @ 225ea30 :thumb
	mov     r2, #0x10
	add     r0, r1, #0x2
	strh    r2, [r4, r0]
	b       branch_225ea44
@ 0x225ea38

.thumb
branch_225ea38: @ 225ea38 :thumb
	mov     r2, #0x20
	add     r0, r1, #0x2
	strh    r2, [r4, r0]
	b       branch_225ea44
@ 0x225ea40

.thumb
branch_225ea40: @ 225ea40 :thumb
	bl      ErrorHandling
.thumb
branch_225ea44: @ 225ea44 :thumb
	mov     r0, r4
	bl      Function_225f7d8
	ldrb    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
	b       branch_225ed10
@ 0x225ea52

.thumb
branch_225ea52: @ 225ea52 :thumb
	ldr     r0, [pc, #0x150] @ 0x225eba4, (=0x652)
	ldrh    r1, [r4, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strh    r1, [r4, r0]
	mov     r0, r4
	bl      Function_225f7d8
	ldr     r0, [pc, #0x140] @ 0x225eba4, (=0x652)
	ldrh    r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_225eaf0
	ldrb    r0, [r4, #0x14]
	mov     r5, #0x0
	cmp     r0, #0x0
	ble     branch_225eaa6
	mov     r6, #0x65
	mov     r7, r5
	lsl     r6, r6, #4
.thumb
branch_225ea76: @ 225ea76 :thumb
	add     r1, r4, r5
	add     r1, #0x2c
	ldrb    r2, [r1, #0x0]
	ldrh    r1, [r4, r6]
	mov     r0, r7
	cmp     r1, r2
	bne     branch_225ea88
	mov     r0, #0x1
	b       branch_225ea92
@ 0x225ea88

.thumb
branch_225ea88: @ 225ea88 :thumb
	cmp     r1, #0x1
	bne     branch_225ea92
	cmp     r2, #0x0
	bne     branch_225ea92
	mov     r0, #0x1
.thumb
branch_225ea92: @ 225ea92 :thumb
	cmp     r0, #0x0
	beq     branch_225ea9e
	mov     r0, r4
	mov     r1, r5
	bl      Function_225f6e4
.thumb
branch_225ea9e: @ 225ea9e :thumb
	ldrb    r0, [r4, #0x14]
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r0
	blt     branch_225ea76
.thumb
branch_225eaa6: @ 225eaa6 :thumb
	mov     r0, #0x65
	lsl     r0, r0, #4
	ldrh    r0, [r4, r0]
	cmp     r0, #0x1
	bls     branch_225eab6
	mov     r0, #0x5
	strb    r0, [r4, #0x4]
	b       branch_225ed10
@ 0x225eab6

.thumb
branch_225eab6: @ 225eab6 :thumb
	ldrb    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
	b       branch_225ed10
@ 0x225eabe

.thumb
branch_225eabe: @ 225eabe :thumb
	mov     r0, r4
	bl      Function_225f7d8
	cmp     r0, #0x0
	beq     branch_225eaf0
	ldrb    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
	b       branch_225ed10
@ 0x225ead0

.thumb
branch_225ead0: @ 225ead0 :thumb
	add     r0, r1, #0x1
	strb    r0, [r4, #0x4]
	mov     r0, r4
	bl      Function_225f168
	mov     r0, #0x1e
	strh    r0, [r4, #0x0]
	b       branch_225ed10
@ 0x225eae0

.thumb
branch_225eae0: @ 225eae0 :thumb
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_225eaea
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, #0x0]
.thumb
branch_225eaea: @ 225eaea :thumb
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_225eaf2
.thumb
branch_225eaf0: @ 225eaf0 :thumb
	b       branch_225ed10
@ 0x225eaf2

.thumb
branch_225eaf2: @ 225eaf2 :thumb
	mov     r0, #0xa
	strb    r0, [r4, #0x4]
	mov     r0, #0x0
	strh    r0, [r4, #0x0]
	b       branch_225ed10
@ 0x225eafc

.thumb
branch_225eafc: @ 225eafc :thumb
	ldrb    r1, [r4, #0x15]
	add     r0, r4, r1
	add     r0, #0x2c
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_225eb0c
	mov     r5, #0x11
	b       branch_225eb0e
@ 0x225eb0c

.thumb
branch_225eb0c: @ 225eb0c :thumb
	mov     r5, #0x12
.thumb
branch_225eb0e: @ 225eb0e :thumb
	lsl     r1, r1, #2
	add     r1, r4, r1
	mov     r0, r4
	ldr     r1, [r1, #0x3c]
	add     r0, #0x58
	bl      Function_225d104
	mov     r0, r4
	mov     r1, r4
	add     r0, #0x68
	add     r1, #0x58
	mov     r2, r5
	mov     r3, #0x0
	bl      Function_225d368
	ldrb    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
	b       branch_225ed10
@ 0x225eb34

.thumb
branch_225eb34: @ 225eb34 :thumb
	mov     r0, r4
	add     r0, #0x68
	mov     r1, #0x0
	bl      Function_225d43c
	cmp     r0, #0x0
	beq     branch_225ebfa
	mov     r0, r4
	bl      Function_225f860
	cmp     r0, #0x1
	bne     branch_225ebfa
	ldrb    r0, [r4, #0x17]
	cmp     r0, #0x1
	bne     branch_225eb5c
	mov     r0, #0x66
	strh    r0, [r4, #0x0]
	mov     r0, #0xe
	strb    r0, [r4, #0x4]
	b       branch_225ed10
@ 0x225eb5c

.thumb
branch_225eb5c: @ 225eb5c :thumb
	mov     r0, #0x66
	strh    r0, [r4, #0x0]
	ldrb    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
	b       branch_225ed10
@ 0x225eb68

.thumb
branch_225eb68: @ 225eb68 :thumb
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_225eb74
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, #0x0]
	b       branch_225ed10
@ 0x225eb74

.thumb
branch_225eb74: @ 225eb74 :thumb
	ldrb    r0, [r4, #0x9]
	cmp     r0, #0x0
	beq     branch_225eba8
	ldr     r1, [r4, #0x18]
	mov     r0, r4
	ldr     r1, [r1, #0x0]
	add     r0, #0x58
	bl      Function_225d170
	ldr     r0, [pc, #0x14] @ 0x225eb9c, (=0x64c)
	ldr     r1, [r4, r0]
	ldr     r0, [r4, #0x18]
	ldr     r0, [r0, #0x0]
	cmp     r1, r0
	bne     branch_225eb96
	mov     r5, #0x13
	b       branch_225ebaa
@ 0x225eb96

.thumb
branch_225eb96: @ 225eb96 :thumb
	mov     r5, #0x2
	b       branch_225ebaa
@ 0x225eb9a


.align 2


.word 0x64c @ 0x225eb9c
.word 0xffff @ 0x225eba0
.word 0x652 @ 0x225eba4
.thumb
branch_225eba8: @ 225eba8 :thumb
	mov     r5, #0x9
.thumb
branch_225ebaa: @ 225ebaa :thumb
	ldrb    r1, [r4, #0x15]
	mov     r0, r4
	add     r0, #0x58
	lsl     r1, r1, #2
	add     r1, r4, r1
	ldr     r1, [r1, #0x3c]
	bl      Function_225d104
	mov     r0, r4
	mov     r1, r4
	add     r0, #0x68
	add     r1, #0x58
	mov     r2, r5
	mov     r3, #0x0
	bl      Function_225d368
	mov     r0, #0xd
	strb    r0, [r4, #0x4]
	b       branch_225ed10
@ 0x225ebd0

.thumb
branch_225ebd0: @ 225ebd0 :thumb
	mov     r0, r4
	add     r0, #0x68
	mov     r1, #0x0
	bl      Function_225d43c
	cmp     r0, #0x0
	beq     branch_225ebfa
	mov     r0, #0x66
	strh    r0, [r4, #0x0]
	ldrb    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
	b       branch_225ed10
@ 0x225ebea

.thumb
branch_225ebea: @ 225ebea :thumb
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_225ebfa
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, #0x0]
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_225ebfc
.thumb
branch_225ebfa: @ 225ebfa :thumb
	b       branch_225ed10
@ 0x225ebfc

.thumb
branch_225ebfc: @ 225ebfc :thumb
	mov     r0, r4
	add     r0, #0x68
	mov     r1, #0x0
	bl      Function_225d400
	mov     r0, #0x1e
	strh    r0, [r4, #0x0]
	ldrb    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
	b       branch_225ed10
@ 0x225ec12

.thumb
branch_225ec12: @ 225ec12 :thumb
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_225ec1e
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, #0x0]
	b       branch_225ed10
@ 0x225ec1e

.thumb
branch_225ec1e: @ 225ec1e :thumb
	mov     r0, #0x82
	bl      Function_20364f0
	ldrb    r0, [r4, #0x16]
	cmp     r0, #0x0
	beq     branch_225ec2e
	bl      0x21d1f18
.thumb
branch_225ec2e: @ 225ec2e :thumb
	ldrb    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
	b       branch_225ed10
@ 0x225ec36

.thumb
branch_225ec36: @ 225ec36 :thumb
	mov     r0, #0x82
	bl      Function_2036540
	cmp     r0, #0x0
	beq     branch_225ed10
	ldrb    r0, [r4, #0x17]
	cmp     r0, #0x0
	beq     branch_225ec4c
	mov     r0, #0x13
	strb    r0, [r4, #0x4]
	b       branch_225ed10
@ 0x225ec4c

.thumb
branch_225ec4c: @ 225ec4c :thumb
	ldrb    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
	b       branch_225ed10
@ 0x225ec54

.thumb
branch_225ec54: @ 225ec54 :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r1, #0x0
	ldrh    r0, [r4, #0x2]
	mov     r2, r1
	mov     r3, r1
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	bl      Function_200f174
	ldrb    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
	b       branch_225ed10
@ 0x225ec74

.thumb
branch_225ec74: @ 225ec74 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_225ed10
	mov     r0, #0x15
	strb    r0, [r4, #0x4]
	b       branch_225ed10
@ 0x225ec82

.thumb
branch_225ec82: @ 225ec82 :thumb
	mov     r0, r4
	bl      Function_225f890
	ldrb    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
	b       branch_225ed10
@ 0x225ec90

.thumb
branch_225ec90: @ 225ec90 :thumb
	ldrh    r0, [r4, #0x2]
	mov     r1, r4
	mov     r2, r4
	str     r0, [sp, #0x0]
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldrb    r3, [r4, #0x7]
	add     r0, r4, r0
	add     r1, #0x68
	add     r2, #0x58
	bl      Function_225f27c
	cmp     r0, #0x0
	beq     branch_225ed10
	mov     r0, #0x7a
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_225f420
	strb    r0, [r4, #0x8]
	ldrb    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
	b       branch_225ed10
@ 0x225ecc0

.thumb
branch_225ecc0: @ 225ecc0 :thumb
	mov     r0, #0xcf
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_225dffc
	mov     r0, #0x1
	strb    r0, [r4, #0x6]
	b       branch_225ed10
@ 0x225ecd0

.thumb
branch_225ecd0: @ 225ecd0 :thumb
	ldr     r0, [pc, #0x68] @ 0x225ed3c, (=0x652)
	ldrh    r1, [r4, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strh    r1, [r4, r0]
	ldrh    r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_225ed10
	ldrb    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
	b       branch_225ed10
@ 0x225ece6

.thumb
branch_225ece6: @ 225ece6 :thumb
	ldrb    r0, [r4, #0x14]
	mov     r5, #0x0
	cmp     r0, #0x0
	ble     branch_225ed0c
.thumb
branch_225ecee: @ 225ecee :thumb
	.hword  0x1e41 @ sub r1, r0, #0x1
	add     r0, r4, r5
	add     r0, #0x2c
	strb    r1, [r0, #0x0]
	add     r2, r4, r5
	add     r2, #0x2c
	ldrb    r2, [r2, #0x0]
	mov     r0, r4
	mov     r1, r5
	bl      Function_225f6e4
	ldrb    r0, [r4, #0x14]
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r0
	blt     branch_225ecee
.thumb
branch_225ed0c: @ 225ed0c :thumb
	mov     r0, #0x7
	strb    r0, [r4, #0x4]
.thumb
branch_225ed10: @ 225ed10 :thumb
	mov     r0, r4
	bl      Function_225f19c
	mov     r0, r4
	add     r0, #0xa0
	bl      Function_225d070
	ldr     r0, [r4, #0x4c]
	mov     r1, #0x3
	mov     r2, #0x4
	mov     r3, #0x2
	bl      Function_201c63c
	ldr     r0, [r4, #0x4c]
	mov     r1, #0x5
	mov     r2, #0x4
	mov     r3, #0x2
	bl      Function_201c63c
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x225ed3a


.align 2


.word 0x652 @ 0x225ed3c
.thumb
Function_225ed40: @ 225ed40 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x2c
	mov     r4, r1
	ldrb    r0, [r4, #0x4]
	cmp     r0, #0x14
	bhi     branch_225ee2a
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x225ed58

Jumppoints_225ed58:
.hword branch_225ed82 - Jumppoints_225ed58 - 2
.hword branch_225edd2 - Jumppoints_225ed58 - 2
.hword branch_225edea - Jumppoints_225ed58 - 2
.hword branch_225ee00 - Jumppoints_225ed58 - 2
.hword branch_225ee1a - Jumppoints_225ed58 - 2
.hword branch_225ee3e - Jumppoints_225ed58 - 2
.hword branch_225ef20 - Jumppoints_225ed58 - 2
.hword branch_225ef4a - Jumppoints_225ed58 - 2
.hword branch_225ef6e - Jumppoints_225ed58 - 2
.hword branch_225ef94 - Jumppoints_225ed58 - 2
.hword branch_225efd2 - Jumppoints_225ed58 - 2
.hword branch_225eff4 - Jumppoints_225ed58 - 2
.hword branch_225f01a - Jumppoints_225ed58 - 2
.hword branch_225f030 - Jumppoints_225ed58 - 2
.hword branch_225f046 - Jumppoints_225ed58 - 2
.hword branch_225f05e - Jumppoints_225ed58 - 2
.hword branch_225f07c - Jumppoints_225ed58 - 2
.hword branch_225f09c - Jumppoints_225ed58 - 2
.hword branch_225f0aa - Jumppoints_225ed58 - 2
.hword branch_225f0bc - Jumppoints_225ed58 - 2
.hword branch_225f0ea - Jumppoints_225ed58 - 2
.thumb
branch_225ed82: @ 225ed82 :thumb
	ldrb    r0, [r4, #0x17]
	cmp     r0, #0x1
	bne     branch_225ed8e
	mov     r0, #0x0
	strb    r0, [r4, #0x9]
	b       branch_225edb4
@ 0x225ed8e

.thumb
branch_225ed8e: @ 225ed8e :thumb
	ldr     r0, [r4, #0x30]
	cmp     r0, #0xa
	bcc     branch_225eda4
	ldr     r0, [r4, #0x18]
	ldr     r0, [r0, #0x0]
	bl      Function_225e180
	ldr     r1, [r4, #0x18]
	str     r0, [r1, #0x0]
	mov     r0, #0x1
	b       branch_225eda6
@ 0x225eda4

.thumb
branch_225eda4: @ 225eda4 :thumb
	mov     r0, #0x0
.thumb
branch_225eda6: @ 225eda6 :thumb
	strb    r0, [r4, #0x9]
	ldrb    r0, [r4, #0x15]
	cmp     r0, #0x0
	bne     branch_225edb4
	mov     r0, r4
	bl      Function_225f988
.thumb
branch_225edb4: @ 225edb4 :thumb
	mov     r0, #0x6
	mov     r1, #0x1
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldrh    r0, [r4, #0x2]
	ldr     r3, [pc, #0x2f8] @ 0x225f0b8, (=0xffff)
	mov     r2, r1
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	bl      Function_200f174
	ldrb    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
	b       branch_225f0f8
@ 0x225edd2

.thumb
branch_225edd2: @ 225edd2 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_225ee2a
	ldrb    r0, [r4, #0x4]
	mov     r1, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
	mov     r0, #0x65
	lsl     r0, r0, #4
	strh    r1, [r4, r0]
	b       branch_225f0f8
@ 0x225edea

.thumb
branch_225edea: @ 225edea :thumb
	mov     r0, r4
	add     r0, #0x68
	add     r1, #0x58
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_225d368
	ldrb    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
	b       branch_225f0f8
@ 0x225ee00

.thumb
branch_225ee00: @ 225ee00 :thumb
	mov     r0, r4
	add     r0, #0x68
	mov     r1, #0x0
	bl      Function_225d43c
	cmp     r0, #0x0
	beq     branch_225ee2a
	mov     r0, #0x66
	strh    r0, [r4, #0x0]
	ldrb    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
	b       branch_225f0f8
@ 0x225ee1a

.thumb
branch_225ee1a: @ 225ee1a :thumb
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_225ee2a
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, #0x0]
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_225ee2c
.thumb
branch_225ee2a: @ 225ee2a :thumb
	b       branch_225f0f8
@ 0x225ee2c

.thumb
branch_225ee2c: @ 225ee2c :thumb
	mov     r0, r4
	add     r0, #0x68
	mov     r1, #0x0
	bl      Function_225d400
	ldrb    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
	b       branch_225f0f8
@ 0x225ee3e

.thumb
branch_225ee3e: @ 225ee3e :thumb
	mov     r0, #0xcf
	lsl     r0, r0, #2
	ldrh    r2, [r4, #0x2]
	add     r0, r4, r0
	add     r1, #0x4c
	bl      Function_225df7c
	ldrb    r1, [r4, #0x14]
	mov     r6, #0x0
	cmp     r1, #0x0
	ble     branch_225ef14
	mov     r0, #0x97
	lsl     r0, r0, #2
	add     r5, r4, r0
	mov     r0, r4
	str     r0, [sp, #0x1c]
	add     r0, #0x4c
	str     r0, [sp, #0x1c]
	mov     r0, r4
	str     r0, [sp, #0x20]
	add     r0, #0xa0
	str     r0, [sp, #0x20]
	mov     r0, r4
	str     r0, [sp, #0x24]
	add     r0, #0xc
	str     r0, [sp, #0x24]
	mov     r0, r4
	str     r0, [sp, #0x28]
	add     r0, #0x58
	str     r4, [sp, #0x18]
	mov     r7, r6
	str     r0, [sp, #0x28]
.thumb
branch_225ee7e: @ 225ee7e :thumb
	ldr     r0, [sp, #0x1c]
	mov     r3, #0x96
	str     r0, [sp, #0x0]
	str     r6, [sp, #0x4]
	ldrb    r0, [r4, #0x15]
	lsl     r3, r3, #2
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x20]
	str     r0, [sp, #0xc]
	mov     r0, #0x79
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	str     r0, [sp, #0x10]
	ldrh    r0, [r4, #0x2]
	str     r0, [sp, #0x14]
	ldrb    r2, [r4, #0x7]
	ldr     r3, [r4, r3]
	mov     r0, r5
	bl      Function_225dac0
	ldr     r0, [sp, #0x24]
	mov     r1, r6
	bl      Function_225c78c
	mov     r1, r0
	ldr     r0, [sp, #0x24]
	bl      Function_225c7a4
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r2, [sp, #0x18]
	ldr     r1, [sp, #0x28]
	ldr     r2, [r2, #0x3c]
	mov     r0, r5
	mov     r3, #0x8
	bl      Function_225dc44
	add     r0, r4, r6
	add     r0, #0x38
	ldrb    r0, [r0, #0x0]
	add     r3, r4, r6
	add     r3, #0x34
	str     r0, [sp, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x4]
	ldrb    r2, [r4, #0x5]
	ldrb    r3, [r3, #0x0]
	ldr     r1, [sp, #0x28]
	mov     r0, r5
	bl      Function_225dca0
	ldr     r1, [sp, #0x1c]
	mov     r0, r5
	bl      Function_225dd80
	mov     r0, r5
	bl      Function_225dd94
	mov     r1, #0x7
	lsl     r2, r7, #16
	mov     r0, r5
	mvn     r1, r1
	asr     r2, r2, #16
	bl      Function_225ddd4
	ldr     r0, [sp, #0x18]
	ldrb    r1, [r4, #0x14]
	.hword  0x1d00 @ add r0, r0, #0x4
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x38
	str     r0, [sp, #0x18]
	.hword  0x1cff @ add r7, r7, #0x3
	cmp     r6, r1
	blt     branch_225ee7e
.thumb
branch_225ef14: @ 225ef14 :thumb
	ldrb    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
	mov     r0, #0x10
	strh    r0, [r4, #0x0]
	b       branch_225f0f8
@ 0x225ef20

.thumb
branch_225ef20: @ 225ef20 :thumb
	mov     r0, r4
	bl      Function_225f7d8
	cmp     r0, #0x1
	bne     branch_225efb2
	ldrh    r0, [r4, #0x0]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, #0x0]
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_225efb2
	mov     r0, #0x82
	lsl     r0, r0, #2
	ldr     r1, [r4, #0x30]
	add     r0, r4, r0
	bl      Function_225f598
	ldrb    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
	b       branch_225f0f8
@ 0x225ef4a

.thumb
branch_225ef4a: @ 225ef4a :thumb
	mov     r0, #0x82
	lsl     r0, r0, #2
	add     r0, r4, r0
	add     r1, #0x4c
	bl      Function_225f5ac
	cmp     r0, #0x1
	bne     branch_225efb2
	ldrb    r0, [r4, #0x9]
	cmp     r0, #0x1
	bne     branch_225ef66
	mov     r0, r4
	bl      Function_225f83c
.thumb
branch_225ef66: @ 225ef66 :thumb
	ldrb    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
	b       branch_225f0f8
@ 0x225ef6e

.thumb
branch_225ef6e: @ 225ef6e :thumb
	mov     r0, r4
	ldr     r1, [r4, #0x30]
	add     r0, #0x58
	bl      Function_225d154
	mov     r0, r4
	mov     r1, r4
	add     r0, #0x68
	add     r1, #0x58
	mov     r2, #0x7
	mov     r3, #0x0
	bl      Function_225d368
	mov     r0, #0x66
	strh    r0, [r4, #0x0]
	ldrb    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
	b       branch_225f0f8
@ 0x225ef94

.thumb
branch_225ef94: @ 225ef94 :thumb
	mov     r0, r4
	add     r0, #0x68
	mov     r1, #0x0
	bl      Function_225d43c
	cmp     r0, #0x1
	bne     branch_225efb2
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_225efcc
	mov     r0, r4
	bl      Function_225f860
	cmp     r0, #0x1
	beq     branch_225efb4
.thumb
branch_225efb2: @ 225efb2 :thumb
	b       branch_225f0f8
@ 0x225efb4

.thumb
branch_225efb4: @ 225efb4 :thumb
	ldrb    r0, [r4, #0x17]
	cmp     r0, #0x1
	bne     branch_225efc4
	mov     r0, #0x66
	strh    r0, [r4, #0x0]
	mov     r0, #0xc
	strb    r0, [r4, #0x4]
	b       branch_225f0f8
@ 0x225efc4

.thumb
branch_225efc4: @ 225efc4 :thumb
	ldrb    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
	b       branch_225f0f8
@ 0x225efcc

.thumb
branch_225efcc: @ 225efcc :thumb
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, #0x0]
	b       branch_225f0f8
@ 0x225efd2

.thumb
branch_225efd2: @ 225efd2 :thumb
	ldrb    r0, [r4, #0x9]
	cmp     r0, #0x0
	beq     branch_225efdc
	mov     r2, #0x8
	b       branch_225efde
@ 0x225efdc

.thumb
branch_225efdc: @ 225efdc :thumb
	mov     r2, #0x9
.thumb
branch_225efde: @ 225efde :thumb
	mov     r0, r4
	mov     r1, r4
	add     r0, #0x68
	add     r1, #0x58
	mov     r3, #0x0
	bl      Function_225d368
	ldrb    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
	b       branch_225f0f8
@ 0x225eff4

.thumb
branch_225eff4: @ 225eff4 :thumb
	mov     r0, r4
	add     r0, #0x68
	mov     r1, #0x0
	bl      Function_225d43c
	cmp     r0, #0x0
	beq     branch_225f0f8
	mov     r0, #0x66
	strh    r0, [r4, #0x0]
	ldrb    r0, [r4, #0x9]
	cmp     r0, #0x0
	beq     branch_225f012
	mov     r0, #0xd
	strb    r0, [r4, #0x4]
	b       branch_225f0f8
@ 0x225f012

.thumb
branch_225f012: @ 225f012 :thumb
	ldrb    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
	b       branch_225f0f8
@ 0x225f01a

.thumb
branch_225f01a: @ 225f01a :thumb
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_225f0f8
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, #0x0]
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_225f0f8
	mov     r0, #0xe
	strb    r0, [r4, #0x4]
	b       branch_225f0f8
@ 0x225f030

.thumb
branch_225f030: @ 225f030 :thumb
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_225f03a
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, #0x0]
.thumb
branch_225f03a: @ 225f03a :thumb
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_225f0f8
	mov     r0, #0xe
	strb    r0, [r4, #0x4]
	b       branch_225f0f8
@ 0x225f046

.thumb
branch_225f046: @ 225f046 :thumb
	ldrb    r0, [r4, #0x16]
	cmp     r0, #0x0
	beq     branch_225f050
	bl      0x21d1f18
.thumb
branch_225f050: @ 225f050 :thumb
	mov     r0, #0x82
	bl      Function_20364f0
	ldrb    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
	b       branch_225f0f8
@ 0x225f05e

.thumb
branch_225f05e: @ 225f05e :thumb
	mov     r0, #0x82
	bl      Function_2036540
	cmp     r0, #0x0
	beq     branch_225f0f8
	ldrb    r0, [r4, #0x17]
	cmp     r0, #0x0
	beq     branch_225f074
	mov     r0, #0x12
	strb    r0, [r4, #0x4]
	b       branch_225f0f8
@ 0x225f074

.thumb
branch_225f074: @ 225f074 :thumb
	ldrb    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
	b       branch_225f0f8
@ 0x225f07c

.thumb
branch_225f07c: @ 225f07c :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r1, #0x0
	ldrh    r0, [r4, #0x2]
	mov     r2, r1
	mov     r3, r1
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	bl      Function_200f174
	ldrb    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
	b       branch_225f0f8
@ 0x225f09c

.thumb
branch_225f09c: @ 225f09c :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_225f0f8
	mov     r0, #0x14
	strb    r0, [r4, #0x4]
	b       branch_225f0f8
@ 0x225f0aa

.thumb
branch_225f0aa: @ 225f0aa :thumb
	mov     r0, r4
	bl      Function_225f890
	ldrb    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
	b       branch_225f0f8
@ 0x225f0b8

.word 0xffff @ 0x225f0b8
.thumb
branch_225f0bc: @ 225f0bc :thumb
	ldrh    r0, [r4, #0x2]
	mov     r2, r4
	add     r1, #0x68
	str     r0, [sp, #0x0]
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldrb    r3, [r4, #0x7]
	add     r0, r4, r0
	add     r2, #0x58
	bl      Function_225f27c
	cmp     r0, #0x0
	beq     branch_225f0f8
	mov     r0, #0x7a
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_225f420
	strb    r0, [r4, #0x8]
	ldrb    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
	b       branch_225f0f8
@ 0x225f0ea

.thumb
branch_225f0ea: @ 225f0ea :thumb
	mov     r0, #0xcf
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_225dffc
	mov     r0, #0x1
	strb    r0, [r4, #0x6]
.thumb
branch_225f0f8: @ 225f0f8 :thumb
	mov     r0, r4
	bl      Function_225f19c
	mov     r0, r4
	add     r0, #0xa0
	bl      Function_225d070
	ldr     r0, [r4, #0x4c]
	mov     r1, #0x3
	mov     r2, #0x4
	mov     r3, #0x2
	bl      Function_201c63c
	ldr     r0, [r4, #0x4c]
	mov     r1, #0x5
	mov     r2, #0x4
	mov     r3, #0x2
	bl      Function_201c63c
	add     sp, #0x2c
	pop     {r4-r7,pc}
@ 0x225f122


.align 2, 0


.thumb
Function_225f124: @ 225f124 :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_201dcac
	mov     r0, r4
	add     r0, #0x4c
	bl      Function_225cfc0
	mov     r0, r4
	add     r0, #0xa0
	bl      Function_225d07c
	mov     r0, #0xcf
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_225e08c
	pop     {r4,pc}
@ 0x225f148

.thumb
Function_225f148: @ 225f148 :thumb
	push    {r4,lr}
	mov     r3, r2
	mov     r4, r0
	ldr     r2, [pc, #0x10] @ 0x225f160, (=0x658)
	mov     r0, r1
	mov     r1, #0x5
	add     r2, r4, r2
	bl      Function_20071ec
	ldr     r1, [pc, #0x8] @ 0x225f164, (=0x654)
	str     r0, [r4, r1]
	pop     {r4,pc}
@ 0x225f160

.word 0x658 @ 0x225f160
.word 0x654 @ 0x225f164
.thumb
Function_225f168: @ 225f168 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x2c] @ 0x225f198, (=0x65e)
	mov     r2, #0x1
	strh    r2, [r0, r1]
	ldrb    r3, [r0, #0x14]
	mov     r2, #0x0
	cmp     r3, #0x0
	ble     branch_225f194
.thumb
branch_225f178: @ 225f178 :thumb
	add     r1, r0, r2
	add     r1, #0x2c
	ldrb    r1, [r1, #0x0]
	cmp     r1, #0x0
	bne     branch_225f18e
	ldrb    r1, [r0, #0x15]
	cmp     r1, r2
	bne     branch_225f18e
	bl      Function_225f83c
	pop     {r3,pc}
@ 0x225f18e

.thumb
branch_225f18e: @ 225f18e :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	cmp     r2, r3
	blt     branch_225f178
.thumb
branch_225f194: @ 225f194 :thumb
	pop     {r3,pc}
@ 0x225f196


.align 2


.word 0x65e @ 0x225f198
.thumb
Function_225f19c: @ 225f19c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x70] @ 0x225f214, (=0x65e)
	ldrh    r1, [r5, r0]
	cmp     r1, #0x0
	beq     branch_225f212
	.hword  0x1e80 @ sub r0, r0, #0x2
	ldrh    r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_225f1b4
	cmp     r0, #0x8
	bne     branch_225f1fe
.thumb
branch_225f1b4: @ 225f1b4 :thumb
	ldrb    r0, [r5, #0x14]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_225f1fe
	ldr     r4, [pc, #0x58] @ 0x225f218, (=0x22600d4)
	ldr     r7, [pc, #0x5c] @ 0x225f21c, (=0x65c)
.thumb
branch_225f1c0: @ 225f1c0 :thumb
	add     r0, r5, r6
	add     r0, #0x2c
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_225f1f4
	ldr     r0, [pc, #0x54] @ 0x225f220, (=0x658)
	ldrb    r3, [r4, #0x0]
	ldr     r0, [r5, r0]
	ldr     r2, [r0, #0xc]
	ldrh    r0, [r5, r7]
	lsl     r1, r3, #5
	cmp     r0, #0x0
	bne     branch_225f1de
	add     r0, r3, #0x3
	b       branch_225f1e0
@ 0x225f1de

.thumb
branch_225f1de: @ 225f1de :thumb
	add     r0, r3, #0x7
.thumb
branch_225f1e0: @ 225f1e0 :thumb
	lsl     r0, r0, #5
	add     r2, r2, r0
	mov     r0, #0xf
	mov     r3, #0x20
	bl      Function_201dc68
	cmp     r0, #0x0
	bne     branch_225f1f4
	bl      ErrorHandling
.thumb
branch_225f1f4: @ 225f1f4 :thumb
	ldrb    r0, [r5, #0x14]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r6, r0
	blt     branch_225f1c0
.thumb
branch_225f1fe: @ 225f1fe :thumb
	ldr     r3, [pc, #0x1c] @ 0x225f21c, (=0x65c)
	ldrh    r0, [r5, r3]
	.hword  0x1c40 @ add r0, r0, #0x1
	lsr     r2, r0, #31
	lsl     r1, r0, #28
	sub     r1, r1, r2
	mov     r0, #0x1c
	ror     r1, r0
	add     r0, r2, r1
	strh    r0, [r5, r3]
.thumb
branch_225f212: @ 225f212 :thumb
	pop     {r3-r7,pc}
@ 0x225f214

.word 0x65e @ 0x225f214
.word 0x22600d4 @ 0x225f218
.word 0x65c @ 0x225f21c
.word 0x658 @ 0x225f220



.thumb
Function_225f224: @ 225f224 :thumb
	ldr     r1, [pc, #0x4] @ 0x225f22c, (=0x654)
	ldr     r3, [pc, #0x8] @ 0x225f230, (=free+1)
	ldr     r0, [r0, r1]
	bx      r3
@ 0x225f22c

.word 0x654 @ 0x225f22c
.word free+1 @ 0x225f230



.thumb
Function_225f234: @ 225f234 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r6, r2
	mov     r1, #0x0
	mov     r2, #0x20
	mov     r5, r0
	mov     r7, r3
	blx     Call_FillMemWithValue
	ldr     r0, [r4, #0x0]
	str     r0, [r5, #0x8]
	mov     r0, #0x4
	str     r0, [r5, #0xc]
	mov     r0, #0x8b
	str     r0, [r5, #0x10]
	mov     r0, #0x2
	str     r0, [r5, #0x14]
	mov     r0, #0x18
	strb    r0, [r5, #0x18]
	mov     r0, #0x8
	strb    r0, [r5, #0x19]
	mov     r0, r7
	bl      Function_2015920
	str     r0, [r5, #0x4]
	strb    r6, [r5, #0x1]
	mov     r0, #0x1
	strb    r0, [r5, #0x1d]
	pop     {r3-r7,pc}
@ 0x225f26e


.align 2, 0


.thumb
Function_225f270: @ 225f270 :thumb
	ldr     r3, [pc, #0x4] @ 0x225f278, (=0x2015939)
	ldr     r0, [r0, #0x4]
	bx      r3
@ 0x225f276


.align 2


.word 0x2015939 @ 0x225f278
.thumb
Function_225f27c: @ 225f27c :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldrb    r0, [r4, #0x0]
	mov     r5, r1
	mov     r6, r2
	cmp     r0, #0xc
	bhi     branch_225f2ec
	add     r1, r0, r0
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x225f298

Jumppoints_225f298:
.hword branch_225f2b2 - Jumppoints_225f298 - 2
.hword branch_225f2e4 - Jumppoints_225f298 - 2
.hword branch_225f2f6 - Jumppoints_225f298 - 2
.hword branch_225f312 - Jumppoints_225f298 - 2
.hword branch_225f326 - Jumppoints_225f298 - 2
.hword branch_225f338 - Jumppoints_225f298 - 2
.hword branch_225f37e - Jumppoints_225f298 - 2
.hword branch_225f396 - Jumppoints_225f298 - 2
.hword branch_225f3aa - Jumppoints_225f298 - 2
.hword branch_225f3c2 - Jumppoints_225f298 - 2
.hword branch_225f3d6 - Jumppoints_225f298 - 2
.hword branch_225f3f6 - Jumppoints_225f298 - 2
.hword branch_225f414 - Jumppoints_225f298 - 2
.thumb
branch_225f2b2: @ 225f2b2 :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	mov     r2, #0x1
	ldr     r5, [sp, #0x20]
	str     r2, [sp, #0x4]
	mov     r1, r0
	mov     r3, r0
	str     r5, [sp, #0x8]
	bl      Function_200f174
	ldr     r1, [sp, #0x20]
	mov     r0, #0x0
	bl      Function_20397c8
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_225f2dc
	mov     r0, r5
	bl      0x21d1e74
.thumb
branch_225f2dc: @ 225f2dc :thumb
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_225f41a
@ 0x225f2e4

.thumb
branch_225f2e4: @ 225f2e4 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	bne     branch_225f2ee
.thumb
branch_225f2ec: @ 225f2ec :thumb
	b       branch_225f41a
@ 0x225f2ee

.thumb
branch_225f2ee: @ 225f2ee :thumb
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_225f41a
@ 0x225f2f6

.thumb
branch_225f2f6: @ 225f2f6 :thumb
	mov     r0, r6
	mov     r1, r3
	bl      Function_225d180
	mov     r0, r5
	mov     r1, r6
	mov     r2, #0x3
	mov     r3, #0x1
	bl      Function_225d368
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_225f41a
@ 0x225f312

.thumb
branch_225f312: @ 225f312 :thumb
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_225d43c
	cmp     r0, #0x1
	bne     branch_225f41a
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_225f41a
@ 0x225f326

.thumb
branch_225f326: @ 225f326 :thumb
	mov     r1, r4
	ldr     r0, [r4, #0x4]
	add     r1, #0x8
	bl      Function_2015958
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_225f41a
@ 0x225f338

.thumb
branch_225f338: @ 225f338 :thumb
	ldr     r0, [r4, #0x4]
	bl      Function_20159fc
	.hword  0x1e41 @ sub r1, r0, #0x1
	cmp     r1, #0x1
	bhi     branch_225f41a
	cmp     r0, #0x1
	bne     branch_225f354
	mov     r1, #0x0
	mov     r0, #0x16
	mov     r2, r1
	bl      Function_20359dc
	b       branch_225f362
@ 0x225f354

.thumb
branch_225f354: @ 225f354 :thumb
	cmp     r0, #0x2
	bne     branch_225f362
	mov     r1, #0x0
	mov     r0, #0x17
	mov     r2, r1
	bl      Function_20359dc
.thumb
branch_225f362: @ 225f362 :thumb
	mov     r0, r5
	mov     r1, r6
	mov     r2, #0xf
	mov     r3, #0x1
	bl      Function_225d368
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_225d458
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_225f41a
@ 0x225f37e

.thumb
branch_225f37e: @ 225f37e :thumb
	ldrb    r1, [r4, #0x1e]
	cmp     r1, #0x0
	beq     branch_225f41a
	ldrb    r1, [r4, #0x1f]
	cmp     r1, #0x0
	beq     branch_225f390
	mov     r0, #0xa
	strb    r0, [r4, #0x0]
	b       branch_225f41a
@ 0x225f390

.thumb
branch_225f390: @ 225f390 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_225f41a
@ 0x225f396

.thumb
branch_225f396: @ 225f396 :thumb
	mov     r0, r5
	mov     r1, r6
	mov     r2, #0x6
	mov     r3, #0x1
	bl      Function_225d368
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_225f41a
@ 0x225f3aa

.thumb
branch_225f3aa: @ 225f3aa :thumb
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_225d43c
	cmp     r0, #0x1
	bne     branch_225f41a
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	mov     r0, #0x66
	strh    r0, [r4, #0x2]
	b       branch_225f41a
@ 0x225f3c2

.thumb
branch_225f3c2: @ 225f3c2 :thumb
	ldrh    r0, [r4, #0x2]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, #0x2]
	ldrh    r0, [r4, #0x2]
	cmp     r0, #0x0
	bne     branch_225f41a
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_225f41a
@ 0x225f3d6

.thumb
branch_225f3d6: @ 225f3d6 :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	mov     r1, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x20]
	mov     r2, r1
	str     r0, [sp, #0x8]
	mov     r0, #0x4
	mov     r3, r1
	bl      Function_200f174
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_225f41a
@ 0x225f3f6

.thumb
branch_225f3f6: @ 225f3f6 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_225f41a
	bl      Function_2039794
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_225f40c
	bl      0x21d1f18
.thumb
branch_225f40c: @ 225f40c :thumb
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_225f41a
@ 0x225f414

.thumb
branch_225f414: @ 225f414 :thumb
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x225f41a

.thumb
branch_225f41a: @ 225f41a :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x225f420

.thumb
Function_225f420: @ 225f420 :thumb
	ldrb    r0, [r0, #0x1f]
	bx      lr
@ 0x225f424

.thumb
Function_225f424: @ 225f424 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	mov     r0, r3
	mov     r3, #0x1
	lsl     r3, r1
	ldrb    r1, [r4, #0x1c]
	tst     r1, r3
	bne     branch_225f442
	cmp     r2, #0x0
	bne     branch_225f43c
	mov     r1, #0x0
	strb    r1, [r4, #0x1d]
.thumb
branch_225f43c: @ 225f43c :thumb
	ldrb    r1, [r4, #0x1c]
	orr     r1, r3
	strb    r1, [r4, #0x1c]
.thumb
branch_225f442: @ 225f442 :thumb
	ldrb    r3, [r4, #0x1c]
	mov     r2, #0x0
	mov     r1, r2
	mov     r5, #0x1
.thumb
branch_225f44a: @ 225f44a :thumb
	mov     r6, r5
	lsl     r6, r1
	tst     r6, r3
	beq     branch_225f454
	.hword  0x1c52 @ add r2, r2, #0x1
.thumb
branch_225f454: @ 225f454 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r1, #0x4
	blt     branch_225f44a
	cmp     r2, r0
	bne     branch_225f47a
	ldrb    r0, [r4, #0x1d]
	cmp     r0, #0x0
	beq     branch_225f470
	mov     r1, #0x0
	mov     r0, #0x18
	mov     r2, r1
	bl      Function_20359dc
	pop     {r4-r6,pc}
@ 0x225f470

.thumb
branch_225f470: @ 225f470 :thumb
	mov     r1, #0x0
	mov     r0, #0x19
	mov     r2, r1
	bl      Function_20359dc
.thumb
branch_225f47a: @ 225f47a :thumb
	pop     {r4-r6,pc}
@ 0x225f47c

.thumb
Function_225f47c: @ 225f47c :thumb
	mov     r2, #0x1
	strb    r2, [r0, #0x1e]
	strb    r1, [r0, #0x1f]
	bx      lr
@ 0x225f484

.thumb
Function_225f484: @ 225f484 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	mov     r5, r1
	ldr     r1, [sp, #0x44]
	str     r2, [sp, #0x14]
	str     r1, [sp, #0x44]
	mov     r1, #0x0
	mov     r2, #0x4c
	mov     r7, r0
	mov     r6, r3
	ldr     r4, [sp, #0x40]
	blx     Call_FillMemWithValue
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x44]
	mov     r3, #0x7
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x18
	mov     r2, #0x0
	lsl     r3, r3, #6
	bl      Function_2007130
	mov     r0, #0x8b
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x44]
	mov     r1, #0x19
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x0]
	mov     r0, r4
	mov     r3, #0x2
	bl      Function_20070e8
	ldr     r0, [sp, #0x44]
	mov     r1, #0x1a
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r2, #0x0
	add     r3, r7, #0x4
	bl      Function_20071d0
	str     r0, [r7, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0x11
	str     r0, [sp, #0x4]
	mov     r0, #0x12
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x84] @ 0x225f574, (=0x1389)
	mov     r1, r4
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x44]
	mov     r2, #0xf
	str     r0, [sp, #0x10]
	mov     r0, r6
	mov     r3, #0x1
	bl      Function_225cd54
	str     r0, [r7, #0x44]
	mov     r0, #0x28
	str     r0, [sp, #0x20]
	mov     r0, #0x0
	str     r0, [sp, #0x18]
	str     r0, [sp, #0x1c]
.thumb
branch_225f50c: @ 225f50c :thumb
	ldr     r0, [sp, #0x20]
	mov     r4, #0x4a
	lsl     r0, r0, #16
	asr     r0, r0, #16
	mov     r6, #0x0
	str     r0, [sp, #0x24]
.thumb
branch_225f518: @ 225f518 :thumb
	ldr     r0, [sp, #0x1c]
	lsl     r2, r4, #16
	add     r0, r6, r0
	lsl     r0, r0, #2
	add     r5, r7, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x44]
	ldr     r1, [sp, #0x14]
	str     r0, [sp, #0x4]
	ldr     r0, [r7, #0x44]
	ldr     r1, [r1, #0x0]
	ldr     r3, [sp, #0x24]
	asr     r2, r2, #16
	bl      Function_225cdb4
	str     r0, [r5, #0x8]
	mov     r1, #0x0
	bl      Function_2021cac
	ldr     r0, [r5, #0x8]
	ldr     r1, [sp, #0x18]
	bl      Function_2021d6c
	ldr     r0, [r5, #0x8]
	mov     r1, #0x0
	bl      Function_2021e80
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x18
	cmp     r6, #0x5
	blt     branch_225f518
	ldr     r0, [sp, #0x20]
	add     r0, #0x24
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x1c]
	.hword  0x1d40 @ add r0, r0, #0x5
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x18]
	cmp     r0, #0x3
	blt     branch_225f50c
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x225f572


.align 2


.word 0x1389 @ 0x225f574
.thumb
Function_225f578: @ 225f578 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_225f580: @ 225f580 :thumb
	ldr     r0, [r5, #0x8]
	bl      Function_2021bd4
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0xf
	blt     branch_225f580
	ldr     r0, [r6, #0x0]
	bl      free
	pop     {r4-r6,pc}
@ 0x225f596


.align 2, 0


.thumb
Function_225f598: @ 225f598 :thumb
	mov     r2, r0
	add     r2, #0x4b
	strb    r1, [r2, #0x0]
	mov     r1, r0
	mov     r2, #0x0
	add     r1, #0x48
	strb    r2, [r1, #0x0]
	add     r0, #0x4a
	strb    r2, [r0, #0x0]
	bx      lr
@ 0x225f5ac

.thumb
Function_225f5ac: @ 225f5ac :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r0
	add     r0, #0x48
	ldrb    r0, [r0, #0x0]
	mov     r5, r1
	cmp     r0, #0x3
	bls     branch_225f5be
	b       branch_225f6da
@ 0x225f5be

.thumb
branch_225f5be: @ 225f5be :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x225f5ca

Jumppoints_225f5ca:
.hword branch_225f5d2 - Jumppoints_225f5ca - 2
.hword branch_225f620 - Jumppoints_225f5ca - 2
.hword branch_225f66c - Jumppoints_225f5ca - 2
.hword branch_225f6d4 - Jumppoints_225f5ca - 2
.thumb
branch_225f5d2: @ 225f5d2 :thumb
	ldr     r0, [r4, #0x4]
	mov     r1, #0x8b
	bl      Function_225ccb0
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x14
	str     r0, [sp, #0x8]
	ldr     r2, [r4, #0x4]
	ldr     r0, [r5, #0x0]
	mov     r1, #0x2
	add     r2, #0xc
	bl      Function_20198c0
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x14
	str     r0, [sp, #0x4]
	mov     r0, #0xe
	str     r0, [sp, #0x8]
	mov     r2, #0x0
	ldr     r0, [r5, #0x0]
	mov     r1, #0x2
	mov     r3, r2
	bl      Function_2019e2c
	ldr     r0, [r5, #0x0]
	mov     r1, #0x2
	bl      Function_201c3c0
	mov     r0, r4
	add     r0, #0x48
	ldrb    r0, [r0, #0x0]
	add     r4, #0x48
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_225f6da
@ 0x225f620

.thumb
branch_225f620: @ 225f620 :thumb
	mov     r0, r4
	add     r0, #0x4a
	ldrb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x4b
	ldrb    r0, [r0, #0x0]
	cmp     r1, r0
	bne     branch_225f638
	mov     r0, #0x3
	add     r4, #0x48
	strb    r0, [r4, #0x0]
	b       branch_225f6da
@ 0x225f638

.thumb
branch_225f638: @ 225f638 :thumb
	ldr     r0, [pc, #0xa4] @ 0x225f6e0, (=0x57c)
	bl      Function_2005748
	mov     r0, r4
	add     r0, #0x4a
	ldrb    r0, [r0, #0x0]
	mov     r1, #0xf
	blx     _s32_div_f
	lsl     r0, r1, #2
	add     r0, r4, r0
	ldr     r0, [r0, #0x8]
	mov     r1, #0x1
	bl      Function_2021cac
	mov     r0, r4
	mov     r1, #0x8
	add     r0, #0x49
	strb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x48
	ldrb    r0, [r0, #0x0]
	add     r4, #0x48
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_225f6da
@ 0x225f66c

.thumb
branch_225f66c: @ 225f66c :thumb
	mov     r0, r4
	add     r0, #0x49
	ldrb    r0, [r0, #0x0]
	.hword  0x1e41 @ sub r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x49
	strb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x49
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_225f6da
	mov     r0, r4
	add     r0, #0x4a
	ldrb    r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x4a
	strb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x4a
	ldrb    r5, [r0, #0x0]
	mov     r1, #0xf
	mov     r0, r5
	blx     _s32_div_f
	cmp     r1, #0x0
	bne     branch_225f6cc
	mov     r0, r4
	add     r0, #0x4b
	ldrb    r0, [r0, #0x0]
	cmp     r5, r0
	beq     branch_225f6cc
	mov     r6, #0x0
	mov     r5, r4
	mov     r7, r6
.thumb
branch_225f6b4: @ 225f6b4 :thumb
	ldr     r0, [r5, #0x8]
	mov     r1, r7
	bl      Function_2021cac
	ldr     r0, [r5, #0x8]
	mov     r1, #0x2
	bl      Function_2021d6c
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0xf
	blt     branch_225f6b4
.thumb
branch_225f6cc: @ 225f6cc :thumb
	mov     r0, #0x1
	add     r4, #0x48
	strb    r0, [r4, #0x0]
	b       branch_225f6da
@ 0x225f6d4

.thumb
branch_225f6d4: @ 225f6d4 :thumb
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x225f6da

.thumb
branch_225f6da: @ 225f6da :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x225f6e0

.word 0x57c @ 0x225f6e0
.thumb
Function_225f6e4: @ 225f6e4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r6, r1
	mov     r5, r0
	mov     r0, #0x38
	mov     r4, r6
	mul     r4, r0
	mov     r0, r5
	add     r0, #0x4c
	str     r0, [sp, #0x0]
	str     r6, [sp, #0x4]
	ldrb    r0, [r5, #0x15]
	mov     r3, #0x97
	lsl     r3, r3, #2
	str     r0, [sp, #0x8]
	mov     r0, r5
	add     r0, #0xa0
	str     r0, [sp, #0xc]
	mov     r0, r3
	sub     r0, #0x78
	ldr     r0, [r5, r0]
	add     r7, r5, r3
	str     r0, [sp, #0x10]
	ldrh    r0, [r5, #0x2]
	str     r2, [sp, #0x18]
	.hword  0x1f1b @ sub r3, r3, #0x4
	str     r0, [sp, #0x14]
	ldrb    r1, [r5, #0x14]
	ldrb    r2, [r5, #0x7]
	ldr     r3, [r5, r3]
	add     r0, r7, r4
	bl      Function_225dac0
	mov     r0, r5
	add     r0, #0xc
	mov     r1, r6
	bl      Function_225c78c
	mov     r1, r0
	mov     r0, r5
	add     r0, #0xc
	bl      Function_225c7a4
	lsl     r1, r6, #2
	str     r1, [sp, #0x1c]
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	ldr     r2, [sp, #0x1c]
	str     r0, [sp, #0x4]
	add     r2, r5, r2
	mov     r1, r5
	ldr     r2, [r2, #0x3c]
	add     r0, r7, r4
	add     r1, #0x58
	mov     r3, #0x8
	bl      Function_225dc44
	add     r0, r5, r6
	add     r0, #0x38
	ldrb    r0, [r0, #0x0]
	add     r3, r5, r6
	mov     r1, r5
	str     r0, [sp, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x4]
	add     r3, #0x34
	ldrb    r2, [r5, #0x5]
	ldrb    r3, [r3, #0x0]
	add     r0, r7, r4
	add     r1, #0x58
	bl      Function_225dca0
	ldrb    r0, [r5, #0x7]
	cmp     r0, #0x0
	bne     branch_225f77e
	mov     r1, #0x5
	b       branch_225f780
@ 0x225f77e

.thumb
branch_225f77e: @ 225f77e :thumb
	mov     r1, #0x6
.thumb
branch_225f780: @ 225f780 :thumb
	ldr     r3, [sp, #0x18]
	mov     r0, #0x0
	add     r6, r3, #0x1
	mov     r3, #0x4
	sub     r3, r3, r6
	lsl     r6, r3, #1
	ldr     r3, [pc, #0x44] @ 0x225f7d4, (=0x22600d8)
	ldr     r2, [sp, #0x1c]
	str     r0, [sp, #0x0]
	ldsh    r6, [r3, r6]
	mov     r3, #0xb0
	str     r1, [sp, #0x4]
	add     r2, r5, r2
	sub     r3, r3, r6
	mov     r1, r5
	lsl     r3, r3, #16
	ldr     r2, [r2, #0x1c]
	add     r0, r7, r4
	add     r1, #0x58
	asr     r3, r3, #16
	bl      Function_225dd2c
	add     r5, #0x4c
	add     r0, r7, r4
	mov     r1, r5
	bl      Function_225dd80
	ldr     r1, [sp, #0x18]
	add     r0, r7, r4
	bl      Function_225dd0c
	ldr     r1, [sp, #0x18]
	add     r0, r7, r4
	lsl     r2, r1, #1
	ldr     r1, [pc, #0xc] @ 0x225f7d4, (=0x22600d8)
	ldsh    r1, [r1, r2]
	mov     r2, #0x0
	bl      Function_225ddd4
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x225f7d2


.align 2


.word 0x22600d8 @ 0x225f7d4
.thumb
Function_225f7d8: @ 225f7d8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r7, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldrb    r0, [r7, #0x14]
	cmp     r0, #0x0
	ble     branch_225f836
	mov     r0, #0x97
	lsl     r0, r0, #2
	add     r6, r7, r0
	mov     r4, r7
	mov     r5, r6
.thumb
branch_225f7f6: @ 225f7f6 :thumb
	mov     r0, #0x9b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_225f820
	mov     r0, r6
	bl      Function_225de70
	str     r0, [sp, #0x8]
	mov     r0, #0xcf
	lsl     r0, r0, #2
	add     r0, r7, r0
	mov     r1, r5
	bl      Function_225e028
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x0
	bne     branch_225f824
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	b       branch_225f824
@ 0x225f820

.thumb
branch_225f820: @ 225f820 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
.thumb
branch_225f824: @ 225f824 :thumb
	ldr     r0, [sp, #0x4]
	ldrb    r1, [r7, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r4, #0x38
	add     r6, #0x38
	add     r5, #0x38
	str     r0, [sp, #0x4]
	cmp     r0, r1
	blt     branch_225f7f6
.thumb
branch_225f836: @ 225f836 :thumb
	ldr     r0, [sp, #0x0]
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x225f83c

.thumb
Function_225f83c: @ 225f83c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x66
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_225f858
	ldr     r0, [pc, #0x10] @ 0x225f85c, (=0x4c6)
	bl      Function_2006150
	mov     r0, #0x66
	mov     r1, #0x1
	lsl     r0, r0, #4
	str     r1, [r4, r0]
.thumb
branch_225f858: @ 225f858 :thumb
	pop     {r4,pc}
@ 0x225f85a


.align 2


.word 0x4c6 @ 0x225f85c
.thumb
Function_225f860: @ 225f860 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x66
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	cmp     r0, #0x1
	bne     branch_225f87e
	bl      Function_20061e4
	cmp     r0, #0x0
	bne     branch_225f87e
	mov     r0, #0x66
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r4, r0]
.thumb
branch_225f87e: @ 225f87e :thumb
	mov     r0, #0x66
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	cmp     r0, #0x1
	beq     branch_225f88c
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x225f88c

.thumb
branch_225f88c: @ 225f88c :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x225f890

.thumb
Function_225f890: @ 225f890 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0xc]
	bl      LoadVariableAreaAdress_1d
	mov     r4, r0
	ldrb    r0, [r5, #0x14]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_225f8fa
	add     r7, sp, #0x0
.thumb
branch_225f8a6: @ 225f8a6 :thumb
	add     r0, r5, r6
	ldrb    r0, [r0, #0x10]
	bl      Function_2032f1c
	mov     r1, r0
	ldr     r0, [r5, #0xc]
	mov     r2, r7
	bl      Function_203909c
	cmp     r0, #0x0
	beq     branch_225f8c0
	cmp     r0, #0x1
	bne     branch_225f8f2
.thumb
branch_225f8c0: @ 225f8c0 :thumb
	ldrb    r0, [r5, #0x7]
	cmp     r0, #0x0
	beq     branch_225f8d0
	cmp     r0, #0x1
	beq     branch_225f8dc
	cmp     r0, #0x2
	beq     branch_225f8e8
	b       branch_225f8f2
@ 0x225f8d0

.thumb
branch_225f8d0: @ 225f8d0 :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, r4
	mov     r2, #0x1
	bl      Function_202b1f8
	b       branch_225f8f2
@ 0x225f8dc

.thumb
branch_225f8dc: @ 225f8dc :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, r4
	mov     r2, #0x1
	bl      Function_202b220
	b       branch_225f8f2
@ 0x225f8e8

.thumb
branch_225f8e8: @ 225f8e8 :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, r4
	mov     r2, #0x1
	bl      Function_202b248
.thumb
branch_225f8f2: @ 225f8f2 :thumb
	ldrb    r0, [r5, #0x14]
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r0
	blt     branch_225f8a6
.thumb
branch_225f8fa: @ 225f8fa :thumb
	pop     {r3-r7,pc}
@ 0x225f8fc

.thumb
Function_225f8fc: @ 225f8fc :thumb
	push    {r3,lr}
	ldrb    r1, [r0, #0x7]
	cmp     r1, #0x0
	beq     branch_225f90e
	cmp     r1, #0x1
	beq     branch_225f912
	cmp     r1, #0x2
	beq     branch_225f916
	pop     {r3,pc}
@ 0x225f90e

.thumb
branch_225f90e: @ 225f90e :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x225f912

.thumb
branch_225f912: @ 225f912 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x225f916

.thumb
branch_225f916: @ 225f916 :thumb
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x225f91e


.align 2, 0


.thumb
Function_225f920: @ 225f920 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x1c
	add     r1, sp, #0xc
	mov     r4, #0x0
	str     r4, [r1, #0x0]
	str     r4, [r1, #0x4]
	str     r4, [r1, #0x8]
	mov     r5, r0
	str     r4, [r1, #0xc]
	bl      Function_225f8fc
	ldrb    r2, [r5, #0x14]
	mov     r1, r4
	cmp     r2, #0x0
	ble     branch_225f966
	mov     r2, r5
	add     r3, sp, #0xc
.thumb
branch_225f942: @ 225f942 :thumb
	add     r6, r5, r1
	add     r6, #0x2c
	ldrb    r6, [r6, #0x0]
	cmp     r6, #0x0
	bne     branch_225f95c
	ldr     r6, [r2, #0x1c]
	cmp     r0, r6
	beq     branch_225f95c
	ldr     r6, [r5, #0x18]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r6, r6, r1
	ldrb    r6, [r6, #0x4]
	stmia   r3!, {r6}
.thumb
branch_225f95c: @ 225f95c :thumb
	ldrb    r6, [r5, #0x14]
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1d12 @ add r2, r2, #0x4
	cmp     r1, r6
	blt     branch_225f942
.thumb
branch_225f966: @ 225f966 :thumb
	cmp     r4, #0x0
	beq     branch_225f984
	ldr     r0, [sp, #0x10]
	mov     r2, r4
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x14]
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x18]
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x18]
	ldrb    r1, [r5, #0x7]
	ldr     r0, [r0, #0x30]
	ldr     r3, [sp, #0xc]
	bl      0x222eab4
.thumb
branch_225f984: @ 225f984 :thumb
	add     sp, #0x1c
	pop     {r3-r6,pc}
@ 0x225f988

.thumb
Function_225f988: @ 225f988 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r1, r0
	ldrb    r2, [r1, #0x14]
	cmp     r2, #0x0
	beq     branch_225f9b2
	ldr     r0, [r1, #0x30]
	cmp     r0, #0xa
	bcc     branch_225f9b2
	ldr     r3, [r1, #0x18]
	ldrb    r0, [r3, #0x5]
	str     r0, [sp, #0x0]
	ldrb    r0, [r3, #0x6]
	str     r0, [sp, #0x4]
	ldrb    r0, [r3, #0x7]
	str     r0, [sp, #0x8]
	ldr     r0, [r3, #0x30]
	ldrb    r1, [r1, #0x7]
	ldrb    r3, [r3, #0x4]
	bl      0x222eab4
.thumb
branch_225f9b2: @ 225f9b2 :thumb
	add     sp, #0xc
	pop     {pc}
@ 0x225f9b6


.align 2, 0


.thumb
Function_225f9b8: @ 225f9b8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r7, r0
	str     r1, [sp, #0x8]
	str     r2, [sp, #0xc]
	add     r0, #0xc
	mov     r1, #0x0
	mov     r2, #0xc0
	str     r3, [sp, #0x10]
	blx     Call_FillMemWithValue
	mov     r0, r7
	add     r0, #0xcc
	mov     r1, #0x0
	mov     r2, #0xc0
	blx     Call_FillMemWithValue
	mov     r6, #0x0
	strh    r6, [r7, #0x8]
	mov     r0, #0x63
	strh    r6, [r7, #0xa]
	lsl     r0, r0, #2
	ldr     r4, [pc, #0xc4] @ 0x225faac, (=0x226019c)
	str     r6, [r7, r0]
	mov     r5, r7
.thumb
branch_225f9ea: @ 225f9ea :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x10]
	ldr     r1, [sp, #0xc]
	str     r0, [sp, #0x4]
	ldr     r2, [r4, #0x0]
	ldr     r3, [r4, #0x4]
	lsl     r2, r2, #4
	lsl     r3, r3, #4
	ldr     r0, [sp, #0x8]
	asr     r2, r2, #16
	asr     r3, r3, #16
	bl      Function_225cdb4
	str     r0, [r5, #0x0]
	mov     r1, #0x5
	bl      Function_2021d6c
	ldr     r0, [r5, #0x0]
	mov     r1, #0x0
	bl      Function_2021e80
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0xc
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x2
	blt     branch_225f9ea
	mov     r3, #0x1
	lsl     r3, r3, #26
	ldr     r1, [r3, #0x0]
	mov     r0, #0xe
	lsl     r0, r0, #12
	and     r1, r0
	ldr     r4, [r3, #0x0]
	ldr     r2, [pc, #0x80] @ 0x225fab0, (=0xffff1fff)
	lsr     r1, r1, #13
	and     r4, r2
	mov     r2, #0x1
	bic     r1, r2
	lsl     r1, r1, #13
	orr     r1, r4
	mov     r2, r3
	str     r1, [r3, #0x0]
	add     r2, #0x48
	ldrh    r4, [r2, #0x0]
	mov     r1, #0x3f
	bic     r4, r1
	mov     r1, #0x1f
	orr     r4, r1
	mov     r1, #0x20
	orr     r4, r1
	strh    r4, [r2, #0x0]
	mov     r2, r3
	mov     r4, #0x0
	add     r2, #0x40
	strh    r4, [r2, #0x0]
	mov     r2, r3
	add     r2, #0x44
	strh    r4, [r2, #0x0]
	mov     r2, r3
	add     r2, #0x4a
	ldrb    r4, [r2, #0x0]
	mov     r2, #0x19
	lsl     r2, r2, #4
	strb    r4, [r7, r2]
	ldr     r3, [r3, #0x0]
	and     r0, r3
	lsr     r3, r0, #13
	mov     r0, #0x2
	and     r3, r0
	add     r0, r2, #0x4
	str     r3, [r7, r0]
	add     r0, r2, #0x1
	ldrb    r3, [r7, r0]
	mov     r0, #0x1f
	bic     r3, r0
	mov     r0, #0xf
	orr     r3, r0
	add     r0, r2, #0x1
	strb    r3, [r7, r0]
	ldrb    r0, [r7, r0]
	orr     r1, r0
	add     r0, r2, #0x1
	strb    r1, [r7, r0]
	ldr     r0, [pc, #0x20] @ 0x225fab4, (=0x225fcf1)
	mov     r1, r7
	bl      Function_20177bc
	ldr     r0, [r7, #0x4]
	mov     r1, #0x2
	bl      Function_2021d0c
	mov     r0, r7
	bl      Function_225fc6c
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x225faac

.word 0x226019c @ 0x225faac
.word 0xffff1fff @ 0x225fab0
.word Function_225fcf0+1 @ =0x225fcf1, 0x225fab4
.thumb
Function_225fab8: @ 225fab8 :thumb
	push    {r4,lr}
	mov     r1, #0x8
	ldsh    r2, [r0, r1]
	mov     r4, #0x0
	.hword  0x1c52 @ add r2, r2, #0x1
	strh    r2, [r0, #0x8]
	ldsh    r2, [r0, r1]
	cmp     r2, #0x8
	blt     branch_225face
	strh    r1, [r0, #0x8]
	mov     r4, #0x1
.thumb
branch_225face: @ 225face :thumb
	mov     r1, #0x1
	bl      Function_225fb10
	mov     r0, r4
	pop     {r4,pc}
@ 0x225fad8

.thumb
Function_225fad8: @ 225fad8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x8
	ldsh    r2, [r5, r0]
	mov     r1, #0x0
	mov     r4, r1
	.hword  0x1e52 @ sub r2, r2, #0x1
	strh    r2, [r5, #0x8]
	ldsh    r0, [r5, r0]
	cmp     r0, #0x0
	bgt     branch_225fb00
	mov     r4, #0x1
	strh    r4, [r5, #0x8]
	ldr     r0, [r5, #0x0]
	bl      Function_2021cac
	ldr     r0, [r5, #0x4]
	mov     r1, #0x0
	bl      Function_2021cac
.thumb
branch_225fb00: @ 225fb00 :thumb
	mov     r1, #0x0
	mov     r0, r5
	mvn     r1, r1
	bl      Function_225fb10
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x225fb0e


.align 2, 0


.thumb
Function_225fb10: @ 225fb10 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	str     r0, [sp, #0x0]
	ldr     r2, [sp, #0x0]
	mov     r0, #0x8
	ldsh    r2, [r2, r0]
	mov     r3, #0x17
	mov     r4, r2
	mul     r4, r3
	asr     r2, r4, #2
	lsr     r2, r2, #29
	add     r2, r4, r2
	asr     r4, r2, #3
	ldr     r2, [sp, #0x0]
	strh    r4, [r2, #0xa]
	ldsh    r0, [r2, r0]
	add     r0, r0, r1
	cmp     r0, #0x8
	bgt     branch_225fb4a
	cmp     r0, #0x0
	blt     branch_225fb4a
	mov     r1, r0
	mul     r1, r3
	asr     r0, r1, #2
	lsr     r0, r0, #29
	add     r0, r1, r0
	asr     r0, r0, #3
	str     r0, [sp, #0x4]
	b       branch_225fb52
@ 0x225fb4a

.thumb
branch_225fb4a: @ 225fb4a :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, #0xa
	ldsh    r0, [r0, r1]
	str     r0, [sp, #0x4]
.thumb
branch_225fb52: @ 225fb52 :thumb
	ldr     r0, [sp, #0x4]
	ldr     r7, [pc, #0x94] @ 0x225fbec, (=0x226019c)
	ldr     r4, [sp, #0x0]
	mov     r6, #0x0
	lsl     r5, r0, #12
.thumb
branch_225fb5c: @ 225fb5c :thumb
	mov     r3, r7
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x8
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	cmp     r6, #0x0
	str     r0, [r2, #0x0]
	bne     branch_225fb9e
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	ble     branch_225fb84
	mov     r0, r5
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_225fb92
@ 0x225fb84

.thumb
branch_225fb84: @ 225fb84 :thumb
	mov     r0, r5
	blx     _fflt
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
.thumb
branch_225fb92: @ 225fb92 :thumb
	blx     _ffix
	ldr     r1, [sp, #0xc]
	sub     r0, r1, r0
	str     r0, [sp, #0xc]
	b       branch_225fbce
@ 0x225fb9e

.thumb
branch_225fb9e: @ 225fb9e :thumb
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	ble     branch_225fbb6
	mov     r0, r5
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_225fbc4
@ 0x225fbb6

.thumb
branch_225fbb6: @ 225fbb6 :thumb
	mov     r0, r5
	blx     _fflt
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
.thumb
branch_225fbc4: @ 225fbc4 :thumb
	blx     _ffix
	ldr     r1, [sp, #0xc]
	add     r0, r1, r0
	str     r0, [sp, #0xc]
.thumb
branch_225fbce: @ 225fbce :thumb
	ldr     r0, [r4, #0x0]
	add     r1, sp, #0x8
	bl      Function_2021c50
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r7, #0xc
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x2
	blt     branch_225fb5c
	ldr     r0, [sp, #0x0]
	bl      Function_225fc6c
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x225fbea


.align 2


.word 0x226019c @ 0x225fbec
.thumb
Function_225fbf0: @ 225fbf0 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r0, #0x63
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	cmp     r0, #0x0
	beq     branch_225fc0a
	bl      Call_RemoveTaskFromTaskList
	mov     r0, #0x63
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r6, r0]
.thumb
branch_225fc0a: @ 225fc0a :thumb
	mov     r4, #0x0
	mov     r5, r6
	mov     r7, r4
.thumb
branch_225fc10: @ 225fc10 :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_225fc1c
	bl      Function_2021bd4
	str     r7, [r5, #0x0]
.thumb
branch_225fc1c: @ 225fc1c :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x2
	blt     branch_225fc10
	bl      Function_20177a4
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x34] @ 0x225fc64, (=0xffff1fff)
	mov     r3, r1
	and     r3, r0
	mov     r0, #0x65
	lsl     r0, r0, #2
	ldr     r1, [r6, r0]
	.hword  0x1f00 @ sub r0, r0, #0x4
	lsl     r1, r1, #13
	orr     r1, r3
	str     r1, [r2, #0x0]
	add     r2, #0x4a
	ldrh    r2, [r2, #0x0]
	mov     r1, #0x3f
	ldrb    r0, [r6, r0]
	bic     r2, r1
	lsl     r1, r0, #27
	lsr     r1, r1, #27
	lsl     r0, r0, #26
	orr     r1, r2
	lsr     r0, r0, #31
	beq     branch_225fc5c
	mov     r0, #0x20
	orr     r1, r0
.thumb
branch_225fc5c: @ 225fc5c :thumb
	ldr     r0, [pc, #0x8] @ 0x225fc68, (=0x400004a)
	strh    r1, [r0, #0x0]
	pop     {r3-r7,pc}
@ 0x225fc62


.align 2


.word 0xffff1fff @ 0x225fc64
.word 0x400004a @ 0x225fc68
.thumb
Function_225fc6c: @ 225fc6c :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	add     r0, #0xcc
	mov     r1, #0x0
	mov     r2, #0xc0
	blx     Call_FillMemWithValue
	mov     r0, #0xa
	ldsh    r2, [r4, r0]
	mov     r0, #0x17
	mov     r1, #0x0
	sub     r0, r0, r2
	cmp     r0, #0x0
	ble     branch_225fca8
	ldr     r7, [pc, #0x38] @ 0x225fcc4, (=0x115)
	mov     r0, #0x1
	mov     r2, #0x79
	mov     r5, #0xa
	mov     r6, #0x17
.thumb
branch_225fc92: @ 225fc92 :thumb
	add     r3, r4, r1
	strb    r0, [r3, r7]
	sub     r3, r2, r1
	add     r3, r4, r3
	add     r3, #0xcc
	strb    r0, [r3, #0x0]
	ldsh    r3, [r4, r5]
	.hword  0x1c49 @ add r1, r1, #0x1
	sub     r3, r6, r3
	cmp     r1, r3
	blt     branch_225fc92
.thumb
branch_225fca8: @ 225fca8 :thumb
	mov     r0, #0x63
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_225fcc2
	ldr     r0, [pc, #0x14] @ 0x225fcc8, (=0x225fccd)
	mov     r1, r4
	mov     r2, #0x0
	bl      AddTaskToTaskList3
	mov     r1, #0x63
	lsl     r1, r1, #2
	str     r0, [r4, r1]
.thumb
branch_225fcc2: @ 225fcc2 :thumb
	pop     {r3-r7,pc}
@ 0x225fcc4

.word 0x115 @ 0x225fcc4
.word 0x225fccd @ 0x225fcc8
.thumb
Function_225fccc: @ 225fccc :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	add     r0, #0xc
	add     r1, #0xcc
	mov     r2, #0xc0
	blx     CopyDataInByteSteps
	mov     r0, #0x63
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Call_RemoveTaskFromTaskList
	mov     r0, #0x63
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	pop     {r4,pc}
@ 0x225fcf0

.thumb
Function_225fcf0: @ 225fcf0 :thumb
	push    {r4,r5}
	ldr     r1, [pc, #0xc4] @ 0x225fdb8, (=0x4000006)
	ldrh    r2, [r1, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	lsr     r4, r2, #31
	lsl     r3, r2, #24
	sub     r3, r3, r4
	mov     r2, #0x18
	ror     r3, r2
	add     r2, r4, r3
	cmp     r2, #0xc0
	bge     branch_225fdb2
	.hword  0x1f8b @ sub r3, r1, #0x6
	ldr     r4, [r3, #0x0]
	mov     r3, #0xe
	lsl     r3, r3, #12
	and     r3, r4
	.hword  0x1e8c @ sub r4, r1, #0x2
	ldrh    r5, [r4, #0x0]
	mov     r4, #0x2
	lsr     r3, r3, #13
	tst     r4, r5
	beq     branch_225fdb2
	cmp     r2, #0x49
	blt     branch_225fd26
	cmp     r2, #0x79
	ble     branch_225fd52
.thumb
branch_225fd26: @ 225fd26 :thumb
	ldr     r1, [pc, #0x94] @ 0x225fdbc, (=0x400004a)
	mov     r4, #0x3f
	ldrh    r1, [r1, #0x0]
	bic     r1, r4
	mov     r4, #0x19
	lsl     r4, r4, #4
	ldrb    r4, [r0, r4]
	lsl     r5, r4, #27
	lsr     r5, r5, #27
	lsl     r4, r4, #26
	orr     r1, r5
	lsr     r4, r4, #31
	beq     branch_225fd44
	mov     r4, #0x20
	orr     r1, r4
.thumb
branch_225fd44: @ 225fd44 :thumb
	ldr     r4, [pc, #0x74] @ 0x225fdbc, (=0x400004a)
	strh    r1, [r4, #0x0]
	mov     r1, #0x65
	lsl     r1, r1, #2
	ldr     r1, [r0, r1]
	orr     r3, r1
	b       branch_225fd80
@ 0x225fd52

.thumb
branch_225fd52: @ 225fd52 :thumb
	add     r1, #0x44
	ldrh    r1, [r1, #0x0]
	mov     r4, #0x3f
	bic     r1, r4
	ldr     r4, [pc, #0x64] @ 0x225fdc0, (=0x191)
	ldrb    r4, [r0, r4]
	lsl     r5, r4, #27
	lsr     r5, r5, #27
	lsl     r4, r4, #26
	orr     r1, r5
	lsr     r4, r4, #31
	beq     branch_225fd6e
	mov     r4, #0x20
	orr     r1, r4
.thumb
branch_225fd6e: @ 225fd6e :thumb
	ldr     r4, [pc, #0x4c] @ 0x225fdbc, (=0x400004a)
	strh    r1, [r4, #0x0]
	mov     r1, #0x65
	lsl     r1, r1, #2
	ldr     r4, [r0, r1]
	mov     r1, #0x2
	orr     r1, r4
	mvn     r1, r1
	and     r3, r1
.thumb
branch_225fd80: @ 225fd80 :thumb
	add     r0, r0, r2
	ldrb    r0, [r0, #0xc]
	cmp     r0, #0x1
	ldr     r0, [pc, #0x3c] @ 0x225fdc4, (=0xffff1fff)
	bne     branch_225fda0
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	and     r1, r0
	mov     r0, #0x1
	orr     r0, r3
	lsl     r0, r0, #13
	orr     r0, r1
	str     r0, [r2, #0x0]
	pop     {r4,r5}
	bx      lr
@ 0x225fda0

.thumb
branch_225fda0: @ 225fda0 :thumb
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	and     r1, r0
	mov     r0, #0x1
	bic     r3, r0
	lsl     r0, r3, #13
	orr     r0, r1
	str     r0, [r2, #0x0]
.thumb
branch_225fdb2: @ 225fdb2 :thumb
	pop     {r4,r5}
	bx      lr
@ 0x225fdb6


.align 2


.word 0x4000006 @ 0x225fdb8
.word 0x400004a @ 0x225fdbc
.word 0x191 @ 0x225fdc0
.word 0xffff1fff @ 0x225fdc4
.thumb
Function_225fdc8: @ 225fdc8 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r4, r1
	ldrh    r0, [r4, #0x4]
	cmp     r0, #0x5
	bhi     branch_225fe2c
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x225fde0

Jumppoints_225fde0:
.hword branch_225ff46 - Jumppoints_225fde0 - 2
.hword branch_225fdec - Jumppoints_225fde0 - 2
.hword branch_225fe20 - Jumppoints_225fde0 - 2
.hword branch_225fe3c - Jumppoints_225fde0 - 2
.hword branch_225ff00 - Jumppoints_225fde0 - 2
.hword branch_225ff22 - Jumppoints_225fde0 - 2
.thumb
branch_225fdec: @ 225fdec :thumb
	mov     r0, r4
	ldr     r1, [r4, #0x28]
	ldr     r2, [r4, #0x8]
	ldr     r3, [r4, #0x0]
	add     r0, #0x34
	bl      Function_225f9b8
	mov     r0, #0x40
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	mov     r2, #0x80
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x28]
	ldr     r1, [r4, #0x8]
	mov     r3, #0x61
	bl      Function_225cdb4
	str     r0, [r4, #0x30]
	mov     r1, #0x0
	bl      Function_2021e80
	ldrh    r0, [r4, #0x4]
	add     sp, #0x8
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x4]
	pop     {r4-r6,pc}
@ 0x225fe20

.thumb
branch_225fe20: @ 225fe20 :thumb
	mov     r0, r4
	add     r0, #0x34
	bl      Function_225fab8
	cmp     r0, #0x1
	beq     branch_225fe2e
.thumb
branch_225fe2c: @ 225fe2c :thumb
	b       branch_225ff46
@ 0x225fe2e

.thumb
branch_225fe2e: @ 225fe2e :thumb
	ldrh    r0, [r4, #0x4]
	add     sp, #0x8
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x4]
	mov     r0, #0x0
	strh    r0, [r4, #0x6]
	pop     {r4-r6,pc}
@ 0x225fe3c

.thumb
branch_225fe3c: @ 225fe3c :thumb
	ldr     r0, [r4, #0x30]
	bl      Function_2021e74
	mov     r6, r0
	mov     r1, #0x2
	ldr     r0, [r4, #0x30]
	lsl     r1, r1, #12
	bl      Function_2021e2c
	ldr     r0, [r4, #0x30]
	bl      Function_2021e74
	mov     r5, r0
	cmp     r6, r5
	beq     branch_225feb0
	cmp     r5, #0xf
	bhi     branch_225feb0
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x225fe6a

Jumppoints_225fe6a:
.hword branch_225feb0 - Jumppoints_225fe6a - 2
.hword branch_225feb0 - Jumppoints_225fe6a - 2
.hword branch_225feb0 - Jumppoints_225fe6a - 2
.hword branch_225feb0 - Jumppoints_225fe6a - 2
.hword branch_225feb0 - Jumppoints_225fe6a - 2
.hword branch_225feb0 - Jumppoints_225fe6a - 2
.hword branch_225feb0 - Jumppoints_225fe6a - 2
.hword branch_225fe8a - Jumppoints_225fe6a - 2
.hword branch_225feb0 - Jumppoints_225fe6a - 2
.hword branch_225fe92 - Jumppoints_225fe6a - 2
.hword branch_225feb0 - Jumppoints_225fe6a - 2
.hword branch_225fe9a - Jumppoints_225fe6a - 2
.hword branch_225feb0 - Jumppoints_225fe6a - 2
.hword branch_225fea2 - Jumppoints_225fe6a - 2
.hword branch_225feb0 - Jumppoints_225fe6a - 2
.hword branch_225feaa - Jumppoints_225fe6a - 2
.thumb
branch_225fe8a: @ 225fe8a :thumb
	ldr     r0, [pc, #0xc0] @ 0x225ff4c, (=0x5dd)
	bl      Function_2005748
	b       branch_225feb0
@ 0x225fe92

.thumb
branch_225fe92: @ 225fe92 :thumb
	ldr     r0, [pc, #0xb8] @ 0x225ff4c, (=0x5dd)
	bl      Function_2005748
	b       branch_225feb0
@ 0x225fe9a

.thumb
branch_225fe9a: @ 225fe9a :thumb
	ldr     r0, [pc, #0xb0] @ 0x225ff4c, (=0x5dd)
	bl      Function_2005748
	b       branch_225feb0
@ 0x225fea2

.thumb
branch_225fea2: @ 225fea2 :thumb
	ldr     r0, [pc, #0xa8] @ 0x225ff4c, (=0x5dd)
	bl      Function_2005748
	b       branch_225feb0
@ 0x225feaa

.thumb
branch_225feaa: @ 225feaa :thumb
	ldr     r0, [pc, #0xa4] @ 0x225ff50, (=0x643)
	bl      Function_2005748
.thumb
branch_225feb0: @ 225feb0 :thumb
	cmp     r5, #0xf
	bne     branch_225fee4
	mov     r0, #0x6
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_225fec6
	ldr     r0, [r4, #0x30]
	mov     r1, #0x0
	bl      Function_2021f24
	b       branch_225fed2
@ 0x225fec6

.thumb
branch_225fec6: @ 225fec6 :thumb
	cmp     r0, #0x4
	bne     branch_225fed2
	ldr     r0, [r4, #0x30]
	mov     r1, #0x1
	bl      Function_2021f24
.thumb
branch_225fed2: @ 225fed2 :thumb
	mov     r0, #0x6
	ldsh    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, #0x6]
	ldsh    r0, [r4, r0]
	cmp     r0, #0x8
	blt     branch_225fee4
	mov     r0, #0x0
	strh    r0, [r4, #0x6]
.thumb
branch_225fee4: @ 225fee4 :thumb
	ldr     r0, [r4, #0x30]
	bl      Function_2021fd0
	cmp     r0, #0x0
	bne     branch_225ff46
	ldrh    r0, [r4, #0x4]
	mov     r1, #0x0
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x4]
	ldr     r0, [r4, #0x30]
	bl      Function_2021f24
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x225ff00

.thumb
branch_225ff00: @ 225ff00 :thumb
	mov     r0, r4
	add     r0, #0x34
	bl      Function_225fad8
	cmp     r0, #0x1
	bne     branch_225ff46
	ldr     r0, [r4, #0x30]
	bl      Function_2021bd4
	mov     r1, #0x0
	str     r1, [r4, #0x30]
	ldrh    r0, [r4, #0x4]
	add     sp, #0x8
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x4]
	strh    r1, [r4, #0x6]
	pop     {r4-r6,pc}
@ 0x225ff22

.thumb
branch_225ff22: @ 225ff22 :thumb
	mov     r0, #0x6
	ldsh    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, #0x6]
	ldsh    r0, [r4, r0]
	cmp     r0, #0x2
	blt     branch_225ff46
	mov     r0, #0x0
	strh    r0, [r4, #0x4]
	mov     r0, r4
	add     r0, #0x34
	bl      Function_225fbf0
	ldr     r0, [r4, #0x2c]
	bl      Call_RemoveTaskFromTaskList
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
.thumb
branch_225ff46: @ 225ff46 :thumb
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x225ff4a


.align 2


.word 0x5dd @ 0x225ff4c
.word 0x643 @ 0x225ff50
.thumb
Function_225ff54: @ 225ff54 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r1
	ldrh    r0, [r4, #0x4]
	cmp     r0, #0x5
	bhi     branch_2260034
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x225ff6c

Jumppoints_225ff6c:
.hword branch_2260034 - Jumppoints_225ff6c - 2
.hword branch_225ff78 - Jumppoints_225ff6c - 2
.hword branch_225ffb4 - Jumppoints_225ff6c - 2
.hword branch_225ffd6 - Jumppoints_225ff6c - 2
.hword branch_225ffee - Jumppoints_225ff6c - 2
.hword branch_2260010 - Jumppoints_225ff6c - 2
.thumb
branch_225ff78: @ 225ff78 :thumb
	mov     r0, r4
	ldr     r1, [r4, #0x28]
	ldr     r2, [r4, #0x8]
	ldr     r3, [r4, #0x0]
	add     r0, #0x34
	bl      Function_225f9b8
	mov     r0, #0x40
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	mov     r2, #0x80
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x28]
	ldr     r1, [r4, #0x8]
	mov     r3, #0x61
	bl      Function_225cdb4
	str     r0, [r4, #0x30]
	mov     r1, #0x1
	bl      Function_2021d6c
	ldr     r0, [r4, #0x30]
	mov     r1, #0x0
	bl      Function_2021e80
	ldrh    r0, [r4, #0x4]
	add     sp, #0x8
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x4]
	pop     {r4,pc}
@ 0x225ffb4

.thumb
branch_225ffb4: @ 225ffb4 :thumb
	mov     r0, r4
	add     r0, #0x34
	bl      Function_225fab8
	cmp     r0, #0x1
	bne     branch_2260034
	ldr     r0, [r4, #0x30]
	mov     r1, #0x1
	bl      Function_2021cc8
	ldrh    r0, [r4, #0x4]
	add     sp, #0x8
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x4]
	mov     r0, #0x0
	strh    r0, [r4, #0x6]
	pop     {r4,pc}
@ 0x225ffd6

.thumb
branch_225ffd6: @ 225ffd6 :thumb
	mov     r0, #0x6
	ldsh    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, #0x6]
	ldsh    r0, [r4, r0]
	cmp     r0, #0x32
	blt     branch_2260034
	ldrh    r0, [r4, #0x4]
	add     sp, #0x8
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x4]
	pop     {r4,pc}
@ 0x225ffee

.thumb
branch_225ffee: @ 225ffee :thumb
	mov     r0, r4
	add     r0, #0x34
	bl      Function_225fad8
	cmp     r0, #0x1
	bne     branch_2260034
	ldr     r0, [r4, #0x30]
	bl      Function_2021bd4
	mov     r0, #0x0
	str     r0, [r4, #0x30]
	strh    r0, [r4, #0x6]
	ldrh    r0, [r4, #0x4]
	add     sp, #0x8
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x4]
	pop     {r4,pc}
@ 0x2260010

.thumb
branch_2260010: @ 2260010 :thumb
	mov     r0, #0x6
	ldsh    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, #0x6]
	ldsh    r0, [r4, r0]
	cmp     r0, #0x2
	blt     branch_2260034
	mov     r0, #0x0
	strh    r0, [r4, #0x4]
	mov     r0, r4
	add     r0, #0x34
	bl      Function_225fbf0
	ldr     r0, [r4, #0x2c]
	bl      Call_RemoveTaskFromTaskList
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
.thumb
branch_2260034: @ 2260034 :thumb
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2260038

.thumb
Function_2260038: @ 2260038 :thumb
	ldr     r0, [pc, #0x0] @ 0x226003c, (=0x22603e4)
	bx      lr
@ 0x226003c

.word 0x22603e4 @ 0x226003c
.thumb
Function_2260040: @ 2260040 :thumb
	mov     r0, #0x5
	bx      lr
@ 0x2260044

.thumb
Function_2260044: @ 2260044 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_2260038
	mov     r4, r0
	bl      Function_2260040
	mov     r1, r0
	mov     r0, r4
	mov     r2, r5
	bl      Function_2032798
	pop     {r3-r5,pc}
@ 0x226005e


.align 2, 0


.thumb
Function_2260060: @ 2260060 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_2260038
	mov     r4, r0
	bl      Function_2260040
	mov     r1, r0
	mov     r0, r4
	mov     r2, r5
	bl      Function_2032798
	pop     {r3-r5,pc}
@ 0x226007a


.align 2, 0


.thumb
Function_226007c: @ 226007c :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2260080

.thumb
Function_2260080: @ 2260080 :thumb
	mov     r0, #0x4
	bx      lr
@ 0x2260084

.thumb
Function_2260084: @ 2260084 :thumb
	mov     r0, r3
	ldr     r3, [pc, #0x4] @ 0x226008c, (=0x225ca25)
	ldr     r1, [r2, #0x0]
	bx      r3
@ 0x226008c

.word Function_225ca24+1 @ =0x225ca25, 0x226008c
.thumb
Function_2260090: @ 2260090 :thumb
	mov     r1, r0
	mov     r0, r3
	ldr     r3, [pc, #0x4] @ 0x226009c, (=0x225ca2d)
	mov     r2, #0x1
	bx      r3
@ 0x226009a


.align 2


.word 0x225ca2d @ 0x226009c
.thumb
Function_22600a0: @ 22600a0 :thumb
	mov     r1, r0
	mov     r0, r3
	ldr     r3, [pc, #0x4] @ 0x22600ac, (=0x225ca2d)
	mov     r2, #0x0
	bx      r3
@ 0x22600aa


.align 2


.word 0x225ca2d @ 0x22600ac
.thumb
Function_22600b0: @ 22600b0 :thumb
	mov     r0, r3
	ldr     r3, [pc, #0x4] @ 0x22600b8, (=0x225ca45)
	mov     r1, #0x1
	bx      r3
@ 0x22600b8

.word Function_225ca44+1 @ =0x225ca45, 0x22600b8



.thumb
Function_22600bc: @ 22600bc :thumb
	mov     r0, r3
	ldr     r3, [pc, #0x4] @ 0x22600c4, (=0x225ca45)
	mov     r1, #0x0
	bx      r3
@ 0x22600c4

.word Function_225ca44+1 @ =0x225ca45, 0x22600c4



Unknown_22600c8: @ 0x22600c8
.incbin "./baserom/overlay/overlay_0114.bin", 0x39c8, 0x22603e4 - 0x22600c8


.word Function_2260090+1 @ =0x2260091, 0x22603e4
.word Function_226007c+1 @ =0x226007d, 0x22603e8
.word 0x0 @ 0x22603ec
.word Function_22600a0+1 @ =0x22600a1, 0x22603f0
.word Function_226007c+1 @ =0x226007d, 0x22603f4
.word 0x0 @ 0x22603f8
.word Function_22600b0+1 @ =0x22600b1, 0x22603fc
.word Function_226007c+1 @ =0x226007d, 0x2260400
.word 0x0 @ 0x2260404
.word Function_22600bc+1 @ =0x22600bd, 0x2260408
.word Function_226007c+1 @ =0x226007d, 0x226040c
.word 0x0 @ 0x2260410
.word Function_2260084+1 @ =0x2260085, 0x2260414
.word Function_2260080+1 @ =0x2260081, 0x2260418
@ 0x226041c


.incbin "./baserom/overlay/overlay_0114.bin", 0x3d1c, 0x2260440 - 0x226041c


@end 0x2260440



