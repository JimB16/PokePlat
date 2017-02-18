/*
Name, MoveID, EffectNr, SubSeq
.equ NO_MOVE, 0, 0
.equ POUND, 1, 0
.equ KARATE_CHOP, 2, 43
.equ DOUBLE_SLAP, 3, 29
.equ COMET_PUNCH, 4, 29
.equ MEGA_PUNCH, 5, 0
.equ PAY_DAY, 6, 34
.equ FIRE_PUNCH, 7, 4
.equ ICE_PUNCH, 8, 5
.equ THUNDER_PUNCH, 9, 6
.equ SCRATCH, 10, 0
.equ VICE_GRIP, 11, 0
.equ GUILLOTINE, 12, 38
.equ RAZOR_WIND, 13, 39
.equ SWORDS_DANCE, 14, 50, 12
.equ CUT, 15, 0
.equ LEER, 43, 19
.equ BITE, 44, 31
.equ GROWL, 45, 18
.equ ROAR, 46, 28
.equ SING, 47, 1, 18
.equ POISON_POWDER, 77, 66, 22
.equ STUN_SPORE, 78, 67, 31
.equ SLEEP_POWDER, 79, 1, 18
.equ THUNDER_WAVE, 86, 67, 31
.equ HYPNOSIS, 95, 1, 18
.equ DOUBLE_TEAM, 104, 16
.equ RECOVER, 105, 32
.equ HARDEN, 106, 11
.equ METRONOME_M, 118, 83
.equ MIRROR_MOVE, 119, 9
.equ SELF_DESTRUCT, 120, 7
.equ BELLY_DRUM, 187, 142, 120
.equ RAIN_DANCE, 240, 136, 103
.equ SUNNY_DAY, 241, 137, 103
.equ HAIL, 258, 164, 103
*/




/* Input:
r0: MainBattleData
r1: BattleData
*/
thumb_func_start SkillHandler
SkillHandler: @ 22405fc :thumb
	push    {r3-r7,lr}
	ldr     r7, =Jumptable_BeSeq
	mov     r5, r0
	mov     r4, r1
branch_2240604: @ 2240604 :thumb
	mov     r2, r4              @ BattleData
	add     r2, #BattleData_SkillPtr
	ldr     r2, [r2]
	mov     r0, r5              @ MainBattleData
	lsl     r2, r2, #2
	add     r3, r4, r2
	mov     r2, #0x27
	lsl     r2, r2, #8          @ BattleData_SeqFile (0x2700)
	ldr     r2, [r3, r2]        @ 22c2a54 + 2700 = 22c5154 | 22c2994 + 2700 = 22c5094 | (BattleData + (*BattleData_SkillPtr)*4) + 0x2700
	mov     r1, r4              @ BattleData
	lsl     r2, r2, #2
	ldr     r2, [r7, r2]
	blx     r2

	mov     r6, r0
	ldr     r0, =BattleData_EndOfScript
	ldr     r0, [r4, r0] @ BattleData_EndOfScript_1
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	bne     branch_2240636

	mov     r0, r5
	bl      LoadMainBattleData_2c
	mov     r1, #MainBattleData_2c_4
	tst     r0, r1
	beq     branch_2240604

branch_2240636: @ 2240636 :thumb
	ldr     r1, =BattleData_EndOfScript
	mov     r0, #BattleData_EndOfScript_1
	ldr     r2, [r4, r1] @ BattleData_EndOfScript_1
	bic     r2, r0
	str     r2, [r4, r1] @ BattleData_EndOfScript_1

	mov     r0, r6
	pop     {r3-r7,pc}
@ 0x2240644

.align 2
.pool
thumb_func_end SkillHandler


/* Input:
r0: MainBattleData
r1: BattleData
*/
thumb_func_start BeSeq_Cmd0
BeSeq_Cmd0: @ 224064c :thumb
	push    {r4,lr}
	mov     r4, r0

	mov     r0, r1
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2264a8c

	mov     r0, #0x0
	pop     {r4,pc}
thumb_func_end BeSeq_Cmd0


/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd1: @ 2240664 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r4, r0

	bl      GetMainBattleData_NrOfBattleTextPtrs
	mov     r6, r0

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      BeSeq_LoadWord

	cmp     r0, #0x0
	beq     branch_224068a
	cmp     r0, #0x3
	beq     branch_22406d6
	cmp     r0, #0x4
	beq     branch_22406a8
branch_224068a: @ 224068a :thumb
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_22406d6
branch_2240690: @ 2240690 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_2264ab4

	mov     r0, r4
	mov     r1, r5
	bl      Function_223f938
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r6
	blt     branch_2240690
	b       branch_22406d6

branch_22406a8: @ 22406a8 :thumb
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_22406d6
	mov     r7, #0x1
branch_22406b0: @ 22406b0 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      GetMainBattleData_BattleText

	ldr     r1, [pc, #0x20] @ 0x22406dc, (=0x195)
	ldrb    r0, [r0, r1]
	tst     r0, r7
	beq     branch_22406d0

	mov     r0, r4
	mov     r1, r5
	bl      Function_2264ab4

	mov     r0, r4
	mov     r1, r5
	bl      Function_223f938
branch_22406d0: @ 22406d0 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r6
	blt     branch_22406b0
branch_22406d6: @ 22406d6 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22406da

.align 2
.word 0x195 @ 0x22406dc



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd2: @ 22406e0 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r4, r0
	bl      GetMainBattleData_NrOfBattleTextPtrs
	mov     r7, r0

	mov     r0, r6
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r6
	bl      BeSeq_LoadWord
	cmp     r0, #0x6
	bhi     branch_2240718
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x224070a

Jumppoints_224070a:
.hword branch_2240718 - Jumppoints_224070a - 2
.hword branch_22407bc - Jumppoints_224070a - 2
.hword branch_2240806 - Jumppoints_224070a - 2
.hword branch_2240736 - Jumppoints_224070a - 2
.hword branch_224077a - Jumppoints_224070a - 2
.hword branch_2240718 - Jumppoints_224070a - 2
.hword branch_2240850 - Jumppoints_224070a - 2
.thumb
branch_2240718: @ 2240718 :thumb
	mov     r5, #0x0
	cmp     r7, #0x0
	ble     branch_2240734
.thumb
branch_224071e: @ 224071e :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_2264bb4
	mov     r0, r4
	mov     r1, r5
	bl      Function_223f938
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r7
	blt     branch_224071e
.thumb
branch_2240734: @ 2240734 :thumb
	b       branch_2240898
@ 0x2240736

.thumb
branch_2240736: @ 2240736 :thumb
	mov     r5, #0x0
	cmp     r7, #0x0
	ble     branch_2240764
.thumb
branch_224073c: @ 224073c :thumb
	mov     r0, r4
	mov     r1, r5
	bl      GetMainBattleData_BattleText
	ldr     r1, [pc, #0x154] @ 0x224089c, (=0x195)
	ldrb    r1, [r0, r1]
	mov     r0, #0x1
	tst     r0, r1
	bne     branch_224075e
	mov     r0, r4
	mov     r1, r5
	bl      Function_2264bb4
	mov     r0, r4
	mov     r1, r5
	bl      Function_223f938
.thumb
branch_224075e: @ 224075e :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r7
	blt     branch_224073c
.thumb
branch_2240764: @ 2240764 :thumb
	mov     r0, r4
	mov     r1, r6
	mov     r2, #0x1
	bl      Function_22535f0
	mov     r0, r4
	mov     r1, r6
	mov     r2, #0x3
	bl      Function_22535f0
	b       branch_2240898
@ 0x224077a

.thumb
branch_224077a: @ 224077a :thumb
	mov     r5, #0x0
	cmp     r7, #0x0
	ble     branch_22407ba
.thumb
branch_2240780: @ 2240780 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      GetMainBattleData_BattleText
	ldr     r1, [pc, #0x110] @ 0x224089c, (=0x195)
	ldrb    r1, [r0, r1]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_22407b4
	mov     r0, r6
	mov     r1, r5
	bl      Function_22535e0
	mov     r0, r4
	mov     r1, r6
	mov     r2, r5
	bl      Function_22535f0
	mov     r0, r4
	mov     r1, r5
	bl      Function_2264bb4
	mov     r0, r4
	mov     r1, r5
	bl      Function_223f938
.thumb
branch_22407b4: @ 22407b4 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r7
	blt     branch_2240780
.thumb
branch_22407ba: @ 22407ba :thumb
	b       branch_2240898
@ 0x22407bc

.thumb
branch_22407bc: @ 22407bc :thumb
	ldr     r1, [r6, #0x64]
	mov     r0, r4
	bl      GetMainBattleData_BattleText
	ldr     r1, [pc, #0xd4] @ 0x224089c, (=0x195)
	mov     r2, #0x1
	ldrb    r0, [r0, r1]
	tst     r0, r2
	bne     branch_22407e2
	mov     r0, r4
	mov     r1, r6
	bl      Function_22535f0
	mov     r0, r4
	mov     r1, r6
	mov     r2, #0x3
	bl      Function_22535f0
	b       branch_22407f4
@ 0x22407e2

.thumb
branch_22407e2: @ 22407e2 :thumb
	ldr     r1, [r6, #0x64]
	mov     r0, r6
	bl      Function_22535e0
	ldr     r2, [r6, #0x64]
	mov     r0, r4
	mov     r1, r6
	bl      Function_22535f0
.thumb
branch_22407f4: @ 22407f4 :thumb
	ldr     r1, [r6, #0x64]
	mov     r0, r4
	bl      Function_223f938
	ldr     r1, [r6, #0x64]
	mov     r0, r4
	bl      Function_2264bb4
	b       branch_2240898
@ 0x2240806

.thumb
branch_2240806: @ 2240806 :thumb
	ldr     r1, [r6, #0x6c]
	mov     r0, r4
	bl      GetMainBattleData_BattleText
	ldr     r1, [pc, #0x8c] @ 0x224089c, (=0x195)
	mov     r2, #0x1
	ldrb    r0, [r0, r1]
	tst     r0, r2
	bne     branch_224082c
	mov     r0, r4
	mov     r1, r6
	bl      Function_22535f0
	mov     r0, r4
	mov     r1, r6
	mov     r2, #0x3
	bl      Function_22535f0
	b       branch_224083e
@ 0x224082c

.thumb
branch_224082c: @ 224082c :thumb
	ldr     r1, [r6, #0x6c]
	mov     r0, r6
	bl      Function_22535e0
	ldr     r2, [r6, #0x6c]
	mov     r0, r4
	mov     r1, r6
	bl      Function_22535f0
.thumb
branch_224083e: @ 224083e :thumb
	ldr     r1, [r6, #0x6c]
	mov     r0, r4
	bl      Function_223f938
	ldr     r1, [r6, #0x6c]
	mov     r0, r4
	bl      Function_2264bb4
	b       branch_2240898
@ 0x2240850

.thumb
branch_2240850: @ 2240850 :thumb
	ldr     r1, [r6, #0x78]
	mov     r0, r4
	bl      GetMainBattleData_BattleText
	ldr     r1, [pc, #0x40] @ 0x224089c, (=0x195)
	mov     r2, #0x1
	ldrb    r0, [r0, r1]
	tst     r0, r2
	bne     branch_2240876
	mov     r0, r4
	mov     r1, r6
	bl      Function_22535f0
	mov     r0, r4
	mov     r1, r6
	mov     r2, #0x3
	bl      Function_22535f0
	b       branch_2240888
@ 0x2240876

.thumb
branch_2240876: @ 2240876 :thumb
	ldr     r1, [r6, #0x78]
	mov     r0, r6
	bl      Function_22535e0
	ldr     r2, [r6, #0x78]
	mov     r0, r4
	mov     r1, r6
	bl      Function_22535f0
.thumb
branch_2240888: @ 2240888 :thumb
	ldr     r1, [r6, #0x78]
	mov     r0, r4
	bl      Function_223f938
	ldr     r1, [r6, #0x78]
	mov     r0, r4
	bl      Function_2264bb4
.thumb
branch_2240898: @ 2240898 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224089c

.word 0x195 @ 0x224089c



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd3: @ 22408a0 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r4, r0

	bl      GetMainBattleData_NrOfBattleTextPtrs
	mov     r7, r0

	mov     r0, r6
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r6
	bl      BeSeq_LoadWord
	cmp     r0, #0x6
	bhi     branch_22408d8
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22408ca

Jumppoints_22408ca:
.hword branch_22408d8 - Jumppoints_22408ca - 2
.hword branch_224098a - Jumppoints_22408ca - 2
.hword branch_22409d8 - Jumppoints_22408ca - 2
.hword branch_22408fc - Jumppoints_22408ca - 2
.hword branch_2240944 - Jumppoints_22408ca - 2
.hword branch_22408d8 - Jumppoints_22408ca - 2
.hword branch_2240a26 - Jumppoints_22408ca - 2
.thumb
branch_22408d8: @ 22408d8 :thumb
	mov     r5, #0x0
	cmp     r7, #0x0
	ble     branch_22408fa
	mov     r6, r5
.thumb
branch_22408e0: @ 22408e0 :thumb
	mov     r0, r4
	mov     r1, r5
	mov     r2, r6
	mov     r3, r6
	bl      Function_2264ce8
	mov     r0, r4
	mov     r1, r5
	bl      Function_223f938
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r7
	blt     branch_22408e0
.thumb
branch_22408fa: @ 22408fa :thumb
	b       branch_2240a72
@ 0x22408fc

.thumb
branch_22408fc: @ 22408fc :thumb
	mov     r5, #0x0
	cmp     r7, #0x0
	ble     branch_224092e
.thumb
branch_2240902: @ 2240902 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      GetMainBattleData_BattleText
	ldr     r1, [pc, #0x16c] @ 0x2240a78, (=0x195)
	ldrb    r1, [r0, r1]
	mov     r0, #0x1
	tst     r0, r1
	bne     branch_2240928
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, r5
	mov     r3, r2
	bl      Function_2264ce8
	mov     r0, r4
	mov     r1, r5
	bl      Function_223f938
.thumb
branch_2240928: @ 2240928 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r7
	blt     branch_2240902
.thumb
branch_224092e: @ 224092e :thumb
	mov     r0, r4
	mov     r1, r6
	mov     r2, #0x1
	bl      Function_22535f0
	mov     r0, r4
	mov     r1, r6
	mov     r2, #0x3
	bl      Function_22535f0
	b       branch_2240a72
@ 0x2240944

.thumb
branch_2240944: @ 2240944 :thumb
	mov     r5, #0x0
	cmp     r7, #0x0
	ble     branch_2240988
.thumb
branch_224094a: @ 224094a :thumb
	mov     r0, r4
	mov     r1, r5
	bl      GetMainBattleData_BattleText
	ldr     r1, [pc, #0x124] @ 0x2240a78, (=0x195)
	ldrb    r1, [r0, r1]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_2240982
	mov     r0, r6
	mov     r1, r5
	bl      Function_22535e0
	mov     r0, r4
	mov     r1, r6
	mov     r2, r5
	bl      Function_22535f0
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, r5
	mov     r3, r2
	bl      Function_2264ce8
	mov     r0, r4
	mov     r1, r5
	bl      Function_223f938
.thumb
branch_2240982: @ 2240982 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r7
	blt     branch_224094a
branch_2240988: @ 2240988 :thumb
	b       branch_2240a72

branch_224098a: @ 224098a :thumb
	ldr     r1, [r6, #0x64]
	mov     r0, r4
	bl      GetMainBattleData_BattleText
	ldr     r1, [pc, #0xe4] @ 0x2240a78, (=0x195)
	mov     r2, #0x1
	ldrb    r0, [r0, r1]
	tst     r0, r2
	bne     branch_22409b0
	mov     r0, r4
	mov     r1, r6
	bl      Function_22535f0
	mov     r0, r4
	mov     r1, r6
	mov     r2, #0x3
	bl      Function_22535f0
	b       branch_22409c2
@ 0x22409b0

.thumb
branch_22409b0: @ 22409b0 :thumb
	ldr     r1, [r6, #0x64]
	mov     r0, r6
	bl      Function_22535e0
	ldr     r2, [r6, #0x64]
	mov     r0, r4
	mov     r1, r6
	bl      Function_22535f0
.thumb
branch_22409c2: @ 22409c2 :thumb
	ldr     r1, [r6, #0x64]
	mov     r0, r4
	bl      Function_223f938
	mov     r2, #0x0
	ldr     r1, [r6, #0x64]
	mov     r0, r4
	mov     r3, r2
	bl      Function_2264ce8
	b       branch_2240a72
@ 0x22409d8

.thumb
branch_22409d8: @ 22409d8 :thumb
	ldr     r1, [r6, #0x6c]
	mov     r0, r4
	bl      GetMainBattleData_BattleText
	ldr     r1, [pc, #0x94] @ 0x2240a78, (=0x195)
	mov     r2, #0x1
	ldrb    r0, [r0, r1]
	tst     r0, r2
	bne     branch_22409fe
	mov     r0, r4
	mov     r1, r6
	bl      Function_22535f0
	mov     r0, r4
	mov     r1, r6
	mov     r2, #0x3
	bl      Function_22535f0
	b       branch_2240a10
@ 0x22409fe

.thumb
branch_22409fe: @ 22409fe :thumb
	ldr     r1, [r6, #0x6c]
	mov     r0, r6
	bl      Function_22535e0
	ldr     r2, [r6, #0x6c]
	mov     r0, r4
	mov     r1, r6
	bl      Function_22535f0
.thumb
branch_2240a10: @ 2240a10 :thumb
	ldr     r1, [r6, #0x6c]
	mov     r0, r4
	bl      Function_223f938
	mov     r2, #0x0
	ldr     r1, [r6, #0x6c]
	mov     r0, r4
	mov     r3, r2
	bl      Function_2264ce8
	b       branch_2240a72
@ 0x2240a26

.thumb
branch_2240a26: @ 2240a26 :thumb
	ldr     r1, [r6, #0x78]
	mov     r0, r4
	bl      GetMainBattleData_BattleText
	ldr     r1, [pc, #0x48] @ 0x2240a78, (=0x195)
	mov     r2, #0x1
	ldrb    r0, [r0, r1]
	tst     r0, r2
	bne     branch_2240a4c
	mov     r0, r4
	mov     r1, r6
	bl      Function_22535f0
	mov     r0, r4
	mov     r1, r6
	mov     r2, #0x3
	bl      Function_22535f0
	b       branch_2240a5e
@ 0x2240a4c

.thumb
branch_2240a4c: @ 2240a4c :thumb
	ldr     r1, [r6, #0x78]
	mov     r0, r6
	bl      Function_22535e0
	ldr     r2, [r6, #0x78]
	mov     r0, r4
	mov     r1, r6
	bl      Function_22535f0
.thumb
branch_2240a5e: @ 2240a5e :thumb
	ldr     r1, [r6, #0x78]
	mov     r0, r4
	bl      Function_223f938
	mov     r2, #0x0
	ldr     r1, [r6, #0x78]
	mov     r0, r4
	mov     r3, r2
	bl      Function_2264ce8
.thumb
branch_2240a72: @ 2240a72 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2240a76

.align 2
.word 0x195 @ 0x2240a78



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd4: @ 2240a7c :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r5, r0

	bl      GetMainBattleData_NrOfBattleTextPtrs
	mov     r7, r0

	mov     r0, r6
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r6
	bl      BeSeq_LoadWord
	mov     r2, r0
	beq     branch_2240aa4
	cmp     r2, #0x3
	beq     branch_2240abc
	cmp     r2, #0x4
	beq     branch_2240ae6
	b       branch_2240b1e

branch_2240aa4: @ 2240aa4 :thumb
	mov     r4, #0x0
	cmp     r7, #0x0
	ble     branch_2240b30
branch_2240aaa: @ 2240aaa :thumb
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	bl      Function_2264ef8
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r7
	blt     branch_2240aaa
	b       branch_2240b30

branch_2240abc: @ 2240abc :thumb
	mov     r4, #0x0
	cmp     r7, #0x0
	ble     branch_2240b30
branch_2240ac2: @ 2240ac2 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      GetMainBattleData_BattleText
	ldr     r1, [pc, #0x68] @ 0x2240b34, (=0x195)
	ldrb    r1, [r0, r1]
	mov     r0, #0x1
	tst     r0, r1
	bne     branch_2240ade
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	bl      Function_2264ef8
branch_2240ade: @ 2240ade :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r7
	blt     branch_2240ac2
	b       branch_2240b30

branch_2240ae6: @ 2240ae6 :thumb
	mov     r4, #0x0
	cmp     r7, #0x0
	ble     branch_2240b30
branch_2240aec: @ 2240aec :thumb
	mov     r0, r5
	mov     r1, r4
	bl      GetMainBattleData_BattleText
	ldr     r1, [pc, #0x3c] @ 0x2240b34, (=0x195)
	ldrb    r1, [r0, r1]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_2240b16
	mov     r0, r4
	bl      Function_20787cc
	ldr     r1, [pc, #0x30] @ 0x2240b38, (=BattleData_3108)
	ldrb    r1, [r6, r1]
	tst     r0, r1
	bne     branch_2240b16
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	bl      Function_2264ef8
branch_2240b16: @ 2240b16 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r7
	blt     branch_2240aec
	b       branch_2240b30

branch_2240b1e: @ 2240b1e :thumb
	mov     r0, r5
	mov     r1, r6
	bl      GetTargetNrOfPkmn
	mov     r2, r0
	mov     r0, r5
	mov     r1, r6
	bl      Function_2264ef8
branch_2240b30: @ 2240b30 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2240b34

.word 0x195 @ 0x2240b34
.word BattleData_3108 @ 0x2240b38



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd5: @ 2240b3c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord

	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      GetTargetNrOfPkmn

	mov     r1, r0
	mov     r0, r5
	bl      Function_2265108

	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2240b66


/* Input:
r0: MainBattleData
r1: BattleData
*/
.align 2, 0
.thumb
BeSeq_Cmd6: @ 2240b68 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r4, r0

	bl      GetMainBattleData_NrOfBattleTextPtrs
	mov     r6, r0

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      BeSeq_LoadWord
	cmp     r0, #0x0
	beq     branch_2240b8e
	cmp     r0, #0x3
	beq     branch_2240bf2
	cmp     r0, #0x4
	beq     branch_2240c32
branch_2240b8e: @ 2240b8e :thumb
	mov     r0, r4
	bl      LoadMainBattleData_2c
	mov     r1, #0x10
	tst     r0, r1
	beq     branch_2240bc0
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_2240c7c
	ldr     r7, [pc, #0xdc] @ 0x2240c80, (=0x195)
branch_2240ba2: @ 2240ba2 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      GetMainBattleData_BattleText
	ldrb    r0, [r0, r7]
	cmp     r0, #0x4
	beq     branch_2240bb8
	mov     r0, r4
	mov     r1, r5
	bl      Function_2265124
branch_2240bb8: @ 2240bb8 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r6
	blt     branch_2240ba2
	b       branch_2240c7c

branch_2240bc0: @ 2240bc0 :thumb
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_2240c7c
	mov     r7, #0x8
branch_2240bc8: @ 2240bc8 :thumb
	mov     r0, r4
	bl      LoadMainBattleData_2c
	tst     r0, r7
	bne     branch_2240be2
	mov     r0, r4
	bl      LoadMainBattleData_2c
	mov     r1, #0x2
	tst     r0, r1
	beq     branch_2240be2
	cmp     r5, #0x1
	bgt     branch_2240c7c
branch_2240be2: @ 2240be2 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_2265124
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r6
	blt     branch_2240bc8
	b       branch_2240c7c

branch_2240bf2: @ 2240bf2 :thumb
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_2240c7c
	mov     r7, #0x1
branch_2240bfa: @ 2240bfa :thumb
	mov     r0, r4
	mov     r1, r5
	bl      GetMainBattleData_BattleText
	ldr     r1, [pc, #0x7c] @ 0x2240c80, (=0x195)
	ldrb    r0, [r0, r1]
	tst     r0, r7
	bne     branch_2240c2a
	mov     r0, r4
	mov     r1, r5
	bl      Function_2265124
	mov     r0, r4
	bl      LoadMainBattleData_2c
	mov     r1, #0x8
	tst     r0, r1
	bne     branch_2240c2a
	mov     r0, r4
	bl      LoadMainBattleData_2c
	mov     r1, #0x2
	tst     r0, r1
	bne     branch_2240c7c
branch_2240c2a: @ 2240c2a :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r6
	blt     branch_2240bfa
	b       branch_2240c7c

branch_2240c32: @ 2240c32 :thumb
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_2240c7c
	mov     r7, #0x1
branch_2240c3a: @ 2240c3a :thumb
	mov     r0, r4
	mov     r1, r5
	bl      GetMainBattleData_BattleText
	ldr     r1, [pc, #0x3c] @ 0x2240c80, (=0x195)
	ldrb    r0, [r0, r1]
	tst     r0, r7
	beq     branch_2240c76
	mov     r0, r4
	mov     r1, r5
	bl      Function_2265124
	mov     r0, r4
	bl      LoadMainBattleData_2c
	mov     r1, #0x8
	tst     r0, r1
	bne     branch_2240c76
	mov     r0, r4
	bl      LoadMainBattleData_2c
	mov     r1, #0x10
	tst     r0, r1
	bne     branch_2240c76
	mov     r0, r4
	bl      LoadMainBattleData_2c
	mov     r1, #0x2
	tst     r0, r1
	bne     branch_2240c7c
branch_2240c76: @ 2240c76 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r6
	blt     branch_2240c3a
branch_2240c7c: @ 2240c7c :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2240c80

.word 0x195 @ 0x2240c80



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd7: @ 2240c84 :thumb
	push    {r3-r7,lr}
	str     r1, [sp, #0x0]
	mov     r4, r0

	bl      GetMainBattleData_NrOfBattleTextPtrs
	mov     r6, r0

	ldr     r0, [sp, #0x0]
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	ldr     r0, [sp, #0x0]
	bl      BeSeq_LoadWord
	mov     r5, r0

	ldr     r0, [sp, #0x0]
	bl      BeSeq_LoadWord
	mov     r7, r0

	cmp     r5, #0x0
	beq     branch_2240cb4
	cmp     r5, #0x3
	beq     branch_2240ce8
	cmp     r5, #0x4
	beq     branch_2240d2a
branch_2240cb4: @ 2240cb4 :thumb
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_2240d76
branch_2240cba: @ 2240cba :thumb
	mov     r0, r4
	bl      LoadMainBattleData_2c
	mov     r1, #0x8
	tst     r0, r1
	bne     branch_2240cd6
	mov     r0, r4
	bl      LoadMainBattleData_2c
	mov     r1, #0x2
	tst     r0, r1
	beq     branch_2240cd6
	cmp     r5, #0x1
	bgt     branch_2240d76
branch_2240cd6: @ 2240cd6 :thumb
	mov     r0, r4
	mov     r1, r5
	mov     r2, r7
	bl      Function_2265154
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r6
	blt     branch_2240cba
	b       branch_2240d76

branch_2240ce8: @ 2240ce8 :thumb
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_2240d76
branch_2240cee: @ 2240cee :thumb
	mov     r0, r4
	mov     r1, r5
	bl      GetMainBattleData_BattleText
	ldr     r1, [pc, #0x94] @ 0x2240d8c, (=0x195)
	ldrb    r1, [r0, r1]
	mov     r0, #0x1
	tst     r0, r1
	bne     branch_2240d22
	mov     r0, r4
	mov     r1, r5
	mov     r2, r7
	bl      Function_2265154
	mov     r0, r4
	bl      LoadMainBattleData_2c
	mov     r1, #0x8
	tst     r0, r1
	bne     branch_2240d22
	mov     r0, r4
	bl      LoadMainBattleData_2c
	mov     r1, #0x2
	tst     r0, r1
	bne     branch_2240d76
branch_2240d22: @ 2240d22 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r6
	blt     branch_2240cee
	b       branch_2240d76

branch_2240d2a: @ 2240d2a :thumb
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_2240d76
branch_2240d30: @ 2240d30 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      GetMainBattleData_BattleText
	ldr     r1, [pc, #0x50] @ 0x2240d8c, (=0x195)
	ldrb    r1, [r0, r1]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_2240d70
	mov     r0, r4
	mov     r1, r5
	mov     r2, r7
	bl      Function_2265154
	mov     r0, r4
	bl      LoadMainBattleData_2c
	mov     r1, #0x8
	tst     r0, r1
	bne     branch_2240d70
	mov     r0, r4
	bl      LoadMainBattleData_2c
	mov     r1, #0x10
	tst     r0, r1
	bne     branch_2240d70
	mov     r0, r4
	bl      LoadMainBattleData_2c
	mov     r1, #MainBattleData_2c_2
	tst     r0, r1
	bne     branch_2240d76

branch_2240d70: @ 2240d70 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r6
	blt     branch_2240d30

branch_2240d76: @ 2240d76 :thumb
	ldr     r1, [pc, #0x18] @ 0x2240d90, (=BattleData_EndOfScript)
	ldr     r0, [sp, #0x0]
	ldr     r2, [r0, r1] @ BattleData_EndOfScript
	mov     r0, #BattleData_EndOfScript_1
	bic     r2, r0
	mov     r0, #BattleData_EndOfScript_1
	orr     r2, r0
	ldr     r0, [sp, #0x0]
	str     r2, [r0, r1] @ BattleData_EndOfScript

	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2240d8c

.word 0x195 @ 0x2240d8c
.word BattleData_EndOfScript @ 0x2240d90



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd8: @ 2240d94 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r4, r0

	bl      GetMainBattleData_NrOfBattleTextPtrs
	mov     r5, r0

	mov     r0, r6
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r6
	bl      BeSeq_LoadWord
	cmp     r0, #0xc
	bhi     branch_2240dd8
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2240dbe

Jumppoints_2240dbe:
.hword branch_2240dd8 - Jumppoints_2240dbe - 2
.hword branch_2240dd8 - Jumppoints_2240dbe - 2
.hword branch_2240dd8 - Jumppoints_2240dbe - 2
.hword branch_2240e0a - Jumppoints_2240dbe - 2
.hword branch_2240e4a - Jumppoints_2240dbe - 2
.hword branch_2240dd8 - Jumppoints_2240dbe - 2
.hword branch_2240dd8 - Jumppoints_2240dbe - 2
.hword branch_2240dd8 - Jumppoints_2240dbe - 2
.hword branch_2240dd8 - Jumppoints_2240dbe - 2
.hword branch_2240e96 - Jumppoints_2240dbe - 2
.hword branch_2240ec2 - Jumppoints_2240dbe - 2
.hword branch_2240eee - Jumppoints_2240dbe - 2
.hword branch_2240f16 - Jumppoints_2240dbe - 2
.thumb
branch_2240dd8: @ 2240dd8 :thumb
	mov     r6, #0x0
	cmp     r5, #0x0
	ble     branch_2240e08
	mov     r7, #0x8
branch_2240de0: @ 2240de0 :thumb
	mov     r0, r4
	bl      LoadMainBattleData_2c
	tst     r0, r7
	bne     branch_2240dfa
	mov     r0, r4
	bl      LoadMainBattleData_2c
	mov     r1, #0x2
	tst     r0, r1
	beq     branch_2240dfa
	cmp     r6, #0x1
	bgt     branch_2240e08
.thumb
branch_2240dfa: @ 2240dfa :thumb
	mov     r0, r4
	mov     r1, r6
	bl      Function_226518c
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r5
	blt     branch_2240de0
.thumb
branch_2240e08: @ 2240e08 :thumb
	b       branch_2240f3c
@ 0x2240e0a

.thumb
branch_2240e0a: @ 2240e0a :thumb
	mov     r6, #0x0
	cmp     r5, #0x0
	ble     branch_2240e48
	mov     r7, #0x1
.thumb
branch_2240e12: @ 2240e12 :thumb
	mov     r0, r4
	mov     r1, r6
	bl      GetMainBattleData_BattleText
	ldr     r1, [pc, #0x124] @ 0x2240f40, (=0x195)
	ldrb    r0, [r0, r1]
	tst     r0, r7
	bne     branch_2240e42
	mov     r0, r4
	mov     r1, r6
	bl      Function_226518c
	mov     r0, r4
	bl      LoadMainBattleData_2c
	mov     r1, #0x8
	tst     r0, r1
	bne     branch_2240e42
	mov     r0, r4
	bl      LoadMainBattleData_2c
	mov     r1, #0x2
	tst     r0, r1
	bne     branch_2240f3c
.thumb
branch_2240e42: @ 2240e42 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r5
	blt     branch_2240e12
.thumb
branch_2240e48: @ 2240e48 :thumb
	b       branch_2240f3c
@ 0x2240e4a

.thumb
branch_2240e4a: @ 2240e4a :thumb
	mov     r6, #0x0
	cmp     r5, #0x0
	ble     branch_2240f3c
	mov     r7, #0x1
.thumb
branch_2240e52: @ 2240e52 :thumb
	mov     r0, r4
	mov     r1, r6
	bl      GetMainBattleData_BattleText
	ldr     r1, [pc, #0xe4] @ 0x2240f40, (=0x195)
	ldrb    r0, [r0, r1]
	tst     r0, r7
	beq     branch_2240e8e
	mov     r0, r4
	mov     r1, r6
	bl      Function_226518c
	mov     r0, r4
	bl      LoadMainBattleData_2c
	mov     r1, #0x8
	tst     r0, r1
	bne     branch_2240e8e
	mov     r0, r4
	bl      LoadMainBattleData_2c
	mov     r1, #0x10
	tst     r0, r1
	bne     branch_2240e8e
	mov     r0, r4
	bl      LoadMainBattleData_2c
	mov     r1, #0x2
	tst     r0, r1
	bne     branch_2240f3c
.thumb
branch_2240e8e: @ 2240e8e :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r5
	blt     branch_2240e52
	b       branch_2240f3c
@ 0x2240e96

.thumb
branch_2240e96: @ 2240e96 :thumb
	mov     r6, #0x0
	cmp     r5, #0x0
	ble     branch_2240f3c
	ldr     r7, [pc, #0xa0] @ 0x2240f40, (=0x195)
.thumb
branch_2240e9e: @ 2240e9e :thumb
	mov     r0, r4
	mov     r1, r6
	bl      GetMainBattleData_BattleText
	ldrb    r0, [r0, r7]
	cmp     r0, #0x0
	beq     branch_2240eb0
	cmp     r0, #0x2
	bne     branch_2240eba
.thumb
branch_2240eb0: @ 2240eb0 :thumb
	mov     r0, r4
	mov     r1, r6
	bl      Function_226518c
	b       branch_2240f3c
@ 0x2240eba

.thumb
branch_2240eba: @ 2240eba :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r5
	blt     branch_2240e9e
	b       branch_2240f3c
@ 0x2240ec2

.thumb
branch_2240ec2: @ 2240ec2 :thumb
	mov     r6, #0x0
	cmp     r5, #0x0
	ble     branch_2240f3c
	ldr     r7, [pc, #0x74] @ 0x2240f40, (=0x195)
.thumb
branch_2240eca: @ 2240eca :thumb
	mov     r0, r4
	mov     r1, r6
	bl      GetMainBattleData_BattleText
	ldrb    r0, [r0, r7]
	cmp     r0, #0x1
	beq     branch_2240edc
	cmp     r0, #0x3
	bne     branch_2240ee6
.thumb
branch_2240edc: @ 2240edc :thumb
	mov     r0, r4
	mov     r1, r6
	bl      Function_226518c
	b       branch_2240f3c
@ 0x2240ee6

.thumb
branch_2240ee6: @ 2240ee6 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r5
	blt     branch_2240eca
	b       branch_2240f3c
@ 0x2240eee

.thumb
branch_2240eee: @ 2240eee :thumb
	mov     r6, #0x0
	cmp     r5, #0x0
	ble     branch_2240f3c
	ldr     r7, [pc, #0x48] @ 0x2240f40, (=0x195)
.thumb
branch_2240ef6: @ 2240ef6 :thumb
	mov     r0, r4
	mov     r1, r6
	bl      GetMainBattleData_BattleText
	ldrb    r0, [r0, r7]
	cmp     r0, #0x4
	bne     branch_2240f0e
	mov     r0, r4
	mov     r1, r6
	bl      Function_226518c
	b       branch_2240f3c
@ 0x2240f0e

.thumb
branch_2240f0e: @ 2240f0e :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r5
	blt     branch_2240ef6
	b       branch_2240f3c
@ 0x2240f16

.thumb
branch_2240f16: @ 2240f16 :thumb
	mov     r6, #0x0
	cmp     r5, #0x0
	ble     branch_2240f3c
	ldr     r7, [pc, #0x20] @ 0x2240f40, (=0x195)
.thumb
branch_2240f1e: @ 2240f1e :thumb
	mov     r0, r4
	mov     r1, r6
	bl      GetMainBattleData_BattleText
	ldrb    r0, [r0, r7]
	cmp     r0, #0x5
	bne     branch_2240f36
	mov     r0, r4
	mov     r1, r6
	bl      Function_226518c
	b       branch_2240f3c
@ 0x2240f36

.thumb
branch_2240f36: @ 2240f36 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r5
	blt     branch_2240f1e
.thumb
branch_2240f3c: @ 2240f3c :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2240f40

.word 0x195 @ 0x2240f40



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd9: @ 2240f44 :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	mov     r4, r0

	bl      GetMainBattleData_NrOfBattleTextPtrs
	mov     r5, r0

	mov     r0, r7
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r7
	bl      BeSeq_LoadWord
	mov     r6, r0

	mov     r0, r7
	bl      BeSeq_LoadWord
	mov     r7, r0

	cmp     r6, #0xc
	bhi     branch_2240f92
	add     r0, r6, r6
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2240f78

Jumppoints_2240f78:
.hword branch_2240f92 - Jumppoints_2240f78 - 2
.hword branch_2240f92 - Jumppoints_2240f78 - 2
.hword branch_2240f92 - Jumppoints_2240f78 - 2
.hword branch_2240fba - Jumppoints_2240f78 - 2
.hword branch_2240ff0 - Jumppoints_2240f78 - 2
.hword branch_2240f92 - Jumppoints_2240f78 - 2
.hword branch_2240f92 - Jumppoints_2240f78 - 2
.hword branch_2240f92 - Jumppoints_2240f78 - 2
.hword branch_2240f92 - Jumppoints_2240f78 - 2
.hword branch_2241026 - Jumppoints_2240f78 - 2
.hword branch_2241054 - Jumppoints_2240f78 - 2
.hword branch_2241082 - Jumppoints_2240f78 - 2
.hword branch_22410ac - Jumppoints_2240f78 - 2
.thumb
branch_2240f92: @ 2240f92 :thumb
	mov     r6, #0x0
	cmp     r5, #0x0
	ble     branch_2240fb8
.thumb
branch_2240f98: @ 2240f98 :thumb
	mov     r0, r4
	bl      LoadMainBattleData_2c
	mov     r1, #0x2
	tst     r0, r1
	beq     branch_2240fa8
	cmp     r6, #0x1
	bgt     branch_2240fb8
.thumb
branch_2240fa8: @ 2240fa8 :thumb
	mov     r0, r4
	mov     r1, r6
	mov     r2, r7
	bl      Function_22651a8
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r5
	blt     branch_2240f98
.thumb
branch_2240fb8: @ 2240fb8 :thumb
	b       branch_22410d4
@ 0x2240fba

.thumb
branch_2240fba: @ 2240fba :thumb
	mov     r6, #0x0
	cmp     r5, #0x0
	ble     branch_2240fee
.thumb
branch_2240fc0: @ 2240fc0 :thumb
	mov     r0, r4
	mov     r1, r6
	bl      GetMainBattleData_BattleText
	ldr     r1, [pc, #0x10c] @ 0x22410d8, (=0x195)
	ldrb    r1, [r0, r1]
	mov     r0, #0x1
	tst     r0, r1
	bne     branch_2240fe8
	mov     r0, r4
	mov     r1, r6
	mov     r2, r7
	bl      Function_22651a8
	mov     r0, r4
	bl      LoadMainBattleData_2c
	mov     r1, #0x2
	tst     r0, r1
	bne     branch_22410d4
.thumb
branch_2240fe8: @ 2240fe8 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r5
	blt     branch_2240fc0
.thumb
branch_2240fee: @ 2240fee :thumb
	b       branch_22410d4
@ 0x2240ff0

.thumb
branch_2240ff0: @ 2240ff0 :thumb
	mov     r6, #0x0
	cmp     r5, #0x0
	ble     branch_22410d4
.thumb
branch_2240ff6: @ 2240ff6 :thumb
	mov     r0, r4
	mov     r1, r6
	bl      GetMainBattleData_BattleText
	ldr     r1, [pc, #0xd8] @ 0x22410d8, (=0x195)
	ldrb    r1, [r0, r1]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_224101e
	mov     r0, r4
	mov     r1, r6
	mov     r2, r7
	bl      Function_22651a8
	mov     r0, r4
	bl      LoadMainBattleData_2c
	mov     r1, #0x2
	tst     r0, r1
	bne     branch_22410d4
.thumb
branch_224101e: @ 224101e :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r5
	blt     branch_2240ff6
	b       branch_22410d4
@ 0x2241026

.thumb
branch_2241026: @ 2241026 :thumb
	mov     r6, #0x0
	cmp     r5, #0x0
	ble     branch_22410d4
.thumb
branch_224102c: @ 224102c :thumb
	mov     r0, r4
	mov     r1, r6
	bl      GetMainBattleData_BattleText
	ldr     r1, [pc, #0xa0] @ 0x22410d8, (=0x195)
	ldrb    r0, [r0, r1]
	cmp     r0, #0x0
	beq     branch_2241040
	cmp     r0, #0x2
	bne     branch_224104c
.thumb
branch_2241040: @ 2241040 :thumb
	mov     r0, r4
	mov     r1, r6
	mov     r2, r7
	bl      Function_22651a8
	b       branch_22410d4
@ 0x224104c

.thumb
branch_224104c: @ 224104c :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r5
	blt     branch_224102c
	b       branch_22410d4
@ 0x2241054

.thumb
branch_2241054: @ 2241054 :thumb
	mov     r6, #0x0
	cmp     r5, #0x0
	ble     branch_22410d4
.thumb
branch_224105a: @ 224105a :thumb
	mov     r0, r4
	mov     r1, r6
	bl      GetMainBattleData_BattleText
	ldr     r1, [pc, #0x74] @ 0x22410d8, (=0x195)
	ldrb    r0, [r0, r1]
	cmp     r0, #0x1
	beq     branch_224106e
	cmp     r0, #0x3
	bne     branch_224107a
.thumb
branch_224106e: @ 224106e :thumb
	mov     r0, r4
	mov     r1, r6
	mov     r2, r7
	bl      Function_22651a8
	b       branch_22410d4
@ 0x224107a

.thumb
branch_224107a: @ 224107a :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r5
	blt     branch_224105a
	b       branch_22410d4
@ 0x2241082

.thumb
branch_2241082: @ 2241082 :thumb
	mov     r6, #0x0
	cmp     r5, #0x0
	ble     branch_22410d4
.thumb
branch_2241088: @ 2241088 :thumb
	mov     r0, r4
	mov     r1, r6
	bl      GetMainBattleData_BattleText
	ldr     r1, [pc, #0x44] @ 0x22410d8, (=0x195)
	ldrb    r0, [r0, r1]
	cmp     r0, #0x4
	bne     branch_22410a4
	mov     r0, r4
	mov     r1, r6
	mov     r2, r7
	bl      Function_22651a8
	b       branch_22410d4
@ 0x22410a4

.thumb
branch_22410a4: @ 22410a4 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r5
	blt     branch_2241088
	b       branch_22410d4
@ 0x22410ac

.thumb
branch_22410ac: @ 22410ac :thumb
	mov     r6, #0x0
	cmp     r5, #0x0
	ble     branch_22410d4
.thumb
branch_22410b2: @ 22410b2 :thumb
	mov     r0, r4
	mov     r1, r6
	bl      GetMainBattleData_BattleText
	ldr     r1, [pc, #0x1c] @ 0x22410d8, (=0x195)
	ldrb    r0, [r0, r1]
	cmp     r0, #0x5
	bne     branch_22410ce
	mov     r0, r4
	mov     r1, r6
	mov     r2, r7
	bl      Function_22651a8
	b       branch_22410d4
@ 0x22410ce

.thumb
branch_22410ce: @ 22410ce :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r5
	blt     branch_22410b2
.thumb
branch_22410d4: @ 22410d4 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22410d8

.word 0x195 @ 0x22410d8



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmda: @ 22410dc :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r6, r0

	bl      GetMainBattleData_NrOfBattleTextPtrs
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r4, #0x0
	cmp     r5, #0x0
	ble     branch_2241104
branch_22410f6: @ 22410f6 :thumb
	mov     r0, r6
	mov     r1, r4
	bl      Function_2266460
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r5
	blt     branch_22410f6
branch_2241104: @ 2241104 :thumb

	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2241108


/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmdb: @ 2241108 :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	mov     r4, r0

	bl      GetMainBattleData_NrOfBattleTextPtrs
	mov     r6, r0

	mov     r0, r7
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r7
	bl      BeSeq_LoadWord
	mov     r2, r0
	beq     branch_2241130
	cmp     r2, #0x3
	beq     branch_224114a
	cmp     r2, #0x4
	beq     branch_2241176
	b       branch_22411a2

branch_2241130: @ 2241130 :thumb
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_22411b6
branch_2241136: @ 2241136 :thumb
	mov     r0, r4
	mov     r1, r7
	mov     r2, r5
	mov     r3, #0x0
	bl      Function_22651dc
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r6
	blt     branch_2241136
	b       branch_22411b6

branch_224114a: @ 224114a :thumb
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_22411b6
branch_2241150: @ 2241150 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      GetMainBattleData_BattleText
	ldr     r1, [pc, #0x60] @ 0x22411bc, (=0x195)
	ldrb    r1, [r0, r1]
	mov     r0, #0x1
	tst     r0, r1
	bne     branch_224116e
	mov     r0, r4
	mov     r1, r7
	mov     r2, r5
	mov     r3, #0x0
	bl      Function_22651dc
branch_224116e: @ 224116e :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r6
	blt     branch_2241150
	b       branch_22411b6

branch_2241176: @ 2241176 :thumb
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_22411b6
branch_224117c: @ 224117c :thumb
	mov     r0, r4
	mov     r1, r5
	bl      GetMainBattleData_BattleText
	ldr     r1, [pc, #0x34] @ 0x22411bc, (=0x195)
	ldrb    r1, [r0, r1]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_224119a
	mov     r0, r4
	mov     r1, r7
	mov     r2, r5
	mov     r3, #0x0
	bl      Function_22651dc
branch_224119a: @ 224119a :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r6
	blt     branch_224117c
	b       branch_22411b6

branch_22411a2: @ 22411a2 :thumb
	mov     r0, r4
	mov     r1, r7
	bl      GetTargetNrOfPkmn
	mov     r2, r0
	mov     r0, r4
	mov     r1, r7
	mov     r3, #0x0
	bl      Function_22651dc
branch_22411b6: @ 22411b6 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22411ba

.align 2
.word 0x195 @ 0x22411bc



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmdc: @ 22411c0 :thumb
	push    {r3-r7,lr}
	str     r1, [sp, #0x0]
	mov     r5, r0

	bl      GetMainBattleData_NrOfBattleTextPtrs
	mov     r7, r0

	ldr     r0, [sp, #0x0]
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	ldr     r0, [sp, #0x0]
	bl      BeSeq_LoadWord
	mov     r2, r0
	ldr     r4, [pc, #0xa0] @ 0x2241280, (=0x0)
	beq     branch_22411ea
	cmp     r2, #0x3
	beq     branch_2241204
	cmp     r2, #0x4
	beq     branch_2241236
	b       branch_2241268

branch_22411ea: @ 22411ea :thumb
	cmp     r7, #0x0
	ble     branch_224127c
	mov     r6, r4
branch_22411f0: @ 22411f0 :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	mov     r2, r4
	mov     r3, r6
	bl      Function_22651dc
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r7
	blt     branch_22411f0
	b       branch_224127c

branch_2241204: @ 2241204 :thumb
	mov     r6, r4
	cmp     r7, #0x0
	ble     branch_224127c
branch_224120a: @ 224120a :thumb
	mov     r0, r5
	mov     r1, r6
	bl      GetMainBattleData_BattleText
	ldr     r1, [pc, #0x70] @ 0x2241284, (=0x195)
	ldrb    r1, [r0, r1]
	mov     r0, #0x1
	tst     r0, r1
	bne     branch_224122e
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	mov     r2, r6
	mov     r3, r4
	bl      Function_22651dc
	add     r0, r4, #0x4
	lsl     r0, r0, #24
	lsr     r4, r0, #24
branch_224122e: @ 224122e :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r7
	blt     branch_224120a
	b       branch_224127c

branch_2241236: @ 2241236 :thumb
	mov     r6, r4
	cmp     r7, #0x0
	ble     branch_224127c
branch_224123c: @ 224123c :thumb
	mov     r0, r5
	mov     r1, r6
	bl      GetMainBattleData_BattleText
	ldr     r1, [pc, #0x3c] @ 0x2241284, (=0x195)
	ldrb    r1, [r0, r1]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_2241260
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	mov     r2, r6
	mov     r3, r4
	bl      Function_22651dc
	add     r0, r4, #0x4
	lsl     r0, r0, #24
	lsr     r4, r0, #24
branch_2241260: @ 2241260 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r7
	blt     branch_224123c
	b       branch_224127c

branch_2241268: @ 2241268 :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	bl      GetTargetNrOfPkmn
	mov     r2, r0
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	mov     r3, r4
	bl      Function_22651dc
branch_224127c: @ 224127c :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2241280

.word 0x0 @ 0x2241280
.word 0x195 @ 0x2241284



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmdd: @ 2241288 :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	mov     r4, r0

	bl      GetMainBattleData_NrOfBattleTextPtrs
	mov     r6, r0

	mov     r0, r7
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r7
	bl      BeSeq_LoadWord
	mov     r2, r0
	beq     branch_22412b0
	cmp     r2, #0x3
	beq     branch_22412c6
	cmp     r2, #0x4
	beq     branch_22412fc
	b       branch_2241324

branch_22412b0: @ 22412b0 :thumb
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_2241334

branch_22412b6: @ 22412b6 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_2265314
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r6
	blt     branch_22412b6
	b       branch_2241334

branch_22412c6: @ 22412c6 :thumb
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_2241334

branch_22412cc: @ 22412cc :thumb
	mov     r0, r4
	mov     r1, r5
	bl      GetMainBattleData_BattleText
	ldr     r1, [pc, #0x60] @ 0x2241338, (=0x195)
	ldrb    r1, [r0, r1]
	mov     r0, #0x1
	tst     r0, r1
	bne     branch_22412f4

	mov     r0, r5
	bl      Function_20787cc
	ldr     r1, [pc, #0x54] @ 0x224133c, (=BattleData_3108)
	ldrb    r1, [r7, r1]
	tst     r0, r1
	bne     branch_22412f4

	mov     r0, r4
	mov     r1, r5
	bl      Function_2265314

branch_22412f4: @ 22412f4 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r6
	blt     branch_22412cc
	b       branch_2241334

branch_22412fc: @ 22412fc :thumb
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_2241334

	mov     r7, #0x1
branch_2241304: @ 2241304 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      GetMainBattleData_BattleText
	ldr     r1, [pc, #0x28] @ 0x2241338, (=0x195)
	ldrb    r0, [r0, r1]
	tst     r0, r7
	beq     branch_224131c
	mov     r0, r4
	mov     r1, r5
	bl      Function_2265314
branch_224131c: @ 224131c :thumb

	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r6
	blt     branch_2241304
	b       branch_2241334

branch_2241324: @ 2241324 :thumb
	mov     r0, r4
	mov     r1, r7
	bl      GetTargetNrOfPkmn
	mov     r1, r0
	mov     r0, r4
	bl      Function_2265314
branch_2241334: @ 2241334 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2241338

.word 0x195 @ 0x2241338
.word BattleData_3108 @ 0x224133c



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmde: @ 2241340 :thumb todo
	push    {r4,lr}
	mov     r4, r1

	mov     r0, r4
	bl      Function_2251fc8
	cmp     r0, #0x0
	beq     branch_2241358

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer
	b       branch_224135e

branch_2241358: @ 2241358 :thumb
	mov     r0, r4
	bl      Function_225201c
branch_224135e: @ 224135e :thumb
	ldr     r1, =BattleData_EndOfScript
	mov     r0, #BattleData_EndOfScript_1
	ldr     r2, [r4, r1] @ BattleData_EndOfScript
	bic     r2, r0
	mov     r0, #BattleData_EndOfScript_1
	orr     r0, r2
	str     r0, [r4, r1] @ BattleData_EndOfScript

	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2241370

.align 2
.pool



/* Input:
r0: MainBattleData
r1: BattleData
*/
thumb_func_start HandleTheDamage
HandleTheDamage: @ 2241374 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r1
	ldr     r1, [r5, #BattleData_NrOfPkmn]
	mov     r7, r0
	mov     r0, r5
	bl      GetAbilityOfPkmnConsideringMultitypeWeatherLevitate
	cmp     r0, #NORMALIZE
	bne     branch_224138c

	mov     r4, #0x0
	b       branch_22413a0

branch_224138c: @ 224138c :thumb
	ldr     r0, [pc, #0x130] @ 0x22414c0, (=BattleData_2160)
	ldr     r4, [r5, r0]
	cmp     r4, #0x0
	bne     branch_22413a0
	ldr     r0, [pc, #0x12c] @ 0x22414c4, (=BattleData_WazaSeqFileNr)
	ldr     r0, [r5, r0]
	lsl     r0, r0, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0x128] @ 0x22414c8, (=BattleData_3e2)
	ldrb    r4, [r1, r0]
branch_22413a0: @ 22413a0 :thumb

	ldr     r0, [r5, #BattleData_TargetPkmn]
	str     r0, [sp, #0x18]

	ldr     r1, [sp, #0x18]
	mov     r0, r7
	bl      Function_16_223e208
	mov     r3, #0x6
	lsl     r3, r3, #6
	mov     r6, r0
	ldr     r0, [r5, r3]
	ldr     r1, [pc, #0x114] @ 0x22414cc, (=BattleData_2154)
	str     r0, [sp, #0x0]
	ldr     r0, [r5, r1]
	ldr     r2, [pc, #0x108] @ 0x22414c4, (=BattleData_WazaSeqFileNr)
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x4]
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]

	ldr     r0, [r5, #BattleData_NrOfPkmn]
	lsl     r4, r6, #2
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x18]
	add     r4, r5, r4
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x10]
	sub     r0, r1, #0x4
	ldr     r0, [r5, r0]
	add     r3, #0x3c
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x14]
	ldr     r2, [r5, r2] @ BattleData_WazaSeqFileNr
	ldr     r3, [r4, r3]
	mov     r0, r7
	mov     r1, r5
	bl      CalculateDamage
	ldr     r1, [pc, #0xd8] @ 0x22414d0, (=BattleData_Damage)
	str     r0, [r5, r1]

	mov     r0, r1
	add     r0, #BattleData_DamageMultiplier - BattleData_Damage
	ldr     r2, [r5, r1]
	ldr     r0, [r5, r0] @ BattleData_DamageMultiplier
	mul     r0, r2
	str     r0, [r5, r1]

	ldr     r1, [r5, #BattleData_NrOfPkmn]
	mov     r0, r5
	bl      Function_16_2258ab8
	cmp     r0, #MAGIC_GUARD
	bne     branch_224142c

	ldr     r1, [r5, #BattleData_NrOfPkmn]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_2258acc
	ldr     r1, [pc, #0xb4] @ 0x22414d0, (=BattleData_Damage)
	add     r0, #100
	ldr     r1, [r5, r1]
	mul     r0, r1
	mov     r1, #100
	blx     _s32_div_f
	ldr     r1, [pc, #0xa4] @ 0x22414d0, (=BattleData_Damage)
	str     r0, [r5, r1]

branch_224142c: @ 224142c :thumb
	ldr     r1, [r5, #BattleData_NrOfPkmn]
	mov     r0, r5
	bl      Function_16_2258ab8
	cmp     r0, #SUPER_LUCK
	bne     branch_224145a

	ldr     r0, [pc, #0x94] @ 0x22414d0, (=BattleData_Damage)
	ldr     r2, [r5, #BattleData_NrOfPkmn]
	ldr     r1, [r5, r0] @ BattleData_Damage
	mov     r0, #PkmnBattleData_Size
	mul     r0, r2
	add     r2, r5, r0
	ldr     r0, [pc, #0x8c] @ 0x22414d4, (=BattleData_2dcc)
	ldr     r0, [r2, r0] @ BattleData_2dcc
	lsl     r0, r0, #5
	lsr     r0, r0, #28
	add     r0, #10
	mul     r0, r1
	mov     r1, #10
	blx     _u32_div_f
	ldr     r1, [pc, #0x78] @ 0x22414d0, (=BattleData_Damage)
	str     r0, [r5, r1] @ BattleData_Damage

branch_224145a: @ 224145a :thumb
	ldr     r2, [r5, #BattleData_NrOfPkmn]
	mov     r1, #PkmnBattleData_Size
	mov     r0, r2
	mul     r0, r1
	ldr     r2, [pc, #0x70] @ 0x22414d4, (=BattleData_2dcc)
	add     r3, r5, r0
	ldr     r3, [r3, r2] @ BattleData_2dcc
	lsl     r3, r3, #1
	lsr     r3, r3, #31
	beq     branch_22414ba

	add     r2, #0x10
	add     r3, r5, r2
	add     r1, #BattleData_174 - PkmnBattleData_Size
	ldr     r2, [r5, r1] @ BattleData_174
	ldr     r1, [r3, r0]
	cmp     r2, r1
	bne     branch_2241480
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r3, r0]
branch_2241480: @ 2241480 :thumb

	ldr     r2, [r5, #BattleData_NrOfPkmn]
	mov     r1, #PkmnBattleData_Size
	mov     r0, r2
	mul     r0, r1
	add     r1, #BattleData_2df4 - BattleData_BaseAdr
	ldr     r3, [r5, r1]
	ldr     r1, [pc, #0x48] @ 0x22414d8, (=BattleData_2ddc)
	add     r2, r5, r0
	ldr     r2, [r2, r1]
	sub     r2, r3, r2
	cmp     r2, #0x2
	bge     branch_22414ae

	ldr     r0, [pc, #0x34] @ 0x22414d0, (=BattleData_Damage)
	ldr     r1, [r5, r0]
	mov     r0, #15
	mul     r0, r1
	mov     r1, #10
	blx     _s32_div_f
	ldr     r1, [pc, #0x28] @ 0x22414d0, (=BattleData_Damage)
	add     sp, #0x1c
	str     r0, [r5, r1]
	pop     {r4-r7,pc}

branch_22414ae: @ 22414ae :thumb
	sub     r1, #0x10
	add     r3, r5, r1
	ldr     r2, [r3, r0]
	ldr     r1, [pc, #0x24] @ 0x22414dc, (=0xbfffffff)
	and     r1, r2
	str     r1, [r3, r0]
branch_22414ba: @ 22414ba :thumb
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x22414be

.align 2
.word BattleData_2160 @ 0x22414c0
.word BattleData_WazaSeqFileNr @ 0x22414c4
.word BattleData_3e2 @ 0x22414c8
.word BattleData_2154 @ 0x22414cc
.word BattleData_Damage @ 0x22414d0
.word BattleData_2dcc @ 0x22414d4
.word BattleData_2ddc @ 0x22414d8
.word 0xbfffffff @ 0x22414dc
thumb_func_end HandleTheDamage



/* Input:
r0: MainBattleData
r1: BattleData
*/
thumb_func_start BeSeq_Cmdf
BeSeq_Cmdf: @ 22414e0 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	mov     r1, r4
	bl      HandleTheDamage

	ldr     r2, =BattleData_Damage
	mov     r0, r5
	ldr     r2, [r4, r2]  @ BattleData_Damage
	mov     r1, r4
	bl      Function_225aeb8
	ldr     r1, =BattleData_Damage
	str     r0, [r4, r1] @ BattleData_Damage

	mov     r0, #0x0
	ldr     r2, [r4, r1] @ BattleData_Damage
	mvn     r0, r0
	mul     r0, r2
	str     r0, [r4, r1] @ BattleData_Damage

	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2241514

.align 2
.pool
thumb_func_end BeSeq_Cmdf



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd10: @ 2241518 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	mov     r1, r4
	bl      HandleTheDamage
	ldr     r1, =BattleData_Damage
	mov     r0, #0x0
	ldr     r2, [r4, r1] @ BattleData_Damage
	mvn     r0, r0
	mul     r0, r2
	str     r0, [r4, r1] @ BattleData_Damage

	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224153e

.align 2
.pool



/* Input:
r0: MainBattleData
r1: BattleData
*/
thumb_func_start BeSeq_Cmd11
BeSeq_Cmd11: @ 2241544 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	ldr     r0, =BattleData_213c
	ldr     r1, [r4, r0] @ BattleData_213c
	mov     r0, #BattleData_213c_1
	tst     r0, r1
	bne     branch_2241564
	mov     r0, r5
	mov     r1, r4
	bl      Function_2265b68
branch_2241564: @ 2241564 :thumb

	ldr     r1, =BattleData_213c
	mov     r0, #BattleData_213c_1
	ldr     r2, [r4, r1] @ BattleData_213c
	orr     r0, r2
	str     r0, [r4, r1] @ BattleData_213c

	add     r0, r1, #BattleData_2140 - BattleData_213c
	ldr     r2, [r4, r0] @ BattleData_2140
	mov     r0, #BattleData_2140_4
	orr     r2, r0
	add     r0, r1, #BattleData_2140 - BattleData_213c
	str     r2, [r4, r0] @ BattleData_2140

	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224157e

.align 2
.pool
thumb_func_end BeSeq_Cmd11



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd12: @ 2241584 :thumb todo calls subcmds/effects
	push    {r4,r5,lr}
	add     sp, #-0x44
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4 @ BattleData
	add     r1, sp, #0x24
	bl      BeSeq_LoadWords

	mov     r0, r5 @ MainBattleData
	mov     r1, r4 @ BattleData
	add     r2, sp, #0x24 @ Ptr to loaded Words
	add     r3, sp, #0x0 @ BattleSeqCmdStruct
	bl      Function_224acb8

	mov     r0, r5 @ MainBattleData
	mov     r1, r4 @ BattleData
	add     r2, sp, #0x0 @ BattleSeqCmdStruct
	bl      Function_2265ba0

	mov     r0, #0x0
	add     sp, #0x44
	pop     {r4,r5,pc}
@ 0x22415b8


/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd13: @ 22415b8 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x44
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	add     r1, sp, #0x24
	bl      BeSeq_LoadWords

	mov     r0, r5
	mov     r1, r4
	add     r2, sp, #0x24
	add     r3, sp, #0x0
	bl      Function_224acb8
	add     r1, sp, #0x0
	ldrb    r2, [r1, #0x1]
	mov     r0, #0x80
	orr     r0, r2
	strb    r0, [r1, #0x1]
	mov     r0, r5
	mov     r1, r4
	add     r2, sp, #0x0
	bl      Function_2265ba0
	mov     r0, #0x0
	add     sp, #0x44
	pop     {r4,r5,pc}
@ 0x22415f6


/* Input:
r0: MainBattleData
r1: BattleData
*/
.align 2, 0
.thumb
BeSeq_Cmd14: @ 22415f8 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r1, r4
	add     r4, #BattleData_f4
	mov     r0, r5
	mov     r2, r4
	bl      Function_2265ba0
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2241616


/* Input:
r0: MainBattleData
r1: BattleData
*/
.align 2, 0
.thumb
BeSeq_Cmd15: @ 2241618 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x20
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	add     r1, sp, #0x0
	bl      BeSeq_LoadWords

	mov     r1, r4
	add     r4, #0xf4
	mov     r0, r5
	add     r2, sp, #0x0
	mov     r3, r4
	bl      Function_224acb8

	mov     r0, #0x0
	add     sp, #0x20
	pop     {r3-r5,pc}
@ 0x2241644


/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd16: @ 2241644 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x44
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r6, r0

	mov     r0, r4
	add     r1, sp, #0x24
	bl      BeSeq_LoadWords
	mov     r0, r5
	mov     r1, r4
	add     r2, sp, #0x24
	add     r3, sp, #0x0
	bl      Function_224acb8
	add     r1, sp, #0x0
	ldrb    r2, [r1, #0x1]
	mov     r0, #0x40
	orr     r0, r2
	strb    r0, [r1, #0x1]
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      GetTargetNrOfPkmn
	str     r0, [sp, #0x20]
	mov     r0, r5
	mov     r1, r4
	add     r2, sp, #0x0
	bl      Function_2265ba0
	mov     r0, #0x0
	add     sp, #0x44
	pop     {r3-r6,pc}
@ 0x2241696


/* Input:
r0: MainBattleData
r1: BattleData
*/
.align 2, 0
.thumb
BeSeq_Cmd17: @ 2241698 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r6, r0

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      BeSeq_LoadWord
	cmp     r0, #0xff
	bne     branch_22416b6
	mov     r0, #BattleData_124/4
	lsl     r0, r0, #2
	b       branch_22416b8

branch_22416b6: @ 22416b6 :thumb
	ldr     r0, [pc, #0x50] @ 0x2241708, (=BattleData_WazaSeqFileNr)
branch_22416b8: @ 22416b8 :thumb
	ldr     r0, [r5, r0] @ BattleData_124 or BattleData_WazaSeqFileNr
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	ldr     r0, [pc, #0x4c] @ 0x224170c, (=BattleData_213c)
	ldr     r1, [r5, r0] @ BattleData_213c
	mov     r0, #0x1
	lsl     r0, r0, #14 @ BattleData_213c_4000
	tst     r0, r1
	bne     branch_22416d4

	mov     r0, r6
	bl      Function_223edac
	cmp     r0, #0x1
	beq     branch_22416d8

branch_22416d4: @ 22416d4 :thumb
	cmp     r4, #0x90
	bne     branch_22416ee

branch_22416d8: @ 22416d8 :thumb
	ldr     r1, [pc, #0x30] @ 0x224170c, (=BattleData_213c)
	mov     r0, #0x1
	ldr     r2, [r5, r1] @ BattleData_213c
	lsl     r0, r0, #14 @ BattleData_213c_4000
	orr     r0, r2
	str     r0, [r5, r1] @ BattleData_213c
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	bl      Function_2265bbc
branch_22416ee: @ 22416ee :thumb
	mov     r0, r6
	bl      Function_223edac
	cmp     r0, #0x0
	bne     branch_2241702

	ldr     r2, [pc, #0x14] @ 0x2241710, (=0x123)
	mov     r0, r5
	mov     r1, #SubSeq_Narc
	bl      Call_Call_LoadFromNARC_AddNewSeqScript
branch_2241702: @ 2241702 :thumb

	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2241706

.align 2
.word BattleData_WazaSeqFileNr @ 0x2241708
.word BattleData_213c @ 0x224170c
.word 0x123 @ 0x2241710



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd18: @ 2241714 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r6, r0

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r7, r0

	mov     r0, r4
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x8]

	cmp     r6, #0xff
	bne     branch_2241746

	mov     r0, #BattleData_124/4
	lsl     r0, r0, #2
	b       branch_2241748

branch_2241746: @ 2241746 :thumb
	ldr     r0, [pc, #0x6c] @ 0x22417b4, (=BattleData_WazaSeqFileNr)
branch_2241748: @ 2241748 :thumb
	ldr     r0, [r4, r0] @ BattleData_124 or BattleData_WazaSeqFileNr
	mov     r1, r4
	lsl     r0, r0, #16
	lsr     r6, r0, #16
	mov     r0, r5
	mov     r2, r7
	bl      GetTargetNrOfPkmn
	str     r0, [sp, #0x4]
	ldr     r2, [sp, #0x8]
	mov     r0, r5
	mov     r1, r4
	bl      GetTargetNrOfPkmn
	mov     r7, r0
	ldr     r0, [pc, #0x50] @ 0x22417b8, (=BattleData_213c)
	ldr     r1, [r4, r0]
	mov     r0, #0x1
	lsl     r0, r0, #14
	tst     r0, r1
	bne     branch_224177c
	mov     r0, r5
	bl      Function_223edac
	cmp     r0, #0x1
	beq     branch_2241780
branch_224177c: @ 224177c :thumb
	cmp     r6, #0x90
	bne     branch_224179a
branch_2241780: @ 2241780 :thumb
	ldr     r1, [pc, #0x34] @ 0x22417b8, (=BattleData_213c)
	mov     r0, #0x1
	ldr     r2, [r4, r1]
	lsl     r0, r0, #14
	orr     r0, r2
	str     r0, [r4, r1]
	ldr     r3, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	str     r7, [sp, #0x0]
	bl      Function_2265bec
branch_224179a: @ 224179a :thumb
	mov     r0, r5
	bl      Function_223edac
	cmp     r0, #0x0
	bne     branch_22417ae
	ldr     r2, [pc, #0x14] @ 0x22417bc, (=0x123)
	mov     r0, r4
	mov     r1, #SubSeq_Narc
	bl      Call_Call_LoadFromNARC_AddNewSeqScript
branch_22417ae: @ 22417ae :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x22417b4

.word BattleData_WazaSeqFileNr @ 0x22417b4
.word BattleData_213c @ 0x22417b8
.word 0x123 @ 0x22417bc



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd19: @ 22417c0 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      GetTargetNrOfPkmn
	ldr     r2, [pc, #0x10] @ 0x22417f0, (=BattleData_216c)
	mov     r1, r0
	ldr     r2, [r4, r2]
	mov     r0, r5
	bl      Function_2265c1c
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22417ee

.align 2
.word BattleData_216c @ 0x22417f0



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd1a: @ 22417f4 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	str     r0, [sp, #0x0]

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r2, r0
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      GetTargetNrOfPkmn
	mov     r2, r0
	ldr     r0, [pc, #0x70] @ 0x2241888, (=BattleData_CurHP)
	mov     r7, r2
	add     r5, r4, r0
	mov     r0, #0xc0
	mul     r7, r0
	ldr     r0, [pc, #0x6c] @ 0x224188c, (=BattleData_StatusEffectDamage)
	ldr     r6, [r5, r7]
	ldr     r3, [r4, r0]
	add     r1, r3, r6
	cmp     r1, #0x0
	bgt     branch_2241832
	neg     r1, r6
	sub     r0, #0x14
	str     r1, [r4, r0]
	b       branch_2241836

branch_2241832: @ 2241832 :thumb
	sub     r0, #0x14
	str     r3, [r4, r0]
branch_2241836: @ 2241836 :thumb
	ldr     r0, [pc, #0x58] @ 0x2241890, (=BattleData_2148)
	ldr     r6, [r4, r0]
	cmp     r6, #0x0
	bge     branch_224184c
	mov     r0, #0x59
	lsl     r0, r0, #2
	add     r3, r4, r0
	lsl     r1, r2, #2
	ldr     r0, [r3, r1]
	sub     r0, r0, r6
	str     r0, [r3, r1]
branch_224184c: @ 224184c :thumb
	mov     r0, #0xc0
	mov     r3, r2
	mul     r3, r0
	ldr     r0, [pc, #0x34] @ 0x2241888, (=BattleData_CurHP)
	ldr     r6, [pc, #0x34] @ 0x224188c, (=BattleData_StatusEffectDamage)
	add     r1, r4, r0
	ldr     r0, [r1, r3]
	ldr     r6, [r4, r6]
	add     r0, r0, r6
	str     r0, [r1, r3]
	ldr     r1, [r1, r3]
	cmp     r1, #0x0
	bge     branch_224186c
	mov     r0, #0x0
	str     r0, [r5, r7]
	b       branch_224187a
@ 0x224186c

.thumb
branch_224186c: @ 224186c :thumb
	add     r0, r4, r3
	ldr     r3, [pc, #0x18] @ 0x2241888, (=BattleData_CurHP)
	.hword  0x1d1b @ add r3, r3, #0x4
	ldr     r0, [r0, r3]
	cmp     r1, r0
	bls     branch_224187a
	str     r0, [r5, r7]
.thumb
branch_224187a: @ 224187a :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_2253ec0
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2241886

.align 2
.word BattleData_CurHP @ 0x2241888
.word BattleData_StatusEffectDamage @ 0x224188c
.word BattleData_2148 @ 0x2241890



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd1b: @ 2241894 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord

	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      GetTargetNrOfPkmn

	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_2265c38

	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22418c0


/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd1c: @ 22418c0 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r6, r0

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      BeSeq_LoadWord

	mov     r2, r0
	mov     r0, r6
	mov     r1, r5
	bl      GetTargetNrOfPkmn
	mov     r4, r0

	mov     r1, #0xc0
	mul     r1, r4
	add     r2, r5, r1
	ldr     r1, [pc, #0x34] @ 0x224191c, (=BattleData_CurHP)
	ldr     r1, [r2, r1]
	cmp     r1, #0x0
	bne     branch_2241916
	str     r4, [r5, #0x74]
	bl      Function_20787cc
	ldr     r1, [pc, #0x28] @ 0x2241920, (=BattleData_213c)
	lsl     r0, r0, #24
	ldr     r2, [r5, r1]
	orr     r0, r2
	str     r0, [r5, r1]
	mov     r0, #0x55
	lsl     r0, r0, #2
	add     r2, r5, r0
	lsl     r1, r4, #2
	ldr     r0, [r2, r1]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r2, r1]
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	bl      Function_224b850
branch_2241916: @ 2241916 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x224191a

.align 2
.word BattleData_CurHP @ 0x224191c
.word BattleData_213c @ 0x2241920



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd1d: @ 2241924 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	ldr     r2, [r4, #BattleData_74]
	mov     r0, r5
	mov     r1, r4
	bl      Function_2265d98

	ldr     r0, [r4, #BattleData_74]
	bl      Function_20787cc
	ldr     r2, =BattleData_213c
	lsl     r3, r0, #24
	mov     r0, #0x0
	mvn     r0, r0
	ldr     r1, [r4, r2]
	eor     r0, r3
	and     r0, r1
	str     r0, [r4, r2]
	ldr     r0, [r4, #BattleData_74]
	bl      Function_20787cc
	mov     r1, #BattleData_2140/64
	lsl     r1, r1, #6
	ldr     r2, [r4, r1] @ BattleData_2140
	lsl     r0, r0, #28
	orr     r0, r2
	str     r0, [r4, r1]
	ldr     r0, [r4, #BattleData_74]
	mov     r2, #0x27
	lsl     r0, r0, #4
	add     r0, r4, r0
	add     r1, #0x68
	str     r2, [r0, r1]
	ldr     r2, [r4, #BattleData_74]
	mov     r0, r5
	mov     r1, r4
	bl      Function_2254744

	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224197e

.align 2
.pool



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd1e: @ 2241984 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r4, r0

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r6, r0

	mov     r0, r4
	bl      LoadMainBattleData_2c
	mov     r1, #MainBattleData_2c_4
	tst     r0, r1
	bne     branch_22419be

	ldr     r0, =RAM_21bf67c
	ldr     r1, [r0, #RAM_21bf67c_48_KeyNewPressed2]
	ldr     r0, =KEY_A|KEY_B|KEY_X|KEY_Y
	tst     r0, r1
	bne     branch_22419b8

	bl      Function_2022798
	cmp     r0, #0x0
	beq     branch_22419be

branch_22419b8: @ 22419b8 :thumb
	mov     r0, r5
	add     r0, #BattleData_f0
	str     r6, [r0] @ BattleData_f0
branch_22419be: @ 22419be :thumb
	ldr     r1, [r4, #MainBattleData_2c]
	mov     r0, #MainBattleData_2c_4
	tst     r0, r1
	beq     branch_22419d4

	ldr     r0, =MainBattleData_240c
	ldr     r1, [r4, r0] @ MainBattleData_240c
	mov     r0, #MainBattleData_240c_10
	tst     r0, r1
	bne     branch_22419d4

	mov     r4, #0x2
	b       branch_22419d6

branch_22419d4: @ 22419d4 :thumb
	mov     r4, #0x1
branch_22419d6: @ 22419d6 :thumb
	mov     r0, r5
	add     r0, #BattleData_f0
	ldr     r0, [r0] @ BattleData_f0
	cmp     r6, r0
	ble     branch_22419f4

	mov     r1, #0x1
	mov     r0, r5
	mvn     r1, r1 @ -1
	bl      BeSeq_AddToPointer
	mov     r0, r5
	add     r0, #BattleData_f0
	ldr     r0, [r0] @ BattleData_f0
	add     r1, r0, r4
	b       branch_22419f6

branch_22419f4: @ 22419f4 :thumb
	mov     r1, #0x0
branch_22419f6: @ 22419f6 :thumb
	mov     r0, r5
	add     r0, #BattleData_f0
	str     r1, [r0] @ BattleData_f0
	ldr     r1, =BattleData_EndOfScript
	mov     r0, #BattleData_EndOfScript_1
	ldr     r2, [r5, r1] @ BattleData_EndOfScript
	bic     r2, r0
	mov     r0, #BattleData_EndOfScript_1
	orr     r0, r2
	str     r0, [r5, r1] @ BattleData_EndOfScript

	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2241a0e

.align 2
.pool



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd1f: @ 2241a20 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r6, r0

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r7, r0

	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      GetTargetNrOfPkmn
	mov     r3, r0
	mov     r0, r5
	mov     r1, r4
	mov     r2, r7
	bl      Function_2265eac

	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2241a58


thumb_func_start BeSeq_JumpIf
BeSeq_JumpIf: @ 2241a58 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r1
	str     r0, [sp, #0x0]

	mov     r0, r6
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r6
	bl      BeSeq_LoadWord
	mov     r7, r0

	mov     r0, r6
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x4]

	mov     r0, r6
	bl      BeSeq_LoadWord
	mov     r4, r0

	mov     r0, r6
	bl      BeSeq_LoadWord
	mov     r5, r0

	ldr     r0, [sp, #0x0]
	ldr     r2, [sp, #0x4]
	mov     r1, r6
	bl      BeSeq_GetVariableAdress

	cmp     r7, #0x6
	bhi     branch_Cmd20_JumpDecision
	add     r1, r7, r7
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1

Jumppoints_2241aa2:
.hword branch_Cmd20_Beq - Jumppoints_2241aa2 - 2
.hword branch_Cmd20_Bne - Jumppoints_2241aa2 - 2
.hword branch_Cmd20_Bgt - Jumppoints_2241aa2 - 2
.hword branch_Cmd20_Ble - Jumppoints_2241aa2 - 2
.hword branch_Cmd20_TstNe - Jumppoints_2241aa2 - 2
.hword branch_Cmd20_TstEq - Jumppoints_2241aa2 - 2
.hword branch_Cmd20_AndEq - Jumppoints_2241aa2 - 2

branch_Cmd20_Beq: @ 2241ab0 :thumb
	ldr     r0, [r0, #0x0]
	cmp     r0, r4
	beq     branch_Cmd20_JumpDecision
	mov     r5, #0x0
	b       branch_Cmd20_JumpDecision

branch_Cmd20_Bne: @ 2241aba :thumb
	ldr     r0, [r0, #0x0]
	cmp     r0, r4
	bne     branch_Cmd20_JumpDecision
	mov     r5, #0x0
	b       branch_Cmd20_JumpDecision

branch_Cmd20_Bgt: @ 2241ac4 :thumb
	ldr     r0, [r0, #0x0]
	cmp     r0, r4
	bgt     branch_Cmd20_JumpDecision
	mov     r5, #0x0
	b       branch_Cmd20_JumpDecision

branch_Cmd20_Ble: @ 2241ace :thumb
	ldr     r0, [r0, #0x0]
	cmp     r0, r4
	ble     branch_Cmd20_JumpDecision
	mov     r5, #0x0
	b       branch_Cmd20_JumpDecision

branch_Cmd20_TstNe: @ 2241ad8 :thumb
	ldr     r0, [r0, #0x0]
	tst     r0, r4
	bne     branch_Cmd20_JumpDecision
	mov     r5, #0x0
	b       branch_Cmd20_JumpDecision

branch_Cmd20_TstEq: @ 2241ae2 :thumb
	ldr     r0, [r0, #0x0]
	tst     r0, r4
	beq     branch_Cmd20_JumpDecision
	mov     r5, #0x0
	b       branch_Cmd20_JumpDecision

branch_Cmd20_AndEq: @ 2241aec :thumb
	ldr     r0, [r0, #0x0]
	and     r0, r4
	cmp     r4, r0
	beq     branch_Cmd20_JumpDecision
	mov     r5, #0x0

branch_Cmd20_JumpDecision: @ 2241af6 :thumb
	cmp     r5, #0x0
	beq     branch_Cmd20_End
	mov     r0, r6
	mov     r1, r5
	bl      BeSeq_AddToPointer
branch_Cmd20_End: @ 2241b02 :thumb

	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
thumb_func_end BeSeq_JumpIf


/* Input:
r0: MainBattleData
r1: BattleData
*/
thumb_func_start BeSeq_Cmd21
BeSeq_Cmd21: @ 2241b08 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r6, r1
	str     r0, [sp, #0x0]

	mov     r0, r6
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r6
	bl      BeSeq_LoadWord
	mov     r7, r0

	mov     r0, r6
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x4]

	mov     r0, r6
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x8]

	mov     r0, r6
	bl      BeSeq_LoadWord
	mov     r4, r0

	mov     r0, r6
	bl      BeSeq_LoadWord
	mov     r5, r0

	ldr     r0, [sp, #0x0]
	ldr     r2, [sp, #0x4]
	mov     r1, r6
	bl      GetTargetNrOfPkmn

	mov     r1, r0
	ldr     r2, [sp, #0x8]
	mov     r0, r6
	mov     r3, #0x0
	bl      ReadPkmnBattleData1

	cmp     r7, #0x6
	bhi     branch_2241bac
	add     r1, r7, r7
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2241b66

Jumppoints_2241b66:
.hword branch_2241b74 - Jumppoints_2241b66 - 2
.hword branch_2241b7c - Jumppoints_2241b66 - 2
.hword branch_2241b84 - Jumppoints_2241b66 - 2
.hword branch_2241b8c - Jumppoints_2241b66 - 2
.hword branch_2241b94 - Jumppoints_2241b66 - 2
.hword branch_2241b9c - Jumppoints_2241b66 - 2
.hword branch_2241ba4 - Jumppoints_2241b66 - 2

branch_2241b74: @ 2241b74 :thumb
	cmp     r0, r4
	beq     branch_2241bac
	mov     r5, #0x0
	b       branch_2241bac

branch_2241b7c: @ 2241b7c :thumb
	cmp     r0, r4
	bne     branch_2241bac
	mov     r5, #0x0
	b       branch_2241bac

branch_2241b84: @ 2241b84 :thumb
	cmp     r0, r4
	bgt     branch_2241bac
	mov     r5, #0x0
	b       branch_2241bac

branch_2241b8c: @ 2241b8c :thumb
	cmp     r0, r4
	ble     branch_2241bac
	mov     r5, #0x0
	b       branch_2241bac

branch_2241b94: @ 2241b94 :thumb
	tst     r0, r4
	bne     branch_2241bac
	mov     r5, #0x0
	b       branch_2241bac

branch_2241b9c: @ 2241b9c :thumb
	tst     r0, r4
	beq     branch_2241bac
	mov     r5, #0x0
	b       branch_2241bac

branch_2241ba4: @ 2241ba4 :thumb
	and     r0, r4
	cmp     r4, r0
	beq     branch_2241bac
	mov     r5, #0x0
branch_2241bac: @ 2241bac :thumb
	cmp     r5, #0x0
	beq     branch_2241bb8
	mov     r0, r6
	mov     r1, r5
	bl      BeSeq_AddToPointer
branch_2241bb8: @ 2241bb8 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
thumb_func_end BeSeq_Cmd21


/* Input:
r0: MainBattleData
r1: BattleData
*/
.align 2, 0
.thumb
BeSeq_Cmd22: @ 2241bc0 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	mov     r1, r4
	bl      Function_2265ecc
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2241bda


/* Input:
r0: MainBattleData
r1: BattleData
*/
.align 2, 0
.thumb
BeSeq_Cmd23: @ 2241bdc :thumb
	push    {r4,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord

	mov     r2, r0
	mov     r0, r4
	mov     r1, #SubSeq_Narc
	bl      Call_Call_LoadFromNARC

	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2241bfc


/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd24: @ 2241bfc :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	ldr     r2, [pc, #0x14] @ 0x2241c20, (=BattleData_WazaSeqFileNr)
	mov     r0, r4
	ldr     r2, [r4, r2]
	mov     r1, #BeSeq_Narc
	lsl     r2, r2, #4
	add     r3, r4, r2
	ldr     r2, [pc, #0xc] @ 0x2241c24, (=BattleData_3de)
	ldrh    r2, [r3, r2]
	bl      Call_Call_LoadFromNARC

	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2241c20

.word BattleData_WazaSeqFileNr @ 0x2241c20
.word BattleData_3de @ 0x2241c24



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd25: @ 2241c28 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord

	ldr     r2, [pc, #0x80] @ 0x2241cc0, (=BattleData_213c)
	mov     r1, #0x1
	ldr     r3, [r4, r2]
	bic     r3, r1
	str     r3, [r4, r2]
	ldr     r3, [r4, r2]
	ldr     r1, [pc, #0x78] @ 0x2241cc4, (=0xffffbfff)
	and     r1, r3
	mov     r3, #0x49
	lsl     r3, r3, #2
	str     r1, [r4, r2]
	ldr     r2, [r4, r3]
	ldr     r1, [pc, #0x70] @ 0x2241cc8, (=BattleData_WazaSeqFileNr)
	cmp     r0, #0x0
	str     r2, [r4, r1] @ BattleData_WazaSeqFileNr
	bne     branch_2241c98

	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r3, [r4, r3]
	ldr     r2, [r4, #0x64]
	lsl     r3, r3, #16
	mov     r0, r5
	mov     r1, r4
	lsr     r3, r3, #16
	bl      Function_2253954
	str     r0, [r4, #0x6c]
	mov     r3, #0x49
	lsl     r3, r3, #2
	ldr     r3, [r4, r3]
	ldr     r2, [r4, #0x64]
	lsl     r3, r3, #16
	mov     r0, r5
	mov     r1, r4
	lsr     r3, r3, #16
	bl      Function_2253c98
	ldr     r0, [r4, #0x64]
	ldr     r2, [r4, #0x6c]
	lsl     r0, r0, #4
	add     r1, r4, r0
	ldr     r0, [pc, #0x34] @ 0x2241ccc, (=0x21ac)
	str     r2, [r1, r0]
branch_2241c98: @ 2241c98 :thumb
	ldr     r0, [r4, #0x6c]
	cmp     r0, #0xff
	bne     branch_2241cae
	mov     r2, #0x26
	str     r2, [r4, #0xc]
	mov     r0, r4
	mov     r1, #SubSeq_Narc
	add     r2, #0xf3
	bl      Call_Call_LoadFromNARC
	b       branch_2241cba

branch_2241cae: @ 2241cae :thumb
	ldr     r2, [pc, #0x18] @ 0x2241cc8, (=BattleData_WazaSeqFileNr)
	mov     r0, r4
	ldr     r2, [r4, r2]
	mov     r1, #WazaSeq_Narc
	bl      Call_Call_LoadFromNARC

branch_2241cba: @ 2241cba :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2241cc0

.word BattleData_213c @ 0x2241cc0
.word 0xffffbfff @ 0x2241cc4
.word BattleData_WazaSeqFileNr @ 0x2241cc8
.word 0x21ac @ 0x2241ccc



/* Input:
r0: MainBattleData
r1: BattleData
*/
thumb_func_start BeSeq_Cmd26
BeSeq_Cmd26: @ 2241cd0 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      LoadMainBattleData_2c
	mov     r1, #0x1
	lsl     r1, r1, #10
	tst     r0, r1              @ MainBattleData_2c_400
	bne     branch_2241cfa

	mov     r0, r5
	bl      LoadMainBattleData_240c
	mov     r1, #MainBattleData_240c_1
	tst     r0, r1
	beq     branch_2241d02

branch_2241cfa: @ 2241cfa :thumb
	ldr     r0, =BattleData_DamageMultiplier
	mov     r1, #0x1
	str     r1, [r4, r0]
	b       branch_2241d26

branch_2241d02: @ 2241d02 :thumb
	ldr     r3, [r4, #BattleData_TargetPkmn]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #BATTLEDATA_0
	bl      ReadBattleData
	ldr     r1, =BattleData_214c
	ldr     r1, [r4, r1]
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x4]

	ldr     r2, [r4, #BattleData_NrOfPkmn]
	ldr     r3, [r4, #BattleData_TargetPkmn]
	mov     r0, r5
	mov     r1, r4
	bl      Function_225aee4
	ldr     r1, =BattleData_DamageMultiplier
	str     r0, [r4, r1]

branch_2241d26: @ 2241d26 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2241d2c

.align 2
.pool
thumb_func_end BeSeq_Cmd26



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd27: @ 2241d34 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r1
	mov     r7, r0

	bl      LoadMainBattleData_2c
	mov     r4, r0

	ldr     r1, [r5, #0x74]
	mov     r0, r7
	bl      GetMainBattleData_BattleText
	mov     r6, r0

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r1, r0
	ldr     r0, [pc, #0x148] @ 0x2241ea8, (=0x195)
	ldrb    r2, [r6, r0]
	mov     r0, #0x1
	tst     r0, r2
	beq     branch_2241d6e
	mov     r0, #0xa9
	lsl     r0, r0, #2
	tst     r0, r4
	beq     branch_2241d70
branch_2241d6e: @ 2241d6e :thumb
	b       branch_2241e9c

branch_2241d70: @ 2241d70 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r1, [sp, #0x4]
	str     r0, [sp, #0x0]
	mov     r4, r0
	mov     r0, r7
	bl      GetMainBattleData_PkmnPartyAdr
	bl      GetNrOfPkmnInParty
	cmp     r0, #0x0
	ble     branch_2241dfe
branch_2241d88: @ 2241d88 :thumb
	mov     r0, r7
	mov     r1, #0x0
	mov     r2, r4
	bl      GetMainBattleData_GetAdrOfPkmnInParty
	mov     r1, #0x5
	mov     r2, #0x0
	mov     r6, r0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_2241dec
	mov     r0, r6
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_2241dec
	mov     r0, r4
	bl      Function_20787cc
	ldr     r1, [r5, #0x74]
	asr     r1, r1, #1
	lsl     r1, r1, #31
	lsr     r1, r1, #29
	add     r1, r5, r1
	add     r1, #0xa4
	ldr     r1, [r1, #0x0]
	tst     r0, r1
	beq     branch_2241dcc
	ldr     r0, [sp, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x4]
branch_2241dcc: @ 2241dcc :thumb
	mov     r0, r6
	mov     r1, #0x6
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r0, r0, #16
	lsr     r1, r0, #16
	mov     r0, r5
	mov     r2, #0x1
	bl      Function_16_225b0fc
	cmp     r0, #0x33
	bne     branch_2241dec
	ldr     r0, [sp, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x0]
branch_2241dec: @ 2241dec :thumb
	mov     r0, r7
	mov     r1, #0x0
	.hword  0x1c64 @ add r4, r4, #0x1
	bl      GetMainBattleData_PkmnPartyAdr
	bl      GetNrOfPkmnInParty
	cmp     r4, r0
	blt     branch_2241d88
branch_2241dfe: @ 2241dfe :thumb
	ldr     r1, [r5, #0x74]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r5, r0
	mov     r0, #0xb5
	lsl     r0, r0, #6              @ 0x2d40
	ldrh    r0, [r1, r0]
	mov     r1, #PKMNBASEDATA_BASEEXP
	bl      GetPkmnBaseData1
	lsl     r0, r0, #16
	lsr     r1, r0, #16
	ldr     r2, [r5, #0x74]
	mov     r0, #0xc0
	mul     r0, r2
	add     r2, r5, r0
	ldr     r0, [pc, #0x8c] @ 0x2241eac, (=BattleData_Level)
	ldrb    r0, [r2, r0]
	mul     r0, r1
	mov     r1, #0x7
	blx     _s32_div_f
	lsl     r0, r0, #16
	ldr     r1, [sp, #0x0]
	lsr     r0, r0, #16
	cmp     r1, #0x0
	beq     branch_2241e76
	lsr     r4, r0, #1
	ldr     r1, [sp, #0x4]
	mov     r0, r4
	blx     _s32_div_f
	mov     r1, r5
	add     r1, #0x9c
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2241e56
	mov     r0, r5
	mov     r1, #0x1
	add     r0, #0x9c
	str     r1, [r0, #0x0]
branch_2241e56: @ 2241e56 :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, r4
	blx     _s32_div_f
	mov     r1, r5
	add     r1, #0xa0
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r0, #0xa0
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2241ea2
	mov     r0, #0x1
	add     r5, #0xa0
	str     r0, [r5, #0x0]
	b       branch_2241ea2

branch_2241e76: @ 2241e76 :thumb
	ldr     r1, [sp, #0x4]
	blx     _s32_div_f
	mov     r1, r5
	add     r1, #0x9c
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2241e94
	mov     r0, r5
	mov     r1, #0x1
	add     r0, #0x9c
	str     r1, [r0, #0x0]
branch_2241e94: @ 2241e94 :thumb
	mov     r0, #0x0
	add     r5, #0xa0
	str     r0, [r5, #0x0]
	b       branch_2241ea2

branch_2241e9c: @ 2241e9c :thumb
	mov     r0, r5
	bl      BeSeq_AddToPointer
branch_2241ea2: @ 2241ea2 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2241ea8

.word 0x195 @ 0x2241ea8
.word BattleData_Level @ 0x2241eac



/* Input:
r0: MainBattleData
r1: BattleData
*/
thumb_func_start BeSeq_PkmnGainsExpPts
BeSeq_PkmnGainsExpPts: @ 2241eb0 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, #0x5
	mov     r1, #0x58
	bl      malloc
	mov     r1, #BattleData_178/4
	lsl     r1, r1, #2
	str     r0, [r4, r1] @ BattleData_178

	ldr     r0, [r4, r1] @ BattleData_178
	mov     r2, #0x0
	str     r5, [r0, #0x0]

	ldr     r0, [r4, r1] @ BattleData_178
	str     r4, [r0, #0x4]

	ldr     r0, [r4, r1] @ BattleData_178
	str     r2, [r0, #0x28]

	ldr     r0, [r4, r1] @ BattleData_178
	str     r2, [r0, #0x48]

	ldr     r0, =PkmnGainsExpPts+1
	ldr     r1, [r4, r1] @ BattleData_178
	bl      AddTaskToTaskList1

	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2241eea

.align 2
.pool
thumb_func_end BeSeq_PkmnGainsExpPts



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd29: @ 2241ef0 :thumb
	push    {r4,lr}
	mov     r0, #0x5e
	mov     r4, r1
	lsl     r0, r0, #2 @ 0x178
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_2241f06

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

branch_2241f06: @ 2241f06 :thumb
	ldr     r1, [pc, #0x10] @ 0x2241f18, (=BattleData_EndOfScript)
	mov     r0, #BattleData_EndOfScript_1
	ldr     r2, [r4, r1] @ BattleData_EndOfScript
	bic     r2, r0
	mov     r0, #BattleData_EndOfScript_1
	orr     r0, r2
	str     r0, [r4, r1] @ BattleData_EndOfScript

	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2241f18

.word BattleData_EndOfScript @ 0x2241f18



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd2a: @ 2241f1c :thumb
	push    {r4,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord

	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2241f32


/* Input:
r0: MainBattleData
r1: BattleData
*/
.align 2, 0
.thumb
BeSeq_Cmd2b: @ 2241f34 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	str     r1, [sp, #0x8]
	mov     r6, r0

	bl      GetMainBattleData_NrOfBattleTextPtrs
	mov     r7, r0

	ldr     r0, [sp, #0x8]
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r4, #0x0
	mov     r5, r4
	cmp     r7, #0x0
	ble     branch_2241f8c
	ldr     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
branch_2241f56: @ 2241f56 :thumb
	mov     r0, #0x4f
	ldr     r1, [sp, #0xc]
	lsl     r0, r0, #2
	ldr     r1, [r1, r0]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_2241f80
	mov     r0, r5
	bl      Function_20787cc
	orr     r4, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	str     r0, [sp, #0x4]
	ldr     r1, [sp, #0x8]
	mov     r0, r6
	mov     r2, r5
	mov     r3, #0x1
	bl      Function_2265a8c
branch_2241f80: @ 2241f80 :thumb
	ldr     r0, [sp, #0xc]
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0xc]
	cmp     r5, r7
	blt     branch_2241f56
branch_2241f8c: @ 2241f8c :thumb
	mov     r5, #0x0
	cmp     r7, #0x0
	ble     branch_2241fe4
branch_2241f92: @ 2241f92 :thumb
	mov     r0, r6
	bl      LoadMainBattleData_2c
	cmp     r0, #0x7
	bne     branch_2241fcc
	mov     r0, r6
	mov     r1, r5
	bl      Function_16_223e258
	str     r0, [sp, #0x10]
	mov     r0, r5
	bl      Function_20787cc
	tst     r0, r4
	bne     branch_2241fde
	ldr     r0, [sp, #0x10]
	bl      Function_20787cc
	tst     r0, r4
	bne     branch_2241fde
	mov     r0, r5
	bl      Function_20787cc
	orr     r4, r0
	mov     r0, r6
	mov     r1, r5
	bl      Function_22666e0
	b       branch_2241fde

branch_2241fcc: @ 2241fcc :thumb
	mov     r0, r5
	bl      Function_20787cc
	tst     r0, r4
	bne     branch_2241fde
	mov     r0, r6
	mov     r1, r5
	bl      Function_22666e0
branch_2241fde: @ 2241fde :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r7
	blt     branch_2241f92
branch_2241fe4: @ 2241fe4 :thumb
	mov     r0, #0x0
	cmp     r7, #0x0
	ble     branch_2242006
	mov     r1, #0x4f
	ldr     r4, [sp, #0x8]
	lsl     r1, r1, #2
	mov     r2, #0x1
branch_2241ff2: @ 2241ff2 :thumb
	ldr     r3, [r4, r1]
	tst     r3, r2
	beq     branch_2241ffe
	ldr     r1, [sp, #0x8]
	str     r0, [r1, #0x78]
	b       branch_2242006

branch_2241ffe: @ 2241ffe :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r0, r7
	blt     branch_2241ff2
branch_2242006: @ 2242006 :thumb
	mov     r0, #0x0
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x224200c


/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd2c: @ 224200c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	str     r0, [sp, #0x0]
	mov     r5, r1

	bl      GetMainBattleData_NrOfBattleTextPtrs
	mov     r7, r0

	mov     r6, #0x0
	mov     r0, r6
	cmp     r7, #0x0
	ble     branch_224203a
	mov     r4, #0x4f
	mov     r1, r5
	lsl     r4, r4, #2
	mov     r2, #0x1
branch_224202a: @ 224202a :thumb
	ldr     r3, [r1, r4]
	tst     r3, r2
	beq     branch_2242032
	.hword  0x1c76 @ add r6, r6, #0x1
branch_2242032: @ 2242032 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d09 @ add r1, r1, #0x4
	cmp     r0, r7
	blt     branch_224202a
branch_224203a: @ 224203a :thumb
	mov     r4, #0x0
	cmp     r7, #0x0
	ble     branch_22420b6
	str     r5, [sp, #0x8]
	str     r5, [sp, #0x4]
branch_2242044: @ 2242044 :thumb
	mov     r0, #0x4f
	ldr     r1, [sp, #0x8]
	lsl     r0, r0, #2
	ldr     r1, [r1, r0]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_22420a0
	mov     r0, r5
	mov     r1, r4
	bl      Function_2259ab4
	cmp     r0, #0x0
	beq     branch_22420a0
	mov     r0, #0x23
	ldr     r1, [sp, #0x4]
	lsl     r0, r0, #8
	ldrb    r0, [r1, r0]
	add     r1, r5, r4
	.hword  0x1e76 @ sub r6, r6, #0x1
	.hword  0x1e42 @ sub r2, r0, #0x1
	ldr     r0, [pc, #0xb8] @ 0x2242128, (=0x21a0)
	strb    r2, [r1, r0]
	mov     r0, r4
	bl      Function_20787cc
	mov     r1, #0x85
	lsl     r1, r1, #6
	ldr     r1, [r5, r1]
	lsl     r0, r0, #24
	tst     r0, r1
	bne     branch_22420a0
	mov     r0, r4
	bl      Function_20787cc
	mov     r1, #0x85
	lsl     r1, r1, #6
	ldr     r1, [r5, r1]
	lsl     r0, r0, #24
	orr     r1, r0
	mov     r0, #0x85
	lsl     r0, r0, #6
	str     r1, [r5, r0]
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_22666e0
branch_22420a0: @ 22420a0 :thumb
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x4]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	lsl     r0, r0, #8
	add     r0, r1, r0
	.hword  0x1c64 @ add r4, r4, #0x1
	str     r0, [sp, #0x4]
	cmp     r4, r7
	blt     branch_2242044
branch_22420b6: @ 22420b6 :thumb
	cmp     r6, #0x0
	bne     branch_2242112
	mov     r4, #0x0
	cmp     r7, #0x0
	ble     branch_22420fe
	str     r5, [sp, #0xc]
	mov     r6, r5
branch_22420c4: @ 22420c4 :thumb
	mov     r0, #0x4f
	ldr     r1, [sp, #0xc]
	lsl     r0, r0, #2
	ldr     r1, [r1, r0]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_22420ec
	mov     r0, r5
	mov     r1, r4
	bl      Function_2259ab4
	cmp     r0, #0x0
	beq     branch_22420ec
	mov     r2, #0x23
	lsl     r2, r2, #8
	ldrb    r2, [r6, r2]
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_223f500
branch_22420ec: @ 22420ec :thumb
	ldr     r0, [sp, #0xc]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0xc]
	mov     r0, #0x1
	lsl     r0, r0, #8
	add     r6, r6, r0
	cmp     r4, r7
	blt     branch_22420c4
branch_22420fe: @ 22420fe :thumb
	mov     r1, #0x85
	lsl     r1, r1, #6
	ldr     r2, [r5, r1]
	ldr     r0, [pc, #0x24] @ 0x224212c, (=0xf0ffffff)
	and     r0, r2
	str     r0, [r5, r1]

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer
branch_2242112: @ 2242112 :thumb
	ldr     r1, [pc, #0x1c] @ 0x2242130, (=BattleData_EndOfScript)
	mov     r0, #BattleData_EndOfScript_1
	ldr     r2, [r5, r1] @ BattleData_EndOfScript
	bic     r2, r0
	mov     r0, #BattleData_EndOfScript_1
	orr     r0, r2
	str     r0, [r5, r1] @ BattleData_EndOfScript

	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2242126

.align 2
.word 0x21a0 @ 0x2242128
.word 0xf0ffffff @ 0x224212c
.word BattleData_EndOfScript @ 0x2242130



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd2d: @ 2242134 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r7, r0

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      BeSeq_LoadWord
	cmp     r0, #0x1
	beq     branch_2242156
	cmp     r0, #0x6
	beq     branch_224215a
	cmp     r0, #0x12
	beq     branch_224215e
	b       branch_2242160

branch_2242156: @ 2242156 :thumb
	ldr     r4, [r5, #0x64]
	b       branch_2242160

branch_224215a: @ 224215a :thumb
	ldr     r4, [r5, #0x78]
	b       branch_2242160

branch_224215e: @ 224215e :thumb
	ldr     r4, [r5, #0x6c]
branch_2242160: @ 2242160 :thumb
	mov     r0, #0x4f
	lsl     r0, r0, #2
	add     r3, r5, r0
	lsl     r2, r4, #2
	ldr     r1, [r3, r2]
	mov     r0, #0x1
	bic     r1, r0
	mov     r0, r4
	str     r1, [r3, r2]
	bl      Function_20787cc
	ldr     r3, [pc, #0x4c] @ 0x22421c4, (=BattleData_3108)
	mov     r2, #0x0
	mvn     r2, r2
	eor     r0, r2
	ldrb    r1, [r5, r3]
	mov     r2, r4
	and     r0, r1
	ldr     r1, [pc, #0x40] @ 0x22421c8, (=0x21a0)
	strb    r0, [r5, r3]
	add     r0, r5, r1
	.hword  0x1f09 @ sub r1, r1, #0x4
	add     r6, r5, r1
	ldrb    r1, [r0, r4]
	strb    r1, [r6, r4]
	mov     r1, #0x6
	strb    r1, [r0, r4]
	ldrb    r3, [r6, r4]
	mov     r0, r7
	mov     r1, r5
	bl      CopyPkmnDataToPkmnBattleData2
	ldrb    r3, [r6, r4]
	mov     r0, r7
	mov     r1, r5
	mov     r2, r4
	bl      Function_225a200
	ldr     r0, [pc, #0x1c] @ 0x22421cc, (=0x2e4c)
	mov     r2, r4
	ldr     r1, [r5, r0]
	ldr     r0, [pc, #0x1c] @ 0x22421d0, (=BattleData_3122)
	strh    r1, [r5, r0]
	mov     r0, r7
	mov     r1, r5
	bl      Function_225433c
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22421c2

.align 2
.word BattleData_3108 @ 0x22421c4
.word 0x21a0 @ 0x22421c8
.word 0x2e4c @ 0x22421cc
.word BattleData_3122 @ 0x22421d0



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd2e: @ 22421d4 :thumb
	push    {r3-r7,lr}
	mov     r5, r1

	bl      GetMainBattleData_NrOfBattleTextPtrs
	mov     r4, r0

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r7, r0

	mov     r0, #0x0
	cmp     r4, #0x0
	ble     branch_2242216
	mov     r2, #0x4f
	mov     r1, r5
	lsl     r2, r2, #2
	mov     r3, #0x1
branch_22421fc: @ 22421fc :thumb
	ldr     r6, [r1, r2]
	tst     r6, r3
	beq     branch_224220e
	str     r0, [r5, #0x78]
	mov     r0, r5
	mov     r1, r7
	bl      BeSeq_AddToPointer
	b       branch_2242216

branch_224220e: @ 224220e :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d09 @ add r1, r1, #0x4
	cmp     r0, r4
	blt     branch_22421fc
branch_2242216: @ 2242216 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224221a


/* Input:
r0: MainBattleData
r1: BattleData
*/
thumb_func_start BeSeq_TryToCatchPkmn
BeSeq_TryToCatchPkmn: @ 224221c :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r6, r0

	mov     r0, #0x5
	mov     r1, #CatchStruct_Size
	bl      malloc

	mov     r1, #BattleData_178/4
	lsl     r1, r1, #2
	str     r0, [r4, r1] @ BattleData_178

	ldr     r0, [r4, r1] @ BattleData_178
	mov     r2, #CatchStruct_State0
	str     r5, [r0, #CatchStruct_MainBattleData]

	ldr     r0, [r4, r1] @ BattleData_178
	str     r4, [r0, #CatchStruct_BattleData]

	ldr     r0, [r4, r1] @ BattleData_178
	str     r2, [r0, #CatchStruct_StateNr]

	ldr     r0, [r4, r1] @ BattleData_178
	str     r6, [r0, #CatchStruct_24]

	mov     r0, r1
	sub     r0, #BattleData_178 - BattleData_UsedItem
	ldr     r3, [r4, r0] @ BattleData_UsedItem
	ldr     r0, [r4, r1] @ BattleData_178
	str     r3, [r0, #CatchStruct_2c]

	ldr     r0, =TryToCatchPkmn+1
	ldr     r1, [r4, r1] @ BattleData_178
	bl      AddTaskToTaskList1

	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2242268

.align 2
.pool
thumb_func_end BeSeq_TryToCatchPkmn



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd30: @ 224226c :thumb
	push    {r4,lr}
	mov     r0, #BattleData_178/4
	mov     r4, r1
	lsl     r0, r0, #2
	ldr     r0, [r4, r0] @ BattleData_178
	cmp     r0, #0x0
	bne     branch_2242282
	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer
branch_2242282: @ 2242282 :thumb

	ldr     r1, =BattleData_EndOfScript
	mov     r0, #BattleData_EndOfScript_1
	ldr     r2, [r4, r1] @ BattleData_EndOfScript
	bic     r2, r0
	mov     r0, #BattleData_EndOfScript_1
	orr     r0, r2
	str     r0, [r4, r1] @ BattleData_EndOfScript

	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2242294

.align 2
.pool



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd31: @ 2242298 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r7, r0

	ldr     r0, [pc, #0x4c] @ 0x2242304, (=0x217d)
	ldrb    r0, [r5, r0]
	cmp     r0, #0x0
	bne     branch_2242300
	cmp     r4, #0x0
	bne     branch_22422f0
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	bl      GetAbilityOfPkmnConsideringMultitypeWeatherLevitate
	cmp     r0, #0x5c
	bne     branch_22422d2
	mov     r4, #0x5
	b       branch_22422f0
@ 0x22422d2

.thumb
branch_22422d2: @ 22422d2 :thumb
	mov     r0, r6
	bl      Function_16_GetRandomNr
	mov     r1, #0x3
	and     r0, r1
	cmp     r0, #0x2
	bge     branch_22422e4
	add     r4, r0, #0x2
	b       branch_22422f0

branch_22422e4: @ 22422e4 :thumb
	mov     r0, r6
	bl      Function_16_GetRandomNr
	mov     r1, #0x3
	and     r0, r1
	add     r4, r0, #0x2
branch_22422f0: @ 22422f0 :thumb
	lsl     r0, r4, #24
	ldr     r1, [pc, #0x14] @ 0x2242308, (=0x217c)
	lsr     r2, r0, #24
	strb    r2, [r5, r1]
	add     r0, r1, #0x1
	strb    r2, [r5, r0]
	add     r1, #0xc
	str     r7, [r5, r1]
branch_2242300: @ 2242300 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2242304

.word 0x217d @ 0x2242304
.word 0x217c @ 0x2242308



/* Input:
r0: MainBattleData
r1: BattleData
01 Sleep:           Cmd_32 Cmd32_Store, Var_2, 0x80000001
02 PoisonHit:       Cmd_32 Cmd32_Store, Var_3, 0x80000002
03 Absorb:          Cmd_32 Cmd32_Store, Var_3, 0x2000003c
04 BurnHit:         Cmd_32 Cmd32_Store, Var_3, 0x80000003
05 FreezeHit:       Cmd_32 Cmd32_Store, Var_3, 0x80000004
06 ParalyzeHit:     Cmd_32 Cmd32_Store, Var_3, 0x80000005
10 AttackUp:        Cmd_32 Cmd32_Store, Var_2, 0x4000000f
11 DefenseUp:       Cmd_32 Cmd32_Store, Var_2, 0x40000010
13 SpecialAttackUp: Cmd_32 Cmd32_Store, Var_2, 0x40000012
*/
thumb_func_start BeSeq_Cmd32
BeSeq_Cmd32: @ 224230c :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r7, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r6, r0              @ Cmd

	mov     r0, r4
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x0]      @ for BeSeq_GetVariableAdress

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r5, r0              @ # to work with

	ldr     r2, [sp, #0x0]      @ for BeSeq_GetVariableAdress
	mov     r0, r7
	mov     r1, r4
	bl      BeSeq_GetVariableAdress
	mov     r4, r0

	cmp     r6, #0x14
	bhi     branch_Cmd32_ErrorEnd
	add     r0, r6, r6
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0

Jumppoints_224234e:
.hword branch_Cmd32_ErrorEnd - Jumppoints_224234e - 2 @ 0x0
.hword branch_Cmd32_ErrorEnd - Jumppoints_224234e - 2 @ 0x1
.hword branch_Cmd32_ErrorEnd - Jumppoints_224234e - 2 @ 0x2
.hword branch_Cmd32_ErrorEnd - Jumppoints_224234e - 2 @ 0x3
.hword branch_Cmd32_ErrorEnd - Jumppoints_224234e - 2 @ 0x4
.hword branch_Cmd32_ErrorEnd - Jumppoints_224234e - 2 @ 0x5
.hword branch_Cmd32_ErrorEnd - Jumppoints_224234e - 2 @ 0x6
.hword branch_Cmd32_Store - Jumppoints_224234e - 2 @ 0x7
.hword branch_Cmd32_Add - Jumppoints_224234e - 2 @ 0x8
.hword branch_Cmd32_Sub - Jumppoints_224234e - 2 @ 0x9
.hword branch_Cmd32_Orr - Jumppoints_224234e - 2 @ 0xa
.hword branch_Cmd32_Bic - Jumppoints_224234e - 2 @ 0xb
.hword branch_Cmd32_Mul - Jumppoints_224234e - 2 @ 0xc
.hword branch_Cmd32_Div - Jumppoints_224234e - 2 @ 0xd
.hword branch_Cmd32_Lsl - Jumppoints_224234e - 2 @ 0xe
.hword branch_Cmd32_Lsr - Jumppoints_224234e - 2 @ 0xf
.hword branch_22423c8 - Jumppoints_224234e - 2 @ 0x10
.hword branch_Cmd32_Error - Jumppoints_224234e - 2 @ 0x11
.hword branch_Cmd32_SubMin0 - Jumppoints_224234e - 2 @ 0x12
.hword branch_Cmd32_Eor - Jumppoints_224234e - 2 @ 0x13
.hword branch_Cmd32_And - Jumppoints_224234e - 2 @ 0x14

branch_Cmd32_Store: @ 2242378 :thumb
	str     r5, [r4, #0x0]
	b       branch_Cmd32_End

branch_Cmd32_Add: @ 224237c :thumb
	ldr     r0, [r4, #0x0]
	add     r0, r0, r5
	str     r0, [r4, #0x0]
	b       branch_Cmd32_End

branch_Cmd32_Sub: @ 2242384 :thumb
	ldr     r0, [r4, #0x0]
	sub     r0, r0, r5
	str     r0, [r4, #0x0]
	b       branch_Cmd32_End

branch_Cmd32_Orr: @ 224238c :thumb
	ldr     r0, [r4, #0x0]
	orr     r0, r5
	str     r0, [r4, #0x0]
	b       branch_Cmd32_End

branch_Cmd32_Bic: @ 2242394 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	ldr     r1, [r4, #0x0]
	eor     r0, r5
	and     r0, r1
	str     r0, [r4, #0x0]
	b       branch_Cmd32_End

branch_Cmd32_Mul: @ 22423a2 :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, r0
	mul     r1, r5
	str     r1, [r4, #0x0]
	b       branch_Cmd32_End

branch_Cmd32_Div: @ 22423ac :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, r5
	blx     _s32_div_f
	str     r0, [r4, #0x0]
	b       branch_Cmd32_End

branch_Cmd32_Lsl: @ 22423b8 :thumb
	ldr     r0, [r4, #0x0]
	lsl     r0, r5
	str     r0, [r4, #0x0]
	b       branch_Cmd32_End

branch_Cmd32_Lsr: @ 22423c0 :thumb
	ldr     r0, [r4, #0x0]
	lsr     r0, r5
	str     r0, [r4, #0x0]
	b       branch_Cmd32_End

branch_22423c8: @ 22423c8 :thumb
	mov     r0, r5
	bl      Function_20787cc
	str     r0, [r4, #0x0]
	b       branch_Cmd32_End

branch_Cmd32_Error: @ 22423d2 :thumb
	bl      ErrorHandling
	b       branch_Cmd32_End

branch_Cmd32_SubMin0: @ 22423d8 :thumb
	ldr     r0, [r4, #0x0]
	sub     r0, r0, r5
	str     r0, [r4, #0x0]
	bpl     branch_Cmd32_End
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	b       branch_Cmd32_End

branch_Cmd32_Eor: @ 22423e6 :thumb
	ldr     r0, [r4, #0x0]
	eor     r0, r5
	str     r0, [r4, #0x0]
	b       branch_Cmd32_End

branch_Cmd32_And: @ 22423ee :thumb
	ldr     r0, [r4, #0x0]
	and     r0, r5
	str     r0, [r4, #0x0]
	b       branch_Cmd32_End

branch_Cmd32_ErrorEnd: @ 22423f6 :thumb
	bl      ErrorHandling
branch_Cmd32_End: @ 22423fa :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
thumb_func_end BeSeq_Cmd32


/* Input:
r0: MainBattleData
r1: BattleData
*/
.align 2, 0
.thumb
BeSeq_Cmd33: @ 2242400 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	str     r0, [sp, #0x0]
	mov     r0, #0xb5
	mov     r5, r1
	lsl     r0, r0, #6              @ 0x2d40
	add     r2, r5, r0
	mov     r0, r5
	add     r0, #0x94
	ldr     r1, [r0, #0x0]
	mov     r0, #0xc0
	mul     r0, r1
	add     r6, r2, r0

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x14]

	mov     r0, r5
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x10]

	mov     r0, r5
	bl      BeSeq_LoadWord
	ldr     r1, [pc, #0x328] @ 0x2242764, (=BattleData_213c)
	str     r0, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	ldr     r2, [r5, r1]
	ldr     r0, [pc, #0x324] @ 0x2242768, (=0xfffdffff)
	and     r2, r0
	str     r2, [r5, r1]

	mov     r1, r5
	add     r1, #BattleData_MoveEffectNr
	ldr     r4, [r1] @ BattleData_MoveEffectNr
	cmp     r4, #0x2e
	blt     branch_2242460

	asr     r7, r0, #17
	mov     r0, #0x4e
	mov     r1, #0xd
	lsl     r0, r0, #2
	sub     r4, #0x2e
	str     r1, [r5, r0]
	b       branch_2242490

branch_2242460: @ 2242460 :thumb
	cmp     r4, #0x27
	blt     branch_2242472

	mov     r0, #0x4e
	mov     r1, #0xc
	lsl     r0, r0, #2      @ 0x138 BattleData_138
	sub     r4, #0x27
	mov     r7, #0x2
	str     r1, [r5, r0]
	b       branch_2242490

branch_2242472: @ 2242472 :thumb
	cmp     r4, #0x16
	blt     branch_2242484

	asr     r7, r0, #18
	mov     r0, #0x4e
	mov     r1, #0xd
	lsl     r0, r0, #2
	sub     r4, #0x16
	str     r1, [r5, r0]
	b       branch_2242490

branch_2242484: @ 2242484 :thumb
	mov     r0, #0x4e
	mov     r1, #0xc
	lsl     r0, r0, #2
	sub     r4, #0xf
	mov     r7, #0x1
	str     r1, [r5, r0]
branch_2242490: @ 2242490 :thumb
	cmp     r7, #0x0
	bgt     branch_2242496
	b       branch_22425ce

branch_2242496: @ 2242496 :thumb
	add     r1, r4, #0x1
	add     r6, #0x18
	add     r0, r6, r1
	str     r0, [sp, #0x4]
	ldsb    r0, [r6, r1]
	cmp     r0, #0xc
	bne     branch_22424fa

	ldr     r1, [pc, #0x2bc] @ 0x2242764, (=BattleData_213c)
	mov     r0, #0x2
	ldr     r2, [r5, r1]
	lsl     r0, r0, #16
	orr     r0, r2
	str     r0, [r5, r1]
	mov     r0, r5
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	.hword  0x1e80 @ sub r0, r0, #0x2
	cmp     r0, #0x1
	bhi     branch_22424c6

	ldr     r1, [sp, #0x10]
	mov     r0, r5
	bl      BeSeq_AddToPointer
	b       branch_22429f4

branch_22424c6: @ 22424c6 :thumb
	mov     r0, r5
	mov     r1, #0x8e
	add     r0, #0xf6
	strh    r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0xc
	add     r0, #0xf5
	strb    r1, [r0, #0x0]
	mov     r1, r5
	add     r1, #0x94
	ldr     r1, [r1, #0x0]
	mov     r0, r5
	bl      Function_2255560
	mov     r1, r5
	add     r1, #0xf8
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r1, r4, #0x1
	add     r0, #0xfc
	str     r1, [r0, #0x0]
	ldr     r1, [sp, #0x14]
	mov     r0, r5
	bl      BeSeq_AddToPointer
	b       branch_22429f4

branch_22424fa: @ 22424fa :thumb
	mov     r0, r5
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x3
	bne     branch_2242546

	mov     r0, r5
	ldr     r1, [pc, #0x264] @ 0x224276c, (=0x26e)
	add     r0, #0xf6
	strh    r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0x27
	add     r0, #0xf5
	strb    r1, [r0, #0x0]
	mov     r1, r5
	add     r1, #0x94
	ldr     r1, [r1, #0x0]
	mov     r0, r5
	bl      Function_2255560
	mov     r1, r5
	add     r1, #0xf8
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	mov     r1, #0xc0
	mov     r2, r0
	mul     r2, r1
	ldr     r0, [pc, #0x23c] @ 0x2242770, (=BattleData_Ability)
	add     r2, r5, r2
	ldrb    r2, [r2, r0]
	mov     r0, r5
	add     r0, #0xfc
	str     r2, [r0, #0x0]
	add     r0, r4, #0x1
	add     r1, #0x40
	str     r0, [r5, r1]
	b       branch_22425b2

branch_2242546: @ 2242546 :thumb
	cmp     r0, #0x5
	bne     branch_2242582

	mov     r1, #0xbd
	mov     r0, r5
	lsl     r1, r1, #2
	add     r0, #0xf6
	strh    r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0x2d
	add     r0, #0xf5
	strb    r1, [r0, #0x0]
	mov     r1, r5
	add     r1, #0x94
	ldr     r1, [r1, #0x0]
	mov     r0, r5
	bl      Function_2255560
	mov     r1, r5
	add     r1, #0xf8
	str     r0, [r1, #0x0]
	mov     r1, #0x4a
	lsl     r1, r1, #2
	ldr     r2, [r5, r1]
	mov     r0, r5
	add     r0, #0xfc
	str     r2, [r0, #0x0]
	add     r0, r4, #0x1
	sub     r1, #0x28
	str     r0, [r5, r1]
	b       branch_22425b2

branch_2242582: @ 2242582 :thumb
	cmp     r7, #0x1
	bne     branch_224258a
	ldr     r1, [pc, #0x1ec] @ 0x2242774, (=0x2ee)
	b       branch_224258c

branch_224258a: @ 224258a :thumb
	ldr     r1, [pc, #0x1ec] @ 0x2242778, (=0x2f1)
branch_224258c: @ 224258c :thumb
	mov     r0, r5
	add     r0, #0xf6
	strh    r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0xc
	add     r0, #0xf5
	strb    r1, [r0, #0x0]
	mov     r1, r5
	add     r1, #0x94
	ldr     r1, [r1, #0x0]
	mov     r0, r5
	bl      Function_2255560
	mov     r1, r5
	add     r1, #0xf8
	str     r0, [r1, #0x0]
	add     r0, r4, #0x1
	add     r5, #0xfc
	str     r0, [r5, #0x0]
branch_22425b2: @ 22425b2 :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, #0x0
	ldsb    r0, [r0, r1]
	add     r2, r0, r7
	ldr     r0, [sp, #0x4]
	strb    r2, [r0, #0x0]
	ldsb    r0, [r0, r1]
	cmp     r0, #0xc
	bgt     branch_22425c6
	b       branch_22429f4

branch_22425c6: @ 22425c6 :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, #0xc
	strb    r1, [r0, #0x0]
	b       branch_22429f4
@ 0x22425ce

.thumb
branch_22425ce: @ 22425ce :thumb
	mov     r0, r5
	add     r0, #0x90
	ldr     r1, [r0, #0x0]
	mov     r0, #0x2
	lsl     r0, r0, #26
	tst     r1, r0
	beq     branch_22425de
	b       branch_2242958

branch_22425de: @ 22425de :thumb
	mov     r1, r5
	add     r1, #0x94
	ldr     r1, [r1, #0x0]
	ldr     r2, [r5, #0x64]
	cmp     r2, r1
	bne     branch_22425ec
	b       branch_22428a0

branch_22425ec: @ 22425ec :thumb
	ldr     r0, [sp, #0x0]
	bl      Function_16_223e208
	lsl     r0, r0, #3
	mov     r1, #0x71
	add     r0, r5, r0
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	lsl     r0, r0, #17
	lsr     r0, r0, #29
	beq     branch_224262a
	mov     r0, r5
	sub     r1, #0xb3
	add     r0, #0xf6
	strh    r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0x2
	add     r0, #0xf5
	strb    r1, [r0, #0x0]
	mov     r1, r5
	add     r1, #0x94
	ldr     r1, [r1, #0x0]
	mov     r0, r5
	bl      Function_2255560
	mov     r1, r5
	add     r1, #0xf8
	str     r0, [r1, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	b       branch_2242908

branch_224262a: @ 224262a :thumb
	mov     r2, r5
	add     r2, #0x94
	ldr     r1, [r5, #0x64]
	ldr     r2, [r2, #0x0]
	mov     r0, r5
	mov     r3, #0x1d
	bl      Function_2255ab4_CheckAbility
	cmp     r0, #0x1
	beq     branch_2242652
	mov     r2, r5
	add     r2, #0x94
	ldr     r1, [r5, #0x64]
	ldr     r2, [r2, #0x0]
	mov     r0, r5
	mov     r3, #0x49
	bl      Function_2255ab4_CheckAbility
	cmp     r0, #0x1
	bne     branch_22426f4

branch_2242652: @ 2242652 :thumb
	mov     r0, r5
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x3
	bne     branch_22426b6

	mov     r0, r5
	ldr     r1, [pc, #0x11c] @ 0x224277c, (=0x2d7)
	add     r0, #0xf6
	strh    r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0x35
	add     r0, #0xf5
	strb    r1, [r0, #0x0]
	mov     r1, r5
	add     r1, #0x94
	ldr     r1, [r1, #0x0]
	mov     r0, r5
	bl      Function_2255560
	mov     r1, r5
	add     r1, #0xf8
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r0, #0x94
	ldr     r1, [r0, #0x0]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r5, r0
	ldr     r0, [pc, #0xe4] @ 0x2242770, (=BattleData_Ability)
	ldrb    r1, [r1, r0]
	mov     r0, r5
	add     r0, #0xfc
	str     r1, [r0, #0x0]
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	bl      Function_2255560
	mov     r1, #0x1
	lsl     r1, r1, #8
	str     r0, [r5, r1]
	ldr     r0, [r5, #0x64]
	mov     r1, #0xc0
	mov     r2, r0
	mul     r2, r1
	ldr     r0, [pc, #0xc4] @ 0x2242770, (=BattleData_Ability)
	add     r2, r5, r2
	ldrb    r0, [r2, r0]
	add     r1, #0x44
	str     r0, [r5, r1]
	b       branch_22426ee

branch_22426b6: @ 22426b6 :thumb
	mov     r0, r5
	ldr     r1, [pc, #0xc4] @ 0x2242780, (=0x29d)
	add     r0, #0xf6
	strh    r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0xb
	add     r0, #0xf5
	strb    r1, [r0, #0x0]
	mov     r1, r5
	add     r1, #0x94
	ldr     r1, [r1, #0x0]
	mov     r0, r5
	bl      Function_2255560
	mov     r1, r5
	add     r1, #0xf8
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r0, #0x94
	ldr     r1, [r0, #0x0]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r5, r0
	ldr     r0, [pc, #0x88] @ 0x2242770, (=BattleData_Ability)
	ldrb    r1, [r1, r0]
	mov     r0, r5
	add     r0, #0xfc
	str     r1, [r0, #0x0]
branch_22426ee: @ 22426ee :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	b       branch_2242908

branch_22426f4: @ 22426f4 :thumb
	mov     r2, r5
	add     r2, #0x94
	ldr     r1, [r5, #0x64]
	ldr     r2, [r2, #0x0]
	mov     r0, r5
	mov     r3, #0x33
	bl      Function_2255ab4_CheckAbility
	cmp     r0, #0x1
	bne     branch_224270e

	add     r0, r4, #0x1
	cmp     r0, #0x6
	beq     branch_2242726

branch_224270e: @ 224270e :thumb
	mov     r2, r5
	add     r2, #0x94
	ldr     r1, [r5, #0x64]
	ldr     r2, [r2, #0x0]
	mov     r0, r5
	mov     r3, #0x34
	bl      Function_2255ab4_CheckAbility
	cmp     r0, #0x1
	bne     branch_22427f4

	cmp     r4, #0x0
	bne     branch_22427f4

branch_2242726: @ 2242726 :thumb
	mov     r0, r5
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x3
	bne     branch_22427ac

	mov     r0, r5
	ldr     r1, [pc, #0x48] @ 0x224277c, (=0x2d7)
	add     r0, #0xf6
	strh    r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0x35
	add     r0, #0xf5
	strb    r1, [r0, #0x0]
	mov     r1, r5
	add     r1, #0x94
	ldr     r1, [r1, #0x0]
	mov     r0, r5
	bl      Function_2255560
	mov     r1, r5
	add     r1, #0xf8
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r0, #0x94
	ldr     r1, [r0, #0x0]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r5, r0
	ldr     r0, [pc, #0x10] @ 0x2242770, (=BattleData_Ability)
	b       branch_2242784
@ 0x2242762

.align 2
.word BattleData_213c @ 0x2242764
.word 0xfffdffff @ 0x2242768
.word 0x26e @ 0x224276c
.word BattleData_Ability @ 0x2242770
.word 0x2ee @ 0x2242774
.word 0x2f1 @ 0x2242778
.word 0x2d7 @ 0x224277c
.word 0x29d @ 0x2242780

.thumb
branch_2242784: @ 2242784 :thumb
	ldrb    r1, [r1, r0]
	mov     r0, r5
	add     r0, #0xfc
	str     r1, [r0, #0x0]
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	bl      Function_2255560
	mov     r1, #0x1
	lsl     r1, r1, #8
	str     r0, [r5, r1]
	ldr     r0, [r5, #0x64]
	mov     r1, #0xc0
	mov     r2, r0
	mul     r2, r1
	ldr     r0, [pc, #0x258] @ 0x22429fc, (=BattleData_Ability)
	add     r2, r5, r2
	ldrb    r0, [r2, r0]
	add     r1, #0x44
	b       branch_22427ec

branch_22427ac: @ 22427ac :thumb
	mov     r1, #0xb
	mov     r0, r5
	lsl     r1, r1, #6
	add     r0, #0xf6
	strh    r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0x27
	add     r0, #0xf5
	strb    r1, [r0, #0x0]
	mov     r1, r5
	add     r1, #0x94
	ldr     r1, [r1, #0x0]
	mov     r0, r5
	bl      Function_2255560
	mov     r1, r5
	add     r1, #0xf8
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	mov     r1, #0xc0
	mov     r2, r0
	mul     r2, r1
	ldr     r0, [pc, #0x21c] @ 0x22429fc, (=BattleData_Ability)
	add     r2, r5, r2
	ldrb    r2, [r2, r0]
	mov     r0, r5
	add     r0, #0xfc
	str     r2, [r0, #0x0]
	add     r0, r4, #0x1
	add     r1, #0x40
.thumb
branch_22427ec: @ 22427ec :thumb
	str     r0, [r5, r1]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	b       branch_2242908
@ 0x22427f4

.thumb
branch_22427f4: @ 22427f4 :thumb
	add     r0, r4, #0x1
	add     r1, r6, r0
	mov     r0, #0x18
	ldsb    r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_224285e
	ldr     r1, [pc, #0x1fc] @ 0x2242a00, (=BattleData_213c)
	mov     r0, #0x2
	ldr     r2, [r5, r1]
	lsl     r0, r0, #16
	orr     r0, r2
	str     r0, [r5, r1]
	mov     r0, r5
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	.hword  0x1e80 @ sub r0, r0, #0x2
	cmp     r0, #0x1
	bhi     branch_2242826
	ldr     r1, [sp, #0x10]
	mov     r0, r5
	bl      BeSeq_AddToPointer
	add     sp, #0x18
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2242826

.thumb
branch_2242826: @ 2242826 :thumb
	mov     r0, r5
	mov     r1, #0x91
	add     r0, #0xf6
	strh    r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0xc
	add     r0, #0xf5
	strb    r1, [r0, #0x0]
	mov     r1, r5
	add     r1, #0x94
	ldr     r1, [r1, #0x0]
	mov     r0, r5
	bl      Function_2255560
	mov     r1, r5
	add     r1, #0xf8
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r1, r4, #0x1
	add     r0, #0xfc
	str     r1, [r0, #0x0]
	ldr     r1, [sp, #0x14]
	mov     r0, r5
	bl      BeSeq_AddToPointer
	add     sp, #0x18
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224285e

.thumb
branch_224285e: @ 224285e :thumb
	mov     r2, r5
	add     r2, #0x94
	ldr     r1, [r5, #0x64]
	ldr     r2, [r2, #0x0]
	mov     r0, r5
	mov     r3, #0x13
	bl      Function_2255ab4_CheckAbility
	cmp     r0, #0x1
	bne     branch_2242882
	mov     r0, r5
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x2
	bne     branch_2242882
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	b       branch_2242908
@ 0x2242882

.thumb
branch_2242882: @ 2242882 :thumb
	mov     r0, r5
	add     r0, #0x94
	ldr     r1, [r0, #0x0]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r5, r0
	ldr     r0, [pc, #0x174] @ 0x2242a04, (=BattleData_2db0)
	ldr     r1, [r1, r0]
	mov     r0, #0x1
	lsl     r0, r0, #24
	tst     r0, r1
	beq     branch_2242908
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	b       branch_2242908
@ 0x22428a0

.thumb
branch_22428a0: @ 22428a0 :thumb
	add     r1, r4, #0x1
	add     r2, r6, r1
	mov     r1, #0x18
	ldsb    r1, [r2, r1]
	cmp     r1, #0x0
	bne     branch_2242908
	ldr     r1, [pc, #0x150] @ 0x2242a00, (=BattleData_213c)
	lsr     r0, r0, #10
	ldr     r2, [r5, r1]
	orr     r0, r2
	str     r0, [r5, r1]
	mov     r0, r5
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	.hword  0x1e80 @ sub r0, r0, #0x2
	cmp     r0, #0x1
	bhi     branch_22428d0
	ldr     r1, [sp, #0x10]
	mov     r0, r5
	bl      BeSeq_AddToPointer
	add     sp, #0x18
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22428d0

.thumb
branch_22428d0: @ 22428d0 :thumb
	mov     r0, r5
	mov     r1, #0x91
	add     r0, #0xf6
	strh    r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0xc
	add     r0, #0xf5
	strb    r1, [r0, #0x0]
	mov     r1, r5
	add     r1, #0x94
	ldr     r1, [r1, #0x0]
	mov     r0, r5
	bl      Function_2255560
	mov     r1, r5
	add     r1, #0xf8
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r1, r4, #0x1
	add     r0, #0xfc
	str     r1, [r0, #0x0]
	ldr     r1, [sp, #0x14]
	mov     r0, r5
	bl      BeSeq_AddToPointer
	add     sp, #0x18
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2242908

.thumb
branch_2242908: @ 2242908 :thumb
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x2
	bne     branch_2242926
	mov     r0, r5
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_2242926
	ldr     r1, [sp, #0xc]
	mov     r0, r5
	bl      BeSeq_AddToPointer
	add     sp, #0x18
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2242926

.thumb
branch_2242926: @ 2242926 :thumb
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x0
	beq     branch_2242944
	mov     r0, r5
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x2
	bne     branch_2242944
	ldr     r1, [sp, #0x10]
	mov     r0, r5
	bl      BeSeq_AddToPointer
	add     sp, #0x18
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2242944

.thumb
branch_2242944: @ 2242944 :thumb
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x0
	beq     branch_2242958
	ldr     r1, [sp, #0x14]
	mov     r0, r5
	bl      BeSeq_AddToPointer
	add     sp, #0x18
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2242958

.thumb
branch_2242958: @ 2242958 :thumb
	mov     r0, r5
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x3
	bne     branch_22429ac
	mov     r0, r5
	ldr     r1, [pc, #0xa0] @ 0x2242a08, (=0x296)
	add     r0, #0xf6
	strh    r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0x36
	add     r0, #0xf5
	strb    r1, [r0, #0x0]
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	bl      Function_2255560
	mov     r1, r5
	add     r1, #0xf8
	str     r0, [r1, #0x0]
	ldr     r1, [r5, #0x64]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r5, r0
	ldr     r0, [pc, #0x70] @ 0x22429fc, (=BattleData_Ability)
	ldrb    r1, [r1, r0]
	mov     r0, r5
	add     r0, #0xfc
	str     r1, [r0, #0x0]
	mov     r1, r5
	add     r1, #0x94
	ldr     r1, [r1, #0x0]
	mov     r0, r5
	bl      Function_2255560
	mov     r1, #0x1
	lsl     r1, r1, #8
	str     r0, [r5, r1]
	add     r2, r4, #0x1
	add     r0, r1, #0x4
	str     r2, [r5, r0]
	b       branch_22429e0
@ 0x22429ac

.thumb
branch_22429ac: @ 22429ac :thumb
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r7, r0
	bne     branch_22429b8
	ldr     r1, [pc, #0x54] @ 0x2242a0c, (=0x2fa)
	b       branch_22429ba
@ 0x22429b8

.thumb
branch_22429b8: @ 22429b8 :thumb
	ldr     r1, [pc, #0x54] @ 0x2242a10, (=0x2fd)
.thumb
branch_22429ba: @ 22429ba :thumb
	mov     r0, r5
	add     r0, #0xf6
	strh    r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0xc
	add     r0, #0xf5
	strb    r1, [r0, #0x0]
	mov     r1, r5
	add     r1, #0x94
	ldr     r1, [r1, #0x0]
	mov     r0, r5
	bl      Function_2255560
	mov     r1, r5
	add     r1, #0xf8
	str     r0, [r1, #0x0]
	add     r0, r4, #0x1
	add     r5, #0xfc
	str     r0, [r5, #0x0]
.thumb
branch_22429e0: @ 22429e0 :thumb
	add     r6, #0x18
	add     r1, r4, #0x1
	ldsb    r0, [r6, r1]
	add     r0, r0, r7
	strb    r0, [r6, r1]
	ldsb    r0, [r6, r1]
	cmp     r0, #0x0
	bge     branch_22429f4
	mov     r0, #0x0
	strb    r0, [r6, r1]
.thumb
branch_22429f4: @ 22429f4 :thumb
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x22429fa

.align 2
.word BattleData_Ability @ 0x22429fc
.word BattleData_213c @ 0x2242a00
.word BattleData_2db0 @ 0x2242a04
.word 0x296 @ 0x2242a08
.word 0x2fa @ 0x2242a0c
.word 0x2fd @ 0x2242a10



/* Input:
r0: MainBattleData
r1: BattleData
*/
thumb_func_start BeSeq_Cmd34
BeSeq_Cmd34: @ 2242a14 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r1
	str     r0, [sp, #0x0]

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r7, r0 @ Parameter 1

	mov     r0, r5
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x8] @ Parameter 2 TargetNr

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r6, r0 @ Parameter 3

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r4, r0 @ Parameter 4

	ldr     r0, [sp, #0x0] @ MainBattleData
	ldr     r2, [sp, #0x8] @ Parameter 2 TargetNr
	mov     r1, r5
	bl      GetTargetNrOfPkmn
	str     r0, [sp, #0x4] @ TargetNr

	ldr     r1, [sp, #0x4] @ TargetNr
	mov     r0, r5 @ BattleData
	mov     r2, r6 @ Parameter 3 PKMNBATTLEDATA_-constant
	mov     r3, #0x0
	bl      ReadPkmnBattleData1
	str     r0, [sp, #0xc]

	cmp     r7, #0x14
	bhi     branch_2242b00

	add     r1, r7, r7
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2242a6e

Jumppoints_2242a6e:
.hword branch_2242b00 - Jumppoints_2242a6e - 2 @ 0x0
.hword branch_2242b00 - Jumppoints_2242a6e - 2 @ 0x1
.hword branch_2242b00 - Jumppoints_2242a6e - 2 @ 0x2
.hword branch_2242b00 - Jumppoints_2242a6e - 2 @ 0x3
.hword branch_2242b00 - Jumppoints_2242a6e - 2 @ 0x4
.hword branch_2242b00 - Jumppoints_2242a6e - 2 @ 0x5
.hword branch_2242b00 - Jumppoints_2242a6e - 2 @ 0x6
.hword branch_2242a98 - Jumppoints_2242a6e - 2 @ 0x7 copy
.hword branch_2242a9c - Jumppoints_2242a6e - 2 @ 0x8 add
.hword branch_2242aa2 - Jumppoints_2242a6e - 2 @ 0x9 sub
.hword branch_2242aa8 - Jumppoints_2242a6e - 2 @ 0xa orr
.hword branch_2242aae - Jumppoints_2242a6e - 2 @ 0xb
.hword branch_2242aba - Jumppoints_2242a6e - 2 @ 0xc
.hword branch_2242ac2 - Jumppoints_2242a6e - 2 @ 0xd
.hword branch_2242acc - Jumppoints_2242a6e - 2 @ 0xe
.hword branch_2242ad2 - Jumppoints_2242a6e - 2 @ 0xf
.hword branch_2242ad8 - Jumppoints_2242a6e - 2 @ 0x10
.hword branch_2242ae2 - Jumppoints_2242a6e - 2 @ 0x11
.hword branch_2242ae8 - Jumppoints_2242a6e - 2 @ 0x12
.hword branch_2242af4 - Jumppoints_2242a6e - 2 @ 0x13
.hword branch_2242afa - Jumppoints_2242a6e - 2 @ 0x14

.thumb
branch_2242a98: @ 2242a98 :thumb
	str     r4, [sp, #0xc]
	b       branch_2242b04

branch_2242a9c: @ 2242a9c :thumb
	add     r0, r0, r4
	str     r0, [sp, #0xc]
	b       branch_2242b04

branch_2242aa2: @ 2242aa2 :thumb
	sub     r0, r0, r4
	str     r0, [sp, #0xc]
	b       branch_2242b04

branch_2242aa8: @ 2242aa8 :thumb
	orr     r0, r4
	str     r0, [sp, #0xc]
	b       branch_2242b04

branch_2242aae: @ 2242aae :thumb
	mov     r1, #0x0
	mvn     r1, r1
	eor     r1, r4
	and     r0, r1
	str     r0, [sp, #0xc]
	b       branch_2242b04

branch_2242aba: @ 2242aba :thumb
	mov     r1, r0
	mul     r1, r4
	str     r1, [sp, #0xc]
	b       branch_2242b04

branch_2242ac2: @ 2242ac2 :thumb
	mov     r1, r4
	blx     _s32_div_f
	str     r0, [sp, #0xc]
	b       branch_2242b04

branch_2242acc: @ 2242acc :thumb
	lsl     r0, r4
	str     r0, [sp, #0xc]
	b       branch_2242b04

branch_2242ad2: @ 2242ad2 :thumb
	lsr     r0, r4
	str     r0, [sp, #0xc]
	b       branch_2242b04

branch_2242ad8: @ 2242ad8 :thumb
	mov     r0, r4
	bl      Function_20787cc
	str     r0, [sp, #0xc]
	b       branch_2242b04

branch_2242ae2: @ 2242ae2 :thumb
	bl      ErrorHandling
	b       branch_2242b04

branch_2242ae8: @ 2242ae8 :thumb
	sub     r0, r0, r4
	str     r0, [sp, #0xc]
	bpl     branch_2242b04
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	b       branch_2242b04

branch_2242af4: @ 2242af4 :thumb
	eor     r0, r4
	str     r0, [sp, #0xc]
	b       branch_2242b04

branch_2242afa: @ 2242afa :thumb
	and     r0, r4
	str     r0, [sp, #0xc]
	b       branch_2242b04

branch_2242b00: @ 2242b00 :thumb
	bl      ErrorHandling
branch_2242b04: @ 2242b04 :thumb
	cmp     r6, #0x1a
	bne     branch_2242b1a
	ldr     r1, [sp, #0x4]
	ldr     r2, [sp, #0xc]
	lsl     r1, r1, #24
	lsl     r2, r2, #24
	mov     r0, r5
	lsr     r1, r1, #24
	lsr     r2, r2, #24
	bl      Function_224b928
branch_2242b1a: @ 2242b1a :thumb
	ldr     r1, [sp, #0x4]
	mov     r0, r5
	mov     r2, r6
	add     r3, sp, #0xc
	bl      WritePkmnBattleData1

	ldr     r0, [sp, #0x0] @ MainBattleData
	ldr     r2, [sp, #0x4]
	mov     r1, r5
	bl      Function_2253ec0

	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
thumb_func_end BeSeq_Cmd34


.align 2, 0
.thumb
BeSeq_Cmd35: @ 2242b38 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer
	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r7, r0
	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r4, r0
	mov     r0, r6
	mov     r1, r5
	mov     r2, r7
	bl      GetTargetNrOfPkmn
	ldr     r1, [pc, #0xc] @ 0x2242b70, (=0x218c)
	add     r2, r5, r1
	lsl     r1, r0, #2
	ldr     r0, [r2, r1]
	orr     r0, r4
	str     r0, [r2, r1]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2242b70

.word 0x218c @ 0x2242b70



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd36: @ 2242b74 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r6, r0

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r7, r0

	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      GetTargetNrOfPkmn
	mov     r1, r0
	mov     r0, r5
	mov     r2, r7
	bl      Function_2265ee8
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2242baa


/* Input:
r0: MainBattleData
r1: BattleData
*/
.align 2, 0
.thumb
BeSeq_Cmd37: @ 2242bac :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r1
	str     r0, [sp, #0x0]

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r7, r0 @ Parameter 1

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r4, r0 @ Parameter 2 TargetNr

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r6, r0 @ Parameter 3

	mov     r0, r5
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x8] @ Parameter 4

	cmp     r4, #0x0
	bne     branch_2242c22

	ldr     r0, [sp, #0x0] @ MainBattleData
	bl      GetMainBattleData_NrOfBattleTextPtrs
	mov     r4, #0x0
	str     r0, [sp, #0x4]
	cmp     r0, #0x0
	ble     branch_2242c64

branch_2242bee: @ 2242bee :thumb
	cmp     r7, #0x0
	bne     branch_2242c0c

	mov     r0, r5 @ BattleData
	mov     r1, r4 @ TargetNr
	bl      GetAbilityOfPkmnConsideringMultitypeWeatherLevitate
	cmp     r6, r0
	bne     branch_2242c18

	ldr     r1, [sp, #0x8]
	mov     r0, r5
	bl      BeSeq_AddToPointer
	add     r5, #BattleData_80
	str     r4, [r5] @ BattleData_80
	b       branch_2242c64

branch_2242c0c: @ 2242c0c :thumb
	mov     r0, r5
	mov     r1, r4
	bl      GetAbilityOfPkmnConsideringMultitypeWeatherLevitate
	cmp     r6, r0
	beq     branch_2242c64

branch_2242c18: @ 2242c18 :thumb
	ldr     r0, [sp, #0x4]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r0
	blt     branch_2242bee
	b       branch_2242c64

branch_2242c22: @ 2242c22 :thumb
	ldr     r0, [sp, #0x0] @ MainBattleData
	mov     r1, r5 @ BattleData
	mov     r2, r4 @ TargetNr
	bl      GetTargetNrOfPkmn
	mov     r4, r0
	cmp     r7, #0x0
	bne     branch_2242c4c

	mov     r0, r5
	mov     r1, r4
	bl      GetAbilityOfPkmnConsideringMultitypeWeatherLevitate
	cmp     r6, r0
	bne     branch_2242c64

	ldr     r1, [sp, #0x8]
	mov     r0, r5
	bl      BeSeq_AddToPointer
	add     r5, #BattleData_80
	str     r4, [r5] @ BattleData_80
	b       branch_2242c64

branch_2242c4c: @ 2242c4c :thumb
	mov     r0, r5
	mov     r1, r4
	bl      GetAbilityOfPkmnConsideringMultitypeWeatherLevitate
	cmp     r6, r0
	beq     branch_2242c64

	ldr     r1, [sp, #0x8]
	mov     r0, r5
	bl      BeSeq_AddToPointer
	add     r5, #BattleData_80
	str     r4, [r5] @ BattleData_80
branch_2242c64: @ 2242c64 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2242c6a


/* Input:
r0: MainBattleData
r1: BattleData
*/
.align 2, 0
.thumb
BeSeq_Cmd38: @ 2242c6c :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r7, r0

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r6, r0

	mov     r0, r7
	bl      Function_16_GetRandomNr
	add     r1, r4, #0x1
	blx     _s32_div_f
	mov     r0, #0x4d
	add     r1, r6, r1
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2242ca2


.align 2, 0
.thumb
BeSeq_Cmd39: @ 2242ca4 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r7, r0

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r6, r0 @ Parameter 1

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r4, r0 @ Parameter 2

	mov     r0, r5
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x0] @ Parameter 3

	mov     r0, r7
	mov     r1, r5
	mov     r2, r4
	bl      BeSeq_GetVariableAdress
	mov     r4, r0

	ldr     r2, [sp, #0x0]
	mov     r0, r7
	mov     r1, r5
	bl      BeSeq_GetVariableAdress
	mov     r1, r0
	cmp     r6, #0x14
	bhi     branch_2242db2

	add     r0, r6, r6
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2242cf2

Jumppoints_2242cf2:
.hword branch_2242db2 - Jumppoints_2242cf2 - 2
.hword branch_2242db2 - Jumppoints_2242cf2 - 2
.hword branch_2242db2 - Jumppoints_2242cf2 - 2
.hword branch_2242db2 - Jumppoints_2242cf2 - 2
.hword branch_2242db2 - Jumppoints_2242cf2 - 2
.hword branch_2242db2 - Jumppoints_2242cf2 - 2
.hword branch_2242db2 - Jumppoints_2242cf2 - 2
.hword branch_2242d1c - Jumppoints_2242cf2 - 2
.hword branch_2242d22 - Jumppoints_2242cf2 - 2
.hword branch_2242d2c - Jumppoints_2242cf2 - 2
.hword branch_2242d36 - Jumppoints_2242cf2 - 2
.hword branch_2242d40 - Jumppoints_2242cf2 - 2
.hword branch_2242d50 - Jumppoints_2242cf2 - 2
.hword branch_2242d5a - Jumppoints_2242cf2 - 2
.hword branch_2242d66 - Jumppoints_2242cf2 - 2
.hword branch_2242d72 - Jumppoints_2242cf2 - 2
.hword branch_2242d7e - Jumppoints_2242cf2 - 2
.hword branch_2242d88 - Jumppoints_2242cf2 - 2
.hword branch_2242d8e - Jumppoints_2242cf2 - 2
.hword branch_2242d9e - Jumppoints_2242cf2 - 2
.hword branch_2242da8 - Jumppoints_2242cf2 - 2
.thumb
branch_2242d1c: @ 2242d1c :thumb
	ldr     r0, [r1, #0x0]
	str     r0, [r4, #0x0]
	b       branch_2242db6
@ 0x2242d22

.thumb
branch_2242d22: @ 2242d22 :thumb
	ldr     r2, [r4, #0x0]
	ldr     r0, [r1, #0x0]
	add     r0, r2, r0
	str     r0, [r4, #0x0]
	b       branch_2242db6
@ 0x2242d2c

.thumb
branch_2242d2c: @ 2242d2c :thumb
	ldr     r2, [r4, #0x0]
	ldr     r0, [r1, #0x0]
	sub     r0, r2, r0
	str     r0, [r4, #0x0]
	b       branch_2242db6
@ 0x2242d36

.thumb
branch_2242d36: @ 2242d36 :thumb
	ldr     r2, [r4, #0x0]
	ldr     r0, [r1, #0x0]
	orr     r0, r2
	str     r0, [r4, #0x0]
	b       branch_2242db6
@ 0x2242d40

.thumb
branch_2242d40: @ 2242d40 :thumb
	mov     r0, #0x0
	ldr     r1, [r1, #0x0]
	mvn     r0, r0
	ldr     r2, [r4, #0x0]
	eor     r0, r1
	and     r0, r2
	str     r0, [r4, #0x0]
	b       branch_2242db6
@ 0x2242d50

.thumb
branch_2242d50: @ 2242d50 :thumb
	ldr     r2, [r4, #0x0]
	ldr     r0, [r1, #0x0]
	mul     r0, r2
	str     r0, [r4, #0x0]
	b       branch_2242db6
@ 0x2242d5a

.thumb
branch_2242d5a: @ 2242d5a :thumb
	ldr     r0, [r4, #0x0]
	ldr     r1, [r1, #0x0]
	blx     _s32_div_f
	str     r0, [r4, #0x0]
	b       branch_2242db6
@ 0x2242d66

.thumb
branch_2242d66: @ 2242d66 :thumb
	ldr     r2, [r4, #0x0]
	ldr     r0, [r1, #0x0]
	mov     r1, r2
	lsl     r1, r0
	str     r1, [r4, #0x0]
	b       branch_2242db6
@ 0x2242d72

.thumb
branch_2242d72: @ 2242d72 :thumb
	ldr     r2, [r4, #0x0]
	ldr     r0, [r1, #0x0]
	mov     r1, r2
	lsr     r1, r0
	str     r1, [r4, #0x0]
	b       branch_2242db6
@ 0x2242d7e

.thumb
branch_2242d7e: @ 2242d7e :thumb
	ldr     r0, [r1, #0x0]
	bl      Function_20787cc
	str     r0, [r4, #0x0]
	b       branch_2242db6
@ 0x2242d88

.thumb
branch_2242d88: @ 2242d88 :thumb
	ldr     r0, [r4, #0x0]
	str     r0, [r1, #0x0]
	b       branch_2242db6
@ 0x2242d8e

.thumb
branch_2242d8e: @ 2242d8e :thumb
	ldr     r2, [r4, #0x0]
	ldr     r0, [r1, #0x0]
	sub     r0, r2, r0
	str     r0, [r4, #0x0]
	bpl     branch_2242db6
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	b       branch_2242db6
@ 0x2242d9e

.thumb
branch_2242d9e: @ 2242d9e :thumb
	ldr     r2, [r4, #0x0]
	ldr     r0, [r1, #0x0]
	eor     r0, r2
	str     r0, [r4, #0x0]
	b       branch_2242db6
@ 0x2242da8

.thumb
branch_2242da8: @ 2242da8 :thumb
	ldr     r2, [r4, #0x0]
	ldr     r0, [r1, #0x0]
	and     r0, r2
	str     r0, [r4, #0x0]
	b       branch_2242db6

branch_2242db2: @ 2242db2 :thumb
	bl      ErrorHandling
branch_2242db6: @ 2242db6 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2242dba


/* Input:
r0: MainBattleData
r1: BattleData
*/
thumb_func_start BeSeq_Cmd3a
BeSeq_Cmd3a: @ 2242dbc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r4, r1
	mov     r7, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r5, r0

	mov     r0, r4
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x4]

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r6, r0          @ PKMNBATTTLEDATA_r6

	mov     r0, r4
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x8]

	ldr     r2, [sp, #0x4]
	mov     r0, r7
	mov     r1, r4
	bl      GetTargetNrOfPkmn
	str     r0, [sp, #0x0]

	ldr     r1, [sp, #0x0]
	mov     r0, r4
	mov     r2, r6
	mov     r3, #0x0
	bl      ReadPkmnBattleData1
	str     r0, [sp, #0xc]

	ldr     r2, [sp, #0x8]
	mov     r0, r7
	mov     r1, r4
	bl      BeSeq_GetVariableAdress
	mov     r1, r0

	cmp     r5, #0x14
	bhi     branch_2242ee2
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2242e22

Jumppoints_2242e22:
.hword branch_2242ee2 - Jumppoints_2242e22 - 2 @ 0x0
.hword branch_2242ee2 - Jumppoints_2242e22 - 2 @ 0x1
.hword branch_2242ee2 - Jumppoints_2242e22 - 2 @ 0x2
.hword branch_2242ee2 - Jumppoints_2242e22 - 2 @ 0x3
.hword branch_2242ee2 - Jumppoints_2242e22 - 2 @ 0x4
.hword branch_2242ee2 - Jumppoints_2242e22 - 2 @ 0x5
.hword branch_2242ee2 - Jumppoints_2242e22 - 2 @ 0x6
.hword branch_2242e4c - Jumppoints_2242e22 - 2 @ 0x7
.hword branch_2242e52 - Jumppoints_2242e22 - 2 @ 0x8
.hword branch_2242e5c - Jumppoints_2242e22 - 2 @ 0x9
.hword branch_2242e66 - Jumppoints_2242e22 - 2 @ 0xa
.hword branch_2242e70 - Jumppoints_2242e22 - 2 @ 0xb
.hword branch_2242e80 - Jumppoints_2242e22 - 2 @ 0xc
.hword branch_2242e8a - Jumppoints_2242e22 - 2 @ 0xd
.hword branch_2242e96 - Jumppoints_2242e22 - 2 @ 0xe
.hword branch_2242ea2 - Jumppoints_2242e22 - 2 @ 0xf
.hword branch_2242eae - Jumppoints_2242e22 - 2 @ 0x10
.hword branch_2242eb8 - Jumppoints_2242e22 - 2 @ 0x11
.hword branch_2242ebe - Jumppoints_2242e22 - 2 @ 0x12
.hword branch_2242ece - Jumppoints_2242e22 - 2 @ 0x13
.hword branch_2242ed8 - Jumppoints_2242e22 - 2 @ 0x14

.thumb
branch_2242e4c: @ 2242e4c :thumb
	ldr     r0, [r1, #0x0]
	str     r0, [sp, #0xc]
	b       branch_2242ee6

branch_2242e52: @ 2242e52 :thumb
	ldr     r2, [sp, #0xc]
	ldr     r0, [r1, #0x0]
	add     r0, r2, r0
	str     r0, [sp, #0xc]
	b       branch_2242ee6

branch_2242e5c: @ 2242e5c :thumb
	ldr     r2, [sp, #0xc]
	ldr     r0, [r1, #0x0]
	sub     r0, r2, r0
	str     r0, [sp, #0xc]
	b       branch_2242ee6

branch_2242e66: @ 2242e66 :thumb
	ldr     r2, [sp, #0xc]
	ldr     r0, [r1, #0x0]
	orr     r0, r2
	str     r0, [sp, #0xc]
	b       branch_2242ee6

branch_2242e70: @ 2242e70 :thumb
	ldr     r2, [r1, #0x0]
	mov     r1, #0x0
	mvn     r1, r1
	ldr     r0, [sp, #0xc]
	eor     r1, r2
	and     r0, r1
	str     r0, [sp, #0xc]
	b       branch_2242ee6

branch_2242e80: @ 2242e80 :thumb
	ldr     r2, [sp, #0xc]
	ldr     r0, [r1, #0x0]
	mul     r0, r2
	str     r0, [sp, #0xc]
	b       branch_2242ee6

branch_2242e8a: @ 2242e8a :thumb
	ldr     r0, [sp, #0xc]
	ldr     r1, [r1, #0x0]
	blx     _s32_div_f
	str     r0, [sp, #0xc]
	b       branch_2242ee6

branch_2242e96: @ 2242e96 :thumb
	ldr     r2, [sp, #0xc]
	ldr     r0, [r1, #0x0]
	mov     r1, r2
	lsl     r1, r0
	str     r1, [sp, #0xc]
	b       branch_2242ee6

branch_2242ea2: @ 2242ea2 :thumb
	ldr     r2, [sp, #0xc]
	ldr     r0, [r1, #0x0]
	mov     r1, r2
	lsr     r1, r0
	str     r1, [sp, #0xc]
	b       branch_2242ee6

branch_2242eae: @ 2242eae :thumb
	ldr     r0, [r1, #0x0]
	bl      Function_20787cc
	str     r0, [sp, #0xc]
	b       branch_2242ee6

branch_2242eb8: @ 2242eb8 :thumb
	ldr     r0, [sp, #0xc]
	str     r0, [r1, #0x0]
	b       branch_2242ee6

branch_2242ebe: @ 2242ebe :thumb
	ldr     r2, [sp, #0xc]
	ldr     r0, [r1, #0x0]
	sub     r0, r2, r0
	str     r0, [sp, #0xc]
	bpl     branch_2242ee6
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	b       branch_2242ee6

branch_2242ece: @ 2242ece :thumb
	ldr     r2, [sp, #0xc]
	ldr     r0, [r1, #0x0]
	eor     r0, r2
	str     r0, [sp, #0xc]
	b       branch_2242ee6

branch_2242ed8: @ 2242ed8 :thumb
	ldr     r2, [sp, #0xc]
	ldr     r0, [r1, #0x0]
	and     r0, r2
	str     r0, [sp, #0xc]
	b       branch_2242ee6

branch_2242ee2: @ 2242ee2 :thumb
	bl      ErrorHandling
branch_2242ee6: @ 2242ee6 :thumb
	cmp     r5, #0x11
	beq     branch_2242f16
	cmp     r6, #0x1a
	bne     branch_2242f00

	ldr     r1, [sp, #0x0]
	ldr     r2, [sp, #0xc]
	lsl     r1, r1, #24
	lsl     r2, r2, #24
	mov     r0, r4
	lsr     r1, r1, #24
	lsr     r2, r2, #24
	bl      Function_224b928

branch_2242f00: @ 2242f00 :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, r4
	mov     r2, r6
	add     r3, sp, #0xc
	bl      WritePkmnBattleData1

	ldr     r2, [sp, #0x0]
	mov     r0, r7
	mov     r1, r4
	bl      Function_2253ec0

branch_2242f16: @ 2242f16 :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
thumb_func_end BeSeq_Cmd3a


thumb_func_start BeSeq_Jump
BeSeq_Jump: @ 2242f1c :thumb
	push    {r4,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord

	mov     r1, r0
	mov     r0, r4
	bl      BeSeq_AddToPointer

	mov     r0, #0x0
	pop     {r4,pc}
thumb_func_end BeSeq_Jump


/* Input:
r0: MainBattleData
r1: BattleData
*/
.align 2, 0
.thumb
BeSeq_Cmd3c: @ 2242f3c :thumb
	push    {r4,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r2, r0

	mov     r0, r4
	mov     r1, #SubSeq_Narc
	bl      Call_Call_LoadFromNARC_AddNewSeqScript

	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2242f5c


/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd3d: @ 2242f5c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      BeSeq_GetVariableAdress
	mov     r2, r0

	ldr     r2, [r2]
	mov     r0, r4
	mov     r1, #SubSeq_Narc
	bl      Call_Call_LoadFromNARC_AddNewSeqScript

	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2242f8a


/* Input:
r0: MainBattleData
r1: BattleData
*/
.align 2, 0
.thumb
BeSeq_Cmd3e: @ 2242f8c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r1
	mov     r6, r0
	mov     r4, #0x0
	bl      LoadMainBattleData_2c
	mov     r7, r0

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	ldr     r1, [r5, #0x64]
	lsl     r0, r1, #1
	add     r2, r5, r0
	ldr     r0, [pc, #0xe0] @ 0x224308c, (=BattleData_3084)
	ldrh    r2, [r2, r0]
	cmp     r2, #0x0
	beq     branch_2242fb6
	mov     r4, r2
	b       branch_2243002

branch_2242fb6: @ 2242fb6 :thumb
	mov     r2, #0x2
	tst     r2, r7
	beq     branch_2243002
	lsl     r1, r1, #3
	add     r4, r5, r1
	mov     r1, r0
	add     r1, #0xe
	ldrh    r3, [r4, r1]
	mov     r1, r0
	add     r1, #0xc
	ldrh    r2, [r4, r1]
	mov     r1, r0
	add     r1, #0x8
	add     r0, #0xa
	ldrh    r1, [r4, r1]
	ldrh    r0, [r4, r0]
	add     r0, r1, r0
	add     r0, r2, r0
	add     r4, r3, r0
	beq     branch_2243002
	ldr     r7, [pc, #0xb0] @ 0x2243090, (=BattleData_308c)
branch_2242fe0: @ 2242fe0 :thumb
	mov     r0, r6
	bl      Function_16_GetRandomNr
	ldr     r1, [r5, #0x64]
	lsl     r3, r0, #30
	lsl     r2, r1, #3
	lsr     r1, r0, #31
	sub     r3, r3, r1
	mov     r0, #0x1e
	ror     r3, r0
	add     r0, r1, r3
	lsl     r1, r0, #1
	add     r0, r5, r2
	add     r0, r1, r0
	ldrh    r4, [r0, r7]
	cmp     r4, #0x0
	beq     branch_2242fe0

branch_2243002: @ 2243002 :thumb
	cmp     r4, #0x0
	beq     branch_224306c
	lsl     r1, r4, #16
	mov     r0, r5
	lsr     r1, r1, #16
	bl      Function_225b084
	cmp     r0, #0x1
	bne     branch_224306c
	ldr     r1, [pc, #0x7c] @ 0x2243094, (=BattleData_213c)
	lsl     r3, r4, #16
	ldr     r2, [r5, r1]
	mov     r0, #0x1
	bic     r2, r0
	str     r2, [r5, r1]
	ldr     r2, [r5, r1]
	ldr     r0, [pc, #0x74] @ 0x2243098, (=0xffffbfff)
	lsr     r3, r3, #16
	and     r0, r2
	str     r0, [r5, r1]
	ldr     r0, [pc, #0x70] @ 0x224309c, (=BattleData_WazaSeqFileNr)
	mov     r1, r5
	str     r4, [r5, r0]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r2, [r5, #0x64]
	mov     r0, r6
	bl      Function_2253954
	str     r0, [r5, #0x6c]
	cmp     r0, #0xff
	bne     branch_2243056
	mov     r2, #0x26
	str     r2, [r5, #0xc]
	mov     r0, r5
	mov     r1, #SubSeq_Narc
	add     r2, #0xf3
	bl      Call_Call_LoadFromNARC
	b       branch_2243086

branch_2243056: @ 2243056 :thumb
	ldr     r1, [r5, #0x64]
	lsl     r1, r1, #4
	add     r2, r5, r1
	ldr     r1, [pc, #0x40] @ 0x22430a0, (=0x21ac)
	str     r0, [r2, r1]

	mov     r0, r5
	mov     r1, #WazaSeq_Narc
	mov     r2, r4
	bl      Call_Call_LoadFromNARC
	b       branch_2243086

branch_224306c: @ 224306c :thumb
	ldr     r2, [r5, #0x64]
	mov     r0, #0xb5
	lsl     r0, r0, #2
	mov     r1, #0x1c
	mov     r3, r2
	mul     r3, r1
	add     r0, r5, r0
	ldr     r2, [r0, r3]
	mov     r1, #0x1
	bic     r2, r1
	mov     r1, #0x1
	orr     r1, r2
	str     r1, [r0, r3]
branch_2243086: @ 2243086 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x224308c

.word BattleData_3084 @ 0x224308c
.word BattleData_308c @ 0x2243090
.word BattleData_213c @ 0x2243094
.word 0xffffbfff @ 0x2243098
.word BattleData_WazaSeqFileNr @ 0x224309c
.word 0x21ac @ 0x22430a0



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd3f: @ 22430a4 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      GetMainBattleData_NrOfBattleTextPtrs
	mov     r2, #0x0
	cmp     r0, #0x0
	ble     branch_22430e4

	ldr     r6, [pc, #0x28] @ 0x22430e8, (=BattleData_StatLevel)
	mov     r1, #0x6
	mov     r5, r6
	add     r5, #0x58                   @ BattleData_2db0
branch_22430c6: @ 22430c6 :thumb
	mov     r7, #0x0
branch_22430c8: @ 22430c8 :thumb
	add     r3, r4, r7
	.hword  0x1c7f @ add r7, r7, #0x1
	strb    r1, [r3, r6]
	cmp     r7, #0x8
	blt     branch_22430c8

	ldr     r3, [pc, #0x18] @ 0x22430ec, (=BattleData_2db0)
	.hword  0x1c52 @ add r2, r2, #0x1
	ldr     r7, [r4, r3]
	ldr     r3, [pc, #0x14] @ 0x22430f0, (=0xffefffff)
	and     r3, r7
	str     r3, [r4, r5]
	add     r4, #PkmnBattleData_Size
	cmp     r2, r0
	blt     branch_22430c6

branch_22430e4: @ 22430e4 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22430e8

.word BattleData_StatLevel @ 0x22430e8
.word BattleData_2db0 @ 0x22430ec
.word 0xffefffff @ 0x22430f0



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd40: @ 22430f4 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      GetTargetNrOfPkmn
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_2253ef0
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2243120


/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd41: @ 2243120 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord

	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      GetTargetNrOfPkmn
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_2253f20
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224314c


/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd42: @ 224314c :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r6, r0

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r7, r0

	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      GetTargetNrOfPkmn
	mov     r1, r0
	mov     r0, r5
	mov     r2, r7
	bl      Function_2265fb8
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2243182


/* Input:
r0: MainBattleData
r1: BattleData
*/
.align 2, 0
.thumb
BeSeq_Cmd43: @ 2243184 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r6, r0

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r7, r0

	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      GetTargetNrOfPkmn
	mov     r1, r0
	mov     r0, r5
	mov     r2, r7
	bl      Function_2265fd8
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22431ba


.align 2, 0
.thumb
Function_22431bc: @ 22431bc :thumb
	push    {r4-r7,lr}
	add     sp, #-0x3c
	mov     r7, r0
	mov     r5, r1
	str     r2, [sp, #0x0]
	mov     r0, #0x5
	mov     r1, #0x6c
	bl      malloc
	mov     r4, r0
	ldr     r0, [sp, #0x0]
	mov     r6, r7
	lsl     r0, r0, #1
	add     r6, #0xa0
	str     r0, [sp, #0x4]
	ldrh    r0, [r6, r0]
	add     r1, sp, #0x8
	bl      LoadFromNARC_Trdata
	ldr     r0, [sp, #0x4]
	mov     r1, r4
	ldrh    r0, [r6, r0]
	bl      LoadFromNARC_Trpoke
	add     r0, sp, #0x8
	ldrb    r1, [r0, #0x0]
	cmp     r1, #0x3
	bhi     branch_2243208
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2243200

Jumppoints_2243200:
.hword branch_2243208 - Jumppoints_2243200 - 2
.hword branch_224321a - Jumppoints_2243200 - 2
.hword branch_224322a - Jumppoints_2243200 - 2
.hword branch_224323c - Jumppoints_2243200 - 2
.thumb
branch_2243208: @ 2243208 :thumb
	add     r0, sp, #0x8
	ldrb    r0, [r0, #0x3]
	.hword  0x1e40 @ sub r0, r0, #0x1
	lsl     r0, r0, #3
	add     r0, r4, r0
	ldrh    r0, [r0, #0x2]
	lsl     r0, r0, #24
	lsr     r1, r0, #24
	b       branch_224324c

branch_224321a: @ 224321a :thumb
	ldrb    r0, [r0, #0x3]
	.hword  0x1e40 @ sub r0, r0, #0x1
	lsl     r0, r0, #4
	add     r0, r4, r0
	ldrh    r0, [r0, #0x2]
	lsl     r0, r0, #24
	lsr     r1, r0, #24
	b       branch_224324c

branch_224322a: @ 224322a :thumb
	ldrb    r0, [r0, #0x3]
	sub     r1, r0, #0x1
	mov     r0, #0xa
	mul     r0, r1
	add     r0, r4, r0
	ldrh    r0, [r0, #0x2]
	lsl     r0, r0, #24
	lsr     r1, r0, #24
	b       branch_224324c

branch_224323c: @ 224323c :thumb
	ldrb    r0, [r0, #0x3]
	sub     r1, r0, #0x1
	mov     r0, #0x12
	mul     r0, r1
	add     r0, r4, r0
	ldrh    r0, [r0, #0x2]
	lsl     r0, r0, #24
	lsr     r1, r0, #24
branch_224324c: @ 224324c :thumb
	ldr     r2, [r7, #0x2c]
	mov     r0, #0x10
	tst     r0, r2
	bne     branch_2243258
	cmp     r2, #0x4b
	bne     branch_224326e
branch_2243258: @ 2243258 :thumb
	add     r0, sp, #0x8
	ldrb    r2, [r0, #0x1]
	ldr     r0, [pc, #0x4c] @ 0x22432ac, (=Unknown_2270b20)
	lsl     r1, r1, #2
	ldrb    r0, [r0, r2]
	ldr     r2, [pc, #0x4c] @ 0x22432b0, (=BattleData_2168)
	ldr     r2, [r5, r2]
	mov     r5, r0
	mul     r1, r2
	mul     r5, r1
	b       branch_224329e

branch_224326e: @ 224326e :thumb
	mov     r0, #0x2
	tst     r0, r2
	add     r0, sp, #0x8
	beq     branch_224328c
	ldrb    r2, [r0, #0x1]
	ldr     r0, [pc, #0x30] @ 0x22432ac, (=Unknown_2270b20)
	lsl     r1, r1, #2
	ldrb    r0, [r0, r2]
	ldr     r2, [pc, #0x30] @ 0x22432b0, (=BattleData_2168)
	ldr     r2, [r5, r2]
	mov     r5, r0
	mul     r1, r2
	lsl     r1, r1, #1
	mul     r5, r1
	b       branch_224329e

branch_224328c: @ 224328c :thumb
	ldrb    r2, [r0, #0x1]
	ldr     r0, [pc, #0x1c] @ 0x22432ac, (=Unknown_2270b20)
	lsl     r1, r1, #2
	ldrb    r0, [r0, r2]
	ldr     r2, [pc, #0x18] @ 0x22432b0, (=BattleData_2168)
	ldr     r2, [r5, r2]
	mov     r5, r0
	mul     r1, r2
	mul     r5, r1
branch_224329e: @ 224329e :thumb
	mov     r0, r4
	bl      free
	mov     r0, r5
	add     sp, #0x3c
	pop     {r4-r7,pc}
@ 0x22432aa

.align 2
.word Unknown_2270b20 @ 0x22432ac
.word BattleData_2168 @ 0x22432b0



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd44: @ 22432b4 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r5, r0

	mov     r0, r6
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	ldr     r0, [pc, #0x6c] @ 0x2243330, (=MainBattleData_2420)
	ldrb    r0, [r5, r0]
	cmp     r0, #0x1
	bne     branch_22432fe
	mov     r0, r5
	mov     r1, r6
	mov     r2, #0x1
	bl      Function_22431bc
	mov     r4, r0
	ldr     r1, [r5, #0x2c]
	mov     r0, #0x10
	tst     r0, r1
	bne     branch_22432e2
	cmp     r1, #0x4b
	bne     branch_22432ee
branch_22432e2: @ 22432e2 :thumb
	mov     r0, r5
	mov     r1, r6
	mov     r2, #0x3
	bl      Function_22431bc
	add     r4, r4, r0
branch_22432ee: @ 22432ee :thumb
	mov     r0, r5
	mov     r1, #0x0
	bl      GetMainBattleData_TrainerData
	mov     r1, r4
	bl      GiveMoney
	b       branch_2243316

branch_22432fe: @ 22432fe :thumb
	ldr     r0, [r5, #0x68]
	ldr     r1, [r5, #0x48]
	bl      Function_223f904
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x0
	bl      GetMainBattleData_TrainerData
	mov     r1, r4
	bl      TakeMoney
branch_2243316: @ 2243316 :thumb
	cmp     r4, #0x0
	beq     branch_2243322
	mov     r0, #0x13
	lsl     r0, r0, #4
	str     r4, [r6, r0]
	b       branch_224332a

branch_2243322: @ 2243322 :thumb
	mov     r0, #0x13
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r6, r0]
branch_224332a: @ 224332a :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x224332e

.align 2
.word MainBattleData_2420 @ 0x2243330



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd45: @ 2243334 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r6, r0

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r7, r0

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r4, r0

	mov     r0, r6
	bl      Function_223edac
	cmp     r0, #0x1
	beq     branch_224336c
	cmp     r4, #0xf
	beq     branch_224336c
	cmp     r4, #0x10
	beq     branch_224336c
	mov     r0, r4
	sub     r0, #0x19
	cmp     r0, #0x1
	bhi     branch_2243392
branch_224336c: @ 224336c :thumb
	mov     r0, r6
	mov     r1, r5
	mov     r2, r7
	bl      GetTargetNrOfPkmn
	mov     r7, r0
	mov     r0, r5
	mov     r1, r7
	mov     r2, r4
	bl      Function_225b1dc
	cmp     r0, #0x1
	bne     branch_2243392
	mov     r0, r6
	mov     r1, r5
	mov     r2, r7
	mov     r3, r4
	bl      Function_2265ff8
branch_2243392: @ 2243392 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2243396


/* Input:
r0: MainBattleData
r1: BattleData
*/
.align 2, 0
.thumb
BeSeq_Cmd46: @ 2243398 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r1
	mov     r6, r0

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r7, r0

	mov     r0, r5
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x4]

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r4, r0

	mov     r0, r6
	bl      Function_223edac
	cmp     r0, #0x1
	beq     branch_22433da
	cmp     r4, #0xf
	beq     branch_22433da
	cmp     r4, #0x10
	beq     branch_22433da
	mov     r0, r4
	sub     r0, #0x19
	cmp     r0, #0x1
	bhi     branch_224341c
branch_22433da: @ 22433da :thumb
	mov     r0, r6
	mov     r1, r5
	mov     r2, r7
	bl      GetTargetNrOfPkmn
	mov     r7, r0
	ldr     r2, [sp, #0x4]
	mov     r0, r6
	mov     r1, r5
	bl      GetTargetNrOfPkmn
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r1, r7
	mov     r2, r4
	bl      Function_225b1dc
	cmp     r0, #0x1
	bne     branch_224341c
	ldr     r1, [sp, #0x8]
	mov     r0, r5
	mov     r2, r4
	bl      Function_225b1dc
	cmp     r0, #0x1
	bne     branch_224341c
	ldr     r3, [sp, #0x8]
	mov     r0, r6
	mov     r1, r5
	mov     r2, r7
	str     r4, [sp, #0x0]
	bl      Function_2266028
branch_224341c: @ 224341c :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2243422


/* Input:
r0: MainBattleData
r1: BattleData
*/
.align 2, 0
.thumb
BeSeq_Cmd47: @ 2243424 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r7, r0

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r6, r0

	mov     r0, r7
	mov     r1, r5
	mov     r2, r4
	bl      GetTargetNrOfPkmn
	str     r0, [sp, #0x0]

	mov     r0, r7
	mov     r1, r5
	mov     r2, r6
	bl      BeSeq_GetVariableAdress
	mov     r4, r0

	mov     r0, r7
	bl      Function_223edac
	cmp     r0, #0x1
	beq     branch_2243474
	cmp     r6, #0xf
	beq     branch_2243474
	cmp     r6, #0x10
	beq     branch_2243474
	ldr     r0, [r4, #0x0]
	sub     r0, #0x19
	cmp     r0, #0x1
	bhi     branch_224348e
branch_2243474: @ 2243474 :thumb
	ldr     r1, [sp, #0x0]
	ldr     r2, [r4, #0x0]
	mov     r0, r5
	bl      Function_225b1dc
	cmp     r0, #0x1
	bne     branch_224348e
	ldr     r2, [sp, #0x0]
	ldr     r3, [r4, #0x0]
	mov     r0, r7
	mov     r1, r5
	bl      Function_2265ff8
branch_224348e: @ 224348e :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2243492


/* Input:
r0: MainBattleData
r1: BattleData
*/
.align 2, 0
.thumb
BeSeq_Cmd48: @ 2243494 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      GetTargetNrOfPkmn
	mov     r2, r0
	mov     r1, r4
	ldr     r3, [pc, #0x10] @ 0x22434c8, (=BattleData_219c)
	add     r4, r4, r2
	ldrb    r3, [r4, r3]
	mov     r0, r5
	bl      Function_2266058
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22434c6

.align 2
.word BattleData_219c @ 0x22434c8



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd49: @ 22434cc :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      GetTargetNrOfPkmn
	mov     r2, r0
	mov     r1, r4
	ldr     r3, [pc, #0x10] @ 0x2243500, (=BattleData_219c)
	add     r4, r4, r2
	ldrb    r3, [r4, r3]
	mov     r0, r5
	bl      Function_226609c
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22434fe

.align 2
.word BattleData_219c @ 0x2243500



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd4a: @ 2243504 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      GetTargetNrOfPkmn
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_22660e8
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2243530


/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd4b: @ 2243530 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      GetTargetNrOfPkmn
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_2266100
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224355c


/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd4c: @ 224355c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      GetTargetNrOfPkmn
	mov     r2, #0x13
	lsl     r2, r2, #4
	mov     r1, r0
	ldr     r2, [r4, r2]
	mov     r0, r5
	bl      Function_2265fd8
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224358c


/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd4d: @ 224358c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r1
	str     r0, [sp, #0x0]

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x4]

	ldr     r1, [r4, #0x64]
	mov     r0, r4
	bl      GetAbilityOfPkmnConsideringMultitypeWeatherLevitate
	cmp     r0, #0x79
	bne     branch_22435be
	ldr     r1, [sp, #0x4]
	mov     r0, r4
	bl      BeSeq_AddToPointer
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r4-r7,pc}

branch_22435be: @ 22435be :thumb
	ldr     r1, [r4, #0x64]
	mov     r0, #0xc0
	mul     r0, r1
	add     r2, r4, r0
	ldr     r0, [pc, #0x134] @ 0x22436fc, (=BattleData_Move)
	mov     r6, #0x0
branch_22435ca: @ 22435ca :thumb
	ldrh    r1, [r2, r0]
	cmp     r1, #0x0
	beq     branch_22435d8
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r6, #0x4
	blt     branch_22435ca
branch_22435d8: @ 22435d8 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	cmp     r6, #0x0
	ble     branch_2243650
	mov     r7, r0
branch_22435e2: @ 22435e2 :thumb
	ldr     r1, [r4, #0x64]
	mov     r0, #0xc0
	mul     r0, r1
	add     r0, r4, r0
	add     r2, r7, r0
	ldr     r0, [pc, #0x10c] @ 0x22436fc, (=BattleData_Move)
	ldrh    r0, [r2, r0]
	cmp     r0, #0xa0
	beq     branch_2243644
	lsl     r0, r0, #4
	add     r2, r4, r0
	ldr     r0, [pc, #0x104] @ 0x2243700, (=0x3e2)
	ldrb    r5, [r2, r0]
	cmp     r5, #0x9
	bne     branch_2243624
	mov     r0, r4
	mov     r2, #PKMNBATTLEDATA_TYPE1
	mov     r3, #0x0
	bl      ReadPkmnBattleData1
	cmp     r0, #0x7
	beq     branch_224361e
	ldr     r1, [r4, #0x64]
	mov     r0, r4
	mov     r2, #PKMNBATTLEDATA_TYPE2
	mov     r3, #0x0
	bl      ReadPkmnBattleData1
	cmp     r0, #0x7
	bne     branch_2243622
branch_224361e: @ 224361e :thumb
	mov     r5, #0x7
	b       branch_2243624

branch_2243622: @ 2243622 :thumb
	mov     r5, #0x0
branch_2243624: @ 2243624 :thumb
	ldr     r1, [r4, #0x64]
	mov     r0, r4
	mov     r2, #PKMNBATTLEDATA_TYPE1
	mov     r3, #0x0
	bl      ReadPkmnBattleData1
	cmp     r5, r0
	beq     branch_2243644
	ldr     r1, [r4, #0x64]
	mov     r0, r4
	mov     r2, #PKMNBATTLEDATA_TYPE2
	mov     r3, #0x0
	bl      ReadPkmnBattleData1
	cmp     r5, r0
	bne     branch_2243650
branch_2243644: @ 2243644 :thumb
	ldr     r0, [sp, #0x8]
	.hword  0x1cbf @ add r7, r7, #0x2
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x8]
	cmp     r0, r6
	blt     branch_22435e2
branch_2243650: @ 2243650 :thumb
	ldr     r0, [sp, #0x8]
	cmp     r0, r6
	bne     branch_2243660
	ldr     r1, [sp, #0x4]
	mov     r0, r4
	bl      BeSeq_AddToPointer
	b       branch_22436f4

branch_2243660: @ 2243660 :thumb
	ldr     r7, [pc, #0x98] @ 0x22436fc, (=BattleData_Move)
branch_2243662: @ 2243662 :thumb
	ldr     r0, [sp, #0x0]
	bl      Function_16_GetRandomNr
	mov     r1, r6
	blx     _s32_div_f
	ldr     r2, [r4, #0x64]
	mov     r0, #0xc0
	mul     r0, r2
	lsl     r1, r1, #1
	add     r0, r4, r0
	add     r0, r1, r0
	ldrh    r0, [r0, r7]
	cmp     r0, #0xa0
	beq     branch_2243662
	lsl     r0, r0, #4
	add     r1, r4, r0
	ldr     r0, [pc, #0x78] @ 0x2243700, (=0x3e2)
	ldrb    r5, [r1, r0]
	cmp     r5, #0x9
	bne     branch_22436b2
	mov     r1, r2
	mov     r0, r4
	mov     r2, #PKMNBATTLEDATA_TYPE1
	mov     r3, #0x0
	bl      ReadPkmnBattleData1
	cmp     r0, #0x7
	beq     branch_22436ac
	ldr     r1, [r4, #0x64]
	mov     r0, r4
	mov     r2, #PKMNBATTLEDATA_TYPE2
	mov     r3, #0x0
	bl      ReadPkmnBattleData1
	cmp     r0, #0x7
	bne     branch_22436b0
branch_22436ac: @ 22436ac :thumb
	mov     r5, #0x7
	b       branch_22436b2

branch_22436b0: @ 22436b0 :thumb
	mov     r5, #0x0
branch_22436b2: @ 22436b2 :thumb
	ldr     r1, [r4, #0x64]
	mov     r0, r4
	mov     r2, #PKMNBATTLEDATA_TYPE1
	mov     r3, #0x0
	bl      ReadPkmnBattleData1
	cmp     r5, r0
	beq     branch_2243662
	ldr     r1, [r4, #0x64]
	mov     r0, r4
	mov     r2, #PKMNBATTLEDATA_TYPE2
	mov     r3, #0x0
	bl      ReadPkmnBattleData1
	cmp     r5, r0
	beq     branch_2243662
	ldr     r1, [r4, #0x64]
	lsl     r0, r5, #24
	mov     r3, r1
	mov     r2, #0xc0
	mul     r3, r2
	ldr     r1, [pc, #0x24] @ 0x2243704, (=BattleData_Type1)
	lsr     r0, r0, #24
	add     r3, r4, r3
	strb    r0, [r3, r1]
	ldr     r3, [r4, #0x64]
	.hword  0x1c49 @ add r1, r1, #0x1
	mov     r6, r3
	mul     r6, r2
	add     r3, r4, r6
	strb    r0, [r3, r1]
	add     r2, #0x70
	str     r5, [r4, r2]
branch_22436f4: @ 22436f4 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x22436fa

.align 2
.word BattleData_Move @ 0x22436fc
.word 0x3e2 @ 0x2243700
.word BattleData_Type1 @ 0x2243704



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd4e: @ 2243708 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r1
	str     r0, [sp, #0x0]

	mov     r0, r6
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r6
	bl      BeSeq_LoadWord
	mov     r7, r0

	mov     r0, r6
	bl      BeSeq_LoadWord
	mov     r4, r0

	mov     r0, r6
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x4]

	mov     r0, r6
	bl      BeSeq_LoadWord
	mov     r5, r0

	ldr     r0, [sp, #0x0]
	mov     r1, r6
	mov     r2, r4
	bl      BeSeq_GetVariableAdress
	mov     r4, r0
	ldr     r0, [sp, #0x0]
	ldr     r2, [sp, #0x4]
	mov     r1, r6
	bl      BeSeq_GetVariableAdress
	cmp     r7, #0x6
	bhi     branch_22437c0
	add     r1, r7, r7
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x224375e

Jumppoints_224375e:
.hword branch_224376c - Jumppoints_224375e - 2
.hword branch_2243778 - Jumppoints_224375e - 2
.hword branch_2243784 - Jumppoints_224375e - 2
.hword branch_2243790 - Jumppoints_224375e - 2
.hword branch_224379c - Jumppoints_224375e - 2
.hword branch_22437a8 - Jumppoints_224375e - 2
.hword branch_22437b4 - Jumppoints_224375e - 2
.thumb
branch_224376c: @ 224376c :thumb
	ldr     r1, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	cmp     r1, r0
	beq     branch_22437c0
	mov     r5, #0x0
	b       branch_22437c0
@ 0x2243778

.thumb
branch_2243778: @ 2243778 :thumb
	ldr     r1, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	cmp     r1, r0
	bne     branch_22437c0
	mov     r5, #0x0
	b       branch_22437c0
@ 0x2243784

.thumb
branch_2243784: @ 2243784 :thumb
	ldr     r1, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	cmp     r1, r0
	bhi     branch_22437c0
	mov     r5, #0x0
	b       branch_22437c0
@ 0x2243790

.thumb
branch_2243790: @ 2243790 :thumb
	ldr     r1, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	cmp     r1, r0
	bls     branch_22437c0
	mov     r5, #0x0
	b       branch_22437c0
@ 0x224379c

.thumb
branch_224379c: @ 224379c :thumb
	ldr     r1, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	tst     r0, r1
	bne     branch_22437c0
	mov     r5, #0x0
	b       branch_22437c0
@ 0x22437a8

.thumb
branch_22437a8: @ 22437a8 :thumb
	ldr     r1, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	tst     r0, r1
	beq     branch_22437c0
	mov     r5, #0x0
	b       branch_22437c0

branch_22437b4: @ 22437b4 :thumb
	ldr     r1, [r0, #0x0]
	ldr     r0, [r4, #0x0]
	and     r0, r1
	cmp     r1, r0
	beq     branch_22437c0
	mov     r5, #0x0
branch_22437c0: @ 22437c0 :thumb
	cmp     r5, #0x0
	beq     branch_22437cc
	mov     r0, r6
	mov     r1, r5
	bl      BeSeq_AddToPointer
branch_22437cc: @ 22437cc :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x22437d2


/* Input:
r0: MainBattleData
r1: BattleData
*/
.align 2, 0
.thumb
BeSeq_Cmd4f: @ 22437d4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r6, r1
	str     r0, [sp, #0x0]

	mov     r0, r6
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r6
	bl      BeSeq_LoadWord
	mov     r7, r0

	mov     r0, r6
	bl      BeSeq_LoadWord
	mov     r4, r0

	mov     r0, r6
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x4]

	mov     r0, r6
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x8]

	mov     r0, r6
	bl      BeSeq_LoadWord
	mov     r5, r0

	ldr     r0, [sp, #0x0]
	mov     r1, r6
	mov     r2, r4
	bl      GetTargetNrOfPkmn
	mov     r1, r0
	ldr     r2, [sp, #0x4]
	mov     r0, r6
	mov     r3, #0x0
	bl      ReadPkmnBattleData1
	mov     r4, r0
	ldr     r0, [sp, #0x0]
	ldr     r2, [sp, #0x8]
	mov     r1, r6
	bl      BeSeq_GetVariableAdress
	cmp     r7, #0x6
	bhi     branch_2243894
	add     r1, r7, r7
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x224383e

Jumppoints_224383e:
.hword branch_224384c - Jumppoints_224383e - 2
.hword branch_2243856 - Jumppoints_224383e - 2
.hword branch_2243860 - Jumppoints_224383e - 2
.hword branch_224386a - Jumppoints_224383e - 2
.hword branch_2243874 - Jumppoints_224383e - 2
.hword branch_224387e - Jumppoints_224383e - 2
.hword branch_2243888 - Jumppoints_224383e - 2
.thumb
branch_224384c: @ 224384c :thumb
	ldr     r0, [r0, #0x0]
	cmp     r4, r0
	beq     branch_2243894
	mov     r5, #0x0
	b       branch_2243894
@ 0x2243856

.thumb
branch_2243856: @ 2243856 :thumb
	ldr     r0, [r0, #0x0]
	cmp     r4, r0
	bne     branch_2243894
	mov     r5, #0x0
	b       branch_2243894
@ 0x2243860

.thumb
branch_2243860: @ 2243860 :thumb
	ldr     r0, [r0, #0x0]
	cmp     r4, r0
	bhi     branch_2243894
	mov     r5, #0x0
	b       branch_2243894
@ 0x224386a

.thumb
branch_224386a: @ 224386a :thumb
	ldr     r0, [r0, #0x0]
	cmp     r4, r0
	bls     branch_2243894
	mov     r5, #0x0
	b       branch_2243894
@ 0x2243874

.thumb
branch_2243874: @ 2243874 :thumb
	ldr     r0, [r0, #0x0]
	tst     r0, r4
	bne     branch_2243894
	mov     r5, #0x0
	b       branch_2243894
@ 0x224387e

.thumb
branch_224387e: @ 224387e :thumb
	ldr     r0, [r0, #0x0]
	tst     r0, r4
	beq     branch_2243894
	mov     r5, #0x0
	b       branch_2243894
@ 0x2243888

.thumb
branch_2243888: @ 2243888 :thumb
	ldr     r1, [r0, #0x0]
	mov     r0, r1
	and     r0, r4
	cmp     r1, r0
	beq     branch_2243894
	mov     r5, #0x0
.thumb
branch_2243894: @ 2243894 :thumb
	cmp     r5, #0x0
	beq     branch_22438a0
	mov     r0, r6
	mov     r1, r5
	bl      BeSeq_AddToPointer
branch_22438a0: @ 22438a0 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x22438a6


/* Input:
r0: MainBattleData
r1: BattleData
*/
.align 2, 0
.thumb
BeSeq_Cmd50: @ 22438a8 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, #0x53
	lsl     r0, r0, #2
	ldr     r1, [pc, #0x34] @ 0x22438f0, (=BattleData_2168)
	ldr     r2, [r4, r0]
	ldr     r1, [r4, r1]
	mov     r3, r2
	mul     r3, r1
	mov     r1, r0
	sub     r1, #0x1c
	str     r3, [r4, r1]
	mov     r1, r0
	sub     r1, #0x1c
	ldr     r2, [r4, r1]
	ldr     r1, [pc, #0x20] @ 0x22438f4, (=0xffff)
	cmp     r2, r1
	ble     branch_22438da
	sub     r0, #0x1c
	str     r1, [r4, r0]
branch_22438da: @ 22438da :thumb
	mov     r0, r5
	mov     r1, #0x0
	bl      GetMainBattleData_TrainerData
	mov     r1, #0x13
	lsl     r1, r1, #4
	ldr     r1, [r4, r1]
	bl      GiveMoney
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22438f0

.word BattleData_2168 @ 0x22438f0
.word 0xffff @ 0x22438f4



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd51: @ 22438f8 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r7, r0

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x0]

	ldr     r1, [r5, #0x64]
	mov     r0, r7
	bl      Function_16_223e208
	mov     r6, r0
	mov     r0, #0x6f
	lsl     r0, r0, #2
	add     r3, r5, r0
	lsl     r2, r6, #2
	ldr     r1, [r3, r2]
	mov     r4, #0x2
	tst     r4, r1
	beq     branch_224393c
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	bl      BeSeq_AddToPointer
	ldr     r1, [pc, #0x98] @ 0x22439cc, (=BattleData_216c)
	mov     r0, #0x40
	ldr     r2, [r5, r1]
	orr     r0, r2
	str     r0, [r5, r1]
	b       branch_22439c8

branch_224393c: @ 224393c :thumb
	mov     r4, #0x2
	orr     r1, r4
	str     r1, [r3, r2]
	mov     r1, r0
	add     r1, #0x8
	add     r4, r5, r1
	lsl     r6, r6, #3
	ldr     r2, [r4, r6]
	ldr     r1, [pc, #0x80] @ 0x22439d0, (=0xfffffc7f)
	add     r0, #0xc4
	and     r1, r2
	orr     r0, r1
	str     r0, [r4, r6]
	ldr     r0, [r4, r6]
	mov     r1, #0x60
	bic     r0, r1
	ldr     r1, [r5, #0x64]
	lsl     r1, r1, #30
	lsr     r1, r1, #25
	orr     r0, r1
	str     r0, [r4, r6]
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	bl      Function_16_2258ab8
	cmp     r0, #0x61
	bne     branch_2243990
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_2258acc
	ldr     r1, [r4, r6]
	ldr     r2, [pc, #0x50] @ 0x22439d0, (=0xfffffc7f)
	and     r2, r1
	lsl     r1, r1, #22
	lsr     r1, r1, #29
	add     r0, r1, r0
	lsl     r0, r0, #29
	lsr     r0, r0, #22
	orr     r0, r2
	str     r0, [r4, r6]
branch_2243990: @ 2243990 :thumb
	mov     r0, r5
	mov     r1, #0x14
	add     r0, #0xf5
	strb    r1, [r0, #0x0]
	ldr     r0, [pc, #0x38] @ 0x22439d4, (=BattleData_WazaSeqFileNr)
	mov     r2, #0x1
	ldr     r1, [r5, r0]
	mov     r0, r5
	add     r0, #0xf8
	str     r1, [r0, #0x0]
	mov     r0, r5
	ldr     r1, [r5, #0x64]
	add     r0, #0xfc
	str     r1, [r0, #0x0]
	ldr     r3, [r5, #0x64]
	mov     r0, r7
	mov     r1, r5
	bl      Function_22554e0
	cmp     r0, #0x2
	bne     branch_22439c2
	mov     r0, #0xc0
	add     r5, #0xf6
	strh    r0, [r5, #0x0]
	b       branch_22439c8

branch_22439c2: @ 22439c2 :thumb
	mov     r0, #0xbe
	add     r5, #0xf6
	strh    r0, [r5, #0x0]
branch_22439c8: @ 22439c8 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22439cc

.word BattleData_216c @ 0x22439cc
.word 0xfffffc7f @ 0x22439d0
.word BattleData_WazaSeqFileNr @ 0x22439d4



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd52: @ 22439d8 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r7, r0

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x0]

	ldr     r1, [r5, #0x64]
	mov     r0, r7
	bl      Function_16_223e208
	mov     r6, r0
	mov     r0, #0x6f
	lsl     r0, r0, #2
	add     r3, r5, r0
	lsl     r2, r6, #2
	ldr     r1, [r3, r2]
	mov     r4, #0x1
	tst     r4, r1
	beq     branch_2243a1c
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	bl      BeSeq_AddToPointer
	ldr     r1, [pc, #0x9c] @ 0x2243ab0, (=BattleData_216c)
	mov     r0, #0x40
	ldr     r2, [r5, r1]
	orr     r0, r2
	str     r0, [r5, r1]
	b       branch_2243aaa

branch_2243a1c: @ 2243a1c :thumb
	mov     r4, #0x1
	orr     r1, r4
	add     r0, #0x8
	add     r4, r5, r0
	lsl     r6, r6, #3
	str     r1, [r3, r2]
	ldr     r1, [r4, r6]
	mov     r0, #0x1c
	bic     r1, r0
	mov     r0, #0x14
	orr     r0, r1
	str     r0, [r4, r6]
	ldr     r0, [r4, r6]
	mov     r1, #0x3
	bic     r0, r1
	ldr     r2, [r5, #0x64]
	mov     r1, #0x3
	and     r1, r2
	orr     r0, r1
	str     r0, [r4, r6]
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	bl      Function_16_2258ab8
	cmp     r0, #0x61
	bne     branch_2243a72
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_2258acc
	ldr     r1, [r4, r6]
	mov     r3, r0
	mov     r0, #0x1c
	mov     r2, r1
	bic     r2, r0
	lsl     r0, r1, #27
	lsr     r0, r0, #29
	add     r0, r0, r3
	lsl     r0, r0, #29
	lsr     r0, r0, #27
	orr     r0, r2
	str     r0, [r4, r6]
branch_2243a72: @ 2243a72 :thumb
	mov     r0, r5
	mov     r1, #0x14
	add     r0, #0xf5
	strb    r1, [r0, #0x0]
	ldr     r0, [pc, #0x38] @ 0x2243ab4, (=BattleData_WazaSeqFileNr)
	mov     r2, #0x1
	ldr     r1, [r5, r0]
	mov     r0, r5
	add     r0, #0xf8
	str     r1, [r0, #0x0]
	mov     r0, r5
	ldr     r1, [r5, #0x64]
	add     r0, #0xfc
	str     r1, [r0, #0x0]
	ldr     r3, [r5, #0x64]
	mov     r0, r7
	mov     r1, r5
	bl      Function_22554e0
	cmp     r0, #0x2
	bne     branch_2243aa4
	mov     r0, #0xc4
	add     r5, #0xf6
	strh    r0, [r5, #0x0]
	b       branch_2243aaa

branch_2243aa4: @ 2243aa4 :thumb
	mov     r0, #0xc2
	add     r5, #0xf6
	strh    r0, [r5, #0x0]
branch_2243aaa: @ 2243aaa :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2243aae

.align 2
.word BattleData_216c @ 0x2243ab0
.word BattleData_WazaSeqFileNr @ 0x2243ab4



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd53: @ 2243ab8 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r7, r0

	ldr     r1, [r4, #0x64]
	mov     r0, r5
	bl      Function_16_223e208
	mov     r5, #0x6f
	mov     r2, r0
	lsl     r5, r5, #2
	add     r1, r4, r5
	lsl     r0, r2, #2
	ldr     r6, [r1, r0]
	mov     r3, #0x40
	tst     r3, r6
	beq     branch_2243afc
	mov     r0, r4
	mov     r1, r7
	bl      BeSeq_AddToPointer
	ldr     r1, [pc, #0x38] @ 0x2243b2c, (=BattleData_216c)
	mov     r0, #0x40
	ldr     r2, [r4, r1]
	orr     r0, r2
	str     r0, [r4, r1]
	b       branch_2243b26

branch_2243afc: @ 2243afc :thumb
	mov     r3, #0x40
	orr     r3, r6
	str     r3, [r1, r0]
	add     r5, #0x8
	lsl     r0, r2, #3
	add     r1, r4, r5
	ldr     r3, [r1, r0]
	ldr     r2, [pc, #0x24] @ 0x2243b30, (=0xffff8fff)
	and     r3, r2
	mov     r2, #0x5
	lsl     r2, r2, #12
	orr     r2, r3
	str     r2, [r1, r0]
	ldr     r3, [r1, r0]
	ldr     r2, [pc, #0x18] @ 0x2243b34, (=0xfffff3ff)
	and     r3, r2
	ldr     r2, [r4, #0x64]
	lsl     r2, r2, #30
	lsr     r2, r2, #20
	orr     r2, r3
	str     r2, [r1, r0]
branch_2243b26: @ 2243b26 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2243b2a

.align 2
.word BattleData_216c @ 0x2243b2c
.word 0xffff8fff @ 0x2243b30
.word 0xfffff3ff @ 0x2243b34



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd54: @ 2243b38 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r6, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	ldr     r1, [pc, #0x1c4] @ 0x2243d0c, (=BattleData_213c)
	mov     r0, #0x1
	ldr     r2, [r4, r1]
	lsl     r0, r0, #10
	orr     r0, r2
	str     r0, [r4, r1]
	ldr     r1, [r4, #0x64]
	ldr     r2, [r4, #0x6c]
	mov     r0, r4
	mov     r3, #0x5
	bl      Function_2255ab4_CheckAbility
	cmp     r0, #0x1
	bne     branch_2243b70
	ldr     r1, [pc, #0x1ac] @ 0x2243d10, (=BattleData_216c)
	mov     r0, #0x2
	ldr     r2, [r4, r1]
	lsl     r0, r0, #18
	orr     r0, r2
	str     r0, [r4, r1]
	b       branch_2243d08

branch_2243b70: @ 2243b70 :thumb
	ldr     r1, [r4, #0x6c]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r4, r0
	mov     r0, #0xb7
	lsl     r0, r0, #6
	ldr     r1, [r1, r0]
	mov     r0, #0x18
	tst     r0, r1
	bne     branch_2243bf8
	ldr     r1, [r4, #0x64]
	mov     r0, r4
	bl      GetAbilityOfPkmnConsideringMultitypeWeatherLevitate
	cmp     r0, #0x63
	beq     branch_2243bf8
	ldr     r1, [r4, #0x6c]
	mov     r0, r4
	bl      GetAbilityOfPkmnConsideringMultitypeWeatherLevitate
	cmp     r0, #0x63
	beq     branch_2243bf8
	ldr     r0, [pc, #0x174] @ 0x2243d14, (=BattleData_WazaSeqFileNr)
	mov     r2, #0xc0
	ldr     r0, [r4, r0]
	ldr     r5, [r4, #0x6c]
	lsl     r0, r0, #4
	add     r1, r4, r0
	ldr     r0, [pc, #0x16c] @ 0x2243d18, (=0x3e3)
	ldrb    r1, [r1, r0]
	ldr     r0, [r4, #0x64]
	mov     r3, r0
	mul     r3, r2
	add     r0, r4, r3
	ldr     r3, [pc, #0x164] @ 0x2243d1c, (=BattleData_Level)
	mul     r2, r5
	add     r2, r4, r2
	ldrb    r0, [r0, r3]
	ldrb    r2, [r2, r3]
	sub     r0, r0, r2
	add     r0, r1, r0
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	mov     r0, r6
	bl      Function_16_GetRandomNr
	mov     r1, #100
	blx     _s32_div_f
	cmp     r1, r5
	bge     branch_2243bf4
	ldr     r1, [r4, #0x64]
	mov     r0, #0xc0
	mov     r2, r1
	mul     r2, r0
	ldr     r1, [pc, #0x13c] @ 0x2243d1c, (=BattleData_Level)
	add     r2, r4, r2
	ldrb    r3, [r2, r1]
	ldr     r2, [r4, #0x6c]
	mul     r0, r2
	add     r0, r4, r0
	ldrb    r0, [r0, r1]
	cmp     r3, r0
	bcc     branch_2243bf4
	mov     r3, #0x1
	b       branch_2243cb2

branch_2243bf4: @ 2243bf4 :thumb
	mov     r3, #0x0
	b       branch_2243cb2

branch_2243bf8: @ 2243bf8 :thumb
	ldr     r1, [r4, #0x6c]
	mov     r0, #0xc0
	mul     r0, r1
	add     r3, r4, r0
	ldr     r0, [pc, #0x11c] @ 0x2243d20, (=BattleData_2dcc)
	ldr     r1, [r4, #0x64]
	ldr     r2, [r3, r0]
	lsl     r2, r2, #30
	lsr     r2, r2, #30
	cmp     r1, r2
	bne     branch_2243c18
	sub     r0, #0xc
	ldr     r2, [r3, r0]
	mov     r0, #0x18
	tst     r0, r2
	bne     branch_2243c2e
.thumb
branch_2243c18: @ 2243c18 :thumb
	mov     r0, r4
	bl      GetAbilityOfPkmnConsideringMultitypeWeatherLevitate
	cmp     r0, #0x63
	beq     branch_2243c2e
	ldr     r1, [r4, #0x6c]
	mov     r0, r4
	bl      GetAbilityOfPkmnConsideringMultitypeWeatherLevitate
	cmp     r0, #0x63
	bne     branch_2243c4c
branch_2243c2e: @ 2243c2e :thumb
	ldr     r0, [r4, #0x64]
	mov     r1, #0xc0
	mov     r2, r0
	mul     r2, r1
	ldr     r3, [r4, #0x6c]
	add     r0, r4, r2
	ldr     r2, [pc, #0xe0] @ 0x2243d1c, (=BattleData_Level)
	mul     r1, r3
	add     r1, r4, r1
	ldrb    r0, [r0, r2]
	ldrb    r1, [r1, r2]
	cmp     r0, r1
	bcc     branch_2243c4c
	mov     r3, #0x1
	b       branch_2243ca6

branch_2243c4c: @ 2243c4c :thumb
	ldr     r0, [pc, #0xc4] @ 0x2243d14, (=BattleData_WazaSeqFileNr)
	mov     r2, #0xc0
	ldr     r0, [r4, r0]
	ldr     r5, [r4, #0x6c]
	lsl     r0, r0, #4
	add     r1, r4, r0
	ldr     r0, [pc, #0xbc] @ 0x2243d18, (=0x3e3)
	ldrb    r1, [r1, r0]
	ldr     r0, [r4, #0x64]
	mov     r3, r0
	mul     r3, r2
	add     r0, r4, r3
	ldr     r3, [pc, #0xb4] @ 0x2243d1c, (=BattleData_Level)
	mul     r2, r5
	add     r2, r4, r2
	ldrb    r0, [r0, r3]
	ldrb    r2, [r2, r3]
	sub     r0, r0, r2
	add     r0, r1, r0
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	mov     r0, r6
	bl      Function_16_GetRandomNr
	mov     r1, #0x64
	blx     _s32_div_f
	cmp     r1, r5
	bge     branch_2243ca4
	ldr     r1, [r4, #0x64]
	mov     r0, #0xc0
	mov     r2, r1
	mul     r2, r0
	ldr     r1, [pc, #0x8c] @ 0x2243d1c, (=BattleData_Level)
	add     r2, r4, r2
	ldrb    r3, [r2, r1]
	ldr     r2, [r4, #0x6c]
	mul     r0, r2
	add     r0, r4, r0
	ldrb    r0, [r0, r1]
	cmp     r3, r0
	bcc     branch_2243ca4
	mov     r3, #0x1
	b       branch_2243ca6
@ 0x2243ca4

.thumb
branch_2243ca4: @ 2243ca4 :thumb
	mov     r3, #0x0
.thumb
branch_2243ca6: @ 2243ca6 :thumb
	ldr     r1, [pc, #0x68] @ 0x2243d10, (=BattleData_216c)
	mov     r0, #0x1
	ldr     r2, [r4, r1]
	lsl     r0, r0, #10
	orr     r0, r2
	str     r0, [r4, r1]
.thumb
branch_2243cb2: @ 2243cb2 :thumb
	cmp     r3, #0x0
	beq     branch_2243cd8
	ldr     r1, [r4, #0x6c]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r4, r0
	ldr     r0, [pc, #0x64] @ 0x2243d24, (=BattleData_CurHP)
	ldr     r0, [r1, r0]
	ldr     r1, [pc, #0x64] @ 0x2243d28, (=BattleData_Damage)
	neg     r0, r0
	str     r0, [r4, r1]
	mov     r0, r1
	add     r0, #0x28
	ldr     r2, [r4, r0]
	mov     r0, #0x20
	orr     r0, r2
	add     r1, #0x28
	str     r0, [r4, r1]
	b       branch_2243d08

branch_2243cd8: @ 2243cd8 :thumb
	ldr     r1, [r4, #0x64]
	mov     r0, #0xc0
	mov     r2, r1
	mul     r2, r0
	ldr     r1, [pc, #0x38] @ 0x2243d1c, (=BattleData_Level)
	add     r2, r4, r2
	ldrb    r3, [r2, r1]
	ldr     r2, [r4, #0x6c]
	mul     r0, r2
	add     r0, r4, r0
	ldrb    r0, [r0, r1]
	cmp     r3, r0
	ldr     r1, [pc, #0x1c] @ 0x2243d10, (=BattleData_216c)
	bcc     branch_2243cfe
	ldr     r2, [r4, r1]
	mov     r0, #0x1
	orr     r0, r2
	str     r0, [r4, r1]
	b       branch_2243d08
@ 0x2243cfe

.thumb
branch_2243cfe: @ 2243cfe :thumb
	mov     r0, #0x1
	ldr     r2, [r4, r1]
	lsl     r0, r0, #12
	orr     r0, r2
	str     r0, [r4, r1]
branch_2243d08: @ 2243d08 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2243d0c

.word BattleData_213c @ 0x2243d0c
.word BattleData_216c @ 0x2243d10
.word BattleData_WazaSeqFileNr @ 0x2243d14
.word 0x3e3 @ 0x2243d18
.word BattleData_Level @ 0x2243d1c
.word BattleData_2dcc @ 0x2243d20
.word BattleData_CurHP @ 0x2243d24
.word BattleData_Damage @ 0x2243d28



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd55: @ 2243d2c :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r6, r0

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r7, r0

	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      BeSeq_GetVariableAdress

	mov     r4, r0
	ldr     r0, [r4, #0x0]
	mov     r1, r7
	bl      Function_16_22563f8_Division
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2243d64


/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd56: @ 2243d64 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r6, r0

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r7, r0

	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	bl      BeSeq_GetVariableAdress
	mov     r4, r0
	mov     r0, r6
	mov     r1, r5
	mov     r2, r7
	bl      BeSeq_GetVariableAdress
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	bge     branch_2243da6
	mov     r5, #0x0
	mvn     r5, r5
	b       branch_2243da8
@ 0x2243da6

.thumb
branch_2243da6: @ 2243da6 :thumb
	mov     r5, #0x1
.thumb
branch_2243da8: @ 2243da8 :thumb
	ldr     r0, [r4, #0x0]
	ldr     r1, [r1, #0x0]
	blx     _s32_div_f
	str     r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_2243db8
	str     r5, [r4, #0x0]
branch_2243db8: @ 2243db8 :thumb

	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2243dbc


/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd57: @ 2243dbc :thumb
	push    {r3-r7,lr}
	mov     r6, r1

	mov     r0, r6
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r6
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x0]

	ldr     r0, [r6, #0x6c]
	lsl     r0, r0, #1
	add     r1, r6, r0
	ldr     r0, [pc, #0x108] @ 0x2243ee0, (=BattleData_307c)
	ldrh    r0, [r1, r0]
	bl      Function_225aff4
	cmp     r0, #0x0
	beq     branch_2243e16
	ldr     r0, [r6, #0x64]
	mov     r2, #0x2
	mov     r3, #0xc0
	mov     r1, r0
	mul     r1, r3
	add     r0, r6, r1
	ldr     r1, [pc, #0xf4] @ 0x2243ee4, (=BattleData_2db0)
	mov     r12, r0
	ldr     r0, [r0, r1]
	lsl     r2, r2, #20
	tst     r0, r2
	bne     branch_2243e16
	ldr     r0, [r6, #0x6c]
	mov     r4, r0
	mul     r4, r3
	add     r4, r6, r4
	ldr     r4, [r4, r1]
	lsl     r1, r2, #3
	tst     r1, r4
	bne     branch_2243e16
	lsl     r0, r0, #1
	add     r1, r6, r0
	ldr     r0, [pc, #0xd0] @ 0x2243ee0, (=BattleData_307c)
	ldrh    r7, [r1, r0]
	cmp     r7, #0x0
	bne     branch_2243e20
branch_2243e16: @ 2243e16 :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, r6
	bl      BeSeq_AddToPointer
	b       branch_2243edc

branch_2243e20: @ 2243e20 :thumb
	mov     r2, #0x0
	sub     r3, #0xc1
	mov     r4, r12
	mov     r5, r2
branch_2243e28: @ 2243e28 :thumb
	ldr     r0, [pc, #0xbc] @ 0x2243ee8, (=BattleData_Move)
	ldrh    r0, [r4, r0]
	cmp     r7, r0
	beq     branch_2243e50
	mov     r0, r12
	add     r1, r0, r5
	ldr     r0, [pc, #0xb0] @ 0x2243ee8, (=BattleData_Move)
	ldrh    r0, [r1, r0]
	cmp     r0, #0x66
	bne     branch_2243e46
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r3, r0
	bne     branch_2243e46
	mov     r3, r2
branch_2243e46: @ 2243e46 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r2, #0x4
	blt     branch_2243e28
branch_2243e50: @ 2243e50 :thumb
	cmp     r2, #0x4
	bne     branch_2243ed4
	mov     r4, #0x49
	lsl     r4, r4, #2
	str     r7, [r6, r4]
	ldr     r2, [r6, #0x64]
	mov     r1, #0xc0
	mov     r5, r2
	mul     r5, r1
	add     r5, r6, r5
	lsl     r2, r3, #1
	add     r5, r5, r2
	ldr     r0, [r6, r4]
	ldr     r2, [pc, #0x7c] @ 0x2243ee8, (=BattleData_Move)
	strh    r0, [r5, r2]
	ldr     r0, [r6, r4]
	lsl     r0, r0, #4
	add     r4, r6, r0
	mov     r0, #0xf9
	lsl     r0, r0, #2
	ldrb    r0, [r4, r0]
	cmp     r0, #0x5
	bcs     branch_2243e80
	b       branch_2243e82

branch_2243e80: @ 2243e80 :thumb
	mov     r0, #0x5
branch_2243e82: @ 2243e82 :thumb
	ldr     r4, [r6, #0x64]
	add     r2, #0x20
	mul     r1, r4
	add     r1, r6, r1
	add     r1, r1, r3
	strb    r0, [r1, r2]
	mov     r0, r3
	bl      Function_20787cc
	ldr     r1, [pc, #0x54] @ 0x2243eec, (=BattleData_2dcc)
	mov     r4, #0xc0
	add     r3, r6, r1
	ldr     r1, [r6, #0x64]
	mov     r5, #0x3c
	mov     r2, r1
	mul     r2, r4
	ldr     r7, [r3, r2]
	mov     r1, r7
	bic     r1, r5
	lsl     r5, r7, #26
	lsr     r5, r5, #28
	orr     r0, r5
	lsl     r0, r0, #28
	lsr     r0, r0, #26
	orr     r0, r1
	str     r0, [r3, r2]
	mov     r0, r4
	add     r0, #0x64
	ldr     r1, [r6, r0]
	mov     r0, r4
	add     r0, #0xc3
	cmp     r1, r0
	bne     branch_2243edc
	ldr     r0, [r6, #0x64]
	mov     r2, r0
	mul     r2, r4
	ldr     r1, [r3, r2]
	ldr     r0, [pc, #0x20] @ 0x2243ef0, (=0xffffe3ff)
	and     r0, r1
	str     r0, [r3, r2]
	b       branch_2243edc

branch_2243ed4: @ 2243ed4 :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, r6
	bl      BeSeq_AddToPointer
branch_2243edc: @ 2243edc :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2243ee0

.word BattleData_307c @ 0x2243ee0
.word BattleData_2db0 @ 0x2243ee4
.word BattleData_Move @ 0x2243ee8
.word BattleData_2dcc @ 0x2243eec
.word 0xffffe3ff @ 0x2243ef0



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd58: @ 2243ef4 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r7, r0

	mov     r0, r6
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	ldr     r4, [pc, #0x48] @ 0x2243f4c, (=BattleData_Move)
branch_2243f04: @ 2243f04 :thumb
	mov     r0, r7
	bl      Function_16_GetRandomNr
	ldr     r1, [pc, #0x44] @ 0x2243f50, (=NrOfMoves)
	blx     _s32_div_f
	add     r0, r1, #0x1
	lsl     r0, r0, #16
	lsr     r5, r0, #16

	ldr     r3, [r6, #0x64]
	mov     r0, #0xc0
	mul     r0, r3
	mov     r1, #0x0
	add     r2, r6, r0
branch_2243f20: @ 2243f20 :thumb
	ldrh    r0, [r2, r4]
	cmp     r5, r0
	beq     branch_2243f2e
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r1, #0x4
	blt     branch_2243f20

branch_2243f2e: @ 2243f2e :thumb
	cmp     r1, #0x4
	bne     branch_2243f04
	mov     r2, r3
	mov     r0, r7
	mov     r1, r6
	mov     r3, r5
	bl      Function_225b02c
	cmp     r0, #0x0
	beq     branch_2243f04

	mov     r0, #0x49
	lsl     r0, r0, #2
	str     r5, [r6, r0]

	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2243f4c

.word BattleData_Move @ 0x2243f4c
.word NrOfMoves @ 0x2243f50



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd59: @ 2243f54 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r6, r0

	mov     r0, #0xb5
	lsl     r0, r0, #6              @ 0x2d40
	add     r2, r4, r0
	ldr     r1, [r4, #0x6c]
	mov     r0, #0xc0
	mul     r0, r1
	lsl     r1, r1, #1
	add     r0, r2, r0
	add     r2, r4, r1
	ldr     r1, [pc, #0x88] @ 0x2244008, (=BattleData_307c)
	ldrh    r1, [r2, r1]
	bl      Function_2254ee0
	mov     r3, r0
	ldr     r2, [r4, #0x6c]
	mov     r0, #0xc0
	mul     r0, r2
	ldr     r7, [pc, #0x7c] @ 0x224400c, (=BattleData_2de8)
	add     r1, r4, r0
	ldrh    r0, [r1, r7]
	cmp     r0, #0x0
	bne     branch_2243ffa
	cmp     r3, #0x4
	beq     branch_2243ffa
	mov     r0, r7
	add     r1, r1, r3
	sub     r0, #0x7c
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2243ffa
	lsl     r0, r2, #1
	add     r1, r4, r0
	ldr     r0, [pc, #0x5c] @ 0x2244008, (=BattleData_307c)
	ldrh    r1, [r1, r0]
	cmp     r1, #0x0
	beq     branch_2243ffa
	mov     r0, #0xc0
	add     r0, #0x64
	str     r1, [r4, r0]
	mov     r0, #0xc0
	add     r0, #0x64
	ldr     r2, [r4, #0x6c]
	mov     r1, #0xc0
	mul     r1, r2
	ldr     r0, [r4, r0]
	add     r1, r4, r1
	strh    r0, [r1, r7]
	mov     r0, r5
	bl      Function_16_GetRandomNr
	mov     r1, r7
	sub     r1, #0x20
	add     r3, r4, r1
	ldr     r4, [r4, #0x6c]
	mov     r1, #0xc0
	mov     r2, r4
	mul     r2, r1
	ldr     r1, [r3, r2]
	mov     r4, #0x7
	bic     r1, r4
	lsr     r5, r0, #31
	lsl     r4, r0, #30
	sub     r4, r4, r5
	mov     r0, #0x1e
	ror     r4, r0
	add     r0, r5, r4
	add     r4, r0, #0x3
	mov     r0, #0x7
	and     r0, r4
	orr     r0, r1
	str     r0, [r3, r2]
	b       branch_2244002

branch_2243ffa: @ 2243ffa :thumb
	mov     r0, r4
	mov     r1, r6
	bl      BeSeq_AddToPointer
branch_2244002: @ 2244002 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2244006

.align 2
.word BattleData_307c @ 0x2244008
.word BattleData_2de8 @ 0x224400c



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd5a: @ 2244010 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r1
	str     r0, [sp, #0x0]

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer
	ldr     r1, [r5, #0x64]

	lsl     r0, r1, #6
	add     r2, r5, r0
	mov     r0, #0x7a
	lsl     r0, r0, #2              @ 0x1e8
	ldr     r4, [r2, r0]
	ldr     r0, [sp, #0x0]
	bl      Function_16_223e208
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_16_223e208
	ldr     r6, [r5, #0x64]
	mov     r3, r0
	lsl     r0, r6, #6
	add     r1, r5, r0
	lsl     r0, r4, #2
	add     r0, r1, r0
	mov     r1, #0x76
	lsl     r1, r1, #2
	ldr     r7, [r0, r1]
	cmp     r7, #0x0
	beq     branch_22440d6
	ldr     r0, [sp, #0x4]
	cmp     r0, r3
	beq     branch_22440d6
	mov     r0, #0xc0
	mul     r0, r4
	add     r2, r5, r0
	ldr     r0, [pc, #0xa0] @ 0x2244100, (=BattleData_CurHP)
	ldr     r0, [r2, r0]
	cmp     r0, #0x0
	beq     branch_22440d6
	ldr     r0, [pc, #0x9c] @ 0x2244104, (=BattleData_Damage)
	lsl     r2, r7, #1
	sub     r1, #0x14
	str     r2, [r5, r0]
	add     r1, r5, r1
	lsl     r0, r3, #3
	ldr     r0, [r1, r0]
	lsl     r1, r0, #11
	lsr     r1, r1, #31
	beq     branch_2244090
	lsl     r0, r0, #9
	lsr     r0, r0, #30
	mov     r1, #0xc0
	mul     r1, r0
	add     r2, r5, r1
	ldr     r1, [pc, #0x78] @ 0x2244100, (=BattleData_CurHP)
	ldr     r1, [r2, r1]
	cmp     r1, #0x0
	beq     branch_2244090
	str     r0, [r5, #0x6c]
	b       branch_2244092

branch_2244090: @ 2244090 :thumb
	str     r4, [r5, #0x6c]
branch_2244092: @ 2244092 :thumb
	ldr     r1, [r5, #0x6c]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r5, r0
	ldr     r0, [pc, #0x64] @ 0x2244100, (=BattleData_CurHP)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_22440ca
	ldr     r0, [sp, #0x0]
	ldr     r2, [r5, #0x64]
	mov     r1, r5
	bl      Function_16_2257028
	mov     r1, #0xc0
	mul     r1, r0
	str     r0, [r5, #0x6c]
	ldr     r0, [pc, #0x4c] @ 0x2244100, (=BattleData_CurHP)
	add     r1, r5, r1
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_22440ca
	mov     r2, #0x26
	str     r2, [r5, #0xc]
	mov     r0, r5
	mov     r1, #SubSeq_Narc
	add     r2, #0xf3
	bl      Call_Call_LoadFromNARC
branch_22440ca: @ 22440ca :thumb
	ldr     r1, [r5, #0x64]
	ldr     r2, [r5, #0x6c]
	mov     r0, r5
	bl      Function_225b408
	b       branch_22440f8

branch_22440d6: @ 22440d6 :thumb
	mov     r0, #0xb5
	lsl     r0, r0, #2
	mov     r1, #0x1c
	mov     r3, r6
	mul     r3, r1
	add     r0, r5, r0
	ldr     r2, [r0, r3]
	mov     r1, #0x1
	bic     r2, r1
	mov     r1, #0x1
	orr     r1, r2
	str     r1, [r0, r3]
	ldr     r1, [pc, #0x18] @ 0x2244108, (=BattleData_216c)
	mov     r0, #0x40
	ldr     r2, [r5, r1]
	orr     r0, r2
	str     r0, [r5, r1]
branch_22440f8: @ 22440f8 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x22440fe

.align 2
.word BattleData_CurHP @ 0x2244100
.word BattleData_Damage @ 0x2244104
.word BattleData_216c @ 0x2244108



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd5b: @ 224410c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r1
	str     r0, [sp, #0x0]

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	ldr     r1, [r5, #0x64]
	lsl     r0, r1, #6
	add     r2, r5, r0
	mov     r0, #0x2
	lsl     r0, r0, #8
	ldr     r4, [r2, r0]
	ldr     r0, [sp, #0x0]
	bl      Function_16_223e208
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_16_223e208
	ldr     r6, [r5, #0x64]
	mov     r3, r0
	lsl     r0, r6, #6
	add     r1, r5, r0
	lsl     r0, r4, #2
	add     r0, r1, r0
	mov     r1, #0x1f
	lsl     r1, r1, #4
	ldr     r7, [r0, r1]
	cmp     r7, #0x0
	beq     branch_22441d2
	ldr     r0, [sp, #0x4]
	cmp     r0, r3
	beq     branch_22441d2
	mov     r0, #0xc0
	mul     r0, r4
	add     r2, r5, r0
	ldr     r0, [pc, #0xa0] @ 0x22441fc, (=BattleData_CurHP)
	ldr     r0, [r2, r0]
	cmp     r0, #0x0
	beq     branch_22441d2
	ldr     r0, [pc, #0x9c] @ 0x2244200, (=BattleData_Damage)
	lsl     r2, r7, #1
	sub     r1, #0x2c
	str     r2, [r5, r0]
	add     r1, r5, r1
	lsl     r0, r3, #3
	ldr     r0, [r1, r0]
	lsl     r1, r0, #11
	lsr     r1, r1, #31
	beq     branch_224418c
	lsl     r0, r0, #9
	lsr     r0, r0, #30
	mov     r1, #0xc0
	mul     r1, r0
	add     r2, r5, r1
	ldr     r1, [pc, #0x78] @ 0x22441fc, (=BattleData_CurHP)
	ldr     r1, [r2, r1]
	cmp     r1, #0x0
	beq     branch_224418c
	str     r0, [r5, #0x6c]
	b       branch_224418e
@ 0x224418c

.thumb
branch_224418c: @ 224418c :thumb
	str     r4, [r5, #0x6c]
.thumb
branch_224418e: @ 224418e :thumb
	ldr     r1, [r5, #0x6c]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r5, r0
	ldr     r0, [pc, #0x64] @ 0x22441fc, (=BattleData_CurHP)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_22441c6
	ldr     r0, [sp, #0x0]
	ldr     r2, [r5, #0x64]
	mov     r1, r5
	bl      Function_16_2257028
	mov     r1, #0xc0
	mul     r1, r0
	str     r0, [r5, #0x6c]
	ldr     r0, [pc, #0x4c] @ 0x22441fc, (=BattleData_CurHP)
	add     r1, r5, r1
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_22441c6
	mov     r2, #0x26
	str     r2, [r5, #0xc]
	mov     r0, r5
	mov     r1, #SubSeq_Narc
	add     r2, #0xf3
	bl      Call_Call_LoadFromNARC
branch_22441c6: @ 22441c6 :thumb
	ldr     r1, [r5, #0x64]
	ldr     r2, [r5, #0x6c]
	mov     r0, r5
	bl      Function_225b408
	b       branch_22441f4

branch_22441d2: @ 22441d2 :thumb
	mov     r0, #0xb5
	lsl     r0, r0, #2
	mov     r1, #0x1c
	mov     r3, r6
	mul     r3, r1
	add     r0, r5, r0
	ldr     r2, [r0, r3]
	mov     r1, #0x1
	bic     r2, r1
	mov     r1, #0x1
	orr     r1, r2
	str     r1, [r0, r3]
	ldr     r1, [pc, #0x18] @ 0x2244204, (=BattleData_216c)
	mov     r0, #0x40
	ldr     r2, [r5, r1]
	orr     r0, r2
	str     r0, [r5, r1]
branch_22441f4: @ 22441f4 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x22441fa

.align 2
.word BattleData_CurHP @ 0x22441fc
.word BattleData_Damage @ 0x2244200
.word BattleData_216c @ 0x2244204



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd5c: @ 2244208 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	str     r0, [sp, #0x0]

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r7, r0

	mov     r0, #0xb5
	lsl     r0, r0, #6              @ 0x2d40
	add     r2, r5, r0
	ldr     r1, [r5, #0x6c]
	mov     r0, #0xc0
	mul     r0, r1
	lsl     r1, r1, #1
	add     r0, r2, r0
	add     r2, r5, r1
	ldr     r1, [pc, #0xac] @ 0x22442e0, (=BattleData_307c)
	ldrh    r1, [r2, r1]
	bl      Function_2254ee0
	ldr     r1, [r5, #0x6c]
	mov     r4, r0
	lsl     r1, r1, #1
	add     r2, r5, r1
	ldr     r1, [pc, #0x9c] @ 0x22442e0, (=BattleData_307c)
	mov     r0, r5
	ldrh    r1, [r2, r1]
	bl      Function_225b084
	cmp     r0, #0x0
	bne     branch_2244250
	mov     r4, #0x4
branch_2244250: @ 2244250 :thumb
	ldr     r0, [r5, #0x6c]
	mov     r2, #0xc0
	mov     r1, r0
	mul     r1, r2
	ldr     r3, [pc, #0x88] @ 0x22442e4, (=BattleData_2dec)
	add     r6, r5, r1
	ldrh    r1, [r6, r3]
	cmp     r1, #0x0
	bne     branch_22442ca
	cmp     r4, #0x4
	beq     branch_22442ca
	mov     r1, r3
	add     r6, r6, r4
	sub     r1, #0x80
	ldrb    r1, [r6, r1]
	cmp     r1, #0x0
	beq     branch_22442ca
	lsl     r0, r0, #1
	add     r1, r5, r0
	ldr     r0, [pc, #0x68] @ 0x22442e0, (=BattleData_307c)
	ldrh    r1, [r1, r0]
	cmp     r1, #0x0
	beq     branch_22442ca
	mov     r0, r2
	add     r0, #0x64
	str     r1, [r5, r0]
	ldr     r1, [r5, #0x6c]
	mov     r0, r2
	add     r0, #0x64
	mov     r6, r1
	mul     r6, r2
	ldr     r0, [r5, r0]
	add     r1, r5, r6
	strh    r0, [r1, r3]
	ldr     r0, [r5, #0x6c]
	mov     r1, r0
	mul     r1, r2
	add     r1, r5, r1
	add     r0, r3, #0x2
	strh    r4, [r1, r0]
	ldr     r0, [sp, #0x0]
	bl      Function_16_GetRandomNr
	ldr     r1, [pc, #0x40] @ 0x22442e8, (=BattleData_2dc8)
	ldr     r2, [r5, #0x6c]
	add     r4, r5, r1
	mov     r1, #0xc0
	mov     r5, r2
	mul     r5, r1
	mov     r1, #0x5
	blx     _s32_div_f
	ldr     r2, [r4, r5]
	mov     r0, #0x38
	bic     r2, r0
	add     r0, r1, #0x3
	lsl     r0, r0, #29
	lsr     r0, r0, #26
	orr     r0, r2
	str     r0, [r4, r5]
	b       branch_22442dc

branch_22442ca: @ 22442ca :thumb
	ldr     r1, [pc, #0x20] @ 0x22442ec, (=BattleData_216c)
	mov     r0, #0x40
	ldr     r2, [r5, r1]
	orr     r0, r2
	str     r0, [r5, r1]
	mov     r0, r5
	mov     r1, r7
	bl      BeSeq_AddToPointer
branch_22442dc: @ 22442dc :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22442e0

.word BattleData_307c @ 0x22442e0
.word BattleData_2dec @ 0x22442e4
.word BattleData_2dc8 @ 0x22442e8
.word BattleData_216c @ 0x22442ec



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd5d: @ 22442f0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r1
	str     r0, [sp, #0x4]

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x8]

	ldr     r1, [r5, #0x64]
	mov     r0, r5
	bl      GetAbilityOfPkmnConsideringMultitypeWeatherLevitate
	cmp     r0, #0x79
	bne     branch_2244322
	ldr     r1, [sp, #0x8]
	mov     r0, r5
	bl      BeSeq_AddToPointer
	add     sp, #0x10
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_2244322: @ 2244322 :thumb
	ldr     r0, [r5, #0x64]
	lsl     r0, r0, #1
	add     r2, r5, r0
	ldr     r0, [pc, #0x16c] @ 0x2244498, (=BattleData_30c4)
	ldrh    r1, [r2, r0]
	cmp     r1, #0x0
	beq     branch_2244338
	add     r0, #0x8
	ldrh    r0, [r2, r0]
	cmp     r0, #0xff
	bne     branch_224433a
branch_2244338: @ 2244338 :thumb
	b       branch_2244488

branch_224433a: @ 224433a :thumb
	mov     r0, r5
	bl      Function_225582c
	cmp     r0, #0x0
	beq     branch_224436e
	ldr     r0, [r5, #0x64]
	lsl     r0, r0, #1
	add     r1, r5, r0
	ldr     r0, [pc, #0x150] @ 0x224449c, (=BattleData_30cc)
	ldrh    r1, [r1, r0]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r5, r0
	ldr     r0, [pc, #0x148] @ 0x22444a0, (=BattleData_2db0)
	ldr     r1, [r1, r0]
	mov     r0, #0x1
	lsl     r0, r0, #12
	tst     r0, r1
	beq     branch_224436e
	ldr     r1, [sp, #0x8]
	mov     r0, r5
	bl      BeSeq_AddToPointer
	add     sp, #0x10
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_224436e: @ 224436e :thumb
	ldr     r0, [r5, #0x64]
	mov     r6, #0x0
	lsl     r0, r0, #1
	add     r1, r5, r0
	ldr     r0, [pc, #0x12c] @ 0x22444a4, (=BattleData_30d4)
	ldrh    r7, [r1, r0]
branch_224437a: @ 224437a :thumb
	add     r0, sp, #0xc
	str     r0, [sp, #0x0]
	add     r2, sp, #0xc
	add     r3, sp, #0xc
	ldr     r0, [sp, #0x4]
	ldr     r1, [pc, #0x120] @ 0x22444a8, (=0xffff)
	add     r2, #0x2
	add     r3, #0x1
	bl      Function_225588c
	add     r0, sp, #0xc
	ldrb    r0, [r0, #0x2]
	cmp     r0, r7
	bne     branch_22443ec
	add     r0, sp, #0xc
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x5
	bhi     branch_22443ec
	add     r0, sp, #0xc
	ldrb    r4, [r0, #0x1]
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	mov     r2, #PKMNBATTLEDATA_TYPE1
	mov     r3, #0x0
	bl      ReadPkmnBattleData1
	cmp     r4, r0
	beq     branch_22443ec
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	mov     r2, #PKMNBATTLEDATA_TYPE2
	mov     r3, #0x0
	bl      ReadPkmnBattleData1
	cmp     r4, r0
	beq     branch_22443ec
	ldr     r0, [r5, #0x64]
	add     r3, sp, #0xc
	mov     r2, #0xc0
	mov     r1, r0
	mul     r1, r2
	add     r0, r5, r1
	ldr     r1, [pc, #0xdc] @ 0x22444ac, (=BattleData_Type1)
	add     sp, #0x10
	strb    r4, [r0, r1]
	ldr     r4, [r5, #0x64]
	ldrb    r0, [r3, #0x1]
	mov     r6, r4
	mul     r6, r2
	add     r4, r5, r6
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r0, [r4, r1]
	ldrb    r0, [r3, #0x1]
	add     r2, #0x70
	str     r0, [r5, r2]
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_22443ec: @ 22443ec :thumb
	mov     r0, #0xfa
	.hword  0x1c76 @ add r6, r6, #0x1
	lsl     r0, r0, #2
	cmp     r6, r0
	blt     branch_224437a
	add     r0, sp, #0xc
	mov     r6, #0x0
	str     r0, [sp, #0x0]
	add     r2, sp, #0xc
	add     r3, sp, #0xc
	ldr     r0, [sp, #0x4]
	mov     r1, r6
	add     r2, #0x2
	add     r3, #0x1
	bl      Function_225588c
	cmp     r0, #0x1
	bne     branch_2244488
branch_2244410: @ 2244410 :thumb
	add     r0, sp, #0xc
	ldrb    r0, [r0, #0x2]
	cmp     r0, r7
	bne     branch_224446e
	add     r0, sp, #0xc
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x5
	bhi     branch_224446e
	add     r0, sp, #0xc
	ldrb    r4, [r0, #0x1]
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	mov     r2, #PKMNBATTLEDATA_TYPE1
	mov     r3, #0x0
	bl      ReadPkmnBattleData1
	cmp     r4, r0
	beq     branch_224446e
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	mov     r2, #PKMNBATTLEDATA_TYPE2
	mov     r3, #0x0
	bl      ReadPkmnBattleData1
	cmp     r4, r0
	beq     branch_224446e
	ldr     r0, [r5, #0x64]
	add     r3, sp, #0xc
	mov     r2, #0xc0
	mov     r1, r0
	mul     r1, r2
	add     r0, r5, r1
	ldr     r1, [pc, #0x58] @ 0x22444ac, (=BattleData_Type1)
	add     sp, #0x10
	strb    r4, [r0, r1]
	ldr     r4, [r5, #0x64]
	ldrb    r0, [r3, #0x1]
	mov     r6, r4
	mul     r6, r2
	add     r4, r5, r6
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r0, [r4, r1]
	ldrb    r0, [r3, #0x1]
	add     r2, #0x70
	str     r0, [r5, r2]
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_224446e: @ 224446e :thumb
	add     r0, sp, #0xc
	.hword  0x1c76 @ add r6, r6, #0x1
	str     r0, [sp, #0x0]
	add     r2, sp, #0xc
	add     r3, sp, #0xc
	ldr     r0, [sp, #0x4]
	mov     r1, r6
	add     r2, #0x2
	add     r3, #0x1
	bl      Function_225588c
	cmp     r0, #0x1
	beq     branch_2244410
branch_2244488: @ 2244488 :thumb
	ldr     r1, [sp, #0x8]
	mov     r0, r5
	bl      BeSeq_AddToPointer
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2244496

.align 2
.word BattleData_30c4 @ 0x2244498
.word BattleData_30cc @ 0x224449c
.word BattleData_2db0 @ 0x22444a0
.word BattleData_30d4 @ 0x22444a4
.word 0xffff @ 0x22444a8
.word BattleData_Type1 @ 0x22444ac



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd5e: @ 22444b0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	mov     r6, r1
	mvn     r0, r0
	str     r0, [sp, #0x8]

	mov     r0, r6
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r6
	bl      BeSeq_LoadWord
	mov     r12, r0

	ldr     r1, [r6, #0x64]
	mov     r0, #0xc0
	mul     r0, r1
	str     r0, [sp, #0x4]
	add     r3, r6, r0
	ldr     r0, [pc, #0xe4] @ 0x22445c0, (=BattleData_2db0)
	ldr     r1, [r3, r0]
	mov     r0, #0x2
	lsl     r0, r0, #20
	tst     r0, r1
	bne     branch_2244502
	ldr     r0, [r6, #0x6c]
	lsl     r0, r0, #1
	add     r1, r6, r0
	ldr     r0, [pc, #0xd8] @ 0x22445c4, (=BattleData_30ac)
	ldrh    r7, [r1, r0]
	cmp     r7, #0xa5
	beq     branch_2244502
	cmp     r7, #0xa6
	beq     branch_2244502
	mov     r0, #0x7
	lsl     r0, r0, #6
	cmp     r7, r0
	beq     branch_2244502
	cmp     r7, #0x0
	bne     branch_224450c
branch_2244502: @ 2244502 :thumb
	mov     r0, r6
	mov     r1, r12
	bl      BeSeq_AddToPointer
	b       branch_22445ba

branch_224450c: @ 224450c :thumb
	mov     r0, #0x0
	mov     r1, r3
	mov     r2, r0
branch_2244512: @ 2244512 :thumb
	ldr     r4, [pc, #0xb4] @ 0x22445c8, (=BattleData_Move)
	ldrh    r4, [r1, r4]
	cmp     r4, #0xa6
	beq     branch_2244524
	ldr     r4, [pc, #0xac] @ 0x22445c8, (=BattleData_Move)
	add     r5, r3, r2
	ldrh    r4, [r5, r4]
	cmp     r7, r4
	beq     branch_2244544
branch_2244524: @ 2244524 :thumb
	ldr     r4, [pc, #0xa0] @ 0x22445c8, (=BattleData_Move)
	add     r5, r3, r2
	ldrh    r4, [r5, r4]
	cmp     r4, #0xa6
	bne     branch_224453a
	mov     r5, #0x0
	ldr     r4, [sp, #0x8]
	mvn     r5, r5
	cmp     r4, r5
	bne     branch_224453a
	str     r0, [sp, #0x8]
branch_224453a: @ 224453a :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1c89 @ add r1, r1, #0x2
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r0, #0x4
	blt     branch_2244512
branch_2244544: @ 2244544 :thumb
	cmp     r0, #0x4
	bne     branch_22445b2
	ldr     r0, [sp, #0x4]
	add     r1, r6, r0
	ldr     r0, [sp, #0x8]
	lsl     r0, r0, #1
	add     r1, r1, r0
	ldr     r0, [pc, #0x74] @ 0x22445c8, (=BattleData_Move)
	strh    r7, [r1, r0]
	ldr     r1, [r6, #0x6c]
	ldr     r3, [r6, #0x64]
	lsl     r1, r1, #1
	add     r2, r6, r1
	ldr     r1, [pc, #0x64] @ 0x22445c4, (=BattleData_30ac)
	add     r0, #0x20
	ldrh    r1, [r2, r1]
	lsl     r1, r1, #4
	add     r2, r6, r1
	mov     r1, #0xf9
	lsl     r1, r1, #2
	ldrb    r1, [r2, r1]
	mov     r2, #0xc0
	mul     r2, r3
	add     r3, r6, r2
	ldr     r2, [sp, #0x8]
	add     r2, r3, r2
	strb    r1, [r2, r0]
	ldr     r0, [sp, #0x0]
	ldr     r2, [r6, #0x64]
	mov     r1, r6
	bl      Function_22662fc
	ldr     r0, [r6, #0x6c]
	lsl     r0, r0, #1
	add     r1, r6, r0
	ldr     r0, [pc, #0x38] @ 0x22445c4, (=BattleData_30ac)
	ldrh    r1, [r1, r0]
	mov     r0, #0x49
	lsl     r0, r0, #2
	str     r1, [r6, r0]
	ldr     r1, [r6, r0]
	add     r0, #0x5f
	cmp     r1, r0
	bne     branch_22445ba
	ldr     r0, [pc, #0x2c] @ 0x22445cc, (=BattleData_2dcc)
	ldr     r1, [r6, #0x64]
	add     r3, r6, r0
	mov     r0, #0xc0
	mov     r2, r1
	mul     r2, r0
	ldr     r1, [r3, r2]
	ldr     r0, [pc, #0x24] @ 0x22445d0, (=0xffffe3ff)
	and     r0, r1
	str     r0, [r3, r2]
	b       branch_22445ba

branch_22445b2: @ 22445b2 :thumb
	mov     r0, r6
	mov     r1, r12
	bl      BeSeq_AddToPointer
branch_22445ba: @ 22445ba :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x22445c0

.word BattleData_2db0 @ 0x22445c0
.word BattleData_30ac @ 0x22445c4
.word BattleData_Move @ 0x22445c8
.word BattleData_2dcc @ 0x22445cc
.word 0xffffe3ff @ 0x22445d0



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd5f: @ 22445d4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r1
	str     r0, [sp, #0x4]

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r7, #0x0
	str     r0, [sp, #0x8]
	mov     r6, r7
	mov     r4, r7
branch_22445f2: @ 22445f2 :thumb
	ldr     r1, [r5, #0x64]
	mov     r0, #0xc0
	mul     r0, r1
	add     r0, r5, r0
	add     r1, r4, r0
	ldr     r0, [pc, #0x9c] @ 0x224469c, (=BattleData_Move)
	ldrh    r0, [r1, r0]
	bl      Function_2255918
	cmp     r0, #0x0
	bne     branch_2244632
	ldr     r1, [r5, #0x64]
	mov     r0, #0xc0
	mul     r0, r1
	add     r0, r5, r0
	add     r1, r4, r0
	ldr     r0, [pc, #0x88] @ 0x224469c, (=BattleData_Move)
	ldrh    r1, [r1, r0]
	mov     r0, #0x42
	lsl     r0, r0, #2
	cmp     r1, r0
	beq     branch_2244632
	cmp     r1, #0xfd
	beq     branch_2244632
	add     r0, #0xb8
	cmp     r1, r0
	beq     branch_2244632
	mov     r0, r5
	bl      Function_225582c
	cmp     r0, #0x0
	beq     branch_224463a
branch_2244632: @ 2244632 :thumb
	mov     r0, r6
	bl      Function_20787cc
	orr     r7, r0
branch_224463a: @ 224463a :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r6, #0x4
	blt     branch_22445f2
	mov     r0, #0x2
	mvn     r0, r0
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	ldr     r2, [r5, #0x64]
	mov     r1, r5
	mov     r3, r7
	bl      Function_16_2254a6c
	mov     r4, r0
	cmp     r4, #0xf
	bne     branch_2244664
	ldr     r1, [sp, #0x8]
	mov     r0, r5
	bl      BeSeq_AddToPointer
	b       branch_2244696

branch_2244664: @ 2244664 :thumb
	mov     r7, #0x1e
branch_2244666: @ 2244666 :thumb
	ldr     r0, [sp, #0x4]
	bl      Function_16_GetRandomNr
	lsr     r1, r0, #31
	lsl     r0, r0, #30
	sub     r0, r0, r1
	ror     r0, r7
	add     r6, r1, r0
	mov     r0, r6
	bl      Function_20787cc
	tst     r0, r4
	bne     branch_2244666
	ldr     r0, [r5, #0x64]
	mov     r1, #0xc0
	mov     r2, r0
	mul     r2, r1
	add     r2, r5, r2
	lsl     r0, r6, #1
	add     r2, r2, r0
	ldr     r0, [pc, #0xc] @ 0x224469c, (=BattleData_Move)
	add     r1, #0x64
	ldrh    r0, [r2, r0]
	str     r0, [r5, r1]
branch_2244696: @ 2244696 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x224469c

.word BattleData_Move @ 0x224469c



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd60: @ 22446a0 :thumb
	push    {r4,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	ldr     r1, [r4, #0x64]
	mov     r0, #0xc0
	mul     r0, r1
	ldr     r1, [pc, #0x30] @ 0x22446e4, (=BattleData_CurHP)
	add     r2, r4, r0
	ldr     r0, [r2, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r2, r1]
	mov     r2, #0x40
	bl      Function_208c0bc
	ldr     r3, [pc, #0x24] @ 0x22446e8, (=0x226e584)
	mov     r2, #0x0
branch_22446c6: @ 22446c6 :thumb
	ldrb    r1, [r3, #0x0]
	cmp     r0, r1
	ble     branch_22446d4
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r2, #0x6
	bcc     branch_22446c6
branch_22446d4: @ 22446d4 :thumb
	ldr     r0, [pc, #0x14] @ 0x22446ec, (=0x226e585)
	lsl     r1, r2, #1
	ldrb    r1, [r0, r1]
	ldr     r0, [pc, #0x14] @ 0x22446f0, (=BattleData_2154)
	str     r1, [r4, r0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22446e2

.align 2
.word BattleData_CurHP @ 0x22446e4
.word Unknown_226e584 @ 0x22446e8
.word Unknown_226e584+1 @ 0x22446ec
.word BattleData_2154 @ 0x22446f0



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd61: @ 22446f4 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r6, r0

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      BeSeq_LoadWord
	ldr     r2, [r5, #0x6c]
	mov     r4, r0
	lsl     r0, r2, #1
	add     r1, r5, r0
	ldr     r0, [pc, #0x7c] @ 0x2244790, (=BattleData_307c)
	ldrh    r1, [r1, r0]
	cmp     r1, #0x0
	beq     branch_2244782
	mov     r0, #0xb5
	lsl     r0, r0, #6              @ 0x2d40
	mov     r3, #0xc0
	add     r0, r5, r0
	mul     r3, r2
	add     r0, r0, r3
	bl      Function_2254ee0
	mov     r2, r0
	cmp     r2, #0x4
	beq     branch_2244740
	ldr     r0, [r5, #0x6c]
	mov     r1, #0xc0
	mul     r1, r0
	add     r1, r5, r1
	add     r3, r1, r2
	ldr     r1, [pc, #0x58] @ 0x2244794, (=BattleData_MovePP)
	ldrb    r3, [r3, r1]
	cmp     r3, #0x0
	bne     branch_224474a
branch_2244740: @ 2244740 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      BeSeq_AddToPointer
	b       branch_224478a

branch_224474a: @ 224474a :thumb
	mov     r1, #0x4
	cmp     r3, #0x4
	bge     branch_2244752
	mov     r1, r3
branch_2244752: @ 2244752 :thumb
	lsl     r0, r0, #1
	add     r3, r5, r0
	ldr     r0, [pc, #0x38] @ 0x2244790, (=BattleData_307c)
	ldrh    r3, [r3, r0]
	mov     r0, #0x49
	lsl     r0, r0, #2
	str     r3, [r5, r0]
	add     r0, #0xc
	str     r1, [r5, r0]
	ldr     r0, [pc, #0x2c] @ 0x2244794, (=BattleData_MovePP)
	ldr     r4, [r5, #0x6c]
	mov     r3, #0xc0
	add     r0, r5, r0
	mul     r3, r4
	add     r3, r0, r3
	ldrb    r0, [r3, r2]
	sub     r0, r0, r1
	strb    r0, [r3, r2]
	ldr     r2, [r5, #0x6c]
	mov     r0, r6
	mov     r1, r5
	bl      Function_2253ec0
	b       branch_224478a

branch_2244782: @ 2244782 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      BeSeq_AddToPointer
branch_224478a: @ 224478a :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x224478e

.align 2
.word BattleData_307c @ 0x2244790
.word BattleData_MovePP @ 0x2244794



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd62: @ 2244798 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r7, r0

	bl      LoadMainBattleData_2c
	mov     r4, r0

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r1, #0x4d
	mov     r0, #0x0
	lsl     r1, r1, #2
	ldr     r2, [pc, #0x124] @ 0x22448d8, (=BattleData_WazaSeqFileNr)
	str     r0, [r5, r1]
	ldr     r2, [r5, r2]
	cmp     r2, #0xd7
	bne     branch_2244866
	sub     r1, #0x10
	str     r2, [r5, r1]
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	bl      GetAbilityOfPkmnConsideringMultitypeWeatherLevitate
	cmp     r0, #0x2b
	beq     branch_22447ee
	ldr     r2, [r5, #0x64]
	mov     r0, #0xc0
	mov     r3, r2
	mul     r3, r0
	ldr     r2, [pc, #0x104] @ 0x22448dc, (=BattleData_StatusEffect)
	mov     r1, #0x0
	add     r3, r5, r3
	str     r1, [r3, r2]
	add     r1, r2, #0x4
	ldr     r2, [r5, #0x64]
	add     r1, r5, r1
	mul     r0, r2
	ldr     r3, [r1, r0]
	ldr     r2, [pc, #0xf8] @ 0x22448e0, (=0xf7ffffff)
	and     r2, r3
	str     r2, [r1, r0]
	b       branch_22447fa

branch_22447ee: @ 22447ee :thumb
	mov     r1, #0x4d
	lsl     r1, r1, #2
	ldr     r2, [r5, r1]
	mov     r0, #0x5
	orr     r0, r2
	str     r0, [r5, r1]
branch_22447fa: @ 22447fa :thumb
	mov     r0, #0x2
	tst     r0, r4
	beq     branch_2244858
	mov     r0, r7
	mov     r1, r5
	mov     r2, #0x10
	bl      GetTargetNrOfPkmn
	mov     r4, r0
	bl      Function_20787cc
	ldr     r1, [pc, #0xd0] @ 0x22448e4, (=BattleData_3108)
	ldrb    r1, [r5, r1]
	tst     r0, r1
	bne     branch_22448c6
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	mov     r2, r4
	mov     r3, #0x2b
	bl      Function_2255ab4_CheckAbility
	cmp     r0, #0x0
	bne     branch_2244842
	mov     r0, #0xc0
	mul     r0, r4
	ldr     r1, [pc, #0xac] @ 0x22448dc, (=BattleData_StatusEffect)
	mov     r3, #0x0
	add     r2, r5, r0
	str     r3, [r2, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	add     r3, r5, r1
	ldr     r2, [r3, r0]
	ldr     r1, [pc, #0xa4] @ 0x22448e0, (=0xf7ffffff)
	and     r1, r2
	str     r1, [r3, r0]
	b       branch_22448c6

branch_2244842: @ 2244842 :thumb
	mov     r1, #0x46
	lsl     r1, r1, #2
	mov     r0, r1
	str     r4, [r5, r1]
	add     r0, #0x1c
	ldr     r2, [r5, r0]
	mov     r0, #0xa
	orr     r0, r2
	add     r1, #0x1c
	str     r0, [r5, r1]
	b       branch_22448c6

branch_2244858: @ 2244858 :thumb
	mov     r1, #0x4d
	lsl     r1, r1, #2
	ldr     r2, [r5, r1]
	mov     r0, #0x8
	orr     r0, r2
	str     r0, [r5, r1]
	b       branch_22448c6

branch_2244866: @ 2244866 :thumb
	ldr     r3, [r5, #0x64]
	mov     r2, #0xc0
	mul     r2, r3
	add     r3, r5, r2
	ldr     r2, [pc, #0x6c] @ 0x22448dc, (=BattleData_StatusEffect)
	str     r0, [r3, r2]
	add     r0, r2, #0x4
	add     r6, r5, r0
	ldr     r0, [r5, #0x64]
	mov     r2, #0xc0
	mov     r3, r0
	mul     r3, r2
	ldr     r2, [r6, r3]
	ldr     r0, [pc, #0x5c] @ 0x22448e0, (=0xf7ffffff)
	and     r0, r2
	str     r0, [r6, r3]
	mov     r0, #0x2
	tst     r0, r4
	beq     branch_22448be
	mov     r0, r7
	mov     r1, r5
	mov     r2, #0x10
	bl      GetTargetNrOfPkmn
	mov     r4, r0
	bl      Function_20787cc
	ldr     r1, [pc, #0x44] @ 0x22448e4, (=BattleData_3108)
	ldrb    r1, [r5, r1]
	tst     r0, r1
	bne     branch_22448c6
	mov     r0, #0xc0
	mul     r0, r4
	ldr     r1, [pc, #0x30] @ 0x22448dc, (=BattleData_StatusEffect)
	mov     r3, #0x0
	add     r2, r5, r0
	str     r3, [r2, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	add     r3, r5, r1
	ldr     r2, [r3, r0]
	ldr     r1, [pc, #0x28] @ 0x22448e0, (=0xf7ffffff)
	and     r1, r2
	str     r1, [r3, r0]
	b       branch_22448c6

branch_22448be: @ 22448be :thumb
	ldr     r2, [r5, r1]
	mov     r0, #0x8
	orr     r0, r2
	str     r0, [r5, r1]
branch_22448c6: @ 22448c6 :thumb
	ldr     r3, [pc, #0x10] @ 0x22448d8, (=BattleData_WazaSeqFileNr)
	ldr     r2, [r5, #0x64]
	ldr     r3, [r5, r3]
	mov     r0, r7
	mov     r1, r5
	bl      Function_2266498
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22448d8

.word BattleData_WazaSeqFileNr @ 0x22448d8
.word BattleData_StatusEffect @ 0x22448dc
.word 0xf7ffffff @ 0x22448e0
.word BattleData_3108 @ 0x22448e4



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd63: @ 22448e8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r1
	mov     r6, r0

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x0]

	mov     r0, r6
	bl      LoadMainBattleData_2c
	str     r0, [sp, #0x4]
	ldr     r1, [r5, #0x64]
	mov     r0, r6
	bl      Function_16_223e208
	mov     r7, r0
	ldr     r1, [r5, #0x64]
	mov     r0, r6
	bl      Function_16_223e208
	cmp     r0, #0x0
	beq     branch_2244938
	ldr     r0, [sp, #0x4]
	mov     r1, #0x84
	tst     r0, r1
	bne     branch_2244938
	mov     r0, r5
	mov     r1, r4
	bl      BeSeq_AddToPointer
	b       branch_22449fc

branch_2244938: @ 2244938 :thumb
	ldr     r0, [r5, #0x64]
	add     r1, r5, r0
	ldr     r0, [pc, #0xc4] @ 0x2244a04, (=BattleData_219c)
	ldrb    r0, [r1, r0]
	bl      Function_20787cc
	lsl     r1, r7, #3
	add     r2, r5, r1
	mov     r1, #0x71
	lsl     r1, r1, #2
	ldr     r1, [r2, r1]
	lsl     r1, r1, #3
	lsr     r1, r1, #26
	tst     r0, r1
	beq     branch_2244960
	mov     r0, r5
	mov     r1, r4
	bl      BeSeq_AddToPointer
	b       branch_22449fc

branch_2244960: @ 2244960 :thumb
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	bl      GetAbilityOfPkmnConsideringMultitypeWeatherLevitate
	cmp     r0, #0x79
	beq     branch_2244978
	ldr     r1, [r5, #0x6c]
	mov     r0, r5
	bl      GetAbilityOfPkmnConsideringMultitypeWeatherLevitate
	cmp     r0, #0x79
	bne     branch_2244982
branch_2244978: @ 2244978 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      BeSeq_AddToPointer
	b       branch_22449fc

branch_2244982: @ 2244982 :thumb
	ldr     r2, [r5, #0x6c]
	mov     r0, #0xc0
	mov     r1, r2
	mul     r1, r0
	ldr     r3, [pc, #0x7c] @ 0x2244a08, (=BattleData_Item)
	add     r0, r5, r1
	ldrh    r0, [r0, r3]
	cmp     r0, #0x70
	bne     branch_224499e
	mov     r0, r5
	mov     r1, r4
	bl      BeSeq_AddToPointer
	b       branch_22449fc

branch_224499e: @ 224499e :thumb
	add     r3, #0x14
	add     r3, r5, r3
	ldr     r1, [r3, r1]
	lsl     r3, r1, #3
	lsr     r3, r3, #31
	bne     branch_22449b0
	lsl     r1, r1, #2
	lsr     r1, r1, #31
	beq     branch_22449ba
branch_22449b0: @ 22449b0 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      BeSeq_AddToPointer
	b       branch_22449fc

branch_22449ba: @ 22449ba :thumb
	cmp     r0, #0x0
	beq     branch_22449d6
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	mov     r3, #0x3c
	bl      Function_2255ab4_CheckAbility
	cmp     r0, #0x1
	bne     branch_22449d6
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	bl      BeSeq_AddToPointer
	b       branch_22449fc

branch_22449d6: @ 22449d6 :thumb
	ldr     r1, [r5, #0x64]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r5, r0
	ldr     r0, [pc, #0x28] @ 0x2244a08, (=BattleData_Item)
	ldrh    r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_22449f4

	ldr     r2, [r5, #0x6c]
	mov     r0, r6
	mov     r1, r5
	bl      Function_2255980
	cmp     r0, #0x0
	bne     branch_22449fc

branch_22449f4: @ 22449f4 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      BeSeq_AddToPointer

branch_22449fc: @ 22449fc :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2244a02

.align 2
.word BattleData_219c @ 0x2244a04
.word BattleData_Item @ 0x2244a08



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd64: @ 2244a0c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r1
	str     r0, [sp, #0x0]

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      BeSeq_LoadWord
	ldr     r1, [r5, #0x64]
	str     r0, [sp, #0x8]
	lsl     r0, r1, #1
	add     r2, r5, r0
	ldr     r0, [pc, #0x100] @ 0x2244b2c, (=BattleData_305c)
	ldrh    r0, [r2, r0]
	cmp     r0, #0xb6
	beq     branch_2244a4c
	cmp     r0, #0xc5
	beq     branch_2244a4c
	cmp     r0, #0xcb
	beq     branch_2244a4c
	ldr     r0, [pc, #0xf4] @ 0x2244b30, (=BattleData_2dc8)
	mov     r3, r1
	mov     r2, #0xc0
	add     r0, r5, r0
	mul     r3, r2
	ldr     r2, [r0, r3]
	ldr     r1, [pc, #0xec] @ 0x2244b34, (=0xffffe7ff)
	and     r1, r2
	str     r1, [r0, r3]
branch_2244a4c: @ 2244a4c :thumb
	ldr     r0, [pc, #0xe8] @ 0x2244b38, (=BattleData_3150)
	ldr     r0, [r5, r0]
	cmp     r0, #0x1
	beq     branch_2244a5a
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	b       branch_2244a5e

branch_2244a5a: @ 2244a5a :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x4]
branch_2244a5e: @ 2244a5e :thumb
	ldr     r6, [r5, #0x64]
	ldr     r0, [pc, #0xcc] @ 0x2244b30, (=BattleData_2dc8)
	mov     r7, r6
	add     r4, r5, r0
	mov     r0, #0xc0
	mul     r7, r0
	ldr     r0, [sp, #0x0]
	bl      Function_16_GetRandomNr
	ldr     r1, [r4, r7]
	lsl     r1, r1, #19
	lsr     r1, r1, #30
	lsl     r2, r1, #1
	ldr     r1, [pc, #0xc0] @ 0x2244b3c, (=0x226e57c)
	ldrh    r1, [r1, r2]
	cmp     r1, r0
	bcc     branch_2244b16
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	beq     branch_2244b16
	ldr     r0, [pc, #0xb8] @ 0x2244b40, (=BattleData_WazaSeqFileNr)
	ldr     r0, [r5, r0]
	lsl     r0, r0, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0xb4] @ 0x2244b44, (=BattleData_3de)
	ldrh    r0, [r1, r0]
	cmp     r0, #0x6f
	bne     branch_2244aae
	mov     r2, #0x75
	lsl     r2, r2, #2
	add     r0, r5, r2
	lsl     r4, r6, #6
	ldr     r3, [r0, r4]
	mov     r1, #0x4
	orr     r1, r3
	str     r1, [r0, r4]
	mov     r0, r5
	sub     r2, #0xba
	add     r0, #0xf6
	strh    r2, [r0, #0x0]
branch_2244aae: @ 2244aae :thumb
	ldr     r0, [pc, #0x90] @ 0x2244b40, (=BattleData_WazaSeqFileNr)
	ldr     r0, [r5, r0]
	lsl     r0, r0, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0x8c] @ 0x2244b44, (=BattleData_3de)
	ldrh    r0, [r1, r0]
	cmp     r0, #0x74
	bne     branch_2244ada
	mov     r2, #0x75
	ldr     r1, [r5, #0x64]
	lsl     r2, r2, #2
	lsl     r4, r1, #6
	add     r0, r5, r2
	mov     r1, r2
	ldr     r3, [r0, r4]
	add     r1, #0x2c
	orr     r1, r3
	str     r1, [r0, r4]
	mov     r0, r5
	sub     r2, #0x1a
	add     r0, #0xf6
	strh    r2, [r0, #0x0]
branch_2244ada: @ 2244ada :thumb
	mov     r0, r5
	mov     r1, #0x2
	add     r0, #0xf5
	strb    r1, [r0, #0x0]
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	bl      Function_2255560
	mov     r1, r5
	add     r1, #0xf8
	str     r0, [r1, #0x0]
	ldr     r2, [r5, #0x64]
	mov     r0, #0xc0
	mov     r1, r2
	mul     r1, r0
	ldr     r0, [pc, #0x34] @ 0x2244b30, (=BattleData_2dc8)
	add     r0, r5, r0
	ldr     r3, [r0, r1]
	lsl     r2, r3, #19
	lsr     r4, r2, #30
	cmp     r4, #0x3
	bcs     branch_2244b26
	ldr     r2, [pc, #0x2c] @ 0x2244b34, (=0xffffe7ff)
	and     r3, r2
	add     r2, r4, #0x1
	lsl     r2, r2, #30
	lsr     r2, r2, #19
	orr     r2, r3
	str     r2, [r0, r1]
	b       branch_2244b26

branch_2244b16: @ 2244b16 :thumb
	ldr     r1, [r4, r7]
	ldr     r0, [pc, #0x18] @ 0x2244b34, (=0xffffe7ff)
	and     r0, r1
	str     r0, [r4, r7]
	ldr     r1, [sp, #0x8]
	mov     r0, r5
	bl      BeSeq_AddToPointer
branch_2244b26: @ 2244b26 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2244b2c

.word BattleData_305c @ 0x2244b2c
.word BattleData_2dc8 @ 0x2244b30
.word 0xffffe7ff @ 0x2244b34
.word BattleData_3150 @ 0x2244b38
.word Unknown_226e57c @ 0x2244b3c
.word BattleData_WazaSeqFileNr @ 0x2244b40
.word BattleData_3de @ 0x2244b44



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd65: @ 2244b48 :thumb
	push    {r3-r5,lr}
	mov     r5, r1

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r4, r0

	ldr     r1, [r5, #0x64]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r5, r0
	ldr     r0, [pc, #0x4c] @ 0x2244bb4, (=BattleData_MaxHP)
	ldr     r0, [r1, r0]
	mov     r1, #0x4
	bl      Function_16_22563f8_Division
	ldr     r1, [r5, #0x64]
	mov     r2, #0xc0
	mov     r3, r1
	mul     r3, r2
	add     r1, r5, r3
	ldr     r3, [pc, #0x3c] @ 0x2244bb8, (=BattleData_CurHP)
	ldr     r1, [r1, r3]
	cmp     r1, r0
	bgt     branch_2244b8a
	mov     r0, r5
	mov     r1, r4
	bl      BeSeq_AddToPointer
	b       branch_2244bae

branch_2244b8a: @ 2244b8a :thumb
	ldr     r1, [pc, #0x30] @ 0x2244bbc, (=BattleData_StatusEffectDamage)
	neg     r4, r0
	str     r4, [r5, r1]
	ldr     r1, [r5, #0x64]
	mov     r4, r1
	mov     r1, r3
	mul     r4, r2
	add     r3, #0x24
	add     r4, r5, r4
	add     r1, #0x54
	str     r0, [r4, r1]
	ldr     r0, [r5, #0x64]
	add     r3, r5, r3
	mul     r2, r0
	ldr     r1, [r3, r2]
	ldr     r0, [pc, #0x14] @ 0x2244bc0, (=0xffff1fff)
	and     r0, r1
	str     r0, [r3, r2]
branch_2244bae: @ 2244bae :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2244bb2

.align 2
.word BattleData_MaxHP @ 0x2244bb4
.word BattleData_CurHP @ 0x2244bb8
.word BattleData_StatusEffectDamage @ 0x2244bbc
.word 0xffff1fff @ 0x2244bc0



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd66: @ 2244bc4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]

	mov     r0, r1
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	ldr     r0, [sp, #0x4]
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x1c]

	ldr     r0, [sp, #0x0]
	bl      LoadMainBattleData_2c
	mov     r4, r0
	mov     r0, #0x1
	tst     r0, r4
	bne     branch_2244bec
	b       branch_2244d3e

branch_2244bec: @ 2244bec :thumb
	ldr     r1, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	ldr     r1, [r1, #0x6c]
	mov     r7, #0x0
	bl      GetMainBattleData_PkmnPartyAdr
	ldr     r1, [sp, #0x4]
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x0]
	ldr     r1, [r1, #0x6c]
	bl      GetMainBattleData_NrOfPkmnInParty
	mov     r6, r0
	mov     r0, #0x8
	tst     r0, r4
	bne     branch_2244c20
	mov     r0, #0x10
	tst     r0, r4
	beq     branch_2244c38
	ldr     r1, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	ldr     r1, [r1, #0x6c]
	bl      Function_16_223e208
	cmp     r0, #0x0
	beq     branch_2244c38
branch_2244c20: @ 2244c20 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	mov     r0, #0x1
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x4]
	ldr     r1, [r0, #0x6c]
	add     r1, r0, r1
	ldr     r0, [pc, #0x128] @ 0x2244d58, (=BattleData_219c)
	ldrb    r0, [r1, r0]
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x8]
	b       branch_2244c78

branch_2244c38: @ 2244c38 :thumb
	mov     r0, #0x2
	str     r0, [sp, #0x14]
	tst     r0, r4
	beq     branch_2244c62
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x4]
	ldr     r1, [r0, #0x6c]
	add     r2, r0, r1
	ldr     r0, [pc, #0x10c] @ 0x2244d58, (=BattleData_219c)
	ldrb    r0, [r2, r0]
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x0]
	bl      Function_16_223e258
	ldr     r1, [sp, #0x4]
	add     r1, r1, r0
	ldr     r0, [pc, #0xfc] @ 0x2244d58, (=BattleData_219c)
	ldrb    r0, [r1, r0]
	str     r0, [sp, #0x8]
	b       branch_2244c78

branch_2244c62: @ 2244c62 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	mov     r0, #0x1
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x4]
	ldr     r1, [r0, #0x6c]
	add     r1, r0, r1
	ldr     r0, [pc, #0xe4] @ 0x2244d58, (=BattleData_219c)
	ldrb    r0, [r1, r0]
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x8]
branch_2244c78: @ 2244c78 :thumb
	ldr     r5, [sp, #0x10]
	mov     r0, r5
	cmp     r0, r6
	bge     branch_2244cba
branch_2244c80: @ 2244c80 :thumb
	ldr     r0, [sp, #0x18]
	mov     r1, r5
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x5
	mov     r2, #0x0
	mov     r4, r0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_2244cb4
	mov     r0, r4
	mov     r1, #0x4c
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_2244cb4
	mov     r0, r4
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_2244cb4
	.hword  0x1c7f @ add r7, r7, #0x1
branch_2244cb4: @ 2244cb4 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r6
	blt     branch_2244c80
branch_2244cba: @ 2244cba :thumb
	ldr     r0, [sp, #0x14]
	cmp     r7, r0
	bgt     branch_2244cca
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x1c]
	bl      BeSeq_AddToPointer
	b       branch_2244d52

branch_2244cca: @ 2244cca :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	bl      Function_22559fc
	cmp     r0, #0x0
	beq     branch_2244d34
	mov     r7, #0x5
branch_2244cd8: @ 2244cd8 :thumb
	ldr     r0, [sp, #0x0]
	bl      Function_16_GetRandomNr
	mov     r1, r6
	blx     _s32_div_f
	ldr     r0, [sp, #0x10]
	mov     r5, r1
	add     r5, r5, r0
	ldr     r0, [sp, #0xc]
	cmp     r5, r0
	beq     branch_2244cd8
	ldr     r0, [sp, #0x8]
	cmp     r5, r0
	beq     branch_2244cd8
	ldr     r0, [sp, #0x18]
	mov     r1, r5
	bl      GetAdrOfPkmnInParty
	mov     r1, r7
	mov     r2, #0x0
	mov     r4, r0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_2244cd8
	mov     r0, r4
	mov     r1, #0x4c
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x1
	beq     branch_2244cd8
	mov     r0, r4
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_2244cd8
	ldr     r0, [sp, #0x4]
	ldr     r1, [r0, #0x6c]
	add     r1, r0, r1
	ldr     r0, [pc, #0x2c] @ 0x2244d5c, (=0x21a0)
	strb    r5, [r1, r0]
	b       branch_2244d52

branch_2244d34: @ 2244d34 :thumb
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x1c]
	bl      BeSeq_AddToPointer
	b       branch_2244d52

branch_2244d3e: @ 2244d3e :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	bl      Function_22559fc
	cmp     r0, #0x0
	bne     branch_2244d52
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x1c]
	bl      BeSeq_AddToPointer
branch_2244d52: @ 2244d52 :thumb
	mov     r0, #0x0
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x2244d58

.word BattleData_219c @ 0x2244d58
.word 0x21a0 @ 0x2244d5c



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd67: @ 2244d60 :thumb
	push    {r3-r7,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	ldr     r5, [r4, #0x64]
	ldr     r1, [pc, #0x1c0] @ 0x2244f30, (=BattleData_2db0)
	mov     r0, r5
	mov     r2, #0xc0
	mov     r5, #0x2
	add     r3, r4, r1
	mul     r0, r2
	ldr     r6, [r3, r0]
	lsl     r5, r5, #20
	orr     r5, r6
	str     r5, [r3, r0]
	ldr     r3, [r4, #0x64]
	mov     r0, #0x0
	mov     r5, r3
	mul     r5, r2
	mov     r3, r1
	add     r5, r4, r5
	add     r3, #0x38
	strh    r0, [r5, r3]
	mov     r3, r1
	add     r3, #0x18
	ldr     r6, [r4, #0x64]
	add     r5, r4, r3
	mov     r3, r6
	mul     r3, r2
	ldr     r7, [r5, r3]
	mov     r6, #0x7
	bic     r7, r6
	str     r7, [r5, r3]
	ldr     r3, [r4, #0x6c]
	mov     r5, r3
	mul     r5, r2
	mov     r3, r1
	add     r5, r4, r5
	sub     r3, #0x8
	ldr     r3, [r5, r3]
	ldr     r5, [r4, #0x64]
	mov     r6, r5
	mul     r6, r2
	mov     r5, r1
	add     r6, r4, r6
	add     r5, #0x34
	str     r3, [r6, r5]
	ldr     r3, [r4, #0x6c]
	mov     r5, r3
	mul     r5, r2
	mov     r3, r1
	add     r5, r4, r5
	add     r3, #0xe
	ldrb    r3, [r5, r3]
	ldr     r5, [r4, #0x64]
	mov     r6, r5
	lsl     r3, r3, #28
	mul     r6, r2
	mov     r5, r1
	lsr     r3, r3, #28
	add     r6, r4, r6
	add     r5, #0x4a
	strh    r3, [r6, r5]
	mov     r3, r1
	add     r3, #0x1c
	ldr     r6, [r4, #0x64]
	add     r5, r4, r3
	mov     r3, r6
	mul     r3, r2
	ldr     r7, [r5, r3]
	mov     r6, #0x3c
	bic     r7, r6
	str     r7, [r5, r3]
	ldr     r6, [r4, #0x64]
	sub     r1, #0x70
	mov     r3, r6
	mul     r3, r2
	ldr     r7, [r5, r3]
	ldr     r6, [pc, #0x130] @ 0x2244f34, (=0xffffe3ff)
	and     r6, r7
	str     r6, [r5, r3]
	add     r5, r4, r1
	ldr     r1, [r4, #0x64]
	mov     r3, r1
	mul     r3, r2
	ldr     r1, [r4, #0x6c]
	add     r3, r5, r3
	mul     r2, r1
	add     r2, r5, r2
branch_2244e16: @ 2244e16 :thumb
	ldrb    r1, [r2, r0]
	strb    r1, [r3, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r0, #0x28
	bcc     branch_2244e16
	ldr     r3, [r4, #0x64]
	ldr     r1, [pc, #0x114] @ 0x2244f38, (=BattleData_2d68)
	mov     r6, r3
	mov     r2, #0xc0
	add     r0, r4, r1
	mul     r6, r2
	ldr     r5, [r0, r6]
	mov     r3, #0x1
	bic     r5, r3
	str     r5, [r0, r6]
	ldr     r3, [r4, #0x64]
	mov     r6, r3
	mul     r6, r2
	ldr     r5, [r0, r6]
	mov     r3, #0x2
	bic     r5, r3
	str     r5, [r0, r6]
	ldr     r3, [r4, #0x64]
	mov     r6, r3
	mul     r6, r2
	ldr     r5, [r0, r6]
	mov     r3, #0x4
	bic     r5, r3
	str     r5, [r0, r6]
	ldr     r3, [r4, #0x64]
	mov     r6, r3
	mul     r6, r2
	ldr     r5, [r0, r6]
	mov     r3, #0x8
	bic     r5, r3
	str     r5, [r0, r6]
	ldr     r3, [r4, #0x64]
	mov     r6, r3
	mul     r6, r2
	ldr     r5, [r0, r6]
	mov     r3, #0x10
	bic     r5, r3
	str     r5, [r0, r6]
	ldr     r3, [r4, #0x64]
	mov     r6, r3
	mul     r6, r2
	ldr     r5, [r0, r6]
	mov     r3, #0x20
	bic     r5, r3
	str     r5, [r0, r6]
	ldr     r5, [r4, #0x64]
	mov     r3, r5
	mul     r3, r2
	ldr     r6, [r0, r3]
	ldr     r5, [pc, #0xb8] @ 0x2244f3c, (=0xfffffeff)
	and     r5, r6
	str     r5, [r0, r3]
	ldr     r5, [r4, #0x64]
	mov     r3, r5
	mul     r3, r2
	ldr     r6, [r0, r3]
	ldr     r5, [pc, #0xac] @ 0x2244f40, (=0xfffffdff)
	and     r5, r6
	str     r5, [r0, r3]
	ldr     r5, [r4, #0x64]
	mov     r3, r5
	mul     r3, r2
	ldr     r6, [r0, r3]
	ldr     r5, [pc, #0xa4] @ 0x2244f44, (=0xfffffbff)
	and     r5, r6
	str     r5, [r0, r3]
	mov     r3, r1
	add     r3, #0x60
	add     r6, r4, r3
	ldr     r3, [r4, #0x64]
	add     r1, #0x70
	mov     r5, r3
	mul     r5, r2
	ldr     r7, [r6, r5]
	ldr     r3, [pc, #0x90] @ 0x2244f48, (=0xbfffffff)
	and     r3, r7
	mov     r7, r2
	add     r7, #0x90
	ldr     r7, [r4, r7]
	lsl     r7, r7, #31
	lsr     r7, r7, #1
	orr     r3, r7
	str     r3, [r6, r5]
	mov     r3, r2
	add     r3, #0x90
	ldr     r3, [r4, r3]
	add     r6, r3, #0x1
	ldr     r3, [r4, #0x64]
	mov     r5, r3
	mul     r5, r2
	add     r3, r4, r5
	str     r6, [r3, r1]
	ldr     r1, [r4, #0x64]
	mov     r5, r1
	mul     r5, r2
	ldr     r3, [r0, r5]
	mov     r1, #0x40
	bic     r3, r1
	str     r3, [r0, r5]
	ldr     r1, [r4, #0x64]
	mov     r6, #0x0
	mov     r3, r1
	mul     r3, r2
	ldr     r2, [r0, r3]
	mov     r1, #0x80
	bic     r2, r1
	str     r2, [r0, r3]
	mov     r0, #0xf9
	mov     r5, r6
	mov     r1, #0x5
	lsl     r0, r0, #2
branch_2244efe: @ 2244efe :thumb
	ldr     r3, [r4, #0x64]
	mov     r2, #0xc0
	mul     r2, r3
	add     r3, r4, r2
	ldr     r2, [pc, #0x44] @ 0x2244f4c, (=BattleData_Move)
	add     r7, r3, r5
	ldrh    r2, [r7, r2]
	lsl     r2, r2, #4
	add     r2, r4, r2
	ldrb    r2, [r2, r0]
	cmp     r2, #0x5
	bcs     branch_2244f1e
	add     r7, r3, r6
	ldr     r3, [pc, #0x34] @ 0x2244f50, (=BattleData_MovePP)
	strb    r2, [r7, r3]
	b       branch_2244f24

branch_2244f1e: @ 2244f1e :thumb
	ldr     r2, [pc, #0x30] @ 0x2244f50, (=BattleData_MovePP)
	add     r3, r3, r6
	strb    r1, [r3, r2]
branch_2244f24: @ 2244f24 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r6, #0x4
	blt     branch_2244efe
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2244f30

.word BattleData_2db0 @ 0x2244f30
.word 0xffffe3ff @ 0x2244f34
.word BattleData_2d68 @ 0x2244f38
.word 0xfffffeff @ 0x2244f3c
.word 0xfffffdff @ 0x2244f40
.word 0xfffffbff @ 0x2244f44
.word 0xbfffffff @ 0x2244f48
.word BattleData_Move @ 0x2244f4c
.word BattleData_MovePP @ 0x2244f50



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd68: @ 2244f54 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r6, r0

	ldr     r1, [r4, #0x64]
	mov     r0, r5
	bl      Function_16_223e208
	mov     r2, #0x72
	mov     r1, #0x1
	mov     r3, r0
	eor     r3, r1
	lsl     r0, r3, #3
	add     r5, r4, r0
	lsl     r2, r2, #2
	ldr     r5, [r5, r2]
	lsl     r5, r5, #30
	lsr     r5, r5, #30
	cmp     r5, #0x3
	bne     branch_2244faa
	mov     r0, #0xb5
	lsl     r0, r0, #2
	add     r2, r4, r0
	ldr     r3, [r4, #0x64]
	mov     r0, #0x1c
	mul     r0, r3
	ldr     r5, [r2, r0]
	mov     r3, #0x1
	bic     r5, r3
	orr     r1, r5
	str     r1, [r2, r0]
	mov     r0, r4
	mov     r1, r6
	bl      BeSeq_AddToPointer
	b       branch_2244fd2

branch_2244faa: @ 2244faa :thumb
	mov     r1, r2
	sub     r1, #0xc
	lsl     r6, r3, #2
	add     r1, r4, r1
	ldr     r5, [r1, r6]
	mov     r3, #0x4
	orr     r3, r5
	str     r3, [r1, r6]
	add     r2, r4, r2
	ldr     r4, [r2, r0]
	mov     r3, #0x3
	mov     r1, r4
	bic     r1, r3
	lsl     r3, r4, #30
	lsr     r3, r3, #30
	add     r4, r3, #0x1
	mov     r3, #0x3
	and     r3, r4
	orr     r1, r3
	str     r1, [r2, r0]
branch_2244fd2: @ 2244fd2 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2244fd6


/* Input:
r0: MainBattleData
r1: BattleData
*/
.align 2, 0
.thumb
BeSeq_Cmd69: @ 2244fd8 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r6, r0

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r7, r0

	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	bl      GetTargetNrOfPkmn
	mov     r4, r0
	mov     r0, r6
	mov     r1, r4
	bl      Function_16_223e208
	lsl     r0, r0, #3
	add     r1, r5, r0
	mov     r0, #0x72
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	lsl     r0, r0, #30
	lsr     r1, r0, #30
	beq     branch_2245046
	mov     r0, #0xc0
	mul     r0, r4
	ldr     r4, [pc, #0x34] @ 0x2245054, (=BattleData_CurHP)
	add     r0, r5, r0
	ldr     r2, [r0, r4]
	cmp     r2, #0x0
	beq     branch_2245046
	mov     r2, #0x5
	sub     r1, r2, r1
	ldr     r3, [pc, #0x28] @ 0x2245058, (=BattleData_StatusEffectDamage)
	lsl     r1, r1, #1
	str     r1, [r5, r3]
	add     r1, r4, #0x4
	ldr     r1, [r0, r1]
	sub     r0, r2, #0x6
	mul     r0, r1
	ldr     r1, [r5, r3]
	bl      Function_16_22563f8_Division
	ldr     r1, [pc, #0x14] @ 0x2245058, (=BattleData_StatusEffectDamage)
	str     r0, [r5, r1]
	b       branch_224504e

branch_2245046: @ 2245046 :thumb
	mov     r0, r5
	mov     r1, r7
	bl      BeSeq_AddToPointer
branch_224504e: @ 224504e :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2245052

.align 2
.word BattleData_CurHP @ 0x2245054
.word BattleData_StatusEffectDamage @ 0x2245058



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd6a: @ 224505c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r0
	str     r1, [sp, #0x0]

	mov     r0, r1
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	ldr     r0, [sp, #0x0]
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x8]

	mov     r0, r4
	bl      GetMainBattleData_NrOfBattleTextPtrs
	mov     r2, #0x4d
	mov     r7, #0x0
	str     r0, [sp, #0x4]
	mov     r1, r0
	ldr     r0, [sp, #0x0]
	lsl     r2, r2, #2
	str     r1, [r0, r2]
	ldr     r0, [sp, #0x4]
	mov     r6, r7
	cmp     r0, #0x0
	ble     branch_22450ec
	ldr     r4, [sp, #0x0]
	ldr     r1, [pc, #0x6c] @ 0x2245100, (=BattleData_2dc8)
	mov     r0, r4
	add     r5, r0, r1
branch_2245098: @ 2245098 :thumb
	mov     r0, #0xb7
	lsl     r0, r0, #6
	ldr     r1, [r4, r0]
	mov     r0, #0x20
	tst     r0, r1
	bne     branch_22450be
	ldr     r0, [pc, #0x5c] @ 0x2245104, (=BattleData_CurHP)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_22450be
	ldr     r0, [sp, #0x0]
	mov     r2, r6
	mov     r1, r0
	ldr     r1, [r1, #0x64]
	mov     r3, #0x2b
	bl      Function_2255ab4_CheckAbility
	cmp     r0, #0x1
	bne     branch_22450c2
branch_22450be: @ 22450be :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	b       branch_22450e0

branch_22450c2: @ 22450c2 :thumb
	mov     r0, #0xb7
	lsl     r0, r0, #6
	ldr     r1, [r4, r0]
	mov     r0, #0x20
	orr     r1, r0
	mov     r0, #0xb7
	lsl     r0, r0, #6
	str     r1, [r4, r0]
	ldr     r1, [r5, #0x0]
	ldr     r0, [pc, #0x30] @ 0x2245108, (=0xffff9fff)
	and     r1, r0
	mov     r0, #0x6
	lsl     r0, r0, #12
	orr     r0, r1
	str     r0, [r5, #0x0]
branch_22450e0: @ 22450e0 :thumb
	ldr     r0, [sp, #0x4]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0xc0
	add     r5, #0xc0
	cmp     r6, r0
	blt     branch_2245098
branch_22450ec: @ 22450ec :thumb
	ldr     r0, [sp, #0x4]
	cmp     r7, r0
	bne     branch_22450fa
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x8]
	bl      BeSeq_AddToPointer
branch_22450fa: @ 22450fa :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2245100

.word BattleData_2dc8 @ 0x2245100
.word BattleData_CurHP @ 0x2245104
.word 0xffff9fff @ 0x2245108



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd6b: @ 224510c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      BeSeq_GetVariableAdress
	ldr     r1, [pc, #0x10] @ 0x224513c, (=BattleData_3104)
	ldr     r1, [r4, r1]
	add     r2, r4, r1
	ldr     r1, [pc, #0xc] @ 0x2245140, (=BattleData_21ec)
	ldrb    r1, [r2, r1]
	str     r1, [r0, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224513a

.align 2
.word BattleData_3104 @ 0x224513c
.word BattleData_21ec @ 0x2245140



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd6c: @ 2245144 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r6, r0

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r7, r0

	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      BeSeq_GetVariableAdress
	mov     r6, r0
	mov     r0, r5
	bl      GetMainBattleData_NrOfBattleTextPtrs
	ldr     r1, [r6, #0x0]
	cmp     r1, r0
	bcs     branch_2245182
	mov     r0, r4
	mov     r1, r7
	bl      BeSeq_AddToPointer
branch_2245182: @ 2245182 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2245186


/* Input:
r0: MainBattleData
r1: BattleData
*/
.align 2, 0
.thumb
BeSeq_Cmd6d: @ 2245188 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r1
	mov     r6, r0

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r2, r0
	mov     r0, r6
	mov     r1, r5
	bl      GetTargetNrOfPkmn
	mov     r4, r0
	mov     r0, #0x4e
	mov     r3, #0x0
	lsl     r0, r0, #2
	str     r3, [r5, r0]
	ldr     r0, [pc, #0x27c] @ 0x2245430, (=BattleData_StatusEffectDamage)
	mov     r1, r4
	str     r3, [r5, r0]
	mov     r0, r5
	mov     r2, #PKMNBATTLEDATA_TYPE1
	bl      ReadPkmnBattleData1
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #PKMNBATTLEDATA_TYPE2
	mov     r3, #0x0
	bl      ReadPkmnBattleData1
	mov     r7, r0
	mov     r0, #0xd
	str     r0, [sp, #0x0]
	mov     r0, r6
	mov     r1, r5
	mov     r2, #0x8
	mov     r3, #0x0
	bl      Function_16_22555a4
	cmp     r0, #0x0
	bne     branch_22451f8
	mov     r0, #0x4c
	str     r0, [sp, #0x0]
	mov     r0, r6
	mov     r1, r5
	mov     r2, #0x8
	mov     r3, #0x0
	bl      Function_16_22555a4
	cmp     r0, #0x0
	beq     branch_22451fa
branch_22451f8: @ 22451f8 :thumb
	b       branch_2245428

branch_22451fa: @ 22451fa :thumb
	mov     r0, #0x6
	lsl     r0, r0, #6          @ =0x180 BattleData_Weather
	ldr     r1, [r5, r0]
	mov     r0, #0xc
	tst     r0, r1
	beq     branch_2245264
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x5
	beq     branch_2245264
	cmp     r7, #0x5
	beq     branch_2245264
	cmp     r0, #0x8
	beq     branch_2245264
	cmp     r7, #0x8
	beq     branch_2245264
	cmp     r0, #0x4
	beq     branch_2245264
	cmp     r7, #0x4
	beq     branch_2245264
	mov     r0, #0xc0
	mov     r6, r4
	mul     r6, r0
	ldr     r0, [pc, #0x20c] @ 0x2245434, (=BattleData_CurHP)
	add     r1, r5, r6
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2245264
	mov     r0, r5
	mov     r1, r4
	bl      GetAbilityOfPkmnConsideringMultitypeWeatherLevitate
	cmp     r0, #0x8
	beq     branch_2245264
	mov     r3, #0xb7
	add     r1, r5, r6
	lsl     r3, r3, #6
	ldr     r2, [r1, r3]
	ldr     r0, [pc, #0x1f0] @ 0x2245438, (=0x40080)
	tst     r0, r2
	bne     branch_2245264
	mov     r0, #0xc9
	mov     r2, r0
	add     r2, #0x5b
	str     r0, [r5, r2]
	sub     r3, #0x30
	ldr     r1, [r1, r3]
	sub     r0, #0xca
	mul     r0, r1
	mov     r1, #0x10
	bl      Function_16_22563f8_Division
	ldr     r1, [pc, #0x1cc] @ 0x2245430, (=BattleData_StatusEffectDamage)
	str     r0, [r5, r1]
branch_2245264: @ 2245264 :thumb
	mov     r0, #0x6
	lsl     r0, r0, #6          @ =0x180 BattleData_Weather
	ldr     r1, [r5, r0]
	mov     r0, #0x30
	tst     r0, r1
	beq     branch_22452cc
	mov     r0, #0xc0
	mov     r6, r4
	mul     r6, r0
	ldr     r0, [pc, #0x1bc] @ 0x2245434, (=BattleData_CurHP)
	add     r2, r5, r6
	ldr     r1, [r2, r0]
	cmp     r1, #0x0
	beq     branch_22452cc
	add     r0, #0x34
	ldr     r1, [r2, r0]
	ldr     r0, [pc, #0x1b0] @ 0x2245438, (=0x40080)
	tst     r0, r1
	bne     branch_22452cc
	mov     r0, r5
	mov     r1, r4
	bl      GetAbilityOfPkmnConsideringMultitypeWeatherLevitate
	cmp     r0, #0x57
	beq     branch_22452a2
	mov     r0, r5
	mov     r1, r4
	bl      GetAbilityOfPkmnConsideringMultitypeWeatherLevitate
	cmp     r0, #0x5e
	bne     branch_22452b8
branch_22452a2: @ 22452a2 :thumb
	ldr     r0, [pc, #0x198] @ 0x224543c, (=BattleData_MaxHP)
	add     r1, r5, r6
	ldr     r1, [r1, r0]
	mov     r0, #0x0
	mvn     r0, r0
	mul     r0, r1
	mov     r1, #0x8
	bl      Function_16_22563f8_Division
	ldr     r1, [pc, #0x178] @ 0x2245430, (=BattleData_StatusEffectDamage)
	str     r0, [r5, r1]
branch_22452b8: @ 22452b8 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      GetAbilityOfPkmnConsideringMultitypeWeatherLevitate
	cmp     r0, #0x5e
	bne     branch_22452cc
	mov     r0, #0x4e
	mov     r1, #0x2
	lsl     r0, r0, #2
	str     r1, [r5, r0]
branch_22452cc: @ 22452cc :thumb
	mov     r0, #0x6
	lsl     r0, r0, #6          @ =0x180 BattleData_Weather
	ldr     r1, [r5, r0]
	mov     r0, #0xc0
	tst     r1, r0
	beq     branch_224534e
	ldr     r1, [pc, #0x158] @ 0x2245434, (=BattleData_CurHP)
	mov     r6, r4
	mul     r6, r0
	add     r0, r5, r1
	str     r0, [sp, #0x8]
	ldr     r0, [r0, r6]
	cmp     r0, #0x0
	beq     branch_224534e
	add     r0, r5, r6
	add     r1, #0x34
	ldr     r1, [r0, r1]
	ldr     r0, [pc, #0x148] @ 0x2245438, (=0x40080)
	tst     r0, r1
	bne     branch_224534e
	mov     r0, r5
	mov     r1, r4
	bl      GetAbilityOfPkmnConsideringMultitypeWeatherLevitate
	cmp     r0, #0x73
	bne     branch_224531a
	ldr     r0, [pc, #0x138] @ 0x224543c, (=BattleData_MaxHP)
	add     r1, r5, r6
	ldr     r0, [r1, r0]
	ldr     r1, [sp, #0x8]
	ldr     r1, [r1, r6]
	cmp     r1, r0
	bcs     branch_224534e
	mov     r1, #0x10
	bl      Function_16_22563f8_Division
	ldr     r1, [pc, #0x118] @ 0x2245430, (=BattleData_StatusEffectDamage)
	str     r0, [r5, r1]
	b       branch_224534e

branch_224531a: @ 224531a :thumb
	ldr     r0, [sp, #0x4]
	cmp     r0, #0xf
	beq     branch_224534e
	cmp     r7, #0xf
	beq     branch_224534e
	mov     r0, r5
	mov     r1, r4
	bl      GetAbilityOfPkmnConsideringMultitypeWeatherLevitate
	cmp     r0, #0x51
	beq     branch_224534e
	ldr     r1, [pc, #0x10c] @ 0x2245440, (=0x102)
	mov     r0, r1
	add     r0, #0x22
	str     r1, [r5, r0]
	ldr     r0, [pc, #0x100] @ 0x224543c, (=BattleData_MaxHP)
	add     r1, r5, r6
	ldr     r1, [r1, r0]
	mov     r0, #0x0
	mvn     r0, r0
	mul     r0, r1
	mov     r1, #0x10
	bl      Function_16_22563f8_Division
	ldr     r1, [pc, #0xe4] @ 0x2245430, (=BattleData_StatusEffectDamage)
	str     r0, [r5, r1]
branch_224534e: @ 224534e :thumb
	mov     r0, #0x6
	lsl     r0, r0, #6          @ =0x180 BattleData_Weather
	ldr     r1, [r5, r0]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_2245428
	ldr     r1, [pc, #0xd8] @ 0x2245434, (=BattleData_CurHP)
	mov     r0, #0xc0
	mov     r6, r4
	mul     r6, r0
	add     r7, r5, r1
	ldr     r0, [r7, r6]
	cmp     r0, #0x0
	beq     branch_2245390
	.hword  0x1d09 @ add r1, r1, #0x4
	add     r1, r5, r1
	str     r1, [sp, #0xc]
	ldr     r1, [r1, r6]
	cmp     r0, r1
	bcs     branch_2245390
	mov     r0, r5
	mov     r1, r4
	bl      GetAbilityOfPkmnConsideringMultitypeWeatherLevitate
	cmp     r0, #0x2c
	bne     branch_2245390
	ldr     r0, [sp, #0xc]
	mov     r1, #0x10
	ldr     r0, [r0, r6]
	bl      Function_16_22563f8_Division
	ldr     r1, [pc, #0xa0] @ 0x2245430, (=BattleData_StatusEffectDamage)
	str     r0, [r5, r1]
branch_2245390: @ 2245390 :thumb
	ldr     r0, [r7, r6]
	cmp     r0, #0x0
	beq     branch_22453bc
	ldr     r1, [pc, #0xa4] @ 0x224543c, (=BattleData_MaxHP)
	add     r1, r5, r1
	str     r1, [sp, #0x10]
	ldr     r1, [r1, r6]
	cmp     r0, r1
	bcs     branch_22453bc
	mov     r0, r5
	mov     r1, r4
	bl      GetAbilityOfPkmnConsideringMultitypeWeatherLevitate
	cmp     r0, #0x57
	bne     branch_22453bc
	ldr     r0, [sp, #0x10]
	mov     r1, #0x8
	ldr     r0, [r0, r6]
	bl      Function_16_22563f8_Division
	ldr     r1, [pc, #0x74] @ 0x2245430, (=BattleData_StatusEffectDamage)
	str     r0, [r5, r1]
branch_22453bc: @ 22453bc :thumb
	ldr     r0, [r7, r6]
	cmp     r0, #0x0
	beq     branch_2245428
	ldr     r0, [pc, #0x80] @ 0x2245444, (=BattleData_StatusEffect)
	add     r7, r5, r0
	ldr     r0, [r7, r6]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	beq     branch_2245428
	mov     r0, r5
	mov     r1, r4
	bl      GetAbilityOfPkmnConsideringMultitypeWeatherLevitate
	cmp     r0, #0x5d
	bne     branch_2245428
	ldr     r0, [r7, r6]
	mov     r1, #0x7
	tst     r1, r0
	beq     branch_22453ec
	mov     r0, #0x13
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r5, r0]
	b       branch_2245420

branch_22453ec: @ 22453ec :thumb
	ldr     r1, [pc, #0x58] @ 0x2245448, (=0xf88)
	tst     r1, r0
	beq     branch_22453fc
	mov     r0, #0x13
	mov     r1, #0x1
	lsl     r0, r0, #4
	str     r1, [r5, r0]
	b       branch_2245420

branch_22453fc: @ 22453fc :thumb
	mov     r1, #0x10
	tst     r1, r0
	beq     branch_224540c
	mov     r0, #0x13
	mov     r1, #0x2
	lsl     r0, r0, #4
	str     r1, [r5, r0]
	b       branch_2245420

branch_224540c: @ 224540c :thumb
	mov     r1, #0x40
	tst     r0, r1
	beq     branch_224541a
	mov     r0, #0x3
	add     r1, #0xf0
	str     r0, [r5, r1]
	b       branch_2245420

branch_224541a: @ 224541a :thumb
	mov     r0, #0x4
	add     r1, #0xf0
	str     r0, [r5, r1]
branch_2245420: @ 2245420 :thumb
	mov     r0, #0x4e
	mov     r1, #0x1
	lsl     r0, r0, #2
	str     r1, [r5, r0]
branch_2245428: @ 2245428 :thumb
	mov     r0, #0x0
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x224542e

.align 2
.word BattleData_StatusEffectDamage @ 0x2245430
.word BattleData_CurHP @ 0x2245434
.word 0x40080 @ 0x2245438
.word BattleData_MaxHP @ 0x224543c
.word 0x102 @ 0x2245440
.word BattleData_StatusEffect @ 0x2245444
.word 0xf88 @ 0x2245448



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd6e: @ 224544c :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	ldr     r6, [r4, #0x64]
	mov     r0, #0xb5
	lsl     r0, r0, #2
	add     r2, r4, r0
	mov     r0, #0x1c
	mov     r1, r6
	mul     r1, r0
	ldr     r3, [r2, r1]
	ldr     r0, [pc, #0xe0] @ 0x224554c, (=0xfffffe3f)
	mov     r7, #0xc0
	and     r0, r3
	mov     r3, r6
	mul     r3, r7
	add     r6, r4, r3
	ldr     r3, [pc, #0xd8] @ 0x2245550, (=BattleData_2dc8)
	ldr     r6, [r6, r3]
	sub     r3, #0x18
	lsl     r6, r6, #14
	lsr     r6, r6, #29
	lsl     r6, r6, #29
	lsr     r6, r6, #23
	orr     r0, r6
	str     r0, [r2, r1]
	ldr     r2, [r4, #0x64]
	mov     r0, r2
	mul     r0, r7
	add     r0, r4, r0
	ldr     r1, [r0, r3]
	mov     r0, #0x1
	lsl     r0, r0, #12
	tst     r0, r1
	bne     branch_22454ba
	mov     r0, r5
	mov     r1, r4
	bl      Function_2253ef0
	ldr     r0, [pc, #0xac] @ 0x2245550, (=BattleData_2dc8)
	ldr     r2, [r4, #0x64]
	add     r1, r4, r0
	mov     r0, r7
	mul     r0, r2
	ldr     r3, [r1, r0]
	ldr     r2, [pc, #0xa4] @ 0x2245554, (=0xfffc7fff)
	and     r3, r2
	mov     r2, #0xa
	lsl     r2, r2, #14
	orr     r2, r3
	str     r2, [r1, r0]
branch_22454ba: @ 22454ba :thumb
	ldr     r1, [r4, #0x64]
	ldr     r0, [pc, #0x90] @ 0x2245550, (=BattleData_2dc8)
	mov     r7, #0xc0
	mov     r3, r1
	add     r6, r4, r0
	mul     r3, r7
	ldr     r1, [r6, r3]
	ldr     r2, [pc, #0x88] @ 0x2245554, (=0xfffc7fff)
	and     r2, r1
	lsl     r1, r1, #14
	lsr     r1, r1, #29
	.hword  0x1e49 @ sub r1, r1, #0x1
	lsl     r1, r1, #29
	lsr     r1, r1, #14
	orr     r1, r2
	str     r1, [r6, r3]
	ldr     r2, [r4, #0x64]
	mov     r1, r2
	mul     r1, r7
	add     r1, r4, r1
	ldr     r0, [r1, r0]
	lsl     r0, r0, #14
	lsr     r0, r0, #29
	bne     branch_22454f2
	mov     r0, r5
	mov     r1, r4
	bl      Function_2253f20
branch_22454f2: @ 22454f2 :thumb
	ldr     r0, [pc, #0x64] @ 0x2245558, (=BattleData_WazaSeqFileNr)
	mov     r2, #0x1
	ldr     r0, [r4, r0]
	lsl     r0, r0, #4
	add     r1, r4, r0
	ldr     r0, [pc, #0x5c] @ 0x224555c, (=BattleData_3e1)
	ldrb    r1, [r1, r0]
	ldr     r0, [pc, #0x5c] @ 0x2245560, (=BattleData_2154)
	str     r1, [r4, r0]
	ldr     r1, [r4, #0x64]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r4, r0
	ldr     r0, [pc, #0x40] @ 0x2245550, (=BattleData_2dc8)
	ldr     r0, [r1, r0]
	lsl     r0, r0, #14
	lsr     r1, r0, #29
	mov     r0, #0x5
	sub     r3, r0, r1
	cmp     r3, #0x1
	ble     branch_224552a
	ldr     r0, [pc, #0x40] @ 0x2245560, (=BattleData_2154)
.thumb
branch_224551e: @ 224551e :thumb
	ldr     r1, [r4, r0]
	.hword  0x1c52 @ add r2, r2, #0x1
	lsl     r1, r1, #1
	str     r1, [r4, r0]
	cmp     r2, r3
	blt     branch_224551e
.thumb
branch_224552a: @ 224552a :thumb
	ldr     r1, [r4, #0x64]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r4, r0
	ldr     r0, [pc, #0x30] @ 0x2245564, (=BattleData_2db0)
	ldr     r1, [r1, r0]
	mov     r0, #0x1
	lsl     r0, r0, #30
	tst     r0, r1
	beq     branch_2245546
	ldr     r0, [pc, #0x20] @ 0x2245560, (=BattleData_2154)
	ldr     r1, [r4, r0]
	lsl     r1, r1, #1
	str     r1, [r4, r0]
.thumb
branch_2245546: @ 2245546 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224554a

.align 2
.word 0xfffffe3f @ 0x224554c
.word BattleData_2dc8 @ 0x2245550
.word 0xfffc7fff @ 0x2245554
.word BattleData_WazaSeqFileNr @ 0x2245558
.word BattleData_3e1 @ 0x224555c
.word BattleData_2154 @ 0x2245560
.word BattleData_2db0 @ 0x2245564



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd6f: @ 2245568 :thumb
	push    {r4-r6,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	ldr     r2, [r4, #0x64]
	mov     r0, #0xc0
	mov     r1, r2
	mul     r1, r0
	ldr     r0, [pc, #0x64] @ 0x22455e4, (=BattleData_2dc8)
	add     r0, r4, r0
	ldr     r3, [r0, r1]
	lsl     r2, r3, #11
	lsr     r5, r2, #29
	cmp     r5, #0x5
	bcs     branch_2245598
	ldr     r2, [pc, #0x5c] @ 0x22455e8, (=0xffe3ffff)
	and     r3, r2
	add     r2, r5, #0x1
	lsl     r2, r2, #29
	lsr     r2, r2, #11
	orr     r2, r3
	str     r2, [r0, r1]
branch_2245598: @ 2245598 :thumb
	ldr     r0, [pc, #0x50] @ 0x22455ec, (=BattleData_WazaSeqFileNr)
	ldr     r0, [r4, r0]
	lsl     r0, r0, #4
	add     r1, r4, r0
	ldr     r0, [pc, #0x4c] @ 0x22455f0, (=BattleData_3e1)
	ldrb    r1, [r1, r0]
	ldr     r0, [pc, #0x4c] @ 0x22455f4, (=BattleData_2154)
	str     r1, [r4, r0]
	ldr     r2, [r4, #0x64]
	mov     r1, #0xc0
	mul     r1, r2
	add     r2, r4, r1
	ldr     r1, [pc, #0x30] @ 0x22455e4, (=BattleData_2dc8)
	mov     r0, #0x1
	ldr     r1, [r2, r1]
	lsl     r1, r1, #11
	lsr     r1, r1, #29
	cmp     r1, #0x1
	bls     branch_22455de
	ldr     r3, [pc, #0x34] @ 0x22455f4, (=BattleData_2154)
	ldr     r2, [pc, #0x20] @ 0x22455e4, (=BattleData_2dc8)
	mov     r1, #0xc0
.thumb
branch_22455c4: @ 22455c4 :thumb
	ldr     r5, [r4, r3]
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r5, r5, #1
	str     r5, [r4, r3]
	ldr     r5, [r4, #0x64]
	mov     r6, r5
	mul     r6, r1
	add     r5, r4, r6
	ldr     r5, [r5, r2]
	lsl     r5, r5, #11
	lsr     r5, r5, #29
	cmp     r0, r5
	bcc     branch_22455c4

branch_22455de: @ 22455de :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x22455e2

.align 2
.word BattleData_2dc8 @ 0x22455e4
.word 0xffe3ffff @ 0x22455e8
.word BattleData_WazaSeqFileNr @ 0x22455ec
.word BattleData_3e1 @ 0x22455f0
.word BattleData_2154 @ 0x22455f4



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd70: @ 22455f8 :thumb
	push    {r4-r6,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r3, r0

	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	mov     r5, #0xc0
	mov     r1, r0
	mul     r1, r5
	ldr     r6, [pc, #0x58] @ 0x2245674, (=BattleData_2dbe)
	add     r1, r4, r1
	ldrb    r0, [r1, r6]
	lsl     r0, r0, #28
	lsr     r2, r0, #28
	mov     r0, r5
	add     r0, #0x58
	ldr     r0, [r4, r0]
	mul     r5, r0
	add     r5, r4, r5
	ldrb    r5, [r5, r6]
	lsl     r5, r5, #28
	lsr     r5, r5, #28
	cmp     r5, r2
	beq     branch_224564a
	sub     r6, #0xe
	ldr     r6, [r1, r6]
	mov     r1, #0xf
	lsl     r1, r1, #16
	tst     r1, r6
	bne     branch_224564a
	cmp     r5, #0x2
	beq     branch_224564a
	cmp     r2, #0x2
	bne     branch_2245654
branch_224564a: @ 224564a :thumb
	mov     r0, r4
	mov     r1, r3
	bl      BeSeq_AddToPointer
	b       branch_224566e

branch_2245654: @ 2245654 :thumb
	bl      Function_20787cc
	ldr     r1, [pc, #0x1c] @ 0x2245678, (=BattleData_2db0)
	mov     r2, #0xc0
	add     r1, r4, r1
	add     r4, #0x94
	ldr     r3, [r4, #0x0]
	lsl     r0, r0, #16
	mov     r4, r3
	mul     r4, r2
	ldr     r2, [r1, r4]
	orr     r0, r2
	str     r0, [r1, r4]
branch_224566e: @ 224566e :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2245672

.align 2
.word BattleData_2dbe @ 0x2245674
.word BattleData_2db0 @ 0x2245678



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd71: @ 224567c :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r7, r0

	ldr     r1, [r4, #0x64]
	mov     r0, r5
	bl      Function_16_223e208
	mov     r5, #0x6f
	mov     r2, r0
	lsl     r5, r5, #2
	add     r1, r4, r5
	lsl     r0, r2, #2
	ldr     r6, [r1, r0]
	mov     r3, #0x8
	tst     r3, r6
	beq     branch_22456c0
	mov     r0, r4
	mov     r1, r7
	bl      BeSeq_AddToPointer
	ldr     r1, [pc, #0x4c] @ 0x2245704, (=BattleData_216c)
	mov     r0, #0x40
	ldr     r2, [r4, r1]
	orr     r0, r2
	str     r0, [r4, r1]
	b       branch_2245700

branch_22456c0: @ 22456c0 :thumb
	mov     r3, #0x8
	orr     r3, r6
	str     r3, [r1, r0]
	add     r5, #0x8
	lsl     r0, r2, #3
	add     r1, r4, r5
	ldr     r3, [r1, r0]
	ldr     r2, [pc, #0x38] @ 0x2245708, (=0xfff1ffff)
	and     r3, r2
	mov     r2, #0xa
	lsl     r2, r2, #16
	orr     r2, r3
	str     r2, [r1, r0]
	ldr     r3, [r1, r0]
	ldr     r2, [pc, #0x2c] @ 0x224570c, (=0xfffe7fff)
	and     r3, r2
	ldr     r2, [r4, #0x64]
	lsl     r2, r2, #30
	lsr     r2, r2, #15
	orr     r2, r3
	str     r2, [r1, r0]
	mov     r0, r4
	mov     r1, #0x1
	add     r0, #0xf5
	strb    r1, [r0, #0x0]
	mov     r0, r4
	ldr     r1, [r4, #0x64]
	add     r0, #0xf8
	str     r1, [r0, #0x0]
	mov     r0, #0xc6
	add     r4, #0xf6
	strh    r0, [r4, #0x0]
branch_2245700: @ 2245700 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2245704

.word BattleData_216c @ 0x2245704
.word 0xfff1ffff @ 0x2245708
.word 0xfffe7fff @ 0x224570c



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd72: @ 2245710 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r6, r0

	mov     r0, r5
	bl      Function_16_GetRandomNr
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	cmp     r0, #0x66
	bge     branch_224573c
	ldr     r0, [pc, #0x40] @ 0x2245778, (=BattleData_2154)
	mov     r1, #0x28
	str     r1, [r4, r0]
	b       branch_2245772

branch_224573c: @ 224573c :thumb
	cmp     r0, #0xb2
	bge     branch_2245748
	ldr     r0, [pc, #0x34] @ 0x2245778, (=BattleData_2154)
	mov     r1, #0x50
	str     r1, [r4, r0]
	b       branch_2245772

branch_2245748: @ 2245748 :thumb
	cmp     r0, #0xcc
	bge     branch_2245754
	ldr     r0, [pc, #0x28] @ 0x2245778, (=BattleData_2154)
	mov     r1, #0x78
	str     r1, [r4, r0]
	b       branch_2245772

branch_2245754: @ 2245754 :thumb
	ldr     r1, [r4, #0x6c]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r4, r0
	ldr     r0, [pc, #0x1c] @ 0x224577c, (=BattleData_MaxHP)
	ldr     r0, [r1, r0]
	mov     r1, #0x4
	bl      Function_16_22563f8_Division
	ldr     r1, [pc, #0x18] @ 0x2245780, (=BattleData_StatusEffectDamage)
	str     r0, [r4, r1]
	mov     r0, r4
	mov     r1, r6
	bl      BeSeq_AddToPointer
branch_2245772: @ 2245772 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2245776

.align 2
.word BattleData_2154 @ 0x2245778
.word BattleData_MaxHP @ 0x224577c
.word BattleData_StatusEffectDamage @ 0x2245780



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd73: @ 2245784 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	ldr     r0, [pc, #0x90] @ 0x2245824, (=BattleData_3120)
	ldrb    r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_2245814
	mov     r0, r5
	bl      Function_16_GetRandomNr
	mov     r1, #100
	blx     _s32_div_f
	ldr     r0, [pc, #0x7c] @ 0x2245824, (=BattleData_3120)
	strb    r1, [r4, r0]
	ldrb    r1, [r4, r0]
	cmp     r1, #0x5
	bcs     branch_22457bc
	ldr     r1, [pc, #0x74] @ 0x2245828, (=BattleData_2154)
	mov     r2, #0xa
	str     r2, [r4, r1]
	mov     r1, #0x4
	strb    r1, [r4, r0]
	b       branch_2245814
@ 0x22457bc

.thumb
branch_22457bc: @ 22457bc :thumb
	cmp     r1, #0xf
	bcs     branch_22457cc
	ldr     r1, [pc, #0x64] @ 0x2245828, (=BattleData_2154)
	mov     r2, #0x1e
	str     r2, [r4, r1]
	mov     r1, #0x5
	strb    r1, [r4, r0]
	b       branch_2245814
@ 0x22457cc

.thumb
branch_22457cc: @ 22457cc :thumb
	cmp     r1, #0x23
	bcs     branch_22457dc
	ldr     r1, [pc, #0x54] @ 0x2245828, (=BattleData_2154)
	mov     r2, #0x32
	str     r2, [r4, r1]
	mov     r1, #0x6
	strb    r1, [r4, r0]
	b       branch_2245814
@ 0x22457dc

.thumb
branch_22457dc: @ 22457dc :thumb
	cmp     r1, #0x41
	bcs     branch_22457ec
	ldr     r1, [pc, #0x44] @ 0x2245828, (=BattleData_2154)
	mov     r2, #0x46
	str     r2, [r4, r1]
	mov     r1, #0x7
	strb    r1, [r4, r0]
	b       branch_2245814
@ 0x22457ec

.thumb
branch_22457ec: @ 22457ec :thumb
	cmp     r1, #0x55
	bcs     branch_22457fc
	ldr     r1, [pc, #0x34] @ 0x2245828, (=BattleData_2154)
	mov     r2, #0x5a
	str     r2, [r4, r1]
	mov     r1, #0x8
	strb    r1, [r4, r0]
	b       branch_2245814
@ 0x22457fc

.thumb
branch_22457fc: @ 22457fc :thumb
	cmp     r1, #0x5f
	ldr     r1, [pc, #0x28] @ 0x2245828, (=BattleData_2154)
	bcs     branch_224580c
	mov     r2, #0x6e
	str     r2, [r4, r1]
	mov     r1, #0x9
	strb    r1, [r4, r0]
	b       branch_2245814
@ 0x224580c

.thumb
branch_224580c: @ 224580c :thumb
	mov     r2, #0x96
	str     r2, [r4, r1]
	mov     r1, #0xa
	strb    r1, [r4, r0]
.thumb
branch_2245814: @ 2245814 :thumb
	ldr     r0, [pc, #0xc] @ 0x2245824, (=BattleData_3120)
	ldrb    r1, [r4, r0]
	mov     r0, #0x13
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2245822

.align 2
.word BattleData_3120 @ 0x2245824
.word BattleData_2154 @ 0x2245828



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd74: @ 224582c :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r6, r0

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r7, r0

	mov     r0, r5
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x0]

	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	bl      GetTargetNrOfPkmn
	mov     r4, r0
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	bl      Function_2255b10
	cmp     r0, #0x0
	bne     branch_2245876
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	bl      BeSeq_AddToPointer
	b       branch_224588a

branch_2245876: @ 2245876 :thumb
	cmp     r7, #0x1
	bne     branch_224588a
	mov     r0, #0x4f
	lsl     r0, r0, #2
	add     r3, r5, r0
	lsl     r2, r4, #2
	ldr     r1, [r3, r2]
	mov     r0, #0x1
	orr     r0, r1
	str     r0, [r3, r2]
branch_224588a: @ 224588a :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224588e


/* Input:
r0: MainBattleData
r1: BattleData
*/
.align 2, 0
.thumb
BeSeq_Cmd75: @ 2245890 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	ldr     r1, [r4, #0x64]
	bl      Function_16_223e208
	ldr     r1, [r4, #0x64]
	mov     r6, #0xe
	ldr     r5, [pc, #0x12c] @ 0x22459cc, (=BattleData_2db0)
	mov     r2, r1
	mov     r3, #0xc0
	mul     r2, r3
	add     r1, r4, r5
	ldr     r7, [r1, r2]
	lsl     r6, r6, #12
	tst     r6, r7
	beq     branch_22458ec
	ldr     r0, [pc, #0x11c] @ 0x22459d0, (=0xffff1fff)
	and     r0, r7
	str     r0, [r1, r2]
	ldr     r0, [r4, #0x64]
	mov     r2, #0x74
	mov     r1, r0
	mov     r0, r5
	mul     r1, r3
	add     r1, r4, r1
	add     r0, #0x1c
	ldr     r0, [r1, r0]
	add     r5, #0x3a
	lsl     r0, r0, #24
	lsr     r1, r0, #30
	mov     r0, r3
	add     r0, #0x58
	str     r1, [r4, r0]
	ldr     r0, [r4, #0x64]
	mov     r1, r0
	mul     r1, r3
	add     r0, r4, r1
	ldrh    r0, [r0, r5]
	add     r3, #0x64
	mov     r1, #SubSeq_Narc
	str     r0, [r4, r3]
	mov     r0, r4
	bl      Call_Call_LoadFromNARC_AddNewSeqScript
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_22458ec: @ 22458ec :thumb
	add     r5, #0x10
	add     r5, r4, r5
	ldr     r1, [r5, r2]
	mov     r6, #0x4
	tst     r6, r1
	beq     branch_2245922
	mov     r0, #0x4
	bic     r1, r0
	str     r1, [r5, r2]
	ldr     r0, [r4, #0x64]
	mov     r2, r0
	mul     r2, r3
	ldr     r1, [r5, r2]
	mov     r0, #0x3
	bic     r1, r0
	str     r1, [r5, r2]
	mov     r1, #0x49
	mov     r0, r1
	add     r0, #0xdb
	str     r1, [r4, r0]

	mov     r0, r4
	mov     r1, #SubSeq_Narc
	mov     r2, #0x75
	bl      Call_Call_LoadFromNARC_AddNewSeqScript
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_2245922: @ 2245922 :thumb
	mov     r1, #0x72
	lsl     r1, r1, #2
	add     r6, r4, r1
	lsl     r5, r0, #3
	ldr     r2, [r6, r5]
	lsl     r3, r2, #30
	lsr     r3, r3, #30
	beq     branch_224595e
	sub     r1, #0xc
	lsl     r3, r0, #2
	add     r1, r4, r1
	ldr     r2, [r1, r3]
	mov     r0, #0x4
	bic     r2, r0
	str     r2, [r1, r3]
	ldr     r1, [r6, r5]
	mov     r0, #0x3
	bic     r1, r0
	str     r1, [r6, r5]
	mov     r1, #0xbf
	mov     r0, r1
	add     r0, #0x65
	str     r1, [r4, r0]

	mov     r0, r4
	mov     r1, #SubSeq_Narc
	mov     r2, #0x75
	bl      Call_Call_LoadFromNARC_AddNewSeqScript
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_224595e: @ 224595e :thumb
	lsl     r2, r2, #28
	lsr     r2, r2, #30
	beq     branch_2245992
	mov     r2, r1
	sub     r2, #0xc
	lsl     r7, r0, #2
	add     r3, r4, r2
	ldr     r2, [r3, r7]
	ldr     r0, [pc, #0x64] @ 0x22459d4, (=0xfffffbff)
	and     r0, r2
	str     r0, [r3, r7]
	ldr     r2, [r6, r5]
	mov     r0, #0xc
	bic     r2, r0
	mov     r0, r1
	str     r2, [r6, r5]
	sub     r0, #0x42
	sub     r1, #0xa4
	str     r0, [r4, r1]

	mov     r0, r4
	mov     r1, #SubSeq_Narc
	mov     r2, #0x75
	bl      Call_Call_LoadFromNARC_AddNewSeqScript
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_2245992: @ 2245992 :thumb
	mov     r2, r1
	sub     r2, #0xc
	add     r2, r4, r2
	lsl     r0, r0, #2
	ldr     r6, [r2, r0]
	mov     r5, #0x80
	mov     r3, r6
	tst     r3, r5
	beq     branch_22459be
	mov     r3, #0x80
	bic     r6, r3
	str     r6, [r2, r0]
	sub     r1, #0xa
	add     r5, #0xa4
	str     r1, [r4, r5]

	mov     r0, r4
	mov     r1, #SubSeq_Narc
	mov     r2, #0x75
	bl      Call_Call_LoadFromNARC_AddNewSeqScript
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_22459be: @ 22459be :thumb
	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22459ca

.align 2
.word BattleData_2db0 @ 0x22459cc
.word 0xffff1fff @ 0x22459d0
.word 0xfffffbff @ 0x22459d4



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd76: @ 22459d8 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, #0x6
	lsl     r0, r0, #6          @ =0x180 BattleData_Weather
	ldr     r1, [r4, r0]
	ldr     r0, [pc, #0x80] @ 0x2245a70, (=0x80ff)
	tst     r0, r1
	beq     branch_2245a1a
	mov     r0, #0xd
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x8
	mov     r3, #0x0
	bl      Function_16_22555a4
	cmp     r0, #0x0
	bne     branch_2245a1a
	mov     r0, #0x4c
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x8
	mov     r3, #0x0
	bl      Function_16_22555a4
	cmp     r0, #0x0
	beq     branch_2245a2e

branch_2245a1a: @ 2245a1a :thumb
	ldr     r1, [r4, #0x64]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r4, r0
	ldr     r0, [pc, #0x50] @ 0x2245a74, (=BattleData_MaxHP)
	ldr     r0, [r1, r0]
	lsr     r1, r0, #1
	ldr     r0, [pc, #0x4c] @ 0x2245a78, (=BattleData_StatusEffectDamage)
	str     r1, [r4, r0]
	b       branch_2245a6a

branch_2245a2e: @ 2245a2e :thumb
	mov     r0, #0x6
	lsl     r0, r0, #6          @ =0x180 BattleData_Weather
	ldr     r1, [r4, r0]
	mov     r0, #0x30
	tst     r0, r1
	ldr     r1, [r4, #0x64]
	beq     branch_2245a56
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r4, r0
	ldr     r0, [pc, #0x30] @ 0x2245a74, (=BattleData_MaxHP)
	ldr     r1, [r1, r0]
	mov     r0, #20
	mul     r0, r1
	mov     r1, #30
	bl      Function_16_22563f8_Division
	ldr     r1, [pc, #0x24] @ 0x2245a78, (=BattleData_StatusEffectDamage)
	str     r0, [r4, r1]
	b       branch_2245a6a

branch_2245a56: @ 2245a56 :thumb
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r4, r0
	ldr     r0, [pc, #0x14] @ 0x2245a74, (=BattleData_MaxHP)
	ldr     r0, [r1, r0]
	mov     r1, #0x4
	bl      Function_16_22563f8_Division
	ldr     r1, [pc, #0x10] @ 0x2245a78, (=BattleData_StatusEffectDamage)
	str     r0, [r4, r1]
branch_2245a6a: @ 2245a6a :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2245a6e

.align 2
.word 0x80ff @ 0x2245a70
.word BattleData_MaxHP @ 0x2245a74
.word BattleData_StatusEffectDamage @ 0x2245a78



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd77: @ 2245a7c :thumb
	push    {r3-r7,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	ldr     r0, [pc, #0xd0] @ 0x2245b5c, (=BattleData_2d54)
	ldr     r1, [r4, #0x64]
	add     r3, r4, r0
	mov     r0, #0xc0
	mul     r0, r1
	ldr     r1, [r3, r0]
	mov     r5, #0x2
	lsl     r0, r1, #2
	lsr     r0, r0, #27
	and     r0, r5
	lsl     r2, r0, #4
	lsl     r0, r1, #7
	lsr     r0, r0, #27
	and     r0, r5
	lsl     r7, r0, #3
	lsl     r0, r1, #12
	lsr     r0, r0, #27
	and     r0, r5
	lsl     r0, r0, #2
	mov     r12, r0
	lsl     r0, r1, #17
	lsr     r0, r0, #27
	and     r0, r5
	lsl     r6, r0, #1
	lsl     r0, r1, #27
	lsr     r0, r0, #27
	lsl     r1, r1, #22
	and     r0, r5
	lsr     r1, r1, #27
	lsr     r0, r0, #1
	and     r1, r5
	orr     r0, r1
	mov     r1, r6
	orr     r1, r0
	mov     r0, r12
	orr     r0, r1
	orr     r0, r7
	mov     r1, r2
	orr     r1, r0
	ldr     r0, [pc, #0x88] @ 0x2245b60, (=BattleData_2154)
	str     r1, [r4, r0]
	ldr     r1, [r4, #0x64]
	mov     r0, #0xc0
	mul     r0, r1
	ldr     r5, [r3, r0]
	lsl     r0, r5, #2
	lsr     r0, r0, #27
	lsl     r0, r0, #31
	lsr     r6, r0, #26
	lsl     r0, r5, #7
	lsr     r0, r0, #27
	lsl     r0, r0, #31
	lsr     r3, r0, #27
	lsl     r0, r5, #12
	lsr     r0, r0, #27
	lsl     r0, r0, #31
	lsr     r2, r0, #28
	lsl     r0, r5, #17
	lsr     r0, r0, #27
	lsl     r0, r0, #31
	lsr     r7, r0, #29
	lsl     r0, r5, #27
	lsr     r1, r0, #27
	mov     r0, #0x1
	and     r0, r1
	lsl     r1, r5, #22
	lsr     r1, r1, #27
	lsl     r1, r1, #31
	lsr     r1, r1, #30
	orr     r0, r1
	orr     r0, r7
	orr     r0, r2
	orr     r0, r3
	mov     r1, r6
	orr     r1, r0
	ldr     r0, [pc, #0x40] @ 0x2245b60, (=BattleData_2154)
	add     r0, #0xc
	str     r1, [r4, r0]
	ldr     r0, [pc, #0x38] @ 0x2245b60, (=BattleData_2154)
	ldr     r1, [r4, r0]
	mov     r0, #0x28
	mul     r0, r1
	mov     r1, #0x3f
	blx     _s32_div_f
	ldr     r1, [pc, #0x2c] @ 0x2245b60, (=BattleData_2154)
	add     r0, #0x1e
	str     r0, [r4, r1]
	add     r1, #0xc
	ldr     r1, [r4, r1]
	mov     r0, #0xf
	mul     r0, r1
	mov     r1, #0x3f
	blx     _s32_div_f
	add     r1, r0, #0x1
	ldr     r0, [pc, #0x18] @ 0x2245b64, (=BattleData_2160)
	str     r1, [r4, r0]
	ldr     r1, [r4, r0]
	cmp     r1, #0x9
	blt     branch_2245b56
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
.thumb
branch_2245b56: @ 2245b56 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2245b5a

.align 2
.word BattleData_2d54 @ 0x2245b5c
.word BattleData_2154 @ 0x2245b60
.word BattleData_2160 @ 0x2245b64



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd78: @ 2245b68 :thumb
	push    {r3-r7,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	ldr     r2, [pc, #0x48] @ 0x2245bc0, (=BattleData_StatLevel)
	mov     r1, #0x0
	mov     r3, #PkmnBattleData_Size
	mov     r5, r2
branch_2245b7c: @ 2245b7c :thumb
	ldr     r6, [r4, #BattleData_TargetPkmn]
	mov     r0, #PkmnBattleData_Size
	mul     r0, r6
	ldr     r6, [r4, #BattleData_NrOfPkmn]
	add     r0, r4, r0
	add     r0, r1, r0
	mov     r7, r6
	mul     r7, r3
	add     r6, r4, r7
	add     r6, r1, r6
	ldsb    r0, [r0, r2]
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r1, #0x8
	strb    r0, [r6, r5]
	blt     branch_2245b7c

	ldr     r0, [r4, #BattleData_NrOfPkmn]
	ldr     r6, [r4, #BattleData_TargetPkmn]
	mov     r3, #PkmnBattleData_Size
	mov     r1, r0
	ldr     r5, [pc, #0x20] @ 0x2245bc4, (=BattleData_2db0)
	mul     r1, r3
	mul     r3, r6
	add     r2, r4, r5
	add     r3, r4, r3
	ldr     r4, [r3, r5]
	mov     r3, #0x1
	lsl     r3, r3, #20
	ldr     r0, [r2, r1]
	and     r3, r4
	orr     r0, r3
	str     r0, [r2, r1]

	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2245bbe

.align 2
.word BattleData_StatLevel @ 0x2245bc0
.word BattleData_2db0 @ 0x2245bc4



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd79: @ 2245bc8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r4, r1
	mov     r7, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord

	ldr     r1, [r4, #0x6c]
	mov     r2, r0
	mov     r0, #0x62
	add     r3, r4, r1
	lsl     r0, r0, #2
	ldrb    r0, [r3, r0]
	cmp     r0, #0x0
	bne     branch_2245ca0

	mov     r0, r7
	bl      Function_16_223e208
	mov     r1, #0x6f
	lsl     r1, r1, #2
	lsl     r3, r0, #2
	add     r5, r4, r1
	ldr     r2, [r5, r3]
	mov     r0, #0x10
	orr     r0, r2
	str     r0, [r5, r3]
	ldr     r0, [r4, #0x6c]
	mov     r2, r1
	add     r6, r4, r0
	sub     r2, #0x34
	mov     r0, #0x3
	strb    r0, [r6, r2]
	ldr     r0, [pc, #0x9c] @ 0x2245cb0, (=BattleData_WazaSeqFileNr)
	ldr     r6, [r4, r0]
	ldr     r0, [r4, #0x6c]
	lsl     r0, r0, #1
	add     r2, r4, r0
	mov     r0, r1
	sub     r0, #0x2c
	strh    r6, [r2, r0]
	ldr     r2, [r4, #0x6c]
	ldr     r0, [r4, #0x64]
	lsl     r2, r2, #2
	add     r2, r4, r2
	sub     r1, #0x24
	str     r0, [r2, r1]
	mov     r0, #0x3
	lsl     r0, r0, #7
	ldr     r0, [r4, r0]
	ldr     r2, [pc, #0x7c] @ 0x2245cb0, (=BattleData_WazaSeqFileNr)
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x64]
	mov     r1, r4
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0xc]
	ldr     r0, [r4, #0x6c]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x10]
	mov     r0, #0x1
	str     r0, [sp, #0x14]
	ldr     r2, [r4, r2]
	ldr     r3, [r5, r3]
	mov     r0, r7
	bl      CalculateDamage
	mov     r1, #0x0
	mov     r2, r0
	mvn     r1, r1
	mul     r2, r1
	mov     r0, r7
	mov     r1, r4
	bl      Function_225aeb8
	ldr     r1, [r4, #0x6c]
	lsl     r1, r1, #2
	add     r2, r4, r1
	mov     r1, #0x6a
	lsl     r1, r1, #2
	str     r0, [r2, r1]
	ldr     r0, [r4, #0x64]
	lsl     r0, r0, #6
	add     r2, r4, r0
	mov     r0, r1
	add     r0, #0x2c
	ldr     r0, [r2, r0]
	lsl     r0, r0, #28
	lsr     r0, r0, #31
	beq     branch_2245ca8

	ldr     r0, [r4, #0x6c]
	add     r5, r4, r1
	lsl     r4, r0, #2
	ldr     r1, [r5, r4]
	mov     r0, #15
	mul     r0, r1
	mov     r1, #10
	blx     _s32_div_f
	str     r0, [r5, r4]
	b       branch_2245ca8

branch_2245ca0: @ 2245ca0 :thumb
	mov     r0, r4
	mov     r1, r2
	bl      BeSeq_AddToPointer
branch_2245ca8: @ 2245ca8 :thumb
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2245cae

.align 2
.word BattleData_WazaSeqFileNr @ 0x2245cb0



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd7a: @ 2245cb4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r6, r0

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r7, r0

	mov     r0, r4
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x4]

	mov     r0, r4
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x8]

	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      GetTargetNrOfPkmn
	str     r0, [sp, #0xc]
	mov     r0, r5
	mov     r1, r4
	mov     r2, r7
	bl      GetTargetNrOfPkmn
	mov     r6, r0
	ldr     r1, [sp, #0x4]
	mov     r0, r4
	bl      Function_224b3e8
	str     r0, [sp, #0x0]
	ldr     r2, [sp, #0xc]
	mov     r0, r5
	mov     r1, r4
	mov     r3, r6
	bl      Function_224b9f4
	ldr     r0, [pc, #0x18] @ 0x2245d2c, (=BattleData_216c)
	ldr     r1, [r4, r0]
	ldr     r0, [pc, #0x18] @ 0x2245d30, (=0x1fd849)
	tst     r0, r1
	beq     branch_2245d24
	ldr     r1, [sp, #0x8]
	mov     r0, r4
	bl      BeSeq_AddToPointer
branch_2245d24: @ 2245d24 :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2245d2a

.align 2
.word BattleData_216c @ 0x2245d2c
.word 0x1fd849 @ 0x2245d30



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd7b: @ 2245d34 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r6, r0

	ldr     r2, [r4, #0x64]
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_2255c00
	cmp     r0, #0x0
	beq     branch_2245d62
	mov     r0, r4
	mov     r1, r6
	bl      BeSeq_AddToPointer
branch_2245d62: @ 2245d62 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2245d66


/* Input:
r0: MainBattleData
r1: BattleData
*/
.align 2, 0
.thumb
BeSeq_Cmd7c: @ 2245d68 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r1
	mov     r7, r0

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	ldr     r1, [r5, #0x64]
	mov     r0, r7
	bl      GetMainBattleData_NrOfPkmnInParty
	ldr     r1, [pc, #0x21c] @ 0x2245fa0, (=0x217d)
	str     r0, [sp, #0x0]
	ldrb    r0, [r5, r1]
	cmp     r0, #0x0
	bne     branch_2245dfc
	mov     r0, #0x2
	strb    r0, [r5, r1]
	mov     r0, r1
	mov     r2, #0xfd
	add     r0, #0xb
	str     r2, [r5, r0]
	mov     r2, #0x0
	add     r0, r1, #0x2
	strb    r2, [r5, r0]
	add     r6, r1, #0x2
.thumb
branch_2245d9e: @ 2245d9e :thumb
	ldr     r2, [pc, #0x204] @ 0x2245fa4, (=0x217f)
	ldr     r1, [r5, #0x64]
	ldrb    r2, [r5, r2]
	mov     r0, r7
	bl      GetMainBattleData_GetAdrOfPkmnInParty
	ldr     r1, [pc, #0x1f8] @ 0x2245fa4, (=0x217f)
	mov     r4, r0
	ldrb    r3, [r5, r1]
	ldr     r1, [r5, #0x64]
	add     r2, r5, r1
	ldr     r1, [pc, #0x1f0] @ 0x2245fa8, (=BattleData_219c)
	ldrb    r1, [r2, r1]
	cmp     r3, r1
	beq     branch_2245dfc
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_2245df4
	mov     r0, r4
	mov     r1, #0xae
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_2245df4
	mov     r0, r4
	mov     r1, #0xae
	mov     r2, #0x0
	bl      GetPkmnData
	ldr     r1, [pc, #0x1c8] @ 0x2245fac, (=0x1ee)
	cmp     r0, r1
	beq     branch_2245df4
	mov     r0, r4
	mov     r1, #0xa0
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_2245dfc
.thumb
branch_2245df4: @ 2245df4 :thumb
	ldrb    r0, [r5, r6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, r6]
	b       branch_2245d9e
@ 0x2245dfc

.thumb
branch_2245dfc: @ 2245dfc :thumb
	ldr     r2, [pc, #0x1a4] @ 0x2245fa4, (=0x217f)
	ldr     r1, [r5, #0x64]
	ldrb    r2, [r5, r2]
	mov     r0, r7
	bl      GetMainBattleData_GetAdrOfPkmnInParty
	mov     r4, r0
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x70
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r6, r0
	mov     r0, r4
	mov     r1, #0xa1
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r4, r0
	ldr     r0, [sp, #0x4]
	mov     r1, r6
	mov     r2, #0x1
	bl      GetPkmnBaseData2
	ldr     r1, [pc, #0x178] @ 0x2245fb0, (=BattleData_Damage)
	ldr     r2, [pc, #0x178] @ 0x2245fb4, (=BattleData_WazaSeqFileNr)
	str     r0, [r5, r1]
	ldr     r2, [r5, r2]
	ldr     r0, [r5, r1]
	lsl     r2, r2, #4
	add     r3, r5, r2
	ldr     r2, [pc, #0x170] @ 0x2245fb8, (=BattleData_3e1)
	ldrb    r2, [r3, r2]
	mul     r2, r0
	str     r2, [r5, r1]
	lsl     r0, r4, #1
	mov     r1, #0x5
	blx     _s32_div_f
	ldr     r1, [pc, #0x158] @ 0x2245fb0, (=BattleData_Damage)
	.hword  0x1c80 @ add r0, r0, #0x2
	ldr     r2, [r5, r1]
	mul     r0, r2
	str     r0, [r5, r1]
	ldr     r1, [r5, #0x6c]
	mov     r0, #0xc0
	mul     r0, r1
	mov     r1, #0xb5
	add     r2, r5, r0
	lsl     r1, r1, #6              @ 0x2d40
	ldrh    r0, [r2, r1]
	add     r1, #0x26
	ldrb    r1, [r2, r1]
	mov     r2, #0x2
	lsl     r1, r1, #27
	lsr     r1, r1, #27
	bl      GetPkmnBaseData2
	mov     r1, r0
	ldr     r0, [pc, #0x130] @ 0x2245fb0, (=BattleData_Damage)
	ldr     r0, [r5, r0]
	blx     _u32_div_f
	ldr     r1, [pc, #0x128] @ 0x2245fb0, (=BattleData_Damage)
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	mov     r1, #0x32
	blx     _s32_div_f
	ldr     r1, [pc, #0x11c] @ 0x2245fb0, (=BattleData_Damage)
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [r5, r1]
	mov     r0, r1
	add     r0, #0xc
	ldr     r2, [r5, r1]
	ldr     r0, [r5, r0]
	mul     r0, r2
	str     r0, [r5, r1]
	ldr     r0, [r5, #0x64]
	lsl     r0, r0, #6
	add     r2, r5, r0
	mov     r0, #0x75
	lsl     r0, r0, #2
	ldr     r0, [r2, r0]
	lsl     r0, r0, #28
	lsr     r0, r0, #31
	beq     branch_2245ec8
	ldr     r1, [r5, r1]
	mov     r0, #0xf
	mul     r0, r1
	mov     r1, #0xa
	blx     _s32_div_f
	ldr     r1, [pc, #0xe8] @ 0x2245fb0, (=BattleData_Damage)
	str     r0, [r5, r1]
.thumb
branch_2245ec8: @ 2245ec8 :thumb
	ldr     r2, [pc, #0xe4] @ 0x2245fb0, (=BattleData_Damage)
	mov     r0, r7
	ldr     r2, [r5, r2]
	mov     r1, r5
	bl      Function_225aeb8
	ldr     r1, [pc, #0xd8] @ 0x2245fb0, (=BattleData_Damage)
	str     r0, [r5, r1]
	mov     r0, #0x0
	ldr     r2, [r5, r1]
	mvn     r0, r0
	mul     r0, r2
	str     r0, [r5, r1]
	mov     r0, r5
	mov     r3, r1
	ldr     r2, [pc, #0xd4] @ 0x2245fbc, (=0x1e1)
	add     r0, #0xf6
	strh    r2, [r0, #0x0]
	mov     r0, r5
	mov     r2, #0x2
	add     r0, #0xf5
	strb    r2, [r0, #0x0]
	add     r3, #0x3b
	ldrb    r3, [r5, r3]
	ldr     r0, [r5, #0x64]
	mov     r6, r1
	lsl     r3, r3, #8
	orr     r3, r0
	mov     r0, r5
	add     r0, #0xf8
	str     r3, [r0, #0x0]
	mov     r0, r1
	add     r0, #0x3b
	ldrb    r0, [r5, r0]
	add     r6, #0x3b
	add     r3, r0, #0x1
	mov     r0, r1
	add     r0, #0x3b
	strb    r3, [r5, r0]
	mov     r0, r1
	add     r0, #0x38
	strb    r2, [r5, r0]
	mov     r0, r1
	add     r0, #0x3b
	ldrb    r2, [r5, r0]
	ldr     r0, [sp, #0x0]
	cmp     r2, r0
	bge     branch_2245f92
.thumb
branch_2245f28: @ 2245f28 :thumb
	ldr     r1, [r5, #0x64]
	mov     r0, r7
	bl      GetMainBattleData_GetAdrOfPkmnInParty
	ldr     r1, [pc, #0x70] @ 0x2245fa4, (=0x217f)
	mov     r4, r0
	ldrb    r3, [r5, r1]
	ldr     r1, [r5, #0x64]
	add     r2, r5, r1
	ldr     r1, [pc, #0x6c] @ 0x2245fa8, (=BattleData_219c)
	ldrb    r1, [r2, r1]
	cmp     r3, r1
	beq     branch_2245f98
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_2245f7a
	mov     r0, r4
	mov     r1, #0xae
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_2245f7a
	mov     r0, r4
	mov     r1, #0xae
	mov     r2, #0x0
	bl      GetPkmnData
	ldr     r1, [pc, #0x44] @ 0x2245fac, (=0x1ee)
	cmp     r0, r1
	beq     branch_2245f7a
	mov     r0, r4
	mov     r1, #0xa0
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_2245f98
.thumb
branch_2245f7a: @ 2245f7a :thumb
	ldrb    r0, [r5, r6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, r6]
	ldr     r0, [pc, #0x20] @ 0x2245fa4, (=0x217f)
	ldrb    r2, [r5, r0]
	ldr     r0, [sp, #0x0]
	cmp     r2, r0
	blt     branch_2245f28
	ldr     r0, [pc, #0x34] @ 0x2245fc0, (=0x217c)
	mov     r1, #0x1
	strb    r1, [r5, r0]
	b       branch_2245f98
@ 0x2245f92

.thumb
branch_2245f92: @ 2245f92 :thumb
	mov     r0, #0x1
	add     r1, #0x38
	strb    r0, [r5, r1]
.thumb
branch_2245f98: @ 2245f98 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2245f9e

.align 2
.word 0x217d @ 0x2245fa0
.word 0x217f @ 0x2245fa4
.word BattleData_219c @ 0x2245fa8
.word 0x1ee @ 0x2245fac
.word BattleData_Damage @ 0x2245fb0
.word BattleData_WazaSeqFileNr @ 0x2245fb4
.word BattleData_3e1 @ 0x2245fb8
.word 0x1e1 @ 0x2245fbc
.word 0x217c @ 0x2245fc0



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd7d: @ 2245fc4 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	ldr     r1, [r4, #0x64]
	mov     r0, r5
	bl      Function_16_223e208
	mov     r1, #0x71
	lsl     r1, r1, #2
	mov     r2, #0x1
	add     r1, r4, r1
	lsl     r0, r0, #3
	ldr     r3, [r1, r0]
	lsl     r2, r2, #20
	orr     r2, r3
	str     r2, [r1, r0]
	ldr     r3, [r1, r0]
	ldr     r2, [pc, #0x10] @ 0x2246000, (=0xff9fffff)
	and     r3, r2
	ldr     r2, [r4, #0x64]
	lsl     r2, r2, #30
	lsr     r2, r2, #9
	orr     r2, r3
	str     r2, [r1, r0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2246000

.word 0xff9fffff @ 0x2246000



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd7e: @ 2246004 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r4, r0

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r6, r0

	mov     r0, r4
	bl      LoadMainBattleData_2c
	mov     r1, #0x2
	tst     r0, r1
	beq     branch_224608e
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x10
	bl      GetTargetNrOfPkmn
	mov     r4, r0
	bl      Function_20787cc
	ldr     r1, [pc, #0x64] @ 0x224609c, (=BattleData_3108)
	ldrb    r1, [r5, r1]
	tst     r0, r1
	bne     branch_2246084
	lsl     r0, r4, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0x5c] @ 0x22460a0, (=BattleData_21a8)
	ldr     r0, [r1, r0]
	cmp     r0, #0x27
	beq     branch_2246084
	mov     r0, #0xc0
	mul     r0, r4
	add     r1, r5, r0
	ldr     r0, [pc, #0x50] @ 0x22460a4, (=BattleData_CurHP)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2246084
	ldr     r0, [r5, #0x64]
	mov     r2, #0x75
	lsl     r0, r0, #6
	add     r0, r5, r0
	lsl     r2, r2, #2
	ldr     r0, [r0, r2]
	lsl     r0, r0, #28
	lsr     r0, r0, #31
	bne     branch_2246084
	add     r1, r5, r2
	lsl     r0, r4, #6
	ldr     r3, [r1, r0]
	lsl     r3, r3, #28
	lsr     r3, r3, #31
	bne     branch_2246084
	sub     r2, #0xbc
	str     r4, [r5, r2]
	ldr     r3, [r1, r0]
	mov     r2, #0x8
	orr     r2, r3
	str     r2, [r1, r0]
	b       branch_2246096

branch_2246084: @ 2246084 :thumb
	mov     r0, r5
	mov     r1, r6
	bl      BeSeq_AddToPointer
	b       branch_2246096

branch_224608e: @ 224608e :thumb
	mov     r0, r5
	mov     r1, r6
	bl      BeSeq_AddToPointer
branch_2246096: @ 2246096 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x224609a

.align 2
.word BattleData_3108 @ 0x224609c
.word BattleData_21a8 @ 0x22460a0
.word BattleData_CurHP @ 0x22460a4



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd7f: @ 22460a8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r6, r0

	mov     r0, r4
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x4]

	mov     r0, r5
	bl      LoadMainBattleData_2c
	str     r0, [sp, #0x8]
	ldr     r1, [r4, #0x64]
	mov     r0, r5
	bl      Function_16_223e208
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x6c]
	mov     r0, r5
	bl      Function_16_223e208
	mov     r7, r0
	ldr     r1, [r4, #0x64]
	mov     r0, r5
	bl      Function_16_223e208
	cmp     r0, #0x0
	beq     branch_2246102
	ldr     r0, [sp, #0x8]
	mov     r1, #0x84
	tst     r0, r1
	bne     branch_2246102
	mov     r0, r4
	mov     r1, r6
	bl      BeSeq_AddToPointer
	b       branch_22461a0

branch_2246102: @ 2246102 :thumb
	ldr     r0, [r4, #0x64]
	add     r1, r4, r0
	ldr     r0, [pc, #0xa0] @ 0x22461a8, (=BattleData_219c)
	ldrb    r0, [r1, r0]
	bl      Function_20787cc
	ldr     r1, [sp, #0x0]
	lsl     r1, r1, #3
	add     r2, r4, r1
	mov     r1, #0x71
	lsl     r1, r1, #2
	ldr     r1, [r2, r1]
	lsl     r1, r1, #3
	lsr     r1, r1, #26
	tst     r0, r1
	bne     branch_2246140
	ldr     r0, [r4, #0x6c]
	add     r1, r4, r0
	ldr     r0, [pc, #0x80] @ 0x22461a8, (=BattleData_219c)
	ldrb    r0, [r1, r0]
	bl      Function_20787cc
	lsl     r1, r7, #3
	add     r2, r4, r1
	mov     r1, #0x71
	lsl     r1, r1, #2
	ldr     r1, [r2, r1]
	lsl     r1, r1, #3
	lsr     r1, r1, #26
	tst     r0, r1
	beq     branch_224614a
branch_2246140: @ 2246140 :thumb
	mov     r0, r4
	mov     r1, r6
	bl      BeSeq_AddToPointer
	b       branch_22461a0

branch_224614a: @ 224614a :thumb
	ldr     r1, [r4, #0x64]
	mov     r0, #0xc0
	mov     r2, r1
	mul     r2, r0
	add     r3, r4, r2
	ldr     r2, [pc, #0x54] @ 0x22461ac, (=BattleData_Item)
	ldrh    r3, [r3, r2]
	cmp     r3, #0x0
	bne     branch_2246168
	ldr     r3, [r4, #0x6c]
	mul     r0, r3
	add     r0, r4, r0
	ldrh    r0, [r0, r2]
	cmp     r0, #0x0
	beq     branch_224617e
branch_2246168: @ 2246168 :thumb
	mov     r0, r4
	bl      Function_22559dc
	cmp     r0, #0x0
	beq     branch_224617e
	ldr     r1, [r4, #0x6c]
	mov     r0, r4
	bl      Function_22559dc
	cmp     r0, #0x0
	bne     branch_2246188
branch_224617e: @ 224617e :thumb
	mov     r0, r4
	mov     r1, r6
	bl      BeSeq_AddToPointer
	b       branch_22461a0

branch_2246188: @ 2246188 :thumb
	ldr     r1, [r4, #0x64]
	ldr     r2, [r4, #0x6c]
	mov     r0, r4
	mov     r3, #0x3c
	bl      Function_2255ab4_CheckAbility
	cmp     r0, #0x1
	bne     branch_22461a0
	ldr     r1, [sp, #0x4]
	mov     r0, r4
	bl      BeSeq_AddToPointer
branch_22461a0: @ 22461a0 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x22461a6

.align 2
.word BattleData_219c @ 0x22461a8
.word BattleData_Item @ 0x22461ac



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd80: @ 22461b0 :thumb
	push    {r3-r5,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord

	mov     r2, #0x63
	lsl     r2, r2, #2
	ldr     r3, [r4, #0x64]
	add     r5, r4, r2
	mov     r1, r0
	ldrb    r0, [r5, r3]
	cmp     r0, #0x0
	beq     branch_22461da
	mov     r0, r4
	bl      BeSeq_AddToPointer
	b       branch_22461ea

branch_22461da: @ 22461da :thumb
	mov     r0, #0x2
	strb    r0, [r5, r3]
	ldr     r0, [r4, #0x64]
	add     r2, #0x2c
	add     r1, r4, r0
	ldr     r0, [pc, #0x8] @ 0x22461f0, (=BattleData_219c)
	ldrb    r0, [r1, r0]
	strb    r0, [r1, r2]
.thumb
branch_22461ea: @ 22461ea :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22461ee

.align 2
.word BattleData_219c @ 0x22461f0



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd81: @ 22461f4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x48
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]

	mov     r0, r1
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	ldr     r0, [sp, #0x4]
	bl      BeSeq_LoadWord
	ldr     r1, [sp, #0x4]
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x0]
	ldr     r1, [r1, #0x64]
	mov     r7, #0x0
	bl      GetMainBattleData_NrOfPkmnInParty
	str     r0, [sp, #0xc]
	mov     r0, r7
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x0
	ble     branch_22462a2
	add     r5, sp, #0x18
branch_2246226: @ 2246226 :thumb
	ldr     r0, [sp, #0x4]
	ldr     r1, [r0, #0x64]
	add     r2, r0, r1
	ldr     r0, [pc, #0xa0] @ 0x22462d0, (=BattleData_219c)
	ldrb    r2, [r2, r0]
	ldr     r0, [sp, #0x10]
	cmp     r0, r2
	beq     branch_2246296
	ldr     r0, [sp, #0x0]
	ldr     r2, [sp, #0x10]
	bl      GetMainBattleData_GetAdrOfPkmnInParty
	mov     r1, #0xae
	mov     r2, #0x0
	str     r0, [sp, #0x8]
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_2246296
	ldr     r0, [sp, #0x8]
	mov     r1, #0xae
	mov     r2, #0x0
	bl      GetPkmnData
	ldr     r1, [pc, #0x7c] @ 0x22462d4, (=0x1ee)
	cmp     r0, r1
	beq     branch_2246296
	mov     r4, #0x0
.thumb
branch_224625e: @ 224625e :thumb
	mov     r1, r4
	ldr     r0, [sp, #0x8]
	add     r1, #0x36
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r0, r0, #16
	lsr     r6, r0, #16
	mov     r0, r6
	bl      Function_2255918
	cmp     r0, #0x0
	bne     branch_2246290
	ldr     r1, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	mov     r2, r1
	ldr     r2, [r2, #0x64]
	mov     r3, r6
	bl      Function_225b02c
	cmp     r0, #0x1
	bne     branch_2246290
	strh    r6, [r5, #0x0]
	.hword  0x1cad @ add r5, r5, #0x2
	.hword  0x1c7f @ add r7, r7, #0x1
.thumb
branch_2246290: @ 2246290 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x4
	blt     branch_224625e
.thumb
branch_2246296: @ 2246296 :thumb
	ldr     r0, [sp, #0x10]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0xc]
	str     r1, [sp, #0x10]
	cmp     r1, r0
	blt     branch_2246226
.thumb
branch_22462a2: @ 22462a2 :thumb
	cmp     r7, #0x0
	beq     branch_22462c2
	ldr     r0, [sp, #0x0]
	bl      Function_16_GetRandomNr
	mov     r1, r7
	blx     _s32_div_f
	lsl     r1, r1, #1
	add     r0, sp, #0x18
	ldrh    r2, [r0, r1]
	mov     r1, #0x49
	ldr     r0, [sp, #0x4]
	lsl     r1, r1, #2
	str     r2, [r0, r1]
	b       branch_22462ca

branch_22462c2: @ 22462c2 :thumb
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x14]
	bl      BeSeq_AddToPointer
branch_22462ca: @ 22462ca :thumb
	mov     r0, #0x0
	add     sp, #0x48
	pop     {r3-r7,pc}
@ 0x22462d0

.word BattleData_219c @ 0x22462d0
.word 0x1ee @ 0x22462d4



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd82: @ 22462d8 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r5, r0

	mov     r0, r6
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r6
	bl      BeSeq_LoadWord
	mov     r7, r0

	mov     r0, r5
	mov     r4, #0x0
	bl      GetMainBattleData_NrOfBattleTextPtrs
	cmp     r0, #0x0
	ble     branch_2246306
branch_22462fa: @ 22462fa :thumb
	mov     r0, r5
	.hword  0x1c64 @ add r4, r4, #0x1
	bl      GetMainBattleData_NrOfBattleTextPtrs
	cmp     r4, r0
	blt     branch_22462fa
branch_2246306: @ 2246306 :thumb
	ldr     r0, [pc, #0x28] @ 0x2246330, (=BattleData_3150)
	ldr     r0, [r6, r0]
	cmp     r0, #0x1
	bne     branch_2246318
	mov     r0, r6
	mov     r1, r7
	bl      BeSeq_AddToPointer
	b       branch_224632a

branch_2246318: @ 2246318 :thumb
	mov     r0, #0x75
	lsl     r0, r0, #2
	add     r3, r6, r0
	ldr     r0, [r6, #0x64]
	lsl     r2, r0, #6
	ldr     r1, [r3, r2]
	mov     r0, #0x10
	orr     r0, r1
	str     r0, [r3, r2]
branch_224632a: @ 224632a :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224632e

.align 2
.word BattleData_3150 @ 0x2246330



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd83: @ 2246334 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r1
	mov     r6, r0

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	ldr     r1, [r5, #0x64]
	mov     r0, r6
	bl      Function_16_223e208
	mov     r1, r5
	ldr     r4, [r5, #0x64]
	add     r1, #0x84
	str     r4, [r1, #0x0]
	ldr     r1, [r5, #0x6c]
	lsl     r0, r0, #3
	str     r1, [r5, #0x64]
	mov     r1, #0x71
	lsl     r1, r1, #2
	add     r1, r5, r1
	ldr     r0, [r1, r0]
	lsl     r1, r0, #11
	lsr     r1, r1, #31
	beq     branch_224637e
	lsl     r0, r0, #9
	lsr     r0, r0, #30
	mov     r1, #0xc0
	mul     r1, r0
	add     r2, r5, r1
	ldr     r1, [pc, #0x68] @ 0x22463dc, (=BattleData_CurHP)
	ldr     r1, [r2, r1]
	cmp     r1, #0x0
	beq     branch_224637e
	str     r0, [r5, #0x6c]
	b       branch_22463ca

branch_224637e: @ 224637e :thumb
	ldr     r0, [pc, #0x60] @ 0x22463e0, (=BattleData_WazaSeqFileNr)
	ldr     r3, [r5, r0]
	lsl     r0, r3, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0x5c] @ 0x22463e4, (=0x3e6)
	ldrh    r0, [r1, r0]
	cmp     r0, #0x4
	beq     branch_2246392
	cmp     r0, #0x8
	bne     branch_2246396
branch_2246392: @ 2246392 :thumb
	str     r4, [r5, #0x6c]
	b       branch_22463ca

branch_2246396: @ 2246396 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	lsl     r3, r3, #16
	ldr     r2, [r5, #0x64]
	mov     r0, r6
	mov     r1, r5
	lsr     r3, r3, #16
	bl      Function_2253954
	mov     r1, #0xb5
	lsl     r1, r1, #2
	add     r2, r5, r1
	mov     r1, #0x1c
	mul     r1, r0
	ldr     r1, [r2, r1]
	lsl     r2, r1, #30
	lsr     r2, r2, #31
	bne     branch_22463c4
	lsl     r1, r1, #29
	lsr     r1, r1, #31
	beq     branch_22463c8
branch_22463c4: @ 22463c4 :thumb
	str     r0, [r5, #0x6c]
	b       branch_22463ca

branch_22463c8: @ 22463c8 :thumb
	str     r4, [r5, #0x6c]
branch_22463ca: @ 22463ca :thumb
	mov     r1, #0x85
	lsl     r1, r1, #6
	ldr     r2, [r5, r1]
	mov     r0, #0x8
	orr     r0, r2
	str     r0, [r5, r1]
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x22463dc

.word BattleData_CurHP @ 0x22463dc
.word BattleData_WazaSeqFileNr @ 0x22463e0
.word 0x3e6 @ 0x22463e4



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd84: @ 22463e8 :thumb
	push    {r3-r5,lr}
	mov     r5, r1

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	ldr     r1, [r5, #0x64]
	ldr     r0, [r5, #0x6c]
	lsl     r4, r1, #6
	add     r2, r5, r4
	lsl     r1, r0, #2
	add     r2, r2, r1
	mov     r1, #0x76
	lsl     r1, r1, #2
	ldr     r1, [r2, r1]
	cmp     r1, #0x0
	beq     branch_224641a
	bl      Function_20787cc
	mov     r1, #0x7b
	add     r2, r5, r4
	lsl     r1, r1, #2
	ldr     r1, [r2, r1]
	tst     r0, r1
	bne     branch_2246440
branch_224641a: @ 224641a :thumb
	ldr     r0, [r5, #0x6c]
	add     r2, r5, r4
	lsl     r1, r0, #2
	add     r2, r2, r1
	mov     r1, #0x1f
	lsl     r1, r1, #4
	ldr     r1, [r2, r1]
	cmp     r1, #0x0
	beq     branch_2246448
	bl      Function_20787cc
	ldr     r1, [r5, #0x64]
	lsl     r1, r1, #6
	add     r2, r5, r1
	mov     r1, #0x81
	lsl     r1, r1, #2
	ldr     r1, [r2, r1]
	tst     r0, r1
	beq     branch_2246448
branch_2246440: @ 2246440 :thumb
	ldr     r0, [pc, #0x10] @ 0x2246454, (=BattleData_2158)
	mov     r1, #0x14
	str     r1, [r5, r0]
	b       branch_224644e

branch_2246448: @ 2246448 :thumb
	ldr     r0, [pc, #0x8] @ 0x2246454, (=BattleData_2158)
	mov     r1, #0xa
	str     r1, [r5, r0]
branch_224644e: @ 224644e :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2246452

.align 2
.word BattleData_2158 @ 0x2246454



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd85: @ 2246458 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r6, r0

	ldr     r1, [r4, #0x6c]
	mov     r0, r5
	bl      Function_16_223e208
	lsl     r1, r0, #2
	add     r2, r4, r1
	mov     r1, #0x6f
	lsl     r1, r1, #2
	ldr     r2, [r2, r1]
	mov     r1, #0x1
	tst     r1, r2
	bne     branch_224648c
	mov     r1, #0x2
	tst     r1, r2
	beq     branch_22464bc
branch_224648c: @ 224648c :thumb
	mov     r5, #0x6f
	lsl     r5, r5, #2
	add     r2, r4, r5
	lsl     r1, r0, #2
	ldr     r6, [r2, r1]
	mov     r3, #0x1
	bic     r6, r3
	str     r6, [r2, r1]
	ldr     r6, [r2, r1]
	mov     r3, #0x2
	bic     r6, r3
	add     r5, #0x8
	str     r6, [r2, r1]
	lsl     r2, r0, #3
	add     r3, r4, r5
	ldr     r1, [r3, r2]
	mov     r0, #0x1c
	bic     r1, r0
	str     r1, [r3, r2]
	ldr     r1, [r3, r2]
	ldr     r0, [pc, #0x10] @ 0x22464c8, (=0xfffffc7f)
	and     r0, r1
	str     r0, [r3, r2]
	b       branch_22464c4

branch_22464bc: @ 22464bc :thumb
	mov     r0, r4
	mov     r1, r6
	bl      BeSeq_AddToPointer
branch_22464c4: @ 22464c4 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x22464c8

.word 0xfffffc7f @ 0x22464c8



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd86: @ 22464cc :thumb
	push    {r3-r5,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r1, r0

	mov     r0, #0xb7
	lsl     r0, r0, #6
	add     r3, r4, r0
	ldr     r0, [r4, #0x6c]
	mov     r5, #0xc0
	mov     r2, r0
	mul     r2, r5
	ldr     r0, [r3, r2]
	lsl     r5, r5, #5
	tst     r5, r0
	beq     branch_22464fe
	mov     r0, r4
	bl      BeSeq_AddToPointer
	b       branch_2246506

branch_22464fe: @ 22464fe :thumb
	mov     r1, #0x1
	lsl     r1, r1, #12
	orr     r0, r1
	str     r0, [r3, r2]
branch_2246506: @ 2246506 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224650a


/* Input:
r0: MainBattleData
r1: BattleData
*/
.align 2, 0
.thumb
BeSeq_Cmd87: @ 224650c :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r4, r0

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r6, r0

	ldr     r1, [r5, #0x6c]
	mov     r0, r4
	bl      Function_16_223e208
	mov     r4, r0
	ldr     r2, [r5, #0x6c]
	mov     r0, #0xc0
	mul     r0, r2
	add     r1, r5, r0
	ldr     r0, [pc, #0xe0] @ 0x2246618, (=BattleData_Item)
	ldrh    r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2246586
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	mov     r3, #0x3c
	bl      Function_2255ab4_CheckAbility
	cmp     r0, #0x1
	bne     branch_2246586
	mov     r0, r5
	ldr     r1, [pc, #0xcc] @ 0x224661c, (=0x2ca)
	add     r0, #0xf6
	strh    r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0x25
	add     r0, #0xf5
	strb    r1, [r0, #0x0]
	ldr     r1, [r5, #0x6c]
	mov     r0, r5
	bl      Function_2255560
	mov     r1, r5
	add     r1, #0xf8
	str     r0, [r1, #0x0]
	ldr     r0, [r5, #0x6c]
	mov     r1, #0xc0
	mov     r2, r0
	mul     r2, r1
	ldr     r0, [pc, #0xac] @ 0x2246620, (=BattleData_Ability)
	add     r2, r5, r2
	ldrb    r2, [r2, r0]
	mov     r0, r5
	add     r0, #0xfc
	str     r2, [r0, #0x0]
	ldr     r0, [pc, #0xa4] @ 0x2246624, (=BattleData_WazaSeqFileNr)
	add     r1, #0x40
	ldr     r0, [r5, r0]
	str     r0, [r5, r1]
	b       branch_2246614

branch_2246586: @ 2246586 :thumb
	ldr     r1, [r5, #0x6c]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r5, r0
	ldr     r0, [pc, #0x88] @ 0x2246618, (=BattleData_Item)
	ldrh    r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_224660c
	mov     r1, #0x8a
	mov     r0, r5
	lsl     r1, r1, #2
	add     r0, #0xf6
	strh    r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0x21
	add     r0, #0xf5
	strb    r1, [r0, #0x0]
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	bl      Function_2255560
	mov     r1, r5
	add     r1, #0xf8
	str     r0, [r1, #0x0]
	ldr     r1, [r5, #0x6c]
	mov     r0, r5
	bl      Function_2255560
	mov     r1, r5
	add     r1, #0xfc
	str     r0, [r1, #0x0]
	ldr     r0, [r5, #0x6c]
	mov     r1, #0xc0
	mov     r2, r0
	mul     r2, r1
	add     r0, r5, r2
	ldr     r2, [pc, #0x48] @ 0x2246618, (=BattleData_Item)
	ldrh    r3, [r0, r2]
	mov     r0, r1
	add     r0, #0x40
	str     r3, [r5, r0]
	ldr     r3, [r5, #0x6c]
	mov     r0, #0x0
	mul     r1, r3
	add     r1, r5, r1
	strh    r0, [r1, r2]
	ldr     r0, [r5, #0x6c]
	add     r1, r5, r0
	ldr     r0, [pc, #0x40] @ 0x2246628, (=BattleData_219c)
	ldrb    r0, [r1, r0]
	bl      Function_20787cc
	mov     r1, #0x71
	lsl     r1, r1, #2
	add     r3, r5, r1
	lsl     r2, r4, #3
	ldr     r4, [r3, r2]
	ldr     r1, [pc, #0x30] @ 0x224662c, (=0xe07fffff)
	and     r1, r4
	lsl     r4, r4, #3
	lsr     r4, r4, #26
	orr     r0, r4
	lsl     r0, r0, #26
	lsr     r0, r0, #3
	orr     r0, r1
	str     r0, [r3, r2]
	b       branch_2246614

branch_224660c: @ 224660c :thumb
	mov     r0, r5
	mov     r1, r6
	bl      BeSeq_AddToPointer
branch_2246614: @ 2246614 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2246618

.word BattleData_Item @ 0x2246618
.word 0x2ca @ 0x224661c
.word BattleData_Ability @ 0x2246620
.word BattleData_WazaSeqFileNr @ 0x2246624
.word BattleData_219c @ 0x2246628
.word 0xe07fffff @ 0x224662c



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd88: @ 2246630 :thumb
	push    {r4,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	ldr     r0, [pc, #0x38] @ 0x2246678, (=BattleData_2154)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_2246674
	ldr     r1, [r4, #0x64]
	mov     r0, #0xc0
	mul     r0, r1
	ldr     r1, [pc, #0x30] @ 0x224667c, (=BattleData_WazaSeqFileNr)
	ldr     r1, [r4, r1]
	lsl     r1, r1, #4
	add     r2, r4, r1
	ldr     r1, [pc, #0x2c] @ 0x2246680, (=BattleData_3e1)
	ldrb    r3, [r2, r1]
	ldr     r1, [pc, #0x2c] @ 0x2246684, (=BattleData_CurHP)
	add     r2, r4, r0
	ldr     r0, [r2, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r2, r1]
	mul     r0, r3
	blx     _u32_div_f
	ldr     r1, [pc, #0x10] @ 0x2246678, (=BattleData_2154)
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	cmp     r0, #0x0
	bne     branch_2246674
	mov     r0, #0x1
	str     r0, [r4, r1]
.thumb
branch_2246674: @ 2246674 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2246678

.word BattleData_2154 @ 0x2246678
.word BattleData_WazaSeqFileNr @ 0x224667c
.word BattleData_3e1 @ 0x2246680
.word BattleData_CurHP @ 0x2246684



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd89: @ 2246688 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r7, r1
	str     r0, [sp, #0x0]

	mov     r0, r7
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r7
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x14]

	ldr     r0, [sp, #0x0]
	ldr     r1, [r7, #0x64]
	mov     r2, #0x0
	bl      Function_223e2a4
	mov     r4, r0
	ldr     r0, [sp, #0x0]
	ldr     r1, [r7, #0x64]
	mov     r2, #0x2
	bl      Function_223e2a4
	mov     r6, #0xb7
	mov     r3, r0
	lsl     r6, r6, #6
	mov     r1, r4
	mov     r0, #0xc0
	mov     r4, #0x1
	add     r2, r7, r6
	mul     r1, r0
	ldr     r5, [r2, r1]
	lsl     r4, r4, #30
	orr     r5, r4
	str     r5, [r2, r1]
	mov     r1, r3
	mul     r1, r0
	ldr     r3, [r2, r1]
	orr     r3, r4
	str     r3, [r2, r1]
	ldr     r1, [r7, #0x64]
	mul     r0, r1
	add     r0, r7, r0
	ldr     r2, [r0, r6]
	lsr     r0, r4, #17
	tst     r0, r2
	beq     branch_22466f0
	ldr     r1, [sp, #0x14]
	mov     r0, r7
	bl      BeSeq_AddToPointer
	b       branch_2246794
@ 0x22466f0

.thumb
branch_22466f0: @ 22466f0 :thumb
	ldr     r0, [sp, #0x0]
	bl      Function_16_223e208
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x0]
	bl      GetMainBattleData_NrOfBattleTextPtrs
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x0
	ble     branch_224676a
	str     r7, [sp, #0x4]
.thumb
branch_224670c: @ 224670c :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0xc]
	bl      Function_16_223e208
	ldr     r1, [sp, #0x10]
	cmp     r1, r0
	beq     branch_2246758
	mov     r2, #0x0
	ldr     r0, [pc, #0x7c] @ 0x224679c, (=BattleData_Move)
	mov     r4, r2
branch_2246720: @ 2246720 :thumb
	ldr     r1, [r7, #0x64]
	mov     r6, #0xc0
	mul     r6, r1
	add     r1, r7, r6
	add     r6, r1, r4
	ldr     r1, [pc, #0x70] @ 0x224679c, (=BattleData_Move)
	ldr     r5, [sp, #0x4]
	ldrh    r6, [r6, r1]
	mov     r3, #0x0
branch_2246732: @ 2246732 :thumb
	ldrh    r1, [r5, r0]
	cmp     r6, r1
	bne     branch_2246740
	cmp     r6, #0x0
	beq     branch_2246740
	cmp     r1, #0x0
	bne     branch_2246748
.thumb
branch_2246740: @ 2246740 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r3, #0x4
	blt     branch_2246732
.thumb
branch_2246748: @ 2246748 :thumb
	cmp     r3, #0x4
	bne     branch_2246754
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r2, #0x4
	blt     branch_2246720
.thumb
branch_2246754: @ 2246754 :thumb
	cmp     r3, #0x4
	bne     branch_224676a
.thumb
branch_2246758: @ 2246758 :thumb
	ldr     r0, [sp, #0x4]
	add     r0, #0xc0
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0xc]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	cmp     r1, r0
	blt     branch_224670c
.thumb
branch_224676a: @ 224676a :thumb
	ldr     r1, [sp, #0xc]
	ldr     r0, [sp, #0x8]
	cmp     r1, r0
	bne     branch_224677c
	ldr     r1, [sp, #0x14]
	mov     r0, r7
	bl      BeSeq_AddToPointer
	b       branch_2246794

branch_224677c: @ 224677c :thumb
	mov     r0, #0xb7
	ldr     r1, [r7, #0x64]
	lsl     r0, r0, #6
	add     r3, r7, r0
	mov     r0, #0xc0
	mov     r2, r1
	mul     r2, r0
	mov     r0, #0x2
	ldr     r1, [r3, r2]
	lsl     r0, r0, #12
	orr     r0, r1
	str     r0, [r3, r2]
branch_2246794: @ 2246794 :thumb
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x224679a

.align 2
.word BattleData_Move @ 0x224679c



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd8a: @ 22467a0 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r7, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x0]

	ldr     r1, [r4, #0x6c]
	mov     r0, r7
	bl      Function_16_223e208
	ldr     r5, [r4, #0x74]
	mov     r0, #0xc0
	mul     r0, r5
	add     r1, r4, r0
	mov     r0, #0xb7
	lsl     r0, r0, #6
	ldr     r1, [r1, r0]
	mov     r0, #0x1
	lsl     r0, r0, #14
	tst     r0, r1
	beq     branch_2246838
	ldr     r1, [r4, #0x64]
	mov     r0, r7
	bl      Function_16_223e208
	mov     r6, r0
	mov     r0, r7
	mov     r1, r5
	bl      Function_16_223e208
	cmp     r6, r0
	beq     branch_2246838
	ldr     r6, [r4, #0x64]
	mov     r1, #0xc0
	mov     r0, r6
	mul     r0, r1
	ldr     r2, [pc, #0x50] @ 0x2246844, (=BattleData_CurHP)
	add     r5, r4, r0
	ldr     r0, [r5, r2]
	cmp     r0, #0x0
	beq     branch_2246838
	mov     r0, #0xc1
	lsl     r0, r0, #6
	ldr     r3, [r4, r0]
	cmp     r3, #0xa5
	beq     branch_2246838
	lsl     r3, r6, #1
	add     r3, r4, r3
	add     r0, #0x7c
	ldrh    r0, [r3, r0]
	mov     r3, r2
	mov     r6, #0x0
	add     r5, r5, r0
	sub     r3, #0x20
	strb    r6, [r5, r3]
	ldr     r3, [r4, #0x64]
	lsl     r0, r0, #1
	mov     r5, r3
	mul     r5, r1
	add     r3, r4, r5
	add     r0, r3, r0
	sub     r2, #0x40
	ldrh    r0, [r0, r2]
	add     r1, #0x64
	str     r0, [r4, r1]
	ldr     r2, [r4, #0x64]
	mov     r0, r7
	mov     r1, r4
	bl      Function_2253ec0
	b       branch_2246840

branch_2246838: @ 2246838 :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, r4
	bl      BeSeq_AddToPointer
branch_2246840: @ 2246840 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2246844

.word BattleData_CurHP @ 0x2246844



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd8b: @ 2246848 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r5, r0

	mov     r0, r6
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r6
	bl      BeSeq_LoadWord
	mov     r7, r0

	mov     r0, r5
	mov     r4, #0x0
	bl      GetMainBattleData_NrOfBattleTextPtrs
	cmp     r0, #0x0
	ble     branch_2246876
branch_224686a: @ 224686a :thumb
	mov     r0, r5
	.hword  0x1c64 @ add r4, r4, #0x1
	bl      GetMainBattleData_NrOfBattleTextPtrs
	cmp     r4, r0
	blt     branch_224686a
branch_2246876: @ 2246876 :thumb
	ldr     r0, [pc, #0x28] @ 0x22468a0, (=BattleData_3150)
	ldr     r0, [r6, r0]
	cmp     r0, #0x1
	bne     branch_2246888
	mov     r0, r6
	mov     r1, r7
	bl      BeSeq_AddToPointer
	b       branch_224689a

branch_2246888: @ 2246888 :thumb
	mov     r0, #0x75
	lsl     r0, r0, #2
	add     r3, r6, r0
	ldr     r0, [r6, #0x64]
	lsl     r2, r0, #6
	ldr     r1, [r3, r2]
	mov     r0, #0x20
	orr     r0, r1
	str     r0, [r3, r2]
branch_224689a: @ 224689a :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224689e

.align 2
.word BattleData_3150 @ 0x22468a0



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd8c: @ 22468a4 :thumb
	push    {r3-r5,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	ldr     r2, [r4, #0x6c]
	mov     r1, #0xc0
	mul     r1, r2
	add     r2, r4, r1
	ldr     r1, [pc, #0x34] @ 0x22468f0, (=BattleData_2d60)
	ldr     r5, [pc, #0x38] @ 0x22468f4, (=0x226e5f0)
	ldr     r3, [r2, r1]
	ldr     r1, [pc, #0x38] @ 0x22468f8, (=0xffff)
	mov     r0, #0x0
branch_22468c2: @ 22468c2 :thumb
	ldrh    r2, [r5, #0x0]
	cmp     r2, r3
	bge     branch_22468d2
	.hword  0x1d2d @ add r5, r5, #0x4
	ldrh    r2, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r2, r1
	bne     branch_22468c2
branch_22468d2: @ 22468d2 :thumb
	lsl     r2, r0, #2
	ldr     r0, [pc, #0x1c] @ 0x22468f4, (=0x226e5f0)
	ldrh    r1, [r0, r2]
	ldr     r0, [pc, #0x1c] @ 0x22468f8, (=0xffff)
	cmp     r1, r0
	beq     branch_22468e4
	ldr     r0, [pc, #0x1c] @ 0x22468fc, (=0x226e5f2)
	ldrh    r1, [r0, r2]
	b       branch_22468e6

branch_22468e4: @ 22468e4 :thumb
	mov     r1, #0x78
branch_22468e6: @ 22468e6 :thumb
	ldr     r0, [pc, #0x18] @ 0x2246900, (=BattleData_2154)
	str     r1, [r4, r0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22468ee

.align 2
.word BattleData_2d60 @ 0x22468f0
.word Unknown_226e5f0 @ 0x22468f4
.word 0xffff @ 0x22468f8
.word Unknown_226e5f0+2 @ 0x22468fc
.word BattleData_2154 @ 0x2246900



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd8d: @ 2246904 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, #0xd
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x8
	mov     r3, #0x0
	bl      Function_16_22555a4
	cmp     r0, #0x0
	bne     branch_22469ac
	mov     r0, #0x4c
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x8
	mov     r3, #0x0
	bl      Function_16_22555a4
	cmp     r0, #0x0
	bne     branch_22469ac
	mov     r1, #0x6
	lsl     r1, r1, #6          @ =0x180 BattleData_Weather
	ldr     r2, [r4, r1]
	ldr     r0, [pc, #0x6c] @ 0x22469b0, (=0x80ff)
	tst     r0, r2
	ldr     r0, [pc, #0x6c] @ 0x22469b4, (=BattleData_WazaSeqFileNr)
	beq     branch_224699e
	ldr     r0, [r4, r0]
	lsl     r0, r0, #4
	add     r2, r4, r0
	ldr     r0, [pc, #0x68] @ 0x22469b8, (=BattleData_3e1)
	ldrb    r0, [r2, r0]
	lsl     r2, r0, #1
	ldr     r0, [pc, #0x64] @ 0x22469bc, (=BattleData_2154)
	str     r2, [r4, r0]
	ldr     r2, [r4, r1]
	mov     r1, #0x3
	tst     r1, r2
	beq     branch_2246966
	mov     r1, #0xb
	add     r0, #0xc
	str     r1, [r4, r0]
branch_2246966: @ 2246966 :thumb
	mov     r0, #0x6
	lsl     r0, r0, #6          @ =0x180 BattleData_Weather
	ldr     r1, [r4, r0]
	mov     r0, #0xc
	tst     r0, r1
	beq     branch_2246978
	ldr     r0, [pc, #0x4c] @ 0x22469c0, (=BattleData_2160)
	mov     r1, #0x5
	str     r1, [r4, r0]
branch_2246978: @ 2246978 :thumb
	mov     r0, #0x6
	lsl     r0, r0, #6          @ =0x180 BattleData_Weather
	ldr     r1, [r4, r0]
	mov     r0, #0x30
	tst     r0, r1
	beq     branch_224698a
	ldr     r0, [pc, #0x38] @ 0x22469c0, (=BattleData_2160)
	mov     r1, #0xa
	str     r1, [r4, r0]
branch_224698a: @ 224698a :thumb
	mov     r0, #0x6
	lsl     r0, r0, #6          @ =0x180 BattleData_Weather
	ldr     r1, [r4, r0]
	mov     r0, #0xc0
	tst     r0, r1
	beq     branch_22469ac
	ldr     r0, [pc, #0x28] @ 0x22469c0, (=BattleData_2160)
	mov     r1, #0xf
	str     r1, [r4, r0]
	b       branch_22469ac

branch_224699e: @ 224699e :thumb
	ldr     r0, [r4, r0]
	lsl     r0, r0, #4
	add     r1, r4, r0
	ldr     r0, [pc, #0x10] @ 0x22469b8, (=BattleData_3e1)
	ldrb    r1, [r1, r0]
	ldr     r0, [pc, #0x10] @ 0x22469bc, (=BattleData_2154)
	str     r1, [r4, r0]
branch_22469ac: @ 22469ac :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22469b0

.word 0x80ff @ 0x22469b0
.word BattleData_WazaSeqFileNr @ 0x22469b4
.word BattleData_3e1 @ 0x22469b8
.word BattleData_2154 @ 0x22469bc
.word BattleData_2160 @ 0x22469c0



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd8e: @ 22469c4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r1
	str     r0, [sp, #0x0]

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x10]

	ldr     r0, [sp, #0x0]
	bl      GetMainBattleData_NrOfBattleTextPtrs
	mov     r7, #0x0
	str     r0, [sp, #0xc]
	cmp     r0, #0x0
	bgt     branch_22469ec
	b       branch_2246afe

branch_22469ec: @ 22469ec :thumb
	mov     r0, #0xb5
	lsl     r0, r0, #6              @ 0x2d40
	add     r0, r5, r0
	str     r5, [sp, #0x8]
	mov     r4, r5
	str     r0, [sp, #0x4]
branch_22469f8: @ 22469f8 :thumb
	ldr     r1, [sp, #0x8]
	ldr     r0, [pc, #0x144] @ 0x2246b40, (=BattleData_21a8)
	ldr     r0, [r1, r0]
	cmp     r0, #0x27
	beq     branch_2246ae6
	ldr     r0, [pc, #0x140] @ 0x2246b44, (=BattleData_CurHP)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_2246ae6
	ldr     r0, [pc, #0x13c] @ 0x2246b48, (=BattleData_StatusEffect)
	ldr     r1, [r4, r0]
	mov     r0, #0x27
	tst     r0, r1
	bne     branch_2246ae6
	mov     r0, r5
	mov     r1, r7
	bl      Function_2255ec0
	cmp     r0, #0x0
	bne     branch_2246ae6
	ldr     r0, [sp, #0x0]
	mov     r1, r7
	bl      Function_16_223e208
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x0]
	ldr     r1, [r5, #0x78]
	bl      Function_16_223e208
	ldr     r1, [sp, #0x14]
	cmp     r1, r0
	beq     branch_2246ae6
	ldr     r0, [pc, #0x110] @ 0x2246b4c, (=BattleData_2dec)
	ldrh    r6, [r4, r0]
	cmp     r6, #0x0
	beq     branch_2246a50
	.hword  0x1c80 @ add r0, r0, #0x2
	ldrh    r0, [r4, r0]
	lsl     r0, r0, #1
	add     r1, r4, r0
	ldr     r0, [pc, #0x104] @ 0x2246b50, (=BattleData_Move)
	ldrh    r0, [r1, r0]
	cmp     r6, r0
	beq     branch_2246a5a
branch_2246a50: @ 2246a50 :thumb
	mov     r0, r5
	mov     r1, r7
	bl      Function_2255570
	mov     r6, r0
branch_2246a5a: @ 2246a5a :thumb
	cmp     r6, #0x0
	beq     branch_2246ae6
	lsl     r1, r6, #16
	ldr     r0, [sp, #0x4]
	lsr     r1, r1, #16
	bl      Function_2254ee0
	str     r0, [sp, #0x18]
	lsl     r0, r6, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0xe4] @ 0x2246b54, (=BattleData_3de)
	ldrh    r0, [r1, r0]
	cmp     r0, #0x80
	bne     branch_2246ae6
	ldr     r0, [sp, #0x18]
	add     r1, r4, r0
	ldr     r0, [pc, #0xdc] @ 0x2246b58, (=BattleData_MovePP)
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2246ae6
	ldr     r0, [pc, #0xd4] @ 0x2246b58, (=BattleData_MovePP)
	add     r1, r5, r0
	mov     r0, #0xc0
	mul     r0, r7
	add     r4, r1, r0
	ldr     r0, [sp, #0x18]
	ldrb    r0, [r4, r0]
	sub     r1, r0, #0x1
	ldr     r0, [sp, #0x18]
	strb    r1, [r4, r0]
	ldr     r1, [r5, #0x78]
	mov     r0, r5
	bl      GetAbilityOfPkmnConsideringMultitypeWeatherLevitate
	cmp     r0, #0x2e
	bne     branch_2246ab0
	ldr     r0, [sp, #0x18]
	ldrb    r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_2246ab0
	.hword  0x1e41 @ sub r1, r0, #0x1
	ldr     r0, [sp, #0x18]
	strb    r1, [r4, r0]
branch_2246ab0: @ 2246ab0 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, r5
	bl      Function_2255f94
	str     r7, [r5, #0x64]
	ldr     r0, [r5, #0x78]
	lsl     r2, r7, #1
	str     r0, [r5, #0x6c]
	ldr     r1, [pc, #0x98] @ 0x2246b5c, (=BattleData_2158)
	mov     r0, #0x14
	str     r0, [r5, r1]
	ldr     r0, [pc, #0x98] @ 0x2246b60, (=BattleData_WazaSeqFileNr)
	add     r2, r5, r2
	str     r6, [r5, r0]
	add     r0, #0x38
	strh    r6, [r2, r0]
	lsl     r0, r7, #4
	mov     r2, #0x27
	add     r0, r5, r0
	add     r1, #0x50
	str     r2, [r0, r1]
	ldr     r0, [sp, #0x0]
	mov     r1, r5
	mov     r2, r7
	bl      Function_2253ec0
	b       branch_2246afe

branch_2246ae6: @ 2246ae6 :thumb
	ldr     r0, [sp, #0x8]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r0, #0x10
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x4]
	add     r4, #0xc0
	add     r0, #0xc0
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0xc]
	cmp     r7, r0
	bge     branch_2246afe
	b       branch_22469f8

branch_2246afe: @ 2246afe :thumb
	ldr     r0, [sp, #0xc]
	cmp     r7, r0
	bne     branch_2246b0e
	ldr     r1, [sp, #0x10]
	mov     r0, r5
	bl      BeSeq_AddToPointer
	b       branch_2246b3a

branch_2246b0e: @ 2246b0e :thumb
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	bl      Function_16_2258ab8
	mov     r4, r0
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_2258acc
	cmp     r4, #0x37
	beq     branch_2246b2e
	cmp     r4, #0x73
	beq     branch_2246b2e
	cmp     r4, #0x7d
	bne     branch_2246b3a
branch_2246b2e: @ 2246b2e :thumb
	ldr     r1, [r5, #0x64]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r5, r0
	ldr     r0, [pc, #0x2c] @ 0x2246b64, (=BattleData_2df8)
	strh    r6, [r1, r0]
branch_2246b3a: @ 2246b3a :thumb
	mov     r0, #0x0
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x2246b40

.word BattleData_21a8 @ 0x2246b40
.word BattleData_CurHP @ 0x2246b44
.word BattleData_StatusEffect @ 0x2246b48
.word BattleData_2dec @ 0x2246b4c
.word BattleData_Move @ 0x2246b50
.word BattleData_3de @ 0x2246b54
.word BattleData_MovePP @ 0x2246b58
.word BattleData_2158 @ 0x2246b5c
.word BattleData_WazaSeqFileNr @ 0x2246b60
.word BattleData_2df8 @ 0x2246b64



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd8f: @ 2246b68 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	ldr     r0, [r4, #0x64]
	ldr     r3, [pc, #0x2c] @ 0x2246ba8, (=BattleData_Damage)
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x6c]
	ldr     r2, [pc, #0x28] @ 0x2246bac, (=BattleData_WazaSeqFileNr)
	str     r0, [sp, #0x4]
	ldr     r0, [r4, r3]
	mov     r1, r4
	str     r0, [sp, #0x8]
	mov     r0, r3
	add     r0, #0x28
	add     r0, r4, r0
	str     r0, [sp, #0xc]
	add     r3, #0x1c
	ldr     r2, [r4, r2]
	ldr     r3, [r4, r3]
	mov     r0, r5
	bl      Function_16_2254fa8
	ldr     r1, [pc, #0x8] @ 0x2246ba8, (=BattleData_Damage)
	str     r0, [r4, r1]
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2246ba8

.word BattleData_Damage @ 0x2246ba8
.word BattleData_WazaSeqFileNr @ 0x2246bac



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd90: @ 2246bb0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r1
	str     r0, [sp, #0x0]

	mov     r0, r4
	mov     r1, #0x1
	mov     r6, #0x0
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x8]

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r7, r0

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r5, r0

	mov     r0, r4
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x4]

	ldr     r0, [sp, #0x0]
	ldr     r2, [sp, #0x8]
	mov     r1, r4
	bl      GetTargetNrOfPkmn
	cmp     r7, #0x6
	bhi     branch_2246ca2
	add     r1, r7, r7
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2246bfc

Jumppoints_2246bfc:
.hword branch_2246c0a - Jumppoints_2246bfc - 2
.hword branch_2246c20 - Jumppoints_2246bfc - 2
.hword branch_2246c36 - Jumppoints_2246bfc - 2
.hword branch_2246c4c - Jumppoints_2246bfc - 2
.hword branch_2246c62 - Jumppoints_2246bfc - 2
.hword branch_2246c78 - Jumppoints_2246bfc - 2
.hword branch_2246c8e - Jumppoints_2246bfc - 2
.thumb
branch_2246c0a: @ 2246c0a :thumb
	lsl     r0, r0, #6
	add     r1, r4, r0
	mov     r0, #0x75
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	cmp     r5, r0
	bne     branch_2246ca2
	mov     r6, #0x1
	b       branch_2246ca2

branch_2246c20: @ 2246c20 :thumb
	lsl     r0, r0, #6
	add     r1, r4, r0
	mov     r0, #0x75
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	lsl     r0, r0, #30
	lsr     r0, r0, #31
	cmp     r5, r0
	bne     branch_2246ca2
	mov     r6, #0x1
	b       branch_2246ca2

branch_2246c36: @ 2246c36 :thumb
	lsl     r0, r0, #6
	add     r1, r4, r0
	mov     r0, #0x75
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	lsl     r0, r0, #29
	lsr     r0, r0, #31
	cmp     r5, r0
	bne     branch_2246ca2
	mov     r6, #0x1
	b       branch_2246ca2

branch_2246c4c: @ 2246c4c :thumb
	lsl     r0, r0, #6
	add     r1, r4, r0
	mov     r0, #0x75
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	lsl     r0, r0, #28
	lsr     r0, r0, #31
	cmp     r5, r0
	bne     branch_2246ca2
	mov     r6, #0x1
	b       branch_2246ca2

branch_2246c62: @ 2246c62 :thumb
	lsl     r0, r0, #6
	add     r1, r4, r0
	mov     r0, #0x75
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	lsl     r0, r0, #27
	lsr     r0, r0, #31
	cmp     r5, r0
	bne     branch_2246ca2
	mov     r6, #0x1
	b       branch_2246ca2

branch_2246c78: @ 2246c78 :thumb
	lsl     r0, r0, #6
	add     r1, r4, r0
	mov     r0, #0x75
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	lsl     r0, r0, #26
	lsr     r0, r0, #31
	cmp     r5, r0
	bne     branch_2246ca2
	mov     r6, #0x1
	b       branch_2246ca2

branch_2246c8e: @ 2246c8e :thumb
	lsl     r0, r0, #6
	add     r1, r4, r0
	mov     r0, #0x75
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	lsl     r0, r0, #25
	lsr     r0, r0, #31
	cmp     r5, r0
	bne     branch_2246ca2
	mov     r6, #0x1
branch_2246ca2: @ 2246ca2 :thumb
	cmp     r6, #0x0
	beq     branch_2246cae
	ldr     r1, [sp, #0x4]
	mov     r0, r4
	bl      BeSeq_AddToPointer
branch_2246cae: @ 2246cae :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2246cb4


/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd91: @ 2246cb4 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r7, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x0]

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r6, r0

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r5, r0

	ldr     r2, [sp, #0x0]
	mov     r0, r7
	mov     r1, r4
	bl      GetTargetNrOfPkmn
	cmp     r6, #0x6
	bhi     branch_2246da8
	add     r1, r6, r6
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2246cf4

Jumppoints_2246cf4:
.hword branch_2246d02 - Jumppoints_2246cf4 - 2
.hword branch_2246d1a - Jumppoints_2246cf4 - 2
.hword branch_2246d32 - Jumppoints_2246cf4 - 2
.hword branch_2246d4a - Jumppoints_2246cf4 - 2
.hword branch_2246d62 - Jumppoints_2246cf4 - 2
.hword branch_2246d7a - Jumppoints_2246cf4 - 2
.hword branch_2246d92 - Jumppoints_2246cf4 - 2
.thumb
branch_2246d02: @ 2246d02 :thumb
	mov     r1, #0x75
	lsl     r1, r1, #2
	lsl     r3, r0, #6
	add     r1, r4, r1
	ldr     r2, [r1, r3]
	mov     r0, #0x1
	bic     r2, r0
	mov     r0, #0x1
	and     r0, r5
	orr     r0, r2
	str     r0, [r1, r3]
	b       branch_2246da8

branch_2246d1a: @ 2246d1a :thumb
	mov     r1, #0x75
	lsl     r1, r1, #2
	lsl     r3, r0, #6
	add     r1, r4, r1
	ldr     r2, [r1, r3]
	mov     r0, #0x2
	bic     r2, r0
	lsl     r0, r5, #31
	lsr     r0, r0, #30
	orr     r0, r2
	str     r0, [r1, r3]
	b       branch_2246da8

branch_2246d32: @ 2246d32 :thumb
	mov     r1, #0x75
	lsl     r1, r1, #2
	lsl     r3, r0, #6
	add     r1, r4, r1
	ldr     r2, [r1, r3]
	mov     r0, #0x4
	bic     r2, r0
	lsl     r0, r5, #31
	lsr     r0, r0, #29
	orr     r0, r2
	str     r0, [r1, r3]
	b       branch_2246da8

branch_2246d4a: @ 2246d4a :thumb
	mov     r1, #0x75
	lsl     r1, r1, #2
	lsl     r3, r0, #6
	add     r1, r4, r1
	ldr     r2, [r1, r3]
	mov     r0, #0x8
	bic     r2, r0
	lsl     r0, r5, #31
	lsr     r0, r0, #28
	orr     r0, r2
	str     r0, [r1, r3]
	b       branch_2246da8

branch_2246d62: @ 2246d62 :thumb
	mov     r1, #0x75
	lsl     r1, r1, #2
	lsl     r3, r0, #6
	add     r1, r4, r1
	ldr     r2, [r1, r3]
	mov     r0, #0x10
	bic     r2, r0
	lsl     r0, r5, #31
	lsr     r0, r0, #27
	orr     r0, r2
	str     r0, [r1, r3]
	b       branch_2246da8

branch_2246d7a: @ 2246d7a :thumb
	mov     r1, #0x75
	lsl     r1, r1, #2
	lsl     r3, r0, #6
	add     r1, r4, r1
	ldr     r2, [r1, r3]
	mov     r0, #0x20
	bic     r2, r0
	lsl     r0, r5, #31
	lsr     r0, r0, #26
	orr     r0, r2
	str     r0, [r1, r3]
	b       branch_2246da8

branch_2246d92: @ 2246d92 :thumb
	mov     r1, #0x75
	lsl     r1, r1, #2
	lsl     r3, r0, #6
	add     r1, r4, r1
	ldr     r2, [r1, r3]
	mov     r0, #0x40
	bic     r2, r0
	lsl     r0, r5, #31
	lsr     r0, r0, #25
	orr     r0, r2
	str     r0, [r1, r3]
branch_2246da8: @ 2246da8 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2246dac


/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd92: @ 2246dac :thumb
	push    {r4,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	ldr     r0, [r4, #0x6c]
	ldr     r1, [pc, #0x2c] @ 0x2246de8, (=0x21f0)
	lsl     r0, r0, #2
	add     r0, r4, r0
	ldr     r2, [r0, r1]
	mov     r0, #0x19
	mul     r0, r2
	ldr     r2, [r4, #0x64]
	lsl     r2, r2, #2
	add     r2, r4, r2
	ldr     r1, [r2, r1]
	blx     _u32_div_f
	add     r1, r0, #0x1
	ldr     r0, [pc, #0x14] @ 0x2246dec, (=BattleData_2154)
	str     r1, [r4, r0]
	ldr     r1, [r4, r0]
	cmp     r1, #0x96
	ble     branch_2246de2
	mov     r1, #0x96
	str     r1, [r4, r0]
branch_2246de2: @ 2246de2 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2246de6

.align 2
.word 0x21f0 @ 0x2246de8
.word BattleData_2154 @ 0x2246dec



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd93: @ 2246df0 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r6, r0

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x0]

	ldr     r1, [r5, #0x64]
	mov     r0, r6
	bl      Function_16_223e208
	ldr     r1, [r5, #0x64]
	mov     r7, r0
	lsl     r1, r1, #6
	add     r2, r5, r1
	mov     r1, #0x83
	lsl     r1, r1, #2
	ldr     r1, [r2, r1]
	mov     r0, r6
	bl      Function_16_223e208
	mov     r4, r0
	ldr     r0, [r5, #0x64]
	mov     r2, #0x82
	lsl     r0, r0, #6
	add     r0, r5, r0
	lsl     r2, r2, #2
	ldr     r1, [r0, r2]
	cmp     r1, #0x0
	beq     branch_2246ed0
	cmp     r7, r4
	beq     branch_2246ed0
	.hword  0x1d12 @ add r2, r2, #0x4
	ldr     r2, [r0, r2]
	mov     r0, #0xc0
	mul     r0, r2
	add     r2, r5, r0
	ldr     r0, [pc, #0x98] @ 0x2246edc, (=BattleData_CurHP)
	ldr     r0, [r2, r0]
	cmp     r0, #0x0
	beq     branch_2246ed0
	mov     r0, #0xf
	mul     r0, r1
	mov     r1, #0xa
	blx     _s32_div_f
	ldr     r1, [pc, #0x88] @ 0x2246ee0, (=BattleData_Damage)
	str     r0, [r5, r1]
	mov     r0, #0x71
	lsl     r0, r0, #2
	add     r1, r5, r0
	lsl     r0, r4, #3
	ldr     r0, [r1, r0]
	lsl     r1, r0, #11
	lsr     r1, r1, #31
	beq     branch_2246e7e
	lsl     r0, r0, #9
	lsr     r0, r0, #30
	mov     r1, #0xc0
	mul     r1, r0
	add     r2, r5, r1
	ldr     r1, [pc, #0x68] @ 0x2246edc, (=BattleData_CurHP)
	ldr     r1, [r2, r1]
	cmp     r1, #0x0
	beq     branch_2246e7e
	str     r0, [r5, #0x6c]
	b       branch_2246e8c
@ 0x2246e7e

.thumb
branch_2246e7e: @ 2246e7e :thumb
	ldr     r0, [r5, #0x64]
	lsl     r0, r0, #6
	add     r1, r5, r0
	mov     r0, #0x83
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	str     r0, [r5, #0x6c]
.thumb
branch_2246e8c: @ 2246e8c :thumb
	ldr     r1, [r5, #0x6c]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r5, r0
	ldr     r0, [pc, #0x44] @ 0x2246edc, (=BattleData_CurHP)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_2246ec4
	ldr     r2, [r5, #0x64]
	mov     r0, r6
	mov     r1, r5
	bl      Function_16_2257028
	mov     r1, #0xc0
	mul     r1, r0
	str     r0, [r5, #0x6c]
	ldr     r0, [pc, #0x2c] @ 0x2246edc, (=BattleData_CurHP)
	add     r1, r5, r1
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_2246ec4
	mov     r2, #0x26
	str     r2, [r5, #0xc]
	mov     r0, r5
	mov     r1, #SubSeq_Narc
	add     r2, #0xf3
	bl      Call_Call_LoadFromNARC
branch_2246ec4: @ 2246ec4 :thumb
	ldr     r1, [r5, #0x64]
	ldr     r2, [r5, #0x6c]
	mov     r0, r5
	bl      Function_225b408
	b       branch_2246ed8

branch_2246ed0: @ 2246ed0 :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	bl      BeSeq_AddToPointer
branch_2246ed8: @ 2246ed8 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2246edc

.word BattleData_CurHP @ 0x2246edc
.word BattleData_Damage @ 0x2246ee0



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd94: @ 2246ee4 :thumb
	push    {r4,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	ldr     r0, [r4, #0x6c]
	ldr     r1, [pc, #0x2c] @ 0x2246f20, (=BattleData_21a8)
	lsl     r0, r0, #4
	add     r0, r4, r0
	ldr     r0, [r0, r1]
	cmp     r0, #0x27
	ldr     r0, [pc, #0x24] @ 0x2246f24, (=BattleData_WazaSeqFileNr)
	bne     branch_2246f0e
	ldr     r0, [r4, r0]
	lsl     r0, r0, #4
	add     r2, r4, r0
	ldr     r0, [pc, #0x20] @ 0x2246f28, (=BattleData_3e1)
	ldrb    r0, [r2, r0]
	lsl     r0, r0, #1
	b       branch_2246f18

branch_2246f0e: @ 2246f0e :thumb
	ldr     r0, [r4, r0]
	lsl     r0, r0, #4
	add     r2, r4, r0
	ldr     r0, [pc, #0x10] @ 0x2246f28, (=BattleData_3e1)
	ldrb    r0, [r2, r0]
branch_2246f18: @ 2246f18 :thumb
	sub     r1, #0x54
	str     r0, [r4, r1]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2246f20

.word BattleData_21a8 @ 0x2246f20
.word BattleData_WazaSeqFileNr @ 0x2246f24
.word BattleData_3e1 @ 0x2246f28



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd95: @ 2246f2c :thumb
	push    {r4,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	ldr     r1, [r4, #0x64]
	mov     r0, #0xc0
	mul     r0, r1
	add     r2, r4, r0
	lsl     r0, r1, #1
	add     r1, r4, r0
	ldr     r0, [pc, #0x18] @ 0x2246f60, (=BattleData_30bc)
	ldrh    r0, [r1, r0]
	add     r1, r2, r0
	ldr     r0, [pc, #0x18] @ 0x2246f64, (=BattleData_MovePP)
	ldrb    r1, [r1, r0]
	cmp     r1, #0x4
	bls     branch_2246f54
	mov     r1, #0x4
branch_2246f54: @ 2246f54 :thumb
	ldr     r0, [pc, #0x10] @ 0x2246f68, (=0x226e574)
	ldrb    r1, [r0, r1]
	ldr     r0, [pc, #0x10] @ 0x2246f6c, (=BattleData_2154)
	str     r1, [r4, r0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2246f60

.word BattleData_30bc @ 0x2246f60
.word BattleData_MovePP @ 0x2246f64
.word Unknown_226e574 @ 0x2246f68
.word BattleData_2154 @ 0x2246f6c



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd96: @ 2246f70 :thumb
	push    {r4,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	ldr     r1, [r4, #0x6c]
	mov     r0, #0xc0
	mul     r0, r1
	add     r3, r4, r0
	ldr     r1, [pc, #0x18] @ 0x2246fa0, (=BattleData_CurHP)
	mov     r0, #0x78
	ldr     r2, [r3, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r3, r1]
	mul     r0, r2
	blx     _u32_div_f
	add     r1, r0, #0x1
	ldr     r0, [pc, #0xc] @ 0x2246fa4, (=BattleData_2154)
	str     r1, [r4, r0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2246f9e

.align 2
.word BattleData_CurHP @ 0x2246fa0
.word BattleData_2154 @ 0x2246fa4



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd97: @ 2246fa8 :thumb
	push    {r3-r7,lr}
	mov     r5, r1

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r6, r0

	ldr     r1, [r5, #0x6c]
	mov     r0, #0xc0
	mul     r0, r1
	ldr     r3, [pc, #0x90] @ 0x2247054, (=BattleData_2dec)
	add     r0, r5, r0
	ldrh    r4, [r0, r3]
	cmp     r4, #0x0
	beq     branch_2246fdc
	add     r2, r3, #0x2
	ldrh    r2, [r0, r2]
	sub     r3, #0xa0
	lsl     r2, r2, #1
	add     r0, r0, r2
	ldrh    r0, [r0, r3]
	cmp     r4, r0
	beq     branch_2246fe4
branch_2246fdc: @ 2246fdc :thumb
	mov     r0, r5
	bl      Function_2255570
	mov     r4, r0
branch_2246fe4: @ 2246fe4 :thumb
	ldr     r0, [r5, #0x6c]
	lsl     r1, r0, #4
	add     r2, r5, r1
	ldr     r1, [pc, #0x6c] @ 0x2247058, (=BattleData_21a8)
	ldr     r1, [r2, r1]
	cmp     r1, #0x27
	beq     branch_2247048
	lsl     r0, r0, #6
	add     r1, r5, r0
	mov     r0, #0x75
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	bne     branch_2247048
	mov     r0, r5
	mov     r1, r4
	bl      Function_225b0c0
	cmp     r0, #0x1
	bne     branch_2247048
	lsl     r0, r4, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0x48] @ 0x224705c, (=BattleData_3e1)
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2247048
	ldr     r2, [r5, #0x64]
	ldr     r3, [pc, #0x40] @ 0x2247060, (=BattleData_2dcc)
	mov     r0, r2
	mov     r6, #0xc0
	add     r1, r5, r3
	mul     r0, r6
	mov     r2, #0x1
	ldr     r7, [r1, r0]
	lsl     r2, r2, #30
	orr     r2, r7
	str     r2, [r1, r0]
	mov     r0, r6
	add     r0, #0xb4
	ldr     r2, [r5, r0]
	ldr     r0, [r5, #0x64]
	add     r3, #0x10
	mov     r1, r0
	mul     r1, r6
	add     r0, r5, r1
	str     r2, [r0, r3]
	add     r6, #0x64
	str     r4, [r5, r6]
	b       branch_2247050

branch_2247048: @ 2247048 :thumb
	mov     r0, r5
	mov     r1, r6
	bl      BeSeq_AddToPointer
branch_2247050: @ 2247050 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2247054

.word BattleData_2dec @ 0x2247054
.word BattleData_21a8 @ 0x2247058
.word BattleData_3e1 @ 0x224705c
.word BattleData_2dcc @ 0x2247060



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd98: @ 2247064 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r6, r0

	ldr     r0, [pc, #0x40] @ 0x22470bc, (=BattleData_3048)
	ldr     r0, [r4, r0]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_2255918
	cmp     r0, #0x0
	bne     branch_22470b0
	ldr     r0, [pc, #0x30] @ 0x22470bc, (=BattleData_3048)
	ldr     r3, [r4, r0]
	cmp     r3, #0x0
	beq     branch_22470b0
	lsl     r3, r3, #16
	ldr     r2, [r4, #0x64]
	mov     r0, r5
	mov     r1, r4
	lsr     r3, r3, #16
	bl      Function_225b02c
	cmp     r0, #0x1
	bne     branch_22470b0
	ldr     r0, [pc, #0x14] @ 0x22470bc, (=BattleData_3048)
	ldr     r1, [r4, r0]
	mov     r0, #0x49
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	b       branch_22470b8

branch_22470b0: @ 22470b0 :thumb
	mov     r0, r4
	mov     r1, r6
	bl      BeSeq_AddToPointer
branch_22470b8: @ 22470b8 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x22470bc

.word BattleData_3048 @ 0x22470bc



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd99: @ 22470c0 :thumb
	push    {r3-r7,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	ldr     r5, [pc, #0x40] @ 0x2247110, (=BattleData_StatLevel)
	mov     r1, #0x0
	ldr     r3, [r4, #0x6c]
	mov     r2, #0xc0
	mul     r2, r3
	add     r3, r4, r2
	mov     r0, r1
	mov     r2, r3
	mov     r6, r5
branch_22470de: @ 22470de :thumb
	ldsb    r7, [r2, r6]
	cmp     r7, #6
	ble     branch_22470ec
	add     r7, r3, r0
	ldsb    r7, [r7, r5]
	.hword  0x1fbf @ sub r7, r7, #0x6
	add     r1, r1, r7
branch_22470ec: @ 22470ec :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1c52 @ add r2, r2, #0x1
	cmp     r0, #0x8
	blt     branch_22470de

	mov     r0, #0x14
	mov     r2, r1
	mul     r2, r0
	ldr     r0, [pc, #0x18] @ 0x2247114, (=BattleData_2154)
	add     r2, #0x3c
	str     r2, [r4, r0]
	ldr     r1, [r4, r0]
	cmp     r1, #0xc8
	ble     branch_224710a
	mov     r1, #0xc8
	str     r1, [r4, r0]
branch_224710a: @ 224710a :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224710e

.align 2
.word BattleData_StatLevel @ 0x2247110
.word BattleData_2154 @ 0x2247114



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd9a: @ 2247118 :thumb
	push    {r4-r6,lr}
	mov     r5, r1

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r4, r0
	ldr     r1, [r5, #0x6c]
	mov     r0, #0xc0
	mul     r0, r1
	ldr     r6, [pc, #0x54] @ 0x2247188, (=BattleData_2dec)
	add     r2, r5, r0
	ldrh    r0, [r2, r6]
	cmp     r0, #0x0
	beq     branch_224714c
	add     r3, r6, #0x2
	ldrh    r3, [r2, r3]
	sub     r6, #0xa0
	lsl     r3, r3, #1
	add     r2, r2, r3
	ldrh    r2, [r2, r6]
	cmp     r0, r2
	beq     branch_2247152
branch_224714c: @ 224714c :thumb
	mov     r0, r5
	bl      Function_2255570
branch_2247152: @ 2247152 :thumb
	ldr     r1, [r5, #0x6c]
	lsl     r2, r1, #4
	add     r3, r5, r2
	ldr     r2, [pc, #0x30] @ 0x224718c, (=BattleData_21a8)
	ldr     r2, [r3, r2]
	cmp     r2, #0x27
	beq     branch_224717c
	lsl     r0, r0, #4
	add     r2, r5, r0
	ldr     r0, [pc, #0x28] @ 0x2247190, (=BattleData_3e1)
	ldrb    r0, [r2, r0]
	cmp     r0, #0x0
	bne     branch_2247184
	lsl     r0, r1, #6
	add     r1, r5, r0
	mov     r0, #0x75
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	bne     branch_2247184
branch_224717c: @ 224717c :thumb
	mov     r0, r5
	mov     r1, r4
	bl      BeSeq_AddToPointer
branch_2247184: @ 2247184 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2247188

.word BattleData_2dec @ 0x2247188
.word BattleData_21a8 @ 0x224718c
.word BattleData_3e1 @ 0x2247190



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd9b: @ 2247194 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r7, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x8]

	mov     r0, r4
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x4]

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r6, r0

	mov     r0, r4
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x0]

	ldr     r2, [sp, #0x8]
	mov     r0, r7
	mov     r1, r4
	bl      GetTargetNrOfPkmn
	mov     r1, r0
	mov     r0, r7
	bl      Function_16_223e208
	ldr     r1, [sp, #0x4]
	cmp     r1, #0x0
	beq     branch_22471e6
	cmp     r1, #0x1
	beq     branch_22471e6
	cmp     r1, #0x2
	beq     branch_2247264
	b       branch_224733e

branch_22471e6: @ 22471e6 :thumb
	cmp     r6, #0x5
	bls     branch_22471ec
	b       branch_224733e

branch_22471ec: @ 22471ec :thumb
	add     r1, r6, r6
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x22471f8

Jumppoints_22471f8:
.hword branch_2247204 - Jumppoints_22471f8 - 2
.hword branch_2247214 - Jumppoints_22471f8 - 2
.hword branch_2247224 - Jumppoints_22471f8 - 2
.hword branch_2247234 - Jumppoints_22471f8 - 2
.hword branch_2247244 - Jumppoints_22471f8 - 2
.hword branch_2247254 - Jumppoints_22471f8 - 2
.thumb
branch_2247204: @ 2247204 :thumb
	lsl     r0, r0, #3
	add     r1, r4, r0
	mov     r0, #0x71
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	lsl     r0, r0, #27
	lsr     r5, r0, #29
	b       branch_224733e

branch_2247214: @ 2247214 :thumb
	lsl     r0, r0, #3
	add     r1, r4, r0
	mov     r0, #0x71
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	lsl     r0, r0, #22
	lsr     r5, r0, #29
	b       branch_224733e

branch_2247224: @ 2247224 :thumb
	lsl     r0, r0, #3
	add     r1, r4, r0
	mov     r0, #0x71
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	lsl     r0, r0, #17
	lsr     r5, r0, #29
	b       branch_224733e

branch_2247234: @ 2247234 :thumb
	lsl     r0, r0, #3
	add     r1, r4, r0
	mov     r0, #0x71
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	lsl     r0, r0, #12
	lsr     r5, r0, #29
	b       branch_224733e

branch_2247244: @ 2247244 :thumb
	lsl     r0, r0, #3
	add     r1, r4, r0
	mov     r0, #0x72
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	lsl     r0, r0, #30
	lsr     r5, r0, #30
	b       branch_224733e

branch_2247254: @ 2247254 :thumb
	lsl     r0, r0, #3
	add     r1, r4, r0
	mov     r0, #0x72
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	lsl     r0, r0, #28
	lsr     r5, r0, #30
	b       branch_224733e

branch_2247264: @ 2247264 :thumb
	cmp     r6, #0x5
	bhi     branch_224733e
	add     r1, r6, r6
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2247274

Jumppoints_2247274:
.hword branch_2247280 - Jumppoints_2247274 - 2
.hword branch_22472a0 - Jumppoints_2247274 - 2
.hword branch_22472c0 - Jumppoints_2247274 - 2
.hword branch_22472e0 - Jumppoints_2247274 - 2
.hword branch_2247300 - Jumppoints_2247274 - 2
.hword branch_2247320 - Jumppoints_2247274 - 2
.thumb
branch_2247280: @ 2247280 :thumb
	mov     r2, #0x71
	lsl     r2, r2, #2
	add     r6, r4, r2
	lsl     r3, r0, #3
	ldr     r7, [r6, r3]
	mov     r1, #0x1c
	bic     r7, r1
	sub     r2, #0x8
	str     r7, [r6, r3]
	add     r3, r4, r2
	lsl     r2, r0, #2
	ldr     r1, [r3, r2]
	mov     r0, #0x1
	bic     r1, r0
	str     r1, [r3, r2]
	b       branch_224733e

branch_22472a0: @ 22472a0 :thumb
	mov     r2, #0x71
	lsl     r2, r2, #2
	add     r6, r4, r2
	lsl     r7, r0, #3
	ldr     r3, [r6, r7]
	ldr     r1, [pc, #0xbc] @ 0x2247368, (=0xfffffc7f)
	sub     r2, #0x8
	and     r1, r3
	add     r3, r4, r2
	lsl     r2, r0, #2
	str     r1, [r6, r7]
	ldr     r1, [r3, r2]
	mov     r0, #0x2
	bic     r1, r0
	str     r1, [r3, r2]
	b       branch_224733e

branch_22472c0: @ 22472c0 :thumb
	mov     r2, #0x71
	lsl     r2, r2, #2
	add     r6, r4, r2
	lsl     r7, r0, #3
	ldr     r3, [r6, r7]
	ldr     r1, [pc, #0xa0] @ 0x224736c, (=0xffff8fff)
	sub     r2, #0x8
	and     r1, r3
	add     r3, r4, r2
	lsl     r2, r0, #2
	str     r1, [r6, r7]
	ldr     r1, [r3, r2]
	mov     r0, #0x40
	bic     r1, r0
	str     r1, [r3, r2]
	b       branch_224733e

branch_22472e0: @ 22472e0 :thumb
	mov     r2, #0x71
	lsl     r2, r2, #2
	add     r6, r4, r2
	lsl     r7, r0, #3
	ldr     r3, [r6, r7]
	ldr     r1, [pc, #0x84] @ 0x2247370, (=0xfff1ffff)
	sub     r2, #0x8
	and     r1, r3
	add     r3, r4, r2
	lsl     r2, r0, #2
	str     r1, [r6, r7]
	ldr     r1, [r3, r2]
	mov     r0, #0x8
	bic     r1, r0
	str     r1, [r3, r2]
	b       branch_224733e

branch_2247300: @ 2247300 :thumb
	mov     r2, #0x72
	lsl     r2, r2, #2
	add     r6, r4, r2
	lsl     r3, r0, #3
	ldr     r7, [r6, r3]
	mov     r1, #0x3
	bic     r7, r1
	sub     r2, #0xc
	str     r7, [r6, r3]
	add     r3, r4, r2
	lsl     r2, r0, #2
	ldr     r1, [r3, r2]
	mov     r0, #0x4
	bic     r1, r0
	str     r1, [r3, r2]
	b       branch_224733e

branch_2247320: @ 2247320 :thumb
	mov     r2, #0x72
	lsl     r2, r2, #2
	add     r6, r4, r2
	lsl     r3, r0, #3
	ldr     r7, [r6, r3]
	mov     r1, #0xc
	bic     r7, r1
	sub     r2, #0xc
	str     r7, [r6, r3]
	lsl     r3, r0, #2
	add     r1, r4, r2
	ldr     r2, [r1, r3]
	ldr     r0, [pc, #0x38] @ 0x2247374, (=0xfffffbff)
	and     r0, r2
	str     r0, [r1, r3]
branch_224733e: @ 224733e :thumb
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	bne     branch_2247350
	cmp     r5, #0x0
	bne     branch_2247350
	ldr     r1, [sp, #0x0]
	mov     r0, r4
	bl      BeSeq_AddToPointer
branch_2247350: @ 2247350 :thumb
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x1
	bne     branch_2247362
	cmp     r5, #0x0
	beq     branch_2247362
	ldr     r1, [sp, #0x0]
	mov     r0, r4
	bl      BeSeq_AddToPointer
branch_2247362: @ 2247362 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2247368

.word 0xfffffc7f @ 0x2247368
.word 0xffff8fff @ 0x224736c
.word 0xfff1ffff @ 0x2247370
.word 0xfffffbff @ 0x2247374



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd9c: @ 2247378 :thumb
	push    {r4,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r1, r0
	ldr     r0, [r4, #0x6c]
	lsl     r0, r0, #6
	add     r2, r4, r0
	mov     r0, #0x75
	lsl     r0, r0, #2
	ldr     r0, [r2, r0]
	lsl     r0, r0, #29
	lsr     r0, r0, #31
	bne     branch_22473a4
	mov     r0, r4
	bl      BeSeq_AddToPointer
branch_22473a4: @ 22473a4 :thumb

	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22473a8


/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd9d: @ 22473a8 :thumb
	push    {r3-r5,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r1, r0

	ldr     r0, [r4, #0x6c]
	mov     r2, #0xc0
	mov     r3, r0
	mul     r3, r2
	add     r5, r4, r3
	ldr     r3, [pc, #0x28] @ 0x22473f0, (=BattleData_StatusEffect)
	ldr     r0, [r5, r3]
	cmp     r0, #0x0
	bne     branch_22473e6
	add     r0, r3, #0x4
	ldr     r5, [r5, r0]
	mov     r0, #0x1
	lsl     r0, r0, #24
	tst     r0, r5
	bne     branch_22473e6
	ldr     r0, [r4, #0x64]
	mul     r2, r0
	add     r0, r4, r2
	ldr     r0, [r0, r3]
	cmp     r0, #0x0
	bne     branch_22473ec
branch_22473e6: @ 22473e6 :thumb
	mov     r0, r4
	bl      BeSeq_AddToPointer
branch_22473ec: @ 22473ec :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22473f0

.word BattleData_StatusEffect @ 0x22473f0



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd9e: @ 22473f4 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r6, r0

	ldr     r2, [r4, #0x64]
	mov     r0, r5
	mov     r1, r4
	bl      Function_16_2256128
	ldr     r2, [r4, #0x64]
	mov     r1, #0xc0
	mul     r1, r2
	add     r2, r4, r1
	ldr     r1, [pc, #0x1c] @ 0x224743c, (=BattleData_2dcc)
	ldr     r1, [r2, r1]
	lsl     r1, r1, #19
	lsr     r2, r1, #29
	.hword  0x1e41 @ sub r1, r0, #0x1
	cmp     r2, r1
	bcc     branch_224742e
	cmp     r0, #0x2
	bge     branch_2247436
branch_224742e: @ 224742e :thumb
	mov     r0, r4
	mov     r1, r6
	bl      BeSeq_AddToPointer
branch_2247436: @ 2247436 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x224743a

.align 2
.word BattleData_2dcc @ 0x224743c



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmd9f: @ 2247440 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r6, r0

	ldr     r1, [r4, #0x64]
	mov     r0, r5
	bl      Function_16_223e208
	mov     r2, #0x72
	mov     r1, #0x1
	mov     r3, r0
	eor     r3, r1
	lsl     r0, r3, #3
	add     r5, r4, r0
	lsl     r2, r2, #2
	ldr     r5, [r5, r2]
	lsl     r5, r5, #28
	lsr     r5, r5, #30
	cmp     r5, #0x2
	bne     branch_2247496
	mov     r0, #0xb5
	lsl     r0, r0, #2
	add     r2, r4, r0
	ldr     r3, [r4, #0x64]
	mov     r0, #0x1c
	mul     r0, r3
	ldr     r5, [r2, r0]
	mov     r3, #0x1
	bic     r5, r3
	orr     r1, r5
	str     r1, [r2, r0]

	mov     r0, r4
	mov     r1, r6
	bl      BeSeq_AddToPointer
	b       branch_22474be

branch_2247496: @ 2247496 :thumb
	mov     r5, r2
	sub     r5, #0xc
	add     r5, r4, r5
	lsl     r3, r3, #2
	ldr     r6, [r5, r3]
	lsl     r1, r1, #10
	orr     r1, r6
	str     r1, [r5, r3]
	add     r2, r4, r2
	ldr     r4, [r2, r0]
	mov     r3, #0xc
	mov     r1, r4
	bic     r1, r3
	lsl     r3, r4, #28
	lsr     r3, r3, #30
	.hword  0x1c5b @ add r3, r3, #0x1
	lsl     r3, r3, #30
	lsr     r3, r3, #28
	orr     r1, r3
	str     r1, [r2, r0]
branch_22474be: @ 22474be :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x22474c2


/* Input:
r0: MainBattleData
r1: BattleData
*/
.align 2, 0
.thumb
BeSeq_Cmda0: @ 22474c4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r1
	mov     r4, r0

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r6, r0

	mov     r0, r5
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x4]

	mov     r0, r4
	mov     r1, r5
	mov     r2, r6
	bl      GetTargetNrOfPkmn
	mov     r7, r0
	mov     r0, r4
	mov     r1, r7
	bl      Function_16_223e208
	mov     r1, #0x72
	lsl     r1, r1, #2
	add     r4, r5, r1
	lsl     r6, r0, #3
	str     r0, [sp, #0x0]
	ldr     r0, [r4, r6]
	lsl     r0, r0, #28
	lsr     r0, r0, #30
	beq     branch_224755e
	sub     r1, #0x94
	str     r0, [r5, r1]
	mov     r0, r5
	mov     r1, #0x6
	add     r0, #0x88
	str     r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x94
	str     r7, [r0, #0x0]
	ldr     r1, [r5, #0x78]
	mov     r0, r5
	mov     r2, #PKMNBATTLEDATA_TYPE1
	mov     r3, #0x0
	bl      ReadPkmnBattleData1
	cmp     r0, #0x3
	beq     branch_224753c
	ldr     r1, [r5, #0x78]
	mov     r0, r5
	mov     r2, #PKMNBATTLEDATA_TYPE2
	mov     r3, #0x0
	bl      ReadPkmnBattleData1
	cmp     r0, #0x3
	bne     branch_2247566
branch_224753c: @ 224753c :thumb
	mov     r0, #0x6f
	ldr     r1, [sp, #0x0]
	lsl     r0, r0, #2
	add     r2, r5, r0
	lsl     r1, r1, #2
	ldr     r7, [r2, r1]
	ldr     r3, [pc, #0x20] @ 0x224756c, (=0xfffffbff)
	sub     r0, #0x88
	and     r3, r7
	str     r3, [r2, r1]
	ldr     r2, [r4, r6]
	mov     r1, #0xc
	bic     r2, r1
	str     r2, [r4, r6]
	mov     r1, #0x0
	str     r1, [r5, r0]
	b       branch_2247566

branch_224755e: @ 224755e :thumb
	ldr     r1, [sp, #0x4]
	mov     r0, r5
	bl      BeSeq_AddToPointer
branch_2247566: @ 2247566 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x224756c

.word 0xfffffbff @ 0x224756c



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmda1: @ 2247570 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x8] @ Parameter 1

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r4, r0 @ Parameter 2

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r7, r0 @ Parameter 3 Ability

	mov     r0, r5
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x4] @ Parameter 4

	cmp     r4, #0x0
	bne     branch_2247620

	mov     r0, r6
	bl      GetMainBattleData_NrOfBattleTextPtrs
	mov     r6, #0x0
	str     r0, [sp, #0x0]
	cmp     r0, #0x0
	ble     branch_2247688

branch_22475b2: @ 22475b2 :thumb
	ldr     r0, [pc, #0xdc] @ 0x2247690, (=BattleData_21ec)
	add     r1, r5, r6
	ldrb    r4, [r1, r0]
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x0
	bne     branch_22475ea

	ldr     r1, [r5, #BattleData_NrOfPkmn]
	mov     r0, r5
	mov     r2, r4
	mov     r3, r7
	bl      Function_2255ab4_CheckAbility
	cmp     r0, #0x1
	bne     branch_2247616

	mov     r0, #PkmnBattleData_Size
	mul     r0, r4
	add     r1, r5, r0
	ldr     r0, [pc, #0xbc] @ 0x2247694, (=BattleData_CurHP)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2247616

	ldr     r1, [sp, #0x4]
	mov     r0, r5
	bl      BeSeq_AddToPointer
	add     r5, #BattleData_80
	str     r4, [r5]
	b       branch_2247688

branch_22475ea: @ 22475ea :thumb
	ldr     r1, [r5, #BattleData_NrOfPkmn]
	mov     r0, r5
	mov     r2, r4
	mov     r3, r7
	bl      Function_2255ab4_CheckAbility
	cmp     r0, #0x0
	beq     branch_2247608

	mov     r0, #PkmnBattleData_Size
	mul     r0, r4
	add     r1, r5, r0
	ldr     r0, [pc, #0x90] @ 0x2247694, (=BattleData_CurHP)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_2247616

branch_2247608: @ 2247608 :thumb
	ldr     r1, [sp, #0x4]
	mov     r0, r5
	bl      BeSeq_AddToPointer
	add     r5, #BattleData_80
	str     r4, [r5]
	b       branch_2247688

branch_2247616: @ 2247616 :thumb
	ldr     r0, [sp, #0x0]
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r0
	blt     branch_22475b2
	b       branch_2247688

branch_2247620: @ 2247620 :thumb
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	bl      GetTargetNrOfPkmn
	mov     r4, r0
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x0
	bne     branch_224765e

	ldr     r1, [r5, #BattleData_NrOfPkmn]
	mov     r0, r5
	mov     r2, r4
	mov     r3, r7
	bl      Function_2255ab4_CheckAbility
	cmp     r0, #0x1
	bne     branch_2247688

	mov     r0, #PkmnBattleData_Size
	mul     r0, r4
	add     r1, r5, r0
	ldr     r0, [pc, #0x48] @ 0x2247694, (=BattleData_CurHP)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2247688

	ldr     r1, [sp, #0x4]
	mov     r0, r5
	bl      BeSeq_AddToPointer
	add     r5, #BattleData_80
	str     r4, [r5]
	b       branch_2247688

branch_224765e: @ 224765e :thumb
	ldr     r1, [r5, #BattleData_NrOfPkmn]
	mov     r0, r5
	mov     r2, r4
	mov     r3, r7
	bl      Function_2255ab4_CheckAbility
	cmp     r0, #0x0
	beq     branch_224767c

	mov     r0, #0xc0
	mul     r0, r4
	add     r1, r5, r0
	ldr     r0, [pc, #0x1c] @ 0x2247694, (=BattleData_CurHP)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_2247688

branch_224767c: @ 224767c :thumb
	ldr     r1, [sp, #0x4]
	mov     r0, r5
	bl      BeSeq_AddToPointer
	add     r5, #BattleData_80
	str     r4, [r5]
branch_2247688: @ 2247688 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x224768e

.align 2
.word BattleData_21ec @ 0x2247690
.word BattleData_CurHP @ 0x2247694



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmda2: @ 2247698 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r6, r0

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r7, r0

	mov     r0, r4
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x0]

	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      GetTargetNrOfPkmn
	mov     r6, r0
	mov     r0, r5
	mov     r1, r4
	mov     r2, r7
	bl      GetTargetNrOfPkmn
	mov     r7, r0
	mov     r0, r5
	mov     r1, r6
	bl      Function_16_223e208
	mov     r6, r0
	mov     r0, r5
	mov     r1, r7
	bl      Function_16_223e208
	cmp     r6, r0
	bne     branch_22476f4
	ldr     r1, [sp, #0x0]
	mov     r0, r4
	bl      BeSeq_AddToPointer
branch_22476f4: @ 22476f4 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22476f8


/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmda3: @ 22476f8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r7, r0

	mov     r0, r1
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, #0x0
	str     r0, [sp, #0x8]
	ldr     r1, [sp, #0x8]
	mov     r0, r7
	bl      GetMainBattleData_NrOfPkmnInParty
	cmp     r0, #0x0
	bgt     branch_2247718
	b       branch_2247862

branch_2247718: @ 2247718 :thumb
	ldr     r2, [sp, #0x8]
	mov     r0, r7
	mov     r1, #0x0
	bl      GetMainBattleData_GetAdrOfPkmnInParty
	mov     r1, #0xae
	mov     r2, #0x0
	mov     r4, r0
	bl      GetPkmnData
	lsl     r0, r0, #16
	lsr     r6, r0, #16
	mov     r0, r4
	mov     r1, #0x6
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0xa
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	cmp     r0, #0x35
	bne     branch_22477e6
	cmp     r6, #0x0
	beq     branch_22477e6
	ldr     r0, [pc, #0x10c] @ 0x2247868, (=0x1ee)
	cmp     r6, r0
	beq     branch_22477e6
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	bne     branch_22477e6
	mov     r0, r7
	bl      Function_16_GetRandomNr
	mov     r1, #0xa
	blx     _s32_div_f
	cmp     r1, #0x0
	bne     branch_22477e6
	mov     r0, r7
	bl      Function_16_GetRandomNr
	mov     r1, #100
	blx     _s32_div_f
	mov     r5, r1
	mov     r0, r4
	mov     r1, #0xa1
	mov     r2, #0x0
	bl      GetPkmnData
	.hword  0x1e40 @ sub r0, r0, #0x1
	mov     r1, #0xa
	blx     _u32_div_f
	lsl     r0, r0, #24
	lsr     r3, r0, #24
	cmp     r3, #0xa
	bcc     branch_224779e
	mov     r3, #0x9
branch_224779e: @ 224779e :thumb
	mov     r1, #0x0
	ldr     r2, [pc, #0xc8] @ 0x224786c, (=Unknown_226eaa8)
	str     r1, [sp, #0xc]
branch_22477a4: @ 22477a4 :thumb
	ldrb    r0, [r2, #0x0]
	cmp     r0, r5
	ble     branch_22477be
	ldr     r2, [sp, #0xc]
	ldr     r5, [pc, #0xc0] @ 0x2247870, (=0x226e66c)
	add     r2, r3, r2
	lsl     r2, r2, #1
	mov     r0, r4
	mov     r1, #0x6
	add     r2, r5, r2
	bl      SetPkmnData
	b       branch_22477e6

branch_22477be: @ 22477be :thumb
	cmp     r5, #0x62
	blt     branch_22477dc
	cmp     r5, #0x63
	bgt     branch_22477dc
	mov     r2, #0x63
	sub     r2, r2, r5
	add     r2, r3, r2
	lsl     r3, r2, #1
	ldr     r2, [pc, #0xa4] @ 0x2247874, (=0x226e590)
	mov     r0, r4
	mov     r1, #0x6
	add     r2, r2, r3
	bl      SetPkmnData
	b       branch_22477e6

branch_22477dc: @ 22477dc :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1c52 @ add r2, r2, #0x1
	str     r1, [sp, #0xc]
	cmp     r1, #0x9
	blt     branch_22477a4
branch_22477e6: @ 22477e6 :thumb
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x76
	bne     branch_224784c
	cmp     r6, #0x0
	beq     branch_224784c
	ldr     r0, [pc, #0x74] @ 0x2247868, (=0x1ee)
	cmp     r6, r0
	beq     branch_224784c
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	bne     branch_224784c
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0xa1
	str     r2, [sp, #0xc]
	mov     r5, #0xa
	bl      GetPkmnData
	lsl     r0, r0, #24
	lsr     r1, r0, #24
	cmp     r1, #0xa
	ble     branch_224781e
	ldr     r0, [sp, #0xc]
branch_2247814: @ 2247814 :thumb
	add     r5, #0xa
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r5, r1
	blt     branch_2247814
	str     r0, [sp, #0xc]
branch_224781e: @ 224781e :thumb
	ldr     r0, [sp, #0xc]
	cmp     r0, #0xa
	blt     branch_2247828
	bl      ErrorHandling
branch_2247828: @ 2247828 :thumb
	mov     r0, r7
	bl      Function_16_GetRandomNr
	mov     r1, #0x64
	blx     _s32_div_f
	ldr     r2, [sp, #0xc]
	ldr     r0, [pc, #0x40] @ 0x2247878, (=Unknown_226eab4)
	ldrb    r0, [r0, r2]
	cmp     r1, r0
	bge     branch_224784c
	mov     r0, #0x5e
	str     r0, [sp, #0xc]
	mov     r0, r4
	mov     r1, #0x6
	add     r2, sp, #0xc
	bl      SetPkmnData
branch_224784c: @ 224784c :thumb
	ldr     r0, [sp, #0x8]
	mov     r1, #0x0
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, r7
	bl      GetMainBattleData_NrOfPkmnInParty
	ldr     r1, [sp, #0x8]
	cmp     r1, r0
	bge     branch_2247862
	b       branch_2247718

branch_2247862: @ 2247862 :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2247868

.word 0x1ee @ 0x2247868
.word Unknown_226eaa8 @ 0x224786c
.word Unknown_226e66c @ 0x2247870
.word Unknown_226e590 @ 0x2247874
.word Unknown_226eab4 @ 0x2247878



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmda4: @ 224787c :thumb
	push    {r4,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, #0xb5
	ldr     r1, [r4, #0x64]
	lsl     r0, r0, #2          @ 0x2d4
	add     r3, r4, r0
	mov     r0, #0x1c
	mov     r2, r1
	mul     r2, r0
	ldr     r1, [r3, r2]
	mov     r0, #0x10
	orr     r0, r1
	str     r0, [r3, r2]

	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22478a2


/* Input:
r0: MainBattleData
r1: BattleData
*/
.align 2, 0
.thumb
BeSeq_Cmda5: @ 22478a4 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r6, r0

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r7, r0

	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      GetTargetNrOfPkmn
	mov     r1, r0
	mov     r0, r4
	bl      Function_22588a4
	cmp     r0, #0x1
	bne     branch_22478e0
	mov     r0, r4
	mov     r1, r7
	bl      BeSeq_AddToPointer
branch_22478e0: @ 22478e0 :thumb

	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22478e4


/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmda6: @ 22478e4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r1
	str     r0, [sp, #0x0]

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r6, r0 @ Parameter 1

	mov     r0, r5
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x4] @ Parameter 2

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r4, r0 @ Parameter 3

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r7, r0 @ Parameter 4

	ldr     r0, [sp, #0x0] @ MainBattleData
	ldr     r2, [sp, #0x4] @ Parameter 2
	mov     r1, r5 @ BattleData
	bl      GetTargetNrOfPkmn
	mov     r1, r0

	cmp     r6, #0x0
	bne     branch_2247938

	mov     r0, r5
	bl      Function_16_2258ab8
	cmp     r4, r0
	bne     branch_224794a

	mov     r0, r5
	mov     r1, r7
	bl      BeSeq_AddToPointer
	b       branch_224794a

branch_2247938: @ 2247938 :thumb
	mov     r0, r5
	bl      Function_16_2258ab8
	cmp     r4, r0
	beq     branch_224794a
	mov     r0, r5
	mov     r1, r7
	bl      BeSeq_AddToPointer
branch_224794a: @ 224794a :thumb

	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2247950


/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmda7: @ 2247950 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r7, r0

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      BeSeq_GetVariableAdress
	mov     r6, r0
	mov     r0, r5
	mov     r1, r4
	mov     r2, r7
	bl      GetTargetNrOfPkmn
	mov     r1, r0
	mov     r0, r4
	bl      Function_2258874
	mov     r1, r0
	mov     r0, r4
	mov     r2, #0x1
	bl      Function_16_225b0fc
	str     r0, [r6, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224799a


.align 2, 0
.thumb
BeSeq_Cmda8: @ 224799c :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r7, r0 @ Parameter 1

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r2, r0 @ Parameter 2

	mov     r0, r5
	mov     r1, r4
	bl      BeSeq_GetVariableAdress
	mov     r6, r0

	mov     r0, r5
	mov     r1, r4
	mov     r2, r7
	bl      GetTargetNrOfPkmn
	mov     r1, r0
	mov     r0, r4
	bl      Function_2258874
	mov     r1, r0
	mov     r0, r4
	mov     r2, #0x2
	bl      Function_16_225b0fc
	str     r0, [r6, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22479e6


/* Input:
r0: MainBattleData
r1: BattleData
*/
.align 2, 0
.thumb
BeSeq_Cmda9: @ 22479e8 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r4, r0

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r6, r0

	ldr     r1, [r5, #0x64]
	mov     r0, r5
	bl      GetAbilityOfPkmnConsideringMultitypeWeatherLevitate
	cmp     r0, #0x79
	bne     branch_2247a16
	mov     r0, r5
	mov     r1, r6
	bl      BeSeq_AddToPointer
	mov     r0, #0x0
	pop     {r4-r6,pc}

branch_2247a16: @ 2247a16 :thumb
	mov     r0, r4
	bl      GetBattleEnvironment
	cmp     r0, #0xc
	ble     branch_2247a22
	mov     r0, #0xc
branch_2247a22: @ 2247a22 :thumb

	ldr     r1, [pc, #0x54] @ 0x2247a78, (=Unknown_226eac0)
	mov     r2, #PKMNBATTLEDATA_TYPE1
	ldrb    r4, [r1, r0]
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	mov     r3, #0x0
	bl      ReadPkmnBattleData1
	cmp     r4, r0
	beq     branch_2247a6a
	ldr     r1, [r5, #0x64]
	mov     r0, r5
	mov     r2, #PKMNBATTLEDATA_TYPE2
	mov     r3, #0x0
	bl      ReadPkmnBattleData1
	cmp     r4, r0
	beq     branch_2247a6a
	ldr     r1, [r5, #0x64]
	lsl     r0, r4, #24
	mov     r3, r1
	mov     r2, #0xc0
	mul     r3, r2
	ldr     r1, [pc, #0x28] @ 0x2247a7c, (=BattleData_Type1)
	lsr     r0, r0, #24
	add     r3, r5, r3
	strb    r0, [r3, r1]
	ldr     r3, [r5, #0x64]
	.hword  0x1c49 @ add r1, r1, #0x1
	mov     r6, r3
	mul     r6, r2
	add     r3, r5, r6
	strb    r0, [r3, r1]
	add     r2, #0x70
	str     r4, [r5, r2]
	b       branch_2247a72

branch_2247a6a: @ 2247a6a :thumb
	mov     r0, r5
	mov     r1, r6
	bl      BeSeq_AddToPointer
branch_2247a72: @ 2247a72 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2247a76

.align 2
.word Unknown_226eac0 @ 0x2247a78
.word BattleData_Type1 @ 0x2247a7c



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmdaa: @ 2247a80 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      GetBattleEnvironment
	cmp     r0, #0xc
	ble     branch_2247a9a
	mov     r0, #0xc
branch_2247a9a: @ 2247a9a :thumb

	lsl     r1, r0, #1
	ldr     r0, [pc, #0xc] @ 0x2247aac, (=0x226e652)
	ldrh    r1, [r0, r1]
	mov     r0, #0x49
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2247aaa

.align 2
.word Unknown_226e652 @ 0x2247aac



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmdab: @ 2247ab0 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      GetBattleEnvironment
	cmp     r0, #0xc
	ble     branch_2247aca
	mov     r0, #0xc
branch_2247aca: @ 2247aca :thumb

	lsl     r1, r0, #2
	ldr     r0, [pc, #0x8] @ 0x2247ad8, (=0x226e690)
	ldr     r1, [r0, r1]
	ldr     r0, [pc, #0x8] @ 0x2247adc, (=0x2174)
	str     r1, [r4, r0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2247ad8

.word Unknown_226e690 @ 0x2247ad8
.word 0x2174 @ 0x2247adc



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmdac: @ 2247ae0 :thumb
	push    {r3-r5,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r5, r0

	ldr     r1, [r4, #0x64]
	mov     r0, r4
	bl      Function_2258b18
	cmp     r0, #0x0
	beq     branch_2247b12
	ldr     r1, [pc, #0x1c] @ 0x2247b20, (=BattleData_2154)
	str     r0, [r4, r1]
	ldr     r1, [r4, #0x64]
	mov     r0, r4
	bl      Function_16_2258b2c
	ldr     r1, [pc, #0x14] @ 0x2247b24, (=BattleData_2160)
	str     r0, [r4, r1]
	b       branch_2247b1a

branch_2247b12: @ 2247b12 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      BeSeq_AddToPointer
branch_2247b1a: @ 2247b1a :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2247b1e

.align 2
.word BattleData_2154 @ 0x2247b20
.word BattleData_2160 @ 0x2247b24



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmdad: @ 2247b28 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r7, r0

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r6, r0

	ldr     r2, [r4, #0x6c]
	mov     r0, #0xc0
	mul     r0, r2
	add     r1, r4, r0
	ldr     r0, [pc, #0x50] @ 0x2247ba0, (=BattleData_Item)
	ldrh    r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2247b6e

	ldr     r1, [r4, #0x64]
	mov     r0, r4
	mov     r3, #0x3c
	bl      Function_2255ab4_CheckAbility
	cmp     r0, #0x1
	bne     branch_2247b6e

	mov     r0, r4
	mov     r1, r7
	bl      BeSeq_AddToPointer
	b       branch_2247b9c

branch_2247b6e: @ 2247b6e :thumb
	ldr     r2, [r4, #0x6c]
	mov     r0, #0xc0
	mul     r0, r2
	add     r3, r4, r0
	ldr     r0, [pc, #0x28] @ 0x2247ba0, (=BattleData_Item)
	ldrh    r1, [r3, r0]
	cmp     r1, #0x0
	beq     branch_2247b88

	add     r0, #0x14
	ldr     r0, [r3, r0]
	lsl     r0, r0, #3
	lsr     r0, r0, #31
	bne     branch_2247b94

branch_2247b88: @ 2247b88 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_2258cb4
	cmp     r0, #0x1
	beq     branch_2247b9c

branch_2247b94: @ 2247b94 :thumb
	mov     r0, r4
	mov     r1, r6
	bl      BeSeq_AddToPointer
branch_2247b9c: @ 2247b9c :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2247ba0

.word BattleData_Item @ 0x2247ba0



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmdae: @ 2247ba4 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r6, r0

	ldr     r2, [r4, #0x64]
	mov     r0, r5
	mov     r1, r4
	bl      Function_2259204
	cmp     r0, #0x1
	beq     branch_2247bd0
	mov     r0, r4
	mov     r1, r6
	bl      BeSeq_AddToPointer
branch_2247bd0: @ 2247bd0 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2247bd4


/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmdaf: @ 2247bd4 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x0]

	mov     r2, #0x0
	str     r2, [sp, #0x4]

	mov     r0, r5
	mov     r1, r4
	mov     r3, r2
	str     r2, [sp, #0x8]
	bl      Function_2265b2c

	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2247c02


/* Input:
r0: MainBattleData
r1: BattleData
*/
.align 2, 0
.thumb
BeSeq_Cmdb0: @ 2247c04 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r6, r0

	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2259ab4

	mov     r4, r0
	beq     branch_2247c4c

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r7, r0

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r1, r0

	cmp     r4, #0xff
	bne     branch_2247c3a
	mov     r0, r5
	bl      BeSeq_AddToPointer
	b       branch_2247c42

branch_2247c3a: @ 2247c3a :thumb
	mov     r0, r5
	mov     r1, r7
	bl      BeSeq_AddToPointer
branch_2247c42: @ 2247c42 :thumb
	mov     r0, r6
	mov     r1, #0x0
	mov     r2, r4
	bl      Function_223f500
branch_2247c4c: @ 2247c4c :thumb
	ldr     r1, [pc, #0x10] @ 0x2247c60, (=BattleData_EndOfScript)
	mov     r0, #BattleData_EndOfScript_1
	ldr     r2, [r5, r1]
	bic     r2, r0
	mov     r0, #BattleData_EndOfScript_1
	orr     r0, r2
	str     r0, [r5, r1]

	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2247c5e

.align 2
.word BattleData_EndOfScript @ 0x2247c60



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmdb1: @ 2247c64 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r5, r0

	bl      GetMainBattleData_NrOfBattleTextPtrs

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x6
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r3, r2
	bl      Function_2265a8c
	mov     r0, #0x0
	str     r0, [r4, #0x78]
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2247c92


/* Input:
r0: MainBattleData
r1: BattleData
*/
.align 2, 0
.thumb
BeSeq_Cmdb2: @ 2247c94 :thumb
	push    {r3-r5,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2259ab4

	mov     r5, r0
	beq     branch_2247cc6

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r1, r0

	cmp     r5, #0xff
	bne     branch_2247cc0
	mov     r0, r4
	bl      BeSeq_AddToPointer
	b       branch_2247cc6

branch_2247cc0: @ 2247cc0 :thumb
	ldr     r0, [pc, #0x14] @ 0x2247cd8, (=0x21a0)
	sub     r1, r5, #0x1
	strb    r1, [r4, r0]
branch_2247cc6: @ 2247cc6 :thumb
	ldr     r1, [pc, #0x14] @ 0x2247cdc, (=BattleData_EndOfScript)
	mov     r0, #BattleData_EndOfScript_1
	ldr     r2, [r4, r1] @ BattleData_EndOfScript
	bic     r2, r0
	mov     r0, #BattleData_EndOfScript_1
	orr     r0, r2
	str     r0, [r4, r1] @ BattleData_EndOfScript

	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2247cd8

.word 0x21a0 @ 0x2247cd8
.word BattleData_EndOfScript @ 0x2247cdc



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmdb3: @ 2247ce0 :thumb
	push    {r4,lr}
	mov     r4, r0

	mov     r0, r1
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      LoadMainBattleData_2c
	mov     r1, #0x4
	tst     r0, r1
	beq     branch_2247cfe
	mov     r0, r4
	bl      Function_2266a38
branch_2247cfe: @ 2247cfe :thumb

	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2247d02


/* Input:
r0: MainBattleData
r1: BattleData
*/
thumb_func_start BeSeq_Cmdb4
BeSeq_Cmdb4: @ 2247d04 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r6, r0

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x0]

	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	bl      GetTargetNrOfPkmn
	mov     r4, r0
	mov     r0, r6
	mov     r1, r4
	bl      Function_16_223e208
	mov     r6, r0
	mov     r0, r5
	mov     r1, r4
	mov     r2, #PKMNBATTLEDATA_TYPE1
	mov     r3, #0x0
	bl      ReadPkmnBattleData1
	mov     r7, r0
	mov     r0, r5
	mov     r1, r4
	mov     r2, #PKMNBATTLEDATA_TYPE2
	mov     r3, #0x0
	bl      ReadPkmnBattleData1
	mov     r2, r0
	lsl     r0, r6, #2
	add     r1, r5, r0
	mov     r0, #0x6f
	lsl     r0, r0, #2
	ldr     r1, [r1, r0]
	mov     r0, #0x80
	tst     r0, r1
	beq     branch_2247df8

	mov     r0, #0xc0
	mov     r6, r4
	mul     r6, r0
	ldr     r0, [pc, #0x98] @ 0x2247e04, (=BattleData_CurHP)
	add     r1, r5, r6
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2247df8

	lsl     r1, r7, #24
	lsl     r2, r2, #24
	mov     r0, #0x5
	lsr     r1, r1, #24
	lsr     r2, r2, #24
	bl      CalcMoveEffectiveness
	cmp     r0, #20
	bgt     branch_2247d96
	bge     branch_2247dbe

	cmp     r0, #0
	bgt     branch_2247d90
	beq     branch_2247dce
	b       branch_2247dda

branch_2247d90: @ 2247d90 :thumb
	cmp     r0, #10
	beq     branch_2247dc6
	b       branch_2247dda

branch_2247d96: @ 2247d96 :thumb
	cmp     r0, #80
	bgt     branch_2247da2
	bge     branch_2247dae

	cmp     r0, #40
	beq     branch_2247db6
	b       branch_2247dda

branch_2247da2: @ 2247da2 :thumb
	cmp     r0, #160
	bne     branch_2247dda

	ldr     r0, [pc, #0x60] @ 0x2247e08, (=BattleData_StatusEffectDamage)
	mov     r1, #0x2
	str     r1, [r5, r0]
	b       branch_2247dde

branch_2247dae: @ 2247dae :thumb
	ldr     r0, [pc, #0x58] @ 0x2247e08, (=BattleData_StatusEffectDamage)
	mov     r1, #0x4
	str     r1, [r5, r0]
	b       branch_2247dde

branch_2247db6: @ 2247db6 :thumb
	ldr     r0, [pc, #0x50] @ 0x2247e08, (=BattleData_StatusEffectDamage)
	mov     r1, #0x8
	str     r1, [r5, r0]
	b       branch_2247dde

branch_2247dbe: @ 2247dbe :thumb
	ldr     r0, [pc, #0x48] @ 0x2247e08, (=BattleData_StatusEffectDamage)
	mov     r1, #0x10
	str     r1, [r5, r0]
	b       branch_2247dde

branch_2247dc6: @ 2247dc6 :thumb
	ldr     r0, [pc, #0x40] @ 0x2247e08, (=BattleData_StatusEffectDamage)
	mov     r1, #0x20
	str     r1, [r5, r0]
	b       branch_2247dde

branch_2247dce: @ 2247dce :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	bl      BeSeq_AddToPointer
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_2247dda: @ 2247dda :thumb
	bl      ErrorHandling
branch_2247dde: @ 2247dde :thumb
	ldr     r0, [pc, #0x2c] @ 0x2247e0c, (=BattleData_MaxHP)
	add     r1, r5, r6
	ldr     r1, [r1, r0]
	mov     r0, #0x0
	mvn     r0, r0
	mul     r0, r1
	ldr     r1, [pc, #0x1c] @ 0x2247e08, (=BattleData_StatusEffectDamage)
	ldr     r1, [r5, r1]
	bl      Function_16_22563f8_Division
	ldr     r1, [pc, #0x14] @ 0x2247e08, (=BattleData_StatusEffectDamage)
	str     r0, [r5, r1]
	b       branch_2247e00

branch_2247df8: @ 2247df8 :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	bl      BeSeq_AddToPointer
branch_2247e00: @ 2247e00 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2247e04

.word BattleData_CurHP @ 0x2247e04
.word BattleData_StatusEffectDamage @ 0x2247e08
.word BattleData_MaxHP @ 0x2247e0c
thumb_func_end BeSeq_Cmdb4



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmdb5: @ 2247e10 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r6, r0

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r7, r0

	ldr     r1, [r5, #0x64]
	mov     r0, r5
	bl      GetAbilityOfPkmnConsideringMultitypeWeatherLevitate
	cmp     r0, #0x20
	ldr     r0, [pc, #0x58] @ 0x2247e8c, (=BattleData_WazaSeqFileNr)
	bne     branch_2247e44
	ldr     r0, [r5, r0]
	lsl     r0, r0, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0x54] @ 0x2247e90, (=0x3e5)
	ldrb    r0, [r1, r0]
	lsl     r0, r0, #17
	lsr     r4, r0, #16
	b       branch_2247e4e

branch_2247e44: @ 2247e44 :thumb
	ldr     r0, [r5, r0]
	lsl     r0, r0, #4
	add     r1, r5, r0
	ldr     r0, [pc, #0x44] @ 0x2247e90, (=0x3e5)
	ldrb    r4, [r1, r0]
branch_2247e4e: @ 2247e4e :thumb
	cmp     r4, #0x0
	bne     branch_2247e56
	bl      ErrorHandling
branch_2247e56: @ 2247e56 :thumb
	mov     r0, r6
	bl      Function_16_GetRandomNr
	mov     r1, #100
	blx     _s32_div_f
	cmp     r1, r4
	bge     branch_2247e7e
	mov     r0, r5
	add     r0, #0x94
	ldr     r1, [r0, #0x0]
	mov     r0, #0xc0
	mul     r0, r1
	add     r1, r5, r0
	ldr     r0, [pc, #0x20] @ 0x2247e94, (=BattleData_CurHP)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2247e7e
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_2247e7e: @ 2247e7e :thumb
	mov     r0, r5
	mov     r1, r7
	bl      BeSeq_AddToPointer
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2247e8a

.align 2
.word BattleData_WazaSeqFileNr @ 0x2247e8c
.word 0x3e5 @ 0x2247e90
.word BattleData_CurHP @ 0x2247e94



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmdb6: @ 2247e98 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r6, r0

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r7, r0

	ldr     r0, [r5, #0x64]
	mov     r4, #0xc0
	mov     r1, r0
	mul     r1, r4
	mov     r0, #0xb5
	add     r3, r5, r1
	lsl     r0, r0, #6              @ 0x2d40
	mov     r1, r4
	ldrh    r2, [r3, r0]
	add     r1, #0xf9
	cmp     r2, r1
	bne     branch_2247f36
	ldr     r1, [r5, #0x6c]
	mov     r2, r1
	mul     r2, r4
	mov     r1, r0
	add     r2, r5, r2
	add     r1, #0x4c
	ldr     r1, [r2, r1]
	cmp     r1, #0x0
	beq     branch_2247f36
	add     r0, #0x70
	ldr     r1, [r3, r0]
	mov     r0, #0x2
	lsl     r0, r0, #20
	tst     r0, r1
	bne     branch_2247f36
	mov     r0, r6
	bl      LoadMainBattleData_240c
	mov     r1, #0x10
	tst     r0, r1
	bne     branch_2247efe
	ldr     r1, [r5, #0x64]
	mov     r0, r6
	bl      Function_223ee30
	bl      Function_2006494
	b       branch_2247f06

branch_2247efe: @ 2247efe :thumb
	ldr     r1, [r5, #0x64]
	mov     r0, r6
	bl      Function_223f810
branch_2247f06: @ 2247f06 :thumb
	cmp     r0, #0x0
	beq     branch_2247f12
	cmp     r0, #0x1
	beq     branch_2247f16
	cmp     r0, #0x2
	beq     branch_2247f1a
branch_2247f12: @ 2247f12 :thumb
	mov     r4, #0x0
	b       branch_2247f1c

branch_2247f16: @ 2247f16 :thumb
	mov     r4, #0xa
	b       branch_2247f1c

branch_2247f1a: @ 2247f1a :thumb
	mov     r4, #0x1e
branch_2247f1c: @ 2247f1c :thumb
	mov     r0, r6
	bl      Function_16_GetRandomNr
	mov     r1, #100
	blx     _s32_div_f
	cmp     r1, r4
	ble     branch_2247f3e
	mov     r0, r5
	mov     r1, r7
	bl      BeSeq_AddToPointer
	b       branch_2247f3e

branch_2247f36: @ 2247f36 :thumb
	mov     r0, r5
	mov     r1, r7
	bl      BeSeq_AddToPointer
branch_2247f3e: @ 2247f3e :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2247f42


/* Input:
r0: MainBattleData
r1: BattleData
*/
thumb_func_start BeSeq_LoadMoveData
BeSeq_LoadMoveData: @ 2247f44 :thumb
	push    {r4,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r1, r0
	ldr     r0, =BattleData_3de
	add     r2, r4, r0
	ldr     r0, =BattleData_WazaSeqFileNr
	ldr     r0, [r4, r0]
	lsl     r0, r0, #4
	add     r0, r2, r0
	bl      ReadMoveData
	mov     r1, #0x4d
	lsl     r1, r1, #2 @ 0x134 BattleData_134
	str     r0, [r4, r1]

	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2247f72

.align 2
.pool
thumb_func_end BeSeq_LoadMoveData



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmdb8: @ 2247f7c :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r6, r0

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r7, r0

	mov     r0, r4
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x0]

	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      GetTargetNrOfPkmn
	mov     r1, r0
	ldr     r3, [sp, #0x0]
	mov     r0, r5
	mov     r2, r7
	bl      Function_22664f8
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2247fbc


/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmdb9: @ 2247fbc :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      GetTargetNrOfPkmn
	mov     r1, r0
	mov     r0, r5
	bl      Function_226651c
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2247fe6


/* Input:
r0: MainBattleData
r1: BattleData
*/
.align 2, 0
.thumb
BeSeq_Cmdba: @ 2247fe8 :thumb
	push    {r4,lr}
	mov     r4, r0

	mov     r0, r1
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	mov     r1, #0x0
	bl      Function_22665ac

	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2248000


/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmdbb: @ 2248000 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      GetTargetNrOfPkmn
	mov     r1, r0

	mov     r0, #BattleData_UsedItem/4
	lsl     r0, r0, #2
	ldr     r0, [r4, r0] @ BattleData_UsedItem
	ldr     r2, =BattleData_219c
	str     r0, [sp, #0x0]

	add     r3, r4, r1
	ldrb    r2, [r3, r2]
	mov     r0, r5
	mov     r3, #0x0
	bl      Function_223e30c

	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224803a

.align 2
.pool



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmdbc: @ 2248040 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r6, r0

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r7, r0

	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      GetTargetNrOfPkmn
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_2255de8
	cmp     r0, #0x0
	beq     branch_224807e
	mov     r0, r4
	mov     r1, r7
	bl      BeSeq_AddToPointer
branch_224807e: @ 224807e :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2248082


/* Input:
r0: MainBattleData
r1: BattleData
*/
.align 2, 0
.thumb
BeSeq_Cmdbd: @ 2248084 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      GetTargetNrOfPkmn
	mov     r1, r0
	mov     r0, r5
	bl      Function_22665e4
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22480ae


/* Input:
r0: MainBattleData
r1: BattleData
*/
.align 2, 0
.thumb
BeSeq_Cmdbe: @ 22480b0 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      GetTargetNrOfPkmn
	mov     r1, r0
	mov     r0, r5
	bl      Function_226660c
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22480da


/* Input:
r0: MainBattleData
r1: BattleData
*/
.align 2, 0
.thumb
BeSeq_Cmdbf: @ 22480dc :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      GetTargetNrOfPkmn
	mov     r1, r0
	mov     r0, r5
	bl      Function_2266634
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2248106


/* Input:
r0: MainBattleData
r1: BattleData
*/
.align 2, 0
.thumb
BeSeq_Cmdc0: @ 2248108 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      GetTargetNrOfPkmn
	mov     r1, r0
	mov     r0, r5
	bl      Function_226665c
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2248132


/* Input:
r0: MainBattleData
r1: BattleData
*/
.align 2, 0
.thumb
BeSeq_Cmdc1: @ 2248134 :thumb
	push    {r4,lr}
	mov     r4, r0

	mov     r0, r1
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      Function_2266684

	mov     r0, #0x0
	pop     {r4,pc}
@ 0x224814a


/* Input:
r0: MainBattleData
r1: BattleData
*/
.align 2, 0
.thumb
BeSeq_Cmdc2: @ 224814c :thumb
	push    {r4,lr}
	mov     r4, r0

	mov     r0, r1
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      Function_22666a0

	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2248162


/* Input:
r0: MainBattleData
r1: BattleData
*/
.align 2, 0
.thumb
BeSeq_Cmdc3: @ 2248164 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r6, r0

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r7, r0

	mov     r0, r4
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x0]

	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      GetTargetNrOfPkmn
	mov     r1, r0
	ldr     r3, [sp, #0x0]
	mov     r0, r5
	mov     r2, r7
	bl      Function_22666bc

	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22481a4


/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmdc4: @ 22481a4 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      GetTargetNrOfPkmn
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_226673c
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22481d0


/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmdc5: @ 22481d0 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r2, #0x4e
	lsl     r2, r2, #2
	mov     r6, r0
	mov     r0, r5
	mov     r1, r4
	add     r2, r4, r2
	bl      Function_225708c
	cmp     r0, #0x0
	bne     branch_2248200
	mov     r0, r4
	mov     r1, r6
	bl      BeSeq_AddToPointer
branch_2248200: @ 2248200 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2248204


/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmdc6: @ 2248204 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r4, r0

	bl      GetMainBattleData_NrOfBattleTextPtrs
	mov     r6, r0

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer
	mov     r0, r5

	bl      BeSeq_LoadWord
	mov     r2, r0
	cmp     r2, #0x3
	beq     branch_224822a
	cmp     r2, #0x4
	beq     branch_2248252
	b       branch_224827a

branch_224822a: @ 224822a :thumb
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_224828a
	mov     r7, #0x1
branch_2248232: @ 2248232 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      GetMainBattleData_BattleText
	ldr     r1, [pc, #0x54] @ 0x2248290, (=0x195)
	ldrb    r0, [r0, r1]
	tst     r0, r7
	bne     branch_224824a
	mov     r0, r4
	mov     r1, r5
	bl      Function_22667e8
branch_224824a: @ 224824a :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r6
	blt     branch_2248232
	b       branch_224828a

branch_2248252: @ 2248252 :thumb
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_224828a
	mov     r7, #0x1
branch_224825a: @ 224825a :thumb
	mov     r0, r4
	mov     r1, r5
	bl      GetMainBattleData_BattleText
	ldr     r1, [pc, #0x2c] @ 0x2248290, (=0x195)
	ldrb    r0, [r0, r1]
	tst     r0, r7
	beq     branch_2248272
	mov     r0, r4
	mov     r1, r5
	bl      Function_22667e8
branch_2248272: @ 2248272 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r6
	blt     branch_224825a
	b       branch_224828a

branch_224827a: @ 224827a :thumb
	mov     r0, r4
	mov     r1, r5
	bl      GetTargetNrOfPkmn
	mov     r1, r0
	mov     r0, r4
	bl      Function_22667e8
branch_224828a: @ 224828a :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224828e

.align 2
.word 0x195 @ 0x2248290



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmdc7: @ 2248294 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r4, r0

	bl      GetMainBattleData_NrOfBattleTextPtrs
	mov     r6, r0

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r2, r0
	cmp     r2, #0x3
	beq     branch_22482ba
	cmp     r2, #0x4
	beq     branch_22482e2
	b       branch_224830a

branch_22482ba: @ 22482ba :thumb
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_224831a
	mov     r7, #0x1
branch_22482c2: @ 22482c2 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      GetMainBattleData_BattleText
	ldr     r1, [pc, #0x54] @ 0x2248320, (=0x195)
	ldrb    r0, [r0, r1]
	tst     r0, r7
	bne     branch_22482da
	mov     r0, r4
	mov     r1, r5
	bl      Function_2266804
branch_22482da: @ 22482da :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r6
	blt     branch_22482c2
	b       branch_224831a

branch_22482e2: @ 22482e2 :thumb
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_224831a
	mov     r7, #0x1
branch_22482ea: @ 22482ea :thumb
	mov     r0, r4
	mov     r1, r5
	bl      GetMainBattleData_BattleText
	ldr     r1, [pc, #0x2c] @ 0x2248320, (=0x195)
	ldrb    r0, [r0, r1]
	tst     r0, r7
	beq     branch_2248302
	mov     r0, r4
	mov     r1, r5
	bl      Function_2266804
branch_2248302: @ 2248302 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r6
	blt     branch_22482ea
	b       branch_224831a

branch_224830a: @ 224830a :thumb
	mov     r0, r4
	mov     r1, r5
	bl      GetTargetNrOfPkmn
	mov     r1, r0
	mov     r0, r4
	bl      Function_2266804
branch_224831a: @ 224831a :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224831e

.align 2
.word 0x195 @ 0x2248320



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmdc8: @ 2248324 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]

	mov     r0, r1
	mov     r1, #0x1
	mov     r5, #0x0
	bl      BeSeq_AddToPointer

	ldr     r0, [sp, #0x4]
	bl      BeSeq_LoadWord
	mov     r4, r0

	ldr     r0, [sp, #0x4]
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x14]

	ldr     r0, [sp, #0x0]
	bl      LoadMainBattleData_2c
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	mov     r2, r4
	bl      GetTargetNrOfPkmn
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0xc]
	mov     r1, #0x8
	tst     r0, r1
	bne     branch_2248376
	ldr     r0, [sp, #0xc]
	mov     r1, #0x10
	tst     r0, r1
	beq     branch_224845e
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x10]
	bl      Function_16_223e208
	cmp     r0, #0x0
	beq     branch_224845e
branch_2248376: @ 2248376 :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x10]
	bl      GetMainBattleData_PkmnPartyAdr
	mov     r7, r0
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x10]
	bl      Function_16_223e258
	mov     r1, r0
	ldr     r0, [sp, #0x0]
	bl      GetMainBattleData_PkmnPartyAdr
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x10]
	bl      GetMainBattleData_BattleText
	mov     r0, r7
	mov     r4, #0x0
	bl      GetNrOfPkmnInParty
	cmp     r0, #0x0
	ble     branch_22483e4
branch_22483a6: @ 22483a6 :thumb
	mov     r0, r7
	mov     r1, r4
	bl      GetAdrOfPkmnInParty
	mov     r1, #0xae
	mov     r2, #0x0
	mov     r6, r0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_22483d8
	mov     r0, r6
	mov     r1, #0xae
	mov     r2, #0x0
	bl      GetPkmnData
	ldr     r1, [pc, #0x104] @ 0x22484cc, (=0x1ee)
	cmp     r0, r1
	beq     branch_22483d8
	mov     r0, r6
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      GetPkmnData
	add     r5, r5, r0
branch_22483d8: @ 22483d8 :thumb
	mov     r0, r7
	.hword  0x1c64 @ add r4, r4, #0x1
	bl      GetNrOfPkmnInParty
	cmp     r4, r0
	blt     branch_22483a6
branch_22483e4: @ 22483e4 :thumb
	ldr     r0, [sp, #0xc]
	sub     r0, #0x4a
	str     r0, [sp, #0xc]
	cmp     r0, #0x1
	bhi     branch_2248406
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x10]
	bl      Function_16_223e208
	cmp     r0, #0x0
	bne     branch_2248406
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x10]
	bl      Function_16_223e1f8
	cmp     r0, #0x2
	beq     branch_2248450
branch_2248406: @ 2248406 :thumb
	ldr     r0, [sp, #0x8]
	mov     r4, #0x0
	bl      GetNrOfPkmnInParty
	cmp     r0, #0x0
	ble     branch_2248450
	ldr     r7, [pc, #0xb8] @ 0x22484cc, (=0x1ee)
branch_2248414: @ 2248414 :thumb
	ldr     r0, [sp, #0x8]
	mov     r1, r4
	bl      GetAdrOfPkmnInParty
	mov     r1, #0xae
	mov     r2, #0x0
	mov     r6, r0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_2248444
	mov     r0, r6
	mov     r1, #0xae
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, r7
	beq     branch_2248444

	mov     r0, r6
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      GetPkmnData
	add     r5, r5, r0
branch_2248444: @ 2248444 :thumb
	ldr     r0, [sp, #0x8]
	.hword  0x1c64 @ add r4, r4, #0x1
	bl      GetNrOfPkmnInParty
	cmp     r4, r0
	blt     branch_2248414

branch_2248450: @ 2248450 :thumb
	cmp     r5, #0x0
	bne     branch_22484c6

	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x14]
	bl      BeSeq_AddToPointer
	b       branch_22484c6

branch_224845e: @ 224845e :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x10]
	bl      GetMainBattleData_PkmnPartyAdr
	mov     r7, r0
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x10]
	bl      GetMainBattleData_BattleText
	mov     r0, r7
	mov     r4, #0x0
	bl      GetNrOfPkmnInParty
	cmp     r0, #0x0
	ble     branch_22484ba
branch_224847c: @ 224847c :thumb
	mov     r0, r7
	mov     r1, r4
	bl      GetAdrOfPkmnInParty
	mov     r1, #0xae
	mov     r2, #0x0
	mov     r6, r0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_22484ae
	mov     r0, r6
	mov     r1, #0xae
	mov     r2, #0x0
	bl      GetPkmnData
	ldr     r1, [pc, #0x2c] @ 0x22484cc, (=0x1ee)
	cmp     r0, r1
	beq     branch_22484ae
	mov     r0, r6
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      GetPkmnData
	add     r5, r5, r0
branch_22484ae: @ 22484ae :thumb
	mov     r0, r7
	.hword  0x1c64 @ add r4, r4, #0x1
	bl      GetNrOfPkmnInParty
	cmp     r4, r0
	blt     branch_224847c
branch_22484ba: @ 22484ba :thumb
	cmp     r5, #0x0
	bne     branch_22484c6
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x14]
	bl      BeSeq_AddToPointer
branch_22484c6: @ 22484c6 :thumb
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x22484cc

.word 0x1ee @ 0x22484cc



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmdc9: @ 22484d0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r6, r1
	str     r0, [sp, #0x0]

	mov     r0, r6
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r6
	bl      BeSeq_LoadWord
	mov     r12, r0

	ldr     r1, [r6, #0x6c]
	mov     r0, #PkmnBattleData_Size
	mul     r0, r1
	add     r0, r6, r0
	add     r5, r0, #0x1
	ldr     r7, [pc, #0x54] @ 0x2248548, (=BattleData_StatLevel)
	mov     r4, #0x0
	mov     r3, #0x1
	add     r0, sp, #0x4
branch_22484fa: @ 22484fa :thumb
	ldsb    r1, [r5, r7]
	cmp     r1, #12
	bge     branch_2248508
	lsl     r1, r4, #2
	sub     r2, r3, #0x1
	.hword  0x1c64 @ add r4, r4, #0x1
	str     r2, [r0, r1]
branch_2248508: @ 2248508 :thumb

	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r3, #0x8
	blt     branch_22484fa

	cmp     r4, #0x0
	beq     branch_2248538

	ldr     r0, [sp, #0x0]
	bl      Function_16_GetRandomNr
	mov     r1, r4
	blx     _s32_div_f
	lsl     r1, r1, #2
	add     r0, sp, #0x4
	ldr     r0, [r0, r1]
	ldr     r1, [pc, #0x24] @ 0x224854c, (=BattleData_MoveEffect_SubSeq)
	add     r0, #0x27
	str     r0, [r6, r1] @ BattleData_MoveEffect_SubSeq

	mov     r0, #0x2
	ldr     r2, [r6, r1] @ BattleData_MoveEffect_SubSeq
	lsl     r0, r0, #30
	orr     r0, r2
	str     r0, [r6, r1] @ BattleData_MoveEffect_SubSeq
	b       branch_2248540

branch_2248538: @ 2248538 :thumb
	mov     r0, r6
	mov     r1, r12
	bl      BeSeq_AddToPointer

branch_2248540: @ 2248540 :thumb
	mov     r0, #0x0
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x2248546

.align 2
.word BattleData_StatLevel @ 0x2248548
.word BattleData_MoveEffect_SubSeq @ 0x224854c



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmdca: @ 2248550 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r7, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r2, r0
	mov     r0, r7
	mov     r1, r4
	bl      GetTargetNrOfPkmn
	mov     r2, r0
	ldr     r0, [pc, #0x20] @ 0x2248594, (=BattleData_Item)
	mov     r5, r2
	add     r6, r4, r0
	mov     r0, #0xc0
	mul     r5, r0
	lsl     r0, r2, #1
	add     r1, r4, r0
	ldrh    r3, [r6, r5]
	ldr     r0, [pc, #0x14] @ 0x2248598, (=BattleData_3124)
	strh    r3, [r1, r0]
	mov     r0, #0x0
	strh    r0, [r6, r5]
	mov     r0, r7
	mov     r1, r4
	bl      Function_2253ec0
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2248594

.word BattleData_Item @ 0x2248594
.word BattleData_3124 @ 0x2248598



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmdcb: @ 224859c :thumb
	push    {r4,lr}
	mov     r4, r1

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r1, r0
	ldr     r0, [r4, #0x64]
	ldr     r2, [pc, #0x28] @ 0x22485dc, (=BattleData_3124)
	lsl     r0, r0, #1
	add     r0, r4, r0
	ldrh    r3, [r0, r2]
	cmp     r3, #0x0
	beq     branch_22485d0
	mov     r0, #0x4a
	lsl     r0, r0, #2
	str     r3, [r4, r0]
	ldr     r0, [r4, #0x64]
	mov     r1, #0x0
	lsl     r0, r0, #1
	add     r0, r4, r0
	strh    r1, [r0, r2]
	b       branch_22485d6

branch_22485d0: @ 22485d0 :thumb
	mov     r0, r4
	bl      BeSeq_AddToPointer
branch_22485d6: @ 22485d6 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22485da

.align 2
.word BattleData_3124 @ 0x22485dc



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmdcc: @ 22485e0 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r2, #0x4e
	lsl     r2, r2, #2
	mov     r6, r0
	mov     r0, r5
	mov     r1, r4
	add     r2, r4, r2
	bl      Function_22588bc
	cmp     r0, #0x0
	bne     branch_2248610
	mov     r0, r4
	mov     r1, r6
	bl      BeSeq_AddToPointer
branch_2248610: @ 2248610 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2248614


/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmdcd: @ 2248614 :thumb
	push    {r4,lr}
	mov     r4, r0

	mov     r0, r1
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      Function_2266820

	mov     r0, #0x0
	pop     {r4,pc}
@ 0x224862a


/* Input:
r0: MainBattleData
r1: BattleData
*/
.align 2, 0
.thumb
BeSeq_Cmdce: @ 224862c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	mov     r1, r4
	bl      Function_226683c

	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2248646


/* Input:
r0: MainBattleData
r1: BattleData
*/
.align 2, 0
.thumb
BeSeq_Cmdcf: @ 2248648 :thumb
	push    {r4,lr}
	mov     r4, r0

	mov     r0, r1
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      Function_22668d0

	mov     r0, #0x0
	pop     {r4,pc}
@ 0x224865e


/* Input:
r0: MainBattleData
r1: BattleData
*/
.align 2, 0
.thumb
BeSeq_Cmdd0: @ 2248660 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r1
	str     r0, [sp, #0x0]

	mov     r0, r5
	mov     r1, #0x1
	mov     r4, #0x0
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r2, r0
	ldr     r0, [sp, #0x0]
	mov     r1, r5
	bl      GetTargetNrOfPkmn
	mov     r7, r0
	mov     r0, r5
	mov     r1, r7
	bl      Function_16_2258ab8
	mov     r6, r0
	mov     r0, r5
	mov     r1, r7
	mov     r2, r4
	bl      Function_2258acc
	str     r0, [sp, #0x4]
	cmp     r6, #0x41
	bne     branch_22486b2
	ldr     r0, [sp, #0x0]
	bl      Function_16_GetRandomNr
	mov     r1, #100
	blx     _s32_div_f
	ldr     r0, [sp, #0x4]
	cmp     r1, r0
	bge     branch_22486b2
	mov     r4, #0x1
branch_22486b2: @ 22486b2 :thumb
	cmp     r6, #0x67
	bne     branch_22486ca
	mov     r0, #0xc0
	mul     r0, r7
	add     r2, r5, r0
	ldr     r0, [pc, #0x40] @ 0x2248700, (=BattleData_CurHP)
	ldr     r1, [r2, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	ldr     r0, [r2, r0]
	cmp     r1, r0
	bne     branch_22486ca
	mov     r4, #0x1
branch_22486ca: @ 22486ca :thumb
	cmp     r4, #0x0
	beq     branch_22486f8
	mov     r1, #0xc0
	mov     r0, r7
	mul     r0, r1
	add     r2, r5, r0
	ldr     r0, [pc, #0x28] @ 0x2248700, (=BattleData_CurHP)
	ldr     r3, [r2, r0]
	ldr     r2, [pc, #0x28] @ 0x2248704, (=BattleData_StatusEffectDamage)
	ldr     r0, [r5, r2]
	add     r0, r0, r3
	cmp     r0, #0x0
	bgt     branch_22486f8
	sub     r0, r3, #0x1
	neg     r0, r0
	str     r0, [r5, r2]
	mov     r0, r2
	add     r0, #0x10
	ldr     r0, [r5, r0]
	add     r1, #0x40
	orr     r0, r1
	add     r2, #0x10
	str     r0, [r5, r2]
branch_22486f8: @ 22486f8 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x22486fe

.align 2
.word BattleData_CurHP @ 0x2248700
.word BattleData_StatusEffectDamage @ 0x2248704



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmdd1: @ 2248708 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r6, r0

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r7, r0

	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	bl      GetTargetNrOfPkmn
	mov     r1, r0
	mov     r0, #0xc0
	mov     r4, r1
	mul     r4, r0
	ldr     r0, [pc, #0x5c] @ 0x2248798, (=BattleData_CurHP)
	add     r2, r5, r4
	ldr     r0, [r2, r0]
	cmp     r0, #0x0
	beq     branch_224878a
	ldr     r0, [pc, #0x58] @ 0x224879c, (=BattleData_219c)
	add     r2, r5, r1
	ldrb    r2, [r2, r0]
	cmp     r2, #0x6
	beq     branch_224878a
	mov     r0, r6
	bl      GetMainBattleData_GetAdrOfPkmnInParty
	mov     r6, r0
	mov     r1, #0xa
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0x0]
	mov     r0, r6
	mov     r1, #0xa0
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r2, r0
	ldr     r0, [pc, #0x34] @ 0x22487a0, (=BattleData_Ability)
	add     r1, r5, r4
	ldrb    r0, [r1, r0]
	cmp     r0, #0x1e
	beq     branch_2248792
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	bl      Function_22577a4
	cmp     r0, #0x0
	bne     branch_2248792
	mov     r0, r5
	mov     r1, r7
	bl      BeSeq_AddToPointer
	b       branch_2248792
@ 0x224878a

.thumb
branch_224878a: @ 224878a :thumb
	mov     r0, r5
	mov     r1, r7
	bl      BeSeq_AddToPointer
branch_2248792: @ 2248792 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2248796

.align 2
.word BattleData_CurHP @ 0x2248798
.word BattleData_219c @ 0x224879c
.word BattleData_Ability @ 0x22487a0



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmdd2: @ 22487a4 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r7, r0

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r6, r0

	mov     r0, r5
	mov     r1, r4
	mov     r2, r7
	bl      GetTargetNrOfPkmn
	mov     r1, #0xc0
	mul     r1, r0
	add     r2, r4, r1
	ldr     r1, [pc, #0x28] @ 0x22487fc, (=BattleData_2db0)
	ldr     r2, [r2, r1]
	mov     r1, #0x1
	lsl     r1, r1, #24
	tst     r1, r2
	bne     branch_22487f0
	mov     r1, #0x1c
	mul     r1, r0
	mov     r0, #0xba
	add     r1, r4, r1
	lsl     r0, r0, #2
	ldr     r1, [r1, r0]
	mov     r0, #0x8
	tst     r0, r1
	beq     branch_22487f8
branch_22487f0: @ 22487f0 :thumb
	mov     r0, r4
	mov     r1, r6
	bl      BeSeq_AddToPointer
branch_22487f8: @ 22487f8 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22487fc

.word BattleData_2db0 @ 0x22487fc



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmdd3: @ 2248800 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r6, r0

	mov     r0, #0xd
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x8
	mov     r3, #0x0
	bl      Function_16_22555a4
	cmp     r0, #0x0
	bne     branch_2248840
	mov     r0, #0x4c
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x8
	mov     r3, #0x0
	bl      Function_16_22555a4
	cmp     r0, #0x0
	beq     branch_2248848

branch_2248840: @ 2248840 :thumb
	mov     r0, r4
	mov     r1, r6
	bl      BeSeq_AddToPointer
branch_2248848: @ 2248848 :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x224884e


/* Input:
r0: MainBattleData
r1: BattleData
*/
.align 2, 0
.thumb
BeSeq_Cmdd4: @ 2248850 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord

	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      GetTargetNrOfPkmn

	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_16_2257028
	str     r0, [r4, #0x6c]

	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224887e


/* Input:
r0: MainBattleData
r1: BattleData
*/
.align 2, 0
.thumb
BeSeq_Cmdd5: @ 2248880 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r2, #0x4e
	lsl     r2, r2, #2
	mov     r6, r0
	mov     r0, r5
	mov     r1, r4
	add     r2, r4, r2
	bl      Function_225b228
	cmp     r0, #0x0
	bne     branch_22488b0
	mov     r0, r4
	mov     r1, r6
	bl      BeSeq_AddToPointer
branch_22488b0: @ 22488b0 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x22488b4


/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmdd6: @ 22488b4 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      GetTargetNrOfPkmn
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_226692c
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22488e0


/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmdd7: @ 22488e0 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      GetTargetNrOfPkmn
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_22669d8
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224890c


/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmdd8: @ 224890c :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r6, r0

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r7, r0

	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      GetTargetNrOfPkmn
	mov     r1, r0
	mov     r0, r5
	mov     r2, r7
	bl      Function_2266a18
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2248942


.align 2, 0
.thumb
Function_2248944: @ 2248944 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer
	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x0
	bl      GetMainBattleData_NrOfPkmnInParty
	cmp     r0, #0x6
	bne     branch_2248970
	ldr     r0, [r5, #0x64]
	bl      Function_20799a0
	cmp     r0, #0x12
	beq     branch_2248980

branch_2248970: @ 2248970 :thumb
	ldr     r0, [pc, #0x10] @ 0x2248984, (=MainBattleData_2414)
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_2248980
	mov     r0, r4
	mov     r1, r6
	bl      BeSeq_AddToPointer
branch_2248980: @ 2248980 :thumb

	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2248984

.word MainBattleData_2414 @ 0x2248984



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmdda: @ 2248988 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r0

	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r5
	bl      BeSeq_LoadWord

	ldr     r2, [r4, #0x2c]
	mov     r1, #0x4
	tst     r1, r2
	beq     branch_22489b2
	ldr     r1, [pc, #0x44] @ 0x22489ec, (=MainBattleData_240c)
	ldr     r2, [r4, r1]
	mov     r1, #0x10
	tst     r1, r2
	bne     branch_22489b2
	mov     r4, #0x2
	b       branch_22489b4

branch_22489b2: @ 22489b2 :thumb
	mov     r4, #0x1
branch_22489b4: @ 22489b4 :thumb
	mov     r1, r5
	add     r1, #0xf0
	ldr     r1, [r1, #0x0]
	cmp     r0, r1
	ble     branch_22489d2
	mov     r1, #0x1
	mov     r0, r5
	mvn     r1, r1
	bl      BeSeq_AddToPointer
	mov     r0, r5
	add     r0, #0xf0
	ldr     r0, [r0, #0x0]
	add     r1, r0, r4
	b       branch_22489d4

branch_22489d2: @ 22489d2 :thumb
	mov     r1, #0x0
branch_22489d4: @ 22489d4 :thumb
	mov     r0, r5
	add     r0, #0xf0
	str     r1, [r0, #0x0]
	ldr     r1, [pc, #0x14] @ 0x22489f0, (=BattleData_EndOfScript)
	mov     r0, #BattleData_EndOfScript_1
	ldr     r2, [r5, r1]
	bic     r2, r0
	mov     r0, #BattleData_EndOfScript_1
	orr     r0, r2
	str     r0, [r5, r1]

	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22489ec

.word MainBattleData_240c @ 0x22489ec
.word BattleData_EndOfScript @ 0x22489f0



.thumb
Function_22489f4: @ 22489f4 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	mov     r1, #0x1
	bl      BeSeq_AddToPointer
	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r4, r0
	mov     r0, r5
	bl      BeSeq_LoadWord
	mov     r1, r0
	ldr     r0, [pc, #0x18] @ 0x2248a2c, (=BattleData_WazaSeqFileNr)
	ldr     r0, [r5, r0]
	lsl     r0, r0, #4
	add     r2, r5, r0
	ldr     r0, [pc, #0x14] @ 0x2248a30, (=0x3e2)
	ldrb    r0, [r2, r0]
	cmp     r4, r0
	bne     branch_2248a26
	mov     r0, r5
	bl      BeSeq_AddToPointer
branch_2248a26: @ 2248a26 :thumb

	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2248a2a

.align 2
.word BattleData_WazaSeqFileNr @ 0x2248a2c
.word 0x3e2 @ 0x2248a30



/* Input:
r0: MainBattleData
r1: BattleData
*/
.thumb
BeSeq_Cmddc: @ 2248a34 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r6, r0

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r7, r0

	mov     r0, r4
	bl      BeSeq_LoadWord
	str     r0, [sp, #0x0]

	mov     r0, r5
	mov     r1, r4
	mov     r2, r7
	bl      BeSeq_GetVariableAdress
	mov     r1, r0
	ldr     r1, [r1, #0x0]
	ldr     r2, [sp, #0x0]
	mov     r0, r6
	bl      GetPkmnBaseData2
	mov     r1, #0x4d
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2248a7a


/* Input:
r0: MainBattleData
r1: BattleData
*/
.align 2, 0
.thumb
BeSeq_Cmddd: @ 2248a7c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r0, r4
	mov     r1, #0x1
	bl      BeSeq_AddToPointer

	mov     r0, r4
	bl      BeSeq_LoadWord
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      GetTargetNrOfPkmn
	mov     r2, r0
	mov     r1, r4
	ldr     r3, [pc, #0x10] @ 0x2248ab0, (=BattleData_219c)
	add     r4, r4, r2
	ldrb    r3, [r4, r3]
	mov     r0, r5
	bl      CopyPkmnDataToPkmnBattleData1
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2248aae

.align 2
.word BattleData_219c @ 0x2248ab0



/* Input:
r0: MainBattleData
r1: BattleData
*/
thumb_func_start BeSeq_End
BeSeq_End: @ 2248ab4 :thumb
	ldr     r2, =BattleData_EndOfScript
	mov     r0, #BattleData_EndOfScript_1
	ldr     r3, [r1, r2] @ BattleData_EndOfScript
	bic     r3, r0
	mov     r0, #BattleData_EndOfScript_1
	orr     r0, r3
	str     r0, [r1, r2] @ BattleData_EndOfScript

	ldr     r3, =EndBeSeq+1
	mov     r0, r1
	bx      r3
@ 0x2248ac8

.align 2
.pool
thumb_func_end BeSeq_End



/* Input:
r0: BattleData
*/
thumb_func_start BeSeq_LoadWord
BeSeq_LoadWord: @ 2248ad0 :thumb
	mov     r1, r0
	add     r1, #BattleData_SkillPtr
	ldr     r1, [r1] @ BattleData_SkillPtr
	lsl     r1, r1, #2
	add     r2, r0, r1
	mov     r1, #0x27
	lsl     r1, r1, #8      @ 0x2700 BattleData_SeqFile
	ldr     r2, [r2, r1]

	mov     r1, r0
	add     r1, #BattleData_SkillPtr
	ldr     r1, [r1] @ BattleData_SkillPtr
	add     r0, #BattleData_SkillPtr
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0] @ BattleData_SkillPtr

	mov     r0, r2
	bx      lr
thumb_func_end BeSeq_LoadWord


/* Input:
r0: BattleData
r1: Offset
*/
thumb_func_start BeSeq_AddToPointer
BeSeq_AddToPointer: @ 2248af0 :thumb
	mov     r2, r0
	add     r2, #BattleData_SkillPtr
	ldr     r2, [r2] @ BattleData_SkillPtr

	add     r0, #BattleData_SkillPtr
	add     r1, r2, r1
	str     r1, [r0] @ BattleData_SkillPtr
	bx      lr
thumb_func_end BeSeq_AddToPointer


thumb_func_start Call_Call_LoadFromNARC
Call_Call_LoadFromNARC: @ 2248b00 :thumb
	ldr     r3, =Call_LoadFromNARC_NewSeqScript+1
	bx      r3
@ 0x2248b04

.align 2
.pool
thumb_func_end Call_Call_LoadFromNARC



thumb_func_start Call_Call_LoadFromNARC_AddNewSeqScript
Call_Call_LoadFromNARC_AddNewSeqScript: @ 2248b08 :thumb
	ldr     r3, =Call_LoadFromNARC_AddNewSeqScript+1
	bx      r3
@ 0x2248b0c

.align 2
.pool
thumb_func_end Call_Call_LoadFromNARC_AddNewSeqScript



/* Input:
r0: MainBattleData
r1: BattleData
r2: Parameter
01 Sleep:           Cmd_32 Cmd32_Store, Var_2, 0x80000001
02 PoisonHit:       Cmd_32 Cmd32_Store, Var_3, 0x80000002
03 Absorb:          Cmd_32 Cmd32_Store, Var_3, 0x2000003c
04 BurnHit:         Cmd_32 Cmd32_Store, Var_3, 0x80000003
05 FreezeHit:       Cmd_32 Cmd32_Store, Var_3, 0x80000004
06 ParalyzeHit:     Cmd_32 Cmd32_Store, Var_3, 0x80000005
10 AttackUp:        Cmd_32 Cmd32_Store, Var_2, 0x4000000f
11 DefenseUp:       Cmd_32 Cmd32_Store, Var_2, 0x40000010
13 SpecialAttackUp: Cmd_32 Cmd32_Store, Var_2, 0x40000012
*/
thumb_func_start BeSeq_GetVariableAdress
BeSeq_GetVariableAdress: @ 2248b10 :thumb
	push    {r4,lr}
	mov     r4, r1
	cmp     r2, #0x45
	bls     branch_2248b1a
	b       branch_2248e0c

branch_2248b1a: @ 2248b1a :thumb
	add     r1, r2, r2
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1

Jumppoints_2248b26:
.hword branch_2248bb2_Var0 - Jumppoints_2248b26 - 2 @ 0x0
.hword branch_2248bb6_Var1 - Jumppoints_2248b26 - 2 @ 0x1
.hword branch_2248bbc_Var2 - Jumppoints_2248b26 - 2 @ 0x2
.hword branch_2248bc2_Var3 - Jumppoints_2248b26 - 2 @ 0x3
.hword branch_2248bc8_Var4 - Jumppoints_2248b26 - 2 @ 0x4
.hword branch_2248bce_Var5 - Jumppoints_2248b26 - 2 @ 0x5
.hword branch_2248bd4 - Jumppoints_2248b26 - 2 @ 0x6
.hword getWeatherAdr - Jumppoints_2248b26 - 2 @ 0x7
.hword branch_2248be2 - Jumppoints_2248b26 - 2 @ 0x8
.hword branch_2248be8 - Jumppoints_2248b26 - 2 @ 0x9
.hword branch_2248bf0 - Jumppoints_2248b26 - 2 @ 0xa
.hword branch_2248bf6 - Jumppoints_2248b26 - 2 @ 0xb
.hword branch_2248c08 - Jumppoints_2248b26 - 2 @ 0xc
.hword branch_2248c1a - Jumppoints_2248b26 - 2 @ 0xd
.hword branch_getDamageAdr - Jumppoints_2248b26 - 2 @ 0xe
.hword branch_getNrOfPkmnAdr - Jumppoints_2248b26 - 2 @ 0xf
.hword branch_getTargetPkmnAdr - Jumppoints_2248b26 - 2 @ 0x10
.hword branch_2248c42 - Jumppoints_2248b26 - 2 @ 0x11
.hword branch_2248c48 - Jumppoints_2248b26 - 2 @ 0x12
.hword branch_2248c4e - Jumppoints_2248b26 - 2 @ 0x13
.hword branch_2248c54 - Jumppoints_2248b26 - 2 @ 0x14
.hword branch_2248c5c - Jumppoints_2248b26 - 2 @ 0x15
.hword branch_2248c68 - Jumppoints_2248b26 - 2 @ 0x16
.hword branch_2248c70 - Jumppoints_2248b26 - 2 @ 0x17
.hword branch_2248c78 - Jumppoints_2248b26 - 2 @ 0x18
.hword getRoundNrAdr - Jumppoints_2248b26 - 2 @ 0x19
.hword branch_2248c86 - Jumppoints_2248b26 - 2 @ 0x1a
.hword branch_2248c8e - Jumppoints_2248b26 - 2 @ 0x1b
.hword branch_2248c96 - Jumppoints_2248b26 - 2 @ 0x1c
.hword branch_2248c9e - Jumppoints_2248b26 - 2 @ 0x1d
.hword branch_2248ca4 - Jumppoints_2248b26 - 2 @ 0x1e
.hword branch_2248caa - Jumppoints_2248b26 - 2 @ 0x1f
.hword branch_getStatusEffectDamageAdr - Jumppoints_2248b26 - 2 @ 0x20
.hword branch_2248cb6 - Jumppoints_2248b26 - 2 @ 0x21
.hword branch_2248cbc_Var22 - Jumppoints_2248b26 - 2 @ 0x22
.hword branch_2248cc2 - Jumppoints_2248b26 - 2 @ 0x23
.hword branch_getUsedItemAdr - Jumppoints_2248b26 - 2 @ 0x24
.hword branch_2248cd2 - Jumppoints_2248b26 - 2 @ 0x25
.hword getWeatherCounterAdr - Jumppoints_2248b26 - 2 @ 0x26
.hword branch_2248ce2 - Jumppoints_2248b26 - 2 @ 0x27
.hword branch_2248ce8 - Jumppoints_2248b26 - 2 @ 0x28
.hword branch_2248cf0 - Jumppoints_2248b26 - 2 @ 0x29
.hword branch_2248cfe - Jumppoints_2248b26 - 2 @ 0x2a
.hword branch_2248d0c - Jumppoints_2248b26 - 2 @ 0x2b
.hword branch_getDamageMultiplierAdr - Jumppoints_2248b26 - 2 @ 0x2c
.hword branch_2248d1a - Jumppoints_2248b26 - 2 @ 0x2d
.hword branch_2248d28 - Jumppoints_2248b26 - 2 @ 0x2e
.hword branch_2248d36 - Jumppoints_2248b26 - 2 @ 0x2f
.hword branch_2248d46 - Jumppoints_2248b26 - 2 @ 0x30
.hword branch_2248d56 - Jumppoints_2248b26 - 2 @ 0x31
.hword branch_2248d68 - Jumppoints_2248b26 - 2 @ 0x32
.hword branch_2248d6e - Jumppoints_2248b26 - 2 @ 0x33
.hword branch_2248d74 - Jumppoints_2248b26 - 2 @ 0x34
.hword branch_2248d7a - Jumppoints_2248b26 - 2 @ 0x35
.hword branch_2248d86 - Jumppoints_2248b26 - 2 @ 0x36
.hword branch_2248d8c - Jumppoints_2248b26 - 2 @ 0x37
.hword branch_2248d92 - Jumppoints_2248b26 - 2 @ 0x38
.hword branch_2248d98 - Jumppoints_2248b26 - 2 @ 0x39
.hword branch_2248d9e - Jumppoints_2248b26 - 2 @ 0x3a
.hword branch_2248da4 - Jumppoints_2248b26 - 2 @ 0x3b
.hword branch_2248daa - Jumppoints_2248b26 - 2 @ 0x3c
.hword branch_2248db2 - Jumppoints_2248b26 - 2 @ 0x3d
.hword branch_getNrOfBattleTextPtrsAdr - Jumppoints_2248b26 - 2 @ 0x3e
.hword branch_2248dbc - Jumppoints_2248b26 - 2 @ 0x3f
.hword branch_2248dc2 - Jumppoints_2248b26 - 2 @ 0x40
.hword branch_2248dc8 - Jumppoints_2248b26 - 2 @ 0x41
.hword branch_2248dd8 - Jumppoints_2248b26 - 2 @ 0x42
.hword branch_2248de8 - Jumppoints_2248b26 - 2 @ 0x43
.hword branch_2248df6 - Jumppoints_2248b26 - 2 @ 0x44
.hword branch_2248e06 - Jumppoints_2248b26 - 2 @ 0x45

branch_2248bb2_Var0: @ 2248bb2 :thumb
	add     r0, #MainBattleData_2c
	pop     {r4,pc}

branch_2248bb6_Var1: @ 2248bb6 :thumb
	ldr     r0, [pc, #0x258] @ 0x2248e10, (=BattleData_214c)
	add     r0, r4, r0
	pop     {r4,pc}

branch_2248bbc_Var2: @ 2248bbc :thumb
	ldr     r0, [pc, #0x254] @ 0x2248e14, (=BattleData_MoveEffect_SubSeq)
	add     r0, r4, r0
	pop     {r4,pc}

branch_2248bc2_Var3: @ 2248bc2 :thumb
	ldr     r0, [pc, #0x254] @ 0x2248e18, (=BattleData_2174)
	add     r0, r4, r0
	pop     {r4,pc}

branch_2248bc8_Var4: @ 2248bc8 :thumb
	ldr     r0, [pc, #0x250] @ 0x2248e1c, (=BattleData_2178)
	add     r0, r4, r0
	pop     {r4,pc}

branch_2248bce_Var5: @ 2248bce :thumb
	add     r4, #BattleData_88
	mov     r0, r4
	pop     {r4,pc}

branch_2248bd4: @ 2248bd4 :thumb
	ldr     r0, [pc, #0x248] @ 0x2248e20, (=BattleData_213c)
	add     r0, r4, r0
	pop     {r4,pc}

getWeatherAdr: @ 2248bda :thumb
	mov     r0, #0x6
	lsl     r0, r0, #6          @ =0x180 BattleData_Weather
	add     r0, r4, r0
	pop     {r4,pc}

branch_2248be2: @ 2248be2 :thumb
	ldr     r0, [pc, #0x240] @ 0x2248e24, (=BattleData_2158)
	add     r0, r4, r0
	pop     {r4,pc}

branch_2248be8: @ 2248be8 :thumb
	mov     r0, #BattleData_134/4
	lsl     r0, r0, #2
	add     r0, r4, r0
	pop     {r4,pc}

branch_2248bf0: @ 2248bf0 :thumb
	ldr     r0, [pc, #0x234] @ 0x2248e28, (=BattleData_216c)
	add     r0, r4, r0
	pop     {r4,pc}

branch_2248bf6: @ 2248bf6 :thumb
	ldr     r1, [r4, #BattleData_NrOfPkmn]
	bl      Function_16_223e208
	mov     r1, #0x6f
	lsl     r1, r1, #2
	add     r1, r4, r1
	lsl     r0, r0, #2
	add     r0, r1, r0
	pop     {r4,pc}

branch_2248c08: @ 2248c08 :thumb
	ldr     r1, [r4, #BattleData_TargetPkmn]
	bl      Function_16_223e208
	mov     r1, #0x6f
	lsl     r1, r1, #2
	add     r1, r4, r1
	lsl     r0, r0, #2
	add     r0, r1, r0
	pop     {r4,pc}

branch_2248c1a: @ 2248c1a :thumb
	mov     r1, r4
	add     r1, #BattleData_TargetForMoveEffect
	ldr     r1, [r1]
	bl      Function_16_223e208
	mov     r1, #0x6f
	lsl     r1, r1, #2
	add     r1, r4, r1
	lsl     r0, r0, #2
	add     r0, r1, r0
	pop     {r4,pc}

branch_getDamageAdr: @ 2248c30 :thumb
	ldr     r0, [pc, #0x1f8] @ 0x2248e2c, (=BattleData_Damage)
	add     r0, r4, r0
	pop     {r4,pc}

branch_getNrOfPkmnAdr: @ 2248c36 :thumb
	add     r4, #BattleData_NrOfPkmn
	mov     r0, r4
	pop     {r4,pc}

branch_getTargetPkmnAdr: @ 2248c3c :thumb
	add     r4, #BattleData_TargetPkmn
	mov     r0, r4
	pop     {r4,pc}

branch_2248c42: @ 2248c42 :thumb
	add     r4, #BattleData_TargetForMoveEffect
	mov     r0, r4
	pop     {r4,pc}

branch_2248c48: @ 2248c48 :thumb
	add     r4, #BattleData_74
	mov     r0, r4
	pop     {r4,pc}

branch_2248c4e: @ 2248c4e :thumb
	add     r4, #BattleData_78
	mov     r0, r4
	pop     {r4,pc}

branch_2248c54: @ 2248c54 :thumb
	mov     r0, #BattleData_118/4
	lsl     r0, r0, #2
	add     r0, r4, r0
	pop     {r4,pc}

branch_2248c5c: @ 2248c5c :thumb
	ldr     r0, [pc, #0x1d0] @ 0x2248e30, (=BattleData_30e4)
	add     r1, r4, r0
	ldr     r0, [r4, #BattleData_NrOfPkmn]
	lsl     r0, r0, #2
	add     r0, r1, r0
	pop     {r4,pc}

branch_2248c68: @ 2248c68 :thumb
	mov     r0, #BattleData_130/16
	lsl     r0, r0, #4
	add     r0, r4, r0
	pop     {r4,pc}

branch_2248c70: @ 2248c70 :thumb
	mov     r0, #BattleData_14c/4
	lsl     r0, r0, #2
	add     r0, r4, r0
	pop     {r4,pc}

branch_2248c78: @ 2248c78 :thumb
	ldr     r0, [pc, #0x1b8] @ 0x2248e34, (=BattleData_WazaSeqFileNr)
	add     r0, r4, r0
	pop     {r4,pc}

getRoundNrAdr: @ 2248c7e :thumb
	mov     r0, #BattleData_RoundNr/16
	lsl     r0, r0, #4
	add     r0, r4, r0
	pop     {r4,pc}

branch_2248c86: @ 2248c86 :thumb
	mov     r0, #BattleData_11c/4
	lsl     r0, r0, #2
	add     r0, r4, r0
	pop     {r4,pc}

branch_2248c8e: @ 2248c8e :thumb
	mov     r0, #BattleData_120/16
	lsl     r0, r0, #4
	add     r0, r4, r0
	pop     {r4,pc}

branch_2248c96: @ 2248c96 :thumb
	mov     r0, #BattleData_3040/64
	lsl     r0, r0, #6
	add     r0, r4, r0
	pop     {r4,pc}

branch_2248c9e: @ 2248c9e :thumb
	add     r4, #BattleData_98
	mov     r0, r4
	pop     {r4,pc}

branch_2248ca4: @ 2248ca4 :thumb
	ldr     r0, [pc, #0x190] @ 0x2248e38, (=BattleData_2154)
	add     r0, r4, r0
	pop     {r4,pc}

branch_2248caa: @ 2248caa :thumb
	add     r4, #BattleData_38
	mov     r0, r4
	pop     {r4,pc}

branch_getStatusEffectDamageAdr: @ 2248cb0 :thumb
	ldr     r0, [pc, #0x188] @ 0x2248e3c, (=BattleData_StatusEffectDamage)
	add     r0, r4, r0
	pop     {r4,pc}

branch_2248cb6: @ 2248cb6 :thumb
	ldr     r1, [pc, #0x188] @ 0x2248e40, (=MainBattleData_2420)
	add     r0, r0, r1
	pop     {r4,pc}

branch_2248cbc_Var22: @ 2248cbc :thumb
	add     r4, #BattleData_MoveEffectNr
	mov     r0, r4
	pop     {r4,pc}

branch_2248cc2: @ 2248cc2 :thumb
	mov     r0, #BattleData_124/4
	lsl     r0, r0, #2
	add     r0, r4, r0
	pop     {r4,pc}

branch_getUsedItemAdr: @ 2248cca :thumb
	mov     r0, #BattleData_UsedItem/4
	lsl     r0, r0, #2
	add     r0, r4, r0
	pop     {r4,pc}

branch_2248cd2: @ 2248cd2 :thumb
	mov     r0, #BattleData_12c/4
	lsl     r0, r0, #2
	add     r0, r4, r0
	pop     {r4,pc}

getWeatherCounterAdr: @ 2248cda :thumb
	mov     r0, #BattleData_WeatherCounter/4
	lsl     r0, r0, #2
	add     r0, r4, r0
	pop     {r4,pc}

branch_2248ce2: @ 2248ce2 :thumb
	ldr     r0, [pc, #0x160] @ 0x2248e44, (=BattleData_3104)
	add     r0, r4, r0
	pop     {r4,pc}

branch_2248ce8: @ 2248ce8 :thumb
	mov     r0, #BattleData_2180/64
	lsl     r0, r0, #6
	add     r0, r4, r0
	pop     {r4,pc}

branch_2248cf0: @ 2248cf0 :thumb
	mov     r0, #BattleData_1ec/4
	lsl     r0, r0, #2
	add     r1, r4, r0
	ldr     r0, [r4, #BattleData_NrOfPkmn]
	lsl     r0, r0, #6
	add     r0, r1, r0
	pop     {r4,pc}

branch_2248cfe: @ 2248cfe :thumb
	mov     r0, #BattleData_204/4
	lsl     r0, r0, #2
	add     r1, r4, r0
	ldr     r0, [r4, #BattleData_NrOfPkmn]
	lsl     r0, r0, #6
	add     r0, r1, r0
	pop     {r4,pc}

branch_2248d0c: @ 2248d0c :thumb
	mov     r0, #BattleData_138/4
	lsl     r0, r0, #2
	add     r0, r4, r0
	pop     {r4,pc}

branch_getDamageMultiplierAdr: @ 2248d14 :thumb
	ldr     r0, [pc, #0x130] @ 0x2248e48, (=BattleData_DamageMultiplier)
	add     r0, r4, r0
	pop     {r4,pc}

branch_2248d1a: @ 2248d1a :thumb
	mov     r0, #BattleData_208/4
	lsl     r0, r0, #2
	add     r1, r4, r0
	ldr     r0, [r4, #BattleData_NrOfPkmn]
	lsl     r0, r0, #6
	add     r0, r1, r0
	pop     {r4,pc}

branch_2248d28: @ 2248d28 :thumb
	mov     r0, #BattleData_208/4
	lsl     r0, r0, #2
	add     r1, r4, r0
	ldr     r0, [r4, #BattleData_TargetPkmn]
	lsl     r0, r0, #6
	add     r0, r1, r0
	pop     {r4,pc}

branch_2248d36: @ 2248d36 :thumb
	mov     r0, #BattleData_2e8/4
	lsl     r0, r0, #2
	add     r2, r4, r0
	ldr     r1, [r4, #BattleData_NrOfPkmn]
	mov     r0, #0x1c
	mul     r0, r1
	add     r0, r2, r0
	pop     {r4,pc}

branch_2248d46: @ 2248d46 :thumb
	mov     r0, #BattleData_2e8/4
	lsl     r0, r0, #2
	add     r2, r4, r0
	ldr     r1, [r4, #BattleData_TargetPkmn]
	mov     r0, #0x1c
	mul     r0, r1
	add     r0, r2, r0
	pop     {r4,pc}

branch_2248d56: @ 2248d56 :thumb
	mov     r0, #BattleData_2e8/4
	lsl     r0, r0, #2
	add     r2, r4, r0
	add     r4, #BattleData_TargetForMoveEffect
	ldr     r1, [r4]
	mov     r0, #0x1c
	mul     r0, r1
	add     r0, r2, r0
	pop     {r4,pc}

branch_2248d68: @ 2248d68 :thumb
	ldr     r0, [pc, #0xe0] @ 0x2248e4c, (=BattleData_3114)
	add     r0, r4, r0
	pop     {r4,pc}

branch_2248d6e: @ 2248d6e :thumb
	ldr     r0, [pc, #0xe0] @ 0x2248e50, (=BattleData_3118)
	add     r0, r4, r0
	pop     {r4,pc}

branch_2248d74: @ 2248d74 :thumb
	ldr     r1, [pc, #0xdc] @ 0x2248e54, (=MainBattleData_240c)
	add     r0, r0, r1
	pop     {r4,pc}

branch_2248d7a: @ 2248d7a :thumb
	ldr     r0, [pc, #0xdc] @ 0x2248e58, (=BattleData_304c)
	add     r1, r4, r0
	ldr     r0, [r4, #BattleData_NrOfPkmn]
	lsl     r0, r0, #2
	add     r0, r1, r0
	pop     {r4,pc}

branch_2248d86: @ 2248d86 :thumb
	ldr     r0, [pc, #0xd4] @ 0x2248e5c, (=BattleData_2148)
	add     r0, r4, r0
	pop     {r4,pc}

branch_2248d8c: @ 2248d8c :thumb
	ldr     r1, [pc, #0xd0] @ 0x2248e60, (=MainBattleData_2414)
	add     r0, r0, r1
	pop     {r4,pc}

branch_2248d92: @ 2248d92 :thumb
	add     r4, #BattleData_7c
	mov     r0, r4
	pop     {r4,pc}

branch_2248d98: @ 2248d98 :thumb
	ldr     r0, [pc, #0xc8] @ 0x2248e64, (=BattleData_2160)
	add     r0, r4, r0
	pop     {r4,pc}

branch_2248d9e: @ 2248d9e :thumb
	ldr     r0, [pc, #0xc8] @ 0x2248e68, (=BattleData_2164)
	add     r0, r4, r0
	pop     {r4,pc}

branch_2248da4: @ 2248da4 :thumb
	ldr     r1, [pc, #0xc4] @ 0x2248e6c, (=MainBattleData_241c)
	add     r0, r0, r1
	pop     {r4,pc}

branch_2248daa: @ 2248daa :thumb
	mov     r0, #BattleData_2140/64
	lsl     r0, r0, #6
	add     r0, r4, r0
	pop     {r4,pc}

branch_2248db2: @ 2248db2 :thumb
	add     r4, #BattleData_ec
	mov     r0, r4
	pop     {r4,pc}

branch_getNrOfBattleTextPtrsAdr: @ 2248db8 :thumb
	add     r0, #MainBattleData_NrOfBattleTextPtrs
	pop     {r4,pc}

branch_2248dbc: @ 2248dbc :thumb
	add     r4, #BattleData_68
	mov     r0, r4
	pop     {r4,pc}

branch_2248dc2: @ 2248dc2 :thumb
	add     r4, #BattleData_70
	mov     r0, r4
	pop     {r4,pc}

branch_2248dc8: @ 2248dc8 :thumb
	mov     r0, #BattleData_2d8/4
	lsl     r0, r0, #2
	add     r2, r4, r0
	ldr     r1, [r4, #BattleData_TargetPkmn]
	mov     r0, #0x1c
	mul     r0, r1
	add     r0, r2, r0
	pop     {r4,pc}

branch_2248dd8: @ 2248dd8 :thumb
	mov     r0, #BattleData_210/16
	lsl     r0, r0, #4
	add     r1, r4, r0
	sub     r0, #BattleData_210 - BattleData_118
	ldr     r0, [r4, r0] @ BattleData_118
	lsl     r0, r0, #6
	add     r0, r1, r0
	pop     {r4,pc}

branch_2248de8: @ 2248de8 :thumb
	mov     r0, #BattleData_210/16
	lsl     r0, r0, #4
	add     r1, r4, r0
	ldr     r0, [r4, #BattleData_TargetPkmn]
	lsl     r0, r0, #6
	add     r0, r1, r0
	pop     {r4,pc}

branch_2248df6: @ 2248df6 :thumb
	mov     r0, #BattleData_2ec/4
	lsl     r0, r0, #2
	add     r2, r4, r0
	ldr     r1, [r4, #BattleData_NrOfPkmn]
	mov     r0, #0x1c
	mul     r0, r1
	add     r0, r2, r0
	pop     {r4,pc}

branch_2248e06: @ 2248e06 :thumb
	ldr     r0, [pc, #0x68] @ 0x2248e70, (=BattleData_3150)
	add     r0, r4, r0
	pop     {r4,pc}

branch_2248e0c: @ 2248e0c :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2248e10

.word BattleData_214c @ 0x2248e10
.word BattleData_MoveEffect_SubSeq @ 0x2248e14
.word BattleData_2174 @ 0x2248e18
.word BattleData_2178 @ 0x2248e1c
.word BattleData_213c @ 0x2248e20
.word BattleData_2158 @ 0x2248e24
.word BattleData_216c @ 0x2248e28
.word BattleData_Damage @ 0x2248e2c
.word BattleData_30e4 @ 0x2248e30
.word BattleData_WazaSeqFileNr @ 0x2248e34
.word BattleData_2154 @ 0x2248e38
.word BattleData_StatusEffectDamage @ 0x2248e3c
.word MainBattleData_2420 @ 0x2248e40
.word BattleData_3104 @ 0x2248e44
.word BattleData_DamageMultiplier @ 0x2248e48
.word BattleData_3114 @ 0x2248e4c
.word BattleData_3118 @ 0x2248e50
.word MainBattleData_240c @ 0x2248e54
.word BattleData_304c @ 0x2248e58
.word BattleData_2148 @ 0x2248e5c
.word MainBattleData_2414 @ 0x2248e60
.word BattleData_2160 @ 0x2248e64
.word BattleData_2164 @ 0x2248e68
.word MainBattleData_241c @ 0x2248e6c
.word BattleData_3150 @ 0x2248e70
thumb_func_end BeSeq_GetVariableAdress
