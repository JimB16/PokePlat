thumb_func_start ReadNARCFile
ReadNARCFile: @ 20068c8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x60
	mov     r4, r1

	mov     r1, #0x0
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x14]
	str     r1, [sp, #0x10]
	str     r1, [sp, #0xc]
	add     r0, sp, #0x8
	strh    r1, [r0, #0x0]
	add     r0, sp, #0x18
	mov     r5, r2
	str     r3, [sp, #0x4]
	blx     FS_InitFile

	add     r0, sp, #0x18
	mov     r1, r4
	blx     FS_OpenFile
	add     r0, sp, #0x18
	mov     r1, #0xc
	mov     r2, #0x0
	blx     FS_SeekFile
	add     r0, sp, #0x18
	add     r1, sp, #0x14
	mov     r2, #0x2
	blx     FS_ReadFile
	ldr     r4, [sp, #0x14]
	add     r0, sp, #0x18
	add     r1, r4, #0x4
	mov     r2, #0x0
	blx     FS_SeekFile
	add     r0, sp, #0x18
	add     r1, sp, #0x14
	mov     r2, #0x4
	blx     FS_ReadFile
	add     r0, sp, #0x18
	add     r1, sp, #0x8
	mov     r2, #0x2
	blx     FS_ReadFile
	add     r0, sp, #0x8
	ldrh    r0, [r0, #0x0]
	cmp     r0, r5
	bgt     branch_200692e
	bl      ErrorHandling
branch_200692e: @ 200692e :thumb

	ldr     r0, [sp, #0x14]
	mov     r2, #0x0
	add     r6, r4, r0
	add     r0, sp, #0x18
	add     r1, r6, #0x4
	blx     FS_SeekFile
	add     r0, sp, #0x18
	add     r1, sp, #0x14
	mov     r2, #0x4
	blx     FS_ReadFile
	add     r4, #0xc
	lsl     r1, r5, #3
	add     r0, sp, #0x18
	add     r1, r4, r1
	mov     r2, #0x0
	ldr     r7, [sp, #0x14]
	blx     FS_SeekFile
	add     r0, sp, #0x18
	add     r1, sp, #0x10
	mov     r2, #0x4
	blx     FS_ReadFile
	add     r0, sp, #0x18
	add     r1, sp, #0xc
	mov     r2, #0x4
	blx     FS_ReadFile
	add     r2, r6, r7
	ldr     r1, [sp, #0x10]
	add     r2, #0x8
	add     r2, r2, r1
	ldr     r1, [sp, #0x4]
	add     r0, sp, #0x18
	add     r1, r1, r2
	mov     r2, #0x0
	blx     FS_SeekFile
	ldr     r0, [sp, #0x78]
	cmp     r0, #0x0
	bne     branch_200698a
	ldr     r1, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	sub     r0, r1, r0
branch_200698a: @ 200698a :thumb

	str     r0, [sp, #0x14]
	cmp     r0, #0x0
	bne     branch_2006994
	bl      ErrorHandling
branch_2006994: @ 2006994 :thumb

	ldr     r1, [sp, #0x0]
	ldr     r2, [sp, #0x14]
	add     r0, sp, #0x18
	blx     FS_ReadFile
	add     r0, sp, #0x18
	blx     FS_CloseFile

	add     sp, #0x60
	pop     {r3-r7,pc}
thumb_func_end ReadNARCFile


thumb_func_start LoadFileIntoMemory
LoadFileIntoMemory: @ 20069a8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x60

	mov     r5, r1
	mov     r1, #0x0
	mov     r4, r0
	str     r1, [sp, #0x14]
	str     r1, [sp, #0x10]
	str     r1, [sp, #0xc]
	add     r0, sp, #0x8
	strh    r1, [r0, #0x0]
	add     r0, sp, #0x18
	str     r2, [sp, #0x0]
	str     r3, [sp, #0x4]
	blx     FS_InitFile
	add     r0, sp, #0x18
	mov     r1, r4
	blx     FS_OpenFile
	add     r0, sp, #0x18
	mov     r1, #0xc
	mov     r2, #0x0
	blx     FS_SeekFile
	add     r0, sp, #0x18
	add     r1, sp, #0x14
	mov     r2, #0x2
	blx     FS_ReadFile
	ldr     r4, [sp, #0x14]
	add     r0, sp, #0x18
	add     r1, r4, #0x4
	mov     r2, #0x0
	blx     FS_SeekFile
	add     r0, sp, #0x18
	add     r1, sp, #0x14
	mov     r2, #0x4
	blx     FS_ReadFile
	add     r0, sp, #0x18
	add     r1, sp, #0x8
	mov     r2, #0x2
	blx     FS_ReadFile
	add     r0, sp, #0x8
	ldrh    r0, [r0, #0x0]
	cmp     r0, r5
	bgt     branch_2006a0e
	bl      ErrorHandling
branch_2006a0e: @ 2006a0e :thumb
	ldr     r0, [sp, #0x14]
	mov     r2, #0x0
	add     r6, r4, r0
	add     r0, sp, #0x18
	add     r1, r6, #0x4
	blx     FS_SeekFile
	add     r0, sp, #0x18
	add     r1, sp, #0x14
	mov     r2, #0x4
	blx     FS_ReadFile
	add     r4, #0xc
	lsl     r1, r5, #3
	add     r0, sp, #0x18
	add     r1, r4, r1
	mov     r2, #0x0
	ldr     r7, [sp, #0x14]
	blx     FS_SeekFile
	add     r0, sp, #0x18
	add     r1, sp, #0x10
	mov     r2, #0x4
	blx     FS_ReadFile
	add     r0, sp, #0x18
	add     r1, sp, #0xc
	mov     r2, #0x4
	blx     FS_ReadFile
	add     r2, r6, r7
	ldr     r1, [sp, #0x10]
	add     r2, #0x8
	add     r2, r2, r1
	ldr     r1, [sp, #0x4]
	add     r0, sp, #0x18
	add     r1, r1, r2
	mov     r2, #0x0
	blx     FS_SeekFile
	ldr     r0, [sp, #0x78]
	cmp     r0, #0x0
	bne     branch_2006a6a
	ldr     r1, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	sub     r0, r1, r0
branch_2006a6a: @ 2006a6a :thumb
	str     r0, [sp, #0x14]
	cmp     r0, #0x0
	bne     branch_2006a74
	bl      ErrorHandling
branch_2006a74: @ 2006a74 :thumb
	ldr     r0, [sp, #0x7c]
	cmp     r0, #0x0
	bne     branch_2006a84
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x14]
	bl      malloc
	b       branch_2006a8c

branch_2006a84: @ 2006a84 :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x14]
	bl      malloc2
branch_2006a8c: @ 2006a8c :thumb
	mov     r4, r0
	ldr     r2, [sp, #0x14]
	add     r0, sp, #0x18
	mov     r1, r4
	blx     FS_ReadFile
	add     r0, sp, #0x18
	blx     FS_CloseFile
	mov     r0, r4

	add     sp, #0x60
	pop     {r3-r7,pc}
thumb_func_end LoadFileIntoMemory


/* Input:
r1 = archive_id
r2 = file_id
*/
thumb_func_start LoadFromNARC
LoadFromNARC: @ 2006aa4 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4

	mov     r3, #0x0
	lsl     r4, r1, #2
	ldr     r1, =NARCStringPointer
	str     r3, [sp, #0x0]
	ldr     r1, [r1, r4]
	bl      ReadNARCFile

	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2006aba

.align 2
.pool
thumb_func_end LoadFromNARC



thumb_func_start LoadFromNARC_2
LoadFromNARC_2: @ 2006ac0 :thumb
	push    {r4,lr}
	add     sp, #-0x8

	mov     r3, #0x0
	str     r3, [sp, #0x0]
	lsl     r4, r0, #2
	ldr     r0, =NARCStringPointer
	str     r3, [sp, #0x4]
	ldr     r0, [r0, r4]
	bl      LoadFileIntoMemory

	add     sp, #0x8
	pop     {r4,pc}
@ 0x2006ad8

.align 2
.pool
thumb_func_end LoadFromNARC_2



thumb_func_start LoadFromNARC_4
LoadFromNARC_4: @ 2006adc :thumb
	push    {r4,lr}
	add     sp, #-0x8

	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r4, #0x1
	str     r4, [sp, #0x4]
	lsl     r4, r0, #2
	ldr     r0, =NARCStringPointer
	ldr     r0, [r0, r4]
	bl      LoadFileIntoMemory

	add     sp, #0x8
	pop     {r4,pc}
@ 0x2006af6

.align 2
.pool
thumb_func_end LoadFromNARC_4



thumb_func_start LoadFromNARC_3
LoadFromNARC_3: @ 2006afc :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4

	ldr     r4, [sp, #0x10]
	str     r4, [sp, #0x0]
	lsl     r4, r1, #2
	ldr     r1, =NARCStringPointer
	ldr     r1, [r1, r4]
	bl      ReadNARCFile

	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2006b12

.align 2
.pool
thumb_func_end LoadFromNARC_3



thumb_func_start LoadFromNARC_5
LoadFromNARC_5: @ 2006b18 :thumb
	push    {r4,lr}
	add     sp, #-0x8

	ldr     r4, [sp, #0x10]
	str     r4, [sp, #0x0]
	mov     r4, #0x0
	str     r4, [sp, #0x4]
	lsl     r4, r0, #2
	ldr     r0, =NARCStringPointer
	ldr     r0, [r0, r4]
	bl      LoadFileIntoMemory

	add     sp, #0x8
	pop     {r4,pc}
@ 0x2006b32

.align 2
.pool
thumb_func_end LoadFromNARC_5



thumb_func_start LoadFromNARC_6
LoadFromNARC_6: @ 2006b38 :thumb
	push    {r4,lr}
	add     sp, #-0x8

	ldr     r4, [sp, #0x10]
	str     r4, [sp, #0x0]
	mov     r4, #0x1
	str     r4, [sp, #0x4]
	lsl     r4, r0, #2
	ldr     r0, =NARCStringPointer
	ldr     r0, [r0, r4]
	bl      LoadFileIntoMemory

	add     sp, #0x8
	pop     {r4,pc}
@ 0x2006b52

.align 2
.pool
thumb_func_end LoadFromNARC_6



thumb_func_start LoadFromNARC_7
LoadFromNARC_7: @ 2006b58 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x58
	mov     r5, r1
	mov     r1, #0x0
	mov     r4, r0
	str     r1, [sp, #0xc]
	str     r1, [sp, #0x8]
	str     r1, [sp, #0x4]
	add     r0, sp, #0x0
	strh    r1, [r0, #0x0]
	add     r0, sp, #0x10
	blx     FS_InitFile
	ldr     r1, =NARCStringPointer
	lsl     r2, r4, #2
	ldr     r1, [r1, r2]
	add     r0, sp, #0x10
	blx     FS_OpenFile
	add     r0, sp, #0x10
	mov     r1, #0xc
	mov     r2, #0x0
	blx     FS_SeekFile
	add     r0, sp, #0x10
	add     r1, sp, #0xc
	mov     r2, #0x2
	blx     FS_ReadFile
	ldr     r4, [sp, #0xc]
	add     r0, sp, #0x10
	add     r1, r4, #0x4
	mov     r2, #0x0
	blx     FS_SeekFile
	add     r0, sp, #0x10
	add     r1, sp, #0xc
	mov     r2, #0x4
	blx     FS_ReadFile
	add     r0, sp, #0x10
	add     r1, sp, #0x0
	mov     r2, #0x2
	blx     FS_ReadFile
	add     r0, sp, #0x0
	ldrh    r0, [r0, #0x0]
	cmp     r0, r5
	bgt     branch_2006bbe
	bl      ErrorHandling
branch_2006bbe: @ 2006bbe :thumb
	ldr     r0, [sp, #0xc]
	mov     r2, #0x0
	add     r6, r4, r0
	add     r0, sp, #0x10
	add     r1, r6, #0x4
	blx     FS_SeekFile
	add     r0, sp, #0x10
	add     r1, sp, #0xc
	mov     r2, #0x4
	blx     FS_ReadFile
	add     r4, #0xc
	lsl     r1, r5, #3
	add     r0, sp, #0x10
	add     r1, r4, r1
	mov     r2, #0x0
	ldr     r7, [sp, #0xc]
	blx     FS_SeekFile
	add     r0, sp, #0x10
	add     r1, sp, #0x8
	mov     r2, #0x4
	blx     FS_ReadFile
	add     r0, sp, #0x10
	add     r1, sp, #0x4
	mov     r2, #0x4
	blx     FS_ReadFile
	add     r2, r6, r7
	ldr     r1, [sp, #0x8]
	add     r2, #0x8
	add     r1, r2, r1
	add     r0, sp, #0x10
	mov     r2, #0x0
	blx     FS_SeekFile
	ldr     r1, [sp, #0x4]
	ldr     r0, [sp, #0x8]
	sub     r0, r1, r0
	str     r0, [sp, #0xc]
	bne     branch_2006c18
	bl      ErrorHandling
branch_2006c18: @ 2006c18 :thumb
	ldr     r0, [sp, #0xc]
	add     sp, #0x58
	pop     {r3-r7,pc}
@ 0x2006c1e

.align 2
.pool
thumb_func_end LoadFromNARC_7



thumb_func_start LoadFromNARC_8
LoadFromNARC_8: @ 2006c24 :thumb
	push    {r3-r5,lr}
	mov     r5, r0

	mov     r0, r1
	mov     r1, #0x54
	bl      malloc
	mov     r4, r0
	beq     branch_2006ca0_end

	mov     r1, #0x0
	str     r1, [r4, #0x48]
	blx     FS_InitFile
	ldr     r1, =NARCStringPointer
	lsl     r2, r5, #2
	ldr     r1, [r1, r2]
	mov     r0, r4
	blx     FS_OpenFile
	mov     r0, r4
	mov     r1, #0xc
	mov     r2, #0x0
	blx     FS_SeekFile
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x48
	mov     r2, #0x2
	blx     FS_ReadFile
	ldr     r1, [r4, #0x48]
	mov     r0, r4
	.hword  0x1d09 @ add r1, r1, #0x4
	mov     r2, #0x0
	blx     FS_SeekFile
	mov     r0, r4
	add     r1, sp, #0x0
	mov     r2, #0x4
	blx     FS_ReadFile
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x50
	mov     r2, #0x2
	blx     FS_ReadFile
	ldr     r1, [r4, #0x48]
	ldr     r0, [sp, #0x0]
	mov     r2, #0x0
	add     r5, r1, r0
	mov     r0, r4
	add     r1, r5, #0x4
	blx     FS_SeekFile
	mov     r0, r4
	add     r1, sp, #0x0
	mov     r2, #0x4
	blx     FS_ReadFile
	ldr     r0, [sp, #0x0]
	add     r0, r5, r0
	str     r0, [r4, #0x4c]
branch_2006ca0_end: @ 2006ca0 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2006ca4

.pool
thumb_func_end LoadFromNARC_8
