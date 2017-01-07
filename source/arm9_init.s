
thumb_func_start InitMainAreasOfMemory
InitMainAreasOfMemory: @ 2017850 :thumb
	push    {r3,lr}
	add     sp, #-0x30

	add     r0, sp, #0x10
	blx     OS_GetLowEntropyData

	add     r0, sp, #0x0
	add     r1, sp, #0x10
	mov     r2, #0x20
	blx     Function_20d3028
    
    @ build sum of bytes in r2 to r2+0xf and write into r3
	mov     r3, #0x0
	mov     r1, r3
	add     r2, sp, #0x0
branch_201786a: @ 201786a :thumb
	ldrb    r0, [r2]
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r3, r3, r0
	cmp     r1, #0x10
	blo     branch_201786a

	lsl     r0, r3, #24
	lsr     r3, r0, #24
	mov     r0, #0x3
	tst     r0, r3
	beq     branch_201788a
	mov     r0, #0x3
branch_2017882: @ 2017882 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	mov     r1, r3
	tst     r1, r0
	bne     branch_2017882

branch_201788a: @ 201788a :thumb
	ldr     r0, =Unknown_20e5674
	mov     r1, #0x4
	mov     r2, #0x7b
	bl      AllocateAreasOfMemory

	add     sp, #0x30
	pop     {r3,pc}
@ 0x2017898

.pool
thumb_func_end InitMainAreasOfMemory



thumb_func_start InitSystemForTheGame
InitSystemForTheGame: @ 201789c :thumb
	push    {r3-r5,lr}

	blx     OS_Init

	blx     InitDummy

	ldr     r2, =REG_POWERCNT
	ldr     r0, =0xfffffdf1
	ldrh    r1, [r2, #0x0]
	and     r1, r0
	ldr     r0, =0x20e @ POWER_2D_A | POWER_MATRIX | POWER_3D_CORE | POWER_2D_B
	orr     r0, r1
	strh    r0, [r2, #0x0]

	blx     GX_Init

	blx     OS_InitTick

	bl      InitMainAreasOfMemory

	mov     r0, #RAM_21bf67c_TaskList1_Size
	bl      GetAllocSizeForTasks
	mov     r1, r0
	mov     r0, #0x0
	mov     r2, #0x4
	blx     OS_AllocFromArenaLo
	mov     r1, r0
	mov     r0, #RAM_21bf67c_TaskList1_Size
	bl      InitTaskList
	ldr     r1, =RAM_21bf67c
	str     r0, [r1, #RAM_21bf67c_TaskList1]

	mov     r0, #RAM_21bf67c_TaskList2_Size
	bl      GetAllocSizeForTasks
	mov     r1, r0
	mov     r0, #0x0
	mov     r2, #0x4
	blx     OS_AllocFromArenaLo
	mov     r1, r0
	mov     r0, #RAM_21bf67c_TaskList2_Size
	bl      InitTaskList
	ldr     r1, =RAM_21bf67c
	str     r0, [r1, #RAM_21bf67c_TaskList2]

	mov     r0, #RAM_21bf67c_TaskList3_Size
	bl      GetAllocSizeForTasks
	mov     r1, r0
	mov     r0, #0x0
	mov     r2, #0x4
	blx     OS_AllocFromArenaLo
	mov     r1, r0
	mov     r0, #RAM_21bf67c_TaskList3_Size
	bl      InitTaskList
	ldr     r1, =RAM_21bf67c
	str     r0, [r1, #RAM_21bf67c_TaskList3]

	mov     r0, #RAM_21bf67c_TaskList4_Size
	bl      GetAllocSizeForTasks
	mov     r1, r0
	mov     r0, #0x0
	mov     r2, #0x4
	blx     OS_AllocFromArenaLo
	mov     r1, r0
	mov     r0, #RAM_21bf67c_TaskList4_Size
	bl      InitTaskList
	ldr     r1, =RAM_21bf67c
	str     r0, [r1, #RAM_21bf67c_TaskList4]

	blx     GX_DispOff

	ldr     r2, =REG_DISPCNT_SUB
	ldr     r0, =0xfffeffff
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]

	ldr     r2, =REG_POWERCNT
	ldrh    r1, [r2]
	lsr     r0, r2, #11
	orr     r0, r1
	strh    r0, [r2]

	ldr     r1, =Function_2017728_IrqVBlank+1
	mov     r0, #IRQ_VBLANK
	blx     OS_SetIrqFunction
	mov     r0, #IRQ_VBLANK
	blx     OS_EnableIrqMask
	mov     r0, #0x1            @ IRQ_FIFO_NOT_EMPTY
	lsl     r0, r0, #18
	blx     OS_EnableIrqMask

	ldr     r1, =REG_IME
	ldrh    r0, [r1]
	mov     r0, #IME_ENABLE
	strh    r0, [r1]

	blx     GX_VBlankIntr
	mov     r0, #0x1
	blx     FS_Init
	bl      Function_2024358
	mov     r0, #0x0
	mov     r1, r0
	blx     FS_TryLoadTable
	mov     r4, r0
	mov     r0, #0x0
	mov     r1, r4
	mov     r2, #0x4
	blx     OS_AllocFromArenaLo
	mov     r5, r0
	bne     branch_2017990
	bl      ErrorHandling
branch_2017990: @ 2017990 :thumb

	mov     r0, r5
	mov     r1, r4
	blx     FS_TryLoadTable

	ldr     r0, =RAM_21bf67c
	mov     r1, #0x0
	str     r1, [r0, #RAM_21bf67c_FunctPtr]
	str     r1, [r0, #RAM_21bf67c_8]
	str     r1, [r0, #RAM_21bf67c_10]
	str     r1, [r0, #RAM_21bf67c_14]
	str     r1, [r0, #RAM_21bf67c_70]
	str     r1, [r0, #RAM_21bf67c_2c]
	ldr     r0, =RAM_21bf6dc
	strb    r1, [r0, #RAM_21bf6dc_5]

	mov     r0, #0x5
	mov     r1, #0x9
	lsl     r0, r0, #8
	lsl     r1, r1, #10
	blx     CARD_SetCacheFlushThreshold
	mov     r0, #0x0
	bl      Function_201d640
	pop     {r3-r5,pc}
@ 0x20179c0

.pool
thumb_func_end InitSystemForTheGame



thumb_func_start InitGraphicMemory
InitGraphicMemory: @ 20179e4 :thumb
	push    {r3,lr}

	ldr     r0, =0x1ff
	blx     GX_SetBankForLCDC

	mov     r1, #0x1a   @ VRAM (0x6800000)
	mov     r2, #0x29   @ 0xa4000
	mov     r0, #0x0
	lsl     r1, r1, #22
	lsl     r2, r2, #14
	blx     MIi_CpuClearFast

	blx     Function_20bef60

	mov     r1, #0x7    @ OAM (0x07000000)
	mov     r2, #0x1
	mov     r0, #192
	lsl     r1, r1, #24
	lsl     r2, r2, #10
	blx     MIi_CpuClearFast

	mov     r2, #0x1
	ldr     r1, =OAM_SUB
	mov     r0, #192
	lsl     r2, r2, #10
	blx     MIi_CpuClearFast

	mov     r1, #0x5    @ BG_PALETTE (0x05000000)
	mov     r2, #0x1
	mov     r0, #0x0
	lsl     r1, r1, #24
	lsl     r2, r2, #10
	blx     MIi_CpuClearFast

	mov     r2, #0x1
	ldr     r1, =BG_PALETTE_SUB
	mov     r0, #0x0
	lsl     r2, r2, #10
	blx     MIi_CpuClearFast

	pop     {r3,pc}
@ 0x2017a34

.pool
thumb_func_end InitGraphicMemory
