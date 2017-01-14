
/* Input:
r0: PtrToSpriteList

Return:
r0: PtrToSpriteStruct
*/
.align 2, 0
.thumb
Function_205e820: @ 205e820 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r7, r0
	mov     r6, r2
	bl      Function_205e8fc
	mov     r5, r0

	mov     r0, r4
	bl      Function_205ec94
	str     r0, [sp, #0x0]

	ldr     r1, [sp, #0x0]
	mov     r0, r5
	mov     r2, r6
	mov     r3, r4
	bl      Function_205e91c

	mov     r0, r7
	bl      Function_205ea64
	mov     r4, r0

	ldr     r0, [sp, #0x0]
	mov     r1, r6
	bl      Function_205ed6c
	mov     r1, r0
	mov     r0, r4
	bl      SetSpriteGraphic
	mov     r1, #0x9
	mov     r0, r4
	lsl     r1, r1, #10
	bl      SetSpriteFlags
	mov     r1, #0x6
	mov     r0, r4
	lsl     r1, r1, #6
	bl      UnsetSpriteFlags
	mov     r0, r4
	mov     r1, #0x1
	bl      SetUnsetSpriteFlags20000000
	mov     r0, r5
	mov     r1, r4
	bl      Function_205eb38
	mov     r0, r5
	pop     {r3-r7,pc}
@ 0x205e882


.align 2, 0
.thumb
.globl Function_205e884
Function_205e884: @ 205e884 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_205eb3c
	mov     r6, r0
	bne     branch_205e896
	bl      ErrorHandling
branch_205e896: @ 205e896 :thumb

	mov     r0, r6
	bl      GetSpriteSpriteList
	mov     r0, r5
	bl      0x21f6218
	mov     r0, r5
	bl      Function_205eb74
	cmp     r0, #0x2
	bne     branch_205e8de

	cmp     r4, #0x9
	beq     branch_205e8de

	mov     r0, r5
	bl      GetSpritePositionX
	mov     r4, r0

	mov     r0, r5
	bl      GetSpritePositionY
	mov     r7, r0

	mov     r0, r5
	bl      GetSpriteFaceDirection
	mov     r3, r0

	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r6
	mov     r1, r4
	mov     r2, r7
	bl      0x21f261c
	mov     r1, r0
	mov     r0, r5
	bl      Function_205ec00

branch_205e8de: @ 205e8de :thumb
	pop     {r3-r7,pc}
@ 0x205e8e0


thumb_func_start Call_free9
Call_free9: @ 205e8e0 :thumb
	ldr     r3, =free+1
	bx      r3
@ 0x205e8e4

.align 2
.pool
thumb_func_end Call_free9



.thumb
Function_205e8e8: @ 205e8e8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_205eb3c
	bl      Function_2061af4
	mov     r0, r4
	bl      Call_free9
	pop     {r4,pc}
@ 0x205e8fc


.thumb
Function_205e8fc: @ 205e8fc :thumb
	push    {r4,lr}
	mov     r0, #0xb
	mov     r1, #0x40
	bl      malloc
	mov     r4, r0
	bne     branch_205e90e
	bl      ErrorHandling
branch_205e90e: @ 205e90e :thumb

	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x40
	blx     Call_FillMemWithValue
	mov     r0, r4
	pop     {r4,pc}
@ 0x205e91c


.thumb
Function_205e91c: @ 205e91c :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r1, r3
	mov     r6, r2
	bl      Function_205ec08
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_205eb08
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_205eb10
	mov     r0, r5
	mov     r1, r4
	bl      Function_205eb58
	mov     r0, r5
	mov     r1, r6
	bl      Function_205eb94
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_205eb8c
	mov     r0, r5
	bl      Function_205ebc0
	mov     r1, #0x0
	mov     r0, r5
	mvn     r1, r1
	bl      Function_205ebdc
	mov     r1, #0x0
	mov     r0, r5
	mvn     r1, r1
	bl      Function_205ebe4
	mov     r0, r5
	mov     r1, #0xff
	mov     r2, #0x0
	bl      Function_205ec20
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_205ef6c
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_205eff0
	pop     {r4-r6,pc}
@ 0x205e988


thumb_func_start Init2SpriteStruct
Init2SpriteStruct: @ 205e988 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r0
	str     r2, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]

	mov     r0, r1
	ldr     r1, [sp, #0x18]
	ldr     r2, [sp, #0x1c]
	bl      InitSpriteStruct
	mov     r5, r0
	bne     branch_205e9a8
	bl      ErrorHandling
branch_205e9a8: @ 205e9a8 :thumb

	mov     r0, r5
	mov     r1, #0xff
	bl      SetSpriteID

	mov     r0, r5
	mov     r1, #0x0
	bl      SetSpriteTrainer

	mov     r0, r5
	mov     r1, #0x0
	bl      SetSpriteFlag

	mov     r0, r5
	mov     r1, #0x0
	bl      SetSpriteScript

	mov     r1, #0x0
	mov     r0, r5
	mov     r2, r1
	bl      Function_20629b4

	mov     r0, r5
	mov     r1, #0x0
	mov     r2, #0x1
	bl      Function_20629b4

	mov     r0, r5
	mov     r1, #0x0
	mov     r2, #0x2
	bl      Function_20629b4

	mov     r1, #0x0
	mov     r0, r5
	mvn     r1, r1
	bl      SetSpriteMovementWidth

	mov     r1, #0x0
	mov     r0, r5
	mvn     r1, r1
	bl      SetSpriteMovementLength

	mov     r1, #0x9
	mov     r0, r5
	lsl     r1, r1, #10
	bl      SetSpriteFlags

	mov     r1, #0x6
	mov     r0, r5
	lsl     r1, r1, #6
	bl      UnsetSpriteFlags

	mov     r0, r5
	mov     r1, #0x1
	bl      SetUnsetSpriteFlags20000000
	mov     r0, r4
	mov     r1, r5
	bl      Function_205eb38
	add     sp, #0xc
	pop     {r4,r5,pc}
thumb_func_end Init2SpriteStruct


/* Input:
r0: PtrToSpriteList
*/
.align 2, 0
.thumb
Function_205ea24: @ 205ea24 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r1, #0x0
	str     r1, [sp, #0x4]
	str     r1, [sp, #0x0]
	add     r1, sp, #0x0
	add     r2, sp, #0x4
	mov     r3, #0x1
	mov     r5, r0
	bl      Function_20625b0
	cmp     r0, #0x0
	beq     branch_205ea5e

	add     r4, sp, #0x0
	add     r6, sp, #0x4
	mov     r7, #0x1
branch_205ea44: @ 205ea44 :thumb
	ldr     r0, [sp, #0x0]
	bl      GetSpriteMovement
	cmp     r0, #0x1
	beq     branch_205ea5e

	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	mov     r3, r7
	bl      Function_20625b0
	cmp     r0, #0x0
	bne     branch_205ea44

branch_205ea5e: @ 205ea5e :thumb
	ldr     r0, [sp, #0x0]
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x205ea64


/* Input:
r0: PtrToSpriteList
*/
.thumb
Function_205ea64: @ 205ea64 :thumb
	push    {r4,lr}
	bl      Function_205ea24
	mov     r4, r0
	bne     branch_205ea72
	bl      ErrorHandling
branch_205ea72: @ 205ea72 :thumb

	mov     r0, r4
	pop     {r4,pc}
@ 0x205ea76



thumb_func_start GetSpriteFaceDirection
GetSpriteFaceDirection: @ 205ea78 :thumb
	push    {r3,lr}
	bl      Function_205eb3c
	bl      LoadSpriteFaceDirection
	pop     {r3,pc}
thumb_func_end GetSpriteFaceDirection


.thumb
.globl Function_205ea84
Function_205ea84: @ 205ea84 :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_205eb3c
	mov     r1, r4
	bl      ChangeSpriteFaceDirection_WithCheck
	pop     {r4,pc}
@ 0x205ea94


.thumb
.globl Function_205ea94
Function_205ea94: @ 205ea94 :thumb
	push    {r3,lr}
	bl      Function_205eb3c
	bl      LoadSpriteFace2Direction
	pop     {r3,pc}
@ 0x205eaa0


/* Input:
r0: PtrToSpriteStruct
*/
.thumb
.globl Function_205eaa0
Function_205eaa0: @ 205eaa0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_205f16c
	cmp     r0, #0x1
	bne     branch_205eab4
	mov     r0, r4
	bl      GetSpriteFaceDirection
	pop     {r4,pc}

branch_205eab4: @ 205eab4 :thumb
	mov     r0, r4
	bl      Function_205ea94
	pop     {r4,pc}
@ 0x205eabc


thumb_func_start GetSpritePositionX
GetSpritePositionX: @ 205eabc :thumb
	push    {r3,lr}
	bl      Function_205eb3c
	bl      LoadSpritePositionX
	pop     {r3,pc}
thumb_func_end GetSpritePositionX


thumb_func_start GetSpritePositionY
GetSpritePositionY: @ 205eac8 :thumb
	push    {r3,lr}
	bl      Function_205eb3c
	bl      LoadSpritePositionY
	pop     {r3,pc}
thumb_func_end GetSpritePositionY


.thumb
Function_205ead4: @ 205ead4 :thumb
	push    {r3,lr}
	bl      Function_205eb3c
	bl      GetSpriteX2
	pop     {r3,pc}
@ 0x205eae0


.thumb
Function_205eae0: @ 205eae0 :thumb
	push    {r3,lr}
	bl      Function_205eb3c
	bl      GetSpriteY2
	pop     {r3,pc}
@ 0x205eaec


.thumb
.globl Function_205eaec
Function_205eaec: @ 205eaec :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_205eb3c
	mov     r1, r4
	bl      CopySprite70Struct
	pop     {r4,pc}
@ 0x205eafc


.thumb
.globl Function_205eafc
Function_205eafc: @ 205eafc :thumb
	push    {r3,lr}
	bl      Function_205eb54
	bl      GetSpriteAdr70
	pop     {r3,pc}
@ 0x205eb08


.thumb
Function_205eb08: @ 205eb08 :thumb
	str     r1, [r0, #0x14]
	bx      lr
@ 0x205eb0c


.thumb
.globl Function_205eb0c
Function_205eb0c: @ 205eb0c :thumb
	ldr     r0, [r0, #0x14]
	bx      lr
@ 0x205eb10


.thumb
Function_205eb10: @ 205eb10 :thumb
	str     r1, [r0, #0x18]
	bx      lr
@ 0x205eb14


.thumb
.globl Function_205eb14
Function_205eb14: @ 205eb14 :thumb
	ldr     r0, [r0, #0x18]
	bx      lr
@ 0x205eb18


.thumb
.globl Function_205eb18
Function_205eb18: @ 205eb18 :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_205eb3c
	cmp     r4, #0x1
	bne     branch_205eb2e
	mov     r1, #0x2
	lsl     r1, r1, #8
	bl      UnsetSpriteFlags
	pop     {r4,pc}

branch_205eb2e: @ 205eb2e :thumb
	mov     r1, #0x2
	lsl     r1, r1, #8
	bl      SetSpriteFlags
	pop     {r4,pc}
@ 0x205eb38


.thumb
Function_205eb38: @ 205eb38 :thumb
	str     r1, [r0, #0x30]
	bx      lr
@ 0x205eb3c


.thumb
.globl Function_205eb3c
Function_205eb3c: @ 205eb3c :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_205eb46
	bl      ErrorHandling
branch_205eb46: @ 205eb46 :thumb

	ldr     r0, [r4, #0x30]
	cmp     r0, #0x0
	bne     branch_205eb50
	bl      ErrorHandling
branch_205eb50: @ 205eb50 :thumb

	ldr     r0, [r4, #0x30]
	pop     {r4,pc}
@ 0x205eb54


.thumb
Function_205eb54: @ 205eb54 :thumb
	ldr     r0, [r0, #0x30]
	bx      lr
@ 0x205eb58


.thumb
.globl Function_205eb58
Function_205eb58: @ 205eb58 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0x6
	blt     branch_205eb66
	bl      ErrorHandling
branch_205eb66: @ 205eb66 :thumb

	mov     r0, r5
	mov     r1, r4
	str     r4, [r5, #0x1c]
	bl      Function_205eca8
	pop     {r3-r5,pc}
@ 0x205eb72


.align 2, 0
.thumb
.globl Function_205eb74
Function_205eb74: @ 205eb74 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_205eb7e
	bl      ErrorHandling
branch_205eb7e: @ 205eb7e :thumb

	ldr     r0, [r4, #0x1c]
	pop     {r4,pc}
@ 0x205eb82


.align 2, 0
.thumb
.globl Function_205eb84
Function_205eb84: @ 205eb84 :thumb
	ldr     r2, [r0, #0x4]
	orr     r1, r2
	str     r1, [r0, #0x4]
	bx      lr
@ 0x205eb8c


.thumb
.globl Function_205eb8c
Function_205eb8c: @ 205eb8c :thumb
	str     r1, [r0, #0x4]
	bx      lr
@ 0x205eb90


.thumb
.globl Function_205eb90
Function_205eb90: @ 205eb90 :thumb
	ldr     r0, [r0, #0x4]
	bx      lr
@ 0x205eb94


.thumb
Function_205eb94: @ 205eb94 :thumb
	str     r1, [r0, #0x20]
	bx      lr
@ 0x205eb98


.thumb
.globl Function_205eb98
Function_205eb98: @ 205eb98 :thumb
	ldr     r0, [r0, #0x20]
	bx      lr
@ 0x205eb9c

.thumb
Function_205eb9c: @ 205eb9c :thumb
	ldr     r2, [r0, #0x0]
	orr     r1, r2
	str     r1, [r0, #0x0]
	bx      lr
@ 0x205eba4

.thumb
Function_205eba4: @ 205eba4 :thumb
	ldr     r2, [r0, #0x0]
	mvn     r1, r1
	and     r1, r2
	str     r1, [r0, #0x0]
	bx      lr
@ 0x205ebae


.align 2, 0
.thumb
Function_205ebb0: @ 205ebb0 :thumb
	ldr     r0, [r0, #0x0]
	and     r0, r1
	bx      lr
@ 0x205ebb6


.align 2, 0
.thumb
.globl Function_205ebb8
Function_205ebb8: @ 205ebb8 :thumb
	ldr     r0, [r0, #0x24]
	bx      lr
@ 0x205ebbc


.thumb
Function_205ebbc: @ 205ebbc :thumb
	str     r1, [r0, #0x24]
	bx      lr
@ 0x205ebc0


.thumb
.globl Function_205ebc0
Function_205ebc0: @ 205ebc0 :thumb
	ldr     r3, [pc, #0x4] @ 0x205ebc8, (=Function_205ef98+1)
	mov     r1, #0x0
	str     r1, [r0, #0x24]
	bx      r3
@ 0x205ebc8

.word Function_205ef98+1 @ 0x205ebc8



.thumb
Function_205ebcc: @ 205ebcc :thumb
	ldr     r3, [r0, #0x24]
	add     r1, r3, r1
	str     r1, [r0, #0x24]
	cmp     r1, r2
	ble     branch_205ebd8
	str     r2, [r0, #0x24]
branch_205ebd8: @ 205ebd8 :thumb
	ldr     r0, [r0, #0x24]
	bx      lr
@ 0x205ebdc


.thumb
Function_205ebdc: @ 205ebdc :thumb
	str     r1, [r0, #0x28]
	bx      lr
@ 0x205ebe0


.thumb
Function_205ebe0: @ 205ebe0 :thumb
	ldr     r0, [r0, #0x28]
	bx      lr
@ 0x205ebe4


.thumb
Function_205ebe4: @ 205ebe4 :thumb
	str     r1, [r0, #0x2c]
	bx      lr
@ 0x205ebe8


.thumb
Function_205ebe8: @ 205ebe8 :thumb
	ldr     r0, [r0, #0x2c]
	bx      lr
@ 0x205ebec


.thumb
Function_205ebec: @ 205ebec :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r2
	bl      Function_205ebdc
	mov     r0, r5
	mov     r1, r4
	bl      Function_205ebe4
	pop     {r3-r5,pc}
@ 0x205ec00


.thumb
.globl Function_205ec00
Function_205ec00: @ 205ec00 :thumb
	str     r1, [r0, #0x34]
	bx      lr
@ 0x205ec04


.thumb
.globl Function_205ec04
Function_205ec04: @ 205ec04 :thumb
	ldr     r0, [r0, #0x34]
	bx      lr
@ 0x205ec08


.thumb
Function_205ec08: @ 205ec08 :thumb
	str     r1, [r0, #0x38]
	bx      lr
@ 0x205ec0c


.thumb
Function_205ec0c: @ 205ec0c :thumb
	ldr     r0, [r0, #0x38]
	bx      lr
@ 0x205ec10


.thumb
Function_205ec10: @ 205ec10 :thumb
	str     r1, [r0, #0x8]
	bx      lr
@ 0x205ec14


.thumb
Function_205ec14: @ 205ec14 :thumb
	ldr     r0, [r0, #0x8]
	bx      lr
@ 0x205ec18


.thumb
Function_205ec18: @ 205ec18 :thumb
	str     r1, [r0, #0xc]
	bx      lr
@ 0x205ec1c


.thumb
Function_205ec1c: @ 205ec1c :thumb
	ldr     r0, [r0, #0xc]
	bx      lr
@ 0x205ec20


.thumb
Function_205ec20: @ 205ec20 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r2
	bl      Function_205ec10
	mov     r0, r5
	mov     r1, r4
	bl      Function_205ec18
	pop     {r3-r5,pc}
@ 0x205ec34


.thumb
Function_205ec34: @ 205ec34 :thumb
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	strh    r1, [r0, #0x2]
	str     r1, [r0, #0x4]
	bx      lr
@ 0x205ec3e


.align 2, 0
.thumb
Function_205ec40: @ 205ec40 :thumb
	cmp     r0, #0x0
	beq     branch_205ec4e
	ldrh    r0, [r0, #0x2]
	cmp     r0, #0x1
	bne     branch_205ec4e
	mov     r0, #0x1
	bx      lr

branch_205ec4e: @ 205ec4e :thumb
	mov     r0, #0x0
	bx      lr
@ 0x205ec52


.align 2, 0
.thumb
SetRunningShoes: @ 205ec54 :thumb
	cmp     r1, #0x1
	bne     branch_205ec5e
	mov     r1, #0x1
	strh    r1, [r0, #0x2]
	bx      lr

branch_205ec5e: @ 205ec5e :thumb
	mov     r1, #0x0
	strh    r1, [r0, #0x2]
	bx      lr
@ 0x205ec64


.thumb
Function_205ec64: @ 205ec64 :thumb
	cmp     r0, #0x0
	bne     branch_205ec6c
	mov     r0, #0x0
	bx      lr

branch_205ec6c: @ 205ec6c :thumb
	ldrh    r0, [r0, #0x0]
	bx      lr
@ 0x205ec70


.thumb
Function_205ec70: @ 205ec70 :thumb
	cmp     r0, #0x0
	beq     branch_205ec76
	strh    r1, [r0, #0x0]
branch_205ec76: @ 205ec76 :thumb
	bx      lr
@ 0x205ec78

.thumb
Function_205ec78: @ 205ec78 :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_205ec0c
	mov     r1, r4
	bl      Function_205ec70
	pop     {r4,pc}
@ 0x205ec88

.thumb
Function_205ec88: @ 205ec88 :thumb
	push    {r3,lr}
	bl      Function_205ec0c
	bl      Function_205ec64
	pop     {r3,pc}
@ 0x205ec94


.thumb
Function_205ec94: @ 205ec94 :thumb
	cmp     r0, #0x0
	beq     branch_205ec9c
	ldr     r0, [r0, #0x4]
	bx      lr

branch_205ec9c: @ 205ec9c :thumb
	mov     r0, #0x0
	bx      lr
@ 0x205eca0


.thumb
Function_205eca0: @ 205eca0 :thumb
	cmp     r0, #0x0
	beq     branch_205eca6
	str     r1, [r0, #0x4]
branch_205eca6: @ 205eca6 :thumb
	bx      lr
@ 0x205eca8


.thumb
Function_205eca8: @ 205eca8 :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_205ec0c
	mov     r1, r4
	bl      Function_205eca0
	pop     {r4,pc}
@ 0x205ecb8

.thumb
Function_205ecb8: @ 205ecb8 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r6, r2
	mov     r5, r0
	bl      Function_205eb3c
	mov     r1, r4
	mov     r2, r6
	bl      Function_20632d4
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_205eb08
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_205eb10
	pop     {r4-r6,pc}
@ 0x205ecde


.align 2, 0
.thumb
.globl Function_205ece0
Function_205ece0: @ 205ece0 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r7, r2
	mov     r5, r0
	mov     r4, r3
	bl      Function_205eb3c
	mov     r1, r6
	mov     r2, #0x0
	mov     r3, r7
	str     r4, [sp, #0x0]
	bl      Function_2063340
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_205eb08
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_205eb10
	pop     {r3-r7,pc}
@ 0x205ed0c


.thumb
.globl Function_205ed0c
Function_205ed0c: @ 205ed0c :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r1
	bl      Function_205eb3c
	mov     r4, r0
	add     r1, sp, #0x0
	bl      CopySprite70Struct
	mov     r0, r4
	add     r1, sp, #0x0
	str     r5, [sp, #0x4]
	bl      CopyToSprite70Struct
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x205ed2c


.thumb
.globl Function_205ed2c
Function_205ed2c: @ 205ed2c :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_205eb3c
	cmp     r4, #0x1
	bne     branch_205ed40
	mov     r1, #0x0
	bl      SetUnsetSpriteFlags800000
	pop     {r4,pc}

branch_205ed40: @ 205ed40 :thumb
	mov     r1, #0x1
	bl      SetUnsetSpriteFlags800000
	pop     {r4,pc}
@ 0x205ed48


.thumb
.globl Function_205ed48
Function_205ed48: @ 205ed48 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	bl      Function_205eb3c
	mov     r4, r0
	cmp     r5, #0x1
	bne     branch_205ed64
	mov     r1, #0x0
	bl      SetUnsetSpriteFlags800000
	mov     r0, r4
	bl      Function_20642f8
	pop     {r3-r5,pc}

branch_205ed64: @ 205ed64 :thumb
	mov     r1, #0x1
	bl      SetUnsetSpriteFlags800000
	pop     {r3-r5,pc}
@ 0x205ed6c


.thumb
.globl Function_205ed6c
Function_205ed6c: @ 205ed6c :thumb
	push    {r3,lr}
	cmp     r1, #0x0
	bne     branch_205ee10
	cmp     r0, #0x1e
	bls     branch_205ed78
	b       branch_205eea6
@ 0x205ed78

.thumb
branch_205ed78: @ 205ed78 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x205ed84

Jumppoints_205ed84:
.hword branch_205edc2 - Jumppoints_205ed84 - 2
.hword branch_205edc6 - Jumppoints_205ed84 - 2
.hword branch_205edca - Jumppoints_205ed84 - 2
.hword branch_205eea6 - Jumppoints_205ed84 - 2
.hword branch_205eea6 - Jumppoints_205ed84 - 2
.hword branch_205eea6 - Jumppoints_205ed84 - 2
.hword branch_205eea6 - Jumppoints_205ed84 - 2
.hword branch_205eea6 - Jumppoints_205ed84 - 2
.hword branch_205eea6 - Jumppoints_205ed84 - 2
.hword branch_205eea6 - Jumppoints_205ed84 - 2
.hword branch_205eea6 - Jumppoints_205ed84 - 2
.hword branch_205eea6 - Jumppoints_205ed84 - 2
.hword branch_205eea6 - Jumppoints_205ed84 - 2
.hword branch_205eea6 - Jumppoints_205ed84 - 2
.hword branch_205eea6 - Jumppoints_205ed84 - 2
.hword branch_205eea6 - Jumppoints_205ed84 - 2
.hword branch_205edce - Jumppoints_205ed84 - 2
.hword branch_205edd2 - Jumppoints_205ed84 - 2
.hword branch_205edd6 - Jumppoints_205ed84 - 2
.hword branch_205edda - Jumppoints_205ed84 - 2
.hword branch_205edde - Jumppoints_205ed84 - 2
.hword branch_205ede2 - Jumppoints_205ed84 - 2
.hword branch_205ede6 - Jumppoints_205ed84 - 2
.hword branch_205edea - Jumppoints_205ed84 - 2
.hword branch_205edf0 - Jumppoints_205ed84 - 2
.hword branch_205edf4 - Jumppoints_205ed84 - 2
.hword branch_205edf8 - Jumppoints_205ed84 - 2
.hword branch_205edfe - Jumppoints_205ed84 - 2
.hword branch_205ee02 - Jumppoints_205ed84 - 2
.hword branch_205ee06 - Jumppoints_205ed84 - 2
.hword branch_205ee0c - Jumppoints_205ed84 - 2
.thumb
branch_205edc2: @ 205edc2 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x205edc6

.thumb
branch_205edc6: @ 205edc6 :thumb
	mov     r0, #0x15
	pop     {r3,pc}
@ 0x205edca

.thumb
branch_205edca: @ 205edca :thumb
	mov     r0, #0xb2
	pop     {r3,pc}
@ 0x205edce

.thumb
branch_205edce: @ 205edce :thumb
	mov     r0, #0xb0
	pop     {r3,pc}
@ 0x205edd2

.thumb
branch_205edd2: @ 205edd2 :thumb
	mov     r0, #0xb4
	pop     {r3,pc}
@ 0x205edd6

.thumb
branch_205edd6: @ 205edd6 :thumb
	mov     r0, #0xba
	pop     {r3,pc}
@ 0x205edda

.thumb
branch_205edda: @ 205edda :thumb
	mov     r0, #0xbc
	pop     {r3,pc}
@ 0x205edde

.thumb
branch_205edde: @ 205edde :thumb
	mov     r0, #0xc4
	pop     {r3,pc}
@ 0x205ede2

.thumb
branch_205ede2: @ 205ede2 :thumb
	mov     r0, #0xc6
	pop     {r3,pc}
@ 0x205ede6

.thumb
branch_205ede6: @ 205ede6 :thumb
	mov     r0, #0xc8
	pop     {r3,pc}
@ 0x205edea

.thumb
branch_205edea: @ 205edea :thumb
	mov     r0, #0x1
	lsl     r0, r0, #8
	pop     {r3,pc}
@ 0x205edf0

.thumb
branch_205edf0: @ 205edf0 :thumb
	mov     r0, #0xd4
	pop     {r3,pc}
@ 0x205edf4

.thumb
branch_205edf4: @ 205edf4 :thumb
	ldr     r0, [pc, #0xb8] @ 0x205eeb0, (=0x102)
	pop     {r3,pc}
@ 0x205edf8

.thumb
branch_205edf8: @ 205edf8 :thumb
	mov     r0, #0x43
	lsl     r0, r0, #2
	pop     {r3,pc}
@ 0x205edfe

.thumb
branch_205edfe: @ 205edfe :thumb
	ldr     r0, [pc, #0xb4] @ 0x205eeb4, (=0x10e)
	pop     {r3,pc}
@ 0x205ee02

.thumb
branch_205ee02: @ 205ee02 :thumb
	mov     r0, #0xd2
	pop     {r3,pc}
@ 0x205ee06

.thumb
branch_205ee06: @ 205ee06 :thumb
	mov     r0, #0x11
	lsl     r0, r0, #4
	pop     {r3,pc}
@ 0x205ee0c

.thumb
branch_205ee0c: @ 205ee0c :thumb
	ldr     r0, [pc, #0xa8] @ 0x205eeb8, (=0x112)
	pop     {r3,pc}
@ 0x205ee10

.thumb
branch_205ee10: @ 205ee10 :thumb
	cmp     r0, #0x1e
	bhi     branch_205eea6
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x205ee20

Jumppoints_205ee20:
.hword branch_205ee5e - Jumppoints_205ee20 - 2
.hword branch_205ee62 - Jumppoints_205ee20 - 2
.hword branch_205ee66 - Jumppoints_205ee20 - 2
.hword branch_205eea6 - Jumppoints_205ee20 - 2
.hword branch_205eea6 - Jumppoints_205ee20 - 2
.hword branch_205eea6 - Jumppoints_205ee20 - 2
.hword branch_205eea6 - Jumppoints_205ee20 - 2
.hword branch_205eea6 - Jumppoints_205ee20 - 2
.hword branch_205eea6 - Jumppoints_205ee20 - 2
.hword branch_205eea6 - Jumppoints_205ee20 - 2
.hword branch_205eea6 - Jumppoints_205ee20 - 2
.hword branch_205eea6 - Jumppoints_205ee20 - 2
.hword branch_205eea6 - Jumppoints_205ee20 - 2
.hword branch_205eea6 - Jumppoints_205ee20 - 2
.hword branch_205eea6 - Jumppoints_205ee20 - 2
.hword branch_205eea6 - Jumppoints_205ee20 - 2
.hword branch_205ee6a - Jumppoints_205ee20 - 2
.hword branch_205ee6e - Jumppoints_205ee20 - 2
.hword branch_205ee72 - Jumppoints_205ee20 - 2
.hword branch_205ee76 - Jumppoints_205ee20 - 2
.hword branch_205ee7a - Jumppoints_205ee20 - 2
.hword branch_205ee7e - Jumppoints_205ee20 - 2
.hword branch_205ee82 - Jumppoints_205ee20 - 2
.hword branch_205ee86 - Jumppoints_205ee20 - 2
.hword branch_205ee8a - Jumppoints_205ee20 - 2
.hword branch_205ee8e - Jumppoints_205ee20 - 2
.hword branch_205ee92 - Jumppoints_205ee20 - 2
.hword branch_205ee96 - Jumppoints_205ee20 - 2
.hword branch_205ee9a - Jumppoints_205ee20 - 2
.hword branch_205ee9e - Jumppoints_205ee20 - 2
.hword branch_205eea2 - Jumppoints_205ee20 - 2
.thumb
branch_205ee5e: @ 205ee5e :thumb
	mov     r0, #0x61
	pop     {r3,pc}
@ 0x205ee62

.thumb
branch_205ee62: @ 205ee62 :thumb
	mov     r0, #0x62
	pop     {r3,pc}
@ 0x205ee66

.thumb
branch_205ee66: @ 205ee66 :thumb
	mov     r0, #0xb3
	pop     {r3,pc}
@ 0x205ee6a

.thumb
branch_205ee6a: @ 205ee6a :thumb
	mov     r0, #0xb1
	pop     {r3,pc}
@ 0x205ee6e

.thumb
branch_205ee6e: @ 205ee6e :thumb
	mov     r0, #0xb5
	pop     {r3,pc}
@ 0x205ee72

.thumb
branch_205ee72: @ 205ee72 :thumb
	mov     r0, #0xbb
	pop     {r3,pc}
@ 0x205ee76

.thumb
branch_205ee76: @ 205ee76 :thumb
	mov     r0, #0xbd
	pop     {r3,pc}
@ 0x205ee7a

.thumb
branch_205ee7a: @ 205ee7a :thumb
	mov     r0, #0xc5
	pop     {r3,pc}
@ 0x205ee7e

.thumb
branch_205ee7e: @ 205ee7e :thumb
	mov     r0, #0xc7
	pop     {r3,pc}
@ 0x205ee82

.thumb
branch_205ee82: @ 205ee82 :thumb
	mov     r0, #0xc9
	pop     {r3,pc}
@ 0x205ee86

.thumb
branch_205ee86: @ 205ee86 :thumb
	ldr     r0, [pc, #0x34] @ 0x205eebc, (=0x101)
	pop     {r3,pc}
@ 0x205ee8a

.thumb
branch_205ee8a: @ 205ee8a :thumb
	ldr     r0, [pc, #0x34] @ 0x205eec0, (=0x107)
	pop     {r3,pc}
@ 0x205ee8e

.thumb
branch_205ee8e: @ 205ee8e :thumb
	ldr     r0, [pc, #0x34] @ 0x205eec4, (=0x103)
	pop     {r3,pc}
@ 0x205ee92

.thumb
branch_205ee92: @ 205ee92 :thumb
	ldr     r0, [pc, #0x34] @ 0x205eec8, (=0x10d)
	pop     {r3,pc}
@ 0x205ee96

.thumb
branch_205ee96: @ 205ee96 :thumb
	ldr     r0, [pc, #0x34] @ 0x205eecc, (=0x10f)
	pop     {r3,pc}
@ 0x205ee9a

.thumb
branch_205ee9a: @ 205ee9a :thumb
	mov     r0, #0xd3
	pop     {r3,pc}
@ 0x205ee9e

.thumb
branch_205ee9e: @ 205ee9e :thumb
	ldr     r0, [pc, #0x30] @ 0x205eed0, (=0x111)
	pop     {r3,pc}
@ 0x205eea2

.thumb
branch_205eea2: @ 205eea2 :thumb
	ldr     r0, [pc, #0x30] @ 0x205eed4, (=0x113)
	pop     {r3,pc}
@ 0x205eea6

.thumb
branch_205eea6: @ 205eea6 :thumb
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x205eeae

.align 2
.word 0x102 @ 0x205eeb0
.word 0x10e @ 0x205eeb4
.word 0x112 @ 0x205eeb8
.word 0x101 @ 0x205eebc
.word 0x107 @ 0x205eec0
.word 0x103 @ 0x205eec4
.word 0x10d @ 0x205eec8
.word 0x10f @ 0x205eecc
.word 0x111 @ 0x205eed0
.word 0x113 @ 0x205eed4



.thumb
.globl Function_205eed8
Function_205eed8: @ 205eed8 :thumb
	push    {r3,lr}
	cmp     r0, #0x11
	bgt     branch_205eef4
	bge     branch_205ef1c
	cmp     r0, #0x2
	bgt     branch_205ef32
	cmp     r0, #0x0
	blt     branch_205ef32
	beq     branch_205ef10
	cmp     r0, #0x1
	beq     branch_205ef14
	cmp     r0, #0x2
	beq     branch_205ef18
	b       branch_205ef32
@ 0x205eef4

.thumb
branch_205eef4: @ 205eef4 :thumb
	cmp     r0, #0x13
	bgt     branch_205eefc
	beq     branch_205ef20
	b       branch_205ef32
@ 0x205eefc

.thumb
branch_205eefc: @ 205eefc :thumb
	cmp     r0, #0x16
	bgt     branch_205ef32
	cmp     r0, #0x14
	blt     branch_205ef32
	beq     branch_205ef24
	cmp     r0, #0x15
	beq     branch_205ef28
	cmp     r0, #0x16
	beq     branch_205ef2c
	b       branch_205ef32
@ 0x205ef10

.thumb
branch_205ef10: @ 205ef10 :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x205ef14

.thumb
branch_205ef14: @ 205ef14 :thumb
	mov     r0, #0x2
	pop     {r3,pc}
@ 0x205ef18

.thumb
branch_205ef18: @ 205ef18 :thumb
	mov     r0, #0x4
	pop     {r3,pc}
@ 0x205ef1c

.thumb
branch_205ef1c: @ 205ef1c :thumb
	mov     r0, #0x10
	pop     {r3,pc}
@ 0x205ef20

.thumb
branch_205ef20: @ 205ef20 :thumb
	mov     r0, #0x20
	pop     {r3,pc}
@ 0x205ef24

.thumb
branch_205ef24: @ 205ef24 :thumb
	mov     r0, #0x40
	pop     {r3,pc}
@ 0x205ef28

.thumb
branch_205ef28: @ 205ef28 :thumb
	mov     r0, #0x80
	pop     {r3,pc}
@ 0x205ef2c

.thumb
branch_205ef2c: @ 205ef2c :thumb
	mov     r0, #0x1
	lsl     r0, r0, #8
	pop     {r3,pc}

branch_205ef32: @ 205ef32 :thumb
	bl      ErrorHandling
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x205ef3a


.align 2, 0
.thumb
.globl Function_205ef3c
Function_205ef3c: @ 205ef3c :thumb
	ldr     r0, [r0, #0x3c]
	bx      lr
@ 0x205ef40


.thumb
Function_205ef40: @ 205ef40 :thumb
	push    {r3,lr}
	cmp     r1, #0x1
	bne     branch_205ef4e
	mov     r1, #0x1
	bl      Function_205eb9c
	pop     {r3,pc}

branch_205ef4e: @ 205ef4e :thumb
	mov     r1, #0x1
	bl      Function_205eba4
	pop     {r3,pc}
@ 0x205ef56


.align 2, 0
.thumb
.globl Function_205ef58
Function_205ef58: @ 205ef58 :thumb
	push    {r3,lr}
	mov     r1, #0x1
	bl      Function_205ebb0
	cmp     r0, #0x0
	beq     branch_205ef68
	mov     r0, #0x1
	pop     {r3,pc}

branch_205ef68: @ 205ef68 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x205ef6c


.thumb
.globl Function_205ef6c
Function_205ef6c: @ 205ef6c :thumb
	push    {r3,lr}
	cmp     r1, #0x1
	bne     branch_205ef7a
	mov     r1, #0x2
	bl      Function_205eb9c
	pop     {r3,pc}

branch_205ef7a: @ 205ef7a :thumb
	mov     r1, #0x2
	bl      Function_205eba4
	pop     {r3,pc}
@ 0x205ef82


.align 2, 0
.thumb
Function_205ef84: @ 205ef84 :thumb
	push    {r3,lr}
	mov     r1, #0x2
	bl      Function_205ebb0
	cmp     r0, #0x0
	beq     branch_205ef94
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x205ef94

.thumb
branch_205ef94: @ 205ef94 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x205ef98

.thumb
Function_205ef98: @ 205ef98 :thumb
	push    {r3,lr}
	cmp     r1, #0x1
	bne     branch_205efa6
	mov     r1, #0x4
	bl      Function_205eb9c
	pop     {r3,pc}
@ 0x205efa6

.thumb
branch_205efa6: @ 205efa6 :thumb
	mov     r1, #0x4
	bl      Function_205eba4
	pop     {r3,pc}
@ 0x205efae


.align 2, 0


.thumb
Function_205efb0: @ 205efb0 :thumb
	push    {r3,lr}
	mov     r1, #0x4
	bl      Function_205ebb0
	cmp     r0, #0x0
	beq     branch_205efc0
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x205efc0

.thumb
branch_205efc0: @ 205efc0 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x205efc4

.thumb
Function_205efc4: @ 205efc4 :thumb
	push    {r3,lr}
	cmp     r1, #0x1
	bne     branch_205efd2
	mov     r1, #0x8
	bl      Function_205eb9c
	pop     {r3,pc}
@ 0x205efd2

.thumb
branch_205efd2: @ 205efd2 :thumb
	mov     r1, #0x8
	bl      Function_205eba4
	pop     {r3,pc}
@ 0x205efda


.align 2, 0


.thumb
Function_205efdc: @ 205efdc :thumb
	push    {r3,lr}
	mov     r1, #0x8
	bl      Function_205ebb0
	cmp     r0, #0x0
	beq     branch_205efec
	mov     r0, #0x1
	pop     {r3,pc}

branch_205efec: @ 205efec :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x205eff0


.thumb
.globl Function_205eff0
Function_205eff0: @ 205eff0 :thumb
	push    {r3,lr}
	cmp     r1, #0x1
	bne     branch_205effe
	mov     r1, #0x10
	bl      Function_205eb9c
	pop     {r3,pc}

branch_205effe: @ 205effe :thumb
	mov     r1, #0x10
	bl      Function_205eba4
	pop     {r3,pc}
@ 0x205f006


.align 2, 0
.thumb
.globl Function_205f008
Function_205f008: @ 205f008 :thumb
	push    {r3,lr}
	mov     r1, #0x10
	bl      Function_205ebb0
	cmp     r0, #0x0
	beq     branch_205f018
	mov     r0, #0x1
	pop     {r3,pc}

branch_205f018: @ 205f018 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x205f01c


.thumb
Function_205f01c: @ 205f01c :thumb
	push    {r3,lr}
	cmp     r1, #0x1
	bne     branch_205f02a
	mov     r1, #0x20
	bl      Function_205eb9c
	pop     {r3,pc}
@ 0x205f02a

.thumb
branch_205f02a: @ 205f02a :thumb
	mov     r1, #0x20
	bl      Function_205eba4
	pop     {r3,pc}
@ 0x205f032


.align 2, 0


.thumb
Function_205f034: @ 205f034 :thumb
	push    {r3,lr}
	mov     r1, #0x20
	bl      Function_205ebb0
	cmp     r0, #0x0
	beq     branch_205f044
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x205f044

.thumb
branch_205f044: @ 205f044 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x205f048

.thumb
Function_205f048: @ 205f048 :thumb
	ldr     r3, [pc, #0x4] @ 0x205f050, (=Function_205eb9c+1)
	mov     r1, #0x40
	bx      r3
@ 0x205f04e

.align 2
.word Function_205eb9c+1 @ =0x205eb9d, 0x205f050



.thumb
Function_205f054: @ 205f054 :thumb
	ldr     r3, [pc, #0x4] @ 0x205f05c, (=Function_205eba4+1)
	mov     r1, #0x40
	bx      r3
@ 0x205f05a

.align 2
.word Function_205eba4+1 @ =0x205eba5, 0x205f05c



.thumb
Function_205f060: @ 205f060 :thumb
	push    {r3,lr}
	mov     r1, #0x40
	bl      Function_205ebb0
	cmp     r0, #0x0
	beq     branch_205f070
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x205f070

.thumb
branch_205f070: @ 205f070 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x205f074

.thumb
Function_205f074: @ 205f074 :thumb
	push    {r3,lr}
	cmp     r1, #0x1
	bne     branch_205f082
	mov     r1, #0x80
	bl      Function_205eb9c
	pop     {r3,pc}
@ 0x205f082

.thumb
branch_205f082: @ 205f082 :thumb
	mov     r1, #0x80
	bl      Function_205eba4
	pop     {r3,pc}
@ 0x205f08a


.align 2, 0
.thumb
Function_205f08c: @ 205f08c :thumb
	ldr     r3, [pc, #0x4] @ 0x205f094, (=Function_205ebb0+1)
	mov     r1, #0x80
	bx      r3
@ 0x205f092

.align 2
.word Function_205ebb0+1 @ 0x205f094



.thumb
.globl Function_205f098
Function_205f098: @ 205f098 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, #0x1f
	lsl     r1, r1, #8
	mov     r4, r0
	bl      Function_205eba4
	cmp     r5, #0x5
	bhi     branch_205f100
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x205f0b6

Jumppoints_205f0b6:
.hword branch_205f0c2 - Jumppoints_205f0b6 - 2
.hword branch_205f0c4 - Jumppoints_205f0b6 - 2
.hword branch_205f0d0 - Jumppoints_205f0b6 - 2
.hword branch_205f0dc - Jumppoints_205f0b6 - 2
.hword branch_205f0e8 - Jumppoints_205f0b6 - 2
.hword branch_205f0f4 - Jumppoints_205f0b6 - 2
.thumb
branch_205f0c2: @ 205f0c2 :thumb
	pop     {r3-r5,pc}
@ 0x205f0c4

.thumb
branch_205f0c4: @ 205f0c4 :thumb
	mov     r1, #0x1
	mov     r0, r4
	lsl     r1, r1, #8
	bl      Function_205eb9c
	pop     {r3-r5,pc}
@ 0x205f0d0

.thumb
branch_205f0d0: @ 205f0d0 :thumb
	mov     r1, #0x2
	mov     r0, r4
	lsl     r1, r1, #8
	bl      Function_205eb9c
	pop     {r3-r5,pc}
@ 0x205f0dc

.thumb
branch_205f0dc: @ 205f0dc :thumb
	mov     r1, #0x1
	mov     r0, r4
	lsl     r1, r1, #10
	bl      Function_205eb9c
	pop     {r3-r5,pc}

branch_205f0e8: @ 205f0e8 :thumb
	mov     r1, #0x2
	mov     r0, r4
	lsl     r1, r1, #10
	bl      Function_205eb9c
	pop     {r3-r5,pc}

branch_205f0f4: @ 205f0f4 :thumb
	mov     r1, #0x1
	mov     r0, r4
	lsl     r1, r1, #12
	bl      Function_205eb9c
	pop     {r3-r5,pc}

branch_205f100: @ 205f100 :thumb
	bl      ErrorHandling
	pop     {r3-r5,pc}
@ 0x205f106


.align 2, 0
.thumb
.globl Function_205f108
Function_205f108: @ 205f108 :thumb
	push    {r4,lr}
	mov     r1, #0x1f
	lsl     r1, r1, #8
	mov     r4, #0x0
	bl      Function_205ebb0
	mov     r2, #0x1
	lsl     r2, r2, #10
	cmp     r0, r2
	bhi     branch_205f130
	bhs     branch_205f14a
	lsr     r1, r2, #2
	cmp     r0, r1
	bhi     branch_205f128
	beq     branch_205f142
	b       branch_205f154

branch_205f128: @ 205f128 :thumb
	lsr     r1, r2, #1
	cmp     r0, r1
	beq     branch_205f146
	b       branch_205f154

branch_205f130: @ 205f130 :thumb
	lsl     r1, r2, #1
	cmp     r0, r1
	bhi     branch_205f13a
	beq     branch_205f14e
	b       branch_205f154

branch_205f13a: @ 205f13a :thumb
	lsl     r1, r2, #2
	cmp     r0, r1
	beq     branch_205f152
	b       branch_205f154

branch_205f142: @ 205f142 :thumb
	mov     r4, #0x1
	b       branch_205f154

branch_205f146: @ 205f146 :thumb
	mov     r4, #0x2
	b       branch_205f154

branch_205f14a: @ 205f14a :thumb
	mov     r4, #0x3
	b       branch_205f154

branch_205f14e: @ 205f14e :thumb
	mov     r4, #0x4
	b       branch_205f154

branch_205f152: @ 205f152 :thumb
	mov     r4, #0x5
branch_205f154: @ 205f154 :thumb
	mov     r0, r4
	pop     {r4,pc}
@ 0x205f158


.thumb
.globl Function_205f158
Function_205f158: @ 205f158 :thumb
	push    {r3,lr}
	bl      Function_205f108
	cmp     r0, #0x1
	bls     branch_205f166
	mov     r0, #0x1
	pop     {r3,pc}

branch_205f166: @ 205f166 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x205f16a


.align 2, 0
.thumb
.globl Function_205f16c
Function_205f16c: @ 205f16c :thumb
	push    {r3,lr}
	bl      Function_205f108
	cmp     r0, #0x2
	bhi     branch_205f17a
	mov     r0, #0x1
	pop     {r3,pc}

branch_205f17a: @ 205f17a :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x205f17e


/* Input:
r0: PtrToSpriteStruct
*/
.align 2, 0
.thumb
Function_205f180: @ 205f180 :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	mov     r1, #0x0
	mov     r4, r2
	mvn     r1, r1
	mov     r5, r0
	mov     r6, r3
	cmp     r4, r1
	bne     branch_205f19e

	add     r2, sp, #0x8
	ldrh    r2, [r2, #0x10]
	mov     r1, r6
	bl      Function_2061348
	mov     r4, r0
branch_205f19e: @ 205f19e :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_2060324
	mov     r0, r5
	mov     r1, r4
	bl      Function_205f22c
	cmp     r0, #0x0
	beq     branch_205f222

	add     r3, sp, #0x8
	ldrh    r3, [r3, #0x10]
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_205f350
	mov     r0, r5
	bl      0x21dfb5c
	mov     r0, r5
	mov     r1, r4
	bl      Function_205f62c
	cmp     r0, #0x1
	bne     branch_205f1da

	mov     r0, r5
	bl      Function_5_21e0eec
	pop     {r3-r7,pc}

branch_205f1da: @ 205f1da :thumb
	mov     r0, r5
	bl      Function_205eb74
	cmp     r0, #0x0
	bne     branch_205f204

	mov     r0, r5
	mov     r1, r4
	bl      Function_205fc48
	cmp     r0, #0x0
	beq     branch_205f1f8

	mov     r0, r5
	bl      Function_5_21e0eec
	b       branch_205f204

branch_205f1f8: @ 205f1f8 :thumb
	ldr     r0, [sp, #0x1c]
	cmp     r0, #0x1
	bne     branch_205f204
	mov     r0, r5
	bl      Function_5_21e0e94
branch_205f204: @ 205f204 :thumb

	add     r0, sp, #0x8
	ldrh    r0, [r0, #0x10]
	mov     r1, r7
	mov     r2, r4
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r3, r6
	bl      Function_205fb88
	mov     r0, r5
	bl      Function_205f378
	mov     r0, r5
	bl      Function_205f3b8
branch_205f222: @ 205f222 :thumb
	pop     {r3-r7,pc}
@ 0x205f224


.thumb
.globl Function_205f224
Function_205f224: @ 205f224 :thumb
	ldr     r3, [pc, #0x0] @ 0x205f228, (=0x205f22d)
	bx      r3
@ 0x205f228

.word Function_205f22c+1 @ 0x205f228



.thumb
Function_205f22c: @ 205f22c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r5, r0
	mov     r6, r1
	bl      Function_205eb3c
	mov     r4, r0
	bl      IsSpriteMovable
	cmp     r0, #0x1
	bne     branch_205f248
	add     sp, #0x24
	mov     r0, #0x1
	pop     {r4-r7,pc}

branch_205f248: @ 205f248 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r6, r0
	bne     branch_205f256
	add     sp, #0x24
	mov     r0, #0x0
	pop     {r4-r7,pc}

branch_205f256: @ 205f256 :thumb
	mov     r0, r4
	bl      GetSpriteMovementNr
	bl      Function_20613d8
	cmp     r0, #0x1
	bne     branch_205f34a
	mov     r0, r5
	bl      Function_205f158
	cmp     r0, #0x1
	bne     branch_205f318
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_20611fc
	str     r0, [sp, #0x8]
	ldr     r1, [sp, #0x8]
	mov     r0, #0x80
	bic     r1, r0
	beq     branch_205f324
	mov     r0, r5
	bl      Function_205f108
	cmp     r0, #0x2
	bne     branch_205f324
	mov     r0, r4
	bl      GetSpriteSpriteListFirstSprite
	mov     r7, r0
	mov     r0, r4
	bl      LoadSpritePositionX
	str     r0, [sp, #0xc]
	mov     r0, r4
	bl      LoadSpritePositionZ
	str     r0, [sp, #0x10]
	mov     r0, r4
	bl      LoadSpritePositionY
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x10]
	add     r2, sp, #0x20
	lsr     r1, r0, #31
	add     r1, r0, r1
	asr     r0, r1, #1
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0xc]
	mov     r1, r6
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x4]
	add     r3, sp, #0x1c
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x14]
	str     r0, [sp, #0x18]
	add     r0, sp, #0x18
	str     r0, [sp, #0x0]
	mov     r0, r5
	bl      Function_2061674
	ldr     r1, [sp, #0x20]
	ldr     r2, [sp, #0x1c]
	ldr     r3, [sp, #0x18]
	mov     r0, r7
	bl      0x2250fbc
	cmp     r0, #0x0
	bne     branch_205f324
	ldr     r1, [sp, #0x20]
	ldr     r2, [sp, #0x1c]
	ldr     r3, [sp, #0x18]
	mov     r0, r7
	bl      0x2250fd8
	cmp     r0, #0x1
	bne     branch_205f324
	ldr     r1, [sp, #0x20]
	ldr     r2, [sp, #0x1c]
	ldr     r3, [sp, #0x18]
	mov     r0, r7
	bl      0x2251000
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_20611fc
	str     r0, [sp, #0x8]
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x4]
	ldr     r3, [sp, #0x14]
	mov     r0, r7
	bl      0x2251000
	b       branch_205f324

branch_205f318: @ 205f318 :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_2060b7c
	str     r0, [sp, #0x8]
branch_205f324: @ 205f324 :thumb
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x0
	bne     branch_205f330
	add     sp, #0x24
	mov     r0, #0x1
	pop     {r4-r7,pc}

branch_205f330: @ 205f330 :thumb
	cmp     r0, #0x20
	bne     branch_205f344
	mov     r0, r5
	bl      Function_205eb74
	cmp     r0, #0x2
	bne     branch_205f344
	add     sp, #0x24
	mov     r0, #0x1
	pop     {r4-r7,pc}

branch_205f344: @ 205f344 :thumb
	add     sp, #0x24
	mov     r0, #0x0
	pop     {r4-r7,pc}

branch_205f34a: @ 205f34a :thumb
	mov     r0, #0x0
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x205f350


.thumb
Function_205f350: @ 205f350 :thumb
	push    {r4-r6,lr}
	mov     r6, r3
	mov     r5, r0
	mov     r0, r6
	bl      Function_2061310
	mov     r4, r0
	mov     r0, r6
	bl      Function_206132c
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_205ebec
	mov     r0, r5
	bl      Function_205f054
	pop     {r4-r6,pc}
@ 0x205f376


.align 2, 0


.thumb
Function_205f378: @ 205f378 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_205f060
	cmp     r0, #0x1
	bne     branch_205f3b4
	mov     r0, r4
	bl      Function_205eb0c
	cmp     r0, #0x1
	bne     branch_205f3b4
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_205ef6c
	mov     r0, r4
	bl      Function_205f008
	cmp     r0, #0x1
	bne     branch_205f3b4
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_205eff0
	mov     r0, r4
	bl      Function_205eb3c
	mov     r1, #0x0
	bl      Function_2062ee0
.thumb
branch_205f3b4: @ 205f3b4 :thumb
	pop     {r4,pc}
@ 0x205f3b6


.align 2, 0


.thumb
Function_205f3b8: @ 205f3b8 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	bl      Function_205eb0c
	cmp     r0, #0x1
	bne     branch_205f47a
	mov     r0, r4
	bl      Function_205eb3c
	mov     r4, r0
	bl      Function_2062be8
	lsl     r0, r0, #24
	lsr     r5, r0, #24
	mov     r0, r4
	bl      GetSpriteMovementNr
	bl      Function_206587c
	mov     r1, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r1, r0
	bne     branch_205f3ec
	mov     r6, r5
	b       branch_205f3f6
@ 0x205f3ec

.thumb
branch_205f3ec: @ 205f3ec :thumb
	mov     r0, r4
	bl      Function_2064238
	lsl     r0, r0, #24
	lsr     r6, r0, #24
.thumb
branch_205f3f6: @ 205f3f6 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_20640d4
	cmp     r0, #0x1
	beq     branch_205f40c
	mov     r0, r5
	bl      Function_205dfac
	cmp     r0, #0x1
	bne     branch_205f412
.thumb
branch_205f40c: @ 205f40c :thumb
	ldr     r0, [pc, #0x6c] @ 0x205f47c, (=0x549)
	bl      Function_2005748
.thumb
branch_205f412: @ 205f412 :thumb
	mov     r0, r5
	bl      Function_205de5c
	cmp     r0, #0x1
	bne     branch_205f422
	ldr     r0, [pc, #0x60] @ 0x205f480, (=0x641)
	bl      Function_2005748
.thumb
branch_205f422: @ 205f422 :thumb
	mov     r0, r5
	bl      Function_205db78
	cmp     r0, #0x1
	bne     branch_205f432
	ldr     r0, [pc, #0x54] @ 0x205f484, (=0x642)
	bl      Function_2005748
.thumb
branch_205f432: @ 205f432 :thumb
	mov     r0, r5
	bl      Function_205db6c
	mov     r0, r5
	bl      Function_205dce0
	cmp     r0, #0x1
	bne     branch_205f452
	mov     r0, r5
	bl      Function_205dcf0
	cmp     r0, #0x1
	beq     branch_205f452
	ldr     r0, [pc, #0x38] @ 0x205f488, (=0x655)
	bl      Function_2005748
.thumb
branch_205f452: @ 205f452 :thumb
	mov     r0, r4
	bl      GetSpriteMovementNr
	bl      Function_20613d8
	cmp     r0, #0x0
	bne     branch_205f47a
	mov     r0, r5
	bl      Function_205dad4
	cmp     r0, #0x1
	beq     branch_205f474
	mov     r0, r6
	bl      Function_205dad4
	cmp     r0, #0x1
	bne     branch_205f47a
.thumb
branch_205f474: @ 205f474 :thumb
	ldr     r0, [pc, #0x14] @ 0x205f48c, (=0x653)
	bl      Function_2005748
.thumb
branch_205f47a: @ 205f47a :thumb
	pop     {r4-r6,pc}
@ 0x205f47c

.word 0x549 @ 0x205f47c
.word 0x641 @ 0x205f480
.word 0x642 @ 0x205f484
.word 0x655 @ 0x205f488
.word 0x653 @ 0x205f48c



/* Input:
r0: PtrToSpriteStruct
*/
.thumb
Function_205f490: @ 205f490 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      Function_205eb0c
	mov     r6, r0

	mov     r0, r5
	bl      Function_205eb14
	mov     r4, r0

	mov     r0, r5
	bl      Function_205eb3c
	mov     r7, r0

	mov     r0, r5
	mov     r1, #0x0
	bl      Function_205eb10

	mov     r1, #0x0
	mov     r0, r5
	mvn     r1, r1
	bl      Function_205f644
	cmp     r0, #0x0
	beq     branch_205f4ce

	cmp     r0, #0x5
	beq     branch_205f4ce

	mov     r0, r5
	mov     r1, #0x2
	bl      Function_205eb10
	pop     {r3-r7,pc}

branch_205f4ce: @ 205f4ce :thumb
	mov     r0, r7
	bl      IsSpriteMovable
	cmp     r0, #0x0
	bne     branch_205f51a

	cmp     r6, #0x0
	beq     branch_205f568

	cmp     r6, #0x1
	beq     branch_205f4e6

	cmp     r6, #0x2
	beq     branch_205f510

	pop     {r3-r7,pc}

branch_205f4e6: @ 205f4e6 :thumb
	mov     r0, r7
	bl      GetSpriteMovementNr
	bl      Function_20613d8
	cmp     r0, #0x1
	beq     branch_205f568

	cmp     r4, #0x0
	beq     branch_205f4fc

	cmp     r4, #0x3
	bne     branch_205f506

branch_205f4fc: @ 205f4fc :thumb
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_205eb10
	pop     {r3-r7,pc}

branch_205f506: @ 205f506 :thumb
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_205eb10
	pop     {r3-r7,pc}

branch_205f510: @ 205f510 :thumb
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_205eb10
	pop     {r3-r7,pc}

branch_205f51a: @ 205f51a :thumb
	mov     r0, r7
	bl      Function_2065684
	cmp     r0, #0x1
	bne     branch_205f568

	cmp     r6, #0x0
	beq     branch_205f568

	cmp     r6, #0x1
	beq     branch_205f532

	cmp     r6, #0x2
	beq     branch_205f54e

	pop     {r3-r7,pc}

branch_205f532: @ 205f532 :thumb
	cmp     r4, #0x0
	beq     branch_205f568

	cmp     r4, #0x3
	bne     branch_205f544

	mov     r0, r5
	mov     r1, #0x0
	bl      Function_205eb10
	pop     {r3-r7,pc}

branch_205f544: @ 205f544 :thumb
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_205eb10
	pop     {r3-r7,pc}

branch_205f54e: @ 205f54e :thumb
	cmp     r4, #0x0
	beq     branch_205f568

	cmp     r4, #0x3
	bne     branch_205f560

	mov     r0, r5
	mov     r1, #0x0
	bl      Function_205eb10
	pop     {r3-r7,pc}

branch_205f560: @ 205f560 :thumb
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_205eb10
branch_205f568: @ 205f568 :thumb
	pop     {r3-r7,pc}
@ 0x205f56a


/* Input:
r0: PtrToSpriteStruct
*/
.align 2, 0
.thumb
.globl Function_205f56c
Function_205f56c: @ 205f56c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x0
	bl      Function_205eb08
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_205eb10
	mov     r0, r4
	bl      Function_205ebc0
	pop     {r4,pc}
@ 0x205f586


/* Input:
r0: PtrToSpriteStruct
*/
.align 2, 0
.thumb
.globl Function_205f588
Function_205f588: @ 205f588 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_205eb0c
	mov     r4, r0
	mov     r0, r5
	bl      Function_205eb14
	cmp     r4, #0x0
	bne     branch_205f5a0
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_205f5a0: @ 205f5a0 :thumb
	cmp     r4, #0x2
	bne     branch_205f5a8
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_205f5a8: @ 205f5a8 :thumb
	cmp     r4, #0x1
	bne     branch_205f5de
	cmp     r0, #0x0
	beq     branch_205f5b4
	cmp     r0, #0x3
	bne     branch_205f5b8
branch_205f5b4: @ 205f5b4 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_205f5b8: @ 205f5b8 :thumb
	mov     r0, r5
	bl      Function_205eb3c
	mov     r4, r0
	bl      IsSpriteMovable
	cmp     r0, #0x1
	bne     branch_205f5cc
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_205f5cc: @ 205f5cc :thumb
	mov     r0, r4
	bl      GetSpriteMovementNr
	bl      Function_20613d8
	cmp     r0, #0x1
	bne     branch_205f5de
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_205f5de: @ 205f5de :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x205f5e2


/* Input:
r0: PtrToSpriteStruct
*/
.align 2, 0
.thumb
.globl Function_205f5e4
Function_205f5e4: @ 205f5e4 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r0
	mov     r1, #0x0
	bl      Function_205eb08
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_205eb10
	mov     r0, r4
	bl      Function_205eb3c
	mov     r4, r0
	mov     r1, r5
	bl      ChangeSpriteFaceDirection_WithCheck
	mov     r0, r4
	mov     r1, #0x0
	bl      SetSpritea0
	mov     r0, r4
	bl      CopySpritePositionsFromOldToNew
	mov     r0, r4
	bl      Function_20656dc
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2065838
	mov     r1, r0
	mov     r0, r4
	bl      Function_2065638
	pop     {r3-r5,pc}
@ 0x205f62c


.thumb
Function_205f62c: @ 205f62c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_205f644
	mov     r1, r0
	mov     r0, r5
	mov     r2, r4
	bl      Function_205f6a4
	pop     {r3-r5,pc}
@ 0x205f642


.align 2, 0


.thumb
Function_205f644: @ 205f644 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r4, #0x0
	bl      Function_205eb3c
	bl      Function_2062be8
	mov     r7, r0
	mov     r0, r5
	mov     r1, r7
	mov     r2, r6
	bl      Function_2061630
	cmp     r0, #0x1
	bne     branch_205f668
	mov     r0, #0x5
	pop     {r3-r7,pc}
@ 0x205f668

.thumb
branch_205f668: @ 205f668 :thumb
	mov     r0, r5
	bl      Function_205ef84
	cmp     r0, #0x1
	bne     branch_205f676
	mov     r0, r4
	pop     {r3-r7,pc}

branch_205f676: @ 205f676 :thumb
	lsl     r0, r7, #24
	ldr     r5, [pc, #0x20] @ 0x205f69c, (=Unknown_20edb84)
	lsr     r6, r0, #24
branch_205f67c: @ 205f67c :thumb
	ldr     r1, [r5, #0x0]
	mov     r0, r6
	blx     r1
	cmp     r0, #0x1
	bne     branch_205f68e
	ldr     r0, [pc, #0x18] @ 0x205f6a0, (=Unknown_20edb88)
	lsl     r1, r4, #3
	ldr     r0, [r0, r1]
	pop     {r3-r7,pc}

branch_205f68e: @ 205f68e :thumb
	add     r5, #0x8
	ldr     r0, [r5, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r0, #0x0
	bne     branch_205f67c
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x205f69c

.word Unknown_20edb84 @ 0x205f69c
.word Unknown_20edb88 @ 0x205f6a0



.thumb
Function_205f6a4: @ 205f6a4 :thumb
	push    {r3,lr}
	mov     r3, r1
	mov     r1, r2
	ldr     r2, [pc, #0x14] @ 0x205f6c0, (=JumpTable_20edaec)
	lsl     r3, r3, #2
	ldr     r2, [r2, r3]
	blx     r2
	cmp     r0, #0x1
	bne     branch_205f6ba
	mov     r0, #0x1
	pop     {r3,pc}

branch_205f6ba: @ 205f6ba :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x205f6be

.align 2
.word JumpTable_20edaec @ 0x205f6c0




.thumb
Function_205f6c4: @ 205f6c4 :thumb
	push    {r3,lr}
	bl      Function_205fa6c
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x205f6ce


.align 2, 0


.thumb
Function_205f6d0: @ 205f6d0 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      Function_205eb3c
	mov     r4, r0
	bl      LoadSpriteFace2Direction
	mov     r6, r0
	mov     r0, r5
	mov     r1, r6
	bl      Function_205fab0
	mov     r7, r0
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_2060b7c
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_205ef40
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x0
	beq     branch_205f782
	mov     r0, r5
	bl      Function_205fa6c
	cmp     r7, #0x1
	beq     branch_205f722
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_205ef6c
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_205eb08
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x205f722

.thumb
branch_205f722: @ 205f722 :thumb
	mov     r0, r6
	bl      GetOppositeFaceDirection
	mov     r6, r0
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_2060b7c
	cmp     r0, #0x0
	beq     branch_205f73c
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x205f73c

.thumb
branch_205f73c: @ 205f73c :thumb
	mov     r1, #0x6
	mov     r0, r4
	lsl     r1, r1, #6
	bl      SetSpriteFlags
	mov     r0, r6
	mov     r1, #0x8
	bl      Function_2065838
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x3
	bl      Function_2060b64
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_205ef6c
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_205ef40
	mov     r1, #0x0
	mvn     r1, r1
	mov     r0, r5
	mov     r2, r1
	bl      Function_205ebec
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_205eb08
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x205f782

.thumb
branch_205f782: @ 205f782 :thumb
	mov     r0, r5
	mov     r1, r7
	bl      Function_205fb10
	cmp     r0, #0x0
	bne     branch_205f7ea
	mov     r0, r5
	bl      Function_205fa6c
	mov     r0, r6
	bl      GetOppositeFaceDirection
	mov     r6, r0
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_2060b7c
	cmp     r0, #0x0
	beq     branch_205f7ae
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x205f7ae

.thumb
branch_205f7ae: @ 205f7ae :thumb
	mov     r1, #0x6
	mov     r0, r4
	lsl     r1, r1, #6
	bl      SetSpriteFlags
	mov     r0, r6
	mov     r1, #0x8
	bl      Function_2065838
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x3
	bl      Function_2060b64
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_205ef6c
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_205ef40
	mov     r1, #0x0
	mvn     r1, r1
	mov     r0, r5
	mov     r2, r1
	bl      Function_205ebec
	b       branch_205f7fc

branch_205f7ea: @ 205f7ea :thumb
	mov     r1, #0x6
	mov     r0, r4
	lsl     r1, r1, #6
	bl      SetSpriteFlags
	mov     r0, r5
	mov     r1, r6
	bl      Function_205fb40
branch_205f7fc: @ 205f7fc :thumb
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_205eb08
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x205f808


.thumb
Function_205f808: @ 205f808 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r7, r1
	bl      Function_205eb3c
	mov     r6, r0
	bl      LoadSpriteFace2Direction
	mov     r4, r0
	ldr     r0, [pc, #0x13c] @ 0x205f958, (=0x654)
	bl      Function_2005748
	cmp     r4, #0x0
	bne     branch_205f8c2
	mov     r0, r5
	bl      Function_205eb74
	cmp     r0, #0x1
	bne     branch_205f85c
	mov     r0, r5
	bl      Function_205ebb8
	cmp     r0, #0x3
	blt     branch_205f85c
	cmp     r7, #0x0
	bne     branch_205f85c
	mov     r0, r4
	mov     r1, #0x15
	bl      Function_2065838
	mov     r2, r0
	mov     r0, r5
	mov     r1, r6
	mov     r3, #0x6
	bl      Function_2060b64
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_205eb08
	mov     r0, #0x1
	pop     {r3-r7,pc}

branch_205f85c: @ 205f85c :thumb
	mov     r0, r4
	bl      GetOppositeFaceDirection
	mov     r4, r0
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	bl      Function_2060b7c
	cmp     r0, #0x0
	beq     branch_205f876
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_205f876: @ 205f876 :thumb
	mov     r1, #0x6
	mov     r0, r6
	lsl     r1, r1, #6
	bl      SetSpriteFlags
	mov     r0, r4
	mov     r1, #0x8
	bl      Function_2065838
	mov     r2, r0
	mov     r0, r5
	mov     r1, r6
	mov     r3, #0x3
	bl      Function_2060b64
	mov     r0, r5
	bl      Function_205ebc0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_205ef40
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_205eb08
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_205f01c
	mov     r1, #0x0
	mvn     r1, r1
	mov     r0, r5
	mov     r2, r1
	bl      Function_205ebec
	mov     r0, #0x1
	pop     {r3-r7,pc}

branch_205f8c2: @ 205f8c2 :thumb
	cmp     r4, #0x1
	bne     branch_205f954
	mov     r0, r5
	bl      Function_205f034
	cmp     r0, #0x0
	bne     branch_205f90e
	mov     r0, r4
	mov     r1, #0x15
	bl      Function_2065838
	mov     r2, r0
	mov     r0, r5
	mov     r1, r6
	mov     r3, #0x6
	bl      Function_2060b64
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_205eb08
	mov     r0, r5
	bl      Function_205ec88
	cmp     r0, #0x1
	bne     branch_205f8fe
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_205ebbc
branch_205f8fe: @ 205f8fe :thumb
	mov     r1, #0x0
	mvn     r1, r1
	mov     r0, r5
	mov     r2, r1
	bl      Function_205ebec
	mov     r0, #0x1
	pop     {r3-r7,pc}

branch_205f90e: @ 205f90e :thumb
	mov     r1, #0x6
	mov     r0, r6
	lsl     r1, r1, #6
	bl      SetSpriteFlags
	mov     r0, r4
	mov     r1, #0x8
	bl      Function_2065838
	mov     r2, r0
	mov     r0, r5
	mov     r1, r6
	mov     r3, #0x3
	bl      Function_2060b64
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_205ef40
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_205eb08
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_205f01c
	mov     r1, #0x0
	mvn     r1, r1
	mov     r0, r5
	mov     r2, r1
	bl      Function_205ebec
	mov     r0, #0x1
	pop     {r3-r7,pc}

branch_205f954: @ 205f954 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x205f958

.word 0x654 @ 0x205f958



.thumb
Function_205f95c: @ 205f95c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_205eb3c
	mov     r4, r0
	bl      LoadSpriteFace2Direction
	mov     r0, r5
	bl      Function_205ec88
	cmp     r0, #0x1
	bne     branch_205f988
	ldr     r0, [pc, #0x30] @ 0x205f9a8, (=0x656)
	bl      Function_2005748
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x5f
	mov     r3, #0x2
	bl      Function_2060b64
	b       branch_205f994
@ 0x205f988

.thumb
branch_205f988: @ 205f988 :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x5d
	mov     r3, #0x3
	bl      Function_2060b64
.thumb
branch_205f994: @ 205f994 :thumb
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_205ef40
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_205f074
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x205f9a8

.word 0x656 @ 0x205f9a8
.thumb
Function_205f9ac: @ 205f9ac :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_205eb3c
	mov     r4, r0
	bl      LoadSpriteFace2Direction
	mov     r0, r5
	bl      Function_205ec88
	cmp     r0, #0x1
	bne     branch_205f9d8
	ldr     r0, [pc, #0x30] @ 0x205f9f8, (=0x656)
	bl      Function_2005748
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x5e
	mov     r3, #0x2
	bl      Function_2060b64
	b       branch_205f9e4
@ 0x205f9d8

.thumb
branch_205f9d8: @ 205f9d8 :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x5c
	mov     r3, #0x2
	bl      Function_2060b64
.thumb
branch_205f9e4: @ 205f9e4 :thumb
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_205ef40
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_205f074
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x205f9f8

.word 0x656 @ 0x205f9f8
.thumb
Function_205f9fc: @ 205f9fc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_205eb3c
	mov     r4, r0
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x1
	bl      Function_2060b7c
	cmp     r0, #0x0
	bne     branch_205fa3c
	mov     r0, #0x1
	mov     r1, #0x14
	bl      Function_2065838
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x6
	bl      Function_2060b64
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_205eb08
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_205ebbc
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x205fa3c

.thumb
branch_205fa3c: @ 205fa3c :thumb
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_2065838
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x1
	bl      Function_2060b64
	mov     r0, r5
	bl      Function_205ebc0
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_205eb08
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_205ef98
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x205fa6a


.align 2, 0


.thumb
Function_205fa6c: @ 205fa6c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_205ef58
	cmp     r0, #0x1
	bne     branch_205faae
	mov     r0, r4
	bl      Function_205eb3c
	mov     r1, #0x6
	lsl     r1, r1, #6
	bl      UnsetSpriteFlags
	mov     r0, r4
	bl      Function_205f08c
	cmp     r0, #0x0
	bne     branch_205fa96
	mov     r0, r4
	bl      Function_205ebc0
.thumb
branch_205fa96: @ 205fa96 :thumb
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_205ef40
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_205f074
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_205f01c
.thumb
branch_205faae: @ 205faae :thumb
	pop     {r4,pc}
@ 0x205fab0

.thumb
Function_205fab0: @ 205fab0 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x18
	mov     r5, r1
	bl      Function_205eb3c
	mov     r4, r0
	bl      GetSpriteSpriteListFirstSprite
	mov     r6, r0
	mov     r0, r4
	add     r1, sp, #0xc
	bl      CopySprite70Struct
	add     r4, sp, #0xc
	add     r3, sp, #0x0
	ldmia   r4!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r4, #0x0]
	mov     r1, r2
	mov     r2, #0x1
	str     r0, [r3, #0x0]
	mov     r0, r5
	lsl     r2, r2, #14
	bl      Function_2064418
	mov     r0, r6
	add     r1, sp, #0x0
	bl      Function_20644a4
	cmp     r0, #0x0
	beq     branch_205faf8
	ldr     r1, [sp, #0x4]
	ldr     r0, [sp, #0x10]
	cmp     r0, r1
	bne     branch_205fafe
.thumb
branch_205faf8: @ 205faf8 :thumb
	add     sp, #0x18
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x205fafe

.thumb
branch_205fafe: @ 205fafe :thumb
	cmp     r0, r1
	ble     branch_205fb08
	add     sp, #0x18
	mov     r0, #0x2
	pop     {r4-r6,pc}
@ 0x205fb08

.thumb
branch_205fb08: @ 205fb08 :thumb
	mov     r0, #0x1
	add     sp, #0x18
	pop     {r4-r6,pc}
@ 0x205fb0e


.align 2, 0


.thumb
Function_205fb10: @ 205fb10 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_205ebb8
	mov     r1, r0
	cmp     r4, #0x1
	bne     branch_205fb28
	.hword  0x1e49 @ sub r1, r1, #0x1
	bpl     branch_205fb34
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x205fb28

.thumb
branch_205fb28: @ 205fb28 :thumb
	cmp     r4, #0x2
	bne     branch_205fb34
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r1, #0x3
	ble     branch_205fb34
	mov     r1, #0x3
.thumb
branch_205fb34: @ 205fb34 :thumb
	mov     r0, r5
	bl      Function_205ebbc
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x205fb3e


.align 2, 0


.thumb
Function_205fb40: @ 205fb40 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r7, r1
	bl      Function_205eb3c
	str     r0, [sp, #0x0]
	mov     r0, r6
	mov     r4, #0x10
	bl      Function_205ebb8
	mov     r5, #0x5
	cmp     r0, #0x1
	beq     branch_205fb64
	cmp     r0, #0x2
	beq     branch_205fb68
	cmp     r0, #0x3
	beq     branch_205fb6e
	b       branch_205fb72
@ 0x205fb64

.thumb
branch_205fb64: @ 205fb64 :thumb
	mov     r4, #0x50
	b       branch_205fb72
@ 0x205fb68

.thumb
branch_205fb68: @ 205fb68 :thumb
	mov     r4, #0x14
	mov     r5, #0x6
	b       branch_205fb72
@ 0x205fb6e

.thumb
branch_205fb6e: @ 205fb6e :thumb
	mov     r4, #0x14
	mov     r5, #0x6
.thumb
branch_205fb72: @ 205fb72 :thumb
	mov     r0, r7
	mov     r1, r4
	bl      Function_2065838
	mov     r2, r0
	ldr     r1, [sp, #0x0]
	mov     r0, r6
	mov     r3, r5
	bl      Function_2060b64
	pop     {r3-r7,pc}
@ 0x205fb88


.thumb
Function_205fb88: @ 205fb88 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r6, r0
	mov     r7, r1
	str     r2, [sp, #0x8]
	mov     r5, r3
	bl      Function_205eb74
	mov     r4, r0
	mov     r0, r6
	bl      Function_205eb3c
	mov     r1, r0
	cmp     r4, #0x0
	beq     branch_205fbae
	cmp     r4, #0x1
	beq     branch_205fbc4
	cmp     r4, #0x2
	bne     branch_205fbda
.thumb
branch_205fbae: @ 205fbae :thumb
	str     r5, [sp, #0x0]
	add     r0, sp, #0x10
	ldrh    r0, [r0, #0x10]
	ldr     r3, [sp, #0x8]
	mov     r2, r7
	str     r0, [sp, #0x4]
	mov     r0, r6
	bl      Function_205fbe4
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x205fbc4

.thumb
branch_205fbc4: @ 205fbc4 :thumb
	str     r5, [sp, #0x0]
	add     r0, sp, #0x10
	ldrh    r0, [r0, #0x10]
	ldr     r3, [sp, #0x8]
	mov     r2, r7
	str     r0, [sp, #0x4]
	mov     r0, r6
	bl      Function_20602dc
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x205fbda

.thumb
branch_205fbda: @ 205fbda :thumb
	bl      ErrorHandling
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x205fbe2


.align 2, 0


.thumb
Function_205fbe4: @ 205fbe4 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r6, r3
	mov     r4, r1
	mov     r1, r6
	mov     r5, r0
	bl      Function_205fc48
	cmp     r0, #0x0
	beq     branch_205fc04
	cmp     r0, #0x1
	beq     branch_205fc1a
	cmp     r0, #0x2
	beq     branch_205fc30
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x205fc04

.thumb
branch_205fc04: @ 205fc04 :thumb
	add     r3, sp, #0x8
	ldrh    r0, [r3, #0x14]
	mov     r1, r4
	mov     r2, r6
	str     r0, [sp, #0x0]
	ldrh    r3, [r3, #0x10]
	mov     r0, r5
	bl      Function_205fd20
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x205fc1a

.thumb
branch_205fc1a: @ 205fc1a :thumb
	add     r3, sp, #0x8
	ldrh    r0, [r3, #0x14]
	mov     r1, r4
	mov     r2, r6
	str     r0, [sp, #0x0]
	ldrh    r3, [r3, #0x10]
	mov     r0, r5
	bl      Function_205fd40
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x205fc30

.thumb
branch_205fc30: @ 205fc30 :thumb
	add     r3, sp, #0x8
	ldrh    r0, [r3, #0x14]
	mov     r1, r4
	mov     r2, r6
	str     r0, [sp, #0x0]
	ldrh    r3, [r3, #0x10]
	mov     r0, r5
	bl      Function_2060258
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x205fc46


.align 2, 0


.thumb
Function_205fc48: @ 205fc48 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_205fcc0
	mov     r4, r0
	bl      Function_205fc64
	mov     r1, r0
	mov     r0, r5
	bl      Function_205eb08
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x205fc62


.align 2, 0


.thumb
Function_205fc64: @ 205fc64 :thumb
	push    {r3,lr}
	cmp     r0, #0x0
	beq     branch_205fc74
	cmp     r0, #0x1
	beq     branch_205fc78
	cmp     r0, #0x2
	beq     branch_205fc7c
	b       branch_205fc80
@ 0x205fc74

.thumb
branch_205fc74: @ 205fc74 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x205fc78

.thumb
branch_205fc78: @ 205fc78 :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x205fc7c

.thumb
branch_205fc7c: @ 205fc7c :thumb
	mov     r0, #0x2
	pop     {r3,pc}
@ 0x205fc80

.thumb
branch_205fc80: @ 205fc80 :thumb
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x205fc88

.thumb
Function_205fc88: @ 205fc88 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	mov     r4, r2
	bl      Function_205dd5c
	cmp     r0, #0x1
	bne     branch_205fc9c
	mov     r0, #0x4
	pop     {r3-r5,pc}
@ 0x205fc9c

.thumb
branch_205fc9c: @ 205fc9c :thumb
	mov     r0, r5
	bl      Function_205dd50
	cmp     r0, #0x1
	bne     branch_205fcaa
	mov     r0, #0x8
	pop     {r3-r5,pc}
@ 0x205fcaa

.thumb
branch_205fcaa: @ 205fcaa :thumb
	mov     r0, r5
	bl      Function_205dd44
	cmp     r0, #0x1
	bne     branch_205fcb6
	mov     r4, #0xc
.thumb
branch_205fcb6: @ 205fcb6 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x205fcba


.align 2, 0


.thumb
Function_205fcbc: @ 205fcbc :thumb
	mov     r0, r2
	bx      lr
@ 0x205fcc0

.thumb
Function_205fcc0: @ 205fcc0 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r1, #0x0
	mvn     r1, r1
	mov     r5, r0
	cmp     r4, r1
	bne     branch_205fcd8
	mov     r1, #0x0
	bl      Function_205eb08
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x205fcd8

.thumb
branch_205fcd8: @ 205fcd8 :thumb
	bl      GetSpriteFaceDirection
	mov     r6, r0
	mov     r0, r5
	bl      Function_205f108
	cmp     r0, #0x0
	beq     branch_205fcf8
	cmp     r0, #0x1
	beq     branch_205fcf8
	cmp     r0, #0x2
	beq     branch_205fcf8
	mov     r0, r5
	bl      Function_205ea94
	mov     r6, r0
.thumb
branch_205fcf8: @ 205fcf8 :thumb
	cmp     r6, r4
	beq     branch_205fd12
	mov     r0, r5
	bl      Function_205eb0c
	cmp     r0, #0x1
	beq     branch_205fd12
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_205eb08
	mov     r0, #0x2
	pop     {r4-r6,pc}
@ 0x205fd12

.thumb
branch_205fd12: @ 205fd12 :thumb
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_205eb08
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x205fd1e


.align 2, 0
.thumb
Function_205fd20: @ 205fd20 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	bl      LoadSpriteFaceDirection
	mov     r1, #0x0
	bl      Function_2065838
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x1
	bl      Function_2060b64
	pop     {r3-r5,pc}
@ 0x205fd40


.thumb
Function_205fd40: @ 205fd40 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	str     r3, [sp, #0x4]
	mov     r5, r0
	mov     r6, r1
	mov     r7, r2
.thumb
branch_205fd4c: @ 205fd4c :thumb
	ldr     r4, [sp, #0x20]
.thumb
branch_205fd4e: @ 205fd4e :thumb
	bl      Function_205f108
	cmp     r0, #0x5
	bhi     branch_205fdb6
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x205fd62

Jumppoints_205fd62:
.hword branch_205fdb6 - Jumppoints_205fd62 - 2
.hword branch_205fdb6 - Jumppoints_205fd62 - 2
.hword branch_205fd6e - Jumppoints_205fd62 - 2
.hword branch_205fd80 - Jumppoints_205fd62 - 2
.hword branch_205fd92 - Jumppoints_205fd62 - 2
.hword branch_205fda4 - Jumppoints_205fd62 - 2
.thumb
branch_205fd6e: @ 205fd6e :thumb
	str     r4, [sp, #0x0]
	ldr     r3, [sp, #0x4]
	mov     r0, r5
	mov     r1, r6
	mov     r2, r7
	bl      Function_205fecc
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x205fd80

.thumb
branch_205fd80: @ 205fd80 :thumb
	str     r4, [sp, #0x0]
	ldr     r3, [sp, #0x4]
	mov     r0, r5
	mov     r1, r6
	mov     r2, r7
	bl      Function_20600cc
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x205fd92

.thumb
branch_205fd92: @ 205fd92 :thumb
	str     r4, [sp, #0x0]
	ldr     r3, [sp, #0x4]
	mov     r0, r5
	mov     r1, r6
	mov     r2, r7
	bl      Function_2060150
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x205fda4

.thumb
branch_205fda4: @ 205fda4 :thumb
	str     r4, [sp, #0x0]
	ldr     r3, [sp, #0x4]
	mov     r0, r5
	mov     r1, r6
	mov     r2, r7
	bl      Function_20601d4
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x205fdb6

.thumb
branch_205fdb6: @ 205fdb6 :thumb
	str     r4, [sp, #0x0]
	ldr     r3, [sp, #0x4]
	mov     r0, r5
	mov     r1, r6
	mov     r2, r7
	bl      Function_205fdc8
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x205fdc8


.thumb
Function_205fdc8: @ 205fdc8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r7, r1
	str     r2, [sp, #0x0]
	bl      Function_2060b7c
	mov     r4, r0
	mov     r0, r5
	bl      Function_205eb74
	cmp     r0, #0x2
	beq     branch_205fe66
	mov     r6, #0x4
	mov     r0, r4
	tst     r0, r6
	beq     branch_205fdf2
	mov     r0, #0x38
	str     r0, [sp, #0x4]
	mov     r6, #0x3
	b       branch_205feae
@ 0x205fdf2

.thumb
branch_205fdf2: @ 205fdf2 :thumb
	mov     r0, #0x80
	tst     r0, r4
	beq     branch_205fe00
	mov     r0, #0x75
	str     r0, [sp, #0x4]
	mov     r6, #0x2
	b       branch_205feae
@ 0x205fe00

.thumb
branch_205fe00: @ 205fe00 :thumb
	cmp     r4, #0x0
	beq     branch_205fe20
	mov     r0, #0x1c
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	mov     r6, #0x1
	tst     r0, r4
	bne     branch_205fe16
	ldr     r0, [pc, #0xb4] @ 0x205fec8, (=0x601)
	bl      Function_2005748
.thumb
branch_205fe16: @ 205fe16 :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, r7
	bl      ChangeSpriteFace2Direction
	b       branch_205feae
@ 0x205fe20

.thumb
branch_205fe20: @ 205fe20 :thumb
	mov     r0, r5
	mov     r4, #0xc
	bl      Function_205ec0c
	bl      Function_205ec40
	cmp     r0, #0x1
	bne     branch_205fe42
	add     r1, sp, #0x10
	ldrh    r1, [r1, #0x10]
	mov     r0, r5
	bl      Function_20613fc
	cmp     r0, #0x1
	bne     branch_205fe42
	mov     r4, #0x58
	mov     r6, #0x5
.thumb
branch_205fe42: @ 205fe42 :thumb
	mov     r0, r7
	bl      Function_2062be8
	mov     r1, r0
	lsl     r1, r1, #24
	mov     r0, r7
	lsr     r1, r1, #24
	mov     r2, r4
	bl      Function_205fc88
	str     r0, [sp, #0x4]
	mov     r0, r5
	bl      Function_20615c8
	mov     r0, r5
	bl      Function_205f048
	b       branch_205feae
@ 0x205fe66

.thumb
branch_205fe66: @ 205fe66 :thumb
	cmp     r4, #0x0
	beq     branch_205fe6e
	cmp     r4, #0x20
	bne     branch_205fe94
.thumb
branch_205fe6e: @ 205fe6e :thumb
	mov     r0, r7
	mov     r6, #0x5
	bl      Function_2062be8
	mov     r1, r0
	lsl     r1, r1, #24
	mov     r0, r7
	lsr     r1, r1, #24
	mov     r2, #0x10
	bl      Function_205fcbc
	str     r0, [sp, #0x4]
	mov     r0, r5
	bl      Function_20615c8
	mov     r0, r5
	bl      Function_205f048
	b       branch_205feae
@ 0x205fe94

.thumb
branch_205fe94: @ 205fe94 :thumb
	mov     r0, #0x1c
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	mov     r6, #0x1
	tst     r0, r4
	bne     branch_205fea6
	ldr     r0, [pc, #0x24] @ 0x205fec8, (=0x601)
	bl      Function_2005748
.thumb
branch_205fea6: @ 205fea6 :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, r7
	bl      ChangeSpriteFace2Direction
.thumb
branch_205feae: @ 205feae :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	bl      Function_2065838
	mov     r2, r0
	mov     r0, r5
	mov     r1, r7
	mov     r3, r6
	bl      Function_2060b64
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x205fec6

.align 2
.word 0x601 @ 0x205fec8



.thumb
Function_205fecc: @ 205fecc :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r4, r1
	str     r2, [sp, #0x4]
	bl      Function_20611fc
	mov     r6, r0
	mov     r0, #0x80
	mov     r1, r6
	bic     r1, r0
	beq     branch_205ff56
	mov     r0, r4
	bl      GetSpriteSpriteListFirstSprite
	mov     r7, r0
	mov     r0, r4
	bl      LoadSpritePositionX
	str     r0, [sp, #0x10]
	mov     r0, r4
	bl      LoadSpritePositionZ
	str     r0, [sp, #0xc]
	mov     r0, r4
	bl      LoadSpritePositionY
	ldr     r1, [sp, #0xc]
	str     r0, [sp, #0x8]
	lsr     r0, r1, #31
	add     r0, r1, r0
	asr     r0, r0, #1
	str     r0, [sp, #0xc]
	add     r0, sp, #0x8
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	mov     r0, r5
	add     r2, sp, #0x10
	add     r3, sp, #0xc
	bl      Function_2061674
	ldr     r1, [sp, #0x10]
	ldr     r2, [sp, #0xc]
	ldr     r3, [sp, #0x8]
	mov     r0, r7
	bl      0x2250fbc
	cmp     r0, #0x0
	bne     branch_205ff56
	ldr     r1, [sp, #0x10]
	ldr     r2, [sp, #0xc]
	ldr     r3, [sp, #0x8]
	mov     r0, r7
	bl      0x2250fd8
	cmp     r0, #0x1
	bne     branch_205ff56
	ldr     r1, [sp, #0x10]
	ldr     r2, [sp, #0xc]
	ldr     r3, [sp, #0x8]
	mov     r0, r7
	bl      0x2251000
	ldr     r2, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	bl      Function_20611fc
	mov     r6, r0
.thumb
branch_205ff56: @ 205ff56 :thumb
	mov     r0, r5
	bl      Function_205eb74
	cmp     r0, #0x2
	beq     branch_205ffc2
	mov     r0, #0x80
	tst     r0, r6
	beq     branch_205ff78
	mov     r0, r5
	mov     r7, #0x75
	mov     r6, #0x2
	bl      Function_20615c8
	mov     r0, r5
	bl      Function_205f048
	b       branch_205ffee
@ 0x205ff78

.thumb
branch_205ff78: @ 205ff78 :thumb
	cmp     r6, #0x0
	beq     branch_205ff90
	ldr     r0, [pc, #0x88] @ 0x2060008, (=0x601)
	mov     r7, #0x1c
	mov     r6, #0x1
	bl      Function_2005748
	ldr     r1, [sp, #0x4]
	mov     r0, r4
	bl      ChangeSpriteFace2Direction
	b       branch_205ffee
@ 0x205ff90

.thumb
branch_205ff90: @ 205ff90 :thumb
	mov     r0, r5
	mov     r7, #0xc
	mov     r6, #0x4
	bl      Function_205ec0c
	bl      Function_205ec40
	cmp     r0, #0x1
	bne     branch_205ffb4
	add     r1, sp, #0x18
	ldrh    r1, [r1, #0x10]
	mov     r0, r5
	bl      Function_20613fc
	cmp     r0, #0x1
	bne     branch_205ffb4
	mov     r7, #0x58
	mov     r6, #0x5
.thumb
branch_205ffb4: @ 205ffb4 :thumb
	mov     r0, r5
	bl      Function_20615c8
	mov     r0, r5
	bl      Function_205f048
	b       branch_205ffee
@ 0x205ffc2

.thumb
branch_205ffc2: @ 205ffc2 :thumb
	cmp     r6, #0x0
	beq     branch_205ffca
	cmp     r6, #0x20
	bne     branch_205ffdc
.thumb
branch_205ffca: @ 205ffca :thumb
	mov     r0, r5
	mov     r6, #0x5
	mov     r7, #0x10
	bl      Function_20615c8
	mov     r0, r5
	bl      Function_205f048
	b       branch_205ffee
@ 0x205ffdc

.thumb
branch_205ffdc: @ 205ffdc :thumb
	ldr     r0, [pc, #0x28] @ 0x2060008, (=0x601)
	mov     r7, #0x1c
	mov     r6, #0x1
	bl      Function_2005748
	ldr     r1, [sp, #0x4]
	mov     r0, r4
	bl      ChangeSpriteFace2Direction
.thumb
branch_205ffee: @ 205ffee :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, r7
	bl      Function_2065838
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	mov     r3, r6
	bl      Function_2060b64
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2060006

.align 2
.word 0x601 @ 0x2060008



.thumb
Function_206000c: @ 206000c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	ldr     r3, [sp, #0x34]
	mov     r5, r0
	str     r1, [sp, #0x0]
	mov     r4, r2
	ldr     r7, [sp, #0x30]
	str     r3, [sp, #0x34]
	bl      Function_20611fc
	mov     r6, r0
	mov     r0, r5
	bl      Function_205eb74
	cmp     r0, #0x2
	beq     branch_206007e
	cmp     r6, #0x0
	beq     branch_206004c
	lsl     r0, r4, #2
	str     r0, [sp, #0x8]
	ldr     r4, [r7, r0]
	ldr     r0, [pc, #0x90] @ 0x20600c8, (=0x601)
	mov     r6, #0x1
	bl      Function_2005748
	ldr     r2, [sp, #0x34]
	ldr     r1, [sp, #0x8]
	ldr     r0, [sp, #0x0]
	ldr     r1, [r2, r1]
	bl      ChangeSpriteFace2Direction
	b       branch_20600b6
@ 0x206004c

.thumb
branch_206004c: @ 206004c :thumb
	ldr     r0, [sp, #0x24]
	lsl     r7, r4, #2
	ldr     r4, [r0, r7]
	mov     r0, r5
	mov     r6, #0x4
	bl      Function_205ec0c
	bl      Function_205ec40
	cmp     r0, #0x1
	bne     branch_2060076
	add     r1, sp, #0x10
	ldrh    r1, [r1, #0x10]
	mov     r0, r5
	bl      Function_20613fc
	cmp     r0, #0x1
	bne     branch_2060076
	ldr     r0, [sp, #0x28]
	mov     r6, #0x5
	ldr     r4, [r0, r7]
.thumb
branch_2060076: @ 2060076 :thumb
	mov     r0, r5
	bl      Function_20615c8
	b       branch_20600b6
@ 0x206007e

.thumb
branch_206007e: @ 206007e :thumb
	cmp     r6, #0x0
	beq     branch_2060086
	cmp     r6, #0x20
	bne     branch_206009c
.thumb
branch_2060086: @ 2060086 :thumb
	ldr     r1, [sp, #0x2c]
	lsl     r0, r4, #2
	ldr     r4, [r1, r0]
	mov     r0, r5
	mov     r6, #0x4
	bl      Function_20615c8
	mov     r0, r5
	bl      Function_205f048
	b       branch_20600b6
@ 0x206009c

.thumb
branch_206009c: @ 206009c :thumb
	lsl     r0, r4, #2
	str     r0, [sp, #0x4]
	ldr     r4, [r7, r0]
	ldr     r0, [pc, #0x24] @ 0x20600c8, (=0x601)
	mov     r6, #0x1
	bl      Function_2005748
	ldr     r2, [sp, #0x34]
	ldr     r1, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	ldr     r1, [r2, r1]
	bl      ChangeSpriteFace2Direction
.thumb
branch_20600b6: @ 20600b6 :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	mov     r2, r4
	mov     r3, r6
	bl      Function_2060b64
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x20600c6

.align 2
.word 0x601 @ 0x20600c8



.thumb
Function_20600cc: @ 20600cc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x78
	ldr     r5, [pc, #0x68] @ 0x206013c, (=Unknown_20edacc)
	add     r4, sp, #0x68
	str     r0, [sp, #0x18]
	str     r1, [sp, #0x1c]
	ldmia   r5!, {r0,r1}
	mov     r7, r4
	stmia   r4!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldr     r5, [pc, #0x5c] @ 0x2060140, (=Unknown_20edabc)
	add     r4, sp, #0x58
	ldmia   r5!, {r0,r1}
	str     r4, [sp, #0x20]
	stmia   r4!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldr     r5, [pc, #0x50] @ 0x2060144, (=Unknown_20edaac)
	add     r4, sp, #0x48
	ldmia   r5!, {r0,r1}
	str     r4, [sp, #0x24]
	stmia   r4!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldr     r5, [pc, #0x48] @ 0x2060148, (=Unknown_20eda9c)
	add     r4, sp, #0x38
	ldmia   r5!, {r0,r1}
	mov     r12, r4
	stmia   r4!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldr     r5, [pc, #0x3c] @ 0x206014c, (=Unknown_20eda8c)
	add     r4, sp, #0x28
	mov     r6, r4
	ldmia   r5!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r4!, {r0,r1}
	add     r0, sp, #0x80
	ldrh    r0, [r0, #0x10]
	ldr     r1, [sp, #0x1c]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x20]
	str     r7, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x24]
	str     r0, [sp, #0xc]
	mov     r0, r12
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x18]
	str     r6, [sp, #0x14]
	bl      Function_206000c
	add     sp, #0x78
	pop     {r3-r7,pc}
@ 0x206013c

.word Unknown_20edacc @ 0x206013c
.word Unknown_20edabc @ 0x2060140
.word Unknown_20edaac @ 0x2060144
.word Unknown_20eda9c @ 0x2060148
.word Unknown_20eda8c @ 0x206014c



.thumb
Function_2060150: @ 2060150 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x78
	ldr     r5, [pc, #0x68] @ 0x20601c0, (=Unknown_20eda7c)
	add     r4, sp, #0x68
	str     r0, [sp, #0x18]
	str     r1, [sp, #0x1c]
	ldmia   r5!, {r0,r1}
	mov     r7, r4
	stmia   r4!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldr     r5, [pc, #0x5c] @ 0x20601c4, (=Unknown_20eda5c)
	add     r4, sp, #0x58
	ldmia   r5!, {r0,r1}
	str     r4, [sp, #0x20]
	stmia   r4!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldr     r5, [pc, #0x50] @ 0x20601c8, (=Unknown_20ed9ec)
	add     r4, sp, #0x48
	ldmia   r5!, {r0,r1}
	str     r4, [sp, #0x24]
	stmia   r4!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldr     r5, [pc, #0x48] @ 0x20601cc, (=Unknown_20ed9cc)
	add     r4, sp, #0x38
	ldmia   r5!, {r0,r1}
	mov     r12, r4
	stmia   r4!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldr     r5, [pc, #0x3c] @ 0x20601d0, (=Unknown_20edadc)
	add     r4, sp, #0x28
	mov     r6, r4
	ldmia   r5!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r4!, {r0,r1}
	add     r0, sp, #0x80
	ldrh    r0, [r0, #0x10]
	ldr     r1, [sp, #0x1c]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x20]
	str     r7, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x24]
	str     r0, [sp, #0xc]
	mov     r0, r12
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x18]
	str     r6, [sp, #0x14]
	bl      Function_206000c
	add     sp, #0x78
	pop     {r3-r7,pc}
@ 0x20601c0

.word Unknown_20eda7c @ 0x20601c0
.word Unknown_20eda5c @ 0x20601c4
.word Unknown_20ed9ec @ 0x20601c8
.word Unknown_20ed9cc @ 0x20601cc
.word Unknown_20edadc @ 0x20601d0



.thumb
Function_20601d4: @ 20601d4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x78
	ldr     r5, [pc, #0x68] @ 0x2060244, (=Unknown_20eda2c)
	add     r4, sp, #0x68
	str     r0, [sp, #0x18]
	str     r1, [sp, #0x1c]
	ldmia   r5!, {r0,r1}
	mov     r7, r4
	stmia   r4!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldr     r5, [pc, #0x5c] @ 0x2060248, (=Unknown_20eda1c)
	add     r4, sp, #0x58
	ldmia   r5!, {r0,r1}
	str     r4, [sp, #0x20]
	stmia   r4!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldr     r5, [pc, #0x50] @ 0x206024c, (=Unknown_20eda6c)
	add     r4, sp, #0x48
	ldmia   r5!, {r0,r1}
	str     r4, [sp, #0x24]
	stmia   r4!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldr     r5, [pc, #0x48] @ 0x2060250, (=Unknown_20ed9dc)
	add     r4, sp, #0x38
	ldmia   r5!, {r0,r1}
	mov     r12, r4
	stmia   r4!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldr     r5, [pc, #0x3c] @ 0x2060254, (=Unknown_20eda3c)
	add     r4, sp, #0x28
	mov     r6, r4
	ldmia   r5!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r4!, {r0,r1}
	add     r0, sp, #0x80
	ldrh    r0, [r0, #0x10]
	ldr     r1, [sp, #0x1c]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x20]
	str     r7, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x24]
	str     r0, [sp, #0xc]
	mov     r0, r12
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x18]
	str     r6, [sp, #0x14]
	bl      Function_206000c
	add     sp, #0x78
	pop     {r3-r7,pc}
@ 0x2060244

.word Unknown_20eda2c @ 0x2060244
.word Unknown_20eda1c @ 0x2060248
.word Unknown_20eda6c @ 0x206024c
.word Unknown_20ed9dc @ 0x2060250
.word Unknown_20eda3c @ 0x2060254



.thumb
Function_2060258: @ 2060258 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	mov     r5, r2
	mov     r7, r0
	mov     r6, r1
	mov     r4, r5
	bl      Function_205f108
	cmp     r0, #0x3
	beq     branch_2060276
	cmp     r0, #0x4
	beq     branch_206028a
	cmp     r0, #0x5
	beq     branch_206029e
	b       branch_20602b0

branch_2060276: @ 2060276 :thumb
	ldr     r4, [pc, #0x58] @ 0x20602d0, (=Unknown_20eda0c)
	add     r3, sp, #0x20
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	lsl     r0, r5, #2
	ldr     r4, [r2, r0]
	b       branch_20602b0

branch_206028a: @ 206028a :thumb
	ldr     r4, [pc, #0x48] @ 0x20602d4, (=Unknown_20eda4c)
	add     r3, sp, #0x10
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	lsl     r0, r5, #2
	ldr     r4, [r2, r0]
	b       branch_20602b0

branch_206029e: @ 206029e :thumb
	ldr     r4, [pc, #0x38] @ 0x20602d8, (=Unknown_20ed9fc)
	add     r3, sp, #0x0
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	lsl     r0, r5, #2
	ldr     r4, [r2, r0]
branch_20602b0: @ 20602b0 :thumb
	mov     r0, r4
	mov     r1, #0x28
	bl      Function_2065838
	mov     r2, r0
	mov     r0, r7
	mov     r1, r6
	mov     r3, #0x1
	bl      Function_2060b64
	mov     r0, r6
	mov     r1, r5
	bl      ChangeSpriteFace2Direction
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x20602d0

.word Unknown_20eda0c @ 0x20602d0
.word Unknown_20eda4c @ 0x20602d4
.word Unknown_20ed9fc @ 0x20602d8



.thumb
Function_20602dc: @ 20602dc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3
	bl      Function_205ec88
	cmp     r0, #0x1
	add     r0, sp, #0x10
	bne     branch_206030a
	ldrh    r1, [r0, #0x10]
	mov     r2, r6
	mov     r3, r7
	str     r1, [sp, #0x0]
	ldrh    r0, [r0, #0x14]
	mov     r1, r4
	str     r0, [sp, #0x4]
	mov     r0, r5
	bl      Function_206078c
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x206030a

.thumb
branch_206030a: @ 206030a :thumb
	ldrh    r1, [r0, #0x10]
	mov     r2, r6
	mov     r3, r7
	str     r1, [sp, #0x0]
	ldrh    r0, [r0, #0x14]
	mov     r1, r4
	str     r0, [sp, #0x4]
	mov     r0, r5
	bl      Function_2060420
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2060322


.align 2, 0


.thumb
Function_2060324: @ 2060324 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r5, r1
	bl      Function_205eb74
	cmp     r0, #0x1
	bne     branch_2060384
	mov     r0, #0x2
	tst     r0, r5
	beq     branch_2060384
	mov     r0, r4
	bl      Function_205eb3c
	bl      Function_2062be8
	mov     r5, r0
	lsl     r0, r5, #24
	lsr     r0, r0, #24
	bl      Function_205dd90
	cmp     r0, #0x0
	bne     branch_2060384
	lsl     r0, r5, #24
	lsr     r0, r0, #24
	bl      Function_205dd9c
	cmp     r0, #0x0
	bne     branch_2060384
	mov     r0, r4
	mov     r5, #0x1
	bl      Function_205ec88
	cmp     r0, #0x1
	bne     branch_206036a
	mov     r5, #0x0
.thumb
branch_206036a: @ 206036a :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_205ec78
	cmp     r5, #0x0
	bne     branch_206037e
	ldr     r0, [pc, #0x10] @ 0x2060388, (=0x61c)
	bl      Function_2005748
	pop     {r3-r5,pc}
@ 0x206037e

.thumb
branch_206037e: @ 206037e :thumb
	ldr     r0, [pc, #0xc] @ 0x206038c, (=0x619)
	bl      Function_2005748
.thumb
branch_2060384: @ 2060384 :thumb
	pop     {r3-r5,pc}
@ 0x2060386

.align 2
.word 0x61c @ 0x2060388
.word 0x619 @ 0x206038c



.thumb
Function_2060390: @ 2060390 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, #0x4c
	bl      Function_205ebb8
	cmp     r0, #0x1
	beq     branch_20603a8
	cmp     r0, #0x2
	beq     branch_20603ac
	cmp     r0, #0x3
	beq     branch_20603b0
	b       branch_20603b2
@ 0x20603a8

.thumb
branch_20603a8: @ 20603a8 :thumb
	mov     r4, #0x10
	b       branch_20603b2
@ 0x20603ac

.thumb
branch_20603ac: @ 20603ac :thumb
	mov     r4, #0x50
	b       branch_20603b2
@ 0x20603b0

.thumb
branch_20603b0: @ 20603b0 :thumb
	mov     r4, #0x14
.thumb
branch_20603b2: @ 20603b2 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_2065838
	pop     {r3-r5,pc}
@ 0x20603bc

.thumb
Function_20603bc: @ 20603bc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r1, #0x1
	mov     r2, #0x3
	bl      Function_205ebcc
	mov     r4, r0
	mov     r0, r5
	bl      Function_205efb0
	cmp     r0, #0x0
	bne     branch_20603e0
	cmp     r4, #0x2
	blt     branch_20603e0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_205ef98
.thumb
branch_20603e0: @ 20603e0 :thumb
	cmp     r4, #0x3
	bne     branch_20603e8
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x20603e8

.thumb
branch_20603e8: @ 20603e8 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x20603ec


.thumb
Function_20603ec: @ 20603ec :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, #0x1
	bl      Function_205ebb8
	sub     r4, r0, #0x1
	bpl     branch_20603fe
	mov     r4, #0x0
	mov     r6, r4
branch_20603fe: @ 20603fe :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_205ebbc
	mov     r0, r5
	bl      Function_205efb0
	cmp     r0, #0x1
	bne     branch_206041c
	cmp     r4, #0x0
	bne     branch_206041c
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_205ef98
branch_206041c: @ 206041c :thumb
	mov     r0, r6
	pop     {r4-r6,pc}
@ 0x2060420


.thumb
Function_2060420: @ 2060420 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r7, r1
	mov     r1, r3
	mov     r6, r0
	str     r3, [sp, #0x4]
	ldr     r5, [sp, #0x20]
	ldr     r4, [sp, #0x24]
	bl      Function_2060494
	cmp     r0, #0x3
	bhi     branch_2060490
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2060444

Jumppoints_2060444:
.hword branch_206044c - Jumppoints_2060444 - 2
.hword branch_206045e - Jumppoints_2060444 - 2
.hword branch_2060470 - Jumppoints_2060444 - 2
.hword branch_2060482 - Jumppoints_2060444 - 2
.thumb
branch_206044c: @ 206044c :thumb
	ldr     r2, [sp, #0x4]
	mov     r0, r6
	mov     r1, r7
	mov     r3, r5
	str     r4, [sp, #0x0]
	bl      Function_2060548
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x206045e

.thumb
branch_206045e: @ 206045e :thumb
	ldr     r2, [sp, #0x4]
	mov     r0, r6
	mov     r1, r7
	mov     r3, r5
	str     r4, [sp, #0x0]
	bl      Function_2060570
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2060470

.thumb
branch_2060470: @ 2060470 :thumb
	ldr     r2, [sp, #0x4]
	mov     r0, r6
	mov     r1, r7
	mov     r3, r5
	str     r4, [sp, #0x0]
	bl      Function_2060688
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2060482

.thumb
branch_2060482: @ 2060482 :thumb
	ldr     r2, [sp, #0x4]
	mov     r0, r6
	mov     r1, r7
	mov     r3, r5
	str     r4, [sp, #0x0]
	bl      Function_20606c8
.thumb
branch_2060490: @ 2060490 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2060494

.thumb
Function_2060494: @ 2060494 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_20604e4
	mov     r4, r0
	bl      Function_20604b0
	mov     r1, r0
	mov     r0, r5
	bl      Function_205eb08
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x20604ae


.align 2, 0
.thumb
Function_20604b0: @ 20604b0 :thumb
	push    {r3,lr}
	cmp     r0, #0x3
	bhi     branch_20604da
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x20604c2

Jumppoints_20604c2:
.hword branch_20604ca - Jumppoints_20604c2 - 2
.hword branch_20604ce - Jumppoints_20604c2 - 2
.hword branch_20604d2 - Jumppoints_20604c2 - 2
.hword branch_20604d6 - Jumppoints_20604c2 - 2
.thumb
branch_20604ca: @ 20604ca :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x20604ce

.thumb
branch_20604ce: @ 20604ce :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x20604d2

.thumb
branch_20604d2: @ 20604d2 :thumb
	mov     r0, #0x2
	pop     {r3,pc}
@ 0x20604d6

.thumb
branch_20604d6: @ 20604d6 :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x20604da

.thumb
branch_20604da: @ 20604da :thumb
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x20604e2


.align 2, 0
.thumb
Function_20604e4: @ 20604e4 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r1, #0x0
	mvn     r1, r1
	mov     r5, r0
	cmp     r4, r1
	bne     branch_2060512
	bl      Function_205efb0
	cmp     r0, #0x1
	bne     branch_2060506
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_205eb08
	mov     r0, #0x3
	pop     {r4-r6,pc}
@ 0x2060506

.thumb
branch_2060506: @ 2060506 :thumb
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_205eb08
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2060512

.thumb
branch_2060512: @ 2060512 :thumb
	bl      GetSpriteFaceDirection
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_205ef98
	cmp     r6, r4
	beq     branch_206053a
	mov     r0, r5
	bl      Function_205eb0c
	cmp     r0, #0x1
	beq     branch_206053a
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_205eb08
	mov     r0, #0x2
	pop     {r4-r6,pc}
@ 0x206053a

.thumb
branch_206053a: @ 206053a :thumb
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_205eb08
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2060546


.align 2, 0
.thumb
Function_2060548: @ 2060548 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	bl      LoadSpriteFaceDirection
	mov     r1, #0x0
	bl      Function_2065838
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x1
	bl      Function_2060b64
	mov     r0, r5
	bl      Function_205ebc0
	pop     {r3-r5,pc}
@ 0x206056e


.align 2, 0
.thumb
Function_2060570: @ 2060570 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	str     r1, [sp, #0x0]
	str     r2, [sp, #0x4]
	bl      Function_2060b7c
	mov     r4, r0
	mov     r0, #0x4
	tst     r0, r4
	beq     branch_2060598
	mov     r0, r5
	mov     r7, #0x38
	mov     r6, #0x3
	bl      Function_20615c8
	mov     r0, r5
	bl      Function_205f048
	b       branch_206066c
@ 0x2060598

.thumb
branch_2060598: @ 2060598 :thumb
	mov     r0, #0x80
	tst     r0, r4
	beq     branch_20605b0
	mov     r0, r5
	mov     r7, #0x75
	mov     r6, #0x2
	bl      Function_20615c8
	mov     r0, r5
	bl      Function_205f048
	b       branch_206066c
@ 0x20605b0

.thumb
branch_20605b0: @ 20605b0 :thumb
	mov     r0, #0x10
	tst     r0, r4
	beq     branch_20605d0
	mov     r0, r5
	mov     r7, #0x50
	mov     r6, #0x5
	bl      Function_20615c8
	mov     r0, r5
	bl      Function_205f048
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_205ef40
	b       branch_206066c
@ 0x20605d0

.thumb
branch_20605d0: @ 20605d0 :thumb
	mov     r0, #0x40
	tst     r0, r4
	beq     branch_20605fc
	ldr     r0, [sp, #0x0]
	mov     r7, #0x0
	mov     r6, #0x1
	bl      LoadSpriteFace2Direction
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	bl      ChangeSpriteFace2Direction
	mov     r0, r5
	bl      Function_205ebc0
	.hword  0x1eb1 @ sub r1, r6, #0x2
	mov     r0, r5
	mov     r2, r1
	bl      Function_205ebec
	b       branch_206066c
@ 0x20605fc

.thumb
branch_20605fc: @ 20605fc :thumb
	cmp     r4, #0x0
	beq     branch_2060654
	ldr     r1, [sp, #0x0]
	ldr     r2, [sp, #0x4]
	mov     r0, r5
	bl      Function_20615e0
	cmp     r0, #0x0
	bne     branch_206062e
	mov     r0, #0x8
	mov     r7, #0x1c
	mov     r6, #0x1
	tst     r0, r4
	bne     branch_206061e
	ldr     r0, [pc, #0x68] @ 0x2060684, (=0x601)
	bl      Function_2005748
.thumb
branch_206061e: @ 206061e :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	bl      ChangeSpriteFace2Direction
	mov     r0, r5
	bl      Function_205ebc0
	b       branch_206066c
@ 0x206062e

.thumb
branch_206062e: @ 206062e :thumb
	ldr     r0, [sp, #0x0]
	mov     r7, #0x0
	mov     r6, #0x1
	bl      LoadSpriteFace2Direction
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	bl      ChangeSpriteFace2Direction
	mov     r0, r5
	bl      Function_205ebc0
	.hword  0x1eb1 @ sub r1, r6, #0x2
	mov     r0, r5
	mov     r2, r1
	bl      Function_205ebec
	b       branch_206066c
@ 0x2060654

.thumb
branch_2060654: @ 2060654 :thumb
	mov     r0, r5
	mov     r7, #0x50
	mov     r6, #0x5
	bl      Function_20615c8
	mov     r0, r5
	bl      Function_205f048
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_205ebbc
.thumb
branch_206066c: @ 206066c :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, r7
	bl      Function_2065838
	mov     r2, r0
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	mov     r3, r6
	bl      Function_2060b64
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2060684

.word 0x601 @ 0x2060684
.thumb
Function_2060688: @ 2060688 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	bl      Function_205ebc0
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_20615e0
	cmp     r0, #0x1
	beq     branch_20606c4
	mov     r0, r6
	mov     r1, #0x28
	bl      Function_2065838
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x1
	bl      Function_2060b64
	mov     r0, r4
	mov     r1, r6
	bl      ChangeSpriteFace2Direction
	mov     r0, r5
	bl      Function_205ebc0
.thumb
branch_20606c4: @ 20606c4 :thumb
	pop     {r4-r6,pc}
@ 0x20606c6


.align 2, 0


.thumb
Function_20606c8: @ 20606c8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	str     r1, [sp, #0x0]
	bl      Function_20603ec
	str     r0, [sp, #0x4]
	mov     r0, r5
	bl      Function_205ea94
	mov     r7, r0
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	mov     r2, r7
	bl      Function_2060b7c
	mov     r4, r0
	mov     r0, #0x4
	tst     r0, r4
	beq     branch_20606fe
	mov     r0, r7
	mov     r1, #0x38
	bl      Function_2065838
	str     r0, [sp, #0x8]
	mov     r6, #0x3
	b       branch_2060768
@ 0x20606fe

.thumb
branch_20606fe: @ 20606fe :thumb
	mov     r0, #0x80
	tst     r0, r4
	beq     branch_2060712
	mov     r0, r7
	mov     r1, #0x75
	bl      Function_2065838
	str     r0, [sp, #0x8]
	mov     r6, #0x2
	b       branch_2060768
@ 0x2060712

.thumb
branch_2060712: @ 2060712 :thumb
	mov     r0, #0x40
	tst     r0, r4
	beq     branch_206072c
	mov     r0, r7
	mov     r1, #0x0
	bl      Function_2065838
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r6, #0x1
	bl      Function_205ebc0
	b       branch_2060768
@ 0x206072c

.thumb
branch_206072c: @ 206072c :thumb
	cmp     r4, #0x0
	beq     branch_206075c
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r7
	mov     r1, #0x1c
	bl      Function_2065838
	str     r0, [sp, #0x8]
	mov     r0, #0x8
	mov     r6, #0x1
	tst     r0, r4
	bne     branch_206074c
	ldr     r0, [pc, #0x40] @ 0x2060788, (=0x601)
	bl      Function_2005748
.thumb
branch_206074c: @ 206074c :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, r7
	bl      ChangeSpriteFace2Direction
	mov     r0, r5
	bl      Function_205ebc0
	b       branch_2060768
@ 0x206075c

.thumb
branch_206075c: @ 206075c :thumb
	mov     r0, r5
	mov     r1, r7
	bl      Function_2060390
	str     r0, [sp, #0x8]
	mov     r6, #0x5
.thumb
branch_2060768: @ 2060768 :thumb
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	bne     branch_2060776
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_205ef98
.thumb
branch_2060776: @ 2060776 :thumb
	ldr     r1, [sp, #0x0]
	ldr     r2, [sp, #0x8]
	mov     r0, r5
	mov     r3, r6
	bl      Function_2060b64
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2060786

.align 2
.word 0x601 @ 0x2060788



.thumb
Function_206078c: @ 206078c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r7, r1
	mov     r1, r3
	mov     r6, r0
	str     r3, [sp, #0x4]
	ldr     r5, [sp, #0x20]
	ldr     r4, [sp, #0x24]
	bl      Function_2060800
	cmp     r0, #0x3
	bhi     branch_20607fc
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x20607b0

Jumppoints_20607b0:
.hword branch_20607b8 - Jumppoints_20607b0 - 2
.hword branch_20607ca - Jumppoints_20607b0 - 2
.hword branch_20607dc - Jumppoints_20607b0 - 2
.hword branch_20607ee - Jumppoints_20607b0 - 2
.thumb
branch_20607b8: @ 20607b8 :thumb
	ldr     r2, [sp, #0x4]
	mov     r0, r6
	mov     r1, r7
	mov     r3, r5
	str     r4, [sp, #0x0]
	bl      Function_20608bc
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x20607ca

.thumb
branch_20607ca: @ 20607ca :thumb
	ldr     r2, [sp, #0x4]
	mov     r0, r6
	mov     r1, r7
	mov     r3, r5
	str     r4, [sp, #0x0]
	bl      Function_20608e4
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x20607dc

.thumb
branch_20607dc: @ 20607dc :thumb
	ldr     r2, [sp, #0x4]
	mov     r0, r6
	mov     r1, r7
	mov     r3, r5
	str     r4, [sp, #0x0]
	bl      Function_2060a60
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x20607ee

.thumb
branch_20607ee: @ 20607ee :thumb
	ldr     r2, [sp, #0x4]
	mov     r0, r6
	mov     r1, r7
	mov     r3, r5
	str     r4, [sp, #0x0]
	bl      Function_2060aa0
.thumb
branch_20607fc: @ 20607fc :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2060800


.thumb
Function_2060800: @ 2060800 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_2060850
	mov     r4, r0
	bl      Function_206081c
	mov     r1, r0
	mov     r0, r5
	bl      Function_205eb08
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x206081a


.align 2, 0
.thumb
Function_206081c: @ 206081c :thumb
	push    {r3,lr}
	cmp     r0, #0x3
	bhi     branch_2060846
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x206082e

Jumppoints_206082e:
.hword branch_2060836 - Jumppoints_206082e - 2
.hword branch_206083a - Jumppoints_206082e - 2
.hword branch_206083e - Jumppoints_206082e - 2
.hword branch_2060842 - Jumppoints_206082e - 2
.thumb
branch_2060836: @ 2060836 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x206083a

.thumb
branch_206083a: @ 206083a :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x206083e

.thumb
branch_206083e: @ 206083e :thumb
	mov     r0, #0x2
	pop     {r3,pc}
@ 0x2060842

.thumb
branch_2060842: @ 2060842 :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2060846

.thumb
branch_2060846: @ 2060846 :thumb
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x206084e


.align 2, 0
.thumb
Function_2060850: @ 2060850 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_205ebb8
	mov     r6, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r4, r0
	bne     branch_2060880
	cmp     r6, #0x2
	bge     branch_2060874
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_205eb08
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2060874

.thumb
branch_2060874: @ 2060874 :thumb
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_205eb08
	mov     r0, #0x3
	pop     {r4-r6,pc}
@ 0x2060880

.thumb
branch_2060880: @ 2060880 :thumb
	mov     r0, r5
	bl      GetSpriteFaceDirection
	cmp     r0, r4
	beq     branch_20608b0
	mov     r0, r5
	bl      Function_205eb0c
	cmp     r0, #0x1
	beq     branch_20608b0
	cmp     r6, #0x2
	bge     branch_20608a4
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_205eb08
	mov     r0, #0x2
	pop     {r4-r6,pc}
@ 0x20608a4

.thumb
branch_20608a4: @ 20608a4 :thumb
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_205eb08
	mov     r0, #0x3
	pop     {r4-r6,pc}
@ 0x20608b0

.thumb
branch_20608b0: @ 20608b0 :thumb
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_205eb08
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x20608bc

.thumb
Function_20608bc: @ 20608bc :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	bl      LoadSpriteFaceDirection
	mov     r1, #0x0
	bl      Function_2065838
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x1
	bl      Function_2060b64
	mov     r0, r5
	bl      Function_205ebc0
	pop     {r3-r5,pc}
@ 0x20608e2


.align 2, 0


.thumb
Function_20608e4: @ 20608e4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	str     r1, [sp, #0x0]
	mov     r6, r2
	bl      Function_2060b7c
	mov     r4, r0
	mov     r0, #0x4
	tst     r0, r4
	beq     branch_206091a
	mov     r0, r6
	mov     r1, #0x38
	bl      Function_2065838
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r7, #0x3
	bl      Function_20603bc
	mov     r0, r5
	bl      Function_20615c8
	mov     r0, r5
	bl      Function_205f048
	b       branch_2060a4a
@ 0x206091a

.thumb
branch_206091a: @ 206091a :thumb
	mov     r0, #0x80
	tst     r0, r4
	beq     branch_2060940
	mov     r0, r6
	mov     r1, #0x75
	bl      Function_2065838
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r7, #0x2
	bl      Function_20603bc
	mov     r0, r5
	bl      Function_20615c8
	mov     r0, r5
	bl      Function_205f048
	b       branch_2060a4a
@ 0x2060940

.thumb
branch_2060940: @ 2060940 :thumb
	mov     r0, #0x10
	tst     r0, r4
	beq     branch_2060994
	mov     r0, r5
	bl      Function_205ebb8
	cmp     r0, #0x3
	blt     branch_206096c
	mov     r0, r5
	mov     r1, r6
	bl      Function_2060390
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r7, #0x5
	bl      Function_205f048
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_205ef40
	b       branch_2060a4a
@ 0x206096c

.thumb
branch_206096c: @ 206096c :thumb
	mov     r0, r6
	mov     r1, #0x1c
	bl      Function_2065838
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	mov     r7, #0x1
	tst     r0, r4
	bne     branch_2060984
	ldr     r0, [pc, #0xdc] @ 0x2060a5c, (=0x601)
	bl      Function_2005748
.thumb
branch_2060984: @ 2060984 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, r6
	bl      ChangeSpriteFace2Direction
	mov     r0, r5
	bl      Function_205ebc0
	b       branch_2060a4a
@ 0x2060994

.thumb
branch_2060994: @ 2060994 :thumb
	mov     r0, #0x40
	tst     r0, r4
	beq     branch_20609c6
	ldr     r0, [sp, #0x0]
	bl      LoadSpriteFace2Direction
	mov     r1, #0x0
	mov     r4, r0
	bl      Function_2065838
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	mov     r7, #0x1
	bl      ChangeSpriteFace2Direction
	mov     r0, r5
	bl      Function_205ebc0
	.hword  0x1eb9 @ sub r1, r7, #0x2
	mov     r0, r5
	mov     r2, r1
	bl      Function_205ebec
	b       branch_2060a4a
@ 0x20609c6

.thumb
branch_20609c6: @ 20609c6 :thumb
	cmp     r4, #0x0
	beq     branch_2060a2c
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	mov     r2, r6
	bl      Function_20615e0
	cmp     r0, #0x0
	bne     branch_2060a00
	mov     r0, r6
	mov     r1, #0x1c
	bl      Function_2065838
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	mov     r7, #0x1
	tst     r0, r4
	bne     branch_20609f0
	ldr     r0, [pc, #0x70] @ 0x2060a5c, (=0x601)
	bl      Function_2005748
.thumb
branch_20609f0: @ 20609f0 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, r6
	bl      ChangeSpriteFace2Direction
	mov     r0, r5
	bl      Function_205ebc0
	b       branch_2060a4a
@ 0x2060a00

.thumb
branch_2060a00: @ 2060a00 :thumb
	ldr     r0, [sp, #0x0]
	mov     r7, #0x1
	bl      LoadSpriteFace2Direction
	mov     r1, #0x0
	mov     r4, r0
	bl      Function_2065838
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      ChangeSpriteFace2Direction
	mov     r0, r5
	bl      Function_205ebc0
	.hword  0x1eb9 @ sub r1, r7, #0x2
	mov     r0, r5
	mov     r2, r1
	bl      Function_205ebec
	b       branch_2060a4a
@ 0x2060a2c

.thumb
branch_2060a2c: @ 2060a2c :thumb
	mov     r0, r5
	mov     r1, r6
	mov     r7, #0x5
	bl      Function_2060390
	str     r0, [sp, #0x4]
	mov     r0, r5
	bl      Function_20603bc
	mov     r0, r5
	bl      Function_20615c8
	mov     r0, r5
	bl      Function_205f048
.thumb
branch_2060a4a: @ 2060a4a :thumb
	ldr     r1, [sp, #0x0]
	ldr     r2, [sp, #0x4]
	mov     r0, r5
	mov     r3, r7
	bl      Function_2060b64
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2060a5a

.align 2
.word 0x601 @ 0x2060a5c



.thumb
Function_2060a60: @ 2060a60 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	bl      Function_205ebc0
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_20615e0
	cmp     r0, #0x1
	beq     branch_2060a9c
	mov     r0, r6
	mov     r1, #0x28
	bl      Function_2065838
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x1
	bl      Function_2060b64
	mov     r0, r4
	mov     r1, r6
	bl      ChangeSpriteFace2Direction
	mov     r0, r5
	bl      Function_205ebc0
.thumb
branch_2060a9c: @ 2060a9c :thumb
	pop     {r4-r6,pc}
@ 0x2060a9e


.align 2, 0
.thumb
Function_2060aa0: @ 2060aa0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	str     r1, [sp, #0x0]
	bl      Function_20603ec
	str     r0, [sp, #0x4]
	mov     r0, r5
	bl      Function_205ea94
	mov     r7, r0
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	mov     r2, r7
	bl      Function_2060b7c
	mov     r4, r0
	mov     r0, #0x4
	tst     r0, r4
	beq     branch_2060ad6
	mov     r0, r7
	mov     r1, #0x38
	bl      Function_2065838
	str     r0, [sp, #0x8]
	mov     r6, #0x3
	b       branch_2060b40
@ 0x2060ad6

.thumb
branch_2060ad6: @ 2060ad6 :thumb
	mov     r0, #0x80
	tst     r0, r4
	beq     branch_2060aea
	mov     r0, r7
	mov     r1, #0x75
	bl      Function_2065838
	str     r0, [sp, #0x8]
	mov     r6, #0x2
	b       branch_2060b40
@ 0x2060aea

.thumb
branch_2060aea: @ 2060aea :thumb
	mov     r0, #0x40
	tst     r0, r4
	beq     branch_2060b04
	mov     r0, r7
	mov     r1, #0x0
	bl      Function_2065838
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r6, #0x1
	bl      Function_205ebc0
	b       branch_2060b40
@ 0x2060b04

.thumb
branch_2060b04: @ 2060b04 :thumb
	cmp     r4, #0x0
	beq     branch_2060b34
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r7
	mov     r1, #0x1c
	mov     r6, #0x1
	bl      Function_2065838
	str     r0, [sp, #0x8]
	mov     r0, #0x8
	tst     r0, r4
	bne     branch_2060b24
	ldr     r0, [pc, #0x40] @ 0x2060b60, (=0x601)
	bl      Function_2005748
.thumb
branch_2060b24: @ 2060b24 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, r7
	bl      ChangeSpriteFace2Direction
	mov     r0, r5
	bl      Function_205ebc0
	b       branch_2060b40
@ 0x2060b34

.thumb
branch_2060b34: @ 2060b34 :thumb
	mov     r0, r5
	mov     r1, r7
	bl      Function_2060390
	str     r0, [sp, #0x8]
	mov     r6, #0x5
.thumb
branch_2060b40: @ 2060b40 :thumb
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	bne     branch_2060b4e
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_205ef98
.thumb
branch_2060b4e: @ 2060b4e :thumb
	ldr     r1, [sp, #0x0]
	ldr     r2, [sp, #0x8]
	mov     r0, r5
	mov     r3, r6
	bl      Function_2060b64
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2060b5e

.align 2
.word 0x601 @ 0x2060b60



.thumb
Function_2060b64: @ 2060b64 :thumb
	push    {r3-r5,lr}
	mov     r4, r2
	mov     r5, r1
	mov     r1, r4
	mov     r2, r3
	bl      Function_205ec20
	mov     r0, r5
	mov     r1, r4
	bl      Function_2065638
	pop     {r3-r5,pc}
@ 0x2060b7c


.thumb
.globl Function_2060b7c
Function_2060b7c: @ 2060b7c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r7, r2
	mov     r4, #0x0
	bl      Function_2060c24
	mov     r1, #0xa
	str     r0, [sp, #0x0]
	tst     r0, r1
	beq     branch_2060ba8
	mov     r0, #0x1
	orr     r4, r0
	mov     r0, r5
	mov     r1, r6
	mov     r2, r7
	bl      Function_2060e40
	cmp     r0, #0x0
	beq     branch_2060ba8
	mov     r0, #0x8
	orr     r4, r0
.thumb
branch_2060ba8: @ 2060ba8 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, #0x4
	tst     r0, r1
	beq     branch_2060bb4
	mov     r0, #0x2
	orr     r4, r0
.thumb
branch_2060bb4: @ 2060bb4 :thumb
	mov     r0, r5
	mov     r1, r6
	mov     r2, r7
	bl      Function_2060ce4
	cmp     r0, #0x0
	beq     branch_2060bc6
	mov     r0, #0x4
	orr     r4, r0
.thumb
branch_2060bc6: @ 2060bc6 :thumb
	mov     r0, r5
	mov     r1, r6
	mov     r2, r7
	bl      Function_2060d98
	cmp     r0, #0x0
	beq     branch_2060bd8
	mov     r0, #0x80
	orr     r4, r0
.thumb
branch_2060bd8: @ 2060bd8 :thumb
	mov     r0, r5
	mov     r1, r6
	mov     r2, r7
	bl      Function_2060ee4
	cmp     r0, #0x1
	bne     branch_2060bea
	mov     r0, #0x10
	orr     r4, r0
.thumb
branch_2060bea: @ 2060bea :thumb
	mov     r0, r5
	mov     r1, r6
	mov     r2, r7
	bl      Function_2060f4c
	cmp     r0, #0x1
	bne     branch_2060bfc
	mov     r0, #0x20
	orr     r4, r0
.thumb
branch_2060bfc: @ 2060bfc :thumb
	mov     r0, r5
	mov     r1, r6
	mov     r2, r7
	bl      Function_2060fa8
	cmp     r0, #0x1
	bne     branch_2060c0e
	mov     r0, #0x41
	orr     r4, r0
.thumb
branch_2060c0e: @ 2060c0e :thumb
	mov     r0, r5
	mov     r1, r6
	mov     r2, r7
	bl      Function_2061058
	cmp     r0, #0x1
	bne     branch_2060c20
	mov     r0, #0x1
	orr     r4, r0
branch_2060c20: @ 2060c20 :thumb
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x2060c24


.thumb
Function_2060c24: @ 2060c24 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	mov     r5, r1
	str     r2, [sp, #0x4]
	mov     r0, r5
	bl      LoadSpritePositionX
	mov     r7, r0
	ldr     r0, [sp, #0x4]
	bl      GetWalkPositionXChange
	str     r0, [sp, #0x14]
	mov     r0, r5
	bl      LoadSpritePositionZ
	str     r0, [sp, #0x8]
	mov     r0, r5
	bl      LoadSpritePositionY
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x4]
	bl      GetWalkPositionYChange
	str     r0, [sp, #0x10]
	mov     r0, r5
	add     r1, sp, #0x1c
	bl      CopySprite70Struct
	ldr     r1, [sp, #0x14]
	ldr     r6, [sp, #0xc]
	ldr     r3, [sp, #0x10]
	ldr     r2, [sp, #0x8]
	mov     r0, r5
	add     r1, r7, r1
	add     r3, r6, r3
	mov     r4, #0x0
	bl      Function_2063fac
	cmp     r0, #0x1
	bne     branch_2060c78
	mov     r0, #0x1
	orr     r4, r0
.thumb
branch_2060c78: @ 2060c78 :thumb
	mov     r0, r5
	bl      GetSpriteSpriteListFirstSprite
	ldr     r2, [sp, #0x14]
	add     r1, sp, #0x18
	str     r1, [sp, #0x0]
	ldr     r6, [sp, #0xc]
	ldr     r3, [sp, #0x10]
	add     r1, sp, #0x1c
	add     r2, r7, r2
	add     r3, r6, r3
	bl      Function_205507c
	cmp     r0, #0x1
	bne     branch_2060ca8
	mov     r0, #0x2
	orr     r4, r0
	add     r1, sp, #0x18
	mov     r0, #0x0
	ldsb    r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2060ca8
	mov     r0, #0x8
	orr     r4, r0
.thumb
branch_2060ca8: @ 2060ca8 :thumb
	ldr     r3, [sp, #0xc]
	ldr     r2, [sp, #0x10]
	ldr     r1, [sp, #0x14]
	add     r2, r3, r2
	ldr     r3, [sp, #0x4]
	mov     r0, r5
	add     r1, r7, r1
	bl      Function_2064004
	cmp     r0, #0x1
	bne     branch_2060cc2
	mov     r0, #0x2
	orr     r4, r0
.thumb
branch_2060cc2: @ 2060cc2 :thumb
	mov     r0, r5
	ldr     r1, [sp, #0x14]
	ldr     r5, [sp, #0xc]
	ldr     r3, [sp, #0x10]
	ldr     r2, [sp, #0x8]
	add     r1, r7, r1
	add     r3, r5, r3
	bl      Function_2063f00
	cmp     r0, #0x1
	bne     branch_2060cdc
	mov     r0, #0x4
	orr     r4, r0
branch_2060cdc: @ 2060cdc :thumb
	mov     r0, r4
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x2060ce2


.align 2, 0
.thumb
Function_2060ce4: @ 2060ce4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r0, #0x0
	mov     r4, r2
	mvn     r0, r0
	mov     r7, r1
	cmp     r4, r0
	beq     branch_2060d92
	mov     r0, r7
	bl      GetSpriteSpriteListFirstSprite
	str     r0, [sp, #0x4]
	mov     r0, r7
	bl      LoadSpritePositionX
	mov     r5, r0
	mov     r0, r4
	bl      GetWalkPositionXChange
	mov     r6, r0
	mov     r0, r7
	bl      LoadSpritePositionY
	mov     r7, r0
	mov     r0, r4
	bl      GetWalkPositionYChange
	str     r0, [sp, #0x8]
	ldr     r2, [sp, #0x8]
	ldr     r0, [sp, #0x4]
	add     r1, r5, r6
	add     r2, r7, r2
	mov     r3, #0x0
	str     r4, [sp, #0x0]
	bl      Function_20683d8
	cmp     r0, #0x1
	bne     branch_2060d36
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x2060d36

.thumb
branch_2060d36: @ 2060d36 :thumb
	ldr     r2, [sp, #0x8]
	ldr     r0, [sp, #0x4]
	add     r1, r5, r6
	add     r2, r7, r2
	bl      Function_2054f94
	cmp     r4, #0x3
	bhi     branch_2060d92
	add     r1, r4, r4
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2060d52

Jumppoints_2060d52:
.hword branch_2060d5a - Jumppoints_2060d52 - 2
.hword branch_2060d68 - Jumppoints_2060d52 - 2
.hword branch_2060d76 - Jumppoints_2060d52 - 2
.hword branch_2060d84 - Jumppoints_2060d52 - 2
.thumb
branch_2060d5a: @ 2060d5a :thumb
	bl      Function_205db84
	cmp     r0, #0x1
	bne     branch_2060d92
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x2060d68

.thumb
branch_2060d68: @ 2060d68 :thumb
	bl      Function_205db90
	cmp     r0, #0x1
	bne     branch_2060d92
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x2060d76

.thumb
branch_2060d76: @ 2060d76 :thumb
	bl      Function_205db9c
	cmp     r0, #0x1
	bne     branch_2060d92
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x2060d84

.thumb
branch_2060d84: @ 2060d84 :thumb
	bl      Function_205dba8
	cmp     r0, #0x1
	bne     branch_2060d92
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4-r7,pc}

branch_2060d92: @ 2060d92 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2060d98


.thumb
Function_2060d98: @ 2060d98 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, #0x0
	mov     r4, r2
	sub     r0, r5, #0x1
	mov     r7, r1
	cmp     r4, r0
	beq     branch_2060e3a
	mov     r0, r7
	bl      GetSpriteSpriteListFirstSprite
	str     r0, [sp, #0x0]
	mov     r0, r7
	bl      LoadSpritePositionX
	mov     r6, r0
	mov     r0, r4
	bl      GetWalkPositionXChange
	str     r0, [sp, #0x4]
	mov     r0, r7
	bl      LoadSpritePositionY
	mov     r7, r0
	mov     r0, r4
	bl      GetWalkPositionYChange
	str     r0, [sp, #0x8]
	ldr     r1, [sp, #0x4]
	ldr     r2, [sp, #0x8]
	ldr     r0, [sp, #0x0]
	add     r1, r6, r1
	add     r2, r7, r2
	bl      Function_2054f94
	cmp     r4, #0x3
	bhi     branch_2060e14
	add     r1, r4, r4
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2060dee

Jumppoints_2060dee:
.hword branch_2060df6 - Jumppoints_2060dee - 2
.hword branch_2060dfe - Jumppoints_2060dee - 2
.hword branch_2060e06 - Jumppoints_2060dee - 2
.hword branch_2060e0e - Jumppoints_2060dee - 2
.thumb
branch_2060df6: @ 2060df6 :thumb
	bl      Function_205dbb4
	mov     r5, r0
	b       branch_2060e14
@ 0x2060dfe

.thumb
branch_2060dfe: @ 2060dfe :thumb
	bl      Function_205dbc0
	mov     r5, r0
	b       branch_2060e14
@ 0x2060e06

.thumb
branch_2060e06: @ 2060e06 :thumb
	bl      Function_205dbcc
	mov     r5, r0
	b       branch_2060e14
@ 0x2060e0e

.thumb
branch_2060e0e: @ 2060e0e :thumb
	bl      Function_205dbd8
	mov     r5, r0
.thumb
branch_2060e14: @ 2060e14 :thumb
	cmp     r5, #0x1
	bne     branch_2060e3a
	ldr     r0, [sp, #0x0]
	mov     r1, #0x9
	bl      Function_2071cb4
	cmp     r0, #0x1
	bne     branch_2060e3a
	ldr     r1, [sp, #0x4]
	ldr     r2, [sp, #0x8]
	ldr     r0, [sp, #0x0]
	add     r1, r6, r1
	add     r2, r7, r2
	mov     r3, r4
	bl      0x22511a0
	cmp     r0, #0x1
	bne     branch_2060e3a
	mov     r5, #0x0
branch_2060e3a: @ 2060e3a :thumb
	mov     r0, r5
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2060e40


.thumb
Function_2060e40: @ 2060e40 :thumb
	push    {r3-r7,lr}
	mov     r0, #0x0
	mov     r4, r2
	mvn     r0, r0
	mov     r5, r1
	cmp     r4, r0
	beq     branch_2060ee0
	mov     r0, r5
	bl      GetSpriteSpriteListFirstSprite
	mov     r7, r0
	mov     r0, r5
	bl      LoadSpritePositionX
	mov     r6, r0
	mov     r0, r5
	bl      LoadSpritePositionY
	str     r0, [sp, #0x0]
	ldr     r2, [sp, #0x0]
	mov     r0, r7
	mov     r1, r6
	bl      Function_2054f94
	cmp     r4, #0x3
	bhi     branch_2060eb8
	add     r1, r4, r4
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2060e80

Jumppoints_2060e80:
.hword branch_2060e88 - Jumppoints_2060e80 - 2
.hword branch_2060e94 - Jumppoints_2060e80 - 2
.hword branch_2060ea0 - Jumppoints_2060e80 - 2
.hword branch_2060eac - Jumppoints_2060e80 - 2
.thumb
branch_2060e88: @ 2060e88 :thumb
	bl      Function_205db10
	cmp     r0, #0x1
	bne     branch_2060eb8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2060e94

.thumb
branch_2060e94: @ 2060e94 :thumb
	bl      Function_205db1c
	cmp     r0, #0x1
	bne     branch_2060eb8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2060ea0

.thumb
branch_2060ea0: @ 2060ea0 :thumb
	bl      Function_205db04
	cmp     r0, #0x1
	bne     branch_2060eb8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2060eac

.thumb
branch_2060eac: @ 2060eac :thumb
	bl      Function_205daf8
	cmp     r0, #0x1
	bne     branch_2060eb8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2060eb8

.thumb
branch_2060eb8: @ 2060eb8 :thumb
	mov     r0, r4
	bl      GetWalkPositionXChange
	mov     r5, r0
	mov     r0, r4
	bl      GetWalkPositionYChange
	mov     r3, r0
	ldr     r2, [sp, #0x0]
	mov     r0, r7
	add     r1, r6, r5
	add     r2, r2, r3
	bl      Function_2054f94
	bl      Function_205daec
	cmp     r0, #0x1
	bne     branch_2060ee0
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2060ee0

.thumb
branch_2060ee0: @ 2060ee0 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2060ee4


.thumb
Function_2060ee4: @ 2060ee4 :thumb
	push    {r3-r7,lr}
	mov     r0, #0x0
	mov     r5, r2
	mvn     r0, r0
	mov     r4, r1
	cmp     r5, r0
	beq     branch_2060f48
	mov     r0, r4
	bl      GetSpriteSpriteListFirstSprite
	str     r0, [sp, #0x0]
	mov     r0, r4
	bl      LoadSpritePositionX
	mov     r6, r0
	mov     r0, r5
	bl      GetWalkPositionXChange
	mov     r7, r0
	mov     r0, r4
	bl      LoadSpritePositionY
	mov     r4, r0
	mov     r0, r5
	bl      GetWalkPositionYChange
	mov     r2, r0
	ldr     r0, [sp, #0x0]
	add     r1, r6, r7
	add     r2, r4, r2
	bl      Function_2054f94
	mov     r4, r0
	cmp     r5, #0x3
	bne     branch_2060f36
	bl      Function_205dd90
	cmp     r0, #0x0
	beq     branch_2060f36
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2060f36

.thumb
branch_2060f36: @ 2060f36 :thumb
	cmp     r5, #0x2
	bne     branch_2060f48
	mov     r0, r4
	bl      Function_205dd9c
	cmp     r0, #0x0
	beq     branch_2060f48
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2060f48

.thumb
branch_2060f48: @ 2060f48 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2060f4c

.thumb
Function_2060f4c: @ 2060f4c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r0, #0x0
	mov     r4, r2
	mvn     r0, r0
	mov     r5, r1
	cmp     r4, r0
	beq     branch_2060fa2
	mov     r0, r5
	bl      GetSpriteSpriteListFirstSprite
	str     r0, [sp, #0x0]
	mov     r0, r5
	bl      LoadSpritePositionX
	mov     r6, r0
	mov     r0, r4
	bl      GetWalkPositionXChange
	mov     r7, r0
	mov     r0, r5
	bl      LoadSpritePositionY
	str     r0, [sp, #0x4]
	mov     r0, r4
	bl      GetWalkPositionYChange
	mov     r3, r0
	ldr     r2, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	add     r1, r6, r7
	add     r2, r2, r3
	bl      Function_2054f94
	mov     r1, r0
	mov     r0, r5
	bl      Function_206406c
	cmp     r0, #0x0
	beq     branch_2060fa2
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2060fa2

.thumb
branch_2060fa2: @ 2060fa2 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2060fa8

.thumb
Function_2060fa8: @ 2060fa8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	mov     r4, r2
	mvn     r0, r0
	mov     r5, r1
	cmp     r4, r0
	beq     branch_2061052
	mov     r0, r5
	bl      GetSpriteSpriteListFirstSprite
	str     r0, [sp, #0x4]
	mov     r0, r5
	bl      LoadSpritePositionX
	mov     r6, r0
	mov     r0, r4
	bl      GetWalkPositionXChange
	mov     r7, r0
	mov     r0, r5
	bl      LoadSpritePositionY
	str     r0, [sp, #0x8]
	mov     r0, r4
	bl      GetWalkPositionYChange
	mov     r2, r0
	ldr     r3, [sp, #0x8]
	ldr     r0, [sp, #0x4]
	add     r1, r6, r7
	add     r2, r3, r2
	bl      Function_2054f94
	mov     r6, r0
	ldr     r0, [sp, #0x0]
	bl      Function_205eb74
	cmp     r0, #0x1
	bne     branch_2061034
	mov     r0, r5
	mov     r1, r6
	bl      Function_206415c
	cmp     r0, #0x1
	bne     branch_2061016
	cmp     r4, #0x1
	bls     branch_2061010
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x2061010

.thumb
branch_2061010: @ 2061010 :thumb
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x2061016

.thumb
branch_2061016: @ 2061016 :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_206417c
	cmp     r0, #0x1
	bne     branch_2061052
	.hword  0x1ea0 @ sub r0, r4, #0x2
	cmp     r0, #0x1
	bls     branch_206102e
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x206102e

.thumb
branch_206102e: @ 206102e :thumb
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x2061034

.thumb
branch_2061034: @ 2061034 :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_206415c
	cmp     r0, #0x1
	beq     branch_206104c
	mov     r0, r5
	mov     r1, r6
	bl      Function_206417c
	cmp     r0, #0x1
	bne     branch_2061052
.thumb
branch_206104c: @ 206104c :thumb
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x2061052

.thumb
branch_2061052: @ 2061052 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2061058


.thumb
Function_2061058: @ 2061058 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r1
	mov     r1, #0x0
	mov     r4, r2
	mvn     r1, r1
	cmp     r4, r1
	beq     branch_20610fa
	bl      Function_205eb74
	cmp     r0, #0x1
	bne     branch_20610fa
	mov     r0, r5
	bl      GetSpriteSpriteListFirstSprite
	str     r0, [sp, #0x0]
	mov     r0, r5
	bl      LoadSpritePositionX
	mov     r6, r0
	mov     r0, r4
	bl      GetWalkPositionXChange
	mov     r7, r0
	mov     r0, r5
	bl      LoadSpritePositionY
	str     r0, [sp, #0x4]
	mov     r0, r4
	bl      GetWalkPositionYChange
	mov     r3, r0
	ldr     r2, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	add     r1, r6, r7
	add     r2, r2, r3
	bl      Function_2054f94
	mov     r4, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_206406c
	cmp     r0, #0x0
	beq     branch_20610b8
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x20610b8

.thumb
branch_20610b8: @ 20610b8 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_20640d4
	cmp     r0, #0x0
	beq     branch_20610ca
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x20610ca

.thumb
branch_20610ca: @ 20610ca :thumb
	mov     r0, r4
	bl      Function_205dad4
	cmp     r0, #0x0
	beq     branch_20610da
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x20610da

.thumb
branch_20610da: @ 20610da :thumb
	mov     r0, r4
	bl      Function_205dce0
	cmp     r0, #0x0
	beq     branch_20610ea
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x20610ea

.thumb
branch_20610ea: @ 20610ea :thumb
	mov     r0, r4
	bl      Function_205dcfc
	cmp     r0, #0x0
	beq     branch_20610fa
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x20610fa

.thumb
branch_20610fa: @ 20610fa :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2061100

.thumb
Function_2061100: @ 2061100 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	mov     r7, r2
	mov     r4, #0x0
	bl      GetSpriteSpriteListFirstSprite
	mov     r1, #0x9
	str     r0, [sp, #0x4]
	bl      Function_2071cb4
	cmp     r0, #0x1
	bne     branch_2061178
	mov     r0, r5
	bl      LoadSpritePositionX
	str     r0, [sp, #0x10]
	mov     r0, r5
	bl      LoadSpritePositionZ
	lsr     r1, r0, #31
	add     r1, r0, r1
	asr     r0, r1, #1
	str     r0, [sp, #0xc]
	mov     r0, r5
	bl      LoadSpritePositionY
	str     r0, [sp, #0x8]
	add     r0, sp, #0x8
	str     r0, [sp, #0x0]
	mov     r0, r6
	mov     r1, r7
	add     r2, sp, #0x10
	add     r3, sp, #0xc
	bl      Function_2061674
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x10]
	ldr     r2, [sp, #0xc]
	ldr     r3, [sp, #0x8]
	bl      0x2250f90
	cmp     r0, #0x1
	bne     branch_2061160
	mov     r0, #0x2
	orr     r4, r0
.thumb
branch_2061160: @ 2061160 :thumb
	ldr     r0, [sp, #0xc]
	ldr     r1, [sp, #0x10]
	lsl     r2, r0, #1
	ldr     r3, [sp, #0x8]
	mov     r0, r5
	str     r2, [sp, #0xc]
	bl      Function_2063f00
	cmp     r0, #0x1
	bne     branch_2061178
	mov     r0, #0x4
	orr     r4, r0
.thumb
branch_2061178: @ 2061178 :thumb
	mov     r0, r4
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x206117e


.align 2, 0
.thumb
Function_2061180: @ 2061180 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r0, #0x0
	mov     r6, r2
	mvn     r0, r0
	mov     r4, r1
	cmp     r6, r0
	beq     branch_20611f6
	mov     r0, r4
	bl      GetSpriteSpriteListFirstSprite
	mov     r1, #0x9
	mov     r7, r0
	bl      Function_2071cb4
	cmp     r0, #0x1
	bne     branch_20611f6
	mov     r0, r4
	bl      LoadSpritePositionX
	str     r0, [sp, #0xc]
	mov     r0, r4
	bl      LoadSpritePositionZ
	lsr     r1, r0, #31
	add     r1, r0, r1
	asr     r0, r1, #1
	str     r0, [sp, #0x8]
	mov     r0, r4
	bl      LoadSpritePositionY
	str     r0, [sp, #0x4]
	add     r0, sp, #0x4
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, r6
	add     r2, sp, #0xc
	add     r3, sp, #0x8
	bl      Function_2061674
	add     r0, sp, #0x10
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x8]
	ldr     r3, [sp, #0x4]
	mov     r0, r7
	bl      0x2251044
	ldr     r0, [sp, #0x10]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_205db58
	cmp     r0, #0x0
	beq     branch_20611f6
	add     sp, #0x14
	mov     r0, #0x1
	pop     {r4-r7,pc}

branch_20611f6: @ 20611f6 :thumb
	mov     r0, #0x0
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x20611fc


.thumb
.globl Function_20611fc
Function_20611fc: @ 20611fc :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r7, r2
	mov     r4, #0x0
	bl      Function_2061100
	mov     r1, #0xa
	tst     r1, r0
	beq     branch_2061214
	mov     r1, #0x1
	orr     r4, r1
branch_2061214: @ 2061214 :thumb
	mov     r1, #0x4
	tst     r0, r1
	beq     branch_206121e
	mov     r0, #0x2
	orr     r4, r0
.thumb
branch_206121e: @ 206121e :thumb
	mov     r0, r5
	mov     r1, r6
	mov     r2, r7
	bl      Function_2061180
	cmp     r0, #0x1
	bne     branch_2061230
	mov     r0, #0x20
	orr     r4, r0
.thumb
branch_2061230: @ 2061230 :thumb
	mov     r0, r5
	mov     r1, r6
	mov     r2, r7
	bl      Function_2061248
	cmp     r0, #0x1
	bne     branch_2061242
	mov     r0, #0x80
	orr     r4, r0
.thumb
branch_2061242: @ 2061242 :thumb
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x2061246


.align 2, 0
.thumb
Function_2061248: @ 2061248 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r6, #0x0
	mov     r5, r1
	mov     r4, r2
	sub     r1, r6, #0x1
	mov     r7, r0
	cmp     r4, r1
	beq     branch_2061302
	bl      Function_205f108
	cmp     r0, #0x2
	bne     branch_2061302
	mov     r0, r5
	bl      GetSpriteSpriteListFirstSprite
	mov     r1, #0x9
	str     r0, [sp, #0x4]
	bl      Function_2071cb4
	cmp     r0, #0x1
	bne     branch_2061302
	mov     r0, r5
	bl      LoadSpritePositionX
	str     r0, [sp, #0x10]
	mov     r0, r5
	bl      LoadSpritePositionZ
	lsr     r1, r0, #31
	add     r1, r0, r1
	asr     r0, r1, #1
	str     r0, [sp, #0xc]
	mov     r0, r5
	bl      LoadSpritePositionY
	str     r0, [sp, #0x8]
	add     r0, sp, #0x8
	str     r0, [sp, #0x0]
	mov     r0, r7
	mov     r1, r4
	add     r2, sp, #0x10
	add     r3, sp, #0xc
	bl      Function_2061674
	add     r0, sp, #0x14
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x10]
	ldr     r2, [sp, #0xc]
	ldr     r3, [sp, #0x8]
	bl      0x2251044
	mov     r6, r0
	cmp     r4, #0x3
	bhi     branch_2061302
	add     r0, r4, r4
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x20612c4

Jumppoints_20612c4:
.hword branch_20612cc - Jumppoints_20612c4 - 2
.hword branch_20612da - Jumppoints_20612c4 - 2
.hword branch_20612e8 - Jumppoints_20612c4 - 2
.hword branch_20612f6 - Jumppoints_20612c4 - 2
.thumb
branch_20612cc: @ 20612cc :thumb
	ldr     r0, [sp, #0x14]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_205dbb4
	mov     r6, r0
	b       branch_2061302
@ 0x20612da

.thumb
branch_20612da: @ 20612da :thumb
	ldr     r0, [sp, #0x14]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_205dbc0
	mov     r6, r0
	b       branch_2061302
@ 0x20612e8

.thumb
branch_20612e8: @ 20612e8 :thumb
	ldr     r0, [sp, #0x14]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_205dbcc
	mov     r6, r0
	b       branch_2061302

branch_20612f6: @ 20612f6 :thumb
	ldr     r0, [sp, #0x14]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_205dbd8
	mov     r6, r0
branch_2061302: @ 2061302 :thumb
	mov     r0, r6
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2061308


/* Input:
r0: PtrToSpriteStruct
*/
.thumb
.globl Function_2061308
Function_2061308: @ 2061308 :thumb
	ldr     r3, [pc, #0x0] @ 0x206130c, (=0x2061349)
	bx      r3
@ 0x206130c

.word Function_2061348+1 @ =0x2061349, 0x206130c



.thumb
Function_2061310: @ 2061310 :thumb
	mov     r1, #0x20
	tst     r1, r0
	beq     branch_206131a
	mov     r0, #0x2
	bx      lr
@ 0x206131a

.thumb
branch_206131a: @ 206131a :thumb
	mov     r1, #0x10
	tst     r0, r1
	beq     branch_2061324
	mov     r1, #0x3
	b       branch_2061326
@ 0x2061324

.thumb
branch_2061324: @ 2061324 :thumb
	sub     r1, #0x11
.thumb
branch_2061326: @ 2061326 :thumb
	mov     r0, r1
	bx      lr
@ 0x206132a


.align 2, 0
.thumb
Function_206132c: @ 206132c :thumb
	mov     r1, #0x40
	tst     r1, r0
	beq     branch_2061336
	mov     r0, #0x0
	bx      lr
@ 0x2061336

.thumb
branch_2061336: @ 2061336 :thumb
	mov     r1, #0x80
	tst     r0, r1
	beq     branch_2061340
	mov     r1, #0x1
	b       branch_2061342
@ 0x2061340

.thumb
branch_2061340: @ 2061340 :thumb
	sub     r1, #0x81
.thumb
branch_2061342: @ 2061342 :thumb
	mov     r0, r1
	bx      lr
@ 0x2061346


.align 2, 0
.thumb
Function_2061348: @ 2061348 :thumb
	push    {r3-r7,lr}
	mov     r5, r2
	mov     r6, r0
	mov     r0, r5
	bl      Function_2061310
	mov     r4, r0
	mov     r0, r5
	bl      Function_206132c
	mov     r1, #0x0
	mvn     r1, r1
	mov     r5, r0
	cmp     r4, r1
	beq     branch_20613a8
	cmp     r5, r1
	bne     branch_206136e
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x206136e

.thumb
branch_206136e: @ 206136e :thumb
	mov     r0, r6
	bl      Function_205ea94
	mov     r7, r0
	mov     r0, r6
	bl      Function_205ebe0
	str     r0, [sp, #0x0]
	mov     r0, r6
	bl      Function_205ebe8
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r7, r1
	beq     branch_20613a6
	ldr     r1, [sp, #0x0]
	cmp     r4, r1
	bne     branch_206139a
	cmp     r5, r0
	bne     branch_206139a
	mov     r0, r7
	pop     {r3-r7,pc}
@ 0x206139a

.thumb
branch_206139a: @ 206139a :thumb
	cmp     r5, r0
	beq     branch_20613a2
	mov     r0, r5
	pop     {r3-r7,pc}
@ 0x20613a2

.thumb
branch_20613a2: @ 20613a2 :thumb
	mov     r0, r4
	pop     {r3-r7,pc}

branch_20613a6: @ 20613a6 :thumb
	mov     r0, r5
branch_20613a8: @ 20613a8 :thumb
	pop     {r3-r7,pc}
@ 0x20613aa


.align 2, 0
.thumb
.globl Function_20613ac
Function_20613ac: @ 20613ac :thumb
	push    {r4,lr}
	bl      Function_205eb3c
	mov     r4, r0
	bl      IsSpriteMovable
	cmp     r0, #0x1
	bne     branch_20613c0
	mov     r0, #0x1
	pop     {r4,pc}

branch_20613c0: @ 20613c0 :thumb
	mov     r0, r4
	bl      GetSpriteMovementNr
	bl      Function_20613d8
	cmp     r0, #0x1
	bne     branch_20613d2
	mov     r0, #0x1
	pop     {r4,pc}

branch_20613d2: @ 20613d2 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x20613d6


.align 2, 0
.thumb
Function_20613d8: @ 20613d8 :thumb
	sub     r0, #0x1c
	cmp     r0, #0x3
	bhi     branch_20613f6
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x20613ea

Jumppoints_20613ea:
.hword branch_20613f2 - Jumppoints_20613ea - 2
.hword branch_20613f2 - Jumppoints_20613ea - 2
.hword branch_20613f2 - Jumppoints_20613ea - 2
.hword branch_20613f2 - Jumppoints_20613ea - 2
.thumb
branch_20613f2: @ 20613f2 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x20613f6

.thumb
branch_20613f6: @ 20613f6 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x20613fa


.align 2, 0
.thumb
Function_20613fc: @ 20613fc :thumb
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_2061406
	mov     r0, #0x1
	bx      lr

branch_2061406: @ 2061406 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x206140a


.align 2, 0
.thumb
Function_206140c: @ 206140c :thumb
	push    {r3,lr}
	bl      Function_205ec14
	sub     r0, #0x58
	cmp     r0, #0x3
	bhi     branch_2061430
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2061424

Jumppoints_2061424:
.hword branch_206142c - Jumppoints_2061424 - 2
.hword branch_206142c - Jumppoints_2061424 - 2
.hword branch_206142c - Jumppoints_2061424 - 2
.hword branch_206142c - Jumppoints_2061424 - 2
.thumb
branch_206142c: @ 206142c :thumb
	mov     r0, #0x1
	pop     {r3,pc}

branch_2061430: @ 2061430 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2061434


.thumb
.globl Function_2061434
Function_2061434: @ 2061434 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_205eb74
	cmp     r0, #0x0
	beq     branch_206144a
	cmp     r0, #0x1
	beq     branch_206145a
	cmp     r0, #0x2
	bne     branch_2061470
branch_206144a: @ 206144a :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_205fcc0
	bl      Function_205fc64
	mov     r4, r0
	b       branch_2061476

branch_206145a: @ 206145a :thumb
	mov     r0, r5
	bl      Function_205ec88
	mov     r0, r5
	mov     r1, r4
	bl      Function_2060850
	bl      Function_206081c
	mov     r4, r0
	b       branch_2061476

branch_2061470: @ 2061470 :thumb
	mov     r4, #0x0
	bl      ErrorHandling
branch_2061476: @ 2061476 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x206147a


.align 2, 0
.thumb
Function_206147c: @ 206147c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r7, r2
	mov     r6, r3
	bl      Function_2061348
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	bl      Function_2061434
	mov     r4, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_205eb08
	cmp     r4, #0x0
	bne     branch_20614ae
	mov     r0, r5
	bl      GetSpriteFaceDirection
	mov     r1, #0x0
	bl      Function_2065838
	pop     {r3-r7,pc}
@ 0x20614ae

.thumb
branch_20614ae: @ 20614ae :thumb
	cmp     r4, #0x2
	bne     branch_20614bc
	ldr     r0, [sp, #0x0]
	mov     r1, #0x28
	bl      Function_2065838
	pop     {r3-r7,pc}
@ 0x20614bc

.thumb
branch_20614bc: @ 20614bc :thumb
	mov     r0, r5
	bl      Function_205eb3c
	ldr     r0, [sp, #0x1c]
	mov     r4, #0x4
	mov     r1, r0
	tst     r1, r4
	beq     branch_20614d0
	mov     r4, #0x38
	b       branch_2061536
@ 0x20614d0

.thumb
branch_20614d0: @ 20614d0 :thumb
	mov     r1, #0x80
	tst     r1, r0
	beq     branch_20614da
	mov     r4, #0x75
	b       branch_2061536
@ 0x20614da

.thumb
branch_20614da: @ 20614da :thumb
	cmp     r0, #0x0
	beq     branch_20614ee
	mov     r1, #0x8
	mov     r4, #0x1c
	tst     r0, r1
	bne     branch_2061536
	ldr     r0, [pc, #0x58] @ 0x2061540, (=0x601)
	bl      Function_2005748
	b       branch_2061536
@ 0x20614ee

.thumb
branch_20614ee: @ 20614ee :thumb
	cmp     r6, #0x5
	bhi     branch_2061520
	add     r0, r6, r6
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x20614fe

Jumppoints_20614fe:
.hword branch_206150a - Jumppoints_20614fe - 2
.hword branch_206150c - Jumppoints_20614fe - 2
.hword branch_2061510 - Jumppoints_20614fe - 2
.hword branch_2061514 - Jumppoints_20614fe - 2
.hword branch_2061518 - Jumppoints_20614fe - 2
.hword branch_206151c - Jumppoints_20614fe - 2
.thumb
branch_206150a: @ 206150a :thumb
	b       branch_2061522
@ 0x206150c

.thumb
branch_206150c: @ 206150c :thumb
	mov     r4, #0x8
	b       branch_2061522
@ 0x2061510

.thumb
branch_2061510: @ 2061510 :thumb
	mov     r4, #0xc
	b       branch_2061522
@ 0x2061514

.thumb
branch_2061514: @ 2061514 :thumb
	mov     r4, #0x4c
	b       branch_2061522
@ 0x2061518

.thumb
branch_2061518: @ 2061518 :thumb
	mov     r4, #0x10
	b       branch_2061522
@ 0x206151c

.thumb
branch_206151c: @ 206151c :thumb
	mov     r4, #0x14
	b       branch_2061522
@ 0x2061520

.thumb
branch_2061520: @ 2061520 :thumb
	mov     r4, #0x4
.thumb
branch_2061522: @ 2061522 :thumb
	ldr     r0, [sp, #0x18]
	cmp     r0, #0x1
	bne     branch_2061536
	mov     r0, r5
	mov     r1, r7
	bl      Function_20613fc
	cmp     r0, #0x1
	bne     branch_2061536
	mov     r4, #0x58
.thumb
branch_2061536: @ 2061536 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_2065838
	pop     {r3-r7,pc}
@ 0x2061540

.word 0x601 @ 0x2061540



.thumb
.globl Function_2061544
Function_2061544: @ 2061544 :thumb
	push    {r3,lr}
	bl      Function_205eb3c
	bl      IsSpriteMovable
	pop     {r3,pc}
@ 0x2061550


.thumb
.globl Function_2061550
Function_2061550: @ 2061550 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	bl      Function_205eb3c
	mov     r1, r0
	mov     r0, r5
	mov     r2, r4
	mov     r3, r6
	bl      Function_2060b64
	pop     {r4-r6,pc}
@ 0x206156a


.align 2, 0
.thumb
.globl Function_206156c
Function_206156c: @ 206156c :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_205eb3c
	mov     r1, r4
	bl      Function_2064238
	pop     {r4,pc}
@ 0x206157c


.thumb
.globl Function_206157c
Function_206157c: @ 206157c :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	str     r0, [sp, #0x0]
	mov     r6, r2
	mov     r7, r3
	bl      GetSpritePositionX
	mov     r4, r0
	mov     r0, r5
	bl      GetWalkPositionXChange
	add     r0, r4, r0
	str     r0, [r6, #0x0]
	ldr     r0, [sp, #0x0]
	bl      GetSpritePositionY
	mov     r4, r0
	mov     r0, r5
	bl      GetWalkPositionYChange
	add     r0, r4, r0
	str     r0, [r7, #0x0]
	pop     {r3-r7,pc}
@ 0x20615aa


.align 2, 0
.thumb
.globl Function_20615ac
Function_20615ac: @ 20615ac :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	bl      GetSpriteFaceDirection
	mov     r1, r0
	mov     r0, r5
	mov     r2, r4
	mov     r3, r6
	bl      Function_206157c
	pop     {r4-r6,pc}
@ 0x20615c6


.align 2, 0
.thumb
Function_20615c8: @ 20615c8 :thumb
	push    {r3,lr}
	bl      Function_205eb3c
	bl      GetSpriteSpriteListFirstSprite
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_14
	mov     r1, #0x0
	bl      Function_202cf28
	pop     {r3,pc}
@ 0x20615e0


.thumb
Function_20615e0: @ 20615e0 :thumb
	push    {r4-r6,lr}
	mov     r0, #0x0
	mov     r4, r2
	mvn     r0, r0
	mov     r5, r1
	cmp     r4, r0
	beq     branch_206162a
	mov     r0, r5
	bl      Function_2062be8
	lsl     r0, r0, #24
	lsr     r6, r0, #24
	mov     r0, r5
	mov     r1, r6
	bl      Function_206415c
	cmp     r0, #0x1
	bne     branch_2061610
	cmp     r4, #0x1
	bls     branch_206160c
	mov     r0, #0x1
	pop     {r4-r6,pc}

branch_206160c: @ 206160c :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}

branch_2061610: @ 2061610 :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_206417c
	cmp     r0, #0x1
	bne     branch_206162a
	sub     r0, r4, #0x2
	cmp     r0, #0x1
	bls     branch_2061626
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2061626

.thumb
branch_2061626: @ 2061626 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x206162a

.thumb
branch_206162a: @ 206162a :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x206162e


.align 2, 0
.thumb
Function_2061630: @ 2061630 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r1, #0x0
	mvn     r1, r1
	mov     r5, r0
	cmp     r2, r1
	beq     branch_2061642
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2061642

.thumb
branch_2061642: @ 2061642 :thumb
	bl      Function_205eb74
	cmp     r0, #0x1
	beq     branch_206164e
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x206164e

.thumb
branch_206164e: @ 206164e :thumb
	mov     r0, r5
	bl      Function_205efdc
	cmp     r0, #0x0
	bne     branch_206165c
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x206165c

.thumb
branch_206165c: @ 206165c :thumb
	mov     r0, r5
	bl      Function_205eb3c
	mov     r1, r4
	bl      Function_206413c
	cmp     r0, #0x1
	bne     branch_2061670
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_2061670: @ 2061670 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2061674


.thumb
.globl Function_2061674
Function_2061674: @ 2061674 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r2
	mov     r6, r3
	bl      Function_205f108
	cmp     r0, #0x5
	bhi     branch_20616de
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2061690

Jumppoints_2061690:
.hword branch_206169c - Jumppoints_2061690 - 2
.hword branch_206169c - Jumppoints_2061690 - 2
.hword branch_206169c - Jumppoints_2061690 - 2
.hword branch_20616a4 - Jumppoints_2061690 - 2
.hword branch_20616ac - Jumppoints_2061690 - 2
.hword branch_20616b4 - Jumppoints_2061690 - 2
.thumb
branch_206169c: @ 206169c :thumb
	ldr     r1, [pc, #0x40] @ 0x20616e0, (=Unknown_20edb04)
	lsl     r0, r4, #3
	add     r0, r1, r0
	b       branch_20616be

branch_20616a4: @ 20616a4 :thumb
	ldr     r1, [pc, #0x3c] @ 0x20616e4, (=Unknown_20edb24)
	lsl     r0, r4, #3
	add     r0, r1, r0
	b       branch_20616be

branch_20616ac: @ 20616ac :thumb
	ldr     r1, [pc, #0x38] @ 0x20616e8, (=Unknown_20edb44)
	lsl     r0, r4, #3
	add     r0, r1, r0
	b       branch_20616be

branch_20616b4: @ 20616b4 :thumb
	ldr     r1, [pc, #0x34] @ 0x20616ec, (=Unknown_20edb64)
	lsl     r0, r4, #3
	add     r0, r1, r0
	b       branch_20616be
@ 0x20616bc

	pop     {r4-r6,pc}

.thumb
branch_20616be: @ 20616be :thumb
	mov     r1, #0x0
	ldsh    r1, [r0, r1]
	ldr     r2, [r5, #0x0]
	ldr     r3, [sp, #0x10]
	add     r1, r2, r1
	str     r1, [r5, #0x0]
	mov     r1, #0x2
	ldsh    r1, [r0, r1]
	ldr     r2, [r6, #0x0]
	add     r1, r2, r1
	str     r1, [r6, #0x0]
	mov     r1, #0x4
	ldsh    r0, [r0, r1]
	ldr     r2, [r3, #0x0]
	add     r0, r2, r0
	str     r0, [r3, #0x0]
branch_20616de: @ 20616de :thumb
	pop     {r4-r6,pc}
@ 0x20616e0

.word Unknown_20edb04 @ 0x20616e0
.word Unknown_20edb24 @ 0x20616e4
.word Unknown_20edb44 @ 0x20616e8
.word Unknown_20edb64 @ 0x20616ec



/* Input:
r0: PtrToSpriteStruct
*/
.thumb
.globl Function_20616f0
Function_20616f0: @ 20616f0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r6, r1
	bl      Function_205f158
	cmp     r0, #0x0
	bne     branch_206170c

	mov     r0, r5
	mov     r1, r6
	bl      Function_206156c
	str     r0, [sp, #0x10]
	b       branch_2061758

branch_206170c: @ 206170c :thumb
	mov     r0, r5
	bl      Function_205eb3c
	mov     r4, r0

	bl      GetSpriteSpriteListFirstSprite
	mov     r7, r0

	mov     r0, r4
	bl      LoadSpritePositionX
	str     r0, [sp, #0xc]
	mov     r0, r4
	bl      LoadSpritePositionZ
	lsr     r1, r0, #31
	add     r1, r0, r1
	asr     r0, r1, #1
	str     r0, [sp, #0x8]
	mov     r0, r4
	bl      LoadSpritePositionY
	str     r0, [sp, #0x4]
	add     r0, sp, #0x4
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, r6
	add     r2, sp, #0xc
	add     r3, sp, #0x8
	bl      Function_2061674
	add     r0, sp, #0x10
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x8]
	ldr     r3, [sp, #0x4]
	mov     r0, r7
	bl      0x2251044
branch_2061758: @ 2061758 :thumb
	ldr     r0, [sp, #0x10]
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x206175e


.align 2, 0
.thumb
.globl Function_2061760
Function_2061760: @ 2061760 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	str     r0, [sp, #0x4]
	bl      Function_205eb3c
	mov     r5, r0
	bl      GetSpriteSpriteListFirstSprite
	mov     r6, r0
	mov     r0, r5
	bl      LoadSpritePositionX
	mov     r7, r0
	mov     r0, r5
	bl      LoadSpritePositionZ
	lsr     r1, r0, #31
	add     r1, r0, r1
	mov     r0, r5
	asr     r4, r1, #1
	bl      LoadSpritePositionY
	mov     r5, r0
	ldr     r0, [sp, #0x4]
	bl      Function_205f158
	cmp     r0, #0x0
	bne     branch_20617a6
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	bl      Function_2054f94
	str     r0, [sp, #0x8]
	b       branch_20617b6

branch_20617a6: @ 20617a6 :thumb
	add     r0, sp, #0x8
	str     r0, [sp, #0x0]
	mov     r0, r6
	mov     r1, r7
	mov     r2, r4
	mov     r3, r5
	bl      0x2251044
branch_20617b6: @ 20617b6 :thumb
	ldr     r0, [sp, #0x8]
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x20617bc


.thumb
.globl Function_20617bc
Function_20617bc: @ 20617bc :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r7, r0
	mov     r5, r1
	mov     r6, r2
	mov     r4, r3
	bl      Function_205eaa0
	str     r0, [sp, #0x4]

	mov     r0, r7
	bl      Function_205eb3c
	str     r0, [sp, #0x8]
	bl      LoadSpritePositionX
	str     r0, [r5, #0x0]

	ldr     r0, [sp, #0x8]
	bl      LoadSpritePositionZ
	lsr     r1, r0, #31
	add     r1, r0, r1
	asr     r0, r1, #1
	str     r0, [r6, #0x0]

	ldr     r0, [sp, #0x8]
	bl      LoadSpritePositionY
	str     r0, [r4, #0x0]

	ldr     r1, [sp, #0x4]
	mov     r0, r7
	mov     r2, r5
	mov     r3, r6
	str     r4, [sp, #0x0]
	bl      Function_2061674
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2061804


/* Input:
r1: NrOfSprites
*/
thumb_func_start InitSpriteListAndSprites
InitSpriteListAndSprites: @ 2061804 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5          @ NrOfSprites
	mov     r7, r2
	bl      CallocSpriteListAndSprites
	mov     r4, r0          @ PtrToSpriteList

	mov     r1, r6
	bl      SetSpriteListFirstSprite

	mov     r0, r4          @ PtrToSpriteList
	mov     r1, r5          @ NrOfSprites
	bl      SetNrOfSpritesInList

	mov     r0, r4          @ PtrToSpriteList
	mov     r1, r7
	bl      SetSpriteListc

	mov     r0, r4
	pop     {r3-r7,pc}
thumb_func_end InitSpriteListAndSprites


.align 2, 0
.thumb
Function_2061830: @ 2061830 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      GetSpriteList_124_3
	mov     r1, r0
	mov     r0, #0xb
	bl      Function_2018238
	mov     r0, #0xb
	mov     r1, r4
	bl      Function_2018238
	pop     {r4,pc}
@ 0x206184a


.align 2, 0
.thumb
.globl Function_206184c
Function_206184c: @ 206184c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	str     r0, [sp, #0x0]
	mov     r5, r2
	str     r3, [sp, #0x4]
	ldr     r7, [sp, #0x20]
	bl      GetNrOfSpritesInList
	mov     r6, r0

	ldr     r0, [sp, #0x0]
	bl      GetSpriteList_124_3
	mov     r4, r0
	cmp     r6, #0x0
	beq     branch_20618b4

branch_206186a: @ 206186a :thumb
	mov     r0, r4
	bl      CheckSpriteFlag_Locked
	cmp     r0, #0x1
	bne     branch_20618aa
	ldr     r2, [sp, #0x4]
	mov     r0, r4
	mov     r1, r5
	mov     r3, r7
	bl      Function_206244c
	cmp     r0, #0x0
	beq     branch_206188c
	cmp     r0, #0x1
	beq     branch_20618aa
	cmp     r0, #0x2
	b       branch_20618aa

branch_206188c: @ 206188c :thumb
	mov     r0, r4
	bl      GetSprite_c
	cmp     r5, r0
	beq     branch_20618aa

	mov     r1, #0x1
	mov     r0, r4
	lsl     r1, r1, #10
	bl      CheckSpriteFlags
	cmp     r0, #0x0
	bne     branch_20618aa
	mov     r0, r4
	bl      Function_2061af4
branch_20618aa: @ 20618aa :thumb

	mov     r0, #0x4a
	lsl     r0, r0, #2
	add     r4, r4, r0
	.hword  0x1e76 @ sub r6, r6, #0x1
	bne     branch_206186a

branch_20618b4: @ 20618b4 :thumb
	ldr     r0, [sp, #0x0]
	bl      GetSpriteListAdr18
	mov     r1, r0
	ldr     r0, [sp, #0x0]
	bl      0x21eda38
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x20618c6


/* Input:
r0: NrOfSprites

Return:
r0: PtrToSpriteList
*/
thumb_func_start CallocSpriteListAndSprites
CallocSpriteListAndSprites: @ 20618c8 :thumb
	push    {r4-r6,lr}
	mov     r1, #0x4b
	mov     r4, r0
	mov     r0, #0xb
	lsl     r1, r1, #2          @ 0x12c
	bl      malloc
	mov     r5, r0
	bne     branch_20618de
	bl      ErrorHandling
branch_20618de: @ 20618de :thumb

	mov     r2, #0x4b
	mov     r0, r5
	mov     r1, #0x0
	lsl     r2, r2, #2          @ 0x12c
	blx     Call_FillMemWithValue

	mov     r0, #0x4a
	lsl     r0, r0, #2          @ 0x128
	mov     r6, r4
	mul     r6, r0
	mov     r0, #0xb
	mov     r1, r6
	bl      malloc
	mov     r4, r0
	bne     branch_2061902
	bl      ErrorHandling
branch_2061902: @ 2061902 :thumb

	mov     r0, r4
	mov     r1, #0x0
	mov     r2, r6
	blx     Call_FillMemWithValue

	mov     r0, r5
	mov     r1, r4
	bl      SetSpriteList_124

	mov     r0, r5
	pop     {r4-r6,pc}
thumb_func_end CallocSpriteListAndSprites


/* Input:
r0: PtrToSpriteList
r1: Source

Return:
r0: Adr of unlocked Sprite
*/
thumb_func_start CopySpriteStruct
CopySpriteStruct: @ 2061918 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r7, r2
	add     r2, sp, #0x0
	mov     r3, r1
	mov     r5, r0
	mov     r6, r2
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}

	mov     r0, r6
	bl      GetOverworldsID
	mov     r4, r0

	mov     r0, r6
	bl      HasOverworldsNoScript
	cmp     r0, #0x0
	bne     branch_2061964

	mov     r0, r5
	mov     r1, r4
	mov     r2, r7
	bl      Function_2062154
	mov     r4, r0
	beq     branch_2061986

	mov     r1, r6
	mov     r2, r7
	bl      Function_20626d0
	add     sp, #0x20
	mov     r0, r4
	pop     {r3-r7,pc}

branch_2061964: @ 2061964 :thumb
	mov     r0, r6
	bl      GetOverworldsFlagWithoutScript
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_20624cc
	mov     r4, r0
	beq     branch_2061986

	mov     r1, r7
	mov     r2, r6
	bl      Function_2062714
	add     sp, #0x20
	mov     r0, r4
	pop     {r3-r7,pc}

branch_2061986: @ 2061986 :thumb
	mov     r0, r5
	bl      FindUnlockedSpriteInSpriteList
	mov     r4, r0
	beq     branch_20619d8

	mov     r0, r5
	bl      GetSpriteListFirstSprite
	mov     r2, r0
	mov     r0, r4
	mov     r1, r6
	bl      Function_20621e8

	mov     r0, r4
	mov     r1, r5
	bl      Function_206234c

	mov     r0, r4
	mov     r1, r7
	bl      SetSprite_c

	mov     r0, r4
	bl      Function_2062660

	mov     r0, r4
	bl      Function_2062670

	mov     r0, r4
	mov     r1, #Sprite_Flags_4
	bl      SetSpriteFlags

	mov     r0, r5
	mov     r1, r4
	bl      Function_20621ac

	mov     r0, r5
	bl      Function_206281c_Dummy
	bl      IncreaseSpriteList8
	mov     r0, r4
branch_20619d8: @ 20619d8 :thumb
	add     sp, #0x20
	pop     {r3-r7,pc}
thumb_func_end CopySpriteStruct


thumb_func_start InitSpriteStruct
InitSpriteStruct: @ 20619dc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r5, r0
	mov     r4, r1

	add     r0, sp, #0x0
	mov     r1, #0x0
	mov     r6, r2
	mov     r7, r3
	bl      SetOverworldsID

	ldr     r1, [sp, #0x38]
	add     r0, sp, #0x0
	bl      SetOverworldsSprite

	ldr     r1, [sp, #0x3c]
	add     r0, sp, #0x0
	bl      SetOverworldsMovement

	add     r0, sp, #0x0
	mov     r1, #0x0
	bl      SetOverworldsTrainer

	add     r0, sp, #0x0
	mov     r1, #0x0
	bl      SetOverworldsFlag

	add     r0, sp, #0x0
	mov     r1, #0x0
	bl      SetOverworldsScript

	add     r0, sp, #0x0
	mov     r1, r7
	bl      SetOverworldsOrientation

	mov     r1, #0x0
	add     r0, sp, #0x0
	mov     r2, r1
	bl      Function_206312c

	add     r0, sp, #0x0
	mov     r1, #0x0
	mov     r2, #0x1
	bl      Function_206312c

	add     r0, sp, #0x0
	mov     r1, #0x0
	mov     r2, #0x2
	bl      Function_206312c

	add     r0, sp, #0x0
	mov     r1, #0x0
	bl      SetOverworldsMovementWidth

	add     r0, sp, #0x0
	mov     r1, #0x0
	bl      SetOverworldsMovementLength

	add     r0, sp, #0x0
	mov     r1, r4
	bl      SetOverworldsX

	add     r0, sp, #0x0
	mov     r1, r6
	bl      SetOverworldsY

	add     r0, sp, #0x0
	mov     r1, #0x0
	bl      SetOverworldsZ

	ldr     r2, [sp, #0x40]
	mov     r0, r5
	add     r1, sp, #0x0
	bl      CopySpriteStruct

	add     sp, #0x20
	pop     {r3-r7,pc}
thumb_func_end InitSpriteStruct


thumb_func_start Sprite_AddPeople
Sprite_AddPeople: @ 2061a74 :thumb
	push    {r3-r7,lr}
	mov     r5, r0

	mov     r0, r1
	mov     r1, r2
	ldr     r2, [sp, #0x18]
	mov     r7, r3
	mov     r6, #0x0
	bl      FindOverworldsIDWithoutScript
	str     r0, [sp, #0x0]
	cmp     r0, #0x0
	beq     branch_2061ab0

	bl      GetOverworldsFlag
	mov     r4, r0

	mov     r0, r5
	bl      GetSpriteListFirstSprite
	lsl     r1, r4, #16
	lsr     r1, r1, #16
	bl      LoadFlagAdressAndCheckFlag
	cmp     r0, #0x0
	bne     branch_2061ab0

	ldr     r1, [sp, #0x0]
	mov     r0, r5
	mov     r2, r7
	bl      CopySpriteStruct
	mov     r6, r0
branch_2061ab0: @ 2061ab0 :thumb

	mov     r0, r6
	pop     {r3-r7,pc}
thumb_func_end Sprite_AddPeople


.thumb
.globl Function_2061ab4
Function_2061ab4: @ 2061ab4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      SetSpriteGraphic
	mov     r0, r4
	bl      Function_2062604
	mov     r1, #0x1
	mov     r0, r4
	lsl     r1, r1, #14
	bl      UnsetSpriteFlags
	mov     r0, r4
	bl      Function_2062670
	pop     {r4,pc}
@ 0x2061ad4


.thumb
.globl Function_2061ad4
Function_2061ad4: @ 2061ad4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_2062dfc
	cmp     r0, #0x1
	bne     branch_2061ae8
	mov     r0, r5
	bl      Function_2061b48
branch_2061ae8: @ 2061ae8 :thumb

	mov     r0, r5
	mov     r1, r4
	bl      Function_2061ab4
	pop     {r3-r5,pc}
@ 0x2061af2


.align 2, 0
.thumb
.globl Function_2061af4
Function_2061af4: @ 2061af4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      GetSpriteSpriteList
	bl      Function_2062ca8
	cmp     r0, #0x1
	bne     branch_2061b0a
	mov     r0, r4
	bl      Function_2062b7c
branch_2061b0a: @ 2061b0a :thumb

	mov     r0, r4
	bl      CallSprite_c0Callback
	mov     r0, r4
	bl      Function_2062a2c
	mov     r0, r4
	bl      GetSpriteSpriteList2
	bl      DecreaseSpriteList8
	mov     r0, r4
	bl      Function_206243c
	pop     {r4,pc}
@ 0x2061b28


.thumb
Sprite_RemovePeople: @ 2061b28 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      GetSpriteFlag
	mov     r5, r0

	mov     r0, r4
	bl      GetSpriteSpriteListFirstSprite
	lsl     r1, r5, #16
	lsr     r1, r1, #16
	bl      LoadFlagAdressAndSetFlag

	mov     r0, r4
	bl      Function_2061af4
	pop     {r3-r5,pc}
@ 0x2061b48


.thumb
.globl Function_2061b48
Function_2061b48: @ 2061b48 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      GetSpriteSpriteList
	bl      Function_2062ca8
	cmp     r0, #0x1
	bne     branch_2061b76

	mov     r1, #0x1
	mov     r0, r4
	lsl     r1, r1, #14
	bl      MaskSpriteFlags
	cmp     r0, #0x0
	beq     branch_2061b6c
	mov     r0, r4
	bl      Function_2062b7c
branch_2061b6c: @ 2061b6c :thumb

	mov     r1, #0x1
	mov     r0, r4
	lsl     r1, r1, #14
	bl      UnsetSpriteFlags
branch_2061b76: @ 2061b76 :thumb
	ldr     r1, [pc, #0x30] @ 0x2061ba8, (=0xffff)
	mov     r0, r4
	bl      SetSpriteGraphic

	ldr     r1, [pc, #0x2c] @ 0x2061bac, (=Function_20633f0_Dummy+1)
	mov     r0, r4
	bl      Function_2062b4c

	ldr     r1, [pc, #0x28] @ 0x2061bb0, (=Function_20633f4_Dummy+1)
	mov     r0, r4
	bl      Function_2062b60

	ldr     r1, [pc, #0x20] @ 0x2061bb0, (=Function_20633f4_Dummy+1)
	mov     r0, r4
	bl      Function_2062b74

	ldr     r1, [pc, #0x1c] @ 0x2061bb4, (=Function_20633f8_Dummy+1)
	mov     r0, r4
	bl      Function_2062b88

	ldr     r1, [pc, #0x18] @ 0x2061bb8, (=Function_20633fc_Dummy+1)
	mov     r0, r4
	bl      Function_2062b9c
	pop     {r4,pc}
@ 0x2061ba8

.word 0xffff @ 0x2061ba8
.word Function_20633f0_Dummy+1 @ 0x2061bac
.word Function_20633f4_Dummy+1 @ 0x2061bb0
.word Function_20633f8_Dummy+1 @ 0x2061bb4
.word Function_20633fc_Dummy+1 @ 0x2061bb8



.thumb
Function_2061bbc: @ 2061bbc :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, #0x0
	bl      GetNrOfSpritesInList
	mov     r6, r0
	mov     r0, r5
	bl      GetSpriteList_124_3
	mov     r7, #0x4a
	mov     r5, r0
	lsl     r7, r7, #2
branch_2061bd4: @ 2061bd4 :thumb
	mov     r0, r5
	mov     r1, #0x1
	bl      MaskSpriteFlags
	cmp     r0, #0x0
	beq     branch_2061be6
	mov     r0, r5
	bl      Function_2061af4
branch_2061be6: @ 2061be6 :thumb

	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, r5, r7
	cmp     r4, r6
	blt     branch_2061bd4

	pop     {r3-r7,pc}
@ 0x2061bf0


.thumb
.globl Function_2061bf0
Function_2061bf0: @ 2061bf0 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      Function_2062ca8
	cmp     r0, #0x1
	beq     branch_2061c00
	bl      ErrorHandling
branch_2061c00: @ 2061c00 :thumb

	mov     r0, r5
	mov     r4, #0x0
	bl      GetNrOfSpritesInList
	mov     r6, r0
	mov     r0, r5
	bl      GetSpriteList_124_3
	mov     r7, #0x4a
	mov     r5, r0
	lsl     r7, r7, #2
branch_2061c16: @ 2061c16 :thumb
	mov     r0, r5
	mov     r1, #0x1
	bl      MaskSpriteFlags
	cmp     r0, #0x0
	beq     branch_2061c3c

	mov     r1, #0x1
	mov     r0, r5
	lsl     r1, r1, #14
	bl      MaskSpriteFlags
	cmp     r0, #0x0
	beq     branch_2061c3c
	mov     r0, r5
	bl      Function_2062b90
	mov     r0, r5
	bl      Function_2062628_Dummy
branch_2061c3c: @ 2061c3c :thumb

	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, r5, r7
	cmp     r4, r6
	blt     branch_2061c16

	pop     {r3-r7,pc}
@ 0x2061c46


.align 2, 0
.thumb
.globl Function_2061c48
Function_2061c48: @ 2061c48 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      Function_2062ca8
	cmp     r0, #0x1
	beq     branch_2061c58
	bl      ErrorHandling
branch_2061c58: @ 2061c58 :thumb

	mov     r0, r5
	mov     r4, #0x0
	bl      GetNrOfSpritesInList
	mov     r6, r0
	mov     r0, r5
	bl      GetSpriteList_124_3
	mov     r7, #0x4a
	mov     r5, r0
	lsl     r7, r7, #2
branch_2061c6e: @ 2061c6e :thumb
	mov     r0, r5
	bl      CheckSpriteFlag_Locked
	cmp     r0, #0x1
	bne     branch_2061c9c

	mov     r0, r5
	bl      CheckSpriteFlag_4000
	cmp     r0, #0x1
	bne     branch_2061c8a

	mov     r0, r5
	bl      Function_2062ba4
	b       branch_2061c90

branch_2061c8a: @ 2061c8a :thumb
	mov     r0, r5
	bl      Function_2062670
branch_2061c90: @ 2061c90 :thumb
	mov     r0, r5
	bl      Function_2062604
	mov     r0, r5
	bl      Function_2064464
branch_2061c9c: @ 2061c9c :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, r5, r7
	cmp     r4, r6
	blt     branch_2061c6e

	pop     {r3-r7,pc}
@ 0x2061ca6


/* Input:
r2: PtrToSprite2
*/
.align 2, 0
.thumb
Function_2061ca8: @ 2061ca8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r7, r0
	mov     r6, r1
	mov     r0, #0x0
	mov     r5, r2
	mov     r4, r3
	str     r0, [sp, #0x4]

	mov     r0, r6
	add     r1, sp, #0x0
	add     r2, sp, #0x4
	mov     r3, #0x1
	bl      Function_20625b0
	cmp     r0, #0x0
	beq     branch_2061cee

branch_2061cc8: @ 2061cc8 :thumb
	ldr     r1, [sp, #0x0]              @ PtrToSprite
	mov     r0, r7
	mov     r2, r5                      @ PtrToSprite2
	bl      CopySpriteToSprite2
	.hword  0x1e64 @ sub r4, r4, #0x1
	add     r5, #0x50
	cmp     r4, #0x0
	bgt     branch_2061cde
	bl      ErrorHandling
branch_2061cde: @ 2061cde :thumb

	mov     r0, r6
	add     r1, sp, #0x0
	add     r2, sp, #0x4
	mov     r3, #0x1
	bl      Function_20625b0
	cmp     r0, #0x0
	bne     branch_2061cc8

branch_2061cee: @ 2061cee :thumb
	cmp     r4, #0x0
	beq     branch_2061cfe
	mov     r2, #0x50
	mov     r0, r5
	mov     r1, #0x0
	mul     r2, r4
	blx     Call_FillMemWithValue
branch_2061cfe: @ 2061cfe :thumb

	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2061d02


.align 2, 0
.thumb
Function_2061d04: @ 2061d04 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r7, r2
	beq     branch_2061d3a

branch_2061d0e: @ 2061d0e :thumb
	ldr     r1, [r5, #0x0]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_2061d34

	mov     r0, r6
	bl      FindUnlockedSpriteInSpriteList
	mov     r4, r0
	bne     branch_2061d24
	bl      ErrorHandling
branch_2061d24: @ 2061d24 :thumb

	mov     r0, r4
	mov     r1, r5
	bl      CopySprite2ToSprite
	mov     r0, r6
	mov     r1, r4
	bl      Function_2061fa8
branch_2061d34: @ 2061d34 :thumb
	add     r5, #0x50
	.hword  0x1e7f @ sub r7, r7, #0x1
	bne     branch_2061d0e

branch_2061d3a: @ 2061d3a :thumb
	pop     {r3-r7,pc}
@ 0x2061d3c


/* Input:
r1: PtrToSprite
r2: PtrToSprite2
*/
thumb_func_start CopySpriteToSprite2
CopySpriteToSprite2: @ 2061d3c :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r1
	mov     r6, r0
	mov     r4, r2

	mov     r0, r5
	bl      LoadSpriteFlags
	str     r0, [r4, #Sprite2_Flags]

	mov     r0, r5
	bl      GetSprite_4
	str     r0, [r4, #Sprite2_4]

	mov     r0, r5
	bl      GetSpriteID
	strb    r0, [r4, #Sprite2_ID]

	mov     r0, r5
	bl      GetSprite_c
	strh    r0, [r4, #Sprite2_10]

	mov     r0, r5
	bl      GetSpriteGraphic
	strh    r0, [r4, #Sprite2_Graphic]

	mov     r0, r5
	bl      GetSpriteMovement
	strb    r0, [r4, #Sprite2_Movement]

	mov     r0, r5
	bl      GetSpriteTrainer
	strh    r0, [r4, #Sprite2_Trainer]

	mov     r0, r5
	bl      GetSpriteFlag
	strh    r0, [r4, #Sprite2_Flag]

	mov     r0, r5
	bl      GetSpriteScript
	strh    r0, [r4, #Sprite2_Script]

	mov     r0, r5
	bl      GetSpriteInitOrientation
	strb    r0, [r4, #Sprite2_InitOrientation]

	mov     r0, r5
	bl      LoadSpriteFaceDirection
	strb    r0, [r4, #Sprite2_FaceDirection]

	mov     r0, r5
	bl      LoadSpriteFace2Direction
	strb    r0, [r4, #Sprite2_e]

	mov     r0, r5
	mov     r1, #0x0
	bl      Function_20629d8
	strh    r0, [r4, #Sprite2_1a]

	mov     r0, r5
	mov     r1, #0x1
	bl      Function_20629d8
	strh    r0, [r4, #Sprite2_1c]

	mov     r0, r5
	mov     r1, #0x2
	bl      Function_20629d8
	strh    r0, [r4, #Sprite2_1e]

	mov     r0, r5
	bl      GetSpriteMovementWidth
	strb    r0, [r4, #Sprite2_MovementWidth]

	mov     r0, r5
	bl      GetSpriteMovementLength
	strb    r0, [r4, #Sprite2_MovementLength]

	mov     r0, r5
	bl      Function_2062ff0
	strh    r0, [r4, #Sprite2_20]
	mov     r0, r5
	bl      Function_2062ff8
	strh    r0, [r4, #Sprite2_22]
	mov     r0, r5
	bl      Function_2063000
	strh    r0, [r4, #Sprite2_24]

	mov     r0, r5
	bl      LoadSpritePositionX
	strh    r0, [r4, #Sprite2_PosX]

	mov     r0, r5
	bl      LoadSpritePositionZ
	strh    r0, [r4, #Sprite2_PosZ]

	mov     r0, r5
	bl      LoadSpritePositionY
	strh    r0, [r4, #Sprite2_PosY]

	mov     r0, #Sprite2_PosX
	mov     r1, #Sprite2_PosY
	ldsh    r0, [r4, r0]
	ldsh    r1, [r4, r1]
	add     r2, sp, #0x0
	bl      Function_2064450

	mov     r0, r5
	bl      GetSprite74
	str     r0, [sp, #0x4]
	mov     r0, r5
	bl      IsSetSpriteFlags20000000
	mov     r2, r0
	mov     r0, r6
	add     r1, sp, #0x0
	bl      Function_20644d0
	cmp     r0, #0x0
	bne     branch_2061e38

	mov     r0, r5
	bl      GetSprite74
	str     r0, [r4, #Sprite2_2c]
	b       branch_2061e4e

branch_2061e38: @ 2061e38 :thumb
	mov     r0, r5
	bl      IsSetSpriteFlags800000
	cmp     r0, #0x1
	bne     branch_2061e4a
	mov     r0, r5
	bl      GetSprite74
	str     r0, [sp, #0x4]
branch_2061e4a: @ 2061e4a :thumb

	ldr     r0, [sp, #0x4]
	str     r0, [r4, #Sprite2_2c]
branch_2061e4e: @ 2061e4e :thumb
	mov     r0, r5
	bl      Function_2062a78
	mov     r3, r4
	add     r3, #0x30
	mov     r2, #0x10
branch_2061e5a: @ 2061e5a :thumb
	ldrb    r1, [r0, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r1, [r3, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_2061e5a
	mov     r0, r5
	bl      GetSpriteAdre8
	add     r4, #0x40
	mov     r2, #0x10
branch_2061e70: @ 2061e70 :thumb
	ldrb    r1, [r0, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r1, [r4, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_2061e70

	add     sp, #0xc
	pop     {r3-r6,pc}
thumb_func_end CopySpriteToSprite2


thumb_func_start CopySprite2ToSprite
CopySprite2ToSprite: @ 2061e80 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r1

	ldr     r1, [r4, #Sprite2_Flags]
	mov     r5, r0
	bl      SaveSpriteFlags

	ldr     r1, [r4, #Sprite2_4]
	mov     r0, r5
	bl      SetSprite_4

	ldrb    r1, [r4, #Sprite2_ID]
	mov     r0, r5
	bl      SetSpriteID

	ldrh    r1, [r4, #Sprite2_10]
	mov     r0, r5
	bl      SetSprite_c

	ldrh    r1, [r4, #Sprite2_Graphic]
	mov     r0, r5
	bl      SetSpriteGraphic

	ldrb    r1, [r4, #Sprite2_Movement]
	mov     r0, r5
	bl      SetSpriteMovement

	ldrh    r1, [r4, #Sprite2_Trainer]
	mov     r0, r5
	bl      SetSpriteTrainer

	ldrh    r1, [r4, #Sprite2_Flag]
	mov     r0, r5
	bl      SetSpriteFlag

	ldrh    r1, [r4, #Sprite2_Script]
	mov     r0, r5
	bl      SetSpriteScript

	mov     r1, #Sprite2_InitOrientation
	ldsb    r1, [r4, r1]
	mov     r0, r5
	bl      SetSpriteInitOrientation

	mov     r1, #Sprite2_FaceDirection
	ldsb    r1, [r4, r1]
	mov     r0, r5
	bl      ChangeSpriteFaceDirection
	mov     r1, #0xe
	ldsb    r1, [r4, r1]
	mov     r0, r5
	bl      ChangeSpriteFace2Direction
	mov     r1, #0x1a
	ldsh    r1, [r4, r1]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_20629b4
	mov     r1, #0x1c
	ldsh    r1, [r4, r1]
	mov     r0, r5
	mov     r2, #0x1
	bl      Function_20629b4
	mov     r1, #0x1e
	ldsh    r1, [r4, r1]
	mov     r0, r5
	mov     r2, #0x2
	bl      Function_20629b4

	mov     r1, #Sprite2_MovementWidth
	ldsb    r1, [r4, r1]
	mov     r0, r5
	bl      SetSpriteMovementWidth

	mov     r1, #Sprite2_MovementLength
	ldsb    r1, [r4, r1]
	mov     r0, r5
	bl      SetSpriteMovementLength

	mov     r1, #Sprite2_20
	ldsh    r1, [r4, r1]
	mov     r0, r5
	bl      Function_2062ff4

	mov     r1, #0x22
	ldsh    r1, [r4, r1]
	mov     r0, r5
	bl      Function_2062ffc
	mov     r1, #0x24
	ldsh    r1, [r4, r1]
	mov     r0, r5
	bl      Function_2063004

	mov     r1, #Sprite2_PosX
	ldsh    r1, [r4, r1]
	mov     r0, r5
	bl      SaveSpritePositionX

	mov     r1, #Sprite2_PosZ
	ldsh    r1, [r4, r1]
	mov     r0, r5
	bl      SaveSpritePositionZ

	mov     r1, #Sprite2_PosY
	ldsh    r1, [r4, r1]
	mov     r0, r5
	bl      SaveSpritePositionY

	add     r1, sp, #0x0
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	str     r0, [r1, #0x4]
	str     r0, [r1, #0x8]
	ldr     r0, [r4, #0x2c]
	str     r0, [sp, #0x4]
	mov     r0, r5
	bl      CopyToSprite70Struct
	mov     r0, r5
	bl      Function_2062a78
	mov     r3, r4
	add     r3, #0x30
	mov     r2, #0x10
branch_2061f80: @ 2061f80 :thumb
	ldrb    r1, [r3, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	strb    r1, [r0, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_2061f80
	mov     r0, r5
	bl      GetSpriteAdre8
	add     r4, #0x40
	mov     r2, #0x10
branch_2061f96: @ 2061f96 :thumb
	ldrb    r1, [r4, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	strb    r1, [r0, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_2061f96

	add     sp, #0xc
	pop     {r4,r5,pc}
thumb_func_end CopySprite2ToSprite


.align 2, 0
.thumb
Function_2061fa8: @ 2061fa8 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	bl      Function_2061ff0
	mov     r0, r4
	bl      Function_2062010

	mov     r0, r4
	mov     r1, r5
	bl      SetSpriteSpriteList

	mov     r0, r4
	bl      Function_206239c
	mov     r0, r4
	bl      Function_20656dc
	mov     r0, r4
	bl      Function_2062670
	mov     r0, r5
	mov     r1, r4
	bl      Function_20621ac
	mov     r0, r4
	bl      Function_2062b34

	mov     r0, r5
	bl      Function_206281c_Dummy
	bl      IncreaseSpriteList8
	pop     {r3-r5,pc}
@ 0x2061fee


.align 2, 0
.thumb
Function_2061ff0: @ 2061ff0 :thumb
	push    {r4,lr}
	mov     r1, #Sprite_Flags_Locked|Sprite_Flags_4
	mov     r4, r0
	bl      SetSpriteFlags

	ldr     r1, [pc, #0x10] @ 0x206200c, (=0xef4248)
	mov     r0, r4
	bl      UnsetSpriteFlags

	mov     r0, r4
	bl      UnsetSpriteMainFlags
	pop     {r4,pc}
@ 0x206200a

.align 2
.word 0xef4248 @ 0x206200c



.thumb
Function_2062010: @ 2062010 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	add     r1, sp, #0x0
	bl      CopySprite70Struct
	mov     r0, r4
	bl      LoadSpritePositionX
	mov     r1, r0
	mov     r0, #0x2
	lsl     r2, r1, #16
	lsl     r0, r0, #14
	add     r0, r2, r0
	str     r0, [sp, #0x0]
	mov     r0, r4
	bl      SetSpriteX2
	mov     r0, r4
	bl      LoadSpritePositionZ
	mov     r1, r0
	mov     r0, r4
	bl      SetSpriteZ2
	mov     r0, r4
	bl      LoadSpritePositionY
	mov     r1, r0
	mov     r0, #0x2
	lsl     r2, r1, #16
	lsl     r0, r0, #14
	add     r0, r2, r0
	str     r0, [sp, #0x8]
	mov     r0, r4
	bl      SetSpriteY2
	mov     r0, r4
	add     r1, sp, #0x0
	bl      CopyToSprite70Struct
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2062066


/* Input:
r0: [OverWorldData_SpriteList]
r1: MapNr
r2: NrOfOverworlds
r3: PtrToOverworlds
*/
.align 2, 0
.thumb
Function_2062068: @ 2062068 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r2
	mov     r7, r0
	mov     r4, r3
	str     r1, [sp, #0x0]
	cmp     r5, #0x0                @ NrOfOverworlds == 0 ?
	bne     branch_206207c
	bl      ErrorHandling
branch_206207c: @ 206207c :thumb

	lsl     r0, r5, #5              @ NrOfOverworlds*32
	str     r0, [sp, #0x4]          @ SizeOfOverworldsData
	ldr     r1, [sp, #0x4]
	mov     r0, #0xb
	bl      malloc2
	mov     r6, r0
	bne     branch_2062090
	bl      ErrorHandling
branch_2062090: @ 2062090 :thumb

	ldr     r2, [sp, #0x4]          @ SizeOfOverworldsData
	mov     r0, r6                  @ Destination
	mov     r1, r4                  @ PtrToOverworlds
	blx     CopyDataInByteSteps

	mov     r0, #0xb
	mov     r1, #0x14
	bl      malloc2
	mov     r4, r0
	bne     branch_20620aa
	bl      ErrorHandling
branch_20620aa: @ 20620aa :thumb

	ldr     r0, [sp, #0x0]
	str     r0, [r4, #0x0]              @ MapNr
	str     r5, [r4, #0x4]              @ SizeOfOverworldsData
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	str     r7, [r4, #0xc]              @ [OverWorldData_SpriteList]
	mov     r0, r4
	str     r6, [r4, #0x10]             @ PtrToOverworldsData
	bl      CopyOverworldsDataIntoSpriteList
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x20620c2


/* Input:
r0: PtrToStruct with Overworlds-Data
*/
thumb_func_start CopyOverworldsDataIntoSpriteList
CopyOverworldsDataIntoSpriteList: @ 20620c4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0xc]              @ [OverWorldData_SpriteList]
	bl      GetSpriteListFirstSprite
	mov     r6, r5
	ldr     r4, [r5, #0x10]             @ PtrToOverworldsData
	mov     r7, r0
	add     r6, #0x8
branch_20620d6: @ 20620d6 :thumb
	mov     r0, r4
	bl      HasOverworldsNoScript
	cmp     r0, #0x1
	beq     branch_20620ec

	ldrh    r1, [r4, #Overworlds_Flag]
	mov     r0, r7
	bl      LoadFlagAdressAndCheckFlag
	cmp     r0, #0x0
	bne     branch_20620fe

branch_20620ec: @ 20620ec :thumb
	ldr     r0, [r5, #0xc]              @ [OverWorldData_SpriteList]
	ldr     r2, [r5, #0x0]              @ MapNr
	mov     r1, r4                      @ PtrToOverworldsData
	bl      CopySpriteStruct
	cmp     r0, #0x0
	bne     branch_20620fe
	bl      ErrorHandling
branch_20620fe: @ 20620fe :thumb

	ldr     r0, [r6, #0x0]
	add     r4, #0x20
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r6, #0x0]
	ldr     r1, [r5, #0x8]
	ldr     r0, [r5, #0x4]              @ SizeOfOverworldsData
	cmp     r1, r0
	blt     branch_20620d6

	ldr     r1, [r5, #0x10]             @ PtrToOverworldsData
	mov     r0, #0xb
	bl      Function_2018238

	mov     r0, #0xb
	mov     r1, r5
	bl      Function_2018238
	pop     {r3-r7,pc}
thumb_func_end CopyOverworldsDataIntoSpriteList


/* Input:
r0: PtrToSpriteList
*/
thumb_func_start FindUnlockedSpriteInSpriteList
FindUnlockedSpriteInSpriteList: @ 2062120 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, #0x0
	bl      GetNrOfSpritesInList
	mov     r6, r0

	mov     r0, r5
	bl      GetSpriteList_124_3
	mov     r7, #0x4a
	mov     r5, r0
	lsl     r7, r7, #2
branch_2062138: @ 2062138 :thumb
	mov     r0, r5
	mov     r1, #Sprite_Flags_Locked
	bl      MaskSpriteFlags
	cmp     r0, #0x0
	bne     branch_2062148

	mov     r0, r5
	pop     {r3-r7,pc}

branch_2062148: @ 2062148 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, r5, r7
	cmp     r4, r6
	blt     branch_2062138

	mov     r0, #0x0
	pop     {r3-r7,pc}
thumb_func_end FindUnlockedSpriteInSpriteList


.thumb
Function_2062154: @ 2062154 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r1
	mov     r1, #0x0
	mov     r4, r2
	str     r1, [sp, #0x4]
	add     r1, sp, #0x0
	add     r2, sp, #0x4
	mov     r3, #0x1
	mov     r6, r0
	bl      Function_20625b0
	cmp     r0, #0x1
	bne     branch_20621a6

	add     r7, sp, #0x0
branch_2062172: @ 2062172 :thumb
	ldr     r0, [sp, #0x0]
	bl      Function_2062e94
	cmp     r0, #0x1
	bne     branch_2062196

	ldr     r0, [sp, #0x0]
	bl      GetSpriteID
	cmp     r5, r0
	bne     branch_2062196

	ldr     r0, [sp, #0x0]
	bl      Function_2062c18
	cmp     r4, r0
	bne     branch_2062196

	ldr     r0, [sp, #0x0]
	add     sp, #0x8
	pop     {r3-r7,pc}

branch_2062196: @ 2062196 :thumb
	mov     r0, r6
	mov     r1, r7
	add     r2, sp, #0x4
	mov     r3, #0x1
	bl      Function_20625b0
	cmp     r0, #0x1
	beq     branch_2062172

branch_20621a6: @ 20621a6 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x20621ac


.thumb
Function_20621ac: @ 20621ac :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	bl      GetSpriteListc
	mov     r5, r0
	mov     r0, r4
	bl      GetSpriteMovement
	cmp     r0, #0x30
	beq     branch_20621c4
	cmp     r0, #0x32
	bne     branch_20621c6
.thumb
branch_20621c4: @ 20621c4 :thumb
	.hword  0x1cad @ add r5, r5, #0x2
.thumb
branch_20621c6: @ 20621c6 :thumb
	ldr     r0, [pc, #0x1c] @ 0x20621e4, (=Function_20627e8+1)
	mov     r1, r4
	mov     r2, r5
	bl      AddTaskToTaskList1
	mov     r5, r0
	bne     branch_20621d8
	bl      ErrorHandling
branch_20621d8: @ 20621d8 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_2062a1c
	pop     {r3-r5,pc}
@ 0x20621e2

.align 2
.word Function_20627e8+1 @ 0x20621e4



/* Input:
r0:
r1: PtrToOverworldsData
r2: SpriteListFirstSprite
*/
.thumb
Function_20621e8: @ 20621e8 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r6, r2
	bl      GetOverworldsID
	mov     r1, r0
	mov     r0, r5
	bl      SetSpriteID

	mov     r0, r4
	bl      GetOverworldsSprite
	mov     r1, r0
	mov     r0, r6
	bl      Function_206262c
	mov     r1, r0
	mov     r0, r5
	bl      SetSpriteGraphic

	mov     r0, r4
	bl      GetOverworldsMovement
	mov     r1, r0
	mov     r0, r5
	bl      SetSpriteMovement

	mov     r0, r4
	bl      GetOverworldsTrainer
	mov     r1, r0
	mov     r0, r5
	bl      SetSpriteTrainer

	mov     r0, r4
	bl      GetOverworldsFlag
	mov     r1, r0
	mov     r0, r5
	bl      SetSpriteFlag

	mov     r0, r4
	bl      GetOverworldsScript
	mov     r1, r0
	mov     r0, r5
	bl      SetSpriteScript

	mov     r0, r4
	bl      GetOverworldsOrientation
	mov     r1, r0
	mov     r0, r5
	bl      SetSpriteInitOrientation

	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2063150
	mov     r1, r0
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_20629b4
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2063150
	mov     r1, r0
	mov     r0, r5
	mov     r2, #0x1
	bl      Function_20629b4
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2063150
	mov     r1, r0
	mov     r0, r5
	mov     r2, #0x2
	bl      Function_20629b4

	mov     r0, r4
	bl      GetOverworldsMovementWidth
	mov     r1, r0
	mov     r0, r5
	bl      SetSpriteMovementWidth

	mov     r0, r4
	bl      GetOverworldsMovementLength
	mov     r1, r0
	mov     r0, r5
	bl      SetSpriteMovementLength

	mov     r0, r5
	mov     r1, r4
	bl      Function_20622b8
	pop     {r4-r6,pc}
@ 0x20622b6


/* Input:
r1: PtrToOverworlds
*/
.align 2, 0
.thumb
Function_20622b8: @ 20622b8 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r6, r1
	mov     r4, r0

	mov     r0, r6
	bl      GetOverworldsX
	mov     r5, r0
	mov     r0, #0x2
	lsl     r1, r5, #16
	lsl     r0, r0, #14
	add     r0, r1, r0
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, r5
	bl      Function_2062ff4
	mov     r0, r4
	mov     r1, r5
	bl      SetSpriteX2
	mov     r0, r4
	mov     r1, r5
	bl      SaveSpritePositionX

	mov     r0, r6
	bl      GetOverworldsZ
	asr     r1, r0, #3
	str     r0, [sp, #0x4]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r5, r0, #12
	mov     r0, r4
	mov     r1, r5
	bl      Function_2062ffc
	mov     r0, r4
	mov     r1, r5
	bl      SetSpriteZ2
	mov     r0, r4
	mov     r1, r5
	bl      SaveSpritePositionZ

	mov     r0, r6
	bl      GetOverworldsY
	mov     r5, r0
	mov     r0, #0x2
	lsl     r1, r5, #16
	lsl     r0, r0, #14
	add     r0, r1, r0
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, r5
	bl      Function_2063004
	mov     r0, r4
	mov     r1, r5
	bl      SetSpriteY2
	mov     r0, r4
	mov     r1, r5
	bl      SaveSpritePositionY

	mov     r0, r4
	add     r1, sp, #0x0
	bl      CopyToSprite70Struct

	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x206234a


.align 2, 0
.thumb
Function_206234c: @ 206234c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r1, [pc, #0x44] @ 0x2062398, (=0x1801)
	mov     r5, r0
	bl      SetSpriteFlags
	mov     r0, r5
	bl      IsSpriteScriptFFFF
	cmp     r0, #0x1
	bne     branch_206236a
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2062e78
branch_206236a: @ 206236a :thumb
	mov     r0, r5

	mov     r1, r4
	bl      SetSpriteSpriteList
	mov     r0, r5
	bl      GetSpriteInitOrientation
	mov     r1, r0
	mov     r0, r5
	bl      ChangeSpriteFaceDirection
	mov     r0, r5
	bl      GetSpriteInitOrientation
	mov     r1, r0
	mov     r0, r5
	bl      ChangeSpriteFace2Direction
	mov     r0, r5
	bl      Function_20656dc
	pop     {r3-r5,pc}
@ 0x2062396

.align 2
.word 0x1801 @ 0x2062398



.thumb
Function_206239c: @ 206239c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      GetSpriteMovement
	bl      Function_206320c
	mov     r4, r0
	bl      Function_2063224
	mov     r1, r0
	mov     r0, r5
	bl      SetSprite_b8Callback
	mov     r0, r4
	bl      Function_2063228
	mov     r1, r0
	mov     r0, r5
	bl      SetSprite_bcCallback
	mov     r0, r4
	bl      Function_206322c
	mov     r1, r0
	mov     r0, r5
	bl      SetSprite_c0Callback
	pop     {r3-r5,pc}
@ 0x20623d4

.thumb
Function_20623d4: @ 20623d4 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      GetSpriteGraphic
	mov     r1, #0x2
	lsl     r1, r1, #12
	cmp     r0, r1
	bne     branch_20623e8
	ldr     r5, [pc, #0x50] @ 0x2062438, (=0x21fb470)
	b       branch_20623ee
@ 0x20623e8

.thumb
branch_20623e8: @ 20623e8 :thumb
	bl      Function_2063244
	mov     r5, r0
.thumb
branch_20623ee: @ 20623ee :thumb
	mov     r0, r5
	bl      Function_2063230
	mov     r1, r0
	mov     r0, r4
	bl      Function_2062b4c
	mov     r0, r5
	bl      Function_2063234
	mov     r1, r0
	mov     r0, r4
	bl      Function_2062b60
	mov     r0, r5
	bl      Function_2063238
	mov     r1, r0
	mov     r0, r4
	bl      Function_2062b74
	mov     r0, r5
	bl      Function_206323c
	mov     r1, r0
	mov     r0, r4
	bl      Function_2062b88
	mov     r0, r5
	bl      Function_2063240
	mov     r1, r0
	mov     r0, r4
	bl      Function_2062b9c
	pop     {r3-r5,pc}
@ 0x2062436

.align 2
.word 0x21fb470 @ 0x2062438



.thumb
Function_206243c: @ 206243c :thumb
	ldr     r3, [pc, #0x8] @ 0x2062448, (=Call_FillMemWithValue)
	mov     r2, #0x4a
	mov     r1, #0x0
	lsl     r2, r2, #2
	bx      r3
@ 0x2062446

.align 2
.word Call_FillMemWithValue @ =0x20d5124, 0x2062448



.thumb
Function_206244c: @ 206244c :thumb
	push    {r3-r7,lr}
	mov     r7, r2
	mov     r5, r0
	mov     r6, r3
	str     r1, [sp, #0x0]
	cmp     r7, #0x0
	beq     branch_20624c6

branch_206245a: @ 206245a :thumb
	mov     r0, r6
	bl      GetOverworldsID
	mov     r4, r0

	mov     r0, r5
	bl      GetSpriteID
	cmp     r4, r0
	bne     branch_20624be

	mov     r0, r6
	bl      HasOverworldsNoScript
	cmp     r0, #0x1
	bne     branch_20624a4

	mov     r0, r6
	bl      GetOverworldsFlagWithoutScript
	mov     r4, r0

	mov     r0, r5
	bl      Function_2062e94
	cmp     r0, #0x1
	bne     branch_2062496

	mov     r0, r5
	bl      Function_2062c18
	cmp     r4, r0
	bne     branch_20624be

	mov     r0, #0x1
	pop     {r3-r7,pc}

branch_2062496: @ 2062496 :thumb
	mov     r0, r5
	bl      GetSprite_c
	cmp     r4, r0
	bne     branch_20624be

	mov     r0, #0x2
	pop     {r3-r7,pc}

branch_20624a4: @ 20624a4 :thumb
	mov     r0, r5
	bl      Function_2062e94
	cmp     r0, #0x1
	bne     branch_20624be

	mov     r0, r5
	bl      Function_2062c18
	ldr     r1, [sp, #0x0]
	cmp     r1, r0
	bne     branch_20624be

	mov     r0, #0x2
	pop     {r3-r7,pc}

branch_20624be: @ 20624be :thumb
	.hword  0x1e7f @ sub r7, r7, #0x1
	add     r6, #0x20
	cmp     r7, #0x0
	bne     branch_206245a

branch_20624c6: @ 20624c6 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x20624ca


.align 2, 0
.thumb
Function_20624cc: @ 20624cc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r1
	mov     r1, #0x0
	mov     r4, r2
	str     r1, [sp, #0x4]
	add     r1, sp, #0x0
	add     r2, sp, #0x4
	mov     r3, #0x1
	mov     r6, r0
	bl      Function_20625b0
	cmp     r0, #0x1
	bne     branch_2062514

	add     r7, sp, #0x0
branch_20624ea: @ 20624ea :thumb
	ldr     r0, [sp, #0x0]
	bl      GetSpriteID
	cmp     r5, r0
	bne     branch_2062504

	ldr     r0, [sp, #0x0]
	bl      GetSprite_c
	cmp     r4, r0
	bne     branch_2062504

	ldr     r0, [sp, #0x0]
	add     sp, #0x8
	pop     {r3-r7,pc}

branch_2062504: @ 2062504 :thumb
	mov     r0, r6
	mov     r1, r7
	add     r2, sp, #0x4
	mov     r3, #0x1
	bl      Function_20625b0
	cmp     r0, #0x1
	beq     branch_20624ea

branch_2062514: @ 2062514 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x206251a



/****************************************
              Sprite List
****************************************/

/* Input:
r0: Adress of SpriteList
r1: Sprite ID
*/
thumb_func_start GetAdressOfSpriteID
GetAdressOfSpriteID: @ 206251c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	cmp     r5, #0x0
	bne     branch_206252a
	bl      ErrorHandling
branch_206252a: @ 206252a :thumb

	mov     r0, r5
	bl      GetNrOfSpritesInList
	mov     r4, r0

	mov     r0, r5
	bl      GetSpriteList_124_2
	mov     r7, #0x4a
	mov     r5, r0
	lsl     r7, r7, #2
branch_206253e: @ 206253e :thumb
	mov     r0, r5
	mov     r1, #0x1
	bl      CheckSpriteFlags
	cmp     r0, #0x1
	bne     branch_2062562

	mov     r0, r5
	bl      Function_2062e94
	cmp     r0, #0x0
	bne     branch_2062562

	mov     r0, r5
	bl      GetSpriteID
	cmp     r6, r0
	bne     branch_2062562

	mov     r0, r5
	pop     {r3-r7,pc}

branch_2062562: @ 2062562 :thumb
	.hword  0x1e64 @ sub r4, r4, #0x1
	add     r5, r5, r7
	cmp     r4, #0x0
	bgt     branch_206253e

	mov     r0, #0x0
	pop     {r3-r7,pc}
thumb_func_end GetAdressOfSpriteID


/* Input:
r0: Adress of SpriteList
r1: 0x30
*/
thumb_func_start GetSpriteAdrWithMovementNr
GetSpriteAdrWithMovementNr: @ 2062570 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	bl      GetNrOfSpritesInList
	mov     r4, r0

	mov     r0, r5
	bl      GetSpriteList_124_2
	mov     r7, #0x4a
	mov     r5, r0              @ Adr To first Sprite
	lsl     r7, r7, #2          @ 0x128 Sprite_Size
branch_2062588: @ 2062588 :thumb
	mov     r0, r5
	mov     r1, #0x1
	bl      CheckSpriteFlags
	cmp     r0, #0x1
	bne     branch_20625a2

	mov     r0, r5
	bl      GetSpriteMovement
	cmp     r6, r0
	bne     branch_20625a2

	mov     r0, r5
	pop     {r3-r7,pc}

branch_20625a2: @ 20625a2 :thumb
	.hword  0x1e64 @ sub r4, r4, #0x1
	add     r5, r5, r7
	cmp     r4, #0x0
	bgt     branch_2062588

	mov     r0, #0x0
	pop     {r3-r7,pc}
thumb_func_end GetSpriteAdrWithMovementNr


/* Input:
r0: Adress of SpriteList
*/
.align 2, 0
.thumb
.globl Function_20625b0
Function_20625b0: @ 20625b0 :thumb
	push    {r3-r7,lr}
	mov     r5, r2
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r6, r3
	bl      GetNrOfSpritesInList
	mov     r7, r0
	ldr     r0, [r5, #0x0]
	cmp     r0, r7
	blt     branch_20625ca

	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_20625ca: @ 20625ca :thumb
	mov     r0, r4
	bl      GetSpriteList_124_2
	mov     r1, #0x4a
	ldr     r2, [r5, #0x0]
	lsl     r1, r1, #2              @ 0x128
	mul     r1, r2
	add     r4, r0, r1
branch_20625da: @ 20625da :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, r6
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	mov     r0, r4
	bl      MaskSpriteFlags
	cmp     r6, r0
	bne     branch_20625f4

	ldr     r0, [sp, #0x0]
	str     r4, [r0, #0x0]
	mov     r0, #0x1
	pop     {r3-r7,pc}

branch_20625f4: @ 20625f4 :thumb
	mov     r0, #0x4a
	lsl     r0, r0, #2              @ 0x128
	add     r4, r4, r0
	ldr     r0, [r5, #0x0]
	cmp     r0, r7
	blt     branch_20625da

	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2062604


/* Input:
r0: PtrToSpriteStruct
*/
.thumb
Function_2062604: @ 2062604 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #Sprite_Flags_4
	bl      SetSpriteFlags

	mov     r0, r4
	bl      UnsetSpriteMainFlags
	pop     {r4,pc}
@ 0x2062616


/* Input:
r0: PtrToSpriteStruct
*/
thumb_func_start UnsetSpriteMainFlags
UnsetSpriteMainFlags: @ 2062618 :thumb
	ldr     r3, =UnsetSpriteFlags+1
	ldr     r1, =0x5108000
	bx      r3
@ 0x206261e

.align 2
.pool
thumb_func_end UnsetSpriteMainFlags


.thumb
Function_2062628_Dummy: @ 2062628 :thumb
	bx      lr
@ 0x206262a


/* Input:
r1: OverworldsSprite
*/
.align 2, 0
.thumb
Function_206262c: @ 206262c :thumb
	push    {r3,lr}
	cmp     r1, #0x65
	blt     branch_2062642
	cmp     r1, #0x74
	bgt     branch_2062642
	sub     r1, #0x65
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	bl      Function_203f164
	mov     r1, r0
branch_2062642: @ 2062642 :thumb

	mov     r0, r1
	pop     {r3,pc}
@ 0x2062646


/* Input:
r0: PtrToSpriteStruct
*/
.align 2, 0
.thumb
Function_2062648: @ 2062648 :thumb
	push    {r4,lr}
	mov     r1, #0x1
	lsl     r1, r1, #12
	mov     r4, r0
	bl      MaskSpriteFlags
	cmp     r0, #0x0
	beq     branch_206265e
	mov     r0, r4
	bl      Function_20642f8
branch_206265e: @ 206265e :thumb

	pop     {r4,pc}
@ 0x2062660


.thumb
Function_2062660: @ 2062660 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_206239c
	mov     r0, r4
	bl      Function_2063400
	pop     {r4,pc}
@ 0x2062670


/* Input:
r0: PtrToSpriteStruct
*/
.thumb
Function_2062670: @ 2062670 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      GetSpriteSpriteList
	bl      Function_2062ca8
	cmp     r0, #0x0
	beq     branch_20626b2

	mov     r0, r4
	bl      Function_2062648
	mov     r0, r4
	mov     r1, #0x0
	bl      SetSpritea0
	mov     r0, r4
	mov     r1, #0x0
	bl      0x21edd78
	mov     r0, r4
	bl      CheckSpriteFlag_4000
	cmp     r0, #0x0
	bne     branch_20626b2
	mov     r0, r4
	bl      Function_20623d4
	mov     r0, r4
	bl      Function_2062b54
	mov     r0, r4
	bl      SetSpriteFlag_4000
branch_20626b2: @ 20626b2 :thumb
	pop     {r4,pc}
@ 0x20626b4


/* Input:
r0: PtrToSpriteStruct
*/
thumb_func_start IsSpriteScriptFFFF
IsSpriteScriptFFFF: @ 20626b4 :thumb
	push    {r3,lr}
	bl      GetSpriteScript
	lsl     r0, r0, #16
	lsr     r1, r0, #16
	ldr     r0, [pc, #0xc] @ 0x20626cc, (=0xffff)
	cmp     r1, r0
	bne     branch_20626c8

	mov     r0, #0x1
	pop     {r3,pc}

branch_20626c8: @ 20626c8 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x20626cc

.word 0xffff @ 0x20626cc
thumb_func_end IsSpriteScriptFFFF



/* Input:
r0: PtrToSpriteStruct
r1: PtrToOverworldsStruct
*/
.thumb
Function_20626d0: @ 20626d0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	bl      Function_2062e94
	cmp     r0, #0x1
	beq     branch_20626e4
	bl      ErrorHandling
branch_20626e4: @ 20626e4 :thumb

	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2062e78
	mov     r0, r5
	mov     r1, r6
	bl      SetSprite_c
	mov     r0, r4
	bl      GetOverworldsScript
	mov     r1, r0
	mov     r0, r5
	bl      SetSpriteScript
	mov     r0, r4
	bl      GetOverworldsFlag
	mov     r1, r0
	mov     r0, r5
	bl      SetSpriteFlag
	pop     {r4-r6,pc}
@ 0x2062712


/* Input:
r0: PtrToSpriteStruct
r2: PtrToOverworldsStruct
*/
.align 2, 0
.thumb
Function_2062714: @ 2062714 :thumb
	push    {r4-r6,lr}
	mov     r6, r2
	mov     r5, r0
	mov     r0, r6
	mov     r4, r1
	bl      HasOverworldsNoScript
	cmp     r0, #0x1
	beq     branch_206272a
	bl      ErrorHandling
branch_206272a: @ 206272a :thumb

	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2062e78
	mov     r0, r6
	bl      GetOverworldsScript
	mov     r1, r0
	mov     r0, r5
	bl      SetSpriteScript
	mov     r0, r6
	bl      GetOverworldsFlagWithoutScript
	mov     r1, r0
	mov     r0, r5
	bl      SetSpriteFlag
	mov     r0, r5
	mov     r1, r4
	bl      SetSprite_c
	pop     {r4-r6,pc}
@ 0x2062758


.thumb
.globl Function_2062758
Function_2062758: @ 2062758 :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      GetSpriteSpriteListc
	add     r0, r0, r4
	pop     {r4,pc}
@ 0x2062764


.thumb
.globl Function_2062764
Function_2062764: @ 2062764 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r1, #0x1
	mov     r5, r0
	mov     r4, r2
	bl      CheckSpriteFlags
	cmp     r0, #0x0
	bne     branch_206277a

	mov     r0, #0x0
	pop     {r4-r6,pc}

branch_206277a: @ 206277a :thumb
	mov     r0, r5
	bl      GetSpriteID
	cmp     r6, r0
	beq     branch_2062788

	mov     r0, #0x0
	pop     {r4-r6,pc}

branch_2062788: @ 2062788 :thumb
	mov     r0, r5
	bl      GetSprite_c
	cmp     r4, r0
	beq     branch_20627ae

	mov     r0, r5
	bl      Function_2062e94
	cmp     r0, #0x0
	bne     branch_20627a0

	mov     r0, #0x0
	pop     {r4-r6,pc}

branch_20627a0: @ 20627a0 :thumb
	mov     r0, r5
	bl      Function_2062c18
	cmp     r4, r0
	beq     branch_20627ae

	mov     r0, #0x0
	pop     {r4-r6,pc}

branch_20627ae: @ 20627ae :thumb
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x20627b2


.align 2, 0
.thumb
.globl Function_20627b4
Function_20627b4: @ 20627b4 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r1, #0x1
	mov     r5, r0
	mov     r6, r2
	mov     r7, r3
	bl      CheckSpriteFlags
	cmp     r0, #0x0
	bne     branch_20627cc

	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_20627cc: @ 20627cc :thumb
	mov     r0, r5
	bl      Function_2062924
	cmp     r0, r4
	beq     branch_20627da

	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_20627da: @ 20627da :thumb
	mov     r0, r5
	mov     r1, r6
	mov     r2, r7
	bl      Function_2062764
	pop     {r3-r7,pc}
@ 0x20627e6


.align 2, 0
.thumb
Function_20627e8: @ 20627e8 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	bl      Function_2063410
	mov     r0, r4
	bl      CheckSpriteFlag_Locked
	cmp     r0, #0x0
	beq     branch_2062802
	mov     r0, r4
	bl      Function_2062804
branch_2062802: @ 2062802 :thumb
	pop     {r4,pc}
@ 0x2062804


.thumb
Function_2062804: @ 2062804 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      GetSpriteSpriteList
	bl      Function_2062ca8
	cmp     r0, #0x1
	bne     branch_206281a
	mov     r0, r4
	bl      0x21eccc8
branch_206281a: @ 206281a :thumb
	pop     {r4,pc}
@ 0x206281c


.thumb
Function_206281c_Dummy: @ 206281c :thumb
	bx      lr
@ 0x206281e


thumb_func_start SetNrOfSpritesInList
SetNrOfSpritesInList: @ 2062820 :thumb
	str     r1, [r0, #SpriteList_NrOfSprites]
	bx      lr
thumb_func_end SetNrOfSpritesInList


thumb_func_start GetNrOfSpritesInList
GetNrOfSpritesInList: @ 2062824 :thumb
	ldr     r0, [r0, #SpriteList_NrOfSprites]
	bx      lr
thumb_func_end GetNrOfSpritesInList


thumb_func_start IncreaseSpriteList8
IncreaseSpriteList8: @ 2062828 :thumb
	ldr     r1, [r0, #SpriteList_8]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #SpriteList_8]
	bx      lr
thumb_func_end IncreaseSpriteList8


thumb_func_start DecreaseSpriteList8
DecreaseSpriteList8: @ 2062830 :thumb
	ldr     r1, [r0, #SpriteList_8]
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r0, #SpriteList_8]
	bx      lr
thumb_func_end DecreaseSpriteList8


/* Input:
r0: PtrToSpriteList
*/
thumb_func_start SetBitsInSpriteList0
SetBitsInSpriteList0: @ 2062838 :thumb
	ldr     r2, [r0, #SpriteList_0]
	orr     r1, r2
	str     r1, [r0, #SpriteList_0]
	bx      lr
thumb_func_end SetBitsInSpriteList0


thumb_func_start UnsetBitsInSpriteList0
UnsetBitsInSpriteList0: @ 2062840 :thumb
	ldr     r2, [r0, #SpriteList_0]
	mvn     r1, r1
	and     r1, r2
	str     r1, [r0, #SpriteList_0]
	bx      lr
thumb_func_end UnsetBitsInSpriteList0


thumb_func_start MaskBitsInSpriteList0
MaskBitsInSpriteList0: @ 206284c :thumb
	ldr     r0, [r0, #SpriteList_0]
	and     r0, r1
	bx      lr
thumb_func_end MaskBitsInSpriteList0


thumb_func_start SetSpriteListc
SetSpriteListc: @ 2062854 :thumb
	str     r1, [r0, #SpriteList_c]
	bx      lr
thumb_func_end SetSpriteListc


thumb_func_start GetSpriteListc
GetSpriteListc: @ 2062858 :thumb
	ldr     r0, [r0, #SpriteList_c]
	bx      lr
thumb_func_end GetSpriteListc


thumb_func_start GetSpriteListAdr18
GetSpriteListAdr18: @ 206285c :thumb
	add     r0, #SpriteList_18
	bx      lr
thumb_func_end GetSpriteListAdr18


.thumb
SetSpriteList_124: @ 2062860 :thumb
	mov     r2, #0x49
	lsl     r2, r2, #2 @ 0x124 Sprite_124
	str     r1, [r0, r2]
	bx      lr
@ 0x2062868


thumb_func_start GetSpriteList_124_1
GetSpriteList_124_1: @ 2062868 :thumb
	mov     r1, #0x49
	lsl     r1, r1, #2 @ 0x124 Sprite_124
	ldr     r0, [r0, r1]
	bx      lr
thumb_func_end GetSpriteList_124_1


.thumb
GetSpriteList_124_2: @ 2062870 :thumb
	mov     r1, #0x49
	lsl     r1, r1, #2 @ 0x124 Sprite_124
	ldr     r0, [r0, r1]
	bx      lr
@ 0x2062878


.thumb
GetSpriteList_124_3: @ 2062878 :thumb
	mov     r1, #0x49
	lsl     r1, r1, #2 @ 0x124 Sprite_124
	ldr     r0, [r0, r1]
	bx      lr
@ 0x2062880


thumb_func_start GetAdrOfNextSprite
GetAdrOfNextSprite: @ 2062880 :thumb
	mov     r1, #0x4a
	ldr     r2, [r0, #0x0]
	lsl     r1, r1, #2          @ 0x128
	add     r1, r2, r1
	str     r1, [r0, #0x0]
	bx      lr
thumb_func_end GetAdrOfNextSprite


thumb_func_start SetSpriteListFirstSprite
SetSpriteListFirstSprite: @ 206288c :thumb
	mov     r2, #0x4a
	lsl     r2, r2, #2          @ SpriteList_FirstSprite
	str     r1, [r0, r2]
	bx      lr
thumb_func_end SetSpriteListFirstSprite


thumb_func_start GetSpriteListFirstSprite
GetSpriteListFirstSprite: @ 2062894 :thumb
	mov     r1, #0x4a
	lsl     r1, r1, #2 @ 0x128 SpriteList_FirstSprite
	ldr     r0, [r0, r1]
	bx      lr
thumb_func_end GetSpriteListFirstSprite


/* Input:
r0: SpriteList
*/
thumb_func_start SaveMemoryLocationOfMModel
SaveMemoryLocationOfMModel: @ 206289c :thumb
	str     r1, [r0, #SpriteList_MModel]
	bx      lr
thumb_func_end SaveMemoryLocationOfMModel


/* Input:
r0: SpriteList
*/
thumb_func_start LoadMemoryLocationOfMModel
LoadMemoryLocationOfMModel: @ 20628a0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #SpriteList_MModel]
	cmp     r0, #0x0
	bne     branch_20628ae
	bl      ErrorHandling
branch_20628ae: @ 20628ae :thumb

	ldr     r0, [r4, #SpriteList_MModel]
	pop     {r4,pc}
thumb_func_end LoadMemoryLocationOfMModel




/****************************************
            Sprite Structure
****************************************/

thumb_func_start SaveSpriteFlags
SaveSpriteFlags: @ 20628b4 :thumb
	str     r1, [r0, #Sprite_Flags]
	bx      lr
thumb_func_end SaveSpriteFlags


thumb_func_start LoadSpriteFlags
LoadSpriteFlags: @ 20628b8 :thumb
	ldr     r0, [r0, #Sprite_Flags]
	bx      lr
thumb_func_end LoadSpriteFlags


thumb_func_start SetSpriteFlags
SetSpriteFlags: @ 20628bc :thumb
	ldr     r2, [r0, #Sprite_Flags]
	orr     r1, r2
	str     r1, [r0, #Sprite_Flags]
	bx      lr
thumb_func_end SetSpriteFlags


thumb_func_start UnsetSpriteFlags
UnsetSpriteFlags: @ 20628c4 :thumb
	ldr     r2, [r0, #Sprite_Flags]
	mvn     r1, r1
	and     r1, r2
	str     r1, [r0, #Sprite_Flags]
	bx      lr
thumb_func_end UnsetSpriteFlags


thumb_func_start MaskSpriteFlags
MaskSpriteFlags: @ 20628d0 :thumb
	ldr     r0, [r0, #Sprite_Flags]
	and     r0, r1
	bx      lr
thumb_func_end MaskSpriteFlags


thumb_func_start CheckSpriteFlags
CheckSpriteFlags: @ 20628d8 :thumb
	ldr     r0, [r0, #Sprite_Flags]
	tst     r0, r1
	beq     branch_20628e2
	mov     r0, #0x1
	bx      lr

branch_20628e2: @ 20628e2 :thumb
	mov     r0, #0x0
	bx      lr
thumb_func_end CheckSpriteFlags


.align 2, 0
.thumb
SetSprite_4: @ 20628e8 :thumb
	str     r1, [r0, #Sprite_4]
	bx      lr
@ 0x20628ec


.thumb
GetSprite_4: @ 20628ec :thumb
	ldr     r0, [r0, #Sprite_4]
	bx      lr
@ 0x20628f0


.thumb
SetBitsSprite_4: @ 20628f0 :thumb
	ldr     r2, [r0, #Sprite_4]
	orr     r1, r2
	str     r1, [r0, #Sprite_4]
	bx      lr
@ 0x20628f8


.thumb
UnsetBitsSprite_4: @ 20628f8 :thumb
	ldr     r2, [r0, #Sprite_4]
	mvn     r1, r1
	and     r1, r2
	str     r1, [r0, #Sprite_4]
	bx      lr
@ 0x2062902


.align 2, 0
.thumb
MaskBitsSprite_4: @ 2062904 :thumb
	ldr     r0, [r0, #Sprite_4]
	and     r0, r1
	bx      lr
@ 0x206290a


thumb_func_start SetSpriteID
SetSpriteID: @ 206290c :thumb
	str     r1, [r0, #Sprite_ID]
	bx      lr
thumb_func_end SetSpriteID


thumb_func_start GetSpriteID
GetSpriteID: @ 2062910 :thumb
	ldr     r0, [r0, #Sprite_ID]
	bx      lr
thumb_func_end GetSpriteID


.thumb
.globl SetSprite_c
SetSprite_c: @ 2062914 :thumb
	str     r1, [r0, #Sprite_c]
	bx      lr
@ 0x2062918


.thumb
.globl GetSprite_c
GetSprite_c: @ 2062918 :thumb
	ldr     r0, [r0, #Sprite_c]
	bx      lr
@ 0x206291c


thumb_func_start SetSpriteGraphic
SetSpriteGraphic: @ 206291c :thumb
	str     r1, [r0, #Sprite_Graphic]
	bx      lr
thumb_func_end SetSpriteGraphic


thumb_func_start GetSpriteGraphic
GetSpriteGraphic: @ 2062920 :thumb
	ldr     r0, [r0, #Sprite_Graphic]
	bx      lr
thumb_func_end GetSpriteGraphic


.thumb
.globl Function_2062924
Function_2062924: @ 2062924 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      GetSpriteGraphic
	mov     r4, r0
	bl      IsValueSpriteBerrytree
	cmp     r0, #0x1
	bne     branch_206293e
	mov     r0, r5
	bl      Function_2067800
	mov     r4, r0
branch_206293e: @ 206293e :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2062942


thumb_func_start SetSpriteMovement
SetSpriteMovement: @ 2062944 :thumb
	str     r1, [r0, #Sprite_Movement]
	bx      lr
thumb_func_end SetSpriteMovement


thumb_func_start GetSpriteMovement
GetSpriteMovement: @ 2062948 :thumb
	ldr     r0, [r0, #Sprite_Movement]
	bx      lr
thumb_func_end GetSpriteMovement


thumb_func_start SetSpriteTrainer
SetSpriteTrainer: @ 206294c :thumb
	str     r1, [r0, #Sprite_Trainer]
	bx      lr
thumb_func_end SetSpriteTrainer


thumb_func_start GetSpriteTrainer
GetSpriteTrainer: @ 2062950 :thumb
	ldr     r0, [r0, #Sprite_Trainer]
	bx      lr
thumb_func_end GetSpriteTrainer


thumb_func_start SetSpriteFlag
SetSpriteFlag: @ 2062954 :thumb
	str     r1, [r0, #Sprite_Flag]
	bx      lr
thumb_func_end SetSpriteFlag


thumb_func_start GetSpriteFlag
GetSpriteFlag: @ 2062958 :thumb
	ldr     r0, [r0, #Sprite_Flag]
	bx      lr
thumb_func_end GetSpriteFlag


thumb_func_start SetSpriteScript
SetSpriteScript: @ 206295c :thumb
	str     r1, [r0, #Sprite_Script]
	bx      lr
thumb_func_end SetSpriteScript


thumb_func_start GetSpriteScript
GetSpriteScript: @ 2062960 :thumb
	ldr     r0, [r0, #Sprite_Script]
	bx      lr
thumb_func_end GetSpriteScript


thumb_func_start SetSpriteInitOrientation
SetSpriteInitOrientation: @ 2062964 :thumb
	str     r1, [r0, #Sprite_InitOrientation]
	bx      lr
thumb_func_end SetSpriteInitOrientation


thumb_func_start GetSpriteInitOrientation
GetSpriteInitOrientation: @ 2062968 :thumb
	ldr     r0, [r0, #Sprite_InitOrientation]
	bx      lr
thumb_func_end GetSpriteInitOrientation


thumb_func_start ChangeSpriteFaceDirection
ChangeSpriteFaceDirection: @ 206296c :thumb
	ldr     r2, [r0, #Sprite_Face]
	str     r2, [r0, #Sprite_OldFace]
	str     r1, [r0, #Sprite_Face]
	bx      lr
thumb_func_end ChangeSpriteFaceDirection


thumb_func_start ChangeSpriteFaceDirection_WithCheck
ChangeSpriteFaceDirection_WithCheck: @ 2062974 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r1, #0x80
	mov     r5, r0
	bl      MaskSpriteFlags
	cmp     r0, #0x0
	bne     branch_206298a
	ldr     r0, [r5, #Sprite_Face]
	str     r0, [r5, #Sprite_OldFace]
	str     r4, [r5, #Sprite_Face]
branch_206298a: @ 206298a :thumb

	pop     {r3-r5,pc}
thumb_func_end ChangeSpriteFaceDirection_WithCheck


thumb_func_start LoadSpriteFaceDirection
LoadSpriteFaceDirection: @ 206298c :thumb
	ldr     r0, [r0, #Sprite_Face]
	bx      lr
thumb_func_end LoadSpriteFaceDirection


thumb_func_start LoadSpriteOldFaceDirection
LoadSpriteOldFaceDirection: @ 2062990 :thumb
	ldr     r0, [r0, #Sprite_OldFace]
	bx      lr
thumb_func_end LoadSpriteOldFaceDirection


/* Input:
r0: PtrToSpriteStruct
r1: Orientation
*/
thumb_func_start ChangeSpriteFace2Direction
ChangeSpriteFace2Direction: @ 2062994 :thumb
	ldr     r2, [r0, #Sprite_Face2]
	str     r2, [r0, #Sprite_OldFace2]
	str     r1, [r0, #Sprite_Face2]
	bx      lr
thumb_func_end ChangeSpriteFace2Direction


thumb_func_start LoadSpriteFace2Direction
LoadSpriteFace2Direction: @ 206299c :thumb
	ldr     r0, [r0, #Sprite_Face2]
	bx      lr
thumb_func_end LoadSpriteFace2Direction


/* Input:
r0: PtrToSpriteStruct
r1: Orientation
*/
thumb_func_start ChangeBothSpriteFaceDirections
ChangeBothSpriteFaceDirections: @ 20629a0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      ChangeSpriteFaceDirection_WithCheck

	mov     r0, r5
	mov     r1, r4
	bl      ChangeSpriteFace2Direction
	pop     {r3-r5,pc}
thumb_func_end ChangeBothSpriteFaceDirections


.thumb
.globl Function_20629b4
Function_20629b4: @ 20629b4 :thumb
	push    {r3,lr}
	cmp     r2, #0x0
	beq     branch_20629c4

	cmp     r2, #0x1
	beq     branch_20629c8

	cmp     r2, #0x2
	beq     branch_20629cc
	b       branch_20629d0

branch_20629c4: @ 20629c4 :thumb
	str     r1, [r0, #Sprite_38]
	pop     {r3,pc}

branch_20629c8: @ 20629c8 :thumb
	str     r1, [r0, #Sprite_3c]
	pop     {r3,pc}

branch_20629cc: @ 20629cc :thumb
	str     r1, [r0, #Sprite_40]
	pop     {r3,pc}

branch_20629d0: @ 20629d0 :thumb
	bl      ErrorHandling
	pop     {r3,pc}
@ 0x20629d6


.align 2, 0
.thumb
.globl Function_20629d8
Function_20629d8: @ 20629d8 :thumb
	push    {r3,lr}
	cmp     r1, #0x0
	beq     branch_20629e8
	cmp     r1, #0x1
	beq     branch_20629ec
	cmp     r1, #0x2
	beq     branch_20629f0
	b       branch_20629f4

branch_20629e8: @ 20629e8 :thumb
	ldr     r0, [r0, #Sprite_38]
	pop     {r3,pc}

branch_20629ec: @ 20629ec :thumb
	ldr     r0, [r0, #Sprite_3c]
	pop     {r3,pc}

branch_20629f0: @ 20629f0 :thumb
	ldr     r0, [r0, #Sprite_40]
	pop     {r3,pc}

branch_20629f4: @ 20629f4 :thumb
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x20629fc


thumb_func_start SetSpriteMovementWidth
SetSpriteMovementWidth: @ 20629fc :thumb
	str     r1, [r0, #Sprite_MovementWidth]
	bx      lr
thumb_func_end SetSpriteMovementWidth


thumb_func_start GetSpriteMovementWidth
GetSpriteMovementWidth: @ 2062a00 :thumb
	ldr     r0, [r0, #Sprite_MovementWidth]
	bx      lr
thumb_func_end GetSpriteMovementWidth


thumb_func_start SetSpriteMovementLength
SetSpriteMovementLength: @ 2062a04 :thumb
	str     r1, [r0, #Sprite_MovementLength]
	bx      lr
thumb_func_end SetSpriteMovementLength


thumb_func_start GetSpriteMovementLength
GetSpriteMovementLength: @ 2062a08 :thumb
	ldr     r0, [r0, #Sprite_MovementLength]
	bx      lr
thumb_func_end GetSpriteMovementLength


thumb_func_start SetSpritea0
SetSpritea0: @ 2062a0c :thumb
	add     r0, #Sprite_a0
	str     r1, [r0, #0x0]
	bx      lr
thumb_func_end SetSpritea0


thumb_func_start GetSpritea0
GetSpritea0: @ 2062a14 :thumb
	add     r0, #Sprite_a0
	ldr     r0, [r0, #0x0]
	bx      lr
thumb_func_end GetSpritea0


.align 2, 0
.thumb
Function_2062a1c: @ 2062a1c :thumb
	add     r0, #Sprite_b0
	str     r1, [r0]
	bx      lr
@ 0x2062a22


.align 2, 0
.thumb
Function_2062a24: @ 2062a24 :thumb
	add     r0, #Sprite_b0
	ldr     r0, [r0]
	bx      lr
@ 0x2062a2a


.align 2, 0
.thumb
Function_2062a2c: @ 2062a2c :thumb
	push    {r3,lr}
	bl      Function_2062a24
	bl      Call_RemoveTaskFromTaskList
	pop     {r3,pc}
@ 0x2062a38


thumb_func_start SetSpriteSpriteList
SetSpriteSpriteList: @ 2062a38 :thumb
	add     r0, #Sprite_SpriteList
	str     r1, [r0]
	bx      lr
thumb_func_end SetSpriteSpriteList


thumb_func_start GetSpriteSpriteList
GetSpriteSpriteList: @ 2062a40 :thumb
	add     r0, #Sprite_SpriteList
	ldr     r0, [r0]
	bx      lr
thumb_func_end GetSpriteSpriteList


thumb_func_start GetSpriteSpriteList2
GetSpriteSpriteList2: @ 2062a48 :thumb
	ldr     r3, =Function_206281c_Dummy+1
	add     r0, #Sprite_SpriteList
	ldr     r0, [r0]
	bx      r3
@ 0x2062a50

.align 2
.pool
thumb_func_end GetSpriteSpriteList2



.thumb
Function_2062a54: @ 2062a54 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r0
	cmp     r5, #0x10
	ble     branch_2062a62
	bl      ErrorHandling
branch_2062a62: @ 2062a62 :thumb

	mov     r0, r4
	bl      Function_2062a78
	mov     r1, #0x0
	mov     r2, r5
	mov     r4, r0
	blx     Call_FillMemWithValue
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2062a76


.align 2, 0
.thumb
Function_2062a78: @ 2062a78 :thumb
	add     r0, #Sprite_d8
	bx      lr
@ 0x2062a7c


.thumb
Function_2062a7c: @ 2062a7c :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r0
	cmp     r5, #0x10
	ble     branch_2062a8a
	bl      ErrorHandling
branch_2062a8a: @ 2062a8a :thumb

	mov     r0, r4
	bl      GetSpriteAdre8
	mov     r1, #0x0
	mov     r2, r5
	mov     r4, r0
	blx     Call_FillMemWithValue
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2062a9e


.align 2, 0
.thumb
GetSpriteAdre8: @ 2062aa0 :thumb
	add     r0, #Sprite_e8
	bx      lr
@ 0x2062aa4


thumb_func_start GetSpriteAdrf8AndClearMem
GetSpriteAdrf8AndClearMem: @ 2062aa4 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r0
	cmp     r5, #0x10
	ble     branch_2062ab2
	bl      ErrorHandling
branch_2062ab2: @ 2062ab2 :thumb

	mov     r0, r4
	bl      GetSpriteAdrf8
	mov     r1, #0x0
	mov     r2, r5
	mov     r4, r0
	blx     Call_FillMemWithValue
	mov     r0, r4
	pop     {r3-r5,pc}
thumb_func_end GetSpriteAdrf8AndClearMem


.align 2, 0
.thumb
GetSpriteAdrf8: @ 2062ac8 :thumb
	add     r0, #Sprite_f8
	bx      lr
@ 0x2062acc


.thumb
.globl Function_2062acc
Function_2062acc: @ 2062acc :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r0
	cmp     r5, #0x20
	ble     branch_2062ada
	bl      ErrorHandling
branch_2062ada: @ 2062ada :thumb

	mov     r0, r4
	bl      Function_2062af0
	mov     r1, #0x0
	mov     r2, r5
	mov     r4, r0
	blx     Call_FillMemWithValue
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2062aee


.align 2, 0
.thumb
.globl Function_2062af0
Function_2062af0: @ 2062af0 :thumb
	mov     r1, #0x42
	lsl     r1, r1, #2 @ 0x108 Sprite_108
	add     r0, r0, r1
	bx      lr
@ 0x2062af8


thumb_func_start SetSprite_b8Callback
SetSprite_b8Callback: @ 2062af8 :thumb
	add     r0, #Sprite_b8
	str     r1, [r0]
	bx      lr
thumb_func_end SetSprite_b8Callback


thumb_func_start CallSprite_b8Callback
CallSprite_b8Callback: @ 2062b00 :thumb
	push    {r3,lr}
	mov     r1, r0
	add     r1, #Sprite_b8
	ldr     r1, [r1]
	blx     r1
	pop     {r3,pc}
thumb_func_end CallSprite_b8Callback


thumb_func_start SetSprite_bcCallback
SetSprite_bcCallback: @ 2062b0c :thumb
	add     r0, #Sprite_bc
	str     r1, [r0]
	bx      lr
thumb_func_end SetSprite_bcCallback


thumb_func_start CallSprite_bcCallback
CallSprite_bcCallback: @ 2062b14 :thumb
	push    {r3,lr}
	mov     r1, r0
	add     r1, #Sprite_bc
	ldr     r1, [r1]
	blx     r1
	pop     {r3,pc}
thumb_func_end CallSprite_bcCallback


thumb_func_start SetSprite_c0Callback
SetSprite_c0Callback: @ 2062b20 :thumb
	add     r0, #Sprite_c0
	str     r1, [r0]
	bx      lr
thumb_func_end SetSprite_c0Callback


thumb_func_start CallSprite_c0Callback
CallSprite_c0Callback: @ 2062b28 :thumb
	push    {r3,lr}
	mov     r1, r0
	add     r1, #Sprite_c0
	ldr     r1, [r1]
	blx     r1
	pop     {r3,pc}
thumb_func_end CallSprite_c0Callback


.thumb
Function_2062b34: @ 2062b34 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      GetSpriteMovement
	bl      Function_206320c
	mov     r1, r0
	ldr     r1, [r1, #0x10]
	mov     r0, r4
	blx     r1
	pop     {r4,pc}
@ 0x2062b4a


.align 2, 0
.thumb
Function_2062b4c: @ 2062b4c :thumb
	add     r0, #Sprite_c4
	str     r1, [r0, #0x0]
	bx      lr
@ 0x2062b52


.align 2, 0
.thumb
Function_2062b54: @ 2062b54 :thumb
	push    {r3,lr}
	mov     r1, r0
	add     r1, #Sprite_c4
	ldr     r1, [r1, #0x0]
	blx     r1
	pop     {r3,pc}
@ 0x2062b60


.thumb
Function_2062b60: @ 2062b60 :thumb
	add     r0, #Sprite_c8
	str     r1, [r0, #0x0]
	bx      lr
@ 0x2062b66


.align 2, 0
.thumb
.globl Function_2062b68
Function_2062b68: @ 2062b68 :thumb
	push    {r3,lr}
	mov     r1, r0
	add     r1, #Sprite_c8
	ldr     r1, [r1, #0x0]
	blx     r1
	pop     {r3,pc}
@ 0x2062b74


.thumb
Function_2062b74: @ 2062b74 :thumb
	add     r0, #Sprite_cc
	str     r1, [r0, #0x0]
	bx      lr
@ 0x2062b7a


.align 2, 0
.thumb
Function_2062b7c: @ 2062b7c :thumb
	push    {r3,lr}
	mov     r1, r0
	add     r1, #Sprite_cc
	ldr     r1, [r1, #0x0]
	blx     r1
	pop     {r3,pc}
@ 0x2062b88


.thumb
Function_2062b88: @ 2062b88 :thumb
	add     r0, #Sprite_d0
	str     r1, [r0, #0x0]
	bx      lr
@ 0x2062b8e


.align 2, 0
.thumb
Function_2062b90: @ 2062b90 :thumb
	push    {r3,lr}
	mov     r1, r0
	add     r1, #Sprite_d0
	ldr     r1, [r1, #0x0]
	blx     r1
	pop     {r3,pc}
@ 0x2062b9c


.thumb
Function_2062b9c: @ 2062b9c :thumb
	add     r0, #Sprite_d4
	str     r1, [r0, #0x0]
	bx      lr
@ 0x2062ba2


.align 2, 0
.thumb
.globl Function_2062ba4
Function_2062ba4: @ 2062ba4 :thumb
	push    {r3,lr}
	mov     r1, r0
	add     r1, #Sprite_d4
	ldr     r1, [r1, #0x0]
	blx     r1
	pop     {r3,pc}
@ 0x2062bb0


.thumb
SetSpriteMovementNr: @ 2062bb0 :thumb
	add     r0, #Sprite_MovementNr
	str     r1, [r0, #0x0]
	bx      lr
@ 0x2062bb6


.align 2, 0
.thumb
GetSpriteMovementNr: @ 2062bb8 :thumb
	add     r0, #Sprite_MovementNr
	ldr     r0, [r0, #0x0]
	bx      lr
@ 0x2062bbe


thumb_func_start SetSpriteMovementState
SetSpriteMovementState: @ 2062bc0 :thumb
	add     r0, #Sprite_MovementState
	str     r1, [r0, #0x0]
	bx      lr
thumb_func_end SetSpriteMovementState


thumb_func_start IncreaseSpriteMovementState
IncreaseSpriteMovementState: @ 2062bc8 :thumb
	mov     r1, r0
	add     r1, #Sprite_MovementState
	ldr     r1, [r1]
	add     r0, #Sprite_MovementState
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0]
	bx      lr
thumb_func_end IncreaseSpriteMovementState


thumb_func_start GetSpriteMovementState
GetSpriteMovementState: @ 2062bd8 :thumb
	add     r0, #Sprite_MovementState
	ldr     r0, [r0, #0x0]
	bx      lr
thumb_func_end GetSpriteMovementState


.align 2, 0
.thumb
Function_2062be0: @ 2062be0 :thumb
	add     r0, #Sprite_ac
	strh    r1, [r0, #0x0]
	bx      lr
@ 0x2062be6


.align 2, 0
.thumb
.globl Function_2062be8
Function_2062be8: @ 2062be8 :thumb
	add     r0, #Sprite_ac
	ldrh    r0, [r0, #0x0]
	bx      lr
@ 0x2062bee


.align 2, 0
.thumb
Function_2062bf0: @ 2062bf0 :thumb
	add     r0, #Sprite_ae
	strh    r1, [r0, #0x0]
	bx      lr
@ 0x2062bf6


.align 2, 0
.thumb
Function_2062bf8: @ 2062bf8 :thumb
	add     r0, #Sprite_ae
	ldrh    r0, [r0, #0x0]
	bx      lr
@ 0x2062bfe


thumb_func_start GetSpriteSpriteListFirstSprite
GetSpriteSpriteListFirstSprite: @ 2062c00 :thumb
	push    {r3,lr}
	bl      GetSpriteSpriteList2
	bl      GetSpriteListFirstSprite
	pop     {r3,pc}
thumb_func_end GetSpriteSpriteListFirstSprite


thumb_func_start GetSpriteSpriteListc
GetSpriteSpriteListc: @ 2062c0c :thumb
	push    {r3,lr}
	bl      GetSpriteSpriteList
	bl      GetSpriteListc
	pop     {r3,pc}
thumb_func_end GetSpriteSpriteListc


.thumb
.globl Function_2062c18
Function_2062c18: @ 2062c18 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2062e94
	cmp     r0, #0x1
	beq     branch_2062c28
	bl      ErrorHandling
branch_2062c28: @ 2062c28 :thumb

	mov     r0, r4
	bl      GetSpriteFlag
	pop     {r4,pc}
@ 0x2062c30


/* Input:
r0: PtrToSpriteList
*/
.thumb
.globl Function_2062c30
Function_2062c30: @ 2062c30 :thumb
	ldr     r3, [pc, #0x4] @ 0x2062c38, (=SetBitsInSpriteList0+1)
	mov     r1, #0x6
	bx      r3
@ 0x2062c36

.align 2
.word SetBitsInSpriteList0+1 @ 0x2062c38



.thumb
.globl Function_2062c3c
Function_2062c3c: @ 2062c3c :thumb
	ldr     r3, [pc, #0x4] @ 0x2062c44, (=0x2062841)
	mov     r1, #0x6
	bx      r3
@ 0x2062c42

.align 2
.word UnsetBitsInSpriteList0+1 @ =0x2062841, 0x2062c44



.thumb
.globl Function_2062c48
Function_2062c48: @ 2062c48 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      GetNrOfSpritesInList
	mov     r4, r0

	mov     r0, r5
	bl      GetSpriteList_124_3
	mov     r6, #0x4a
	mov     r5, r0
	lsl     r6, r6, #2 @ 0x128
branch_2062c5e: @ 2062c5e :thumb
	mov     r0, r5
	bl      CheckSpriteFlag_Locked
	cmp     r0, #0x0
	beq     branch_2062c6e
	mov     r0, r5
	bl      SetSpriteFlag_Lock
branch_2062c6e: @ 2062c6e :thumb

	add     r5, r5, r6
	.hword  0x1e64 @ sub r4, r4, #0x1
	bne     branch_2062c5e

	pop     {r4-r6,pc}
@ 0x2062c76


thumb_func_start Sprite_ReleaseAll
Sprite_ReleaseAll: @ 2062c78 :thumb
	push    {r4-r6,lr}
	mov     r5, r0

	bl      GetNrOfSpritesInList
	mov     r4, r0

	mov     r0, r5
	bl      GetSpriteList_124_3
	mov     r6, #0x4a
	mov     r5, r0
	lsl     r6, r6, #2 @ 0x128
branch_2062c8e: @ 2062c8e :thumb
	mov     r0, r5
	bl      CheckSpriteFlag_Locked
	cmp     r0, #0x0
	beq     branch_2062c9e
	mov     r0, r5
	bl      UnsetSpriteFlag_Lock
branch_2062c9e: @ 2062c9e :thumb

	add     r5, r5, r6
	.hword  0x1e64 @ sub r4, r4, #0x1
	bne     branch_2062c8e

	pop     {r4-r6,pc}
thumb_func_end Sprite_ReleaseAll


.align 2, 0
.thumb
.globl Function_2062ca8
Function_2062ca8: @ 2062ca8 :thumb
	push    {r3,lr}
	mov     r1, #0x1
	bl      MaskBitsInSpriteList0
	cmp     r0, #0x0
	beq     branch_2062cb8
	mov     r0, #0x1
	pop     {r3,pc}

branch_2062cb8: @ 2062cb8 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2062cbc


.thumb
.globl Function_2062cbc
Function_2062cbc: @ 2062cbc :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      GetSpriteSpriteList
	mov     r1, r4
	bl      MaskBitsInSpriteList0
	pop     {r4,pc}
@ 0x2062ccc


.thumb
.globl Function_2062ccc
Function_2062ccc: @ 2062ccc :thumb
	push    {r3,lr}
	cmp     r1, #0x0
	bne     branch_2062cda
	mov     r1, #0x8
	bl      SetBitsInSpriteList0
	pop     {r3,pc}

branch_2062cda: @ 2062cda :thumb
	mov     r1, #0x8
	bl      UnsetBitsInSpriteList0
	pop     {r3,pc}
@ 0x2062ce2


.align 2, 0
.thumb
Function_2062ce4: @ 2062ce4 :thumb
	push    {r3,lr}
	mov     r1, #0x8
	bl      MaskBitsInSpriteList0
	cmp     r0, #0x0
	bne     branch_2062cf4
	mov     r0, #0x1
	pop     {r3,pc}

branch_2062cf4: @ 2062cf4 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2062cf8


thumb_func_start CheckSpriteFlag_Locked
CheckSpriteFlag_Locked: @ 2062cf8 :thumb
	ldr     r3, =CheckSpriteFlags+1
	mov     r1, #Sprite_Flags_Locked
	bx      r3
@ 0x2062cfe

.align 2
.pool
thumb_func_end CheckSpriteFlag_Locked


thumb_func_start SetSpriteFlag_2
SetSpriteFlag_2: @ 2062d04 :thumb
	ldr     r3, =SetSpriteFlags+1
	mov     r1, #Sprite_Flags_2
	bx      r3
@ 0x2062d0a

.align 2
.pool
thumb_func_end SetSpriteFlag_2


thumb_func_start UnsetSpriteFlag_2
UnsetSpriteFlag_2: @ 2062d10 :thumb
	ldr     r3, =UnsetSpriteFlags+1
	mov     r1, #Sprite_Flags_2
	bx      r3
@ 0x2062d16

.align 2
.pool
thumb_func_end UnsetSpriteFlag_2


thumb_func_start CheckSpriteFlag_2
CheckSpriteFlag_2: @ 2062d1c :thumb
	ldr     r3, =CheckSpriteFlags+1
	mov     r1, #Sprite_Flags_2
	bx      r3
@ 0x2062d22

.align 2
.pool
thumb_func_end CheckSpriteFlag_2


thumb_func_start SetSpriteFlag_4
SetSpriteFlag_4: @ 2062d28 :thumb
	ldr     r3, =SetSpriteFlags+1
	mov     r1, #Sprite_Flags_4
	bx      r3
@ 0x2062d2e

.align 2
.pool
thumb_func_end SetSpriteFlag_4


thumb_func_start UnsetSpriteFlag_8
UnsetSpriteFlag_8: @ 2062d34 :thumb
	ldr     r3, =UnsetSpriteFlags+1
	mov     r1, #Sprite_Flags_8
	bx      r3
@ 0x2062d3a

.align 2
.pool
thumb_func_end UnsetSpriteFlag_8


thumb_func_start SetSpriteFlag_4000
SetSpriteFlag_4000: @ 2062d40 :thumb
	ldr     r3, =SetSpriteFlags+1
	mov     r1, #0x1
	lsl     r1, r1, #14
	bx      r3
@ 0x2062d48

.align 2
.pool
thumb_func_end SetSpriteFlag_4000


thumb_func_start CheckSpriteFlag_4000
CheckSpriteFlag_4000: @ 2062d4c :thumb
	ldr     r3, =CheckSpriteFlags+1
	mov     r1, #0x1
	lsl     r1, r1, #14
	bx      r3
@ 0x2062d54

.align 2
.pool
thumb_func_end CheckSpriteFlag_4000


thumb_func_start CheckSpriteFlag_200
CheckSpriteFlag_200: @ 2062d58 :thumb
	ldr     r3, =CheckSpriteFlags+1
	mov     r1, #0x2
	lsl     r1, r1, #8
	bx      r3
@ 0x2062d60

.align 2
.pool
thumb_func_end CheckSpriteFlag_200



.thumb
.globl Function_2062d64
Function_2062d64: @ 2062d64 :thumb
	push    {r3,lr}
	cmp     r1, #0x1
	bne     branch_2062d74
	mov     r1, #0x2
	lsl     r1, r1, #8
	bl      SetSpriteFlags
	pop     {r3,pc}

branch_2062d74: @ 2062d74 :thumb
	mov     r1, #0x2
	lsl     r1, r1, #8
	bl      UnsetSpriteFlags
	pop     {r3,pc}
@ 0x2062d7e


.align 2, 0
.thumb
.globl Function_2062d80
Function_2062d80: @ 2062d80 :thumb
	push    {r3,lr}
	cmp     r1, #0x1
	bne     branch_2062d90
	mov     r1, #0x1
	lsl     r1, r1, #18
	bl      UnsetSpriteFlags
	pop     {r3,pc}

branch_2062d90: @ 2062d90 :thumb
	mov     r1, #0x1
	lsl     r1, r1, #18
	bl      SetSpriteFlags
	pop     {r3,pc}
@ 0x2062d9a


.align 2, 0
.thumb
Function_2062d9c: @ 2062d9c :thumb
	push    {r3,lr}
	mov     r1, #0x2
	lsl     r1, r1, #18
	bl      CheckSpriteFlags
	cmp     r0, #0x1
	beq     branch_2062dae
	mov     r0, #0x1
	pop     {r3,pc}

branch_2062dae: @ 2062dae :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2062db2


.align 2, 0
.thumb
Function_2062db4: @ 2062db4 :thumb
	push    {r3,lr}
	cmp     r1, #0x1
	bne     branch_2062dc4
	mov     r1, #0x2
	lsl     r1, r1, #18
	bl      SetSpriteFlags
	pop     {r3,pc}

branch_2062dc4: @ 2062dc4 :thumb
	mov     r1, #0x2
	lsl     r1, r1, #18
	bl      UnsetSpriteFlags
	pop     {r3,pc}
@ 0x2062dce


thumb_func_start SetSpriteFlag_Lock
SetSpriteFlag_Lock: @ 2062dd0 :thumb
	ldr     r3, =SetSpriteFlags+1
	mov     r1, #Sprite_Flags_40
	bx      r3
@ 0x2062dd6

.align 2
.pool
thumb_func_end SetSpriteFlag_Lock


thumb_func_start UnsetSpriteFlag_Lock
UnsetSpriteFlag_Lock: @ 2062ddc :thumb
	ldr     r3, =UnsetSpriteFlags+1
	mov     r1, #Sprite_Flags_40
	bx      r3
@ 0x2062de2

.align 2
.pool
thumb_func_end UnsetSpriteFlag_Lock


thumb_func_start CheckSpriteFlag_Lock
CheckSpriteFlag_Lock: @ 2062de8 :thumb
	push    {r3,lr}
	mov     r1, #Sprite_Flags_40
	bl      CheckSpriteFlags
	cmp     r0, #0x1
	bne     branch_2062df8
	mov     r0, #0x1
	pop     {r3,pc}

branch_2062df8: @ 2062df8 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
thumb_func_end CheckSpriteFlag_Lock


.thumb
.globl Function_2062dfc
Function_2062dfc: @ 2062dfc :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      GetSpriteSpriteList
	bl      Function_2062ca8
	cmp     r0, #0x0
	bne     branch_2062e10
	mov     r0, #0x0
	pop     {r4,pc}

branch_2062e10: @ 2062e10 :thumb
	mov     r1, #0x1
	mov     r0, r4
	lsl     r1, r1, #14 @ Sprite_Flags_4000
	bl      MaskSpriteFlags
	cmp     r0, #0x0
	beq     branch_2062e22
	mov     r0, #0x1
	pop     {r4,pc}

branch_2062e22: @ 2062e22 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2062e26


thumb_func_start SetUnsetSpriteFlags800000
SetUnsetSpriteFlags800000: @ 2062e28 :thumb
	push    {r3,lr}
	cmp     r1, #0x1
	bne     branch_2062e38
	mov     r1, #0x2
	lsl     r1, r1, #22 @ Sprite_Flags_800000
	bl      SetSpriteFlags
	pop     {r3,pc}

branch_2062e38: @ 2062e38 :thumb
	mov     r1, #0x2
	lsl     r1, r1, #22 @ Sprite_Flags_800000
	bl      UnsetSpriteFlags
	pop     {r3,pc}
thumb_func_end SetUnsetSpriteFlags800000


thumb_func_start IsSetSpriteFlags800000
IsSetSpriteFlags800000: @ 2062e44 :thumb
	push    {r3,lr}
	mov     r1, #0x2
	lsl     r1, r1, #22 @ Sprite_Flags_800000
	bl      MaskSpriteFlags
	cmp     r0, #0x0
	beq     branch_2062e56
	mov     r0, #0x1
	pop     {r3,pc}

branch_2062e56: @ 2062e56 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
thumb_func_end IsSetSpriteFlags800000


thumb_func_start UnSetSpriteFlag_Follow
UnSetSpriteFlag_Follow: @ 2062e5c :thumb
	push    {r3,lr}
	cmp     r1, #0x1
	bne     branch_2062e6c
	mov     r1, #0x1
	lsl     r1, r1, #10
	bl      SetSpriteFlags
	pop     {r3,pc}

branch_2062e6c: @ 2062e6c :thumb
	mov     r1, #0x1
	lsl     r1, r1, #10
	bl      UnsetSpriteFlags
	pop     {r3,pc}
thumb_func_end UnSetSpriteFlag_Follow


.align 2, 0
.thumb
Function_2062e78: @ 2062e78 :thumb
	push    {r3,lr}
	cmp     r1, #0x1
	bne     branch_2062e88
	mov     r1, #0x2
	lsl     r1, r1, #24
	bl      SetSpriteFlags
	pop     {r3,pc}

branch_2062e88: @ 2062e88 :thumb
	mov     r1, #0x2
	lsl     r1, r1, #24
	bl      UnsetSpriteFlags
	pop     {r3,pc}
@ 0x2062e92


.align 2, 0
.thumb
.globl Function_2062e94
Function_2062e94: @ 2062e94 :thumb
	push    {r3,lr}
	mov     r1, #0x2
	lsl     r1, r1, #24
	bl      MaskSpriteFlags
	cmp     r0, #0x0
	beq     branch_2062ea6
	mov     r0, #0x1
	pop     {r3,pc}

branch_2062ea6: @ 2062ea6 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2062eaa


.align 2, 0
.thumb
Function_2062eac: @ 2062eac :thumb
	push    {r3,lr}
	cmp     r1, #0x1
	bne     branch_2062ebc
	mov     r1, #0x1
	lsl     r1, r1, #26
	bl      SetSpriteFlags
	pop     {r3,pc}

branch_2062ebc: @ 2062ebc :thumb
	mov     r1, #0x1
	lsl     r1, r1, #26
	bl      UnsetSpriteFlags
	pop     {r3,pc}
@ 0x2062ec6


.align 2, 0
.thumb
.globl Function_2062ec8
Function_2062ec8: @ 2062ec8 :thumb
	push    {r3,lr}
	mov     r1, #0x1
	lsl     r1, r1, #26
	bl      MaskSpriteFlags
	cmp     r0, #0x0
	beq     branch_2062eda
	mov     r0, #0x1
	pop     {r3,pc}

branch_2062eda: @ 2062eda :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2062ede


.align 2, 0
.thumb
.globl Function_2062ee0
Function_2062ee0: @ 2062ee0 :thumb
	push    {r3,lr}
	cmp     r1, #0x1
	bne     branch_2062ef0
	mov     r1, #0x2
	lsl     r1, r1, #26
	bl      SetSpriteFlags
	pop     {r3,pc}

branch_2062ef0: @ 2062ef0 :thumb
	mov     r1, #0x2
	lsl     r1, r1, #26
	bl      UnsetSpriteFlags
	pop     {r3,pc}
@ 0x2062efa


.align 2, 0
.thumb
Function_2062efc: @ 2062efc :thumb
	push    {r3,lr}
	mov     r1, #0x2
	lsl     r1, r1, #26
	bl      MaskSpriteFlags
	cmp     r0, #0x0
	beq     branch_2062f0e
	mov     r0, #0x1
	pop     {r3,pc}

branch_2062f0e: @ 2062f0e :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2062f12


.align 2, 0
.thumb
Function_2062f14: @ 2062f14 :thumb
	push    {r3,lr}
	cmp     r1, #0x1
	bne     branch_2062f24
	mov     r1, #0x1
	lsl     r1, r1, #28
	bl      SetSpriteFlags
	pop     {r3,pc}

branch_2062f24: @ 2062f24 :thumb
	mov     r1, #0x1
	lsl     r1, r1, #28
	bl      UnsetSpriteFlags
	pop     {r3,pc}
@ 0x2062f2e


.align 2, 0
.thumb
.globl Function_2062f30
Function_2062f30: @ 2062f30 :thumb
	push    {r3,lr}
	mov     r1, #0x1
	lsl     r1, r1, #28
	bl      MaskSpriteFlags
	cmp     r0, #0x0
	beq     branch_2062f42
	mov     r0, #0x1
	pop     {r3,pc}

branch_2062f42: @ 2062f42 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2062f46


thumb_func_start SetUnsetSpriteFlags1000000
SetUnsetSpriteFlags1000000: @ 2062f48 :thumb
	push    {r3,lr}
	cmp     r1, #0x1
	bne     branch_2062f58
	mov     r1, #0x1
	lsl     r1, r1, #24 @ Sprite_Flags_1000000
	bl      SetSpriteFlags
	pop     {r3,pc}

branch_2062f58: @ 2062f58 :thumb
	mov     r1, #0x1
	lsl     r1, r1, #24 @ Sprite_Flags_1000000
	bl      UnsetSpriteFlags
	pop     {r3,pc}
thumb_func_end SetUnsetSpriteFlags1000000


thumb_func_start IsSetSpriteFlags1000000
IsSetSpriteFlags1000000: @ 2062f64 :thumb
	push    {r3,lr}
	mov     r1, #0x1
	lsl     r1, r1, #24 @ Sprite_Flags_1000000
	bl      MaskSpriteFlags
	cmp     r0, #0x0
	beq     branch_2062f76
	mov     r0, #0x1
	pop     {r3,pc}

branch_2062f76: @ 2062f76 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
thumb_func_end IsSetSpriteFlags1000000


thumb_func_start IsSetSpriteFlags10
IsSetSpriteFlags10: @ 2062f7c :thumb
	push    {r3,lr}
	mov     r1, #Sprite_Flags_10
	bl      MaskSpriteFlags
	cmp     r0, #0x0
	beq     branch_2062f8c
	mov     r0, #0x1
	pop     {r3,pc}

branch_2062f8c: @ 2062f8c :thumb
	mov     r0, #0x0
	pop     {r3,pc}
thumb_func_end IsSetSpriteFlags10


thumb_func_start SetUnsetSpriteFlags20000000
SetUnsetSpriteFlags20000000: @ 2062f90 :thumb
	push    {r3,lr}
	cmp     r1, #0x1
	bne     branch_2062fa0
	mov     r1, #0x2
	lsl     r1, r1, #28 @ Sprite_Flags_20000000
	bl      SetSpriteFlags
	pop     {r3,pc}

branch_2062fa0: @ 2062fa0 :thumb
	mov     r1, #0x2
	lsl     r1, r1, #28 @ Sprite_Flags_20000000
	bl      UnsetSpriteFlags
	pop     {r3,pc}
thumb_func_end SetUnsetSpriteFlags20000000


thumb_func_start IsSetSpriteFlags20000000
IsSetSpriteFlags20000000: @ 2062fac :thumb
	push    {r3,lr}
	mov     r1, #0x2
	lsl     r1, r1, #28 @ Sprite_Flags_20000000
	bl      MaskSpriteFlags
	cmp     r0, #0x0
	beq     branch_2062fbe
	mov     r0, #0x1
	pop     {r3,pc}

branch_2062fbe: @ 2062fbe :thumb
	mov     r0, #0x0
	pop     {r3,pc}
thumb_func_end IsSetSpriteFlags20000000


.align 2, 0
.thumb
.globl Function_2062fc4
Function_2062fc4: @ 2062fc4 :thumb
	push    {r3,lr}
	cmp     r1, #0x1
	bne     branch_2062fd2
	mov     r1, #Sprite_4_4
	bl      SetBitsSprite_4
	pop     {r3,pc}

branch_2062fd2: @ 2062fd2 :thumb
	mov     r1, #Sprite_4_4
	bl      UnsetBitsSprite_4
	pop     {r3,pc}
@ 0x2062fda


.align 2, 0
.thumb
Function_2062fdc: @ 2062fdc :thumb
	push    {r3,lr}
	mov     r1, #Sprite_4_4
	bl      MaskBitsSprite_4
	cmp     r0, #0x0
	beq     branch_2062fec
	mov     r0, #0x1
	pop     {r3,pc}

branch_2062fec: @ 2062fec :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2062ff0


.thumb
Function_2062ff0: @ 2062ff0 :thumb
	ldr     r0, [r0, #Sprite_4c]
	bx      lr
@ 0x2062ff4


.thumb
.globl Function_2062ff4
Function_2062ff4: @ 2062ff4 :thumb
	str     r1, [r0, #Sprite_4c]
	bx      lr
@ 0x2062ff8


.thumb
Function_2062ff8: @ 2062ff8 :thumb
	ldr     r0, [r0, #Sprite_50]
	bx      lr
@ 0x2062ffc


.thumb
Function_2062ffc: @ 2062ffc :thumb
	str     r1, [r0, #Sprite_50]
	bx      lr
@ 0x2063000


.thumb
Function_2063000: @ 2063000 :thumb
	ldr     r0, [r0, #Sprite_54]
	bx      lr
@ 0x2063004


.thumb
.globl Function_2063004
Function_2063004: @ 2063004 :thumb
	str     r1, [r0, #Sprite_54]
	bx      lr
@ 0x2063008


thumb_func_start GetSpriteX2
GetSpriteX2: @ 2063008 :thumb
	ldr     r0, [r0, #Sprite_X2]
	bx      lr
thumb_func_end GetSpriteX2


thumb_func_start SetSpriteX2
SetSpriteX2: @ 206300c :thumb
	str     r1, [r0, #Sprite_X2]
	bx      lr
thumb_func_end SetSpriteX2


thumb_func_start GetSpriteZ2
GetSpriteZ2: @ 2063010 :thumb
	ldr     r0, [r0, #Sprite_Z2]
	bx      lr
thumb_func_end GetSpriteZ2


thumb_func_start SetSpriteZ2
SetSpriteZ2: @ 2063014 :thumb
	str     r1, [r0, #Sprite_Z2]
	bx      lr
thumb_func_end SetSpriteZ2


thumb_func_start GetSpriteY2
GetSpriteY2: @ 2063018 :thumb
	ldr     r0, [r0, #Sprite_Y2]
	bx      lr
thumb_func_end GetSpriteY2


thumb_func_start SetSpriteY2
SetSpriteY2: @ 206301c :thumb
	str     r1, [r0, #Sprite_Y2]
	bx      lr
thumb_func_end SetSpriteY2


thumb_func_start LoadSpritePositionX
LoadSpritePositionX: @ 2063020 :thumb
	ldr     r0, [r0, #Sprite_X]
	bx      lr
thumb_func_end LoadSpritePositionX


thumb_func_start SaveSpritePositionX
SaveSpritePositionX: @ 2063024 :thumb
	str     r1, [r0, #Sprite_X]
	bx      lr
thumb_func_end SaveSpritePositionX


thumb_func_start AddSpritePositionX
AddSpritePositionX: @ 2063028 :thumb
	ldr     r2, [r0, #Sprite_X]
	add     r1, r2, r1
	str     r1, [r0, #Sprite_X]
	bx      lr
thumb_func_end AddSpritePositionX


thumb_func_start LoadSpritePositionZ
LoadSpritePositionZ: @ 2063030 :thumb
	ldr     r0, [r0, #Sprite_Z]
	bx      lr
thumb_func_end LoadSpritePositionZ


thumb_func_start SaveSpritePositionZ
SaveSpritePositionZ: @ 2063034 :thumb
	str     r1, [r0, #Sprite_Z]
	bx      lr
thumb_func_end SaveSpritePositionZ


thumb_func_start AddSpritePositionZ
AddSpritePositionZ: @ 2063038 :thumb
	ldr     r2, [r0, #Sprite_Z]
	add     r1, r2, r1
	str     r1, [r0, #Sprite_Z]
	bx      lr
thumb_func_end AddSpritePositionZ


thumb_func_start LoadSpritePositionY
LoadSpritePositionY: @ 2063040 :thumb
	ldr     r0, [r0, #Sprite_Y]
	bx      lr
thumb_func_end LoadSpritePositionY


thumb_func_start SaveSpritePositionY
SaveSpritePositionY: @ 2063044 :thumb
	str     r1, [r0, #Sprite_Y]
	bx      lr
thumb_func_end SaveSpritePositionY


thumb_func_start AddSpritePositionY
AddSpritePositionY: @ 2063048 :thumb
	ldr     r2, [r0, #Sprite_Y]
	add     r1, r2, r1
	str     r1, [r0, #Sprite_Y]
	bx      lr
thumb_func_end AddSpritePositionY


/* Input:
r0: PtrToSpriteStruct
r1: Destination
*/
thumb_func_start CopySprite70Struct
CopySprite70Struct: @ 2063050 :thumb
	mov     r2, r0
	add     r2, #Sprite_70
	mov     r3, r1
	ldmia   r2!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r2, #0x0]
	str     r0, [r3, #0x0]
	bx      lr
thumb_func_end CopySprite70Struct


/* Input:
r0: PtrToSpriteStruct
r1: Destination
*/
thumb_func_start CopyToSprite70Struct
CopyToSprite70Struct: @ 2063060 :thumb
	mov     r3, r1
	mov     r2, r0
	ldmia   r3!, {r0,r1}
	add     r2, #Sprite_70
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	bx      lr
thumb_func_end CopyToSprite70Struct


thumb_func_start GetSpriteAdr70
GetSpriteAdr70: @ 2063070 :thumb
	add     r0, #Sprite_70
	bx      lr
thumb_func_end GetSpriteAdr70


thumb_func_start GetSprite74
GetSprite74: @ 2063074 :thumb
	ldr     r0, [r0, #Sprite_74]
	bx      lr
thumb_func_end GetSprite74


.thumb
.globl Function_2063078
Function_2063078: @ 2063078 :thumb
	mov     r2, r0
	add     r2, #Sprite_7c
	mov     r3, r1
	ldmia   r2!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r2, #0x0]
	str     r0, [r3, #0x0]
	bx      lr
@ 0x2063088


.thumb
.globl Function_2063088
Function_2063088: @ 2063088 :thumb
	mov     r3, r1
	mov     r2, r0
	ldmia   r3!, {r0,r1}
	add     r2, #Sprite_7c
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	bx      lr
@ 0x2063098


thumb_func_start GetSpriteAdr7c
GetSpriteAdr7c: @ 2063098 :thumb
	add     r0, #Sprite_7c
	bx      lr
thumb_func_end GetSpriteAdr7c


.thumb
.globl Function_206309c
Function_206309c: @ 206309c :thumb
	mov     r2, r0
	add     r2, #Sprite_88
	mov     r3, r1
	ldmia   r2!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r2, #0x0]
	str     r0, [r3, #0x0]
	bx      lr
@ 0x20630ac


.thumb
.globl Function_20630ac
Function_20630ac: @ 20630ac :thumb
	mov     r3, r1
	mov     r2, r0
	ldmia   r3!, {r0,r1}
	add     r2, #Sprite_88
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	bx      lr
@ 0x20630bc


.thumb
.globl Function_20630bc
Function_20630bc: @ 20630bc :thumb
	mov     r2, r0
	add     r2, #Sprite_94
	mov     r3, r1
	ldmia   r2!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r2, #0x0]
	str     r0, [r3, #0x0]
	bx      lr
@ 0x20630cc


.thumb
Function_20630cc: @ 20630cc :thumb
	mov     r3, r1
	mov     r2, r0
	ldmia   r3!, {r0,r1}
	add     r2, #Sprite_94
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	bx      lr
@ 0x20630dc


.thumb
Function_20630dc: @ 20630dc :thumb
	push    {r3,lr}
	bl      GetSprite74
	asr     r1, r0, #3
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r0, r0, #12
	pop     {r3,pc}
@ 0x20630ee



/*******************************
OverworldsData-Functions
*******************************/

thumb_func_start SetOverworldsID
SetOverworldsID: @ 20630f0 :thumb
	strh    r1, [r0, #Overworlds_ID]
	bx      lr
thumb_func_end SetOverworldsID


thumb_func_start GetOverworldsID
GetOverworldsID: @ 20630f4 :thumb
	ldrh    r0, [r0, #Overworlds_ID]
	bx      lr
thumb_func_end GetOverworldsID


.thumb
SetOverworldsSprite: @ 20630f8 :thumb
	strh    r1, [r0, #Overworlds_Sprite]
	bx      lr
@ 0x20630fc


.thumb
GetOverworldsSprite: @ 20630fc :thumb
	ldrh    r0, [r0, #Overworlds_Sprite]
	bx      lr
@ 0x2063100


.thumb
SetOverworldsMovement: @ 2063100 :thumb
	strh    r1, [r0, #Overworlds_Movement]
	bx      lr
@ 0x2063104


.thumb
GetOverworldsMovement: @ 2063104 :thumb
	ldrh    r0, [r0, #Overworlds_Movement]
	bx      lr
@ 0x2063108


.thumb
SetOverworldsTrainer: @ 2063108 :thumb
	strh    r1, [r0, #Overworlds_Trainer]
	bx      lr
@ 0x206310c


.thumb
GetOverworldsTrainer: @ 206310c :thumb
	ldrh    r0, [r0, #Overworlds_Trainer]
	bx      lr
@ 0x2063110


.thumb
SetOverworldsFlag: @ 2063110 :thumb
	strh    r1, [r0, #Overworlds_Flag]
	bx      lr
@ 0x2063114


.thumb
GetOverworldsFlag: @ 2063114 :thumb
	ldrh    r0, [r0, #Overworlds_Flag]
	bx      lr
@ 0x2063118


thumb_func_start SetOverworldsScript
SetOverworldsScript: @ 2063118 :thumb
	strh    r1, [r0, #Overworlds_Script]
	bx      lr
thumb_func_end SetOverworldsScript


thumb_func_start GetOverworldsScript
GetOverworldsScript: @ 206311c :thumb
	ldrh    r0, [r0, #Overworlds_Script]
	bx      lr
thumb_func_end GetOverworldsScript


.thumb
SetOverworldsOrientation: @ 2063120 :thumb
	strh    r1, [r0, #Overworlds_Orientation]
	bx      lr
@ 0x2063124


.thumb
GetOverworldsOrientation: @ 2063124 :thumb
	mov     r1, #Overworlds_Orientation
	ldsh    r0, [r0, r1]
	bx      lr
@ 0x206312a


.align 2, 0
.thumb
Function_206312c: @ 206312c :thumb
	push    {r3,lr}
	cmp     r2, #0x0
	beq     branch_206313c
	cmp     r2, #0x1
	beq     branch_2063140
	cmp     r2, #0x2
	beq     branch_2063144
	b       branch_2063148

branch_206313c: @ 206313c :thumb
	strh    r1, [r0, #Overworlds_Sight1]
	pop     {r3,pc}

branch_2063140: @ 2063140 :thumb
	strh    r1, [r0, #Overworlds_Sight2]
	pop     {r3,pc}

branch_2063144: @ 2063144 :thumb
	strh    r1, [r0, #Overworlds_Sight3]
	pop     {r3,pc}

branch_2063148: @ 2063148 :thumb
	bl      ErrorHandling
	pop     {r3,pc}
@ 0x206314e


.align 2, 0
.thumb
Function_2063150: @ 2063150 :thumb
	push    {r3,lr}
	cmp     r1, #0x0
	beq     branch_2063160
	cmp     r1, #0x1
	beq     branch_2063164
	cmp     r1, #0x2
	beq     branch_2063168
	b       branch_206316c

branch_2063160: @ 2063160 :thumb
	ldrh    r0, [r0, #Overworlds_Sight1]
	pop     {r3,pc}

branch_2063164: @ 2063164 :thumb
	ldrh    r0, [r0, #Overworlds_Sight2]
	pop     {r3,pc}

branch_2063168: @ 2063168 :thumb
	ldrh    r0, [r0, #Overworlds_Sight3]
	pop     {r3,pc}

branch_206316c: @ 206316c :thumb
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2063174


.thumb
SetOverworldsMovementWidth: @ 2063174 :thumb
	strh    r1, [r0, #Overworlds_MovementWidth]
	bx      lr
@ 0x2063178


.thumb
GetOverworldsMovementWidth: @ 2063178 :thumb
	mov     r1, #Overworlds_MovementWidth
	ldsh    r0, [r0, r1]
	bx      lr
@ 0x206317e


.align 2, 0
.thumb
SetOverworldsMovementLength: @ 2063180 :thumb
	strh    r1, [r0, #Overworlds_MovementLength]
	bx      lr
@ 0x2063184


.thumb
GetOverworldsMovementLength: @ 2063184 :thumb
	mov     r1, #Overworlds_MovementLength
	ldsh    r0, [r0, r1]
	bx      lr
@ 0x206318a


.align 2, 0
.thumb
SetOverworldsX: @ 206318c :thumb
	strh    r1, [r0, #Overworlds_X]
	bx      lr
@ 0x2063190


.thumb
GetOverworldsX: @ 2063190 :thumb
	ldrh    r0, [r0, #Overworlds_X]
	bx      lr
@ 0x2063194


.thumb
SetOverworldsZ: @ 2063194 :thumb
	str     r1, [r0, #Overworlds_Z]
	bx      lr
@ 0x2063198


.thumb
GetOverworldsZ: @ 2063198 :thumb
	ldr     r0, [r0, #Overworlds_Z]
	bx      lr
@ 0x206319c


.thumb
SetOverworldsY: @ 206319c :thumb
	strh    r1, [r0, #Overworlds_Y]
	bx      lr
@ 0x20631a0


.thumb
GetOverworldsY: @ 20631a0 :thumb
	ldrh    r0, [r0, #Overworlds_Y]
	bx      lr
@ 0x20631a4


/* Input:
r0: OverworldsID
r1: NrOfOverworlds
r2: PtrToOverworldsData
*/
thumb_func_start FindOverworldsIDWithoutScript
FindOverworldsIDWithoutScript: @ 20631a4 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r7, r1
	str     r2, [sp, #0x0]
	mov     r4, #0x0
	mov     r5, r2
branch_20631b0: @ 20631b0 :thumb
	mov     r0, r5
	bl      HasOverworldsNoScript
	cmp     r0, #0x0
	bne     branch_20631cc

	mov     r0, r5
	bl      GetOverworldsID
	cmp     r6, r0
	bne     branch_20631cc

	ldr     r0, [sp, #0x0]
	lsl     r1, r4, #5
	add     r0, r0, r1
	pop     {r3-r7,pc}

branch_20631cc: @ 20631cc :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x20
	cmp     r4, r7
	blt     branch_20631b0

	mov     r0, #0x0
	pop     {r3-r7,pc}
thumb_func_end FindOverworldsIDWithoutScript


/* Input
r0: PtrToOverworldsData
*/
thumb_func_start HasOverworldsNoScript
HasOverworldsNoScript: @ 20631d8 :thumb
	push    {r3,lr}
	bl      GetOverworldsScript
	lsl     r0, r0, #16
	lsr     r1, r0, #16
	ldr     r0, [pc, #0xc] @ 0x20631f0, (=0xffff)
	cmp     r1, r0
	bne     branch_20631ec
	mov     r0, #0x1
	pop     {r3,pc}

branch_20631ec: @ 20631ec :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x20631f0

.word 0xffff @ 0x20631f0
thumb_func_end HasOverworldsNoScript



.thumb
GetOverworldsFlagWithoutScript: @ 20631f4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      HasOverworldsNoScript
	cmp     r0, #0x1
	beq     branch_2063204
	bl      ErrorHandling
branch_2063204: @ 2063204 :thumb

	mov     r0, r4
	bl      GetOverworldsFlag
	pop     {r4,pc}
@ 0x206320c


.thumb
Function_206320c: @ 206320c :thumb
	push    {r4,lr}
	mov     r4, r0
	cmp     r4, #0x44
	blo     branch_2063218
	bl      ErrorHandling
branch_2063218: @ 2063218 :thumb

	ldr     r0, [pc, #0x4] @ 0x2063220, (=Unknown_20ee3a8)
	lsl     r1, r4, #2
	ldr     r0, [r0, r1]
	pop     {r4,pc}
@ 0x2063220

.word Unknown_20ee3a8 @ 0x2063220



.thumb
Function_2063224: @ 2063224 :thumb
	ldr     r0, [r0, #0x4]
	bx      lr
@ 0x2063228


.thumb
Function_2063228: @ 2063228 :thumb
	ldr     r0, [r0, #0x8]
	bx      lr
@ 0x206322c


.thumb
Function_206322c: @ 206322c :thumb
	ldr     r0, [r0, #0xc]
	bx      lr
@ 0x2063230


.thumb
Function_2063230: @ 2063230 :thumb
	ldr     r0, [r0, #0x0]
	bx      lr
@ 0x2063234


.thumb
Function_2063234: @ 2063234 :thumb
	ldr     r0, [r0, #0x4]
	bx      lr
@ 0x2063238


.thumb
Function_2063238: @ 2063238 :thumb
	ldr     r0, [r0, #0x8]
	bx      lr
@ 0x206323c


.thumb
Function_206323c: @ 206323c :thumb
	ldr     r0, [r0, #0xc]
	bx      lr
@ 0x2063240


.thumb
Function_2063240: @ 2063240 :thumb
	ldr     r0, [r0, #0x10]
	bx      lr
@ 0x2063244


.thumb
Function_2063244: @ 2063244 :thumb
	push    {r3,lr}
	ldr     r3, [pc, #0x1c] @ 0x2063264, (=0x21fb97c)
	ldr     r1, [pc, #0x1c] @ 0x2063268, (=0xffff)
branch_206324a: @ 206324a :thumb
	ldr     r2, [r3, #0x0]
	cmp     r2, r0
	bne     branch_2063254

	ldr     r0, [r3, #0x4]
	pop     {r3,pc}

branch_2063254: @ 2063254 :thumb
	add     r3, #0x8
	ldr     r2, [r3, #0x0]
	cmp     r2, r1
	bne     branch_206324a

	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2063264

.word 0x21fb97c @ 0x2063264
.word 0xffff @ 0x2063268



/* Input:
r0: Ptr To SpriteList
*/
.thumb
.globl Function_206326c
Function_206326c: @ 206326c :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	mov     r5, r1
	mov     r6, r2
	str     r3, [sp, #0x0]
	bl      GetNrOfSpritesInList
	mov     r7, r0

	mov     r0, r4
	bl      GetSpriteList_124_3
	mov     r4, r0
branch_2063284: @ 2063284 :thumb
	mov     r0, r4
	mov     r1, #0x1
	bl      MaskSpriteFlags
	cmp     r0, #0x0
	beq     branch_20632c6

	ldr     r0, [sp, #0x0]
	cmp     r0, #0x0
	beq     branch_20632ae

	mov     r0, r4
	bl      GetSpriteX2
	cmp     r5, r0
	bne     branch_20632ae

	mov     r0, r4
	bl      GetSpriteY2
	cmp     r6, r0
	bne     branch_20632ae

	mov     r0, r4
	pop     {r3-r7,pc}

branch_20632ae: @ 20632ae :thumb
	mov     r0, r4
	bl      LoadSpritePositionX
	cmp     r5, r0
	bne     branch_20632c6

	mov     r0, r4
	bl      LoadSpritePositionY
	cmp     r6, r0
	bne     branch_20632c6

	mov     r0, r4
	pop     {r3-r7,pc}

branch_20632c6: @ 20632c6 :thumb
	mov     r0, #0x4a
	lsl     r0, r0, #2
	add     r4, r4, r0
	.hword  0x1e7f @ sub r7, r7, #0x1
	bne     branch_2063284

	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x20632d4


.thumb
.globl Function_20632d4
Function_20632d4: @ 20632d4 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	ldr     r1, [r4, #0x0]
	mov     r6, r2
	asr     r2, r1, #4
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	asr     r1, r1, #12
	mov     r5, r0
	bl      SaveSpritePositionX
	ldr     r1, [r4, #0x4]
	mov     r0, r5
	asr     r2, r1, #3
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	asr     r1, r1, #12
	bl      SaveSpritePositionZ
	ldr     r1, [r4, #0x8]
	mov     r0, r5
	asr     r2, r1, #4
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	asr     r1, r1, #12
	bl      SaveSpritePositionY

	mov     r0, r5
	mov     r1, r4
	bl      CopyToSprite70Struct

	mov     r0, r5
	bl      CopySpritePositionsFromOldToNew

	mov     r0, r5
	mov     r1, r6
	bl      ChangeSpriteFaceDirection

	mov     r0, r5
	bl      Function_20656dc

	mov     r0, r5
	mov     r1, #0x4
	bl      SetSpriteFlags

	mov     r0, r5
	mov     r1, #0xa
	bl      UnsetSpriteFlags
	pop     {r4-r6,pc}
@ 0x206333e


.align 2, 0
.thumb
.globl Function_2063340
Function_2063340: @ 2063340 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r4, r2
	mov     r2, #0x2
	mov     r6, r3
	lsl     r3, r1, #16
	lsl     r2, r2, #14
	add     r2, r3, r2
	mov     r5, r0
	str     r2, [sp, #0x0]
	bl      SaveSpritePositionX
	lsl     r0, r4, #15
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	bl      SaveSpritePositionZ
	mov     r0, #0x2
	lsl     r1, r6, #16
	lsl     r0, r0, #14
	add     r0, r1, r0
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r1, r6
	bl      SaveSpritePositionY

	mov     r0, r5
	add     r1, sp, #0x0
	bl      CopyToSprite70Struct

	mov     r0, r5
	bl      CopySpritePositionsFromOldToNew

	ldr     r1, [sp, #0x20]
	mov     r0, r5
	bl      ChangeSpriteFaceDirection

	mov     r0, r5
	mov     r1, #0x4
	bl      SetSpriteFlags

	mov     r0, r5
	mov     r1, #0xa
	bl      UnsetSpriteFlags

	mov     r0, r5
	bl      Function_20656dc
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x20633a6


thumb_func_start SetSpriteFollowHero
SetSpriteFollowHero: @ 20633a8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      CallSprite_c0Callback

	mov     r0, r5
	mov     r1, r4
	bl      SetSpriteMovement

	mov     r0, r5
	bl      Function_206239c

	mov     r0, r5
	bl      Function_2063400
	pop     {r3-r5,pc}
thumb_func_end SetSpriteFollowHero


.thumb
Function_20633c8: @ 20633c8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      SetSpriteID

	mov     r0, r4
	bl      SetSpriteFlag_4

	mov     r0, r4
	bl      UnsetSpriteMainFlags
	pop     {r4,pc}
@ 0x20633de


.align 2, 0
.thumb
Function_20633e0_Dummy: @ 20633e0 :thumb
	bx      lr
@ 0x20633e2


.align 2, 0
.thumb
Function_20633e4_Dummy: @ 20633e4 :thumb
	bx      lr
@ 0x20633e6


.align 2, 0
.thumb
Function_20633e8_Dummy: @ 20633e8 :thumb
	bx      lr
@ 0x20633ea


.align 2, 0
.thumb
Function_20633ec_Dummy: @ 20633ec :thumb
	bx      lr
@ 0x20633ee


.align 2, 0
.thumb
Function_20633f0_Dummy: @ 20633f0 :thumb
	bx      lr
@ 0x20633f2


.align 2, 0
.thumb
Function_20633f4_Dummy: @ 20633f4 :thumb
	bx      lr
@ 0x20633f6


.align 2, 0
.thumb
Function_20633f8_Dummy: @ 20633f8 :thumb
	bx      lr
@ 0x20633fa


.align 2, 0
.thumb
Function_20633fc_Dummy: @ 20633fc :thumb
	bx      lr
@ 0x20633fe


.align 2, 0
.thumb
Function_2063400: @ 2063400 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      CallSprite_b8Callback

	mov     r0, r4
	bl      Function_20673b8
	pop     {r4,pc}
@ 0x2063410


.thumb
Function_2063410: @ 2063410 :thumb
	push    {r4,lr}
	mov     r1, #0x2
	mov     r4, r0
	bl      Function_2062cbc
	cmp     r0, #0x0
	bne     branch_2063474

	mov     r0, r4
	bl      Function_20634dc
	mov     r0, r4
	bl      Function_20634f4
	mov     r0, r4
	bl      Function_2063518
	mov     r0, r4
	mov     r1, #0x10
	bl      MaskSpriteFlags
	cmp     r0, #0x0
	beq     branch_2063444

	mov     r0, r4
	bl      ExecuteMovementFunctions
	b       branch_2063468

branch_2063444: @ 2063444 :thumb
	mov     r0, r4
	bl      CheckSpriteFlag_Lock
	cmp     r0, #0x0
	bne     branch_2063468

	mov     r0, r4
	bl      Function_2063478
	cmp     r0, #0x1
	bne     branch_2063468

	mov     r0, r4
	bl      Function_20673c0
	cmp     r0, #0x0
	bne     branch_2063468
	mov     r0, r4
	bl      CallSprite_bcCallback
branch_2063468: @ 2063468 :thumb

	mov     r0, r4
	bl      Function_206353c
	mov     r0, r4
	bl      Function_2063574
branch_2063474: @ 2063474 :thumb
	pop     {r4,pc}
@ 0x2063476


.align 2, 0
.thumb
Function_2063478: @ 2063478 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      CheckSpriteFlag_2
	cmp     r0, #0x1
	bne     branch_2063488

	mov     r0, #0x1
	pop     {r4,pc}

branch_2063488: @ 2063488 :thumb
	mov     r1, #0x6
	mov     r0, r4
	lsl     r1, r1, #10
	bl      MaskSpriteFlags
	cmp     r0, #0x0
	bne     branch_206349a

	mov     r0, #0x1
	pop     {r4,pc}

branch_206349a: @ 206349a :thumb
	mov     r0, r4
	bl      GetSpriteMovement
	cmp     r0, #0x32
	bne     branch_20634a8

	mov     r0, #0x1
	pop     {r4,pc}

branch_20634a8: @ 20634a8 :thumb
	mov     r0, r4
	bl      LoadSpriteFlags
	mov     r1, #0x1
	lsl     r1, r1, #12
	mov     r2, r0
	tst     r2, r1
	beq     branch_20634c2

	lsl     r1, r1, #11
	tst     r1, r0
	bne     branch_20634c2

	mov     r0, #0x0
	pop     {r4,pc}

branch_20634c2: @ 20634c2 :thumb
	mov     r1, #0x2
	lsl     r1, r1, #10
	tst     r0, r1
	beq     branch_20634d8

	mov     r0, r4
	bl      Function_2062fdc
	cmp     r0, #0x0
	bne     branch_20634d8

	mov     r0, #0x0
	pop     {r4,pc}

branch_20634d8: @ 20634d8 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x20634dc


.thumb
Function_20634dc: @ 20634dc :thumb
	push    {r4,lr}
	mov     r1, #0x1
	lsl     r1, r1, #12
	mov     r4, r0
	bl      MaskSpriteFlags
	cmp     r0, #0x0
	beq     branch_20634f2
	mov     r0, r4
	bl      Function_20642f8
branch_20634f2: @ 20634f2 :thumb
	pop     {r4,pc}
@ 0x20634f4


.thumb
Function_20634f4: @ 20634f4 :thumb
	push    {r4,lr}
	mov     r1, #0x2
	lsl     r1, r1, #10
	mov     r4, r0
	bl      MaskSpriteFlags
	cmp     r0, #0x0
	beq     branch_2063514

	mov     r0, r4
	bl      Function_2064390
	cmp     r0, #0x1
	bne     branch_2063514
	mov     r0, r4
	bl      SetSpriteFlag_4
branch_2063514: @ 2063514 :thumb

	pop     {r4,pc}
@ 0x2063516


.align 2, 0
.thumb
Function_2063518: @ 2063518 :thumb
	push    {r4,lr}
	mov     r1, #0x4
	mov     r4, r0
	bl      MaskSpriteFlags
	cmp     r0, #0x0
	beq     branch_206352c
	mov     r0, r4
	bl      Function_20635ac
branch_206352c: @ 206352c :thumb
	ldr     r1, [pc, #0x8] @ 0x2063538, (=0x10004)
	mov     r0, r4
	bl      UnsetSpriteFlags
	pop     {r4,pc}
@ 0x2063536

.align 2
.word 0x10004 @ 0x2063538



.thumb
Function_206353c: @ 206353c :thumb
	push    {r4,lr}
	mov     r1, #0x1
	lsl     r1, r1, #16
	mov     r4, r0
	bl      MaskSpriteFlags
	cmp     r0, #0x0
	beq     branch_2063554
	mov     r0, r4
	bl      Function_20636f0
	b       branch_2063566

branch_2063554: @ 2063554 :thumb
	mov     r0, r4
	mov     r1, #0x4
	bl      MaskSpriteFlags
	cmp     r0, #0x0
	beq     branch_2063566
	mov     r0, r4
	bl      Function_206363c
branch_2063566: @ 2063566 :thumb
	ldr     r1, [pc, #0x8] @ 0x2063570, (=0x10004)
	mov     r0, r4
	bl      UnsetSpriteFlags
	pop     {r4,pc}
@ 0x2063570

.word 0x10004 @ 0x2063570



.thumb
Function_2063574: @ 2063574 :thumb
	push    {r4,lr}
	mov     r1, #0x2
	lsl     r1, r1, #16
	mov     r4, r0
	bl      MaskSpriteFlags
	cmp     r0, #0x0
	beq     branch_206358c
	mov     r0, r4
	bl      Function_20637d4
	b       branch_206359e

branch_206358c: @ 206358c :thumb
	mov     r0, r4
	mov     r1, #0x8
	bl      MaskSpriteFlags
	cmp     r0, #0x0
	beq     branch_206359e
	mov     r0, r4
	bl      Function_206375c
branch_206359e: @ 206359e :thumb
	ldr     r1, [pc, #0x8] @ 0x20635a8, (=0x20008)
	mov     r0, r4
	bl      UnsetSpriteFlags
	pop     {r4,pc}
@ 0x20635a8

.word 0x20008 @ 0x20635a8



.thumb
Function_20635ac: @ 20635ac :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      Function_2064390
	mov     r0, r5
	bl      Function_2062dfc
	cmp     r0, #0x1
	bne     branch_206363a
	mov     r0, r5
	bl      Function_2062be8
	lsl     r0, r0, #24
	lsr     r6, r0, #24
	mov     r0, r5
	bl      Function_2062bf8
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	mov     r0, r5
	bl      0x21ecd04
	mov     r7, r0
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	mov     r3, r7
	bl      Function_2063ddc
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	mov     r3, r7
	bl      Function_2063964
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	mov     r3, r7
	bl      Function_2063a30
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	mov     r3, r7
	bl      Function_2063a70
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	mov     r3, r7
	bl      Function_2063864
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	mov     r3, r7
	bl      Function_2063c00
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	mov     r3, r7
	bl      Function_2063c30
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	mov     r3, r7
	bl      Function_2063d30
branch_206363a: @ 206363a :thumb
	pop     {r3-r7,pc}
@ 0x206363c


.thumb
Function_206363c: @ 206363c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      Function_2064390
	mov     r0, r5
	bl      Function_2062dfc
	cmp     r0, #0x1
	bne     branch_20636ee
	mov     r0, r5
	bl      Function_2062be8
	lsl     r0, r0, #24
	lsr     r6, r0, #24
	mov     r0, r5
	bl      Function_2062bf8
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	mov     r0, r5
	bl      0x21ecd04
	mov     r7, r0
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	mov     r3, r7
	bl      Function_2063ddc
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	mov     r3, r7
	bl      Function_206397c
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	mov     r3, r7
	bl      Function_2063994
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	mov     r3, r7
	bl      Function_2063a30
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	mov     r3, r7
	bl      Function_2063a78
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	mov     r3, r7
	bl      Function_2063c18
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	mov     r3, r7
	bl      Function_2063c48
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	mov     r3, r7
	bl      Function_2063c60
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	mov     r3, r7
	bl      Function_2063cc8
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	mov     r3, r7
	bl      Function_2063d30
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	mov     r3, r7
	bl      Function_2063e14
branch_20636ee: @ 20636ee :thumb
	pop     {r3-r7,pc}
@ 0x20636f0


.thumb
Function_20636f0: @ 20636f0 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      Function_2064390
	mov     r0, r5
	bl      Function_2062dfc
	cmp     r0, #0x1
	bne     branch_206375a
	mov     r0, r5
	bl      Function_2062be8
	lsl     r0, r0, #24
	lsr     r6, r0, #24
	mov     r0, r5
	bl      Function_2062bf8
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	mov     r0, r5
	bl      0x21ecd04
	mov     r7, r0
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	mov     r3, r7
	bl      Function_2063ddc
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	mov     r3, r7
	bl      Function_2063a78
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	mov     r3, r7
	bl      Function_2063d30
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	mov     r3, r7
	bl      Function_2063a64
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	mov     r3, r7
	bl      Function_2063e14
branch_206375a: @ 206375a :thumb
	pop     {r3-r7,pc}
@ 0x206375c


.thumb
Function_206375c: @ 206375c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      Function_2064390
	mov     r0, r5
	bl      Function_2062dfc
	cmp     r0, #0x1
	bne     branch_20637d2
	mov     r0, r5
	bl      Function_2062be8
	lsl     r0, r0, #24
	lsr     r6, r0, #24
	mov     r0, r5
	bl      Function_2062bf8
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	mov     r0, r5
	bl      0x21ecd04
	mov     r7, r0
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	mov     r3, r7
	bl      Function_2063864
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	mov     r3, r7
	bl      Function_2063c94
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	mov     r3, r7
	bl      Function_2063cfc
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	mov     r3, r7
	bl      Function_2063a30
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	mov     r3, r7
	bl      Function_2063da8
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	mov     r3, r7
	bl      Function_2063b20
branch_20637d2: @ 20637d2 :thumb
	pop     {r3-r7,pc}
@ 0x20637d4


.thumb
Function_20637d4: @ 20637d4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      Function_2064390
	mov     r0, r5
	bl      Function_2062dfc
	cmp     r0, #0x1
	bne     branch_2063862
	mov     r0, r5
	bl      Function_2062be8
	lsl     r0, r0, #24
	lsr     r6, r0, #24
	mov     r0, r5
	bl      Function_2062bf8
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	mov     r0, r5
	bl      0x21ecd04
	mov     r7, r0
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	mov     r3, r7
	bl      Function_2063864
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	mov     r3, r7
	bl      Function_2063c94
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	mov     r3, r7
	bl      Function_2063cfc
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	mov     r3, r7
	bl      Function_2063a30
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	mov     r3, r7
	bl      Function_2063da8
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	mov     r3, r7
	bl      Function_2063b20
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	mov     r3, r7
	bl      Function_206397c
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	mov     r3, r7
	bl      Function_2063bb4
branch_2063862: @ 2063862 :thumb
	pop     {r3-r7,pc}
@ 0x2063864


.thumb
Function_2063864: @ 2063864 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x48
	mov     r4, r0
	mov     r5, r1
	bl      Function_2062efc
	cmp     r0, #0x0
	bne     branch_206393c
	mov     r0, r5
	bl      Function_205dcf0
	cmp     r0, #0x1
	beq     branch_2063888
	mov     r0, r5
	bl      Function_205dd0c
	cmp     r0, #0x1
	bne     branch_20638a2
branch_2063888: @ 2063888 :thumb
	ldr     r5, [pc, #0xc4] @ 0x2063950, (=Unknown_20ee738)
	add     r3, sp, #0x3c
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r2
	str     r0, [r3, #0x0]
	mov     r0, r4
	bl      Function_20630cc
	add     sp, #0x48
	pop     {r3-r5,pc}

branch_20638a2: @ 20638a2 :thumb
	mov     r0, r5
	bl      Function_205dce0
	cmp     r0, #0x1
	beq     branch_20638b6
	mov     r0, r5
	bl      Function_205dcfc
	cmp     r0, #0x1
	bne     branch_20638d0
branch_20638b6: @ 20638b6 :thumb
	ldr     r5, [pc, #0x9c] @ 0x2063954, (=Unknown_20ee744)
	add     r3, sp, #0x30
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r2
	str     r0, [r3, #0x0]
	mov     r0, r4
	bl      Function_20630cc
	add     sp, #0x48
	pop     {r3-r5,pc}

branch_20638d0: @ 20638d0 :thumb
	mov     r0, r5
	bl      Function_205dd5c
	cmp     r0, #0x1
	bne     branch_20638f4
	ldr     r5, [pc, #0x7c] @ 0x2063958, (=Unknown_20ee720)
	add     r3, sp, #0x24
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r2
	str     r0, [r3, #0x0]
	mov     r0, r4
	bl      Function_20630cc
	add     sp, #0x48
	pop     {r3-r5,pc}

branch_20638f4: @ 20638f4 :thumb
	mov     r0, r5
	bl      Function_205dd50
	cmp     r0, #0x1
	bne     branch_2063918
	ldr     r5, [pc, #0x5c] @ 0x206395c, (=Unknown_20ee72c)
	add     r3, sp, #0x18
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r2
	str     r0, [r3, #0x0]
	mov     r0, r4
	bl      Function_20630cc
	add     sp, #0x48
	pop     {r3-r5,pc}

branch_2063918: @ 2063918 :thumb
	mov     r0, r5
	bl      Function_205dd44
	cmp     r0, #0x1
	bne     branch_206393c
	ldr     r5, [pc, #0x3c] @ 0x2063960, (=Unknown_20ee750)
	add     r3, sp, #0xc
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r2
	str     r0, [r3, #0x0]
	mov     r0, r4
	bl      Function_20630cc
	add     sp, #0x48
	pop     {r3-r5,pc}

branch_206393c: @ 206393c :thumb
	add     r1, sp, #0x0
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	str     r0, [r1, #0x4]
	str     r0, [r1, #0x8]
	mov     r0, r4
	bl      Function_20630cc
	add     sp, #0x48
	pop     {r3-r5,pc}
@ 0x2063950

.word Unknown_20ee738 @ 0x2063950
.word Unknown_20ee744 @ 0x2063954
.word Unknown_20ee720 @ 0x2063958
.word Unknown_20ee72c @ 0x206395c
.word Unknown_20ee750 @ 0x2063960



.thumb
Function_2063964: @ 2063964 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r1
	bl      Function_205dac8
	cmp     r0, #0x1
	bne     branch_206397a
	mov     r0, r4
	mov     r1, #0x0
	bl      0x21f2ea4
branch_206397a: @ 206397a :thumb
	pop     {r4,pc}
@ 0x206397c


.thumb
Function_206397c: @ 206397c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r1
	bl      Function_205dac8
	cmp     r0, #0x1
	bne     branch_2063992
	mov     r0, r4
	mov     r1, #0x1
	bl      0x21f2ea4
branch_2063992: @ 2063992 :thumb
	pop     {r4,pc}
@ 0x2063994


.thumb
Function_2063994: @ 2063994 :thumb
	push    {r4-r6,lr}
	mov     r6, r3
	mov     r5, r0
	ldr     r0, [r6, #0x4]
	mov     r4, r2
	lsl     r0, r0, #22
	lsr     r0, r0, #28
	beq     branch_2063a2c
	mov     r0, r4
	bl      Function_205dfac
	cmp     r0, #0x1
	bne     branch_20639ca
	ldr     r0, [r6, #0x4]
	lsl     r0, r0, #22
	lsr     r0, r0, #28
	cmp     r0, #0x1
	bne     branch_20639c0
	mov     r0, r5
	bl      0x21f1ebc
	b       branch_20639ca

branch_20639c0: @ 20639c0 :thumb
	cmp     r0, #0x2
	bne     branch_20639ca
	mov     r0, r5
	bl      0x21f1ec8
branch_20639ca: @ 20639ca :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_20640a0
	cmp     r0, #0x1
	bne     branch_20639f4
	ldr     r0, [r6, #0x4]
	lsl     r0, r0, #22
	lsr     r0, r0, #28
	cmp     r0, #0x1
	bne     branch_20639e8
	mov     r0, r5
	bl      0x21f1e8c
	pop     {r4-r6,pc}

branch_20639e8: @ 20639e8 :thumb
	cmp     r0, #0x2
	bne     branch_2063a2c
	mov     r0, r5
	bl      0x21f1e98
	pop     {r4-r6,pc}

branch_20639f4: @ 20639f4 :thumb
	mov     r0, r4
	bl      Function_205dd50
	cmp     r0, #0x1
	beq     branch_2063a12
	mov     r0, r4
	bl      Function_205dd5c
	cmp     r0, #0x1
	beq     branch_2063a12
	mov     r0, r4
	bl      Function_205dd44
	cmp     r0, #0x0
	beq     branch_2063a1a
branch_2063a12: @ 2063a12 :thumb
	mov     r0, r5
	bl      0x21f1eb0
	pop     {r4-r6,pc}

branch_2063a1a: @ 2063a1a :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_2064108
	cmp     r0, #0x1
	bne     branch_2063a2c
	mov     r0, r5
	bl      0x21f1ea4
branch_2063a2c: @ 2063a2c :thumb
	pop     {r4-r6,pc}
@ 0x2063a2e


.align 2, 0
.thumb
Function_2063a30: @ 2063a30 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r1
	bl      Function_205db78
	cmp     r0, #0x1
	bne     branch_2063a5a
	mov     r0, r4
	bl      Function_2062ec8
	cmp     r0, #0x0
	bne     branch_2063a62
	mov     r0, r4
	mov     r1, #0x1
	bl      0x21f331c
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2062eac
	pop     {r4,pc}

branch_2063a5a: @ 2063a5a :thumb
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2062eac
branch_2063a62: @ 2063a62 :thumb
	pop     {r4,pc}
@ 0x2063a64


.thumb
Function_2063a64: @ 2063a64 :thumb
	ldr     r3, [pc, #0x4] @ 0x2063a6c, (=0x2062ead)
	mov     r1, #0x0
	bx      r3
@ 0x2063a6a


.align 2
.word Function_2062eac+1 @ =0x2062ead, 0x2063a6c



.thumb
Function_2063a70: @ 2063a70 :thumb
	push    {r3,lr}
	bl      Function_2063a78
	pop     {r3,pc}
@ 0x2063a78


.thumb
Function_2063a78: @ 2063a78 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r3
	bl      GetSpriteSpriteList
	bl      Function_2062ce4
	cmp     r0, #0x0
	beq     branch_2063b1c
	ldr     r0, [r6, #0x4]
	lsl     r0, r0, #26
	lsr     r0, r0, #30
	beq     branch_2063b1c
	mov     r0, r4
	bl      Function_205dac8
	cmp     r0, #0x1
	beq     branch_2063af2
	mov     r0, r4
	bl      Function_205dad4
	cmp     r0, #0x1
	beq     branch_2063af2
	mov     r0, r5
	mov     r1, r4
	bl      Function_206406c
	cmp     r0, #0x1
	beq     branch_2063af2
	mov     r0, r4
	bl      Function_205de5c
	cmp     r0, #0x1
	beq     branch_2063af2
	mov     r0, r4
	bl      Function_205db78
	cmp     r0, #0x1
	beq     branch_2063af2
	mov     r0, r5
	mov     r1, r4
	bl      Function_20640d4
	cmp     r0, #0x1
	beq     branch_2063af2
	mov     r0, r4
	bl      Function_205dce0
	cmp     r0, #0x1
	beq     branch_2063af2
	mov     r0, r4
	bl      Function_205dcfc
	cmp     r0, #0x1
	beq     branch_2063af2
	mov     r0, r4
	bl      Function_205df9c
	cmp     r0, #0x0
	beq     branch_2063afe
branch_2063af2: @ 2063af2 :thumb
	mov     r1, #0x1
	mov     r0, r5
	lsl     r1, r1, #20
	bl      SetSpriteFlags
	pop     {r4-r6,pc}

branch_2063afe: @ 2063afe :thumb
	mov     r1, #0x2
	mov     r0, r5
	lsl     r1, r1, #14
	bl      MaskSpriteFlags
	cmp     r0, #0x0
	bne     branch_2063b1c
	mov     r0, r5
	bl      0x21f1570
	mov     r1, #0x2
	mov     r0, r5
	lsl     r1, r1, #14
	bl      SetSpriteFlags
branch_2063b1c: @ 2063b1c :thumb
	pop     {r4-r6,pc}
@ 0x2063b1e


.align 2, 0
.thumb
Function_2063b20: @ 2063b20 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r3
	bl      GetSpriteSpriteList
	bl      Function_2062ce4
	cmp     r0, #0x0
	beq     branch_2063bb0
	ldr     r0, [r6, #0x4]
	lsl     r0, r0, #26
	lsr     r0, r0, #30
	beq     branch_2063bb0
	mov     r0, r4
	bl      Function_205dac8
	cmp     r0, #0x1
	beq     branch_2063b9a
	mov     r0, r4
	bl      Function_205dad4
	cmp     r0, #0x1
	beq     branch_2063b9a
	mov     r0, r5
	mov     r1, r4
	bl      Function_206406c
	cmp     r0, #0x1
	beq     branch_2063b9a
	mov     r0, r4
	bl      Function_205de5c
	cmp     r0, #0x1
	beq     branch_2063b9a
	mov     r0, r4
	bl      Function_205db78
	cmp     r0, #0x1
	beq     branch_2063b9a
	mov     r0, r5
	mov     r1, r4
	bl      Function_20640d4
	cmp     r0, #0x1
	beq     branch_2063b9a
	mov     r0, r4
	bl      Function_205dce0
	cmp     r0, #0x1
	beq     branch_2063b9a
	mov     r0, r4
	bl      Function_205dcfc
	cmp     r0, #0x1
	beq     branch_2063b9a
	mov     r0, r4
	bl      Function_205df9c
	cmp     r0, #0x0
	beq     branch_2063ba6
branch_2063b9a: @ 2063b9a :thumb
	mov     r1, #0x1
	mov     r0, r5
	lsl     r1, r1, #20
	bl      SetSpriteFlags
	pop     {r4-r6,pc}

branch_2063ba6: @ 2063ba6 :thumb
	mov     r1, #0x1
	mov     r0, r5
	lsl     r1, r1, #20
	bl      UnsetSpriteFlags
branch_2063bb0: @ 2063bb0 :thumb
	pop     {r4-r6,pc}
@ 0x2063bb2


.align 2, 0
.thumb
Function_2063bb4: @ 2063bb4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_206406c
	cmp     r0, #0x1
	beq     branch_2063bfc
	mov     r0, r4
	bl      Function_205db78
	cmp     r0, #0x1
	beq     branch_2063bfc
	mov     r0, r4
	bl      Function_205dc5c
	cmp     r0, #0x1
	beq     branch_2063bfc
	mov     r0, r4
	bl      Function_205dce0
	cmp     r0, #0x1
	beq     branch_2063bfc
	mov     r0, r4
	bl      Function_205dcfc
	cmp     r0, #0x1
	beq     branch_2063bfc
	mov     r0, r5
	mov     r1, r4
	bl      Function_20640d4
	cmp     r0, #0x1
	beq     branch_2063bfc
	mov     r0, r5
	bl      0x21f3638
branch_2063bfc: @ 2063bfc :thumb
	pop     {r3-r5,pc}
@ 0x2063bfe


.align 2, 0
.thumb
Function_2063c00: @ 2063c00 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r1
	bl      Function_205dad4
	cmp     r0, #0x1
	bne     branch_2063c16
	mov     r0, r4
	mov     r1, #0x0
	bl      0x21f3844
branch_2063c16: @ 2063c16 :thumb
	pop     {r4,pc}
@ 0x2063c18


.thumb
Function_2063c18: @ 2063c18 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r1
	bl      Function_205dad4
	cmp     r0, #0x1
	bne     branch_2063c2e
	mov     r0, r4
	mov     r1, #0x1
	bl      0x21f3844
branch_2063c2e: @ 2063c2e :thumb
	pop     {r4,pc}
@ 0x2063c30


.thumb
Function_2063c30: @ 2063c30 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r1
	bl      Function_205dcfc
	cmp     r0, #0x1
	bne     branch_2063c46
	mov     r0, r4
	mov     r1, #0x0
	bl      0x21f3aec
branch_2063c46: @ 2063c46 :thumb
	pop     {r4,pc}
@ 0x2063c48


.thumb
Function_2063c48: @ 2063c48 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r1
	bl      Function_205dcfc
	cmp     r0, #0x1
	bne     branch_2063c5e
	mov     r0, r4
	mov     r1, #0x1
	bl      0x21f3aec
branch_2063c5e: @ 2063c5e :thumb
	pop     {r4,pc}
@ 0x2063c60


.thumb
Function_2063c60: @ 2063c60 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, r2
	bl      Function_205de5c
	cmp     r0, #0x1
	bne     branch_2063c90
	mov     r0, r5
	bl      GetSpriteX2
	mov     r4, r0
	mov     r0, r5
	bl      GetSpriteZ2
	mov     r6, r0
	mov     r0, r5
	bl      GetSpriteY2
	mov     r3, r0
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      0x21f2ae4
branch_2063c90: @ 2063c90 :thumb
	pop     {r4-r6,pc}
@ 0x2063c92


.align 2, 0
.thumb
Function_2063c94: @ 2063c94 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, r1
	bl      Function_205de5c
	cmp     r0, #0x1
	bne     branch_2063cc4
	mov     r0, r5
	bl      LoadSpritePositionX
	mov     r4, r0
	mov     r0, r5
	bl      LoadSpritePositionZ
	mov     r6, r0
	mov     r0, r5
	bl      LoadSpritePositionY
	mov     r3, r0
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      0x21f2ae4
branch_2063cc4: @ 2063cc4 :thumb
	pop     {r4-r6,pc}
@ 0x2063cc6


.align 2, 0
.thumb
Function_2063cc8: @ 2063cc8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, r2
	bl      Function_205dce0
	cmp     r0, #0x1
	bne     branch_2063cf8
	mov     r0, r5
	bl      GetSpriteX2
	mov     r4, r0
	mov     r0, r5
	bl      GetSpriteZ2
	mov     r6, r0
	mov     r0, r5
	bl      GetSpriteY2
	mov     r3, r0
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      0x21f2c38
branch_2063cf8: @ 2063cf8 :thumb
	pop     {r4-r6,pc}
@ 0x2063cfa


.align 2, 0
.thumb
Function_2063cfc: @ 2063cfc :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, r1
	bl      Function_205dce0
	cmp     r0, #0x1
	bne     branch_2063d2c
	mov     r0, r5
	bl      LoadSpritePositionX
	mov     r4, r0
	mov     r0, r5
	bl      LoadSpritePositionZ
	mov     r6, r0
	mov     r0, r5
	bl      LoadSpritePositionY
	mov     r3, r0
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      0x21f2c38
branch_2063d2c: @ 2063d2c :thumb
	pop     {r4-r6,pc}
@ 0x2063d2e


.align 2, 0
.thumb
Function_2063d30: @ 2063d30 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	ldr     r1, [r3, #0x4]
	mov     r5, r0
	lsl     r1, r1, #20
	lsr     r1, r1, #30
	beq     branch_2063da6
	bl      IsSetSpriteFlags1000000
	cmp     r0, #0x0
	bne     branch_2063da6
	bl      Function_205df98
	mov     r4, r0
	mov     r0, r6
	bl      Function_205de90
	cmp     r0, #0x1
	bne     branch_2063d5a
	mov     r4, r6
	b       branch_2063d72

branch_2063d5a: @ 2063d5a :thumb
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2064238
	lsl     r0, r0, #24
	lsr     r6, r0, #24
	mov     r0, r6
	bl      Function_205de90
	cmp     r0, #0x1
	bne     branch_2063d72
	mov     r4, r6
branch_2063d72: @ 2063d72 :thumb
	bl      Function_205df98
	cmp     r4, r0
	beq     branch_2063da6
	mov     r0, r5
	mov     r1, #0x1
	bl      SetUnsetSpriteFlags1000000
	mov     r0, r4
	bl      Function_205df9c
	cmp     r0, #0x1
	bne     branch_2063d90
	mov     r1, #0x2
	b       branch_2063da0

branch_2063d90: @ 2063d90 :thumb
	mov     r0, r4
	bl      Function_205de5c
	cmp     r0, #0x1
	bne     branch_2063d9e
	mov     r1, #0x0
	b       branch_2063da0

branch_2063d9e: @ 2063d9e :thumb
	mov     r1, #0x1
branch_2063da0: @ 2063da0 :thumb
	mov     r0, r5
	bl      0x21f1800
branch_2063da6: @ 2063da6 :thumb
	pop     {r4-r6,pc}
@ 0x2063da8


.thumb
Function_2063da8: @ 2063da8 :thumb
	push    {r4,lr}
	ldr     r1, [r3, #0x4]
	mov     r4, r0
	lsl     r1, r1, #20
	lsr     r1, r1, #30
	beq     branch_2063dd8
	bl      IsSetSpriteFlags1000000
	cmp     r0, #0x0
	beq     branch_2063dd8
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2064238
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_205de90
	cmp     r0, #0x0
	bne     branch_2063dd8
	mov     r0, r4
	mov     r1, #0x0
	bl      SetUnsetSpriteFlags1000000
branch_2063dd8: @ 2063dd8 :thumb
	pop     {r4,pc}
@ 0x2063dda


.align 2, 0
.thumb
Function_2063ddc: @ 2063ddc :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	bl      Function_205def0
	cmp     r0, #0x1
	bne     branch_2063df6
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2062f14
	pop     {r3-r5,pc}

branch_2063df6: @ 2063df6 :thumb
	mov     r0, r5
	bl      Function_2062f30
	cmp     r0, #0x1
	bne     branch_2063e12
	mov     r0, r4
	bl      Function_205defc
	cmp     r0, #0x0
	bne     branch_2063e12
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2062f14
branch_2063e12: @ 2063e12 :thumb
	pop     {r3-r5,pc}
@ 0x2063e14


.thumb
Function_2063e14: @ 2063e14 :thumb
	bx      lr
@ 0x2063e16


.align 2, 0
.thumb
.globl Function_2063e18
Function_2063e18: @ 2063e18 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	ldr     r7, [sp, #0x28]
	mov     r5, r2
	str     r1, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r2, r3
	mov     r1, r5
	mov     r3, r7
	mov     r6, r0
	mov     r4, #0x0
	bl      Function_2063fac
	cmp     r0, #0x1
	bne     branch_2063e3a
	mov     r0, #0x1
	orr     r4, r0
.thumb
branch_2063e3a: @ 2063e3a :thumb
	mov     r0, r6
	bl      GetSpriteSpriteListFirstSprite
	add     r1, sp, #0xc
	str     r1, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	mov     r2, r5
	mov     r3, r7
	bl      Function_2055024
	cmp     r0, #0x1
	bne     branch_2063e64
	mov     r0, #0x2
	orr     r4, r0
	add     r1, sp, #0xc
	mov     r0, #0x0
	ldsb    r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2063e64
	mov     r0, #0x8
	orr     r4, r0
.thumb
branch_2063e64: @ 2063e64 :thumb
	ldr     r3, [sp, #0x2c]
	mov     r0, r6
	mov     r1, r5
	mov     r2, r7
	bl      Function_2064004
	cmp     r0, #0x1
	bne     branch_2063e78
	mov     r0, #0x2
	orr     r4, r0
.thumb
branch_2063e78: @ 2063e78 :thumb
	ldr     r2, [sp, #0x8]
	mov     r0, r6
	mov     r1, r5
	mov     r3, r7
	bl      Function_2063f00
	cmp     r0, #0x1
	bne     branch_2063e8c
	mov     r0, #0x4
	orr     r4, r0
.thumb
branch_2063e8c: @ 2063e8c :thumb
	mov     r0, r4
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2063e92


.align 2, 0


.thumb
Function_2063e94: @ 2063e94 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r6, r1
	add     r1, sp, #0x8
	mov     r5, r0
	mov     r7, r2
	mov     r4, r3
	bl      CopySprite70Struct
	ldr     r0, [sp, #0x28]
	str     r4, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r1, sp, #0x8
	mov     r2, r6
	mov     r3, r7
	bl      Function_2063e18
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2063ebc


.thumb
.globl Function_2063ebc
Function_2063ebc: @ 2063ebc :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r5, r0
	bl      LoadSpritePositionX
	mov     r6, r0
	mov     r0, r4
	bl      GetWalkPositionXChange
	mov     r7, r0
	mov     r0, r5
	bl      LoadSpritePositionZ
	str     r0, [sp, #0x4]
	mov     r0, r5
	bl      LoadSpritePositionY
	str     r0, [sp, #0x8]
	mov     r0, r4
	bl      GetWalkPositionYChange
	str     r4, [sp, #0x0]
	mov     r3, r0
	ldr     r4, [sp, #0x8]
	ldr     r2, [sp, #0x4]
	mov     r0, r5
	add     r1, r6, r7
	add     r3, r4, r3
	bl      Function_2063e94
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2063efe


/* Input:
r0: Ptr To SpriteStruct
*/
.align 2, 0
.thumb
Function_2063f00: @ 2063f00 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	str     r0, [sp, #0x0]
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3

	bl      GetSpriteSpriteList
	mov     r5, r0
	bl      GetSpriteList_124_1
	str     r0, [sp, #0x8]
	mov     r0, r5
	bl      GetNrOfSpritesInList
	str     r0, [sp, #0x4]
branch_2063f20: @ 2063f20 :thumb
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x0]
	cmp     r0, r1
	beq     branch_2063f98

	mov     r1, #0x1
	bl      MaskSpriteFlags
	cmp     r0, #0x0
	beq     branch_2063f98

	mov     r1, #0x1
	ldr     r0, [sp, #0x8]
	lsl     r1, r1, #18
	bl      MaskSpriteFlags
	cmp     r0, #0x0
	bne     branch_2063f98

	ldr     r0, [sp, #0x8]
	bl      LoadSpritePositionX
	mov     r5, r0
	ldr     r0, [sp, #0x8]
	bl      LoadSpritePositionY
	cmp     r5, r4
	bne     branch_2063f6c

	cmp     r0, r7
	bne     branch_2063f6c

	ldr     r0, [sp, #0x8]
	bl      LoadSpritePositionZ
	sub     r0, r0, r6
	bpl     branch_2063f62
	neg     r0, r0
branch_2063f62: @ 2063f62 :thumb

	cmp     r0, #0x2
	bge     branch_2063f6c
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4-r7,pc}

branch_2063f6c: @ 2063f6c :thumb
	ldr     r0, [sp, #0x8]
	bl      GetSpriteX2
	mov     r5, r0
	ldr     r0, [sp, #0x8]
	bl      GetSpriteY2
	cmp     r5, r4
	bne     branch_2063f98

	cmp     r0, r7
	bne     branch_2063f98

	ldr     r0, [sp, #0x8]
	bl      LoadSpritePositionZ
	sub     r0, r0, r6
	bpl     branch_2063f8e
	neg     r0, r0
branch_2063f8e: @ 2063f8e :thumb
	cmp     r0, #0x2
	bge     branch_2063f98

	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4-r7,pc}

branch_2063f98: @ 2063f98 :thumb
	add     r0, sp, #0x8
	bl      GetAdrOfNextSprite
	ldr     r0, [sp, #0x4]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [sp, #0x4]
	bne     branch_2063f20

	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2063fac


.thumb
Function_2063fac: @ 2063fac :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r4, r3
	bl      Function_2062ff0
	mov     r7, r0
	mov     r0, r6
	bl      GetSpriteMovementWidth
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_2063fd8
	add     r1, r7, r0
	sub     r0, r7, r0
	cmp     r0, r5
	bgt     branch_2063fd4
	cmp     r1, r5
	bge     branch_2063fd8
.thumb
branch_2063fd4: @ 2063fd4 :thumb
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2063fd8

.thumb
branch_2063fd8: @ 2063fd8 :thumb
	mov     r0, r6
	bl      Function_2063000
	mov     r5, r0
	mov     r0, r6
	bl      GetSpriteMovementLength
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_2063ffe
	add     r1, r5, r0
	sub     r0, r5, r0
	cmp     r0, r4
	bgt     branch_2063ffa
	cmp     r1, r4
	bge     branch_2063ffe
.thumb
branch_2063ffa: @ 2063ffa :thumb
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2063ffe

.thumb
branch_2063ffe: @ 2063ffe :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2064002


.align 2, 0


.thumb
Function_2064004: @ 2064004 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	mov     r6, r1
	mov     r7, r2
	mov     r5, r3
	bl      Function_2062fdc
	cmp     r0, #0x0
	bne     branch_206405e
	mov     r0, r4
	bl      GetSpriteSpriteListFirstSprite
	str     r0, [sp, #0x0]
	mov     r0, r4
	bl      Function_2062be8
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	ldr     r0, [sp, #0x0]
	mov     r1, r6
	mov     r2, r7
	bl      Function_2054f94
	mov     r6, r0
	bl      Function_205df98
	cmp     r6, r0
	bne     branch_2064040
	mov     r0, #0x1
	pop     {r3-r7,pc}

branch_2064040: @ 2064040 :thumb
	ldr     r1, [pc, #0x20] @ 0x2064064, (=JumpTable_20ee76c)
	lsl     r5, r5, #2
	ldr     r1, [r1, r5]
	mov     r0, r4
	blx     r1
	cmp     r0, #0x1
	beq     branch_206405a
	ldr     r1, [pc, #0x18] @ 0x2064068, (=JumpTable_20ee77c)
	mov     r0, r6
	ldr     r1, [r1, r5]
	blx     r1
	cmp     r0, #0x1
	bne     branch_206405e
branch_206405a: @ 206405a :thumb
	mov     r0, #0x1
	pop     {r3-r7,pc}

branch_206405e: @ 206405e :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2064062

.align 2
.word JumpTable_20ee76c @ 0x2064064
.word JumpTable_20ee77c @ 0x2064068



.thumb
Function_206406c: @ 206406c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	bl      Function_205df10
	cmp     r0, #0x0
	beq     branch_206408c
	mov     r0, r5
	bl      Function_2062f30
	cmp     r0, #0x0
	bne     branch_206409c
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_206408c: @ 206408c :thumb
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	bl      Function_205db58
	cmp     r0, #0x0
	beq     branch_206409c
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_206409c: @ 206409c :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x20640a0


.thumb
Function_20640a0: @ 20640a0 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	bl      Function_205df34
	cmp     r0, #0x0
	beq     branch_20640c0
	mov     r0, r5
	bl      Function_2062f30
	cmp     r0, #0x0
	bne     branch_20640d0
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_20640c0: @ 20640c0 :thumb
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	bl      Function_205db6c
	cmp     r0, #0x0
	beq     branch_20640d0
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_20640d0: @ 20640d0 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x20640d4


.thumb
Function_20640d4: @ 20640d4 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	bl      Function_205df58
	cmp     r0, #0x0
	beq     branch_20640f4
	mov     r0, r5
	bl      Function_2062f30
	cmp     r0, #0x0
	bne     branch_2064104
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_20640f4: @ 20640f4 :thumb
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	bl      Function_205dd18
	cmp     r0, #0x0
	beq     branch_2064104
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_2064104: @ 2064104 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2064108


.thumb
Function_2064108: @ 2064108 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	bl      Function_205df58
	cmp     r0, #0x0
	beq     branch_2064128
	mov     r0, r5
	bl      Function_2062f30
	cmp     r0, #0x0
	bne     branch_2064138
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_2064128: @ 2064128 :thumb
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	bl      Function_205dd38
	cmp     r0, #0x0
	beq     branch_2064138
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_2064138: @ 2064138 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x206413c


.thumb
Function_206413c: @ 206413c :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_2062f30
	cmp     r0, #0x1
	bne     branch_2064158
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	bl      Function_205defc
	cmp     r0, #0x1
	bne     branch_2064158
	mov     r0, #0x1
	pop     {r4,pc}

branch_2064158: @ 2064158 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x206415c


.thumb
Function_206415c: @ 206415c :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_2062f30
	cmp     r0, #0x1
	bne     branch_2064178
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	bl      Function_205df64
	cmp     r0, #0x1
	bne     branch_2064178
	mov     r0, #0x1
	pop     {r4,pc}

branch_2064178: @ 2064178 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x206417c


.thumb
Function_206417c: @ 206417c :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_2062f30
	cmp     r0, #0x1
	bne     branch_2064198
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	bl      Function_205df78
	cmp     r0, #0x1
	bne     branch_2064198
	mov     r0, #0x1
	pop     {r4,pc}

branch_2064198: @ 2064198 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x206419c


/* Input:
r0: Orientation
*/
.thumb
.globl GetWalkPositionXChange
GetWalkPositionXChange: @ 206419c :thumb
	lsl     r1, r0, #2
	ldr     r0, =Unknown_20ee75c
	ldr     r0, [r0, r1]
	bx      lr
@ 0x20641a4

.pool



thumb_func_start GetWalkPositionYChange
GetWalkPositionYChange: @ 20641a8 :thumb
	lsl     r1, r0, #2
	ldr     r0, =Unknown_20ee78c
	ldr     r0, [r0, r1]
	bx      lr
@ 0x20641b0

.pool
thumb_func_end GetWalkPositionYChange



/* Input:
r0: PtrToSpriteStruct
r1: Orientation
*/
thumb_func_start MoveSpriteForWalk
MoveSpriteForWalk: @ 20641b4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      LoadSpritePositionX
	mov     r1, r0
	mov     r0, r5
	bl      SetSpriteX2

	mov     r0, r5
	bl      LoadSpritePositionZ
	mov     r1, r0
	mov     r0, r5
	bl      SetSpriteZ2

	mov     r0, r5
	bl      LoadSpritePositionY
	mov     r1, r0
	mov     r0, r5
	bl      SetSpriteY2

	mov     r0, r4
	bl      GetWalkPositionXChange
	mov     r1, r0
	mov     r0, r5
	bl      AddSpritePositionX

	mov     r0, r5
	mov     r1, #0x0
	bl      AddSpritePositionZ

	mov     r0, r4
	bl      GetWalkPositionYChange
	mov     r1, r0
	mov     r0, r5
	bl      AddSpritePositionY
	pop     {r3-r5,pc}
thumb_func_end MoveSpriteForWalk


thumb_func_start CopySpritePositionsFromOldToNew
CopySpritePositionsFromOldToNew: @ 2064208 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      LoadSpritePositionX
	mov     r1, r0
	mov     r0, r4
	bl      SetSpriteX2

	mov     r0, r4
	bl      LoadSpritePositionZ
	mov     r1, r0
	mov     r0, r4
	bl      SetSpriteZ2

	mov     r0, r4
	bl      LoadSpritePositionY
	mov     r1, r0
	mov     r0, r4
	bl      SetSpriteY2
	pop     {r4,pc}
thumb_func_end CopySpritePositionsFromOldToNew


.align 2, 0
.thumb
.globl Function_2064238
Function_2064238: @ 2064238 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r4, r0
	bl      LoadSpritePositionX
	mov     r6, r0
	mov     r0, r5
	bl      GetWalkPositionXChange
	mov     r7, r0

	mov     r0, r4
	bl      LoadSpritePositionY
	str     r0, [sp, #0x0]
	mov     r0, r5
	bl      GetWalkPositionYChange
	mov     r5, r0

	mov     r0, r4
	bl      GetSpriteSpriteListFirstSprite
	ldr     r2, [sp, #0x0]
	add     r1, r6, r7
	add     r2, r2, r5
	bl      Function_2054f94
	pop     {r3-r7,pc}
@ 0x206426e


.align 2, 0
.thumb
Function_2064270: @ 2064270 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r1
	add     r1, sp, #0x0
	mov     r5, r0
	bl      CopySprite70Struct
	ldr     r1, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	add     r0, r1, r0
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	ldr     r0, [r4, #0x4]
	add     r0, r1, r0
	str     r0, [sp, #0x4]
	ldr     r1, [sp, #0x8]
	ldr     r0, [r4, #0x8]
	add     r0, r1, r0
	str     r0, [sp, #0x8]
	mov     r0, r5
	add     r1, sp, #0x0
	bl      CopyToSprite70Struct
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x20642a2


/* Input:
r0: PtrToSpriteStruct
r1: Orientation
r2: delta position
*/
thumb_func_start Movement_AddDeltaPositionToSprite70
Movement_AddDeltaPositionToSprite70: @ 20642a4 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r1
	add     r1, sp, #0x0
	mov     r6, r0
	mov     r4, r2
	bl      CopySprite70Struct
	cmp     r5, #0x3
	bhi     branch_20642ea

	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x20642c4

Jumppoints_20642c4:
.hword addDeltaPositionUp - Jumppoints_20642c4 - 2
.hword addDeltaPositionDown - Jumppoints_20642c4 - 2
.hword addDeltaPositionLeft - Jumppoints_20642c4 - 2
.hword addDeltaPositionRight - Jumppoints_20642c4 - 2

.thumb
addDeltaPositionUp: @ 20642cc :thumb
	ldr     r0, [sp, #0x8]
	sub     r0, r0, r4
	str     r0, [sp, #0x8]
	b       branch_20642ea

addDeltaPositionDown: @ 20642d4 :thumb
	ldr     r0, [sp, #0x8]
	add     r0, r0, r4
	str     r0, [sp, #0x8]
	b       branch_20642ea

addDeltaPositionLeft: @ 20642dc :thumb
	ldr     r0, [sp, #0x0]
	sub     r0, r0, r4
	str     r0, [sp, #0x0]
	b       branch_20642ea

addDeltaPositionRight: @ 20642e4 :thumb
	ldr     r0, [sp, #0x0]
	add     r0, r0, r4
	str     r0, [sp, #0x0]
branch_20642ea: @ 20642ea :thumb
	mov     r0, r6
	add     r1, sp, #0x0
	bl      CopyToSprite70Struct
	add     sp, #0xc
	pop     {r3-r6,pc}
thumb_func_end Movement_AddDeltaPositionToSprite70


.align 2, 0
.thumb
.globl Function_20642f8
Function_20642f8: @ 20642f8 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	add     r1, sp, #0xc
	mov     r5, r0
	bl      CopySprite70Struct

	add     r3, sp, #0xc
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x0
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]

	mov     r0, r5
	bl      IsSetSpriteFlags800000
	cmp     r0, #0x1
	bne     branch_206432a
	mov     r1, #0x1
	mov     r0, r5
	lsl     r1, r1, #12 @ Sprite_Flags_1000
	bl      UnsetSpriteFlags
	add     sp, #0x18
	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_206432a: @ 206432a :thumb
	mov     r0, r5
	bl      IsSetSpriteFlags20000000
	mov     r4, r0

	mov     r0, r5
	bl      GetSpriteSpriteListFirstSprite

	add     r1, sp, #0x0
	mov     r2, r4
	bl      Function_20644d0
	mov     r4, r0
	cmp     r4, #0x1
	bne     branch_206437e
	ldr     r0, [sp, #0x4]
	add     r1, sp, #0xc
	str     r0, [sp, #0x10]
	mov     r0, r5
	bl      CopyToSprite70Struct

	mov     r0, r5
	bl      LoadSpritePositionZ
	mov     r1, r0
	mov     r0, r5
	bl      SetSpriteZ2

	ldr     r1, [sp, #0x10]
	mov     r0, r5
	asr     r2, r1, #3
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	asr     r1, r1, #12
	bl      SaveSpritePositionZ

	mov     r1, #0x1
	mov     r0, r5
	lsl     r1, r1, #12 @ Sprite_Flags_1000
	bl      UnsetSpriteFlags
	b       branch_2064388

branch_206437e: @ 206437e :thumb
	mov     r1, #0x1
	mov     r0, r5
	lsl     r1, r1, #12 @ Sprite_Flags_1000
	bl      SetSpriteFlags
branch_2064388: @ 2064388 :thumb
	mov     r0, r4
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x206438e


.align 2, 0
.thumb
Function_2064390: @ 2064390 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      Function_205df98
	mov     r6, r0
	mov     r0, r5
	mov     r4, r6
	bl      Function_2062fdc
	cmp     r0, #0x0
	bne     branch_20643e2
	mov     r0, r5
	bl      GetSpriteX2
	mov     r4, r0
	mov     r0, r5
	bl      GetSpriteY2
	mov     r6, r0
	mov     r0, r5
	bl      GetSpriteSpriteListFirstSprite
	mov     r1, r4
	mov     r2, r6
	mov     r7, r0
	bl      Function_2054f94
	mov     r6, r0
	mov     r0, r5
	bl      LoadSpritePositionX
	mov     r4, r0
	mov     r0, r5
	bl      LoadSpritePositionY
	mov     r2, r0
	mov     r0, r7
	mov     r1, r4
	bl      Function_2054f94
	mov     r4, r0
branch_20643e2: @ 20643e2 :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_2062bf0
	mov     r0, r5
	mov     r1, r4
	bl      Function_2062be0
	mov     r0, r4
	bl      Function_205df8c
	cmp     r0, #0x1
	bne     branch_206440a
	mov     r1, #0x2
	mov     r0, r5
	lsl     r1, r1, #10
	bl      SetSpriteFlags
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_206440a: @ 206440a :thumb
	mov     r1, #0x2
	mov     r0, r5
	lsl     r1, r1, #10
	bl      UnsetSpriteFlags
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2064418


.thumb
.globl Function_2064418
Function_2064418: @ 2064418 :thumb
	cmp     r0, #0x3
	bhi     branch_206444e
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2064428

Jumppoints_2064428:
.hword branch_2064430 - Jumppoints_2064428 - 2
.hword branch_2064438 - Jumppoints_2064428 - 2
.hword branch_2064440 - Jumppoints_2064428 - 2
.hword branch_2064448 - Jumppoints_2064428 - 2
.thumb
branch_2064430: @ 2064430 :thumb
	ldr     r0, [r1, #0x8]
	sub     r0, r0, r2
	str     r0, [r1, #0x8]
	bx      lr
@ 0x2064438

.thumb
branch_2064438: @ 2064438 :thumb
	ldr     r0, [r1, #0x8]
	add     r0, r0, r2
	str     r0, [r1, #0x8]
	bx      lr

branch_2064440: @ 2064440 :thumb
	ldr     r0, [r1, #0x0]
	sub     r0, r0, r2
	str     r0, [r1, #0x0]
	bx      lr

branch_2064448: @ 2064448 :thumb
	ldr     r0, [r1, #0x0]
	add     r0, r0, r2
	str     r0, [r1, #0x0]
branch_206444e: @ 206444e :thumb
	bx      lr
@ 0x2064450


.thumb
.globl Function_2064450
Function_2064450: @ 2064450 :thumb
	lsl     r3, r0, #16
	mov     r0, #0x2
	lsl     r0, r0, #14
	add     r3, r3, r0
	lsl     r1, r1, #16
	str     r3, [r2, #0x0]
	add     r0, r1, r0
	str     r0, [r2, #0x8]
	bx      lr
@ 0x2064462


.align 2, 0
.thumb
Function_2064464: @ 2064464 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      GetSpriteMovement
	sub     r0, #0x33
	cmp     r0, #0x3
	bhi     branch_2064478
	mov     r0, r4
	bl      CallSprite_bcCallback
branch_2064478: @ 2064478 :thumb
	pop     {r4,pc}
@ 0x206447a


thumb_func_start GetOppositeFaceDirection
GetOppositeFaceDirection: @ 206447c :thumb
	lsl     r1, r0, #2
	ldr     r0, =OppositeFaceDirection_Data
	ldr     r0, [r0, r1]
	bx      lr
@ 0x2064484

.pool
thumb_func_end GetOppositeFaceDirection




.thumb
Function_2064488: @ 2064488 :thumb
	cmp     r0, r2
	ble     branch_2064490
	mov     r0, #0x2
	bx      lr

branch_2064490: @ 2064490 :thumb
	cmp     r0, r2
	bge     branch_2064498
	mov     r0, #0x3
	bx      lr

branch_2064498: @ 2064498 :thumb
	cmp     r1, r3
	bgt     branch_20644a0
	mov     r0, #0x1
	bx      lr

branch_20644a0: @ 20644a0 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x20644a4


.thumb
.globl Function_20644a4
Function_20644a4: @ 20644a4 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r1
	add     r1, sp, #0x4
	str     r1, [sp, #0x0]
	ldr     r1, [r4, #0x4]
	ldr     r2, [r4, #0x0]
	ldr     r3, [r4, #0x8]
	bl      Function_2054fbc
	add     r1, sp, #0x4
	ldrb    r1, [r1, #0x0]
	cmp     r1, #0x0
	bne     branch_20644c6
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r4,pc}

branch_20644c6: @ 20644c6 :thumb
	str     r0, [r4, #0x4]
	mov     r0, #0x1
	add     sp, #0x8
	pop     {r4,pc}
@ 0x20644ce


.align 2, 0
.thumb
.globl Function_20644d0
Function_20644d0: @ 20644d0 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r1
	add     r1, sp, #0x4
	str     r1, [sp, #0x0]
	mov     r4, r2
	ldr     r1, [r5, #0x4]
	ldr     r2, [r5, #0x0]
	ldr     r3, [r5, #0x8]
	bl      Function_2054fbc
	add     r1, sp, #0x4
	ldrb    r1, [r1, #0x0]
	cmp     r1, #0x0
	bne     branch_20644f4
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_20644f4: @ 20644f4 :thumb
	cmp     r1, #0x2
	bne     branch_2064502
	cmp     r4, #0x0
	bne     branch_2064502
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_2064502: @ 2064502 :thumb
	str     r0, [r5, #0x4]
	mov     r0, #0x1
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x206450a


.align 2, 0
.thumb
Function_206450c: @ 206450c :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r1, #0x8
	mov     r5, r0
	bl      Function_2062a54
	mov     r4, r0
	mov     r1, #0x0
	ldr     r0, [pc, #0x18] @ 0x2064538, (=Unknown_20eea88)
	mvn     r1, r1
	bl      Function_206530c
	strh    r0, [r4, #0x2]
	mov     r0, r5
	mov     r1, #0x0
	str     r6, [r4, #0x4]
	bl      SetSpritea0
	mov     r0, r5
	bl      UnsetSpriteFlag_2
	pop     {r4-r6,pc}
@ 0x2064538

.word Unknown_20eea88 @ 0x2064538



.thumb
Function_206453c: @ 206453c :thumb
	ldr     r3, [pc, #0x4] @ 0x2064544, (=Function_206450c+1)
	mov     r1, #0x0
	bx      r3
@ 0x2064542

.align 2
.word Function_206450c+1 @ 0x2064544



.thumb
Function_2064548: @ 2064548 :thumb
	ldr     r3, [pc, #0x4] @ 0x2064550, (=Function_206450c+1)
	mov     r1, #0x1
	bx      r3
@ 0x206454e

.align 2
.word Function_206450c+1 @ 0x2064550



.thumb
Function_2064554: @ 2064554 :thumb
	ldr     r3, [pc, #0x4] @ 0x206455c, (=Function_206450c+1)
	mov     r1, #0x2
	bx      r3
@ 0x206455a

.align 2
.word Function_206450c+1 @ 0x206455c



.thumb
Function_2064560: @ 2064560 :thumb
	ldr     r3, [pc, #0x4] @ 0x2064568, (=Function_206450c+1)
	mov     r1, #0x3
	bx      r3
@ 0x2064566

.align 2
.word Function_206450c+1 @ 0x2064568



.thumb
Function_206456c: @ 206456c :thumb
	ldr     r3, [pc, #0x4] @ 0x2064574, (=Function_206450c+1)
	mov     r1, #0x4
	bx      r3
@ 0x2064572

.align 2
.word Function_206450c+1 @ 0x2064574



.thumb
Function_2064578: @ 2064578 :thumb
	ldr     r3, [pc, #0x4] @ 0x2064580, (=Function_206450c+1)
	mov     r1, #0x5
	bx      r3
@ 0x206457e

.align 2
.word Function_206450c+1 @ 0x2064580



.thumb
Function_2064584: @ 2064584 :thumb
	ldr     r3, [pc, #0x4] @ 0x206458c, (=Function_206450c+1)
	mov     r1, #0x6
	bx      r3
@ 0x206458a

.align 2
.word Function_206450c+1 @ 0x206458c



.thumb
Function_2064590: @ 2064590 :thumb
	ldr     r3, [pc, #0x4] @ 0x2064598, (=Function_206450c+1)
	mov     r1, #0x7
	bx      r3
@ 0x2064596

.align 2
.word Function_206450c+1 @ 0x2064598



.thumb
Function_206459c: @ 206459c :thumb
	ldr     r3, [pc, #0x4] @ 0x20645a4, (=Function_206450c+1)
	mov     r1, #0x8
	bx      r3
@ 0x20645a2

.align 2
.word Function_206450c+1 @ 0x20645a4



.thumb
Function_20645a8: @ 20645a8 :thumb
	ldr     r3, [pc, #0x4] @ 0x20645b0, (=Function_206450c+1)
	mov     r1, #0x9
	bx      r3
@ 0x20645ae

.align 2
.word Function_206450c+1 @ 0x20645b0



.thumb
Function_20645b4: @ 20645b4 :thumb
	ldr     r3, [pc, #0x4] @ 0x20645bc, (=Function_206450c+1)
	mov     r1, #0xa
	bx      r3
@ 0x20645ba

.align 2
.word Function_206450c+1 @ 0x20645bc



.thumb
Function_20645c0: @ 20645c0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_2062a78
	mov     r4, r0
	mov     r2, #0x0
	ldr     r1, [r4, #0x4]
	mov     r0, r5
	mvn     r2, r2
	bl      Function_2065448
	mov     r2, #0x0
	mov     r1, r0
	mvn     r2, r2
	cmp     r1, r2
	beq     branch_20645e8
	mov     r0, r5
	bl      ChangeSpriteFaceDirection_WithCheck
	b       branch_2064618
@ 0x20645e8

.thumb
branch_20645e8: @ 20645e8 :thumb
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_2064618
	mov     r0, #0x2
	ldsh    r1, [r4, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strh    r1, [r4, #0x2]
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	bgt     branch_2064618
	ldr     r0, [pc, #0x20] @ 0x2064620, (=Unknown_20eea88)
	mov     r1, r2
	bl      Function_206530c
	strh    r0, [r4, #0x2]
	mov     r1, #0x0
	ldr     r0, [r4, #0x4]
	mvn     r1, r1
	bl      Function_2065330
	mov     r1, r0
	mov     r0, r5
	bl      ChangeSpriteFaceDirection_WithCheck
branch_2064618: @ 2064618 :thumb
	mov     r0, r5
	bl      CopySpritePositionsFromOldToNew
	pop     {r3-r5,pc}
@ 0x2064620

.word Unknown_20eea88 @ 0x2064620



.thumb
Function_2064624: @ 2064624 :thumb
	bx      lr
@ 0x2064626


.align 2, 0
.thumb
Function_2064628: @ 2064628 :thumb
	push    {r3,lr}
	mov     r1, #0xc
	mov     r2, #0xb
	mov     r3, #0x0
	bl      Function_2064668
	pop     {r3,pc}
@ 0x2064636


.align 2, 0


.thumb
Function_2064638: @ 2064638 :thumb
	push    {r3,lr}
	mov     r1, #0xc
	mov     r2, r1
	mov     r3, #0x0
	bl      Function_2064668
	pop     {r3,pc}
@ 0x2064646


.align 2, 0


.thumb
Function_2064648: @ 2064648 :thumb
	push    {r3,lr}
	mov     r1, #0xc
	mov     r2, #0xd
	mov     r3, #0x0
	bl      Function_2064668
	pop     {r3,pc}
@ 0x2064656


.align 2, 0


.thumb
Function_2064658: @ 2064658 :thumb
	push    {r3,lr}
	mov     r1, #0xc
	mov     r2, #0xd
	mov     r3, #0x2
	bl      Function_2064668
	pop     {r3,pc}
@ 0x2064666


.align 2, 0


.thumb
Function_2064668: @ 2064668 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r7, r3
	mov     r1, #0x10
	mov     r5, r0
	mov     r6, r2
	bl      Function_2062a54
	str     r7, [r0, #0x4]
	str     r4, [r0, #0x8]
	str     r6, [r0, #0xc]
	mov     r0, r5
	mov     r1, #0x0
	bl      SetSpritea0
	mov     r0, r5
	bl      UnsetSpriteFlag_2
	pop     {r3-r7,pc}
@ 0x206468e


.align 2, 0
.thumb
Function_2064690: @ 2064690 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      Function_2062a78
	mov     r4, r0
	mov     r0, #0x0
	ldsh    r0, [r4, r0]
	cmp     r0, #0x4
	bhi     branch_2064798
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x20646ae

Jumppoints_20646ae:
.hword branch_20646b8 - Jumppoints_20646ae - 2
.hword branch_20646e2 - Jumppoints_20646ae - 2
.hword branch_2064700 - Jumppoints_20646ae - 2
.hword branch_2064716 - Jumppoints_20646ae - 2
.hword branch_2064784 - Jumppoints_20646ae - 2
.thumb
branch_20646b8: @ 20646b8 :thumb
	mov     r0, r5
	bl      UnsetSpriteFlag_2
	mov     r0, r5
	bl      UnsetSpriteFlag_8
	mov     r0, r5
	bl      LoadSpriteFaceDirection
	mov     r1, #0x0
	bl      Function_2065838
	mov     r1, r0
	mov     r0, r5
	bl      Function_2065668
	mov     r0, #0x0
	ldsh    r0, [r4, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	pop     {r4-r6,pc}

branch_20646e2: @ 20646e2 :thumb
	mov     r0, r5
	bl      ExecuteMovement
	cmp     r0, #0x0
	beq     branch_2064798
	mov     r1, #0x0
	ldr     r0, [pc, #0xac] @ 0x206479c, (=Unknown_20eea88)
	mvn     r1, r1
	bl      Function_206530c
	strh    r0, [r4, #0x2]
	mov     r0, #0x0
	ldsh    r0, [r4, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
branch_2064700: @ 2064700 :thumb
	mov     r0, #0x2
	ldsh    r1, [r4, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strh    r1, [r4, #0x2]
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_2064798
	mov     r0, #0x0
	ldsh    r0, [r4, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
.thumb
branch_2064716: @ 2064716 :thumb
	mov     r1, #0x0
	ldr     r0, [r4, #0xc]
	mvn     r1, r1
	bl      Function_2065330
	mov     r6, r0
	mov     r0, r5
	mov     r1, r6
	bl      ChangeBothSpriteFaceDirections
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x1
	bne     branch_2064742
	mov     r0, r5
	mov     r1, r6
	bl      Function_206489c
	cmp     r0, #0x0
	bne     branch_2064742
	mov     r0, #0x0
	strh    r0, [r4, #0x0]
	pop     {r4-r6,pc}
@ 0x2064742

.thumb
branch_2064742: @ 2064742 :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_2063ebc
	cmp     r0, #0x0
	beq     branch_2064766
	ldr     r1, [r4, #0x4]
	cmp     r1, #0x2
	bne     branch_2064760
	mov     r1, #0x1
	tst     r0, r1
	beq     branch_2064766
	mov     r0, #0x0
	strh    r0, [r4, #0x0]
	pop     {r4-r6,pc}
@ 0x2064760

.thumb
branch_2064760: @ 2064760 :thumb
	mov     r0, #0x0
	strh    r0, [r4, #0x0]
	pop     {r4-r6,pc}
@ 0x2064766

.thumb
branch_2064766: @ 2064766 :thumb
	ldr     r1, [r4, #0x8]
	mov     r0, r6
	bl      Function_2065838
	mov     r1, r0
	mov     r0, r5
	bl      Function_2065668
	mov     r0, r5
	bl      SetSpriteFlag_2
	mov     r0, #0x0
	ldsh    r0, [r4, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
.thumb
branch_2064784: @ 2064784 :thumb
	mov     r0, r5
	bl      ExecuteMovement
	cmp     r0, #0x0
	beq     branch_2064798
	mov     r0, r5
	bl      UnsetSpriteFlag_2
	mov     r0, #0x0
	strh    r0, [r4, #0x0]
branch_2064798: @ 2064798 :thumb
	pop     {r4-r6,pc}
@ 0x206479a

.align 2
.word Unknown_20eea88 @ 0x206479c



.thumb
Function_20647a0: @ 20647a0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	str     r0, [sp, #0x0]
	mov     r4, r1
	bl      Function_2062ff0
	mov     r6, r0
	ldr     r0, [sp, #0x0]
	bl      Function_2063000
	mov     r5, r0
	ldr     r0, [sp, #0x0]
	bl      GetSpriteMovementWidth
	mov     r7, r0
	ldr     r0, [sp, #0x0]
	bl      GetSpriteMovementLength
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	bl      GetSpriteMovement
	cmp     r0, #0xd
	bhi     branch_2064894
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x20647dc

Jumppoints_20647dc:
.hword branch_2064894 - Jumppoints_20647dc - 2
.hword branch_2064894 - Jumppoints_20647dc - 2
.hword branch_2064894 - Jumppoints_20647dc - 2
.hword branch_2064894 - Jumppoints_20647dc - 2
.hword branch_2064894 - Jumppoints_20647dc - 2
.hword branch_2064894 - Jumppoints_20647dc - 2
.hword branch_20647f8 - Jumppoints_20647dc - 2
.hword branch_206480a - Jumppoints_20647dc - 2
.hword branch_206481c - Jumppoints_20647dc - 2
.hword branch_206482e - Jumppoints_20647dc - 2
.hword branch_2064840 - Jumppoints_20647dc - 2
.hword branch_2064856 - Jumppoints_20647dc - 2
.hword branch_206486c - Jumppoints_20647dc - 2
.hword branch_2064880 - Jumppoints_20647dc - 2
.thumb
branch_20647f8: @ 20647f8 :thumb
	sub     r0, r6, r7
	str     r0, [r4, #0x0]
	ldr     r0, [sp, #0x4]
	str     r6, [r4, #0x8]
	sub     r0, r5, r0
	str     r0, [r4, #0x4]
	add     sp, #0x8
	str     r5, [r4, #0xc]
	pop     {r3-r7,pc}
@ 0x206480a

.thumb
branch_206480a: @ 206480a :thumb
	str     r6, [r4, #0x0]
	add     r0, r6, r7
	str     r0, [r4, #0x8]
	ldr     r0, [sp, #0x4]
	add     sp, #0x8
	sub     r0, r5, r0
	str     r0, [r4, #0x4]
	str     r5, [r4, #0xc]
	pop     {r3-r7,pc}
@ 0x206481c

.thumb
branch_206481c: @ 206481c :thumb
	sub     r0, r6, r7
	str     r0, [r4, #0x0]
	ldr     r0, [sp, #0x4]
	str     r6, [r4, #0x8]
	str     r5, [r4, #0x4]
	add     r0, r5, r0
	add     sp, #0x8
	str     r0, [r4, #0xc]
	pop     {r3-r7,pc}
@ 0x206482e

.thumb
branch_206482e: @ 206482e :thumb
	str     r6, [r4, #0x0]
	add     r0, r6, r7
	str     r0, [r4, #0x8]
	ldr     r0, [sp, #0x4]
	str     r5, [r4, #0x4]
	add     r0, r5, r0
	add     sp, #0x8
	str     r0, [r4, #0xc]
	pop     {r3-r7,pc}
@ 0x2064840

.thumb
branch_2064840: @ 2064840 :thumb
	sub     r0, r6, r7
	str     r0, [r4, #0x0]
	ldr     r0, [sp, #0x4]
	str     r6, [r4, #0x8]
	sub     r0, r5, r0
	str     r0, [r4, #0x4]
	ldr     r0, [sp, #0x4]
	add     sp, #0x8
	add     r0, r5, r0
	str     r0, [r4, #0xc]
	pop     {r3-r7,pc}
@ 0x2064856

.thumb
branch_2064856: @ 2064856 :thumb
	str     r6, [r4, #0x0]
	add     r0, r6, r7
	str     r0, [r4, #0x8]
	ldr     r0, [sp, #0x4]
	sub     r0, r5, r0
	str     r0, [r4, #0x4]
	ldr     r0, [sp, #0x4]
	add     sp, #0x8
	add     r0, r5, r0
	str     r0, [r4, #0xc]
	pop     {r3-r7,pc}
@ 0x206486c

.thumb
branch_206486c: @ 206486c :thumb
	sub     r0, r6, r7
	str     r0, [r4, #0x0]
	add     r0, r6, r7
	str     r0, [r4, #0x8]
	ldr     r0, [sp, #0x4]
	add     sp, #0x8
	sub     r0, r5, r0
	str     r0, [r4, #0x4]
	str     r5, [r4, #0xc]
	pop     {r3-r7,pc}
@ 0x2064880

.thumb
branch_2064880: @ 2064880 :thumb
	sub     r0, r6, r7
	str     r0, [r4, #0x0]
	add     r0, r6, r7
	str     r0, [r4, #0x8]
	ldr     r0, [sp, #0x4]
	str     r5, [r4, #0x4]
	add     r0, r5, r0
	add     sp, #0x8
	str     r0, [r4, #0xc]
	pop     {r3-r7,pc}
@ 0x2064894

.thumb
branch_2064894: @ 2064894 :thumb
	bl      ErrorHandling
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x206489c

.thumb
Function_206489c: @ 206489c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r6, r1
	mov     r5, r0
	add     r1, sp, #0x0
	bl      Function_20647a0
	mov     r0, r5
	bl      LoadSpritePositionX
	mov     r4, r0
	mov     r0, r6
	bl      GetWalkPositionXChange
	add     r4, r4, r0
	mov     r0, r5
	bl      LoadSpritePositionY
	mov     r5, r0
	mov     r0, r6
	bl      GetWalkPositionYChange
	add     r1, r5, r0
	ldr     r0, [sp, #0x0]
	cmp     r0, r4
	bgt     branch_20648d6
	ldr     r0, [sp, #0x8]
	cmp     r0, r4
	bge     branch_20648dc
.thumb
branch_20648d6: @ 20648d6 :thumb
	add     sp, #0x10
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x20648dc

.thumb
branch_20648dc: @ 20648dc :thumb
	ldr     r0, [sp, #0x4]
	cmp     r0, r1
	bgt     branch_20648e8
	ldr     r0, [sp, #0xc]
	cmp     r0, r1
	bge     branch_20648ee
.thumb
branch_20648e8: @ 20648e8 :thumb
	add     sp, #0x10
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x20648ee

.thumb
branch_20648ee: @ 20648ee :thumb
	mov     r0, #0x1
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x20648f4


.thumb
Function_20648f4: @ 20648f4 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r1, #0x8
	bl      Function_2062a54
	str     r4, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0x0
	bl      SetSpritea0
	mov     r0, r5
	bl      UnsetSpriteFlag_2
	mov     r0, r5
	bl      CopySpritePositionsFromOldToNew
	pop     {r3-r5,pc}
@ 0x2064918


.thumb
Function_2064918: @ 2064918 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_2062a78
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_206492c
	cmp     r0, #0x1
	pop     {r3-r5,pc}

branch_206492c: @ 206492c :thumb
	ldr     r1, [r4, #0x0]
	mov     r0, r5
	bl      ChangeSpriteFaceDirection_WithCheck
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r3-r5,pc}
@ 0x206493c


.thumb
Function_206493c: @ 206493c :thumb
	ldr     r3, [pc, #0x4] @ 0x2064944, (=Function_20648f4+1)
	mov     r1, #0x0
	bx      r3
@ 0x2064942

.align 2
.word Function_20648f4+1 @ 0x2064944



.thumb
Function_2064948: @ 2064948 :thumb
	ldr     r3, [pc, #0x4] @ 0x2064950, (=Function_20648f4+1)
	mov     r1, #0x1
	bx      r3
@ 0x206494e

.align 2
.word Function_20648f4+1 @ 0x2064950



.thumb
Function_2064954: @ 2064954 :thumb
	ldr     r3, [pc, #0x4] @ 0x206495c, (=Function_20648f4+1)
	mov     r1, #0x2
	bx      r3
@ 0x206495a

.align 2
.word Function_20648f4+1 @ 0x206495c



.thumb
Function_2064960: @ 2064960 :thumb
	ldr     r3, [pc, #0x4] @ 0x2064968, (=Function_20648f4+1)
	mov     r1, #0x3
	bx      r3
@ 0x2064966

.align 2
.word Function_20648f4+1 @ 0x2064968



.thumb
Function_206496c: @ 206496c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r1, #0x8
	bl      Function_2062a54
	strb    r4, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0x0
	bl      SetSpritea0
	mov     r0, r5
	bl      UnsetSpriteFlag_2
	mov     r0, r5
	bl      CopySpritePositionsFromOldToNew
	pop     {r3-r5,pc}
@ 0x2064990


.thumb
Function_2064990: @ 2064990 :thumb
	ldr     r3, [pc, #0x4] @ 0x2064998, (=Function_206496c+1)
	mov     r1, #0x2
	bx      r3
@ 0x2064996

.align 2
.word Function_206496c+1 @ 0x2064998



.thumb
Function_206499c: @ 206499c :thumb
	ldr     r3, [pc, #0x4] @ 0x20649a4, (=Function_206496c+1)
	mov     r1, #0x3
	bx      r3
@ 0x20649a2

.align 2
.word Function_206496c+1 @ 0x20649a4



.thumb
Function_20649a8: @ 20649a8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      Function_2062a78
	ldr     r6, [pc, #0x14] @ 0x20649c8, (=JumpTable_20ee900)
	mov     r4, r0
	mov     r7, #0x2
branch_20649b6: @ 20649b6 :thumb
	ldsb    r2, [r4, r7]
	mov     r0, r5
	mov     r1, r4
	lsl     r2, r2, #2
	ldr     r2, [r6, r2]
	blx     r2
	cmp     r0, #0x1
	beq     branch_20649b6
	pop     {r3-r7,pc}
@ 0x20649c8

.word JumpTable_20ee900 @ 0x20649c8



.thumb
Function_20649cc: @ 20649cc :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r1, #0x26
	mov     r2, r1
	sub     r2, #0x27
	mov     r5, r0
	bl      Function_2065448
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	bne     branch_20649ea
	mov     r0, r5
	bl      LoadSpriteFaceDirection
.thumb
branch_20649ea: @ 20649ea :thumb
	mov     r1, #0x0
	bl      Function_2065838
	mov     r1, r0
	mov     r0, r5
	bl      Function_2065668
	mov     r0, #0x1
	strb    r0, [r4, #0x2]
	pop     {r3-r5,pc}
@ 0x20649fe


.align 2, 0


.thumb
Function_2064a00: @ 2064a00 :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      ExecuteMovement
	cmp     r0, #0x0
	bne     branch_2064a10
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2064a10

.thumb
branch_2064a10: @ 2064a10 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	mov     r0, #0x2
	strb    r0, [r4, #0x2]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2064a1c

.thumb
Function_2064a1c: @ 2064a1c :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r1, [r4, #0x4]
	cmp     r1, #0x0
	beq     branch_2064a40
	mov     r1, #0x26
	mov     r2, r1
	sub     r2, #0x27
	bl      Function_2065448
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_2064a40
	mov     r0, #0x0
	strb    r0, [r4, #0x2]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2064a40

.thumb
branch_2064a40: @ 2064a40 :thumb
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	cmp     r0, #0x18
	bge     branch_2064a4e
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2064a4e

.thumb
branch_2064a4e: @ 2064a4e :thumb
	mov     r0, #0x3
	strb    r0, [r4, #0x2]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2064a56


.align 2, 0
.thumb
Function_2064a58: @ 2064a58 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	ldr     r3, [pc, #0x88] @ 0x2064ae8, (=Unknown_20eea24)
	add     r2, sp, #0x14
	mov     r7, r0
	mov     r6, r1
	ldmia   r3!, {r0,r1}
	mov     r5, r2
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	ldr     r4, [pc, #0x78] @ 0x2064aec, (=Unknown_20eea38)
	str     r0, [r2, #0x0]
	add     r3, sp, #0x0
	ldmia   r4!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r4, #0x0]
	str     r0, [r3, #0x0]
	mov     r0, #0x0
	ldsb    r0, [r6, r0]
	cmp     r0, #0x2
	beq     branch_2064a8e
	mov     r5, r2
.thumb
branch_2064a8e: @ 2064a8e :thumb
	mov     r0, r7
	bl      LoadSpriteFaceDirection
	mov     r4, #0x0
	ldr     r2, [r5, #0x0]
	.hword  0x1e61 @ sub r1, r4, #0x1
	cmp     r2, r1
	beq     branch_2064ab2
	mov     r1, r5
	.hword  0x1e62 @ sub r2, r4, #0x1
.thumb
branch_2064aa2: @ 2064aa2 :thumb
	ldr     r3, [r1, #0x0]
	cmp     r0, r3
	beq     branch_2064ab2
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r3, [r1, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r3, r2
	bne     branch_2064aa2
.thumb
branch_2064ab2: @ 2064ab2 :thumb
	lsl     r0, r4, #2
	ldr     r1, [r5, r0]
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r1, r0
	bne     branch_2064ac2
	bl      ErrorHandling
.thumb
branch_2064ac2: @ 2064ac2 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	lsl     r0, r4, #2
	ldr     r1, [r5, r0]
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r1, r0
	bne     branch_2064ad2
	mov     r4, #0x0
.thumb
branch_2064ad2: @ 2064ad2 :thumb
	lsl     r1, r4, #2
	ldr     r1, [r5, r1]
	mov     r0, r7
	bl      ChangeSpriteFaceDirection_WithCheck
	mov     r0, #0x0
	strb    r0, [r6, #0x2]
	mov     r0, #0x1
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x2064ae6

.align 2
.word Unknown_20eea24 @ 0x2064ae8
.word Unknown_20eea38 @ 0x2064aec



.thumb
Function_2064af0: @ 2064af0 :thumb
	ldr     r3, [pc, #0x4] @ 0x2064af8, (=Function_206496c+1)
	mov     r1, #0x3
	bx      r3
@ 0x2064af6

.align 2
.word Function_206496c+1 @ 0x2064af8



.thumb
Function_2064afc: @ 2064afc :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      Function_2062a78
	ldr     r6, [pc, #0x14] @ 0x2064b1c, (=JumpTable_20ee870)
	mov     r4, r0
	mov     r7, #0x2
branch_2064b0a: @ 2064b0a :thumb
	ldsb    r2, [r4, r7]
	mov     r0, r5
	mov     r1, r4
	lsl     r2, r2, #2
	ldr     r2, [r6, r2]
	blx     r2
	cmp     r0, #0x1
	beq     branch_2064b0a
	pop     {r3-r7,pc}
@ 0x2064b1c

.word JumpTable_20ee870 @ 0x2064b1c



.thumb
Function_2064b20: @ 2064b20 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      LoadSpriteFaceDirection
	mov     r1, #0x0
	bl      Function_2065838
	mov     r1, r0
	mov     r0, r5
	bl      Function_2065668
	mov     r0, #0x1
	strb    r0, [r4, #0x2]
	pop     {r3-r5,pc}
@ 0x2064b3e


.align 2, 0


.thumb
Function_2064b40: @ 2064b40 :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      ExecuteMovement
	cmp     r0, #0x0
	bne     branch_2064b50
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2064b50

.thumb
branch_2064b50: @ 2064b50 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	mov     r0, #0x2
	strb    r0, [r4, #0x2]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2064b5c

.thumb
Function_2064b5c: @ 2064b5c :thumb
	ldr     r0, [r1, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r1, #0x4]
	cmp     r0, #0x18
	bge     branch_2064b6a
	mov     r0, #0x0
	bx      lr
@ 0x2064b6a

.thumb
branch_2064b6a: @ 2064b6a :thumb
	mov     r0, #0x3
	strb    r0, [r1, #0x2]
	mov     r0, #0x1
	bx      lr
@ 0x2064b72


.align 2, 0
.thumb
Function_2064b74: @ 2064b74 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	ldr     r3, [pc, #0xa4] @ 0x2064c20, (=Unknown_20eea4c)
	add     r2, sp, #0x14
	mov     r7, r0
	mov     r6, r1
	ldmia   r3!, {r0,r1}
	mov     r5, r2
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	ldr     r3, [pc, #0x94] @ 0x2064c24, (=Unknown_20eea60)
	str     r0, [r2, #0x0]
	add     r2, sp, #0x0
	ldmia   r3!, {r0,r1}
	mov     r4, r2
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	mov     r0, #0x0
	ldsb    r0, [r6, r0]
	cmp     r0, #0x2
	beq     branch_2064baa
	mov     r5, r4
.thumb
branch_2064baa: @ 2064baa :thumb
	mov     r0, r7
	bl      LoadSpriteFaceDirection
	mov     r4, #0x0
	ldr     r2, [r5, #0x0]
	.hword  0x1e61 @ sub r1, r4, #0x1
	cmp     r2, r1
	beq     branch_2064bce
	mov     r1, r5
	.hword  0x1e62 @ sub r2, r4, #0x1
.thumb
branch_2064bbe: @ 2064bbe :thumb
	ldr     r3, [r1, #0x0]
	cmp     r0, r3
	beq     branch_2064bce
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r3, [r1, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r3, r2
	bne     branch_2064bbe
.thumb
branch_2064bce: @ 2064bce :thumb
	lsl     r0, r4, #2
	ldr     r1, [r5, r0]
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r1, r0
	bne     branch_2064bde
	bl      ErrorHandling
.thumb
branch_2064bde: @ 2064bde :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	lsl     r0, r4, #2
	ldr     r1, [r5, r0]
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r1, r0
	bne     branch_2064bee
	mov     r4, #0x0
.thumb
branch_2064bee: @ 2064bee :thumb
	lsl     r1, r4, #2
	ldr     r1, [r5, r1]
	mov     r0, r7
	bl      ChangeSpriteFaceDirection_WithCheck
	mov     r0, r7
	bl      LoadSpriteFaceDirection
	mov     r4, r0
	mov     r0, r7
	bl      GetSpriteInitOrientation
	cmp     r4, r0
	bne     branch_2064c14
	mov     r0, #0x0
	ldsb    r0, [r6, r0]
	bl      GetOppositeFaceDirection
	strb    r0, [r6, #0x0]
branch_2064c14: @ 2064c14 :thumb
	mov     r0, #0x0
	strb    r0, [r6, #0x2]
	mov     r0, #0x1
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x2064c1e

.align 2
.word Unknown_20eea4c @ 0x2064c20
.word Unknown_20eea60 @ 0x2064c24



.thumb
Function_2064c28: @ 2064c28 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r1, #0x8
	bl      Function_2062a54
	mov     r4, r0
	mov     r0, r5
	bl      Function_206553c
	cmp     r0, #0x1
	bne     branch_2064c46
	mov     r0, r5
	add     r1, r4, #0x4
	bl      Function_2065550
branch_2064c46: @ 2064c46 :thumb
	pop     {r3-r5,pc}
@ 0x2064c48


.thumb
Function_2064c48: @ 2064c48 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      Function_2062a78
	ldr     r6, [pc, #0x14] @ 0x2064c68, (=JumpTable_20ee814)
	mov     r4, r0
	mov     r7, #0x0
branch_2064c56: @ 2064c56 :thumb
	ldsh    r2, [r4, r7]
	mov     r0, r5
	mov     r1, r4
	lsl     r2, r2, #2
	ldr     r2, [r6, r2]
	blx     r2
	cmp     r0, #0x1
	beq     branch_2064c56
	pop     {r3-r7,pc}
@ 0x2064c68

.word JumpTable_20ee814 @ 0x2064c68



.thumb
Function_2064c6c: @ 2064c6c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	bl      GetSpriteInitOrientation
	mov     r1, #0x2
	ldsh    r1, [r4, r1]
	mov     r6, r0
	cmp     r1, #0x1
	bne     branch_2064c86
	bl      GetOppositeFaceDirection
	mov     r6, r0
branch_2064c86: @ 2064c86 :thumb
	mov     r0, r5
	mov     r1, r6
	bl      ChangeSpriteFace2Direction
	mov     r0, r5
	bl      Function_206553c
	cmp     r0, #0x0
	bne     branch_2064ca0
	mov     r0, r5
	mov     r1, r6
	bl      ChangeSpriteFaceDirection_WithCheck
.thumb
branch_2064ca0: @ 2064ca0 :thumb
	mov     r0, #0x1
	strh    r0, [r4, #0x0]
	pop     {r4-r6,pc}
@ 0x2064ca6


.align 2, 0


.thumb
Function_2064ca8: @ 2064ca8 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r1, #0x2
	ldsh    r1, [r6, r1]
	mov     r5, r0
	cmp     r1, #0x0
	beq     branch_2064d06
	bl      Function_2062ff0
	mov     r7, r0
	mov     r0, r5
	bl      Function_2063000
	str     r0, [sp, #0x0]
	mov     r0, r5
	bl      LoadSpritePositionX
	mov     r4, r0
	mov     r0, r5
	bl      LoadSpritePositionY
	cmp     r7, r4
	bne     branch_2064d06
	ldr     r1, [sp, #0x0]
	cmp     r1, r0
	bne     branch_2064d06
	mov     r0, r5
	bl      LoadSpriteFace2Direction
	bl      GetOppositeFaceDirection
	mov     r4, r0
	mov     r0, r5
	mov     r1, r4
	bl      ChangeSpriteFace2Direction
	mov     r0, r5
	bl      Function_206553c
	cmp     r0, #0x0
	bne     branch_2064d02
	mov     r0, r5
	mov     r1, r4
	bl      ChangeSpriteFaceDirection_WithCheck
.thumb
branch_2064d02: @ 2064d02 :thumb
	mov     r0, #0x0
	strh    r0, [r6, #0x2]
.thumb
branch_2064d06: @ 2064d06 :thumb
	mov     r0, r5
	bl      LoadSpriteFace2Direction
	mov     r4, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_2063ebc
	mov     r1, #0x1
	mov     r2, r0
	tst     r2, r1
	beq     branch_2064d30
	mov     r0, r4
	strh    r1, [r6, #0x2]
	bl      GetOppositeFaceDirection
	mov     r4, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_2063ebc
branch_2064d30: @ 2064d30 :thumb
	mov     r1, #0xc
	cmp     r0, #0x0
	beq     branch_2064d38
	mov     r1, #0x20
branch_2064d38: @ 2064d38 :thumb
	mov     r0, r4
	bl      Function_2065838
	mov     r1, r0
	mov     r0, r5
	bl      Function_2065668
	mov     r0, r5
	bl      Function_206553c
	cmp     r0, #0x1
	bne     branch_2064d58
	mov     r0, r5
	add     r1, r6, #0x4
	bl      Function_2065568
.thumb
branch_2064d58: @ 2064d58 :thumb
	mov     r0, r5
	bl      SetSpriteFlag_2
	mov     r0, #0x2
	strh    r0, [r6, #0x0]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2064d66


.align 2, 0


.thumb
Function_2064d68: @ 2064d68 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      ExecuteMovement
	cmp     r0, #0x1
	bne     branch_2064d92
	mov     r0, r5
	bl      UnsetSpriteFlag_2
	mov     r0, r5
	bl      Function_206553c
	cmp     r0, #0x1
	bne     branch_2064d8e
	mov     r0, r5
	add     r1, r4, #0x4
	bl      Function_20655e4
.thumb
branch_2064d8e: @ 2064d8e :thumb
	mov     r0, #0x0
	strh    r0, [r4, #0x0]
.thumb
branch_2064d92: @ 2064d92 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2064d96


.align 2, 0


.thumb
Function_2064d98: @ 2064d98 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r1, #0xc
	mov     r5, r0
	mov     r7, r2
	str     r3, [sp, #0x0]
	bl      Function_2062a54
	mov     r4, r0
	strb    r6, [r4, #0x2]
	ldr     r0, [sp, #0x0]
	strb    r7, [r4, #0x3]
	str     r0, [r4, #0x4]
	mov     r0, r5
	bl      Function_206553c
	cmp     r0, #0x1
	bne     branch_2064dc6
	add     r4, #0x8
	mov     r0, r5
	mov     r1, r4
	bl      Function_2065550
.thumb
branch_2064dc6: @ 2064dc6 :thumb
	pop     {r3-r7,pc}
@ 0x2064dc8

.thumb
Function_2064dc8: @ 2064dc8 :thumb
	push    {r3,lr}
	mov     r1, #0x2
	mov     r2, #0x0
	mov     r3, #0xe
	bl      Function_2064d98
	pop     {r3,pc}
@ 0x2064dd6


.align 2, 0


.thumb
Function_2064dd8: @ 2064dd8 :thumb
	push    {r3,lr}
	mov     r1, #0x2
	mov     r2, #0x0
	mov     r3, #0xf
	bl      Function_2064d98
	pop     {r3,pc}
@ 0x2064de6


.align 2, 0


.thumb
Function_2064de8: @ 2064de8 :thumb
	push    {r3,lr}
	mov     r1, #0x2
	mov     r2, #0x1
	mov     r3, #0x10
	bl      Function_2064d98
	pop     {r3,pc}
@ 0x2064df6


.align 2, 0


.thumb
Function_2064df8: @ 2064df8 :thumb
	push    {r3,lr}
	mov     r1, #0x2
	mov     r2, #0x1
	mov     r3, #0x11
	bl      Function_2064d98
	pop     {r3,pc}
@ 0x2064e06


.align 2, 0


.thumb
Function_2064e08: @ 2064e08 :thumb
	push    {r3,lr}
	mov     r1, #0x2
	mov     r2, #0x0
	mov     r3, #0x12
	bl      Function_2064d98
	pop     {r3,pc}
@ 0x2064e16


.align 2, 0


.thumb
Function_2064e18: @ 2064e18 :thumb
	push    {r3,lr}
	mov     r1, #0x2
	mov     r2, #0x0
	mov     r3, #0x13
	bl      Function_2064d98
	pop     {r3,pc}
@ 0x2064e26


.align 2, 0


.thumb
Function_2064e28: @ 2064e28 :thumb
	push    {r3,lr}
	mov     r1, #0x2
	mov     r2, #0x1
	mov     r3, #0x14
	bl      Function_2064d98
	pop     {r3,pc}
@ 0x2064e36


.align 2, 0


.thumb
Function_2064e38: @ 2064e38 :thumb
	push    {r3,lr}
	mov     r1, #0x2
	mov     r2, #0x1
	mov     r3, #0x15
	bl      Function_2064d98
	pop     {r3,pc}
@ 0x2064e46


.align 2, 0


.thumb
Function_2064e48: @ 2064e48 :thumb
	push    {r3,lr}
	mov     r1, #0x2
	mov     r2, #0x1
	mov     r3, #0x16
	bl      Function_2064d98
	pop     {r3,pc}
@ 0x2064e56


.align 2, 0


.thumb
Function_2064e58: @ 2064e58 :thumb
	push    {r3,lr}
	mov     r1, #0x2
	mov     r2, #0x1
	mov     r3, #0x17
	bl      Function_2064d98
	pop     {r3,pc}
@ 0x2064e66


.align 2, 0


.thumb
Function_2064e68: @ 2064e68 :thumb
	push    {r3,lr}
	mov     r1, #0x2
	mov     r2, #0x0
	mov     r3, #0x18
	bl      Function_2064d98
	pop     {r3,pc}
@ 0x2064e76


.align 2, 0


.thumb
Function_2064e78: @ 2064e78 :thumb
	push    {r3,lr}
	mov     r1, #0x2
	mov     r2, #0x0
	mov     r3, #0x19
	bl      Function_2064d98
	pop     {r3,pc}
@ 0x2064e86


.align 2, 0


.thumb
Function_2064e88: @ 2064e88 :thumb
	push    {r3,lr}
	mov     r1, #0x2
	mov     r2, #0x1
	mov     r3, #0x1a
	bl      Function_2064d98
	pop     {r3,pc}
@ 0x2064e96


.align 2, 0


.thumb
Function_2064e98: @ 2064e98 :thumb
	push    {r3,lr}
	mov     r1, #0x2
	mov     r2, #0x1
	mov     r3, #0x1b
	bl      Function_2064d98
	pop     {r3,pc}
@ 0x2064ea6


.align 2, 0


.thumb
Function_2064ea8: @ 2064ea8 :thumb
	push    {r3,lr}
	mov     r1, #0x2
	mov     r2, #0x0
	mov     r3, #0x1c
	bl      Function_2064d98
	pop     {r3,pc}
@ 0x2064eb6


.align 2, 0


.thumb
Function_2064eb8: @ 2064eb8 :thumb
	push    {r3,lr}
	mov     r1, #0x2
	mov     r2, #0x0
	mov     r3, #0x1d
	bl      Function_2064d98
	pop     {r3,pc}
@ 0x2064ec6


.align 2, 0
.thumb
Function_2064ec8: @ 2064ec8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      Function_2062a78
	ldr     r6, [pc, #0x14] @ 0x2064ee8, (=JumpTable_20ee7ac)
	mov     r4, r0
branch_2064ed4: @ 2064ed4 :thumb
	ldrb    r2, [r4, #0x0]
	mov     r0, r5
	mov     r1, r4
	lsl     r2, r2, #2
	ldr     r2, [r6, r2]
	blx     r2
	cmp     r0, #0x1
	beq     branch_2064ed4
	pop     {r4-r6,pc}
@ 0x2064ee6

.align 2
.word JumpTable_20ee7ac @ 0x2064ee8



.thumb
Function_2064eec: @ 2064eec :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	ldrb    r2, [r4, #0x1]
	ldrb    r1, [r4, #0x2]
	mov     r6, r0
	cmp     r2, r1
	bne     branch_2064f2e
	ldrb    r1, [r4, #0x3]
	cmp     r1, #0x0
	bne     branch_2064f18
	bl      Function_2062ff0
	mov     r5, r0
	mov     r0, r6
	bl      LoadSpritePositionX
	cmp     r5, r0
	bne     branch_2064f2e
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_2064f2e

branch_2064f18: @ 2064f18 :thumb
	bl      Function_2063000
	mov     r5, r0
	mov     r0, r6
	bl      LoadSpritePositionY
	cmp     r5, r0
	bne     branch_2064f2e
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
branch_2064f2e: @ 2064f2e :thumb
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x3
	bne     branch_2064f60
	mov     r0, r6
	bl      Function_2062ff0
	mov     r7, r0
	mov     r0, r6
	bl      Function_2063000
	str     r0, [sp, #0x0]
	mov     r0, r6
	bl      LoadSpritePositionX
	mov     r5, r0
	mov     r0, r6
	bl      LoadSpritePositionY
	cmp     r7, r5
	bne     branch_2064f60
	ldr     r1, [sp, #0x0]
	cmp     r1, r0
	bne     branch_2064f60
	mov     r0, #0x0
	strb    r0, [r4, #0x1]
branch_2064f60: @ 2064f60 :thumb
	ldr     r0, [r4, #0x4]
	bl      Function_2065358
	mov     r7, r0
	ldrb    r0, [r4, #0x1]
	lsl     r0, r0, #2
	ldr     r5, [r7, r0]
	mov     r0, r6
	mov     r1, r5
	bl      ChangeSpriteFace2Direction
	mov     r0, r6
	bl      Function_206553c
	cmp     r0, #0x0
	bne     branch_2064f88
	mov     r0, r6
	mov     r1, r5
	bl      ChangeSpriteFaceDirection_WithCheck
branch_2064f88: @ 2064f88 :thumb
	mov     r0, r6
	mov     r1, r5
	bl      Function_2063ebc
	mov     r1, #0x1
	tst     r1, r0
	beq     branch_2064fc4
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	ldrb    r0, [r4, #0x1]
	lsl     r0, r0, #2
	ldr     r5, [r7, r0]
	mov     r0, r6
	mov     r1, r5
	bl      ChangeSpriteFace2Direction
	mov     r0, r6
	bl      Function_206553c
	cmp     r0, #0x0
	bne     branch_2064fbc
	mov     r0, r6
	mov     r1, r5
	bl      ChangeSpriteFaceDirection_WithCheck
branch_2064fbc: @ 2064fbc :thumb
	mov     r0, r6
	mov     r1, r5
	bl      Function_2063ebc
branch_2064fc4: @ 2064fc4 :thumb
	mov     r1, #0xc
	cmp     r0, #0x0
	beq     branch_2064fcc
	mov     r1, #0x20
branch_2064fcc: @ 2064fcc :thumb
	mov     r0, r5
	bl      Function_2065838
	mov     r1, r0
	mov     r0, r6
	bl      Function_2065668
	mov     r0, r6
	bl      Function_206553c
	cmp     r0, #0x1
	bne     branch_2064fee
	mov     r1, r4
	mov     r0, r6
	add     r1, #0x8
	bl      Function_2065568
branch_2064fee: @ 2064fee :thumb
	mov     r0, r6
	bl      SetSpriteFlag_2
	mov     r0, #0x1
	strb    r0, [r4, #0x0]
	pop     {r3-r7,pc}
@ 0x2064ffa


.align 2, 0
.thumb
Function_2064ffc: @ 2064ffc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      ExecuteMovement
	cmp     r0, #0x1
	bne     branch_2065028
	mov     r0, r5
	bl      UnsetSpriteFlag_2
	mov     r0, r5
	bl      Function_206553c
	cmp     r0, #0x1
	bne     branch_2065024
	mov     r1, r4
	mov     r0, r5
	add     r1, #0x8
	bl      Function_20655e4
.thumb
branch_2065024: @ 2065024 :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
.thumb
branch_2065028: @ 2065028 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x206502c

.thumb
Function_206502c: @ 206502c :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r1, #0xc
	mov     r5, r0
	mov     r7, r2
	str     r3, [sp, #0x0]
	bl      Function_2062a54
	mov     r4, r0
	strb    r6, [r4, #0x2]
	ldr     r0, [sp, #0x0]
	strb    r7, [r4, #0x3]
	strb    r0, [r4, #0x4]
	mov     r0, r5
	bl      Function_206553c
	cmp     r0, #0x1
	bne     branch_206505a
	add     r4, #0x8
	mov     r0, r5
	mov     r1, r4
	bl      Function_2065550
.thumb
branch_206505a: @ 206505a :thumb
	pop     {r3-r7,pc}
@ 0x206505c

.thumb
Function_206505c: @ 206505c :thumb
	push    {r3,lr}
	mov     r1, #0x2
	mov     r2, #0x1
	mov     r3, #0x1e
	bl      Function_206502c
	pop     {r3,pc}
@ 0x206506a


.align 2, 0


.thumb
Function_206506c: @ 206506c :thumb
	push    {r3,lr}
	mov     r1, #0x2
	mov     r2, #0x1
	mov     r3, #0x1f
	bl      Function_206502c
	pop     {r3,pc}
@ 0x206507a


.align 2, 0


.thumb
Function_206507c: @ 206507c :thumb
	push    {r3,lr}
	mov     r1, #0x2
	mov     r2, #0x0
	mov     r3, #0x20
	bl      Function_206502c
	pop     {r3,pc}
@ 0x206508a


.align 2, 0


.thumb
Function_206508c: @ 206508c :thumb
	push    {r3,lr}
	mov     r1, #0x2
	mov     r2, #0x0
	mov     r3, #0x21
	bl      Function_206502c
	pop     {r3,pc}
@ 0x206509a


.align 2, 0


.thumb
Function_206509c: @ 206509c :thumb
	push    {r3,lr}
	mov     r1, #0x2
	mov     r2, #0x1
	mov     r3, #0x22
	bl      Function_206502c
	pop     {r3,pc}
@ 0x20650aa


.align 2, 0


.thumb
Function_20650ac: @ 20650ac :thumb
	push    {r3,lr}
	mov     r1, #0x2
	mov     r2, #0x1
	mov     r3, #0x23
	bl      Function_206502c
	pop     {r3,pc}
@ 0x20650ba


.align 2, 0


.thumb
Function_20650bc: @ 20650bc :thumb
	push    {r3,lr}
	mov     r1, #0x2
	mov     r2, #0x0
	mov     r3, #0x24
	bl      Function_206502c
	pop     {r3,pc}
@ 0x20650ca


.align 2, 0


.thumb
Function_20650cc: @ 20650cc :thumb
	push    {r3,lr}
	mov     r1, #0x2
	mov     r2, #0x0
	mov     r3, #0x25
	bl      Function_206502c
	pop     {r3,pc}
@ 0x20650da


.align 2, 0
.thumb
Function_20650dc: @ 20650dc :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      Function_2062a78
	ldr     r6, [pc, #0x14] @ 0x20650fc, (=JumpTable_20ee820)
	mov     r4, r0
branch_20650e8: @ 20650e8 :thumb
	ldrb    r2, [r4, #0x0]
	mov     r0, r5
	mov     r1, r4
	lsl     r2, r2, #2
	ldr     r2, [r6, r2]
	blx     r2
	cmp     r0, #0x1
	beq     branch_20650e8
	pop     {r4-r6,pc}
@ 0x20650fa

.align 2
.word JumpTable_20ee820 @ 0x20650fc



.thumb
Function_2065100: @ 2065100 :thumb
	ldrb    r1, [r0, #0x5]
	cmp     r1, #0x1
	bne     branch_206511a
	mov     r1, #0x1
	ldsb    r2, [r0, r1]
	.hword  0x1e52 @ sub r2, r2, #0x1
	strb    r2, [r0, #0x1]
	ldsb    r1, [r0, r1]
	cmp     r1, #0x0
	bge     branch_2065122
	mov     r1, #0x3
	strb    r1, [r0, #0x1]
	bx      lr
@ 0x206511a

.thumb
branch_206511a: @ 206511a :thumb
	mov     r1, #0x1
	ldsb    r1, [r0, r1]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r0, #0x1]
.thumb
branch_2065122: @ 2065122 :thumb
	bx      lr
@ 0x2065124

.thumb
Function_2065124: @ 2065124 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r1
	bl      GetSpriteTrainer
	cmp     r0, #0xa
	bne     branch_2065180
	mov     r0, r5
	bl      GetSpriteSpriteListFirstSprite
	bl      Function_205ef3c
	mov     r7, r0
	mov     r0, r5
	bl      LoadSpriteFaceDirection
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_20629d8
	mov     r3, r0
	mov     r0, r5
	mov     r1, r7
	mov     r2, r6
	bl      Function_2067d58
	mov     r7, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r7, r0
	beq     branch_2065180
	mov     r0, r6
	mov     r1, #0x30
	bl      Function_2065838
	mov     r0, r5
	mov     r1, r7
	bl      Function_2065668
	mov     r0, r5
	bl      SetSpriteFlag_2
	mov     r0, #0x1
	strb    r0, [r4, #0x0]
	pop     {r3-r7,pc}
@ 0x2065180

.thumb
branch_2065180: @ 2065180 :thumb
	mov     r0, #0x2
	strb    r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2065188

.thumb
Function_2065188: @ 2065188 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      ExecuteMovement
	cmp     r0, #0x1
	bne     branch_20651a0
	mov     r0, r5
	bl      UnsetSpriteFlag_2
	mov     r0, #0x2
	strb    r0, [r4, #0x0]
.thumb
branch_20651a0: @ 20651a0 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x20651a4

.thumb
Function_20651a4: @ 20651a4 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r1, #0x1
	ldsb    r2, [r4, r1]
	ldrb    r1, [r4, #0x2]
	mov     r6, r0
	cmp     r2, r1
	bne     branch_20651e8
	ldrb    r1, [r4, #0x3]
	cmp     r1, #0x0
	bne     branch_20651d2
	bl      Function_2062ff0
	mov     r5, r0
	mov     r0, r6
	bl      LoadSpritePositionX
	cmp     r5, r0
	bne     branch_20651e8
	mov     r0, r4
	bl      Function_2065100
	b       branch_20651e8
@ 0x20651d2

.thumb
branch_20651d2: @ 20651d2 :thumb
	bl      Function_2063000
	mov     r5, r0
	mov     r0, r6
	bl      LoadSpritePositionY
	cmp     r5, r0
	bne     branch_20651e8
	mov     r0, r4
	bl      Function_2065100
.thumb
branch_20651e8: @ 20651e8 :thumb
	mov     r0, #0x1
	ldsb    r0, [r4, r0]
	cmp     r0, #0x3
	bne     branch_206521c
	mov     r0, r6
	bl      Function_2062ff0
	mov     r7, r0
	mov     r0, r6
	bl      Function_2063000
	str     r0, [sp, #0x0]
	mov     r0, r6
	bl      LoadSpritePositionX
	mov     r5, r0
	mov     r0, r6
	bl      LoadSpritePositionY
	cmp     r7, r5
	bne     branch_206521c
	ldr     r1, [sp, #0x0]
	cmp     r1, r0
	bne     branch_206521c
	mov     r0, #0x0
	strb    r0, [r4, #0x1]
.thumb
branch_206521c: @ 206521c :thumb
	ldrb    r0, [r4, #0x4]
	bl      Function_2065358
	mov     r7, r0
	mov     r0, #0x1
	ldsb    r0, [r4, r0]
	lsl     r0, r0, #2
	ldr     r5, [r7, r0]
	mov     r0, r6
	mov     r1, r5
	bl      ChangeSpriteFace2Direction
	mov     r0, r6
	bl      Function_206553c
	cmp     r0, #0x0
	bne     branch_2065246
	mov     r0, r6
	mov     r1, r5
	bl      ChangeSpriteFaceDirection_WithCheck
.thumb
branch_2065246: @ 2065246 :thumb
	mov     r0, r6
	mov     r1, r5
	bl      Function_2063ebc
	mov     r1, #0x1
	tst     r1, r0
	beq     branch_2065284
	mov     r0, r4
	bl      Function_2065100
	mov     r0, #0x1
	ldsb    r0, [r4, r0]
	lsl     r0, r0, #2
	ldr     r5, [r7, r0]
	mov     r0, r6
	mov     r1, r5
	bl      ChangeSpriteFace2Direction
	mov     r0, r6
	bl      Function_206553c
	cmp     r0, #0x0
	bne     branch_206527c
	mov     r0, r6
	mov     r1, r5
	bl      ChangeSpriteFaceDirection_WithCheck
.thumb
branch_206527c: @ 206527c :thumb
	mov     r0, r6
	mov     r1, r5
	bl      Function_2063ebc
.thumb
branch_2065284: @ 2065284 :thumb
	mov     r1, #0xc
	cmp     r0, #0x0
	beq     branch_206528c
	mov     r1, #0x20
.thumb
branch_206528c: @ 206528c :thumb
	mov     r0, r5
	bl      Function_2065838
	mov     r1, r0
	mov     r0, r6
	bl      Function_2065668
	mov     r0, r6
	bl      Function_206553c
	cmp     r0, #0x1
	bne     branch_20652ae
	mov     r1, r4
	mov     r0, r6
	add     r1, #0x8
	bl      Function_2065568
.thumb
branch_20652ae: @ 20652ae :thumb
	mov     r0, r6
	bl      SetSpriteFlag_2
	mov     r0, #0x3
	strb    r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x20652bc

.thumb
Function_20652bc: @ 20652bc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      ExecuteMovement
	cmp     r0, #0x1
	bne     branch_20652e8
	mov     r0, r5
	bl      UnsetSpriteFlag_2
	mov     r0, r5
	bl      Function_206553c
	cmp     r0, #0x1
	bne     branch_20652e4
	mov     r1, r4
	mov     r0, r5
	add     r1, #0x8
	bl      Function_20655e4
.thumb
branch_20652e4: @ 20652e4 :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
.thumb
branch_20652e8: @ 20652e8 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x20652ec

.thumb
Function_20652ec: @ 20652ec :thumb
	push    {r4,lr}
	ldr     r2, [r0, #0x0]
	mov     r4, #0x0
	cmp     r1, r2
	beq     branch_2065300
.thumb
branch_20652f6: @ 20652f6 :thumb
	.hword  0x1d00 @ add r0, r0, #0x4
	ldr     r2, [r0, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r1, r2
	bne     branch_20652f6
.thumb
branch_2065300: @ 2065300 :thumb
	cmp     r4, #0x0
	bne     branch_2065308
	bl      ErrorHandling
.thumb
branch_2065308: @ 2065308 :thumb
	mov     r0, r4
	pop     {r4,pc}
@ 0x206530c

.thumb
Function_206530c: @ 206530c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	bl      PRNG
	mov     r6, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_20652ec
	mov     r1, r0
	mov     r0, r6
	blx     _s32_div_f
	lsl     r0, r1, #2
	ldr     r0, [r5, r0]
	pop     {r4-r6,pc}
@ 0x206532e


.align 2, 0


.thumb
Function_2065330: @ 2065330 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	bl      Function_2065358
	mov     r4, r0
	bl      PRNG
	mov     r6, r0
	mov     r0, r4
	mov     r1, r5
	bl      Function_20652ec
	mov     r1, r0
	mov     r0, r6
	blx     _s32_div_f
	lsl     r0, r1, #2
	ldr     r0, [r4, r0]
	pop     {r4-r6,pc}
@ 0x2065356


.align 2, 0
.thumb
Function_2065358: @ 2065358 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x1c] @ 0x2065378, (=Unknown_20eeb08)
	mov     r2, #0x0
branch_206535e: @ 206535e :thumb
	cmp     r2, r0
	bne     branch_2065366
	ldr     r0, [r1, #0x4]
	pop     {r3,pc}

branch_2065366: @ 2065366 :thumb
	add     r1, #0x8
	ldr     r2, [r1, #0x0]
	cmp     r2, #0x27
	bne     branch_206535e
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2065376

.align 2
.word Unknown_20eeb08 @ 0x2065378



.thumb
Function_206537c: @ 206537c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      GetSpriteTrainer
	cmp     r0, #0x1
	beq     branch_2065392
	cmp     r0, #0x2
	beq     branch_2065392
	mov     r0, #0x0
	mvn     r0, r0
	pop     {r3-r7,pc}

branch_2065392: @ 2065392 :thumb
	mov     r0, r5
	bl      GetSpriteSpriteListFirstSprite
	bl      Function_205ef3c
	mov     r6, r0
	bl      Function_206140c
	cmp     r0, #0x0
	bne     branch_20653ac
	mov     r0, #0x0
	mvn     r0, r0
	pop     {r3-r7,pc}

branch_20653ac: @ 20653ac :thumb
	mov     r0, r5
	mov     r4, #0x0
	bl      GetSpriteMovement
	ldr     r1, [pc, #0x8c] @ 0x2065444, (=Unknown_20eead0)
branch_20653b6: @ 20653b6 :thumb
	lsl     r2, r4, #2
	ldr     r2, [r1, r2]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r2, r0
	beq     branch_20653c4
	cmp     r2, #0xff
	bne     branch_20653b6
branch_20653c4: @ 20653c4 :thumb
	cmp     r0, r2
	beq     branch_20653ce
	mov     r0, #0x0
	mvn     r0, r0
	pop     {r3-r7,pc}

branch_20653ce: @ 20653ce :thumb
	mov     r0, r6
	bl      Function_205eb3c
	bl      Function_20630dc
	mov     r4, r0
	mov     r0, r5
	bl      Function_20630dc
	cmp     r4, r0
	beq     branch_20653ea
	mov     r0, #0x0
	mvn     r0, r0
	pop     {r3-r7,pc}

branch_20653ea: @ 20653ea :thumb
	mov     r0, r6
	bl      GetSpritePositionX
	mov     r4, r0
	mov     r0, r6
	bl      GetSpritePositionY
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_20629d8
	str     r0, [sp, #0x0]
	mov     r0, r5
	bl      LoadSpritePositionX
	mov     r7, r0
	mov     r0, r5
	bl      LoadSpritePositionY
	mov     r2, r0
	ldr     r3, [sp, #0x0]
	ldr     r0, [sp, #0x0]
	add     r5, r2, r3
	sub     r1, r7, r0
	sub     r3, r2, r3
	add     r0, r7, r0
	cmp     r3, r6
	bgt     branch_206543e
	cmp     r5, r6
	blt     branch_206543e
	cmp     r1, r4
	bgt     branch_206543e
	cmp     r0, r4
	blt     branch_206543e
	mov     r1, r2
	mov     r0, r7
	mov     r2, r4
	mov     r3, r6
	bl      Function_2064488
	pop     {r3-r7,pc}

branch_206543e: @ 206543e :thumb
	mov     r0, #0x0
	mvn     r0, r0
	pop     {r3-r7,pc}
@ 0x2065444

.word Unknown_20eead0 @ 0x2065444



.thumb
Function_2065448: @ 2065448 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	str     r0, [sp, #0x0]
	mov     r4, r2
	mov     r0, r1
	bl      Function_2065358
	mov     r1, r4
	mov     r5, r0
	bl      Function_20652ec
	mov     r4, r0
	cmp     r4, #0x1
	bne     branch_206546c
	mov     r0, #0x0
	add     sp, #0x14
	mvn     r0, r0
	pop     {r4-r7,pc}

branch_206546c: @ 206546c :thumb
	ldr     r0, [sp, #0x0]
	bl      Function_206537c
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_2065536
	mov     r2, #0x0
	mov     r3, r5
branch_206547e: @ 206547e :thumb
	ldr     r1, [r3, #0x0]
	cmp     r0, r1
	beq     branch_2065536
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1d1b @ add r3, r3, #0x4
	cmp     r2, r4
	blt     branch_206547e
	mov     r7, #0x0
	mvn     r7, r7
	ldr     r0, [sp, #0x0]
	mov     r6, r7
	bl      LoadSpritePositionX
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x0]
	bl      LoadSpritePositionY
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	bl      GetSpriteSpriteListFirstSprite
	bl      Function_205ef3c
	str     r0, [sp, #0xc]
	bl      GetSpritePositionX
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0xc]
	bl      GetSpritePositionY
	ldr     r2, [sp, #0x8]
	ldr     r1, [sp, #0x10]
	cmp     r2, r1
	ble     branch_20654c6
	mov     r7, #0x2
	b       branch_20654cc

branch_20654c6: @ 20654c6 :thumb
	cmp     r2, r1
	bge     branch_20654cc
	mov     r7, #0x3
branch_20654cc: @ 20654cc :thumb
	ldr     r1, [sp, #0x4]
	cmp     r1, r0
	ble     branch_20654d6
	mov     r6, #0x0
	b       branch_20654dc

branch_20654d6: @ 20654d6 :thumb
	cmp     r1, r0
	bge     branch_20654dc
	mov     r6, #0x1
branch_20654dc: @ 20654dc :thumb
	mov     r0, #0x0
	sub     r1, r0, #0x1
	cmp     r7, r1
	bne     branch_20654fa
branch_20654e4: @ 20654e4 :thumb
	ldr     r1, [r5, #0x0]
	cmp     r6, r1
	bne     branch_20654f0
	add     sp, #0x14
	mov     r0, r6
	pop     {r4-r7,pc}

branch_20654f0: @ 20654f0 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r0, r4
	blt     branch_20654e4
	b       branch_2065532

branch_20654fa: @ 20654fa :thumb
	cmp     r6, r1
	bne     branch_2065514
branch_20654fe: @ 20654fe :thumb
	ldr     r1, [r5, #0x0]
	cmp     r7, r1
	bne     branch_206550a
	add     sp, #0x14
	mov     r0, r7
	pop     {r4-r7,pc}

branch_206550a: @ 206550a :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r0, r4
	blt     branch_20654fe
	b       branch_2065532

branch_2065514: @ 2065514 :thumb
	ldr     r1, [r5, #0x0]
	cmp     r7, r1
	bne     branch_2065520
	add     sp, #0x14
	mov     r0, r7
	pop     {r4-r7,pc}

branch_2065520: @ 2065520 :thumb
	cmp     r6, r1
	bne     branch_206552a
	add     sp, #0x14
	mov     r0, r6
	pop     {r4-r7,pc}

branch_206552a: @ 206552a :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r0, r4
	blt     branch_2065514
branch_2065532: @ 2065532 :thumb
	mov     r0, #0x0
	mvn     r0, r0
branch_2065536: @ 2065536 :thumb
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x206553a


.align 2, 0
.thumb
Function_206553c: @ 206553c :thumb
	push    {r3,lr}
	bl      GetSpriteTrainer
	.hword  0x1fc0 @ sub r0, r0, #0x7
	cmp     r0, #0x1
	bhi     branch_206554c
	mov     r0, #0x1
	pop     {r3,pc}

branch_206554c: @ 206554c :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2065550


.thumb
Function_2065550: @ 2065550 :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      GetSpriteTrainer
	cmp     r0, #0x7
	bne     branch_2065562
	mov     r0, #0x0
	strb    r0, [r4, #0x1]
	pop     {r4,pc}

branch_2065562: @ 2065562 :thumb
	mov     r0, #0x1
	strb    r0, [r4, #0x1]
	pop     {r4,pc}
@ 0x2065568


.thumb
Function_2065568: @ 2065568 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r5, r1
	bl      LoadSpriteFaceDirection
	mov     r4, #0x0
	mov     r6, r0
	mov     r1, r4
	ldr     r0, [pc, #0x64] @ 0x20655e0, (=Unknown_20eeab0)
	mov     r2, #0x1
	b       branch_2065582

branch_206557e: @ 206557e :thumb
	.hword  0x1d09 @ add r1, r1, #0x4
	.hword  0x1c64 @ add r4, r4, #0x1
branch_2065582: @ 2065582 :thumb
	cmp     r4, #0x4
	bge     branch_2065592
	ldsb    r3, [r5, r2]
	lsl     r3, r3, #4
	add     r3, r0, r3
	ldr     r3, [r1, r3]
	cmp     r6, r3
	bne     branch_206557e
branch_2065592: @ 2065592 :thumb
	cmp     r4, #0x4
	blt     branch_206559a
	bl      ErrorHandling
branch_206559a: @ 206559a :thumb
	add     r0, r4, #0x1
	lsr     r2, r0, #31
	lsl     r1, r0, #30
	sub     r1, r1, r2
	mov     r0, #0x1e
	ror     r1, r0
	strb    r6, [r5, #0x0]
	mov     r0, #0x1
	add     r1, r2, r1
	ldsb    r0, [r5, r0]
	lsl     r1, r1, #2
	lsl     r2, r0, #4
	ldr     r0, [pc, #0x2c] @ 0x20655e0, (=Unknown_20eeab0)
	add     r0, r0, r2
	ldr     r4, [r1, r0]
	mov     r0, r7
	mov     r1, #0x80
	bl      MaskSpriteFlags
	cmp     r0, #0x0
	beq     branch_20655c8
	mov     r0, #0x1
	b       branch_20655ca

branch_20655c8: @ 20655c8 :thumb
	mov     r0, #0x0
branch_20655ca: @ 20655ca :thumb
	strb    r0, [r5, #0x2]
	mov     r0, r7
	mov     r1, r4
	bl      ChangeSpriteFaceDirection_WithCheck
	mov     r0, r7
	mov     r1, #0x80
	bl      SetSpriteFlags
	pop     {r3-r7,pc}
@ 0x20655de

.align 2
.word Unknown_20eeab0 @ 0x20655e0



.thumb
Function_20655e4: @ 20655e4 :thumb
	push    {r3,lr}
	ldrb    r1, [r1, #0x2]
	cmp     r1, #0x0
	bne     branch_20655f2
	mov     r1, #0x80
	bl      UnsetSpriteFlags
branch_20655f2: @ 20655f2 :thumb
	pop     {r3,pc}
@ 0x20655f4


thumb_func_start IsSpriteMovable
IsSpriteMovable: @ 20655f4 :thumb
	push    {r4,lr}
	mov     r1, #Sprite_Flags_Locked
	mov     r4, r0
	bl      CheckSpriteFlags
	cmp     r0, #0x0
	bne     branch_2065606
	mov     r0, #0x0
	pop     {r4,pc}

branch_2065606: @ 2065606 :thumb
	mov     r0, r4
	mov     r1, #Sprite_Flags_2
	bl      CheckSpriteFlags
	cmp     r0, #0x1
	bne     branch_2065616
	mov     r0, #0x0
	pop     {r4,pc}

branch_2065616: @ 2065616 :thumb
	mov     r0, r4
	mov     r1, #Sprite_Flags_10
	bl      CheckSpriteFlags
	cmp     r0, #0x1
	bne     branch_2065632
	mov     r0, r4
	mov     r1, #Sprite_Flags_EndMovement
	bl      CheckSpriteFlags
	cmp     r0, #0x0
	bne     branch_2065632
	mov     r0, #0x0
	pop     {r4,pc}

branch_2065632: @ 2065632 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
thumb_func_end IsSpriteMovable


/* Input:
r0: Ptr to SpriteStruct
r1: MovementScriptCmd
*/
.align 2, 0
.thumb
.globl Function_2065638
Function_2065638: @ 2065638 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0x9a
	blt     branch_2065646
	bl      ErrorHandling
branch_2065646: @ 2065646 :thumb

	mov     r0, r5
	mov     r1, r4
	bl      SetSpriteMovementNr

	mov     r0, r5
	mov     r1, #0x0
	bl      SetSpriteMovementState

	mov     r0, r5
	mov     r1, #Sprite_Flags_10
	bl      SetSpriteFlags

	mov     r0, r5
	mov     r1, #Sprite_Flags_EndMovement
	bl      UnsetSpriteFlags
	pop     {r3-r5,pc}
@ 0x2065668


.thumb
Function_2065668: @ 2065668 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      SetSpriteMovementNr
	mov     r0, r4
	mov     r1, #0x0
	bl      SetSpriteMovementState
	mov     r0, r4
	mov     r1, #0x20
	bl      UnsetSpriteFlags
	pop     {r4,pc}
@ 0x2065682


.align 2, 0
.thumb
.globl Function_2065684
Function_2065684: @ 2065684 :thumb
	push    {r4,lr}
	mov     r1, #0x10
	mov     r4, r0
	bl      CheckSpriteFlags
	cmp     r0, #0x0
	bne     branch_2065696

	mov     r0, #0x1
	pop     {r4,pc}

branch_2065696: @ 2065696 :thumb
	mov     r0, r4
	mov     r1, #0x20
	bl      CheckSpriteFlags
	cmp     r0, #0x0
	beq     branch_20656a6

	mov     r0, #0x1
	pop     {r4,pc}

branch_20656a6: @ 20656a6 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x20656aa


.align 2, 0
.thumb
.globl Function_20656ac
Function_20656ac: @ 20656ac :thumb
	push    {r4,lr}
	mov     r1, #0x10
	mov     r4, r0
	bl      CheckSpriteFlags
	cmp     r0, #0x0
	bne     branch_20656be

	mov     r0, #0x1
	pop     {r4,pc}

branch_20656be: @ 20656be :thumb
	mov     r0, r4
	mov     r1, #0x20
	bl      CheckSpriteFlags
	cmp     r0, #0x0
	bne     branch_20656ce

	mov     r0, #0x0
	pop     {r4,pc}

branch_20656ce: @ 20656ce :thumb
	mov     r0, r4
	mov     r1, #0x30
	bl      UnsetSpriteFlags
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x20656da


.align 2, 0
.thumb
Function_20656dc: @ 20656dc :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x10
	bl      UnsetSpriteFlags
	mov     r0, r4
	mov     r1, #0x20
	bl      SetSpriteFlags
	mov     r0, r4
	mov     r1, #0xff
	bl      SetSpriteMovementNr
	mov     r0, r4
	mov     r1, #0x0
	bl      SetSpriteMovementState
	pop     {r4,pc}
@ 0x2065700


