


/* Return:
r0: NARCPokeGra
*/
thumb_func_start AllocInitNARCPokeGra
AllocInitNARCPokeGra: @ 200762c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r1, #NARCPokeGra_Size/4
	lsl     r1, r1, #2
	mov     r5, r0
	bl      malloc
	mov     r4, r0

	mov     r0, #NARCPokeGra_2e8/4
	lsl     r0, r0, #2
	mov     r1, r0
	mov     r3, r0
	str     r5, [r4, r0] @ NARCPokeGra_2e8
	mov     r2, #0x0
	add     r1, #NARCPokeGra_330 - NARCPokeGra_2e8
	strb    r2, [r4, r1] @ NARCPokeGra_330
	add     r1, r0, #NARCPokeGra_TexVRAMOffset - NARCPokeGra_2e8
	str     r2, [r4, r1] @ NARCPokeGra_TexVRAMOffset
	mov     r1, #0x2
	lsl     r1, r1, #14
	add     r3, #NARCPokeGra_2f0 - NARCPokeGra_2e8
	str     r1, [r4, r3] @ NARCPokeGra_2f0
	mov     r3, r0
	add     r3, #NARCPokeGra_2f4 - NARCPokeGra_2e8
	str     r2, [r4, r3] @ NARCPokeGra_2f4
	mov     r2, #0x80
	add     r0, #NARCPokeGra_2f8 - NARCPokeGra_2e8
	str     r2, [r4, r0] @ NARCPokeGra_2f8

	mov     r0, r5
	bl      malloc
	mov     r1, #NARCPokeGra_2fc/4
	lsl     r1, r1, #2
	str     r0, [r4, r1] @ NARCPokeGra_2fc

	mov     r0, r5
	mov     r1, #0xc0
	bl      malloc
	mov     r1, #NARCPokeGra_300/256
	lsl     r1, r1, #8
	str     r0, [r4, r1] @ NARCPokeGra_300
	ldr     r1, [r4, r1] @ NARCPokeGra_300
	mov     r0, #0x0
	mov     r2, #0x4
	blx     MIi_CpuClearFast

	mov     r0, r5
	mov     r1, #0xc0
	bl      malloc
	mov     r1, #NARCPokeGra_304/4
	lsl     r1, r1, #2
	str     r0, [r4, r1] @ NARCPokeGra_304
	ldr     r1, [r4, r1] @ NARCPokeGra_304
	mov     r0, #0x0
	mov     r2, #0x4
	blx     MIi_CpuClearFast
	mov     r6, #0x0
	mov     r5, r4
	mov     r7, r6
branch_20076a6: @ 20076a6 :thumb
	mov     r0, r7
	mov     r1, r5
	mov     r2, #0xac
	blx     MIi_CpuClearFast
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #NARCPokeGra_ac
	cmp     r6, #0x4
	blt     branch_20076a6
	blx     Function_20a73c0
	ldr     r2, [pc, #0x9c] @ 0x200775c, (=0x333) NARCPokeGra_333
	mov     r0, #0x0
	strb    r0, [r4, r2] @ NARCPokeGra_333
	sub     r2, #NARCPokeGra_333 - NARCPokeGra_2e8
	ldr     r2, [r4, r2] @ NARCPokeGra_2e8

	mov     r0, #PlOtherpoke_Narc
	mov     r1, #0xfb
	bl      LoadFromNARC_2
	add     r1, sp, #0xc
	str     r0, [sp, #0x4]
	blx     Function_20a7118
	ldr     r0, [sp, #0xc]
	mov     r1, #NARCPokeGra_30c/4
	ldr     r0, [r0, #0x4]
	lsl     r1, r1, #2
	str     r0, [r4, r1] @ NARCPokeGra_30c
	ldr     r0, [sp, #0xc]
	ldr     r2, [r0, #0x8]
	add     r0, r1, #NARCPokeGra_310 - NARCPokeGra_30c
	str     r2, [r4, r0] @ NARCPokeGra_310
	ldr     r0, [sp, #0xc]
	add     r1, #NARCPokeGra_314 - NARCPokeGra_30c
	ldr     r0, [r0, #0xc]
	str     r0, [r4, r1] @ NARCPokeGra_314

	ldr     r0, [sp, #0xc]
	ldr     r0, [r0, #0x14]
	str     r0, [sp, #0x8]
	bl      PokegraDecrypt_forward
	ldr     r1, [sp, #0x8]
	mov     r0, #NARCPokeGra_2fc/4
	lsl     r0, r0, #2
	mov     r2, #0x2
	ldrb    r1, [r1, #0x0]
	ldr     r0, [r4, r0] @ NARCPokeGra_2fc
	lsl     r2, r2, #14
	blx     MI_CpuFill8

	mov     r0, #0x0
	mov     r7, #NARCPokeGra_2fc/4
	ldr     r6, [pc, #0x4c] @ 0x2007760, (=0x5050)
	mov     r12, r0
	str     r0, [sp, #0x0]
	mov     r3, r0
	lsl     r7, r7, #2
branch_200771a: @ 200771a :thumb
	ldr     r2, [sp, #0x8]
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	add     r2, r2, r0
branch_2007722: @ 2007722 :thumb
	ldr     r5, [r4, r7] @ NARCPokeGra_2fc
	ldrb    r0, [r2, #0x0]
	add     r5, r3, r5
	add     r5, r1, r5
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1c52 @ add r2, r2, #0x1
	strb    r0, [r5, r6]
	cmp     r1, #0x28
	blt     branch_2007722

	ldr     r0, [sp, #0x0]
	add     r3, #0x80
	add     r0, #0x50
	str     r0, [sp, #0x0]
	mov     r0, r12
	.hword  0x1c40 @ add r0, r0, #0x1
	mov     r12, r0
	cmp     r0, #0x50
	blt     branch_200771a

	ldr     r0, [sp, #0x4]
	bl      free
	ldr     r0, [pc, #0x14] @ 0x2007764, (=0x331) NARCPokeGra_331
	mov     r1, #0x1
	strb    r1, [r4, r0] @ NARCPokeGra_331
	.hword  0x1c40 @ add r0, r0, #NARCPokeGra_332 - NARCPokeGra_331
	strb    r1, [r4, r0] @ NARCPokeGra_332

	mov     r0, r4

	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x200775c

.word 0x333 @ 0x200775c
.word 0x5050 @ 0x2007760
.word 0x331 @ 0x2007764
thumb_func_end AllocInitNARCPokeGra



/* Input:
r0: NARCPokeGra
*/
thumb_func_start DrawNARCPokeGra
DrawNARCPokeGra: @ 2007768 :thumb todo
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r5, r0              @ NARCPokeGra
	bl      Function_2008b78

	mov     r0, r5
	bl      Function_2008fc8
	blx     Function_20b2628
	mov     r6, #NARCPokeGra_TexColor0/4
	mov     r0, #0x0
	ldr     r4, =MATRIX_PUSH
	lsl     r6, r6, #2
	str     r0, [r4] @ MATRIX_PUSH
	str     r0, [sp, #0x18]

	mov     r0, r6
	sub     r0, #NARCPokeGra_TexColor0 - NARCPokeGra_TexTSize
	ldr     r1, [r5, r0] @ NARCPokeGra_TexTSize
	mov     r3, r6
	ldr     r2, [r5, r6] @ NARCPokeGra_TexColor0
	mov     r0, r6
	sub     r3, #NARCPokeGra_TexColor0 - NARCPokeGra_TexFormat
	add     r6, #NARCPokeGra_TexVRAMOffset - NARCPokeGra_TexColor0
	ldr     r3, [r5, r3] @ NARCPokeGra_TexFormat
	ldr     r6, [r5, r6] @ NARCPokeGra_TexVRAMOffset
	sub     r0, #NARCPokeGra_TexColor0 - NARCPokeGra_TexSSize
	ldr     r0, [r5, r0] @ NARCPokeGra_TexSSize
	lsr     r6, r6, #3 @ Texture VRAM Offset div 8 (0..FFFFh -> 512K RAM in Slot 0,1,2,3)
	lsl     r3, r3, #26 @ Texture Format        (0..7)
	orr     r6, r3
	mov     r3, #0x1
	lsl     r3, r3, #30 @ Texture Coordinates Transformation Mode (0..3)
	lsl     r0, r0, #20 @ Texture S-Size        (for N=0..7: Size=(8 SHL N); ie. 8..1024 texels)
	orr     r3, r6
	lsl     r1, r1, #23 @ Texture T-Size        (for N=0..7: Size=(8 SHL N); ie. 8..1024 texels)
	orr     r0, r3
	lsl     r2, r2, #29 @ Color 0 of 4/16/256-Color Palettes (0=Displayed, 1=Made Transparent)
	orr     r0, r1
	orr     r0, r2
	str     r0, [r4, #(GFX_TEX_FORMAT - MATRIX_PUSH)] @ TEXIMAGE_PARAM

	ldr     r0, [sp, #0x18]
	ldr     r7, =Unknown_20e4ecc
	mov     r4, r5
	str     r0, [sp, #0x14]
branch_20077c2: @ 20077c2 :thumb
	ldr     r0, [r4, #NARCPokeGra_0]
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	beq     branch_20077d8

	ldr     r0, [r4, #NARCPokeGra_54]
	lsl     r1, r0, #31
	lsr     r1, r1, #31
	bne     branch_20077d8

	lsl     r0, r0, #20
	lsr     r0, r0, #31
	beq     branch_20077da

branch_20077d8: @ 20077d8 :thumb
	b       branch_2007b42

branch_20077da: @ 20077da :thumb
	ldr     r2, [r4, #NARCPokeGra_68]
	cmp     r2, #0x0
	beq     branch_20077e8
	mov     r1, r4
	mov     r0, r4
	add     r1, #NARCPokeGra_24
	blx     r2
branch_20077e8: @ 20077e8 :thumb

	blx     Function_20b2628
	ldr     r0, =NARCPokeGra_333
	ldrb    r0, [r5, r0] @ NARCPokeGra_333
	cmp     r0, #0x1
	beq     branch_20077fa
	ldr     r0, =MATRIX_IDENTITY
	mov     r1, #0x0
	str     r1, [r0]
branch_20077fa: @ 20077fa :thumb

	mov     r0, r4
	bl      Function_20088d8

	mov     r0, #NARCPokeGra_TexFormat/4
	lsl     r0, r0, #2
	ldr     r0, [r5, r0] @ NARCPokeGra_TexFormat
	cmp     r0, #0x2
	bne     branch_200780e

	mov     r0, #0x1
	b       branch_2007810

branch_200780e: @ 200780e :thumb
	mov     r0, #0x0
branch_2007810: @ 2007810 :thumb
	mov     r1, #NARCPokeGra_2f4/4
	lsl     r1, r1, #2
	ldr     r2, [r5, r1] @ NARCPokeGra_2f4
	ldr     r1, [sp, #0x14]
	mov     r3, #NARCPokeGra_40
	add     r2, r2, r1
	mov     r1, #0x4
	sub     r0, r1, r0
	mov     r1, r2
	lsr     r1, r0
	ldr     r0, =GFX_PAL_FORMAT
	str     r1, [r0]

	ldr     r0, [r4, #NARCPokeGra_28]
	ldsh    r3, [r4, r3] @ NARCPokeGra_40
	lsl     r2, r0, #12
	mov     r0, #NARCPokeGra_26
	ldsh    r1, [r4, r0] @ NARCPokeGra_26
	mov     r0, #NARCPokeGra_42
	ldsh    r0, [r4, r0] @ NARCPokeGra_42
	add     r0, r1, r0
	lsl     r1, r0, #12
	mov     r0, #NARCPokeGra_24
	ldsh    r0, [r4, r0] @ NARCPokeGra_24
	add     r0, r0, r3
	lsl     r3, r0, #12
	ldr     r0, =MATRIX_TRANSLATE
	str     r3, [r0]
	str     r1, [r0]
	str     r2, [r0]

	ldrh    r0, [r4, #NARCPokeGra_38]
	asr     r0, r0, #4
	lsl     r2, r0, #2
	ldr     r0, =Unknown_20f983c
	add     r1, r0, r2
	ldsh    r0, [r0, r2]
	mov     r2, #0x2
	ldsh    r1, [r1, r2]
	blx     G3_RotX

	ldrh    r0, [r4, #NARCPokeGra_3a]
	asr     r0, r0, #4
	lsl     r2, r0, #2
	ldr     r0, =Unknown_20f983c
	add     r1, r0, r2
	ldsh    r0, [r0, r2]
	mov     r2, #0x2
	ldsh    r1, [r1, r2]
	blx     G3_RotY

	ldrh    r0, [r4, #NARCPokeGra_3c]
	asr     r0, r0, #4
	lsl     r2, r0, #2
	ldr     r0, =Unknown_20f983c
	add     r1, r0, r2
	ldsh    r0, [r0, r2]
	mov     r2, #0x2
	ldsh    r1, [r1, r2]
	blx     G3_RotZ

	ldr     r0, [r4, #NARCPokeGra_28]
	mov     r3, #NARCPokeGra_40
	lsl     r0, r0, #12
	neg     r2, r0
	mov     r0, #NARCPokeGra_26
	ldsh    r1, [r4, r0] @ NARCPokeGra_26
	mov     r0, #NARCPokeGra_42
	ldsh    r0, [r4, r0] @ NARCPokeGra_42
	ldsh    r3, [r4, r3] @ NARCPokeGra_40
	add     r0, r1, r0
	lsl     r0, r0, #12
	neg     r1, r0
	mov     r0, #NARCPokeGra_24
	ldsh    r0, [r4, r0] @ NARCPokeGra_24
	add     r0, r0, r3
	lsl     r0, r0, #12
	neg     r3, r0
	ldr     r0, =MATRIX_TRANSLATE
	str     r3, [r0]
	str     r1, [r0]
	str     r2, [r0]

	ldr     r0, [r4, #NARCPokeGra_50]
	lsl     r1, r0, #17
	lsr     r1, r1, #27
	lsl     r3, r0, #22
	lsl     r2, r1, #10
	lsl     r1, r0, #27
	lsr     r3, r3, #27
	lsr     r1, r1, #27
	lsl     r3, r3, #5
	orr     r1, r3
	orr     r1, r2
	lsl     r1, r1, #16
	lsr     r3, r1, #16
	lsl     r1, r0, #2
	lsr     r1, r1, #27
	lsl     r2, r1, #10
	lsl     r1, r0, #12
	lsl     r0, r0, #7
	lsr     r0, r0, #27
	lsr     r1, r1, #27
	lsl     r0, r0, #5
	orr     r0, r1
	orr     r0, r2
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	lsl     r0, r0, #16
	mov     r1, r3
	orr     r1, r0
	mov     r0, #0x2
	lsl     r0, r0, #14
	orr     r1, r0
	ldr     r0, =GFX_DIFFUSE_AMBIENT
	str     r1, [r0]
	ldr     r1, =16<<0|16<<5|16<<10
	.hword  0x1d00 @ add r0, r0, #GFX_SPECULAR_EMISSION - GFX_DIFFUSE_AMBIENT
	str     r1, [r0] @ GFX_SPECULAR_EMISSION

	ldr     r1, [r4, #NARCPokeGra_0]
	ldr     r0, [r4, #NARCPokeGra_54]
	lsl     r1, r1, #25
	lsl     r0, r0, #25
	lsr     r1, r1, #26
	lsr     r0, r0, #27
	lsl     r2, r1, #24
	mov     r1, #0xc0
	lsl     r0, r0, #16
	orr     r1, r2
	orr     r1, r0
	ldr     r0, =GFX_POLY_FORMAT
	str     r1, [r0]
	ldr     r0, [r4, #NARCPokeGra_54]
	lsl     r0, r0, #30
	lsr     r0, r0, #31
	beq     branch_2007992

	mov     r0, r4
	add     r0, #NARCPokeGra_5b
	ldrb    r0, [r0] @ NARCPokeGra_5b
	mov     r1, r4
	add     r1, #NARCPokeGra_44
	lsl     r3, r0, #4
	ldrb    r2, [r1] @ NARCPokeGra_44
	ldr     r1, [r7, r3]
	add     r0, r7, r3
	add     r6, r2, r1
	mov     r1, r4
	add     r1, #NARCPokeGra_46
	ldrb    r1, [r1] @ NARCPokeGra_46
	mov     r3, r4
	add     r3, #NARCPokeGra_47
	str     r1, [sp, #0x1c]
	mov     r1, r4
	add     r1, #NARCPokeGra_45
	ldrb    r3, [r3] @ NARCPokeGra_47
	ldrb    r1, [r1] @ NARCPokeGra_45
	ldr     r0, [r0, #0x4]
	mov     r12, r3
	str     r3, [sp, #0x0]
	ldr     r3, [sp, #0x1c]
	add     r0, r1, r0
	str     r6, [sp, #0x4]
	str     r0, [sp, #0x8]
	add     r3, r3, r6
	str     r3, [sp, #0xc]
	mov     r3, r12
	add     r0, r3, r0
	str     r0, [sp, #0x10]
	mov     r3, #NARCPokeGra_24
	ldsh    r3, [r4, r3] @ NARCPokeGra_24
	mov     r0, #NARCPokeGra_2c
	ldsh    r0, [r4, r0] @ NARCPokeGra_2c
	sub     r3, #0x28
	add     r2, r3, r2
	add     r0, r0, r2
	mov     r3, #NARCPokeGra_26
	ldsh    r3, [r4, r3] @ NARCPokeGra_26
	mov     r2, #NARCPokeGra_2e
	lsl     r0, r0, #16
	sub     r3, #0x28
	add     r1, r3, r1
	ldsh    r2, [r4, r2] @ NARCPokeGra_2e
	ldr     r3, [r4, #NARCPokeGra_28]
	asr     r0, r0, #16
	add     r2, r2, r1
	mov     r1, #NARCPokeGra_6e
	ldsb    r1, [r4, r1] @ NARCPokeGra_6e
	sub     r1, r2, r1
	ldr     r2, [r4, #NARCPokeGra_30]
	lsl     r1, r1, #16
	add     r2, r3, r2
	ldr     r3, [sp, #0x1c]
	asr     r1, r1, #16
	blx     DrawTranslatedScaledTexturedQuad
	b       branch_20079fe

branch_2007992: @ 2007992 :thumb
	mov     r0, #NARCPokeGra_34
	ldsh    r1, [r4, r0] @ NARCPokeGra_34
	mov     r0, #0x50
	mul     r0, r1
	asr     r3, r0, #8
	mov     r0, #NARCPokeGra_36
	ldsh    r1, [r4, r0] @ NARCPokeGra_36
	mov     r0, #0x50
	mul     r0, r1
	asr     r6, r0, #8
	mov     r0, r4
	add     r0, #NARCPokeGra_5b
	ldrb    r0, [r0] @ NARCPokeGra_5b
	lsl     r1, r0, #4
	str     r6, [sp, #0x0]
	add     r0, r7, r1
	ldr     r1, [r7, r1]
	str     r1, [sp, #0x4]
	ldr     r1, [r0, #0x4]
	str     r1, [sp, #0x8]
	ldr     r1, [r0, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [r0, #0xc]
	lsr     r1, r3, #31
	str     r0, [sp, #0x10]
	mov     r0, #NARCPokeGra_24
	add     r1, r3, r1
	ldsh    r0, [r4, r0] @ NARCPokeGra_24
	asr     r1, r1, #1
	sub     r0, r0, r1
	mov     r1, #NARCPokeGra_2c
	ldsh    r1, [r4, r1] @ NARCPokeGra_2c
	add     r0, r0, r1
	mov     r1, #NARCPokeGra_26
	ldsh    r2, [r4, r1] @ NARCPokeGra_26
	lsr     r1, r6, #31
	add     r1, r6, r1
	asr     r1, r1, #1
	sub     r1, r2, r1
	mov     r2, #NARCPokeGra_2e
	ldsh    r2, [r4, r2] @ NARCPokeGra_2e
	lsl     r0, r0, #16
	ldr     r6, [r4, #NARCPokeGra_28]
	add     r1, r1, r2
	mov     r2, #NARCPokeGra_6e
	ldsb    r2, [r4, r2] @ NARCPokeGra_6e
	asr     r0, r0, #16
	sub     r1, r1, r2
	ldr     r2, [r4, #NARCPokeGra_30]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     r2, r6, r2
	blx     DrawTranslatedScaledTexturedQuad

branch_20079fe: @ 20079fe :thumb
	mov     r0, r4
	add     r0, #NARCPokeGra_6c
	ldrh    r0, [r0] @ NARCPokeGra_6c
	lsl     r1, r0, #30
	lsr     r1, r1, #30
	beq     branch_2007a24

	lsl     r0, r0, #25
	lsr     r0, r0, #30
	beq     branch_2007a24

	ldr     r0, [r4, #NARCPokeGra_54]
	lsl     r0, r0, #30
	lsr     r0, r0, #31
	bne     branch_2007a24

	mov     r0, #NARCPokeGra_334/4
	lsl     r0, r0, #2
	ldr     r1, [r5, r0] @ NARCPokeGra_334
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_2007a26

branch_2007a24: @ 2007a24 :thumb
	b       branch_2007b42

branch_2007a26: @ 2007a26 :thumb
	ldr     r0, =NARCPokeGra_333
	ldrb    r0, [r5, r0] @ NARCPokeGra_333
	cmp     r0, #0x1
	beq     branch_2007a34
	ldr     r0, =MATRIX_IDENTITY
	mov     r1, #0x0
	str     r1, [r0]
branch_2007a34: @ 2007a34 :thumb

	mov     r0, #NARCPokeGra_TexFormat/4
	lsl     r0, r0, #2
	ldr     r0, [r5, r0] @ NARCPokeGra_TexFormat
	cmp     r0, #0x2
	bne     branch_2007a42

	mov     r1, #0x1
	b       branch_2007a44

branch_2007a42: @ 2007a42 :thumb
	mov     r1, #0x0
branch_2007a44: @ 2007a44 :thumb
	mov     r2, r4
	add     r2, #NARCPokeGra_6c
	ldrh    r2, [r2] @ NARCPokeGra_6c
	mov     r0, #NARCPokeGra_2f4/4
	lsl     r0, r0, #2
	lsl     r2, r2, #30
	lsr     r2, r2, #30
	.hword  0x1cd2 @ add r2, r2, #0x3
	ldr     r0, [r5, r0] @ NARCPokeGra_2f4
	lsl     r2, r2, #5
	add     r2, r0, r2
	mov     r0, #0x4
	sub     r0, r0, r1
	mov     r1, r2
	lsr     r1, r0
	ldr     r0, =GFX_PAL_FORMAT @ PLTT_BASE
	str     r1, [r0]

	mov     r0, r4
	add     r0, #NARCPokeGra_6c
	ldrh    r0, [r0] @ NARCPokeGra_6c
	lsl     r0, r0, #27
	lsr     r0, r0, #31
	beq     branch_2007a84

	mov     r0, #NARCPokeGra_34
	ldsh    r0, [r4, r0] @ NARCPokeGra_34
	lsl     r0, r0, #6
	asr     r3, r0, #8
	mov     r0, #NARCPokeGra_36
	ldsh    r0, [r4, r0] @ NARCPokeGra_36
	lsl     r0, r0, #4
	asr     r1, r0, #8
	b       branch_2007a88

branch_2007a84: @ 2007a84 :thumb
	mov     r3, #0x40
	mov     r1, #0x10
branch_2007a88: @ 2007a88 :thumb
	mov     r0, r4
	add     r0, #NARCPokeGra_6c
	ldrh    r0, [r0] @ NARCPokeGra_6c
	lsl     r0, r0, #29
	lsr     r0, r0, #31
	beq     branch_2007aaa
	mov     r0, #NARCPokeGra_74
	ldsh    r2, [r4, r0] @ NARCPokeGra_74
	mov     r0, #NARCPokeGra_24
	mov     r6, #NARCPokeGra_2c
	ldsh    r0, [r4, r0] @ NARCPokeGra_24
	ldsh    r6, [r4, r6] @ NARCPokeGra_2c
	add     r0, r0, r6
	add     r2, r2, r0
	mov     r0, r4
	add     r0, #NARCPokeGra_70
	strh    r2, [r0] @ NARCPokeGra_70
branch_2007aaa: @ 2007aaa :thumb

	mov     r0, r4
	add     r0, #NARCPokeGra_6c
	ldrh    r0, [r0] @ NARCPokeGra_6c
	lsl     r0, r0, #28
	lsr     r0, r0, #31
	beq     branch_2007acc
	mov     r0, #NARCPokeGra_76
	ldsh    r2, [r4, r0] @ NARCPokeGra_76
	mov     r0, #NARCPokeGra_26
	mov     r6, #NARCPokeGra_2e
	ldsh    r0, [r4, r0] @ NARCPokeGra_26
	ldsh    r6, [r4, r6] @ NARCPokeGra_2e
	add     r0, r0, r6
	add     r2, r2, r0
	mov     r0, r4
	add     r0, #NARCPokeGra_72
	strh    r2, [r0] @ NARCPokeGra_72
branch_2007acc: @ 2007acc :thumb

	mov     r0, r4
	add     r0, #NARCPokeGra_6c
	ldrh    r0, [r0] @ NARCPokeGra_6c
	lsl     r0, r0, #25
	lsr     r0, r0, #30
	lsl     r2, r0, #4
	ldr     r0, =Unknown_20e4d50
	b       branch_2007b08
@ 0x2007adc

.align 2
.pool

.thumb
branch_2007b08: @ 2007b08 :thumb
	str     r1, [sp, #0x0]
	add     r6, r0, r2
	ldr     r0, [r0, r2]
	lsr     r2, r3, #31
	str     r0, [sp, #0x4]
	ldr     r0, [r6, #0x4]
	add     r2, r3, r2
	str     r0, [sp, #0x8]
	ldr     r0, [r6, #0x8]
	asr     r2, r2, #1
	str     r0, [sp, #0xc]
	ldr     r0, [r6, #0xc]
	str     r0, [sp, #0x10]
	mov     r0, #NARCPokeGra_70
	ldsh    r0, [r4, r0] @ NARCPokeGra_70
	sub     r0, r0, r2
	mov     r2, #NARCPokeGra_72
	ldsh    r6, [r4, r2] @ NARCPokeGra_72
	lsr     r2, r1, #31
	add     r2, r1, r2
	asr     r1, r2, #1
	sub     r1, r6, r1
	lsl     r0, r0, #16
	lsl     r1, r1, #16
	ldr     r2, =0xfffffc18
	asr     r0, r0, #16
	asr     r1, r1, #16
	blx     DrawTranslatedScaledTexturedQuad

branch_2007b42: @ 2007b42 :thumb
	ldr     r0, [sp, #0x14]
	add     r4, #NARCPokeGra_ac
	add     r0, #0x20
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x18]
	add     r7, #0x20
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x18]
	cmp     r0, #0x4
	bge     branch_2007b58
	b       branch_20077c2

branch_2007b58: @ 2007b58 :thumb
	ldr     r0, =MATRIX_POP
	mov     r1, #0x1
	str     r1, [r0]

	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x2007b62

.align 2
.pool
thumb_func_end DrawNARCPokeGra



.thumb
.globl Function_2007b6c
Function_2007b6c: @ 2007b6c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xbf
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      free
	mov     r0, #0x3
	lsl     r0, r0, #8
	ldr     r0, [r4, r0]
	bl      free
	mov     r0, #0xc1
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      free
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x2007b96


.align 2, 0
.thumb
.globl Function_2007b98
Function_2007b98: @ 2007b98 :thumb
	push    {r3,r4}
	mov     r1, r0
	mov     r3, #0x0
	add     r1, #0x59
	strb    r3, [r1, #0x0]
	mov     r1, r3
branch_2007ba4: @ 2007ba4 :thumb
	add     r2, r0, r3
	add     r2, #0x5c
	.hword  0x1c5b @ add r3, r3, #0x1
	strb    r1, [r2, #0x0]
	cmp     r3, #0xa
	blt     branch_2007ba4
	mov     r2, r0
	add     r2, #0x59
	ldrb    r2, [r2, #0x0]
	lsl     r2, r2, #2
	add     r3, r0, r2
	mov     r2, #0x84
	ldsb    r4, [r3, r2]
	mov     r3, r2
	sub     r3, #0x85
	cmp     r4, r3
	bne     branch_2007bce
	add     r0, #0x5b
	strb    r1, [r0, #0x0]
	pop     {r3,r4}
	bx      lr
@ 0x2007bce

.thumb
branch_2007bce: @ 2007bce :thumb
	mov     r1, r0
	mov     r3, #0x1
	add     r1, #0x58
	strb    r3, [r1, #0x0]
	mov     r1, r0
	add     r1, #0x59
	ldrb    r1, [r1, #0x0]
	lsl     r1, r1, #2
	add     r1, r0, r1
	ldsb    r2, [r1, r2]
	mov     r1, r0
	add     r1, #0x5b
	strb    r2, [r1, #0x0]
	mov     r1, r0
	add     r1, #0x59
	ldrb    r1, [r1, #0x0]
	lsl     r1, r1, #2
	add     r1, r0, r1
	add     r1, #0x85
	ldrb    r2, [r1, #0x0]
	mov     r1, r0
	add     r1, #0x5a
	strb    r2, [r1, #0x0]
	mov     r1, r0
	add     r1, #0x59
	ldrb    r1, [r1, #0x0]
	lsl     r1, r1, #2
	add     r2, r0, r1
	mov     r1, #0x86
	ldsb    r1, [r2, r1]
	strh    r1, [r0, #0x2c]
	pop     {r3,r4}
	bx      lr
@ 0x2007c10


.thumb
Function_2007c10: @ 2007c10 :thumb
	mov     r2, r0
	ldr     r3, [pc, #0xc] @ 0x2007c20, (=MI_CpuCopy8)
	add     r2, #0x84
	mov     r0, r1
	mov     r1, r2
	mov     r2, #0x28
	bx      r3
@ 0x2007c1e

.align 2
.word MI_CpuCopy8 @ =MI_CpuCopy8, 0x2007c20



.thumb
.globl Function_2007c24
Function_2007c24: @ 2007c24 :thumb
	add     r0, #0x58
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2007c30
	mov     r0, #0x1
	bx      lr

branch_2007c30: @ 2007c30 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2007c34


.thumb
.globl Function_2007c34
Function_2007c34: @ 2007c34 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	mov     r6, r1
	mov     r7, r2
	str     r3, [sp, #0x14]
	mov     r4, #0x0
branch_2007c42: @ 2007c42 :thumb
	ldr     r1, [r0, #0x0]
	lsl     r1, r1, #31
	lsr     r1, r1, #31
	beq     branch_2007c52
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r0, #0xac
	cmp     r4, #0x4
	blt     branch_2007c42
branch_2007c52: @ 2007c52 :thumb
	cmp     r4, #0x4
	bne     branch_2007c5a
	bl      ErrorHandling
branch_2007c5a: @ 2007c5a :thumb
	ldr     r0, [sp, #0x30]
	ldr     r3, [sp, #0x14]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x34]
	mov     r1, r6
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x38]
	str     r4, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x3c]
	mov     r2, r7
	str     r0, [sp, #0x10]
	mov     r0, r5
	bl      Function_2007c7c
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2007c7c


.thumb
.globl Function_2007c7c
Function_2007c7c: @ 2007c7c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	str     r1, [sp, #0x8]
	ldr     r1, [sp, #0x28]
	mov     r4, r0
	mov     r0, #0xac
	mov     r6, r1
	mul     r6, r0
	ldr     r0, [r4, r6]
	str     r2, [sp, #0x0]
	lsl     r0, r0, #31
	str     r3, [sp, #0x4]
	lsr     r0, r0, #31
	beq     branch_2007c9c
	bl      ErrorHandling
branch_2007c9c: @ 2007c9c :thumb
	add     r5, r4, r6
	mov     r0, #0x0
	mov     r1, r5
	mov     r2, #0xac
	blx     MIi_CpuClearFast
	ldr     r1, [r4, r6]
	mov     r0, #0x1
	bic     r1, r0
	mov     r0, #0x1
	orr     r0, r1
	str     r0, [r4, r6]
	ldr     r1, [r4, r6]
	mov     r0, #0x80
	orr     r0, r1
	str     r0, [r4, r6]
	mov     r0, #0x80
	ldr     r1, [r4, r6]
	add     r0, #0x80
	orr     r0, r1
	str     r0, [r4, r6]
	mov     r2, r5
	ldr     r0, [r4, r6]
	mov     r1, #0x7e
	bic     r0, r1
	ldr     r1, [sp, #0x24]
	add     r7, r2, #0x4
	lsl     r1, r1, #26
	lsr     r1, r1, #25
	orr     r0, r1
	str     r0, [r4, r6]
	ldr     r0, [sp, #0x8]
	mov     r12, r0
	mov     r3, r12
	ldmia   r3!, {r0,r1}
	stmia   r7!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r7!, {r0,r1}
	mov     r7, r2
	ldr     r3, [sp, #0x8]
	add     r7, #0x14
	ldmia   r3!, {r0,r1}
	stmia   r7!, {r0,r1}
	str     r3, [sp, #0x8]
	ldmia   r3!, {r0,r1}
	stmia   r7!, {r0,r1}
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	lsl     r1, r1, #16
	asr     r7, r1, #16
	strh    r0, [r2, #0x24]
	str     r3, [sp, #0x8]
	ldr     r1, [sp, #0x20]
	strh    r7, [r2, #0x26]
	str     r1, [r2, #0x28]
	mov     r1, #0x80
	add     r1, #0x80
	strh    r1, [r2, #0x34]
	strh    r1, [r2, #0x36]
	ldr     r1, [r5, #0x54]
	mov     r3, #0x7c
	bic     r1, r3
	mov     r3, #0x7c
	orr     r1, r3
	str     r1, [r5, #0x54]
	ldr     r1, [r5, #0x50]
	mov     r3, #0x1f
	bic     r1, r3
	mov     r3, #0x1f
	orr     r3, r1
	ldr     r1, [pc, #0x84] @ 0x2007db4, (=0xfffffc1f)
	and     r1, r3
	mov     r3, #0x1f
	lsl     r3, r3, #5
	orr     r3, r1
	ldr     r1, [pc, #0x80] @ 0x2007db8, (=0xffff83ff)
	and     r1, r3
	mov     r3, #0x1f
	lsl     r3, r3, #10
	orr     r3, r1
	ldr     r1, [pc, #0x78] @ 0x2007dbc, (=0xfff07fff)
	and     r1, r3
	mov     r3, #0x80
	lsl     r3, r3, #12
	orr     r3, r1
	ldr     r1, [pc, #0x74] @ 0x2007dc0, (=0xfe0fffff)
	and     r1, r3
	mov     r3, #0x80
	lsl     r3, r3, #17
	orr     r3, r1
	ldr     r1, [pc, #0x6c] @ 0x2007dc4, (=0xc1ffffff)
	and     r1, r3
	mov     r3, #0x80
	lsl     r3, r3, #22
	orr     r1, r3
	str     r1, [r5, #0x50]
	ldr     r1, [sp, #0x30]
	str     r1, [r2, #0x68]
	mov     r1, r2
	add     r1, #0x70
	strh    r0, [r1, #0x0]
	add     r2, #0x72
	mov     r0, r5
	strh    r7, [r2, #0x0]
	add     r0, #0x6c
	ldrh    r1, [r0, #0x0]
	mov     r0, #0x4
	orr     r1, r0
	mov     r0, r5
	add     r0, #0x6c
	strh    r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x6c
	ldrh    r1, [r0, #0x0]
	mov     r0, #0x8
	orr     r1, r0
	mov     r0, r5
	add     r0, #0x6c
	strh    r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x6c
	ldrh    r1, [r0, #0x0]
	mov     r0, #0x10
	add     r5, #0x6c
	orr     r0, r1
	strh    r0, [r5, #0x0]
	ldr     r0, [sp, #0x2c]
	cmp     r0, #0x0
	beq     branch_2007dac
	add     r1, r4, r6
	add     r1, #0x84
	mov     r2, #0x28
	blx     MI_CpuCopy8
branch_2007dac: @ 2007dac :thumb
	add     r0, r4, r6
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2007db2

.align 2
.word 0xfffffc1f @ 0x2007db4
.word 0xffff83ff @ 0x2007db8
.word 0xfff07fff @ 0x2007dbc
.word 0xfe0fffff @ 0x2007dc0
.word 0xc1ffffff @ 0x2007dc4



.thumb
.globl Function_2007dc8
Function_2007dc8: @ 2007dc8 :thumb
	ldr     r2, [r0, #0x0]
	mov     r1, #0x1
	bic     r2, r1
	str     r2, [r0, #0x0]
	bx      lr
@ 0x2007dd2


/* Input:
r0: NARCPokeGra
*/
.align 2, 0
.thumb
.globl Function_2007dd4
Function_2007dd4: @ 2007dd4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
branch_2007dda: @ 2007dda :thumb
	mov     r0, r5
	bl      Function_2007dc8
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #NARCPokeGra_ac
	cmp     r4, #0x4
	blt     branch_2007dda

	pop     {r3-r5,pc}
@ 0x2007dea


.align 2, 0
.thumb
.globl Function_2007dec
Function_2007dec: @ 2007dec :thumb
	cmp     r1, #0x2e
	bls     branch_2007df2
	b       branch_2008094

branch_2007df2: @ 2007df2 :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2007dfe

Jumppoints_2007dfe:
.hword branch_2007e5c - Jumppoints_2007dfe - 2
.hword branch_2007e60 - Jumppoints_2007dfe - 2
.hword branch_2007e64 - Jumppoints_2007dfe - 2
.hword branch_2007e68 - Jumppoints_2007dfe - 2
.hword branch_2007e6c - Jumppoints_2007dfe - 2
.hword branch_2007e70 - Jumppoints_2007dfe - 2
.hword branch_2007e74 - Jumppoints_2007dfe - 2
.hword branch_2007e84 - Jumppoints_2007dfe - 2
.hword branch_2007e88 - Jumppoints_2007dfe - 2
.hword branch_2007e8c - Jumppoints_2007dfe - 2
.hword branch_2007e90 - Jumppoints_2007dfe - 2
.hword branch_2007e96 - Jumppoints_2007dfe - 2
.hword branch_2007e9c - Jumppoints_2007dfe - 2
.hword branch_2007ea0 - Jumppoints_2007dfe - 2
.hword branch_2007ea4 - Jumppoints_2007dfe - 2
.hword branch_2007eb4 - Jumppoints_2007dfe - 2
.hword branch_2007eba - Jumppoints_2007dfe - 2
.hword branch_2007ec0 - Jumppoints_2007dfe - 2
.hword branch_2007ec6 - Jumppoints_2007dfe - 2
.hword branch_2007ecc - Jumppoints_2007dfe - 2
.hword branch_2007ed2 - Jumppoints_2007dfe - 2
.hword branch_2007ed8 - Jumppoints_2007dfe - 2
.hword branch_2007ede - Jumppoints_2007dfe - 2
.hword branch_2007ee4 - Jumppoints_2007dfe - 2
.hword branch_2007ef4 - Jumppoints_2007dfe - 2
.hword branch_2007f04 - Jumppoints_2007dfe - 2
.hword branch_2007f14 - Jumppoints_2007dfe - 2
.hword branch_2007f24 - Jumppoints_2007dfe - 2
.hword branch_2007f34 - Jumppoints_2007dfe - 2
.hword branch_2007f44 - Jumppoints_2007dfe - 2
.hword branch_2007f54 - Jumppoints_2007dfe - 2
.hword branch_2007f6e - Jumppoints_2007dfe - 2
.hword branch_2007f7c - Jumppoints_2007dfe - 2
.hword branch_2007f8e - Jumppoints_2007dfe - 2
.hword branch_2007fa0 - Jumppoints_2007dfe - 2
.hword branch_2007fa6 - Jumppoints_2007dfe - 2
.hword branch_2007fbe - Jumppoints_2007dfe - 2
.hword branch_2007fd6 - Jumppoints_2007dfe - 2
.hword branch_2007fe6 - Jumppoints_2007dfe - 2
.hword branch_2008094 - Jumppoints_2007dfe - 2
.hword branch_2007fec - Jumppoints_2007dfe - 2
.hword branch_2008004 - Jumppoints_2007dfe - 2
.hword branch_200800a - Jumppoints_2007dfe - 2
.hword branch_200802e - Jumppoints_2007dfe - 2
.hword branch_2008048 - Jumppoints_2007dfe - 2
.hword branch_2008062 - Jumppoints_2007dfe - 2
.hword branch_200807c - Jumppoints_2007dfe - 2

.thumb
branch_2007e5c: @ 2007e5c :thumb
	strh    r2, [r0, #0x24]
	bx      lr

branch_2007e60: @ 2007e60 :thumb
	strh    r2, [r0, #0x26]
	bx      lr

branch_2007e64: @ 2007e64 :thumb
	str     r2, [r0, #0x28]
	bx      lr

branch_2007e68: @ 2007e68 :thumb
	strh    r2, [r0, #0x2c]
	bx      lr

branch_2007e6c: @ 2007e6c :thumb
	strh    r2, [r0, #0x2e]
	bx      lr

branch_2007e70: @ 2007e70 :thumb
	str     r2, [r0, #0x30]
	bx      lr

branch_2007e74: @ 2007e74 :thumb
	ldr     r3, [r0, #0x54]
	mov     r1, #0x1
	bic     r3, r1
	mov     r1, #0x1
	and     r1, r2
	orr     r1, r3
	str     r1, [r0, #0x54]
	bx      lr

branch_2007e84: @ 2007e84 :thumb
	strh    r2, [r0, #0x38]
	bx      lr

branch_2007e88: @ 2007e88 :thumb
	strh    r2, [r0, #0x3a]
	bx      lr

branch_2007e8c: @ 2007e8c :thumb
	strh    r2, [r0, #0x3c]
	bx      lr

branch_2007e90: @ 2007e90 :thumb
	add     r0, #0x40
	strh    r2, [r0, #0x0]
	bx      lr

branch_2007e96: @ 2007e96 :thumb
	add     r0, #0x42
	strh    r2, [r0, #0x0]
	bx      lr

branch_2007e9c: @ 2007e9c :thumb
	strh    r2, [r0, #0x34]
	bx      lr

branch_2007ea0: @ 2007ea0 :thumb
	strh    r2, [r0, #0x36]
	bx      lr

branch_2007ea4: @ 2007ea4 :thumb
	ldr     r3, [r0, #0x54]
	mov     r1, #0x2
	bic     r3, r1
	lsl     r1, r2, #31
	lsr     r1, r1, #30
	orr     r1, r3
	str     r1, [r0, #0x54]
	bx      lr

branch_2007eb4: @ 2007eb4 :thumb
	add     r0, #0x44
	strb    r2, [r0, #0x0]
	bx      lr

branch_2007eba: @ 2007eba :thumb
	add     r0, #0x45
	strb    r2, [r0, #0x0]
	bx      lr

branch_2007ec0: @ 2007ec0 :thumb
	add     r0, #0x46
	strb    r2, [r0, #0x0]
	bx      lr

branch_2007ec6: @ 2007ec6 :thumb
	add     r0, #0x47
	strb    r2, [r0, #0x0]
	bx      lr

branch_2007ecc: @ 2007ecc :thumb
	add     r0, #0x70
	strh    r2, [r0, #0x0]
	bx      lr

branch_2007ed2: @ 2007ed2 :thumb
	add     r0, #0x72
	strh    r2, [r0, #0x0]
	bx      lr

branch_2007ed8: @ 2007ed8 :thumb
	add     r0, #0x74
	strh    r2, [r0, #0x0]
	bx      lr

branch_2007ede: @ 2007ede :thumb
	add     r0, #0x76
	strh    r2, [r0, #0x0]
	bx      lr

branch_2007ee4: @ 2007ee4 :thumb
	ldr     r3, [r0, #0x54]
	mov     r1, #0x7c
	bic     r3, r1
	lsl     r1, r2, #27
	lsr     r1, r1, #25
	orr     r1, r3
	str     r1, [r0, #0x54]
	bx      lr

branch_2007ef4: @ 2007ef4 :thumb
	ldr     r3, [r0, #0x50]
	mov     r1, #0x1f
	bic     r3, r1
	mov     r1, #0x1f
	and     r1, r2
	orr     r1, r3
	str     r1, [r0, #0x50]
	bx      lr

branch_2007f04: @ 2007f04 :thumb
	ldr     r3, [r0, #0x50]
	ldr     r1, [pc, #0x190] @ 0x2008098, (=0xfffffc1f)
	and     r3, r1
	lsl     r1, r2, #27
	lsr     r1, r1, #22
	orr     r1, r3
	str     r1, [r0, #0x50]
	bx      lr

branch_2007f14: @ 2007f14 :thumb
	ldr     r3, [r0, #0x50]
	ldr     r1, [pc, #0x184] @ 0x200809c, (=0xffff83ff)
	and     r3, r1
	lsl     r1, r2, #27
	lsr     r1, r1, #17
	orr     r1, r3
	str     r1, [r0, #0x50]
	bx      lr

branch_2007f24: @ 2007f24 :thumb
	ldr     r3, [r0, #0x50]
	ldr     r1, [pc, #0x178] @ 0x20080a0, (=0xfff07fff)
	and     r3, r1
	lsl     r1, r2, #27
	lsr     r1, r1, #12
	orr     r1, r3
	str     r1, [r0, #0x50]
	bx      lr

branch_2007f34: @ 2007f34 :thumb
	ldr     r3, [r0, #0x50]
	ldr     r1, [pc, #0x16c] @ 0x20080a4, (=0xfe0fffff)
	and     r3, r1
	lsl     r1, r2, #27
	lsr     r1, r1, #7
	orr     r1, r3
	str     r1, [r0, #0x50]
	bx      lr

branch_2007f44: @ 2007f44 :thumb
	ldr     r3, [r0, #0x50]
	ldr     r1, [pc, #0x160] @ 0x20080a8, (=0xc1ffffff)
	and     r3, r1
	lsl     r1, r2, #27
	lsr     r1, r1, #2
	orr     r1, r3
	str     r1, [r0, #0x50]
	bx      lr

branch_2007f54: @ 2007f54 :thumb
	ldr     r3, [r0, #0x54]
	ldr     r1, [pc, #0x154] @ 0x20080ac, (=0xffffefff)
	and     r3, r1
	lsl     r1, r2, #31
	lsr     r1, r1, #19
	orr     r1, r3
	str     r1, [r0, #0x54]
	mov     r1, #0x1
	ldr     r2, [r0, #0x0]
	lsl     r1, r1, #8
	orr     r1, r2
	str     r1, [r0, #0x0]
	bx      lr

branch_2007f6e: @ 2007f6e :thumb
	str     r2, [r0, #0x4c]
	mov     r1, #0x1
	ldr     r2, [r0, #0x0]
	lsl     r1, r1, #8
	orr     r1, r2
	str     r1, [r0, #0x0]
	bx      lr

branch_2007f7c: @ 2007f7c :thumb
	mov     r1, r0
	add     r1, #0x48
	strb    r2, [r1, #0x0]
	mov     r1, #0x1
	ldr     r2, [r0, #0x0]
	lsl     r1, r1, #8
	orr     r1, r2
	str     r1, [r0, #0x0]
	bx      lr

branch_2007f8e: @ 2007f8e :thumb
	mov     r1, r0
	add     r1, #0x49
	strb    r2, [r1, #0x0]
	mov     r1, #0x1
	ldr     r2, [r0, #0x0]
	lsl     r1, r1, #8
	orr     r1, r2
	str     r1, [r0, #0x0]
	bx      lr

branch_2007fa0: @ 2007fa0 :thumb
	add     r0, #0x4a
	strb    r2, [r0, #0x0]
	bx      lr

branch_2007fa6: @ 2007fa6 :thumb
	ldr     r3, [r0, #0x54]
	ldr     r1, [pc, #0x104] @ 0x20080b0, (=0xfffffdff)
	and     r3, r1
	lsl     r1, r2, #31
	lsr     r1, r1, #22
	orr     r1, r3
	str     r1, [r0, #0x54]
	ldr     r2, [r0, #0x0]
	mov     r1, #0x80
	orr     r1, r2
	str     r1, [r0, #0x0]
	bx      lr

branch_2007fbe: @ 2007fbe :thumb
	ldr     r3, [r0, #0x54]
	ldr     r1, [pc, #0xf0] @ 0x20080b4, (=0xfffffbff)
	and     r3, r1
	lsl     r1, r2, #31
	lsr     r1, r1, #21
	orr     r1, r3
	str     r1, [r0, #0x54]
	ldr     r2, [r0, #0x0]
	mov     r1, #0x80
	orr     r1, r2
	str     r1, [r0, #0x0]
	bx      lr

branch_2007fd6: @ 2007fd6 :thumb
	ldr     r3, [r0, #0x54]
	ldr     r1, [pc, #0xdc] @ 0x20080b8, (=0xfffff7ff)
	and     r3, r1
	lsl     r1, r2, #31
	lsr     r1, r1, #20
	orr     r1, r3
	str     r1, [r0, #0x54]
	bx      lr

branch_2007fe6: @ 2007fe6 :thumb
	add     r0, #0x5b
	strb    r2, [r0, #0x0]
	bx      lr

branch_2007fec: @ 2007fec :thumb
	ldr     r3, [r0, #0x54]
	ldr     r1, [pc, #0xcc] @ 0x20080bc, (=0xfffe1fff)
	and     r3, r1
	lsl     r1, r2, #28
	lsr     r1, r1, #15
	orr     r1, r3
	str     r1, [r0, #0x54]
	ldr     r2, [r0, #0x0]
	mov     r1, #0x80
	orr     r1, r2
	str     r1, [r0, #0x0]
	bx      lr

branch_2008004: @ 2008004 :thumb
	add     r0, #0x6e
	strb    r2, [r0, #0x0]
	bx      lr

branch_200800a: @ 200800a :thumb
	mov     r1, r0
	add     r1, #0x6c
	ldrh    r3, [r1, #0x0]
	mov     r1, #0x3
	bic     r3, r1
	lsl     r1, r2, #16
	lsr     r1, r1, #16
	mov     r2, #0x3
	and     r1, r2
	orr     r3, r1
	mov     r1, r0
	add     r1, #0x6c
	strh    r3, [r1, #0x0]
	ldr     r1, [r0, #0x0]
	add     r2, #0xfd
	orr     r1, r2
	str     r1, [r0, #0x0]
	bx      lr

branch_200802e: @ 200802e :thumb
	mov     r1, r0
	add     r1, #0x6c
	ldrh    r3, [r1, #0x0]
	mov     r1, #0x4
	add     r0, #0x6c
	bic     r3, r1
	lsl     r1, r2, #16
	lsr     r1, r1, #16
	lsl     r1, r1, #31
	lsr     r1, r1, #29
	orr     r1, r3
	strh    r1, [r0, #0x0]
	bx      lr

branch_2008048: @ 2008048 :thumb
	mov     r1, r0
	add     r1, #0x6c
	ldrh    r3, [r1, #0x0]
	mov     r1, #0x8
	add     r0, #0x6c
	bic     r3, r1
	lsl     r1, r2, #16
	lsr     r1, r1, #16
	lsl     r1, r1, #31
	lsr     r1, r1, #28
	orr     r1, r3
	strh    r1, [r0, #0x0]
	bx      lr

branch_2008062: @ 2008062 :thumb
	mov     r1, r0
	add     r1, #0x6c
	ldrh    r3, [r1, #0x0]
	mov     r1, #0x10
	add     r0, #0x6c
	bic     r3, r1
	lsl     r1, r2, #16
	lsr     r1, r1, #16
	lsl     r1, r1, #31
	lsr     r1, r1, #27
	orr     r1, r3
	strh    r1, [r0, #0x0]
	bx      lr

branch_200807c: @ 200807c :thumb
	mov     r1, r0
	add     r1, #0x6c
	ldrh    r3, [r1, #0x0]
	mov     r1, #0x60
	add     r0, #0x6c
	bic     r3, r1
	lsl     r1, r2, #16
	lsr     r1, r1, #16
	lsl     r1, r1, #30
	lsr     r1, r1, #25
	orr     r1, r3
	strh    r1, [r0, #0x0]
branch_2008094: @ 2008094 :thumb
	bx      lr
@ 0x2008096

.align 2
.word 0xfffffc1f @ 0x2008098
.word 0xffff83ff @ 0x200809c
.word 0xfff07fff @ 0x20080a0
.word 0xfe0fffff @ 0x20080a4
.word 0xc1ffffff @ 0x20080a8
.word 0xffffefff @ 0x20080ac
.word 0xfffffdff @ 0x20080b0
.word 0xfffffbff @ 0x20080b4
.word 0xfffff7ff @ 0x20080b8
.word 0xfffe1fff @ 0x20080bc



.thumb
.globl Function_20080c0
Function_20080c0: @ 20080c0 :thumb
	push    {r3,lr}
	cmp     r1, #0x2e
	bls     branch_20080c8
	b       branch_200826a

branch_20080c8: @ 20080c8 :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x20080d4

Jumppoints_20080d4:
.hword branch_2008132 - Jumppoints_20080d4 - 2
.hword branch_2008138 - Jumppoints_20080d4 - 2
.hword branch_200813e - Jumppoints_20080d4 - 2
.hword branch_2008142 - Jumppoints_20080d4 - 2
.hword branch_2008148 - Jumppoints_20080d4 - 2
.hword branch_200814e - Jumppoints_20080d4 - 2
.hword branch_2008152 - Jumppoints_20080d4 - 2
.hword branch_200815a - Jumppoints_20080d4 - 2
.hword branch_200815e - Jumppoints_20080d4 - 2
.hword branch_2008162 - Jumppoints_20080d4 - 2
.hword branch_2008166 - Jumppoints_20080d4 - 2
.hword branch_200816c - Jumppoints_20080d4 - 2
.hword branch_2008172 - Jumppoints_20080d4 - 2
.hword branch_2008178 - Jumppoints_20080d4 - 2
.hword branch_200817e - Jumppoints_20080d4 - 2
.hword branch_2008186 - Jumppoints_20080d4 - 2
.hword branch_200818c - Jumppoints_20080d4 - 2
.hword branch_2008192 - Jumppoints_20080d4 - 2
.hword branch_2008198 - Jumppoints_20080d4 - 2
.hword branch_200819e - Jumppoints_20080d4 - 2
.hword branch_20081a4 - Jumppoints_20080d4 - 2
.hword branch_20081aa - Jumppoints_20080d4 - 2
.hword branch_20081b0 - Jumppoints_20080d4 - 2
.hword branch_20081b6 - Jumppoints_20080d4 - 2
.hword branch_20081be - Jumppoints_20080d4 - 2
.hword branch_20081c6 - Jumppoints_20080d4 - 2
.hword branch_20081ce - Jumppoints_20080d4 - 2
.hword branch_20081d6 - Jumppoints_20080d4 - 2
.hword branch_20081de - Jumppoints_20080d4 - 2
.hword branch_20081e6 - Jumppoints_20080d4 - 2
.hword branch_20081ee - Jumppoints_20080d4 - 2
.hword branch_20081f6 - Jumppoints_20080d4 - 2
.hword branch_20081fa - Jumppoints_20080d4 - 2
.hword branch_2008200 - Jumppoints_20080d4 - 2
.hword branch_2008206 - Jumppoints_20080d4 - 2
.hword branch_200820c - Jumppoints_20080d4 - 2
.hword branch_2008214 - Jumppoints_20080d4 - 2
.hword branch_200821c - Jumppoints_20080d4 - 2
.hword branch_2008224 - Jumppoints_20080d4 - 2
.hword branch_200826a - Jumppoints_20080d4 - 2
.hword branch_200822a - Jumppoints_20080d4 - 2
.hword branch_2008232 - Jumppoints_20080d4 - 2
.hword branch_2008238 - Jumppoints_20080d4 - 2
.hword branch_2008242 - Jumppoints_20080d4 - 2
.hword branch_200824c - Jumppoints_20080d4 - 2
.hword branch_2008256 - Jumppoints_20080d4 - 2
.hword branch_2008260 - Jumppoints_20080d4 - 2

.thumb
branch_2008132: @ 2008132 :thumb
	mov     r1, #0x24
	ldsh    r0, [r0, r1]
	pop     {r3,pc}

branch_2008138: @ 2008138 :thumb
	mov     r1, #0x26
	ldsh    r0, [r0, r1]
	pop     {r3,pc}

branch_200813e: @ 200813e :thumb
	ldr     r0, [r0, #0x28]
	pop     {r3,pc}

branch_2008142: @ 2008142 :thumb
	mov     r1, #0x2c
	ldsh    r0, [r0, r1]
	pop     {r3,pc}

branch_2008148: @ 2008148 :thumb
	mov     r1, #0x2e
	ldsh    r0, [r0, r1]
	pop     {r3,pc}

branch_200814e: @ 200814e :thumb
	ldr     r0, [r0, #0x30]
	pop     {r3,pc}

branch_2008152: @ 2008152 :thumb
	ldr     r0, [r0, #0x54]
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	pop     {r3,pc}

branch_200815a: @ 200815a :thumb
	ldrh    r0, [r0, #0x38]
	pop     {r3,pc}

branch_200815e: @ 200815e :thumb
	ldrh    r0, [r0, #0x3a]
	pop     {r3,pc}

branch_2008162: @ 2008162 :thumb
	ldrh    r0, [r0, #0x3c]
	pop     {r3,pc}

branch_2008166: @ 2008166 :thumb
	mov     r1, #0x40
	ldsh    r0, [r0, r1]
	pop     {r3,pc}

branch_200816c: @ 200816c :thumb
	mov     r1, #0x42
	ldsh    r0, [r0, r1]
	pop     {r3,pc}

branch_2008172: @ 2008172 :thumb
	mov     r1, #0x34
	ldsh    r0, [r0, r1]
	pop     {r3,pc}

branch_2008178: @ 2008178 :thumb
	mov     r1, #0x36
	ldsh    r0, [r0, r1]
	pop     {r3,pc}

branch_200817e: @ 200817e :thumb
	ldr     r0, [r0, #0x54]
	lsl     r0, r0, #30
	lsr     r0, r0, #31
	pop     {r3,pc}

branch_2008186: @ 2008186 :thumb
	add     r0, #0x44
	ldrb    r0, [r0, #0x0]
	pop     {r3,pc}

branch_200818c: @ 200818c :thumb
	add     r0, #0x45
	ldrb    r0, [r0, #0x0]
	pop     {r3,pc}

branch_2008192: @ 2008192 :thumb
	add     r0, #0x46
	ldrb    r0, [r0, #0x0]
	pop     {r3,pc}

branch_2008198: @ 2008198 :thumb
	add     r0, #0x47
	ldrb    r0, [r0, #0x0]
	pop     {r3,pc}

branch_200819e: @ 200819e :thumb
	mov     r1, #0x70
	ldsh    r0, [r0, r1]
	pop     {r3,pc}

branch_20081a4: @ 20081a4 :thumb
	mov     r1, #0x72
	ldsh    r0, [r0, r1]
	pop     {r3,pc}

branch_20081aa: @ 20081aa :thumb
	mov     r1, #0x74
	ldsh    r0, [r0, r1]
	pop     {r3,pc}

branch_20081b0: @ 20081b0 :thumb
	mov     r1, #0x76
	ldsh    r0, [r0, r1]
	pop     {r3,pc}

branch_20081b6: @ 20081b6 :thumb
	ldr     r0, [r0, #0x54]
	lsl     r0, r0, #25
	lsr     r0, r0, #27
	pop     {r3,pc}

branch_20081be: @ 20081be :thumb
	ldr     r0, [r0, #0x50]
	lsl     r0, r0, #27
	lsr     r0, r0, #27
	pop     {r3,pc}

branch_20081c6: @ 20081c6 :thumb
	ldr     r0, [r0, #0x50]
	lsl     r0, r0, #22
	lsr     r0, r0, #27
	pop     {r3,pc}

branch_20081ce: @ 20081ce :thumb
	ldr     r0, [r0, #0x50]
	lsl     r0, r0, #17
	lsr     r0, r0, #27
	pop     {r3,pc}

branch_20081d6: @ 20081d6 :thumb
	ldr     r0, [r0, #0x50]
	lsl     r0, r0, #12
	lsr     r0, r0, #27
	pop     {r3,pc}

branch_20081de: @ 20081de :thumb
	ldr     r0, [r0, #0x50]
	lsl     r0, r0, #7
	lsr     r0, r0, #27
	pop     {r3,pc}

branch_20081e6: @ 20081e6 :thumb
	ldr     r0, [r0, #0x50]
	lsl     r0, r0, #2
	lsr     r0, r0, #27
	pop     {r3,pc}

branch_20081ee: @ 20081ee :thumb
	ldr     r0, [r0, #0x54]
	lsl     r0, r0, #19
	lsr     r0, r0, #31
	pop     {r3,pc}

branch_20081f6: @ 20081f6 :thumb
	ldr     r0, [r0, #0x4c]
	pop     {r3,pc}

branch_20081fa: @ 20081fa :thumb
	add     r0, #0x48
	ldrb    r0, [r0, #0x0]
	pop     {r3,pc}

branch_2008200: @ 2008200 :thumb
	add     r0, #0x49
	ldrb    r0, [r0, #0x0]
	pop     {r3,pc}

branch_2008206: @ 2008206 :thumb
	add     r0, #0x4a
	ldrb    r0, [r0, #0x0]
	pop     {r3,pc}

branch_200820c: @ 200820c :thumb
	ldr     r0, [r0, #0x54]
	lsl     r0, r0, #22
	lsr     r0, r0, #31
	pop     {r3,pc}

branch_2008214: @ 2008214 :thumb
	ldr     r0, [r0, #0x54]
	lsl     r0, r0, #21
	lsr     r0, r0, #31
	pop     {r3,pc}

branch_200821c: @ 200821c :thumb
	ldr     r0, [r0, #0x54]
	lsl     r0, r0, #20
	lsr     r0, r0, #31
	pop     {r3,pc}

branch_2008224: @ 2008224 :thumb
	add     r0, #0x5b
	ldrb    r0, [r0, #0x0]
	pop     {r3,pc}

branch_200822a: @ 200822a :thumb
	ldr     r0, [r0, #0x54]
	lsl     r0, r0, #15
	lsr     r0, r0, #28
	pop     {r3,pc}

branch_2008232: @ 2008232 :thumb
	mov     r1, #0x6e
	ldsb    r0, [r0, r1]
	pop     {r3,pc}

branch_2008238: @ 2008238 :thumb
	add     r0, #0x6c
	ldrh    r0, [r0, #0x0]
	lsl     r0, r0, #30
	lsr     r0, r0, #30
	pop     {r3,pc}

branch_2008242: @ 2008242 :thumb
	add     r0, #0x6c
	ldrh    r0, [r0, #0x0]
	lsl     r0, r0, #29
	lsr     r0, r0, #31
	pop     {r3,pc}

branch_200824c: @ 200824c :thumb
	add     r0, #0x6c
	ldrh    r0, [r0, #0x0]
	lsl     r0, r0, #28
	lsr     r0, r0, #31
	pop     {r3,pc}

branch_2008256: @ 2008256 :thumb
	add     r0, #0x6c
	ldrh    r0, [r0, #0x0]
	lsl     r0, r0, #27
	lsr     r0, r0, #31
	pop     {r3,pc}

branch_2008260: @ 2008260 :thumb
	add     r0, #0x6c
	ldrh    r0, [r0, #0x0]
	lsl     r0, r0, #25
	lsr     r0, r0, #30
	pop     {r3,pc}

branch_200826a: @ 200826a :thumb
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2008272


.align 2, 0
.thumb
.globl Function_2008274
Function_2008274: @ 2008274 :thumb
	push    {r3,r4}
	mov     r3, r0
	mov     r0, r2
	cmp     r1, #0x2e
	bls     branch_2008280
	b       branch_20086a6

branch_2008280: @ 2008280 :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x200828c

Jumppoints_200828c:
.hword branch_20082ea - Jumppoints_200828c - 2
.hword branch_20082f6 - Jumppoints_200828c - 2
.hword branch_2008302 - Jumppoints_200828c - 2
.hword branch_200830c - Jumppoints_200828c - 2
.hword branch_2008318 - Jumppoints_200828c - 2
.hword branch_2008324 - Jumppoints_200828c - 2
.hword branch_200832e - Jumppoints_200828c - 2
.hword branch_2008348 - Jumppoints_200828c - 2
.hword branch_2008352 - Jumppoints_200828c - 2
.hword branch_200835c - Jumppoints_200828c - 2
.hword branch_2008366 - Jumppoints_200828c - 2
.hword branch_2008374 - Jumppoints_200828c - 2
.hword branch_2008382 - Jumppoints_200828c - 2
.hword branch_200838e - Jumppoints_200828c - 2
.hword branch_200839a - Jumppoints_200828c - 2
.hword branch_20083b4 - Jumppoints_200828c - 2
.hword branch_20083c4 - Jumppoints_200828c - 2
.hword branch_20083d4 - Jumppoints_200828c - 2
.hword branch_20083e4 - Jumppoints_200828c - 2
.hword branch_20083f4 - Jumppoints_200828c - 2
.hword branch_2008402 - Jumppoints_200828c - 2
.hword branch_2008410 - Jumppoints_200828c - 2
.hword branch_200841e - Jumppoints_200828c - 2
.hword branch_200842c - Jumppoints_200828c - 2
.hword branch_2008446 - Jumppoints_200828c - 2
.hword branch_2008460 - Jumppoints_200828c - 2
.hword branch_2008478 - Jumppoints_200828c - 2
.hword branch_2008490 - Jumppoints_200828c - 2
.hword branch_20084a8 - Jumppoints_200828c - 2
.hword branch_20084c0 - Jumppoints_200828c - 2
.hword branch_20084d8 - Jumppoints_200828c - 2
.hword branch_20084fa - Jumppoints_200828c - 2
.hword branch_200850e - Jumppoints_200828c - 2
.hword branch_200852a - Jumppoints_200828c - 2
.hword branch_2008546 - Jumppoints_200828c - 2
.hword branch_2008556 - Jumppoints_200828c - 2
.hword branch_2008576 - Jumppoints_200828c - 2
.hword branch_2008596 - Jumppoints_200828c - 2
.hword branch_20085ae - Jumppoints_200828c - 2
.hword branch_20086a6 - Jumppoints_200828c - 2
.hword branch_20085be - Jumppoints_200828c - 2
.hword branch_20085de - Jumppoints_200828c - 2
.hword branch_20085ec - Jumppoints_200828c - 2
.hword branch_200861a - Jumppoints_200828c - 2
.hword branch_200863e - Jumppoints_200828c - 2
.hword branch_2008662 - Jumppoints_200828c - 2
.hword branch_2008686 - Jumppoints_200828c - 2

.thumb
branch_20082ea: @ 20082ea :thumb
	mov     r1, #0x24
	ldsh    r1, [r3, r1]
	add     r0, r1, r0
	strh    r0, [r3, #0x24]
	pop     {r3,r4}
	bx      lr

branch_20082f6: @ 20082f6 :thumb
	mov     r1, #0x26
	ldsh    r1, [r3, r1]
	add     r0, r1, r0
	strh    r0, [r3, #0x26]
	pop     {r3,r4}
	bx      lr

branch_2008302: @ 2008302 :thumb
	ldr     r1, [r3, #0x28]
	add     r0, r1, r0
	str     r0, [r3, #0x28]
	pop     {r3,r4}
	bx      lr

branch_200830c: @ 200830c :thumb
	mov     r1, #0x2c
	ldsh    r1, [r3, r1]
	add     r0, r1, r0
	strh    r0, [r3, #0x2c]
	pop     {r3,r4}
	bx      lr

branch_2008318: @ 2008318 :thumb
	mov     r1, #0x2e
	ldsh    r1, [r3, r1]
	add     r0, r1, r0
	strh    r0, [r3, #0x2e]
	pop     {r3,r4}
	bx      lr

branch_2008324: @ 2008324 :thumb
	ldr     r1, [r3, #0x30]
	add     r0, r1, r0
	str     r0, [r3, #0x30]
	pop     {r3,r4}
	bx      lr

branch_200832e: @ 200832e :thumb
	ldr     r4, [r3, #0x54]
	mov     r2, #0x1
	mov     r1, r4
	bic     r1, r2
	lsl     r2, r4, #31
	lsr     r2, r2, #31
	add     r2, r2, r0
	mov     r0, #0x1
	and     r0, r2
	orr     r0, r1
	str     r0, [r3, #0x54]
	pop     {r3,r4}
	bx      lr

branch_2008348: @ 2008348 :thumb
	ldrh    r1, [r3, #0x38]
	add     r0, r1, r0
	strh    r0, [r3, #0x38]
	pop     {r3,r4}
	bx      lr

branch_2008352: @ 2008352 :thumb
	ldrh    r1, [r3, #0x3a]
	add     r0, r1, r0
	strh    r0, [r3, #0x3a]
	pop     {r3,r4}
	bx      lr

branch_200835c: @ 200835c :thumb
	ldrh    r1, [r3, #0x3c]
	add     r0, r1, r0
	strh    r0, [r3, #0x3c]
	pop     {r3,r4}
	bx      lr

branch_2008366: @ 2008366 :thumb
	mov     r1, #0x40
	ldsh    r1, [r3, r1]
	add     r3, #0x40
	add     r0, r1, r0
	strh    r0, [r3, #0x0]
	pop     {r3,r4}
	bx      lr

branch_2008374: @ 2008374 :thumb
	mov     r1, #0x42
	ldsh    r1, [r3, r1]
	add     r3, #0x42
	add     r0, r1, r0
	strh    r0, [r3, #0x0]
	pop     {r3,r4}
	bx      lr

branch_2008382: @ 2008382 :thumb
	mov     r1, #0x34
	ldsh    r1, [r3, r1]
	add     r0, r1, r0
	strh    r0, [r3, #0x34]
	pop     {r3,r4}
	bx      lr

branch_200838e: @ 200838e :thumb
	mov     r1, #0x36
	ldsh    r1, [r3, r1]
	add     r0, r1, r0
	strh    r0, [r3, #0x36]
	pop     {r3,r4}
	bx      lr

branch_200839a: @ 200839a :thumb
	ldr     r4, [r3, #0x54]
	mov     r2, #0x2
	mov     r1, r4
	bic     r1, r2
	lsl     r2, r4, #30
	lsr     r2, r2, #31
	add     r0, r2, r0
	lsl     r0, r0, #31
	lsr     r0, r0, #30
	orr     r0, r1
	str     r0, [r3, #0x54]
	pop     {r3,r4}
	bx      lr

branch_20083b4: @ 20083b4 :thumb
	mov     r1, r3
	add     r1, #0x44
	ldrb    r1, [r1, #0x0]
	add     r3, #0x44
	add     r0, r1, r0
	strb    r0, [r3, #0x0]
	pop     {r3,r4}
	bx      lr

branch_20083c4: @ 20083c4 :thumb
	mov     r1, r3
	add     r1, #0x45
	ldrb    r1, [r1, #0x0]
	add     r3, #0x45
	add     r0, r1, r0
	strb    r0, [r3, #0x0]
	pop     {r3,r4}
	bx      lr

branch_20083d4: @ 20083d4 :thumb
	mov     r1, r3
	add     r1, #0x46
	ldrb    r1, [r1, #0x0]
	add     r3, #0x46
	add     r0, r1, r0
	strb    r0, [r3, #0x0]
	pop     {r3,r4}
	bx      lr

branch_20083e4: @ 20083e4 :thumb
	mov     r1, r3
	add     r1, #0x47
	ldrb    r1, [r1, #0x0]
	add     r3, #0x47
	add     r0, r1, r0
	strb    r0, [r3, #0x0]
	pop     {r3,r4}
	bx      lr

branch_20083f4: @ 20083f4 :thumb
	mov     r1, #0x70
	ldsh    r1, [r3, r1]
	add     r3, #0x70
	add     r0, r1, r0
	strh    r0, [r3, #0x0]
	pop     {r3,r4}
	bx      lr

branch_2008402: @ 2008402 :thumb
	mov     r1, #0x72
	ldsh    r1, [r3, r1]
	add     r3, #0x72
	add     r0, r1, r0
	strh    r0, [r3, #0x0]
	pop     {r3,r4}
	bx      lr

branch_2008410: @ 2008410 :thumb
	mov     r1, #0x74
	ldsh    r1, [r3, r1]
	add     r3, #0x74
	add     r0, r1, r0
	strh    r0, [r3, #0x0]
	pop     {r3,r4}
	bx      lr

branch_200841e: @ 200841e :thumb
	mov     r1, #0x76
	ldsh    r1, [r3, r1]
	add     r3, #0x76
	add     r0, r1, r0
	strh    r0, [r3, #0x0]
	pop     {r3,r4}
	bx      lr

branch_200842c: @ 200842c :thumb
	ldr     r4, [r3, #0x54]
	mov     r2, #0x7c
	mov     r1, r4
	bic     r1, r2
	lsl     r2, r4, #25
	lsr     r2, r2, #27
	add     r0, r2, r0
	lsl     r0, r0, #27
	lsr     r0, r0, #25
	orr     r0, r1
	str     r0, [r3, #0x54]
	pop     {r3,r4}
	bx      lr

branch_2008446: @ 2008446 :thumb
	ldr     r4, [r3, #0x50]
	mov     r2, #0x1f
	mov     r1, r4
	bic     r1, r2
	lsl     r2, r4, #27
	lsr     r2, r2, #27
	add     r2, r2, r0
	mov     r0, #0x1f
	and     r0, r2
	orr     r0, r1
	str     r0, [r3, #0x50]
	pop     {r3,r4}
	bx      lr

branch_2008460: @ 2008460 :thumb
	ldr     r2, [r3, #0x50]
	ldr     r1, [pc, #0x248] @ 0x20086ac, (=0xfffffc1f)
	and     r1, r2
	lsl     r2, r2, #22
	lsr     r2, r2, #27
	add     r0, r2, r0
	lsl     r0, r0, #27
	lsr     r0, r0, #22
	orr     r0, r1
	str     r0, [r3, #0x50]
	pop     {r3,r4}
	bx      lr

branch_2008478: @ 2008478 :thumb
	ldr     r2, [r3, #0x50]
	ldr     r1, [pc, #0x234] @ 0x20086b0, (=0xffff83ff)
	and     r1, r2
	lsl     r2, r2, #17
	lsr     r2, r2, #27
	add     r0, r2, r0
	lsl     r0, r0, #27
	lsr     r0, r0, #17
	orr     r0, r1
	str     r0, [r3, #0x50]
	pop     {r3,r4}
	bx      lr

branch_2008490: @ 2008490 :thumb
	ldr     r2, [r3, #0x50]
	ldr     r1, [pc, #0x220] @ 0x20086b4, (=0xfff07fff)
	and     r1, r2
	lsl     r2, r2, #12
	lsr     r2, r2, #27
	add     r0, r2, r0
	lsl     r0, r0, #27
	lsr     r0, r0, #12
	orr     r0, r1
	str     r0, [r3, #0x50]
	pop     {r3,r4}
	bx      lr

branch_20084a8: @ 20084a8 :thumb
	ldr     r2, [r3, #0x50]
	ldr     r1, [pc, #0x20c] @ 0x20086b8, (=0xfe0fffff)
	and     r1, r2
	lsl     r2, r2, #7
	lsr     r2, r2, #27
	add     r0, r2, r0
	lsl     r0, r0, #27
	lsr     r0, r0, #7
	orr     r0, r1
	str     r0, [r3, #0x50]
	pop     {r3,r4}
	bx      lr

branch_20084c0: @ 20084c0 :thumb
	ldr     r2, [r3, #0x50]
	ldr     r1, [pc, #0x1f8] @ 0x20086bc, (=0xc1ffffff)
	and     r1, r2
	lsl     r2, r2, #2
	lsr     r2, r2, #27
	add     r0, r2, r0
	lsl     r0, r0, #27
	lsr     r0, r0, #2
	orr     r0, r1
	str     r0, [r3, #0x50]
	pop     {r3,r4}
	bx      lr

branch_20084d8: @ 20084d8 :thumb
	ldr     r2, [r3, #0x54]
	ldr     r1, [pc, #0x1e4] @ 0x20086c0, (=0xffffefff)
	and     r1, r2
	lsl     r2, r2, #19
	lsr     r2, r2, #31
	add     r0, r2, r0
	lsl     r0, r0, #31
	lsr     r0, r0, #19
	orr     r0, r1
	str     r0, [r3, #0x54]
	mov     r0, #0x1
	ldr     r1, [r3, #0x0]
	lsl     r0, r0, #8
	orr     r0, r1
	str     r0, [r3, #0x0]
	pop     {r3,r4}
	bx      lr

branch_20084fa: @ 20084fa :thumb
	ldr     r1, [r3, #0x4c]
	add     r0, r1, r0
	str     r0, [r3, #0x4c]
	mov     r0, #0x1
	ldr     r1, [r3, #0x0]
	lsl     r0, r0, #8
	orr     r0, r1
	str     r0, [r3, #0x0]
	pop     {r3,r4}
	bx      lr

branch_200850e: @ 200850e :thumb
	mov     r1, r3
	add     r1, #0x48
	ldrb    r1, [r1, #0x0]
	add     r1, r1, r0
	mov     r0, r3
	add     r0, #0x48
	strb    r1, [r0, #0x0]
	mov     r0, #0x1
	ldr     r1, [r3, #0x0]
	lsl     r0, r0, #8
	orr     r0, r1
	str     r0, [r3, #0x0]
	pop     {r3,r4}
	bx      lr

branch_200852a: @ 200852a :thumb
	mov     r1, r3
	add     r1, #0x49
	ldrb    r1, [r1, #0x0]
	add     r1, r1, r0
	mov     r0, r3
	add     r0, #0x49
	strb    r1, [r0, #0x0]
	mov     r0, #0x1
	ldr     r1, [r3, #0x0]
	lsl     r0, r0, #8
	orr     r0, r1
	str     r0, [r3, #0x0]
	pop     {r3,r4}
	bx      lr

branch_2008546: @ 2008546 :thumb
	mov     r1, r3
	add     r1, #0x4a
	ldrb    r1, [r1, #0x0]
	add     r3, #0x4a
	add     r0, r1, r0
	strb    r0, [r3, #0x0]
	pop     {r3,r4}
	bx      lr

branch_2008556: @ 2008556 :thumb
	ldr     r2, [r3, #0x54]
	ldr     r1, [pc, #0x168] @ 0x20086c4, (=0xfffffdff)
	and     r1, r2
	lsl     r2, r2, #22
	lsr     r2, r2, #31
	add     r0, r2, r0
	lsl     r0, r0, #31
	lsr     r0, r0, #22
	orr     r0, r1
	str     r0, [r3, #0x54]
	ldr     r1, [r3, #0x0]
	mov     r0, #0x80
	orr     r0, r1
	str     r0, [r3, #0x0]
	pop     {r3,r4}
	bx      lr

branch_2008576: @ 2008576 :thumb
	ldr     r2, [r3, #0x54]
	ldr     r1, [pc, #0x14c] @ 0x20086c8, (=0xfffffbff)
	and     r1, r2
	lsl     r2, r2, #21
	lsr     r2, r2, #31
	add     r0, r2, r0
	lsl     r0, r0, #31
	lsr     r0, r0, #21
	orr     r0, r1
	str     r0, [r3, #0x54]
	ldr     r1, [r3, #0x0]
	mov     r0, #0x80
	orr     r0, r1
	str     r0, [r3, #0x0]
	pop     {r3,r4}
	bx      lr

branch_2008596: @ 2008596 :thumb
	ldr     r2, [r3, #0x54]
	ldr     r1, [pc, #0x130] @ 0x20086cc, (=0xfffff7ff)
	and     r1, r2
	lsl     r2, r2, #20
	lsr     r2, r2, #31
	add     r0, r2, r0
	lsl     r0, r0, #31
	lsr     r0, r0, #20
	orr     r0, r1
	str     r0, [r3, #0x54]
	pop     {r3,r4}
	bx      lr

branch_20085ae: @ 20085ae :thumb
	mov     r1, r3
	add     r1, #0x5b
	ldrb    r1, [r1, #0x0]
	add     r3, #0x5b
	add     r0, r1, r0
	strb    r0, [r3, #0x0]
	pop     {r3,r4}
	bx      lr

branch_20085be: @ 20085be :thumb
	ldr     r2, [r3, #0x54]
	ldr     r1, [pc, #0x10c] @ 0x20086d0, (=0xfffe1fff)
	and     r1, r2
	lsl     r2, r2, #15
	lsr     r2, r2, #28
	add     r0, r2, r0
	lsl     r0, r0, #28
	lsr     r0, r0, #15
	orr     r0, r1
	str     r0, [r3, #0x54]
	ldr     r1, [r3, #0x0]
	mov     r0, #0x80
	orr     r0, r1
	str     r0, [r3, #0x0]
	pop     {r3,r4}
	bx      lr

branch_20085de: @ 20085de :thumb
	mov     r1, #0x6e
	ldsb    r1, [r3, r1]
	add     r3, #0x6e
	add     r0, r1, r0
	strb    r0, [r3, #0x0]
	pop     {r3,r4}
	bx      lr

branch_20085ec: @ 20085ec :thumb
	mov     r1, r3
	add     r1, #0x6c
	ldrh    r4, [r1, #0x0]
	mov     r2, #0x3
	mov     r1, r4
	bic     r1, r2
	lsl     r2, r4, #30
	lsr     r2, r2, #30
	add     r0, r2, r0
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	mov     r2, #0x3
	and     r0, r2
	orr     r1, r0
	mov     r0, r3
	add     r0, #0x6c
	strh    r1, [r0, #0x0]
	ldr     r0, [r3, #0x0]
	add     r2, #0xfd
	orr     r0, r2
	str     r0, [r3, #0x0]
	pop     {r3,r4}
	bx      lr

branch_200861a: @ 200861a :thumb
	mov     r1, r3
	add     r1, #0x6c
	ldrh    r4, [r1, #0x0]
	mov     r2, #0x4
	add     r3, #0x6c
	mov     r1, r4
	bic     r1, r2
	lsl     r2, r4, #29
	lsr     r2, r2, #31
	add     r0, r2, r0
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	lsl     r0, r0, #31
	lsr     r0, r0, #29
	orr     r0, r1
	strh    r0, [r3, #0x0]
	pop     {r3,r4}
	bx      lr

branch_200863e: @ 200863e :thumb
	mov     r1, r3
	add     r1, #0x6c
	ldrh    r4, [r1, #0x0]
	mov     r2, #0x8
	add     r3, #0x6c
	mov     r1, r4
	bic     r1, r2
	lsl     r2, r4, #28
	lsr     r2, r2, #31
	add     r0, r2, r0
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	lsl     r0, r0, #31
	lsr     r0, r0, #28
	orr     r0, r1
	strh    r0, [r3, #0x0]
	pop     {r3,r4}
	bx      lr

branch_2008662: @ 2008662 :thumb
	mov     r1, r3
	add     r1, #0x6c
	ldrh    r4, [r1, #0x0]
	mov     r2, #0x10
	add     r3, #0x6c
	mov     r1, r4
	bic     r1, r2
	lsl     r2, r4, #27
	lsr     r2, r2, #31
	add     r0, r2, r0
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	lsl     r0, r0, #31
	lsr     r0, r0, #27
	orr     r0, r1
	strh    r0, [r3, #0x0]
	pop     {r3,r4}
	bx      lr

branch_2008686: @ 2008686 :thumb
	mov     r1, r3
	add     r1, #0x6c
	ldrh    r4, [r1, #0x0]
	mov     r2, #0x60
	add     r3, #0x6c
	mov     r1, r4
	bic     r1, r2
	lsl     r2, r4, #25
	lsr     r2, r2, #30
	add     r0, r2, r0
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	lsl     r0, r0, #30
	lsr     r0, r0, #25
	orr     r0, r1
	strh    r0, [r3, #0x0]
branch_20086a6: @ 20086a6 :thumb
	pop     {r3,r4}
	bx      lr
@ 0x20086aa

.align 2
.word 0xfffffc1f @ 0x20086ac
.word 0xffff83ff @ 0x20086b0
.word 0xfff07fff @ 0x20086b4
.word 0xfe0fffff @ 0x20086b8
.word 0xc1ffffff @ 0x20086bc
.word 0xffffefff @ 0x20086c0
.word 0xfffffdff @ 0x20086c4
.word 0xfffffbff @ 0x20086c8
.word 0xfffff7ff @ 0x20086cc
.word 0xfffe1fff @ 0x20086d0



.thumb
.globl Function_20086d4
Function_20086d4: @ 20086d4 :thumb
	push    {r4,r5}
	ldr     r5, [r0, #0x54]
	mov     r4, #0x2
	orr     r4, r5
	str     r4, [r0, #0x54]
	mov     r4, r0
	add     r4, #0x44
	strb    r1, [r4, #0x0]
	mov     r1, r0
	add     r1, #0x45
	strb    r2, [r1, #0x0]
	mov     r1, r0
	add     r1, #0x46
	strb    r3, [r1, #0x0]
	ldr     r1, [sp, #0x8]
	add     r0, #0x47
	strb    r1, [r0, #0x0]
	pop     {r4,r5}
	bx      lr
@ 0x20086fa


.align 2, 0
.thumb
.globl Function_20086fc
Function_20086fc: @ 20086fc :thumb
	push    {r4,r5}
	mov     r4, #0x1
	ldr     r5, [r0, #0x54]
	lsl     r4, r4, #12
	orr     r4, r5
	str     r4, [r0, #0x54]
	mov     r4, r0
	add     r4, #0x48
	strb    r1, [r4, #0x0]
	mov     r1, r0
	add     r1, #0x49
	strb    r2, [r1, #0x0]
	mov     r1, r0
	mov     r2, #0x0
	add     r1, #0x4a
	strb    r2, [r1, #0x0]
	mov     r1, r0
	add     r1, #0x4b
	strb    r3, [r1, #0x0]
	ldr     r1, [sp, #0x8]
	str     r1, [r0, #0x4c]
	pop     {r4,r5}
	bx      lr
@ 0x200872a


/* Input:
r0: NARCPokeGra
*/
.align 2, 0
.thumb
.globl Function_200872c
Function_200872c: @ 200872c :thumb
	push    {r4-r7}
	mov     r4, r0
	mov     r0, r1
	mov     r5, r2
	lsl     r0, r0, #24
	lsr     r6, r0, #24
	lsl     r0, r5, #24
	lsr     r5, r0, #24
	lsl     r0, r3, #24
	ldr     r2, [sp, #0x10]
	mov     r1, #0x0
	lsr     r0, r0, #24
branch_2008744: @ 2008744 :thumb
	ldr     r3, [r4, #NARCPokeGra_0]
	lsl     r3, r3, #31
	lsr     r3, r3, #31
	beq     branch_2008772

	mov     r3, #0x1
	ldr     r7, [r4, #NARCPokeGra_54]
	lsl     r3, r3, #12
	orr     r3, r7
	str     r3, [r4, #NARCPokeGra_54]
	mov     r3, r4
	add     r3, #NARCPokeGra_48
	strb    r6, [r3] @ NARCPokeGra_48
	mov     r3, r4
	add     r3, #NARCPokeGra_49
	mov     r7, r4
	strb    r5, [r3] @ NARCPokeGra_49
	add     r7, #NARCPokeGra_4a
	mov     r3, #0x0
	strb    r3, [r7] @ NARCPokeGra_4a
	mov     r3, r4
	add     r3, #NARCPokeGra_4b
	strb    r0, [r3] @ NARCPokeGra_4b
	str     r2, [r4, #NARCPokeGra_4c]

branch_2008772: @ 2008772 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r4, #NARCPokeGra_ac
	cmp     r1, #0x4
	blt     branch_2008744

	pop     {r4-r7}
	bx      lr
@ 0x200877e


.align 2, 0
.thumb
.globl Function_2008780
Function_2008780: @ 2008780 :thumb
	ldr     r2, [r0, #0x54]
	ldr     r1, [pc, #0x2c] @ 0x20087b0, (=0xffffefff)
	and     r1, r2
	str     r1, [r0, #0x54]
	mov     r1, r0
	mov     r2, #0x0
	add     r1, #0x48
	strb    r2, [r1, #0x0]
	mov     r1, r0
	add     r1, #0x49
	strb    r2, [r1, #0x0]
	mov     r1, r0
	add     r1, #0x4a
	strb    r2, [r1, #0x0]
	mov     r1, r0
	add     r1, #0x4b
	strb    r2, [r1, #0x0]
	str     r2, [r0, #0x4c]
	mov     r1, #0x1
	ldr     r2, [r0, #0x0]
	lsl     r1, r1, #8
	orr     r1, r2
	str     r1, [r0, #0x0]
	bx      lr
@ 0x20087b0

.word 0xffffefff @ 0x20087b0



.thumb
.globl Function_20087b4
Function_20087b4: @ 20087b4 :thumb
	ldr     r0, [r0, #0x54]
	lsl     r0, r0, #19
	lsr     r0, r0, #31
	cmp     r0, #0x1
	bne     branch_20087c2

	mov     r0, #0x1
	bx      lr

branch_20087c2: @ 20087c2 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x20087c6


.align 2, 0
.thumb
.globl Function_20087c8
Function_20087c8: @ 20087c8 :thumb
	mov     r2, #0x28
	sub     r2, r2, r1
	mov     r1, #0x36
	ldsh    r1, [r0, r1]
	mul     r1, r2
	asr     r1, r1, #8
	sub     r1, r2, r1
	strh    r1, [r0, #0x2e]
	bx      lr
@ 0x20087da


/* Input:
r0: NARCPokeGra
*/
.align 2, 0
.thumb
Function_20087dc: @ 20087dc :thumb
	push    {r4-r7}
	mov     r1, r0
	add     r1, #NARCPokeGra_58
	ldrb    r1, [r1] @ NARCPokeGra_58
	cmp     r1, #0x0
	beq     branch_20088d2

	mov     r1, r0
	add     r1, #NARCPokeGra_5a
	ldrb    r1, [r1] @ NARCPokeGra_5a
	cmp     r1, #0x0
	bne     branch_20088c6

	mov     r1, r0
	add     r1, #NARCPokeGra_59
	ldrb    r1, [r1] @ NARCPokeGra_59
	mov     r6, r0
	add     r6, #NARCPokeGra_59
	add     r2, r1, #0x1
	mov     r1, r0
	add     r1, #NARCPokeGra_59
	strb    r2, [r1] @ NARCPokeGra_59
	mov     r1, r0
	add     r1, #NARCPokeGra_59
	ldrb    r3, [r1] @ NARCPokeGra_59
	lsl     r1, r3, #2
	add     r2, r0, r1
	mov     r1, #0x84
	ldsb    r4, [r2, r1]
	sub     r1, #0x85
	cmp     r4, r1
	bge     branch_2008878

	mov     r2, #0x0
	sub     r1, r2, #0x2
branch_200881c: @ 200881c :thumb
	add     r4, r0, r3
	add     r4, #0x5c
	ldrb    r4, [r4, #0x0]
	add     r3, r0, r3
	add     r3, #0x5c
	.hword  0x1c64 @ add r4, r4, #0x1
	strb    r4, [r3, #0x0]
	mov     r3, r0
	add     r3, #NARCPokeGra_59
	ldrb    r5, [r3] @ NARCPokeGra_59
	lsl     r3, r5, #2
	add     r4, r0, r3
	mov     r3, r4
	add     r7, r0, r5
	add     r3, #0x85
	add     r7, #0x5c
	ldrb    r3, [r3, #0x0]
	ldrb    r7, [r7, #0x0]
	cmp     r3, r7
	beq     branch_2008848

	cmp     r3, #0x0
	bne     branch_2008856

branch_2008848: @ 2008848 :thumb
	add     r3, r0, r5
	add     r3, #0x5c
	strb    r2, [r3, #0x0]
	ldrb    r3, [r6, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	strb    r3, [r6, #0x0]
	b       branch_2008862

branch_2008856: @ 2008856 :thumb
	mov     r3, #0x84
	ldsb    r3, [r4, r3]
	sub     r4, r1, r3
	mov     r3, r0
	add     r3, #NARCPokeGra_59
	strb    r4, [r3] @ NARCPokeGra_59
branch_2008862: @ 2008862 :thumb
	mov     r3, r0
	add     r3, #NARCPokeGra_59
	ldrb    r3, [r3] @ NARCPokeGra_59
	lsl     r4, r3, #2
	add     r5, r0, r4
	mov     r4, #0x84
	ldsb    r4, [r5, r4]
	mov     r5, #0x0
	mvn     r5, r5
	cmp     r4, r5
	blt     branch_200881c

branch_2008878: @ 2008878 :thumb
	cmp     r3, #0xa
	bhs     branch_2008884

	mov     r1, #0x0
	mvn     r1, r1
	cmp     r4, r1
	bne     branch_2008898

branch_2008884: @ 2008884 :thumb
	mov     r1, r0
	mov     r2, #0x0
	add     r1, #NARCPokeGra_5b
	strb    r2, [r1] @ NARCPokeGra_5b
	mov     r1, r0
	add     r1, #NARCPokeGra_58
	strb    r2, [r1] @ NARCPokeGra_58
	strh    r2, [r0, #0x2c]
	pop     {r4-r7}
	bx      lr

branch_2008898: @ 2008898 :thumb
	mov     r1, r0
	add     r1, #NARCPokeGra_5b
	strb    r4, [r1] @ NARCPokeGra_5b
	mov     r1, r0
	add     r1, #NARCPokeGra_59
	ldrb    r1, [r1] @ NARCPokeGra_59
	lsl     r1, r1, #2
	add     r1, r0, r1
	add     r1, #0x85
	ldrb    r2, [r1, #0x0]
	mov     r1, r0
	add     r1, #NARCPokeGra_5a
	strb    r2, [r1] @ NARCPokeGra_5a
	mov     r1, r0
	add     r1, #NARCPokeGra_59
	ldrb    r1, [r1] @ NARCPokeGra_59
	lsl     r1, r1, #2
	add     r2, r0, r1
	mov     r1, #0x86
	ldsb    r1, [r2, r1]
	strh    r1, [r0, #NARCPokeGra_2c]
	pop     {r4-r7}
	bx      lr

branch_20088c6: @ 20088c6 :thumb
	mov     r1, r0
	add     r1, #NARCPokeGra_5a
	ldrb    r1, [r1] @ NARCPokeGra_5a
	add     r0, #NARCPokeGra_5a
	.hword  0x1e49 @ sub r1, r1, #0x1
	strb    r1, [r0] @ NARCPokeGra_5a
branch_20088d2: @ 20088d2 :thumb
	pop     {r4-r7}
	bx      lr
@ 0x20088d6


/* Input:
r0: NARCPokeGra
*/
.align 2, 0
.thumb
Function_20088d8: @ 20088d8 :thumb
	ldr     r3, =Function_20087dc+1
	bx      r3
@ 0x20088dc

.align 2
.pool



.thumb
.globl Function_20088e0
Function_20088e0: @ 20088e0 :thumb
	mov     r2, #0x1
	strb    r2, [r0, #0x0]
	mov     r3, #0x0
	strb    r3, [r0, #0x2]
	ldsb    r2, [r1, r3]
	strb    r2, [r0, #0x1]
	ldrb    r2, [r1, #0x1]
	strb    r2, [r0, #0x3]
	str     r1, [r0, #0x10]
	mov     r2, r3
branch_20088f4: @ 20088f4 :thumb
	add     r1, r0, r3
	.hword  0x1c5b @ add r3, r3, #0x1
	strb    r2, [r1, #0x4]
	cmp     r3, #0xa
	blt     branch_20088f4

	bx      lr
@ 0x2008900


.thumb
.globl Function_2008900
Function_2008900: @ 2008900 :thumb
	push    {r4-r7}
	ldrb    r1, [r0, #0x0]
	cmp     r1, #0x0
	beq     branch_2008996

	add     r3, r0, #0x2
	ldr     r4, [r0, #0x10]
	cmp     r1, #0x0
	beq     branch_2008990

	ldrb    r1, [r0, #0x3]
	cmp     r1, #0x0
	bne     branch_200898c

	ldrb    r1, [r3, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r3, #0x0]
	ldrb    r2, [r3, #0x0]
	mov     r1, #0x0
	mvn     r1, r1
	lsl     r5, r2, #2
	ldsb    r6, [r4, r5]
	cmp     r6, r1
	bge     branch_2008968

	mov     r1, #0x0
branch_200892c: @ 200892c :thumb
	add     r5, r0, r2
	ldrb    r2, [r5, #0x4]
	.hword  0x1c52 @ add r2, r2, #0x1
	strb    r2, [r5, #0x4]
	ldrb    r2, [r3, #0x0]
	add     r5, r0, r2
	lsl     r2, r2, #2
	add     r2, r4, r2
	ldrb    r7, [r2, #0x1]
	ldrb    r6, [r5, #0x4]
	cmp     r7, r6
	beq     branch_2008948

	cmp     r7, #0x0
	bne     branch_200894e

branch_2008948: @ 2008948 :thumb
	strb    r1, [r5, #0x4]
	.hword  0x1c5b @ add r3, r3, #0x1
	b       branch_200895a

branch_200894e: @ 200894e :thumb
	mov     r5, #0x0
	ldsb    r5, [r2, r5]
	mov     r2, #0x1
	mvn     r2, r2
	sub     r2, r2, r5
	strb    r2, [r3, #0x0]

branch_200895a: @ 200895a :thumb
	ldrb    r2, [r3, #0x0]
	mov     r6, #0x0
	mvn     r6, r6
	lsl     r5, r2, #2
	ldsb    r7, [r4, r5]
	cmp     r7, r6
	blt     branch_200892c

branch_2008968: @ 2008968 :thumb
	ldsb    r5, [r4, r5]
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r5, r1
	beq     branch_2008976

	cmp     r2, #0xa
	blo     branch_200897e

branch_2008976: @ 2008976 :thumb
	mov     r1, #0x0
	strb    r1, [r0, #0x1]
	strb    r1, [r0, #0x0]
	b       branch_2008990

branch_200897e: @ 200897e :thumb
	strb    r5, [r0, #0x1]
	ldrb    r1, [r3, #0x0]
	lsl     r1, r1, #2
	add     r1, r4, r1
	ldrb    r1, [r1, #0x1]
	strb    r1, [r0, #0x3]
	b       branch_2008990

branch_200898c: @ 200898c :thumb
	.hword  0x1e49 @ sub r1, r1, #0x1
	strb    r1, [r0, #0x3]
branch_2008990: @ 2008990 :thumb
	ldrb    r0, [r0, #0x1]
	pop     {r4-r7}
	bx      lr
@ 0x2008996

.thumb
branch_2008996: @ 2008996 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	pop     {r4-r7}
	bx      lr
@ 0x200899e


.align 2, 0
.thumb
.globl Function_20089a0
Function_20089a0: @ 20089a0 :thumb
	ldr     r2, [r0, #0x0]
	mov     r1, #0x80
	orr     r2, r1
	add     r1, #0x80
	orr     r1, r2
	str     r1, [r0, #0x0]
	bx      lr
@ 0x20089ae


.align 2, 0
.thumb
.globl Function_20089b0
Function_20089b0: @ 20089b0 :thumb
	push    {r3,r4}
	mov     r2, r0
	mov     r3, r2
	add     r4, r2, #0x4
	add     r3, #0x14
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	add     r0, #0x6c
	ldrh    r1, [r0, #0x0]
	mov     r0, r2
	add     r0, #0x78
	strh    r1, [r0, #0x0]
	mov     r0, r2
	add     r0, #0x6e
	ldrh    r1, [r0, #0x0]
	mov     r0, r2
	add     r0, #0x7a
	strh    r1, [r0, #0x0]
	mov     r0, r2
	add     r0, #0x70
	ldrh    r1, [r0, #0x0]
	mov     r0, r2
	add     r0, #0x7c
	strh    r1, [r0, #0x0]
	mov     r0, r2
	add     r0, #0x72
	ldrh    r1, [r0, #0x0]
	mov     r0, r2
	add     r0, #0x7e
	strh    r1, [r0, #0x0]
	mov     r0, r2
	add     r0, #0x74
	ldrh    r1, [r0, #0x0]
	mov     r0, r2
	add     r0, #0x80
	strh    r1, [r0, #0x0]
	mov     r0, r2
	add     r0, #0x76
	ldrh    r0, [r0, #0x0]
	add     r2, #0x82
	strh    r0, [r2, #0x0]
	pop     {r3,r4}
	bx      lr
@ 0x2008a0c


.thumb
.globl Function_2008a0c
Function_2008a0c: @ 2008a0c :thumb
	push    {r3,r4}
	mov     r2, r0
	mov     r4, r2
	add     r4, #0x14
	add     r3, r2, #0x4
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	add     r0, #0x78
	ldrh    r1, [r0, #0x0]
	mov     r0, r2
	add     r0, #0x6c
	strh    r1, [r0, #0x0]
	mov     r0, r2
	add     r0, #0x7a
	ldrh    r1, [r0, #0x0]
	mov     r0, r2
	add     r0, #0x6e
	strh    r1, [r0, #0x0]
	mov     r0, r2
	add     r0, #0x7c
	ldrh    r1, [r0, #0x0]
	mov     r0, r2
	add     r0, #0x70
	strh    r1, [r0, #0x0]
	mov     r0, r2
	add     r0, #0x7e
	ldrh    r1, [r0, #0x0]
	mov     r0, r2
	add     r0, #0x72
	strh    r1, [r0, #0x0]
	mov     r0, r2
	add     r0, #0x80
	ldrh    r1, [r0, #0x0]
	mov     r0, r2
	add     r0, #0x74
	strh    r1, [r0, #0x0]
	mov     r0, r2
	add     r0, #0x82
	ldrh    r1, [r0, #0x0]
	mov     r0, r2
	add     r0, #0x76
	strh    r1, [r0, #0x0]
	ldr     r1, [r2, #0x0]
	mov     r0, #0x80
	orr     r1, r0
	add     r0, #0x80
	orr     r0, r1
	str     r0, [r2, #0x0]
	pop     {r3,r4}
	bx      lr
@ 0x2008a76


/* Input:
r0: NARCPokeGra
r1: TexVRAMOffset
*/
.align 2, 0
.thumb
.globl Function_2008a78_SetNARCPokeGra_TexVRAMOffset
Function_2008a78_SetNARCPokeGra_TexVRAMOffset: @ 2008a78 :thumb
	mov     r3, #NARCPokeGra_TexVRAMOffset/4
	lsl     r3, r3, #2
	str     r1, [r0, r3] @ NARCPokeGra_TexVRAMOffset
	add     r1, r3, #NARCPokeGra_2f0 - NARCPokeGra_TexVRAMOffset
	str     r2, [r0, r1] @ NARCPokeGra_2f0
	bx      lr
@ 0x2008a84


/* Input:
r0: NARCPokeGra
*/
.thumb
.globl Function_2008a84
Function_2008a84: @ 2008a84 :thumb
	mov     r3, #NARCPokeGra_2f4/4
	lsl     r3, r3, #2
	str     r1, [r0, r3] @ NARCPokeGra_2f4
	add     r1, r3, #NARCPokeGra_2f8 - NARCPokeGra_2f4
	str     r2, [r0, r1] @ NARCPokeGra_2f8
	bx      lr
@ 0x2008a90


.thumb
.globl Function_2008a90
Function_2008a90: @ 2008a90 :thumb
	.hword  0x1d00 @ add r0, r0, #0x4
	bx      lr
@ 0x2008a94


.thumb
.globl Function_2008a94
Function_2008a94: @ 2008a94 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x88] @ 0x2008b24, (=0x331)
	ldrb    r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_2008ae2

	mov     r1, #0x0
	strb    r1, [r4, r0]
	sub     r0, #0x81
	add     r0, r4, r0
	blx     Function_20a818c
	mov     r3, #0xc2
	lsl     r3, r3, #2
	mov     r1, #0x20
	strh    r1, [r4, r3]
	add     r0, r3, #0x2
	strh    r1, [r4, r0]
	mov     r0, r3
	sub     r0, #0x18
	ldr     r1, [r4, r0]
	mov     r0, r3
	add     r0, #0x10
	str     r1, [r4, r0]
	mov     r0, r3
	sub     r0, #0xc
	ldr     r1, [r4, r0]
	mov     r0, r3
	add     r0, #0x14
	str     r1, [r4, r0]
	mov     r1, r3
	sub     r1, #0x1c
	add     r0, r4, r3
	sub     r3, #0x58
	ldr     r1, [r4, r1]
	mov     r2, #0x0
	add     r3, r4, r3
	blx     Function_20a8450_LoadTexOBJ

branch_2008ae2: @ 2008ae2 :thumb
	ldr     r0, [pc, #0x44] @ 0x2008b28, (=0x332)
	ldrb    r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_2008b22

	mov     r1, #0x0
	strb    r1, [r4, r0]
	sub     r0, #0x5e
	add     r0, r4, r0
	blx     Function_20a81d0
	mov     r3, #0xbe
	lsl     r3, r3, #2
	mov     r0, r3
	ldr     r1, [r4, r3]
	add     r0, #0x30
	str     r1, [r4, r0]
	mov     r0, r3
	add     r0, #0x8
	ldr     r1, [r4, r0]
	mov     r0, r3
	add     r0, #0x34
	str     r1, [r4, r0]
	mov     r0, r3
	sub     r1, r3, #0x4
	add     r0, #0x28
	sub     r3, #0x24
	ldr     r1, [r4, r1]
	add     r0, r4, r0
	mov     r2, #0x0
	add     r3, r4, r3
	blx     Function_20a8850

branch_2008b22: @ 2008b22 :thumb
	pop     {r4,pc}
@ 0x2008b24

.word 0x331 @ 0x2008b24
.word 0x332 @ 0x2008b28



.thumb
.globl Function_2008b2c
Function_2008b2c: @ 2008b2c :thumb
	ldr     r2, [pc, #0x4] @ 0x2008b34, (=0x333)
	strb    r1, [r0, r2]
	bx      lr
@ 0x2008b32

.align 2
.word 0x333 @ 0x2008b34



.thumb
.globl Function_2008b38
Function_2008b38: @ 2008b38 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_2008b42
	bl      ErrorHandling
.thumb
branch_2008b42: @ 2008b42 :thumb
	ldr     r0, [r4, #0x0]
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	beq     branch_2008b4e
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2008b4e

.thumb
branch_2008b4e: @ 2008b4e :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2008b52


.align 2, 0
.thumb
.globl Function_2008b54
Function_2008b54: @ 2008b54 :thumb
	mov     r2, #0xcd
	lsl     r2, r2, #2
	ldr     r3, [r0, r2]
	orr     r1, r3
	str     r1, [r0, r2]
	bx      lr
@ 0x2008b60


.thumb
.globl Function_2008b60
Function_2008b60: @ 2008b60 :thumb
	push    {r3,r4}
	mov     r3, #0xcd
	lsl     r3, r3, #2
	mov     r2, #0x0
	mvn     r2, r2
	ldr     r4, [r0, r3]
	eor     r1, r2
	and     r1, r4
	str     r1, [r0, r3]
	pop     {r3,r4}
	bx      lr
@ 0x2008b76


/* Input:
r0: NARCPokeGra
*/
.align 2, 0
.thumb
Function_2008b78: @ 2008b78 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x5c
	mov     r6, r0
	mov     r0, #0x0
	str     r0, [sp, #0x48]
	str     r0, [sp, #0x54]
	ldr     r0, [sp, #0x48]
	str     r6, [sp, #0x44]
	str     r0, [sp, #0x38]
branch_2008b8a: @ 2008b8a :thumb
	ldr     r0, [sp, #0x44]
	ldr     r1, [r0, #NARCPokeGra_0]
	lsl     r0, r1, #31
	lsr     r0, r0, #31
	beq     branch_2008b9a

	lsl     r0, r1, #24
	lsr     r0, r0, #31
	bne     branch_2008b9c

branch_2008b9a: @ 2008b9a :thumb
	b       branch_2008f96

branch_2008b9c: @ 2008b9c :thumb
	mov     r0, #0x80
	bic     r1, r0
	ldr     r0, [sp, #0x44]
	mov     r2, #NARCPokeGra_2e8/4
	str     r1, [r0, #NARCPokeGra_0]
	mov     r0, #0x1
	str     r0, [sp, #0x48]

	ldr     r0, [sp, #0x44]
	ldr     r1, [sp, #0x44]
	lsl     r2, r2, #2
	ldrh    r0, [r0, #NARCPokeGra_4]              @ archive_id
	ldrh    r1, [r1, #NARCPokeGra_6]              @ file_id
	ldr     r2, [r6, r2] @ NARCPokeGra_2e8
	bl      LoadFromNARC_2
	add     r1, sp, #0x58
	str     r0, [sp, #0x4c]
	blx     Function_20a7118

	ldr     r0, [sp, #0x58]
	mov     r1, #NARCPokeGra_30c/4
	ldr     r0, [r0, #0x4]
	lsl     r1, r1, #2
	str     r0, [r6, r1] @ NARCPokeGra_30c
	ldr     r0, [sp, #0x58]
	ldr     r2, [r0, #0x8]
	add     r0, r1, #NARCPokeGra_310 - NARCPokeGra_30c
	str     r2, [r6, r0] @ NARCPokeGra_310
	ldr     r0, [sp, #0x58]
	add     r1, #NARCPokeGra_314 - NARCPokeGra_30c
	ldr     r0, [r0, #0xc]
	str     r0, [r6, r1] @ NARCPokeGra_314

	ldr     r0, [sp, #0x58]
	ldr     r1, [sp, #0x44]
	ldr     r0, [r0, #0x14]
	ldrh    r1, [r1, #NARCPokeGra_4]    @ archive_id
	str     r0, [sp, #0x50]             @ Pointer to raw PokeGraphicData
	bl      Call_PokegraDecrypt_ReverseForward

	ldr     r0, [sp, #0x44]             @ NARCPokeGra
	ldr     r1, [sp, #0x50]             @ Pointer to raw PokeGraphicData
	bl      Function_20091c0

	ldr     r0, [sp, #0x54]
	cmp     r0, #0x3
	beq     branch_2008bfa
	b       branch_2008e28

branch_2008bfa: @ 2008bfa :thumb
	mov     r5, #0x0
	mov     r0, r5
	str     r5, [sp, #0x14]
	str     r0, [sp, #0x24]
branch_2008c02: @ 2008c02 :thumb
	ldr     r0, [sp, #0x14]
	mov     r1, #0x4f
	sub     r2, r1, r0
	mov     r0, #0x50
	mov     r1, r2
	mul     r1, r0
	ldr     r0, [sp, #0x50]
	mov     r4, #0x0
	add     r0, r0, r1
	str     r0, [sp, #0x20]
	ldr     r1, [sp, #0x50]
	ldr     r0, [sp, #0x24]
	add     r7, r1, r0
	ldr     r0, [sp, #0x20]
	str     r7, [sp, #0x18]
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x14]
	.hword  0x1e40 @ sub r0, r0, #0x1
	lsl     r0, r0, #7
	str     r0, [sp, #0x10]
branch_2008c2a: @ 2008c2a :thumb
	cmp     r4, #0x28
	bge     branch_2008d16

	ldr     r0, [sp, #0x44]
	ldr     r1, [r0, #NARCPokeGra_54]
	lsl     r0, r1, #22
	lsr     r0, r0, #31
	beq     branch_2008c5a

	lsl     r1, r1, #21
	lsr     r1, r1, #31
	beq     branch_2008c5a

	mov     r0, #0x27
	sub     r1, r0, r4
	ldr     r0, [sp, #0x1c]
	ldrb    r0, [r0, r1]
	bl      Function_20091ac
	mov     r1, #0xbf
	lsl     r1, r1, #2
	ldr     r1, [r6, r1]
	add     r1, r5, r1
	add     r1, r4, r1
	add     r1, #0x50
	strb    r0, [r1, #0x0]
	b       branch_2008e02

branch_2008c5a: @ 2008c5a :thumb
	cmp     r0, #0x0
	beq     branch_2008c7a

	mov     r0, #0x27
	sub     r1, r0, r4
	ldr     r0, [sp, #0x18]
	ldrb    r0, [r0, r1]
	bl      Function_20091ac
	mov     r1, #NARCPokeGra_2fc/4
	lsl     r1, r1, #2
	ldr     r1, [r6, r1] @ NARCPokeGra_2fc
	add     r1, r5, r1
	add     r1, r4, r1
	add     r1, #0x50
	strb    r0, [r1, #0x0]
	b       branch_2008e02

branch_2008c7a: @ 2008c7a :thumb
	ldr     r0, [sp, #0x44]
	ldr     r0, [r0, #NARCPokeGra_54]
	lsl     r1, r0, #21
	lsr     r1, r1, #31
	beq     branch_2008c98

	mov     r1, #NARCPokeGra_2fc/4
	lsl     r1, r1, #2
	ldr     r0, [sp, #0x20]
	ldr     r1, [r6, r1] @ NARCPokeGra_2fc
	ldrb    r0, [r0, #0x0]
	add     r1, r5, r1
	add     r1, r4, r1
	add     r1, #0x50
	strb    r0, [r1, #0x0]
	b       branch_2008e02

branch_2008c98: @ 2008c98 :thumb
	lsl     r0, r0, #15
	lsr     r0, r0, #28
	str     r0, [sp, #0xc]
	beq     branch_2008d04

	ldr     r1, [sp, #0xc]
	ldr     r0, [sp, #0x14]
	lsl     r1, r1, #1
	blx     _u32_div_f
	cmp     r1, #0x0
	beq     branch_2008cc8

	mov     r0, #NARCPokeGra_2fc/4
	lsl     r0, r0, #2
	ldr     r1, [r6, r0] @ NARCPokeGra_2fc
	ldr     r0, [sp, #0x10]
	add     r0, r0, r1
	add     r0, r4, r0
	add     r0, #0x50
	add     r1, r5, r1
	add     r1, r4, r1
	ldrb    r0, [r0, #0x0]
	add     r1, #0x50
	strb    r0, [r1, #0x0]
	b       branch_2008e02

branch_2008cc8: @ 2008cc8 :thumb
	ldr     r1, [sp, #0xc]
	mov     r0, r4
	blx     _u32_div_f
	cmp     r1, #0x0
	beq     branch_2008cea

	mov     r0, #NARCPokeGra_2fc/4
	lsl     r0, r0, #2
	ldr     r0, [r6, r0] @ NARCPokeGra_2fc
	add     r2, r5, r0
	add     r0, r2, r4
	add     r0, #0x4f
	ldrb    r1, [r0, #0x0]
	add     r0, r2, r4
	add     r0, #0x50
	strb    r1, [r0, #0x0]
	b       branch_2008e02

branch_2008cea: @ 2008cea :thumb
	ldrb    r1, [r7, #0x0]
	mov     r0, #0xf
	and     r1, r0
	lsl     r0, r1, #4
	orr     r0, r1
	mov     r1, #NARCPokeGra_2fc/4
	lsl     r1, r1, #2
	ldr     r1, [r6, r1] @ NARCPokeGra_2fc
	add     r1, r5, r1
	add     r1, r4, r1
	add     r1, #0x50
	strb    r0, [r1, #0x0]
	b       branch_2008e02

branch_2008d04: @ 2008d04 :thumb
	mov     r1, #NARCPokeGra_2fc/4
	lsl     r1, r1, #2
	ldr     r1, [r6, r1] @ NARCPokeGra_2fc
	ldrb    r0, [r7, #0x0]
	add     r1, r5, r1
	add     r1, r4, r1
	add     r1, #0x50
	strb    r0, [r1, #0x0]
	b       branch_2008e02

branch_2008d16: @ 2008d16 :thumb
	ldr     r0, [sp, #0x44]
	ldr     r1, [r0, #NARCPokeGra_54]
	lsl     r0, r1, #22
	lsr     r0, r0, #31
	beq     branch_2008d46

	lsl     r1, r1, #21
	lsr     r1, r1, #31
	beq     branch_2008d46

	mov     r1, r4
	sub     r1, #0x28
	mov     r0, #0x4f
	sub     r1, r0, r1
	ldr     r0, [sp, #0x1c]
	ldrb    r0, [r0, r1]
	bl      Function_20091ac
	mov     r1, #NARCPokeGra_2fc/4
	lsl     r1, r1, #2
	ldr     r1, [r6, r1] @ NARCPokeGra_2fc
	add     r1, r5, r1
	add     r2, r4, r1
	ldr     r1, [pc, #0x278] @ 0x2008fbc, (=0x2828)
	strb    r0, [r2, r1]
	b       branch_2008e02

branch_2008d46: @ 2008d46 :thumb
	cmp     r0, #0x0
	beq     branch_2008d6a

	mov     r1, r4
	sub     r1, #0x28
	mov     r0, #0x4f
	sub     r1, r0, r1
	ldr     r0, [sp, #0x18]
	ldrb    r0, [r0, r1]
	bl      Function_20091ac
	mov     r1, #NARCPokeGra_2fc/4
	lsl     r1, r1, #2
	ldr     r1, [r6, r1] @ NARCPokeGra_2fc
	add     r1, r5, r1
	add     r2, r4, r1
	ldr     r1, [pc, #0x254] @ 0x2008fbc, (=0x2828)
	strb    r0, [r2, r1]
	b       branch_2008e02

branch_2008d6a: @ 2008d6a :thumb
	ldr     r0, [sp, #0x44]
	ldr     r0, [r0, #NARCPokeGra_54]
	lsl     r1, r0, #21
	lsr     r1, r1, #31
	beq     branch_2008d88

	mov     r1, #NARCPokeGra_2fc/4
	lsl     r1, r1, #2
	ldr     r0, [sp, #0x20]
	ldr     r1, [r6, r1] @ NARCPokeGra_2fc
	ldrb    r0, [r0, #0x0]
	add     r1, r5, r1
	add     r2, r4, r1
	ldr     r1, [pc, #0x238] @ 0x2008fbc, (=0x2828)
	strb    r0, [r2, r1]
	b       branch_2008e02

branch_2008d88: @ 2008d88 :thumb
	lsl     r0, r0, #15
	lsr     r0, r0, #28
	str     r0, [sp, #0x8]
	beq     branch_2008df2

	ldr     r1, [sp, #0x8]
	ldr     r0, [sp, #0x14]
	lsl     r1, r1, #1
	blx     _u32_div_f
	cmp     r1, #0x0
	beq     branch_2008db8

	mov     r0, #NARCPokeGra_2fc/4
	lsl     r0, r0, #2
	ldr     r1, [r6, r0] @ NARCPokeGra_2fc
	ldr     r0, [sp, #0x10]
	add     r0, r0, r1
	add     r2, r4, r0
	ldr     r0, [pc, #0x210] @ 0x2008fbc, (=0x2828)
	add     r1, r5, r1
	ldrb    r0, [r2, r0]
	add     r2, r4, r1
	ldr     r1, [pc, #0x208] @ 0x2008fbc, (=0x2828)
	strb    r0, [r2, r1]
	b       branch_2008e02

branch_2008db8: @ 2008db8 :thumb
	ldr     r1, [sp, #0x8]
	mov     r0, r4
	blx     _u32_div_f
	cmp     r1, #0x0
	beq     branch_2008dd8

	mov     r0, #NARCPokeGra_2fc/4
	lsl     r0, r0, #2
	ldr     r0, [r6, r0] @ NARCPokeGra_2fc
	ldr     r1, [pc, #0x1f4] @ 0x2008fc0, (=0x2827)
	add     r0, r5, r0
	add     r0, r0, r4
	ldrb    r2, [r0, r1]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r2, [r0, r1]
	b       branch_2008e02

branch_2008dd8: @ 2008dd8 :thumb
	ldrb    r1, [r7, #0x0]
	mov     r0, #0xf
	and     r1, r0
	lsl     r0, r1, #4
	orr     r0, r1
	mov     r1, #NARCPokeGra_2fc/4
	lsl     r1, r1, #2
	ldr     r1, [r6, r1] @ NARCPokeGra_2fc
	add     r1, r5, r1
	add     r2, r4, r1
	ldr     r1, [pc, #0x1cc] @ 0x2008fbc, (=0x2828)
	strb    r0, [r2, r1]
	b       branch_2008e02

branch_2008df2: @ 2008df2 :thumb
	mov     r1, #NARCPokeGra_2fc/4
	lsl     r1, r1, #2
	ldr     r1, [r6, r1] @ NARCPokeGra_2fc
	ldrb    r0, [r7, #0x0]
	add     r1, r5, r1
	add     r2, r4, r1
	ldr     r1, [pc, #0x1bc] @ 0x2008fbc, (=0x2828)
	strb    r0, [r2, r1]
branch_2008e02: @ 2008e02 :thumb
	ldr     r0, [sp, #0x20]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1c7f @ add r7, r7, #0x1
	str     r0, [sp, #0x20]
	cmp     r4, #0x50
	bge     branch_2008e12
	b       branch_2008c2a

branch_2008e12: @ 2008e12 :thumb
	ldr     r0, [sp, #0x24]
	add     r5, #0x80
	add     r0, #0x50
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x14]
	cmp     r0, #0x50
	bge     branch_2008e26
	b       branch_2008c02

branch_2008e26: @ 2008e26 :thumb
	b       branch_2008f90

branch_2008e28: @ 2008e28 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x40]
	str     r0, [sp, #0x3c]
branch_2008e30: @ 2008e30 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, #0x4f
	sub     r2, r1, r0
	mov     r0, #0x50
	mov     r1, r2
	mul     r1, r0
	ldr     r0, [sp, #0x50]
	mov     r4, #0x0
	add     r0, r0, r1
	str     r0, [sp, #0x34]
	ldr     r1, [sp, #0x50]
	ldr     r0, [sp, #0x3c]
	add     r7, r1, r0
	ldr     r0, [sp, #0x34]
	ldr     r1, [sp, #0x38]
	str     r0, [sp, #0x30]
	ldr     r0, [sp, #0x40]
	str     r7, [sp, #0x2c]
	add     r5, r1, r0
	ldr     r0, [sp, #0x0]
	.hword  0x1e40 @ sub r0, r0, #0x1
	lsl     r1, r0, #7
	ldr     r0, [sp, #0x38]
	add     r0, r0, r1
	str     r0, [sp, #0x28]
branch_2008e62: @ 2008e62 :thumb
	ldr     r0, [sp, #0x44]
	ldr     r1, [r0, #NARCPokeGra_54]
	lsl     r0, r1, #22
	lsr     r0, r0, #31
	beq     branch_2008eaa

	lsl     r1, r1, #21
	lsr     r1, r1, #31
	beq     branch_2008eaa

	cmp     r4, #0x28
	bge     branch_2008e8e

	mov     r0, #0x27
	sub     r1, r0, r4
	ldr     r0, [sp, #0x30]
	ldrb    r0, [r0, r1]
	bl      Function_20091ac
	mov     r1, #NARCPokeGra_2fc/4
	lsl     r1, r1, #2
	ldr     r1, [r6, r1] @ NARCPokeGra_2fc
	add     r1, r5, r1
	strb    r0, [r4, r1]
	b       branch_2008f68

branch_2008e8e: @ 2008e8e :thumb
	mov     r1, r4
	sub     r1, #0x28
	mov     r0, #0x4f
	sub     r1, r0, r1
	ldr     r0, [sp, #0x30]
	ldrb    r0, [r0, r1]
	bl      Function_20091ac
	mov     r1, #NARCPokeGra_2fc/4
	lsl     r1, r1, #2
	ldr     r1, [r6, r1] @ NARCPokeGra_2fc
	add     r1, r5, r1
	strb    r0, [r4, r1]
	b       branch_2008f68

branch_2008eaa: @ 2008eaa :thumb
	cmp     r0, #0x0
	beq     branch_2008ee6

	cmp     r4, #0x28
	bge     branch_2008eca

	mov     r0, #0x27
	sub     r1, r0, r4
	ldr     r0, [sp, #0x2c]
	ldrb    r0, [r0, r1]
	bl      Function_20091ac
	mov     r1, #NARCPokeGra_2fc/4
	lsl     r1, r1, #2
	ldr     r1, [r6, r1] @ NARCPokeGra_2fc
	add     r1, r5, r1
	strb    r0, [r4, r1]
	b       branch_2008f68

branch_2008eca: @ 2008eca :thumb
	mov     r1, r4
	sub     r1, #0x28
	mov     r0, #0x4f
	sub     r1, r0, r1
	ldr     r0, [sp, #0x2c]
	ldrb    r0, [r0, r1]
	bl      Function_20091ac
	mov     r1, #NARCPokeGra_2fc/4
	lsl     r1, r1, #2
	ldr     r1, [r6, r1] @ NARCPokeGra_2fc
	add     r1, r5, r1
	strb    r0, [r4, r1]
	b       branch_2008f68

branch_2008ee6: @ 2008ee6 :thumb
	ldr     r0, [sp, #0x44]
	ldr     r0, [r0, #NARCPokeGra_54]
	lsl     r1, r0, #21
	lsr     r1, r1, #31
	beq     branch_2008f00

	ldr     r0, [sp, #0x34]
	mov     r1, #NARCPokeGra_2fc/4
	lsl     r1, r1, #2
	ldr     r1, [r6, r1] @ NARCPokeGra_2fc
	ldrb    r0, [r0, #0x0]
	add     r1, r5, r1
	strb    r0, [r4, r1]
	b       branch_2008f68

branch_2008f00: @ 2008f00 :thumb
	lsl     r0, r0, #15
	lsr     r0, r0, #28
	str     r0, [sp, #0x4]
	beq     branch_2008f5c

	ldr     r1, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	lsl     r1, r1, #1
	blx     _u32_div_f
	cmp     r1, #0x0
	beq     branch_2008f28

	mov     r0, #NARCPokeGra_2fc/4
	lsl     r0, r0, #2
	ldr     r0, [r6, r0] @ NARCPokeGra_2fc
	ldr     r1, [sp, #0x28]
	add     r1, r1, r0
	ldrb    r1, [r4, r1]
	add     r0, r5, r0
	strb    r1, [r4, r0]
	b       branch_2008f68

branch_2008f28: @ 2008f28 :thumb
	ldr     r1, [sp, #0x4]
	mov     r0, r4
	blx     _u32_div_f
	cmp     r1, #0x0
	beq     branch_2008f46

	mov     r0, #NARCPokeGra_2fc/4
	lsl     r0, r0, #2
	ldr     r0, [r6, r0] @ NARCPokeGra_2fc
	add     r1, r5, r0
	add     r0, r1, r4
	.hword  0x1e40 @ sub r0, r0, #0x1
	ldrb    r0, [r0, #0x0]
	strb    r0, [r1, r4]
	b       branch_2008f68

branch_2008f46: @ 2008f46 :thumb
	ldrb    r1, [r7, #0x0]
	mov     r0, #0xf
	and     r1, r0
	lsl     r0, r1, #4
	orr     r0, r1
	mov     r1, #NARCPokeGra_2fc/4
	lsl     r1, r1, #2
	ldr     r1, [r6, r1] @ NARCPokeGra_2fc
	add     r1, r5, r1
	strb    r0, [r4, r1]
	b       branch_2008f68

branch_2008f5c: @ 2008f5c :thumb
	mov     r1, #NARCPokeGra_2fc/4
	lsl     r1, r1, #2
	ldr     r1, [r6, r1] @ NARCPokeGra_2fc
	ldrb    r0, [r7, #0x0]
	add     r1, r5, r1
	strb    r0, [r4, r1]
branch_2008f68: @ 2008f68 :thumb
	ldr     r0, [sp, #0x34]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1c7f @ add r7, r7, #0x1
	str     r0, [sp, #0x34]
	cmp     r4, #0x50
	bge     branch_2008f78
	b       branch_2008e62

branch_2008f78: @ 2008f78 :thumb
	ldr     r0, [sp, #0x40]
	add     r0, #0x80
	str     r0, [sp, #0x40]
	ldr     r0, [sp, #0x3c]
	add     r0, #0x50
	str     r0, [sp, #0x3c]
	ldr     r0, [sp, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x0]
	cmp     r0, #0x50
	bge     branch_2008f90
	b       branch_2008e30

branch_2008f90: @ 2008f90 :thumb
	ldr     r0, [sp, #0x4c]
	bl      free
branch_2008f96: @ 2008f96 :thumb
	ldr     r0, [sp, #0x44]
	mov     r1, #0xa
	add     r0, #NARCPokeGra_ac
	str     r0, [sp, #0x44]

	ldr     r0, [sp, #0x38]
	lsl     r1, r1, #10
	add     r0, r0, r1
	str     r0, [sp, #0x38]
	ldr     r0, [sp, #0x54]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x54]
	cmp     r0, #0x4
	bge     branch_2008fb2
	b       branch_2008b8a

branch_2008fb2: @ 2008fb2 :thumb
	ldr     r1, [pc, #0x10] @ 0x2008fc4, (=0x331) NARCPokeGra_331
	ldr     r0, [sp, #0x48]
	strb    r0, [r6, r1] @ NARCPokeGra_331
	add     sp, #0x5c
	pop     {r4-r7,pc}
@ 0x2008fbc

.word 0x2828 @ 0x2008fbc
.word 0x2827 @ 0x2008fc0
.word 0x331 @ 0x2008fc4



/* Input:
r0: NARCPokeGra
*/
.thumb
Function_2008fc8: @ 2008fc8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0

	mov     r0, #0x0
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0xc]
	mov     r4, r5
	str     r0, [sp, #0x8]
branch_2008fda: @ 2008fda :thumb
	ldr     r1, [r4, #NARCPokeGra_0]
	lsl     r0, r1, #31
	lsr     r0, r0, #31
	beq     branch_20090b4
	lsl     r0, r1, #23
	lsr     r0, r0, #31
	beq     branch_20090b4
	ldr     r0, =0xfffffeff
	mov     r2, #NARCPokeGra_2e8/4
	and     r0, r1
	str     r0, [r4, #NARCPokeGra_0]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	lsl     r2, r2, #2
	ldrh    r0, [r4, #NARCPokeGra_4]
	ldrh    r1, [r4, #NARCPokeGra_8]
	ldr     r2, [r5, r2] @ NARCPokeGra_2e8
	bl      LoadFromNARC_2
	add     r1, sp, #0x18
	str     r0, [sp, #0x10]
	blx     Function_20a71b0
	ldr     r0, [sp, #0x18]
	mov     r7, #0x0
	ldr     r1, [r0, #0x0]
	mov     r0, #NARCPokeGra_320/16
	lsl     r0, r0, #4
	str     r1, [r5, r0] @ NARCPokeGra_320
	ldr     r0, [sp, #0x18]
	mov     r2, r7
	ldr     r1, [r0, #0xc]
	ldr     r0, [sp, #0x8]
	lsl     r3, r0, #1
branch_200901e: @ 200901e :thumb
	mov     r6, #NARCPokeGra_300/256
	lsl     r6, r6, #8
	ldr     r6, [r5, r6] @ NARCPokeGra_300
	ldrh    r0, [r1, #0x0]
	add     r6, r3, r6
	.hword  0x1c7f @ add r7, r7, #0x1
	strh    r0, [r2, r6]
	mov     r6, #NARCPokeGra_304/4
	lsl     r6, r6, #2
	ldrh    r0, [r1, #0x0]
	ldr     r6, [r5, r6] @ NARCPokeGra_304
	.hword  0x1c89 @ add r1, r1, #0x2
	add     r6, r3, r6
	strh    r0, [r2, r6]
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r7, #0x10
	blt     branch_200901e
	ldr     r0, [sp, #0x10]
	bl      free
	mov     r0, r4
	add     r0, #NARCPokeGra_6c
	ldrh    r0, [r0] @ NARCPokeGra_6c
	lsl     r0, r0, #30
	lsr     r0, r0, #30
	beq     branch_20090b4

	mov     r2, #NARCPokeGra_2e8/4
	lsl     r2, r2, #2
	ldr     r2, [r5, r2] @ NARCPokeGra_2e8

	mov     r0, #PlOtherpoke_Narc
	mov     r1, #0xfc
	bl      LoadFromNARC_2
	add     r1, sp, #0x18
	str     r0, [sp, #0x4]
	blx     Function_20a71b0
	ldr     r0, [sp, #0x18]
	mov     r7, #NARCPokeGra_304/4
	ldr     r0, [r0, #0xc]
	mov     r1, #0x0
	lsl     r7, r7, #2
branch_2009072: @ 2009072 :thumb
	mov     r6, r4
	add     r6, #NARCPokeGra_6c
	ldrh    r6, [r6] @ NARCPokeGra_6c
	mov     r2, #NARCPokeGra_300/256
	lsl     r2, r2, #8
	lsl     r6, r6, #30
	lsr     r6, r6, #30
	.hword  0x1cf6 @ add r6, r6, #0x3
	lsl     r6, r6, #4
	add     r6, r1, r6
	ldrh    r3, [r0, #0x0]
	ldr     r2, [r5, r2] @ NARCPokeGra_300
	lsl     r6, r6, #1
	strh    r3, [r2, r6]
	mov     r6, r4
	add     r6, #NARCPokeGra_6c
	ldrh    r6, [r6] @ NARCPokeGra_6c
	ldrh    r3, [r0, #0x0]
	ldr     r2, [r5, r7] @ NARCPokeGra_304
	lsl     r6, r6, #30
	lsr     r6, r6, #30
	.hword  0x1cf6 @ add r6, r6, #0x3
	lsl     r6, r6, #4
	add     r6, r1, r6
	lsl     r6, r6, #1
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1c80 @ add r0, r0, #0x2
	strh    r3, [r2, r6]
	cmp     r1, #0x10
	blt     branch_2009072

	ldr     r0, [sp, #0x4]
	bl      free
branch_20090b4: @ 20090b4 :thumb
	ldr     r0, [r4, #NARCPokeGra_0]
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	beq     branch_2009182

	ldr     r0, [r4, #NARCPokeGra_54]
	lsl     r0, r0, #19
	lsr     r0, r0, #31
	beq     branch_2009182

	mov     r0, r4
	add     r0, #NARCPokeGra_4a
	ldrb    r0, [r0] @ NARCPokeGra_4a
	cmp     r0, #0x0
	bne     branch_2009174

	mov     r0, #0x1
	str     r0, [sp, #0xc]
	mov     r0, r4
	add     r0, #NARCPokeGra_4b
	ldrb    r1, [r0] @ NARCPokeGra_4b
	mov     r0, r4
	add     r0, #NARCPokeGra_4a
	strb    r1, [r0] @ NARCPokeGra_4a
	ldr     r0, [sp, #0x8]
	mov     r2, #NARCPokeGra_304/4
	lsl     r1, r0, #1
	ldr     r0, [r4, #NARCPokeGra_4c]
	mov     r3, r4
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	lsl     r2, r2, #2
	str     r0, [sp, #0x0]
	ldr     r0, [r5, r2] @ NARCPokeGra_304
	.hword  0x1f12 @ sub r2, r2, #NARCPokeGra_304 - NARCPokeGra_300
	add     r3, #NARCPokeGra_48
	ldr     r2, [r5, r2] @ NARCPokeGra_300
	add     r0, r0, r1
	add     r1, r2, r1
	ldrb    r3, [r3] @ NARCPokeGra_48
	mov     r2, #0x10
	bl      Function_200393c
	mov     r0, r4
	add     r0, #NARCPokeGra_6c
	ldrh    r0, [r0] @ NARCPokeGra_6c
	lsl     r0, r0, #30
	lsr     r0, r0, #30
	beq     branch_2009136

	.hword  0x1cc0 @ add r0, r0, #0x3
	lsl     r1, r0, #5
	ldr     r0, [r4, #NARCPokeGra_4c]
	mov     r2, #NARCPokeGra_304/4
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	mov     r3, r4
	lsl     r2, r2, #2
	str     r0, [sp, #0x0]
	ldr     r0, [r5, r2] @ NARCPokeGra_304
	.hword  0x1f12 @ sub r2, r2, #NARCPokeGra_304 - NARCPokeGra_300
	add     r3, #NARCPokeGra_48
	ldr     r2, [r5, r2] @ NARCPokeGra_300
	add     r0, r0, r1
	add     r1, r2, r1
	ldrb    r3, [r3] @ NARCPokeGra_48
	mov     r2, #0x10
	bl      Function_200393c

branch_2009136: @ 2009136 :thumb
	mov     r0, r4
	add     r0, #NARCPokeGra_49
	ldrb    r1, [r0] @ NARCPokeGra_49
	mov     r0, r4
	add     r0, #NARCPokeGra_48
	ldrb    r0, [r0] @ NARCPokeGra_48
	cmp     r0, r1
	bne     branch_2009150

	ldr     r1, [r4, #NARCPokeGra_54]
	ldr     r0, =0xffffefff
	and     r0, r1
	str     r0, [r4, #NARCPokeGra_54]
	b       branch_2009182

branch_2009150: @ 2009150 :thumb
	cmp     r0, r1
	bls     branch_2009164
	mov     r0, r4
	add     r0, #NARCPokeGra_48
	ldrb    r0, [r0] @ NARCPokeGra_48
	sub     r1, r0, #0x1
	mov     r0, r4
	add     r0, #NARCPokeGra_48
	strb    r1, [r0] @ NARCPokeGra_48
	b       branch_2009182

branch_2009164: @ 2009164 :thumb
	mov     r0, r4
	add     r0, #NARCPokeGra_48
	ldrb    r0, [r0] @ NARCPokeGra_48
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #NARCPokeGra_48
	strb    r1, [r0] @ NARCPokeGra_48
	b       branch_2009182

branch_2009174: @ 2009174 :thumb
	mov     r0, r4
	add     r0, #NARCPokeGra_4a
	ldrb    r0, [r0] @ NARCPokeGra_4a
	sub     r1, r0, #0x1
	mov     r0, r4
	add     r0, #NARCPokeGra_4a
	strb    r1, [r0] @ NARCPokeGra_4a
branch_2009182: @ 2009182 :thumb
	ldr     r0, [sp, #0x8]
	add     r4, #NARCPokeGra_ac
	add     r0, #0x10
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x14]
	cmp     r0, #0x4
	bge     branch_2009196
	b       branch_2008fda

branch_2009196: @ 2009196 :thumb
	ldr     r1, =NARCPokeGra_332
	ldr     r0, [sp, #0xc]
	strb    r0, [r5, r1] @ NARCPokeGra_332

	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x20091a0

.align 2
.pool



.thumb
Function_20091ac: @ 20091ac :thumb
	mov     r1, #0xf0
	and     r1, r0
	lsl     r1, r1, #20
	lsl     r0, r0, #28
	lsr     r1, r1, #24
	lsr     r0, r0, #24
	orr     r0, r1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bx      lr
@ 0x20091c0


/* Input:
r0: NARCPokeGra
r1: Pointer to raw PokeGraphicData
*/
.thumb
Function_20091c0: @ 20091c0 :thumb
	push    {r3,lr}
	mov     r2, r0
	ldrh    r0, [r2, #NARCPokeGra_a]
	cmp     r0, #0x0
	beq     branch_20091d4
	mov     r0, r1
	ldr     r1, [r2, #NARCPokeGra_10]
	mov     r2, #0x1
	bl      Function_20091d8
branch_20091d4: @ 20091d4 :thumb

	pop     {r3,pc}
@ 0x20091d6


/* Input:
r0: Pointer to raw PokeGraphicData
r1: [NARCPokeGra_10]
*/
.align 2, 0
.thumb
Function_20091d8: @ 20091d8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r3, r0

	mov     r0, r1
	mov     lr, r0
	mov     r0, #0x0
	mov     r12, r0
	ldr     r0, [pc, #0x13c] @ 0x2009324, (=Unknown_21007a4)
	str     r1, [sp, #0x0]
	str     r2, [sp, #0x4]
	str     r0, [sp, #0x10]
branch_20091ee: @ 20091ee :thumb
	ldr     r0, [sp, #0x10]
	mov     r1, #0x0
	ldr     r6, [r0, #0x0]
	ldrb    r0, [r6, #0x0]
	cmp     r0, #0xff
	beq     branch_2009266

	ldr     r0, [sp, #0x0]
	mov     r2, #0xf
	and     r0, r2
	str     r0, [sp, #0xc]
	sub     r0, #0x8
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x0]
	mov     r2, #0xf0
	and     r0, r2
	lsr     r7, r0, #4
	sub     r7, #0x8
branch_2009210: @ 2009210 :thumb
	lsl     r0, r1, #1
	add     r2, r6, r0
	ldrb    r4, [r6, r0]
	ldrb    r2, [r2, #0x1]
	ldr     r0, [sp, #0xc]
	add     r0, r0, r4
	add     r2, r7, r2
	lsl     r0, r0, #24
	lsl     r2, r2, #24
	lsr     r0, r0, #24
	lsr     r4, r2, #24
	mov     r2, #0x50
	mul     r2, r4
	lsr     r5, r0, #1
	add     r2, r5, r2
	mov     r4, #0x1
	tst     r0, r4
	ldrb    r4, [r3, r2]
	beq     branch_2009248

	mov     r0, #0xf0
	and     r0, r4
	cmp     r0, #0x10
	blt     branch_2009258

	cmp     r0, #0x30
	bgt     branch_2009258

	add     r4, #0x50
	strb    r4, [r3, r2]
	b       branch_2009258

branch_2009248: @ 2009248 :thumb
	mov     r0, #0xf
	and     r0, r4
	cmp     r0, #0x1
	blt     branch_2009258

	cmp     r0, #0x3
	bgt     branch_2009258
	add     r0, r4, #0x5
	strb    r0, [r3, r2]

branch_2009258: @ 2009258 :thumb
	add     r0, r1, #0x1
	lsl     r0, r0, #24
	lsr     r1, r0, #24
	lsl     r0, r1, #1
	ldrb    r0, [r6, r0]
	cmp     r0, #0xff
	bne     branch_2009210

branch_2009266: @ 2009266 :thumb
	ldr     r0, [sp, #0x0]
	lsr     r0, r0, #8
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x10]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x10]
	mov     r0, r12
	.hword  0x1c40 @ add r0, r0, #0x1
	mov     r12, r0
	cmp     r0, #0x4
	blt     branch_20091ee

	mov     r0, lr
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	beq     branch_200931e

	mov     r0, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x98] @ 0x2009324, (=Unknown_21007a4)
	str     r0, [sp, #0x18]
branch_200928e: @ 200928e :thumb
	ldr     r0, [sp, #0x18]
	mov     r4, #0x0
	ldr     r2, [r0, #0x0]
	ldrb    r0, [r2, #0x0]
	cmp     r0, #0xff
	beq     branch_2009308

	ldr     r0, [sp, #0x0]
	mov     r1, #0xf
	and     r0, r1
	str     r0, [sp, #0x14]
	add     r0, #0x48
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x0]
	mov     r1, #0xf0
	and     r0, r1
	lsr     r7, r0, #4
	sub     r7, #0x8
branch_20092b0: @ 20092b0 :thumb
	lsl     r0, r4, #1
	add     r5, r2, r0
	ldrb    r1, [r2, r0]
	ldrb    r5, [r5, #0x1]
	ldr     r0, [sp, #0x14]
	sub     r1, #0xe
	add     r0, r0, r1
	add     r5, r7, r5
	lsl     r0, r0, #24
	lsl     r5, r5, #24
	lsr     r1, r0, #24
	lsr     r6, r5, #24
	mov     r5, #0x50
	lsr     r0, r1, #1
	mul     r5, r6
	add     r0, r0, r5
	mov     r5, #0x1
	tst     r1, r5
	ldrb    r5, [r3, r0]
	beq     branch_20092ea

	mov     r1, #0xf0
	and     r1, r5
	cmp     r1, #0x10
	blt     branch_20092fa

	cmp     r1, #0x30
	bgt     branch_20092fa

	add     r5, #0x50
	strb    r5, [r3, r0]
	b       branch_20092fa

branch_20092ea: @ 20092ea :thumb
	mov     r1, #0xf
	and     r1, r5
	cmp     r1, #0x1
	blt     branch_20092fa

	cmp     r1, #0x3
	bgt     branch_20092fa

	add     r1, r5, #0x5
	strb    r1, [r3, r0]

branch_20092fa: @ 20092fa :thumb
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	lsl     r0, r4, #1
	ldrb    r0, [r2, r0]
	cmp     r0, #0xff
	bne     branch_20092b0

branch_2009308: @ 2009308 :thumb
	ldr     r0, [sp, #0x0]
	lsr     r0, r0, #8
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x8]
	cmp     r0, #0x4
	blt     branch_200928e

branch_200931e: @ 200931e :thumb
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x2009322

.align 2
.word Unknown_21007a4 @ 0x2009324



thumb_func_start PokegraDecrypt_IterationStep
PokegraDecrypt_IterationStep: @ 2009328 :thumb
	ldr     r2, [r0, #0x0]
	ldr     r1, =0x41c64e6d
	mov     r3, r2
	mul     r3, r1
	ldr     r1, =0x6073
	add     r1, r3, r1
	str     r1, [r0, #0x0]
	lsr     r0, r1, #16
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bx      lr
@ 0x200933e

.align 2
.pool
thumb_func_end PokegraDecrypt_IterationStep



/* Input:
r0: Pointer to raw PokeGraphicData
*/
thumb_func_start PokegraDecrypt_forward
PokegraDecrypt_forward: @ 2009348 :thumb
	push    {r3-r7,lr}
	mov     r5, r0

	ldrh    r0, [r5, #0x0]
	mov     r6, #0x32
	mov     r4, #0x0
	str     r0, [sp, #0x0]
	add     r7, sp, #0x0
	lsl     r6, r6, #6
branch_2009358: @ 2009358 :thumb
	ldrh    r1, [r5, #0x0]
	ldr     r0, [sp, #0x0]
	eor     r0, r1
	strh    r0, [r5, #0x0]
	mov     r0, r7
	bl      PokegraDecrypt_IterationStep
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r4, r6
	blt     branch_2009358

	pop     {r3-r7,pc}
thumb_func_end PokegraDecrypt_forward


/* Input:
r0: Pointer to raw PokeGraphicData
*/
thumb_func_start PokegraDecrypt_reverse
PokegraDecrypt_reverse: @ 2009370 :thumb
	push    {r3-r7,lr}

	ldr     r1, =0x18fe
	mov     r6, #0x0
	ldrh    r2, [r0, r1]
	lsr     r4, r1, #1
	add     r5, r0, r1
	str     r2, [sp, #0x0]
	add     r7, sp, #0x0
	mvn     r6, r6
branch_2009382: @ 2009382 :thumb
	ldrh    r1, [r5, #0x0]
	ldr     r0, [sp, #0x0]
	eor     r0, r1
	strh    r0, [r5, #0x0]
	mov     r0, r7
	bl      PokegraDecrypt_IterationStep
	.hword  0x1e64 @ sub r4, r4, #0x1
	.hword  0x1ead @ sub r5, r5, #0x2
	cmp     r4, r6
	bgt     branch_2009382

	pop     {r3-r7,pc}
@ 0x200939a

.align 2
.pool
thumb_func_end PokegraDecrypt_reverse



/* Input:
r0: Pointer to raw PokeGraphicData
r1: archive_id
*/
thumb_func_start Call_PokegraDecrypt_ReverseForward
Call_PokegraDecrypt_ReverseForward: @ 20093a0 :thumb
	push    {r3,lr}
	sub     r1, #Pokegra_Narc
	cmp     r1, #0x1
	bhi     branch_20093ae

	bl      PokegraDecrypt_reverse
	pop     {r3,pc}

branch_20093ae: @ 20093ae :thumb Otherpoke_Narc
	bl      PokegraDecrypt_forward
	pop     {r3,pc}
thumb_func_end Call_PokegraDecrypt_ReverseForward


