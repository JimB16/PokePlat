
/* Input:
r0: ItemID
r1:
*/
thumb_func_start LoadFromNARC_ItemData
LoadFromNARC_ItemData: @ 207cf48 :thumb
	push    {r3,lr}
	mov     r3, r0
	ldr     r0, =467 @ 0x1d3
	cmp     r3, r0
	bls     branch_207cf54
	mov     r3, #0x0
branch_207cf54: @ 207cf54 :thumb
	cmp     r1, #0x0
	beq     branch_207cf62
	cmp     r1, #0x1
	beq     branch_207cf70
	cmp     r1, #0x2
	beq     branch_207cf7e
	b       branch_207cf8c

branch_207cf62: @ 207cf62 :thumb
	ldr     r1, =Unknown_20f0cc4
	lsl     r3, r3, #3
	ldrh    r1, [r1, r3]
	mov     r0, #0xf            @ itemtool/itemdata/pl_item_data.narc
	bl      LoadFromNARC_2
	pop     {r3,pc}

branch_207cf70: @ 207cf70 :thumb
	ldr     r1, =Unknown_20f0cc4+0x2
	lsl     r3, r3, #3
	ldrh    r1, [r1, r3]
	mov     r0, #0x10           @ itemtool/itemdata/item_icon.narc
	bl      LoadFromNARC_2
	pop     {r3,pc}

branch_207cf7e: @ 207cf7e :thumb
	ldr     r1, =Unknown_20f0cc4+0x4
	lsl     r3, r3, #3
	ldrh    r1, [r1, r3]
	mov     r0, #0x10           @ itemtool/itemdata/item_icon.narc
	bl      LoadFromNARC_2
	pop     {r3,pc}

branch_207cf8c: @ 207cf8c :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x207cf90

.pool
thumb_func_end LoadFromNARC_ItemData



.thumb
.globl Function_207cfa0
Function_207cfa0: @ 207cfa0 :thumb
	push    {r4-r6,lr}
	mov     r3, r2
	mov     r2, #0x62
	mov     r5, r0
	mov     r4, r1
	mov     r0, #0x1
	mov     r1, #0x1a
	lsl     r2, r2, #2
	bl      Function_200b144
	mov     r6, r0
	mov     r1, r4
	mov     r2, r5
	bl      Function_200b1b8
	mov     r0, r6
	bl      Function_200b190
	pop     {r4-r6,pc}
@ 0x207cfc6


.align 2, 0
.thumb
.globl Function_207cfc8
Function_207cfc8: @ 207cfc8 :thumb
	push    {r4-r6,lr}
	mov     r3, r2
	mov     r5, r0
	mov     r4, r1
	ldr     r2, [pc, #0x18] @ 0x207cfec, (=0x187)
	mov     r0, #0x1
	mov     r1, #0x1a
	bl      Function_200b144
	mov     r6, r0
	mov     r1, r4
	mov     r2, r5
	bl      Function_200b1b8
	mov     r0, r6
	bl      Function_200b190
	pop     {r4-r6,pc}
@ 0x207cfec

.word 0x187 @ 0x207cfec



/* Input:
r0: ItemID
r1: Nr of ItemData to load
r2:
*/
thumb_func_start GetItemData
GetItemData: @ 207cff0 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r1, #ITEMDATA_LOADDATA
	mov     r5, r2
	bl      LoadFromNARC_ItemData
	mov     r6, r0

	mov     r1, r4
	bl      ReadItemData1
	mov     r4, r0

	mov     r0, r5
	mov     r1, r6
	bl      Function_2018238
	mov     r0, r4
	pop     {r4-r6,pc}
thumb_func_end GetItemData


thumb_func_start ReadItemData1
ReadItemData1: @ 207d014 :thumb
	push    {r3,lr}
	cmp     r1, #0xe
	bhi     branch_207d094
	add     r2, r1, r1
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x207d026

Jumppoints_207d026:
.hword loadItemPrice - Jumppoints_207d026 - 2
.hword loadItemBattleEffect - Jumppoints_207d026 - 2
.hword loadItemGain - Jumppoints_207d026 - 2
.hword branch_207d050 - Jumppoints_207d026 - 2
.hword branch_207d058 - Jumppoints_207d026 - 2
.hword loadItemPocket - Jumppoints_207d026 - 2
.hword branch_207d068 - Jumppoints_207d026 - 2
.hword branch_207d06c - Jumppoints_207d026 - 2
.hword branch_207d070 - Jumppoints_207d026 - 2
.hword branch_207d074 - Jumppoints_207d026 - 2
.hword branch_207d078 - Jumppoints_207d026 - 2
.hword branch_207d07c - Jumppoints_207d026 - 2
.hword branch_207d080 - Jumppoints_207d026 - 2
.hword branch_207d088 - Jumppoints_207d026 - 2
.hword branch_207d090 - Jumppoints_207d026 - 2
.thumb
loadItemPrice: @ 207d044 :thumb
	ldrh    r0, [r0, #0x0]
	pop     {r3,pc}

loadItemBattleEffect: @ 207d048 :thumb
	ldrb    r0, [r0, #0x2]
	pop     {r3,pc}

loadItemGain: @ 207d04c :thumb
	ldrb    r0, [r0, #0x3]
	pop     {r3,pc}

branch_207d050: @ 207d050 :thumb
	ldrh    r0, [r0, #0x8]
	lsl     r0, r0, #26
	lsr     r0, r0, #31
	pop     {r3,pc}

branch_207d058: @ 207d058 :thumb
	ldrh    r0, [r0, #0x8]
	lsl     r0, r0, #25
	lsr     r0, r0, #31
	pop     {r3,pc}

loadItemPocket: @ 207d060 :thumb
	ldrh    r0, [r0, #0x8]
	lsl     r0, r0, #21
	lsr     r0, r0, #28
	pop     {r3,pc}

branch_207d068: @ 207d068 :thumb
	ldrb    r0, [r0, #0xa]
	pop     {r3,pc}

branch_207d06c: @ 207d06c :thumb
	ldrb    r0, [r0, #0xb]
	pop     {r3,pc}

branch_207d070: @ 207d070 :thumb
	ldrb    r0, [r0, #0x4]
	pop     {r3,pc}

branch_207d074: @ 207d074 :thumb
	ldrb    r0, [r0, #0x5]
	pop     {r3,pc}

branch_207d078: @ 207d078 :thumb
	ldrb    r0, [r0, #0x6]
	pop     {r3,pc}

branch_207d07c: @ 207d07c :thumb
	ldrb    r0, [r0, #0x7]
	pop     {r3,pc}

branch_207d080: @ 207d080 :thumb
	ldrh    r0, [r0, #0x8]
	lsl     r0, r0, #27
	lsr     r0, r0, #27
	pop     {r3,pc}

branch_207d088: @ 207d088 :thumb
	ldrh    r0, [r0, #0x8]
	lsl     r0, r0, #16
	lsr     r0, r0, #27
	pop     {r3,pc}

branch_207d090: @ 207d090 :thumb
	ldrb    r0, [r0, #0xc]
	pop     {r3,pc}

branch_207d094: @ 207d094 :thumb
	ldrb    r2, [r0, #0xc]
	cmp     r2, #0x0
	beq     branch_207d0a0
	cmp     r2, #0x1
	beq     branch_207d0a4
	b       branch_207d0ac

branch_207d0a0: @ 207d0a0 :thumb
	ldrb    r0, [r0, #0xe]
	pop     {r3,pc}

branch_207d0a4: @ 207d0a4 :thumb
	add     r0, #0xe
	bl      ReadItemData2
	pop     {r3,pc}

branch_207d0ac: @ 207d0ac :thumb
	mov     r0, #0x0
	pop     {r3,pc}
thumb_func_end ReadItemData1


thumb_func_start ReadItemData2
ReadItemData2: @ 207d0b0 :thumb
	sub     r1, #0xf
	cmp     r1, #0x2b
	bls     branch_207d0b8
	b       branch_207d262

branch_207d0b8: @ 207d0b8 :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x207d0c4

Jumppoints_207d0c4:
.hword branch_207d11c - Jumppoints_207d0c4 - 2
.hword branch_207d124 - Jumppoints_207d0c4 - 2
.hword branch_207d12c - Jumppoints_207d0c4 - 2
.hword branch_207d134 - Jumppoints_207d0c4 - 2
.hword branch_207d13c - Jumppoints_207d0c4 - 2
.hword branch_207d144 - Jumppoints_207d0c4 - 2
.hword branch_207d14c - Jumppoints_207d0c4 - 2
.hword branch_207d154 - Jumppoints_207d0c4 - 2
.hword branch_207d15c - Jumppoints_207d0c4 - 2
.hword branch_207d164 - Jumppoints_207d0c4 - 2
.hword branch_207d16c - Jumppoints_207d0c4 - 2
.hword branch_207d174 - Jumppoints_207d0c4 - 2
.hword branch_207d17c - Jumppoints_207d0c4 - 2
.hword branch_207d184 - Jumppoints_207d0c4 - 2
.hword branch_207d18c - Jumppoints_207d0c4 - 2
.hword branch_207d194 - Jumppoints_207d0c4 - 2
.hword branch_207d19c - Jumppoints_207d0c4 - 2
.hword branch_207d1a4 - Jumppoints_207d0c4 - 2
.hword branch_207d1ac - Jumppoints_207d0c4 - 2
.hword branch_207d1b4 - Jumppoints_207d0c4 - 2
.hword branch_207d1bc - Jumppoints_207d0c4 - 2
.hword branch_207d1c4 - Jumppoints_207d0c4 - 2
.hword branch_207d1cc - Jumppoints_207d0c4 - 2
.hword branch_207d1d4 - Jumppoints_207d0c4 - 2
.hword branch_207d1dc - Jumppoints_207d0c4 - 2
.hword branch_207d1e4 - Jumppoints_207d0c4 - 2
.hword branch_207d1ec - Jumppoints_207d0c4 - 2
.hword branch_207d1f4 - Jumppoints_207d0c4 - 2
.hword branch_207d1fc - Jumppoints_207d0c4 - 2
.hword branch_207d204 - Jumppoints_207d0c4 - 2
.hword branch_207d20c - Jumppoints_207d0c4 - 2
.hword branch_207d214 - Jumppoints_207d0c4 - 2
.hword branch_207d21c - Jumppoints_207d0c4 - 2
.hword branch_207d224 - Jumppoints_207d0c4 - 2
.hword branch_207d22a - Jumppoints_207d0c4 - 2
.hword branch_207d230 - Jumppoints_207d0c4 - 2
.hword branch_207d236 - Jumppoints_207d0c4 - 2
.hword branch_207d23c - Jumppoints_207d0c4 - 2
.hword branch_207d242 - Jumppoints_207d0c4 - 2
.hword branch_207d248 - Jumppoints_207d0c4 - 2
.hword branch_207d24c - Jumppoints_207d0c4 - 2
.hword branch_207d250 - Jumppoints_207d0c4 - 2
.hword branch_207d256 - Jumppoints_207d0c4 - 2
.hword branch_207d25c - Jumppoints_207d0c4 - 2
.thumb
branch_207d11c: @ 207d11c :thumb
	ldrb    r0, [r0, #0x0]
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	bx      lr

branch_207d124: @ 207d124 :thumb
	ldrb    r0, [r0, #0x0]
	lsl     r0, r0, #30
	lsr     r0, r0, #31
	bx      lr

branch_207d12c: @ 207d12c :thumb
	ldrb    r0, [r0, #0x0]
	lsl     r0, r0, #29
	lsr     r0, r0, #31
	bx      lr

branch_207d134: @ 207d134 :thumb
	ldrb    r0, [r0, #0x0]
	lsl     r0, r0, #28
	lsr     r0, r0, #31
	bx      lr

branch_207d13c: @ 207d13c :thumb
	ldrb    r0, [r0, #0x0]
	lsl     r0, r0, #27
	lsr     r0, r0, #31
	bx      lr

branch_207d144: @ 207d144 :thumb
	ldrb    r0, [r0, #0x0]
	lsl     r0, r0, #26
	lsr     r0, r0, #31
	bx      lr

branch_207d14c: @ 207d14c :thumb
	ldrb    r0, [r0, #0x0]
	lsl     r0, r0, #25
	lsr     r0, r0, #31
	bx      lr

branch_207d154: @ 207d154 :thumb
	ldrb    r0, [r0, #0x0]
	lsl     r0, r0, #24
	lsr     r0, r0, #31
	bx      lr

branch_207d15c: @ 207d15c :thumb
	ldrb    r0, [r0, #0x1]
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	bx      lr

branch_207d164: @ 207d164 :thumb
	ldrb    r0, [r0, #0x1]
	lsl     r0, r0, #30
	lsr     r0, r0, #31
	bx      lr

branch_207d16c: @ 207d16c :thumb
	ldrb    r0, [r0, #0x1]
	lsl     r0, r0, #29
	lsr     r0, r0, #31
	bx      lr

branch_207d174: @ 207d174 :thumb
	ldrb    r0, [r0, #0x1]
	lsl     r0, r0, #28
	lsr     r0, r0, #31
	bx      lr

branch_207d17c: @ 207d17c :thumb
	ldrb    r0, [r0, #0x1]
	lsl     r0, r0, #24
	lsr     r0, r0, #28
	bx      lr

branch_207d184: @ 207d184 :thumb
	ldrb    r0, [r0, #0x2]
	lsl     r0, r0, #28
	lsr     r0, r0, #28
	bx      lr

branch_207d18c: @ 207d18c :thumb
	ldrb    r0, [r0, #0x2]
	lsl     r0, r0, #24
	lsr     r0, r0, #28
	bx      lr

branch_207d194: @ 207d194 :thumb
	ldrb    r0, [r0, #0x3]
	lsl     r0, r0, #28
	lsr     r0, r0, #28
	bx      lr

branch_207d19c: @ 207d19c :thumb
	ldrb    r0, [r0, #0x3]
	lsl     r0, r0, #24
	lsr     r0, r0, #28
	bx      lr

branch_207d1a4: @ 207d1a4 :thumb
	ldrb    r0, [r0, #0x4]
	lsl     r0, r0, #28
	lsr     r0, r0, #28
	bx      lr

branch_207d1ac: @ 207d1ac :thumb
	ldrb    r0, [r0, #0x4]
	lsl     r0, r0, #26
	lsr     r0, r0, #30
	bx      lr

branch_207d1b4: @ 207d1b4 :thumb
	ldrb    r0, [r0, #0x4]
	lsl     r0, r0, #25
	lsr     r0, r0, #31
	bx      lr

branch_207d1bc: @ 207d1bc :thumb
	ldrb    r0, [r0, #0x4]
	lsl     r0, r0, #24
	lsr     r0, r0, #31
	bx      lr

branch_207d1c4: @ 207d1c4 :thumb
	ldrb    r0, [r0, #0x5]
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	bx      lr

branch_207d1cc: @ 207d1cc :thumb
	ldrb    r0, [r0, #0x5]
	lsl     r0, r0, #30
	lsr     r0, r0, #31
	bx      lr

branch_207d1d4: @ 207d1d4 :thumb
	ldrb    r0, [r0, #0x5]
	lsl     r0, r0, #29
	lsr     r0, r0, #31
	bx      lr

branch_207d1dc: @ 207d1dc :thumb
	ldrb    r0, [r0, #0x5]
	lsl     r0, r0, #28
	lsr     r0, r0, #31
	bx      lr

branch_207d1e4: @ 207d1e4 :thumb
	ldrb    r0, [r0, #0x5]
	lsl     r0, r0, #27
	lsr     r0, r0, #31
	bx      lr

branch_207d1ec: @ 207d1ec :thumb
	ldrb    r0, [r0, #0x5]
	lsl     r0, r0, #26
	lsr     r0, r0, #31
	bx      lr

branch_207d1f4: @ 207d1f4 :thumb
	ldrb    r0, [r0, #0x5]
	lsl     r0, r0, #25
	lsr     r0, r0, #31
	bx      lr

branch_207d1fc: @ 207d1fc :thumb
	ldrb    r0, [r0, #0x5]
	lsl     r0, r0, #24
	lsr     r0, r0, #31
	bx      lr

branch_207d204: @ 207d204 :thumb
	ldrb    r0, [r0, #0x6]
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	bx      lr

branch_207d20c: @ 207d20c :thumb
	ldrb    r0, [r0, #0x6]
	lsl     r0, r0, #30
	lsr     r0, r0, #31
	bx      lr

branch_207d214: @ 207d214 :thumb
	ldrb    r0, [r0, #0x6]
	lsl     r0, r0, #29
	lsr     r0, r0, #31
	bx      lr

branch_207d21c: @ 207d21c :thumb
	ldrb    r0, [r0, #0x6]
	lsl     r0, r0, #28
	lsr     r0, r0, #31
	bx      lr

branch_207d224: @ 207d224 :thumb
	mov     r1, #0x7
	ldsb    r0, [r0, r1]
	bx      lr

branch_207d22a: @ 207d22a :thumb
	mov     r1, #0x8
	ldsb    r0, [r0, r1]
	bx      lr

branch_207d230: @ 207d230 :thumb
	mov     r1, #0x9
	ldsb    r0, [r0, r1]
	bx      lr

branch_207d236: @ 207d236 :thumb
	mov     r1, #0xa
	ldsb    r0, [r0, r1]
	bx      lr

branch_207d23c: @ 207d23c :thumb
	mov     r1, #0xb
	ldsb    r0, [r0, r1]
	bx      lr

branch_207d242: @ 207d242 :thumb
	mov     r1, #0xc
	ldsb    r0, [r0, r1]
	bx      lr

branch_207d248: @ 207d248 :thumb
	ldrb    r0, [r0, #0xd]
	bx      lr

branch_207d24c: @ 207d24c :thumb
	ldrb    r0, [r0, #0xe]
	bx      lr

branch_207d250: @ 207d250 :thumb
	mov     r1, #0xf
	ldsb    r0, [r0, r1]
	bx      lr

branch_207d256: @ 207d256 :thumb
	mov     r1, #0x10
	ldsb    r0, [r0, r1]
	bx      lr

branch_207d25c: @ 207d25c :thumb
	mov     r1, #0x11
	ldsb    r0, [r0, r1]
	bx      lr

branch_207d262: @ 207d262 :thumb
	mov     r0, #0x0
	bx      lr
thumb_func_end ReadItemData2


.align 2, 0
.thumb
.globl Function_207d268
Function_207d268: @ 207d268 :thumb
	mov     r2, #0x52
	lsl     r2, r2, #2
	cmp     r0, r2
	blo     branch_207d278

	mov     r1, r2
	add     r1, #99
	cmp     r0, r1
	bls     branch_207d27c

branch_207d278: @ 207d278 :thumb
	mov     r0, #0x0
	bx      lr

branch_207d27c: @ 207d27c :thumb
	sub     r0, r0, r2
	lsl     r0, r0, #16
	lsr     r1, r0, #15
	ldr     r0, [pc, #0x4] @ 0x207d288, (=Unknown_20f0bfc)
	ldrh    r0, [r0, r1]
	bx      lr
@ 0x207d288

.word Unknown_20f0bfc @ 0x207d288



.thumb
.globl Function_207d28c
Function_207d28c: @ 207d28c :thumb
	ldr     r2, [pc, #0x20] @ 0x207d2b0, (=Unknown_20f0bfc)
	mov     r3, #0x0
branch_207d290: @ 207d290 :thumb
	lsl     r1, r3, #1
	add     r1, r2, r1
	add     r1, #0xb8
	ldrh    r1, [r1, #0x0]
	cmp     r0, r1
	bne     branch_207d2a0

	mov     r0, #0x1
	bx      lr

branch_207d2a0: @ 207d2a0 :thumb
	add     r1, r3, #0x1
	lsl     r1, r1, #24
	lsr     r3, r1, #24
	cmp     r3, #0x8
	blo     branch_207d290

	mov     r0, #0x0
	bx      lr
@ 0x207d2ae

.align 2
.word Unknown_20f0bfc @ 0x207d2b0



.thumb
Function_207d2b4: @ 207d2b4 :thumb
	mov     r2, #0x52
	lsl     r2, r2, #2 @ 0x148
	cmp     r0, r2
	blo     branch_207d2c4

	mov     r1, r2
	add     r1, #99
	cmp     r0, r1
	bls     branch_207d2c8

branch_207d2c4: @ 207d2c4 :thumb
	mov     r0, #0x0
	bx      lr

branch_207d2c8: @ 207d2c8 :thumb
	sub     r0, r0, r2
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bx      lr
@ 0x207d2d0


.thumb
.globl Function_207d2d0
Function_207d2d0: @ 207d2d0 :thumb
	ldr     r3, [pc, #0x18] @ 0x207d2ec, (=Unknown_20f0b64)
	mov     r2, #0x0
branch_207d2d4: @ 207d2d4 :thumb
	ldrh    r1, [r3, #0x0]
	cmp     r0, r1
	bne     branch_207d2de

	mov     r0, #0x1
	bx      lr

branch_207d2de: @ 207d2de :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r2, #0xc
	blo     branch_207d2d4

	mov     r0, #0x0
	bx      lr
@ 0x207d2ea

.align 2
.word Unknown_20f0b64 @ 0x207d2ec



.thumb
Function_207d2f0: @ 207d2f0 :thumb
	ldr     r3, [pc, #0x18] @ 0x207d30c, (=Unknown_20f0b64)
	mov     r2, #0x0
branch_207d2f4: @ 207d2f4 :thumb
	ldrh    r1, [r3, #0x0]
	cmp     r0, r1
	bne     branch_207d300

	lsl     r0, r2, #24
	lsr     r0, r0, #24
	bx      lr

branch_207d300: @ 207d300 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r2, #0xc
	blo     branch_207d2f4

	mov     r0, #0x0
	bx      lr
@ 0x207d30c

.word Unknown_20f0b64 @ 0x207d30c



.thumb
Function_207d310: @ 207d310 :thumb
	cmp     r0, #0xc
	blo     branch_207d318
	mov     r0, #0x0
	bx      lr

branch_207d318: @ 207d318 :thumb
	lsl     r1, r0, #1
	ldr     r0, [pc, #0x4] @ 0x207d320, (=Unknown_20f0b64)
	ldrh    r0, [r0, r1]
	bx      lr
@ 0x207d320

.word Unknown_20f0b64 @ 0x207d320



.thumb
.globl Function_207d324
Function_207d324: @ 207d324 :thumb
	ldr     r3, [pc, #0x18] @ 0x207d340, (=Unknown_20f0b7c)
	mov     r2, #0x0
branch_207d328: @ 207d328 :thumb
	ldrh    r1, [r3, #0x0]
	cmp     r0, r1
	bne     branch_207d332

	mov     r0, #0x1
	bx      lr

branch_207d332: @ 207d332 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r2, #0x40
	blo     branch_207d328

	mov     r0, #0x0
	bx      lr
@ 0x207d33e

.align 2
.word Unknown_20f0b7c @ 0x207d340



.thumb
.globl Function_207d344
Function_207d344: @ 207d344 :thumb
	cmp     r0, #0x95
	bhs     branch_207d34c

	mov     r0, #0xff
	bx      lr

branch_207d34c: @ 207d34c :thumb
	sub     r0, #0x95
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bx      lr
@ 0x207d354


.thumb
.globl Function_207d354
Function_207d354: @ 207d354 :thumb
	cmp     r0, #0x40
	blo     branch_207d35c
	ldr     r0, [pc, #0x8] @ 0x207d364, (=0xffff)
	bx      lr

branch_207d35c: @ 207d35c :thumb
	lsl     r1, r0, #1
	ldr     r0, [pc, #0x8] @ 0x207d368, (=Unknown_20f0b7c)
	ldrh    r0, [r0, r1]
	bx      lr
@ 0x207d364

.word 0xffff @ 0x207d364
.word Unknown_20f0b7c @ 0x207d368



.thumb
Function_207d36c: @ 207d36c :thumb
	ldr     r1, [pc, #0x14] @ 0x207d384, (=0xffde)
	add     r0, r0, r1
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	cmp     r0, #0x3
	bhi     branch_207d37c
	mov     r0, #0x1
	b       branch_207d37e

branch_207d37c: @ 207d37c :thumb
	mov     r0, #0x0
branch_207d37e: @ 207d37e :thumb
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bx      lr
@ 0x207d384

.word 0xffde @ 0x207d384



.thumb
.globl Function_207d388
Function_207d388: @ 207d388 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0

	ldr     r0, [pc, #0x1c] @ 0x207d3ac, (=NrOfMoves)
	mov     r1, #0x0
	bl      Function_207ce78
	mov     r1, #0x24
	mul     r1, r0
	str     r1, [sp, #0x0]

	mov     r1, #0x0
	mov     r0, #0xf        @ itemtool/itemdata/pl_item_data.narc
	mov     r2, r4
	mov     r3, r1
	bl      LoadFromNARC_5

	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x207d3ac

.word NrOfMoves @ 0x207d3ac



.thumb
.globl Function_207d3b0
Function_207d3b0: @ 207d3b0 :thumb
	mov     r2, #0x24
	mul     r2, r1
	add     r0, r0, r2
	bx      lr
@ 0x207d3b8


thumb_func_start GetItemListSize
GetItemListSize: @ 207d3b8 :thumb
	ldr     r0, =ItemList_Size
	bx      lr
@ 0x207d3bc

.align 2
.pool
thumb_func_end GetItemListSize



thumb_func_start AllocItemList
AllocItemList: @ 207d3c0 :thumb
	push    {r4,lr}
	ldr     r1, =ItemList_Size
	bl      malloc
	mov     r4, r0
	bl      ClearItemList
	mov     r0, r4
	pop     {r4,pc}
@ 0x207d3d2

.align 2
.pool
thumb_func_end AllocItemList


thumb_func_start ClearItemList
ClearItemList: @ 207d3d8 :thumb
	ldr     r3, =MIi_CpuClear16
	mov     r1, r0
	mov     r0, #0x0
	ldr     r2, =ItemList_Size
	bx      r3
@ 0x207d3e2

.align 2
.pool
thumb_func_end ClearItemList


thumb_func_start CopyItemList
CopyItemList: @ 207d3ec :thumb
	ldr     r3, =MI_CpuCopy8
	ldr     r2, =ItemList_Size
	bx      r3
@ 0x207d3f2

.align 2
.pool
thumb_func_end CopyItemList


.thumb
.globl Function_207d3fc
Function_207d3fc: @ 207d3fc :thumb
	mov     r1, #0x77
	lsl     r1, r1, #4
	ldr     r0, [r0, r1]
	bx      lr
@ 0x207d404


.thumb
.globl Function_207d404
Function_207d404: @ 207d404 :thumb
	mov     r2, #0x77
	lsl     r2, r2, #4
	str     r1, [r0, r2]
	bx      lr
@ 0x207d40c


/* Input:
r0 = Ptr to ItemList-Struct?
r1 = ItemID
r2 = TempVar for ListAdr
r3 = TempVar for ListSize
*/
thumb_func_start GetItemListAdrAndSizeAndReturnPocket
GetItemListAdrAndSizeAndReturnPocket: @ 207d40c :thumb
	push    {r4-r6,lr}
	mov     r5, r2
	mov     r4, r0

	mov     r0, r1              @ ItemID
	ldr     r2, [sp, #0x10]
	mov     r1, #ITEMDATA_POCKET
	mov     r6, r3
	bl      GetItemData

	cmp     r0, #0x7
	bhi     branch_207d49c
	add     r1, r0, r0
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x207d42e

Jumppoints_207d42e:
.hword getPocketListItemsAdr - Jumppoints_207d42e - 2
.hword getPocketListMedicineAdr - Jumppoints_207d42e - 2
.hword getPocketListPokeBallsAdr - Jumppoints_207d42e - 2
.hword getPocketListTMHMsAdr - Jumppoints_207d42e - 2
.hword getPocketListBerriesAdr - Jumppoints_207d42e - 2
.hword getPocketListMailAdr - Jumppoints_207d42e - 2
.hword getPocketListBattleItemsAdr - Jumppoints_207d42e - 2
.hword getPocketListKeyItemsAdr - Jumppoints_207d42e - 2

getPocketListKeyItemsAdr: @ 207d43e :thumb
	mov     r1, #0xa5
	lsl     r1, r1, #2          @ 0x294 ItemList_KeyItems
	add     r1, r4, r1
	str     r1, [r5, #0x0]
	mov     r1, #ItemList_KeyItems_Size
	str     r1, [r6, #0x0]
	pop     {r4-r6,pc}

getPocketListItemsAdr: @ 207d44c :thumb
	str     r4, [r5, #0x0]          @ 0x0 ItemList_Items
	mov     r1, #ItemList_Items_Size
	str     r1, [r6, #0x0]
	pop     {r4-r6,pc}

getPocketListBerriesAdr: @ 207d454 :thumb
	ldr     r1, [pc, #0x48] @ 0x207d4a0, (=0x5bc) ItemList_Berries
	add     r1, r4, r1
	str     r1, [r5, #0x0]
	mov     r1, #ItemList_Berries_Size
	str     r1, [r6, #0x0]
	pop     {r4-r6,pc}

getPocketListMedicineAdr: @ 207d460 :thumb
	ldr     r1, [pc, #0x40] @ 0x207d4a4, (=0x51c) ItemList_Medicine
	add     r1, r4, r1
	str     r1, [r5, #0x0]
	mov     r1, #ItemList_Medicine_Size
	str     r1, [r6, #0x0]
	pop     {r4-r6,pc}

getPocketListPokeBallsAdr: @ 207d46c :thumb
	ldr     r1, [pc, #0x38] @ 0x207d4a8, (=0x6bc) ItemList_PokeBalls
	add     r1, r4, r1
	str     r1, [r5, #0x0]
	mov     r1, #ItemList_PokeBalls_Size
	str     r1, [r6, #0x0]
	pop     {r4-r6,pc}

getPocketListBattleItemsAdr: @ 207d478 :thumb
	ldr     r1, [pc, #0x30] @ 0x207d4ac, (=0x6f8) ItemList_BattleItems
	add     r1, r4, r1
	str     r1, [r5, #0x0]
	mov     r1, #ItemList_BattleItems_Size
	str     r1, [r6, #0x0]
	pop     {r4-r6,pc}

getPocketListMailAdr: @ 207d484 :thumb
	ldr     r1, [pc, #0x28] @ 0x207d4b0, (=0x4ec) ItemList_Mail
	add     r1, r4, r1
	str     r1, [r5, #0x0]
	mov     r1, #ItemList_Mail_Size
	str     r1, [r6, #0x0]
	pop     {r4-r6,pc}

getPocketListTMHMsAdr: @ 207d490 :thumb
	mov     r1, #0xd7
	lsl     r1, r1, #2 @ 0x35c ItemList_TMHMs
	add     r1, r4, r1
	str     r1, [r5, #0x0]
	mov     r1, #ItemList_TMHMs_Size
	str     r1, [r6, #0x0]
branch_207d49c: @ 207d49c :thumb
	pop     {r4-r6,pc}
@ 0x207d49e

.align 2
.word 0x5bc @ 0x207d4a0
.word 0x51c @ 0x207d4a4
.word 0x6bc @ 0x207d4a8
.word 0x6f8 @ 0x207d4ac
.word 0x4ec @ 0x207d4b0
thumb_func_end GetItemListAdrAndSizeAndReturnPocket


/* Input:
r0: ItemListAdr
r1: ItemListSize
r2: ItemID
r3: quantity
*/
.thumb
.globl Function_207d4b4
Function_207d4b4: @ 207d4b4 :thumb
	push    {r4-r7}
	mov     r5, r1
	mov     r1, #0x0
	mov     r7, r0
	mov     r4, r2
	mov     r12, r3
	mvn     r1, r1
	mov     r0, #0x0
	cmp     r5, #0x0
	bls     branch_207d502

	mov     r2, r7
	mov     r3, r1
branch_207d4cc: @ 207d4cc :thumb
	ldrh    r6, [r2, #0x0]
	cmp     r4, r6
	bne     branch_207d4ea

	lsl     r0, r0, #2
	add     r0, r7, r0
	ldrh    r2, [r0, #0x2]
	mov     r1, r12         @ quantity
	add     r2, r1, r2
	add     r1, sp, #0x0
	ldrh    r1, [r1, #0x10]
	cmp     r2, r1
	ble     branch_207d514

	mov     r0, #0x0
	pop     {r4-r7}
	bx      lr

branch_207d4ea: @ 207d4ea :thumb
	cmp     r1, r3
	bne     branch_207d4fa
	cmp     r6, #0x0
	bne     branch_207d4fa
	ldrh    r6, [r2, #0x2]
	cmp     r6, #0x0
	bne     branch_207d4fa
	mov     r1, r0
branch_207d4fa: @ 207d4fa :thumb

	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d12 @ add r2, r2, #0x4
	cmp     r0, r5
	blo     branch_207d4cc

branch_207d502: @ 207d502 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r1, r0
	bne     branch_207d510

	mov     r0, #0x0
	pop     {r4-r7}
	bx      lr

branch_207d510: @ 207d510 :thumb
	lsl     r0, r1, #2
	add     r0, r7, r0
branch_207d514: @ 207d514 :thumb
	pop     {r4-r7}
	bx      lr
@ 0x207d518


/* Input:
r0 = Ptr to ItemList-Struct?
r1 = ItemID
r2 = quantity
r3 = #0x4 ??
*/
.thumb
.globl Function_207d518
Function_207d518: @ 207d518 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r2
	str     r3, [sp, #0x0]
	add     r2, sp, #0x8
	add     r3, sp, #0x4
	mov     r5, r1
	bl      GetItemListAdrAndSizeAndReturnPocket
	cmp     r0, #ITEMPOCKET_TMHMS
	bne     branch_207d542

	mov     r0, #99
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x8] @ ItemListAdr
	ldr     r1, [sp, #0x4] @ ItemListSize
	mov     r2, r5 @ ItemID
	mov     r3, r4 @ quantity
	bl      Function_207d4b4
	add     sp, #0xc
	pop     {r4,r5,pc}

branch_207d542: @ 207d542 :thumb
	ldr     r0, [pc, #0x14] @ 0x207d558, (=999)
	mov     r2, r5
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x4]
	mov     r3, r4
	bl      Function_207d4b4
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x207d556

.align 2
.word 999 @ 0x207d558


thumb_func_start CheckStoreItem
CheckStoreItem: @ 207d55c :thumb
	push    {r3,lr}
	bl      Function_207d518
	cmp     r0, #0x0
	beq     branch_207d56a
	mov     r0, #0x1
	pop     {r3,pc}

branch_207d56a: @ 207d56a :thumb
	mov     r0, #0x0
	pop     {r3,pc}
thumb_func_end CheckStoreItem


/* Input:
r0 = Ptr to ItemList-Struct?
r1 = ItemID
r2 = quantity
r3 = #0x4 ??
*/
thumb_func_start TakeItem
TakeItem: @ 207d570 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r7, r0
	mov     r5, r1
	mov     r4, r2
	mov     r6, r3
	bl      Function_207d518
	str     r0, [sp, #0x8]
	cmp     r0, #0x0
	bne     branch_207d58c

	add     sp, #0xc
	mov     r0, #0x0
	pop     {r4-r7,pc}

branch_207d58c: @ 207d58c :thumb
	strh    r5, [r0, #0x0]
	ldr     r1, [sp, #0x8]
	add     r2, sp, #0x8
	ldrh    r0, [r1, #0x2]
	add     r3, sp, #0x4
	add     r0, r0, r4
	strh    r0, [r1, #0x2]
	mov     r0, r7
	mov     r1, r5
	str     r6, [sp, #0x0]
	bl      GetItemListAdrAndSizeAndReturnPocket
	.hword  0x1ec0 @ sub r0, r0, #0x3
	cmp     r0, #0x1
	bhi     branch_207d5b2
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x4]
	bl      Function_207d7cc
branch_207d5b2: @ 207d5b2 :thumb

	mov     r0, #0x1
	add     sp, #0xc
	pop     {r4-r7,pc}
thumb_func_end TakeItem


/* Input:
r0: ItemListAdr
r1: ItemListSize
r2: ItemID
r3: quantity
*/
thumb_func_start GetAdrToItemInItemPocketList
GetAdrToItemInItemPocketList: @ 207d5b8 :thumb
	push    {r3-r6}
	mov     r5, #0x0
	cmp     r1, #0x0
	bls     branch_207d5e0

	mov     r6, r0
branch_207d5c2: @ 207d5c2 :thumb
	ldrh    r4, [r6, #0x0]
	cmp     r2, r4          @ Same ItemID?
	bne     branch_207d5d8

	lsl     r1, r5, #2
	add     r0, r0, r1
	ldrh    r1, [r0, #0x2]
	cmp     r1, r3
	bhs     branch_207d5e2

	mov     r0, #0x0
	pop     {r3-r6}
	bx      lr

branch_207d5d8: @ 207d5d8 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r5, r1
	blo     branch_207d5c2

branch_207d5e0: @ 207d5e0 :thumb
	mov     r0, #0x0
branch_207d5e2: @ 207d5e2 :thumb
	pop     {r3-r6}
	bx      lr
thumb_func_end GetAdrToItemInItemPocketList


/* Input:
r0 = Ptr to ItemList-Struct?
r1 = ItemID
r2 = quantity
*/
thumb_func_start GetAdrToItemInItemList
GetAdrToItemInItemList: @ 207d5e8 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r2
	str     r3, [sp, #0x0]
	add     r2, sp, #0x8
	add     r3, sp, #0x4
	mov     r5, r1
	bl      GetItemListAdrAndSizeAndReturnPocket
	ldr     r0, [sp, #0x8] @ ItemListAdr
	ldr     r1, [sp, #0x4] @ ItemListSize
	mov     r2, r5 @ ItemID
	mov     r3, r4 @ quantity
	bl      GetAdrToItemInItemPocketList
	add     sp, #0xc
	pop     {r4,r5,pc}
thumb_func_end GetAdrToItemInItemList


/* Input:
r0 = Ptr to ItemList-Struct?
r1 = ItemID
r2 = quantity
r3 = #0x4 ??
*/
thumb_func_start GiveItem
GiveItem: @ 207d60c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r6, r0
	mov     r7, r1      @ ItemID
	mov     r5, r2      @ quantity
	mov     r4, r3

	bl      GetAdrToItemInItemList
	str     r0, [sp, #0x8] @ AdrToItemInItemList
	cmp     r0, #0x0
	bne     branch_207d628

	add     sp, #0xc
	mov     r0, #0x0
	pop     {r4-r7,pc}

branch_207d628: @ 207d628 :thumb
	ldrh    r1, [r0, #0x2]
	sub     r1, r1, r5      @ quantity
	strh    r1, [r0, #0x2]

	ldr     r1, [sp, #0x8] @ AdrToItemInItemList
	ldrh    r0, [r1, #0x2]
	cmp     r0, #0x0
	bne     branch_207d63a
	mov     r0, #0x0
	strh    r0, [r1, #0x0]
branch_207d63a: @ 207d63a :thumb
	str     r4, [sp, #0x0]

	mov     r0, r6
	mov     r1, r7          @ ItemID
	add     r2, sp, #0x8
	add     r3, sp, #0x4
	bl      GetItemListAdrAndSizeAndReturnPocket

	ldr     r0, [sp, #0x8] @ ItemListAdr
	ldr     r1, [sp, #0x4] @ ItemListSize
	bl      Function_207d780

	mov     r0, #0x1
	add     sp, #0xc
	pop     {r4-r7,pc}
thumb_func_end GiveItem


.align 2, 0
.thumb
.globl Function_207d658
Function_207d658: @ 207d658 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r4, r3
	bl      GetAdrToItemInItemPocketList
	cmp     r0, #0x0
	bne     branch_207d66c
	mov     r0, #0x0
	pop     {r4-r6,pc}

branch_207d66c: @ 207d66c :thumb
	ldrh    r1, [r0, #0x2]
	sub     r1, r1, r4
	strh    r1, [r0, #0x2]
	ldrh    r1, [r0, #0x2]
	cmp     r1, #0x0
	bne     branch_207d67c
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
branch_207d67c: @ 207d67c :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_207d780
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x207d688


thumb_func_start CheckItem
CheckItem: @ 207d688 :thumb
	push    {r3,lr}
	bl      GetAdrToItemInItemList
	cmp     r0, #0x0
	beq     branch_207d696
	mov     r0, #0x1
	pop     {r3,pc}

branch_207d696: @ 207d696 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
thumb_func_end CheckItem


.align 2, 0
.thumb
.globl Function_207d69c
Function_207d69c: @ 207d69c :thumb
	cmp     r1, #0x7
	bhi     branch_207d6fc
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x207d6ac

Jumppoints_207d6ac:
.hword branch_207d6c6 - Jumppoints_207d6ac - 2
.hword branch_207d6d2 - Jumppoints_207d6ac - 2
.hword branch_207d6da - Jumppoints_207d6ac - 2
.hword branch_207d6f2 - Jumppoints_207d6ac - 2
.hword branch_207d6ca - Jumppoints_207d6ac - 2
.hword branch_207d6ea - Jumppoints_207d6ac - 2
.hword branch_207d6e2 - Jumppoints_207d6ac - 2
.hword branch_207d6bc - Jumppoints_207d6ac - 2
.thumb
branch_207d6bc: @ 207d6bc :thumb
	mov     r1, #0xa5
	lsl     r1, r1, #2
	add     r0, r0, r1
	mov     r2, #0x32
	b       branch_207d700
@ 0x207d6c6

.thumb
branch_207d6c6: @ 207d6c6 :thumb
	mov     r2, #0xa5
	b       branch_207d700
@ 0x207d6ca

.thumb
branch_207d6ca: @ 207d6ca :thumb
	ldr     r1, [pc, #0x50] @ 0x207d71c, (=0x5bc)
	mov     r2, #0x40
	add     r0, r0, r1
	b       branch_207d700
@ 0x207d6d2

.thumb
branch_207d6d2: @ 207d6d2 :thumb
	ldr     r1, [pc, #0x4c] @ 0x207d720, (=0x51c)
	mov     r2, #0x28
	add     r0, r0, r1
	b       branch_207d700
@ 0x207d6da

.thumb
branch_207d6da: @ 207d6da :thumb
	ldr     r1, [pc, #0x48] @ 0x207d724, (=0x6bc)
	mov     r2, #0xf
	add     r0, r0, r1
	b       branch_207d700
@ 0x207d6e2

.thumb
branch_207d6e2: @ 207d6e2 :thumb
	ldr     r1, [pc, #0x44] @ 0x207d728, (=0x6f8)
	mov     r2, #0x1e
	add     r0, r0, r1
	b       branch_207d700
@ 0x207d6ea

.thumb
branch_207d6ea: @ 207d6ea :thumb
	ldr     r1, [pc, #0x40] @ 0x207d72c, (=0x4ec)
	mov     r2, #0xc
	add     r0, r0, r1
	b       branch_207d700
@ 0x207d6f2

.thumb
branch_207d6f2: @ 207d6f2 :thumb
	mov     r1, #0xd7
	lsl     r1, r1, #2
	add     r0, r0, r1
	mov     r2, #0x64
	b       branch_207d700
@ 0x207d6fc

.thumb
branch_207d6fc: @ 207d6fc :thumb
	mov     r0, #0x0
	bx      lr
@ 0x207d700

.thumb
branch_207d700: @ 207d700 :thumb
	mov     r3, #0x0
	cmp     r2, #0x0
	bls     branch_207d718
.thumb
branch_207d706: @ 207d706 :thumb
	ldrh    r1, [r0, #0x0]
	cmp     r1, #0x0
	beq     branch_207d710
	mov     r0, #0x1
	bx      lr
@ 0x207d710

.thumb
branch_207d710: @ 207d710 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	cmp     r3, r2
	blo     branch_207d706
.thumb
branch_207d718: @ 207d718 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x207d71c

.word 0x5bc @ 0x207d71c
.word 0x51c @ 0x207d720
.word 0x6bc @ 0x207d724
.word 0x6f8 @ 0x207d728
.word 0x4ec @ 0x207d72c



.thumb
.globl Function_207d730
Function_207d730: @ 207d730 :thumb
	push    {r3,lr}
	mov     r3, r2
	mov     r2, #0x1
	bl      GetAdrToItemInItemList
	cmp     r0, #0x0
	bne     branch_207d742
	mov     r0, #0x0
	pop     {r3,pc}

branch_207d742: @ 207d742 :thumb
	ldrh    r0, [r0, #0x2]
	pop     {r3,pc}
@ 0x207d746


.align 2, 0
.thumb
.globl Function_207d748
Function_207d748: @ 207d748 :thumb
	push    {r3,lr}
	mov     r3, #0x1
	bl      GetAdrToItemInItemPocketList
	cmp     r0, #0x0
	bne     branch_207d758
	mov     r0, #0x0
	pop     {r3,pc}

branch_207d758: @ 207d758 :thumb
	ldrh    r0, [r0, #0x2]
	pop     {r3,pc}
@ 0x207d75c


/* Input:
r0: Source1
r1: Source2
r2: TempMemory
*/
thumb_func_start SwitchItemData
SwitchItemData: @ 207d75c :thumb
	push    {r3}
	add     sp, #-0x4
	ldrh    r3, [r0, #0x0]
	add     r2, sp, #0x0
	strh    r3, [r2, #0x0]
	ldrh    r3, [r0, #0x2]
	strh    r3, [r2, #0x2]

	ldrh    r3, [r1, #0x0]
	strh    r3, [r0, #0x0]
	ldrh    r3, [r1, #0x2]
	strh    r3, [r0, #0x2]

	ldrh    r0, [r2, #0x0]
	strh    r0, [r1, #0x0]
	ldrh    r0, [r2, #0x2]
	strh    r0, [r1, #0x2]
	add     sp, #0x4
	pop     {r3}
	bx      lr
thumb_func_end SwitchItemData


/* Input:
r0: ItemListAdr
r1: ItemListSize
*/
.thumb
Function_207d780: @ 207d780 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	str     r0, [sp, #0x0] @ ItemListAdr
	mov     r0, #0x0
	mov     r7, r1          @ ItemListSize
	str     r0, [sp, #0x4]
	sub     r0, r7, #0x1
	str     r0, [sp, #0x8] @ ItemListSize
	beq     branch_207d7c6

	ldr     r4, [sp, #0x0] @ ItemListAdr
branch_207d794: @ 207d794 :thumb
	ldr     r0, [sp, #0x4]
	add     r6, r0, #0x1
	cmp     r6, r7
	bhs     branch_207d7b8

	ldr     r0, [sp, #0x0] @ ItemListAdr
	lsl     r1, r6, #2
	add     r5, r0, r1
branch_207d7a2: @ 207d7a2 :thumb
	ldrh    r0, [r4, #0x2]
	cmp     r0, #0x0
	bne     branch_207d7b0
	mov     r0, r4
	mov     r1, r5
	bl      SwitchItemData
branch_207d7b0: @ 207d7b0 :thumb

	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, r7
	blo     branch_207d7a2

branch_207d7b8: @ 207d7b8 :thumb
	ldr     r0, [sp, #0x4]
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x8] @ ItemListSize
	str     r1, [sp, #0x4]
	cmp     r1, r0
	blo     branch_207d794

branch_207d7c6: @ 207d7c6 :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x207d7ca


.align 2, 0
.thumb
Function_207d7cc: @ 207d7cc :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	mov     r7, r1
	str     r0, [sp, #0x4]
	sub     r0, r7, #0x1
	str     r0, [sp, #0x8]
	beq     branch_207d820

	ldr     r4, [sp, #0x0]
branch_207d7e0: @ 207d7e0 :thumb
	ldr     r0, [sp, #0x4]
	add     r6, r0, #0x1
	cmp     r6, r7
	bhs     branch_207d812

	ldr     r0, [sp, #0x0]
	lsl     r1, r6, #2
	add     r5, r0, r1
branch_207d7ee: @ 207d7ee :thumb
	ldrh    r0, [r4, #0x2]
	cmp     r0, #0x0
	beq     branch_207d802

	ldrh    r0, [r5, #0x2]
	cmp     r0, #0x0
	beq     branch_207d80a

	ldrh    r1, [r4, #0x0]
	ldrh    r0, [r5, #0x0]
	cmp     r1, r0
	bls     branch_207d80a

branch_207d802: @ 207d802 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      SwitchItemData
branch_207d80a: @ 207d80a :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, r7
	blo     branch_207d7ee

branch_207d812: @ 207d812 :thumb
	ldr     r0, [sp, #0x4]
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x8]
	str     r1, [sp, #0x4]
	cmp     r1, r0
	blo     branch_207d7e0

branch_207d820: @ 207d820 :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x207d824

