
/* Input:
r0: InitLoadGraphicDataList
r1: [InitInitLoadGraphicDataList_c]
r2: [InitInitLoadGraphicDataList_10]
*/
.thumb
.globl Function_201e88c
Function_201e88c: @ 201e88c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0

	ldr     r0, =RAM_21c0760
	str     r1, [sp, #0x0]
	ldr     r0, [r0, #RAM_21c0760_0]
	str     r2, [sp, #0x4]
	cmp     r0, #0x0
	bne     branch_201e946

	ldr     r0, [r5, #InitLoadGraphicDataList_c]
	mov     r1, #LoadGraphicDataList_Size
	bl      malloc
	mov     r1, r0
	ldr     r0, =RAM_21c0760
	mov     r2, #LoadGraphicDataList_Size
	str     r1, [r0, #RAM_21c0760_0]
	mov     r0, #0x0
	blx     MIi_CpuClear32

	ldr     r1, =RAM_21c0760
	ldr     r2, [r5, #InitLoadGraphicDataList_NrOfGraphicData4Chunks]
	ldr     r0, [r1, #RAM_21c0760_0]
	str     r2, [r0, #LoadGraphicDataList_MaxNrOfParts]
	ldr     r1, [r1, #RAM_21c0760_0]

	ldr     r0, [r5, #InitLoadGraphicDataList_c]
	ldr     r2, [r1, #LoadGraphicDataList_MaxNrOfParts]
	mov     r1, #GraphicData4_Size
	mul     r1, r2
	bl      malloc
	ldr     r7, =RAM_21c0760
	mov     r6, #0x0
	ldr     r1, [r7, #RAM_21c0760_0]
	str     r0, [r1, #LoadGraphicDataList_StartPtr]

	ldr     r0, [r5, #InitLoadGraphicDataList_NrOfGraphicData4Chunks]
	cmp     r0, #0x0
	ble     branch_201e8ee

	mov     r4, r6
branch_201e8da: @ 201e8da :thumb
	ldr     r0, [r7, #RAM_21c0760_0]
	ldr     r0, [r0, #LoadGraphicDataList_StartPtr]
	add     r0, r0, r4
	bl      InitGraphicData4
	ldr     r0, [r5, #InitLoadGraphicDataList_NrOfGraphicData4Chunks]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #GraphicData4_Size
	cmp     r6, r0
	blt     branch_201e8da

branch_201e8ee: @ 201e8ee :thumb
	ldr     r0, [sp, #0x0]
	bl      Function_201f6f4
	ldr     r1, =RAM_21c0760
	ldr     r1, [r1, #RAM_21c0760_0]
	str     r0, [r1, #LoadGraphicDataList_PartSizesMain]

	ldr     r0, [sp, #0x4]
	bl      Function_201f6f4
	ldr     r2, =RAM_21c0760
	mov     r3, #0x1
	ldr     r1, [r2, #RAM_21c0760_0]
	lsl     r3, r3, #26
	str     r0, [r1, #LoadGraphicDataList_PartSizesSub]
	ldr     r0, [r3, #0x0]
	ldr     r1, =0xffcfffef
	mov     r4, r0
	ldr     r0, [sp, #0x0]
	and     r4, r1
	orr     r0, r4
	str     r0, [r3, #0x0]
	ldr     r3, =REG_DISPCNT_SUB
	ldr     r0, [r3, #0x0]
	and     r1, r0
	ldr     r0, [sp, #0x4]
	orr     r0, r1
	str     r0, [r3, #0x0]
	ldr     r1, [r2, #RAM_21c0760_0]
	ldr     r0, [r5, #InitLoadGraphicDataList_4]
	ldr     r1, [r1, #LoadGraphicDataList_PartSizesMain]
	bl      Function_201f754_Division
	ldr     r1, =RAM_21c0760
	mov     r4, r0
	ldr     r1, [r1, #RAM_21c0760_0]
	ldr     r0, [r5, #InitLoadGraphicDataList_8]
	ldr     r1, [r1, #LoadGraphicDataList_PartSizesSub]
	bl      Function_201f754_Division
	mov     r1, r0
	ldr     r2, [r5, #InitLoadGraphicDataList_c]
	mov     r0, r4
	bl      Function_201f47c
branch_201e946: @ 201e946 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x201e94a

.align 2
.pool



.thumb
.globl Function_201e958
Function_201e958: @ 201e958 :thumb
	push    {r3,lr}
	ldr     r0, =RAM_21c0760
	ldr     r0, [r0, #RAM_21c0760_0]
	cmp     r0, #0x0
	beq     branch_201e98e

	ldr     r0, [r0, #LoadGraphicDataList_MemoryPoolMain]
	bl      Function_201f4e4

	ldr     r0, =RAM_21c0760
	ldr     r0, [r0, #RAM_21c0760_0]
	ldr     r0, [r0, #LoadGraphicDataList_MemoryPoolSub]
	bl      Function_201f4e4
	bl      Function_201eba0

	ldr     r0, =RAM_21c0760
	ldr     r0, [r0, #RAM_21c0760_0]
	ldr     r0, [r0, #LoadGraphicDataList_StartPtr]
	bl      free

	ldr     r0, =RAM_21c0760
	ldr     r0, [r0, #RAM_21c0760_0]
	bl      free

	ldr     r0, =RAM_21c0760
	mov     r1, #0x0
	str     r1, [r0, #RAM_21c0760_0]
branch_201e98e: @ 201e98e :thumb
	pop     {r3,pc}
@ 0x201e990

.align 2
.pool



.thumb
.globl Function_201e994
Function_201e994: @ 201e994 :thumb
	push    {r3,lr}
	ldr     r0, =RAM_21c0760
	mov     r2, #0x0
	ldr     r1, [r0, #RAM_21c0760_0]
	str     r2, [r1, #LoadGraphicDataList_UsedSizeMain]
	ldr     r1, [r0, #RAM_21c0760_0]
	str     r2, [r1, #LoadGraphicDataList_UsedSizeSub]
	ldr     r0, [r0, #RAM_21c0760_0]
	ldr     r0, [r0, #LoadGraphicDataList_MemoryPoolMain]
	bl      Function_201f524

	ldr     r0, =RAM_21c0760
	ldr     r0, [r0, #RAM_21c0760_0]
	ldr     r0, [r0, #LoadGraphicDataList_MemoryPoolSub]
	bl      Function_201f524
	bl      Function_201f30c_InitAvailableMemory
	pop     {r3,pc}
@ 0x201e9ba

.align 2
.pool



.thumb
Function_201e9c0: @ 201e9c0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r3, r1
	cmp     r2, #0x1
	add     r0, sp, #0x4
	bne     branch_201e9f6

	str     r0, [sp, #0x0]
	ldr     r0, =RAM_21c0760
	mov     r2, r3
	ldr     r0, [r0, #RAM_21c0760_0]
	mov     r1, r4
	ldr     r0, [r0, #LoadGraphicDataList_MaxSizeMain]
	add     r3, sp, #0x8
	bl      Function_201f818
	ldr     r3, [sp, #0x4]
	cmp     r3, #0x0
	ble     branch_201ea1c

	mov     r2, #0x0
	str     r2, [sp, #0x0]
	ldr     r1, [sp, #0x8]
	mov     r0, #0x1
	bl      Function_201f18c
	add     sp, #0xc
	pop     {r3,r4,pc}

branch_201e9f6: @ 201e9f6 :thumb
	str     r0, [sp, #0x0]
	ldr     r0, =RAM_21c0760
	mov     r2, r3
	ldr     r0, [r0, #RAM_21c0760_0]
	mov     r1, r4
	ldr     r0, [r0, #LoadGraphicDataList_MaxSizeSub]
	add     r3, sp, #0x8
	bl      Function_201f818
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	ble     branch_201ea1c
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	ldr     r2, [sp, #0x8]
	mov     r0, #0x2
	mov     r3, r1
	bl      Function_201f18c
branch_201ea1c: @ 201ea1c :thumb

	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x201ea20

.align 2
.pool



/* Input:
r0: GraphicData5
*/
.thumb
Function_201ea24: @ 201ea24 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #GraphicData5_8]
	bl      Function_201ead8
	cmp     r0, #0x1
	bne     branch_201ea36
	bl      ErrorHandling
branch_201ea36: @ 201ea36 :thumb

	bl      Function_201f2d0_GetNewGraphicData4Chunk
	mov     r4, r0
	bne     branch_201ea46

	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_201ea46: @ 201ea46 :thumb
	mov     r0, r5                  @ GraphicData5
	mov     r1, r4                  @ GraphicData4
	bl      Function_201eef8_CopyToGraphicData4
	cmp     r0, #0x0
	bne     branch_201ea56

	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_201ea56: @ 201ea56 :thumb
	mov     r0, r4                  @ GraphicData4
	bl      Function_201ef68
	cmp     r0, #0x0
	bne     branch_201ea6a

	ldr     r0, [r4, #GraphicData4_c]
	bl      Function_201eb50
	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_201ea6a: @ 201ea6a :thumb
	ldr     r0, =RAM_21c0760
	ldr     r1, [r0, #RAM_21c0760_0]
	ldr     r0, [r1, #LoadGraphicDataList_8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r1, #LoadGraphicDataList_8]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x201ea78

.align 2
.pool



/* Input:
r0: GraphicData5
*/
.thumb
Function_201ea7c: @ 201ea7c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #GraphicData5_8]
	bl      Function_201ead8
	cmp     r0, #0x1
	bne     branch_201ea8e
	bl      ErrorHandling
branch_201ea8e: @ 201ea8e :thumb

	bl      Function_201f2d0_GetNewGraphicData4Chunk
	mov     r4, r0
	bne     branch_201ea9e

	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_201ea9e: @ 201ea9e :thumb
	mov     r0, r5                  @ GraphicData5
	mov     r1, r4                  @ GraphicData4
	bl      Function_201eef8_CopyToGraphicData4
	cmp     r0, #0x0
	bne     branch_201eaae

	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_201eaae: @ 201eaae :thumb
	mov     r0, #0x1
	str     r0, [r4, #GraphicData4_40]
	mov     r0, r4                  @ GraphicData4
	bl      Function_201ef68
	cmp     r0, #0x0
	bne     branch_201eac6

	ldr     r0, [r4, #GraphicData4_c]
	bl      Function_201eb50

	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_201eac6: @ 201eac6 :thumb
	ldr     r0, =RAM_21c0760
	ldr     r1, [r0, #RAM_21c0760_0]
	ldr     r0, [r1, #LoadGraphicDataList_8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r1, #LoadGraphicDataList_8]

	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x201ead4

.align 2
.pool



.thumb
.globl Function_201ead8
Function_201ead8: @ 201ead8 :thumb
	push    {r3,r4}
	ldr     r1, =RAM_21c0760
	mov     r2, #0x0
	ldr     r4, [r1, #RAM_21c0760_0]
	ldr     r1, [r4, #LoadGraphicDataList_MaxNrOfParts]
	cmp     r1, #0x0
	ble     branch_201eafe

	ldr     r3, [r4, #LoadGraphicDataList_StartPtr]
branch_201eae8: @ 201eae8 :thumb
	ldr     r1, [r3, #GraphicData4_c]
	cmp     r0, r1
	bne     branch_201eaf4

	mov     r0, #0x1
	pop     {r3,r4}
	bx      lr

branch_201eaf4: @ 201eaf4 :thumb
	ldr     r1, [r4, #LoadGraphicDataList_MaxNrOfParts]
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r3, #GraphicData4_Size
	cmp     r2, r1
	blt     branch_201eae8

branch_201eafe: @ 201eafe :thumb
	mov     r0, #0x0
	pop     {r3,r4}
	bx      lr
@ 0x201eb04

.align 2
.pool



/* Input:
r1: GraphicData2
*/
.thumb
Function_201eb08: @ 201eb08 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r5, r1
	bne     branch_201eb14
	bl      ErrorHandling
branch_201eb14: @ 201eb14 :thumb

	mov     r0, r4
	bl      Function_201f03c
	mov     r4, r0              @ GraphicData4
	bne     branch_201eb22
	bl      ErrorHandling
branch_201eb22: @ 201eb22 :thumb

	str     r5, [r4, #GraphicData4_GraphicData2]
	ldr     r1, [r4, #GraphicData4_4]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_201eb38
	ldr     r1, [r4, #GraphicData4_DestinationMain]
	ldr     r2, [r5, #GraphicData2_Source]
	ldr     r3, [r5, #GraphicData2_Size]
	mov     r0, #0x13
	bl      Function_201dc68
branch_201eb38: @ 201eb38 :thumb

	ldr     r1, [r4, #GraphicData4_4]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_201eb4c
	ldr     r1, [r4, #GraphicData4_DestinationSub]
	ldr     r2, [r5, #GraphicData2_Source]
	ldr     r3, [r5, #GraphicData2_Size]
	mov     r0, #0x23
	bl      Function_201dc68
branch_201eb4c: @ 201eb4c :thumb

	pop     {r3-r5,pc}
@ 0x201eb4e


.align 2, 0
.thumb
.globl Function_201eb50
Function_201eb50: @ 201eb50 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r5, #0x1
	mov     r7, #0x0
branch_201eb58: @ 201eb58 :thumb
	mov     r0, r6
	bl      Function_201f03c
	mov     r4, r0              @ GraphicData4
	bne     branch_201eb66
	bl      ErrorHandling
branch_201eb66: @ 201eb66 :thumb

	mov     r0, r4
	add     r0, #GraphicData4_3c
	ldrb    r0, [r0] @ GraphicData4_3c
	cmp     r0, #0x4
	bne     branch_201eb7a

	mov     r0, r4
	add     r0, #GraphicData4_10
	bl      Function_201ed1c
	b       branch_201eb7c

branch_201eb7a: @ 201eb7a :thumb
	mov     r5, r7
branch_201eb7c: @ 201eb7c :thumb
	cmp     r5, #0x0
	bne     branch_201eb58

	mov     r0, r4
	add     r0, #GraphicData4_3c
	ldrb    r0, [r0] @ GraphicData4_3c
	cmp     r0, #0x0
	beq     branch_201eb9a

	mov     r0, r4
	bl      Function_201f024
	ldr     r0, =RAM_21c0760
	ldr     r1, [r0, #RAM_21c0760_0]
	ldr     r0, [r1, #LoadGraphicDataList_8]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r1, #LoadGraphicDataList_8]

branch_201eb9a: @ 201eb9a :thumb
	pop     {r3-r7,pc}
@ 0x201eb9c

.align 2
.pool



.thumb
Function_201eba0: @ 201eba0 :thumb
	push    {r4-r6,lr}
	ldr     r6, =RAM_21c0760
	mov     r4, #0x0
	ldr     r1, [r6, #RAM_21c0760_0]
	ldr     r0, [r1, #LoadGraphicDataList_MaxNrOfParts]
	cmp     r0, #0x0
	ble     branch_201ebd6

	mov     r5, r4
branch_201ebb0: @ 201ebb0 :thumb
	ldr     r1, [r1, #0x0]
	add     r0, r1, r5
	add     r0, #0x3c
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_201ebca
	add     r0, r1, r5
	bl      Function_201f024
	ldr     r1, [r6, #RAM_21c0760_0]
	ldr     r0, [r1, #LoadGraphicDataList_8]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r1, #LoadGraphicDataList_8]

branch_201ebca: @ 201ebca :thumb
	ldr     r1, [r6, #RAM_21c0760_0]
	.hword  0x1c64 @ add r4, r4, #0x1
	ldr     r0, [r1, #LoadGraphicDataList_MaxNrOfParts]
	add     r5, #GraphicData4_Size
	cmp     r4, r0
	blt     branch_201ebb0

branch_201ebd6: @ 201ebd6 :thumb
	pop     {r4-r6,pc}
@ 0x201ebd8

.align 2
.pool



.thumb
Function_201ebdc: @ 201ebdc :thumb
	push    {r4,lr}
	bl      Function_201f03c
	mov     r4, r0              @ GraphicData4
	bne     branch_201ebea
	bl      ErrorHandling
branch_201ebea: @ 201ebea :thumb

	mov     r0, r4
	add     r0, #GraphicData4_3c
	ldrb    r0, [r0] @ GraphicData4_3c
	cmp     r0, #0x0
	bne     branch_201ebf8

	mov     r0, #0x0
	pop     {r4,pc}

branch_201ebf8: @ 201ebf8 :thumb
	add     r4, #GraphicData4_10
	mov     r0, r4
	pop     {r4,pc}
@ 0x201ebfe


.align 2, 0
.thumb
Function_201ec00: @ 201ec00 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	mov     r5, r1
	bl      Function_201f03c
	mov     r4, r0              @ GraphicData4
	bne     branch_201ec12
	bl      ErrorHandling
branch_201ec12: @ 201ec12 :thumb

	mov     r0, r4
	add     r0, #GraphicData4_3c
	ldrb    r0, [r0] @ GraphicData4_3c
	cmp     r0, #0x0
	bne     branch_201ec22

	add     sp, #0x18
	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_201ec22: @ 201ec22 :thumb
	add     r0, sp, #0xc
	str     r0, [sp, #0x0]
	add     r0, sp, #0x8
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #GraphicData4_4]
	add     r1, sp, #0x14
	add     r2, sp, #0x10
	mov     r3, r5
	bl      Function_201f0b0

	mov     r0, r4
	add     r0, #GraphicData4_3c
	ldrb    r0, [r0] @ GraphicData4_3c
	cmp     r0, #0x3
	bne     branch_201ec46

	add     sp, #0x18
	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_201ec46: @ 201ec46 :thumb
	mov     r0, r4
	mov     r1, #0x3
	add     r0, #GraphicData4_3c
	strb    r1, [r0] @ GraphicData4_3c
	ldr     r1, [sp, #0x14]
	ldr     r2, [sp, #0x10]
	mov     r0, r4              @ GraphicData4
	bl      Function_201f15c

	mov     r0, #0x1
	str     r0, [r4, #GraphicData4_48]
	ldr     r0, [sp, #0xc]
	str     r0, [r4, #GraphicData4_4c]
	ldr     r0, [sp, #0x8]
	str     r0, [r4, #GraphicData4_50]

	mov     r0, r4              @ GraphicData4
	bl      Function_201f26c
	ldr     r0, [sp, #0x8]
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #GraphicData4_4]
	ldr     r1, [sp, #0x14]
	ldr     r2, [sp, #0x10]
	ldr     r3, [sp, #0xc]
	bl      Function_201f18c

	add     r4, #GraphicData4_10
	mov     r0, r4
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x201ec82


.align 2, 0
.thumb
Function_201ec84: @ 201ec84 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	bl      Function_201ef1c
	mov     r4, r0
	bne     branch_201ec94
	bl      ErrorHandling
branch_201ec94: @ 201ec94 :thumb

	bl      Function_201f2d0_GetNewGraphicData4Chunk
	mov     r5, r0
	bne     branch_201eca0
	bl      ErrorHandling
branch_201eca0: @ 201eca0 :thumb

	mov     r0, r4
	add     r0, #0x3c
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x3
	beq     branch_201ecb0

	add     sp, #0x18
	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_201ecb0: @ 201ecb0 :thumb
	mov     r3, r5
	mov     r2, #0xa
branch_201ecb4: @ 201ecb4 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_201ecb4

	ldr     r0, [r4, #0x0]
	mov     r1, #0x4
	str     r0, [r3, #0x0]
	mov     r0, r5
	add     r0, #GraphicData4_3c
	strb    r1, [r0] @ GraphicData4_3c
	ldr     r0, [r5, #GraphicData4_4]
	mov     r1, #0x1
	tst     r1, r0
	beq     branch_201ecd4

	ldr     r3, [r5, #GraphicData4_4c]
	b       branch_201ecd6

branch_201ecd4: @ 201ecd4 :thumb
	ldr     r3, [r5, #GraphicData4_50]
branch_201ecd6: @ 201ecd6 :thumb
	add     r1, sp, #0xc
	str     r1, [sp, #0x0]
	add     r1, sp, #0x8
	str     r1, [sp, #0x4]
	add     r1, sp, #0x14
	add     r2, sp, #0x10
	bl      Function_201f0b0
	ldr     r1, [sp, #0x14]
	ldr     r2, [sp, #0x10]
	mov     r0, r5              @ GraphicData4
	bl      Function_201f15c

	mov     r0, #0x1
	str     r0, [r5, #GraphicData4_48]
	ldr     r0, [sp, #0xc]
	str     r0, [r5, #GraphicData4_4c]
	ldr     r0, [sp, #0x8]
	str     r0, [r5, #GraphicData4_50]

	mov     r0, r5
	bl      Function_201f26c
	ldr     r0, [sp, #0x8]
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #GraphicData4_4]
	ldr     r1, [sp, #0x14]
	ldr     r2, [sp, #0x10]
	ldr     r3, [sp, #0xc]
	bl      Function_201f18c

	add     r5, #GraphicData4_10
	mov     r0, r5
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x201ed1a


.align 2, 0
.thumb
.globl Function_201ed1c
Function_201ed1c: @ 201ed1c :thumb
	push    {r4-r6,lr}
	ldr     r2, =RAM_21c0760
	mov     r1, #0x0
	ldr     r5, [r2, #RAM_21c0760_0]
	ldr     r4, [r5, #LoadGraphicDataList_MaxNrOfParts]
	cmp     r4, #0x0
	ble     branch_201ed5a

	ldr     r2, [r5, #LoadGraphicDataList_StartPtr]
	mov     r3, r1
branch_201ed2e: @ 201ed2e :thumb
	mov     r6, r2
	add     r6, #0x3c
	ldrb    r6, [r6, #0x0]
	cmp     r6, #0x3
	beq     branch_201ed44

	ldr     r6, [r5, #LoadGraphicDataList_StartPtr]
	add     r6, r6, r3
	add     r6, #0x3c
	ldrb    r6, [r6, #0x0]
	cmp     r6, #0x4
	bne     branch_201ed4e

branch_201ed44: @ 201ed44 :thumb
	ldr     r6, [r5, #LoadGraphicDataList_StartPtr]
	add     r6, r6, r3
	add     r6, #0x10
	cmp     r6, r0
	beq     branch_201ed5a

branch_201ed4e: @ 201ed4e :thumb
	ldr     r6, [r5, #LoadGraphicDataList_MaxNrOfParts]
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r2, #0x54
	add     r3, #0x54
	cmp     r1, r6
	blt     branch_201ed2e

branch_201ed5a: @ 201ed5a :thumb
	cmp     r1, r4
	bge     branch_201ed8e

	mov     r0, #GraphicData4_Size
	mov     r4, r1
	mul     r4, r0
	ldr     r0, [r5, #LoadGraphicDataList_StartPtr]
	add     r0, r0, r4
	bl      Function_201f670

	ldr     r0, =RAM_21c0760
	ldr     r1, [r0, #RAM_21c0760_0]
	ldr     r2, [r1, #LoadGraphicDataList_StartPtr]
	add     r2, #0x3c
	ldrb    r1, [r2, r4]
	cmp     r1, #0x3
	bne     branch_201ed80

	mov     r0, #0x2
	strb    r0, [r2, r4]
	pop     {r4-r6,pc}

branch_201ed80: @ 201ed80 :thumb
	mov     r1, #0x0
	strb    r1, [r2, r4]
	ldr     r0, [r0, #RAM_21c0760_0]
	ldr     r0, [r0, #LoadGraphicDataList_StartPtr]
	add     r0, r0, r4
	bl      InitGraphicData4

branch_201ed8e: @ 201ed8e :thumb
	pop     {r4-r6,pc}
@ 0x201ed90

.align 2
.pool



.thumb
.globl Function_201ed94
Function_201ed94: @ 201ed94 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r6, r0
	mov     r5, r2
	mov     r4, r3
	cmp     r1, #0x0
	bne     branch_201edce

	mov     r1, r5
	add     r2, sp, #0x14
	add     r3, sp, #0x10
	bl      Function_201f76c_GetDestinations
	mov     r7, r0
	beq     branch_201ee1e

	mov     r0, r6
	mov     r1, r5
	bl      Function_201f7bc_CalcNewDestinations
	strh    r5, [r4, #0x8]
	str     r6, [r4, #0x0]
	cmp     r5, #0x1
	bne     branch_201edc4

	ldr     r0, [sp, #0x14]
	b       branch_201edc6

branch_201edc4: @ 201edc4 :thumb
	ldr     r0, [sp, #0x10]
branch_201edc6: @ 201edc6 :thumb
	str     r0, [r4, #0x4]
	mov     r0, #0x0
	strh    r0, [r4, #0xa]
	b       branch_201ee1e

branch_201edce: @ 201edce :thumb
	add     r0, sp, #0xc
	str     r0, [sp, #0x0]
	add     r0, sp, #0x8
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r1, sp, #0x14
	add     r2, sp, #0x10
	mov     r3, r6
	bl      Function_201f0b0
	mov     r7, r0
	beq     branch_201ee1e

	ldr     r0, [sp, #0x8]
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x14]
	ldr     r2, [sp, #0x10]
	ldr     r3, [sp, #0xc]
	mov     r0, r5
	bl      Function_201f18c
	strh    r5, [r4, #0x8]
	cmp     r5, #0x1
	bne     branch_201ee0a

	ldr     r0, [sp, #0xc]
	str     r0, [r4, #0x0]
	ldr     r0, =RAM_21c0760
	ldr     r1, [sp, #0x14]
	ldr     r0, [r0, #RAM_21c0760_0]
	ldr     r0, [r0, #LoadGraphicDataList_MaxSizeMain]
	b       branch_201ee16

branch_201ee0a: @ 201ee0a :thumb
	ldr     r0, [sp, #0x8]
	str     r0, [r4, #0x0]
	ldr     r0, =RAM_21c0760
	ldr     r1, [sp, #0x10]
	ldr     r0, [r0, #RAM_21c0760_0]
	ldr     r0, [r0, #LoadGraphicDataList_MaxSizeSub]
branch_201ee16: @ 201ee16 :thumb
	add     r0, r1, r0
	str     r0, [r4, #0x4]
	mov     r0, #0x1
	strh    r0, [r4, #0xa]
branch_201ee1e: @ 201ee1e :thumb
	mov     r0, r7
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x201ee24

.align 2
.pool



.thumb
.globl Function_201ee28
Function_201ee28: @ 201ee28 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldrh    r0, [r4, #0xa]
	cmp     r0, #0x0
	beq     branch_201ee96

	ldrh    r1, [r4, #0x8]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_201ee64

	ldr     r1, =RAM_21c0760
	ldr     r0, [r4, #0x0]
	ldr     r1, [r1, #RAM_21c0760_0]
	ldr     r1, [r1, #LoadGraphicDataList_PartSizesMain]
	bl      Function_201f754_Division
	mov     r5, r0

	ldr     r0, =RAM_21c0760
	ldr     r1, [r4, #0x4]
	ldr     r2, [r0, #RAM_21c0760_0]
	ldr     r0, [r2, #LoadGraphicDataList_MaxSizeMain]
	sub     r0, r1, r0
	ldr     r1, [r2, #LoadGraphicDataList_PartSizesMain]
	bl      Function_201f754_Division
	ldr     r2, =RAM_21c0760
	mov     r1, r5
	ldr     r2, [r2, #RAM_21c0760_0]
	ldr     r2, [r2, #LoadGraphicDataList_MemoryPoolMain]
	bl      Function_201f620_SetBitsInMemPool

branch_201ee64: @ 201ee64 :thumb
	ldrh    r1, [r4, #0x8]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_201ee96

	ldr     r1, =RAM_21c0760
	ldr     r0, [r4, #0x0]
	ldr     r1, [r1, #RAM_21c0760_0]
	ldr     r1, [r1, #LoadGraphicDataList_PartSizesSub]
	bl      Function_201f754_Division
	mov     r5, r0

	ldr     r0, =RAM_21c0760
	ldr     r1, [r4, #0x4]
	ldr     r2, [r0, #RAM_21c0760_0]
	ldr     r0, [r2, #LoadGraphicDataList_MaxSizeSub]
	sub     r0, r1, r0
	ldr     r1, [r2, #LoadGraphicDataList_PartSizesSub]
	bl      Function_201f754_Division
	ldr     r2, =RAM_21c0760
	mov     r1, r5
	ldr     r2, [r2, #RAM_21c0760_0]
	ldr     r2, [r2, #LoadGraphicDataList_MemoryPoolSub]
	bl      Function_201f620_SetBitsInMemPool

branch_201ee96: @ 201ee96 :thumb
	pop     {r3-r5,pc}
@ 0x201ee98

.align 2
.pool



.thumb
.globl Function_201ee9c_UnsetLoadGraphicDataList
Function_201ee9c_UnsetLoadGraphicDataList: @ 201ee9c :thumb
	push    {r3,lr}
	ldr     r0, =RAM_21c0760
	ldr     r0, [r0, #RAM_21c0760_0]
	cmp     r0, #0x0
	bne     branch_201eeaa
	bl      ErrorHandling
branch_201eeaa: @ 201eeaa :thumb

	ldr     r1, =RAM_21c0760
	mov     r2, #0x0
	ldr     r0, [r1, #RAM_21c0760_0]
	str     r2, [r1, #LoadGraphicDataList_StartPtr]
	pop     {r3,pc}
@ 0x201eeb4

.align 2
.pool



.thumb
.globl Function_201eeb8_SetLoadGraphicDataList
Function_201eeb8_SetLoadGraphicDataList: @ 201eeb8 :thumb
	push    {r4,lr}
	mov     r4, r0

	ldr     r0, =RAM_21c0760
	ldr     r0, [r0, #RAM_21c0760_0]
	cmp     r0, #0x0
	beq     branch_201eec8
	bl      ErrorHandling
branch_201eec8: @ 201eec8 :thumb

	ldr     r0, =RAM_21c0760
	str     r4, [r0, #RAM_21c0760_0]
	pop     {r4,pc}
@ 0x201eece

.align 2
.pool



/* Input:
r0: GraphicData4
*/
thumb_func_start InitGraphicData4
InitGraphicData4: @ 201eed4 :thumb
	mov     r2, #0x0
	str     r2, [r0, #GraphicData4_GraphicData2]
	str     r2, [r0, #GraphicData4_4]
	strb    r2, [r0, #GraphicData4_8]
	sub     r1, r2, #0x1
	str     r1, [r0, #GraphicData4_c]
	str     r2, [r0, #GraphicData4_DestinationMain]
	mov     r1, r0
	str     r2, [r0, #GraphicData4_DestinationSub]
	add     r1, #GraphicData4_3c
	strb    r2, [r1] @ GraphicData4_3c
	str     r2, [r0, #GraphicData4_40]

	ldr     r3, =Function_20a818c
	add     r0, #GraphicData4_10
	bx      r3
@ 0x201eef2

.align 2
.pool
thumb_func_end InitGraphicData4



/* Input:
r0: GraphicData5
r1: GraphicData4
*/
.thumb
Function_201eef8_CopyToGraphicData4: @ 201eef8 :thumb
	ldr     r2, [r0, #GraphicData5_GraphicData2]
	str     r2, [r1, #GraphicData4_GraphicData2]
	ldr     r2, [r0, #GraphicData5_8]
	str     r2, [r1, #GraphicData4_c]
	ldr     r2, [r0, #GraphicData5_4]
	str     r2, [r1, #GraphicData4_4]

	ldr     r2, [r1, #GraphicData4_GraphicData2]
	ldr     r2, [r2, #GraphicData2_c]
	lsr     r2, r2, #8
	strb    r2, [r1, #GraphicData4_8]
	ldr     r0, [r0, #GraphicData5_c]
	str     r0, [r1, #GraphicData4_44]

	mov     r0, #0x0
	str     r0, [r1, #GraphicData4_48]
	str     r0, [r1, #GraphicData4_4c]
	str     r0, [r1, #GraphicData4_50]

	mov     r0, #0x1
	bx      lr
@ 0x201ef1c


.thumb
Function_201ef1c: @ 201ef1c :thumb
	push    {r3-r6}
	ldr     r2, =RAM_21c0760
	mov     r1, #0x0
	ldr     r5, [r2, #RAM_21c0760_0]
	ldr     r4, [r5, #LoadGraphicDataList_MaxNrOfParts]
	cmp     r4, #0x0
	ble     branch_201ef4e

	ldr     r2, [r5, #LoadGraphicDataList_StartPtr]
	mov     r3, r1
branch_201ef2e: @ 201ef2e :thumb
	mov     r6, r2
	add     r6, #GraphicData4_3c
	ldrb    r6, [r6] @ GraphicData4_3c
	cmp     r6, #0x0
	beq     branch_201ef42

	ldr     r6, [r5, #LoadGraphicDataList_StartPtr]
	add     r6, r6, r3
	add     r6, #GraphicData4_10
	cmp     r6, r0
	beq     branch_201ef4e

branch_201ef42: @ 201ef42 :thumb
	ldr     r6, [r5, #LoadGraphicDataList_MaxNrOfParts]
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r2, #GraphicData4_Size
	add     r3, #GraphicData4_Size
	cmp     r1, r6
	blt     branch_201ef2e

branch_201ef4e: @ 201ef4e :thumb
	cmp     r1, r4
	blt     branch_201ef58

	mov     r0, #0x0
	pop     {r3-r6}
	bx      lr

branch_201ef58: @ 201ef58 :thumb
	mov     r0, #GraphicData4_Size
	ldr     r2, [r5, #LoadGraphicDataList_StartPtr]
	mul     r0, r1
	add     r0, r2, r0
	pop     {r3-r6}
	bx      lr
@ 0x201ef64

.align 2
.pool



/* Input:
r0: GraphicData4
*/
.thumb
Function_201ef68: @ 201ef68 :thumb
	push    {r3,lr}
	ldrb    r1, [r0, #GraphicData4_8]
	mov     r2, #0x1
	cmp     r1, #0x0
	beq     branch_201ef7a

	mov     r1, #0x2
	add     r0, #GraphicData4_3c
	strb    r1, [r0] @ GraphicData4_3c
	b       branch_201ef94

branch_201ef7a: @ 201ef7a :thumb
	mov     r1, r0
	add     r1, #GraphicData4_3c
	strb    r2, [r1] @ GraphicData4_3c
	ldr     r1, [r0, #GraphicData4_44]
	cmp     r1, #0x0
	bne     branch_201ef8e
	bl      Function_201ef98
	mov     r2, r0
	b       branch_201ef94

branch_201ef8e: @ 201ef8e :thumb
	bl      Function_201efcc
	mov     r2, r0
branch_201ef94: @ 201ef94 :thumb
	mov     r0, r2
	pop     {r3,pc}
@ 0x201ef98


/* Input:
r0: GraphicData4
*/
.thumb
Function_201ef98: @ 201ef98 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0

	ldr     r0, [r5, #GraphicData4_GraphicData2]
	ldr     r1, [r5, #GraphicData4_4]
	ldr     r0, [r0, #GraphicData2_Size]
	add     r2, sp, #0x4
	add     r3, sp, #0x0
	bl      Function_201f76c_GetDestinations
	mov     r4, r0
	beq     branch_201efc4

	ldr     r1, [sp, #0x4]                  @ DestinationMain
	ldr     r2, [sp, #0x0]                  @ DestinationSub
	mov     r0, r5
	bl      Function_201f09c_SetGraphicData4_Destinations

	ldr     r0, [r5, #GraphicData4_GraphicData2]
	ldr     r1, [r5, #GraphicData4_4]
	ldr     r0, [r0, #GraphicData2_Size]
	bl      Function_201f7bc_CalcNewDestinations

branch_201efc4: @ 201efc4 :thumb
	mov     r0, r4
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x201efca


/* Input:
r0: GraphicData4
*/
.align 2, 0
.thumb
Function_201efcc: @ 201efcc :thumb
	push    {r4,lr}
	add     sp, #-0x18
	mov     r4, r0

	add     r0, sp, #0xc
	str     r0, [sp, #0x0]
	add     r0, sp, #0x8
	str     r0, [sp, #0x4]
	ldr     r3, [r4, #GraphicData4_GraphicData2]
	ldr     r0, [r4, #GraphicData4_4]
	ldr     r3, [r3, #GraphicData2_Size]
	add     r1, sp, #0x14
	add     r2, sp, #0x10
	bl      Function_201f0b0
	cmp     r0, #0x0
	bne     branch_201eff2

	add     sp, #0x18
	mov     r0, #0x0
	pop     {r4,pc}

branch_201eff2: @ 201eff2 :thumb
	ldr     r1, [sp, #0x14]
	ldr     r2, [sp, #0x10]
	mov     r0, r4              @ GraphicData4
	bl      Function_201f15c

	mov     r0, #0x1
	str     r0, [r4, #GraphicData4_48]
	ldr     r0, [sp, #0xc]
	str     r0, [r4, #GraphicData4_4c]
	ldr     r0, [sp, #0x8]
	str     r0, [r4, #GraphicData4_50]
	mov     r0, r4              @ GraphicData4
	bl      Function_201f1f4

	ldr     r0, [sp, #0x8]
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #GraphicData4_4]
	ldr     r1, [sp, #0x14]
	ldr     r2, [sp, #0x10]
	ldr     r3, [sp, #0xc]
	bl      Function_201f18c

	mov     r0, #0x1
	add     sp, #0x18
	pop     {r4,pc}
@ 0x201f024


/* Input:
r0: GraphicData4
*/
.thumb
Function_201f024: @ 201f024 :thumb
	push    {r4,lr}
	mov     r4, r0

	ldr     r1, [r4, #GraphicData4_48]
	cmp     r1, #0x0
	beq     branch_201f032
	bl      Function_201f670
branch_201f032: @ 201f032 :thumb

	mov     r0, r4
	bl      InitGraphicData4
	pop     {r4,pc}
@ 0x201f03a


/* Return:
r0: GraphicData4
*/
.align 2, 0
.thumb
Function_201f03c: @ 201f03c :thumb
	push    {r4,r5}
	ldr     r2, =RAM_21c0760
	mov     r1, #0x0
	ldr     r5, [r2, #RAM_21c0760_0]
	ldr     r2, [r5, #LoadGraphicDataList_MaxNrOfParts]
	cmp     r2, #0x0
	ble     branch_201f068

	ldr     r2, [r5, #LoadGraphicDataList_StartPtr]
	mov     r4, r2
branch_201f04e: @ 201f04e :thumb
	ldr     r3, [r4, #GraphicData4_c]
	cmp     r0, r3
	bne     branch_201f05e

	mov     r0, #GraphicData4_Size
	mul     r0, r1
	add     r0, r2, r0
	pop     {r4,r5}
	bx      lr

branch_201f05e: @ 201f05e :thumb
	ldr     r3, [r5, #LoadGraphicDataList_MaxNrOfParts]
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r4, #GraphicData4_Size
	cmp     r1, r3
	blt     branch_201f04e

branch_201f068: @ 201f068 :thumb
	mov     r0, #0x0
	pop     {r4,r5}
	bx      lr
@ 0x201f06e

.align 2
.pool



.thumb
Function_201f074: @ 201f074 :thumb
	cmp     r1, #0x1
	bne     branch_201f080
	mov     r1, #0x1
	lsl     r1, r1, #26
	ldr     r2, [r1, #0x0]
	b       branch_201f084

branch_201f080: @ 201f080 :thumb
	ldr     r1, [pc, #0x10] @ 0x201f094, (=REG_DISPCNT_SUB)
	ldr     r2, [r1, #0x0]
branch_201f084: @ 201f084 :thumb
	ldr     r1, [pc, #0x10] @ 0x201f098, (=0x300010)
	and     r2, r1
	ldr     r1, [r0, #0x0]
	str     r2, [r1, #0x8]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x8]
	bx      lr
@ 0x201f092

.align 2
.word REG_DISPCNT_SUB @ 0x201f094
.word 0x300010 @ 0x201f098



/* Input:
r0: GraphicData4
r1: DestinationMain
r2: DestinationSub
*/
.thumb
Function_201f09c_SetGraphicData4_Destinations: @ 201f09c :thumb
	push    {r3,lr}
	str     r1, [r0, #GraphicData4_DestinationMain]
	str     r2, [r0, #GraphicData4_DestinationSub]
	ldrb    r1, [r0, #GraphicData4_8]
	cmp     r1, #0x0
	bne     branch_201f0ac
	bl      Function_201f1f4
branch_201f0ac: @ 201f0ac :thumb

	pop     {r3,pc}
@ 0x201f0ae


.align 2, 0
.thumb
Function_201f0b0: @ 201f0b0 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [sp, #0x1c]
	mov     r6, r2
	str     r0, [sp, #0x1c]
	mov     r2, #0x1
	mov     r0, r5
	mov     r4, r1
	str     r3, [sp, #0x0]
	ldr     r7, [sp, #0x18]
	tst     r0, r2
	beq     branch_201f108

	ldr     r1, =RAM_21c0760
	mov     r0, r3
	ldr     r1, [r1, #RAM_21c0760_0]
	ldr     r1, [r1, #LoadGraphicDataList_PartSizesMain]
	bl      Function_201f734
	ldr     r1, =RAM_21c0760
	str     r0, [r7, #0x0]
	ldr     r1, [r1, #RAM_21c0760_0]
	ldr     r1, [r1, #LoadGraphicDataList_PartSizesMain]
	bl      Function_201f754_Division
	ldr     r1, =RAM_21c0760
	ldr     r1, [r1, #RAM_21c0760_0]
	ldr     r1, [r1, #LoadGraphicDataList_MemoryPoolMain]
	bl      Function_201f598
	mov     r1, #0x0
	mvn     r1, r1
	str     r0, [r4, #0x0]
	cmp     r0, r1
	bne     branch_201f0fc

	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_201f0fc: @ 201f0fc :thumb
	ldr     r1, =RAM_21c0760
	ldr     r1, [r1, #RAM_21c0760_0]
	ldr     r1, [r1, #LoadGraphicDataList_PartSizesMain]
	bl      Function_201f764
	str     r0, [r4, #0x0]
branch_201f108: @ 201f108 :thumb
	mov     r0, #0x2
	tst     r0, r5
	beq     branch_201f152

	ldr     r1, =RAM_21c0760
	ldr     r0, [sp, #0x0]
	ldr     r1, [r1, #RAM_21c0760_0]
	mov     r2, #0x1
	ldr     r1, [r1, #LoadGraphicDataList_PartSizesSub]
	bl      Function_201f734
	ldr     r1, [sp, #0x1c]
	str     r0, [r1, #0x0]
	ldr     r1, =RAM_21c0760
	ldr     r1, [r1, #RAM_21c0760_0]
	ldr     r1, [r1, #LoadGraphicDataList_PartSizesSub]
	bl      Function_201f754_Division
	ldr     r1, =RAM_21c0760
	ldr     r1, [r1, #RAM_21c0760_0]
	ldr     r1, [r1, #LoadGraphicDataList_MemoryPoolSub]
	bl      Function_201f598
	mov     r1, #0x0
	mvn     r1, r1
	str     r0, [r6, #0x0]
	cmp     r0, r1
	bne     branch_201f146

	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_201f146: @ 201f146 :thumb
	ldr     r1, =RAM_21c0760
	ldr     r1, [r1, #RAM_21c0760_0]
	ldr     r1, [r1, #LoadGraphicDataList_PartSizesSub]
	bl      Function_201f764
	str     r0, [r6, #0x0]
branch_201f152: @ 201f152 :thumb
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x201f156

.align 2
.pool



/* Input:
r0: GraphicData4
*/
.thumb
Function_201f15c: @ 201f15c :thumb
	push    {r3,r4}
	ldr     r4, [r0, #GraphicData4_4]
	mov     r3, #0x1
	tst     r3, r4
	beq     branch_201f170
	ldr     r3, =RAM_21c0760
	ldr     r3, [r3, #RAM_21c0760_0]
	ldr     r3, [r3, #LoadGraphicDataList_MaxSizeMain]
	add     r1, r1, r3
	str     r1, [r0, #GraphicData4_DestinationMain]
branch_201f170: @ 201f170 :thumb

	ldr     r3, [r0, #GraphicData4_4]
	mov     r1, #0x2
	tst     r1, r3
	beq     branch_201f182
	ldr     r1, =RAM_21c0760
	ldr     r1, [r1, #RAM_21c0760_0]
	ldr     r1, [r1, #LoadGraphicDataList_MaxSizeSub]
	add     r1, r2, r1
	str     r1, [r0, #GraphicData4_DestinationSub]
branch_201f182: @ 201f182 :thumb

	pop     {r3,r4}
	bx      lr
@ 0x201f186

.align 2
.pool



.thumb
Function_201f18c: @ 201f18c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r0, #0x1
	mov     r4, r1
	mov     r6, r2
	tst     r0, r5
	beq     branch_201f1c0
	ldr     r1, =RAM_21c0760
	mov     r0, r3
	ldr     r1, [r1, #RAM_21c0760_0]
	ldr     r1, [r1, #LoadGraphicDataList_PartSizesMain]
	bl      Function_201f754_Division
	ldr     r1, =RAM_21c0760
	mov     r7, r0
	ldr     r1, [r1, #RAM_21c0760_0]
	mov     r0, r4
	ldr     r1, [r1, #LoadGraphicDataList_PartSizesMain]
	bl      Function_201f754_Division
	ldr     r2, =RAM_21c0760
	mov     r1, r7
	ldr     r2, [r2, #RAM_21c0760_0]
	ldr     r2, [r2, #LoadGraphicDataList_MemoryPoolMain]
	bl      Function_201f53c
branch_201f1c0: @ 201f1c0 :thumb

	mov     r0, #0x2
	tst     r0, r5
	beq     branch_201f1ec
	ldr     r1, =RAM_21c0760
	ldr     r0, [sp, #0x18]
	ldr     r1, [r1, #RAM_21c0760_0]
	ldr     r1, [r1, #LoadGraphicDataList_PartSizesSub]
	bl      Function_201f754_Division
	ldr     r1, =RAM_21c0760
	mov     r4, r0
	ldr     r1, [r1, #RAM_21c0760_0]
	mov     r0, r6
	ldr     r1, [r1, #LoadGraphicDataList_PartSizesSub]
	bl      Function_201f754_Division
	ldr     r2, =RAM_21c0760
	mov     r1, r4
	ldr     r2, [r2, #RAM_21c0760_0]
	ldr     r2, [r2, #LoadGraphicDataList_MemoryPoolSub]
	bl      Function_201f53c
branch_201f1ec: @ 201f1ec :thumb

	pop     {r3-r7,pc}
@ 0x201f1ee

.align 2
.pool



/* Input:
r0: GraphicData4
*/
.thumb
Function_201f1f4: @ 201f1f4 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #GraphicData4_10
	blx     Function_20a818c
	ldr     r1, [r4, #GraphicData4_4]
	cmp     r1, #GraphicData4_4_1|GraphicData4_4_2
	beq     branch_201f20c

	mov     r0, r4              @ GraphicData4
	bl      Function_201f220
	pop     {r4,pc}

branch_201f20c: @ 201f20c :thumb
	mov     r0, r4              @ GraphicData4
	mov     r1, #GraphicData4_4_1
	bl      Function_201f220

	mov     r0, r4              @ GraphicData4
	mov     r1, #GraphicData4_4_2
	bl      Function_201f220
	pop     {r4,pc}
@ 0x201f21e


/* Input:
r0: GraphicData4
r1: GraphicData4_4_1 and GraphicData4_4_2
*/
.align 2, 0
.thumb
Function_201f220: @ 201f220 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r2, [r5, #GraphicData4_40]
	mov     r4, r1
	cmp     r2, #0x0
	beq     branch_201f232

	bl      Function_201f074
	b       branch_201f234

branch_201f232: @ 201f232 :thumb
	mov     r0, r4
branch_201f234: @ 201f234 :thumb
	cmp     r4, #0x1
	bne     branch_201f242

	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r5, #GraphicData4_DestinationMain]
	ldr     r2, [r2, #0x0] @ 0x4000000 REG_DISPCNT
	b       branch_201f248

branch_201f242: @ 201f242 :thumb
	ldr     r2, =REG_DISPCNT_SUB
	ldr     r1, [r5, #GraphicData4_DestinationSub]
	ldr     r2, [r2, #0x0]

branch_201f248: @ 201f248 :thumb
	cmp     r0, #0x0
	ldr     r0, [r5, #GraphicData4_GraphicData2]
	bne     branch_201f25a

	add     r5, #GraphicData4_10
	mov     r2, r4                      @ 0: Tex, 1: OBJMain, 2: OBJSub
	mov     r3, r5                      @ GraphicData3
	blx     Function_20a8450_LoadTexOBJ
	pop     {r3-r5,pc}

branch_201f25a: @ 201f25a :thumb
	add     r5, #GraphicData4_10
	mov     r2, r4                      @ 0: Tex, 1: OBJMain, 2: OBJSub
	mov     r3, r5                      @ GraphicData3
	blx     Function_20a8224_LoadTexOBJ
	pop     {r3-r5,pc}
@ 0x201f266

.align 2
.pool



.thumb
Function_201f26c: @ 201f26c :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x10
	blx     Function_20a818c
	ldr     r1, [r4, #0x4]
	cmp     r1, #0x3
	beq     branch_201f284
	mov     r0, r4
	bl      Function_201f298
	pop     {r4,pc}

branch_201f284: @ 201f284 :thumb
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_201f298
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_201f298
	pop     {r4,pc}
@ 0x201f296


.align 2, 0
.thumb
Function_201f298: @ 201f298 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r2, [r5, #0x40]
	mov     r4, r1
	cmp     r2, #0x0
	beq     branch_201f2a8
	bl      Function_201f074
branch_201f2a8: @ 201f2a8 :thumb

	cmp     r4, #0x1
	bne     branch_201f2b6

	mov     r0, #0x1
	lsl     r0, r0, #26
	ldr     r1, [r5, #0x34]
	ldr     r0, [r0, #0x0] @ REG_DISPCNT
	b       branch_201f2bc

branch_201f2b6: @ 201f2b6 :thumb
	ldr     r0, =REG_DISPCNT_SUB
	ldr     r1, [r5, #0x38]
	ldr     r0, [r0, #0x0]

branch_201f2bc: @ 201f2bc :thumb
	ldr     r0, [r5, #0x0]
	add     r5, #0x10
	mov     r2, r4
	mov     r3, r5
	blx     Function_20a867c
	pop     {r3-r5,pc}
@ 0x201f2ca

.align 2
.pool



/* Return:
r0: GraphicData4
*/
.thumb
Function_201f2d0_GetNewGraphicData4Chunk: @ 201f2d0 :thumb
	push    {r3,r4}
	ldr     r1, =RAM_21c0760
	mov     r0, #0x0
	ldr     r4, [r1, #RAM_21c0760_0]
	ldr     r1, [r4, #LoadGraphicDataList_MaxNrOfParts]
	cmp     r1, #0x0
	ble     branch_201f300

	ldr     r1, [r4, #LoadGraphicDataList_StartPtr]
	mov     r3, r1
branch_201f2e2: @ 201f2e2 :thumb
	mov     r2, r3
	add     r2, #GraphicData4_3c
	ldrb    r2, [r2] @ GraphicData4_3c
	cmp     r2, #0x0
	bne     branch_201f2f6

	mov     r2, #GraphicData4_Size
	mul     r2, r0
	add     r0, r1, r2
	pop     {r3,r4}
	bx      lr

branch_201f2f6: @ 201f2f6 :thumb
	ldr     r2, [r4, #LoadGraphicDataList_MaxNrOfParts]
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r3, #GraphicData4_Size
	cmp     r0, r2
	blt     branch_201f2e2

branch_201f300: @ 201f300 :thumb
	mov     r0, #0x0
	pop     {r3,r4}
	bx      lr
@ 0x201f306

.align 2
.pool



.thumb
Function_201f30c_InitAvailableMemory: @ 201f30c :thumb
	push    {r3,lr}
	blx     GX_GetBankForOBJ
	cmp     r0, #VRAM_BANK_E|VRAM_BANK_F
	bgt     branch_201f33c
	bge     branch_201f384
	cmp     r0, #VRAM_BANK_E
	bgt     branch_201f336
	bge     branch_201f378_OBJBankE
	cmp     r0, #VRAM_BANK_A|VRAM_BANK_B
	bhi     branch_201f3b4

	add     r1, r0, r0
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x201f32e

Jumppoints_201f32e:
.hword branch_201f356_NoOBJBank - Jumppoints_201f32e - 2
.hword branch_201f39c_OBJBankAorB - Jumppoints_201f32e - 2
.hword branch_201f39c_OBJBankAorB - Jumppoints_201f32e - 2
.hword branch_201f3a8_OBJBankAandB - Jumppoints_201f32e - 2

branch_201f336: @ 201f336 :thumb
	cmp     r0, #VRAM_BANK_F
	beq     branch_201f360
	b       branch_201f3b4

branch_201f33c: @ 201f33c :thumb
	cmp     r0, #VRAM_BANK_E|VRAM_BANK_G
	bgt     branch_201f348
	bge     branch_201f384
	cmp     r0, #VRAM_BANK_G
	beq     branch_201f360
	b       branch_201f3b4

branch_201f348: @ 201f348 :thumb
	cmp     r0, #VRAM_BANK_F|VRAM_BANK_G
	bgt     branch_201f350
	beq     branch_201f36c
	b       branch_201f3b4

branch_201f350: @ 201f350 :thumb
	cmp     r0, #VRAM_BANK_E|VRAM_BANK_F|VRAM_BANK_G
	beq     branch_201f390
	b       branch_201f3b4

branch_201f356_NoOBJBank: @ 201f356 :thumb
	ldr     r0, =RAM_21c0760
	mov     r1, #0x0
	ldr     r0, [r0, #RAM_21c0760_0]
	str     r1, [r0, #LoadGraphicDataList_MainMemSizeBytes]
	b       branch_201f3bc

branch_201f360: @ 201f360 :thumb
	ldr     r0, =RAM_21c0760
	mov     r1, #0x1
	ldr     r0, [r0, #RAM_21c0760_0]
	lsl     r1, r1, #14
	str     r1, [r0, #LoadGraphicDataList_MainMemSizeBytes]
	b       branch_201f3bc

branch_201f36c: @ 201f36c :thumb
	ldr     r0, =RAM_21c0760
	mov     r1, #0x2
	ldr     r0, [r0, #RAM_21c0760_0]
	lsl     r1, r1, #14
	str     r1, [r0, #LoadGraphicDataList_MainMemSizeBytes]
	b       branch_201f3bc

branch_201f378_OBJBankE: @ 201f378 :thumb
	ldr     r0, =RAM_21c0760
	mov     r1, #0x1
	ldr     r0, [r0, #RAM_21c0760_0]
	lsl     r1, r1, #16             @ 64K
	str     r1, [r0, #LoadGraphicDataList_MainMemSizeBytes]
	b       branch_201f3bc

branch_201f384: @ 201f384 :thumb
	ldr     r0, =RAM_21c0760
	mov     r1, #0x5
	ldr     r0, [r0, #RAM_21c0760_0]
	lsl     r1, r1, #14
	str     r1, [r0, #LoadGraphicDataList_MainMemSizeBytes]
	b       branch_201f3bc

branch_201f390: @ 201f390 :thumb
	ldr     r0, =RAM_21c0760
	mov     r1, #0x6
	ldr     r0, [r0, #RAM_21c0760_0]
	lsl     r1, r1, #14
	str     r1, [r0, #LoadGraphicDataList_MainMemSizeBytes]
	b       branch_201f3bc

branch_201f39c_OBJBankAorB: @ 201f39c :thumb
	ldr     r0, =RAM_21c0760
	mov     r1, #0x2
	ldr     r0, [r0, #RAM_21c0760_0]
	lsl     r1, r1, #16                 @ 128K
	str     r1, [r0, #LoadGraphicDataList_MainMemSizeBytes]
	b       branch_201f3bc

branch_201f3a8_OBJBankAandB: @ 201f3a8 :thumb
	ldr     r0, =RAM_21c0760
	mov     r1, #0x1
	ldr     r0, [r0, #RAM_21c0760_0]
	lsl     r1, r1, #18                 @ 256K
	str     r1, [r0, #LoadGraphicDataList_MainMemSizeBytes]
	b       branch_201f3bc

branch_201f3b4: @ 201f3b4 :thumb
	ldr     r0, =RAM_21c0760
	mov     r1, #0x0
	ldr     r0, [r0, #RAM_21c0760_0]
	str     r1, [r0, #LoadGraphicDataList_MainMemSizeBytes]

branch_201f3bc: @ 201f3bc :thumb
	blx     GX_GetBankForSubOBJ
	cmp     r0, #VRAM_BANK_None
	beq     branch_201f3d2_NoSubOBJBank
	cmp     r0, #VRAM_BANK_D
	beq     branch_201f3e6
	mov     r1, #0x1
	lsl     r1, r1, #8      @ VRAM_BANK_I
	cmp     r0, r1
	beq     branch_201f3dc
	b       branch_201f3f2

branch_201f3d2_NoSubOBJBank: @ 201f3d2 :thumb
	ldr     r0, =RAM_21c0760
	mov     r1, #0x0
	ldr     r0, [r0, #RAM_21c0760_0]
	str     r1, [r0, #LoadGraphicDataList_SubMemSizeBytes]
	b       branch_201f3fa

branch_201f3dc: @ 201f3dc :thumb
	ldr     r0, =RAM_21c0760
	lsl     r1, r1, #6
	ldr     r0, [r0, #RAM_21c0760_0]
	str     r1, [r0, #LoadGraphicDataList_SubMemSizeBytes]
	b       branch_201f3fa

branch_201f3e6: @ 201f3e6 :thumb
	ldr     r0, =RAM_21c0760
	mov     r1, #0x2
	ldr     r0, [r0, #RAM_21c0760_0]
	lsl     r1, r1, #16
	str     r1, [r0, #LoadGraphicDataList_SubMemSizeBytes]
	b       branch_201f3fa

branch_201f3f2: @ 201f3f2 :thumb
	ldr     r0, =RAM_21c0760
	mov     r1, #0x0
	ldr     r0, [r0, #RAM_21c0760_0]
	str     r1, [r0, #LoadGraphicDataList_SubMemSizeBytes]

branch_201f3fa: @ 201f3fa :thumb
	ldr     r0, =RAM_21c0760
	ldr     r1, [r0, #RAM_21c0760_0]
	ldr     r0, [r1, #LoadGraphicDataList_24]
	ldr     r1, [r1, #LoadGraphicDataList_PartSizesMain]
	bl      Function_201f764 @ [LoadGraphicDataList_24] * [LoadGraphicDataList_PartSizesMain] << 5

	ldr     r1, =RAM_21c0760
	ldr     r3, [r1, #RAM_21c0760_0]
	ldr     r2, [r3, #LoadGraphicDataList_MainMemSizeBytes]
	sub     r0, r2, r0
	str     r0, [r3, #LoadGraphicDataList_MaxSizeMain] @ [LoadGraphicDataList_MainMemSizeBytes] - Function_201f764

	ldr     r1, [r1, #RAM_21c0760_0]
	ldr     r0, [r1, #LoadGraphicDataList_28]
	ldr     r1, [r1, #LoadGraphicDataList_PartSizesSub]
	bl      Function_201f764

	ldr     r1, =RAM_21c0760
	ldr     r3, [r1, #RAM_21c0760_0]
	ldr     r2, [r3, #LoadGraphicDataList_SubMemSizeBytes]
	sub     r0, r2, r0
	str     r0, [r3, #LoadGraphicDataList_MaxSizeSub]

	ldr     r1, [r1, #RAM_21c0760_0]
	mov     r2, #0x0
	ldr     r0, [r1, #LoadGraphicDataList_MaxSizeMain]
	cmp     r0, #0x0
	blt     branch_201f436
	ldr     r0, [r1, #LoadGraphicDataList_MaxSizeSub]
	cmp     r0, #0x0
	blt     branch_201f436
	mov     r2, #0x1
branch_201f436: @ 201f436 :thumb

	cmp     r2, #0x0
	bne     branch_201f43e
	bl      ErrorHandling
branch_201f43e: @ 201f43e :thumb

	ldr     r0, =RAM_21c0760
	mov     r2, #0x0
	ldr     r1, [r0, #RAM_21c0760_0]
	ldr     r0, [r1, #LoadGraphicDataList_MaxSizeMain]
	cmp     r0, #0x0
	blt     branch_201f452

	ldr     r0, [r1, #LoadGraphicDataList_MaxSizeSub]
	cmp     r0, #0x0
	blt     branch_201f452
	mov     r2, #0x1
branch_201f452: @ 201f452 :thumb

	cmp     r2, #0x0
	bne     branch_201f45a
	bl      ErrorHandling
branch_201f45a: @ 201f45a :thumb

	pop     {r3,pc}
@ 0x201f45c

.align 2
.pool



.thumb
Function_201f460: @ 201f460 :thumb
	push    {r3,lr}
	ldr     r0, =RAM_21c0760
	ldr     r0, [r0, #RAM_21c0760_0]
	ldr     r0, [r0, #LoadGraphicDataList_MemoryPoolMain]
	bl      Function_201f524

	ldr     r0, =RAM_21c0760
	ldr     r0, [r0, #RAM_21c0760_0]
	ldr     r0, [r0, #LoadGraphicDataList_MemoryPoolSub]
	bl      Function_201f524
	pop     {r3,pc}
@ 0x201f478

.align 2
.pool



/* Input:
r0: store to [LoadGraphicDataList_24]
r1: store to [LoadGraphicDataList_28]
r2: [InitLoadGraphicDataList_c]
*/
.thumb
Function_201f47c: @ 201f47c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, =RAM_21c0760
	mov     r4, r1
	ldr     r1, [r0, #RAM_21c0760_0]
	mov     r6, r2
	str     r5, [r1, #LoadGraphicDataList_24]
	ldr     r1, [r0, #RAM_21c0760_0]
	str     r4, [r1, #LoadGraphicDataList_28]

	ldr     r0, [r0, #RAM_21c0760_0]
	ldr     r0, [r0, #LoadGraphicDataList_MemoryPoolMain]
	cmp     r0, #0x0
	beq     branch_201f49a
	bl      free
branch_201f49a: @ 201f49a :thumb

	ldr     r0, =RAM_21c0760
	ldr     r0, [r0, #RAM_21c0760_0]
	ldr     r0, [r0, #LoadGraphicDataList_MemoryPoolSub]
	cmp     r0, #0x0
	beq     branch_201f4a8
	bl      free
branch_201f4a8: @ 201f4a8 :thumb

	ldr     r0, =RAM_21c0760
	ldr     r0, [r0, #RAM_21c0760_0]
	ldr     r0, [r0, #LoadGraphicDataList_24]
	cmp     r0, #0x0
	beq     branch_201f4c0

	mov     r0, r6
	lsr     r1, r5, #3
	bl      malloc
	ldr     r1, =RAM_21c0760
	ldr     r1, [r1, #RAM_21c0760_0]
	str     r0, [r1, #LoadGraphicDataList_MemoryPoolMain]

branch_201f4c0: @ 201f4c0 :thumb
	ldr     r0, =RAM_21c0760
	ldr     r0, [r0, #RAM_21c0760_0]
	ldr     r0, [r0, #LoadGraphicDataList_28]
	cmp     r0, #0x0
	beq     branch_201f4d8

	mov     r0, r6
	lsr     r1, r4, #3
	bl      malloc
	ldr     r1, =RAM_21c0760
	ldr     r1, [r1, #RAM_21c0760_0]
	str     r0, [r1, #LoadGraphicDataList_MemoryPoolSub]

branch_201f4d8: @ 201f4d8 :thumb
	bl      Function_201f460
	pop     {r4-r6,pc}
@ 0x201f4de

.align 2
.pool



.thumb
Function_201f4e4: @ 201f4e4 :thumb
	push    {r3,lr}
	cmp     r0, #0x0
	beq     branch_201f506

	ldr     r1, =RAM_21c0760
	ldr     r2, [r1, #RAM_21c0760_0]
	ldr     r1, [r2, #LoadGraphicDataList_MemoryPoolMain]
	cmp     r0, r1
	bne     branch_201f4fe

	mov     r1, #0x0
	str     r1, [r2, #LoadGraphicDataList_24]
	bl      free
	pop     {r3,pc}

branch_201f4fe: @ 201f4fe :thumb
	mov     r1, #0x0
	str     r1, [r2, #LoadGraphicDataList_28]
	bl      free
branch_201f506: @ 201f506 :thumb
	pop     {r3,pc}
@ 0x201f508

.align 2
.pool



.thumb
Function_201f50c: @ 201f50c :thumb
	ldr     r1, =RAM_21c0760
	ldr     r2, [r1, #RAM_21c0760_0]
	ldr     r1, [r2, #LoadGraphicDataList_MemoryPoolMain]
	cmp     r0, r1
	bne     branch_201f51a

	ldr     r0, [r2, #LoadGraphicDataList_24]
	bx      lr

branch_201f51a: @ 201f51a :thumb
	ldr     r0, [r2, #LoadGraphicDataList_28]
	bx      lr
@ 0x201f51e

.align 2
.pool



.thumb
Function_201f524: @ 201f524 :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_201f53a

	bl      Function_201f50c
	mov     r2, r0
	mov     r0, r4
	mov     r1, #0x0
	lsr     r2, r2, #3
	blx     Call_FillMemWithValue

branch_201f53a: @ 201f53a :thumb
	pop     {r4,pc}
@ 0x201f53c


.thumb
Function_201f53c: @ 201f53c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r6, r1
	mov     r4, r2
	beq     branch_201f592

	mov     r0, r4
	bl      Function_201f50c
	add     r6, r5, r6
	mov     r7, r0
	cmp     r5, r6
	bhs     branch_201f592

branch_201f556: @ 201f556 :thumb
	cmp     r5, r7
	bhs     branch_201f592

	mov     r0, r5
	add     r1, sp, #0x4
	add     r2, sp, #0x0
	bl      Function_201f80c_GetFilePartsAndRest
	add     r0, sp, #0x0
	ldrb    r1, [r0, #0x0]
	mov     r0, #0x1
	lsl     r0, r1
	ldr     r1, [sp, #0x4]
	ldrb    r1, [r4, r1]
	tst     r0, r1
	beq     branch_201f578
	bl      ErrorHandling
branch_201f578: @ 201f578 :thumb

	add     r2, sp, #0x0
	ldrb    r3, [r2, #0x0]
	ldr     r1, [sp, #0x4]
	mov     r2, #0x1
	lsl     r2, r3
	lsl     r2, r2, #24
	ldrb    r0, [r4, r1]
	lsr     r2, r2, #24
	.hword  0x1c6d @ add r5, r5, #0x1
	orr     r0, r2
	strb    r0, [r4, r1]
	cmp     r5, r6
	blo     branch_201f556

branch_201f592: @ 201f592 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x201f596


.align 2, 0
.thumb
Function_201f598: @ 201f598 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r7, r0
	str     r1, [sp, #0x0]
	cmp     r1, #0x0
	beq     branch_201f616

	mov     r0, r1
	bl      Function_201f50c
	mov     r6, #0x0
	str     r0, [sp, #0x4]
	cmp     r0, #0x0
	bls     branch_201f616

branch_201f5b2: @ 201f5b2 :thumb
	mov     r0, r6
	add     r1, sp, #0xc
	add     r2, sp, #0x8
	bl      Function_201f80c_GetFilePartsAndRest
	add     r0, sp, #0x8
	ldrb    r1, [r0, #0x0]
	mov     r0, #0x1
	mov     r4, #0x0
	lsl     r0, r1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	b       branch_201f5f4

branch_201f5cc: @ 201f5cc :thumb
	add     r5, r6, r4
	mov     r0, r5
	add     r1, sp, #0xc
	add     r2, sp, #0x8
	bl      Function_201f80c_GetFilePartsAndRest
	add     r0, sp, #0x8
	ldrb    r1, [r0, #0x0]
	mov     r0, #0x1
	lsl     r0, r1
	lsl     r0, r0, #24
	ldr     r1, [sp, #0x4]
	lsr     r0, r0, #24
	cmp     r5, r1
	blo     branch_201f5f2

	mov     r0, #0x0
	add     sp, #0x10
	mvn     r0, r0
	pop     {r3-r7,pc}

branch_201f5f2: @ 201f5f2 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
branch_201f5f4: @ 201f5f4 :thumb
	ldr     r2, [sp, #0xc]
	ldr     r1, [sp, #0x0]
	ldrb    r1, [r1, r2]
	tst     r0, r1
	bne     branch_201f602

	cmp     r4, r7
	bls     branch_201f5cc

branch_201f602: @ 201f602 :thumb
	cmp     r4, r7
	bls     branch_201f60c

	add     sp, #0x10
	mov     r0, r6
	pop     {r3-r7,pc}

branch_201f60c: @ 201f60c :thumb
	add     r0, r6, r4
	add     r6, r0, #0x1
	ldr     r0, [sp, #0x4]
	cmp     r6, r0
	blo     branch_201f5b2

branch_201f616: @ 201f616 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x201f61e


/* Input:
r0: Available Nr of Parts
r1: Nr of Parts used by file
r2: [LoadGraphicDataList_MemoryPoolMain] [LoadGraphicDataList_MemoryPoolSub]
*/
.align 2, 0
.thumb
Function_201f620_SetBitsInMemPool: @ 201f620 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r4, r2
	beq     branch_201f66a

	add     r6, r5, r1
	cmp     r5, r6
	bhs     branch_201f66a

	add     r7, sp, #0x0
branch_201f632: @ 201f632 :thumb
	mov     r0, r5
	add     r1, sp, #0x4        @ Parts
	add     r2, sp, #0x0        @ Rest
	bl      Function_201f80c_GetFilePartsAndRest
	ldrb    r1, [r7]
	mov     r0, #0x1
	lsl     r0, r1
	ldr     r1, [sp, #0x4]
	ldrb    r1, [r4, r1]
	tst     r0, r1
	bne     branch_201f64e
	bl      ErrorHandling
branch_201f64e: @ 201f64e :thumb

	ldrb    r0, [r7]
	mov     r1, #0x1
	ldr     r3, [sp, #0x4]
	lsl     r1, r0
	mov     r0, #0xff
	eor     r0, r1
	lsl     r0, r0, #24
	ldrb    r2, [r4, r3]
	lsr     r0, r0, #24
	.hword  0x1c6d @ add r5, r5, #0x1
	and     r0, r2
	strb    r0, [r4, r3]
	cmp     r5, r6
	blo     branch_201f632

branch_201f66a: @ 201f66a :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x201f66e


/* Input:
r0: GraphicData4
*/
.align 2, 0
.thumb
Function_201f670: @ 201f670 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r0, [r4, #GraphicData4_4]
	mov     r1, #GraphicData4_4_1
	tst     r0, r1
	beq     branch_201f6ae

	mov     r0, r4
	add     r0, #GraphicData4_10
	blx     Function_20a81b0

	ldr     r1, =RAM_21c0760
	ldr     r2, [r1, #RAM_21c0760_0]
	ldr     r1, [r2, #LoadGraphicDataList_MaxSizeMain]
	sub     r0, r0, r1
	ldr     r1, [r2, #LoadGraphicDataList_PartSizesMain]
	bl      Function_201f754_Division

	ldr     r1, =RAM_21c0760
	mov     r5, r0
	ldr     r1, [r1, #RAM_21c0760_0]
	ldr     r0, [r4, #GraphicData4_4c]
	ldr     r1, [r1, #LoadGraphicDataList_PartSizesMain]
	bl      Function_201f754_Division

	ldr     r2, =RAM_21c0760
	mov     r1, r0
	ldr     r2, [r2, #RAM_21c0760_0]
	mov     r0, r5
	ldr     r2, [r2, #LoadGraphicDataList_MemoryPoolMain]
	bl      Function_201f620_SetBitsInMemPool

branch_201f6ae: @ 201f6ae :thumb
	ldr     r0, [r4, #GraphicData4_4]
	mov     r1, #GraphicData4_4_2
	tst     r0, r1
	beq     branch_201f6e8

	mov     r0, r4
	add     r0, #GraphicData4_10
	blx     Function_20a81b0

	ldr     r1, =RAM_21c0760
	ldr     r2, [r1, #RAM_21c0760_0]
	ldr     r1, [r2, #LoadGraphicDataList_MaxSizeSub]
	sub     r0, r0, r1
	ldr     r1, [r2, #LoadGraphicDataList_PartSizesSub]
	bl      Function_201f754_Division

	ldr     r1, =RAM_21c0760
	mov     r5, r0
	ldr     r1, [r1, #RAM_21c0760_0]
	ldr     r0, [r4, #GraphicData4_50]
	ldr     r1, [r1, #LoadGraphicDataList_PartSizesSub]
	bl      Function_201f754_Division

	ldr     r2, =RAM_21c0760
	mov     r1, r0
	ldr     r2, [r2, #RAM_21c0760_0]
	mov     r0, r5
	ldr     r2, [r2, #LoadGraphicDataList_MemoryPoolSub]
	bl      Function_201f620_SetBitsInMemPool

branch_201f6e8: @ 201f6e8 :thumb
	mov     r0, #0x0
	str     r0, [r4, #GraphicData4_48]
	pop     {r3-r5,pc}
@ 0x201f6ee

.align 2
.pool



.thumb
Function_201f6f4: @ 201f6f4 :thumb
	ldr     r1, [pc, #0x30] @ 0x201f728, (=0x100010)
	cmp     r0, r1
	bgt     branch_201f702
	bge     branch_201f718
	cmp     r0, #0x10
	beq     branch_201f714
	b       branch_201f724

branch_201f702: @ 201f702 :thumb
	ldr     r1, [pc, #0x28] @ 0x201f72c, (=0x200010)
	cmp     r0, r1
	bgt     branch_201f70c
	beq     branch_201f71c
	b       branch_201f724

branch_201f70c: @ 201f70c :thumb
	ldr     r1, [pc, #0x20] @ 0x201f730, (=0x300010)
	cmp     r0, r1
	beq     branch_201f720
	b       branch_201f724

branch_201f714: @ 201f714 :thumb
	mov     r0, #0x1
	bx      lr

branch_201f718: @ 201f718 :thumb
	mov     r0, #0x2
	bx      lr

branch_201f71c: @ 201f71c :thumb
	mov     r0, #0x4
	bx      lr

branch_201f720: @ 201f720 :thumb
	mov     r0, #0x8
	bx      lr

branch_201f724: @ 201f724 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x201f728

.word 0x100010 @ 0x201f728
.word 0x200010 @ 0x201f72c
.word 0x300010 @ 0x201f730



/* Input:
r0: [LoadGraphicDataList_UsedSizeMain]
r1: [LoadGraphicDataList_PartSizesMain]
r2: [GraphicData4_4]
*/
.thumb
Function_201f734: @ 201f734 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	lsl     r4, r4, #5
	mov     r1, r4
	mov     r5, r0
	mov     r6, r2
	blx     _s32_div_f
	cmp     r1, #0x0
	beq     branch_201f750

	sub     r5, r5, r1
	cmp     r6, #0x1
	bne     branch_201f750

	add     r5, r5, r4

branch_201f750: @ 201f750 :thumb
	mov     r0, r5
	pop     {r4-r6,pc}
@ 0x201f754


.thumb
Function_201f754_Division: @ 201f754 :thumb
	asr     r2, r0, #4
	lsr     r2, r2, #27
	add     r2, r0, r2
	ldr     r3, =_s32_div_f
	asr     r0, r2, #5
	bx      r3
@ 0x201f760

.align 2
.pool



.thumb
Function_201f764: @ 201f764 :thumb
	mul     r1, r0
	lsl     r0, r1, #5
	bx      lr
@ 0x201f76a


/* Input:
r0: [GraphicData2_Size]
r1: [GraphicData4_4]
r2: Ptr for DestinationMain
r3: Ptr for DestinationSub
*/
.align 2, 0
.thumb
Function_201f76c_GetDestinations: @ 201f76c :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r1, r2
	mov     r0, #GraphicData4_4_1
	mov     r2, r4
	mov     r7, r3
	tst     r2, r0
	beq     branch_201f796

	ldr     r2, =RAM_21c0760
	ldr     r2, [r2, #RAM_21c0760_0]
	ldr     r6, [r2, #LoadGraphicDataList_UsedSizeMain]
	ldr     r2, [r2, #LoadGraphicDataList_MaxSizeMain]
	add     r3, r6, r5
	cmp     r3, r2
	bls     branch_201f794

	bl      ErrorHandling
	mov     r0, #0x0
	b       branch_201f796

branch_201f794: @ 201f794 :thumb
	str     r6, [r1]              @ DestinationMain

branch_201f796: @ 201f796 :thumb
	mov     r1, #GraphicData4_4_2
	tst     r1, r4
	beq     branch_201f7b4

	ldr     r1, =RAM_21c0760
	ldr     r1, [r1, #RAM_21c0760_0]
	ldr     r3, [r1, #LoadGraphicDataList_UsedSizeSub]
	ldr     r1, [r1, #LoadGraphicDataList_MaxSizeSub]
	add     r2, r3, r5
	cmp     r2, r1
	bls     branch_201f7b2

	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_201f7b2: @ 201f7b2 :thumb
	str     r3, [r7]                    @ DestinationSub
branch_201f7b4: @ 201f7b4 :thumb
	pop     {r3-r7,pc}
@ 0x201f7b6

.align 2
.pool



/* Input:
r0: [GraphicData2_Size]
r1: [GraphicData4_4]
*/
.thumb
Function_201f7bc_CalcNewDestinations: @ 201f7bc :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r2, #GraphicData4_4_1
	mov     r0, r4
	tst     r0, r2
	beq     branch_201f7e4

	ldr     r0, =RAM_21c0760
	ldr     r3, [r0, #RAM_21c0760_0]
	ldr     r1, [r3, #LoadGraphicDataList_UsedSizeMain]
	add     r1, r1, r5
	str     r1, [r3, #LoadGraphicDataList_UsedSizeMain]

	ldr     r1, [r0, #RAM_21c0760_0]
	ldr     r0, [r1, #LoadGraphicDataList_UsedSizeMain]
	ldr     r1, [r1, #LoadGraphicDataList_PartSizesMain]
	bl      Function_201f734
	ldr     r1, =RAM_21c0760
	ldr     r1, [r1, #RAM_21c0760_0]
	str     r0, [r1, #LoadGraphicDataList_UsedSizeMain]

branch_201f7e4: @ 201f7e4 :thumb
	mov     r0, #GraphicData4_4_2
	tst     r0, r4
	beq     branch_201f806

	ldr     r0, =RAM_21c0760
	ldr     r2, [r0, #RAM_21c0760_0]
	ldr     r1, [r2, #LoadGraphicDataList_UsedSizeSub]
	add     r1, r1, r5
	str     r1, [r2, #LoadGraphicDataList_UsedSizeSub]

	ldr     r1, [r0, #RAM_21c0760_0]
	mov     r2, #0x1
	ldr     r0, [r1, #LoadGraphicDataList_UsedSizeSub]
	ldr     r1, [r1, #LoadGraphicDataList_PartSizesSub]
	bl      Function_201f734
	ldr     r1, =RAM_21c0760
	ldr     r1, [r1, #RAM_21c0760_0]
	str     r0, [r1, #LoadGraphicDataList_UsedSizeSub]

branch_201f806: @ 201f806 :thumb
	pop     {r3-r5,pc}
@ 0x201f808

.align 2
.pool



/* Input:
r0: Size
r1: Ptr to Size/8
r2: Ptr to Size%8
*/
.thumb
Function_201f80c_GetFilePartsAndRest: @ 201f80c :thumb
	asr     r3, r0, #3
	str     r3, [r1, #0x0]
	mov     r1, #0x7
	and     r0, r1
	strb    r0, [r2, #0x0]
	bx      lr
@ 0x201f818

