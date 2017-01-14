
thumb_func_start GetSizeOfPlayerData
GetSizeOfPlayerData: @ 2025e08 :thumb
	mov     r0, #0x2c
	bx      lr
thumb_func_end GetSizeOfPlayerData


thumb_func_start InitPlayerData
InitPlayerData: @ 2025e0c :thumb
	push    {r4,lr}
	mov     r4, r0

	mov     r0, #0x0
	mov     r1, r4
	mov     r2, #0x2c
	blx     MIi_CpuClearFast

	mov     r0, r4
	bl      Function_2027a1c

	add     r0, r4, #0x4
	bl      InitTrainerData

	mov     r0, r4
	add     r0, #0x24
	bl      Function_202b594

	add     r4, #0x26
	mov     r0, r4
	bl      Function_202cbe4

	pop     {r4,pc}
thumb_func_end InitPlayerData


thumb_func_start LoadTrainerDataAdress
LoadTrainerDataAdress: @ 2025e38 :thumb
	push    {r3,lr}
	mov     r1, #0x1
	bl      LoadVariableAreaAdress
	.hword  0x1d00 @ add r0, r0, #0x4
	pop     {r3,pc}
thumb_func_end LoadTrainerDataAdress


thumb_func_start LoadPlayerDataAdress
LoadPlayerDataAdress: @ 2025e44 :thumb
	ldr     r3, =LoadVariableAreaAdress+1
	mov     r1, #0x1
	bx      r3
@ 0x2025e4a

.align 2
.pool
thumb_func_end LoadPlayerDataAdress



thumb_func_start LoadPlayerDataAdress_24
LoadPlayerDataAdress_24: @ 2025e50 :thumb
	push    {r3,lr}
	mov     r1, #0x1
	bl      LoadVariableAreaAdress
	add     r0, #0x24
	pop     {r3,pc}
thumb_func_end LoadPlayerDataAdress_24


thumb_func_start LoadPlayerDataAdress_26
LoadPlayerDataAdress_26: @ 2025e5c :thumb
	push    {r3,lr}
	mov     r1, #0x1
	bl      LoadVariableAreaAdress
	add     r0, #0x26
	pop     {r3,pc}
thumb_func_end LoadPlayerDataAdress_26


.thumb
Function_2025e68: @ 2025e68 :thumb
	mov     r0, #0x20
	bx      lr
@ AllocTrainerData


thumb_func_start AllocTrainerData
AllocTrainerData: @ 2025e6c :thumb
	push    {r4,lr}
	mov     r1, #0x20
	bl      malloc
	mov     r4, r0

	bl      InitTrainerData

	mov     r0, r4
	pop     {r4,pc}
thumb_func_end AllocTrainerData


.align 2, 0
.thumb
.globl Function_2025e80
Function_2025e80: @ 2025e80 :thumb
	ldr     r3, =MI_CpuCopy8
	mov     r2, #0x20
	bx      r3
@ 0x2025e86

.align 2
.pool



thumb_func_start InitTrainerData
InitTrainerData: @ 2025e8c :thumb
	push    {r4,lr}
	mov     r1, #0x0
	mov     r2, #0x20
	mov     r4, r0
	blx     Call_FillMemWithValue

	mov     r0, #0x2
	strb    r0, [r4, #TrainerData_19]

	mov     r0, r4
	mov     r1, #0xc
	bl      Function_2025fd0

	pop     {r4,pc}
thumb_func_end InitTrainerData


.align 2, 0
.thumb
Function_2025ea8: @ 2025ea8 :thumb
	mov     r2, #0x0
branch_2025eaa: @ 2025eaa :thumb
	ldrh    r1, [r0, #0x0]
	cmp     r1, #0x0
	beq     branch_2025eb4
	mov     r0, #0x0
	bx      lr

branch_2025eb4: @ 2025eb4 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c80 @ add r0, r0, #0x2
	cmp     r2, #0x8
	blt     branch_2025eaa
	mov     r0, #0x1
	bx      lr
@ 0x2025ec0


.thumb
.globl Function_2025ec0
Function_2025ec0: @ 2025ec0 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	bl      Function_20021f0
	cmp     r0, #0x8
	blt     branch_2025ed4
	bl      ErrorHandling
branch_2025ed4: @ 2025ed4 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_20021b0
	pop     {r3-r5,pc}
@ 0x2025ede


.align 2, 0
.thumb
.globl Function_2025ee0
Function_2025ee0: @ 2025ee0 :thumb
	ldr     r3, =Function_2023df0+1
	mov     r2, r0
	mov     r0, r1
	mov     r1, r2
	mov     r2, #0x8
	bx      r3
@ 0x2025eec

.align 2
.pool



.thumb
.globl Function_2025ef0_Dummy
Function_2025ef0_Dummy: @ 2025ef0 :thumb
	bx      lr
@ 0x2025ef2


.align 2, 0
.thumb
.globl Function_2025ef4
Function_2025ef4: @ 2025ef4 :thumb
	ldr     r3, =Function_2023d28+1
	mov     r2, r0
	mov     r0, r1
	mov     r1, r2
	bx      r3
@ 0x2025efe

.align 2
.pool



.thumb
.globl Function_2025f04
Function_2025f04: @ 2025f04 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x8
	bl      Function_2023790
	mov     r4, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_2025ef4
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2025f1c


thumb_func_start SetTrainerID
SetTrainerID: @ 2025f1c :thumb
	str     r1, [r0, #TrainerData_ID]
	bx      lr
thumb_func_end SetTrainerID


thumb_func_start GetTrainerID
GetTrainerID: @ 2025f20 :thumb
	ldr     r0, [r0, #TrainerData_ID]
	bx      lr
thumb_func_end GetTrainerID


thumb_func_start GetSecretTrainerID
GetSecretTrainerID: @ 2025f24 :thumb
	ldr     r0, [r0, #TrainerData_ID]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bx      lr
thumb_func_end GetSecretTrainerID


thumb_func_start SetGender
SetGender: @ 2025f2c :thumb
	strb    r1, [r0, #TrainerData_Gender]
	bx      lr
thumb_func_end SetGender


thumb_func_start GetGender
GetGender: @ 2025f30 :thumb
	ldrb    r0, [r0, #TrainerData_Gender]
	bx      lr
thumb_func_end GetGender


thumb_func_start CheckBadge
CheckBadge: @ 2025f34 :thumb
	ldrb    r3, [r0, #TrainerData_Badge]
	mov     r0, #0x1
	mov     r2, r0
	lsl     r2, r1
	mov     r1, r3
	tst     r1, r2
	bne     branch_2025f44
	mov     r0, #0x0
branch_2025f44: @ 2025f44 :thumb
	bx      lr
thumb_func_end CheckBadge


thumb_func_start EnableBadge
EnableBadge: @ 2025f48 :thumb
	ldrb    r3, [r0, #TrainerData_Badge]
	mov     r2, #0x1
	lsl     r2, r1
	mov     r1, r3
	orr     r1, r2
	strb    r1, [r0, #TrainerData_Badge]
	bx      lr
thumb_func_end EnableBadge


thumb_func_start CountBadges
CountBadges: @ 2025f58 :thumb
	ldrb    r3, [r0, #TrainerData_Badge]
	mov     r2, #0x0
	cmp     r3, #0x0
	beq     branch_2025f6e
	mov     r0, #0x1
branch_2025f62: @ 2025f62 :thumb
	mov     r1, r3
	tst     r1, r0
	beq     branch_2025f6a
	.hword  0x1c52 @ add r2, r2, #0x1
branch_2025f6a: @ 2025f6a :thumb
	lsr     r3, r3, #1
	bne     branch_2025f62
branch_2025f6e: @ 2025f6e :thumb
	mov     r0, r2
	bx      lr
thumb_func_end CountBadges


thumb_func_start GetMoney
GetMoney: @ 2025f74 :thumb
	ldr     r0, [r0, #TrainerData_Money]
	bx      lr
thumb_func_end GetMoney


thumb_func_start SetMoney
SetMoney: @ 2025f78 :thumb
	ldr     r2, =999999
	cmp     r1, r2
	bls     branch_2025f80
	mov     r1, r2
branch_2025f80: @ 2025f80 :thumb
	str     r1, [r0, #TrainerData_Money]
	mov     r0, r1
	bx      lr
@ 0x2025f86

.align 2
.pool
thumb_func_end SetMoney



.thumb
.globl Function_2025f8c
Function_2025f8c: @ 2025f8c :thumb
	ldrb    r0, [r0, #TrainerData_1b]
	bx      lr
@ 0x2025f90


.thumb
.globl Function_2025f90
Function_2025f90: @ 2025f90 :thumb
	strb    r1, [r0, #TrainerData_1b]
	bx      lr
@ 0x2025f94


thumb_func_start GiveMoney
GiveMoney: @ 2025f94 :thumb
	ldr     r2, =999999
	cmp     r1, r2
	bls     branch_2025f9e
	str     r2, [r0, #TrainerData_Money]
	b       branch_2025fa4

branch_2025f9e: @ 2025f9e :thumb
	ldr     r2, [r0, #TrainerData_Money]
	add     r1, r2, r1
	str     r1, [r0, #TrainerData_Money]
branch_2025fa4: @ 2025fa4 :thumb
	ldr     r2, [r0, #TrainerData_Money]
	ldr     r1, =999999
	cmp     r2, r1
	bls     branch_2025fae
	str     r1, [r0, #TrainerData_Money]
branch_2025fae: @ 2025fae :thumb
	ldr     r0, [r0, #TrainerData_Money]
	bx      lr
@ 0x2025fb2

.align 2
.pool
thumb_func_end GiveMoney



thumb_func_start TakeMoney
TakeMoney: @ 2025fb8 :thumb
	ldr     r2, [r0, #TrainerData_Money]
	cmp     r2, r1
	bhs     branch_2025fc2
	mov     r1, #0x0
	b       branch_2025fc4

branch_2025fc2: @ 2025fc2 :thumb
	sub     r1, r2, r1
branch_2025fc4: @ 2025fc4 :thumb
	str     r1, [r0, #TrainerData_Money]
	ldr     r0, [r0, #TrainerData_Money]
	bx      lr
thumb_func_end TakeMoney


.align 2, 0
.thumb
.globl Function_2025fcc
Function_2025fcc: @ 2025fcc :thumb
	ldrb    r0, [r0, #TrainerData_1c]
	bx      lr
@ 0x2025fd0


.thumb
.globl Function_2025fd0
Function_2025fd0: @ 2025fd0 :thumb
	strb    r1, [r0, #TrainerData_1c]
	bx      lr
@ 0x2025fd4


.thumb
Function_2025fd4: @ 2025fd4 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2025fd8


.thumb
.globl Function_2025fd8
Function_2025fd8: @ 2025fd8 :thumb
	ldrb    r0, [r0, #TrainerData_19]
	bx      lr
@ 0x2025fdc


.thumb
.globl Function_2025fdc
Function_2025fdc: @ 2025fdc :thumb
	strb    r1, [r0, #TrainerData_19]
	bx      lr
@ 0x2025fe0


.thumb
.globl Function_2025fe0
Function_2025fe0: @ 2025fe0 :thumb
	ldrb    r2, [r0, #TrainerData_1d]
	mov     r1, #0x1
	bic     r2, r1
	mov     r1, #0x1
	orr     r1, r2
	strb    r1, [r0, #TrainerData_1d]
	bx      lr
@ 0x2025fee


.align 2, 0
.thumb
.globl Function_2025ff0
Function_2025ff0: @ 2025ff0 :thumb
	ldrb    r0, [r0, #TrainerData_1d]
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	bx      lr
@ 0x2025ff8


.thumb
Function_2025ff8: @ 2025ff8 :thumb
	ldrb    r2, [r0, #TrainerData_1d]
	mov     r1, #0x2
	orr     r1, r2
	strb    r1, [r0, #TrainerData_1d]
	bx      lr
@ 0x2026002


.align 2, 0
.thumb
Function_2026004: @ 2026004 :thumb
	ldrb    r0, [r0, #TrainerData_1d]
	lsl     r0, r0, #30
	lsr     r0, r0, #31
	bx      lr
@ 0x202600c
