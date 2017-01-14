

.section .iwram25, "ax"


.thumb
Function_2253ce0: @ 2253ce0 :thumb
	ldr     r3, [pc, #0x0] @ 0x2253ce4, (=0x203d159)
	bx      r3
@ 0x2253ce4

.word 0x203d159 @ 0x2253ce4



.thumb
.globl Function_25_2253ce8
Function_25_2253ce8: @ 2253ce8 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r0, #0x3
	str     r2, [sp, #0x0]
	mov     r1, #0x7
	lsl     r2, r0, #14
	mov     r7, r3
	bl      Function_2017fc8
	mov     r0, #0x3
	mov     r1, #0x8
	lsl     r2, r0, #14
	bl      Function_2017fc8
	mov     r0, #0x7
	mov     r1, #0x64
	bl      malloc
	mov     r4, r0
	beq     branch_2253d52
	str     r4, [r5, #0x0]
	ldr     r0, [sp, #0x0]
	str     r6, [r4, #0x5c]
	str     r0, [r4, #0x54]
	bl      LoadVariableAreaAdress_5
	str     r0, [r4, #0x58]
	ldr     r0, [sp, #0x18]
	str     r7, [r4, #0x4c]
	str     r0, [r4, #0x50]
	mov     r0, r4
	bl      Function_2253ddc
	cmp     r0, #0x0
	beq     branch_2253d52
	bl      Function_201e3d8
	mov     r0, #0x4
	bl      Function_201e450
	ldr     r0, [pc, #0x18] @ 0x2253d54, (=0x2253e95)
	str     r5, [r4, #0x34]
	mov     r1, r4
	mov     r2, #0x4
	bl      AddTaskToTaskList1
	str     r0, [r4, #0x38]
	ldr     r0, [pc, #0xc] @ 0x2253d58, (=0x2253e41)
	mov     r1, r4
	mov     r2, #0x0
	bl      AddTaskToTaskList1
branch_2253d52: @ 2253d52 :thumb
	pop     {r3-r7,pc}
@ 0x2253d54

.word Function_2253e94+1 @ =0x2253e95, 0x2253d54
.word 0x2253e41 @ 0x2253d58



.thumb
.globl Function_25_2253d5c
Function_25_2253d5c: @ 2253d5c :thumb
	push    {r3,lr}
	ldrb    r1, [r0, #0x0]
	cmp     r1, #0x3
	beq     branch_2253d6e
	cmp     r1, #0x4
	beq     branch_2253d6e
	mov     r1, #0x3
	bl      Function_2253e9c
branch_2253d6e: @ 2253d6e :thumb
	pop     {r3,pc}
@ 0x2253d70


.thumb
.globl Function_25_2253d70
Function_25_2253d70: @ 2253d70 :thumb
	cmp     r0, #0x0
	bne     branch_2253d78
	mov     r0, #0x1
	bx      lr

branch_2253d78: @ 2253d78 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2253d7c


.thumb
.globl Function_25_2253d7c
Function_25_2253d7c: @ 2253d7c :thumb
	push    {r4,lr}
	mov     r4, r0
	cmp     r1, #0x5
	bhi     branch_2253dce
	add     r0, r1, r1
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2253d90

Jumppoints_2253d90:
.hword branch_2253dce - Jumppoints_2253d90 - 2
.hword branch_2253d9c - Jumppoints_2253d90 - 2
.hword branch_2253dce - Jumppoints_2253d90 - 2
.hword branch_2253dce - Jumppoints_2253d90 - 2
.hword branch_2253dbe - Jumppoints_2253d90 - 2
.hword branch_2253da2 - Jumppoints_2253d90 - 2
.thumb
branch_2253d9c: @ 2253d9c :thumb
	mov     r0, #0x1
	strb    r0, [r4, #0x4]
	pop     {r4,pc}
@ 0x2253da2

.thumb
branch_2253da2: @ 2253da2 :thumb
	ldr     r0, [r4, #0x58]
	bl      Function_20568c8
	add     r1, r0, #0x1
	ldr     r0, [pc, #0x24] @ 0x2253dd0, (=0x1869f)
	cmp     r1, r0
	bls     branch_2253db2
	mov     r1, #0x0
.thumb
branch_2253db2: @ 2253db2 :thumb
	ldr     r0, [r4, #0x58]
	bl      Function_20568cc
	mov     r0, #0x1
	strb    r0, [r4, #0x7]
	pop     {r4,pc}
@ 0x2253dbe

.thumb
branch_2253dbe: @ 2253dbe :thumb
	ldrb    r0, [r4, #0x2]
	cmp     r0, #0x2
	bne     branch_2253dce
	ldr     r1, [r4, #0x44]
	cmp     r1, #0x0
	beq     branch_2253dce
	ldr     r0, [r4, #0x48]
	blx     r1
.thumb
branch_2253dce: @ 2253dce :thumb
	pop     {r4,pc}
@ 0x2253dd0

.word 0x1869f @ 0x2253dd0
.thumb
Function_2253dd4: @ 2253dd4 :thumb
	ldrb    r0, [r0, #0x3]
	bx      lr
@ 0x2253dd8

.thumb
Function_2253dd8: @ 2253dd8 :thumb
	ldr     r0, [r0, #0x14]
	bx      lr
@ 0x2253ddc

.thumb
Function_2253ddc: @ 2253ddc :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, r4
	ldr     r2, [r4, #0x50]
	add     r0, #0x1c
	add     r1, #0x20
	mov     r3, r4
	bl      Function_2254560
	cmp     r0, #0x0
	beq     branch_2253e1a
	mov     r1, #0x0
	strb    r1, [r4, #0x0]
	strb    r1, [r4, #0x1]
	strb    r1, [r4, #0x3]
	strb    r1, [r4, #0x4]
	strb    r1, [r4, #0x7]
	strb    r1, [r4, #0x5]
	strb    r1, [r4, #0x6]
	.hword  0x1e48 @ sub r0, r1, #0x1
	str     r0, [r4, #0x14]
	strb    r1, [r4, #0x2]
	str     r1, [r4, #0x8]
	mov     r0, r4
	str     r1, [r4, #0x60]
	bl      Function_2254284
	cmp     r0, #0x0
	beq     branch_2253e1a
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2253e1a

.thumb
branch_2253e1a: @ 2253e1a :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2253e1e


.align 2, 0


.thumb
Function_2253e20: @ 2253e20 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x38]
	bl      Call_RemoveTaskFromTaskList
	mov     r0, r4
	bl      Function_22542c8
	mov     r0, r4
	bl      Function_22541bc
	ldr     r0, [r4, #0x1c]
	bl      Function_2254754
	pop     {r4,pc}
@ 0x2253e3e


.align 2, 0


.thumb
Function_2253e40: @ 2253e40 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x4
	bcs     branch_2253e64
	cmp     r0, #0x0
	beq     branch_2253e56
	mov     r0, r4
	bl      Function_22542d4
.thumb
branch_2253e56: @ 2253e56 :thumb
	ldrb    r1, [r4, #0x0]
	mov     r0, r4
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x30] @ 0x2253e90, (=0x2255e6c)
	ldr     r1, [r1, r2]
	blx     r1
	pop     {r3-r5,pc}
@ 0x2253e64

.thumb
branch_2253e64: @ 2253e64 :thumb
	beq     branch_2253e6a
	bl      ErrorHandling
.thumb
branch_2253e6a: @ 2253e6a :thumb
	ldr     r0, [r4, #0x34]
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	mov     r0, r4
	bl      Function_2253e20
	mov     r0, r4
	bl      free
	mov     r0, r5
	bl      Call_RemoveTaskFromTaskList
	mov     r0, #0x7
	bl      Function_201807c
	mov     r0, #0x8
	bl      Function_201807c
	pop     {r3-r5,pc}
@ 0x2253e90

.word 0x2255e6c @ 0x2253e90
.thumb
Function_2253e94: @ 2253e94 :thumb
	mov     r0, #0x0
	strb    r0, [r1, #0x4]
	strb    r0, [r1, #0x7]
	bx      lr
@ 0x2253e9c

.thumb
Function_2253e9c: @ 2253e9c :thumb
	strb    r1, [r0, #0x0]
	mov     r1, #0x0
	strb    r1, [r0, #0x1]
	bx      lr
@ 0x2253ea4

.thumb
Function_2253ea4: @ 2253ea4 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x1]
	cmp     r1, #0x3
	bhi     branch_2253f28
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2253eba

Jumppoints_2253eba:
.hword branch_2253ec2 - Jumppoints_2253eba - 2
.hword branch_2253ed2 - Jumppoints_2253eba - 2
.hword branch_2253efe - Jumppoints_2253eba - 2
.hword branch_2253f14 - Jumppoints_2253eba - 2
.thumb
branch_2253ec2: @ 2253ec2 :thumb
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x0
	bl      Function_22547d0
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	pop     {r3-r5,pc}
@ 0x2253ed2

.thumb
branch_2253ed2: @ 2253ed2 :thumb
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x0
	bl      Function_22547f4
	cmp     r0, #0x0
	beq     branch_2253f28
	ldr     r0, [r4, #0x58]
	bl      Function_2056830
	mov     r5, r0
	mov     r0, r4
	mov     r1, r5
	bl      Function_2254170
	mov     r0, r4
	mov     r1, r5
	bl      Function_22541d8
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	pop     {r3-r5,pc}
@ 0x2253efe

.thumb
branch_2253efe: @ 2253efe :thumb
	bl      Function_22541fc
	cmp     r0, #0x0
	beq     branch_2253f28
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x1
	bl      Function_22547d0
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
.thumb
branch_2253f14: @ 2253f14 :thumb
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x1
	bl      Function_22547f4
	cmp     r0, #0x0
	beq     branch_2253f28
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2253e9c
.thumb
branch_2253f28: @ 2253f28 :thumb
	pop     {r3-r5,pc}
@ 0x2253f2a


.align 2, 0


.thumb
Function_2253f2c: @ 2253f2c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x1]
	cmp     r1, #0x4
	bhi     branch_2253f60
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2253f42

Jumppoints_2253f42:
.hword branch_2253f4c - Jumppoints_2253f42 - 2
.hword branch_2253f7a - Jumppoints_2253f42 - 2
.hword branch_2253fcc - Jumppoints_2253f42 - 2
.hword branch_2254002 - Jumppoints_2253f42 - 2
.hword branch_225401e - Jumppoints_2253f42 - 2
.thumb
branch_2253f4c: @ 2253f4c :thumb
	bl      Function_225450c
	cmp     r0, #0x0
	beq     branch_2253f56
	b       branch_2254068
@ 0x2253f56

.thumb
branch_2253f56: @ 2253f56 :thumb
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x3
	beq     branch_2253f62
	cmp     r0, #0x5
	beq     branch_2253f62
.thumb
branch_2253f60: @ 2253f60 :thumb
	b       branch_2254068
@ 0x2253f62

.thumb
branch_2253f62: @ 2253f62 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0xc]
	mov     r0, #0x1
	strb    r0, [r4, #0x5]
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x4
	bl      Function_22547d0
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	pop     {r4,pc}
@ 0x2253f7a

.thumb
branch_2253f7a: @ 2253f7a :thumb
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x3
	beq     branch_2253f84
	cmp     r0, #0x5
	bne     branch_2253f88
.thumb
branch_2253f84: @ 2253f84 :thumb
	mov     r0, #0x1
	str     r0, [r4, #0xc]
.thumb
branch_2253f88: @ 2253f88 :thumb
	ldr     r0, [r4, #0x1c]
	bl      Function_2254800
	cmp     r0, #0x0
	beq     branch_2254068
	ldr     r0, [r4, #0x60]
	cmp     r0, #0x0
	ldr     r0, [r4, #0x58]
	bne     branch_2253fa0
	bl      Function_2056860
	b       branch_2253fa4
@ 0x2253fa0

.thumb
branch_2253fa0: @ 2253fa0 :thumb
	bl      Function_2056838
.thumb
branch_2253fa4: @ 2253fa4 :thumb
	str     r0, [r4, #0x20]
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x0
	beq     branch_2253fc2
	ldr     r0, [r4, #0x1c]
	mov     r1, #0xc
	bl      Function_22547d0
	mov     r0, #0x1e
	str     r0, [r4, #0x10]
	mov     r0, #0x0
	str     r0, [r4, #0xc]
	mov     r0, #0x4
	strb    r0, [r4, #0x1]
	pop     {r4,pc}
@ 0x2253fc2

.thumb
branch_2253fc2: @ 2253fc2 :thumb
	mov     r0, #0x3
	str     r0, [r4, #0x10]
	mov     r0, #0x2
	strb    r0, [r4, #0x1]
	pop     {r4,pc}
@ 0x2253fcc

.thumb
branch_2253fcc: @ 2253fcc :thumb
	ldr     r1, [r4, #0x8]
	cmp     r1, #0x3
	beq     branch_2253fd6
	cmp     r1, #0x5
	bne     branch_2253fec
.thumb
branch_2253fd6: @ 2253fd6 :thumb
	ldr     r0, [r4, #0x1c]
	mov     r1, #0xc
	bl      Function_22547d0
	mov     r0, #0x1e
	str     r0, [r4, #0x10]
	mov     r0, #0x0
	str     r0, [r4, #0xc]
	mov     r0, #0x4
	strb    r0, [r4, #0x1]
	pop     {r4,pc}
@ 0x2253fec

.thumb
branch_2253fec: @ 2253fec :thumb
	ldr     r1, [r4, #0x10]
	cmp     r1, #0x0
	beq     branch_2253ff8
	.hword  0x1e48 @ sub r0, r1, #0x1
	str     r0, [r4, #0x10]
	pop     {r4,pc}
@ 0x2253ff8

.thumb
branch_2253ff8: @ 2253ff8 :thumb
	bl      Function_225420c
	mov     r0, #0x3
	strb    r0, [r4, #0x1]
	pop     {r4,pc}
@ 0x2254002

.thumb
branch_2254002: @ 2254002 :thumb
	bl      Function_2254228
	cmp     r0, #0x0
	beq     branch_2254068
	mov     r0, r4
	bl      Function_22541bc
	bl      Function_2099d44
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2253e9c
	pop     {r4,pc}
@ 0x225401e

.thumb
branch_225401e: @ 225401e :thumb
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x3
	beq     branch_2254028
	cmp     r0, #0x5
	bne     branch_225404a
.thumb
branch_2254028: @ 2254028 :thumb
	ldr     r0, [r4, #0x60]
	cmp     r0, #0x0
	ldr     r0, [r4, #0x58]
	bne     branch_2254036
	bl      Function_2056860
	b       branch_225403a
@ 0x2254036

.thumb
branch_2254036: @ 2254036 :thumb
	bl      Function_2056838
.thumb
branch_225403a: @ 225403a :thumb
	str     r0, [r4, #0x20]
	mov     r0, #0x1e
	str     r0, [r4, #0x10]
	ldr     r0, [r4, #0x1c]
	mov     r1, #0xd
	bl      Function_22547d0
	pop     {r4,pc}
@ 0x225404a

.thumb
branch_225404a: @ 225404a :thumb
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x0
	beq     branch_2254056
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x10]
	pop     {r4,pc}
@ 0x2254056

.thumb
branch_2254056: @ 2254056 :thumb
	ldr     r0, [r4, #0x1c]
	mov     r1, #0xe
	bl      Function_22547d0
	mov     r0, r4
	bl      Function_225420c
	mov     r0, #0x3
	strb    r0, [r4, #0x1]
.thumb
branch_2254068: @ 2254068 :thumb
	pop     {r4,pc}
@ 0x225406a


.align 2, 0


.thumb
Function_225406c: @ 225406c :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x1]
	cmp     r1, #0x0
	beq     branch_2254080
	cmp     r1, #0x1
	beq     branch_22540a4
	cmp     r1, #0x2
	beq     branch_22540bc
	pop     {r3-r5,pc}
@ 0x2254080

.thumb
branch_2254080: @ 2254080 :thumb
	mov     r0, #0x1
	strb    r0, [r4, #0x6]
	ldr     r0, [r4, #0x58]
	bl      Function_2056830
	mov     r5, r0
	mov     r0, r4
	mov     r1, r5
	bl      Function_2254170
	mov     r0, r4
	mov     r1, r5
	bl      Function_22541d8
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	pop     {r3-r5,pc}
@ 0x22540a4

.thumb
branch_22540a4: @ 22540a4 :thumb
	bl      Function_22541fc
	cmp     r0, #0x0
	beq     branch_22540d6
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x2
	bl      Function_22547d0
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	pop     {r3-r5,pc}
@ 0x22540bc

.thumb
branch_22540bc: @ 22540bc :thumb
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x2
	bl      Function_22547f4
	cmp     r0, #0x0
	beq     branch_22540d6
	mov     r0, #0x0
	strb    r0, [r4, #0x5]
	strb    r0, [r4, #0x6]
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2253e9c
.thumb
branch_22540d6: @ 22540d6 :thumb
	pop     {r3-r5,pc}
@ 0x22540d8

.thumb
Function_22540d8: @ 22540d8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x1]
	cmp     r1, #0x3
	bhi     branch_225416c
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x22540ee

Jumppoints_22540ee:
.hword branch_22540f6 - Jumppoints_22540ee - 2
.hword branch_2254126 - Jumppoints_22540ee - 2
.hword branch_225413a - Jumppoints_22540ee - 2
.hword branch_2254150 - Jumppoints_22540ee - 2
.thumb
branch_22540f6: @ 22540f6 :thumb
	ldrb    r1, [r4, #0x2]
	cmp     r1, #0x3
	bhi     branch_225416c
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2254108

Jumppoints_2254108:
.hword branch_2254120 - Jumppoints_2254108 - 2
.hword branch_2254110 - Jumppoints_2254108 - 2
.hword branch_2254116 - Jumppoints_2254108 - 2
.hword branch_2254120 - Jumppoints_2254108 - 2
.thumb
branch_2254110: @ 2254110 :thumb
	mov     r0, #0x1
	strb    r0, [r4, #0x1]
	pop     {r4,pc}
@ 0x2254116

.thumb
branch_2254116: @ 2254116 :thumb
	bl      Function_225420c
	mov     r0, #0x2
	strb    r0, [r4, #0x1]
	pop     {r4,pc}
@ 0x2254120

.thumb
branch_2254120: @ 2254120 :thumb
	mov     r0, #0x2
	strb    r0, [r4, #0x1]
	pop     {r4,pc}
@ 0x2254126

.thumb
branch_2254126: @ 2254126 :thumb
	bl      Function_22541fc
	cmp     r0, #0x0
	beq     branch_225416c
	mov     r0, r4
	bl      Function_225420c
	mov     r0, #0x2
	strb    r0, [r4, #0x1]
	pop     {r4,pc}
@ 0x225413a

.thumb
branch_225413a: @ 225413a :thumb
	bl      Function_2254228
	cmp     r0, #0x0
	beq     branch_225416c
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x11
	bl      Function_22547d0
	mov     r0, #0x3
	strb    r0, [r4, #0x1]
	pop     {r4,pc}
@ 0x2254150

.thumb
branch_2254150: @ 2254150 :thumb
	ldr     r0, [r4, #0x1c]
	bl      Function_2254800
	cmp     r0, #0x0
	beq     branch_225416c
	mov     r0, r4
	bl      Function_22541bc
	bl      Function_201e530
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_2253e9c
.thumb
branch_225416c: @ 225416c :thumb
	pop     {r4,pc}
@ 0x225416e


.align 2, 0


.thumb
Function_2254170: @ 2254170 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	bmi     branch_225417c
	cmp     r4, #0x19
	bcc     branch_2254180
.thumb
branch_225417c: @ 225417c :thumb
	bl      ErrorHandling
.thumb
branch_2254180: @ 2254180 :thumb
	mov     r0, #0x0
	ldr     r1, [r5, #0x14]
	mvn     r0, r0
	cmp     r1, r0
	bne     branch_22541b0
	ldr     r2, [pc, #0x28] @ 0x22541b4, (=0x2255e7c)
	mov     r1, #0x0
.thumb
branch_225418e: @ 225418e :thumb
	ldr     r0, [r2, #0x0]
	cmp     r4, r0
	bne     branch_22541a8
	ldr     r0, [pc, #0x20] @ 0x22541b8, (=0x2255e80)
	lsl     r1, r1, #3
	ldr     r6, [r0, r1]
	mov     r1, #0x2
	mov     r0, r6
	bl      LoadOverlay
	str     r4, [r5, #0x14]
	str     r6, [r5, #0x18]
	pop     {r4-r6,pc}
@ 0x22541a8

.thumb
branch_22541a8: @ 22541a8 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r2, #0x8
	cmp     r1, #0x19
	bcc     branch_225418e
.thumb
branch_22541b0: @ 22541b0 :thumb
	pop     {r4-r6,pc}
@ 0x22541b2


.align 2


.word 0x2255e7c @ 0x22541b4
.word 0x2255e80 @ 0x22541b8
.thumb
Function_22541bc: @ 22541bc :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x0
	ldr     r1, [r4, #0x14]
	mvn     r0, r0
	cmp     r1, r0
	beq     branch_22541d6
	ldr     r0, [r4, #0x18]
	bl      UnloadOverlay
	mov     r0, #0x0
	mvn     r0, r0
	str     r0, [r4, #0x14]
.thumb
branch_22541d6: @ 22541d6 :thumb
	pop     {r4,pc}
@ 0x22541d8

.thumb
Function_22541d8: @ 22541d8 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x2]
	cmp     r0, #0x0
	beq     branch_22541e6
	bl      ErrorHandling
.thumb
branch_22541e6: @ 22541e6 :thumb
	mov     r0, r4
	ldr     r2, [r4, #0x4c]
	ldr     r3, [r4, #0x14]
	ldr     r5, [r4, #0x3c]
	add     r0, #0x24
	mov     r1, r4
	blx     r5
	mov     r0, #0x1
	strb    r0, [r4, #0x2]
	pop     {r3-r5,pc}
@ 0x22541fa


.align 2, 0


.thumb
Function_22541fc: @ 22541fc :thumb
	ldrb    r0, [r0, #0x2]
	cmp     r0, #0x2
	bne     branch_2254206
	mov     r0, #0x1
	bx      lr
@ 0x2254206

.thumb
branch_2254206: @ 2254206 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x225420a


.align 2, 0


.thumb
Function_225420c: @ 225420c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x2]
	cmp     r0, #0x2
	beq     branch_225421a
	bl      ErrorHandling
.thumb
branch_225421a: @ 225421a :thumb
	ldr     r0, [r4, #0x24]
	ldr     r1, [r4, #0x40]
	blx     r1
	mov     r0, #0x3
	strb    r0, [r4, #0x2]
	pop     {r4,pc}
@ 0x2254226


.align 2, 0


.thumb
Function_2254228: @ 2254228 :thumb
	ldrb    r0, [r0, #0x2]
	cmp     r0, #0x0
	bne     branch_2254232
	mov     r0, #0x1
	bx      lr
@ 0x2254232

.thumb
branch_2254232: @ 2254232 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2254236


.align 2, 0


.thumb
Function_2254238: @ 2254238 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_2253ce0
	str     r5, [r0, #0x3c]
	str     r4, [r0, #0x40]
	mov     r1, #0x0
	str     r1, [r0, #0x44]
	pop     {r3-r5,pc}
@ 0x225424c

.thumb
Function_225424c: @ 225424c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x2]
	cmp     r0, #0x1
	beq     branch_225425a
	bl      ErrorHandling
.thumb
branch_225425a: @ 225425a :thumb
	mov     r0, #0x2
	strb    r0, [r4, #0x2]
	pop     {r4,pc}
@ 0x2254260

.thumb
Function_2254260: @ 2254260 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x2]
	cmp     r0, #0x3
	beq     branch_225426e
	bl      ErrorHandling
.thumb
branch_225426e: @ 225426e :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x2]
	pop     {r4,pc}
@ 0x2254274

.thumb
Function_2254274: @ 2254274 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_2253ce0
	str     r5, [r0, #0x44]
	str     r4, [r0, #0x48]
	pop     {r3-r5,pc}
@ 0x2254284


.thumb
Function_2254284: @ 2254284 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	mov     r0, #0x7
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x30] @ 0x22542c0, (=Unknown_2255e60)
	ldr     r2, [pc, #0x30] @ 0x22542c4, (=0x22542e5)
	mov     r1, #0x3
	mov     r3, r4
	bl      Function_2255acc
	str     r0, [r4, #0x28]
	cmp     r0, #0x0
	beq     branch_22542b8
	mov     r1, #0x0
	mov     r2, r1
	mov     r3, #0x7
	bl      Function_2255c48
	mov     r0, #0x0
	mvn     r0, r0
	str     r0, [r4, #0x2c]
	str     r0, [r4, #0x30]
	add     sp, #0x4
	mov     r0, #0x1
	pop     {r3,r4,pc}
@ 0x22542b8

.thumb
branch_22542b8: @ 22542b8 :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x22542be

.align 2
.word Unknown_2255e60 @ 0x22542c0
.word 0x22542e5 @ 0x22542c4



.thumb
Function_22542c8: @ 22542c8 :thumb
	ldr     r3, [pc, #0x4] @ 0x22542d0, (=0x2255b35)
	ldr     r0, [r0, #0x28]
	bx      r3
@ 0x22542ce

.align 2
.word 0x2255b35 @ 0x22542d0



.thumb
Function_22542d4: @ 22542d4 :thumb
	ldr     r3, [pc, #0x8] @ 0x22542e0, (=0x2255b51)
	mov     r1, #0x0
	str     r1, [r0, #0x8]
	ldr     r0, [r0, #0x28]
	bx      r3
@ 0x22542de


.align 2


.word 0x2255b51 @ 0x22542e0
.thumb
Function_22542e4: @ 22542e4 :thumb
	push    {r3-r7,lr}
	mov     r5, r3
	mov     r7, r0
	mov     r0, r5
	mov     r6, r1
	str     r2, [sp, #0x0]
	bl      Function_225450c
	cmp     r0, #0x0
	bne     branch_225430e
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x0
	beq     branch_2254308
	cmp     r0, #0x1
	bne     branch_2254312
	mov     r0, #0x1
	strb    r0, [r5, #0x3]
	b       branch_2254312
@ 0x2254308

.thumb
branch_2254308: @ 2254308 :thumb
	mov     r0, #0x0
	strb    r0, [r5, #0x3]
	b       branch_2254312
@ 0x225430e

.thumb
branch_225430e: @ 225430e :thumb
	mov     r0, #0x0
	strb    r0, [r5, #0x3]
.thumb
branch_2254312: @ 2254312 :thumb
	cmp     r7, #0x2
	bne     branch_225432e
	mov     r0, r5
	bl      Function_225450c
	cmp     r0, #0x0
	beq     branch_22543e6
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x1
	bne     branch_22543e6
	ldr     r0, [pc, #0xc0] @ 0x22543e8, (=0x66e)
	bl      Function_2005748
	pop     {r3-r7,pc}
@ 0x225432e

.thumb
branch_225432e: @ 225432e :thumb
	ldr     r0, [sp, #0x0]
	mov     r4, #0x0
	mvn     r4, r4
	cmp     r0, #0x0
	beq     branch_225433e
	cmp     r0, #0x1
	beq     branch_225434a
	b       branch_2254372
@ 0x225433e

.thumb
branch_225433e: @ 225433e :thumb
	cmp     r7, #0x0
	bne     branch_2254346
	mov     r4, #0x8
	b       branch_2254372
@ 0x2254346

.thumb
branch_2254346: @ 2254346 :thumb
	mov     r4, #0xb
	b       branch_2254372
@ 0x225434a

.thumb
branch_225434a: @ 225434a :thumb
	mov     r0, r5
	bl      Function_225450c
	cmp     r0, #0x0
	bne     branch_225435a
	ldrb    r0, [r5, #0x6]
	cmp     r0, #0x0
	beq     branch_2254368
.thumb
branch_225435a: @ 225435a :thumb
	cmp     r7, #0x0
	bne     branch_2254362
	mov     r4, #0x6
	b       branch_2254364
@ 0x2254362

.thumb
branch_2254362: @ 2254362 :thumb
	mov     r4, #0x9
.thumb
branch_2254364: @ 2254364 :thumb
	mov     r6, #0x0
	b       branch_2254372
@ 0x2254368

.thumb
branch_2254368: @ 2254368 :thumb
	cmp     r7, #0x0
	bne     branch_2254370
	mov     r4, #0x7
	b       branch_2254372
@ 0x2254370

.thumb
branch_2254370: @ 2254370 :thumb
	mov     r4, #0xa
.thumb
branch_2254372: @ 2254372 :thumb
	mov     r0, #0x0
	ldr     r1, [r5, #0x2c]
	mvn     r0, r0
	cmp     r1, r0
	beq     branch_2254382
	mov     r0, r4
	mov     r4, r1
	str     r0, [r5, #0x2c]
.thumb
branch_2254382: @ 2254382 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r4, r0
	beq     branch_22543a8
	ldr     r0, [r5, #0x1c]
	mov     r1, r4
	bl      Function_22543ec
	cmp     r0, #0x0
	beq     branch_22543a8
	cmp     r4, #0x6
	beq     branch_22543a6
	cmp     r4, #0x7
	beq     branch_22543a6
	mov     r0, r4
	sub     r0, #0x9
	cmp     r0, #0x1
	bhi     branch_22543a8
.thumb
branch_22543a6: @ 22543a6 :thumb
	str     r4, [r5, #0x30]
.thumb
branch_22543a8: @ 22543a8 :thumb
	cmp     r6, #0x2
	beq     branch_22543cc
	cmp     r6, #0x3
	beq     branch_22543be
	cmp     r6, #0x5
	bne     branch_22543d8
	ldr     r0, [r5, #0x28]
	mov     r1, #0x0
	bl      Function_2255c68
	b       branch_22543d8
@ 0x22543be

.thumb
branch_22543be: @ 22543be :thumb
	ldr     r0, [r5, #0x30]
	cmp     r0, #0x6
	beq     branch_22543c8
	cmp     r0, #0x9
	bne     branch_22543d8
.thumb
branch_22543c8: @ 22543c8 :thumb
	mov     r6, #0x0
	b       branch_22543d8
@ 0x22543cc

.thumb
branch_22543cc: @ 22543cc :thumb
	ldr     r0, [r5, #0x30]
	cmp     r0, #0x7
	beq     branch_22543d6
	cmp     r0, #0xa
	bne     branch_22543d8
.thumb
branch_22543d6: @ 22543d6 :thumb
	mov     r6, #0x3
.thumb
branch_22543d8: @ 22543d8 :thumb
	str     r6, [r5, #0x8]
	cmp     r7, #0x0
	bne     branch_22543e2
	mov     r0, #0x0
	b       branch_22543e4
@ 0x22543e2

.thumb
branch_22543e2: @ 22543e2 :thumb
	mov     r0, #0x1
.thumb
branch_22543e4: @ 22543e4 :thumb
	str     r0, [r5, #0x60]
.thumb
branch_22543e6: @ 22543e6 :thumb
	pop     {r3-r7,pc}
@ 0x22543e8

.word 0x66e @ 0x22543e8
.thumb
Function_22543ec: @ 22543ec :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r4, #0x0
.thumb
branch_22543f4: @ 22543f4 :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_22547f4
	cmp     r0, #0x0
	bne     branch_2254404
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2254404

.thumb
branch_2254404: @ 2254404 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x6
	bcc     branch_22543f4
	mov     r0, r5
	mov     r1, r6
	bl      Function_22547d0
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2254416


.align 2, 0


.thumb
Function_2254418: @ 2254418 :thumb
	push    {r3,lr}
	bl      Function_2253ce0
	ldr     r0, [r0, #0x1c]
	pop     {r3,pc}
@ 0x2254422


.align 2, 0


.thumb
Function_2254424: @ 2254424 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2253ce0
	ldrb    r1, [r0, #0x5]
	cmp     r1, #0x0
	bne     branch_2254442
	bl      Function_225450c
	cmp     r0, #0x0
	bne     branch_2254442
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	bl      Function_2005748
.thumb
branch_2254442: @ 2254442 :thumb
	pop     {r4,pc}
@ 0x2254444

.thumb
Function_2254444: @ 2254444 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_2253ce0
	ldrb    r1, [r0, #0x5]
	cmp     r1, #0x0
	bne     branch_2254468
	bl      Function_225450c
	cmp     r0, #0x0
	bne     branch_2254468
	lsl     r0, r5, #16
	lsl     r1, r4, #24
	lsr     r0, r0, #16
	lsr     r1, r1, #24
	bl      Function_2005844
.thumb
branch_2254468: @ 2254468 :thumb
	pop     {r3-r5,pc}
@ 0x225446a


.align 2, 0


.thumb
Function_225446c: @ 225446c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_2253ce0
	ldrb    r1, [r0, #0x5]
	cmp     r1, #0x0
	bne     branch_22544b8
	bl      Function_225450c
	cmp     r0, #0x0
	bne     branch_22544b8
	mov     r0, r5
	mov     r1, r4
	bl      Function_20227a4
	cmp     r0, #0x0
	beq     branch_22544b8
	ldr     r0, [r5, #0x0]
	sub     r0, #0x10
	cmp     r0, #0xbf
	bcs     branch_225449c
	mov     r1, #0x1
	b       branch_225449e
@ 0x225449c

.thumb
branch_225449c: @ 225449c :thumb
	mov     r1, #0x0
.thumb
branch_225449e: @ 225449e :thumb
	ldr     r0, [r4, #0x0]
	sub     r0, #0x10
	cmp     r0, #0x9f
	bcs     branch_22544aa
	mov     r0, #0x1
	b       branch_22544ac
@ 0x22544aa

.thumb
branch_22544aa: @ 22544aa :thumb
	mov     r0, #0x0
.thumb
branch_22544ac: @ 22544ac :thumb
	tst     r0, r1
	beq     branch_22544b4
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x22544b4

.thumb
branch_22544b4: @ 22544b4 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22544b8

.thumb
branch_22544b8: @ 22544b8 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22544bc

.thumb
Function_22544bc: @ 22544bc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_2253ce0
	ldrb    r1, [r0, #0x5]
	cmp     r1, #0x0
	bne     branch_2254508
	bl      Function_225450c
	cmp     r0, #0x0
	bne     branch_2254508
	mov     r0, r5
	mov     r1, r4
	bl      Function_20227c0
	cmp     r0, #0x0
	beq     branch_2254508
	ldr     r0, [r5, #0x0]
	sub     r0, #0x10
	cmp     r0, #0xbf
	bcs     branch_22544ec
	mov     r1, #0x1
	b       branch_22544ee
@ 0x22544ec

.thumb
branch_22544ec: @ 22544ec :thumb
	mov     r1, #0x0
.thumb
branch_22544ee: @ 22544ee :thumb
	ldr     r0, [r4, #0x0]
	sub     r0, #0x10
	cmp     r0, #0x9f
	bcs     branch_22544fa
	mov     r0, #0x1
	b       branch_22544fc
@ 0x22544fa

.thumb
branch_22544fa: @ 22544fa :thumb
	mov     r0, #0x0
.thumb
branch_22544fc: @ 22544fc :thumb
	tst     r0, r1
	beq     branch_2254504
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2254504

.thumb
branch_2254504: @ 2254504 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2254508

.thumb
branch_2254508: @ 2254508 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x225450c

.thumb
Function_225450c: @ 225450c :thumb
	ldr     r3, [pc, #0x4] @ 0x2254514, (=0x20509a5)
	ldr     r0, [r0, #0x5c]
	bx      r3
@ 0x2254512


.align 2


.word 0x20509a5 @ 0x2254514
.thumb
Function_2254518: @ 2254518 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_225450c
	cmp     r0, #0x0
	bne     branch_2254532
	ldrb    r0, [r5, #0x5]
	cmp     r0, #0x0
	bne     branch_2254532
	mov     r0, r4
	bl      Function_2255b50
.thumb
branch_2254532: @ 2254532 :thumb
	pop     {r3-r5,pc}
@ 0x2254534

.thumb
Function_2254534: @ 2254534 :thumb
	ldrb    r0, [r0, #0x4]
	bx      lr
@ 0x2254538

.thumb
Function_2254538: @ 2254538 :thumb
	ldrb    r0, [r0, #0x7]
	bx      lr
@ 0x225453c

.thumb
Function_225453c: @ 225453c :thumb
	ldr     r0, [r0, #0x5c]
	bx      lr
@ 0x2254540

.thumb
Function_2254540: @ 2254540 :thumb
	ldr     r0, [r0, #0x58]
	bx      lr
@ 0x2254544

.thumb
Function_2254544: @ 2254544 :thumb
	ldr     r0, [r0, #0x54]
	bx      lr
@ 0x2254548

.thumb
Function_2254548: @ 2254548 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x54]
	bl      LoadTrainerDataAdress
	bl      GetGender
	cmp     r0, #0x1
	beq     branch_225455c
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x225455c

.thumb
branch_225455c: @ 225455c :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2254560

.thumb
Function_2254560: @ 2254560 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r1, #0x42
	mov     r5, r0
	mov     r0, #0x7
	lsl     r1, r1, #4
	mov     r7, r2
	str     r3, [sp, #0x0]
	bl      malloc
	str     r0, [r5, #0x0]
	mov     r4, r0
	beq     branch_225464c
	mov     r0, #0x72
	lsl     r0, r0, #2
	str     r7, [r4, r0]
	ldr     r0, [r4, r0]
	blx     Function_20a7ffc
	mov     r0, #0x72
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x7
	bl      Function_2255540
	mov     r1, #0x73
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	cmp     r0, #0x0
	bne     branch_22545aa
	ldr     r0, [r5, #0x0]
	bl      free
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	pop     {r3-r7,pc}
@ 0x22545aa

.thumb
branch_22545aa: @ 22545aa :thumb
	mov     r0, #0x7
	str     r6, [r4, #0x0]
	bl      Function_2018340
	mov     r1, #0x7e
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [sp, #0x0]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r0, [r4, r1]
	mov     r0, r4
	bl      Function_2254684
	mov     r1, #0x75
	lsl     r1, r1, #2
	add     r0, r4, r1
	sub     r1, #0x8
	ldr     r1, [r4, r1]
	bl      Function_2254dd8
	ldr     r0, [r5, #0x0]
	mov     r1, #0x8
	.hword  0x1d00 @ add r0, r0, #0x4
	bl      Function_2255090
	ldr     r0, [r5, #0x0]
	mov     r1, #0x48
	add     r0, #0x2c
	mov     r2, #0x4
	mov     r3, #0x6
	bl      Function_2254798
	ldr     r0, [r5, #0x0]
	mov     r1, #0x4c
	add     r0, #0x6c
	mov     r2, #0x4
	mov     r3, #0x6
	bl      Function_2254798
	ldr     r0, [r5, #0x0]
	mov     r1, #0x50
	add     r0, #0xac
	mov     r2, #0x4
	mov     r3, #0x6
	bl      Function_2254798
	ldr     r0, [r5, #0x0]
	mov     r1, #0x54
	add     r0, #0xec
	mov     r2, #0x2
	mov     r3, #0x4
	bl      Function_2254798
	mov     r0, #0x4b
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	mov     r1, #0x58
	mov     r2, #0x2
	mov     r3, #0x4
	bl      Function_2254798
	mov     r0, #0x5b
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	mov     r1, #0x5c
	mov     r2, #0x2
	mov     r3, #0x4
	bl      Function_2254798
	ldr     r0, [pc, #0x14] @ 0x2254650, (=0x2254655)
	mov     r1, r4
	mov     r2, #0x0
	bl      AddTaskToTaskList3
	mov     r1, #0x1d
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x225464c

.thumb
branch_225464c: @ 225464c :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2254650

.word Function_2254654+1 @ =0x2254655, 0x2254650
.thumb
Function_2254654: @ 2254654 :thumb
	mov     r0, #0x73
	lsl     r0, r0, #2
	ldr     r3, [pc, #0x4] @ 0x2254660, (=0x2255615)
	ldr     r0, [r1, r0]
	bx      r3
@ 0x225465e


.align 2


.word 0x2255615 @ 0x2254660
.thumb
Function_2254664: @ 2254664 :thumb
	push    {r3,lr}
	bl      Function_2254418
	mov     r1, #0x73
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	pop     {r3,pc}
@ 0x2254672


.align 2, 0


.thumb
Function_2254674: @ 2254674 :thumb
	push    {r3,lr}
	bl      Function_2254418
	mov     r1, #0x7e
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	pop     {r3,pc}
@ 0x2254682


.align 2, 0


.thumb
Function_2254684: @ 2254684 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0xc
	mov     r1, #0x0
	add     r2, sp, #0x0
	mov     r3, #0x7
	bl      Function_2006f88
	mov     r4, r0
	beq     branch_22546b6
	ldr     r0, [sp, #0x0]
	mov     r2, #0x2
	lsl     r2, r2, #8
	ldr     r0, [r0, #0xc]
	add     r1, r5, r2
	blx     MI_CpuCopy32
	mov     r1, #0x2
	lsl     r1, r1, #8
	add     r0, r5, r1
	blx     DC_FlushRange
	mov     r0, r4
	bl      free
.thumb
branch_22546b6: @ 22546b6 :thumb
	pop     {r3-r5,pc}
@ 0x22546b8

.thumb
Function_22546b8: @ 22546b8 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r7, r1
	bl      Function_2254418
	mov     r4, r0
	mov     r0, #0x7f
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2254540
	bl      Function_2056888
	mov     r1, #0x2
	lsl     r1, r1, #8
	add     r5, r4, r1
	lsl     r4, r0, #6
	add     r0, r5, r4
	lsl     r1, r6, #5
	mov     r2, #0x20
	blx     GXS_LoadBGPltt
	add     r0, r5, r4
	mov     r1, r7
	mov     r2, #0x20
	blx     GXS_LoadOBJPltt
	pop     {r3-r7,pc}
@ 0x22546f0

.thumb
Function_22546f0: @ 22546f0 :thumb
	push    {r3-r5,lr}
	bl      Function_2254418
	mov     r4, r0
	mov     r0, #0x7f
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2254540
	bl      Function_2056888
	mov     r1, #0x2
	lsl     r0, r0, #5
	lsl     r1, r1, #8
	add     r0, #0x10
	add     r4, r4, r1
	lsl     r5, r0, #1
	add     r0, r4, r5
	mov     r1, #0x0
	mov     r2, #0x20
	blx     GXS_LoadBGPltt
	add     r0, r4, r5
	mov     r1, #0x0
	mov     r2, #0x20
	blx     GXS_LoadOBJPltt
	pop     {r3-r5,pc}
@ 0x2254728

.thumb
Function_2254728: @ 2254728 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_2254418
	mov     r4, r0
	mov     r0, #0x7f
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2254540
	bl      Function_2056888
	mov     r1, #0x2
	lsl     r1, r1, #8
	add     r1, r4, r1
	lsl     r0, r0, #6
	add     r0, r1, r0
	mov     r1, r5
	mov     r2, #0x20
	blx     MIi_CpuCopy16
	pop     {r3-r5,pc}
@ 0x2254754

.thumb
Function_2254754: @ 2254754 :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_2254794
	mov     r0, #0x75
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_2254f40
	mov     r0, #0x73
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_2254772
	bl      Function_22555e8
.thumb
branch_2254772: @ 2254772 :thumb
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_2254780
	bl      free
.thumb
branch_2254780: @ 2254780 :thumb
	mov     r0, #0x1d
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_225478e
	bl      Call_RemoveTaskFromTaskList
.thumb
branch_225478e: @ 225478e :thumb
	mov     r0, r4
	bl      free
branch_2254794: @ 2254794 :thumb
	pop     {r4,pc}
@ 0x2254796


.align 2, 0
.thumb
Function_2254798: @ 2254798 :thumb
	push    {r3-r7,lr}
	mov     r4, #0xf
	mov     r6, #0x0
	mov     r12, r2
	mov     lr, r1
	mov     r7, r3
	mov     r2, r6
	lsl     r4, r4, #12
branch_22547a8: @ 22547a8 :thumb
	mov     r3, lr
	mov     r1, #0x0
	add     r3, r3, r6
branch_22547ae: @ 22547ae :thumb
	add     r5, r1, r3
	orr     r5, r4
	strh    r5, [r0, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1c80 @ add r0, r0, #0x2
	cmp     r1, #0x4
	blt     branch_22547ae

	mov     r1, r12
	cmp     r2, r1
	blt     branch_22547c6

	cmp     r2, r7
	blt     branch_22547c8

branch_22547c6: @ 22547c6 :thumb
	add     r6, #0x20
branch_22547c8: @ 22547c8 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	cmp     r2, #0x8
	blt     branch_22547a8
	pop     {r3-r7,pc}
@ 0x22547d0


.thumb
Function_22547d0: @ 22547d0 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r2, r0
	add     r0, r2, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x7
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0xc] @ 0x22547f0, (=0x2255f8c)
	ldr     r3, [r2, #0x0]
	bl      Function_225517c
	add     sp, #0xc
	pop     {pc}
@ 0x22547ee

.align 2
.word 0x2255f8c @ 0x22547f0



.thumb
Function_22547f4: @ 22547f4 :thumb
	ldr     r3, [pc, #0x4] @ 0x22547fc, (=0x2255131)
	.hword  0x1d00 @ add r0, r0, #0x4
	bx      r3
@ 0x22547fa

.align 2
.word Function_2255130+1 @ =0x2255131, 0x22547fc



.thumb
Function_2254800: @ 2254800 :thumb
	ldr     r3, [pc, #0x4] @ 0x2254808, (=0x2255155)
	.hword  0x1d00 @ add r0, r0, #0x4
	bx      r3
@ 0x2254806

.align 2
.word Function_2255154+1 @ =0x2255155, 0x2254808



.thumb
Function_225480c: @ 225480c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_225523c
	.hword  0x1d00 @ add r0, r0, #0x4
	mov     r1, r4
	bl      Function_2255224
	pop     {r4,pc}
@ 0x225481e


.align 2, 0
.thumb
Function_2254820: @ 2254820 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r1
	mov     r0, r5
	bl      Function_225523c
	mov     r4, r0
	mov     r0, #0x0
	blx     GXS_SetGraphicsMode
	mov     r0, #0x80
	blx     GX_SetBankForSubBG
	mov     r0, #0x1
	lsl     r0, r0, #8
	blx     GX_SetBankForSubOBJ
	ldr     r2, [pc, #0xe8] @ 0x225492c, (=0x4001000)
	ldr     r0, [pc, #0xe8] @ 0x2254930, (=0xffcfffef)
	ldr     r1, [r2, #0x0]
	and     r1, r0
	mov     r0, #0x10
	orr     r0, r1
	str     r0, [r2, #0x0]
	bl      Function_201ff68
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff74
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	ldr     r2, [pc, #0xd0] @ 0x2254934, (=0x2255f54)
	mov     r1, #0x4
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	ldr     r2, [pc, #0xc4] @ 0x2254938, (=0x2255f70)
	mov     r1, #0x5
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x40
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x7
	mov     r2, #0x7e
	str     r0, [sp, #0xc]
	lsl     r2, r2, #2
	ldr     r2, [r4, r2]
	mov     r0, #0xc
	mov     r1, #0xe
	mov     r3, #0x4
	bl      Function_2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x7
	mov     r2, #0x7e
	str     r0, [sp, #0xc]
	lsl     r2, r2, #2
	ldr     r2, [r4, r2]
	mov     r0, #0xc
	mov     r1, #0xf
	mov     r3, #0x4
	bl      Function_2006e60
	mov     r0, #0x7f
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2254548
	mov     r3, r0
	mov     r0, #0x1e
	lsl     r0, r0, #4
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x7
	str     r0, [sp, #0x8]
	mov     r0, #0xc
	mov     r1, #0xd
	mov     r2, #0x4
	lsl     r3, r3, #5
	bl      Function_2006e9c
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x18
	str     r0, [sp, #0x8]
	mov     r0, #0xf
	str     r0, [sp, #0xc]
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x5
	mov     r2, #0xe4
	bl      Function_2019cb8
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x5
	bl      Function_2019448
	ldr     r0, [pc, #0x20] @ 0x225492c, (=0x4001000)
	ldr     r1, [pc, #0x2c] @ 0x225493c, (=0xffffe0ff)
	ldr     r2, [r0, #0x0]
	and     r2, r1
	mov     r1, #0x13
	lsl     r1, r1, #8
	orr     r1, r2
	str     r1, [r0, #0x0]
	ldr     r2, [r0, #0x0]
	ldr     r1, [pc, #0x20] @ 0x2254940, (=0xffff1fff)
	and     r1, r2
	str     r1, [r0, #0x0]
	mov     r0, r5
	bl      Function_225480c
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x225492c

.word 0x4001000 @ 0x225492c
.word 0xffcfffef @ 0x2254930
.word 0x2255f54 @ 0x2254934
.word 0x2255f70 @ 0x2254938
.word 0xffffe0ff @ 0x225493c
.word 0xffff1fff @ 0x2254940
.thumb
Function_2254944: @ 2254944 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	str     r1, [sp, #0x10]
	mov     r0, r1
	bl      Function_2255244
	mov     r4, r0
	ldr     r0, [sp, #0x10]
	bl      Function_225523c
	mov     r5, r0
	ldr     r0, [sp, #0x10]
	bl      Function_2255248
	cmp     r0, #0x0
	beq     branch_2254970
	cmp     r0, #0x1
	beq     branch_225497c
	cmp     r0, #0x2
	beq     branch_2254a50
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2254970

.thumb
branch_2254970: @ 2254970 :thumb
	mov     r0, #0x0
	strh    r0, [r4, #0x0]
	strh    r0, [r4, #0x2]
	ldr     r0, [sp, #0x10]
	bl      Function_225524c
.thumb
branch_225497c: @ 225497c :thumb
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_2254a56
	mov     r0, #0x0
	strh    r0, [r4, #0x0]
	ldrh    r0, [r4, #0x2]
	add     r0, #0xc
	strh    r0, [r4, #0x2]
	ldrh    r0, [r4, #0x2]
	cmp     r0, #0x28
	bls     branch_225499c
	mov     r0, #0x28
	strh    r0, [r4, #0x2]
.thumb
branch_225499c: @ 225499c :thumb
	ldrh    r1, [r4, #0x2]
	lsr     r3, r1, #31
	lsl     r2, r1, #30
	lsr     r0, r1, #2
	sub     r2, r2, r3
	mov     r1, #0x1e
	ror     r2, r1
	mov     r1, #0xc
	sub     r6, r1, r0
	lsl     r0, r0, #1
	str     r0, [sp, #0x14]
	lsl     r0, r6, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x18
	str     r0, [sp, #0x4]
	add     r7, r3, r2
	ldr     r0, [sp, #0x14]
	mov     r1, #0x5
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	mov     r0, #0xf
	str     r0, [sp, #0xc]
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r2, #0x40
	mov     r3, #0x2
	bl      Function_2019cb8
	cmp     r7, #0x0
	beq     branch_2254a34
	.hword  0x1e70 @ sub r0, r6, #0x1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x18
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0xf
	str     r0, [sp, #0xc]
	mov     r0, #0x7e
	mov     r2, r7
	lsl     r0, r0, #2
	add     r2, #0xe4
	lsl     r2, r2, #16
	ldr     r0, [r5, r0]
	mov     r1, #0x5
	lsr     r2, r2, #16
	mov     r3, #0x2
	bl      Function_2019cb8
	ldr     r0, [sp, #0x14]
	mov     r2, #0xe4
	add     r0, r6, r0
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x18
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0xf
	str     r0, [sp, #0xc]
	mov     r0, #0x7e
	lsl     r0, r0, #2
	sub     r2, r2, r7
	lsl     r2, r2, #16
	ldr     r0, [r5, r0]
	mov     r1, #0x5
	lsr     r2, r2, #16
	mov     r3, #0x2
	bl      Function_2019cb8
.thumb
branch_2254a34: @ 2254a34 :thumb
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x5
	bl      Function_2019448
	ldrh    r0, [r4, #0x2]
	cmp     r0, #0x28
	bne     branch_2254a56
	ldr     r0, [sp, #0x10]
	bl      Function_225524c
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2254a50

.thumb
branch_2254a50: @ 2254a50 :thumb
	ldr     r0, [sp, #0x10]
	bl      Function_225480c
.thumb
branch_2254a56: @ 2254a56 :thumb
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2254a5a


.align 2, 0


.thumb
Function_2254a5c: @ 2254a5c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	str     r1, [sp, #0x10]
	mov     r0, r1
	bl      Function_2255244
	mov     r4, r0
	ldr     r0, [sp, #0x10]
	bl      Function_225523c
	mov     r5, r0
	ldr     r0, [sp, #0x10]
	bl      Function_2255248
	cmp     r0, #0x0
	beq     branch_2254a88
	cmp     r0, #0x1
	beq     branch_2254a94
	cmp     r0, #0x2
	beq     branch_2254b82
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2254a88

.thumb
branch_2254a88: @ 2254a88 :thumb
	mov     r0, #0x0
	strh    r0, [r4, #0x0]
	strh    r0, [r4, #0x2]
	ldr     r0, [sp, #0x10]
	bl      Function_225524c
.thumb
branch_2254a94: @ 2254a94 :thumb
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_2254b88
	mov     r0, #0x0
	strh    r0, [r4, #0x0]
	ldrh    r0, [r4, #0x2]
	add     r0, #0x8
	strh    r0, [r4, #0x2]
	ldrh    r0, [r4, #0x2]
	cmp     r0, #0x28
	bls     branch_2254ab4
	mov     r0, #0x28
	strh    r0, [r4, #0x2]
.thumb
branch_2254ab4: @ 2254ab4 :thumb
	ldrh    r0, [r4, #0x2]
	mov     r3, #0x2
	lsr     r2, r0, #31
	lsl     r1, r0, #30
	lsr     r7, r0, #2
	sub     r1, r1, r2
	mov     r0, #0x1e
	ror     r1, r0
	mov     r0, #0x16
	sub     r0, r0, r7
	str     r0, [sp, #0x14]
	str     r3, [sp, #0x0]
	mov     r0, #0x18
	add     r6, r2, r1
	str     r0, [sp, #0x4]
	lsl     r0, r7, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	mov     r0, #0xf
	str     r0, [sp, #0xc]
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x5
	mov     r2, #0xe4
	bl      Function_2019cb8
	ldr     r0, [sp, #0x14]
	mov     r1, #0x5
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x18
	str     r0, [sp, #0x4]
	lsl     r0, r7, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	mov     r0, #0xf
	str     r0, [sp, #0xc]
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r2, #0xe4
	mov     r3, #0x2
	bl      Function_2019cb8
	cmp     r6, #0x0
	beq     branch_2254b66
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x18
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0xf
	str     r0, [sp, #0xc]
	mov     r0, #0x7e
	lsl     r0, r0, #2
	.hword  0x1e73 @ sub r3, r6, #0x1
	mov     r2, #0xe7
	sub     r2, r2, r3
	lsl     r2, r2, #16
	ldr     r0, [r5, r0]
	mov     r1, #0x5
	lsr     r2, r2, #16
	mov     r3, #0x2
	bl      Function_2019cb8
	ldr     r0, [sp, #0x14]
	add     r6, #0xe0
	.hword  0x1e40 @ sub r0, r0, #0x1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x18
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0xf
	str     r0, [sp, #0xc]
	mov     r0, #0x7e
	lsl     r0, r0, #2
	lsl     r2, r6, #16
	ldr     r0, [r5, r0]
	mov     r1, #0x5
	lsr     r2, r2, #16
	mov     r3, #0x2
	bl      Function_2019cb8
.thumb
branch_2254b66: @ 2254b66 :thumb
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x5
	bl      Function_2019448
	ldrh    r0, [r4, #0x2]
	cmp     r0, #0x28
	bne     branch_2254b88
	ldr     r0, [sp, #0x10]
	bl      Function_225524c
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2254b82

.thumb
branch_2254b82: @ 2254b82 :thumb
	ldr     r0, [sp, #0x10]
	bl      Function_225480c
.thumb
branch_2254b88: @ 2254b88 :thumb
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2254b8c

.thumb
Function_2254b8c: @ 2254b8c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r1
	mov     r0, r5
	bl      Function_2255244
	mov     r0, r5
	bl      Function_225523c
	mov     r4, r0
	mov     r0, r5
	bl      Function_2255248
	mov     r2, r0
	cmp     r2, #0x4
	bcs     branch_2254be6
	mov     r3, #0x2
	str     r3, [sp, #0x0]
	mov     r0, #0x18
	str     r0, [sp, #0x4]
	mov     r0, #0x14
	str     r0, [sp, #0x8]
	mov     r0, #0xf
	str     r0, [sp, #0xc]
	mov     r0, #0x7e
	mov     r6, #0xe3
	lsl     r0, r0, #2
	sub     r2, r6, r2
	lsl     r2, r2, #16
	ldr     r0, [r4, r0]
	mov     r1, #0x5
	lsr     r2, r2, #16
	bl      Function_2019cb8
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x5
	bl      Function_2019448
	mov     r0, r5
	bl      Function_225524c
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x2254be6

.thumb
branch_2254be6: @ 2254be6 :thumb
	mov     r0, r5
	bl      Function_225480c
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x2254bf0

.thumb
Function_2254bf0: @ 2254bf0 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r1
	mov     r0, r5
	bl      Function_2255244
	mov     r0, r5
	bl      Function_225523c
	mov     r4, r0
	mov     r0, r5
	bl      Function_2255248
	mov     r2, r0
	cmp     r2, #0x4
	bcs     branch_2254c4a
	mov     r3, #0x2
	str     r3, [sp, #0x0]
	mov     r0, #0x18
	str     r0, [sp, #0x4]
	mov     r0, #0x14
	str     r0, [sp, #0x8]
	mov     r0, #0xf
	str     r0, [sp, #0xc]
	mov     r0, #0x7e
	mov     r6, #0xe7
	lsl     r0, r0, #2
	sub     r2, r6, r2
	lsl     r2, r2, #16
	ldr     r0, [r4, r0]
	mov     r1, #0x5
	lsr     r2, r2, #16
	bl      Function_2019cb8
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x5
	bl      Function_2019448
	mov     r0, r5
	bl      Function_225524c
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x2254c4a

.thumb
branch_2254c4a: @ 2254c4a :thumb
	mov     r0, r5
	bl      Function_225480c
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x2254c54

.thumb
Function_2254c54: @ 2254c54 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r6, r0
	mov     r7, r1
	mov     r5, r2
	bl      Function_225523c
	mov     r4, r0
	cmp     r5, #0x0
	bne     branch_2254c6e
	mov     r3, #0x1c
	mov     r0, #0x4
	b       branch_2254c72
@ 0x2254c6e

.thumb
branch_2254c6e: @ 2254c6e :thumb
	mov     r3, #0x1c
	mov     r0, #0xc
.thumb
branch_2254c72: @ 2254c72 :thumb
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r1, #0x4
	str     r1, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	mov     r0, #0x7e
	lsl     r0, r0, #2
	lsl     r3, r3, #24
	ldr     r0, [r4, r0]
	mov     r2, r7
	lsr     r3, r3, #24
	bl      Function_20198c0
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x4
	bl      Function_2019448
	mov     r0, r6
	bl      Function_225480c
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2254ca6


.align 2, 0


.thumb
Function_2254ca8: @ 2254ca8 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	bl      Function_225523c
	mov     r1, r0
	mov     r0, r4
	add     r1, #0x6c
	mov     r2, #0x0
	bl      Function_2254c54
	ldr     r0, [pc, #0x8] @ 0x2254cc8, (=0x671)
	bl      Function_2005748
	pop     {r4,pc}
@ 0x2254cc6


.align 2


.word 0x671 @ 0x2254cc8
.thumb
Function_2254ccc: @ 2254ccc :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	bl      Function_225523c
	mov     r1, #0x4b
	mov     r2, r0
	lsl     r1, r1, #2
	add     r1, r2, r1
	mov     r0, r4
	mov     r2, #0x1
	bl      Function_2254c54
	ldr     r0, [pc, #0x8] @ 0x2254cf0, (=0x671)
	bl      Function_2005748
	pop     {r4,pc}
@ 0x2254cee


.align 2


.word 0x671 @ 0x2254cf0
.thumb
Function_2254cf4: @ 2254cf4 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	bl      Function_225523c
	mov     r1, r0
	mov     r0, r4
	add     r1, #0x2c
	mov     r2, #0x0
	bl      Function_2254c54
	pop     {r4,pc}
@ 0x2254d0c

.thumb
Function_2254d0c: @ 2254d0c :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	bl      Function_225523c
	mov     r1, r0
	mov     r0, r4
	add     r1, #0xec
	mov     r2, #0x1
	bl      Function_2254c54
	pop     {r4,pc}
@ 0x2254d24

.thumb
Function_2254d24: @ 2254d24 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	bl      Function_225523c
	mov     r1, r0
	mov     r0, r4
	add     r1, #0xac
	mov     r2, #0x0
	bl      Function_2254c54
	ldr     r0, [pc, #0x8] @ 0x2254d44, (=0x66f)
	bl      Function_2005748
	pop     {r4,pc}
@ 0x2254d42


.align 2


.word 0x66f @ 0x2254d44
.thumb
Function_2254d48: @ 2254d48 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	bl      Function_225523c
	mov     r1, #0x5b
	mov     r2, r0
	lsl     r1, r1, #2
	add     r1, r2, r1
	mov     r0, r4
	mov     r2, #0x1
	bl      Function_2254c54
	ldr     r0, [pc, #0x8] @ 0x2254d6c, (=0x66f)
	bl      Function_2005748
	pop     {r4,pc}
@ 0x2254d6a


.align 2


.word 0x66f @ 0x2254d6c
.thumb
Function_2254d70: @ 2254d70 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      Function_225523c
	mov     r1, #0x75
	mov     r4, r0
	lsl     r1, r1, #2
	add     r1, r4, r1
	bl      Function_2254de0
	mov     r0, #0x75
	lsl     r0, r0, #2
	ldr     r1, [r4, #0x0]
	add     r0, r4, r0
	bl      Function_2254ee8
	mov     r0, r5
	bl      Function_225480c
	pop     {r3-r5,pc}
@ 0x2254d9a


.align 2, 0


.thumb
Function_2254d9c: @ 2254d9c :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	bl      Function_225523c
	mov     r1, r0
	mov     r0, #0x75
	lsl     r0, r0, #2
	add     r0, r1, r0
	ldr     r1, [r1, #0x0]
	bl      Function_2254ee8
	mov     r0, r4
	bl      Function_225480c
	pop     {r4,pc}
@ 0x2254dbc

.thumb
Function_2254dbc: @ 2254dbc :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	bl      Function_225523c
	mov     r1, #0x75
	lsl     r1, r1, #2
	add     r0, r0, r1
	bl      Function_2254f40
	mov     r0, r4
	bl      Function_225480c
	pop     {r4,pc}
@ 0x2254dd8

.thumb
Function_2254dd8: @ 2254dd8 :thumb
	mov     r2, #0x0
	str     r2, [r0, #0x0]
	str     r1, [r0, #0x4]
	bx      lr
@ 0x2254de0

.thumb
Function_2254de0: @ 2254de0 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r4, r1
	mov     r0, #0x7
	str     r0, [sp, #0x0]
	mov     r0, r4
	add     r0, #0x8
	mov     r1, #0xc
	mov     r2, #0x3
	mov     r3, #0x4
	bl      Function_2255958
	cmp     r0, #0x0
	beq     branch_2254e7c
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r2, #0x1
	str     r2, [sp, #0x4]
	mov     r0, #0x7
	str     r0, [sp, #0x8]
	mov     r0, #0xc
	mov     r1, #0x2
	bl      Function_2006ec0
	mov     r0, #0x60
	str     r0, [sp, #0x0]
	mov     r0, #0x7
	mov     r1, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0xc
	mov     r2, #0x5
	mov     r3, r1
	bl      Function_2006e84
	mov     r0, r5
	mov     r1, #0xf
	bl      Function_2254e84
	mov     r2, r4
	ldr     r0, [r4, #0x4]
	ldr     r1, [pc, #0x4c] @ 0x2254e80, (=0x2255f44)
	add     r2, #0x8
	bl      Function_2255810
	str     r0, [r4, #0x1c]
	cmp     r0, #0x0
	beq     branch_2254e7c
	mov     r2, r4
	ldr     r0, [r4, #0x4]
	ldr     r1, [pc, #0x38] @ 0x2254e80, (=0x2255f44)
	add     r2, #0x8
	bl      Function_2255810
	str     r0, [r4, #0x20]
	cmp     r0, #0x0
	bne     branch_2254e5e
	ldr     r0, [r4, #0x4]
	ldr     r1, [r4, #0x1c]
	bl      Function_22558b0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2254e5e

.thumb
branch_2254e5e: @ 2254e5e :thumb
	mov     r1, #0x1
	lsl     r1, r1, #16
	mov     r2, #0x0
	bl      Function_22558f0
	ldr     r0, [r4, #0x1c]
	mov     r1, #0xf
	bl      Function_2255938
	ldr     r0, [r4, #0x20]
	mov     r1, #0xf
	bl      Function_2255938
	mov     r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_2254e7c: @ 2254e7c :thumb
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2254e80

.word 0x2255f44 @ 0x2254e80
.thumb
Function_2254e84: @ 2254e84 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x7f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r4, r1
	bl      Function_2254540
	bl      Function_2056888
	mov     r0, #0x1
	lsl     r0, r0, #10
	add     r0, r5, r0
	bl      Function_2254728
	ldr     r1, [pc, #0x40] @ 0x2254ee4, (=0x402)
	add     r0, r1, #0x6
	ldrh    r2, [r5, r1]
	ldrh    r0, [r5, r0]
	strh    r0, [r5, r1]
	add     r0, r1, #0x6
	strh    r2, [r5, r0]
	mov     r0, r1
	mov     r2, r1
	add     r0, #0xe
	add     r2, #0x1c
	ldrh    r3, [r5, r2]
	mov     r2, r1
	ldrh    r0, [r5, r0]
	add     r2, #0xe
	strh    r3, [r5, r2]
	mov     r2, r1
	add     r2, #0x1c
	strh    r0, [r5, r2]
	.hword  0x1e88 @ sub r0, r1, #0x2
	add     r0, r5, r0
	mov     r1, #0x20
	blx     DC_FlushRange
	mov     r0, #0x1
	lsl     r0, r0, #10
	add     r0, r5, r0
	lsl     r1, r4, #5
	mov     r2, #0x20
	blx     GXS_LoadOBJPltt
	pop     {r3-r5,pc}
@ 0x2254ee2


.align 2


.word 0x402 @ 0x2254ee4
.thumb
Function_2254ee8: @ 2254ee8 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_2254f32
	ldr     r0, [r1, #0x0]
	ldr     r2, [pc, #0x3c] @ 0x2254f34, (=0x4000280)
	mov     r3, #0x0
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r3, [r2, #0x0]
	str     r0, [r2, #0x10]
	mov     r0, r2
	mov     r1, #0xa
	add     r0, #0x18
	str     r1, [r0, #0x0]
	str     r3, [r0, #0x4]
	lsr     r0, r2, #11
.thumb
branch_2254f0a: @ 2254f0a :thumb
	ldrh    r1, [r2, #0x0]
	tst     r1, r0
	bne     branch_2254f0a
	ldr     r0, [pc, #0x24] @ 0x2254f38, (=0x40002a0)
	mov     r3, r0
	ldr     r1, [r0, #0x0]
	sub     r3, #0x20
	lsr     r0, r0, #11
.thumb
branch_2254f1a: @ 2254f1a :thumb
	ldrh    r2, [r3, #0x0]
	tst     r2, r0
	bne     branch_2254f1a
	ldr     r0, [pc, #0x18] @ 0x2254f3c, (=0x40002a8)
	ldr     r5, [r0, #0x0]
	ldr     r0, [r4, #0x1c]
	bl      Function_22558c4
	ldr     r0, [r4, #0x20]
	mov     r1, r5
	bl      Function_22558c4
.thumb
branch_2254f32: @ 2254f32 :thumb
	pop     {r3-r5,pc}
@ 0x2254f34

.word 0x4000280 @ 0x2254f34
.word 0x40002a0 @ 0x2254f38
.word 0x40002a8 @ 0x2254f3c
.thumb
Function_2254f40: @ 2254f40 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_2254f66
	ldr     r0, [r4, #0x4]
	ldr     r1, [r4, #0x1c]
	bl      Function_22558b0
	ldr     r0, [r4, #0x4]
	ldr     r1, [r4, #0x20]
	bl      Function_22558b0
	mov     r0, r4
	add     r0, #0x8
	bl      Function_22559b0
	mov     r0, #0x0
	str     r0, [r4, #0x0]
.thumb
branch_2254f66: @ 2254f66 :thumb
	pop     {r4,pc}
@ 0x2254f68

.thumb
Function_2254f68: @ 2254f68 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r6, r1
	mov     r0, r6
	bl      Function_225523c
	mov     r4, r0
	mov     r0, r6
	bl      Function_2255244
	mov     r0, r6
	bl      Function_2255248
	mov     r5, r0
	cmp     r5, #0x3
	bhi     branch_2254ffc
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2254f94

Jumppoints_2254f94:
.hword branch_2254f9c - Jumppoints_2254f94 - 2
.hword branch_2254fb8 - Jumppoints_2254f94 - 2
.hword branch_2254fb8 - Jumppoints_2254f94 - 2
.hword branch_2254fb8 - Jumppoints_2254f94 - 2
.thumb
branch_2254f9c: @ 2254f9c :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x5c] @ 0x2255000, (=0x4001050)
	mov     r1, #0x2
	mov     r2, #0x1c
	mov     r3, #0x1a
	blx     G2x_SetBlendAlpha_
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x4
	bl      Function_2019448
.thumb
branch_2254fb8: @ 2254fb8 :thumb
	mov     r3, #0x2
	str     r3, [sp, #0x0]
	mov     r0, #0x18
	str     r0, [sp, #0x4]
	mov     r0, #0x14
	str     r0, [sp, #0x8]
	mov     r0, #0xf
	str     r0, [sp, #0xc]
	mov     r0, #0x7e
	mov     r2, #0xe7
	lsl     r0, r0, #2
	sub     r2, r2, r5
	lsl     r2, r2, #16
	ldr     r0, [r4, r0]
	mov     r1, #0x5
	lsr     r2, r2, #16
	bl      Function_2019cb8
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x5
	bl      Function_2019448
	cmp     r5, #0x3
	bne     branch_2254ff6
	mov     r0, r6
	bl      Function_225480c
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x2254ff6

.thumb
branch_2254ff6: @ 2254ff6 :thumb
	mov     r0, r6
	bl      Function_225524c
.thumb
branch_2254ffc: @ 2254ffc :thumb
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x2255000

.word 0x4001050 @ 0x2255000
.thumb
Function_2255004: @ 2255004 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r1
	mov     r0, r5
	bl      Function_225523c
	mov     r3, #0x2
	mov     r4, r0
	str     r3, [sp, #0x0]
	mov     r0, #0x18
	str     r0, [sp, #0x4]
	mov     r0, #0x14
	str     r0, [sp, #0x8]
	mov     r0, #0xf
	str     r0, [sp, #0xc]
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x5
	mov     r2, #0x40
	bl      Function_2019cb8
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x4
	bl      Function_2019448
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x5
	bl      Function_2019448
	mov     r1, #0x0
	ldr     r0, [pc, #0x14] @ 0x2255060, (=0x4001050)
	mov     r2, r1
	mov     r3, #0x1f
	str     r1, [sp, #0x0]
	blx     G2x_SetBlendAlpha_
	mov     r0, r5
	bl      Function_225480c
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2255060

.word 0x4001050 @ 0x2255060
.thumb
Function_2255064: @ 2255064 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      Function_225523c
	mov     r4, r0
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x4
	bl      Function_2019044
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x5
	bl      Function_2019044
	mov     r0, r5
	bl      Function_225480c
	pop     {r3-r5,pc}
@ 0x2255090

.thumb
Function_2255090: @ 2255090 :thumb
	ldr     r2, [pc, #0x18] @ 0x22550ac, (=0x12345678)
	str     r1, [r0, #0x0]
	mov     r3, #0x0
	str     r2, [r0, #0x4]
	cmp     r1, #0x0
	bls     branch_22550a8
	.hword  0x1e5a @ sub r2, r3, #0x1
.thumb
branch_225509e: @ 225509e :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	str     r2, [r0, #0x8]
	.hword  0x1d00 @ add r0, r0, #0x4
	cmp     r3, r1
	bcc     branch_225509e
.thumb
branch_22550a8: @ 22550a8 :thumb
	bx      lr
@ 0x22550aa


.align 2


.word 0x12345678 @ 0x22550ac
.thumb
Function_22550b0: @ 22550b0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	ldr     r1, [r5, #0x4]
	ldr     r0, [pc, #0x30] @ 0x22550ec, (=0x12345678)
	cmp     r1, r0
	beq     branch_22550c2
	bl      ErrorHandling
.thumb
branch_22550c2: @ 22550c2 :thumb
	ldr     r6, [r5, #0x0]
	mov     r2, #0x0
	cmp     r6, #0x0
	bls     branch_22550e6
	mov     r3, r5
	.hword  0x1e50 @ sub r0, r2, #0x1
.thumb
branch_22550ce: @ 22550ce :thumb
	ldr     r1, [r3, #0x8]
	cmp     r1, r0
	bne     branch_22550de
	lsl     r0, r2, #2
	add     r0, r5, r0
	str     r4, [r0, #0x8]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x22550de

.thumb
branch_22550de: @ 22550de :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1d1b @ add r3, r3, #0x4
	cmp     r2, r6
	bcc     branch_22550ce
.thumb
branch_22550e6: @ 22550e6 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x22550ea


.align 2


.word 0x12345678 @ 0x22550ec
.thumb
Function_22550f0: @ 22550f0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	ldr     r1, [r5, #0x4]
	ldr     r0, [pc, #0x30] @ 0x225512c, (=0x12345678)
	cmp     r1, r0
	beq     branch_2255102
	bl      ErrorHandling
.thumb
branch_2255102: @ 2255102 :thumb
	ldr     r3, [r5, #0x0]
	mov     r2, #0x0
	cmp     r3, #0x0
	bls     branch_2255126
	mov     r1, r5
.thumb
branch_225510c: @ 225510c :thumb
	ldr     r0, [r1, #0x8]
	cmp     r4, r0
	bne     branch_225511e
	mov     r1, #0x0
	lsl     r0, r2, #2
	mvn     r1, r1
	add     r0, r5, r0
	str     r1, [r0, #0x8]
	pop     {r3-r5,pc}
@ 0x225511e

.thumb
branch_225511e: @ 225511e :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1d09 @ add r1, r1, #0x4
	cmp     r2, r3
	bcc     branch_225510c
.thumb
branch_2255126: @ 2255126 :thumb
	bl      ErrorHandling
	pop     {r3-r5,pc}
@ 0x225512c

.word 0x12345678 @ 0x225512c
.thumb
Function_2255130: @ 2255130 :thumb
	push    {r3,r4}
	ldr     r4, [r0, #0x0]
	mov     r3, #0x0
	cmp     r4, #0x0
	bls     branch_225514e
.thumb
branch_225513a: @ 225513a :thumb
	ldr     r2, [r0, #0x8]
	cmp     r1, r2
	bne     branch_2255146
	mov     r0, #0x0
	pop     {r3,r4}
	bx      lr
@ 0x2255146

.thumb
branch_2255146: @ 2255146 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	cmp     r3, r4
	bcc     branch_225513a
.thumb
branch_225514e: @ 225514e :thumb
	mov     r0, #0x1
	pop     {r3,r4}
	bx      lr
@ 0x2255154

.thumb
Function_2255154: @ 2255154 :thumb
	push    {r3,r4}
	ldr     r4, [r0, #0x0]
	mov     r3, #0x0
	cmp     r4, #0x0
	bls     branch_2255174
	.hword  0x1e59 @ sub r1, r3, #0x1
.thumb
branch_2255160: @ 2255160 :thumb
	ldr     r2, [r0, #0x8]
	cmp     r2, r1
	beq     branch_225516c
	mov     r0, #0x0
	pop     {r3,r4}
	bx      lr
@ 0x225516c

.thumb
branch_225516c: @ 225516c :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	cmp     r3, r4
	bcc     branch_2255160
.thumb
branch_2255174: @ 2255174 :thumb
	mov     r0, #0x1
	pop     {r3,r4}
	bx      lr
@ 0x225517a


.align 2, 0


.thumb
Function_225517c: @ 225517c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r7, r0
	str     r2, [sp, #0x0]
	mov     r0, #0x0
	mov     r5, r1
	ldr     r2, [r7, #0x0]
	.hword  0x1e41 @ sub r1, r0, #0x1
	str     r3, [sp, #0x4]
	cmp     r2, r1
	beq     branch_225521c
	mov     r3, r7
	.hword  0x1e41 @ sub r1, r0, #0x1
.thumb
branch_2255196: @ 2255196 :thumb
	ldr     r2, [r3, #0x0]
	cmp     r5, r2
	bne     branch_2255212
	mov     r6, r0
	mov     r0, r7
	str     r0, [sp, #0x8]
	add     r0, #0x8
	mov     r1, #0xc
	str     r0, [sp, #0x8]
	mul     r6, r1
	ldr     r1, [sp, #0x8]
	ldr     r0, [sp, #0x28]
	ldr     r1, [r1, r6]
	add     r1, #0x18
	bl      malloc
	mov     r4, r0
	beq     branch_225520c
	ldr     r0, [sp, #0x8]
	ldr     r0, [r0, r6]
	cmp     r0, #0x0
	beq     branch_22551c8
	mov     r0, r4
	add     r0, #0x18
	b       branch_22551ca
@ 0x22551c8

.thumb
branch_22551c8: @ 22551c8 :thumb
	mov     r0, #0x0
.thumb
branch_22551ca: @ 22551ca :thumb
	str     r0, [r4, #0xc]
	ldr     r0, [sp, #0x20]
	mov     r1, r5
	bl      Function_22550b0
	cmp     r0, #0x0
	beq     branch_2255202
	ldr     r0, [sp, #0x0]
	ldr     r2, [sp, #0x24]
	str     r0, [r4, #0x8]
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	str     r5, [r4, #0x0]
	ldr     r0, [sp, #0x4]
	add     r5, r7, #0x4
	str     r0, [r4, #0x10]
	ldr     r0, [r5, r6]
	mov     r1, r4
	bl      AddTaskToTaskList1
	str     r0, [r4, #0x14]
	cmp     r0, #0x0
	beq     branch_2255220
	ldr     r2, [r5, r6]
	mov     r1, r4
	blx     r2
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2255202

.thumb
branch_2255202: @ 2255202 :thumb
	mov     r0, r4
	bl      free
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x225520c

.thumb
branch_225520c: @ 225520c :thumb
	bl      ErrorHandling
	b       branch_225521c
@ 0x2255212

.thumb
branch_2255212: @ 2255212 :thumb
	add     r3, #0xc
	ldr     r2, [r3, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r2, r1
	bne     branch_2255196
.thumb
branch_225521c: @ 225521c :thumb
	bl      ErrorHandling
.thumb
branch_2255220: @ 2255220 :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2255224

.thumb
Function_2255224: @ 2255224 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r1, [r4, #0x0]
	bl      Function_22550f0
	ldr     r0, [r4, #0x14]
	bl      Call_RemoveTaskFromTaskList
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x225523c

.thumb
Function_225523c: @ 225523c :thumb
	ldr     r0, [r0, #0x8]
	bx      lr
@ 0x2255240

.thumb
Function_2255240: @ 2255240 :thumb
	ldr     r0, [r0, #0x10]
	bx      lr
@ 0x2255244

.thumb
Function_2255244: @ 2255244 :thumb
	ldr     r0, [r0, #0xc]
	bx      lr
@ 0x2255248

.thumb
Function_2255248: @ 2255248 :thumb
	ldr     r0, [r0, #0x4]
	bx      lr
@ 0x225524c

.thumb
Function_225524c: @ 225524c :thumb
	ldr     r1, [r0, #0x4]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0x4]
	bx      lr
@ 0x2255254

.thumb
Function_2255254: @ 2255254 :thumb
	str     r1, [r0, #0x4]
	bx      lr
@ 0x2255258

.thumb
Function_2255258: @ 2255258 :thumb
	push    {r3-r6}
	mul     r2, r3
	ldr     r4, [sp, #0x18]
	add     r1, r1, r2
	lsl     r6, r1, #1
	lsl     r4, r4, #12
	ldr     r1, [sp, #0x10]
	mov     r5, r4
	orr     r5, r1
	add     r2, r0, r6
	strh    r5, [r0, r6]
	add     r0, r1, #0x1
	orr     r0, r4
	strh    r0, [r2, #0x2]
	ldr     r0, [sp, #0x14]
	lsl     r3, r3, #1
	add     r1, r1, r0
	mov     r0, r4
	orr     r0, r1
	strh    r0, [r2, r3]
	add     r0, r1, #0x1
	mov     r1, r4
	orr     r1, r0
	add     r0, r2, r3
	strh    r1, [r0, #0x2]
	pop     {r3-r6}
	bx      lr
@ 0x225528e


.align 2, 0


.thumb
Function_2255290: @ 2255290 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x8
	mov     r1, #0x20
	bl      malloc
	mov     r7, r0
	beq     branch_22552fc
	bl      Function_2254728
	mov     r4, #0x0
	cmp     r6, #0x0
	bls     branch_22552f6
.thumb
branch_22552ac: @ 22552ac :thumb
	ldrh    r3, [r5, #0x0]
	mov     r0, #0x1f
	lsl     r0, r0, #10
	and     r0, r3
	asr     r0, r0, #10
	mov     r2, r0
	mov     r1, #0x72
	mov     r0, #0x1f
	mul     r2, r1
	and     r0, r3
	add     r1, #0xb9
	mul     r1, r0
	mov     r0, #0x3e
	lsl     r0, r0, #4
	and     r0, r3
	asr     r3, r0, #5
	ldr     r0, [pc, #0x30] @ 0x2255300, (=0x24b)
	mul     r0, r3
	add     r0, r1, r0
	mov     r1, #0xfa
	add     r0, r2, r0
	lsl     r1, r1, #2
	blx     _u32_div_f
	lsr     r1, r0, #3
	cmp     r1, #0x3
	bls     branch_22552e4
	mov     r1, #0x3
.thumb
branch_22552e4: @ 22552e4 :thumb
	ldr     r0, [pc, #0x1c] @ 0x2255304, (=0x2256078)
	.hword  0x1c64 @ add r4, r4, #0x1
	ldrb    r0, [r0, r1]
	lsl     r0, r0, #1
	ldrh    r0, [r7, r0]
	strh    r0, [r5, #0x0]
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r4, r6
	bcc     branch_22552ac
.thumb
branch_22552f6: @ 22552f6 :thumb
	mov     r0, r7
	bl      free
.thumb
branch_22552fc: @ 22552fc :thumb
	pop     {r3-r7,pc}
@ 0x22552fe


.align 2


.word 0x24b @ 0x2255300
.word 0x2256078 @ 0x2255304
.thumb
Function_2255308: @ 2255308 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r7, r1
	mov     r0, #0x8
	mov     r1, #0x20
	bl      malloc
	mov     r4, r0
	beq     branch_225535e
	mov     r0, #0x8
	mov     r1, #0x20
	bl      malloc
	mov     r5, r0
	mov     r0, r4
	bl      Function_2254728
	cmp     r5, #0x0
	beq     branch_2255358
	mov     r0, #0x0
	mov     r1, r5
	lsl     r3, r6, #1
.thumb
branch_2255334: @ 2255334 :thumb
	ldrh    r2, [r4, r3]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r2, [r1, #0x0]
	.hword  0x1c89 @ add r1, r1, #0x2
	cmp     r0, #0x10
	blt     branch_2255334
	mov     r0, r5
	mov     r1, #0x20
	blx     DC_FlushRange
	mov     r0, r5
	lsl     r1, r7, #5
	mov     r2, #0x20
	blx     GXS_LoadOBJPltt
	mov     r0, r5
	bl      free
.thumb
branch_2255358: @ 2255358 :thumb
	mov     r0, r4
	bl      free
.thumb
branch_225535e: @ 225535e :thumb
	pop     {r3-r7,pc}
@ 0x2255360

.thumb
Function_2255360: @ 2255360 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_2079fd0
	mov     r1, r0
	mov     r0, #0x13
	add     r2, sp, #0x0
	mov     r3, #0x8
	bl      Function_2006f88
	mov     r4, r0
	beq     branch_225539e
	ldr     r0, [sp, #0x0]
	mov     r1, #0x40
	ldr     r0, [r0, #0xc]
	bl      Function_2255290
	ldr     r0, [sp, #0x0]
	mov     r1, #0x80
	ldr     r0, [r0, #0xc]
	blx     DC_FlushRange
	ldr     r0, [sp, #0x0]
	lsl     r1, r5, #5
	ldr     r0, [r0, #0xc]
	mov     r2, #0x80
	blx     GXS_LoadOBJPltt
	mov     r0, r4
	bl      free
.thumb
branch_225539e: @ 225539e :thumb
	pop     {r3-r5,pc}
@ 0x22553a0

.thumb
Function_22553a0: @ 22553a0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	str     r0, [sp, #0x4]
	lsl     r0, r3, #1
	str     r0, [sp, #0xc]
	mov     r6, r1
	str     r2, [sp, #0x8]
	ldr     r2, [pc, #0x88] @ 0x2255438, (=0x2256074)
	ldr     r1, [sp, #0xc]
	mov     r0, #0x8
	ldrh    r1, [r2, r1]
	bl      malloc
	mov     r7, r0
	beq     branch_2255434
	mov     r0, #0x13
	mov     r1, #0x8
	bl      LoadFromNARC_8
	str     r0, [sp, #0x1c]
	cmp     r0, #0x0
	beq     branch_225542e
	mov     r0, #0x0
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x0
	bls     branch_2255428
	ldr     r1, [pc, #0x64] @ 0x225543c, (=0x2256070)
	ldr     r0, [sp, #0xc]
	ldr     r4, [sp, #0x18]
	ldrh    r5, [r1, r0]
	ldr     r1, [pc, #0x58] @ 0x2255438, (=0x2256074)
	ldrh    r0, [r1, r0]
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x4]
	lsl     r0, r0, #5
	str     r0, [sp, #0x10]
.thumb
branch_22553ea: @ 22553ea :thumb
	str     r7, [sp, #0x0]
	ldr     r0, [sp, #0x1c]
	ldr     r1, [r6, #0x0]
	ldr     r3, [sp, #0x14]
	mov     r2, #0x0
	bl      Function_2006dc8
	mov     r0, r7
	add     r1, sp, #0x20
	blx     Function_20a7118
	ldr     r0, [sp, #0x20]
	mov     r1, r5
	ldr     r0, [r0, #0x14]
	blx     DC_FlushRange
	ldr     r0, [sp, #0x20]
	ldr     r1, [sp, #0x10]
	ldr     r0, [r0, #0x14]
	add     r1, r1, r4
	mov     r2, r5
	blx     GXS_LoadOBJ
	ldr     r0, [sp, #0x18]
	.hword  0x1d36 @ add r6, r6, #0x4
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x8]
	add     r4, r4, r5
	str     r1, [sp, #0x18]
	cmp     r1, r0
	bcc     branch_22553ea

branch_2255428: @ 2255428 :thumb
	ldr     r0, [sp, #0x1c]
	bl      Call_FS_CloseFile
.thumb
branch_225542e: @ 225542e :thumb
	mov     r0, r7
	bl      free
.thumb
branch_2255434: @ 2255434 :thumb
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x2255438

.word 0x2256074 @ 0x2255438
.word 0x2256070 @ 0x225543c
.thumb
Function_2255440: @ 2255440 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r5, r1
	mov     r4, r2
	mov     r1, #0x2
	add     r2, sp, #0xc
	strh    r1, [r2, #0x0]
	mov     r3, #0x3
	strh    r3, [r2, #0x2]
	mov     r3, #0xa
	strh    r3, [r2, #0x4]
	mov     r3, #0xb
	strh    r3, [r2, #0x6]
	str     r3, [sp, #0x0]
	str     r1, [sp, #0x4]
	str     r1, [sp, #0x8]
	lsl     r1, r4, #24
	lsr     r1, r1, #24
	add     r2, sp, #0xc
	mov     r3, #0x9
	mov     r6, r0
	bl      Function_20198c0
	mov     r1, #0x4
	add     r0, sp, #0xc
	strh    r1, [r0, #0x0]
	mov     r1, #0x5
	strh    r1, [r0, #0x2]
	mov     r1, #0xc
	strh    r1, [r0, #0x4]
	mov     r1, #0xd
	strh    r1, [r0, #0x6]
	mov     r3, #0xb
	lsl     r1, r4, #24
	str     r3, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, r6
	lsr     r1, r1, #24
	add     r2, sp, #0xc
	bl      Function_20198c0
	mov     r1, #0x6
	add     r0, sp, #0xc
	strh    r1, [r0, #0x0]
	mov     r1, #0x7
	strh    r1, [r0, #0x2]
	mov     r1, #0xe
	strh    r1, [r0, #0x4]
	mov     r1, #0xf
	strh    r1, [r0, #0x6]
	mov     r0, #0xb
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	lsl     r1, r4, #24
	str     r0, [sp, #0x8]
	mov     r0, r6
	lsr     r1, r1, #24
	add     r2, sp, #0xc
	mov     r3, #0xd
	bl      Function_20198c0
	mov     r0, r5
	mov     r1, #0xa
	blx     _u32_div_f
	mov     r1, #0xa
	mul     r1, r0
	.hword  0x1d00 @ add r0, r0, #0x4
	sub     r5, r5, r1
	lsr     r1, r0, #2
	lsl     r0, r0, #30
	lsl     r1, r1, #4
	lsr     r0, r0, #29
	add     r2, r1, r0
	add     r0, sp, #0xc
	strh    r2, [r0, #0x0]
	add     r1, r2, #0x1
	strh    r1, [r0, #0x2]
	mov     r1, r2
	add     r1, #0x8
	strh    r1, [r0, #0x4]
	add     r2, #0x9
	strh    r2, [r0, #0x6]
	mov     r0, #0xb
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	lsl     r1, r4, #24
	str     r0, [sp, #0x8]
	mov     r0, r6
	lsr     r1, r1, #24
	add     r2, sp, #0xc
	mov     r3, #0xf
	bl      Function_20198c0
	add     r0, r5, #0x4
	lsr     r1, r0, #2
	lsl     r0, r0, #30
	lsl     r1, r1, #4
	lsr     r0, r0, #29
	add     r2, r1, r0
	add     r0, sp, #0xc
	strh    r2, [r0, #0x0]
	add     r1, r2, #0x1
	strh    r1, [r0, #0x2]
	mov     r1, r2
	add     r1, #0x8
	strh    r1, [r0, #0x4]
	add     r2, #0x9
	strh    r2, [r0, #0x6]
	mov     r0, #0xb
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	lsl     r1, r4, #24
	str     r0, [sp, #0x8]
	mov     r0, r6
	lsr     r1, r1, #24
	add     r2, sp, #0xc
	mov     r3, #0x11
	bl      Function_20198c0
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x225553e


.align 2, 0


.thumb
Function_2255540: @ 2255540 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r7, r0
	mov     r0, r5
	mov     r1, #0x1c
	mov     r6, #0x0
	bl      malloc
	mov     r4, r0
	beq     branch_22555aa
	mov     r0, r6
	str     r0, [r4, #0x14]
	str     r0, [r4, #0xc]
	str     r0, [r4, #0x4]
	str     r7, [r4, #0x0]
	str     r5, [r4, #0x18]
	mov     r0, r7
	blx     Function_20a813c
	strh    r0, [r4, #0x10]
	ldrh    r1, [r4, #0x10]
	mov     r0, r5
	lsl     r1, r1, #3
	bl      malloc
	str     r0, [r4, #0x14]
	cmp     r0, #0x0
	beq     branch_22555aa
	ldrh    r2, [r4, #0x10]
	mov     r1, #0x94
	mov     r0, r5
	mul     r1, r2
	bl      malloc
	str     r0, [r4, #0xc]
	cmp     r0, #0x0
	beq     branch_22555aa
	ldrh    r1, [r4, #0x10]
	mov     r0, r5
	lsl     r1, r1, #2
	bl      malloc
	str     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_22555aa
	ldrh    r2, [r4, #0x10]
	ldr     r1, [r4, #0xc]
	bl      Function_22559d8
	mov     r0, r6
	strh    r0, [r4, #0x12]
	str     r0, [r4, #0x8]
	mov     r6, #0x1
.thumb
branch_22555aa: @ 22555aa :thumb
	cmp     r6, #0x0
	bne     branch_22555e2
	cmp     r4, #0x0
	beq     branch_22555de
	ldr     r1, [r4, #0x14]
	cmp     r1, #0x0
	beq     branch_22555be
	mov     r0, r5
	bl      Function_2018238
.thumb
branch_22555be: @ 22555be :thumb
	ldr     r1, [r4, #0xc]
	cmp     r1, #0x0
	beq     branch_22555ca
	mov     r0, r5
	bl      Function_2018238
.thumb
branch_22555ca: @ 22555ca :thumb
	ldr     r1, [r4, #0x4]
	cmp     r1, #0x0
	beq     branch_22555d6
	mov     r0, r5
	bl      Function_2018238
.thumb
branch_22555d6: @ 22555d6 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_2018238
.thumb
branch_22555de: @ 22555de :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22555e2

.thumb
branch_22555e2: @ 22555e2 :thumb
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x22555e6


.align 2, 0


.thumb
Function_22555e8: @ 22555e8 :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_2255612
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x0
	beq     branch_22555f8
	bl      free
.thumb
branch_22555f8: @ 22555f8 :thumb
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x0
	beq     branch_2255602
	bl      free
.thumb
branch_2255602: @ 2255602 :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_225560c
	bl      free
.thumb
branch_225560c: @ 225560c :thumb
	mov     r0, r4
	bl      free
.thumb
branch_2255612: @ 2255612 :thumb
	pop     {r4,pc}
@ 0x2255614

.thumb
Function_2255614: @ 2255614 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	str     r0, [sp, #0xc]
	ldrh    r0, [r0, #0x12]
	cmp     r0, #0x0
	bne     branch_2255622
	b       branch_22557ee
@ 0x2255622

.thumb
branch_2255622: @ 2255622 :thumb
	ldr     r0, [sp, #0xc]
	ldr     r4, [r0, #0x8]
	ldr     r5, [r0, #0x14]
	ldrh    r0, [r0, #0x10]
	cmp     r4, #0x0
	str     r0, [sp, #0x10]
	bne     branch_2255632
	b       branch_22557d4
@ 0x2255632

.thumb
branch_2255632: @ 2255632 :thumb
	mov     r0, r4
	mov     r1, #0x2
	add     r0, #0x8
	lsl     r1, r1, #12
	blx     Function_20a8d60
	mov     r0, r4
	add     r0, #0x8a
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_225564a
	b       branch_22557cc
@ 0x225564a

.thumb
branch_225564a: @ 225564a :thumb
	mov     r6, r4
	add     r6, #0x44
	mov     r0, #0xc
	ldsh    r0, [r6, r0]
	ldr     r1, [r4, #0x68]
	lsl     r0, r0, #12
	add     r0, r1, r0
	str     r0, [sp, #0x18]
	mov     r0, #0xe
	ldsh    r0, [r6, r0]
	ldr     r1, [r4, #0x6c]
	lsl     r0, r0, #12
	add     r0, r1, r0
	str     r0, [sp, #0x1c]
	mov     r0, r4
	add     r0, #0x8b
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_225568a
	add     r0, sp, #0x18
	str     r0, [sp, #0x0]
	mov     r3, #0x0
	str     r3, [sp, #0x4]
	ldr     r1, [sp, #0x10]
	str     r3, [sp, #0x8]
	lsl     r1, r1, #16
	ldr     r2, [r4, #0x38]
	mov     r0, r5
	lsr     r1, r1, #16
	blx     Function_20a8da0
	b       branch_2255722
@ 0x225568a

.thumb
branch_225568a: @ 225568a :thumb
	ldr     r0, [r4, #0x70]
	blx     Function_20bb44c
	ldrh    r1, [r6, #0x12]
	mov     r0, #0x4
	tst     r0, r1
	beq     branch_22556bc
	mov     r0, r4
	add     r0, #0x90
	ldrh    r2, [r6, #0x10]
	ldrh    r0, [r0, #0x0]
	ldr     r1, [pc, #0x150] @ 0x22557f4, (=0x20f983c)
	add     r0, r2, r0
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	asr     r0, r0, #4
	lsl     r3, r0, #2
	add     r2, r1, r3
	ldsh    r1, [r1, r3]
	mov     r3, #0x2
	ldsh    r2, [r2, r3]
	ldr     r0, [r4, #0x70]
	bl      MTX_Rot22_
	b       branch_22556da

branch_22556bc: @ 22556bc :thumb
	mov     r0, r4
	add     r0, #0x90
	ldrh    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_22556da
	asr     r0, r0, #4
	lsl     r3, r0, #2
	ldr     r1, [pc, #0x128] @ 0x22557f4, (=0x20f983c)
	ldr     r0, [r4, #0x70]
	add     r2, r1, r3
	ldsh    r1, [r1, r3]
	mov     r3, #0x2
	ldsh    r2, [r2, r3]
	bl      MTX_Rot22_
branch_22556da: @ 22556da :thumb
	ldrh    r1, [r6, #0x12]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_22556fe
	ldr     r0, [r6, #0x4]
	ldr     r7, [r4, #0x70]
	blx     FX_Inv
	str     r0, [sp, #0x14]
	ldr     r0, [r6, #0x8]
	blx     FX_Inv
	mov     r3, r0
	ldr     r2, [sp, #0x14]
	mov     r0, r7
	mov     r1, r7
	blx     MTX_ScaleApply22
branch_22556fe: @ 22556fe :thumb
	ldr     r0, [sp, #0xc]
	ldr     r1, [r4, #0x70]
	ldr     r0, [r0, #0x0]
	blx     Function_20a7d34
	add     r1, sp, #0x18
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	ldr     r1, [sp, #0x10]
	ldr     r2, [r4, #0x38]
	lsl     r1, r1, #16
	ldr     r3, [r4, #0x70]
	mov     r0, r5
	lsr     r1, r1, #16
	blx     Function_20a8da0
.thumb
branch_2255722: @ 2255722 :thumb
	ldr     r1, [sp, #0x10]
	sub     r1, r1, r0
	str     r1, [sp, #0x10]
	mov     r1, r0
	.hword  0x1e40 @ sub r0, r0, #0x1
	cmp     r1, #0x0
	beq     branch_22557cc
	ldr     r7, [pc, #0xc4] @ 0x22557f8, (=0xdfffffff)
	asr     r1, r7, #17
.thumb
branch_2255734: @ 2255734 :thumb
	ldr     r3, [r5, #0x4]
	ldr     r2, [pc, #0xc4] @ 0x22557fc, (=0xfffff3ff)
	mov     r6, r4
	and     r2, r3
	mov     r3, r4
	add     r3, #0x86
	ldrh    r3, [r3, #0x0]
	add     r6, #0x88
	lsl     r3, r3, #30
	lsr     r3, r3, #20
	orr     r2, r3
	str     r2, [r5, #0x4]
	ldr     r3, [pc, #0xb0] @ 0x2255800, (=0xffff0fff)
	ldrh    r6, [r6, #0x0]
	and     r3, r2
	lsl     r2, r2, #16
	lsr     r2, r2, #28
	add     r2, r2, r6
	lsl     r2, r2, #28
	lsr     r2, r2, #16
	orr     r2, r3
	mov     r6, r4
	ldr     r3, [pc, #0xa0] @ 0x2255804, (=0xfffffc00)
	str     r2, [r5, #0x4]
	add     r6, #0x8c
	and     r3, r2
	lsl     r2, r2, #22
	ldrh    r6, [r6, #0x0]
	lsr     r2, r2, #22
	add     r6, r2, r6
	ldr     r2, [pc, #0x94] @ 0x2255808, (=0x3ff)
	and     r2, r6
	orr     r2, r3
	mov     r6, r4
	str     r2, [r5, #0x4]
	add     r6, #0x8e
	ldr     r2, [r5, #0x0]
	ldr     r3, [pc, #0x8c] @ 0x225580c, (=0xefffffff)
	ldrb    r6, [r6, #0x0]
	and     r3, r2
	lsl     r2, r2, #3
	lsr     r2, r2, #31
	eor     r2, r6
	lsl     r2, r2, #31
	lsr     r2, r2, #3
	orr     r2, r3
	mov     r6, r4
	mov     r3, r2
	str     r2, [r5, #0x0]
	add     r6, #0x8f
	lsl     r2, r2, #2
	ldrb    r6, [r6, #0x0]
	lsr     r2, r2, #31
	and     r3, r7
	eor     r2, r6
	lsl     r2, r2, #31
	lsr     r2, r2, #2
	orr     r2, r3
	mov     r6, r4
	mov     r3, r2
	str     r2, [r5, #0x0]
	add     r6, #0x92
	lsl     r2, r2, #19
	ldrb    r6, [r6, #0x0]
	lsr     r2, r2, #31
	and     r3, r1
	eor     r2, r6
	lsl     r2, r2, #31
	lsr     r2, r2, #19
	orr     r2, r3
	str     r2, [r5, #0x0]
	mov     r2, r0
	add     r5, #0x8
	.hword  0x1e40 @ sub r0, r0, #0x1
	cmp     r2, #0x0
	bne     branch_2255734
.thumb
branch_22557cc: @ 22557cc :thumb
	ldr     r4, [r4, #0x60]
	cmp     r4, #0x0
	beq     branch_22557d4
	b       branch_2255632
@ 0x22557d4

.thumb
branch_22557d4: @ 22557d4 :thumb
	ldr     r0, [sp, #0xc]
	ldr     r1, [r0, #0x14]
	cmp     r5, r1
	bls     branch_22557ee
	sub     r3, r5, r1
	asr     r2, r3, #2
	lsr     r2, r2, #29
	add     r2, r3, r2
	lsl     r2, r2, #13
	ldr     r0, [r0, #0x0]
	lsr     r2, r2, #16
	blx     Function_20a7b80
.thumb
branch_22557ee: @ 22557ee :thumb
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x22557f2


.align 2


.word 0x20f983c @ 0x22557f4
.word 0xdfffffff @ 0x22557f8
.word 0xfffff3ff @ 0x22557fc
.word 0xffff0fff @ 0x2255800
.word 0xfffffc00 @ 0x2255804
.word 0x3ff @ 0x2255808
.word 0xefffffff @ 0x225580c
.thumb
Function_2255810: @ 2255810 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r5, r1
	mov     r6, r2
	bl      Function_2255a04
	mov     r4, r0
	beq     branch_22558ac
	ldrb    r1, [r5, #0xb]
	add     r0, #0x86
	strh    r1, [r0, #0x0]
	mov     r0, r4
	ldrb    r1, [r5, #0xc]
	add     r0, #0x84
	strh    r1, [r0, #0x0]
	mov     r0, r7
	mov     r1, r4
	bl      Function_2255a40
	ldr     r0, [r6, #0x8]
	str     r0, [r4, #0x0]
	ldr     r0, [r6, #0xc]
	str     r0, [r4, #0x4]
	ldrh    r1, [r5, #0x8]
	blx     Function_20a6ef0
	mov     r1, r0
	mov     r0, r4
	ldr     r2, [r4, #0x0]
	add     r0, #0x8
	blx     Function_20a8c88
	ldr     r1, [r5, #0x0]
	ldr     r0, [r5, #0x4]
	str     r1, [r4, #0x68]
	mov     r1, r4
	str     r0, [r4, #0x6c]
	mov     r0, #0x0
	add     r1, #0x88
	strh    r0, [r1, #0x0]
	mov     r1, r4
	add     r1, #0x8c
	strh    r0, [r1, #0x0]
	ldrb    r2, [r5, #0xa]
	mov     r1, #0x1
	tst     r2, r1
	beq     branch_2255870
	mov     r0, r1
.thumb
branch_2255870: @ 2255870 :thumb
	mov     r1, r4
	add     r1, #0x8e
	strb    r0, [r1, #0x0]
	ldrb    r1, [r5, #0xa]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_2255882
	mov     r1, #0x1
	b       branch_2255884
@ 0x2255882

.thumb
branch_2255882: @ 2255882 :thumb
	mov     r1, #0x0
.thumb
branch_2255884: @ 2255884 :thumb
	mov     r0, r4
	add     r0, #0x8f
	strb    r1, [r0, #0x0]
	mov     r1, r4
	mov     r0, #0x0
	add     r1, #0x92
	strb    r0, [r1, #0x0]
	mov     r1, r4
	add     r1, #0x90
	strh    r0, [r1, #0x0]
	mov     r1, r4
	add     r1, #0x74
	str     r1, [r4, #0x70]
	mov     r1, r4
	ldrb    r2, [r5, #0xd]
	add     r1, #0x8b
	strb    r2, [r1, #0x0]
	mov     r1, r4
	add     r1, #0x8a
	strb    r0, [r1, #0x0]
.thumb
branch_22558ac: @ 22558ac :thumb
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x22558b0

.thumb
Function_22558b0: @ 22558b0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_2255a98
	mov     r0, r5
	mov     r1, r4
	bl      Function_2255a1c
	pop     {r3-r5,pc}
@ 0x22558c4

.thumb
Function_22558c4: @ 22558c4 :thumb
	push    {r4,lr}
	mov     r4, r0
	lsl     r1, r1, #16
	ldr     r0, [r4, #0x4]
	lsr     r1, r1, #16
	blx     Function_20a6ef0
	mov     r1, r0
	mov     r0, r4
	ldr     r2, [r4, #0x0]
	add     r0, #0x8
	blx     Function_20a8c88
	pop     {r4,pc}
@ 0x22558e0

.thumb
Function_22558e0: @ 22558e0 :thumb
	ldr     r0, [r0, #0x14]
	cmp     r0, #0x0
	bne     branch_22558ea
	mov     r0, #0x1
	bx      lr
@ 0x22558ea

.thumb
branch_22558ea: @ 22558ea :thumb
	mov     r0, #0x0
	bx      lr
@ 0x22558ee


.align 2, 0


.thumb
Function_22558f0: @ 22558f0 :thumb
	ldr     r3, [r0, #0x68]
	add     r1, r3, r1
	str     r1, [r0, #0x68]
	ldr     r1, [r0, #0x6c]
	add     r1, r1, r2
	str     r1, [r0, #0x6c]
	bx      lr
@ 0x22558fe


.align 2, 0


.thumb
Function_2255900: @ 2255900 :thumb
	str     r1, [r0, #0x68]
	str     r2, [r0, #0x6c]
	bx      lr
@ 0x2255906


.align 2, 0


.thumb
Function_2255908: @ 2255908 :thumb
	ldr     r3, [r0, #0x68]
	str     r3, [r1, #0x0]
	ldr     r0, [r0, #0x6c]
	str     r0, [r2, #0x0]
	bx      lr
@ 0x2255912


.align 2, 0


.thumb
Function_2255914: @ 2255914 :thumb
	add     r0, #0x8a
	strb    r1, [r0, #0x0]
	bx      lr
@ 0x225591a


.align 2, 0


.thumb
Function_225591c: @ 225591c :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r6, r0
	mov     r4, r2
	bl      Function_2255a98
	mov     r0, r5
	add     r0, #0x84
	strh    r4, [r0, #0x0]
	mov     r0, r6
	mov     r1, r5
	bl      Function_2255a40
	pop     {r4-r6,pc}
@ 0x2255938

.thumb
Function_2255938: @ 2255938 :thumb
	add     r0, #0x88
	strh    r1, [r0, #0x0]
	bx      lr
@ 0x225593e


.align 2, 0


.thumb
Function_2255940: @ 2255940 :thumb
	add     r0, #0x8c
	strh    r1, [r0, #0x0]
	bx      lr
@ 0x2255946


.align 2, 0


.thumb
Function_2255948: @ 2255948 :thumb
	add     r0, #0x92
	strb    r1, [r0, #0x0]
	bx      lr
@ 0x225594e


.align 2, 0


.thumb
Function_2255950: @ 2255950 :thumb
	add     r0, #0x90
	strh    r1, [r0, #0x0]
	bx      lr
@ 0x2255956


.align 2, 0


.thumb
Function_2255958: @ 2255958 :thumb
	push    {r3-r7,lr}
	ldr     r4, [sp, #0x18]
	mov     r5, r0
	mov     r6, r1
	mov     r1, r2
	mov     r7, r3
	str     r4, [r5, #0x10]
	mov     r0, r6
	mov     r2, r4
	bl      Function_2006fd8
	str     r0, [r5, #0x0]
	mov     r0, r6
	mov     r1, r7
	mov     r2, r4
	bl      Function_2006fd8
	str     r0, [r5, #0x4]
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_22559aa
	ldr     r1, [r5, #0x4]
	cmp     r1, #0x0
	beq     branch_22559aa
	mov     r1, r5
	add     r1, #0x8
	blx     Function_20a6f38
	cmp     r0, #0x0
	bne     branch_2255998
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2255998

.thumb
branch_2255998: @ 2255998 :thumb
	ldr     r0, [r5, #0x4]
	add     r5, #0xc
	mov     r1, r5
	blx     Function_20a6d94
	cmp     r0, #0x0
	bne     branch_22559aa
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22559aa

.thumb
branch_22559aa: @ 22559aa :thumb
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x22559ae


.align 2, 0


.thumb
Function_22559b0: @ 22559b0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x0]
	cmp     r1, #0x0
	beq     branch_22559c4
	ldr     r0, [r4, #0x10]
	bl      Function_2018238
	mov     r0, #0x0
	str     r0, [r4, #0x0]
.thumb
branch_22559c4: @ 22559c4 :thumb
	ldr     r1, [r4, #0x4]
	cmp     r1, #0x0
	beq     branch_22559d4
	ldr     r0, [r4, #0x10]
	bl      Function_2018238
	mov     r0, #0x0
	str     r0, [r4, #0x4]
.thumb
branch_22559d4: @ 22559d4 :thumb
	pop     {r4,pc}
@ 0x22559d6


.align 2, 0


.thumb
Function_22559d8: @ 22559d8 :thumb
	push    {r4-r6,lr}
	mov     r6, r2
	mov     r5, r0
	mov     r0, r6
	mov     r4, r1
	.hword  0x1e76 @ sub r6, r6, #0x1
	cmp     r0, #0x0
	beq     branch_22559fa
.thumb
branch_22559e8: @ 22559e8 :thumb
	mov     r0, r4
	stmia   r5!, {r4}
	bl      Function_22559fc
	mov     r0, r6
	add     r4, #0x94
	.hword  0x1e76 @ sub r6, r6, #0x1
	cmp     r0, #0x0
	bne     branch_22559e8
.thumb
branch_22559fa: @ 22559fa :thumb
	pop     {r4-r6,pc}
@ 0x22559fc

.thumb
Function_22559fc: @ 22559fc :thumb
	mov     r1, #0x0
	str     r1, [r0, #0x60]
	str     r1, [r0, #0x64]
	bx      lr
@ 0x2255a04

.thumb
Function_2255a04: @ 2255a04 :thumb
	ldrh    r2, [r0, #0x12]
	ldrh    r1, [r0, #0x10]
	cmp     r2, r1
	bcs     branch_2255a18
	add     r1, r2, #0x1
	strh    r1, [r0, #0x12]
	ldr     r1, [r0, #0x4]
	lsl     r0, r2, #2
	ldr     r0, [r1, r0]
	bx      lr
@ 0x2255a18

.thumb
branch_2255a18: @ 2255a18 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2255a1c

.thumb
Function_2255a1c: @ 2255a1c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldrh    r0, [r5, #0x12]
	mov     r4, r1
	cmp     r0, #0x0
	beq     branch_2255a3c
	mov     r0, r4
	bl      Function_22559fc
	ldrh    r0, [r5, #0x12]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r5, #0x12]
	ldrh    r0, [r5, #0x12]
	ldr     r1, [r5, #0x4]
	lsl     r0, r0, #2
	str     r4, [r1, r0]
.thumb
branch_2255a3c: @ 2255a3c :thumb
	pop     {r3-r5,pc}
@ 0x2255a3e


.align 2, 0


.thumb
Function_2255a40: @ 2255a40 :thumb
	push    {r4,r5}
	ldr     r3, [r0, #0x8]
	cmp     r3, #0x0
	bne     branch_2255a54
	str     r1, [r0, #0x8]
	mov     r0, #0x0
	str     r0, [r1, #0x60]
	str     r0, [r1, #0x64]
	pop     {r4,r5}
	bx      lr
@ 0x2255a54

.thumb
branch_2255a54: @ 2255a54 :thumb
	mov     r4, r1
	add     r4, #0x84
	ldr     r5, [r4, #0x0]
	mov     r2, r3
.thumb
branch_2255a5c: @ 2255a5c :thumb
	mov     r4, r2
	add     r4, #0x84
	ldr     r4, [r4, #0x0]
	cmp     r5, r4
	bcs     branch_2255a7e
	cmp     r2, r3
	bne     branch_2255a6c
	str     r1, [r0, #0x8]
.thumb
branch_2255a6c: @ 2255a6c :thumb
	ldr     r0, [r2, #0x64]
	str     r0, [r1, #0x64]
	cmp     r0, #0x0
	beq     branch_2255a76
	str     r1, [r0, #0x60]
.thumb
branch_2255a76: @ 2255a76 :thumb
	str     r2, [r1, #0x60]
	str     r1, [r2, #0x64]
	pop     {r4,r5}
	bx      lr
@ 0x2255a7e

.thumb
branch_2255a7e: @ 2255a7e :thumb
	ldr     r4, [r2, #0x60]
	cmp     r4, #0x0
	bne     branch_2255a90
	str     r1, [r2, #0x60]
	str     r2, [r1, #0x64]
	mov     r0, #0x0
	str     r0, [r1, #0x60]
	pop     {r4,r5}
	bx      lr
@ 0x2255a90

.thumb
branch_2255a90: @ 2255a90 :thumb
	mov     r2, r4
	b       branch_2255a5c
@ 0x2255a94

.thumb
Function_2255a94: @ 2255a94 :thumb
	pop     {r4,r5}
	bx      lr
@ 0x2255a98

.thumb
Function_2255a98: @ 2255a98 :thumb
	ldr     r2, [r1, #0x64]
	cmp     r2, #0x0
	beq     branch_2255ab4
	ldr     r0, [r1, #0x60]
	cmp     r0, #0x0
	beq     branch_2255aae
	str     r0, [r2, #0x60]
	ldr     r2, [r1, #0x64]
	ldr     r0, [r1, #0x60]
	str     r2, [r0, #0x64]
	bx      lr
@ 0x2255aae

.thumb
branch_2255aae: @ 2255aae :thumb
	mov     r0, #0x0
	str     r0, [r2, #0x60]
	bx      lr
@ 0x2255ab4

.thumb
branch_2255ab4: @ 2255ab4 :thumb
	ldr     r3, [r1, #0x60]
	cmp     r3, #0x0
	beq     branch_2255ac4
	mov     r2, #0x0
	str     r2, [r3, #0x64]
	ldr     r1, [r1, #0x60]
	str     r1, [r0, #0x8]
	bx      lr
@ 0x2255ac4

.thumb
branch_2255ac4: @ 2255ac4 :thumb
	mov     r1, #0x0
	str     r1, [r0, #0x8]
	bx      lr
@ 0x2255aca


.align 2, 0


.thumb
Function_2255acc: @ 2255acc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r0
	mov     r7, r1
	str     r2, [sp, #0x0]
	str     r3, [sp, #0x4]
	ldr     r5, [sp, #0x20]
	bne     branch_2255ae0
	bl      ErrorHandling
.thumb
branch_2255ae0: @ 2255ae0 :thumb
	mov     r0, r5
	mov     r1, #0x18
	bl      malloc
	mov     r4, r0
	beq     branch_2255b2e
	ldr     r0, [sp, #0x0]
	str     r5, [r4, #0x8]
	str     r0, [r4, #0x4]
	str     r6, [r4, #0x0]
	mov     r1, #0xe
	ldr     r0, [sp, #0x4]
	str     r7, [r4, #0xc]
	str     r0, [r4, #0x10]
	mov     r0, r5
	mul     r1, r7
	bl      malloc
	str     r0, [r4, #0x14]
	cmp     r0, #0x0
	beq     branch_2255b24
	mov     r6, #0x0
	cmp     r7, #0x0
	bls     branch_2255b2e
	mov     r5, r6
.thumb
branch_2255b12: @ 2255b12 :thumb
	ldr     r0, [r4, #0x14]
	add     r0, r0, r5
	bl      Function_2255c80
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0xe
	cmp     r6, r7
	bcc     branch_2255b12
	b       branch_2255b2e
@ 0x2255b24

.thumb
branch_2255b24: @ 2255b24 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_2018238
	mov     r4, #0x0
.thumb
branch_2255b2e: @ 2255b2e :thumb
	mov     r0, r4
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2255b34

.thumb
Function_2255b34: @ 2255b34 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_2255b3e
	bl      ErrorHandling
.thumb
branch_2255b3e: @ 2255b3e :thumb
	ldr     r0, [r4, #0x8]
	ldr     r1, [r4, #0x14]
	bl      Function_2018238
	ldr     r0, [r4, #0x8]
	mov     r1, r4
	bl      Function_2018238
	pop     {r4,pc}
@ 0x2255b50

.thumb
Function_2255b50: @ 2255b50 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	bl      Function_202278c
	str     r0, [sp, #0x4]
	cmp     r0, #0x0
	beq     branch_2255ba8
	bl      Function_2022798
	ldr     r1, [r5, #0xc]
	mov     r7, #0x0
	str     r0, [sp, #0x0]
	cmp     r1, #0x0
	bls     branch_2255bce
	mov     r4, r7
	mov     r6, r7
.thumb
branch_2255b72: @ 2255b72 :thumb
	ldr     r0, [r5, #0x14]
	add     r1, r0, r4
	ldrb    r0, [r1, #0x1]
	strb    r0, [r1, #0x2]
	ldr     r0, [r5, #0x14]
	add     r0, r0, r4
	ldrb    r0, [r0, #0x1]
	cmp     r0, #0x0
	ldr     r0, [r5, #0x0]
	beq     branch_2255b8e
	add     r0, r0, r6
	bl      Function_2022734
	b       branch_2255b94
@ 0x2255b8e

.thumb
branch_2255b8e: @ 2255b8e :thumb
	add     r0, r0, r6
	bl      Function_2022760
.thumb
branch_2255b94: @ 2255b94 :thumb
	ldr     r1, [r5, #0x14]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r1, r1, r4
	strb    r0, [r1, #0x1]
	ldr     r1, [r5, #0xc]
	add     r4, #0xe
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r7, r1
	bcc     branch_2255b72
	b       branch_2255bce
@ 0x2255ba8

.thumb
branch_2255ba8: @ 2255ba8 :thumb
	ldr     r1, [r5, #0xc]
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	cmp     r1, #0x0
	bls     branch_2255bce
	mov     r0, r2
	mov     r3, r2
.thumb
branch_2255bb6: @ 2255bb6 :thumb
	ldr     r1, [r5, #0x14]
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r4, r1, r0
	ldrb    r1, [r4, #0x1]
	strb    r1, [r4, #0x2]
	ldr     r1, [r5, #0x14]
	add     r1, r1, r0
	strb    r3, [r1, #0x1]
	ldr     r1, [r5, #0xc]
	add     r0, #0xe
	cmp     r2, r1
	bcc     branch_2255bb6
.thumb
branch_2255bce: @ 2255bce :thumb
	mov     r6, #0x0
	cmp     r1, #0x0
	bls     branch_2255c14
	ldr     r7, [pc, #0x6c] @ 0x2255c44, (=0x225607c)
	mov     r4, r6
.thumb
branch_2255bd8: @ 2255bd8 :thumb
	ldr     r3, [r5, #0x14]
	ldr     r1, [sp, #0x4]
	add     r0, r3, r4
	ldrb    r3, [r3, r4]
	ldr     r2, [sp, #0x0]
	lsl     r3, r3, #2
	ldr     r3, [r7, r3]
	blx     r3
	mov     r1, r0
	ldr     r0, [r5, #0x14]
	add     r0, r0, r4
	ldrb    r2, [r0, #0x1]
	ldrb    r0, [r0, #0x2]
	cmp     r2, r0
	bne     branch_2255bf8
	mov     r2, #0x2
.thumb
branch_2255bf8: @ 2255bf8 :thumb
	cmp     r1, #0x0
	bne     branch_2255c00
	cmp     r2, #0x2
	beq     branch_2255c0a
.thumb
branch_2255c00: @ 2255c00 :thumb
	ldr     r3, [r5, #0x10]
	ldr     r4, [r5, #0x4]
	mov     r0, r6
	blx     r4
	b       branch_2255c14
@ 0x2255c0a

.thumb
branch_2255c0a: @ 2255c0a :thumb
	ldr     r0, [r5, #0xc]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0xe
	cmp     r6, r0
	bcc     branch_2255bd8
.thumb
branch_2255c14: @ 2255c14 :thumb
	ldr     r0, [r5, #0xc]
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r0
	bcs     branch_2255c3e
	mov     r0, #0xe
	mov     r4, r6
	ldr     r7, [pc, #0x20] @ 0x2255c44, (=0x225607c)
	mul     r4, r0
.thumb
branch_2255c24: @ 2255c24 :thumb
	ldr     r3, [r5, #0x14]
	ldr     r1, [sp, #0x4]
	add     r0, r3, r4
	ldrb    r3, [r3, r4]
	ldr     r2, [sp, #0x0]
	lsl     r3, r3, #2
	ldr     r3, [r7, r3]
	blx     r3
	ldr     r0, [r5, #0xc]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0xe
	cmp     r6, r0
	bcc     branch_2255c24
.thumb
branch_2255c3e: @ 2255c3e :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2255c42


.align 2


.word 0x225607c @ 0x2255c44
.thumb
Function_2255c48: @ 2255c48 :thumb
	push    {r3,r4}
	ldr     r4, [r0, #0x14]
	mov     r0, #0xe
	mul     r0, r1
	add     r1, r4, r0
	lsl     r0, r2, #1
	add     r0, r1, r0
	strh    r3, [r0, #0x8]
	pop     {r3,r4}
	bx      lr
@ 0x2255c5c

.thumb
Function_2255c5c: @ 2255c5c :thumb
	ldr     r3, [r0, #0x14]
	mov     r0, #0xe
	mul     r0, r1
	add     r0, r3, r0
	strh    r2, [r0, #0xc]
	bx      lr
@ 0x2255c68

.thumb
Function_2255c68: @ 2255c68 :thumb
	mov     r3, r1
	mov     r2, #0xe
	mul     r3, r2
	ldr     r1, [r0, #0x14]
	mov     r2, #0x0
	add     r1, r1, r3
	strh    r2, [r1, #0x4]
	ldr     r0, [r0, #0x14]
	mov     r1, #0x4
	strb    r1, [r0, r3]
	bx      lr
@ 0x2255c7e


.align 2, 0


.thumb
Function_2255c80: @ 2255c80 :thumb
	mov     r2, #0x0
	strb    r2, [r0, #0x0]
	strb    r2, [r0, #0x1]
	strb    r2, [r0, #0x2]
	strh    r2, [r0, #0x4]
	strh    r2, [r0, #0x6]
	mov     r3, r0
	mov     r1, r2
.thumb
branch_2255c90: @ 2255c90 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	strh    r1, [r3, #0x8]
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r2, #0x2
	bcc     branch_2255c90
	strh    r1, [r0, #0xc]
	bx      lr
@ 0x2255c9e


.align 2, 0


.thumb
Function_2255ca0: @ 2255ca0 :thumb
	strb    r1, [r0, #0x0]
	mov     r1, #0x0
	strh    r1, [r0, #0x4]
	bx      lr
@ 0x2255ca8

.thumb
Function_2255ca8: @ 2255ca8 :thumb
	strb    r1, [r0, #0x0]
	bx      lr
@ 0x2255cac

.thumb
Function_2255cac: @ 2255cac :thumb
	ldrh    r2, [r0, #0x4]
	ldr     r1, [pc, #0xc] @ 0x2255cbc, (=0xffff)
	cmp     r2, r1
	bcs     branch_2255cb8
	add     r1, r2, #0x1
	strh    r1, [r0, #0x4]
.thumb
branch_2255cb8: @ 2255cb8 :thumb
	bx      lr
@ 0x2255cba


.align 2


.word 0xffff @ 0x2255cbc
.thumb
Function_2255cc0: @ 2255cc0 :thumb
	ldrh    r3, [r0, #0x4]
	mov     r2, #0x0
.thumb
branch_2255cc4: @ 2255cc4 :thumb
	ldrh    r1, [r0, #0x8]
	cmp     r3, r1
	bne     branch_2255cce
	add     r0, r2, #0x5
	bx      lr
@ 0x2255cce

.thumb
branch_2255cce: @ 2255cce :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c80 @ add r0, r0, #0x2
	cmp     r2, #0x2
	bcc     branch_2255cc4
	mov     r0, #0x0
	bx      lr
@ 0x2255cda


.align 2, 0


.thumb
Function_2255cdc: @ 2255cdc :thumb
	push    {r3,lr}
	ldrb    r1, [r0, #0x1]
	cmp     r1, #0x0
	beq     branch_2255cf2
	cmp     r2, #0x0
	beq     branch_2255cf2
	mov     r1, #0x1
	bl      Function_2255ca0
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2255cf2

.thumb
branch_2255cf2: @ 2255cf2 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2255cf6


.align 2, 0


.thumb
Function_2255cf8: @ 2255cf8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_2255cac
	ldrb    r0, [r5, #0x1]
	cmp     r0, #0x0
	beq     branch_2255d26
	mov     r0, r5
	bl      Function_2255cc0
	cmp     r0, #0x0
	bne     branch_2255d54
	ldrh    r1, [r5, #0xc]
	cmp     r1, #0x0
	beq     branch_2255d52
	ldrh    r0, [r5, #0x4]
	cmp     r0, r1
	bcc     branch_2255d52
	mov     r0, #0x0
	strh    r0, [r5, #0x4]
	mov     r0, #0x7
	pop     {r3-r5,pc}
@ 0x2255d26

.thumb
branch_2255d26: @ 2255d26 :thumb
	cmp     r4, #0x0
	beq     branch_2255d36
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2255ca0
	mov     r0, #0x2
	pop     {r3-r5,pc}
@ 0x2255d36

.thumb
branch_2255d36: @ 2255d36 :thumb
	ldrh    r0, [r5, #0x6]
	cmp     r0, #0x0
	beq     branch_2255d46
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_2255ca8
	b       branch_2255d52
@ 0x2255d46

.thumb
branch_2255d46: @ 2255d46 :thumb
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2255ca0
	mov     r0, #0x3
	pop     {r3-r5,pc}
@ 0x2255d52

.thumb
branch_2255d52: @ 2255d52 :thumb
	mov     r0, #0x0
.thumb
branch_2255d54: @ 2255d54 :thumb
	pop     {r3-r5,pc}
@ 0x2255d56


.align 2, 0


.thumb
Function_2255d58: @ 2255d58 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r2
	bl      Function_2255cac
	ldrh    r1, [r5, #0x4]
	ldrh    r0, [r5, #0x6]
	cmp     r1, r0
	bls     branch_2255d76
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2255ca0
	mov     r0, #0x3
	pop     {r3-r5,pc}
@ 0x2255d76

.thumb
branch_2255d76: @ 2255d76 :thumb
	ldrb    r0, [r5, #0x1]
	cmp     r0, #0x0
	beq     branch_2255d8c
	cmp     r4, #0x0
	beq     branch_2255d8c
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_2255ca0
	mov     r0, #0x4
	pop     {r3-r5,pc}
@ 0x2255d8c

.thumb
branch_2255d8c: @ 2255d8c :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2255d90

.thumb
Function_2255d90: @ 2255d90 :thumb
	push    {r3,lr}
	ldrb    r1, [r0, #0x1]
	cmp     r1, #0x0
	beq     branch_2255d9e
	bl      Function_2255cac
	b       branch_2255da4
@ 0x2255d9e

.thumb
branch_2255d9e: @ 2255d9e :thumb
	mov     r1, #0x0
	bl      Function_2255ca0
.thumb
branch_2255da4: @ 2255da4 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2255da8

.thumb
Function_2255da8: @ 2255da8 :thumb
	push    {r3,lr}
	ldrb    r1, [r0, #0x1]
	cmp     r1, #0x0
	bne     branch_2255db6
	mov     r1, #0x0
	bl      Function_2255ca0
.thumb
branch_2255db6: @ 2255db6 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2255dba


.align 2, 0


.thumb
Function_2255dbc: @ 2255dbc :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3
	cmp     r5, #0x1e
	bcc     branch_2255dce
	bl      ErrorHandling
.thumb
branch_2255dce: @ 2255dce :thumb
	cmp     r4, #0x21
	bcc     branch_2255dd6
	bl      ErrorHandling
.thumb
branch_2255dd6: @ 2255dd6 :thumb
	cmp     r5, #0x1e
	bcc     branch_2255ddc
	mov     r5, #0x0
.thumb
branch_2255ddc: @ 2255ddc :thumb
	cmp     r4, #0x21
	bcc     branch_2255de2
	mov     r4, #0x0
.thumb
branch_2255de2: @ 2255de2 :thumb
	ldr     r0, [pc, #0x10] @ 0x2255df4, (=0x22560b0)
	lsl     r1, r5, #1
	ldrh    r0, [r0, r1]
	lsl     r1, r4, #1
	str     r0, [r6, #0x0]
	ldr     r0, [pc, #0x8] @ 0x2255df8, (=0x22560ec)
	ldrh    r0, [r0, r1]
	str     r0, [r7, #0x0]
	pop     {r3-r7,pc}
@ 0x2255df4

.word 0x22560b0 @ 0x2255df4
.word 0x22560ec @ 0x2255df8
.thumb
Function_2255dfc: @ 2255dfc :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	cmp     r5, #0x4
	bcc     branch_2255e0c
	bl      ErrorHandling
.thumb
branch_2255e0c: @ 2255e0c :thumb
	ldr     r0, [pc, #0xc] @ 0x2255e1c, (=0x2256090)
	lsl     r1, r5, #3
	ldr     r0, [r0, r1]
	str     r0, [r4, #0x0]
	ldr     r0, [pc, #0x8] @ 0x2255e20, (=0x2256094)
	ldr     r0, [r0, r1]
	str     r0, [r6, #0x0]
	pop     {r4-r6,pc}
@ 0x2255e1c

.word 0x2256090 @ 0x2255e1c
.word 0x2256094 @ 0x2255e20
.thumb
Function_2255e24: @ 2255e24 :thumb
	push    {r4,r5}
	ldr     r5, [pc, #0x2c] @ 0x2255e54, (=0x225612e)
	mov     r4, #0x0
.thumb
branch_2255e2a: @ 2255e2a :thumb
	ldrh    r3, [r5, #0x0]
	cmp     r0, r3
	bne     branch_2255e44
	ldr     r0, [pc, #0x24] @ 0x2255e58, (=0x2256130)
	lsl     r3, r4, #2
	ldrb    r0, [r0, r3]
	str     r0, [r1, #0x0]
	ldr     r0, [pc, #0x20] @ 0x2255e5c, (=0x2256131)
	ldrb    r0, [r0, r3]
	str     r0, [r2, #0x0]
	mov     r0, #0x1
	pop     {r4,r5}
	bx      lr
@ 0x2255e44

.thumb
branch_2255e44: @ 2255e44 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x1d
	bcc     branch_2255e2a
	mov     r0, #0x0
	pop     {r4,r5}
	bx      lr
@ 0x2255e52

.align 2
.word 0x225612e @ 0x2255e54
.word 0x2256130 @ 0x2255e58
.word 0x2256131 @ 0x2255e5c



Unknown_2255e60: @ 0x2255e60
.incbin "./baserom/overlay/overlay_0025.bin", 0x2180, 0x2255e6c - 0x2255e60


.word Function_2253ea4+1 @ =0x2253ea5, 0x2255e6c
.word Function_2253f2c+1 @ =0x2253f2d, 0x2255e70
.word Function_225406c+1 @ =0x225406d, 0x2255e74
.word Function_22540d8+1 @ =0x22540d9, 0x2255e78

.incbin "./baserom/overlay/overlay_0025.bin", 0x219c, 0x2255f90 - 0x2255e7c


.word Function_2254820+1 @ =0x2254821, 0x2255f90
.word 0x0 @ 0x2255f94
.word 0x1 @ 0x2255f98
.word Function_2254944+1 @ =0x2254945, 0x2255f9c
.word 0x4 @ 0x2255fa0
.word 0x2 @ 0x2255fa4
.word Function_2254944+1 @ =0x2254945, 0x2255fa8
.word 0x4 @ 0x2255fac
.word 0x3 @ 0x2255fb0
.word Function_2254b8c+1 @ =0x2254b8d, 0x2255fb4
.word 0x4 @ 0x2255fb8
.word 0x4 @ 0x2255fbc
.word Function_2254a5c+1 @ =0x2254a5d, 0x2255fc0
.word 0x4 @ 0x2255fc4
.word 0x5 @ 0x2255fc8
.word Function_2254bf0+1 @ =0x2254bf1, 0x2255fcc
.word 0x4 @ 0x2255fd0
.word 0x6 @ 0x2255fd4
.word Function_2254ca8+1 @ =0x2254ca9, 0x2255fd8
.word 0x0 @ 0x2255fdc
.word 0x8 @ 0x2255fe0
.word Function_2254cf4+1 @ =0x2254cf5, 0x2255fe4
.word 0x0 @ 0x2255fe8
.word 0x7 @ 0x2255fec
.word Function_2254d24+1 @ =0x2254d25, 0x2255ff0
.word 0x0 @ 0x2255ff4
.word 0x9 @ 0x2255ff8
.word Function_2254ccc+1 @ =0x2254ccd, 0x2255ffc
.word 0x0 @ 0x2256000
.word 0xb @ 0x2256004
.word Function_2254d0c+1 @ =0x2254d0d, 0x2256008
.word 0x0 @ 0x225600c
.word 0xa @ 0x2256010
.word Function_2254d48+1 @ =0x2254d49, 0x2256014
.word 0x0 @ 0x2256018
.word 0xc @ 0x225601c
.word Function_2254d70+1 @ =0x2254d71, 0x2256020
.word 0x0 @ 0x2256024
.word 0xd @ 0x2256028
.word Function_2254d9c+1 @ =0x2254d9d, 0x225602c
.word 0x0 @ 0x2256030
.word 0xe @ 0x2256034
.word Function_2254dbc+1 @ =0x2254dbd, 0x2256038
.word 0x0 @ 0x225603c
.word 0xf @ 0x2256040
.word Function_2254f68+1 @ =0x2254f69, 0x2256044
.word 0x0 @ 0x2256048
.word 0x10 @ 0x225604c
.word Function_2255004+1 @ =0x2255005, 0x2256050
.word 0x0 @ 0x2256054
.word 0x11 @ 0x2256058
.word Function_2255064+1 @ =0x2255065, 0x225605c
.word 0x0 @ 0x2256060
.word 0xffffffff @ 0x2256064
.word 0x0 @ 0x2256068
.word 0x0 @ 0x225606c
.word 0x4000200 @ 0x2256070
.word 0x4800280 @ 0x2256074
.word 0x40f0801 @ 0x2256078
.word Function_2255cdc+1 @ =0x2255cdd, 0x225607c
.word Function_2255cf8+1 @ =0x2255cf9, 0x2256080
.word Function_2255d58+1 @ =0x2255d59, 0x2256084
.word Function_2255d90+1 @ =0x2255d91, 0x2256088
.word Function_2255da8+1 @ =0x2255da9, 0x225608c
@ 0x2256090


.incbin "./baserom/overlay/overlay_0025.bin", 0x23b0, 0x22561c0 - 0x2256090


@end 0x22561c0




