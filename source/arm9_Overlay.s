thumb_func_start Call_FS_UnloadOverlay
Call_FS_UnloadOverlay: @ 20064f0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x1
	beq     branch_20064fe
	bl      ErrorHandling
branch_20064fe: @ 20064fe :thumb
	ldr     r1, [r4, #0x0]
	mov     r0, #0x0
	blx     FS_UnloadOverlay
	cmp     r0, #0x1
	beq     branch_200650e
	bl      ErrorHandling
branch_200650e: @ 200650e :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	pop     {r4,pc}
thumb_func_end Call_FS_UnloadOverlay


/* Input:
r0: OverlayNr
*/
thumb_func_start UnloadOverlay
UnloadOverlay: @ 2006514 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Call_FS_LoadOverlayInfo
	bl      Function_20066c0
	mov     r2, #0x0
	mov     r3, r0
branch_2006524: @ 2006524 :thumb
	ldr     r1, [r3, #0x4]
	cmp     r1, #0x1
	bne     branch_200653a
	ldr     r1, [r3, #0x0]
	cmp     r4, r1
	bne     branch_200653a
	lsl     r1, r2, #3
	add     r0, r0, r1
	bl      Call_FS_UnloadOverlay
	pop     {r4,pc}

branch_200653a: @ 200653a :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r3, #0x8
	cmp     r2, #0x8
	blt     branch_2006524
	pop     {r4,pc}
thumb_func_end UnloadOverlay


/* Input:
r0: OverlayNr
*/
thumb_func_start Call_FS_LoadOverlayInfo
Call_FS_LoadOverlayInfo: @ 2006544 :thumb
	push    {lr}
	add     sp, #-0x2c
	mov     r2, r0
	add     r0, sp, #0x0
	mov     r1, #0x0
	blx     FS_LoadOverlayInfo
	cmp     r0, #0x1
	beq     branch_200655a
	bl      ErrorHandling
branch_200655a: @ 200655a :thumb
	mov     r0, #0x2
	ldr     r2, [sp, #0x4]
	lsl     r0, r0, #24
	cmp     r2, r0
	bhi     branch_2006570
	lsr     r0, r0, #1
	cmp     r2, r0
	blo     branch_2006570
	add     sp, #0x2c
	mov     r0, #0x1
	pop     {pc}

branch_2006570: @ 2006570 :thumb
	mov     r0, #0x1
	ldr     r1, [pc, #0x18] @ 0x200658c, (=RAM_27e0000)
	lsl     r0, r0, #14
	add     r0, r1, r0
	cmp     r2, r0
	bhi     branch_2006586
	cmp     r2, r1
	blo     branch_2006586
	add     sp, #0x2c
	mov     r0, #0x2
	pop     {pc}

branch_2006586: @ 2006586 :thumb
	mov     r0, #0x0
	add     sp, #0x2c
	pop     {pc}
@ 0x200658c

.word RAM_27e0000 @ 0x200658c
thumb_func_end Call_FS_LoadOverlayInfo



/* Input:
r0: OverlayNr
r1: ??
*/
thumb_func_start LoadOverlay
LoadOverlay: @ 2006590 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r1, #0x0
	mvn     r1, r1
	mov     r5, r0          @ OverlayNr
	str     r1, [sp, #0x0]
	bl      Function_2006644
	cmp     r0, #0x0
	bne     branch_20065a8
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_20065a8: @ 20065a8 :thumb
	mov     r0, r5          @ OverlayNr
	bl      Call_FS_LoadOverlayInfo
	mov     r7, r0
	bl      Function_20066c0
	mov     r3, r0
	mov     r6, #0x0
	mov     r1, r3
branch_20065ba: @ 20065ba :thumb
	ldr     r0, [r1, #0x4]
	cmp     r0, #0x0
	bne     branch_20065cc
	lsl     r1, r6, #3
	add     r2, r3, r1
	mov     r0, #0x1
	str     r0, [r2, #0x4]
	str     r5, [r3, r1]
	b       branch_20065d4

branch_20065cc: @ 20065cc :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r1, #0x8
	cmp     r6, #0x8
	blt     branch_20065ba
branch_20065d4: @ 20065d4 :thumb
	cmp     r6, #0x8
	blt     branch_20065e0
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_20065e0: @ 20065e0 :thumb
	sub     r6, r7, #0x1
	cmp     r6, #0x1
	bhi     branch_20065f0
	mov     r0, #0x0
	mvn     r0, r0
	blx     FS_SetDefaultDMA
	str     r0, [sp, #0x0]
branch_20065f0: @ 20065f0 :thumb
	cmp     r4, #0x0
	beq     branch_Call_FS_LoadOverlay
	cmp     r4, #0x1
	beq     branch_LoadOverlayAndStart
	cmp     r4, #0x2
	beq     branch_LoadOverlayAsyncAndStart
	b       branch_2006622_ErrorHandling

branch_Call_FS_LoadOverlay: @ 20065fe :thumb
	mov     r0, #0x0
	mov     r1, r5          @ OverlayNr
	bl      Call_FS_LoadOverlay
	mov     r4, r0
	b       branch_200662a_FS_SetDefaultDMA

branch_LoadOverlayAndStart: @ 200660a :thumb
	mov     r0, #0x0
	mov     r1, r5          @ OverlayNr
	bl      LoadOverlayAndStart
	mov     r4, r0
	b       branch_200662a_FS_SetDefaultDMA

branch_LoadOverlayAsyncAndStart: @ 2006616 :thumb
	mov     r0, #0x0
	mov     r1, r5          @ OverlayNr
	bl      LoadOverlayAsyncAndStart
	mov     r4, r0
	b       branch_200662a_FS_SetDefaultDMA

branch_2006622_ErrorHandling: @ 2006622 :thumb
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_200662a_FS_SetDefaultDMA: @ 200662a :thumb
	cmp     r6, #0x1
	bhi     branch_2006634
	ldr     r0, [sp, #0x0]
	blx     FS_SetDefaultDMA
branch_2006634: @ 2006634 :thumb
	cmp     r4, #0x0
	bne     branch_2006640
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_2006640: @ 2006640 :thumb
	mov     r0, #0x1
	pop     {r3-r7,pc}
thumb_func_end LoadOverlay


Function_2006644: @ 2006644 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	add     r1, sp, #0xc
	add     r2, sp, #0x8
	mov     r4, r0
	bl      Function_20066e4
	cmp     r0, #0x0
	bne     branch_200665c
	add     sp, #0x10
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_200665c: @ 200665c :thumb
	mov     r0, r4
	bl      Call_FS_LoadOverlayInfo
	bl      Function_20066c0
	mov     r5, r0
	mov     r4, #0x0
	add     r6, sp, #0x4
	add     r7, sp, #0x0
branch_200666e: @ 200666e :thumb
	ldr     r0, [r5, #0x4]
	cmp     r0, #0x1
	bne     branch_20066b0
	ldr     r0, [r5, #0x0]
	mov     r1, r6
	mov     r2, r7
	bl      Function_20066e4
	cmp     r0, #0x1
	bne     branch_20066b0
	ldr     r1, [sp, #0x4]
	ldr     r2, [sp, #0xc]
	cmp     r2, r1
	blo     branch_2006690
	ldr     r0, [sp, #0x0]
	cmp     r2, r0
	blo     branch_20066a6
branch_2006690: @ 2006690 :thumb
	ldr     r3, [sp, #0x8]
	cmp     r3, r1
	bls     branch_200669c
	ldr     r0, [sp, #0x0]
	cmp     r3, r0
	bls     branch_20066a6
branch_200669c: @ 200669c :thumb
	cmp     r2, r1
	bhi     branch_20066b0
	ldr     r0, [sp, #0x0]
	cmp     r3, r0
	blo     branch_20066b0
branch_20066a6: @ 20066a6 :thumb
	bl      ErrorHandling
	add     sp, #0x10
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_20066b0: @ 20066b0 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x8
	cmp     r4, #0x8
	blt     branch_200666e
	mov     r0, #0x1
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x20066be


.align 2, 0
.thumb
Function_20066c0: @ 20066c0 :thumb
	cmp     r0, #0x0
	beq     branch_20066cc
	cmp     r0, #0x1
	beq     branch_20066d0
	cmp     r0, #0x2
	beq     branch_20066d4
branch_20066cc: @ 20066cc :thumb
	ldr     r0, =RAM_21bf370
	bx      lr

branch_20066d0: @ 20066d0 :thumb
	ldr     r0, =RAM_21bf3b0
	bx      lr

branch_20066d4: @ 20066d4 :thumb
	ldr     r0, =RAM_21bf3f0
	bx      lr
@ 0x20066d8

.pool



.thumb
Function_20066e4: @ 20066e4 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x2c
	mov     r3, r0
	mov     r5, r1
	mov     r4, r2

	add     r0, sp, #0x0
	mov     r1, #0x0
	mov     r2, r3
	blx     FS_LoadOverlayInfo
	cmp     r0, #0x0
	bne     branch_2006706
	bl      ErrorHandling
	add     sp, #0x2c
	mov     r0, #0x0
	pop     {r4,r5,pc}

branch_2006706: @ 2006706 :thumb
	ldr     r2, [sp, #0x4]
	str     r2, [r5, #0x0]
	ldr     r1, [sp, #0x8]
	ldr     r0, [sp, #0xc]
	add     r0, r1, r0
	add     r0, r2, r0
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	add     sp, #0x2c
	pop     {r4,r5,pc}
@ 0x200671a


thumb_func_start Call_FS_LoadOverlay
Call_FS_LoadOverlay: @ 200671c :thumb
	ldr     r3, =FS_LoadOverlay
	bx      r3
@ 0x2006720

.pool
thumb_func_end Call_FS_LoadOverlay



thumb_func_start LoadOverlayAndStart
LoadOverlayAndStart: @ 2006724 :thumb
	push    {lr}
	add     sp, #-0x2c
	mov     r3, r0
	mov     r2, r1
	add     r0, sp, #0x0
	mov     r1, r3
	blx     FS_LoadOverlayInfo
	cmp     r0, #0x0
	bne     branch_200673e
	add     sp, #0x2c
	mov     r0, #0x0
	pop     {pc}

branch_200673e: @ 200673e :thumb
	add     r0, sp, #0x0
	blx     FS_LoadOverlayImage
	cmp     r0, #0x0
	bne     branch_200674e
	add     sp, #0x2c
	mov     r0, #0x0
	pop     {pc}

branch_200674e: @ 200674e :thumb
	add     r0, sp, #0x0
	blx     FS_StartOverlay
	mov     r0, #0x1
	add     sp, #0x2c
	pop     {pc}
thumb_func_end LoadOverlayAndStart


thumb_func_start LoadOverlayAsyncAndStart
LoadOverlayAsyncAndStart: @ 200675c :thumb
	push    {lr}
	add     sp, #-0x74
	mov     r3, r0
	mov     r2, r1
	add     r0, sp, #0x0
	mov     r1, r3
	blx     FS_LoadOverlayInfo
	cmp     r0, #0x0
	bne     branch_2006776
	add     sp, #0x74
	mov     r0, #0x0
	pop     {pc}

branch_2006776: @ 2006776 :thumb
	add     r0, sp, #0x2c
	blx     FS_InitFile
	add     r0, sp, #0x0
	add     r1, sp, #0x2c
	blx     FS_LoadOverlayImageAsync
	add     r0, sp, #0x2c
	blx     FS_WaitAsync
	add     r0, sp, #0x2c
	blx     FS_CloseFile
	add     r0, sp, #0x0
	blx     FS_StartOverlay
	mov     r0, #0x1
	add     sp, #0x74
	pop     {pc}
thumb_func_end LoadOverlayAsyncAndStart
