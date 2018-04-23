
/* Input:
r0: VariableAreaAdress
*/
.thumb
.globl Function_202440c
Function_202440c: @ 202440c :thumb
	push    {r4,lr}
	mov     r4, r0

	mov     r0, #0x1b
	bl      Function_2025c48

	mov     r0, r4
	mov     r1, #0x1b
	bl      LoadVariableAreaAdress

	pop     {r4,pc}
@ 0x2024420


thumb_func_start LoadVariableAreaAdress_25
LoadVariableAreaAdress_25: @ 2024420 :thumb
	ldr     r3, =LoadVariableAreaAdress+1
	mov     r1, #0x25
	bx      r3
@ 0x2024426

.align 2
.pool
thumb_func_end LoadVariableAreaAdress_25



.thumb
.globl Function_202442c
Function_202442c: @ 202442c :thumb
	push    {r4,lr}

	mov     r4, r0
	mov     r0, #0x1f
	bl      Function_2025c48

	mov     r0, r4
	mov     r1, #0x1f
	bl      LoadVariableAreaAdress

	pop     {r4,pc}
@ 0x2024440


thumb_func_start LoadVariableAreaAdress_20
LoadVariableAreaAdress_20: @ 2024440 :thumb
	ldr     r3, =LoadVariableAreaAdress+1
	mov     r1, #0x20
	bx      r3
@ 0x2024446

.align 2
.pool
thumb_func_end LoadVariableAreaAdress_20



.thumb
Function_202444c: @ 202444c :thumb
	push    {r3,lr}
	mov     r3, r2
	mov     r2, #0x0
	bl      Function_2025680
	pop     {r3,pc}
@ 0x2024458


.thumb
Function_2024458: @ 2024458 :thumb
	ldr     r3, =Function_2025428+1
	mov     r2, r1
	mov     r1, #0x0
	bx      r3
@ 0x2024460

.pool



.thumb
Function_2024464: @ 2024464 :thumb
	push    {r4,lr}
	add     sp, #-0x8

	mov     r4, r2
	add     r2, sp, #0x4
	str     r2, [sp, #0x0]
	add     r2, r3, #0x2
	mov     r3, r4
	bl      Function_20257e8

	add     sp, #0x8
	pop     {r4,pc}
@ 0x202447a


.align 2, 0
.thumb
.globl Function_202447c
Function_202447c: @ 202447c :thumb
	mov     r3, r1
	add     r1, r2, #0x2
	mov     r2, r3
	ldr     r3, =Function_2025574+1
	bx      r3
@ 0x2024486

.align 2
.pool



.thumb
Function_202448c: @ 202448c :thumb
	push    {r3,lr}
	add     sp, #-0x8
	mov     r3, r2
	add     r2, sp, #0x4
	str     r2, [sp, #0x0]
	mov     r2, #0x1
	bl      Function_20257e8
	add     sp, #0x8
	pop     {r3,pc}
@ 0x20244a0


.thumb
Function_20244a0: @ 20244a0 :thumb
	ldr     r3, =Function_2025574+1
	mov     r2, r1
	mov     r1, #0x1
	bx      r3
@ 0x20244a8

.pool



/* Return:
r0: Ptr to VariableAreaAdresses
*/
thumb_func_start InitVariableAreaAdresses
InitVariableAreaAdresses: @ 20244ac :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8

	ldr     r1, =VariableAreaAdresses_Size
	mov     r0, #0x1
	bl      malloc

	mov     r4, r0
	ldr     r2, =VariableAreaAdresses_Size
	mov     r0, #0x0
	mov     r1, r4
	blx     MIi_CpuClearFast

	ldr     r0, =RAM_21c0794
	str     r4, [r0, #RAM_21c0794_VariableAreaAdresses]
	bl      Function_2025a3c
	str     r0, [r4, #VariableAreaAdresses_0]

	mov     r0, #0x0
	str     r0, [r4, #VariableAreaAdresses_4]

	mov     r0, #0x1
	str     r0, [r4, #VariableAreaAdresses_8]
	str     r0, [r4, #VariableAreaAdresses_c]

	ldr     r0, =VariableAreaAdresses_20024
	add     r0, r4, r0
	bl      InitVariableAreaAdresses_20024

	ldr     r0, =VariableAreaAdresses_20284
	ldr     r1, =VariableAreaAdresses_20024
	add     r0, r4, r0
	add     r1, r4, r1
	bl      Function_2025258

	ldr     r1, =VariableAreaAdresses_20018
	mov     r0, #0x0
	add     r1, r4, r1
	mov     r2, #0x8
	blx     MIi_CpuClearFast

	mov     r0, r4
	bl      Function_2024abc
	mov     r5, r0

	mov     r0, #0x0
	str     r0, [r4, #VariableAreaAdresses_10]
	cmp     r5, #0x3
	bhi     branch_2024588

	add     r1, r5, r5
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2024514

Jumppoints_2024514:
.hword branch_2024582 - Jumppoints_2024514 - 2
.hword branch_202451c - Jumppoints_2024514 - 2
.hword branch_202451e - Jumppoints_2024514 - 2
.hword branch_202457a - Jumppoints_2024514 - 2

.thumb
branch_202451c: @ 202451c :thumb
	str     r0, [r4, #VariableAreaAdresses_c]
branch_202451e: @ 202451e :thumb
	mov     r0, r4
	bl      Function_2024dbc
	mov     r1, #0x1
	mov     r0, #0x0
	str     r1, [r4, #VariableAreaAdresses_4]
	str     r0, [r4, #VariableAreaAdresses_8]
	cmp     r5, #0x2
	bne     branch_2024536
	ldr     r0, [r4, #VariableAreaAdresses_10]
	orr     r0, r1
	str     r0, [r4, #VariableAreaAdresses_10]
branch_2024536: @ 2024536 :thumb

	mov     r0, r4
	add     r1, sp, #0x4
	add     r2, sp, #0x0
	bl      Function_2024cd4
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x3
	bne     branch_2024550

	ldr     r1, [r4, #VariableAreaAdresses_10]
	mov     r0, #0x8
	orr     r0, r1
	str     r0, [r4, #VariableAreaAdresses_10]
	b       branch_202455c

branch_2024550: @ 2024550 :thumb
	cmp     r0, #0x2
	bne     branch_202455c
	ldr     r1, [r4, #VariableAreaAdresses_10]
	mov     r0, #0x4
	orr     r0, r1
	str     r0, [r4, #VariableAreaAdresses_10]
branch_202455c: @ 202455c :thumb

	ldr     r0, [sp, #0x0]
	cmp     r0, #0x3
	bne     branch_202456c

	ldr     r1, [r4, #VariableAreaAdresses_10]
	mov     r0, #0x20
	orr     r0, r1
	str     r0, [r4, #VariableAreaAdresses_10]
	b       branch_2024588

branch_202456c: @ 202456c :thumb
	cmp     r0, #0x2
	bne     branch_2024588

	ldr     r1, [r4, #VariableAreaAdresses_10]
	mov     r0, #0x10
	orr     r0, r1
	str     r0, [r4, #VariableAreaAdresses_10]
	b       branch_2024588

branch_202457a: @ 202457a :thumb
	ldr     r1, [r4, #VariableAreaAdresses_10]
	mov     r0, #0x2
	orr     r0, r1
	str     r0, [r4, #VariableAreaAdresses_10]
branch_2024582: @ 2024582 :thumb
	mov     r0, r4
	bl      Call_ClearAllVariableAreas
branch_2024588: @ 2024588 :thumb
	mov     r0, r4
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x202458e

.align 2
.pool
thumb_func_end InitVariableAreaAdresses



thumb_func_start GetVariableAreaBaseAdress
GetVariableAreaBaseAdress: @ 20245a4 :thumb
	push    {r3,lr}

	ldr     r0, =RAM_21c0794
	ldr     r0, [r0, #RAM_21c0794_VariableAreaAdresses]
	cmp     r0, #0x0
	bne     branch_20245b2
	bl      ErrorHandling
branch_20245b2: @ 20245b2 :thumb

	ldr     r0, =RAM_21c0794
	ldr     r0, [r0, #RAM_21c0794_VariableAreaAdresses]

	pop     {r3,pc}
@ 0x20245b8

.pool
thumb_func_end GetVariableAreaBaseAdress



/*
Input:
r0: VariableAreaAdresses
r1: IndexNr of Area
0x1: LoadTrainerDataAdress
0x2: LoadPokePartyAdress
0x3: LoadItemListAdress
0x4: LoadFlagAdress
*/
thumb_func_start LoadVariableAreaAdress
LoadVariableAreaAdress: @ 20245bc :thumb
	push    {r3-r5,lr}

	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0x26
	blt     branch_20245ca
	bl      ErrorHandling
branch_20245ca: @ 20245ca :thumb

	lsl     r0, r4, #4 @ *16
	add     r1, r5, r0
	ldr     r0, =VariableAreaAdresses_20024+VariableAreaAdresses_20024_RelAdr
	mov     r2, r5
	ldr     r0, [r1, r0]

	add     r2, #VariableAreaAdresses_14
	add     r0, r2, r0

	pop     {r3-r5,pc}
@ 0x20245da

.align 2
.pool
thumb_func_end LoadVariableAreaAdress



.thumb
Call_LoadVariableAreaAdress: @ 20245e0 :thumb
	ldr     r3, =LoadVariableAreaAdress+1
	bx      r3
@ 0x20245e4

.pool



.thumb
Function_20245e8: @ 20245e8 :thumb
	push    {r3-r7,lr}
	mov     r1, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	lsl     r1, r1, #12
	bl      malloc2
	mov     r6, r0

	mov     r0, #0x1
	bl      Function_2017b7c
	ldr     r1, [pc, #0xa0] @ 0x20246a0, (=0x20020)
	ldr     r0, [sp, #0x0]
	ldrb    r0, [r0, r1]
	cmp     r0, #0x0
	bne     branch_202460c
	mov     r2, #0x1
	b       branch_202460e

branch_202460c: @ 202460c :thumb
	mov     r2, #0x0
branch_202460e: @ 202460e :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	bl      Function_202516c
	ldr     r1, [pc, #0x8c] @ 0x20246a4, (=0x20021)
	ldr     r0, [sp, #0x0]
	ldrb    r0, [r0, r1]
	cmp     r0, #0x0
	bne     branch_2024624
	mov     r2, #0x1
	b       branch_2024626

branch_2024624: @ 2024624 :thumb
	mov     r2, #0x0
branch_2024626: @ 2024626 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, #0x1
	bl      Function_202516c
	ldr     r0, [sp, #0x0]
	ldr     r3, [pc, #0x6c] @ 0x20246a0, (=0x20020)
	mov     r2, r0
	ldrb    r2, [r2, r3]
	mov     r1, #0x0
	bl      Function_202516c
	ldr     r0, [sp, #0x0]
	ldr     r3, [pc, #0x64] @ 0x20246a4, (=0x20021)
	mov     r2, r0
	ldrb    r2, [r2, r3]
	mov     r1, #0x1
	bl      Function_202516c
	mov     r0, #0x0
	mov     r2, #0x1
	mvn     r0, r0
	mov     r1, r6
	lsl     r2, r2, #12
	blx     MIi_CpuClearFast
	mov     r4, #0x0
	mov     r7, #0x1
	mov     r5, r4
	lsl     r7, r7, #12
branch_2024660: @ 2024660 :thumb
	mov     r0, r5
	mov     r1, r6
	mov     r2, r7
	bl      Function_2025a9c
	mov     r0, r4
	add     r0, #0x40
	lsl     r0, r0, #12
	mov     r1, r6
	mov     r2, r7
	bl      Function_2025a9c
	mov     r0, #0x1
	lsl     r0, r0, #12
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, r5, r0
	cmp     r4, #0x40
	blt     branch_2024660
	mov     r0, r6
	bl      free

	ldr     r0, [sp, #0x0]
	bl      Call_ClearAllVariableAreas
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	str     r1, [r0, #0x4]
	mov     r0, #0x1
	bl      Function_2017b8c
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x20246a0

.word 0x20020 @ 0x20246a0
.word 0x20021 @ 0x20246a4



.thumb
.globl Function_20246a8
Function_20246a8: @ 20246a8 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	ldr     r1, [r4, #0x0]
	cmp     r1, #0x0
	bne     branch_20246ba
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r4,pc}

branch_20246ba: @ 20246ba :thumb
	bl      Function_2024dbc
	cmp     r0, #0x0
	beq     branch_20246da
	mov     r0, #0x1
	str     r0, [r4, #0x4]
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	mov     r0, r4
	add     r1, sp, #0x4
	add     r2, sp, #0x0
	bl      Function_2024cd4
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r4,pc}

branch_20246da: @ 20246da :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r4,pc}
@ 0x20246e0


.thumb
.globl Function_20246e0
Function_20246e0: @ 20246e0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_20246ee
	mov     r0, #0x3
	pop     {r4,pc}

branch_20246ee: @ 20246ee :thumb
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x0
	beq     branch_2024744
	mov     r0, #0x1
	bl      Function_2017b7c
	ldr     r0, [pc, #0x5c] @ 0x2024758, (=0x20020)
	ldrb    r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_2024706
	mov     r2, #0x1
	b       branch_2024708

branch_2024706: @ 2024706 :thumb
	mov     r2, #0x0
branch_2024708: @ 2024708 :thumb
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_202516c
	ldr     r0, [pc, #0x48] @ 0x202475c, (=0x20021)
	ldrb    r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_202471c
	mov     r2, #0x1
	b       branch_202471e

branch_202471c: @ 202471c :thumb
	mov     r2, #0x0
branch_202471e: @ 202471e :thumb
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_202516c
	ldr     r2, [pc, #0x30] @ 0x2024758, (=0x20020)
	mov     r0, r4
	ldrb    r2, [r4, r2]
	mov     r1, #0x0
	bl      Function_202516c
	ldr     r2, [pc, #0x28] @ 0x202475c, (=0x20021)
	mov     r0, r4
	ldrb    r2, [r4, r2]
	mov     r1, #0x1
	bl      Function_202516c
	mov     r0, #0x1
	bl      Function_2017b8c
branch_2024744: @ 2024744 :thumb
	mov     r0, r4
	bl      Function_202513c
	cmp     r0, #0x2
	bne     branch_2024756
	mov     r1, #0x1
	str     r1, [r4, #0x4]
	mov     r1, #0x0
	str     r1, [r4, #0x8]
branch_2024756: @ 2024756 :thumb
	pop     {r4,pc}
@ 0x2024758

.word 0x20020 @ 0x2024758
.word 0x20021 @ 0x202475c



.thumb
.globl Function_2024760
Function_2024760: @ 2024760 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0x2
	blt     branch_202476e
	bl      ErrorHandling
branch_202476e: @ 202476e :thumb

	ldr     r0, [r5, #0x8]
	cmp     r0, #0x0
	beq     branch_2024778
	bl      ErrorHandling
branch_2024778: @ 2024778 :thumb

	ldr     r0, [r5, #0x4]
	cmp     r0, #0x1
	beq     branch_2024782
	bl      ErrorHandling
branch_2024782: @ 2024782 :thumb

	mov     r0, r5
	mov     r1, r4
	bl      Function_2024814
branch_202478a: @ 202478a :thumb
	mov     r0, r5
	bl      Function_2024828
	cmp     r0, #0x0
	beq     branch_202478a
	cmp     r0, #0x1
	beq     branch_202478a
	pop     {r3-r5,pc}
@ 0x202479a


/* Input:
r0: VariableAreaAdresses
*/
thumb_func_start Call_ClearAllVariableAreas
Call_ClearAllVariableAreas: @ 202479c :thumb
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [r2, #VariableAreaAdresses_8]
	ldr     r1, =VariableAreaAdresses_20024
	str     r0, [r2, #VariableAreaAdresses_c]
	mov     r0, r2
	ldr     r3, =ClearAllVariableAreas+1
	add     r0, #VariableAreaAdresses_14
	add     r1, r2, r1
	bx      r3
@ 0x20247b0

.align 2
.pool
thumb_func_end Call_ClearAllVariableAreas



/* Input:
r0: VariableAreaAdresses
*/
.thumb
Function_20247b8: @ 20247b8 :thumb
	ldr     r0, [r0, #VariableAreaAdresses_0]
	bx      lr
@ 0x20247bc


.thumb
Function_20247bc: @ 20247bc :thumb
	ldr     r0, [r0, #0x10]
	bx      lr
@ 0x20247c0


.thumb
.globl Function_20247c0
Function_20247c0: @ 20247c0 :thumb
	ldr     r0, [r0, #0x4]
	bx      lr
@ 0x20247c4


.thumb
Function_20247c4: @ 20247c4 :thumb
	ldr     r0, [r0, #0x8]
	bx      lr
@ 0x20247c8


.thumb
.globl Function_20247c8
Function_20247c8: @ 20247c8 :thumb
	push    {r3,lr}
	bl      LoadVariableAreaAdress_a_3
	bl      Function_20278cc
	pop     {r3,pc}
@ 0x20247d4


.thumb
Function_20247d4: @ 20247d4 :thumb
	push    {r3,lr}
	bl      LoadVariableAreaAdress_a_3
	bl      Function_20278b8
	pop     {r3,pc}
@ 0x20247e0


.thumb
Function_20247e0: @ 20247e0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_20247c4
	cmp     r0, #0x0
	beq     branch_20247fa
	mov     r0, r4
	bl      Function_20247c0
	cmp     r0, #0x0
	beq     branch_20247fa
	mov     r0, #0x1
	pop     {r4,pc}

branch_20247fa: @ 20247fa :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x20247fe


.align 2, 0
.thumb
.globl Function_2024800
Function_2024800: @ 2024800 :thumb
	ldr     r0, [r0, #0xc]
	bx      lr
@ 0x2024804


.thumb
.globl Function_2024804
Function_2024804: @ 2024804 :thumb
	ldr     r0, =RAM_21c0794
	mov     r1, #0x1
	ldr     r0, [r0, #RAM_21c0794_VariableAreaAdresses]
	str     r1, [r0, #VariableAreaAdresses_c]
	bx      lr
@ 0x202480e

.align 2
.pool



.thumb
.globl Function_2024814
Function_2024814: @ 2024814 :thumb
	mov     r2, r1
	ldr     r1, [pc, #0x8] @ 0x2024820, (=0x2029c)
	ldr     r3, [pc, #0x8] @ 0x2024824, (=0x2024ec9)
	add     r1, r0, r1
	bx      r3
@ 0x202481e

.align 2
.word 0x2029c @ 0x2024820
.word Function_2024ec8+1 @ =0x2024ec9, 0x2024824



.thumb
.globl Function_2024828
Function_2024828: @ 2024828 :thumb
	push    {r3-r5,lr}
	ldr     r1, [pc, #0x20] @ 0x202484c, (=0x2029c)
	mov     r5, r0
	add     r1, r5, r1
	bl      Function_2024f44
	mov     r4, r0
	beq     branch_2024848
	cmp     r4, #0x1
	beq     branch_2024848
	ldr     r1, [pc, #0xc] @ 0x202484c, (=0x2029c)
	mov     r0, r5
	add     r1, r5, r1
	mov     r2, r4
	bl      Function_202506c
branch_2024848: @ 2024848 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x202484c

.word 0x2029c @ 0x202484c



/* Input:
r0: VariableAreaAdresses
*/
.thumb
.globl Function_2024850
Function_2024850: @ 2024850 :thumb
	ldr     r1, [pc, #0x4] @ 0x2024858, (=VariableAreaAdresses_2029c)
	ldr     r3, [pc, #0x8] @ 0x202485c, (=Function_20250dc+1)
	add     r1, r0, r1
	bx      r3
@ 0x2024858

.word VariableAreaAdresses_2029c @ 0x2024858
.word Function_20250dc+1 @ 0x202485c



.thumb
Function_2024860: @ 2024860 :thumb
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	str     r1, [r0, #0x4]
	str     r1, [r0, #0x8]
	bx      lr
@ 0x202486a


.align 2, 0
.thumb
.globl Function_202486c
Function_202486c: @ 202486c :thumb
	ldr     r3, =Function_201d628+1
	mov     r0, r1
	mov     r1, r2
	bx      r3
@ 0x2024874

.align 2
.pool



.thumb
Function_2024878: @ 2024878 :thumb
	ldr     r3, =Function_201d628+1
	sub     r2, #0x14
	mov     r0, r1
	mov     r1, r2
	bx      r3
@ 0x2024882

.align 2
.pool



.thumb
Function_2024888: @ 2024888 :thumb
	cmp     r0, #0x0
	bne     branch_2024890
	mov     r2, #0x0
	b       branch_2024894

branch_2024890: @ 2024890 :thumb
	mov     r2, #0x1
	lsl     r2, r2, #18
branch_2024894: @ 2024894 :thumb
	ldr     r0, [r1, #0x4]
	add     r0, r2, r0
	bx      lr
@ 0x202489a


.align 2, 0
.thumb
Function_202489c: @ 202489c :thumb
	push    {r3-r5,lr}
	ldr     r3, [pc, #0x20] @ 0x20248c0, (=0x20284)
	add     r3, r0, r3
	mov     r0, #0xc
	mul     r0, r2
	add     r5, r3, r0
	ldr     r0, [r5, #0x4]
	add     r4, r1, r0
	ldr     r0, [r5, #0x8]
	cmp     r0, #0x0
	bne     branch_20248b6
	bl      ErrorHandling
branch_20248b6: @ 20248b6 :thumb
	ldr     r0, [r5, #0x8]
	add     r0, r4, r0
	sub     r0, #0x14
	pop     {r3-r5,pc}
@ 0x20248be

.align 2
.word 0x20284 @ 0x20248c0



.thumb
Function_20248c4: @ 20248c4 :thumb
	push    {r3-r7,lr}
	ldr     r4, [pc, #0x50] @ 0x2024918, (=0x20284)
	mov     r3, r0
	add     r3, r3, r4
	mov     r5, r2
	mov     r4, #0xc
	mul     r4, r5
	str     r0, [sp, #0x0]
	mov     r7, r1
	add     r6, r3, r4
	bl      Function_202489c
	mov     r4, r0
	ldr     r2, [r6, #0x8]
	ldr     r0, [r4, #0x8]
	ldr     r1, [r6, #0x4]
	cmp     r0, r2
	beq     branch_20248ec
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_20248ec: @ 20248ec :thumb
	ldr     r3, [r4, #0xc]
	ldr     r0, [pc, #0x2c] @ 0x202491c, (=0x20060623)
	cmp     r3, r0
	beq     branch_20248f8
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_20248f8: @ 20248f8 :thumb
	ldrb    r0, [r4, #0x10]
	cmp     r0, r5
	beq     branch_2024902
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_2024902: @ 2024902 :thumb
	ldr     r0, [sp, #0x0]
	add     r1, r7, r1
	bl      Function_2024878
	ldrh    r1, [r4, #0x12]
	cmp     r1, r0
	bne     branch_2024914
	mov     r0, #0x1
	pop     {r3-r7,pc}

branch_2024914: @ 2024914 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2024918

.word 0x20284 @ 0x2024918
.word 0x20060623 @ 0x202491c



.thumb
Function_2024920: @ 2024920 :thumb
	push    {r3-r7,lr}
	mov     r7, r2
	mov     r6, r1
	mov     r5, r0
	str     r3, [sp, #0x0]
	mov     r0, r6
	mov     r1, r7
	mov     r2, r3
	bl      Function_202489c
	mov     r4, r0
	ldr     r2, [sp, #0x0]
	mov     r0, r6
	mov     r1, r7
	bl      Function_20248c4
	str     r0, [r5, #0x0]
	ldr     r0, [r4, #0x0]
	str     r0, [r5, #0x4]
	ldr     r0, [r4, #0x4]
	str     r0, [r5, #0x8]
	pop     {r3-r7,pc}
@ 0x202494c


.thumb
Function_202494c: @ 202494c :thumb
	push    {r3-r7,lr}
	ldr     r3, [pc, #0x40] @ 0x2024990, (=0x20284)
	mov     r5, r0
	mov     r7, r2
	mov     r4, #0xc
	add     r3, r5, r3
	mul     r4, r7
	str     r1, [sp, #0x0]
	add     r6, r3, r4
	bl      Function_202489c
	ldr     r2, [pc, #0x30] @ 0x2024994, (=0x20014)
	mov     r4, r0
	ldr     r0, [r5, r2]
	ldr     r1, [r6, #0x4]
	.hword  0x1d12 @ add r2, r2, #0x4
	str     r0, [r4, #0x0]
	lsl     r0, r7, #2
	add     r0, r5, r0
	ldr     r0, [r0, r2]
	ldr     r2, [sp, #0x0]
	str     r0, [r4, #0x4]
	ldr     r0, [r6, #0x8]
	add     r1, r2, r1
	str     r0, [r4, #0x8]
	ldr     r0, [pc, #0x18] @ 0x2024998, (=0x20060623)
	str     r0, [r4, #0xc]
	strb    r7, [r4, #0x10]
	ldr     r2, [r6, #0x8]
	mov     r0, r5
	bl      Function_2024878
	strh    r0, [r4, #0x12]
	pop     {r3-r7,pc}
@ 0x2024990

.word 0x20284 @ 0x2024990
.word 0x20014 @ 0x2024994
.word 0x20060623 @ 0x2024998



.thumb
Function_202499c: @ 202499c :thumb
	mov     r2, #0x0
	mvn     r2, r2
	cmp     r0, r2
	bne     branch_20249ac
	cmp     r1, #0x0
	bne     branch_20249ac
	mov     r0, r2
	bx      lr

branch_20249ac: @ 20249ac :thumb
	cmp     r0, #0x0
	bne     branch_20249bc
	mov     r2, #0x0
	mvn     r2, r2
	cmp     r1, r2
	bne     branch_20249bc
	mov     r0, #0x1
	bx      lr

branch_20249bc: @ 20249bc :thumb
	cmp     r0, r1
	bls     branch_20249c4
	mov     r0, #0x1
	bx      lr

branch_20249c4: @ 20249c4 :thumb
	cmp     r0, r1
	bhs     branch_20249cc
	mov     r0, #0x1
	b       branch_20249ce

branch_20249cc: @ 20249cc :thumb
	mov     r0, #0x0
branch_20249ce: @ 20249ce :thumb
	neg     r0, r0
	bx      lr
@ 0x20249d2


.align 2, 0
.thumb
Function_20249d4: @ 20249d4 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r6, r1
	ldr     r0, [r7, #0x4]
	ldr     r1, [r6, #0x4]
	mov     r5, r2
	mov     r4, r3
	bl      Function_202499c
	str     r0, [sp, #0x0]
	ldr     r0, [r7, #0x8]
	ldr     r1, [r6, #0x8]
	bl      Function_202499c
	ldr     r2, [r7, #0x0]
	cmp     r2, #0x0
	beq     branch_2024a4e
	ldr     r1, [r6, #0x0]
	cmp     r1, #0x0
	beq     branch_2024a4e
	ldr     r1, [sp, #0x0]
	cmp     r1, #0x0
	ble     branch_2024a14
	cmp     r0, #0x0
	bgt     branch_2024a0a
	bl      ErrorHandling
branch_2024a0a: @ 2024a0a :thumb
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_2024a4a

branch_2024a14: @ 2024a14 :thumb
	bge     branch_2024a28
	cmp     r0, #0x0
	blt     branch_2024a1e
	bl      ErrorHandling
branch_2024a1e: @ 2024a1e :thumb
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	b       branch_2024a4a

branch_2024a28: @ 2024a28 :thumb
	cmp     r0, #0x0
	ble     branch_2024a36
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_2024a4a

branch_2024a36: @ 2024a36 :thumb
	bge     branch_2024a42
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	b       branch_2024a4a

branch_2024a42: @ 2024a42 :thumb
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	mov     r0, #0x1
	str     r0, [r4, #0x0]
branch_2024a4a: @ 2024a4a :thumb
	mov     r0, #0x2
	pop     {r3-r7,pc}

branch_2024a4e: @ 2024a4e :thumb
	cmp     r2, #0x0
	beq     branch_2024a64
	ldr     r0, [r6, #0x0]
	cmp     r0, #0x0
	bne     branch_2024a64
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	mov     r0, #0x2
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r3-r7,pc}

branch_2024a64: @ 2024a64 :thumb
	cmp     r2, #0x0
	bne     branch_2024a78
	ldr     r0, [r6, #0x0]
	cmp     r0, #0x0
	beq     branch_2024a78
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	mov     r1, #0x2
	str     r1, [r4, #0x0]
	pop     {r3-r7,pc}

branch_2024a78: @ 2024a78 :thumb
	mov     r0, #0x2
	str     r0, [r5, #0x0]
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2024a82


.align 2, 0
.thumb
Function_2024a84: @ 2024a84 :thumb
	push    {r3-r6}
	mov     r4, #0xc
	mov     r5, r3
	mul     r5, r4
	add     r6, r1, r5
	ldr     r5, [r6, #0x4]
	ldr     r1, [pc, #0x24] @ 0x2024ab8, (=0x20014)
	str     r5, [r0, r1]
	ldr     r6, [r6, #0x8]
	add     r5, r1, #0x4
	str     r6, [r0, r5]
	ldr     r5, [sp, #0x10]
	mul     r4, r5
	add     r2, r2, r4
	ldr     r4, [r2, #0x8]
	mov     r2, r1
	add     r2, #0x8
	str     r4, [r0, r2]
	mov     r2, r1
	add     r2, #0xc
	strb    r3, [r0, r2]
	add     r1, #0xd
	strb    r5, [r0, r1]
	pop     {r3-r6}
	bx      lr
@ 0x2024ab6

.align 2
.word 0x20014 @ 0x2024ab8



.thumb
Function_2024abc: @ 2024abc :thumb
	push    {r3-r6,lr}
	add     sp, #-0x44
	mov     r1, #0x2
	mov     r5, r0
	mov     r0, #0x3
	lsl     r1, r1, #16
	bl      malloc2
	mov     r1, #0x2
	mov     r6, r0
	mov     r0, #0x3
	lsl     r1, r1, #16
	bl      malloc2
	mov     r2, #0x2
	mov     r4, r0
	mov     r0, #0x0
	mov     r1, r6
	lsl     r2, r2, #16
	bl      Function_2025ac0
	cmp     r0, #0x0
	add     r0, sp, #0x2c
	beq     branch_2024b04
	mov     r1, r5
	mov     r2, r6
	mov     r3, #0x0
	bl      Function_2024920
	add     r0, sp, #0x14
	mov     r1, r5
	mov     r2, r6
	mov     r3, #0x1
	bl      Function_2024920
	b       branch_2024b0e

branch_2024b04: @ 2024b04 :thumb
	bl      Function_2024860
	add     r0, sp, #0x14
	bl      Function_2024860
branch_2024b0e: @ 2024b0e :thumb
	mov     r0, #0x1
	lsl     r0, r0, #18
	mov     r1, r4
	lsr     r2, r0, #1
	bl      Function_2025ac0
	cmp     r0, #0x0
	add     r0, sp, #0x38
	beq     branch_2024b38
	mov     r1, r5
	mov     r2, r4
	mov     r3, #0x0
	bl      Function_2024920
	add     r0, sp, #0x20
	mov     r1, r5
	mov     r2, r4
	mov     r3, #0x1
	bl      Function_2024920
	b       branch_2024b42

branch_2024b38: @ 2024b38 :thumb
	bl      Function_2024860
	add     r0, sp, #0x20
	bl      Function_2024860
branch_2024b42: @ 2024b42 :thumb
	mov     r0, r6
	bl      free
	mov     r0, r4
	bl      free
	add     r0, sp, #0x2c
	add     r1, sp, #0x38
	add     r2, sp, #0x10
	add     r3, sp, #0x8
	bl      Function_20249d4
	mov     r4, r0
	add     r0, sp, #0x14
	add     r1, sp, #0x20
	add     r2, sp, #0xc
	add     r3, sp, #0x4
	bl      Function_20249d4
	cmp     r4, #0x0
	bne     branch_2024b76
	cmp     r0, #0x0
	bne     branch_2024b76
	add     sp, #0x44
	mov     r0, #0x0
	pop     {r3-r6,pc}

branch_2024b76: @ 2024b76 :thumb
	cmp     r4, #0x0
	beq     branch_2024b7e
	cmp     r0, #0x0
	bne     branch_2024b84
branch_2024b7e: @ 2024b7e :thumb
	add     sp, #0x44
	mov     r0, #0x3
	pop     {r3-r6,pc}

branch_2024b84: @ 2024b84 :thumb
	cmp     r4, #0x2
	bne     branch_2024bc8
	cmp     r0, #0x2
	bne     branch_2024bc8
	ldr     r3, [sp, #0x10]
	ldr     r1, [sp, #0xc]
	mov     r2, #0xc
	mov     r4, r3
	mul     r4, r2
	add     r0, sp, #0x30
	ldr     r0, [r0, r4]
	mov     r4, r1
	mul     r4, r2
	add     r2, sp, #0x18
	ldr     r2, [r2, r4]
	cmp     r0, r2
	str     r1, [sp, #0x0]
	add     r1, sp, #0x2c
	bne     branch_2024bb8
	mov     r0, r5
	add     r2, sp, #0x14
	bl      Function_2024a84
	add     sp, #0x44
	mov     r0, #0x1
	pop     {r3-r6,pc}

branch_2024bb8: @ 2024bb8 :thumb
	ldr     r3, [sp, #0x8]
	mov     r0, r5
	add     r2, sp, #0x14
	bl      Function_2024a84
	add     sp, #0x44
	mov     r0, #0x2
	pop     {r3-r6,pc}

branch_2024bc8: @ 2024bc8 :thumb
	cmp     r4, #0x1
	bne     branch_2024c1e
	cmp     r0, #0x2
	bne     branch_2024c1e
	ldr     r3, [sp, #0x10]
	ldr     r0, [sp, #0xc]
	mov     r4, #0xc
	mov     r2, r3
	mov     r6, r0
	mul     r2, r4
	add     r1, sp, #0x30
	ldr     r2, [r1, r2]
	mul     r6, r4
	add     r1, sp, #0x18
	ldr     r6, [r1, r6]
	cmp     r2, r6
	bne     branch_2024bfc
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r1, sp, #0x2c
	add     r2, sp, #0x14
	bl      Function_2024a84
	add     sp, #0x44
	mov     r0, #0x2
	pop     {r3-r6,pc}

branch_2024bfc: @ 2024bfc :thumb
	ldr     r0, [sp, #0x4]
	mul     r4, r0
	ldr     r1, [r1, r4]
	cmp     r2, r1
	bne     branch_2024c18
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r1, sp, #0x2c
	add     r2, sp, #0x14
	bl      Function_2024a84
	add     sp, #0x44
	mov     r0, #0x2
	pop     {r3-r6,pc}

branch_2024c18: @ 2024c18 :thumb
	add     sp, #0x44
	mov     r0, #0x3
	pop     {r3-r6,pc}

branch_2024c1e: @ 2024c1e :thumb
	cmp     r4, #0x2
	bne     branch_2024c62
	cmp     r0, #0x1
	bne     branch_2024c62
	ldr     r3, [sp, #0x10]
	ldr     r1, [sp, #0xc]
	mov     r2, #0xc
	mov     r4, r3
	mul     r4, r2
	add     r0, sp, #0x30
	ldr     r0, [r0, r4]
	mov     r4, r1
	mul     r4, r2
	add     r2, sp, #0x18
	ldr     r2, [r2, r4]
	cmp     r0, r2
	str     r1, [sp, #0x0]
	add     r1, sp, #0x2c
	bne     branch_2024c52
	mov     r0, r5
	add     r2, sp, #0x14
	bl      Function_2024a84
	add     sp, #0x44
	mov     r0, #0x1
	pop     {r3-r6,pc}

branch_2024c52: @ 2024c52 :thumb
	ldr     r3, [sp, #0x8]
	mov     r0, r5
	add     r2, sp, #0x14
	bl      Function_2024a84
	add     sp, #0x44
	mov     r0, #0x2
	pop     {r3-r6,pc}

branch_2024c62: @ 2024c62 :thumb
	cmp     r4, #0x1
	bne     branch_2024ca0
	cmp     r0, #0x1
	bne     branch_2024ca0
	ldr     r0, [sp, #0xc]
	ldr     r2, [sp, #0x10]
	cmp     r2, r0
	bne     branch_2024ca0
	mov     r3, r2
	mov     r1, #0xc
	mul     r3, r1
	add     r2, sp, #0x30
	mul     r1, r0
	add     r0, sp, #0x18
	ldr     r2, [r2, r3]
	ldr     r0, [r0, r1]
	cmp     r2, r0
	beq     branch_2024c8a
	bl      ErrorHandling
branch_2024c8a: @ 2024c8a :thumb
	ldr     r0, [sp, #0xc]
	add     r1, sp, #0x2c
	str     r0, [sp, #0x0]
	ldr     r3, [sp, #0x10]
	mov     r0, r5
	add     r2, sp, #0x14
	bl      Function_2024a84
	add     sp, #0x44
	mov     r0, #0x1
	pop     {r3-r6,pc}

branch_2024ca0: @ 2024ca0 :thumb
	ldr     r1, [sp, #0x10]
	mov     r0, #0xc
	mov     r2, r1
	mul     r2, r0
	add     r1, sp, #0x30
	ldr     r3, [r1, r2]
	ldr     r1, [sp, #0xc]
	mov     r2, r1
	mul     r2, r0
	add     r0, sp, #0x18
	ldr     r0, [r0, r2]
	cmp     r3, r0
	beq     branch_2024cbe
	bl      ErrorHandling
branch_2024cbe: @ 2024cbe :thumb
	ldr     r0, [sp, #0xc]
	add     r1, sp, #0x2c
	str     r0, [sp, #0x0]
	ldr     r3, [sp, #0x10]
	mov     r0, r5
	add     r2, sp, #0x14
	bl      Function_2024a84
	mov     r0, #0x2
	add     sp, #0x44
	pop     {r3-r6,pc}
@ 0x2024cd4


.thumb
Function_2024cd4: @ 2024cd4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r6, r0
	mov     r4, r1
	mov     r5, r2
	bl      LoadVariableAreaAdress_a_3
	mov     r7, r0
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	str     r0, [r5, #0x0]
	mov     r0, r6
	bl      Function_20247c8
	cmp     r0, #0x0
	beq     branch_2024d9e
	add     r0, sp, #0x4
	str     r0, [sp, #0x0]
	mov     r0, r7
	mov     r1, #0x1
	add     r2, sp, #0xc
	add     r3, sp, #0x8
	bl      Function_20279a8
	mov     r0, #0x0
	ldr     r1, [sp, #0xc]
	mvn     r0, r0
	cmp     r1, r0
	bne     branch_2024d14
	ldr     r1, [sp, #0x8]
	cmp     r1, r0
	beq     branch_2024d42
branch_2024d14: @ 2024d14 :thumb
	add     r0, sp, #0x10
	str     r0, [sp, #0x0]
	mov     r0, r6
	mov     r1, #0x3
	mov     r2, #0x1
	add     r3, sp, #0x14
	bl      Function_20257e8
	bl      free
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x2
	bne     branch_2024d34
	mov     r0, #0x3
	str     r0, [r4, #0x0]
	b       branch_2024d42

branch_2024d34: @ 2024d34 :thumb
	cmp     r0, #0x1
	bne     branch_2024d42
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x1
	bne     branch_2024d42
	mov     r0, #0x2
	str     r0, [r4, #0x0]
branch_2024d42: @ 2024d42 :thumb
	mov     r4, #0x2
branch_2024d44: @ 2024d44 :thumb
	add     r0, sp, #0x4
	str     r0, [sp, #0x0]
	mov     r0, r7
	mov     r1, r4
	add     r2, sp, #0xc
	add     r3, sp, #0x8
	bl      Function_20279a8
	mov     r0, #0x0
	ldr     r1, [sp, #0xc]
	mvn     r0, r0
	cmp     r1, r0
	bne     branch_2024d64
	ldr     r1, [sp, #0x8]
	cmp     r1, r0
	beq     branch_2024d98
branch_2024d64: @ 2024d64 :thumb
	add     r0, sp, #0x10
	str     r0, [sp, #0x0]
	mov     r0, r6
	mov     r1, #0x3
	mov     r2, r4
	add     r3, sp, #0x14
	bl      Function_20257e8
	bl      free
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x2
	bne     branch_2024d84
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	b       branch_2024d98

branch_2024d84: @ 2024d84 :thumb
	cmp     r0, #0x1
	bne     branch_2024d98
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x1
	bne     branch_2024d98
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x3
	beq     branch_2024d98
	mov     r0, #0x2
	str     r0, [r5, #0x0]
branch_2024d98: @ 2024d98 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x5
	ble     branch_2024d44
branch_2024d9e: @ 2024d9e :thumb
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2024da2


.align 2, 0
.thumb
Function_2024da4: @ 2024da4 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r2
	bl      Function_2024888
	ldr     r1, [r5, #0x4]
	ldr     r2, [r5, #0x8]
	add     r1, r4, r1
	bl      Function_2025ac0
	pop     {r3-r5,pc}
@ 0x2024dba


.align 2, 0
.thumb
Function_2024dbc: @ 2024dbc :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r0, [pc, #0x5c] @ 0x2024e20, (=0x20284)
	mov     r7, r6
	mov     r4, #0x0
	add     r5, r6, r0
	add     r7, #0x14
branch_2024dca: @ 2024dca :thumb
	ldr     r0, [pc, #0x58] @ 0x2024e24, (=0x20020)
	add     r1, r6, r4
	ldrb    r0, [r1, r0]
	mov     r1, r5
	mov     r2, r7
	bl      Function_2024da4
	cmp     r0, #0x0
	bne     branch_2024de0
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_2024de0: @ 2024de0 :thumb
	mov     r0, r6
	mov     r1, r7
	mov     r2, r4
	bl      Function_20248c4
	cmp     r0, #0x0
	bne     branch_2024df2
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_2024df2: @ 2024df2 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0xc
	cmp     r4, #0x2
	blt     branch_2024dca
	ldr     r7, [pc, #0x2c] @ 0x2024e28, (=0x20030)
	mov     r5, #0x0
	mov     r4, r6
branch_2024e00: @ 2024e00 :thumb
	mov     r0, r6
	mov     r1, r5
	bl      LoadVariableAreaAdress
	ldr     r1, [pc, #0x20] @ 0x2024e2c, (=0x20028)
	ldr     r1, [r4, r1]
	bl      Function_201d628
	strh    r0, [r4, r7]
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r4, #0x10
	cmp     r5, #0x26
	blt     branch_2024e00
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2024e1e

.align 2
.word 0x20284 @ 0x2024e20
.word 0x20020 @ 0x2024e24
.word 0x20030 @ 0x2024e28
.word 0x20028 @ 0x2024e2c



.thumb
Function_2024e30: @ 2024e30 :thumb
	push    {r4-r6,lr}
	mov     r3, r1
	ldr     r1, [pc, #0x2c] @ 0x2024e64, (=0x20284)
	mov     r5, r0
	mov     r6, r2
	add     r2, r5, r1
	mov     r1, #0xc
	mul     r1, r3
	add     r4, r2, r1
	mov     r1, r5
	add     r1, #0x14
	mov     r2, r3
	bl      Function_202494c
	mov     r0, r6
	mov     r1, r4
	bl      Function_2024888
	ldr     r2, [r4, #0x8]
	ldr     r1, [r4, #0x4]
	add     r5, #0x14
	add     r1, r5, r1
	sub     r2, #0x14
	bl      Function_2025b3c
	pop     {r4-r6,pc}
@ 0x2024e64

.word 0x20284 @ 0x2024e64



.thumb
Function_2024e68: @ 2024e68 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	ldr     r0, [pc, #0x24] @ 0x2024e94, (=0x20284)
	add     r3, r6, r0
	mov     r0, #0xc
	mul     r0, r1
	add     r4, r3, r0
	mov     r0, r2
	mov     r1, r4
	ldr     r5, [r4, #0x8]
	bl      Function_2024888
	ldr     r1, [r4, #0x4]
	add     r0, r5, r0
	add     r1, r6, r1
	sub     r0, #0x14
	add     r1, r1, r5
	mov     r2, #0x14
	bl      Function_2025b3c
	pop     {r4-r6,pc}
@ 0x2024e92

.align 2
.word 0x20284 @ 0x2024e94



.thumb
Function_2024e98: @ 2024e98 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x24] @ 0x2024ec4, (=0x20284)
	add     r3, r5, r0
	mov     r0, #0xc
	mul     r0, r1
	add     r6, r3, r0
	mov     r0, r2
	mov     r1, r6
	ldr     r4, [r6, #0x8]
	bl      Function_2024888
	add     r0, r4, r0
	ldr     r1, [r6, #0x4]
	add     r5, #0x8
	add     r1, r5, r1
	sub     r0, #0xc
	add     r1, r1, r4
	mov     r2, #0x8
	bl      Function_2025b3c
	pop     {r4-r6,pc}
@ 0x2024ec4

.word 0x20284 @ 0x2024ec4



.thumb
Function_2024ec8: @ 2024ec8 :thumb
	push    {r3-r7,lr}
	ldr     r7, [pc, #0x70] @ 0x2024f3c, (=0x20018)
	mov     r4, r1
	mov     r12, r2
	mov     r1, #0x0
	mov     r2, r0
	mov     r3, r4
	mov     r6, r7
branch_2024ed8: @ 2024ed8 :thumb
	ldr     r5, [pc, #0x60] @ 0x2024f3c, (=0x20018)
	.hword  0x1c49 @ add r1, r1, #0x1
	ldr     r5, [r2, r5]
	str     r5, [r3, #0x1c]
	ldr     r5, [r2, r7]
	.hword  0x1d1b @ add r3, r3, #0x4
	.hword  0x1c6d @ add r5, r5, #0x1
	str     r5, [r2, r6]
	.hword  0x1d12 @ add r2, r2, #0x4
	cmp     r1, #0x2
	blt     branch_2024ed8
	mov     r1, #0x0
	str     r1, [r4, #0x14]
	str     r1, [r4, #0x0]
	mov     r2, r12
	str     r1, [r4, #0x24]
	cmp     r2, #0x2
	bne     branch_2024f26
	ldr     r2, [r0, #0xc]
	cmp     r2, #0x0
	beq     branch_2024f1c
	mov     r2, #0x1
	str     r2, [r4, #0x0]
	ldr     r2, [pc, #0x38] @ 0x2024f40, (=0x20014)
	ldr     r3, [r0, r2]
	str     r3, [r4, #0x18]
	ldr     r3, [r0, r2]
	.hword  0x1c5b @ add r3, r3, #0x1
	str     r3, [r0, r2]
	str     r1, [r4, #0x4]
	str     r1, [r4, #0x8]
	mov     r0, #0x2
	str     r0, [r4, #0xc]
	b       branch_2024f34

branch_2024f1c: @ 2024f1c :thumb
	str     r1, [r4, #0x4]
	str     r1, [r4, #0x8]
	mov     r0, #0x1
	str     r0, [r4, #0xc]
	b       branch_2024f34

branch_2024f26: @ 2024f26 :thumb
	mov     r0, r12
	str     r0, [r4, #0x4]
	mov     r0, r12
	str     r0, [r4, #0x8]
	mov     r0, r12
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
branch_2024f34: @ 2024f34 :thumb
	mov     r0, #0x1
	bl      Function_2017b7c
	pop     {r3-r7,pc}
@ 0x2024f3c

.word 0x20018 @ 0x2024f3c
.word 0x20014 @ 0x2024f40



.thumb
Function_2024f44: @ 2024f44 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x5
	bls     branch_2024f52
	b       branch_2025062

branch_2024f52: @ 2024f52 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2024f5e

Jumppoints_2024f5e:
.hword branch_2024f6a - Jumppoints_2024f5e - 2
.hword branch_2024f92 - Jumppoints_2024f5e - 2
.hword branch_2024fb4 - Jumppoints_2024f5e - 2
.hword branch_2024fdc - Jumppoints_2024f5e - 2
.hword branch_202500c - Jumppoints_2024f5e - 2
.hword branch_2025034 - Jumppoints_2024f5e - 2

.thumb
branch_2024f6a: @ 2024f6a :thumb
	ldr     r1, [r4, #0x8]
	ldr     r0, [pc, #0xf8] @ 0x2025068, (=0x20020)
	add     r2, r5, r1
	ldrb    r0, [r2, r0]
	cmp     r0, #0x0
	bne     branch_2024f7a
	mov     r2, #0x1
	b       branch_2024f7c

branch_2024f7a: @ 2024f7a :thumb
	mov     r2, #0x0
branch_2024f7c: @ 2024f7c :thumb
	lsl     r2, r2, #24
	mov     r0, r5
	lsr     r2, r2, #24
	bl      Function_2024e30
	str     r0, [r4, #0x10]
	mov     r0, #0x1
	str     r0, [r4, #0x24]
	ldr     r0, [r4, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x14]
branch_2024f92: @ 2024f92 :thumb
	ldr     r0, [r4, #0x10]
	ldr     r1, [r4, #0x24]
	add     r2, sp, #0x0
	bl      Function_2025bb8
	cmp     r0, #0x0
	beq     branch_2025062
	mov     r0, #0x0
	str     r0, [r4, #0x24]
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x0
	bne     branch_2024fae
	mov     r0, #0x3
	pop     {r3-r5,pc}

branch_2024fae: @ 2024fae :thumb
	ldr     r0, [r4, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x14]
branch_2024fb4: @ 2024fb4 :thumb
	ldr     r1, [r4, #0x8]
	ldr     r0, [pc, #0xb0] @ 0x2025068, (=0x20020)
	add     r2, r5, r1
	ldrb    r0, [r2, r0]
	cmp     r0, #0x0
	bne     branch_2024fc4
	mov     r2, #0x1
	b       branch_2024fc6

branch_2024fc4: @ 2024fc4 :thumb
	mov     r2, #0x0
branch_2024fc6: @ 2024fc6 :thumb
	lsl     r2, r2, #24
	mov     r0, r5
	lsr     r2, r2, #24
	bl      Function_2024e98
	str     r0, [r4, #0x10]
	mov     r0, #0x1
	str     r0, [r4, #0x24]
	ldr     r0, [r4, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x14]
branch_2024fdc: @ 2024fdc :thumb
	ldr     r0, [r4, #0x10]
	ldr     r1, [r4, #0x24]
	add     r2, sp, #0x0
	bl      Function_2025bb8
	cmp     r0, #0x0
	beq     branch_2025062
	mov     r0, #0x0
	str     r0, [r4, #0x24]
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x0
	bne     branch_2024ff8
	mov     r0, #0x3
	pop     {r3-r5,pc}

branch_2024ff8: @ 2024ff8 :thumb
	ldr     r0, [r4, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x14]
	ldr     r0, [r4, #0x8]
	add     r1, r0, #0x1
	ldr     r0, [r4, #0xc]
	cmp     r1, r0
	bne     branch_202500c
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_202500c: @ 202500c :thumb
	ldr     r1, [r4, #0x8]
	ldr     r0, [pc, #0x58] @ 0x2025068, (=0x20020)
	add     r2, r5, r1
	ldrb    r0, [r2, r0]
	cmp     r0, #0x0
	bne     branch_202501c
	mov     r2, #0x1
	b       branch_202501e

branch_202501c: @ 202501c :thumb
	mov     r2, #0x0
branch_202501e: @ 202501e :thumb
	lsl     r2, r2, #24
	mov     r0, r5
	lsr     r2, r2, #24
	bl      Function_2024e68
	str     r0, [r4, #0x10]
	mov     r0, #0x1
	str     r0, [r4, #0x24]
	ldr     r0, [r4, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x14]
branch_2025034: @ 2025034 :thumb
	ldr     r0, [r4, #0x10]
	ldr     r1, [r4, #0x24]
	add     r2, sp, #0x0
	bl      Function_2025bb8
	cmp     r0, #0x0
	beq     branch_2025062
	mov     r2, #0x0
	str     r2, [r4, #0x24]
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x0
	bne     branch_2025050
	mov     r0, #0x3
	pop     {r3-r5,pc}

branch_2025050: @ 2025050 :thumb
	ldr     r0, [r4, #0x8]
	add     r1, r0, #0x1
	str     r1, [r4, #0x8]
	ldr     r0, [r4, #0xc]
	cmp     r1, r0
	bne     branch_2025060
	mov     r0, #0x2
	pop     {r3-r5,pc}

branch_2025060: @ 2025060 :thumb
	str     r2, [r4, #0x14]
branch_2025062: @ 2025062 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2025066

.align 2
.word 0x20020 @ 0x2025068



.thumb
Function_202506c: @ 202506c :thumb
	push    {r3-r7,lr}
	mov     r3, r0
	mov     r0, r1
	cmp     r2, #0x3
	bne     branch_2025096
	ldr     r1, [r0, #0x0]
	cmp     r1, #0x0
	beq     branch_2025082
	ldr     r2, [r0, #0x18]
	ldr     r1, [pc, #0x50] @ 0x20250d0, (=0x20014)
	str     r2, [r3, r1]
branch_2025082: @ 2025082 :thumb
	ldr     r1, [pc, #0x50] @ 0x20250d4, (=0x20018)
	mov     r4, #0x0
branch_2025086: @ 2025086 :thumb
	ldr     r2, [r0, #0x1c]
	.hword  0x1c64 @ add r4, r4, #0x1
	str     r2, [r3, r1]
	.hword  0x1d00 @ add r0, r0, #0x4
	.hword  0x1d1b @ add r3, r3, #0x4
	cmp     r4, #0x2
	blt     branch_2025086
	b       branch_20250c6

branch_2025096: @ 2025096 :thumb
	ldr     r6, [r0, #0x4]
	ldr     r1, [r0, #0xc]
	cmp     r6, r1
	bge     branch_20250bc
	ldr     r1, [pc, #0x38] @ 0x20250d8, (=0x20020)
	mov     r7, #0x1
	mov     r2, r1
branch_20250a4: @ 20250a4 :thumb
	add     r5, r3, r6
	ldrb    r4, [r5, r2]
	cmp     r4, #0x0
	bne     branch_20250b0
	mov     r4, r7
	b       branch_20250b2

branch_20250b0: @ 20250b0 :thumb
	mov     r4, #0x0
branch_20250b2: @ 20250b2 :thumb
	strb    r4, [r5, r1]
	ldr     r4, [r0, #0xc]
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r4
	blt     branch_20250a4
branch_20250bc: @ 20250bc :thumb
	mov     r0, #0x1
	str     r0, [r3, #0x4]
	mov     r0, #0x0
	str     r0, [r3, #0x8]
	str     r0, [r3, #0xc]
branch_20250c6: @ 20250c6 :thumb
	mov     r0, #0x1
	bl      Function_2017b8c
	pop     {r3-r7,pc}
@ 0x20250ce

.align 2
.word 0x20014 @ 0x20250d0
.word 0x20018 @ 0x20250d4
.word 0x20020 @ 0x20250d8



/* Input:
r0: VariableAreaAdresses
*/
.thumb
Function_20250dc: @ 20250dc :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r1, [r4, #0x0]
	cmp     r1, #0x0
	beq     branch_20250ec
	ldr     r2, [r4, #0x18]
	ldr     r1, [pc, #0x48] @ 0x2025134, (=VariableAreaAdresses_20014)
	str     r2, [r0, r1]
branch_20250ec: @ 20250ec :thumb

	ldr     r1, [pc, #0x48] @ 0x2025138, (=VariableAreaAdresses_20018)
	mov     r3, #0x0
	mov     r5, r4
branch_20250f2: @ 20250f2 :thumb
	ldr     r2, [r5, #0x1c]
	.hword  0x1c5b @ add r3, r3, #0x1
	str     r2, [r0, r1]
	.hword  0x1d2d @ add r5, r5, #0x4
	.hword  0x1d00 @ add r0, r0, #0x4
	cmp     r3, #0x2
	blt     branch_20250f2

	blx     Function_20cd050
	cmp     r0, #0x0
	bne     branch_202510c
	blx     CARD_CancelBackupAsync
branch_202510c: @ 202510c :thumb

	ldr     r0, [r4, #0x24]
	cmp     r0, #0x0
	beq     branch_202512a
	ldr     r0, [r4, #0x10]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	blx     CARD_UnlockBackup
	ldr     r0, [r4, #0x10]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	blx     OS_ReleaseLockID
	mov     r0, #0x0
	str     r0, [r4, #0x24]
branch_202512a: @ 202512a :thumb

	mov     r0, #0x1
	bl      Function_2017b8c
	pop     {r3-r5,pc}
@ 0x2025132

.align 2
.word VariableAreaAdresses_20014 @ 0x2025134
.word VariableAreaAdresses_20018 @ 0x2025138



.thumb
Function_202513c: @ 202513c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x28
	add     r1, sp, #0x0
	mov     r2, #0x2
	mov     r5, r0
	bl      Function_2024ec8
	add     r6, sp, #0x0
branch_202514c: @ 202514c :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_2024f44
	mov     r4, r0
	beq     branch_202514c
	cmp     r4, #0x1
	beq     branch_202514c
	mov     r0, r5
	add     r1, sp, #0x0
	mov     r2, r4
	bl      Function_202506c
	mov     r0, r4
	add     sp, #0x28
	pop     {r4-r6,pc}
@ 0x202516c


.thumb
Function_202516c: @ 202516c :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r4, r2
	ldr     r2, [pc, #0x2c] @ 0x20251a0, (=0x20284)
	add     r2, r0, r2
	mov     r0, #0xc
	mul     r0, r1
	add     r5, r2, r0
	add     r0, sp, #0x0
	mov     r1, #0xff
	mov     r2, #0x14
	blx     MI_CpuFill8
	mov     r0, r4
	mov     r1, r5
	bl      Function_2024888
	ldr     r1, [r5, #0x8]
	mov     r2, #0x14
	add     r0, r1, r0
	sub     r0, #0x14
	add     r1, sp, #0x0
	bl      Function_2025a9c
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x20251a0

.word 0x20284 @ 0x20251a0



/* Input:
r0: Nr of VariableArea
*/
thumb_func_start GetSomeSizeOfVariableAreas
GetSomeSizeOfVariableAreas: @ 20251a4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, =NrOfVariableAreas
	ldr     r4, =TableForVariableAreas
	ldr     r0, [r0]
	cmp     r5, r0
	blt     branch_20251b6
	bl      ErrorHandling
branch_20251b6: @ 20251b6 :thumb

	lsl     r0, r5, #4
	add     r0, r4, r0
	ldr     r0, [r0, #TableForVariableAreas_GetSizeFunction]
	blx     r0
	lsr     r3, r0, #31
	lsl     r2, r0, #30
	sub     r2, r2, r3
	mov     r1, #30
	ror     r2, r1
	add     r2, r3, r2
	mov     r1, #0x4
	sub     r1, r1, r2
	add     r0, r0, r1
	.hword  0x1d00 @ add r0, r0, #0x4
	pop     {r3-r5,pc}
@ 0x20251d4

.align 2
.pool
thumb_func_end GetSomeSizeOfVariableAreas



/* Input:
r0: Ptr to VariableAreaAdresses_20024
*/
thumb_func_start InitVariableAreaAdresses_20024
InitVariableAreaAdresses_20024: @ 20251dc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8

	mov     r5, r0
	ldr     r0, =NrOfVariableAreas
	ldr     r4, =TableForVariableAreas
	ldr     r0, [r0, #0x0]
	mov     r7, #0x0
	str     r0, [sp, #0x0]
	cmp     r0, #0x26
	beq     branch_20251f4
	bl      ErrorHandling
branch_20251f4: @ 20251f4 :thumb

	ldr     r0, [sp, #0x0]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_2025240
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [sp, #0x4]
branch_2025200: @ 2025200 :thumb
	ldr     r0, [r4, #TableForVariableAreas_Nr]
	cmp     r6, r0
	beq     branch_202520a
	bl      ErrorHandling
branch_202520a: @ 202520a :thumb

	ldr     r0, [r4, #TableForVariableAreas_Nr]
	str     r0, [r5, #VariableAreaAdresses_20024_Nr]
	mov     r0, r6
	bl      GetSomeSizeOfVariableAreas
	str     r0, [r5, #VariableAreaAdresses_20024_4]
	str     r7, [r5, #VariableAreaAdresses_20024_RelAdr]
	mov     r0, #0x0
	strh    r0, [r5, #VariableAreaAdresses_20024_c]
	ldr     r0, [r4, #TableForVariableAreas_4]
	strh    r0, [r5, #VariableAreaAdresses_20024_e]
	ldr     r0, [r5, #VariableAreaAdresses_20024_4]
	add     r7, r7, r0
	ldr     r0, [sp, #0x4]
	cmp     r6, r0
	beq     branch_2025232

	ldr     r1, [r4, #TableForVariableAreas_4]
	ldr     r0, [r4, #TableForVariableAreas_14]
	cmp     r1, r0
	beq     branch_2025234

branch_2025232: @ 2025232 :thumb
	add     r7, #0x14
branch_2025234: @ 2025234 :thumb
	ldr     r0, [sp, #0x0]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #TableForVariableAreas_Next
	add     r5, #VariableAreaAdresses_20024_Next
	cmp     r6, r0
	blt     branch_2025200

branch_2025240: @ 2025240 :thumb
	mov     r0, #0x2
	lsl     r0, r0, #16
	cmp     r7, r0
	ble     branch_202524c
	bl      ErrorHandling
branch_202524c: @ 202524c :thumb

	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2025250

.align 2
.pool
thumb_func_end InitVariableAreaAdresses_20024



/* Input:
r0: Ptr to VariableAreaAdresses_20284
r1: Ptr to VariableAreaAdresses_20024
*/
Function_2025258: @ 2025258 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r12, r0
	mov     r4, r0
	mov     r3, r0
	ldr     r0, =NrOfVariableAreas
	ldr     r6, [sp, #0x0]
	ldr     r7, [r0, #0x0]
	mov     r5, r1
branch_2025270: @ 2025270 :thumb
	mov     r2, r6
	strb    r3, [r6, #0x0]
	mov     r0, #0x0
	str     r0, [r6, #0x8]
	add     r2, #0x8
	b       branch_2025288

branch_202527c: @ 202527c :thumb
	ldr     r0, [r5, #0x4]
	ldr     r1, [r2, #0x0]
	add     r5, #0x10
	add     r0, r1, r0
	str     r0, [r2, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
branch_2025288: @ 2025288 :thumb
	ldrh    r0, [r5, #0xe]
	cmp     r3, r0
	bne     branch_2025292

	cmp     r4, r7
	blt     branch_202527c

branch_2025292: @ 2025292 :thumb
	ldr     r0, [r6, #0x8]
	.hword  0x1c5b @ add r3, r3, #0x1
	add     r0, #0x14
	str     r0, [r6, #0x8]
	ldr     r0, [sp, #0x4]
	strb    r0, [r6, #0x1]
	mov     r0, r12
	str     r0, [r6, #0x4]
	ldr     r1, [r6, #0x8]
	ldr     r0, =0xfff
	add     r0, r1, r0
	lsr     r0, r0, #12
	strb    r0, [r6, #0x2]
	ldrb    r1, [r6, #0x2]
	ldr     r0, [sp, #0x4]
	add     r0, r0, r1
	str     r0, [sp, #0x4]
	ldr     r0, [r6, #0x8]
	mov     r1, r12
	add     r0, r1, r0
	add     r6, #0xc
	mov     r12, r0
	cmp     r3, #0x2
	blt     branch_2025270

	ldr     r0, [sp, #0x0]
	ldrb    r1, [r0, #0xd]
	ldrb    r0, [r0, #0xe]
	add     r1, r1, r0
	ldr     r0, [sp, #0x4]
	cmp     r0, r1
	beq     branch_20252d4
	bl      ErrorHandling
branch_20252d4: @ 20252d4 :thumb

	ldr     r0, [sp, #0x4]
	cmp     r0, #0x20
	ble     branch_20252de
	bl      ErrorHandling
branch_20252de: @ 20252de :thumb

	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x20252e2

.align 2
.pool



thumb_func_start ClearAllVariableAreas
ClearAllVariableAreas: @ 20252ec :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r0
	mov     r2, #0x2
	mov     r5, r1
	mov     r0, #0x0
	mov     r1, r6
	lsl     r2, r2, #16
	ldr     r4, =TableForVariableAreas
	blx     MIi_CpuClearFast
	ldr     r0, =NrOfVariableAreas
	mov     r7, #0x0
	ldr     r0, [r0, #0x0]
	str     r0, [sp, #0x0]
	cmp     r0, #0x0
	ble     branch_2025332

branch_202530e: @ 202530e :thumb
	ldr     r0, [r5, #0x8]
	ldr     r2, [r5, #0x4]
	str     r0, [sp, #0x4]
	ldr     r1, [sp, #0x4]
	mov     r0, #0x0
	add     r1, r6, r1
	blx     MIi_CpuClearFast
	ldr     r0, [sp, #0x4]
	ldr     r1, [r4, #TableForVariableAreas_InitFunction]
	add     r0, r6, r0
	blx     r1
	ldr     r0, [sp, #0x0]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r5, #0x10
	add     r4, #TableForVariableAreas_Next
	cmp     r7, r0
	blt     branch_202530e

branch_2025332: @ 2025332 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2025336

.align 2
.pool
thumb_func_end ClearAllVariableAreas

