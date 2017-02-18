
thumb_func_start Call_SetFlag
Call_SetFlag: @ 206a8dc :thumb
	ldr     r3, =SetFlag+1
	bx      r3
@ 0x206a8e0

.align 2
.pool
thumb_func_end Call_SetFlag



thumb_func_start Call_ClearFlag
Call_ClearFlag: @ 206a8e4 :thumb
	ldr     r3, =ClearFlag+1
	bx      r3
@ 0x206a8e8

.align 2
.pool
thumb_func_end Call_ClearFlag



thumb_func_start Call_CheckFlag
Call_CheckFlag: @ 206a8ec :thumb
	ldr     r3, =CheckFlag+1
	bx      r3
@ 0x206a8f0

.align 2
.pool
thumb_func_end Call_CheckFlag



thumb_func_start SetClearCheckFlag
SetClearCheckFlag: @ 206a8f4 :thumb
	push    {r3,lr}
	cmp     r1, #0x0
	beq     branch_206a90e
	cmp     r1, #0x1
	beq     branch_206a904
	cmp     r1, #0x2
	beq     branch_206a918
	b       branch_206a922

branch_206a904: @ 206a904 :thumb
	lsl     r1, r2, #16
	lsr     r1, r1, #16
	bl      Call_SetFlag
	b       branch_206a926

branch_206a90e: @ 206a90e :thumb
	lsl     r1, r2, #16
	lsr     r1, r1, #16
	bl      Call_ClearFlag
	b       branch_206a926

branch_206a918: @ 206a918 :thumb
	lsl     r1, r2, #16
	lsr     r1, r1, #16
	bl      Call_CheckFlag
	pop     {r3,pc}

branch_206a922: @ 206a922 :thumb
	bl      ErrorHandling
branch_206a926: @ 206a926 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
thumb_func_end SetClearCheckFlag


thumb_func_start SetFlag_Flag960
SetFlag_Flag960: @ 206a92c :thumb
	ldr     r3, =Call_SetFlag+1
	mov     r1, #Flag_960/16
	lsl     r1, r1, #4
	bx      r3
@ 0x206a934

.align 2
.pool
thumb_func_end SetFlag_Flag960



thumb_func_start CheckFlag_Flag960
CheckFlag_Flag960: @ 206a938 :thumb
	ldr     r3, =Call_CheckFlag+1
	mov     r1, #Flag_960/16
	lsl     r1, r1, #4
	bx      r3
@ 0x206a940

.align 2
.pool
thumb_func_end CheckFlag_Flag960



.thumb
.globl Function_206a944
Function_206a944: @ 206a944 :thumb
	ldr     r3, =Call_SetFlag+1
	ldr     r1, =0x964
	bx      r3
@ 0x206a94a

.align 2
.pool



.thumb
.globl Function_206a954
Function_206a954: @ 206a954 :thumb
	ldr     r3, =Call_CheckFlag+1
	ldr     r1, =0x964
	bx      r3
@ 0x206a95a

.align 2
.pool



.thumb
.globl Function_206a964
Function_206a964: @ 206a964 :thumb
	ldr     r3, =Call_SetFlag+1
	ldr     r1, =0x961
	bx      r3
@ 0x206a96a

.align 2
.pool



.thumb
.globl Function_206a974
Function_206a974: @ 206a974 :thumb
	ldr     r3, =Call_ClearFlag+1
	ldr     r1, =0x961
	bx      r3
@ 0x206a97a

.align 2
.pool



.thumb
.globl Function_206a984
Function_206a984: @ 206a984 :thumb
	ldr     r3, =Call_CheckFlag+1
	ldr     r1, =0x961
	bx      r3
@ 0x206a98a

.align 2
.pool



.thumb
.globl Function_206a994
Function_206a994: @ 206a994 :thumb
	ldr     r3, =Call_SetFlag+1
	ldr     r1, =0x965
	bx      r3
@ 0x206a99a

.align 2
.pool



.thumb
.globl Function_206a9a4
Function_206a9a4: @ 206a9a4 :thumb
	ldr     r3, =Call_ClearFlag+1
	ldr     r1, =0x965
	bx      r3
@ 0x206a9aa

.align 2
.pool



.thumb
.globl Function_206a9b4
Function_206a9b4: @ 206a9b4 :thumb
	ldr     r3, =Call_CheckFlag+1
	ldr     r1, =0x965
	bx      r3
@ 0x206a9ba

.align 2
.pool



.thumb
.globl Function_206a9c4
Function_206a9c4: @ 206a9c4 :thumb
	ldr     r3, =Call_SetFlag+1
	ldr     r1, =0x96d
	bx      r3
@ 0x206a9ca

.align 2
.pool



.thumb
.globl Function_206a9d4
Function_206a9d4: @ 206a9d4 :thumb
	ldr     r3, =Call_ClearFlag+1
	ldr     r1, =0x96d
	bx      r3
@ 0x206a9da

.align 2
.pool



.thumb
.globl Function_206a9e4
Function_206a9e4: @ 206a9e4 :thumb
	ldr     r3, =Call_CheckFlag+1
	ldr     r1, =0x96d
	bx      r3
@ 0x206a9ea

.align 2
.pool



.thumb
.globl Function_206a9f4
Function_206a9f4: @ 206a9f4 :thumb
	ldr     r3, =Call_SetFlag+1
	ldr     r1, =0x96e
	bx      r3
@ 0x206a9fa

.align 2
.pool



.thumb
.globl Function_206aa04
Function_206aa04: @ 206aa04 :thumb
	ldr     r3, =Call_SetFlag+1
	ldr     r1, =0x96f
	bx      r3
@ 0x206aa0a

.align 2
.pool



.thumb
.globl Function_206aa14
Function_206aa14: @ 206aa14 :thumb
	ldr     r3, =Call_SetFlag+1
	mov     r1, #0x97
	lsl     r1, r1, #4
	bx      r3
@ 0x206aa1c

.align 2
.pool



.thumb
.globl Function_206aa20
Function_206aa20: @ 206aa20 :thumb
	ldr     r3, =Call_SetFlag+1
	ldr     r1, =0x971
	bx      r3
@ 0x206aa26

.align 2
.pool



.thumb
.globl Function_206aa30
Function_206aa30: @ 206aa30 :thumb
	ldr     r3, =Call_SetFlag+1
	ldr     r1, =0x972
	bx      r3
@ 0x206aa36

.align 2
.pool



.thumb
.globl Function_206aa40
Function_206aa40: @ 206aa40 :thumb
	ldr     r3, =Call_SetFlag+1
	ldr     r1, =0x973
	bx      r3
@ 0x206aa46

.align 2
.pool



.thumb
Function_206aa50: @ 206aa50 :thumb
	push    {r3,lr}
	cmp     r1, #0x4
	bhi     branch_206aa92
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x206aa62

Jumppoints_206aa62:
.hword branch_206aa6c - Jumppoints_206aa62 - 2
.hword branch_206aa74 - Jumppoints_206aa62 - 2
.hword branch_206aa7c - Jumppoints_206aa62 - 2
.hword branch_206aa84 - Jumppoints_206aa62 - 2
.hword branch_206aa8c - Jumppoints_206aa62 - 2
.thumb
branch_206aa6c: @ 206aa6c :thumb
	ldr     r1, [pc, #0x24] @ 0x206aa94, (=0x968)
	bl      Call_SetFlag
	pop     {r3,pc}

branch_206aa74: @ 206aa74 :thumb
	ldr     r1, [pc, #0x20] @ 0x206aa98, (=0x969)
	bl      Call_SetFlag
	pop     {r3,pc}

branch_206aa7c: @ 206aa7c :thumb
	ldr     r1, [pc, #0x1c] @ 0x206aa9c, (=0x96a)
	bl      Call_SetFlag
	pop     {r3,pc}

branch_206aa84: @ 206aa84 :thumb
	ldr     r1, [pc, #0x18] @ 0x206aaa0, (=0x96b)
	bl      Call_SetFlag
	pop     {r3,pc}

branch_206aa8c: @ 206aa8c :thumb
	ldr     r1, [pc, #0x14] @ 0x206aaa4, (=0x96c)
	bl      Call_SetFlag
branch_206aa92: @ 206aa92 :thumb
	pop     {r3,pc}
@ 0x206aa94

.word 0x968 @ 0x206aa94
.word 0x969 @ 0x206aa98
.word 0x96a @ 0x206aa9c
.word 0x96b @ 0x206aaa0
.word 0x96c @ 0x206aaa4



.thumb
Function_206aaa8: @ 206aaa8 :thumb
	push    {r3,lr}
	cmp     r1, #0x4
	bhi     branch_206aaea
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x206aaba

Jumppoints_206aaba:
.hword branch_206aac4 - Jumppoints_206aaba - 2
.hword branch_206aacc - Jumppoints_206aaba - 2
.hword branch_206aad4 - Jumppoints_206aaba - 2
.hword branch_206aadc - Jumppoints_206aaba - 2
.hword branch_206aae4 - Jumppoints_206aaba - 2
.thumb
branch_206aac4: @ 206aac4 :thumb
	ldr     r1, [pc, #0x24] @ 0x206aaec, (=0x968)
	bl      Call_CheckFlag
	pop     {r3,pc}

branch_206aacc: @ 206aacc :thumb
	ldr     r1, [pc, #0x20] @ 0x206aaf0, (=0x969)
	bl      Call_CheckFlag
	pop     {r3,pc}

branch_206aad4: @ 206aad4 :thumb
	ldr     r1, [pc, #0x1c] @ 0x206aaf4, (=0x96a)
	bl      Call_CheckFlag
	pop     {r3,pc}

branch_206aadc: @ 206aadc :thumb
	ldr     r1, [pc, #0x18] @ 0x206aaf8, (=0x96b)
	bl      Call_CheckFlag
	pop     {r3,pc}

branch_206aae4: @ 206aae4 :thumb
	ldr     r1, [pc, #0x14] @ 0x206aafc, (=0x96c)
	bl      Call_CheckFlag
branch_206aaea: @ 206aaea :thumb
	pop     {r3,pc}
@ 0x206aaec

.word 0x968 @ 0x206aaec
.word 0x969 @ 0x206aaf0
.word 0x96a @ 0x206aaf4
.word 0x96b @ 0x206aaf8
.word 0x96c @ 0x206aafc



.thumb
.globl Function_206ab00
Function_206ab00: @ 206ab00 :thumb
	push    {r3,lr}
	mov     r2, #0x0
	cmp     r1, #0x5
	bhi     branch_206ab52
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x206ab14

Jumppoints_206ab14:
.hword branch_206ab52 - Jumppoints_206ab14 - 2
.hword branch_206ab20 - Jumppoints_206ab14 - 2
.hword branch_206ab2a - Jumppoints_206ab14 - 2
.hword branch_206ab36 - Jumppoints_206ab14 - 2
.hword branch_206ab40 - Jumppoints_206ab14 - 2
.hword branch_206ab4a - Jumppoints_206ab14 - 2
.thumb
branch_206ab20: @ 206ab20 :thumb
	ldr     r1, [pc, #0x34] @ 0x206ab58, (=0x97f)
	bl      Call_CheckFlag
	mov     r2, r0
	b       branch_206ab52

branch_206ab2a: @ 206ab2a :thumb
	mov     r1, #0x26
	lsl     r1, r1, #6
	bl      Call_CheckFlag
	mov     r2, r0
	b       branch_206ab52

branch_206ab36: @ 206ab36 :thumb
	ldr     r1, [pc, #0x24] @ 0x206ab5c, (=0x981)
	bl      Call_CheckFlag
	mov     r2, r0
	b       branch_206ab52

branch_206ab40: @ 206ab40 :thumb
	ldr     r1, [pc, #0x1c] @ 0x206ab60, (=0x982)
	bl      Call_CheckFlag
	mov     r2, r0
	b       branch_206ab52

branch_206ab4a: @ 206ab4a :thumb
	ldr     r1, [pc, #0x18] @ 0x206ab64, (=0x983)
	bl      Call_CheckFlag
	mov     r2, r0
branch_206ab52: @ 206ab52 :thumb
	mov     r0, r2
	pop     {r3,pc}
@ 0x206ab56

.align 2
.word 0x97f @ 0x206ab58
.word 0x981 @ 0x206ab5c
.word 0x982 @ 0x206ab60
.word 0x983 @ 0x206ab64



.thumb
Function_206ab68: @ 206ab68 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	ldr     r1, [pc, #0x1bc] @ 0x206ad2c, (=0x132)
	mov     r6, r0
	mov     r5, #0x0
	cmp     r4, r1
	bgt     branch_206abc6
	blt     branch_206ab7a
	b       branch_206ac7e

branch_206ab7a: @ 206ab7a :thumb
	cmp     r4, #0xc9
	bgt     branch_206aba8
	blt     branch_206ab82
	b       branch_206accc

branch_206ab82: @ 206ab82 :thumb
	cmp     r4, #0x4b
	bgt     branch_206aba0
	mov     r1, r4
	sub     r1, #0x48
	bmi     branch_206aba6
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x206ab98

Jumppoints_206ab98:
.hword branch_206acb2 - Jumppoints_206ab98 - 2
.hword branch_206acb2 - Jumppoints_206ab98 - 2
.hword branch_206acb2 - Jumppoints_206ab98 - 2
.hword branch_206acb2 - Jumppoints_206ab98 - 2
.thumb
branch_206aba0: @ 206aba0 :thumb
	cmp     r4, #0xb9
	bne     branch_206aba6
	b       branch_206ad1a

branch_206aba6: @ 206aba6 :thumb
	b       branch_206ad28

branch_206aba8: @ 206aba8 :thumb
	mov     r2, r1
	sub     r2, #0x32
	cmp     r4, r2
	bgt     branch_206abbe
	sub     r1, #0x32
	cmp     r4, r1
	blt     branch_206abb8
	b       branch_206ace6

branch_206abb8: @ 206abb8 :thumb
	cmp     r4, #0xfb
	beq     branch_206ac60
	b       branch_206ad28

branch_206abbe: @ 206abbe :thumb
	sub     r0, r1, #0x1
	cmp     r4, r0
	beq     branch_206ac7e
	b       branch_206ad28

branch_206abc6: @ 206abc6 :thumb
	mov     r2, r1
	add     r2, #0x5d
	cmp     r4, r2
	bgt     branch_206ac10
	mov     r2, r1
	add     r2, #0x5d
	cmp     r4, r2
	blt     branch_206abd8
	b       branch_206ad00

branch_206abd8: @ 206abd8 :thumb
	add     r2, r1, #0x1
	cmp     r4, r2
	bgt     branch_206abe6
	mov     r0, r2
	cmp     r4, r0
	beq     branch_206ac7e
	b       branch_206ad28

branch_206abe6: @ 206abe6 :thumb
	.hword  0x1c89 @ add r1, r1, #0x2
	sub     r1, r4, r1
	cmp     r1, #0xa
	bhi     branch_206ac1e
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x206abfa

Jumppoints_206abfa:
.hword branch_206ac7e - Jumppoints_206abfa - 2
.hword branch_206ac7e - Jumppoints_206abfa - 2
.hword branch_206ac7e - Jumppoints_206abfa - 2
.hword branch_206ad28 - Jumppoints_206abfa - 2
.hword branch_206ac44 - Jumppoints_206abfa - 2
.hword branch_206ad28 - Jumppoints_206abfa - 2
.hword branch_206ac28 - Jumppoints_206abfa - 2
.hword branch_206ad28 - Jumppoints_206abfa - 2
.hword branch_206ac36 - Jumppoints_206abfa - 2
.hword branch_206ad28 - Jumppoints_206abfa - 2
.hword branch_206ac52 - Jumppoints_206abfa - 2
.thumb
branch_206ac10: @ 206ac10 :thumb
	ldr     r0, [pc, #0x11c] @ 0x206ad30, (=0x1ee)
	cmp     r4, r0
	bgt     branch_206ac20
	bge     branch_206ac7e
	sub     r0, #0x48
	cmp     r4, r0
	beq     branch_206ac6e

branch_206ac1e: @ 206ac1e :thumb
	b       branch_206ad28

branch_206ac20: @ 206ac20 :thumb
	.hword  0x1cc0 @ add r0, r0, #0x3
	cmp     r4, r0
	beq     branch_206ac7e
	b       branch_206ad28

branch_206ac28: @ 206ac28 :thumb
	ldr     r1, [pc, #0x108] @ 0x206ad34, (=0x984)
	bl      Call_CheckFlag
	cmp     r0, #0x1
	bne     branch_206ad28
	ldr     r5, [pc, #0x104] @ 0x206ad38, (=0x42e)
	b       branch_206ad28

branch_206ac36: @ 206ac36 :thumb
	ldr     r1, [pc, #0xfc] @ 0x206ad34, (=0x984)
	bl      Call_CheckFlag
	cmp     r0, #0x1
	bne     branch_206ad28
	ldr     r5, [pc, #0xf8] @ 0x206ad3c, (=0x429)
	b       branch_206ad28

branch_206ac44: @ 206ac44 :thumb
	ldr     r1, [pc, #0xf8] @ 0x206ad40, (=0x98e)
	bl      Call_CheckFlag
	cmp     r0, #0x1
	bne     branch_206ad28
	ldr     r5, [pc, #0xe8] @ 0x206ad38, (=0x42e)
	b       branch_206ad28

branch_206ac52: @ 206ac52 :thumb
	ldr     r1, [pc, #0xf0] @ 0x206ad44, (=0x98f)
	bl      Call_CheckFlag
	cmp     r0, #0x1
	bne     branch_206ad28
	ldr     r5, [pc, #0xd8] @ 0x206ad38, (=0x42e)
	b       branch_206ad28

branch_206ac60: @ 206ac60 :thumb
	ldr     r1, [pc, #0xe4] @ 0x206ad48, (=0x995)
	bl      Call_CheckFlag
	cmp     r0, #0x1
	bne     branch_206ad28
	ldr     r5, [pc, #0xe0] @ 0x206ad4c, (=0x42d)
	b       branch_206ad28

branch_206ac6e: @ 206ac6e :thumb
	ldr     r1, [pc, #0xe0] @ 0x206ad50, (=0x993)
	mov     r0, r6
	bl      Call_CheckFlag
	cmp     r0, #0x1
	bne     branch_206ad28
	ldr     r5, [pc, #0xd8] @ 0x206ad54, (=0x44a)
	b       branch_206ad28

branch_206ac7e: @ 206ac7e :thumb
	ldr     r1, [pc, #0xd8] @ 0x206ad58, (=0x985)
	mov     r0, r6
	bl      Call_CheckFlag
	cmp     r0, #0x1
	bne     branch_206ac9c
	bl      Function_2013948
	cmp     r0, #0x0
	bne     branch_206ac98
	mov     r5, #0xfe
	lsl     r5, r5, #2
	b       branch_206ad28

branch_206ac98: @ 206ac98 :thumb
	ldr     r5, [pc, #0xc0] @ 0x206ad5c, (=0x415)
	b       branch_206ad28

branch_206ac9c: @ 206ac9c :thumb
	ldr     r0, [pc, #0xc0] @ 0x206ad60, (=0x131)
	cmp     r4, r0
	bne     branch_206ad28
	ldr     r1, [pc, #0xc0] @ 0x206ad64, (=0x986)
	mov     r0, r6
	bl      Call_CheckFlag
	cmp     r0, #0x1
	bne     branch_206ad28
	ldr     r5, [pc, #0xb8] @ 0x206ad68, (=0x42b)
	b       branch_206ad28

branch_206acb2: @ 206acb2 :thumb
	ldr     r1, [pc, #0xb8] @ 0x206ad6c, (=0x987)
	bl      Call_CheckFlag
	cmp     r0, #0x1
	bne     branch_206ad28
	bl      Function_2013948
	cmp     r0, #0x0
	bne     branch_206acc8
	ldr     r5, [pc, #0xa8] @ 0x206ad70, (=0x3f5)
	b       branch_206ad28

branch_206acc8: @ 206acc8 :thumb
	ldr     r5, [pc, #0xa8] @ 0x206ad74, (=0x412)
	b       branch_206ad28

branch_206accc: @ 206accc :thumb
	ldr     r1, [pc, #0xa8] @ 0x206ad78, (=0x988)
	bl      Call_CheckFlag
	cmp     r0, #0x1
	bne     branch_206ad28
	bl      Function_2013948
	cmp     r0, #0x0
	bne     branch_206ace2
	ldr     r5, [pc, #0x9c] @ 0x206ad7c, (=0x3ff)
	b       branch_206ad28

branch_206ace2: @ 206ace2 :thumb
	ldr     r5, [pc, #0x9c] @ 0x206ad80, (=0x41c)
	b       branch_206ad28

branch_206ace6: @ 206ace6 :thumb
	ldr     r1, [pc, #0x9c] @ 0x206ad84, (=0x989)
	bl      Call_CheckFlag
	cmp     r0, #0x1
	bne     branch_206ad28
	bl      Function_2013948
	cmp     r0, #0x0
	bne     branch_206acfc
	ldr     r5, [pc, #0x8c] @ 0x206ad88, (=0x3ee)
	b       branch_206ad28

branch_206acfc: @ 206acfc :thumb
	ldr     r5, [pc, #0x8c] @ 0x206ad8c, (=0x40b)
	b       branch_206ad28

branch_206ad00: @ 206ad00 :thumb
	ldr     r1, [pc, #0x8c] @ 0x206ad90, (=0x98a)
	bl      Call_CheckFlag
	cmp     r0, #0x1
	bne     branch_206ad28
	bl      Function_2013948
	cmp     r0, #0x0
	bne     branch_206ad16
	ldr     r5, [pc, #0x74] @ 0x206ad88, (=0x3ee)
	b       branch_206ad28

branch_206ad16: @ 206ad16 :thumb
	ldr     r5, [pc, #0x74] @ 0x206ad8c, (=0x40b)
	b       branch_206ad28

branch_206ad1a: @ 206ad1a :thumb
	ldr     r1, [pc, #0x78] @ 0x206ad94, (=0x98b)
	mov     r0, r6
	bl      Call_CheckFlag
	cmp     r0, #0x1
	bne     branch_206ad28
	ldr     r5, [pc, #0x70] @ 0x206ad98, (=0x3e9)
branch_206ad28: @ 206ad28 :thumb
	mov     r0, r5
	pop     {r4-r6,pc}
@ 0x206ad2c

.word 0x132 @ 0x206ad2c
.word 0x1ee @ 0x206ad30
.word 0x984 @ 0x206ad34
.word 0x42e @ 0x206ad38
.word 0x429 @ 0x206ad3c
.word 0x98e @ 0x206ad40
.word 0x98f @ 0x206ad44
.word 0x995 @ 0x206ad48
.word 0x42d @ 0x206ad4c
.word 0x993 @ 0x206ad50
.word 0x44a @ 0x206ad54
.word 0x985 @ 0x206ad58
.word 0x415 @ 0x206ad5c
.word 0x131 @ 0x206ad60
.word 0x986 @ 0x206ad64
.word 0x42b @ 0x206ad68
.word 0x987 @ 0x206ad6c
.word 0x3f5 @ 0x206ad70
.word 0x412 @ 0x206ad74
.word 0x988 @ 0x206ad78
.word 0x3ff @ 0x206ad7c
.word 0x41c @ 0x206ad80
.word 0x989 @ 0x206ad84
.word 0x3ee @ 0x206ad88
.word 0x40b @ 0x206ad8c
.word 0x98a @ 0x206ad90
.word 0x98b @ 0x206ad94
.word 0x3e9 @ 0x206ad98



.thumb
Function_206ad9c: @ 206ad9c :thumb
	ldr     r3, =Call_SetFlag+1
	ldr     r1, =0x966
	bx      r3
@ 0x206ada2

.align 2
.pool



.thumb
Function_206adac: @ 206adac :thumb
	ldr     r3, =Call_ClearFlag+1
	ldr     r1, =0x966
	bx      r3
@ 0x206adb2

.align 2
.pool



.thumb
Function_206adbc: @ 206adbc :thumb
	ldr     r3, =Call_CheckFlag+1
	ldr     r1, =0x966
	bx      r3
@ 0x206adc2

.align 2
.pool



.thumb
Function_206adcc: @ 206adcc :thumb
	ldr     r3, =Call_CheckFlag+1
	ldr     r1, =0x978
	bx      r3
@ 0x206add2

.align 2
.pool



.thumb
.globl Function_206addc
Function_206addc: @ 206addc :thumb
	ldr     r3, =Call_CheckFlag+1
	ldr     r1, =0x992
	bx      r3
@ 0x206ade2

.align 2
.pool



.thumb
.globl Function_206adec
Function_206adec: @ 206adec :thumb
	ldr     r3, =Call_CheckFlag+1
	ldr     r1, =0x97d
	bx      r3
@ 0x206adf2

.align 2
.pool



.thumb
Function_206adfc: @ 206adfc :thumb
	ldr     r3, =Call_CheckFlag+1
	ldr     r1, =0x97e
	bx      r3
@ 0x206ae02

.align 2
.pool



.thumb
Function_206ae0c: @ 206ae0c :thumb
	ldr     r3, =Call_SetFlag+1
	ldr     r1, =0x97c
	bx      r3
@ 0x206ae12

.align 2
.pool



.thumb
Function_206ae1c: @ 206ae1c :thumb
	ldr     r3, =Call_ClearFlag+1
	ldr     r1, =0x97c
	bx      r3
@ 0x206ae22

.align 2
.pool



.thumb
.globl Function_206ae2c
Function_206ae2c: @ 206ae2c :thumb
	ldr     r3, =Call_CheckFlag+1
	ldr     r1, =0x97c
	bx      r3
@ 0x206ae32

.align 2
.pool



.thumb
Function_206ae3c: @ 206ae3c :thumb
	ldr     r3, =Call_SetFlag+1
	ldr     r1, =0x967
	bx      r3
@ 0x206ae42

.align 2
.pool



.thumb
Function_206ae4c: @ 206ae4c :thumb
	ldr     r3, =Call_ClearFlag+1
	ldr     r1, =0x967
	bx      r3
@ 0x206ae52

.align 2
.pool



.thumb
.globl Function_206ae5c
Function_206ae5c: @ 206ae5c :thumb
	ldr     r3, =Call_CheckFlag+1
	ldr     r1, =0x967
	bx      r3
@ 0x206ae62

.align 2
.pool



.thumb
Function_206ae6c: @ 206ae6c :thumb
	ldr     r3, =Call_SetFlag+1
	ldr     r1, =0x979
	bx      r3
@ 0x206ae72

.align 2
.pool



.thumb
Function_206ae7c: @ 206ae7c :thumb
	ldr     r3, =Call_ClearFlag+1
	ldr     r1, =0x979
	bx      r3
@ 0x206ae82

.align 2
.pool



.thumb
.globl Function_206ae8c
Function_206ae8c: @ 206ae8c :thumb
	ldr     r3, =Call_CheckFlag+1
	ldr     r1, =0x979
	bx      r3
@ 0x206ae92

.align 2
.pool



.thumb
Function_206ae9c: @ 206ae9c :thumb
	ldr     r3, =Call_ClearFlag+1
	ldr     r1, =0x994
	bx      r3
@ 0x206aea2

.align 2
.pool



.thumb
.globl Function_206aeac
Function_206aeac: @ 206aeac :thumb
	ldr     r3, =SetClearCheckFlag+1
	ldr     r2, =0x962
	bx      r3
@ 0x206aeb2

.align 2
.pool



.thumb
Function_206aebc: @ 206aebc :thumb
	ldr     r3, =Call_SetFlag+1
	ldr     r1, =0x97a
	bx      r3
@ 0x206aec2

.align 2
.pool



.thumb
Function_206aecc: @ 206aecc :thumb
	ldr     r3, =Call_ClearFlag+1
	ldr     r1, =0x97a
	bx      r3
@ 0x206aed2

.align 2
.pool



.thumb
Function_206aedc: @ 206aedc :thumb
	ldr     r3, =Call_CheckFlag+1
	ldr     r1, =0x97a
	bx      r3
@ 0x206aee2

.align 2
.pool



.thumb
Function_206aeec: @ 206aeec :thumb
	ldr     r3, =Call_SetFlag+1
	ldr     r1, =0x97b
	bx      r3
@ 0x206aef2

.align 2
.pool



.thumb
Function_206aefc: @ 206aefc :thumb
	ldr     r3, =Call_ClearFlag+1
	ldr     r1, =0x97b
	bx      r3
@ 0x206af02

.align 2
.pool



.thumb
Function_206af0c: @ 206af0c :thumb
	ldr     r3, =Call_CheckFlag+1
	ldr     r1, =0x97b
	bx      r3
@ 0x206af12

.align 2
.pool



.thumb
Function_206af1c: @ 206af1c :thumb
	ldr     r3, =SetClearCheckFlag+1
	ldr     r2, =0x996
	bx      r3
@ 0x206af22

.align 2
.pool



.thumb
Function_206af2c: @ 206af2c :thumb
	ldr     r3, =SetClearCheckFlag+1
	ldr     r2, =0x963
	bx      r3
@ 0x206af32

.align 2
.pool



.thumb
.globl Function_206af3c
Function_206af3c: @ 206af3c :thumb
	push    {r4-r6,lr}
	mov     r4, r2
	mov     r5, r0
	mov     r6, r1
	cmp     r4, #0x45
	blo     branch_206af4c
	bl      ErrorHandling
branch_206af4c: @ 206af4c :thumb

	mov     r2, #0x9b
	lsl     r2, r2, #4
	mov     r0, r5
	mov     r1, r6
	add     r2, r4, r2
	bl      SetClearCheckFlag
	pop     {r4-r6,pc}
@ 0x206af5c


.thumb
.globl Function_206af5c
Function_206af5c: @ 206af5c :thumb
	ldr     r3, =Call_SetFlag+1
	ldr     r1, =0x98c
	bx      r3
@ 0x206af62

.align 2
.pool



.thumb
.globl Function_206af6c
Function_206af6c: @ 206af6c :thumb
	push    {r4-r6,lr}
	mov     r4, r2
	mov     r5, r0
	mov     r6, r1
	cmp     r4, #0x14
	blt     branch_206af7c
	bl      ErrorHandling
branch_206af7c: @ 206af7c :thumb

	ldr     r2, [pc, #0xc] @ 0x206af8c, (=0x997)
	mov     r0, r5
	mov     r1, r6
	add     r2, r4, r2
	bl      SetClearCheckFlag
	pop     {r4-r6,pc}
@ 0x206af8a

.align 2
.word 0x997 @ 0x206af8c



.thumb
Function_206af90: @ 206af90 :thumb
	ldr     r3, =Call_ClearFlag+1
	ldr     r1, =0x9ab
	bx      r3
@ 0x206af96

.align 2
.pool



.thumb
Function_206afa0: @ 206afa0 :thumb
	ldr     r3, =Call_ClearFlag+1
	ldr     r1, =0x9ac
	bx      r3
@ 0x206afa6

.align 2
.pool



.thumb
.globl Function_206afb0
Function_206afb0: @ 206afb0 :thumb
	ldr     r3, =0x9ae
	add     r2, r2, r3
	ldr     r3, =SetClearCheckFlag+1
	bx      r3
@ 0x206afb8

.align 2
.pool



.thumb
.globl Function_206afc0
Function_206afc0: @ 206afc0 :thumb
	ldr     r3, =SetClearCheckFlag+1
	ldr     r2, =0x9ad
	bx      r3
@ 0x206afc6

.align 2
.pool



.thumb
.globl Function_206afd0
Function_206afd0: @ 206afd0 :thumb
	ldr     r3, =SetClearCheckFlag+1
	mov     r1, #0x2
	ldr     r2, =0x977
	bx      r3
@ 0x206afd8

.align 2
.pool

