
.include "source/macros_asm.s"


@ 0x195000 in arm9.bin

.section .iwram9, "ax"



.thumb
Function_2249960: @ 2249960 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	bl      GetOverWorldData_VariableAreaAdresses
	bl      Function_2027860
	mov     r1, #0x9
	bl      Function_2027f6c
	mov     r4, r0
	ldr     r1, [pc, #0xe4] @ 0x2249a5c, (=0x1e74)
	mov     r0, #0x4
	bl      malloc
	ldr     r2, [pc, #0xdc] @ 0x2249a5c, (=0x1e74)
	mov     r5, r0
	mov     r1, #0x0
	blx     Call_FillMemWithValue
	str     r6, [r5, #0x0]
	str     r4, [r5, #0x4]
	ldr     r0, [r6, #0x4]
	str     r5, [r0, #0x24]
	mov     r0, r5
	bl      Function_2249c88
	ldr     r0, [r4, #0x0]
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	bne     branch_22499a2
	mov     r0, r5
	bl      Function_2249cc4
.thumb
branch_22499a2: @ 22499a2 :thumb
	mov     r0, r5
	bl      Function_224be14
	mov     r0, r5
	bl      Function_2249f50
	mov     r0, r5
	bl      Function_2249f88
	mov     r0, r5
	mov     r1, #0x6
	bl      Function_224a1e4
	mov     r0, r5
	bl      Function_224d744
	mov     r0, r5
	bl      Function_224adc0
	mov     r0, r5
	bl      Function_224b3a8
	mov     r1, #0x6a
	lsl     r1, r1, #2
	ldr     r2, [r5, #0x10]
	mov     r0, r5
	add     r1, r5, r1
	bl      Function_224aee4
	mov     r0, r5
	bl      Function_224f724
	mov     r0, r5
	bl      Function_2249ff4
	mov     r0, r5
	bl      Function_224a570
	mov     r0, r5
	bl      Function_224a8c0
	mov     r0, r5
	bl      Function_224ee40
	mov     r0, r5
	bl      Function_224eb68
	mov     r0, r5
	bl      Function_224b514
	mov     r0, r5
	bl      Function_224dc34
	mov     r0, r5
	bl      Function_224e33c
	mov     r0, r5
	bl      Function_2249e94
	mov     r0, r5
	bl      Function_224c8e8
	mov     r0, r5
	bl      Function_224cbd8
	mov     r0, r5
	bl      Function_224dca8
	ldr     r1, [r5, #0x0]
	mov     r2, #0x6a
	lsl     r2, r2, #2
	ldr     r1, [r1, #0x40]
	mov     r0, r5
	add     r2, r5, r2
	bl      Function_224b1b4
	mov     r0, r5
	bl      Function_224e984
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x40]
	bl      Function_5_21f34b8
	mov     r0, r5
	bl      Function_2249ef0
	ldr     r1, [r4, #0x0]
	mov     r0, #0x1
	bic     r1, r0
	mov     r0, #0x1
	orr     r0, r1
	str     r0, [r4, #0x0]
	pop     {r4-r6,pc}
@ 0x2249a5c

.word 0x1e74 @ 0x2249a5c
.thumb
Function_2249a60: @ 2249a60 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	ldr     r4, [r0, #0x24]
	mov     r0, r4
	bl      Function_2249f18
	mov     r0, r4
	bl      Function_224e988
	mov     r0, r4
	bl      Function_224cbf8
	mov     r0, r4
	bl      Function_224c9e8
	mov     r0, r4
	bl      Function_2249ec8
	mov     r0, r4
	bl      Function_224e34c
	mov     r0, r4
	bl      Function_224dc4c
	mov     r0, r4
	bl      Function_224b560
	mov     r0, r4
	bl      Function_224eb94
	mov     r0, r4
	bl      Function_224ee6c
	mov     r0, r4
	bl      Function_224a9e8
	mov     r0, r4
	bl      Function_224a574
	mov     r0, r4
	bl      Function_224a0c8
	mov     r0, r4
	bl      Function_224f760
	mov     r0, #0x6a
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_224b064
	mov     r0, r4
	bl      Function_224b3f4
	mov     r0, r4
	bl      Function_224aed8
	mov     r0, r4
	bl      Function_224d994
	mov     r0, r4
	bl      Function_224a334
	mov     r0, r4
	bl      Function_2249f98_Dummy
	mov     r0, r4
	bl      Function_2249f84
	mov     r0, r4
	bl      Function_224be8c
	mov     r0, r4
	bl      Function_2249cac
	mov     r0, r4
	bl      free
	ldr     r0, [r5, #0x4]
	mov     r1, #0x0
	str     r1, [r0, #0x24]
	pop     {r3-r5,pc}
@ 0x2249b04

.thumb
Function_2249b04: @ 2249b04 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_22510d0
	bl      Function_224d720
	mov     r4, r0
	mov     r0, r5
	bl      Function_224b570
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2249d44
	ldr     r1, [r4, #0x4]
	mov     r0, r5
	bl      Function_224ec94
	ldr     r1, [r4, #0x4]
	mov     r0, r5
	bl      Function_224dc74
	ldr     r1, [r4, #0x4]
	mov     r0, r5
	bl      Function_224f0a4
	ldr     r1, [r4, #0x8]
	mov     r0, r5
	bl      Function_224bf18
	mov     r0, r5
	bl      Function_224db1c
	mov     r0, r5
	bl      Function_224b4cc
	ldr     r1, [r4, #0x8]
	mov     r0, r5
	bl      Function_224ec48
	ldr     r1, [r4, #0x8]
	mov     r0, r5
	bl      Function_224dd24
	ldr     r1, [r4, #0x8]
	mov     r0, r5
	bl      Function_224f078
	pop     {r3-r5,pc}
@ 0x2249b66


.align 2, 0


.thumb
Function_2249b68: @ 2249b68 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      Function_22510d0
	mov     r6, r0
	bl      Function_224d720
	ldr     r0, [r0, #0x8]
	bl      Function_224d720
	mov     r4, r0
	mov     r0, r5
	bl      Function_224b580
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2249d44
	ldr     r1, [r4, #0x8]
	mov     r0, r5
	bl      Function_224ec94
	ldr     r1, [r4, #0x8]
	mov     r0, r5
	bl      Function_224dc74
	ldr     r1, [r4, #0x8]
	mov     r0, r5
	bl      Function_224f0a4
	mov     r0, r5
	mov     r1, r6
	bl      Function_224beb4
	mov     r0, r5
	bl      Function_224db1c
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_224b45c
	mov     r0, r5
	mov     r1, r6
	bl      Function_224ec48
	mov     r0, r5
	mov     r1, r6
	bl      Function_224dd24
	mov     r0, r5
	mov     r1, r6
	bl      Function_224f078
	pop     {r4-r6,pc}
@ 0x2249bd4

.thumb
Function_2249bd4: @ 2249bd4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_224b570
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2249d44
	mov     r0, r5
	mov     r1, r4
	bl      Function_224ec94
	mov     r0, r5
	mov     r1, r4
	bl      Function_224dc74
	mov     r0, r5
	mov     r1, r4
	bl      Function_224f0a4
	mov     r0, r5
	bl      Function_224db1c
	pop     {r3-r5,pc}
@ 0x2249c06


.align 2, 0


.thumb
Function_2249c08: @ 2249c08 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_224b4cc
	mov     r0, r5
	mov     r1, r4
	bl      Function_224ec48
	mov     r0, r5
	mov     r1, r4
	bl      Function_224dd24
	mov     r0, r5
	mov     r1, r4
	bl      Function_224f078
	pop     {r3-r5,pc}
@ 0x2249c2c

.thumb
Function_2249c2c: @ 2249c2c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_224b580
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2249d44
	mov     r0, r5
	mov     r1, r4
	bl      Function_224ec94
	mov     r0, r5
	mov     r1, r4
	bl      Function_224dc74
	mov     r0, r5
	mov     r1, r4
	bl      Function_224f0a4
	mov     r0, r5
	bl      Function_224db1c
	pop     {r3-r5,pc}
@ 0x2249c5e


.align 2, 0


.thumb
Function_2249c60: @ 2249c60 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r1, #0x1
	bl      Function_224b45c
	mov     r0, r5
	mov     r1, r4
	bl      Function_224ec48
	mov     r0, r5
	mov     r1, r4
	bl      Function_224dd24
	mov     r0, r5
	mov     r1, r4
	bl      Function_224f078
	pop     {r3-r5,pc}
@ 0x2249c86


.align 2, 0


.thumb
Function_2249c88: @ 2249c88 :thumb
	push    {r4,lr}
	mov     r4, r0

	mov     r0, #TwArc_Narc
	mov     r1, #0x4
	bl      LoadFromNARC_8
	str     r0, [r4, #0x8]

	mov     r0, #TwArcAttr_Narc
	mov     r1, #0x4
	bl      LoadFromNARC_8
	str     r0, [r4, #0xc]

	mov     r0, #TwArcEtc_Narc
	mov     r1, #0x4
	bl      LoadFromNARC_8
	str     r0, [r4, #0x10]

	pop     {r4,pc}
@ 0x2249cac


.thumb
Function_2249cac: @ 2249cac :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	bl      Call_FS_CloseFile
	ldr     r0, [r4, #0xc]
	bl      Call_FS_CloseFile
	ldr     r0, [r4, #0x10]
	bl      Call_FS_CloseFile
	pop     {r4,pc}
@ 0x2249cc4

.thumb
Function_2249cc4: @ 2249cc4 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r0, [r6, #0x0]
	ldr     r4, [r6, #0x4]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	mov     r7, r0
	mov     r0, #0x0
	str     r0, [r4, #0xc]
	mov     r0, r6
	mov     r5, #0x88
	bl      Function_22510d0
	ldr     r1, [pc, #0x2c] @ 0x2249d10, (=0x245)
	cmp     r0, r1
	bne     branch_2249ce8
	ldr     r5, [pc, #0x2c] @ 0x2249d14, (=0x69f)
.thumb
branch_2249ce8: @ 2249ce8 :thumb
	mov     r0, r6
	mov     r1, r5
	bl      Function_2249d68
	mov     r0, r7
	mov     r1, #0x2
	bl      Function_206afc0
	cmp     r0, #0x0
	ldr     r1, [r4, #0xc]
	bne     branch_2249d06
	mov     r0, #0x7
	orr     r0, r1
	str     r0, [r4, #0xc]
	pop     {r3-r7,pc}
@ 0x2249d06

.thumb
branch_2249d06: @ 2249d06 :thumb
	mov     r0, #0x77
	lsl     r0, r0, #6
	orr     r0, r1
	str     r0, [r4, #0xc]
	pop     {r3-r7,pc}
@ 0x2249d10

.word 0x245 @ 0x2249d10
.word 0x69f @ 0x2249d14
.thumb
Function_2249d18: @ 2249d18 :thumb
	ldr     r0, [r0, #0x4]
	strh    r1, [r0, #0x4]
	strh    r2, [r0, #0x6]
	strh    r3, [r0, #0x8]
	bx      lr
@ 0x2249d22


.align 2, 0


.thumb
Function_2249d24: @ 2249d24 :thumb
	push    {r3,r4}
	ldr     r4, [r0, #0x4]
	ldrh    r0, [r4, #0x4]
	strh    r0, [r1, #0x0]
	ldrh    r0, [r4, #0x6]
	strh    r0, [r2, #0x0]
	ldrh    r0, [r4, #0x8]
	strh    r0, [r3, #0x0]
	pop     {r3,r4}
	bx      lr
@ 0x2249d38

.thumb
Function_2249d38: @ 2249d38 :thumb
	ldr     r0, [r0, #0x4]
	ldr     r0, [r0, #0x0]
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	bx      lr
@ 0x2249d42


.align 2, 0


.thumb
Function_2249d44: @ 2249d44 :thumb
	ldr     r3, [r0, #0x4]
	ldr     r0, [pc, #0x10] @ 0x2249d58, (=0xfe000001)
	ldr     r2, [r3, #0x0]
	and     r2, r0
	lsl     r0, r1, #8
	lsr     r0, r0, #7
	orr     r0, r2
	str     r0, [r3, #0x0]
	bx      lr
@ 0x2249d56


.align 2


.word 0xfe000001 @ 0x2249d58
.thumb
Function_2249d5c: @ 2249d5c :thumb
	ldr     r0, [r0, #0x4]
	ldr     r0, [r0, #0x0]
	lsl     r0, r0, #7
	lsr     r0, r0, #8
	bx      lr
@ 0x2249d66


.align 2, 0


.thumb
Function_2249d68: @ 2249d68 :thumb
	ldr     r0, [r0, #0x4]
	strh    r1, [r0, #0xa]
	bx      lr
@ 0x2249d6e


.align 2, 0


.thumb
Function_2249d70: @ 2249d70 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r4, [r0, #0x4]
	cmp     r5, #0xb
	bcc     branch_2249d7e
	bl      ErrorHandling
.thumb
branch_2249d7e: @ 2249d7e :thumb
	mov     r0, #0x1
	ldrh    r1, [r4, #0xa]
	lsl     r0, r5
	orr     r0, r1
	strh    r0, [r4, #0xa]
	pop     {r3-r5,pc}
@ 0x2249d8a


.align 2, 0


.thumb
Function_2249d8c: @ 2249d8c :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r4, [r0, #0x4]
	cmp     r5, #0xb
	bcc     branch_2249d9a
	bl      ErrorHandling
.thumb
branch_2249d9a: @ 2249d9a :thumb
	mov     r0, #0x1
	lsl     r0, r5
	ldrh    r1, [r4, #0xa]
	mvn     r0, r0
	and     r0, r1
	strh    r0, [r4, #0xa]
	pop     {r3-r5,pc}
@ 0x2249da8

.thumb
Function_2249da8: @ 2249da8 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r5, [r0, #0x4]
	cmp     r4, #0xb
	bcc     branch_2249db6
	bl      ErrorHandling
.thumb
branch_2249db6: @ 2249db6 :thumb
	mov     r0, #0x1
	mov     r1, r0
	ldrh    r2, [r5, #0xa]
	lsl     r1, r4
	tst     r1, r2
	bne     branch_2249dc4
	mov     r0, #0x0
.thumb
branch_2249dc4: @ 2249dc4 :thumb
	pop     {r3-r5,pc}
@ 0x2249dc6


.align 2, 0


.thumb
Function_2249dc8: @ 2249dc8 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r4, [r0, #0x4]
	cmp     r5, #0x11
	bcc     branch_2249dd6
	bl      ErrorHandling
.thumb
branch_2249dd6: @ 2249dd6 :thumb
	mov     r0, #0x1
	ldr     r1, [r4, #0xc]
	lsl     r0, r5
	orr     r0, r1
	str     r0, [r4, #0xc]
	pop     {r3-r5,pc}
@ 0x2249de2


.align 2, 0


.thumb
Function_2249de4: @ 2249de4 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r4, [r0, #0x4]
	cmp     r5, #0x11
	bcc     branch_2249df2
	bl      ErrorHandling
.thumb
branch_2249df2: @ 2249df2 :thumb
	mov     r0, #0x1
	lsl     r0, r5
	ldr     r1, [r4, #0xc]
	mvn     r0, r0
	and     r0, r1
	str     r0, [r4, #0xc]
	pop     {r3-r5,pc}
@ 0x2249e00

.thumb
Function_2249e00: @ 2249e00 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r5, [r0, #0x4]
	cmp     r4, #0x11
	bcc     branch_2249e0e
	bl      ErrorHandling
.thumb
branch_2249e0e: @ 2249e0e :thumb
	mov     r0, #0x1
	mov     r1, r0
	ldr     r2, [r5, #0xc]
	lsl     r1, r4
	tst     r1, r2
	bne     branch_2249e1c
	mov     r0, #0x0
.thumb
branch_2249e1c: @ 2249e1c :thumb
	pop     {r3-r5,pc}
@ 0x2249e1e


.align 2, 0


.thumb
Function_2249e20: @ 2249e20 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r4, [r0, #0x4]
	cmp     r5, #0x10
	bcc     branch_2249e2e
	bl      ErrorHandling
.thumb
branch_2249e2e: @ 2249e2e :thumb
	ldr     r1, [r4, #0x0]
	ldr     r0, [pc, #0xc] @ 0x2249e40, (=0xe1ffffff)
	and     r1, r0
	lsl     r0, r5, #28
	lsr     r0, r0, #3
	orr     r0, r1
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x2249e3e


.align 2


.word 0xe1ffffff @ 0x2249e40
.thumb
Function_2249e44: @ 2249e44 :thumb
	ldr     r0, [r0, #0x4]
	ldr     r0, [r0, #0x0]
	lsl     r0, r0, #3
	lsr     r0, r0, #28
	bx      lr
@ 0x2249e4e


.align 2, 0
.thumb
.globl Function_9_2249e50
Function_9_2249e50: @ 2249e50 :thumb
	push    {r4-r6,lr}
	ldr     r0, [r0, #0x4]
	mov     r5, r1
	ldr     r0, [r0, #0x24]
	mov     r6, r2
	ldr     r4, [sp, #0x10]
	bl      Function_22510d0
	ldr     r1, [pc, #0x2c] @ 0x2249e90, (=0x246)
	cmp     r0, r1
	bne     branch_2249e74
	cmp     r5, #0xf
	bne     branch_2249e88
	cmp     r6, #0x1a
	bne     branch_2249e88
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r4-r6,pc}
@ 0x2249e74

.thumb
branch_2249e74: @ 2249e74 :thumb
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	bne     branch_2249e88
	cmp     r5, #0x59
	bne     branch_2249e88
	cmp     r6, #0x38
	bne     branch_2249e88
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r4-r6,pc}
@ 0x2249e88

.thumb
branch_2249e88: @ 2249e88 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	pop     {r4-r6,pc}
@ 0x2249e8e


.align 2


.word 0x246 @ 0x2249e90
.thumb
Function_2249e94: @ 2249e94 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x61
	lsl     r0, r0, #2
	add     r1, r4, r0
	mov     r0, #0x0
	strb    r0, [r1, #0x0]
	strb    r0, [r1, #0x1]
	strb    r0, [r1, #0x2]
	strb    r0, [r1, #0x3]
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x38]
	bl      GetSpriteListc
	mov     r2, r0
	ldr     r0, [pc, #0x10] @ 0x2249ec4, (=0x2249edd)
	mov     r1, r4
	.hword  0x1c92 @ add r2, r2, #0x2
	bl      AddTaskToTaskList1
	mov     r1, #0x61
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	pop     {r4,pc}
@ 0x2249ec4

.word 0x2249edd @ 0x2249ec4
.thumb
Function_2249ec8: @ 2249ec8 :thumb
	push    {r3,lr}
	mov     r1, #0x61
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	cmp     r0, #0x0
	beq     branch_2249ed8
	bl      Call_RemoveTaskFromTaskList
.thumb
branch_2249ed8: @ 2249ed8 :thumb
	pop     {r3,pc}
@ 0x2249eda


.align 2, 0


.thumb
Function_2249edc: @ 2249edc :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	bl      Function_224a49c
	mov     r0, r4
	bl      Function_224f764
	pop     {r4,pc}
@ 0x2249eee


.align 2, 0


.thumb
Function_2249ef0: @ 2249ef0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x18] @ 0x2249f10, (=0x1e70)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_2249f00
	bl      ErrorHandling
.thumb
branch_2249f00: @ 2249f00 :thumb
	ldr     r0, [pc, #0x10] @ 0x2249f14, (=0x2249f3d)
	mov     r1, r4
	mov     r2, #0x80
	bl      AddTaskToTaskList2
	ldr     r1, [pc, #0x4] @ 0x2249f10, (=0x1e70)
	str     r0, [r4, r1]
	pop     {r4,pc}
@ 0x2249f10

.word 0x1e70 @ 0x2249f10
.word 0x2249f3d @ 0x2249f14
.thumb
Function_2249f18: @ 2249f18 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x18] @ 0x2249f38, (=0x1e70)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_2249f28
	bl      ErrorHandling
.thumb
branch_2249f28: @ 2249f28 :thumb
	ldr     r0, [pc, #0xc] @ 0x2249f38, (=0x1e70)
	ldr     r0, [r4, r0]
	bl      Call_RemoveTaskFromTaskList
	ldr     r0, [pc, #0x4] @ 0x2249f38, (=0x1e70)
	mov     r1, #0x0
	str     r1, [r4, r0]
	pop     {r4,pc}
@ 0x2249f38

.word 0x1e70 @ 0x2249f38
.thumb
Function_2249f3c: @ 2249f3c :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	bl      Function_224cc4c
	mov     r0, r4
	bl      Function_224f804
	pop     {r4,pc}
@ 0x2249f4e


.align 2, 0


.thumb
Function_2249f50: @ 2249f50 :thumb
	push    {r4,lr}
	ldr     r2, [pc, #0x20] @ 0x2249f74, (=0x1084)
	ldr     r1, [pc, #0x20] @ 0x2249f78, (=0x1e5c)
	mov     r3, #0x0
	mov     r4, r0
.thumb
branch_2249f5a: @ 2249f5a :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	strh    r2, [r4, r1]
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r3, #0x8
	blt     branch_2249f5a
	ldr     r2, [pc, #0x14] @ 0x2249f7c, (=0x1c64)
	ldr     r1, [pc, #0x18] @ 0x2249f80, (=0x1e5e)
	strh    r2, [r0, r1]
	.hword  0x1e89 @ sub r1, r1, #0x2
	add     r0, r0, r1
	blx     SetEdgeTable
	pop     {r4,pc}
@ 0x2249f74

.word 0x1084 @ 0x2249f74
.word 0x1e5c @ 0x2249f78
.word 0x1c64 @ 0x2249f7c
.word 0x1e5e @ 0x2249f80



.thumb
Function_2249f84: @ 2249f84 :thumb
	bx      lr
@ 0x2249f86


.align 2, 0
.thumb
Function_2249f88: @ 2249f88 :thumb
	ldr     r0, [r0, #0x0]
	ldr     r3, [pc, #0x8] @ 0x2249f94, (=Function_2062ccc+1)
	ldr     r0, [r0, #0x38]
	mov     r1, #0x0
	bx      r3
@ 0x2249f92

.align 2
.word Function_2062ccc+1 @ 0x2249f94



.thumb
Function_2249f98_Dummy: @ 2249f98 :thumb
	bx      lr
@ 0x2249f9a


.align 2, 0
.thumb
.globl Function_9_2249f9c
Function_9_2249f9c: @ 2249f9c :thumb
	push    {r4,lr}
	add     sp, #-0x8
	ldr     r0, [r0, #0x4]
	ldr     r1, [r0, #0x24]
	mov     r0, r1
	add     r0, #0x14
	ldrh    r3, [r0, #0x4]
	ldrh    r2, [r0, #0xc]
	add     r3, r3, r2
	add     r2, sp, #0x0
	strh    r3, [r2, #0x0]
	ldrh    r4, [r0, #0x6]
	ldrh    r3, [r0, #0xe]
	add     r3, r4, r3
	strh    r3, [r2, #0x2]
	ldrh    r3, [r0, #0x8]
	ldrh    r0, [r0, #0x10]
	add     r0, r3, r0
	strh    r0, [r2, #0x4]
	ldr     r1, [r1, #0x14]
	add     r0, sp, #0x0
	bl      Function_20209d4
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2249fce


.align 2, 0
.thumb
.globl Function_9_2249fd0
Function_9_2249fd0: @ 2249fd0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_2249fda
	bl      ErrorHandling
branch_2249fda: @ 2249fda :thumb

	mov     r0, r4
	bl      GetOverWorldData_VariableAreaAdresses
	bl      Function_2027860
	mov     r1, #0x9
	bl      Function_2027f6c
	mov     r1, #0x0
	strh    r1, [r0, #0x4]
	strh    r1, [r0, #0x6]
	strh    r1, [r0, #0x8]
	pop     {r4,pc}
@ 0x2249ff4

.thumb
Function_2249ff4: @ 2249ff4 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x1c
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	str     r1, [r0, #0x20]
	ldr     r0, [r5, #0x0]
	ldr     r3, [pc, #0xb0] @ 0x224a0b4, (=0x22514cc)
	ldr     r0, [r0, #0x24]
	mov     r4, r5
	str     r0, [r5, #0x14]
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x8
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	add     r4, #0x14
	str     r0, [r2, #0x0]
	ldr     r0, [sp, #0x8]
	ldr     r1, [r5, #0x14]
	bl      Function_2020a50
	ldr     r1, [r5, #0x14]
	add     r0, sp, #0xc
	bl      Function_20209d4
	add     r0, sp, #0x0
	ldrh    r0, [r0, #0x16]
	ldr     r1, [r5, #0x14]
	bl      Function_2020910
	add     r0, sp, #0x0
	ldrb    r0, [r0, #0x14]
	ldr     r1, [r5, #0x14]
	bl      Function_2020854
	mov     r0, #0x96
	ldr     r1, [pc, #0x74] @ 0x224a0b8, (=0x6a4000)
	ldr     r2, [r5, #0x14]
	lsl     r0, r0, #12
	bl      Function_20206bc
	ldr     r0, [pc, #0x70] @ 0x224a0bc, (=0xd602)
	strh    r0, [r4, #0x4]
	mov     r0, #0x0
	strh    r0, [r4, #0x6]
	strh    r0, [r4, #0x8]
	mov     r0, r5
	bl      Function_2249d38
	cmp     r0, #0x1
	bne     branch_224a090
	add     r2, sp, #0x0
	mov     r0, r5
	add     r1, sp, #0x4
	add     r2, #0x2
	add     r3, sp, #0x0
	bl      Function_2249d24
	add     r0, sp, #0x0
	ldrh    r1, [r0, #0x4]
	lsl     r1, r1, #8
	strh    r1, [r4, #0x14]
	ldrh    r1, [r0, #0x2]
	lsl     r1, r1, #8
	strh    r1, [r4, #0x16]
	ldrh    r0, [r0, #0x0]
	lsl     r0, r0, #8
	strh    r0, [r4, #0x18]
	ldrh    r0, [r4, #0x14]
	strh    r0, [r4, #0xc]
	ldrh    r0, [r4, #0x16]
	strh    r0, [r4, #0xe]
	ldrh    r0, [r4, #0x18]
	strh    r0, [r4, #0x10]
	ldrh    r0, [r4, #0x1a]
	strh    r0, [r4, #0x12]
.thumb
branch_224a090: @ 224a090 :thumb
	mov     r0, r5
	bl      Function_22510d0
	ldr     r1, [pc, #0x28] @ 0x224a0c0, (=0x246)
	cmp     r0, r1
	beq     branch_224a0a4
	ldr     r1, [r4, #0x0]
	mov     r0, #0xc0
	bl      Function_202094c
.thumb
branch_224a0a4: @ 224a0a4 :thumb
	ldr     r0, [pc, #0x1c] @ 0x224a0c4, (=0x224a0dd)
	mov     r1, r5
	mov     r2, #0x0
	bl      AddTaskToTaskList1
	str     r0, [r4, #0x3c]
	add     sp, #0x1c
	pop     {r4,r5,pc}
@ 0x224a0b4

.word 0x22514cc @ 0x224a0b4
.word 0x6a4000 @ 0x224a0b8
.word 0xd602 @ 0x224a0bc
.word 0x246 @ 0x224a0c0
.word 0x224a0dd @ 0x224a0c4
.thumb
Function_224a0c8: @ 224a0c8 :thumb
	push    {r3,lr}
	ldr     r1, [r0, #0x0]
	mov     r2, #0x0
	str     r2, [r1, #0x20]
	ldr     r0, [r0, #0x50]
	cmp     r0, #0x0
	beq     branch_224a0da
	bl      Call_RemoveTaskFromTaskList
.thumb
branch_224a0da: @ 224a0da :thumb
	pop     {r3,pc}
@ 0x224a0dc

.thumb
Function_224a0dc: @ 224a0dc :thumb
	add     r1, #0x14
	ldr     r2, [r1, #0x1c]
	mov     r0, r1
	add     r0, #0x1c
	cmp     r2, #0x0
	beq     branch_224a144
	ldr     r2, [r0, #0x4]
	.hword  0x1e52 @ sub r2, r2, #0x1
	str     r2, [r0, #0x4]
	cmp     r2, #0x0
	bgt     branch_224a108
	mov     r2, #0x0
	str     r2, [r0, #0x0]
	ldrh    r0, [r1, #0x14]
	strh    r0, [r1, #0xc]
	ldrh    r0, [r1, #0x16]
	strh    r0, [r1, #0xe]
	ldrh    r0, [r1, #0x18]
	strh    r0, [r1, #0x10]
	ldrh    r0, [r1, #0x1a]
	strh    r0, [r1, #0x12]
	bx      lr
@ 0x224a108

.thumb
branch_224a108: @ 224a108 :thumb
	ldr     r3, [r0, #0x8]
	ldr     r2, [r0, #0x14]
	add     r2, r3, r2
	str     r2, [r0, #0x8]
	ldr     r3, [r0, #0xc]
	ldr     r2, [r0, #0x18]
	add     r2, r3, r2
	str     r2, [r0, #0xc]
	ldr     r3, [r0, #0x10]
	ldr     r2, [r0, #0x1c]
	add     r2, r3, r2
	str     r2, [r0, #0x10]
	ldr     r3, [r0, #0x8]
	asr     r2, r3, #11
	lsr     r2, r2, #20
	add     r2, r3, r2
	asr     r2, r2, #12
	strh    r2, [r1, #0xc]
	ldr     r3, [r0, #0xc]
	asr     r2, r3, #11
	lsr     r2, r2, #20
	add     r2, r3, r2
	asr     r2, r2, #12
	strh    r2, [r1, #0xe]
	ldr     r2, [r0, #0x10]
	asr     r0, r2, #11
	lsr     r0, r0, #20
	add     r0, r2, r0
	asr     r0, r0, #12
	strh    r0, [r1, #0x10]
.thumb
branch_224a144: @ 224a144 :thumb
	bx      lr
@ 0x224a146


.align 2, 0


.thumb
Function_224a148: @ 224a148 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r4, r0
	add     r4, #0x14
	mov     r5, r4
	ldrh    r1, [r6, #0xc]
	ldrh    r2, [r6, #0xe]
	ldrh    r3, [r6, #0x10]
	add     r5, #0x1c
	bl      Function_2249d18
	ldrh    r0, [r6, #0xc]
	lsl     r0, r0, #8
	strh    r0, [r4, #0x14]
	ldrh    r0, [r6, #0xe]
	lsl     r0, r0, #8
	strh    r0, [r4, #0x16]
	ldrh    r0, [r6, #0x10]
	lsl     r0, r0, #8
	strh    r0, [r4, #0x18]
	ldrh    r1, [r4, #0xc]
	ldrh    r0, [r4, #0x14]
	cmp     r1, r0
	bne     branch_224a18e
	ldrh    r1, [r4, #0xe]
	ldrh    r0, [r4, #0x16]
	cmp     r1, r0
	bne     branch_224a18e
	ldrh    r1, [r4, #0x10]
	ldrh    r0, [r4, #0x18]
	cmp     r1, r0
	bne     branch_224a18e
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	pop     {r4-r6,pc}
@ 0x224a18e

.thumb
branch_224a18e: @ 224a18e :thumb
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	ldr     r0, [r6, #0x14]
	str     r0, [r5, #0x4]
	ldrh    r0, [r4, #0xc]
	lsl     r0, r0, #12
	str     r0, [r5, #0x8]
	ldrh    r0, [r4, #0xe]
	lsl     r0, r0, #12
	str     r0, [r5, #0xc]
	ldrh    r0, [r4, #0x10]
	lsl     r0, r0, #12
	str     r0, [r5, #0x10]
	ldrh    r0, [r4, #0xc]
	ldrh    r1, [r4, #0x14]
	bl      Function_2250eb0
	ldr     r1, [r6, #0x14]
	lsl     r0, r0, #12
	blx     _s32_div_f
	str     r0, [r5, #0x14]
	ldrh    r0, [r4, #0xe]
	ldrh    r1, [r4, #0x16]
	bl      Function_2250eb0
	ldr     r1, [r6, #0x14]
	lsl     r0, r0, #12
	blx     _s32_div_f
	str     r0, [r5, #0x18]
	ldrh    r0, [r4, #0x10]
	ldrh    r1, [r4, #0x18]
	bl      Function_2250eb0
	ldr     r1, [r6, #0x14]
	lsl     r0, r0, #12
	blx     _s32_div_f
	str     r0, [r5, #0x1c]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x224a1e2


.align 2, 0


.thumb
Function_224a1e4: @ 224a1e4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, #0x62
	lsl     r0, r0, #2
	add     r4, r5, r0
	lsl     r6, r1, #5
	str     r1, [r4, #0x0]
	mov     r0, #0x4
	mov     r1, r6
	bl      malloc
	mov     r1, #0x0
	mov     r2, r6
	str     r0, [r4, #0x4]
	blx     Call_FillMemWithValue

	mov     r0, r4
	mov     r1, #0x4
	add     r0, #0x10
	mov     r2, r1
	bl      Function_20182cc
	ldr     r0, [r5, #0x0]
	mov     r1, #0xc5
	ldr     r0, [r0, #0x40]
	mov     r2, #0x1
	bl      Function_5_21df5c0
	mov     r1, #0x0
	str     r0, [r4, #0x8]
	blx     Function_20b3c5c
	str     r0, [r4, #0xc]
	pop     {r4-r6,pc}
@ 0x224a228


.thumb
Function_224a228: @ 224a228 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r2
	mov     r6, r0
	mov     r0, r4
	mov     r5, r1
	bl      Function_2021430
	mov     r7, r0
	mov     r0, r4
	bl      Function_2021438
	str     r0, [sp, #0x4]
	mov     r0, r4
	bl      Function_2021440
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x10]
	cmp     r0, #0x0
	beq     branch_224a254
	bl      ErrorHandling
.thumb
branch_224a254: @ 224a254 :thumb
	str     r4, [r5, #0x1c]
	mov     r0, r6
	ldr     r1, [r6, #0xc]
	add     r0, #0x10
	mov     r2, r7
	blx     Function_20b2cb4
	str     r0, [r5, #0x10]
	ldr     r1, [r6, #0xc]
	ldr     r3, [sp, #0x4]
	mov     r2, r7
	blx     Function_20ae4f0
	ldr     r0, [sp, #0x0]
	ldr     r1, [r5, #0x10]
	blx     Function_20ae77c
	ldr     r1, [pc, #0x18] @ 0x224a290, (=0x224a4c9)
	mov     r0, r4
	mov     r2, r5
	bl      Function_2021444
	ldr     r0, [r5, #0x18]
	cmp     r0, #0x0
	beq     branch_224a28c
	bl      GetSpriteGraphic
	strh    r0, [r5, #0x14]
branch_224a28c: @ 224a28c :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x224a290

.word Function_224a4c8+1 @ =0x224a4c9, 0x224a290



.thumb
Function_224a294: @ 224a294 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r1, [r4, #0x10]
	cmp     r1, #0x0
	beq     branch_224a2a8
	add     r0, #0x10
	blx     Function_20b2cd8
	mov     r0, #0x0
	str     r0, [r4, #0x10]
.thumb
branch_224a2a8: @ 224a2a8 :thumb
	pop     {r4,pc}
@ 0x224a2aa


.align 2, 0


.thumb
Function_224a2ac: @ 224a2ac :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_224a294
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x20
	blx     Call_FillMemWithValue
	pop     {r4,pc}
@ 0x224a2c0

.thumb
Function_224a2c0: @ 224a2c0 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x0
	beq     branch_224a2e2
	ldr     r1, [r4, #0x10]
	cmp     r1, #0x0
	bne     branch_224a2e2
	bl      Function_5_21eb1a0
	mov     r2, r0
	beq     branch_224a2e2
	mov     r0, r5
	mov     r1, r4
	bl      Function_224a228
branch_224a2e2: @ 224a2e2 :thumb
	pop     {r3-r5,pc}
@ 0x224a2e4


.thumb
Function_224a2e4: @ 224a2e4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x0
	beq     branch_224a320
	bl      CheckSpriteFlag_Locked
	cmp     r0, #0x0
	bne     branch_224a2fa
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x224a2fa

.thumb
branch_224a2fa: @ 224a2fa :thumb
	ldr     r0, [r4, #0x18]
	bl      GetSpriteID
	ldrh    r1, [r4, #0x16]
	cmp     r1, r0
	beq     branch_224a30a
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x224a30a

.thumb
branch_224a30a: @ 224a30a :thumb
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x0
	beq     branch_224a32e
	ldr     r0, [r4, #0x18]
	bl      GetSpriteGraphic
	ldrh    r1, [r4, #0x14]
	cmp     r1, r0
	beq     branch_224a32e
	mov     r0, #0x2
	pop     {r4,pc}
@ 0x224a320

.thumb
branch_224a320: @ 224a320 :thumb
	ldr     r0, [r4, #0x1c]
	bl      Function_2021404
	cmp     r0, #0x0
	bne     branch_224a32e
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x224a32e

.thumb
branch_224a32e: @ 224a32e :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x224a332


.align 2, 0


.thumb
Function_224a334: @ 224a334 :thumb
	push    {r4-r6,lr}
	mov     r1, #0x62
	lsl     r1, r1, #2
	add     r4, r0, r1
	ldr     r0, [r4, #0x0]
	mov     r6, #0x0
	ldr     r5, [r4, #0x4]
	cmp     r0, #0x0
	ble     branch_224a35a
	ble     branch_224a35a
.thumb
branch_224a348: @ 224a348 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_224a2ac
	ldr     r0, [r4, #0x0]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x20
	cmp     r6, r0
	blt     branch_224a348
.thumb
branch_224a35a: @ 224a35a :thumb
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x0
	beq     branch_224a368
	bl      free
	mov     r0, #0x0
	str     r0, [r4, #0x8]
.thumb
branch_224a368: @ 224a368 :thumb
	ldr     r0, [r4, #0x4]
	bl      free
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	pop     {r4-r6,pc}
@ 0x224a374

.thumb
Function_224a374: @ 224a374 :thumb
	push    {r4,lr}
	mov     r4, r0
	lsl     r0, r2, #12
	strh    r2, [r4, #0x0]
	str     r0, [r4, #0x4]
	str     r0, [r4, #0xc]
	cmp     r1, #0x0
	beq     branch_224a38e
	mov     r0, r1
	str     r1, [r4, #0x18]
	bl      GetSpriteID
	strh    r0, [r4, #0x16]
.thumb
branch_224a38e: @ 224a38e :thumb
	pop     {r4,pc}
@ 0x224a390

.thumb
Function_224a390: @ 224a390 :thumb
	push    {r3-r5,lr}
	mov     r4, #0x62
	lsl     r4, r4, #2
	add     r4, r0, r4
	ldr     r5, [r4, #0x0]
	mov     r3, #0x0
	ldr     r0, [r4, #0x4]
	cmp     r5, #0x0
	ble     branch_224a3bc
.thumb
branch_224a3a2: @ 224a3a2 :thumb
	ldr     r4, [r0, #0x18]
	cmp     r4, #0x0
	bne     branch_224a3b4
	ldr     r4, [r0, #0x1c]
	cmp     r4, #0x0
	bne     branch_224a3b4
	bl      Function_224a374
	pop     {r3-r5,pc}
@ 0x224a3b4

.thumb
branch_224a3b4: @ 224a3b4 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	add     r0, #0x20
	cmp     r3, r5
	blt     branch_224a3a2
.thumb
branch_224a3bc: @ 224a3bc :thumb
	bl      ErrorHandling
	pop     {r3-r5,pc}
@ 0x224a3c2


.align 2, 0


.thumb
Function_224a3c4: @ 224a3c4 :thumb
	push    {r4-r6,lr}
	mov     r3, #0x62
	lsl     r3, r3, #2
	add     r4, r0, r3
	ldr     r0, [r4, #0x0]
	mov     r6, r1
	mov     r1, #0x0
	ldr     r5, [r4, #0x4]
	cmp     r0, #0x0
	ble     branch_224a400
.thumb
branch_224a3d8: @ 224a3d8 :thumb
	ldr     r3, [r5, #0x18]
	cmp     r3, #0x0
	bne     branch_224a3f8
	ldr     r3, [r5, #0x1c]
	cmp     r3, #0x0
	bne     branch_224a3f8
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_224a374
	mov     r0, r4
	mov     r1, r5
	mov     r2, r6
	bl      Function_224a228
	pop     {r4-r6,pc}
@ 0x224a3f8

.thumb
branch_224a3f8: @ 224a3f8 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r5, #0x20
	cmp     r1, r0
	blt     branch_224a3d8
.thumb
branch_224a400: @ 224a400 :thumb
	bl      ErrorHandling
	pop     {r4-r6,pc}
@ 0x224a406


.align 2, 0


.thumb
Function_224a408: @ 224a408 :thumb
	push    {r3-r5,lr}
	mov     r2, #0x62
	lsl     r2, r2, #2
	add     r0, r0, r2
	ldr     r5, [r0, #0x0]
	mov     r3, #0x0
	ldr     r4, [r0, #0x4]
	cmp     r5, #0x0
	ble     branch_224a430
.thumb
branch_224a41a: @ 224a41a :thumb
	ldr     r2, [r4, #0x1c]
	cmp     r2, r1
	bne     branch_224a428
	mov     r1, r4
	bl      Function_224a2ac
	pop     {r3-r5,pc}
@ 0x224a428

.thumb
branch_224a428: @ 224a428 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	add     r4, #0x20
	cmp     r3, r5
	blt     branch_224a41a
.thumb
branch_224a430: @ 224a430 :thumb
	bl      ErrorHandling
	pop     {r3-r5,pc}
@ 0x224a436


.align 2, 0


.thumb
Function_224a438: @ 224a438 :thumb
	push    {r3-r5,lr}
	mov     r4, r2
	ldr     r0, [r4, #0x18]
	mov     r5, r1
	cmp     r0, #0x0
	bne     branch_224a44a
	ldr     r0, [r4, #0x1c]
	cmp     r0, #0x0
	beq     branch_224a49a
.thumb
branch_224a44a: @ 224a44a :thumb
	mov     r0, r4
	bl      Function_224a2e4
	cmp     r0, #0x1
	bne     branch_224a45e
	mov     r0, r5
	mov     r1, r4
	bl      Function_224a2ac
	pop     {r3-r5,pc}
@ 0x224a45e

.thumb
branch_224a45e: @ 224a45e :thumb
	cmp     r0, #0x2
	bne     branch_224a46a
	mov     r0, r5
	mov     r1, r4
	bl      Function_224a294
.thumb
branch_224a46a: @ 224a46a :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_224a2c0
	mov     r0, #0x2
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_224a49a
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, #0x2]
	ldr     r1, [r4, #0x8]
	add     r0, r4, #0x4
	bl      Function_2250f1c
	mov     r0, #0x2
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_224a496
	mov     r0, #0x0
	ldsh    r0, [r4, r0]
	lsl     r0, r0, #12
	str     r0, [r4, #0x4]
.thumb
branch_224a496: @ 224a496 :thumb
	ldr     r0, [r4, #0x4]
	str     r0, [r4, #0xc]
.thumb
branch_224a49a: @ 224a49a :thumb
	pop     {r3-r5,pc}
@ 0x224a49c

.thumb
Function_224a49c: @ 224a49c :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r0, #0x62
	lsl     r0, r0, #2
	add     r4, r7, r0
	ldr     r0, [r4, #0x0]
	mov     r6, #0x0
	ldr     r5, [r4, #0x4]
	cmp     r0, #0x0
	ble     branch_224a4c6
	ble     branch_224a4c6
.thumb
branch_224a4b2: @ 224a4b2 :thumb
	mov     r0, r7
	mov     r1, r4
	mov     r2, r5
	bl      Function_224a438
	ldr     r0, [r4, #0x0]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x20
	cmp     r6, r0
	blt     branch_224a4b2
.thumb
branch_224a4c6: @ 224a4c6 :thumb
	pop     {r3-r7,pc}
@ 0x224a4c8

.thumb
Function_224a4c8: @ 224a4c8 :thumb
	ldr     r2, [r1, #0xc]
	ldr     r0, [r1, #0x10]
	str     r2, [r0, #0x0]
	bx      lr
@ 0x224a4d0

.thumb
Function_224a4d0: @ 224a4d0 :thumb
	push    {r4-r6,lr}
	mov     r5, r2
	mov     r2, #0x62
	mov     r4, r0
	lsl     r2, r2, #2
	add     r2, r4, r2
	mov     r6, r3
	mov     r0, r1
	ldr     r3, [r2, #0x0]
	mov     r1, #0x0
	ldr     r4, [r2, #0x4]
	cmp     r3, #0x0
	ble     branch_224a518
.thumb
branch_224a4ea: @ 224a4ea :thumb
	ldr     r2, [r4, #0x18]
	cmp     r2, r0
	bne     branch_224a510
	mov     r0, #0x0
	ldsh    r0, [r4, r0]
	mov     r1, r6
	lsl     r0, r0, #12
	str     r0, [r4, #0x4]
	lsl     r0, r5, #12
	blx     _s32_div_f
	str     r0, [r4, #0x8]
	lsl     r1, r5, #16
	mov     r0, r4
	asr     r1, r1, #16
	strh    r6, [r4, #0x2]
	bl      Function_2250ee8
	pop     {r4-r6,pc}
@ 0x224a510

.thumb
branch_224a510: @ 224a510 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r4, #0x20
	cmp     r1, r3
	blt     branch_224a4ea
.thumb
branch_224a518: @ 224a518 :thumb
	bl      ErrorHandling
	pop     {r4-r6,pc}
@ 0x224a51e


.align 2, 0
.thumb
.globl Function_9_224a520
Function_9_224a520: @ 224a520 :thumb
	push    {r3,r4}
	ldr     r0, [r0, #0x4]
	mov     r3, #0x0
	ldr     r2, [r0, #0x24]
	mov     r0, #0x62
	lsl     r0, r0, #2
	add     r0, r2, r0
	ldr     r4, [r0, #0x0]
	ldr     r2, [r0, #0x4]
	cmp     r4, #0x0
	ble     branch_224a552
branch_224a536: @ 224a536 :thumb
	ldr     r0, [r2, #0x18]
	cmp     r0, r1
	bne     branch_224a54a
	ldr     r1, [r2, #0xc]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r0, r0, #12
	pop     {r3,r4}
	bx      lr
@ 0x224a54a

.thumb
branch_224a54a: @ 224a54a :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	add     r2, #0x20
	cmp     r3, r4
	blt     branch_224a536
branch_224a552: @ 224a552 :thumb
	mov     r0, #0x0
	pop     {r3,r4}
	bx      lr
@ 0x224a558


.thumb
.globl Function_9_224a558
Function_9_224a558: @ 224a558 :thumb
	ldr     r0, [r0, #0x4]
	ldr     r3, [pc, #0x4] @ 0x224a560, (=0x224a3c5)
	ldr     r0, [r0, #0x24]
	bx      r3
@ 0x224a560

.word 0x224a3c5 @ 0x224a560



.thumb
.globl Function_9_224a564
Function_9_224a564: @ 224a564 :thumb
	ldr     r0, [r0, #0x4]
	ldr     r3, [pc, #0x4] @ 0x224a56c, (=0x224a409)
	ldr     r0, [r0, #0x24]
	bx      r3
@ 0x224a56c

.word 0x224a409 @ 0x224a56c



.thumb
Function_224a570: @ 224a570 :thumb
	bx      lr
@ 0x224a572


.align 2, 0


.thumb
Function_224a574: @ 224a574 :thumb
	bx      lr
@ 0x224a576


.align 2, 0


.thumb
Function_224a578: @ 224a578 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0x80
	ble     branch_224a586
	bl      ErrorHandling
.thumb
branch_224a586: @ 224a586 :thumb
	add     r5, #0x58
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, r4
	blx     Call_FillMemWithValue
	mov     r0, r5
	pop     {r3-r5,pc}
@ 0x224a596


.align 2, 0


.thumb
Function_224a598: @ 224a598 :thumb
	add     r0, #0x58
	bx      lr
@ 0x224a59c


.thumb
.globl Function_9_224a59c
Function_9_224a59c: @ 224a59c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r6, r0
	mov     r5, r1
	bl      GetOverWorldData_VariableAreaAdresses
	bl      Function_2027860
	bl      Function_2027f80
	cmp     r0, #0x9
	bne     branch_224a668
	ldr     r0, [r6, #0x4]
	mov     r1, r5
	ldr     r4, [r0, #0x24]
	ldr     r0, [r6, #0x3c]
	bl      Function_2061434
	mov     r6, r0
	mov     r0, r4
	add     r1, sp, #0xc
	add     r2, sp, #0x8
	add     r3, sp, #0x4
	bl      Function_2250f44
	cmp     r6, #0x1
	bne     branch_224a5e0
	str     r5, [sp, #0x0]
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x8]
	ldr     r3, [sp, #0x4]
	mov     r0, r4
	bl      Function_224b748
.thumb
branch_224a5e0: @ 224a5e0 :thumb
	str     r5, [sp, #0x0]
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x8]
	ldr     r3, [sp, #0x4]
	mov     r0, r4
	bl      Function_224a8a0
	str     r5, [sp, #0x0]
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x8]
	ldr     r3, [sp, #0x4]
	mov     r0, r4
	bl      Function_224aa00
	cmp     r0, #0x1
	bne     branch_224a606
	add     sp, #0x10
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x224a606

.thumb
branch_224a606: @ 224a606 :thumb
	mov     r0, r4
	bl      Function_22510d0
	ldr     r1, [pc, #0x60] @ 0x224a670, (=0x241)
	cmp     r0, r1
	bne     branch_224a63a
	cmp     r5, #0x3
	bne     branch_224a668
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x68
	bne     branch_224a668
	ldr     r0, [sp, #0x8]
	cmp     r0, #0xaa
	bne     branch_224a668
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x4c
	blt     branch_224a668
	cmp     r0, #0x4f
	bgt     branch_224a668
	ldr     r1, [pc, #0x44] @ 0x224a674, (=0x2251438)
	mov     r0, r4
	bl      Function_224e498
	add     sp, #0x10
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x224a63a

.thumb
branch_224a63a: @ 224a63a :thumb
	.hword  0x1c89 @ add r1, r1, #0x2
	cmp     r0, r1
	bne     branch_224a668
	cmp     r5, #0x3
	bne     branch_224a668
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x68
	bne     branch_224a668
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x80
	bne     branch_224a668
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x4c
	blt     branch_224a668
	cmp     r0, #0x4f
	bgt     branch_224a668
	ldr     r1, [pc, #0x1c] @ 0x224a678, (=0x22513d8)
	mov     r0, r4
	bl      Function_224e498
	add     sp, #0x10
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x224a668

.thumb
branch_224a668: @ 224a668 :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x224a66e

.align 2
.word 0x241 @ 0x224a670
.word 0x2251438 @ 0x224a674
.word 0x22513d8 @ 0x224a678



.thumb
.globl Function_9_224a67c
Function_9_224a67c: @ 224a67c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x18
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	mov     r4, r1
	ldr     r6, [r0, #0x24]
	mov     r0, r6
	bl      Function_22510d0
	ldr     r1, [pc, #0x88] @ 0x224a718, (=0x245)
	cmp     r0, r1
	beq     branch_224a69c
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r0, r1
	beq     branch_224a6de
	b       branch_224a710
@ 0x224a69c

.thumb
branch_224a69c: @ 224a69c :thumb
	cmp     r4, #0x0
	bne     branch_224a710
	ldr     r0, [r6, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	bl      Function_206b5d8
	cmp     r0, #0xa
	bcc     branch_224a710
	mov     r0, r6
	add     r1, sp, #0x14
	add     r2, sp, #0x10
	add     r3, sp, #0xc
	bl      Function_2250f44
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x59
	bne     branch_224a710
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x41
	bne     branch_224a710
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x39
	bne     branch_224a710
	mov     r0, r5
	mov     r1, #0x2
	mov     r2, #0x0
	bl      Function_203e880
	add     sp, #0x18
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x224a6de

.thumb
branch_224a6de: @ 224a6de :thumb
	cmp     r4, #0x1
	bne     branch_224a710
	mov     r0, r6
	add     r1, sp, #0x8
	add     r2, sp, #0x4
	add     r3, sp, #0x0
	bl      Function_2250f44
	ldr     r0, [sp, #0x8]
	cmp     r0, #0xf
	bne     branch_224a710
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x1
	bne     branch_224a710
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x19
	bne     branch_224a710
	mov     r0, r5
	mov     r1, #0x4
	mov     r2, #0x0
	bl      Function_203e880
	add     sp, #0x18
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x224a710

.thumb
branch_224a710: @ 224a710 :thumb
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r4-r6,pc}
@ 0x224a716

.align 2
.word 0x245 @ 0x224a718



.thumb
.globl Function_9_224a71c
Function_9_224a71c: @ 224a71c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	bl      GetOverWorldData_VariableAreaAdresses
	bl      Function_2027860
	bl      Function_2027f80
	cmp     r0, #0x9
	beq     branch_224a738
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x224a738

.thumb
branch_224a738: @ 224a738 :thumb
	ldr     r0, [r5, #0x3c]
	bl      GetSpriteFaceDirection
	mov     r7, r0
	ldr     r0, [r5, #0x4]
	add     r1, sp, #0x8
	ldr     r4, [r0, #0x24]
	add     r2, sp, #0x4
	mov     r0, r4
	add     r3, sp, #0x0
	bl      Function_2250f44
	ldr     r1, [sp, #0x8]
	ldr     r2, [sp, #0x4]
	ldr     r3, [sp, #0x0]
	mov     r0, r4
	bl      Function_224d040
	cmp     r0, #0x1
	bne     branch_224a766
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x224a766

.thumb
branch_224a766: @ 224a766 :thumb
	ldr     r1, [sp, #0x8]
	ldr     r2, [sp, #0x4]
	ldr     r3, [sp, #0x0]
	mov     r0, r4
	bl      Function_224e434
	cmp     r0, #0x1
	bne     branch_224a77c
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x224a77c

.thumb
branch_224a77c: @ 224a77c :thumb
	mov     r0, r4
	bl      Function_22510d0
	mov     r6, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	ldr     r1, [pc, #0x68] @ 0x224a7f8, (=0x245)
	cmp     r6, r1
	bne     branch_224a7c2
	cmp     r7, #0x0
	bne     branch_224a7c2
	bl      Function_206b5d8
	cmp     r0, #0xa
	bcc     branch_224a7f0
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x59
	bne     branch_224a7f0
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x41
	bne     branch_224a7f0
	ldr     r0, [sp, #0x0]
	sub     r0, #0x38
	cmp     r0, #0x1
	bhi     branch_224a7f0
	mov     r0, r5
	mov     r1, #0x2
	mov     r2, #0x0
	bl      Function_203e880
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x224a7c2

.thumb
branch_224a7c2: @ 224a7c2 :thumb
	ldr     r0, [pc, #0x38] @ 0x224a7fc, (=0x246)
	cmp     r6, r0
	bne     branch_224a7f0
	cmp     r7, #0x1
	bne     branch_224a7f0
	ldr     r0, [sp, #0x8]
	cmp     r0, #0xf
	bne     branch_224a7f0
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x1
	bne     branch_224a7f0
	ldr     r0, [sp, #0x0]
	sub     r0, #0x19
	cmp     r0, #0x1
	bhi     branch_224a7f0
	mov     r0, r5
	mov     r1, #0x4
	mov     r2, #0x0
	bl      Function_203e880
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x224a7f0

.thumb
branch_224a7f0: @ 224a7f0 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x224a7f6

.align 2
.word 0x245 @ 0x224a7f8
.word 0x246 @ 0x224a7fc



.thumb
.globl Function_9_224a800
Function_9_224a800: @ 224a800 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x18
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	mov     r4, r1
	ldr     r6, [r0, #0x24]
	mov     r0, r6
	bl      Function_22510d0
	ldr     r1, [pc, #0x88] @ 0x224a89c, (=0x245)
	cmp     r0, r1
	beq     branch_224a820
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r0, r1
	beq     branch_224a862
	b       branch_224a894
@ 0x224a820

.thumb
branch_224a820: @ 224a820 :thumb
	cmp     r4, #0x0
	bne     branch_224a894
	ldr     r0, [r6, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	bl      Function_206b5d8
	cmp     r0, #0xa
	bcc     branch_224a894
	mov     r0, r6
	add     r1, sp, #0x14
	add     r2, sp, #0x10
	add     r3, sp, #0xc
	bl      Function_2250f44
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x59
	bne     branch_224a894
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x41
	bne     branch_224a894
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x39
	bne     branch_224a894
	mov     r0, r5
	mov     r1, #0x2
	mov     r2, #0x0
	bl      Function_203e880
	add     sp, #0x18
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x224a862

.thumb
branch_224a862: @ 224a862 :thumb
	cmp     r4, #0x1
	bne     branch_224a894
	mov     r0, r6
	add     r1, sp, #0x8
	add     r2, sp, #0x4
	add     r3, sp, #0x0
	bl      Function_2250f44
	ldr     r0, [sp, #0x8]
	cmp     r0, #0xf
	bne     branch_224a894
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x1
	bne     branch_224a894
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x19
	bne     branch_224a894
	mov     r0, r5
	mov     r1, #0x4
	mov     r2, #0x0
	bl      Function_203e880
	add     sp, #0x18
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x224a894

.thumb
branch_224a894: @ 224a894 :thumb
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r4-r6,pc}
@ 0x224a89a


.align 2


.word 0x245 @ 0x224a89c
.thumb
Function_224a8a0: @ 224a8a0 :thumb
	push    {r3-r5,lr}
	ldr     r4, [sp, #0x10]
	mov     r5, r0
	str     r4, [sp, #0x0]
	bl      Function_224c740
	mov     r1, r0
	bne     branch_224a8b4
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224a8b4

.thumb
branch_224a8b4: @ 224a8b4 :thumb
	mov     r0, r5
	bl      Function_224a148
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x224a8be


.align 2, 0


.thumb
Function_224a8c0: @ 224a8c0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x38
	ldr     r3, [pc, #0x110] @ 0x224a9d8, (=0x2251588)
	add     r2, sp, #0x20
	str     r0, [sp, #0xc]
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [sp, #0xc]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x3c]
	str     r0, [sp, #0x10]
	bl      Function_205eb3c
	mov     r6, r0
	ldr     r0, [sp, #0xc]
	add     r1, sp, #0x1c
	add     r2, sp, #0x18
	add     r3, sp, #0x14
	bl      Function_2250f44
	ldr     r0, [sp, #0xc]
	bl      Function_224c494
	bl      Function_22510d8
	mov     r5, r0
	cmp     r5, #0x1
	bne     branch_224a90a
	mov     r0, r6
	mov     r1, #0x0
	bl      SetUnsetSpriteFlags800000
	b       branch_224a912
@ 0x224a90a

.thumb
branch_224a90a: @ 224a90a :thumb
	mov     r0, r6
	mov     r1, #0x1
	bl      SetUnsetSpriteFlags800000
.thumb
branch_224a912: @ 224a912 :thumb
	ldr     r0, [sp, #0x10]
	mov     r1, r5
	bl      Function_205f098
	mov     r0, r6
	mov     r7, #0x0
	bl      GetSpriteGraphic
	mov     r4, r0
	cmp     r4, #0xb3
	bhi     branch_224a942
	cmp     r4, #0xb2
	bcc     branch_224a934
	beq     branch_224a96e
	cmp     r4, #0xb3
	beq     branch_224a974
	b       branch_224a97a
@ 0x224a934

.thumb
branch_224a934: @ 224a934 :thumb
	cmp     r4, #0x0
	bhi     branch_224a93c
	beq     branch_224a966
	b       branch_224a97a
@ 0x224a93c

.thumb
branch_224a93c: @ 224a93c :thumb
	cmp     r4, #0x61
	beq     branch_224a96a
	b       branch_224a97a
@ 0x224a942

.thumb
branch_224a942: @ 224a942 :thumb
	ldr     r0, [pc, #0x98] @ 0x224a9dc, (=0x102)
	cmp     r4, r0
	bhi     branch_224a950
	bcs     branch_224a96e
	cmp     r4, #0xd4
	beq     branch_224a966
	b       branch_224a97a
@ 0x224a950

.thumb
branch_224a950: @ 224a950 :thumb
	add     r1, r0, #0x5
	cmp     r4, r1
	bhi     branch_224a97a
	add     r1, r0, #0x1
	cmp     r4, r1
	bcc     branch_224a97a
	beq     branch_224a974
	.hword  0x1d40 @ add r0, r0, #0x5
	cmp     r4, r0
	beq     branch_224a96a
	b       branch_224a97a
@ 0x224a966

.thumb
branch_224a966: @ 224a966 :thumb
	mov     r4, #0xd4
	b       branch_224a97e
@ 0x224a96a

.thumb
branch_224a96a: @ 224a96a :thumb
	ldr     r4, [pc, #0x74] @ 0x224a9e0, (=0x107)
	b       branch_224a97e
@ 0x224a96e

.thumb
branch_224a96e: @ 224a96e :thumb
	ldr     r4, [pc, #0x6c] @ 0x224a9dc, (=0x102)
	mov     r7, #0x2
	b       branch_224a97e
@ 0x224a974

.thumb
branch_224a974: @ 224a974 :thumb
	ldr     r4, [pc, #0x6c] @ 0x224a9e4, (=0x103)
	mov     r7, #0x2
	b       branch_224a97e
@ 0x224a97a

.thumb
branch_224a97a: @ 224a97a :thumb
	bl      ErrorHandling
.thumb
branch_224a97e: @ 224a97e :thumb
	ldr     r0, [sp, #0x10]
	mov     r1, r7
	bl      Function_205eb58
	mov     r0, r6
	mov     r1, r4
	bl      Function_2061ad4
	cmp     r5, #0x1
	beq     branch_224a9a0
	mov     r0, r6
	bl      IsSetSpriteFlags800000
	cmp     r0, #0x1
	beq     branch_224a9a0
	bl      ErrorHandling
.thumb
branch_224a9a0: @ 224a9a0 :thumb
	cmp     r7, #0x2
	bne     branch_224a9c6
	ldr     r0, [sp, #0x10]
	bl      GetSpriteFaceDirection
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r5, [sp, #0x8]
	ldr     r0, [sp, #0x10]
	ldr     r1, [sp, #0x1c]
	ldr     r2, [sp, #0x18]
	ldr     r3, [sp, #0x14]
	bl      Function_5_21f85bc
	mov     r1, r0
	ldr     r0, [sp, #0x10]
	bl      Function_205ec00
branch_224a9c6: @ 224a9c6 :thumb
	lsl     r3, r5, #2
	add     r2, sp, #0x20
	ldr     r0, [sp, #0xc]
	ldr     r2, [r2, r3]
	mov     r1, r6
	bl      Function_224a390
	add     sp, #0x38
	pop     {r3-r7,pc}
@ 0x224a9d8

.word 0x2251588 @ 0x224a9d8
.word 0x102 @ 0x224a9dc
.word 0x107 @ 0x224a9e0
.word 0x103 @ 0x224a9e4
.thumb
Function_224a9e8: @ 224a9e8 :thumb
	push    {r4,lr}
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	ldr     r4, [r0, #0x3c]
	mov     r0, r4
	bl      Function_205f098
	mov     r0, r4
	bl      Function_205ebc0
	pop     {r4,pc}
@ 0x224a9fe


.align 2, 0


.thumb
Function_224aa00: @ 224aa00 :thumb
	push    {r3-r5,lr}
	ldr     r4, [sp, #0x10]
	mov     r5, r0
	str     r4, [sp, #0x0]
	bl      Function_224c69c
	mov     r4, r0
	beq     branch_224aa2a
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      Function_205eb3c
	ldrh    r2, [r4, #0x0]
	mov     r0, r5
	mov     r1, r4
	lsl     r3, r2, #2
	ldr     r2, [pc, #0xc] @ 0x224aa30, (=Unknown_2251224)
	ldr     r2, [r2, r3]
	blx     r2
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_224aa2a: @ 224aa2a :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224aa2e

.align 2
.word Unknown_2251224 @ 0x224aa30



.thumb
Function_224aa34: @ 224aa34 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r1, #0x5c
	mov     r7, r0
	bl      Function_224a578
	mov     r4, r0
	mov     r3, r4
	mov     r6, r5
	add     r3, #0x34
	mov     r2, #0x5
.thumb
branch_224aa4a: @ 224aa4a :thumb
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_224aa4a
	mov     r1, #0x1c
	ldsh    r0, [r5, r1]
	str     r0, [r4, #0x4]
	mov     r0, #0x14
	ldsh    r0, [r5, r0]
	ldsh    r1, [r5, r1]
	lsl     r0, r0, #16
	blx     _s32_div_f
	str     r0, [r4, #0x8]
	mov     r0, #0x16
	ldsh    r0, [r5, r0]
	mov     r1, #0x1c
	ldsh    r1, [r5, r1]
	lsl     r0, r0, #16
	blx     _s32_div_f
	str     r0, [r4, #0xc]
	mov     r0, #0x18
	ldsh    r0, [r5, r0]
	mov     r1, #0x1c
	ldsh    r1, [r5, r1]
	lsl     r0, r0, #16
	blx     _s32_div_f
	str     r0, [r4, #0x10]
	mov     r1, #0x1c
	mov     r0, #0x1
	ldsh    r1, [r5, r1]
	lsl     r0, r0, #16
	blx     _s32_div_f
	mov     r3, r4
	mov     r2, r4
	add     r3, #0x8
	str     r0, [r4, #0x18]
	ldmia   r3!, {r0,r1}
	add     r2, #0x28
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	ldr     r0, [r4, #0x28]
	cmp     r0, #0x0
	bge     branch_224aaae
	neg     r0, r0
	str     r0, [r4, #0x28]
.thumb
branch_224aaae: @ 224aaae :thumb
	ldr     r0, [r4, #0x2c]
	cmp     r0, #0x0
	bge     branch_224aab8
	neg     r0, r0
	str     r0, [r4, #0x2c]
.thumb
branch_224aab8: @ 224aab8 :thumb
	ldr     r0, [r4, #0x30]
	cmp     r0, #0x0
	bge     branch_224aac2
	neg     r0, r0
	str     r0, [r4, #0x30]
.thumb
branch_224aac2: @ 224aac2 :thumb
	ldr     r0, [r7, #0x0]
	ldr     r1, [pc, #0x8] @ 0x224aad0, (=0x224aad5)
	mov     r2, r7
	bl      OverWorldData_InitUnknownStruct01
	pop     {r3-r7,pc}
@ 0x224aace


.align 2


.word 0x224aad5 @ 0x224aad0
.thumb
Function_224aad4: @ 224aad4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x38
	mov     r4, r0
	bl      LoadOverWorldDataAdress
	mov     r5, r0
	mov     r0, r4
	bl      GetUnknownStruct01_c
	str     r0, [sp, #0x4]
	bl      Function_224a598
	mov     r4, r0
	ldr     r0, [r5, #0x3c]
	str     r0, [sp, #0x0]
	bl      Function_205eb3c
	ldr     r1, [r4, #0x0]
	mov     r6, r0
	cmp     r1, #0x3
	bhi     branch_224ab20
	add     r2, r1, r1
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x224ab0a

Jumppoints_224ab0a:
.hword branch_224ab12 - Jumppoints_224ab0a - 2
.hword branch_224ab18 - Jumppoints_224ab0a - 2
.hword branch_224abae - Jumppoints_224ab0a - 2
.hword branch_224ac20 - Jumppoints_224ab0a - 2
.thumb
branch_224ab12: @ 224ab12 :thumb
	add     r0, r1, #0x1
	str     r0, [r4, #0x0]
	b       branch_224ac40
@ 0x224ab18

.thumb
branch_224ab18: @ 224ab18 :thumb
	bl      IsSpriteMovable
	cmp     r0, #0x0
	bne     branch_224ab22
.thumb
branch_224ab20: @ 224ab20 :thumb
	b       branch_224ac40
@ 0x224ab22

.thumb
branch_224ab22: @ 224ab22 :thumb
	mov     r0, #0x36
	ldsh    r5, [r4, r0]
	ldr     r0, [sp, #0x4]
	bl      Function_224c470
	cmp     r0, #0x4
	bhi     branch_224ab80
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x224ab3c

Jumppoints_224ab3c:
.hword branch_224ab80 - Jumppoints_224ab3c - 2
.hword branch_224ab46 - Jumppoints_224ab3c - 2
.hword branch_224ab5a - Jumppoints_224ab3c - 2
.hword branch_224ab6e - Jumppoints_224ab3c - 2
.hword branch_224ab80 - Jumppoints_224ab3c - 2
.thumb
branch_224ab46: @ 224ab46 :thumb
	ldr     r3, [pc, #0x100] @ 0x224ac48, (=0x2251458)
	add     r2, sp, #0x28
	mov     r7, r2
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	lsl     r0, r5, #2
	ldr     r5, [r7, r0]
	b       branch_224ab80
@ 0x224ab5a

.thumb
branch_224ab5a: @ 224ab5a :thumb
	ldr     r3, [pc, #0xf0] @ 0x224ac4c, (=0x22513a8)
	add     r2, sp, #0x18
	mov     r7, r2
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	lsl     r0, r5, #2
	ldr     r5, [r7, r0]
	b       branch_224ab80
@ 0x224ab6e

.thumb
branch_224ab6e: @ 224ab6e :thumb
	ldr     r3, [pc, #0xe0] @ 0x224ac50, (=0x2251418)
	add     r2, sp, #0x8
	mov     r7, r2
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	lsl     r0, r5, #2
	ldr     r5, [r7, r0]
.thumb
branch_224ab80: @ 224ab80 :thumb
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2065838
	mov     r1, r0
	mov     r0, r6
	bl      Function_2065638
	mov     r0, r6
	mov     r1, r5
	bl      ChangeSpriteFaceDirection_WithCheck
	mov     r2, #0x4e
	mov     r3, #0x50
	ldsh    r2, [r4, r2]
	ldsh    r3, [r4, r3]
	ldr     r0, [sp, #0x4]
	mov     r1, r6
	bl      Function_224a4d0
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_224abae: @ 224abae :thumb
	mov     r0, r4
	mov     r1, r6
	bl      Function_224ac58
	cmp     r0, #0x1
	bne     branch_224ac40
	ldr     r0, [sp, #0x0]
	mov     r5, #0x0
	bl      Function_205eb3c
	mov     r1, r4
	add     r1, #0x5a
	mov     r6, r0
	ldrh    r1, [r1, #0x0]
	ldr     r0, [sp, #0x4]
	bl      Function_224c3f8
	mov     r0, #0x58
	ldsh    r0, [r4, r0]
	bl      Function_22510d8
	mov     r1, r0
	ldr     r0, [sp, #0x0]
	bl      Function_205f098
	ldr     r0, [sp, #0x0]
	bl      Function_205ebc0
	mov     r0, r6
	mov     r1, #0x1
	bl      SetUnsetSpriteFlags800000
	mov     r0, #0x58
	ldsh    r0, [r4, r0]
	cmp     r0, #0x1
	beq     branch_224ac00
	cmp     r0, #0x2
	beq     branch_224ac04
	cmp     r0, #0x3
	beq     branch_224ac08
	b       branch_224ac0a
@ 0x224ac00

.thumb
branch_224ac00: @ 224ac00 :thumb
	mov     r5, #0x2
	b       branch_224ac0a
@ 0x224ac04

.thumb
branch_224ac04: @ 224ac04 :thumb
	mov     r5, #0x1
	b       branch_224ac0a

branch_224ac08: @ 224ac08 :thumb
	mov     r5, #0x3
branch_224ac0a: @ 224ac0a :thumb
	mov     r0, r6
	mov     r1, r5
	bl      Function_5_21f3678
	ldr     r0, [pc, #0x40] @ 0x224ac54, (=0x647)
	bl      Function_2005748
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_224ac40

branch_224ac20: @ 224ac20 :thumb
	bl      IsSpriteMovable
	cmp     r0, #0x0
	beq     branch_224ac40
	mov     r0, #0x56
	ldsh    r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2065838
	mov     r1, r0
	mov     r0, r6
	bl      Function_2065638
	add     sp, #0x38
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x224ac40

.thumb
branch_224ac40: @ 224ac40 :thumb
	mov     r0, #0x0
	add     sp, #0x38
	pop     {r3-r7,pc}
@ 0x224ac46


.align 2


.word 0x2251458 @ 0x224ac48
.word 0x22513a8 @ 0x224ac4c
.word 0x2251418 @ 0x224ac50
.word 0x647 @ 0x224ac54
.thumb
Function_224ac58: @ 224ac58 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r6, r1
	mov     r4, r5
	mov     r0, r6
	add     r1, sp, #0x4
	add     r4, #0x34
	bl      CopySprite70Struct
	ldr     r1, [sp, #0x4]
	ldr     r0, [r5, #0x8]
	add     r0, r1, r0
	str     r0, [sp, #0x4]
	ldr     r1, [sp, #0x8]
	ldr     r0, [r5, #0xc]
	add     r0, r1, r0
	str     r0, [sp, #0x8]
	ldr     r1, [sp, #0xc]
	ldr     r0, [r5, #0x10]
	add     r0, r1, r0
	str     r0, [sp, #0xc]
	mov     r0, r6
	add     r1, sp, #0x4
	bl      CopyToSprite70Struct
	mov     r0, r5
	ldr     r2, [r5, #0x1c]
	ldr     r1, [r5, #0x28]
	add     r0, #0x1c
	add     r2, r2, r1
	mov     r1, #0x1
	lsl     r1, r1, #16
	str     r2, [r5, #0x1c]
	cmp     r2, r1
	blt     branch_224acc4
	ldr     r2, [r0, #0x0]
	sub     r1, r2, r1
	str     r1, [r0, #0x0]
	mov     r0, r6
	bl      LoadSpritePositionX
	mov     r1, r0
	mov     r0, #0x14
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	ble     branch_224acba
	.hword  0x1c49 @ add r1, r1, #0x1
	b       branch_224acbe
@ 0x224acba

.thumb
branch_224acba: @ 224acba :thumb
	bge     branch_224acbe
	.hword  0x1e49 @ sub r1, r1, #0x1
.thumb
branch_224acbe: @ 224acbe :thumb
	mov     r0, r6
	bl      SaveSpritePositionX
.thumb
branch_224acc4: @ 224acc4 :thumb
	ldr     r2, [r5, #0x20]
	ldr     r1, [r5, #0x2c]
	mov     r0, r5
	add     r2, r2, r1
	mov     r1, #0x2
	lsl     r1, r1, #14
	add     r0, #0x20
	str     r2, [r5, #0x20]
	cmp     r2, r1
	blt     branch_224acfc
	ldr     r2, [r0, #0x0]
	sub     r1, r2, r1
	str     r1, [r0, #0x0]
	mov     r0, r6
	bl      LoadSpritePositionZ
	mov     r1, r0
	mov     r0, #0x16
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	ble     branch_224acf2
	.hword  0x1c49 @ add r1, r1, #0x1
	b       branch_224acf6
@ 0x224acf2

.thumb
branch_224acf2: @ 224acf2 :thumb
	bge     branch_224acf6
	.hword  0x1e49 @ sub r1, r1, #0x1
.thumb
branch_224acf6: @ 224acf6 :thumb
	mov     r0, r6
	bl      SaveSpritePositionZ
.thumb
branch_224acfc: @ 224acfc :thumb
	ldr     r2, [r5, #0x24]
	ldr     r1, [r5, #0x30]
	mov     r0, r5
	add     r2, r2, r1
	mov     r1, #0x1
	lsl     r1, r1, #16
	add     r0, #0x24
	str     r2, [r5, #0x24]
	cmp     r2, r1
	blt     branch_224ad34
	ldr     r2, [r0, #0x0]
	sub     r1, r2, r1
	str     r1, [r0, #0x0]
	mov     r0, r6
	bl      LoadSpritePositionY
	mov     r1, r0
	mov     r0, #0x18
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	ble     branch_224ad2a
	.hword  0x1c49 @ add r1, r1, #0x1
	b       branch_224ad2e
@ 0x224ad2a

.thumb
branch_224ad2a: @ 224ad2a :thumb
	bge     branch_224ad2e
	.hword  0x1e49 @ sub r1, r1, #0x1
.thumb
branch_224ad2e: @ 224ad2e :thumb
	mov     r0, r6
	bl      SaveSpritePositionY
.thumb
branch_224ad34: @ 224ad34 :thumb
	mov     r0, r6
	bl      GetSpriteAdr7c
	ldr     r2, [r5, #0x14]
	ldr     r1, [r5, #0x18]
	add     r1, r2, r1
	asr     r2, r1, #11
	lsr     r2, r2, #20
	add     r2, r1, r2
	str     r1, [r5, #0x14]
	asr     r1, r2, #12
	str     r1, [sp, #0x0]
	ldrh    r1, [r4, #0x1e]
	cmp     r1, #0x0
	beq     branch_224ad5c
	cmp     r1, #0x1
	beq     branch_224ad60
	cmp     r1, #0x2
	beq     branch_224ad64
	b       branch_224ad6a
@ 0x224ad5c

.thumb
branch_224ad5c: @ 224ad5c :thumb
	mov     r7, r0
	b       branch_224ad6e
@ 0x224ad60

.thumb
branch_224ad60: @ 224ad60 :thumb
	add     r7, r0, #0x4
	b       branch_224ad6e
@ 0x224ad64

.thumb
branch_224ad64: @ 224ad64 :thumb
	mov     r7, r0
	add     r7, #0x8
	b       branch_224ad6e
@ 0x224ad6a

.thumb
branch_224ad6a: @ 224ad6a :thumb
	bl      ErrorHandling
.thumb
branch_224ad6e: @ 224ad6e :thumb
	ldr     r0, [sp, #0x0]
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x48] @ 0x224adbc, (=0x2252cf8)
	ldr     r0, [r0, r1]
	str     r0, [r7, #0x0]
	ldrh    r0, [r4, #0x20]
	cmp     r0, #0x1
	bne     branch_224ad84
	ldr     r0, [r7, #0x0]
	neg     r0, r0
	str     r0, [r7, #0x0]
.thumb
branch_224ad84: @ 224ad84 :thumb
	ldr     r0, [r5, #0x4]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r5, #0x4]
	cmp     r0, #0x0
	bgt     branch_224adb6
	mov     r0, #0x0
	str     r0, [r7, #0x0]
	mov     r0, r6
	bl      CopySpritePositionsFromOldToNew
	mov     r0, r6
	bl      Function_2062b68
	mov     r1, #0x22
	ldsh    r1, [r4, r1]
	mov     r0, r6
	bl      ChangeSpriteFaceDirection_WithCheck
	mov     r0, r6
	mov     r1, #0x0
	bl      SetSpritea0
	add     sp, #0x10
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x224adb6

.thumb
branch_224adb6: @ 224adb6 :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x224adbc

.word 0x2252cf8 @ 0x224adbc
.thumb
Function_224adc0: @ 224adc0 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r4, r0
	mov     r0, #0x2
	mov     r1, #0x0
	bl      Function_201ff0c
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	mov     r2, #0x4
	bl      Function_2006cb8_LoadFileInMemory
	add     r1, sp, #0xc
	mov     r5, r0
	blx     Function_20a71b0
	ldr     r1, [sp, #0xc]
	mov     r0, #0x2
	ldr     r1, [r1, #0xc]
	mov     r2, #0x20
	mov     r3, #0x0
	bl      Function_201972c
	ldr     r0, [sp, #0xc]
	mov     r1, #0x0
	ldr     r2, [r0, #0xc]
	ldr     r0, [pc, #0xd8] @ 0x224aed0, (=0x1cac)
	add     r3, r4, r0
.thumb
branch_224adf8: @ 224adf8 :thumb
	ldrh    r0, [r2, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r0, [r3, #0x8]
	ldrh    r0, [r2, #0x0]
	.hword  0x1c92 @ add r2, r2, #0x2
	strh    r0, [r3, #0x28]
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r1, #0x10
	blt     branch_224adf8
	mov     r0, r5
	bl      free
	ldr     r0, [r4, #0x10]
	mov     r1, #0x0
	mov     r2, #0x4
	bl      Function_2006cb8_LoadFileInMemory
	add     r1, sp, #0x8
	mov     r5, r0
	blx     Function_20a7118
	ldr     r3, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	ldr     r2, [r3, #0x14]
	ldr     r0, [r0, #0x8]
	ldr     r3, [r3, #0x10]
	mov     r1, #0x2
	bl      Function_201958c
	mov     r0, r5
	bl      free
	ldr     r0, [r4, #0x10]
	mov     r1, #0x2
	mov     r2, #0x4
	bl      Function_2006cb8_LoadFileInMemory
	add     r1, sp, #0x4
	mov     r5, r0
	blx     Function_20a7248
	ldr     r3, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r2, r3
	ldr     r0, [r4, #0x0]
	ldr     r3, [r3, #0x8]
	ldr     r0, [r0, #0x8]
	mov     r1, #0x2
	add     r2, #0xc
	bl      Function_2019460
	ldr     r3, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	mov     r2, r3
	ldr     r0, [r0, #0x8]
	ldr     r3, [r3, #0x8]
	mov     r1, #0x2
	add     r2, #0xc
	bl      Function_2019574
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2
	ldr     r0, [r0, #0x8]
	bl      Function_2019448
	mov     r0, r5
	bl      free
	ldr     r0, [pc, #0x4c] @ 0x224aed4, (=REG_BG0CNT)
	mov     r2, #0x3
	ldrh    r3, [r0, #0x0]
	mov     r1, #0x2
	bic     r3, r2
	orr     r1, r3
	strh    r1, [r0, #0x0]
	ldrh    r3, [r0, #0x2]
	mov     r1, #0x1
	bic     r3, r2
	orr     r3, r1
	strh    r3, [r0, #0x2]
	ldrh    r4, [r0, #0x4]
	mov     r3, #0x3
	bic     r4, r2
	orr     r3, r4
	strh    r3, [r0, #0x4]
	ldrh    r3, [r0, #0x6]
	bic     r3, r2
	strh    r3, [r0, #0x6]
	mov     r2, #0x10
	str     r2, [sp, #0x0]
	add     r0, #0x48
	mov     r2, #0x36
	mov     r3, #0x0
	blx     G2x_SetBlendAlpha_
	mov     r0, #0x2
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x224aed0

.word 0x1cac @ 0x224aed0
.word REG_BG0CNT @ 0x224aed4



.thumb
Function_224aed8: @ 224aed8 :thumb
	ldr     r0, [pc, #0x4] @ 0x224aee0, (=REG_BLDCNT)
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	bx      lr
@ 0x224aee0

.word REG_BLDCNT @ 0x224aee0



.thumb
Function_224aee4: @ 224aee4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r1
	str     r0, [sp, #0x10]
	str     r2, [sp, #0x14]
	mov     r0, #0x10
	add     r1, r5, #0x4
	mov     r2, #0x4
	bl      Function_20095c4
	str     r0, [r5, #0x0]
	ldr     r2, [pc, #0x14c] @ 0x224b048, (=0xffe00000)
	add     r0, r5, #0x4
	mov     r1, #0x0
	bl      Function_200962c
	mov     r0, #0x7
	mov     r1, #0x0
	mov     r2, #0x4
	bl      Function_2009714
	mov     r1, #0x4b
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x1
	mov     r1, r0
	mov     r2, #0x4
	bl      Function_2009714
	mov     r1, #0x13
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r0, #0x7
	mov     r1, #0x2
	mov     r2, #0x4
	bl      Function_2009714
	mov     r1, #0x4d
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x7
	mov     r1, #0x3
	mov     r2, #0x4
	bl      Function_2009714
	mov     r1, #0x4e
	lsl     r1, r1, #2
	ldr     r6, [pc, #0x108] @ 0x224b04c, (=0x2251e58)
	str     r0, [r5, r1]
	mov     r7, #0x0
	mov     r4, r5
.thumb
branch_224af4a: @ 224af4a :thumb
	mov     r0, r7
	add     r0, #0xff
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r1, [sp, #0x14]
	ldr     r2, [r6, #0x0]
	mov     r3, #0x0
	bl      Function_2009a4c
	mov     r1, #0x4f
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, r1
	ldr     r0, [r4, r0]
	bl      Function_200a3dc
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r7, #0x7
	blt     branch_224af4a
	mov     r1, #0xff
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x5
	str     r0, [sp, #0x8]
	mov     r0, #0x4
	add     r1, #0x31
	str     r0, [sp, #0xc]
	ldr     r0, [r5, r1]
	ldr     r1, [sp, #0x14]
	mov     r2, #0x18
	mov     r3, #0x0
	bl      Function_2009b04
	mov     r1, #0x56
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	bl      Function_2009e34
	ldr     r2, [pc, #0xa4] @ 0x224b050, (=0x1cf4)
	ldr     r1, [sp, #0x10]
	mov     r3, #0x0
	add     r1, r1, r2
	ldr     r2, [r0, #0xc]
.thumb
branch_224afb4: @ 224afb4 :thumb
	ldrh    r0, [r2, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1c92 @ add r2, r2, #0x2
	strh    r0, [r1, #0x0]
	.hword  0x1c89 @ add r1, r1, #0x2
	cmp     r3, #0x50
	blt     branch_224afb4
	mov     r0, #0x56
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_200a640
	ldr     r4, [pc, #0x84] @ 0x224b054, (=0x2251e90)
	mov     r6, #0x0
	mov     r7, r5
.thumb
branch_224afd2: @ 224afd2 :thumb
	mov     r0, r6
	add     r0, #0xff
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0x4d
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r1, [sp, #0x14]
	ldr     r2, [r4, #0x0]
	mov     r3, #0x0
	bl      Function_2009bc4
	mov     r1, #0x57
	lsl     r1, r1, #2
	str     r0, [r7, r1]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1d3f @ add r7, r7, #0x4
	cmp     r6, #0x7
	blt     branch_224afd2
	ldr     r4, [pc, #0x54] @ 0x224b058, (=0x2251eac)
	mov     r6, #0x0
	mov     r7, r5
.thumb
branch_224b006: @ 224b006 :thumb
	mov     r0, r6
	add     r0, #0xff
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0x4e
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r1, [sp, #0x14]
	ldr     r2, [r4, #0x0]
	mov     r3, #0x0
	bl      Function_2009bc4
	mov     r1, #0x5e
	lsl     r1, r1, #2
	str     r0, [r7, r1]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1d3f @ add r7, r7, #0x4
	cmp     r6, #0x7
	blt     branch_224b006
	ldr     r0, [pc, #0x24] @ 0x224b05c, (=0x224b125)
	ldr     r2, [pc, #0x28] @ 0x224b060, (=0xffff)
	mov     r1, r5
	bl      AddTaskToTaskList1
	mov     r1, #0x65
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x224b048

.word 0xffe00000 @ 0x224b048
.word 0x2251e58 @ 0x224b04c
.word 0x1cf4 @ 0x224b050
.word 0x2251e90 @ 0x224b054
.word 0x2251eac @ 0x224b058
.word 0x224b125 @ 0x224b05c
.word 0xffff @ 0x224b060
.thumb
Function_224b064: @ 224b064 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r0, #0x65
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Call_RemoveTaskFromTaskList
	mov     r7, #0x4f
	mov     r6, #0x0
	mov     r4, r5
	lsl     r7, r7, #2
.thumb
branch_224b07a: @ 224b07a :thumb
	ldr     r0, [r4, r7]
	cmp     r0, #0x0
	beq     branch_224b084
	bl      Function_200a4e4
.thumb
branch_224b084: @ 224b084 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x7
	blt     branch_224b07a
	mov     r0, #0x56
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_224b09a
	bl      Function_200a6dc
.thumb
branch_224b09a: @ 224b09a :thumb
	mov     r7, #0x57
	mov     r6, #0x0
	mov     r4, r5
	lsl     r7, r7, #2
.thumb
branch_224b0a2: @ 224b0a2 :thumb
	ldr     r0, [r4, r7]
	cmp     r0, #0x0
	beq     branch_224b0bc
	bl      Function_2009d4c
	mov     r0, #0x4d
	mov     r1, #0x57
	lsl     r0, r0, #2
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r4, r1]
	bl      Function_2009d68
.thumb
branch_224b0bc: @ 224b0bc :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x7
	blt     branch_224b0a2
	mov     r7, #0x5e
	mov     r6, #0x0
	mov     r4, r5
	lsl     r7, r7, #2
.thumb
branch_224b0cc: @ 224b0cc :thumb
	ldr     r0, [r4, r7]
	cmp     r0, #0x0
	beq     branch_224b0e6
	bl      Function_2009d4c
	mov     r0, #0x4e
	mov     r1, #0x5e
	lsl     r0, r0, #2
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r4, r1]
	bl      Function_2009d68
.thumb
branch_224b0e6: @ 224b0e6 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x7
	blt     branch_224b0cc
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2009754
	mov     r0, #0x13
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	bl      Function_2009754
	mov     r0, #0x4d
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2009754
	mov     r0, #0x4e
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2009754
	ldr     r0, [r5, #0x0]
	bl      Function_20219c0
	ldr     r0, [r5, #0x0]
	bl      Function_2021964
	pop     {r3-r7,pc}
@ 0x224b124

.thumb
Function_224b124: @ 224b124 :thumb
	ldr     r3, [pc, #0x4] @ 0x224b12c, (=Function_20219f8+1)
	ldr     r0, [r1, #0x0]
	bx      r3
@ 0x224b12a

.align 2
.word Function_20219f8+1 @ 0x224b12c



.thumb
Function_224b130: @ 224b130 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x70
	mov     r5, r0
	ldr     r0, [sp, #0x84]
	mov     r4, r1
	add     r0, #0xff
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	mov     r1, r2
	mov     r2, r3
	mvn     r0, r0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r3, #0x0
	ldr     r0, [sp, #0x88]
	str     r3, [sp, #0xc]
	str     r0, [sp, #0x10]
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r6, [r5, r0]
	add     r1, #0xff
	str     r6, [sp, #0x14]
	add     r6, r0, #0x4
	ldr     r6, [r5, r6]
	add     r2, #0xff
	str     r6, [sp, #0x18]
	mov     r6, r0
	add     r6, #0x8
	ldr     r6, [r5, r6]
	add     r0, #0xc
	str     r6, [sp, #0x1c]
	ldr     r0, [r5, r0]
	str     r0, [sp, #0x20]
	str     r3, [sp, #0x24]
	str     r3, [sp, #0x28]
	ldr     r3, [sp, #0x80]
	add     r0, sp, #0x4c
	add     r3, #0xff
	bl      Function_20093b4
	ldr     r0, [r5, #0x0]
	add     r2, sp, #0x34
	str     r0, [sp, #0x2c]
	add     r0, sp, #0x4c
	str     r0, [sp, #0x30]
	ldmia   r4!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r4, #0x0]
	str     r0, [r2, #0x0]
	ldr     r0, [sp, #0x8c]
	str     r0, [sp, #0x40]
	mov     r0, #0x1
	str     r0, [sp, #0x44]
	mov     r0, #0x4
	str     r0, [sp, #0x48]
	add     r0, sp, #0x2c
	bl      Function_2021b90
	mov     r4, r0
	bne     branch_224b1ac
	bl      ErrorHandling
.thumb
branch_224b1ac: @ 224b1ac :thumb
	mov     r0, r4
	add     sp, #0x70
	pop     {r4-r6,pc}
@ 0x224b1b2


.align 2, 0


.thumb
Function_224b1b4: @ 224b1b4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x40
	mov     r7, r1
	mov     r5, r2
	ldr     r1, [pc, #0x6c] @ 0x224b22c, (=0x1e6e)
	mov     r4, r0
	mov     r2, #0x0
	strh    r2, [r4, r1]
	bl      Function_22510d0
	ldr     r1, [pc, #0x64] @ 0x224b230, (=0x246)
	cmp     r0, r1
	bne     branch_224b1f4
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	bl      Function_206b5d8
	cmp     r0, #0xa
	bcc     branch_224b1f4
	cmp     r0, #0xc
	bhi     branch_224b1ea
	ldr     r0, [pc, #0x48] @ 0x224b22c, (=0x1e6e)
	mov     r1, #0x1
	strh    r1, [r4, r0]
	b       branch_224b1f4
@ 0x224b1ea

.thumb
branch_224b1ea: @ 224b1ea :thumb
	cmp     r0, #0xd
	bhi     branch_224b1f4
	ldr     r0, [pc, #0x3c] @ 0x224b22c, (=0x1e6e)
	mov     r1, #0x2
	strh    r1, [r4, r0]
.thumb
branch_224b1f4: @ 224b1f4 :thumb
	str     r5, [sp, #0x3c]
	str     r4, [sp, #0x8]
	ldr     r5, [pc, #0x38] @ 0x224b234, (=0x2253680)
	mov     r4, #0x0
.thumb
branch_224b1fc: @ 224b1fc :thumb
	mov     r6, r5
	add     r3, sp, #0xc
	mov     r2, #0x6
.thumb
branch_224b202: @ 224b202 :thumb
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_224b202
	add     r0, sp, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	mov     r2, #0x0
	str     r0, [sp, #0x4]
	ldr     r1, [pc, #0x20] @ 0x224b238, (=0x2251508)
	mov     r0, r7
	mov     r3, r2
	bl      Function_5_21df72c
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x30
	cmp     r4, #0x9
	blt     branch_224b1fc
	add     sp, #0x40
	pop     {r3-r7,pc}
@ 0x224b22a

.align 2
.word 0x1e6e @ 0x224b22c
.word 0x246 @ 0x224b230
.word 0x2253680 @ 0x224b234
.word 0x2251508 @ 0x224b238



.thumb
Function_224b23c: @ 224b23c :thumb
	push    {r3-r6,lr}
	add     sp, #-0x1c
	mov     r4, r1
	add     r2, sp, #0x10
	mov     r1, #0x0
	str     r1, [r2, #0x0]
	str     r1, [r2, #0x4]
	str     r1, [r2, #0x8]
	bl      Function_20715bc
	mov     r2, r0
	mov     r5, r4
	mov     r6, r2
	add     r5, #0x8
	mov     r3, #0x7
.thumb
branch_224b25a: @ 224b25a :thumb
	ldmia   r6!, {r0,r1}
	stmia   r5!, {r0,r1}
	.hword  0x1e5b @ sub r3, r3, #0x1
	bne     branch_224b25a
	ldr     r0, [r4, #0x14]
	ldr     r3, [pc, #0x48] @ 0x224b2b0, (=0x2252c08)
	str     r0, [r4, #0x0]
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x48] @ 0x224b2b4, (=0x1e6e)
	ldrh    r0, [r1, r0]
	lsl     r5, r0, #4
	ldr     r0, [r2, #0x8]
	lsl     r1, r0, #2
	add     r0, r3, r5
	ldr     r0, [r1, r0]
	ldr     r3, [pc, #0x3c] @ 0x224b2b8, (=0x2251ec8)
	str     r0, [r4, #0x4]
	ldr     r0, [r4, #0xc]
	add     r1, sp, #0x10
	lsl     r2, r0, #2
	add     r5, r3, r2
	ldrb    r0, [r5, #0x2]
	str     r0, [sp, #0x0]
	ldrb    r0, [r5, #0x3]
	str     r0, [sp, #0x4]
	mov     r0, #0x3
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x28] @ 0x224b2bc, (=0xffff)
	str     r0, [sp, #0xc]
	ldrb    r2, [r3, r2]
	ldrb    r3, [r5, #0x1]
	ldr     r0, [r4, #0x3c]
	bl      Function_224b130
	str     r0, [r4, #0x40]
	add     r4, #0x30
	mov     r1, r4
	mov     r2, #0x2
	bl      Function_2021c80
	mov     r0, #0x1
	add     sp, #0x1c
	pop     {r3-r6,pc}
@ 0x224b2b0

.word 0x2252c08 @ 0x224b2b0
.word 0x1e6e @ 0x224b2b4
.word 0x2251ec8 @ 0x224b2b8
.word 0xffff @ 0x224b2bc
.thumb
Function_224b2c0: @ 224b2c0 :thumb
	ldr     r3, [pc, #0x4] @ 0x224b2c8, (=Function_2021bd4+1)
	ldr     r0, [r1, #0x40]
	bx      r3
@ 0x224b2c6

.align 2
.word Function_2021bd4+1 @ 0x224b2c8



.thumb
Function_224b2cc: @ 224b2cc :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r4, r1
	mov     r5, r0
	ldr     r1, [r4, #0x8]
	ldr     r0, [pc, #0xc4] @ 0x224b39c, (=0x1e6e)
	ldr     r2, [pc, #0xc4] @ 0x224b3a0, (=0x2252c08)
	ldrh    r0, [r1, r0]
	lsl     r3, r0, #4
	ldr     r0, [r4, #0x10]
	lsl     r1, r0, #2
	add     r0, r2, r3
	ldr     r0, [r1, r0]
	ldr     r2, [r4, #0x4]
	cmp     r0, r2
	bge     branch_224b2fc
	mov     r1, #0x2
	lsl     r1, r1, #8
	sub     r1, r2, r1
	str     r1, [r4, #0x4]
	cmp     r0, r1
	ble     branch_224b30e
	str     r0, [r4, #0x4]
	b       branch_224b30e
@ 0x224b2fc

.thumb
branch_224b2fc: @ 224b2fc :thumb
	cmp     r0, r2
	ble     branch_224b30e
	mov     r1, #0x2
	lsl     r1, r1, #8
	add     r1, r2, r1
	str     r1, [r4, #0x4]
	cmp     r0, r1
	bge     branch_224b30e
	str     r0, [r4, #0x4]
.thumb
branch_224b30e: @ 224b30e :thumb
	ldr     r2, [r4, #0x20]
	ldr     r1, [r4, #0x4]
	mov     r0, r4
	add     r1, r2, r1
	bl      Function_2250f1c
	ldr     r0, [r4, #0x0]
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x18]
	add     r0, sp, #0x0
	bl      Function_2250f1c
	mov     r3, r4
	add     r3, #0x24
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x4
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	ldr     r1, [r4, #0x0]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	lsl     r0, r0, #4
	lsr     r0, r0, #16
	bl      Function_201d1d4
	ldr     r1, [r4, #0x1c]
	ldr     r2, [sp, #0x4]
	mul     r0, r1
	add     r0, r2, r0
	str     r0, [sp, #0x4]
	ldr     r1, [r4, #0x0]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	lsl     r0, r0, #4
	lsr     r0, r0, #16
	bl      Function_201d15c
	ldr     r2, [r4, #0x1c]
	ldr     r1, [sp, #0x8]
	mov     r3, r2
	mul     r3, r0
	mov     r0, #0x2
	lsl     r0, r0, #20
	sub     r0, r3, r0
	add     r0, r1, r0
	str     r0, [sp, #0x8]
	mov     r0, r5
	add     r1, sp, #0x4
	bl      Function_20715d4
	ldr     r0, [r4, #0x40]
	add     r1, sp, #0x4
	bl      Function_2021c50
	ldr     r1, [sp, #0x0]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	lsl     r0, r0, #4
	lsr     r0, r0, #16
	bl      Function_201d2a4
	mov     r1, r0
	ldr     r0, [r4, #0x40]
	bl      Function_2021c94
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x224b39c

.word 0x1e6e @ 0x224b39c
.word 0x2252c08 @ 0x224b3a0
.thumb
Function_224b3a4: @ 224b3a4 :thumb
	bx      lr
@ 0x224b3a6


.align 2, 0


.thumb
Function_224b3a8: @ 224b3a8 :thumb
	push    {r4,lr}
	add     sp, #-0x28
	ldr     r0, [r0, #0x0]
	mov     r1, #0x6
	ldr     r4, [r0, #0x48]
	mov     r0, #0x76
	str     r1, [sp, #0x0]
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	mov     r0, r4
	.hword  0x1fc9 @ sub r1, r1, #0x7
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_5_21d57fc_CallG3X_SetFog
	mov     r1, #0x0
	mov     r0, r4
	mvn     r1, r1
	mov     r2, #0x0
	mov     r3, #0x10
	bl      Function_5_21d5834_SetGFXFogColor
	mov     r0, #0x0
	mov     r1, r0
	add     r2, sp, #0x8
branch_224b3da: @ 224b3da :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r1, [r2, #0x0]
	.hword  0x1c89 @ add r1, r1, #0x2
	.hword  0x1c52 @ add r2, r2, #0x1
	cmp     r0, #0x20
	blt     branch_224b3da
	mov     r0, r4
	add     r1, sp, #0x8
	bl      Function_5_21d585c
	add     sp, #0x28
	pop     {r4,pc}
@ 0x224b3f2


.align 2, 0
.thumb
Function_224b3f4: @ 224b3f4 :thumb
	bx      lr
@ 0x224b3f6


.align 2, 0


.thumb
Function_224b3f8: @ 224b3f8 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r6, r0
	ldr     r0, [r4, #0x8]
	mov     r5, r2
	mov     r7, r3
	cmp     r0, #0x0
	beq     branch_224b40c
	bl      ErrorHandling
.thumb
branch_224b40c: @ 224b40c :thumb
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
	ldr     r0, [sp, #0x1c]
	str     r0, [r4, #0x0]
	ldr     r0, [r5, #0x0]
	str     r0, [r4, #0x4]
	cmp     r0, #0x0
	bne     branch_224b436
	bl      ErrorHandling
.thumb
branch_224b436: @ 224b436 :thumb
	ldr     r0, [r4, #0x4]
	lsl     r5, r0, #2
	mov     r0, #0x4
	mov     r1, r5
	bl      malloc2
	mov     r1, #0x0
	mov     r2, r5
	str     r0, [r4, #0x8]
	blx     Call_FillMemWithValue
	ldr     r3, [sp, #0x18]
	mov     r0, r6
	mov     r1, r4
	mov     r2, r7
	bl      Function_224b6cc
	pop     {r3-r7,pc}
@ 0x224b45a


.align 2, 0


.thumb
Function_224b45c: @ 224b45c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r7, r1
	bl      Function_22510d0
	str     r0, [sp, #0xc]
	bl      Function_224d720
	mov     r0, r5
	bl      Function_224c27c
	cmp     r0, #0x0
	beq     branch_224b4c4
	mov     r0, r5
	ldr     r4, [pc, #0x4c] @ 0x224b4c8, (=0x16b8)
	bl      Function_224c8ac
	mov     r6, r0
	mov     r0, r5
	bl      Function_224c8c4
	str     r0, [sp, #0x8]
	cmp     r7, #0x1
	beq     branch_224b498
	mov     r0, r5
	bl      Function_2249d38
	cmp     r0, #0x0
	bne     branch_224b4a8
.thumb
branch_224b498: @ 224b498 :thumb
	ldr     r0, [r6, #0x8]
	mvn     r0, r0
	str     r0, [r5, r4]
	ldr     r1, [r5, r4]
	mov     r0, r5
	bl      Function_2249d44
	b       branch_224b4b0
@ 0x224b4a8

.thumb
branch_224b4a8: @ 224b4a8 :thumb
	mov     r0, r5
	bl      Function_2249d5c
	str     r0, [r5, r4]
.thumb
branch_224b4b0: @ 224b4b0 :thumb
	ldr     r0, [sp, #0xc]
	ldr     r3, [sp, #0x8]
	str     r0, [sp, #0x0]
	ldr     r0, [r5, r4]
	add     r1, r5, r4
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, r6
	bl      Function_224b3f8
.thumb
branch_224b4c4: @ 224b4c4 :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x224b4c8

.word 0x16b8 @ 0x224b4c8
.thumb
Function_224b4cc: @ 224b4cc :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	bl      Function_22510d0
	bl      Function_224d720
	ldr     r4, [r0, #0x8]
	mov     r0, r5
	bl      Function_224c288
	cmp     r0, #0x0
	beq     branch_224b50a
	mov     r0, r5
	bl      Function_224c8b8
	mov     r6, r0
	mov     r0, r5
	bl      Function_224c8d0
	ldr     r1, [pc, #0x18] @ 0x224b510, (=0x16c4)
	str     r4, [sp, #0x0]
	mov     r3, r0
	ldr     r0, [r6, #0x8]
	add     r1, r5, r1
	mvn     r0, r0
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, r6
	bl      Function_224b3f8
.thumb
branch_224b50a: @ 224b50a :thumb
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x224b50e


.align 2


.word 0x16c4 @ 0x224b510
.thumb
Function_224b514: @ 224b514 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x0
	bl      Function_224b45c
	mov     r0, r4
	bl      Function_224b4cc
	pop     {r4,pc}
@ 0x224b526


.align 2, 0


.thumb
Function_224b528: @ 224b528 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	cmp     r0, #0x0
	beq     branch_224b55c
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_224b550
	mov     r4, r6
.thumb
branch_224b53a: @ 224b53a :thumb
	ldr     r0, [r5, #0x8]
	ldr     r0, [r0, r4]
	cmp     r0, #0x0
	beq     branch_224b546
	bl      Function_207136c
.thumb
branch_224b546: @ 224b546 :thumb
	ldr     r0, [r5, #0x4]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, r0
	blt     branch_224b53a
.thumb
branch_224b550: @ 224b550 :thumb
	ldr     r0, [r5, #0x8]
	bl      free
	mov     r0, #0x0
	str     r0, [r5, #0x8]
	str     r0, [r5, #0x4]
.thumb
branch_224b55c: @ 224b55c :thumb
	pop     {r4-r6,pc}
@ 0x224b55e


.align 2, 0


.thumb
Function_224b560: @ 224b560 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_224b570
	mov     r0, r4
	bl      Function_224b580
	pop     {r4,pc}
@ 0x224b570


.thumb
Function_224b570: @ 224b570 :thumb
	ldr     r1, [pc, #0x4] @ 0x224b578, (=0x16b8)
	ldr     r3, [pc, #0x8] @ 0x224b57c, (=0x224b529)
	add     r0, r0, r1
	bx      r3
@ 0x224b578

.word 0x16b8 @ 0x224b578
.word 0x224b529 @ 0x224b57c



.thumb
Function_224b580: @ 224b580 :thumb
	ldr     r1, [pc, #0x4] @ 0x224b588, (=0x16c4)
	ldr     r3, [pc, #0x8] @ 0x224b58c, (=0x224b529)
	add     r0, r0, r1
	bx      r3
@ 0x224b588

.word 0x16c4 @ 0x224b588
.word 0x224b529 @ 0x224b58c



.thumb
Function_224b590: @ 224b590 :thumb
	mov     r1, #0x5b
	mov     r2, #0x0
	lsl     r1, r1, #6
	str     r2, [r0, r1]
	.hword  0x1f09 @ sub r1, r1, #0x4
	str     r2, [r0, r1]
	bx      lr
@ 0x224b59e


.align 2, 0


.thumb
Function_224b5a0: @ 224b5a0 :thumb
	ldr     r1, [pc, #0x8] @ 0x224b5ac, (=0x16cc)
	mov     r2, #0x0
	str     r2, [r0, r1]
	.hword  0x1f09 @ sub r1, r1, #0x4
	str     r2, [r0, r1]
	bx      lr
@ 0x224b5ac

.word 0x16cc @ 0x224b5ac
.thumb
Function_224b5b0: @ 224b5b0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x28] @ 0x224b5e0, (=0x16cc)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_224b5c0
	bl      ErrorHandling
.thumb
branch_224b5c0: @ 224b5c0 :thumb
	ldr     r0, [pc, #0x20] @ 0x224b5e4, (=0x16c8)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_224b5cc
	bl      ErrorHandling
.thumb
branch_224b5cc: @ 224b5cc :thumb
	ldr     r0, [pc, #0x18] @ 0x224b5e8, (=0x16b8)
	add     r3, r4, r0
	add     r0, #0xc
	add     r2, r4, r0
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	pop     {r4,pc}
@ 0x224b5de


.align 2


.word 0x16cc @ 0x224b5e0
.word 0x16c8 @ 0x224b5e4
.word 0x16b8 @ 0x224b5e8
.thumb
Function_224b5ec: @ 224b5ec :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x5b
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_224b5fe
	bl      ErrorHandling
.thumb
branch_224b5fe: @ 224b5fe :thumb
	ldr     r0, [pc, #0x1c] @ 0x224b61c, (=0x16bc)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_224b60a
	bl      ErrorHandling
.thumb
branch_224b60a: @ 224b60a :thumb
	ldr     r0, [pc, #0x14] @ 0x224b620, (=0x16c4)
	add     r3, r4, r0
	sub     r0, #0xc
	add     r2, r4, r0
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	pop     {r4,pc}
@ 0x224b61c

.word 0x16bc @ 0x224b61c
.word 0x16c4 @ 0x224b620
.thumb
Function_224b624: @ 224b624 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r6, [pc, #0x1c] @ 0x224b648, (=0x16b8)
	cmp     r4, #0x18
	bcc     branch_224b634
	bl      ErrorHandling
.thumb
branch_224b634: @ 224b634 :thumb
	mov     r0, #0x1
	ldr     r1, [r5, r6]
	lsl     r0, r4
	orr     r0, r1
	str     r0, [r5, r6]
	ldr     r1, [r5, r6]
	mov     r0, r5
	bl      Function_2249d44
	pop     {r4-r6,pc}
@ 0x224b648

.word 0x16b8 @ 0x224b648
.thumb
Function_224b64c: @ 224b64c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, #0x1
	lsl     r0, r1
	mvn     r4, r0
	ldr     r6, [pc, #0x18] @ 0x224b670, (=0x16b8)
	cmp     r1, #0x18
	bcc     branch_224b660
	bl      ErrorHandling
.thumb
branch_224b660: @ 224b660 :thumb
	ldr     r0, [r5, r6]
	and     r0, r4
	str     r0, [r5, r6]
	ldr     r1, [r5, r6]
	mov     r0, r5
	bl      Function_2249d44
	pop     {r4-r6,pc}
@ 0x224b670

.word 0x16b8 @ 0x224b670
.thumb
Function_224b674: @ 224b674 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r6, [pc, #0x18] @ 0x224b694, (=0x16b8)
	cmp     r4, #0x18
	bcc     branch_224b684
	bl      ErrorHandling
.thumb
branch_224b684: @ 224b684 :thumb
	mov     r0, #0x1
	mov     r1, r0
	ldr     r2, [r5, r6]
	lsl     r1, r4
	tst     r1, r2
	bne     branch_224b692
	mov     r0, #0x0
.thumb
branch_224b692: @ 224b692 :thumb
	pop     {r4-r6,pc}
@ 0x224b694

.word 0x16b8 @ 0x224b694
.thumb
Function_224b698: @ 224b698 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r6, [pc, #0x18] @ 0x224b6b8, (=0x16c4)
	cmp     r4, #0x18
	bcc     branch_224b6a8
	bl      ErrorHandling
.thumb
branch_224b6a8: @ 224b6a8 :thumb
	mov     r0, #0x1
	mov     r1, r0
	ldr     r2, [r5, r6]
	lsl     r1, r4
	tst     r1, r2
	bne     branch_224b6b6
	mov     r0, #0x0
.thumb
branch_224b6b6: @ 224b6b6 :thumb
	pop     {r4-r6,pc}
@ 0x224b6b8

.word 0x16c4 @ 0x224b6b8
.thumb
Function_224b6bc: @ 224b6bc :thumb
	ldr     r1, [pc, #0x4] @ 0x224b6c4, (=0x16b8)
	ldr     r3, [pc, #0x8] @ 0x224b6c8, (=0x2249d45)
	ldr     r1, [r0, r1]
	bx      r3
@ 0x224b6c4

.word 0x16b8 @ 0x224b6c4
.word Function_2249d44+1 @ =0x2249d45, 0x224b6c8
.thumb
Function_224b6cc: @ 224b6cc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r7, r1
	str     r0, [sp, #0x0]
	ldr     r0, [r7, #0x4]
	mov     r6, r2
	str     r3, [sp, #0x4]
	cmp     r0, #0x0
	beq     branch_224b704
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_224b704
	ble     branch_224b704
	mov     r5, r4
.thumb
branch_224b6e8: @ 224b6e8 :thumb
	ldr     r0, [sp, #0x0]
	ldr     r2, [sp, #0x4]
	mov     r1, r4
	mov     r3, r6
	bl      Function_224b708
	ldr     r1, [r7, #0x8]
	.hword  0x1c64 @ add r4, r4, #0x1
	str     r0, [r1, r5]
	ldr     r0, [r7, #0x4]
	.hword  0x1d2d @ add r5, r5, #0x4
	add     r6, #0xc
	cmp     r4, r0
	blt     branch_224b6e8
.thumb
branch_224b704: @ 224b704 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x224b708

.thumb
Function_224b708: @ 224b708 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x20
	mov     r5, r0
	ldrh    r0, [r3, #0x4]
	lsl     r4, r0, #2
	ldr     r0, [pc, #0x30] @ 0x224b744, (=0x2252f6c)
	ldr     r4, [r0, r4]
	add     r0, sp, #0x8
	strh    r1, [r0, #0x0]
	strh    r2, [r0, #0x2]
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x10
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	mov     r1, r4
	str     r0, [r2, #0x0]
	mov     r2, #0x0
	str     r5, [sp, #0x1c]
	add     r0, sp, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x0]
	mov     r3, r2
	ldr     r0, [r0, #0x40]
	bl      Function_5_21df72c
	add     sp, #0x20
	pop     {r3-r5,pc}
@ 0x224b742


.align 2


.word 0x2252f6c @ 0x224b744
.thumb
Function_224b748: @ 224b748 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	str     r1, [sp, #0x0]
	str     r2, [sp, #0x4]
	str     r3, [sp, #0x8]
	ldr     r7, [sp, #0x20]
	bl      Function_224c27c
	cmp     r0, #0x0
	beq     branch_224b7ac
	mov     r0, r5
	bl      Function_224c8ac
	ldr     r6, [r0, #0x4]
	cmp     r6, #0x0
	beq     branch_224b7ac
	mov     r0, r5
	bl      Function_224c8dc
	mov     r4, r0
.thumb
branch_224b772: @ 224b772 :thumb
	mov     r0, #0x4
	ldsh    r0, [r4, r0]
	cmp     r7, r0
	bne     branch_224b7a6
	mov     r3, r4
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	ldr     r2, [sp, #0x8]
	add     r3, #0x8
	bl      Function_2250e6c
	cmp     r0, #0x0
	beq     branch_224b7a6
	mov     r0, #0x6
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_224b79e
	ldr     r1, [r4, #0x0]
	mov     r0, r5
	bl      Function_224b624
	b       branch_224b7a6
@ 0x224b79e

.thumb
branch_224b79e: @ 224b79e :thumb
	ldr     r1, [r4, #0x0]
	mov     r0, r5
	bl      Function_224b64c
.thumb
branch_224b7a6: @ 224b7a6 :thumb
	add     r4, #0x14
	.hword  0x1e76 @ sub r6, r6, #0x1
	bne     branch_224b772
.thumb
branch_224b7ac: @ 224b7ac :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x224b7b0

.thumb
Function_224b7b0: @ 224b7b0 :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	ldr     r1, [pc, #0x80] @ 0x224b838, (=0x16b8)
	str     r0, [sp, #0x0]
	add     r4, r0, r1
	cmp     r7, #0x19
	bne     branch_224b7c2
	bl      ErrorHandling
.thumb
branch_224b7c2: @ 224b7c2 :thumb
	ldr     r0, [r4, #0x4]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_224b7f8
	mov     r5, r6
.thumb
branch_224b7cc: @ 224b7cc :thumb
	ldr     r0, [r4, #0x8]
	ldr     r0, [r0, r5]
	bl      Function_20714f0
	cmp     r0, #0x1
	bne     branch_224b7ee
	ldr     r0, [r4, #0x8]
	ldr     r0, [r0, r5]
	bl      Function_224b958
	lsl     r1, r0, #3
	ldr     r0, [pc, #0x58] @ 0x224b83c, (=0x22531d0)
	ldrh    r0, [r0, r1]
	cmp     r7, r0
	bne     branch_224b7ee
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x224b7ee

.thumb
branch_224b7ee: @ 224b7ee :thumb
	ldr     r0, [r4, #0x4]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, r0
	blt     branch_224b7cc
.thumb
branch_224b7f8: @ 224b7f8 :thumb
	ldr     r1, [pc, #0x44] @ 0x224b840, (=0x16c4)
	ldr     r0, [sp, #0x0]
	mov     r6, #0x0
	add     r5, r0, r1
	ldr     r0, [r5, #0x4]
	cmp     r0, #0x0
	ble     branch_224b834
	mov     r4, r6
.thumb
branch_224b808: @ 224b808 :thumb
	ldr     r0, [r5, #0x8]
	ldr     r0, [r0, r4]
	bl      Function_20714f0
	cmp     r0, #0x1
	bne     branch_224b82a
	ldr     r0, [r5, #0x8]
	ldr     r0, [r0, r4]
	bl      Function_224b958
	lsl     r1, r0, #3
	ldr     r0, [pc, #0x1c] @ 0x224b83c, (=0x22531d0)
	ldrh    r0, [r0, r1]
	cmp     r7, r0
	bne     branch_224b82a
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x224b82a

.thumb
branch_224b82a: @ 224b82a :thumb
	ldr     r0, [r5, #0x4]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, r0
	blt     branch_224b808
.thumb
branch_224b834: @ 224b834 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224b838

.word 0x16b8 @ 0x224b838
.word 0x22531d0 @ 0x224b83c
.word 0x16c4 @ 0x224b840
.thumb
Function_224b844: @ 224b844 :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	ldr     r1, [pc, #0x84] @ 0x224b8d0, (=0x16b8)
	str     r0, [sp, #0x0]
	add     r4, r0, r1
	cmp     r7, #0x5
	bne     branch_224b856
	bl      ErrorHandling
.thumb
branch_224b856: @ 224b856 :thumb
	ldr     r0, [r4, #0x4]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_224b88e
	mov     r5, r6
.thumb
branch_224b860: @ 224b860 :thumb
	ldr     r0, [r4, #0x8]
	ldr     r0, [r0, r5]
	bl      Function_20714f0
	cmp     r0, #0x1
	bne     branch_224b884
	ldr     r0, [r4, #0x8]
	ldr     r0, [r0, r5]
	bl      Function_224b958
	lsl     r1, r0, #3
	ldr     r0, [pc, #0x5c] @ 0x224b8d4, (=0x22531d0)
	add     r0, r0, r1
	ldrh    r0, [r0, #0x2]
	cmp     r7, r0
	bne     branch_224b884
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x224b884

.thumb
branch_224b884: @ 224b884 :thumb
	ldr     r0, [r4, #0x4]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, r0
	blt     branch_224b860
.thumb
branch_224b88e: @ 224b88e :thumb
	ldr     r1, [pc, #0x48] @ 0x224b8d8, (=0x16c4)
	ldr     r0, [sp, #0x0]
	mov     r6, #0x0
	add     r5, r0, r1
	ldr     r0, [r5, #0x4]
	cmp     r0, #0x0
	ble     branch_224b8cc
	mov     r4, r6
.thumb
branch_224b89e: @ 224b89e :thumb
	ldr     r0, [r5, #0x8]
	ldr     r0, [r0, r4]
	bl      Function_20714f0
	cmp     r0, #0x1
	bne     branch_224b8c2
	ldr     r0, [r5, #0x8]
	ldr     r0, [r0, r4]
	bl      Function_224b958
	lsl     r1, r0, #3
	ldr     r0, [pc, #0x1c] @ 0x224b8d4, (=0x22531d0)
	add     r0, r0, r1
	ldrh    r0, [r0, #0x2]
	cmp     r7, r0
	bne     branch_224b8c2
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x224b8c2

.thumb
branch_224b8c2: @ 224b8c2 :thumb
	ldr     r0, [r5, #0x4]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, r0
	blt     branch_224b89e
.thumb
branch_224b8cc: @ 224b8cc :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224b8d0

.word 0x16b8 @ 0x224b8d0
.word 0x22531d0 @ 0x224b8d4
.word 0x16c4 @ 0x224b8d8
.thumb
Function_224b8dc: @ 224b8dc :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	ldr     r1, [pc, #0x6c] @ 0x224b950, (=0x16b8)
	str     r0, [sp, #0x0]
	add     r4, r0, r1
	ldr     r0, [r4, #0x4]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_224b916
	mov     r5, r6
.thumb
branch_224b8f0: @ 224b8f0 :thumb
	ldr     r0, [r4, #0x8]
	ldr     r0, [r0, r5]
	bl      Function_20714f0
	cmp     r0, #0x1
	bne     branch_224b90c
	ldr     r0, [r4, #0x8]
	ldr     r0, [r0, r5]
	bl      Function_224b958
	cmp     r0, r7
	bne     branch_224b90c
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x224b90c

.thumb
branch_224b90c: @ 224b90c :thumb
	ldr     r0, [r4, #0x4]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, r0
	blt     branch_224b8f0
.thumb
branch_224b916: @ 224b916 :thumb
	ldr     r1, [pc, #0x3c] @ 0x224b954, (=0x16c4)
	ldr     r0, [sp, #0x0]
	mov     r6, #0x0
	add     r5, r0, r1
	ldr     r0, [r5, #0x4]
	cmp     r0, #0x0
	ble     branch_224b94c
	mov     r4, r6
.thumb
branch_224b926: @ 224b926 :thumb
	ldr     r0, [r5, #0x8]
	ldr     r0, [r0, r4]
	bl      Function_20714f0
	cmp     r0, #0x1
	bne     branch_224b942
	ldr     r0, [r5, #0x8]
	ldr     r0, [r0, r4]
	bl      Function_224b958
	cmp     r0, r7
	bne     branch_224b942
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x224b942

.thumb
branch_224b942: @ 224b942 :thumb
	ldr     r0, [r5, #0x4]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, r0
	blt     branch_224b926
.thumb
branch_224b94c: @ 224b94c :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224b950

.word 0x16b8 @ 0x224b950
.word 0x16c4 @ 0x224b954
.thumb
Function_224b958: @ 224b958 :thumb
	push    {r3,lr}
	bl      Function_20715c4
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	pop     {r3,pc}
@ 0x224b964

.thumb
Function_224b964: @ 224b964 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r7, r0
	bl      Function_20715bc
	mov     r6, r0
	mov     r2, r5
	mov     r3, r6
	mov     r4, r5
	add     r2, #0x28
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	add     r4, #0x30
	ldrh    r1, [r4, #0x4]
	mov     r0, r7
	bl      Function_20715c0
	ldrh    r1, [r4, #0x4]
	ldr     r0, [r6, #0x14]
	add     r2, sp, #0x0
	bl      Function_224d8a4
	str     r0, [r5, #0x40]
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x0
	bne     branch_224b9ae
	ldr     r3, [r5, #0x40]
	ldrh    r1, [r4, #0x4]
	add     r2, r3, #0x4
	ldr     r0, [r5, #0x3c]
	add     r3, #0x58
	bl      Function_224da48
.thumb
branch_224b9ae: @ 224b9ae :thumb
	ldr     r0, [r6, #0x14]
	bl      Function_22510d0
	mov     r1, #0x2
	ldsh    r1, [r6, r1]
	cmp     r1, r0
	ldr     r0, [r6, #0x14]
	bne     branch_224b9c6
	ldr     r1, [r4, #0x0]
	bl      Function_224b674
	b       branch_224b9cc
@ 0x224b9c6

.thumb
branch_224b9c6: @ 224b9c6 :thumb
	ldr     r1, [r4, #0x0]
	bl      Function_224b698
.thumb
branch_224b9cc: @ 224b9cc :thumb
	cmp     r0, #0x1
	bne     branch_224b9d4
	mov     r0, #0x0
	b       branch_224b9d6
@ 0x224b9d4

.thumb
branch_224b9d4: @ 224b9d4 :thumb
	mov     r0, #0x1f
.thumb
branch_224b9d6: @ 224b9d6 :thumb
	strb    r0, [r5, #0x0]
	mov     r0, #0x6
	mov     r1, #0xa
	mov     r2, r5
	ldsh    r0, [r4, r0]
	ldsh    r1, [r4, r1]
	add     r2, #0x10
	bl      Function_2064450
	mov     r0, #0x8
	ldsh    r1, [r4, r0]
	lsl     r0, r0, #12
	lsl     r1, r1, #16
	add     r0, r1, r0
	str     r0, [r5, #0x14]
	ldrh    r2, [r4, #0x4]
	ldr     r0, [pc, #0x4c] @ 0x224ba44, (=0x2253298)
	mov     r1, #0xc
	mov     r3, r2
	mul     r3, r1
	add     r1, r0, r3
	ldr     r2, [r5, #0x10]
	ldr     r0, [r0, r3]
	add     r0, r2, r0
	str     r0, [r5, #0x10]
	ldr     r2, [r5, #0x14]
	ldr     r0, [r1, #0x4]
	add     r0, r2, r0
	str     r0, [r5, #0x14]
	ldr     r2, [r5, #0x18]
	ldr     r0, [r1, #0x8]
	add     r0, r2, r0
	str     r0, [r5, #0x18]
	bl      PRNG
	lsr     r2, r0, #31
	lsl     r1, r0, #17
	sub     r1, r1, r2
	mov     r0, #0x11
	ror     r1, r0
	add     r0, r2, r1
	str     r0, [r5, #0x4]
	mov     r0, #0x2
	lsl     r0, r0, #10
	str     r0, [r5, #0x8]
	ldr     r1, [r5, #0x4]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_224ba3e
	ldr     r0, [r5, #0x8]
	neg     r0, r0
	str     r0, [r5, #0x8]
.thumb
branch_224ba3e: @ 224ba3e :thumb
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x224ba42


.align 2


.word 0x2253298 @ 0x224ba44
.thumb
Function_224ba48: @ 224ba48 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r5
	add     r4, #0x28
	ldrh    r0, [r4, #0xc]
	bl      Function_224daec
	cmp     r0, #0x1
	bne     branch_224ba62
	ldr     r0, [r5, #0x40]
	add     r0, #0x58
	bl      Function_2073aa8
.thumb
branch_224ba62: @ 224ba62 :thumb
	ldr     r0, [r4, #0x14]
	ldr     r1, [r5, #0x40]
	bl      Function_224d938
	pop     {r3-r5,pc}
@ 0x224ba6c

.thumb
Function_224ba6c: @ 224ba6c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r1
	mov     r4, r5
	add     r4, #0x28
	mov     r0, r4
	str     r0, [sp, #0x4]
	add     r0, #0x8
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x14]
	bl      Function_22510d0
	ldrh    r1, [r4, #0xc]
	cmp     r1, #0x0
	bne     branch_224baf2
	mov     r1, #0x2
	ldsh    r1, [r4, r1]
	cmp     r0, r1
	bne     branch_224baf2
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	mov     r0, #0x10
	ldsh    r0, [r4, r0]
	add     r1, sp, #0x8
	add     r2, sp, #0xc
	lsl     r6, r0, #1
	ldr     r0, [r4, #0x14]
	mov     r3, #0x1
	ldr     r0, [r0, #0x0]
	ldr     r7, [r0, #0x38]
	mov     r0, r7
	bl      Function_20625b0
	cmp     r0, #0x1
	bne     branch_224baf2
.thumb
branch_224bab6: @ 224bab6 :thumb
	ldr     r0, [sp, #0x8]
	bl      LoadSpritePositionZ
	cmp     r6, r0
	bne     branch_224bae2
	ldr     r0, [sp, #0x8]
	bl      LoadSpritePositionY
	mov     r1, #0x12
	ldsh    r1, [r4, r1]
	cmp     r1, r0
	bne     branch_224bae2
	ldr     r0, [sp, #0x8]
	bl      LoadSpritePositionX
	mov     r1, #0xe
	ldsh    r1, [r4, r1]
	cmp     r1, r0
	bne     branch_224bae2
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	b       branch_224baf2
@ 0x224bae2

.thumb
branch_224bae2: @ 224bae2 :thumb
	mov     r0, r7
	add     r1, sp, #0x8
	add     r2, sp, #0xc
	mov     r3, #0x1
	bl      Function_20625b0
	cmp     r0, #0x1
	beq     branch_224bab6
.thumb
branch_224baf2: @ 224baf2 :thumb
	ldr     r1, [r5, #0x4]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r0, r0, #12
	lsr     r2, r0, #31
	lsl     r1, r0, #29
	sub     r1, r1, r2
	mov     r0, #0x1d
	ror     r1, r0
	add     r0, r2, r1
	lsl     r1, r0, #2
	ldr     r0, [pc, #0xc4] @ 0x224bbd0, (=0x22521e4)
	ldr     r0, [r0, r1]
	str     r0, [r5, #0xc]
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x1
	bne     branch_224bb1c
	ldr     r0, [r5, #0xc]
	asr     r0, r0, #1
	str     r0, [r5, #0xc]
.thumb
branch_224bb1c: @ 224bb1c :thumb
	ldr     r1, [r5, #0x4]
	ldr     r0, [r5, #0x8]
	add     r1, r1, r0
	str     r1, [r5, #0x4]
	bpl     branch_224bb32
	mov     r0, #0x0
	str     r0, [r5, #0x4]
	mov     r0, #0x2
	lsl     r0, r0, #10
	str     r0, [r5, #0x8]
	b       branch_224bb44
@ 0x224bb32

.thumb
branch_224bb32: @ 224bb32 :thumb
	mov     r0, #0x2
	lsl     r0, r0, #14
	cmp     r1, r0
	blt     branch_224bb44
	mov     r0, #0x1e
	lsl     r0, r0, #10
	str     r0, [r5, #0x4]
	ldr     r0, [pc, #0x90] @ 0x224bbd4, (=0xfffff800)
	str     r0, [r5, #0x8]
.thumb
branch_224bb44: @ 224bb44 :thumb
	ldr     r0, [r4, #0x14]
	bl      Function_22510d0
	mov     r1, #0x2
	ldsh    r1, [r4, r1]
	cmp     r1, r0
	ldr     r0, [r4, #0x14]
	bne     branch_224bb5e
	ldr     r1, [sp, #0x4]
	ldr     r1, [r1, #0x0]
	bl      Function_224b674
	b       branch_224bb66
@ 0x224bb5e

.thumb
branch_224bb5e: @ 224bb5e :thumb
	ldr     r1, [sp, #0x4]
	ldr     r1, [r1, #0x0]
	bl      Function_224b698
.thumb
branch_224bb66: @ 224bb66 :thumb
	cmp     r0, #0x1
	bne     branch_224bb8c
	mov     r0, #0x0
	ldsb    r0, [r5, r0]
	cmp     r0, #0x0
	ble     branch_224bba8
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r5, #0x0]
	mov     r0, #0x1
	ldsb    r2, [r5, r0]
	.hword  0x1e81 @ sub r1, r0, #0x2
	cmp     r2, r1
	beq     branch_224bba8
	.hword  0x1e80 @ sub r0, r0, #0x2
	strb    r0, [r5, #0x1]
	ldr     r0, [pc, #0x50] @ 0x224bbd8, (=0x5cc)
	bl      Function_22511e0
	b       branch_224bba8
@ 0x224bb8c

.thumb
branch_224bb8c: @ 224bb8c :thumb
	mov     r0, #0x0
	ldsb    r0, [r5, r0]
	cmp     r0, #0x1f
	bge     branch_224bba8
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x0]
	mov     r0, #0x1
	ldsb    r1, [r5, r0]
	cmp     r1, #0x1
	beq     branch_224bba8
	strb    r0, [r5, #0x1]
	ldr     r0, [pc, #0x34] @ 0x224bbd8, (=0x5cc)
	bl      Function_22511e0
.thumb
branch_224bba8: @ 224bba8 :thumb
	mov     r6, r5
	add     r6, #0x10
	mov     r3, r5
	add     r3, #0x1c
	ldmia   r6!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	str     r0, [r3, #0x0]
	ldr     r1, [r5, #0x20]
	ldr     r0, [r5, #0xc]
	add     r0, r1, r0
	str     r0, [r5, #0x20]
	ldrh    r1, [r4, #0xc]
	ldr     r0, [r4, #0x14]
	bl      Function_224dbe4
	strh    r0, [r5, #0x2]
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x224bbd0

.word 0x22521e4 @ 0x224bbd0
.word 0xfffff800 @ 0x224bbd4
.word 0x5cc @ 0x224bbd8
.thumb
Function_224bbdc: @ 224bbdc :thumb
	push    {r4,lr}
	mov     r4, r1
	ldrh    r0, [r4, #0x2]
	cmp     r0, #0x0
	beq     branch_224bc04
	mov     r0, #0x0
	ldsb    r2, [r4, r0]
	cmp     r2, #0x0
	ble     branch_224bc04
	add     r1, #0x28
	ldr     r0, [r1, #0x14]
	ldrh    r1, [r1, #0xc]
	bl      Function_224daac
	ldr     r0, [r4, #0x40]
	add     r4, #0x1c
	.hword  0x1d00 @ add r0, r0, #0x4
	mov     r1, r4
	bl      Function_2073bb4
.thumb
branch_224bc04: @ 224bc04 :thumb
	pop     {r4,pc}
@ 0x224bc06


.align 2, 0


.thumb
Function_224bc08: @ 224bc08 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r7, r0
	bl      Function_20715bc
	mov     r6, r0
	mov     r2, r5
	mov     r3, r6
	mov     r4, r5
	add     r2, #0x20
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	add     r4, #0x28
	ldrh    r1, [r4, #0x4]
	mov     r0, r7
	bl      Function_20715c0
	ldrh    r1, [r4, #0x4]
	ldr     r0, [r6, #0x14]
	add     r2, sp, #0x0
	bl      Function_224d8a4
	str     r0, [r5, #0x38]
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x0
	bne     branch_224bc52
	ldr     r3, [r5, #0x38]
	ldrh    r1, [r4, #0x4]
	add     r2, r3, #0x4
	ldr     r0, [r5, #0x34]
	add     r3, #0x58
	bl      Function_224da48
.thumb
branch_224bc52: @ 224bc52 :thumb
	ldrh    r0, [r4, #0x4]
	cmp     r0, #0x17
	bne     branch_224bc5e
	ldr     r0, [pc, #0x8c] @ 0x224bce8, (=0x5cb)
	strh    r0, [r5, #0x4]
	b       branch_224bc64
@ 0x224bc5e

.thumb
branch_224bc5e: @ 224bc5e :thumb
	ldr     r0, [pc, #0x8c] @ 0x224bcec, (=0x5cd)
	strh    r0, [r5, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
.thumb
branch_224bc64: @ 224bc64 :thumb
	strh    r0, [r5, #0x6]
	ldr     r0, [r6, #0x14]
	bl      Function_22510d0
	mov     r1, #0x2
	ldsh    r1, [r6, r1]
	cmp     r1, r0
	ldr     r0, [r6, #0x14]
	bne     branch_224bc7e
	ldr     r1, [r4, #0x0]
	bl      Function_224b674
	b       branch_224bc84
@ 0x224bc7e

.thumb
branch_224bc7e: @ 224bc7e :thumb
	ldr     r1, [r4, #0x0]
	bl      Function_224b698
.thumb
branch_224bc84: @ 224bc84 :thumb
	cmp     r0, #0x1
	bne     branch_224bc8e
	mov     r0, #0x0
	strb    r0, [r5, #0x0]
	b       branch_224bca4
@ 0x224bc8e

.thumb
branch_224bc8e: @ 224bc8e :thumb
	mov     r0, #0x1f
	strb    r0, [r5, #0x0]
	ldr     r0, [r5, #0x38]
	add     r0, #0x58
	bl      Function_2073b28
	mov     r1, r0
	ldr     r0, [r5, #0x38]
	add     r0, #0x58
	bl      Function_2073b20
.thumb
branch_224bca4: @ 224bca4 :thumb
	mov     r0, #0x6
	mov     r1, #0xa
	mov     r2, r5
	ldsh    r0, [r4, r0]
	ldsh    r1, [r4, r1]
	add     r2, #0x8
	bl      Function_2064450
	mov     r0, #0x8
	ldsh    r1, [r4, r0]
	lsl     r0, r0, #12
	ldr     r6, [pc, #0x34] @ 0x224bcf0, (=0x2253298)
	lsl     r1, r1, #16
	add     r0, r1, r0
	str     r0, [r5, #0xc]
	ldrh    r1, [r4, #0x4]
	mov     r0, #0xc
	ldr     r2, [r5, #0x8]
	mov     r3, r1
	mul     r3, r0
	ldr     r1, [r6, r3]
	add     r0, r6, r3
	add     r1, r2, r1
	str     r1, [r5, #0x8]
	ldr     r2, [r5, #0xc]
	ldr     r1, [r0, #0x4]
	add     r1, r2, r1
	str     r1, [r5, #0xc]
	ldr     r1, [r5, #0x10]
	ldr     r0, [r0, #0x8]
	add     r0, r1, r0
	str     r0, [r5, #0x10]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x224bce8

.word 0x5cb @ 0x224bce8
.word 0x5cd @ 0x224bcec
.word 0x2253298 @ 0x224bcf0
.thumb
Function_224bcf4: @ 224bcf4 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r5
	add     r4, #0x20
	ldrh    r0, [r4, #0xc]
	bl      Function_224daec
	cmp     r0, #0x1
	bne     branch_224bd0e
	ldr     r0, [r5, #0x38]
	add     r0, #0x58
	bl      Function_2073aa8
.thumb
branch_224bd0e: @ 224bd0e :thumb
	ldr     r0, [r4, #0x14]
	ldr     r1, [r5, #0x38]
	bl      Function_224d938
	pop     {r3-r5,pc}
@ 0x224bd18

.thumb
Function_224bd18: @ 224bd18 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r4, r5
	add     r4, #0x20
	ldr     r0, [r4, #0x14]
	mov     r6, r4
	add     r6, #0x8
	bl      Function_22510d0
	mov     r1, #0x2
	ldsh    r1, [r4, r1]
	cmp     r1, r0
	ldr     r0, [r4, #0x14]
	bne     branch_224bd3c
	ldr     r1, [r6, #0x0]
	bl      Function_224b674
	b       branch_224bd42
@ 0x224bd3c

.thumb
branch_224bd3c: @ 224bd3c :thumb
	ldr     r1, [r6, #0x0]
	bl      Function_224b698
.thumb
branch_224bd42: @ 224bd42 :thumb
	cmp     r0, #0x1
	bne     branch_224bd96
	ldr     r0, [r5, #0x38]
	ldr     r1, [pc, #0x98] @ 0x224bde4, (=0xffffe000)
	add     r0, #0x58
	mov     r2, #0x0
	bl      Function_2073ac0
	ldr     r0, [r5, #0x38]
	add     r0, #0x58
	bl      Function_2073b24
	mov     r3, #0x0
	asr     r2, r0, #11
	lsr     r2, r2, #20
	add     r2, r0, r2
	ldsb    r1, [r5, r3]
	asr     r0, r2, #12
	cmp     r1, r0
	blt     branch_224bdd4
	cmp     r1, #0x0
	ble     branch_224bd92
	.hword  0x1e88 @ sub r0, r1, #0x2
	strb    r0, [r5, #0x0]
	mov     r0, #0x1
	ldsb    r2, [r5, r0]
	.hword  0x1ec1 @ sub r1, r0, #0x3
	cmp     r2, r1
	beq     branch_224bd86
	.hword  0x1ec0 @ sub r0, r0, #0x3
	strb    r0, [r5, #0x1]
	ldrh    r0, [r5, #0x6]
	bl      Function_22511e0
.thumb
branch_224bd86: @ 224bd86 :thumb
	mov     r0, #0x0
	ldsb    r1, [r5, r0]
	cmp     r1, #0x0
	bge     branch_224bdd4
	strb    r0, [r5, #0x0]
	b       branch_224bdd4
@ 0x224bd92

.thumb
branch_224bd92: @ 224bd92 :thumb
	strb    r3, [r5, #0x0]
	b       branch_224bdd4
@ 0x224bd96

.thumb
branch_224bd96: @ 224bd96 :thumb
	mov     r0, #0x0
	ldsb    r0, [r5, r0]
	cmp     r0, #0x1f
	bge     branch_224bdc2
	.hword  0x1c80 @ add r0, r0, #0x2
	strb    r0, [r5, #0x0]
	mov     r0, #0x1
	ldsb    r0, [r5, r0]
	cmp     r0, #0x2
	beq     branch_224bdb4
	mov     r0, #0x2
	strb    r0, [r5, #0x1]
	ldrh    r0, [r5, #0x4]
	bl      Function_22511e0
.thumb
branch_224bdb4: @ 224bdb4 :thumb
	mov     r0, #0x0
	ldsb    r0, [r5, r0]
	cmp     r0, #0x1f
	ble     branch_224bdc6
	mov     r0, #0x1f
	strb    r0, [r5, #0x0]
	b       branch_224bdc6
@ 0x224bdc2

.thumb
branch_224bdc2: @ 224bdc2 :thumb
	mov     r0, #0x1f
	strb    r0, [r5, #0x0]
.thumb
branch_224bdc6: @ 224bdc6 :thumb
	ldr     r0, [r5, #0x38]
	mov     r1, #0x2
	add     r0, #0x58
	lsl     r1, r1, #12
	mov     r2, #0x0
	bl      Function_2073ac0
.thumb
branch_224bdd4: @ 224bdd4 :thumb
	ldrh    r1, [r4, #0xc]
	mov     r2, r5
	ldr     r0, [r4, #0x14]
	add     r2, #0x8
	bl      Function_224dbe4
	strh    r0, [r5, #0x2]
	pop     {r4-r6,pc}
@ 0x224bde4

.word 0xffffe000 @ 0x224bde4
.thumb
Function_224bde8: @ 224bde8 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldrh    r0, [r4, #0x2]
	cmp     r0, #0x0
	beq     branch_224be10
	mov     r0, #0x0
	ldsb    r2, [r4, r0]
	cmp     r2, #0x0
	ble     branch_224be10
	add     r1, #0x20
	ldr     r0, [r1, #0x14]
	ldrh    r1, [r1, #0xc]
	bl      Function_224daac
	ldr     r0, [r4, #0x38]
	add     r4, #0x8
	.hword  0x1d00 @ add r0, r0, #0x4
	mov     r1, r4
	bl      Function_2073bb4
.thumb
branch_224be10: @ 224be10 :thumb
	pop     {r4,pc}
@ 0x224be12


.align 2, 0


.thumb
Function_224be14: @ 224be14 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r0
	bl      Function_22510d0
	mov     r6, r0
	bl      Function_224d720
	mov     r4, r0
	mov     r0, r5
	bl      Function_224bfbc
	ldr     r2, [r4, #0x8]
	mov     r0, r5
	mov     r1, r6
	bl      Function_224c0f8
	mov     r0, r5
	bl      Function_224c2c4
	mov     r0, r5
	bl      Function_224c640
	mov     r0, r5
	bl      Function_224c6e4
	mov     r0, r5
	bl      Function_224c808
	mov     r0, r5
	bl      Function_2249d38
	cmp     r0, #0x0
	bne     branch_224be78
	mov     r0, r5
	add     r1, sp, #0xc
	add     r2, sp, #0x8
	add     r3, sp, #0x4
	bl      Function_2250f44
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x8]
	ldr     r3, [sp, #0x4]
	mov     r0, r5
	bl      Function_224c378
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x224be78

.thumb
branch_224be78: @ 224be78 :thumb
	mov     r0, r5
	bl      Function_2249e44
	mov     r1, r0
	mov     r0, r5
	bl      Function_224c3f8
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x224be8a


.align 2, 0


.thumb
Function_224be8c: @ 224be8c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_224c724
	mov     r0, r4
	bl      Function_224c680
	mov     r0, r4
	bl      Function_224c300
	mov     r0, r4
	bl      Function_224c854
	mov     r0, r4
	bl      Function_224c164
	mov     r0, r4
	bl      Function_224bffc
	pop     {r4,pc}
@ 0x224beb4

.thumb
Function_224beb4: @ 224beb4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_224c844
	mov     r0, r5
	bl      Function_224c184
	mov     r0, r5
	bl      Function_224c724
	mov     r0, r5
	bl      Function_224c680
	mov     r0, r5
	bl      Function_224c300
	mov     r0, r5
	bl      Function_224c194
	mov     r0, r5
	bl      Function_224c864
	mov     r0, r5
	bl      Function_224b5b0
	mov     r0, r5
	bl      Function_224b590
	mov     r0, r5
	mov     r1, r4
	bl      Function_224c10c
	mov     r0, r5
	bl      Function_224c2c4
	mov     r0, r5
	bl      Function_224c44c
	mov     r0, r5
	bl      Function_224c640
	mov     r0, r5
	bl      Function_224c6e4
	mov     r0, r5
	bl      Function_224c7c8
	pop     {r3-r5,pc}
@ 0x224bf16


.align 2, 0


.thumb
Function_224bf18: @ 224bf18 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_224c724
	mov     r0, r5
	bl      Function_224c680
	mov     r0, r5
	bl      Function_224c300
	mov     r0, r5
	bl      Function_224c834
	mov     r0, r5
	bl      Function_224c174
	mov     r0, r5
	bl      Function_224c1e4
	mov     r0, r5
	bl      Function_224c888
	mov     r0, r5
	bl      Function_224b5ec
	mov     r0, r5
	bl      Function_224b6bc
	mov     r0, r5
	bl      Function_224b5a0
	mov     r0, r5
	bl      Function_224c2c4
	mov     r0, r5
	bl      Function_224c44c
	mov     r0, r5
	bl      Function_224c640
	mov     r0, r5
	bl      Function_224c6e4
	ldr     r0, [pc, #0x14] @ 0x224bf88, (=0x251)
	cmp     r4, r0
	beq     branch_224bf84
	mov     r0, r5
	mov     r1, r4
	bl      Function_224c120
	mov     r0, r5
	bl      Function_224c7e8
.thumb
branch_224bf84: @ 224bf84 :thumb
	pop     {r3-r5,pc}
@ 0x224bf86


.align 2


.word 0x251 @ 0x224bf88
.thumb
Function_224bf8c: @ 224bf8c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r1, #0x0
	mov     r5, r0
	bl      Function_2006d84_GetFilesize
	mov     r1, r0
	mov     r0, #0x4
	bl      malloc
	str     r0, [r4, #0x8]
	ldr     r2, [r4, #0x8]
	mov     r0, r5
	mov     r1, #0x0
	bl      LoadFileFromNARCFileHandler
	ldr     r0, [r4, #0x8]
	ldr     r0, [r0, #0x0]
	str     r0, [r4, #0x0]
	ldr     r0, [r4, #0x8]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r4, #0x4]
	pop     {r3-r5,pc}
@ 0x224bfba


.align 2, 0


.thumb
Function_224bfbc: @ 224bfbc :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x59
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_224bfce
	bl      ErrorHandling
.thumb
branch_224bfce: @ 224bfce :thumb
	ldr     r1, [pc, #0xc] @ 0x224bfdc, (=0x1638)
	ldr     r0, [r4, #0x8]
	add     r1, r4, r1
	bl      Function_224bf8c
	pop     {r4,pc}
@ 0x224bfda


.align 2


.word 0x1638 @ 0x224bfdc
.thumb
Function_224bfe0: @ 224bfe0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x0
	bne     branch_224bfee
	bl      ErrorHandling
.thumb
branch_224bfee: @ 224bfee :thumb
	ldr     r0, [r4, #0x8]
	bl      free
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	pop     {r4,pc}
@ 0x224bffa


.align 2, 0


.thumb
Function_224bffc: @ 224bffc :thumb
	ldr     r1, [pc, #0x4] @ 0x224c004, (=0x1638)
	ldr     r3, [pc, #0x8] @ 0x224c008, (=0x224bfe1)
	add     r0, r0, r1
	bx      r3
@ 0x224c004

.word 0x1638 @ 0x224c004
.word 0x224bfe1 @ 0x224c008
.thumb
Function_224c00c: @ 224c00c :thumb
	push    {r4,lr}
	ldr     r4, [r0, #0x0]
	mov     r2, #0x0
	ldr     r3, [r0, #0x4]
	cmp     r4, #0x0
	ble     branch_224c02a
.thumb
branch_224c018: @ 224c018 :thumb
	ldr     r0, [r3, #0x0]
	cmp     r1, r0
	bne     branch_224c022
	mov     r0, r3
	pop     {r4,pc}
@ 0x224c022

.thumb
branch_224c022: @ 224c022 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r3, #0xc
	cmp     r2, r4
	blt     branch_224c018
.thumb
branch_224c02a: @ 224c02a :thumb
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x224c032


.align 2, 0


.thumb
Function_224c034: @ 224c034 :thumb
	ldr     r2, [pc, #0x4] @ 0x224c03c, (=0x1638)
	ldr     r3, [pc, #0x8] @ 0x224c040, (=0x224c00d)
	add     r0, r0, r2
	bx      r3
@ 0x224c03c

.word 0x1638 @ 0x224c03c
.word Function_224c00c+1 @ =0x224c00d, 0x224c040
.thumb
Function_224c044: @ 224c044 :thumb
	push    {r3,lr}
	bl      Function_224c034
	ldrh    r0, [r0, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	pop     {r3,pc}
@ 0x224c050

.thumb
Function_224c050: @ 224c050 :thumb
	push    {r3-r5,lr}
	mov     r5, r2
	mov     r4, r3
	bl      Function_224c00c
	mov     r1, #0x6
	ldsh    r1, [r0, r1]
	str     r1, [r5, #0x0]
	mov     r1, #0x8
	ldsh    r1, [r0, r1]
	str     r1, [r4, #0x0]
	mov     r1, #0xa
	ldsh    r1, [r0, r1]
	ldr     r0, [sp, #0x10]
	str     r1, [r0, #0x0]
	pop     {r3-r5,pc}
@ 0x224c070

.thumb
Function_224c070: @ 224c070 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r4, [sp, #0x10]
	str     r4, [sp, #0x0]
	ldr     r4, [pc, #0x8] @ 0x224c084, (=0x1638)
	add     r0, r0, r4
	bl      Function_224c050
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x224c084

.word 0x1638 @ 0x224c084
.thumb
Function_224c088: @ 224c088 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x18]
	mov     r6, r2
	cmp     r0, #0x0
	beq     branch_224c09a
	bl      ErrorHandling
.thumb
branch_224c09a: @ 224c09a :thumb
	mov     r2, r4
	mov     r1, #0x1c
	mov     r0, #0x0
.thumb
branch_224c0a0: @ 224c0a0 :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_224c0a0
	ldr     r0, [pc, #0x48] @ 0x224c0f4, (=0x251)
	str     r6, [r4, #0x0]
	cmp     r6, r0
	beq     branch_224c0f2
	mov     r0, r5
	mov     r1, r6
	bl      Function_224c044
	mov     r6, r0
	ldr     r0, [r5, #0x8]
	mov     r1, r6
	bl      Function_2006d84_GetFilesize
	mov     r1, r0
	mov     r0, #0x4
	bl      malloc2
	str     r0, [r4, #0x18]
	ldr     r0, [r5, #0x8]
	ldr     r2, [r4, #0x18]
	mov     r1, r6
	bl      LoadFileFromNARCFileHandler
	ldr     r2, [r4, #0x18]
	str     r2, [r4, #0x14]
	ldr     r1, [r4, #0x18]
	add     r1, #0x14
	str     r1, [r4, #0x4]
	ldr     r0, [r2, #0x4]
	add     r1, r1, r0
	str     r1, [r4, #0x8]
	ldr     r0, [r2, #0x8]
	add     r1, r1, r0
	str     r1, [r4, #0xc]
	ldr     r0, [r2, #0xc]
	add     r0, r1, r0
	str     r0, [r4, #0x10]
.thumb
branch_224c0f2: @ 224c0f2 :thumb
	pop     {r4-r6,pc}
@ 0x224c0f4

.word 0x251 @ 0x224c0f4
.thumb
Function_224c0f8: @ 224c0f8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r2
	bl      Function_224c10c
	mov     r0, r5
	mov     r1, r4
	bl      Function_224c120
	pop     {r3-r5,pc}
@ 0x224c10c

.thumb
Function_224c10c: @ 224c10c :thumb
	mov     r2, r1
	ldr     r1, [pc, #0x8] @ 0x224c118, (=0x1644)
	ldr     r3, [pc, #0x8] @ 0x224c11c, (=0x224c089)
	add     r1, r0, r1
	bx      r3
@ 0x224c116


.align 2


.word 0x1644 @ 0x224c118
.word 0x224c089 @ 0x224c11c
.thumb
Function_224c120: @ 224c120 :thumb
	mov     r2, r1
	ldr     r1, [pc, #0x8] @ 0x224c12c, (=0x1690)
	ldr     r3, [pc, #0x8] @ 0x224c130, (=0x224c089)
	add     r1, r0, r1
	bx      r3
@ 0x224c12a


.align 2


.word 0x1690 @ 0x224c12c
.word 0x224c089 @ 0x224c130
.thumb
Function_224c134: @ 224c134 :thumb
	mov     r3, r0
	mov     r2, #0x1c
	mov     r1, #0x0
.thumb
branch_224c13a: @ 224c13a :thumb
	strb    r1, [r3, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_224c13a
	ldr     r1, [pc, #0x4] @ 0x224c148, (=0x251)
	str     r1, [r0, #0x0]
	bx      lr
@ 0x224c148

.word 0x251 @ 0x224c148
.thumb
Function_224c14c: @ 224c14c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x0
	beq     branch_224c15a
	bl      free
.thumb
branch_224c15a: @ 224c15a :thumb
	mov     r0, r4
	bl      Function_224c134
	pop     {r4,pc}
@ 0x224c162


.align 2, 0


.thumb
Function_224c164: @ 224c164 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_224c174
	mov     r0, r4
	bl      Function_224c184
	pop     {r4,pc}
@ 0x224c174

.thumb
Function_224c174: @ 224c174 :thumb
	ldr     r1, [pc, #0x4] @ 0x224c17c, (=0x1644)
	ldr     r3, [pc, #0x8] @ 0x224c180, (=0x224c14d)
	add     r0, r0, r1
	bx      r3
@ 0x224c17c

.word 0x1644 @ 0x224c17c
.word 0x224c14d @ 0x224c180
.thumb
Function_224c184: @ 224c184 :thumb
	ldr     r1, [pc, #0x4] @ 0x224c18c, (=0x1690)
	ldr     r3, [pc, #0x8] @ 0x224c190, (=0x224c14d)
	add     r0, r0, r1
	bx      r3
@ 0x224c18c

.word 0x1690 @ 0x224c18c
.word 0x224c14d @ 0x224c190
.thumb
Function_224c194: @ 224c194 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x38] @ 0x224c1d4, (=0x1690)
	ldr     r1, [r4, r0]
	ldr     r0, [pc, #0x38] @ 0x224c1d8, (=0x251)
	cmp     r1, r0
	beq     branch_224c1a6
	bl      ErrorHandling
.thumb
branch_224c1a6: @ 224c1a6 :thumb
	ldr     r0, [pc, #0x34] @ 0x224c1dc, (=0x16a8)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_224c1b2
	bl      ErrorHandling
.thumb
branch_224c1b2: @ 224c1b2 :thumb
	ldr     r2, [pc, #0x2c] @ 0x224c1e0, (=0x1644)
	mov     r0, r2
	add     r0, #0x4c
	add     r5, r4, r2
	add     r3, r4, r0
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	str     r0, [r3, #0x0]
	add     r0, r4, r2
	bl      Function_224c134
	pop     {r3-r5,pc}
@ 0x224c1d4

.word 0x1690 @ 0x224c1d4
.word 0x251 @ 0x224c1d8
.word 0x16a8 @ 0x224c1dc
.word 0x1644 @ 0x224c1e0
.thumb
Function_224c1e4: @ 224c1e4 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x38] @ 0x224c224, (=0x1644)
	ldr     r1, [r4, r0]
	ldr     r0, [pc, #0x38] @ 0x224c228, (=0x251)
	cmp     r1, r0
	beq     branch_224c1f6
	bl      ErrorHandling
.thumb
branch_224c1f6: @ 224c1f6 :thumb
	ldr     r0, [pc, #0x34] @ 0x224c22c, (=0x165c)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_224c202
	bl      ErrorHandling
.thumb
branch_224c202: @ 224c202 :thumb
	ldr     r2, [pc, #0x2c] @ 0x224c230, (=0x1690)
	mov     r0, r2
	sub     r0, #0x4c
	add     r5, r4, r2
	add     r3, r4, r0
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	str     r0, [r3, #0x0]
	add     r0, r4, r2
	bl      Function_224c134
	pop     {r3-r5,pc}
@ 0x224c224

.word 0x1644 @ 0x224c224
.word 0x251 @ 0x224c228
.word 0x165c @ 0x224c22c
.word 0x1690 @ 0x224c230
.thumb
Function_224c234: @ 224c234 :thumb
	ldr     r0, [r0, #0x14]
	ldr     r0, [r0, #0x4]
	bx      lr
@ 0x224c23a


.align 2, 0


.thumb
Function_224c23c: @ 224c23c :thumb
	ldr     r0, [r0, #0x4]
	ldr     r0, [r0, #0x0]
	bx      lr
@ 0x224c242


.align 2, 0


.thumb
Function_224c244: @ 224c244 :thumb
	ldr     r0, [r0, #0x4]
	.hword  0x1d00 @ add r0, r0, #0x4
	bx      lr
@ 0x224c24a


.align 2, 0


.thumb
Function_224c24c: @ 224c24c :thumb
	ldr     r0, [r0, #0x14]
	ldr     r0, [r0, #0x8]
	bx      lr
@ 0x224c252


.align 2, 0


.thumb
Function_224c254: @ 224c254 :thumb
	ldr     r0, [r0, #0x8]
	ldr     r0, [r0, #0x0]
	bx      lr
@ 0x224c25a


.align 2, 0


.thumb
Function_224c25c: @ 224c25c :thumb
	ldr     r0, [r0, #0x8]
	.hword  0x1d00 @ add r0, r0, #0x4
	bx      lr
@ 0x224c262


.align 2, 0


.thumb
Function_224c264: @ 224c264 :thumb
	ldr     r0, [r0, #0x14]
	ldr     r0, [r0, #0xc]
	bx      lr
@ 0x224c26a


.align 2, 0


.thumb
Function_224c26c: @ 224c26c :thumb
	ldr     r0, [r0, #0xc]
	ldr     r0, [r0, #0x0]
	bx      lr
@ 0x224c272


.align 2, 0


.thumb
Function_224c274: @ 224c274 :thumb
	ldr     r0, [r0, #0xc]
	.hword  0x1d00 @ add r0, r0, #0x4
	bx      lr
@ 0x224c27a


.align 2, 0


.thumb
Function_224c27c: @ 224c27c :thumb
	ldr     r1, [pc, #0x4] @ 0x224c284, (=0x1658)
	ldr     r0, [r0, r1]
	ldr     r0, [r0, #0x10]
	bx      lr
@ 0x224c284

.word 0x1658 @ 0x224c284
.thumb
Function_224c288: @ 224c288 :thumb
	ldr     r1, [pc, #0x14] @ 0x224c2a0, (=0x1690)
	mov     r3, #0x0
	add     r2, r0, r1
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x10] @ 0x224c2a4, (=0x251)
	cmp     r1, r0
	beq     branch_224c29a
	ldr     r0, [r2, #0x14]
	ldr     r3, [r0, #0x10]
.thumb
branch_224c29a: @ 224c29a :thumb
	mov     r0, r3
	bx      lr
@ 0x224c29e


.align 2


.word 0x1690 @ 0x224c2a0
.word 0x251 @ 0x224c2a4
.thumb
Function_224c2a8: @ 224c2a8 :thumb
	ldr     r0, [r0, #0x10]
	bx      lr
@ 0x224c2ac

.thumb
Function_224c2ac: @ 224c2ac :thumb
	ldr     r0, [r0, #0x10]
	add     r0, #0xc
	bx      lr
@ 0x224c2b2


.align 2, 0


.thumb
Function_224c2b4: @ 224c2b4 :thumb
	ldr     r2, [r0, #0x10]
	ldr     r0, [r2, #0x0]
	add     r1, r0, #0x1
	mov     r0, #0xc
	mul     r0, r1
	add     r0, r2, r0
	bx      lr
@ 0x224c2c2


.align 2, 0


.thumb
Function_224c2c4: @ 224c2c4 :thumb
	push    {r4-r6,lr}
	ldr     r6, [pc, #0x30] @ 0x224c2f8, (=0x1644)
	mov     r5, r0
	mov     r0, r6
	add     r0, #0x24
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_224c2d8
	bl      ErrorHandling
.thumb
branch_224c2d8: @ 224c2d8 :thumb
	add     r0, r5, r6
	bl      Function_224c234
	cmp     r0, #0x0
	beq     branch_224c2f6
	ldr     r0, [pc, #0x18] @ 0x224c2fc, (=0x1660)
	add     r4, r5, r0
	add     r0, r5, r6
	bl      Function_224c23c
	str     r0, [r4, #0x4]
	add     r0, r5, r6
	bl      Function_224c244
	str     r0, [r4, #0x8]
.thumb
branch_224c2f6: @ 224c2f6 :thumb
	pop     {r4-r6,pc}
@ 0x224c2f8

.word 0x1644 @ 0x224c2f8
.word 0x1660 @ 0x224c2fc
.thumb
Function_224c300: @ 224c300 :thumb
	push    {r4,lr}
	ldr     r1, [pc, #0x1c] @ 0x224c320, (=0x1660)
	add     r4, r0, r1
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x0
	beq     branch_224c310
	bl      free
.thumb
branch_224c310: @ 224c310 :thumb
	mov     r1, #0x14
	mov     r0, #0x0
.thumb
branch_224c314: @ 224c314 :thumb
	strb    r0, [r4, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_224c314
	pop     {r4,pc}
@ 0x224c31e


.align 2


.word 0x1660 @ 0x224c320
.thumb
Function_224c324: @ 224c324 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x48] @ 0x224c374, (=0x1660)
	str     r2, [sp, #0x4]
	add     r0, r0, r1
	ldr     r7, [r0, #0x4]
	mov     r6, #0x0
	str     r3, [sp, #0x8]
	ldr     r5, [sp, #0x20]
	ldr     r4, [r0, #0x8]
	cmp     r7, #0x0
	bne     branch_224c344
	add     sp, #0xc
	mov     r0, r6
	pop     {r4-r7,pc}
@ 0x224c344

.thumb
branch_224c344: @ 224c344 :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	ldr     r2, [sp, #0x8]
	add     r3, r4, #0x4
	bl      Function_2250e6c
	cmp     r0, #0x1
	bne     branch_224c366
	cmp     r5, #0x4
	bne     branch_224c360
	mov     r0, #0x0
	ldsh    r0, [r4, r0]
	cmp     r5, r0
	bne     branch_224c366
.thumb
branch_224c360: @ 224c360 :thumb
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x224c366

.thumb
branch_224c366: @ 224c366 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x14
	cmp     r6, r7
	blt     branch_224c344
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x224c374

.word 0x1660 @ 0x224c374
.thumb
Function_224c378: @ 224c378 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	str     r2, [sp, #0x8]
	str     r1, [sp, #0x4]
	ldr     r2, [pc, #0x70] @ 0x224c3f4, (=0x1660)
	mov     r1, r0
	add     r1, r1, r2
	ldr     r5, [sp, #0x28]
	ldr     r4, [r1, #0x8]
	ldr     r7, [r1, #0x4]
	str     r1, [sp, #0x10]
	str     r7, [r1, #0x0]
	mov     r1, r7
	str     r0, [sp, #0x0]
	str     r3, [sp, #0xc]
	mov     r6, #0x0
	bl      Function_2249e20
	ldr     r0, [sp, #0x10]
	ldr     r0, [r0, #0x10]
	cmp     r0, #0x0
	beq     branch_224c3ae
	bl      free
	ldr     r0, [sp, #0x10]
	mov     r1, r6
	str     r1, [r0, #0x10]
.thumb
branch_224c3ae: @ 224c3ae :thumb
	cmp     r7, #0x0
	beq     branch_224c3ee
.thumb
branch_224c3b2: @ 224c3b2 :thumb
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x8]
	ldr     r2, [sp, #0xc]
	add     r3, r4, #0x4
	bl      Function_2250e6c
	cmp     r0, #0x1
	bne     branch_224c3e6
	cmp     r5, #0x4
	beq     branch_224c3ce
	mov     r0, #0x0
	ldsh    r0, [r4, r0]
	cmp     r5, r0
	bne     branch_224c3e6
.thumb
branch_224c3ce: @ 224c3ce :thumb
	ldr     r0, [sp, #0x10]
	mov     r1, r6
	str     r6, [r0, #0x0]
	ldr     r0, [sp, #0x0]
	bl      Function_2249e20
	ldrh    r1, [r4, #0x2]
	ldr     r0, [sp, #0x0]
	bl      Function_224c4f4
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x224c3e6

.thumb
branch_224c3e6: @ 224c3e6 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x14
	cmp     r6, r7
	blt     branch_224c3b2
.thumb
branch_224c3ee: @ 224c3ee :thumb
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x224c3f2


.align 2


.word 0x1660 @ 0x224c3f4
.thumb
Function_224c3f8: @ 224c3f8 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	ldr     r0, [pc, #0x48] @ 0x224c448, (=0x1660)
	mov     r5, r1
	add     r4, r7, r0
	ldr     r0, [r4, #0x8]
	ldr     r6, [r4, #0x4]
	str     r0, [sp, #0x0]
	str     r6, [r4, #0x0]
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x0
	beq     branch_224c418
	bl      free
	mov     r0, #0x0
	str     r0, [r4, #0x10]
.thumb
branch_224c418: @ 224c418 :thumb
	cmp     r6, #0x0
	beq     branch_224c420
	cmp     r5, r6
	bcc     branch_224c42a
.thumb
branch_224c420: @ 224c420 :thumb
	mov     r0, r7
	mov     r1, r6
	bl      Function_2249e20
	pop     {r3-r7,pc}
@ 0x224c42a

.thumb
branch_224c42a: @ 224c42a :thumb
	mov     r0, r7
	mov     r1, r5
	str     r5, [r4, #0x0]
	bl      Function_2249e20
	mov     r1, #0x14
	mov     r2, r5
	mul     r2, r1
	ldr     r1, [sp, #0x0]
	mov     r0, r7
	add     r1, r1, r2
	ldrh    r1, [r1, #0x2]
	bl      Function_224c4f4
	pop     {r3-r7,pc}
@ 0x224c448

.word 0x1660 @ 0x224c448
.thumb
Function_224c44c: @ 224c44c :thumb
	push    {r4,lr}
	ldr     r1, [pc, #0x1c] @ 0x224c46c, (=0x1660)
	add     r4, r0, r1
	ldr     r1, [r4, #0x4]
	str     r1, [r4, #0x0]
	ldr     r1, [r4, #0x4]
	bl      Function_2249e20
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x0
	beq     branch_224c46a
	bl      free
	mov     r0, #0x0
	str     r0, [r4, #0x10]
.thumb
branch_224c46a: @ 224c46a :thumb
	pop     {r4,pc}
@ 0x224c46c

.word 0x1660 @ 0x224c46c
.thumb
Function_224c470: @ 224c470 :thumb
	ldr     r1, [pc, #0x1c] @ 0x224c490, (=0x1660)
	add     r1, r0, r1
	ldr     r0, [r1, #0x4]
	cmp     r0, #0x0
	beq     branch_224c480
	ldr     r2, [r1, #0x0]
	cmp     r2, r0
	blt     branch_224c484
.thumb
branch_224c480: @ 224c480 :thumb
	mov     r0, #0x4
	bx      lr
@ 0x224c484

.thumb
branch_224c484: @ 224c484 :thumb
	mov     r0, #0x14
	ldr     r1, [r1, #0x8]
	mul     r0, r2
	ldsh    r0, [r1, r0]
	bx      lr
@ 0x224c48e


.align 2


.word 0x1660 @ 0x224c490
.thumb
Function_224c494: @ 224c494 :thumb
	ldr     r1, [pc, #0x1c] @ 0x224c4b4, (=0x1660)
	add     r1, r0, r1
	ldr     r0, [r1, #0x4]
	cmp     r0, #0x0
	beq     branch_224c4a4
	ldr     r2, [r1, #0x0]
	cmp     r2, r0
	blt     branch_224c4a8
.thumb
branch_224c4a4: @ 224c4a4 :thumb
	mov     r0, #0x4
	bx      lr
@ 0x224c4a8

.thumb
branch_224c4a8: @ 224c4a8 :thumb
	mov     r0, #0x14
	ldr     r1, [r1, #0x8]
	mul     r0, r2
	ldsh    r0, [r1, r0]
	bx      lr
@ 0x224c4b2


.align 2


.word 0x1660 @ 0x224c4b4
.thumb
Function_224c4b8: @ 224c4b8 :thumb
	push    {r3-r5,lr}
	ldr     r4, [pc, #0x34] @ 0x224c4f0, (=0x1660)
	add     r4, r0, r4
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_224c4ca
	ldr     r5, [r4, #0x0]
	cmp     r5, r0
	blt     branch_224c4ce
.thumb
branch_224c4ca: @ 224c4ca :thumb
	mov     r0, #0x4
	pop     {r3-r5,pc}
@ 0x224c4ce

.thumb
branch_224c4ce: @ 224c4ce :thumb
	mov     r0, #0x14
	ldr     r4, [r4, #0x8]
	mul     r0, r5
	add     r4, r4, r0
	mov     r0, r1
	mov     r1, r2
	mov     r2, r3
	add     r3, r4, #0x4
	bl      Function_2250e6c
	cmp     r0, #0x0
	bne     branch_224c4ea
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224c4ea

.thumb
branch_224c4ea: @ 224c4ea :thumb
	mov     r0, #0x0
	ldsh    r0, [r4, r0]
	pop     {r3-r5,pc}
@ 0x224c4f0

.word 0x1660 @ 0x224c4f0
.thumb
Function_224c4f4: @ 224c4f4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x2c] @ 0x224c528, (=0x1660)
	mov     r6, r1
	add     r4, r5, r0
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x0
	beq     branch_224c508
	bl      free
.thumb
branch_224c508: @ 224c508 :thumb
	ldr     r0, [r5, #0xc]
	mov     r1, r6
	bl      Function_2006d84_GetFilesize
	str     r0, [r4, #0xc]
	ldr     r1, [r4, #0xc]
	mov     r0, #0x4
	bl      malloc2
	str     r0, [r4, #0x10]
	ldr     r0, [r5, #0xc]
	ldr     r2, [r4, #0x10]
	mov     r1, r6
	bl      LoadFileFromNARCFileHandler
	pop     {r4-r6,pc}
@ 0x224c528

.word 0x1660 @ 0x224c528
.thumb
Function_224c52c: @ 224c52c :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	ldr     r1, [pc, #0x24] @ 0x224c558, (=0x1660)
	mov     r7, r2
	add     r4, r0, r1
	ldr     r1, [r4, #0x0]
	mov     r0, #0x14
	ldr     r2, [r4, #0x8]
	mul     r0, r1
	add     r5, r2, r0
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x0
	bne     branch_224c54a
	bl      ErrorHandling
.thumb
branch_224c54a: @ 224c54a :thumb
	ldrh    r0, [r5, #0x10]
	ldr     r1, [r4, #0x10]
	mul     r0, r7
	add     r0, r6, r0
	lsl     r0, r0, #1
	ldrh    r0, [r1, r0]
	pop     {r3-r7,pc}
@ 0x224c558

.word 0x1660 @ 0x224c558
.thumb
Function_224c55c: @ 224c55c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	mov     r7, r1
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x8]
	ldr     r1, [pc, #0xc8] @ 0x224c634, (=0x1660)
	ldr     r0, [sp, #0x0]
	str     r2, [sp, #0x4]
	add     r6, r0, r1
	ldr     r0, [r6, #0x4]
	mov     r5, r3
	cmp     r0, #0x0
	beq     branch_224c580
	ldr     r1, [r6, #0x0]
	cmp     r1, r0
	blt     branch_224c586
.thumb
branch_224c580: @ 224c580 :thumb
	add     sp, #0x10
	ldr     r0, [pc, #0xb4] @ 0x224c638, (=0xffff)
	pop     {r3-r7,pc}
@ 0x224c586

.thumb
branch_224c586: @ 224c586 :thumb
	mov     r2, #0x14
	mul     r2, r1
	ldr     r0, [r6, #0x8]
	ldr     r1, [sp, #0x4]
	add     r4, r0, r2
	mov     r0, r7
	mov     r2, r5
	add     r3, r4, #0x4
	bl      Function_2250e6c
	cmp     r0, #0x0
	bne     branch_224c5a4
	add     sp, #0x10
	ldr     r0, [pc, #0x98] @ 0x224c63c, (=0xfffe)
	pop     {r3-r7,pc}
@ 0x224c5a4

.thumb
branch_224c5a4: @ 224c5a4 :thumb
	ldr     r0, [r6, #0x10]
	cmp     r0, #0x0
	bne     branch_224c5ae
	bl      ErrorHandling
.thumb
branch_224c5ae: @ 224c5ae :thumb
	mov     r0, #0x0
	ldsh    r0, [r4, r0]
	cmp     r0, #0x3
	bhi     branch_224c622
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x224c5c2

Jumppoints_224c5c2:
.hword branch_224c5ca - Jumppoints_224c5c2 - 2
.hword branch_224c5dc - Jumppoints_224c5c2 - 2
.hword branch_224c5f6 - Jumppoints_224c5c2 - 2
.hword branch_224c60a - Jumppoints_224c5c2 - 2
.thumb
branch_224c5ca: @ 224c5ca :thumb
	mov     r0, #0x4
	ldsh    r0, [r4, r0]
	sub     r0, r7, r0
	str     r0, [sp, #0xc]
	mov     r0, #0x8
	ldsh    r0, [r4, r0]
	sub     r0, r5, r0
	str     r0, [sp, #0x8]
	b       branch_224c626
@ 0x224c5dc

.thumb
branch_224c5dc: @ 224c5dc :thumb
	mov     r0, #0xc
	ldsh    r2, [r4, r0]
	mov     r0, #0x6
	ldsh    r1, [r4, r0]
	ldr     r0, [sp, #0x4]
	sub     r0, r0, r1
	sub     r0, r2, r0
	str     r0, [sp, #0xc]
	mov     r0, #0x8
	ldsh    r0, [r4, r0]
	sub     r0, r5, r0
	str     r0, [sp, #0x8]
	b       branch_224c626
@ 0x224c5f6

.thumb
branch_224c5f6: @ 224c5f6 :thumb
	mov     r0, #0x6
	ldsh    r1, [r4, r0]
	ldr     r0, [sp, #0x4]
	sub     r0, r0, r1
	str     r0, [sp, #0xc]
	mov     r0, #0x8
	ldsh    r0, [r4, r0]
	sub     r0, r5, r0
	str     r0, [sp, #0x8]
	b       branch_224c626
@ 0x224c60a

.thumb
branch_224c60a: @ 224c60a :thumb
	mov     r0, #0xa
	ldsh    r1, [r4, r0]
	mov     r0, #0x4
	ldsh    r0, [r4, r0]
	sub     r0, r7, r0
	sub     r0, r1, r0
	str     r0, [sp, #0xc]
	mov     r0, #0x8
	ldsh    r0, [r4, r0]
	sub     r0, r5, r0
	str     r0, [sp, #0x8]
	b       branch_224c626
@ 0x224c622

.thumb
branch_224c622: @ 224c622 :thumb
	bl      ErrorHandling
.thumb
branch_224c626: @ 224c626 :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x8]
	bl      Function_224c52c
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x224c634

.word 0x1660 @ 0x224c634
.word 0xffff @ 0x224c638
.word 0xfffe @ 0x224c63c
.thumb
Function_224c640: @ 224c640 :thumb
	push    {r4-r6,lr}
	ldr     r6, [pc, #0x34] @ 0x224c678, (=0x1644)
	mov     r5, r0
	mov     r0, r6
	add     r0, #0x34
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_224c654
	bl      ErrorHandling
.thumb
branch_224c654: @ 224c654 :thumb
	add     r0, r5, r6
	bl      Function_224c24c
	cmp     r0, #0x0
	beq     branch_224c674
	ldr     r0, [pc, #0x1c] @ 0x224c67c, (=0x1674)
	add     r4, r5, r0
	add     r0, r5, r6
	bl      Function_224c254
	ldr     r1, [pc, #0x10] @ 0x224c67c, (=0x1674)
	str     r0, [r5, r1]
	add     r0, r5, r6
	bl      Function_224c25c
	str     r0, [r4, #0x4]
.thumb
branch_224c674: @ 224c674 :thumb
	pop     {r4-r6,pc}
@ 0x224c676


.align 2


.word 0x1644 @ 0x224c678
.word 0x1674 @ 0x224c67c
.thumb
Function_224c680: @ 224c680 :thumb
	ldr     r1, [pc, #0x14] @ 0x224c698, (=0x1674)
	add     r1, r0, r1
	mov     r0, #0x0
	strb    r0, [r1, #0x0]
	strb    r0, [r1, #0x1]
	strb    r0, [r1, #0x2]
	strb    r0, [r1, #0x3]
	strb    r0, [r1, #0x4]
	strb    r0, [r1, #0x5]
	strb    r0, [r1, #0x6]
	strb    r0, [r1, #0x7]
	bx      lr
@ 0x224c698

.word 0x1674 @ 0x224c698
.thumb
Function_224c69c: @ 224c69c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r7, r1
	ldr     r1, [pc, #0x3c] @ 0x224c6e0, (=0x1674)
	str     r2, [sp, #0x0]
	add     r0, r0, r1
	ldr     r5, [r0, #0x0]
	str     r3, [sp, #0x4]
	ldr     r6, [sp, #0x20]
	ldr     r4, [r0, #0x4]
	cmp     r5, #0x0
	beq     branch_224c6da
.thumb
branch_224c6b4: @ 224c6b4 :thumb
	mov     r0, #0x2
	ldsh    r0, [r4, r0]
	cmp     r6, r0
	bne     branch_224c6d4
	mov     r3, r4
	ldr     r1, [sp, #0x0]
	ldr     r2, [sp, #0x4]
	mov     r0, r7
	add     r3, #0x8
	bl      Function_2250e6c
	cmp     r0, #0x0
	beq     branch_224c6d4
	add     sp, #0x8
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x224c6d4

.thumb
branch_224c6d4: @ 224c6d4 :thumb
	add     r4, #0x28
	.hword  0x1e6d @ sub r5, r5, #0x1
	bne     branch_224c6b4
.thumb
branch_224c6da: @ 224c6da :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x224c6e0

.word 0x1674 @ 0x224c6e0
.thumb
Function_224c6e4: @ 224c6e4 :thumb
	push    {r4-r6,lr}
	ldr     r6, [pc, #0x34] @ 0x224c71c, (=0x1644)
	mov     r5, r0
	mov     r0, r6
	add     r0, #0x3c
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_224c6f8
	bl      ErrorHandling
.thumb
branch_224c6f8: @ 224c6f8 :thumb
	add     r0, r5, r6
	bl      Function_224c264
	cmp     r0, #0x0
	beq     branch_224c718
	ldr     r0, [pc, #0x1c] @ 0x224c720, (=0x167c)
	add     r4, r5, r0
	add     r0, r5, r6
	bl      Function_224c26c
	ldr     r1, [pc, #0x10] @ 0x224c720, (=0x167c)
	str     r0, [r5, r1]
	add     r0, r5, r6
	bl      Function_224c274
	str     r0, [r4, #0x4]
.thumb
branch_224c718: @ 224c718 :thumb
	pop     {r4-r6,pc}
@ 0x224c71a


.align 2


.word 0x1644 @ 0x224c71c
.word 0x167c @ 0x224c720
.thumb
Function_224c724: @ 224c724 :thumb
	ldr     r1, [pc, #0x14] @ 0x224c73c, (=0x167c)
	add     r1, r0, r1
	mov     r0, #0x0
	strb    r0, [r1, #0x0]
	strb    r0, [r1, #0x1]
	strb    r0, [r1, #0x2]
	strb    r0, [r1, #0x3]
	strb    r0, [r1, #0x4]
	strb    r0, [r1, #0x5]
	strb    r0, [r1, #0x6]
	strb    r0, [r1, #0x7]
	bx      lr
@ 0x224c73c

.word 0x167c @ 0x224c73c
.thumb
Function_224c740: @ 224c740 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r7, r1
	ldr     r1, [pc, #0x3c] @ 0x224c784, (=0x167c)
	str     r2, [sp, #0x0]
	add     r0, r0, r1
	ldr     r5, [r0, #0x0]
	str     r3, [sp, #0x4]
	ldr     r6, [sp, #0x20]
	ldr     r4, [r0, #0x4]
	cmp     r5, #0x0
	beq     branch_224c77c
.thumb
branch_224c758: @ 224c758 :thumb
	mov     r0, #0x12
	ldsh    r0, [r4, r0]
	cmp     r6, r0
	bne     branch_224c776
	ldr     r1, [sp, #0x0]
	ldr     r2, [sp, #0x4]
	mov     r0, r7
	mov     r3, r4
	bl      Function_2250e6c
	cmp     r0, #0x0
	beq     branch_224c776
	add     sp, #0x8
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x224c776

.thumb
branch_224c776: @ 224c776 :thumb
	add     r4, #0x18
	.hword  0x1e6d @ sub r5, r5, #0x1
	bne     branch_224c758
.thumb
branch_224c77c: @ 224c77c :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x224c782


.align 2


.word 0x167c @ 0x224c784
.thumb
Function_224c788: @ 224c788 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_224c798
	bl      ErrorHandling
.thumb
branch_224c798: @ 224c798 :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_224c7a2
	bl      ErrorHandling
.thumb
branch_224c7a2: @ 224c7a2 :thumb
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x0
	beq     branch_224c7ac
	bl      ErrorHandling
.thumb
branch_224c7ac: @ 224c7ac :thumb
	mov     r0, r5
	bl      Function_224c2a8
	str     r0, [r4, #0x0]
	mov     r0, r5
	bl      Function_224c2ac
	str     r0, [r4, #0x4]
	mov     r0, r5
	bl      Function_224c2b4
	str     r0, [r4, #0x8]
	pop     {r3-r5,pc}
@ 0x224c7c6


.align 2, 0


.thumb
Function_224c7c8: @ 224c7c8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_224c27c
	cmp     r0, #0x0
	beq     branch_224c7e0
	ldr     r1, [pc, #0xc] @ 0x224c7e4, (=0x1644)
	add     r0, r4, r1
	add     r1, #0x40
	add     r1, r4, r1
	bl      Function_224c788
.thumb
branch_224c7e0: @ 224c7e0 :thumb
	pop     {r4,pc}
@ 0x224c7e2


.align 2


.word 0x1644 @ 0x224c7e4
.thumb
Function_224c7e8: @ 224c7e8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_224c288
	cmp     r0, #0x0
	beq     branch_224c800
	ldr     r1, [pc, #0xc] @ 0x224c804, (=0x1690)
	add     r0, r4, r1
	add     r1, #0x1c
	add     r1, r4, r1
	bl      Function_224c788
.thumb
branch_224c800: @ 224c800 :thumb
	pop     {r4,pc}
@ 0x224c802


.align 2


.word 0x1690 @ 0x224c804
.thumb
Function_224c808: @ 224c808 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_224c7c8
	mov     r0, r4
	bl      Function_224c7e8
	pop     {r4,pc}
@ 0x224c818

.thumb
Function_224c818: @ 224c818 :thumb
	mov     r1, #0x0
	strb    r1, [r0, #0x0]
	strb    r1, [r0, #0x1]
	strb    r1, [r0, #0x2]
	strb    r1, [r0, #0x3]
	strb    r1, [r0, #0x4]
	strb    r1, [r0, #0x5]
	strb    r1, [r0, #0x6]
	strb    r1, [r0, #0x7]
	strb    r1, [r0, #0x8]
	strb    r1, [r0, #0x9]
	strb    r1, [r0, #0xa]
	strb    r1, [r0, #0xb]
	bx      lr
@ 0x224c834

.thumb
Function_224c834: @ 224c834 :thumb
	ldr     r1, [pc, #0x4] @ 0x224c83c, (=0x1684)
	ldr     r3, [pc, #0x8] @ 0x224c840, (=0x224c819)
	add     r0, r0, r1
	bx      r3
@ 0x224c83c

.word 0x1684 @ 0x224c83c
.word 0x224c819 @ 0x224c840
.thumb
Function_224c844: @ 224c844 :thumb
	ldr     r1, [pc, #0x4] @ 0x224c84c, (=0x16ac)
	ldr     r3, [pc, #0x8] @ 0x224c850, (=0x224c819)
	add     r0, r0, r1
	bx      r3
@ 0x224c84c

.word 0x16ac @ 0x224c84c
.word 0x224c819 @ 0x224c850
.thumb
Function_224c854: @ 224c854 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_224c834
	mov     r0, r4
	bl      Function_224c844
	pop     {r4,pc}
@ 0x224c864

.thumb
Function_224c864: @ 224c864 :thumb
	push    {r3-r5,lr}
	ldr     r3, [pc, #0x1c] @ 0x224c884, (=0x1684)
	mov     r2, r0
	mov     r0, r3
	add     r0, #0x28
	add     r5, r2, r3
	add     r4, r2, r0
	ldmia   r5!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldr     r0, [r5, #0x0]
	str     r0, [r4, #0x0]
	add     r0, r2, r3
	bl      Function_224c818
	pop     {r3-r5,pc}
@ 0x224c882


.align 2


.word 0x1684 @ 0x224c884
.thumb
Function_224c888: @ 224c888 :thumb
	push    {r3-r5,lr}
	ldr     r3, [pc, #0x1c] @ 0x224c8a8, (=0x16ac)
	mov     r2, r0
	mov     r0, r3
	sub     r0, #0x28
	add     r5, r2, r3
	add     r4, r2, r0
	ldmia   r5!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldr     r0, [r5, #0x0]
	str     r0, [r4, #0x0]
	add     r0, r2, r3
	bl      Function_224c818
	pop     {r3-r5,pc}
@ 0x224c8a6


.align 2


.word 0x16ac @ 0x224c8a8
.thumb
Function_224c8ac: @ 224c8ac :thumb
	ldr     r1, [pc, #0x4] @ 0x224c8b4, (=0x1684)
	ldr     r0, [r0, r1]
	bx      lr
@ 0x224c8b2


.align 2


.word 0x1684 @ 0x224c8b4
.thumb
Function_224c8b8: @ 224c8b8 :thumb
	ldr     r1, [pc, #0x4] @ 0x224c8c0, (=0x16ac)
	ldr     r0, [r0, r1]
	bx      lr
@ 0x224c8be


.align 2


.word 0x16ac @ 0x224c8c0
.thumb
Function_224c8c4: @ 224c8c4 :thumb
	ldr     r1, [pc, #0x4] @ 0x224c8cc, (=0x1688)
	ldr     r0, [r0, r1]
	bx      lr
@ 0x224c8ca


.align 2


.word 0x1688 @ 0x224c8cc
.thumb
Function_224c8d0: @ 224c8d0 :thumb
	ldr     r1, [pc, #0x4] @ 0x224c8d8, (=0x16b0)
	ldr     r0, [r0, r1]
	bx      lr
@ 0x224c8d6


.align 2


.word 0x16b0 @ 0x224c8d8
.thumb
Function_224c8dc: @ 224c8dc :thumb
	ldr     r1, [pc, #0x4] @ 0x224c8e4, (=0x168c)
	ldr     r0, [r0, r1]
	bx      lr
@ 0x224c8e2


.align 2


.word 0x168c @ 0x224c8e4
.thumb
Function_224c8e8: @ 224c8e8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	ldr     r1, [pc, #0xf0] @ 0x224c9e0, (=0x1e34)
	mov     r7, r0
	add     r4, r7, r1
	ldr     r5, [r7, #0x0]
	bl      Function_22510d0
	bl      Function_224d720
	ldr     r6, [r0, #0x8]
	ldr     r0, [pc, #0xe4] @ 0x224c9e4, (=0x251)
	cmp     r6, r0
	beq     branch_224c9da
	mov     r0, r6
	bl      Function_224d720
	str     r6, [r4, #0x0]
	mov     r0, #0x4
	bl      Malloc11aa
	str     r0, [r4, #0x10]
	ldr     r1, [r4, #0x10]
	mov     r0, r6
	bl      Function_2039dc0
	ldr     r0, [r5, #0x30]
	str     r0, [r4, #0x14]
	ldr     r0, [r5, #0x28]
	bl      Function_5_21e9828
	mov     r2, r0
	ldr     r0, [r4, #0x10]
	ldr     r1, [r4, #0x14]
	bl      Function_5_21e9830
	str     r0, [r4, #0x18]
	ldr     r0, [r5, #0x3c]
	bl      Function_205eafc
	ldr     r1, [r4, #0x18]
	bl      Function_5_21e931c
	ldr     r0, [r4, #0x18]
	mov     r1, #0x1
	bl      Function_5_21ea6a4
	ldr     r0, [r4, #0x18]
	mov     r1, #0x1
	bl      Function_5_21ea6d0
	add     r0, sp, #0x4
	str     r0, [sp, #0x0]
	mov     r0, r7
	mov     r1, r6
	add     r2, sp, #0xc
	add     r3, sp, #0x8
	bl      Function_224c070
	ldr     r0, [r4, #0x18]
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x8]
	ldr     r3, [sp, #0x4]
	bl      Function_5_21ea678
	ldr     r0, [r5, #0x3c]
	bl      GetSpritePositionX
	mov     r6, r0
	ldr     r0, [r5, #0x3c]
	bl      GetSpritePositionY
	mov     r2, r0
	ldr     r0, [r4, #0x18]
	mov     r1, r6
	bl      Function_5_21e99d8
	mov     r0, #0x1
	str     r0, [r4, #0x8]
	str     r0, [r4, #0x4]
	mov     r0, r7
	bl      Function_2249d38
	cmp     r0, #0x0
	bne     branch_224c9da
	ldr     r0, [r5, #0x3c]
	bl      Function_205eb3c
	add     r1, sp, #0x10
	mov     r4, r0
	bl      CopySprite70Struct
	ldr     r0, [r5, #0x28]
	add     r1, sp, #0x1c
	bl      Function_5_21ea6bc
	mov     r0, #0x1
	ldr     r1, [sp, #0x20]
	lsl     r0, r0, #16
	add     r0, r1, r0
	str     r0, [sp, #0x14]
	mov     r0, r4
	add     r1, sp, #0x10
	bl      CopyToSprite70Struct
	mov     r0, r4
	bl      LoadSpritePositionZ
	mov     r1, r0
	mov     r0, r4
	bl      SetSpriteZ2
	ldr     r1, [sp, #0x14]
	mov     r0, r4
	asr     r2, r1, #3
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	asr     r1, r1, #12
	bl      SaveSpritePositionZ
.thumb
branch_224c9da: @ 224c9da :thumb
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x224c9de


.align 2


.word 0x1e34 @ 0x224c9e0
.word 0x251 @ 0x224c9e4



.thumb
Function_224c9e8: @ 224c9e8 :thumb
	push    {r4,lr}
	ldr     r1, [pc, #0x40] @ 0x224ca2c, (=0x1e34)
	add     r4, r0, r1
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_224ca2a
	ldr     r0, [r4, #0x18]
	bl      Function_5_21e9338
	ldr     r0, [r4, #0x18]
	bl      Function_5_21e9938
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x0
	beq     branch_224ca0a
	mov     r0, #0x0
	str     r0, [r4, #0x14]
branch_224ca0a: @ 224ca0a :thumb
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x0
	beq     branch_224ca18
	bl      Function_5_21e99c4
	mov     r0, #0x0
	str     r0, [r4, #0x18]
branch_224ca18: @ 224ca18 :thumb
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x0
	beq     branch_224ca26
	bl      Call_free8
	mov     r0, #0x0
	str     r0, [r4, #0x10]
.thumb
branch_224ca26: @ 224ca26 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x4]
.thumb
branch_224ca2a: @ 224ca2a :thumb
	pop     {r4,pc}
@ 0x224ca2c

.word 0x1e34 @ 0x224ca2c



.thumb
Function_224ca30: @ 224ca30 :thumb
	push    {r3,lr}
	mov     r2, r0
	ldr     r0, [pc, #0x14] @ 0x224ca4c, (=0x1e34)
	add     r1, r2, r0
	ldr     r0, [r1, #0x8]
	cmp     r0, #0x0
	beq     branch_224ca48
	ldr     r0, [r1, #0x18]
	ldr     r1, [r2, #0x0]
	ldr     r1, [r1, #0x44]
	bl      Function_5_21e9c0c
branch_224ca48: @ 224ca48 :thumb
	pop     {r3,pc}
@ 0x224ca4a

.align 2
.word 0x1e34 @ 0x224ca4c



.thumb
.globl Function_9_224ca50
Function_9_224ca50: @ 224ca50 :thumb
	ldr     r0, [r0, #0x4]
	ldr     r3, [pc, #0x4] @ 0x224ca58, (=Function_224ca30+1)
	ldr     r0, [r0, #0x24]
	bx      r3
@ 0x224ca58

.word Function_224ca30+1 @ 0x224ca58



.thumb
.globl Function_9_224ca5c
Function_9_224ca5c: @ 224ca5c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	ldr     r1, [pc, #0x2c] @ 0x224ca90, (=0x1e34)
	ldr     r0, [r0, #0x24]
	add     r4, r0, r1
	ldr     r1, [pc, #0x28] @ 0x224ca94, (=0x1c5c)
	ldrb    r1, [r0, r1]
	cmp     r1, #0x1
	bne     branch_224ca76
	bl      Function_224cb30
	b       branch_224ca7e
@ 0x224ca76

.thumb
branch_224ca76: @ 224ca76 :thumb
	cmp     r1, #0x2
	bne     branch_224ca7e
	bl      Function_224ca98
branch_224ca7e: @ 224ca7e :thumb
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x1
	bne     branch_224ca8c
	ldr     r1, [r4, #0x18]
	mov     r0, r5
	bl      Function_5_21ea174
branch_224ca8c: @ 224ca8c :thumb
	pop     {r3-r5,pc}
@ 0x224ca8e

.align 2
.word 0x1e34 @ 0x224ca90
.word 0x1c5c @ 0x224ca94



.thumb
Function_224ca98: @ 224ca98 :thumb
	push    {r3-r7,lr}
	ldr     r1, [pc, #0x8c] @ 0x224cb28, (=0x1c5c)
	str     r0, [sp, #0x0]
	add     r4, r0, r1
	ldr     r1, [pc, #0x88] @ 0x224cb2c, (=0x1e34)
	add     r6, r0, r1
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_224cab4
	cmp     r0, #0x1
	beq     branch_224caca
	cmp     r0, #0x2
	beq     branch_224caec
	pop     {r3-r7,pc}

branch_224cab4: @ 224cab4 :thumb
	mov     r3, r4
	ldr     r0, [r6, #0x18]
	ldr     r1, [r4, #0x4]
	ldr     r2, [r4, #0x8]
	add     r3, #0xc
	bl      Function_5_21e9aac
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	pop     {r3-r7,pc}

branch_224caca: @ 224caca :thumb
	ldrb    r1, [r4, #0x2]
	ldr     r0, [r6, #0x18]
	lsl     r2, r1, #2
	add     r2, r4, r2
	ldr     r2, [r2, #0xc]
	bl      Function_5_21e9b10
	ldrb    r0, [r4, #0x2]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x2]
	ldrb    r0, [r4, #0x2]
	cmp     r0, #0x4
	bcc     branch_224cb24
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	pop     {r3-r7,pc}

branch_224caec: @ 224caec :thumb
	ldr     r0, [r6, #0x18]
	ldr     r1, [r4, #0x4]
	ldr     r2, [r4, #0x8]
	bl      Function_5_21ea6f4
	mov     r5, #0x0
	mov     r7, #0x1
branch_224cafa: @ 224cafa :thumb
	ldr     r0, [r6, #0x18]
	mov     r1, r5
	mov     r2, r7
	bl      Function_5_21ea6e0
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x4
	blt     branch_224cafa
	ldr     r0, [sp, #0x0]
	bl      Function_2249b04
	ldr     r0, [r4, #0x1c]
	cmp     r0, #0x0
	beq     branch_224cb1c
	mov     r1, #0x0
	bl      Function_224e0dc
.thumb
branch_224cb1c: @ 224cb1c :thumb
	mov     r0, #0x1
	str     r0, [r6, #0x8]
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
.thumb
branch_224cb24: @ 224cb24 :thumb
	pop     {r3-r7,pc}
@ 0x224cb26


.align 2


.word 0x1c5c @ 0x224cb28
.word 0x1e34 @ 0x224cb2c
.thumb
Function_224cb30: @ 224cb30 :thumb
	push    {r3-r7,lr}
	ldr     r1, [pc, #0x84] @ 0x224cbb8, (=0x1c5c)
	str     r0, [sp, #0x0]
	add     r4, r0, r1
	ldr     r6, [r0, #0x0]
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_224cb4a
	cmp     r0, #0x1
	beq     branch_224cb60
	cmp     r0, #0x2
	beq     branch_224cb82
	pop     {r3-r7,pc}

branch_224cb4a: @ 224cb4a :thumb
	mov     r3, r4
	ldr     r0, [r6, #0x28]
	ldr     r1, [r4, #0x4]
	ldr     r2, [r4, #0x8]
	add     r3, #0xc
	bl      Function_5_21ea58c
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	pop     {r3-r7,pc}

branch_224cb60: @ 224cb60 :thumb
	ldrb    r1, [r4, #0x2]
	ldr     r0, [r6, #0x28]
	lsl     r2, r1, #2
	add     r2, r4, r2
	ldr     r2, [r2, #0xc]
	bl      Function_5_21ea5e0
	ldrb    r0, [r4, #0x2]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x2]
	ldrb    r0, [r4, #0x2]
	cmp     r0, #0x4
	bcc     branch_224cbb6
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	pop     {r3-r7,pc}
@ 0x224cb82

.thumb
branch_224cb82: @ 224cb82 :thumb
	ldr     r0, [r6, #0x28]
	ldr     r1, [r4, #0x4]
	ldr     r2, [r4, #0x8]
	bl      Function_5_21ea6f4
	mov     r5, #0x0
	mov     r7, #0x1
.thumb
branch_224cb90: @ 224cb90 :thumb
	ldr     r0, [r6, #0x28]
	mov     r1, r5
	mov     r2, r7
	bl      Function_5_21ea6e0
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x4
	blt     branch_224cb90
	ldr     r0, [sp, #0x0]
	bl      Function_2249b68
	ldr     r0, [r4, #0x1c]
	cmp     r0, #0x0
	beq     branch_224cbb2
	mov     r1, #0x0
	bl      Function_224e0dc
.thumb
branch_224cbb2: @ 224cbb2 :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
.thumb
branch_224cbb6: @ 224cbb6 :thumb
	pop     {r3-r7,pc}
@ 0x224cbb8

.word 0x1c5c @ 0x224cbb8
.thumb
Function_224cbbc: @ 224cbbc :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r4, #0x0
.thumb
branch_224cbc4: @ 224cbc4 :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_5_21ea6e0
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x4
	blt     branch_224cbc4
	pop     {r4-r6,pc}
@ 0x224cbd6


.align 2, 0


.thumb
Function_224cbd8: @ 224cbd8 :thumb
	push    {r4,lr}
	mov     r1, r0
	ldr     r0, [pc, #0x10] @ 0x224cbf0, (=0x1c7c)
	mov     r2, #0x1
	add     r4, r1, r0
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	ldr     r0, [pc, #0xc] @ 0x224cbf4, (=0x224cc09)
	bl      AddTaskToTaskList1
	str     r0, [r4, #0x2c]
	pop     {r4,pc}
@ 0x224cbf0

.word 0x1c7c @ 0x224cbf0
.word 0x224cc09 @ 0x224cbf4



.thumb
Function_224cbf8: @ 224cbf8 :thumb
	ldr     r1, [pc, #0x4] @ 0x224cc00, (=0x1ca8)
	ldr     r3, [pc, #0x8] @ 0x224cc04, (=Call_RemoveTaskFromTaskList+1)
	ldr     r0, [r0, r1]
	bx      r3
@ 0x224cc00

.word 0x1ca8 @ 0x224cc00
.word Call_RemoveTaskFromTaskList+1 @ 0x224cc04



.thumb
Function_224cc08: @ 224cc08 :thumb
	push    {r4-r6,lr}
	ldr     r0, [pc, #0x34] @ 0x224cc40, (=0x1c7c)
	mov     r6, r1
	add     r4, r6, r0
	ldr     r0, [r4, #0x0]
	mov     r5, #0x0
	cmp     r0, #0x2
	bne     branch_224cc1c
	ldr     r5, [pc, #0x28] @ 0x224cc44, (=0x22514e0)
	b       branch_224cc22
@ 0x224cc1c

.thumb
branch_224cc1c: @ 224cc1c :thumb
	cmp     r0, #0x1
	bne     branch_224cc22
	ldr     r5, [pc, #0x24] @ 0x224cc48, (=0x2251428)
.thumb
branch_224cc22: @ 224cc22 :thumb
	cmp     r5, #0x0
	beq     branch_224cc3e
.thumb
branch_224cc26: @ 224cc26 :thumb
	ldrh    r2, [r4, #0x4]
	mov     r0, r6
	mov     r1, r4
	lsl     r2, r2, #2
	ldr     r2, [r5, r2]
	blx     r2
	cmp     r0, #0x1
	beq     branch_224cc26
	cmp     r0, #0x2
	bne     branch_224cc3e
	mov     r0, #0x0
	str     r0, [r4, #0x0]
.thumb
branch_224cc3e: @ 224cc3e :thumb
	pop     {r4-r6,pc}
@ 0x224cc40

.word 0x1c7c @ 0x224cc40
.word 0x22514e0 @ 0x224cc44
.word 0x2251428 @ 0x224cc48
.thumb
Function_224cc4c: @ 224cc4c :thumb
	bx      lr
@ 0x224cc4e


.align 2, 0


.thumb
Function_224cc50: @ 224cc50 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	ldr     r1, [pc, #0x20] @ 0x224cc78, (=0x1c7c)
	mov     r5, r2
	add     r4, r0, r1
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_224cc64
	bl      ErrorHandling
.thumb
branch_224cc64: @ 224cc64 :thumb
	cmp     r5, #0x0
	bne     branch_224cc6c
	bl      ErrorHandling
.thumb
branch_224cc6c: @ 224cc6c :thumb
	str     r5, [r4, #0x0]
	mov     r0, #0x0
	strh    r0, [r4, #0x4]
	strh    r0, [r4, #0x6]
	str     r6, [r4, #0x28]
	pop     {r4-r6,pc}
@ 0x224cc78

.word 0x1c7c @ 0x224cc78
.thumb
Function_224cc7c: @ 224cc7c :thumb
	ldr     r1, [pc, #0xc] @ 0x224cc8c, (=0x1c7c)
	ldr     r0, [r0, r1]
	cmp     r0, #0x0
	beq     branch_224cc88
	mov     r0, #0x1
	bx      lr
@ 0x224cc88

.thumb
branch_224cc88: @ 224cc88 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x224cc8c

.word 0x1c7c @ 0x224cc8c
.thumb
Function_224cc90: @ 224cc90 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	ldr     r0, [r0, #0x28]
	mov     r1, #0x0
	bl      Function_224cbbc
	mov     r0, r5
	bl      Function_22510d0
	mov     r1, r0
	mov     r0, r5
	bl      Function_2249bd4
	mov     r0, #0x1
	strh    r0, [r4, #0x4]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224ccb6


.align 2, 0


.thumb
Function_224ccb8: @ 224ccb8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r1
	mov     r7, r0
	ldr     r1, [pc, #0xb8] @ 0x224cd7c, (=0x1e34)
	ldr     r6, [r7, #0x0]
	add     r4, r7, r1
	bl      Function_22510d0
	bl      Function_224d720
	str     r0, [sp, #0x8]
	ldr     r1, [r0, #0x8]
	ldr     r0, [pc, #0xac] @ 0x224cd80, (=0x251)
	cmp     r1, r0
	bne     branch_224ccdc
	bl      ErrorHandling
branch_224ccdc: @ 224ccdc :thumb

	ldr     r0, [sp, #0x8]
	ldr     r0, [r0, #0x8]
	bl      Function_224d720
	ldr     r1, [r0, #0x0]
	str     r0, [sp, #0xc]
	str     r1, [r5, #0xc]
	ldr     r0, [r7, #0x0]
	bl      Function_5_21d12d0
	ldr     r1, [sp, #0xc]
	mov     r0, r7
	ldr     r1, [r1, #0x8]
	bl      Function_224bf18
	ldr     r0, [r6, #0x28]
	bl      Function_5_21e9cd8
	ldr     r0, [r6, #0x3c]
	bl      GetSpritePositionX
	strh    r0, [r5, #0x8]
	ldr     r0, [r6, #0x3c]
	bl      GetSpritePositionY
	strh    r0, [r5, #0xa]
	mov     r0, #0x8
	ldsh    r0, [r5, r0]
	str     r0, [sp, #0x0]
	mov     r0, #0xa
	ldsh    r0, [r5, r0]
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x10]
	ldr     r1, [r4, #0x14]
	ldr     r2, [r4, #0x18]
	ldr     r3, [r6, #0x28]
	bl      Function_5_21e9d3c
	mov     r1, #0x0
	str     r1, [r4, #0x8]
	ldr     r0, [r4, #0x18]
	bl      Function_224cbbc
	ldr     r0, [r4, #0x10]
	bl      Call_free8
	mov     r0, #0x0
	str     r0, [r4, #0x10]
	ldr     r0, [r7, #0x0]
	mov     r1, #0x1
	ldr     r0, [r0, #0x28]
	bl      Function_224cbbc
	ldr     r0, [sp, #0xc]
	ldr     r1, [r0, #0x8]
	ldr     r0, [pc, #0x34] @ 0x224cd80, (=0x251)
	str     r1, [r4, #0x0]
	cmp     r1, r0
	beq     branch_224cd70
	ldr     r0, [sp, #0xc]
	ldr     r0, [r0, #0x8]
	bl      Function_224d720
	mov     r6, r0
	mov     r0, #0x4
	bl      Malloc11aa
	str     r0, [r4, #0x10]
	ldr     r0, [r6, #0x0]
	ldr     r1, [r4, #0x10]
	bl      Function_2039dc0
	mov     r0, #0x2
	b       branch_224cd72
@ 0x224cd70

.thumb
branch_224cd70: @ 224cd70 :thumb
	mov     r0, #0x4
.thumb
branch_224cd72: @ 224cd72 :thumb
	strh    r0, [r5, #0x4]
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x224cd7a


.align 2


.word 0x1e34 @ 0x224cd7c
.word 0x251 @ 0x224cd80
.thumb
Function_224cd84: @ 224cd84 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r1
	mov     r6, r0
	ldr     r0, [r5, #0x20]
	cmp     r0, #0x0
	bne     branch_224cdf4
	ldr     r0, [pc, #0x68] @ 0x224cdfc, (=0x1e34)
	add     r4, r6, r0
	ldr     r0, [r6, #0x0]
	ldr     r0, [r0, #0x28]
	bl      Function_5_21e9828
	mov     r3, r0
	ldr     r0, [r4, #0x18]
	ldr     r1, [r4, #0x10]
	ldr     r2, [r4, #0x14]
	bl      Function_5_21e98c8
	add     r0, sp, #0x4
	str     r0, [sp, #0x0]
	ldr     r1, [pc, #0x4c] @ 0x224cdfc, (=0x1e34)
	mov     r0, r6
	ldr     r1, [r6, r1]
	add     r2, sp, #0xc
	add     r3, sp, #0x8
	bl      Function_224c070
	ldr     r0, [r4, #0x18]
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x8]
	ldr     r3, [sp, #0x4]
	bl      Function_5_21ea678
	ldr     r0, [r4, #0x18]
	mov     r1, #0x1
	bl      Function_5_21ea6a4
	ldr     r0, [r4, #0x18]
	mov     r1, #0x1
	bl      Function_5_21ea6d0
	mov     r1, #0x8
	mov     r2, #0xa
	mov     r3, r5
	ldsh    r1, [r5, r1]
	ldsh    r2, [r5, r2]
	ldr     r0, [r4, #0x18]
	add     r3, #0x10
	bl      Function_5_21e9aac
	mov     r0, #0x3
	strh    r0, [r5, #0x4]
	add     sp, #0x10
	mov     r0, #0x1
	pop     {r4-r6,pc}

branch_224cdf4: @ 224cdf4 :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x224cdfa


.align 2


.word 0x1e34 @ 0x224cdfc
.thumb
Function_224ce00: @ 224ce00 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldrh    r1, [r4, #0x6]
	ldr     r2, [pc, #0x20] @ 0x224ce28, (=0x1e4c)
	ldr     r0, [r0, r2]
	lsl     r2, r1, #2
	add     r2, r4, r2
	ldr     r2, [r2, #0x10]
	bl      Function_5_21e9b10
	ldrh    r0, [r4, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x6]
	ldrh    r0, [r4, #0x6]
	cmp     r0, #0x4
	bcc     branch_224ce24
	mov     r0, #0x4
	strh    r0, [r4, #0x4]
branch_224ce24: @ 224ce24 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x224ce28

.word 0x1e4c @ 0x224ce28
.thumb
Function_224ce2c: @ 224ce2c :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	ldr     r0, [pc, #0x44] @ 0x224ce78, (=0x1e34)
	mov     r5, r1
	add     r4, r6, r0
	ldr     r1, [r4, #0x0]
	ldr     r0, [pc, #0x40] @ 0x224ce7c, (=0x251)
	cmp     r1, r0
	beq     branch_224ce56
	mov     r1, #0x1
	str     r1, [r4, #0x8]
	ldr     r0, [r4, #0x18]
	bl      Function_224cbbc
	mov     r1, #0x8
	mov     r2, #0xa
	ldsh    r1, [r5, r1]
	ldsh    r2, [r5, r2]
	ldr     r0, [r4, #0x18]
	bl      Function_5_21ea6f4
.thumb
branch_224ce56: @ 224ce56 :thumb
	ldr     r0, [r5, #0xc]
	bl      Function_224d720
	mov     r1, r0
	ldr     r1, [r1, #0x8]
	mov     r0, r6
	bl      Function_2249c08
	ldr     r0, [r5, #0x28]
	cmp     r0, #0x0
	beq     branch_224ce72
	mov     r1, #0x0
	bl      Function_224e0dc
.thumb
branch_224ce72: @ 224ce72 :thumb
	mov     r0, #0x2
	pop     {r4-r6,pc}
@ 0x224ce76


.align 2


.word 0x1e34 @ 0x224ce78
.word 0x251 @ 0x224ce7c
.thumb
Function_224ce80: @ 224ce80 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x30] @ 0x224ceb8, (=0x1e34)
	mov     r4, r1
	add     r2, r5, r0
	mov     r1, #0x0
	str     r1, [r2, #0x8]
	ldr     r0, [r2, #0x4]
	cmp     r0, #0x1
	bne     branch_224ce9a
	ldr     r0, [r2, #0x18]
	bl      Function_224cbbc
.thumb
branch_224ce9a: @ 224ce9a :thumb
	mov     r0, r5
	bl      Function_22510d0
	bl      Function_224d720
	mov     r1, r0
	ldr     r1, [r1, #0x8]
	mov     r0, r5
	bl      Function_2249c2c
	mov     r0, #0x1
	strh    r0, [r4, #0x4]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224ceb6


.align 2


.word 0x1e34 @ 0x224ceb8
.thumb
Function_224cebc: @ 224cebc :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r6, r1
	mov     r7, r0
	ldr     r1, [pc, #0x110] @ 0x224cfd8, (=0x1e34)
	ldr     r4, [r7, #0x0]
	add     r5, r7, r1
	bl      Function_22510d0
	bl      Function_224d720
	str     r0, [sp, #0x4]
	ldr     r1, [r0, #0x4]
	ldr     r0, [pc, #0x104] @ 0x224cfdc, (=0x251)
	cmp     r1, r0
	bne     branch_224cee0
	bl      ErrorHandling
branch_224cee0: @ 224cee0 :thumb

	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, #0x4]
	bl      Function_224d720
	ldr     r1, [r0, #0x0]
	str     r0, [sp, #0x0]
	str     r1, [r6, #0xc]
	ldr     r0, [r7, #0x0]
	bl      Function_5_21d12d0
	ldr     r1, [r6, #0xc]
	mov     r0, r7
	bl      Function_224beb4
	ldr     r0, [r5, #0x10]
	cmp     r0, #0x0
	bne     branch_224cf0a
	mov     r0, #0x4
	bl      Malloc11aa
	str     r0, [r5, #0x10]
branch_224cf0a: @ 224cf0a :thumb
	ldr     r0, [r5, #0x14]
	cmp     r0, #0x0
	bne     branch_224cf14
	ldr     r0, [r4, #0x30]
	str     r0, [r5, #0x14]
branch_224cf14: @ 224cf14 :thumb
	ldr     r0, [r5, #0x4]
	cmp     r0, #0x0
	bne     branch_224cf30
	ldr     r0, [r4, #0x28]
	bl      Function_5_21e9828
	mov     r2, r0
	ldr     r1, [r5, #0x14]
	mov     r0, #0x0
	bl      Function_5_21e9830
	str     r0, [r5, #0x18]
	bl      Function_5_21e7a54
branch_224cf30: @ 224cf30 :thumb
	ldr     r0, [r5, #0x4]
	cmp     r0, #0x1
	bne     branch_224cf3c
	ldr     r0, [r5, #0x18]
	bl      Function_5_21e9998
branch_224cf3c: @ 224cf3c :thumb
	ldr     r0, [r4, #0x28]
	bl      Function_5_21e9998
	ldr     r0, [r5, #0x18]
	ldr     r1, [r5, #0x10]
	bl      Function_5_21ea6d8
	ldr     r0, [r5, #0x18]
	ldr     r1, [r4, #0x28]
	bl      Function_5_21e9f98
	mov     r1, #0x1
	str     r1, [r5, #0x4]
	str     r1, [r5, #0x8]
	ldr     r0, [r5, #0x18]
	bl      Function_224cbbc
	ldr     r0, [r7, #0x0]
	mov     r1, #0x0
	ldr     r0, [r0, #0x28]
	bl      Function_224cbbc
	ldr     r0, [sp, #0x0]
	ldr     r1, [r4, #0x2c]
	ldr     r0, [r0, #0x0]
	bl      Function_2039dc0
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x28]
	ldr     r1, [r4, #0x2c]
	ldr     r2, [r4, #0x30]
	bl      Function_5_21ea540
	ldr     r0, [sp, #0x0]
	add     r1, sp, #0x10
	ldr     r0, [r0, #0x0]
	add     r2, sp, #0xc
	add     r3, sp, #0x8
	bl      Function_9_2251094
	ldr     r0, [r4, #0x28]
	ldr     r1, [sp, #0x10]
	ldr     r2, [sp, #0xc]
	ldr     r3, [sp, #0x8]
	bl      Function_5_21ea678
	ldr     r0, [r4, #0x28]
	mov     r1, #0x1
	bl      Function_5_21ea6a4
	ldr     r0, [r4, #0x28]
	mov     r1, #0x1
	bl      Function_5_21ea6d0
	ldr     r0, [r4, #0x1c]
	mov     r3, r6
	ldr     r0, [r0, #0x8]
	mov     r1, #0x8
	strh    r0, [r6, #0x8]
	ldr     r0, [r4, #0x1c]
	mov     r2, #0xa
	ldr     r0, [r0, #0xc]
	add     r3, #0x10
	strh    r0, [r6, #0xa]
	ldsh    r1, [r6, r1]
	ldsh    r2, [r6, r2]
	ldr     r0, [r4, #0x28]
	bl      Function_5_21ea58c
	mov     r0, #0x2
	strh    r0, [r6, #0x4]
	mov     r0, #0x0
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x224cfd6

.align 2
.word 0x1e34 @ 0x224cfd8
.word 0x251 @ 0x224cfdc



.thumb
Function_224cfe0: @ 224cfe0 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldrh    r1, [r4, #0x6]
	ldr     r0, [r0, #0x0]
	lsl     r2, r1, #2
	add     r2, r4, r2
	ldr     r0, [r0, #0x28]
	ldr     r2, [r2, #0x10]
	bl      Function_5_21ea5e0
	ldrh    r0, [r4, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x6]
	ldrh    r0, [r4, #0x6]
	cmp     r0, #0x4
	bcc     branch_224d004
	mov     r0, #0x3
	strh    r0, [r4, #0x4]
branch_224d004: @ 224d004 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x224d008

.thumb
Function_224d008: @ 224d008 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	ldr     r0, [r5, #0x0]
	mov     r1, #0x8
	mov     r2, #0xa
	ldsh    r1, [r4, r1]
	ldsh    r2, [r4, r2]
	ldr     r0, [r0, #0x28]
	bl      Function_5_21ea6f4
	ldr     r1, [r4, #0xc]
	mov     r0, r5
	bl      Function_2249c60
	ldr     r0, [r4, #0x28]
	cmp     r0, #0x0
	beq     branch_224d032
	mov     r1, #0x0
	bl      Function_224e0dc
.thumb
branch_224d032: @ 224d032 :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	ldr     r0, [r0, #0x28]
	bl      Function_224cbbc
	mov     r0, #0x2
	pop     {r3-r5,pc}
@ 0x224d040

.thumb
Function_224d040: @ 224d040 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3
	bl      Function_22510d0
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	mov     r3, r7
	bl      Function_224e188
	mov     r1, r0
	bne     branch_224d064
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224d064

.thumb
branch_224d064: @ 224d064 :thumb
	ldrh    r0, [r1, #0xe]
	cmp     r0, #0x1
	bhi     branch_224d074
	mov     r0, r5
	bl      Function_224d078
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x224d074

.thumb
branch_224d074: @ 224d074 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224d078

.thumb
Function_224d078: @ 224d078 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r1, #0x70
	bl      Function_224a578
	str     r4, [r0, #0x64]
	ldr     r0, [r5, #0x0]
	ldr     r1, [pc, #0x8] @ 0x224d094, (=0x224d099)
	mov     r2, r5
	bl      OverWorldData_InitUnknownStruct01
	pop     {r3-r5,pc}
@ 0x224d092


.align 2


.word 0x224d099 @ 0x224d094
.thumb
Function_224d098: @ 224d098 :thumb
	push    {r4-r6,lr}
	bl      GetUnknownStruct01_c
	mov     r4, r0
	bl      Function_224a598
	ldr     r6, [pc, #0x1c] @ 0x224d0c4, (=0x2252224)
	mov     r5, r0
.thumb
branch_224d0a8: @ 224d0a8 :thumb
	ldrh    r2, [r5, #0x4]
	mov     r0, r4
	mov     r1, r5
	lsl     r2, r2, #2
	ldr     r2, [r6, r2]
	blx     r2
	cmp     r0, #0x1
	beq     branch_224d0a8
	cmp     r0, #0x2
	bne     branch_224d0c0
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x224d0c0

.thumb
branch_224d0c0: @ 224d0c0 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x224d0c4

.word 0x2252224 @ 0x224d0c4
.thumb
Function_224d0c8: @ 224d0c8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r1
	ldr     r1, [r5, #0x64]
	mov     r6, r0
	ldrh    r1, [r1, #0xe]
	strb    r1, [r5, #0x0]
	ldr     r1, [r5, #0x64]
	ldrh    r1, [r1, #0xc]
	strh    r1, [r5, #0x2]
	bl      Function_22510d0
	mov     r4, r0
	bl      Function_224d720
	ldrb    r1, [r5, #0x0]
	cmp     r1, #0x1
	bne     branch_224d13e
	ldr     r0, [r0, #0x8]
	strh    r0, [r5, #0x6]
	ldr     r0, [r6, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	bl      Function_206b5d8
	ldr     r1, [pc, #0x180] @ 0x224d280, (=0x23d)
	cmp     r4, r1
	bne     branch_224d11c
	cmp     r0, #0x2
	bne     branch_224d11c
	ldr     r0, [r6, #0x0]
	mov     r1, #0x81
	ldr     r0, [r0, #0x38]
	bl      GetAdressOfSpriteID
	str     r0, [r5, #0x68]
	cmp     r0, #0x0
	bne     branch_224d184
	bl      ErrorHandling
	b       branch_224d184
@ 0x224d11c

.thumb
branch_224d11c: @ 224d11c :thumb
	mov     r1, #0x91
	lsl     r1, r1, #2
	cmp     r4, r1
	bne     branch_224d184
	cmp     r0, #0x7
	bne     branch_224d184
	ldr     r0, [r6, #0x0]
	mov     r1, #0x86
	ldr     r0, [r0, #0x38]
	bl      GetAdressOfSpriteID
	str     r0, [r5, #0x68]
	cmp     r0, #0x0
	bne     branch_224d184
	bl      ErrorHandling
	b       branch_224d184
@ 0x224d13e

.thumb
branch_224d13e: @ 224d13e :thumb
	ldr     r0, [r0, #0x4]
	strh    r0, [r5, #0x6]
	ldrh    r0, [r5, #0x2]
	cmp     r0, #0xa
	beq     branch_224d162
	cmp     r0, #0xb
	beq     branch_224d16c
	cmp     r0, #0xd
	bne     branch_224d184
	mov     r0, r6
	mov     r1, #0x3
	bl      Function_2249d70
	mov     r0, r6
	mov     r1, #0x4
	bl      Function_2249d8c
	b       branch_224d184
@ 0x224d162

.thumb
branch_224d162: @ 224d162 :thumb
	mov     r0, r6
	mov     r1, #0x5
	bl      Function_2249d8c
	b       branch_224d184
@ 0x224d16c

.thumb
branch_224d16c: @ 224d16c :thumb
	mov     r0, r6
	mov     r1, #0x6
	bl      Function_2249d70
	mov     r0, r6
	mov     r1, #0x3
	bl      Function_2249d8c
	mov     r0, r6
	mov     r1, #0x5
	bl      Function_2249d8c
.thumb
branch_224d184: @ 224d184 :thumb
	ldrh    r0, [r5, #0x2]
	bl      Function_224de70
	mov     r4, r0
	ldr     r0, [r6, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      Function_205eb3c
	mov     r1, r5
	mov     r6, r0
	add     r1, #0x14
	bl      CopySprite70Struct
	mov     r0, r6
	mov     r1, #0x1
	bl      SetUnsetSpriteFlags800000
	mov     r0, #0x0
	str     r0, [r5, #0x44]
	str     r0, [r5, #0x48]
	str     r0, [r5, #0x4c]
	mov     r0, r6
	bl      LoadSpritePositionX
	strh    r0, [r5, #0xa]
	mov     r0, #0xa
	ldsh    r1, [r5, r0]
	mov     r0, #0x4
	ldsh    r0, [r4, r0]
	add     r0, r1, r0
	strh    r0, [r5, #0xa]
	mov     r0, r6
	bl      LoadSpritePositionZ
	strh    r0, [r5, #0xc]
	mov     r0, #0xc
	ldsh    r1, [r5, r0]
	mov     r0, #0x6
	ldsh    r0, [r4, r0]
	lsl     r0, r0, #1
	add     r0, r1, r0
	strh    r0, [r5, #0xc]
	mov     r0, r6
	bl      LoadSpritePositionY
	strh    r0, [r5, #0xe]
	mov     r0, #0xe
	mov     r2, #0x8
	ldsh    r3, [r5, r0]
	ldsh    r1, [r4, r2]
	mov     r7, #0xc
	add     r1, r3, r1
	strh    r1, [r5, #0xe]
	mov     r1, #0x4
	ldsh    r1, [r4, r1]
	mov     r3, r4
	add     r3, #0x10
	lsl     r1, r1, #16
	str     r1, [r5, #0x2c]
	mov     r1, #0x6
	ldsh    r1, [r4, r1]
	lsl     r1, r1, #16
	str     r1, [r5, #0x30]
	ldsh    r1, [r4, r2]
	mov     r2, r5
	add     r2, #0x20
	lsl     r1, r1, #16
	str     r1, [r5, #0x34]
	mov     r1, #0xa
	ldsh    r1, [r4, r1]
	lsl     r1, r1, #16
	str     r1, [r5, #0x38]
	ldsh    r1, [r4, r7]
	lsl     r1, r1, #16
	str     r1, [r5, #0x3c]
	ldsh    r0, [r4, r0]
	lsl     r0, r0, #16
	str     r0, [r5, #0x40]
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	ldrh    r0, [r4, #0x2]
	strh    r0, [r5, #0x8]
	ldrb    r0, [r5, #0x1]
	cmp     r0, #0x0
	bne     branch_224d26c
	lsl     r0, r7, #11
	str     r0, [r5, #0x5c]
	mov     r0, r6
	add     r1, sp, #0x0
	bl      Function_206309c
	ldr     r0, [sp, #0x4]
	str     r0, [r5, #0x50]
	ldr     r0, [r5, #0x68]
	cmp     r0, #0x0
	beq     branch_224d252
	add     r1, sp, #0x0
	bl      Function_206309c
	ldr     r0, [sp, #0x4]
	str     r0, [r5, #0x54]
.thumb
branch_224d252: @ 224d252 :thumb
	ldr     r0, [r5, #0x64]
	ldr     r0, [r0, #0x20]
	bl      Function_224e330
	ldr     r0, [r0, #0x4]
	str     r0, [r5, #0x58]
	mov     r0, #0x1
	strb    r0, [r5, #0x1]
	strh    r0, [r5, #0x4]
	ldr     r0, [pc, #0x1c] @ 0x224d284, (=0x5c9)
	bl      Function_2005748
	b       branch_224d270
@ 0x224d26c

.thumb
branch_224d26c: @ 224d26c :thumb
	mov     r0, #0x2
	strh    r0, [r5, #0x4]
.thumb
branch_224d270: @ 224d270 :thumb
	ldrh    r0, [r4, #0x1c]
	strh    r0, [r5, #0x10]
	ldrh    r0, [r4, #0x1e]
	strh    r0, [r5, #0x12]
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x224d27e


.align 2


.word 0x23d @ 0x224d280
.word 0x5c9 @ 0x224d284
.thumb
Function_224d288: @ 224d288 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x18
	ldr     r0, [r0, #0x0]
	mov     r5, r1
	ldr     r0, [r0, #0x3c]
	bl      Function_205eb3c
	mov     r4, r0
	ldr     r0, [r5, #0x64]
	ldr     r0, [r0, #0x20]
	bl      Function_224e330
	mov     r6, r0
	mov     r0, r4
	add     r1, sp, #0xc
	bl      Function_206309c
	ldr     r1, [r5, #0x50]
	ldr     r0, [r5, #0x5c]
	add     r0, r1, r0
	str     r0, [sp, #0x10]
	mov     r0, r4
	add     r1, sp, #0xc
	bl      Function_20630ac
	mov     r1, r5
	mov     r0, r4
	add     r1, #0x14
	bl      Function_22511f4
	ldr     r0, [r5, #0x68]
	cmp     r0, #0x0
	beq     branch_224d2f4
	add     r1, sp, #0xc
	bl      Function_206309c
	ldr     r1, [r5, #0x54]
	ldr     r0, [r5, #0x5c]
	add     r0, r1, r0
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x68]
	add     r1, sp, #0xc
	bl      Function_20630ac
	ldr     r0, [r5, #0x68]
	add     r1, sp, #0x0
	bl      CopySprite70Struct
	ldr     r0, [r5, #0x18]
	add     r1, sp, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x68]
	bl      Function_22511f4
.thumb
branch_224d2f4: @ 224d2f4 :thumb
	ldr     r1, [r5, #0x58]
	ldr     r0, [r5, #0x5c]
	add     r0, r1, r0
	str     r0, [r6, #0x4]
	ldr     r0, [r5, #0x5c]
	neg     r0, r0
	str     r0, [r5, #0x5c]
	bmi     branch_224d36c
	mov     r2, #0x1
	lsl     r2, r2, #14
	cmp     r0, r2
	blt     branch_224d314
	lsr     r1, r2, #1
	sub     r0, r0, r1
	str     r0, [r5, #0x5c]
	b       branch_224d332
@ 0x224d314

.thumb
branch_224d314: @ 224d314 :thumb
	lsr     r1, r2, #2
	cmp     r0, r1
	ble     branch_224d320
	sub     r0, r0, r1
	str     r0, [r5, #0x5c]
	b       branch_224d332
@ 0x224d320

.thumb
branch_224d320: @ 224d320 :thumb
	ldr     r0, [r5, #0x60]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x60]
	cmp     r0, #0x8
	bcc     branch_224d332
	ldr     r1, [r5, #0x5c]
	lsr     r0, r2, #2
	sub     r0, r1, r0
	str     r0, [r5, #0x5c]
.thumb
branch_224d332: @ 224d332 :thumb
	ldr     r0, [r5, #0x5c]
	cmp     r0, #0x0
	bgt     branch_224d36c
	mov     r0, r4
	add     r1, sp, #0xc
	bl      Function_206309c
	ldr     r0, [r5, #0x50]
	add     r1, sp, #0xc
	str     r0, [sp, #0x10]
	mov     r0, r4
	bl      Function_20630ac
	ldr     r0, [r5, #0x68]
	cmp     r0, #0x0
	beq     branch_224d364
	add     r1, sp, #0xc
	bl      Function_206309c
	ldr     r0, [r5, #0x54]
	add     r1, sp, #0xc
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x68]
	bl      Function_20630ac
.thumb
branch_224d364: @ 224d364 :thumb
	ldr     r0, [r5, #0x58]
	str     r0, [r6, #0x4]
	mov     r0, #0x2
	strh    r0, [r5, #0x4]
.thumb
branch_224d36c: @ 224d36c :thumb
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r4-r6,pc}
@ 0x224d372


.align 2, 0


.thumb
Function_224d374: @ 224d374 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	ldr     r0, [r0, #0x0]
	mov     r5, r1
	ldr     r0, [r0, #0x3c]
	bl      Function_205eb3c
	mov     r4, r0
	ldr     r0, [r5, #0x64]
	ldr     r0, [r0, #0x20]
	bl      Function_224e330
	ldr     r2, [r5, #0x44]
	ldr     r1, [r5, #0x2c]
	cmp     r2, r1
	beq     branch_224d3aa
	ldr     r1, [r5, #0x20]
	add     r1, r2, r1
	str     r1, [r5, #0x44]
	ldr     r2, [r5, #0x14]
	ldr     r1, [r5, #0x20]
	add     r1, r2, r1
	str     r1, [r5, #0x14]
	ldr     r2, [r0, #0x0]
	ldr     r1, [r5, #0x20]
	add     r1, r2, r1
	str     r1, [r0, #0x0]
.thumb
branch_224d3aa: @ 224d3aa :thumb
	ldr     r2, [r5, #0x48]
	ldr     r1, [r5, #0x30]
	cmp     r2, r1
	beq     branch_224d3c8
	ldr     r1, [r5, #0x24]
	add     r1, r2, r1
	str     r1, [r5, #0x48]
	ldr     r2, [r5, #0x18]
	ldr     r1, [r5, #0x24]
	add     r1, r2, r1
	str     r1, [r5, #0x18]
	ldr     r2, [r0, #0x4]
	ldr     r1, [r5, #0x24]
	add     r1, r2, r1
	str     r1, [r0, #0x4]
.thumb
branch_224d3c8: @ 224d3c8 :thumb
	ldr     r2, [r5, #0x4c]
	ldr     r1, [r5, #0x34]
	cmp     r2, r1
	beq     branch_224d3e6
	ldr     r1, [r5, #0x28]
	add     r1, r2, r1
	str     r1, [r5, #0x4c]
	ldr     r2, [r5, #0x1c]
	ldr     r1, [r5, #0x28]
	add     r1, r2, r1
	str     r1, [r5, #0x1c]
	ldr     r2, [r0, #0x8]
	ldr     r1, [r5, #0x28]
	add     r1, r2, r1
	str     r1, [r0, #0x8]
.thumb
branch_224d3e6: @ 224d3e6 :thumb
	mov     r1, r5
	mov     r0, r4
	add     r1, #0x14
	bl      Function_22511f4
	ldr     r0, [r5, #0x68]
	cmp     r0, #0x0
	beq     branch_224d408
	add     r1, sp, #0x0
	bl      CopySprite70Struct
	ldr     r0, [r5, #0x18]
	add     r1, sp, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x68]
	bl      Function_22511f4
.thumb
branch_224d408: @ 224d408 :thumb
	ldr     r1, [r5, #0x44]
	ldr     r0, [r5, #0x38]
	cmp     r1, r0
	bne     branch_224d42a
	ldr     r1, [r5, #0x48]
	ldr     r0, [r5, #0x3c]
	cmp     r1, r0
	bne     branch_224d42a
	ldr     r1, [r5, #0x4c]
	ldr     r0, [r5, #0x40]
	cmp     r1, r0
	bne     branch_224d42a
	mov     r0, #0x3
	strh    r0, [r5, #0x4]
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4,r5,pc}
@ 0x224d42a

.thumb
branch_224d42a: @ 224d42a :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x224d430

.thumb
Function_224d430: @ 224d430 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x64]
	mov     r1, #0x1
	bl      Function_224e0dc
	ldrh    r0, [r4, #0x8]
	cmp     r0, #0x16
	bne     branch_224d466
	ldrh    r1, [r4, #0x10]
	cmp     r1, #0xb
	beq     branch_224d450
	mov     r0, r5
	bl      Function_2249d70
.thumb
branch_224d450: @ 224d450 :thumb
	ldrh    r1, [r4, #0x12]
	cmp     r1, #0xb
	beq     branch_224d45c
	mov     r0, r5
	bl      Function_2249d8c
.thumb
branch_224d45c: @ 224d45c :thumb
	ldrh    r2, [r4, #0x6]
	ldr     r1, [r4, #0x64]
	mov     r0, r5
	bl      Function_224e07c
.thumb
branch_224d466: @ 224d466 :thumb
	ldr     r0, [r4, #0x68]
	cmp     r0, #0x0
	beq     branch_224d492
	ldrh    r2, [r4, #0x6]
	ldr     r1, [pc, #0x50] @ 0x224d4c0, (=0x23e)
	cmp     r2, r1
	bne     branch_224d47c
	mov     r1, #0x80
	bl      SetSpriteID
	b       branch_224d48a
@ 0x224d47c

.thumb
branch_224d47c: @ 224d47c :thumb
	mov     r1, #0x80
	bl      SetSpriteID
	ldr     r0, [r4, #0x68]
	mov     r1, #0x6
	bl      SetSpriteScript
.thumb
branch_224d48a: @ 224d48a :thumb
	ldrh    r1, [r4, #0x6]
	ldr     r0, [r4, #0x68]
	bl      SetSprite_c
.thumb
branch_224d492: @ 224d492 :thumb
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x1
	bne     branch_224d4a4
	ldr     r1, [r4, #0x64]
	mov     r0, r5
	mov     r2, #0x2
	bl      Function_224cc50
	b       branch_224d4b8
@ 0x224d4a4

.thumb
branch_224d4a4: @ 224d4a4 :thumb
	cmp     r0, #0x0
	bne     branch_224d4b4
	ldr     r1, [r4, #0x64]
	mov     r0, r5
	mov     r2, #0x1
	bl      Function_224cc50
	b       branch_224d4b8
@ 0x224d4b4

.thumb
branch_224d4b4: @ 224d4b4 :thumb
	bl      ErrorHandling
.thumb
branch_224d4b8: @ 224d4b8 :thumb
	mov     r0, #0x4
	strh    r0, [r4, #0x4]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224d4c0

.word 0x23e @ 0x224d4c0
.thumb
Function_224d4c4: @ 224d4c4 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	ldr     r0, [r0, #0x3c]
	bl      Function_205eb3c
	mov     r6, r0
	ldr     r0, [r4, #0x64]
	ldr     r0, [r0, #0x20]
	bl      Function_224e330
	ldr     r2, [r4, #0x44]
	ldr     r1, [r4, #0x2c]
	cmp     r2, r1
	beq     branch_224d4fc
	ldr     r1, [r4, #0x20]
	add     r1, r2, r1
	str     r1, [r4, #0x44]
	ldr     r2, [r4, #0x14]
	ldr     r1, [r4, #0x20]
	add     r1, r2, r1
	str     r1, [r4, #0x14]
	ldr     r2, [r0, #0x0]
	ldr     r1, [r4, #0x20]
	add     r1, r2, r1
	str     r1, [r0, #0x0]
.thumb
branch_224d4fc: @ 224d4fc :thumb
	ldr     r2, [r4, #0x48]
	ldr     r1, [r4, #0x30]
	cmp     r2, r1
	beq     branch_224d51a
	ldr     r1, [r4, #0x24]
	add     r1, r2, r1
	str     r1, [r4, #0x48]
	ldr     r2, [r4, #0x18]
	ldr     r1, [r4, #0x24]
	add     r1, r2, r1
	str     r1, [r4, #0x18]
	ldr     r2, [r0, #0x4]
	ldr     r1, [r4, #0x24]
	add     r1, r2, r1
	str     r1, [r0, #0x4]
.thumb
branch_224d51a: @ 224d51a :thumb
	ldr     r2, [r4, #0x4c]
	ldr     r1, [r4, #0x34]
	cmp     r2, r1
	beq     branch_224d538
	ldr     r1, [r4, #0x28]
	add     r1, r2, r1
	str     r1, [r4, #0x4c]
	ldr     r2, [r4, #0x1c]
	ldr     r1, [r4, #0x28]
	add     r1, r2, r1
	str     r1, [r4, #0x1c]
	ldr     r2, [r0, #0x8]
	ldr     r1, [r4, #0x28]
	add     r1, r2, r1
	str     r1, [r0, #0x8]
.thumb
branch_224d538: @ 224d538 :thumb
	mov     r1, r4
	mov     r0, r6
	add     r1, #0x14
	bl      Function_22511f4
	ldr     r0, [r4, #0x68]
	cmp     r0, #0x0
	beq     branch_224d55a
	add     r1, sp, #0x0
	bl      CopySprite70Struct
	ldr     r0, [r4, #0x18]
	add     r1, sp, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x68]
	bl      Function_22511f4
.thumb
branch_224d55a: @ 224d55a :thumb
	ldr     r1, [r4, #0x44]
	ldr     r0, [r4, #0x2c]
	cmp     r1, r0
	bne     branch_224d5de
	ldr     r1, [r4, #0x48]
	ldr     r0, [r4, #0x30]
	cmp     r1, r0
	bne     branch_224d5de
	ldr     r1, [r4, #0x4c]
	ldr     r0, [r4, #0x34]
	cmp     r1, r0
	bne     branch_224d5de
	ldrh    r0, [r4, #0x8]
	cmp     r0, #0x16
	bne     branch_224d586
	ldr     r0, [pc, #0x68] @ 0x224d5e4, (=0x5c9)
	mov     r1, #0x0
	bl      Function_20057a4
	mov     r0, #0x5
	strh    r0, [r4, #0x4]
	b       branch_224d5d8
@ 0x224d586

.thumb
branch_224d586: @ 224d586 :thumb
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      Function_205eb3c
	mov     r1, #0xa
	ldsh    r1, [r4, r1]
	mov     r5, r0
	bl      SaveSpritePositionX
	mov     r1, #0xc
	ldsh    r1, [r4, r1]
	mov     r0, r5
	bl      SaveSpritePositionZ
	mov     r1, #0xe
	ldsh    r1, [r4, r1]
	mov     r0, r5
	bl      SaveSpritePositionY
	mov     r0, r5
	bl      CopySpritePositionsFromOldToNew
	ldr     r0, [r4, #0x68]
	cmp     r0, #0x0
	beq     branch_224d5c6
	mov     r1, #0xc
	ldsh    r1, [r4, r1]
	bl      SaveSpritePositionZ
	ldr     r0, [r4, #0x68]
	bl      CopySpritePositionsFromOldToNew
.thumb
branch_224d5c6: @ 224d5c6 :thumb
	ldrh    r1, [r4, #0x8]
	ldr     r0, [r4, #0x64]
	mov     r2, #0x2
	strh    r1, [r0, #0xc]
	ldr     r0, [r0, #0x1c]
	bl      Function_20629b4
	mov     r0, #0x0
	strh    r0, [r4, #0x4]
.thumb
branch_224d5d8: @ 224d5d8 :thumb
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x224d5de

.thumb
branch_224d5de: @ 224d5de :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x224d5e4

.word 0x5c9 @ 0x224d5e4
.thumb
Function_224d5e8: @ 224d5e8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_224cc7c
	cmp     r0, #0x0
	bne     branch_224d690
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      Function_205eb3c
	mov     r1, #0xa
	ldsh    r1, [r4, r1]
	mov     r6, r0
	bl      SaveSpritePositionX
	mov     r1, #0xc
	ldsh    r1, [r4, r1]
	mov     r0, r6
	bl      SaveSpritePositionZ
	mov     r1, #0xe
	ldsh    r1, [r4, r1]
	mov     r0, r6
	bl      SaveSpritePositionY
	mov     r0, r6
	bl      CopySpritePositionsFromOldToNew
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	ldr     r0, [r0, #0x3c]
	bl      Function_205ed48
	ldr     r0, [r4, #0x68]
	cmp     r0, #0x0
	beq     branch_224d640
	mov     r1, #0xc
	ldsh    r1, [r4, r1]
	bl      SaveSpritePositionZ
	ldr     r0, [r4, #0x68]
	bl      CopySpritePositionsFromOldToNew
.thumb
branch_224d640: @ 224d640 :thumb
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x1
	bne     branch_224d65e
	ldrh    r0, [r4, #0x2]
	cmp     r0, #0x9
	bne     branch_224d65e
	mov     r0, r5
	mov     r1, #0x7
	bl      Function_2249d70
	ldr     r1, [pc, #0x3c] @ 0x224d694, (=0x243)
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_224dda0
.thumb
branch_224d65e: @ 224d65e :thumb
	ldrh    r1, [r4, #0x6]
	ldr     r0, [pc, #0x34] @ 0x224d698, (=0x241)
	cmp     r1, r0
	bne     branch_224d68c
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x1
	bne     branch_224d68c
	ldr     r0, [r4, #0x64]
	ldrh    r0, [r0, #0x4]
	cmp     r0, #0x1
	bne     branch_224d68c
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	bl      Function_206b6dc
	cmp     r0, #0x0
	bne     branch_224d68c
	mov     r0, #0x6
	strh    r0, [r4, #0x4]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x224d68c

.thumb
branch_224d68c: @ 224d68c :thumb
	mov     r0, #0x2
	pop     {r4-r6,pc}
@ 0x224d690

.thumb
branch_224d690: @ 224d690 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x224d694

.word 0x243 @ 0x224d694
.word 0x241 @ 0x224d698
.thumb
Function_224d69c: @ 224d69c :thumb
	push    {r4-r6,lr}
	ldr     r0, [r0, #0x0]
	mov     r5, r1
	ldr     r0, [r0, #0x38]
	mov     r1, #0x86
	bl      GetAdressOfSpriteID
	mov     r4, r0
	bne     branch_224d6b2
	bl      ErrorHandling
.thumb
branch_224d6b2: @ 224d6b2 :thumb
	mov     r0, r4
	bl      LoadSpritePositionX
	mov     r6, r0
	sub     r0, #0x58
	cmp     r0, #0x3
	bcc     branch_224d6c4
	bl      ErrorHandling
.thumb
branch_224d6c4: @ 224d6c4 :thumb
	sub     r6, #0x58
	ldr     r1, [pc, #0x14] @ 0x224d6dc, (=0x2251384)
	lsl     r2, r6, #2
	ldr     r1, [r1, r2]
	mov     r0, r4
	bl      Malloc_MovementScript
	str     r0, [r5, #0x6c]
	mov     r0, #0x7
	strh    r0, [r5, #0x4]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x224d6dc

.word 0x2251384 @ 0x224d6dc
.thumb
Function_224d6e0: @ 224d6e0 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r0
	ldr     r0, [r5, #0x6c]
	bl      Function_206574c
	cmp     r0, #0x1
	bne     branch_224d71a
	ldr     r0, [r5, #0x6c]
	bl      Function_2065758
	ldr     r0, [r4, #0x0]
	mov     r1, #0x86
	ldr     r0, [r0, #0x38]
	bl      GetAdressOfSpriteID
	mov     r1, r0
	mov     r0, r4
	bl      Function_224ee70
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	mov     r1, #0x1
	bl      Function_206b6ec
	mov     r0, #0x2
	pop     {r3-r5,pc}
@ 0x224d71a

.thumb
branch_224d71a: @ 224d71a :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224d71e


.align 2, 0


.thumb
Function_224d720: @ 224d720 :thumb
	push    {r3,lr}
	ldr     r3, [pc, #0x1c] @ 0x224d740, (=0x22530a4)
	mov     r2, #0x0
.thumb
branch_224d726: @ 224d726 :thumb
	ldr     r1, [r3, #0x0]
	cmp     r1, r0
	bne     branch_224d730
	mov     r0, r3
	pop     {r3,pc}
@ 0x224d730

.thumb
branch_224d730: @ 224d730 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r3, #0xc
	cmp     r2, #0xa
	blt     branch_224d726
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x224d740

.word 0x22530a4 @ 0x224d740
.thumb
Function_224d744: @ 224d744 :thumb
	push    {r4,lr}
	mov     r1, #0xd
	lsl     r1, r1, #6
	add     r4, r0, r1
	ldr     r2, [pc, #0x2c] @ 0x224d77c, (=0x12f8)
	mov     r0, r4
	mov     r1, #0x0
	blx     Call_FillMemWithValue
	mov     r1, #0x0
	mov     r2, r4
	mov     r0, #0x19
.thumb
branch_224d75c: @ 224d75c :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r0, [r2, #0x0]
	add     r2, #0x18
	cmp     r1, #0x19
	blt     branch_224d75c
	mov     r0, #0x96
	mov     r2, #0x0
	mov     r1, #0x5
	lsl     r0, r0, #2
.thumb
branch_224d76e: @ 224d76e :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	str     r1, [r4, r0]
	add     r4, #0x8
	cmp     r2, #0x5
	blt     branch_224d76e
	pop     {r4,pc}
@ 0x224d77a


.align 2


.word 0x12f8 @ 0x224d77c
.thumb
Function_224d780: @ 224d780 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	mov     r0, #0xd
	lsl     r0, r0, #6
	mov     r4, r1
	add     r6, r5, r0
	cmp     r4, #0x19
	bcc     branch_224d796
	bl      ErrorHandling
.thumb
branch_224d796: @ 224d796 :thumb
	mov     r0, #0x18
	mul     r0, r4
	add     r1, r6, r0
	ldr     r0, [r6, r0]
	cmp     r0, #0x19
	bne     branch_224d7b8
	stmia   r1!, {r4}
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x0]
	ldr     r3, [pc, #0x10] @ 0x224d7bc, (=0x2252fd0)
	lsl     r4, r4, #2
	ldr     r0, [r0, #0x40]
	ldr     r3, [r3, r4]
	mov     r2, #0x0
	bl      Function_5_21dfb00
branch_224d7b8: @ 224d7b8 :thumb
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x224d7bc

.word 0x2252fd0 @ 0x224d7bc



.thumb
Function_224d7c0: @ 224d7c0 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, #0xd
	lsl     r1, r1, #6
	add     r4, r0, r1
	cmp     r5, #0x19
	bcc     branch_224d7d2
	bl      ErrorHandling
.thumb
branch_224d7d2: @ 224d7d2 :thumb
	mov     r0, #0x18
	mul     r0, r5
	add     r1, r4, r0
	ldr     r0, [r4, r0]
	cmp     r0, #0x19
	beq     branch_224d7e8
	mov     r0, #0x19
	str     r0, [r1, #0x0]
	add     r0, r1, #0x4
	bl      Function_207395c
.thumb
branch_224d7e8: @ 224d7e8 :thumb
	pop     {r3-r5,pc}
@ 0x224d7ea


.align 2, 0


.thumb
Function_224d7ec: @ 224d7ec :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, #0xd
	lsl     r1, r1, #6
	add     r4, r0, r1
	cmp     r5, #0x19
	bcc     branch_224d7fe
	bl      ErrorHandling
.thumb
branch_224d7fe: @ 224d7fe :thumb
	mov     r0, #0x18
	mul     r0, r5
	add     r5, r4, r0
	ldr     r0, [r4, r0]
	cmp     r0, #0x19
	bne     branch_224d80e
	bl      ErrorHandling
.thumb
branch_224d80e: @ 224d80e :thumb
	add     r0, r5, #0x4
	pop     {r3-r5,pc}
@ 0x224d812


.align 2, 0


.thumb
Function_224d814: @ 224d814 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r0
	mov     r0, #0xd
	lsl     r0, r0, #6
	mov     r5, r1
	add     r7, r6, r0
	cmp     r5, #0x5
	bcc     branch_224d82a
	bl      ErrorHandling
.thumb
branch_224d82a: @ 224d82a :thumb
	mov     r0, #0x96
	lsl     r0, r0, #2
	add     r0, r7, r0
	lsl     r4, r5, #3
	str     r0, [sp, #0x4]
	ldr     r0, [r0, r4]
	cmp     r0, #0x5
	bne     branch_224d86c
	ldr     r0, [pc, #0x34] @ 0x224d870, (=0x22514a4)
	lsl     r1, r5, #2
	ldr     r0, [r0, r1]
	str     r0, [sp, #0x0]
	ldr     r0, [r6, #0x0]
	ldr     r1, [sp, #0x0]
	ldr     r0, [r0, #0x40]
	bl      Function_5_21df5a8
	mov     r1, r0
	mov     r0, #0x97
	lsl     r0, r0, #2
	add     r7, r7, r0
	mov     r0, #0x4
	bl      malloc2
	str     r0, [r7, r4]
	ldr     r0, [r6, #0x0]
	ldr     r1, [sp, #0x0]
	ldr     r0, [r0, #0x40]
	ldr     r2, [r7, r4]
	bl      Function_5_21df5b4
	ldr     r0, [sp, #0x4]
	str     r5, [r0, r4]
branch_224d86c: @ 224d86c :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x224d870

.word 0x22514a4 @ 0x224d870



.thumb
Function_224d874: @ 224d874 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, #0xd
	lsl     r1, r1, #6
	add     r4, r0, r1
	cmp     r5, #0x5
	bcc     branch_224d886
	bl      ErrorHandling
.thumb
branch_224d886: @ 224d886 :thumb
	mov     r0, #0x96
	lsl     r0, r0, #2
	lsl     r3, r5, #3
	add     r2, r4, r0
	ldr     r1, [r2, r3]
	cmp     r1, #0x5
	beq     branch_224d8a2
	mov     r1, #0x5
	str     r1, [r2, r3]
	add     r1, r4, r3
	.hword  0x1d00 @ add r0, r0, #0x4
	ldr     r0, [r1, r0]
	bl      free
.thumb
branch_224d8a2: @ 224d8a2 :thumb
	pop     {r3-r5,pc}
@ 0x224d8a4

.thumb
Function_224d8a4: @ 224d8a4 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r1, #0xd
	lsl     r1, r1, #6
	add     r4, r0, r1
	mov     r0, r5
	mov     r7, r2
	bl      Function_224db04
	cmp     r0, #0x1
	bne     branch_224d8e8
	ldr     r2, [pc, #0x68] @ 0x224d924, (=0x282)
	mov     r0, #0x0
	mov     r1, r4
	.hword  0x1e93 @ sub r3, r2, #0x2
.thumb
branch_224d8c2: @ 224d8c2 :thumb
	ldrh    r6, [r1, r3]
	cmp     r6, #0x1
	bne     branch_224d8e0
	ldrh    r6, [r1, r2]
	cmp     r5, r6
	bne     branch_224d8e0
	mov     r1, #0x1
	str     r1, [r7, #0x0]
	mov     r1, #0xa
	lsl     r1, r1, #6
	add     r2, r4, r1
	mov     r1, #0x7c
	mul     r1, r0
	add     r0, r2, r1
	pop     {r3-r7,pc}
@ 0x224d8e0

.thumb
branch_224d8e0: @ 224d8e0 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r1, #0x7c
	cmp     r0, #0x22
	blt     branch_224d8c2
.thumb
branch_224d8e8: @ 224d8e8 :thumb
	mov     r0, #0xa
	mov     r1, #0x0
	mov     r3, r4
	lsl     r0, r0, #6
.thumb
branch_224d8f0: @ 224d8f0 :thumb
	ldrh    r2, [r3, r0]
	cmp     r2, #0x0
	bne     branch_224d912
	mov     r0, #0x0
	str     r0, [r7, #0x0]
	mov     r0, #0x7c
	mul     r0, r1
	mov     r1, #0xa
	lsl     r1, r1, #6
	add     r3, r4, r1
	mov     r2, #0x1
	strh    r2, [r3, r0]
	add     r2, r4, r0
	.hword  0x1c89 @ add r1, r1, #0x2
	strh    r5, [r2, r1]
	add     r0, r3, r0
	pop     {r3-r7,pc}
@ 0x224d912

.thumb
branch_224d912: @ 224d912 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r3, #0x7c
	cmp     r1, #0x22
	blt     branch_224d8f0
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224d922


.align 2


.word 0x282 @ 0x224d924
.thumb
Function_224d928: @ 224d928 :thumb
	push    {r4,lr}
	mov     r4, r1
	bne     branch_224d932
	bl      ErrorHandling
.thumb
branch_224d932: @ 224d932 :thumb
	mov     r0, #0x0
	strh    r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x224d938

.thumb
Function_224d938: @ 224d938 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldrh    r0, [r4, #0x2]
	bl      Function_224db04
	cmp     r0, #0x0
	bne     branch_224d950
	mov     r0, r5
	mov     r1, r4
	bl      Function_224d928
.thumb
branch_224d950: @ 224d950 :thumb
	pop     {r3-r5,pc}
@ 0x224d952


.align 2, 0


.thumb
Function_224d954: @ 224d954 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r0, #0xd
	lsl     r0, r0, #6
	add     r4, r7, r0
	sub     r0, #0xc0
	str     r1, [sp, #0x0]
	mov     r6, #0x0
	add     r5, r4, r0
.thumb
branch_224d966: @ 224d966 :thumb
	mov     r0, #0xa
	lsl     r0, r0, #6
	ldrh    r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_224d982
	ldr     r0, [pc, #0x1c] @ 0x224d990, (=0x282)
	ldrh    r1, [r4, r0]
	ldr     r0, [sp, #0x0]
	cmp     r0, r1
	bne     branch_224d982
	mov     r0, r7
	mov     r1, r5
	bl      Function_224d928
.thumb
branch_224d982: @ 224d982 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x7c
	add     r5, #0x7c
	cmp     r6, #0x22
	blt     branch_224d966
	pop     {r3-r7,pc}
@ 0x224d98e


.align 2


.word 0x282 @ 0x224d990
.thumb
Function_224d994: @ 224d994 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r5, #0x0
.thumb
branch_224d99a: @ 224d99a :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_224d7c0
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x19
	blt     branch_224d99a
	mov     r5, #0x0
.thumb
branch_224d9aa: @ 224d9aa :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_224d874
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x5
	blt     branch_224d9aa
	pop     {r3-r5,pc}
@ 0x224d9ba


.align 2, 0


.thumb
Function_224d9bc: @ 224d9bc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	str     r3, [sp, #0x4]
	mov     r3, #0xd
	mov     r6, r2
	mov     r5, r1
	lsl     r3, r3, #6
	mov     r2, r0
	add     r4, r2, r3
	str     r0, [sp, #0x0]
	ldr     r7, [sp, #0x28]
	cmp     r5, #0x19
	beq     branch_224d9f4
	mov     r2, #0x18
	mov     r3, r5
	mul     r3, r2
	add     r2, r4, r3
	str     r2, [sp, #0xc]
	ldr     r2, [r4, r3]
	cmp     r2, #0x19
	bne     branch_224d9ea
	bl      Function_224d780
.thumb
branch_224d9ea: @ 224d9ea :thumb
	ldr     r1, [sp, #0xc]
	ldr     r0, [sp, #0x4]
	.hword  0x1d09 @ add r1, r1, #0x4
	bl      Function_2073b70
.thumb
branch_224d9f4: @ 224d9f4 :thumb
	cmp     r6, #0x5
	beq     branch_224da42
	lsl     r0, r6, #3
	str     r0, [sp, #0x8]
	add     r1, r4, r0
	mov     r0, #0x96
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	cmp     r0, #0x5
	bne     branch_224da10
	ldr     r0, [sp, #0x0]
	mov     r1, r6
	bl      Function_224d814
.thumb
branch_224da10: @ 224da10 :thumb
	ldr     r1, [sp, #0x8]
	mov     r0, r7
	add     r2, r4, r1
	mov     r1, #0x97
	lsl     r1, r1, #2
	ldr     r1, [r2, r1]
	mov     r2, #0x0
	bl      Function_2073994
	mov     r0, #0x18
	mul     r0, r5
	add     r4, r4, r0
	mov     r0, r7
	add     r1, r4, #0x4
	mov     r2, #0x4
	bl      Function_2073a3c
	mov     r0, r7
	add     r1, r4, #0x4
	bl      Function_2073a5c
	ldr     r0, [sp, #0x4]
	mov     r1, r7
	bl      Function_2073b84
.thumb
branch_224da42: @ 224da42 :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x224da46


.align 2, 0


.thumb
Function_224da48: @ 224da48 :thumb
	push    {r3-r5,lr}
	mov     r4, r2
	ldr     r2, [pc, #0x10] @ 0x224da60, (=0x22531d0)
	lsl     r1, r1, #3
	str     r3, [sp, #0x0]
	add     r5, r2, r1
	ldrh    r1, [r2, r1]
	ldrh    r2, [r5, #0x2]
	mov     r3, r4
	bl      Function_224d9bc
	pop     {r3-r5,pc}
@ 0x224da60

.word 0x22531d0 @ 0x224da60
.thumb
Function_224da64: @ 224da64 :thumb
	push    {r3-r7,lr}
	mov     r7, r2
	mov     r2, #0xd
	lsl     r2, r2, #6
	add     r5, r0, r2
	ldr     r0, [pc, #0x38] @ 0x224daa8, (=0x22531d0)
	lsl     r1, r1, #3
	ldrh    r1, [r0, r1]
	mov     r0, #0x18
	add     r5, #0x10
	mov     r4, r1
	mul     r4, r0
	mov     r2, #0x1f
	ldr     r0, [r5, r4]
	mov     r1, #0x1
	lsl     r2, r2, #16
	mov     r6, r3
	blx     Function_20b2d8c
	ldr     r0, [r5, r4]
	mov     r1, r7
	blx     Function_20b3764
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r6, r0
	beq     branch_224daa4
	mov     r1, #0x3f
	ldr     r0, [r5, r4]
	and     r1, r6
	blx     Function_20b3724
.thumb
branch_224daa4: @ 224daa4 :thumb
	pop     {r3-r7,pc}
@ 0x224daa6


.align 2


.word 0x22531d0 @ 0x224daa8
.thumb
Function_224daac: @ 224daac :thumb
	push    {r3,lr}
	mov     r3, #0x0
	mvn     r3, r3
	bl      Function_224da64
	pop     {r3,pc}
@ 0x224dab8

.thumb
Function_224dab8: @ 224dab8 :thumb
	push    {r4-r6,lr}
	mov     r6, r2
	mov     r2, #0xd
	lsl     r2, r2, #6
	add     r4, r0, r2
	ldr     r0, [pc, #0x24] @ 0x224dae8, (=0x22531d0)
	lsl     r1, r1, #3
	ldrh    r1, [r0, r1]
	mov     r0, #0x18
	mov     r5, r1
	mul     r5, r0
	ldr     r0, [r4, r5]
	cmp     r0, #0x19
	bcc     branch_224dad8
	bl      ErrorHandling
.thumb
branch_224dad8: @ 224dad8 :thumb
	add     r0, r4, r5
	mov     r1, #0x3f
	ldr     r0, [r0, #0x10]
	and     r1, r6
	blx     Function_20b3724
	pop     {r4-r6,pc}
@ 0x224dae6


.align 2


.word 0x22531d0 @ 0x224dae8
.thumb
Function_224daec: @ 224daec :thumb
	lsl     r1, r0, #3
	ldr     r0, [pc, #0x10] @ 0x224db00, (=0x22531d0)
	add     r0, r0, r1
	ldrh    r0, [r0, #0x2]
	cmp     r0, #0x5
	beq     branch_224dafc
	mov     r0, #0x1
	bx      lr
@ 0x224dafc

.thumb
branch_224dafc: @ 224dafc :thumb
	mov     r0, #0x0
	bx      lr
@ 0x224db00

.word 0x22531d0 @ 0x224db00
.thumb
Function_224db04: @ 224db04 :thumb
	lsl     r1, r0, #3
	ldr     r0, [pc, #0x10] @ 0x224db18, (=0x22531d0)
	add     r0, r0, r1
	ldr     r0, [r0, #0x4]
	cmp     r0, #0x1
	bne     branch_224db14
	mov     r0, #0x1
	bx      lr
@ 0x224db14

.thumb
branch_224db14: @ 224db14 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x224db18

.word 0x22531d0 @ 0x224db18
.thumb
Function_224db1c: @ 224db1c :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r5, #0x0
.thumb
branch_224db22: @ 224db22 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_224b8dc
	cmp     r0, #0x0
	bne     branch_224db5a
	mov     r0, r4
	mov     r1, r5
	bl      Function_224e160
	cmp     r0, #0x0
	bne     branch_224db5a
	mov     r0, r4
	mov     r1, r5
	bl      Function_224e9f4
	cmp     r0, #0x0
	bne     branch_224db5a
	mov     r0, r4
	mov     r1, r5
	bl      Function_224ecc0
	cmp     r0, #0x0
	bne     branch_224db5a
	mov     r0, r4
	mov     r1, r5
	bl      Function_224d954
.thumb
branch_224db5a: @ 224db5a :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x19
	blt     branch_224db22
	mov     r5, #0x0
.thumb
branch_224db62: @ 224db62 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_224b7b0
	cmp     r0, #0x0
	bne     branch_224db9a
	mov     r0, r4
	mov     r1, r5
	bl      Function_224e0e0
	cmp     r0, #0x0
	bne     branch_224db9a
	mov     r0, r4
	mov     r1, r5
	bl      Function_224e9a4
	cmp     r0, #0x0
	bne     branch_224db9a
	mov     r0, r4
	mov     r1, r5
	bl      Function_224ece8
	cmp     r0, #0x0
	bne     branch_224db9a
	mov     r0, r4
	mov     r1, r5
	bl      Function_224d7c0
.thumb
branch_224db9a: @ 224db9a :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x19
	blt     branch_224db62
	mov     r5, #0x0
.thumb
branch_224dba2: @ 224dba2 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_224b844
	cmp     r0, #0x0
	bne     branch_224dbda
	mov     r0, r4
	mov     r1, r5
	bl      Function_224e120
	cmp     r0, #0x0
	bne     branch_224dbda
	mov     r0, r4
	mov     r1, r5
	bl      Function_224e9cc
	cmp     r0, #0x0
	bne     branch_224dbda
	mov     r0, r4
	mov     r1, r5
	bl      Function_224ed20
	cmp     r0, #0x0
	bne     branch_224dbda
	mov     r0, r4
	mov     r1, r5
	bl      Function_224d874
.thumb
branch_224dbda: @ 224dbda :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x5
	blt     branch_224dba2
	pop     {r3-r5,pc}
@ 0x224dbe2


.align 2, 0


.thumb
Function_224dbe4: @ 224dbe4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r6, r2
	ldr     r7, [pc, #0x40] @ 0x224dc2c, (=0x22533c4)
	mov     r2, #0xc
	mov     r5, r1
	mul     r5, r2
	ldr     r2, [r7, r5]
	cmp     r2, #0x0
	bne     branch_224dbfe
	add     sp, #0x24
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x224dbfe

.thumb
branch_224dbfe: @ 224dbfe :thumb
	lsl     r2, r1, #3
	ldr     r1, [pc, #0x2c] @ 0x224dc30, (=0x22531d0)
	ldrh    r1, [r1, r2]
	bl      Function_224d7ec
	mov     r4, r0
	add     r0, sp, #0x0
	blx     MTX_Identity33_
	ldr     r0, [r4, #0xc]
	mov     r1, r6
	add     r2, sp, #0x0
	add     r3, r7, r5
	bl      Function_201ced8
	cmp     r0, #0x0
	beq     branch_224dc26
	add     sp, #0x24
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x224dc26

.thumb
branch_224dc26: @ 224dc26 :thumb
	mov     r0, #0x0
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x224dc2c

.word 0x22533c4 @ 0x224dc2c
.word 0x22531d0 @ 0x224dc30



.thumb
Function_224dc34: @ 224dc34 :thumb
	ldr     r1, [pc, #0xc] @ 0x224dc44, (=0x16d0)
	mov     r2, #0x12
	add     r0, r0, r1
	ldr     r3, [pc, #0xc] @ 0x224dc48, (=Call_FillMemWithValue)
	mov     r1, #0x0
	lsl     r2, r2, #6
	bx      r3
@ 0x224dc42

.align 2
.word 0x16d0 @ 0x224dc44
.word Call_FillMemWithValue @ 0x224dc48



.thumb
Function_224dc4c: @ 224dc4c :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	ldr     r0, [pc, #0x1c] @ 0x224dc70, (=0x16d0)
	mov     r4, #0x0
	add     r5, r6, r0
branch_224dc56: @ 224dc56 :thumb
	ldrb    r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_224dc64
	mov     r0, r6
	mov     r1, r5
	bl      Function_224e044
.thumb
branch_224dc64: @ 224dc64 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x24
	cmp     r4, #0x20
	blt     branch_224dc56
	pop     {r4-r6,pc}
@ 0x224dc6e


.align 2


.word 0x16d0 @ 0x224dc70
.thumb
Function_224dc74: @ 224dc74 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r0, [pc, #0x28] @ 0x224dca4, (=0x16d0)
	mov     r7, r1
	mov     r4, #0x0
	add     r5, r6, r0
.thumb
branch_224dc80: @ 224dc80 :thumb
	ldrb    r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_224dc9a
	ldrh    r0, [r5, #0x2]
	cmp     r7, r0
	bne     branch_224dc9a
	ldrb    r0, [r5, #0x1]
	cmp     r0, #0x0
	bne     branch_224dc9a
	mov     r0, r6
	mov     r1, r5
	bl      Function_224e060
.thumb
branch_224dc9a: @ 224dc9a :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x24
	cmp     r4, #0x20
	blt     branch_224dc80
	pop     {r3-r7,pc}
@ 0x224dca4

.word 0x16d0 @ 0x224dca4
.thumb
Function_224dca8: @ 224dca8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	bl      Function_2249d38
	cmp     r0, #0x1
	bne     branch_224dd00
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x0]
	add     r1, sp, #0x0
	ldr     r4, [r0, #0x38]
	add     r2, sp, #0x4
	mov     r0, r4
	mov     r3, #0x1
	bl      Function_20625b0
	cmp     r0, #0x1
	bne     branch_224dd1e
	add     r6, sp, #0x0
	add     r7, sp, #0x4
.thumb
branch_224dcd2: @ 224dcd2 :thumb
	ldr     r0, [sp, #0x0]
	bl      GetSpriteID
	cmp     r0, #0xfd
	bne     branch_224dcec
	mov     r0, r5
	bl      Function_224dddc
	mov     r1, r0
	ldr     r2, [sp, #0x0]
	mov     r0, r5
	bl      Function_224df10
.thumb
branch_224dcec: @ 224dcec :thumb
	mov     r0, r4
	mov     r1, r6
	mov     r2, r7
	mov     r3, #0x1
	bl      Function_20625b0
	cmp     r0, #0x1
	beq     branch_224dcd2
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x224dd00

.thumb
branch_224dd00: @ 224dd00 :thumb
	mov     r0, r5
	bl      Function_22510d0
	mov     r6, r0
	bl      Function_224d720
	mov     r4, r0
	mov     r0, r5
	mov     r1, r6
	bl      Function_224dd24
	ldr     r1, [r4, #0x8]
	mov     r0, r5
	bl      Function_224dd24
.thumb
branch_224dd1e: @ 224dd1e :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x224dd22


.align 2, 0


.thumb
Function_224dd24: @ 224dd24 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	bl      Function_224de40
	mov     r1, r0
	beq     branch_224dd3c
	mov     r0, r5
	mov     r2, r4
	bl      Function_224dd40
.thumb
branch_224dd3c: @ 224dd3c :thumb
	pop     {r3-r5,pc}
@ 0x224dd3e


.align 2, 0


.thumb
Function_224dd40: @ 224dd40 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r6, r0
	mov     r7, r2
	cmp     r5, #0x0
	bne     branch_224dd50
	bl      ErrorHandling
.thumb
branch_224dd50: @ 224dd50 :thumb
	ldr     r0, [r5, #0x4]
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_224dd9e
	mov     r4, #0x0
.thumb
branch_224dd5a: @ 224dd5a :thumb
	ldr     r0, [r5, #0x4]
	ldr     r0, [r0, r4]
	ldr     r1, [r0, #0x14]
	cmp     r1, #0xb
	beq     branch_224dd6e
	mov     r0, r6
	bl      Function_2249da8
	cmp     r0, #0x1
	bne     branch_224dd94
.thumb
branch_224dd6e: @ 224dd6e :thumb
	ldr     r1, [r5, #0x4]
	mov     r0, r6
	ldr     r1, [r1, r4]
	mov     r2, r7
	ldrh    r1, [r1, #0x0]
	bl      Function_224de08
	cmp     r0, #0x0
	bne     branch_224dd94
	mov     r0, r6
	bl      Function_224dddc
	ldr     r2, [r5, #0x4]
	mov     r1, r0
	ldr     r2, [r2, r4]
	mov     r0, r6
	mov     r3, r7
	bl      Function_224dff4
.thumb
branch_224dd94: @ 224dd94 :thumb
	ldr     r0, [r5, #0x4]
	.hword  0x1d24 @ add r4, r4, #0x4
	ldr     r0, [r0, r4]
	cmp     r0, #0x0
	bne     branch_224dd5a
.thumb
branch_224dd9e: @ 224dd9e :thumb
	pop     {r3-r7,pc}
@ 0x224dda0

.thumb
Function_224dda0: @ 224dda0 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r5, r0
	mov     r0, r6
	mov     r7, r2
	bl      Function_224de40
	mov     r4, r0
	ldr     r1, [r4, #0x4]
	lsl     r7, r7, #2
	ldr     r1, [r1, r7]
	mov     r0, r5
	ldrh    r1, [r1, #0x0]
	mov     r2, r6
	bl      Function_224de08
	cmp     r0, #0x0
	bne     branch_224ddd8
	mov     r0, r5
	bl      Function_224dddc
	ldr     r2, [r4, #0x4]
	mov     r1, r0
	ldr     r2, [r2, r7]
	mov     r0, r5
	mov     r3, r6
	bl      Function_224dff4
.thumb
branch_224ddd8: @ 224ddd8 :thumb
	pop     {r3-r7,pc}
@ 0x224ddda


.align 2, 0


.thumb
Function_224dddc: @ 224dddc :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x24] @ 0x224de04, (=0x16d0)
	mov     r2, #0x0
	add     r1, r0, r1
	mov     r3, r1
.thumb
branch_224dde6: @ 224dde6 :thumb
	ldrb    r0, [r3, #0x0]
	cmp     r0, #0x0
	bne     branch_224ddf4
	mov     r0, #0x24
	mul     r0, r2
	add     r0, r1, r0
	pop     {r3,pc}
@ 0x224ddf4

.thumb
branch_224ddf4: @ 224ddf4 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r3, #0x24
	cmp     r2, #0x20
	blt     branch_224dde6
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x224de04

.word 0x16d0 @ 0x224de04
.thumb
Function_224de08: @ 224de08 :thumb
	push    {r4,r5}
	ldr     r4, [pc, #0x30] @ 0x224de3c, (=0x16d0)
	mov     r3, #0x0
	add     r0, r0, r4
	mov     r5, r0
.thumb
branch_224de12: @ 224de12 :thumb
	ldrb    r4, [r5, #0x0]
	cmp     r4, #0x1
	bne     branch_224de2e
	ldrh    r4, [r5, #0x4]
	cmp     r1, r4
	bne     branch_224de2e
	ldrh    r4, [r5, #0x2]
	cmp     r2, r4
	bne     branch_224de2e
	mov     r1, #0x24
	mul     r1, r3
	add     r0, r0, r1
	pop     {r4,r5}
	bx      lr
@ 0x224de2e

.thumb
branch_224de2e: @ 224de2e :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	add     r5, #0x24
	cmp     r3, #0x20
	blt     branch_224de12
	mov     r0, #0x0
	pop     {r4,r5}
	bx      lr
@ 0x224de3c

.word 0x16d0 @ 0x224de3c
.thumb
Function_224de40: @ 224de40 :thumb
	ldr     r3, [pc, #0x18] @ 0x224de5c, (=0x2252c38)
	mov     r2, #0x0
.thumb
branch_224de44: @ 224de44 :thumb
	ldr     r1, [r3, #0x0]
	cmp     r1, r0
	bne     branch_224de4e
	mov     r0, r3
	bx      lr
@ 0x224de4e

.thumb
branch_224de4e: @ 224de4e :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r3, #0x8
	cmp     r2, #0x8
	blt     branch_224de44
	mov     r0, #0x0
	bx      lr
@ 0x224de5a


.align 2


.word 0x2252c38 @ 0x224de5c
.thumb
Function_224de60: @ 224de60 :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_224de40
	ldr     r1, [r0, #0x4]
	lsl     r0, r4, #2
	ldr     r0, [r1, r0]
	pop     {r4,pc}
@ 0x224de70

.thumb
Function_224de70: @ 224de70 :thumb
	push    {r3,lr}
	ldr     r3, [pc, #0x1c] @ 0x224de90, (=0x2253830)
	mov     r2, #0x0
.thumb
branch_224de76: @ 224de76 :thumb
	ldrh    r1, [r3, #0x0]
	cmp     r1, r0
	bne     branch_224de80
	mov     r0, r3
	pop     {r3,pc}
@ 0x224de80

.thumb
branch_224de80: @ 224de80 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r3, #0x20
	cmp     r2, #0x16
	bcc     branch_224de76
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x224de90

.word 0x2253830 @ 0x224de90
.thumb
Function_224de94: @ 224de94 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3
	bl      Function_22510d0
	mov     r1, #0x2
	lsl     r1, r1, #12
	str     r1, [sp, #0x0]
	mov     r3, #0x0
	str     r3, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	ldr     r0, [r0, #0x38]
	mov     r2, r7
	bl      InitSpriteStruct
	mov     r4, r0
	mov     r1, r6
	bl      SaveSpritePositionZ
	mov     r0, r4
	mov     r1, #0xfd
	bl      SetSpriteID
	ldr     r1, [sp, #0x20]
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_20629b4
	ldr     r1, [sp, #0x28]
	mov     r0, r4
	mov     r2, #0x1
	bl      Function_20629b4
	ldr     r1, [sp, #0x24]
	mov     r0, r4
	mov     r2, #0x2
	bl      Function_20629b4
	mov     r0, r4
	mov     r1, #0x1
	bl      UnSetSpriteFlag_Follow
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2062d80
	mov     r0, r4
	mov     r1, #0x1
	bl      SetUnsetSpriteFlags800000
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2062fc4
	mov     r0, r4
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x224df10

.thumb
Function_224df10: @ 224df10 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r2
	str     r0, [sp, #0x0]
	mov     r5, r1
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_20629d8
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_20629d8
	mov     r6, r0
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_20629d8
	mov     r7, r0
	ldr     r1, [sp, #0x4]
	mov     r0, r6
	bl      Function_224de60
	mov     r2, r0
	mov     r0, #0x1
	strb    r0, [r5, #0x0]
	strh    r6, [r5, #0x2]
	add     r3, r5, #0x4
	ldmia   r2!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r2!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r2!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r4
	bl      LoadSpritePositionX
	strh    r0, [r5, #0x6]
	mov     r0, r4
	bl      LoadSpritePositionZ
	strh    r0, [r5, #0x8]
	mov     r0, r4
	bl      LoadSpritePositionY
	strh    r0, [r5, #0xa]
	strh    r7, [r5, #0xc]
	ldr     r0, [sp, #0x0]
	str     r4, [r5, #0x1c]
	mov     r1, r5
	bl      Function_224dfa0
	str     r0, [r5, #0x20]
	mov     r0, r4
	mov     r1, #0x1
	bl      UnSetSpriteFlag_Follow
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2062d80
	mov     r0, r4
	mov     r1, #0x1
	bl      SetUnsetSpriteFlags800000
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2062fc4
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x224dfa0

.thumb
Function_224dfa0: @ 224dfa0 :thumb
	push    {r3,lr}
	add     sp, #-0x18
	mov     r2, #0x6
	ldsh    r2, [r1, r2]
	add     r3, sp, #0x8
	strh    r2, [r3, #0x0]
	mov     r2, #0x8
	ldsh    r2, [r1, r2]
	strh    r2, [r3, #0x2]
	mov     r2, #0xa
	ldsh    r2, [r1, r2]
	strh    r2, [r3, #0x4]
	ldr     r2, [r1, #0x14]
	strh    r2, [r3, #0x6]
	mov     r2, #0x0
	str     r2, [sp, #0x10]
	str     r0, [sp, #0x14]
	mov     r2, #0x91
	ldrh    r3, [r1, #0x2]
	lsl     r2, r2, #2
	cmp     r3, r2
	bne     branch_224dfd6
	ldrh    r1, [r1, #0x4]
	cmp     r1, #0x1
	bne     branch_224dfd6
	mov     r1, #0x1
	str     r1, [sp, #0x10]
.thumb
branch_224dfd6: @ 224dfd6 :thumb
	add     r1, sp, #0x8
	str     r1, [sp, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x4]
	ldr     r0, [r0, #0x0]
	ldr     r1, [pc, #0xc] @ 0x224dff0, (=0x2251468)
	ldr     r0, [r0, #0x40]
	mov     r3, r2
	bl      Function_5_21df72c
	add     sp, #0x18
	pop     {r3,pc}
@ 0x224dfee

.align 2
.word 0x2251468 @ 0x224dff0



.thumb
Function_224dff4: @ 224dff4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r7, r0
	mov     r5, r1
	mov     r0, #0x1
	mov     r4, r2
	mov     r6, r3
	strb    r0, [r5, #0x0]
	strh    r6, [r5, #0x2]
	mov     r3, r4
	add     r2, r5, #0x4
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldrh    r0, [r4, #0x0]
	mov     r1, #0x2
	mov     r2, #0x4
	str     r0, [sp, #0x0]
	ldrh    r0, [r4, #0x8]
	mov     r3, #0x6
	str     r0, [sp, #0x4]
	str     r6, [sp, #0x8]
	ldsh    r1, [r4, r1]
	ldsh    r2, [r4, r2]
	ldsh    r3, [r4, r3]
	mov     r0, r7
	bl      Function_224de94
	str     r0, [r5, #0x1c]
	mov     r0, r7
	mov     r1, r5
	bl      Function_224dfa0
	str     r0, [r5, #0x20]
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x224e042


.align 2, 0


.thumb
Function_224e044: @ 224e044 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r0, [r4, #0x20]
	cmp     r0, #0x0
	beq     branch_224e052
	bl      Function_207136c
.thumb
branch_224e052: @ 224e052 :thumb
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x24
	blx     Call_FillMemWithValue
	pop     {r4,pc}
@ 0x224e05e


.align 2, 0


.thumb
Function_224e060: @ 224e060 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x1c]
	cmp     r0, #0x0
	beq     branch_224e070
	bl      Function_2061af4
.thumb
branch_224e070: @ 224e070 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_224e044
	pop     {r3-r5,pc}
@ 0x224e07a


.align 2, 0


.thumb
Function_224e07c: @ 224e07c :thumb
	push    {r4-r6,lr}
	mov     r6, r2
	mov     r5, r1
	strh    r6, [r5, #0x2]
	ldr     r1, [r5, #0x10]
	mov     r0, r6
	bl      Function_224de60
	mov     r3, r0
	add     r2, r5, #0x4
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	mov     r1, #0x6
	ldr     r4, [r5, #0x1c]
	ldsh    r1, [r5, r1]
	mov     r0, r4
	bl      SaveSpritePositionX
	mov     r1, #0x8
	ldsh    r1, [r5, r1]
	mov     r0, r4
	bl      SaveSpritePositionZ
	mov     r1, #0xa
	ldsh    r1, [r5, r1]
	mov     r0, r4
	bl      SaveSpritePositionY
	ldrh    r1, [r5, #0x4]
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_20629b4
	mov     r0, r4
	mov     r1, r6
	mov     r2, #0x1
	bl      Function_20629b4
	ldrh    r1, [r5, #0xc]
	mov     r0, r4
	mov     r2, #0x2
	bl      Function_20629b4
	pop     {r4-r6,pc}
@ 0x224e0dc

.thumb
Function_224e0dc: @ 224e0dc :thumb
	strb    r1, [r0, #0x1]
	bx      lr
@ 0x224e0e0

.thumb
Function_224e0e0: @ 224e0e0 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r1, [pc, #0x30] @ 0x224e118, (=0x16d0)
	add     r4, r0, r1
	cmp     r5, #0x19
	bne     branch_224e0f0
	bl      ErrorHandling
.thumb
branch_224e0f0: @ 224e0f0 :thumb
	ldr     r2, [pc, #0x28] @ 0x224e11c, (=0x22531d0)
	mov     r0, #0x0
.thumb
branch_224e0f4: @ 224e0f4 :thumb
	ldrb    r1, [r4, #0x0]
	cmp     r1, #0x0
	beq     branch_224e10a
	ldr     r1, [r4, #0x14]
	lsl     r1, r1, #16
	lsr     r1, r1, #13
	ldrh    r1, [r2, r1]
	cmp     r5, r1
	bne     branch_224e10a
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x224e10a

.thumb
branch_224e10a: @ 224e10a :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r4, #0x24
	cmp     r0, #0x20
	blt     branch_224e0f4
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224e116


.align 2


.word 0x16d0 @ 0x224e118
.word 0x22531d0 @ 0x224e11c
.thumb
Function_224e120: @ 224e120 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r1, [pc, #0x30] @ 0x224e158, (=0x16d0)
	add     r4, r0, r1
	cmp     r5, #0x5
	bne     branch_224e130
	bl      ErrorHandling
.thumb
branch_224e130: @ 224e130 :thumb
	ldr     r2, [pc, #0x28] @ 0x224e15c, (=0x22531d0)
	mov     r0, #0x0
.thumb
branch_224e134: @ 224e134 :thumb
	ldrb    r1, [r4, #0x0]
	cmp     r1, #0x0
	beq     branch_224e14c
	ldr     r1, [r4, #0x14]
	lsl     r1, r1, #16
	lsr     r1, r1, #13
	add     r1, r2, r1
	ldrh    r1, [r1, #0x2]
	cmp     r5, r1
	bne     branch_224e14c
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x224e14c

.thumb
branch_224e14c: @ 224e14c :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r4, #0x24
	cmp     r0, #0x20
	blt     branch_224e134
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224e158

.word 0x16d0 @ 0x224e158
.word 0x22531d0 @ 0x224e15c
.thumb
Function_224e160: @ 224e160 :thumb
	ldr     r2, [pc, #0x20] @ 0x224e184, (=0x16d0)
	mov     r3, #0x0
	add     r2, r0, r2
.thumb
branch_224e166: @ 224e166 :thumb
	ldrb    r0, [r2, #0x0]
	cmp     r0, #0x0
	beq     branch_224e176
	ldr     r0, [r2, #0x14]
	cmp     r1, r0
	bne     branch_224e176
	mov     r0, #0x1
	bx      lr
@ 0x224e176

.thumb
branch_224e176: @ 224e176 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	add     r2, #0x24
	cmp     r3, #0x20
	blt     branch_224e166
	mov     r0, #0x0
	bx      lr
@ 0x224e182


.align 2


.word 0x16d0 @ 0x224e184
.thumb
Function_224e188: @ 224e188 :thumb
	push    {r4-r7}
	mov     r4, r1
	mov     r1, r3
	ldr     r3, [pc, #0x38] @ 0x224e1c8, (=0x16d0)
	ldr     r6, [sp, #0x10]
	mov     r5, #0x20
	add     r0, r0, r3
.thumb
branch_224e196: @ 224e196 :thumb
	ldrb    r3, [r0, #0x0]
	cmp     r3, #0x0
	beq     branch_224e1bc
	ldrh    r3, [r0, #0x2]
	cmp     r3, r6
	bne     branch_224e1bc
	add     r3, r0, #0x4
	mov     r7, #0x4
	ldsh    r7, [r3, r7]
	cmp     r7, r2
	bne     branch_224e1bc
	mov     r7, #0x6
	ldsh    r7, [r3, r7]
	cmp     r7, r1
	bne     branch_224e1bc
	mov     r7, #0x2
	ldsh    r3, [r3, r7]
	cmp     r3, r4
	beq     branch_224e1c4
.thumb
branch_224e1bc: @ 224e1bc :thumb
	add     r0, #0x24
	.hword  0x1e6d @ sub r5, r5, #0x1
	bne     branch_224e196
	mov     r0, #0x0
.thumb
branch_224e1c4: @ 224e1c4 :thumb
	pop     {r4-r7}
	bx      lr
@ 0x224e1c8

.word 0x16d0 @ 0x224e1c8
.thumb
Function_224e1cc: @ 224e1cc :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	bl      Function_20715bc
	mov     r4, r0
	mov     r2, r5
	mov     r3, r4
	add     r2, #0x10
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldrh    r1, [r4, #0x6]
	ldr     r0, [r4, #0xc]
	add     r2, sp, #0x0
	bl      Function_224d8a4
	str     r0, [r5, #0x20]
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x0
	bne     branch_224e204
	ldr     r3, [r5, #0x20]
	ldrh    r1, [r4, #0x6]
	add     r2, r3, #0x4
	ldr     r0, [r4, #0xc]
	add     r3, #0x58
	bl      Function_224da48
.thumb
branch_224e204: @ 224e204 :thumb
	mov     r0, #0x0
	mov     r1, #0x4
	ldsh    r0, [r4, r0]
	ldsh    r1, [r4, r1]
	add     r2, r5, #0x4
	bl      Function_2064450
	mov     r0, #0x2
	ldsh    r1, [r4, r0]
	lsl     r0, r0, #14
	lsl     r1, r1, #16
	add     r0, r1, r0
	str     r0, [r5, #0x8]
	ldrh    r2, [r4, #0x6]
	ldr     r0, [pc, #0x4c] @ 0x224e270, (=0x2253298)
	mov     r1, #0xc
	mov     r3, r2
	mul     r3, r1
	add     r1, r0, r3
	ldr     r2, [r5, #0x4]
	ldr     r0, [r0, r3]
	add     r0, r2, r0
	str     r0, [r5, #0x4]
	ldr     r2, [r5, #0x8]
	ldr     r0, [r1, #0x4]
	add     r0, r2, r0
	str     r0, [r5, #0x8]
	ldr     r2, [r5, #0xc]
	ldr     r0, [r1, #0x8]
	add     r0, r2, r0
	str     r0, [r5, #0xc]
	mov     r0, #0x1f
	strb    r0, [r5, #0x2]
	mov     r0, #0x0
	strb    r0, [r5, #0x0]
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x1
	bne     branch_224e26c
	ldr     r0, [r4, #0xc]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	bl      Function_206afd0
	cmp     r0, #0x0
	bne     branch_224e26c
	mov     r0, #0x0
	strb    r0, [r5, #0x2]
	mov     r0, #0x1
	strb    r0, [r5, #0x0]
	strb    r0, [r5, #0x1]
.thumb
branch_224e26c: @ 224e26c :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x224e270

.word 0x2253298 @ 0x224e270
.thumb
Function_224e274: @ 224e274 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldrh    r0, [r4, #0x16]
	bl      Function_224daec
	cmp     r0, #0x1
	bne     branch_224e28a
	ldr     r0, [r4, #0x20]
	add     r0, #0x58
	bl      Function_2073aa8
.thumb
branch_224e28a: @ 224e28a :thumb
	ldr     r0, [r4, #0x1c]
	ldr     r1, [r4, #0x20]
	bl      Function_224d938
	pop     {r4,pc}
@ 0x224e294

.thumb
Function_224e294: @ 224e294 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x1
	bne     branch_224e2de
	ldr     r0, [r4, #0x1c]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	bl      Function_206afd0
	cmp     r0, #0x1
	bne     branch_224e2de
	mov     r0, #0x0
	strb    r0, [r4, #0x1]
	ldrb    r0, [r4, #0x2]
	cmp     r0, #0x1f
	bcs     branch_224e2d0
	cmp     r0, #0x0
	bne     branch_224e2c4
	ldr     r0, [pc, #0x20] @ 0x224e2e0, (=0x5cc)
	bl      Function_22511e0
.thumb
branch_224e2c4: @ 224e2c4 :thumb
	ldrb    r0, [r4, #0x3]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x3]
	ldrb    r0, [r4, #0x3]
	asr     r0, r0, #1
	strb    r0, [r4, #0x2]
.thumb
branch_224e2d0: @ 224e2d0 :thumb
	ldrb    r0, [r4, #0x2]
	cmp     r0, #0x1f
	bcc     branch_224e2de
	mov     r0, #0x1f
	strb    r0, [r4, #0x2]
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
.thumb
branch_224e2de: @ 224e2de :thumb
	pop     {r4,pc}
@ 0x224e2e0

.word 0x5cc @ 0x224e2e0
.thumb
Function_224e2e4: @ 224e2e4 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldrb    r0, [r5, #0x1]
	cmp     r0, #0x0
	bne     branch_224e32e
	ldrb    r0, [r5, #0x0]
	cmp     r0, #0x1
	bne     branch_224e324
	mov     r4, r5
	add     r4, #0x10
	ldrh    r1, [r4, #0x6]
	ldrb    r2, [r5, #0x2]
	ldr     r0, [r4, #0xc]
	mov     r3, #0x1
	bl      Function_224da64
	ldr     r0, [r5, #0x20]
	add     r1, r5, #0x4
	.hword  0x1d00 @ add r0, r0, #0x4
	bl      Function_2073bb4
	ldrh    r1, [r4, #0x6]
	ldr     r0, [r4, #0xc]
	mov     r2, #0x0
	bl      Function_224dab8
	ldrh    r1, [r4, #0x6]
	ldr     r0, [r4, #0xc]
	mov     r2, #0x1f
	bl      Function_224daac
	pop     {r3-r5,pc}
@ 0x224e324

.thumb
branch_224e324: @ 224e324 :thumb
	ldr     r0, [r5, #0x20]
	add     r1, r5, #0x4
	.hword  0x1d00 @ add r0, r0, #0x4
	bl      Function_2073bb4
.thumb
branch_224e32e: @ 224e32e :thumb
	pop     {r3-r5,pc}
@ 0x224e330

.thumb
Function_224e330: @ 224e330 :thumb
	push    {r3,lr}
	bl      Function_2071598
	.hword  0x1d00 @ add r0, r0, #0x4
	pop     {r3,pc}
@ 0x224e33a


.align 2, 0
.thumb
Function_224e33c: @ 224e33c :thumb
	ldr     r3, [pc, #0x8] @ 0x224e348, (=Call_FillMemWithValue)
	add     r0, #0xd8
	mov     r1, #0x0
	mov     r2, #0xac
	bx      r3
@ 0x224e346

.align 2
.word Call_FillMemWithValue @ 0x224e348



.thumb
Function_224e34c: @ 224e34c :thumb
	bx      lr
@ 0x224e34e


.align 2, 0


.thumb
Function_224e350: @ 224e350 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	add     r0, #0xd8
	ldr     r0, [r0, #0x0]
	mov     r5, r1
	add     r4, #0xd8
	cmp     r0, #0x0
	beq     branch_224e364
	bl      ErrorHandling
.thumb
branch_224e364: @ 224e364 :thumb
	cmp     r5, #0x0
	bne     branch_224e36c
	bl      ErrorHandling
.thumb
branch_224e36c: @ 224e36c :thumb
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	strh    r0, [r4, #0x4]
	strh    r0, [r4, #0x6]
	str     r5, [r4, #0x8]
	pop     {r3-r5,pc}
@ 0x224e37a


.align 2, 0


.thumb
Function_224e37c: @ 224e37c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0xa0
	bcc     branch_224e38a
	bl      ErrorHandling
.thumb
branch_224e38a: @ 224e38a :thumb
	add     r5, #0xe4
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, r4
	blx     Call_FillMemWithValue
	mov     r0, r5
	pop     {r3-r5,pc}
@ 0x224e39a


.align 2, 0


.thumb
Function_224e39c: @ 224e39c :thumb
	add     r0, #0xe4
	bx      lr
@ 0x224e3a0

.thumb
Function_224e3a0: @ 224e3a0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r0
	add     r4, #0xd8
	ldr     r5, [r4, #0x8]
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	cmp     r5, #0x0
	bne     branch_224e3b6
	bl      ErrorHandling
.thumb
branch_224e3b6: @ 224e3b6 :thumb
	ldrh    r0, [r4, #0x4]
	lsl     r1, r0, #3
	ldr     r0, [r5, r1]
	cmp     r0, #0x12
	beq     branch_224e400
.thumb
branch_224e3c0: @ 224e3c0 :thumb
	ldr     r0, [r5, r1]
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x44] @ 0x224e40c, (=0x2253be4)
	ldr     r7, [r0, r1]
.thumb
branch_224e3c8: @ 224e3c8 :thumb
	ldrh    r3, [r4, #0x4]
	ldrh    r6, [r4, #0x6]
	ldr     r0, [sp, #0x0]
	lsl     r3, r3, #3
	add     r3, r5, r3
	lsl     r6, r6, #2
	ldr     r1, [sp, #0x4]
	ldr     r3, [r3, #0x4]
	ldr     r6, [r7, r6]
	add     r2, r4, #0x6
	blx     r6
	cmp     r0, #0x1
	beq     branch_224e3c8
	cmp     r0, #0x0
	bne     branch_224e3ec
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224e3ec

.thumb
branch_224e3ec: @ 224e3ec :thumb
	mov     r0, #0x0
	strh    r0, [r4, #0x6]
	ldrh    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x4]
	ldrh    r0, [r4, #0x4]
	lsl     r1, r0, #3
	ldr     r0, [r5, r1]
	cmp     r0, #0x12
	bne     branch_224e3c0
.thumb
branch_224e400: @ 224e400 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	strh    r0, [r4, #0x4]
	mov     r0, #0x1
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x224e40c

.word 0x2253be4 @ 0x224e40c
.thumb
Function_224e410: @ 224e410 :thumb
	ldr     r3, [pc, #0x18] @ 0x224e42c, (=0x23d)
	ldr     r2, [pc, #0x1c] @ 0x224e430, (=0x2252d38)
	mov     r1, r3
	add     r1, #0x14
.thumb
branch_224e418: @ 224e418 :thumb
	cmp     r3, r0
	bne     branch_224e420
	ldr     r0, [r2, #0x4]
	bx      lr
@ 0x224e420

.thumb
branch_224e420: @ 224e420 :thumb
	add     r2, #0x8
	ldr     r3, [r2, #0x0]
	cmp     r3, r1
	bne     branch_224e418
	mov     r0, #0x0
	bx      lr
@ 0x224e42c

.word 0x23d @ 0x224e42c
.word 0x2252d38 @ 0x224e430
.thumb
Function_224e434: @ 224e434 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r6, r1
	ldr     r0, [r0, #0xc]
	mov     r7, r2
	str     r3, [sp, #0x0]
	bl      LoadFlagAdress
	mov     r0, r5
	bl      Function_22510d0
	bl      Function_224e410
	mov     r4, r0
	beq     branch_224e494
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x0
	beq     branch_224e494
.thumb
branch_224e45a: @ 224e45a :thumb
	mov     r0, #0x2
	ldsh    r0, [r4, r0]
	cmp     r7, r0
	bne     branch_224e48c
	ldr     r1, [r4, #0x4]
	ldr     r0, [sp, #0x0]
	cmp     r0, r1
	bne     branch_224e48c
	mov     r0, #0x0
	ldsh    r0, [r4, r0]
	cmp     r6, r0
	bne     branch_224e48c
	ldrh    r1, [r4, #0x8]
	ldrh    r2, [r4, #0xa]
	mov     r0, r5
	bl      Function_2251104
	cmp     r0, #0x1
	bne     branch_224e48c
	mov     r0, r5
	mov     r1, r4
	bl      Function_224e4b0
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x224e48c

.thumb
branch_224e48c: @ 224e48c :thumb
	add     r4, #0x10
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x0
	bne     branch_224e45a
.thumb
branch_224e494: @ 224e494 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224e498

.thumb
Function_224e498: @ 224e498 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_224e350
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0x8] @ 0x224e4ac, (=0x224e4bd)
	mov     r2, r4
	bl      OverWorldData_InitUnknownStruct01
	pop     {r4,pc}
@ 0x224e4ac

.word 0x224e4bd @ 0x224e4ac
.thumb
Function_224e4b0: @ 224e4b0 :thumb
	ldr     r3, [pc, #0x4] @ 0x224e4b8, (=0x224e499)
	ldr     r1, [r1, #0xc]
	bx      r3
@ 0x224e4b6


.align 2


.word Function_224e498+1 @ =0x224e499, 0x224e4b8
.thumb
Function_224e4bc: @ 224e4bc :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      GetUnknownStruct01_c
	mov     r1, r4
	bl      Function_224e3a0
	cmp     r0, #0x1
	bne     branch_224e4d2
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x224e4d2

.thumb
branch_224e4d2: @ 224e4d2 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x224e4d6


.align 2, 0


.thumb
Function_224e4d8: @ 224e4d8 :thumb
	push    {r4,lr}
	mov     r1, #0x4
	mov     r4, r2
	bl      Function_224e37c
	mov     r0, #0x1
	strh    r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x224e4e8

.thumb
Function_224e4e8: @ 224e4e8 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	mov     r6, r2
	mov     r5, r3
	bl      Function_224e39c
	ldr     r0, [r4, #0x0]
	ldr     r1, [r5, #0x0]
	ldr     r0, [r0, #0x38]
	bl      GetAdressOfSpriteID
	mov     r4, r0
	bne     branch_224e506
	bl      ErrorHandling
.thumb
branch_224e506: @ 224e506 :thumb
	mov     r0, r4
	bl      IsSpriteMovable
	cmp     r0, #0x1
	bne     branch_224e51c
	ldr     r1, [r5, #0x4]
	mov     r0, r4
	bl      Function_2065638
	mov     r0, #0x2
	strh    r0, [r6, #0x0]
.thumb
branch_224e51c: @ 224e51c :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x224e520

.thumb
Function_224e520: @ 224e520 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r3
	bl      Function_224e39c
	ldr     r0, [r5, #0x0]
	ldr     r1, [r4, #0x0]
	ldr     r0, [r0, #0x38]
	bl      GetAdressOfSpriteID
	mov     r4, r0
	bne     branch_224e53c
	bl      ErrorHandling
.thumb
branch_224e53c: @ 224e53c :thumb
	mov     r0, r4
	bl      Function_20656ac
	cmp     r0, #0x1
	bne     branch_224e54a
	mov     r0, #0x2
	pop     {r3-r5,pc}
@ 0x224e54a

.thumb
branch_224e54a: @ 224e54a :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224e54e


.align 2, 0


.thumb
Function_224e550: @ 224e550 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r6, r0
	mov     r1, #0x38
	mov     r7, r2
	mov     r5, r3
	bl      Function_224e37c
	mov     r4, r0
	mov     r0, r6
	bl      Function_22510d0
	mov     r2, r0
	ldrh    r1, [r5, #0x0]
	mov     r0, r6
	bl      Function_224de08
	str     r0, [r4, #0x24]
	cmp     r0, #0x0
	bne     branch_224e57c
	bl      ErrorHandling
.thumb
branch_224e57c: @ 224e57c :thumb
	mov     r0, #0x6
	ldsh    r0, [r5, r0]
	mov     r3, r5
	mov     r2, r4
	lsl     r0, r0, #16
	str     r0, [r4, #0xc]
	mov     r0, #0x8
	ldsh    r0, [r5, r0]
	add     r3, #0xc
	add     r2, #0x18
	lsl     r0, r0, #16
	str     r0, [r4, #0x10]
	mov     r0, #0xa
	ldsh    r0, [r5, r0]
	lsl     r0, r0, #16
	str     r0, [r4, #0x14]
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	mov     r0, #0x6
	lsl     r0, r0, #11
	str     r0, [r4, #0x30]
	ldr     r0, [r4, #0x24]
	ldr     r0, [r0, #0x20]
	bl      Function_224e330
	ldr     r0, [r0, #0x4]
	str     r0, [r4, #0x2c]
	ldrh    r0, [r5, #0x2]
	cmp     r0, #0x1
	bne     branch_224e5d8
	ldr     r0, [r6, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      Function_205eb3c
	mov     r5, r0
	mov     r1, #0x1
	bl      SetUnsetSpriteFlags800000
	mov     r0, r5
	add     r1, sp, #0x0
	bl      Function_206309c
	ldr     r0, [sp, #0x4]
	str     r0, [r4, #0x28]
.thumb
branch_224e5d8: @ 224e5d8 :thumb
	ldr     r0, [pc, #0xc] @ 0x224e5e8, (=0x5ca)
	bl      Function_2005748
	mov     r0, #0x1
	strh    r0, [r7, #0x0]
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x224e5e8

.word 0x5ca @ 0x224e5e8
.thumb
Function_224e5ec: @ 224e5ec :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r7, r0
	str     r2, [sp, #0x0]
	str     r3, [sp, #0x4]
	mov     r4, #0x0
	bl      Function_224e39c
	mov     r5, r0
	ldr     r0, [r5, #0x24]
	ldr     r0, [r0, #0x20]
	bl      Function_224e330
	mov     r6, r0
	ldr     r0, [sp, #0x4]
	ldrh    r0, [r0, #0x2]
	cmp     r0, #0x1
	bne     branch_224e61a
	ldr     r0, [r7, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      Function_205eb3c
	mov     r4, r0
.thumb
branch_224e61a: @ 224e61a :thumb
	ldr     r1, [r5, #0x2c]
	ldr     r0, [r5, #0x30]
	add     r0, r1, r0
	str     r0, [r6, #0x4]
	cmp     r4, #0x0
	beq     branch_224e64e
	mov     r0, r4
	add     r1, sp, #0x14
	bl      Function_206309c
	ldr     r1, [r5, #0x28]
	ldr     r0, [r5, #0x30]
	add     r0, r1, r0
	str     r0, [sp, #0x18]
	mov     r0, r4
	add     r1, sp, #0x14
	bl      Function_20630ac
	mov     r0, r4
	add     r1, sp, #0x14
	bl      CopySprite70Struct
	mov     r0, r4
	add     r1, sp, #0x14
	bl      Function_22511f4
.thumb
branch_224e64e: @ 224e64e :thumb
	ldr     r0, [r5, #0x30]
	neg     r1, r0
	str     r1, [r5, #0x30]
	bmi     branch_224e6aa
	mov     r0, #0x1
	lsl     r0, r0, #12
	cmp     r1, r0
	ble     branch_224e664
	sub     r0, r1, r0
	str     r0, [r5, #0x30]
	b       branch_224e672
@ 0x224e664

.thumb
branch_224e664: @ 224e664 :thumb
	ldr     r0, [r5, #0x34]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x34]
	cmp     r0, #0x4
	bcc     branch_224e672
	mov     r0, #0x0
	str     r0, [r5, #0x30]
.thumb
branch_224e672: @ 224e672 :thumb
	ldr     r0, [r5, #0x30]
	cmp     r0, #0x0
	bne     branch_224e6aa
	ldr     r0, [r5, #0x2c]
	cmp     r4, #0x0
	str     r0, [r6, #0x4]
	beq     branch_224e6a4
	mov     r0, r4
	add     r1, sp, #0x8
	bl      Function_206309c
	ldr     r0, [r5, #0x28]
	add     r1, sp, #0x8
	str     r0, [sp, #0xc]
	mov     r0, r4
	bl      Function_20630ac
	mov     r0, r4
	add     r1, sp, #0x8
	bl      CopySprite70Struct
	mov     r0, r4
	add     r1, sp, #0x8
	bl      Function_22511f4
.thumb
branch_224e6a4: @ 224e6a4 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, #0x2
	strh    r1, [r0, #0x0]
.thumb
branch_224e6aa: @ 224e6aa :thumb
	mov     r0, #0x0
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x224e6b0

.thumb
Function_224e6b0: @ 224e6b0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r7, r2
	add     r2, sp, #0xc
	mov     r1, #0x0
	str     r1, [r2, #0x0]
	str     r1, [r2, #0x4]
	mov     r6, r0
	mov     r5, r3
	str     r1, [r2, #0x8]
	bl      Function_224e39c
	mov     r4, r0
	ldr     r0, [r4, #0x24]
	ldr     r0, [r0, #0x20]
	bl      Function_224e330
	ldr     r1, [r4, #0x0]
	ldr     r2, [r4, #0xc]
	cmp     r1, r2
	beq     branch_224e6f6
	ldr     r2, [r4, #0x18]
	add     r1, r1, r2
	str     r1, [r4, #0x0]
	ldr     r2, [r0, #0x0]
	ldr     r1, [r4, #0x18]
	add     r1, r2, r1
	str     r1, [r0, #0x0]
	ldrh    r1, [r5, #0x2]
	cmp     r1, #0x1
	bne     branch_224e6f6
	ldr     r2, [sp, #0xc]
	ldr     r1, [r4, #0x18]
	add     r1, r2, r1
	str     r1, [sp, #0xc]
.thumb
branch_224e6f6: @ 224e6f6 :thumb
	ldr     r1, [r4, #0x4]
	ldr     r2, [r4, #0x10]
	cmp     r1, r2
	beq     branch_224e71a
	ldr     r2, [r4, #0x1c]
	add     r1, r1, r2
	str     r1, [r4, #0x4]
	ldr     r2, [r0, #0x4]
	ldr     r1, [r4, #0x1c]
	add     r1, r2, r1
	str     r1, [r0, #0x4]
	ldrh    r1, [r5, #0x2]
	cmp     r1, #0x1
	bne     branch_224e71a
	ldr     r2, [sp, #0x10]
	ldr     r1, [r4, #0x1c]
	add     r1, r2, r1
	str     r1, [sp, #0x10]
.thumb
branch_224e71a: @ 224e71a :thumb
	ldr     r1, [r4, #0x8]
	ldr     r2, [r4, #0x14]
	cmp     r1, r2
	beq     branch_224e73e
	ldr     r2, [r4, #0x20]
	add     r1, r1, r2
	str     r1, [r4, #0x8]
	ldr     r2, [r0, #0x8]
	ldr     r1, [r4, #0x20]
	add     r1, r2, r1
	str     r1, [r0, #0x8]
	ldrh    r0, [r5, #0x2]
	cmp     r0, #0x1
	bne     branch_224e73e
	ldr     r1, [sp, #0x14]
	ldr     r0, [r4, #0x20]
	add     r0, r1, r0
	str     r0, [sp, #0x14]
.thumb
branch_224e73e: @ 224e73e :thumb
	ldrh    r0, [r5, #0x2]
	cmp     r0, #0x1
	bne     branch_224e774
	ldr     r0, [r6, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      Function_205eb3c
	add     r1, sp, #0x0
	mov     r5, r0
	bl      CopySprite70Struct
	ldr     r1, [sp, #0x0]
	ldr     r0, [sp, #0xc]
	add     r0, r1, r0
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	ldr     r0, [sp, #0x10]
	add     r0, r1, r0
	str     r0, [sp, #0x4]
	ldr     r1, [sp, #0x8]
	ldr     r0, [sp, #0x14]
	add     r0, r1, r0
	str     r0, [sp, #0x8]
	mov     r0, r5
	add     r1, sp, #0x0
	bl      Function_22511f4
.thumb
branch_224e774: @ 224e774 :thumb
	ldr     r1, [r4, #0x0]
	ldr     r0, [r4, #0xc]
	cmp     r1, r0
	bne     branch_224e790
	ldr     r1, [r4, #0x4]
	ldr     r0, [r4, #0x10]
	cmp     r1, r0
	bne     branch_224e790
	ldr     r1, [r4, #0x8]
	ldr     r0, [r4, #0x14]
	cmp     r1, r0
	bne     branch_224e790
	mov     r0, #0x3
	strh    r0, [r7, #0x0]
.thumb
branch_224e790: @ 224e790 :thumb
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x224e796


.align 2, 0


.thumb
Function_224e798: @ 224e798 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r6, r3
	str     r0, [sp, #0x4]
	ldrh    r0, [r6, #0x2]
	cmp     r0, #0x1
	bne     branch_224e84e
	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      Function_205eb3c
	mov     r4, r0
	bl      LoadSpritePositionX
	str     r0, [sp, #0xc]
	mov     r0, #0x6
	ldsh    r7, [r6, r0]
	mov     r0, r4
	bl      LoadSpritePositionZ
	mov     r1, #0x8
	ldsh    r1, [r6, r1]
	lsl     r1, r1, #1
	add     r5, r1, r0
	mov     r0, r4
	bl      LoadSpritePositionY
	ldr     r1, [sp, #0xc]
	str     r0, [sp, #0x10]
	mov     r0, #0xa
	ldsh    r6, [r6, r0]
	mov     r0, r4
	add     r1, r7, r1
	bl      SaveSpritePositionX
	mov     r0, r4
	mov     r1, r5
	bl      SaveSpritePositionZ
	ldr     r1, [sp, #0x10]
	mov     r0, r4
	add     r1, r6, r1
	bl      SaveSpritePositionY
	mov     r0, r4
	bl      CopySpritePositionsFromOldToNew
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0xc]
	ldr     r0, [r0, #0x0]
	ldr     r3, [sp, #0x10]
	ldr     r0, [r0, #0x3c]
	add     r1, r7, r1
	str     r0, [sp, #0x8]
	lsr     r0, r5, #31
	add     r0, r5, r0
	asr     r5, r0, #1
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	mov     r2, r5
	add     r3, r6, r3
	bl      Function_224c378
	ldr     r1, [sp, #0xc]
	ldr     r3, [sp, #0x10]
	ldr     r0, [sp, #0x4]
	add     r1, r7, r1
	mov     r2, r5
	add     r3, r6, r3
	bl      Function_224c4b8
	bl      Function_22510d8
	mov     r5, r0
	ldr     r0, [sp, #0x8]
	mov     r1, r5
	bl      Function_205f098
	cmp     r5, #0x1
	bne     branch_224e846
	mov     r0, r4
	mov     r1, #0x0
	bl      SetUnsetSpriteFlags800000
	b       branch_224e84e
@ 0x224e846

.thumb
branch_224e846: @ 224e846 :thumb
	mov     r0, r4
	mov     r1, #0x1
	bl      SetUnsetSpriteFlags800000
.thumb
branch_224e84e: @ 224e84e :thumb
	ldr     r0, [pc, #0xc] @ 0x224e85c, (=0x5ca)
	mov     r1, #0x0
	bl      Function_20057a4
	mov     r0, #0x2
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x224e85c

.word 0x5ca @ 0x224e85c
.thumb
Function_224e860: @ 224e860 :thumb
	push    {r3,lr}
	ldrh    r1, [r3, #0x0]
	ldrh    r2, [r3, #0x2]
	bl      Function_224f0d4
	mov     r0, #0x2
	pop     {r3,pc}
@ 0x224e86e


.align 2, 0
.thumb
Function_224e870: @ 224e870 :thumb
	push    {r3,lr}
	ldr     r1, [r3, #0x0]
	ldr     r0, [r0, #0x0]
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	bl      Function_9_224f16c
	mov     r0, #0x2
	pop     {r3,pc}
@ 0x224e882


.align 2, 0
.thumb
.globl Function_9_224e884
Function_9_224e884: @ 224e884 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0x1
	bcc     branch_224e892
	bl      ErrorHandling
branch_224e892: @ 224e892 :thumb

	ldr     r0, [r5, #0x4]
	mov     r1, #0x24
	ldr     r2, [pc, #0xc] @ 0x224e8a4, (=0x2252414)
	mul     r1, r4
	ldr     r0, [r0, #0x24]
	add     r1, r2, r1
	bl      Function_224e91c
	pop     {r3-r5,pc}
@ 0x224e8a4

.word 0x2252414 @ 0x224e8a4



.thumb
.globl Function_9_224e8a8
Function_9_224e8a8: @ 224e8a8 :thumb
	ldr     r0, [r0, #0x4]
	ldr     r3, [pc, #0x4] @ 0x224e8b0, (=0x224e989)
	ldr     r0, [r0, #0x24]
	bx      r3
@ 0x224e8b0

.word 0x224e989 @ 0x224e8b0



.thumb
Function_224e8b4: @ 224e8b4 :thumb
	push    {r3-r5,lr}
	ldr     r1, [pc, #0x30] @ 0x224e8e8, (=0x1e50)
	mov     r5, r0
	add     r4, r5, r1
	ldr     r1, [r4, #0x0]
	cmp     r1, #0x0
	bne     branch_224e8e4
	mov     r1, #0x14
	add     r2, sp, #0x0
	bl      Function_224d8a4
	str     r0, [r4, #0x4]
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x0
	bne     branch_224e8e0
	ldr     r3, [r4, #0x4]
	mov     r0, r5
	add     r2, r3, #0x4
	mov     r1, #0x14
	add     r3, #0x58
	bl      Function_224da48
.thumb
branch_224e8e0: @ 224e8e0 :thumb
	mov     r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_224e8e4: @ 224e8e4 :thumb
	pop     {r3-r5,pc}
@ 0x224e8e6


.align 2


.word 0x1e50 @ 0x224e8e8
.thumb
Function_224e8ec: @ 224e8ec :thumb
	push    {r3-r5,lr}
	ldr     r1, [pc, #0x28] @ 0x224e918, (=0x1e50)
	mov     r5, r0
	add     r4, r5, r1
	ldr     r1, [r4, #0x0]
	cmp     r1, #0x1
	bne     branch_224e914
	ldr     r1, [r4, #0x4]
	bl      Function_224d938
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_224d874
	mov     r0, r5
	mov     r1, #0x14
	bl      Function_224d7c0
	mov     r0, #0x0
	str     r0, [r4, #0x0]
.thumb
branch_224e914: @ 224e914 :thumb
	pop     {r3-r5,pc}
@ 0x224e916


.align 2


.word 0x1e50 @ 0x224e918
.thumb
Function_224e91c: @ 224e91c :thumb
	push    {r3-r6,lr}
	add     sp, #-0x34
	mov     r4, r1
	ldr     r1, [pc, #0x38] @ 0x224e95c, (=0x1e50)
	mov     r5, r0
	add     r6, r5, r1
	bl      Function_224e8b4
	str     r5, [sp, #0x8]
	add     r2, sp, #0x10
	mov     r3, #0x4
.thumb
branch_224e932: @ 224e932 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r2!, {r0,r1}
	.hword  0x1e5b @ sub r3, r3, #0x1
	bne     branch_224e932
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0x20] @ 0x224e960, (=0x22514b8)
	str     r0, [r2, #0x0]
	ldr     r0, [r6, #0x4]
	mov     r2, #0x0
	str     r0, [sp, #0xc]
	add     r0, sp, #0x8
	str     r0, [sp, #0x0]
	str     r2, [sp, #0x4]
	ldr     r0, [r5, #0x0]
	mov     r3, r2
	ldr     r0, [r0, #0x40]
	bl      Function_5_21df72c
	str     r0, [r6, #0x8]
	add     sp, #0x34
	pop     {r3-r6,pc}
@ 0x224e95c

.word 0x1e50 @ 0x224e95c
.word 0x22514b8 @ 0x224e960
.thumb
Function_224e964: @ 224e964 :thumb
	push    {r4,lr}
	ldr     r1, [pc, #0x18] @ 0x224e980, (=0x1e50)
	add     r4, r0, r1
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x0
	bne     branch_224e974
	bl      ErrorHandling
.thumb
branch_224e974: @ 224e974 :thumb
	ldr     r0, [r4, #0x8]
	bl      Function_2071598
	ldr     r0, [r0, #0x34]
	pop     {r4,pc}
@ 0x224e97e


.align 2


.word 0x1e50 @ 0x224e980
.thumb
Function_224e984: @ 224e984 :thumb
	bx      lr
@ 0x224e986


.align 2, 0


.thumb
Function_224e988: @ 224e988 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x10] @ 0x224e9a0, (=0x1e58)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_224e998
	bl      Function_207136c
.thumb
branch_224e998: @ 224e998 :thumb
	mov     r0, r4
	bl      Function_224e8ec
	pop     {r4,pc}
@ 0x224e9a0

.word 0x1e58 @ 0x224e9a0
.thumb
Function_224e9a4: @ 224e9a4 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r6, [pc, #0x1c] @ 0x224e9c8, (=0x1e50)
	cmp     r4, #0x19
	bne     branch_224e9b4
	bl      ErrorHandling
.thumb
branch_224e9b4: @ 224e9b4 :thumb
	ldr     r0, [r5, r6]
	cmp     r0, #0x1
	bne     branch_224e9c2
	cmp     r4, #0x14
	bne     branch_224e9c2
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x224e9c2

.thumb
branch_224e9c2: @ 224e9c2 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x224e9c6


.align 2


.word 0x1e50 @ 0x224e9c8
.thumb
Function_224e9cc: @ 224e9cc :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r6, [pc, #0x1c] @ 0x224e9f0, (=0x1e50)
	cmp     r4, #0x5
	bne     branch_224e9dc
	bl      ErrorHandling
.thumb
branch_224e9dc: @ 224e9dc :thumb
	ldr     r0, [r5, r6]
	cmp     r0, #0x1
	bne     branch_224e9ea
	cmp     r4, #0x0
	bne     branch_224e9ea
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x224e9ea

.thumb
branch_224e9ea: @ 224e9ea :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x224e9ee


.align 2


.word 0x1e50 @ 0x224e9f0
.thumb
Function_224e9f4: @ 224e9f4 :thumb
	ldr     r2, [pc, #0x10] @ 0x224ea08, (=0x1e50)
	ldr     r0, [r0, r2]
	cmp     r0, #0x1
	bne     branch_224ea04
	cmp     r1, #0x14
	bne     branch_224ea04
	mov     r0, #0x1
	bx      lr
@ 0x224ea04

.thumb
branch_224ea04: @ 224ea04 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x224ea08

.word 0x1e50 @ 0x224ea08
.thumb
Function_224ea0c: @ 224ea0c :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r4, r1
	bl      Function_20715bc
	mov     r6, r0
	mov     r3, r4
	mov     r2, #0x5
.thumb
branch_224ea1e: @ 224ea1e :thumb
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_224ea1e
	ldr     r0, [r6, #0x0]
	mov     r2, r4
	str     r0, [r3, #0x0]
	mov     r0, #0x1
	strh    r0, [r4, #0x2e]
	add     r2, #0x8
	mov     r0, #0x6
	ldsb    r1, [r2, r0]
	ldr     r3, [pc, #0x4c] @ 0x224ea84, (=0x22529f8)
	lsl     r6, r1, #3
	add     r1, r3, r6
	ldrh    r3, [r3, r6]
	strh    r3, [r4, #0x38]
	ldrh    r3, [r1, #0x2]
	strh    r3, [r4, #0x3a]
	ldrh    r3, [r1, #0x4]
	strh    r3, [r4, #0x3c]
	ldrh    r1, [r1, #0x6]
	mov     r3, #0x2
	strh    r1, [r4, #0x3e]
	mov     r1, #0x8
	ldsh    r1, [r4, r1]
	lsl     r1, r1, #16
	str     r1, [sp, #0x0]
	ldsh    r3, [r2, r3]
	lsl     r3, r3, #16
	str     r3, [sp, #0x4]
	mov     r3, #0x4
	ldsh    r6, [r2, r3]
	lsl     r6, r6, #16
	str     r6, [sp, #0x8]
	ldsb    r0, [r2, r0]
	cmp     r0, #0x4
	bne     branch_224ea70
	lsl     r0, r3, #13
	add     r0, r1, r0
	str     r0, [sp, #0x0]
.thumb
branch_224ea70: @ 224ea70 :thumb
	mov     r0, r5
	add     r1, sp, #0x0
	bl      Function_20715d4
	mov     r0, #0x0
	strh    r0, [r4, #0x2e]
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x224ea82

.align 2
.word 0x22529f8 @ 0x224ea84



.thumb
Function_224ea88: @ 224ea88 :thumb
	ldr     r0, [r1, #0x4]
	ldr     r3, [pc, #0x4] @ 0x224ea90, (=Function_2073a90+1)
	add     r0, #0x58
	bx      r3
@ 0x224ea90

.word Function_2073a90+1 @ 0x224ea90



.thumb
Function_224ea94: @ 224ea94 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r1
	mov     r7, r0
	ldrh    r0, [r5, #0x2c]
	mov     r4, r5
	add     r4, #0x8
	cmp     r0, #0x0
	beq     branch_224eaae
	cmp     r0, #0x1
	beq     branch_224eace
	cmp     r0, #0x2
	b       branch_224eb12
@ 0x224eaae

.thumb
branch_224eaae: @ 224eaae :thumb
	ldrb    r0, [r4, #0x7]
	cmp     r0, #0x1
	bne     branch_224eabe
	ldr     r0, [pc, #0x74] @ 0x224eb2c, (=0x1e7)
	mov     r1, #0x0
	bl      Function_2005844
	b       branch_224eac8
@ 0x224eabe

.thumb
branch_224eabe: @ 224eabe :thumb
	cmp     r0, #0x2
	bne     branch_224eac8
	ldr     r0, [pc, #0x6c] @ 0x224eb30, (=0x649)
	bl      Function_2005748
.thumb
branch_224eac8: @ 224eac8 :thumb
	ldrh    r0, [r5, #0x2c]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x2c]
.thumb
branch_224eace: @ 224eace :thumb
	mov     r6, r4
	mov     r0, r7
	add     r1, sp, #0x0
	add     r6, #0x14
	bl      Function_20715e4
	ldr     r1, [sp, #0x0]
	ldr     r0, [r4, #0x14]
	add     r0, r1, r0
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	ldr     r0, [r6, #0x4]
	add     r0, r1, r0
	str     r0, [sp, #0x4]
	ldr     r1, [sp, #0x8]
	ldr     r0, [r6, #0x8]
	add     r0, r1, r0
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x30]
	add     r1, r0, #0x1
	str     r1, [r5, #0x30]
	ldr     r0, [r4, #0x20]
	cmp     r1, r0
	blt     branch_224eb0a
	ldrh    r0, [r5, #0x2c]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x2c]
	mov     r0, #0x1
	str     r0, [r5, #0x34]
	strh    r0, [r5, #0x2e]
.thumb
branch_224eb0a: @ 224eb0a :thumb
	mov     r0, r7
	add     r1, sp, #0x0
	bl      Function_20715d4
.thumb
branch_224eb12: @ 224eb12 :thumb
	ldrh    r0, [r5, #0x2e]
	cmp     r0, #0x0
	bne     branch_224eb26
	ldr     r0, [r5, #0x4]
	mov     r1, #0x1
	add     r0, #0x58
	lsl     r1, r1, #12
	mov     r2, #0x1
	bl      Function_2073ac0
.thumb
branch_224eb26: @ 224eb26 :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x224eb2a


.align 2


.word 0x1e7 @ 0x224eb2c
.word 0x649 @ 0x224eb30
.thumb
Function_224eb34: @ 224eb34 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r1
	ldrh    r1, [r4, #0x2e]
	cmp     r1, #0x0
	bne     branch_224eb62
	add     r1, sp, #0x0
	bl      Function_20715e4
	ldr     r0, [r4, #0x0]
	mov     r1, #0x14
	mov     r2, #0x8
	bl      Function_224dab8
	ldr     r0, [r4, #0x4]
	mov     r2, r4
	add     r4, #0x38
	.hword  0x1d00 @ add r0, r0, #0x4
	add     r1, sp, #0x0
	add     r2, #0x10
	mov     r3, r4
	bl      Function_2073bc8
.thumb
branch_224eb62: @ 224eb62 :thumb
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x224eb66


.align 2, 0


.thumb
Function_224eb68: @ 224eb68 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      Function_22510d0
	mov     r6, r0
	bl      Function_224d720
	mov     r4, r0
	mov     r0, r5
	mov     r1, r6
	bl      Function_224ec48
	ldr     r1, [r4, #0x8]
	ldr     r0, [pc, #0xc] @ 0x224eb90, (=0x251)
	cmp     r1, r0
	beq     branch_224eb8e
	mov     r0, r5
	bl      Function_224ec48
.thumb
branch_224eb8e: @ 224eb8e :thumb
	pop     {r4-r6,pc}
@ 0x224eb90

.word 0x251 @ 0x224eb90
.thumb
Function_224eb94: @ 224eb94 :thumb
	push    {r3-r5,lr}
	ldr     r1, [pc, #0x1c] @ 0x224ebb4, (=0x1b50)
	mov     r4, #0x0
	add     r5, r0, r1
.thumb
branch_224eb9c: @ 224eb9c :thumb
	ldr     r0, [r5, #0x4]
	cmp     r0, #0x0
	beq     branch_224eba8
	mov     r0, r5
	bl      Function_224ebb8
.thumb
branch_224eba8: @ 224eba8 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x18
	cmp     r4, #0x8
	blt     branch_224eb9c
	pop     {r3-r5,pc}
@ 0x224ebb2


.align 2


.word 0x1b50 @ 0x224ebb4
.thumb
Function_224ebb8: @ 224ebb8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_224ebc6
	bl      Function_207136c
.thumb
branch_224ebc6: @ 224ebc6 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	pop     {r4,pc}
@ 0x224ebcc

.thumb
Function_224ebcc: @ 224ebcc :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r4, r1
	strh    r3, [r4, #0x0]
	mov     r3, r4
	mov     r6, r2
	mov     r5, r0
	add     r3, #0x8
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	str     r5, [sp, #0x8]
	str     r4, [sp, #0xc]
	add     r0, sp, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldrh    r1, [r2, #0x4]
	ldr     r0, [r5, #0x0]
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x14] @ 0x224ec0c, (=0x2252f6c)
	ldr     r0, [r0, #0x40]
	ldr     r1, [r1, r2]
	mov     r2, #0x0
	mov     r3, r2
	bl      Function_5_21df72c
	str     r0, [r4, #0x4]
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x224ec0a


.align 2


.word 0x2252f6c @ 0x224ec0c
.thumb
Function_224ec10: @ 224ec10 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	ldr     r4, [r6, #0x4]
	mov     r5, r0
	ldrh    r0, [r4, #0x4]
	cmp     r0, #0x19
	beq     branch_224ec46
.thumb
branch_224ec1e: @ 224ec1e :thumb
	ldrh    r1, [r4, #0xc]
	ldrh    r2, [r4, #0xe]
	mov     r0, r5
	bl      Function_2251104
	cmp     r0, #0x1
	bne     branch_224ec3e
	mov     r0, r5
	bl      Function_224ec70
	mov     r1, r0
	ldr     r3, [r6, #0x0]
	mov     r0, r5
	mov     r2, r4
	bl      Function_224ebcc
.thumb
branch_224ec3e: @ 224ec3e :thumb
	add     r4, #0x10
	ldrh    r0, [r4, #0x4]
	cmp     r0, #0x19
	bne     branch_224ec1e
.thumb
branch_224ec46: @ 224ec46 :thumb
	pop     {r4-r6,pc}
@ 0x224ec48

.thumb
Function_224ec48: @ 224ec48 :thumb
	push    {r4,lr}
	ldr     r4, [pc, #0x1c] @ 0x224ec68, (=0x23d)
	ldr     r3, [pc, #0x1c] @ 0x224ec6c, (=0x2252548)
	mov     r2, r4
	add     r2, #0x14
.thumb
branch_224ec52: @ 224ec52 :thumb
	cmp     r4, r1
	bne     branch_224ec5e
	mov     r1, r3
	bl      Function_224ec10
	pop     {r4,pc}
@ 0x224ec5e

.thumb
branch_224ec5e: @ 224ec5e :thumb
	add     r3, #0x8
	ldr     r4, [r3, #0x0]
	cmp     r4, r2
	bne     branch_224ec52
	pop     {r4,pc}
@ 0x224ec68

.word 0x23d @ 0x224ec68
.word 0x2252548 @ 0x224ec6c
.thumb
Function_224ec70: @ 224ec70 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x1c] @ 0x224ec90, (=0x1b50)
	mov     r2, #0x0
	add     r0, r0, r1
.thumb
branch_224ec78: @ 224ec78 :thumb
	ldr     r1, [r0, #0x4]
	cmp     r1, #0x0
	beq     branch_224ec8c
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r0, #0x18
	cmp     r2, #0x8
	blt     branch_224ec78
	bl      ErrorHandling
	mov     r0, #0x0
.thumb
branch_224ec8c: @ 224ec8c :thumb
	pop     {r3,pc}
@ 0x224ec8e


.align 2


.word 0x1b50 @ 0x224ec90
.thumb
Function_224ec94: @ 224ec94 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	ldr     r1, [pc, #0x20] @ 0x224ecbc, (=0x1b50)
	mov     r4, #0x0
	add     r5, r0, r1
.thumb
branch_224ec9e: @ 224ec9e :thumb
	ldrh    r0, [r5, #0x0]
	cmp     r0, r6
	bne     branch_224ecb0
	ldr     r0, [r5, #0x4]
	cmp     r0, #0x0
	beq     branch_224ecb0
	mov     r0, r5
	bl      Function_224ebb8
.thumb
branch_224ecb0: @ 224ecb0 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x18
	cmp     r4, #0x8
	blt     branch_224ec9e
	pop     {r4-r6,pc}
@ 0x224ecba


.align 2


.word 0x1b50 @ 0x224ecbc
.thumb
Function_224ecc0: @ 224ecc0 :thumb
	ldr     r2, [pc, #0x20] @ 0x224ece4, (=0x1b50)
	mov     r3, #0x0
	add     r2, r0, r2
.thumb
branch_224ecc6: @ 224ecc6 :thumb
	ldr     r0, [r2, #0x4]
	cmp     r0, #0x0
	beq     branch_224ecd6
	ldrh    r0, [r2, #0xc]
	cmp     r0, r1
	bne     branch_224ecd6
	mov     r0, #0x1
	bx      lr
@ 0x224ecd6

.thumb
branch_224ecd6: @ 224ecd6 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	add     r2, #0x18
	cmp     r3, #0x8
	blt     branch_224ecc6
	mov     r0, #0x0
	bx      lr
@ 0x224ece2


.align 2


.word 0x1b50 @ 0x224ece4
.thumb
Function_224ece8: @ 224ece8 :thumb
	push    {r3,r4}
	ldr     r3, [pc, #0x2c] @ 0x224ed18, (=0x1b50)
	mov     r2, #0x0
	add     r4, r0, r3
	ldr     r3, [pc, #0x28] @ 0x224ed1c, (=0x22531d0)
.thumb
branch_224ecf2: @ 224ecf2 :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_224ed08
	ldrh    r0, [r4, #0xc]
	lsl     r0, r0, #3
	ldrh    r0, [r3, r0]
	cmp     r0, r1
	bne     branch_224ed08
	mov     r0, #0x1
	pop     {r3,r4}
	bx      lr
@ 0x224ed08

.thumb
branch_224ed08: @ 224ed08 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r4, #0x18
	cmp     r2, #0x8
	blt     branch_224ecf2
	mov     r0, #0x0
	pop     {r3,r4}
	bx      lr
@ 0x224ed16


.align 2


.word 0x1b50 @ 0x224ed18
.word 0x22531d0 @ 0x224ed1c
.thumb
Function_224ed20: @ 224ed20 :thumb
	push    {r3,r4}
	ldr     r3, [pc, #0x2c] @ 0x224ed50, (=0x1b50)
	ldr     r4, [pc, #0x2c] @ 0x224ed54, (=0x22531d0)
	mov     r2, #0x0
	add     r0, r0, r3
.thumb
branch_224ed2a: @ 224ed2a :thumb
	ldr     r3, [r0, #0x4]
	cmp     r3, #0x0
	beq     branch_224ed42
	ldrh    r3, [r0, #0xc]
	lsl     r3, r3, #3
	add     r3, r4, r3
	ldrh    r3, [r3, #0x2]
	cmp     r3, r1
	bne     branch_224ed42
	mov     r0, #0x1
	pop     {r3,r4}
	bx      lr
@ 0x224ed42

.thumb
branch_224ed42: @ 224ed42 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r0, #0x18
	cmp     r2, #0x8
	blt     branch_224ed2a
	mov     r0, #0x0
	pop     {r3,r4}
	bx      lr
@ 0x224ed50

.word 0x1b50 @ 0x224ed50
.word 0x22531d0 @ 0x224ed54
.thumb
Function_224ed58: @ 224ed58 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r4, r1
	bl      Function_20715bc
	ldr     r5, [r0, #0x4]
	ldr     r2, [r0, #0x0]
	ldr     r1, [r0, #0x4]
	add     r5, #0x8
	str     r2, [r4, #0x1c]
	str     r1, [r4, #0x20]
	ldrh    r1, [r5, #0x4]
	ldr     r0, [r0, #0x0]
	add     r2, sp, #0x0
	bl      Function_224d8a4
	str     r0, [r4, #0x24]
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x0
	bne     branch_224ed8e
	ldr     r3, [r4, #0x24]
	ldrh    r1, [r5, #0x4]
	add     r2, r3, #0x4
	ldr     r0, [r4, #0x1c]
	add     r3, #0x58
	bl      Function_224da48
.thumb
branch_224ed8e: @ 224ed8e :thumb
	mov     r0, #0x6
	mov     r1, #0xa
	ldsh    r0, [r5, r0]
	ldsh    r1, [r5, r1]
	add     r2, r4, #0x4
	bl      Function_2064450
	mov     r0, #0x8
	ldsh    r1, [r5, r0]
	lsl     r0, r0, #12
	ldr     r6, [pc, #0x30] @ 0x224edd4, (=0x2253298)
	lsl     r1, r1, #16
	add     r0, r1, r0
	str     r0, [r4, #0x8]
	ldrh    r1, [r5, #0x4]
	mov     r0, #0xc
	ldr     r2, [r4, #0x4]
	mov     r3, r1
	mul     r3, r0
	ldr     r1, [r6, r3]
	add     r0, r6, r3
	add     r1, r2, r1
	str     r1, [r4, #0x4]
	ldr     r2, [r4, #0x8]
	ldr     r1, [r0, #0x4]
	add     r1, r2, r1
	str     r1, [r4, #0x8]
	ldr     r1, [r4, #0xc]
	ldr     r0, [r0, #0x8]
	add     r0, r1, r0
	str     r0, [r4, #0xc]
	mov     r0, #0x1
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x224edd2


.align 2


.word 0x2253298 @ 0x224edd4
.thumb
Function_224edd8: @ 224edd8 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r0, [r4, #0x20]
	ldrh    r0, [r0, #0xc]
	bl      Function_224daec
	cmp     r0, #0x1
	bne     branch_224edf0
	ldr     r0, [r4, #0x24]
	add     r0, #0x58
	bl      Function_2073aa8
.thumb
branch_224edf0: @ 224edf0 :thumb
	ldr     r0, [r4, #0x1c]
	ldr     r1, [r4, #0x24]
	bl      Function_224d938
	pop     {r4,pc}
@ 0x224edfa


.align 2, 0


.thumb
Function_224edfc: @ 224edfc :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r0, [r4, #0x20]
	ldrh    r5, [r0, #0xc]
	mov     r0, r5
	bl      Function_224daec
	cmp     r0, #0x1
	bne     branch_224ee1c
	ldr     r0, [r4, #0x24]
	mov     r1, #0x1
	add     r0, #0x58
	lsl     r1, r1, #12
	mov     r2, #0x1
	bl      Function_2073ac0
.thumb
branch_224ee1c: @ 224ee1c :thumb
	ldr     r0, [r4, #0x1c]
	mov     r1, r5
	add     r2, r4, #0x4
	bl      Function_224dbe4
	strh    r0, [r4, #0x2]
	pop     {r3-r5,pc}
@ 0x224ee2a


.align 2, 0


.thumb
Function_224ee2c: @ 224ee2c :thumb
	push    {r3,lr}
	ldrh    r0, [r1, #0x2]
	cmp     r0, #0x1
	bne     branch_224ee3e
	ldr     r0, [r1, #0x24]
	.hword  0x1d09 @ add r1, r1, #0x4
	.hword  0x1d00 @ add r0, r0, #0x4
	bl      Function_2073bb4
.thumb
branch_224ee3e: @ 224ee3e :thumb
	pop     {r3,pc}
@ 0x224ee40

.thumb
Function_224ee40: @ 224ee40 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      Function_22510d0
	mov     r6, r0
	bl      Function_224d720
	mov     r4, r0
	mov     r0, r5
	mov     r1, r6
	bl      Function_224f078
	ldr     r1, [r4, #0x8]
	ldr     r0, [pc, #0xc] @ 0x224ee68, (=0x251)
	cmp     r1, r0
	beq     branch_224ee66
	mov     r0, r5
	bl      Function_224f078
.thumb
branch_224ee66: @ 224ee66 :thumb
	pop     {r4-r6,pc}
@ 0x224ee68

.word 0x251 @ 0x224ee68
.thumb
Function_224ee6c: @ 224ee6c :thumb
	bx      lr
@ 0x224ee6e


.align 2, 0


.thumb
Function_224ee70: @ 224ee70 :thumb
	push    {r4,lr}
	ldr     r2, [pc, #0x28] @ 0x224ee9c, (=0x1c10)
	add     r4, r0, r2
	mov     r2, #0x0
.thumb
branch_224ee78: @ 224ee78 :thumb
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_224ee8c
	cmp     r0, r1
	bne     branch_224ee8c
	bl      Function_2061af4
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x224ee8c

.thumb
branch_224ee8c: @ 224ee8c :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r2, #0x13
	blt     branch_224ee78
	bl      ErrorHandling
	pop     {r4,pc}
@ 0x224ee9a


.align 2


.word 0x1c10 @ 0x224ee9c
.thumb
Function_224eea0: @ 224eea0 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x24] @ 0x224eec8, (=0x1c10)
	add     r2, r0, r1
	mov     r1, #0x0
	mov     r3, r2
.thumb
branch_224eeaa: @ 224eeaa :thumb
	ldr     r0, [r3, #0x0]
	cmp     r0, #0x0
	bne     branch_224eeb6
	lsl     r0, r1, #2
	add     r0, r2, r0
	pop     {r3,pc}
@ 0x224eeb6

.thumb
branch_224eeb6: @ 224eeb6 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1d1b @ add r3, r3, #0x4
	cmp     r1, #0x13
	blt     branch_224eeaa
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x224eec6


.align 2


.word 0x1c10 @ 0x224eec8
.thumb
Function_224eecc: @ 224eecc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r1
	mov     r1, #0x0
	str     r1, [sp, #0x4]
	ldr     r0, [r0, #0x0]
	mov     r4, r2
	ldr     r6, [r0, #0x38]
	add     r1, sp, #0x0
	mov     r0, r6
	add     r2, sp, #0x4
	mov     r3, #0x1
	bl      Function_20625b0
	cmp     r0, #0x0
	beq     branch_224ef2a
	add     r7, sp, #0x0
.thumb
branch_224eeee: @ 224eeee :thumb
	ldr     r0, [sp, #0x0]
	bl      GetSprite_c
	cmp     r4, r0
	bne     branch_224ef1a
	ldr     r0, [sp, #0x0]
	bl      GetSpriteID
	ldrh    r1, [r5, #0x0]
	cmp     r1, r0
	bne     branch_224ef1a
	ldr     r0, [sp, #0x0]
	bl      GetSpriteGraphic
	ldrh    r1, [r5, #0x2]
	cmp     r1, r0
	beq     branch_224ef14
	bl      ErrorHandling
branch_224ef14: @ 224ef14 :thumb

	ldr     r0, [sp, #0x0]
	add     sp, #0x8
	pop     {r3-r7,pc}

branch_224ef1a: @ 224ef1a :thumb
	mov     r0, r6
	mov     r1, r7
	add     r2, sp, #0x4
	mov     r3, #0x1
	bl      Function_20625b0
	cmp     r0, #0x0
	bne     branch_224eeee
branch_224ef2a: @ 224ef2a :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x224ef30

.thumb
Function_224ef30: @ 224ef30 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldrh    r4, [r1, #0x0]
	ldr     r0, [r0, #0xc]
	mov     r6, r2
	ldrh    r7, [r1, #0x2]
	bl      LoadFlagAdress
	cmp     r4, #0x6
	bne     branch_224ef4e
	cmp     r6, #0x0
	bne     branch_224ef60
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224ef4e

.thumb
branch_224ef4e: @ 224ef4e :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, r7
	bl      Function_2251104
	cmp     r0, #0x0
	bne     branch_224ef60
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224ef60

.thumb
branch_224ef60: @ 224ef60 :thumb
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x224ef64

.thumb
Function_224ef64: @ 224ef64 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r2
	mov     r5, r1
	mov     r1, r4
	add     r1, #0x8
	mov     r2, r3
	mov     r6, r0
	str     r3, [sp, #0x4]
	bl      Function_224eecc
	mov     r7, r0
	beq     branch_224ef94
	mov     r0, r6
	mov     r1, r7
	bl      Function_224f1cc
	cmp     r0, #0x1
	bne     branch_224ef90
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224ef90

.thumb
branch_224ef90: @ 224ef90 :thumb
	str     r7, [r5, #0x0]
	b       branch_224efce
@ 0x224ef94

.thumb
branch_224ef94: @ 224ef94 :thumb
	add     r2, sp, #0x10
	ldrh    r2, [r2, #0x10]
	mov     r0, r6
	mov     r1, r4
	bl      Function_224ef30
	cmp     r0, #0x0
	beq     branch_224efb0
	ldrh    r1, [r4, #0x10]
	ldr     r0, [r6, #0x0]
	bl      LoadFlagAdressAndCheckFlag
	cmp     r0, #0x0
	beq     branch_224efb6
.thumb
branch_224efb0: @ 224efb0 :thumb
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224efb6

.thumb
branch_224efb6: @ 224efb6 :thumb
	ldr     r0, [r6, #0x0]
	mov     r1, r4
	ldr     r0, [r0, #0x38]
	ldr     r2, [sp, #0x4]
	add     r1, #0x8
	bl      CopySpriteStruct
	str     r0, [r5, #0x0]
	cmp     r0, #0x0
	bne     branch_224efce
	bl      ErrorHandling
.thumb
branch_224efce: @ 224efce :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	bl      Function_2062d64
	ldrh    r0, [r4, #0x4]
	cmp     r0, #0x1
	bne     branch_224efe6
	ldrh    r2, [r4, #0x6]
	ldr     r1, [r5, #0x0]
	mov     r0, r6
	bl      Function_224a390
.thumb
branch_224efe6: @ 224efe6 :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	bl      Function_2062fc4
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	bl      UnSetSpriteFlag_Follow
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	bl      SetUnsetSpriteFlags800000
	mov     r1, #0x2
	ldr     r0, [r5, #0x0]
	lsl     r1, r1, #12
	bl      SetSpriteFlags
	cmp     r7, #0x0
	bne     branch_224f038
	mov     r0, #0x14
	ldsh    r0, [r4, r0]
	str     r0, [sp, #0x0]
	ldr     r2, [r4, #0x24]
	ldrh    r1, [r4, #0x20]
	asr     r3, r2, #3
	asr     r2, r3, #11
	lsr     r2, r2, #20
	add     r2, r3, r2
	ldrh    r3, [r4, #0x22]
	ldr     r0, [r5, #0x0]
	asr     r2, r2, #12
	bl      Function_2063340
	ldr     r0, [r5, #0x0]
	bl      Function_5_21eb1a0
	mov     r1, r0
	beq     branch_224f038
	ldr     r0, [r5, #0x0]
	bl      Function_5_21edeb4
branch_224f038: @ 224f038 :thumb

	ldr     r0, [r5, #0x0]
	mov     r1, #0x0
	bl      Function_2062d64
	mov     r0, #0x1
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x224f046


.align 2, 0


.thumb
Function_224f048: @ 224f048 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	mov     r6, r2
	cmp     r0, #0x0
	beq     branch_224f074
	mov     r7, #0x0
.thumb
branch_224f058: @ 224f058 :thumb
	mov     r0, r5
	bl      Function_224eea0
	str     r7, [sp, #0x0]
	mov     r1, r0
	ldr     r2, [r4, #0x0]
	mov     r0, r5
	mov     r3, r6
	bl      Function_224ef64
	.hword  0x1d24 @ add r4, r4, #0x4
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_224f058
.thumb
branch_224f074: @ 224f074 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224f078

.thumb
Function_224f078: @ 224f078 :thumb
	push    {r4,lr}
	ldr     r4, [pc, #0x20] @ 0x224f09c, (=0x23d)
	mov     r2, r1
	mov     r1, r4
	ldr     r3, [pc, #0x1c] @ 0x224f0a0, (=0x2252eb4)
	add     r1, #0x14
.thumb
branch_224f084: @ 224f084 :thumb
	cmp     r4, r2
	bne     branch_224f090
	ldr     r1, [r3, #0x4]
	bl      Function_224f048
	pop     {r4,pc}
@ 0x224f090

.thumb
branch_224f090: @ 224f090 :thumb
	add     r3, #0x8
	ldr     r4, [r3, #0x0]
	cmp     r4, r1
	bne     branch_224f084
	pop     {r4,pc}
@ 0x224f09a


.align 2


.word 0x23d @ 0x224f09c
.word 0x2252eb4 @ 0x224f0a0
.thumb
Function_224f0a4: @ 224f0a4 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	ldr     r1, [pc, #0x24] @ 0x224f0d0, (=0x1c10)
	mov     r4, #0x0
	add     r5, r0, r1
	mov     r7, r4
.thumb
branch_224f0b0: @ 224f0b0 :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_224f0c6
	bl      GetSprite_c
	cmp     r6, r0
	bne     branch_224f0c6
	ldr     r0, [r5, #0x0]
	bl      Function_2061af4
	str     r7, [r5, #0x0]
.thumb
branch_224f0c6: @ 224f0c6 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x13
	blt     branch_224f0b0
	pop     {r3-r7,pc}
@ 0x224f0d0

.word 0x1c10 @ 0x224f0d0
.thumb
Function_224f0d4: @ 224f0d4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r7, r1
	ldr     r6, [pc, #0x70] @ 0x224f14c, (=0x2252eb4)
	ldr     r1, [pc, #0x70] @ 0x224f150, (=0x23d)
	str     r0, [sp, #0x4]
	mov     r5, r2
.thumb
branch_224f0e2: @ 224f0e2 :thumb
	cmp     r1, r7
	bne     branch_224f136
	ldr     r4, [r6, #0x4]
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_224f132
.thumb
branch_224f0ee: @ 224f0ee :thumb
	ldrh    r0, [r0, #0x8]
	cmp     r0, r5
	bne     branch_224f12a
	ldr     r0, [sp, #0x4]
	bl      Function_224eea0
	mov     r6, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	ldr     r2, [r4, #0x0]
	mov     r1, r6
	mov     r3, r7
	bl      Function_224ef64
	mov     r0, #0x91
	lsl     r0, r0, #2
	cmp     r7, r0
	bne     branch_224f124
	cmp     r5, #0x87
	bcc     branch_224f124
	cmp     r5, #0x8f
	bhi     branch_224f124
	ldr     r0, [r6, #0x0]
	mov     r1, #0x0
	bl      Function_2062d80
.thumb
branch_224f124: @ 224f124 :thumb
	add     sp, #0x8
	ldr     r0, [r6, #0x0]
	pop     {r3-r7,pc}
@ 0x224f12a

.thumb
branch_224f12a: @ 224f12a :thumb
	.hword  0x1d24 @ add r4, r4, #0x4
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_224f0ee
.thumb
branch_224f132: @ 224f132 :thumb
	bl      ErrorHandling
.thumb
branch_224f136: @ 224f136 :thumb
	add     r6, #0x8
	ldr     r1, [r6, #0x0]
	ldr     r0, [pc, #0x18] @ 0x224f154, (=0x251)
	cmp     r1, r0
	bne     branch_224f0e2
	bl      ErrorHandling
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x224f14a

.align 2
.word 0x2252eb4 @ 0x224f14c
.word 0x23d @ 0x224f150
.word 0x251 @ 0x224f154



.thumb
.globl Function_9_224f158
Function_9_224f158: @ 224f158 :thumb
	mov     r3, r0
	mov     r2, r1
	ldr     r0, [r3, #0x4]
	ldr     r1, [r3, #0x1c]
	ldr     r3, [pc, #0x4] @ 0x224f168, (=0x224f0d5)
	ldr     r0, [r0, #0x24]
	ldr     r1, [r1, #0x0]
	bx      r3
@ 0x224f168

.word 0x224f0d5 @ 0x224f168



.thumb
.globl Function_9_224f16c
Function_9_224f16c: @ 224f16c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r6, r1
	mov     r1, #0x0
	str     r1, [sp, #0x8]
	ldr     r1, [r0, #0x1c]
	ldr     r5, [r0, #0x38]
	ldr     r0, [r0, #0x4]
	ldr     r4, [r1, #0x0]
	ldr     r0, [r0, #0x24]
	add     r1, sp, #0x4
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r2, sp, #0x8
	mov     r3, #0x1
	bl      Function_20625b0
	cmp     r0, #0x1
	bne     branch_224f1c4
	add     r7, sp, #0x4
.thumb
branch_224f194: @ 224f194 :thumb
	ldr     r0, [sp, #0x4]
	bl      GetSpriteID
	cmp     r6, r0
	bne     branch_224f1b4
	ldr     r0, [sp, #0x4]
	bl      GetSprite_c
	cmp     r4, r0
	bne     branch_224f1b4
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	bl      Function_224ee70
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x224f1b4

.thumb
branch_224f1b4: @ 224f1b4 :thumb
	mov     r0, r5
	mov     r1, r7
	add     r2, sp, #0x8
	mov     r3, #0x1
	bl      Function_20625b0
	cmp     r0, #0x1
	beq     branch_224f194
.thumb
branch_224f1c4: @ 224f1c4 :thumb
	bl      ErrorHandling
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x224f1cc

.thumb
Function_224f1cc: @ 224f1cc :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	ldr     r1, [pc, #0x20] @ 0x224f1f4, (=0x1c10)
	mov     r4, #0x0
	add     r5, r0, r1
	cmp     r6, #0x0
	bne     branch_224f1de
	bl      ErrorHandling
.thumb
branch_224f1de: @ 224f1de :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, r6
	bne     branch_224f1e8
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x224f1e8

.thumb
branch_224f1e8: @ 224f1e8 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x13
	blt     branch_224f1de
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x224f1f4

.word 0x1c10 @ 0x224f1f4
.thumb
Function_224f1f8: @ 224f1f8 :thumb
	push    {r4-r7}
	ldr     r6, [pc, #0x3c] @ 0x224f238, (=0x243)
	mov     r5, r0
	mov     r7, r6
	mov     r4, r1
	mov     r1, r2
	mov     r12, r3
	ldr     r0, [pc, #0x34] @ 0x224f23c, (=0x225311c)
	mov     r2, #0x6
	mov     r3, #0x4
	add     r7, #0xe
.thumb
branch_224f20e: @ 224f20e :thumb
	cmp     r6, r5
	bne     branch_224f22a
	ldsh    r6, [r0, r3]
	cmp     r6, r4
	bne     branch_224f22a
	ldsh    r6, [r0, r2]
	cmp     r6, r1
	bne     branch_224f22a
	ldr     r1, [r0, #0x8]
	mov     r0, r12
	str     r1, [r0, #0x0]
	mov     r0, #0x1
	pop     {r4-r7}
	bx      lr
@ 0x224f22a

.thumb
branch_224f22a: @ 224f22a :thumb
	add     r0, #0xc
	ldr     r6, [r0, #0x0]
	cmp     r6, r7
	bne     branch_224f20e
	mov     r0, #0x0
	pop     {r4-r7}
	bx      lr
@ 0x224f238

.word 0x243 @ 0x224f238
.word 0x225311c @ 0x224f23c



.thumb
.globl Function_9_224f240
Function_9_224f240: @ 224f240 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r0
	mov     r5, r1
	bl      GetSpriteSpriteListFirstSprite
	ldr     r0, [r0, #0x1c]
	ldr     r7, [r0, #0x0]
	mov     r0, r4
	bl      LoadSpritePositionX
	str     r0, [sp, #0x0]
	mov     r0, r4
	bl      LoadSpritePositionY
	mov     r4, r0
	mov     r0, r5
	bl      GetWalkPositionXChange
	mov     r6, r0
	mov     r0, r5
	bl      GetWalkPositionYChange
	mov     r2, r0
	ldr     r1, [sp, #0x0]
	mov     r0, r7
	add     r1, r1, r6
	add     r2, r4, r2
	add     r3, sp, #0x4
	bl      Function_224f1f8
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x224f282


.align 2, 0


.thumb
Function_224f284: @ 224f284 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	bl      GetSpriteSpriteListFirstSprite
	ldr     r0, [r0, #0x1c]
	ldr     r4, [r0, #0x0]
	mov     r0, r5
	bl      LoadSpritePositionX
	mov     r7, r0
	mov     r0, r5
	bl      LoadSpritePositionY
	mov     r2, r0
	mov     r0, r4
	mov     r1, r7
	mov     r3, r6
	bl      Function_224f1f8
	pop     {r3-r7,pc}
@ 0x224f2ae


.align 2, 0
.thumb
.globl Function_9_224f2b0
Function_9_224f2b0: @ 224f2b0 :thumb
	push    {r3,lr}
	add     r1, sp, #0x0
	bl      Function_224f284
	pop     {r3,pc}
@ 0x224f2ba


.align 2, 0
.thumb
.globl Function_9_224f2bc
Function_9_224f2bc: @ 224f2bc :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x4
	mov     r1, #0x24
	mov     r7, r2
	bl      malloc2
	mov     r1, #0x0
	mov     r2, #0x24
	mov     r4, r0
	blx     Call_FillMemWithValue
	ldr     r0, [r5, #0x4]
	mov     r1, r4
	ldr     r0, [r0, #0x24]
	add     r1, #0x14
	str     r0, [r4, #0x0]
	str     r5, [r4, #0x4]
	str     r6, [r4, #0x8]
	str     r7, [r4, #0xc]
	mov     r0, r7
	bl      Function_224f284
	ldr     r1, [r4, #0x14]
	cmp     r1, #0x8
	bhi     branch_224f302
	cmp     r1, #0x6
	bcc     branch_224f31c
	beq     branch_224f30c
	cmp     r1, #0x7
	beq     branch_224f30c
	cmp     r1, #0x8
	beq     branch_224f30c
	b       branch_224f31c
@ 0x224f302

.thumb
branch_224f302: @ 224f302 :thumb
	cmp     r1, #0x11
	bne     branch_224f31c
	mov     r0, #0x0
	strh    r0, [r4, #0x12]
	b       branch_224f320
@ 0x224f30c

.thumb
branch_224f30c: @ 224f30c :thumb
	ldr     r0, [r4, #0x0]
	bl      Function_2249e00
	cmp     r0, #0x0
	bne     branch_224f31c
	mov     r0, #0x1
	strh    r0, [r4, #0x12]
	b       branch_224f320
@ 0x224f31c

.thumb
branch_224f31c: @ 224f31c :thumb
	mov     r0, #0x2
	strh    r0, [r4, #0x12]
.thumb
branch_224f320: @ 224f320 :thumb
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x224f324

.thumb
Function_224f324: @ 224f324 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r4, [r5, #0xc]
	add     r1, sp, #0x0
	mov     r0, r4
	bl      CopySprite70Struct
	mov     r0, #0x2
	ldr     r1, [sp, #0x4]
	lsl     r0, r0, #14
	sub     r0, r1, r0
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r1, sp, #0x0
	bl      CopyToSprite70Struct
	mov     r0, #0x73
	ldr     r1, [sp, #0x4]
	lsl     r0, r0, #16
	cmp     r1, r0
	ble     branch_224f356
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r4-r7,pc}

branch_224f356: @ 224f356 :thumb
	ldr     r0, [pc, #0x60] @ 0x224f3b8, (=0x623)
	bl      Function_2005748
	mov     r0, #0x73
	lsl     r0, r0, #16
	str     r0, [sp, #0x4]
	mov     r0, r4
	bl      LoadSpriteFaceDirection
	mov     r2, r0
	mov     r0, r4
	add     r1, sp, #0x0
	bl      Function_20632d4
	mov     r1, #0x91
	mov     r0, r4
	lsl     r1, r1, #2
	bl      SetSprite_c
	mov     r0, r4
	bl      GetSpriteID
	cmp     r0, #0x80
	beq     branch_224f390
	cmp     r0, #0x81
	beq     branch_224f396
	cmp     r0, #0x82
	beq     branch_224f39c
	b       branch_224f3a0
@ 0x224f390

.thumb
branch_224f390: @ 224f390 :thumb
	mov     r7, #0x3
	mov     r6, #0x0
	b       branch_224f3a0
@ 0x224f396

.thumb
branch_224f396: @ 224f396 :thumb
	mov     r7, #0x4
	mov     r6, #0x1
	b       branch_224f3a0
@ 0x224f39c

.thumb
branch_224f39c: @ 224f39c :thumb
	mov     r7, #0x5
	mov     r6, #0x2
.thumb
branch_224f3a0: @ 224f3a0 :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, r7
	bl      Function_2249dc8
	ldr     r0, [r5, #0x0]
	mov     r1, r6
	bl      Function_2249de4
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x224f3b6


.align 2


.word 0x623 @ 0x224f3b8
.thumb
Function_224f3bc: @ 224f3bc :thumb
	push    {r4-r7,lr}
	add     sp, #-0x3c
	mov     r4, r0
	ldrh    r0, [r4, #0x10]
	cmp     r0, #0x3
	bls     branch_224f3ca
	b       branch_224f5cc
@ 0x224f3ca

.thumb
branch_224f3ca: @ 224f3ca :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x224f3d6

Jumppoints_224f3d6:
.hword branch_224f3de - Jumppoints_224f3d6 - 2
.hword branch_224f428 - Jumppoints_224f3d6 - 2
.hword branch_224f512 - Jumppoints_224f3d6 - 2
.hword branch_224f594 - Jumppoints_224f3d6 - 2
.thumb
branch_224f3de: @ 224f3de :thumb
	ldr     r5, [r4, #0xc]
	add     r1, sp, #0x30
	mov     r0, r5
	bl      CopySprite70Struct
	mov     r0, #0x2
	ldr     r1, [sp, #0x34]
	lsl     r0, r0, #12
	sub     r0, r1, r0
	str     r0, [sp, #0x34]
	mov     r0, r5
	add     r1, sp, #0x30
	bl      CopyToSprite70Struct
	mov     r0, r5
	bl      LoadSpriteFace2Direction
	mov     r2, #0x2
	mov     r1, r0
	mov     r0, r5
	lsl     r2, r2, #12
	bl      Movement_AddDeltaPositionToSprite70
	ldr     r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
	cmp     r0, #0x8
	bge     branch_224f41c
	add     sp, #0x3c
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x224f41c

.thumb
branch_224f41c: @ 224f41c :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x18]
	ldrh    r0, [r4, #0x10]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x10]
	b       branch_224f5cc
@ 0x224f428

.thumb
branch_224f428: @ 224f428 :thumb
	ldr     r5, [r4, #0xc]
	add     r1, sp, #0x24
	mov     r0, r5
	bl      CopySprite70Struct
	mov     r0, #0x1
	ldr     r1, [sp, #0x28]
	lsl     r0, r0, #14
	sub     r0, r1, r0
	str     r0, [sp, #0x28]
	mov     r0, r5
	add     r1, sp, #0x24
	bl      CopyToSprite70Struct
	ldr     r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
	cmp     r0, #0x4
	bge     branch_224f454
	add     sp, #0x3c
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x224f454

.thumb
branch_224f454: @ 224f454 :thumb
	mov     r7, #0x0
	str     r7, [r4, #0x18]
	ldr     r5, [r4, #0xc]
	ldr     r0, [r4, #0x0]
	ldr     r1, [r4, #0x14]
	mov     r6, r7
	bl      Function_2249dc8
	mov     r0, r5
	bl      GetSpriteID
	cmp     r0, #0x80
	beq     branch_224f478
	cmp     r0, #0x81
	beq     branch_224f47e
	cmp     r0, #0x82
	beq     branch_224f484
	b       branch_224f48a
@ 0x224f478

.thumb
branch_224f478: @ 224f478 :thumb
	mov     r7, #0x90
	mov     r6, #0x3
	b       branch_224f48e
@ 0x224f47e

.thumb
branch_224f47e: @ 224f47e :thumb
	mov     r7, #0x91
	mov     r6, #0x4
	b       branch_224f48e
@ 0x224f484

.thumb
branch_224f484: @ 224f484 :thumb
	mov     r7, #0x92
	mov     r6, #0x5
	b       branch_224f48e
@ 0x224f48a

.thumb
branch_224f48a: @ 224f48a :thumb
	bl      ErrorHandling
.thumb
branch_224f48e: @ 224f48e :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, r6
	bl      Function_2249de4
	mov     r0, r5
	mov     r1, r7
	bl      SetSpriteID
	mov     r0, r5
	bl      LoadSpriteFace2Direction
	mov     r6, r0
	mov     r0, r5
	bl      LoadSpritePositionX
	mov     r7, r0
	mov     r0, r5
	bl      LoadSpritePositionZ
	str     r0, [sp, #0x0]
	mov     r0, r5
	bl      LoadSpritePositionY
	str     r0, [sp, #0x4]
	mov     r0, r6
	bl      GetWalkPositionXChange
	str     r0, [sp, #0x8]
	mov     r0, r6
	bl      GetWalkPositionYChange
	ldr     r1, [sp, #0x8]
	mov     r6, r0
	mov     r0, r5
	add     r1, r7, r1
	bl      SaveSpritePositionX
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	.hword  0x1f09 @ sub r1, r1, #0x4
	bl      SaveSpritePositionZ
	ldr     r1, [sp, #0x4]
	mov     r0, r5
	add     r1, r1, r6
	bl      SaveSpritePositionY
	mov     r0, r5
	bl      CopySpritePositionsFromOldToNew
	ldr     r0, [r4, #0xc]
	add     r1, sp, #0x18
	bl      Function_206309c
	ldr     r0, [sp, #0x1c]
	str     r0, [r4, #0x1c]
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r0, [r4, #0x20]
	ldr     r0, [pc, #0xcc] @ 0x224f5d4, (=0x623)
	bl      Function_2005748
	ldrh    r0, [r4, #0x10]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x10]
	b       branch_224f5cc
@ 0x224f512

.thumb
branch_224f512: @ 224f512 :thumb
	ldr     r5, [r4, #0xc]
	add     r1, sp, #0xc
	mov     r0, r5
	bl      Function_206309c
	ldr     r1, [r4, #0x1c]
	ldr     r0, [r4, #0x20]
	add     r0, r1, r0
	str     r0, [sp, #0x10]
	mov     r0, r5
	add     r1, sp, #0xc
	bl      Function_20630ac
	ldr     r0, [r4, #0x20]
	neg     r0, r0
	str     r0, [r4, #0x20]
	ldr     r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
	cmp     r0, #0x7
	bne     branch_224f540
	mov     r0, #0x0
	str     r0, [r4, #0x20]
.thumb
branch_224f540: @ 224f540 :thumb
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x20
	bge     branch_224f54c
	add     sp, #0x3c
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x224f54c

.thumb
branch_224f54c: @ 224f54c :thumb
	ldr     r0, [r4, #0x14]
	mov     r5, #0x0
	mov     r6, r5
	cmp     r0, #0x6
	beq     branch_224f560
	cmp     r0, #0x7
	beq     branch_224f566
	cmp     r0, #0x8
	beq     branch_224f56c
	b       branch_224f572
@ 0x224f560

.thumb
branch_224f560: @ 224f560 :thumb
	mov     r6, #0xf
	mov     r5, #0x5
	b       branch_224f576
@ 0x224f566

.thumb
branch_224f566: @ 224f566 :thumb
	mov     r6, #0xe
	mov     r5, #0x7
	b       branch_224f576
@ 0x224f56c

.thumb
branch_224f56c: @ 224f56c :thumb
	mov     r6, #0xd
	mov     r5, #0x6
	b       branch_224f576
@ 0x224f572

.thumb
branch_224f572: @ 224f572 :thumb
	bl      ErrorHandling
.thumb
branch_224f576: @ 224f576 :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, r6
	bl      Function_2249de4
	lsl     r1, r5, #16
	mov     r2, #0x0
	ldr     r0, [r4, #0x8]
	lsr     r1, r1, #16
	mov     r3, r2
	bl      Function_203e8e0
	ldrh    r0, [r4, #0x10]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x10]
	b       branch_224f5cc
@ 0x224f594

.thumb
branch_224f594: @ 224f594 :thumb
	ldr     r0, [r4, #0x0]
	mov     r5, #0x0
	mov     r1, #0x6
	bl      Function_2249e00
	add     r5, r5, r0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x7
	bl      Function_2249e00
	add     r5, r5, r0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x8
	bl      Function_2249e00
	add     r0, r5, r0
	cmp     r0, #0x3
	blt     branch_224f5c6
	ldr     r0, [r4, #0x4]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	mov     r1, #0x1
	bl      Function_206afc0
.thumb
branch_224f5c6: @ 224f5c6 :thumb
	add     sp, #0x3c
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x224f5cc

.thumb
branch_224f5cc: @ 224f5cc :thumb
	mov     r0, #0x0
	add     sp, #0x3c
	pop     {r4-r7,pc}
@ 0x224f5d2


.align 2


.word 0x623 @ 0x224f5d4
.thumb
Function_224f5d8: @ 224f5d8 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x24
	mov     r5, r0
	ldrh    r0, [r5, #0x10]
	cmp     r0, #0x0
	beq     branch_224f5ee
	cmp     r0, #0x1
	beq     branch_224f638
	cmp     r0, #0x2
	beq     branch_224f670
	b       branch_224f6e6
@ 0x224f5ee

.thumb
branch_224f5ee: @ 224f5ee :thumb
	ldr     r4, [r5, #0xc]
	add     r1, sp, #0x18
	mov     r0, r4
	bl      CopySprite70Struct
	mov     r0, #0x2
	ldr     r1, [sp, #0x1c]
	lsl     r0, r0, #12
	sub     r0, r1, r0
	str     r0, [sp, #0x1c]
	mov     r0, r4
	add     r1, sp, #0x18
	bl      CopyToSprite70Struct
	mov     r0, r4
	bl      LoadSpriteFace2Direction
	mov     r2, #0x2
	mov     r1, r0
	mov     r0, r4
	lsl     r2, r2, #12
	bl      Movement_AddDeltaPositionToSprite70
	ldr     r0, [r5, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x18]
	cmp     r0, #0x8
	bge     branch_224f62c
	add     sp, #0x24
	mov     r0, #0x0
	pop     {r3-r6,pc}
@ 0x224f62c

.thumb
branch_224f62c: @ 224f62c :thumb
	mov     r0, #0x0
	str     r0, [r5, #0x18]
	ldrh    r0, [r5, #0x10]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x10]
	b       branch_224f6e6
@ 0x224f638

.thumb
branch_224f638: @ 224f638 :thumb
	ldr     r4, [r5, #0xc]
	add     r1, sp, #0xc
	mov     r0, r4
	bl      CopySprite70Struct
	mov     r0, #0x1
	ldr     r1, [sp, #0x10]
	lsl     r0, r0, #14
	sub     r0, r1, r0
	str     r0, [sp, #0x10]
	mov     r0, r4
	add     r1, sp, #0xc
	bl      CopyToSprite70Struct
	ldr     r0, [r5, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x18]
	cmp     r0, #0x4
	bge     branch_224f664
	add     sp, #0x24
	mov     r0, #0x0
	pop     {r3-r6,pc}
@ 0x224f664

.thumb
branch_224f664: @ 224f664 :thumb
	mov     r0, #0x0
	str     r0, [r5, #0x18]
	ldrh    r0, [r5, #0x10]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x10]
	b       branch_224f6e6
@ 0x224f670

.thumb
branch_224f670: @ 224f670 :thumb
	ldr     r4, [r5, #0xc]
	add     r1, sp, #0x0
	mov     r0, r4
	bl      CopySprite70Struct
	mov     r0, #0x2
	ldr     r1, [sp, #0x4]
	lsl     r0, r0, #14
	sub     r0, r1, r0
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r1, sp, #0x0
	bl      CopyToSprite70Struct
	ldr     r0, [r5, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x18]
	cmp     r0, #0x28
	bge     branch_224f69c
	add     sp, #0x24
	mov     r0, #0x0
	pop     {r3-r6,pc}
@ 0x224f69c

.thumb
branch_224f69c: @ 224f69c :thumb
	ldr     r0, [r5, #0xc]
	mov     r6, #0x0
	mov     r4, r6
	bl      GetSpriteID
	cmp     r0, #0x80
	beq     branch_224f6b4
	cmp     r0, #0x81
	beq     branch_224f6b8
	cmp     r0, #0x82
	beq     branch_224f6be
	b       branch_224f6c4
@ 0x224f6b4

.thumb
branch_224f6b4: @ 224f6b4 :thumb
	mov     r4, #0x3
	b       branch_224f6c8
@ 0x224f6b8

.thumb
branch_224f6b8: @ 224f6b8 :thumb
	mov     r6, #0x1
	mov     r4, #0x4
	b       branch_224f6c8
@ 0x224f6be

.thumb
branch_224f6be: @ 224f6be :thumb
	mov     r6, #0x2
	mov     r4, #0x5
	b       branch_224f6c8
@ 0x224f6c4

.thumb
branch_224f6c4: @ 224f6c4 :thumb
	bl      ErrorHandling
.thumb
branch_224f6c8: @ 224f6c8 :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, r6
	bl      Function_2249dc8
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	bl      Function_2249de4
	ldr     r0, [r5, #0x0]
	ldr     r1, [r5, #0xc]
	bl      Function_224ee70
	add     sp, #0x24
	mov     r0, #0x1
	pop     {r3-r6,pc}

branch_224f6e6: @ 224f6e6 :thumb
	mov     r0, #0x0
	add     sp, #0x24
	pop     {r3-r6,pc}
@ 0x224f6ec


.thumb
.globl Function_9_224f6ec
Function_9_224f6ec: @ 224f6ec :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldrh    r1, [r5, #0x12]
	cmp     r1, #0x0
	beq     branch_224f700
	cmp     r1, #0x1
	beq     branch_224f708
	cmp     r1, #0x2
	beq     branch_224f710
	b       branch_224f716
@ 0x224f700

.thumb
branch_224f700: @ 224f700 :thumb
	bl      Function_224f324
	mov     r4, r0
	b       branch_224f716
@ 0x224f708

.thumb
branch_224f708: @ 224f708 :thumb
	bl      Function_224f3bc
	mov     r4, r0
	b       branch_224f716
@ 0x224f710

.thumb
branch_224f710: @ 224f710 :thumb
	bl      Function_224f5d8
	mov     r4, r0
.thumb
branch_224f716: @ 224f716 :thumb
	cmp     r4, #0x1
	bne     branch_224f720
	mov     r0, r5
	bl      free
.thumb
branch_224f720: @ 224f720 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x224f724

.thumb
Function_224f724: @ 224f724 :thumb
	push    {r3-r5,lr}
	ldr     r1, [pc, #0x30] @ 0x224f758, (=0x1cac)
	mov     r5, r0
	add     r4, r5, r1
	bl      Function_22510d0
	ldr     r1, [pc, #0x28] @ 0x224f75c, (=0x246)
	cmp     r0, r1
	bne     branch_224f74e
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	bl      Function_206b5d8
	cmp     r0, #0xd
	bne     branch_224f74e
	mov     r0, #0x1
	strh    r0, [r4, #0x6]
	mov     r0, #0xc
	strh    r0, [r4, #0x0]
.thumb
branch_224f74e: @ 224f74e :thumb
	mov     r0, #0x0
	mvn     r0, r0
	strh    r0, [r4, #0x2]
	pop     {r3-r5,pc}
@ 0x224f756


.align 2


.word 0x1cac @ 0x224f758
.word 0x246 @ 0x224f75c
.thumb
Function_224f760: @ 224f760 :thumb
	bx      lr
@ 0x224f762


.align 2, 0


.thumb
Function_224f764: @ 224f764 :thumb
	push    {r3-r7,lr}
	ldr     r1, [pc, #0x8c] @ 0x224f7f4, (=0x1cac)
	add     r4, r0, r1
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      Function_205eafc
	ldrh    r1, [r4, #0x6]
	cmp     r1, #0x0
	bne     branch_224f788
	ldr     r1, [r0, #0x4]
	mov     r0, #0x41
	lsl     r0, r0, #16
	sub     r0, r1, r0
	ldr     r1, [pc, #0x74] @ 0x224f7f8, (=0x12aaaa)
	blx     _s32_div_f
	strh    r0, [r4, #0x0]
.thumb
branch_224f788: @ 224f788 :thumb
	mov     r0, #0x0
	ldsh    r1, [r4, r0]
	cmp     r1, #0x0
	bge     branch_224f794
	strh    r0, [r4, #0x0]
	b       branch_224f79c
@ 0x224f794

.thumb
branch_224f794: @ 224f794 :thumb
	cmp     r1, #0xc
	ble     branch_224f79c
	mov     r0, #0xc
	strh    r0, [r4, #0x0]
.thumb
branch_224f79c: @ 224f79c :thumb
	mov     r7, #0x0
	mov     r0, #0x2
	ldsh    r1, [r4, r7]
	ldsh    r0, [r4, r0]
	cmp     r1, r0
	beq     branch_224f7f0
	mov     r6, r4
	add     r6, #0x28
	mov     r5, r4
.thumb
branch_224f7ae: @ 224f7ae :thumb
	ldrh    r0, [r5, #0x8]
	ldrh    r2, [r4, #0x0]
	ldr     r1, [pc, #0x48] @ 0x224f7fc, (=0x2084)
	mov     r3, r6
	bl      Function_224f86c
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1cb6 @ add r6, r6, #0x2
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r7, #0x10
	blt     branch_224f7ae
	mov     r5, r4
	mov     r7, #0x0
	add     r5, #0xe8
	mov     r6, r4
.thumb
branch_224f7cc: @ 224f7cc :thumb
	mov     r0, r6
	add     r0, #0x48
	ldrh    r0, [r0, #0x0]
	ldrh    r2, [r4, #0x0]
	ldr     r1, [pc, #0x28] @ 0x224f800, (=0x20c6)
	mov     r3, r5
	bl      Function_224f86c
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	.hword  0x1cb6 @ add r6, r6, #0x2
	cmp     r7, #0x50
	blt     branch_224f7cc
	mov     r0, #0x1
	strh    r0, [r4, #0x4]
	mov     r0, #0x0
	ldsh    r0, [r4, r0]
	strh    r0, [r4, #0x2]
.thumb
branch_224f7f0: @ 224f7f0 :thumb
	pop     {r3-r7,pc}
@ 0x224f7f2


.align 2


.word 0x1cac @ 0x224f7f4
.word 0x12aaaa @ 0x224f7f8
.word 0x2084 @ 0x224f7fc
.word 0x20c6 @ 0x224f800
.thumb
Function_224f804: @ 224f804 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x44] @ 0x224f850, (=0x1cac)
	add     r4, r5, r0
	ldrh    r0, [r4, #0x4]
	cmp     r0, #0x1
	bne     branch_224f84e
	mov     r1, r4
	mov     r0, #0x2
	add     r1, #0x28
	mov     r2, #0x20
	mov     r3, #0x0
	bl      Function_201972c
	mov     r0, #0x3
	lsl     r0, r0, #8
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_200a72c
	mov     r1, #0x1
	blx     Function_20a81fc
	mov     r5, r0
	mov     r0, r4
	add     r0, #0xe8
	mov     r1, #0xa0
	blx     DC_FlushRange
	mov     r0, r4
	add     r0, #0xe8
	mov     r1, r5
	mov     r2, #0xa0
	blx     GX_LoadOBJPltt
	mov     r0, #0x0
	strh    r0, [r4, #0x4]
.thumb
branch_224f84e: @ 224f84e :thumb
	pop     {r3-r5,pc}
@ 0x224f850

.word 0x1cac @ 0x224f850



.thumb
Function_224f854: @ 224f854 :thumb
	ldr     r2, [pc, #0x4] @ 0x224f85c, (=0x1cb2)
	strh    r1, [r0, r2]
	bx      lr
@ 0x224f85a


.align 2


.word 0x1cb2 @ 0x224f85c
.thumb
Function_224f860: @ 224f860 :thumb
	ldr     r2, [pc, #0x4] @ 0x224f868, (=0x1cac)
	strh    r1, [r0, r2]
	bx      lr
@ 0x224f866


.align 2


.word 0x1cac @ 0x224f868
.thumb
Function_224f86c: @ 224f86c :thumb
	push    {r0-r3}
	push    {r3-r6}
	mov     r1, r2
	mov     r0, r3
	add     r2, sp, #0x10
	add     r3, sp, #0x14
	cmp     r1, #0x10
	bls     branch_224f87e
	mov     r1, #0x10
.thumb
branch_224f87e: @ 224f87e :thumb
	ldrh    r4, [r2, #0x0]
	ldrh    r3, [r3, #0x0]
	lsl     r2, r4, #22
	lsr     r6, r2, #27
	lsl     r2, r4, #27
	lsr     r5, r2, #27
	lsl     r2, r4, #17
	lsl     r4, r3, #17
	lsr     r2, r2, #27
	lsr     r4, r4, #27
	sub     r4, r4, r2
	mul     r4, r1
	asr     r4, r4, #4
	add     r2, r2, r4
	lsl     r4, r2, #10
	lsl     r2, r3, #27
	lsl     r3, r3, #22
	lsr     r3, r3, #27
	lsr     r2, r2, #27
	sub     r3, r3, r6
	sub     r2, r2, r5
	mul     r2, r1
	mul     r3, r1
	asr     r1, r3, #4
	asr     r2, r2, #4
	add     r1, r6, r1
	add     r2, r5, r2
	lsl     r1, r1, #5
	orr     r1, r2
	orr     r1, r4
	strh    r1, [r0, #0x0]
	pop     {r3-r6}
	add     sp, #0x10
	bx      lr
@ 0x224f8c2


.align 2, 0


.thumb
Function_224f8c4: @ 224f8c4 :thumb
	push    {r4,r5}
	mov     r4, r1
	ldr     r1, [r4, #0x0]
	mov     r0, #0x18
	bic     r1, r0
	ldr     r0, [r2, #0x0]
	add     r5, r4, #0x4
	lsl     r0, r0, #30
	lsr     r0, r0, #27
	orr     r1, r0
	str     r1, [r4, #0x0]
	mov     r0, #0x2
	bic     r1, r0
	ldrh    r0, [r2, #0x4]
	lsl     r0, r0, #31
	lsr     r0, r0, #30
	orr     r0, r1
	str     r0, [r4, #0x0]
	mov     r0, #0xc
	ldsh    r0, [r2, r0]
	lsl     r0, r0, #12
	str     r0, [r4, #0x1c]
	mov     r0, #0xe
	ldsh    r0, [r2, r0]
	lsl     r0, r0, #12
	str     r0, [r4, #0x20]
	mov     r0, #0x10
	ldsh    r0, [r2, r0]
	lsl     r0, r0, #12
	str     r0, [r4, #0x24]
	mov     r0, #0x12
	ldsh    r0, [r2, r0]
	lsl     r0, r0, #16
	str     r0, [r4, #0x28]
	mov     r0, #0x14
	ldsh    r0, [r2, r0]
	lsl     r0, r0, #16
	str     r0, [r4, #0x2c]
	mov     r0, #0x16
	ldsh    r0, [r2, r0]
	add     r2, #0x18
	lsl     r0, r0, #16
	str     r0, [r4, #0x30]
	ldmia   r2!, {r0,r1}
	stmia   r5!, {r0,r1}
	ldr     r0, [r2, #0x0]
	add     r4, #0x34
	str     r0, [r5, #0x0]
	ldmia   r3!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r4, #0x0]
	pop     {r4,r5}
	bx      lr
@ 0x224f930

.thumb
Function_224f930: @ 224f930 :thumb
	push    {r3,r4}
	cmp     r1, #0x0
	beq     branch_224f940
	cmp     r1, #0x1
	beq     branch_224f948
	cmp     r1, #0x2
	beq     branch_224f950
	b       branch_224f956
@ 0x224f940

.thumb
branch_224f940: @ 224f940 :thumb
	mov     r1, r0
	add     r1, #0x40
	str     r1, [r0, #0x4c]
	b       branch_224f956
@ 0x224f948

.thumb
branch_224f948: @ 224f948 :thumb
	mov     r1, r0
	add     r1, #0x44
	str     r1, [r0, #0x4c]
	b       branch_224f956
@ 0x224f950

.thumb
branch_224f950: @ 224f950 :thumb
	mov     r1, r0
	add     r1, #0x48
	str     r1, [r0, #0x4c]
.thumb
branch_224f956: @ 224f956 :thumb
	mov     r4, #0x1
	ldr     r1, [r0, #0x4c]
	lsl     r4, r4, #12
	str     r4, [r1, #0x0]
	str     r2, [r0, #0x50]
	str     r3, [r0, #0x54]
	ldr     r2, [r0, #0x0]
	mov     r1, #0x4
	orr     r1, r2
	str     r1, [r0, #0x0]
	pop     {r3,r4}
	bx      lr
@ 0x224f96e


.align 2, 0


.thumb
Function_224f970: @ 224f970 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r2, [r4, #0x10]
	ldr     r1, [r4, #0x1c]
	cmp     r2, r1
	beq     branch_224f98a
	ldr     r1, [r4, #0x4]
	add     r1, r2, r1
	str     r1, [r4, #0x10]
	ldr     r2, [r4, #0x34]
	ldr     r1, [r4, #0x4]
	add     r1, r2, r1
	str     r1, [r4, #0x34]
.thumb
branch_224f98a: @ 224f98a :thumb
	ldr     r2, [r4, #0x14]
	ldr     r1, [r4, #0x20]
	cmp     r2, r1
	beq     branch_224f9a0
	ldr     r1, [r4, #0x8]
	add     r1, r2, r1
	str     r1, [r4, #0x14]
	ldr     r2, [r4, #0x38]
	ldr     r1, [r4, #0x8]
	add     r1, r2, r1
	str     r1, [r4, #0x38]
.thumb
branch_224f9a0: @ 224f9a0 :thumb
	ldr     r2, [r4, #0x18]
	ldr     r1, [r4, #0x24]
	cmp     r2, r1
	beq     branch_224f9b6
	ldr     r1, [r4, #0xc]
	add     r1, r2, r1
	str     r1, [r4, #0x18]
	ldr     r2, [r4, #0x3c]
	ldr     r1, [r4, #0xc]
	add     r1, r2, r1
	str     r1, [r4, #0x3c]
.thumb
branch_224f9b6: @ 224f9b6 :thumb
	ldr     r1, [r4, #0x0]
	lsl     r1, r1, #29
	lsr     r1, r1, #31
	beq     branch_224f9ec
	ldr     r3, [r4, #0x4c]
	ldr     r1, [r4, #0x50]
	ldr     r2, [r3, #0x0]
	add     r1, r2, r1
	str     r1, [r3, #0x0]
	ldr     r3, [r4, #0x4c]
	ldr     r1, [r4, #0x54]
	ldr     r2, [r3, #0x0]
	cmp     r2, r1
	blt     branch_224f9dc
	str     r1, [r3, #0x0]
	ldr     r1, [r4, #0x50]
	neg     r1, r1
	str     r1, [r4, #0x50]
	b       branch_224f9ec
@ 0x224f9dc

.thumb
branch_224f9dc: @ 224f9dc :thumb
	mov     r1, #0x1
	lsl     r1, r1, #12
	cmp     r2, r1
	bgt     branch_224f9ec
	str     r1, [r3, #0x0]
	ldr     r1, [r4, #0x50]
	neg     r1, r1
	str     r1, [r4, #0x50]
.thumb
branch_224f9ec: @ 224f9ec :thumb
	ldr     r1, [r4, #0x0]
	lsl     r2, r1, #31
	lsr     r2, r2, #31
	bne     branch_224fa3e
	ldr     r3, [r4, #0x10]
	ldr     r2, [r4, #0x28]
	cmp     r3, r2
	bne     branch_224fa3a
	ldr     r3, [r4, #0x14]
	ldr     r2, [r4, #0x2c]
	cmp     r3, r2
	bne     branch_224fa3a
	ldr     r3, [r4, #0x18]
	ldr     r2, [r4, #0x30]
	cmp     r3, r2
	bne     branch_224fa3a
	lsl     r1, r1, #30
	lsr     r1, r1, #31
	bne     branch_224fa1c
	mov     r1, #0x0
	mov     r2, #0x1
	bl      Function_224cc50
	b       branch_224fa24
@ 0x224fa1c

.thumb
branch_224fa1c: @ 224fa1c :thumb
	mov     r1, #0x0
	mov     r2, #0x2
	bl      Function_224cc50
.thumb
branch_224fa24: @ 224fa24 :thumb
	ldr     r2, [r4, #0x0]
	mov     r1, #0x1
	mov     r0, r2
	bic     r0, r1
	lsl     r1, r2, #31
	lsr     r1, r1, #31
	add     r2, r1, #0x1
	mov     r1, #0x1
	and     r1, r2
	orr     r0, r1
	str     r0, [r4, #0x0]
.thumb
branch_224fa3a: @ 224fa3a :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x224fa3e

.thumb
branch_224fa3e: @ 224fa3e :thumb
	ldr     r2, [r4, #0x1c]
	ldr     r1, [r4, #0x10]
	cmp     r1, r2
	bne     branch_224fa5a
	ldr     r5, [r4, #0x14]
	ldr     r3, [r4, #0x20]
	cmp     r5, r3
	bne     branch_224fa5a
	ldr     r5, [r4, #0x18]
	ldr     r3, [r4, #0x24]
	cmp     r5, r3
	bne     branch_224fa5a
	mov     r0, #0x3
	pop     {r3-r5,pc}
@ 0x224fa5a

.thumb
branch_224fa5a: @ 224fa5a :thumb
	ldr     r3, [r4, #0x0]
	lsl     r3, r3, #27
	lsr     r3, r3, #30
	beq     branch_224fa6c
	cmp     r3, #0x1
	beq     branch_224fa70
	cmp     r3, #0x2
	beq     branch_224fa78
	b       branch_224fa7e
@ 0x224fa6c

.thumb
branch_224fa6c: @ 224fa6c :thumb
	sub     r0, r2, r1
	b       branch_224fa7e
@ 0x224fa70

.thumb
branch_224fa70: @ 224fa70 :thumb
	ldr     r1, [r4, #0x20]
	ldr     r0, [r4, #0x14]
	sub     r0, r1, r0
	b       branch_224fa7e
@ 0x224fa78

.thumb
branch_224fa78: @ 224fa78 :thumb
	ldr     r1, [r4, #0x24]
	ldr     r0, [r4, #0x18]
	sub     r0, r1, r0
.thumb
branch_224fa7e: @ 224fa7e :thumb
	cmp     r0, #0x0
	bge     branch_224fa84
	neg     r0, r0
.thumb
branch_224fa84: @ 224fa84 :thumb
	mov     r1, #0x1
	lsl     r1, r1, #16
	sub     r0, r0, r1
	bne     branch_224fa90
	mov     r0, #0x2
	pop     {r3-r5,pc}
@ 0x224fa90

.thumb
branch_224fa90: @ 224fa90 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224fa94

.thumb
Function_224fa94: @ 224fa94 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	ldr     r0, [r0, #0x3c]
	bl      Function_205eb3c
	mov     r6, r0
	ldr     r0, [r4, #0x54]
	ldrh    r2, [r4, #0x4]
	asr     r1, r0, #4
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r1, r0, #12
	cmp     r2, #0x0
	bne     branch_224fadc
	mov     r0, #0x13
	mvn     r0, r0
	cmp     r1, r0
	bne     branch_224fadc
	ldr     r1, [pc, #0x74] @ 0x224fb34, (=0x2251e40)
	mov     r0, r5
	bl      Function_224a148
	mov     r2, #0x1f
	mov     r0, r5
	mov     r1, r6
	mvn     r2, r2
	mov     r3, #0x48
	bl      Function_224a4d0
	ldrh    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x4]
	b       branch_224fb0a
@ 0x224fadc

.thumb
branch_224fadc: @ 224fadc :thumb
	cmp     r2, #0x1
	bne     branch_224fb0a
	mov     r0, #0x23
	mvn     r0, r0
	cmp     r1, r0
	bne     branch_224fb0a
	mov     r0, r6
	mov     r1, #0x2
	bl      ChangeSpriteFaceDirection_WithCheck
	ldr     r1, [pc, #0x44] @ 0x224fb38, (=0x2251888)
	mov     r0, r5
	bl      Function_224a148
	mov     r0, r5
	mov     r1, r6
	mov     r2, #0x20
	mov     r3, #0x1f
	bl      Function_224a4d0
	ldrh    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x4]
.thumb
branch_224fb0a: @ 224fb0a :thumb
	ldrh    r0, [r4, #0x4]
	cmp     r0, #0x1
	bne     branch_224fb30
	mov     r0, #0x6
	ldsh    r1, [r4, r0]
	cmp     r1, #0x0
	blt     branch_224fb30
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, #0x6]
	ldsh    r0, [r4, r0]
	cmp     r0, #0x20
	blt     branch_224fb30
	mov     r0, r6
	mov     r1, #0x0
	bl      ChangeSpriteFaceDirection_WithCheck
	mov     r0, #0x0
	mvn     r0, r0
	strh    r0, [r4, #0x6]
.thumb
branch_224fb30: @ 224fb30 :thumb
	pop     {r4-r6,pc}
@ 0x224fb32


.align 2


.word 0x2251e40 @ 0x224fb34
.word 0x2251888 @ 0x224fb38
.thumb
Function_224fb3c: @ 224fb3c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r6, r0
	mov     r1, #0x98
	str     r2, [sp, #0x0]
	str     r3, [sp, #0x4]
	bl      Function_224e37c
	mov     r4, r0
	ldr     r0, [r6, #0x0]
	mov     r5, r4
	ldr     r0, [r0, #0x3c]
	add     r5, #0x40
	str     r0, [sp, #0x8]
	bl      Function_205eb3c
	mov     r7, r0
	add     r1, sp, #0x18
	bl      CopySprite70Struct
	mov     r0, r7
	mov     r1, #0x2
	bl      ChangeSpriteFaceDirection_WithCheck
	ldr     r2, [sp, #0x4]
	mov     r0, r6
	mov     r1, r5
	add     r3, sp, #0x18
	bl      Function_224f8c4
	ldr     r0, [r5, #0x4]
	mov     r3, #0x0
	asr     r0, r0, #1
	str     r0, [r5, #0x4]
	ldr     r0, [r5, #0x8]
	mov     r1, r7
	asr     r0, r0, #1
	str     r0, [r5, #0x8]
	ldr     r0, [r5, #0xc]
	mov     r2, #0x5a
	asr     r0, r0, #1
	str     r0, [r5, #0xc]
	mov     r0, #0x20
	strh    r0, [r4, #0x0]
	ldsh    r3, [r4, r3]
	mov     r0, r6
	bl      Function_224a4d0
	add     r1, sp, #0xc
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	str     r0, [r1, #0x4]
	str     r0, [r1, #0x8]
	mov     r0, r7
	bl      Function_20630ac
	ldr     r0, [sp, #0x8]
	bl      Function_205ec04
	mov     r6, r0
	bl      Function_5_21f88a8
	mov     r5, r0

	mov     r0, r6
	mov     r1, #0x2
	mov     r2, #0x5
	bl      Function_5_21f88b4

	mov     r0, r6
	mov     r1, #0x74
	bl      Function_5_21f88cc
	ldrh    r0, [r5, #0x0]
	mov     r1, #0x5a
	lsl     r1, r1, #8
	lsl     r0, r0, #12
	str     r0, [r4, #0xc]
	ldrh    r0, [r5, #0x2]
	lsl     r0, r0, #12
	str     r0, [r4, #0x10]
	ldrh    r0, [r5, #0x4]
	lsl     r0, r0, #12
	str     r0, [r4, #0x14]
	ldr     r0, [pc, #0x40] @ 0x224fc24, (=0xffffd300)
	str     r0, [r4, #0x18]
	str     r1, [r4, #0x1c]
	mov     r0, #0x0
	str     r0, [r4, #0x20]
	lsl     r0, r1, #4
	str     r0, [r4, #0x30]
	ldr     r0, [pc, #0x34] @ 0x224fc28, (=0xffffdd00)
	str     r0, [r4, #0x34]
	mov     r0, r6
	bl      Function_5_21f88fc
	mov     r2, #0x0
	str     r2, [r0, #0x0]
	mov     r1, #0x6
	str     r2, [r0, #0x4]
	lsl     r1, r1, #12
	str     r1, [r0, #0x8]
	str     r2, [r4, #0x24]
	mov     r0, #0x2
	str     r2, [r4, #0x28]
	lsl     r0, r0, #8
	str     r0, [r4, #0x2c]
	mov     r0, #0x5d
	lsl     r0, r0, #4
	bl      Function_2005748
	ldr     r0, [sp, #0x0]
	mov     r1, #0x1
	strh    r1, [r0, #0x0]
	mov     r0, #0x0
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x224fc24

.word 0xffffd300 @ 0x224fc24
.word 0xffffdd00 @ 0x224fc28
.thumb
Function_224fc2c: @ 224fc2c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r0
	ldr     r0, [r6, #0x0]
	str     r2, [sp, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      Function_205eb3c
	mov     r7, r0
	mov     r0, r6
	bl      Function_224e39c
	mov     r4, r0
	mov     r5, r4
	add     r5, #0x40
	mov     r0, r6
	mov     r1, r5
	bl      Function_224f970
	mov     r1, r5
	mov     r0, r7
	add     r1, #0x34
	bl      CopyToSprite70Struct
	mov     r0, r6
	mov     r1, r4
	bl      Function_224fa94
	ldr     r0, [r6, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      Function_205ec04
	str     r0, [sp, #0x4]
	bl      Function_5_21f88a8
	mov     r7, r0
	mov     r0, r4
	ldr     r1, [r4, #0x18]
	add     r0, #0xc
	bl      Function_2250f1c
	mov     r0, r4
	ldr     r1, [r4, #0x1c]
	add     r0, #0x10
	bl      Function_2250f1c
	mov     r0, r4
	ldr     r1, [r4, #0x20]
	add     r0, #0x14
	bl      Function_2250f1c
	ldr     r1, [r4, #0xc]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r0, r0, #12
	strh    r0, [r7, #0x0]
	ldr     r1, [r4, #0x10]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r0, r0, #12
	strh    r0, [r7, #0x2]
	ldr     r1, [r4, #0x14]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r0, r0, #12
	strh    r0, [r7, #0x4]
	mov     r0, r4
	ldr     r1, [r4, #0x34]
	add     r0, #0x30
	bl      Function_2250f1c
	ldr     r2, [r4, #0x30]
	ldr     r0, [sp, #0x4]
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	lsl     r1, r1, #4
	lsr     r1, r1, #16
	bl      Function_5_21f8908
	ldr     r0, [sp, #0x4]
	bl      Function_5_21f88fc
	ldr     r2, [r0, #0x0]
	ldr     r1, [r4, #0x24]
	add     r1, r2, r1
	str     r1, [r0, #0x0]
	ldr     r2, [r0, #0x4]
	ldr     r1, [r4, #0x28]
	add     r1, r2, r1
	str     r1, [r0, #0x4]
	ldr     r2, [r0, #0x8]
	ldr     r1, [r4, #0x2c]
	add     r1, r2, r1
	str     r1, [r0, #0x8]
	mov     r1, #0x0
	ldsh    r0, [r4, r1]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, #0x0]
	ldsh    r0, [r4, r1]
	cmp     r0, #0x0
	bne     branch_224fd64
	ldr     r0, [r5, #0x4]
	mov     r2, #0x1
	lsl     r0, r0, #1
	str     r0, [r5, #0x4]
	ldr     r0, [r5, #0x8]
	lsl     r2, r2, #10
	lsl     r0, r0, #1
	str     r0, [r5, #0x8]
	ldr     r0, [r5, #0xc]
	lsl     r3, r2, #4
	lsl     r0, r0, #1
	str     r0, [r5, #0xc]
	mov     r0, r5
	bl      Function_224f930
	ldr     r0, [r6, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      Function_205ec04
	bl      Function_5_21f88fc
	mov     r2, #0x0
	str     r2, [r0, #0x0]
	mov     r1, #0xa
	str     r2, [r0, #0x4]
	lsl     r1, r1, #12
	str     r1, [r0, #0x8]
	mov     r0, #0x46
	strh    r0, [r4, #0x8]
	sub     r0, #0x47
	strh    r0, [r4, #0xa]
	str     r2, [r4, #0x24]
	str     r2, [r4, #0x28]
	mov     r1, #0x8
	ldsh    r1, [r4, r1]
	ldr     r0, [pc, #0x24] @ 0x224fd6c, (=0xffff0000)
	blx     _s32_div_f
	str     r0, [r4, #0x2c]
	mov     r1, #0x8
	ldsh    r1, [r4, r1]
	ldr     r0, [pc, #0x1c] @ 0x224fd70, (=0xffffc000)
	blx     _s32_div_f
	str     r0, [r4, #0x3c]
	ldr     r0, [sp, #0x0]
	mov     r1, #0x2
	strh    r1, [r0, #0x0]
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224fd64

.thumb
branch_224fd64: @ 224fd64 :thumb
	mov     r0, r1
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x224fd6a


.align 2


.word 0xffff0000 @ 0x224fd6c
.word 0xffffc000 @ 0x224fd70
.thumb
Function_224fd74: @ 224fd74 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r6, r0
	ldr     r0, [r6, #0x0]
	str     r2, [sp, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      Function_205ec04
	str     r0, [sp, #0x8]
	ldr     r0, [r6, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      Function_205eb3c
	str     r0, [sp, #0x4]
	mov     r0, r6
	bl      Function_224e39c
	mov     r4, r0
	mov     r7, r4
	add     r7, #0x40
	mov     r0, r6
	mov     r1, r7
	bl      Function_224f970
	str     r0, [sp, #0xc]
	mov     r1, r7
	ldr     r0, [sp, #0x4]
	add     r1, #0x34
	bl      CopyToSprite70Struct
	mov     r3, r7
	add     r3, #0x40
	add     r2, sp, #0x10
	ldmia   r3!, {r0,r1}
	mov     r5, r2
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	ldr     r1, [sp, #0x10]
	ldr     r0, [r4, #0x38]
	add     r0, r1, r0
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	bl      Function_2063088
	mov     r0, r6
	mov     r1, r4
	bl      Function_224fa94
	ldr     r0, [sp, #0x8]
	bl      Function_5_21f88fc
	mov     r5, r0
	ldr     r0, [sp, #0x8]
	bl      Function_5_21f88f0
	add     r7, #0x40
	mov     r2, r0
	ldmia   r7!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r7, #0x0]
	str     r0, [r2, #0x0]
	ldrh    r0, [r4, #0x4]
	cmp     r0, #0x1
	bne     branch_224fe26
	mov     r0, #0x8
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	ble     branch_224fe82
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, #0x8]
	ldr     r1, [r5, #0x0]
	ldr     r0, [r4, #0x24]
	add     r0, r1, r0
	str     r0, [r5, #0x0]
	ldr     r1, [r5, #0x4]
	ldr     r0, [r4, #0x28]
	add     r0, r1, r0
	str     r0, [r5, #0x4]
	ldr     r1, [r5, #0x8]
	ldr     r0, [r4, #0x2c]
	add     r0, r1, r0
	str     r0, [r5, #0x8]
	ldr     r1, [r4, #0x38]
	ldr     r0, [r4, #0x3c]
	add     r0, r1, r0
	str     r0, [r4, #0x38]
	b       branch_224fe82
@ 0x224fe26

.thumb
branch_224fe26: @ 224fe26 :thumb
	cmp     r0, #0x2
	bne     branch_224fe82
	mov     r1, #0xa
	ldsh    r0, [r4, r1]
	cmp     r0, #0x0
	bge     branch_224fe56
	mov     r0, #0x1e
	strh    r0, [r4, #0xa]
	mov     r0, #0x0
	str     r0, [r4, #0x24]
	str     r0, [r4, #0x28]
	mov     r0, #0x6
	ldsh    r1, [r4, r1]
	lsl     r0, r0, #12
	blx     _s32_div_f
	str     r0, [r4, #0x2c]
	mov     r1, #0xa
	mov     r0, #0x1
	ldsh    r1, [r4, r1]
	lsl     r0, r0, #14
	blx     _s32_div_f
	str     r0, [r4, #0x3c]
.thumb
branch_224fe56: @ 224fe56 :thumb
	mov     r0, #0xa
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	ble     branch_224fe82
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, #0xa]
	ldr     r1, [r5, #0x0]
	ldr     r0, [r4, #0x24]
	add     r0, r1, r0
	str     r0, [r5, #0x0]
	ldr     r1, [r5, #0x4]
	ldr     r0, [r4, #0x28]
	add     r0, r1, r0
	str     r0, [r5, #0x4]
	ldr     r1, [r5, #0x8]
	ldr     r0, [r4, #0x2c]
	add     r0, r1, r0
	str     r0, [r5, #0x8]
	ldr     r1, [r4, #0x38]
	ldr     r0, [r4, #0x3c]
	add     r0, r1, r0
	str     r0, [r4, #0x38]
branch_224fe82: @ 224fe82 :thumb
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x2
	bne     branch_224febe
	mov     r0, #0x10
	strh    r0, [r4, #0x0]
	mov     r3, #0x0
	ldsh    r3, [r4, r3]
	ldr     r1, [sp, #0x4]
	mov     r0, r6
	mov     r2, #0x5a
	bl      Function_224a4d0
	ldr     r0, [pc, #0x34] @ 0x224fed0, (=0xffffa600)
	mov     r1, #0x20
	str     r0, [r4, #0x18]
	mov     r0, #0x0
	str     r0, [r4, #0x1c]
	str     r0, [r4, #0x20]
	str     r0, [r4, #0x24]
	str     r0, [r4, #0x28]
	ldr     r0, [pc, #0x28] @ 0x224fed4, (=0xfffff900)
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0x28] @ 0x224fed8, (=0xffff9200)
	str     r0, [r4, #0x34]
	ldr     r0, [sp, #0x8]
	bl      Function_5_21f88dc
	ldr     r0, [sp, #0x0]
	mov     r1, #0x3
	strh    r1, [r0, #0x0]
branch_224febe: @ 224febe :thumb
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x3
	bne     branch_224fec8
	bl      ErrorHandling
branch_224fec8: @ 224fec8 :thumb

	mov     r0, #0x0
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x224fece


.align 2


.word 0xffffa600 @ 0x224fed0
.word 0xfffff900 @ 0x224fed4
.word 0xffff9200 @ 0x224fed8
.thumb
Function_224fedc: @ 224fedc :thumb
	push    {r4-r7,lr}
	add     sp, #-0x34
	mov     r6, r0
	ldr     r0, [r6, #0x0]
	str     r2, [sp, #0x4]
	ldr     r0, [r0, #0x3c]
	str     r3, [sp, #0x8]
	bl      Function_205ec04
	mov     r7, r0
	ldr     r0, [r6, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      Function_205eb3c
	mov     r5, r0
	mov     r0, r6
	bl      Function_224e39c
	mov     r4, r0
	str     r0, [sp, #0x10]
	add     r0, #0x40
	str     r0, [sp, #0x10]
	ldr     r1, [sp, #0x10]
	mov     r0, r6
	bl      Function_224f970
	ldr     r1, [sp, #0x10]
	str     r0, [sp, #0x14]
	mov     r0, r5
	add     r1, #0x34
	bl      CopyToSprite70Struct
	ldr     r1, [sp, #0x10]
	mov     r0, r5
	add     r1, #0x40
	str     r1, [sp, #0x10]
	bl      Function_2063088
	mov     r0, r6
	mov     r1, r4
	bl      Function_224fa94
	mov     r0, r7
	bl      Function_5_21f88a8
	str     r0, [sp, #0x18]
	mov     r0, r4
	ldr     r1, [r4, #0x18]
	add     r0, #0xc
	bl      Function_2250f1c
	mov     r0, r4
	ldr     r1, [r4, #0x1c]
	add     r0, #0x10
	bl      Function_2250f1c
	mov     r0, r4
	ldr     r1, [r4, #0x20]
	add     r0, #0x14
	bl      Function_2250f1c
	ldr     r1, [r4, #0xc]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r1, r0, #12
	ldr     r0, [sp, #0x18]
	strh    r1, [r0, #0x0]
	ldr     r1, [r4, #0x10]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r1, r0, #12
	ldr     r0, [sp, #0x18]
	strh    r1, [r0, #0x2]
	ldr     r1, [r4, #0x14]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r1, r0, #12
	ldr     r0, [sp, #0x18]
	strh    r1, [r0, #0x4]
	mov     r0, r4
	ldr     r1, [r4, #0x34]
	add     r0, #0x30
	bl      Function_2250f1c
	ldr     r1, [r4, #0x30]
	mov     r0, r7
	asr     r2, r1, #11
	lsr     r2, r2, #20
	add     r2, r1, r2
	lsl     r1, r2, #4
	lsr     r1, r1, #16
	bl      Function_5_21f8908
	mov     r0, r7
	bl      Function_5_21f88fc
	ldr     r2, [r0, #0x0]
	ldr     r1, [r4, #0x24]
	add     r1, r2, r1
	str     r1, [r0, #0x0]
	ldr     r2, [r0, #0x4]
	ldr     r1, [r4, #0x28]
	add     r1, r2, r1
	str     r1, [r0, #0x4]
	add     r0, #0x8
	ldr     r2, [r0, #0x0]
	ldr     r1, [r4, #0x2c]
	add     r1, r2, r1
	str     r1, [r0, #0x0]
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x3
	beq     branch_224ffc4
	b       branch_22500d0
@ 0x224ffc4

.thumb
branch_224ffc4: @ 224ffc4 :thumb
	add     r1, sp, #0x28
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	str     r0, [r1, #0x4]
	str     r0, [r1, #0x8]
	mov     r0, r5
	bl      LoadSpritePositionX
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x8]
	mov     r1, #0x6
	ldsh    r4, [r0, r1]
	mov     r0, r5
	bl      LoadSpritePositionZ
	ldr     r1, [sp, #0x8]
	mov     r2, #0x8
	ldsh    r1, [r1, r2]
	lsl     r1, r1, #1
	add     r0, r1, r0
	str     r0, [sp, #0xc]
	mov     r0, r5
	bl      LoadSpritePositionY
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x8]
	mov     r1, #0xa
	ldsh    r0, [r0, r1]
	ldr     r1, [sp, #0x1c]
	str     r0, [sp, #0x24]
	mov     r0, r5
	add     r1, r4, r1
	bl      SaveSpritePositionX
	ldr     r1, [sp, #0xc]
	mov     r0, r5
	bl      SaveSpritePositionZ
	ldr     r2, [sp, #0x24]
	ldr     r1, [sp, #0x20]
	mov     r0, r5
	add     r1, r2, r1
	bl      SaveSpritePositionY
	mov     r0, r5
	bl      CopySpritePositionsFromOldToNew
	mov     r0, r5
	mov     r1, #0x2
	bl      ChangeSpriteFaceDirection_WithCheck
	mov     r0, r5
	mov     r1, #0x2
	bl      ChangeSpriteFace2Direction
	mov     r0, r5
	add     r1, sp, #0x28
	bl      Function_2063088
	mov     r0, r5
	add     r1, sp, #0x28
	bl      Function_20630ac
	ldr     r2, [sp, #0xc]
	ldr     r1, [sp, #0x1c]
	lsr     r3, r2, #31
	add     r3, r2, r3
	add     r1, r4, r1
	asr     r2, r3, #1
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	ldr     r4, [sp, #0x24]
	ldr     r3, [sp, #0x20]
	mov     r0, r6
	add     r3, r4, r3
	bl      Function_224c378
	ldr     r0, [r6, #0x0]
	mov     r1, #0x1
	ldr     r0, [r0, #0x3c]
	bl      Function_205f098
	mov     r0, r5
	mov     r1, #0x0
	bl      SetUnsetSpriteFlags800000
	mov     r0, r7
	bl      Function_5_21f88fc
	add     r2, sp, #0x28
	mov     r3, r0
	ldmia   r2!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r2, #0x0]
	str     r0, [r3, #0x0]
	mov     r0, r7
	bl      Function_5_21f88f0
	add     r2, sp, #0x28
	mov     r3, r0
	ldmia   r2!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r2, #0x0]
	ldr     r1, [pc, #0x44] @ 0x22500d8, (=0x10e)
	str     r0, [r3, #0x0]
	mov     r0, r7
	bl      Function_5_21f8908
	mov     r0, r7
	mov     r1, #0x2
	mov     r2, #0x1
	bl      Function_5_21f88b4
	mov     r0, r7
	mov     r1, #0x74
	bl      Function_5_21f88dc
	mov     r0, #0x5d
	lsl     r0, r0, #4
	mov     r1, #0x0
	bl      Function_20057a4
	ldr     r0, [sp, #0x4]
	mov     r1, #0x4
	strh    r1, [r0, #0x0]
	mov     r0, r6
	mov     r1, #0x7
	bl      Function_2249d70
	ldr     r1, [pc, #0x14] @ 0x22500dc, (=0x243)
	mov     r0, r6
	mov     r2, #0x0
	bl      Function_224dda0
.thumb
branch_22500d0: @ 22500d0 :thumb
	mov     r0, #0x0
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x22500d6


.align 2


.word 0x10e @ 0x22500d8
.word 0x243 @ 0x22500dc
.thumb
Function_22500e0: @ 22500e0 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	ldr     r1, [pc, #0x4c] @ 0x2250134, (=0x2251290)
	mov     r4, r0
	ldr     r2, [r1, #0x10]
	ldr     r1, [r1, #0x14]
	str     r2, [sp, #0x0]
	str     r1, [sp, #0x4]
	bl      Function_224e39c
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      Function_205eb3c
	mov     r4, r0
	bl      IsSpriteMovable
	cmp     r0, #0x0
	bne     branch_225010e
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x225010e

.thumb
branch_225010e: @ 225010e :thumb
	ldrh    r1, [r5, #0x2]
	cmp     r1, #0x2
	bcc     branch_225011a
	add     sp, #0x8
	mov     r0, #0x2
	pop     {r3-r5,pc}
@ 0x225011a

.thumb
branch_225011a: @ 225011a :thumb
	lsl     r2, r1, #2
	add     r1, sp, #0x0
	ldr     r1, [r1, r2]
	mov     r0, r4
	bl      Function_2065638
	ldrh    r0, [r5, #0x2]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x2]
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2250132


.align 2


.word 0x2251290 @ 0x2250134
.thumb
Function_2250138: @ 2250138 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	ldr     r0, [r0, #0x3c]
	bl      Function_205eb3c
	ldr     r0, [r4, #0x48]
	asr     r1, r0, #4
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r1, r0, #12
	ldrh    r0, [r4, #0x4]
	cmp     r0, #0x0
	bne     branch_225016a
	cmp     r1, #0x14
	bne     branch_225016a
	ldr     r1, [pc, #0xc] @ 0x225016c, (=0x2251c48)
	mov     r0, r5
	bl      Function_224a148
	ldrh    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x4]
.thumb
branch_225016a: @ 225016a :thumb
	pop     {r3-r5,pc}
@ 0x225016c

.word 0x2251c48 @ 0x225016c
.thumb
Function_2250170: @ 2250170 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r6, r0
	mov     r1, #0x8c
	str     r2, [sp, #0x0]
	str     r3, [sp, #0x4]
	bl      Function_224e37c
	mov     r4, r0
	ldr     r0, [r6, #0x0]
	mov     r5, r4
	ldr     r0, [r0, #0x3c]
	add     r5, #0x34
	str     r0, [sp, #0x8]
	bl      Function_205eb3c
	mov     r7, r0
	add     r1, sp, #0x18
	bl      CopySprite70Struct
	mov     r0, r7
	mov     r1, #0x3
	bl      ChangeSpriteFaceDirection_WithCheck
	ldr     r2, [sp, #0x4]
	mov     r0, r6
	mov     r1, r5
	add     r3, sp, #0x18
	bl      Function_224f8c4
	ldr     r0, [r5, #0x4]
	mov     r2, #0x4
	asr     r0, r0, #1
	str     r0, [r5, #0x4]
	ldr     r0, [r5, #0x8]
	mov     r3, #0x0
	asr     r0, r0, #1
	str     r0, [r5, #0x8]
	ldr     r0, [r5, #0xc]
	mov     r1, r7
	asr     r0, r0, #1
	str     r0, [r5, #0xc]
	strh    r2, [r4, #0x0]
	ldsh    r3, [r4, r3]
	mov     r0, r6
	sub     r2, #0x5e
	bl      Function_224a4d0
	add     r1, sp, #0xc
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	str     r0, [r1, #0x4]
	str     r0, [r1, #0x8]
	mov     r0, r7
	bl      Function_20630ac
	ldr     r0, [sp, #0x8]
	bl      Function_205ec04
	mov     r6, r0
	bl      Function_5_21f88a8
	mov     r5, r0
	mov     r0, r6
	mov     r1, #0x3
	mov     r2, #0x1
	bl      Function_5_21f88b4
	mov     r0, r6
	mov     r1, #0x74
	bl      Function_5_21f88cc
	ldrh    r0, [r5, #0x0]
	lsl     r0, r0, #12
	str     r0, [r4, #0x8]
	ldrh    r0, [r5, #0x2]
	lsl     r0, r0, #12
	str     r0, [r4, #0xc]
	ldrh    r0, [r5, #0x4]
	lsl     r0, r0, #12
	str     r0, [r4, #0x10]
	ldr     r0, [pc, #0x40] @ 0x2250254, (=0xfffe9800)
	str     r0, [r4, #0x14]
	mov     r0, #0x2d
	lsl     r0, r0, #12
	str     r0, [r4, #0x18]
	mov     r0, #0x0
	str     r0, [r4, #0x1c]
	ldr     r0, [pc, #0x34] @ 0x2250258, (=0x10e000)
	str     r0, [r4, #0x2c]
	mov     r0, #0x6e
	lsl     r0, r0, #10
	str     r0, [r4, #0x30]
	mov     r0, r6
	bl      Function_5_21f88fc
	mov     r2, #0x0
	str     r2, [r0, #0x0]
	ldr     r1, [pc, #0x24] @ 0x225025c, (=0xffff9000)
	str     r2, [r0, #0x4]
	str     r1, [r0, #0x8]
	str     r2, [r4, #0x20]
	mov     r0, #0x5d
	str     r2, [r4, #0x24]
	lsl     r0, r0, #4
	str     r2, [r4, #0x28]
	bl      Function_2005748
	ldr     r0, [sp, #0x0]
	mov     r1, #0x1
	strh    r1, [r0, #0x0]
	mov     r0, #0x0
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x2250254

.word 0xfffe9800 @ 0x2250254
.word 0x10e000 @ 0x2250258
.word 0xffff9000 @ 0x225025c
.thumb
Function_2250260: @ 2250260 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r0
	ldr     r0, [r6, #0x0]
	str     r2, [sp, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      Function_205eb3c
	mov     r7, r0
	mov     r0, r6
	bl      Function_224e39c
	mov     r4, r0
	mov     r5, r4
	add     r5, #0x34
	mov     r0, r6
	mov     r1, r5
	bl      Function_224f970
	mov     r1, r5
	mov     r0, r7
	add     r1, #0x34
	bl      CopyToSprite70Struct
	mov     r0, r6
	mov     r1, r4
	bl      Function_2250138
	ldr     r0, [r6, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      Function_205ec04
	str     r0, [sp, #0x4]
	bl      Function_5_21f88a8
	mov     r7, r0
	mov     r0, r4
	ldr     r1, [r4, #0x14]
	add     r0, #0x8
	bl      Function_2250f1c
	mov     r0, r4
	ldr     r1, [r4, #0x18]
	add     r0, #0xc
	bl      Function_2250f1c
	mov     r0, r4
	ldr     r1, [r4, #0x1c]
	add     r0, #0x10
	bl      Function_2250f1c
	ldr     r1, [r4, #0x8]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r0, r0, #12
	strh    r0, [r7, #0x0]
	ldr     r1, [r4, #0xc]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r0, r0, #12
	strh    r0, [r7, #0x2]
	ldr     r1, [r4, #0x10]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r0, r0, #12
	strh    r0, [r7, #0x4]
	mov     r0, r4
	ldr     r1, [r4, #0x30]
	add     r0, #0x2c
	bl      Function_2250f1c
	ldr     r2, [r4, #0x2c]
	ldr     r0, [sp, #0x4]
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	lsl     r1, r1, #4
	lsr     r1, r1, #16
	bl      Function_5_21f8908
	ldr     r0, [sp, #0x4]
	bl      Function_5_21f88fc
	ldr     r2, [r0, #0x0]
	ldr     r1, [r4, #0x20]
	add     r1, r2, r1
	str     r1, [r0, #0x0]
	ldr     r2, [r0, #0x4]
	ldr     r1, [r4, #0x24]
	add     r1, r2, r1
	str     r1, [r0, #0x4]
	ldr     r2, [r0, #0x8]
	ldr     r1, [r4, #0x28]
	add     r1, r2, r1
	str     r1, [r0, #0x8]
	mov     r1, #0x0
	ldsh    r0, [r4, r1]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, #0x0]
	ldsh    r0, [r4, r1]
	cmp     r0, #0x0
	bne     branch_225037c
	ldr     r0, [r5, #0x4]
	mov     r2, #0x2
	lsl     r0, r0, #1
	str     r0, [r5, #0x4]
	ldr     r0, [r5, #0x8]
	lsl     r2, r2, #8
	lsl     r0, r0, #1
	str     r0, [r5, #0x8]
	ldr     r0, [r5, #0xc]
	lsl     r3, r2, #5
	lsl     r0, r0, #1
	str     r0, [r5, #0xc]
	mov     r0, r5
	bl      Function_224f930
	ldr     r0, [r6, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      Function_205ec04
	bl      Function_5_21f88fc
	mov     r2, #0x0
	str     r2, [r0, #0x0]
	ldr     r1, [pc, #0x20] @ 0x2250384, (=0xffff9000)
	str     r2, [r0, #0x4]
	str     r1, [r0, #0x8]
	str     r2, [r4, #0x20]
	mov     r0, #0x11
	str     r2, [r4, #0x24]
	lsl     r0, r0, #8
	str     r0, [r4, #0x28]
	ldr     r0, [sp, #0x0]
	mov     r1, #0x2
	strh    r1, [r0, #0x0]
	add     sp, #0x8
	mov     r0, r2
	pop     {r3-r7,pc}
@ 0x225037c

.thumb
branch_225037c: @ 225037c :thumb
	mov     r0, r1
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2250382


.align 2


.word 0xffff9000 @ 0x2250384
.thumb
Function_2250388: @ 2250388 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	str     r2, [sp, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      Function_205ec04
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      Function_205eb3c
	str     r0, [sp, #0x4]
	mov     r0, r5
	bl      Function_224e39c
	mov     r4, r0
	mov     r6, r4
	add     r6, #0x34
	mov     r0, r5
	mov     r1, r6
	bl      Function_224f970
	mov     r7, r0
	mov     r1, r6
	ldr     r0, [sp, #0x4]
	add     r1, #0x34
	bl      CopyToSprite70Struct
	mov     r1, r6
	ldr     r0, [sp, #0x4]
	add     r1, #0x40
	bl      Function_2063088
	mov     r0, r5
	mov     r1, r4
	bl      Function_2250138
	ldr     r0, [sp, #0x8]
	bl      Function_5_21f88f0
	add     r6, #0x40
	mov     r2, r0
	ldmia   r6!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r6, #0x0]
	str     r0, [r2, #0x0]
	ldrh    r0, [r4, #0x4]
	cmp     r0, #0x1
	bne     branch_2250416
	ldr     r0, [sp, #0x8]
	bl      Function_5_21f88fc
	mov     r1, #0xa
	ldr     r2, [r0, #0x8]
	lsl     r1, r1, #12
	cmp     r2, r1
	bge     branch_2250416
	ldr     r2, [r0, #0x0]
	ldr     r1, [r4, #0x20]
	add     r1, r2, r1
	str     r1, [r0, #0x0]
	ldr     r2, [r0, #0x4]
	ldr     r1, [r4, #0x24]
	add     r1, r2, r1
	str     r1, [r0, #0x4]
	ldr     r2, [r0, #0x8]
	ldr     r1, [r4, #0x28]
	add     r1, r2, r1
	str     r1, [r0, #0x8]
.thumb
branch_2250416: @ 2250416 :thumb
	cmp     r7, #0x2
	bne     branch_2250454
	mov     r2, #0x2
	strh    r2, [r4, #0x0]
	mov     r3, #0x0
	ldsh    r3, [r4, r3]
	ldr     r1, [sp, #0x4]
	mov     r0, r5
	sub     r2, #0x5c
	bl      Function_224a4d0
	mov     r0, #0x2d
	lsl     r0, r0, #12
	str     r0, [r4, #0x14]
	mov     r0, #0x0
	str     r0, [r4, #0x18]
	str     r0, [r4, #0x1c]
	str     r0, [r4, #0x20]
	str     r0, [r4, #0x24]
	ldr     r0, [pc, #0x24] @ 0x2250464, (=0xffffe000)
	mov     r1, #0x20
	str     r0, [r4, #0x28]
	mov     r0, #0x23
	lsl     r0, r0, #12
	str     r0, [r4, #0x30]
	ldr     r0, [sp, #0x8]
	bl      Function_5_21f88dc
	ldr     r0, [sp, #0x0]
	mov     r1, #0x3
	strh    r1, [r0, #0x0]
.thumb
branch_2250454: @ 2250454 :thumb
	cmp     r7, #0x3
	bne     branch_225045c
	bl      ErrorHandling
.thumb
branch_225045c: @ 225045c :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2250462


.align 2


.word 0xffffe000 @ 0x2250464
.thumb
Function_2250468: @ 2250468 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x34
	mov     r6, r0
	ldr     r0, [r6, #0x0]
	str     r2, [sp, #0x4]
	ldr     r0, [r0, #0x3c]
	str     r3, [sp, #0x8]
	bl      Function_205ec04
	mov     r7, r0
	ldr     r0, [r6, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      Function_205eb3c
	mov     r5, r0
	mov     r0, r6
	bl      Function_224e39c
	mov     r4, r0
	str     r0, [sp, #0x10]
	add     r0, #0x34
	str     r0, [sp, #0x10]
	ldr     r1, [sp, #0x10]
	mov     r0, r6
	bl      Function_224f970
	ldr     r1, [sp, #0x10]
	str     r0, [sp, #0x14]
	mov     r0, r5
	add     r1, #0x34
	bl      CopyToSprite70Struct
	ldr     r1, [sp, #0x10]
	mov     r0, r5
	add     r1, #0x40
	str     r1, [sp, #0x10]
	bl      Function_2063088
	mov     r0, r6
	mov     r1, r4
	bl      Function_2250138
	mov     r0, r7
	bl      Function_5_21f88a8
	str     r0, [sp, #0x18]
	mov     r0, r4
	ldr     r1, [r4, #0x14]
	add     r0, #0x8
	bl      Function_2250f1c
	mov     r0, r4
	ldr     r1, [r4, #0x18]
	add     r0, #0xc
	bl      Function_2250f1c
	mov     r0, r4
	ldr     r1, [r4, #0x1c]
	add     r0, #0x10
	bl      Function_2250f1c
	ldr     r1, [r4, #0x8]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r1, r0, #12
	ldr     r0, [sp, #0x18]
	strh    r1, [r0, #0x0]
	ldr     r1, [r4, #0xc]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r1, r0, #12
	ldr     r0, [sp, #0x18]
	strh    r1, [r0, #0x2]
	ldr     r1, [r4, #0x10]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r1, r0, #12
	ldr     r0, [sp, #0x18]
	strh    r1, [r0, #0x4]
	mov     r0, r4
	ldr     r1, [r4, #0x30]
	add     r0, #0x2c
	bl      Function_2250f1c
	ldr     r1, [r4, #0x2c]
	mov     r0, r7
	asr     r2, r1, #11
	lsr     r2, r2, #20
	add     r2, r1, r2
	lsl     r1, r2, #4
	lsr     r1, r1, #16
	bl      Function_5_21f8908
	mov     r0, r7
	bl      Function_5_21f88fc
	ldr     r2, [r0, #0x0]
	ldr     r1, [r4, #0x20]
	add     r1, r2, r1
	str     r1, [r0, #0x0]
	ldr     r2, [r0, #0x4]
	ldr     r1, [r4, #0x24]
	add     r1, r2, r1
	str     r1, [r0, #0x4]
	add     r0, #0x8
	ldr     r2, [r0, #0x0]
	ldr     r1, [r4, #0x28]
	add     r1, r2, r1
	str     r1, [r0, #0x0]
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x3
	bne     branch_2250648
	add     r1, sp, #0x28
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	str     r0, [r1, #0x4]
	str     r0, [r1, #0x8]
	mov     r0, r5
	bl      LoadSpritePositionX
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x8]
	mov     r1, #0x6
	ldsh    r4, [r0, r1]
	mov     r0, r5
	bl      LoadSpritePositionZ
	ldr     r1, [sp, #0x8]
	mov     r2, #0x8
	ldsh    r1, [r1, r2]
	lsl     r1, r1, #1
	add     r0, r1, r0
	str     r0, [sp, #0xc]
	mov     r0, r5
	bl      LoadSpritePositionY
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x8]
	mov     r1, #0xa
	ldsh    r0, [r0, r1]
	ldr     r1, [sp, #0x1c]
	str     r0, [sp, #0x24]
	mov     r0, r5
	add     r1, r4, r1
	bl      SaveSpritePositionX
	ldr     r1, [sp, #0xc]
	mov     r0, r5
	bl      SaveSpritePositionZ
	ldr     r2, [sp, #0x24]
	ldr     r1, [sp, #0x20]
	mov     r0, r5
	add     r1, r2, r1
	bl      SaveSpritePositionY
	mov     r0, r5
	bl      CopySpritePositionsFromOldToNew
	mov     r0, r5
	mov     r1, #0x3
	bl      ChangeSpriteFaceDirection_WithCheck
	mov     r0, r5
	mov     r1, #0x3
	bl      ChangeSpriteFace2Direction
	mov     r0, r5
	add     r1, sp, #0x28
	bl      Function_2063088
	mov     r0, r5
	add     r1, sp, #0x28
	bl      Function_20630ac
	ldr     r2, [sp, #0xc]
	ldr     r1, [sp, #0x1c]
	lsr     r3, r2, #31
	add     r3, r2, r3
	add     r1, r4, r1
	asr     r2, r3, #1
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	ldr     r4, [sp, #0x24]
	ldr     r3, [sp, #0x20]
	mov     r0, r6
	add     r3, r4, r3
	bl      Function_224c378
	ldr     r0, [r6, #0x0]
	mov     r1, #0x5
	ldr     r0, [r0, #0x3c]
	bl      Function_205f098
	mov     r0, r5
	mov     r1, #0x1
	bl      SetUnsetSpriteFlags800000
	mov     r0, r7
	bl      Function_5_21f88fc
	add     r2, sp, #0x28
	mov     r3, r0
	ldmia   r2!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r2, #0x0]
	str     r0, [r3, #0x0]
	mov     r0, r7
	bl      Function_5_21f88f0
	add     r2, sp, #0x28
	mov     r3, r0
	ldmia   r2!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r2, #0x0]
	mov     r1, #0x5a
	str     r0, [r3, #0x0]
	mov     r0, r7
	bl      Function_5_21f8908
	mov     r0, r7
	mov     r1, #0x3
	mov     r2, #0x5
	bl      Function_5_21f88b4
	mov     r0, r7
	mov     r1, #0x74
	bl      Function_5_21f88dc
	mov     r0, #0x5d
	lsl     r0, r0, #4
	mov     r1, #0x0
	bl      Function_20057a4
	ldr     r0, [sp, #0x4]
	mov     r1, #0x4
	strh    r1, [r0, #0x0]
branch_2250648: @ 2250648 :thumb
	mov     r0, #0x0
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x225064e


.align 2, 0


.thumb
Function_2250650: @ 2250650 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	ldr     r3, [pc, #0x50] @ 0x22506a8, (=0x2251390)
	mov     r4, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x0
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	mov     r0, r4
	bl      Function_224e39c
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      Function_205eb3c
	mov     r4, r0
	bl      IsSpriteMovable
	cmp     r0, #0x0
	bne     branch_2250682
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r4,r5,pc}
@ 0x2250682

.thumb
branch_2250682: @ 2250682 :thumb
	ldrh    r1, [r5, #0x2]
	cmp     r1, #0x3
	bcc     branch_225068e
	add     sp, #0xc
	mov     r0, #0x2
	pop     {r4,r5,pc}
@ 0x225068e

.thumb
branch_225068e: @ 225068e :thumb
	lsl     r2, r1, #2
	add     r1, sp, #0x0
	ldr     r1, [r1, r2]
	mov     r0, r4
	bl      Function_2065638
	ldrh    r0, [r5, #0x2]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x2]
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x22506a6


.align 2


.word 0x2251390 @ 0x22506a8
.thumb
Function_22506ac: @ 22506ac :thumb
	push    {r4,lr}
	mov     r0, r1
	ldr     r1, [r3, #0x0]
	mov     r4, r2
	lsl     r1, r1, #16
	mov     r2, #0x0
	lsr     r1, r1, #16
	mov     r3, r2
	bl      Function_203e8e0
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22506ca


.align 2, 0


.thumb
Function_22506cc: @ 22506cc :thumb
	mov     r0, #0x2
	bx      lr
@ 0x22506d0

.thumb
Function_22506d0: @ 22506d0 :thumb
	push    {r4,lr}
	ldr     r0, [r0, #0x0]
	mov     r4, r3
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	ldr     r1, [r4, #0x0]
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	bl      Function_206b5e8
	mov     r0, #0x2
	pop     {r4,pc}
@ 0x22506ea


.align 2, 0


.thumb
Function_22506ec: @ 22506ec :thumb
	push    {r4,lr}
	ldr     r0, [r0, #0x0]
	mov     r4, r3
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	ldr     r2, [r4, #0x0]
	mov     r1, #0x1
	bl      Function_206afb0
	mov     r0, #0x2
	pop     {r4,pc}
@ 0x2250704

.thumb
Function_2250704: @ 2250704 :thumb
	push    {r3,lr}
	ldr     r1, [r3, #0x0]
	bl      Function_2249dc8
	mov     r0, #0x2
	pop     {r3,pc}
@ 0x2250710

.thumb
Function_2250710: @ 2250710 :thumb
	push    {r3,lr}
	ldr     r1, [r3, #0x0]
	bl      Function_2249de4
	mov     r0, #0x2
	pop     {r3,pc}
@ 0x225071c

.thumb
Function_225071c: @ 225071c :thumb
	push    {r4,lr}
	mov     r1, r3
	mov     r4, r2
	bl      Function_224e91c
	mov     r0, #0x1
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x225072e


.align 2, 0


.thumb
Function_2250730: @ 2250730 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_224e964
	cmp     r0, #0x1
	bne     branch_2250746
	mov     r0, r4
	bl      Function_224e988
	mov     r0, #0x2
	pop     {r4,pc}
@ 0x2250746

.thumb
branch_2250746: @ 2250746 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x225074a


.align 2, 0


.thumb
Function_225074c: @ 225074c :thumb
	push    {r3-r7,lr}
	ldr     r2, [r0, #0x0]
	mov     r4, r0
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	asr     r1, r1, #12
	lsl     r0, r1, #16
	ldr     r5, [pc, #0x1c] @ 0x225077c, (=0x2252284)
	mov     r6, #0x0
	add     r4, #0x1c
	lsr     r7, r0, #16
.thumb
branch_2250764: @ 2250764 :thumb
	ldrh    r0, [r5, #0x0]
	mov     r1, #0x0
	mov     r2, r7
	mov     r3, r4
	bl      Function_224f86c
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r6, #0x10
	bcc     branch_2250764
	pop     {r3-r7,pc}
@ 0x225077c

.word 0x2252284 @ 0x225077c



.thumb
.globl Function_9_2250780
Function_9_2250780: @ 2250780 :thumb
	push    {r3-r5,lr}
	ldr     r0, [r0, #0x4]
	ldr     r5, [r0, #0x24]
	ldr     r0, [pc, #0x38] @ 0x22507c0, (=0x1e6c)
	ldrh    r0, [r5, r0]
	cmp     r0, #0x1
	bne     branch_22507be
	mov     r0, r5
	bl      Function_224e39c
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x38]
	bl      GetSpriteListAdr18
	bl      Function_5_21edcb0
	mov     r1, #0xe6
	bl      Function_2022d98
	bl      Function_2022f14
	mov     r1, r0
	lsl     r1, r1, #16
	add     r4, #0x1c
	mov     r0, #0x1
	lsr     r1, r1, #13
	mov     r2, r4
	mov     r3, #0x20
	bl      Function_201dc68
.thumb
branch_22507be: @ 22507be :thumb
	pop     {r3-r5,pc}
@ 0x22507c0

.word 0x1e6c @ 0x22507c0
.thumb
Function_22507c4: @ 22507c4 :thumb
	push    {r4-r6,lr}
	mov     r1, #0x3c
	mov     r6, r0
	mov     r5, r2
	bl      Function_224e37c
	mov     r4, r0
	ldr     r1, [pc, #0x24] @ 0x22507f8, (=0x246)
	mov     r0, r6
	mov     r2, #0x80
	bl      Function_224f0d4
	str     r0, [r4, #0x18]
	mov     r0, #0xa
	lsl     r0, r0, #16
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0x18]
	add     r4, #0x8
	mov     r1, r4
	bl      Function_20630ac
	mov     r0, #0x1
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x22507f6

.align 2
.word 0x246 @ 0x22507f8



.thumb
Function_22507fc: @ 22507fc :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r2
	bl      Function_224e39c
	mov     r4, r0
	ldr     r0, [r4, #0x18]
	bl      Function_5_21eb1a0
	cmp     r0, #0x0
	beq     branch_2250842
	mov     r0, #0x1
	lsl     r0, r0, #16
	str     r0, [r4, #0x0]
	mov     r0, r4
	bl      Function_225074c
	ldr     r0, [pc, #0x28] @ 0x2250848, (=0x1e6c)
	mov     r1, #0x1
	strh    r1, [r5, r0]
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	mov     r0, r5
	bl      Function_224f854
	ldr     r0, [pc, #0x1c] @ 0x225084c, (=0x1e6e)
	mov     r1, #0x2
	strh    r1, [r5, r0]
	ldr     r0, [pc, #0x18] @ 0x2250850, (=0x5d1)
	bl      Function_2005748
	mov     r0, #0x2
	strh    r0, [r6, #0x0]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2250842

.thumb
branch_2250842: @ 2250842 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2250846


.align 2


.word 0x1e6c @ 0x2250848
.word 0x1e6e @ 0x225084c
.word 0x5d1 @ 0x2250850
.thumb
Function_2250854: @ 2250854 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r5, r2
	bl      Function_224e39c
	mov     r4, r0
	mov     r0, #0x5b
	ldr     r1, [r4, #0x4]
	lsl     r0, r0, #2
	add     r1, r1, r0
	mov     r0, #0x3
	lsl     r0, r0, #14
	str     r1, [r4, #0x4]
	cmp     r1, r0
	blt     branch_2250874
	str     r0, [r4, #0x4]
.thumb
branch_2250874: @ 2250874 :thumb
	ldr     r2, [r4, #0x4]
	mov     r0, r6
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	lsl     r1, r1, #4
	asr     r1, r1, #16
	bl      Function_224f860
	mov     r0, #0x1
	ldr     r1, [r4, #0xc]
	lsl     r0, r0, #16
	cmp     r1, r0
	blt     branch_2250894
	lsr     r0, r0, #4
	b       branch_2250896
@ 0x2250894

.thumb
branch_2250894: @ 2250894 :thumb
	lsr     r0, r0, #5
.thumb
branch_2250896: @ 2250896 :thumb
	sub     r0, r1, r0
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x0
	bge     branch_22508b2
	mov     r0, #0x3
	ldr     r1, [r4, #0x4]
	lsl     r0, r0, #14
	cmp     r1, r0
	blt     branch_22508b2
	mov     r0, #0x0
	str     r0, [r4, #0xc]
	mov     r0, #0x3
	strh    r0, [r5, #0x0]
.thumb
branch_22508b2: @ 22508b2 :thumb
	ldr     r0, [r4, #0x18]
	add     r4, #0x8
	mov     r1, r4
	bl      Function_20630ac
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x22508c0

.thumb
Function_22508c0: @ 22508c0 :thumb
	push    {r3-r5,lr}
	mov     r5, r2
	bl      Function_224e39c
	mov     r4, r0
	ldr     r0, [r4, #0x18]
	bl      Function_5_21eb1a0
	bl      Function_2021430
	mov     r0, #0xb6
	ldr     r1, [r4, #0x0]
	lsl     r0, r0, #2
	sub     r0, r1, r0
	str     r0, [r4, #0x0]
	bpl     branch_22508e8
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	mov     r0, #0x4
	strh    r0, [r5, #0x0]
.thumb
branch_22508e8: @ 22508e8 :thumb
	mov     r0, r4
	bl      Function_225074c
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22508f2


.align 2, 0


.thumb
Function_22508f4: @ 22508f4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_224e39c
	ldr     r1, [r0, #0x14]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0x14]
	cmp     r1, #0x1e
	blt     branch_2250910
	ldr     r0, [pc, #0xc] @ 0x2250914, (=0x1e6c)
	mov     r1, #0x0
	strh    r1, [r4, r0]
	mov     r0, #0x2
	pop     {r4,pc}
@ 0x2250910

.thumb
branch_2250910: @ 2250910 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2250914

.word 0x1e6c @ 0x2250914
.thumb
Function_2250918: @ 2250918 :thumb
	push    {r4-r6,lr}
	mov     r1, #0x24
	mov     r6, r0
	mov     r5, r2
	bl      Function_224e37c
	mov     r4, r0
	ldr     r1, [pc, #0x20] @ 0x2250948, (=0x243)
	mov     r0, r6
	mov     r2, #0x83
	bl      Function_224f0d4
	str     r0, [r4, #0x20]
	mov     r0, #0x1e
	lsl     r0, r0, #4
	mov     r1, #0x0
	bl      Function_2005844
	mov     r0, #0x1
	str     r0, [r4, #0x4]
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2250946


.align 2


.word 0x243 @ 0x2250948
.thumb
Function_225094c: @ 225094c :thumb
	push    {r4-r6,lr}
	mov     r5, #0x2
	mov     r6, r2
	lsl     r5, r5, #12
	bl      Function_224e39c
	mov     r4, r0
	ldr     r0, [r4, #0x18]
	asr     r1, r0, #4
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r0, r0, #12
	cmp     r0, #0x10
	bge     branch_225096c
	lsl     r5, r5, #1
.thumb
branch_225096c: @ 225096c :thumb
	ldr     r0, [r4, #0x18]
	mov     r1, r4
	add     r0, r0, r5
	str     r0, [r4, #0x18]
	ldr     r0, [r4, #0x20]
	add     r1, #0x14
	bl      Function_20630ac
	ldr     r0, [r4, #0x18]
	asr     r1, r0, #4
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r0, r0, #12
	cmp     r0, #0x11
	blt     branch_2250990
	mov     r0, #0x2
	strh    r0, [r6, #0x0]
.thumb
branch_2250990: @ 2250990 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2250994

.thumb
Function_2250994: @ 2250994 :thumb
	push    {r3-r5,lr}
	mov     r5, r2
	bl      Function_224e39c
	mov     r4, r0
	mov     r0, #0x1
	ldr     r1, [r4, #0x1c]
	lsl     r0, r0, #12
	sub     r0, r1, r0
	str     r0, [r4, #0x1c]
	mov     r1, r4
	ldr     r0, [r4, #0x20]
	add     r1, #0x14
	bl      Function_20630ac
	ldr     r0, [r4, #0x1c]
	asr     r1, r0, #4
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r1, r0, #12
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r1, r0
	bgt     branch_22509ce
	ldr     r0, [r4, #0x18]
	str     r0, [r4, #0xc]
	mov     r0, #0x3
	strh    r0, [r5, #0x0]
.thumb
branch_22509ce: @ 22509ce :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22509d2


.align 2, 0


.thumb
Function_22509d4: @ 22509d4 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x20
	ldr     r3, [pc, #0x78] @ 0x2250a54, (=0x22522a4)
	mov     r5, r2
	mov     r4, r0
	add     r2, sp, #0x0
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	mov     r0, r4
	bl      Function_224e39c
	mov     r4, r0
	ldr     r1, [r4, #0x0]
	ldr     r0, [r4, #0xc]
	asr     r1, r1, #1
	lsl     r2, r1, #2
	add     r1, sp, #0x0
	ldr     r1, [r1, r2]
	add     r0, r0, r1
	str     r0, [r4, #0x18]
	mov     r1, r4
	ldr     r0, [r4, #0x20]
	add     r1, #0x14
	bl      Function_20630ac
	ldr     r1, [r4, #0x0]
	ldr     r0, [r4, #0x4]
	add     r0, r1, r0
	str     r0, [r4, #0x0]
	cmp     r0, #0xf
	bge     branch_2250a22
	cmp     r0, #0x0
	bgt     branch_2250a4c
.thumb
branch_2250a22: @ 2250a22 :thumb
	ldr     r0, [r4, #0x4]
	neg     r0, r0
	str     r0, [r4, #0x4]
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_2250a4c
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	cmp     r0, #0x3
	blt     branch_2250a4c
	ldr     r0, [r4, #0x0]
	ldr     r2, [r4, #0xc]
	asr     r0, r0, #1
	lsl     r1, r0, #2
	add     r0, sp, #0x0
	ldr     r0, [r0, r1]
	add     r0, r2, r0
	str     r0, [r4, #0x18]
	mov     r0, #0x4
	strh    r0, [r5, #0x0]
.thumb
branch_2250a4c: @ 2250a4c :thumb
	mov     r0, #0x0
	add     sp, #0x20
	pop     {r3-r5,pc}
@ 0x2250a52


.align 2


.word 0x22522a4 @ 0x2250a54
.thumb
Function_2250a58: @ 2250a58 :thumb
	push    {r3-r5,lr}
	mov     r5, r2
	bl      Function_224e39c
	mov     r4, r0
	mov     r0, #0x1
	ldr     r1, [r4, #0x1c]
	lsl     r0, r0, #12
	add     r0, r1, r0
	str     r0, [r4, #0x1c]
	mov     r1, r4
	ldr     r0, [r4, #0x20]
	add     r1, #0x14
	bl      Function_20630ac
	ldr     r0, [r4, #0x1c]
	asr     r1, r0, #4
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r0, r0, #12
	cmp     r0, #0x1
	bne     branch_2250a8a
	mov     r0, #0x5
	strh    r0, [r5, #0x0]
.thumb
branch_2250a8a: @ 2250a8a :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2250a8e


.align 2, 0


.thumb
Function_2250a90: @ 2250a90 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_224e39c
	mov     r4, r0
	mov     r0, #0x2
	ldr     r1, [r4, #0x10]
	lsl     r0, r0, #12
	cmp     r1, r0
	bge     branch_2250aaa
	lsr     r0, r0, #4
	add     r0, r1, r0
	str     r0, [r4, #0x10]
.thumb
branch_2250aaa: @ 2250aaa :thumb
	ldr     r1, [r4, #0x18]
	ldr     r0, [r4, #0x10]
	sub     r0, r1, r0
	str     r0, [r4, #0x18]
	mov     r1, r4
	ldr     r0, [r4, #0x20]
	add     r1, #0x14
	bl      Function_20630ac
	ldr     r0, [r4, #0x18]
	asr     r1, r0, #4
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r0, r0, #12
	cmp     r0, #0x0
	bgt     branch_2250af6
	ldr     r1, [r4, #0x20]
	mov     r0, r5
	bl      Function_224ee70
	mov     r0, r5
	mov     r1, #0xa
	bl      Function_2249dc8
	mov     r0, r5
	mov     r1, #0xd
	bl      Function_2249dc8
	mov     r1, #0x91
	mov     r0, r5
	lsl     r1, r1, #2
	mov     r2, #0x84
	bl      Function_224f0d4
	str     r0, [r4, #0x20]
	mov     r0, #0x2
	pop     {r3-r5,pc}
@ 0x2250af6

.thumb
branch_2250af6: @ 2250af6 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2250afa


.align 2, 0


.thumb
Function_2250afc: @ 2250afc :thumb
	push    {r4-r6,lr}
	mov     r1, #0x18
	mov     r6, r0
	mov     r5, r2
	bl      Function_224e37c
	mov     r4, r0
	ldr     r1, [pc, #0x1c] @ 0x2250b28, (=0x243)
	mov     r0, r6
	mov     r2, #0x84
	bl      Function_224f0d4
	str     r0, [r4, #0x14]
	ldr     r0, [pc, #0x14] @ 0x2250b2c, (=0x1e2)
	mov     r1, #0x0
	bl      Function_2005844
	mov     r0, #0x1
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2250b26


.align 2


.word 0x243 @ 0x2250b28
.word 0x1e2 @ 0x2250b2c
.thumb
Function_2250b30: @ 2250b30 :thumb
	push    {r4-r6,lr}
	mov     r5, #0x2
	mov     r6, r2
	lsl     r5, r5, #12
	bl      Function_224e39c
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	asr     r1, r0, #4
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r0, r0, #12
	cmp     r0, #0xc
	bge     branch_2250b50
	lsl     r5, r5, #1
.thumb
branch_2250b50: @ 2250b50 :thumb
	ldr     r0, [r4, #0x8]
	add     r1, r4, #0x4
	add     r0, r0, r5
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x14]
	bl      Function_20630ac
	ldr     r0, [r4, #0x8]
	asr     r1, r0, #4
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r0, r0, #12
	cmp     r0, #0xd
	blt     branch_2250b7c
	ldr     r0, [r4, #0x14]
	ldr     r1, [pc, #0xc] @ 0x2250b80, (=0x2251e74)
	bl      Malloc_MovementScript
	str     r0, [r4, #0x10]
	mov     r0, #0x2
	strh    r0, [r6, #0x0]
.thumb
branch_2250b7c: @ 2250b7c :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2250b80

.word 0x2251e74 @ 0x2250b80
.thumb
Function_2250b84: @ 2250b84 :thumb
	push    {r3-r5,lr}
	mov     r4, r2
	bl      Function_224e39c
	mov     r5, r0
	ldr     r0, [r5, #0x10]
	bl      Function_206574c
	cmp     r0, #0x1
	bne     branch_2250ba6
	ldr     r0, [r5, #0x10]
	bl      Function_2065758
	mov     r0, #0x3
	strh    r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2250ba6

.thumb
branch_2250ba6: @ 2250ba6 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2250baa


.align 2, 0


.thumb
Function_2250bac: @ 2250bac :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_224e39c
	mov     r4, r0
	mov     r0, #0x2
	ldr     r1, [r4, #0x0]
	lsl     r0, r0, #12
	cmp     r1, r0
	bge     branch_2250bc6
	lsr     r0, r0, #4
	add     r0, r1, r0
	str     r0, [r4, #0x0]
.thumb
branch_2250bc6: @ 2250bc6 :thumb
	ldr     r1, [r4, #0x8]
	ldr     r0, [r4, #0x0]
	sub     r0, r1, r0
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x14]
	add     r1, r4, #0x4
	bl      Function_20630ac
	ldr     r0, [r4, #0x8]
	asr     r1, r0, #4
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r0, r0, #12
	cmp     r0, #0x0
	bgt     branch_2250c10
	ldr     r1, [r4, #0x14]
	mov     r0, r5
	bl      Function_224ee70
	mov     r0, r5
	mov     r1, #0xb
	bl      Function_2249dc8
	mov     r0, r5
	mov     r1, #0xe
	bl      Function_2249dc8
	mov     r1, #0x91
	mov     r0, r5
	lsl     r1, r1, #2
	mov     r2, #0x85
	bl      Function_224f0d4
	str     r0, [r4, #0x14]
	mov     r0, #0x2
	pop     {r3-r5,pc}
@ 0x2250c10

.thumb
branch_2250c10: @ 2250c10 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2250c14

.thumb
Function_2250c14: @ 2250c14 :thumb
	push    {r4-r6,lr}
	mov     r1, #0x18
	mov     r6, r0
	mov     r5, r2
	bl      Function_224e37c
	mov     r4, r0
	ldr     r1, [pc, #0x1c] @ 0x2250c40, (=0x243)
	mov     r0, r6
	mov     r2, #0x85
	bl      Function_224f0d4
	str     r0, [r4, #0x18]
	ldr     r0, [pc, #0x14] @ 0x2250c44, (=0x1e1)
	mov     r1, #0x0
	bl      Function_2005844
	mov     r0, #0x1
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2250c3e


.align 2


.word 0x243 @ 0x2250c40
.word 0x1e1 @ 0x2250c44
.thumb
Function_2250c48: @ 2250c48 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, #0x2
	mov     r6, r0
	mov     r7, r2
	lsl     r5, r5, #12
	bl      Function_224e39c
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	asr     r1, r0, #4
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r0, r0, #12
	cmp     r0, #0x8
	bge     branch_2250c6c
	lsl     r5, r5, #1
.thumb
branch_2250c6c: @ 2250c6c :thumb
	ldr     r0, [r4, #0x8]
	add     r1, r4, #0x4
	add     r0, r0, r5
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x18]
	bl      Function_20630ac
	ldr     r0, [r4, #0x8]
	asr     r1, r0, #4
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r0, r0, #12
	cmp     r0, #0x9
	blt     branch_2250cc2
	mov     r0, r6
	add     r1, sp, #0x8
	add     r2, sp, #0x4
	add     r3, sp, #0x0
	bl      Function_2250f44
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x43
	bne     branch_2250ca2
	ldr     r5, [pc, #0x28] @ 0x2250cc8, (=0x2252e14)
	ldr     r1, [pc, #0x2c] @ 0x2250ccc, (=0x2252d80)
	b       branch_2250ca6
@ 0x2250ca2

.thumb
branch_2250ca2: @ 2250ca2 :thumb
	ldr     r5, [pc, #0x2c] @ 0x2250cd0, (=0x2252e64)
	ldr     r1, [pc, #0x2c] @ 0x2250cd4, (=0x2252dc8)
.thumb
branch_2250ca6: @ 2250ca6 :thumb
	ldr     r0, [r4, #0x18]
	bl      Malloc_MovementScript
	str     r0, [r4, #0x10]
	ldr     r0, [r6, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      Function_205eb3c
	mov     r1, r5
	bl      Malloc_MovementScript
	str     r0, [r4, #0x14]
	mov     r0, #0x2
	strh    r0, [r7, #0x0]
.thumb
branch_2250cc2: @ 2250cc2 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2250cc8

.word 0x2252e14 @ 0x2250cc8
.word 0x2252d80 @ 0x2250ccc
.word 0x2252e64 @ 0x2250cd0
.word 0x2252dc8 @ 0x2250cd4
.thumb
Function_2250cd8: @ 2250cd8 :thumb
	push    {r3-r5,lr}
	mov     r4, r2
	bl      Function_224e39c
	mov     r5, r0
	ldr     r0, [r5, #0x10]
	bl      Function_206574c
	cmp     r0, #0x1
	bne     branch_2250d0a
	ldr     r0, [r5, #0x14]
	bl      Function_206574c
	cmp     r0, #0x1
	bne     branch_2250d0a
	ldr     r0, [r5, #0x10]
	bl      Function_2065758
	ldr     r0, [r5, #0x14]
	bl      Function_2065758
	mov     r0, #0x3
	strh    r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2250d0a

.thumb
branch_2250d0a: @ 2250d0a :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2250d0e


.align 2, 0


.thumb
Function_2250d10: @ 2250d10 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_224e39c
	mov     r4, r0
	mov     r0, #0x2
	ldr     r1, [r4, #0x0]
	lsl     r0, r0, #12
	cmp     r1, r0
	bge     branch_2250d2a
	lsr     r0, r0, #4
	add     r0, r1, r0
	str     r0, [r4, #0x0]
.thumb
branch_2250d2a: @ 2250d2a :thumb
	ldr     r1, [r4, #0x8]
	ldr     r0, [r4, #0x0]
	sub     r0, r1, r0
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x18]
	add     r1, r4, #0x4
	bl      Function_20630ac
	ldr     r0, [r4, #0x8]
	asr     r1, r0, #4
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r0, r0, #12
	cmp     r0, #0x0
	bgt     branch_2250d74
	ldr     r1, [r4, #0x18]
	mov     r0, r5
	bl      Function_224ee70
	mov     r0, r5
	mov     r1, #0xc
	bl      Function_2249dc8
	mov     r0, r5
	mov     r1, #0xf
	bl      Function_2249dc8
	mov     r1, #0x91
	mov     r0, r5
	lsl     r1, r1, #2
	mov     r2, #0x83
	bl      Function_224f0d4
	str     r0, [r4, #0x18]
	mov     r0, #0x2
	pop     {r3-r5,pc}
@ 0x2250d74

.thumb
branch_2250d74: @ 2250d74 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2250d78

.thumb
Function_2250d78: @ 2250d78 :thumb
	push    {r4-r6,lr}
	mov     r1, #0x4
	mov     r6, r0
	mov     r5, r2
	bl      Function_224e37c
	mov     r4, r0
	ldr     r1, [pc, #0x14] @ 0x2250d9c, (=0x2251d68)
	mov     r0, r6
	bl      Function_224a148
	mov     r0, #0x24
	strh    r0, [r4, #0x2]
	mov     r0, #0x1
	strh    r0, [r4, #0x0]
	strh    r0, [r5, #0x0]
	pop     {r4-r6,pc}
@ 0x2250d9a


.align 2


.word 0x2251d68 @ 0x2250d9c
.thumb
Function_2250da0: @ 2250da0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_224e39c
	mov     r4, r0
	mov     r0, #0x2
	ldsh    r1, [r4, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strh    r1, [r4, #0x2]
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	bgt     branch_2250de0
	mov     r0, #0x30
	strh    r0, [r4, #0x2]
	ldr     r0, [pc, #0x24] @ 0x2250de4, (=0x5cc)
	mov     r1, #0x0
	bl      Function_20057a4
	mov     r1, #0x0
	ldsh    r1, [r4, r1]
	mov     r0, r5
	bl      Function_224b64c
	mov     r0, #0x0
	ldsh    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, #0x0]
	ldsh    r0, [r4, r0]
	cmp     r0, #0x4
	blt     branch_2250de0
	mov     r0, #0x2
	pop     {r3-r5,pc}
@ 0x2250de0

.thumb
branch_2250de0: @ 2250de0 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2250de4

.word 0x5cc @ 0x2250de4
.thumb
Function_2250de8: @ 2250de8 :thumb
	push    {r4,lr}
	mov     r1, #0x4
	mov     r4, r2
	bl      Function_224e37c
	mov     r1, #0x10
	strh    r1, [r0, #0x2]
	mov     r1, #0x3
	strh    r1, [r0, #0x0]
	mov     r0, #0x1
	strh    r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x2250e00

.thumb
Function_2250e00: @ 2250e00 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r5, r2
	bl      Function_224e39c
	mov     r4, r0
	mov     r0, #0x2
	ldsh    r1, [r4, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strh    r1, [r4, #0x2]
	ldsh    r1, [r4, r0]
	cmp     r1, #0x0
	bgt     branch_2250e46
	mov     r1, #0x0
	ldsh    r2, [r4, r1]
	cmp     r2, #0x1
	blt     branch_2250e40
	mov     r0, #0x30
	strh    r0, [r4, #0x2]
	ldr     r0, [pc, #0x24] @ 0x2250e4c, (=0x5cc)
	bl      Function_20057a4
	mov     r1, #0x0
	ldsh    r1, [r4, r1]
	mov     r0, r6
	bl      Function_224b624
	mov     r0, #0x0
	ldsh    r0, [r4, r0]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, #0x0]
	b       branch_2250e46
@ 0x2250e40

.thumb
branch_2250e40: @ 2250e40 :thumb
	mov     r1, #0x8
	strh    r1, [r4, #0x2]
	strh    r0, [r5, #0x0]
.thumb
branch_2250e46: @ 2250e46 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2250e4a


.align 2


.word 0x5cc @ 0x2250e4c
.thumb
Function_2250e50: @ 2250e50 :thumb
	push    {r3,lr}
	bl      Function_224e39c
	mov     r2, #0x2
	ldsh    r1, [r0, r2]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strh    r1, [r0, #0x2]
	ldsh    r0, [r0, r2]
	cmp     r0, #0x0
	ble     branch_2250e66
	mov     r2, #0x0
.thumb
branch_2250e66: @ 2250e66 :thumb
	mov     r0, r2
	pop     {r3,pc}
@ 0x2250e6a


.align 2, 0


.thumb
Function_2250e6c: @ 2250e6c :thumb
	push    {r4,r5}
	mov     r4, #0x2
	ldsh    r5, [r3, r4]
	cmp     r1, r5
	blt     branch_2250eaa
	mov     r4, #0x8
	ldsh    r4, [r3, r4]
	add     r4, r5, r4
	cmp     r1, r4
	bgt     branch_2250eaa
	mov     r1, #0x4
	ldsh    r4, [r3, r1]
	cmp     r2, r4
	blt     branch_2250eaa
	mov     r1, #0xa
	ldsh    r1, [r3, r1]
	add     r1, r4, r1
	cmp     r2, r1
	bgt     branch_2250eaa
	mov     r1, #0x0
	ldsh    r2, [r3, r1]
	cmp     r0, r2
	blt     branch_2250eaa
	mov     r1, #0x6
	ldsh    r1, [r3, r1]
	add     r1, r2, r1
	cmp     r0, r1
	bgt     branch_2250eaa
	mov     r0, #0x1
	pop     {r4,r5}
	bx      lr
@ 0x2250eaa

.thumb
branch_2250eaa: @ 2250eaa :thumb
	mov     r0, #0x0
	pop     {r4,r5}
	bx      lr
@ 0x2250eb0

.thumb
Function_2250eb0: @ 2250eb0 :thumb
	push    {r3,r4}
	lsl     r2, r1, #16
	asr     r3, r2, #16
	lsl     r2, r0, #16
	asr     r2, r2, #16
	sub     r4, r3, r2
	mov     r3, r4
	cmp     r4, #0x0
	bge     branch_2250ec4
	neg     r3, r4
.thumb
branch_2250ec4: @ 2250ec4 :thumb
	mov     r2, #0x2
	lsl     r2, r2, #14
	cmp     r3, r2
	ble     branch_2250ee0
	add     r2, r3, r2
	lsr     r4, r2, #31
	lsl     r3, r2, #17
	sub     r3, r3, r4
	mov     r2, #0x11
	ror     r3, r2
	add     r4, r4, r3
	cmp     r0, r1
	bcs     branch_2250ee0
	neg     r4, r4
.thumb
branch_2250ee0: @ 2250ee0 :thumb
	mov     r0, r4
	pop     {r3,r4}
	bx      lr
@ 0x2250ee6


.align 2, 0


.thumb
Function_2250ee8: @ 2250ee8 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x0
	ldsh    r2, [r4, r0]
	add     r1, r2, r1
	strh    r1, [r4, #0x0]
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	bge     branch_2250f10
	mov     r0, #0x0
	mov     r1, #0x5a
	lsl     r1, r1, #2
	mov     r2, r0
.thumb
branch_2250f02: @ 2250f02 :thumb
	ldsh    r3, [r4, r0]
	add     r3, r3, r1
	strh    r3, [r4, #0x0]
	ldsh    r3, [r4, r2]
	cmp     r3, #0x0
	blt     branch_2250f02
	pop     {r4,pc}
@ 0x2250f10

.thumb
branch_2250f10: @ 2250f10 :thumb
	mov     r1, #0x5a
	lsl     r1, r1, #2
	blx     _s32_div_f
	strh    r1, [r4, #0x0]
	pop     {r4,pc}
@ 0x2250f1c

.thumb
Function_2250f1c: @ 2250f1c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	add     r0, r0, r1
	str     r0, [r4, #0x0]
	bpl     branch_2250f36
	mov     r0, #0x5a
	lsl     r0, r0, #14
.thumb
branch_2250f2c: @ 2250f2c :thumb
	ldr     r1, [r4, #0x0]
	add     r1, r1, r0
	str     r1, [r4, #0x0]
	bmi     branch_2250f2c
	pop     {r4,pc}
@ 0x2250f36

.thumb
branch_2250f36: @ 2250f36 :thumb
	mov     r1, #0x5a
	lsl     r1, r1, #14
	blx     _s32_div_f
	str     r1, [r4, #0x0]
	pop     {r4,pc}
@ 0x2250f42


.align 2, 0


.thumb
Function_2250f44: @ 2250f44 :thumb
	push    {r3-r7,lr}
	ldr     r0, [r0, #0x0]
	mov     r5, r1
	ldr     r0, [r0, #0x3c]
	mov     r4, r2
	mov     r6, r3
	bl      Function_205eb3c
	mov     r7, r0
	bl      LoadSpritePositionX
	str     r0, [r5, #0x0]
	mov     r0, r7
	bl      LoadSpritePositionZ
	lsr     r1, r0, #31
	add     r1, r0, r1
	asr     r0, r1, #1
	str     r0, [r4, #0x0]
	mov     r0, r7
	bl      LoadSpritePositionY
	str     r0, [r6, #0x0]
	pop     {r3-r7,pc}
@ 0x2250f74


.thumb
.globl Function_9_2250f74
Function_9_2250f74: @ 2250f74 :thumb
	push    {r3,lr}
	bl      GetOverWorldData_VariableAreaAdresses
	bl      Function_2027860
	bl      Function_2027f80
	cmp     r0, #0x9
	bne     branch_2250f8a
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2250f8a

.thumb
branch_2250f8a: @ 2250f8a :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2250f8e


.align 2, 0
.thumb
.globl Function_9_2250f90
Function_9_2250f90: @ 2250f90 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x4]
	ldr     r0, [r0, #0x24]
	bl      Function_224c55c
	add     r1, r0, #0x2
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	cmp     r1, #0x1
	bhi     branch_2250fa8
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2250fa8

.thumb
branch_2250fa8: @ 2250fa8 :thumb
	mov     r1, #0x2
	lsl     r1, r1, #14
	and     r0, r1
	lsl     r0, r0, #1
	lsr     r0, r0, #16
	beq     branch_2250fb8
	mov     r0, #0x1
	pop     {r3,pc}

branch_2250fb8: @ 2250fb8 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2250fbc


.thumb
.globl Function_9_2250fbc
Function_9_2250fbc: @ 2250fbc :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x4]
	ldr     r0, [r0, #0x24]
	bl      Function_224c55c
	.hword  0x1c80 @ add r0, r0, #0x2
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	cmp     r0, #0x1
	bls     branch_2250fd4
	mov     r0, #0x1
	pop     {r3,pc}

branch_2250fd4: @ 2250fd4 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2250fd8


.thumb
.globl Function_9_2250fd8
Function_9_2250fd8: @ 2250fd8 :thumb
	push    {r3-r7,lr}
	ldr     r0, [r0, #0x4]
	mov     r5, r1
	ldr     r7, [r0, #0x24]
	mov     r4, r2
	mov     r0, r7
	mov     r6, r3
	bl      Function_224c494
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x0]
	mov     r0, r7
	mov     r1, r5
	mov     r2, r4
	mov     r3, r6
	bl      Function_224c324
	pop     {r3-r7,pc}
@ 0x2250ffe


.align 2, 0
.thumb
.globl Function_9_2251000
Function_9_2251000: @ 2251000 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	ldr     r0, [r0, #0x4]
	mov     r5, r1
	ldr     r0, [r0, #0x24]
	mov     r6, r2
	mov     r7, r3
	str     r0, [sp, #0x4]
	bl      Function_224c494
	lsl     r0, r0, #16
	asr     r4, r0, #16
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	mov     r2, r6
	mov     r3, r7
	str     r4, [sp, #0x0]
	bl      Function_224c324
	cmp     r0, #0x1
	bne     branch_225103c
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	mov     r2, r6
	mov     r3, r7
	str     r4, [sp, #0x0]
	bl      Function_224c378
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x225103c

.thumb
branch_225103c: @ 225103c :thumb
	bl      ErrorHandling
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2251044


.thumb
.globl Function_9_2251044
Function_9_2251044: @ 2251044 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r7, r2
	str     r3, [sp, #0x0]
	ldr     r4, [sp, #0x18]
	bl      GetOverWorldData_VariableAreaAdresses
	bl      Function_2027860
	bl      Function_2027f80
	cmp     r0, #0x9
	beq     branch_2251068
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2251068

.thumb
branch_2251068: @ 2251068 :thumb
	ldr     r0, [r5, #0x4]
	ldr     r3, [sp, #0x0]
	ldr     r0, [r0, #0x24]
	mov     r1, r6
	mov     r2, r7
	bl      Function_224c55c
	add     r1, r0, #0x2
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	cmp     r1, #0x1
	bhi     branch_225108a
	bl      Function_205df98
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x225108a

.thumb
branch_225108a: @ 225108a :thumb
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2251094


.thumb
.globl Function_9_2251094
Function_9_2251094: @ 2251094 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r6, r1
	mov     r0, #TwArc_Narc
	mov     r1, #0x4
	mov     r7, r2
	mov     r4, r3
	bl      LoadFromNARC_8
	add     r1, sp, #0x8
	str     r0, [sp, #0x4]
	bl      Function_224bf8c
	add     r0, sp, #0x8
	mov     r1, r5
	mov     r2, r6
	mov     r3, r7
	str     r4, [sp, #0x0]
	bl      Function_224c050
	add     r0, sp, #0x8
	bl      Function_224bfe0
	ldr     r0, [sp, #0x4]
	bl      Call_FS_CloseFile
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x22510ce


.align 2, 0


.thumb
Function_22510d0: @ 22510d0 :thumb
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x1c]
	ldr     r0, [r0, #0x0]
	bx      lr
@ 0x22510d8

.thumb
Function_22510d8: @ 22510d8 :thumb
	cmp     r0, #0x3
	bhi     branch_2251100
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22510e8

Jumppoints_22510e8:
.hword branch_22510f0 - Jumppoints_22510e8 - 2
.hword branch_22510f4 - Jumppoints_22510e8 - 2
.hword branch_22510f8 - Jumppoints_22510e8 - 2
.hword branch_22510fc - Jumppoints_22510e8 - 2
.thumb
branch_22510f0: @ 22510f0 :thumb
	mov     r0, #0x2
	bx      lr
@ 0x22510f4

.thumb
branch_22510f4: @ 22510f4 :thumb
	mov     r0, #0x3
	bx      lr
@ 0x22510f8

.thumb
branch_22510f8: @ 22510f8 :thumb
	mov     r0, #0x4
	bx      lr
@ 0x22510fc

.thumb
branch_22510fc: @ 22510fc :thumb
	mov     r0, #0x5
	bx      lr
@ 0x2251100

.thumb
branch_2251100: @ 2251100 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x2251104

.thumb
Function_2251104: @ 2251104 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r6, r1
	ldr     r0, [r0, #0xc]
	mov     r4, r2
	bl      LoadFlagAdress
	cmp     r6, #0x8
	bhi     branch_225119a
	add     r1, r6, r6
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2251124

Jumppoints_2251124:
.hword branch_2251136 - Jumppoints_2251124 - 2
.hword branch_225113a - Jumppoints_2251124 - 2
.hword branch_225114a - Jumppoints_2251124 - 2
.hword branch_225115a - Jumppoints_2251124 - 2
.hword branch_2251166 - Jumppoints_2251124 - 2
.hword branch_2251172 - Jumppoints_2251124 - 2
.hword branch_225119a - Jumppoints_2251124 - 2
.hword branch_225117e - Jumppoints_2251124 - 2
.hword branch_225118e - Jumppoints_2251124 - 2
.thumb
branch_2251136: @ 2251136 :thumb
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x225113a

.thumb
branch_225113a: @ 225113a :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_2249e00
	cmp     r0, #0x1
	beq     branch_225119a
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x225114a

.thumb
branch_225114a: @ 225114a :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_2249e00
	cmp     r0, #0x1
	bne     branch_225119a
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x225115a

.thumb
branch_225115a: @ 225115a :thumb
	bl      Function_206b5d8
	cmp     r4, r0
	bne     branch_225119a
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2251166

.thumb
branch_2251166: @ 2251166 :thumb
	bl      Function_206b5d8
	cmp     r0, r4
	bhi     branch_225119a
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2251172

.thumb
branch_2251172: @ 2251172 :thumb
	bl      Function_206b5d8
	cmp     r0, r4
	bcc     branch_225119a
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x225117e

.thumb
branch_225117e: @ 225117e :thumb
	mov     r1, #0x2
	mov     r2, r4
	bl      Function_206afb0
	cmp     r0, #0x0
	bne     branch_225119a
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x225118e

.thumb
branch_225118e: @ 225118e :thumb
	bl      Function_206b6dc
	cmp     r4, r0
	bne     branch_225119a
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x225119a

.thumb
branch_225119a: @ 225119a :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x225119e


.align 2, 0
.thumb
.globl Function_9_22511a0
Function_9_22511a0: @ 22511a0 :thumb
	push    {r3-r7,lr}
	ldr     r0, [r0, #0x4]
	mov     r5, r1
	ldr     r7, [r0, #0x24]
	mov     r4, r2
	mov     r0, r7
	mov     r6, r3
	bl      Function_22510d0
	ldr     r1, [pc, #0x28] @ 0x22511dc, (=0x246)
	cmp     r0, r1
	bne     branch_22511d8
	cmp     r4, #0xf
	bne     branch_22511d8
	cmp     r5, #0xf
	bne     branch_22511d8
	cmp     r6, #0x1
	bne     branch_22511d8
	ldr     r0, [r7, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	bl      Function_206b5d8
	cmp     r0, #0xe
	bne     branch_22511d8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x22511d8

.thumb
branch_22511d8: @ 22511d8 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22511dc

.word 0x246 @ 0x22511dc
.thumb
Function_22511e0: @ 22511e0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_20057d4
	cmp     r0, #0x0
	bne     branch_22511f2
	mov     r0, r4
	bl      Function_2005748
.thumb
branch_22511f2: @ 22511f2 :thumb
	pop     {r4,pc}
@ 0x22511f4


.thumb
Function_22511f4: @ 22511f4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      CopyToSprite70Struct
	mov     r0, r4
	bl      Function_5_21eb1a0
	mov     r1, r0
	beq     branch_225120c
	mov     r0, r4
	bl      Function_5_21edeb4
branch_225120c: @ 225120c :thumb
	pop     {r4,pc}
@ 0x225120e


.incbin "./baserom/overlay/overlay_0009.bin", 0x78ae, 0x2251224 - 0x225120e

Unknown_2251224: @ 0x2251224
.incbin "./baserom/overlay/overlay_0009.bin", 0x78c4, 0x2253ce0 - 0x2251224


@end 0x2253ce0




