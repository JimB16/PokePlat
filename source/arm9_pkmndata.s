


thumb_func_start ClearCompletePkmnDataStructure
ClearCompletePkmnDataStructure: @ 2073c2c :thumb
	push    {r4,lr}
	mov     r4, r0

	mov     r0, #0x0
	mov     r1, r4
	mov     r2, #PkmnData_Size
	blx     MIi_CpuClearFast

	mov     r0, r4
	ldrh    r2, [r4, #PkmnData_Checksum]
	add     r0, #PkmnData_Offset1
	mov     r1, #PkmnData_Size1
	bl      Call_DecryptPkmnData2

	mov     r0, r4
	ldr     r2, [r4, #PkmnData_PersonalityValue]
	add     r0, #PkmnData_Offset2
	mov     r1, #PkmnData_Size2
	bl      Call_DecryptPkmnData2

	pop     {r4,pc}
thumb_func_end ClearCompletePkmnDataStructure


thumb_func_start ClearPkmnDataStructure1
ClearPkmnDataStructure1: @ 2073c54 :thumb
	push    {r4,lr}
	mov     r4, r0

	mov     r0, #0x0
	mov     r1, r4
	mov     r2, #PkmnData_Size0+PkmnData_Size1
	blx     MIi_CpuClearFast

	mov     r0, r4
	ldrh    r2, [r4, #PkmnData_Checksum]
	add     r0, #PkmnData_Offset1
	mov     r1, #PkmnData_Size1
	bl      Call_DecryptPkmnData2

	pop     {r4,pc}
thumb_func_end ClearPkmnDataStructure1


thumb_func_start GetPkmnDataSize
GetPkmnDataSize: @ 2073c70 :thumb
	mov     r0, #PkmnData_Size
	bx      lr
thumb_func_end GetPkmnDataSize


thumb_func_start AllocPkmnData
AllocPkmnData: @ 2073c74 :thumb
	push    {r4,lr}
	mov     r1, #PkmnData_Size
	bl      malloc_maybe
	mov     r4, r0

	bl      ClearCompletePkmnDataStructure

	mov     r0, r4
	pop     {r4,pc}
thumb_func_end AllocPkmnData


thumb_func_start InitEncryptPkmnData
InitEncryptPkmnData: @ 2073c88 :thumb
	push    {r3-r5,lr}
	mov     r5, r0

	ldrh    r0, [r5, #PkmnData_4]
	mov     r4, #0x0
	lsl     r1, r0, #31
	lsr     r1, r1, #31
	bne     branch_2073cce

	lsl     r0, r0, #30
	mov     r4, #0x1
	lsr     r0, r0, #31
	beq     branch_2073ca2
	bl      ErrorHandling
branch_2073ca2: @ 2073ca2 :thumb

	ldrh    r1, [r5, #PkmnData_4]
	mov     r0, #PkmnData_4_Bit0
	bic     r1, r0
	mov     r0, #PkmnData_4_Bit0
	orr     r0, r1
	strh    r0, [r5, #PkmnData_4]
	ldrh    r1, [r5, #PkmnData_4]
	mov     r0, #PkmnData_4_Bit1
	orr     r0, r1
	strh    r0, [r5, #PkmnData_4]

	mov     r0, r5
	ldr     r2, [r5, #PkmnData_PersonalityValue]
	add     r0, #PkmnData_Offset2
	mov     r1, #PkmnData_Size2
	bl      Call_DecryptPkmnData3

	mov     r0, r5
	ldrh    r2, [r5, #PkmnData_Checksum]
	add     r0, #PkmnData_Offset1
	mov     r1, #PkmnData_Size1
	bl      Call_DecryptPkmnData3
branch_2073cce: @ 2073cce :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
thumb_func_end InitEncryptPkmnData


thumb_func_start InitEncryptPkmnData_Part1And2
InitEncryptPkmnData_Part1And2: @ 2073cd4 :thumb
	push    {r3-r5,lr}

	mov     r5, r0
	ldrh    r2, [r5, #PkmnData_4]
	mov     r4, #0x0
	lsl     r0, r2, #31
	lsr     r0, r0, #31
	cmp     r0, #0x1
	bne     branch_2073d1c
	cmp     r1, #0x1
	bne     branch_2073d1c

	mov     r0, #PkmnData_4_Bit0
	bic     r2, r0
	strh    r2, [r5, #PkmnData_4]

	ldrh    r1, [r5, #PkmnData_4]
	mov     r0, #PkmnData_4_Bit1
	mov     r4, #0x1
	bic     r1, r0
	strh    r1, [r5, #PkmnData_4]

	mov     r0, r5
	ldr     r2, [r5, #PkmnData_PersonalityValue]
	add     r0, #PkmnData_Offset2
	mov     r1, #PkmnData_Size2
	bl      Call_DecryptPkmnData2

	mov     r0, r5
	add     r0, #PkmnData_Offset1
	mov     r1, #PkmnData_Size1
	bl      CalcPokemonChecksum
	strh    r0, [r5, #PkmnData_Checksum]

	mov     r0, r5
	ldrh    r2, [r5, #PkmnData_Checksum]
	add     r0, #PkmnData_Offset1
	mov     r1, #PkmnData_Size1
	bl      Call_DecryptPkmnData2

branch_2073d1c: @ 2073d1c :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
thumb_func_end InitEncryptPkmnData_Part1And2


thumb_func_start InitEncryptPkmnData_Part1
InitEncryptPkmnData_Part1: @ 2073d20 :thumb
	push    {r4,lr}
	mov     r2, r0
	ldrh    r1, [r2, #PkmnData_4]
	mov     r4, #0x0
	lsl     r0, r1, #30
	lsr     r0, r0, #31
	bne     branch_2073d42

	mov     r0, #PkmnData_4_Bit1
	orr     r0, r1
	strh    r0, [r2, #PkmnData_4]

	mov     r0, r2
	ldrh    r2, [r2, #PkmnData_Checksum]
	add     r0, #PkmnData_Offset1
	mov     r1, #PkmnData_Size1
	mov     r4, #0x1
	bl      Call_DecryptPkmnData3

branch_2073d42: @ 2073d42 :thumb
	mov     r0, r4
	pop     {r4,pc}
thumb_func_end InitEncryptPkmnData_Part1


thumb_func_start InitEncryptPkmnData_Part1Again
InitEncryptPkmnData_Part1Again: @ 2073d48 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldrh    r2, [r5, #PkmnData_4]
	mov     r4, #0x0
	lsl     r0, r2, #30
	lsr     r0, r0, #31
	cmp     r0, #0x1
	bne     branch_2073d7c
	cmp     r1, #0x1
	bne     branch_2073d7c

	mov     r0, #PkmnData_4_Bit1
	bic     r2, r0
	mov     r0, r5
	strh    r2, [r5, #PkmnData_4]

	add     r0, #PkmnData_Offset1
	mov     r1, #PkmnData_Size1
	mov     r4, #0x1
	bl      CalcPokemonChecksum
	strh    r0, [r5, #PkmnData_Checksum]

	mov     r0, r5
	ldrh    r2, [r5, #PkmnData_Checksum]
	add     r0, #PkmnData_Offset1
	mov     r1, #PkmnData_Size1
	bl      Call_DecryptPkmnData2
branch_2073d7c: @ 2073d7c :thumb

	mov     r0, r4
	pop     {r3-r5,pc}
thumb_func_end InitEncryptPkmnData_Part1Again


/* Input:
r1 = Species
r2 = Level
*/
thumb_func_start InitPkmnData
InitPkmnData: @ 2073d80 :thumb
	push    {r0-r3}
	push    {r3-r6,lr}
	add     sp, #-0x2c
	mov     r5, r0
	mov     r4, r1
	mov     r6, r3

	bl      ClearCompletePkmnDataStructure

	ldr     r0, [sp, #0x50]
	mov     r1, r4
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x54]
	mov     r3, r6
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x58]
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x5c]
	str     r0, [sp, #0xc]
	ldr     r2, [sp, #0x48]
	mov     r0, r5
	bl      InitPkmnDataStructure

	mov     r0, r5
	add     r0, #PkmnData_Offset2
	mov     r1, #PkmnData_Size2
	mov     r2, #0x0
	bl      Call_DecryptPkmnData2

	mov     r0, r5
	ldr     r2, [r5, #PkmnData_PersonalityValue]
	add     r0, #PkmnData_Offset2
	mov     r1, #PkmnData_Size2
	bl      Call_DecryptPkmnData2

	mov     r0, r5
	mov     r1, #PKMNDATA_LEVEL
	add     r2, sp, #0x48
	bl      SetPkmnData

	mov     r0, #0x0
	bl      Function_202818c
	mov     r4, r0

	mov     r0, r5
	mov     r1, #PKMNDATA_aa
	mov     r2, r4
	bl      SetPkmnData

	mov     r0, r4
	bl      free

	mov     r0, #0x0
	str     r0, [sp, #0x10]

	mov     r0, r5
	mov     r1, #PKMNDATA_CAPSULEINDEXSEALS
	add     r2, sp, #0x10
	bl      SetPkmnData

	mov     r0, #0x0
	add     r1, sp, #0x14
	mov     r2, #0x18
	blx     MIi_CpuClearFast

	mov     r0, r5
	mov     r1, #PKMNDATA_SEALCOORDINATES
	add     r2, sp, #0x14
	bl      SetPkmnData

	mov     r0, r5
	bl      Function_207418c

	add     sp, #0x2c
	pop     {r3-r6}
	pop     {r3}
	add     sp, #0x10
	bx      r3
thumb_func_end InitPkmnData


thumb_func_start InitPkmnDataStructure
InitPkmnDataStructure: @ 2073e18 :thumb
	push    {r0-r3}
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0

	bl      ClearPkmnDataStructure1

	mov     r0, r5
	bl      InitEncryptPkmnData_Part1
	str     r0, [sp, #0x0]

	ldr     r0, [sp, #0x30]
	cmp     r0, #0x0
	bne     branch_2073e42

	bl      PRNG
	mov     r4, r0
	bl      PRNG
	lsl     r0, r0, #16
	orr     r0, r4
	str     r0, [sp, #0x34]

branch_2073e42: @ 2073e42 :thumb
	mov     r0, r5
	mov     r1, #PKMNDATA_PERSONALITYVALUE
	add     r2, sp, #0x34
	bl      SetPkmnData2

	ldr     r0, [sp, #0x38]
	cmp     r0, #0x2
	bne     branch_2073e8a
	ldr     r7, =0xffff0000
	mov     r6, r7
branch_2073e56: @ 2073e56 :thumb
	bl      PRNG
	mov     r4, r0
	bl      PRNG
	ldr     r1, [sp, #0x34]
	lsl     r0, r0, #16
	mov     r3, r4
	orr     r3, r0
	lsl     r0, r1, #16
	lsr     r2, r0, #16
	mov     r0, r1
	and     r0, r7
	lsr     r1, r0, #16
	mov     r0, r3
	str     r3, [sp, #0x3c]
	and     r0, r6
	lsl     r3, r3, #16
	lsr     r0, r0, #16
	lsr     r3, r3, #16
	eor     r0, r3
	eor     r0, r1
	eor     r0, r2
	cmp     r0, #0x8
	blo     branch_2073e56
	b       branch_2073e92

branch_2073e8a: @ 2073e8a :thumb
	cmp     r0, #0x1
	beq     branch_2073e92
	mov     r0, #0x0
	str     r0, [sp, #0x3c]
branch_2073e92: @ 2073e92 :thumb

	mov     r0, r5
	mov     r1, #PKMNDATA_OTID
	add     r2, sp, #0x3c
	bl      SetPkmnData2

	ldr     r2, =CountryOfOriginValue
	mov     r0, r5
	mov     r1, #PKMNDATA_COUNTRYOFORIGIN
	bl      SetPkmnData2

	mov     r0, r5
	mov     r1, #PKMNDATA_SPECIES
	add     r2, sp, #0x24
	bl      SetPkmnData2

	mov     r0, r5
	mov     r1, #PKMNDATA_b3
	mov     r2, #0x0
	bl      SetPkmnData2

	ldr     r0, [sp, #0x24]
	ldr     r1, [sp, #0x28]
	bl      GetBaseExpPts
	str     r0, [sp, #0x8]

	mov     r0, r5
	mov     r1, #PKMNDATA_EXPPTS
	add     r2, sp, #0x8
	bl      SetPkmnData2

	ldr     r0, [sp, #0x24]
	mov     r1, #PKMNBASEDATA_BASEHAPPY
	bl      GetPkmnBaseData1
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r1, #PKMNDATA_FRIENDSHIP
	add     r2, sp, #0x8
	bl      SetPkmnData2

	mov     r0, r5
	mov     r1, #PKMNDATA_METATLEVEL
	add     r2, sp, #0x28
	bl      SetPkmnData2

	ldr     r2, =GameIDNr
	mov     r0, r5
	mov     r1, #PKMNDATA_ORIGINGAME
	bl      SetPkmnData2

	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r1, #PKMNDATA_POKEBALL
	add     r2, sp, #0x8
	bl      SetPkmnData2

	ldr     r0, [sp, #0x2c]
	cmp     r0, #0x20
	bge     branch_2073f48

	mov     r0, r5
	mov     r1, #PKMNDATA_IVHP
	add     r2, sp, #0x2c
	bl      SetPkmnData2

	mov     r0, r5
	mov     r1, #PKMNDATA_IVATK
	add     r2, sp, #0x2c
	bl      SetPkmnData2

	mov     r0, r5
	mov     r1, #PKMNDATA_IVDEF
	add     r2, sp, #0x2c
	bl      SetPkmnData2

	mov     r0, r5
	mov     r1, #PKMNDATA_IVSPE
	add     r2, sp, #0x2c
	bl      SetPkmnData2

	mov     r0, r5
	mov     r1, #PKMNDATA_IVSPA
	add     r2, sp, #0x2c
	bl      SetPkmnData2

	mov     r0, r5
	mov     r1, #PKMNDATA_IVSPD
	add     r2, sp, #0x2c
	bl      SetPkmnData2

	b       branch_2073fcc

branch_2073f48: @ 2073f48 :thumb
	bl      PRNG
	mov     r1, #0x1f
	str     r0, [sp, #0x8]
	and     r0, r1
	str     r0, [sp, #0x4]

	mov     r0, r5
	mov     r1, #PKMNDATA_IVHP
	add     r2, sp, #0x4
	bl      SetPkmnData2

	mov     r0, #0x3e
	ldr     r1, [sp, #0x8]
	lsl     r0, r0, #4
	and     r0, r1
	lsr     r0, r0, #5
	str     r0, [sp, #0x4]

	mov     r0, r5
	mov     r1, #PKMNDATA_IVATK
	add     r2, sp, #0x4
	bl      SetPkmnData2

	mov     r0, #0x1f
	ldr     r1, [sp, #0x8]
	lsl     r0, r0, #10
	and     r0, r1
	lsr     r0, r0, #10
	str     r0, [sp, #0x4]

	mov     r0, r5
	mov     r1, #PKMNDATA_IVDEF
	add     r2, sp, #0x4
	bl      SetPkmnData2

	bl      PRNG
	mov     r1, #0x1f
	str     r0, [sp, #0x8]
	and     r0, r1
	str     r0, [sp, #0x4]

	mov     r0, r5
	mov     r1, #PKMNDATA_IVSPE
	add     r2, sp, #0x4
	bl      SetPkmnData2

	mov     r0, #0x3e
	ldr     r1, [sp, #0x8]
	lsl     r0, r0, #4
	and     r0, r1
	lsr     r0, r0, #5
	str     r0, [sp, #0x4]

	mov     r0, r5
	mov     r1, #PKMNDATA_IVSPA
	add     r2, sp, #0x4
	bl      SetPkmnData2

	mov     r0, #0x1f
	ldr     r1, [sp, #0x8]
	lsl     r0, r0, #10
	and     r0, r1
	lsr     r0, r0, #10
	str     r0, [sp, #0x4]

	mov     r0, r5
	mov     r1, #PKMNDATA_IVSPD
	add     r2, sp, #0x4
	bl      SetPkmnData2
branch_2073fcc: @ 2073fcc :thumb


	ldr     r0, [sp, #0x24]
	mov     r1, #PKMNBASEDATA_ABILITY1
	bl      GetPkmnBaseData1
	str     r0, [sp, #0x8]

	ldr     r0, [sp, #0x24]
	mov     r1, #PKMNBASEDATA_ABILITY2
	bl      GetPkmnBaseData1
	str     r0, [sp, #0x4]

	cmp     r0, #0x0
	beq     no2ndAbility
	ldr     r1, [sp, #0x34] @ PersonalityValue
	mov     r0, #0x1
	tst     r0, r1
	beq     set2ndAbility

	mov     r0, r5
	mov     r1, #PKMNDATA_ABILITY
	add     r2, sp, #0x4
	bl      SetPkmnData2
	b       skipset2ndAbility

set2ndAbility: @ 2073ff8 :thumb
	mov     r0, r5
	mov     r1, #PKMNDATA_ABILITY
	add     r2, sp, #0x8
	bl      SetPkmnData2
	b       skipset2ndAbility

no2ndAbility: @ 2074004 :thumb
	mov     r0, r5
	mov     r1, #PKMNDATA_ABILITY
	add     r2, sp, #0x8
	bl      SetPkmnData2
skipset2ndAbility: @ 207400e :thumb


	mov     r0, r5
	bl      DecidePkmnGender
	str     r0, [sp, #0x8]

	mov     r0, r5
	mov     r1, #PKMNDATA_GENDER
	add     r2, sp, #0x8
	bl      SetPkmnData2

	mov     r0, r5
	bl      InitPkmnMovesFromWotbl

	ldr     r1, [sp, #0x0]
	mov     r0, r5
	bl      InitEncryptPkmnData_Part1Again

	add     sp, #0xc
	pop     {r4-r7}
	pop     {r3}
	add     sp, #0x10
	bx      r3
@ 0x2074038

.align 2
.pool
thumb_func_end InitPkmnDataStructure



thumb_func_start Function_2074044
Function_2074044: @ 2074044 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18

	str     r2, [sp, #0x10]
	str     r3, [sp, #0x14]
	ldr     r4, [sp, #0x30]
	mov     r6, r0
	mov     r7, r1
branch_2074052: @ 2074052 :thumb
	bl      PRNG
	mov     r5, r0
	bl      PRNG
	lsl     r0, r0, #16
	orr     r5, r0
	mov     r0, r5
	bl      PkmnData_DivBy25
	cmp     r4, r0
	bne     branch_2074052
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r5, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldr     r2, [sp, #0x10]
	ldr     r3, [sp, #0x14]
	mov     r0, r6
	mov     r1, r7
	bl      InitPkmnData

	add     sp, #0x18
	pop     {r3-r7,pc}
thumb_func_end Function_2074044


thumb_func_start Function_2074088
Function_2074088: @ 2074088 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24

	str     r1, [sp, #0x14]
	str     r2, [sp, #0x18]
	str     r3, [sp, #0x1c]
	str     r0, [sp, #0x10]
	add     r0, sp, #0x28
	ldrb    r0, [r0, #0x18]
	ldr     r6, [sp, #0x38]
	ldr     r7, [sp, #0x3c]
	cmp     r0, #0x0
	beq     branch_2074100
	cmp     r0, #0x1d
	bhs     branch_2074100
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [sp, #0x20]
branch_20740a8: @ 20740a8 :thumb
	bl      PRNG
	mov     r4, r0
	bl      PRNG
	lsl     r0, r0, #16
	orr     r4, r0
	mov     r3, #0x3
	lsl     r3, r3, #16
	and     r3, r4
	mov     r0, #0x3
	mov     r2, r4
	and     r2, r0
	lsl     r0, r0, #8
	and     r0, r4
	lsr     r1, r0, #6
	mov     r0, #0x3
	lsl     r0, r0, #24
	and     r0, r4
	lsr     r0, r0, #18
	lsr     r3, r3, #12
	orr     r0, r3
	orr     r0, r1
	orr     r0, r2
	mov     r1, #0x1c
	blx     _u32_div_f
	lsl     r0, r1, #16
	lsr     r5, r0, #16
	mov     r0, r4
	bl      PkmnData_DivBy25
	cmp     r7, r0
	bne     branch_20740a8
	ldr     r0, [sp, #0x14]
	mov     r1, r4
	bl      Function_2075dac
	cmp     r6, r0
	bne     branch_20740a8
	ldr     r0, [sp, #0x20]
	cmp     r5, r0
	bne     branch_20740a8
	b       branch_207410c

branch_2074100: @ 2074100 :thumb
	ldr     r0, [sp, #0x14]
	mov     r1, r6
	mov     r2, r7
	bl      GetPkmnGender
	mov     r4, r0
branch_207410c: @ 207410c :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r4, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	ldr     r1, [sp, #0x14]
	ldr     r2, [sp, #0x18]
	ldr     r3, [sp, #0x1c]
	bl      InitPkmnData

	add     sp, #0x24
	pop     {r4-r7,pc}
thumb_func_end Function_2074088


thumb_func_start GetPkmnGender
GetPkmnGender: @ 2074128 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, #PKMNBASEDATA_GENDER
	mov     r4, r2
	bl      GetPkmnBaseData1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	beq     branch_2074154      @ 100% male

	cmp     r0, #0xfe           @ 100% female
	beq     branch_2074154

	cmp     r0, #0xff           @ Genderless
	beq     branch_2074154

	cmp     r5, #0x0
	bne     branch_2074154

	mov     r1, #25
	blx     _s32_div_f
	add     r1, r0, #0x1
	mov     r0, #25
	mul     r0, r1
	add     r4, r0, r4

branch_2074154: @ 2074154 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
thumb_func_end GetPkmnGender


thumb_func_start Function_2074158
Function_2074158: @ 2074158 :thumb
	push    {r0-r3}
Function_207415a: @ 207415a :thumb
	push    {r4,lr}
	add     sp, #-0x10

	mov     r3, #0x1
	str     r3, [sp, #0x0]
	ldr     r3, [sp, #0x28]
	mov     r4, r0
	str     r3, [sp, #0x4]
	mov     r3, #0x0
	str     r3, [sp, #0x8]
	str     r3, [sp, #0xc]
	bl      InitPkmnData

	mov     r0, r4
	mov     r1, #PKMNDATA_af
	add     r2, sp, #0x24
	bl      SetPkmnData

	mov     r0, r4
	bl      Function_207418c

	add     sp, #0x10
	pop     {r4}
	pop     {r3}
	add     sp, #0x10
	bx      r3
thumb_func_end Function_2074158


thumb_func_start Function_207418c
Function_207418c: @ 207418c :thumb
	push    {r3-r5,lr}
	mov     r5, r0

	bl      InitEncryptPkmnData
	mov     r4, r0

	mov     r0, r5
	bl      Call_InitPkmnLevel
	str     r0, [sp, #0x0]

	mov     r0, r5
	mov     r1, #PKMNDATA_LEVEL
	add     r2, sp, #0x0
	bl      SetPkmnData

	mov     r0, r5
	bl      CalcPkmnStats

	mov     r0, r5
	mov     r1, r4
	bl      InitEncryptPkmnData_Part1And2

	pop     {r3-r5,pc}
thumb_func_end Function_207418c


thumb_func_start CalcPkmnStats
CalcPkmnStats: @ 20741b8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x58
	mov     r5, r0
	bl      InitEncryptPkmnData
	str     r0, [sp, #0x0]

	mov     r0, r5
	mov     r1, #PKMNDATA_LEVEL
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r4, r0

	mov     r0, r5
	mov     r1, #PKMNDATA_MAXHP
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0x2c]

	mov     r0, r5
	mov     r1, #PKMNDATA_CURHP
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0x54]

	mov     r0, r5
	mov     r1, #PKMNDATA_IVHP
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0x30]

	mov     r0, r5
	mov     r1, #PKMNDATA_EVHP
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0x34]

	mov     r0, r5
	mov     r1, #PKMNDATA_IVATK
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0x28]

	mov     r0, r5
	mov     r1, #PKMNDATA_EVATK
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0x14]

	mov     r0, r5
	mov     r1, #PKMNDATA_IVDEF
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0x24]

	mov     r0, r5
	mov     r1, #PKMNDATA_EVDEF
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0x10]

	mov     r0, r5
	mov     r1, #PKMNDATA_IVSPE
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0x20]

	mov     r0, r5
	mov     r1, #PKMNDATA_EVSPE
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0xc]

	mov     r0, r5
	mov     r1, #PKMNDATA_IVSPA
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0x1c]

	mov     r0, r5
	mov     r1, #PKMNDATA_EVSPA
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0x8]

	mov     r0, r5
	mov     r1, #PKMNDATA_IVSPD
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0x18]

	mov     r0, r5
	mov     r1, #PKMNDATA_EVSPD
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0x4]

	mov     r0, r5
	mov     r1, #PKMNDATA_ALTERNATEFORM
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0x38]

	mov     r0, r5
	mov     r1, #PKMNDATA_SPECIES
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r7, r0

	mov     r0, #0x0
	mov     r1, #0x2c
	bl      malloc_maybe
	mov     r6, r0

	ldr     r1, [sp, #0x38]
	mov     r0, r7
	mov     r2, r6
	bl      LoadFromNARC_PlPersonal2

	mov     r0, #0x49
	lsl     r0, r0, #2
	cmp     r7, r0
	bne     branch_20742b0
	mov     r0, #0x1
	b       branch_20742d2

branch_20742b0: @ 20742b0 :thumb
	ldr     r0, [sp, #0x34]
	asr     r0, r0, #1
	lsr     r1, r0, #30
	ldr     r0, [sp, #0x34]
	add     r1, r0, r1
	asr     r0, r1, #2
	ldrb    r1, [r6, #0x0]
	lsl     r2, r1, #1
	ldr     r1, [sp, #0x30]
	add     r1, r1, r2
	add     r0, r0, r1
	mul     r0, r4
	mov     r1, #100
	blx     _s32_div_f
	add     r0, r4, r0
	add     r0, #0xa
branch_20742d2: @ 20742d2 :thumb
	str     r0, [sp, #0x50]

	mov     r0, r5
	mov     r1, #PKMNDATA_MAXHP
	add     r2, sp, #0x50
	bl      SetPkmnData

	ldr     r0, [sp, #0x14]
	asr     r0, r0, #1
	lsr     r1, r0, #30
	ldr     r0, [sp, #0x14]
	add     r1, r0, r1
	asr     r0, r1, #2
	ldrb    r1, [r6, #0x1]
	lsl     r2, r1, #1
	ldr     r1, [sp, #0x28]
	add     r1, r1, r2
	add     r0, r0, r1
	mul     r0, r4
	mov     r1, #100
	blx     _s32_div_f

	.hword  0x1d40 @ add r0, r0, #0x5
	str     r0, [sp, #0x4c]
	mov     r0, r5
	bl      Function_2075bcc
	ldr     r1, [sp, #0x4c]
	mov     r2, #0x1
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	bl      Function_2075c0c
	str     r0, [sp, #0x4c]

	mov     r0, r5
	mov     r1, #PKMNDATA_ATK
	add     r2, sp, #0x4c
	bl      SetPkmnData

	ldr     r0, [sp, #0x10]
	asr     r0, r0, #1
	lsr     r1, r0, #30
	ldr     r0, [sp, #0x10]
	add     r1, r0, r1
	asr     r0, r1, #2
	ldrb    r1, [r6, #0x2]
	lsl     r2, r1, #1
	ldr     r1, [sp, #0x24]
	add     r1, r1, r2
	add     r0, r0, r1
	mul     r0, r4
	mov     r1, #100
	blx     _s32_div_f
	.hword  0x1d40 @ add r0, r0, #0x5
	str     r0, [sp, #0x48]
	mov     r0, r5
	bl      Function_2075bcc
	ldr     r1, [sp, #0x48]
	mov     r2, #0x2
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	bl      Function_2075c0c
	str     r0, [sp, #0x48]

	mov     r0, r5
	mov     r1, #PKMNDATA_DEF
	add     r2, sp, #0x48
	bl      SetPkmnData

	ldr     r0, [sp, #0xc]
	asr     r0, r0, #1
	lsr     r1, r0, #30
	ldr     r0, [sp, #0xc]
	add     r1, r0, r1
	asr     r0, r1, #2
	ldrb    r1, [r6, #0x3]
	lsl     r2, r1, #1
	ldr     r1, [sp, #0x20]
	add     r1, r1, r2
	add     r0, r0, r1
	mul     r0, r4
	mov     r1, #100
	blx     _s32_div_f
	.hword  0x1d40 @ add r0, r0, #0x5
	str     r0, [sp, #0x44]
	mov     r0, r5
	bl      Function_2075bcc
	ldr     r1, [sp, #0x44]
	mov     r2, #0x3
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	bl      Function_2075c0c
	str     r0, [sp, #0x44]

	mov     r0, r5
	mov     r1, #PKMNDATA_SPE
	add     r2, sp, #0x44
	bl      SetPkmnData

	ldr     r0, [sp, #0x8]
	asr     r0, r0, #1
	lsr     r1, r0, #30
	ldr     r0, [sp, #0x8]
	add     r1, r0, r1
	asr     r0, r1, #2
	ldrb    r1, [r6, #0x4]
	lsl     r2, r1, #1
	ldr     r1, [sp, #0x1c]
	add     r1, r1, r2
	add     r0, r0, r1
	mul     r0, r4
	mov     r1, #100
	blx     _s32_div_f
	.hword  0x1d40 @ add r0, r0, #0x5
	str     r0, [sp, #0x40]
	mov     r0, r5
	bl      Function_2075bcc
	ldr     r1, [sp, #0x40]
	mov     r2, #0x4
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	bl      Function_2075c0c
	str     r0, [sp, #0x40]

	mov     r0, r5
	mov     r1, #PKMNDATA_SPA
	add     r2, sp, #0x40
	bl      SetPkmnData

	ldr     r0, [sp, #0x4]
	asr     r0, r0, #1
	lsr     r1, r0, #30
	ldr     r0, [sp, #0x4]
	add     r1, r0, r1
	asr     r0, r1, #2
	ldrb    r1, [r6, #0x5]
	lsl     r2, r1, #1
	ldr     r1, [sp, #0x18]
	add     r1, r1, r2
	add     r0, r0, r1
	mul     r0, r4
	mov     r1, #100
	blx     _s32_div_f
	.hword  0x1d40 @ add r0, r0, #0x5
	str     r0, [sp, #0x3c]
	mov     r0, r5
	bl      Function_2075bcc
	ldr     r1, [sp, #0x3c]
	mov     r2, #0x5
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	bl      Function_2075c0c
	str     r0, [sp, #0x3c]

	mov     r0, r5
	mov     r1, #PKMNDATA_SPD
	add     r2, sp, #0x3c
	bl      SetPkmnData

	mov     r0, r6
	bl      free
	ldr     r1, [sp, #0x54]
	cmp     r1, #0x0
	bne     branch_2074430
	ldr     r0, [sp, #0x2c]
	cmp     r0, #0x0
	bne     branch_2074454
branch_2074430: @ 2074430 :thumb
	mov     r0, #0x49
	lsl     r0, r0, #2
	cmp     r7, r0
	bne     branch_207443e
	mov     r0, #0x1
	str     r0, [sp, #0x54]
	b       branch_2074454

branch_207443e: @ 207443e :thumb
	cmp     r1, #0x0
	bne     branch_2074448
	ldr     r0, [sp, #0x50]
	str     r0, [sp, #0x54]
	b       branch_2074454

branch_2074448: @ 2074448 :thumb
	ldr     r1, [sp, #0x50]
	ldr     r0, [sp, #0x2c]
	ldr     r2, [sp, #0x54]
	sub     r0, r1, r0
	add     r0, r2, r0
	str     r0, [sp, #0x54]
branch_2074454: @ 2074454 :thumb
	ldr     r0, [sp, #0x54]
	cmp     r0, #0x0
	beq     branch_2074464
	mov     r0, r5
	mov     r1, #PKMNDATA_CURHP
	add     r2, sp, #0x54
	bl      SetPkmnData

branch_2074464: @ 2074464 :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	bl      InitEncryptPkmnData_Part1And2
	add     sp, #0x58
	pop     {r3-r7,pc}
thumb_func_end CalcPkmnStats


/*
Input:
r0: source address
r1: offset (index id)
r2: ?

Return:
r0: return value
*/
thumb_func_start GetPkmnData
GetPkmnData: @ 2074470 :thumb
	push    {r4-r6,lr}

	mov     r5, r0
	ldrh    r0, [r5, #PkmnData_4]
	mov     r4, r1
	mov     r6, r2
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	bne     branch_20744b8

	mov     r0, r5
	ldr     r2, [r5, #PkmnData_PersonalityValue]
	add     r0, #PkmnData_Offset2
	mov     r1, #PkmnData_Size2
	bl      Call_DecryptPkmnData3

	mov     r0, r5
	ldrh    r2, [r5, #PkmnData_Checksum]
	add     r0, #PkmnData_Offset1
	mov     r1, #PkmnData_Size1
	bl      Call_DecryptPkmnData3

	mov     r0, r5
	add     r0, #PkmnData_Offset1
	mov     r1, #PkmnData_Size1
	bl      CalcPokemonChecksum
	ldrh    r1, [r5, #PkmnData_Checksum]
	cmp     r0, r1
	beq     branch_20744b8          @ Compare given and calculated Checksum

	cmp     r0, r1
	beq     branch_20744b0
	bl      ErrorHandling
branch_20744b0: @ 20744b0 :thumb
	ldrh    r1, [r5, #PkmnData_4]
	mov     r0, #PkmnData_4_Bit2
	orr     r0, r1
	strh    r0, [r5, #PkmnData_4]
branch_20744b8: @ 20744b8 :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      ReadPkmnData2
	mov     r4, r0

	ldrh    r0, [r5, #PkmnData_4]
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	bne     branch_20744e4

	mov     r0, r5
	ldr     r2, [r5, #PkmnData_PersonalityValue]
	add     r0, #PkmnData_Offset2
	mov     r1, #PkmnData_Size2
	bl      Call_DecryptPkmnData2

	mov     r0, r5
	ldrh    r2, [r5, #PkmnData_Checksum]
	add     r0, #PkmnData_Offset1
	mov     r1, #PkmnData_Size1
	bl      Call_DecryptPkmnData2
branch_20744e4: @ 20744e4 :thumb

	mov     r0, r4
	pop     {r4-r6,pc}
thumb_func_end GetPkmnData


thumb_func_start ReadPkmnData2
ReadPkmnData2: @ 20744e8 :thumb
	push    {r3,lr}
	mov     r3, r1
	sub     r3, #0xa0
	cmp     r3, #0xb
	bhi     branch_207456a
	add     r3, r3, r3
	add     r3, pc
	ldrh    r3, [r3, #0x6]
	lsl     r3, r3, #16
	asr     r3, r3, #16
	add     pc, r3
@ 0x20744fe

Jumppoints_20744fe:
.hword branch_2074516 - Jumppoints_20744fe - 2
.hword branch_207451c - Jumppoints_20744fe - 2
.hword branch_2074522 - Jumppoints_20744fe - 2
.hword branch_2074528 - Jumppoints_20744fe - 2
.hword branch_207452e - Jumppoints_20744fe - 2
.hword branch_2074534 - Jumppoints_20744fe - 2
.hword branch_207453a - Jumppoints_20744fe - 2
.hword branch_2074540 - Jumppoints_20744fe - 2
.hword branch_2074546 - Jumppoints_20744fe - 2
.hword branch_207454c - Jumppoints_20744fe - 2
.hword branch_2074552 - Jumppoints_20744fe - 2
.hword branch_207455e - Jumppoints_20744fe - 2

branch_2074516: @ 2074516 :thumb
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	pop     {r3,pc}

branch_207451c: @ 207451c :thumb
	add     r0, #0x8c
	ldrb    r0, [r0, #0x0]
	pop     {r3,pc}

branch_2074522: @ 2074522 :thumb
	add     r0, #0x8d
	ldrb    r0, [r0, #0x0]
	pop     {r3,pc}

branch_2074528: @ 2074528 :thumb
	add     r0, #0x8e
	ldrh    r0, [r0, #0x0]
	pop     {r3,pc}

branch_207452e: @ 207452e :thumb
	add     r0, #0x90
	ldrh    r0, [r0, #0x0]
	pop     {r3,pc}

branch_2074534: @ 2074534 :thumb
	add     r0, #0x92
	ldrh    r0, [r0, #0x0]
	pop     {r3,pc}

branch_207453a: @ 207453a :thumb
	add     r0, #0x94
	ldrh    r0, [r0, #0x0]
	pop     {r3,pc}

branch_2074540: @ 2074540 :thumb
	add     r0, #0x96
	ldrh    r0, [r0, #0x0]
	pop     {r3,pc}

branch_2074546: @ 2074546 :thumb
	add     r0, #0x98
	ldrh    r0, [r0, #0x0]
	pop     {r3,pc}

branch_207454c: @ 207454c :thumb
	add     r0, #0x9a
	ldrh    r0, [r0, #0x0]
	pop     {r3,pc}

branch_2074552: @ 2074552 :thumb
	add     r0, #0x9c
	mov     r1, r2
	bl      Function_20281a0
	mov     r0, #0x1
	pop     {r3,pc}

branch_207455e: @ 207455e :thumb
	add     r0, #0xd4
	mov     r1, r2
	bl      Function_202ca10
	mov     r0, #0x1
	pop     {r3,pc}

branch_207456a: @ 207456a :thumb
	bl      ReadPkmnData1
	pop     {r3,pc}
thumb_func_end ReadPkmnData2


 /*
Input:
r0: source address
r1: offset (more of an id)
r2: ?

Return:
r0: return value
*/
thumb_func_start GetPkmnData2
GetPkmnData2: @ 2074570 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldrh    r0, [r5, #PkmnData_4]
	mov     r4, r1
	mov     r6, r2
	lsl     r0, r0, #30
	lsr     r0, r0, #31
	bne     branch_20745ac

	ldrh    r2, [r5, #PkmnData_Checksum]
	mov     r0, r5
	add     r0, #PkmnData_Offset1
	mov     r1, #PkmnData_Size1
	bl      Call_DecryptPkmnData3

	mov     r0, r5
	add     r0, #PkmnData_Offset1
	mov     r1, #PkmnData_Size1
	bl      CalcPokemonChecksum

	ldrh    r1, [r5, #PkmnData_Checksum]
	cmp     r0, r1
	beq     branch_20745ac
	cmp     r0, r1
	beq     branch_20745a4
	bl      ErrorHandling
branch_20745a4: @ 20745a4 :thumb
	ldrh    r1, [r5, #PkmnData_4]
	mov     r0, #PkmnData_4_Bit2
	orr     r0, r1
	strh    r0, [r5, #PkmnData_4]
branch_20745ac: @ 20745ac :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      ReadPkmnData1
	mov     r4, r0

	ldrh    r0, [r5, #PkmnData_4]
	lsl     r0, r0, #30
	lsr     r0, r0, #31
	bne     branch_20745cc

	ldrh    r2, [r5, #PkmnData_Checksum]
	mov     r0, r5
	add     r0, #PkmnData_Offset1
	mov     r1, #PkmnData_Size1
	bl      Call_DecryptPkmnData2
branch_20745cc: @ 20745cc :thumb
	mov     r0, r4
	pop     {r4-r6,pc}
thumb_func_end GetPkmnData2


/*
Input:
r0: source address
r1: offset (more of an id)
r2: ?

Return:
r0: return value
*/
thumb_func_start ReadPkmnData1
ReadPkmnData1: @ 20745d0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	str     r1, [sp, #0x4]          @ DataID
	mov     r1, r0
	mov     r4, #0x0
	str     r2, [sp, #0x8]          @ ?

	ldr     r1, [r1, #0x0]
	str     r0, [sp, #0x0]          @ source address
	mov     r2, r4
	bl      GetPkmnDataBlockAdress  @ Get address of BlockA
	mov     r5, r0

	ldr     r0, [sp, #0x0]          @ source address
	mov     r2, #0x1
	mov     r1, r0
	ldr     r1, [r1, #0x0]
	bl      GetPkmnDataBlockAdress  @ Get address of BlockB
	mov     r6, r0

	ldr     r0, [sp, #0x0]          @ source address
	mov     r2, #0x2
	mov     r1, r0
	ldr     r1, [r1, #0x0]
	bl      GetPkmnDataBlockAdress  @ Get address of BlockC
	mov     r7, r0

	ldr     r0, [sp, #0x0]          @ source address
	mov     r2, #0x3
	mov     r1, r0
	ldr     r1, [r1, #0x0]
	bl      GetPkmnDataBlockAdress  @ Get address of BlockD
	mov     r1, r0

	ldr     r0, [sp, #0x4]          @ DataID
	cmp     r0, #0xb3
	bls     branch_207461a
	b       readPkmnDataUnused

branch_207461a: @ 207461a :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2074626

Jumppoints_2074626:
.hword readPkmnDataPersonalityValue - Jumppoints_2074626 - 2 @ 0x0
.hword readPkmnData4_Bit0 - Jumppoints_2074626 - 2 @ 0x1
.hword readPkmnData4_Bit1 - Jumppoints_2074626 - 2 @ 0x2
.hword readPkmnData4_Bit2 - Jumppoints_2074626 - 2 @ 0x3
.hword readPkmnDataChecksum - Jumppoints_2074626 - 2 @ 0x4
.hword readPkmnDataSpecies - Jumppoints_2074626 - 2 @ 0x5
.hword readPkmnDataItem - Jumppoints_2074626 - 2 @ 0x6
.hword readPkmnDataOTID - Jumppoints_2074626 - 2 @ 0x7
.hword readPkmnDataExpPts - Jumppoints_2074626 - 2 @ 0x8
.hword readPkmnDataFriendship - Jumppoints_2074626 - 2 @ 0x9
.hword readPkmnDataAbility - Jumppoints_2074626 - 2 @ 0xa
.hword readPkmnDataMarkings - Jumppoints_2074626 - 2 @ 0xb
.hword readPkmnDataCountryOfOrigin - Jumppoints_2074626 - 2 @ 0xc
.hword readPkmnDataEVHP - Jumppoints_2074626 - 2 @ 0xd
.hword readPkmnDataEVATK - Jumppoints_2074626 - 2 @ 0xe
.hword readPkmnDataEVDEF - Jumppoints_2074626 - 2 @ 0xf
.hword readPkmnDataEVSPE - Jumppoints_2074626 - 2 @ 0x10
.hword readPkmnDataEVSPA - Jumppoints_2074626 - 2 @ 0x11
.hword readPkmnDataEVSPD - Jumppoints_2074626 - 2 @ 0x12
.hword readPkmnDataCoolContestValue - Jumppoints_2074626 - 2 @ 0x13
.hword readPkmnDataBeautyContestValue - Jumppoints_2074626 - 2 @ 0x14
.hword readPkmnDataCuteContestValue - Jumppoints_2074626 - 2 @ 0x15
.hword readPkmnDataSmartContestValue - Jumppoints_2074626 - 2 @ 0x16
.hword readPkmnDataToughContestValue - Jumppoints_2074626 - 2 @ 0x17
.hword readPkmnDataSheenContestValue - Jumppoints_2074626 - 2 @ 0x18
.hword readPkmnDataSinnohRibbon - Jumppoints_2074626 - 2 @ 0x19
.hword readPkmnDataSinnohRibbon - Jumppoints_2074626 - 2 @ 0x1a
.hword readPkmnDataSinnohRibbon - Jumppoints_2074626 - 2 @ 0x1b
.hword readPkmnDataSinnohRibbon - Jumppoints_2074626 - 2 @ 0x1c
.hword readPkmnDataSinnohRibbon - Jumppoints_2074626 - 2 @ 0x1d
.hword readPkmnDataSinnohRibbon - Jumppoints_2074626 - 2 @ 0x1e
.hword readPkmnDataSinnohRibbon - Jumppoints_2074626 - 2 @ 0x1f
.hword readPkmnDataSinnohRibbon - Jumppoints_2074626 - 2 @ 0x20
.hword readPkmnDataSinnohRibbon - Jumppoints_2074626 - 2 @ 0x21
.hword readPkmnDataSinnohRibbon - Jumppoints_2074626 - 2 @ 0x22
.hword readPkmnDataSinnohRibbon - Jumppoints_2074626 - 2 @ 0x23
.hword readPkmnDataSinnohRibbon - Jumppoints_2074626 - 2 @ 0x24
.hword readPkmnDataSinnohRibbon - Jumppoints_2074626 - 2 @ 0x25
.hword readPkmnDataSinnohRibbon - Jumppoints_2074626 - 2 @ 0x26
.hword readPkmnDataSinnohRibbon - Jumppoints_2074626 - 2 @ 0x27
.hword readPkmnDataSinnohRibbon - Jumppoints_2074626 - 2 @ 0x28
.hword readPkmnDataSinnohRibbon - Jumppoints_2074626 - 2 @ 0x29
.hword readPkmnDataSinnohRibbon - Jumppoints_2074626 - 2 @ 0x2a
.hword readPkmnDataSinnohRibbon - Jumppoints_2074626 - 2 @ 0x2b
.hword readPkmnDataSinnohRibbon - Jumppoints_2074626 - 2 @ 0x2c
.hword readPkmnDataSinnohRibbon - Jumppoints_2074626 - 2 @ 0x2d
.hword readPkmnDataSinnohRibbon - Jumppoints_2074626 - 2 @ 0x2e
.hword readPkmnDataSinnohRibbon - Jumppoints_2074626 - 2 @ 0x2f
.hword readPkmnDataSinnohRibbon - Jumppoints_2074626 - 2 @ 0x30
.hword readPkmnDataSinnohRibbon - Jumppoints_2074626 - 2 @ 0x31
.hword readPkmnDataSinnohRibbon - Jumppoints_2074626 - 2 @ 0x32
.hword readPkmnDataSinnohRibbon - Jumppoints_2074626 - 2 @ 0x33
.hword readPkmnDataSinnohRibbon - Jumppoints_2074626 - 2 @ 0x34
.hword readPkmnDataSinnohRibbon - Jumppoints_2074626 - 2 @ 0x35
.hword readPkmnDataMove - Jumppoints_2074626 - 2 @ 0x36
.hword readPkmnDataMove - Jumppoints_2074626 - 2 @ 0x37
.hword readPkmnDataMove - Jumppoints_2074626 - 2 @ 0x38
.hword readPkmnDataMove - Jumppoints_2074626 - 2 @ 0x39
.hword readPkmnDataMoveCurPP - Jumppoints_2074626 - 2 @ 0x3a
.hword readPkmnDataMoveCurPP - Jumppoints_2074626 - 2 @ 0x3b
.hword readPkmnDataMoveCurPP - Jumppoints_2074626 - 2 @ 0x3c
.hword readPkmnDataMoveCurPP - Jumppoints_2074626 - 2 @ 0x3d
.hword readPkmnDataMovePPUps - Jumppoints_2074626 - 2 @ 0x3e
.hword readPkmnDataMovePPUps - Jumppoints_2074626 - 2 @ 0x3f
.hword readPkmnDataMovePPUps - Jumppoints_2074626 - 2 @ 0x40
.hword readPkmnDataMovePPUps - Jumppoints_2074626 - 2 @ 0x41
.hword readPkmnDataMoveMaxPP - Jumppoints_2074626 - 2 @ 0x42
.hword readPkmnDataMoveMaxPP - Jumppoints_2074626 - 2 @ 0x43
.hword readPkmnDataMoveMaxPP - Jumppoints_2074626 - 2 @ 0x44
.hword readPkmnDataMoveMaxPP - Jumppoints_2074626 - 2 @ 0x45
.hword readPkmnDataIVHP - Jumppoints_2074626 - 2 @ 0x46
.hword readPkmnDataIVATK - Jumppoints_2074626 - 2 @ 0x47
.hword readPkmnDataIVDEF - Jumppoints_2074626 - 2 @ 0x48
.hword readPkmnDataIVSPE - Jumppoints_2074626 - 2 @ 0x49
.hword readPkmnDataIVSPA - Jumppoints_2074626 - 2 @ 0x4a
.hword readPkmnDataIVSPD - Jumppoints_2074626 - 2 @ 0x4b
.hword readPkmnDataIsEgg - Jumppoints_2074626 - 2 @ 0x4c
.hword readPkmnDataIsNicknamed - Jumppoints_2074626 - 2 @ 0x4d
.hword readPkmnDataHoennRibbon - Jumppoints_2074626 - 2 @ 0x4e
.hword readPkmnDataHoennRibbon - Jumppoints_2074626 - 2 @ 0x4f
.hword readPkmnDataHoennRibbon - Jumppoints_2074626 - 2 @ 0x50
.hword readPkmnDataHoennRibbon - Jumppoints_2074626 - 2 @ 0x51
.hword readPkmnDataHoennRibbon - Jumppoints_2074626 - 2 @ 0x52
.hword readPkmnDataHoennRibbon - Jumppoints_2074626 - 2 @ 0x53
.hword readPkmnDataHoennRibbon - Jumppoints_2074626 - 2 @ 0x54
.hword readPkmnDataHoennRibbon - Jumppoints_2074626 - 2 @ 0x55
.hword readPkmnDataHoennRibbon - Jumppoints_2074626 - 2 @ 0x56
.hword readPkmnDataHoennRibbon - Jumppoints_2074626 - 2 @ 0x57
.hword readPkmnDataHoennRibbon - Jumppoints_2074626 - 2 @ 0x58
.hword readPkmnDataHoennRibbon - Jumppoints_2074626 - 2 @ 0x59
.hword readPkmnDataHoennRibbon - Jumppoints_2074626 - 2 @ 0x5a
.hword readPkmnDataHoennRibbon - Jumppoints_2074626 - 2 @ 0x5b
.hword readPkmnDataHoennRibbon - Jumppoints_2074626 - 2 @ 0x5c
.hword readPkmnDataHoennRibbon - Jumppoints_2074626 - 2 @ 0x5d
.hword readPkmnDataHoennRibbon - Jumppoints_2074626 - 2 @ 0x5e
.hword readPkmnDataHoennRibbon - Jumppoints_2074626 - 2 @ 0x5f
.hword readPkmnDataHoennRibbon - Jumppoints_2074626 - 2 @ 0x60
.hword readPkmnDataHoennRibbon - Jumppoints_2074626 - 2 @ 0x61
.hword readPkmnDataHoennRibbon - Jumppoints_2074626 - 2 @ 0x62
.hword readPkmnDataHoennRibbon - Jumppoints_2074626 - 2 @ 0x63
.hword readPkmnDataHoennRibbon - Jumppoints_2074626 - 2 @ 0x64
.hword readPkmnDataHoennRibbon - Jumppoints_2074626 - 2 @ 0x65
.hword readPkmnDataHoennRibbon - Jumppoints_2074626 - 2 @ 0x66
.hword readPkmnDataHoennRibbon - Jumppoints_2074626 - 2 @ 0x67
.hword readPkmnDataHoennRibbon - Jumppoints_2074626 - 2 @ 0x68
.hword readPkmnDataHoennRibbon - Jumppoints_2074626 - 2 @ 0x69
.hword readPkmnDataHoennRibbon - Jumppoints_2074626 - 2 @ 0x6a
.hword readPkmnDataHoennRibbon - Jumppoints_2074626 - 2 @ 0x6b
.hword readPkmnDataHoennRibbon - Jumppoints_2074626 - 2 @ 0x6c
.hword readPkmnDataHoennRibbon - Jumppoints_2074626 - 2 @ 0x6d
.hword readPkmnDataFatefulEncountered - Jumppoints_2074626 - 2 @ 0x6e
.hword readPkmnDataGender - Jumppoints_2074626 - 2 @ 0x6f
.hword readPkmnDataAlternateForm - Jumppoints_2074626 - 2 @ 0x70
.hword branch_2074970 - Jumppoints_2074626 - 2 @ 0x71
.hword branch_2074974 - Jumppoints_2074626 - 2 @ 0x72
.hword readPkmnEggLocation - Jumppoints_2074626 - 2 @ 0x73
.hword readPkmnMetAtLocation - Jumppoints_2074626 - 2 @ 0x74
.hword readPkmnDataNickname - Jumppoints_2074626 - 2 @ 0x75
.hword readPkmnDataUnused - Jumppoints_2074626 - 2 @ 0x76
.hword branch_20749ac - Jumppoints_2074626 - 2 @ 0x77
.hword branch_20749a8 - Jumppoints_2074626 - 2 @ 0x78
.hword branch_20749da - Jumppoints_2074626 - 2 @ 0x79
.hword readPkmnDataOriginGame - Jumppoints_2074626 - 2 @ 0x7a
.hword readPkmnDataSinnohRibbon2 - Jumppoints_2074626 - 2 @ 0x7b
.hword readPkmnDataSinnohRibbon2 - Jumppoints_2074626 - 2 @ 0x7c
.hword readPkmnDataSinnohRibbon2 - Jumppoints_2074626 - 2 @ 0x7d
.hword readPkmnDataSinnohRibbon2 - Jumppoints_2074626 - 2 @ 0x7e
.hword readPkmnDataSinnohRibbon2 - Jumppoints_2074626 - 2 @ 0x7f
.hword readPkmnDataSinnohRibbon2 - Jumppoints_2074626 - 2 @ 0x80
.hword readPkmnDataSinnohRibbon2 - Jumppoints_2074626 - 2 @ 0x81
.hword readPkmnDataSinnohRibbon2 - Jumppoints_2074626 - 2 @ 0x82
.hword readPkmnDataSinnohRibbon2 - Jumppoints_2074626 - 2 @ 0x83
.hword readPkmnDataSinnohRibbon2 - Jumppoints_2074626 - 2 @ 0x84
.hword readPkmnDataSinnohRibbon2 - Jumppoints_2074626 - 2 @ 0x85
.hword readPkmnDataSinnohRibbon2 - Jumppoints_2074626 - 2 @ 0x86
.hword readPkmnDataSinnohRibbon2 - Jumppoints_2074626 - 2 @ 0x87
.hword readPkmnDataSinnohRibbon2 - Jumppoints_2074626 - 2 @ 0x88
.hword readPkmnDataSinnohRibbon2 - Jumppoints_2074626 - 2 @ 0x89
.hword readPkmnDataSinnohRibbon2 - Jumppoints_2074626 - 2 @ 0x8a
.hword readPkmnDataSinnohRibbon2 - Jumppoints_2074626 - 2 @ 0x8b
.hword readPkmnDataSinnohRibbon2 - Jumppoints_2074626 - 2 @ 0x8c
.hword readPkmnDataSinnohRibbon2 - Jumppoints_2074626 - 2 @ 0x8d
.hword readPkmnDataSinnohRibbon2 - Jumppoints_2074626 - 2 @ 0x8e
.hword readPkmnDataSinnohRibbon2 - Jumppoints_2074626 - 2 @ 0x8f
.hword branch_2074a0a - Jumppoints_2074626 - 2 @ 0x90
.hword branch_2074a24 - Jumppoints_2074626 - 2 @ 0x91
.hword branch_2074a2c - Jumppoints_2074626 - 2 @ 0x92
.hword branch_2074a30 - Jumppoints_2074626 - 2 @ 0x93
.hword branch_2074a34 - Jumppoints_2074626 - 2 @ 0x94
.hword branch_2074a38 - Jumppoints_2074626 - 2 @ 0x95
.hword branch_2074a3c - Jumppoints_2074626 - 2 @ 0x96
.hword branch_2074a40 - Jumppoints_2074626 - 2 @ 0x97
.hword readPkmnEggLocation - Jumppoints_2074626 - 2 @ 0x98
.hword readPkmnMetAtLocation - Jumppoints_2074626 - 2 @ 0x99
.hword readPkmnDataPokerus - Jumppoints_2074626 - 2 @ 0x9a
.hword readPkmnDataPokeball - Jumppoints_2074626 - 2 @ 0x9b
.hword readPkmnDataMetAtLevel - Jumppoints_2074626 - 2 @ 0x9c
.hword readPkmnDataFemaleOTGender - Jumppoints_2074626 - 2 @ 0x9d
.hword readPkmnDataEncounterType - Jumppoints_2074626 - 2 @ 0x9e
.hword branch_2074a84 - Jumppoints_2074626 - 2 @ 0x9f
.hword readPkmnDataUnused - Jumppoints_2074626 - 2 @ 0xa0
.hword readPkmnDataLevel - Jumppoints_2074626 - 2 @ 0xa1
.hword readPkmnDataUnused - Jumppoints_2074626 - 2 @ 0xa2
.hword readPkmnDataUnused - Jumppoints_2074626 - 2 @ 0xa3
.hword readPkmnDataUnused - Jumppoints_2074626 - 2 @ 0xa4
.hword readPkmnDataUnused - Jumppoints_2074626 - 2 @ 0xa5
.hword readPkmnDataUnused - Jumppoints_2074626 - 2 @ 0xa6
.hword readPkmnDataUnused - Jumppoints_2074626 - 2 @ 0xa7
.hword readPkmnDataUnused - Jumppoints_2074626 - 2 @ 0xa8
.hword readPkmnDataUnused - Jumppoints_2074626 - 2 @ 0xa9
.hword readPkmnDataUnused - Jumppoints_2074626 - 2 @ 0xaa
.hword readPkmnDataUnused - Jumppoints_2074626 - 2 @ 0xab
.hword readPkmnDataIsPkmnOrEgg - Jumppoints_2074626 - 2 @ 0xac
.hword branch_20747c6 - Jumppoints_2074626 - 2 @ 0xad
.hword branch_20747d8 - Jumppoints_2074626 - 2 @ 0xae
.hword branch_2074a88 - Jumppoints_2074626 - 2 @ 0xaf
.hword branch_2074aba - Jumppoints_2074626 - 2 @ 0xb0
.hword branch_2074ae4 - Jumppoints_2074626 - 2 @ 0xb1
.hword branch_2074ae4 - Jumppoints_2074626 - 2 @ 0xb2
.hword branch_2074b1c - Jumppoints_2074626 - 2 @ 0xb3

readPkmnDataUnused: @ 207478e :thumb
	mov     r4, #0x0
	b       end_ReadPkmnData1

readPkmnDataPersonalityValue: @ 2074792 :thumb
	ldr     r0, [sp, #0x0]          @ source address
	ldr     r4, [r0, #0x0]
	b       end_ReadPkmnData1

readPkmnData4_Bit0: @ 2074798 :thumb
	ldr     r0, [sp, #0x0]          @ source address
	ldrh    r0, [r0, #PkmnData_4]
	lsl     r0, r0, #31
	lsr     r4, r0, #31
	b       end_ReadPkmnData1

readPkmnData4_Bit1: @ 20747a2 :thumb
	ldr     r0, [sp, #0x0]          @ source address
	ldrh    r0, [r0, #PkmnData_4]
	lsl     r0, r0, #30
	lsr     r4, r0, #31
	b       end_ReadPkmnData1

readPkmnData4_Bit2: @ 20747ac :thumb
	ldr     r0, [sp, #0x0]          @ source address
	ldrh    r0, [r0, #PkmnData_4]
	lsl     r0, r0, #29
	lsr     r4, r0, #31
	b       end_ReadPkmnData1

readPkmnDataChecksum: @ 20747b6 :thumb
	ldr     r0, [sp, #0x0]          @ source address
	ldrh    r4, [r0, #0x6]
	b       end_ReadPkmnData1

readPkmnDataIsPkmnOrEgg: @ 20747bc :thumb
	ldrh    r0, [r5, #0x0]          @ BlockA + 0x0
	cmp     r0, #0x0
	beq     branch_20747f0
	mov     r4, #0x1
	b       end_ReadPkmnData1

branch_20747c6: @ 20747c6 :thumb
	ldr     r0, [sp, #0x0]          @ source address
	ldrh    r0, [r0, #PkmnData_4]
	lsl     r0, r0, #29
	lsr     r4, r0, #31
	bne     branch_20747f0
	ldr     r0, [r6, #0x10]         @ BlockB + 0x10
	lsl     r0, r0, #1
	lsr     r4, r0, #31
	b       end_ReadPkmnData1

branch_20747d8: @ 20747d8 :thumb
	ldrh    r4, [r5, #0x0]          @ BlockA + 0x0 = National Pokédex ID
	cmp     r4, #0x0
	beq     branch_20747f0
	ldr     r0, [r6, #0x10]         @ BlockB + 0x10 = IsEgg
	lsl     r0, r0, #1
	lsr     r0, r0, #31
	bne     branch_20747f2          @ IsEgg
	ldr     r0, [sp, #0x0]          @ source address
	ldrh    r0, [r0, #0x4]          @ Temporary Variable
	lsl     r0, r0, #29
	lsr     r0, r0, #31
	bne     branch_20747f2
branch_20747f0: @ 20747f0 :thumb
	b       end_ReadPkmnData1

branch_20747f2: @ 20747f2 :thumb
	ldr     r4, =UnknownPkmnID
	b       end_ReadPkmnData1

readPkmnDataLevel: @ 20747f6 :thumb
	ldrh    r0, [r5, #0x0]          @ BlockA + 0x0 = National Pokédex ID
	ldr     r1, [r5, #0x8]          @ BlockA + 0x8 = Experience points
	bl      CalcPkmnLevel
	mov     r4, r0
	b       end_ReadPkmnData1

readPkmnDataSpecies: @ 2074802 :thumb
	ldr     r0, [sp, #0x0]          @ source address
	ldrh    r0, [r0, #PkmnData_4]
	lsl     r0, r0, #29
	lsr     r0, r0, #31
	beq     branch_2074810
	ldr     r4, =UnknownPkmnID
	b       end_ReadPkmnData1
branch_2074810: @ 2074810 :thumb
	ldrh    r4, [r5, #0x0]          @ BlockA + 0x0 = National Pokédex ID
	b       end_ReadPkmnData1

readPkmnDataItem: @ 2074814 :thumb
	ldrh    r4, [r5, #0x2]
	b       end_ReadPkmnData1

readPkmnDataOTID: @ 2074818 :thumb
	ldr     r4, [r5, #0x4]
	b       end_ReadPkmnData1

readPkmnDataExpPts: @ 207481c :thumb
	ldr     r4, [r5, #0x8]
	b       end_ReadPkmnData1

readPkmnDataFriendship: @ 2074820 :thumb
	ldrb    r4, [r5, #0xc]
	b       end_ReadPkmnData1

readPkmnDataAbility: @ 2074824 :thumb
	ldrb    r4, [r5, #0xd]
	b       end_ReadPkmnData1

readPkmnDataMarkings: @ 2074828 :thumb
	ldrb    r4, [r5, #0xe]
	b       end_ReadPkmnData1

readPkmnDataCountryOfOrigin: @ 207482c :thumb
	ldrb    r4, [r5, #0xf]
	b       end_ReadPkmnData1

readPkmnDataEVHP: @ 2074830 :thumb
	ldrb    r4, [r5, #0x10]
	b       end_ReadPkmnData1

readPkmnDataEVATK: @ 2074834 :thumb
	ldrb    r4, [r5, #0x11]
	b       end_ReadPkmnData1

readPkmnDataEVDEF: @ 2074838 :thumb
	ldrb    r4, [r5, #0x12]
	b       end_ReadPkmnData1

readPkmnDataEVSPE: @ 207483c :thumb
	ldrb    r4, [r5, #0x13]
	b       end_ReadPkmnData1

readPkmnDataEVSPA: @ 2074840 :thumb
	ldrb    r4, [r5, #0x14]
	b       end_ReadPkmnData1

readPkmnDataEVSPD: @ 2074844 :thumb
	ldrb    r4, [r5, #0x15]
	b       end_ReadPkmnData1

readPkmnDataCoolContestValue: @ 2074848 :thumb
	ldrb    r4, [r5, #0x16]
	b       end_ReadPkmnData1

readPkmnDataBeautyContestValue: @ 207484c :thumb
	ldrb    r4, [r5, #0x17]
	b       end_ReadPkmnData1

readPkmnDataCuteContestValue: @ 2074850 :thumb
	ldrb    r4, [r5, #0x18]
	b       end_ReadPkmnData1

readPkmnDataSmartContestValue: @ 2074854 :thumb
	ldrb    r4, [r5, #0x19]
	b       end_ReadPkmnData1

readPkmnDataToughContestValue: @ 2074858 :thumb
	ldrb    r4, [r5, #0x1a]
	b       end_ReadPkmnData1

readPkmnDataSheenContestValue: @ 207485c :thumb
	ldrb    r4, [r5, #0x1b]
	b       end_ReadPkmnData1

readPkmnDataSinnohRibbon: @ 2074860 :thumb
	ldr     r2, [sp, #0x4]          @ DataID
	mov     r0, #0x1
	sub     r2, #0x19
	mov     r1, r4
	str     r2, [sp, #0x4]          @ DataID
	blx     _ll_shl
	ldr     r2, [r5, #0x1c]
	mov     r3, r4
	and     r3, r1
	and     r2, r0
	mov     r1, #0x0
	mov     r0, #0x0
	eor     r1, r3
	eor     r0, r2
	orr     r0, r1
	beq     branch_20748fc
	mov     r4, #0x1
	b       end_ReadPkmnData1

readPkmnDataMove: @ 2074886 :thumb
	ldr     r0, [sp, #0x4]          @ DataID
	sub     r0, #0x36
	str     r0, [sp, #0x4]          @ DataID
	lsl     r0, r0, #1
	ldrh    r4, [r6, r0]
	b       end_ReadPkmnData1

readPkmnDataMoveCurPP: @ 2074892 :thumb
	ldr     r0, [sp, #0x4]          @ DataID
	sub     r0, #0x3a
	str     r0, [sp, #0x4]          @ DataID
	add     r0, r6, r0
	ldrb    r4, [r0, #0x8]
	b       end_ReadPkmnData1

readPkmnDataMovePPUps: @ 207489e :thumb
	ldr     r0, [sp, #0x4]          @ DataID
	sub     r0, #0x3e
	str     r0, [sp, #0x4]          @ DataID
	add     r0, r6, r0
	ldrb    r4, [r0, #0xc]
	b       end_ReadPkmnData1

readPkmnDataMoveMaxPP: @ 20748aa :thumb
	ldr     r0, [sp, #0x4]          @ DataID
	sub     r0, #0x42
	str     r0, [sp, #0x4]          @ DataID
	ldr     r1, [sp, #0x4]          @ DataID
	lsl     r0, r0, #1
	add     r1, r6, r1
	ldrh    r0, [r6, r0]
	ldrb    r1, [r1, #0xc]
	bl      CalcMovePP
	mov     r4, r0
	b       end_ReadPkmnData1

readPkmnDataIVHP: @ 20748c2 :thumb
	ldr     r0, [r6, #0x10]         @ BlockB + 0x10 = Experience points
	lsl     r0, r0, #27
	lsr     r4, r0, #27
	b       end_ReadPkmnData1

readPkmnDataIVATK: @ 20748ca :thumb
	ldr     r0, [r6, #0x10]         @ BlockB + 0x10 = Experience points
	lsl     r0, r0, #22
	lsr     r4, r0, #27
	b       end_ReadPkmnData1

readPkmnDataIVDEF: @ 20748d2 :thumb
	ldr     r0, [r6, #0x10]         @ BlockB + 0x10 = Experience points
	lsl     r0, r0, #17
	lsr     r4, r0, #27
	b       end_ReadPkmnData1

readPkmnDataIVSPE: @ 20748da :thumb
	ldr     r0, [r6, #0x10]         @ BlockB + 0x10 = Experience points
	lsl     r0, r0, #12
	lsr     r4, r0, #27
	b       end_ReadPkmnData1

readPkmnDataIVSPA: @ 20748e2 :thumb
	ldr     r0, [r6, #0x10]         @ BlockB + 0x10 = Experience points
	lsl     r0, r0, #7
	lsr     r4, r0, #27
	b       end_ReadPkmnData1

readPkmnDataIVSPD: @ 20748ea :thumb
	ldr     r0, [r6, #0x10]         @ BlockB + 0x10 = Experience points
	lsl     r0, r0, #2
	lsr     r4, r0, #27
	b       end_ReadPkmnData1

readPkmnDataIsEgg: @ 20748f2 :thumb
	ldr     r0, [sp, #0x0]          @ source address
	ldrh    r0, [r0, #PkmnData_4]
	lsl     r0, r0, #29
	lsr     r4, r0, #31
	beq     branch_20748fe
branch_20748fc: @ 20748fc :thumb
	b       end_ReadPkmnData1

branch_20748fe: @ 20748fe :thumb
	ldr     r0, [r6, #0x10]         @ BlockB + 0x10
	lsl     r0, r0, #1
	lsr     r4, r0, #31
	b       end_ReadPkmnData1

readPkmnDataIsNicknamed: @ 2074906 :thumb
	ldr     r0, [r6, #0x10]         @ BlockB + 0x10
	lsr     r4, r0, #31
	b       end_ReadPkmnData1

readPkmnDataHoennRibbon: @ 207490c :thumb
	ldr     r2, [sp, #0x4]          @ DataID
	mov     r0, #0x1
	sub     r2, #0x4e
	mov     r1, r4
	str     r2, [sp, #0x4]          @ DataID
	blx     _ll_shl
	ldr     r2, [r6, #0x14]
	mov     r3, r4
	and     r3, r1
	and     r2, r0
	mov     r1, #0x0
	mov     r0, #0x0
	eor     r1, r3
	eor     r0, r2
	orr     r0, r1
	beq     branch_2074a04
	mov     r4, #0x1
	b       end_ReadPkmnData1

readPkmnDataFatefulEncountered: @ 2074932 :thumb
	ldrb    r0, [r6, #0x18]
	lsl     r0, r0, #31
	lsr     r4, r0, #31
	b       end_ReadPkmnData1

readPkmnDataGender: @ 207493a :thumb
	ldr     r1, [sp, #0x0]          @ source address
	ldrh    r0, [r5, #0x0]
	ldr     r1, [r1, #0x0]
	bl      Function_2075dac
	mov     r4, r0
	ldrb    r0, [r6, #0x18]
	mov     r1, #0x6
	bic     r0, r1
	lsl     r1, r4, #24
	lsr     r1, r1, #24
	lsl     r1, r1, #30
	lsr     r1, r1, #29
	orr     r0, r1
	strb    r0, [r6, #0x18]
	ldr     r0, [sp, #0x0]          @ source address
	mov     r1, #0x80
	add     r0, #0x8
	bl      CalcPokemonChecksum
	ldr     r1, [sp, #0x0]          @ source address
	strh    r0, [r1, #0x6]
	b       end_ReadPkmnData1

readPkmnDataAlternateForm: @ 2074968 :thumb
	ldrb    r0, [r6, #0x18]         @ BlockB + 0x18
	lsl     r0, r0, #24
	lsr     r4, r0, #27
	b       end_ReadPkmnData1

branch_2074970: @ 2074970 :thumb
	ldrb    r4, [r6, #0x19]         @ BlockB + 0x19
	b       end_ReadPkmnData1

branch_2074974: @ 2074974 :thumb
	ldrh    r4, [r6, #0x1a]         @ BlockB + 0x1a
	b       end_ReadPkmnData1

readPkmnDataNickname: @ 2074978 :thumb
	ldr     r0, [sp, #0x0]          @ source address
	ldrh    r0, [r0, #PkmnData_4]
	lsl     r0, r0, #29
	lsr     r0, r0, #31
	beq     branch_207498e
	ldr     r0, =UnknownPkmnID2
	ldr     r2, [sp, #0x8]
	mov     r1, r4
	bl      Function_200b274
	b       end_ReadPkmnData1

branch_207498e: @ 207498e :thumb
	ldr     r1, [sp, #0x8]
branch_2074990: @ 2074990 :thumb
	ldrh    r0, [r7, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cbf @ add r7, r7, #0x2
	strh    r0, [r1, #0x0]
	.hword  0x1c89 @ add r1, r1, #0x2
	cmp     r4, #0xa
	blo     branch_2074990
	ldr     r2, =0xffff
	ldr     r0, [sp, #0x8]
	lsl     r1, r4, #1
	strh    r2, [r0, r1]
	b       end_ReadPkmnData1

branch_20749a8: @ 20749a8 :thumb
	ldr     r0, [r6, #0x10]         @ BlockB + 0x10
	lsr     r4, r0, #31
branch_20749ac: @ 20749ac :thumb
	ldr     r0, [sp, #0x0]          @ source address
	ldrh    r0, [r0, #PkmnData_4]
	lsl     r0, r0, #29
	lsr     r0, r0, #31
	beq     branch_20749d0

	ldr     r0, =UnknownPkmnID2
	mov     r1, #0x0
	bl      Function_200b32c
	mov     r5, r0

	ldr     r0, [sp, #0x8]
	mov     r1, r5
	bl      Function_2023810
	mov     r0, r5
	bl      Function_20237bc
	b       end_ReadPkmnData1

branch_20749d0: @ 20749d0 :thumb
	ldr     r0, [sp, #0x8]
	mov     r1, r7
	bl      Function_2023d28
	b       end_ReadPkmnData1

branch_20749da: @ 20749da :thumb
	ldrb    r4, [r7, #0x16]
	b       end_ReadPkmnData1

readPkmnDataOriginGame: @ 20749de :thumb
	ldrb    r4, [r7, #0x17]
	b       end_ReadPkmnData1

readPkmnDataSinnohRibbon2: @ 20749e2 :thumb
	ldr     r2, [sp, #0x4]          @ DataID
	mov     r0, #0x1
	sub     r2, #0x7b
	mov     r1, r4
	str     r2, [sp, #0x4]          @ DataID
	blx     _ll_shl
	ldr     r3, [r7, #0x18]
	ldr     r2, [r7, #0x1c]
	and     r3, r0
	and     r2, r1
	mov     r1, #0x0
	mov     r0, #0x0
	eor     r1, r2
	eor     r0, r3
	orr     r0, r1
	bne     branch_2074a06
branch_2074a04: @ 2074a04 :thumb
	b       end_ReadPkmnData1
branch_2074a06: @ 2074a06 :thumb
	mov     r4, #0x1
	b       end_ReadPkmnData1

branch_2074a0a: @ 2074a0a :thumb
	ldr     r2, [sp, #0x8]
branch_2074a0c: @ 2074a0c :thumb
	ldrh    r0, [r1, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c89 @ add r1, r1, #0x2
	strh    r0, [r2, #0x0]
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r4, #0x7
	blo     branch_2074a0c
	ldr     r2, =0xffff
	ldr     r0, [sp, #0x8]
	lsl     r1, r4, #1
	strh    r2, [r0, r1]
	b       end_ReadPkmnData1

branch_2074a24: @ 2074a24 :thumb
	ldr     r0, [sp, #0x8]
	bl      Function_2023d28
	b       end_ReadPkmnData1

branch_2074a2c: @ 2074a2c :thumb
	ldrb    r4, [r1, #0x10]
	b       end_ReadPkmnData1

branch_2074a30: @ 2074a30 :thumb
	ldrb    r4, [r1, #0x11]
	b       end_ReadPkmnData1

branch_2074a34: @ 2074a34 :thumb
	ldrb    r4, [r1, #0x12]
	b       end_ReadPkmnData1

branch_2074a38: @ 2074a38 :thumb
	ldrb    r4, [r1, #0x13]
	b       end_ReadPkmnData1

branch_2074a3c: @ 2074a3c :thumb
	ldrb    r4, [r1, #0x14]
	b       end_ReadPkmnData1

branch_2074a40: @ 2074a40 :thumb
	ldrb    r4, [r1, #0x15]
	b       end_ReadPkmnData1

readPkmnEggLocation: @ 2074a44 :thumb
	ldrh    r1, [r1, #0x16]         @ BlockD + 0x16 = Egg Location (Diamond/Pearl)
	ldr     r0, =0xbba
	cmp     r1, r0
	bne     branch_2074a52
	ldrh    r4, [r6, #0x1c]         @ BlockB + 0x1c = Egg Location (Platinum)
	cmp     r4, #0x0
	bne     end_ReadPkmnData1
branch_2074a52: @ 2074a52 :thumb
	mov     r4, r1
	b       end_ReadPkmnData1

readPkmnMetAtLocation: @ 2074a56 :thumb
	ldrh    r1, [r1, #0x18]         @ BlockD + 0x18
	ldr     r0, =0xbba
	cmp     r1, r0
	bne     branch_2074a64
	ldrh    r4, [r6, #0x1e]         @ BlockB + 0x1e
	cmp     r4, #0x0
	bne     end_ReadPkmnData1
branch_2074a64: @ 2074a64 :thumb
	mov     r4, r1
	b       end_ReadPkmnData1

readPkmnDataPokerus: @ 2074a68 :thumb
	ldrb    r4, [r1, #0x1a]         @ BlockD + 0x1a
	b       end_ReadPkmnData1

readPkmnDataPokeball: @ 2074a6c :thumb
	ldrb    r4, [r1, #0x1b]
	b       end_ReadPkmnData1

readPkmnDataMetAtLevel: @ 2074a70 :thumb
	ldrb    r0, [r1, #0x1c]
	lsl     r0, r0, #25
	lsr     r4, r0, #25
	b       end_ReadPkmnData1

readPkmnDataFemaleOTGender: @ 2074a78 :thumb
	ldrb    r0, [r1, #0x1c]
	lsl     r0, r0, #24
	lsr     r4, r0, #31
	b       end_ReadPkmnData1

readPkmnDataEncounterType: @ 2074a80 :thumb
	ldrb    r4, [r1, #0x1d]
	b       end_ReadPkmnData1

branch_2074a84: @ 2074a84 :thumb
	ldrh    r4, [r1, #0x1e]
	b       end_ReadPkmnData1

branch_2074a88: @ 2074a88 :thumb
	ldr     r4, [r6, #0x10]
	lsl     r0, r4, #2
	lsr     r0, r0, #27
	lsl     r5, r0, #25
	lsl     r0, r4, #7
	lsr     r0, r0, #27
	lsl     r3, r0, #20
	lsl     r0, r4, #12
	lsr     r0, r0, #27
	lsl     r2, r0, #15
	lsl     r0, r4, #17
	lsr     r0, r0, #27
	lsl     r1, r0, #10
	lsl     r0, r4, #27
	lsl     r4, r4, #22
	lsr     r4, r4, #27
	lsr     r0, r0, #27
	lsl     r4, r4, #5
	orr     r0, r4
	orr     r0, r1
	orr     r0, r2
	orr     r0, r3
	mov     r4, r5
	orr     r4, r0
	b       end_ReadPkmnData1

branch_2074aba: @ 2074aba :thumb
	ldrh    r0, [r5, #0x0]
	cmp     r0, #0x1d @ NidoranF
	beq     branch_2074ac4
	cmp     r0, #0x20 @ NidoranM
	bne     branch_2074ae0
branch_2074ac4: @ 2074ac4 :thumb
	ldr     r0, [r6, #0x10]
	lsr     r0, r0, #31
	bne     branch_2074ae0
	mov     r4, #0x0
	b       end_ReadPkmnData1
@ 0x2074ace

.align 2
.pool

.thumb
branch_2074ae0: @ 2074ae0 :thumb
	mov     r4, #0x1
	b       end_ReadPkmnData1

branch_2074ae4: @ 2074ae4 :thumb
	ldrh    r0, [r5, #0x0]
	ldr     r1, =0x1ed
	cmp     r0, r1
	bne     branch_2074b08
	ldrb    r1, [r5, #0xd]
	cmp     r1, #0x79
	bne     branch_2074b08
	ldrh    r0, [r5, #0x2]
	mov     r1, #0x1
	mov     r2, r4
	bl      GetItemData
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_2077988
	mov     r4, r0
	b       end_ReadPkmnData1

branch_2074b08: @ 2074b08 :thumb
	ldrb    r1, [r6, #0x18]
	ldr     r2, [sp, #0x4]          @ DataID
	lsl     r1, r1, #24
	sub     r2, #0xab
	lsr     r1, r1, #27
	str     r2, [sp, #0x4]          @ DataID
	bl      GetPkmnBaseData2
	mov     r4, r0
	b       end_ReadPkmnData1

branch_2074b1c: @ 2074b1c :thumb
	ldrh    r0, [r5, #0x0]
	ldr     r2, [sp, #0x8]
	mov     r1, r4
	bl      Function_200b274
end_ReadPkmnData1: @ 2074b26 :thumb
	mov     r0, r4
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2074b2c

.align 2
.pool
thumb_func_end ReadPkmnData1



thumb_func_start SetPkmnData
SetPkmnData: @ 2074b30 :thumb
	push    {r4-r6,lr}

	mov     r5, r0
	ldrh    r0, [r5, #PkmnData_4]
	mov     r4, r1
	mov     r6, r2
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	bne     branch_2074b86
    
	mov     r0, r5
	ldr     r2, [r5, #PkmnData_PersonalityValue]
	add     r0, #PkmnData_Offset2
	mov     r1, #PkmnData_Size2
	bl      Call_DecryptPkmnData3

	mov     r0, r5
	ldrh    r2, [r5, #PkmnData_Checksum]
	add     r0, #PkmnData_Offset1
	mov     r1, #PkmnData_Size1
	bl      Call_DecryptPkmnData3
    
	mov     r0, r5
	add     r0, #PkmnData_Offset1
	mov     r1, #PkmnData_Size1
	bl      CalcPokemonChecksum

	ldrh    r1, [r5, #PkmnData_Checksum]
	cmp     r0, r1
	beq     branch_2074b86
	cmp     r0, r1
	beq     branch_2074b70
	bl      ErrorHandling
branch_2074b70: @ 2074b70 :thumb
	ldrh    r1, [r5, #PkmnData_4]
	mov     r0, #PkmnData_4_Bit2
	orr     r0, r1
	strh    r0, [r5, #PkmnData_4]

	ldrh    r2, [r5, #PkmnData_Checksum]
	mov     r0, r5
	add     r0, #PkmnData_Offset1
	mov     r1, #PkmnData_Size1
	bl      Call_DecryptPkmnData2

	pop     {r4-r6,pc}

branch_2074b86: @ 2074b86 :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      WritePkmnData2
	ldrh    r0, [r5, #PkmnData_4]
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	bne     branch_2074bbc

	mov     r0, r5
	ldr     r2, [r5, #PkmnData_PersonalityValue]
	add     r0, #PkmnData_Offset2
	mov     r1, #PkmnData_Size2
	bl      Call_DecryptPkmnData2

	mov     r0, r5
	add     r0, #PkmnData_Offset1
	mov     r1, #PkmnData_Size1
	bl      CalcPokemonChecksum

	strh    r0, [r5, #PkmnData_Checksum]
	mov     r0, r5
	ldrh    r2, [r5, #PkmnData_Checksum]
	add     r0, #PkmnData_Offset1
	mov     r1, #PkmnData_Size1
	bl      Call_DecryptPkmnData2
branch_2074bbc: @ 2074bbc :thumb

	pop     {r4-r6,pc}
thumb_func_end SetPkmnData


thumb_func_start WritePkmnData2
WritePkmnData2: @ 2074bc0 :thumb
	push    {r3,lr}
	mov     r3, r0
	mov     r0, r1
	sub     r0, #0xa0
	cmp     r0, #0xb
	bhi     branch_2074c58
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2074bd8

Jumppoints_2074bd8:
.hword writePkmnDataStatusEffect - Jumppoints_2074bd8 - 2 @ 0xa0
.hword writePkmnDataLevel - Jumppoints_2074bd8 - 2 @ 0xa1
.hword writePkmnDataCapsuleIndexSeals - Jumppoints_2074bd8 - 2 @ 0xa2
.hword writePkmnDataCurHP - Jumppoints_2074bd8 - 2 @ 0xa3
.hword writePkmnDataMaxHP - Jumppoints_2074bd8 - 2 @ 0xa4
.hword writePkmnDataATK - Jumppoints_2074bd8 - 2 @ 0xa5
.hword writePkmnDataDEF - Jumppoints_2074bd8 - 2 @ 0xa6
.hword writePkmnDataSPE - Jumppoints_2074bd8 - 2 @ 0xa7
.hword writePkmnDataSPA - Jumppoints_2074bd8 - 2 @ 0xa8
.hword writePkmnDataSPD - Jumppoints_2074bd8 - 2 @ 0xa9
.hword branch_2074c40 - Jumppoints_2074bd8 - 2 @ 0xaa
.hword writePkmnDataSealCoordinates - Jumppoints_2074bd8 - 2 @ 0xab

.thumb
writePkmnDataStatusEffect: @ 2074bf0 :thumb
	ldr     r0, [r2, #0x0]
	add     r3, #0x88
	str     r0, [r3, #0x0]
	pop     {r3,pc}

writePkmnDataLevel: @ 2074bf8 :thumb
	ldrb    r0, [r2, #0x0]
	add     r3, #0x8c
	strb    r0, [r3, #0x0]
	pop     {r3,pc}

writePkmnDataCapsuleIndexSeals: @ 2074c00 :thumb
	ldrb    r0, [r2, #0x0]
	add     r3, #0x8d
	strb    r0, [r3, #0x0]
	pop     {r3,pc}

writePkmnDataCurHP: @ 2074c08 :thumb
	ldrh    r0, [r2, #0x0]
	add     r3, #0x8e
	strh    r0, [r3, #0x0]
	pop     {r3,pc}

writePkmnDataMaxHP: @ 2074c10 :thumb
	ldrh    r0, [r2, #0x0]
	add     r3, #0x90
	strh    r0, [r3, #0x0]
	pop     {r3,pc}

writePkmnDataATK: @ 2074c18 :thumb
	ldrh    r0, [r2, #0x0]
	add     r3, #0x92
	strh    r0, [r3, #0x0]
	pop     {r3,pc}

writePkmnDataDEF: @ 2074c20 :thumb
	ldrh    r0, [r2, #0x0]
	add     r3, #0x94
	strh    r0, [r3, #0x0]
	pop     {r3,pc}

writePkmnDataSPE: @ 2074c28 :thumb
	ldrh    r0, [r2, #0x0]
	add     r3, #0x96
	strh    r0, [r3, #0x0]
	pop     {r3,pc}

writePkmnDataSPA: @ 2074c30 :thumb
	ldrh    r0, [r2, #0x0]
	add     r3, #0x98
	strh    r0, [r3, #0x0]
	pop     {r3,pc}

writePkmnDataSPD: @ 2074c38 :thumb
	ldrh    r0, [r2, #0x0]
	add     r3, #0x9a
	strh    r0, [r3, #0x0]
	pop     {r3,pc}

branch_2074c40: @ 2074c40 :thumb
	add     r3, #0x9c
	mov     r0, r2
	mov     r1, r3
	bl      Function_20281a0
	pop     {r3,pc}

writePkmnDataSealCoordinates: @ 2074c4c :thumb
	add     r3, #0xd4
	mov     r0, r2
	mov     r1, r3
	bl      Function_202ca10
	pop     {r3,pc}

branch_2074c58: @ 2074c58 :thumb
	mov     r0, r3
	bl      WritePkmnData1
	pop     {r3,pc}
thumb_func_end WritePkmnData2


thumb_func_start SetPkmnData2
SetPkmnData2: @ 2074c60 :thumb
	push    {r4-r6,lr}
	mov     r5, r0

	ldrh    r0, [r5, #PkmnData_4]
	mov     r4, r1
	mov     r6, r2
	lsl     r0, r0, #30
	lsr     r0, r0, #31
	bne     branch_2074caa

	ldrh    r2, [r5, #PkmnData_Checksum]
	mov     r0, r5
	add     r0, #PkmnData_Offset1
	mov     r1, #PkmnData_Size1
	bl      Call_DecryptPkmnData3

	mov     r0, r5
	add     r0, #PkmnData_Offset1
	mov     r1, #PkmnData_Size1
	bl      CalcPokemonChecksum

	ldrh    r1, [r5, #PkmnData_Checksum] @ Check if CheckSum has changed
	cmp     r0, r1
	beq     branch_2074caa
	cmp     r0, r1
	beq     branch_2074c94
	bl      ErrorHandling
branch_2074c94: @ 2074c94 :thumb

	ldrh    r1, [r5, #PkmnData_4]
	mov     r0, #PkmnData_4_Bit2
	orr     r0, r1
	strh    r0, [r5, #PkmnData_4]

	ldrh    r2, [r5, #PkmnData_Checksum]
	mov     r0, r5
	add     r0, #PkmnData_Offset1
	mov     r1, #PkmnData_Size1
	bl      Call_DecryptPkmnData2

	pop     {r4-r6,pc}

branch_2074caa: @ 2074caa :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      WritePkmnData1

	ldrh    r0, [r5, #PkmnData_4]
	lsl     r0, r0, #30
	lsr     r0, r0, #31
	bne     branch_2074cd4

	mov     r0, r5
	add     r0, #PkmnData_Offset1
	mov     r1, #PkmnData_Size1
	bl      CalcPokemonChecksum
	strh    r0, [r5, #PkmnData_Checksum]

	mov     r0, r5
	ldrh    r2, [r5, #PkmnData_Checksum]
	add     r0, #PkmnData_Offset1
	mov     r1, #PkmnData_Size1
	bl      Call_DecryptPkmnData2

branch_2074cd4: @ 2074cd4 :thumb
	pop     {r4-r6,pc}
thumb_func_end SetPkmnData2


thumb_func_start WritePkmnData1
WritePkmnData1: @ 2074cd8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x50

	str     r1, [sp, #0x4]
	mov     r1, r0
	mov     r4, r2
	ldr     r1, [r1, #0x0]
	str     r0, [sp, #0x0] @ save start adress of PkmnData
	mov     r2, #0x0
	bl      GetPkmnDataBlockAdress
	mov     r7, r0 @ r7 = adress of BlockA

	ldr     r0, [sp, #0x0]
	mov     r2, #0x1
	mov     r1, r0
	ldr     r1, [r1, #0x0]
	bl      GetPkmnDataBlockAdress
	mov     r5, r0 @ r5 = adress of BlockB

	ldr     r0, [sp, #0x0]
	mov     r2, #0x2
	mov     r1, r0
	ldr     r1, [r1, #0x0]
	bl      GetPkmnDataBlockAdress
	str     r0, [sp, #0x8] @ r0 = adress of BlockC

	ldr     r0, [sp, #0x0]
	mov     r2, #0x3
	mov     r1, r0
	ldr     r1, [r1, #0x0]
	bl      GetPkmnDataBlockAdress
	mov     r6, r0 @ r6 = adress of BlockD

	ldr     r0, [sp, #0x4]
	cmp     r0, #0xb3
	bls     branch_2074d20
	b       branch_2075348

branch_2074d20: @ 2074d20 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2074d2c

Jumppoints_2074d2c:
.hword writePkmnDataPersonalityValue - Jumppoints_2074d2c - 2 @ 0x0
.hword branch_2074e9e - Jumppoints_2074d2c - 2 @ 0x1
.hword branch_2074ebc - Jumppoints_2074d2c - 2 @ 0x2
.hword branch_2074ed8 - Jumppoints_2074d2c - 2 @ 0x3
.hword writePkmnDataChecksum - Jumppoints_2074d2c - 2 @ 0x4
.hword writePkmnDataSpecies - Jumppoints_2074d2c - 2 @ 0x5
.hword writePkmnDataItem - Jumppoints_2074d2c - 2 @ 0x6
.hword writePkmnDataOTID - Jumppoints_2074d2c - 2 @ 0x7
.hword writePkmnDataExpPts - Jumppoints_2074d2c - 2 @ 0x8
.hword writePkmnDataFriendship - Jumppoints_2074d2c - 2 @ 0x9
.hword writePkmnDataAbility - Jumppoints_2074d2c - 2 @ 0xa
.hword writePkmnDataMarkings - Jumppoints_2074d2c - 2 @ 0xb
.hword writePkmnDataCountryOfOrigin - Jumppoints_2074d2c - 2 @ 0xc
.hword writePkmnDataEVHP - Jumppoints_2074d2c - 2 @ 0xd
.hword writePkmnDataEVATK - Jumppoints_2074d2c - 2 @ 0xe
.hword writePkmnDataEVDEF - Jumppoints_2074d2c - 2 @ 0xf
.hword writePkmnDataEVSPE - Jumppoints_2074d2c - 2 @ 0x10
.hword writePkmnDataEVSPA - Jumppoints_2074d2c - 2 @ 0x11
.hword writePkmnDataEVSPD - Jumppoints_2074d2c - 2 @ 0x12
.hword branch_2074f6a - Jumppoints_2074d2c - 2 @ 0x13
.hword branch_2074f72 - Jumppoints_2074d2c - 2 @ 0x14
.hword branch_2074f7a - Jumppoints_2074d2c - 2 @ 0x15
.hword branch_2074f82 - Jumppoints_2074d2c - 2 @ 0x16
.hword branch_2074f8a - Jumppoints_2074d2c - 2 @ 0x17
.hword branch_2074f92 - Jumppoints_2074d2c - 2 @ 0x18
.hword branch_2074f9a - Jumppoints_2074d2c - 2 @ 0x19
.hword branch_2074f9a - Jumppoints_2074d2c - 2 @ 0x1a
.hword branch_2074f9a - Jumppoints_2074d2c - 2 @ 0x1b
.hword branch_2074f9a - Jumppoints_2074d2c - 2 @ 0x1c
.hword branch_2074f9a - Jumppoints_2074d2c - 2 @ 0x1d
.hword branch_2074f9a - Jumppoints_2074d2c - 2 @ 0x1e
.hword branch_2074f9a - Jumppoints_2074d2c - 2 @ 0x1f
.hword branch_2074f9a - Jumppoints_2074d2c - 2 @ 0x20
.hword branch_2074f9a - Jumppoints_2074d2c - 2
.hword branch_2074f9a - Jumppoints_2074d2c - 2
.hword branch_2074f9a - Jumppoints_2074d2c - 2
.hword branch_2074f9a - Jumppoints_2074d2c - 2
.hword branch_2074f9a - Jumppoints_2074d2c - 2
.hword branch_2074f9a - Jumppoints_2074d2c - 2
.hword branch_2074f9a - Jumppoints_2074d2c - 2
.hword branch_2074f9a - Jumppoints_2074d2c - 2
.hword branch_2074f9a - Jumppoints_2074d2c - 2
.hword branch_2074f9a - Jumppoints_2074d2c - 2
.hword branch_2074f9a - Jumppoints_2074d2c - 2
.hword branch_2074f9a - Jumppoints_2074d2c - 2
.hword branch_2074f9a - Jumppoints_2074d2c - 2
.hword branch_2074f9a - Jumppoints_2074d2c - 2
.hword branch_2074f9a - Jumppoints_2074d2c - 2 @ 0x2f
.hword branch_2074f9a - Jumppoints_2074d2c - 2 @ 0x30
.hword branch_2074f9a - Jumppoints_2074d2c - 2 @ 0x31
.hword branch_2074f9a - Jumppoints_2074d2c - 2 @ 0x32
.hword branch_2074f9a - Jumppoints_2074d2c - 2 @ 0x33
.hword branch_2074f9a - Jumppoints_2074d2c - 2 @ 0x34
.hword branch_2074f9a - Jumppoints_2074d2c - 2 @ 0x35
.hword writePkmnDataMove - Jumppoints_2074d2c - 2 @ 0x36
.hword writePkmnDataMove - Jumppoints_2074d2c - 2 @ 0x37
.hword writePkmnDataMove - Jumppoints_2074d2c - 2 @ 0x38
.hword writePkmnDataMove - Jumppoints_2074d2c - 2 @ 0x39
.hword writePkmnDataMovePP - Jumppoints_2074d2c - 2 @ 0x3a
.hword writePkmnDataMovePP - Jumppoints_2074d2c - 2 @ 0x3b
.hword writePkmnDataMovePP - Jumppoints_2074d2c - 2 @ 0x3c
.hword writePkmnDataMovePP - Jumppoints_2074d2c - 2 @ 0x3d
.hword writePkmnDataMovePPUps - Jumppoints_2074d2c - 2 @ 0x3e
.hword writePkmnDataMovePPUps - Jumppoints_2074d2c - 2 @ 0x3f
.hword writePkmnDataMovePPUps - Jumppoints_2074d2c - 2 @ 0x40
.hword writePkmnDataMovePPUps - Jumppoints_2074d2c - 2 @ 0x41
.hword branch_2075348 - Jumppoints_2074d2c - 2 @ 0x42
.hword branch_2075348 - Jumppoints_2074d2c - 2 @ 0x43
.hword branch_2075348 - Jumppoints_2074d2c - 2 @ 0x44
.hword branch_2075348 - Jumppoints_2074d2c - 2 @ 0x45
.hword writePkmnDataIVHP - Jumppoints_2074d2c - 2 @ 0x46
.hword writePkmnDataIVATK - Jumppoints_2074d2c - 2 @ 0x47
.hword writePkmnDataIVDEF - Jumppoints_2074d2c - 2 @ 0x48
.hword writePkmnDataIVSPE - Jumppoints_2074d2c - 2 @ 0x49
.hword writePkmnDataIVSPA - Jumppoints_2074d2c - 2 @ 0x4a
.hword writePkmnDataIVSPD - Jumppoints_2074d2c - 2 @ 0x4b
.hword writePkmnDataIsEgg - Jumppoints_2074d2c - 2 @ 0x4c
.hword writePkmnDataIsNicknamed - Jumppoints_2074d2c - 2 @ 0x4d
.hword branch_2075092 - Jumppoints_2074d2c - 2 @ 0x4e
.hword branch_2075092 - Jumppoints_2074d2c - 2 @ 0x4f
.hword branch_2075092 - Jumppoints_2074d2c - 2 @ 0x50
.hword branch_2075092 - Jumppoints_2074d2c - 2 @ 0x51
.hword branch_2075092 - Jumppoints_2074d2c - 2 @ 0x52
.hword branch_2075092 - Jumppoints_2074d2c - 2 @ 0x53
.hword branch_2075092 - Jumppoints_2074d2c - 2 @ 0x54
.hword branch_2075092 - Jumppoints_2074d2c - 2 @ 0x55
.hword branch_2075092 - Jumppoints_2074d2c - 2 @ 0x56
.hword branch_2075092 - Jumppoints_2074d2c - 2 @ 0x57
.hword branch_2075092 - Jumppoints_2074d2c - 2 @ 0x58
.hword branch_2075092 - Jumppoints_2074d2c - 2 @ 0x59
.hword branch_2075092 - Jumppoints_2074d2c - 2 @ 0x5a
.hword branch_2075092 - Jumppoints_2074d2c - 2 @ 0x5b
.hword branch_2075092 - Jumppoints_2074d2c - 2 @ 0x5c
.hword branch_2075092 - Jumppoints_2074d2c - 2 @ 0x5d
.hword branch_2075092 - Jumppoints_2074d2c - 2 @ 0x5e
.hword branch_2075092 - Jumppoints_2074d2c - 2 @ 0x5f
.hword branch_2075092 - Jumppoints_2074d2c - 2 @ 0x60
.hword branch_2075092 - Jumppoints_2074d2c - 2 @ 0x61
.hword branch_2075092 - Jumppoints_2074d2c - 2 @ 0x62
.hword branch_2075092 - Jumppoints_2074d2c - 2 @ 0x63
.hword branch_2075092 - Jumppoints_2074d2c - 2 @ 0x64
.hword branch_2075092 - Jumppoints_2074d2c - 2 @ 0x65
.hword branch_2075092 - Jumppoints_2074d2c - 2 @ 0x66
.hword branch_2075092 - Jumppoints_2074d2c - 2 @ 0x67
.hword branch_2075092 - Jumppoints_2074d2c - 2 @ 0x68
.hword branch_2075092 - Jumppoints_2074d2c - 2 @ 0x69
.hword branch_2075092 - Jumppoints_2074d2c - 2 @ 0x6a
.hword branch_2075092 - Jumppoints_2074d2c - 2 @ 0x6b
.hword branch_2075092 - Jumppoints_2074d2c - 2 @ 0x6c
.hword branch_2075092 - Jumppoints_2074d2c - 2 @ 0x6d
.hword writePkmnDataFatefulEncountered - Jumppoints_2074d2c - 2 @ 0x6e
.hword branch_20750d0 - Jumppoints_2074d2c - 2 @ 0x6f
.hword branch_20750ec - Jumppoints_2074d2c - 2 @ 0x70
.hword branch_2075100 - Jumppoints_2074d2c - 2 @ 0x71
.hword branch_2075108 - Jumppoints_2074d2c - 2 @ 0x72
.hword branch_2075234 - Jumppoints_2074d2c - 2 @ 0x73
.hword branch_207525a - Jumppoints_2074d2c - 2 @ 0x74
.hword branch_207512e - Jumppoints_2074d2c - 2 @ 0x75
.hword branch_2075110 - Jumppoints_2074d2c - 2 @ 0x76
.hword branch_2075172 - Jumppoints_2074d2c - 2 @ 0x77
.hword branch_2075146 - Jumppoints_2074d2c - 2 @ 0x78
.hword branch_2075180 - Jumppoints_2074d2c - 2 @ 0x79
.hword branch_207518a - Jumppoints_2074d2c - 2 @ 0x7a
.hword branch_2075194 - Jumppoints_2074d2c - 2 @ 0x7b
.hword branch_2075194 - Jumppoints_2074d2c - 2 @ 0x7c
.hword branch_2075194 - Jumppoints_2074d2c - 2 @ 0x7d
.hword branch_2075194 - Jumppoints_2074d2c - 2 @ 0x7e
.hword branch_2075194 - Jumppoints_2074d2c - 2 @ 0x7f
.hword branch_2075194 - Jumppoints_2074d2c - 2 @ 0x80
.hword branch_2075194 - Jumppoints_2074d2c - 2 @ 0x81
.hword branch_2075194 - Jumppoints_2074d2c - 2 @ 0x82
.hword branch_2075194 - Jumppoints_2074d2c - 2 @ 0x83
.hword branch_2075194 - Jumppoints_2074d2c - 2 @ 0x84
.hword branch_2075194 - Jumppoints_2074d2c - 2 @ 0x85
.hword branch_2075194 - Jumppoints_2074d2c - 2 @ 0x86
.hword branch_2075194 - Jumppoints_2074d2c - 2 @ 0x87
.hword branch_2075194 - Jumppoints_2074d2c - 2 @ 0x88
.hword branch_2075194 - Jumppoints_2074d2c - 2 @ 0x89
.hword branch_2075194 - Jumppoints_2074d2c - 2 @ 0x8a
.hword branch_2075194 - Jumppoints_2074d2c - 2 @ 0x8b
.hword branch_2075194 - Jumppoints_2074d2c - 2 @ 0x8c
.hword branch_2075194 - Jumppoints_2074d2c - 2 @ 0x8d
.hword branch_2075194 - Jumppoints_2074d2c - 2 @ 0x8e
.hword branch_2075194 - Jumppoints_2074d2c - 2 @ 0x8f
.hword branch_20751e2 - Jumppoints_2074d2c - 2 @ 0x90
.hword branch_20751f6 - Jumppoints_2074d2c - 2 @ 0x91
.hword branch_2075204 - Jumppoints_2074d2c - 2 @ 0x92
.hword branch_207520c - Jumppoints_2074d2c - 2 @ 0x93
.hword branch_2075214 - Jumppoints_2074d2c - 2 @ 0x94
.hword branch_207521c - Jumppoints_2074d2c - 2 @ 0x95
.hword branch_2075224 - Jumppoints_2074d2c - 2 @ 0x96
.hword branch_207522c - Jumppoints_2074d2c - 2 @ 0x97
.hword branch_2075234 - Jumppoints_2074d2c - 2 @ 0x98
.hword branch_207525a - Jumppoints_2074d2c - 2 @ 0x99
.hword branch_2075280 - Jumppoints_2074d2c - 2 @ 0x9a
.hword branch_2075288 - Jumppoints_2074d2c - 2 @ 0x9b
.hword branch_2075290 - Jumppoints_2074d2c - 2 @ 0x9c
.hword branch_20752a4 - Jumppoints_2074d2c - 2 @ 0x9d
.hword branch_20752b8 - Jumppoints_2074d2c - 2 @ 0x9e
.hword branch_20752c0 - Jumppoints_2074d2c - 2 @ 0x9f
.hword branch_2075348 - Jumppoints_2074d2c - 2 @ 0xa0
.hword branch_2075348 - Jumppoints_2074d2c - 2 @ 0xa1
.hword branch_2075348 - Jumppoints_2074d2c - 2 @ 0xa2
.hword branch_2075348 - Jumppoints_2074d2c - 2 @ 0xa3
.hword branch_2075348 - Jumppoints_2074d2c - 2 @ 0xa4
.hword branch_2075348 - Jumppoints_2074d2c - 2 @ 0xa5
.hword branch_2075348 - Jumppoints_2074d2c - 2 @ 0xa6
.hword branch_2075348 - Jumppoints_2074d2c - 2 @ 0xa7
.hword branch_2075348 - Jumppoints_2074d2c - 2 @ 0xa8
.hword branch_2075348 - Jumppoints_2074d2c - 2 @ 0xa9
.hword branch_2075348 - Jumppoints_2074d2c - 2 @ 0xaa
.hword branch_2075348 - Jumppoints_2074d2c - 2 @ 0xab
.hword branch_2075348 - Jumppoints_2074d2c - 2 @ 0xac
.hword branch_2075348 - Jumppoints_2074d2c - 2 @ 0xad
.hword branch_2075348 - Jumppoints_2074d2c - 2 @ 0xae
.hword branch_20752c8 - Jumppoints_2074d2c - 2 @ 0xaf
.hword branch_2075348 - Jumppoints_2074d2c - 2 @ 0xb0
.hword branch_2075348 - Jumppoints_2074d2c - 2 @ 0xb1
.hword branch_2075348 - Jumppoints_2074d2c - 2 @ 0xb2
.hword branch_2075330 - Jumppoints_2074d2c - 2 @ 0xb3

.thumb
writePkmnDataPersonalityValue: @ 2074e94 :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [r4, #0x0]
	add     sp, #0x50
	str     r1, [r0, #0x0]
	pop     {r3-r7,pc}

branch_2074e9e: @ 2074e9e :thumb
	bl      ErrorHandling
	ldr     r0, [sp, #0x0]
	ldrb    r1, [r4, #0x0]
	ldrh    r2, [r0, #PkmnData_4]
	mov     r0, #PkmnData_4_Bit0
	bic     r2, r0
	mov     r0, #PkmnData_4_Bit0
	and     r0, r1
	mov     r1, r2
	orr     r1, r0
	ldr     r0, [sp, #0x0]
	add     sp, #0x50
	strh    r1, [r0, #PkmnData_4]
	pop     {r3-r7,pc}

branch_2074ebc: @ 2074ebc :thumb
	bl      ErrorHandling
	ldr     r0, [sp, #0x0]
	ldrh    r1, [r0, #PkmnData_4]
	mov     r0, #PkmnData_4_Bit1
	bic     r1, r0
	ldrb    r0, [r4, #0x0]
	lsl     r0, r0, #31
	lsr     r0, r0, #30
	orr     r1, r0
	ldr     r0, [sp, #0x0]
	add     sp, #0x50
	strh    r1, [r0, #PkmnData_4]
	pop     {r3-r7,pc}

branch_2074ed8: @ 2074ed8 :thumb
	ldr     r0, [sp, #0x0]
	ldrh    r1, [r0, #PkmnData_4]
	mov     r0, #PkmnData_4_Bit2
	bic     r1, r0
	ldrb    r0, [r4, #0x0]
	lsl     r0, r0, #31
	lsr     r0, r0, #29
	orr     r1, r0
	ldr     r0, [sp, #0x0]
	add     sp, #0x50
	strh    r1, [r0, #PkmnData_4]
	pop     {r3-r7,pc}

writePkmnDataChecksum: @ 2074ef0 :thumb
	ldrh    r1, [r4, #0x0]
	ldr     r0, [sp, #0x0]
	add     sp, #0x50
	strh    r1, [r0, #PkmnData_Checksum]
	pop     {r3-r7,pc}

writePkmnDataSpecies: @ 2074efa :thumb
	ldrh    r0, [r4, #0x0]
	add     sp, #0x50
	strh    r0, [r7, #0x0]
	pop     {r3-r7,pc}

writePkmnDataItem: @ 2074f02 :thumb
	ldrh    r0, [r4, #0x0]
	add     sp, #0x50
	strh    r0, [r7, #0x2]
	pop     {r3-r7,pc}

writePkmnDataOTID: @ 2074f0a :thumb
	ldr     r0, [r4, #0x0]
	add     sp, #0x50
	str     r0, [r7, #0x4]
	pop     {r3-r7,pc}

writePkmnDataExpPts: @ 2074f12 :thumb
	ldr     r0, [r4, #0x0]
	add     sp, #0x50
	str     r0, [r7, #0x8]
	pop     {r3-r7,pc}

writePkmnDataFriendship: @ 2074f1a :thumb
	ldrb    r0, [r4, #0x0]
	add     sp, #0x50
	strb    r0, [r7, #0xc]
	pop     {r3-r7,pc}

writePkmnDataAbility: @ 2074f22 :thumb
	ldrb    r0, [r4, #0x0]
	add     sp, #0x50
	strb    r0, [r7, #0xd]
	pop     {r3-r7,pc}

writePkmnDataMarkings: @ 2074f2a :thumb
	ldrb    r0, [r4, #0x0]
	add     sp, #0x50
	strb    r0, [r7, #0xe]
	pop     {r3-r7,pc}

writePkmnDataCountryOfOrigin: @ 2074f32 :thumb
	ldrb    r0, [r4, #0x0]
	add     sp, #0x50
	strb    r0, [r7, #0xf]
	pop     {r3-r7,pc}

writePkmnDataEVHP: @ 2074f3a :thumb
	ldrb    r0, [r4, #0x0]
	add     sp, #0x50
	strb    r0, [r7, #0x10]
	pop     {r3-r7,pc}

writePkmnDataEVATK: @ 2074f42 :thumb
	ldrb    r0, [r4, #0x0]
	add     sp, #0x50
	strb    r0, [r7, #0x11]
	pop     {r3-r7,pc}

writePkmnDataEVDEF: @ 2074f4a :thumb
	ldrb    r0, [r4, #0x0]
	add     sp, #0x50
	strb    r0, [r7, #0x12]
	pop     {r3-r7,pc}

writePkmnDataEVSPE: @ 2074f52 :thumb
	ldrb    r0, [r4, #0x0]
	add     sp, #0x50
	strb    r0, [r7, #0x13]
	pop     {r3-r7,pc}

writePkmnDataEVSPA: @ 2074f5a :thumb
	ldrb    r0, [r4, #0x0]
	add     sp, #0x50
	strb    r0, [r7, #0x14]
	pop     {r3-r7,pc}

writePkmnDataEVSPD: @ 2074f62 :thumb
	ldrb    r0, [r4, #0x0]
	add     sp, #0x50
	strb    r0, [r7, #0x15]
	pop     {r3-r7,pc}

branch_2074f6a: @ 2074f6a :thumb
	ldrb    r0, [r4, #0x0]
	add     sp, #0x50
	strb    r0, [r7, #0x16]
	pop     {r3-r7,pc}

branch_2074f72: @ 2074f72 :thumb
	ldrb    r0, [r4, #0x0]
	add     sp, #0x50
	strb    r0, [r7, #0x17]
	pop     {r3-r7,pc}

branch_2074f7a: @ 2074f7a :thumb
	ldrb    r0, [r4, #0x0]
	add     sp, #0x50
	strb    r0, [r7, #0x18]
	pop     {r3-r7,pc}

branch_2074f82: @ 2074f82 :thumb
	ldrb    r0, [r4, #0x0]
	add     sp, #0x50
	strb    r0, [r7, #0x19]
	pop     {r3-r7,pc}

branch_2074f8a: @ 2074f8a :thumb
	ldrb    r0, [r4, #0x0]
	add     sp, #0x50
	strb    r0, [r7, #0x1a]
	pop     {r3-r7,pc}

branch_2074f92: @ 2074f92 :thumb
	ldrb    r0, [r4, #0x0]
	add     sp, #0x50
	strb    r0, [r7, #0x1b]
	pop     {r3-r7,pc}

branch_2074f9a: @ 2074f9a :thumb
	ldr     r1, [sp, #0x4]
	mov     r0, #0x1
	sub     r1, #0x19
	str     r1, [sp, #0x4]
	lsl     r0, r1
	ldrb    r1, [r4, #0x0]
	cmp     r1, #0x0
	beq     branch_2074fb4
	ldr     r1, [r7, #0x1c]
	add     sp, #0x50
	orr     r0, r1
	str     r0, [r7, #0x1c]
	pop     {r3-r7,pc}

branch_2074fb4: @ 2074fb4 :thumb
	mov     r1, #0x0
	.hword  0x1e49 @ sub r1, r1, #0x1
	ldr     r2, [r7, #0x1c]
	eor     r0, r1
	and     r0, r2
	add     sp, #0x50
	str     r0, [r7, #0x1c]
	pop     {r3-r7,pc}

writePkmnDataMove: @ 2074fc4 :thumb
	ldr     r0, [sp, #0x4]
	ldrh    r1, [r4, #0x0]
	sub     r0, #0x36
	str     r0, [sp, #0x4]
	lsl     r0, r0, #1
	add     sp, #0x50
	strh    r1, [r5, r0]
	pop     {r3-r7,pc}

writePkmnDataMovePP: @ 2074fd4 :thumb
	ldr     r0, [sp, #0x4]
	ldrb    r1, [r4, #0x0]
	sub     r0, #0x3a
	str     r0, [sp, #0x4]
	add     r0, r5, r0
	strb    r1, [r0, #0x8]
	add     sp, #0x50
	pop     {r3-r7,pc}

writePkmnDataMovePPUps: @ 2074fe4 :thumb
	ldr     r0, [sp, #0x4]
	ldrb    r1, [r4, #0x0]
	sub     r0, #0x3e
	str     r0, [sp, #0x4]
	add     r0, r5, r0
	strb    r1, [r0, #0xc]
	add     sp, #0x50
	pop     {r3-r7,pc}

writePkmnDataIVHP: @ 2074ff4 :thumb
	ldr     r2, [r5, #0x10]
	mov     r0, #0x1f
	bic     r2, r0
	ldrb    r1, [r4, #0x0]
	mov     r0, #0x1f
	add     sp, #0x50
	and     r0, r1
	orr     r0, r2
	str     r0, [r5, #0x10]
	pop     {r3-r7,pc}

writePkmnDataIVATK: @ 2075008 :thumb
	ldr     r1, [r5, #0x10]
	ldr     r0, =0xfffffc1f
	add     sp, #0x50
	and     r1, r0
	ldrb    r0, [r4, #0x0]
	lsl     r0, r0, #27
	lsr     r0, r0, #22
	orr     r0, r1
	str     r0, [r5, #0x10]
	pop     {r3-r7,pc}

writePkmnDataIVDEF: @ 207501c :thumb
	ldr     r1, [r5, #0x10]
	ldr     r0, =0xffff83ff
	add     sp, #0x50
	and     r1, r0
	ldrb    r0, [r4, #0x0]
	lsl     r0, r0, #27
	lsr     r0, r0, #17
	orr     r0, r1
	str     r0, [r5, #0x10]
	pop     {r3-r7,pc}

writePkmnDataIVSPE: @ 2075030 :thumb
	ldr     r1, [r5, #0x10]
	ldr     r0, =0xfff07fff
	add     sp, #0x50
	and     r1, r0
	ldrb    r0, [r4, #0x0]
	lsl     r0, r0, #27
	lsr     r0, r0, #12
	orr     r0, r1
	str     r0, [r5, #0x10]
	pop     {r3-r7,pc}

writePkmnDataIVSPA: @ 2075044 :thumb
	ldr     r1, [r5, #0x10]
	ldr     r0, =0xfe0fffff
	add     sp, #0x50
	and     r1, r0
	ldrb    r0, [r4, #0x0]
	lsl     r0, r0, #27
	lsr     r0, r0, #7
	orr     r0, r1
	str     r0, [r5, #0x10]
	pop     {r3-r7,pc}

writePkmnDataIVSPD: @ 2075058 :thumb
	ldr     r1, [r5, #0x10]
	ldr     r0, =0xc1ffffff
	add     sp, #0x50
	and     r1, r0
	ldrb    r0, [r4, #0x0]
	lsl     r0, r0, #27
	lsr     r0, r0, #2
	orr     r0, r1
	str     r0, [r5, #0x10]
	pop     {r3-r7,pc}

writePkmnDataIsEgg: @ 207506c :thumb
	ldr     r1, [r5, #0x10]
	ldr     r0, =0xbfffffff
	add     sp, #0x50
	and     r1, r0
	ldrb    r0, [r4, #0x0]
	lsl     r0, r0, #31
	lsr     r0, r0, #1
	orr     r0, r1
	str     r0, [r5, #0x10]
	pop     {r3-r7,pc}

writePkmnDataIsNicknamed: @ 2075080 :thumb
	ldr     r1, [r5, #0x10]
	ldr     r0, =0x7fffffff
	add     sp, #0x50
	and     r1, r0
	ldrb    r0, [r4, #0x0]
	lsl     r0, r0, #31
	orr     r0, r1
	str     r0, [r5, #0x10]
	pop     {r3-r7,pc}

branch_2075092: @ 2075092 :thumb
	ldr     r1, [sp, #0x4]
	mov     r0, #0x1
	sub     r1, #0x4e
	str     r1, [sp, #0x4]
	lsl     r0, r1
	ldrb    r1, [r4, #0x0]
	cmp     r1, #0x0
	beq     branch_20750ac
	ldr     r1, [r5, #0x14]
	add     sp, #0x50
	orr     r0, r1
	str     r0, [r5, #0x14]
	pop     {r3-r7,pc}

branch_20750ac: @ 20750ac :thumb
	mov     r1, #0x0
	.hword  0x1e49 @ sub r1, r1, #0x1
	ldr     r2, [r5, #0x14]
	eor     r0, r1
	and     r0, r2
	add     sp, #0x50
	str     r0, [r5, #0x14]
	pop     {r3-r7,pc}

writePkmnDataFatefulEncountered: @ 20750bc :thumb
	ldrb    r2, [r5, #0x18]
	ldrb    r1, [r4, #0x0]
	mov     r0, #0x1
	bic     r2, r0
	mov     r0, #0x1
	and     r0, r1
	orr     r0, r2
	add     sp, #0x50
	strb    r0, [r5, #0x18]
	pop     {r3-r7,pc}

branch_20750d0: @ 20750d0 :thumb
	ldr     r1, [sp, #0x0]
	ldrh    r0, [r7, #0x0]
	ldr     r1, [r1, #0x0]
	bl      Function_2075dac
	lsl     r0, r0, #30
	ldrb    r2, [r5, #0x18]
	mov     r1, #0x6
	lsr     r0, r0, #29
	bic     r2, r1
	orr     r0, r2
	add     sp, #0x50
	strb    r0, [r5, #0x18]
	pop     {r3-r7,pc}

branch_20750ec: @ 20750ec :thumb
	ldrb    r1, [r5, #0x18]
	mov     r0, #0xf8
	add     sp, #0x50
	bic     r1, r0
	ldrb    r0, [r4, #0x0]
	lsl     r0, r0, #27
	lsr     r0, r0, #24
	orr     r0, r1
	strb    r0, [r5, #0x18]
	pop     {r3-r7,pc}

branch_2075100: @ 2075100 :thumb
	ldrb    r0, [r4, #0x0]
	add     sp, #0x50
	strb    r0, [r5, #0x19]
	pop     {r3-r7,pc}

branch_2075108: @ 2075108 :thumb
	ldrh    r0, [r4, #0x0]
	add     sp, #0x50
	strh    r0, [r5, #0x1a]
	pop     {r3-r7,pc}

branch_2075110: @ 2075110 :thumb
	ldrh    r0, [r7, #0x0]
	mov     r1, #0x0
	add     r2, sp, #0x38
	bl      Function_200b274
	add     r0, sp, #0x38
	mov     r1, r4
	bl      Function_200220c
	ldr     r2, [r5, #0x10]
	ldr     r1, =0x7fffffff
	lsl     r0, r0, #31
	and     r1, r2
	orr     r0, r1
	str     r0, [r5, #0x10]
branch_207512e: @ 207512e :thumb
	mov     r2, #0x0
branch_2075130: @ 2075130 :thumb
	ldrh    r1, [r4, #0x0]
	ldr     r0, [sp, #0x8]
	.hword  0x1c52 @ add r2, r2, #0x1
	strh    r1, [r0, #0x0]
	.hword  0x1c80 @ add r0, r0, #0x2
	.hword  0x1ca4 @ add r4, r4, #0x2
	str     r0, [sp, #0x8]
	cmp     r2, #0xb
	blo     branch_2075130
	add     sp, #0x50
	pop     {r3-r7,pc}

branch_2075146: @ 2075146 :thumb
	ldrh    r0, [r7, #0x0]
	add     r2, sp, #0x20
	mov     r1, #0x0
	add     r2, #0x2
	bl      Function_200b274
	mov     r0, r4
	add     r1, sp, #0xc
	mov     r2, #0xb
	bl      Function_2023df0
	add     r0, sp, #0x20
	add     r0, #0x2
	add     r1, sp, #0xc
	bl      Function_200220c
	ldr     r2, [r5, #0x10]
	ldr     r1, =0x7fffffff
	lsl     r0, r0, #31
	and     r1, r2
	orr     r0, r1
	str     r0, [r5, #0x10]
branch_2075172: @ 2075172 :thumb
	ldr     r1, [sp, #0x8]
	mov     r0, r4
	mov     r2, #0xb
	bl      Function_2023df0
	add     sp, #0x50
	pop     {r3-r7,pc}

branch_2075180: @ 2075180 :thumb
	ldrb    r1, [r4, #0x0]
	ldr     r0, [sp, #0x8]
	add     sp, #0x50
	strb    r1, [r0, #0x16]
	pop     {r3-r7,pc}

branch_207518a: @ 207518a :thumb
	ldrb    r1, [r4, #0x0]
	ldr     r0, [sp, #0x8]
	add     sp, #0x50
	strb    r1, [r0, #0x17]
	pop     {r3-r7,pc}

branch_2075194: @ 2075194 :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, #0x1
	sub     r0, #0x7b
	mov     r2, r1
	ldrb    r3, [r4, #0x0]
	lsl     r2, r0
	str     r0, [sp, #0x4]
	asr     r0, r2, #31
	cmp     r3, #0x0
	beq     branch_20751c0
	ldr     r1, [sp, #0x8]
	ldr     r3, [sp, #0x8]
	add     r1, #0x18
	ldr     r4, [r3, #0x18]
	ldr     r3, [r1, #0x4]
	orr     r2, r4
	orr     r3, r0
	ldr     r0, [sp, #0x8]
	add     sp, #0x50
	str     r2, [r0, #0x18]
	str     r3, [r1, #0x4]
	pop     {r3-r7,pc}

branch_20751c0: @ 20751c0 :thumb
	ldr     r6, [sp, #0x8]
	ldr     r3, [sp, #0x8]
	add     r6, #0x18
	ldr     r4, [r6, #0x4]
	ldr     r5, [r3, #0x18]
	sub     r3, r1, #0x2
	.hword  0x1e89 @ sub r1, r1, #0x2
	eor     r1, r2
	eor     r0, r3
	mov     r2, r4
	and     r2, r0
	ldr     r0, [sp, #0x8]
	and     r1, r5
	str     r1, [r0, #0x18]
	add     sp, #0x50
	str     r2, [r6, #0x4]
	pop     {r3-r7,pc}

branch_20751e2: @ 20751e2 :thumb
	mov     r1, #0x0
branch_20751e4: @ 20751e4 :thumb
	ldrh    r0, [r4, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	strh    r0, [r6, #0x0]
	.hword  0x1cb6 @ add r6, r6, #0x2
	cmp     r1, #0x8
	blo     branch_20751e4
	add     sp, #0x50
	pop     {r3-r7,pc}

branch_20751f6: @ 20751f6 :thumb
	mov     r0, r4
	mov     r1, r6
	mov     r2, #0x8
	bl      Function_2023df0
	add     sp, #0x50
	pop     {r3-r7,pc}

branch_2075204: @ 2075204 :thumb
	ldrb    r0, [r4, #0x0]
	add     sp, #0x50
	strb    r0, [r6, #0x10]
	pop     {r3-r7,pc}

branch_207520c: @ 207520c :thumb
	ldrb    r0, [r4, #0x0]
	add     sp, #0x50
	strb    r0, [r6, #0x11]
	pop     {r3-r7,pc}

branch_2075214: @ 2075214 :thumb
	ldrb    r0, [r4, #0x0]
	add     sp, #0x50
	strb    r0, [r6, #0x12]
	pop     {r3-r7,pc}

branch_207521c: @ 207521c :thumb
	ldrb    r0, [r4, #0x0]
	add     sp, #0x50
	strb    r0, [r6, #0x13]
	pop     {r3-r7,pc}

branch_2075224: @ 2075224 :thumb
	ldrb    r0, [r4, #0x0]
	add     sp, #0x50
	strb    r0, [r6, #0x14]
	pop     {r3-r7,pc}

branch_207522c: @ 207522c :thumb
	ldrb    r0, [r4, #0x0]
	add     sp, #0x50
	strb    r0, [r6, #0x15]
	pop     {r3-r7,pc}

branch_2075234: @ 2075234 :thumb
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_2075242
	bl      Function_201708c
	cmp     r0, #0x1
	bne     branch_207524e
branch_2075242: @ 2075242 :thumb
	ldrh    r0, [r4, #0x0]
	add     sp, #0x50
	strh    r0, [r6, #0x16]
	ldrh    r0, [r4, #0x0]
	strh    r0, [r5, #0x1c]
	pop     {r3-r7,pc}

branch_207524e: @ 207524e :thumb
	ldr     r0, =0xbba
	add     sp, #0x50
	strh    r0, [r6, #0x16]
	ldrh    r0, [r4, #0x0]
	strh    r0, [r5, #0x1c]
	pop     {r3-r7,pc}

branch_207525a: @ 207525a :thumb
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_2075268
	bl      Function_201708c
	cmp     r0, #0x1
	bne     branch_2075274
branch_2075268: @ 2075268 :thumb
	ldrh    r0, [r4, #0x0]
	add     sp, #0x50
	strh    r0, [r6, #0x18]
	ldrh    r0, [r4, #0x0]
	strh    r0, [r5, #0x1e]
	pop     {r3-r7,pc}

branch_2075274: @ 2075274 :thumb
	ldr     r0, =0xbba
	add     sp, #0x50
	strh    r0, [r6, #0x18]
	ldrh    r0, [r4, #0x0]
	strh    r0, [r5, #0x1e]
	pop     {r3-r7,pc}

branch_2075280: @ 2075280 :thumb
	ldrb    r0, [r4, #0x0]
	add     sp, #0x50
	strb    r0, [r6, #0x1a]
	pop     {r3-r7,pc}

branch_2075288: @ 2075288 :thumb
	ldrb    r0, [r4, #0x0]
	add     sp, #0x50
	strb    r0, [r6, #0x1b]
	pop     {r3-r7,pc}

branch_2075290: @ 2075290 :thumb
	ldrb    r2, [r6, #0x1c]
	ldrb    r1, [r4, #0x0]
	mov     r0, #0x7f
	bic     r2, r0
	mov     r0, #0x7f
	and     r0, r1
	orr     r0, r2
	add     sp, #0x50
	strb    r0, [r6, #0x1c]
	pop     {r3-r7,pc}

branch_20752a4: @ 20752a4 :thumb
	ldrb    r1, [r6, #0x1c]
	mov     r0, #0x80
	add     sp, #0x50
	bic     r1, r0
	ldrb    r0, [r4, #0x0]
	lsl     r0, r0, #31
	lsr     r0, r0, #24
	orr     r0, r1
	strb    r0, [r6, #0x1c]
	pop     {r3-r7,pc}

branch_20752b8: @ 20752b8 :thumb
	ldrb    r0, [r4, #0x0]
	add     sp, #0x50
	strb    r0, [r6, #0x1d]
	pop     {r3-r7,pc}

branch_20752c0: @ 20752c0 :thumb
	ldrh    r0, [r4, #0x0]
	add     sp, #0x50
	strh    r0, [r6, #0x1e]
	pop     {r3-r7,pc}

branch_20752c8: @ 20752c8 :thumb
	ldr     r2, [r5, #0x10]
	mov     r0, #0x1f
	bic     r2, r0
	ldr     r1, [r4, #0x0]
	mov     r0, #0x1f
	and     r1, r0
	and     r0, r1
	mov     r1, r2
	orr     r1, r0

	ldr     r0, =0xfffffc1f
	str     r1, [r5, #0x10]
	and     r1, r0
	ldr     r0, [r4, #0x0]
	add     sp, #0x50
	lsr     r0, r0, #5
	lsl     r0, r0, #27
	lsr     r0, r0, #22
	orr     r1, r0

	ldr     r0, =0xffff83ff
	str     r1, [r5, #0x10]
	and     r1, r0
	ldr     r0, [r4, #0x0]
	lsr     r0, r0, #10
	lsl     r0, r0, #27
	lsr     r0, r0, #17
	orr     r1, r0

	ldr     r0, =0xfff07fff
	str     r1, [r5, #0x10]
	and     r1, r0
	ldr     r0, [r4, #0x0]
	lsr     r0, r0, #15
	lsl     r0, r0, #27
	lsr     r0, r0, #12
	orr     r1, r0

	ldr     r0, =0xfe0fffff
	str     r1, [r5, #0x10]
	and     r1, r0
	ldr     r0, [r4, #0x0]
	lsr     r0, r0, #20
	lsl     r0, r0, #27
	lsr     r0, r0, #7
	orr     r1, r0

	ldr     r0, =0xc1ffffff
	str     r1, [r5, #0x10]
	and     r1, r0
	ldr     r0, [r4, #0x0]
	lsr     r0, r0, #25
	lsl     r0, r0, #27
	lsr     r0, r0, #2
	orr     r0, r1
	str     r0, [r5, #0x10]
	pop     {r3-r7,pc}

branch_2075330: @ 2075330 :thumb
	ldrh    r0, [r7, #0x0]
	mov     r1, #0x0
	bl      Function_200b32c
	ldr     r1, [sp, #0x8]
	mov     r4, r0
	mov     r2, #0xb
	bl      Function_2023df0
	mov     r0, r4
	bl      Function_20237bc
branch_2075348: @ 2075348 :thumb
	add     sp, #0x50
	pop     {r3-r7,pc}
@ 0x207534c

.align 2
.pool
thumb_func_end WritePkmnData1



thumb_func_start ChangePkmnData0
ChangePkmnData0: @ 207536c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldrh    r0, [r5, #PkmnData_4]
	mov     r4, r1
	mov     r6, r2
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	bne     branch_20753ba

	mov     r0, r5
	ldr     r2, [r5, #PkmnData_PersonalityValue]
	add     r0, #PkmnData_Offset2
	mov     r1, #PkmnData_Size2
	bl      Call_DecryptPkmnData3

	mov     r0, r5
	ldrh    r2, [r5, #PkmnData_Checksum]
	add     r0, #PkmnData_Offset1
	mov     r1, #PkmnData_Size1
	bl      Call_DecryptPkmnData3

	mov     r0, r5
	add     r0, #PkmnData_Offset1
	mov     r1, #PkmnData_Size1
	bl      CalcPokemonChecksum

	ldrh    r1, [r5, #PkmnData_Checksum]
	cmp     r0, r1
	beq     branch_20753ba
	cmp     r0, r1
	beq     branch_20753ac
	bl      ErrorHandling
branch_20753ac: @ 20753ac :thumb

	ldrh    r2, [r5, #PkmnData_Checksum]
	mov     r0, r5
	add     r0, #PkmnData_Offset1
	mov     r1, #PkmnData_Size1
	bl      Call_DecryptPkmnData2

	pop     {r4-r6,pc}

branch_20753ba: @ 20753ba :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      ChangePkmnData2
	ldrh    r0, [r5, #PkmnData_4]
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	bne     branch_20753f0

	mov     r0, r5
	ldr     r2, [r5, #PkmnData_PersonalityValue]
	add     r0, #PkmnData_Offset2
	mov     r1, #PkmnData_Size2
	bl      Call_DecryptPkmnData2

	mov     r0, r5
	add     r0, #PkmnData_Offset1
	mov     r1, #PkmnData_Size1
	bl      CalcPokemonChecksum
	strh    r0, [r5, #PkmnData_Checksum]

	mov     r0, r5
	ldrh    r2, [r5, #PkmnData_Checksum]
	add     r0, #PkmnData_Offset1
	mov     r1, #PkmnData_Size1
	bl      Call_DecryptPkmnData2
branch_20753f0: @ 20753f0 :thumb
	pop     {r4-r6,pc}
thumb_func_end ChangePkmnData0


thumb_func_start ChangePkmnData2
ChangePkmnData2: @ 20753f4 :thumb
	push    {r3,lr}
	mov     r3, r1
	sub     r3, #0xa0
	cmp     r3, #0xa
	bhi     branch_207544c
	add     r3, r3, r3
	add     r3, pc
	ldrh    r3, [r3, #0x6]
	lsl     r3, r3, #16
	asr     r3, r3, #16
	add     pc, r3
@ 0x207540a

Jumppoints_207540a:
.hword branch_2075446 - Jumppoints_207540a - 2
.hword branch_2075446 - Jumppoints_207540a - 2
.hword branch_2075446 - Jumppoints_207540a - 2
.hword branch_2075420 - Jumppoints_207540a - 2
.hword branch_2075446 - Jumppoints_207540a - 2
.hword branch_2075446 - Jumppoints_207540a - 2
.hword branch_2075446 - Jumppoints_207540a - 2
.hword branch_2075446 - Jumppoints_207540a - 2
.hword branch_2075446 - Jumppoints_207540a - 2
.hword branch_2075446 - Jumppoints_207540a - 2
.hword branch_2075446 - Jumppoints_207540a - 2

.thumb
branch_2075420: @ 2075420 :thumb
	mov     r1, r0
	add     r1, #0x90
	ldrh    r3, [r1, #0x0]
	mov     r1, r0
	add     r1, #0x8e
	ldrh    r1, [r1, #0x0]
	add     r1, r1, r2
	cmp     r1, r3
	ble     branch_2075438
	add     r0, #0x8e
	strh    r3, [r0, #0x0]
	pop     {r3,pc}

branch_2075438: @ 2075438 :thumb
	mov     r1, r0
	add     r1, #0x8e
	ldrh    r1, [r1, #0x0]
	add     r0, #0x8e
	add     r1, r1, r2
	strh    r1, [r0, #0x0]
	pop     {r3,pc}

branch_2075446: @ 2075446 :thumb
	bl      ErrorHandling
	pop     {r3,pc}

branch_207544c: @ 207544c :thumb
	bl      ChangePkmnData1
	pop     {r3,pc}
thumb_func_end ChangePkmnData2


thumb_func_start ChangePkmnData1
ChangePkmnData1: @ 2075454 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r7, r1
	mov     r1, r0
	mov     r6, r2

	ldr     r1, [r1, #0x0]
	str     r0, [sp, #0x0]
	mov     r2, #0x0
	bl      GetPkmnDataBlockAdress
	mov     r4, r0

	ldr     r0, [sp, #0x0]
	mov     r2, #0x1
	mov     r1, r0
	ldr     r1, [r1, #0x0]
	bl      GetPkmnDataBlockAdress
	mov     r5, r0

	ldr     r0, [sp, #0x0]
	mov     r2, #0x2
	mov     r1, r0
	ldr     r1, [r1, #0x0]
	bl      GetPkmnDataBlockAdress

	ldr     r0, [sp, #0x0]
	mov     r2, #0x3
	mov     r1, r0
	ldr     r1, [r1, #0x0]
	bl      GetPkmnDataBlockAdress

	cmp     r7, #0xb3
	bls     branch_2075496
	b       branch_2075856

branch_2075496: @ 2075496 :thumb
	add     r0, r7, r7
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x20754a2

Jumppoints_20754a2:
.hword branch_2075856 - Jumppoints_20754a2 - 2 @ 0x0
.hword branch_2075856 - Jumppoints_20754a2 - 2 @ 0x1
.hword branch_2075856 - Jumppoints_20754a2 - 2 @ 0x2
.hword branch_2075856 - Jumppoints_20754a2 - 2 @ 0x3
.hword branch_2075856 - Jumppoints_20754a2 - 2 @ 0x4
.hword branch_2075856 - Jumppoints_20754a2 - 2 @ 0x5
.hword branch_2075856 - Jumppoints_20754a2 - 2 @ 0x6
.hword branch_2075856 - Jumppoints_20754a2 - 2 @ 0x7
.hword branch_207560a - Jumppoints_20754a2 - 2 @ 0x8
.hword branch_207562e - Jumppoints_20754a2 - 2 @ 0x9
.hword branch_2075856 - Jumppoints_20754a2 - 2 @ 0xa
.hword branch_2075856 - Jumppoints_20754a2 - 2 @ 0xb
.hword branch_2075856 - Jumppoints_20754a2 - 2 @ 0xc
.hword branch_2075644 - Jumppoints_20754a2 - 2 @ 0xd
.hword branch_207564e - Jumppoints_20754a2 - 2 @ 0xe
.hword branch_2075658 - Jumppoints_20754a2 - 2 @ 0xf
.hword branch_2075662 - Jumppoints_20754a2 - 2 @ 0x10
.hword branch_207566c - Jumppoints_20754a2 - 2
.hword branch_2075676 - Jumppoints_20754a2 - 2
.hword branch_2075680 - Jumppoints_20754a2 - 2
.hword branch_2075696 - Jumppoints_20754a2 - 2
.hword branch_20756ac - Jumppoints_20754a2 - 2
.hword branch_20756c2 - Jumppoints_20754a2 - 2
.hword branch_20756d8 - Jumppoints_20754a2 - 2
.hword branch_20756ee - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075704 - Jumppoints_20754a2 - 2
.hword branch_2075704 - Jumppoints_20754a2 - 2
.hword branch_2075704 - Jumppoints_20754a2 - 2
.hword branch_2075704 - Jumppoints_20754a2 - 2
.hword branch_2075740 - Jumppoints_20754a2 - 2
.hword branch_2075740 - Jumppoints_20754a2 - 2
.hword branch_2075740 - Jumppoints_20754a2 - 2
.hword branch_2075740 - Jumppoints_20754a2 - 2
.hword branch_207585a - Jumppoints_20754a2 - 2
.hword branch_207585a - Jumppoints_20754a2 - 2
.hword branch_207585a - Jumppoints_20754a2 - 2
.hword branch_207585a - Jumppoints_20754a2 - 2
.hword branch_207575a - Jumppoints_20754a2 - 2
.hword branch_2075784 - Jumppoints_20754a2 - 2
.hword branch_20757ae - Jumppoints_20754a2 - 2
.hword branch_20757d8 - Jumppoints_20754a2 - 2
.hword branch_2075802 - Jumppoints_20754a2 - 2
.hword branch_207582c - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2
.hword branch_2075856 - Jumppoints_20754a2 - 2

branch_207560a: @ 207560a :thumb
	ldrh    r0, [r4, #0x0]
	mov     r1, #100
	bl      GetBaseExpPts
	ldr     r1, [r4, #0x8]
	add     r1, r1, r6
	cmp     r1, r0
	bls     branch_2075628
	ldrh    r0, [r4, #0x0]
	mov     r1, #100
	bl      GetBaseExpPts
	add     sp, #0xc
	str     r0, [r4, #0x8]
	pop     {r4-r7,pc}

branch_2075628: @ 2075628 :thumb
	add     sp, #0xc
	str     r1, [r4, #0x8]
	pop     {r4-r7,pc}

branch_207562e: @ 207562e :thumb
	ldrb    r1, [r4, #0xc]
	add     r0, r1, r6
	cmp     r0, #0xff
	ble     branch_2075638
	mov     r1, #0xff
branch_2075638: @ 2075638 :thumb
	add     r1, r1, r6
	bpl     branch_207563e
	mov     r1, #0x0
branch_207563e: @ 207563e :thumb
	add     sp, #0xc
	strb    r1, [r4, #0xc]
	pop     {r4-r7,pc}

branch_2075644: @ 2075644 :thumb
	ldrb    r0, [r4, #0x10]
	add     sp, #0xc
	add     r0, r0, r6
	strb    r0, [r4, #0x10]
	pop     {r4-r7,pc}

branch_207564e: @ 207564e :thumb
	ldrb    r0, [r4, #0x11]
	add     sp, #0xc
	add     r0, r0, r6
	strb    r0, [r4, #0x11]
	pop     {r4-r7,pc}

branch_2075658: @ 2075658 :thumb
	ldrb    r0, [r4, #0x12]
	add     sp, #0xc
	add     r0, r0, r6
	strb    r0, [r4, #0x12]
	pop     {r4-r7,pc}

branch_2075662: @ 2075662 :thumb
	ldrb    r0, [r4, #0x13]
	add     sp, #0xc
	add     r0, r0, r6
	strb    r0, [r4, #0x13]
	pop     {r4-r7,pc}

branch_207566c: @ 207566c :thumb
	ldrb    r0, [r4, #0x14]
	add     sp, #0xc
	add     r0, r0, r6
	strb    r0, [r4, #0x14]
	pop     {r4-r7,pc}

branch_2075676: @ 2075676 :thumb
	ldrb    r0, [r4, #0x15]
	add     sp, #0xc
	add     r0, r0, r6
	strb    r0, [r4, #0x15]
	pop     {r4-r7,pc}

branch_2075680: @ 2075680 :thumb
	ldrb    r0, [r4, #0x16]
	add     r0, r0, r6
	cmp     r0, #0xff
	ble     branch_2075690
	mov     r0, #0xff
	add     sp, #0xc
	strb    r0, [r4, #0x16]
	pop     {r4-r7,pc}

branch_2075690: @ 2075690 :thumb
	add     sp, #0xc
	strb    r0, [r4, #0x16]
	pop     {r4-r7,pc}

branch_2075696: @ 2075696 :thumb
	ldrb    r0, [r4, #0x17]
	add     r0, r0, r6
	cmp     r0, #0xff
	ble     branch_20756a6
	mov     r0, #0xff
	add     sp, #0xc
	strb    r0, [r4, #0x17]
	pop     {r4-r7,pc}

branch_20756a6: @ 20756a6 :thumb
	add     sp, #0xc
	strb    r0, [r4, #0x17]
	pop     {r4-r7,pc}

branch_20756ac: @ 20756ac :thumb
	ldrb    r0, [r4, #0x18]
	add     r0, r0, r6
	cmp     r0, #0xff
	ble     branch_20756bc
	mov     r0, #0xff
	add     sp, #0xc
	strb    r0, [r4, #0x18]
	pop     {r4-r7,pc}

branch_20756bc: @ 20756bc :thumb
	add     sp, #0xc
	strb    r0, [r4, #0x18]
	pop     {r4-r7,pc}

branch_20756c2: @ 20756c2 :thumb
	ldrb    r0, [r4, #0x19]
	add     r0, r0, r6
	cmp     r0, #0xff
	ble     branch_20756d2
	mov     r0, #0xff
	add     sp, #0xc
	strb    r0, [r4, #0x19]
	pop     {r4-r7,pc}

branch_20756d2: @ 20756d2 :thumb
	add     sp, #0xc
	strb    r0, [r4, #0x19]
	pop     {r4-r7,pc}

branch_20756d8: @ 20756d8 :thumb
	ldrb    r0, [r4, #0x1a]
	add     r0, r0, r6
	cmp     r0, #0xff
	ble     branch_20756e8
	mov     r0, #0xff
	add     sp, #0xc
	strb    r0, [r4, #0x1a]
	pop     {r4-r7,pc}

branch_20756e8: @ 20756e8 :thumb
	add     sp, #0xc
	strb    r0, [r4, #0x1a]
	pop     {r4-r7,pc}

branch_20756ee: @ 20756ee :thumb
	ldrb    r0, [r4, #0x1b]
	add     r0, r0, r6
	cmp     r0, #0xff
	ble     branch_20756fe
	mov     r0, #0xff
	add     sp, #0xc
	strb    r0, [r4, #0x1b]
	pop     {r4-r7,pc}

branch_20756fe: @ 20756fe :thumb
	add     sp, #0xc
	strb    r0, [r4, #0x1b]
	pop     {r4-r7,pc}

branch_2075704: @ 2075704 :thumb
	mov     r0, r5
	str     r0, [sp, #0x4]
	add     r0, #0xc
	str     r0, [sp, #0x4]
	sub     r7, #0x3a
	ldr     r1, [sp, #0x4]
	lsl     r0, r7, #1
	str     r0, [sp, #0x8]
	mov     r4, r5
	ldrh    r0, [r5, r0]
	ldrb    r1, [r1, r7]
	add     r4, #0x8
	bl      CalcMovePP
	ldrb    r1, [r4, r7]
	add     r1, r6, r1
	cmp     r1, r0
	ble     branch_207573a
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x4]
	ldrh    r0, [r5, r0]
	ldrb    r1, [r1, r7]
	bl      CalcMovePP
	add     sp, #0xc
	strb    r0, [r4, r7]
	pop     {r4-r7,pc}

branch_207573a: @ 207573a :thumb
	add     sp, #0xc
	strb    r1, [r4, r7]
	pop     {r4-r7,pc}

branch_2075740: @ 2075740 :thumb
	add     r5, #0xc
	sub     r7, #0x3e
	ldrb    r0, [r5, r7]
	add     r0, r6, r0
	cmp     r0, #0x3
	ble     branch_2075754
	mov     r0, #0x3
	add     sp, #0xc
	strb    r0, [r5, r7]
	pop     {r4-r7,pc}

branch_2075754: @ 2075754 :thumb
	add     sp, #0xc
	strb    r0, [r5, r7]
	pop     {r4-r7,pc}

branch_207575a: @ 207575a :thumb
	ldr     r1, [r5, #0x10]
	lsl     r0, r1, #27
	lsr     r0, r0, #27
	add     r2, r0, r6
	cmp     r2, #0x1f
	bls     branch_2075774
	mov     r0, #0x1f
	bic     r1, r0
	mov     r0, #0x1f
	orr     r0, r1
	add     sp, #0xc
	str     r0, [r5, #0x10]
	pop     {r4-r7,pc}

branch_2075774: @ 2075774 :thumb
	mov     r0, #0x1f
	bic     r1, r0
	mov     r0, #0x1f
	and     r0, r2
	orr     r0, r1
	add     sp, #0xc
	str     r0, [r5, #0x10]
	pop     {r4-r7,pc}

branch_2075784: @ 2075784 :thumb
	ldr     r1, [r5, #0x10]
	lsl     r0, r1, #22
	lsr     r0, r0, #27
	add     r2, r0, r6
	cmp     r2, #0x1f
	ldr     r0, =0xfffffc1f
	bls     branch_20757a0
	and     r1, r0
	mov     r0, #0x3e
	lsl     r0, r0, #4
	orr     r0, r1
	add     sp, #0xc
	str     r0, [r5, #0x10]
	pop     {r4-r7,pc}

branch_20757a0: @ 20757a0 :thumb
	and     r1, r0
	lsl     r0, r2, #27
	lsr     r0, r0, #22
	orr     r0, r1
	add     sp, #0xc
	str     r0, [r5, #0x10]
	pop     {r4-r7,pc}

branch_20757ae: @ 20757ae :thumb
	ldr     r1, [r5, #0x10]
	lsl     r0, r1, #17
	lsr     r0, r0, #27
	add     r2, r0, r6
	cmp     r2, #0x1f
	ldr     r0, =0xffff83ff
	bls     branch_20757ca
	and     r1, r0
	mov     r0, #0x1f
	lsl     r0, r0, #10
	orr     r0, r1
	add     sp, #0xc
	str     r0, [r5, #0x10]
	pop     {r4-r7,pc}

branch_20757ca: @ 20757ca :thumb
	and     r1, r0
	lsl     r0, r2, #27
	lsr     r0, r0, #17
	orr     r0, r1
	add     sp, #0xc
	str     r0, [r5, #0x10]
	pop     {r4-r7,pc}

branch_20757d8: @ 20757d8 :thumb
	ldr     r1, [r5, #0x10]
	lsl     r0, r1, #12
	lsr     r0, r0, #27
	add     r2, r0, r6
	cmp     r2, #0x1f
	ldr     r0, =0xfff07fff
	bls     branch_20757f4
	and     r1, r0
	mov     r0, #0x3e
	lsl     r0, r0, #14
	orr     r0, r1
	add     sp, #0xc
	str     r0, [r5, #0x10]
	pop     {r4-r7,pc}

branch_20757f4: @ 20757f4 :thumb
	and     r1, r0
	lsl     r0, r2, #27
	lsr     r0, r0, #12
	orr     r0, r1
	add     sp, #0xc
	str     r0, [r5, #0x10]
	pop     {r4-r7,pc}

branch_2075802: @ 2075802 :thumb
	ldr     r1, [r5, #0x10]
	lsl     r0, r1, #7
	lsr     r0, r0, #27
	add     r2, r0, r6
	cmp     r2, #0x1f
	ldr     r0, =0xfe0fffff
	bls     branch_207581e
	and     r1, r0
	mov     r0, #0x1f
	lsl     r0, r0, #20
	orr     r0, r1
	add     sp, #0xc
	str     r0, [r5, #0x10]
	pop     {r4-r7,pc}

branch_207581e: @ 207581e :thumb
	and     r1, r0
	lsl     r0, r2, #27
	lsr     r0, r0, #7
	orr     r0, r1
	add     sp, #0xc
	str     r0, [r5, #0x10]
	pop     {r4-r7,pc}

branch_207582c: @ 207582c :thumb
	ldr     r1, [r5, #0x10]
	lsl     r0, r1, #2
	lsr     r0, r0, #27
	add     r2, r0, r6
	cmp     r2, #0x1f
	ldr     r0, =0xc1ffffff
	bls     branch_2075848
	and     r1, r0
	mov     r0, #0x3e
	lsl     r0, r0, #24
	orr     r0, r1
	add     sp, #0xc
	str     r0, [r5, #0x10]
	pop     {r4-r7,pc}

branch_2075848: @ 2075848 :thumb
	and     r1, r0
	lsl     r0, r2, #27
	lsr     r0, r0, #2
	orr     r0, r1
	add     sp, #0xc
	str     r0, [r5, #0x10]
	pop     {r4-r7,pc}

branch_2075856: @ 2075856 :thumb
	bl      ErrorHandling
branch_207585a: @ 207585a :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x207585e

.align 2
.pool
thumb_func_end ChangePkmnData1


thumb_func_start Function_2075874
Function_2075874: @ 2075874 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1

	mov     r0, r2
	mov     r1, #0x2c
	bl      malloc_maybe
	mov     r4, r0

	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	bl      LoadFromNARC_PlPersonal2

	mov     r0, r4
	pop     {r4-r6,pc}
thumb_func_end Function_2075874


thumb_func_start Load_PlPersonal1
Load_PlPersonal1: @ 2075894 :thumb
	push    {r3-r5,lr}
	mov     r5, r0

	mov     r0, r1
	mov     r1, #0x2c
	bl      malloc_maybe
	mov     r4, r0

	mov     r0, r5
	mov     r1, r4
	bl      LoadFromNARC_PlPersonal1

	mov     r0, r4
	pop     {r3-r5,pc}
thumb_func_end Load_PlPersonal1


/* Loads data from "data/poketool/personal/pl_personal.narc"-files
Input:
r0: Adress to PkmnBaseStats
r1: Id

Return:
r0: Value
*/
thumb_func_start LoadPkmnBaseData
LoadPkmnBaseData: @ 20758b0 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	mov     r6, r1
	cmp     r4, #0x0
	bne     branch_20758be
	bl      ErrorHandling
branch_20758be: @ 20758be :thumb

	cmp     r6, #0x20
	bhi     branch_20759b2
	add     r0, r6, r6
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x20758ce

Jumppoints_20758ce:
.hword readPkmnBaseDataHP - Jumppoints_20758ce - 2 @ 0x0
.hword readPkmnBaseDataAtk - Jumppoints_20758ce - 2 @ 0x1
.hword readPkmnBaseDataDef - Jumppoints_20758ce - 2 @ 0x2
.hword readPkmnBaseDataSpe - Jumppoints_20758ce - 2 @ 0x3
.hword readPkmnBaseDataSpA - Jumppoints_20758ce - 2 @ 0x4
.hword readPkmnBaseDataSpD - Jumppoints_20758ce - 2 @ 0x5
.hword readPkmnBaseDataType1 - Jumppoints_20758ce - 2 @ 0x6
.hword readPkmnBaseDataType2 - Jumppoints_20758ce - 2 @ 0x7
.hword readPkmnBaseDataCatchRate - Jumppoints_20758ce - 2 @ 0x8
.hword readPkmnBaseDataBaseExp - Jumppoints_20758ce - 2 @ 0x9
.hword readPkmnBaseDataEVHP - Jumppoints_20758ce - 2 @ 0xa
.hword readPkmnBaseDataEVAtk - Jumppoints_20758ce - 2 @ 0xb
.hword readPkmnBaseDataEVDef - Jumppoints_20758ce - 2 @ 0xc
.hword readPkmnBaseDataEVSpe - Jumppoints_20758ce - 2 @ 0xd
.hword readPkmnBaseDataEVSpA - Jumppoints_20758ce - 2 @ 0xe
.hword readPkmnBaseDataEVSpD - Jumppoints_20758ce - 2 @ 0xf
.hword readPkmnBaseDataItem1 - Jumppoints_20758ce - 2 @ 0x10
.hword readPkmnBaseDataItem2 - Jumppoints_20758ce - 2 @ 0x11
.hword readPkmnBaseDataGender - Jumppoints_20758ce - 2 @ 0x12
.hword readPkmnBaseDataHatchCycle - Jumppoints_20758ce - 2 @ 0x13
.hword readPkmnBaseDataBaseHappy - Jumppoints_20758ce - 2 @ 0x14
.hword readPkmnBaseDataExpRate - Jumppoints_20758ce - 2 @ 0x15
.hword readPkmnBaseDataEggGroup1 - Jumppoints_20758ce - 2 @ 0x16
.hword readPkmnBaseDataEggGroup2 - Jumppoints_20758ce - 2 @ 0x17
.hword readPkmnBaseDataAbility1 - Jumppoints_20758ce - 2 @ 0x18
.hword readPkmnBaseDataAbility2 - Jumppoints_20758ce - 2 @ 0x19
.hword readPkmnBaseDataFlee - Jumppoints_20758ce - 2 @ 0x1a
.hword branch_2075994 - Jumppoints_20758ce - 2 @ 0x1b
.hword branch_207599c - Jumppoints_20758ce - 2 @ 0x1c
.hword branch_20759a4 - Jumppoints_20758ce - 2 @ 0x1d
.hword branch_20759a8 - Jumppoints_20758ce - 2 @ 0x1e
.hword branch_20759ac - Jumppoints_20758ce - 2 @ 0x1f
.hword branch_20759b0 - Jumppoints_20758ce - 2 @ 0x20

readPkmnBaseDataHP: @ 2075910 :thumb
	ldrb    r5, [r4, #0x0]
	b       branch_20759b2

readPkmnBaseDataAtk: @ 2075914 :thumb
	ldrb    r5, [r4, #0x1]
	b       branch_20759b2

readPkmnBaseDataDef: @ 2075918 :thumb
	ldrb    r5, [r4, #0x2]
	b       branch_20759b2

readPkmnBaseDataSpe: @ 207591c :thumb
	ldrb    r5, [r4, #0x3]
	b       branch_20759b2

readPkmnBaseDataSpA: @ 2075920 :thumb
	ldrb    r5, [r4, #0x4]
	b       branch_20759b2

readPkmnBaseDataSpD: @ 2075924 :thumb
	ldrb    r5, [r4, #0x5]
	b       branch_20759b2

readPkmnBaseDataType1: @ 2075928 :thumb
	ldrb    r5, [r4, #0x6]
	b       branch_20759b2

readPkmnBaseDataType2: @ 207592c :thumb
	ldrb    r5, [r4, #0x7]
	b       branch_20759b2

readPkmnBaseDataCatchRate: @ 2075930 :thumb
	ldrb    r5, [r4, #0x8]
	b       branch_20759b2

readPkmnBaseDataBaseExp: @ 2075934 :thumb
	ldrb    r5, [r4, #0x9]
	b       branch_20759b2

readPkmnBaseDataEVHP: @ 2075938 :thumb
	ldrh    r0, [r4, #0xa]
	lsl     r0, r0, #30
	lsr     r5, r0, #30
	b       branch_20759b2

readPkmnBaseDataEVAtk: @ 2075940 :thumb
	ldrh    r0, [r4, #0xa]
	lsl     r0, r0, #28
	lsr     r5, r0, #30
	b       branch_20759b2

readPkmnBaseDataEVDef: @ 2075948 :thumb
	ldrh    r0, [r4, #0xa]
	lsl     r0, r0, #26
	lsr     r5, r0, #30
	b       branch_20759b2

readPkmnBaseDataEVSpe: @ 2075950 :thumb
	ldrh    r0, [r4, #0xa]
	lsl     r0, r0, #24
	lsr     r5, r0, #30
	b       branch_20759b2

readPkmnBaseDataEVSpA: @ 2075958 :thumb
	ldrh    r0, [r4, #0xa]
	lsl     r0, r0, #22
	lsr     r5, r0, #30
	b       branch_20759b2

readPkmnBaseDataEVSpD: @ 2075960 :thumb
	ldrh    r0, [r4, #0xa]
	lsl     r0, r0, #20
	lsr     r5, r0, #30
	b       branch_20759b2

readPkmnBaseDataItem1: @ 2075968 :thumb
	ldrh    r5, [r4, #0xc]
	b       branch_20759b2

readPkmnBaseDataItem2: @ 207596c :thumb
	ldrh    r5, [r4, #0xe]
	b       branch_20759b2

readPkmnBaseDataGender: @ 2075970 :thumb
	ldrb    r5, [r4, #0x10]
	b       branch_20759b2

readPkmnBaseDataHatchCycle: @ 2075974 :thumb
	ldrb    r5, [r4, #0x11]
	b       branch_20759b2

readPkmnBaseDataBaseHappy: @ 2075978 :thumb
	ldrb    r5, [r4, #0x12]
	b       branch_20759b2

readPkmnBaseDataExpRate: @ 207597c :thumb
	ldrb    r5, [r4, #0x13]
	b       branch_20759b2

readPkmnBaseDataEggGroup1: @ 2075980 :thumb
	ldrb    r5, [r4, #0x14]
	b       branch_20759b2

readPkmnBaseDataEggGroup2: @ 2075984 :thumb
	ldrb    r5, [r4, #0x15]
	b       branch_20759b2

readPkmnBaseDataAbility1: @ 2075988 :thumb
	ldrb    r5, [r4, #0x16]
	b       branch_20759b2

readPkmnBaseDataAbility2: @ 207598c :thumb
	ldrb    r5, [r4, #0x17]
	b       branch_20759b2

readPkmnBaseDataFlee: @ 2075990 :thumb
	ldrb    r5, [r4, #0x18]
	b       branch_20759b2

branch_2075994: @ 2075994 :thumb
	ldrb    r0, [r4, #0x19]
	lsl     r0, r0, #25
	lsr     r5, r0, #25
	b       branch_20759b2

branch_207599c: @ 207599c :thumb
	ldrb    r0, [r4, #0x19]
	lsl     r0, r0, #24
	lsr     r5, r0, #31
	b       branch_20759b2

branch_20759a4: @ 20759a4 :thumb
	ldr     r5, [r4, #0x1c]
	b       branch_20759b2

branch_20759a8: @ 20759a8 :thumb
	ldr     r5, [r4, #0x20]
	b       branch_20759b2

branch_20759ac: @ 20759ac :thumb
	ldr     r5, [r4, #0x24]
	b       branch_20759b2

branch_20759b0: @ 20759b0 :thumb
	ldr     r5, [r4, #0x28]
branch_20759b2: @ 20759b2 :thumb
	mov     r0, r5
	pop     {r4-r6,pc}
thumb_func_end LoadPkmnBaseData


thumb_func_start free_PkmnData
free_PkmnData: @ 20759b8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_20759c2
	bl      ErrorHandling
branch_20759c2: @ 20759c2 :thumb

	mov     r0, r4
	bl      free
	pop     {r4,pc}
thumb_func_end free_PkmnData


thumb_func_start GetPkmnBaseData2
GetPkmnBaseData2: @ 20759cc :thumb
	push    {r3-r5,lr}
	mov     r4, r2

	bl      Function_2078740

	mov     r1, #0x0
	bl      Load_PlPersonal1
	mov     r5, r0

	mov     r1, r4
	bl      LoadPkmnBaseData
	mov     r4, r0

	mov     r0, r5
	bl      free_PkmnData

	mov     r0, r4
	pop     {r3-r5,pc}
thumb_func_end GetPkmnBaseData2


thumb_func_start GetPkmnBaseData1
GetPkmnBaseData1: @ 20759f0 :thumb
	push    {r3-r5,lr}
	mov     r4, r1

    mov     r1, #0x0
	bl      Load_PlPersonal1
	mov     r5, r0

	mov     r1, r4
	bl      LoadPkmnBaseData
	mov     r4, r0

	mov     r0, r5
	bl      free_PkmnData

	mov     r0, r4
	pop     {r3-r5,pc}
thumb_func_end GetPkmnBaseData1


.align 2, 0
.thumb
.globl Function_2075a10
Function_2075a10: @ 2075a10 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      InitEncryptPkmnData
	str     r0, [sp, #0x0]

	mov     r0, r5
	mov     r1, #PKMNDATA_SPECIES
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r0, r0, #16
	lsr     r6, r0, #16

	mov     r0, r5
	mov     r1, #PKMNDATA_LEVEL
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r0, r0, #24
	lsr     r7, r0, #24

	mov     r0, r6
	mov     r1, r7
	bl      GetBaseExpPts
	mov     r4, r0

	mov     r0, r6
	add     r1, r7, #0x1
	bl      GetBaseExpPts
	mov     r6, r0

	mov     r0, r5
	mov     r1, #PKMNDATA_EXPPTS
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r7, r0

	ldr     r1, [sp, #0x0]
	mov     r0, r5
	bl      InitEncryptPkmnData_Part1And2
	sub     r1, r7, r4
	mov     r0, #100
	mul     r0, r1
	sub     r1, r6, r4
	blx     _u32_div_f
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	pop     {r3-r7,pc}
@ 0x2075a70


.thumb
Function_2075a70: @ 2075a70 :thumb
	ldr     r3, =Function_2075a78+1
	bx      r3
@ 0x2075a74

.align 2
.pool



.thumb
Function_2075a78: @ 2075a78 :thumb
	push    {r4-r6,lr}
	mov     r1, #PKMNDATA_SPECIES
	mov     r2, #0x0
	mov     r4, r0
	bl      GetPkmnData2
	lsl     r0, r0, #16
	lsr     r6, r0, #16

	mov     r0, r4
	bl      InitPkmnLevel
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r0, r0, #16
	lsr     r5, r0, #16

	mov     r0, r4
	mov     r1, #PKMNDATA_EXPPTS
	mov     r2, #0x0
	bl      GetPkmnData2
	mov     r4, r0

	mov     r0, r6
	mov     r1, r5
	bl      GetBaseExpPts
	sub     r0, r0, r4
	pop     {r4-r6,pc}
@ 0x2075aac


thumb_func_start GetBaseExpPtsOfSpeciesAndLevel
GetBaseExpPtsOfSpeciesAndLevel: @ 2075aac :thumb
	push    {r3-r5,lr}
	mov     r5, r0

	mov     r1, #PKMNDATA_SPECIES
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r4, r0

	mov     r0, r5
	mov     r1, #PKMNDATA_LEVEL
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, r0

	mov     r0, r4
	bl      GetBaseExpPts
	pop     {r3-r5,pc}
thumb_func_end GetBaseExpPtsOfSpeciesAndLevel


thumb_func_start GetBaseExpPts
GetBaseExpPts: @ 2075ad0 :thumb
	push    {r4,lr}
	mov     r4, r1

	mov     r1, #PKMNBASEDATA_EXPRATE
	bl      GetPkmnBaseData1

	mov     r1, r4
	bl      GetDataFromPlGrowTbl

	pop     {r4,pc}
thumb_func_end GetBaseExpPts


thumb_func_start LoadFromNarc_PlGrowTbl
LoadFromNarc_PlGrowTbl: @ 2075ae4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1

	cmp     r5, #0x8
	blt     branch_2075af2
	bl      ErrorHandling
branch_2075af2: @ 2075af2 :thumb

	mov     r0, r4
	mov     r1, #0x3            @ poketool/personal/pl_growtbl.narc
	mov     r2, r5
	bl      LoadFromNARC
	pop     {r3-r5,pc}
thumb_func_end LoadFromNarc_PlGrowTbl


thumb_func_start GetDataFromPlGrowTbl
GetDataFromPlGrowTbl: @ 2075b00 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1

	cmp     r6, #0x8
	blt     branch_2075b0e
	bl      ErrorHandling
branch_2075b0e: @ 2075b0e :thumb

	cmp     r5, #101
	ble     branch_2075b16
	bl      ErrorHandling
branch_2075b16: @ 2075b16 :thumb

	mov     r1, #101
	mov     r0, #0x0
	lsl     r1, r1, #2
	bl      malloc_maybe
	mov     r4, r0

	mov     r0, r6
	mov     r1, r4
	bl      LoadFromNarc_PlGrowTbl
	lsl     r0, r5, #2
	ldr     r5, [r4, r0]

	mov     r0, r4
	bl      free

	mov     r0, r5
	pop     {r4-r6,pc}
thumb_func_end GetDataFromPlGrowTbl


thumb_func_start Call_InitPkmnLevel
Call_InitPkmnLevel: @ 2075b38 :thumb
	ldr     r3, =InitPkmnLevel+1
	bx      r3
@ 0x2075b3c

.align 2
.pool
thumb_func_end Call_InitPkmnLevel



thumb_func_start InitPkmnLevel
InitPkmnLevel: @ 2075b40 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      InitEncryptPkmnData_Part1
	mov     r6, r0

	mov     r0, r5
	mov     r1, #PKMNDATA_SPECIES
	mov     r2, #0x0
	bl      GetPkmnData2
	mov     r4, r0

	mov     r0, r5
	mov     r1, #PKMNDATA_EXPPTS
	mov     r2, #0x0
	bl      GetPkmnData2
	mov     r7, r0

	mov     r0, r5
	mov     r1, r6
	bl      InitEncryptPkmnData_Part1Again
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	mov     r1, r7
	bl      CalcPkmnLevel
	pop     {r3-r7,pc}
thumb_func_end InitPkmnLevel


/* Input:
r0 = PkmnID
r1 = Experience points
*/
thumb_func_start CalcPkmnLevel
CalcPkmnLevel: @ 2075b78 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r1, #0x0
	bl      Load_PlPersonal1
	mov     r6, r0

	mov     r1, r5
	mov     r2, r4
	bl      Function_2075b9c
	mov     r4, r0

	mov     r0, r6
	bl      free_PkmnData
	mov     r0, r4
	pop     {r4-r6,pc}
thumb_func_end CalcPkmnLevel


thumb_func_start Function_2075b9c
Function_2075b9c: @ 2075b9c :thumb
	push    {r4,lr}

	mov     r1, #PKMNBASEDATA_EXPRATE
	mov     r4, r2
	bl      LoadPkmnBaseData

	ldr     r1, =RAM_21c089c
	bl      LoadFromNarc_PlGrowTbl

	ldr     r2, =RAM_21c08a0
	mov     r1, #0x1
branch_2075bb0: @ 2075bb0 :thumb
	ldr     r0, [r2, #0x0]
	cmp     r0, r4
	bhi     branch_2075bbe
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1d12 @ add r2, r2, #0x4
	cmp     r1, #101
	blt     branch_2075bb0
branch_2075bbe: @ 2075bbe :thumb
	sub     r0, r1, #0x1

	pop     {r4,pc}
@ 0x2075bc2

.align 2
.pool
thumb_func_end Function_2075b9c



.thumb
.globl Function_2075bcc
Function_2075bcc: @ 2075bcc :thumb
	ldr     r3, =Function_2075bd4+1
	bx      r3
@ 0x2075bd0

.align 2
.pool



.thumb
.globl Function_2075bd4
Function_2075bd4: @ 2075bd4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      InitEncryptPkmnData_Part1

	mov     r1, #PKMNDATA_PERSONALITYVALUE
	mov     r4, r0
	mov     r0, r5
	mov     r2, r1
	bl      GetPkmnData2
	mov     r6, r0

	mov     r0, r5
	mov     r1, r4
	bl      InitEncryptPkmnData_Part1Again

	mov     r0, r6
	bl      PkmnData_DivBy25
	pop     {r4-r6,pc}
@ 0x2075bfa


thumb_func_start PkmnData_DivBy25
PkmnData_DivBy25: @ 2075bfc :thumb
	push    {r3,lr}
	mov     r1, #25
	blx     _u32_div_f
	lsl     r0, r1, #24
	lsr     r0, r0, #24
	pop     {r3,pc}
thumb_func_end PkmnData_DivBy25


.align 2, 0
.thumb
Function_2075c0c: @ 2075c0c :thumb
	push    {r3,lr}
	cmp     r2, #0x1
	blo     branch_2075c16
	cmp     r2, #0x5
	bls     branch_2075c1a
branch_2075c16: @ 2075c16 :thumb
	mov     r0, r1
	pop     {r3,pc}

branch_2075c1a: @ 2075c1a :thumb
	lsl     r3, r0, #2
	add     r3, r0, r3
	ldr     r0, =Unknown_20f0618
	.hword  0x1e52 @ sub r2, r2, #0x1
	add     r0, r0, r3
	ldsb    r2, [r2, r0]
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r2, r0
	beq     branch_2075c46
	cmp     r2, #0x1
	bne     branch_2075c58
	mov     r0, #0x6e
	mul     r0, r1
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	mov     r1, #100
	blx     _s32_div_f
	lsl     r0, r0, #16
	lsr     r1, r0, #16
	b       branch_2075c58

branch_2075c46: @ 2075c46 :thumb
	mov     r0, #0x5a
	mul     r0, r1
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	mov     r1, #100
	blx     _s32_div_f
	lsl     r0, r0, #16
	lsr     r1, r0, #16
branch_2075c58: @ 2075c58 :thumb
	mov     r0, r1
	pop     {r3,pc}
@ 0x2075c5c

.align 2
.pool



.thumb
Function_2075c60: @ 2075c60 :thumb
	lsl     r2, r0, #2
	add     r2, r0, r2
	ldr     r0, =Unknown_20f0618
	.hword  0x1e49 @ sub r1, r1, #0x1
	add     r0, r0, r2
	ldsb    r0, [r1, r0]
	bx      lr
@ 0x2075c6e

.align 2
.pool



thumb_func_start Function_2075c74
Function_2075c74: @ 2075c74 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r1
	mov     r5, r0
	str     r2, [sp, #0x0]
	cmp     r6, #0x5
	bne     branch_2075c8c

	bl      PRNG
	mov     r1, #0x1
	tst     r0, r1
	bne     branch_2075d60

branch_2075c8c: @ 2075c8c :thumb
	mov     r0, r5
	mov     r1, #PKMNDATA_ae
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r0, r0, #16
	lsr     r1, r0, #16
	beq     branch_2075d60
	ldr     r0, =0x1ee
	cmp     r1, r0
	beq     branch_2075d60

	mov     r0, r5
	mov     r1, #PKMNDATA_ITEM
	mov     r2, #0x0
	bl      GetPkmnData

	lsl     r0, r0, #16
	lsr     r0, r0, #16
	mov     r1, #0x1
	mov     r2, #0x0
	bl      GetItemData
	lsl     r0, r0, #24
	mov     r4, #0x0
	lsr     r7, r0, #24

	mov     r0, r5
	mov     r1, #PKMNDATA_FRIENDSHIP
	mov     r2, r4
	bl      GetPkmnData
	add     r1, sp, #0x4
	strh    r0, [r1, #0x0]

	mov     r0, r4
	ldsh    r1, [r1, r0]
	cmp     r1, #100
	blt     branch_2075cda
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
branch_2075cda: @ 2075cda :thumb
	cmp     r1, #0xc8
	blt     branch_2075ce4
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
branch_2075ce4: @ 2075ce4 :thumb
	lsl     r0, r6, #1
	add     r1, r6, r0
	ldr     r0, =Unknown_20f05a0
	add     r0, r0, r1
	ldsb    r4, [r4, r0]
	cmp     r4, #0x0
	ble     branch_2075d06

	mov     r0, r5
	mov     r1, #PKMNDATA_POKEBALL
	mov     r2, #0x0
	bl      GetPkmnData

	cmp     r0, #0xb
	bne     branch_2075d06
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	asr     r4, r0, #24
branch_2075d06: @ 2075d06 :thumb
	cmp     r4, #0x0
	ble     branch_2075d20

	mov     r0, r5
	mov     r1, #PKMNDATA_EGGLOCATION2
	mov     r2, #0x0
	bl      GetPkmnData

	ldr     r1, [sp, #0x0]
	cmp     r1, r0
	bne     branch_2075d20
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	asr     r4, r0, #24
branch_2075d20: @ 2075d20 :thumb
	cmp     r4, #0x0
	ble     branch_2075d36
	cmp     r7, #0x35
	bne     branch_2075d36
	mov     r0, #0x96
	mul     r0, r4
	mov     r1, #100
	blx     _s32_div_f
	lsl     r0, r0, #24
	asr     r4, r0, #24
branch_2075d36: @ 2075d36 :thumb
	add     r0, sp, #0x4
	mov     r1, #0x0
	ldsh    r2, [r0, r1]
	add     r2, r2, r4
	strh    r2, [r0, #0x0]
	ldsh    r2, [r0, r1]
	cmp     r2, #0x0
	bge     branch_2075d48
	strh    r1, [r0, #0x0]

branch_2075d48: @ 2075d48 :thumb
	add     r1, sp, #0x4
	mov     r0, #0x0
	ldsh    r0, [r1, r0]
	cmp     r0, #0xff
	ble     branch_2075d56
	mov     r0, #0xff
	strh    r0, [r1, #0x0]

branch_2075d56: @ 2075d56 :thumb
	mov     r0, r5
	mov     r1, #PKMNDATA_FRIENDSHIP
	add     r2, sp, #0x4
	bl      SetPkmnData
branch_2075d60: @ 2075d60 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2075d64

.align 2
.pool
thumb_func_end Function_2075c74



thumb_func_start Call_DecidePkmnGender
Call_DecidePkmnGender: @ 2075d6c :thumb
	ldr     r3, =DecidePkmnGender+1
	bx      r3
@ 0x2075d70

.pool
thumb_func_end Call_DecidePkmnGender



thumb_func_start DecidePkmnGender
DecidePkmnGender: @ 2075d74 :thumb
	push    {r3-r7,lr}
	mov     r5, r0

	bl      InitEncryptPkmnData_Part1
	mov     r6, r0

	mov     r0, r5
	mov     r1, #PKMNDATA_SPECIES
	mov     r2, #0x0
	bl      GetPkmnData2

	lsl     r0, r0, #16
	mov     r1, #0x0            @ PKMNDATA_PERSONALITYVALUE
	lsr     r4, r0, #16
	mov     r0, r5
	mov     r2, r1
	bl      GetPkmnData2
	mov     r7, r0

	mov     r0, r5
	mov     r1, r6
	bl      InitEncryptPkmnData_Part1Again

	mov     r0, r4
	mov     r1, r7
	bl      Function_2075dac

	pop     {r3-r7,pc}
thumb_func_end DecidePkmnGender


.align 2, 0
.thumb
.globl Function_2075dac
Function_2075dac: @ 2075dac :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0

	mov     r1, #0x0
	bl      Load_PlPersonal1
	mov     r6, r0

	mov     r1, r5
	mov     r2, r4
	bl      Function_2075dd0
	mov     r4, r0

	mov     r0, r6
	bl      free_PkmnData

	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x2075dce


.align 2, 0
.thumb
.globl Function_2075dd0
Function_2075dd0: @ 2075dd0 :thumb
	push    {r4,lr}
	mov     r1, #0x12
	mov     r4, r2
	bl      LoadPkmnBaseData
	lsl     r0, r0, #24
	lsr     r1, r0, #24
	beq     branch_2075dea
	cmp     r1, #0xfe
	beq     branch_2075dee
	cmp     r1, #0xff
	beq     branch_2075df2
	b       branch_2075df6

branch_2075dea: @ 2075dea :thumb
	mov     r0, #0x0
	pop     {r4,pc}

branch_2075dee: @ 2075dee :thumb
	mov     r0, #0x1
	pop     {r4,pc}

branch_2075df2: @ 2075df2 :thumb
	mov     r0, #0x2
	pop     {r4,pc}

branch_2075df6: @ 2075df6 :thumb
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	cmp     r1, r0
	bls     branch_2075e02
	mov     r0, #0x1
	b       branch_2075e04

branch_2075e02: @ 2075e02 :thumb
	mov     r0, #0x0
branch_2075e04: @ 2075e04 :thumb
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	pop     {r4,pc}
@ 0x2075e0a


thumb_func_start Call_CheckIfShinyPkmn_2
Call_CheckIfShinyPkmn_2: @ 2075e0c :thumb
	ldr     r3, =CheckIfShinyPkmn_2+1
	bx      r3
@ 0x2075e10

.pool
thumb_func_end Call_CheckIfShinyPkmn_2



thumb_func_start CheckIfShinyPkmn_2
CheckIfShinyPkmn_2: @ 2075e14 :thumb
	push    {r3-r5,lr}

	mov     r1, #PKMNDATA_OTID
	mov     r2, #0x0
	mov     r5, r0
	bl      GetPkmnData2

	mov     r1, #0x0 @ PKMNDATA_PERSONALITYVALUE
	mov     r4, r0
	mov     r0, r5
	mov     r2, r1
	bl      GetPkmnData2
	mov     r1, r0

	mov     r0, r4
	bl      CheckIfShinyPkmn

	pop     {r3-r5,pc}
thumb_func_end CheckIfShinyPkmn_2


/* Input:
r0: Original Trainer ID
r1: Personality Value

The exact calculation is (TrainerID xor SecretID) xor (PersonalityValue[31..16] xor PersonalityValue[15..0]), where the latter two values represent the highest and lowest 16 bits of the 32-bit personality value respectively; more detailed information can be found at the personality value article.

The above formula can result in a number from 0 to 65535. If the result is less than 8, then the Pokémon is Shiny. This gives an overall probability of 8/65536 or 1/8192, exactly the same as in Generation II. 
*/
thumb_func_start CheckIfShinyPkmn
CheckIfShinyPkmn: @ 2075e38 :thumb
	ldr     r3, =0xffff0000
	lsl     r2, r1, #16
	and     r1, r3
	and     r3, r0
	lsl     r0, r0, #16
	lsr     r3, r3, #16
	lsr     r0, r0, #16
	lsr     r1, r1, #16
	eor     r0, r3
	lsr     r2, r2, #16
	eor     r0, r1
	eor     r0, r2
	cmp     r0, #8
	bhs     notShinyPkmn
	mov     r0, #0x1
	b       isShinyPkmn

notShinyPkmn: @ 2075e58 :thumb
	mov     r0, #0x0
isShinyPkmn: @ 2075e5a :thumb
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bx      lr
@ 0x2075e60

.align 2
.pool
thumb_func_end CheckIfShinyPkmn



.thumb
.globl Function_2075e64
Function_2075e64: @ 2075e64 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	ldr     r0, =0xffff0000
	and     r0, r7
	lsr     r1, r0, #16
	lsl     r0, r7, #16
	lsr     r0, r0, #16
	eor     r0, r1
	lsr     r7, r0, #3
	bl      PRNG
	mov     r1, #0x7
	and     r0, r1
	lsl     r0, r0, #16
	lsr     r6, r0, #16
	bl      PRNG
	mov     r1, #0x7
	and     r0, r1
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	mov     r4, #0x0
branch_2075e90: @ 2075e90 :thumb
	mov     r0, r4
	bl      Function_20787cc
	tst     r0, r7
	beq     branch_2075ec0
	bl      PRNG
	mov     r1, #0x1
	tst     r0, r1
	beq     branch_2075eb2
	add     r0, r4, #0x3
	bl      Function_20787cc
	orr     r0, r6
	lsl     r0, r0, #16
	lsr     r6, r0, #16
	b       branch_2075ee2

branch_2075eb2: @ 2075eb2 :thumb
	add     r0, r4, #0x3
	bl      Function_20787cc
	orr     r0, r5
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	b       branch_2075ee2

branch_2075ec0: @ 2075ec0 :thumb
	bl      PRNG
	mov     r1, #0x1
	tst     r0, r1
	beq     branch_2075ee2
	add     r0, r4, #0x3
	bl      Function_20787cc
	orr     r0, r6
	lsl     r0, r0, #16
	lsr     r6, r0, #16
	add     r0, r4, #0x3
	bl      Function_20787cc
	orr     r0, r5
	lsl     r0, r0, #16
	lsr     r5, r0, #16
branch_2075ee2: @ 2075ee2 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0xd
	blt     branch_2075e90
	lsl     r0, r5, #16
	orr     r0, r6
	pop     {r3-r7,pc}
@ 0x2075eee

.align 2
.pool



.thumb
.globl Function_2075ef4
Function_2075ef4: @ 2075ef4 :thumb
	push    {r3,lr}
	mov     r3, #0x0
	bl      Function_2075f0c
	pop     {r3,pc}
@ 0x2075efe


.align 2, 0
.thumb
.globl Function_2075f00
Function_2075f00: @ 2075f00 :thumb
	push    {r3,lr}
	mov     r3, #0x1
	bl      Function_2075f0c
	pop     {r3,pc}
@ 0x2075f0a


.align 2, 0
.thumb
.globl Function_2075f0c
Function_2075f0c: @ 2075f0c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r5, r1
	str     r0, [sp, #0xc]
	mov     r0, r5
	str     r2, [sp, #0x10]
	str     r3, [sp, #0x14]
	bl      InitEncryptPkmnData_Part1
	str     r0, [sp, #0x1c]

	mov     r0, r5
	mov     r1, #PKMNDATA_ae
	mov     r2, #0x0
	bl      GetPkmnData2
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	mov     r0, r5
	bl      DecidePkmnGender
	str     r0, [sp, #0x18]
	mov     r0, r5
	bl      CheckIfShinyPkmn_2

	mov     r1, #PKMNDATA_PERSONALITYVALUE
	mov     r7, r0
	mov     r0, r5
	mov     r2, r1
	bl      GetPkmnData2
	mov     r6, r0

	ldr     r0, =UnknownPkmnID
	cmp     r4, r0
	bne     branch_2075f68

	mov     r0, r5
	mov     r1, #PKMNDATA_SPECIES
	mov     r2, #0x0
	bl      GetPkmnData2
	ldr     r1, =MANAPHY
	cmp     r0, r1
	bne     branch_2075f64
	mov     r1, #0x1
	b       branch_2075f76

branch_2075f64: @ 2075f64 :thumb
	mov     r1, #0x0
	b       branch_2075f76

branch_2075f68: @ 2075f68 :thumb
	mov     r0, r5
	mov     r1, #PKMNDATA_ALTERNATEFORM
	mov     r2, #0x0
	bl      GetPkmnData2
	lsl     r0, r0, #24
	lsr     r1, r0, #24
branch_2075f76: @ 2075f76 :thumb
	ldr     r0, [sp, #0x14]
	str     r7, [sp, #0x0]
	cmp     r0, #0x1
	bne     branch_2075f90
	str     r1, [sp, #0x4]
	str     r6, [sp, #0x8]
	ldr     r0, [sp, #0xc]
	ldr     r2, [sp, #0x18]
	ldr     r3, [sp, #0x10]
	mov     r1, r4
	bl      Function_2076300
	b       branch_2075fa0

branch_2075f90: @ 2075f90 :thumb
	str     r1, [sp, #0x4]
	str     r6, [sp, #0x8]
	ldr     r0, [sp, #0xc]
	ldr     r2, [sp, #0x18]
	ldr     r3, [sp, #0x10]
	mov     r1, r4
	bl      Function_2075fb4
branch_2075fa0: @ 2075fa0 :thumb
	ldr     r1, [sp, #0x1c]
	mov     r0, r5
	bl      InitEncryptPkmnData_Part1Again

	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x2075fac

.align 2
.pool



.thumb
.globl Function_2075fb4
Function_2075fb4: @ 2075fb4 :thumb
	push    {r3-r7,lr}
	str     r2, [sp, #0x0]
	mov     r4, r1
	mov     r5, r0
	ldr     r6, [sp, #0x18]
	ldr     r1, [sp, #0x1c]
	mov     r0, #0x0
	strh    r0, [r5, #0x6]
	strb    r0, [r5, #0x8]
	str     r0, [r5, #0xc]
	mov     r0, r4
	mov     r7, r3
	bl      Function_20761e8
	ldr     r1, =0x1a5
	cmp     r4, r1
	bgt     branch_2076024
	blt     branch_2075fda
	b       branch_20760e4

branch_2075fda: @ 2075fda :thumb
	mov     r2, r1
	sub     r2, #0x46
	cmp     r4, r2
	bgt     branch_2075ff2
	sub     r1, #0x46
	cmp     r4, r1
	blt     branch_2075fea
	b       branch_207610e

branch_2075fea: @ 2075fea :thumb
	cmp     r4, #0xc9
	bne     branch_2075ff0
	b       branch_2076136

branch_2075ff0: @ 2075ff0 :thumb
	b       branch_20761aa

branch_2075ff2: @ 2075ff2 :thumb
	mov     r2, r1
	sub     r2, #0x23
	cmp     r4, r2
	bgt     branch_2076004
	sub     r1, #0x23
	cmp     r4, r1
	bne     branch_2076002
	b       branch_2076124

branch_2076002: @ 2076002 :thumb
	b       branch_20761aa

branch_2076004: @ 2076004 :thumb
	mov     r2, r1
	sub     r2, #0x8
	cmp     r4, r2
	bgt     branch_2076022
	mov     r2, r1
	sub     r2, #0x9
	cmp     r4, r2
	blt     branch_2076022
	mov     r2, r1
	sub     r2, #0x9
	cmp     r4, r2
	beq     branch_2076090
	sub     r1, #0x8
	cmp     r4, r1
	beq     branch_20760a6
branch_2076022: @ 2076022 :thumb
	b       branch_20761aa

branch_2076024: @ 2076024 :thumb
	mov     r2, r1
	add     r2, #0x42
	cmp     r4, r2
	bgt     branch_2076056
	mov     r2, r1
	add     r2, #0x42
	cmp     r4, r2
	blt     branch_2076036
	b       branch_2076194

branch_2076036: @ 2076036 :thumb
	add     r2, r1, #0x2
	cmp     r4, r2
	bgt     branch_207604c
	add     r2, r1, #0x1
	cmp     r4, r2
	blt     branch_207604a
	beq     branch_20760bc
	.hword  0x1c89 @ add r1, r1, #0x2
	cmp     r4, r1
	beq     branch_20760d0
branch_207604a: @ 207604a :thumb
	b       branch_20761aa

branch_207604c: @ 207604c :thumb
	add     r1, #0x3a
	cmp     r4, r1
	bne     branch_2076054
	b       branch_207617e

branch_2076054: @ 2076054 :thumb
	b       branch_20761aa

branch_2076056: @ 2076056 :thumb
	mov     r2, r1
	add     r2, #0x47
	cmp     r4, r2
	bgt     branch_2076068
	add     r1, #0x47
	cmp     r4, r1
	bne     branch_2076066
	b       branch_2076168

branch_2076066: @ 2076066 :thumb
	b       branch_20761aa

branch_2076068: @ 2076068 :thumb
	mov     r2, r1
	add     r2, #0x4a
	cmp     r4, r2
	bgt     branch_207608e
	mov     r2, r1
	add     r2, #0x48
	cmp     r4, r2
	blt     branch_207608e
	mov     r2, r1
	add     r2, #0x48
	cmp     r4, r2
	beq     branch_20760f8
	mov     r2, r1
	add     r2, #0x49
	cmp     r4, r2
	beq     branch_207614a
	add     r1, #0x4a
	cmp     r4, r1
	beq     branch_207615a
branch_207608e: @ 207608e :thumb
	b       branch_20761aa

branch_2076090: @ 2076090 :thumb
	mov     r1, #0x75
	strh    r1, [r5, #0x0]
	lsl     r1, r0, #1
	lsr     r0, r7, #1
	add     r0, #0x48
	add     r0, r0, r1
	add     r6, #0xa6
	strh    r0, [r5, #0x2]
	add     r0, r6, r1
	strh    r0, [r5, #0x4]
	pop     {r3-r7,pc}

branch_20760a6: @ 20760a6 :thumb
	mov     r1, #0x75
	strh    r1, [r5, #0x0]
	lsl     r1, r0, #1
	lsr     r0, r7, #1
	add     r0, #0x4e
	add     r0, r0, r1
	add     r6, #0xac
	strh    r0, [r5, #0x2]
	add     r0, r6, r1
	strh    r0, [r5, #0x4]
	pop     {r3-r7,pc}

branch_20760bc: @ 20760bc :thumb
	mov     r1, #0x75
	add     r7, #0x54
	strh    r1, [r5, #0x0]
	add     r1, r7, r0
	add     r6, #0xb2
	lsl     r0, r0, #1
	strh    r1, [r5, #0x2]
	add     r0, r6, r0
	strh    r0, [r5, #0x4]
	pop     {r3-r7,pc}

branch_20760d0: @ 20760d0 :thumb
	mov     r1, #0x75
	add     r7, #0x58
	strh    r1, [r5, #0x0]
	add     r1, r7, r0
	add     r6, #0xb6
	lsl     r0, r0, #1
	strh    r1, [r5, #0x2]
	add     r0, r6, r0
	strh    r0, [r5, #0x4]
	pop     {r3-r7,pc}

branch_20760e4: @ 20760e4 :thumb
	mov     r1, #0x75
	add     r7, #0x5c
	strh    r1, [r5, #0x0]
	add     r1, r7, r0
	strh    r1, [r5, #0x2]
	lsl     r1, r6, #1
	add     r1, #0xba
	add     r0, r0, r1
	strh    r0, [r5, #0x4]
	pop     {r3-r7,pc}

branch_20760f8: @ 20760f8 :thumb
	mov     r1, #0x75
	strh    r1, [r5, #0x0]
	lsl     r1, r0, #1
	lsr     r0, r7, #1
	add     r0, #0x60
	add     r0, r0, r1
	add     r6, #0xbe
	strh    r0, [r5, #0x2]
	add     r0, r6, r1
	strh    r0, [r5, #0x4]
	pop     {r3-r7,pc}

branch_207610e: @ 207610e :thumb
	mov     r1, #0x75
	strh    r1, [r5, #0x0]
	lsl     r1, r7, #1
	add     r1, #0x40
	add     r1, r0, r1
	strh    r1, [r5, #0x2]
	lsl     r1, r6, #2
	add     r1, #0x9e
	add     r0, r0, r1
	strh    r0, [r5, #0x4]
	pop     {r3-r7,pc}

branch_2076124: @ 2076124 :thumb
	mov     r1, #0x75
	strh    r1, [r5, #0x0]
	lsr     r1, r7, #1
	lsl     r0, r0, #1
	add     r0, r1, r0
	strh    r0, [r5, #0x2]
	add     r6, #0x9a
	strh    r6, [r5, #0x4]
	pop     {r3-r7,pc}

branch_2076136: @ 2076136 :thumb
	mov     r1, #0x75
	strh    r1, [r5, #0x0]
	lsr     r1, r7, #1
	add     r1, #0x8
	lsl     r0, r0, #1
	add     r0, r1, r0
	strh    r0, [r5, #0x2]
	add     r6, #0x9c
	strh    r6, [r5, #0x4]
	pop     {r3-r7,pc}

branch_207614a: @ 207614a :thumb
	mov     r1, #0x75
	strh    r1, [r5, #0x0]
	mov     r1, r0
	add     r1, #0x84
	strh    r1, [r5, #0x2]
	add     r0, #0xe2
	strh    r0, [r5, #0x4]
	pop     {r3-r7,pc}

branch_207615a: @ 207615a :thumb
	mov     r0, #0x75
	strh    r0, [r5, #0x0]
	mov     r0, #0x84
	strh    r0, [r5, #0x2]
	mov     r0, #0xe2
	strh    r0, [r5, #0x4]
	pop     {r3-r7,pc}

branch_2076168: @ 2076168 :thumb
	mov     r1, #0x75
	strh    r1, [r5, #0x0]
	lsl     r1, r0, #1
	lsr     r0, r7, #1
	add     r0, #0x86
	add     r0, r0, r1
	add     r6, #0xe4
	strh    r0, [r5, #0x2]
	add     r0, r6, r1
	strh    r0, [r5, #0x4]
	pop     {r3-r7,pc}

branch_207617e: @ 207617e :thumb
	mov     r1, #0x75
	strh    r1, [r5, #0x0]
	lsl     r1, r0, #1
	lsr     r0, r7, #1
	add     r0, #0x8a
	add     r0, r0, r1
	add     r6, #0xe8
	strh    r0, [r5, #0x2]
	add     r0, r6, r1
	strh    r0, [r5, #0x4]
	pop     {r3-r7,pc}

branch_2076194: @ 2076194 :thumb
	mov     r1, #0x75
	strh    r1, [r5, #0x0]
	lsl     r1, r0, #1
	lsr     r0, r7, #1
	add     r0, #0x96
	add     r0, r0, r1
	add     r6, #0xf4
	strh    r0, [r5, #0x2]
	add     r0, r6, r1
	strh    r0, [r5, #0x4]
	pop     {r3-r7,pc}

branch_20761aa: @ 20761aa :thumb
	mov     r0, #0x4
	strh    r0, [r5, #0x0]
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x1
	beq     branch_20761b8
	mov     r1, #0x1
	b       branch_20761ba

branch_20761b8: @ 20761b8 :thumb
	mov     r1, #0x0
branch_20761ba: @ 20761ba :thumb
	mov     r0, #0x6
	mul     r0, r4
	add     r2, r7, r0
	add     r1, r2, r1
	.hword  0x1d00 @ add r0, r0, #0x4
	strh    r1, [r5, #0x2]
	add     r0, r6, r0
	strh    r0, [r5, #0x4]
	ldr     r0, =0x147
	cmp     r4, r0
	bne     branch_20761de
	cmp     r7, #0x2
	bne     branch_20761de
	strh    r0, [r5, #0x6]
	mov     r0, #0x0
	strb    r0, [r5, #0x8]
	ldr     r0, [sp, #0x20]
	str     r0, [r5, #0xc]
branch_20761de: @ 20761de :thumb
	pop     {r3-r7,pc}
@ 0x20761e0

.align 2
.pool



.thumb
Function_20761e8: @ 20761e8 :thumb
	ldr     r2, =0x1a5
	cmp     r0, r2
	bgt     branch_2076234
	bge     branch_20762b2
	mov     r3, r2
	sub     r3, #0x46
	cmp     r0, r3
	bgt     branch_2076204
	sub     r2, #0x46
	cmp     r0, r2
	bge     branch_20762c2
	cmp     r0, #0xc9
	beq     branch_20762d2
	b       branch_20762f8

branch_2076204: @ 2076204 :thumb
	mov     r3, r2
	sub     r3, #0x23
	cmp     r0, r3
	bgt     branch_2076214
	sub     r2, #0x23
	cmp     r0, r2
	beq     branch_20762ca
	b       branch_20762f8

branch_2076214: @ 2076214 :thumb
	mov     r3, r2
	sub     r3, #0x8
	cmp     r0, r3
	bgt     branch_20762f8
	mov     r3, r2
	sub     r3, #0x9
	cmp     r0, r3
	blt     branch_20762f8
	mov     r3, r2
	sub     r3, #0x9
	cmp     r0, r3
	beq     branch_2076292
	sub     r2, #0x8
	cmp     r0, r2
	beq     branch_207629a
	b       branch_20762f8

branch_2076234: @ 2076234 :thumb
	mov     r3, r2
	add     r3, #0x42
	cmp     r0, r3
	bgt     branch_2076262
	mov     r3, r2
	add     r3, #0x42
	cmp     r0, r3
	bge     branch_20762f2
	add     r3, r2, #0x2
	cmp     r0, r3
	bgt     branch_207625a
	add     r3, r2, #0x1
	cmp     r0, r3
	blt     branch_20762f8
	beq     branch_20762a2
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r0, r2
	beq     branch_20762aa
	b       branch_20762f8

branch_207625a: @ 207625a :thumb
	add     r2, #0x3a
	cmp     r0, r2
	beq     branch_20762ea
	b       branch_20762f8

branch_2076262: @ 2076262 :thumb
	mov     r3, r2
	add     r3, #0x47
	cmp     r0, r3
	bgt     branch_2076272
	add     r2, #0x47
	cmp     r0, r2
	beq     branch_20762e2
	b       branch_20762f8

branch_2076272: @ 2076272 :thumb
	mov     r3, r2
	add     r3, #0x49
	cmp     r0, r3
	bgt     branch_20762f8
	mov     r3, r2
	add     r3, #0x48
	cmp     r0, r3
	blt     branch_20762f8
	mov     r3, r2
	add     r3, #0x48
	cmp     r0, r3
	beq     branch_20762ba
	add     r2, #0x49
	cmp     r0, r2
	beq     branch_20762da
	b       branch_20762f8

branch_2076292: @ 2076292 :thumb
	cmp     r1, #0x2
	bls     branch_20762f8
	mov     r1, #0x0
	b       branch_20762f8

branch_207629a: @ 207629a :thumb
	cmp     r1, #0x2
	bls     branch_20762f8
	mov     r1, #0x0
	b       branch_20762f8

branch_20762a2: @ 20762a2 :thumb
	cmp     r1, #0x1
	bls     branch_20762f8
	mov     r1, #0x0
	b       branch_20762f8

branch_20762aa: @ 20762aa :thumb
	cmp     r1, #0x1
	bls     branch_20762f8
	mov     r1, #0x0
	b       branch_20762f8

branch_20762b2: @ 20762b2 :thumb
	cmp     r1, #0x1
	bls     branch_20762f8
	mov     r1, #0x0
	b       branch_20762f8

branch_20762ba: @ 20762ba :thumb
	cmp     r1, #0x11
	bls     branch_20762f8
	mov     r1, #0x0
	b       branch_20762f8

branch_20762c2: @ 20762c2 :thumb
	cmp     r1, #0x3
	bls     branch_20762f8
	mov     r1, #0x0
	b       branch_20762f8

branch_20762ca: @ 20762ca :thumb
	cmp     r1, #0x3
	bls     branch_20762f8
	mov     r1, #0x0
	b       branch_20762f8

branch_20762d2: @ 20762d2 :thumb
	cmp     r1, #0x1c
	blo     branch_20762f8
	mov     r1, #0x0
	b       branch_20762f8

branch_20762da: @ 20762da :thumb
	cmp     r1, #0x1
	bls     branch_20762f8
	mov     r1, #0x0
	b       branch_20762f8

branch_20762e2: @ 20762e2 :thumb
	cmp     r1, #0x1
	bls     branch_20762f8
	mov     r1, #0x0
	b       branch_20762f8

branch_20762ea: @ 20762ea :thumb
	cmp     r1, #0x5
	bls     branch_20762f8
	mov     r1, #0x0
	b       branch_20762f8

branch_20762f2: @ 20762f2 :thumb
	cmp     r1, #0x1
	bls     branch_20762f8
	mov     r1, #0x0
branch_20762f8: @ 20762f8 :thumb
	mov     r0, r1
	bx      lr
@ 0x20762fc

.align 2
.pool



.thumb
Function_2076300: @ 2076300 :thumb
	push    {r3-r7,lr}
	str     r2, [sp, #0x0]
	mov     r4, r1
	mov     r5, r0
	ldr     r6, [sp, #0x18]
	ldr     r1, [sp, #0x1c]
	mov     r0, #0x0
	strh    r0, [r5, #0x6]
	strb    r0, [r5, #0x8]
	str     r0, [r5, #0xc]
	mov     r0, r4
	mov     r7, r3
	bl      Function_20761e8
	ldr     r1, =0x1a5
	cmp     r4, r1
	bgt     branch_2076370
	blt     branch_2076326
	b       branch_2076430

branch_2076326: @ 2076326 :thumb
	mov     r2, r1
	sub     r2, #0x46
	cmp     r4, r2
	bgt     branch_207633e
	sub     r1, #0x46
	cmp     r4, r1
	blt     branch_2076336
	b       branch_207645a

branch_2076336: @ 2076336 :thumb
	cmp     r4, #0xc9
	bne     branch_207633c
	b       branch_2076482

branch_207633c: @ 207633c :thumb
	b       branch_207656c

branch_207633e: @ 207633e :thumb
	mov     r2, r1
	sub     r2, #0x23
	cmp     r4, r2
	bgt     branch_2076350
	sub     r1, #0x23
	cmp     r4, r1
	bne     branch_207634e
	b       branch_2076470

branch_207634e: @ 207634e :thumb
	b       branch_207656c

branch_2076350: @ 2076350 :thumb
	mov     r2, r1
	sub     r2, #0x8
	cmp     r4, r2
	bgt     branch_207636e
	mov     r2, r1
	sub     r2, #0x9
	cmp     r4, r2
	blt     branch_207636e
	mov     r2, r1
	sub     r2, #0x9
	cmp     r4, r2
	beq     branch_20763dc
	sub     r1, #0x8
	cmp     r4, r1
	beq     branch_20763f2
branch_207636e: @ 207636e :thumb
	b       branch_207656c

branch_2076370: @ 2076370 :thumb
	mov     r2, r1
	add     r2, #0x42
	cmp     r4, r2
	bgt     branch_20763a2
	mov     r2, r1
	add     r2, #0x42
	cmp     r4, r2
	blt     branch_2076382
	b       branch_207652e

branch_2076382: @ 2076382 :thumb
	add     r2, r1, #0x2
	cmp     r4, r2
	bgt     branch_2076398
	add     r2, r1, #0x1
	cmp     r4, r2
	blt     branch_2076396
	beq     branch_2076408
	.hword  0x1c89 @ add r1, r1, #0x2
	cmp     r4, r1
	beq     branch_207641c
branch_2076396: @ 2076396 :thumb
	b       branch_207656c

branch_2076398: @ 2076398 :thumb
	add     r1, #0x3a
	cmp     r4, r1
	bne     branch_20763a0
	b       branch_20764f0

branch_20763a0: @ 20763a0 :thumb
	b       branch_207656c

branch_20763a2: @ 20763a2 :thumb
	mov     r2, r1
	add     r2, #0x47
	cmp     r4, r2
	bgt     branch_20763b4
	add     r1, #0x47
	cmp     r4, r1
	bne     branch_20763b2
	b       branch_20764b4

branch_20763b2: @ 20763b2 :thumb
	b       branch_207656c

branch_20763b4: @ 20763b4 :thumb
	mov     r2, r1
	add     r2, #0x4a
	cmp     r4, r2
	bgt     branch_20763da
	mov     r2, r1
	add     r2, #0x48
	cmp     r4, r2
	blt     branch_20763da
	mov     r2, r1
	add     r2, #0x48
	cmp     r4, r2
	beq     branch_2076444
	mov     r2, r1
	add     r2, #0x49
	cmp     r4, r2
	beq     branch_2076496
	add     r1, #0x4a
	cmp     r4, r1
	beq     branch_20764a6
branch_20763da: @ 20763da :thumb
	b       branch_207656c

branch_20763dc: @ 20763dc :thumb
	mov     r1, #0xa6
	strh    r1, [r5, #0x0]
	lsl     r1, r0, #1
	lsr     r0, r7, #1
	add     r0, #0x48
	add     r0, r0, r1
	add     r6, #0x92
	strh    r0, [r5, #0x2]
	add     r0, r6, r1
	strh    r0, [r5, #0x4]
	pop     {r3-r7,pc}

branch_20763f2: @ 20763f2 :thumb
	mov     r1, #0xa6
	strh    r1, [r5, #0x0]
	lsl     r1, r0, #1
	lsr     r0, r7, #1
	add     r0, #0x4e
	add     r0, r0, r1
	add     r6, #0x98
	strh    r0, [r5, #0x2]
	add     r0, r6, r1
	strh    r0, [r5, #0x4]
	pop     {r3-r7,pc}

branch_2076408: @ 2076408 :thumb
	mov     r1, #0xa6
	add     r7, #0x54
	strh    r1, [r5, #0x0]
	add     r1, r7, r0
	add     r6, #0x9e
	lsl     r0, r0, #1
	strh    r1, [r5, #0x2]
	add     r0, r6, r0
	strh    r0, [r5, #0x4]
	pop     {r3-r7,pc}

branch_207641c: @ 207641c :thumb
	mov     r1, #0xa6
	add     r7, #0x58
	strh    r1, [r5, #0x0]
	add     r1, r7, r0
	add     r6, #0xa2
	lsl     r0, r0, #1
	strh    r1, [r5, #0x2]
	add     r0, r6, r0
	strh    r0, [r5, #0x4]
	pop     {r3-r7,pc}

branch_2076430: @ 2076430 :thumb
	mov     r1, #0xa6
	add     r7, #0x5c
	strh    r1, [r5, #0x0]
	add     r1, r7, r0
	strh    r1, [r5, #0x2]
	lsl     r1, r6, #1
	add     r1, #0xa6
	add     r0, r0, r1
	strh    r0, [r5, #0x4]
	pop     {r3-r7,pc}

branch_2076444: @ 2076444 :thumb
	mov     r1, #0xa6
	strh    r1, [r5, #0x0]
	lsl     r1, r0, #1
	lsr     r0, r7, #1
	add     r0, #0x60
	add     r0, r0, r1
	add     r6, #0xaa
	strh    r0, [r5, #0x2]
	add     r0, r6, r1
	strh    r0, [r5, #0x4]
	pop     {r3-r7,pc}

branch_207645a: @ 207645a :thumb
	mov     r1, #0xa6
	strh    r1, [r5, #0x0]
	lsl     r1, r7, #1
	add     r1, #0x40
	add     r1, r0, r1
	strh    r1, [r5, #0x2]
	lsl     r1, r6, #2
	add     r1, #0x8a
	add     r0, r0, r1
	strh    r0, [r5, #0x4]
	pop     {r3-r7,pc}

branch_2076470: @ 2076470 :thumb
	mov     r1, #0xa6
	strh    r1, [r5, #0x0]
	lsr     r1, r7, #1
	lsl     r0, r0, #1
	add     r0, r1, r0
	strh    r0, [r5, #0x2]
	add     r6, #0x86
	strh    r6, [r5, #0x4]
	pop     {r3-r7,pc}

branch_2076482: @ 2076482 :thumb
	mov     r1, #0xa6
	strh    r1, [r5, #0x0]
	lsr     r1, r7, #1
	add     r1, #0x8
	lsl     r0, r0, #1
	add     r0, r1, r0
	strh    r0, [r5, #0x2]
	add     r6, #0x88
	strh    r6, [r5, #0x4]
	pop     {r3-r7,pc}

branch_2076496: @ 2076496 :thumb
	mov     r1, #0xa6
	strh    r1, [r5, #0x0]
	mov     r1, r0
	add     r1, #0x84
	strh    r1, [r5, #0x2]
	add     r0, #0xce
	strh    r0, [r5, #0x4]
	pop     {r3-r7,pc}

branch_20764a6: @ 20764a6 :thumb
	mov     r0, #0xa6
	strh    r0, [r5, #0x0]
	mov     r0, #0x84
	strh    r0, [r5, #0x2]
	mov     r0, #0xce
	strh    r0, [r5, #0x4]
	pop     {r3-r7,pc}

branch_20764b4: @ 20764b4 :thumb
	cmp     r0, #0x0
	beq     branch_20764cc
	mov     r1, #0x75
	strh    r1, [r5, #0x0]
	lsr     r1, r7, #1
	add     r1, #0x86
	lsl     r0, r0, #1
	add     r0, r1, r0
	strh    r0, [r5, #0x2]
	add     r6, #0xe6
	strh    r6, [r5, #0x4]
	pop     {r3-r7,pc}

branch_20764cc: @ 20764cc :thumb
	mov     r0, #0xa5
	strh    r0, [r5, #0x0]
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x1
	beq     branch_20764da
	mov     r2, #0x1
	b       branch_20764dc

branch_20764da: @ 20764da :thumb
	mov     r2, #0x0
branch_20764dc: @ 20764dc :thumb
	mov     r0, #0x6
	mov     r1, r4
	mul     r1, r0
	add     r0, r7, r1
	add     r0, r0, r2
	strh    r0, [r5, #0x2]
	add     r0, r1, #0x4
	add     r0, r6, r0
	strh    r0, [r5, #0x4]
	pop     {r3-r7,pc}

branch_20764f0: @ 20764f0 :thumb
	cmp     r0, #0x0
	beq     branch_207650a
	mov     r1, #0x75
	strh    r1, [r5, #0x0]
	lsl     r1, r0, #1
	lsr     r0, r7, #1
	add     r0, #0x8a
	add     r0, r0, r1
	add     r6, #0xe8
	strh    r0, [r5, #0x2]
	add     r0, r6, r1
	strh    r0, [r5, #0x4]
	pop     {r3-r7,pc}

branch_207650a: @ 207650a :thumb
	mov     r0, #0xa5
	strh    r0, [r5, #0x0]
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x1
	beq     branch_2076518
	mov     r2, #0x1
	b       branch_207651a

branch_2076518: @ 2076518 :thumb
	mov     r2, #0x0
branch_207651a: @ 207651a :thumb
	mov     r0, #0x6
	mov     r1, r4
	mul     r1, r0
	add     r0, r7, r1
	add     r0, r0, r2
	strh    r0, [r5, #0x2]
	add     r0, r1, #0x4
	add     r0, r6, r0
	strh    r0, [r5, #0x4]
	pop     {r3-r7,pc}

branch_207652e: @ 207652e :thumb
	cmp     r0, #0x0
	beq     branch_2076548
	mov     r1, #0x75
	strh    r1, [r5, #0x0]
	lsl     r1, r0, #1
	lsr     r0, r7, #1
	add     r0, #0x96
	add     r0, r0, r1
	add     r6, #0xf4
	strh    r0, [r5, #0x2]
	add     r0, r6, r1
	strh    r0, [r5, #0x4]
	pop     {r3-r7,pc}

branch_2076548: @ 2076548 :thumb
	mov     r0, #0xa5
	strh    r0, [r5, #0x0]
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x1
	beq     branch_2076556
	mov     r2, #0x1
	b       branch_2076558

branch_2076556: @ 2076556 :thumb
	mov     r2, #0x0
branch_2076558: @ 2076558 :thumb
	mov     r0, #0x6
	mov     r1, r4
	mul     r1, r0
	add     r0, r7, r1
	add     r0, r0, r2
	strh    r0, [r5, #0x2]
	add     r0, r1, #0x4
	add     r0, r6, r0
	strh    r0, [r5, #0x4]
	pop     {r3-r7,pc}

branch_207656c: @ 207656c :thumb
	mov     r0, #0xa5
	strh    r0, [r5, #0x0]
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x1
	beq     branch_207657a
	mov     r1, #0x1
	b       branch_207657c

branch_207657a: @ 207657a :thumb
	mov     r1, #0x0
branch_207657c: @ 207657c :thumb
	mov     r0, #0x6
	mul     r0, r4
	add     r2, r7, r0
	add     r1, r2, r1
	.hword  0x1d00 @ add r0, r0, #0x4
	strh    r1, [r5, #0x2]
	add     r0, r6, r0
	strh    r0, [r5, #0x4]
	ldr     r0, =0x147
	cmp     r4, r0
	bne     branch_20765a0
	cmp     r7, #0x2
	bne     branch_20765a0
	strh    r0, [r5, #0x6]
	mov     r0, #0x0
	strb    r0, [r5, #0x8]
	ldr     r0, [sp, #0x20]
	str     r0, [r5, #0xc]
branch_20765a0: @ 20765a0 :thumb
	pop     {r3-r7,pc}
@ 0x20765a2

.align 2
.pool



thumb_func_start Function_20765ac
Function_20765ac: @ 20765ac :thumb
	ldr     r3, =Function_20765c4+1
	mov     r2, #0x0
	bx      r3
@ 0x20765b2

.align 2
.pool
thumb_func_end Function_20765ac



thumb_func_start Function_20765b8
Function_20765b8: @ 20765b8 :thumb
	ldr     r3, =Function_20765c4+1
	mov     r2, #0x1
	bx      r3
@ 0x20765be

.align 2
.pool
thumb_func_end Function_20765b8



.thumb
.globl Function_20765c4
Function_20765c4: @ 20765c4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r7, r1
	str     r2, [sp, #0x4]

	mov     r1, #PKMNDATA_ae
	mov     r2, #0x0
	mov     r5, r0
	bl      GetPkmnData2
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	mov     r0, r5
	bl      DecidePkmnGender

	mov     r1, #0x0            @ PKMNDATA_PERSONALITYVALUE
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r2, r1
	bl      GetPkmnData2
	mov     r6, r0
	ldr     r0, =0x1ee
	cmp     r4, r0
	bne     branch_207660c

	mov     r0, r5
	mov     r1, #PKMNDATA_SPECIES
	mov     r2, #0x0
	bl      GetPkmnData2
	ldr     r1, =0x1ea
	cmp     r0, r1
	bne     branch_2076608
	mov     r3, #0x1
	b       branch_207661a

branch_2076608: @ 2076608 :thumb
	mov     r3, #0x0
	b       branch_207661a

branch_207660c: @ 207660c :thumb
	mov     r0, r5
	mov     r1, #PKMNDATA_ALTERNATEFORM
	mov     r2, #0x0
	bl      GetPkmnData2
	lsl     r0, r0, #24
	lsr     r3, r0, #24
branch_207661a: @ 207661a :thumb
	ldr     r0, [sp, #0x4]
	str     r6, [sp, #0x0]
	cmp     r0, #0x1
	bne     branch_2076630
	ldr     r1, [sp, #0x8]
	mov     r0, r4
	mov     r2, r7
	bl      Function_20767bc
	add     sp, #0xc
	pop     {r4-r7,pc}

branch_2076630: @ 2076630 :thumb
	ldr     r1, [sp, #0x8]
	mov     r0, r4
	mov     r2, r7
	bl      Function_2076648
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x207663e

.align 2
.pool



.thumb
.globl Function_2076648
Function_2076648: @ 2076648 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r6, r1
	mov     r1, r3
	mov     r5, r0
	mov     r4, r2
	bl      Function_20761e8
	ldr     r1, =0x1a5
	cmp     r5, r1
	bgt     branch_20766a4
	bge     branch_2076732
	mov     r2, r1
	sub     r2, #0x46
	cmp     r5, r2
	bgt     branch_2076674
	sub     r1, #0x46
	cmp     r5, r1
	bge     branch_2076746
	cmp     r5, #0xc9
	beq     branch_207675a
	b       branch_2076798

branch_2076674: @ 2076674 :thumb
	mov     r2, r1
	sub     r2, #0x23
	cmp     r5, r2
	bgt     branch_2076684
	sub     r1, #0x23
	cmp     r5, r1
	beq     branch_2076750
	b       branch_2076798

branch_2076684: @ 2076684 :thumb
	mov     r2, r1
	sub     r2, #0x8
	cmp     r5, r2
	bgt     branch_20766a2
	mov     r2, r1
	sub     r2, #0x9
	cmp     r5, r2
	blt     branch_20766a2
	mov     r2, r1
	sub     r2, #0x9
	cmp     r5, r2
	beq     branch_207670a
	sub     r1, #0x8
	cmp     r5, r1
	beq     branch_2076716
branch_20766a2: @ 20766a2 :thumb
	b       branch_2076798

branch_20766a4: @ 20766a4 :thumb
	mov     r2, r1
	add     r2, #0x42
	cmp     r5, r2
	bgt     branch_20766d2
	mov     r2, r1
	add     r2, #0x42
	cmp     r5, r2
	bge     branch_207678c
	add     r2, r1, #0x2
	cmp     r5, r2
	bgt     branch_20766ca
	add     r2, r1, #0x1
	cmp     r5, r2
	blt     branch_2076798
	beq     branch_2076722
	.hword  0x1c89 @ add r1, r1, #0x2
	cmp     r5, r1
	beq     branch_207672a
	b       branch_2076798

branch_20766ca: @ 20766ca :thumb
	add     r1, #0x3a
	cmp     r5, r1
	beq     branch_2076780
	b       branch_2076798

branch_20766d2: @ 20766d2 :thumb
	mov     r2, r1
	add     r2, #0x47
	cmp     r5, r2
	bgt     branch_20766e2
	add     r1, #0x47
	cmp     r5, r1
	beq     branch_2076774
	b       branch_2076798

branch_20766e2: @ 20766e2 :thumb
	mov     r2, r1
	add     r2, #0x4a
	cmp     r5, r2
	bgt     branch_2076798
	mov     r2, r1
	add     r2, #0x48
	cmp     r5, r2
	blt     branch_2076798
	mov     r2, r1
	add     r2, #0x48
	cmp     r5, r2
	beq     branch_207673a
	mov     r2, r1
	add     r2, #0x49
	cmp     r5, r2
	beq     branch_2076766
	add     r1, #0x4a
	cmp     r5, r1
	beq     branch_207676e
	b       branch_2076798

branch_207670a: @ 207670a :thumb
	lsr     r2, r4, #1
	add     r2, #0x48
	lsl     r0, r0, #1
	mov     r1, #0x79
	add     r2, r2, r0
	b       branch_20767aa

branch_2076716: @ 2076716 :thumb
	lsr     r2, r4, #1
	add     r2, #0x4e
	lsl     r0, r0, #1
	mov     r1, #0x79
	add     r2, r2, r0
	b       branch_20767aa

branch_2076722: @ 2076722 :thumb
	add     r4, #0x54
	mov     r1, #0x79
	add     r2, r4, r0
	b       branch_20767aa

branch_207672a: @ 207672a :thumb
	add     r4, #0x58
	mov     r1, #0x79
	add     r2, r4, r0
	b       branch_20767aa

branch_2076732: @ 2076732 :thumb
	add     r4, #0x5c
	mov     r1, #0x79
	add     r2, r4, r0
	b       branch_20767aa

branch_207673a: @ 207673a :thumb
	lsr     r2, r4, #1
	add     r2, #0x60
	lsl     r0, r0, #1
	mov     r1, #0x79
	add     r2, r2, r0
	b       branch_20767aa

branch_2076746: @ 2076746 :thumb
	lsl     r2, r4, #1
	add     r2, #0x40
	mov     r1, #0x79
	add     r2, r0, r2
	b       branch_20767aa

branch_2076750: @ 2076750 :thumb
	lsr     r2, r4, #1
	lsl     r0, r0, #1
	mov     r1, #0x79
	add     r2, r2, r0
	b       branch_20767aa

branch_207675a: @ 207675a :thumb
	lsr     r2, r4, #1
	add     r2, #0x8
	lsl     r0, r0, #1
	mov     r1, #0x79
	add     r2, r2, r0
	b       branch_20767aa

branch_2076766: @ 2076766 :thumb
	mov     r2, r0
	mov     r1, #0x79
	add     r2, #0x84
	b       branch_20767aa

branch_207676e: @ 207676e :thumb
	mov     r1, #0x79
	mov     r2, #0x84
	b       branch_20767aa

branch_2076774: @ 2076774 :thumb
	lsr     r2, r4, #1
	add     r2, #0x88
	lsl     r0, r0, #1
	mov     r1, #0x79
	add     r2, r2, r0
	b       branch_20767aa

branch_2076780: @ 2076780 :thumb
	lsr     r2, r4, #1
	add     r2, #0x8c
	lsl     r0, r0, #1
	mov     r1, #0x79
	add     r2, r2, r0
	b       branch_20767aa

branch_207678c: @ 207678c :thumb
	lsr     r2, r4, #1
	add     r2, #0x98
	lsl     r0, r0, #1
	mov     r1, #0x79
	add     r2, r2, r0
	b       branch_20767aa

branch_2076798: @ 2076798 :thumb
	mov     r1, #0x5            @ poketool/pokegra/height.narc
	cmp     r6, #0x1
	beq     branch_20767a2
	mov     r2, #0x1
	b       branch_20767a4

branch_20767a2: @ 20767a2 :thumb
	mov     r2, #0x0
branch_20767a4: @ 20767a4 :thumb
	lsl     r0, r5, #2
	add     r0, r4, r0
	add     r2, r0, r2
branch_20767aa: @ 20767aa :thumb
	add     r0, sp, #0x0
	bl      LoadFromNARC
	add     r0, sp, #0x0
	ldrb    r0, [r0, #0x0]
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x20767b8

.align 2
.pool



.thumb
Function_20767bc: @ 20767bc :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r6, r1
	mov     r1, r3
	mov     r5, r0
	mov     r4, r2
	bl      Function_20761e8
	ldr     r1, =0x1a5
	cmp     r5, r1
	bgt     branch_2076818
	bge     branch_20768a8
	mov     r2, r1
	sub     r2, #0x46
	cmp     r5, r2
	bgt     branch_20767e8
	sub     r1, #0x46
	cmp     r5, r1
	bge     branch_20768bc
	cmp     r5, #0xc9
	beq     branch_20768d0
	b       branch_2076956

branch_20767e8: @ 20767e8 :thumb
	mov     r2, r1
	sub     r2, #0x23
	cmp     r5, r2
	bgt     branch_20767f8
	sub     r1, #0x23
	cmp     r5, r1
	beq     branch_20768c6
	b       branch_2076956

branch_20767f8: @ 20767f8 :thumb
	mov     r2, r1
	sub     r2, #0x8
	cmp     r5, r2
	bgt     branch_2076816
	mov     r2, r1
	sub     r2, #0x9
	cmp     r5, r2
	blt     branch_2076816
	mov     r2, r1
	sub     r2, #0x9
	cmp     r5, r2
	beq     branch_2076880
	sub     r1, #0x8
	cmp     r5, r1
	beq     branch_207688c
branch_2076816: @ 2076816 :thumb
	b       branch_2076956

branch_2076818: @ 2076818 :thumb
	mov     r2, r1
	add     r2, #0x42
	cmp     r5, r2
	bgt     branch_2076848
	mov     r2, r1
	add     r2, #0x42
	cmp     r5, r2
	blt     branch_207682a
	b       branch_2076932

branch_207682a: @ 207682a :thumb
	add     r2, r1, #0x2
	cmp     r5, r2
	bgt     branch_2076840
	add     r2, r1, #0x1
	cmp     r5, r2
	blt     branch_207683e
	beq     branch_2076898
	.hword  0x1c89 @ add r1, r1, #0x2
	cmp     r5, r1
	beq     branch_20768a0
branch_207683e: @ 207683e :thumb
	b       branch_2076956

branch_2076840: @ 2076840 :thumb
	add     r1, #0x3a
	cmp     r5, r1
	beq     branch_207690e
	b       branch_2076956

branch_2076848: @ 2076848 :thumb
	mov     r2, r1
	add     r2, #0x47
	cmp     r5, r2
	bgt     branch_2076858
	add     r1, #0x47
	cmp     r5, r1
	beq     branch_20768ea
	b       branch_2076956

branch_2076858: @ 2076858 :thumb
	mov     r2, r1
	add     r2, #0x4a
	cmp     r5, r2
	bgt     branch_2076956
	mov     r2, r1
	add     r2, #0x48
	cmp     r5, r2
	blt     branch_2076956
	mov     r2, r1
	add     r2, #0x48
	cmp     r5, r2
	beq     branch_20768b0
	mov     r2, r1
	add     r2, #0x49
	cmp     r5, r2
	beq     branch_20768dc
	add     r1, #0x4a
	cmp     r5, r1
	beq     branch_20768e4
	b       branch_2076956

branch_2076880: @ 2076880 :thumb
	lsr     r2, r4, #1
	add     r2, #0x48
	lsl     r0, r0, #1
	mov     r1, #0xa8
	add     r2, r2, r0
	b       branch_2076968

branch_207688c: @ 207688c :thumb
	lsr     r2, r4, #1
	add     r2, #0x4e
	lsl     r0, r0, #1
	mov     r1, #0xa8
	add     r2, r2, r0
	b       branch_2076968

branch_2076898: @ 2076898 :thumb
	add     r4, #0x54
	mov     r1, #0xa8
	add     r2, r4, r0
	b       branch_2076968

branch_20768a0: @ 20768a0 :thumb
	add     r4, #0x58
	mov     r1, #0xa8
	add     r2, r4, r0
	b       branch_2076968

branch_20768a8: @ 20768a8 :thumb
	add     r4, #0x5c
	mov     r1, #0xa8
	add     r2, r4, r0
	b       branch_2076968

branch_20768b0: @ 20768b0 :thumb
	lsr     r2, r4, #1
	add     r2, #0x60
	lsl     r0, r0, #1
	mov     r1, #0xa8
	add     r2, r2, r0
	b       branch_2076968

branch_20768bc: @ 20768bc :thumb
	lsl     r2, r4, #1
	add     r2, #0x40
	mov     r1, #0xa8
	add     r2, r0, r2
	b       branch_2076968

branch_20768c6: @ 20768c6 :thumb
	lsr     r2, r4, #1
	lsl     r0, r0, #1
	mov     r1, #0xa8
	add     r2, r2, r0
	b       branch_2076968

branch_20768d0: @ 20768d0 :thumb
	lsr     r2, r4, #1
	add     r2, #0x8
	lsl     r0, r0, #1
	mov     r1, #0xa8
	add     r2, r2, r0
	b       branch_2076968

branch_20768dc: @ 20768dc :thumb
	mov     r2, r0
	mov     r1, #0xa8
	add     r2, #0x84
	b       branch_2076968

branch_20768e4: @ 20768e4 :thumb
	mov     r1, #0xa8
	mov     r2, #0x84
	b       branch_2076968

branch_20768ea: @ 20768ea :thumb
	cmp     r0, #0x0
	beq     branch_20768fa
	lsr     r2, r4, #1
	add     r2, #0x88
	lsl     r0, r0, #1
	mov     r1, #0x79
	add     r2, r2, r0
	b       branch_2076968

branch_20768fa: @ 20768fa :thumb
	mov     r1, #0xa7
	cmp     r6, #0x1
	beq     branch_2076904
	mov     r2, #0x1
	b       branch_2076906

branch_2076904: @ 2076904 :thumb
	mov     r2, #0x0
branch_2076906: @ 2076906 :thumb
	lsl     r0, r5, #2
	add     r0, r4, r0
	add     r2, r0, r2
	b       branch_2076968

branch_207690e: @ 207690e :thumb
	cmp     r0, #0x0
	beq     branch_207691e
	lsr     r2, r4, #1
	add     r2, #0x8c
	lsl     r0, r0, #1
	mov     r1, #0x79
	add     r2, r2, r0
	b       branch_2076968

branch_207691e: @ 207691e :thumb
	mov     r1, #0xa7
	cmp     r6, #0x1
	beq     branch_2076928
	mov     r2, #0x1
	b       branch_207692a

branch_2076928: @ 2076928 :thumb
	mov     r2, #0x0
branch_207692a: @ 207692a :thumb
	lsl     r0, r5, #2
	add     r0, r4, r0
	add     r2, r0, r2
	b       branch_2076968

branch_2076932: @ 2076932 :thumb
	cmp     r0, #0x0
	beq     branch_2076942
	lsr     r2, r4, #1
	add     r2, #0x98
	lsl     r0, r0, #1
	mov     r1, #0x79
	add     r2, r2, r0
	b       branch_2076968

branch_2076942: @ 2076942 :thumb
	mov     r1, #0xa7
	cmp     r6, #0x1
	beq     branch_207694c
	mov     r2, #0x1
	b       branch_207694e

branch_207694c: @ 207694c :thumb
	mov     r2, #0x0
branch_207694e: @ 207694e :thumb
	lsl     r0, r5, #2
	add     r0, r4, r0
	add     r2, r0, r2
	b       branch_2076968

branch_2076956: @ 2076956 :thumb
	mov     r1, #0xa7
	cmp     r6, #0x1
	beq     branch_2076960
	mov     r2, #0x1
	b       branch_2076962

branch_2076960: @ 2076960 :thumb
	mov     r2, #0x0
branch_2076962: @ 2076962 :thumb
	lsl     r0, r5, #2
	add     r0, r4, r0
	add     r2, r0, r2
branch_2076968: @ 2076968 :thumb
	add     r0, sp, #0x0
	bl      LoadFromNARC
	add     r0, sp, #0x0
	ldrb    r0, [r0, #0x0]
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x2076976

.align 2
.pool



.thumb
.globl Function_207697c
Function_207697c: @ 207697c :thumb
	mov     r2, #0x3c
	strh    r2, [r0, #0x0]
	lsl     r1, r1, #1
	strh    r1, [r0, #0x2]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r0, #0x4]
	mov     r1, #0x0
	strh    r1, [r0, #0x6]
	strb    r1, [r0, #0x8]
	str     r1, [r0, #0xc]
	bx      lr
@ 0x2076992


.align 2, 0
.thumb
.globl Function_2076994
Function_2076994: @ 2076994 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x70
	mov     r6, r0
	str     r1, [sp, #0x18]
	str     r2, [sp, #0x1c]
	ldr     r0, [sp, #0x8c]
	ldr     r1, [sp, #0x90]
	add     r2, sp, #0x24
	str     r3, [sp, #0x20]
	ldr     r5, [sp, #0x94]
	mov     r7, #0x1
	bl      Function_2076aac
	ldr     r0, [sp, #0x8c]
	cmp     r0, #0x66
	bne     branch_20769b6
	mov     r7, #0x2
branch_20769b6: @ 20769b6 :thumb
	ldr     r0, [sp, #0x24]
	ldr     r1, [sp, #0x98]
	bl      LoadFromNARC_8
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, =0x4e2f
	ldr     r1, [sp, #0x18]
	add     r0, r5, r0
	str     r0, [sp, #0x8]
	ldr     r3, [sp, #0x28]
	mov     r0, r6
	mov     r2, r4
	bl      Function_200cc3c
	str     r4, [sp, #0x0]
	ldr     r0, [sp, #0x2c]
	ldr     r3, [sp, #0x18]
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	str     r7, [sp, #0xc]
	mov     r0, #0x1
	str     r0, [sp, #0x10]
	ldr     r0, =0x4e2a
	mov     r1, #0x2
	add     r0, r5, r0
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x1c]
	mov     r2, r6
	bl      Function_200cdc4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, =0x4e27
	ldr     r1, [sp, #0x18]
	add     r0, r5, r0
	str     r0, [sp, #0x4]
	ldr     r3, [sp, #0x30]
	mov     r0, r6
	mov     r2, r4
	bl      Function_200ce24
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, =0x4e27
	ldr     r1, [sp, #0x18]
	add     r0, r5, r0
	str     r0, [sp, #0x4]
	ldr     r3, [sp, #0x34]
	mov     r0, r6
	mov     r2, r4
	bl      Function_200ce54
	mov     r0, r4
	bl      Call_FS_CloseFile
	ldr     r4, =Unknown_20f05e4
	add     r3, sp, #0x3c
	mov     r2, #0x6
branch_2076a34: @ 2076a34 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_2076a34
	ldr     r0, [r4, #0x0]
	ldr     r1, =0x4e2f
	str     r0, [r3, #0x0]
	add     r0, r5, r1
	str     r0, [sp, #0x50]
	sub     r0, r1, #0x5
	add     r0, r5, r0
	sub     r1, #0x8
	str     r0, [sp, #0x54]
	add     r0, r5, r1
	str     r0, [sp, #0x58]
	str     r0, [sp, #0x5c]
	ldr     r0, =Unknown_20f0588
	lsl     r1, r5, #2
	ldr     r0, [r0, r1]
	ldr     r1, [sp, #0x18]
	str     r0, [sp, #0x44]
	mov     r0, r6
	add     r2, sp, #0x3c
	bl      Function_200ce6c
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	bl      Function_2021f24
	ldr     r1, [sp, #0x20]
	ldr     r2, [sp, #0x88]
	lsl     r1, r1, #16
	lsl     r2, r2, #16
	mov     r0, r4
	asr     r1, r1, #16
	asr     r2, r2, #16
	bl      Function_200d4c4
	mov     r0, r4
	bl      Function_200d330
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_200d390
	mov     r0, r4
	add     sp, #0x70
	pop     {r3-r7,pc}
@ 0x2076a96

.align 2
.pool



.thumb
.globl Function_2076aac
Function_2076aac: @ 2076aac :thumb
	push    {r4,lr}
	mov     r4, r2
	cmp     r1, #0x2
	bne     branch_2076ad0
	mov     r1, #0x3c
	str     r1, [r4, #0x0]
	lsl     r1, r0, #2
	add     r1, r0, r1
	str     r1, [r4, #0x4]
	add     r0, r1, #0x1
	str     r0, [r4, #0x8]
	add     r0, r1, #0x2
	str     r0, [r4, #0xc]
	add     r0, r1, #0x3
	str     r0, [r4, #0x10]
	add     r0, r1, #0x4
	str     r0, [r4, #0x14]
	pop     {r4,pc}
@ 0x2076ad0

.thumb
branch_2076ad0: @ 2076ad0 :thumb
	mov     r1, #0x6
	str     r1, [r4, #0x0]
	bl      Function_20788d0
	lsl     r1, r0, #2
	add     r1, r0, r1
	str     r1, [r4, #0x4]
	add     r0, r1, #0x1
	str     r0, [r4, #0x8]
	add     r0, r1, #0x2
	str     r0, [r4, #0xc]
	add     r0, r1, #0x3
	str     r0, [r4, #0x10]
	add     r0, r1, #0x4
	str     r0, [r4, #0x14]
	pop     {r4,pc}
@ 0x2076af0


.thumb
Function_2076af0: @ 2076af0 :thumb
	mov     r0, #PkmnData_Size @ 0xec
	bx      lr
@ 0x2076af4


.thumb
Function_2076af4: @ 2076af4 :thumb
	mov     r0, #0x88
	bx      lr
@ 0x2076af8


.thumb
Function_2076af8: @ 2076af8 :thumb
	ldr     r3, =Function_2076b00+1
	bx      r3
@ 0x2076afc

.align 2
.pool



.thumb
Function_2076b00: @ 2076b00 :thumb
	push    {r3,lr}
	mov     r1, #0x70
	mov     r2, #0x0
	bl      GetPkmnData2
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	pop     {r3,pc}
@ 0x2076b10


thumb_func_start Function_2076b10_Dummy
Function_2076b10_Dummy: @ 2076b10 :thumb
	bx      lr
thumb_func_end Function_2076b10_Dummy


.align 2, 0
.thumb
.globl Function_2076b14
Function_2076b14: @ 2076b14 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8

	mov     r1, #PKMNDATA_SPECIES
	mov     r2, #0x0
	mov     r4, r0
	bl      GetPkmnData
	lsl     r0, r0, #16
	lsr     r5, r0, #16

	mov     r0, r4
	mov     r1, #PKMNDATA_LEVEL
	mov     r2, #0x0
	bl      GetPkmnData
	add     r1, r0, #0x1
	add     r0, sp, #0x0
	strb    r1, [r0, #0x0]

	mov     r0, r4
	mov     r1, #PKMNDATA_EXPPTS
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0x4]

	mov     r0, r5
	mov     r1, #PKMNBASEDATA_EXPRATE
	bl      GetPkmnBaseData1

	mov     r1, #100
	mov     r5, r0
	bl      GetDataFromPlGrowTbl
	ldr     r1, [sp, #0x4]
	cmp     r1, r0
	bls     branch_2076b64
	str     r0, [sp, #0x4]

	mov     r0, r4
	mov     r1, #PKMNDATA_EXPPTS
	add     r2, sp, #0x4
	bl      SetPkmnData
branch_2076b64: @ 2076b64 :thumb
	add     r0, sp, #0x0
	ldrb    r1, [r0, #0x0]
	cmp     r1, #100
	bls     branch_2076b72
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_2076b72: @ 2076b72 :thumb
	mov     r0, r5
	bl      GetDataFromPlGrowTbl
	ldr     r1, [sp, #0x4]
	cmp     r1, r0
	blo     branch_2076b8e

	mov     r0, r4
	mov     r1, #PKMNDATA_LEVEL
	add     r2, sp, #0x0
	bl      SetPkmnData

	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_2076b8e: @ 2076b8e :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2076b94


thumb_func_start CheckIfPkmnEvolves
CheckIfPkmnEvolves: @ 2076b94 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x44
	mov     r7, r1
	str     r0, [sp, #0x0]
	mov     r6, #0x0
	mov     r4, r2

	mov     r0, r7
	mov     r1, #PKMNDATA_SPECIES
	mov     r2, r6
	str     r3, [sp, #0x4]
	ldr     r5, [sp, #0x58]
	bl      GetPkmnData
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x2c]

	mov     r0, r7
	mov     r1, #PKMNDATA_ITEM
	mov     r2, r6
	bl      GetPkmnData
	lsl     r0, r0, #16
	lsr     r0, r0, #16

	mov     r1, r6
	str     r0, [sp, #0x28]
	mov     r0, r7
	mov     r2, r1
	bl      GetPkmnData
	str     r0, [sp, #0x30]

	mov     r0, r7
	mov     r1, #PKMNDATA_BEAUTYCONTEST
	mov     r2, r6
	bl      GetPkmnData
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x10]

	ldr     r1, =0xffff0000
	ldr     r0, [sp, #0x30]
	mov     r2, r6
	and     r0, r1
	lsr     r0, r0, #16
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x28]
	mov     r1, #0x1
	bl      GetItemData
	lsl     r0, r0, #24
	lsr     r1, r0, #24
	ldr     r0, [sp, #0x2c]
	cmp     r0, #0x40
	beq     branch_2076c10
	cmp     r1, #0x40
	bne     branch_2076c10
	cmp     r4, #0x3
	beq     branch_2076c10
	add     sp, #0x44
	mov     r0, r6
	pop     {r4-r7,pc}

branch_2076c10: @ 2076c10 :thumb
	cmp     r5, #0x0
	bne     branch_2076c16
	add     r5, sp, #0x40
branch_2076c16: @ 2076c16 :thumb
	mov     r0, #0x0
	mov     r1, #0x2a
	bl      malloc_maybe
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x2c]
	ldr     r1, [sp, #0x18]
	bl      LoadFromNARC_Evo
	cmp     r4, #0x3
	bls     branch_2076c2e
	b       branch_2076f78

branch_2076c2e: @ 2076c2e :thumb
	add     r0, r4, r4
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2076c3a

Jumppoints_2076c3a:
.hword branch_2076c42 - Jumppoints_2076c3a - 2
.hword branch_2076eb8 - Jumppoints_2076c3a - 2
.hword branch_2076eec - Jumppoints_2076c3a - 2
.hword branch_2076eec - Jumppoints_2076c3a - 2

branch_2076c42: @ 2076c42 :thumb
	mov     r0, r7
	mov     r1, #PKMNDATA_LEVEL
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x14]

	mov     r0, r7
	mov     r1, #PKMNDATA_FRIENDSHIP
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x20]

	mov     r0, #0x0
	str     r0, [sp, #0x24]

	ldr     r0, [sp, #0x1c]
	mov     r1, #0xa
	ldr     r4, [sp, #0x18]
	blx     _s32_div_f
	str     r1, [sp, #0x8]
branch_2076c72: @ 2076c72 :thumb
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x1a
	bls     branch_2076c7a
	b       branch_2076e9e

branch_2076c7a: @ 2076c7a :thumb
	add     r1, r0, r0
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2076c86

Jumppoints_2076c86:
.hword branch_2076e9e - Jumppoints_2076c86 - 2
.hword branch_2076cbc - Jumppoints_2076c86 - 2
.hword branch_2076cca - Jumppoints_2076c86 - 2
.hword branch_2076ce0 - Jumppoints_2076c86 - 2
.hword branch_2076cf6 - Jumppoints_2076c86 - 2
.hword branch_2076e9e - Jumppoints_2076c86 - 2
.hword branch_2076e9e - Jumppoints_2076c86 - 2
.hword branch_2076e9e - Jumppoints_2076c86 - 2
.hword branch_2076d06 - Jumppoints_2076c86 - 2
.hword branch_2076d32 - Jumppoints_2076c86 - 2
.hword branch_2076d5e - Jumppoints_2076c86 - 2
.hword branch_2076d8a - Jumppoints_2076c86 - 2
.hword branch_2076da2 - Jumppoints_2076c86 - 2
.hword branch_2076db8 - Jumppoints_2076c86 - 2
.hword branch_2076dc8 - Jumppoints_2076c86 - 2
.hword branch_2076dce - Jumppoints_2076c86 - 2
.hword branch_2076e9e - Jumppoints_2076c86 - 2
.hword branch_2076e9e - Jumppoints_2076c86 - 2
.hword branch_2076dde - Jumppoints_2076c86 - 2
.hword branch_2076df6 - Jumppoints_2076c86 - 2
.hword branch_2076e0e - Jumppoints_2076c86 - 2
.hword branch_2076e22 - Jumppoints_2076c86 - 2
.hword branch_2076e3a - Jumppoints_2076c86 - 2
.hword branch_2076e58 - Jumppoints_2076c86 - 2
.hword branch_2076e76 - Jumppoints_2076c86 - 2
.hword branch_2076e84 - Jumppoints_2076c86 - 2
.hword branch_2076e92 - Jumppoints_2076c86 - 2

branch_2076cbc: @ 2076cbc :thumb
	ldr     r0, [sp, #0x20]
	cmp     r0, #0xdc
	blo     branch_2076d98
	ldrh    r6, [r4, #0x4]
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_2076e9e

branch_2076cca: @ 2076cca :thumb
	bl      Function_2013948
	cmp     r0, #0x0
	bne     branch_2076d98
	ldr     r0, [sp, #0x20]
	cmp     r0, #0xdc
	blo     branch_2076d98
	ldrh    r6, [r4, #0x4]
	mov     r0, #0x2
	str     r0, [r5, #0x0]
	b       branch_2076e9e

branch_2076ce0: @ 2076ce0 :thumb
	bl      Function_2013948
	cmp     r0, #0x1
	bne     branch_2076d98
	ldr     r0, [sp, #0x20]
	cmp     r0, #0xdc
	blo     branch_2076d98
	ldrh    r6, [r4, #0x4]
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	b       branch_2076e9e

branch_2076cf6: @ 2076cf6 :thumb
	ldrh    r1, [r4, #0x2]
	ldr     r0, [sp, #0x14]
	cmp     r1, r0
	bgt     branch_2076d98
	ldrh    r6, [r4, #0x4]
	mov     r0, #0x4
	str     r0, [r5, #0x0]
	b       branch_2076e9e

branch_2076d06: @ 2076d06 :thumb
	ldrh    r1, [r4, #0x2]
	ldr     r0, [sp, #0x14]
	cmp     r1, r0
	bgt     branch_2076d98

	mov     r0, r7
	mov     r1, #PKMNDATA_ATK
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0x34]

	mov     r0, r7
	mov     r1, #PKMNDATA_DEF
	mov     r2, #0x0
	bl      GetPkmnData
	ldr     r1, [sp, #0x34]

	cmp     r1, r0
	bls     branch_2076d98
	ldrh    r6, [r4, #0x4]
	mov     r0, #0x8
	str     r0, [r5, #0x0]
	b       branch_2076e9e

branch_2076d32: @ 2076d32 :thumb
	ldrh    r1, [r4, #0x2]
	ldr     r0, [sp, #0x14]
	cmp     r1, r0
	bgt     branch_2076d98

	mov     r0, r7
	mov     r1, #PKMNDATA_ATK
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0x38]

	mov     r0, r7
	mov     r1, #PKMNDATA_DEF
	mov     r2, #0x0
	bl      GetPkmnData

	ldr     r1, [sp, #0x38]
	cmp     r1, r0
	bne     branch_2076d98
	ldrh    r6, [r4, #0x4]
	mov     r0, #0x9
	str     r0, [r5, #0x0]
	b       branch_2076e9e

branch_2076d5e: @ 2076d5e :thumb
	ldrh    r1, [r4, #0x2]
	ldr     r0, [sp, #0x14]
	cmp     r1, r0
	bgt     branch_2076d98

    mov     r0, r7
	mov     r1, #PKMNDATA_ATK
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0x3c]

	mov     r0, r7
	mov     r1, #PKMNDATA_DEF
	mov     r2, #0x0
	bl      GetPkmnData

	ldr     r1, [sp, #0x3c]
	cmp     r1, r0
	bhs     branch_2076d98
	ldrh    r6, [r4, #0x4]
	mov     r0, #0xa
	str     r0, [r5, #0x0]
	b       branch_2076e9e

branch_2076d8a: @ 2076d8a :thumb
	ldrh    r1, [r4, #0x2]
	ldr     r0, [sp, #0x14]
	cmp     r1, r0
	bgt     branch_2076d98
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x5
	blt     branch_2076d9a
branch_2076d98: @ 2076d98 :thumb
	b       branch_2076e9e

branch_2076d9a: @ 2076d9a :thumb
	ldrh    r6, [r4, #0x4]
	mov     r0, #0xb
	str     r0, [r5, #0x0]
	b       branch_2076e9e

branch_2076da2: @ 2076da2 :thumb
	ldrh    r1, [r4, #0x2]
	ldr     r0, [sp, #0x14]
	cmp     r1, r0
	bgt     branch_2076e9e
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x5
	blt     branch_2076e9e
	ldrh    r6, [r4, #0x4]
	mov     r0, #0xc
	str     r0, [r5, #0x0]
	b       branch_2076e9e

branch_2076db8: @ 2076db8 :thumb
	ldrh    r1, [r4, #0x2]
	ldr     r0, [sp, #0x14]
	cmp     r1, r0
	bgt     branch_2076e9e
	ldrh    r6, [r4, #0x4]
	mov     r0, #0xd
	str     r0, [r5, #0x0]
	b       branch_2076e9e

branch_2076dc8: @ 2076dc8 :thumb
	mov     r0, #0xe
	str     r0, [r5, #0x0]
	b       branch_2076e9e

branch_2076dce: @ 2076dce :thumb
	ldrh    r1, [r4, #0x2]
	ldr     r0, [sp, #0x10]
	cmp     r1, r0
	bgt     branch_2076e9e
	ldrh    r6, [r4, #0x4]
	mov     r0, #0xf
	str     r0, [r5, #0x0]
	b       branch_2076e9e

branch_2076dde: @ 2076dde :thumb
	bl      Function_2013948
	cmp     r0, #0x0
	bne     branch_2076e9e
	ldrh    r1, [r4, #0x2]
	ldr     r0, [sp, #0x28]
	cmp     r0, r1
	bne     branch_2076e9e
	ldrh    r6, [r4, #0x4]
	mov     r0, #0x12
	str     r0, [r5, #0x0]
	b       branch_2076e9e

branch_2076df6: @ 2076df6 :thumb
	bl      Function_2013948
	cmp     r0, #0x1
	bne     branch_2076e9e
	ldrh    r1, [r4, #0x2]
	ldr     r0, [sp, #0x28]
	cmp     r0, r1
	bne     branch_2076e9e
	ldrh    r6, [r4, #0x4]
	mov     r0, #0x13
	str     r0, [r5, #0x0]
	b       branch_2076e9e

branch_2076e0e: @ 2076e0e :thumb
	ldrh    r1, [r4, #0x2]
	mov     r0, r7
	bl      Function_207749c
	cmp     r0, #0x1
	bne     branch_2076e9e
	ldrh    r6, [r4, #0x4]
	mov     r0, #0x14
	str     r0, [r5, #0x0]
	b       branch_2076e9e

branch_2076e22: @ 2076e22 :thumb
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x0
	beq     branch_2076e9e
	ldrh    r1, [r4, #0x2]
	bl      Function_207a230
	cmp     r0, #0x1
	bne     branch_2076e9e
	ldrh    r6, [r4, #0x4]
	mov     r0, #0x15
	str     r0, [r5, #0x0]
	b       branch_2076e9e

branch_2076e3a: @ 2076e3a :thumb
	mov     r0, r7
	mov     r1, #PKMNDATA_GENDER
	mov     r2, #0x0
	bl      GetPkmnData

	cmp     r0, #0x0
	bne     branch_2076e9e
	ldrh    r1, [r4, #0x2]
	ldr     r0, [sp, #0x14]
	cmp     r1, r0
	bgt     branch_2076e9e
	ldrh    r6, [r4, #0x4]
	mov     r0, #0x16
	str     r0, [r5, #0x0]
	b       branch_2076e9e

branch_2076e58: @ 2076e58 :thumb
	mov     r0, r7
	mov     r1, #PKMNDATA_GENDER
	mov     r2, #0x0
	bl      GetPkmnData

	cmp     r0, #0x1
	bne     branch_2076e9e
	ldrh    r1, [r4, #0x2]
	ldr     r0, [sp, #0x14]
	cmp     r1, r0
	bgt     branch_2076e9e
	ldrh    r6, [r4, #0x4]
	mov     r0, #0x17
	str     r0, [r5, #0x0]
	b       branch_2076e9e

branch_2076e76: @ 2076e76 :thumb
	ldr     r1, [sp, #0x4]
	cmp     r1, r0
	bne     branch_2076e9e
	ldrh    r6, [r4, #0x4]
	mov     r0, #0x18
	str     r0, [r5, #0x0]
	b       branch_2076e9e

branch_2076e84: @ 2076e84 :thumb
	ldr     r1, [sp, #0x4]
	cmp     r1, r0
	bne     branch_2076e9e
	ldrh    r6, [r4, #0x4]
	mov     r0, #0x19
	str     r0, [r5, #0x0]
	b       branch_2076e9e

branch_2076e92: @ 2076e92 :thumb
	ldr     r1, [sp, #0x4]
	cmp     r1, r0
	bne     branch_2076e9e
	ldrh    r6, [r4, #0x4]
	mov     r0, #0x1a
	str     r0, [r5, #0x0]
branch_2076e9e: @ 2076e9e :thumb
	cmp     r6, #0x0
	bne     branch_2076f78
	ldr     r0, [sp, #0x24]
	.hword  0x1da4 @ add r4, r4, #0x6
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x24]
	cmp     r0, #0x7
	bge     branch_2076eb0
	b       branch_2076c72

branch_2076eb0: @ 2076eb0 :thumb
	b       branch_2076f78
@ 0x2076eb2

.align 2
.pool



.thumb
branch_2076eb8: @ 2076eb8 :thumb
	ldr     r3, [sp, #0x18]
	mov     r4, #0x0
	mov     r7, #0x6
	mov     r2, #0x5
branch_2076ec0: @ 2076ec0 :thumb
	ldrh    r0, [r3, #0x0]
	cmp     r0, #0x5
	beq     branch_2076ecc
	cmp     r0, #0x6
	beq     branch_2076ed2
	b       branch_2076ede

branch_2076ecc: @ 2076ecc :thumb
	ldrh    r6, [r3, #0x4]
	str     r2, [r5, #0x0]
	b       branch_2076ede

branch_2076ed2: @ 2076ed2 :thumb
	ldrh    r1, [r3, #0x2]
	ldr     r0, [sp, #0x28]
	cmp     r0, r1
	bne     branch_2076ede
	ldrh    r6, [r3, #0x4]
	str     r7, [r5, #0x0]
branch_2076ede: @ 2076ede :thumb
	cmp     r6, #0x0
	bne     branch_2076f78
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d9b @ add r3, r3, #0x6
	cmp     r4, #0x7
	blt     branch_2076ec0
	b       branch_2076f78

branch_2076eec: @ 2076eec :thumb
	mov     r0, #0x0
	ldr     r4, [sp, #0x18]
	str     r0, [sp, #0xc]
branch_2076ef2: @ 2076ef2 :thumb
	ldrh    r2, [r4, #0x0]
	cmp     r2, #0x7
	bne     branch_2076f12
	ldrh    r1, [r4, #0x2]
	ldr     r0, [sp, #0x4]
	cmp     r0, r1
	bne     branch_2076f12
	ldr     r0, [sp, #0xc]
	mov     r1, #0x6
	mul     r1, r0
	ldr     r0, [sp, #0x18]
	add     r0, r0, r1
	ldrh    r6, [r0, #0x4]
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	b       branch_2076f78

branch_2076f12: @ 2076f12 :thumb
	cmp     r2, #0x10
	bne     branch_2076f3e

	mov     r0, r7
	mov     r1, #PKMNDATA_GENDER
	mov     r2, #0x0
	bl      GetPkmnData

	cmp     r0, #0x0
	bne     branch_2076f3e
	ldrh    r1, [r4, #0x2]
	ldr     r0, [sp, #0x4]
	cmp     r0, r1
	bne     branch_2076f3e
	ldr     r0, [sp, #0xc]
	mov     r1, #0x6
	mul     r1, r0
	ldr     r0, [sp, #0x18]
	add     r0, r0, r1
	ldrh    r6, [r0, #0x4]
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	b       branch_2076f78

branch_2076f3e: @ 2076f3e :thumb
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x11
	bne     branch_2076f6c

	mov     r0, r7
	mov     r1, #PKMNDATA_GENDER
	mov     r2, #0x0
	bl      GetPkmnData

	cmp     r0, #0x1
	bne     branch_2076f6c
	ldrh    r1, [r4, #0x2]
	ldr     r0, [sp, #0x4]
	cmp     r0, r1
	bne     branch_2076f6c
	ldr     r0, [sp, #0xc]
	mov     r1, #0x6
	mul     r1, r0
	ldr     r0, [sp, #0x18]
	add     r0, r0, r1
	ldrh    r6, [r0, #0x4]
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	b       branch_2076f78

branch_2076f6c: @ 2076f6c :thumb
	ldr     r0, [sp, #0xc]
	.hword  0x1da4 @ add r4, r4, #0x6
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0xc]
	cmp     r0, #0x7
	blt     branch_2076ef2
branch_2076f78: @ 2076f78 :thumb
	ldr     r0, [sp, #0x18]
	bl      free
	mov     r0, r6
	add     sp, #0x44
	pop     {r4-r7,pc}
thumb_func_end CheckIfPkmnEvolves


.thumb
.globl Function_2076f84
Function_2076f84: @ 2076f84 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4c
	mov     r4, r0
	mov     r1, #0x0
	add     r0, sp, #0x0
	strh    r1, [r0, #0x0]
	ldr     r0, =0x1ee
	cmp     r4, r0
	blo     branch_2076f9a
	bl      ErrorHandling
branch_2076f9a: @ 2076f9a :thumb
	add     r0, sp, #0x4
	blx     FS_InitFile
	ldr     r1, =Unknown_2100bb0
	add     r0, sp, #0x4
	blx     FS_OpenFile
	add     r0, sp, #0x4
	lsl     r1, r4, #1
	mov     r2, #0x0
	blx     FS_SeekFile
	add     r0, sp, #0x4
	add     r1, sp, #0x0
	mov     r2, #0x2
	blx     FS_ReadFile
	add     r0, sp, #0x4
	blx     FS_CloseFile
	add     r0, sp, #0x0
	ldrh    r0, [r0, #0x0]
	add     sp, #0x4c
	pop     {r3,r4,pc}
@ 0x2076fca

.align 2
.pool



.thumb
Function_2076fd4: @ 2076fd4 :thumb
	push    {r3,lr}
	cmp     r0, #0xb9
	bgt     branch_2076ff8
	cmp     r0, #0xb7
	blt     branch_2076fe6
	beq     branch_2077018
	cmp     r0, #0xb9
	beq     branch_2077018
	b       branch_2077014

branch_2076fe6: @ 2076fe6 :thumb
	cmp     r0, #0x7a
	bgt     branch_2076ff2
	bge     branch_2077018
	cmp     r0, #0x71
	beq     branch_2077018
	b       branch_2077014

branch_2076ff2: @ 2076ff2 :thumb
	cmp     r0, #0x8f
	beq     branch_2077018
	b       branch_2077014

branch_2076ff8: @ 2076ff8 :thumb
	cmp     r0, #0xe2
	bgt     branch_2077004
	bge     branch_2077018
	cmp     r0, #0xca
	beq     branch_2077018
	b       branch_2077014

branch_2077004: @ 2077004 :thumb
	ldr     r1, =0x13b
	cmp     r0, r1
	bgt     branch_207700e
	beq     branch_2077018
	b       branch_2077014

branch_207700e: @ 207700e :thumb
	add     r1, #0x2b
	cmp     r0, r1
	beq     branch_2077018
branch_2077014: @ 2077014 :thumb
	bl      Function_2076f84
branch_2077018: @ 2077018 :thumb
	pop     {r3,pc}
@ 0x207701a

.align 2
.pool



thumb_func_start InitPkmnMovesFromWotbl
InitPkmnMovesFromWotbl: @ 2077020 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0

	mov     r0, #0x0
	mov     r1, #0x2c
	bl      malloc_maybe
	str     r0, [sp, #0x0]

	mov     r0, r5
	bl      InitEncryptPkmnData_Part1
	str     r0, [sp, #0x4]

	mov     r0, r5
	mov     r1, #PKMNDATA_SPECIES
	mov     r2, #0x0
	bl      GetPkmnData2
	lsl     r0, r0, #16
	lsr     r4, r0, #16

	mov     r0, r5
	mov     r1, #PKMNDATA_ALTERNATEFORM
	mov     r2, #0x0
	bl      GetPkmnData2
	mov     r7, r0

	mov     r0, r5
	bl      InitPkmnLevel
	lsl     r0, r0, #24
	lsr     r6, r0, #24

	ldr     r2, [sp, #0x0]
	mov     r0, r4
	mov     r1, r7
	bl      LoadFromNARC_Wotbl

	ldr     r0, [sp, #0x0]
	ldrh    r1, [r0, #0x0]
	ldr     r0, =0xffff
	cmp     r1, r0
	beq     doesntLearnMove

	ldr     r4, [sp, #0x0]
	lsl     r7, r6, #9
initPkmnMovesFromWotblLoop: @ 2077074 :thumb
	ldrh    r1, [r4, #0x0]
	mov     r0, #0xfe
	lsl     r0, r0, #8
	and     r0, r1
	cmp     r0, r7              @ Is the Level of Pkmn greater, than it didn't learn the move, yet
	bgt     doesntLearnMove

	ldr     r0, =0x1ff
	and     r0, r1
	lsl     r0, r0, #16
	lsr     r6, r0, #16
	mov     r0, r5          @ Pointer to PkmnData
	mov     r1, r6          @ MoveID
	bl      AddMoveToPkmnData
	ldr     r1, =0xffff
	cmp     r0, r1
	bne     branch_207709e

	mov     r0, r5
	mov     r1, r6
	bl      ShiftPkmnMovesOneUp
branch_207709e: @ 207709e :thumb
	.hword  0x1ca4 @ add r4, r4, #0x2
	ldrh    r1, [r4, #0x0]
	ldr     r0, =0xffff
	cmp     r1, r0
	bne     initPkmnMovesFromWotblLoop
doesntLearnMove: @ 20770a8 :thumb

	ldr     r0, [sp, #0x0]
	bl      free

	ldr     r1, [sp, #0x4]
	mov     r0, r5
	bl      InitEncryptPkmnData_Part1Again

	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x20770ba

.align 2
.pool
thumb_func_end InitPkmnMovesFromWotbl



.thumb
.globl Function_20770c4
Function_20770c4: @ 20770c4 :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_2076b10_Dummy
	mov     r1, r4
	bl      AddMoveToPkmnData
	pop     {r4,pc}
@ 0x20770d4


/*
r0 = Pointer to PkmnData
r1 = MoveID
*/
thumb_func_start AddMoveToPkmnData
AddMoveToPkmnData: @ 20770d4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r1
	ldr     r1, =0xffff
	mov     r6, r0
	str     r1, [sp, #0x4]
	bl      InitEncryptPkmnData_Part1
	mov     r4, #0x0
	str     r0, [sp, #0x0]
	mov     r7, r4
branch_20770ea: @ 20770ea :thumb
	mov     r1, r4              @ MoveNr
	mov     r0, r6
	add     r1, #PKMNDATA_MOVE1
	mov     r2, r7
	bl      GetPkmnData2
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bne     branch_207710c

	lsl     r2, r4, #24
	mov     r0, r6
	mov     r1, r5              @ MoveID
	lsr     r2, r2, #24         @ MoveNr
	bl      SetPkmnDataMove
	str     r5, [sp, #0x4]
	b       branch_207711c

branch_207710c: @ 207710c :thumb
	cmp     r0, r5
	bne     branch_2077116
	ldr     r0, =0xfffe
	str     r0, [sp, #0x4]
	b       branch_207711c

branch_2077116: @ 2077116 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x4
	blt     branch_20770ea

branch_207711c: @ 207711c :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, r6
	bl      InitEncryptPkmnData_Part1Again
	ldr     r0, [sp, #0x4]

	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x207712a

.align 2
.pool
thumb_func_end AddMoveToPkmnData



.thumb
.globl Function_2077134
Function_2077134: @ 2077134 :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_2076b10_Dummy
	mov     r1, r4
	bl      ShiftPkmnMovesOneUp
	pop     {r4,pc}
@ 0x2077144


thumb_func_start ShiftPkmnMovesOneUp
ShiftPkmnMovesOneUp: @ 2077144 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r5, r0
	str     r1, [sp, #0x0]
	bl      InitEncryptPkmnData_Part1
	str     r0, [sp, #0xc]

	add     r0, sp, #0x18
	mov     r4, #0x0
	str     r0, [sp, #0x4]
	add     r7, sp, #0x14
	add     r6, sp, #0x10
branch_207715c: @ 207715c :thumb

	mov     r1, r4
	mov     r0, r5
	add     r1, #PKMNDATA_MOVE2
	mov     r2, #0x0
	bl      GetPkmnData2
	ldr     r1, [sp, #0x4]
	mov     r2, #0x0
	strh    r0, [r1, #0x0]

	mov     r1, r4
	mov     r0, r5
	add     r1, #PKMNDATA_MOVEPP2
	bl      GetPkmnData2

	mov     r1, r4
	strb    r0, [r7, #0x0]
	mov     r0, r5
	add     r1, #PKMNDATA_MOVEPPUPS2
	mov     r2, #0x0
	bl      GetPkmnData2
	strb    r0, [r6, #0x0]

	ldr     r0, [sp, #0x4]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [sp, #0x4]
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r4, #0x3
	blt     branch_207715c

	ldr     r0, [sp, #0x0]
	add     r1, sp, #0x10
	strh    r0, [r1, #0xe]
	ldr     r0, [sp, #0x0]
	mov     r1, #MOVEDATA_PP
	bl      LoadMoveData
	add     r1, sp, #0x10
	strb    r0, [r1, #0x7]

	mov     r4, #0x0
	add     r0, sp, #0x18
	strb    r4, [r1, #0x3]
	str     r0, [sp, #0x8]
	add     r7, sp, #0x14
	add     r6, sp, #0x10
branch_20771b6: @ 20771b6 :thumb
	mov     r1, r4
	ldr     r2, [sp, #0x8]
	mov     r0, r5
	add     r1, #PKMNDATA_MOVE1
	bl      SetPkmnData2

	mov     r1, r4
	mov     r0, r5
	add     r1, #PKMNDATA_MOVEPP1
	mov     r2, r7
	bl      SetPkmnData2

	mov     r1, r4
	mov     r0, r5
	add     r1, #PKMNDATA_MOVEPPUPS1
	mov     r2, r6
	bl      SetPkmnData2

	ldr     r0, [sp, #0x8]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [sp, #0x8]
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r4, #0x4
	blt     branch_20771b6

	ldr     r1, [sp, #0xc]
	mov     r0, r5
	bl      InitEncryptPkmnData_Part1Again
	add     sp, #0x20
	pop     {r3-r7,pc}
thumb_func_end ShiftPkmnMovesOneUp


thumb_func_start SetPkmnDataMoveWithZeroPPUps
SetPkmnDataMoveWithZeroPPUps: @ 20771f8 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r4, r2
	mov     r5, r0
	mov     r6, r1

	bl      Call_SetPkmnDataMove

	mov     r0, #0x0
	mov     r1, r4
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r1, #PKMNDATA_MOVEPPUPS1
	add     r2, sp, #0x0
	bl      SetPkmnData

	mov     r0, r6
	mov     r1, #0x0
	bl      CalcMovePP
	add     r4, #PKMNDATA_MOVEPP1
	str     r0, [sp, #0x4]

	mov     r0, r5
	mov     r1, r4
	add     r2, sp, #0x4
	bl      SetPkmnData

	add     sp, #0x8
	pop     {r4-r6,pc}
thumb_func_end SetPkmnDataMoveWithZeroPPUps


thumb_func_start Call_SetPkmnDataMove
Call_SetPkmnDataMove: @ 2077230 :thumb
	ldr     r3, =SetPkmnDataMove+1
	bx      r3
@ 0x2077234

.pool
thumb_func_end Call_SetPkmnDataMove



/*
r1 = MoveID
r2 = MoveNr
*/
thumb_func_start SetPkmnDataMove
SetPkmnDataMove: @ 2077238 :thumb
	push    {r0-r3}
	push    {r3-r5,lr}
	mov     r4, r2

	mov     r1, r4
	add     r1, #PKMNDATA_MOVE1
	add     r2, sp, #0x14
	mov     r5, r0
	bl      SetPkmnData2

	mov     r1, r4
	mov     r0, r5
	add     r1, #PKMNDATA_MOVEPPUPS1
	mov     r2, #0x0
	bl      GetPkmnData2
	lsl     r0, r0, #24
	lsr     r1, r0, #24
	add     r0, sp, #0x10
	ldrh    r0, [r0, #0x4]
	bl      CalcMovePP
	add     r1, sp, #0x0
	strb    r0, [r1, #0x0]

	add     r4, #PKMNDATA_MOVEPP1
	mov     r0, r5
	mov     r1, r4
	add     r2, sp, #0x0
	bl      SetPkmnData2

	pop     {r3-r5}
	pop     {r3}
	add     sp, #0x10
	bx      r3
thumb_func_end SetPkmnDataMove


thumb_func_start Function_207727c
Function_207727c: @ 207727c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r7, r0
	mov     r5, r1

	mov     r0, #0x0
	mov     r1, #0x2c
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x8]
	bl      malloc_maybe
	mov     r4, r0

	mov     r0, r7
	mov     r1, #PKMNDATA_SPECIES
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x4]

	mov     r0, r7
	mov     r1, #PKMNDATA_ALTERNATEFORM
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0xc]

	mov     r0, r7
	mov     r1, #PKMNDATA_LEVEL
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r0, r0, #24
	lsr     r6, r0, #24

	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0xc]
	mov     r2, r4
	bl      LoadFromNARC_Wotbl

	ldr     r0, [r5, #0x0]
	lsl     r0, r0, #1
	ldrh    r2, [r4, r0]
	ldr     r0, =0xffff
	cmp     r2, r0
	bne     branch_20772de
	mov     r0, r4
	bl      free
	add     sp, #0x10
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_20772de: @ 20772de :thumb
	mov     r0, #0xfe
	lsl     r0, r0, #8
	mov     r3, r2
	and     r3, r0
	lsl     r6, r6, #9
	cmp     r6, r3
	beq     branch_2077310
	ldr     r1, =0xffff
branch_20772ee: @ 20772ee :thumb
	ldr     r2, [r5, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	str     r2, [r5, #0x0]
	lsl     r2, r2, #1
	ldrh    r2, [r4, r2]
	cmp     r2, r1
	bne     branch_2077308
	mov     r0, r4
	bl      free
	add     sp, #0x10
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_2077308: @ 2077308 :thumb
	mov     r3, r2
	and     r3, r0
	cmp     r6, r3
	bne     branch_20772ee
branch_2077310: @ 2077310 :thumb
	cmp     r6, r3
	bne     branch_2077330
	ldr     r0, =0x1ff
	mov     r1, r2
	and     r1, r0
	ldr     r0, [sp, #0x0]
	strh    r1, [r0, #0x0]
	ldr     r0, [r5, #0x0]
	ldr     r1, [sp, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	ldrh    r1, [r1, #0x0]
	mov     r0, r7
	bl      Function_20770c4
	str     r0, [sp, #0x8]
branch_2077330: @ 2077330 :thumb
	mov     r0, r4
	bl      free
	ldr     r0, [sp, #0x8]
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x207733c

.align 2
.pool
thumb_func_end Function_207727c



.thumb
Function_2077344: @ 2077344 :thumb
	ldr     r3, =Function_207734c+1
	bx      r3
@ 0x2077348

.align 2
.pool



.thumb
Function_207734c: @ 207734c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r6, r2
	add     r1, #0x36
	mov     r2, #0x0
	mov     r5, r0
	bl      GetPkmnData2
	add     r1, sp, #0x0
	strh    r0, [r1, #0x4]
	mov     r1, r4
	mov     r0, r5
	add     r1, #0x3a
	mov     r2, #0x0
	bl      GetPkmnData2
	add     r1, sp, #0x0
	strb    r0, [r1, #0x2]
	mov     r1, r4
	mov     r0, r5
	add     r1, #0x3e
	mov     r2, #0x0
	bl      GetPkmnData2
	add     r1, sp, #0x0
	strb    r0, [r1, #0x0]
	mov     r1, r6
	mov     r0, r5
	add     r1, #0x36
	mov     r2, #0x0
	bl      GetPkmnData2
	add     r1, sp, #0x0
	strh    r0, [r1, #0x6]
	mov     r1, r6
	mov     r0, r5
	add     r1, #0x3a
	mov     r2, #0x0
	bl      GetPkmnData2
	add     r1, sp, #0x0
	strb    r0, [r1, #0x3]
	mov     r1, r6
	mov     r0, r5
	add     r1, #0x3e
	mov     r2, #0x0
	bl      GetPkmnData2
	add     r1, sp, #0x0
	strb    r0, [r1, #0x1]
	mov     r1, r4
	add     r2, sp, #0x4
	mov     r0, r5
	add     r1, #0x36
	add     r2, #0x2
	bl      SetPkmnData2
	mov     r1, r4
	add     r2, sp, #0x0
	mov     r0, r5
	add     r1, #0x3a
	add     r2, #0x3
	bl      SetPkmnData2
	add     r4, #0x3e
	add     r2, sp, #0x0
	mov     r0, r5
	mov     r1, r4
	add     r2, #0x1
	bl      SetPkmnData2
	mov     r1, r6
	mov     r0, r5
	add     r1, #0x36
	add     r2, sp, #0x4
	bl      SetPkmnData2
	mov     r1, r6
	add     r2, sp, #0x0
	mov     r0, r5
	add     r1, #0x3a
	add     r2, #0x2
	bl      SetPkmnData2
	add     r6, #0x3e
	mov     r0, r5
	mov     r1, r6
	add     r2, sp, #0x0
	bl      SetPkmnData2
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2077406


.align 2, 0
.thumb
Function_2077408: @ 2077408 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0x3
	bhs     branch_207746e
	mov     r7, #0x0
	add     r6, sp, #0x0
branch_2077416: @ 2077416 :thumb

	mov     r1, r4
	mov     r0, r5
	add     r1, #PKMNDATA_MOVE2
	mov     r2, r7
	bl      GetPkmnData

	mov     r1, r4
	strh    r0, [r6, #0x2]
	mov     r0, r5
	add     r1, #PKMNDATA_MOVEPP2
	mov     r2, #0x0
	bl      GetPkmnData

	mov     r1, r4
	strb    r0, [r6, #0x1]
	mov     r0, r5
	add     r1, #PKMNDATA_MOVEPPUPS2
	mov     r2, #0x0
	bl      GetPkmnData

	mov     r1, r4
	add     r2, sp, #0x0
	strb    r0, [r6, #0x0]
	mov     r0, r5
	add     r1, #PKMNDATA_MOVE1
	add     r2, #0x2
	bl      SetPkmnData

	mov     r1, r4
	add     r2, sp, #0x0
	mov     r0, r5
	add     r1, #PKMNDATA_MOVEPP1
	add     r2, #0x1
	bl      SetPkmnData

	mov     r1, r4
	mov     r0, r5
	add     r1, #PKMNDATA_MOVEPPUPS1
	add     r2, sp, #0x0
	bl      SetPkmnData

	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x3
	blo     branch_2077416

branch_207746e: @ 207746e :thumb
	mov     r1, #0x0
	add     r0, sp, #0x0
	strh    r1, [r0, #0x2]
	strb    r1, [r0, #0x1]
	strb    r1, [r0, #0x0]
	add     r2, sp, #0x0

	mov     r0, r5
	mov     r1, #PKMNDATA_MOVE4
	add     r2, #0x2
	bl      SetPkmnData
	add     r2, sp, #0x0

	mov     r0, r5
	mov     r1, #PKMNDATA_MOVEPP4
	add     r2, #0x1
	bl      SetPkmnData

	mov     r0, r5
	mov     r1, #PKMNDATA_MOVEPPUPS4
	add     r2, sp, #0x0
	bl      SetPkmnData
	pop     {r3-r7,pc}
@ 0x207749c


.thumb
Function_207749c: @ 207749c :thumb
	push    {r3-r7,lr}

	mov     r4, #0x0
	mov     r6, r0
	mov     r5, r1
	mov     r7, r4
branch_20774a6: @ 20774a6 :thumb

	mov     r1, r4
	mov     r0, r6
	add     r1, #PKMNDATA_MOVE1
	mov     r2, r7
	bl      GetPkmnData

	cmp     r5, r0
	beq     branch_20774bc
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x4
	blt     branch_20774a6

branch_20774bc: @ 20774bc :thumb
	cmp     r4, #0x4
	beq     branch_20774c4
	mov     r0, #0x1
	pop     {r3-r7,pc}

branch_20774c4: @ 20774c4 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x20774c8


.thumb
.globl Function_20774c8
Function_20774c8: @ 20774c8 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x1c
	mov     r5, r0
	mov     r4, r1
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r3, r4
	mov     r2, #0x11
branch_20774d8: @ 20774d8 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_20774d8
	ldrh    r1, [r4, #0x4]
	lsl     r0, r1, #30
	lsr     r0, r0, #31
	beq     branch_20774f2
	mov     r0, #0x1
	bic     r1, r0
	mov     r0, #0x1
	orr     r0, r1
	strh    r0, [r4, #0x4]
.thumb
branch_20774f2: @ 20774f2 :thumb
	mov     r0, r4
	mov     r1, #0xa0
	add     r2, sp, #0x0
	bl      SetPkmnData
	mov     r0, r4
	mov     r1, #0xa3
	add     r2, sp, #0x0
	bl      SetPkmnData
	mov     r0, r4
	mov     r1, #0xa4
	add     r2, sp, #0x0
	bl      SetPkmnData
	mov     r0, #0x0
	bl      Function_202818c
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0xaa
	mov     r2, r5
	bl      SetPkmnData
	mov     r0, r5
	bl      free
	mov     r0, r4
	mov     r1, #0xa2
	add     r2, sp, #0x0
	bl      SetPkmnData
	mov     r0, #0x0
	add     r1, sp, #0x4
	mov     r2, #0x18
	blx     MIi_CpuClearFast
	mov     r0, r4
	mov     r1, #0xab
	add     r2, sp, #0x4
	bl      SetPkmnData
	mov     r0, r4
	bl      Function_207418c
	add     sp, #0x1c
	pop     {r4,r5,pc}
@ 0x2077550


.thumb
.globl Function_2077550
Function_2077550: @ 2077550 :thumb
	push    {r3-r7,lr}
	str     r0, [sp, #0x0]
	bl      GetNrOfPkmnInParty
	mov     r7, r0
	mov     r6, #0x1
	mov     r5, #0x0
	cmp     r7, #0x0
	ble     branch_20775a0
branch_2077562: @ 2077562 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, r5
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x5
	mov     r2, #0x0
	mov     r4, r0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_207759a
	mov     r0, r4
	mov     r1, #0x4c
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_207759a
	mov     r0, r4
	mov     r1, #0xa1
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	cmp     r0, r6
	bls     branch_207759a
	mov     r6, r0
branch_207759a: @ 207759a :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r7
	blt     branch_2077562
branch_20775a0: @ 20775a0 :thumb
	mov     r0, r6
	pop     {r3-r7,pc}
@ 0x20775a4


.thumb
.globl Function_20775a4
Function_20775a4: @ 20775a4 :thumb
	push    {r3,lr}
	add     sp, #-0x8
	mov     r3, r0
	mov     r0, #0x2
	str     r0, [sp, #0x0]

	add     r0, sp, #0x4
	mov     r1, #0x6d           @ poketool/pl_pokezukan.narc
	mov     r2, #0x0
	lsl     r3, r3, #1
	bl      LoadFromNARC_3

	add     r0, sp, #0x4
	ldrh    r0, [r0, #0x0]
	add     sp, #0x8
	pop     {r3,pc}
@ 0x20775c2


.align 2, 0
.thumb
Function_20775c4: @ 20775c4 :thumb
	push    {r3,lr}
	add     sp, #-0x8
	mov     r3, r0
	mov     r2, #0x0
	add     r0, sp, #0x4
	strh    r2, [r0, #0x0]
	cmp     r3, #0xd2
	bhi     branch_20775e2
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	add     r0, sp, #0x4
	mov     r1, #0x91           @ poketool/shinzukan.narc
	lsl     r3, r3, #1
	bl      LoadFromNARC_3
branch_20775e2: @ 20775e2 :thumb
	add     r0, sp, #0x4
	ldrh    r0, [r0, #0x0]
	add     sp, #0x8
	pop     {r3,pc}
@ 0x20775ea


.align 2, 0
.thumb
.globl Function_20775ec
Function_20775ec: @ 20775ec :thumb
	push    {r3,r4}
	mov     r4, r0
	mov     r3, r1
	mov     r2, #0x1d
branch_20775f4: @ 20775f4 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_20775f4
	ldr     r0, [r4, #0x0]
	str     r0, [r3, #0x0]
	pop     {r3,r4}
	bx      lr
@ 0x2077604


.thumb
.globl Function_2077604
Function_2077604: @ 2077604 :thumb
	push    {r3,r4}
	mov     r4, r0
	mov     r3, r1
	mov     r2, #0x11
branch_207760c: @ 207760c :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_207760c
	pop     {r3,r4}
	bx      lr
@ 0x2077618


.thumb
.globl Function_2077618
Function_2077618: @ 2077618 :thumb
	push    {r3,r4}
	mov     r4, r0
	mov     r3, r1
	mov     r2, #0x11
branch_2077620: @ 2077620 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_2077620
	pop     {r3,r4}
	bx      lr
@ 0x207762c


.thumb
Call_GetPkmnNatureData: @ 207762c :thumb
	ldr     r3, =GetPkmnNatureData+1
	bx      r3
@ 0x2077630

.align 2
.pool



@ http://bulbapedia.bulbagarden.net/wiki/Personality_value#Nature
thumb_func_start GetPkmnNatureData
GetPkmnNatureData: @ 2077634 :thumb
	push    {r4,lr}
	mov     r4, r1

	mov     r1, #0x0 @ PKMNDATA_PERSONALITYVALUE
	mov     r2, r1
	bl      GetPkmnData2

	mov     r1, r4
	bl      CalcPkmnNatureData

	pop     {r4,pc}
thumb_func_end GetPkmnNatureData


thumb_func_start CalcPkmnNatureData
CalcPkmnNatureData: @ 2077648 :thumb
	push    {r4,lr}
	mov     r4, r1

	bl      PkmnData_DivBy25
	lsl     r1, r0, #2
	add     r1, r0, r1
	ldr     r0, =Unknown_20f0695_NatureData
	add     r0, r0, r1
	ldsb    r0, [r4, r0]

	pop     {r4,pc}
@ 0x207765c

.align 2
.pool
thumb_func_end CalcPkmnNatureData



.thumb
.globl Function_2077660
Function_2077660: @ 2077660 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	mov     r7, r1
	mov     r0, #0x0
	mov     r1, #0x2c
	mov     r5, r2
	bl      malloc_maybe
	mov     r6, r0
	mov     r0, r4
	mov     r1, r7
	mov     r2, r6
	bl      LoadFromNARC_Wotbl
	ldrh    r1, [r6, #0x0]
	ldr     r0, =0xffff
	mov     r4, #0x0
	cmp     r1, r0
	beq     branch_207769e
	ldr     r1, =0x1ff
	ldr     r2, =0xffff
	mov     r0, r6
branch_207768c: @ 207768c :thumb
	ldrh    r3, [r0, #0x0]
	.hword  0x1c80 @ add r0, r0, #0x2
	.hword  0x1c64 @ add r4, r4, #0x1
	and     r3, r1
	strh    r3, [r5, #0x0]
	ldrh    r3, [r0, #0x0]
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r3, r2
	bne     branch_207768c
branch_207769e: @ 207769e :thumb
	mov     r0, r6
	bl      free
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x20776a8

.align 2
.pool



.thumb
.globl Function_20776b0
Function_20776b0: @ 20776b0 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      GetNrOfPkmnInParty
	mov     r6, r0
	bl      PRNG
	mov     r1, #0x1
	lsl     r1, r1, #14
	cmp     r0, r1
	beq     branch_20776d4
	lsl     r1, r1, #1
	cmp     r0, r1
	beq     branch_20776d4
	mov     r1, #0x3
	lsl     r1, r1, #14
	cmp     r0, r1
	bne     branch_2077756
.thumb
branch_20776d4: @ 20776d4 :thumb
	bl      PRNG
	mov     r1, r6
	blx     _s32_div_f
	mov     r0, r5
	mov     r7, r1
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x5
	mov     r2, #0x0
	mov     r4, r0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_20776d4
	mov     r0, r4
	mov     r1, #0x4c
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_20776d4
	mov     r0, r7
	bl      Function_20787cc
	mov     r1, r0
	lsl     r1, r1, #24
	mov     r0, r5
	lsr     r1, r1, #24
	bl      Function_2077758
	cmp     r0, #0x0
	bne     branch_2077756
	add     r5, sp, #0x0
	mov     r6, #0x7
.thumb
branch_207771c: @ 207771c :thumb
	bl      PRNG
	strb    r0, [r5, #0x0]
	ldrb    r2, [r5, #0x0]
	mov     r1, r2
	and     r1, r6
	beq     branch_207771c
	mov     r0, #0xf0
	tst     r0, r2
	beq     branch_2077734
	add     r0, sp, #0x0
	strb    r1, [r0, #0x0]
.thumb
branch_2077734: @ 2077734 :thumb
	add     r1, sp, #0x0
	ldrb    r2, [r1, #0x0]
	lsl     r0, r2, #4
	orr     r0, r2
	strb    r0, [r1, #0x0]
	ldrb    r2, [r1, #0x0]
	mov     r0, #0xf3
	and     r0, r2
	strb    r0, [r1, #0x0]
	ldrb    r0, [r1, #0x0]
	add     r2, sp, #0x0
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r1, #0x0]
	mov     r0, r4
	mov     r1, #0x9a
	bl      SetPkmnData
.thumb
branch_2077756: @ 2077756 :thumb
	pop     {r3-r7,pc}
@ 0x2077758


.thumb
.globl Function_2077758
Function_2077758: @ 2077758 :thumb
	push    {r3-r7,lr}
	mov     r6, #0x0
	mov     r5, r1
	str     r0, [sp, #0x0]
	mov     r4, #0x1
	mov     r7, r6
	cmp     r5, #0x0
	beq     branch_2077796
branch_2077768: @ 2077768 :thumb
	mov     r0, #0x1
	tst     r0, r5
	beq     branch_207778a
	ldr     r0, [sp, #0x0]
	mov     r1, r6
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x9a
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_207778a
	mov     r0, r7
	orr     r0, r4
	lsl     r0, r0, #24
	lsr     r7, r0, #24
branch_207778a: @ 207778a :thumb
	lsl     r0, r5, #23
	.hword  0x1c76 @ add r6, r6, #0x1
	lsl     r4, r4, #1
	lsr     r5, r0, #24
	bne     branch_2077768
	b       branch_20777ae

branch_2077796: @ 2077796 :thumb
	mov     r1, r6
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x9a
	mov     r2, r6
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_20777ae
	add     r0, r7, #0x1
	lsl     r0, r0, #24
	lsr     r7, r0, #24
branch_20777ae: @ 20777ae :thumb
	mov     r0, r7
	pop     {r3-r7,pc}
@ 0x20777b2


.align 2, 0
.thumb
Function_20777b4: @ 20777b4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	str     r0, [sp, #0x0]
	mov     r5, r1
	bl      GetNrOfPkmnInParty
	mov     r6, #0x0
	str     r0, [sp, #0x4]
	cmp     r0, #0x0
	ble     branch_2077826
	add     r4, sp, #0x8
branch_20777ca: @ 20777ca :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, r6
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x5
	mov     r2, #0x0
	mov     r7, r0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_207781e
	mov     r0, r7
	mov     r1, #0x9a
	mov     r2, #0x0
	bl      GetPkmnData
	strb    r0, [r4, #0x0]
	ldrb    r1, [r4, #0x0]
	mov     r0, #0xf
	and     r0, r1
	beq     branch_207781e
	cmp     r0, r5
	blt     branch_20777fc
	cmp     r5, #0x4
	ble     branch_2077806
branch_20777fc: @ 20777fc :thumb
	ldrb    r1, [r4, #0x0]
	mov     r0, #0xf0
	and     r0, r1
	strb    r0, [r4, #0x0]
	b       branch_207780a

branch_2077806: @ 2077806 :thumb
	sub     r0, r1, r5
	strb    r0, [r4, #0x0]
branch_207780a: @ 207780a :thumb
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_2077814
	mov     r0, #0x10
	strb    r0, [r4, #0x0]
branch_2077814: @ 2077814 :thumb
	mov     r0, r7
	mov     r1, #0x9a
	add     r2, sp, #0x8
	bl      SetPkmnData
branch_207781e: @ 207781e :thumb
	ldr     r0, [sp, #0x4]
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r0
	blt     branch_20777ca
branch_2077826: @ 2077826 :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x207782a


thumb_func_start Function_207782c
Function_207782c: @ 207782c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0

	bl      GetNrOfPkmnInParty
	mov     r7, r0

	bl      PRNG
	mov     r1, #0x3
	blx     _s32_div_f
	cmp     r1, #0x0
	bne     branch_20778d4

	mov     r4, #0x0
	cmp     r7, #0x0
	ble     branch_20778d4
	sub     r0, r7, #0x1
	str     r0, [sp, #0x0]
branch_2077850: @ 2077850 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      GetAdrOfPkmnInParty

	mov     r1, #PKMNDATA_SPECIES
	mov     r2, #0x0
	mov     r6, r0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_20778ce

	mov     r0, r6
	mov     r1, #PKMNDATA_POKERUS
	mov     r2, #0x0
	bl      GetPkmnData
	add     r1, sp, #0x4
	strb    r0, [r1, #0x0]

	mov     r0, r1
	ldrb    r1, [r0, #0x0]
	mov     r0, #0xf
	tst     r0, r1
	beq     branch_20778ce
	cmp     r4, #0x0
	beq     branch_20778a4

	mov     r0, r5
	sub     r1, r4, #0x1
	bl      GetAdrOfPkmnInParty

	mov     r1, #PKMNDATA_POKERUS
	mov     r2, #0x0
	mov     r6, r0
	bl      GetPkmnData
	mov     r1, #0xf0
	tst     r0, r1
	bne     branch_20778a4

	mov     r0, r6
	mov     r1, #PKMNDATA_POKERUS
	add     r2, sp, #0x4
	bl      SetPkmnData
branch_20778a4: @ 20778a4 :thumb
	ldr     r0, [sp, #0x0]
	cmp     r4, r0
	bge     branch_20778ce

	mov     r0, r5
	add     r1, r4, #0x1
	bl      GetAdrOfPkmnInParty

	mov     r1, #PKMNDATA_POKERUS
	mov     r2, #0x0
	mov     r6, r0
	bl      GetPkmnData
	mov     r1, #0xf0
	tst     r0, r1
	bne     branch_20778ce

	mov     r0, r6
	mov     r1, #PKMNDATA_POKERUS
	add     r2, sp, #0x4
	bl      SetPkmnData
	.hword  0x1c64 @ add r4, r4, #0x1
branch_20778ce: @ 20778ce :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r7
	blt     branch_2077850
branch_20778d4: @ 20778d4 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
thumb_func_end Function_207782c


.thumb
Function_20778d8: @ 20778d8 :thumb
	ldr     r3, =Function_20778e0+1
	bx      r3
@ 0x20778dc

.align 2
.pool



.thumb
Function_20778e0: @ 20778e0 :thumb
	push    {r3,lr}
	mov     r1, #PKMNDATA_POKERUS
	mov     r2, #0x0
	bl      GetPkmnData2
	mov     r1, #0xf
	tst     r0, r1
	beq     branch_20778f4
	mov     r0, #0x1
	pop     {r3,pc}

branch_20778f4: @ 20778f4 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x20778f8


.thumb
Function_20778f8: @ 20778f8 :thumb
	ldr     r3, =Function_2077900+1
	bx      r3
@ 0x20778fc

.align 2
.pool



.thumb
Function_2077900: @ 2077900 :thumb
	push    {r3,lr}
	mov     r1, #PKMNDATA_POKERUS
	mov     r2, #0x0
	bl      GetPkmnData2
	lsl     r0, r0, #24
	lsr     r1, r0, #24
	mov     r0, #0xf
	tst     r0, r1
	beq     branch_2077918
	mov     r0, #0x0
	pop     {r3,pc}

branch_2077918: @ 2077918 :thumb
	mov     r0, #0xf0
	tst     r0, r1
	beq     branch_2077922
	mov     r0, #0x1
	pop     {r3,pc}

branch_2077922: @ 2077922 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2077926


.align 2, 0
.thumb
Function_2077928: @ 2077928 :thumb
	ldr     r3, =Function_2077930+1
	bx      r3
@ 0x207792c

.align 2
.pool



thumb_func_start Function_2077930
Function_2077930: @ 2077930 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0

	mov     r1, #PKMNDATA_SPECIES
	mov     r2, #0x0
	bl      GetPkmnData2
	mov     r4, r0

	mov     r0, r5
	mov     r1, #PKMNDATA_ABILITY
	mov     r2, #0x0
	bl      GetPkmnData2
	mov     r6, r0

	mov     r0, r5
	mov     r1, #PKMNDATA_ITEM
	mov     r2, #0x0
	bl      GetPkmnData2

	ldr     r1, =ARCEUS
	cmp     r4, r1
	bne     branch_2077980
	cmp     r6, #0x79
	bne     branch_2077980

	lsl     r0, r0, #16
	lsr     r0, r0, #16
	mov     r1, #0x1
	mov     r2, #0x0
	bl      GetItemData

	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_2077988
	str     r0, [sp, #0x0]

	mov     r0, r5
	mov     r1, #PKMNDATA_ALTERNATEFORM
	add     r2, sp, #0x0
	bl      SetPkmnData2
branch_2077980: @ 2077980 :thumb
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x2077984

.align 2
.pool
thumb_func_end Function_2077930



.thumb
.globl Function_2077988
Function_2077988: @ 2077988 :thumb
	sub     r0, #0x7e
	cmp     r0, #0xf
	bhi     branch_20779fa
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x207799a

Jumppoints_207799a:
.hword branch_20779ba - Jumppoints_207799a - 2
.hword branch_20779be - Jumppoints_207799a - 2
.hword branch_20779c2 - Jumppoints_207799a - 2
.hword branch_20779c6 - Jumppoints_207799a - 2
.hword branch_20779ca - Jumppoints_207799a - 2
.hword branch_20779ce - Jumppoints_207799a - 2
.hword branch_20779d2 - Jumppoints_207799a - 2
.hword branch_20779d6 - Jumppoints_207799a - 2
.hword branch_20779da - Jumppoints_207799a - 2
.hword branch_20779de - Jumppoints_207799a - 2
.hword branch_20779e2 - Jumppoints_207799a - 2
.hword branch_20779e6 - Jumppoints_207799a - 2
.hword branch_20779ea - Jumppoints_207799a - 2
.hword branch_20779ee - Jumppoints_207799a - 2
.hword branch_20779f2 - Jumppoints_207799a - 2
.hword branch_20779f6 - Jumppoints_207799a - 2
.thumb
branch_20779ba: @ 20779ba :thumb
	mov     r0, #0xa
	bx      lr
@ 0x20779be

.thumb
branch_20779be: @ 20779be :thumb
	mov     r0, #0xb
	bx      lr
@ 0x20779c2

.thumb
branch_20779c2: @ 20779c2 :thumb
	mov     r0, #0xd
	bx      lr
@ 0x20779c6

.thumb
branch_20779c6: @ 20779c6 :thumb
	mov     r0, #0xc
	bx      lr
@ 0x20779ca

.thumb
branch_20779ca: @ 20779ca :thumb
	mov     r0, #0xf
	bx      lr
@ 0x20779ce

.thumb
branch_20779ce: @ 20779ce :thumb
	mov     r0, #0x1
	bx      lr
@ 0x20779d2

.thumb
branch_20779d2: @ 20779d2 :thumb
	mov     r0, #0x3
	bx      lr
@ 0x20779d6

.thumb
branch_20779d6: @ 20779d6 :thumb
	mov     r0, #0x4
	bx      lr
@ 0x20779da

.thumb
branch_20779da: @ 20779da :thumb
	mov     r0, #0x2
	bx      lr
@ 0x20779de

.thumb
branch_20779de: @ 20779de :thumb
	mov     r0, #0xe
	bx      lr
@ 0x20779e2

.thumb
branch_20779e2: @ 20779e2 :thumb
	mov     r0, #0x6
	bx      lr
@ 0x20779e6

.thumb
branch_20779e6: @ 20779e6 :thumb
	mov     r0, #0x5
	bx      lr
@ 0x20779ea

.thumb
branch_20779ea: @ 20779ea :thumb
	mov     r0, #0x7
	bx      lr
@ 0x20779ee

.thumb
branch_20779ee: @ 20779ee :thumb
	mov     r0, #0x10
	bx      lr
@ 0x20779f2

.thumb
branch_20779f2: @ 20779f2 :thumb
	mov     r0, #0x11
	bx      lr
@ 0x20779f6

.thumb
branch_20779f6: @ 20779f6 :thumb
	mov     r0, #0x8
	bx      lr
@ 0x20779fa

.thumb
branch_20779fa: @ 20779fa :thumb
	mov     r0, #0x0
	bx      lr
@ 0x20779fe



.align 2, 0
.thumb
.globl Function_2077a00
Function_2077a00: @ 2077a00 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_2077a1c
	mov     r4, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r4, r0
	beq     branch_2077a18
	mov     r0, r5
	bl      Function_207418c
branch_2077a18: @ 2077a18 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2077a1c


.thumb
Function_2077a1c: @ 2077a1c :thumb
	push    {r3-r5,lr}
	mov     r5, r0

	mov     r1, #PKMNDATA_SPECIES
	mov     r2, #0x0
	bl      GetPkmnData2
	mov     r4, r0

	mov     r0, r5
	mov     r1, #PKMNDATA_ITEM
	mov     r2, #0x0
	bl      GetPkmnData2

	ldr     r1, =0x1e7
	cmp     r4, r1
	bne     branch_2077a5a
	cmp     r0, #0x70
	bne     branch_2077a42
	mov     r0, #0x1
	b       branch_2077a44

branch_2077a42: @ 2077a42 :thumb
	mov     r0, #0x0
branch_2077a44: @ 2077a44 :thumb
	str     r0, [sp, #0x0]

	mov     r0, r5
	mov     r1, #PKMNDATA_ALTERNATEFORM
	add     r2, sp, #0x0
	bl      SetPkmnData2

	mov     r0, r5
	bl      SetPkmnAbility
	ldr     r0, [sp, #0x0]
	pop     {r3-r5,pc}

branch_2077a5a: @ 2077a5a :thumb
	mov     r0, #0x0
	mvn     r0, r0
	pop     {r3-r5,pc}
@ 0x2077a60

.align 2
.pool



.thumb
Function_2077a64: @ 2077a64 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4

	mov     r1, #0x1
	str     r1, [sp, #0x0]

	mov     r1, #PKMNDATA_SPECIES
	mov     r2, #0x0
	mov     r4, r0
	bl      GetPkmnData

	ldr     r1, =0x1e7
	cmp     r0, r1
	bne     branch_2077a92

	mov     r0, r4
	mov     r1, #PKMNDATA_ALTERNATEFORM
	add     r2, sp, #0x0
	bl      SetPkmnData2
	mov     r0, r4
	bl      SetPkmnAbility
	mov     r0, r4
	bl      Function_207418c

branch_2077a92: @ 2077a92 :thumb
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2077a96

.align 2
.pool



.thumb
Function_2077a9c: @ 2077a9c :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r5, r1
	bl      GetNrOfPkmnInParty
	mov     r6, r0
	mov     r4, #0x0
	cmp     r6, #0x0
	ble     branch_2077aca
branch_2077aae: @ 2077aae :thumb
	mov     r0, r7
	mov     r1, r4
	bl      GetAdrOfPkmnInParty
	cmp     r5, #0x0
	beq     branch_2077ac0
	bl      Function_2077a64
	b       branch_2077ac4

branch_2077ac0: @ 2077ac0 :thumb
	bl      Function_2077a00
branch_2077ac4: @ 2077ac4 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r6
	blt     branch_2077aae
branch_2077aca: @ 2077aca :thumb
	pop     {r3-r7,pc}
@ 0x2077acc


thumb_func_start Function_2077acc
Function_2077acc: @ 2077acc :thumb
	push    {r4,lr}
	mov     r4, r0

	bl      Function_2077adc

	mov     r0, r4
	bl      Function_207418c
	pop     {r4,pc}
thumb_func_end Function_2077acc


thumb_func_start Function_2077adc
Function_2077adc: @ 2077adc :thumb
	push    {r0-r3}
	push    {r4,lr}

	mov     r1, #PKMNDATA_SPECIES
	mov     r2, #0x0
	mov     r4, r0
	bl      GetPkmnData2

	mov     r1, #0x7b
	lsl     r1, r1, #2          @ 0x
	cmp     r0, r1
	bne     branch_2077b0c
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x1
	ble     branch_2077afc
	bl      ErrorHandling
branch_2077afc: @ 2077afc :thumb
	mov     r0, r4
	mov     r1, #PKMNDATA_ALTERNATEFORM
	add     r2, sp, #0xc
	bl      SetPkmnData2
	mov     r0, r4
	bl      SetPkmnAbility
branch_2077b0c: @ 2077b0c :thumb
	pop     {r4}
	pop     {r3}
	add     sp, #0x10
	bx      r3
thumb_func_end Function_2077adc


.thumb
Function_2077b14: @ 2077b14 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r4, r0

	mov     r1, #PKMNDATA_SPECIES
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r5, r0

	mov     r0, r4
	mov     r1, #PKMNDATA_ALTERNATEFORM
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r6, r0

	mov     r0, r4
	mov     r1, #PKMNDATA_STATUSEFFECT
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r7, r0

	mov     r0, r4
	mov     r1, #PKMNDATA_CURHP
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0x0]

	mov     r0, r4
	mov     r1, #PKMNDATA_FATEFULENCOUNTERED
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r4, r0

	add     r0, sp, #0x4
	bl      Function_2013880
	mov     r0, #0x7b
	lsl     r0, r0, #2
	cmp     r5, r0
	bne     branch_2077b86
	cmp     r6, #0x0
	bne     branch_2077b86
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x0
	beq     branch_2077b86
	cmp     r4, #0x1
	bne     branch_2077b86
	mov     r0, #0x20
	tst     r0, r7
	bne     branch_2077b86
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x4
	blo     branch_2077b86
	cmp     r0, #0x14
	bhs     branch_2077b86
	add     sp, #0x10
	mov     r0, #0x1
	pop     {r3-r7,pc}

branch_2077b86: @ 2077b86 :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2077b8c


.thumb
Function_2077b8c: @ 2077b8c :thumb
	push    {r3-r7,lr}
	str     r0, [sp, #0x0]

	bl      GetNrOfPkmnInParty
	mov     r7, r0
	mov     r5, #0x0
	cmp     r7, #0x0
	ble     branch_2077bd4
branch_2077b9c: @ 2077b9c :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, r5
	bl      GetAdrOfPkmnInParty
	mov     r4, r0

	mov     r1, #PKMNDATA_SPECIES
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r6, r0

	mov     r0, r4
	mov     r1, #PKMNDATA_ALTERNATEFORM
	mov     r2, #0x0
	bl      GetPkmnData

	mov     r1, #0x7b
	lsl     r1, r1, #2
	cmp     r6, r1
	bne     branch_2077bce
	cmp     r0, #0x1
	bne     branch_2077bce
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2077acc
branch_2077bce: @ 2077bce :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r7
	blt     branch_2077b9c
branch_2077bd4: @ 2077bd4 :thumb
	pop     {r3-r7,pc}
@ 0x2077bd6


.align 2, 0
.thumb
Function_2077bd8: @ 2077bd8 :thumb
	push    {r4,lr}
	ldr     r3, [r2, #0x0]
	cmp     r3, #0x14
	bhs     branch_2077be4
	cmp     r3, #0x4
	bhs     branch_2077c06
branch_2077be4: @ 2077be4 :thumb
	cmp     r3, #0x4
	bge     branch_2077bea
	add     r3, #0x18
branch_2077bea: @ 2077bea :thumb
	ldr     r4, [r2, #0x4]
	sub     r3, #0x14
	mov     r2, #0x3c
	mul     r2, r3
	add     r2, r4, r2
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r2, r1
	bge     branch_2077c02
	bl      Function_2077b8c
	mov     r0, #0x1
	pop     {r4,pc}

branch_2077c02: @ 2077c02 :thumb
	mov     r0, #0x0
	pop     {r4,pc}

branch_2077c06: @ 2077c06 :thumb
	ldr     r4, [r2, #0x4]
	.hword  0x1f1b @ sub r3, r3, #0x4
	mov     r2, #0x3c
	mul     r2, r3
	add     r2, r4, r2
	cmp     r2, r1
	bge     branch_2077c1c
	bl      Function_2077b8c
	mov     r0, #0x1
	pop     {r4,pc}

branch_2077c1c: @ 2077c1c :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2077c20


.thumb
.globl Function_2077c20
Function_2077c20: @ 2077c20 :thumb
	push    {r0-r3}
	push    {r3-r7,lr}
	str     r2, [sp, #0x0]

	mov     r1, #PKMNDATA_SPECIES
	mov     r2, #0x0
	mov     r4, r0
	bl      GetPkmnData

	ldr     r1, =0x1df
	cmp     r0, r1
	beq     branch_2077c40
	mov     r0, #0x0
	pop     {r3-r7}
	pop     {r3}
	add     sp, #0x10
	bx      r3

branch_2077c40: @ 2077c40 :thumb
	mov     r0, r4
	mov     r1, #PKMNDATA_ALTERNATEFORM
	mov     r2, #0x0
	bl      GetPkmnData

	ldr     r0, [sp, #0x1c]
	mov     r5, #0x0
	lsl     r1, r0, #1
	ldr     r0, =Unknown_20f057c
	mov     r7, r5
	ldrh    r6, [r0, r1]
branch_2077c56: @ 2077c56 :thumb
	mov     r1, r5
	mov     r0, r4
	add     r1, #PKMNDATA_MOVE1
	mov     r2, r7
	bl      GetPkmnData

	ldr     r3, =Unknown_20f057e
	mov     r2, r0
	mov     r1, #0x1
branch_2077c68: @ 2077c68 :thumb
	cmp     r2, #0x0
	beq     branch_2077c94
	ldrh    r0, [r3, #0x0]
	cmp     r2, r0
	bne     branch_2077c94
	cmp     r6, #0x0
	beq     branch_2077c88
	lsl     r1, r6, #16
	lsl     r2, r5, #24
	mov     r0, r4
	lsr     r1, r1, #16
	lsr     r2, r2, #24
	bl      SetPkmnDataMoveWithZeroPPUps
	mov     r6, #0x0
	b       branch_2077c9c

branch_2077c88: @ 2077c88 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_2077408
	.hword  0x1e6d @ sub r5, r5, #0x1
	b       branch_2077c9c

branch_2077c94: @ 2077c94 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r1, #0x6
	blo     branch_2077c68
branch_2077c9c: @ 2077c9c :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x4
	blt     branch_2077c56
	cmp     r6, #0x0
	beq     branch_2077ce4
	mov     r5, #0x0
	mov     r7, r5
branch_2077caa: @ 2077caa :thumb
	mov     r1, r5
	mov     r0, r4
	add     r1, #PKMNDATA_MOVE1
	mov     r2, r7
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_2077cca
	lsl     r1, r6, #16
	lsl     r2, r5, #24
	mov     r0, r4
	lsr     r1, r1, #16
	lsr     r2, r2, #24
	bl      SetPkmnDataMoveWithZeroPPUps
	b       branch_2077cd0

branch_2077cca: @ 2077cca :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x4
	blt     branch_2077caa
branch_2077cd0: @ 2077cd0 :thumb
	cmp     r5, #0x4
	bne     branch_2077ce4
	ldr     r2, [sp, #0x0]
	lsl     r1, r6, #16
	lsl     r2, r2, #24
	mov     r0, r4
	lsr     r1, r1, #16
	lsr     r2, r2, #24
	bl      SetPkmnDataMoveWithZeroPPUps
branch_2077ce4: @ 2077ce4 :thumb
	mov     r0, r4
	mov     r1, #PKMNDATA_MOVE1
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_2077cfc
	mov     r0, r4
	mov     r1, #0x54
	mov     r2, #0x0
	bl      SetPkmnDataMoveWithZeroPPUps
branch_2077cfc: @ 2077cfc :thumb
	mov     r0, r4
	mov     r1, #PKMNDATA_ALTERNATEFORM
	add     r2, sp, #0x1c
	bl      SetPkmnData

	mov     r0, r4
	bl      Call_SetPkmnAbility

	mov     r0, r4
	bl      Function_207418c
	mov     r0, #0x1
	pop     {r3-r7}
	pop     {r3}
	add     sp, #0x10
	bx      r3
@ 0x2077d1c

.align 2
.pool



thumb_func_start LoadFromNARC_Wotbl
LoadFromNARC_Wotbl: @ 2077d28 :thumb
	push    {r4,lr}

	mov     r4, r2
	bl      Function_2078740

	mov     r2, r0
	mov     r0, r4
	mov     r1, #0x21               @ poketool/personal/wotbl.narc
	bl      LoadFromNARC

	pop     {r4,pc}
thumb_func_end LoadFromNARC_Wotbl


thumb_func_start Function_2077d3c
Function_2077d3c: @ 2077d3c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r7, r0
	ldr     r0, =0x1b9
	mov     r5, r2
	mov     r6, r1
	mov     r4, r3
	cmp     r5, r0
	bne     branch_2077d94
	mov     r0, r6
	bl      Function_20064c8
	cmp     r0, #0x0
	bne     branch_2077d78
	mov     r0, #0x1
	bl      Function_20063d4
	ldr     r0, [sp, #0x2c]
	ldr     r2, [sp, #0x20]
	str     r0, [sp, #0x0]
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	ldr     r3, [sp, #0x24]
	mov     r0, r6
	mov     r1, r5
	bl      Function_20059d0
	add     sp, #0x8
	pop     {r3-r7,pc}

branch_2077d78: @ 2077d78 :thumb
	ldr     r0, [sp, #0x28]
	cmp     r0, #0x0
	beq     branch_2077d84
	mov     r0, #0x1
	bl      Function_20063d4
branch_2077d84: @ 2077d84 :thumb
	ldr     r2, [sp, #0x24]
	ldr     r3, [sp, #0x20]
	mov     r0, r7
	mov     r1, #0x0
	bl      Function_20063e4
	add     sp, #0x8
	pop     {r3-r7,pc}

branch_2077d94: @ 2077d94 :thumb
	ldr     r0, [sp, #0x2c]
	ldr     r2, [sp, #0x20]
	str     r0, [sp, #0x0]
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	ldr     r3, [sp, #0x24]
	mov     r0, r6
	mov     r1, r5
	bl      Function_20059d0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2077dae

.align 2
.pool
thumb_func_end Function_2077d3c



thumb_func_start Function_2077db4
Function_2077db4: @ 2077db4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r7, r0
	ldr     r0, =0x1b9
	mov     r5, r2
	mov     r6, r1
	mov     r4, r3
	cmp     r5, r0
	bne     branch_2077e18
	mov     r0, r6
	bl      Function_20064c8
	cmp     r0, #0x0
	bne     branch_2077df6
	mov     r0, #0x1
	bl      Function_20063d4
	ldr     r0, [sp, #0x2c]
	ldr     r2, [sp, #0x20]
	str     r0, [sp, #0x0]
	add     r0, sp, #0x30
	ldrb    r0, [r0, #0x0]
	ldr     r3, [sp, #0x24]
	mov     r1, r5
	str     r0, [sp, #0x4]
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	mov     r0, r6
	bl      Function_2005f4c
	add     sp, #0xc
	pop     {r4-r7,pc}

branch_2077df6: @ 2077df6 :thumb
	ldr     r0, [sp, #0x28]
	cmp     r0, #0x0
	beq     branch_2077e02
	mov     r0, #0x1
	bl      Function_20063d4
branch_2077e02: @ 2077e02 :thumb
	add     r0, sp, #0x30
	ldrb    r0, [r0, #0x0]
	ldr     r2, [sp, #0x24]
	ldr     r3, [sp, #0x20]
	str     r0, [sp, #0x0]
	mov     r0, r7
	mov     r1, #0x0
	bl      Function_2006438
	add     sp, #0xc
	pop     {r4-r7,pc}

branch_2077e18: @ 2077e18 :thumb
	ldr     r0, [sp, #0x2c]
	ldr     r2, [sp, #0x20]
	str     r0, [sp, #0x0]
	add     r0, sp, #0x30
	ldrb    r0, [r0, #0x0]
	ldr     r3, [sp, #0x24]
	mov     r1, r5
	str     r0, [sp, #0x4]
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	mov     r0, r6
	bl      Function_2005f4c
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2077e38

.align 2
.pool
thumb_func_end Function_2077db4



thumb_func_start Function_2077e3c
Function_2077e3c: @ 2077e3c :thumb
	push    {r3-r5,lr}
	mov     r5, r0

	mov     r1, #PKMNDATA_SPECIES
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r4, r0

	mov     r0, r5
	mov     r1, #PKMNDATA_ALTERNATEFORM
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, r0

	lsl     r0, r4, #16
	lsl     r1, r1, #24
	lsr     r0, r0, #16
	lsr     r1, r1, #24
	bl      Function_2005844

	pop     {r3-r5,pc}
thumb_func_end Function_2077e3c


thumb_func_start InitHPAndStatus
InitHPAndStatus: @ 2077e64 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	ldr     r6, [sp, #0x20]
	mov     r5, r0
	str     r6, [sp, #0x0]
	ldr     r6, [sp, #0x24]
	mov     r4, r2
	str     r6, [sp, #0x4]
	bl      Function_2077ea4
	cmp     r4, #0xe
	bne     branch_2077ea0

	mov     r0, r5
	mov     r1, #PKMNDATA_MAXHP
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0x8]

	mov     r0, r5
	mov     r1, #PKMNDATA_CURHP
	add     r2, sp, #0x8
	bl      SetPkmnData

	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r1, #PKMNDATA_STATUSEFFECT
	add     r2, sp, #0x8
	bl      SetPkmnData
branch_2077ea0: @ 2077ea0 :thumb

	add     sp, #0xc
	pop     {r3-r6,pc}
thumb_func_end InitHPAndStatus


.thumb
Function_2077ea4: @ 2077ea4 :thumb
	push    {r0-r3}
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r2, [sp, #0x24]
	mov     r4, r0
	str     r2, [sp, #0x0]

	mov     r2, #0x0
	bl      Function_209305c

	ldr     r2, =GameIDNr
	mov     r0, r4
	mov     r1, #PKMNDATA_ORIGINGAME
	bl      SetPkmnData2

	mov     r0, r4
	mov     r1, #PKMNDATA_POKEBALL
	add     r2, sp, #0x18
	bl      SetPkmnData2

	mov     r0, r4
	mov     r1, #PKMNDATA_ENCOUNTERTYPE
	add     r2, sp, #0x20
	bl      SetPkmnData2

	add     sp, #0x4
	pop     {r3,r4}
	pop     {r3}
	add     sp, #0x10
	bx      r3
@ 0x2077ede

.align 2
.pool



.thumb
Function_2077ee4: @ 2077ee4 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	ldr     r4, [sp, #0x10]
	str     r4, [sp, #0x0]
	ldr     r4, [sp, #0x14]
	str     r4, [sp, #0x4]
	bl      Function_2077ef8
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2077ef8


.thumb
Function_2077ef8: @ 2077ef8 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	ldr     r4, [sp, #0x10]
	str     r4, [sp, #0x0]
	ldr     r4, [sp, #0x14]
	str     r4, [sp, #0x4]
	bl      Function_2077ea4
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2077f0c


thumb_func_start Function_2077f0c
Function_2077f0c: @ 2077f0c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r0, #0x81
	mov     r7, r2
	tst     r0, r1
	bne     branch_2077fa6

	bl      PRNG
	mov     r1, #100
	blx     _s32_div_f
	mov     r4, r1

	mov     r0, r5
	mov     r1, #PKMNDATA_SPECIES
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r0, r0, #16
	lsr     r6, r0, #16

	mov     r0, r5
	mov     r1, #PKMNDATA_ALTERNATEFORM
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x0]

	ldr     r1, [sp, #0x0]
	mov     r0, r6
	mov     r2, #PKMNBASEDATA_ITEM1
	bl      GetPkmnBaseData2
	add     r1, sp, #0x4
	strh    r0, [r1, #0x2]
	ldr     r1, [sp, #0x0]
	mov     r0, r6
	mov     r2, #PKMNBASEDATA_ITEM2
	bl      GetPkmnBaseData2
	add     r1, sp, #0x4
	strh    r0, [r1, #0x0]
	ldrh    r2, [r1, #0x2]
	ldrh    r0, [r1, #0x0]
	cmp     r2, r0
	bne     branch_2077f7c
	cmp     r2, #0x0
	beq     branch_2077f7c

	add     r2, sp, #0x4
	mov     r0, r5
	mov     r1, #PKMNDATA_ITEM
	add     r2, #0x2
	bl      SetPkmnData
	add     sp, #0x8
	pop     {r3-r7,pc}

branch_2077f7c: @ 2077f7c :thumb
	ldr     r0, =Unknown_20f0574
	lsl     r1, r7, #2
	ldrh    r0, [r0, r1]
	cmp     r4, r0
	blo     branch_2077fa6
	ldr     r0, =Unknown_20f0574+2
	ldrh    r0, [r0, r1]
	cmp     r4, r0
	add     r2, sp, #0x4
	bhs     branch_2077f9e

	mov     r0, r5
	mov     r1, #PKMNDATA_ITEM
	add     r2, #0x2
	bl      SetPkmnData
	add     sp, #0x8
	pop     {r3-r7,pc}

branch_2077f9e: @ 2077f9e :thumb
	mov     r0, r5
	mov     r1, #PKMNDATA_ITEM
	bl      SetPkmnData
branch_2077fa6: @ 2077fa6 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2077faa

.align 2
.pool
thumb_func_end Function_2077f0c



.thumb
Function_2077fb4: @ 2077fb4 :thumb
	ldr     r3, =Function_2077fbc+1
	bx      r3
@ 0x2077fb8

.align 2
.pool



.thumb
Function_2077fbc: @ 2077fbc :thumb
	push    {r4-r6,lr}
	mov     r6, r1

	mov     r1, #0xae
	mov     r2, #0x0
	mov     r5, r0
	bl      GetPkmnData2
	lsl     r0, r0, #16
	lsr     r4, r0, #16

	mov     r0, r5
	mov     r1, #PKMNDATA_ALTERNATEFORM
	mov     r2, #0x0
	bl      GetPkmnData2

	mov     r1, r0
	mov     r0, r4
	mov     r2, r6
	bl      Function_2077fe4

	pop     {r4-r6,pc}
@ 0x2077fe4


.thumb
.globl Function_2077fe4
Function_2077fe4: @ 2077fe4 :thumb
	push    {r4,lr}
	ldr     r3, =0x1ee
	cmp     r0, r3
	bne     branch_2077ff0
	mov     r0, #0x0
	pop     {r4,pc}

branch_2077ff0: @ 2077ff0 :thumb
	cmp     r2, #0x20
	bhs     branch_2077ffe
	mov     r3, #0x1
	mov     r4, r3
	lsl     r4, r2
	mov     r2, #0x1d
	b       branch_2078028

branch_2077ffe: @ 2077ffe :thumb
	cmp     r2, #0x40
	bhs     branch_207800e
	mov     r3, #0x1
	sub     r2, #0x20
	mov     r4, r3
	lsl     r4, r2
	mov     r2, #0x1e
	b       branch_2078028

branch_207800e: @ 207800e :thumb
	cmp     r2, #0x60
	bhs     branch_207801e
	mov     r3, #0x1
	sub     r2, #0x40
	mov     r4, r3
	lsl     r4, r2
	mov     r2, #0x1f
	b       branch_2078028

branch_207801e: @ 207801e :thumb
	mov     r3, #0x1
	sub     r2, #0x60
	mov     r4, r3
	lsl     r4, r2
	mov     r2, #0x20
branch_2078028: @ 2078028 :thumb
	bl      GetPkmnBaseData2
	tst     r0, r4
	beq     branch_2078034
	mov     r0, #0x1
	pop     {r4,pc}

branch_2078034: @ 2078034 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2078038

.align 2
.pool



thumb_func_start Call_SetPkmnAbility
Call_SetPkmnAbility: @ 207803c :thumb
	ldr     r3, =SetPkmnAbility+1
	bx      r3
@ 0x2078040

.align 2
.pool
thumb_func_end Call_SetPkmnAbility



thumb_func_start SetPkmnAbility
SetPkmnAbility: @ 2078044 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	bl      InitEncryptPkmnData_Part1
	mov     r7, r0

	mov     r0, r5
	mov     r1, #PKMNDATA_SPECIES
	mov     r2, #0x0
	bl      GetPkmnData2

	mov     r1, #0x0 @ PKMNDATA_PERSONALITYVALUE
	mov     r4, r0
	mov     r0, r5
	mov     r2, r1
	bl      GetPkmnData2
	mov     r6, r0

	mov     r0, r5
	mov     r1, #PKMNDATA_ALTERNATEFORM
	mov     r2, #0x0
	bl      GetPkmnData2
	str     r0, [sp, #0x0]

	ldr     r1, [sp, #0x0]
	mov     r0, r4
	mov     r2, #PKMNBASEDATA_ABILITY1
	bl      GetPkmnBaseData2
	str     r0, [sp, #0x8]

	ldr     r1, [sp, #0x0]
	mov     r0, r4
	mov     r2, #PKMNBASEDATA_ABILITY2
	bl      GetPkmnBaseData2
	str     r0, [sp, #0x4]

	cmp     r0, #0x0
	beq     branch_20780ae
	mov     r0, #0x1
	tst     r0, r6
	beq     branch_20780a2
	mov     r0, r5
	mov     r1, #PKMNDATA_ABILITY
	add     r2, sp, #0x4
	bl      SetPkmnData2
	b       branch_20780b8

branch_20780a2: @ 20780a2 :thumb
	mov     r0, r5
	mov     r1, #PKMNDATA_ABILITY
	add     r2, sp, #0x8
	bl      SetPkmnData2
	b       branch_20780b8

branch_20780ae: @ 20780ae :thumb
	mov     r0, r5
	mov     r1, #PKMNDATA_ABILITY
	add     r2, sp, #0x8
	bl      SetPkmnData2
branch_20780b8: @ 20780b8 :thumb
	mov     r0, r5
	mov     r1, r7
	bl      InitEncryptPkmnData_Part1Again
	add     sp, #0xc
	pop     {r4-r7,pc}
thumb_func_end SetPkmnAbility


thumb_func_start CopyPkmnData
CopyPkmnData: @ 20780c4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0

	mov     r0, #0x0
	str     r1, [sp, #0x0]
	bl      AllocPkmnData
	str     r0, [sp, #0x4]

	ldr     r1, [sp, #0x4]
	mov     r0, r5
	bl      Function_20775ec

	ldr     r0, [sp, #0x4]
	ldr     r1, [r5, #0x0]
	mov     r2, #0x0
	bl      GetPkmnDataBlockAdress
	mov     r4, r0

	ldr     r0, [sp, #0x4]
	ldr     r1, [r5, #0x0]
	mov     r2, #0x1
	bl      GetPkmnDataBlockAdress
	mov     r6, r0

	ldr     r0, [sp, #0x4]
	ldr     r1, [r5, #0x0]
	mov     r2, #0x2
	bl      GetPkmnDataBlockAdress
	mov     r7, r0

	ldr     r0, [sp, #0x4]
	ldr     r1, [r5, #0x0]
	mov     r2, #0x3
	bl      GetPkmnDataBlockAdress
	str     r0, [sp, #0x8]

	ldr     r1, [sp, #0x0]
	mov     r0, r5
	mov     r2, #0x0
	bl      GetPkmnDataBlockAdress
	str     r0, [sp, #0xc]

	ldr     r1, [sp, #0x0]
	mov     r0, r5
	mov     r2, #0x1
	bl      GetPkmnDataBlockAdress
	str     r0, [sp, #0x10]

	ldr     r1, [sp, #0x0]
	mov     r0, r5
	mov     r2, #0x2
	bl      GetPkmnDataBlockAdress
	str     r0, [sp, #0x14]

	ldr     r1, [sp, #0x0]
	mov     r0, r5
	mov     r2, #0x3
	bl      GetPkmnDataBlockAdress

	ldr     r2, [sp, #0x4]
	str     r0, [sp, #0x18]

	ldr     r0, [sp, #0x4]
	ldrh    r2, [r2, #0x6]
	add     r0, #0x8
	mov     r1, #0x80
	bl      Call_DecryptPkmnData3

	mov     r0, r5
	ldr     r2, [r5, #0x0]
	add     r0, #0x88
	mov     r1, #0x64
	bl      Call_DecryptPkmnData3

	mov     r0, r5
	ldrh    r2, [r5, #0x6]
	add     r0, #0x8
	mov     r1, #0x80
	bl      Call_DecryptPkmnData3

	ldr     r0, [sp, #0x0]
	str     r0, [r5, #0x0]

	ldr     r2, [sp, #0xc]
	ldmia   r4!, {r0,r1}
	stmia   r2!, {r0,r1}
	str     r2, [sp, #0xc]
	ldmia   r4!, {r0,r1}
	stmia   r2!, {r0,r1}
	str     r2, [sp, #0xc]
	ldmia   r4!, {r0,r1}
	stmia   r2!, {r0,r1}
	str     r2, [sp, #0xc]
	ldmia   r4!, {r0,r1}
	stmia   r2!, {r0,r1}
	str     r2, [sp, #0xc]

	ldr     r2, [sp, #0x10]
	ldmia   r6!, {r0,r1}
	stmia   r2!, {r0,r1}
	str     r2, [sp, #0x10]
	ldmia   r6!, {r0,r1}
	stmia   r2!, {r0,r1}
	str     r2, [sp, #0x10]
	ldmia   r6!, {r0,r1}
	stmia   r2!, {r0,r1}
	str     r2, [sp, #0x10]
	ldmia   r6!, {r0,r1}
	stmia   r2!, {r0,r1}
	str     r2, [sp, #0x10]

	ldr     r2, [sp, #0x14]
	ldmia   r7!, {r0,r1}
	stmia   r2!, {r0,r1}
	str     r2, [sp, #0x14]
	ldmia   r7!, {r0,r1}
	stmia   r2!, {r0,r1}
	str     r2, [sp, #0x14]
	ldmia   r7!, {r0,r1}
	stmia   r2!, {r0,r1}
	str     r2, [sp, #0x14]
	ldmia   r7!, {r0,r1}
	stmia   r2!, {r0,r1}
	str     r2, [sp, #0x14]

	mov     r0, #0x10
branch_20781b6: @ 20781b6 :thumb
	ldr     r1, [sp, #0x8]
	ldrh    r2, [r1, #0x0]
	.hword  0x1c89 @ add r1, r1, #0x2
	str     r1, [sp, #0x8]
	ldr     r1, [sp, #0x18]
	strh    r2, [r1, #0x0]
	.hword  0x1c89 @ add r1, r1, #0x2
	str     r1, [sp, #0x18]
	.hword  0x1e40 @ sub r0, r0, #0x1
	bne     branch_20781b6

	mov     r0, r5
	add     r0, #PkmnData_Offset1
	mov     r1, #PkmnData_Size1
	bl      CalcPokemonChecksum
	strh    r0, [r5, #0x6]

	mov     r0, r5
	ldrh    r2, [r5, #0x6]
	add     r0, #PkmnData_Offset1
	mov     r1, #PkmnData_Size1
	bl      Call_DecryptPkmnData2

	mov     r0, r5
	ldr     r2, [r5, #0x0]
	add     r0, #PkmnData_Offset2
	mov     r1, #PkmnData_Size2
	bl      Call_DecryptPkmnData2

	ldr     r0, [sp, #0x4]
	bl      free

	add     sp, #0x1c
	pop     {r4-r7,pc}
thumb_func_end CopyPkmnData


thumb_func_start LoadFromNARC_PlPersonal1
LoadFromNARC_PlPersonal1: @ 20781f8 :thumb
	ldr     r3, =LoadFromNARC+1
	mov     r2, r0
	mov     r0, r1
	mov     r1, #0x2                @ poketool/personal/pl_personal.narc
	bx      r3
@ 0x2078202

.align 2
.pool
thumb_func_end LoadFromNARC_PlPersonal1



thumb_func_start LoadFromNARC_PlPersonal2
LoadFromNARC_PlPersonal2: @ 2078208 :thumb
	push    {r4,lr}

	mov     r4, r2
	bl      Function_2078740

	mov     r2, r0
	mov     r0, r4
	mov     r1, #0x2                @ poketool/personal/pl_personal.narc
	bl      LoadFromNARC

	pop     {r4,pc}
thumb_func_end LoadFromNARC_PlPersonal2


thumb_func_start LoadFromNARC_Evo
LoadFromNARC_Evo: @ 207821c :thumb
	ldr     r3, =LoadFromNARC+1
	mov     r2, r0
	mov     r0, r1
	mov     r1, #0x22               @ poketool/personal/evo.narc
	bx      r3
@ 0x2078226

.align 2
.pool
thumb_func_end LoadFromNARC_Evo



thumb_func_start Call_DecryptPkmnData2
Call_DecryptPkmnData2: @ 207822c :thumb
	ldr     r3, =DecryptPkmnData+1
	bx      r3
@ 0x2078230

.align 2
.pool
thumb_func_end Call_DecryptPkmnData2



thumb_func_start Call_DecryptPkmnData3
Call_DecryptPkmnData3: @ 2078234 :thumb
	ldr     r3, =Call_DecryptPkmnData+1
	bx      r3
@ 0x2078238

.align 2
.pool
thumb_func_end Call_DecryptPkmnData3



/* Calculates the Checksum that's used to De/Encrypt the PokemonData
http://bulbapedia.bulbagarden.net/wiki/Pok%C3%A9mon_data_structure_in_Generation_IV
*/
thumb_func_start CalcPokemonChecksum
CalcPokemonChecksum: @ 207823c :thumb
	push    {r3,r4}

	mov     r3, #0x0
	mov     r2, r3
	lsr     r4, r1, #1
	beq     branch_2078256
branch_2078246: @ 2078246 :thumb
	ldrh    r1, [r0, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c80 @ add r0, r0, #0x2
	add     r1, r3, r1
	lsl     r1, r1, #16
	lsr     r3, r1, #16
	cmp     r2, r4
	blo     branch_2078246
branch_2078256: @ 2078256 :thumb

	mov     r0, r3
	pop     {r3,r4}
	bx      lr
thumb_func_end CalcPokemonChecksum


/*Input:
r0 = ? (PkmnData-Adress)
r1 = PersonalityValue
r2 = BlockNr (0 = BlockA, 1 = BlockB, ...)

Return:
r0 = BlockAdress
*/
thumb_func_start GetPkmnDataBlockAdress
GetPkmnDataBlockAdress: @ 207825c :thumb
	push    {r3,lr}
	mov     r3, #0x3e
	lsl     r3, r3, #12
	and     r3, r1
	lsr     r3, r3, #13
	cmp     r3, #0x1f
	bhi     branch_20782bc
	add     r3, r3, r3
	add     r3, pc
	ldrh    r3, [r3, #0x6]
	lsl     r3, r3, #16
	asr     r3, r3, #16
	add     pc, r3
@ 0x2078276

Jumppoints_2078276:
.hword branch_20782b6 - Jumppoints_2078276 - 2
.hword branch_20782e8 - Jumppoints_2078276 - 2
.hword branch_2078318 - Jumppoints_2078276 - 2
.hword branch_2078348 - Jumppoints_2078276 - 2
.hword branch_2078378 - Jumppoints_2078276 - 2
.hword branch_20783a8 - Jumppoints_2078276 - 2
.hword branch_20783d8 - Jumppoints_2078276 - 2
.hword branch_207840a - Jumppoints_2078276 - 2
.hword branch_207843a - Jumppoints_2078276 - 2
.hword branch_207846a - Jumppoints_2078276 - 2
.hword branch_207849a - Jumppoints_2078276 - 2
.hword branch_20784ca - Jumppoints_2078276 - 2
.hword branch_20784fa - Jumppoints_2078276 - 2
.hword branch_207852c - Jumppoints_2078276 - 2
.hword branch_207855c - Jumppoints_2078276 - 2
.hword branch_207858c - Jumppoints_2078276 - 2
.hword branch_20785bc - Jumppoints_2078276 - 2
.hword branch_20785ec - Jumppoints_2078276 - 2
.hword branch_207861c - Jumppoints_2078276 - 2
.hword branch_207864e - Jumppoints_2078276 - 2
.hword branch_207867e - Jumppoints_2078276 - 2
.hword branch_20786ae - Jumppoints_2078276 - 2
.hword branch_20786de - Jumppoints_2078276 - 2
.hword branch_207870e - Jumppoints_2078276 - 2
.hword branch_20782b6 - Jumppoints_2078276 - 2
.hword branch_20782e8 - Jumppoints_2078276 - 2
.hword branch_2078318 - Jumppoints_2078276 - 2
.hword branch_2078348 - Jumppoints_2078276 - 2
.hword branch_2078378 - Jumppoints_2078276 - 2
.hword branch_20783a8 - Jumppoints_2078276 - 2
.hword branch_20783d8 - Jumppoints_2078276 - 2
.hword branch_207840a - Jumppoints_2078276 - 2

branch_20782b6: @ 20782b6 :thumb
	add     r0, #0x8
	cmp     r2, #0x3
	bls     branch_20782be
branch_20782bc: @ 20782bc :thumb
	b       branch_207873c

branch_20782be: @ 20782be :thumb
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x20782ca

Jumppoints_20782ca:
.hword branch_20782d2 - Jumppoints_20782ca - 2
.hword branch_20782d6 - Jumppoints_20782ca - 2
.hword branch_20782dc - Jumppoints_20782ca - 2
.hword branch_20782e2 - Jumppoints_20782ca - 2

branch_20782d2: @ 20782d2 :thumb
	mov     r1, r0
	b       branch_207873c

branch_20782d6: @ 20782d6 :thumb
	mov     r1, r0
	add     r1, #0x20
	b       branch_207873c

branch_20782dc: @ 20782dc :thumb
	mov     r1, r0
	add     r1, #0x40
	b       branch_207873c

branch_20782e2: @ 20782e2 :thumb
	mov     r1, r0
	add     r1, #0x60
	b       branch_207873c

branch_20782e8: @ 20782e8 :thumb
	add     r0, #0x8
	cmp     r2, #0x3
	bhi     branch_20783de
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x20782fa

Jumppoints_20782fa:
.hword branch_2078302 - Jumppoints_20782fa - 2
.hword branch_2078306 - Jumppoints_20782fa - 2
.hword branch_207830c - Jumppoints_20782fa - 2
.hword branch_2078312 - Jumppoints_20782fa - 2

branch_2078302: @ 2078302 :thumb
	mov     r1, r0
	b       branch_207873c

branch_2078306: @ 2078306 :thumb
	mov     r1, r0
	add     r1, #0x20
	b       branch_207873c

branch_207830c: @ 207830c :thumb
	mov     r1, r0
	add     r1, #0x60
	b       branch_207873c

branch_2078312: @ 2078312 :thumb
	mov     r1, r0
	add     r1, #0x40
	b       branch_207873c

branch_2078318: @ 2078318 :thumb
	add     r0, #0x8
	cmp     r2, #0x3
	bhi     branch_20783de
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x207832a

Jumppoints_207832a:
.hword branch_2078332 - Jumppoints_207832a - 2
.hword branch_2078336 - Jumppoints_207832a - 2
.hword branch_207833c - Jumppoints_207832a - 2
.hword branch_2078342 - Jumppoints_207832a - 2

branch_2078332: @ 2078332 :thumb
	mov     r1, r0
	b       branch_207873c

branch_2078336: @ 2078336 :thumb
	mov     r1, r0
	add     r1, #0x40
	b       branch_207873c

branch_207833c: @ 207833c :thumb
	mov     r1, r0
	add     r1, #0x20
	b       branch_207873c

branch_2078342: @ 2078342 :thumb
	mov     r1, r0
	add     r1, #0x60
	b       branch_207873c

branch_2078348: @ 2078348 :thumb
	add     r0, #0x8
	cmp     r2, #0x3
	bhi     branch_20783de
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x207835a

Jumppoints_207835a:
.hword branch_2078362 - Jumppoints_207835a - 2
.hword branch_2078366 - Jumppoints_207835a - 2
.hword branch_207836c - Jumppoints_207835a - 2
.hword branch_2078372 - Jumppoints_207835a - 2

branch_2078362: @ 2078362 :thumb
	mov     r1, r0
	b       branch_207873c

branch_2078366: @ 2078366 :thumb
	mov     r1, r0
	add     r1, #0x60
	b       branch_207873c

branch_207836c: @ 207836c :thumb
	mov     r1, r0
	add     r1, #0x20
	b       branch_207873c

branch_2078372: @ 2078372 :thumb
	mov     r1, r0
	add     r1, #0x40
	b       branch_207873c

branch_2078378: @ 2078378 :thumb
	add     r0, #0x8
	cmp     r2, #0x3
	bhi     branch_20783de
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x207838a

Jumppoints_207838a:
.hword branch_2078392 - Jumppoints_207838a - 2
.hword branch_2078396 - Jumppoints_207838a - 2
.hword branch_207839c - Jumppoints_207838a - 2
.hword branch_20783a2 - Jumppoints_207838a - 2
.thumb
branch_2078392: @ 2078392 :thumb
	mov     r1, r0
	b       branch_207873c

branch_2078396: @ 2078396 :thumb
	mov     r1, r0
	add     r1, #0x40
	b       branch_207873c

branch_207839c: @ 207839c :thumb
	mov     r1, r0
	add     r1, #0x60
	b       branch_207873c

branch_20783a2: @ 20783a2 :thumb
	mov     r1, r0
	add     r1, #0x20
	b       branch_207873c

branch_20783a8: @ 20783a8 :thumb
	add     r0, #0x8
	cmp     r2, #0x3
	bhi     branch_20783de
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x20783ba

Jumppoints_20783ba:
.hword branch_20783c2 - Jumppoints_20783ba - 2
.hword branch_20783c6 - Jumppoints_20783ba - 2
.hword branch_20783cc - Jumppoints_20783ba - 2
.hword branch_20783d2 - Jumppoints_20783ba - 2
.thumb
branch_20783c2: @ 20783c2 :thumb
	mov     r1, r0
	b       branch_207873c

branch_20783c6: @ 20783c6 :thumb
	mov     r1, r0
	add     r1, #0x60
	b       branch_207873c

branch_20783cc: @ 20783cc :thumb
	mov     r1, r0
	add     r1, #0x40
	b       branch_207873c

branch_20783d2: @ 20783d2 :thumb
	mov     r1, r0
	add     r1, #0x20
	b       branch_207873c

branch_20783d8: @ 20783d8 :thumb
	add     r0, #0x8
	cmp     r2, #0x3
	bls     branch_20783e0
branch_20783de: @ 20783de :thumb
	b       branch_207873c

branch_20783e0: @ 20783e0 :thumb
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x20783ec

Jumppoints_20783ec:
.hword branch_20783f4 - Jumppoints_20783ec - 2
.hword branch_20783fa - Jumppoints_20783ec - 2
.hword branch_20783fe - Jumppoints_20783ec - 2
.hword branch_2078404 - Jumppoints_20783ec - 2
.thumb
branch_20783f4: @ 20783f4 :thumb
	mov     r1, r0
	add     r1, #0x20
	b       branch_207873c

branch_20783fa: @ 20783fa :thumb
	mov     r1, r0
	b       branch_207873c

branch_20783fe: @ 20783fe :thumb
	mov     r1, r0
	add     r1, #0x40
	b       branch_207873c

branch_2078404: @ 2078404 :thumb
	mov     r1, r0
	add     r1, #0x60
	b       branch_207873c

branch_207840a: @ 207840a :thumb
	add     r0, #0x8
	cmp     r2, #0x3
	bhi     branch_2078500
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x207841c

Jumppoints_207841c:
.hword branch_2078424 - Jumppoints_207841c - 2
.hword branch_207842a - Jumppoints_207841c - 2
.hword branch_207842e - Jumppoints_207841c - 2
.hword branch_2078434 - Jumppoints_207841c - 2
.thumb
branch_2078424: @ 2078424 :thumb
	mov     r1, r0
	add     r1, #0x20
	b       branch_207873c

branch_207842a: @ 207842a :thumb
	mov     r1, r0
	b       branch_207873c

branch_207842e: @ 207842e :thumb
	mov     r1, r0
	add     r1, #0x60
	b       branch_207873c

branch_2078434: @ 2078434 :thumb
	mov     r1, r0
	add     r1, #0x40
	b       branch_207873c

branch_207843a: @ 207843a :thumb
	add     r0, #0x8
	cmp     r2, #0x3
	bhi     branch_2078500
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x207844c

Jumppoints_207844c:
.hword branch_2078454 - Jumppoints_207844c - 2
.hword branch_207845a - Jumppoints_207844c - 2
.hword branch_207845e - Jumppoints_207844c - 2
.hword branch_2078464 - Jumppoints_207844c - 2
.thumb
branch_2078454: @ 2078454 :thumb
	mov     r1, r0
	add     r1, #0x40
	b       branch_207873c

branch_207845a: @ 207845a :thumb
	mov     r1, r0
	b       branch_207873c

branch_207845e: @ 207845e :thumb
	mov     r1, r0
	add     r1, #0x20
	b       branch_207873c

branch_2078464: @ 2078464 :thumb
	mov     r1, r0
	add     r1, #0x60
	b       branch_207873c

branch_207846a: @ 207846a :thumb
	add     r0, #0x8
	cmp     r2, #0x3
	bhi     branch_2078500
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x207847c

Jumppoints_207847c:
.hword branch_2078484 - Jumppoints_207847c - 2
.hword branch_207848a - Jumppoints_207847c - 2
.hword branch_207848e - Jumppoints_207847c - 2
.hword branch_2078494 - Jumppoints_207847c - 2
.thumb
branch_2078484: @ 2078484 :thumb
	mov     r1, r0
	add     r1, #0x60
	b       branch_207873c

branch_207848a: @ 207848a :thumb
	mov     r1, r0
	b       branch_207873c

branch_207848e: @ 207848e :thumb
	mov     r1, r0
	add     r1, #0x20
	b       branch_207873c

branch_2078494: @ 2078494 :thumb
	mov     r1, r0
	add     r1, #0x40
	b       branch_207873c

branch_207849a: @ 207849a :thumb
	add     r0, #0x8
	cmp     r2, #0x3
	bhi     branch_2078500
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x20784ac

Jumppoints_20784ac:
.hword branch_20784b4 - Jumppoints_20784ac - 2
.hword branch_20784ba - Jumppoints_20784ac - 2
.hword branch_20784be - Jumppoints_20784ac - 2
.hword branch_20784c4 - Jumppoints_20784ac - 2
.thumb
branch_20784b4: @ 20784b4 :thumb
	mov     r1, r0
	add     r1, #0x40
	b       branch_207873c

branch_20784ba: @ 20784ba :thumb
	mov     r1, r0
	b       branch_207873c

branch_20784be: @ 20784be :thumb
	mov     r1, r0
	add     r1, #0x60
	b       branch_207873c

branch_20784c4: @ 20784c4 :thumb
	mov     r1, r0
	add     r1, #0x20
	b       branch_207873c

branch_20784ca: @ 20784ca :thumb
	add     r0, #0x8
	cmp     r2, #0x3
	bhi     branch_2078500
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x20784dc

Jumppoints_20784dc:
.hword branch_20784e4 - Jumppoints_20784dc - 2
.hword branch_20784ea - Jumppoints_20784dc - 2
.hword branch_20784ee - Jumppoints_20784dc - 2
.hword branch_20784f4 - Jumppoints_20784dc - 2
.thumb
branch_20784e4: @ 20784e4 :thumb
	mov     r1, r0
	add     r1, #0x60
	b       branch_207873c

branch_20784ea: @ 20784ea :thumb
	mov     r1, r0
	b       branch_207873c

branch_20784ee: @ 20784ee :thumb
	mov     r1, r0
	add     r1, #0x40
	b       branch_207873c

branch_20784f4: @ 20784f4 :thumb
	mov     r1, r0
	add     r1, #0x20
	b       branch_207873c

branch_20784fa: @ 20784fa :thumb
	add     r0, #0x8
	cmp     r2, #0x3
	bls     branch_2078502
branch_2078500: @ 2078500 :thumb
	b       branch_207873c

branch_2078502: @ 2078502 :thumb
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x207850e

Jumppoints_207850e:
.hword branch_2078516 - Jumppoints_207850e - 2
.hword branch_207851c - Jumppoints_207850e - 2
.hword branch_2078522 - Jumppoints_207850e - 2
.hword branch_2078526 - Jumppoints_207850e - 2
.thumb
branch_2078516: @ 2078516 :thumb
	mov     r1, r0
	add     r1, #0x20
	b       branch_207873c

branch_207851c: @ 207851c :thumb
	mov     r1, r0
	add     r1, #0x40
	b       branch_207873c

branch_2078522: @ 2078522 :thumb
	mov     r1, r0
	b       branch_207873c

branch_2078526: @ 2078526 :thumb
	mov     r1, r0
	add     r1, #0x60
	b       branch_207873c

branch_207852c: @ 207852c :thumb
	add     r0, #0x8
	cmp     r2, #0x3
	bhi     branch_2078622
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x207853e

Jumppoints_207853e:
.hword branch_2078546 - Jumppoints_207853e - 2
.hword branch_207854c - Jumppoints_207853e - 2
.hword branch_2078552 - Jumppoints_207853e - 2
.hword branch_2078556 - Jumppoints_207853e - 2
.thumb
branch_2078546: @ 2078546 :thumb
	mov     r1, r0
	add     r1, #0x20
	b       branch_207873c

branch_207854c: @ 207854c :thumb
	mov     r1, r0
	add     r1, #0x60
	b       branch_207873c

branch_2078552: @ 2078552 :thumb
	mov     r1, r0
	b       branch_207873c

branch_2078556: @ 2078556 :thumb
	mov     r1, r0
	add     r1, #0x40
	b       branch_207873c

branch_207855c: @ 207855c :thumb
	add     r0, #0x8
	cmp     r2, #0x3
	bhi     branch_2078622
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x207856e

Jumppoints_207856e:
.hword branch_2078576 - Jumppoints_207856e - 2
.hword branch_207857c - Jumppoints_207856e - 2
.hword branch_2078582 - Jumppoints_207856e - 2
.hword branch_2078586 - Jumppoints_207856e - 2
.thumb
branch_2078576: @ 2078576 :thumb
	mov     r1, r0
	add     r1, #0x40
	b       branch_207873c

branch_207857c: @ 207857c :thumb
	mov     r1, r0
	add     r1, #0x20
	b       branch_207873c

branch_2078582: @ 2078582 :thumb
	mov     r1, r0
	b       branch_207873c

branch_2078586: @ 2078586 :thumb
	mov     r1, r0
	add     r1, #0x60
	b       branch_207873c

branch_207858c: @ 207858c :thumb
	add     r0, #0x8
	cmp     r2, #0x3
	bhi     branch_2078622
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x207859e

Jumppoints_207859e:
.hword branch_20785a6 - Jumppoints_207859e - 2
.hword branch_20785ac - Jumppoints_207859e - 2
.hword branch_20785b2 - Jumppoints_207859e - 2
.hword branch_20785b6 - Jumppoints_207859e - 2
.thumb
branch_20785a6: @ 20785a6 :thumb
	mov     r1, r0
	add     r1, #0x60
	b       branch_207873c

branch_20785ac: @ 20785ac :thumb
	mov     r1, r0
	add     r1, #0x20
	b       branch_207873c

branch_20785b2: @ 20785b2 :thumb
	mov     r1, r0
	b       branch_207873c

branch_20785b6: @ 20785b6 :thumb
	mov     r1, r0
	add     r1, #0x40
	b       branch_207873c

branch_20785bc: @ 20785bc :thumb
	add     r0, #0x8
	cmp     r2, #0x3
	bhi     branch_2078622
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x20785ce

Jumppoints_20785ce:
.hword branch_20785d6 - Jumppoints_20785ce - 2
.hword branch_20785dc - Jumppoints_20785ce - 2
.hword branch_20785e2 - Jumppoints_20785ce - 2
.hword branch_20785e6 - Jumppoints_20785ce - 2
.thumb
branch_20785d6: @ 20785d6 :thumb
	mov     r1, r0
	add     r1, #0x40
	b       branch_207873c

branch_20785dc: @ 20785dc :thumb
	mov     r1, r0
	add     r1, #0x60
	b       branch_207873c

branch_20785e2: @ 20785e2 :thumb
	mov     r1, r0
	b       branch_207873c

branch_20785e6: @ 20785e6 :thumb
	mov     r1, r0
	add     r1, #0x20
	b       branch_207873c

branch_20785ec: @ 20785ec :thumb
	add     r0, #0x8
	cmp     r2, #0x3
	bhi     branch_2078622
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x20785fe

Jumppoints_20785fe:
.hword branch_2078606 - Jumppoints_20785fe - 2
.hword branch_207860c - Jumppoints_20785fe - 2
.hword branch_2078612 - Jumppoints_20785fe - 2
.hword branch_2078616 - Jumppoints_20785fe - 2
.thumb
branch_2078606: @ 2078606 :thumb
	mov     r1, r0
	add     r1, #0x60
	b       branch_207873c

branch_207860c: @ 207860c :thumb
	mov     r1, r0
	add     r1, #0x40
	b       branch_207873c

branch_2078612: @ 2078612 :thumb
	mov     r1, r0
	b       branch_207873c

branch_2078616: @ 2078616 :thumb
	mov     r1, r0
	add     r1, #0x20
	b       branch_207873c

branch_207861c: @ 207861c :thumb
	add     r0, #0x8
	cmp     r2, #0x3
	bls     branch_2078624
branch_2078622: @ 2078622 :thumb
	b       branch_207873c

branch_2078624: @ 2078624 :thumb
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x2078630

Jumppoints_2078630:
.hword branch_2078638 - Jumppoints_2078630 - 2
.hword branch_207863e - Jumppoints_2078630 - 2
.hword branch_2078644 - Jumppoints_2078630 - 2
.hword branch_207864a - Jumppoints_2078630 - 2
.thumb
branch_2078638: @ 2078638 :thumb
	mov     r1, r0
	add     r1, #0x20
	b       branch_207873c

branch_207863e: @ 207863e :thumb
	mov     r1, r0
	add     r1, #0x40
	b       branch_207873c

branch_2078644: @ 2078644 :thumb
	mov     r1, r0
	add     r1, #0x60
	b       branch_207873c

branch_207864a: @ 207864a :thumb
	mov     r1, r0
	b       branch_207873c

branch_207864e: @ 207864e :thumb
	add     r0, #0x8
	cmp     r2, #0x3
	bhi     branch_207873c
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x2078660

Jumppoints_2078660:
.hword branch_2078668 - Jumppoints_2078660 - 2
.hword branch_207866e - Jumppoints_2078660 - 2
.hword branch_2078674 - Jumppoints_2078660 - 2
.hword branch_207867a - Jumppoints_2078660 - 2
.thumb
branch_2078668: @ 2078668 :thumb
	mov     r1, r0
	add     r1, #0x20
	b       branch_207873c

branch_207866e: @ 207866e :thumb
	mov     r1, r0
	add     r1, #0x60
	b       branch_207873c

branch_2078674: @ 2078674 :thumb
	mov     r1, r0
	add     r1, #0x40
	b       branch_207873c

branch_207867a: @ 207867a :thumb
	mov     r1, r0
	b       branch_207873c

branch_207867e: @ 207867e :thumb
	add     r0, #0x8
	cmp     r2, #0x3
	bhi     branch_207873c
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x2078690

Jumppoints_2078690:
.hword branch_2078698 - Jumppoints_2078690 - 2
.hword branch_207869e - Jumppoints_2078690 - 2
.hword branch_20786a4 - Jumppoints_2078690 - 2
.hword branch_20786aa - Jumppoints_2078690 - 2
.thumb
branch_2078698: @ 2078698 :thumb
	mov     r1, r0
	add     r1, #0x40
	b       branch_207873c

branch_207869e: @ 207869e :thumb
	mov     r1, r0
	add     r1, #0x20
	b       branch_207873c

branch_20786a4: @ 20786a4 :thumb
	mov     r1, r0
	add     r1, #0x60
	b       branch_207873c

branch_20786aa: @ 20786aa :thumb
	mov     r1, r0
	b       branch_207873c

branch_20786ae: @ 20786ae :thumb
	add     r0, #0x8
	cmp     r2, #0x3
	bhi     branch_207873c
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x20786c0

Jumppoints_20786c0:
.hword branch_20786c8 - Jumppoints_20786c0 - 2
.hword branch_20786ce - Jumppoints_20786c0 - 2
.hword branch_20786d4 - Jumppoints_20786c0 - 2
.hword branch_20786da - Jumppoints_20786c0 - 2
.thumb
branch_20786c8: @ 20786c8 :thumb
	mov     r1, r0
	add     r1, #0x60
	b       branch_207873c

branch_20786ce: @ 20786ce :thumb
	mov     r1, r0
	add     r1, #0x20
	b       branch_207873c

branch_20786d4: @ 20786d4 :thumb
	mov     r1, r0
	add     r1, #0x40
	b       branch_207873c

branch_20786da: @ 20786da :thumb
	mov     r1, r0
	b       branch_207873c

branch_20786de: @ 20786de :thumb
	add     r0, #0x8
	cmp     r2, #0x3
	bhi     branch_207873c
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x20786f0

Jumppoints_20786f0:
.hword branch_20786f8 - Jumppoints_20786f0 - 2
.hword branch_20786fe - Jumppoints_20786f0 - 2
.hword branch_2078704 - Jumppoints_20786f0 - 2
.hword branch_207870a - Jumppoints_20786f0 - 2
.thumb
branch_20786f8: @ 20786f8 :thumb
	mov     r1, r0
	add     r1, #0x40
	b       branch_207873c

branch_20786fe: @ 20786fe :thumb
	mov     r1, r0
	add     r1, #0x60
	b       branch_207873c

branch_2078704: @ 2078704 :thumb
	mov     r1, r0
	add     r1, #0x20
	b       branch_207873c

branch_207870a: @ 207870a :thumb
	mov     r1, r0
	b       branch_207873c

branch_207870e: @ 207870e :thumb
	add     r0, #0x8
	cmp     r2, #0x3
	bhi     branch_207873c
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x2078720

Jumppoints_2078720:
.hword branch_2078728 - Jumppoints_2078720 - 2
.hword branch_207872e - Jumppoints_2078720 - 2
.hword branch_2078734 - Jumppoints_2078720 - 2
.hword branch_207873a - Jumppoints_2078720 - 2
.thumb
branch_2078728: @ 2078728 :thumb
	mov     r1, r0
	add     r1, #0x60
	b       branch_207873c

branch_207872e: @ 207872e :thumb
	mov     r1, r0
	add     r1, #0x40
	b       branch_207873c

branch_2078734: @ 2078734 :thumb
	mov     r1, r0
	add     r1, #0x20
	b       branch_207873c

branch_207873a: @ 207873a :thumb
	mov     r1, r0
branch_207873c: @ 207873c :thumb
	mov     r0, r1
	pop     {r3,pc}
thumb_func_end GetPkmnDataBlockAdress


.thumb
Function_2078740: @ 2078740 :thumb
	ldr     r2, =0x1df
	cmp     r0, r2
	bgt     branch_2078764
	bge     branch_20787b8
	mov     r3, r2
	sub     r3, #0x5d
	cmp     r0, r3
	bgt     branch_207875a
	mov     r3, r2
	sub     r3, #0x5d
	cmp     r0, r3
	beq     branch_2078780
	bx      lr

branch_207875a: @ 207875a :thumb
	mov     r3, r2
	sub     r3, #0x42
	cmp     r0, r3
	beq     branch_207878e
	bx      lr

branch_2078764: @ 2078764 :thumb
	mov     r3, r2
	add     r3, #0x8
	cmp     r0, r3
	bgt     branch_2078776
	mov     r3, r2
	add     r3, #0x8
	cmp     r0, r3
	beq     branch_207879c
	bx      lr

branch_2078776: @ 2078776 :thumb
	mov     r3, r2
	add     r3, #0xd
	cmp     r0, r3
	beq     branch_20787aa
	bx      lr

branch_2078780: @ 2078780 :thumb
	cmp     r1, #0x0
	beq     branch_20787c4
	cmp     r1, #0x3
	bgt     branch_20787c4
	add     r2, #0x10
	add     r0, r1, r2
	bx      lr

branch_207878e: @ 207878e :thumb
	cmp     r1, #0x0
	beq     branch_20787c4
	cmp     r1, #0x2
	bgt     branch_20787c4
	add     r2, #0x13
	add     r0, r1, r2
	bx      lr

branch_207879c: @ 207879c :thumb
	cmp     r1, #0x0
	beq     branch_20787c4
	cmp     r1, #0x1
	bgt     branch_20787c4
	add     r2, #0x15
	add     r0, r1, r2
	bx      lr

branch_20787aa: @ 20787aa :thumb
	cmp     r1, #0x0
	beq     branch_20787c4
	cmp     r1, #0x1
	bgt     branch_20787c4
	add     r2, #0x16
	add     r0, r1, r2
	bx      lr

branch_20787b8: @ 20787b8 :thumb
	cmp     r1, #0x0
	beq     branch_20787c4
	cmp     r1, #0x5
	bgt     branch_20787c4
	add     r2, #0x17
	add     r0, r1, r2
branch_20787c4: @ 20787c4 :thumb
	bx      lr
@ 0x20787c6

.align 2
.pool



thumb_func_start Function_20787cc
Function_20787cc: @ 20787cc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x1
	cmp     r5, #0x20
	blt     branch_20787da
	bl      ErrorHandling
branch_20787da: @ 20787da :thumb
	mov     r0, #0x0
	cmp     r5, #0x0
	ble     branch_20787e8
branch_20787e0: @ 20787e0 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r4, r4, #1
	cmp     r0, r5
	blt     branch_20787e0
branch_20787e8: @ 20787e8 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
thumb_func_end Function_20787cc


thumb_func_start Function_20787ec
Function_20787ec: @ 20787ec :thumb
	mov     r3, #0x1
	mov     r2, #0x0
branch_20787f0: @ 20787f0 :thumb
	mov     r1, r0
	tst     r1, r3
	bne     branch_20787fe
	.hword  0x1c52 @ add r2, r2, #0x1
	lsl     r3, r3, #1
	cmp     r2, #0x20
	blt     branch_20787f0
branch_20787fe: @ 20787fe :thumb
	mov     r0, r2
	bx      lr
thumb_func_end Function_20787ec


.align 2, 0
.thumb
Function_2078804: @ 2078804 :thumb
	ldr     r3, =Unknown_20f05be
	mov     r2, #0x0
branch_2078808: @ 2078808 :thumb
	ldrh    r1, [r3, #0x0]
	cmp     r0, r1
	bne     branch_2078812
	mov     r0, #0x1
	bx      lr

branch_2078812: @ 2078812 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r2, #0x12
	blo     branch_2078808
	mov     r0, #0x0
	bx      lr
@ 0x207881e

.align 2
.pool



.thumb
Function_2078824: @ 2078824 :thumb
	cmp     r0, #0x12
	blo     branch_207882a
	mov     r0, #0x0
branch_207882a: @ 207882a :thumb
	lsl     r1, r0, #1
	ldr     r0, =Unknown_20f05be
	ldrh    r0, [r0, r1]
	bx      lr
@ 0x2078832

.align 2
.pool



.thumb
Function_2078838: @ 2078838 :thumb
	push    {r3,lr}
	mov     r1, #PKMNDATA_SPECIES
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_2078804
	pop     {r3,pc}
@ 0x207884c


.thumb
Function_207884c: @ 207884c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r6, r2
	bl      GetTrainerID
	str     r0, [sp, #0x0]

	mov     r0, r5
	mov     r1, #PKMNDATA_OTID
	mov     r2, #0x0
	bl      GetPkmnData2
	str     r0, [sp, #0x4]

	mov     r0, r4
	bl      GetGender
	str     r0, [sp, #0x8]

	mov     r0, r5
	mov     r1, #0x9d
	mov     r2, #0x0
	bl      GetPkmnData2
	str     r0, [sp, #0xc]

	mov     r0, r4
	mov     r1, r6
	bl      Function_2025f04
	mov     r7, r0
	mov     r0, #0x8
	mov     r1, r6
	bl      Function_2023790
	mov     r6, r0

	mov     r0, r5
	mov     r1, #0x91
	mov     r2, r6
	mov     r4, #0x0
	bl      GetPkmnData2

	ldr     r1, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	cmp     r1, r0
	bne     branch_20788bc
	ldr     r1, [sp, #0x8]
	ldr     r0, [sp, #0xc]
	cmp     r1, r0
	bne     branch_20788bc
	mov     r0, r7
	mov     r1, r6
	bl      Function_2023be0
	cmp     r0, #0x0
	bne     branch_20788bc
	mov     r4, #0x1
branch_20788bc: @ 20788bc :thumb
	mov     r0, r6
	bl      Function_20237bc
	mov     r0, r7
	bl      Function_20237bc
	mov     r0, r4
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x20788ce


.align 2, 0
.thumb
.globl Function_20788d0
Function_20788d0: @ 20788d0 :thumb
	push    {r3,lr}
	cmp     r0, #0x3f
	bgt     branch_20788e8
	bge     branch_2078920
	cmp     r0, #0x1
	bgt     branch_207892c
	cmp     r0, #0x0
	blt     branch_207892c
	beq     branch_207893a
	cmp     r0, #0x1
	beq     branch_207893a
	b       branch_207892c

branch_20788e8: @ 20788e8 :thumb
	cmp     r0, #0x5a
	bgt     branch_20788f0
	beq     branch_2078924
	b       branch_207892c

branch_20788f0: @ 20788f0 :thumb
	mov     r1, r0
	sub     r1, #0x5b
	cmp     r1, #0xd
	bhi     branch_207892c
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2078904

Jumppoints_2078904:
.hword branch_2078924 - Jumppoints_2078904 - 2
.hword branch_2078924 - Jumppoints_2078904 - 2
.hword branch_2078924 - Jumppoints_2078904 - 2
.hword branch_2078924 - Jumppoints_2078904 - 2
.hword branch_207892c - Jumppoints_2078904 - 2
.hword branch_207892c - Jumppoints_2078904 - 2
.hword branch_207892c - Jumppoints_2078904 - 2
.hword branch_207892c - Jumppoints_2078904 - 2
.hword branch_207892c - Jumppoints_2078904 - 2
.hword branch_207892c - Jumppoints_2078904 - 2
.hword branch_207892c - Jumppoints_2078904 - 2
.hword branch_207892c - Jumppoints_2078904 - 2
.hword branch_2078928 - Jumppoints_2078904 - 2
.hword branch_2078928 - Jumppoints_2078904 - 2
.thumb
branch_2078920: @ 2078920 :thumb
	mov     r0, #0x2
	pop     {r3,pc}

branch_2078924: @ 2078924 :thumb
	sub     r0, #0x57
	pop     {r3,pc}

branch_2078928: @ 2078928 :thumb
	sub     r0, #0x5f
	pop     {r3,pc}

branch_207892c: @ 207892c :thumb
	bl      Function_20793ac
	cmp     r0, #0x1
	bne     branch_2078938
	mov     r0, #0x1
	pop     {r3,pc}

branch_2078938: @ 2078938 :thumb
	mov     r0, #0x0
branch_207893a: @ 207893a :thumb
	pop     {r3,pc}
@ 0x207893c


.thumb
Function_207893c: @ 207893c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x1c
	mov     r4, r0
	mov     r0, #0x0
	add     r1, sp, #0x0
	strb    r0, [r1, #0x0]
	add     r1, sp, #0x0
	add     r1, #0x1
	mov     r2, #0x18
	blx     MIi_CpuClearFast
	mov     r0, r4
	mov     r1, #0xa2
	add     r2, sp, #0x0
	bl      SetPkmnData
	add     r2, sp, #0x0
	mov     r0, r4
	mov     r1, #0xab
	add     r2, #0x1
	bl      SetPkmnData
	add     sp, #0x1c
	pop     {r3,r4,pc}
@ 0x207896c


.thumb
Function_207896c: @ 207896c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	bl      InitEncryptPkmnData_Part1
	mov     r4, #0x0
	str     r0, [sp, #0x0]
	mov     r7, r4
	add     r6, sp, #0x4
branch_207897e: @ 207897e :thumb
	mov     r1, r4
	mov     r0, r5
	add     r1, #0x36
	mov     r2, r7
	bl      GetPkmnData2
	cmp     r0, #0x0
	beq     branch_20789a8
	mov     r1, r4
	mov     r0, r5
	add     r1, #0x42
	mov     r2, #0x0
	bl      GetPkmnData2
	mov     r1, r4
	strb    r0, [r6, #0x0]
	mov     r0, r5
	add     r1, #0x3a
	add     r2, sp, #0x4
	bl      SetPkmnData2
branch_20789a8: @ 20789a8 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x4
	blt     branch_207897e
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	bl      InitEncryptPkmnData_Part1Again
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x20789ba


.align 2, 0
.thumb
.globl Function_20789bc
Function_20789bc: @ 20789bc :thumb
	push    {r4-r6,lr}
	add     sp, #-0x60
	mov     r4, r1
	mov     r5, #0x1
	mov     r1, r3
	mov     r6, r2
	tst     r1, r5
	beq     branch_20789ce
	mov     r5, #0x0
branch_20789ce: @ 20789ce :thumb
	add     r1, sp, #0x4
	str     r1, [sp, #0x0]
	mov     r3, #0x59
	mov     r2, r6
	mov     r1, #0x0
	mul     r2, r3
	bl      Function_2006dc8
	mov     r0, #0x2b
	add     r1, sp, #0x4
	mul     r0, r5
	add     r0, r1, r0
	.hword  0x1cc0 @ add r0, r0, #0x3
	mov     r1, r4
	mov     r2, #0x28
	blx     MI_CpuCopy8
	add     sp, #0x60
	pop     {r4-r6,pc}
@ 0x20789f4


.thumb
.globl Function_20789f4
Function_20789f4: @ 20789f4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x64
	mov     r5, r1
	ldr     r1, [sp, #0x78]
	mov     r6, r2
	mov     r2, r3
	cmp     r1, #0x2
	beq     branch_2078a08
	mov     r4, #0x1
	b       branch_2078a0a

branch_2078a08: @ 2078a08 :thumb
	mov     r4, #0x0
branch_2078a0a: @ 2078a0a :thumb
	add     r1, sp, #0x8
	add     r1, #0x2
	str     r1, [sp, #0x0]
	mov     r7, #0x59
	mov     r3, r2
	mul     r3, r7
	mov     r2, r3
	mov     r1, #0x0
	mov     r3, r7
	bl      Function_2006dc8
	mov     r0, #0x2b
	add     r1, sp, #0x8
	ldr     r3, [sp, #0x80]
	mul     r0, r4
	add     r1, #0x3
	ldrb    r2, [r1, r0]
	add     r1, sp, #0x4
	lsl     r3, r3, #24
	strh    r2, [r1, #0x0]
	add     r2, sp, #0xc
	ldrb    r0, [r2, r0]
	add     r2, sp, #0x4
	lsr     r3, r3, #24
	strh    r0, [r1, #0x2]
	ldr     r0, [sp, #0x7c]
	strb    r0, [r1, #0x4]
	mov     r0, r5
	mov     r1, r6
	bl      Function_2015fcc
	add     sp, #0x64
	pop     {r4-r7,pc}
@ 0x2078a4c


.thumb
.globl Function_2078a4c
Function_2078a4c: @ 2078a4c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x60
	mov     r4, r1
	mov     r5, #0x1
	mov     r1, r3
	mov     r6, r2
	tst     r1, r5
	beq     branch_2078a5e
	mov     r5, #0x0
branch_2078a5e: @ 2078a5e :thumb
	add     r1, sp, #0x4
	str     r1, [sp, #0x0]
	mov     r3, #0x59
	mov     r2, r6
	mov     r1, #0x0
	mul     r2, r3
	bl      Function_2006dc8
	mov     r0, #0x2b
	mov     r1, r5
	mul     r1, r0
	add     r0, sp, #0x4
	ldrb    r0, [r0, r1]
	strb    r0, [r4, #0x0]
	add     sp, #0x60
	pop     {r4-r6,pc}
@ 0x2078a7e


.align 2, 0
.thumb
.globl Function_2078a80
Function_2078a80: @ 2078a80 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x60
	mov     r3, #0x59
	mov     r5, r2
	mov     r4, r1
	add     r1, sp, #0x4
	mul     r5, r3
	str     r1, [sp, #0x0]
	mov     r1, #0x0
	mov     r2, r5
	bl      Function_2006dc8
	add     r1, sp, #0x44
	mov     r0, #0x16
	ldsb    r0, [r1, r0]
	strb    r0, [r4, #0x0]
	add     sp, #0x60
	pop     {r3-r5,pc}
@ 0x2078aa4


.thumb
.globl Function_2078aa4
Function_2078aa4: @ 2078aa4 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x60
	mov     r3, #0x59
	mov     r5, r2
	mov     r4, r1

	add     r1, sp, #0x4
	mul     r5, r3
	str     r1, [sp, #0x0]

	mov     r1, #0x0
	mov     r2, r5
	bl      Function_2006dc8

	add     r1, sp, #0x44
	mov     r0, #0x17
	ldsb    r0, [r1, r0]
	strb    r0, [r4, #0x0]

	add     sp, #0x60
	pop     {r3-r5,pc}
@ 0x2078ac8


.thumb
.globl Function_2078ac8
Function_2078ac8: @ 2078ac8 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x60
	mov     r3, #0x59
	mov     r5, r2
	mov     r4, r1

	add     r1, sp, #0x4
	mul     r5, r3
	str     r1, [sp, #0x0]

	mov     r1, #0x0
	mov     r2, r5
	bl      Function_2006dc8

	add     r0, sp, #0x44
	ldrb    r0, [r0, #0x18]
	strb    r0, [r4, #0x0]

	add     sp, #0x60
	pop     {r3-r5,pc}
@ 0x2078aea


thumb_func_start SetPokeballSeal
SetPokeballSeal: @ 2078aec :thumb
	push    {r4-r6,lr}
	add     sp, #-0x20
	mov     r5, r0
	mov     r4, r1
	cmp     r5, #0x0
	bne     branch_2078afe

	add     sp, #0x20
	mov     r0, #0x0
	pop     {r4-r6,pc}

branch_2078afe: @ 2078afe :thumb
	mov     r0, #0x98
	mov     r1, r2
	bl      LoadFromNARC_8

	mov     r1, #0x1
	.hword  0x1e6d @ sub r5, r5, #0x1
	str     r1, [sp, #0x4]

	add     r1, sp, #0x8
	str     r1, [sp, #0x0]

	mov     r3, #0x18
	mov     r2, r5
	mov     r1, #0x0
	mul     r2, r3
	mov     r6, r0
	bl      Function_2006dc8

	mov     r0, r4
	mov     r1, #PKMNDATA_CAPSULEINDEXSEALS
	add     r2, sp, #0x4
	bl      SetPkmnData

	mov     r0, r4
	mov     r1, #PKMNDATA_SEALCOORDINATES
	add     r2, sp, #0x8
	bl      SetPkmnData

	mov     r0, r6
	bl      Call_FS_CloseFile

	mov     r0, #0x1
	add     sp, #0x20
	pop     {r4-r6,pc}
thumb_func_end SetPokeballSeal


.align 2, 0
.thumb
Function_2078b40: @ 2078b40 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	str     r0, [sp, #0x0]
	ldrh    r0, [r0, #0x4]
	mov     r4, r1
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	bne     branch_2078b6c

	ldr     r2, [sp, #0x0]
	ldr     r0, [sp, #0x0]
	ldr     r2, [r2, #0x0]
	add     r0, #PkmnData_Offset2
	mov     r1, #PkmnData_Size2
	bl      Call_DecryptPkmnData3

	ldr     r2, [sp, #0x0]
	ldr     r0, [sp, #0x0]
	ldrh    r2, [r2, #0x6]
	add     r0, #PkmnData_Offset1
	mov     r1, #PkmnData_Size1
	bl      Call_DecryptPkmnData3
branch_2078b6c: @ 2078b6c :thumb
	ldr     r0, [sp, #0x0]
	bl      Function_2076b10_Dummy
	mov     r6, r0

	ldr     r1, [r6, #0x0]
	mov     r2, #0x0
	bl      GetPkmnDataBlockAdress
	mov     r5, r0

	ldr     r1, [r6, #0x0]
	mov     r0, r6
	mov     r2, #0x1
	bl      GetPkmnDataBlockAdress
	str     r0, [sp, #0x4]

	ldr     r1, [r6, #0x0]
	mov     r0, r6
	mov     r2, #0x2
	bl      GetPkmnDataBlockAdress
	mov     r7, r0

	ldr     r1, [r6, #0x0]
	mov     r0, r6
	mov     r2, #0x3
	bl      GetPkmnDataBlockAdress
	mov     r12, r0

	ldr     r0, [r6, #0x0]
	ldr     r3, [sp, #0x4]
	str     r0, [r4, #0x0]
	ldrh    r1, [r4, #0x4]
	mov     r0, #0x1
	mov     r2, #0x0
	bic     r1, r0
	strh    r1, [r4, #0x4]
	ldrh    r1, [r4, #0x4]
	mov     r0, #0x2
	bic     r1, r0
	strh    r1, [r4, #0x4]
	ldrh    r0, [r4, #0x4]
	mov     r1, #0x4
	bic     r0, r1
	ldrh    r1, [r6, #0x4]
	lsl     r1, r1, #29
	lsr     r1, r1, #31
	lsl     r1, r1, #31
	lsr     r1, r1, #29
	orr     r0, r1
	strh    r0, [r4, #0x4]
	ldrh    r0, [r5, #0x0]
	strh    r0, [r4, #0x6]
	ldrh    r0, [r5, #0x2]
	strh    r0, [r4, #0x8]
	ldr     r0, [r5, #0x4]
	str     r0, [r4, #0xc]
	ldr     r0, [r5, #0x8]
	str     r0, [r4, #0x10]
	ldrb    r0, [r5, #0xc]
	strb    r0, [r4, #0x14]
	ldrb    r0, [r5, #0xd]
	strb    r0, [r4, #0x15]
	ldrb    r0, [r5, #0x10]
	strb    r0, [r4, #0x16]
	ldrb    r0, [r5, #0x11]
	strb    r0, [r4, #0x17]
	ldrb    r0, [r5, #0x12]
	strb    r0, [r4, #0x18]
	ldrb    r0, [r5, #0x13]
	strb    r0, [r4, #0x19]
	ldrb    r0, [r5, #0x14]
	strb    r0, [r4, #0x1a]
	ldrb    r0, [r5, #0x15]
	strb    r0, [r4, #0x1b]
	ldrb    r1, [r5, #0xf]
	mov     r0, r4
	add     r0, #0x59
	strb    r1, [r0, #0x0]
	mov     r5, r4
branch_2078c08: @ 2078c08 :thumb
	ldrh    r0, [r3, #0x0]
	.hword  0x1c9b @ add r3, r3, #0x2
	strh    r0, [r5, #0x1c]
	ldr     r0, [sp, #0x4]
	.hword  0x1cad @ add r5, r5, #0x2
	add     r6, r0, r2
	add     r0, r4, r2
	ldrb    r1, [r6, #0x8]
	add     r0, #0x24
	strb    r1, [r0, #0x0]
	add     r0, r4, r2
	ldrb    r1, [r6, #0xc]
	add     r0, #0x28
	.hword  0x1c52 @ add r2, r2, #0x1
	strb    r1, [r0, #0x0]
	cmp     r2, #0x4
	blt     branch_2078c08
	ldr     r0, [r4, #0x2c]
	mov     r1, #0x1f
	bic     r0, r1
	ldr     r1, [sp, #0x4]
	ldr     r1, [r1, #0x10]
	lsl     r1, r1, #27
	lsr     r2, r1, #27
	mov     r1, #0x1f
	and     r1, r2
	orr     r1, r0

	ldr     r0, =0xfffffc1f
	str     r1, [r4, #0x2c]
	and     r0, r1
	ldr     r1, [sp, #0x4]
	mov     r2, #0x1
	ldr     r1, [r1, #0x10]
	lsl     r1, r1, #22
	lsr     r1, r1, #27
	lsl     r1, r1, #27
	lsr     r1, r1, #22
	orr     r1, r0

	ldr     r0, =0xffff83ff
	str     r1, [r4, #0x2c]
	and     r0, r1
	ldr     r1, [sp, #0x4]
	ldr     r1, [r1, #0x10]
	lsl     r1, r1, #17
	lsr     r1, r1, #27
	lsl     r1, r1, #27
	lsr     r1, r1, #17
	orr     r1, r0

	ldr     r0, =0xfff07fff
	str     r1, [r4, #0x2c]
	and     r0, r1
	ldr     r1, [sp, #0x4]
	ldr     r1, [r1, #0x10]
	lsl     r1, r1, #12
	lsr     r1, r1, #27
	lsl     r1, r1, #27
	lsr     r1, r1, #12
	orr     r1, r0

	ldr     r0, =0xfe0fffff
	str     r1, [r4, #0x2c]
	and     r0, r1
	ldr     r1, [sp, #0x4]
	ldr     r1, [r1, #0x10]
	lsl     r1, r1, #7
	lsr     r1, r1, #27
	lsl     r1, r1, #27
	lsr     r1, r1, #7
	orr     r1, r0

	ldr     r0, =0xc1ffffff
	str     r1, [r4, #0x2c]
	and     r0, r1
	ldr     r1, [sp, #0x4]
	ldr     r1, [r1, #0x10]
	lsl     r1, r1, #2
	lsr     r1, r1, #27
	lsl     r1, r1, #27
	lsr     r1, r1, #2
	orr     r1, r0

	ldr     r0, =0xbfffffff
	str     r1, [r4, #0x2c]
	and     r0, r1
	ldr     r1, [sp, #0x4]
	ldr     r1, [r1, #0x10]
	lsl     r1, r1, #1
	lsr     r1, r1, #31
	lsl     r1, r1, #31
	lsr     r1, r1, #1
	orr     r1, r0

	ldr     r0, =0x7fffffff
	str     r1, [r4, #0x2c]
	and     r0, r1
	ldr     r1, [sp, #0x4]
	ldr     r1, [r1, #0x10]
	lsr     r1, r1, #31
	lsl     r1, r1, #31
	orr     r0, r1

	str     r0, [r4, #0x2c]
	mov     r0, r4
	add     r0, #0x30
	ldrb    r0, [r0, #0x0]
	mov     r1, r4
	add     r1, #0x30
	bic     r0, r2
	ldr     r2, [sp, #0x4]
	ldrb    r2, [r2, #0x18]
	lsl     r2, r2, #31
	lsr     r3, r2, #31
	mov     r2, #0x1
	and     r2, r3
	orr     r2, r0
	mov     r0, r4
	add     r0, #0x30
	strb    r2, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x30
	ldrb    r0, [r0, #0x0]
	mov     r2, #0x6
	bic     r0, r2
	ldr     r2, [sp, #0x4]
	ldrb    r2, [r2, #0x18]
	lsl     r2, r2, #29
	lsr     r2, r2, #30
	lsl     r2, r2, #30
	lsr     r2, r2, #29
	orr     r2, r0
	mov     r0, r4
	add     r0, #0x30
	strb    r2, [r0, #0x0]
	ldrb    r0, [r1, #0x0]
	mov     r2, #0xf8
	bic     r0, r2
	ldr     r2, [sp, #0x4]
	ldrb    r2, [r2, #0x18]
	lsl     r2, r2, #24
	lsr     r2, r2, #27
	lsl     r2, r2, #27
	lsr     r2, r2, #24
	orr     r0, r2
	strb    r0, [r1, #0x0]
	mov     r2, #0x0
	mov     r1, r4
branch_2078d22: @ 2078d22 :thumb
	ldrh    r0, [r7, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1cbf @ add r7, r7, #0x2
	strh    r0, [r1, #0x32]
	.hword  0x1c89 @ add r1, r1, #0x2
	cmp     r2, #0xb
	blt     branch_2078d22
	mov     r5, #0x0
	mov     r2, r12
	mov     r3, r4
branch_2078d36: @ 2078d36 :thumb
	ldrh    r1, [r2, #0x0]
	mov     r0, r3
	add     r0, #0x48
	.hword  0x1c6d @ add r5, r5, #0x1
	strh    r1, [r0, #0x0]
	.hword  0x1c92 @ add r2, r2, #0x2
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r5, #0x8
	blt     branch_2078d36
	mov     r0, r12
	ldrb    r1, [r0, #0x1b]
	mov     r0, r4
	add     r0, #0x58
	strb    r1, [r0, #0x0]
	ldr     r0, [sp, #0x0]
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	str     r0, [r4, #0x5c]
	ldr     r0, [sp, #0x0]
	add     r0, #0x8c
	ldrb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x60
	strb    r1, [r0, #0x0]
	ldr     r0, [sp, #0x0]
	add     r0, #0x8d
	ldrb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x61
	strb    r1, [r0, #0x0]
	ldr     r0, [sp, #0x0]
	add     r0, #0x8e
	ldrh    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x62
	strh    r1, [r0, #0x0]
	ldr     r0, [sp, #0x0]
	add     r0, #0x90
	ldrh    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x64
	strh    r1, [r0, #0x0]
	ldr     r0, [sp, #0x0]
	add     r0, #0x92
	ldrh    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x66
	strh    r1, [r0, #0x0]
	ldr     r0, [sp, #0x0]
	add     r0, #0x94
	ldrh    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x68
	strh    r1, [r0, #0x0]
	ldr     r0, [sp, #0x0]
	add     r0, #0x96
	ldrh    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x6a
	strh    r1, [r0, #0x0]
	ldr     r0, [sp, #0x0]
	add     r0, #0x98
	ldrh    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x6c
	strh    r1, [r0, #0x0]
	ldr     r0, [sp, #0x0]
	add     r4, #0x6e
	add     r0, #0x9a
	ldrh    r0, [r0, #0x0]
	strh    r0, [r4, #0x0]
	ldr     r0, [sp, #0x0]
	ldrh    r0, [r0, #0x4]
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	bne     branch_2078dea

	ldr     r2, [sp, #0x0]
	ldr     r0, [sp, #0x0]
	ldr     r2, [r2, #0x0]
	add     r0, #PkmnData_Offset2
	mov     r1, #PkmnData_Size2
	bl      Call_DecryptPkmnData2

	ldr     r2, [sp, #0x0]
	ldr     r0, [sp, #0x0]
	ldrh    r2, [r2, #0x6]
	add     r0, #PkmnData_Offset1
	mov     r1, #PkmnData_Size1
	bl      Call_DecryptPkmnData2
branch_2078dea: @ 2078dea :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2078dee

.align 2
.pool



.thumb
Function_2078e0c: @ 2078e0c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r0

	str     r1, [sp, #0x0]
	mov     r0, #0x0
	mov     r2, #PkmnData_Size
	blx     MIi_CpuClearFast

	ldr     r0, [sp, #0x0]
	bl      Function_2076b10_Dummy

	ldr     r1, [r4, #0x0]
	str     r0, [sp, #0x4]
	mov     r2, #0x0
	bl      GetPkmnDataBlockAdress
	mov     r5, r0

	ldr     r0, [sp, #0x4]
	ldr     r1, [r4, #0x0]
	mov     r2, #0x1
	bl      GetPkmnDataBlockAdress
	mov     r6, r0

	ldr     r0, [sp, #0x4]
	ldr     r1, [r4, #0x0]
	mov     r2, #0x2
	bl      GetPkmnDataBlockAdress
	mov     r7, r0

	ldr     r0, [sp, #0x4]
	ldr     r1, [r4, #0x0]
	mov     r2, #0x3
	bl      GetPkmnDataBlockAdress
	mov     r12, r0

	ldr     r1, [r4, #0x0]
	ldr     r0, [sp, #0x4]
	mov     r2, r4
	str     r1, [r0, #0x0]
	ldrh    r0, [r0, #0x4]
	mov     r1, #0x1
	mov     r3, r6
	bic     r0, r1
	ldr     r1, [sp, #0x4]
	strh    r0, [r1, #0x4]
	mov     r0, r1
	ldrh    r0, [r0, #0x4]
	mov     r1, #0x2
	bic     r0, r1
	ldr     r1, [sp, #0x4]
	strh    r0, [r1, #0x4]
	mov     r0, r1
	ldrh    r0, [r0, #0x4]
	mov     r1, #0x4
	bic     r0, r1
	ldrh    r1, [r4, #0x4]
	lsl     r1, r1, #29
	lsr     r1, r1, #31
	lsl     r1, r1, #31
	lsr     r1, r1, #29
	orr     r1, r0
	ldr     r0, [sp, #0x4]
	strh    r1, [r0, #0x4]
	ldrh    r0, [r4, #0x6]
	mov     r1, #0x0
	strh    r0, [r5, #0x0]
	ldrh    r0, [r4, #0x8]
	strh    r0, [r5, #0x2]
	ldr     r0, [r4, #0xc]
	str     r0, [r5, #0x4]
	ldr     r0, [r4, #0x10]
	str     r0, [r5, #0x8]
	ldrb    r0, [r4, #0x14]
	strb    r0, [r5, #0xc]
	ldrb    r0, [r4, #0x15]
	strb    r0, [r5, #0xd]
	ldrb    r0, [r4, #0x16]
	strb    r0, [r5, #0x10]
	ldrb    r0, [r4, #0x17]
	strb    r0, [r5, #0x11]
	ldrb    r0, [r4, #0x18]
	strb    r0, [r5, #0x12]
	ldrb    r0, [r4, #0x19]
	strb    r0, [r5, #0x13]
	ldrb    r0, [r4, #0x1a]
	strb    r0, [r5, #0x14]
	ldrb    r0, [r4, #0x1b]
	strb    r0, [r5, #0x15]
	mov     r0, r4
	add     r0, #0x59
	ldrb    r0, [r0, #0x0]
	strb    r0, [r5, #0xf]
branch_2078ec4: @ 2078ec4 :thumb
	ldrh    r0, [r2, #0x1c]
	add     r5, r4, r1
	add     r5, #0x24
	strh    r0, [r3, #0x0]
	ldrb    r5, [r5, #0x0]
	add     r0, r6, r1
	.hword  0x1c92 @ add r2, r2, #0x2
	strb    r5, [r0, #0x8]
	add     r5, r4, r1
	add     r5, #0x28
	ldrb    r5, [r5, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1c9b @ add r3, r3, #0x2
	strb    r5, [r0, #0xc]
	cmp     r1, #0x4
	blt     branch_2078ec4
	ldr     r0, [r6, #0x10]
	mov     r1, #0x1f
	bic     r0, r1
	ldr     r1, [r4, #0x2c]
	lsl     r1, r1, #27
	lsr     r2, r1, #27
	mov     r1, #0x1f
	and     r1, r2
	orr     r1, r0

	ldr     r0, =0xfffffc1f
	str     r1, [r6, #0x10]
	and     r0, r1
	ldr     r1, [r4, #0x2c]
	mov     r2, r6
	lsl     r1, r1, #22
	lsr     r1, r1, #27
	lsl     r1, r1, #27
	lsr     r1, r1, #22
	orr     r1, r0

	ldr     r0, =0xffff83ff
	str     r1, [r6, #0x10]
	and     r0, r1
	ldr     r1, [r4, #0x2c]
	add     r2, #0x18
	lsl     r1, r1, #17
	lsr     r1, r1, #27
	lsl     r1, r1, #27
	lsr     r1, r1, #17
	orr     r1, r0
	ldr     r0, =0xfff07fff

	str     r1, [r6, #0x10]
	and     r0, r1
	ldr     r1, [r4, #0x2c]
	lsl     r1, r1, #12
	lsr     r1, r1, #27
	lsl     r1, r1, #27
	lsr     r1, r1, #12
	orr     r1, r0

	ldr     r0, =0xfe0fffff
	str     r1, [r6, #0x10]
	and     r0, r1
	ldr     r1, [r4, #0x2c]
	lsl     r1, r1, #7
	lsr     r1, r1, #27
	lsl     r1, r1, #27
	lsr     r1, r1, #7
	orr     r1, r0

	ldr     r0, =0xc1ffffff
	str     r1, [r6, #0x10]
	and     r0, r1
	ldr     r1, [r4, #0x2c]
	lsl     r1, r1, #2
	lsr     r1, r1, #27
	lsl     r1, r1, #27
	lsr     r1, r1, #2
	orr     r1, r0

	ldr     r0, =0xbfffffff
	str     r1, [r6, #0x10]
	and     r0, r1
	ldr     r1, [r4, #0x2c]
	lsl     r1, r1, #1
	lsr     r1, r1, #31
	lsl     r1, r1, #31
	lsr     r1, r1, #1
	orr     r1, r0

	ldr     r0, =0x7fffffff
	str     r1, [r6, #0x10]
	and     r0, r1
	ldr     r1, [r4, #0x2c]
	lsr     r1, r1, #31
	lsl     r1, r1, #31
	orr     r0, r1

	str     r0, [r6, #0x10]
	ldrb    r3, [r6, #0x18]
	mov     r0, #0x1
	bic     r3, r0
	mov     r0, r4
	add     r0, #0x30
	ldrb    r0, [r0, #0x0]
	lsl     r0, r0, #31
	lsr     r1, r0, #31
	mov     r0, #0x1
	and     r0, r1
	orr     r0, r3
	strb    r0, [r6, #0x18]
	ldrb    r0, [r6, #0x18]
	mov     r1, #0x6
	bic     r0, r1
	mov     r1, r4
	add     r1, #0x30
	ldrb    r1, [r1, #0x0]
	lsl     r1, r1, #29
	lsr     r1, r1, #30
	lsl     r1, r1, #30
	lsr     r1, r1, #29
	orr     r0, r1
	strb    r0, [r6, #0x18]
	ldrb    r0, [r2, #0x0]
	mov     r1, #0xf8
	bic     r0, r1
	mov     r1, r4
	add     r1, #0x30
	ldrb    r1, [r1, #0x0]
	lsl     r1, r1, #24
	lsr     r1, r1, #27
	lsl     r1, r1, #27
	lsr     r1, r1, #24
	orr     r0, r1
	strb    r0, [r2, #0x0]
	mov     r2, #0x0
	mov     r1, r4
branch_2078fc2: @ 2078fc2 :thumb
	ldrh    r0, [r1, #0x32]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c89 @ add r1, r1, #0x2
	strh    r0, [r7, #0x0]
	.hword  0x1cbf @ add r7, r7, #0x2
	cmp     r2, #0xb
	blt     branch_2078fc2
	mov     r3, #0x0
	mov     r1, r4
	mov     r2, r12
branch_2078fd6: @ 2078fd6 :thumb
	mov     r0, r1
	add     r0, #0x48
	ldrh    r0, [r0, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1c89 @ add r1, r1, #0x2
	strh    r0, [r2, #0x0]
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r3, #0x8
	blt     branch_2078fd6
	mov     r0, r4
	add     r0, #0x58
	ldrb    r1, [r0, #0x0]
	mov     r0, r12
	ldr     r2, [sp, #0x0]
	strb    r1, [r0, #0x1b]
	ldr     r0, [sp, #0x0]
	ldr     r1, [r4, #0x5c]
	add     r0, #0x88
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x60
	ldrb    r1, [r0, #0x0]
	ldr     r0, [sp, #0x0]
	add     r0, #0x8c
	strb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x61
	ldrb    r1, [r0, #0x0]
	ldr     r0, [sp, #0x0]
	add     r0, #0x8d
	strb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x62
	ldrh    r1, [r0, #0x0]
	ldr     r0, [sp, #0x0]
	add     r0, #0x8e
	strh    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x64
	ldrh    r1, [r0, #0x0]
	ldr     r0, [sp, #0x0]
	add     r0, #0x90
	strh    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x66
	ldrh    r1, [r0, #0x0]
	ldr     r0, [sp, #0x0]
	add     r0, #0x92
	strh    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x68
	ldrh    r1, [r0, #0x0]
	ldr     r0, [sp, #0x0]
	add     r0, #0x94
	strh    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x6a
	ldrh    r1, [r0, #0x0]
	ldr     r0, [sp, #0x0]
	add     r0, #0x96
	strh    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x6c
	ldrh    r1, [r0, #0x0]
	ldr     r0, [sp, #0x0]
	add     r4, #0x6e
	add     r0, #0x98
	strh    r1, [r0, #0x0]
	ldr     r0, [sp, #0x0]
	ldrh    r1, [r4, #0x0]
	add     r0, #0x9a
	strh    r1, [r0, #0x0]

	ldr     r0, [sp, #0x0]
	ldr     r2, [r2, #0x0]
	add     r0, #PkmnData_Offset2
	mov     r1, #PkmnData_Size2
	bl      Call_DecryptPkmnData2

	ldr     r0, [sp, #0x0]
	mov     r1, #PkmnData_Size1
	add     r0, #PkmnData_Offset1
	bl      CalcPokemonChecksum

	ldr     r1, [sp, #0x0]
	ldr     r2, [sp, #0x0]
	strh    r0, [r1, #0x6]
	mov     r0, r1
	ldrh    r2, [r2, #0x6]
	add     r0, #PkmnData_Offset1
	mov     r1, #PkmnData_Size1
	bl      Call_DecryptPkmnData2

	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2079092

.align 2
.pool

