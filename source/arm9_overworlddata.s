
thumb_func_start IsMapNrValid
IsMapNrValid: @ 203a024 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0xc] @ 0x203a034, (=0x251)
	cmp     r0, r1
	blo     branch_203a032
	bl      ErrorHandling
	mov     r0, #0x3
branch_203a032: @ 203a032 :thumb
	pop     {r3,pc}
@ 0x203a034

.word 0x251 @ 0x203a034
thumb_func_end IsMapNrValid



thumb_func_start GetMapAreaData
GetMapAreaData: @ 203a038 :thumb
	push    {r3,lr}
	bl      IsMapNrValid
	mov     r1, #0x18
	mul     r1, r0
	ldr     r0, =MapHeaders
	ldrb    r0, [r0, r1]
	pop     {r3,pc}
@ 0x203a048

.pool
thumb_func_end GetMapAreaData



.thumb
.globl Function_203a04c
Function_203a04c: @ 203a04c :thumb
	push    {r3,lr}
	bl      IsMapNrValid
	mov     r1, #0x18
	mul     r1, r0
	ldr     r0, [pc, #0x4] @ 0x203a05c, (=MapHeaders+0x1)
	ldrb    r0, [r0, r1]
	pop     {r3,pc}
@ 0x203a05c

.word MapHeaders+0x1 @ 0x203a05c



thumb_func_start GetMapMatrix
GetMapMatrix: @ 203a060 :thumb
	push    {r3,lr}
	bl      IsMapNrValid
	mov     r1, #0x18
	mul     r1, r0
	ldr     r0, =MapHeaders+0x2
	ldrh    r0, [r0, r1]
	cmp     r0, #0x16
	bne     branch_203a07c
	ldr     r1, =GameIDNr
	ldrb    r1, [r1, #0x0]
	cmp     r1, #0xb
	bne     branch_203a07c
	mov     r0, #0x17
branch_203a07c: @ 203a07c :thumb
	pop     {r3,pc}
@ 0x203a07e

.align 2
.pool
thumb_func_end GetMapMatrix



thumb_func_start GetMapTexts
GetMapTexts: @ 203a088 :thumb
	push    {r3,lr}
	bl      IsMapNrValid
	mov     r1, #0x18
	mul     r1, r0
	ldr     r0, =MapHeaders+0x8
	ldrh    r0, [r0, r1]
	pop     {r3,pc}
@ 0x203a098

.pool
thumb_func_end GetMapTexts



thumb_func_start GetMapScripts
GetMapScripts: @ 203a09c :thumb
	push    {r3,lr}
	bl      IsMapNrValid
	mov     r1, #0x18
	mul     r1, r0
	ldr     r0, =MapHeaders+0x4
	ldrh    r0, [r0, r1]
	pop     {r3,pc}
@ 0x203a0ac

.pool
thumb_func_end GetMapScripts



thumb_func_start GetMapLevelScripts
GetMapLevelScripts: @ 203a0b0 :thumb
	push    {r3,lr}
	bl      IsMapNrValid
	mov     r1, #0x18
	mul     r1, r0
	ldr     r0, =MapHeaders+0x6
	ldrh    r0, [r0, r1]
	pop     {r3,pc}
@ 0x203a0c0

.pool
thumb_func_end GetMapLevelScripts



thumb_func_start GetMapMusicDay
GetMapMusicDay: @ 203a0c4 :thumb
	push    {r3,lr}
	bl      IsMapNrValid
	mov     r1, #0x18
	mul     r1, r0
	ldr     r0, =MapHeaders+0xa
	ldrh    r0, [r0, r1]
	pop     {r3,pc}
@ 0x203a0d4

.pool
thumb_func_end GetMapMusicDay



thumb_func_start GetMapMusicNight
GetMapMusicNight: @ 203a0d8 :thumb
	push    {r3,lr}
	bl      IsMapNrValid
	mov     r1, #0x18
	mul     r1, r0
	ldr     r0, =MapHeaders+0xc
	ldrh    r0, [r0, r1]
	pop     {r3,pc}
@ 0x203a0e8

.pool
thumb_func_end GetMapMusicNight



thumb_func_start HasMapWildPkmn
HasMapWildPkmn: @ 203a0ec :thumb
	push    {r3,lr}
	bl      IsMapNrValid
	mov     r1, #0x18
	mul     r1, r0
	ldr     r0, =MapHeaders+0xe
	ldrh    r1, [r0, r1]
	ldr     r0, =0xffff
	cmp     r1, r0
	beq     branch_203a104
	mov     r0, #0x1
	pop     {r3,pc}

branch_203a104: @ 203a104 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x203a108

.pool
thumb_func_end HasMapWildPkmn



thumb_func_start GetMapWildPkmn
GetMapWildPkmn: @ 203a110 :thumb
	push    {r3,lr}
	bl      IsMapNrValid
	mov     r1, #0x18
	mul     r1, r0
	ldr     r0, =MapHeaders+0xe
	ldrh    r0, [r0, r1]
	pop     {r3,pc}
@ 0x203a120

.pool
thumb_func_end GetMapWildPkmn



thumb_func_start GetMapEvents
GetMapEvents: @ 203a124 :thumb
	push    {r3,lr}
	bl      IsMapNrValid
	mov     r1, #0x18
	mul     r1, r0
	ldr     r0, =MapHeaders+0x10
	ldrh    r0, [r0, r1]
	pop     {r3,pc}
@ 0x203a134

.pool
thumb_func_end GetMapEvents



thumb_func_start GetMapName
GetMapName: @ 203a138 :thumb
	push    {r3,lr}
	bl      IsMapNrValid
	mov     r1, #0x18
	mul     r1, r0
	ldr     r0, =MapHeaders
	add     r0, r0, r1
	ldrh    r0, [r0, #0x12]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	pop     {r3,pc}
@ 0x203a14e

.align 2
.pool
thumb_func_end GetMapName



thumb_func_start GetMapNameFrame
GetMapNameFrame: @ 203a154 :thumb
	push    {r3,lr}
	bl      IsMapNrValid
	mov     r1, #0x18
	mul     r1, r0
	ldr     r0, =MapHeaders
	add     r0, r0, r1
	ldrh    r0, [r0, #0x12]
	lsl     r0, r0, #16
	lsr     r0, r0, #24
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	pop     {r3,pc}
@ 0x203a16e

.align 2
.pool
thumb_func_end GetMapNameFrame



thumb_func_start GetMapWeather
GetMapWeather: @ 203a174 :thumb
	push    {r3,lr}
	bl      IsMapNrValid
	mov     r1, #0x18
	mul     r1, r0
	ldr     r0, =MapHeaders+0x14
	ldrb    r0, [r0, r1]
	pop     {r3,pc}
@ 0x203a184

.pool
thumb_func_end GetMapWeather



thumb_func_start GetMapCamera
GetMapCamera: @ 203a188 :thumb
	push    {r3,lr}
	bl      IsMapNrValid
	mov     r1, #0x18
	mul     r1, r0
	ldr     r0, =MapHeaders+0x15
	ldrb    r0, [r0, r1]
	pop     {r3,pc}
@ 0x203a198

.pool
thumb_func_start GetMapCamera



.thumb
Function_203a19c: @ 203a19c :thumb
	push    {r3,lr}
	bl      IsMapNrValid
	mov     r1, #0x18
	mul     r1, r0
	ldr     r0, [pc, #0xc] @ 0x203a1b4, (=MapHeaders)
	add     r0, r0, r1
	ldrh    r0, [r0, #0x16]
	lsl     r0, r0, #20
	lsr     r0, r0, #27
	pop     {r3,pc}
@ 0x203a1b2

.align 2
.word MapHeaders @ 0x203a1b4



.thumb
Function_203a1b8: @ 203a1b8 :thumb
	push    {r3,lr}
	bl      IsMapNrValid
	mov     r1, #0x18
	mul     r1, r0
	ldr     r0, [pc, #0xc] @ 0x203a1d0, (=MapHeaders)
	add     r0, r0, r1
	ldrh    r0, [r0, #0x16]
	lsl     r0, r0, #17
	lsr     r0, r0, #31
	pop     {r3,pc}
@ 0x203a1ce

.align 2
.word MapHeaders @ 0x203a1d0



.thumb
Function_203a1d4: @ 203a1d4 :thumb
	push    {r3,lr}
	bl      IsMapNrValid
	mov     r1, #0x18
	mul     r1, r0
	ldr     r0, [pc, #0xc] @ 0x203a1ec, (=MapHeaders)
	add     r0, r0, r1
	ldrh    r0, [r0, #0x16]
	lsl     r0, r0, #16
	lsr     r0, r0, #31
	pop     {r3,pc}
@ 0x203a1ea

.align 2
.word MapHeaders @ 0x203a1ec



.thumb
Function_203a1f0: @ 203a1f0 :thumb
	push    {r3,lr}
	bl      IsMapNrValid
	mov     r1, #0x18
	mul     r1, r0
	ldr     r0, [pc, #0xc] @ 0x203a208, (=MapHeaders)
	add     r0, r0, r1
	ldrh    r0, [r0, #0x16]
	lsl     r0, r0, #19
	lsr     r0, r0, #31
	pop     {r3,pc}
@ 0x203a206

.align 2
.word MapHeaders @ 0x203a208



.thumb
Function_203a20c: @ 203a20c :thumb
	push    {r3,lr}
	bl      IsMapNrValid
	mov     r1, #0x18
	mul     r1, r0
	ldr     r0, [pc, #0xc] @ 0x203a224, (=MapHeaders)
	add     r0, r0, r1
	ldrh    r0, [r0, #0x16]
	lsl     r0, r0, #25
	lsr     r0, r0, #25
	pop     {r3,pc}
@ 0x203a222

.align 2
.word MapHeaders @ 0x203a224



.thumb
Function_203a228: @ 203a228 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_203a1d4
	cmp     r0, #0x0
	bne     branch_203a238
	mov     r0, #0x0
	pop     {r4,pc}

branch_203a238: @ 203a238 :thumb
	mov     r0, r4
	bl      Function_203a20c
	cmp     r0, #0x1
	beq     branch_203a246
	mov     r0, #0x1
	pop     {r4,pc}

branch_203a246: @ 203a246 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x203a24a


thumb_func_start IsMapMatrixEqualZero
IsMapMatrixEqualZero: @ 203a24c :thumb
	push    {r3,lr}
	bl      GetMapMatrix
	cmp     r0, #0x0
	bne     branch_203a25a
	mov     r0, #0x1
	pop     {r3,pc}

branch_203a25a: @ 203a25a :thumb
	mov     r0, #0x0
	pop     {r3,pc}
thumb_func_end IsMapMatrixEqualZero


.align 2, 0
.thumb
Function_203a260: @ 203a260 :thumb
	push    {r3,lr}
	bl      Function_203a20c
	cmp     r0, #0x5
	bne     branch_203a26e
	mov     r0, #0x1
	pop     {r3,pc}

branch_203a26e: @ 203a26e :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x203a272


.align 2, 0
.thumb
Function_203a274: @ 203a274 :thumb
	push    {r3,lr}
	bl      Function_203a20c
	cmp     r0, #0x3
	bne     branch_203a282
	mov     r0, #0x1
	pop     {r3,pc}

branch_203a282: @ 203a282 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x203a286


.align 2, 0
.thumb
.globl Function_203a288
Function_203a288: @ 203a288 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_203a20c
	cmp     r0, #0x4
	beq     branch_203a29e
	mov     r0, r4
	bl      Function_203a20c
	cmp     r0, #0x5
	bne     branch_203a2a2
branch_203a29e: @ 203a29e :thumb
	mov     r0, #0x1
	pop     {r4,pc}

branch_203a2a2: @ 203a2a2 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x203a2a6


.align 2, 0
.thumb
Function_203a2a8: @ 203a2a8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_203a20c
	cmp     r0, #0x1
	beq     branch_203a2be
	mov     r0, r4
	bl      Function_203a20c
	cmp     r0, #0x2
	bne     branch_203a2c2
branch_203a2be: @ 203a2be :thumb
	mov     r0, #0x1
	pop     {r4,pc}

branch_203a2c2: @ 203a2c2 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x203a2c6


.align 2, 0
.thumb
.globl Function_203a2c8
Function_203a2c8: @ 203a2c8 :thumb
	push    {r3,lr}
	bl      Function_203a260
	cmp     r0, #0x0
	beq     branch_203a2d6
	mov     r0, #0x1
	pop     {r3,pc}

branch_203a2d6: @ 203a2d6 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x203a2da


.align 2, 0
.thumb
.globl Function_203a2dc
Function_203a2dc: @ 203a2dc :thumb
	ldr     r1, [pc, #0xc] @ 0x203a2ec, (=0x1d2)
	cmp     r0, r1
	bne     branch_203a2e6
	mov     r0, #0x1
	bx      lr

branch_203a2e6: @ 203a2e6 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x203a2ea

.align 2
.word 0x1d2 @ 0x203a2ec



.thumb
.globl Function_203a2f0
Function_203a2f0: @ 203a2f0 :thumb
	cmp     r0, #0xdb
	bne     branch_203a2f8
	mov     r0, #0x1
	bx      lr

branch_203a2f8: @ 203a2f8 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x203a2fc


.thumb
.globl TestIfMapIsTrophyGarden
TestIfMapIsTrophyGarden: @ 203a2fc :thumb
	ldr     r1, =MapNr_TrophyGarden
	cmp     r0, r1
	bne     branch_203a306
	mov     r0, #0x1
	bx      lr

branch_203a306: @ 203a306 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x203a30a

.align 2
.pool



.thumb
Function_203a310: @ 203a310 :thumb
	cmp     r0, #0xfd
	bne     branch_203a318
	mov     r0, #0x1
	bx      lr

branch_203a318: @ 203a318 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x203a31c


.thumb
Function_203a31c: @ 203a31c :thumb
	cmp     r0, #0xdc
	beq     branch_203a32a
	mov     r1, #0x92
	lsl     r1, r1, #2
	sub     r0, r0, r1
	cmp     r0, #0x1
	bhi     branch_203a32e
branch_203a32a: @ 203a32a :thumb
	mov     r0, #0x1
	bx      lr

branch_203a32e: @ 203a32e :thumb
	mov     r0, #0x0
	bx      lr
@ 0x203a332


.align 2, 0
.thumb
Function_203a334: @ 203a334 :thumb
	ldr     r3, [pc, #0x18] @ 0x203a350, (=Unknown_20e5fa4)
	mov     r2, #0x0
branch_203a338: @ 203a338 :thumb
	ldrh    r1, [r3]
	cmp     r0, r1
	bne     branch_203a342
	mov     r0, #0x1
	bx      lr

branch_203a342: @ 203a342 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r2, #0x12
	blo     branch_203a338
	mov     r0, #0x0
	bx      lr
@ 0x203a34e

.align 2
.word Unknown_20e5fa4 @ 0x203a350



.thumb
Function_203a354: @ 203a354 :thumb
	ldr     r3, [pc, #0x1c] @ 0x203a374, (=Unknown_20e5fc8)
	mov     r2, #0x0
branch_203a358: @ 203a358 :thumb
	ldrh    r1, [r3, #0x0]
	cmp     r0, r1
	bne     branch_203a368
	add     r0, r2, #0x1
	lsl     r1, r0, #1
	ldr     r0, [pc, #0x10] @ 0x203a374, (=Unknown_20e5fc8)
	ldrh    r0, [r0, r1]
	bx      lr

branch_203a368: @ 203a368 :thumb
	.hword  0x1c92 @ add r2, r2, #0x2
	.hword  0x1d1b @ add r3, r3, #0x4
	cmp     r2, #0x2a
	blo     branch_203a358
	mov     r0, #0x0
	bx      lr
@ 0x203a374

.word Unknown_20e5fc8 @ 0x203a374



/* Input:
r0: OverWorldData
r1: Malloc-Flags
*/
thumb_func_start Malloc_OverWorldData_Overworlds
Malloc_OverWorldData_Overworlds: @ 203a378 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #OverWorldData_Overworlds]
	mov     r4, r1
	cmp     r0, #0x0
	beq     branch_203a388
	bl      ErrorHandling
branch_203a388: @ 203a388 :thumb

	ldr     r1, =OverWorldData_Overworlds_size
	mov     r0, r4
	bl      malloc
	str     r0, [r5, #OverWorldData_Overworlds]
	pop     {r3-r5,pc}
@ 0x203a394

.align 2
.pool
thumb_func_end Malloc_OverWorldData_Overworlds


/* Input:
r0: OverWorldData
*/
thumb_func_start Free_OverWorldData_Overworlds
Free_OverWorldData_Overworlds: @ 203a398 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #OverWorldData_Overworlds]
	cmp     r0, #0x0
	bne     branch_203a3a6
	bl      ErrorHandling
branch_203a3a6: @ 203a3a6 :thumb

	ldr     r0, [r4, #OverWorldData_Overworlds]
	bl      free
	pop     {r4,pc}
thumb_func_end Free_OverWorldData_Overworlds


/* Input:
r0: OverWorldData
r1: MapNr
*/
thumb_func_start LoadMap_EventsWildPkmnScript
LoadMap_EventsWildPkmnScript: @ 203a3b0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #OverWorldData_Overworlds]
	mov     r4, r1
	cmp     r0, #0x0
	bne     branch_203a3c0
	bl      ErrorHandling
branch_203a3c0: @ 203a3c0 :thumb

	ldr     r0, [r5, #OverWorldData_Overworlds]
	mov     r1, r4
	bl      LoadMapEvents

	ldr     r0, [r5, #OverWorldData_Overworlds]
	bl      ParseZoneEventsOfMap

	mov     r0, #0x92
	ldr     r1, [r5, #OverWorldData_Overworlds]
	lsl     r0, r0, #4
	add     r0, r1, r0 @ OverWorldData_Overworlds_PtrToEncounterData
	mov     r1, r4
	bl      LoadMapWildPkmn

	ldr     r0, [r5, #OverWorldData_Overworlds]
	mov     r1, r4
	bl      LoadMapLevelScript
	pop     {r3-r5,pc}
thumb_func_end LoadMap_EventsWildPkmnScript


/* Input:
r0: [OverWorldData_Overworlds]
r1: MapNr
*/
thumb_func_start LoadMapEvents
LoadMapEvents: @ 203a3e8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0

	mov     r0, r1
	bl      GetMapEvents
	mov     r4, r0

	mov     r0, #ZoneEvent_Narc
	mov     r1, r4
	bl      LoadFromNARC_7
	mov     r1, #0x2
	lsl     r1, r1, #10
	cmp     r0, r1
	blo     branch_203a408
	bl      ErrorHandling
branch_203a408: @ 203a408 :thumb

	add     r5, #OverWorldData_Overworlds_PtrToZoneEventData
	mov     r0, r5
	mov     r1, #ZoneEvent_Narc
	mov     r2, r4
	bl      LoadFromNARC

	pop     {r3-r5,pc}
thumb_func_end LoadMapEvents


/* Input:
r0: OverWorldData
*/
.align 2, 0
.thumb
.globl Function_203a418
Function_203a418: @ 203a418 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #OverWorldData_Overworlds]
	ldr     r4, [r0, #OverWorldData_Overworlds_NrOfOverworlds]
	cmp     r0, #0x0
	bne     branch_203a428
	bl      ErrorHandling
branch_203a428: @ 203a428 :thumb

	cmp     r4, #0x0
	beq     branch_203a43c
	ldr     r1, [r5, #OverWorldData_MapData]
	ldr     r3, [r5, #OverWorldData_Overworlds]
	ldr     r0, [r5, #OverWorldData_SpriteList]
	ldr     r1, [r1, #MapData_MapNr]
	ldr     r3, [r3, #OverWorldData_Overworlds_PtrToOverworlds]
	mov     r2, r4
	bl      Function_2062068
branch_203a43c: @ 203a43c :thumb
	pop     {r3-r5,pc}
@ 0x203a43e


.align 2, 0
.thumb
.globl Function_203a440
Function_203a440: @ 203a440 :thumb
	ldr     r0, [r0, #0x14]
	ldr     r0, [r0, #0x10]
	bx      lr
@ 0x203a446


.align 2, 0
.thumb
.globl Function_203a448
Function_203a448: @ 203a448 :thumb
	ldr     r0, [r0, #0x14]
	ldr     r0, [r0, #0x0]
	bx      lr
@ 0x203a44e


/* Input:
r0: OverWorldData
r1: Nr of Warp

Return:
r0: Ptr to WarpData
*/
thumb_func_start GetPtrToWarpData
GetPtrToWarpData: @ 203a450 :thumb
	ldr     r2, [r0, #OverWorldData_Overworlds]
	ldr     r0, [r2, #OverWorldData_Overworlds_NrOfWarps]
	cmp     r1, r0
	blo     branch_203a45c

	mov     r0, #0x0
	bx      lr

branch_203a45c: @ 203a45c :thumb
	mov     r0, #12
	ldr     r2, [r2, #OverWorldData_Overworlds_PtrToWarps]
	mul     r0, r1
	add     r0, r2, r0
	bx      lr
thumb_func_end GetPtrToWarpData


.align 2, 0
.thumb
.globl Function_203a468
Function_203a468: @ 203a468 :thumb
	push    {r4-r7}
	ldr     r5, [r0, #0x14]
	mov     r3, #0x0
	ldr     r0, [r5, #0x8]
	cmp     r0, #0x0
	bls     branch_203a49a
	ldr     r6, [r5, #0x18]
	mov     r4, r3
	mov     r0, r6
branch_203a47a: @ 203a47a :thumb
	ldrh    r7, [r0, #0x0]
	cmp     r1, r7
	bne     branch_203a48e
	add     r7, r6, r4
	ldrh    r7, [r7, #0x2]
	cmp     r2, r7
	bne     branch_203a48e
	mov     r0, r3
	pop     {r4-r7}
	bx      lr

branch_203a48e: @ 203a48e :thumb
	ldr     r7, [r5, #0x8]
	.hword  0x1c5b @ add r3, r3, #0x1
	add     r0, #0xc
	add     r4, #0xc
	cmp     r3, r7
	blo     branch_203a47a
branch_203a49a: @ 203a49a :thumb
	mov     r0, #0x0
	mvn     r0, r0
	pop     {r4-r7}
	bx      lr
@ 0x203a4a2


.align 2, 0
.thumb
.globl Function_203a4a4
Function_203a4a4: @ 203a4a4 :thumb
	ldr     r0, [r0, #0x14]
	ldr     r0, [r0, #0xc]
	bx      lr
@ 0x203a4aa


.align 2, 0
.thumb
.globl Function_203a4ac
Function_203a4ac: @ 203a4ac :thumb
	ldr     r0, [r0, #0x14]
	ldr     r0, [r0, #0x1c]
	bx      lr
@ 0x203a4b2


.align 2, 0
.thumb
.globl Function_203a4b4
Function_203a4b4: @ 203a4b4 :thumb
	ldr     r0, [r0, #0x14]
	ldr     r0, [r0, #0x4]
	bx      lr
@ 0x203a4ba


.align 2, 0
.thumb
.globl Function_203a4bc
Function_203a4bc: @ 203a4bc :thumb
	ldr     r0, [r0, #0x14]
	ldr     r0, [r0, #0x14]
	bx      lr
@ 0x203a4c2


thumb_func_start SetOverworldPosition
SetOverworldPosition: @ 203a4c4 :thumb
	push    {r3-r7,lr}
	ldr     r0, [r0, #0x14]
	mov     r4, r1
	ldr     r5, [r0, #0x4]
	mov     r7, r2
	mov     r1, r3
	mov     r2, #0x0
	ldr     r3, [r0, #0x14]
	cmp     r5, #0x0
	bls     branch_203a4f4

	mov     r6, r3
branch_203a4da: @ 203a4da :thumb
	ldrh    r0, [r6, #0x0]
	cmp     r4, r0
	bne     branch_203a4ec

	lsl     r0, r2, #5
	add     r0, r3, r0
	strh    r7, [r0, #0x18]
	strh    r1, [r0, #0x1a]
	mov     r0, #0x1
	pop     {r3-r7,pc}

branch_203a4ec: @ 203a4ec :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r6, #0x20
	cmp     r2, r5
	blo     branch_203a4da

branch_203a4f4: @ 203a4f4 :thumb
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3-r7,pc}
thumb_func_end SetOverworldPosition


.thumb
Function_203a4fc: @ 203a4fc :thumb
	push    {r4-r6,lr}
	ldr     r0, [r0, #0x14]
	mov     r3, #0x0
	ldr     r5, [r0, #0x4]
	ldr     r4, [r0, #0x14]
	cmp     r5, #0x0
	bls     branch_203a524

	mov     r6, r4
branch_203a50c: @ 203a50c :thumb
	ldrh    r0, [r6, #0x0]
	cmp     r1, r0
	bne     branch_203a51c

	lsl     r0, r3, #5
	add     r0, r4, r0
	strh    r2, [r0, #0xc]
	mov     r0, #0x1
	pop     {r4-r6,pc}

branch_203a51c: @ 203a51c :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	add     r6, #0x20
	cmp     r3, r5
	blo     branch_203a50c
branch_203a524: @ 203a524 :thumb
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x203a52c


.thumb
Function_203a52c: @ 203a52c :thumb
	push    {r4-r6,lr}
	ldr     r0, [r0, #0x14]
	mov     r3, #0x0
	ldr     r5, [r0, #0x4]
	ldr     r4, [r0, #0x14]
	cmp     r5, #0x0
	bls     branch_203a554
	mov     r6, r4
branch_203a53c: @ 203a53c :thumb
	ldrh    r0, [r6, #0x0]
	cmp     r1, r0
	bne     branch_203a54c
	lsl     r0, r3, #5
	add     r0, r4, r0
	strh    r2, [r0, #0x4]
	mov     r0, #0x1
	pop     {r4-r6,pc}

branch_203a54c: @ 203a54c :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	add     r6, #0x20
	cmp     r3, r5
	blo     branch_203a53c
branch_203a554: @ 203a554 :thumb
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x203a55c


.thumb
Function_203a55c: @ 203a55c :thumb
	push    {r3,r4}
	ldr     r0, [r0, #0x14]
	ldr     r4, [r0, #0x18]
	mov     r0, #0xc
	mul     r0, r1
	strh    r2, [r4, r0]
	add     r0, r4, r0
	strh    r3, [r0, #0x2]
	mov     r0, #0x1
	pop     {r3,r4}
	bx      lr
@ 0x203a572


.align 2, 0
.thumb
.globl Function_203a574
Function_203a574: @ 203a574 :thumb
	ldr     r0, [r0, #0x14]
	ldr     r3, [r0, #0x18]
	mov     r0, #0xc
	mul     r0, r1
	add     r0, r3, r0
	strh    r2, [r0, #0x4]
	mov     r0, #0x1
	bx      lr
@ 0x203a584


.thumb
.globl Function_203a584
Function_203a584: @ 203a584 :thumb
	ldr     r0, [r0, #0x14]
	ldr     r3, [r0, #0x18]
	mov     r0, #0xc
	mul     r0, r1
	add     r0, r3, r0
	strh    r2, [r0, #0x6]
	mov     r0, #0x1
	bx      lr
@ 0x203a594


.thumb
Function_203a594: @ 203a594 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r4, r2
	mov     r6, r3
	bl      Function_203a440
	mov     r1, #0x14
	mul     r1, r5
	add     r0, r0, r1
	str     r4, [r0, #0x4]
	str     r6, [r0, #0x8]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x203a5ae


/* Input:
r0: [OverWorldData_Overworlds]
*/
thumb_func_start ParseZoneEventsOfMap
ParseZoneEventsOfMap: @ 203a5b0 :thumb
	mov     r1, r0
	ldr     r2, [r0, #OverWorldData_Overworlds_PtrToZoneEventData]
	add     r1, #OverWorldData_Overworlds_PtrToZoneEventData
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r2, [r0, #OverWorldData_Overworlds_NrOfFurnitures]
	cmp     r2, #0x0
	beq     branch_203a5c2
	str     r1, [r0, #OverWorldData_Overworlds_PtrToFurnitures]
	b       branch_203a5c6

branch_203a5c2: @ 203a5c2 :thumb
	mov     r2, #0x0
	str     r2, [r0, #OverWorldData_Overworlds_PtrToFurnitures]
branch_203a5c6: @ 203a5c6 :thumb
	ldr     r3, [r0, #OverWorldData_Overworlds_NrOfFurnitures]
	mov     r2, #20
	mul     r2, r3
	add     r3, r1, r2
	ldr     r2, [r1, r2]
	add     r1, r3, #0x4
	str     r2, [r0, #OverWorldData_Overworlds_NrOfOverworlds]
	cmp     r2, #0x0
	beq     branch_203a5dc
	str     r1, [r0, #OverWorldData_Overworlds_PtrToOverworlds]
	b       branch_203a5e0

branch_203a5dc: @ 203a5dc :thumb
	mov     r2, #0x0
	str     r2, [r0, #OverWorldData_Overworlds_PtrToOverworlds]
branch_203a5e0: @ 203a5e0 :thumb
	ldr     r2, [r0, #OverWorldData_Overworlds_NrOfOverworlds]
	lsl     r2, r2, #5          @ * 32
	add     r3, r1, r2
	ldr     r2, [r1, r2]
	add     r1, r3, #0x4
	str     r2, [r0, #OverWorldData_Overworlds_NrOfWarps]
	cmp     r2, #0x0
	beq     branch_203a5f4
	str     r1, [r0, #OverWorldData_Overworlds_PtrToWarps]
	b       branch_203a5f8

branch_203a5f4: @ 203a5f4 :thumb
	mov     r2, #0x0
	str     r2, [r0, #OverWorldData_Overworlds_PtrToWarps]
branch_203a5f8: @ 203a5f8 :thumb
	ldr     r3, [r0, #OverWorldData_Overworlds_NrOfWarps]
	mov     r2, #12
	mul     r2, r3
	add     r3, r1, r2
	ldr     r1, [r1, r2]
	str     r1, [r0, #OverWorldData_Overworlds_NrOfTriggers]
	cmp     r1, #0x0
	beq     branch_203a60e
	add     r1, r3, #0x4
	str     r1, [r0, #OverWorldData_Overworlds_PtrToTriggers]
	bx      lr

branch_203a60e: @ 203a60e :thumb
	mov     r1, #0x0
	str     r1, [r0, #OverWorldData_Overworlds_PtrToTriggers]
	bx      lr
thumb_func_end ParseZoneEventsOfMap


/* Input:
r0: OverWorldData_Overworlds_PtrToEncounterData
r1: MapNr
*/
thumb_func_start LoadMapWildPkmn
LoadMapWildPkmn: @ 203a614 :thumb
	push    {r3-r5,lr}
	mov     r2, #0x6a
	mov     r4, r1
	mov     r1, #0x0
	lsl     r2, r2, #2
	mov     r5, r0
	blx     Call_FillMemWithValue

	mov     r0, r4
	bl      HasMapWildPkmn
	cmp     r0, #0x0
	beq     branch_203a63e

	mov     r0, r4
	bl      GetMapWildPkmn
	mov     r2, r0
	mov     r0, r5
	mov     r1, #PlEncData_Narc
	bl      LoadFromNARC

branch_203a63e: @ 203a63e :thumb
	pop     {r3-r5,pc}
thumb_func_end LoadMapWildPkmn


/* Input:
r0: OverWorldData
*/
thumb_func_start GetMapWildPkmnAdress
GetMapWildPkmnAdress: @ 203a640 :thumb
	ldr     r1, [r0, #0x14]
	mov     r0, #0x92
	lsl     r0, r0, #4
	add     r0, r1, r0 @ OverWorldData_Overworlds_PtrToEncounterData
	bx      lr
thumb_func_end GetMapWildPkmnAdress


/* Input:
r0: [OverWorldData_Overworlds]
r1: MapNr
*/
thumb_func_start LoadMapLevelScript
LoadMapLevelScript: @ 203a64c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, r1
	bl      GetMapLevelScripts
	mov     r1, #0x82
	lsl     r1, r1, #4 @ 0x820 OverWorldData_Overworlds_820
	mov     r2, #0x1
	mov     r4, r0
	mov     r0, #0x0
	add     r1, r5, r1
	lsl     r2, r2, #8
	blx     MIi_CpuClearFast

	mov     r0, #ScrSeq_Narc
	mov     r1, r4
	bl      LoadFromNARC_7
	mov     r1, #0x1
	lsl     r1, r1, #8
	cmp     r0, r1
	blo     branch_203a67c
	bl      ErrorHandling
branch_203a67c: @ 203a67c :thumb

	mov     r0, #0x82
	lsl     r0, r0, #4 @ OverWorldData_Overworlds_820
	add     r0, r5, r0
	mov     r1, #ScrSeq_Narc
	mov     r2, r4
	bl      LoadFromNARC

	pop     {r3-r5,pc}
thumb_func_end LoadMapLevelScript


.thumb
Function_203a68c: @ 203a68c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x0
	bne     branch_203a69a
	bl      ErrorHandling
branch_203a69a: @ 203a69a :thumb

	mov     r0, #0x82
	ldr     r1, [r4, #0x14]
	lsl     r0, r0, #4
	add     r0, r1, r0
	pop     {r4,pc}
@ 0x203a6a4


.thumb
Function_203a6a4: @ 203a6a4 :thumb
	push    {r4-r7}
	ldr     r0, [r0, #0x14]
	mov     r3, #0x0
	ldr     r4, [r0, #0x4]
	cmp     r4, #0x0
	bls     branch_203a6d6

	ldr     r6, [r0, #0x14]
	mov     r5, r3
	mov     r4, r6
branch_203a6b6: @ 203a6b6 :thumb
	ldrh    r7, [r4, #0x18]
	cmp     r1, r7
	bne     branch_203a6ca

	add     r7, r6, r5
	ldrh    r7, [r7, #0x1a]
	cmp     r2, r7
	bne     branch_203a6ca

	mov     r0, #0x0
	pop     {r4-r7}
	bx      lr

branch_203a6ca: @ 203a6ca :thumb
	ldr     r7, [r0, #0x4]
	.hword  0x1c5b @ add r3, r3, #0x1
	add     r4, #0x20
	add     r5, #0x20
	cmp     r3, r7
	blo     branch_203a6b6

branch_203a6d6: @ 203a6d6 :thumb
	mov     r0, #0x1
	pop     {r4-r7}
	bx      lr
@ 0x203a6dc


thumb_func_start GetSizeOfVariableAreaAdress_6
GetSizeOfVariableAreaAdress_6: @ 203a6dc :thumb
	mov     r0, #VarArea6_Size
	bx      lr
thumb_func_end GetSizeOfVariableAreaAdress_6


.thumb
Function_203a6e0: @ 203a6e0 :thumb
	mov     r0, #0x5
	lsl     r0, r0, #10
	bx      lr
@ 0x203a6e6


.align 2, 0
.thumb
Function_203a6e8: @ 203a6e8 :thumb
	ldr     r3, [pc, #0x8] @ 0x203a6f4, (=MIi_CpuClear32)
	mov     r2, #0x5
	mov     r1, r0
	mov     r0, #0x0
	lsl     r2, r2, #10
	bx      r3
@ 0x203a6f4

.word MIi_CpuClear32 @ =MIi_CpuClear32, 0x203a6f4



thumb_func_start ClearVariableAreaAdress_6
ClearVariableAreaAdress_6: @ 203a6f8 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, #VarArea6_Size
	blx     Call_FillMemWithValue

	mov     r0, r4
	add     r0, #VarArea6_6c
	bl      Function_20556c4

	mov     r0, r4
	add     r0, #VarArea6_8c
	bl      Function_205ec34
	bl      Function_203a7ec
	add     r4, #VarArea6_68
	strh    r0, [r4]
	pop     {r4,pc}
thumb_func_end ClearVariableAreaAdress_6


thumb_func_start AddVariableAreaAdress_6_MapData0
AddVariableAreaAdress_6_MapData0: @ 203a720 :thumb
	bx      lr
thumb_func_end AddVariableAreaAdress_6_MapData0


thumb_func_start AddVariableAreaAdress_6_MapData1
AddVariableAreaAdress_6_MapData1: @ 203a724 :thumb
	add     r0, #VarArea6_MapData1
	bx      lr
thumb_func_end AddVariableAreaAdress_6_MapData1


thumb_func_start AddVariableAreaAdress_6_MapData2
AddVariableAreaAdress_6_MapData2: @ 203a728 :thumb
	add     r0, #VarArea6_MapData2
	bx      lr
thumb_func_end AddVariableAreaAdress_6_MapData2


thumb_func_start AddVariableAreaAdress_6_MapData4
AddVariableAreaAdress_6_MapData4: @ 203a72c :thumb
	add     r0, #VarArea6_MapData4
	bx      lr
thumb_func_end AddVariableAreaAdress_6_MapData4


thumb_func_start AddVariableAreaAdress_6_MapData3
AddVariableAreaAdress_6_MapData3: @ 203a730 :thumb
	add     r0, #VarArea6_MapData3
	bx      lr
thumb_func_end AddVariableAreaAdress_6_MapData3


thumb_func_start CopyToVariableAreaAdress_6_3c
CopyToVariableAreaAdress_6_3c: @ 203a734 :thumb
	mov     r3, r1
	mov     r2, r0
	ldmia   r3!, {r0,r1}
	add     r2, #VarArea6_MapData3
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	bx      lr
thumb_func_end CopyToVariableAreaAdress_6_3c


thumb_func_start AddVariableAreaAdress_6_64
AddVariableAreaAdress_6_64: @ 203a748 :thumb
	add     r0, #VarArea6_64
	bx      lr
thumb_func_end AddVariableAreaAdress_6_64


thumb_func_start GetVariableAreaAdress_6_66
GetVariableAreaAdress_6_66: @ 203a74c :thumb
	add     r0, #VarArea6_66
	ldrh    r0, [r0]
	bx      lr
thumb_func_end GetVariableAreaAdress_6_66


thumb_func_start SetVariableAreaAdress_6_66
SetVariableAreaAdress_6_66: @ 203a754 :thumb
	add     r0, #VarArea6_66
	strh    r1, [r0]
	bx      lr
thumb_func_end SetVariableAreaAdress_6_66


thumb_func_start GetVariableAreaAdress_6_68
GetVariableAreaAdress_6_68: @ 203a75c :thumb
	add     r0, #VarArea6_68
	ldrh    r0, [r0]
	bx      lr
thumb_func_end GetVariableAreaAdress_6_68


thumb_func_start SetVariableAreaAdress_6_68
SetVariableAreaAdress_6_68: @ 203a764 :thumb
	add     r0, #VarArea6_68
	strh    r1, [r0]
	bx      lr
thumb_func_end SetVariableAreaAdress_6_68


thumb_func_start AddVariableAreaAdress_6_6c
AddVariableAreaAdress_6_6c: @ 203a76c :thumb
	add     r0, #VarArea6_6c
	bx      lr
thumb_func_end AddVariableAreaAdress_6_6c


thumb_func_start GetVariableAreaAdress_6_6a
GetVariableAreaAdress_6_6a: @ 203a770 :thumb
	add     r0, #VarArea6_6a
	ldrb    r0, [r0]
	bx      lr
thumb_func_end GetVariableAreaAdress_6_6a


thumb_func_start SetVariableAreaAdress_6_6a
SetVariableAreaAdress_6_6a: @ 203a778 :thumb
	add     r0, #VarArea6_6a
	strb    r1, [r0]
	bx      lr
thumb_func_end SetVariableAreaAdress_6_6a


thumb_func_start AddVariableAreaAdress_6_8c
AddVariableAreaAdress_6_8c: @ 203a780 :thumb
	add     r0, #VarArea6_8c
	bx      lr
thumb_func_end AddVariableAreaAdress_6_8c


thumb_func_start AddVariableAreaAdress_6_98
AddVariableAreaAdress_6_98: @ 203a784 :thumb
	add     r0, #VarArea6_98
	bx      lr
thumb_func_end AddVariableAreaAdress_6_98


thumb_func_start AddVariableAreaAdress_6_96
AddVariableAreaAdress_6_96: @ 203a788 :thumb
	add     r0, #VarArea6_96
	bx      lr
thumb_func_end AddVariableAreaAdress_6_96


thumb_func_start AddVariableAreaAdress_6_94
AddVariableAreaAdress_6_94: @ 203a78c :thumb
	add     r0, #VarArea6_94
	bx      lr
thumb_func_end AddVariableAreaAdress_6_94


thumb_func_start LoadVariableAreaAdress_6
LoadVariableAreaAdress_6: @ 203a790 :thumb
	ldr     r3, =LoadVariableAreaAdress+1
	mov     r1, #0x6
	bx      r3
@ 0x203a796

.align 2
.pool
thumb_func_end LoadVariableAreaAdress_6



thumb_func_start LoadVariableAreaAdress_b
LoadVariableAreaAdress_b: @ 203a79c :thumb
	ldr     r3, =LoadVariableAreaAdress+1
	mov     r1, #0xb
	bx      r3
@ 0x203a7a2

.align 2
.pool
thumb_func_end LoadVariableAreaAdress_b



.thumb
.globl Function_203a7a8
Function_203a7a8: @ 203a7a8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0xc]
	bl      LoadVariableAreaAdress_b
	mov     r2, r0              @ PtrToSprite2
	ldr     r1, [r4, #0x38]
	mov     r0, r4
	mov     r3, #0x40
	bl      Function_2061ca8
	pop     {r4,pc}
@ 0x203a7c0


.thumb
Function_203a7c0: @ 203a7c0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0xc]
	bl      LoadVariableAreaAdress_b
	mov     r1, r0
	ldr     r0, [r4, #0x38]
	mov     r2, #0x40
	bl      Function_2061d04
	pop     {r4,pc}
@ 0x203a7d6


.align 2, 0
.thumb
Function_203a7d8: @ 203a7d8 :thumb
	push    {r3,lr}
	cmp     r0, #0x0
	ble     branch_203a7e2

	cmp     r0, #0x14
	bls     branch_203a7e8

branch_203a7e2: @ 203a7e2 :thumb
	bl      ErrorHandling
	mov     r0, #0x1
branch_203a7e8: @ 203a7e8 :thumb
	.hword  0x1e40 @ sub r0, r0, #0x1
	pop     {r3,pc}
@ 0x203a7ec


.thumb
Function_203a7ec: @ 203a7ec :thumb
	mov     r0, #0x1
	bx      lr
@ 0x203a7f0


.thumb
.globl Function_203a7f0
Function_203a7f0: @ 203a7f0 :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_203a7d8
	lsl     r1, r0, #4
	ldr     r0, [pc, #0x1c] @ 0x203a818, (=Unknown_20e97ba)
	ldrh    r0, [r0, r1]
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	mvn     r0, r0
	str     r0, [r4, #0x4]
	ldr     r0, [pc, #0x14] @ 0x203a81c, (=Unknown_20e97bc)
	ldrh    r0, [r0, r1]
	str     r0, [r4, #0x8]
	ldr     r0, [pc, #0x10] @ 0x203a820, (=Unknown_20e97be)
	ldrh    r0, [r0, r1]
	str     r0, [r4, #0xc]
	mov     r0, #0x1
	str     r0, [r4, #0x10]
	pop     {r4,pc}
@ 0x203a818

.word Unknown_20e97ba @ 0x203a818
.word Unknown_20e97bc @ 0x203a81c
.word Unknown_20e97be @ 0x203a820



.thumb
Function_203a824: @ 203a824 :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_203a7d8
	lsl     r1, r0, #4
	ldr     r0, [pc, #0x1c] @ 0x203a84c, (=Unknown_20e97b4)
	ldrh    r0, [r0, r1]
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	mvn     r0, r0
	str     r0, [r4, #0x4]
	ldr     r0, [pc, #0x14] @ 0x203a850, (=Unknown_20e97b6)
	ldrh    r0, [r0, r1]
	str     r0, [r4, #0x8]
	ldr     r0, [pc, #0x10] @ 0x203a854, (=Unknown_20e97b8)
	ldrh    r0, [r0, r1]
	str     r0, [r4, #0xc]
	mov     r0, #0x0
	str     r0, [r4, #0x10]
	pop     {r4,pc}
@ 0x203a84c

.word Unknown_20e97b4 @ 0x203a84c
.word Unknown_20e97b6 @ 0x203a850
.word Unknown_20e97b8 @ 0x203a854



.thumb
Function_203a858: @ 203a858 :thumb
	ldr     r3, [pc, #0x1c] @ 0x203a878, (=Unknown_20e97b4)
	mov     r2, #0x0
branch_203a85c: @ 203a85c :thumb
	ldrh    r1, [r3, #0x0]
	cmp     r0, r1
	bne     branch_203a86c
	ldrb    r1, [r3, #0xc]
	cmp     r1, #0x0
	beq     branch_203a86c
	add     r0, r2, #0x1
	bx      lr

branch_203a86c: @ 203a86c :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r3, #0x10
	cmp     r2, #0x14
	blo     branch_203a85c
	mov     r0, #0x0
	bx      lr
@ 0x203a878

.word Unknown_20e97b4 @ 0x203a878



.thumb
Function_203a87c: @ 203a87c :thumb
	ldr     r3, [pc, #0x1c] @ 0x203a89c, (=Unknown_20e97b4)
	mov     r2, #0x0
branch_203a880: @ 203a880 :thumb
	ldrh    r1, [r3, #0x6]
	cmp     r0, r1
	bne     branch_203a890

	ldrb    r1, [r3, #0xc]
	cmp     r1, #0x0
	beq     branch_203a890

	add     r0, r2, #0x1
	bx      lr

branch_203a890: @ 203a890 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r3, #0x10
	cmp     r2, #0x14
	blo     branch_203a880

	mov     r0, #0x0
	bx      lr
@ 0x203a89c

.word Unknown_20e97b4 @ 0x203a89c



.thumb
Function_203a8a0: @ 203a8a0 :thumb
	push    {r3-r6}
	asr     r3, r1, #4
	lsr     r3, r3, #27
	add     r3, r1, r3
	asr     r1, r2, #4
	lsr     r1, r1, #27
	add     r1, r2, r1
	mov     r4, #0x0
	asr     r2, r1, #5
	ldr     r5, [pc, #0x30] @ 0x203a8e4, (=Unknown_20e97b4)
	asr     r3, r3, #5
	mov     r1, r4
branch_203a8b8: @ 203a8b8 :thumb
	ldrh    r6, [r5, #0x6]
	cmp     r0, r6
	bne     branch_203a8d6
	ldrh    r6, [r5, #0x8]
	add     r4, r1, #0x1
	lsr     r6, r6, #5
	cmp     r3, r6
	bne     branch_203a8d6
	ldrh    r6, [r5, #0xa]
	lsr     r6, r6, #5
	cmp     r2, r6
	bne     branch_203a8d6
	mov     r0, r4
	pop     {r3-r6}
	bx      lr

branch_203a8d6: @ 203a8d6 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r5, #0x10
	cmp     r1, #0x14
	blo     branch_203a8b8
	mov     r0, r4
	pop     {r3-r6}
	bx      lr
@ 0x203a8e4

.word Unknown_20e97b4 @ 0x203a8e4



.thumb
Function_203a8e8: @ 203a8e8 :thumb
	push    {r4,lr}
	ldr     r3, [pc, #0x2c] @ 0x203a918, (=Unknown_20e97b4)
	mov     r4, #0x0
branch_203a8ee: @ 203a8ee :thumb
	ldrh    r2, [r3, #0x6]
	cmp     r1, r2
	bne     branch_203a90e
	ldrb    r2, [r3, #0xd]
	cmp     r2, #0x0
	beq     branch_203a90e
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	ldr     r2, [pc, #0x18] @ 0x203a91c, (=Unknown_20e97c2)
	lsl     r3, r4, #4
	ldrh    r2, [r2, r3]
	mov     r1, #0x1
	bl      Function_206af3c
	pop     {r4,pc}

branch_203a90e: @ 203a90e :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r3, #0x10
	cmp     r4, #0x14
	blo     branch_203a8ee
	pop     {r4,pc}
@ 0x203a918

.word Unknown_20e97b4 @ 0x203a918
.word Unknown_20e97c2 @ 0x203a91c



.thumb
Function_203a920: @ 203a920 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, r1
	bl      Function_203a7d8
	mov     r4, r0
	ldr     r0, [r5, #0xc]
	bl      LoadFlagAdress
	ldr     r2, [pc, #0xc] @ 0x203a940, (=Unknown_20e97c2)
	lsl     r3, r4, #4
	ldrh    r2, [r2, r3]
	mov     r1, #0x2
	bl      Function_206af3c
	pop     {r3-r5,pc}
@ 0x203a940

.word Unknown_20e97c2 @ 0x203a940



.thumb
Function_203a944: @ 203a944 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r0, r1
	bl      GetMapWeather
	mov     r4, r0
	cmp     r4, #0x20
	blt     branch_203a9bc
	ldr     r0, [r7, #0xc]
	bl      Function_2025cd8
	mov     r6, r0
	add     r0, r6, #0x4
	bl      Function_2013900
	sub     r5, r0, #0x1
	bmi     branch_203a96c
	ldr     r0, [pc, #0x58] @ 0x203a9c0, (=0x16e)
	cmp     r5, r0
	blt     branch_203a970
branch_203a96c: @ 203a96c :thumb
	bl      ErrorHandling
branch_203a970: @ 203a970 :thumb
	ldr     r0, [r6, #0x8]
	cmp     r0, #0x2
	bls     branch_203a9a4
	ldr     r6, [r6, #0x4]
	mov     r0, #0x3
	tst     r0, r6
	bne     branch_203a98a
	mov     r0, r6
	mov     r1, #0x64
	blx     _u32_div_f
	cmp     r1, #0x0
	bne     branch_203a998
branch_203a98a: @ 203a98a :thumb
	mov     r1, #0x19
	mov     r0, r6
	lsl     r1, r1, #4
	blx     _u32_div_f
	cmp     r1, #0x0
	bne     branch_203a99c
branch_203a998: @ 203a998 :thumb
	mov     r0, #0x1
	b       branch_203a99e

branch_203a99c: @ 203a99c :thumb
	mov     r0, #0x0
branch_203a99e: @ 203a99e :thumb
	cmp     r0, #0x0
	bne     branch_203a9a4
	.hword  0x1c6d @ add r5, r5, #0x1
branch_203a9a4: @ 203a9a4 :thumb
	mov     r0, r7
	bl      Function_2055c40
	cmp     r0, #0x0
	beq     branch_203a9b0
	mov     r5, #0x1
branch_203a9b0: @ 203a9b0 :thumb
	lsl     r0, r5, #2
	sub     r4, #0x20
	add     r0, r5, r0
	add     r1, r4, r0
	ldr     r0, [pc, #0x8] @ 0x203a9c4, (=Unknown_20e98f4)
	ldrb    r0, [r0, r1]
branch_203a9bc: @ 203a9bc :thumb
	pop     {r3-r7,pc}
@ 0x203a9be

.align 2
.word 0x16e @ 0x203a9c0
.word Unknown_20e98f4 @ 0x203a9c4



.thumb
.globl Function_203a9c8
Function_203a9c8: @ 203a9c8 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x1c]
	ldr     r0, [r0, #0x0]
	bl      GetMapName
	cmp     r0, #0x0
	beq     branch_203a9da
	mov     r0, #0x1
	pop     {r3,pc}

branch_203a9da: @ 203a9da :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x203a9de


.align 2, 0
.thumb
.globl Function_203a9e0
Function_203a9e0: @ 203a9e0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_203abb4
	mov     r4, r0
	ldr     r0, [r5, #0xc]
	bl      LoadFlagAdress
	bl      Function_206ae5c
	cmp     r0, #0x1
	bne     branch_203aa06
	mov     r0, r5
	bl      Function_203ac24
	mov     r1, #0x7
	lsl     r1, r1, #6
	str     r0, [r4, r1]
	b       branch_203aa46

branch_203aa06: @ 203aa06 :thumb
	ldr     r0, [r5, #0xc]
	bl      LoadFlagAdress
	bl      Function_206ae8c
	cmp     r0, #0x1
	bne     branch_203aa22
	mov     r0, r5
	bl      Function_203ac28
	mov     r1, #0x7
	lsl     r1, r1, #6
	str     r0, [r4, r1]
	b       branch_203aa46

branch_203aa22: @ 203aa22 :thumb
	mov     r0, r5
	bl      Function_206c0d0
	cmp     r0, #0x1
	bne     branch_203aa3a
	mov     r0, r5
	bl      Function_203ac2c
	mov     r1, #0x7
	lsl     r1, r1, #6
	str     r0, [r4, r1]
	b       branch_203aa46

branch_203aa3a: @ 203aa3a :thumb
	mov     r0, r5
	bl      Function_203abd0
	mov     r1, #0x7
	lsl     r1, r1, #6
	str     r0, [r4, r1]
branch_203aa46: @ 203aa46 :thumb
	mov     r0, #0x71
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	ldr     r0, [r5, #0x3c]
	bl      Function_205f588
	cmp     r0, #0x1
	bne     branch_203aa66
	ldr     r0, [r5, #0x3c]
	bl      GetSpriteFaceDirection
	mov     r1, r0
	ldr     r0, [r5, #0x3c]
	bl      Function_205f5e4
branch_203aa66: @ 203aa66 :thumb
	ldr     r1, [pc, #0xc] @ 0x203aa74, (=0x203ac45)
	mov     r0, r5
	mov     r2, r4
	bl      OverWorldData_InitUnknownStruct01
	pop     {r3-r5,pc}
@ 0x203aa72

.align 2
.word Function_203ac44+1 @ 0x203aa74



.thumb
.globl Function_203aa78
Function_203aa78: @ 203aa78 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_203abb4
	mov     r4, r0
	mov     r0, r5
	bl      Function_203ac34
	mov     r1, #0x7
	lsl     r1, r1, #6
	str     r0, [r4, r1]
	mov     r2, #0x1
	add     r0, r1, #0x4
	str     r2, [r4, r0]
	ldr     r0, [r5, #0x3c]
	bl      Function_205f588
	cmp     r0, #0x1
	bne     branch_203aaac
	ldr     r0, [r5, #0x3c]
	bl      GetSpriteFaceDirection
	mov     r1, r0
	ldr     r0, [r5, #0x3c]
	bl      Function_205f5e4
branch_203aaac: @ 203aaac :thumb
	ldr     r1, [pc, #0x8] @ 0x203aab8, (=0x203ac45)
	mov     r0, r5
	mov     r2, r4
	bl      OverWorldData_InitUnknownStruct01
	pop     {r3-r5,pc}
@ 0x203aab8

.word Function_203ac44+1 @ 0x203aab8



.thumb
.globl Function_203aabc
Function_203aabc: @ 203aabc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_203abb4
	mov     r4, r0
	mov     r0, r5
	bl      Function_203ac3c
	mov     r1, #0x7
	lsl     r1, r1, #6
	str     r0, [r4, r1]
	mov     r2, #0x0
	add     r0, r1, #0x4
	str     r2, [r4, r0]
	ldr     r0, [r5, #0x3c]
	bl      Function_205f588
	cmp     r0, #0x1
	bne     branch_203aaf0
	ldr     r0, [r5, #0x3c]
	bl      GetSpriteFaceDirection
	mov     r1, r0
	ldr     r0, [r5, #0x3c]
	bl      Function_205f5e4
branch_203aaf0: @ 203aaf0 :thumb
	ldr     r1, [pc, #0x8] @ 0x203aafc, (=0x203ac45)
	mov     r0, r5
	mov     r2, r4
	bl      OverWorldData_InitUnknownStruct01
	pop     {r3-r5,pc}
@ 0x203aafc

.word Function_203ac44+1 @ 0x203aafc



.thumb
Function_203ab00: @ 203ab00 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0xa4] @ 0x203abac, (=0x5fd)
	bl      Function_2005748
	bl      Function_203abb4
	mov     r4, r0
	mov     r0, #0x71
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	ldr     r0, [r5, #0xc]
	bl      LoadFlagAdress
	bl      Function_206ae5c
	cmp     r0, #0x1
	bne     branch_203ab34
	mov     r0, r5
	bl      Function_203ac24
	mov     r1, #0x7
	lsl     r1, r1, #6
	str     r0, [r4, r1]
	b       branch_203aba0

branch_203ab34: @ 203ab34 :thumb
	ldr     r0, [r5, #0xc]
	bl      LoadFlagAdress
	bl      Function_206ae8c
	cmp     r0, #0x1
	bne     branch_203ab50
	mov     r0, r5
	bl      Function_203ac28
	mov     r1, #0x7
	lsl     r1, r1, #6
	str     r0, [r4, r1]
	b       branch_203aba0

branch_203ab50: @ 203ab50 :thumb
	mov     r0, r5
	bl      Function_206c0d0
	cmp     r0, #0x1
	bne     branch_203ab68
	mov     r0, r5
	bl      Function_203ac2c
	mov     r1, #0x7
	lsl     r1, r1, #6
	str     r0, [r4, r1]
	b       branch_203aba0

branch_203ab68: @ 203ab68 :thumb
	ldr     r0, [r5, #0x70]
	cmp     r0, #0x3
	bne     branch_203ab7c
	mov     r0, r5
	bl      Function_203ac3c
	mov     r1, #0x7
	lsl     r1, r1, #6
	str     r0, [r4, r1]
	b       branch_203aba0

branch_203ab7c: @ 203ab7c :thumb
	cmp     r0, #0x2
	bne     branch_203ab94
	mov     r0, r5
	bl      Function_203ac34
	mov     r1, #0x7
	lsl     r1, r1, #6
	str     r0, [r4, r1]
	mov     r2, #0x1
	add     r0, r1, #0x4
	str     r2, [r4, r0]
	b       branch_203aba0

branch_203ab94: @ 203ab94 :thumb
	mov     r0, r5
	bl      Function_203abd0
	mov     r1, #0x7
	lsl     r1, r1, #6
	str     r0, [r4, r1]
branch_203aba0: @ 203aba0 :thumb
	ldr     r0, [r5, #0x10]
	ldr     r1, [pc, #0xc] @ 0x203abb0, (=Function_203ac44+1)
	mov     r2, r4
	bl      Function_2050924
	pop     {r3-r5,pc}
@ 0x203abac

.word 0x5fd @ 0x203abac
.word Function_203ac44+1 @ 0x203abb0



.thumb
Function_203abb4: @ 203abb4 :thumb
	push    {r3,lr}
	mov     r1, #0x2
	mov     r0, #0xb
	lsl     r1, r1, #8
	bl      malloc
	mov     r2, #0x0
	strh    r2, [r0, #0x2a]
	mov     r1, #0x7e
	strh    r2, [r0, #0x28]
	lsl     r1, r1, #2
	str     r2, [r0, r1]
	pop     {r3,pc}
@ 0x203abce


.align 2, 0
.thumb
Function_203abd0: @ 203abd0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0xc]
	mov     r4, #0x0
	bl      LoadPokedexDataAdress
	bl      CheckActPokedex
	cmp     r0, #0x0
	bne     branch_203abe8
	mov     r0, #0x1
	orr     r4, r0
branch_203abe8: @ 203abe8 :thumb

	ldr     r0, [r5, #0xc]
	bl      LoadFlagAdress
	bl      Function_206b054
	cmp     r0, #0x0
	bne     branch_203abfa
	mov     r0, #0x2
	orr     r4, r0
branch_203abfa: @ 203abfa :thumb

	ldr     r0, [r5, #0xc]
	bl      LoadFlagAdress
	bl      CheckFlag_Flag960
	cmp     r0, #0x0
	bne     branch_203ac0c
	mov     r0, #0x4
	orr     r4, r0
branch_203ac0c: @ 203ac0c :thumb

	ldr     r0, [r5, #0x1c]
	ldr     r0, [r0, #0x0]
	bl      Function_203a310
	cmp     r0, #0x1
	bne     branch_203ac1c
	mov     r0, #0x6
	orr     r4, r0
branch_203ac1c: @ 203ac1c :thumb

	mov     r0, #0x6
	lsl     r0, r0, #6
	orr     r0, r4
	pop     {r3-r5,pc}
@ 0x203ac24


.thumb
Function_203ac24: @ 203ac24 :thumb
	mov     r0, #0x90
	bx      lr
@ 0x203ac28


.thumb
Function_203ac28: @ 203ac28 :thumb
	mov     r0, #0x94
	bx      lr
@ 0x203ac2c


.thumb
Function_203ac2c: @ 203ac2c :thumb
	ldr     r0, [pc, #0x0] @ 0x203ac30, (=0x195)
	bx      lr
@ 0x203ac30

.word 0x195 @ 0x203ac30



.thumb
Function_203ac34: @ 203ac34 :thumb
	mov     r0, #0x11
	lsl     r0, r0, #4
	bx      lr
@ 0x203ac3a


.align 2, 0
.thumb
Function_203ac3c: @ 203ac3c :thumb
	ldr     r0, [pc, #0x0] @ 0x203ac40, (=0x191)
	bx      lr
@ 0x203ac40

.word 0x191 @ 0x203ac40



.thumb
Function_203ac44: @ 203ac44 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	bl      LoadOverWorldDataAdress
	mov     r5, r0

	mov     r0, r6
	bl      GetUnknownStruct01_c
	mov     r4, r0
	ldrh    r1, [r4, #0x2a]
	cmp     r1, #0xf
	bhi     branch_203acc2
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x203ac68

Jumppoints_203ac68:
.hword branch_203ac88 - Jumppoints_203ac68 - 2
.hword branch_203acb8 - Jumppoints_203ac68 - 2
.hword branch_203acc8 - Jumppoints_203ac68 - 2
.hword branch_203acd0 - Jumppoints_203ac68 - 2
.hword branch_203acd8 - Jumppoints_203ac68 - 2
.hword branch_203ace0 - Jumppoints_203ac68 - 2
.hword branch_203ace8 - Jumppoints_203ac68 - 2
.hword branch_203acf0 - Jumppoints_203ac68 - 2
.hword branch_203ad20 - Jumppoints_203ac68 - 2
.hword branch_203ad36 - Jumppoints_203ac68 - 2
.hword branch_203ad56 - Jumppoints_203ac68 - 2
.hword branch_203ad72 - Jumppoints_203ac68 - 2
.hword branch_203acf8 - Jumppoints_203ac68 - 2
.hword branch_203ada0 - Jumppoints_203ac68 - 2
.hword branch_203add8 - Jumppoints_203ac68 - 2
.hword branch_203ad92 - Jumppoints_203ac68 - 2
.thumb
branch_203ac88: @ 203ac88 :thumb
	ldr     r0, [r5, #OverWorldData_SpriteList]
	bl      Function_2062c48
	mov     r1, #0x73
	lsl     r1, r1, #2
	mov     r0, r5
	add     r1, r4, r1
	bl      Function_206842c
	mov     r1, #0x7a
	lsl     r1, r1, #2
	mov     r0, r5
	add     r1, r4, r1
	bl      Function_2070728
	mov     r0, r6
	bl      Function_203adfc
	mov     r0, r6
	bl      Function_203b094
	mov     r0, #0x1
	strh    r0, [r4, #0x2a]
	b       branch_203ade4
@ 0x203acb8

.thumb
branch_203acb8: @ 203acb8 :thumb
	mov     r0, r6
	bl      Function_203b244
	cmp     r0, #0x0
	beq     branch_203acc4
.thumb
branch_203acc2: @ 203acc2 :thumb
	b       branch_203ade4
@ 0x203acc4

.thumb
branch_203acc4: @ 203acc4 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x203acc8

.thumb
branch_203acc8: @ 203acc8 :thumb
	mov     r0, r6
	bl      Function_203b610
	b       branch_203ade4
@ 0x203acd0

.thumb
branch_203acd0: @ 203acd0 :thumb
	mov     r0, r6
	bl      Function_203b64c
	b       branch_203ade4
@ 0x203acd8

.thumb
branch_203acd8: @ 203acd8 :thumb
	mov     r0, r6
	bl      Function_203bf6c
	b       branch_203ade4
@ 0x203ace0

.thumb
branch_203ace0: @ 203ace0 :thumb
	mov     r0, r6
	bl      Function_203bfc0
	b       branch_203ade4
@ 0x203ace8

.thumb
branch_203ace8: @ 203ace8 :thumb
	mov     r0, r6
	bl      Function_203c7b8
	b       branch_203ade4
@ 0x203acf0

.thumb
branch_203acf0: @ 203acf0 :thumb
	mov     r0, r6
	bl      Function_203c8cc
	b       branch_203ade4
@ 0x203acf8

.thumb
branch_203acf8: @ 203acf8 :thumb
	mov     r0, r5
	bl      Function_20509dc
	cmp     r0, #0x0
	beq     branch_203ade4
	ldr     r0, [r5, #OverWorldData_SpriteList]
	bl      Function_2062c48
	mov     r0, r6
	bl      Function_203adfc
	mov     r0, r6
	bl      Function_203b094
	mov     r0, #0x1
	bl      0x21d1744
	mov     r0, #0xe
	strh    r0, [r4, #0x2a]
	b       branch_203ade4
@ 0x203ad20

.thumb
branch_203ad20: @ 203ad20 :thumb
	mov     r0, r5
	bl      Function_20509dc
	cmp     r0, #0x0
	beq     branch_203ade4
	mov     r0, #0x1
	bl      0x21d1744
	mov     r0, #0x9
	strh    r0, [r4, #0x2a]
	b       branch_203ade4

branch_203ad36: @ 203ad36 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_203ade4

	mov     r0, r4
	mov     r1, r5
	bl      Function_203b2ec
	mov     r0, r4
	bl      free

	ldr     r0, [r5, #OverWorldData_SpriteList]
	bl      Sprite_ReleaseAll

	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x203ad56

.thumb
branch_203ad56: @ 203ad56 :thumb
	mov     r0, r5
	bl      Function_20509dc
	cmp     r0, #0x0
	beq     branch_203ade4
	ldr     r0, [r5, #0x38]
	bl      Function_2062c48
	mov     r0, #0x1
	bl      0x21d1744
	mov     r0, #0xb
	strh    r0, [r4, #0x2a]
	b       branch_203ade4
@ 0x203ad72

.thumb
branch_203ad72: @ 203ad72 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_203ade4
	mov     r2, #0x72
	lsl     r2, r2, #2
	ldr     r1, [r4, r2]
	add     r2, #0x30
	ldr     r2, [r4, r2]
	mov     r0, r6
	bl      Function_2050924
	mov     r0, r4
	bl      free
	b       branch_203ade4
@ 0x203ad92

.thumb
branch_203ad92: @ 203ad92 :thumb
	bl      free
	ldr     r0, [r5, #0x38]
	bl      Sprite_ReleaseAll
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x203ada0

.thumb
branch_203ada0: @ 203ada0 :thumb
	mov     r1, r5
	bl      Function_203b2ec
	mov     r0, r4
	bl      Function_203b078
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_200dc9c
	mov     r0, r4
	bl      Function_201a8fc
	mov     r0, r6
	bl      Function_203b200
	ldr     r0, [r5, #0x8]
	mov     r1, #0x3
	bl      Function_201c3c0
	mov     r0, r4
	bl      free
	ldr     r0, [r5, #0x38]
	bl      Sprite_ReleaseAll
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x203add8

.thumb
branch_203add8: @ 203add8 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_203ade4
	mov     r0, #0x1
	strh    r0, [r4, #0x2a]
.thumb
branch_203ade4: @ 203ade4 :thumb
	ldr     r0, [r4, #0x20]
	cmp     r0, #0x0
	beq     branch_203adf6
	mov     r0, r4
	bl      Function_203b520
	ldr     r0, [r4, #0x38]
	bl      Function_20219f8
.thumb
branch_203adf6: @ 203adf6 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x203adfa


.align 2, 0
.thumb
Function_203adfc: @ 203adfc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	mov     r4, r0
	bl      LoadOverWorldDataAdress
	str     r0, [sp, #0x1c]

	mov     r0, r4
	bl      GetUnknownStruct01_c
	mov     r4, r0

	mov     r1, r4
	add     r1, #0x30
	bl      Function_203afcc
	str     r0, [sp, #0x14]

	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0xb
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x14]
	mov     r2, #0x3
	lsl     r1, r0, #1
	add     r0, r0, r1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	mov     r0, #0xc
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x180] @ 0x203afb8, (=0x145)
	mov     r1, r4
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x1c]
	mov     r3, #0x14
	ldr     r0, [r0, #OverWorldData_OverlayData]
	bl      Function_201a7e8

	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r3, #0xb
	ldr     r0, [sp, #0x1c]
	str     r3, [sp, #0x4]
	ldr     r0, [r0, #OverWorldData_OverlayData]
	ldr     r2, [pc, #0x168] @ 0x203afbc, (=0x3d9)
	mov     r1, #0x3
	bl      Function_200daa4

	ldr     r2, [pc, #0x160] @ 0x203afbc, (=0x3d9)
	mov     r0, r4
	mov     r1, #0x1
	mov     r3, #0xb
	bl      Function_200dc48

	ldr     r2, [pc, #0x158] @ 0x203afc0, (=0x16f) PlMsg_Narc_367
	mov     r0, #0x0
	mov     r1, #PlMsg_Narc
	mov     r3, #0xb
	bl      LoadFromNARC_9
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x14]
	mov     r1, #0xb
	bl      Function_2013a04
	str     r0, [r4, #0x24]
	mov     r5, #0x0
	ldr     r0, [sp, #0x14]
	strh    r5, [r4, #0x28]
	cmp     r0, #0x0
	bls     branch_203af1c

branch_203ae86: @ 203ae86 :thumb
	add     r0, r4, r5
	add     r0, #0x30
	ldrb    r3, [r0, #0x0]
	cmp     r3, #0x3
	bne     branch_203aef4
	mov     r0, #0xb
	bl      Function_200b358
	mov     r6, r0
	mov     r0, #0x8
	mov     r1, #0xb
	bl      Function_2023790
	add     r1, r4, r5
	add     r1, #0x30
	ldrb    r1, [r1, #0x0]
	mov     r7, r0
	ldr     r0, [sp, #0x18]
	lsl     r2, r1, #3
	ldr     r1, [pc, #0x114] @ 0x203afc4, (=Unknown_20ea05c)
	ldr     r1, [r1, r2]
	bl      Function_200b1ec_CallMsgDecrypt
	str     r0, [sp, #0x20]

	ldr     r0, [sp, #0x1c]
	ldr     r0, [r0, #OverWorldData_VariableAreaAdress]
	bl      LoadTrainerDataAdress
	mov     r2, r0

	mov     r0, r6
	mov     r1, #0x0
	bl      Function_200b498
	ldr     r2, [sp, #0x20]
	mov     r0, r6
	mov     r1, r7
	bl      Function_200c388
	add     r2, r4, r5
	add     r2, #0x30
	ldrb    r2, [r2, #0x0]
	ldr     r0, [r4, #0x24]
	mov     r1, r7
	bl      Function_2013a6c
	ldr     r0, [sp, #0x20]
	bl      Function_20237bc_FreeMsg
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	mov     r0, r6
	bl      Function_200b3f0
	b       branch_203af02

branch_203aef4: @ 203aef4 :thumb
	ldr     r2, [pc, #0xcc] @ 0x203afc4, (=Unknown_20ea05c)
	lsl     r6, r3, #3
	ldr     r0, [r4, #0x24]
	ldr     r1, [sp, #0x18]
	ldr     r2, [r2, r6]
	bl      Function_2013a4c
branch_203af02: @ 203af02 :thumb
	ldr     r0, [sp, #0x1c]
	add     r0, #OverWorldData_90
	ldr     r1, [r0] @ OverWorldData_90
	add     r0, r4, r5
	add     r0, #0x30
	ldrb    r0, [r0, #0x0]
	cmp     r1, r0
	bne     branch_203af14
	strh    r5, [r4, #0x28]
branch_203af14: @ 203af14 :thumb

	ldr     r0, [sp, #0x14]
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r0
	blo     branch_203ae86

branch_203af1c: @ 203af1c :thumb
	ldrh    r0, [r4, #0x28]
	add     r0, r4, r0
	add     r0, #0x30
	ldrb    r1, [r0, #0x0]
	ldr     r0, [sp, #0x1c]
	add     r0, #OverWorldData_90
	str     r1, [r0] @ OverWorldData_90
	ldr     r0, [sp, #0x18]
	bl      Function_200b190
	ldr     r0, [r4, #0x24]
	mov     r1, #0x1
	str     r0, [sp, #0x24]
	str     r4, [sp, #0x28]
	add     r0, sp, #0x24
	strb    r1, [r0, #0x8]
	strb    r1, [r0, #0x9]
	ldr     r1, [sp, #0x14]
	strb    r1, [r0, #0xa]
	ldrb    r2, [r0, #0xb]
	mov     r1, #0xf
	bic     r2, r1
	mov     r1, #0x8
	orr     r1, r2
	strb    r1, [r0, #0xb]
	ldrb    r2, [r0, #0xb]
	mov     r1, #0x30
	bic     r2, r1
	mov     r1, #0x10
	orr     r1, r2
	strb    r1, [r0, #0xb]
	ldr     r1, [sp, #0x14]
	ldrb    r2, [r0, #0xb]
	cmp     r1, #0x4
	blo     branch_203af6e
	mov     r1, #0xc0
	bic     r2, r1
	mov     r1, #0x40
	orr     r1, r2
	strb    r1, [r0, #0xb]
	b       branch_203af74

branch_203af6e: @ 203af6e :thumb
	mov     r1, #0xc0
	bic     r2, r1
	strb    r2, [r0, #0xb]
branch_203af74: @ 203af74 :thumb
	mov     r0, #0xb
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x4c] @ 0x203afc8, (=0x402)
	mov     r1, #0x1c
	str     r0, [sp, #0x4]
	ldrh    r3, [r4, #0x28]
	add     r0, sp, #0x24               @ UnknownGraphicData
	mov     r2, #0x4
	lsl     r3, r3, #24
	lsr     r3, r3, #24
	bl      Function_2001af4
	str     r0, [r4, #0x20]

	mov     r0, r4
	bl      Function_201a9a4

	ldr     r0, [sp, #0x1c]
	ldr     r0, [r0, #OverWorldData_VariableAreaAdress]
	bl      LoadTrainerDataAdress
	bl      GetGender
	mov     r3, r0
	mov     r0, r4
	add     r4, #0x30
	lsl     r3, r3, #24
	ldr     r2, [sp, #0x14]
	mov     r1, r4
	lsr     r3, r3, #24
	bl      Function_203b318
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x203afb6

.align 2
.word 0x145 @ 0x203afb8
.word 0x3d9 @ 0x203afbc
.word 0x16f @ 0x203afc0
.word Unknown_20ea05c @ 0x203afc4
.word 0x402 @ 0x203afc8



.thumb
Function_203afcc: @ 203afcc :thumb
	push    {r3,r4}
	mov     r3, #0x7
	lsl     r3, r3, #6
	ldr     r4, [r0, r3]
	sub     r3, #0xc0
	mov     r2, #0x0
	tst     r3, r4
	bne     branch_203afe2
	mov     r3, #0x8
	strb    r3, [r1, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
branch_203afe2: @ 203afe2 :thumb

	mov     r3, #0x7
	lsl     r3, r3, #6
	ldr     r4, [r0, r3]
	mov     r3, #0x80
	tst     r3, r4
	bne     branch_203aff4
	mov     r3, #0x7
	strb    r3, [r1, r2]
	.hword  0x1c52 @ add r2, r2, #0x1
branch_203aff4: @ 203aff4 :thumb

	mov     r3, #0x7
	lsl     r3, r3, #6
	ldr     r4, [r0, r3]
	mov     r3, #0x1
	tst     r3, r4
	bne     branch_203b006
	mov     r3, #0x0
	strb    r3, [r1, r2]
	.hword  0x1c52 @ add r2, r2, #0x1
branch_203b006: @ 203b006 :thumb

	mov     r3, #0x7
	lsl     r3, r3, #6
	ldr     r4, [r0, r3]
	mov     r3, #0x2
	tst     r3, r4
	bne     branch_203b018
	mov     r3, #0x1
	strb    r3, [r1, r2]
	.hword  0x1c52 @ add r2, r2, #0x1
branch_203b018: @ 203b018 :thumb

	mov     r3, #0x7
	lsl     r3, r3, #6
	ldr     r4, [r0, r3]
	mov     r3, #0x4
	tst     r3, r4
	bne     branch_203b02a
	mov     r3, #0x2
	strb    r3, [r1, r2]
	.hword  0x1c52 @ add r2, r2, #0x1
branch_203b02a: @ 203b02a :thumb

	mov     r3, #0x7
	lsl     r3, r3, #6
	ldr     r4, [r0, r3]
	mov     r3, #0x8
	tst     r3, r4
	bne     branch_203b03c
	mov     r3, #0x3
	strb    r3, [r1, r2]
	.hword  0x1c52 @ add r2, r2, #0x1
branch_203b03c: @ 203b03c :thumb

	mov     r3, #0x7
	lsl     r3, r3, #6
	ldr     r4, [r0, r3]
	mov     r3, #0x10
	tst     r3, r4
	bne     branch_203b04e
	mov     r3, #0x4
	strb    r3, [r1, r2]
	.hword  0x1c52 @ add r2, r2, #0x1
branch_203b04e: @ 203b04e :thumb

	mov     r3, #0x7
	lsl     r3, r3, #6
	ldr     r4, [r0, r3]
	mov     r3, #0x20
	tst     r3, r4
	bne     branch_203b060
	mov     r3, #0x5
	strb    r3, [r1, r2]
	.hword  0x1c52 @ add r2, r2, #0x1
branch_203b060: @ 203b060 :thumb

	mov     r3, #0x7
	lsl     r3, r3, #6
	ldr     r3, [r0, r3]
	mov     r0, #0x40
	tst     r0, r3
	bne     branch_203b072
	mov     r0, #0x6
	strb    r0, [r1, r2]
	.hword  0x1c52 @ add r2, r2, #0x1
branch_203b072: @ 203b072 :thumb

	mov     r0, r2
	pop     {r3,r4}
	bx      lr
@ 0x203b078


.thumb
Function_203b078: @ 203b078 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_203b4e8
	ldr     r0, [r4, #0x20]
	mov     r1, #0x0
	bl      Function_2001bc4
	ldr     r0, [r4, #0x24]
	bl      Function_2013a3c
	mov     r0, #0x0
	str     r0, [r4, #0x20]
	pop     {r4,pc}
@ 0x203b094


.thumb
Function_203b094: @ 203b094 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r5, r0
	bl      LoadOverWorldDataAdress
	mov     r4, r0

	mov     r0, r5
	bl      GetUnknownStruct01_c
	mov     r5, r0

	ldr     r0, [r4, #OverWorldData_VariableAreaAdress]
	bl      LoadFlagAdress
	bl      Function_206ae5c
	cmp     r0, #0x1
	bne     branch_203b0ba

	mov     r6, #0x0
	b       branch_203b0cc

branch_203b0ba: @ 203b0ba :thumb
	ldr     r0, [r4, #OverWorldData_VariableAreaAdress]
	bl      LoadFlagAdress
	bl      Function_206ae8c
	cmp     r0, #0x1
	beq     branch_203b0ca
	b       branch_203b1ee

branch_203b0ca: @ 203b0ca :thumb
	mov     r6, #0x1
branch_203b0cc: @ 203b0cc :thumb
	mov     r3, #0x1
	str     r3, [sp, #0x0]
	mov     r0, #0xc
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x114] @ 0x203b1f4, (=0x237)
	mov     r1, r5
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #OverWorldData_OverlayData]
	add     r1, #0x10
	mov     r2, #0x3
	bl      Function_201a7e8

	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r3, #0xb
	str     r3, [sp, #0x4]
	ldr     r0, [r4, #OverWorldData_OverlayData]
	ldr     r2, [pc, #0x100] @ 0x203b1f8, (=0x3d9)
	mov     r1, #0x3
	bl      Function_200daa4

	mov     r0, r5
	ldr     r2, [pc, #0xf4] @ 0x203b1f8, (=0x3d9)
	add     r0, #0x10
	mov     r1, #0x1
	mov     r3, #0xb
	bl      Function_200dc48

	mov     r0, r5
	add     r0, #0x10
	mov     r1, #0xf
	bl      Function_201ada4_ClearTextBox

	ldr     r2, [pc, #0xe4] @ 0x203b1fc, (=0x16f) PlMsg_Narc_367
	mov     r0, #0x0
	mov     r1, #PlMsg_Narc
	mov     r3, #0xb
	bl      LoadFromNARC_9
	str     r0, [sp, #0x1c]
	cmp     r6, #0x0
	bne     branch_203b130

	mov     r1, #0x9
	bl      Function_200b1ec_CallMsgDecrypt
	b       branch_203b136

branch_203b130: @ 203b130 :thumb
	mov     r1, #0xa
	bl      Function_200b1ec_CallMsgDecrypt
branch_203b136: @ 203b136 :thumb
	mov     r1, #0x0
	mov     r7, r0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r0, #0x10
	mov     r2, r7
	mov     r3, r1
	str     r1, [sp, #0x8]
	bl      Function_201d738_CallInitTextInterpreter

	mov     r0, r7
	bl      Function_20237bc_FreeMsg

	mov     r0, #0xb
	bl      Function_200b358
	mov     r7, r0

	mov     r0, #0x20
	mov     r1, #0xb
	bl      Function_2023790
	str     r0, [sp, #0x18]

	ldr     r0, [sp, #0x1c]
	mov     r1, #0xb
	bl      Function_200b1ec_CallMsgDecrypt
	str     r0, [sp, #0x14]

	cmp     r6, #0x0
	bne     branch_203b194

	ldr     r0, [r4, #OverWorldData_VariableAreaAdress]
	bl      LoadVariableAreaAdress_6
	bl      AddVariableAreaAdress_6_98
	mov     r1, #0x0
	mov     r2, r0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldrh    r2, [r2, #0x0]
	mov     r0, r7
	mov     r3, #0x2
	bl      Function_200b60c
	b       branch_203b1ac

branch_203b194: @ 203b194 :thumb
	mov     r0, r4
	bl      Function_20563bc
	mov     r1, #0x0
	mov     r2, r0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, r7
	mov     r3, #0x2
	bl      Function_200b60c
branch_203b1ac: @ 203b1ac :thumb
	ldr     r1, [sp, #0x18]
	ldr     r2, [sp, #0x14]
	mov     r0, r7
	bl      Function_200c388
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r1, #0x0
	mov     r0, r5
	ldr     r2, [sp, #0x18]
	add     r0, #0x10
	mov     r3, r1
	str     r1, [sp, #0x8]
	bl      Function_201d738_CallInitTextInterpreter

	ldr     r0, [sp, #0x18]
	bl      Function_20237bc_FreeMsg

	ldr     r0, [sp, #0x14]
	bl      Function_20237bc_FreeMsg

	mov     r0, r7
	bl      Function_200b3f0

	ldr     r0, [sp, #0x1c]
	bl      Function_200b190

	add     r5, #0x10
	mov     r0, r5
	bl      Function_201a9a4
branch_203b1ee: @ 203b1ee :thumb
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x203b1f2

.align 2
.word 0x237 @ 0x203b1f4
.word 0x3d9 @ 0x203b1f8
.word 0x16f @ 0x203b1fc



.thumb
Function_203b200: @ 203b200 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      LoadOverWorldDataAdress
	mov     r4, r0

	mov     r0, r5
	bl      GetUnknownStruct01_c
	mov     r5, r0

	ldr     r0, [r4, #OverWorldData_VariableAreaAdress]
	bl      LoadFlagAdress
	bl      Function_206ae5c
	cmp     r0, #0x0
	bne     branch_203b22e
	ldr     r0, [r4, #0xc]
	bl      LoadFlagAdress
	bl      Function_206ae8c
	cmp     r0, #0x0
	beq     branch_203b240
branch_203b22e: @ 203b22e :thumb
	mov     r0, r5
	add     r0, #0x10
	mov     r1, #0x1
	bl      Function_200dc9c
	add     r5, #0x10
	mov     r0, r5
	bl      Function_201a8fc
branch_203b240: @ 203b240 :thumb
	pop     {r3-r5,pc}
@ 0x203b242


.align 2, 0
.thumb
Function_203b244: @ 203b244 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	bl      LoadOverWorldDataAdress
	mov     r4, r0
	mov     r0, r7
	bl      GetUnknownStruct01_c
	mov     r5, r0
	ldr     r0, [r5, #0x20]
	bl      Function_2001dc4
	mov     r6, r0
	mov     r1, #0x5e
	ldr     r0, [r5, #0x20]
	lsl     r1, r1, #4
	bl      Function_2001c94
	str     r0, [r5, #0x2c]
	ldr     r0, [r5, #0x20]
	bl      Function_2001dc4
	strh    r0, [r5, #0x28]
	ldrh    r1, [r5, #0x28]
	cmp     r6, r1
	beq     branch_203b29a
	mov     r0, #0x67
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r0, [r0, #0x0]
	bl      Function_203b558
	ldrh    r2, [r5, #0x28]
	mov     r0, r5
	mov     r1, r6
	bl      Function_203b5b4
	ldrh    r0, [r5, #0x28]
	add     r4, #0x90
	add     r0, r5, r0
	add     r0, #0x30
	ldrb    r0, [r0, #0x0]
	str     r0, [r4, #0x0]
branch_203b29a: @ 203b29a :thumb
	ldrh    r0, [r5, #0x28]
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r0, r0, #2
	add     r1, r5, r0
	mov     r0, #0x67
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	ldr     r0, [r0, #0x0]
	bl      Function_203b5e8
	mov     r1, #0x1
	ldr     r2, [r5, #0x2c]
	mvn     r1, r1
	cmp     r2, r1
	beq     branch_203b2c0
	add     r0, r1, #0x1
	cmp     r2, r0
	beq     branch_203b2e2
	b       branch_203b2c6

branch_203b2c0: @ 203b2c0 :thumb
	mov     r0, #0xd
	strh    r0, [r5, #0x2a]
	b       branch_203b2e2

branch_203b2c6: @ 203b2c6 :thumb
	ldr     r0, [pc, #0x20] @ 0x203b2e8, (=Unknown_20ea060)
	lsl     r2, r2, #3
	ldr     r2, [r0, r2]
	cmp     r2, r1
	bne     branch_203b2d6
	mov     r0, #0xd
	strh    r0, [r5, #0x2a]
	b       branch_203b2e2

branch_203b2d6: @ 203b2d6 :thumb
	add     r0, r1, #0x1
	cmp     r2, r0
	beq     branch_203b2e2
	mov     r0, r7
	blx     r2
	pop     {r3-r7,pc}

branch_203b2e2: @ 203b2e2 :thumb
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x203b2e6

.align 2
.word Unknown_20ea060 @ 0x203b2e8



.thumb
Function_203b2ec: @ 203b2ec :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_2033e1c
	cmp     r0, #0x0
	beq     branch_203b316
	mov     r0, #0x71
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_203b316
	add     r4, #0x80
	ldr     r0, [r4, #0x0]
	bl      Function_205c2b0
	bl      Function_2036ac4
	mov     r0, #0x0
	bl      Function_205bea8
branch_203b316: @ 203b316 :thumb
	pop     {r3-r5,pc}
@ 0x203b318


.thumb
Function_203b318: @ 203b318 :thumb
	push    {r3-r7,lr}
	add     sp, #-0xb8
	ldr     r4, [pc, #0x1b0] @ 0x203b4d0, (=Unknown_20ea044)
	str     r3, [sp, #0x18]
	add     r3, sp, #0xa0
	str     r2, [sp, #0x14]
	str     r0, [sp, #0xc]
	str     r1, [sp, #0x10]
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [sp, #0xc]
	mov     r1, r2
	add     r0, #0x38
	mov     r2, #0x8
	mov     r3, #0xb
	bl      Function_5_21d3190

	mov     r0, #MenuGra_Narc
	mov     r1, #0xb
	bl      LoadFromNARC_8
	str     r0, [sp, #0x1c]
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x17c] @ 0x203b4d4, (=0x34d8)
	ldr     r1, [sp, #0x1c]
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0xc]
	mov     r2, #0x5
	add     r0, #0x38
	mov     r3, #0x0
	bl      Function_5_21d32e8
	ldr     r0, [pc, #0x168] @ 0x203b4d4, (=0x34d8)
	ldr     r1, [sp, #0x1c]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0xc]
	mov     r2, #0x1
	add     r0, #0x38
	mov     r3, #0x0
	bl      Function_5_21d3374
	ldr     r0, [pc, #0x158] @ 0x203b4d4, (=0x34d8)
	mov     r2, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0xc]
	ldr     r1, [sp, #0x1c]
	add     r0, #0x38
	mov     r3, r2
	bl      Function_5_21d339c
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x140] @ 0x203b4d4, (=0x34d8)
	ldr     r1, [sp, #0x1c]
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0xc]
	mov     r2, #0x2
	add     r0, #0x38
	mov     r3, #0x0
	bl      Function_5_21d3414
	ldr     r0, [sp, #0xc]
	ldr     r1, [pc, #0x130] @ 0x203b4d8, (=Unknown_20ea0a4)
	add     r0, #0x38
	bl      Function_5_21d3584
	mov     r2, #0x67
	ldr     r1, [sp, #0xc]
	lsl     r2, r2, #2
	str     r0, [r1, r2]
	mov     r0, r1
	ldr     r0, [r0, r2]
	ldrh    r1, [r1, #0x28]
	ldr     r0, [r0, #0x0]
	bl      Function_203b558
	ldr     r0, [pc, #0x118] @ 0x203b4dc, (=0x34d9)
	ldr     r1, [sp, #0x1c]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0xc]
	mov     r2, #0x4
	add     r0, #0x38
	mov     r3, #0x0
	bl      Function_5_21d3374
	ldr     r0, [pc, #0x108] @ 0x203b4dc, (=0x34d9)
	ldr     r1, [sp, #0x1c]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0xc]
	mov     r2, #0x3
	add     r0, #0x38
	mov     r3, #0x0
	bl      Function_5_21d339c
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xf0] @ 0x203b4dc, (=0x34d9)
	ldr     r1, [sp, #0x1c]
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0xc]
	mov     r2, #0x6
	add     r0, #0x38
	mov     r3, #0x0
	bl      Function_5_21d3414
	ldr     r0, [sp, #0x14]
	mov     r4, #0x0
	cmp     r0, #0x0
	bls     branch_203b496
	ldr     r5, [sp, #0xc]
	ldr     r3, [pc, #0xd8] @ 0x203b4e0, (=Unknown_20ea0d8)
	mov     r7, r4
	add     r2, sp, #0x2c
	mov     r6, #0x6
branch_203b40c: @ 203b40c :thumb
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	.hword  0x1e76 @ sub r6, r6, #0x1
	bne     branch_203b40c
	ldr     r0, [r3, #0x0]
	ldr     r3, [pc, #0xcc] @ 0x203b4e4, (=Unknown_20ea038)
	str     r0, [r2, #0x0]
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x20
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
branch_203b424: @ 203b424 :thumb
	add     r6, sp, #0x2c
	add     r3, sp, #0x6c
	mov     r2, #0x6
branch_203b42a: @ 203b42a :thumb
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_203b42a
	ldr     r0, [r6, #0x0]
	add     r1, sp, #0x6c
	str     r0, [r3, #0x0]
	mov     r0, #0x2
	ldsh    r0, [r1, r0]
	add     r0, r0, r7
	strh    r0, [r1, #0x2]
	ldr     r0, [sp, #0x10]
	ldrb    r2, [r0, r4]
	cmp     r2, #0x2
	bne     branch_203b454
	ldr     r0, [sp, #0x18]
	cmp     r0, #0x1
	bne     branch_203b454
	mov     r0, #0x1b
	strh    r0, [r1, #0x6]
	b       branch_203b45c

branch_203b454: @ 203b454 :thumb
	lsl     r0, r2, #1
	add     r1, r2, r0
	add     r0, sp, #0x6c
	strh    r1, [r0, #0x6]
branch_203b45c: @ 203b45c :thumb
	ldr     r0, [sp, #0xc]
	add     r1, sp, #0x6c
	add     r0, #0x38
	bl      Function_5_21d3584
	mov     r1, #0x1a
	lsl     r1, r1, #4
	add     r2, sp, #0x60
	add     r3, sp, #0x20
	str     r0, [r5, r1]
	ldmia   r3!, {r0,r1}
	mov     r6, r2
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	mov     r1, r6
	str     r0, [r2, #0x0]
	mov     r0, #0x1a
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r2, #0x1
	ldr     r0, [r0, #0x0]
	bl      Function_2021c80
	ldr     r0, [sp, #0x14]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r7, #0x18
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, r0
	blo     branch_203b424
branch_203b496: @ 203b496 :thumb
	ldr     r0, [sp, #0xc]
	mov     r2, #0x1
	ldrh    r0, [r0, #0x28]
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r1, r0, #2
	ldr     r0, [sp, #0xc]
	add     r1, r0, r1
	mov     r0, #0x67
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	mov     r1, #0x2
	ldr     r0, [r0, #0x0]
	bl      Function_203b588
	ldr     r0, [sp, #0x14]
	mov     r1, #0x6f
	add     r2, r0, #0x1
	ldr     r0, [sp, #0xc]
	lsl     r1, r1, #2
	str     r2, [r0, r1]
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	ldr     r0, [sp, #0x1c]
	bl      Call_FS_CloseFile
	add     sp, #0xb8
	pop     {r3-r7,pc}
@ 0x203b4d0

.word Unknown_20ea044 @ 0x203b4d0
.word 0x34d8 @ 0x203b4d4
.word Unknown_20ea0a4 @ 0x203b4d8
.word 0x34d9 @ 0x203b4dc
.word Unknown_20ea0d8 @ 0x203b4e0
.word Unknown_20ea038 @ 0x203b4e4



.thumb
Function_203b4e8: @ 203b4e8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r0, #0x6f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r4, #0x0
	cmp     r0, #0x0
	bls     branch_203b516
	mov     r7, #0x67
	lsl     r7, r7, #2
	mov     r6, r7
	add     r6, #0x20
branch_203b500: @ 203b500 :thumb
	lsl     r0, r4, #2
	add     r0, r5, r0
	ldr     r0, [r0, r7]
	bl      Function_200d0f4
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	ldr     r0, [r5, r6]
	cmp     r4, r0
	blo     branch_203b500

branch_203b516: @ 203b516 :thumb
	add     r5, #0x38
	mov     r0, r5
	bl      Function_5_21d375c
	pop     {r3-r7,pc}
@ 0x203b520


.thumb
Function_203b520: @ 203b520 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r0, #0x6f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r4, #0x0
	cmp     r0, #0x0
	bls     branch_203b554
	mov     r7, #0x67
	lsl     r7, r7, #2
	mov     r6, r7
	add     r6, #0x20
branch_203b538: @ 203b538 :thumb
	lsl     r0, r4, #2
	add     r0, r5, r0
	ldr     r0, [r0, r7]
	mov     r1, #0x1
	ldr     r0, [r0, #0x0]
	lsl     r1, r1, #12
	bl      Function_2021e2c
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	ldr     r0, [r5, r6]
	cmp     r4, r0
	blo     branch_203b538
branch_203b554: @ 203b554 :thumb
	pop     {r3-r7,pc}
@ 0x203b556


.align 2, 0
.thumb
Function_203b558: @ 203b558 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r4, r1
	bl      Function_2021d28
	mov     r6, r0
	add     r3, sp, #0x0
	ldmia   r6!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r1, r2
	str     r0, [r3, #0x0]
	mov     r0, #0x18
	mul     r0, r4
	add     r0, #0x14
	lsl     r0, r0, #12
	str     r0, [sp, #0x4]
	mov     r0, r5
	bl      Function_2021c50
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x203b588


.thumb
Function_203b588: @ 203b588 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	bl      Function_2021e24
	mov     r1, #0x3
	blx     _u32_div_f
	mov     r2, r0
	lsl     r1, r2, #1
	add     r1, r2, r1
	mov     r0, r5
	add     r1, r4, r1
	bl      Function_2021d6c
	mov     r0, r5
	mov     r1, r6
	bl      Function_2021ec4
	pop     {r4-r6,pc}
@ 0x203b5b2


.align 2, 0
.thumb
Function_203b5b4: @ 203b5b4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, r1, #0x1
	lsl     r0, r0, #2
	add     r1, r5, r0
	mov     r0, #0x67
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	mov     r1, #0x0
	mov     r4, r2
	ldr     r0, [r0, #0x0]
	mov     r2, r1
	bl      Function_203b588
	add     r0, r4, #0x1
	lsl     r0, r0, #2
	add     r1, r5, r0
	mov     r0, #0x67
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	mov     r1, #0x1
	ldr     r0, [r0, #0x0]
	mov     r2, r1
	bl      Function_203b588
	pop     {r3-r5,pc}
@ 0x203b5e8


.thumb
Function_203b5e8: @ 203b5e8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2021e24
	mov     r1, #0x3
	blx     _u32_div_f
	cmp     r1, #0x1
	bne     branch_203b60e
	mov     r0, r4
	bl      Function_2021fd0
	cmp     r0, #0x0
	bne     branch_203b60e
	mov     r0, r4
	mov     r1, #0x2
	mov     r2, #0x1
	bl      Function_203b588
branch_203b60e: @ 203b60e :thumb
	pop     {r4,pc}
@ 0x203b610


.thumb
Function_203b610: @ 203b610 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_203b648
	mov     r0, r5
	bl      LoadOverWorldDataAdress
	mov     r0, r5
	bl      GetUnknownStruct01_c
	mov     r4, r0
	bl      Function_203b078
	mov     r0, r4
	bl      Function_201a8fc
	mov     r0, r5
	bl      Function_203b200
	mov     r1, #0x72
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	mov     r0, r5
	blx     r1
	mov     r0, #0x3
	strh    r0, [r4, #0x2a]
branch_203b648: @ 203b648 :thumb
	pop     {r3-r5,pc}
@ 0x203b64a


.align 2, 0
.thumb
Function_203b64c: @ 203b64c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      LoadOverWorldDataAdress
	mov     r6, r0
	mov     r0, r5
	bl      GetUnknownStruct01_c
	mov     r4, r0
	mov     r0, r6
	bl      Function_20509b4
	cmp     r0, #0x0
	bne     branch_203b672
	mov     r1, #0x72
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	mov     r0, r5
	blx     r1
branch_203b672: @ 203b672 :thumb
	pop     {r4-r6,pc}
@ 0x203b674


.thumb
Function_203b674: @ 203b674 :thumb
	mov     r2, #0x72
	lsl     r2, r2, #2
	str     r1, [r0, r2]
	mov     r1, #0x3
	strh    r1, [r0, #0x2a]
	bx      lr
@ 0x203b680


.thumb
Function_203b680: @ 203b680 :thumb
	push    {r4,lr}
	bl      GetUnknownStruct01_c
	mov     r4, r0
	mov     r0, #0x0
	bl      0x21d1744
	mov     r0, #0x72
	ldr     r1, [pc, #0xc] @ 0x203b6a0, (=Function_203b6a4+1)
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r0, #0x2
	strh    r0, [r4, #0x2a]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x203b69e

.align 2
.word Function_203b6a4+1 @ 0x203b6a0



.thumb
Function_203b6a4: @ 203b6a4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r0
	bl      LoadOverWorldDataAdress
	mov     r5, r0
	mov     r0, r4
	bl      GetUnknownStruct01_c
	mov     r6, r0
	mov     r0, #0xb
	mov     r1, #0x20
	bl      malloc
	mov     r4, r0
	ldr     r0, [r5, #0xc]
	bl      LoadPokedexDataAdress
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0xc]
	bl      LoadTrainerDataAdress
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0xc]
	bl      LoadFlagAdress
	mov     r7, r0
	ldr     r0, [sp, #0x0]
	str     r0, [r4, #0x0]
	ldr     r0, [sp, #0x4]
	str     r0, [r4, #0x4]
	mov     r0, r5
	bl      Function_2055ba8
	str     r0, [r4, #0x8]
	mov     r0, r7
	mov     r1, #0x0
	bl      Function_206b1f0
	str     r0, [r4, #0xc]
	mov     r0, r7
	mov     r1, #0x1
	bl      Function_206b1f0
	str     r0, [r4, #0x10]
	mov     r0, r7
	mov     r1, #0x2
	bl      Function_206b1f0
	str     r0, [r4, #0x14]
	mov     r0, r7
	mov     r1, #0x3
	bl      Function_206b1f0
	str     r0, [r4, #0x18]
	mov     r0, r5
	add     r0, #0xb4
	ldr     r0, [r0, #0x0]
	mov     r1, r4
	str     r0, [r4, #0x1c]
	mov     r0, r5
	bl      Function_203e0ac
	mov     r0, #0x7e
	lsl     r0, r0, #2
	str     r4, [r6, r0]
	ldr     r1, [pc, #0x8] @ 0x203b734, (=0x203b739)
	sub     r0, #0x30
	str     r1, [r6, r0]
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x203b734

.word Function_203b738+1 @ 0x203b734



.thumb
Function_203b738: @ 203b738 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      LoadOverWorldDataAdress
	mov     r5, r0
	mov     r0, r4
	bl      GetUnknownStruct01_c
	mov     r4, r0
	mov     r0, r5
	bl      Function_20509d4
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_203b760
	mov     r0, #0xb
	bl      Function_2018238
branch_203b760: @ 203b760 :thumb
	mov     r0, #0xc
	strh    r0, [r4, #0x2a]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203b768


.thumb
Function_203b768: @ 203b768 :thumb
	push    {r4,lr}
	bl      GetUnknownStruct01_c
	mov     r4, r0
	mov     r0, #0x0
	bl      0x21d1744
	mov     r0, #0x72
	ldr     r1, [pc, #0xc] @ 0x203b788, (=0x203b78d)
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r0, #0x2
	strh    r0, [r4, #0x2a]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x203b786

.align 2
.word Function_203b78c+1 @ 0x203b788



.thumb
Function_203b78c: @ 203b78c :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      LoadOverWorldDataAdress
	mov     r5, r0
	mov     r0, r4
	bl      GetUnknownStruct01_c
	mov     r1, #0x7a
	mov     r4, r0
	lsl     r1, r1, #2
	mov     r0, r5
	add     r1, r4, r1
	mov     r2, #0x0
	bl      Function_203d390
	mov     r1, #0x7e
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [pc, #0x8] @ 0x203b7bc, (=0x203b7c1)
	sub     r1, #0x30
	str     r0, [r4, r1]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203b7bc

.word Function_203b7c0+1 @ 0x203b7bc



.thumb
Function_203b7c0: @ 203b7c0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r7, r0
	bl      LoadOverWorldDataAdress
	mov     r5, r0

	mov     r0, r7
	bl      GetUnknownStruct01_c
	mov     r4, r0
	mov     r0, #0xb
	mov     r1, #0x40
	bl      malloc
	mov     r1, #0x7e
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	mov     r2, #0x40
	mov     r6, r0
	blx     CopyDataInByteSteps
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      free
	mov     r0, r6
	add     r0, #0x23
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x17
	bls     branch_203b800
	b       branch_203bb56

branch_203b800: @ 203b800 :thumb
	add     r1, r0, r0
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x203b80c

Jumppoints_203b80c:
.hword branch_203bb56 - Jumppoints_203b80c - 2
.hword branch_203b83c - Jumppoints_203b80c - 2
.hword branch_203bb56 - Jumppoints_203b80c - 2
.hword branch_203ba5a - Jumppoints_203b80c - 2
.hword branch_203b8ba - Jumppoints_203b80c - 2
.hword branch_203b940 - Jumppoints_203b80c - 2
.hword branch_203b9c6 - Jumppoints_203b80c - 2
.hword branch_203ba1c - Jumppoints_203b80c - 2
.hword branch_203bab4 - Jumppoints_203b80c - 2
.hword branch_203bae0 - Jumppoints_203b80c - 2
.hword branch_203bb3a - Jumppoints_203b80c - 2
.hword branch_203bb14 - Jumppoints_203b80c - 2
.hword branch_203bb14 - Jumppoints_203b80c - 2
.hword branch_203bb14 - Jumppoints_203b80c - 2
.hword branch_203bb14 - Jumppoints_203b80c - 2
.hword branch_203bb14 - Jumppoints_203b80c - 2
.hword branch_203bb14 - Jumppoints_203b80c - 2
.hword branch_203bb14 - Jumppoints_203b80c - 2
.hword branch_203bb14 - Jumppoints_203b80c - 2
.hword branch_203bb14 - Jumppoints_203b80c - 2
.hword branch_203bb14 - Jumppoints_203b80c - 2
.hword branch_203bb14 - Jumppoints_203b80c - 2
.hword branch_203bb14 - Jumppoints_203b80c - 2
.hword branch_203bb14 - Jumppoints_203b80c - 2
.thumb
branch_203b83c: @ 203b83c :thumb
	mov     r0, #0xb
	mov     r1, #0x30
	bl      malloc
	mov     r7, r0

	ldr     r0, [r5, #OverWorldData_VariableAreaAdress]
	bl      LoadPokePartyAdress
	str     r0, [r7, #0x0]

	ldr     r0, [r5, #OverWorldData_VariableAreaAdress]
	bl      LoadPlayerDataAdress
	str     r0, [r7, #0x4]
	mov     r0, #0x1
	strb    r0, [r7, #0x11]
	mov     r0, r6
	add     r0, #0x22
	ldrb    r0, [r0, #0x0]
	strb    r0, [r7, #0x14]
	ldr     r0, [r7, #0x0]
	bl      GetNrOfPkmnInParty
	strb    r0, [r7, #0x13]
	mov     r0, #0x0
	strh    r0, [r7, #0x18]
	strb    r0, [r7, #0x12]

	ldr     r0, [r5, #OverWorldData_VariableAreaAdress]
	bl      LoadVariableAreaAdress_18
	str     r0, [r7, #0x20]

	ldr     r0, [r5, #OverWorldData_VariableAreaAdress]
	bl      Function_207a274
	str     r0, [r7, #0x1c]

	ldr     r0, [r5, #OverWorldData_VariableAreaAdress]
	bl      Function_208c324
	str     r0, [r7, #0x2c]
	mov     r0, #0x0
	str     r0, [r7, #0x28]
	ldr     r1, [pc, #0x34c] @ 0x203bbdc, (=Unknown_20ea02c)
	mov     r0, r7
	bl      Function_208d720

	ldr     r0, [r5, #OverWorldData_VariableAreaAdress]
	bl      LoadTrainerDataAdress
	mov     r1, r0
	mov     r0, r7
	bl      Function_208e9c0
	mov     r0, r5
	mov     r1, r7
	bl      Function_203d334
	mov     r0, #0x7e
	lsl     r0, r0, #2
	str     r7, [r4, r0]
	ldr     r1, [pc, #0x32c] @ 0x203bbe0, (=0x203c1c9)
	mov     r0, r4
	bl      Function_203b674
	b       branch_203bbce

branch_203b8ba: @ 203b8ba :thumb
	mov     r0, #0xb
	mov     r1, #0x30
	bl      malloc
	mov     r7, r0

	ldr     r0, [r5, #OverWorldData_VariableAreaAdress]
	bl      LoadPokePartyAdress
	str     r0, [r7, #0x0]

	ldr     r0, [r5, #OverWorldData_VariableAreaAdress]
	bl      LoadPlayerDataAdress
	str     r0, [r7, #0x4]
	mov     r1, #0x1
	mov     r0, r6
	strb    r1, [r7, #0x11]
	add     r0, #0x22
	ldrb    r0, [r0, #0x0]
	strb    r0, [r7, #0x14]
	strb    r1, [r7, #0x13]
	ldrh    r0, [r6, #0x26]
	strh    r0, [r7, #0x18]
	mov     r0, #0x2
	strb    r0, [r7, #0x12]

	ldr     r0, [r5, #OverWorldData_VariableAreaAdress]
	bl      Function_207a274
	str     r0, [r7, #0x1c]

	ldr     r0, [r5, #OverWorldData_VariableAreaAdress]
	bl      Function_208c324
	str     r0, [r7, #0x2c]
	mov     r0, #0x0
	str     r0, [r7, #0x28]
	ldr     r1, [pc, #0x2e4] @ 0x203bbe4, (=Unknown_20ea01c)
	mov     r0, r7
	bl      Function_208d720

	ldr     r0, [r5, #OverWorldData_VariableAreaAdress]
	bl      LoadTrainerDataAdress
	mov     r1, r0
	mov     r0, r7
	bl      Function_208e9c0

	mov     r0, r5
	mov     r1, r7
	bl      Function_203d334
	mov     r0, #0xb
	mov     r1, #0x4
	bl      malloc
	ldrh    r1, [r6, #0x24]
	strh    r1, [r0, #0x0]
	mov     r1, #0x0
	strh    r1, [r0, #0x2]
	mov     r1, #0x7f
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	sub     r0, r1, #0x4
	str     r7, [r4, r0]
	ldr     r1, [pc, #0x2a8] @ 0x203bbe0, (=0x203c1c9)
	mov     r0, r4
	bl      Function_203b674
	b       branch_203bbce

branch_203b940: @ 203b940 :thumb
	mov     r0, #0xb
	mov     r1, #0x30
	bl      malloc
	mov     r7, r0

	ldr     r0, [r5, #OverWorldData_VariableAreaAdress]
	bl      LoadPokePartyAdress
	str     r0, [r7, #0x0]

	ldr     r0, [r5, #OverWorldData_VariableAreaAdress]
	bl      LoadPlayerDataAdress
	str     r0, [r7, #0x4]
	mov     r1, #0x1
	mov     r0, r6
	strb    r1, [r7, #0x11]
	add     r0, #0x22
	ldrb    r0, [r0, #0x0]
	strb    r0, [r7, #0x14]
	strb    r1, [r7, #0x13]
	ldrh    r0, [r6, #0x26]
	strh    r0, [r7, #0x18]
	mov     r0, #0x2
	strb    r0, [r7, #0x12]

	ldr     r0, [r5, #OverWorldData_VariableAreaAdress]
	bl      Function_207a274
	str     r0, [r7, #0x1c]

	ldr     r0, [r5, #OverWorldData_VariableAreaAdress]
	bl      Function_208c324
	str     r0, [r7, #0x2c]
	mov     r0, #0x0
	str     r0, [r7, #0x28]
	ldr     r1, [pc, #0x25c] @ 0x203bbe4, (=Unknown_20ea01c)
	mov     r0, r7
	bl      Function_208d720

	ldr     r0, [r5, #OverWorldData_VariableAreaAdress]
	bl      LoadTrainerDataAdress
	mov     r1, r0
	mov     r0, r7
	bl      Function_208e9c0
	mov     r0, r5
	mov     r1, r7
	bl      Function_203d334
	mov     r0, #0xb
	mov     r1, #0x4
	bl      malloc
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	ldr     r1, [r6, #0x34]
	strh    r1, [r0, #0x2]
	mov     r1, #0x7f
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	.hword  0x1f08 @ sub r0, r1, #0x4
	str     r7, [r4, r0]
	ldr     r1, [pc, #0x220] @ 0x203bbe0, (=0x203c1c9)
	mov     r0, r4
	bl      Function_203b674
	b       branch_203bbce
@ 0x203b9c6

.thumb
branch_203b9c6: @ 203b9c6 :thumb
	ldrh    r0, [r6, #0x24]
	bl      Function_207d2f0
	mov     r3, r0
	mov     r0, #0xb
	mov     r2, r6
	str     r0, [sp, #0x0]
	add     r2, #0x22
	ldrb    r2, [r2, #0x0]
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_203d920
	mov     r1, #0x7e
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, r6
	add     r0, #0x20
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0xa
	ldrh    r0, [r6, #0x24]
	bne     branch_203ba00
	mov     r2, r6
	add     r2, #0x22
	ldrb    r2, [r2, #0x0]
	mov     r1, #0x0
	bl      Function_203c540
	b       branch_203ba0c
@ 0x203ba00

.thumb
branch_203ba00: @ 203ba00 :thumb
	mov     r2, r6
	add     r2, #0x22
	ldrb    r2, [r2, #0x0]
	mov     r1, #0x1
	bl      Function_203c540
.thumb
branch_203ba0c: @ 203ba0c :thumb
	mov     r1, #0x7f
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r1, [pc, #0x1d4] @ 0x203bbe8, (=0x203c559)
	mov     r0, r4
	bl      Function_203b674
	b       branch_203bbce

branch_203ba1c: @ 203ba1c :thumb
	ldr     r0, [r5, #OverWorldData_VariableAreaAdress]
	bl      LoadPokePartyAdress
	mov     r1, r6
	add     r1, #0x22
	ldrb    r1, [r1, #0x0]
	bl      GetAdrOfPkmnInParty
	mov     r1, r0
	mov     r0, r5
	mov     r2, #0xb
	bl      Function_203d984
	mov     r1, #0x7e
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r2, r6
	add     r2, #0x22
	ldrh    r0, [r6, #0x24]
	ldrb    r2, [r2, #0x0]
	mov     r1, #0x2
	bl      Function_203c540
	mov     r1, #0x7f
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r1, [pc, #0x194] @ 0x203bbe8, (=0x203c559)
	mov     r0, r4
	bl      Function_203b674
	b       branch_203bbce
@ 0x203ba5a

.thumb
branch_203ba5a: @ 203ba5a :thumb
	mov     r0, #0xb
	mov     r1, #0x4
	bl      malloc
	mov     r1, r6
	add     r1, #0x22
	ldrb    r1, [r1, #0x0]
	str     r1, [r0, #0x0]
	mov     r1, #0x7f
	lsl     r1, r1, #2
	str     r0, [r4, r1]

	ldr     r0, [r5, #OverWorldData_VariableAreaAdress]
	bl      LoadVariableAreaAdressItemList
	mov     r7, r0

	ldr     r0, [r5, #OverWorldData_VariableAreaAdress]
	bl      LoadTrainerDataAdress
	ldr     r1, [pc, #0x16c] @ 0x203bbec, (=Unknown_20ea020)
	mov     r0, r7
	mov     r2, #0xb
	bl      Function_207d824
	mov     r1, #0x7e
	lsl     r1, r1, #2
	mov     r3, r5
	str     r0, [r4, r1]
	add     r3, #0x98
	ldr     r0, [r4, r1]
	ldr     r1, [r5, #OverWorldData_VariableAreaAdress]
	ldr     r3, [r3, #0x0]
	mov     r2, #0x1
	bl      Function_207cb2c
	mov     r1, #0x7e
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	mov     r0, r5
	bl      Function_203d1e4
	ldr     r1, [pc, #0x144] @ 0x203bbf0, (=0x203bc5d)
	mov     r0, r4
	bl      Function_203b674
	b       branch_203bbce
@ 0x203bab4

.thumb
branch_203bab4: @ 203bab4 :thumb
	mov     r0, #0xb
	mov     r1, #0xc
	bl      malloc
	ldrh    r1, [r6, #0x24]
	strh    r1, [r0, #0x2]
	mov     r1, #0x3
	strb    r1, [r0, #0x1]
	mov     r1, r6
	add     r1, #0x22
	ldrb    r1, [r1, #0x0]
	strb    r1, [r0, #0x0]
	ldrh    r1, [r6, #0x38]
	strh    r1, [r0, #0x4]
	ldr     r1, [r6, #0x3c]
	str     r1, [r0, #0x8]
	mov     r1, #0x7e
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x6
	strh    r0, [r4, #0x2a]
	b       branch_203bbce
@ 0x203bae0

.thumb
branch_203bae0: @ 203bae0 :thumb
	mov     r0, #0xb
	mov     r1, #0xc
	bl      malloc
	mov     r7, r0
	ldr     r0, [r5, #0x1c]
	ldr     r0, [r0, #0x0]
	bl      Function_203a354
	strh    r0, [r7, #0x2]
	mov     r0, #0x0
	strb    r0, [r7, #0x1]
	mov     r0, r6
	add     r0, #0x22
	ldrb    r0, [r0, #0x0]
	strb    r0, [r7, #0x0]
	ldrh    r0, [r6, #0x38]
	strh    r0, [r7, #0x4]
	ldr     r0, [r6, #0x3c]
	str     r0, [r7, #0x8]
	mov     r0, #0x7e
	lsl     r0, r0, #2
	str     r7, [r4, r0]
	mov     r0, #0x6
	strh    r0, [r4, #0x2a]
	b       branch_203bbce
@ 0x203bb14

.thumb
branch_203bb14: @ 203bb14 :thumb
	sub     r0, #0xb
	add     r1, sp, #0x4
	strh    r0, [r1, #0x6]
	mov     r0, r6
	add     r0, #0x22
	ldrb    r0, [r0, #0x0]
	strh    r0, [r1, #0x4]
	str     r7, [sp, #0x4]
	ldrh    r1, [r1, #0x6]
	mov     r0, #0x0
	bl      Function_207070c
	mov     r1, #0x7a
	lsl     r1, r1, #2
	mov     r2, r0
	add     r0, sp, #0x4
	add     r1, r4, r1
	blx     r2
	b       branch_203bbce
@ 0x203bb3a

.thumb
branch_203bb3a: @ 203bb3a :thumb
	mov     r1, #0x73
	lsl     r1, r1, #2
	mov     r0, r5
	add     r1, r4, r1
	bl      Function_203d20c
	mov     r1, #0x7e
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r1, [pc, #0xa0] @ 0x203bbf0, (=0x203bc5d)
	mov     r0, r4
	bl      Function_203b674
	b       branch_203bbce
@ 0x203bb56

.thumb
branch_203bb56: @ 203bb56 :thumb
	mov     r0, r6
	add     r0, #0x20
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x5
	beq     branch_203bb70
	cmp     r0, #0x6
	beq     branch_203bb70
	cmp     r0, #0x7
	beq     branch_203bb70
	cmp     r0, #0x10
	beq     branch_203bb70
	cmp     r0, #0x8
	bne     branch_203bba4
.thumb
branch_203bb70: @ 203bb70 :thumb
	mov     r1, #0x73
	lsl     r1, r1, #2
	mov     r0, r5
	add     r1, r4, r1
	bl      Function_203d20c
	mov     r2, #0x7e
	lsl     r2, r2, #2
	str     r0, [r4, r2]
	mov     r0, r6
	add     r0, #0x22
	ldrb    r1, [r0, #0x0]
	ldr     r0, [r4, r2]
	cmp     r1, #0x6
	blo     branch_203bb96
	mov     r1, #0x0
	bl      Function_207cb70
	b       branch_203bb9a
@ 0x203bb96

.thumb
branch_203bb96: @ 203bb96 :thumb
	bl      Function_207cb70
.thumb
branch_203bb9a: @ 203bb9a :thumb
	ldr     r1, [pc, #0x54] @ 0x203bbf0, (=0x203bc5d)
	mov     r0, r4
	bl      Function_203b674
	b       branch_203bbce
@ 0x203bba4

.thumb
branch_203bba4: @ 203bba4 :thumb
	cmp     r0, #0x9
	bne     branch_203bbc4
	mov     r1, #0x73
	lsl     r1, r1, #2
	mov     r0, r5
	add     r1, r4, r1
	bl      Function_203d20c
	mov     r1, #0x7e
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r1, [pc, #0x34] @ 0x203bbf0, (=0x203bc5d)
	mov     r0, r4
	bl      Function_203b674
	b       branch_203bbce
@ 0x203bbc4

.thumb
branch_203bbc4: @ 203bbc4 :thumb
	mov     r0, r5
	bl      Function_20509d4
	mov     r0, #0xc
	strh    r0, [r4, #0x2a]
branch_203bbce: @ 203bbce :thumb
	mov     r0, r6
	bl      free
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x203bbda

.align 2
.word Unknown_20ea02c @ 0x203bbdc
.word Function_203c1c8+1 @ 0x203bbe0
.word Unknown_20ea01c @ 0x203bbe4
.word Function_203c558+1 @ =0x203c559, 0x203bbe8
.word Unknown_20ea020 @ 0x203bbec
.word Function_203bc5c+1 @ 0x203bbf0



.thumb
Function_203bbf4: @ 203bbf4 :thumb
	push    {r4,lr}
	bl      GetUnknownStruct01_c
	mov     r4, r0
	mov     r0, #0x0
	bl      0x21d1744
	mov     r0, #0x72
	ldr     r1, [pc, #0xc] @ 0x203bc14, (=0x203bc19)
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r0, #0x2
	strh    r0, [r4, #0x2a]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x203bc12

.align 2
.word Function_203bc18+1 @ 0x203bc14



.thumb
Function_203bc18: @ 203bc18 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      LoadOverWorldDataAdress
	mov     r5, r0
	mov     r0, r4
	bl      GetUnknownStruct01_c
	mov     r1, #0x73
	mov     r4, r0
	lsl     r1, r1, #2
	mov     r0, r5
	add     r1, r4, r1
	bl      Function_203d20c
	mov     r1, #0x7e
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	mov     r1, #0x0
	bl      Function_207cb70
	mov     r0, #0x72
	ldr     r1, [pc, #0x10] @ 0x203bc58, (=0x203bc5d)
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r0, r5
	bl      Function_5_21e2064
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203bc56

.align 2
.word Function_203bc5c+1 @ 0x203bc58



.thumb
Function_203bc5c: @ 203bc5c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	bl      LoadOverWorldDataAdress
	mov     r6, r0

	mov     r0, r5
	bl      GetUnknownStruct01_c
	mov     r4, r0
	mov     r0, #0xb
	bl      Function_207cb08
	str     r0, [sp, #0x8]
	bl      Function_207cb20
	mov     r1, #0x7e
	lsl     r1, r1, #2
	mov     r2, r0
	ldr     r0, [sp, #0x8]
	ldr     r1, [r4, r1]
	blx     CopyDataInByteSteps
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      free
	ldr     r0, [sp, #0x8]
	bl      Function_207cb9c
	cmp     r0, #0x5
	bls     branch_203bca0
	b       branch_203be68

branch_203bca0: @ 203bca0 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x203bcac

Jumppoints_203bcac:
.hword branch_203bcb8 - Jumppoints_203bcac - 2
.hword branch_203bcf2 - Jumppoints_203bcac - 2
.hword branch_203bd02 - Jumppoints_203bcac - 2
.hword branch_203be68 - Jumppoints_203bcac - 2
.hword branch_203bd70 - Jumppoints_203bcac - 2
.hword branch_203be68 - Jumppoints_203bcac - 2
.thumb
branch_203bcb8: @ 203bcb8 :thumb
	ldr     r0, [sp, #0x8]
	bl      Function_207cb94
	add     r1, sp, #0x10
	strh    r0, [r1, #0x4]
	ldr     r0, [sp, #0x8]
	bl      Function_207cba4
	add     r1, sp, #0x10
	strb    r0, [r1, #0x6]
	str     r5, [sp, #0x10]
	ldrh    r0, [r1, #0x4]
	mov     r1, #ITEMDATA_6
	mov     r2, #0xb
	bl      GetItemData
	mov     r1, r0
	lsl     r1, r1, #16
	mov     r0, #0x0
	lsr     r1, r1, #16
	bl      Function_20683f4
	mov     r1, #0x73
	lsl     r1, r1, #2
	mov     r2, r0
	add     r0, sp, #0x10
	add     r1, r4, r1
	blx     r2
	b       branch_203be72
@ 0x203bcf2

.thumb
branch_203bcf2: @ 203bcf2 :thumb
	ldr     r0, [sp, #0x8]
	bl      Function_207cb94
	mov     r1, r0
	mov     r0, r5
	bl      Function_203c2d8
	b       branch_203be72
@ 0x203bd02

.thumb
branch_203bd02: @ 203bd02 :thumb
	mov     r0, #0xb
	mov     r1, #0x40
	bl      malloc
	mov     r1, #0x0
	mov     r2, #0x40
	mov     r5, r0
	blx     Call_FillMemWithValue
	ldr     r0, [r6, #OverWorldData_VariableAreaAdress]
	bl      LoadPokePartyAdress
	str     r0, [r5, #0x0]

	ldr     r0, [r6, #OverWorldData_VariableAreaAdress]
	bl      LoadVariableAreaAdressItemList
	str     r0, [r5, #0x4]

	ldr     r0, [r6, #OverWorldData_VariableAreaAdress]
	bl      LoadVariableAreaAdress_f
	str     r0, [r5, #0x8]

	ldr     r0, [r6, #OverWorldData_VariableAreaAdress]
	bl      LoadPlayerDataAdress
	str     r0, [r5, #0xc]

	mov     r0, #0x7a
	lsl     r0, r0, #2
	add     r0, r4, r0
	str     r0, [r5, #0x18]
	mov     r0, r5
	mov     r1, #0x0
	add     r0, #0x21
	strb    r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0x9
	add     r0, #0x20
	strb    r1, [r0, #0x0]
	ldr     r0, [sp, #0x8]
	bl      Function_207cb94
	strh    r0, [r5, #0x24]
	ldr     r1, [pc, #0x128] @ 0x203be80, (=Unknown_20f1e88)
	mov     r0, r6
	mov     r2, r5
	str     r6, [r5, #0x1c]
	bl      OverWorldData_AllocAndInitOverlayData
	mov     r0, #0x7e
	lsl     r0, r0, #2
	str     r5, [r4, r0]
	ldr     r1, [pc, #0x11c] @ 0x203be84, (=0x203b7c1)
	mov     r0, r4
	bl      Function_203b674
	b       branch_203be72

branch_203bd70: @ 203bd70 :thumb
	ldr     r0, [r6, #OverWorldData_VariableAreaAdress]
	bl      LoadPokePartyAdress
	str     r0, [sp, #0x4]
	mov     r0, #0x7f
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	ldr     r7, [r0, #0x0]
	ldr     r0, [sp, #0x8]
	bl      Function_207cb94
	mov     r5, r0
	ldr     r0, [sp, #0x4]
	mov     r1, r7
	bl      GetAdrOfPkmnInParty
	str     r0, [sp, #0xc]
	mov     r0, #0x7f
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      free
	mov     r0, r5
	bl      Function_207d2d0
	cmp     r0, #0x1
	bne     branch_203bdee
	ldr     r0, [sp, #0xc]
	mov     r1, #0x6
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_203bdee
	mov     r0, r5
	bl      Function_207d2f0
	mov     r3, r0
	mov     r0, #0xb
	lsl     r2, r7, #24
	str     r0, [sp, #0x0]
	mov     r0, r6
	mov     r1, #0x2
	lsr     r2, r2, #24
	bl      Function_203d920
	mov     r1, #0x7e
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	lsl     r2, r7, #24
	mov     r0, r5
	mov     r1, #0x0
	lsr     r2, r2, #24
	bl      Function_203c540
	mov     r1, #0x7f
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r1, [pc, #0xa0] @ 0x203be88, (=0x203c559)
	mov     r0, r4
	bl      Function_203b674
	b       branch_203be72

branch_203bdee: @ 203bdee :thumb
	mov     r0, #0xb
	mov     r1, #0x40
	bl      malloc
	mov     r1, #0x0
	mov     r2, #0x40
	mov     r5, r0
	blx     Call_FillMemWithValue
	ldr     r0, [sp, #0x4]
	str     r0, [r5, #0x0]

	ldr     r0, [r6, #OverWorldData_VariableAreaAdress]
	bl      LoadVariableAreaAdressItemList
	str     r0, [r5, #0x4]

	ldr     r0, [r6, #OverWorldData_VariableAreaAdress]
	bl      LoadVariableAreaAdress_f
	str     r0, [r5, #0x8]

	ldr     r0, [r6, #OverWorldData_VariableAreaAdress]
	bl      LoadPlayerDataAdress
	str     r0, [r5, #0xc]
	mov     r0, #0x7a
	lsl     r0, r0, #2
	add     r0, r4, r0
	str     r0, [r5, #0x18]
	mov     r0, r5
	mov     r1, #0x0
	add     r0, #0x21
	strb    r1, [r0, #0x0]
	ldr     r0, [sp, #0x8]
	bl      Function_207cb94
	strh    r0, [r5, #0x24]
	mov     r0, r5
	add     r0, #0x22
	strb    r7, [r0, #0x0]
	str     r6, [r5, #0x1c]
	ldrh    r0, [r5, #0x24]
	cmp     r0, #0x0
	bne     branch_203be46
	mov     r1, #0x0
	b       branch_203be48

branch_203be46: @ 203be46 :thumb
	mov     r1, #0xa
branch_203be48: @ 203be48 :thumb
	mov     r0, r5
	add     r0, #0x20
	strb    r1, [r0, #0x0]
	ldr     r1, [pc, #0x30] @ 0x203be80, (=Unknown_20f1e88)
	mov     r0, r6
	mov     r2, r5
	bl      OverWorldData_AllocAndInitOverlayData
	mov     r0, #0x7e
	lsl     r0, r0, #2
	str     r5, [r4, r0]
	ldr     r1, [pc, #0x24] @ 0x203be84, (=0x203b7c1)
	mov     r0, r4
	bl      Function_203b674
	b       branch_203be72

branch_203be68: @ 203be68 :thumb
	mov     r0, r6
	bl      Function_20509d4
	mov     r0, #0xc
	strh    r0, [r4, #0x2a]
branch_203be72: @ 203be72 :thumb
	ldr     r0, [sp, #0x8]
	bl      free
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x203be7e


.align 2
.word Unknown_20f1e88 @ 0x203be80
.word Function_203b7c0+1 @ =0x203b7c1, 0x203be84
.word Function_203c558+1 @ =0x203c559, 0x203be88



.thumb
Function_203be8c: @ 203be8c :thumb
	push    {r4,lr}
	bl      GetUnknownStruct01_c
	mov     r4, r0
	mov     r0, #0x0
	bl      0x21d1744
	mov     r0, #0x72
	ldr     r1, [pc, #0xc] @ 0x203beac, (=0x203beb1)
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r0, #0x2
	strh    r0, [r4, #0x2a]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x203beaa

.align 2
.word Function_203beb0+1 @ 0x203beac



.thumb
Function_203beb0: @ 203beb0 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r0
	bl      LoadOverWorldDataAdress
	mov     r5, r0
	mov     r0, r4
	bl      GetUnknownStruct01_c
	mov     r4, r0
	mov     r0, #0xb
	bl      Function_2071f04
	mov     r1, #0x7e
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	str     r5, [sp, #0x0]
	ldr     r0, [r4, r1]
	mov     r2, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	mov     r1, r0
	mov     r3, #0xff
	bl      Function_2071d40
	mov     r1, #0x7e
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	mov     r0, r5
	bl      Function_203e09c
	mov     r0, #0x72
	ldr     r1, [pc, #0x8] @ 0x203befc, (=0x203bf01)
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x203befc

.word Function_203bf00+1 @ 0x203befc



.thumb
Function_203bf00: @ 203bf00 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      LoadOverWorldDataAdress
	mov     r5, r0
	mov     r0, r4
	bl      GetUnknownStruct01_c
	mov     r1, #0x7e
	mov     r4, r0
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	mov     r0, r5
	bl      Function_20721d4
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Call_free12
	mov     r0, r5
	bl      Function_20509d4
	mov     r0, #0xc
	strh    r0, [r4, #0x2a]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203bf36


.align 2, 0
.thumb
Function_203bf38: @ 203bf38 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      GetUnknownStruct01_c
	mov     r4, r0
	bl      Function_203b078
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_200dc9c
	ldrb    r1, [r4, #0x4]
	ldr     r0, [r4, #0x0]
	bl      Function_201c3c0
	mov     r0, r4
	bl      Function_201a8fc
	mov     r0, r5
	bl      Function_203b200
	mov     r0, #0x4
	strh    r0, [r4, #0x2a]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x203bf6a



.align 2, 0
.thumb
Function_203bf6c: @ 203bf6c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      GetUnknownStruct01_c
	mov     r4, r0
	mov     r0, r5
	bl      LoadOverWorldDataAdress
	ldr     r0, [r0, #0xc]
	bl      Function_20247e0
	cmp     r0, #0x0
	beq     branch_203bf94
	mov     r2, #0x0
	ldr     r1, [pc, #0x2c] @ 0x203bfb8, (=0x7f2)
	mov     r0, r5
	mov     r3, r2
	bl      Function_203e8e0
	b       branch_203bfb2

branch_203bf94: @ 203bf94 :thumb
	mov     r0, #0x20
	mov     r1, #0x8
	bl      malloc
	mov     r1, #0x7e
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r3, [r4, r1]
	mov     r2, #0x0
	strh    r2, [r3, #0x4]
	ldr     r1, [pc, #0x10] @ 0x203bfbc, (=0x7d5)
	mov     r0, r5
	.hword  0x1d1b @ add r3, r3, #0x4
	bl      Function_203e8e0
branch_203bfb2: @ 203bfb2 :thumb
	mov     r0, #0x5
	strh    r0, [r4, #0x2a]
	pop     {r3-r5,pc}
@ 0x203bfb8

.word 0x7f2 @ 0x203bfb8
.word 0x7d5 @ 0x203bfbc



.thumb
Function_203bfc0: @ 203bfc0 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	bl      LoadOverWorldDataAdress
	mov     r6, r0
	mov     r0, r4
	bl      GetUnknownStruct01_c
	mov     r4, r0
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r5, [r4, r0]
	ldr     r0, [r6, #0xc]
	bl      Function_20247e0
	cmp     r0, #0x0
	beq     branch_203bfe8
	mov     r0, #0x0
	strh    r0, [r4, #0x2a]
	pop     {r4-r6,pc}

branch_203bfe8: @ 203bfe8 :thumb
	ldrh    r0, [r5, #0x4]
	cmp     r0, #0x0
	bne     branch_203bff2
	mov     r0, #0x0
	b       branch_203bff4

branch_203bff2: @ 203bff2 :thumb
	mov     r0, #0xf
branch_203bff4: @ 203bff4 :thumb
	strh    r0, [r4, #0x2a]
	mov     r0, r5
	bl      free
	pop     {r4-r6,pc}
@ 0x203bffe


.align 2, 0
.thumb
Function_203c000: @ 203c000 :thumb
	push    {r4,lr}
	bl      GetUnknownStruct01_c
	mov     r4, r0
	mov     r0, #0x0
	bl      0x21d1744
	mov     r0, #0x72
	ldr     r1, [pc, #0xc] @ 0x203c020, (=0x203c025)
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r0, #0x2
	strh    r0, [r4, #0x2a]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x203c01e

.align 2
.word Function_203c024+1 @ 0x203c020



.thumb
Function_203c024: @ 203c024 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      LoadOverWorldDataAdress
	mov     r5, r0
	mov     r0, r4
	bl      GetUnknownStruct01_c
	mov     r4, r0
	mov     r0, r5
	bl      Function_203d8ec
	mov     r1, #0x7e
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [pc, #0x8] @ 0x203c04c, (=0x203c051)
	sub     r1, #0x30
	str     r0, [r4, r1]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203c04c

.word Function_203c050+1 @ 0x203c04c



.thumb
Function_203c050: @ 203c050 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      LoadOverWorldDataAdress
	mov     r5, r0
	mov     r0, r4
	bl      GetUnknownStruct01_c
	mov     r4, r0
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      free
	mov     r0, r5
	bl      Function_20509d4
	mov     r0, #0xc
	strh    r0, [r4, #0x2a]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203c07a


.align 2, 0
.thumb
Function_203c07c: @ 203c07c :thumb
	push    {r4,lr}
	bl      GetUnknownStruct01_c
	mov     r4, r0
	mov     r0, #0x0
	bl      0x21d1744
	mov     r0, #0x72
	ldr     r1, [pc, #0xc] @ 0x203c09c, (=0x203c0a1)
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r0, #0x2
	strh    r0, [r4, #0x2a]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x203c09a

.align 2
.word Function_203c0a0+1 @ 0x203c09c



.thumb
Function_203c0a0: @ 203c0a0 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r0
	bl      LoadOverWorldDataAdress
	mov     r5, r0
	mov     r0, r4
	bl      GetUnknownStruct01_c
	mov     r4, r0
	ldr     r2, [r5, #0xc]
	mov     r0, #0x2
	mov     r1, #0x0
	mov     r3, #0xb
	bl      Function_209747c
	mov     r1, #0x7e
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	add     r0, sp, #0x0
	mov     r1, #0x4
	bl      Function_2014a9c
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	add     r1, sp, #0x0
	bl      Function_2097500
	mov     r1, #0x7e
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	mov     r0, r5
	bl      Function_203d874
	mov     r0, #0x72
	ldr     r1, [pc, #0x8] @ 0x203c0f4, (=0x203c0f9)
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x203c0f4

.word Function_203c0f8+1 @ 0x203c0f4



.thumb
Function_203c0f8: @ 203c0f8 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	bl      LoadOverWorldDataAdress
	mov     r4, r0
	mov     r0, r5
	bl      GetUnknownStruct01_c
	mov     r5, r0
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2097528
	cmp     r0, #0x0
	bne     branch_203c142
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	add     r1, sp, #0x0
	bl      Function_2097540
	bl      Function_2033e1c
	cmp     r0, #0x0
	beq     branch_203c13c
	add     r0, sp, #0x0
	bl      Function_205c12c
	ldr     r0, [r4, #0x7c]
	add     r1, sp, #0x0
	bl      Function_205c010
branch_203c13c: @ 203c13c :thumb
	mov     r0, #0x8
	strh    r0, [r5, #0x2a]
	b       branch_203c146

branch_203c142: @ 203c142 :thumb
	mov     r0, #0xc
	strh    r0, [r5, #0x2a]
branch_203c146: @ 203c146 :thumb
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Call_free15
	mov     r0, r4
	bl      Function_20509d4
	add     r4, #0x80
	ldr     r0, [r4, #0x0]
	bl      Function_205c2b0
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x203c164


.thumb
Function_203c164: @ 203c164 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      LoadOverWorldDataAdress
	mov     r6, r0
	mov     r0, r5
	bl      GetUnknownStruct01_c
	mov     r4, r0
	bl      Function_203b078
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_200dc9c
	ldrb    r1, [r4, #0x4]
	ldr     r0, [r4, #0x0]
	bl      Function_201c3c0
	mov     r0, r4
	bl      Function_201a8fc
	mov     r0, r5
	bl      Function_203b200
	ldr     r0, [r6, #0xc]
	bl      LoadFlagAdress
	bl      Function_206ae5c
	cmp     r0, #0x1
	bne     branch_203c1b0
	ldr     r1, [pc, #0x1c] @ 0x203c1c4, (=0x2275)
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_203e918
	b       branch_203c1ba

branch_203c1b0: @ 203c1b0 :thumb
	mov     r0, r5
	mov     r1, #0x4
	mov     r2, #0x0
	bl      Function_203e918
branch_203c1ba: @ 203c1ba :thumb
	mov     r0, r4
	bl      free
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x203c1c4

.word 0x2275 @ 0x203c1c4



.thumb
Function_203c1c8: @ 203c1c8 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	bl      LoadOverWorldDataAdress
	mov     r6, r0

	mov     r0, r4
	bl      GetUnknownStruct01_c
	mov     r4, r0
	mov     r0, #0xb
	mov     r1, #0x30
	bl      malloc
	mov     r1, #0x7e
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	mov     r2, #0x30
	mov     r7, r0
	blx     CopyDataInByteSteps
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      free
	ldrb    r0, [r7, #0x12]
	cmp     r0, #0x2
	bne     branch_203c2aa
	mov     r0, #0xb
	mov     r1, #0x40
	bl      malloc
	mov     r1, #0x7f
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	mov     r2, #0x40
	str     r1, [sp, #0x0]
	mov     r1, #0x0
	mov     r5, r0
	blx     Call_FillMemWithValue

	ldr     r0, [r6, #OverWorldData_VariableAreaAdress]
	bl      LoadPokePartyAdress
	str     r0, [r5, #0x0]

	ldr     r0, [r6, #OverWorldData_VariableAreaAdress]
	bl      LoadVariableAreaAdressItemList
	str     r0, [r5, #0x4]

	ldr     r0, [r6, #OverWorldData_VariableAreaAdress]
	bl      LoadVariableAreaAdress_f
	str     r0, [r5, #0x8]

	ldr     r0, [r6, #OverWorldData_VariableAreaAdress]
	bl      LoadPlayerDataAdress
	str     r0, [r5, #0xc]

	mov     r0, #0x7a
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, r5
	str     r0, [r5, #0x18]
	mov     r0, #0x0
	add     r1, #0x21
	strb    r0, [r1, #0x0]
	ldr     r1, [sp, #0x0]
	str     r6, [r5, #0x1c]
	ldrh    r1, [r1, #0x0]
	cmp     r1, #0x0
	beq     branch_203c25e
	mov     r1, r5
	mov     r2, #0x7
	add     r1, #0x20
	strb    r2, [r1, #0x0]
	b       branch_203c26a

branch_203c25e: @ 203c25e :thumb
	mov     r0, r5
	mov     r1, #0x8
	add     r0, #0x20
	strb    r1, [r0, #0x0]
	ldr     r0, [sp, #0x0]
	ldrh    r0, [r0, #0x2]
branch_203c26a: @ 203c26a :thumb
	str     r0, [r5, #0x34]
	ldr     r0, [sp, #0x0]
	mov     r2, r5
	ldrh    r0, [r0, #0x0]
	strh    r0, [r5, #0x24]
	mov     r0, r5
	ldrb    r1, [r7, #0x14]
	add     r0, #0x22
	strb    r1, [r0, #0x0]
	ldrh    r0, [r7, #0x18]
	strh    r0, [r5, #0x26]
	mov     r0, r5
	ldrb    r1, [r7, #0x16]
	add     r0, #0x28
	strb    r1, [r0, #0x0]
	ldr     r1, [pc, #0x44] @ 0x203c2d0, (=Unknown_20f1e88)
	mov     r0, r6
	bl      OverWorldData_AllocAndInitOverlayData
	mov     r0, #0x7f
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      free
	mov     r0, #0x7e
	lsl     r0, r0, #2
	str     r5, [r4, r0]
	ldr     r1, [pc, #0x30] @ 0x203c2d4, (=0x203b7c1)
	mov     r0, r4
	bl      Function_203b674
	b       branch_203c2c6

branch_203c2aa: @ 203c2aa :thumb
	mov     r1, #0x7a
	lsl     r1, r1, #2
	ldrb    r2, [r7, #0x14]
	mov     r0, r6
	add     r1, r4, r1
	bl      Function_203d390
	mov     r1, #0x7e
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r1, [pc, #0x14] @ 0x203c2d4, (=0x203b7c1)
	mov     r0, r4
	bl      Function_203b674
branch_203c2c6: @ 203c2c6 :thumb
	mov     r0, r7
	bl      free
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x203c2d0

.word Unknown_20f1e88 @ 0x203c2d0
.word Function_203b7c0+1 @ =0x203b7c1, 0x203c2d4



.thumb
Function_203c2d8: @ 203c2d8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r4, r1
	bl      LoadOverWorldDataAdress
	str     r0, [sp, #0x4]
	mov     r0, r5
	bl      GetUnknownStruct01_c
	mov     r6, r0
	mov     r0, #0xb
	bl      Function_20972fc
	mov     r1, #0x7e
	lsl     r1, r1, #2
	str     r0, [r6, r1]
	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdressItemList
	str     r0, [sp, #0x0]
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	mov     r1, r4
	mov     r2, #0x1
	bl      Function_2097320
	mov     r5, #0x0
	mov     r4, r5
branch_203c316: @ 203c316 :thumb
	mov     r0, r4
	bl      Function_207d354
	mov     r7, r0
	ldr     r0, [sp, #0x0]
	mov     r1, r7
	mov     r2, #0x1
	mov     r3, #0xb
	bl      CheckItem
	cmp     r0, #0x1
	bne     branch_203c342
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	mov     r1, r7
	mov     r2, #0x0
	bl      Function_2097320
	add     r0, r5, #0x1
	lsl     r0, r0, #24
	lsr     r5, r0, #24
branch_203c342: @ 203c342 :thumb
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0x40
	blo     branch_203c316
	ldr     r0, [sp, #0x4]
	add     r3, sp, #0x8
	add     r0, #0x98
	ldr     r0, [r0, #0x0]
	mov     r1, #0x4
	add     r2, sp, #0x8
	add     r3, #0x1
	bl      Function_207d9b4
	mov     r0, #0x7e
	add     r2, sp, #0x8
	lsl     r0, r0, #2
	ldrb    r1, [r2, #0x1]
	add     r3, r5, #0x3
	lsl     r3, r3, #24
	ldrb    r2, [r2, #0x0]
	ldr     r0, [r6, r0]
	lsr     r3, r3, #24
	bl      Function_209733c
	mov     r1, #0x7e
	lsl     r1, r1, #2
	ldr     r0, [sp, #0x4]
	ldr     r1, [r6, r1]
	bl      Function_203d2e4
	ldr     r1, [pc, #0x8] @ 0x203c38c, (=0x203c391)
	mov     r0, r6
	bl      Function_203b674
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x203c38c

.word Function_203c390+1 @ 0x203c38c



.thumb
Function_203c390: @ 203c390 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      LoadOverWorldDataAdress
	mov     r5, r0
	mov     r0, r4
	bl      GetUnknownStruct01_c
	mov     r4, r0
	mov     r0, #0x7e
	lsl     r0, r0, #2
	add     r1, sp, #0x0
	ldr     r0, [r4, r0]
	add     r1, #0x1
	add     r2, sp, #0x0
	bl      Function_2097390
	mov     r0, r5
	add     r3, sp, #0x0
	add     r0, #0x98
	ldrb    r2, [r3, #0x0]
	ldrb    r3, [r3, #0x1]
	ldr     r0, [r0, #0x0]
	mov     r1, #0x4
	bl      Function_207d9c8
	mov     r1, #0x7e
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	mov     r0, #0xb
	bl      Function_2018238
	mov     r1, #0x73
	lsl     r1, r1, #2
	mov     r0, r5
	add     r1, r4, r1
	bl      Function_203d20c
	mov     r1, #0x7e
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r1, [pc, #0xc] @ 0x203c3f0, (=0x203bc5d)
	mov     r0, r4
	bl      Function_203b674
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203c3ee

.align 2
.word Function_203bc5c+1 @ 0x203c3f0



.thumb
Function_203c3f4: @ 203c3f4 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      LoadOverWorldDataAdress
	mov     r5, r0
	mov     r0, r4
	bl      GetUnknownStruct01_c
	mov     r1, #0x7e
	mov     r4, r0
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	mov     r0, #0xb
	bl      Function_2018238
	mov     r1, #0x73
	lsl     r1, r1, #2
	mov     r0, r5
	add     r1, r4, r1
	bl      Function_203d20c
	mov     r1, #0x7e
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r1, [pc, #0x8] @ 0x203c430, (=Function_203bc5c+1)
	mov     r0, r4
	bl      Function_203b674
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203c430

.word Function_203bc5c+1 @ 0x203c430



.thumb
Function_203c434: @ 203c434 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r0
	bl      LoadOverWorldDataAdress
	mov     r6, r0

	mov     r0, r4
	bl      GetUnknownStruct01_c
	mov     r4, r0
	mov     r0, #0x7f
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	mov     r0, #0xb
	ldr     r7, [r1, #0x0]
	bl      Function_2018238
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r5, [r4, r0]
	ldr     r0, [r5, #0x10]
	cmp     r0, #0x0
	bne     branch_203c48a
	mov     r0, #0xb
	mov     r1, r5
	bl      Function_2018238
	mov     r1, #0x7a
	lsl     r1, r1, #2
	lsl     r2, r7, #24
	mov     r0, r6
	add     r1, r4, r1
	lsr     r2, r2, #24
	bl      Function_203d390
	mov     r1, #0x7e
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r1, [pc, #0x80] @ 0x203c504, (=0x203b7c1)
	mov     r0, r4
	bl      Function_203b674
	b       branch_203c4fe

branch_203c48a: @ 203c48a :thumb
	ldr     r0, [r6, #OverWorldData_VariableAreaAdress]
	bl      LoadPokePartyAdress
	mov     r1, r7
	bl      GetAdrOfPkmnInParty
	mov     r2, r0
	ldr     r0, [r5, #0x14]
	mov     r1, r6
	lsl     r0, r0, #5
	add     r0, #0x10
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x18]
	lsl     r0, r0, #5
	add     r0, #0x10
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x4]
	ldr     r3, [r5, #0x1c]
	mov     r0, #0xb
	lsl     r3, r3, #16
	lsr     r3, r3, #16
	bl      Function_207064c
	ldr     r1, [r5, #0x1c]
	mov     r7, r0
	lsl     r1, r1, #16
	mov     r0, #0x1
	lsr     r1, r1, #16
	mov     r2, #0xb
	bl      Function_202be00
	mov     r1, r0
	mov     r0, r6
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	mov     r2, #0x1
	bl      Function_202b758
	mov     r1, #0x7e
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	mov     r0, #0xb
	bl      Function_2018238
	mov     r0, r6
	bl      Function_20509d4
	mov     r0, #0x72
	ldr     r1, [pc, #0x14] @ 0x203c508, (=0x2070681)
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	add     r0, #0x30
	str     r7, [r4, r0]
	mov     r0, #0xa
	strh    r0, [r4, #0x2a]
branch_203c4fe: @ 203c4fe :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x203c504

.word Function_203b7c0+1 @ 0x203c504
.word Function_2070680+1 @ 0x203c508



.thumb
Function_203c50c: @ 203c50c :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      LoadOverWorldDataAdress
	mov     r5, r0
	mov     r0, r4
	bl      GetUnknownStruct01_c
	mov     r1, #0x73
	mov     r4, r0
	lsl     r1, r1, #2
	mov     r0, r5
	add     r1, r4, r1
	bl      Function_203d20c
	mov     r1, #0x7e
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r1, [pc, #0x8] @ 0x203c53c, (=Function_203bc5c+1)
	mov     r0, r4
	bl      Function_203b674
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203c53c

.word Function_203bc5c+1 @ 0x203c53c



.thumb
Function_203c540: @ 203c540 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r0, #0xb
	mov     r1, #0x4
	mov     r6, r2
	bl      malloc
	strh    r5, [r0, #0x0]
	strb    r6, [r0, #0x2]
	strb    r4, [r0, #0x3]
	pop     {r4-r6,pc}
@ 0x203c558


.thumb
Function_203c558: @ 203c558 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	bl      LoadOverWorldDataAdress
	mov     r5, r0
	mov     r0, r4
	bl      GetUnknownStruct01_c
	mov     r4, r0
	mov     r0, #0x7f
	lsl     r0, r0, #2
	ldr     r6, [r4, r0]
	ldrb    r1, [r6, #0x3]
	cmp     r1, #0x3
	bhi     branch_203c650
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x203c582

Jumppoints_203c582:
.hword branch_203c5d4 - Jumppoints_203c582 - 2
.hword branch_203c614 - Jumppoints_203c582 - 2
.hword branch_203c5ae - Jumppoints_203c582 - 2
.hword branch_203c58a - Jumppoints_203c582 - 2

.thumb
branch_203c58a: @ 203c58a :thumb
	.hword  0x1f00 @ sub r0, r0, #0x4
	ldr     r0, [r4, r0]
	bl      Function_2097770
	mov     r1, #0x73
	lsl     r1, r1, #2
	mov     r0, r5
	add     r1, r4, r1
	bl      Function_203d20c
	mov     r1, #0x7e
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r1, [pc, #0xb8] @ 0x203c660, (=0x203bc5d)
	mov     r0, r4
	bl      Function_203b674
	b       branch_203c650
@ 0x203c5ae

.thumb
branch_203c5ae: @ 203c5ae :thumb
	.hword  0x1f00 @ sub r0, r0, #0x4
	ldr     r0, [r4, r0]
	bl      Function_2097770
	mov     r1, #0x7a
	lsl     r1, r1, #2
	ldrb    r2, [r6, #0x2]
	mov     r0, r5
	add     r1, r4, r1
	bl      Function_203d390
	mov     r1, #0x7e
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r1, [pc, #0x98] @ 0x203c664, (=0x203b7c1)
	mov     r0, r4
	bl      Function_203b674
	b       branch_203c650
@ 0x203c5d4

.thumb
branch_203c5d4: @ 203c5d4 :thumb
	.hword  0x1f00 @ sub r0, r0, #0x4
	ldr     r0, [r4, r0]
	bl      Function_2097728
	cmp     r0, #0x1
	bne     branch_203c5ec
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0xc
	bl      Function_203c668
	b       branch_203c650
@ 0x203c5ec

.thumb
branch_203c5ec: @ 203c5ec :thumb
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2097770
	mov     r1, #0x7a
	lsl     r1, r1, #2
	ldrb    r2, [r6, #0x2]
	mov     r0, r5
	add     r1, r4, r1
	bl      Function_203d390
	mov     r1, #0x7e
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r1, [pc, #0x58] @ 0x203c664, (=0x203b7c1)
	mov     r0, r4
	bl      Function_203b674
	b       branch_203c650
@ 0x203c614

.thumb
branch_203c614: @ 203c614 :thumb
	.hword  0x1f00 @ sub r0, r0, #0x4
	ldr     r0, [r4, r0]
	bl      Function_2097728
	cmp     r0, #0x1
	bne     branch_203c62c
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0xb
	bl      Function_203c668
	b       branch_203c650
@ 0x203c62c

.thumb
branch_203c62c: @ 203c62c :thumb
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2097770
	mov     r1, #0x73
	lsl     r1, r1, #2
	mov     r0, r5
	add     r1, r4, r1
	bl      Function_203d20c
	mov     r1, #0x7e
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r1, [pc, #0x14] @ 0x203c660, (=0x203bc5d)
	mov     r0, r4
	bl      Function_203b674
.thumb
branch_203c650: @ 203c650 :thumb
	mov     r0, #0x7f
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      free
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x203c65e

.align 2
.word Function_203bc5c+1 @ =0x203bc5d, 0x203c660
.word Function_203b7c0+1 @ =0x203b7c1, 0x203c664



.thumb
Function_203c668: @ 203c668 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r0, #0x7f
	mov     r6, r1
	str     r2, [sp, #0x0]
	lsl     r0, r0, #2
	ldr     r7, [r6, r0]
	mov     r0, #0xb
	mov     r1, #0x40
	bl      malloc
	mov     r1, #0x0
	mov     r2, #0x40
	mov     r4, r0
	blx     Call_FillMemWithValue

	ldr     r0, [r5, #OverWorldData_VariableAreaAdress]
	bl      LoadPokePartyAdress
	str     r0, [r4, #0x0]

	ldr     r0, [r5, #OverWorldData_VariableAreaAdress]
	bl      LoadVariableAreaAdressItemList
	str     r0, [r4, #0x4]

	ldr     r0, [r5, #OverWorldData_VariableAreaAdress]
	bl      LoadVariableAreaAdress_f
	str     r0, [r4, #0x8]

	ldr     r0, [r5, #OverWorldData_VariableAreaAdress]
	bl      LoadPlayerDataAdress
	str     r0, [r4, #0xc]

	mov     r0, #0x7a
	lsl     r0, r0, #2
	add     r0, r6, r0
	str     r0, [r4, #0x18]
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0x21
	strb    r1, [r0, #0x0]
	ldrh    r0, [r7, #0x0]
	strh    r0, [r4, #0x24]
	mov     r0, r4
	ldrb    r1, [r7, #0x2]
	add     r0, #0x22
	strb    r1, [r0, #0x0]
	mov     r1, r4
	ldr     r0, [sp, #0x0]
	add     r1, #0x20
	strb    r0, [r1, #0x0]
	str     r5, [r4, #0x1c]
	ldrb    r1, [r7, #0x2]
	ldr     r0, [r4, #0x0]
	bl      GetAdrOfPkmnInParty
	mov     r1, r0
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	bl      Function_2097750
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	bl      Function_2097770
	ldr     r1, [pc, #0x18] @ 0x203c708, (=Unknown_20f1e88)
	mov     r0, r5
	mov     r2, r4
	bl      OverWorldData_AllocAndInitOverlayData
	mov     r0, #0x7e
	lsl     r0, r0, #2
	str     r4, [r6, r0]
	ldr     r1, [pc, #0xc] @ 0x203c70c, (=0x203b7c1)
	mov     r0, r6
	bl      Function_203b674
	pop     {r3-r7,pc}
@ 0x203c706

.align 2
.word Unknown_20f1e88 @ 0x203c708
.word Function_203b7c0+1 @ =0x203b7c1, 0x203c70c



.thumb
Function_203c710: @ 203c710 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      LoadOverWorldDataAdress
	mov     r5, r0
	mov     r0, r4
	bl      GetUnknownStruct01_c
	mov     r4, r0
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Call_free16
	mov     r1, #0x73
	lsl     r1, r1, #2
	mov     r0, r5
	add     r1, r4, r1
	bl      Function_203d20c
	mov     r1, #0x7e
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r1, [pc, #0xc] @ 0x203c74c, (=Function_203bc5c+1)
	mov     r0, r4
	bl      Function_203b674
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203c74a

.align 2
.word Function_203bc5c+1 @ 0x203c74c



.thumb
Function_203c750: @ 203c750 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      LoadOverWorldDataAdress
	mov     r5, r0
	mov     r0, r4
	bl      GetUnknownStruct01_c
	mov     r1, #0x73
	mov     r4, r0
	lsl     r1, r1, #2
	mov     r0, r5
	add     r1, r4, r1
	bl      Function_203d20c
	mov     r1, #0x7e
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r1, [pc, #0x8] @ 0x203c780, (=Function_203bc5c+1)
	mov     r0, r4
	bl      Function_203b674
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203c780

.word Function_203bc5c+1 @ 0x203c780



.thumb
Function_203c784: @ 203c784 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      LoadOverWorldDataAdress
	mov     r5, r0
	mov     r0, r4
	bl      GetUnknownStruct01_c
	mov     r1, #0x73
	mov     r4, r0
	lsl     r1, r1, #2
	mov     r0, r5
	add     r1, r4, r1
	bl      Function_203d20c
	mov     r1, #0x7e
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r1, [pc, #0x8] @ 0x203c7b4, (=Function_203bc5c+1)
	mov     r0, r4
	bl      Function_203b674
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203c7b4

.word Function_203bc5c+1 @ 0x203c7b4



.thumb
Function_203c7b8: @ 203c7b8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x48
	mov     r5, r0
	bl      LoadOverWorldDataAdress
	mov     r4, r0
	mov     r0, r5
	bl      GetUnknownStruct01_c
	mov     r6, r0
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r5, [r6, r0]
	bl      Function_200569c
	mov     r0, #0x3
	mov     r1, #0x49
	lsl     r2, r0, #16
	bl      Function_2017fc8
	ldr     r0, [r4, #0xc]
	bl      LoadPokePartyAdress
	ldrb    r1, [r5, #0x0]
	str     r0, [sp, #0x20]
	bl      GetAdrOfPkmnInParty
	str     r0, [sp, #0x24]
	ldrb    r0, [r5, #0x1]
	cmp     r0, #0x0
	ldr     r0, [r4, #0xc]
	bne     branch_203c84e
	bl      LoadPlayerDataAdress
	str     r0, [sp, #0x28]
	ldr     r0, [r4, #0xc]
	bl      Function_208c324
	mov     r7, r0
	ldr     r0, [r4, #0xc]
	bl      LoadPokedexDataAdress
	str     r0, [sp, #0x2c]
	ldr     r0, [r4, #0xc]
	bl      LoadVariableAreaAdressItemList
	str     r0, [sp, #0x30]
	ldr     r0, [r4, #0xc]
	bl      LoadVariableAreaAdress_14
	str     r0, [sp, #0x34]
	ldr     r0, [r4, #0xc]
	bl      LoadVariableAreaAdress_5
	ldr     r1, [sp, #0x2c]
	str     r7, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r1, [sp, #0x30]
	ldr     r3, [sp, #0x28]
	str     r1, [sp, #0x8]
	ldr     r1, [sp, #0x34]
	str     r1, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x8]
	ldr     r1, [sp, #0x24]
	str     r0, [sp, #0x14]
	mov     r0, #0x1
	str     r0, [sp, #0x18]
	mov     r0, #0x49
	str     r0, [sp, #0x1c]
	ldrh    r2, [r5, #0x4]
	ldr     r0, [sp, #0x20]
	bl      Function_207ae68
	b       branch_203c8a2

branch_203c84e: @ 203c84e :thumb
	bl      LoadPlayerDataAdress
	str     r0, [sp, #0x38]
	ldr     r0, [r4, #0xc]
	bl      Function_208c324
	mov     r7, r0
	ldr     r0, [r4, #0xc]
	bl      LoadPokedexDataAdress
	str     r0, [sp, #0x3c]
	ldr     r0, [r4, #0xc]
	bl      LoadVariableAreaAdressItemList
	str     r0, [sp, #0x40]
	ldr     r0, [r4, #0xc]
	bl      LoadVariableAreaAdress_14
	str     r0, [sp, #0x44]
	ldr     r0, [r4, #0xc]
	bl      LoadVariableAreaAdress_5
	ldr     r1, [sp, #0x3c]
	str     r7, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r1, [sp, #0x40]
	ldr     r3, [sp, #0x38]
	str     r1, [sp, #0x8]
	ldr     r1, [sp, #0x44]
	str     r1, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x8]
	ldr     r1, [sp, #0x24]
	str     r0, [sp, #0x14]
	mov     r0, #0x0
	str     r0, [sp, #0x18]
	mov     r0, #0x49
	str     r0, [sp, #0x1c]
	ldrh    r2, [r5, #0x4]
	ldr     r0, [sp, #0x20]
	bl      Function_207ae68
branch_203c8a2: @ 203c8a2 :thumb
	mov     r4, r0
	mov     r0, #0xb
	mov     r1, #0x4
	bl      malloc
	ldrb    r1, [r5, #0x0]
	str     r1, [r0, #0x0]
	mov     r1, #0x7f
	lsl     r1, r1, #2
	str     r0, [r6, r1]
	sub     r0, r1, #0x4
	ldr     r0, [r6, r0]
	bl      free
	mov     r0, #0x7e
	lsl     r0, r0, #2
	str     r4, [r6, r0]
	mov     r0, #0x7
	strh    r0, [r6, #0x2a]
	add     sp, #0x48
	pop     {r3-r7,pc}
@ 0x203c8cc


.thumb
Function_203c8cc: @ 203c8cc :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      LoadOverWorldDataAdress
	mov     r5, r0
	mov     r0, r4
	bl      GetUnknownStruct01_c
	mov     r4, r0
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_207b0d0
	cmp     r0, #0x1
	bne     branch_203c948
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_207b0e0
	mov     r0, #0x49
	bl      Function_201807c
	ldr     r0, [pc, #0x4c] @ 0x203c94c, (=0x475)
	mov     r1, #0x0
	bl      Function_20055d0
	mov     r0, #0x0
	bl      Function_2004234
	ldr     r1, [r5, #0x1c]
	mov     r0, r5
	ldr     r1, [r1, #0x0]
	bl      Function_20556a0
	mov     r1, #0x73
	lsl     r1, r1, #2
	mov     r0, r5
	add     r1, r4, r1
	bl      Function_203d20c
	mov     r1, #0x7e
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r4, r1]
	ldr     r1, [r1, #0x0]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_207cb70
	mov     r0, #0x7f
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      free
	ldr     r1, [pc, #0xc] @ 0x203c950, (=0x203bc5d)
	mov     r0, r4
	bl      Function_203b674
branch_203c948: @ 203c948 :thumb
	pop     {r3-r5,pc}
@ 0x203c94a

.align 2
.word 0x475 @ 0x203c94c
.word Function_203bc5c+1 @ =0x203bc5d, 0x203c950



.thumb
Function_203c954: @ 203c954 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r0, [r6, #0x3c]
	mov     r4, r1
	mov     r5, r2
	bl      GetSpriteFaceDirection
	mov     r7, r0
	ldr     r0, [r6, #0x3c]
	bl      GetSpritePositionX
	str     r0, [r4, #0x0]
	ldr     r0, [r6, #0x3c]
	bl      GetSpritePositionY
	str     r0, [r5, #0x0]
	cmp     r7, #0x3
	bhi     branch_203c9aa
	add     r0, r7, r7
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x203c984

Jumppoints_203c984:
.hword branch_203c98c - Jumppoints_203c984 - 2
.hword branch_203c994 - Jumppoints_203c984 - 2
.hword branch_203c99c - Jumppoints_203c984 - 2
.hword branch_203c9a4 - Jumppoints_203c984 - 2
.thumb
branch_203c98c: @ 203c98c :thumb
	ldr     r0, [r5, #0x0]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_203c9aa
@ 0x203c994

.thumb
branch_203c994: @ 203c994 :thumb
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_203c9aa
@ 0x203c99c

.thumb
branch_203c99c: @ 203c99c :thumb
	ldr     r0, [r4, #0x0]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_203c9aa
@ 0x203c9a4

.thumb
branch_203c9a4: @ 203c9a4 :thumb
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_203c9aa: @ 203c9aa :thumb
	mov     r0, r7
	pop     {r3-r7,pc}
@ 0x203c9ae


.align 2, 0
.thumb
Function_203c9b0: @ 203c9b0 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	bl      Function_205eb3c
	bl      Function_20630dc
	mov     r4, r0
	mov     r0, r5
	bl      Function_20630dc
	cmp     r4, r0
	bne     branch_203c9cc
	mov     r0, #0x1
	b       branch_203c9ce

branch_203c9cc: @ 203c9cc :thumb
	mov     r0, #0x0
branch_203c9ce: @ 203c9ce :thumb
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	pop     {r3-r5,pc}
@ 0x203c9d4


.thumb
Function_203c9d4: @ 203c9d4 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r6, r1
	add     r1, sp, #0x4
	add     r2, sp, #0x0
	mov     r5, r0
	bl      Function_203c954
	mov     r4, r0
	ldr     r1, [sp, #0x4]
	ldr     r2, [sp, #0x0]
	mov     r0, r5
	bl      Function_2054f94
	bl      Function_205dae0
	cmp     r0, #0x1
	bne     branch_203ca2e
	cmp     r4, #0x3
	bhi     branch_203ca2e
	add     r0, r4, r4
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x203ca08

Jumppoints_203ca08:
.hword branch_203ca10 - Jumppoints_203ca08 - 2
.hword branch_203ca18 - Jumppoints_203ca08 - 2
.hword branch_203ca20 - Jumppoints_203ca08 - 2
.hword branch_203ca28 - Jumppoints_203ca08 - 2
.thumb
branch_203ca10: @ 203ca10 :thumb
	ldr     r0, [sp, #0x0]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [sp, #0x0]
	b       branch_203ca2e
@ 0x203ca18

.thumb
branch_203ca18: @ 203ca18 :thumb
	ldr     r0, [sp, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x0]
	b       branch_203ca2e
@ 0x203ca20

.thumb
branch_203ca20: @ 203ca20 :thumb
	ldr     r0, [sp, #0x4]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [sp, #0x4]
	b       branch_203ca2e

branch_203ca28: @ 203ca28 :thumb
	ldr     r0, [sp, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x4]
branch_203ca2e: @ 203ca2e :thumb
	ldr     r0, [r5, #0x38]
	ldr     r1, [sp, #0x4]
	ldr     r2, [sp, #0x0]
	mov     r3, #0x0
	bl      Function_206326c
	str     r0, [r6, #0x0]
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x203ca40


.thumb
.globl Function_203ca40
Function_203ca40: @ 203ca40 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	bl      Function_203c9d4
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_203ca68
	bl      Function_2062d9c
	cmp     r0, #0x1
	bne     branch_203ca68
	ldr     r0, [r5, #0x3c]
	ldr     r1, [r4, #0x0]
	bl      Function_203c9b0
	cmp     r0, #0x1
	bne     branch_203ca68
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_203ca68: @ 203ca68 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203ca6c


.thumb
.globl Function_203ca6c
Function_203ca6c: @ 203ca6c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	str     r1, [sp, #0x0]
	str     r2, [sp, #0x4]
	add     r1, sp, #0xc
	add     r2, sp, #0x8
	mov     r6, r0
	bl      Function_203c954
	ldr     r0, [sp, #0x4]
	mov     r7, #0x0
	cmp     r0, #0x0
	ble     branch_203cae0
	ldr     r4, [sp, #0x0]
	mov     r5, r4
branch_203ca8a: @ 203ca8a :thumb
	ldr     r1, [sp, #0xc]
	ldr     r0, [r4, #0x4]
	cmp     r1, r0
	bne     branch_203cad4
	ldr     r1, [sp, #0x8]
	ldr     r0, [r4, #0x8]
	cmp     r1, r0
	bne     branch_203cad4
	ldrh    r0, [r4, #0x2]
	cmp     r0, #0x2
	bne     branch_203caba
	mov     r0, r6
	mov     r1, r5
	bl      Function_203caec
	cmp     r0, #0x1
	bne     branch_203cad4
	mov     r0, #0x14
	mov     r1, r7
	mul     r1, r0
	ldr     r0, [sp, #0x0]
	add     sp, #0x10
	ldrh    r0, [r0, r1]
	pop     {r3-r7,pc}
@ 0x203caba

.thumb
branch_203caba: @ 203caba :thumb
	mov     r0, r6
	mov     r1, r5
	bl      Function_203cb18
	cmp     r0, #0x1
	bne     branch_203cad4
	mov     r0, #0x14
	mov     r1, r7
	mul     r1, r0
	ldr     r0, [sp, #0x0]
	add     sp, #0x10
	ldrh    r0, [r0, r1]
	pop     {r3-r7,pc}
@ 0x203cad4

.thumb
branch_203cad4: @ 203cad4 :thumb
	ldr     r0, [sp, #0x4]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r4, #0x14
	add     r5, #0x14
	cmp     r7, r0
	blt     branch_203ca8a
branch_203cae0: @ 203cae0 :thumb
	ldr     r0, [pc, #0x4] @ 0x203cae8, (=0xffff)
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x203cae6

.align 2
.word 0xffff @ 0x203cae8



.thumb
Function_203caec: @ 203caec :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrh    r0, [r1, #0x2]
	cmp     r0, #0x2
	beq     branch_203cafa
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x203cafa

.thumb
branch_203cafa: @ 203cafa :thumb
	ldrh    r0, [r1, #0x0]
	bl      Function_203f2f4
	mov     r1, r0
	mov     r0, r4
	bl      LoadFlagAdressAndCheckFlag
	cmp     r0, #0x1
	beq     branch_203cb10
	mov     r0, #0x1
	b       branch_203cb12
@ 0x203cb10

.thumb
branch_203cb10: @ 203cb10 :thumb
	mov     r0, #0x0
.thumb
branch_203cb12: @ 203cb12 :thumb
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	pop     {r4,pc}
@ 0x203cb18


.thumb
Function_203cb18: @ 203cb18 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldrh    r1, [r4, #0x10]
	cmp     r1, #0x4
	bne     branch_203cb26
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x203cb26

.thumb
branch_203cb26: @ 203cb26 :thumb
	ldr     r0, [r0, #0x3c]
	bl      GetSpriteFaceDirection
	cmp     r0, #0x3
	bhi     branch_203cb7c
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x203cb3c

Jumppoints_203cb3c:
.hword branch_203cb44 - Jumppoints_203cb3c - 2
.hword branch_203cb52 - Jumppoints_203cb3c - 2
.hword branch_203cb60 - Jumppoints_203cb3c - 2
.hword branch_203cb6e - Jumppoints_203cb3c - 2
.thumb
branch_203cb44: @ 203cb44 :thumb
	ldrh    r0, [r4, #0x10]
	cmp     r0, #0x0
	beq     branch_203cb4e
	cmp     r0, #0x6
	bne     branch_203cb7c
.thumb
branch_203cb4e: @ 203cb4e :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x203cb52

.thumb
branch_203cb52: @ 203cb52 :thumb
	ldrh    r0, [r4, #0x10]
	cmp     r0, #0x3
	beq     branch_203cb5c
	cmp     r0, #0x6
	bne     branch_203cb7c
.thumb
branch_203cb5c: @ 203cb5c :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x203cb60

.thumb
branch_203cb60: @ 203cb60 :thumb
	ldrh    r0, [r4, #0x10]
	cmp     r0, #0x2
	beq     branch_203cb6a
	cmp     r0, #0x5
	bne     branch_203cb7c
.thumb
branch_203cb6a: @ 203cb6a :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x203cb6e

.thumb
branch_203cb6e: @ 203cb6e :thumb
	ldrh    r0, [r4, #0x10]
	cmp     r0, #0x1
	beq     branch_203cb78
	cmp     r0, #0x5
	bne     branch_203cb7c
branch_203cb78: @ 203cb78 :thumb
	mov     r0, #0x1
	pop     {r4,pc}

branch_203cb7c: @ 203cb7c :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x203cb80


.thumb
.globl Function_203cb80
Function_203cb80: @ 203cb80 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r0, [r5, #0x3c]
	mov     r6, r1
	mov     r4, r2
	bl      GetSpriteFaceDirection
	cmp     r0, #0x0
	beq     branch_203cb9a
	add     sp, #0x8
	ldr     r0, [pc, #0x44] @ 0x203cbdc, (=0xffff)
	pop     {r4-r6,pc}

branch_203cb9a: @ 203cb9a :thumb
	mov     r0, r5
	add     r1, sp, #0x4
	add     r2, sp, #0x0
	bl      Function_203c954
	mov     r0, #0x0
	cmp     r4, #0x0
	ble     branch_203cbd4
	ldr     r2, [sp, #0x4]
	ldr     r3, [sp, #0x0]
	mov     r1, r6
.thumb
branch_203cbb0: @ 203cbb0 :thumb
	ldr     r5, [r1, #0x4]
	cmp     r2, r5
	bne     branch_203cbcc
	ldr     r5, [r1, #0x8]
	cmp     r3, r5
	bne     branch_203cbcc
	ldrh    r5, [r1, #0x2]
	cmp     r5, #0x1
	bne     branch_203cbcc
	mov     r1, #0x14
	mul     r1, r0
	add     sp, #0x8
	ldrh    r0, [r6, r1]
	pop     {r4-r6,pc}
@ 0x203cbcc

.thumb
branch_203cbcc: @ 203cbcc :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r1, #0x14
	cmp     r0, r4
	blt     branch_203cbb0
branch_203cbd4: @ 203cbd4 :thumb
	ldr     r0, [pc, #0x4] @ 0x203cbdc, (=0xffff)
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x203cbda

.align 2
.word 0xffff @ 0x203cbdc



.thumb
.globl Function_203cbe0
Function_203cbe0: @ 203cbe0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x3c]
	mov     r4, r1
	bl      GetSpriteFaceDirection
	cmp     r0, #0x0
	beq     branch_203cbf4
	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_203cbf4: @ 203cbf4 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_203ca40
	cmp     r0, #0x1
	bne     branch_203cc10
	ldr     r0, [r4, #0x0]
	bl      GetSpriteGraphic
	sub     r0, #0x5b
	cmp     r0, #0x5
	bhi     branch_203cc10
	mov     r0, #0x1            @ true if Graphic: SPRITE_SIGNPOST, SPRITE_POSTBOX, SPRITE_GUIDEPOST
	pop     {r3-r5,pc}

branch_203cc10: @ 203cc10 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203cc14


.thumb
.globl Function_203cc14
Function_203cc14: @ 203cc14 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	str     r0, [sp, #0x0]
	ldr     r0, [r0, #0x3c]
	str     r1, [sp, #0x4]
	str     r2, [sp, #0x8]
	bl      GetSpritePositionX
	mov     r6, r0
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      GetSpritePositionY
	mov     r4, r0
	ldr     r0, [sp, #0x8]
	mov     r7, #0x0
	cmp     r0, #0x0
	ble     branch_203cc78

	ldr     r5, [sp, #0x4]
branch_203cc3a: @ 203cc3a :thumb
	ldrh    r1, [r5, #0x2]
	cmp     r6, r1
	blt     branch_203cc6e

	ldrh    r0, [r5, #0x6]
	add     r0, r1, r0
	cmp     r6, r0
	bge     branch_203cc6e

	ldrh    r1, [r5, #0x4]
	cmp     r4, r1
	blt     branch_203cc6e

	ldrh    r0, [r5, #0x8]
	add     r0, r1, r0
	cmp     r4, r0
	bge     branch_203cc6e

	ldrh    r1, [r5, #0xe]
	ldr     r0, [sp, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	ldrh    r1, [r5, #0xc]
	cmp     r1, r0
	bne     branch_203cc6e

	ldr     r0, [sp, #0x4]
	lsl     r1, r7, #4
	add     sp, #0xc
	ldrh    r0, [r0, r1]
	pop     {r4-r7,pc}

branch_203cc6e: @ 203cc6e :thumb
	ldr     r0, [sp, #0x8]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r5, #0x10
	cmp     r7, r0
	blt     branch_203cc3a

branch_203cc78: @ 203cc78 :thumb
	ldr     r0, [pc, #0x4] @ 0x203cc80, (=0xffff)
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x203cc7e

.align 2
.word 0xffff @ 0x203cc80



.thumb
AfterContinueGameDiaryEnd_Init: @ 203cc84 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      LoadPtrToOverWorldDataIn18
	mov     r4, r0

	mov     r0, r5
	bl      InitOverWorldData
	ldr     r1, [pc, #0x18] @ 0x203ccb0, (=RAM_21c07dc)
	str     r0, [r1, #0x0]
	ldr     r1, [r4, #0x4]
	cmp     r1, #0x0
	beq     branch_203cca4
	bl      Function_2053808
	b       branch_203cca8

branch_203cca4: @ 203cca4 :thumb
	bl      Function_2053704
branch_203cca8: @ 203cca8 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x203ccb0

.word RAM_21c07dc @ 0x203ccb0



thumb_func_start AfterContinueGameEnd_Init
AfterContinueGameEnd_Init: @ 203ccb4 :thumb
	push    {r3,lr}
	bl      InitOverWorldData
	ldr     r1, =RAM_21c07dc
	str     r0, [r1, #RAM_21c07dc_OverWorldData]

	bl      Function_20535cc

	mov     r0, #0x1
	pop     {r3,pc}
@ 0x203ccc6

.align 2
.pool
thumb_func_end AfterContinueGameEnd_Init



/* Input:
r0: Ptr to OverlayData
*/
.thumb
AfterContinueGame_Loop: @ 203cccc :thumb
	push    {r3,lr}
	bl      LoadOverlayData1c
	bl      Function_203ceec
	cmp     r0, #0x0
	beq     branch_203ccde

	mov     r0, #0x1
	pop     {r3,pc}

branch_203ccde: @ 203ccde :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x203cce2


.align 2, 0
.thumb
AfterContinueGame_End: @ 203cce4 :thumb
	push    {r3,lr}

	bl      Function_203ce6c

	ldr     r0, =OverlayNr77
	ldr     r1, =JumpTable_TitleScreen
	bl      SetOverlayJumpTableDataToLoad

	mov     r0, #0x1
	pop     {r3,pc}
@ 0x203ccf6

.align 2
.pool



.thumb
.globl Function_203cd00
Function_203cd00: @ 203cd00 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x4]
	cmp     r0, #0x0
	beq     branch_203cd10
	bl      ErrorHandling
branch_203cd10: @ 203cd10 :thumb

	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_203cd1c
	bl      ErrorHandling
branch_203cd1c: @ 203cd1c :thumb

	ldr     r0, [pc, #0x1c] @ 0x203cd3c, (=OverlayNr5)
	mov     r1, #0x2
	bl      LoadOverlay
	mov     r1, #0x0
	str     r1, [r4, #0x68]
	ldr     r0, [r4, #0x0]
	mov     r2, #0xb
	str     r1, [r0, #0x8]
	ldr     r0, [pc, #0x10] @ 0x203cd40, (=JumpTable_5_OverWorldEngine)
	mov     r1, r4
	bl      AllocAndInitOverlayData
	ldr     r1, [r4, #0x0]
	str     r0, [r1, #0x0]
	pop     {r4,pc}
@ 0x203cd3c

.word OverlayNr5 @ 0x203cd3c
.word JumpTable_5_OverWorldEngine @ 0x203cd40



.thumb
.globl Function_203cd44
Function_203cd44: @ 203cd44 :thumb
	mov     r1, #0x0
	str     r1, [r0, #0x68]
	bx      lr
@ 0x203cd4a


.align 2, 0
.thumb
.globl Function_203cd4c
Function_203cd4c: @ 203cd4c :thumb
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_203cd58
	mov     r0, #0x1
	bx      lr

branch_203cd58: @ 203cd58 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x203cd5c


.thumb
.globl Function_203cd5c
Function_203cd5c: @ 203cd5c :thumb
	ldr     r1, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	cmp     r1, #0x0
	beq     branch_203cd6e

	ldr     r0, [r0, #0x68]
	cmp     r0, #0x0
	beq     branch_203cd6e

	mov     r0, #0x1
	bx      lr

branch_203cd6e: @ 203cd6e :thumb
	mov     r0, #0x0
	bx      lr
@ 0x203cd72


.align 2, 0
.thumb
Function_203cd74: @ 203cd74 :thumb
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x4]
	cmp     r0, #0x0
	beq     branch_203cd80
	mov     r0, #0x1
	bx      lr

branch_203cd80: @ 203cd80 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x203cd84


/* Input:
r0: OverWorldData
r1: Ptr to JumpTable
r2: Ptr to Data

Return
r0: OverlayData
*/
thumb_func_start OverWorldData_AllocAndInitOverlayData
OverWorldData_AllocAndInitOverlayData: @ 203cd84 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #OverWorldData_0]
	mov     r4, r1
	ldr     r0, [r0, #0x4]
	mov     r6, r2
	cmp     r0, #0x0
	beq     branch_203cd98
	bl      ErrorHandling
branch_203cd98: @ 203cd98 :thumb

	mov     r0, r5
	bl      Function_203cd44

	mov     r0, r4          @ Ptr to JumpTable
	mov     r1, r6
	mov     r2, #0xb
	bl      AllocAndInitOverlayData

	ldr     r1, [r5, #OverWorldData_0]
	str     r0, [r1, #0x4]

	pop     {r4-r6,pc}
thumb_func_end OverWorldData_AllocAndInitOverlayData


thumb_func_start InitOverWorldData
InitOverWorldData: @ 203cdb0 :thumb
	push    {r3-r5,lr}
	mov     r2, #0x7
	mov     r5, r0
	mov     r0, #0x3
	mov     r1, #0xb
	lsl     r2, r2, #14
	bl      Function_2017fc8

	mov     r1, #0x20
	mov     r0, #0x3
	lsl     r2, r1, #9
	bl      Function_2017fc8

	mov     r2, #0x3
	mov     r0, #0x0
	mov     r1, #0x5b
	lsl     r2, r2, #8
	bl      Function_2017fc8

	mov     r0, r5
	mov     r1, #OverWorldData_size
	mov     r2, #0xb
	bl      MallocSomeDataAndStorePtrInOverlayData1c

	mov     r1, #0x0
	mov     r2, #OverWorldData_size
	mov     r4, r0
	blx     MI_CpuFill8

	mov     r0, #0xb
	mov     r1, #OverWorldData_0_size
	bl      malloc
	str     r0, [r4, #OverWorldData_0]

	mov     r1, #0x0
	str     r1, [r0, #OverWorldData_0_0]

	ldr     r0, [r4, #OverWorldData_0]
	str     r1, [r0, #OverWorldData_0_4]

	ldr     r0, [r4, #OverWorldData_0]
	str     r1, [r0, #OverWorldData_0_8]

	ldr     r0, [r4, #OverWorldData_0]
	str     r1, [r0, #OverWorldData_0_c]

	mov     r0, r5
	bl      LoadPtrToOverWorldDataIn18
	ldr     r0, [r0, #OverWorldData_18_8]
	str     r0, [r4, #OverWorldData_VariableAreaAdress]

	mov     r0, #0x0
	str     r0, [r4, #OverWorldData_UnknownStruct01]

	ldr     r0, [r4, #OverWorldData_VariableAreaAdress]
	bl      LoadVariableAreaAdress_6
	bl      AddVariableAreaAdress_6_MapData0
	str     r0, [r4, #OverWorldData_MapData]

	bl      Call_Malloc11aa
	str     r0, [r4, #OverWorldData_2c]

	mov     r0, r4
	mov     r1, #0xb
	bl      Malloc_OverWorldData_Overworlds

	mov     r0, #0xb
	bl      Calloc24

	mov     r1, r4
	add     r1, #OverWorldData_98
	str     r0, [r1]
	mov     r0, #0xb
	bl      Function_206940c

	mov     r1, r4
	add     r1, #OverWorldData_94
	str     r0, [r1]

	mov     r0, r4
	add     r0, #OverWorldData_94
	ldr     r0, [r0]
	bl      Function_2069434

	mov     r0, #0xb
	bl      Function_209acbc
	mov     r1, r4
	add     r1, #OverWorldData_b4
	str     r0, [r1]

	mov     r0, #0xb
	bl      Function_209c370
	mov     r1, r4
	add     r1, #OverWorldData_bc
	str     r0, [r1]

	mov     r0, r4
	pop     {r3-r5,pc}
thumb_func_end InitOverWorldData


.align 2, 0
.thumb
Function_203ce6c: @ 203ce6c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      LoadOverlayData1c
	mov     r4, r0

	ldr     r0, [r4, #OverWorldData_2c]
	bl      Call_free8

	mov     r0, r4
	bl      Free_OverWorldData_Overworlds

	mov     r0, r4
	add     r0, #OverWorldData_98
	ldr     r0, [r0]
	bl      free

	mov     r0, r4
	add     r0, #OverWorldData_94
	ldr     r0, [r0]
	bl      Call_free10

	mov     r0, r4
	add     r0, #OverWorldData_b4
	ldr     r0, [r0]
	bl      Call_free18

	mov     r0, r4
	add     r0, #OverWorldData_bc
	ldr     r0, [r0]
	bl      Call_free19

	ldr     r0, [r4, #OverWorldData_0]
	bl      free

	mov     r0, r5
	bl      FreeSomeDataAndStore0InOverlayData1c

	mov     r0, #0x5b
	bl      Function_201807c

	mov     r0, #0xb
	bl      Function_201807c

	mov     r0, #0x20
	bl      Function_201807c
	pop     {r3-r5,pc}
@ 0x203ceca


.align 2, 0
.thumb
Function_203cecc: @ 203cecc :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_203cee8

	bl      CallOverlayDataJumpTable
	cmp     r0, #0x0
	beq     branch_203cee8

	ldr     r0, [r4, #0x0]
	bl      Call_free2
	mov     r0, #0x0
	str     r0, [r4, #0x0]

branch_203cee8: @ 203cee8 :thumb
	pop     {r4,pc}
@ 0x203ceea


/* Input:
r0: OverWorldData
*/
.align 2, 0
.thumb
Function_203ceec: @ 203ceec :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_203cf5c

	mov     r0, r4
	bl      Function_2050958
	cmp     r0, #0x1
	bne     branch_203cf0e
	ldr     r0, [r4, #OverWorldData_4]
	cmp     r0, #0x0
	beq     branch_203cf0e
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	bl      Function_5_21ea714
branch_203cf0e: @ 203cf0e :thumb

	ldr     r0, [r4, #OverWorldData_0]
	ldr     r1, [r0, #OverWorldData_0_0]
	cmp     r1, #0x0
	beq     branch_203cf2a

	bl      Function_203cecc
	ldr     r0, [r4, #OverWorldData_0]
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_203cf36

	ldr     r0, =OverlayNr5
	bl      UnloadOverlay
	b       branch_203cf36

branch_203cf2a: @ 203cf2a :thumb
	ldr     r1, [r0, #OverWorldData_0_4]
	cmp     r1, #0x0
	beq     branch_203cf36
	.hword  0x1d00 @ add r0, r0, #0x4
	bl      Function_203cecc
branch_203cf36: @ 203cf36 :thumb

	ldr     r1, [r4, #OverWorldData_0]
	ldr     r0, [r1, #OverWorldData_0_c]
	cmp     r0, #0x0
	beq     branch_203cf54

	ldr     r0, [r4, #OverWorldData_UnknownStruct01]
	cmp     r0, #0x0
	bne     branch_203cf54

	ldr     r0, [r1, #OverWorldData_0_0]
	cmp     r0, #0x0
	bne     branch_203cf54

	ldr     r0, [r1, #OverWorldData_0_4]
	cmp     r0, #0x0
	bne     branch_203cf54

	mov     r0, #0x1
	pop     {r4,pc}

branch_203cf54: @ 203cf54 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x203cf58

.align 2
.pool



/* Input:
r0: OverWorldData
*/
.thumb
Function_203cf5c: @ 203cf5c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r4, r0
	ldr     r1, [r4, #OverWorldData_0]
	mov     r5, #0x0
	ldr     r1, [r1, #OverWorldData_0_8]
	cmp     r1, #0x0
	bne     branch_203cf7c

	ldr     r1, [r4, #OverWorldData_68]
	cmp     r1, #0x0
	beq     branch_203cf7c

	bl      Function_20509a4
	cmp     r0, #0x0
	bne     branch_203cf7c
	mov     r5, #0x1
branch_203cf7c: @ 203cf7c :thumb

	cmp     r5, #0x0
	beq     branch_203cf9c

	ldr     r0, [r4, #OverWorldData_SpriteStruct]
	bl      Function_205f490
	ldr     r3, [pc, #0x198] @ 0x203d120, (=RAM_21bf67c)
	add     r0, sp, #0x8
	ldr     r2, [r3, #RAM_21bf67c_48_KeyNewPressed2]
	ldr     r3, [r3, #RAM_21bf67c_44_Key]
	lsl     r2, r2, #16
	lsl     r3, r3, #16
	mov     r1, r4
	lsr     r2, r2, #16
	lsr     r3, r3, #16
	bl      0x21d1cac
branch_203cf9c: @ 203cf9c :thumb
	ldr     r0, [r4, #OverWorldData_MapData]
	ldr     r2, [r4, #OverWorldData_70]
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x180] @ 0x203d124, (=0x146)
	cmp     r1, r0
	bne     branch_203cfaa
	mov     r2, #0x0
branch_203cfaa: @ 203cfaa :thumb

	cmp     r2, #0x4
	bhi     branch_203d0aa

	add     r0, r2, r2
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x203cfba

Jumppoints_203cfba:
.hword branch_203d0aa - Jumppoints_203cfba - 2
.hword branch_203cfc4 - Jumppoints_203cfba - 2
.hword branch_203d00e - Jumppoints_203cfba - 2
.hword branch_203cfe4 - Jumppoints_203cfba - 2
.hword branch_203d03a - Jumppoints_203cfba - 2
.thumb
branch_203cfc4: @ 203cfc4 :thumb
	cmp     r5, #0x0
	beq     branch_203cfd8

	bl      Function_2058c40
	cmp     r0, #0x0
	beq     branch_203cfd8

	add     r0, sp, #0x8
	mov     r1, r4
	bl      0x21d213c

branch_203cfd8: @ 203cfd8 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_205805c
	add     sp, #0x10
	pop     {r3-r5,pc}

branch_203cfe4: @ 203cfe4 :thumb
	cmp     r5, #0x0
	beq     branch_203d002

	bl      Function_2058c40
	cmp     r0, #0x0
	beq     branch_203d000

	add     r0, sp, #0x8
	mov     r1, r4
	bl      0x21d219c
	cmp     r0, #0x1
	bne     branch_203d002

	mov     r5, #0x0
	b       branch_203d002

branch_203d000: @ 203d000 :thumb
	mov     r5, #0x0
branch_203d002: @ 203d002 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_205805c
	add     sp, #0x10
	pop     {r3-r5,pc}

branch_203d00e: @ 203d00e :thumb
	cmp     r5, #0x0
	bne     branch_203d014
	b       branch_203d11c

branch_203d014: @ 203d014 :thumb
	add     r0, sp, #0x8
	mov     r1, r4
	bl      0x21d2298
	cmp     r0, #0x1
	beq     branch_203d11c

	add     r3, sp, #0x8
	ldrh    r0, [r3, #0x6]
	mov     r2, #0x0
	str     r0, [sp, #0x0]
	str     r2, [sp, #0x4]
	ldrh    r3, [r3, #0x4]
	ldr     r0, [r4, #OverWorldData_SpriteStruct]
	ldr     r1, [r4, #OverWorldData_28]
	.hword  0x1e52 @ sub r2, r2, #0x1
	bl      Function_205f180
	add     sp, #0x10
	pop     {r3-r5,pc}

branch_203d03a: @ 203d03a :thumb
	cmp     r5, #0x0
	beq     branch_203d11c

	add     r0, sp, #0x8
	mov     r1, r4
	bl      0x21d2368
	cmp     r0, #0x1
	bne     branch_203d06e

	ldr     r0, [r4, #OverWorldData_4]
	ldr     r0, [r0, #0x8]
	bl      Function_5_21dda78
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_5_21e1bcc
	ldr     r0, [r4, #OverWorldData_SpriteStruct]
	bl      Function_5_21e0eec
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x1
	bl      Function_5_21ea714
	add     sp, #0x10
	pop     {r3-r5,pc}

branch_203d06e: @ 203d06e :thumb
	ldr     r0, [pc, #0xb0] @ 0x203d120, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_203d080
	ldr     r0, [r4, #OverWorldData_4]
	ldr     r0, [r0, #0x8]
	bl      Function_5_21dda78
branch_203d080: @ 203d080 :thumb

	mov     r5, #0x0
	bl      Function_203d158
	cmp     r0, #0x0
	beq     branch_203d090
	bl      Function_25_2253dd4
	mov     r5, r0
branch_203d090: @ 203d090 :thumb

	add     r3, sp, #0x8
	ldrh    r0, [r3, #0x6]
	mov     r2, #0x0
	mvn     r2, r2
	str     r0, [sp, #0x0]
	str     r5, [sp, #0x4]
	ldrh    r3, [r3, #0x4]
	ldr     r0, [r4, #OverWorldData_SpriteStruct]
	ldr     r1, [r4, #OverWorldData_28]
	bl      Function_205f180
	add     sp, #0x10
	pop     {r3-r5,pc}

branch_203d0aa: @ 203d0aa :thumb
	cmp     r5, #0x0
	beq     branch_203d11c

	add     r0, sp, #0x8
	mov     r1, r4
	bl      Function_5_21d1da4
	cmp     r0, #0x1
	bne     branch_203d0e4

	ldr     r0, [r4, #OverWorldData_4]
	ldr     r0, [r0, #OverWorldData_4_8]
	bl      Function_5_21dda78

	mov     r0, r4
	mov     r1, #0x4
	bl      Function_5_21e1bcc

	ldr     r0, [r4, #OverWorldData_SpriteStruct]
	bl      Function_205f56c

	ldr     r0, [r4, #OverWorldData_SpriteStruct]
	bl      Function_5_21e0eec

	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x1
	bl      Function_5_21ea714
	add     sp, #0x10
	pop     {r3-r5,pc}

branch_203d0e4: @ 203d0e4 :thumb
	ldr     r0, [pc, #0x38] @ 0x203d120, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_203d0f6
	ldr     r0, [r4, #OverWorldData_4]
	ldr     r0, [r0, #0x8]
	bl      Function_5_21dda78
branch_203d0f6: @ 203d0f6 :thumb

	mov     r5, #0x0
	bl      Function_203d158
	cmp     r0, #0x0
	beq     branch_203d106
	bl      Function_25_2253dd4
	mov     r5, r0
branch_203d106: @ 203d106 :thumb

	add     r3, sp, #0x8
	ldrh    r0, [r3, #0x6]
	mov     r2, #0x0
	mvn     r2, r2
	str     r0, [sp, #0x0]
	str     r5, [sp, #0x4]
	ldrh    r3, [r3, #0x4]
	ldr     r0, [r4, #OverWorldData_SpriteStruct]
	ldr     r1, [r4, #OverWorldData_28]
	bl      Function_205f180
branch_203d11c: @ 203d11c :thumb
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x203d120

.word RAM_21bf67c @ 0x203d120
.word 0x146 @ 0x203d124
