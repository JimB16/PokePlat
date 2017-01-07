
/* Input:
r1 = Dest. of TrainerData
*/
thumb_func_start LoadTrainerData
LoadTrainerData: @ 2079170 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x48

	str     r2, [sp, #0x4]
	ldr     r2, [pc, #0xa4] @ 0x207921c, (=0x26a)
	str     r0, [sp, #0x0]
	mov     r4, r1
	ldr     r3, [sp, #0x4]
	mov     r0, #0x1
	mov     r1, #0x1a
	bl      Function_200b144
	str     r0, [sp, #0x10]
	mov     r0, r4
	bl      LoadVariableAreaAdress_a_2
	bl      Function_2027870
	ldr     r4, [sp, #0x0]
	str     r0, [sp, #0xc]
	mov     r0, r4
	mov     r5, r4
	mov     r7, #0x0
	str     r0, [sp, #0x8]
	add     r5, #0x3c
branch_20791a0: @ 20791a0 :thumb
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x0
	beq     branch_20791f4

	add     r1, sp, #0x14
	bl      LoadFromNARC_Trdata
	ldr     r3, [sp, #0x8]
	add     r6, sp, #0x14
	add     r3, #0x28
	mov     r2, #0x6
branch_20791b4: @ 20791b4 :thumb
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_20791b4

	ldr     r0, [r6, #0x0]
	str     r0, [r3, #0x0]
	add     r0, sp, #0x14
	ldrb    r0, [r0, #0x1]
	cmp     r0, #0x3f
	bne     branch_20791d2
	ldr     r1, [sp, #0xc]
	mov     r0, r5
	bl      Function_20021b0
	b       branch_20791ea

branch_20791d2: @ 20791d2 :thumb
	ldr     r0, [sp, #0x10]
	ldr     r1, [r4, #0x18]
	bl      Function_200b1ec
	mov     r6, r0
	mov     r1, r5
	mov     r2, #0x8
	bl      Function_2023df0
	mov     r0, r6
	bl      Function_20237bc
branch_20791ea: @ 20791ea :thumb
	ldr     r0, [sp, #0x0]
	ldr     r2, [sp, #0x4]
	mov     r1, r7
	bl      LoadTrainerPokemon
branch_20791f4: @ 20791f4 :thumb
	ldr     r0, [sp, #0x8]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r0, #0x34
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r5, #0x34
	str     r0, [sp, #0x8]
	cmp     r7, #0x4
	blt     branch_20791a0

	ldr     r0, [sp, #0x0]
	ldr     r1, [r0, #0x0]
	ldr     r0, [sp, #0x24]
	orr     r1, r0
	ldr     r0, [sp, #0x0]
	str     r1, [r0, #0x0]
	ldr     r0, [sp, #0x10]
	bl      Function_200b190
	add     sp, #0x48
	pop     {r3-r7,pc}
@ 0x207921a

.align 2
.word 0x26a @ 0x207921c
thumb_func_end LoadTrainerData



thumb_func_start GetTrainerData
GetTrainerData: @ 2079220 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x34
	mov     r5, r1
	add     r1, sp, #0x0
	bl      LoadFromNARC_Trdata
	cmp     r5, #0x9
	bhi     branch_2079278
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x207923c

Jumppoints_207923c:
.hword loadTrainerFlag - Jumppoints_207923c - 2
.hword loadTrainerClass - Jumppoints_207923c - 2
.hword loadTrainerBattleType - Jumppoints_207923c - 2
.hword loadTrainerNrOfPkmn - Jumppoints_207923c - 2
.hword loadTrainerItem - Jumppoints_207923c - 2
.hword loadTrainerItem - Jumppoints_207923c - 2
.hword loadTrainerItem - Jumppoints_207923c - 2
.hword loadTrainerItem - Jumppoints_207923c - 2
.hword loadTrainerAI - Jumppoints_207923c - 2
.hword loadTrainerBattleType2 - Jumppoints_207923c - 2

.thumb
loadTrainerFlag: @ 2079250 :thumb
	add     r0, sp, #0x0
	ldrb    r4, [r0, #0x0]
	b       branch_2079278

loadTrainerClass: @ 2079256 :thumb
	add     r0, sp, #0x0
	ldrb    r4, [r0, #0x1]
	b       branch_2079278

loadTrainerBattleType: @ 207925c :thumb
	add     r0, sp, #0x0
	ldrb    r4, [r0, #0x2]
	b       branch_2079278

loadTrainerNrOfPkmn: @ 2079262 :thumb
	add     r0, sp, #0x0
	ldrb    r4, [r0, #0x3]
	b       branch_2079278

loadTrainerItem: @ 2079268 :thumb
	sub     r0, r5, #0x4
	lsl     r1, r0, #1
	add     r0, sp, #0x4
	ldrh    r4, [r0, r1]
	b       branch_2079278

loadTrainerAI: @ 2079272 :thumb
	ldr     r4, [sp, #0xc]
	b       branch_2079278

loadTrainerBattleType2: @ 2079276 :thumb
	ldr     r4, [sp, #0x10]
branch_2079278: @ 2079278 :thumb
	mov     r0, r4
	add     sp, #0x34
	pop     {r4,r5,pc}
thumb_func_end GetTrainerData


thumb_func_start LoadTrainerTbl
LoadTrainerTbl: @ 2079280 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r7, r1

	ldr     r1, [sp, #0x4]
	mov     r0, #0x3b               @ poketool/trmsg/trtbl.narc
	mov     r4, r2
	bl      LoadFromNARC_7
	mov     r6, r0

	mov     r0, #0x2
	str     r0, [sp, #0x0]

	add     r0, sp, #0xc
	mov     r1, #0x89                   @ poketool/trmsg/trtblofs.narc
	mov     r2, #0x0
	lsl     r3, r5, #1
	bl      LoadFromNARC_3

	mov     r0, #0x3b               @ poketool/trmsg/trtbl.narc
	mov     r1, r4
	bl      LoadFromNARC_8
	add     r4, sp, #0xc
	ldrh    r2, [r4, #0x0]
	str     r0, [sp, #0x8]
	cmp     r2, r6
	beq     branch_20792ec
branch_20792ba: @ 20792ba :thumb
	add     r0, sp, #0xc
	add     r0, #0x2
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x8]
	mov     r1, #0x0
	mov     r3, #0x4
	bl      Function_2006dc8
	ldrh    r1, [r4, #0x2]
	cmp     r1, r5
	bne     branch_20792dc
	ldrh    r0, [r4, #0x4]
	cmp     r0, r7
	bne     branch_20792dc
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	b       branch_20792ec

branch_20792dc: @ 20792dc :thumb
	cmp     r1, r5
	bne     branch_20792ec
	ldrh    r0, [r4, #0x0]
	.hword  0x1d00 @ add r0, r0, #0x4
	strh    r0, [r4, #0x0]
	ldrh    r2, [r4, #0x0]
	cmp     r2, r6
	bne     branch_20792ba
branch_20792ec: @ 20792ec :thumb
	ldr     r0, [sp, #0x8]
	bl      Call_FS_CloseFile
	ldr     r0, [sp, #0x4]
	add     sp, #0x14
	pop     {r4-r7,pc}
thumb_func_end LoadTrainerTbl


thumb_func_start LoadTrainerTbl_2
LoadTrainerTbl_2: @ 20792f8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r6, r0
	mov     r7, r1

	mov     r0, #0x3b               @ poketool/trmsg/trtbl.narc
	mov     r1, #0x0
	str     r2, [sp, #0x4]
	str     r3, [sp, #0x8]
	bl      LoadFromNARC_7
	mov     r5, r0

	mov     r0, #0x2
	str     r0, [sp, #0x0]

	add     r0, sp, #0x10
	mov     r1, #0x89               @ poketool/trmsg/trtblofs.narc
	mov     r2, #0x0
	lsl     r3, r6, #1
	bl      LoadFromNARC_3

	ldr     r1, [sp, #0x8]
	mov     r0, #0x3b               @ poketool/trmsg/trtbl.narc
	bl      LoadFromNARC_8
	add     r4, sp, #0x10
	ldrh    r2, [r4, #0x0]
	str     r0, [sp, #0xc]
	cmp     r2, r5
	beq     branch_207936e
branch_2079330: @ 2079330 :thumb
	add     r0, sp, #0x10
	add     r0, #0x2
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0xc]
	mov     r1, #0x0
	mov     r3, #0x4
	bl      Function_2006dc8
	ldrh    r0, [r4, #0x2]
	cmp     r0, r6
	bne     branch_2079362
	ldrh    r0, [r4, #0x4]
	cmp     r0, r7
	bne     branch_2079362
	ldr     r0, [sp, #0x4]
	add     r2, sp, #0x10
	str     r0, [sp, #0x0]
	ldrh    r2, [r2, #0x0]
	ldr     r1, [pc, #0x30] @ 0x2079388, (=0x269)
	ldr     r3, [sp, #0x8]
	mov     r0, #0x1a
	lsr     r2, r2, #2
	bl      Function_200af20
	b       branch_207936e

branch_2079362: @ 2079362 :thumb
	ldrh    r0, [r4, #0x0]
	.hword  0x1d00 @ add r0, r0, #0x4
	strh    r0, [r4, #0x0]
	ldrh    r2, [r4, #0x0]
	cmp     r2, r5
	bne     branch_2079330
branch_207936e: @ 207936e :thumb
	ldr     r0, [sp, #0xc]
	bl      Call_FS_CloseFile
	add     r0, sp, #0x10
	ldrh    r0, [r0, #0x0]
	cmp     r0, r5
	bne     branch_2079382
	ldr     r0, [sp, #0x4]
	bl      Function_20237e8
branch_2079382: @ 2079382 :thumb
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2079386

.align 2
.word 0x269 @ 0x2079388
thumb_func_end LoadTrainerTbl_2



thumb_func_start LoadFromNARC_Trdata
LoadFromNARC_Trdata: @ 207938c :thumb
	ldr     r3, =LoadFromNARC+1
	mov     r2, r0
	mov     r0, r1
	mov     r1, #0x39               @ poketool/trainer/trdata.narc
	bx      r3
@ 0x2079396

.align 2
.pool
thumb_func_end LoadFromNARC_Trdata



thumb_func_start LoadFromNARC_Trpoke
LoadFromNARC_Trpoke: @ 207939c :thumb
	ldr     r3, =LoadFromNARC+1
	mov     r2, r0
	mov     r0, r1
	mov     r1, #0x3a               @ poketool/trainer/trpoke.narc
	bx      r3
@ 0x20793a6

.align 2
.pool
thumb_func_end LoadFromNARC_Trpoke



.thumb
Function_20793ac: @ 20793ac :thumb
	ldr     r1, =Unknown_20f0714
	ldrb    r0, [r1, r0]
	bx      lr
@ 0x20793b2

.align 2
.pool



thumb_func_start LoadTrainerPokemon
LoadTrainerPokemon: @ 20793b8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x68
	mov     r7, r1
	mov     r4, r0

	str     r2, [sp, #0x10]
	bl      GetPRNGSeed
	lsl     r6, r7, #2
	str     r0, [sp, #0x54]

	add     r0, r4, r6
	ldr     r0, [r0, #0x4]
	mov     r1, #0x6
	bl      ZeroFillPkmnPartyStructure

	ldr     r0, [sp, #0x10]
	mov     r1, #0x6c
	bl      malloc
	str     r0, [sp, #0x60]

	ldr     r0, [sp, #0x10]
	bl      AllocPkmnData
	str     r0, [sp, #0x50]

	add     r0, r4, r6
	ldr     r0, [r0, #0x18]
	ldr     r1, [sp, #0x60]
	bl      LoadFromNARC_Trpoke

	mov     r0, #0x34
	mov     r5, r7
	mul     r5, r0
	add     r0, r4, r5
	add     r0, #0x29
	ldrb    r0, [r0, #0x0]
	bl      Function_20793ac
	cmp     r0, #0x1
	bne     branch_207940a
	mov     r0, #0x78
	str     r0, [sp, #0x14]
	b       branch_207940e

branch_207940a: @ 207940a :thumb
	mov     r0, #0x88
	str     r0, [sp, #0x14]
branch_207940e: @ 207940e :thumb
	add     r0, r4, r5
	add     r0, #0x28
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x3
	bhi     branch_20794f2
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2079424

Jumppoints_2079424:
.hword loadTrainerPokemonStruct0 - Jumppoints_2079424 - 2
.hword loadTrainerPokemonStruct1 - Jumppoints_2079424 - 2
.hword loadTrainerPokemonStruct2 - Jumppoints_2079424 - 2
.hword loadTrainerPokemonStruct3 - Jumppoints_2079424 - 2

loadTrainerPokemonStruct0: @ 207942c :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x5c]
	add     r0, r4, r5
	add     r0, #0x2b
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	ble     branch_20794f2
	add     r0, r4, r6
	ldr     r7, [sp, #0x60]
	str     r0, [sp, #0x38]
branch_2079440: @ 2079440 :thumb
	ldrh    r0, [r7, #0x4]              @ PkmnData+0x4
	mov     r1, #0x3f
	lsl     r1, r1, #10
	and     r1, r0
	asr     r2, r1, #10
	add     r1, sp, #0x64
	strb    r2, [r1, #0x3]
	ldr     r1, [pc, #0x290] @ 0x20796e0, (=0x3ff)
	ldrh    r2, [r7, #0x0]              @ PkmnData+0x0
	and     r0, r1
	lsl     r0, r0, #16
	ldrh    r1, [r7, #0x2]              @ PkmnData+0x2
	lsr     r0, r0, #16
	str     r0, [sp, #0x34]
	ldr     r0, [sp, #0x38]
	add     r2, r2, r1
	ldr     r1, [sp, #0x34]
	ldr     r0, [r0, #0x18]
	add     r1, r1, r2
	add     r0, r0, r1
	str     r0, [sp, #0x58]
	bl      SetPRNGSeed
	add     r0, r4, r5
	add     r0, #0x29
	ldrb    r0, [r0, #0x0]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_207948c
branch_207947a: @ 207947a :thumb
	bl      PRNG
	str     r0, [sp, #0x58]
	add     r0, r4, r5
	add     r0, #0x29
	ldrb    r0, [r0, #0x0]
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r0
	blt     branch_207947a
branch_207948c: @ 207948c :thumb
	ldr     r0, [sp, #0x58]
	lsl     r1, r0, #8
	ldr     r0, [sp, #0x14]
	add     r6, r1, r0
	ldrh    r1, [r7, #0x0]              @ PkmnData+0x0
	mov     r0, #0x1f
	mul     r0, r1
	mov     r1, #0xff
	blx     _s32_div_f
	mov     r3, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	lsl     r3, r3, #24
	str     r6, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]

	ldrh    r2, [r7, #0x2]              @ PkmnData+0x2
	ldr     r0, [sp, #0x50]
	ldr     r1, [sp, #0x34]
	lsr     r3, r3, #24
	bl      InitPkmnData

	ldrh    r0, [r7, #0x6]              @ PkmnData+0x6
	ldr     r1, [sp, #0x50]
	ldr     r2, [sp, #0x10]
	bl      SetPokeballSeal

	add     r2, sp, #0x64
	ldr     r0, [sp, #0x50]
	mov     r1, #PKMNDATA_ALTERNATEFORM
	add     r2, #0x3
	bl      SetPkmnData

	ldr     r0, [sp, #0x38]
	ldr     r1, [sp, #0x50]
	ldr     r0, [r0, #0x4]
	bl      CopyPkmnDataToParty
	ldr     r0, [sp, #0x5c]
	add     r7, #0x8
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x5c]
	add     r0, r4, r5
	add     r0, #0x2b
	ldrb    r1, [r0, #0x0]
	ldr     r0, [sp, #0x5c]
	cmp     r0, r1
	blt     branch_2079440
branch_20794f2: @ 20794f2 :thumb
	b       branch_20797b2

loadTrainerPokemonStruct1: @ 20794f4 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x1c]
	add     r0, r4, r5
	add     r0, #0x2b
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	ble     branch_20795e0

	ldr     r0, [sp, #0x60]
	str     r0, [sp, #0x40]

	add     r0, r4, r6
	str     r0, [sp, #0x3c]
branch_207950a: @ 207950a :thumb
	ldr     r0, [sp, #0x40]         @ Get adress of PkmnData
	mov     r1, #0x3f
	ldrh    r0, [r0, #0x4]          @ PkmnData+0x4 load PkmnSpecies and AltForm
	lsl     r1, r1, #10
	and     r1, r0
	asr     r2, r1, #10
	add     r1, sp, #0x64
	strb    r2, [r1, #0x2]          @ AlternateForrm

	ldr     r1, [pc, #0x1c4] @ 0x20796e0, (=0x3ff)
	and     r0, r1
	ldr     r1, [sp, #0x40]
	lsl     r0, r0, #16
	ldrh    r2, [r1, #0x0]          @ PkmnData+0x0
	ldrh    r1, [r1, #0x2]          @ PkmnData+0x2
	lsr     r0, r0, #16
	str     r0, [sp, #0x30]         @ Species
	ldr     r0, [sp, #0x3c]
	add     r2, r2, r1
	ldr     r1, [sp, #0x30]
	ldr     r0, [r0, #0x18]
	add     r1, r1, r2
	add     r7, r0, r1
	mov     r0, r7
	bl      SetPRNGSeed

	add     r0, r4, r5
	add     r0, #0x29
	ldrb    r0, [r0, #0x0]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_207955a
branch_2079548: @ 2079548 :thumb
	bl      PRNG
	mov     r7, r0
	add     r0, r4, r5
	add     r0, #0x29
	ldrb    r0, [r0, #0x0]
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r0
	blt     branch_2079548
branch_207955a: @ 207955a :thumb
	ldr     r0, [sp, #0x14]
	lsl     r1, r7, #8
	add     r6, r1, r0
	ldr     r0, [sp, #0x40]
	ldrh    r1, [r0, #0x0]          @ PkmnData+0x0
	mov     r0, #0x1f
	mul     r0, r1
	mov     r1, #0xff
	blx     _s32_div_f
	mov     r3, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	lsl     r3, r3, #24
	str     r6, [sp, #0x4]

	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]

	ldr     r2, [sp, #0x40]
	ldr     r0, [sp, #0x50]
	ldrh    r2, [r2, #0x2]          @ PkmnData+0x2
	ldr     r1, [sp, #0x30]
	lsr     r3, r3, #24
	bl      InitPkmnData

	ldr     r7, [sp, #0x40]
	mov     r6, #0x0
branch_2079592: @ 2079592 :thumb
	ldrh    r1, [r7, #0x6]          @ PkmnData+0x6 +0x8 +0xa +0xc
	lsl     r2, r6, #24
	ldr     r0, [sp, #0x50]
	lsr     r2, r2, #24
	bl      Call_SetPkmnDataMove
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1cbf @ add r7, r7, #0x2
	cmp     r6, #0x4
	blt     branch_2079592

	ldr     r0, [sp, #0x40]
	ldr     r1, [sp, #0x50]
	ldrh    r0, [r0, #0xe]          @PkmnData+0xe
	ldr     r2, [sp, #0x10]
	bl      SetPokeballSeal

	add     r2, sp, #0x64
	ldr     r0, [sp, #0x50]
	mov     r1, #PKMNDATA_ALTERNATEFORM
	add     r2, #0x2
	bl      SetPkmnData

	ldr     r0, [sp, #0x3c]
	ldr     r1, [sp, #0x50]
	ldr     r0, [r0, #0x4]
	bl      CopyPkmnDataToParty
	ldr     r0, [sp, #0x40]
	add     r0, #0x10               @ PkmnData+0x10
	str     r0, [sp, #0x40]
	ldr     r0, [sp, #0x1c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x1c]

	add     r0, r4, r5
	add     r0, #0x2b
	ldrb    r1, [r0, #0x0]
	ldr     r0, [sp, #0x1c]
	cmp     r0, r1
	blt     branch_207950a
branch_20795e0: @ 20795e0 :thumb
	b       branch_20797b2


loadTrainerPokemonStruct2: @ 20795e2 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x20]
	add     r0, r4, r5
	add     r0, #0x2b
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	ble     branch_20796b2
	add     r0, r4, r6
	ldr     r7, [sp, #0x60]
	str     r0, [sp, #0x44]
branch_20795f6: @ 20795f6 :thumb
	ldrh    r0, [r7, #0x4]              @ PkmnData+0x4
	mov     r1, #0x3f
	lsl     r1, r1, #10
	and     r1, r0
	asr     r2, r1, #10
	add     r1, sp, #0x64
	strb    r2, [r1, #0x1]
	ldr     r1, [pc, #0xd8] @ 0x20796e0, (=0x3ff)
	ldrh    r2, [r7, #0x0]              @ PkmnData+0x0
	and     r0, r1
	lsl     r0, r0, #16
	ldrh    r1, [r7, #0x2]              @ PkmnData+0x2
	lsr     r0, r0, #16
	str     r0, [sp, #0x2c]
	ldr     r0, [sp, #0x44]
	add     r2, r2, r1
	ldr     r1, [sp, #0x2c]
	ldr     r0, [r0, #0x18]
	add     r1, r1, r2
	add     r0, r0, r1
	str     r0, [sp, #0x18]
	bl      SetPRNGSeed
	add     r0, r4, r5
	add     r0, #0x29
	ldrb    r0, [r0, #0x0]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_2079642
branch_2079630: @ 2079630 :thumb
	bl      PRNG
	str     r0, [sp, #0x18]
	add     r0, r4, r5
	add     r0, #0x29
	ldrb    r0, [r0, #0x0]
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r0
	blt     branch_2079630
branch_2079642: @ 2079642 :thumb
	ldr     r0, [sp, #0x18]
	lsl     r1, r0, #8
	ldr     r0, [sp, #0x14]
	add     r6, r1, r0
	ldrh    r1, [r7, #0x0]              @ PkmnData+0x0
	mov     r0, #0x1f
	mul     r0, r1
	mov     r1, #0xff
	blx     _s32_div_f
	mov     r3, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	lsl     r3, r3, #24
	str     r6, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldrh    r2, [r7, #0x2]              @ PkmnData+0x2

	ldr     r0, [sp, #0x50]
	ldr     r1, [sp, #0x2c]
	lsr     r3, r3, #24
	bl      InitPkmnData

	ldr     r0, [sp, #0x50]
	mov     r1, #PKMNDATA_ITEM
	add     r2, r7, #0x6                @ PkmnData+0x6
	bl      SetPkmnData

	ldrh    r0, [r7, #0x8]              @ PkmnData+0x8
	ldr     r1, [sp, #0x50]
	ldr     r2, [sp, #0x10]
	bl      SetPokeballSeal

	add     r2, sp, #0x64
	ldr     r0, [sp, #0x50]
	mov     r1, #PKMNDATA_ALTERNATEFORM
	add     r2, #0x1
	bl      SetPkmnData

	ldr     r0, [sp, #0x44]
	ldr     r1, [sp, #0x50]
	ldr     r0, [r0, #0x4]
	bl      CopyPkmnDataToParty
	ldr     r0, [sp, #0x20]
	add     r7, #0xa                @ PkmnData+0xa
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x20]
	add     r0, r4, r5
	add     r0, #0x2b
	ldrb    r1, [r0, #0x0]
	ldr     r0, [sp, #0x20]
	cmp     r0, r1
	blt     branch_20795f6
branch_20796b2: @ 20796b2 :thumb
	b       branch_20797b2


loadTrainerPokemonStruct3: @ 20796b4 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x24]
	add     r0, r4, r5
	add     r0, #0x2b
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	ble     branch_20797b2
	ldr     r0, [sp, #0x60]
	str     r0, [sp, #0x4c]
	add     r0, r4, r6
	str     r0, [sp, #0x48]
branch_20796ca: @ 20796ca :thumb
	ldr     r0, [sp, #0x4c]
	mov     r1, #0x3f
	ldrh    r0, [r0, #0x4]              @ PkmnData+0x4
	lsl     r1, r1, #10
	and     r1, r0
	asr     r2, r1, #10
	add     r1, sp, #0x64
	strb    r2, [r1, #0x0]
	ldr     r1, [pc, #0x4] @ 0x20796e0, (=0x3ff)
	b       branch_20796e4
@ 0x20796de

.align 2
.word 0x3ff @ 0x20796e0

.thumb
branch_20796e4: @ 20796e4 :thumb
	and     r0, r1
	ldr     r1, [sp, #0x4c]
	lsl     r0, r0, #16
	ldrh    r2, [r1, #0x0]              @ PkmnData+0x0
	ldrh    r1, [r1, #0x2]              @ PkmnData+0x2
	lsr     r0, r0, #16
	str     r0, [sp, #0x28]
	ldr     r0, [sp, #0x48]
	add     r2, r2, r1
	ldr     r1, [sp, #0x28]
	ldr     r0, [r0, #0x18]
	add     r1, r1, r2
	add     r7, r0, r1
	mov     r0, r7
	bl      SetPRNGSeed
	add     r0, r4, r5
	add     r0, #0x29
	ldrb    r0, [r0, #0x0]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_2079722
branch_2079710: @ 2079710 :thumb
	bl      PRNG
	mov     r7, r0
	add     r0, r4, r5
	add     r0, #0x29
	ldrb    r0, [r0, #0x0]
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r0
	blt     branch_2079710
branch_2079722: @ 2079722 :thumb
	ldr     r0, [sp, #0x14]
	lsl     r1, r7, #8
	add     r6, r1, r0
	ldr     r0, [sp, #0x4c]
	ldrh    r1, [r0, #0x0]              @ PkmnData+0x0
	mov     r0, #0x1f
	mul     r0, r1
	mov     r1, #0xff
	blx     _s32_div_f
	mov     r3, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	lsl     r3, r3, #24
	str     r6, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]

	ldr     r2, [sp, #0x4c]
	ldr     r0, [sp, #0x50]
	ldrh    r2, [r2, #0x2]              @ PkmnData+0x2
	ldr     r1, [sp, #0x28]
	lsr     r3, r3, #24
	bl      InitPkmnData

	ldr     r2, [sp, #0x4c]
	ldr     r0, [sp, #0x50]
	mov     r1, #PKMNDATA_ITEM
	.hword  0x1d92 @ add r2, r2, #0x6   @ PkmnData+0x6
	bl      SetPkmnData

	ldr     r7, [sp, #0x4c]
	mov     r6, #0x0
branch_2079766: @ 2079766 :thumb
	ldrh    r1, [r7, #0x8]              @ PkmnData+0x8 +0xa +0xc +0xe
	lsl     r2, r6, #24
	ldr     r0, [sp, #0x50]
	lsr     r2, r2, #24
	bl      Call_SetPkmnDataMove
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1cbf @ add r7, r7, #0x2
	cmp     r6, #0x4
	blt     branch_2079766

	ldr     r0, [sp, #0x4c]
	ldr     r1, [sp, #0x50]
	ldrh    r0, [r0, #0x10]             @ PkmnData+0x10
	ldr     r2, [sp, #0x10]
	bl      SetPokeballSeal

	ldr     r0, [sp, #0x50]
	mov     r1, #PKMNDATA_ALTERNATEFORM
	add     r2, sp, #0x64
	bl      SetPkmnData

	ldr     r0, [sp, #0x48]
	ldr     r1, [sp, #0x50]
	ldr     r0, [r0, #0x4]
	bl      CopyPkmnDataToParty
	ldr     r0, [sp, #0x4c]
	add     r0, #0x12                   @ PkmnData+0x12
	str     r0, [sp, #0x4c]
	ldr     r0, [sp, #0x24]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x24]
	add     r0, r4, r5
	add     r0, #0x2b
	ldrb    r1, [r0, #0x0]
	ldr     r0, [sp, #0x24]
	cmp     r0, r1
	blt     branch_20796ca
branch_20797b2: @ 20797b2 :thumb
	ldr     r0, [sp, #0x60]
	bl      free
	ldr     r0, [sp, #0x50]
	bl      free
	ldr     r0, [sp, #0x54]
	bl      SetPRNGSeed

	add     sp, #0x68
	pop     {r3-r7,pc}
thumb_func_end LoadTrainerPokemon
