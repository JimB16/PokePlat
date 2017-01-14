
thumb_func_start GetSizeOfPkmnParty
GetSizeOfPkmnParty: @ 2079fec :thumb
	mov     r0, #0x59
	lsl     r0, r0, #4      @ 0x590
	bx      lr
thumb_func_end GetSizeOfPkmnParty


thumb_func_start AllocPkmnParty
AllocPkmnParty: @ 2079ff4 :thumb
	push    {r4,lr}
	mov     r1, #0x59
	lsl     r1, r1, #4      @ 0x588 = PkmnData_Size * 6 + 0x8
	bl      malloc
	mov     r4, r0

	bl      ZeroFillPkmnPartyStructure_6

	mov     r0, r4
	pop     {r4,pc}
thumb_func_end AllocPkmnParty


/* Input:
r0: PkmnPartyAdress
*/
thumb_func_start ZeroFillPkmnPartyStructure_6
ZeroFillPkmnPartyStructure_6: @ 207a008 :thumb
	ldr     r3, =ZeroFillPkmnPartyStructure+1
	mov     r1, #0x6
	bx      r3
@ 0x207a00e

.align 2
.pool
thumb_func_end ZeroFillPkmnPartyStructure_6


/* Input:
r0: PkmnPartyAdress
r1: Nr of Pkmn
*/
thumb_func_start ZeroFillPkmnPartyStructure
ZeroFillPkmnPartyStructure: @ 207a014 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r5, r0
	cmp     r6, #0x6
	ble     branch_207a022
	bl      ErrorHandling
branch_207a022: @ 207a022 :thumb

	mov     r2, #0x59
	mov     r0, r5
	mov     r1, #0x0
	lsl     r2, r2, #4
	blx     Call_FillMemWithValue

	mov     r4, #0x0
	str     r4, [r5, #PkmnParty_Nr]
	str     r6, [r5, #PkmnParty_MaxNr]

	add     r5, #0x8
branch_207a036: @ 207a036 :thumb
	mov     r0, r5
	bl      ClearCompletePkmnDataStructure
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #PkmnData_Size
	cmp     r4, #0x6
	blt     branch_207a036

	pop     {r4-r6,pc}
thumb_func_end ZeroFillPkmnPartyStructure


/* Input:
r0: PkmnPartyAdress
r1: PkmnDataAdress
*/
thumb_func_start CopyPkmnDataToParty
CopyPkmnDataToParty: @ 207a048 :thumb
	push    {r4,r5}
	mov     r3, r0 @ PkmnPartyAdress
	mov     r2, r1 @ PkmnDataAdress

	ldr     r1, [r3, #PkmnParty_Nr]
	ldr     r0, [r3, #PkmnParty_MaxNr]
	cmp     r1, r0
	blt     branch_207a05c_partyNotFull

	mov     r0, #0x0
	pop     {r4,r5}
	bx      lr

branch_207a05c_partyNotFull: @ 207a05c :thumb
	mov     r0, #PkmnData_Size
	mul     r0, r1
	add     r5, r3, r0
	add     r5, #0x8
	mov     r4, #PkmnData_Size/8
branch_207a066: @ 207a066 :thumb
	ldmia   r2!, {r0,r1}
	stmia   r5!, {r0,r1}
	.hword  0x1e64 @ sub r4, r4, #0x1
	bne     branch_207a066

	ldr     r0, [r2, #0x0]
	str     r0, [r5, #0x0]

	ldr     r0, [r3, #PkmnParty_Nr]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r3, #PkmnParty_Nr]

	mov     r0, #0x1
	pop     {r4,r5}
	bx      lr
thumb_func_end CopyPkmnDataToParty


/* Input:
r0: PkmnPartyAdress
r1: Nr of Pkmn
*/
.align 2, 0
.thumb
.globl Function_207a080
Function_207a080: @ 207a080 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r4, r1
	bpl     branch_207a08c
	bl      ErrorHandling
branch_207a08c: @ 207a08c :thumb

	ldr     r0, [r7, #PkmnParty_Nr]
	cmp     r4, r0
	blt     branch_207a096
	bl      ErrorHandling
branch_207a096: @ 207a096 :thumb

	ldr     r0, [r7, #PkmnParty_MaxNr]
	cmp     r4, r0
	blt     branch_207a0a0
	bl      ErrorHandling
branch_207a0a0: @ 207a0a0 :thumb

	ldr     r0, [r7, #PkmnParty_Nr]
	cmp     r0, #0x0
	bgt     branch_207a0aa
	bl      ErrorHandling
branch_207a0aa: @ 207a0aa :thumb

	ldr     r0, [r7, #PkmnParty_Nr]
	.hword  0x1e40 @ sub r0, r0, #0x1
	cmp     r4, r0
	bge     branch_207a0da

	mov     r0, #PkmnData_Size
	mul     r0, r4
	add     r6, r7, r0
branch_207a0b8: @ 207a0b8 :thumb
	mov     r5, r6
	mov     r3, r6
	add     r5, #0xf4
	add     r3, #0x8
	mov     r2, #29
branch_207a0c2: @ 207a0c2 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_207a0c2
	ldr     r0, [r5, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	str     r0, [r3, #0x0]
	ldr     r0, [r7, #PkmnParty_Nr]
	add     r6, #0xec
	.hword  0x1e40 @ sub r0, r0, #0x1
	cmp     r4, r0
	blt     branch_207a0b8

branch_207a0da: @ 207a0da :thumb
	mov     r1, r7
	mov     r0, #PkmnData_Size
	add     r1, #PkmnParty_8
	mul     r0, r4
	add     r0, r1, r0
	bl      ClearCompletePkmnDataStructure
	ldr     r0, [r7, #PkmnParty_Nr]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r7, #PkmnParty_Nr]

	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x207a0f2


/* Input:
r0: Ptr to PokeParty
*/
thumb_func_start GetMaxPkmnInParty
GetMaxPkmnInParty: @ 207a0f4 :thumb
	ldr     r0, [r0, #PkmnParty_MaxNr]
	bx      lr
thumb_func_end GetMaxPkmnInParty


/* Input:
r0: Ptr to PokeParty
*/
thumb_func_start GetNrOfPkmnInParty
GetNrOfPkmnInParty: @ 207a0f8 :thumb
	ldr     r0, [r0, #PkmnParty_Nr]
	bx      lr
thumb_func_end GetNrOfPkmnInParty


/* Input:
r0: Ptr to PokeParty
r1: Place in Party
*/
thumb_func_start GetAdrOfPkmnInParty
GetAdrOfPkmnInParty: @ 207a0fc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bpl     branch_207a108
	bl      ErrorHandling
branch_207a108: @ 207a108 :thumb

	ldr     r0, [r5, #PkmnParty_Nr]
	cmp     r4, r0
	blt     branch_207a112
	bl      ErrorHandling
branch_207a112: @ 207a112 :thumb

	ldr     r0, [r5, #PkmnParty_MaxNr]
	cmp     r4, r0
	blt     branch_207a11c
	bl      ErrorHandling
branch_207a11c: @ 207a11c :thumb

	mov     r0, #PkmnData_Size
	add     r5, #PkmnParty_8
	mul     r0, r4          @ 0xec (SizeofPkmninMemory) * r4 (#ofPkmninParty)
	add     r0, r5, r0
	pop     {r3-r5,pc}
thumb_func_end GetAdrOfPkmnInParty


/* Input:
r0: Ptr to PokeParty
*/
.align 2, 0
.thumb
.globl Function_207a128
Function_207a128: @ 207a128 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r6, r2
	cmp     r4, #0x0
	bge     branch_207a138
	bl      ErrorHandling
branch_207a138: @ 207a138 :thumb

	ldr     r0, [r5, #PkmnParty_Nr]
	cmp     r4, r0
	blt     branch_207a142
	bl      ErrorHandling
branch_207a142: @ 207a142 :thumb

	ldr     r0, [r5, #PkmnParty_MaxNr]
	cmp     r4, r0
	blt     branch_207a14c
	bl      ErrorHandling
branch_207a14c: @ 207a14c :thumb

	mov     r1, r5
	mov     r0, #PkmnData_Size
	add     r1, #0x8
	mul     r0, r4
	add     r4, r1, r0

	mov     r0, r4
	mov     r1, #PKMNDATA_ISPKMNOREGG
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r7, r0

	mov     r0, r6
	mov     r1, #PKMNDATA_ISPKMNOREGG
	mov     r2, #0x0
	bl      GetPkmnData
	sub     r2, r7, r0
	mov     r3, #0x1d
branch_207a170: @ 207a170 :thumb
	ldmia   r6!, {r0,r1}
	stmia   r4!, {r0,r1}
	.hword  0x1e5b @ sub r3, r3, #0x1
	bne     branch_207a170

	ldr     r0, [r6, #0x0]
	str     r0, [r4, #0x0]
	ldr     r0, [r5, #PkmnParty_Nr]
	add     r0, r0, r2
	str     r0, [r5, #PkmnParty_Nr]
	pop     {r3-r7,pc}
@ 0x207a184


/* Input:
r0: Ptr to PokeParty
*/
.thumb
.globl Function_207a184
Function_207a184: @ 207a184 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r4, r0
	mov     r6, r2
	cmp     r5, #0x0
	bge     branch_207a194
	bl      ErrorHandling
branch_207a194: @ 207a194 :thumb

	ldr     r0, [r4, #PkmnParty_Nr]
	cmp     r5, r0
	blt     branch_207a19e
	bl      ErrorHandling
branch_207a19e: @ 207a19e :thumb

	ldr     r0, [r4, #PkmnParty_MaxNr]
	cmp     r5, r0
	blt     branch_207a1a8
	bl      ErrorHandling
branch_207a1a8: @ 207a1a8 :thumb

	cmp     r6, #0x0
	bge     branch_207a1b0
	bl      ErrorHandling
branch_207a1b0: @ 207a1b0 :thumb

	ldr     r0, [r4, #PkmnParty_Nr]
	cmp     r6, r0
	blt     branch_207a1ba
	bl      ErrorHandling
branch_207a1ba: @ 207a1ba :thumb

	ldr     r0, [r4, #PkmnParty_MaxNr]
	cmp     r6, r0
	blt     branch_207a1c4
	bl      ErrorHandling
branch_207a1c4: @ 207a1c4 :thumb

	mov     r0, #0x0
	mov     r1, #PkmnData_Size
	bl      malloc
	mov     r12, r0
	mov     r1, r4
	mov     r0, #PkmnData_Size
	add     r1, #0x8
	mul     r0, r5
	add     r3, r1, r0
	mov     r5, r3
	mov     r2, r12
	mov     r7, #29
branch_207a1de: @ 207a1de :thumb
	ldmia   r5!, {r0,r1}
	stmia   r2!, {r0,r1}
	.hword  0x1e7f @ sub r7, r7, #0x1
	bne     branch_207a1de
	ldr     r0, [r5, #0x0]
	add     r4, #PkmnParty_8
	str     r0, [r2, #0x0]
	mov     r0, #PkmnData_Size
	mul     r0, r6
	add     r2, r4, r0
	mov     r5, r2
	mov     r4, #29
branch_207a1f6: @ 207a1f6 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e64 @ sub r4, r4, #0x1
	bne     branch_207a1f6

	ldr     r0, [r5, #0x0]
	mov     r4, r12
	str     r0, [r3, #0x0]
	mov     r3, #29
branch_207a206: @ 207a206 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r2!, {r0,r1}
	.hword  0x1e5b @ sub r3, r3, #0x1
	bne     branch_207a206
	ldr     r0, [r4, #0x0]
	str     r0, [r2, #0x0]

	mov     r0, r12
	bl      free
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x207a21c


/* Input:
r0: Source
r1: Destination
*/
thumb_func_start CopyPkmnParty
CopyPkmnParty: @ 207a21c :thumb
	push    {r3,r4}
	mov     r4, r0
	mov     r3, r1
	mov     r2, #(PkmnParty_Size/8)       @ 0xb2 = 0x590 / 8 = (PkmnData_Size*6+8) / 8
branch_207a224: @ 207a224 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_207a224

	pop     {r3,r4}
	bx      lr
thumb_func_end CopyPkmnParty


/* Input:
r0: Ptr to PokeParty
r1: Species
*/
thumb_func_start IsFirstPkmnInPartyWantedSpecies
IsFirstPkmnInPartyWantedSpecies: @ 207a230 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r0, [r6, #PkmnParty_Nr]
	mov     r7, r1
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_207a25a

	mov     r5, r6
	add     r5, #PkmnParty_8
branch_207a242: @ 207a242 :thumb
	mov     r0, r5
	mov     r1, #PKMNDATA_SPECIES
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r7, r0          @ Is species the wanted one?
	beq     branch_207a25a

	ldr     r0, [r6, #PkmnParty_Nr]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #PkmnData_Size
	cmp     r4, r0          @ Is Party empty?
	blt     branch_207a242

branch_207a25a: @ 207a25a :thumb
	ldr     r0, [r6, #PkmnParty_Nr]
	cmp     r4, r0
	beq     branch_207a264

	mov     r0, #0x1
	pop     {r3-r7,pc}

branch_207a264: @ 207a264 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
thumb_func_end IsFirstPkmnInPartyWantedSpecies


thumb_func_start LoadPokePartyAdress
LoadPokePartyAdress: @ 207a268 :thumb
	ldr     r3, =LoadVariableAreaAdress+1
	mov     r1, #0x2
	bx      r3
@ 0x207a26e

.align 2
.pool
thumb_func_end LoadPokePartyAdress
