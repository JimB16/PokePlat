

.section .iwram57, "ax"


.thumb
NewGameInit: @ 21d0d80 :thumb
	push    {r3,lr}
	mov     r2, #0x2
	mov     r0, #0x3
	mov     r1, #0x4d
	lsl     r2, r2, #16
	bl      Function_2017fc8
	bl      InitRNG
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d0d96


.align 2, 0
.thumb
NewGameLoop: @ 21d0d98 :thumb
	push    {r3,lr}
	bl      LoadPtrToOverWorldDataIn18
	ldr     r1, [r0, #0x8]
	mov     r0, #0x4d
	bl      Function_21d0f44
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d0daa


.align 2, 0
.thumb
NewGameEnd: @ 21d0dac :thumb
	push    {r3,lr}
	mov     r0, #0x4d
	bl      Function_201807c
	mov     r0, #0x0
	ldr     r1, =Unknown_20f6824
	mvn     r0, r0
	bl      SetOverlayJumpTableDataToLoad
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d0dc2

.align 2
.pool



.thumb
ContinueGameInit: @ 21d0dc8 :thumb
	push    {r3,lr}
	mov     r2, #0x2
	mov     r0, #0x3
	mov     r1, #0x4d
	lsl     r2, r2, #16
	bl      Function_2017fc8
	bl      InitRNG

	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d0dde


.align 2, 0
.thumb
ContinueGameLoop: @ 21d0de0 :thumb
	push    {r4,lr}
	bl      LoadPtrToOverWorldDataIn18
	ldr     r4, [r0, #0x8]
	mov     r0, #0x4d
	mov     r1, r4
	mov     r2, #0x1
	bl      Function_21d0eac

	mov     r0, r4
	bl      LoadPlayerDataAdress_26
	bl      Function_2017434

	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d0e00


.thumb
ContinueGameEnd: @ 21d0e00 :thumb
	push    {r3,lr}
	mov     r0, #0x4d
	bl      Function_201807c

	mov     r0, #0x0
	ldr     r1, =JumpTable_AfterContinueGameEnd
	mvn     r0, r0
	bl      SetOverlayJumpTableDataToLoad

	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d0e16

.align 2
.pool



.thumb
ContinueGameDiaryInit: @ 21d0e1c :thumb
	push    {r3,lr}
	mov     r2, #0x2
	mov     r0, #0x3
	mov     r1, #0x4d
	lsl     r2, r2, #16
	bl      Function_2017fc8
	bl      InitRNG
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d0e32


.align 2, 0
.thumb
ContinueGameDiaryLoop: @ 21d0e34 :thumb
	push    {r3-r5,lr}
	bl      LoadPtrToOverWorldDataIn18
	ldr     r4, [r0, #0x8]

	mov     r0, r4
	bl      LoadVariableAreaAdress_0
	mov     r5, r0

	mov     r0, #0x4d
	mov     r1, r4
	bl      Function_21d0f30

	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2027a68

	mov     r0, r5
	bl      Function_2025d10
	cmp     r0, #0x0
	beq     branch_21d0e68

	mov     r0, r5
	bl      Function_2025d40
	cmp     r0, #0x0
	bne     branch_21d0e82

branch_21d0e68: @ 21d0e68 :thumb
	mov     r0, r4
	bl      Function_2025cd8
	bl      Function_2025de8

	mov     r0, r5
	bl      Function_2025ce4

	mov     r0, r4
	bl      LoadPokePartyAdress
	bl      Function_2077b8c

branch_21d0e82: @ 21d0e82 :thumb
	mov     r0, r4
	bl      LoadPlayerDataAdress_26
	bl      Function_2017434
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d0e90


.thumb
ContinueGameDiaryEnd: @ 21d0e90 :thumb
	push    {r3,lr}
	mov     r0, #0x4d
	bl      Function_201807c

	mov     r0, #0x0
	ldr     r1, =JumpTable_AfterContinueGameDiaryEnd
	mvn     r0, r0
	bl      SetOverlayJumpTableDataToLoad

	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d0ea6

.align 2
.pool



.thumb
Function_21d0eac: @ 21d0eac :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r6, r2
	bl      LoadVariableAreaAdress_0
	bl      Function_2025ce4

	mov     r0, r5
	bl      Function_2025cd8
	bl      Function_2025d84

	mov     r0, r5
	bl      LoadVariableAreaAdress_11

	mov     r4, r0
	bl      Function_201d35c
	mov     r2, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_202b40c

	mov     r0, r5
	bl      Function_206c008

	mov     r0, r5
	bl      LoadTrainerDataAdress

	mov     r4, r0
	bl      Function_201d35c
	mov     r7, r0

	cmp     r6, #0x0
	beq     branch_21d0efe
	mov     r0, r4
	mov     r1, r7
	bl      SetTrainerID
branch_21d0efe: @ 21d0efe :thumb

	mov     r0, r4
	bl      GetGender
	mov     r1, r0
	mov     r0, r7
	mov     r2, #0x0
	bl      Function_205c9bc
	mov     r1, r0
	lsl     r1, r1, #24
	mov     r0, r4
	lsr     r1, r1, #24
	bl      Function_2025f90

	mov     r0, r5
	bl      LoadVariableAreaAdress_a
	ldr     r1, [sp, #0x0]
	ldr     r2, [pc, #0x8] @ 0x21d0f2c, (=0x21d0fa0)
	mov     r3, #0x76
	bl      Function_2027b90
	pop     {r3-r7,pc}
@ 0x21d0f2c

.word 0x21d0fa0 @ 0x21d0f2c



.thumb
Function_21d0f30: @ 21d0f30 :thumb
	push    {r3,lr}
	mov     r0, r1
	bl      Function_20246a8
	cmp     r0, #0x0
	bne     branch_21d0f42
	mov     r0, #0x0
	blx     OS_ResetSystem
branch_21d0f42: @ 21d0f42 :thumb

	pop     {r3,pc}
@ 0x21d0f44


.thumb
Function_21d0f44: @ 21d0f44 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	bl      Call_ClearAllVariableAreas

	mov     r0, r4
	bl      Function_203d1a8

	mov     r0, r4
	bl      LoadTrainerDataAdress
	ldr     r1, =3000
	bl      SetMoney

	mov     r0, r4
	bl      LoadFlagAdress
	bl      Function_206a92c
	pop     {r4,pc}
@ 0x21d0f6c

.align 2
.pool



@ ContinueGame starts with showing the last diary entries
.globl JumpTable_57_ContinueGameDiary
JumpTable_57_ContinueGameDiary: @ 0x21d0f70
.word ContinueGameDiaryInit+1 @ =0x21d0e1d, 0x21d0f70
.word ContinueGameDiaryLoop+1 @ =0x21d0e35, 0x21d0f74
.word ContinueGameDiaryEnd+1 @ =0x21d0e91, 0x21d0f78
.word 0xffffffff @ 0x21d0f7c

.globl JumpTable_57_ContinueGame
JumpTable_57_ContinueGame: @ 0x21d0f80
.word ContinueGameInit+1 @ =0x21d0dc9, 0x21d0f80
.word ContinueGameLoop+1 @ =0x21d0de1, 0x21d0f84
.word ContinueGameEnd+1 @ =0x21d0e01, 0x21d0f88
.word 0xffffffff @ 0x21d0f8c

.globl JumpTable_57_NewGame
JumpTable_57_NewGame: @ 0x21d0f90
.word NewGameInit+1 @ =0x21d0d81, 0x21d0f90
.word NewGameLoop+1 @ =0x21d0d99, 0x21d0f94
.word NewGameEnd+1 @ =0x21d0dad, 0x21d0f98
.word 0xffffffff @ 0x21d0f9c

.incbin "./baserom/overlay/overlay_0057.bin", 0x220, 0x21d1180 - 0x21d0fa0


@end 0x21d117f

